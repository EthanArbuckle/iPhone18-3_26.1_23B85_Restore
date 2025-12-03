@interface PSIIndexToken
- (PSIIndexToken)initWithText:(id)text identifier:(id)identifier category:(signed __int16)category owningCategory:(signed __int16)owningCategory;
- (id)description;
@end

@implementation PSIIndexToken

- (id)description
{
  text = self->_text;
  identifier = self->_identifier;
  if (text)
  {
    if (identifier)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' / '%@' (%d)", text, self->_identifier, self->_category];
      goto LABEL_6;
    }

    identifier = self->_text;
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' (%d)", identifier, self->_category, v6];
  v4 = LABEL_6:;

  return v4;
}

- (PSIIndexToken)initWithText:(id)text identifier:(id)identifier category:(signed __int16)category owningCategory:(signed __int16)owningCategory
{
  textCopy = text;
  identifierCopy = identifier;
  if (!(textCopy | identifierCopy))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PSIIndexToken.m" lineNumber:16 description:@"text and identifier cannot be both nil"];
  }

  v20.receiver = self;
  v20.super_class = PSIIndexToken;
  v13 = [(PSIIndexToken *)&v20 init];
  if (v13)
  {
    v14 = [textCopy copy];
    text = v13->_text;
    v13->_text = v14;

    v16 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v16;

    v13->_category = category;
    v13->_owningCategory = owningCategory;
  }

  return v13;
}

@end