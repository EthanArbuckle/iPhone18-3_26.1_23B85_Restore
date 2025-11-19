@interface SiriCoreSyncRecord
+ (id)syncRecordWithKey:(id)a3 identifier:(id)a4;
- (SiriCoreSyncRecord)initWithKey:(id)a3 identifier:(id)a4 priority:(int)a5 debugValue:(id)a6 dataValue:(id)a7 addedValue:(id)a8 appMeta:(id)a9;
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
  v4 = [MEMORY[0x277CBEAA8] date];
  [v4 timeIntervalSince1970];
  self->_updateTime = v3;
}

- (void)updateHash
{
  v11 = *MEMORY[0x277D85DE8];
  CC_SHA256(&self->_itemPriority, 4u, md);
  if (self->_identifier)
  {
    v3 = [(NSString *)self->_key UTF8String];
    v4 = strlen(v3);
    CC_SHA256(v3, v4, md);
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

- (SiriCoreSyncRecord)initWithKey:(id)a3 identifier:(id)a4 priority:(int)a5 debugValue:(id)a6 dataValue:(id)a7 addedValue:(id)a8 appMeta:(id)a9
{
  v24 = a3;
  v23 = a4;
  v22 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v25.receiver = self;
  v25.super_class = SiriCoreSyncRecord;
  v18 = [(SiriCoreSyncRecord *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, a4);
    v19->_itemPriority = a5;
    objc_storeStrong(&v19->_key, a3);
    objc_storeStrong(&v19->_debugValue, a6);
    objc_storeStrong(&v19->_dataValue, a7);
    objc_storeStrong(&v19->_addedValue, a8);
    objc_storeStrong(&v19->_metaValue, a9);
    [(SiriCoreSyncRecord *)v19 setUpdateTimeToNow];
    [(SiriCoreSyncRecord *)v19 updateHash];
  }

  return v19;
}

+ (id)syncRecordWithKey:(id)a3 identifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SiriCoreSyncRecord alloc] initWithKey:v6 identifier:v5 priority:0 debugValue:0 dataValue:0 addedValue:0 appMeta:0];

  return v7;
}

@end