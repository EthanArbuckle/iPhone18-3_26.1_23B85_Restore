@interface PKMutableJobState
- (PKMutableJobState)init;
- (PKMutableJobState)initWithCoder:(id)coder;
- (PKMutableJobState)initWithUserCodableDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)userCodableDictionary;
- (void)visitProperties:(Visitor *)properties;
@end

@implementation PKMutableJobState

- (PKMutableJobState)init
{
  v3.receiver = self;
  v3.super_class = PKMutableJobState;
  return [(PKMutableJobState *)&v3 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v14];
  v4 = v14;
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v13 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v13];
    v8 = v13;
    v6 = v8;
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v7 = v7;
      v11 = v7;
      goto LABEL_16;
    }

    v10 = _PKLogCategory(PKLogCategoryFramework);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_25F5FC000, v10, OS_LOG_TYPE_ERROR, "couldn't create from archive: %@", buf, 0xCu);
    }
  }

  else
  {
    v6 = v4;
    v7 = _PKLogCategory(PKLogCategoryFramework);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_25F5FC000, v7, OS_LOG_TYPE_ERROR, "couldn't create archive: %@", buf, 0xCu);
    }
  }

  v11 = 0;
LABEL_16:

  return v11;
}

- (PKMutableJobState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = PKMutableJobState;
  v5 = [(PKMutableJobState *)&v8 init];
  v6 = v5;
  if (v5)
  {
    DecodeVisitor::visitProperties(v5, coderCopy);
  }

  return v6;
}

- (id)userCodableDictionary
{
  v3 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__PKMutableJobState_userCodableDictionary__block_invoke;
  v6[3] = &unk_279A92468;
  v4 = v3;
  v7 = v4;
  UserCodedSerializationVisitor::visitProperties(self, v6);

  return v4;
}

void __42__PKMutableJobState_userCodableDictionary__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v10 = a2;
  v8 = a3;
  v9 = v8[2](v8, *a5);
  [*(a1 + 32) setObject:v9 forKeyedSubscript:v10];
}

- (PKMutableJobState)initWithUserCodableDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = PKMutableJobState;
  v5 = [(PKMutableJobState *)&v9 init];
  if (v5)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__PKMutableJobState_initWithUserCodableDictionary___block_invoke;
    v7[3] = &unk_279A92468;
    v8 = dictionaryCopy;
    UserCodedSerializationVisitor::visitProperties(v5, v7);
  }

  return v5;
}

void __51__PKMutableJobState_initWithUserCodableDictionary___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void **a5)
{
  v13 = a2;
  v8 = a4;
  v9 = [*(a1 + 32) objectForKeyedSubscript:v13];

  if (v9)
  {
    v10 = [*(a1 + 32) objectForKeyedSubscript:v13];
    v11 = v8[2](v8, v10);
    v12 = *a5;
    *a5 = v11;
  }
}

- (void)visitProperties:(Visitor *)properties
{
  (*(properties->var0 + 2))(properties, a2);
  (*(properties->var0 + 5))(properties, @"localJobID", &self->_localJobID);
  (*(properties->var0 + 9))(properties, @"printerEndpointData", &self->_printerEndpointData);
  (*(properties->var0 + 7))(properties, @"printerDisplayName", &self->_printerDisplayName);
  (*(properties->var0 + 7))(properties, @"printerLocation", &self->_printerLocation);
  printerKind = self->_printerKind;
  (*(properties->var0 + 5))(properties, @"printerKind", &printerKind);
  self->_printerKind = printerKind;
  (*(properties->var0 + 21))(properties, @"settings", &self->_settings);
  (*(properties->var0 + 11))(properties, @"timeAtCreation", &self->_timeAtCreation);
  printerKind = self->_state;
  (*(properties->var0 + 5))(properties, @"state", &printerKind);
  self->_state = printerKind;
  (*(properties->var0 + 5))(properties, @"mediaSheetsCompleted", &self->_mediaSheetsCompleted);
  (*(properties->var0 + 11))(properties, @"timeAtProcessing", &self->_timeAtProcessing);
  (*(properties->var0 + 11))(properties, @"timeAtCompleted", &self->_timeAtCompleted);
  (*(properties->var0 + 5))(properties, @"mediaSheets", &self->_mediaSheets);
  (*(properties->var0 + 5))(properties, @"mediaProgress", &self->_mediaProgress);
  (*(properties->var0 + 5))(properties, @"remoteJobId", &self->_remoteJobId);
  (*(properties->var0 + 7))(properties, @"PIN", &self->_PIN);
  (*(properties->var0 + 7))(properties, @"jobPrinterStateMessage", &self->_jobPrinterStateMessage);
  (*(properties->var0 + 15))(properties, @"jobPrinterStateReasons", &self->_jobPrinterStateReasons);
  (*(properties->var0 + 7))(properties, @"jobStateMessage", &self->_jobStateMessage);
  (*(properties->var0 + 15))(properties, @"jobStateReasons", &self->_jobStateReasons);
  (*(properties->var0 + 9))(properties, @"thumbnailImage", &self->_thumbnailImage);
  (*(properties->var0 + 24))(properties);
}

@end