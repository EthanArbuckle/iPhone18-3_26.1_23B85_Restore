@interface PSISynonym
- (BOOL)isEqual:(id)equal;
- (PSISynonym)initWithText:(id)text category:(unint64_t)category owningGroupId:(unint64_t)id identifier:(id)identifier;
@end

@implementation PSISynonym

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      category = self->_category;
      owningGroupId = self->_owningGroupId;
      v10 = equalCopy->_category;
      v9 = equalCopy->_owningGroupId;
      v11 = equalCopy;
      IsEqual = PLObjectIsEqual();

      v13 = PLObjectIsEqual();
      v15 = category == v10 && owningGroupId == v9;
      v6 = v15 & IsEqual & v13;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (PSISynonym)initWithText:(id)text category:(unint64_t)category owningGroupId:(unint64_t)id identifier:(id)identifier
{
  textCopy = text;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = PSISynonym;
  v12 = [(PSISynonym *)&v18 init];
  if (v12)
  {
    v13 = [textCopy copy];
    text = v12->_text;
    v12->_text = v13;

    v12->_category = category;
    v12->_owningGroupId = id;
    v15 = [identifierCopy copy];
    identifier = v12->_identifier;
    v12->_identifier = v15;
  }

  return v12;
}

@end