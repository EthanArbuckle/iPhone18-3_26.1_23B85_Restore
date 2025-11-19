@interface SXComponentInsertionLayoutProcessor
- (SXComponentInsertionLayoutProcessor)initWithComponentInsertionManager:(id)a3;
- (void)processLayoutTask:(id)a3 layoutBlueprint:(id)a4 DOMObjectProvider:(id)a5;
@end

@implementation SXComponentInsertionLayoutProcessor

- (SXComponentInsertionLayoutProcessor)initWithComponentInsertionManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXComponentInsertionLayoutProcessor;
  v6 = [(SXComponentInsertionLayoutProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_componentInsertionManager, a3);
  }

  return v7;
}

- (void)processLayoutTask:(id)a3 layoutBlueprint:(id)a4 DOMObjectProvider:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    if ([v8 isComplete])
    {
      v10 = [(SXComponentInsertionLayoutProcessor *)self layoutOptions];
      v11 = [v16 options];
      v12 = [v10 isEqual:v11];

      if ((v12 & 1) == 0)
      {
        v13 = [(SXComponentInsertionLayoutProcessor *)self componentInsertionManager];
        v14 = [v13 insertComponentsForBlueprint:v8 DOMObjectProvider:v9];

        [v9 setDOM:v14];
        v15 = [v16 options];
        [(SXComponentInsertionLayoutProcessor *)self setLayoutOptions:v15];
      }
    }
  }
}

@end