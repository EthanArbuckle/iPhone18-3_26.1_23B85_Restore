@interface BAContentRequestTelemetry
- (BAContentRequestTelemetry)initWithContentRequest:(int64_t)request applicationIdentifier:(id)identifier installSource:(int64_t)source downloads:(id)downloads;
- (BOOL)allDownloadsCompleted;
- (id)_average:(id)_average;
- (id)_formatMostFrequentError;
- (id)_median:(id)_median;
- (id)description;
- (id)formatError:(id)error withCount:(unint64_t)count;
- (id)payload;
- (void)recordDownloadCompletion:(id)completion error:(id)error;
@end

@implementation BAContentRequestTelemetry

- (BAContentRequestTelemetry)initWithContentRequest:(int64_t)request applicationIdentifier:(id)identifier installSource:(int64_t)source downloads:(id)downloads
{
  identifierCopy = identifier;
  downloadsCopy = downloads;
  v33.receiver = self;
  v33.super_class = BAContentRequestTelemetry;
  v13 = [(BAContentRequestTelemetry *)&v33 init];
  v14 = v13;
  if (v13)
  {
    v13->_contentRequest = request;
    v13->_installSource = source;
    objc_storeStrong(&v13->_applicationIdentifier, identifier);
    v14->_invalid = 0;
    v15 = +[NSMutableArray array];
    fileSizes = v14->_fileSizes;
    v14->_fileSizes = v15;

    v17 = +[NSMutableDictionary dictionary];
    uniqueErrorCounts = v14->_uniqueErrorCounts;
    v14->_uniqueErrorCounts = v17;

    v19 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [downloadsCopy count]);
    remainingDownloadUniqueIdentifiers = v14->_remainingDownloadUniqueIdentifiers;
    v14->_remainingDownloadUniqueIdentifiers = v19;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v21 = downloadsCopy;
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
          uniqueIdentifier = [*(*(&v29 + 1) + 8 * v25) uniqueIdentifier];
          [(NSMutableSet *)v26 addObject:uniqueIdentifier];

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

- (void)recordDownloadCompletion:(id)completion error:(id)error
{
  completionCopy = completion;
  errorCopy = error;
  remainingDownloadUniqueIdentifiers = [(BAContentRequestTelemetry *)self remainingDownloadUniqueIdentifiers];
  uniqueIdentifier = [completionCopy uniqueIdentifier];
  v10 = [remainingDownloadUniqueIdentifiers containsObject:uniqueIdentifier];

  if ((v10 & 1) == 0)
  {
    downloadedFileSize = sub_1000104FC();
    if (!os_log_type_enabled(downloadedFileSize, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    uniqueIdentifier2 = [completionCopy uniqueIdentifier];
    v22 = 138543362;
    v23 = uniqueIdentifier2;
    _os_log_impl(&_mh_execute_header, downloadedFileSize, OS_LOG_TYPE_DEFAULT, "BAContentRequestTelemetry informed about unknown download with identifier %{public}@", &v22, 0xCu);
LABEL_11:

    goto LABEL_12;
  }

  remainingDownloadUniqueIdentifiers2 = [(BAContentRequestTelemetry *)self remainingDownloadUniqueIdentifiers];
  uniqueIdentifier3 = [completionCopy uniqueIdentifier];
  [remainingDownloadUniqueIdentifiers2 removeObject:uniqueIdentifier3];

  os_unfair_lock_lock([completionCopy downloadLock]);
  necessity = [completionCopy necessity];
  downloadedFileSize = [completionCopy downloadedFileSize];
  os_unfair_lock_unlock([completionCopy downloadLock]);
  if (self->_invalid || !(errorCopy | downloadedFileSize))
  {
    self->_invalid = 1;
    uniqueIdentifier2 = sub_1000104FC();
    if (os_log_type_enabled(uniqueIdentifier2, OS_LOG_TYPE_ERROR))
    {
      sub_100047B64(completionCopy, uniqueIdentifier2);
    }

    goto LABEL_11;
  }

  if (errorCopy)
  {
    ++self->_failureCount;
    domain = [errorCopy domain];
    fileSizes = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain, [errorCopy code], 0);

    uniqueErrorCounts = [(BAContentRequestTelemetry *)self uniqueErrorCounts];
    v18 = [uniqueErrorCounts objectForKey:fileSizes];

    if (v18)
    {
      v19 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v18 intValue] + 1);
    }

    else
    {
      v19 = &off_10007D430;
    }

    uniqueErrorCounts2 = [(BAContentRequestTelemetry *)self uniqueErrorCounts];
    [uniqueErrorCounts2 setObject:v19 forKeyedSubscript:fileSizes];
  }

  else
  {
    ++self->_successCount;
    fileSizes = [(BAContentRequestTelemetry *)self fileSizes];
    [fileSizes addObject:downloadedFileSize];
  }

  if (necessity == 1)
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
  remainingDownloadUniqueIdentifiers = [(BAContentRequestTelemetry *)self remainingDownloadUniqueIdentifiers];
  v3 = [remainingDownloadUniqueIdentifiers count] == 0;

  return v3;
}

