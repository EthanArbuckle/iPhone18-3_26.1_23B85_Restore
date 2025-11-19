@interface SPDelegatedLocationResult
- (SPDelegatedLocationResult)initWithCoder:(id)a3;
- (SPDelegatedLocationResult)initWithResults:(id)a3;
- (SPDelegatedLocationResult)initWithTimestamp:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPDelegatedLocationResult

- (SPDelegatedLocationResult)initWithResults:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SPDelegatedLocationResult;
  v5 = [(SPDelegatedLocationResult *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SPDelegatedLocationResult *)v5 setLocationsByUuids:v4];
    [(SPDelegatedLocationResult *)v6 setLastUploadTimestamp:0];
  }

  return v6;
}

- (SPDelegatedLocationResult)initWithTimestamp:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SPDelegatedLocationResult;
  v5 = [(SPDelegatedLocationResult *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SPDelegatedLocationResult *)v5 setLocationsByUuids:0];
    [(SPDelegatedLocationResult *)v6 setLastUploadTimestamp:v4];
  }

  return v6;
}

- (SPDelegatedLocationResult)initWithCoder:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUploadTimestamp"];
  [(SPDelegatedLocationResult *)self setLastUploadTimestamp:v5];

  v6 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:3];
  v8 = [v6 setWithArray:{v7, v12, v13}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"locationsByUuids"];

  [(SPDelegatedLocationResult *)self setLocationsByUuids:v9];
  v10 = *MEMORY[0x277D85DE8];
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SPDelegatedLocationResult *)self lastUploadTimestamp];
  [v4 encodeObject:v5 forKey:@"lastUploadTimestamp"];

  v6 = [(SPDelegatedLocationResult *)self locationsByUuids];
  [v4 encodeObject:v6 forKey:@"locationsByUuids"];
}

@end