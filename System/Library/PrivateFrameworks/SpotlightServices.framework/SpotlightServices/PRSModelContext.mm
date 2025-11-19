@interface PRSModelContext
- (PRSModelContext)initWithModel:(id)a3 directivesManager:(id)a4 type:(unint64_t)a5;
@end

@implementation PRSModelContext

- (PRSModelContext)initWithModel:(id)a3 directivesManager:(id)a4 type:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = PRSModelContext;
  v11 = [(PRSModelContext *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_model, a3);
    objc_storeStrong(&v12->_directivesManager, a4);
    v12->_type = a5;
    v13 = [v9 getVersionString];
    version = v12->_version;
    v12->_version = v13;
  }

  return v12;
}

@end