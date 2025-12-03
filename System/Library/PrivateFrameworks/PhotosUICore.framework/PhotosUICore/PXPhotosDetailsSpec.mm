@interface PXPhotosDetailsSpec
- (PXPhotosDetailsSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options detailsOptions:(unint64_t)detailsOptions;
- (UIColor)backgroundColor;
@end

@implementation PXPhotosDetailsSpec

- (UIColor)backgroundColor
{
  if ([(PXPhotosDetailsSpec *)self userInterfaceIdiom]== 3 || [(PXPhotosDetailsSpec *)self userInterfaceIdiom]== 5)
  {
    v3 = MEMORY[0x1E69DC888];
LABEL_4:
    clearColor = [v3 clearColor];
    goto LABEL_5;
  }

  widgetSpec = [(PXPhotosDetailsSpec *)self widgetSpec];
  sizeClass = [widgetSpec sizeClass];

  detailsOptions = [(PXPhotosDetailsSpec *)self detailsOptions];
  v3 = MEMORY[0x1E69DC888];
  if ((detailsOptions & 2) != 0 && sizeClass == 2)
  {
    goto LABEL_4;
  }

  clearColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
LABEL_5:

  return clearColor;
}

- (PXPhotosDetailsSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options detailsOptions:(unint64_t)detailsOptions
{
  collectionCopy = collection;
  v20.receiver = self;
  v20.super_class = PXPhotosDetailsSpec;
  v9 = [(PXPhotosDetailsSpec *)&v20 initWithExtendedTraitCollection:collectionCopy options:options];
  v10 = v9;
  if (v9)
  {
    v9->_detailsOptions = detailsOptions;
    v11 = [[PXWidgetSpec alloc] initWithExtendedTraitCollection:collectionCopy options:options detailsOptions:detailsOptions];
    widgetSpec = v10->_widgetSpec;
    v10->_widgetSpec = v11;

    v13 = [[PXWidgetCompositionSpec alloc] initWithExtendedTraitCollection:collectionCopy widgetSpec:v10->_widgetSpec];
    compositionSpec = v10->_compositionSpec;
    v10->_compositionSpec = v13;

    v15 = [[PXPhotosDetailsBarSpec alloc] initWithExtendedTraitCollection:collectionCopy];
    barSpec = v10->_barSpec;
    v10->_barSpec = v15;

    [(PXPhotosDetailsBarSpec *)v10->_barSpec setDetailsOptions:detailsOptions];
    backgroundColor = [(PXPhotosDetailsSpec *)v10 backgroundColor];
    dimmingColor = v10->_dimmingColor;
    v10->_dimmingColor = backgroundColor;

    v10->_dimmingAlpha = 0.75;
  }

  return v10;
}

@end