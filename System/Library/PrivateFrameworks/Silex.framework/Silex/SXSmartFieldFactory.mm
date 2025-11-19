@interface SXSmartFieldFactory
- (SXSmartFieldFactory)initWithActionProvider:(id)a3 actionSerializer:(id)a4;
- (id)smartFieldForAddition:(id)a3 withContext:(id)a4;
@end

@implementation SXSmartFieldFactory

- (SXSmartFieldFactory)initWithActionProvider:(id)a3 actionSerializer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXSmartFieldFactory;
  v9 = [(SXSmartFieldFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_actionProvider, a3);
    objc_storeStrong(&v10->_actionSerializer, a4);
  }

  return v10;
}

- (id)smartFieldForAddition:(id)a3 withContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SXSmartFieldFactory *)self actionProvider];
  v9 = [v8 actionForAddition:v7];

  if (v9)
  {
    v10 = [(SXSmartFieldFactory *)self actionSerializer];
    v11 = [v10 URLForAction:v9 type:1];

    v12 = [[SXSmartField alloc] initWithContext:v6 URL:v11 action:v9];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end