@interface STGenericIntentPerson
- (STGenericIntentPerson)initWithCoder:(id)coder;
@end

@implementation STGenericIntentPerson

- (STGenericIntentPerson)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = STGenericIntentPerson;
  v5 = [(STGenericIntentPerson *)&v10 init];
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