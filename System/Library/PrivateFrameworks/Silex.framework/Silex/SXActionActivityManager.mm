@interface SXActionActivityManager
- (SXActionActivityManager)init;
- (id)activityGroupForAction:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5;
- (id)activityProviderForAction:(id)a3;
- (id)previewActivityForAction:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5;
- (void)registerActionActivityProvider:(id)a3 actionType:(id)a4;
@end

@implementation SXActionActivityManager

- (SXActionActivityManager)init
{
  v6.receiver = self;
  v6.super_class = SXActionActivityManager;
  v2 = [(SXActionActivityManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    activityProviders = v2->_activityProviders;
    v2->_activityProviders = v3;
  }

  return v2;
}

- (void)registerActionActivityProvider:(id)a3 actionType:(id)a4
{
  if (a3 && a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(SXActionActivityManager *)self activityProviders];
    [v8 setObject:v7 forKey:v6];
  }
}

- (id)activityGroupForAction:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v12 = a3;
  v13 = [(SXActionActivityManager *)self activityProviderForAction:v12];
  if (objc_opt_respondsToSelector())
  {
    [v13 activityGroupForAction:v12 sourceView:v11 sourceRect:{x, y, width, height}];
  }

  else
  {
    [v13 activityGroupForAction:v12];
  }
  v14 = ;

  return v14;
}

- (id)previewActivityForAction:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3;
  v12 = a4;
  v13 = [(SXActionActivityManager *)self activityProviderForAction:v11];
  if (objc_opt_respondsToSelector())
  {
    v14 = [v13 previewActivityForAction:v11 sourceView:v12 sourceRect:{x, y, width, height}];
LABEL_5:
    v15 = v14;
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = [v13 previewActivityForAction:v11];
    goto LABEL_5;
  }

  v15 = 0;
LABEL_7:

  return v15;
}

- (id)activityProviderForAction:(id)a3
{
  v5 = [a3 type];
  v6 = v5;
  v7 = 0;
  if (a3 && v5)
  {
    v8 = [(SXActionActivityManager *)self activityProviders];
    v7 = [v8 objectForKey:v6];
  }

  return v7;
}

@end