@interface WLMessageSMILContext
- (WLMessageSMILContext)init;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser foundCharacters:(id)characters;
@end

@implementation WLMessageSMILContext

- (WLMessageSMILContext)init
{
  v7.receiver = self;
  v7.super_class = WLMessageSMILContext;
  v2 = [(WLMessageSMILContext *)&v7 init];
  v3 = v2;
  if (v2)
  {
    characters = v2->_characters;
    v2->_characters = &stru_2882CBB40;

    parts = v3->_parts;
    v3->_parts = MEMORY[0x277CBEBF8];

    *&v3->_inBody = 0;
  }

  return v3;
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  attributesCopy = attributes;
  elementCopy = element;
  _WLLog();
  lowercaseString = [elementCopy lowercaseString];

  if (self->_inBody)
  {
    if (self->_inPar)
    {
      v13 = [[WLMessageSMILPart alloc] initWithElementName:lowercaseString attributes:attributesCopy];
      v14 = [(NSArray *)self->_parts arrayByAddingObject:v13];
      parts = self->_parts;
      self->_parts = v14;
    }

    else if ([lowercaseString isEqualToString:@"par"])
    {
      self->_inPar = 1;
    }
  }

  else if ([lowercaseString isEqualToString:@"body"])
  {
    self->_inBody = 1;
  }
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  elementCopy = element;
  _WLLog();
  lowercaseString = [elementCopy lowercaseString];

  p_inBody = &self->_inBody;
  if (self->_inBody)
  {
    inPar = self->_inPar;
    p_inPar = &self->_inPar;
    if (inPar)
    {
      if (([lowercaseString isEqualToString:@"par"] & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      p_inPar = p_inBody;
      if (![lowercaseString isEqualToString:@"body"])
      {
        goto LABEL_7;
      }
    }

    *p_inPar = 0;
  }

LABEL_7:
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  charactersCopy = characters;
  _WLLog();
  charactersCopy = [(NSString *)self->_characters stringByAppendingString:charactersCopy, self, charactersCopy];

  characters = self->_characters;
  self->_characters = charactersCopy;
}

@end