@interface XMLNode
+ (id)getJavascriptFromNode:(_xmlNode *)node;
+ (id)stringValueForAttribute:(id)attribute inNode:(_xmlNode *)node;
- (XMLNode)initWithNode:(_xmlNode *)node;
- (int64_t)_intValueFromAttribute:(id)attribute;
- (void)dealloc;
@end

@implementation XMLNode

- (XMLNode)initWithNode:(_xmlNode *)node
{
  v7.receiver = self;
  v7.super_class = XMLNode;
  v4 = [(XMLNode *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(XMLNode *)v4 setXmlNode:node];
  }

  return v5;
}

- (int64_t)_intValueFromAttribute:(id)attribute
{
  uTF8String = [attribute UTF8String];
  v5 = kWFImgDimensionUnknown;
  if ([(XMLNode *)self xmlNode][88])
  {
    for (i = [(XMLNode *)self xmlNode][88]; i; i = *(i + 48))
    {
      if (!strcmp(*(i + 16), uTF8String))
      {
        for (j = *(i + 24); j; j = *(j + 48))
        {
          if (!strcmp(*(j + 16), "text"))
          {
            v5 = atoi(*(j + 80));
          }
        }
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = XMLNode;
  [(XMLNode *)&v2 dealloc];
}

+ (id)stringValueForAttribute:(id)attribute inNode:(_xmlNode *)node
{
  uTF8String = [attribute UTF8String];
  properties = node->properties;
  if (properties)
  {
    v7 = uTF8String;
    do
    {
      if (!strcmp(properties->name, v7))
      {
        children = properties->children;
        if (children)
        {
          while (strcmp(children->name, "text"))
          {
            children = children->next;
            if (!children)
            {
              goto LABEL_4;
            }
          }

          [MEMORY[0x277CCACA8] stringWithCString:children->content encoding:4];
        }
      }

LABEL_4:
      properties = properties->next;
    }

    while (properties);
  }

  return 0;
}

+ (id)getJavascriptFromNode:(_xmlNode *)node
{
  children = node->children;
  if (children)
  {
    return [MEMORY[0x277CCACA8] stringWithCString:children->content encoding:4];
  }

  else
  {
    return 0;
  }
}

@end