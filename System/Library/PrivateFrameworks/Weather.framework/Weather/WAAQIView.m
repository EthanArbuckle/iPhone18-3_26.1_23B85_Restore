@interface WAAQIView
- (BOOL)shouldInsertGlyphImage:(id)a3;
- (CGRect)adjustedFrame:(CGRect)a3 basedOnFont:(id)a4 desiredBaseline:(double)a5;
- (CGRect)rtlAdjustFrame:(CGRect)a3 inBounds:(CGRect)a4;
- (CGSize)sizeForAQIAvailableThatFits:(CGSize)a3;
- (CGSize)sizeForAQITemporarilyUnavailableThatFits:(CGSize)a3;
- (CGSize)sizeForExtendedLayoutWithScaleViewThatFits:(CGSize)a3;
- (CGSize)sizeForLayoutWithoutScaleViewThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (WAAQIViewDelegate)delegate;
- (double)contentMarginFromTop;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)currentScaleCategoryLabelForCity:(id)a3;
- (id)drawableScaleForCity:(id)a3;
- (id)metadataLabelForCity:(id)a3;
- (id)scaleDisplayNameForCity:(id)a3;
- (void)handleTapGesture:(id)a3;
- (void)hideEverything;
- (void)initialize;
- (void)layoutForExtendedModeWithScale;
- (void)layoutForModeAQITemporarilyUnavailable;
- (void)layoutForModeWithoutScale;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setupForLayoutCompactScaleViewOneLinePlatterView:(BOOL)a3;
- (void)setupForLayoutExtendedNoScaleView;
- (void)setupForLayoutExtendedScaleView;
- (void)setupForLayoutTemporarilyUnavailable;
- (void)updateWithCity:(id)a3 layoutMode:(unint64_t)a4;
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

- (void)updateWithCity:(id)a3 layoutMode:(unint64_t)a4
{
  v6 = a3;
  if (![(WAAQIView *)self initialized])
  {
    [(WAAQIView *)self initialize];
  }

  [(WAAQIView *)self prepareForReuse];
  [(WAAQIView *)self setCity:v6];

  [(WAAQIView *)self setLayoutMode:a4];
  v7 = [(WAAQIView *)self city];
  v8 = [v7 aqiDataAvailabilityStatus];

  if (v8 == 2)
  {
    v9 = [(WAAQIView *)self layoutMode];
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        [(WAAQIView *)self setupForLayoutExtendedScaleView];
        goto LABEL_16;
      }

      if (v9 != 3)
      {
        goto LABEL_16;
      }

      v10 = self;
      v11 = 1;
    }

    else
    {
      if (!v9)
      {
        [(WAAQIView *)self setupForLayoutExtendedNoScaleView];
        goto LABEL_16;
      }

      if (v9 != 1)
      {
        goto LABEL_16;
      }

      v10 = self;
      v11 = 0;
    }

    [(WAAQIView *)v10 setupForLayoutCompactScaleViewOneLinePlatterView:v11];
    goto LABEL_16;
  }

  if (v8 == 1)
  {
    [(WAAQIView *)self setupForLayoutTemporarilyUnavailable];
  }

LABEL_16:

  [(WAAQIView *)self setNeedsLayout];
}

- (void)handleTapGesture:(id)a3
{
  v4 = a3;
  v20 = [(WAAQIView *)self aqiCitationLabel];
  [v20 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 locationInView:v20];
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
    v17 = [(WAAQIView *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = [(WAAQIView *)self delegate];
      [v19 aqiViewAttributionLabelTapped:self];
    }
  }
}

- (double)contentMarginFromTop
{
  v3 = [(WAAQIView *)self aqiIndexLabel];
  [v3 _firstBaselineOffsetFromTop];
  v5 = v4;

  v6 = [(WAAQIView *)self aqiIndexLabel];
  v7 = [v6 font];
  [v7 capHeight];
  v9 = v8;

  v10 = [(WAAQIView *)self aqiIndexLabel];
  [v10 frame];
  v12 = v5 - v9 + v11;

  return v12;
}

- (id)scaleDisplayNameForCity:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WALogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 airQualityScale];
    v7 = [v6 displayName];
    v8 = [(WAAQIView *)self city];
    v13 = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_DEFAULT, "Using displayName: %@ for city: %@", &v13, 0x16u);
  }

  v9 = [v4 airQualityScale];
  v10 = [v9 displayName];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)metadataLabelForCity:(id)a3
{
  v3 = [a3 airQualityScale];
  v4 = [v3 displayLabel];
  v5 = [v4 localizedUppercaseString];

  return v5;
}

- (id)drawableScaleForCity:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [a3 airQualityScale];
  v5 = WALogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(WAAQIView *)self city];
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_272ACF000, v5, OS_LOG_TYPE_DEFAULT, "Using scale: %@ for gradient for city: %@", &v10, 0x16u);
  }

  v7 = [WAAQIScale scaleFromFoundationScale:v4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)currentScaleCategoryLabelForCity:(id)a3
{
  v3 = a3;
  v4 = [v3 airQualityScale];

  if (v4)
  {
    v5 = [v3 airQualityCurrentScaleCategory];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 categoryName];
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

  v7 = 0;
LABEL_10:

  return v7;
}

- (CGRect)adjustedFrame:(CGRect)a3 basedOnFont:(id)a4 desiredBaseline:(double)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [a4 ascender];
  v11 = y + a5 - (y + v10);
  v12 = x;
  v13 = width;
  v14 = height;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v11;
  result.origin.x = v12;
  return result;
}

