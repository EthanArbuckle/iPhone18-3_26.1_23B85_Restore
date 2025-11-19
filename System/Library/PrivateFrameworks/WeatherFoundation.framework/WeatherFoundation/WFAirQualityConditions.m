@interface WFAirQualityConditions
- (BOOL)isExpired;
- (WFAirQualityConditions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFAirQualityConditions

- (WFAirQualityConditions)initWithCoder:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = WFAirQualityConditions;
  v5 = [(WFAirQualityConditions *)&v38 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityConditionsLocationKey"];
    location = v5->_location;
    v5->_location = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityConditionsDateKey"];
    date = v5->_date;
    v5->_date = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityConditionsExpirationDateKey"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityConditionsProviderKey"];
    provider = v5->_provider;
    v5->_provider = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityConditionsLocalizedDisclaimerKey"];
    localizedDisclaimer = v5->_localizedDisclaimer;
    v5->_localizedDisclaimer = v14;

    v5->_localizedAirQualityIndex = [v4 decodeIntegerForKey:@"WFAirQualityConditionsLocalizedAQIKey"];
    v5->_significance = [v4 decodeIntegerForKey:@"WFAirQualityConditionsSignificanceKey"];
    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"WFAirQualityConditionsPollutantsKey"];
    pollutants = v5->_pollutants;
    v5->_pollutants = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityConditionsPrimaryPollutantKey"];
    primaryPollutant = v5->_primaryPollutant;
    v5->_primaryPollutant = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityConditionsLocaleKey"];
    locale = v5->_locale;
    v5->_locale = v23;

    v5->_category = [v4 decodeIntegerForKey:@"WFAirQualityConditionsCategoryKey"];
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityConditionsAirQualityScaleKey"];
    airQualityScale = v5->_airQualityScale;
    v5->_airQualityScale = v25;

    v5->_temporarilyUnavailable = [v4 decodeBoolForKey:@"WFAirQualityConditionsTemporarilyUnavailableKey"];
    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityConditionsScaleIdentifierKey"];
    scaleIdentifier = v5->_scaleIdentifier;
    v5->_scaleIdentifier = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityConditionsScaleKey"];
    scale = v5->_scale;
    v5->_scale = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityConditionsScaleCurrentCategoryKey"];
    currentScaleCategory = v5->_currentScaleCategory;
    v5->_currentScaleCategory = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityConditionsAttributionProviderKey"];
    providerAttribution = v5->_providerAttribution;
    v5->_providerAttribution = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityConditionsLearnMoreKey"];
    learnMoreURL = v5->_learnMoreURL;
    v5->_learnMoreURL = v35;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFAirQualityConditions *)self location];
  [v4 encodeObject:v5 forKey:@"WFAirQualityConditionsLocationKey"];

  v6 = [(WFAirQualityConditions *)self date];
  [v4 encodeObject:v6 forKey:@"WFAirQualityConditionsDateKey"];

  v7 = [(WFAirQualityConditions *)self expirationDate];
  [v4 encodeObject:v7 forKey:@"WFAirQualityConditionsExpirationDateKey"];

  v8 = [(WFAirQualityConditions *)self provider];
  [v4 encodeObject:v8 forKey:@"WFAirQualityConditionsProviderKey"];

  v9 = [(WFAirQualityConditions *)self localizedDisclaimer];
  [v4 encodeObject:v9 forKey:@"WFAirQualityConditionsLocalizedDisclaimerKey"];

  [v4 encodeInteger:-[WFAirQualityConditions localizedAirQualityIndex](self forKey:{"localizedAirQualityIndex"), @"WFAirQualityConditionsLocalizedAQIKey"}];
  [v4 encodeInteger:-[WFAirQualityConditions significance](self forKey:{"significance"), @"WFAirQualityConditionsSignificanceKey"}];
  v10 = [(WFAirQualityConditions *)self pollutants];
  [v4 encodeObject:v10 forKey:@"WFAirQualityConditionsPollutantsKey"];

  v11 = [(WFAirQualityConditions *)self primaryPollutant];
  [v4 encodeObject:v11 forKey:@"WFAirQualityConditionsPrimaryPollutantKey"];

  v12 = [(WFAirQualityConditions *)self locale];
  [v4 encodeObject:v12 forKey:@"WFAirQualityConditionsLocaleKey"];

  [v4 encodeInteger:-[WFAirQualityConditions category](self forKey:{"category"), @"WFAirQualityConditionsCategoryKey"}];
  v13 = [(WFAirQualityConditions *)self airQualityScale];
  [v4 encodeObject:v13 forKey:@"WFAirQualityConditionsAirQualityScaleKey"];

  [v4 encodeBool:-[WFAirQualityConditions temporarilyUnavailable](self forKey:{"temporarilyUnavailable"), @"WFAirQualityConditionsTemporarilyUnavailableKey"}];
  v14 = [(WFAirQualityConditions *)self scaleIdentifier];
  [v4 encodeObject:v14 forKey:@"WFAirQualityConditionsScaleIdentifierKey"];

  v15 = [(WFAirQualityConditions *)self scale];
  [v4 encodeObject:v15 forKey:@"WFAirQualityConditionsScaleKey"];

  v16 = [(WFAirQualityConditions *)self currentScaleCategory];
  [v4 encodeObject:v16 forKey:@"WFAirQualityConditionsScaleCurrentCategoryKey"];

  v17 = [(WFAirQualityConditions *)self providerAttribution];
  [v4 encodeObject:v17 forKey:@"WFAirQualityConditionsAttributionProviderKey"];

  v18 = [(WFAirQualityConditions *)self learnMoreURL];
  [v4 encodeObject:v18 forKey:@"WFAirQualityConditionsLearnMoreKey"];
}

