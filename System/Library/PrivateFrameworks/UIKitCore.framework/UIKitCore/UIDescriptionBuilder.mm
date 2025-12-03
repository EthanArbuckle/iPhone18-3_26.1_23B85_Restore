@interface UIDescriptionBuilder
+ (UIDescriptionBuilder)descriptionBuilderWithObject:(id)object;
+ (id)descriptionForObject:(id)object keys:(id)keys;
+ (id)descriptionForObject:(id)object namesAndObjects:(id)objects;
- (UIDescriptionBuilder)initWithObject:(id)object;
- (id)appendKey:(id)key;
- (id)appendKeys:(id)keys;
- (id)appendName:(id)name BOOLValue:(BOOL)value;
- (id)appendName:(id)name doubleValue:(double)value;
- (id)appendName:(id)name intValue:(int)value;
- (id)appendName:(id)name integerValue:(int64_t)value;
- (id)appendName:(id)name object:(id)object usingLightweightDescription:(BOOL)description;
- (id)appendName:(id)name pointerValue:(void *)value;
- (id)appendName:(id)name selector:(SEL)selector;
- (id)appendName:(id)name unsignedInteger:(unint64_t)integer;
- (id)appendNamesAndObjects:(id)objects;
- (void)tryAppendKey:(id)key;
@end

@implementation UIDescriptionBuilder

+ (UIDescriptionBuilder)descriptionBuilderWithObject:(id)object
{
  objectCopy = object;
  v5 = [[self alloc] initWithObject:objectCopy];

  return v5;
}

+ (id)descriptionForObject:(id)object namesAndObjects:(id)objects
{
  objectsCopy = objects;
  v6 = [UIDescriptionBuilder descriptionBuilderWithObject:object];
  v7 = [v6 appendNamesAndObjects:objectsCopy];
  string = [v6 string];

  return string;
}

+ (id)descriptionForObject:(id)object keys:(id)keys
{
  keysCopy = keys;
  v6 = [UIDescriptionBuilder descriptionBuilderWithObject:object];
  v7 = [v6 appendKeys:keysCopy];
  string = [v6 string];

  return string;
}

- (UIDescriptionBuilder)initWithObject:(id)object
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = UIDescriptionBuilder;
  v5 = [(UIDescriptionBuilder *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_object = objectCopy;
    v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
    descriptionString = v6->_descriptionString;
    v6->_descriptionString = v7;

    [(NSMutableString *)v6->_descriptionString appendFormat:@"<%s: %p", object_getClassName(v6->_object), v6->_object];
    separator = v6->_separator;
    v6->_separator = @":";

    v10 = v6;
  }

  return v6;
}

- (id)appendName:(id)name object:(id)object usingLightweightDescription:(BOOL)description
{
  descriptionCopy = description;
  descriptionString = self->_descriptionString;
  separator = self->_separator;
  objectCopy = object;
  nameCopy = name;
  v13 = nameCopy;
  if (object && descriptionCopy)
  {
    [(NSMutableString *)descriptionString appendFormat:@"%@ %@=<%s: %p>", separator, nameCopy, object_getClassName(objectCopy), objectCopy];
  }

  else
  {
    [(NSMutableString *)descriptionString appendFormat:@"%@ %@=%@", separator, nameCopy, objectCopy, v15];
  }

  [(UIDescriptionBuilder *)self setSeparator:@", "];
  return self;
}

- (id)appendName:(id)name BOOLValue:(BOOL)value
{
  if (value)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [(UIDescriptionBuilder *)self appendName:name object:v5];
  return self;
}

- (id)appendName:(id)name integerValue:(int64_t)value
{
  nameCopy = name;
  value = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", value];
  v8 = [(UIDescriptionBuilder *)self appendName:nameCopy object:value];

  return self;
}

- (id)appendName:(id)name unsignedInteger:(unint64_t)integer
{
  nameCopy = name;
  integer = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", integer];
  v8 = [(UIDescriptionBuilder *)self appendName:nameCopy object:integer];

  return self;
}

- (id)appendName:(id)name intValue:(int)value
{
  v4 = *&value;
  nameCopy = name;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v4];
  v8 = [(UIDescriptionBuilder *)self appendName:nameCopy object:v7];

  return self;
}

- (id)appendName:(id)name doubleValue:(double)value
{
  nameCopy = name;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", *&value];
  v8 = [(UIDescriptionBuilder *)self appendName:nameCopy object:v7];

  return self;
}

- (id)appendName:(id)name pointerValue:(void *)value
{
  nameCopy = name;
  value = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", value];
  v8 = [(UIDescriptionBuilder *)self appendName:nameCopy object:value];

  return self;
}

- (id)appendName:(id)name selector:(SEL)selector
{
  nameCopy = name;
  v7 = NSStringFromSelector(selector);
  v8 = [(UIDescriptionBuilder *)self appendName:nameCopy object:v7];

  return self;
}

- (id)appendNamesAndObjects:(id)objects
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__UIDescriptionBuilder_appendNamesAndObjects___block_invoke;
  v5[3] = &unk_1E70F6948;
  v5[4] = self;
  [objects enumerateKeysAndObjectsUsingBlock:v5];
  return self;
}

- (id)appendKey:(id)key
{
  keyCopy = key;
  [(UIDescriptionBuilder *)self tryAppendKey:keyCopy];

  return self;
}

- (id)appendKeys:(id)keys
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  keysCopy = keys;
  v5 = [keysCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(keysCopy);
        }

        [(UIDescriptionBuilder *)self tryAppendKey:*(*(&v9 + 1) + 8 * v7++), v9];
      }

      while (v5 != v7);
      v5 = [keysCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return self;
}

- (void)tryAppendKey:(id)key
{
  keyCopy = key;
  v4 = [self->_object valueForKey:?];
  if (v4)
  {
    v5 = [(UIDescriptionBuilder *)self appendObject:v4 withName:keyCopy];
  }
}

@end