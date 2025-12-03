@interface PMLAWDBaseTracker
+ (id)trackerForModelName:(id)name modelVersion:(id)version modelLocale:(id)locale;
+ (id)trackerForPlanId:(id)id;
- (PMLAWDBaseTracker)initWithModel:(id)model;
@end

@implementation PMLAWDBaseTracker

- (PMLAWDBaseTracker)initWithModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = PMLAWDBaseTracker;
  v6 = [(PMLAWDBaseTracker *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modelInfo, model);
  }

  return v7;
}

+ (id)trackerForPlanId:(id)id
{
  v4 = [PMLPlanDescriptor descriptorFromPlanId:id];
  name = [v4 name];
  version = [v4 version];
  locale = [v4 locale];
  v8 = [self trackerForModelName:name modelVersion:version modelLocale:locale];

  return v8;
}

+ (id)trackerForModelName:(id)name modelVersion:(id)version modelLocale:(id)locale
{
  localeCopy = locale;
  versionCopy = version;
  nameCopy = name;
  v11 = objc_opt_new();
  [v11 setName:nameCopy];

  [v11 setVersion:versionCopy];
  [v11 setLocale:localeCopy];

  v12 = [[self alloc] initWithModel:v11];

  return v12;
}

@end