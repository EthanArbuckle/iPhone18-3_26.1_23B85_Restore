@interface STGenericIntentGroup
- (STGenericIntentGroup)initWithCoder:(id)coder;
@end

@implementation STGenericIntentGroup

- (STGenericIntentGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = STGenericIntentGroup;
  v5 = [(STGenericIntentGroup *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = v5;
  }

  return v5;
}

@end