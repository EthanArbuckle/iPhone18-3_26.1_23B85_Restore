@interface BAContentRequestTelemetry
- (BAContentRequestTelemetry)initWithContentRequest:(int64_t)a3 applicationIdentifier:(id)a4 installSource:(int64_t)a5 downloads:(id)a6;
- (BOOL)allDownloadsCompleted;
- (id)_average:(id)a3;
- (id)_formatMostFrequentError;
- (id)_median:(id)a3;
- (id)description;
- (id)formatError:(id)a3 withCount:(unint64_t)a4;
- (id)payload;
- (void)recordDownloadCompletion:(id)a3 error:(id)a4;
@end

@implementation BAContentRequestTelemetry

- (BAContentRequestTelemetry)initWithContentRequest:(int64_t)a3 applicationIdentifier:(id)a4 installSource:(int64_t)a5 downloads:(id)a6
{
  v11 = a4;
  v12 = a6;
  v33.receiver = self;
  v33.super_class = BAContentRequestTelemetry;
  v13 = [(BAContentRequestTelemetry *)&v33 init];
  v14 = v13;
  if (v13)
  {
    v13->_contentRequest = a3;
    v13->_installSource = a5;
    objc_storeStrong(&v13->_applicationIdentifier, a4);
    v14->_invalid = 0;
    v15 = +[NSMutableArray array];
    fileSizes = v14->_fileSizes;
    v14->_fileSizes = v15;

    v17 = +[NSMutableDictionary dictionary];
    uniqueErrorCounts = v14->_uniqueErrorCounts;
    v14->_uniqueErrorCounts = v17;

    v19 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v12 count]);
    remainingDownloadUniqueIdentifiers = v14->_remainingDownloadUniqueIdentifiers;
    v14->_remainingDownloadUniqueIdentifiers = v19;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v21 = v12;
    v22 = [v21 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v30;
      do
      {
        v25 = 0;
        do
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = v14->_remainingDownloadUniqueIdentifiers;
          v27 = [*(*(&v29 + 1) + 8 * v25) uniqueIdentifier];
          [(NSMutableSet *)v26 addObject:v27];

          v25 = v25 + 1;
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v23);
    }
  }

  return v14;
}

- (void)recordDownloadCompletion:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BAContentRequestTelemetry *)self remainingDownloadUniqueIdentifiers];
  v9 = [v6 uniqueIdentifier];
  v10 = [v8 containsObject:v9];

  if ((v10 & 1) == 0)
  {
    v14 = sub_1000104FC();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v20 = [v6 uniqueIdentifier];
    v22 = 138543362;
    v23 = v20;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "BAContentRequestTelemetry informed about unknown download with identifier %{public}@", &v22, 0xCu);
LABEL_11:

    goto LABEL_12;
  }

  v11 = [(BAContentRequestTelemetry *)self remainingDownloadUniqueIdentifiers];
  v12 = [v6 uniqueIdentifier];
  [v11 removeObject:v12];

  os_unfair_lock_lock([v6 downloadLock]);
  v13 = [v6 necessity];
  v14 = [v6 downloadedFileSize];
  os_unfair_lock_unlock([v6 downloadLock]);
  if (self->_invalid || !(v7 | v14))
  {
    self->_invalid = 1;
    v20 = sub_1000104FC();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100047B64(v6, v20);
    }

    goto LABEL_11;
  }

  if (v7)
  {
    ++self->_failureCount;
    v15 = [v7 domain];
    v16 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v15, [v7 code], 0);

    v17 = [(BAContentRequestTelemetry *)self uniqueErrorCounts];
    v18 = [v17 objectForKey:v16];

    if (v18)
    {
      v19 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v18 intValue] + 1);
    }

    else
    {
      v19 = &off_10007D430;
    }

    v21 = [(BAContentRequestTelemetry *)self uniqueErrorCounts];
    [v21 setObject:v19 forKeyedSubscript:v16];
  }

  else
  {
    ++self->_successCount;
    v16 = [(BAContentRequestTelemetry *)self fileSizes];
    [v16 addObject:v14];
  }

  if (v13 == 1)
  {
    ++self->_essentialAssetsCount;
  }

  else
  {
    ++self->_optionalAssetsCount;
  }

LABEL_12:
}

- (BOOL)allDownloadsCompleted
{
  v2 = [(BAContentRequestTelemetry *)self remainingDownloadUniqueIdentifiers];
  v3 = [v2 count] == 0;

  return v3;
}

