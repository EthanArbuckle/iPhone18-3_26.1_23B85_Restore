@interface BMFetchAtomBatchesRequest
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)dictionary;
@end

@implementation BMFetchAtomBatchesRequest

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = BMFetchAtomBatchesRequest;
  v5 = [(BMPeerToPeerMessage *)&v24 initFromDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"batchSize"];
    v5[9] = [v6 unsignedIntegerValue];

    v7 = [dictionaryCopy objectForKeyedSubscript:@"batchSequenceNumber"];
    v5[10] = [v7 unsignedIntegerValue];

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isReciprocalRequest"];
    *(v5 + 40) = [v8 BOOLValue];

    v9 = [dictionaryCopy objectForKeyedSubscript:@"atomBatchVersion"];
    v5[8] = [v9 unsignedIntegerValue];

    v10 = objc_autoreleasePoolPush();
    v11 = [dictionaryCopy objectForKeyedSubscript:@"vectorClock"];
    v23 = 0;
    v12 = [BMMultiStreamVectorClock deserialize:v11 error:&v23];
    v13 = v23;
    v14 = v5[6];
    v5[6] = v12;

    if (v13)
    {
      v15 = __biome_log_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        sub_100049854();
      }
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"rangeClockVectors"];

    if (v16)
    {
      v17 = [dictionaryCopy objectForKeyedSubscript:@"rangeClockVectors"];

      v22 = 0;
      v18 = [BMMultiStreamTimestampClockVector deserialize:v17 error:&v22];
      v13 = v22;
      v19 = v5[7];
      v5[7] = v18;

      if (v13)
      {
        v20 = __biome_log_for_category();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          sub_1000498BC();
        }
      }
    }

    objc_autoreleasePoolPop(v10);
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_autoreleasePoolPush();
  vectorClock = self->_vectorClock;
  v28 = 0;
  v5 = [(BMMultiStreamVectorClock *)vectorClock serialize:&v28];
  v6 = v28;
  if (v6)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100049924();
    }
  }

  objc_autoreleasePoolPop(v3);

  v8 = objc_autoreleasePoolPush();
  rangeClockVectors = self->_rangeClockVectors;
  v27 = 0;
  v10 = [(BMMultiStreamTimestampClockVector *)rangeClockVectors serialize:&v27];
  v11 = v27;
  if (v11)
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_100049924();
    }
  }

  v23 = v11;
  objc_autoreleasePoolPop(v8);
  v29[0] = @"batchSize";
  v13 = [NSNumber numberWithUnsignedInteger:self->_batchSize];
  v30[0] = v13;
  v29[1] = @"batchSequenceNumber";
  v14 = [NSNumber numberWithUnsignedInteger:self->_batchSequenceNumber];
  v30[1] = v14;
  v29[2] = @"vectorClock";
  v15 = v5;
  v25 = v5;
  if (!v5)
  {
    v15 = +[NSData data];
  }

  v30[2] = v15;
  v29[3] = @"rangeClockVectors";
  v16 = v10;
  if (!v10)
  {
    v16 = +[NSData data];
  }

  v30[3] = v16;
  v29[4] = @"isReciprocalRequest";
  v17 = [NSNumber numberWithBool:self->_isReciprocalRequest, v23];
  v30[4] = v17;
  v29[5] = @"atomBatchVersion";
  v18 = [NSNumber numberWithUnsignedInteger:self->_atomBatchVersion];
  v30[5] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:6];
  v20 = [v19 mutableCopy];

  if (!v10)
  {
  }

  if (!v25)
  {
  }

  v26.receiver = self;
  v26.super_class = BMFetchAtomBatchesRequest;
  dictionaryRepresentation = [(BMPeerToPeerMessage *)&v26 dictionaryRepresentation];
  [v20 addEntriesFromDictionary:dictionaryRepresentation];

  return v20;
}

@end