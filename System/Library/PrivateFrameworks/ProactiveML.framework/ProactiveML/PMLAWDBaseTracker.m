@interface PMLAWDBaseTracker
+ (id)trackerForModelName:(id)a3 modelVersion:(id)a4 modelLocale:(id)a5;
+ (id)trackerForPlanId:(id)a3;
- (PMLAWDBaseTracker)initWithModel:(id)a3;
@end

@implementation PMLAWDBaseTracker

- (PMLAWDBaseTracker)initWithModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PMLAWDBaseTracker;
  v6 = [(PMLAWDBaseTracker *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modelInfo, a3);
  }

  return v7;
}

+ (id)trackerForPlanId:(id)a3
{
  v4 = [PMLPlanDescriptor descriptorFromPlanId:a3];
  v5 = [v4 name];
  v6 = [v4 version];
  v7 = [v4 locale];
  v8 = [a1 trackerForModelName:v5 modelVersion:v6 modelLocale:v7];

  return v8;
}

+ (id)trackerForModelName:(id)a3 modelVersion:(id)a4 modelLocale:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  [v11 setName:v10];

  [v11 setVersion:v9];
  [v11 setLocale:v8];

  v12 = [[a1 alloc] initWithModel:v11];

  return v12;
}

@end