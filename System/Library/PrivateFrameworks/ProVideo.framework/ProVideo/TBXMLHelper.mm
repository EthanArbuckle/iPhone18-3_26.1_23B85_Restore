@interface TBXMLHelper
- (TBXMLHelper)initWithContentsOfURL:(id)l;
- (void)dealloc;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser foundCharacters:(id)characters;
@end

@implementation TBXMLHelper

- (TBXMLHelper)initWithContentsOfURL:(id)l
{
  v7.receiver = self;
  v7.super_class = TBXMLHelper;
  v4 = [(TBXMLHelper *)&v7 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAE70]) initWithContentsOfURL:l];
    v4->_parser = v5;
    [(NSXMLParser *)v5 setDelegate:v4];
    v4->_depth = 0;
    v4->_successfullyEndedParsing = 0;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TBXMLHelper;
  [(TBXMLHelper *)&v3 dealloc];
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  if (self->_interested)
  {

    self->_key = element;
  }

  if ([element isEqualToString:@"sceneSettings"])
  {
    goto LABEL_8;
  }

  if (![element isEqualToString:@"description"] || self->_depth != 1)
  {
    if (![element isEqualToString:@"template"])
    {
      goto LABEL_9;
    }

LABEL_8:
    self->_interested = 1;
    goto LABEL_9;
  }

  self->_interested = 1;

  self->_key = element;
LABEL_9:
  ++self->_depth;
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  if (([element isEqualToString:@"sceneSettings"] & 1) != 0 || objc_msgSend(element, "isEqualToString:", @"description") && self->_depth == 1)
  {
    self->_interested = 0;
  }

  --self->_depth;
  if ([element isEqualToString:@"sceneSettings"])
  {
    [parser abortParsing];
    self->_successfullyEndedParsing = 1;
  }
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  if (self->_interested)
  {
    if (!self->_settings)
    {
      self->_settings = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    if ([objc_msgSend(characters stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet", parser)), "length"}])
    {
      if ([(NSMutableDictionary *)self->_settings objectForKey:self->_key])
      {
        v6 = [(NSMutableDictionary *)self->_settings objectForKey:self->_key];
      }

      else
      {
        v6 = &stru_2872E16E0;
      }

      characters = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v6, characters];
      settings = self->_settings;
      key = self->_key;

      [(NSMutableDictionary *)settings setObject:characters forKey:key];
    }
  }
}

@end