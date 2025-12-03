@interface SPBeaconPayloadCacheSearchResult
- (SPBeaconPayloadCacheSearchResult)initWithCoder:(id)coder;
- (SPBeaconPayloadCacheSearchResult)initWithFileURLs:(id)ls searchResultMarker:(id)marker error:(id)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPBeaconPayloadCacheSearchResult

- (SPBeaconPayloadCacheSearchResult)initWithFileURLs:(id)ls searchResultMarker:(id)marker error:(id)error
{
  lsCopy = ls;
  markerCopy = marker;
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = SPBeaconPayloadCacheSearchResult;
  v11 = [(SPBeaconPayloadCacheSearchResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(SPBeaconPayloadCacheSearchResult *)v11 setFileURLs:lsCopy];
    [(SPBeaconPayloadCacheSearchResult *)v12 setSearchResultMarker:markerCopy];
    [(SPBeaconPayloadCacheSearchResult *)v12 setError:errorCopy];
  }

  return v12;
}

- (SPBeaconPayloadCacheSearchResult)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"fileURLs"];
  [(SPBeaconPayloadCacheSearchResult *)self setFileURLs:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchResultMarker"];
  [(SPBeaconPayloadCacheSearchResult *)self setSearchResultMarker:v9];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];

  [(SPBeaconPayloadCacheSearchResult *)self setError:v10];
  v11 = *MEMORY[0x277D85DE8];
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fileURLs = [(SPBeaconPayloadCacheSearchResult *)self fileURLs];
  [coderCopy encodeObject:fileURLs forKey:@"fileURLs"];

  searchResultMarker = [(SPBeaconPayloadCacheSearchResult *)self searchResultMarker];
  [coderCopy encodeObject:searchResultMarker forKey:@"searchResultMarker"];

  error = [(SPBeaconPayloadCacheSearchResult *)self error];
  [coderCopy encodeObject:error forKey:@"error"];
}

@end