@interface SSExecuteMenuItemCommand
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SSExecuteMenuItemCommand

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = SSExecuteMenuItemCommand;
  v4 = [(SFExecuteMenuItemCommand *)&v12 copyWithZone:zone];
  v5 = [(SSExecuteMenuItemCommand *)self pid];
  v6 = [v5 copy];
  [v4 setPid:v6];

  title = [(SSExecuteMenuItemCommand *)self title];
  v8 = [title copy];
  [v4 setTitle:v8];

  menuItemPathComponents = [(SSExecuteMenuItemCommand *)self menuItemPathComponents];
  v10 = [menuItemPathComponents copy];
  [v4 setMenuItemPathComponents:v10];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(SSExecuteMenuItemCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v32.receiver = self;
      v32.super_class = SSExecuteMenuItemCommand;
      if ([(SFExecuteMenuItemCommand *)&v32 isEqual:equalCopy])
      {
        v6 = equalCopy;
        v7 = [(SSExecuteMenuItemCommand *)self pid];
        v8 = [(SSExecuteMenuItemCommand *)v6 pid];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_31:

          goto LABEL_32;
        }

        v9 = [(SSExecuteMenuItemCommand *)self pid];
        if (v9)
        {
          v3 = [(SSExecuteMenuItemCommand *)self pid];
          v10 = [(SSExecuteMenuItemCommand *)v6 pid];
          if (![v3 isEqual:v10])
          {
            v11 = 0;
            goto LABEL_29;
          }

          v31 = v10;
        }

        title = [(SSExecuteMenuItemCommand *)self title];
        title2 = [(SSExecuteMenuItemCommand *)v6 title];
        v14 = title2;
        if ((title != 0) == (title2 == 0))
        {

          v11 = 0;
          goto LABEL_28;
        }

        title3 = [(SSExecuteMenuItemCommand *)self title];
        if (title3)
        {
          v25 = title;
          title4 = [(SSExecuteMenuItemCommand *)self title];
          title5 = [(SSExecuteMenuItemCommand *)v6 title];
          v28 = title4;
          if (![title4 isEqual:?])
          {
            v11 = 0;
            title = v25;
            goto LABEL_26;
          }

          v29 = title3;
          v30 = v3;
          title = v25;
        }

        else
        {
          v29 = 0;
          v30 = v3;
        }

        menuItemPathComponents = [(SSExecuteMenuItemCommand *)self menuItemPathComponents];
        menuItemPathComponents2 = [(SSExecuteMenuItemCommand *)v6 menuItemPathComponents];
        if ((menuItemPathComponents != 0) == (menuItemPathComponents2 == 0))
        {

          v11 = 0;
          title3 = v29;
          v3 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v24 = menuItemPathComponents;
          v26 = menuItemPathComponents2;
          menuItemPathComponents3 = [(SSExecuteMenuItemCommand *)self menuItemPathComponents];
          title3 = v29;
          if (menuItemPathComponents3)
          {
            v23 = menuItemPathComponents3;
            menuItemPathComponents4 = [(SSExecuteMenuItemCommand *)self menuItemPathComponents];
            menuItemPathComponents5 = [(SSExecuteMenuItemCommand *)v6 menuItemPathComponents];
            v11 = [menuItemPathComponents4 isEqual:?];
          }

          else
          {

            v11 = 1;
          }

          v3 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

LABEL_26:

LABEL_27:
LABEL_28:
        v10 = v31;
        if (!v9)
        {
LABEL_30:

          goto LABEL_31;
        }

LABEL_29:

        goto LABEL_30;
      }
    }

    v11 = 0;
  }

LABEL_32:

  return v11;
}

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = SSExecuteMenuItemCommand;
  v3 = [(SFExecuteMenuItemCommand *)&v11 hash];
  v4 = [(SSExecuteMenuItemCommand *)self pid];
  v5 = [v4 hash];
  title = [(SSExecuteMenuItemCommand *)self title];
  v7 = v5 ^ [title hash];
  menuItemPathComponents = [(SSExecuteMenuItemCommand *)self menuItemPathComponents];
  v9 = v7 ^ [menuItemPathComponents hash];

  return v9 ^ v3;
}

@end