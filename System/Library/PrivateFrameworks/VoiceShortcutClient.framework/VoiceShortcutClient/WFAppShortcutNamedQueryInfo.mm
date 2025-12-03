@interface WFAppShortcutNamedQueryInfo
- (BOOL)isEqual:(id)equal;
- (WFAppShortcutNamedQueryInfo)initWithCoder:(id)coder;
- (WFAppShortcutNamedQueryInfo)initWithName:(id)name symbolName:(id)symbolName;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAppShortcutNamedQueryInfo

- (unint64_t)hash
{
  name = [(WFAppShortcutNamedQueryInfo *)self name];
  v4 = [name hash];
  symbolName = [(WFAppShortcutNamedQueryInfo *)self symbolName];
  v6 = [symbolName hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy != self)
  {
    name = [(WFAppShortcutNamedQueryInfo *)self name];
    name2 = [(WFAppShortcutNamedQueryInfo *)equalCopy name];
    v7 = name;
    v8 = name2;
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

    symbolName = [(WFAppShortcutNamedQueryInfo *)self symbolName];
    symbolName2 = [(WFAppShortcutNamedQueryInfo *)equalCopy symbolName];
    v12 = symbolName;
    v15 = symbolName2;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(WFAppShortcutNamedQueryInfo *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  symbolName = [(WFAppShortcutNamedQueryInfo *)self symbolName];
  [coderCopy encodeObject:symbolName forKey:@"symbolName"];
}

- (WFAppShortcutNamedQueryInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"name"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"symbolName"];

  v9 = [(WFAppShortcutNamedQueryInfo *)self initWithName:v6 symbolName:v8];
  return v9;
}

- (WFAppShortcutNamedQueryInfo)initWithName:(id)name symbolName:(id)symbolName
{
  nameCopy = name;
  symbolNameCopy = symbolName;
  v15.receiver = self;
  v15.super_class = WFAppShortcutNamedQueryInfo;
  v8 = [(WFAppShortcutNamedQueryInfo *)&v15 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [symbolNameCopy copy];
    symbolName = v8->_symbolName;
    v8->_symbolName = v11;

    v13 = v8;
  }

  return v8;
}

@end