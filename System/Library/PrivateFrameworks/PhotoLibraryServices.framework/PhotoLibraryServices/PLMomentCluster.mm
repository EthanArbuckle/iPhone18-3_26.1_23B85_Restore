@interface PLMomentCluster
- (BOOL)isEqual:(id)equal;
- (PLMomentCluster)initWithMomentClusters:(id)clusters;
- (PLMomentCluster)initWithMoments:(id)moments;
- (unint64_t)hash;
@end

@implementation PLMomentCluster

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      startDate = self->_startDate;
      startDate = [(PLMomentCluster *)equalCopy startDate];
      if ([(NSDate *)startDate isEqual:startDate])
      {
        endDate = self->_endDate;
        endDate = [(PLMomentCluster *)equalCopy endDate];
        if ([(NSDate *)endDate isEqual:endDate])
        {
          v9 = [(NSArray *)self->_moments count];
          moments = [(PLMomentCluster *)equalCopy moments];
          v11 = v9 == [moments count];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_moments count];
  v4 = [(NSDate *)self->_startDate hash]^ v3;
  return v4 ^ [(NSDate *)self->_endDate hash];
}

- (PLMomentCluster)initWithMomentClusters:(id)clusters
{
  v19 = *MEMORY[0x1E69E9840];
  clustersCopy = clusters;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = clustersCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        moments = [*(*(&v14 + 1) + 8 * v10) moments];
        [v5 addObjectsFromArray:moments];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [(PLMomentCluster *)self initWithMoments:v5];
  return v12;
}

- (PLMomentCluster)initWithMoments:(id)moments
{
  momentsCopy = moments;
  if ([momentsCopy count])
  {
    v21.receiver = self;
    v21.super_class = PLMomentCluster;
    v5 = [(PLMomentCluster *)&v21 init];
    if (v5)
    {
      v6 = [momentsCopy copy];
      moments = v5->_moments;
      v5->_moments = v6;

      firstObject = [(NSArray *)v5->_moments firstObject];
      lastObject = [(NSArray *)v5->_moments lastObject];
      startDate = [firstObject startDate];
      startDate = v5->_startDate;
      v5->_startDate = startDate;

      endDate = [lastObject endDate];
      endDate = v5->_endDate;
      v5->_endDate = endDate;

      localStartDate = [firstObject localStartDate];
      localStartDate = v5->_localStartDate;
      v5->_localStartDate = localStartDate;

      localEndDate = [lastObject localEndDate];
      localEndDate = v5->_localEndDate;
      v5->_localEndDate = localEndDate;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    v19 = PLMomentsGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Trying to initialize MomentCluster with 0 moments.", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end