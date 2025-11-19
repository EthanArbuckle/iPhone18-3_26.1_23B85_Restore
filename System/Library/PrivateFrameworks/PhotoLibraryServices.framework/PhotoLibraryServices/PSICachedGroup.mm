@interface PSICachedGroup
- (BOOL)isEqual:(id)a3;
- (PSICachedGroup)initWithText:(id)a3 identifier:(id)a4 category:(unint64_t)a5 owningGroupId:(unint64_t)a6;
- (id)description;
@end

@implementation PSICachedGroup

- (id)description
{
  text = self->_text;
  if (text)
  {
    v5 = @"text";
  }

  else
  {
    text = self->_identifier;
    v5 = @"identifier";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' (%@, %d) -> %d", text, v5, self->_category, self->_owningGroupId, v2, v3];
}

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
      v7 = v4;
      v8 = v7;
      if (self->_category == v7->_category && self->_owningGroupId == v7->_owningGroupId && ((text = self->_text, text == v8->_text) || [(NSString *)text isEqualToString:?]))
      {
        identifier = self->_identifier;
        if (identifier == v8->_identifier)
        {
          v6 = 1;
        }

        else
        {
          v6 = [(NSString *)identifier isEqualToString:?];
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (PSICachedGroup)initWithText:(id)a3 identifier:(id)a4 category:(unint64_t)a5 owningGroupId:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v18.receiver = self;
  v18.super_class = PSICachedGroup;
  v12 = [(PSICachedGroup *)&v18 init];
  if (v12)
  {
    v13 = [v10 copy];
    text = v12->_text;
    v12->_text = v13;

    v15 = [v11 copy];
    identifier = v12->_identifier;
    v12->_identifier = v15;

    v12->_category = a5;
    v12->_owningGroupId = a6;
  }

  return v12;
}

@end