- (id)payload
{
  if (self->_invalid)
  {
    v2 = &__NSDictionary0__struct;
    goto LABEL_16;
  }

  v4 = [(BAContentRequestTelemetry *)self eventPayload];

  if (!v4)
  {
    v5 = [(BAContentRequestTelemetry *)self _formatMostFrequentError];
    v6 = [(BAContentRequestTelemetry *)self fileSizes];
    [v6 sortUsingSelector:"compare:"];

    v7 = [(BAContentRequestTelemetry *)self fileSizes];
    v8 = [(BAContentRequestTelemetry *)self _median:v7];

    v9 = [(BAContentRequestTelemetry *)self fileSizes];
    v10 = [(BAContentRequestTelemetry *)self _average:v9];

    v23 = sub_10000A16C(self->_installSource);
    v24[0] = @"AssetCount";
    v22 = [NSNumber numberWithInt:(self->_optionalAssetsCount + self->_essentialAssetsCount)];
    v25[0] = v22;
    v24[1] = @"SuccessCount";
    v21 = [NSNumber numberWithInt:self->_successCount];
    v25[1] = v21;
    v24[2] = @"FailureCount";
    v20 = [NSNumber numberWithInt:self->_failureCount];
    v25[2] = v20;
    v24[3] = @"EssentialAssetsCount";
    v19 = [NSNumber numberWithInt:self->_essentialAssetsCount];
    v25[3] = v19;
    v24[4] = @"OptionalAssetsCount";
    v11 = [NSNumber numberWithInt:self->_optionalAssetsCount];
    v25[4] = v11;
    v24[5] = @"MedFileSize";
    v12 = v8;
    if (!v8)
    {
      v12 = +[NSNull null];
    }

    v25[5] = v12;
    v24[6] = @"AvgFileSize";
    v13 = v10;
    if (!v10)
    {
      v13 = +[NSNull null];
    }

    v25[6] = v13;
    v24[7] = @"Type";
    v14 = sub_10002B004(self->_contentRequest);
    v25[7] = v14;
    v24[8] = @"MostFrequentError";
    v15 = v5;
    if (!v5)
    {
      v15 = +[NSNull null];
    }

    applicationIdentifier = self->_applicationIdentifier;
    v25[8] = v15;
    v25[9] = applicationIdentifier;
    v24[9] = @"BundleIdentifier";
    v24[10] = @"InstallSource";
    v25[10] = v23;
    v17 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:11];
    [(BAContentRequestTelemetry *)self setEventPayload:v17];

    if (!v5)
    {
    }

    if (v10)
    {
      if (v8)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {

      if (v8)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_14;
  }

LABEL_15:
  v2 = [(BAContentRequestTelemetry *)self eventPayload];
LABEL_16:

  return v2;
}

- (id)formatError:(id)a3 withCount:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 domain];
  v7 = [v5 code];

  v8 = [NSString stringWithFormat:@"[%@:%ld:%lu]", v6, v7, a4];

  return v8;
}

- (id)description
{
  failureCount = self->_failureCount;
  successCount = self->_successCount;
  essentialAssetsCount = self->_essentialAssetsCount;
  optionalAssetsCount = self->_optionalAssetsCount;
  v7 = [(BAContentRequestTelemetry *)self fileSizes];
  v8 = [v7 componentsJoinedByString:{@", "}];
  v9 = [(BAContentRequestTelemetry *)self uniqueErrorCounts];
  v10 = [NSString stringWithFormat:@"Successes=%d, failures=%d, essentials=%d, optionals=%d, sizes=%@, errors=%@", successCount, failureCount, essentialAssetsCount, optionalAssetsCount, v8, v9];

  return v10;
}

- (id)_median:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  if (v4)
  {
    v5 = v4 >> 1;
    if (v4)
    {
      v12 = [v3 objectAtIndex:v5];
      v10 = [v12 unsignedLongLongValue];
    }

    else
    {
      v6 = [v3 objectAtIndex:v5 - 1];
      v7 = [v6 unsignedLongLongValue];

      v8 = [v3 objectAtIndex:v5];
      v9 = [v8 unsignedLongLongValue];

      v10 = ((v7 + v9) >> 1);
    }

    v11 = [NSNumber numberWithUnsignedInteger:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_average:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v13;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v7 += [*(*(&v12 + 1) + 8 * i) unsignedLongLongValue];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", v7 / [v4 count]);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_formatMostFrequentError
{
  v3 = [(BAContentRequestTelemetry *)self uniqueErrorCounts];
  v4 = [v3 count];

  if (v4)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = [(BAContentRequestTelemetry *)self uniqueErrorCounts];
    v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = 0;
      v9 = *v20;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = [(BAContentRequestTelemetry *)self uniqueErrorCounts];
          v13 = [v12 objectForKeyedSubscript:v11];
          v14 = [v13 unsignedLongLongValue];

          if (v14 > v7)
          {
            v15 = v11;

            v7 = v14;
            v8 = v15;
          }
        }

        v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v16 = [(BAContentRequestTelemetry *)self formatError:v8 withCount:v7];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end