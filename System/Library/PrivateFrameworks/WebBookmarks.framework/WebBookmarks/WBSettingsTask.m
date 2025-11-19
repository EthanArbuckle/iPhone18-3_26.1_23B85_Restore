@interface WBSettingsTask
+ (id)taskForDeletingAllWebsiteDataInProfileWithIdentifier:(id)a3;
+ (id)taskForDeletingIndividualWebsiteDataWithRecord:(id)a3;
+ (id)taskWithType:(int64_t)a3;
- (WBSettingsTask)initWithType:(int64_t)a3 afterDate:(id)a4 beforeDate:(id)a5 profileIdentifier:(id)a6 clearAllProfiles:(BOOL)a7;
- (WBSettingsTask)initWithType:(int64_t)a3 websiteDataRecord:(id)a4 profileIdentifier:(id)a5;
@end

@implementation WBSettingsTask

+ (id)taskWithType:(int64_t)a3
{
  v3 = [[WBSettingsTask alloc] initWithType:a3 websiteDataRecord:0 profileIdentifier:0];

  return v3;
}

+ (id)taskForDeletingIndividualWebsiteDataWithRecord:(id)a3
{
  v3 = a3;
  v4 = [[WBSettingsTask alloc] initWithType:1 websiteDataRecord:v3 profileIdentifier:0];

  return v4;
}

+ (id)taskForDeletingAllWebsiteDataInProfileWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[WBSettingsTask alloc] initWithType:0 websiteDataRecord:0 profileIdentifier:v3];

  return v4;
}

- (WBSettingsTask)initWithType:(int64_t)a3 websiteDataRecord:(id)a4 profileIdentifier:(id)a5
{
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = WBSettingsTask;
  v11 = [(WBSettingsTask *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_taskType = a3;
    objc_storeStrong(&v11->_websiteDataRecord, a4);
    objc_storeStrong(&v12->_profileIdentifier, a5);
    v13 = v12;
  }

  return v12;
}

- (WBSettingsTask)initWithType:(int64_t)a3 afterDate:(id)a4 beforeDate:(id)a5 profileIdentifier:(id)a6 clearAllProfiles:(BOOL)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v20.receiver = self;
  v20.super_class = WBSettingsTask;
  v16 = [(WBSettingsTask *)&v20 init];
  v17 = v16;
  if (v16)
  {
    v16->_taskType = a3;
    objc_storeStrong(&v16->_afterDate, a4);
    objc_storeStrong(&v17->_beforeDate, a5);
    objc_storeStrong(&v17->_profileIdentifier, a6);
    v17->_clearAllProfiles = a7;
    v18 = v17;
  }

  return v17;
}

@end