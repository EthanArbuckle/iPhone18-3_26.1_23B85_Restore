@interface PLFeatureAvailabilitySignalledChanges
- (PLFeatureAvailabilitySignalledChanges)initWithCoder:(id)coder;
- (PLFeatureAvailabilitySignalledChanges)initWithSourceIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLFeatureAvailabilitySignalledChanges

- (void)encodeWithCoder:(id)coder
{
  sourceIdentifier = self->_sourceIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:sourceIdentifier forKey:@"sourceIdentifier"];
  [coderCopy encodeObject:self->_photosKnowledgeGraphIsReady forKey:@"pkgIsReady"];
  [coderCopy encodeObject:self->_lastFullVUIndexClusterDate forKey:@"lastVUClusterDate"];
  [coderCopy encodeBool:self->_resetLastFullVUIndexClusterDate forKey:@"resetVUClusterDate"];
  [coderCopy encodeObject:self->_fractionOfCuratedAssetsIndexedInVUClustering forKey:@"fractionOfAssetsInVU"];
  [coderCopy encodeObject:self->_countOfAssetsIndexedInVUClustering forKey:@"countOfAssetsInVU"];
}

- (PLFeatureAvailabilitySignalledChanges)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceIdentifier"];
  v6 = [(PLFeatureAvailabilitySignalledChanges *)self initWithSourceIdentifier:v5];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pkgIsReady"];
    photosKnowledgeGraphIsReady = v6->_photosKnowledgeGraphIsReady;
    v6->_photosKnowledgeGraphIsReady = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastVUClusterDate"];
    lastFullVUIndexClusterDate = v6->_lastFullVUIndexClusterDate;
    v6->_lastFullVUIndexClusterDate = v9;

    v6->_resetLastFullVUIndexClusterDate = [coderCopy decodeBoolForKey:@"resetVUClusterDate"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fractionOfAssetsInVU"];
    fractionOfCuratedAssetsIndexedInVUClustering = v6->_fractionOfCuratedAssetsIndexedInVUClustering;
    v6->_fractionOfCuratedAssetsIndexedInVUClustering = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countOfAssetsInVU"];
    countOfAssetsIndexedInVUClustering = v6->_countOfAssetsIndexedInVUClustering;
    v6->_countOfAssetsIndexedInVUClustering = v13;
  }

  return v6;
}

- (PLFeatureAvailabilitySignalledChanges)initWithSourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PLFeatureAvailabilitySignalledChanges;
  v6 = [(PLFeatureAvailabilitySignalledChanges *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceIdentifier, identifier);
    v7->_shouldSignalBackgroundProcessing = 1;
  }

  return v7;
}

@end