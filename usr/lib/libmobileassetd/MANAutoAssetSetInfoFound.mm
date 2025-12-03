@interface MANAutoAssetSetInfoFound
- (MANAutoAssetSetInfoFound)initWithCoder:(id)coder;
- (id)description;
- (id)initForAssetSetIdentifier:(id)identifier reportingStatus:(id)status;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MANAutoAssetSetInfoFound

- (id)initForAssetSetIdentifier:(id)identifier reportingStatus:(id)status
{
  identifierCopy = identifier;
  statusCopy = status;
  v12.receiver = self;
  v12.super_class = MANAutoAssetSetInfoFound;
  v9 = [(MANAutoAssetSetInfoFound *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_assetSetIdentifier, identifier);
    objc_storeStrong(p_isa + 2, status);
  }

  return p_isa;
}

- (MANAutoAssetSetInfoFound)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MANAutoAssetSetInfoFound;
  v5 = [(MANAutoAssetSetInfoFound *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentSetStatus"];
    currentSetStatus = v5->_currentSetStatus;
    v5->_currentSetStatus = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assetSetIdentifier = [(MANAutoAssetSetInfoFound *)self assetSetIdentifier];
  [coderCopy encodeObject:assetSetIdentifier forKey:@"assetSetIdentifier"];

  currentSetStatus = [(MANAutoAssetSetInfoFound *)self currentSetStatus];
  [coderCopy encodeObject:currentSetStatus forKey:@"currentSetStatus"];
}

- (id)description
{
  summary = [(MANAutoAssetSetInfoFound *)self summary];
  currentSetStatus = [(MANAutoAssetSetInfoFound *)self currentSetStatus];
  v5 = [currentSetStatus description];
  v6 = [NSString stringWithFormat:@"%@\n%@", summary, v5];

  return v6;
}

- (id)summary
{
  assetSetIdentifier = [(MANAutoAssetSetInfoFound *)self assetSetIdentifier];
  currentSetStatus = [(MANAutoAssetSetInfoFound *)self currentSetStatus];
  summary = [currentSetStatus summary];
  v6 = [NSString stringWithFormat:@"assetSetIdentifier:%@|currentSetStatus:%@", assetSetIdentifier, summary];

  return v6;
}

@end