@interface KTPeerOverride
- (KTPeerOverride)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KTPeerOverride

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:-[KTPeerOverride uiStatus](self forKey:{"uiStatus"), @"uiStatus"}];
}

- (KTPeerOverride)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = KTPeerOverride;
  v5 = [(KTPeerOverride *)&v7 init];
  if (v5)
  {
    -[KTPeerOverride setUiStatus:](v5, "setUiStatus:", [coderCopy decodeIntForKey:@"uiStatus"]);
  }

  return v5;
}

@end