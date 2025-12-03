@interface TSCEValueContainer
- (TSCEValueContainer)initWithValue:(id)value;
@end

@implementation TSCEValueContainer

- (TSCEValueContainer)initWithValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = TSCEValueContainer;
  v6 = [(TSCEValueContainer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, value);
  }

  return v7;
}

@end