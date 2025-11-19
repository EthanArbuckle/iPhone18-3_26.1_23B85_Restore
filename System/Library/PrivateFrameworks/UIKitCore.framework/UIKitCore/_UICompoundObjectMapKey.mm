@interface _UICompoundObjectMapKey
+ (id)keyWithObject:(id)a3 andProperty:(id)a4;
- (id)description;
@end

@implementation _UICompoundObjectMapKey

+ (id)keyWithObject:(id)a3 andProperty:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = v7[1];
  v7[1] = v5;
  v9 = v5;

  v10 = v7[2];
  v7[2] = v6;

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E698E680] descriptionForObject:self->_object];
  v5 = [v3 stringWithFormat:@"%@.%@", v4, self->_property];

  return v5;
}

@end