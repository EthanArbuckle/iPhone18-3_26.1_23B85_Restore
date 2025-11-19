@interface NSData(OFNSDataExtensions)
- (id)searchDataByXPathQuery:()OFNSDataExtensions query:;
- (id)stringWithEncoding:()OFNSDataExtensions;
- (uint64_t)searchHTMLContentByXPathQuery:()OFNSDataExtensions;
- (void)dictionaryFromNode:()OFNSDataExtensions parentResult:isParentContent:;
@end

@implementation NSData(OFNSDataExtensions)

- (id)stringWithEncoding:()OFNSDataExtensions
{
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:a1 encoding:a3];

  return v3;
}

- (void)dictionaryFromNode:()OFNSDataExtensions parentResult:isParentContent:
{
  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = a3[2];
  if (v10)
  {
    [v9 setObject:objc_msgSend(MEMORY[0x277CCACA8] forKey:{"stringWithCString:encoding:", v10, 4), @"nodeName"}];
  }

  if ((a3[10] + 1) < 2)
  {
LABEL_4:
    v11 = a3[11];
    if (v11)
    {
      v12 = [MEMORY[0x277CBEB18] array];
      do
      {
        v13 = [MEMORY[0x277CBEB38] dictionary];
        v14 = [MEMORY[0x277CCACA8] stringWithCString:v11[2] encoding:4];
        if (v14)
        {
          [v13 setObject:v14 forKey:@"attributeName"];
        }

        v15 = v11[3];
        if (v15)
        {
          v16 = [a1 dictionaryFromNode:v15 parentResult:v13 isParentContent:1];
          if (v16)
          {
            [v13 setObject:v16 forKey:@"attributeContent"];
          }
        }

        if ([v13 count])
        {
          [v12 addObject:v13];
        }

        v11 = v11[6];
      }

      while (v11);
      if ([v12 count])
      {
        [v9 setObject:v12 forKey:@"nodeAttributeArray"];
      }
    }

    v17 = a3[3];
    if (v17)
    {
      v18 = [MEMORY[0x277CBEB18] array];
      do
      {
        v19 = [a1 dictionaryFromNode:v17 parentResult:v9 isParentContent:0];
        if (v19)
        {
          [v18 addObject:v19];
        }

        v17 = *(v17 + 48);
      }

      while (v17);
      if ([v18 count])
      {
        v20 = @"nodeChildArray";
        v21 = v9;
        v22 = v18;
LABEL_29:
        [v21 setObject:v22 forKey:v20];
        return v9;
      }
    }

    return v9;
  }

  v23 = [MEMORY[0x277CCACA8] stringWithCString:? encoding:?];
  v24 = [objc_msgSend(v9 objectForKey:{@"nodeName", "isEqual:", @"text"}];
  if (!a4 || !v24)
  {
    [v9 setObject:v23 forKey:@"nodeContent"];
    goto LABEL_4;
  }

  if (!a5)
  {
    v20 = @"nodeContent";
    v21 = v9;
    v22 = v23;
    goto LABEL_29;
  }

  [a4 setObject:objc_msgSend(v23 forKey:{"stringByTrimmingCharactersInSet:", objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet")), @"nodeContent"}];
  return 0;
}

- (id)searchDataByXPathQuery:()OFNSDataExtensions query:
{
  v6 = xmlXPathNewContext(doc);
  if (!v6)
  {
    if (OFLoggerLevel >= 4)
    {
      [OFLogger logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFNSDataExtensions.m" line:125 andFormat:@"Unable to create XPath context."];
    }

    return 0;
  }

  v7 = v6;
  v8 = MEMORY[0x26D655540]([a4 cStringUsingEncoding:4], v6);
  if (!v8)
  {
    if (OFLoggerLevel >= 4)
    {
      [OFLogger logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFNSDataExtensions.m" line:132 andFormat:@"Unable to evaluate XPath."];
    }

    goto LABEL_19;
  }

  v9 = v8;
  v10 = *(v8 + 8);
  if (!v10)
  {
    if (OFLoggerLevel >= 4)
    {
      [OFLogger logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFNSDataExtensions.m" line:140 andFormat:@"Nodes was nil."];
    }

    xmlXPathFreeObject(v9);
LABEL_19:
    xmlXPathFreeContext(v7);
    return 0;
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (*v10 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = [a1 dictionaryFromNode:*(*(v10 + 1) + 8 * v12) parentResult:0 isParentContent:0];
      if (v13)
      {
        [v11 addObject:v13];
      }

      ++v12;
    }

    while (v12 < *v10);
  }

  xmlXPathFreeObject(v9);
  xmlXPathFreeContext(v7);

  return v11;
}

- (uint64_t)searchHTMLContentByXPathQuery:()OFNSDataExtensions
{
  Memory = htmlReadMemory([a1 bytes], objc_msgSend(a1, "length"), "", 0, 96);
  if (Memory)
  {
    v6 = Memory;
    v7 = [a1 searchDataByXPathQuery:Memory query:a3];
    xmlFreeDoc(v6);
    return v7;
  }

  else
  {
    if (OFLoggerLevel >= 2)
    {
      [OFLogger logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFNSDataExtensions.m" line:172 andFormat:@"Unable to parse."];
    }

    return 0;
  }
}

@end