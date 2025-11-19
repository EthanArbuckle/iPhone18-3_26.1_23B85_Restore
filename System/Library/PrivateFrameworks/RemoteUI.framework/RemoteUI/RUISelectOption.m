@interface RUISelectOption
- (id)description;
@end

@implementation RUISelectOption

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(RUISelectOption *)self label];
  v6 = [(RUISelectOption *)self value];
  v7 = [v3 stringWithFormat:@"<%@: %p, label: '%@', value: '%@'>", v4, self, v5, v6];

  return v7;
}

@end