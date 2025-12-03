@interface PKBoardingPassSemanticTileSupplier
+ (id)createSupplierForPass:(id)pass passState:(id)state;
- (CLLocation)destinationLocation;
- (MKLocalSearchRequest)mapsSearchRequest;
- (NSString)departureAirportCode;
- (NSString)departureAirportName;
- (NSString)departureTerminal;
- (NSString)destinationAirportCode;
- (NSString)destinationAirportName;
- (NSString)destinationCityName;
- (NSString)mapsTileTitle;
- (NSString)transitProviderName;
- (PKBoardingPassSemanticTileSupplier)initWithPass:(id)pass passState:(id)state;
- (PKImage)transitProviderIcon;
- (id)departureLocation;
@end

@implementation PKBoardingPassSemanticTileSupplier

+ (id)createSupplierForPass:(id)pass passState:(id)state
{
  passCopy = pass;
  stateCopy = state;
  result = [passCopy style];
  if (result >= 0xA)
  {
    if (result == 13)
    {
      __break(1u);
      return result;
    }

    v8 = [[PKBoardingPassSemanticTileSupplier alloc] initWithPass:passCopy passState:stateCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PKBoardingPassSemanticTileSupplier)initWithPass:(id)pass passState:(id)state
{
  passCopy = pass;
  stateCopy = state;
  v16.receiver = self;
  v16.super_class = PKBoardingPassSemanticTileSupplier;
  v9 = [(PKBoardingPassSemanticTileSupplier *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pass, pass);
    flight = [stateCopy flight];
    flight = v10->_flight;
    v10->_flight = flight;

    v13 = PKResolvedBoardingPassSemantics();
    resolvedSemantics = v10->_resolvedSemantics;
    v10->_resolvedSemantics = v13;
  }

  return v10;
}

- (NSString)mapsTileTitle
{
  departureAirportName = [(PKBoardingPassSemanticTileSupplier *)self departureAirportName];
  v4 = departureAirportName;
  if (departureAirportName)
  {
    departureAirportCode = departureAirportName;
  }

  else
  {
    departureAirportCode = [(PKBoardingPassSemanticTileSupplier *)self departureAirportCode];
  }

  v6 = departureAirportCode;

  v7 = PKLocalizedFlightString(&cfstr_PassDashboardF.isa, &stru_1F3BD5BF0.isa, v6);

  return v7;
}

- (MKLocalSearchRequest)mapsSearchRequest
{
  v12[1] = *MEMORY[0x1E69E9840];
  departureAirportName = [(PKBoardingPassSemanticTileSupplier *)self departureAirportName];
  if (departureAirportName || ([(PKBoardingPassSemanticTileSupplier *)self departureAirportCode], (departureAirportName = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = departureAirportName;
    v5 = objc_alloc_init(MEMORY[0x1E696F260]);
    [v5 setNaturalLanguageQuery:v4];
    departureLocation = [(PKBoardingPassSemanticTileSupplier *)self departureLocation];
    v7 = departureLocation;
    if (departureLocation)
    {
      MEMORY[0x1BFB41730]([departureLocation coordinate]);
      [v5 setRegion:?];
      [v5 setRegionPriority:1];
    }

    v8 = objc_alloc(MEMORY[0x1E696F350]);
    v12[0] = *MEMORY[0x1E696F138];
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v10 = [v8 initIncludingCategories:v9];

    [v5 setPointOfInterestFilter:v10];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL __60__PKBoardingPassSemanticTileSupplier_filteredItemFromItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 pointOfInterestCategory];
  v3 = v2 == *MEMORY[0x1E696F138];

  return v3;
}

- (NSString)transitProviderName
{
  v3 = [(PKPass *)self->_pass stringForSemanticKey:*MEMORY[0x1E69BBEA0]];
  v4 = v3;
  if (v3)
  {
    organizationName = v3;
  }

  else
  {
    organizationName = [(PKPass *)self->_pass organizationName];
  }

  v6 = organizationName;

  return v6;
}

- (PKImage)transitProviderIcon
{
  iconImage = [(PKPass *)self->_pass iconImage];
  [iconImage orientation];

  return iconImage;
}

- (NSString)departureAirportCode
{
  v2 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBD88]];
  stringValue = [v2 stringValue];

  return stringValue;
}

- (NSString)departureAirportName
{
  v2 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBD90]];
  stringValue = [v2 stringValue];

  return stringValue;
}

- (id)departureLocation
{
  v2 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBCC0]];
  locationValue = [v2 locationValue];
  cLLocation = [locationValue CLLocation];

  return cLLocation;
}

- (NSString)departureTerminal
{
  v2 = [(NSDictionary *)self->_resolvedSemantics objectForKeyedSubscript:*MEMORY[0x1E69BBDC0]];
  stringValue = [v2 stringValue];

  return stringValue;
}

- (NSString)destinationAirportCode
{
  v2 = [(NSDictionary *)self->_resolvedSemantics objectForKeyedSubscript:*MEMORY[0x1E69BBDC8]];
  stringValue = [v2 stringValue];

  return stringValue;
}

- (NSString)destinationAirportName
{
  v2 = [(NSDictionary *)self->_resolvedSemantics objectForKeyedSubscript:*MEMORY[0x1E69BBDD0]];
  stringValue = [v2 stringValue];

  return stringValue;
}

- (NSString)destinationCityName
{
  v2 = [(NSDictionary *)self->_resolvedSemantics objectForKeyedSubscript:*MEMORY[0x1E69BBDD8]];
  stringValue = [v2 stringValue];

  return stringValue;
}

- (CLLocation)destinationLocation
{
  v2 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBCC8]];
  locationValue = [v2 locationValue];
  cLLocation = [locationValue CLLocation];

  return cLLocation;
}

@end