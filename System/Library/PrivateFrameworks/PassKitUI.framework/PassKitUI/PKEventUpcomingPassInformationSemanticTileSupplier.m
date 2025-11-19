@interface PKEventUpcomingPassInformationSemanticTileSupplier
+ (id)createSupplierForPass:(id)a3 fromUpcomingPassInformationEntry:(id)a4;
- (CLLocation)location;
- (MKLocalSearchRequest)mapsSearchRequest;
- (MKMapItemRequest)mapsItemRequest;
- (NSString)eventName;
- (NSString)identifier;
- (NSString)venueName;
- (NSURL)accessibilityURL;
- (NSURL)bagPolicyURL;
- (NSURL)directionsInformationURL;
- (NSURL)merchandiseURL;
- (NSURL)orderFoodURL;
- (NSURL)parkingInformationURL;
- (NSURL)partnerAddOnURL;
- (NSURL)purchaseParkingURL;
- (NSURL)transitInformationURL;
- (NSURL)venueEmailURL;
- (NSURL)venuePhoneNumberURL;
- (NSURL)venueWebsiteURL;
- (PKEventUpcomingPassInformationSemanticTileSupplier)initWithPass:(id)a3 upcomingPassInformationEntry:(id)a4;
- (PKPassUpcomingPassInformationImageManifest)venueMapImageManifest;
- (id)venueMapImageIfExists;
- (id)weatherFetchDateForDate:(id)a3;
@end

@implementation PKEventUpcomingPassInformationSemanticTileSupplier

+ (id)createSupplierForPass:(id)a3 fromUpcomingPassInformationEntry:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 metadata];
  v8 = [v7 type];

  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = [v6 content];
  v11 = [v10 type];

  if (!v11)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v12 = [[PKEventUpcomingPassInformationSemanticTileSupplier alloc] initWithPass:v5 upcomingPassInformationEntry:v6];

  return v12;
}

- (PKEventUpcomingPassInformationSemanticTileSupplier)initWithPass:(id)a3 upcomingPassInformationEntry:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = PKEventUpcomingPassInformationSemanticTileSupplier;
  v9 = [(PKEventUpcomingPassInformationSemanticTileSupplier *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_upcomingPassInformationEntry, a4);
    objc_storeStrong(&v10->_pass, a3);
    v11 = [(PKPassUpcomingPassInformationEntry *)v10->_upcomingPassInformationEntry metadata];
    v12 = [v11 semantics];
    semantics = v10->_semantics;
    v10->_semantics = v12;
  }

  return v10;
}

- (NSString)identifier
{
  v2 = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry metadata];
  v3 = [v2 identifier];

  return v3;
}

- (MKMapItemRequest)mapsItemRequest
{
  v2 = [(NSDictionary *)self->_semantics objectForKeyedSubscript:*MEMORY[0x1E69BBF00]];
  v3 = [v2 stringValue];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E696F290]);
    v5 = [objc_alloc(MEMORY[0x1E696F280]) initWithIdentifierString:v3];
    v6 = [v4 initWithMapItemIdentifier:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MKLocalSearchRequest)mapsSearchRequest
{
  v3 = [(PKEventUpcomingPassInformationSemanticTileSupplier *)self venueName];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696F260]);
    [v4 setNaturalLanguageQuery:v3];
    v5 = [(PKEventUpcomingPassInformationSemanticTileSupplier *)self location];
    v6 = v5;
    if (v5)
    {
      MEMORY[0x1BFB41730]([v5 coordinate]);
      [v4 setRegion:?];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)eventName
{
  v3 = [(NSDictionary *)self->_semantics objectForKeyedSubscript:*MEMORY[0x1E69BBE18]];
  v4 = [v3 stringValue];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry metadata];
    v8 = [v7 eventMetadata];
    v6 = [v8 name];
  }

  return v6;
}

- (NSString)venueName
{
  v2 = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry metadata];
  v3 = [v2 eventMetadata];
  v4 = [v3 venueName];

  return v4;
}

- (CLLocation)location
{
  v2 = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry metadata];
  v3 = [v2 eventMetadata];
  v4 = [v3 venueLocation];
  v5 = [v4 CLLocation];

  return v5;
}

- (NSURL)bagPolicyURL
{
  v2 = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry content];
  v3 = [v2 eventContent];
  v4 = [v3 bagPolicyURL];

  return v4;
}

- (NSURL)orderFoodURL
{
  v2 = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry content];
  v3 = [v2 eventContent];
  v4 = [v3 orderFoodURL];

  return v4;
}

- (NSURL)transitInformationURL
{
  v2 = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry content];
  v3 = [v2 eventContent];
  v4 = [v3 transitInformationURL];

  return v4;
}

- (NSURL)parkingInformationURL
{
  v2 = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry content];
  v3 = [v2 eventContent];
  v4 = [v3 parkingInformationURL];

  return v4;
}

- (NSURL)directionsInformationURL
{
  v2 = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry content];
  v3 = [v2 eventContent];
  v4 = [v3 directionsInformationURL];

  return v4;
}

- (NSURL)merchandiseURL
{
  v2 = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry content];
  v3 = [v2 eventContent];
  v4 = [v3 merchandiseURL];

  return v4;
}

- (NSURL)accessibilityURL
{
  v2 = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry content];
  v3 = [v2 eventContent];
  v4 = [v3 accessibilityURL];

  return v4;
}

- (NSURL)purchaseParkingURL
{
  v2 = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry content];
  v3 = [v2 eventContent];
  v4 = [v3 purchaseParkingURL];

  return v4;
}

- (NSURL)partnerAddOnURL
{
  v2 = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry content];
  v3 = [v2 eventContent];
  v4 = [v3 partnerAddOnURL];

  return v4;
}

- (NSURL)venueEmailURL
{
  v2 = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry content];
  v3 = [v2 eventContent];
  v4 = [v3 venueEmailURL];

  return v4;
}

- (NSURL)venuePhoneNumberURL
{
  v2 = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry content];
  v3 = [v2 eventContent];
  v4 = [v3 venuePhoneNumberURL];

  return v4;
}

- (NSURL)venueWebsiteURL
{
  v2 = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry content];
  v3 = [v2 eventContent];
  v4 = [v3 venueWebsiteURL];

  return v4;
}

- (PKPassUpcomingPassInformationImageManifest)venueMapImageManifest
{
  v2 = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry content];
  v3 = [v2 eventContent];
  v4 = [v3 venueMapImageManifest];

  return v4;
}

- (id)venueMapImageIfExists
{
  v3 = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry content];
  v4 = [v3 eventContent];

  v5 = [v4 venueMapImageManifest];
  if ([v5 reuseExisting])
  {
    v6 = [(PKPass *)self->_pass venueMapImage];
  }

  else
  {
    v7 = [v5 itemClosestMatchingScreenScale:PKUIScreenScale()];
    v6 = [v7 sessionCachedImageIfExists];
  }

  return v6;
}

- (id)weatherFetchDateForDate:(id)a3
{
  v3 = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry metadata];
  v4 = [v3 date];

  return v4;
}

@end