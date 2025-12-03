@interface RTTripClusterWithLikelihood
- (RTTripClusterWithLikelihood)initWithCluster:(id)cluster likelihood:(double)likelihood;
@end

@implementation RTTripClusterWithLikelihood

- (RTTripClusterWithLikelihood)initWithCluster:(id)cluster likelihood:(double)likelihood
{
  clusterCopy = cluster;
  clusterID = [clusterCopy clusterID];
  [clusterCopy startLatitude];
  v45 = v7;
  [clusterCopy startLongitude];
  v44 = v8;
  [clusterCopy endLatitude];
  v43 = v9;
  [clusterCopy endLongitude];
  v41 = v10;
  modeOfTransport = [clusterCopy modeOfTransport];
  lastTimeTaken = [clusterCopy lastTimeTaken];
  countOfTraversal = [clusterCopy countOfTraversal];
  [clusterCopy minTripTime];
  v40 = v13;
  [clusterCopy maxTripTime];
  v39 = v14;
  [clusterCopy avgTripTime];
  v16 = v15;
  [clusterCopy minTripDistance];
  v18 = v17;
  [clusterCopy maxTripDistance];
  v20 = v19;
  [clusterCopy avgTripDistance];
  v22 = v21;
  commuteID = [clusterCopy commuteID];
  isLocked = [clusterCopy isLocked];
  [clusterCopy avgBikeDistance];
  v26 = v25;
  [clusterCopy avgBikeTime];
  v28 = v27;
  [clusterCopy avgWalkDistance];
  v30 = v29;
  [clusterCopy avgWalkTime];
  v32 = v31;
  countOfBikeTraversal = [clusterCopy countOfBikeTraversal];
  countOfWalkTraversal = [clusterCopy countOfWalkTraversal];
  clusterOrder = [clusterCopy clusterOrder];

  v47.receiver = self;
  v47.super_class = RTTripClusterWithLikelihood;
  v38 = clusterOrder;
  v36 = [(RTTripCluster *)&v47 initWithClusterID:clusterID startLatitude:modeOfTransport startLongitude:lastTimeTaken endLatitude:countOfTraversal endLongitude:commuteID modeOfTransport:isLocked lastTimeTaken:v45 countOfTraversal:v44 minTripTime:v43 maxTripTime:v41 avgTripTime:v40 minTripDistance:v39 maxTripDistance:v16 avgTripDistance:v18 commuteID:v20 isLocked:v22 avgBikeDistance:v26 avgBikeTime:v28 avgWalkDistance:v30 avgWalkTime:v32 countOfBikeTraversal:__PAIR64__(countOfWalkTraversal countOfWalkTraversal:countOfBikeTraversal) clusterOrder:v38];

  [(RTTripClusterWithLikelihood *)v36 setLikelihood:likelihood];
  return v36;
}

@end