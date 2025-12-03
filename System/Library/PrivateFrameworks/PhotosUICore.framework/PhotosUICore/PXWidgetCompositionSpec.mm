@interface PXWidgetCompositionSpec
- (PXWidgetCompositionSpec)initWithExtendedTraitCollection:(id)collection widgetSpec:(id)spec;
- (id)headerSpecForWidgetContentLayoutStyle:(int64_t)style;
@end

@implementation PXWidgetCompositionSpec

- (id)headerSpecForWidgetContentLayoutStyle:(int64_t)style
{
  switch(style)
  {
    case 2:
      goto LABEL_4;
    case 1:
      _headerSpecForFlushedContent = [(PXWidgetCompositionSpec *)self _headerSpecForFlushedContent];
      break;
    case 0:
LABEL_4:
      _headerSpecForFlushedContent = [(PXWidgetCompositionSpec *)self _defaultHeaderSpec];
      break;
    default:
      _headerSpecForFlushedContent = 0;
      break;
  }

  return _headerSpecForFlushedContent;
}

- (PXWidgetCompositionSpec)initWithExtendedTraitCollection:(id)collection widgetSpec:(id)spec
{
  collectionCopy = collection;
  specCopy = spec;
  v20.receiver = self;
  v20.super_class = PXWidgetCompositionSpec;
  v8 = [(PXWidgetCompositionSpec *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_widgetSpec, spec);
    layoutSizeClass = [collectionCopy layoutSizeClass];
    userInterfaceIdiom = [collectionCopy userInterfaceIdiom];
    v9->_orientation = userInterfaceIdiom == 5;
    if (userInterfaceIdiom == 5)
    {
      v12 = 1000;
    }

    else
    {
      if (layoutSizeClass == 2)
      {
        v13 = +[PXPhotosDetailsSettings sharedInstance];
        allowMultiColumnLayout = [v13 allowMultiColumnLayout];
        v15 = 1;
        if (allowMultiColumnLayout)
        {
          v15 = 2;
        }

        v9->_maximumNumberOfColumns = v15;

LABEL_10:
        [specCopy contentGuideInsets];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __70__PXWidgetCompositionSpec_initWithExtendedTraitCollection_widgetSpec___block_invoke;
        v19[3] = &__block_descriptor_64_e22___PXWidgetBarSpec_8__0l;
        v19[4] = 0;
        v19[5] = v16;
        v19[6] = 0;
        v19[7] = v17;
        _Block_copy(v19);
        [MEMORY[0x1E69DC888] labelColor];
        objc_claimAutoreleasedReturnValue();
        PXFontWithTextStyleSymbolicTraits();
      }

      v12 = 1;
    }

    v9->_maximumNumberOfColumns = v12;
    goto LABEL_10;
  }

  return 0;
}

PXWidgetBarSpec *__70__PXWidgetCompositionSpec_initWithExtendedTraitCollection_widgetSpec___block_invoke(double *a1)
{
  v2 = objc_alloc_init(PXWidgetBarSpec);
  [(PXWidgetBarSpec *)v2 setContentInsets:a1[4], a1[5], a1[6], a1[7]];
  [(PXWidgetBarSpec *)v2 setMinimumDistanceBetweenTopAndFirstAscender:5.0];
  [(PXWidgetBarSpec *)v2 setMinimumDistanceBetweenLastDescenderAndBottom:5.0];

  return v2;
}

@end