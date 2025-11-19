@interface REMTemplateSection
- (REMTemplateSection)initWithStore:(id)a3 parentTemplate:(id)a4 storage:(id)a5;
@end

@implementation REMTemplateSection

- (REMTemplateSection)initWithStore:(id)a3 parentTemplate:(id)a4 storage:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = [v9 accountCapabilities];
  v15.receiver = self;
  v15.super_class = REMTemplateSection;
  v13 = [(REMBaseSection *)&v15 initWithStore:v11 accountCapabilities:v12 storage:v10];

  if (v13)
  {
    objc_storeStrong(&v13->_parentTemplate, a4);
  }

  return v13;
}

@end