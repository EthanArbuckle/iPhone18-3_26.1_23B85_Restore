@interface WAAQIView
- (BOOL)shouldInsertGlyphImage:(id)image;
- (CGRect)adjustedFrame:(CGRect)frame basedOnFont:(id)font desiredBaseline:(double)baseline;
- (CGRect)rtlAdjustFrame:(CGRect)frame inBounds:(CGRect)bounds;
- (CGSize)sizeForAQIAvailableThatFits:(CGSize)fits;
- (CGSize)sizeForAQITemporarilyUnavailableThatFits:(CGSize)fits;
- (CGSize)sizeForExtendedLayoutWithScaleViewThatFits:(CGSize)fits;
- (CGSize)sizeForLayoutWithoutScaleViewThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits;
- (WAAQIViewDelegate)delegate;
- (double)contentMarginFromTop;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)currentScaleCategoryLabelForCity:(id)city;
- (id)drawableScaleForCity:(id)city;
- (id)metadataLabelForCity:(id)city;
- (id)scaleDisplayNameForCity:(id)city;
- (void)handleTapGesture:(id)gesture;
- (void)hideEverything;
- (void)initialize;
- (void)layoutForExtendedModeWithScale;
- (void)layoutForModeAQITemporarilyUnavailable;
- (void)layoutForModeWithoutScale;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setupForLayoutCompactScaleViewOneLinePlatterView:(BOOL)view;
- (void)setupForLayoutExtendedNoScaleView;
- (void)setupForLayoutExtendedScaleView;
- (void)setupForLayoutTemporarilyUnavailable;
- (void)updateWithCity:(id)city layoutMode:(unint64_t)mode;
@end

@implementation WAAQIView

- (void)initialize
{
  v3 = [WAAQIView createWeatherLabelWithLightColor:0];
  aqiLabel = self->_aqiLabel;
  self->_aqiLabel = v3;

  v5 = [WAAQIView createWeatherLabelWithLightColor:0];
  aqiIndexLabel = self->_aqiIndexLabel;
  self->_aqiIndexLabel = v5;

  v7 = [WAAQIView createWeatherLabelWithLightColor:0];
  aqiAgencyLabel = self->_aqiAgencyLabel;
  self->_aqiAgencyLabel = v7;

  v9 = [WAAQIView createWeatherLabelWithLightColor:0];
  dash = self->_dash;
  self->_dash = v9;

  v11 = [WAAQIScaleView alloc];
  v12 = [(WAAQIScaleView *)v11 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  aqiScaleView = self->_aqiScaleView;
  self->_aqiScaleView = v12;

  v14 = [WAAQIView createWeatherLabelWithLightColor:0];
  aqiCategoryLabel = self->_aqiCategoryLabel;
  self->_aqiCategoryLabel = v14;

  v16 = [WAAQIView createWeatherLabelWithLightColor:0];
  airQualityMetadataGradeLabel = self->_airQualityMetadataGradeLabel;
  self->_airQualityMetadataGradeLabel = v16;

  v18 = [WAAQIView createWeatherLabelWithLightColor:0];
  airQualityRecommendationLabel = self->_airQualityRecommendationLabel;
  self->_airQualityRecommendationLabel = v18;

  v20 = [WAAQIView createWeatherLabelWithLightColor:0];
  aqiCitationLabel = self->_aqiCitationLabel;
  self->_aqiCitationLabel = v20;

  [(UILabel *)self->_aqiLabel setNumberOfLines:0];
  [(UILabel *)self->_aqiIndexLabel setNumberOfLines:0];
  [(UILabel *)self->_aqiAgencyLabel setNumberOfLines:0];
  [(UILabel *)self->_aqiCategoryLabel setNumberOfLines:0];
  [(UILabel *)self->_airQualityMetadataGradeLabel setNumberOfLines:0];
  [(UILabel *)self->_airQualityRecommendationLabel setNumberOfLines:0];
  [(UILabel *)self->_aqiCitationLabel setNumberOfLines:0];
  self->_layoutMode = 1;
  v22 = objc_alloc_init(WAAQIViewStyler);
  styler = self->_styler;
  self->_styler = v22;

  v24 = objc_alloc_init(WAAQIAttributionStringBuilder);
  attributionStringBuilder = self->_attributionStringBuilder;
  self->_attributionStringBuilder = v24;

  [(WAAQIView *)self addSubview:self->_aqiLabel];
  [(WAAQIView *)self addSubview:self->_aqiIndexLabel];
  [(WAAQIView *)self addSubview:self->_aqiAgencyLabel];
  [(WAAQIView *)self addSubview:self->_dash];
  [(WAAQIView *)self addSubview:self->_aqiScaleView];
  [(WAAQIView *)self addSubview:self->_aqiCategoryLabel];
  [(WAAQIView *)self addSubview:self->_aqiCitationLabel];
  [(WAAQIView *)self addSubview:self->_airQualityMetadataGradeLabel];
  [(WAAQIView *)self addSubview:self->_airQualityRecommendationLabel];
  self->_hideCitationString = 0;
  self->_forceHideThisEntireView = 0;
  self->_initialized = 1;
}

- (void)updateWithCity:(id)city layoutMode:(unint64_t)mode
{
  cityCopy = city;
  if (![(WAAQIView *)self initialized])
  {
    [(WAAQIView *)self initialize];
  }

  [(WAAQIView *)self prepareForReuse];
  [(WAAQIView *)self setCity:cityCopy];

  [(WAAQIView *)self setLayoutMode:mode];
  city = [(WAAQIView *)self city];
  aqiDataAvailabilityStatus = [city aqiDataAvailabilityStatus];

  if (aqiDataAvailabilityStatus == 2)
  {
    layoutMode = [(WAAQIView *)self layoutMode];
    if (layoutMode > 1)
    {
      if (layoutMode == 2)
      {
        [(WAAQIView *)self setupForLayoutExtendedScaleView];
        goto LABEL_16;
      }

      if (layoutMode != 3)
      {
        goto LABEL_16;
      }

      selfCopy2 = self;
      v11 = 1;
    }

    else
    {
      if (!layoutMode)
      {
        [(WAAQIView *)self setupForLayoutExtendedNoScaleView];
        goto LABEL_16;
      }

      if (layoutMode != 1)
      {
        goto LABEL_16;
      }

      selfCopy2 = self;
      v11 = 0;
    }

    [(WAAQIView *)selfCopy2 setupForLayoutCompactScaleViewOneLinePlatterView:v11];
    goto LABEL_16;
  }

  if (aqiDataAvailabilityStatus == 1)
  {
    [(WAAQIView *)self setupForLayoutTemporarilyUnavailable];
  }

LABEL_16:

  [(WAAQIView *)self setNeedsLayout];
}

- (void)handleTapGesture:(id)gesture
{
  gestureCopy = gesture;
  aqiCitationLabel = [(WAAQIView *)self aqiCitationLabel];
  [aqiCitationLabel bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [gestureCopy locationInView:aqiCitationLabel];
  v14 = v13;
  v16 = v15;

  v23.origin.x = v6;
  v23.origin.y = v8;
  v23.size.width = v10;
  v23.size.height = v12;
  v22.x = v14;
  v22.y = v16;
  if (CGRectContainsPoint(v23, v22))
  {
    delegate = [(WAAQIView *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      delegate2 = [(WAAQIView *)self delegate];
      [delegate2 aqiViewAttributionLabelTapped:self];
    }
  }
}

- (double)contentMarginFromTop
{
  aqiIndexLabel = [(WAAQIView *)self aqiIndexLabel];
  [aqiIndexLabel _firstBaselineOffsetFromTop];
  v5 = v4;

  aqiIndexLabel2 = [(WAAQIView *)self aqiIndexLabel];
  font = [aqiIndexLabel2 font];
  [font capHeight];
  v9 = v8;

  aqiIndexLabel3 = [(WAAQIView *)self aqiIndexLabel];
  [aqiIndexLabel3 frame];
  v12 = v5 - v9 + v11;

  return v12;
}

- (id)scaleDisplayNameForCity:(id)city
{
  v17 = *MEMORY[0x277D85DE8];
  cityCopy = city;
  v5 = WALogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    airQualityScale = [cityCopy airQualityScale];
    displayName = [airQualityScale displayName];
    city = [(WAAQIView *)self city];
    v13 = 138412546;
    v14 = displayName;
    v15 = 2112;
    v16 = city;
    _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_DEFAULT, "Using displayName: %@ for city: %@", &v13, 0x16u);
  }

  airQualityScale2 = [cityCopy airQualityScale];
  displayName2 = [airQualityScale2 displayName];

  v11 = *MEMORY[0x277D85DE8];

  return displayName2;
}

- (id)metadataLabelForCity:(id)city
{
  airQualityScale = [city airQualityScale];
  displayLabel = [airQualityScale displayLabel];
  localizedUppercaseString = [displayLabel localizedUppercaseString];

  return localizedUppercaseString;
}

- (id)drawableScaleForCity:(id)city
{
  v14 = *MEMORY[0x277D85DE8];
  airQualityScale = [city airQualityScale];
  v5 = WALogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    city = [(WAAQIView *)self city];
    v10 = 138412546;
    v11 = airQualityScale;
    v12 = 2112;
    v13 = city;
    _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_DEFAULT, "Using scale: %@ for gradient for city: %@", &v10, 0x16u);
  }

  v7 = [WAAQIScale scaleFromFoundationScale:airQualityScale];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)currentScaleCategoryLabelForCity:(id)city
{
  cityCopy = city;
  airQualityScale = [cityCopy airQualityScale];

  if (airQualityScale)
  {
    airQualityCurrentScaleCategory = [cityCopy airQualityCurrentScaleCategory];
    v6 = airQualityCurrentScaleCategory;
    if (airQualityCurrentScaleCategory)
    {
      categoryName = [airQualityCurrentScaleCategory categoryName];
      goto LABEL_10;
    }

    v8 = WALogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_272ACF000, v8, OS_LOG_TYPE_DEFAULT, "No current scale category - bailing", v10, 2u);
    }
  }

  else
  {
    v6 = WALogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272ACF000, v6, OS_LOG_TYPE_DEFAULT, "No scale - bailing", buf, 2u);
    }
  }

  categoryName = 0;
