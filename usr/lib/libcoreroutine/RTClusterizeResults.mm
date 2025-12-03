@interface RTClusterizeResults
- (RTClusterizeResults)initWithClusters:(id)clusters objectIDs:(id)ds;
@end

@implementation RTClusterizeResults

- (RTClusterizeResults)initWithClusters:(id)clusters objectIDs:(id)ds
{
  clustersCopy = clusters;
  dsCopy = ds;
  v9 = dsCopy;
  if (!clustersCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: clusters";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    goto LABEL_9;
  }

  if (!dsCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: objectIDs";
    goto LABEL_12;
  }

  v16.receiver = self;
  v16.super_class = RTClusterizeResults;
  v10 = [(RTClusterizeResults *)&v16 init];
  p_isa = &v10->super.isa;
  if (v10)
  {
    objc_storeStrong(&v10->_clusters, clusters);
    objc_storeStrong(p_isa + 2, ds);
  }

  self = p_isa;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

@end