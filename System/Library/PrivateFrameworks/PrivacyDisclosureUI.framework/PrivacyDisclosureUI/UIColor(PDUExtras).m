@interface UIColor(PDUExtras)
+ (id)pdu_colorWithString:()PDUExtras;
- (id)convertedToRGB;
@end

@implementation UIColor(PDUExtras)

+ (id)pdu_colorWithString:()PDUExtras
{
  v3 = a3;
  if ([v3 hasPrefix:@"system"] && (v4 = NSSelectorFromString(v3), (objc_opt_respondsToSelector() & 1) != 0))
  {
    v5 = [MEMORY[0x277D75348] performSelector:v4];
  }

  else
  {
    v5 = PDUConvertColorString(v3);
  }

  v6 = v5;

  return v6;
}

- (id)convertedToRGB
{
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF458]);
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v2, kCGRenderingIntentDefault, [a1 CGColor], 0);
  if (CopyByMatchingToColorSpace)
  {
    v4 = [objc_alloc(MEMORY[0x277D75348]) initWithCGColor:CopyByMatchingToColorSpace];
  }

  else
  {
    v4 = 0;
  }

  CGColorSpaceRelease(v2);
  CGColorRelease(CopyByMatchingToColorSpace);

  return v4;
}

@end