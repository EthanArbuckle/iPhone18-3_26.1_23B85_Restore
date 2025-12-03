@interface _BKMouseEventGlobalRoute
- (BOOL)isEqual:(id)equal;
@end

@implementation _BKMouseEventGlobalRoute

- (BOOL)isEqual:(id)equal
{
  v5 = objc_opt_class();
  equalCopy = equal;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = v8[3];
    destination = self->_destination;
    v11 = BSEqualObjects();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end