LABEL_10:

  return categoryName;
}

- (CGRect)adjustedFrame:(CGRect)frame basedOnFont:(id)font desiredBaseline:(double)baseline
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [font ascender];
  v11 = y + baseline - (y + v10);
  v12 = x;
  v13 = width;
  v14 = height;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v11;
  result.origin.x = v12;
  return result;
}

- (CGRect)rtlAdjustFrame:(CGRect)frame inBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  MinY = frame.origin.y;
  v11 = frame.origin.x;
  if (IsUIRTL())
  {
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    MaxX = CGRectGetMaxX(v18);
    v19.origin.x = v11;
    v19.origin.y = MinY;
    v19.size.width = v9;
    v19.size.height = v8;
    v13 = MaxX - CGRectGetMaxX(v19);
    v20.origin.x = v11;
    v20.origin.y = MinY;
    v20.size.width = v9;
    v20.size.height = v8;
    MinY = CGRectGetMinY(v20);
    v11 = v13;
  }

  v14 = v11;
  v15 = MinY;
  v16 = v9;
  v17 = v8;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)prepareForReuse
{
  aqiLabel = [(WAAQIView *)self aqiLabel];
  [aqiLabel setAttributedText:0];

  aqiIndexLabel = [(WAAQIView *)self aqiIndexLabel];
  [aqiIndexLabel setAttributedText:0];

  aqiAgencyLabel = [(WAAQIView *)self aqiAgencyLabel];
  [aqiAgencyLabel setAttributedText:0];

  aqiCategoryLabel = [(WAAQIView *)self aqiCategoryLabel];
  [aqiCategoryLabel setAttributedText:0];

  airQualityMetadataGradeLabel = [(WAAQIView *)self airQualityMetadataGradeLabel];
  [airQualityMetadataGradeLabel setAttributedText:0];

  airQualityRecommendationLabel = [(WAAQIView *)self airQualityRecommendationLabel];
  [airQualityRecommendationLabel setAttributedText:0];

  aqiCitationLabel = [(WAAQIView *)self aqiCitationLabel];
  [aqiCitationLabel setAttributedText:0];

  aqiLabel2 = [(WAAQIView *)self aqiLabel];
  [aqiLabel2 setNumberOfLines:0];

  aqiIndexLabel2 = [(WAAQIView *)self aqiIndexLabel];
  [aqiIndexLabel2 setNumberOfLines:0];

  aqiAgencyLabel2 = [(WAAQIView *)self aqiAgencyLabel];
  [aqiAgencyLabel2 setNumberOfLines:0];

  aqiCategoryLabel2 = [(WAAQIView *)self aqiCategoryLabel];
  [aqiCategoryLabel2 setNumberOfLines:0];

  airQualityMetadataGradeLabel2 = [(WAAQIView *)self airQualityMetadataGradeLabel];
  [airQualityMetadataGradeLabel2 setNumberOfLines:0];

  airQualityRecommendationLabel2 = [(WAAQIView *)self airQualityRecommendationLabel];
  [airQualityRecommendationLabel2 setNumberOfLines:0];

  aqiCitationLabel2 = [(WAAQIView *)self aqiCitationLabel];
  [aqiCitationLabel2 setNumberOfLines:0];

  [(WAAQIView *)self setHideCitationString:0];

  [(WAAQIView *)self setForceHideThisEntireView:0];
}

- (BOOL)shouldInsertGlyphImage:(id)image
{
  imageCopy = image;
  airQualityAttribution = [imageCopy airQualityAttribution];
  dataOrigination = [airQualityAttribution dataOrigination];

  if (dataOrigination > 1)
  {
    v7 = 0;
  }

  else
  {
    airQualityLearnMoreURL = [imageCopy airQualityLearnMoreURL];

    v7 = airQualityLearnMoreURL != 0;
  }

  return v7;
}

- (void)setupForLayoutTemporarilyUnavailable
{
  city = [(WAAQIView *)self city];
  styler = [(WAAQIView *)self styler];
  v4 = [(WAAQIView *)self metadataLabelForCity:city];
  v5 = [styler styledAQIMetadataSourceText:v4];
  aqiLabel = [(WAAQIView *)self aqiLabel];
  [aqiLabel setAttributedText:v5];

  styler2 = [(WAAQIView *)self styler];
  v8 = [(WAAQIView *)self scaleDisplayNameForCity:city];
  v9 = [styler2 styledAQIMetadataSourceText:v8];
  aqiAgencyLabel = [(WAAQIView *)self aqiAgencyLabel];
  [aqiAgencyLabel setAttributedText:v9];

  styler3 = [(WAAQIView *)self styler];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"AQI_VIEW_STATUS_UNAVAILABLE" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
  v14 = [styler3 styledAQIMetadataGradeText:v13];
  aqiCategoryLabel = [(WAAQIView *)self aqiCategoryLabel];
  [aqiCategoryLabel setAttributedText:v14];

  styler4 = [(WAAQIView *)self styler];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"AQI_VIEW_RECOMMENDATION_STATUS_UNAVAILABLE" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
  v19 = [styler4 styledAQIMetadataCitationText:v18 attribution:0 shouldInsertGlyph:0];
  aqiCitationLabel = [(WAAQIView *)self aqiCitationLabel];
  [aqiCitationLabel setAttributedText:v19];
}

