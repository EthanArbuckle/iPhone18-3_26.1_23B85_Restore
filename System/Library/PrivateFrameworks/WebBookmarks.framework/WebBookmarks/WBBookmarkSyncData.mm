@interface WBBookmarkSyncData
+ (id)positionFromContentsOfData:(id)data;
+ (id)syncDataWithContentsOfData:(id)data;
- (BOOL)hasGenerationForKey:(id)key;
- (CKRecord)record;
- (CKShare)shareRecord;
- (NSArray)auxiliaryRecordIDs;
- (NSData)encodedBookmarkSyncData;
- (NSDictionary)positionDictionaryRepresentation;
- (WBBookmarkSyncData)init;
- (WBBookmarkSyncData)initWithCoder:(id)coder;
- (id)auxiliaryRecordForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)generationForKey:(id)key;
- (void)clearAllCKRecords;
- (void)clearAllGenerationsExceptState;
- (void)encodeWithCoder:(id)coder;
- (void)incrementGenerationForKey:(id)key withDeviceIdentifier:(id)identifier;
- (void)setAuxiliaryRecord:(id)record forKey:(id)key;
- (void)setGeneration:(id)generation forKey:(id)key;
- (void)setPositionDictionaryRepresentation:(id)representation;
@end

@implementation WBBookmarkSyncData

- (CKShare)shareRecord
{
  v2 = [(CKShare *)self->_shareRecord copy];

  return v2;
}

+ (id)positionFromContentsOfData:(id)data
{
  v13 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([dataCopy length])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:dataCopy error:0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(self);
    [v6 setClass:v7 forClassName:v8];

    [v6 setClass:objc_opt_class() forClassName:@"CloudBookmarkPosition"];
    [v6 setClass:objc_opt_class() forClassName:@"CloudBookmarkPositionSortValue"];
    v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
    position = [v9 position];

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    position = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return position;
}

+ (id)syncDataWithContentsOfData:(id)data
{
  v9 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([dataCopy length])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:dataCopy error:0];
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
  encodedData = [v3 encodedData];

  return encodedData;
}

- (WBBookmarkSyncData)init
{
  v10.receiver = self;
  v10.super_class = WBBookmarkSyncData;
  v2 = [(WBBookmarkSyncData *)&v10 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    generations = v2->_generations;
    v2->_generations = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    auxiliaryRecords = v2->_auxiliaryRecords;
    v2->_auxiliaryRecords = dictionary2;

    extraPositionData = v2->_extraPositionData;
    v2->_extraPositionData = MEMORY[0x277CBEC10];

    v8 = v2;
  }

  return v2;
}

