@interface SBKUniversalPlaybackPositionMetadata
+ (id)_testableMetadataItem_1;
+ (id)keyValueStoreItemIdentifierForItem:(id)a3;
+ (id)keyValueStoreItemIdentifierForUniqueStoreID:(int64_t)a3 itemTitle:(id)a4 albumName:(id)a5 itemArtistName:(id)a6 feedURL:(id)a7 feedGUID:(id)a8;
+ (id)metadataWithItemIdentifier:(id)a3 keyValueStorePayload:(id)a4 failuresOkay:(BOOL)a5;
+ (id)metadataWithValuesFromDataSourceItem:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SBKUniversalPlaybackPositionMetadata)init;
- (SBKUniversalPlaybackPositionMetadata)initWithCoder:(id)a3;
- (double)timestamp;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initAsTestableItem;
- (id)keyValueStorePayload;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setTimestamp:(double)a3;
@end

@implementation SBKUniversalPlaybackPositionMetadata

- (id)keyValueStorePayload
{
  v22[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  [(SBKUniversalPlaybackPositionMetadata *)self bookmarkTime];
  v4 = [v3 numberWithDouble:?];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBKUniversalPlaybackPositionMetadata hasBeenPlayed](self, "hasBeenPlayed")}];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SBKUniversalPlaybackPositionMetadata playCount](self, "playCount")}];
  v7 = MEMORY[0x277CCABB0];
  [(SBKUniversalPlaybackPositionMetadata *)self timestamp];
  v8 = [v7 numberWithDouble:?];
  v9 = MEMORY[0x277CBEAC0];
  v22[0] = v4;
  v22[1] = v5;
  v22[2] = v6;
  v22[3] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
  v11 = [v9 dictionaryWithObjects:v10 forKeys:&unk_287CA2870];

  v17 = 0;
  v12 = [MEMORY[0x277CCAC58] dataWithPropertyList:v11 format:200 options:0 error:&v17];
  v13 = v17;
  if (v13)
  {
    v14 = os_log_create("com.apple.amp.StoreBookkeeper", "Default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v19 = self;
      v20 = 2114;
      v21 = v13;
      _os_log_impl(&dword_26BC19000, v14, OS_LOG_TYPE_ERROR, "SBKUniversalPlaybackPositionMetadata - error serializing data. %{public}@ error=%{public}@,", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(NSString *)self->_itemIdentifier isEqual:*(v5 + 2)]&& self->_timestamp == v5[3] && self->_bookmarkTime == v5[4] && self->_hasBeenPlayed == *(v5 + 8) && self->_playCount == *(v5 + 5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_itemIdentifier hash]^ self->_hasBeenPlayed ^ self->_playCount;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_bookmarkTime];
  v5 = v3 ^ [v4 hash];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (double)timestamp
{
  result = self->_timestamp;
  if (result <= -*MEMORY[0x277CBECC8] || result == 0.0)
  {
    return -*MEMORY[0x277CBECC8];
  }

  return result;
}

- (void)setTimestamp:(double)a3
{
  if (-*MEMORY[0x277CBECC8] >= a3 || a3 == 0.0)
  {
    a3 = -*MEMORY[0x277CBECC8];
  }

  self->_timestamp = a3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SBKUniversalPlaybackPositionMetadata);
  v5 = [(SBKUniversalPlaybackPositionMetadata *)self itemIdentifier];
  [(SBKUniversalPlaybackPositionMetadata *)v4 setItemIdentifier:v5];

  [(SBKUniversalPlaybackPositionMetadata *)self timestamp];
  [(SBKUniversalPlaybackPositionMetadata *)v4 setTimestamp:?];
  [(SBKUniversalPlaybackPositionMetadata *)self bookmarkTime];
  [(SBKUniversalPlaybackPositionMetadata *)v4 setBookmarkTime:?];
  [(SBKUniversalPlaybackPositionMetadata *)v4 setHasBeenPlayed:[(SBKUniversalPlaybackPositionMetadata *)self hasBeenPlayed]];
  [(SBKUniversalPlaybackPositionMetadata *)v4 setPlayCount:[(SBKUniversalPlaybackPositionMetadata *)self playCount]];
  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SBKUniversalPlaybackPositionMetadata *)self itemIdentifier];
  v5 = [v4 UTF8String];
  [(SBKUniversalPlaybackPositionMetadata *)self bookmarkTime];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02llu:%02llu:%.2f", (v6 / 3600.0), ((v6 - (3600 * (v6 / 3600.0))) / 60.0), v6 - (3600 * (v6 / 3600.0)) - (60 * ((v6 - (3600 * (v6 / 3600.0))) / 60.0))];
  v8 = [(SBKUniversalPlaybackPositionMetadata *)self hasBeenPlayed];
  v9 = [(SBKUniversalPlaybackPositionMetadata *)self playCount];
  [(SBKUniversalPlaybackPositionMetadata *)self timestamp];
  v11 = v10;
  if (fabs(v10) <= 0.00000011920929)
  {
    v12 = @"no timestamp";
  }

  else if (v10 == 978307200.0)
  {
    v12 = @"*** 1970 timestamp ***";
  }

  else if (v10 == -978307200.0)
  {
    v12 = @"*** (-) 1970 timestamp ***";
  }

  else if (*MEMORY[0x277CBECC8] == v10)
  {
    v12 = @"*** 1904 timestamp ***";
  }

  else if (v10 == -*MEMORY[0x277CBECC8])
  {
    v12 = @"*** (-) 1904 timestamp ***";
  }

  else
  {
    v15 = [MEMORY[0x277CBEAA8] distantPast];
    [v15 timeIntervalSinceReferenceDate];
    v17 = v16;

    if (v17 == v11)
    {
      v12 = @"*** distant past timestamp ***";
    }

    else
    {
      if (TimestampStringFromNSTimeInterval_onceToken != -1)
      {
        dispatch_once(&TimestampStringFromNSTimeInterval_onceToken, &__block_literal_global_675);
      }

      v18 = TimestampStringFromNSTimeInterval_dateFormatter;
      v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v11];
      v20 = [v18 stringFromDate:v19];

      v21 = v20;
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%f) %@", *&v11, v20];
    }
  }

  v13 = [v3 stringWithFormat:@"<SBKMetadata:%p, id=%-32s, bktm=%@, hbpl=%d, plct=%llu, timestamp=%@>", self, v5, v7, v8, v9, v12];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  itemIdentifier = self->_itemIdentifier;
  v5 = a3;
  [v5 encodeObject:itemIdentifier forKey:@"itemIdentifier"];
  [v5 encodeDouble:@"timestamp" forKey:self->_timestamp];
  [v5 encodeDouble:@"bookmarkTime" forKey:self->_bookmarkTime];
  [v5 encodeBool:self->_hasBeenPlayed forKey:@"hasBeenPlayed"];
  [v5 encodeInteger:self->_playCount forKey:@"playCount"];
}

- (SBKUniversalPlaybackPositionMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBKUniversalPlaybackPositionMetadata;
  v5 = [(SBKUniversalPlaybackPositionMetadata *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemIdentifier"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v6;

    [v4 decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v8;
    [v4 decodeDoubleForKey:@"bookmarkTime"];
    v5->_bookmarkTime = v9;
    v5->_hasBeenPlayed = [v4 decodeBoolForKey:@"hasBeenPlayed"];
    v5->_playCount = [v4 decodeIntegerForKey:@"playCount"];
  }

  return v5;
}

- (id)initAsTestableItem
{
  v6.receiver = self;
  v6.super_class = SBKUniversalPlaybackPositionMetadata;
  v2 = [(SBKUniversalPlaybackPositionMetadata *)&v6 init];
  v3 = v2;
  if (v2)
  {
    itemIdentifier = v2->_itemIdentifier;
    v2->_itemIdentifier = @"test-item-identifier";

    v3->_hasBeenPlayed = 1;
    v3->_playCount = 10;
    *&v3->_timestamp = xmmword_26BC3D6A0;
  }

  return v3;
}

- (SBKUniversalPlaybackPositionMetadata)init
{
  v3.receiver = self;
  v3.super_class = SBKUniversalPlaybackPositionMetadata;
  return [(SBKUniversalPlaybackPositionMetadata *)&v3 init];
}

+ (id)metadataWithItemIdentifier:(id)a3 keyValueStorePayload:(id)a4 failuresOkay:(BOOL)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v42 = 0;
    v10 = [MEMORY[0x277CCAC58] propertyListWithData:v9 options:1 format:0 error:&v42];
    v11 = v42;
    if (v11)
    {
      v12 = v11;
      v5 = os_log_create("com.apple.amp.StoreBookkeeper", "Default");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v44 = v12;
        _os_log_impl(&dword_26BC19000, v5, OS_LOG_TYPE_ERROR, "SBKUniversalPlaybackPositionMetadata - error deserializing data. error=%{public}@,", buf, 0xCu);
      }
    }

    if (v10)
    {
      v13 = 0;
    }

    else
    {
      v41 = 0;
      v5 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v9 error:&v41];
      v13 = v41;
      [v5 setDecodingFailurePolicy:0];
      v15 = MEMORY[0x277CBEB98];
      v16 = objc_opt_class();
      v17 = objc_opt_class();
      v18 = objc_opt_class();
      v19 = [v15 setWithObjects:{v16, v17, v18, objc_opt_class(), 0}];
      v10 = [v5 decodeObjectOfClasses:v19 forKey:*MEMORY[0x277CCA308]];

      [v5 finishDecoding];
      if (!v10)
      {
        if (!a5)
        {
          v33 = os_log_create("com.apple.amp.StoreBookkeeper", "Default");
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v44 = v8;
            _os_log_impl(&dword_26BC19000, v33, OS_LOG_TYPE_ERROR, "SBKUniversalPlaybackPositionMetadata - encountered invalid data while unarchiving payload for itemIdentifier: %@", buf, 0xCu);
          }

          v10 = 0;
          v14 = 0;
          goto LABEL_56;
        }

        v10 = 0;
        goto LABEL_52;
      }
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_52;
    }

    v20 = [v10 objectForKey:@"pver"];
    if (!v20 || ([v10 objectForKey:@"pver"], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v23 = [v10 objectForKey:@"pver"];
      v22 = [v23 integerValue];

      if (!v20)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v21 = [v10 objectForKey:@"pver"];
      v22 = [v21 integerValue];
    }

LABEL_18:
    if (!v22)
    {
      v14 = objc_alloc_init(SBKUniversalPlaybackPositionMetadata);
      [(SBKUniversalPlaybackPositionMetadata *)v14 setItemIdentifier:v8];
      v24 = [v10 objectForKey:@"bktm"];
      if (!v24 || ([v10 objectForKey:@"bktm"], v22 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v26 = [v10 objectForKey:@"bktm"];
        [v26 doubleValue];
        [(SBKUniversalPlaybackPositionMetadata *)v14 setBookmarkTime:?];

        if (!v24)
        {
LABEL_24:

          v27 = [v10 objectForKey:@"hbpl"];
          if (!v27 || ([v10 objectForKey:@"hbpl"], v22 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v29 = [v10 objectForKey:@"hbpl"];
            -[SBKUniversalPlaybackPositionMetadata setHasBeenPlayed:](v14, "setHasBeenPlayed:", [v29 BOOLValue]);

            if (!v27)
            {
LABEL_29:

              v30 = [v10 objectForKey:@"plct"];
              if (!v30 || ([v10 objectForKey:@"plct"], v22 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v32 = [v10 objectForKey:@"plct"];
                -[SBKUniversalPlaybackPositionMetadata setPlayCount:](v14, "setPlayCount:", [v32 integerValue]);

                if (!v30)
                {
                  goto LABEL_34;
                }
              }

              else
              {
                v31 = [v10 objectForKey:@"plct"];
                -[SBKUniversalPlaybackPositionMetadata setPlayCount:](v14, "setPlayCount:", [v31 integerValue]);
              }

LABEL_34:
              v33 = [v10 objectForKey:@"tstm"];
              if (!v33 || ([v10 objectForKey:@"tstm"], v22 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v34 = [v10 objectForKey:@"tstm"];
                v36 = 0;
                v35 = 1;
              }

              else
              {
                v34 = [v10 objectForKey:@"tstm"];
                v35 = 0;
                v36 = 1;
              }

              [v34 doubleValue];
              if (v37 <= -*MEMORY[0x277CBECC8] || v37 == 0.0)
              {
                v37 = -*MEMORY[0x277CBECC8];
              }

              [(SBKUniversalPlaybackPositionMetadata *)v14 setTimestamp:v37];
              if (v36)
              {
              }

              if (v35)
              {
              }

              if (v33)
              {
              }

LABEL_56:

              goto LABEL_57;
            }
          }

          else
          {
            v28 = [v10 objectForKey:@"hbpl"];
            -[SBKUniversalPlaybackPositionMetadata setHasBeenPlayed:](v14, "setHasBeenPlayed:", [v28 BOOLValue]);
          }

          goto LABEL_29;
        }
      }

      else
      {
        v25 = [v10 objectForKey:@"bktm"];
        [v25 doubleValue];
        [(SBKUniversalPlaybackPositionMetadata *)v14 setBookmarkTime:?];
      }

      goto LABEL_24;
    }

LABEL_52:
    v14 = 0;
LABEL_57:

    goto LABEL_58;
  }

  v10 = os_log_create("com.apple.amp.StoreBookkeeper", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_26BC19000, v10, OS_LOG_TYPE_ERROR, "SBKUniversalPlaybackPositionMetadata - keyValueStorePayload=nil", buf, 2u);
  }

  v14 = 0;
LABEL_58:

  v39 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)metadataWithValuesFromDataSourceItem:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v7 = MEMORY[0x277CCABB0];
  v8 = [MEMORY[0x277CBEAA8] distantPast];
  [v8 timeIntervalSinceReferenceDate];
  v9 = [v7 numberWithDouble:?];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:0];
  v12 = [v5 initWithObjectsAndKeys:{v6, @"bookmarkTime", v9, @"bookmarkMetadataTimestamp", v10, @"hasBeenPalyed", v11, @"playCount", 0}];

  v13 = MEMORY[0x277CBEB98];
  v14 = [v12 allKeys];
  v15 = [v13 setWithArray:v14];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __77__SBKUniversalPlaybackPositionMetadata_metadataWithValuesFromDataSourceItem___block_invoke;
  v24[3] = &unk_279D22A30;
  v25 = v12;
  v16 = v12;
  [v4 enumerateValuesForProperties:v15 usingBlock:v24];

  v17 = objc_alloc_init(SBKUniversalPlaybackPositionMetadata);
  v18 = [SBKUniversalPlaybackPositionMetadata keyValueStoreItemIdentifierForItem:v4];

  [(SBKUniversalPlaybackPositionMetadata *)v17 setItemIdentifier:v18];
  v19 = [v16 valueForKey:@"bookmarkMetadataTimestamp"];
  [v19 doubleValue];
  [(SBKUniversalPlaybackPositionMetadata *)v17 setTimestamp:?];

  v20 = [v16 valueForKey:@"bookmarkTime"];
  [v20 doubleValue];
  [(SBKUniversalPlaybackPositionMetadata *)v17 setBookmarkTime:?];

  v21 = [v16 valueForKey:@"hasBeenPalyed"];
  -[SBKUniversalPlaybackPositionMetadata setHasBeenPlayed:](v17, "setHasBeenPlayed:", [v21 BOOLValue]);

  v22 = [v16 valueForKey:@"playCount"];
  -[SBKUniversalPlaybackPositionMetadata setPlayCount:](v17, "setPlayCount:", [v22 integerValue]);

  return v17;
}

