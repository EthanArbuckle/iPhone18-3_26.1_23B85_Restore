@interface PXWidgetCompositionSpec
- (PXWidgetCompositionSpec)initWithExtendedTraitCollection:(id)a3 widgetSpec:(id)a4;
- (id)headerSpecForWidgetContentLayoutStyle:(int64_t)a3;
@end

@implementation PXWidgetCompositionSpec

- (id)headerSpecForWidgetContentLayoutStyle:(int64_t)a3
{
  switch(a3)
  {
    case 2:
      goto LABEL_4;
    case 1:
      v3 = [(PXWidgetCompositionSpec *)self _headerSpecForFlushedContent];
      break;
    case 0:
LABEL_4:
      v3 = [(PXWidgetCompositionSpec *)self _defaultHeaderSpec];
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

- (PXWidgetCompositionSpec)initWithExtendedTraitCollection:(id)a3 widgetSpec:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = PXWidgetCompositionSpec;
  v8 = [(PXWidgetCompositionSpec *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_widgetSpec, a4);
    v10 = [v6 layoutSizeClass];
    v11 = [v6 userInterfaceIdiom];
    v9->_orientation = v11 == 5;
    if (v11 == 5)
    {
      v12 = 1000;
    }

    else
    {
      if (v10 == 2)
      {
        v13 = +[PXPhotosDetailsSettings sharedInstance];
        v14 = [v13 allowMultiColumnLayout];
        v15 = 1;
        if (v14)
        {
          v15 = 2;
        }

        v9->_maximumNumberOfColumns = v15;

LABEL_10:
        [v7 contentGuideInsets];
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