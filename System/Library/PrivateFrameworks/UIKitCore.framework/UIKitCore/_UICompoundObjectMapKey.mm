@interface _UICompoundObjectMapKey
+ (id)keyWithObject:(id)object andProperty:(id)property;
- (id)description;
@end

@implementation _UICompoundObjectMapKey

+ (id)keyWithObject:(id)object andProperty:(id)property
{
  objectCopy = object;
  propertyCopy = property;
  v7 = objc_opt_new();
  v8 = v7[1];
  v7[1] = objectCopy;
  v9 = objectCopy;

  v10 = v7[2];
  v7[2] = propertyCopy;

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