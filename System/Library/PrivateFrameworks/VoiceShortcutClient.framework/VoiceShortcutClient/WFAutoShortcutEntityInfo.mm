@interface WFAutoShortcutEntityInfo
- (WFAutoShortcutEntityInfo)initWithCoder:(id)a3;
- (WFAutoShortcutEntityInfo)initWithName:(id)a3 subtitle:(id)a4 icon:(id)a5 badge:(unint64_t)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFAutoShortcutEntityInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFAutoShortcutEntityInfo *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(WFAutoShortcutEntityInfo *)self subtitle];
  [v4 encodeObject:v6 forKey:@"subtitle"];

  v7 = [(WFAutoShortcutEntityInfo *)self icon];
  [v4 encodeObject:v7 forKey:@"icon"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WFAutoShortcutEntityInfo badge](self, "badge")}];
  [v4 encodeObject:v8 forKey:@"badge"];
}

- (WFAutoShortcutEntityInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"badge"];

  v9 = [(WFAutoShortcutEntityInfo *)self initWithName:v5 subtitle:v6 icon:v7 badge:v8];
  return v9;
}

- (WFAutoShortcutEntityInfo)initWithName:(id)a3 subtitle:(id)a4 icon:(id)a5 badge:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v20.receiver = self;
  v20.super_class = WFAutoShortcutEntityInfo;
  v13 = [(WFAutoShortcutEntityInfo *)&v20 init];
  if (v13)
  {
    v14 = [v10 copy];
    name = v13->_name;
    v13->_name = v14;

    v16 = [v11 copy];
    subtitle = v13->_subtitle;
    v13->_subtitle = v16;

    objc_storeStrong(&v13->_icon, a5);
    v13->_badge = a6;
    v18 = v13;
  }

  return v13;
}

@end