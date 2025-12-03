@interface PGRevGeoMetricEvent
- (PGRevGeoMetricEvent)initWithNumberOfAssetClustersPerMomentMean:(double)mean numberOfAssetClustersPerMomentStdDev:(double)dev numberOfAssetsPerClusterMean:(double)clusterMean numberOfAssetsPerClusterStdDev:(double)stdDev ratioAssetClustersWithin10mOfCenter:(double)center ratioAssetClustersWithin20mOfCenter:(double)ofCenter ratioAssetClustersWithin50mOfCenter:(double)within50mOfCenter ratioAssetClustersWithin100mOfCenter:(double)self0 ratioAssetClusters100mPlusFromCenter:(double)self1;
- (id)payload;
@end

@implementation PGRevGeoMetricEvent

- (id)payload
{
  v16[9] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:{self->_numberOfAssetClustersPerMomentMean, @"numberOfAssetClustersPerMomentMean"}];
  v16[0] = v3;
  v15[1] = @"numberOfAssetClustersPerMomentStdDev";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_numberOfAssetClustersPerMomentStdDev];
  v16[1] = v4;
  v15[2] = @"numberOfAssetsPerClusterMean";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_numberOfAssetsPerClusterMean];
  v16[2] = v5;
  v15[3] = @"numberOfAssetsPerClusterStdDev";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_numberOfAssetsPerClusterStdDev];
  v16[3] = v6;
  v15[4] = @"ratioAssetClustersWithin10mOfCenter";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_ratioAssetClustersWithin10mOfCenter];
  v16[4] = v7;
  v15[5] = @"ratioAssetClustersWithin20mOfCenter";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_ratioAssetClustersWithin20mOfCenter];
  v16[5] = v8;
  v15[6] = @"ratioAssetClustersWithin50mOfCenter";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_ratioAssetClustersWithin50mOfCenter];
  v16[6] = v9;
  v15[7] = @"ratioAssetClustersWithin100mOfCenter";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_ratioAssetClustersWithin100mOfCenter];
  v16[7] = v10;
  v15[8] = @"ratioAssetClusters100mPlusFromCenter";
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_ratioAssetClusters100mPlusFromCenter];
  v16[8] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:9];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (PGRevGeoMetricEvent)initWithNumberOfAssetClustersPerMomentMean:(double)mean numberOfAssetClustersPerMomentStdDev:(double)dev numberOfAssetsPerClusterMean:(double)clusterMean numberOfAssetsPerClusterStdDev:(double)stdDev ratioAssetClustersWithin10mOfCenter:(double)center ratioAssetClustersWithin20mOfCenter:(double)ofCenter ratioAssetClustersWithin50mOfCenter:(double)within50mOfCenter ratioAssetClustersWithin100mOfCenter:(double)self0 ratioAssetClusters100mPlusFromCenter:(double)self1
{
  v20.receiver = self;
  v20.super_class = PGRevGeoMetricEvent;
  result = [(PGRevGeoMetricEvent *)&v20 init];
  if (result)
  {
    result->_numberOfAssetClustersPerMomentMean = mean;
    result->_numberOfAssetClustersPerMomentStdDev = dev;
    result->_numberOfAssetsPerClusterMean = clusterMean;
    result->_numberOfAssetsPerClusterStdDev = stdDev;
    result->_ratioAssetClustersWithin10mOfCenter = center;
    result->_ratioAssetClustersWithin20mOfCenter = ofCenter;
    result->_ratioAssetClustersWithin50mOfCenter = within50mOfCenter;
    result->_ratioAssetClustersWithin100mOfCenter = within100mOfCenter;
    result->_ratioAssetClusters100mPlusFromCenter = fromCenter;
  }

  return result;
}

@end