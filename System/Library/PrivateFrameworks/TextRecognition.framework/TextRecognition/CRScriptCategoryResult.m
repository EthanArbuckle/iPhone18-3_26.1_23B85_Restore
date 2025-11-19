@interface CRScriptCategoryResult
- (BOOL)valid;
- (CRScriptCategoryResult)initWithScriptCategory:(id)a3 probability:(float)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CRScriptCategoryResult

- (CRScriptCategoryResult)initWithScriptCategory:(id)a3 probability:(float)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CRScriptCategoryResult;
  v8 = [(CRScriptCategoryResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_scriptCategory, a3);
    v9->_probability = a4;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CRScriptCategoryResult alloc];
  v5 = [(CRScriptCategoryResult *)self scriptCategory];
  [(CRScriptCategoryResult *)self probability];
  v6 = [(CRScriptCategoryResult *)v4 initWithScriptCategory:v5 probability:?];

  return v6;
}

- (BOOL)valid
{
  [(CRScriptCategoryResult *)self probability];
  v4 = v3;
  v5 = [(CRScriptCategoryResult *)self scriptCategory];
  [objc_opt_class() confidenceThreshold];
  v7 = v4 >= v6;

  return v7;
}

@end