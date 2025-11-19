@interface UIDescriptionBuilder
+ (UIDescriptionBuilder)descriptionBuilderWithObject:(id)a3;
+ (id)descriptionForObject:(id)a3 keys:(id)a4;
+ (id)descriptionForObject:(id)a3 namesAndObjects:(id)a4;
- (UIDescriptionBuilder)initWithObject:(id)a3;
- (id)appendKey:(id)a3;
- (id)appendKeys:(id)a3;
- (id)appendName:(id)a3 BOOLValue:(BOOL)a4;
- (id)appendName:(id)a3 doubleValue:(double)a4;
- (id)appendName:(id)a3 intValue:(int)a4;
- (id)appendName:(id)a3 integerValue:(int64_t)a4;
- (id)appendName:(id)a3 object:(id)a4 usingLightweightDescription:(BOOL)a5;
- (id)appendName:(id)a3 pointerValue:(void *)a4;
- (id)appendName:(id)a3 selector:(SEL)a4;
- (id)appendName:(id)a3 unsignedInteger:(unint64_t)a4;
- (id)appendNamesAndObjects:(id)a3;
- (void)tryAppendKey:(id)a3;
@end

@implementation UIDescriptionBuilder

+ (UIDescriptionBuilder)descriptionBuilderWithObject:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithObject:v4];

  return v5;
}

+ (id)descriptionForObject:(id)a3 namesAndObjects:(id)a4
{
  v5 = a4;
  v6 = [UIDescriptionBuilder descriptionBuilderWithObject:a3];
  v7 = [v6 appendNamesAndObjects:v5];
  v8 = [v6 string];

  return v8;
}

+ (id)descriptionForObject:(id)a3 keys:(id)a4
{
  v5 = a4;
  v6 = [UIDescriptionBuilder descriptionBuilderWithObject:a3];
  v7 = [v6 appendKeys:v5];
  v8 = [v6 string];

  return v8;
}

- (UIDescriptionBuilder)initWithObject:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = UIDescriptionBuilder;
  v5 = [(UIDescriptionBuilder *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_object = v4;
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

- (id)appendName:(id)a3 object:(id)a4 usingLightweightDescription:(BOOL)a5
{
  v5 = a5;
  descriptionString = self->_descriptionString;
  separator = self->_separator;
  v11 = a4;
  v12 = a3;
  v13 = v12;
  if (a4 && v5)
  {
    [(NSMutableString *)descriptionString appendFormat:@"%@ %@=<%s: %p>", separator, v12, object_getClassName(v11), v11];
  }

  else
  {
    [(NSMutableString *)descriptionString appendFormat:@"%@ %@=%@", separator, v12, v11, v15];
  }

  [(UIDescriptionBuilder *)self setSeparator:@", "];
  return self;
}

- (id)appendName:(id)a3 BOOLValue:(BOOL)a4
{
  if (a4)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [(UIDescriptionBuilder *)self appendName:a3 object:v5];
  return self;
}

- (id)appendName:(id)a3 integerValue:(int64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", a4];
  v8 = [(UIDescriptionBuilder *)self appendName:v6 object:v7];

  return self;
}

- (id)appendName:(id)a3 unsignedInteger:(unint64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", a4];
  v8 = [(UIDescriptionBuilder *)self appendName:v6 object:v7];

  return self;
}

- (id)appendName:(id)a3 intValue:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v4];
  v8 = [(UIDescriptionBuilder *)self appendName:v6 object:v7];

  return self;
}

- (id)appendName:(id)a3 doubleValue:(double)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", *&a4];
  v8 = [(UIDescriptionBuilder *)self appendName:v6 object:v7];

  return self;
}

- (id)appendName:(id)a3 pointerValue:(void *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", a4];
  v8 = [(UIDescriptionBuilder *)self appendName:v6 object:v7];

  return self;
}

- (id)appendName:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  v7 = NSStringFromSelector(a4);
  v8 = [(UIDescriptionBuilder *)self appendName:v6 object:v7];

  return self;
}

- (id)appendNamesAndObjects:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__UIDescriptionBuilder_appendNamesAndObjects___block_invoke;
  v5[3] = &unk_1E70F6948;
  v5[4] = self;
  [a3 enumerateKeysAndObjectsUsingBlock:v5];
  return self;
}

- (id)appendKey:(id)a3
{
  v4 = a3;
  [(UIDescriptionBuilder *)self tryAppendKey:v4];

  return self;
}

- (id)appendKeys:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(UIDescriptionBuilder *)self tryAppendKey:*(*(&v9 + 1) + 8 * v7++), v9];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return self;
}

- (void)tryAppendKey:(id)a3
{
  v6 = a3;
  v4 = [self->_object valueForKey:?];
  if (v4)
  {
    v5 = [(UIDescriptionBuilder *)self appendObject:v4 withName:v6];
  }
}

@end