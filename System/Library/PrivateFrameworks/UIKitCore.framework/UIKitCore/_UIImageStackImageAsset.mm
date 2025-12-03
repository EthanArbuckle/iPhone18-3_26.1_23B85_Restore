@interface _UIImageStackImageAsset
- (_UIImageStackImageAsset)initWithContentsOfFile:(id)file;
- (id)imageWithConfiguration:(id)configuration;
@end

@implementation _UIImageStackImageAsset

- (_UIImageStackImageAsset)initWithContentsOfFile:(id)file
{
  fileCopy = file;
  v14.receiver = self;
  v14.super_class = _UIImageStackImageAsset;
  v5 = [(UIImageAsset *)&v14 init];
  v6 = v5;
  if (v5)
  {
    [(UIImageAsset *)v5 setAssetName:fileCopy];
    v7 = objc_alloc(MEMORY[0x1E6999368]);
    v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:fileCopy];
    v13 = 0;
    v9 = [v7 initWithURL:v8 error:&v13];
    v10 = v13;
    catalog = v6->_catalog;
    v6->_catalog = v9;

    if (!v6->_catalog)
    {

      v6 = 0;
    }
  }

  return v6;
}

- (id)imageWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  _layerStack = [(UIImageAsset *)self _layerStack];

  if (!_layerStack)
  {
    _effectiveTraitCollectionForImageLookup = [configurationCopy _effectiveTraitCollectionForImageLookup];
    v14 = 0;
    v15 = 0.0;
    v12 = 0;
    v13 = 0;
    v11 = -1;
    [_UIAssetManager _convertTraitCollection:_effectiveTraitCollectionForImageLookup toCUIScale:&v15 CUIIdiom:&v13 UIKitIdiom:0 UIKitUserInterfaceStyle:0 subtype:&v14 CUIDisplayGamut:&v12 UIKitLayoutDirection:&v11 CUILayoutDirection:0];
    v7 = -[CUICatalog defaultLayerStackWithScaleFactor:deviceIdiom:deviceSubtype:sizeClassHorizontal:sizeClassVertical:](self->_catalog, "defaultLayerStackWithScaleFactor:deviceIdiom:deviceSubtype:sizeClassHorizontal:sizeClassVertical:", v13, v14, [_effectiveTraitCollectionForImageLookup horizontalSizeClass], objc_msgSend(_effectiveTraitCollectionForImageLookup, "verticalSizeClass"), v15);
    [(UIImageAsset *)self _setLayerStack:v7];
  }

  _layerStack2 = [(UIImageAsset *)self _layerStack];
  v9 = [_layerStack2 flattenedUIImageWithAsset:self configuration:configurationCopy];

  return v9;
}

@end