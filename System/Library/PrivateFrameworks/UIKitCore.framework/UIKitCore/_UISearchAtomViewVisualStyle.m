@interface _UISearchAtomViewVisualStyle
- (UIFont)defaultFont;
- (_UISearchAtomView)searchAtomView;
- (_UISearchAtomViewVisualStyle)initWithInstance:(id)a3;
@end

@implementation _UISearchAtomViewVisualStyle

- (_UISearchAtomViewVisualStyle)initWithInstance:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UISearchAtomViewVisualStyle;
  v5 = [(_UISearchAtomViewVisualStyle *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_searchAtomView, v4);
  }

  return v6;
}

- (UIFont)defaultFont
{
  v2 = [off_1E70ECC20 defaultFontDescriptorWithTextStyle:@"UICTFontTextStyleBody" addingSymbolicTraits:0x8000 options:3];
  v3 = [off_1E70ECC18 fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (_UISearchAtomView)searchAtomView
{
  WeakRetained = objc_loadWeakRetained(&self->_searchAtomView);

  return WeakRetained;
}

@end