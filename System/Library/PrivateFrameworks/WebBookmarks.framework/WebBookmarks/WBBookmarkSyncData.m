@interface WBBookmarkSyncData
+ (id)positionFromContentsOfData:(id)a3;
+ (id)syncDataWithContentsOfData:(id)a3;
- (BOOL)hasGenerationForKey:(id)a3;
- (CKRecord)record;
- (CKShare)shareRecord;
- (NSArray)auxiliaryRecordIDs;
- (NSData)encodedBookmarkSyncData;
- (NSDictionary)positionDictionaryRepresentation;
- (WBBookmarkSyncData)init;
- (WBBookmarkSyncData)initWithCoder:(id)a3;
- (id)auxiliaryRecordForKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)generationForKey:(id)a3;
- (void)clearAllCKRecords;
- (void)clearAllGenerationsExceptState;
- (void)encodeWithCoder:(id)a3;
- (void)incrementGenerationForKey:(id)a3 withDeviceIdentifier:(id)a4;
- (void)setAuxiliaryRecord:(id)a3 forKey:(id)a4;
- (void)setGeneration:(id)a3 forKey:(id)a4;
- (void)setPositionDictionaryRepresentation:(id)a3;
@end

@implementation WBBookmarkSyncData

- (CKShare)shareRecord
{
  v2 = [(CKShare *)self->_shareRecord copy];

  return v2;
}

+ (id)positionFromContentsOfData:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v4 error:0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(a1);
    [v6 setClass:v7 forClassName:v8];

    [v6 setClass:objc_opt_class() forClassName:@"CloudBookmarkPosition"];
    [v6 setClass:objc_opt_class() forClassName:@"CloudBookmarkPositionSortValue"];
    v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
    v10 = [v9 position];

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)syncDataWithContentsOfData:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 length])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v3 error:0];
    [v5 setClass:objc_opt_class() forClassName:@"CloudBookmarkSyncData"];
    [v5 setClass:objc_opt_class() forClassName:@"CloudBookmarkGeneration"];
    [v5 setClass:objc_opt_class() forClassName:@"CloudBookmarkPosition"];
    [v5 setClass:objc_opt_class() forClassName:@"CloudBookmarkPositionSortValue"];
    v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
    [v5 finishDecoding];

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSData)encodedBookmarkSyncData
{
  v3 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v3 encodeObject:self forKey:*MEMORY[0x277CCA308]];
  v4 = [v3 encodedData];

  return v4;
}

- (WBBookmarkSyncData)init
{
  v10.receiver = self;
  v10.super_class = WBBookmarkSyncData;
  v2 = [(WBBookmarkSyncData *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    generations = v2->_generations;
    v2->_generations = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    auxiliaryRecords = v2->_auxiliaryRecords;
    v2->_auxiliaryRecords = v5;

    extraPositionData = v2->_extraPositionData;
    v2->_extraPositionData = MEMORY[0x277CBEC10];

    v8 = v2;
  }

  return v2;
}

- (WBBookmarkSyncData)initWithCoder:(id)a3
{
  v44[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v42.receiver = self;
  v42.super_class = WBBookmarkSyncData;
  v5 = [(WBBookmarkSyncData *)&v42 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBC5A0]);
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EncodedCKRecordSystemFields"];
    v8 = [v6 safari_initWithEncodedRecordData:v7];
    record = v5->_record;
    v5->_record = v8;

    v10 = MEMORY[0x277CBEB98];
    v44[0] = objc_opt_class();
    v44[1] = objc_opt_class();
    v44[2] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];
    v12 = [v10 setWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"Generations"];
    v14 = [v13 mutableCopy];
    generations = v5->_generations;
    v5->_generations = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Position"];
    position = v5->_position;
    v5->_position = v16;

    v5->_minimumAPIVersion = [v4 decodeIntegerForKey:@"MinimumAPIVersion"];
    v5->_state = [v4 decodeIntegerForKey:@"Deleted"];
    v5->_modifiedAttributeMask = [v4 decodeIntegerForKey:@"ModifiedAttributeMask"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ParentRecordID"];
    parentRecordID = v5->_parentRecordID;
    v5->_parentRecordID = v18;

    v5->_isDeletingRecordZone = [v4 decodeBoolForKey:@"IsDeletedRecordZone"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ShareRecord"];
    shareRecord = v5->_shareRecord;
    v5->_shareRecord = v20;

    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = [v22 setWithObjects:{v23, v24, v25, objc_opt_class(), 0}];
    v27 = [v4 decodeObjectOfClasses:v26 forKey:@"AuxiliaryRecords"];
    v28 = [v27 mutableCopy];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = [MEMORY[0x277CBEB38] dictionary];
    }

    auxiliaryRecords = v5->_auxiliaryRecords;
    v5->_auxiliaryRecords = v30;

    v32 = MEMORY[0x277CBEB98];
    v43[0] = objc_opt_class();
    v43[1] = objc_opt_class();
    v43[2] = objc_opt_class();
    v43[3] = objc_opt_class();
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];
    v34 = [v32 setWithArray:v33];

    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"ExtraPositionData"];
    extraPositionData = v5->_extraPositionData;
    v5->_extraPositionData = v35;

    v37 = v5->_extraPositionData;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v38 = v5->_extraPositionData;
      v5->_extraPositionData = MEMORY[0x277CBEC10];
    }

    v39 = v5;
  }

  v40 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(CKRecord *)self->_record safari_encodedSystemFieldsData];
  [v9 encodeObject:v4 forKey:@"EncodedCKRecordSystemFields"];

  [v9 encodeObject:self->_generations forKey:@"Generations"];
  [v9 encodeObject:self->_position forKey:@"Position"];
  [v9 encodeInteger:self->_minimumAPIVersion forKey:@"MinimumAPIVersion"];
  [v9 encodeObject:self->_extraPositionData forKey:@"ExtraPositionData"];
  [v9 encodeObject:self->_parentRecordID forKey:@"ParentRecordID"];
  [v9 encodeObject:self->_shareRecord forKey:@"ShareRecord"];
  [v9 encodeBool:self->_isDeletingRecordZone forKey:@"IsDeletedRecordZone"];
  if ([(NSMutableDictionary *)self->_auxiliaryRecords count])
  {
    v5 = [(NSMutableDictionary *)self->_auxiliaryRecords safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_151];
    [v9 encodeObject:v5 forKey:@"AuxiliaryRecords"];
  }

  state = self->_state;
  if (state)
  {
    [v9 encodeInteger:state forKey:@"Deleted"];
  }

  modifiedAttributeMask = self->_modifiedAttributeMask;
  v8 = v9;
  if (modifiedAttributeMask)
  {
    [v9 encodeInteger:modifiedAttributeMask forKey:@"ModifiedAttributeMask"];
    v8 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();
  v5 = [(WBBookmarkSyncData *)self encodedBookmarkSyncData];
  v6 = [v4 syncDataWithContentsOfData:v5];

  return v6;
}

