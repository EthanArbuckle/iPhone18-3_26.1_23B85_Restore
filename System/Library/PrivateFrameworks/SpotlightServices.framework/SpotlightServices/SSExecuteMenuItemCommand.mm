@interface SSExecuteMenuItemCommand
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation SSExecuteMenuItemCommand

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = SSExecuteMenuItemCommand;
  v4 = [(SFExecuteMenuItemCommand *)&v12 copyWithZone:a3];
  v5 = [(SSExecuteMenuItemCommand *)self pid];
  v6 = [v5 copy];
  [v4 setPid:v6];

  v7 = [(SSExecuteMenuItemCommand *)self title];
  v8 = [v7 copy];
  [v4 setTitle:v8];

  v9 = [(SSExecuteMenuItemCommand *)self menuItemPathComponents];
  v10 = [v9 copy];
  [v4 setMenuItemPathComponents:v10];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if ([(SSExecuteMenuItemCommand *)v5 isMemberOfClass:objc_opt_class()])
    {
      v32.receiver = self;
      v32.super_class = SSExecuteMenuItemCommand;
      if ([(SFExecuteMenuItemCommand *)&v32 isEqual:v5])
      {
        v6 = v5;
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

        v12 = [(SSExecuteMenuItemCommand *)self title];
        v13 = [(SSExecuteMenuItemCommand *)v6 title];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
          goto LABEL_28;
        }

        v15 = [(SSExecuteMenuItemCommand *)self title];
        if (v15)
        {
          v25 = v12;
          v16 = [(SSExecuteMenuItemCommand *)self title];
          v27 = [(SSExecuteMenuItemCommand *)v6 title];
          v28 = v16;
          if (![v16 isEqual:?])
          {
            v11 = 0;
            v12 = v25;
            goto LABEL_26;
          }

          v29 = v15;
          v30 = v3;
          v12 = v25;
        }

        else
        {
          v29 = 0;
          v30 = v3;
        }

        v17 = [(SSExecuteMenuItemCommand *)self menuItemPathComponents];
        v18 = [(SSExecuteMenuItemCommand *)v6 menuItemPathComponents];
        if ((v17 != 0) == (v18 == 0))
        {

          v11 = 0;
          v15 = v29;
          v3 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v24 = v17;
          v26 = v18;
          v19 = [(SSExecuteMenuItemCommand *)self menuItemPathComponents];
          v15 = v29;
          if (v19)
          {
            v23 = v19;
            v22 = [(SSExecuteMenuItemCommand *)self menuItemPathComponents];
            v20 = [(SSExecuteMenuItemCommand *)v6 menuItemPathComponents];
            v11 = [v22 isEqual:?];
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
  v6 = [(SSExecuteMenuItemCommand *)self title];
  v7 = v5 ^ [v6 hash];
  v8 = [(SSExecuteMenuItemCommand *)self menuItemPathComponents];
  v9 = v7 ^ [v8 hash];

  return v9 ^ v3;
}

@end