- (void)setupForLayoutCompactScaleViewOneLinePlatterView:(BOOL)view
{
  viewCopy = view;
  city = [(WAAQIView *)self city];
  v5 = [(WAAQIView *)self drawableScaleForCity:?];
  if (v5)
  {
    aqiScaleView = [(WAAQIView *)self aqiScaleView];
    [aqiScaleView setScale:v5];

    v7 = !WAIsShortDevice();
    if (viewCopy)
    {
      v8 = 3;
    }

    else
    {
      v8 = 1;
    }

    styler = [(WAAQIView *)self styler];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"AQI_SHORT_STRING" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
    v12 = [styler styledAQIText:v11 mode:{v8, v7}];
    aqiLabel = [(WAAQIView *)self aqiLabel];
    [aqiLabel setAttributedText:v12];

    aqiLabel2 = [(WAAQIView *)self aqiLabel];
    [aqiLabel2 setNumberOfLines:1];

    v15 = WANumberFormatterForDisplayingAQI();
    airQualityIdx = [city airQualityIdx];
    v17 = [v15 stringFromNumber:airQualityIdx];

    if (([city airQualityScaleIsNumerical] & 1) == 0)
    {

      v17 = &stru_2882270E8;
    }

    v18 = [(WAAQIView *)self currentScaleCategoryLabelForCity:city];
    airQualityIdx2 = [city airQualityIdx];
    unsignedIntegerValue = [airQualityIdx2 unsignedIntegerValue];
    aqiScaleView2 = [(WAAQIView *)self aqiScaleView];
    [aqiScaleView2 setAQI:unsignedIntegerValue];

    styler2 = [(WAAQIView *)self styler];
    v23 = [styler2 styledAQILocalizedIndexText:v17 mode:{v8, v7}];
    aqiIndexLabel = [(WAAQIView *)self aqiIndexLabel];
    [aqiIndexLabel setAttributedText:v23];

    aqiIndexLabel2 = [(WAAQIView *)self aqiIndexLabel];
    [aqiIndexLabel2 setNumberOfLines:1];

    styler3 = [(WAAQIView *)self styler];
    v27 = [styler3 styledAQICategoryText:v18 mode:{v8, v7}];
    aqiCategoryLabel = [(WAAQIView *)self aqiCategoryLabel];
    [aqiCategoryLabel setAttributedText:v27];

    aqiCategoryLabel2 = [(WAAQIView *)self aqiCategoryLabel];
    [aqiCategoryLabel2 setNumberOfLines:1];
  }

  else
  {
    [(WAAQIView *)self setForceHideThisEntireView:1];
  }
}

- (void)setupForLayoutExtendedScaleView
{
  [(WAAQIView *)self setHideRecommendationString:1];
  [(WAAQIView *)self setHideCitationString:0];
  city = [(WAAQIView *)self city];
  v3 = [(WAAQIView *)self drawableScaleForCity:?];
  if (v3)
  {
    aqiScaleView = [(WAAQIView *)self aqiScaleView];
    [aqiScaleView setScale:v3];

    styler = [(WAAQIView *)self styler];
    v6 = [(WAAQIView *)self metadataLabelForCity:city];
    v7 = [styler styledAQIMetadataSourceText:v6];
    aqiLabel = [(WAAQIView *)self aqiLabel];
    [aqiLabel setAttributedText:v7];

    styler2 = [(WAAQIView *)self styler];
    v10 = [(WAAQIView *)self scaleDisplayNameForCity:city];
    v11 = [styler2 styledAQIMetadataSourceText:v10];
    aqiAgencyLabel = [(WAAQIView *)self aqiAgencyLabel];
    [aqiAgencyLabel setAttributedText:v11];

    airQualityIdx = [city airQualityIdx];
    unsignedIntegerValue = [airQualityIdx unsignedIntegerValue];

    aqiScaleView2 = [(WAAQIView *)self aqiScaleView];
    [aqiScaleView2 setAQI:unsignedIntegerValue];

    v16 = [(WAAQIView *)self currentScaleCategoryLabelForCity:city];
    if ([city airQualityScaleIsNumerical])
    {
      v17 = WANumberFormatterForDisplayingAQI();
      airQualityIdx2 = [city airQualityIdx];
      v19 = [v17 stringFromNumber:airQualityIdx2];

      v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v21 = [v20 localizedStringForKey:@"AQI_INDEX_STRING" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];

      v22 = [MEMORY[0x277CCACA8] stringWithFormat:v21, v19, v16];
    }

    else
    {
      v22 = v16;
    }

    styler3 = [(WAAQIView *)self styler];
    v24 = [styler3 styledAQIMetadataGradeText:v22];
    airQualityMetadataGradeLabel = [(WAAQIView *)self airQualityMetadataGradeLabel];
    [airQualityMetadataGradeLabel setAttributedText:v24];

    city2 = [(WAAQIView *)self city];
    airQualityAttribution = [city2 airQualityAttribution];
    LOBYTE(airQualityMetadataGradeLabel) = [airQualityAttribution isValid];

    if (airQualityMetadataGradeLabel)
    {
      attributionStringBuilder = [(WAAQIView *)self attributionStringBuilder];
      city3 = [(WAAQIView *)self city];
      v30 = [attributionStringBuilder buildAttributionStringFromCity:city3];

      city4 = [(WAAQIView *)self city];
      v32 = [(WAAQIView *)self shouldInsertGlyphImage:city4];

      styler4 = [(WAAQIView *)self styler];
      city5 = [(WAAQIView *)self city];
      airQualityAttribution2 = [city5 airQualityAttribution];
      v36 = [styler4 styledAQIMetadataCitationText:v30 attribution:airQualityAttribution2 shouldInsertGlyph:v32];
      aqiCitationLabel = [(WAAQIView *)self aqiCitationLabel];
      [aqiCitationLabel setAttributedText:v36];
    }

    else
    {
      [(WAAQIView *)self setHideCitationString:1];
    }
  }

  else
  {
    [(WAAQIView *)self setForceHideThisEntireView:1];
  }
}

