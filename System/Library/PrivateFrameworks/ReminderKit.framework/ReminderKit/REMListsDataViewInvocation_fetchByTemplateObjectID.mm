@interface REMListsDataViewInvocation_fetchByTemplateObjectID
- (BOOL)isEqual:(id)equal;
- (REMListsDataViewInvocation_fetchByTemplateObjectID)initWithCoder:(id)coder;
- (REMListsDataViewInvocation_fetchByTemplateObjectID)initWithTemplateObjectID:(id)d;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMListsDataViewInvocation_fetchByTemplateObjectID

- (REMListsDataViewInvocation_fetchByTemplateObjectID)initWithTemplateObjectID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = REMListsDataViewInvocation_fetchByTemplateObjectID;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_templateObjectID, d);
  }

  return v7;
}

- (REMListsDataViewInvocation_fetchByTemplateObjectID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"templateObjectID"];

  if (v5)
  {
    self = [(REMListsDataViewInvocation_fetchByTemplateObjectID *)self initWithTemplateObjectID:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  templateObjectID = [(REMListsDataViewInvocation_fetchByTemplateObjectID *)self templateObjectID];
  [coderCopy encodeObject:templateObjectID forKey:@"templateObjectID"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    templateObjectID = [(REMListsDataViewInvocation_fetchByTemplateObjectID *)self templateObjectID];
    templateObjectID2 = [equalCopy templateObjectID];
    if (templateObjectID == templateObjectID2)
    {
      v9 = 1;
    }

    else
    {
      templateObjectID3 = [(REMListsDataViewInvocation_fetchByTemplateObjectID *)self templateObjectID];
      templateObjectID4 = [equalCopy templateObjectID];
      v9 = [templateObjectID3 isEqual:templateObjectID4];
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
  templateObjectID = [(REMListsDataViewInvocation_fetchByTemplateObjectID *)self templateObjectID];
  v3 = [templateObjectID hash];

  return v3;
}

@end