@interface MADAutoAssetJobInformation
- (MADAutoAssetJobInformation)initWithCoder:(id)a3;
- (id)initForAssetSelector:(id)a3;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADAutoAssetJobInformation

- (id)initForAssetSelector:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = MADAutoAssetJobInformation;
  v6 = [(MADAutoAssetJobInformation *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_initialAssetSelector, a3);
    fullAssetSelector = v7->_fullAssetSelector;
    v7->_fullAssetSelector = 0;

    clientInstance = v7->_clientInstance;
    v7->_clientInstance = 0;

    clientDesire = v7->_clientDesire;
    v7->_clientDesire = 0;

    foundContent = v7->_foundContent;
    v7->_foundContent = 0;

    currentStatus = v7->_currentStatus;
    v7->_currentStatus = 0;
  }

  return v7;
}

- (MADAutoAssetJobInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MADAutoAssetJobInformation;
  v5 = [(MADAutoAssetJobInformation *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"initialAssetSelector"];
    initialAssetSelector = v5->_initialAssetSelector;
    v5->_initialAssetSelector = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullAssetSelector"];
    fullAssetSelector = v5->_fullAssetSelector;
    v5->_fullAssetSelector = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientInstance"];
    clientInstance = v5->_clientInstance;
    v5->_clientInstance = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientDesire"];
    clientDesire = v5->_clientDesire;
    v5->_clientDesire = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"foundContent"];
    foundContent = v5->_foundContent;
    v5->_foundContent = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentStatus"];
    currentStatus = v5->_currentStatus;
    v5->_currentStatus = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetJobInformation *)self initialAssetSelector];
  [v4 encodeObject:v5 forKey:@"initialAssetSelector"];

  v6 = [(MADAutoAssetJobInformation *)self fullAssetSelector];
  [v4 encodeObject:v6 forKey:@"fullAssetSelector"];

  v7 = [(MADAutoAssetJobInformation *)self clientInstance];
  [v4 encodeObject:v7 forKey:@"clientInstance"];

  v8 = [(MADAutoAssetJobInformation *)self clientDesire];
  [v4 encodeObject:v8 forKey:@"clientDesire"];

  v9 = [(MADAutoAssetJobInformation *)self foundContent];
  [v4 encodeObject:v9 forKey:@"foundContent"];

  v10 = [(MADAutoAssetJobInformation *)self currentStatus];
  [v4 encodeObject:v10 forKey:@"currentStatus"];
}

- (id)summary
{
  v3 = [(MADAutoAssetJobInformation *)self initialAssetSelector];
  if (v3)
  {
    v20 = [(MADAutoAssetJobInformation *)self initialAssetSelector];
    v24 = [v20 summary];
  }

  else
  {
    v24 = @"N";
  }

  v4 = [(MADAutoAssetJobInformation *)self fullAssetSelector];
  if (v4)
  {
    v19 = [(MADAutoAssetJobInformation *)self fullAssetSelector];
    v23 = [v19 summary];
  }

  else
  {
    v23 = @"N";
  }

  v5 = [(MADAutoAssetJobInformation *)self clientInstance];
  if (v5)
  {
    v18 = [(MADAutoAssetJobInformation *)self clientInstance];
    v22 = [v18 summary];
  }

  else
  {
    v22 = @"N";
  }

  v6 = [(MADAutoAssetJobInformation *)self clientDesire];
  if (v6)
  {
    v17 = [(MADAutoAssetJobInformation *)self clientDesire];
    v7 = [v17 summary];
  }

  else
  {
    v7 = @"N";
  }

  v8 = [(MADAutoAssetJobInformation *)self foundContent];
  if (v8)
  {
    v16 = [(MADAutoAssetJobInformation *)self foundContent];
    v9 = [v16 summary];
  }

  else
  {
    v9 = @"N";
  }

  v10 = [(MADAutoAssetJobInformation *)self currentStatus];
  if (v10)
  {
    [(MADAutoAssetJobInformation *)self currentStatus];
    v11 = v4;
    v13 = v12 = v3;
    v14 = [v13 summary];
    v21 = [NSString stringWithFormat:@"[initialSelector:%@|fullSelector:%@|clientInstance:%@|clientDesire:%@|foundContent:%@|currentStatus:%@]", v24, v23, v22, v7, v9, v14];

    v3 = v12;
    v4 = v11;
  }

  else
  {
    v21 = [NSString stringWithFormat:@"[initialSelector:%@|fullSelector:%@|clientInstance:%@|clientDesire:%@|foundContent:%@|currentStatus:%@]", v24, v23, v22, v7, v9, @"N"];
  }

  if (v8)
  {
  }

  if (v6)
  {
  }

  if (v5)
  {
  }

  if (v4)
  {
  }

  if (v3)
  {
  }

  return v21;
}

@end