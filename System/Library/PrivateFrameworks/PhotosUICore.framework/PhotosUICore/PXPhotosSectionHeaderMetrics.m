@interface PXPhotosSectionHeaderMetrics
+ (PXPhotosSectionHeaderMetrics)sharedMetrics;
- (PXPhotosSectionHeaderMetrics)init;
- (double)accessibilitySectionHeaderHeightForStyle:(int64_t)a3 width:(double)a4 actionButton:(BOOL)a5 disclosure:(BOOL)a6 title:(id)a7 startDate:(id)a8 endDate:(id)a9 locations:(id)a10 actionButtonSpec:(id)a11;
- (double)sectionHeaderHeightForStyle:(int64_t)a3 hasTitle:(BOOL)a4 hasDates:(BOOL)a5 hasLocation:(BOOL)a6;
@end

@implementation PXPhotosSectionHeaderMetrics

- (double)accessibilitySectionHeaderHeightForStyle:(int64_t)a3 width:(double)a4 actionButton:(BOOL)a5 disclosure:(BOOL)a6 title:(id)a7 startDate:(id)a8 endDate:(id)a9 locations:(id)a10 actionButtonSpec:(id)a11
{
  v14 = a7;
  v15 = a8;
  v16 = a9;
  v17 = a10;
  v18 = a11;
  if (accessibilitySectionHeaderHeightForStyle_width_actionButton_disclosure_title_startDate_endDate_locations_actionButtonSpec__onceToken != -1)
  {
    dispatch_once(&accessibilitySectionHeaderHeightForStyle_width_actionButton_disclosure_title_startDate_endDate_locations_actionButtonSpec__onceToken, &__block_literal_global_427);
  }

  v19 = [MEMORY[0x1E69DCEB0] px_mainScreen];
  [v19 scale];

  [accessibilitySectionHeaderHeightForStyle_width_actionButton_disclosure_title_startDate_endDate_locations_actionButtonSpec__measuringLabel setNumberOfLines:2];
  _PXConfigurePhotoCollectionHeaderTitleLabel(accessibilitySectionHeaderHeightForStyle_width_actionButton_disclosure_title_startDate_endDate_locations_actionButtonSpec__measuringLabel, a3);
  v20 = [accessibilitySectionHeaderHeightForStyle_width_actionButton_disclosure_title_startDate_endDate_locations_actionButtonSpec__measuringLabel font];
  v21 = 26.0;
  if (a3 == 1)
  {
    v21 = 30.0;
  }

  [v20 _scaledValueForValue:v21];
  PXFloatRoundToPixel();
}

uint64_t __154__PXPhotosSectionHeaderMetrics_accessibilitySectionHeaderHeightForStyle_width_actionButton_disclosure_title_startDate_endDate_locations_actionButtonSpec___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [accessibilitySectionHeaderHeightForStyle_width_actionButton_disclosure_title_startDate_endDate_locations_actionButtonSpec__measuringLabel setText:a2];
  v2 = accessibilitySectionHeaderHeightForStyle_width_actionButton_disclosure_title_startDate_endDate_locations_actionButtonSpec__measuringLabel;
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);

  return [v2 sizeThatFits:{v3, v4}];
}

void __154__PXPhotosSectionHeaderMetrics_accessibilitySectionHeaderHeightForStyle_width_actionButton_disclosure_title_startDate_endDate_locations_actionButtonSpec___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v1 = accessibilitySectionHeaderHeightForStyle_width_actionButton_disclosure_title_startDate_endDate_locations_actionButtonSpec__measuringLabel;
  accessibilitySectionHeaderHeightForStyle_width_actionButton_disclosure_title_startDate_endDate_locations_actionButtonSpec__measuringLabel = v0;

  v2 = objc_alloc_init(MEMORY[0x1E69BE3B8]);
  v3 = accessibilitySectionHeaderHeightForStyle_width_actionButton_disclosure_title_startDate_endDate_locations_actionButtonSpec__dateRangeFormatter;
  accessibilitySectionHeaderHeightForStyle_width_actionButton_disclosure_title_startDate_endDate_locations_actionButtonSpec__dateRangeFormatter = v2;
}

- (double)sectionHeaderHeightForStyle:(int64_t)a3 hasTitle:(BOOL)a4 hasDates:(BOOL)a5 hasLocation:(BOOL)a6
{
  v7 = a4 && a5 || a6;
  v8 = 2;
  if (v7)
  {
    v8 = 3;
  }

  if (a3 == 1)
  {
    v9 = v8;
  }

  else
  {
    v9 = (a4 && a5) | a6;
  }

  v10 = self->_cachedHeights[v9];
  v11 = [MEMORY[0x1E69DCEB0] px_mainScreen];
  [v11 scale];

  if (v10 == 0.0)
  {
    v13 = _PXPhotoCollectionHeaderTitleLabelFontForStyle(a3);
    if (v7)
    {
      _PXPhotoCollectionHeaderSubtitleFontForStyle(a3);
      [objc_claimAutoreleasedReturnValue() _scaledValueForValue:20.0];
      PXFloatRoundToPixel();
    }

    v14 = 26.0;
    if (a3 == 1)
    {
      v14 = 30.0;
    }

    [v13 _scaledValueForValue:v14];
    PXFloatRoundToPixel();
  }

  return v10;
}

- (PXPhotosSectionHeaderMetrics)init
{
  v6.receiver = self;
  v6.super_class = PXPhotosSectionHeaderMetrics;
  v2 = [(PXPhotosSectionHeaderMetrics *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(PXPhotosSectionHeaderMetrics *)v2 _invalidateCache];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel__contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v3;
}

+ (PXPhotosSectionHeaderMetrics)sharedMetrics
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PXPhotosSectionHeaderMetrics_sharedMetrics__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedMetrics_onceToken != -1)
  {
    dispatch_once(&sharedMetrics_onceToken, block);
  }

  v2 = sharedMetrics_sharedMetrics;

  return v2;
}

void __45__PXPhotosSectionHeaderMetrics_sharedMetrics__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedMetrics_sharedMetrics;
  sharedMetrics_sharedMetrics = v1;
}

@end