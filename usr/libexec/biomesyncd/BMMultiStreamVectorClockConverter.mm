@interface BMMultiStreamVectorClockConverter
+ (id)_reinitializeSiteIdentifier:(id)identifier;
+ (id)multiStreamRangeClockVectorFromIndexClockVectors:(id)vectors;
+ (id)multiStreamTimestampClockVectorToVectorClock:(id)clock;
+ (id)multiStreamVectorClockToTimestampVectorClock:(id)clock;
+ (id)rangeTimestampClockVectorFromIndexClockVector:(id)vector;
+ (id)timestampClockVectorToTimeStampVector:(id)vector;
+ (id)timestampVectorToTimeStampClockVector:(id)vector;
- (BMMultiStreamVectorClockConverter)init;
@end

@implementation BMMultiStreamVectorClockConverter

- (BMMultiStreamVectorClockConverter)init
{
  v3.receiver = self;
  v3.super_class = BMMultiStreamVectorClockConverter;
  return [(BMMultiStreamVectorClockConverter *)&v3 init];
}

+ (id)_reinitializeSiteIdentifier:(id)identifier
{
  identifierCopy = identifier;
  modifier = [identifierCopy modifier];

  if (!modifier)
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_10004774C(identifierCopy, v5);
    }
  }

  v6 = [CKDistributedSiteIdentifier alloc];
  identifier = [identifierCopy identifier];
  modifier2 = [identifierCopy modifier];
  v9 = [v6 initWithIdentifier:identifier modifier:modifier2];

  return v9;
}

+ (id)timestampVectorToTimeStampClockVector:(id)vector
{
  vectorCopy = vector;
  v5 = objc_opt_new();
  v16 = vectorCopy;
  timestamps = [vectorCopy timestamps];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [timestamps countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(timestamps);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        siteIdentifierObject = [v11 siteIdentifierObject];
        v13 = [[NSIndexSet alloc] initWithIndex:{objc_msgSend(v11, "clockValue")}];
        v14 = [self _reinitializeSiteIdentifier:siteIdentifierObject];
        [v5 addClockValuesInIndexSet:v13 forSiteIdentifier:v14];
      }

      v8 = [timestamps countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)timestampClockVectorToTimeStampVector:(id)vector
{
  vectorCopy = vector;
  allSiteIdentifiers = [vectorCopy allSiteIdentifiers];
  v6 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = allSiteIdentifiers;
  v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [self _reinitializeSiteIdentifier:*(*(&v17 + 1) + 8 * i)];
        v12 = [vectorCopy clockValuesForSiteIdentifier:v11];
        v13 = [[CKDistributedTimestamp alloc] initWithSiteIdentifierObject:v11 clockValue:{objc_msgSend(v12, "lastIndex")}];
        [v6 addObject:v13];
      }

      v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [[CKDistributedTimestampVector alloc] initWithTimestamps:v6];

  return v14;
}

+ (id)multiStreamTimestampClockVectorToVectorClock:(id)clock
{
  clockCopy = clock;
  v4 = objc_alloc_init(BMMultiStreamVectorClock);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [clockCopy allKeys];
  v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [clockCopy timestampClockVectorForStreamIdentifier:v9];
        v12 = [BMMultiStreamVectorClockConverter timestampClockVectorToTimeStampVector:v11];
        [(BMMultiStreamVectorClock *)v4 setVectorClockTo:v12 forStreamIdentifier:v9];

        objc_autoreleasePoolPop(v10);
      }

      v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)multiStreamVectorClockToTimestampVectorClock:(id)clock
{
  clockCopy = clock;
  v4 = objc_alloc_init(BMMultiStreamTimestampClockVector);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [clockCopy allKeys];
  v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [clockCopy vectorClockForStreamIdentifier:v9];
        v12 = [BMMultiStreamVectorClockConverter timestampVectorToTimeStampClockVector:v11];
        [(BMMultiStreamTimestampClockVector *)v4 setVectorClockTo:v12 forStreamIdentifier:v9];

        objc_autoreleasePoolPop(v10);
      }

      v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)rangeTimestampClockVectorFromIndexClockVector:(id)vector
{
  vectorCopy = vector;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [vectorCopy allSiteIdentifiers];
  v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [self _reinitializeSiteIdentifier:v10];
        v12 = [vectorCopy clockValuesForSiteIdentifier:v11];
        if ([v12 count] == 1)
        {
          v13 = sub_100005BD4([v12 firstIndex]);
          [v5 addClockValuesInIndexSet:v13 forSiteIdentifier:v10];
        }

        else
        {
          [v5 addClockValuesInIndexSet:v12 forSiteIdentifier:v11];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v5;
}

+ (id)multiStreamRangeClockVectorFromIndexClockVectors:(id)vectors
{
  vectorsCopy = vectors;
  v5 = objc_alloc_init(BMMultiStreamTimestampClockVector);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [vectorsCopy allKeys];
  v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [vectorsCopy timestampClockVectorForStreamIdentifier:v10];
        v13 = [self rangeTimestampClockVectorFromIndexClockVector:v12];
        [(BMMultiStreamTimestampClockVector *)v5 setVectorClockTo:v13 forStreamIdentifier:v10];

        objc_autoreleasePoolPop(v11);
      }

      v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v5;
}

@end