@interface WFAirQualityConditions
- (BOOL)isExpired;
- (WFAirQualityConditions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAirQualityConditions

- (WFAirQualityConditions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v38.receiver = self;
  v38.super_class = WFAirQualityConditions;
  v5 = [(WFAirQualityConditions *)&v38 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityConditionsLocationKey"];
    location = v5->_location;
    v5->_location = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityConditionsDateKey"];
    date = v5->_date;
    v5->_date = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityConditionsExpirationDateKey"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityConditionsProviderKey"];
    provider = v5->_provider;
    v5->_provider = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityConditionsLocalizedDisclaimerKey"];
    localizedDisclaimer = v5->_localizedDisclaimer;
    v5->_localizedDisclaimer = v14;

    v5->_localizedAirQualityIndex = [coderCopy decodeIntegerForKey:@"WFAirQualityConditionsLocalizedAQIKey"];
    v5->_significance = [coderCopy decodeIntegerForKey:@"WFAirQualityConditionsSignificanceKey"];
    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"WFAirQualityConditionsPollutantsKey"];
    pollutants = v5->_pollutants;
    v5->_pollutants = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityConditionsPrimaryPollutantKey"];
    primaryPollutant = v5->_primaryPollutant;
    v5->_primaryPollutant = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityConditionsLocaleKey"];
    locale = v5->_locale;
    v5->_locale = v23;

    v5->_category = [coderCopy decodeIntegerForKey:@"WFAirQualityConditionsCategoryKey"];
    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityConditionsAirQualityScaleKey"];
    airQualityScale = v5->_airQualityScale;
    v5->_airQualityScale = v25;

    v5->_temporarilyUnavailable = [coderCopy decodeBoolForKey:@"WFAirQualityConditionsTemporarilyUnavailableKey"];
    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityConditionsScaleIdentifierKey"];
    scaleIdentifier = v5->_scaleIdentifier;
    v5->_scaleIdentifier = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityConditionsScaleKey"];
    scale = v5->_scale;
    v5->_scale = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityConditionsScaleCurrentCategoryKey"];
    currentScaleCategory = v5->_currentScaleCategory;
    v5->_currentScaleCategory = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityConditionsAttributionProviderKey"];
    providerAttribution = v5->_providerAttribution;
    v5->_providerAttribution = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityConditionsLearnMoreKey"];
    learnMoreURL = v5->_learnMoreURL;
    v5->_learnMoreURL = v35;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  location = [(WFAirQualityConditions *)self location];
  [coderCopy encodeObject:location forKey:@"WFAirQualityConditionsLocationKey"];

  date = [(WFAirQualityConditions *)self date];
  [coderCopy encodeObject:date forKey:@"WFAirQualityConditionsDateKey"];

  expirationDate = [(WFAirQualityConditions *)self expirationDate];
  [coderCopy encodeObject:expirationDate forKey:@"WFAirQualityConditionsExpirationDateKey"];

  provider = [(WFAirQualityConditions *)self provider];
  [coderCopy encodeObject:provider forKey:@"WFAirQualityConditionsProviderKey"];

  localizedDisclaimer = [(WFAirQualityConditions *)self localizedDisclaimer];
  [coderCopy encodeObject:localizedDisclaimer forKey:@"WFAirQualityConditionsLocalizedDisclaimerKey"];

  [coderCopy encodeInteger:-[WFAirQualityConditions localizedAirQualityIndex](self forKey:{"localizedAirQualityIndex"), @"WFAirQualityConditionsLocalizedAQIKey"}];
  [coderCopy encodeInteger:-[WFAirQualityConditions significance](self forKey:{"significance"), @"WFAirQualityConditionsSignificanceKey"}];
  pollutants = [(WFAirQualityConditions *)self pollutants];
  [coderCopy encodeObject:pollutants forKey:@"WFAirQualityConditionsPollutantsKey"];

  primaryPollutant = [(WFAirQualityConditions *)self primaryPollutant];
  [coderCopy encodeObject:primaryPollutant forKey:@"WFAirQualityConditionsPrimaryPollutantKey"];

  locale = [(WFAirQualityConditions *)self locale];
  [coderCopy encodeObject:locale forKey:@"WFAirQualityConditionsLocaleKey"];

  [coderCopy encodeInteger:-[WFAirQualityConditions category](self forKey:{"category"), @"WFAirQualityConditionsCategoryKey"}];
  airQualityScale = [(WFAirQualityConditions *)self airQualityScale];
  [coderCopy encodeObject:airQualityScale forKey:@"WFAirQualityConditionsAirQualityScaleKey"];

  [coderCopy encodeBool:-[WFAirQualityConditions temporarilyUnavailable](self forKey:{"temporarilyUnavailable"), @"WFAirQualityConditionsTemporarilyUnavailableKey"}];
  scaleIdentifier = [(WFAirQualityConditions *)self scaleIdentifier];
  [coderCopy encodeObject:scaleIdentifier forKey:@"WFAirQualityConditionsScaleIdentifierKey"];

  scale = [(WFAirQualityConditions *)self scale];
  [coderCopy encodeObject:scale forKey:@"WFAirQualityConditionsScaleKey"];

  currentScaleCategory = [(WFAirQualityConditions *)self currentScaleCategory];
  [coderCopy encodeObject:currentScaleCategory forKey:@"WFAirQualityConditionsScaleCurrentCategoryKey"];

  providerAttribution = [(WFAirQualityConditions *)self providerAttribution];
  [coderCopy encodeObject:providerAttribution forKey:@"WFAirQualityConditionsAttributionProviderKey"];

  learnMoreURL = [(WFAirQualityConditions *)self learnMoreURL];
  [coderCopy encodeObject:learnMoreURL forKey:@"WFAirQualityConditionsLearnMoreKey"];
}

