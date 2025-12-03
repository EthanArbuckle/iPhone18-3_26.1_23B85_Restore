@interface SXComponentViewEngine
- (SXComponentViewEngine)initWithPostProcessorManager:(id)manager;
- (id)componentViewForComponent:(id)component;
- (void)addFactory:(id)factory;
- (void)removeFactory:(id)factory;
@end

@implementation SXComponentViewEngine

- (SXComponentViewEngine)initWithPostProcessorManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = SXComponentViewEngine;
  v6 = [(SXComponentViewEngine *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(SXComponentTypeMatching);
    factoryMatching = v6->_factoryMatching;
    v6->_factoryMatching = v7;

    objc_storeStrong(&v6->_postProcessorManager, manager);
  }

  return v6;
}

- (id)componentViewForComponent:(id)component
{
  componentCopy = component;
  factoryMatching = [(SXComponentViewEngine *)self factoryMatching];
  type = [componentCopy type];
  v7 = +[SXComponentTypeDescribing descriptionWithType:role:](SXComponentTypeDescribing, "descriptionWithType:role:", type, [componentCopy role]);
  v8 = [factoryMatching match:v7];

  v9 = [v8 componentViewForComponent:componentCopy];
  if (v9)
  {
    postProcessorManager = [(SXComponentViewEngine *)self postProcessorManager];
    [postProcessorManager processComponent:componentCopy view:v9];
  }

  return v9;
}

- (void)addFactory:(id)factory
{
  if (factory)
  {
    factoryCopy = factory;
    factoryMatching = [(SXComponentViewEngine *)self factoryMatching];
    [factoryMatching addDescription:factoryCopy];
  }
}

- (void)removeFactory:(id)factory
{
  if (factory)
  {
    factoryCopy = factory;
    factoryMatching = [(SXComponentViewEngine *)self factoryMatching];
    [factoryMatching addDescription:factoryCopy];
  }
}

@end