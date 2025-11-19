@interface POPrebootDeviceConfiguration
- (POPrebootDeviceConfiguration)initWithCoder:(id)a3;
- (POPrebootDeviceConfiguration)initWithData:(id)a3;
- (POPrebootDeviceConfiguration)initWithDictionary:(id)a3;
- (id)description;
- (id)dictionaryRepresentationForDisplay:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setEncryptionKeyData:(id)a3;
@end

@implementation POPrebootDeviceConfiguration

- (void)setEncryptionKeyData:(id)a3
{
  objc_storeStrong(&self->_encryptionKeyData, a3);
  v7 = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  encryptionKeySaveDate = self->_encryptionKeySaveDate;
  self->_encryptionKeySaveDate = v5;
}

- (id)dictionaryRepresentationForDisplay:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CCAA68]);
  [v5 setFormatOptions:1907];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  encryptionKeyData = self->_encryptionKeyData;
  if (v3)
  {
    [(NSData *)encryptionKeyData psso_sha256HashString];
  }

  else
  {
    [(NSData *)encryptionKeyData psso_base64URLEncodedString];
  }
  v8 = ;
  v9 = NSStringFromSelector(sel_encryptionKeyData);
  [v6 setObject:v8 forKeyedSubscript:v9];

  if (v3)
  {
    [v5 stringFromDate:self->_encryptionKeySaveDate];
  }

  else
  {
    v10 = MEMORY[0x277CCABB0];
    [(NSDate *)self->_encryptionKeySaveDate timeIntervalSince1970];
    [v10 numberWithDouble:?];
  }
  v11 = ;
  v12 = NSStringFromSelector(sel_encryptionKeySaveDate);
  [v6 setObject:v11 forKeyedSubscript:v12];

  v13 = [MEMORY[0x277CBEAA8] date];
  v14 = [v5 stringFromDate:v13];
  [v6 setObject:v14 forKeyedSubscript:@"created"];

  return v6;
}

id __61__POPrebootDeviceConfiguration_dataRepresentationForDisplay___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Error serializing user login config."];
  v2 = PO_LOG_POPrebootDeviceConfiguration();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __61__POPrebootDeviceConfiguration_dataRepresentationForDisplay___block_invoke_cold_1(v1, v2);
  }

  return v1;
}

- (POPrebootDeviceConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(POPrebootDeviceConfiguration *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_encryptionKeyData);
    v7 = [v4 objectForKeyedSubscript:v6];

    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x277CBEA90]);
      v9 = NSStringFromSelector(sel_encryptionKeyData);
      v10 = [v4 objectForKeyedSubscript:v9];
      v11 = [v8 psso_initWithBase64URLEncodedString:v10];

      encryptionKeyData = v5->_encryptionKeyData;
      v5->_encryptionKeyData = v11;
    }

    v13 = NSStringFromSelector(sel_encryptionKeySaveDate);
    v14 = [v4 objectForKeyedSubscript:v13];

    if (v14)
    {
      v15 = NSStringFromSelector(sel_encryptionKeySaveDate);
      v16 = [v4 objectForKeyedSubscript:v15];

      v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v16, "intValue")}];
      encryptionKeySaveDate = v5->_encryptionKeySaveDate;
      v5->_encryptionKeySaveDate = v17;
    }
  }

  return v5;
}

- (POPrebootDeviceConfiguration)initWithData:(id)a3
{
  v8 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:16 error:&v8];
  if (v8)
  {
    v5 = __45__POPrebootDeviceConfiguration_initWithData___block_invoke();
    v6 = 0;
  }

  else
  {
    self = [(POPrebootDeviceConfiguration *)self initWithDictionary:v4];
    v6 = self;
  }

  return v6;
}

id __45__POPrebootDeviceConfiguration_initWithData___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Error deserializing user login config."];
  v1 = PO_LOG_POPrebootDeviceConfiguration();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __61__POPrebootDeviceConfiguration_dataRepresentationForDisplay___block_invoke_cold_1(v0, v1);
  }

  return v0;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(POPrebootDeviceConfiguration *)self dataRepresentation];
  v5 = [v3 initWithData:v4 encoding:4];

  return v5;
}

- (POPrebootDeviceConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_dataRepresentation);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = [(POPrebootDeviceConfiguration *)self initWithData:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(POPrebootDeviceConfiguration *)self dataRepresentation];
  v5 = NSStringFromSelector(sel_dataRepresentation);
  [v4 encodeObject:v6 forKey:v5];
}

- (void)dataRepresentationForDisplay:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:a1 encoding:4];
  v5 = 138543362;
  v6 = v3;
  _os_log_debug_impl(&dword_25E8B1000, a2, OS_LOG_TYPE_DEBUG, "serialized configuration: %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __61__POPrebootDeviceConfiguration_dataRepresentationForDisplay___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_25E8B1000, a2, OS_LOG_TYPE_ERROR, "%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end