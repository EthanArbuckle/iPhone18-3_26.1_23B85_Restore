@interface _DUIPresentationUpdate
- (BOOL)isEqual:(id)a3;
- (_DUIPresentationUpdate)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DUIPresentationUpdate

- (_DUIPresentationUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _DUIPresentationUpdate;
  v5 = [(_DUIPresentationUpdate *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"modifiedPreviews"];
    modifiedPreviews = v5->_modifiedPreviews;
    v5->_modifiedPreviews = v6;

    v5->_badgeStyle = [v4 decodeIntegerForKey:@"badgeStyle"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  badgeStyle = self->_badgeStyle;
  v5 = a3;
  [v5 encodeInteger:badgeStyle forKey:@"badgeStyle"];
  [v5 encodeObject:self->_modifiedPreviews forKey:@"modifiedPreviews"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (self->_badgeStyle == *(v5 + 2))
    {
      modifiedPreviews = self->_modifiedPreviews;
      v8 = *(v5 + 1);
      v9 = modifiedPreviews;
      v10 = v8;
      v11 = v10;
      if (v9 == v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0;
        if (v9 && v10)
        {
          v12 = [(NSArray *)v9 isEqual:v10];
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end