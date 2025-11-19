@interface RTTripClusterWithLikelihood
- (RTTripClusterWithLikelihood)initWithCluster:(id)a3 likelihood:(double)a4;
@end

@implementation RTTripClusterWithLikelihood

- (RTTripClusterWithLikelihood)initWithCluster:(id)a3 likelihood:(double)a4
{
  v5 = a3;
  v6 = [v5 clusterID];
  [v5 startLatitude];
  v45 = v7;
  [v5 startLongitude];
  v44 = v8;
  [v5 endLatitude];
  v43 = v9;
  [v5 endLongitude];
  v41 = v10;
  v42 = [v5 modeOfTransport];
  v11 = [v5 lastTimeTaken];
  v12 = [v5 countOfTraversal];
  [v5 minTripTime];
  v40 = v13;
  [v5 maxTripTime];
  v39 = v14;
  [v5 avgTripTime];
  v16 = v15;
  [v5 minTripDistance];
  v18 = v17;
  [v5 maxTripDistance];
  v20 = v19;
  [v5 avgTripDistance];
  v22 = v21;
  v23 = [v5 commuteID];
  v24 = [v5 isLocked];
  [v5 avgBikeDistance];
  v26 = v25;
  [v5 avgBikeTime];
  v28 = v27;
  [v5 avgWalkDistance];
  v30 = v29;
  [v5 avgWalkTime];
  v32 = v31;
  v33 = [v5 countOfBikeTraversal];
  v34 = [v5 countOfWalkTraversal];
  v35 = [v5 clusterOrder];

  v47.receiver = self;
  v47.super_class = RTTripClusterWithLikelihood;
  v38 = v35;
  v36 = [(RTTripCluster *)&v47 initWithClusterID:v6 startLatitude:v42 startLongitude:v11 endLatitude:v12 endLongitude:v23 modeOfTransport:v24 lastTimeTaken:v45 countOfTraversal:v44 minTripTime:v43 maxTripTime:v41 avgTripTime:v40 minTripDistance:v39 maxTripDistance:v16 avgTripDistance:v18 commuteID:v20 isLocked:v22 avgBikeDistance:v26 avgBikeTime:v28 avgWalkDistance:v30 avgWalkTime:v32 countOfBikeTraversal:__PAIR64__(v34 countOfWalkTraversal:v33) clusterOrder:v38];

  [(RTTripClusterWithLikelihood *)v36 setLikelihood:a4];
  return v36;
}

@end