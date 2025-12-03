@interface REMTemplateSection
- (REMTemplateSection)initWithStore:(id)store parentTemplate:(id)template storage:(id)storage;
@end

@implementation REMTemplateSection

- (REMTemplateSection)initWithStore:(id)store parentTemplate:(id)template storage:(id)storage
{
  templateCopy = template;
  storageCopy = storage;
  storeCopy = store;
  accountCapabilities = [templateCopy accountCapabilities];
  v15.receiver = self;
  v15.super_class = REMTemplateSection;
  v13 = [(REMBaseSection *)&v15 initWithStore:storeCopy accountCapabilities:accountCapabilities storage:storageCopy];

  if (v13)
  {
    objc_storeStrong(&v13->_parentTemplate, template);
  }

  return v13;
}

@end