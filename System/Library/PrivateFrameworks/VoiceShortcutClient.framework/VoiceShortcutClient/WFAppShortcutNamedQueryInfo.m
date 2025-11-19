@interface WFAppShortcutNamedQueryInfo
- (BOOL)isEqual:(id)a3;
- (WFAppShortcutNamedQueryInfo)initWithCoder:(id)a3;
- (WFAppShortcutNamedQueryInfo)initWithName:(id)a3 symbolName:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFAppShortcutNamedQueryInfo

- (unint64_t)hash
{
  v3 = [(WFAppShortcutNamedQueryInfo *)self name];
  v4 = [v3 hash];
  v5 = [(WFAppShortcutNamedQueryInfo *)self symbolName];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 != self)
  {
    v5 = [(WFAppShortcutNamedQueryInfo *)self name];
    v6 = [(WFAppShortcutNamedQueryInfo *)v4 name];
    v7 = v5;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      LOBYTE(v10) = 0;
      v11 = v8;
      v12 = v7;
      if (!v7 || !v8)
      {
LABEL_15:

LABEL_16:
        goto LABEL_17;
      }

      v10 = [v7 isEqualToString:v8];

      if (!v10)
      {
        goto LABEL_16;
      }
    }

    v13 = [(WFAppShortcutNamedQueryInfo *)self symbolName];
    v14 = [(WFAppShortcutNamedQueryInfo *)v4 symbolName];
    v12 = v13;
    v15 = v14;
    v11 = v15;
    if (v12 == v15)
    {
      LOBYTE(v10) = 1;
    }

    else
    {
      LOBYTE(v10) = 0;
      if (v12 && v15)
      {
        LOBYTE(v10) = [v12 isEqualToString:v15];
      }
    }

    goto LABEL_15;
  }

  LOBYTE(v10) = 1;
LABEL_17:

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFAppShortcutNamedQueryInfo *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(WFAppShortcutNamedQueryInfo *)self symbolName];
  [v4 encodeObject:v6 forKey:@"symbolName"];
}

- (WFAppShortcutNamedQueryInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"name"];

  v7 = objc_opt_self();
  v8 = [v4 decodeObjectOfClass:v7 forKey:@"symbolName"];

  v9 = [(WFAppShortcutNamedQueryInfo *)self initWithName:v6 symbolName:v8];
  return v9;
}

- (WFAppShortcutNamedQueryInfo)initWithName:(id)a3 symbolName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = WFAppShortcutNamedQueryInfo;
  v8 = [(WFAppShortcutNamedQueryInfo *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [v7 copy];
    symbolName = v8->_symbolName;
    v8->_symbolName = v11;

    v13 = v8;
  }

  return v8;
}

@end