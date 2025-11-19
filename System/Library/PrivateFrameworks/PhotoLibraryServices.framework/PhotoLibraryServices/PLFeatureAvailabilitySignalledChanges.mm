@interface PLFeatureAvailabilitySignalledChanges
- (PLFeatureAvailabilitySignalledChanges)initWithCoder:(id)a3;
- (PLFeatureAvailabilitySignalledChanges)initWithSourceIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PLFeatureAvailabilitySignalledChanges

- (void)encodeWithCoder:(id)a3
{
  sourceIdentifier = self->_sourceIdentifier;
  v5 = a3;
  [v5 encodeObject:sourceIdentifier forKey:@"sourceIdentifier"];
  [v5 encodeObject:self->_photosKnowledgeGraphIsReady forKey:@"pkgIsReady"];
  [v5 encodeObject:self->_lastFullVUIndexClusterDate forKey:@"lastVUClusterDate"];
  [v5 encodeBool:self->_resetLastFullVUIndexClusterDate forKey:@"resetVUClusterDate"];
  [v5 encodeObject:self->_fractionOfCuratedAssetsIndexedInVUClustering forKey:@"fractionOfAssetsInVU"];
  [v5 encodeObject:self->_countOfAssetsIndexedInVUClustering forKey:@"countOfAssetsInVU"];
}

- (PLFeatureAvailabilitySignalledChanges)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceIdentifier"];
  v6 = [(PLFeatureAvailabilitySignalledChanges *)self initWithSourceIdentifier:v5];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pkgIsReady"];
    photosKnowledgeGraphIsReady = v6->_photosKnowledgeGraphIsReady;
    v6->_photosKnowledgeGraphIsReady = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastVUClusterDate"];
    lastFullVUIndexClusterDate = v6->_lastFullVUIndexClusterDate;
    v6->_lastFullVUIndexClusterDate = v9;

    v6->_resetLastFullVUIndexClusterDate = [v4 decodeBoolForKey:@"resetVUClusterDate"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fractionOfAssetsInVU"];
    fractionOfCuratedAssetsIndexedInVUClustering = v6->_fractionOfCuratedAssetsIndexedInVUClustering;
    v6->_fractionOfCuratedAssetsIndexedInVUClustering = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"countOfAssetsInVU"];
    countOfAssetsIndexedInVUClustering = v6->_countOfAssetsIndexedInVUClustering;
    v6->_countOfAssetsIndexedInVUClustering = v13;
  }

  return v6;
}

- (PLFeatureAvailabilitySignalledChanges)initWithSourceIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLFeatureAvailabilitySignalledChanges;
  v6 = [(PLFeatureAvailabilitySignalledChanges *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceIdentifier, a3);
    v7->_shouldSignalBackgroundProcessing = 1;
  }

  return v7;
}

@end