@interface TSCEValueContainer
- (TSCEValueContainer)initWithValue:(id)a3;
@end

@implementation TSCEValueContainer

- (TSCEValueContainer)initWithValue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TSCEValueContainer;
  v6 = [(TSCEValueContainer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, a3);
  }

  return v7;
}

@end