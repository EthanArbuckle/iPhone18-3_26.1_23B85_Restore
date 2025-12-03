@interface PXPhotosSectionHeaderMetrics
+ (PXPhotosSectionHeaderMetrics)sharedMetrics;
- (PXPhotosSectionHeaderMetrics)init;
- (double)accessibilitySectionHeaderHeightForStyle:(int64_t)style width:(double)width actionButton:(BOOL)button disclosure:(BOOL)disclosure title:(id)title startDate:(id)date endDate:(id)endDate locations:(id)self0 actionButtonSpec:(id)self1;
- (double)sectionHeaderHeightForStyle:(int64_t)style hasTitle:(BOOL)title hasDates:(BOOL)dates hasLocation:(BOOL)location;
@end

@implementation PXPhotosSectionHeaderMetrics

- (double)accessibilitySectionHeaderHeightForStyle:(int64_t)style width:(double)width actionButton:(BOOL)button disclosure:(BOOL)disclosure title:(id)title startDate:(id)date endDate:(id)endDate locations:(id)self0 actionButtonSpec:(id)self1
{
  titleCopy = title;
  dateCopy = date;
  endDateCopy = endDate;
  locationsCopy = locations;
  specCopy = spec;
  if (accessibilitySectionHeaderHeightForStyle_width_actionButton_disclosure_title_startDate_endDate_locations_actionButtonSpec__onceToken != -1)
  {
    dispatch_once(&accessibilitySectionHeaderHeightForStyle_width_actionButton_disclosure_title_startDate_endDate_locations_actionButtonSpec__onceToken, &__block_literal_global_427);
  }

  px_mainScreen = [MEMORY[0x1E69DCEB0] px_mainScreen];
  [px_mainScreen scale];

  [accessibilitySectionHeaderHeightForStyle_width_actionButton_disclosure_title_startDate_endDate_locations_actionButtonSpec__measuringLabel setNumberOfLines:2];
  _PXConfigurePhotoCollectionHeaderTitleLabel(accessibilitySectionHeaderHeightForStyle_width_actionButton_disclosure_title_startDate_endDate_locations_actionButtonSpec__measuringLabel, style);
  font = [accessibilitySectionHeaderHeightForStyle_width_actionButton_disclosure_title_startDate_endDate_locations_actionButtonSpec__measuringLabel font];
  v21 = 26.0;
  if (style == 1)
  {
    v21 = 30.0;
  }

  [font _scaledValueForValue:v21];
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

- (double)sectionHeaderHeightForStyle:(int64_t)style hasTitle:(BOOL)title hasDates:(BOOL)dates hasLocation:(BOOL)location
{
  v7 = title && dates || location;
  v8 = 2;
  if (v7)
  {
    v8 = 3;
  }

  if (style == 1)
  {
    v9 = v8;
  }

  else
  {
    v9 = (title && dates) | location;
  }

  v10 = self->_cachedHeights[v9];
  px_mainScreen = [MEMORY[0x1E69DCEB0] px_mainScreen];
  [px_mainScreen scale];

  if (v10 == 0.0)
  {
    v13 = _PXPhotoCollectionHeaderTitleLabelFontForStyle(style);
    if (v7)
    {
      _PXPhotoCollectionHeaderSubtitleFontForStyle(style);
      [objc_claimAutoreleasedReturnValue() _scaledValueForValue:20.0];
      PXFloatRoundToPixel();
    }

    v14 = 26.0;
    if (style == 1)
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v3;
}

+ (PXPhotosSectionHeaderMetrics)sharedMetrics
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PXPhotosSectionHeaderMetrics_sharedMetrics__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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