@interface NSAttributedString(NSAttributedStringAdaptiveImageGlyphConveniences)
+ (id)attributedStringWithAdaptiveImageGlyph:()NSAttributedStringAdaptiveImageGlyphConveniences attributes:;
@end

@implementation NSAttributedString(NSAttributedStringAdaptiveImageGlyphConveniences)

+ (id)attributedStringWithAdaptiveImageGlyph:()NSAttributedStringAdaptiveImageGlyphConveniences attributes:
{
  v5 = a3;
  v6 = [a4 mutableCopy];
  [v6 setObject:v5 forKeyedSubscript:@"CTAdaptiveImageProvider"];

  v7 = objc_alloc(objc_opt_class());
  _sharedAttachmentString = [MEMORY[0x1E696AAB0] _sharedAttachmentString];
  v9 = [v7 initWithString:_sharedAttachmentString attributes:v6];

  return v9;
}

@end