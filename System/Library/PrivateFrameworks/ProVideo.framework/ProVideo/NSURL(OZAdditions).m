@interface NSURL(OZAdditions)
+ (uint64_t)motionDocURLFromMotionBundleURL:()OZAdditions;
- (BOOL)isEditableMotionProjectURL:()OZAdditions;
- (id)OZ_imageSequenceURLs;
- (uint64_t)OZ_isImageSequenceURL;
- (uint64_t)oz_relativePathFromURL:()OZAdditions;
@end

@implementation NSURL(OZAdditions)

- (BOOL)isEditableMotionProjectURL:()OZAdditions
{
  v11 = 0;
  v12 = 0;
  if (([a1 getResourceValue:&v11 forKey:*MEMORY[0x277CBE8A8] error:&v12] & 1) == 0)
  {
    if (a3)
    {
      v9 = 0;
      *a3 = v12;
      return v9;
    }

    return 0;
  }

  if (([v11 BOOLValue] & 1) == 0 || (v5 = objc_msgSend(a1, "pathExtension")) == 0 || (v6 = v5, !objc_msgSend(v5, "compare:options:", @"moti", 1)) && !objc_msgSend(v6, "compare:options:", @"moef", 1) && !objc_msgSend(v6, "compare:options:", @"motr", 1) && !objc_msgSend(v6, "compare:options:", @"motn", 1) || (v7 = -[OZTemplateFlagXMLParser initWithContentsOfURL:]([OZTemplateFlagXMLParser alloc], "initWithContentsOfURL:", a1)) == 0)
  {
    if (a3)
    {
      v9 = 0;
      *a3 = 0;
      return v9;
    }

    return 0;
  }

  v8 = v7;
  if (![(OZTemplateFlagXMLParser *)v7 parse])
  {
    if (a3)
    {
      *a3 = 0;
    }

    return 0;
  }

  v9 = ([(OZTemplateFlagXMLParser *)v8 templeFlags]& 8) == 0;

  return v9;
}

- (uint64_t)OZ_isImageSequenceURL
{
  PCURL::PCURL(&v3, cf);
  isSequence = PCURL::isSequence(&v3);
  PCURL::~PCURL(&v3);
  return isSequence;
}

- (id)OZ_imageSequenceURLs
{
  PCURL::PCURL(&v16, cf);
  if (PCURL::isSequence(&v16))
  {
    v1 = [MEMORY[0x277CBEB40] orderedSet];
    SequenceStart = PCURL::getSequenceStart(&v16);
    SequenceEnd = PCURL::getSequenceEnd(&v16);
    v4 = SequenceEnd - SequenceStart;
    if (SequenceEnd >= SequenceStart)
    {
      v5 = 0;
      v6 = v4 + 1;
      do
      {
        URLforIndex = PCURL::getURLforIndex(&v16, v5);
        v15 = URLforIndex;
        if (URLforIndex)
        {
          PCURL::getFilename(URLforIndex, &v14);
          PCURL::getPathAsFileSystemString(v15, &v13);
          v8 = PCString::ns_str(&v13);
          v9 = [(__CFString *)v8 stringByAppendingPathComponent:PCString::ns_str(&v14)];
          PCString::~PCString(&v13);
          v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9];
          if (v10)
          {
            [v1 addObject:v10];
          }

          PCString::~PCString(&v14);
        }

        std::unique_ptr<PCURL>::~unique_ptr[abi:ne200100](&v15);
        ++v5;
      }

      while (v6 != v5);
    }

    v11 = [v1 copy];
  }

  else
  {
    v11 = 0;
  }

  PCURL::~PCURL(&v16);
  return v11;
}

+ (uint64_t)motionDocURLFromMotionBundleURL:()OZAdditions
{
  v3 = [[PCMotionBundle alloc] initWithURL:a3];
  v4 = [(PCMotionBundle *)v3 projectFileURL];

  return v4;
}

- (uint64_t)oz_relativePathFromURL:()OZAdditions
{
  v4 = [a1 pathComponents];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [MEMORY[0x277CBEB18] arrayWithArray:{objc_msgSend(a3, "pathComponents")}];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (([a3 hasDirectoryPath] & 1) == 0)
  {
    [v7 removeLastObject];
  }

  v8 = [v5 count];
  v9 = [v7 count];
  v10 = 0;
  if (v8 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11 & ~(v11 >> 63);
  while (1)
  {
    v13 = v10;
    if (v12 == v10)
    {
      break;
    }

    v14 = [objc_msgSend(v5 objectAtIndexedSubscript:{v10), "isEqualToString:", objc_msgSend(v7, "objectAtIndexedSubscript:", v10)}];
    v10 = v13 + 1;
    if ((v14 & 1) == 0)
    {
      v12 = v13;
      break;
    }
  }

  v15 = [v7 count];
  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:v15 - v12];
  if (v15 - v12 >= 1)
  {
    v17 = v15 - v13;
    do
    {
      [v16 addObject:@".."];
      --v17;
    }

    while (v17);
  }

  [v16 addObjectsFromArray:{objc_msgSend(v5, "subarrayWithRange:", v12, objc_msgSend(v5, "count") - v12)}];

  return [v16 componentsJoinedByString:@"/"];
}

@end