- (id)payload
{
  if (self->_invalid)
  {
    eventPayload2 = &__NSDictionary0__struct;
    goto LABEL_16;
  }

  eventPayload = [(BAContentRequestTelemetry *)self eventPayload];

  if (!eventPayload)
  {
    _formatMostFrequentError = [(BAContentRequestTelemetry *)self _formatMostFrequentError];
    fileSizes = [(BAContentRequestTelemetry *)self fileSizes];
    [fileSizes sortUsingSelector:"compare:"];

    fileSizes2 = [(BAContentRequestTelemetry *)self fileSizes];
    v8 = [(BAContentRequestTelemetry *)self _median:fileSizes2];

    fileSizes3 = [(BAContentRequestTelemetry *)self fileSizes];
    v10 = [(BAContentRequestTelemetry *)self _average:fileSizes3];

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
    v15 = _formatMostFrequentError;
    if (!_formatMostFrequentError)
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

    if (!_formatMostFrequentError)
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
  eventPayload2 = [(BAContentRequestTelemetry *)self eventPayload];
LABEL_16:

  return eventPayload2;
}

- (id)formatError:(id)error withCount:(unint64_t)count
{
  errorCopy = error;
  domain = [errorCopy domain];
  code = [errorCopy code];

  v8 = [NSString stringWithFormat:@"[%@:%ld:%lu]", domain, code, count];

  return v8;
}

- (id)description
{
  failureCount = self->_failureCount;
  successCount = self->_successCount;
  essentialAssetsCount = self->_essentialAssetsCount;
  optionalAssetsCount = self->_optionalAssetsCount;
  fileSizes = [(BAContentRequestTelemetry *)self fileSizes];
  v8 = [fileSizes componentsJoinedByString:{@", "}];
  uniqueErrorCounts = [(BAContentRequestTelemetry *)self uniqueErrorCounts];
  v10 = [NSString stringWithFormat:@"Successes=%d, failures=%d, essentials=%d, optionals=%d, sizes=%@, errors=%@", successCount, failureCount, essentialAssetsCount, optionalAssetsCount, v8, uniqueErrorCounts];

  return v10;
}

- (id)_median:(id)_median
{
  _medianCopy = _median;
  v4 = [_medianCopy count];
  if (v4)
  {
    v5 = v4 >> 1;
    if (v4)
    {
      v12 = [_medianCopy objectAtIndex:v5];
      unsignedLongLongValue = [v12 unsignedLongLongValue];
    }

    else
    {
      v6 = [_medianCopy objectAtIndex:v5 - 1];
      unsignedLongLongValue2 = [v6 unsignedLongLongValue];

      v8 = [_medianCopy objectAtIndex:v5];
      unsignedLongLongValue3 = [v8 unsignedLongLongValue];

      unsignedLongLongValue = ((unsignedLongLongValue2 + unsignedLongLongValue3) >> 1);
    }

    v11 = [NSNumber numberWithUnsignedInteger:unsignedLongLongValue];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_average:(id)_average
{
  _averageCopy = _average;
  if ([_averageCopy count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = _averageCopy;
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
  uniqueErrorCounts = [(BAContentRequestTelemetry *)self uniqueErrorCounts];
  v4 = [uniqueErrorCounts count];

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
          uniqueErrorCounts2 = [(BAContentRequestTelemetry *)self uniqueErrorCounts];
          v13 = [uniqueErrorCounts2 objectForKeyedSubscript:v11];
          unsignedLongLongValue = [v13 unsignedLongLongValue];

          if (unsignedLongLongValue > v7)
          {
            v15 = v11;

            v7 = unsignedLongLongValue;
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