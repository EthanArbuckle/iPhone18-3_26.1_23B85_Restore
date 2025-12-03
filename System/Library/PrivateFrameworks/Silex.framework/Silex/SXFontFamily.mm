@interface SXFontFamily
- (NSString)description;
- (SXFontFamily)initWithFamilyName:(id)name faces:(id)faces;
@end

@implementation SXFontFamily

- (SXFontFamily)initWithFamilyName:(id)name faces:(id)faces
{
  nameCopy = name;
  facesCopy = faces;
  v12.receiver = self;
  v12.super_class = SXFontFamily;
  v9 = [(SXFontFamily *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_familyName, name);
    objc_storeStrong(&v10->_fontFaces, faces);
  }

  return v10;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  familyName = [(SXFontFamily *)self familyName];
  [v3 appendFormat:@"; familyName: %@", familyName];

  fontFaces = [(SXFontFamily *)self fontFaces];
  [v3 appendFormat:@"; fontFaces: %@", fontFaces];

  [v3 appendString:@">"];

  return v3;
}

@end