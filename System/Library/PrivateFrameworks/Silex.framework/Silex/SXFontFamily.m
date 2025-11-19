@interface SXFontFamily
- (NSString)description;
- (SXFontFamily)initWithFamilyName:(id)a3 faces:(id)a4;
@end

@implementation SXFontFamily

- (SXFontFamily)initWithFamilyName:(id)a3 faces:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXFontFamily;
  v9 = [(SXFontFamily *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_familyName, a3);
    objc_storeStrong(&v10->_fontFaces, a4);
  }

  return v10;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  v4 = [(SXFontFamily *)self familyName];
  [v3 appendFormat:@"; familyName: %@", v4];

  v5 = [(SXFontFamily *)self fontFaces];
  [v3 appendFormat:@"; fontFaces: %@", v5];

  [v3 appendString:@">"];

  return v3;
}

@end