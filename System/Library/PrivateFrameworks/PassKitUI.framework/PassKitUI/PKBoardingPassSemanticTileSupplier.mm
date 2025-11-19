@interface PKBoardingPassSemanticTileSupplier
+ (id)createSupplierForPass:(id)a3 passState:(id)a4;
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
- (PKBoardingPassSemanticTileSupplier)initWithPass:(id)a3 passState:(id)a4;
- (PKImage)transitProviderIcon;
- (id)departureLocation;
@end

@implementation PKBoardingPassSemanticTileSupplier

+ (id)createSupplierForPass:(id)a3 passState:(id)a4
{
  v5 = a3;
  v6 = a4;
  result = [v5 style];
  if (result >= 0xA)
  {
    if (result == 13)
    {
      __break(1u);
      return result;
    }

    v8 = [[PKBoardingPassSemanticTileSupplier alloc] initWithPass:v5 passState:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PKBoardingPassSemanticTileSupplier)initWithPass:(id)a3 passState:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = PKBoardingPassSemanticTileSupplier;
  v9 = [(PKBoardingPassSemanticTileSupplier *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pass, a3);
    v11 = [v8 flight];
    flight = v10->_flight;
    v10->_flight = v11;

    v13 = PKResolvedBoardingPassSemantics();
    resolvedSemantics = v10->_resolvedSemantics;
    v10->_resolvedSemantics = v13;
  }

  return v10;
}

- (NSString)mapsTileTitle
{
  v3 = [(PKBoardingPassSemanticTileSupplier *)self departureAirportName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(PKBoardingPassSemanticTileSupplier *)self departureAirportCode];
  }

  v6 = v5;

  v7 = PKLocalizedFlightString(&cfstr_PassDashboardF.isa, &stru_1F3BD5BF0.isa, v6);

  return v7;
}

- (MKLocalSearchRequest)mapsSearchRequest
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [(PKBoardingPassSemanticTileSupplier *)self departureAirportName];
  if (v3 || ([(PKBoardingPassSemanticTileSupplier *)self departureAirportCode], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = objc_alloc_init(MEMORY[0x1E696F260]);
    [v5 setNaturalLanguageQuery:v4];
    v6 = [(PKBoardingPassSemanticTileSupplier *)self departureLocation];
    v7 = v6;
    if (v6)
    {
      MEMORY[0x1BFB41730]([v6 coordinate]);
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
    v5 = v3;
  }

  else
  {
    v5 = [(PKPass *)self->_pass organizationName];
  }

  v6 = v5;

  return v6;
}

- (PKImage)transitProviderIcon
{
  v2 = [(PKPass *)self->_pass iconImage];
  [v2 orientation];

  return v2;
}

- (NSString)departureAirportCode
{
  v2 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBD88]];
  v3 = [v2 stringValue];

  return v3;
}

- (NSString)departureAirportName
{
  v2 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBD90]];
  v3 = [v2 stringValue];

  return v3;
}

- (id)departureLocation
{
  v2 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBCC0]];
  v3 = [v2 locationValue];
  v4 = [v3 CLLocation];

  return v4;
}

- (NSString)departureTerminal
{
  v2 = [(NSDictionary *)self->_resolvedSemantics objectForKeyedSubscript:*MEMORY[0x1E69BBDC0]];
  v3 = [v2 stringValue];

  return v3;
}

- (NSString)destinationAirportCode
{
  v2 = [(NSDictionary *)self->_resolvedSemantics objectForKeyedSubscript:*MEMORY[0x1E69BBDC8]];
  v3 = [v2 stringValue];

  return v3;
}

- (NSString)destinationAirportName
{
  v2 = [(NSDictionary *)self->_resolvedSemantics objectForKeyedSubscript:*MEMORY[0x1E69BBDD0]];
  v3 = [v2 stringValue];

  return v3;
}

- (NSString)destinationCityName
{
  v2 = [(NSDictionary *)self->_resolvedSemantics objectForKeyedSubscript:*MEMORY[0x1E69BBDD8]];
  v3 = [v2 stringValue];

  return v3;
}

- (CLLocation)destinationLocation
{
  v2 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBCC8]];
  v3 = [v2 locationValue];
  v4 = [v3 CLLocation];

  return v4;
}

@end