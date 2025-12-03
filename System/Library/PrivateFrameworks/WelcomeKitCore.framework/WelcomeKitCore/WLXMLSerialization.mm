@interface WLXMLSerialization
- (id)XMLObjectWithData:(id)data;
- (id)XMLObjectWithString:(id)string;
- (id)parseXMLContent:(_xmlNode *)content;
@end

@implementation WLXMLSerialization

- (id)XMLObjectWithString:(id)string
{
  v4 = [string dataUsingEncoding:4];
  v5 = [(WLXMLSerialization *)self XMLObjectWithData:v4];

  return v5;
}

- (id)XMLObjectWithData:(id)data
{
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v8 = [dataCopy2 length];

  Memory = xmlReadMemory(bytes, v8, 0, 0, 0);
  v10 = [(WLXMLSerialization *)self parseXMLContent:xmlDocGetRootElement(Memory)];
  xmlFreeDoc(Memory);

  return v10;
}

- (id)parseXMLContent:(_xmlNode *)content
{
  if (!content)
  {
LABEL_16:
    v12 = &stru_2882CBB40;
    goto LABEL_19;
  }

  children = content->children;
  if (!children)
  {
    Content = xmlNodeGetContent(content);
    if (Content)
    {
      v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:Content];
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  while (1)
  {
    name = children->name;
    if (name)
    {
      break;
    }

LABEL_12:
    if (!children)
    {
      v12 = v5;
      goto LABEL_18;
    }
  }

  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:name];
  v8 = [v5 objectForKeyedSubscript:v7];
  if (([v7 isEqualToString:@"text"] & 1) == 0)
  {
    if (v8)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v10 = [(WLXMLSerialization *)self parseXMLContent:children];
      if (isKindOfClass)
      {
        [v8 addObject:v10];
      }

      else
      {
        v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v8, v10, 0}];
        [v5 setObject:v11 forKey:v7];
      }
    }

    else
    {
      v10 = [(WLXMLSerialization *)self parseXMLContent:children];
      [v5 setObject:v10 forKey:v7];
    }

    children = children->next;
    goto LABEL_12;
  }

  v12 = [(WLXMLSerialization *)self parseXMLContent:children];

LABEL_18:
LABEL_19:

  return v12;
}

@end