@interface BKHitTestResultKey
- (BOOL)isEqual:(id)a3;
@end

@implementation BKHitTestResultKey

- (BOOL)isEqual:(id)a3
{
  v5 = objc_opt_class();
  v6 = a3;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
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

  v11 = v6 && (destination = self->_destination, v10 = v8[2], BSEqualObjects()) && self->_userIdentifier == *(v8 + 2);
  return v11;
}

@end