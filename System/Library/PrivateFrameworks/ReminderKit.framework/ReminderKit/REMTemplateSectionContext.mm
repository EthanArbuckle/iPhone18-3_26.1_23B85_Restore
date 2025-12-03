@interface REMTemplateSectionContext
- (REMTemplateSectionContext)initWithParentTemplate:(id)template;
@end

@implementation REMTemplateSectionContext

- (REMTemplateSectionContext)initWithParentTemplate:(id)template
{
  templateCopy = template;
  v9.receiver = self;
  v9.super_class = REMTemplateSectionContext;
  v6 = [(REMTemplateSectionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parentTemplate, template);
  }

  return v7;
}

@end