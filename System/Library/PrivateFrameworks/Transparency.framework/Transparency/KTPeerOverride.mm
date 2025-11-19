@interface KTPeerOverride
- (KTPeerOverride)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KTPeerOverride

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:-[KTPeerOverride uiStatus](self forKey:{"uiStatus"), @"uiStatus"}];
}

- (KTPeerOverride)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = KTPeerOverride;
  v5 = [(KTPeerOverride *)&v7 init];
  if (v5)
  {
    -[KTPeerOverride setUiStatus:](v5, "setUiStatus:", [v4 decodeIntForKey:@"uiStatus"]);
  }

  return v5;
}

@end