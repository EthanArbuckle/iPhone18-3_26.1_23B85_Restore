@interface PKEventUpcomingPassInformationSemanticTileSupplier
+ (id)createSupplierForPass:(id)pass fromUpcomingPassInformationEntry:(id)entry;
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
- (PKEventUpcomingPassInformationSemanticTileSupplier)initWithPass:(id)pass upcomingPassInformationEntry:(id)entry;
- (PKPassUpcomingPassInformationImageManifest)venueMapImageManifest;
- (id)venueMapImageIfExists;
- (id)weatherFetchDateForDate:(id)date;
@end

@implementation PKEventUpcomingPassInformationSemanticTileSupplier

+ (id)createSupplierForPass:(id)pass fromUpcomingPassInformationEntry:(id)entry
{
  passCopy = pass;
  entryCopy = entry;
  metadata = [entryCopy metadata];
  type = [metadata type];

  if (!type)
  {
    __break(1u);
    goto LABEL_7;
  }

  content = [entryCopy content];
  type2 = [content type];

  if (!type2)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v12 = [[PKEventUpcomingPassInformationSemanticTileSupplier alloc] initWithPass:passCopy upcomingPassInformationEntry:entryCopy];

  return v12;
}

- (PKEventUpcomingPassInformationSemanticTileSupplier)initWithPass:(id)pass upcomingPassInformationEntry:(id)entry
{
  passCopy = pass;
  entryCopy = entry;
  v15.receiver = self;
  v15.super_class = PKEventUpcomingPassInformationSemanticTileSupplier;
  v9 = [(PKEventUpcomingPassInformationSemanticTileSupplier *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_upcomingPassInformationEntry, entry);
    objc_storeStrong(&v10->_pass, pass);
    metadata = [(PKPassUpcomingPassInformationEntry *)v10->_upcomingPassInformationEntry metadata];
    semantics = [metadata semantics];
    semantics = v10->_semantics;
    v10->_semantics = semantics;
  }

  return v10;
}

- (NSString)identifier
{
  metadata = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry metadata];
  identifier = [metadata identifier];

  return identifier;
}

- (MKMapItemRequest)mapsItemRequest
{
  v2 = [(NSDictionary *)self->_semantics objectForKeyedSubscript:*MEMORY[0x1E69BBF00]];
  stringValue = [v2 stringValue];

  if (stringValue)
  {
    v4 = objc_alloc(MEMORY[0x1E696F290]);
    v5 = [objc_alloc(MEMORY[0x1E696F280]) initWithIdentifierString:stringValue];
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
  venueName = [(PKEventUpcomingPassInformationSemanticTileSupplier *)self venueName];
  if (venueName)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696F260]);
    [v4 setNaturalLanguageQuery:venueName];
    location = [(PKEventUpcomingPassInformationSemanticTileSupplier *)self location];
    v6 = location;
    if (location)
    {
      MEMORY[0x1BFB41730]([location coordinate]);
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
  stringValue = [v3 stringValue];
  v5 = stringValue;
  if (stringValue)
  {
    name = stringValue;
  }

  else
  {
    metadata = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry metadata];
    eventMetadata = [metadata eventMetadata];
    name = [eventMetadata name];
  }

  return name;
}

- (NSString)venueName
{
  metadata = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry metadata];
  eventMetadata = [metadata eventMetadata];
  venueName = [eventMetadata venueName];

  return venueName;
}

- (CLLocation)location
{
  metadata = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry metadata];
  eventMetadata = [metadata eventMetadata];
  venueLocation = [eventMetadata venueLocation];
  cLLocation = [venueLocation CLLocation];

  return cLLocation;
}

- (NSURL)bagPolicyURL
{
  content = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry content];
  eventContent = [content eventContent];
  bagPolicyURL = [eventContent bagPolicyURL];

  return bagPolicyURL;
}

- (NSURL)orderFoodURL
{
  content = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry content];
  eventContent = [content eventContent];
  orderFoodURL = [eventContent orderFoodURL];

  return orderFoodURL;
}

- (NSURL)transitInformationURL
{
  content = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry content];
  eventContent = [content eventContent];
  transitInformationURL = [eventContent transitInformationURL];

  return transitInformationURL;
}

- (NSURL)parkingInformationURL
{
  content = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry content];
  eventContent = [content eventContent];
  parkingInformationURL = [eventContent parkingInformationURL];

  return parkingInformationURL;
}

- (NSURL)directionsInformationURL
{
  content = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry content];
  eventContent = [content eventContent];
  directionsInformationURL = [eventContent directionsInformationURL];

  return directionsInformationURL;
}

- (NSURL)merchandiseURL
{
  content = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry content];
  eventContent = [content eventContent];
  merchandiseURL = [eventContent merchandiseURL];

  return merchandiseURL;
}

- (NSURL)accessibilityURL
{
  content = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry content];
  eventContent = [content eventContent];
  accessibilityURL = [eventContent accessibilityURL];

  return accessibilityURL;
}

- (NSURL)purchaseParkingURL
{
  content = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry content];
  eventContent = [content eventContent];
  purchaseParkingURL = [eventContent purchaseParkingURL];

  return purchaseParkingURL;
}

- (NSURL)partnerAddOnURL
{
  content = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry content];
  eventContent = [content eventContent];
  partnerAddOnURL = [eventContent partnerAddOnURL];

  return partnerAddOnURL;
}

- (NSURL)venueEmailURL
{
  content = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry content];
  eventContent = [content eventContent];
  venueEmailURL = [eventContent venueEmailURL];

  return venueEmailURL;
}

- (NSURL)venuePhoneNumberURL
{
  content = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry content];
  eventContent = [content eventContent];
  venuePhoneNumberURL = [eventContent venuePhoneNumberURL];

  return venuePhoneNumberURL;
}

- (NSURL)venueWebsiteURL
{
  content = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry content];
  eventContent = [content eventContent];
  venueWebsiteURL = [eventContent venueWebsiteURL];

  return venueWebsiteURL;
}

- (PKPassUpcomingPassInformationImageManifest)venueMapImageManifest
{
  content = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry content];
  eventContent = [content eventContent];
  venueMapImageManifest = [eventContent venueMapImageManifest];

  return venueMapImageManifest;
}

- (id)venueMapImageIfExists
{
  content = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry content];
  eventContent = [content eventContent];

  venueMapImageManifest = [eventContent venueMapImageManifest];
  if ([venueMapImageManifest reuseExisting])
  {
    venueMapImage = [(PKPass *)self->_pass venueMapImage];
  }

  else
  {
    v7 = [venueMapImageManifest itemClosestMatchingScreenScale:PKUIScreenScale()];
    venueMapImage = [v7 sessionCachedImageIfExists];
  }

  return venueMapImage;
}

- (id)weatherFetchDateForDate:(id)date
{
  metadata = [(PKPassUpcomingPassInformationEntry *)self->_upcomingPassInformationEntry metadata];
  date = [metadata date];

  return date;
}

@end