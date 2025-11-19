@interface RETextContentProvider
+ (id)contentProviderFromAttributedString:(id)a3;
- (RETextContentProvider)initWithCoder:(id)a3;
- (id)attributedStringRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RETextContentProvider

+ (id)contentProviderFromAttributedString:(id)a3
{
  if (a3)
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

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 init];
}

- (void)encodeWithCoder:(id)a3
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_7();

  NSRequestConcreteImplementation();
}

- (RETextContentProvider)initWithCoder:(id)a3
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_7();
  NSRequestConcreteImplementation();
  v4 = objc_alloc_init(objc_opt_class());

  return v4;
}

@end