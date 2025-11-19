@interface PSIIndexToken
- (PSIIndexToken)initWithText:(id)a3 identifier:(id)a4 category:(signed __int16)a5 owningCategory:(signed __int16)a6;
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

- (PSIIndexToken)initWithText:(id)a3 identifier:(id)a4 category:(signed __int16)a5 owningCategory:(signed __int16)a6
{
  v11 = a3;
  v12 = a4;
  if (!(v11 | v12))
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PSIIndexToken.m" lineNumber:16 description:@"text and identifier cannot be both nil"];
  }

  v20.receiver = self;
  v20.super_class = PSIIndexToken;
  v13 = [(PSIIndexToken *)&v20 init];
  if (v13)
  {
    v14 = [v11 copy];
    text = v13->_text;
    v13->_text = v14;

    v16 = [v12 copy];
    identifier = v13->_identifier;
    v13->_identifier = v16;

    v13->_category = a5;
    v13->_owningCategory = a6;
  }

  return v13;
}

@end