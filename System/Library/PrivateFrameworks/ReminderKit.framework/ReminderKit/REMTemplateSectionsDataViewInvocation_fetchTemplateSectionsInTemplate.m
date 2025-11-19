@interface REMTemplateSectionsDataViewInvocation_fetchTemplateSectionsInTemplate
- (BOOL)isEqual:(id)a3;
- (REMTemplateSectionsDataViewInvocation_fetchTemplateSectionsInTemplate)initWithCoder:(id)a3;
- (REMTemplateSectionsDataViewInvocation_fetchTemplateSectionsInTemplate)initWithParentTemplateObjectID:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMTemplateSectionsDataViewInvocation_fetchTemplateSectionsInTemplate

- (REMTemplateSectionsDataViewInvocation_fetchTemplateSectionsInTemplate)initWithParentTemplateObjectID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMTemplateSectionsDataViewInvocation_fetchTemplateSectionsInTemplate;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_templateObjectID, a3);
  }

  return v7;
}

- (REMTemplateSectionsDataViewInvocation_fetchTemplateSectionsInTemplate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"templateObjectID"];

  if (v5)
  {
    self = [(REMTemplateSectionsDataViewInvocation_fetchTemplateSectionsInTemplate *)self initWithParentTemplateObjectID:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMTemplateSectionsDataViewInvocation_fetchTemplateSectionsInTemplate *)self templateObjectID];
  [v4 encodeObject:v5 forKey:@"templateObjectID"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(REMTemplateSectionsDataViewInvocation_fetchTemplateSectionsInTemplate *)self templateObjectID];
    v6 = [v4 templateObjectID];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(REMTemplateSectionsDataViewInvocation_fetchTemplateSectionsInTemplate *)self templateObjectID];
      v8 = [v4 templateObjectID];
      v9 = [v7 isEqual:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (unint64_t)hash
{
  v2 = [(REMTemplateSectionsDataViewInvocation_fetchTemplateSectionsInTemplate *)self templateObjectID];
  v3 = [v2 hash];

  return v3;
}

@end