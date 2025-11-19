@interface NSFont
+ (NSFont)fontWithName:(NSString *)fontName size:(CGFloat)fontSize;
- (NSFont)initWithCoder:(id)a3;
@end

@implementation NSFont

+ (NSFont)fontWithName:(NSString *)fontName size:(CGFloat)fontSize
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___NSFont;
  return objc_msgSendSuper2(&v5, sel_fontWithName_size_, fontName, fontSize);
}

- (NSFont)initWithCoder:(id)a3
{
  v4 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSName"];
  [a3 decodeFloatForKey:@"NSSize"];
  v6 = v5;
  v7 = [UIFont fontWithName:v4 size:v5];
  if (!v7)
  {
    v7 = [UIFont systemFontOfSize:v6];
  }

  return v7;
}

@end