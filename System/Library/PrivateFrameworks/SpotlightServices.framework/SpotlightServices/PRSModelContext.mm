@interface PRSModelContext
- (PRSModelContext)initWithModel:(id)model directivesManager:(id)manager type:(unint64_t)type;
@end

@implementation PRSModelContext

- (PRSModelContext)initWithModel:(id)model directivesManager:(id)manager type:(unint64_t)type
{
  modelCopy = model;
  managerCopy = manager;
  v16.receiver = self;
  v16.super_class = PRSModelContext;
  v11 = [(PRSModelContext *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_model, model);
    objc_storeStrong(&v12->_directivesManager, manager);
    v12->_type = type;
    getVersionString = [modelCopy getVersionString];
    version = v12->_version;
    v12->_version = getVersionString;
  }

  return v12;
}

@end