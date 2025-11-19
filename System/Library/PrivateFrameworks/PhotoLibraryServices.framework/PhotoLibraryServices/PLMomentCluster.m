@interface PLMomentCluster
- (BOOL)isEqual:(id)a3;
- (PLMomentCluster)initWithMomentClusters:(id)a3;
- (PLMomentCluster)initWithMoments:(id)a3;
- (unint64_t)hash;
@end

@implementation PLMomentCluster

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      startDate = self->_startDate;
      v6 = [(PLMomentCluster *)v4 startDate];
      if ([(NSDate *)startDate isEqual:v6])
      {
        endDate = self->_endDate;
        v8 = [(PLMomentCluster *)v4 endDate];
        if ([(NSDate *)endDate isEqual:v8])
        {
          v9 = [(NSArray *)self->_moments count];
          v10 = [(PLMomentCluster *)v4 moments];
          v11 = v9 == [v10 count];
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

- (PLMomentCluster)initWithMomentClusters:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
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

        v11 = [*(*(&v14 + 1) + 8 * v10) moments];
        [v5 addObjectsFromArray:v11];

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

- (PLMomentCluster)initWithMoments:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v21.receiver = self;
    v21.super_class = PLMomentCluster;
    v5 = [(PLMomentCluster *)&v21 init];
    if (v5)
    {
      v6 = [v4 copy];
      moments = v5->_moments;
      v5->_moments = v6;

      v8 = [(NSArray *)v5->_moments firstObject];
      v9 = [(NSArray *)v5->_moments lastObject];
      v10 = [v8 startDate];
      startDate = v5->_startDate;
      v5->_startDate = v10;

      v12 = [v9 endDate];
      endDate = v5->_endDate;
      v5->_endDate = v12;

      v14 = [v8 localStartDate];
      localStartDate = v5->_localStartDate;
      v5->_localStartDate = v14;

      v16 = [v9 localEndDate];
      localEndDate = v5->_localEndDate;
      v5->_localEndDate = v16;
    }

    self = v5;
    v18 = self;
  }

  else
  {
    v19 = PLMomentsGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Trying to initialize MomentCluster with 0 moments.", buf, 2u);
    }

    v18 = 0;
  }

  return v18;
}

@end