@interface RETextContentProvider
+ (id)contentProviderFromAttributedString:(id)string;
- (RETextContentProvider)initWithCoder:(id)coder;
- (id)attributedStringRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RETextContentProvider

+ (id)contentProviderFromAttributedString:(id)string
{
  if (string)
  {
    v4 = [REAttributedTextContentProvider textContentProviderWithAttributedText:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)attributedStringRepresentation
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_7();
  NSRequestConcreteImplementation();
  v2 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:&stru_283B97458];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 init];
}

- (void)encodeWithCoder:(id)coder
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_7();

  NSRequestConcreteImplementation();
}

- (RETextContentProvider)initWithCoder:(id)coder
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_7();
  NSRequestConcreteImplementation();
  v4 = objc_alloc_init(objc_opt_class());

  return v4;
}

@end