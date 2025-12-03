@interface RUISelectOption
- (id)description;
@end

@implementation RUISelectOption

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  label = [(RUISelectOption *)self label];
  value = [(RUISelectOption *)self value];
  v7 = [v3 stringWithFormat:@"<%@: %p, label: '%@', value: '%@'>", v4, self, label, value];

  return v7;
}

@end