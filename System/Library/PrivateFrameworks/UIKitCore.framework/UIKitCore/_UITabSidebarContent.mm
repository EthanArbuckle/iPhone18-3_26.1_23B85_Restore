@interface _UITabSidebarContent
+ (id)contentForAction:(id)action group:(id)group;
+ (id)contentForTab:(id)tab;
- (BOOL)_isTabContent;
- (BOOL)isCompatibleWithContent:(id)content;
- (BOOL)isEmptyGroup;
@end

@implementation _UITabSidebarContent

+ (id)contentForTab:(id)tab
{
  tabCopy = tab;
  v4 = objc_opt_new();
  v5 = v4[1];
  v4[1] = tabCopy;

  return v4;
}

+ (id)contentForAction:(id)action group:(id)group
{
  actionCopy = action;
  groupCopy = group;
  v7 = objc_opt_new();
  v8 = v7[2];
  v7[2] = actionCopy;
  v9 = actionCopy;

  v10 = v7[3];
  v7[3] = groupCopy;

  return v7;
}

- (BOOL)isCompatibleWithContent:(id)content
{
  contentCopy = content;
  _isTabContent = [contentCopy _isTabContent];
  if (_isTabContent != [(_UITabSidebarContent *)self _isTabContent])
  {
LABEL_4:
    LOBYTE(self) = 0;
    goto LABEL_10;
  }

  if ([contentCopy _isTabContent])
  {
    v6 = [contentCopy tab];
    v7 = [(_UITabSidebarContent *)self tab];

    if (v6 == v7)
    {
      isEmptyGroup = [contentCopy isEmptyGroup];
      LODWORD(self) = isEmptyGroup ^ [(_UITabSidebarContent *)self isEmptyGroup]^ 1;
      goto LABEL_10;
    }

    goto LABEL_4;
  }

  action = [contentCopy action];
  action2 = [(_UITabSidebarContent *)self action];
  if (action == action2)
  {
    group = [contentCopy group];
    group2 = [(_UITabSidebarContent *)self group];
    LOBYTE(self) = group == group2;
  }

  else
  {
    LOBYTE(self) = 0;
  }

LABEL_10:
  return self;
}

- (BOOL)isEmptyGroup
{
  v3 = [(_UITabSidebarContent *)self tab];
  if ([v3 _isGroup])
  {
    node = [(_UITabSidebarContent *)self node];
    children = [node children];
    v6 = [children count] == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isTabContent
{
  v2 = [(_UITabSidebarContent *)self tab];
  v3 = v2 != 0;

  return v3;
}

@end