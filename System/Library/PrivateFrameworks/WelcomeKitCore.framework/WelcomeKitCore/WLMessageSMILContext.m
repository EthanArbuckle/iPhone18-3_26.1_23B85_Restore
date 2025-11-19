@interface WLMessageSMILContext
- (WLMessageSMILContext)init;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
- (void)parser:(id)a3 foundCharacters:(id)a4;
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

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v11 = a7;
  v12 = a4;
  _WLLog();
  v16 = [v12 lowercaseString];

  if (self->_inBody)
  {
    if (self->_inPar)
    {
      v13 = [[WLMessageSMILPart alloc] initWithElementName:v16 attributes:v11];
      v14 = [(NSArray *)self->_parts arrayByAddingObject:v13];
      parts = self->_parts;
      self->_parts = v14;
    }

    else if ([v16 isEqualToString:@"par"])
    {
      self->_inPar = 1;
    }
  }

  else if ([v16 isEqualToString:@"body"])
  {
    self->_inBody = 1;
  }
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  v9 = a4;
  _WLLog();
  v13 = [v9 lowercaseString];

  p_inBody = &self->_inBody;
  if (self->_inBody)
  {
    inPar = self->_inPar;
    p_inPar = &self->_inPar;
    if (inPar)
    {
      if (([v13 isEqualToString:@"par"] & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      p_inPar = p_inBody;
      if (![v13 isEqualToString:@"body"])
      {
        goto LABEL_7;
      }
    }

    *p_inPar = 0;
  }

LABEL_7:
}

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  v5 = a4;
  _WLLog();
  v6 = [(NSString *)self->_characters stringByAppendingString:v5, self, v5];

  characters = self->_characters;
  self->_characters = v6;
}

@end