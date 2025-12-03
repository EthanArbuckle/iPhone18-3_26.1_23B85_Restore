@interface UISDisplaySingleRectShape
- (BOOL)isEqual:(id)equal;
- (CGRect)rect;
- (UISDisplaySingleRectShape)initWithRect:(CGRect)rect;
- (UISDisplaySingleRectShape)initWithXPCDictionary:(id)dictionary;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation UISDisplaySingleRectShape

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UISDisplaySingleRectShape)initWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8.receiver = self;
  v8.super_class = UISDisplaySingleRectShape;
  result = [(UISDisplaySingleRectShape *)&v8 init];
  if (result)
  {
    result->_rect.origin.x = x;
    result->_rect.origin.y = y;
    result->_rect.size.width = width;
    result->_rect.size.height = height;
  }

  return result;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  v4.receiver = self;
  v4.super_class = UISDisplaySingleRectShape;
  dictionaryCopy = dictionary;
  [(UISDisplayShape *)&v4 encodeWithXPCDictionary:dictionaryCopy];
  BSSerializeCGRectToXPCDictionaryWithKey();
}

- (UISDisplaySingleRectShape)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = UISDisplaySingleRectShape;
  v5 = [(UISDisplayShape *)&v13 initWithXPCDictionary:dictionaryCopy];
  v6 = v5;
  if (v5)
  {
    p_rect = &v5->_rect;
    BSDeserializeCGRectFromXPCDictionaryWithKey();
    *&p_rect->origin.x = v8;
    v6->_rect.origin.y = v9;
    v6->_rect.size.width = v10;
    v6->_rect.size.height = v11;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (equalCopy == self)
  {
    v18 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UISDisplaySingleRectShape *)self rect];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(UISDisplaySingleRectShape *)v5 rect];
    v21.origin.x = v14;
    v21.origin.y = v15;
    v21.size.width = v16;
    v21.size.height = v17;
    v20.origin.x = v7;
    v20.origin.y = v9;
    v20.size.width = v11;
    v20.size.height = v13;
    v18 = CGRectEqualToRect(v20, v21);
  }

  else
  {
LABEL_5:
    v18 = 0;
  }

LABEL_7:

  return v18;
}

@end