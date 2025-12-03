@interface JournalRecordInfo
- (JournalRecordInfo)initWithCoder:(id)coder;
- (JournalRecordInfo)initWithJournalName:(id)name lastUpdate:(id)update journalData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation JournalRecordInfo

- (JournalRecordInfo)initWithJournalName:(id)name lastUpdate:(id)update journalData:(id)data
{
  nameCopy = name;
  updateCopy = update;
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = JournalRecordInfo;
  v12 = [(JournalRecordInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_journalName, name);
    objc_storeStrong(&v13->_lastUpdate, update);
    objc_storeStrong(&v13->_journalData, data);
  }

  return v13;
}

- (JournalRecordInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = JournalRecordInfo;
  v5 = [(JournalRecordInfo *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"journalName"];
    journalName = v5->_journalName;
    v5->_journalName = v6;

    v8 = [coderCopy decodeObjectForKey:@"lastUpdate"];
    lastUpdate = v5->_lastUpdate;
    v5->_lastUpdate = v8;

    v10 = [coderCopy decodeObjectForKey:@"journalData"];
    journalData = v5->_journalData;
    v5->_journalData = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  journalName = [(JournalRecordInfo *)self journalName];
  [coderCopy encodeObject:journalName forKey:@"journalName"];

  lastUpdate = [(JournalRecordInfo *)self lastUpdate];
  [coderCopy encodeObject:lastUpdate forKey:@"lastUpdate"];

  journalData = [(JournalRecordInfo *)self journalData];
  [coderCopy encodeObject:journalData forKey:@"journalData"];
}

@end