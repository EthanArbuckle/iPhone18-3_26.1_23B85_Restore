@interface SXSanFranciscoFontFace
- (SXSanFranciscoFontFace)initWithFontName:(id)name fontAttributes:(id)attributes fontDescriptorAttributes:(id)descriptorAttributes;
@end

@implementation SXSanFranciscoFontFace

- (SXSanFranciscoFontFace)initWithFontName:(id)name fontAttributes:(id)attributes fontDescriptorAttributes:(id)descriptorAttributes
{
  nameCopy = name;
  attributesCopy = attributes;
  descriptorAttributesCopy = descriptorAttributes;
  v15.receiver = self;
  v15.super_class = SXSanFranciscoFontFace;
  v12 = [(SXSanFranciscoFontFace *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fontName, name);
    objc_storeStrong(&v13->_fontAttributes, attributes);
    objc_storeStrong(&v13->_fontDescriptorAttributes, descriptorAttributes);
  }

  return v13;
}

@end