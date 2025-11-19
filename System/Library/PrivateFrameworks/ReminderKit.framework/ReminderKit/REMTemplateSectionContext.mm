@interface REMTemplateSectionContext
- (REMTemplateSectionContext)initWithParentTemplate:(id)a3;
@end

@implementation REMTemplateSectionContext

- (REMTemplateSectionContext)initWithParentTemplate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMTemplateSectionContext;
  v6 = [(REMTemplateSectionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parentTemplate, a3);
  }

  return v7;
}

@end