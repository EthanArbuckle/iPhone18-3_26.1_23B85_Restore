@interface BMFetchAtomBatchesResponse
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)dictionary;
@end

@implementation BMFetchAtomBatchesResponse

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = BMFetchAtomBatchesResponse;
  v5 = [(BMPeerToPeerMessage *)&v26 initFromDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"unseenPeers"];
    v7 = v5[6];
    v5[6] = v6;

    v8 = objc_autoreleasePoolPush();
    v9 = [dictionaryCopy objectForKeyedSubscript:@"atomBatches"];
    if (!v9 || (+[NSNull null], v10 = objc_claimAutoreleasedReturnValue(), v10, v9 == v10))
    {
      v15 = 0;
    }

    else
    {
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = [NSSet setWithObjects:v11, v12, v13, objc_opt_class(), 0];
      v25 = 0;
      v15 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v14 fromData:v9 error:&v25];
      v16 = v25;
      if (v16)
      {
        v17 = __biome_log_for_category();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          sub_10004998C();
        }
      }

      v5[8] = [v9 length];
    }

    v18 = v5[7];
    v5[7] = v15;
    v19 = v15;

    v20 = [dictionaryCopy objectForKeyedSubscript:@"moreComing"];
    *(v5 + 40) = [v20 BOOLValue];

    v21 = [dictionaryCopy objectForKeyedSubscript:@"batchSequenceNumber"];
    v5[10] = [v21 unsignedIntegerValue];

    v22 = [dictionaryCopy objectForKeyedSubscript:@"deletedLocations"];
    v23 = v5[9];
    v5[9] = v22;

    objc_autoreleasePoolPop(v8);
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_autoreleasePoolPush();
  atomBatches = self->_atomBatches;
  if (atomBatches)
  {
    v22 = 0;
    v5 = [NSKeyedArchiver archivedDataWithRootObject:atomBatches requiringSecureCoding:1 error:&v22];
    v6 = v22;
    if (v6)
    {
      v7 = v6;
      v8 = __biome_log_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_1000499F4();
      }
    }
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v3);
  v23[0] = @"unseenPeers";
  unseenPeers = self->_unseenPeers;
  v10 = unseenPeers;
  if (!unseenPeers)
  {
    v10 = +[NSNull null];
  }

  v20 = v10;
  v24[0] = v10;
  v23[1] = @"atomBatches";
  v11 = v5;
  if (!v5)
  {
    v11 = +[NSNull null];
  }

  v24[1] = v11;
  v23[2] = @"moreComing";
  v12 = [NSNumber numberWithBool:self->_moreComing];
  v24[2] = v12;
  v23[3] = @"batchSequenceNumber";
  v13 = [NSNumber numberWithUnsignedInteger:self->_batchSequenceNumber];
  v24[3] = v13;
  v23[4] = @"deletedLocations";
  deletedLocations = self->_deletedLocations;
  v15 = deletedLocations;
  if (!deletedLocations)
  {
    v15 = +[NSNull null];
  }

  v24[4] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:5];
  v17 = [v16 mutableCopy];

  if (!deletedLocations)
  {
  }

  if (v5)
  {
    if (unseenPeers)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (unseenPeers)
    {
      goto LABEL_17;
    }
  }

LABEL_17:
  v21.receiver = self;
  v21.super_class = BMFetchAtomBatchesResponse;
  dictionaryRepresentation = [(BMPeerToPeerMessage *)&v21 dictionaryRepresentation];
  [v17 addEntriesFromDictionary:dictionaryRepresentation];

  return v17;
}

@end