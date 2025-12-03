@interface PXPhotosDetailsHeaderSpec
- (CGSize)playButtonSize;
- (PXPhotosDetailsHeaderSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options;
- (id)createViewSpecWithDescriptor:(PXViewSpecDescriptor *)descriptor;
@end

@implementation PXPhotosDetailsHeaderSpec

- (CGSize)playButtonSize
{
  [MEMORY[0x1E69DD250] px_videoOverlayButtonSize];
  v4 = v3;
  v6 = v5;
  if ([(PXPhotosDetailsHeaderSpec *)self userInterfaceIdiom]!= 3)
  {

    PXVisionScaledSize();
  }

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)createViewSpecWithDescriptor:(PXViewSpecDescriptor *)descriptor
{
  var0 = descriptor->var0;
  if (descriptor->var0 > 4001)
  {
    if (var0 == 4002)
    {
      descriptor->var0 = 1000;
      v10.receiver = self;
      v10.super_class = PXPhotosDetailsHeaderSpec;
      var2 = descriptor->var2;
      v11 = *&descriptor->var0;
      v12 = var2;
      [(PXPhotosDetailsHeaderSpec *)&v10 createViewSpecWithDescriptor:&v11, v9.receiver, v9.super_class, self, PXPhotosDetailsHeaderSpec];
      goto LABEL_11;
    }

    if (var0 == 4003)
    {
      v5 = objc_alloc_init(off_1E7721760);
      [(PXPhotosDetailsHeaderSpec *)self configureViewSpec:v5];
      goto LABEL_12;
    }
  }

  else
  {
    if (var0 == 4000)
    {
      PXViewSpecContextForMemoryTile();
    }

    if (var0 == 4001)
    {
      PXViewSpecContextForMemoryTile();
    }
  }

  v9.receiver = self;
  v9.super_class = PXPhotosDetailsHeaderSpec;
  v6 = descriptor->var2;
  v11 = *&descriptor->var0;
  v12 = v6;
  [(PXPhotosDetailsHeaderSpec *)&v9 createViewSpecWithDescriptor:&v11, self, PXPhotosDetailsHeaderSpec, v10.receiver, v10.super_class];
  v5 = LABEL_11:;
LABEL_12:

  return v5;
}

- (PXPhotosDetailsHeaderSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options
{
  v9.receiver = self;
  v9.super_class = PXPhotosDetailsHeaderSpec;
  v4 = [(PXPhotosDetailsHeaderSpec *)&v9 initWithExtendedTraitCollection:collection options:options];
  v5 = v4;
  if (v4)
  {
    if ([(PXPhotosDetailsHeaderSpec *)v4 shouldInsetAllPhotoDetailsContent])
    {
      v5->_contentInsetEdges = 15;
      v8.receiver = v5;
      v8.super_class = PXPhotosDetailsHeaderSpec;
      [(PXPhotosDetailsHeaderSpec *)&v8 defaultCornerRadius];
      v5->_defaultCornerRadius = v6;
      if ([(PXPhotosDetailsHeaderSpec *)v5 userInterfaceIdiom]== 5)
      {
        v5->_defaultCornerRadius = 24.0;
      }
    }

    else
    {
      v5->_contentInsetEdges = 4;
      v5->_defaultCornerRadius = 0.0;
    }
  }

  return v5;
}

@end