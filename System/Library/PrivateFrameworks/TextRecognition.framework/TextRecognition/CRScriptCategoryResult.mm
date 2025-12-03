@interface CRScriptCategoryResult
- (BOOL)valid;
- (CRScriptCategoryResult)initWithScriptCategory:(id)category probability:(float)probability;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CRScriptCategoryResult

- (CRScriptCategoryResult)initWithScriptCategory:(id)category probability:(float)probability
{
  categoryCopy = category;
  v11.receiver = self;
  v11.super_class = CRScriptCategoryResult;
  v8 = [(CRScriptCategoryResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_scriptCategory, category);
    v9->_probability = probability;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRScriptCategoryResult alloc];
  scriptCategory = [(CRScriptCategoryResult *)self scriptCategory];
  [(CRScriptCategoryResult *)self probability];
  v6 = [(CRScriptCategoryResult *)v4 initWithScriptCategory:scriptCategory probability:?];

  return v6;
}

- (BOOL)valid
{
  [(CRScriptCategoryResult *)self probability];
  v4 = v3;
  scriptCategory = [(CRScriptCategoryResult *)self scriptCategory];
  [objc_opt_class() confidenceThreshold];
  v7 = v4 >= v6;

  return v7;
}

@end