- (BOOL)isExpired
{
  date = [MEMORY[0x277CBEAA8] date];
  expirationDate = [(WFAirQualityConditions *)self expirationDate];
  v5 = [date compare:expirationDate] != -1;

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  if (v5)
  {
    v6 = [(WFLocation *)self->_location copyWithZone:zone];
    [v5 setLocation:v6];

    v7 = [(NSDate *)self->_date copyWithZone:zone];
    [v5 setDate:v7];

    v8 = [(NSDate *)self->_expirationDate copyWithZone:zone];
    [v5 setExpirationDate:v8];

    v9 = [(NSString *)self->_provider copyWithZone:zone];
    [v5 setProvider:v9];

    v10 = [(NSString *)self->_localizedDisclaimer copyWithZone:zone];
    [v5 setLocalizedDisclaimer:v10];

    [v5 setLocalizedAirQualityIndex:self->_localizedAirQualityIndex];
    v11 = [(WFAQIScaleCategory *)self->_localizedAirQualityScaleCategory copy];
    [v5 setLocalizedAirQualityScaleCategory:v11];

    [v5 setSignificance:self->_significance];
    v12 = [(NSArray *)self->_pollutants copyWithZone:zone];
    [v5 setPollutants:v12];

    v13 = [(WFAirPollutant *)self->_primaryPollutant copy];
    [v5 setPrimaryPollutant:v13];

    v14 = [(NSLocale *)self->_locale copyWithZone:zone];
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
  provider = [(WFAirQualityConditions *)self provider];
  providerAttribution = [(WFAirQualityConditions *)self providerAttribution];
  primaryPollutant = [(WFAirQualityConditions *)self primaryPollutant];
  airQualityIndex = [(WFAirQualityConditions *)self airQualityIndex];
  significance = [(WFAirQualityConditions *)self significance];
  learnMoreURL = [(WFAirQualityConditions *)self learnMoreURL];
  currentCategoryIndex = [(WFAirQualityConditions *)self currentCategoryIndex];
  currentScaleCategory = [(WFAirQualityConditions *)self currentScaleCategory];
  scaleIdentifier = [(WFAirQualityConditions *)self scaleIdentifier];
  scale = [(WFAirQualityConditions *)self scale];
  v13 = [v15 stringWithFormat:@"<WFAirQualityConditions provider: %@, providerAttribution: %@, primaryPollutant: %@, airQualityIndex: %lu, significance: %lu, learnMoreURL: %@, currentCategoryIndex: %lu, currentScaleCategory: %@, scaleIdentifier: %@, scale: %@>", provider, providerAttribution, primaryPollutant, airQualityIndex, significance, learnMoreURL, currentCategoryIndex, currentScaleCategory, scaleIdentifier, scale];

  return v13;
}

- (id)debugDescription
{
  v20 = MEMORY[0x277CCACA8];
  location = [(WFAirQualityConditions *)self location];
  date = [(WFAirQualityConditions *)self date];
  expirationDate = [(WFAirQualityConditions *)self expirationDate];
  isExpired = [(WFAirQualityConditions *)self isExpired];
  temporarilyUnavailable = [(WFAirQualityConditions *)self temporarilyUnavailable];
  provider = [(WFAirQualityConditions *)self provider];
  providerAttribution = [(WFAirQualityConditions *)self providerAttribution];
  pollutants = [(WFAirQualityConditions *)self pollutants];
  primaryPollutant = [(WFAirQualityConditions *)self primaryPollutant];
  airQualityIndex = [(WFAirQualityConditions *)self airQualityIndex];
  significance = [(WFAirQualityConditions *)self significance];
  learnMoreURL = [(WFAirQualityConditions *)self learnMoreURL];
  currentCategoryIndex = [(WFAirQualityConditions *)self currentCategoryIndex];
  currentScaleCategory = [(WFAirQualityConditions *)self currentScaleCategory];
  scaleIdentifier = [(WFAirQualityConditions *)self scaleIdentifier];
  scale = [(WFAirQualityConditions *)self scale];
  v21 = [v20 stringWithFormat:@"<WFAirQualityConditions location: %@, date: %@, expirationDate: %@, isExpired: %d, temporarilyUnavailable: %d, provider: %@, providerAttribution: %@, pollutants: %@, primaryPollutant: %@, airQualityIndex: %lu, significance: %lu, learnMoreURL: %@, currentCategoryIndex: %lu, currentScaleCategory: %@, scaleIdentifier: %@, scale: %@>", location, date, expirationDate, isExpired, temporarilyUnavailable, provider, providerAttribution, pollutants, primaryPollutant, airQualityIndex, significance, learnMoreURL, currentCategoryIndex, currentScaleCategory, scaleIdentifier, scale];

  return v21;
}

@end