@interface SPAdvertisementCacheSearchResult
- (SPAdvertisementCacheSearchResult)initWithBeaconAdvertisements:(id)advertisements searchResultMarker:(id)marker error:(id)error;
- (SPAdvertisementCacheSearchResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPAdvertisementCacheSearchResult

- (SPAdvertisementCacheSearchResult)initWithBeaconAdvertisements:(id)advertisements searchResultMarker:(id)marker error:(id)error
{
  advertisementsCopy = advertisements;
  markerCopy = marker;
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = SPAdvertisementCacheSearchResult;
  v11 = [(SPAdvertisementCacheSearchResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(SPAdvertisementCacheSearchResult *)v11 setBeaconAdvertisements:advertisementsCopy];
    [(SPAdvertisementCacheSearchResult *)v12 setSearchResultMarker:markerCopy];
    [(SPAdvertisementCacheSearchResult *)v12 setError:errorCopy];
  }

  return v12;
}

- (SPAdvertisementCacheSearchResult)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"beaconAdvertisements"];
  [(SPAdvertisementCacheSearchResult *)self setBeaconAdvertisements:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchResultMarker"];
  [(SPAdvertisementCacheSearchResult *)self setSearchResultMarker:v9];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];

  [(SPAdvertisementCacheSearchResult *)self setError:v10];
  v11 = *MEMORY[0x277D85DE8];
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  beaconAdvertisements = [(SPAdvertisementCacheSearchResult *)self beaconAdvertisements];
  [coderCopy encodeObject:beaconAdvertisements forKey:@"beaconAdvertisements"];

  searchResultMarker = [(SPAdvertisementCacheSearchResult *)self searchResultMarker];
  [coderCopy encodeObject:searchResultMarker forKey:@"searchResultMarker"];

  error = [(SPAdvertisementCacheSearchResult *)self error];
  [coderCopy encodeObject:error forKey:@"error"];
}

@end