uint64_t __77__SBKUniversalPlaybackPositionMetadata_metadataWithValuesFromDataSourceItem___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [*(result + 32) setObject:a3 forKey:a2];
  }

  return result;
}

+ (id)keyValueStoreItemIdentifierForUniqueStoreID:(int64_t)a3 itemTitle:(id)a4 albumName:(id)a5 itemArtistName:(id)a6 feedURL:(id)a7 feedGUID:(id)a8
{
  v39[4] = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = v17;
  if (!a3 || v16 || v17)
  {
    v20 = &stru_287C9CB50;
    if (v13)
    {
      v21 = v13;
    }

    else
    {
      v21 = &stru_287C9CB50;
    }

    v38[0] = @"title";
    v38[1] = @"albumTitle";
    if (v14)
    {
      v22 = v14;
    }

    else
    {
      v22 = &stru_287C9CB50;
    }

    v39[0] = v21;
    v39[1] = v22;
    if (v15)
    {
      v23 = v15;
    }

    else
    {
      v23 = &stru_287C9CB50;
    }

    v38[2] = @"artist";
    v38[3] = @"podcastGUID";
    if (v17)
    {
      v20 = v17;
    }

    v39[2] = v23;
    v39[3] = v20;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:4];
    v25 = [v24 mutableCopy];

    if (v16)
    {
      [v25 setObject:v16 forKeyedSubscript:@"podcastURL"];
    }

    v37[0] = @"podcastURL";
    v37[1] = @"podcastGUID";
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
    v19 = storageItemIdentifierForProperties(v26, v25);

    if (!v19)
    {
      v36[0] = @"title";
      v36[1] = @"artist";
      v36[2] = @"albumTitle";
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];
      v19 = storageItemIdentifierForProperties(v27, v25);

      if (!v19)
      {
        v35[0] = @"title";
        v35[1] = @"albumTitle";
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
        v19 = storageItemIdentifierForProperties(v28, v25);

        if (!v19)
        {
          v34[0] = @"title";
          v34[1] = @"artist";
          v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
          v19 = storageItemIdentifierForProperties(v29, v25);

          if (!v19)
          {
            v33 = @"title";
            v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
            v19 = storageItemIdentifierForProperties(v30, v25);
          }
        }
      }
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", a3];
  }

  v31 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)keyValueStoreItemIdentifierForItem:(id)a3
{
  v33[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v33[0] = @"storeItemAdamID";
  v33[1] = @"subscriptionStoreItemAdamID";
  v33[2] = @"mediaEntityType";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
  v5 = valuesForProperties(v3, v4);
  v6 = [v5 objectForKey:@"mediaEntityType"];
  v7 = [v6 integerValue];

  v8 = [v5 objectForKey:@"storeItemAdamID"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = [v5 objectForKey:@"storeItemAdamID"];
  v11 = v10;
  if (isKindOfClass)
  {
    v12 = [v10 longLongValue];
  }

  else
  {
    v12 = [v10 unsignedLongLongValue];
  }

  v13 = v12;

  if (v13)
  {
    goto LABEL_9;
  }

  v14 = [v5 objectForKey:@"subscriptionStoreItemAdamID"];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();
  v16 = [v5 objectForKey:@"subscriptionStoreItemAdamID"];
  v17 = v16;
  v18 = (v15 & 1) != 0 ? [v16 longLongValue] : objc_msgSend(v16, "unsignedLongLongValue");
  v13 = v18;

  if (v13)
  {
LABEL_9:
    if ((v7 - 3) >= 2)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", v13];
LABEL_11:
      v20 = v19;
      goto LABEL_14;
    }
  }

  v32[0] = @"podcastURL";
  v32[1] = @"podcastGUID";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];

  v22 = valuesForProperties(v3, v21);

  v23 = storageItemIdentifierForProperties(v21, v22);
  if (v23)
  {
    goto LABEL_13;
  }

  v31[0] = @"title";
  v31[1] = @"artist";
  v31[2] = @"albumTitle";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];

  v5 = valuesForProperties(v3, v4);

  v19 = storageItemIdentifierForProperties(v4, v5);
  if (v19)
  {
    goto LABEL_11;
  }

  v30[0] = @"title";
  v30[1] = @"albumTitle";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];

  v22 = valuesForProperties(v3, v21);

  v23 = storageItemIdentifierForProperties(v21, v22);
  if (v23)
  {
LABEL_13:
    v20 = v23;
    v4 = v21;
    v5 = v22;
  }

  else
  {
    v29[0] = @"title";
    v29[1] = @"artist";
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];

    v5 = valuesForProperties(v3, v4);

    v19 = storageItemIdentifierForProperties(v4, v5);
    if (v19)
    {
      goto LABEL_11;
    }

    v28 = @"title";
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];

    v27 = valuesForProperties(v3, v26);

    v20 = storageItemIdentifierForProperties(v26, v27);
    v4 = v26;
    v5 = v27;
  }

LABEL_14:

  v24 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)_testableMetadataItem_1
{
  v2 = [[a1 alloc] initAsTestableItem];

  return v2;
}

@end