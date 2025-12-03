@interface SiriCoreSyncRecord
+ (id)syncRecordWithKey:(id)key identifier:(id)identifier;
- (SiriCoreSyncRecord)initWithKey:(id)key identifier:(id)identifier priority:(int)priority debugValue:(id)value dataValue:(id)dataValue addedValue:(id)addedValue appMeta:(id)meta;
- (id)description;
- (void)setUpdateTimeToNow;
- (void)updateHash;
@end

@implementation SiriCoreSyncRecord

- (id)description
{
  v6.receiver = self;
  v6.super_class = SiriCoreSyncRecord;
  v3 = [(SiriCoreSyncRecord *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" key:%@, priority:%d, id:%@, data:%luB, added:%luB, meta:%luB, hash:%@, time:%.0f", self->_key, self->_itemPriority, self->_identifier, -[NSData length](self->_dataValue, "length"), -[NSData length](self->_addedValue, "length"), -[NSData length](self->_metaValue, "length"), self->_checkHash, *&self->_updateTime];

  return v4;
}

- (void)setUpdateTimeToNow
{
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  self->_updateTime = v3;
}

- (void)updateHash
{
  v11 = *MEMORY[0x277D85DE8];
  CC_SHA256(&self->_itemPriority, 4u, md);
  if (self->_identifier)
  {
    uTF8String = [(NSString *)self->_key UTF8String];
    v4 = strlen(uTF8String);
    CC_SHA256(uTF8String, v4, md);
  }

  dataValue = self->_dataValue;
  if (dataValue)
  {
    CC_SHA256([(NSData *)dataValue bytes], [(NSData *)self->_dataValue length], md);
  }

  addedValue = self->_addedValue;
  if (addedValue)
  {
    CC_SHA256([(NSData *)addedValue bytes], [(NSData *)self->_addedValue length], md);
  }

  if (self->_metaValue)
  {
    CC_SHA256([(NSData *)self->_addedValue bytes], [(NSData *)self->_metaValue length], md);
  }

  v7 = [MEMORY[0x277CBEA90] dataWithBytes:md length:8];
  checkHash = self->_checkHash;
  self->_checkHash = v7;

  v9 = *MEMORY[0x277D85DE8];
}

- (SiriCoreSyncRecord)initWithKey:(id)key identifier:(id)identifier priority:(int)priority debugValue:(id)value dataValue:(id)dataValue addedValue:(id)addedValue appMeta:(id)meta
{
  keyCopy = key;
  identifierCopy = identifier;
  valueCopy = value;
  dataValueCopy = dataValue;
  addedValueCopy = addedValue;
  metaCopy = meta;
  v25.receiver = self;
  v25.super_class = SiriCoreSyncRecord;
  v18 = [(SiriCoreSyncRecord *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, identifier);
    v19->_itemPriority = priority;
    objc_storeStrong(&v19->_key, key);
    objc_storeStrong(&v19->_debugValue, value);
    objc_storeStrong(&v19->_dataValue, dataValue);
    objc_storeStrong(&v19->_addedValue, addedValue);
    objc_storeStrong(&v19->_metaValue, meta);
    [(SiriCoreSyncRecord *)v19 setUpdateTimeToNow];
    [(SiriCoreSyncRecord *)v19 updateHash];
  }

  return v19;
}

+ (id)syncRecordWithKey:(id)key identifier:(id)identifier
{
  identifierCopy = identifier;
  keyCopy = key;
  v7 = [[SiriCoreSyncRecord alloc] initWithKey:keyCopy identifier:identifierCopy priority:0 debugValue:0 dataValue:0 addedValue:0 appMeta:0];

  return v7;
}

@end