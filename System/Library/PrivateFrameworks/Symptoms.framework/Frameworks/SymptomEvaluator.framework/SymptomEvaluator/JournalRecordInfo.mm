@interface JournalRecordInfo
- (JournalRecordInfo)initWithCoder:(id)a3;
- (JournalRecordInfo)initWithJournalName:(id)a3 lastUpdate:(id)a4 journalData:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation JournalRecordInfo

- (JournalRecordInfo)initWithJournalName:(id)a3 lastUpdate:(id)a4 journalData:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = JournalRecordInfo;
  v12 = [(JournalRecordInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_journalName, a3);
    objc_storeStrong(&v13->_lastUpdate, a4);
    objc_storeStrong(&v13->_journalData, a5);
  }

  return v13;
}

- (JournalRecordInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = JournalRecordInfo;
  v5 = [(JournalRecordInfo *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"journalName"];
    journalName = v5->_journalName;
    v5->_journalName = v6;

    v8 = [v4 decodeObjectForKey:@"lastUpdate"];
    lastUpdate = v5->_lastUpdate;
    v5->_lastUpdate = v8;

    v10 = [v4 decodeObjectForKey:@"journalData"];
    journalData = v5->_journalData;
    v5->_journalData = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(JournalRecordInfo *)self journalName];
  [v4 encodeObject:v5 forKey:@"journalName"];

  v6 = [(JournalRecordInfo *)self lastUpdate];
  [v4 encodeObject:v6 forKey:@"lastUpdate"];

  v7 = [(JournalRecordInfo *)self journalData];
  [v4 encodeObject:v7 forKey:@"journalData"];
}

@end