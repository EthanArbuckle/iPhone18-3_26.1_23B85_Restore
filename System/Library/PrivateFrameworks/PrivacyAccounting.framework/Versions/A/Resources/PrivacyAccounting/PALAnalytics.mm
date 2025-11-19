@interface PALAnalytics
- (BOOL)updateWithPublisher:(id)a3 cancellationToken:(id)a4 error:(id *)a5;
- (NSDictionary)eventPayload;
- (PALAnalytics)initWithSettings:(id)a3;
- (double)standardDeviationAccessSizeInBytes;
- (id)description;
- (void)updateWithEvent:(id)a3;
@end

@implementation PALAnalytics

- (PALAnalytics)initWithSettings:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PALAnalytics;
  v6 = [(PALAnalytics *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, a3);
    v7->_totalAccessCount = 0;
    v7->_totalStoreSizeInBytes = 0;
    v8 = +[NSMutableSet set];
    uniqueAccessors = v7->_uniqueAccessors;
    v7->_uniqueAccessors = v8;

    v10 = [NSMutableDictionary dictionaryWithCapacity:10];
    totalAccessCountByCategory = v7->_totalAccessCountByCategory;
    v7->_totalAccessCountByCategory = v10;
  }

  return v7;
}

- (void)updateWithEvent:(id)a3
{
  v21 = a3;
  v4 = [v21 eventBodyData];
  if ([v4 length])
  {
    self->_totalStoreSizeInBytes += [v4 length];
    ++self->_totalAccessCount;
    v5 = [v21 eventBody];
    v6 = v5;
    if (v5)
    {
      uniqueAccessors = self->_uniqueAccessors;
      v8 = [v5 accessor];
      [(NSMutableSet *)uniqueAccessors addObject:v8];

      totalAccessCountByCategory = self->_totalAccessCountByCategory;
      v10 = [v6 category];
      v11 = [(NSMutableDictionary *)totalAccessCountByCategory objectForKeyedSubscript:v10];
      v12 = [v11 unsignedIntegerValue];

      v13 = [NSNumber numberWithUnsignedInteger:v12 + 1];
      v14 = self->_totalAccessCountByCategory;
      v15 = [v6 category];
      [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:v15];
    }

    runningAverageSizeInBytes = self->_runningAverageSizeInBytes;
    v17 = runningAverageSizeInBytes + ([v4 length] - runningAverageSizeInBytes) / self->_totalAccessCount;
    runningSumOfSquaresSizeInBytes = self->_runningSumOfSquaresSizeInBytes;
    v19 = [v4 length] - self->_runningAverageSizeInBytes;
    v20 = [v4 length];
    self->_runningAverageSizeInBytes = v17;
    self->_runningSumOfSquaresSizeInBytes = runningSumOfSquaresSizeInBytes + v19 * (v20 - v17);
  }
}

- (BOOL)updateWithPublisher:(id)a3 cancellationToken:(id)a4 error:(id *)a5
{
  v8 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100001714;
  v23 = sub_100001A10;
  v24 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100006660;
  v18[3] = &unk_100018858;
  v18[4] = &v25;
  v18[5] = &v19;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000066D8;
  v13[3] = &unk_100018880;
  v9 = a4;
  v16 = &v25;
  v17 = &v19;
  v14 = v9;
  v15 = self;
  v10 = [v8 sinkWithCompletion:v18 shouldContinue:v13];
  if (a5)
  {
    *a5 = v20[5];
  }

  v11 = *(v26 + 24);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v11;
}

- (NSDictionary)eventPayload
{
  if (qword_10001ED40 != -1)
  {
    sub_100006AA0();
  }

  v3 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [qword_10001ED48 count] + 1);
  v4 = [NSNumber numberWithBool:[(PALSettings *)self->_settings loggingEnabled]];
  [v3 setObject:v4 forKeyedSubscript:@"enabled"];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = qword_10001ED48;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [qword_10001ED48 objectForKeyedSubscript:{v10, v14}];
        v12 = [(PALAnalytics *)self valueForKeyPath:v11];
        [v3 setObject:v12 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v3;
}

- (double)standardDeviationAccessSizeInBytes
{
  totalAccessCount = self->_totalAccessCount;
  if (totalAccessCount)
  {
    return sqrt(self->_runningSumOfSquaresSizeInBytes / totalAccessCount);
  }

  else
  {
    return 0.0;
  }
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(PALAnalytics *)self eventPayload];
  v5 = [v4 description];
  v6 = [NSString stringWithFormat:@"<%@ %p %@>", v3, self, v5];

  return v6;
}

@end