- (void)setupForLayoutExtendedNoScaleView
{
  [(WAAQIView *)self setHideRecommendationString:0];
  [(WAAQIView *)self setHideCitationString:0];
  city = [(WAAQIView *)self city];
  airQualityScale = [city airQualityScale];

  if (airQualityScale)
  {
    styler = [(WAAQIView *)self styler];
    v5 = [(WAAQIView *)self metadataLabelForCity:city];
    v6 = [styler styledAQIMetadataSourceText:v5];
    aqiLabel = [(WAAQIView *)self aqiLabel];
    [aqiLabel setAttributedText:v6];

    styler2 = [(WAAQIView *)self styler];
    v9 = [(WAAQIView *)self scaleDisplayNameForCity:city];
    v10 = [styler2 styledAQIMetadataSourceText:v9];
    aqiAgencyLabel = [(WAAQIView *)self aqiAgencyLabel];
    [aqiAgencyLabel setAttributedText:v10];

    v12 = [(WAAQIView *)self currentScaleCategoryLabelForCity:city];
    if ([city airQualityScaleIsNumerical])
    {
      v13 = WANumberFormatterForDisplayingAQI();
      airQualityIdx = [city airQualityIdx];
      v15 = [v13 stringFromNumber:airQualityIdx];

      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = [v16 localizedStringForKey:@"AQI_INDEX_STRING" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];

      v18 = [MEMORY[0x277CCACA8] stringWithFormat:v17, v15, v12];
    }

    else
    {
      v18 = v12;
    }

    styler3 = [(WAAQIView *)self styler];
    v20 = [styler3 styledAQIMetadataGradeText:v18];
    airQualityMetadataGradeLabel = [(WAAQIView *)self airQualityMetadataGradeLabel];
    [airQualityMetadataGradeLabel setAttributedText:v20];

    airQualityRecommendation = [city airQualityRecommendation];
    if (airQualityRecommendation && ![city airQualityForceHideRecommendation])
    {
      styler4 = [(WAAQIView *)self styler];
      v24 = [styler4 styledAQIMetadataRecommendationText:airQualityRecommendation];
      airQualityRecommendationLabel = [(WAAQIView *)self airQualityRecommendationLabel];
      [airQualityRecommendationLabel setAttributedText:v24];
    }

    else
    {
      [(WAAQIView *)self setHideRecommendationString:1];
    }

    city2 = [(WAAQIView *)self city];
    airQualityAttribution = [city2 airQualityAttribution];
    isValid = [airQualityAttribution isValid];

    if (isValid)
    {
      attributionStringBuilder = [(WAAQIView *)self attributionStringBuilder];
      city3 = [(WAAQIView *)self city];
      v31 = [attributionStringBuilder buildAttributionStringFromCity:city3];

      city4 = [(WAAQIView *)self city];
      v33 = [(WAAQIView *)self shouldInsertGlyphImage:city4];

      styler5 = [(WAAQIView *)self styler];
      city5 = [(WAAQIView *)self city];
      airQualityAttribution2 = [city5 airQualityAttribution];
      v37 = [styler5 styledAQIMetadataCitationText:v31 attribution:airQualityAttribution2 shouldInsertGlyph:v33];
      aqiCitationLabel = [(WAAQIView *)self aqiCitationLabel];
      [aqiCitationLabel setAttributedText:v37];
    }

    else
    {
      [(WAAQIView *)self setHideCitationString:1];
    }
  }

  else
  {
    [(WAAQIView *)self setForceHideThisEntireView:1];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  city = [(WAAQIView *)self city];
  aqiDataAvailabilityStatus = [city aqiDataAvailabilityStatus];

  if (aqiDataAvailabilityStatus == 2)
  {
    [(WAAQIView *)self sizeForAQIAvailableThatFits:width, height];
  }

  else if (aqiDataAvailabilityStatus == 1)
  {
    [(WAAQIView *)self sizeForAQITemporarilyUnavailableThatFits:width, height];
  }

  else
  {
    v8 = *MEMORY[0x277CBF3A8];
    v9 = *(MEMORY[0x277CBF3A8] + 8);
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)sizeForAQIAvailableThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = *MEMORY[0x277CBF3A8];
  v7 = *(MEMORY[0x277CBF3A8] + 8);
  layoutMode = [(WAAQIView *)self layoutMode];
  if (layoutMode > 1)
  {
    if (layoutMode == 2)
    {
      [(WAAQIView *)self sizeForExtendedLayoutWithScaleViewThatFits:width, height];
      goto LABEL_11;
    }

    if (layoutMode == 3)
    {
      selfCopy2 = self;
      v10 = width;
      v11 = height;
      v12 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    if (!layoutMode)
    {
      [(WAAQIView *)self sizeForLayoutWithoutScaleViewThatFits:width, height];
      goto LABEL_11;
    }

    if (layoutMode == 1)
    {
      selfCopy2 = self;
      v10 = width;
      v11 = height;
      v12 = 0;
LABEL_8:
      [(WAAQIView *)selfCopy2 sizeForCompactOneLineLayoutWithScaleViewThatFits:v12 platterView:v10, v11];
LABEL_11:
      v6 = v13;
      v7 = v14;
    }
  }

  v15 = v6;
  v16 = v7;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)sizeForAQITemporarilyUnavailableThatFits:(CGSize)fits
{
  width = fits.width;
  [(WAAQIView *)self bounds:fits.width];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  aqiLabel = [(WAAQIView *)self aqiLabel];
  [aqiLabel setFrame:{v6, v8, v10, v12}];

  [(WAAQIView *)self bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  aqiAgencyLabel = [(WAAQIView *)self aqiAgencyLabel];
  [aqiAgencyLabel setFrame:{v15, v17, v19, v21}];

  [(WAAQIView *)self bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  aqiCategoryLabel = [(WAAQIView *)self aqiCategoryLabel];
  [aqiCategoryLabel setFrame:{v24, v26, v28, v30}];

  [(WAAQIView *)self bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  aqiCitationLabel = [(WAAQIView *)self aqiCitationLabel];
  [aqiCitationLabel setFrame:{v33, v35, v37, v39}];

  aqiLabel2 = [(WAAQIView *)self aqiLabel];
  [aqiLabel2 sizeToFit];

  aqiAgencyLabel2 = [(WAAQIView *)self aqiAgencyLabel];
  [aqiAgencyLabel2 sizeToFit];

  aqiCategoryLabel2 = [(WAAQIView *)self aqiCategoryLabel];
  [aqiCategoryLabel2 sizeToFit];

  aqiCitationLabel2 = [(WAAQIView *)self aqiCitationLabel];
  [aqiCitationLabel2 sizeToFit];

  aqiLabel3 = [(WAAQIView *)self aqiLabel];
  attributedText = [aqiLabel3 attributedText];
  wa_font = [attributedText wa_font];
  [wa_font ascender];
  v49 = v48;

  aqiAgencyLabel3 = [(WAAQIView *)self aqiAgencyLabel];
  attributedText2 = [aqiAgencyLabel3 attributedText];
  wa_font2 = [attributedText2 wa_font];
  [wa_font2 ascender];
  v54 = v53;

  if (v49 >= v54)
  {
    v54 = v49;
  }

  aqiCategoryLabel3 = [(WAAQIView *)self aqiCategoryLabel];
  attributedText3 = [aqiCategoryLabel3 attributedText];
  wa_font3 = [attributedText3 wa_font];
  [wa_font3 descender];
  v59 = v58;
  aqiCategoryLabel4 = [(WAAQIView *)self aqiCategoryLabel];
  [aqiCategoryLabel4 frame];
  v62 = v59 + v61;

  aqiCitationLabel3 = [(WAAQIView *)self aqiCitationLabel];
  attributedText4 = [aqiCitationLabel3 attributedText];
  wa_font4 = [attributedText4 wa_font];
  [wa_font4 descender];
  v67 = v66;
  aqiCitationLabel4 = [(WAAQIView *)self aqiCitationLabel];
  [aqiCitationLabel4 frame];
  v70 = v67 + v69;

  v71 = v54 + 6.0 + 1.0 + v62 + v70 + 9.0;
  v72 = width;
  result.height = v71;
  result.width = v72;
  return result;
}

- (CGSize)sizeForExtendedLayoutWithScaleViewThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = [(WAAQIView *)self forceHideThisEntireView:fits.width];
  v6 = 0.0;
  v7 = 0.0;
  if (!v5)
  {
    [(WAAQIView *)self bounds:0.0];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    aqiLabel = [(WAAQIView *)self aqiLabel];
    [aqiLabel setFrame:{v9, v11, v13, v15}];

    [(WAAQIView *)self bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    aqiAgencyLabel = [(WAAQIView *)self aqiAgencyLabel];
    [aqiAgencyLabel setFrame:{v18, v20, v22, v24}];

    [(WAAQIView *)self bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    airQualityMetadataGradeLabel = [(WAAQIView *)self airQualityMetadataGradeLabel];
    [airQualityMetadataGradeLabel setFrame:{v27, v29, v31, v33}];

    [(WAAQIView *)self bounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    airQualityRecommendationLabel = [(WAAQIView *)self airQualityRecommendationLabel];
    [airQualityRecommendationLabel setFrame:{v36, v38, v40, v42}];

    [(WAAQIView *)self bounds];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    aqiCitationLabel = [(WAAQIView *)self aqiCitationLabel];
    [aqiCitationLabel setFrame:{v45, v47, v49, v51}];

    aqiLabel2 = [(WAAQIView *)self aqiLabel];
    [aqiLabel2 sizeToFit];

    aqiAgencyLabel2 = [(WAAQIView *)self aqiAgencyLabel];
    [aqiAgencyLabel2 sizeToFit];

    airQualityMetadataGradeLabel2 = [(WAAQIView *)self airQualityMetadataGradeLabel];
    [airQualityMetadataGradeLabel2 sizeToFit];

    airQualityRecommendationLabel2 = [(WAAQIView *)self airQualityRecommendationLabel];
    [airQualityRecommendationLabel2 sizeToFit];

    aqiCitationLabel2 = [(WAAQIView *)self aqiCitationLabel];
    [aqiCitationLabel2 sizeToFit];

    hideRecommendationString = [(WAAQIView *)self hideRecommendationString];
    v59 = 9.0;
    v60 = 0.0;
    if (hideRecommendationString)
    {
      v59 = 0.0;
    }

    v108 = v59;
    hideCitationString = [(WAAQIView *)self hideCitationString];
    v62 = 8.0;
    if (hideCitationString)
    {
      v62 = 0.0;
    }

    aqiLabel3 = [(WAAQIView *)self aqiLabel];
    attributedText = [aqiLabel3 attributedText];
    wa_font = [attributedText wa_font];
    [wa_font ascender];
    v67 = v66;

    aqiAgencyLabel3 = [(WAAQIView *)self aqiAgencyLabel];
    attributedText2 = [aqiAgencyLabel3 attributedText];
    wa_font2 = [attributedText2 wa_font];
    [wa_font2 ascender];
    v72 = v71;

    if (v67 >= v72)
    {
      v73 = v67;
    }

    else
    {
      v73 = v72;
    }

    airQualityMetadataGradeLabel3 = [(WAAQIView *)self airQualityMetadataGradeLabel];
    attributedText3 = [airQualityMetadataGradeLabel3 attributedText];
    wa_font3 = [attributedText3 wa_font];
    [wa_font3 descender];
    v78 = v77;
    airQualityMetadataGradeLabel4 = [(WAAQIView *)self airQualityMetadataGradeLabel];
    [airQualityMetadataGradeLabel4 frame];
    v81 = v78 + v80;

    aqiScaleView = [(WAAQIView *)self aqiScaleView];
    [aqiScaleView intrinsicContentSize];
    v84 = v83;

    airQualityRecommendationLabel3 = [(WAAQIView *)self airQualityRecommendationLabel];
    attributedText4 = [airQualityRecommendationLabel3 attributedText];
    wa_font4 = [attributedText4 wa_font];
    [wa_font4 descender];
    v89 = v88;
    airQualityRecommendationLabel4 = [(WAAQIView *)self airQualityRecommendationLabel];
    [airQualityRecommendationLabel4 frame];
    v92 = v89 + v91;

    if (![(WAAQIView *)self hideCitationString])
    {
      aqiCitationLabel3 = [(WAAQIView *)self aqiCitationLabel];
      attributedText5 = [aqiCitationLabel3 attributedText];
      wa_font5 = [attributedText5 wa_font];
      [wa_font5 descender];
      v97 = v96;
      aqiCitationLabel4 = [(WAAQIView *)self aqiCitationLabel];
      [aqiCitationLabel4 frame];
      v60 = v97 + v99;
    }

    aqiLabel4 = [(WAAQIView *)self aqiLabel];
    [aqiLabel4 frame];
    v102 = v101;
    aqiAgencyLabel4 = [(WAAQIView *)self aqiAgencyLabel];
    [aqiAgencyLabel4 frame];
    v105 = v102 + v104 + 10.0;

    v106 = v73 + v73 + 1.0;
    if (v105 < width)
    {
      v106 = v73;
    }

    v7 = v60 + v107 + v92 + v108 + v84 + v81 + v106 + 6.0 + 1.0 + 10.0 + 9.0;
    v6 = width;
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)sizeForLayoutWithoutScaleViewThatFits:(CGSize)fits
{
  width = fits.width;
  [(WAAQIView *)self bounds:fits.width];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  aqiLabel = [(WAAQIView *)self aqiLabel];
  [aqiLabel setFrame:{v5, v7, v9, v11}];

  [(WAAQIView *)self bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  aqiAgencyLabel = [(WAAQIView *)self aqiAgencyLabel];
  [aqiAgencyLabel setFrame:{v14, v16, v18, v20}];

  [(WAAQIView *)self bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  airQualityMetadataGradeLabel = [(WAAQIView *)self airQualityMetadataGradeLabel];
  [airQualityMetadataGradeLabel setFrame:{v23, v25, v27, v29}];

  [(WAAQIView *)self bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  airQualityRecommendationLabel = [(WAAQIView *)self airQualityRecommendationLabel];
  [airQualityRecommendationLabel setFrame:{v32, v34, v36, v38}];

  [(WAAQIView *)self bounds];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  aqiCitationLabel = [(WAAQIView *)self aqiCitationLabel];
  [aqiCitationLabel setFrame:{v41, v43, v45, v47}];

  aqiLabel2 = [(WAAQIView *)self aqiLabel];
  [aqiLabel2 sizeToFit];

  aqiAgencyLabel2 = [(WAAQIView *)self aqiAgencyLabel];
  [aqiAgencyLabel2 sizeToFit];

  airQualityMetadataGradeLabel2 = [(WAAQIView *)self airQualityMetadataGradeLabel];
  [airQualityMetadataGradeLabel2 sizeToFit];

  airQualityRecommendationLabel2 = [(WAAQIView *)self airQualityRecommendationLabel];
  [airQualityRecommendationLabel2 sizeToFit];

  aqiCitationLabel2 = [(WAAQIView *)self aqiCitationLabel];
  [aqiCitationLabel2 sizeToFit];

  hideCitationString = [(WAAQIView *)self hideCitationString];
  aqiLabel3 = [(WAAQIView *)self aqiLabel];
  attributedText = [aqiLabel3 attributedText];
  wa_font = [attributedText wa_font];
  [wa_font ascender];
  v59 = v58;

  aqiAgencyLabel3 = [(WAAQIView *)self aqiAgencyLabel];
  attributedText2 = [aqiAgencyLabel3 attributedText];
  wa_font2 = [attributedText2 wa_font];
  [wa_font2 ascender];
  v64 = v63;

  airQualityMetadataGradeLabel3 = [(WAAQIView *)self airQualityMetadataGradeLabel];
  attributedText3 = [airQualityMetadataGradeLabel3 attributedText];
  wa_font3 = [attributedText3 wa_font];
  [wa_font3 descender];
  v69 = v68;
  airQualityMetadataGradeLabel4 = [(WAAQIView *)self airQualityMetadataGradeLabel];
  [airQualityMetadataGradeLabel4 frame];
  v72 = v71;

  airQualityRecommendationLabel3 = [(WAAQIView *)self airQualityRecommendationLabel];
  attributedText4 = [airQualityRecommendationLabel3 attributedText];
  wa_font4 = [attributedText4 wa_font];
  [wa_font4 descender];
  v77 = v76;
  airQualityRecommendationLabel4 = [(WAAQIView *)self airQualityRecommendationLabel];
  [airQualityRecommendationLabel4 frame];
  v80 = v79;

  v81 = 0.0;
  if (![(WAAQIView *)self hideCitationString])
  {
    aqiCitationLabel3 = [(WAAQIView *)self aqiCitationLabel];
    attributedText5 = [aqiCitationLabel3 attributedText];
    wa_font5 = [attributedText5 wa_font];
    [wa_font5 descender];
    v86 = v85;
    aqiCitationLabel4 = [(WAAQIView *)self aqiCitationLabel];
    [aqiCitationLabel4 frame];
    v81 = v86 + v88;
  }

  if (v59 >= v64)
  {
    v89 = v59;
  }

  else
  {
    v89 = v64;
  }

  v90 = 8.0;
  if (hideCitationString)
  {
    v90 = 0.0;
  }

  v91 = v90 + v89 + 6.0 + 1.0 + v69 + v72 + 10.0 + v77 + v80 + v81 + 9.0;
  v92 = width;
  result.height = v91;
  result.width = v92;
  return result;
}

- (void)hideEverything
{
  aqiLabel = [(WAAQIView *)self aqiLabel];
  [aqiLabel setHidden:1];

  aqiIndexLabel = [(WAAQIView *)self aqiIndexLabel];
  [aqiIndexLabel setHidden:1];

  aqiAgencyLabel = [(WAAQIView *)self aqiAgencyLabel];
  [aqiAgencyLabel setHidden:1];

  dash = [(WAAQIView *)self dash];
  [dash setHidden:1];

  aqiScaleView = [(WAAQIView *)self aqiScaleView];
  [aqiScaleView setHidden:1];

  aqiCategoryLabel = [(WAAQIView *)self aqiCategoryLabel];
  [aqiCategoryLabel setHidden:1];

  aqiCitationLabel = [(WAAQIView *)self aqiCitationLabel];
  [aqiCitationLabel setHidden:1];

  airQualityMetadataGradeLabel = [(WAAQIView *)self airQualityMetadataGradeLabel];
  [airQualityMetadataGradeLabel setHidden:1];

  airQualityRecommendationLabel = [(WAAQIView *)self airQualityRecommendationLabel];
  [airQualityRecommendationLabel setHidden:1];
}

- (void)layoutSubviews
{
  [(WAAQIView *)self hideEverything];
  city = [(WAAQIView *)self city];
  aqiDataAvailabilityStatus = [city aqiDataAvailabilityStatus];

  if (aqiDataAvailabilityStatus == 1)
  {

    [(WAAQIView *)self layoutForModeAQITemporarilyUnavailable];
  }

  else
  {
    if (aqiDataAvailabilityStatus != 2)
    {
      return;
    }

    layoutMode = [(WAAQIView *)self layoutMode];
    if (layoutMode > 1)
    {
      if (layoutMode != 2)
      {
        if (layoutMode != 3)
        {
          return;
        }

        selfCopy2 = self;
        v7 = 1;
        goto LABEL_13;
      }

      [(WAAQIView *)self layoutForExtendedModeWithScale];
    }

    else
    {
      if (layoutMode)
      {
        if (layoutMode != 1)
        {
          return;
        }

        selfCopy2 = self;
        v7 = 0;
LABEL_13:

        [(WAAQIView *)selfCopy2 layoutForCompactModeWithScaleInPlatterView:v7];
        return;
      }

      [(WAAQIView *)self layoutForModeWithoutScale];
    }
  }
}

- (void)layoutForModeAQITemporarilyUnavailable
{
  [(WAAQIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  aqiLabel = [(WAAQIView *)self aqiLabel];
  [aqiLabel setFrame:{v4, v6, v8, v10}];

  aqiLabel2 = [(WAAQIView *)self aqiLabel];
  [aqiLabel2 sizeToFit];

  aqiLabel3 = [(WAAQIView *)self aqiLabel];
  [aqiLabel3 setHidden:0];

  [(WAAQIView *)self bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  aqiAgencyLabel = [(WAAQIView *)self aqiAgencyLabel];
  [aqiAgencyLabel setFrame:{v15, v17, v19, v21}];

  aqiAgencyLabel2 = [(WAAQIView *)self aqiAgencyLabel];
  [aqiAgencyLabel2 sizeToFit];

  aqiAgencyLabel3 = [(WAAQIView *)self aqiAgencyLabel];
  [aqiAgencyLabel3 setHidden:0];

  [(WAAQIView *)self bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  aqiCategoryLabel = [(WAAQIView *)self aqiCategoryLabel];
  [aqiCategoryLabel setFrame:{v26, v28, v30, v32}];

  aqiCategoryLabel2 = [(WAAQIView *)self aqiCategoryLabel];
  [aqiCategoryLabel2 sizeToFit];

  aqiCategoryLabel3 = [(WAAQIView *)self aqiCategoryLabel];
  [aqiCategoryLabel3 setHidden:0];

  [(WAAQIView *)self bounds];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  aqiCitationLabel = [(WAAQIView *)self aqiCitationLabel];
  [aqiCitationLabel setFrame:{v37, v39, v41, v43}];

  aqiCitationLabel2 = [(WAAQIView *)self aqiCitationLabel];
  [aqiCitationLabel2 sizeToFit];

  aqiCitationLabel3 = [(WAAQIView *)self aqiCitationLabel];
  [aqiCitationLabel3 setHidden:0];

  aqiLabel4 = [(WAAQIView *)self aqiLabel];
  [aqiLabel4 frame];
  v49 = v48;
  v51 = v50;

  v52 = *MEMORY[0x277CBF348];
  [(WAAQIView *)self bounds];
  [(WAAQIView *)self rtlAdjustFrame:v52 inBounds:6.0, v49, v51, v53, v54, v55, v56];
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  aqiLabel5 = [(WAAQIView *)self aqiLabel];
  [aqiLabel5 setFrame:{v58, v60, v62, v64}];

  aqiAgencyLabel4 = [(WAAQIView *)self aqiAgencyLabel];
  [aqiAgencyLabel4 frame];
  v68 = v67;
  v70 = v69;

  [(WAAQIView *)self bounds];
  v71 = CGRectGetMaxX(v134) - v68;
  [(WAAQIView *)self bounds];
  [(WAAQIView *)self rtlAdjustFrame:v71 inBounds:6.0, v68, v70, v72, v73, v74, v75];
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  aqiAgencyLabel5 = [(WAAQIView *)self aqiAgencyLabel];
  [aqiAgencyLabel5 setFrame:{v77, v79, v81, v83}];

  aqiLabel6 = [(WAAQIView *)self aqiLabel];
  attributedText = [aqiLabel6 attributedText];
  wa_font = [attributedText wa_font];
  [wa_font ascender];
  v89 = v88;

  aqiCategoryLabel4 = [(WAAQIView *)self aqiCategoryLabel];
  [aqiCategoryLabel4 frame];
  v92 = v91;
  v94 = v93;

  v95 = v89 + 1.0;
  [(WAAQIView *)self bounds];
  [(WAAQIView *)self rtlAdjustFrame:v52 inBounds:v95, v92, v94, v96, v97, v98, v99];
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v107 = v106;
  aqiCategoryLabel5 = [(WAAQIView *)self aqiCategoryLabel];
  [aqiCategoryLabel5 setFrame:{v101, v103, v105, v107}];

  aqiCategoryLabel6 = [(WAAQIView *)self aqiCategoryLabel];
  attributedText2 = [aqiCategoryLabel6 attributedText];
  wa_font2 = [attributedText2 wa_font];
  [wa_font2 descender];
  v113 = v112;
  v135.origin.x = v52;
  v135.origin.y = v95;
  v135.size.width = v92;
  v135.size.height = v94;
  v114 = v113 + CGRectGetMaxY(v135);

  aqiCitationLabel4 = [(WAAQIView *)self aqiCitationLabel];
  [aqiCitationLabel4 frame];
  v117 = v116;
  v119 = v118;

  [(WAAQIView *)self bounds];
  [(WAAQIView *)self rtlAdjustFrame:v52 inBounds:v114 + 1.0, v117, v119, v120, v121, v122, v123];
  v125 = v124;
  v127 = v126;
  v129 = v128;
  v131 = v130;
  aqiCitationLabel5 = [(WAAQIView *)self aqiCitationLabel];
  [aqiCitationLabel5 setFrame:{v125, v127, v129, v131}];
}

- (void)layoutForExtendedModeWithScale
{
  if (![(WAAQIView *)self forceHideThisEntireView])
  {
    [(WAAQIView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    aqiLabel = [(WAAQIView *)self aqiLabel];
    [aqiLabel setFrame:{v4, v6, v8, v10}];

    aqiLabel2 = [(WAAQIView *)self aqiLabel];
    [aqiLabel2 sizeToFit];

    aqiLabel3 = [(WAAQIView *)self aqiLabel];
    [aqiLabel3 setHidden:0];

    [(WAAQIView *)self bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    aqiAgencyLabel = [(WAAQIView *)self aqiAgencyLabel];
    [aqiAgencyLabel setFrame:{v15, v17, v19, v21}];

    aqiAgencyLabel2 = [(WAAQIView *)self aqiAgencyLabel];
    [aqiAgencyLabel2 sizeToFit];

    aqiAgencyLabel3 = [(WAAQIView *)self aqiAgencyLabel];
    [aqiAgencyLabel3 setHidden:0];

    [(WAAQIView *)self bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    airQualityMetadataGradeLabel = [(WAAQIView *)self airQualityMetadataGradeLabel];
    [airQualityMetadataGradeLabel setFrame:{v26, v28, v30, v32}];

    airQualityMetadataGradeLabel2 = [(WAAQIView *)self airQualityMetadataGradeLabel];
    [airQualityMetadataGradeLabel2 sizeToFit];

    airQualityMetadataGradeLabel3 = [(WAAQIView *)self airQualityMetadataGradeLabel];
    [airQualityMetadataGradeLabel3 setHidden:0];

    aqiScaleView = [(WAAQIView *)self aqiScaleView];
    [aqiScaleView setHidden:0];

    if (![(WAAQIView *)self hideRecommendationString])
    {
      [(WAAQIView *)self bounds];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;
      airQualityRecommendationLabel = [(WAAQIView *)self airQualityRecommendationLabel];
      [airQualityRecommendationLabel setFrame:{v38, v40, v42, v44}];

      airQualityRecommendationLabel2 = [(WAAQIView *)self airQualityRecommendationLabel];
      [airQualityRecommendationLabel2 sizeToFit];

      airQualityRecommendationLabel3 = [(WAAQIView *)self airQualityRecommendationLabel];
      [airQualityRecommendationLabel3 setHidden:0];
    }

    if (![(WAAQIView *)self hideCitationString])
    {
      [(WAAQIView *)self bounds];
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v55 = v54;
      aqiCitationLabel = [(WAAQIView *)self aqiCitationLabel];
      [aqiCitationLabel setFrame:{v49, v51, v53, v55}];

      aqiCitationLabel2 = [(WAAQIView *)self aqiCitationLabel];
      [aqiCitationLabel2 sizeToFit];

      aqiCitationLabel3 = [(WAAQIView *)self aqiCitationLabel];
      [aqiCitationLabel3 setHidden:0];
    }

    aqiScaleView2 = [(WAAQIView *)self aqiScaleView];
    [aqiScaleView2 intrinsicContentSize];
    v215 = v60;

    [(WAAQIView *)self frame];
    v214 = v61;
    aqiLabel4 = [(WAAQIView *)self aqiLabel];
    [aqiLabel4 frame];
    v64 = v63;
    v66 = v65;

    v67 = *MEMORY[0x277CBF348];
    [(WAAQIView *)self bounds];
    [(WAAQIView *)self rtlAdjustFrame:v67 inBounds:6.0, v64, v66, v68, v69, v70, v71];
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    aqiLabel5 = [(WAAQIView *)self aqiLabel];
    [aqiLabel5 setFrame:{v73, v75, v77, v79}];

    aqiAgencyLabel4 = [(WAAQIView *)self aqiAgencyLabel];
    [aqiAgencyLabel4 frame];
    v83 = v82;
    v85 = v84;

    aqiLabel6 = [(WAAQIView *)self aqiLabel];
    [aqiLabel6 frame];
    v88 = v87;
    aqiAgencyLabel5 = [(WAAQIView *)self aqiAgencyLabel];
    [aqiAgencyLabel5 frame];
    v91 = v88 + v90 + 10.0;
    [(WAAQIView *)self bounds];
    v93 = v92;

    if (v91 >= v93)
    {
      aqiLabel7 = [(WAAQIView *)self aqiLabel];
      attributedText = [aqiLabel7 attributedText];
      wa_font = [attributedText wa_font];
      [wa_font ascender];
      v117 = v116 + 6.0;

      [(WAAQIView *)self bounds];
      [(WAAQIView *)self rtlAdjustFrame:v67 inBounds:v117 + 1.0, v83, v85, v118, v119, v120, v121];
      v123 = v122;
      v125 = v124;
      v127 = v126;
      v129 = v128;
      aqiAgencyLabel6 = [(WAAQIView *)self aqiAgencyLabel];
      [aqiAgencyLabel6 setFrame:{v123, v125, v127, v129}];

      aqiAgencyLabel7 = [(WAAQIView *)self aqiAgencyLabel];
      attributedText2 = [aqiAgencyLabel7 attributedText];
      wa_font2 = [attributedText2 wa_font];
      [wa_font2 ascender];
      v112 = v117 + 1.0 + v131;
    }

    else
    {
      [(WAAQIView *)self bounds];
      v94 = CGRectGetMaxX(v218) - v83;
      [(WAAQIView *)self bounds];
      [(WAAQIView *)self rtlAdjustFrame:v94 inBounds:6.0, v83, v85, v95, v96, v97, v98];
      v100 = v99;
      v102 = v101;
      v104 = v103;
      v106 = v105;
      aqiAgencyLabel8 = [(WAAQIView *)self aqiAgencyLabel];
      [aqiAgencyLabel8 setFrame:{v100, v102, v104, v106}];

      aqiAgencyLabel7 = [(WAAQIView *)self aqiAgencyLabel];
      attributedText2 = [aqiAgencyLabel7 attributedText];
      wa_font2 = [attributedText2 wa_font];
      [wa_font2 ascender];
      v112 = v111 + 6.0;
    }

    airQualityMetadataGradeLabel4 = [(WAAQIView *)self airQualityMetadataGradeLabel];
    [airQualityMetadataGradeLabel4 frame];
    v134 = v133;
    v136 = v135;

    v137 = v112 + 1.0;
    [(WAAQIView *)self bounds];
    [(WAAQIView *)self rtlAdjustFrame:v67 inBounds:v112 + 1.0, v134, v136, v138, v139, v140, v141];
    v143 = v142;
    v145 = v144;
    v147 = v146;
    v149 = v148;
    airQualityMetadataGradeLabel5 = [(WAAQIView *)self airQualityMetadataGradeLabel];
    [airQualityMetadataGradeLabel5 setFrame:{v143, v145, v147, v149}];

    airQualityMetadataGradeLabel6 = [(WAAQIView *)self airQualityMetadataGradeLabel];
    attributedText3 = [airQualityMetadataGradeLabel6 attributedText];
    wa_font3 = [attributedText3 wa_font];
    [wa_font3 descender];
    v155 = v154;
    v219.origin.x = v67;
    v219.origin.y = v137;
    v219.size.width = v134;
    v219.size.height = v136;
    v156 = v155 + CGRectGetMaxY(v219);

    aqiScaleView3 = [(WAAQIView *)self aqiScaleView];
    [aqiScaleView3 frame];

    v158 = v156 + 10.0;
    [(WAAQIView *)self bounds];
    [(WAAQIView *)self rtlAdjustFrame:v67 inBounds:v158, v214, *&v215, v159, v160, v161, v162];
    v164 = v163;
    v166 = v165;
    v168 = v167;
    v170 = v169;
    aqiScaleView4 = [(WAAQIView *)self aqiScaleView];
    [aqiScaleView4 setFrame:{v164, v166, v168, v170}];

    v220.origin.x = v67;
    v220.origin.y = v158;
    v220.size.width = v214;
    *&v220.size.height = v215;
    MaxY = CGRectGetMaxY(v220);
    if (![(WAAQIView *)self hideRecommendationString])
    {
      airQualityRecommendationLabel4 = [(WAAQIView *)self airQualityRecommendationLabel];
      [airQualityRecommendationLabel4 frame];
      v175 = v174;
      v177 = v176;

      v178 = MaxY + 10.0;
      [(WAAQIView *)self bounds];
      [(WAAQIView *)self rtlAdjustFrame:v67 inBounds:v178, v175, v177, v179, v180, v181, v182];
      v184 = v183;
      v186 = v185;
      v188 = v187;
      v190 = v189;
      airQualityRecommendationLabel5 = [(WAAQIView *)self airQualityRecommendationLabel];
      [airQualityRecommendationLabel5 setFrame:{v184, v186, v188, v190}];

      airQualityRecommendationLabel6 = [(WAAQIView *)self airQualityRecommendationLabel];
      attributedText4 = [airQualityRecommendationLabel6 attributedText];
      wa_font4 = [attributedText4 wa_font];
      [wa_font4 descender];
      v196 = v195;
      v221.origin.x = v67;
      v221.origin.y = v178;
      v221.size.width = v175;
      v221.size.height = v177;
      MaxY = v196 + CGRectGetMaxY(v221);
    }

    if (![(WAAQIView *)self hideCitationString])
    {
      aqiCitationLabel4 = [(WAAQIView *)self aqiCitationLabel];
      [aqiCitationLabel4 frame];
      v199 = v198;
      v201 = v200;

      [(WAAQIView *)self bounds];
      [(WAAQIView *)self rtlAdjustFrame:v67 inBounds:MaxY + 8.0, v199, v201, v202, v203, v204, v205];
      v207 = v206;
      v209 = v208;
      v211 = v210;
      v213 = v212;
      aqiCitationLabel5 = [(WAAQIView *)self aqiCitationLabel];
      [aqiCitationLabel5 setFrame:{v207, v209, v211, v213}];
    }
  }
}

- (void)layoutForModeWithoutScale
{
  [(WAAQIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  aqiLabel = [(WAAQIView *)self aqiLabel];
  [aqiLabel setFrame:{v4, v6, v8, v10}];

  aqiLabel2 = [(WAAQIView *)self aqiLabel];
  [aqiLabel2 sizeToFit];

  aqiLabel3 = [(WAAQIView *)self aqiLabel];
  [aqiLabel3 setHidden:0];

  [(WAAQIView *)self bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  aqiAgencyLabel = [(WAAQIView *)self aqiAgencyLabel];
  [aqiAgencyLabel setFrame:{v15, v17, v19, v21}];

  aqiAgencyLabel2 = [(WAAQIView *)self aqiAgencyLabel];
  [aqiAgencyLabel2 sizeToFit];

  aqiAgencyLabel3 = [(WAAQIView *)self aqiAgencyLabel];
  [aqiAgencyLabel3 setHidden:0];

  [(WAAQIView *)self bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  airQualityMetadataGradeLabel = [(WAAQIView *)self airQualityMetadataGradeLabel];
  [airQualityMetadataGradeLabel setFrame:{v26, v28, v30, v32}];

  airQualityMetadataGradeLabel2 = [(WAAQIView *)self airQualityMetadataGradeLabel];
  [airQualityMetadataGradeLabel2 sizeToFit];

  airQualityMetadataGradeLabel3 = [(WAAQIView *)self airQualityMetadataGradeLabel];
  [airQualityMetadataGradeLabel3 setHidden:0];

  if (![(WAAQIView *)self hideRecommendationString])
  {
    [(WAAQIView *)self bounds];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    airQualityRecommendationLabel = [(WAAQIView *)self airQualityRecommendationLabel];
    [airQualityRecommendationLabel setFrame:{v37, v39, v41, v43}];

    airQualityRecommendationLabel2 = [(WAAQIView *)self airQualityRecommendationLabel];
    [airQualityRecommendationLabel2 sizeToFit];

    airQualityRecommendationLabel3 = [(WAAQIView *)self airQualityRecommendationLabel];
    [airQualityRecommendationLabel3 setHidden:0];
  }

  if (![(WAAQIView *)self hideCitationString])
  {
    [(WAAQIView *)self bounds];
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    aqiCitationLabel = [(WAAQIView *)self aqiCitationLabel];
    [aqiCitationLabel setFrame:{v48, v50, v52, v54}];

    aqiCitationLabel2 = [(WAAQIView *)self aqiCitationLabel];
    [aqiCitationLabel2 sizeToFit];

    aqiCitationLabel3 = [(WAAQIView *)self aqiCitationLabel];
    [aqiCitationLabel3 setHidden:0];
  }

  aqiLabel4 = [(WAAQIView *)self aqiLabel];
  [aqiLabel4 frame];
  v60 = v59;
  v62 = v61;

  v63 = *MEMORY[0x277CBF348];
  [(WAAQIView *)self bounds];
  [(WAAQIView *)self rtlAdjustFrame:v63 inBounds:6.0, v60, v62, v64, v65, v66, v67];
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  aqiLabel5 = [(WAAQIView *)self aqiLabel];
  [aqiLabel5 setFrame:{v69, v71, v73, v75}];

  aqiAgencyLabel4 = [(WAAQIView *)self aqiAgencyLabel];
  [aqiAgencyLabel4 frame];
  v79 = v78;
  v81 = v80;

  [(WAAQIView *)self bounds];
  MaxX = CGRectGetMaxX(v172);
  aqiAgencyLabel5 = [(WAAQIView *)self aqiAgencyLabel];
  [aqiAgencyLabel5 frame];
  v85 = MaxX - v84;

  [(WAAQIView *)self bounds];
  [(WAAQIView *)self rtlAdjustFrame:v85 inBounds:6.0, v79, v81, v86, v87, v88, v89];
  v91 = v90;
  v93 = v92;
  v95 = v94;
  v97 = v96;
  aqiAgencyLabel6 = [(WAAQIView *)self aqiAgencyLabel];
  [aqiAgencyLabel6 setFrame:{v91, v93, v95, v97}];

  aqiAgencyLabel7 = [(WAAQIView *)self aqiAgencyLabel];
  attributedText = [aqiAgencyLabel7 attributedText];
  wa_font = [attributedText wa_font];
  [wa_font ascender];
  v103 = v102 + 6.0;

  airQualityMetadataGradeLabel4 = [(WAAQIView *)self airQualityMetadataGradeLabel];
  [airQualityMetadataGradeLabel4 frame];
  v106 = v105;
  v108 = v107;

  v109 = v103 + 1.0;
  [(WAAQIView *)self bounds];
  [(WAAQIView *)self rtlAdjustFrame:v63 inBounds:v109, v106, v108, v110, v111, v112, v113];
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v121 = v120;
  airQualityMetadataGradeLabel5 = [(WAAQIView *)self airQualityMetadataGradeLabel];
  [airQualityMetadataGradeLabel5 setFrame:{v115, v117, v119, v121}];

  airQualityMetadataGradeLabel6 = [(WAAQIView *)self airQualityMetadataGradeLabel];
  attributedText2 = [airQualityMetadataGradeLabel6 attributedText];
  wa_font2 = [attributedText2 wa_font];
  [wa_font2 descender];
  v127 = v126;
  v173.origin.x = v63;
  v173.origin.y = v109;
  v173.size.width = v106;
  v173.size.height = v108;
  v128 = v127 + CGRectGetMaxY(v173);

  if (![(WAAQIView *)self hideRecommendationString])
  {
    airQualityRecommendationLabel4 = [(WAAQIView *)self airQualityRecommendationLabel];
    [airQualityRecommendationLabel4 frame];
    v131 = v130;
    v133 = v132;

    v134 = v128 + 10.0;
    [(WAAQIView *)self bounds];
    [(WAAQIView *)self rtlAdjustFrame:v63 inBounds:v134, v131, v133, v135, v136, v137, v138];
    v140 = v139;
    v142 = v141;
    v144 = v143;
    v146 = v145;
    airQualityRecommendationLabel5 = [(WAAQIView *)self airQualityRecommendationLabel];
    [airQualityRecommendationLabel5 setFrame:{v140, v142, v144, v146}];

    airQualityRecommendationLabel6 = [(WAAQIView *)self airQualityRecommendationLabel];
    attributedText3 = [airQualityRecommendationLabel6 attributedText];
    wa_font3 = [attributedText3 wa_font];
    [wa_font3 descender];
    v152 = v151;
    v174.origin.x = v63;
    v174.origin.y = v134;
    v174.size.width = v131;
    v174.size.height = v133;
    v128 = v152 + CGRectGetMaxY(v174);
  }

  if (![(WAAQIView *)self hideCitationString])
  {
    aqiCitationLabel4 = [(WAAQIView *)self aqiCitationLabel];
    [aqiCitationLabel4 frame];
    v155 = v154;
    v157 = v156;

    [(WAAQIView *)self bounds];
    [(WAAQIView *)self rtlAdjustFrame:v63 inBounds:v128 + 8.0, v155, v157, v158, v159, v160, v161];
    v163 = v162;
    v165 = v164;
    v167 = v166;
    v169 = v168;
    aqiCitationLabel5 = [(WAAQIView *)self aqiCitationLabel];
    [aqiCitationLabel5 setFrame:{v163, v165, v167, v169}];
  }
}

- (id)accessibilityLabel
{
  if ([(WAAQIView *)self layoutMode]- 1 > 2)
  {
    text = 0;
  }

  else
  {
    aqiLabel = [(WAAQIView *)self aqiLabel];
    text = [aqiLabel text];
  }

  return text;
}

- (id)accessibilityValue
{
  layoutMode = [(WAAQIView *)self layoutMode];
  switch(layoutMode)
  {
    case 3uLL:
      goto LABEL_4;
    case 2uLL:
      airQualityMetadataGradeLabel = [(WAAQIView *)self airQualityMetadataGradeLabel];
      text = [airQualityMetadataGradeLabel text];

      aqiAgencyLabel = [(WAAQIView *)self aqiAgencyLabel];
      text2 = [aqiAgencyLabel text];

      aqiCitationLabel = [(WAAQIView *)self aqiCitationLabel];
      attributedText = [aqiCitationLabel attributedText];
      string = [attributedText string];

      v14 = [MEMORY[0x277CBEA60] waaxArrayByIgnoringNilElementsWithCount:{3, text, text2, string}];
      v9 = [v14 componentsJoinedByString:{@", "}];

      goto LABEL_6;
    case 1uLL:
LABEL_4:
      aqiIndexLabel = [(WAAQIView *)self aqiIndexLabel];
      text = [aqiIndexLabel text];

      aqiCategoryLabel = [(WAAQIView *)self aqiCategoryLabel];
      text2 = [aqiCategoryLabel text];

      string = [MEMORY[0x277CBEA60] waaxArrayByIgnoringNilElementsWithCount:{2, text, text2}];
      v9 = [string componentsJoinedByString:{@", "}];
LABEL_6:

      goto LABEL_8;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (WAAQIViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end