@interface SXSanFranciscoFontFace
- (SXSanFranciscoFontFace)initWithFontName:(id)a3 fontAttributes:(id)a4 fontDescriptorAttributes:(id)a5;
@end

@implementation SXSanFranciscoFontFace

- (SXSanFranciscoFontFace)initWithFontName:(id)a3 fontAttributes:(id)a4 fontDescriptorAttributes:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SXSanFranciscoFontFace;
  v12 = [(SXSanFranciscoFontFace *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fontName, a3);
    objc_storeStrong(&v13->_fontAttributes, a4);
    objc_storeStrong(&v13->_fontDescriptorAttributes, a5);
  }

  return v13;
}

@end