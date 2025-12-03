@interface MADAutoAssetJobInformation
- (MADAutoAssetJobInformation)initWithCoder:(id)coder;
- (id)initForAssetSelector:(id)selector;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADAutoAssetJobInformation

- (id)initForAssetSelector:(id)selector
{
  selectorCopy = selector;
  v14.receiver = self;
  v14.super_class = MADAutoAssetJobInformation;
  v6 = [(MADAutoAssetJobInformation *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_initialAssetSelector, selector);
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

- (MADAutoAssetJobInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = MADAutoAssetJobInformation;
  v5 = [(MADAutoAssetJobInformation *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"initialAssetSelector"];
    initialAssetSelector = v5->_initialAssetSelector;
    v5->_initialAssetSelector = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullAssetSelector"];
    fullAssetSelector = v5->_fullAssetSelector;
    v5->_fullAssetSelector = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientInstance"];
    clientInstance = v5->_clientInstance;
    v5->_clientInstance = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDesire"];
    clientDesire = v5->_clientDesire;
    v5->_clientDesire = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"foundContent"];
    foundContent = v5->_foundContent;
    v5->_foundContent = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentStatus"];
    currentStatus = v5->_currentStatus;
    v5->_currentStatus = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  initialAssetSelector = [(MADAutoAssetJobInformation *)self initialAssetSelector];
  [coderCopy encodeObject:initialAssetSelector forKey:@"initialAssetSelector"];

  fullAssetSelector = [(MADAutoAssetJobInformation *)self fullAssetSelector];
  [coderCopy encodeObject:fullAssetSelector forKey:@"fullAssetSelector"];

  clientInstance = [(MADAutoAssetJobInformation *)self clientInstance];
  [coderCopy encodeObject:clientInstance forKey:@"clientInstance"];

  clientDesire = [(MADAutoAssetJobInformation *)self clientDesire];
  [coderCopy encodeObject:clientDesire forKey:@"clientDesire"];

  foundContent = [(MADAutoAssetJobInformation *)self foundContent];
  [coderCopy encodeObject:foundContent forKey:@"foundContent"];

  currentStatus = [(MADAutoAssetJobInformation *)self currentStatus];
  [coderCopy encodeObject:currentStatus forKey:@"currentStatus"];
}

- (id)summary
{
  initialAssetSelector = [(MADAutoAssetJobInformation *)self initialAssetSelector];
  if (initialAssetSelector)
  {
    initialAssetSelector2 = [(MADAutoAssetJobInformation *)self initialAssetSelector];
    summary = [initialAssetSelector2 summary];
  }

  else
  {
    summary = @"N";
  }

  fullAssetSelector = [(MADAutoAssetJobInformation *)self fullAssetSelector];
  if (fullAssetSelector)
  {
    fullAssetSelector2 = [(MADAutoAssetJobInformation *)self fullAssetSelector];
    summary2 = [fullAssetSelector2 summary];
  }

  else
  {
    summary2 = @"N";
  }

  clientInstance = [(MADAutoAssetJobInformation *)self clientInstance];
  if (clientInstance)
  {
    clientInstance2 = [(MADAutoAssetJobInformation *)self clientInstance];
    summary3 = [clientInstance2 summary];
  }

  else
  {
    summary3 = @"N";
  }

  clientDesire = [(MADAutoAssetJobInformation *)self clientDesire];
  if (clientDesire)
  {
    clientDesire2 = [(MADAutoAssetJobInformation *)self clientDesire];
    summary4 = [clientDesire2 summary];
  }

  else
  {
    summary4 = @"N";
  }

  foundContent = [(MADAutoAssetJobInformation *)self foundContent];
  if (foundContent)
  {
    foundContent2 = [(MADAutoAssetJobInformation *)self foundContent];
    summary5 = [foundContent2 summary];
  }

  else
  {
    summary5 = @"N";
  }

  currentStatus = [(MADAutoAssetJobInformation *)self currentStatus];
  if (currentStatus)
  {
    [(MADAutoAssetJobInformation *)self currentStatus];
    v11 = fullAssetSelector;
    v13 = v12 = initialAssetSelector;
    summary6 = [v13 summary];
    v21 = [NSString stringWithFormat:@"[initialSelector:%@|fullSelector:%@|clientInstance:%@|clientDesire:%@|foundContent:%@|currentStatus:%@]", summary, summary2, summary3, summary4, summary5, summary6];

    initialAssetSelector = v12;
    fullAssetSelector = v11;
  }

  else
  {
    v21 = [NSString stringWithFormat:@"[initialSelector:%@|fullSelector:%@|clientInstance:%@|clientDesire:%@|foundContent:%@|currentStatus:%@]", summary, summary2, summary3, summary4, summary5, @"N"];
  }

  if (foundContent)
  {
  }

  if (clientDesire)
  {
  }

  if (clientInstance)
  {
  }

  if (fullAssetSelector)
  {
  }

  if (initialAssetSelector)
  {
  }

  return v21;
}

@end