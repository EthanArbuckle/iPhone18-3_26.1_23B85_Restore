@interface PLDescriptionBuilder
+ (id)descriptionBuilderWithObject:(id)object;
+ (id)plainDescriptionBuilder;
+ (id)plainMultiLineDescriptionBuilder;
+ (id)prettyMultiLineDescriptionBuilderWithObject:(id)object indent:(int64_t)indent;
- (PLDescriptionBuilder)initWithObject:(id)object style:(int64_t)style indent:(int64_t)indent;
- (id)build;
- (void)appendName:(id)name BOOLValue:(BOOL)value;
- (void)appendName:(id)name cgSize:(CGSize)size;
- (void)appendName:(id)name doubleValue:(double)value;
- (void)appendName:(id)name floatValue:(float)value;
- (void)appendName:(id)name integerValue:(int64_t)value;
- (void)appendName:(id)name object:(id)object;
- (void)appendName:(id)name typeCode:(const char *)code value:(const void *)value;
- (void)appendName:(id)name unsignedIntegerValue:(unint64_t)value;
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
  suffix = [(_PLDescriptionStyle *)self->_style suffix];
  [(NSMutableString *)v5 appendString:suffix];

  v7 = [(NSMutableString *)self->_description copy];

  return v7;
}

- (void)appendName:(id)name typeCode:(const char *)code value:(const void *)value
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__PLDescriptionBuilder_appendName_typeCode_value___block_invoke;
  v10[3] = &unk_1E756ACC8;
  v10[4] = self;
  nameCopy = name;
  v9 = _PLToStringFromTypeAndValueWithDescriptionBlock(code, value, v10);
  [(PLDescriptionBuilder *)self appendName:nameCopy object:v9];
}

- (void)appendName:(id)name cgSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  nameCopy = name;
  v10.width = width;
  v10.height = height;
  v8 = NSStringFromSize(v10);
  [(PLDescriptionBuilder *)self appendName:nameCopy object:v8];
}

- (void)appendName:(id)name doubleValue:(double)value
{
  v6 = MEMORY[0x1E696AEC0];
  nameCopy = name;
  v8 = [v6 stringWithFormat:@"%lf", *&value];
  [(PLDescriptionBuilder *)self appendName:nameCopy object:v8];
}

- (void)appendName:(id)name floatValue:(float)value
{
  v5 = MEMORY[0x1E696AEC0];
  valueCopy = value;
  nameCopy = name;
  v8 = [v5 stringWithFormat:@"%f", *&valueCopy];
  [(PLDescriptionBuilder *)self appendName:nameCopy object:v8];
}

- (void)appendName:(id)name unsignedIntegerValue:(unint64_t)value
{
  v6 = MEMORY[0x1E696AEC0];
  nameCopy = name;
  value = [v6 stringWithFormat:@"%lu", value];
  [(PLDescriptionBuilder *)self appendName:nameCopy object:value];
}

- (void)appendName:(id)name integerValue:(int64_t)value
{
  v6 = MEMORY[0x1E696AEC0];
  nameCopy = name;
  value = [v6 stringWithFormat:@"%ld", value];
  [(PLDescriptionBuilder *)self appendName:nameCopy object:value];
}

- (void)appendName:(id)name BOOLValue:(BOOL)value
{
  if (value)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [(PLDescriptionBuilder *)self appendName:name object:v4];
}

- (void)appendName:(id)name object:(id)object
{
  description = self->_description;
  separator = self->_separator;
  indentString = self->_indentString;
  style = self->_style;
  objectCopy = object;
  nameCopy = name;
  nameValueSeparator = [(_PLDescriptionStyle *)style nameValueSeparator];
  v13 = [(_PLDescriptionStyle *)self->_style descriptionForObject:objectCopy withIndent:self->_indent + 1];

  [(NSMutableString *)description appendFormat:@"%@%@%@%@%@", separator, indentString, nameCopy, nameValueSeparator, v13];
  fieldSeparator = [(_PLDescriptionStyle *)self->_style fieldSeparator];
  [(PLDescriptionBuilder *)self setSeparator:fieldSeparator];
}

- (PLDescriptionBuilder)initWithObject:(id)object style:(int64_t)style indent:(int64_t)indent
{
  objectCopy = object;
  v24.receiver = self;
  v24.super_class = PLDescriptionBuilder;
  v10 = [(PLDescriptionBuilder *)&v24 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_object, object);
    v12 = objc_alloc_init(MEMORY[0x1E696AD60]);
    description = v11->_description;
    v11->_description = v12;

    v14 = [_PLDescriptionStyle styleForEnum:style];
    style = v11->_style;
    v11->_style = v14;

    v11->_descriptionStyle = style;
    v11->_indent = indent;
    [(_PLDescriptionStyle *)v11->_style extraIndent];
    v16 = PLIndentToString();
    v17 = [v16 copy];
    indentString = v11->_indentString;
    v11->_indentString = v17;

    if (style == 3 || !style)
    {
      [(NSMutableString *)v11->_description appendFormat:@"<%@: %p", objc_opt_class(), v11->_object];
    }

    initialFieldSeparator = [(_PLDescriptionStyle *)v11->_style initialFieldSeparator];
    v20 = [initialFieldSeparator copy];
    separator = v11->_separator;
    v11->_separator = v20;

    v22 = v11;
  }

  return v11;
}

+ (id)prettyMultiLineDescriptionBuilderWithObject:(id)object indent:(int64_t)indent
{
  objectCopy = object;
  v7 = [[self alloc] initWithObject:objectCopy style:3 indent:indent];

  return v7;
}

+ (id)plainMultiLineDescriptionBuilder
{
  v2 = [[self alloc] initWithObject:0 style:2 indent:0];

  return v2;
}

+ (id)plainDescriptionBuilder
{
  v2 = [[self alloc] initWithObject:0 style:1 indent:0];

  return v2;
}

+ (id)descriptionBuilderWithObject:(id)object
{
  objectCopy = object;
  v5 = [[self alloc] initWithObject:objectCopy style:0 indent:0];

  return v5;
}

@end