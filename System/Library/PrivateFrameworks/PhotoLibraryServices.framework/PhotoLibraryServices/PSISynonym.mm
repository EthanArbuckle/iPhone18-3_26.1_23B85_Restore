@interface PSISynonym
- (BOOL)isEqual:(id)a3;
- (PSISynonym)initWithText:(id)a3 category:(unint64_t)a4 owningGroupId:(unint64_t)a5 identifier:(id)a6;
@end

@implementation PSISynonym

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
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
      v10 = v4->_category;
      v9 = v4->_owningGroupId;
      v11 = v4;
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

- (PSISynonym)initWithText:(id)a3 category:(unint64_t)a4 owningGroupId:(unint64_t)a5 identifier:(id)a6
{
  v10 = a3;
  v11 = a6;
  v18.receiver = self;
  v18.super_class = PSISynonym;
  v12 = [(PSISynonym *)&v18 init];
  if (v12)
  {
    v13 = [v10 copy];
    text = v12->_text;
    v12->_text = v13;

    v12->_category = a4;
    v12->_owningGroupId = a5;
    v15 = [v11 copy];
    identifier = v12->_identifier;
    v12->_identifier = v15;
  }

  return v12;
}

@end