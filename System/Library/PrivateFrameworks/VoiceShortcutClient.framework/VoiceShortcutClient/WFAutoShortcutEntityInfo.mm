@interface WFAutoShortcutEntityInfo
- (WFAutoShortcutEntityInfo)initWithCoder:(id)coder;
- (WFAutoShortcutEntityInfo)initWithName:(id)name subtitle:(id)subtitle icon:(id)icon badge:(unint64_t)badge;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAutoShortcutEntityInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(WFAutoShortcutEntityInfo *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  subtitle = [(WFAutoShortcutEntityInfo *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"subtitle"];

  icon = [(WFAutoShortcutEntityInfo *)self icon];
  [coderCopy encodeObject:icon forKey:@"icon"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WFAutoShortcutEntityInfo badge](self, "badge")}];
  [coderCopy encodeObject:v8 forKey:@"badge"];
}

- (WFAutoShortcutEntityInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"badge"];

  v9 = [(WFAutoShortcutEntityInfo *)self initWithName:v5 subtitle:v6 icon:v7 badge:v8];
  return v9;
}

- (WFAutoShortcutEntityInfo)initWithName:(id)name subtitle:(id)subtitle icon:(id)icon badge:(unint64_t)badge
{
  nameCopy = name;
  subtitleCopy = subtitle;
  iconCopy = icon;
  v20.receiver = self;
  v20.super_class = WFAutoShortcutEntityInfo;
  v13 = [(WFAutoShortcutEntityInfo *)&v20 init];
  if (v13)
  {
    v14 = [nameCopy copy];
    name = v13->_name;
    v13->_name = v14;

    v16 = [subtitleCopy copy];
    subtitle = v13->_subtitle;
    v13->_subtitle = v16;

    objc_storeStrong(&v13->_icon, icon);
    v13->_badge = badge;
    v18 = v13;
  }

  return v13;
}

@end