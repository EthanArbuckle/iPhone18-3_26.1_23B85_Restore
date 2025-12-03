@interface SPDelegatedLocationResult
- (SPDelegatedLocationResult)initWithCoder:(id)coder;
- (SPDelegatedLocationResult)initWithResults:(id)results;
- (SPDelegatedLocationResult)initWithTimestamp:(id)timestamp;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPDelegatedLocationResult

- (SPDelegatedLocationResult)initWithResults:(id)results
{
  resultsCopy = results;
  v8.receiver = self;
  v8.super_class = SPDelegatedLocationResult;
  v5 = [(SPDelegatedLocationResult *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SPDelegatedLocationResult *)v5 setLocationsByUuids:resultsCopy];
    [(SPDelegatedLocationResult *)v6 setLastUploadTimestamp:0];
  }

  return v6;
}

- (SPDelegatedLocationResult)initWithTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v8.receiver = self;
  v8.super_class = SPDelegatedLocationResult;
  v5 = [(SPDelegatedLocationResult *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SPDelegatedLocationResult *)v5 setLocationsByUuids:0];
    [(SPDelegatedLocationResult *)v6 setLastUploadTimestamp:timestampCopy];
  }

  return v6;
}

- (SPDelegatedLocationResult)initWithCoder:(id)coder
{
  v15 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUploadTimestamp"];
  [(SPDelegatedLocationResult *)self setLastUploadTimestamp:v5];

  v6 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:3];
  v8 = [v6 setWithArray:{v7, v12, v13}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"locationsByUuids"];

  [(SPDelegatedLocationResult *)self setLocationsByUuids:v9];
  v10 = *MEMORY[0x277D85DE8];
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  lastUploadTimestamp = [(SPDelegatedLocationResult *)self lastUploadTimestamp];
  [coderCopy encodeObject:lastUploadTimestamp forKey:@"lastUploadTimestamp"];

  locationsByUuids = [(SPDelegatedLocationResult *)self locationsByUuids];
  [coderCopy encodeObject:locationsByUuids forKey:@"locationsByUuids"];
}

@end