- (CGRect)rtlAdjustFrame:(CGRect)a3 inBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  MinY = a3.origin.y;
  v11 = a3.origin.x;
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
  v3 = [(WAAQIView *)self aqiLabel];
  [v3 setAttributedText:0];

  v4 = [(WAAQIView *)self aqiIndexLabel];
  [v4 setAttributedText:0];

  v5 = [(WAAQIView *)self aqiAgencyLabel];
  [v5 setAttributedText:0];

  v6 = [(WAAQIView *)self aqiCategoryLabel];
  [v6 setAttributedText:0];

  v7 = [(WAAQIView *)self airQualityMetadataGradeLabel];
  [v7 setAttributedText:0];

  v8 = [(WAAQIView *)self airQualityRecommendationLabel];
  [v8 setAttributedText:0];

  v9 = [(WAAQIView *)self aqiCitationLabel];
  [v9 setAttributedText:0];

  v10 = [(WAAQIView *)self aqiLabel];
  [v10 setNumberOfLines:0];

  v11 = [(WAAQIView *)self aqiIndexLabel];
  [v11 setNumberOfLines:0];

  v12 = [(WAAQIView *)self aqiAgencyLabel];
  [v12 setNumberOfLines:0];

  v13 = [(WAAQIView *)self aqiCategoryLabel];
  [v13 setNumberOfLines:0];

  v14 = [(WAAQIView *)self airQualityMetadataGradeLabel];
  [v14 setNumberOfLines:0];

  v15 = [(WAAQIView *)self airQualityRecommendationLabel];
  [v15 setNumberOfLines:0];

  v16 = [(WAAQIView *)self aqiCitationLabel];
  [v16 setNumberOfLines:0];

  [(WAAQIView *)self setHideCitationString:0];

  [(WAAQIView *)self setForceHideThisEntireView:0];
}

- (BOOL)shouldInsertGlyphImage:(id)a3
{
  v3 = a3;
  v4 = [v3 airQualityAttribution];
  v5 = [v4 dataOrigination];

  if (v5 > 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = [v3 airQualityLearnMoreURL];

    v7 = v6 != 0;
  }

  return v7;
}

- (void)setupForLayoutTemporarilyUnavailable
{
  v21 = [(WAAQIView *)self city];
  v3 = [(WAAQIView *)self styler];
  v4 = [(WAAQIView *)self metadataLabelForCity:v21];
  v5 = [v3 styledAQIMetadataSourceText:v4];
  v6 = [(WAAQIView *)self aqiLabel];
  [v6 setAttributedText:v5];

  v7 = [(WAAQIView *)self styler];
  v8 = [(WAAQIView *)self scaleDisplayNameForCity:v21];
  v9 = [v7 styledAQIMetadataSourceText:v8];
  v10 = [(WAAQIView *)self aqiAgencyLabel];
  [v10 setAttributedText:v9];

  v11 = [(WAAQIView *)self styler];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"AQI_VIEW_STATUS_UNAVAILABLE" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
  v14 = [v11 styledAQIMetadataGradeText:v13];
  v15 = [(WAAQIView *)self aqiCategoryLabel];
  [v15 setAttributedText:v14];

  v16 = [(WAAQIView *)self styler];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"AQI_VIEW_RECOMMENDATION_STATUS_UNAVAILABLE" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
  v19 = [v16 styledAQIMetadataCitationText:v18 attribution:0 shouldInsertGlyph:0];
  v20 = [(WAAQIView *)self aqiCitationLabel];
  [v20 setAttributedText:v19];
}

