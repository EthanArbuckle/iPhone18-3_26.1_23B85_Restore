@interface WBSettingsTask
+ (id)taskForDeletingAllWebsiteDataInProfileWithIdentifier:(id)identifier;
+ (id)taskForDeletingIndividualWebsiteDataWithRecord:(id)record;
+ (id)taskWithType:(int64_t)type;
- (WBSettingsTask)initWithType:(int64_t)type afterDate:(id)date beforeDate:(id)beforeDate profileIdentifier:(id)identifier clearAllProfiles:(BOOL)profiles;
- (WBSettingsTask)initWithType:(int64_t)type websiteDataRecord:(id)record profileIdentifier:(id)identifier;
@end

@implementation WBSettingsTask

+ (id)taskWithType:(int64_t)type
{
  v3 = [[WBSettingsTask alloc] initWithType:type websiteDataRecord:0 profileIdentifier:0];

  return v3;
}

+ (id)taskForDeletingIndividualWebsiteDataWithRecord:(id)record
{
  recordCopy = record;
  v4 = [[WBSettingsTask alloc] initWithType:1 websiteDataRecord:recordCopy profileIdentifier:0];

  return v4;
}

+ (id)taskForDeletingAllWebsiteDataInProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[WBSettingsTask alloc] initWithType:0 websiteDataRecord:0 profileIdentifier:identifierCopy];

  return v4;
}

- (WBSettingsTask)initWithType:(int64_t)type websiteDataRecord:(id)record profileIdentifier:(id)identifier
{
  recordCopy = record;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = WBSettingsTask;
  v11 = [(WBSettingsTask *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_taskType = type;
    objc_storeStrong(&v11->_websiteDataRecord, record);
    objc_storeStrong(&v12->_profileIdentifier, identifier);
    v13 = v12;
  }

  return v12;
}

- (WBSettingsTask)initWithType:(int64_t)type afterDate:(id)date beforeDate:(id)beforeDate profileIdentifier:(id)identifier clearAllProfiles:(BOOL)profiles
{
  dateCopy = date;
  beforeDateCopy = beforeDate;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = WBSettingsTask;
  v16 = [(WBSettingsTask *)&v20 init];
  v17 = v16;
  if (v16)
  {
    v16->_taskType = type;
    objc_storeStrong(&v16->_afterDate, date);
    objc_storeStrong(&v17->_beforeDate, beforeDate);
    objc_storeStrong(&v17->_profileIdentifier, identifier);
    v17->_clearAllProfiles = profiles;
    v18 = v17;
  }

  return v17;
}

@end