- (CKRecord)record
{
  v2 = [(CKRecord *)self->_record copy];

  return v2;
}

- (NSDictionary)positionDictionaryRepresentation
{
  v3 = [(NSDictionary *)self->_extraPositionData mutableCopy];
  position = self->_position;
  if (position)
  {
    v5 = [(WBSCRDTPosition *)position dictionaryRepresentation];
    [v3 setObject:v5 forKeyedSubscript:@"default"];
  }

  return v3;
}

- (void)setPositionDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v11 = [v4 mutableCopy];
  [v11 removeObjectForKey:@"default"];
  v5 = [v11 copy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  objc_storeStrong(&self->_extraPositionData, v7);

  v8 = [v4 safari_dictionaryForKey:@"default"];

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D49E80]) initWithDictionaryRepresentation:v8];
  }

  else
  {
    v9 = 0;
  }

  position = self->_position;
  self->_position = v9;
}

- (void)clearAllCKRecords
{
  record = self->_record;
  self->_record = 0;

  shareRecord = self->_shareRecord;
  self->_shareRecord = 0;

  v5 = [MEMORY[0x277CBEB38] dictionary];
  auxiliaryRecords = self->_auxiliaryRecords;
  self->_auxiliaryRecords = v5;

  MEMORY[0x2821F96F8]();
}

- (NSArray)auxiliaryRecordIDs
{
  v2 = [(NSMutableDictionary *)self->_auxiliaryRecords allValues];
  v3 = [v2 safari_mapObjectsUsingBlock:&__block_literal_global_154];

  return v3;
}

- (id)auxiliaryRecordForKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_auxiliaryRecords objectForKeyedSubscript:a3];
  v4 = [v3 copy];

  return v4;
}

- (void)setAuxiliaryRecord:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  [(NSMutableDictionary *)self->_auxiliaryRecords setObject:v7 forKeyedSubscript:v6];
}

- (BOOL)hasGenerationForKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_generations objectForKeyedSubscript:a3];
  v4 = [v3 isValid];

  return v4;
}

- (id)generationForKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_generations objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277D49E78]);
  }

  v6 = v5;

  return v6;
}

- (void)setGeneration:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v9 isValid];
  generations = self->_generations;
  if (v7)
  {
    [(NSMutableDictionary *)generations setObject:v9 forKeyedSubscript:v6];
  }

  else
  {
    [(NSMutableDictionary *)generations removeObjectForKey:v6];
  }
}

- (void)incrementGenerationForKey:(id)a3 withDeviceIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(WBBookmarkSyncData *)self generationForKey:v7];
  v8 = [v9 incrementedGenerationWithDeviceIdentifier:v6];

  [(NSMutableDictionary *)self->_generations setObject:v8 forKeyedSubscript:v7];
}

- (void)clearAllGenerationsExceptState
{
  v3 = [(NSMutableDictionary *)self->_generations objectForKeyedSubscript:@"Deleted"];
  v6 = v3;
  if (v3)
  {
    [MEMORY[0x277CBEB38] dictionaryWithObject:v3 forKey:@"Deleted"];
  }

  else
  {
    [MEMORY[0x277CBEB38] dictionary];
  }
  v4 = ;
  generations = self->_generations;
  self->_generations = v4;
}

+ (void)positionFromContentsOfData:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_272C20000, log, OS_LOG_TYPE_ERROR, "Failed to decode _WBBookmarkSyncDataForPositionDecoding with exception: %{public}@", buf, 0xCu);
}

+ (void)syncDataWithContentsOfData:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_272C20000, log, OS_LOG_TYPE_ERROR, "Failed to decode WBBookmarkSyncData with exception: %{public}@", buf, 0xCu);
}

@end