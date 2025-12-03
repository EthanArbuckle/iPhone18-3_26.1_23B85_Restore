@interface PLPhotosHighlightCluster
- (NSDate)endDate;
- (NSDate)startDate;
- (NSSet)assets;
- (PLPhotosHighlightCluster)initWithMoments:(id)moments;
- (void)_calculatePropertyValues;
- (void)setMoments:(id)moments;
@end

@implementation PLPhotosHighlightCluster

- (void)_calculatePropertyValues
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(PLPhotosHighlightCluster *)self moments];
  v2 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v2)
  {
    v3 = v2;
    timeZoneOffset2 = 0;
    timeZoneOffset = 0;
    v5 = 0;
    v6 = 0;
    v7 = *v22;
    while (1)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        startDate = [v9 startDate];
        endDate = [v9 endDate];
        if (!v6 || [startDate compare:v6] == -1)
        {
          v12 = startDate;

          timeZoneOffset = [v9 timeZoneOffset];
          v6 = v12;
          if (v5)
          {
LABEL_11:
            if ([endDate compare:v5] != 1)
            {
              goto LABEL_13;
            }
          }
        }

        else if (v5)
        {
          goto LABEL_11;
        }

        v13 = endDate;

        timeZoneOffset2 = [v9 timeZoneOffset];
        v5 = v13;
LABEL_13:
      }

      v3 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (!v3)
      {
        goto LABEL_17;
      }
    }
  }

  timeZoneOffset2 = 0;
  timeZoneOffset = 0;
  v5 = 0;
  v6 = 0;
LABEL_17:

  startDate = self->_startDate;
  self->_startDate = v6;
  v15 = v6;

  endDate = self->_endDate;
  self->_endDate = v5;
  v17 = v5;

  self->_startTimeZoneOffset = timeZoneOffset;
  self->_endTimeZoneOffset = timeZoneOffset2;
}

- (NSSet)assets
{
  v19 = *MEMORY[0x1E69E9840];
  assets = self->_assets;
  if (!assets)
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    moments = [(PLPhotosHighlightCluster *)self moments];
    v6 = [moments countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(moments);
          }

          assets = [*(*(&v14 + 1) + 8 * v9) assets];
          [v4 unionSet:assets];

          ++v9;
        }

        while (v7 != v9);
        v7 = [moments countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v11 = [v4 copy];
    v12 = self->_assets;
    self->_assets = v11;

    assets = self->_assets;
  }

  return assets;
}

- (NSDate)endDate
{
  endDate = self->_endDate;
  if (!endDate)
  {
    [(PLPhotosHighlightCluster *)self _calculatePropertyValues];
    endDate = self->_endDate;
  }

  return endDate;
}

- (NSDate)startDate
{
  startDate = self->_startDate;
  if (!startDate)
  {
    [(PLPhotosHighlightCluster *)self _calculatePropertyValues];
    startDate = self->_startDate;
  }

  return startDate;
}

- (void)setMoments:(id)moments
{
  momentsCopy = moments;
  if (self->_moments != momentsCopy)
  {
    v9 = momentsCopy;
    objc_storeStrong(&self->_moments, moments);
    assets = self->_assets;
    self->_assets = 0;

    startDate = self->_startDate;
    self->_startDate = 0;

    endDate = self->_endDate;
    self->_endDate = 0;

    momentsCopy = v9;
  }
}

- (PLPhotosHighlightCluster)initWithMoments:(id)moments
{
  momentsCopy = moments;
  v9.receiver = self;
  v9.super_class = PLPhotosHighlightCluster;
  v6 = [(PLPhotosHighlightCluster *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_moments, moments);
    *&v7->_category = 0;
  }

  return v7;
}

@end