@interface _UITabSidebarContent
+ (id)contentForAction:(id)a3 group:(id)a4;
+ (id)contentForTab:(id)a3;
- (BOOL)_isTabContent;
- (BOOL)isCompatibleWithContent:(id)a3;
- (BOOL)isEmptyGroup;
@end

@implementation _UITabSidebarContent

+ (id)contentForTab:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = v4[1];
  v4[1] = v3;

  return v4;
}

+ (id)contentForAction:(id)a3 group:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = v7[2];
  v7[2] = v5;
  v9 = v5;

  v10 = v7[3];
  v7[3] = v6;

  return v7;
}

- (BOOL)isCompatibleWithContent:(id)a3
{
  v4 = a3;
  v5 = [v4 _isTabContent];
  if (v5 != [(_UITabSidebarContent *)self _isTabContent])
  {
LABEL_4:
    LOBYTE(self) = 0;
    goto LABEL_10;
  }

  if ([v4 _isTabContent])
  {
    v6 = [v4 tab];
    v7 = [(_UITabSidebarContent *)self tab];

    if (v6 == v7)
    {
      v10 = [v4 isEmptyGroup];
      LODWORD(self) = v10 ^ [(_UITabSidebarContent *)self isEmptyGroup]^ 1;
      goto LABEL_10;
    }

    goto LABEL_4;
  }

  v8 = [v4 action];
  v9 = [(_UITabSidebarContent *)self action];
  if (v8 == v9)
  {
    v11 = [v4 group];
    v12 = [(_UITabSidebarContent *)self group];
    LOBYTE(self) = v11 == v12;
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
    v4 = [(_UITabSidebarContent *)self node];
    v5 = [v4 children];
    v6 = [v5 count] == 0;
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