- (WBBookmarkSyncData)initWithCoder:(id)coder
{
  v44[3] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v42.receiver = self;
  v42.super_class = WBBookmarkSyncData;
  v5 = [(WBBookmarkSyncData *)&v42 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBC5A0]);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EncodedCKRecordSystemFields"];
    v8 = [v6 safari_initWithEncodedRecordData:v7];
    record = v5->_record;
    v5->_record = v8;

    v10 = MEMORY[0x277CBEB98];
    v44[0] = objc_opt_class();
    v44[1] = objc_opt_class();
    v44[2] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];
    v12 = [v10 setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"Generations"];
    v14 = [v13 mutableCopy];
    generations = v5->_generations;
    v5->_generations = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Position"];
    position = v5->_position;
    v5->_position = v16;

    v5->_minimumAPIVersion = [coderCopy decodeIntegerForKey:@"MinimumAPIVersion"];
    v5->_state = [coderCopy decodeIntegerForKey:@"Deleted"];
    v5->_modifiedAttributeMask = [coderCopy decodeIntegerForKey:@"ModifiedAttributeMask"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ParentRecordID"];
    parentRecordID = v5->_parentRecordID;
    v5->_parentRecordID = v18;

    v5->_isDeletingRecordZone = [coderCopy decodeBoolForKey:@"IsDeletedRecordZone"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ShareRecord"];
    shareRecord = v5->_shareRecord;
    v5->_shareRecord = v20;

    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = [v22 setWithObjects:{v23, v24, v25, objc_opt_class(), 0}];
    v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"AuxiliaryRecords"];
    v28 = [v27 mutableCopy];
    v29 = v28;
    if (v28)
    {
      dictionary = v28;
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    auxiliaryRecords = v5->_auxiliaryRecords;
    v5->_auxiliaryRecords = dictionary;

    v32 = MEMORY[0x277CBEB98];
    v43[0] = objc_opt_class();
    v43[1] = objc_opt_class();
    v43[2] = objc_opt_class();
    v43[3] = objc_opt_class();
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];
    v34 = [v32 setWithArray:v33];

    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"ExtraPositionData"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  safari_encodedSystemFieldsData = [(CKRecord *)self->_record safari_encodedSystemFieldsData];
  [coderCopy encodeObject:safari_encodedSystemFieldsData forKey:@"EncodedCKRecordSystemFields"];

  [coderCopy encodeObject:self->_generations forKey:@"Generations"];
  [coderCopy encodeObject:self->_position forKey:@"Position"];
  [coderCopy encodeInteger:self->_minimumAPIVersion forKey:@"MinimumAPIVersion"];
  [coderCopy encodeObject:self->_extraPositionData forKey:@"ExtraPositionData"];
  [coderCopy encodeObject:self->_parentRecordID forKey:@"ParentRecordID"];
  [coderCopy encodeObject:self->_shareRecord forKey:@"ShareRecord"];
  [coderCopy encodeBool:self->_isDeletingRecordZone forKey:@"IsDeletedRecordZone"];
  if ([(NSMutableDictionary *)self->_auxiliaryRecords count])
  {
    v5 = [(NSMutableDictionary *)self->_auxiliaryRecords safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_151];
    [coderCopy encodeObject:v5 forKey:@"AuxiliaryRecords"];
  }

  state = self->_state;
  if (state)
  {
    [coderCopy encodeInteger:state forKey:@"Deleted"];
  }

  modifiedAttributeMask = self->_modifiedAttributeMask;
  v8 = coderCopy;
  if (modifiedAttributeMask)
  {
    [coderCopy encodeInteger:modifiedAttributeMask forKey:@"ModifiedAttributeMask"];
    v8 = coderCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  encodedBookmarkSyncData = [(WBBookmarkSyncData *)self encodedBookmarkSyncData];
  v6 = [v4 syncDataWithContentsOfData:encodedBookmarkSyncData];

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
    dictionaryRepresentation = [(WBSCRDTPosition *)position dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"default"];
  }

  return v3;
}

- (void)setPositionDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v11 = [representationCopy mutableCopy];
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

  v8 = [representationCopy safari_dictionaryForKey:@"default"];

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

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  auxiliaryRecords = self->_auxiliaryRecords;
  self->_auxiliaryRecords = dictionary;

  MEMORY[0x2821F96F8]();
}

- (NSArray)auxiliaryRecordIDs
{
  allValues = [(NSMutableDictionary *)self->_auxiliaryRecords allValues];
  v3 = [allValues safari_mapObjectsUsingBlock:&__block_literal_global_154];

  return v3;
}

- (id)auxiliaryRecordForKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->_auxiliaryRecords objectForKeyedSubscript:key];
  v4 = [v3 copy];

  return v4;
}

- (void)setAuxiliaryRecord:(id)record forKey:(id)key
{
  keyCopy = key;
  v7 = [record copy];
  [(NSMutableDictionary *)self->_auxiliaryRecords setObject:v7 forKeyedSubscript:keyCopy];
}

- (BOOL)hasGenerationForKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->_generations objectForKeyedSubscript:key];
  isValid = [v3 isValid];

  return isValid;
}

- (id)generationForKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->_generations objectForKeyedSubscript:key];
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

- (void)setGeneration:(id)generation forKey:(id)key
{
  generationCopy = generation;
  keyCopy = key;
  isValid = [generationCopy isValid];
  generations = self->_generations;
  if (isValid)
  {
    [(NSMutableDictionary *)generations setObject:generationCopy forKeyedSubscript:keyCopy];
  }

  else
  {
    [(NSMutableDictionary *)generations removeObjectForKey:keyCopy];
  }
}

- (void)incrementGenerationForKey:(id)key withDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  keyCopy = key;
  v9 = [(WBBookmarkSyncData *)self generationForKey:keyCopy];
  v8 = [v9 incrementedGenerationWithDeviceIdentifier:identifierCopy];

  [(NSMutableDictionary *)self->_generations setObject:v8 forKeyedSubscript:keyCopy];
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