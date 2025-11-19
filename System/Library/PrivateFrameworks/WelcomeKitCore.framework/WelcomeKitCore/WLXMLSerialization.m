@interface WLXMLSerialization
- (id)XMLObjectWithData:(id)a3;
- (id)XMLObjectWithString:(id)a3;
- (id)parseXMLContent:(_xmlNode *)a3;
@end

@implementation WLXMLSerialization

- (id)XMLObjectWithString:(id)a3
{
  v4 = [a3 dataUsingEncoding:4];
  v5 = [(WLXMLSerialization *)self XMLObjectWithData:v4];

  return v5;
}

- (id)XMLObjectWithData:(id)a3
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];

  Memory = xmlReadMemory(v7, v8, 0, 0, 0);
  v10 = [(WLXMLSerialization *)self parseXMLContent:xmlDocGetRootElement(Memory)];
  xmlFreeDoc(Memory);

  return v10;
}

- (id)parseXMLContent:(_xmlNode *)a3
{
  if (!a3)
  {
LABEL_16:
    v12 = &stru_2882CBB40;
    goto LABEL_19;
  }

  children = a3->children;
  if (!children)
  {
    Content = xmlNodeGetContent(a3);
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