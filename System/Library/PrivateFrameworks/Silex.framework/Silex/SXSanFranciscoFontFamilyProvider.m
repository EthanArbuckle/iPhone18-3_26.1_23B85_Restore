@interface SXSanFranciscoFontFamilyProvider
- (SXSanFranciscoFontFamilyProvider)init;
- (id)fontFamilies;
@end

@implementation SXSanFranciscoFontFamilyProvider

- (SXSanFranciscoFontFamilyProvider)init
{
  v6.receiver = self;
  v6.super_class = SXSanFranciscoFontFamilyProvider;
  v2 = [(SXSanFranciscoFontFamilyProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SXSanFranciscoFontFamily);
    family = v2->_family;
    v2->_family = v3;
  }

  return v2;
}

- (id)fontFamilies
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [(SXSanFranciscoFontFamilyProvider *)self family];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

@end