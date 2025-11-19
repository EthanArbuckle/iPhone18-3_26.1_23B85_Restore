@interface PXPhotosDetailsSpec
- (PXPhotosDetailsSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 detailsOptions:(unint64_t)a5;
- (UIColor)backgroundColor;
@end

@implementation PXPhotosDetailsSpec

- (UIColor)backgroundColor
{
  if ([(PXPhotosDetailsSpec *)self userInterfaceIdiom]== 3 || [(PXPhotosDetailsSpec *)self userInterfaceIdiom]== 5)
  {
    v3 = MEMORY[0x1E69DC888];
LABEL_4:
    v4 = [v3 clearColor];
    goto LABEL_5;
  }

  v6 = [(PXPhotosDetailsSpec *)self widgetSpec];
  v7 = [v6 sizeClass];

  v8 = [(PXPhotosDetailsSpec *)self detailsOptions];
  v3 = MEMORY[0x1E69DC888];
  if ((v8 & 2) != 0 && v7 == 2)
  {
    goto LABEL_4;
  }

  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
LABEL_5:

  return v4;
}

- (PXPhotosDetailsSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 detailsOptions:(unint64_t)a5
{
  v8 = a3;
  v20.receiver = self;
  v20.super_class = PXPhotosDetailsSpec;
  v9 = [(PXPhotosDetailsSpec *)&v20 initWithExtendedTraitCollection:v8 options:a4];
  v10 = v9;
  if (v9)
  {
    v9->_detailsOptions = a5;
    v11 = [[PXWidgetSpec alloc] initWithExtendedTraitCollection:v8 options:a4 detailsOptions:a5];
    widgetSpec = v10->_widgetSpec;
    v10->_widgetSpec = v11;

    v13 = [[PXWidgetCompositionSpec alloc] initWithExtendedTraitCollection:v8 widgetSpec:v10->_widgetSpec];
    compositionSpec = v10->_compositionSpec;
    v10->_compositionSpec = v13;

    v15 = [[PXPhotosDetailsBarSpec alloc] initWithExtendedTraitCollection:v8];
    barSpec = v10->_barSpec;
    v10->_barSpec = v15;

    [(PXPhotosDetailsBarSpec *)v10->_barSpec setDetailsOptions:a5];
    v17 = [(PXPhotosDetailsSpec *)v10 backgroundColor];
    dimmingColor = v10->_dimmingColor;
    v10->_dimmingColor = v17;

    v10->_dimmingAlpha = 0.75;
  }

  return v10;
}

@end