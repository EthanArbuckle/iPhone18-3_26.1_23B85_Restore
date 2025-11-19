@interface SXComponentViewEngine
- (SXComponentViewEngine)initWithPostProcessorManager:(id)a3;
- (id)componentViewForComponent:(id)a3;
- (void)addFactory:(id)a3;
- (void)removeFactory:(id)a3;
@end

@implementation SXComponentViewEngine

- (SXComponentViewEngine)initWithPostProcessorManager:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SXComponentViewEngine;
  v6 = [(SXComponentViewEngine *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(SXComponentTypeMatching);
    factoryMatching = v6->_factoryMatching;
    v6->_factoryMatching = v7;

    objc_storeStrong(&v6->_postProcessorManager, a3);
  }

  return v6;
}

- (id)componentViewForComponent:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentViewEngine *)self factoryMatching];
  v6 = [v4 type];
  v7 = +[SXComponentTypeDescribing descriptionWithType:role:](SXComponentTypeDescribing, "descriptionWithType:role:", v6, [v4 role]);
  v8 = [v5 match:v7];

  v9 = [v8 componentViewForComponent:v4];
  if (v9)
  {
    v10 = [(SXComponentViewEngine *)self postProcessorManager];
    [v10 processComponent:v4 view:v9];
  }

  return v9;
}

- (void)addFactory:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SXComponentViewEngine *)self factoryMatching];
    [v5 addDescription:v4];
  }
}

- (void)removeFactory:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SXComponentViewEngine *)self factoryMatching];
    [v5 addDescription:v4];
  }
}

@end