- (void)setupForLayoutCompactScaleViewOneLinePlatterView:(BOOL)a3
{
  v3 = a3;
  v30 = [(WAAQIView *)self city];
  v5 = [(WAAQIView *)self drawableScaleForCity:?];
  if (v5)
  {
    v6 = [(WAAQIView *)self aqiScaleView];
    [v6 setScale:v5];

    v7 = !WAIsShortDevice();
    if (v3)
    {
      v8 = 3;
    }

    else
    {
      v8 = 1;
    }

    v9 = [(WAAQIView *)self styler];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"AQI_SHORT_STRING" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
    v12 = [v9 styledAQIText:v11 mode:{v8, v7}];
    v13 = [(WAAQIView *)self aqiLabel];
    [v13 setAttributedText:v12];

    v14 = [(WAAQIView *)self aqiLabel];
    [v14 setNumberOfLines:1];

    v15 = WANumberFormatterForDisplayingAQI();
    v16 = [v30 airQualityIdx];
    v17 = [v15 stringFromNumber:v16];

    if (([v30 airQualityScaleIsNumerical] & 1) == 0)
    {

      v17 = &stru_2882270E8;
    }

    v18 = [(WAAQIView *)self currentScaleCategoryLabelForCity:v30];
    v19 = [v30 airQualityIdx];
    v20 = [v19 unsignedIntegerValue];
    v21 = [(WAAQIView *)self aqiScaleView];
    [v21 setAQI:v20];

    v22 = [(WAAQIView *)self styler];
    v23 = [v22 styledAQILocalizedIndexText:v17 mode:{v8, v7}];
    v24 = [(WAAQIView *)self aqiIndexLabel];
    [v24 setAttributedText:v23];

    v25 = [(WAAQIView *)self aqiIndexLabel];
    [v25 setNumberOfLines:1];

    v26 = [(WAAQIView *)self styler];
    v27 = [v26 styledAQICategoryText:v18 mode:{v8, v7}];
    v28 = [(WAAQIView *)self aqiCategoryLabel];
    [v28 setAttributedText:v27];

    v29 = [(WAAQIView *)self aqiCategoryLabel];
    [v29 setNumberOfLines:1];
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
  v38 = [(WAAQIView *)self city];
  v3 = [(WAAQIView *)self drawableScaleForCity:?];
  if (v3)
  {
    v4 = [(WAAQIView *)self aqiScaleView];
    [v4 setScale:v3];

    v5 = [(WAAQIView *)self styler];
    v6 = [(WAAQIView *)self metadataLabelForCity:v38];
    v7 = [v5 styledAQIMetadataSourceText:v6];
    v8 = [(WAAQIView *)self aqiLabel];
    [v8 setAttributedText:v7];

    v9 = [(WAAQIView *)self styler];
    v10 = [(WAAQIView *)self scaleDisplayNameForCity:v38];
    v11 = [v9 styledAQIMetadataSourceText:v10];
    v12 = [(WAAQIView *)self aqiAgencyLabel];
    [v12 setAttributedText:v11];

    v13 = [v38 airQualityIdx];
    v14 = [v13 unsignedIntegerValue];

    v15 = [(WAAQIView *)self aqiScaleView];
    [v15 setAQI:v14];

    v16 = [(WAAQIView *)self currentScaleCategoryLabelForCity:v38];
    if ([v38 airQualityScaleIsNumerical])
    {
      v17 = WANumberFormatterForDisplayingAQI();
      v18 = [v38 airQualityIdx];
      v19 = [v17 stringFromNumber:v18];

      v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v21 = [v20 localizedStringForKey:@"AQI_INDEX_STRING" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];

      v22 = [MEMORY[0x277CCACA8] stringWithFormat:v21, v19, v16];
    }

    else
    {
      v22 = v16;
    }

    v23 = [(WAAQIView *)self styler];
    v24 = [v23 styledAQIMetadataGradeText:v22];
    v25 = [(WAAQIView *)self airQualityMetadataGradeLabel];
    [v25 setAttributedText:v24];

    v26 = [(WAAQIView *)self city];
    v27 = [v26 airQualityAttribution];
    LOBYTE(v25) = [v27 isValid];

    if (v25)
    {
      v28 = [(WAAQIView *)self attributionStringBuilder];
      v29 = [(WAAQIView *)self city];
      v30 = [v28 buildAttributionStringFromCity:v29];

      v31 = [(WAAQIView *)self city];
      v32 = [(WAAQIView *)self shouldInsertGlyphImage:v31];

      v33 = [(WAAQIView *)self styler];
      v34 = [(WAAQIView *)self city];
      v35 = [v34 airQualityAttribution];
      v36 = [v33 styledAQIMetadataCitationText:v30 attribution:v35 shouldInsertGlyph:v32];
      v37 = [(WAAQIView *)self aqiCitationLabel];
      [v37 setAttributedText:v36];
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
  v39 = [(WAAQIView *)self city];
  v3 = [v39 airQualityScale];

  if (v3)
  {
    v4 = [(WAAQIView *)self styler];
    v5 = [(WAAQIView *)self metadataLabelForCity:v39];
    v6 = [v4 styledAQIMetadataSourceText:v5];
    v7 = [(WAAQIView *)self aqiLabel];
    [v7 setAttributedText:v6];

    v8 = [(WAAQIView *)self styler];
    v9 = [(WAAQIView *)self scaleDisplayNameForCity:v39];
    v10 = [v8 styledAQIMetadataSourceText:v9];
    v11 = [(WAAQIView *)self aqiAgencyLabel];
    [v11 setAttributedText:v10];

    v12 = [(WAAQIView *)self currentScaleCategoryLabelForCity:v39];
    if ([v39 airQualityScaleIsNumerical])
    {
      v13 = WANumberFormatterForDisplayingAQI();
      v14 = [v39 airQualityIdx];
      v15 = [v13 stringFromNumber:v14];

      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = [v16 localizedStringForKey:@"AQI_INDEX_STRING" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];

      v18 = [MEMORY[0x277CCACA8] stringWithFormat:v17, v15, v12];
    }

    else
    {
      v18 = v12;
    }

    v19 = [(WAAQIView *)self styler];
    v20 = [v19 styledAQIMetadataGradeText:v18];
    v21 = [(WAAQIView *)self airQualityMetadataGradeLabel];
    [v21 setAttributedText:v20];

    v22 = [v39 airQualityRecommendation];
    if (v22 && ![v39 airQualityForceHideRecommendation])
    {
      v23 = [(WAAQIView *)self styler];
      v24 = [v23 styledAQIMetadataRecommendationText:v22];
      v25 = [(WAAQIView *)self airQualityRecommendationLabel];
      [v25 setAttributedText:v24];
    }

    else
    {
      [(WAAQIView *)self setHideRecommendationString:1];
    }

    v26 = [(WAAQIView *)self city];
    v27 = [v26 airQualityAttribution];
    v28 = [v27 isValid];

    if (v28)
    {
      v29 = [(WAAQIView *)self attributionStringBuilder];
      v30 = [(WAAQIView *)self city];
      v31 = [v29 buildAttributionStringFromCity:v30];

      v32 = [(WAAQIView *)self city];
      v33 = [(WAAQIView *)self shouldInsertGlyphImage:v32];

      v34 = [(WAAQIView *)self styler];
      v35 = [(WAAQIView *)self city];
      v36 = [v35 airQualityAttribution];
      v37 = [v34 styledAQIMetadataCitationText:v31 attribution:v36 shouldInsertGlyph:v33];
      v38 = [(WAAQIView *)self aqiCitationLabel];
      [v38 setAttributedText:v37];
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(WAAQIView *)self city];
  v7 = [v6 aqiDataAvailabilityStatus];

  if (v7 == 2)
  {
    [(WAAQIView *)self sizeForAQIAvailableThatFits:width, height];
  }

  else if (v7 == 1)
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

- (CGSize)sizeForAQIAvailableThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = *MEMORY[0x277CBF3A8];
  v7 = *(MEMORY[0x277CBF3A8] + 8);
  v8 = [(WAAQIView *)self layoutMode];
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      [(WAAQIView *)self sizeForExtendedLayoutWithScaleViewThatFits:width, height];
      goto LABEL_11;
    }

    if (v8 == 3)
    {
      v9 = self;
      v10 = width;
      v11 = height;
      v12 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    if (!v8)
    {
      [(WAAQIView *)self sizeForLayoutWithoutScaleViewThatFits:width, height];
      goto LABEL_11;
    }

    if (v8 == 1)
    {
      v9 = self;
      v10 = width;
      v11 = height;
      v12 = 0;
LABEL_8:
      [(WAAQIView *)v9 sizeForCompactOneLineLayoutWithScaleViewThatFits:v12 platterView:v10, v11];
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

- (CGSize)sizeForAQITemporarilyUnavailableThatFits:(CGSize)a3
{
  width = a3.width;
  [(WAAQIView *)self bounds:a3.width];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(WAAQIView *)self aqiLabel];
  [v13 setFrame:{v6, v8, v10, v12}];

  [(WAAQIView *)self bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [(WAAQIView *)self aqiAgencyLabel];
  [v22 setFrame:{v15, v17, v19, v21}];

  [(WAAQIView *)self bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [(WAAQIView *)self aqiCategoryLabel];
  [v31 setFrame:{v24, v26, v28, v30}];

  [(WAAQIView *)self bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = [(WAAQIView *)self aqiCitationLabel];
  [v40 setFrame:{v33, v35, v37, v39}];

  v41 = [(WAAQIView *)self aqiLabel];
  [v41 sizeToFit];

  v42 = [(WAAQIView *)self aqiAgencyLabel];
  [v42 sizeToFit];

  v43 = [(WAAQIView *)self aqiCategoryLabel];
  [v43 sizeToFit];

  v44 = [(WAAQIView *)self aqiCitationLabel];
  [v44 sizeToFit];

  v45 = [(WAAQIView *)self aqiLabel];
  v46 = [v45 attributedText];
  v47 = [v46 wa_font];
  [v47 ascender];
  v49 = v48;

  v50 = [(WAAQIView *)self aqiAgencyLabel];
  v51 = [v50 attributedText];
  v52 = [v51 wa_font];
  [v52 ascender];
  v54 = v53;

  if (v49 >= v54)
  {
    v54 = v49;
  }

  v55 = [(WAAQIView *)self aqiCategoryLabel];
  v56 = [v55 attributedText];
  v57 = [v56 wa_font];
  [v57 descender];
  v59 = v58;
  v60 = [(WAAQIView *)self aqiCategoryLabel];
  [v60 frame];
  v62 = v59 + v61;

  v63 = [(WAAQIView *)self aqiCitationLabel];
  v64 = [v63 attributedText];
  v65 = [v64 wa_font];
  [v65 descender];
  v67 = v66;
  v68 = [(WAAQIView *)self aqiCitationLabel];
  [v68 frame];
  v70 = v67 + v69;

  v71 = v54 + 6.0 + 1.0 + v62 + v70 + 9.0;
  v72 = width;
  result.height = v71;
  result.width = v72;
  return result;
}

- (CGSize)sizeForExtendedLayoutWithScaleViewThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [(WAAQIView *)self forceHideThisEntireView:a3.width];
  v6 = 0.0;
  v7 = 0.0;
  if (!v5)
  {
    [(WAAQIView *)self bounds:0.0];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(WAAQIView *)self aqiLabel];
    [v16 setFrame:{v9, v11, v13, v15}];

    [(WAAQIView *)self bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = [(WAAQIView *)self aqiAgencyLabel];
    [v25 setFrame:{v18, v20, v22, v24}];

    [(WAAQIView *)self bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = [(WAAQIView *)self airQualityMetadataGradeLabel];
    [v34 setFrame:{v27, v29, v31, v33}];

    [(WAAQIView *)self bounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = [(WAAQIView *)self airQualityRecommendationLabel];
    [v43 setFrame:{v36, v38, v40, v42}];

    [(WAAQIView *)self bounds];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v52 = [(WAAQIView *)self aqiCitationLabel];
    [v52 setFrame:{v45, v47, v49, v51}];

    v53 = [(WAAQIView *)self aqiLabel];
    [v53 sizeToFit];

    v54 = [(WAAQIView *)self aqiAgencyLabel];
    [v54 sizeToFit];

    v55 = [(WAAQIView *)self airQualityMetadataGradeLabel];
    [v55 sizeToFit];

    v56 = [(WAAQIView *)self airQualityRecommendationLabel];
    [v56 sizeToFit];

    v57 = [(WAAQIView *)self aqiCitationLabel];
    [v57 sizeToFit];

    v58 = [(WAAQIView *)self hideRecommendationString];
    v59 = 9.0;
    v60 = 0.0;
    if (v58)
    {
      v59 = 0.0;
    }

    v108 = v59;
    v61 = [(WAAQIView *)self hideCitationString];
    v62 = 8.0;
    if (v61)
    {
      v62 = 0.0;
    }

    v63 = [(WAAQIView *)self aqiLabel];
    v64 = [v63 attributedText];
    v65 = [v64 wa_font];
    [v65 ascender];
    v67 = v66;

    v68 = [(WAAQIView *)self aqiAgencyLabel];
    v69 = [v68 attributedText];
    v70 = [v69 wa_font];
    [v70 ascender];
    v72 = v71;

    if (v67 >= v72)
    {
      v73 = v67;
    }

    else
    {
      v73 = v72;
    }

    v74 = [(WAAQIView *)self airQualityMetadataGradeLabel];
    v75 = [v74 attributedText];
    v76 = [v75 wa_font];
    [v76 descender];
    v78 = v77;
    v79 = [(WAAQIView *)self airQualityMetadataGradeLabel];
    [v79 frame];
    v81 = v78 + v80;

    v82 = [(WAAQIView *)self aqiScaleView];
    [v82 intrinsicContentSize];
    v84 = v83;

    v85 = [(WAAQIView *)self airQualityRecommendationLabel];
    v86 = [v85 attributedText];
    v87 = [v86 wa_font];
    [v87 descender];
    v89 = v88;
    v90 = [(WAAQIView *)self airQualityRecommendationLabel];
    [v90 frame];
    v92 = v89 + v91;

    if (![(WAAQIView *)self hideCitationString])
    {
      v93 = [(WAAQIView *)self aqiCitationLabel];
      v94 = [v93 attributedText];
      v95 = [v94 wa_font];
      [v95 descender];
      v97 = v96;
      v98 = [(WAAQIView *)self aqiCitationLabel];
      [v98 frame];
      v60 = v97 + v99;
    }

    v100 = [(WAAQIView *)self aqiLabel];
    [v100 frame];
    v102 = v101;
    v103 = [(WAAQIView *)self aqiAgencyLabel];
    [v103 frame];
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

- (CGSize)sizeForLayoutWithoutScaleViewThatFits:(CGSize)a3
{
  width = a3.width;
  [(WAAQIView *)self bounds:a3.width];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(WAAQIView *)self aqiLabel];
  [v12 setFrame:{v5, v7, v9, v11}];

  [(WAAQIView *)self bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(WAAQIView *)self aqiAgencyLabel];
  [v21 setFrame:{v14, v16, v18, v20}];

  [(WAAQIView *)self bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [(WAAQIView *)self airQualityMetadataGradeLabel];
  [v30 setFrame:{v23, v25, v27, v29}];

  [(WAAQIView *)self bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = [(WAAQIView *)self airQualityRecommendationLabel];
  [v39 setFrame:{v32, v34, v36, v38}];

  [(WAAQIView *)self bounds];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = [(WAAQIView *)self aqiCitationLabel];
  [v48 setFrame:{v41, v43, v45, v47}];

  v49 = [(WAAQIView *)self aqiLabel];
  [v49 sizeToFit];

  v50 = [(WAAQIView *)self aqiAgencyLabel];
  [v50 sizeToFit];

  v51 = [(WAAQIView *)self airQualityMetadataGradeLabel];
  [v51 sizeToFit];

  v52 = [(WAAQIView *)self airQualityRecommendationLabel];
  [v52 sizeToFit];

  v53 = [(WAAQIView *)self aqiCitationLabel];
  [v53 sizeToFit];

  v54 = [(WAAQIView *)self hideCitationString];
  v55 = [(WAAQIView *)self aqiLabel];
  v56 = [v55 attributedText];
  v57 = [v56 wa_font];
  [v57 ascender];
  v59 = v58;

  v60 = [(WAAQIView *)self aqiAgencyLabel];
  v61 = [v60 attributedText];
  v62 = [v61 wa_font];
  [v62 ascender];
  v64 = v63;

  v65 = [(WAAQIView *)self airQualityMetadataGradeLabel];
  v66 = [v65 attributedText];
  v67 = [v66 wa_font];
  [v67 descender];
  v69 = v68;
  v70 = [(WAAQIView *)self airQualityMetadataGradeLabel];
  [v70 frame];
  v72 = v71;

  v73 = [(WAAQIView *)self airQualityRecommendationLabel];
  v74 = [v73 attributedText];
  v75 = [v74 wa_font];
  [v75 descender];
  v77 = v76;
  v78 = [(WAAQIView *)self airQualityRecommendationLabel];
  [v78 frame];
  v80 = v79;

  v81 = 0.0;
  if (![(WAAQIView *)self hideCitationString])
  {
    v82 = [(WAAQIView *)self aqiCitationLabel];
    v83 = [v82 attributedText];
    v84 = [v83 wa_font];
    [v84 descender];
    v86 = v85;
    v87 = [(WAAQIView *)self aqiCitationLabel];
    [v87 frame];
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
  if (v54)
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
  v3 = [(WAAQIView *)self aqiLabel];
  [v3 setHidden:1];

  v4 = [(WAAQIView *)self aqiIndexLabel];
  [v4 setHidden:1];

  v5 = [(WAAQIView *)self aqiAgencyLabel];
  [v5 setHidden:1];

  v6 = [(WAAQIView *)self dash];
  [v6 setHidden:1];

  v7 = [(WAAQIView *)self aqiScaleView];
  [v7 setHidden:1];

  v8 = [(WAAQIView *)self aqiCategoryLabel];
  [v8 setHidden:1];

  v9 = [(WAAQIView *)self aqiCitationLabel];
  [v9 setHidden:1];

  v10 = [(WAAQIView *)self airQualityMetadataGradeLabel];
  [v10 setHidden:1];

  v11 = [(WAAQIView *)self airQualityRecommendationLabel];
  [v11 setHidden:1];
}

- (void)layoutSubviews
{
  [(WAAQIView *)self hideEverything];
  v3 = [(WAAQIView *)self city];
  v4 = [v3 aqiDataAvailabilityStatus];

  if (v4 == 1)
  {

    [(WAAQIView *)self layoutForModeAQITemporarilyUnavailable];
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v5 = [(WAAQIView *)self layoutMode];
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        if (v5 != 3)
        {
          return;
        }

        v6 = self;
        v7 = 1;
        goto LABEL_13;
      }

      [(WAAQIView *)self layoutForExtendedModeWithScale];
    }

    else
    {
      if (v5)
      {
        if (v5 != 1)
        {
          return;
        }

        v6 = self;
        v7 = 0;
LABEL_13:

        [(WAAQIView *)v6 layoutForCompactModeWithScaleInPlatterView:v7];
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
  v11 = [(WAAQIView *)self aqiLabel];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(WAAQIView *)self aqiLabel];
  [v12 sizeToFit];

  v13 = [(WAAQIView *)self aqiLabel];
  [v13 setHidden:0];

  [(WAAQIView *)self bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [(WAAQIView *)self aqiAgencyLabel];
  [v22 setFrame:{v15, v17, v19, v21}];

  v23 = [(WAAQIView *)self aqiAgencyLabel];
  [v23 sizeToFit];

  v24 = [(WAAQIView *)self aqiAgencyLabel];
  [v24 setHidden:0];

  [(WAAQIView *)self bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = [(WAAQIView *)self aqiCategoryLabel];
  [v33 setFrame:{v26, v28, v30, v32}];

  v34 = [(WAAQIView *)self aqiCategoryLabel];
  [v34 sizeToFit];

  v35 = [(WAAQIView *)self aqiCategoryLabel];
  [v35 setHidden:0];

  [(WAAQIView *)self bounds];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = [(WAAQIView *)self aqiCitationLabel];
  [v44 setFrame:{v37, v39, v41, v43}];

  v45 = [(WAAQIView *)self aqiCitationLabel];
  [v45 sizeToFit];

  v46 = [(WAAQIView *)self aqiCitationLabel];
  [v46 setHidden:0];

  v47 = [(WAAQIView *)self aqiLabel];
  [v47 frame];
  v49 = v48;
  v51 = v50;

  v52 = *MEMORY[0x277CBF348];
  [(WAAQIView *)self bounds];
  [(WAAQIView *)self rtlAdjustFrame:v52 inBounds:6.0, v49, v51, v53, v54, v55, v56];
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = [(WAAQIView *)self aqiLabel];
  [v65 setFrame:{v58, v60, v62, v64}];

  v66 = [(WAAQIView *)self aqiAgencyLabel];
  [v66 frame];
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
  v84 = [(WAAQIView *)self aqiAgencyLabel];
  [v84 setFrame:{v77, v79, v81, v83}];

  v85 = [(WAAQIView *)self aqiLabel];
  v86 = [v85 attributedText];
  v87 = [v86 wa_font];
  [v87 ascender];
  v89 = v88;

  v90 = [(WAAQIView *)self aqiCategoryLabel];
  [v90 frame];
  v92 = v91;
  v94 = v93;

  v95 = v89 + 1.0;
  [(WAAQIView *)self bounds];
  [(WAAQIView *)self rtlAdjustFrame:v52 inBounds:v95, v92, v94, v96, v97, v98, v99];
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v107 = v106;
  v108 = [(WAAQIView *)self aqiCategoryLabel];
  [v108 setFrame:{v101, v103, v105, v107}];

  v109 = [(WAAQIView *)self aqiCategoryLabel];
  v110 = [v109 attributedText];
  v111 = [v110 wa_font];
  [v111 descender];
  v113 = v112;
  v135.origin.x = v52;
  v135.origin.y = v95;
  v135.size.width = v92;
  v135.size.height = v94;
  v114 = v113 + CGRectGetMaxY(v135);

  v115 = [(WAAQIView *)self aqiCitationLabel];
  [v115 frame];
  v117 = v116;
  v119 = v118;

  [(WAAQIView *)self bounds];
  [(WAAQIView *)self rtlAdjustFrame:v52 inBounds:v114 + 1.0, v117, v119, v120, v121, v122, v123];
  v125 = v124;
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v132 = [(WAAQIView *)self aqiCitationLabel];
  [v132 setFrame:{v125, v127, v129, v131}];
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
    v11 = [(WAAQIView *)self aqiLabel];
    [v11 setFrame:{v4, v6, v8, v10}];

    v12 = [(WAAQIView *)self aqiLabel];
    [v12 sizeToFit];

    v13 = [(WAAQIView *)self aqiLabel];
    [v13 setHidden:0];

    [(WAAQIView *)self bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [(WAAQIView *)self aqiAgencyLabel];
    [v22 setFrame:{v15, v17, v19, v21}];

    v23 = [(WAAQIView *)self aqiAgencyLabel];
    [v23 sizeToFit];

    v24 = [(WAAQIView *)self aqiAgencyLabel];
    [v24 setHidden:0];

    [(WAAQIView *)self bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [(WAAQIView *)self airQualityMetadataGradeLabel];
    [v33 setFrame:{v26, v28, v30, v32}];

    v34 = [(WAAQIView *)self airQualityMetadataGradeLabel];
    [v34 sizeToFit];

    v35 = [(WAAQIView *)self airQualityMetadataGradeLabel];
    [v35 setHidden:0];

    v36 = [(WAAQIView *)self aqiScaleView];
    [v36 setHidden:0];

    if (![(WAAQIView *)self hideRecommendationString])
    {
      [(WAAQIView *)self bounds];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v45 = [(WAAQIView *)self airQualityRecommendationLabel];
      [v45 setFrame:{v38, v40, v42, v44}];

      v46 = [(WAAQIView *)self airQualityRecommendationLabel];
      [v46 sizeToFit];

      v47 = [(WAAQIView *)self airQualityRecommendationLabel];
      [v47 setHidden:0];
    }

    if (![(WAAQIView *)self hideCitationString])
    {
      [(WAAQIView *)self bounds];
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v55 = v54;
      v56 = [(WAAQIView *)self aqiCitationLabel];
      [v56 setFrame:{v49, v51, v53, v55}];

      v57 = [(WAAQIView *)self aqiCitationLabel];
      [v57 sizeToFit];

      v58 = [(WAAQIView *)self aqiCitationLabel];
      [v58 setHidden:0];
    }

    v59 = [(WAAQIView *)self aqiScaleView];
    [v59 intrinsicContentSize];
    v215 = v60;

    [(WAAQIView *)self frame];
    v214 = v61;
    v62 = [(WAAQIView *)self aqiLabel];
    [v62 frame];
    v64 = v63;
    v66 = v65;

    v67 = *MEMORY[0x277CBF348];
    [(WAAQIView *)self bounds];
    [(WAAQIView *)self rtlAdjustFrame:v67 inBounds:6.0, v64, v66, v68, v69, v70, v71];
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = [(WAAQIView *)self aqiLabel];
    [v80 setFrame:{v73, v75, v77, v79}];

    v81 = [(WAAQIView *)self aqiAgencyLabel];
    [v81 frame];
    v83 = v82;
    v85 = v84;

    v86 = [(WAAQIView *)self aqiLabel];
    [v86 frame];
    v88 = v87;
    v89 = [(WAAQIView *)self aqiAgencyLabel];
    [v89 frame];
    v91 = v88 + v90 + 10.0;
    [(WAAQIView *)self bounds];
    v93 = v92;

    if (v91 >= v93)
    {
      v113 = [(WAAQIView *)self aqiLabel];
      v114 = [v113 attributedText];
      v115 = [v114 wa_font];
      [v115 ascender];
      v117 = v116 + 6.0;

      [(WAAQIView *)self bounds];
      [(WAAQIView *)self rtlAdjustFrame:v67 inBounds:v117 + 1.0, v83, v85, v118, v119, v120, v121];
      v123 = v122;
      v125 = v124;
      v127 = v126;
      v129 = v128;
      v130 = [(WAAQIView *)self aqiAgencyLabel];
      [v130 setFrame:{v123, v125, v127, v129}];

      v108 = [(WAAQIView *)self aqiAgencyLabel];
      v109 = [v108 attributedText];
      v110 = [v109 wa_font];
      [v110 ascender];
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
      v107 = [(WAAQIView *)self aqiAgencyLabel];
      [v107 setFrame:{v100, v102, v104, v106}];

      v108 = [(WAAQIView *)self aqiAgencyLabel];
      v109 = [v108 attributedText];
      v110 = [v109 wa_font];
      [v110 ascender];
      v112 = v111 + 6.0;
    }

    v132 = [(WAAQIView *)self airQualityMetadataGradeLabel];
    [v132 frame];
    v134 = v133;
    v136 = v135;

    v137 = v112 + 1.0;
    [(WAAQIView *)self bounds];
    [(WAAQIView *)self rtlAdjustFrame:v67 inBounds:v112 + 1.0, v134, v136, v138, v139, v140, v141];
    v143 = v142;
    v145 = v144;
    v147 = v146;
    v149 = v148;
    v150 = [(WAAQIView *)self airQualityMetadataGradeLabel];
    [v150 setFrame:{v143, v145, v147, v149}];

    v151 = [(WAAQIView *)self airQualityMetadataGradeLabel];
    v152 = [v151 attributedText];
    v153 = [v152 wa_font];
    [v153 descender];
    v155 = v154;
    v219.origin.x = v67;
    v219.origin.y = v137;
    v219.size.width = v134;
    v219.size.height = v136;
    v156 = v155 + CGRectGetMaxY(v219);

    v157 = [(WAAQIView *)self aqiScaleView];
    [v157 frame];

    v158 = v156 + 10.0;
    [(WAAQIView *)self bounds];
    [(WAAQIView *)self rtlAdjustFrame:v67 inBounds:v158, v214, *&v215, v159, v160, v161, v162];
    v164 = v163;
    v166 = v165;
    v168 = v167;
    v170 = v169;
    v171 = [(WAAQIView *)self aqiScaleView];
    [v171 setFrame:{v164, v166, v168, v170}];

    v220.origin.x = v67;
    v220.origin.y = v158;
    v220.size.width = v214;
    *&v220.size.height = v215;
    MaxY = CGRectGetMaxY(v220);
    if (![(WAAQIView *)self hideRecommendationString])
    {
      v173 = [(WAAQIView *)self airQualityRecommendationLabel];
      [v173 frame];
      v175 = v174;
      v177 = v176;

      v178 = MaxY + 10.0;
      [(WAAQIView *)self bounds];
      [(WAAQIView *)self rtlAdjustFrame:v67 inBounds:v178, v175, v177, v179, v180, v181, v182];
      v184 = v183;
      v186 = v185;
      v188 = v187;
      v190 = v189;
      v191 = [(WAAQIView *)self airQualityRecommendationLabel];
      [v191 setFrame:{v184, v186, v188, v190}];

      v192 = [(WAAQIView *)self airQualityRecommendationLabel];
      v193 = [v192 attributedText];
      v194 = [v193 wa_font];
      [v194 descender];
      v196 = v195;
      v221.origin.x = v67;
      v221.origin.y = v178;
      v221.size.width = v175;
      v221.size.height = v177;
      MaxY = v196 + CGRectGetMaxY(v221);
    }

    if (![(WAAQIView *)self hideCitationString])
    {
      v197 = [(WAAQIView *)self aqiCitationLabel];
      [v197 frame];
      v199 = v198;
      v201 = v200;

      [(WAAQIView *)self bounds];
      [(WAAQIView *)self rtlAdjustFrame:v67 inBounds:MaxY + 8.0, v199, v201, v202, v203, v204, v205];
      v207 = v206;
      v209 = v208;
      v211 = v210;
      v213 = v212;
      v216 = [(WAAQIView *)self aqiCitationLabel];
      [v216 setFrame:{v207, v209, v211, v213}];
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
  v11 = [(WAAQIView *)self aqiLabel];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(WAAQIView *)self aqiLabel];
  [v12 sizeToFit];

  v13 = [(WAAQIView *)self aqiLabel];
  [v13 setHidden:0];

  [(WAAQIView *)self bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [(WAAQIView *)self aqiAgencyLabel];
  [v22 setFrame:{v15, v17, v19, v21}];

  v23 = [(WAAQIView *)self aqiAgencyLabel];
  [v23 sizeToFit];

  v24 = [(WAAQIView *)self aqiAgencyLabel];
  [v24 setHidden:0];

  [(WAAQIView *)self bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = [(WAAQIView *)self airQualityMetadataGradeLabel];
  [v33 setFrame:{v26, v28, v30, v32}];

  v34 = [(WAAQIView *)self airQualityMetadataGradeLabel];
  [v34 sizeToFit];

  v35 = [(WAAQIView *)self airQualityMetadataGradeLabel];
  [v35 setHidden:0];

  if (![(WAAQIView *)self hideRecommendationString])
  {
    [(WAAQIView *)self bounds];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v44 = [(WAAQIView *)self airQualityRecommendationLabel];
    [v44 setFrame:{v37, v39, v41, v43}];

    v45 = [(WAAQIView *)self airQualityRecommendationLabel];
    [v45 sizeToFit];

    v46 = [(WAAQIView *)self airQualityRecommendationLabel];
    [v46 setHidden:0];
  }

  if (![(WAAQIView *)self hideCitationString])
  {
    [(WAAQIView *)self bounds];
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v55 = [(WAAQIView *)self aqiCitationLabel];
    [v55 setFrame:{v48, v50, v52, v54}];

    v56 = [(WAAQIView *)self aqiCitationLabel];
    [v56 sizeToFit];

    v57 = [(WAAQIView *)self aqiCitationLabel];
    [v57 setHidden:0];
  }

  v58 = [(WAAQIView *)self aqiLabel];
  [v58 frame];
  v60 = v59;
  v62 = v61;

  v63 = *MEMORY[0x277CBF348];
  [(WAAQIView *)self bounds];
  [(WAAQIView *)self rtlAdjustFrame:v63 inBounds:6.0, v60, v62, v64, v65, v66, v67];
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v76 = [(WAAQIView *)self aqiLabel];
  [v76 setFrame:{v69, v71, v73, v75}];

  v77 = [(WAAQIView *)self aqiAgencyLabel];
  [v77 frame];
  v79 = v78;
  v81 = v80;

  [(WAAQIView *)self bounds];
  MaxX = CGRectGetMaxX(v172);
  v83 = [(WAAQIView *)self aqiAgencyLabel];
  [v83 frame];
  v85 = MaxX - v84;

  [(WAAQIView *)self bounds];
  [(WAAQIView *)self rtlAdjustFrame:v85 inBounds:6.0, v79, v81, v86, v87, v88, v89];
  v91 = v90;
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v98 = [(WAAQIView *)self aqiAgencyLabel];
  [v98 setFrame:{v91, v93, v95, v97}];

  v99 = [(WAAQIView *)self aqiAgencyLabel];
  v100 = [v99 attributedText];
  v101 = [v100 wa_font];
  [v101 ascender];
  v103 = v102 + 6.0;

  v104 = [(WAAQIView *)self airQualityMetadataGradeLabel];
  [v104 frame];
  v106 = v105;
  v108 = v107;

  v109 = v103 + 1.0;
  [(WAAQIView *)self bounds];
  [(WAAQIView *)self rtlAdjustFrame:v63 inBounds:v109, v106, v108, v110, v111, v112, v113];
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v121 = v120;
  v122 = [(WAAQIView *)self airQualityMetadataGradeLabel];
  [v122 setFrame:{v115, v117, v119, v121}];

  v123 = [(WAAQIView *)self airQualityMetadataGradeLabel];
  v124 = [v123 attributedText];
  v125 = [v124 wa_font];
  [v125 descender];
  v127 = v126;
  v173.origin.x = v63;
  v173.origin.y = v109;
  v173.size.width = v106;
  v173.size.height = v108;
  v128 = v127 + CGRectGetMaxY(v173);

  if (![(WAAQIView *)self hideRecommendationString])
  {
    v129 = [(WAAQIView *)self airQualityRecommendationLabel];
    [v129 frame];
    v131 = v130;
    v133 = v132;

    v134 = v128 + 10.0;
    [(WAAQIView *)self bounds];
    [(WAAQIView *)self rtlAdjustFrame:v63 inBounds:v134, v131, v133, v135, v136, v137, v138];
    v140 = v139;
    v142 = v141;
    v144 = v143;
    v146 = v145;
    v147 = [(WAAQIView *)self airQualityRecommendationLabel];
    [v147 setFrame:{v140, v142, v144, v146}];

    v148 = [(WAAQIView *)self airQualityRecommendationLabel];
    v149 = [v148 attributedText];
    v150 = [v149 wa_font];
    [v150 descender];
    v152 = v151;
    v174.origin.x = v63;
    v174.origin.y = v134;
    v174.size.width = v131;
    v174.size.height = v133;
    v128 = v152 + CGRectGetMaxY(v174);
  }

  if (![(WAAQIView *)self hideCitationString])
  {
    v153 = [(WAAQIView *)self aqiCitationLabel];
    [v153 frame];
    v155 = v154;
    v157 = v156;

    [(WAAQIView *)self bounds];
    [(WAAQIView *)self rtlAdjustFrame:v63 inBounds:v128 + 8.0, v155, v157, v158, v159, v160, v161];
    v163 = v162;
    v165 = v164;
    v167 = v166;
    v169 = v168;
    v170 = [(WAAQIView *)self aqiCitationLabel];
    [v170 setFrame:{v163, v165, v167, v169}];
  }
}

- (id)accessibilityLabel
{
  if ([(WAAQIView *)self layoutMode]- 1 > 2)
  {
    v4 = 0;
  }

  else
  {
    v3 = [(WAAQIView *)self aqiLabel];
    v4 = [v3 text];
  }

  return v4;
}

- (id)accessibilityValue
{
  v3 = [(WAAQIView *)self layoutMode];
  switch(v3)
  {
    case 3uLL:
      goto LABEL_4;
    case 2uLL:
      v10 = [(WAAQIView *)self airQualityMetadataGradeLabel];
      v5 = [v10 text];

      v11 = [(WAAQIView *)self aqiAgencyLabel];
      v7 = [v11 text];

      v12 = [(WAAQIView *)self aqiCitationLabel];
      v13 = [v12 attributedText];
      v8 = [v13 string];

      v14 = [MEMORY[0x277CBEA60] waaxArrayByIgnoringNilElementsWithCount:{3, v5, v7, v8}];
      v9 = [v14 componentsJoinedByString:{@", "}];

      goto LABEL_6;
    case 1uLL:
LABEL_4:
      v4 = [(WAAQIView *)self aqiIndexLabel];
      v5 = [v4 text];

      v6 = [(WAAQIView *)self aqiCategoryLabel];
      v7 = [v6 text];

      v8 = [MEMORY[0x277CBEA60] waaxArrayByIgnoringNilElementsWithCount:{2, v5, v7}];
      v9 = [v8 componentsJoinedByString:{@", "}];
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