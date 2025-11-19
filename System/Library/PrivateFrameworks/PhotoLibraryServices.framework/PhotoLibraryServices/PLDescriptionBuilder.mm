@interface PLDescriptionBuilder
+ (id)descriptionBuilderWithObject:(id)a3;
+ (id)plainDescriptionBuilder;
+ (id)plainMultiLineDescriptionBuilder;
+ (id)prettyMultiLineDescriptionBuilderWithObject:(id)a3 indent:(int64_t)a4;
- (PLDescriptionBuilder)initWithObject:(id)a3 style:(int64_t)a4 indent:(int64_t)a5;
- (id)build;
- (void)appendName:(id)a3 BOOLValue:(BOOL)a4;
- (void)appendName:(id)a3 cgSize:(CGSize)a4;
- (void)appendName:(id)a3 doubleValue:(double)a4;
- (void)appendName:(id)a3 floatValue:(float)a4;
- (void)appendName:(id)a3 integerValue:(int64_t)a4;
- (void)appendName:(id)a3 object:(id)a4;
- (void)appendName:(id)a3 typeCode:(const char *)a4 value:(const void *)a5;
- (void)appendName:(id)a3 unsignedIntegerValue:(unint64_t)a4;
@end

@implementation PLDescriptionBuilder

- (id)build
{
  if ([(_PLDescriptionStyle *)self->_style prettyPrint])
  {
    [(NSMutableString *)self->_description appendString:@"\n"];
  }

  description = self->_description;
  v4 = PLIndentToString();
  [(NSMutableString *)description appendString:v4];

  v5 = self->_description;
  v6 = [(_PLDescriptionStyle *)self->_style suffix];
  [(NSMutableString *)v5 appendString:v6];

  v7 = [(NSMutableString *)self->_description copy];

  return v7;
}

- (void)appendName:(id)a3 typeCode:(const char *)a4 value:(const void *)a5
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__PLDescriptionBuilder_appendName_typeCode_value___block_invoke;
  v10[3] = &unk_1E756ACC8;
  v10[4] = self;
  v8 = a3;
  v9 = _PLToStringFromTypeAndValueWithDescriptionBlock(a4, a5, v10);
  [(PLDescriptionBuilder *)self appendName:v8 object:v9];
}

- (void)appendName:(id)a3 cgSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v10.width = width;
  v10.height = height;
  v8 = NSStringFromSize(v10);
  [(PLDescriptionBuilder *)self appendName:v7 object:v8];
}

- (void)appendName:(id)a3 doubleValue:(double)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v8 = [v6 stringWithFormat:@"%lf", *&a4];
  [(PLDescriptionBuilder *)self appendName:v7 object:v8];
}

- (void)appendName:(id)a3 floatValue:(float)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 stringWithFormat:@"%f", *&v6];
  [(PLDescriptionBuilder *)self appendName:v7 object:v8];
}

- (void)appendName:(id)a3 unsignedIntegerValue:(unint64_t)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v8 = [v6 stringWithFormat:@"%lu", a4];
  [(PLDescriptionBuilder *)self appendName:v7 object:v8];
}

- (void)appendName:(id)a3 integerValue:(int64_t)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v8 = [v6 stringWithFormat:@"%ld", a4];
  [(PLDescriptionBuilder *)self appendName:v7 object:v8];
}

- (void)appendName:(id)a3 BOOLValue:(BOOL)a4
{
  if (a4)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [(PLDescriptionBuilder *)self appendName:a3 object:v4];
}

- (void)appendName:(id)a3 object:(id)a4
{
  description = self->_description;
  separator = self->_separator;
  indentString = self->_indentString;
  style = self->_style;
  v10 = a4;
  v11 = a3;
  v12 = [(_PLDescriptionStyle *)style nameValueSeparator];
  v13 = [(_PLDescriptionStyle *)self->_style descriptionForObject:v10 withIndent:self->_indent + 1];

  [(NSMutableString *)description appendFormat:@"%@%@%@%@%@", separator, indentString, v11, v12, v13];
  v14 = [(_PLDescriptionStyle *)self->_style fieldSeparator];
  [(PLDescriptionBuilder *)self setSeparator:v14];
}

- (PLDescriptionBuilder)initWithObject:(id)a3 style:(int64_t)a4 indent:(int64_t)a5
{
  v9 = a3;
  v24.receiver = self;
  v24.super_class = PLDescriptionBuilder;
  v10 = [(PLDescriptionBuilder *)&v24 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_object, a3);
    v12 = objc_alloc_init(MEMORY[0x1E696AD60]);
    description = v11->_description;
    v11->_description = v12;

    v14 = [_PLDescriptionStyle styleForEnum:a4];
    style = v11->_style;
    v11->_style = v14;

    v11->_descriptionStyle = a4;
    v11->_indent = a5;
    [(_PLDescriptionStyle *)v11->_style extraIndent];
    v16 = PLIndentToString();
    v17 = [v16 copy];
    indentString = v11->_indentString;
    v11->_indentString = v17;

    if (a4 == 3 || !a4)
    {
      [(NSMutableString *)v11->_description appendFormat:@"<%@: %p", objc_opt_class(), v11->_object];
    }

    v19 = [(_PLDescriptionStyle *)v11->_style initialFieldSeparator];
    v20 = [v19 copy];
    separator = v11->_separator;
    v11->_separator = v20;

    v22 = v11;
  }

  return v11;
}

+ (id)prettyMultiLineDescriptionBuilderWithObject:(id)a3 indent:(int64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithObject:v6 style:3 indent:a4];

  return v7;
}

+ (id)plainMultiLineDescriptionBuilder
{
  v2 = [[a1 alloc] initWithObject:0 style:2 indent:0];

  return v2;
}

+ (id)plainDescriptionBuilder
{
  v2 = [[a1 alloc] initWithObject:0 style:1 indent:0];

  return v2;
}

+ (id)descriptionBuilderWithObject:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithObject:v4 style:0 indent:0];

  return v5;
}

@end