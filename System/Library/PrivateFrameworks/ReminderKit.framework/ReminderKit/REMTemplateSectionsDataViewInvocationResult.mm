@interface REMTemplateSectionsDataViewInvocationResult
- (BOOL)isEqual:(id)equal;
- (REMTemplateSectionsDataViewInvocationResult)initWithCoder:(id)coder;
- (REMTemplateSectionsDataViewInvocationResult)initWithTemplateStorages:(id)storages templateSectionStorages:(id)sectionStorages;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMTemplateSectionsDataViewInvocationResult

- (REMTemplateSectionsDataViewInvocationResult)initWithTemplateStorages:(id)storages templateSectionStorages:(id)sectionStorages
{
  storagesCopy = storages;
  sectionStoragesCopy = sectionStorages;
  v12.receiver = self;
  v12.super_class = REMTemplateSectionsDataViewInvocationResult;
  v9 = [(REMStoreInvocationValueStorage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_templateStorages, storages);
    objc_storeStrong(&v10->_templateSectionStorages, sectionStorages);
  }

  return v10;
}

- (REMTemplateSectionsDataViewInvocationResult)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"templateStorages"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"templateSectionStorages"];

  selfCopy = 0;
  if (v8 && v12)
  {
    self = [(REMTemplateSectionsDataViewInvocationResult *)self initWithTemplateStorages:v8 templateSectionStorages:v12];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  templateStorages = [(REMTemplateSectionsDataViewInvocationResult *)self templateStorages];
  [coderCopy encodeObject:templateStorages forKey:@"templateStorages"];

  templateSectionStorages = [(REMTemplateSectionsDataViewInvocationResult *)self templateSectionStorages];
  [coderCopy encodeObject:templateSectionStorages forKey:@"templateSectionStorages"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  templateStorages = [(REMTemplateSectionsDataViewInvocationResult *)self templateStorages];
  templateStorages2 = [equalCopy templateStorages];
  v7 = templateStorages2;
  if (templateStorages == templateStorages2)
  {
  }

  else
  {
    templateStorages3 = [(REMTemplateSectionsDataViewInvocationResult *)self templateStorages];
    templateStorages4 = [equalCopy templateStorages];
    v10 = [templateStorages3 isEqual:templateStorages4];

    if (!v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_10;
    }
  }

  templateSectionStorages = [(REMTemplateSectionsDataViewInvocationResult *)self templateSectionStorages];
  templateSectionStorages2 = [equalCopy templateSectionStorages];
  if (templateSectionStorages == templateSectionStorages2)
  {
    v11 = 1;
  }

  else
  {
    templateSectionStorages3 = [(REMTemplateSectionsDataViewInvocationResult *)self templateSectionStorages];
    templateSectionStorages4 = [equalCopy templateSectionStorages];
    v11 = [templateSectionStorages3 isEqual:templateSectionStorages4];
  }

LABEL_10:
  return v11 & 1;
}

- (unint64_t)hash
{
  templateStorages = [(REMTemplateSectionsDataViewInvocationResult *)self templateStorages];
  v4 = [templateStorages hash];
  templateSectionStorages = [(REMTemplateSectionsDataViewInvocationResult *)self templateSectionStorages];
  v6 = [templateSectionStorages hash];

  return v6 ^ v4;
}

@end