@interface SPBeaconPayloadCacheSearchResult
- (SPBeaconPayloadCacheSearchResult)initWithCoder:(id)a3;
- (SPBeaconPayloadCacheSearchResult)initWithFileURLs:(id)a3 searchResultMarker:(id)a4 error:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPBeaconPayloadCacheSearchResult

- (SPBeaconPayloadCacheSearchResult)initWithFileURLs:(id)a3 searchResultMarker:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SPBeaconPayloadCacheSearchResult;
  v11 = [(SPBeaconPayloadCacheSearchResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(SPBeaconPayloadCacheSearchResult *)v11 setFileURLs:v8];
    [(SPBeaconPayloadCacheSearchResult *)v12 setSearchResultMarker:v9];
    [(SPBeaconPayloadCacheSearchResult *)v12 setError:v10];
  }

  return v12;
}

- (SPBeaconPayloadCacheSearchResult)initWithCoder:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"fileURLs"];
  [(SPBeaconPayloadCacheSearchResult *)self setFileURLs:v8];

  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"searchResultMarker"];
  [(SPBeaconPayloadCacheSearchResult *)self setSearchResultMarker:v9];

  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"error"];

  [(SPBeaconPayloadCacheSearchResult *)self setError:v10];
  v11 = *MEMORY[0x277D85DE8];
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SPBeaconPayloadCacheSearchResult *)self fileURLs];
  [v4 encodeObject:v5 forKey:@"fileURLs"];

  v6 = [(SPBeaconPayloadCacheSearchResult *)self searchResultMarker];
  [v4 encodeObject:v6 forKey:@"searchResultMarker"];

  v7 = [(SPBeaconPayloadCacheSearchResult *)self error];
  [v4 encodeObject:v7 forKey:@"error"];
}

@end