- (BOOL)isExpired
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [(WFAirQualityConditions *)self expirationDate];
  v5 = [v3 compare:v4] != -1;

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  if (v5)
  {
    v6 = [(WFLocation *)self->_location copyWithZone:a3];
    [v5 setLocation:v6];

    v7 = [(NSDate *)self->_date copyWithZone:a3];
    [v5 setDate:v7];

    v8 = [(NSDate *)self->_expirationDate copyWithZone:a3];
    [v5 setExpirationDate:v8];

    v9 = [(NSString *)self->_provider copyWithZone:a3];
    [v5 setProvider:v9];

    v10 = [(NSString *)self->_localizedDisclaimer copyWithZone:a3];
    [v5 setLocalizedDisclaimer:v10];

    [v5 setLocalizedAirQualityIndex:self->_localizedAirQualityIndex];
    v11 = [(WFAQIScaleCategory *)self->_localizedAirQualityScaleCategory copy];
    [v5 setLocalizedAirQualityScaleCategory:v11];

    [v5 setSignificance:self->_significance];
    v12 = [(NSArray *)self->_pollutants copyWithZone:a3];
    [v5 setPollutants:v12];

    v13 = [(WFAirPollutant *)self->_primaryPollutant copy];
    [v5 setPrimaryPollutant:v13];

    v14 = [(NSLocale *)self->_locale copyWithZone:a3];
    [v5 setLocale:v14];

    [v5 setCategory:self->_category];
    [v5 setTemporarilyUnavailable:self->_temporarilyUnavailable];
    [v5 setScaleIdentifier:self->_scaleIdentifier];
    [v5 setScale:self->_scale];
    [v5 setCurrentScaleCategory:self->_currentScaleCategory];
    [v5 setProviderAttribution:self->_providerAttribution];
    [v5 setLearnMoreURL:self->_learnMoreURL];
  }

  return v5;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v3 = [(WFAirQualityConditions *)self provider];
  v4 = [(WFAirQualityConditions *)self providerAttribution];
  v5 = [(WFAirQualityConditions *)self primaryPollutant];
  v6 = [(WFAirQualityConditions *)self airQualityIndex];
  v7 = [(WFAirQualityConditions *)self significance];
  v8 = [(WFAirQualityConditions *)self learnMoreURL];
  v9 = [(WFAirQualityConditions *)self currentCategoryIndex];
  v10 = [(WFAirQualityConditions *)self currentScaleCategory];
  v11 = [(WFAirQualityConditions *)self scaleIdentifier];
  v12 = [(WFAirQualityConditions *)self scale];
  v13 = [v15 stringWithFormat:@"<WFAirQualityConditions provider: %@, providerAttribution: %@, primaryPollutant: %@, airQualityIndex: %lu, significance: %lu, learnMoreURL: %@, currentCategoryIndex: %lu, currentScaleCategory: %@, scaleIdentifier: %@, scale: %@>", v3, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (id)debugDescription
{
  v20 = MEMORY[0x277CCACA8];
  v19 = [(WFAirQualityConditions *)self location];
  v18 = [(WFAirQualityConditions *)self date];
  v17 = [(WFAirQualityConditions *)self expirationDate];
  v16 = [(WFAirQualityConditions *)self isExpired];
  v15 = [(WFAirQualityConditions *)self temporarilyUnavailable];
  v14 = [(WFAirQualityConditions *)self provider];
  v3 = [(WFAirQualityConditions *)self providerAttribution];
  v4 = [(WFAirQualityConditions *)self pollutants];
  v5 = [(WFAirQualityConditions *)self primaryPollutant];
  v13 = [(WFAirQualityConditions *)self airQualityIndex];
  v6 = [(WFAirQualityConditions *)self significance];
  v7 = [(WFAirQualityConditions *)self learnMoreURL];
  v8 = [(WFAirQualityConditions *)self currentCategoryIndex];
  v9 = [(WFAirQualityConditions *)self currentScaleCategory];
  v10 = [(WFAirQualityConditions *)self scaleIdentifier];
  v11 = [(WFAirQualityConditions *)self scale];
  v21 = [v20 stringWithFormat:@"<WFAirQualityConditions location: %@, date: %@, expirationDate: %@, isExpired: %d, temporarilyUnavailable: %d, provider: %@, providerAttribution: %@, pollutants: %@, primaryPollutant: %@, airQualityIndex: %lu, significance: %lu, learnMoreURL: %@, currentCategoryIndex: %lu, currentScaleCategory: %@, scaleIdentifier: %@, scale: %@>", v19, v18, v17, v16, v15, v14, v3, v4, v5, v13, v6, v7, v8, v9, v10, v11];

  return v21;
}

@end