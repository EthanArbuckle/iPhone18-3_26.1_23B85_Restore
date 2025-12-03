@interface SXActionActivityManager
- (SXActionActivityManager)init;
- (id)activityGroupForAction:(id)action sourceView:(id)view sourceRect:(CGRect)rect;
- (id)activityProviderForAction:(id)action;
- (id)previewActivityForAction:(id)action sourceView:(id)view sourceRect:(CGRect)rect;
- (void)registerActionActivityProvider:(id)provider actionType:(id)type;
@end

@implementation SXActionActivityManager

- (SXActionActivityManager)init
{
  v6.receiver = self;
  v6.super_class = SXActionActivityManager;
  v2 = [(SXActionActivityManager *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    activityProviders = v2->_activityProviders;
    v2->_activityProviders = dictionary;
  }

  return v2;
}

- (void)registerActionActivityProvider:(id)provider actionType:(id)type
{
  if (provider && type)
  {
    typeCopy = type;
    providerCopy = provider;
    activityProviders = [(SXActionActivityManager *)self activityProviders];
    [activityProviders setObject:providerCopy forKey:typeCopy];
  }
}

- (id)activityGroupForAction:(id)action sourceView:(id)view sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  actionCopy = action;
  v13 = [(SXActionActivityManager *)self activityProviderForAction:actionCopy];
  if (objc_opt_respondsToSelector())
  {
    [v13 activityGroupForAction:actionCopy sourceView:viewCopy sourceRect:{x, y, width, height}];
  }

  else
  {
    [v13 activityGroupForAction:actionCopy];
  }
  v14 = ;

  return v14;
}

- (id)previewActivityForAction:(id)action sourceView:(id)view sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  actionCopy = action;
  viewCopy = view;
  v13 = [(SXActionActivityManager *)self activityProviderForAction:actionCopy];
  if (objc_opt_respondsToSelector())
  {
    v14 = [v13 previewActivityForAction:actionCopy sourceView:viewCopy sourceRect:{x, y, width, height}];
LABEL_5:
    v15 = v14;
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = [v13 previewActivityForAction:actionCopy];
    goto LABEL_5;
  }

  v15 = 0;
LABEL_7:

  return v15;
}

- (id)activityProviderForAction:(id)action
{
  type = [action type];
  v6 = type;
  v7 = 0;
  if (action && type)
  {
    activityProviders = [(SXActionActivityManager *)self activityProviders];
    v7 = [activityProviders objectForKey:v6];
  }

  return v7;
}

@end