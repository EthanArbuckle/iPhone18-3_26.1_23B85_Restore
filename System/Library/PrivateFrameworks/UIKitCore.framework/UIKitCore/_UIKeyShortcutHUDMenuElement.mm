@interface _UIKeyShortcutHUDMenuElement
+ (id)elementWithUIMenuElement:(id)element;
- (BOOL)isEqual:(id)equal;
- (NSString)subtitle;
- (NSString)title;
- (_UIKeyShortcutHUDMenuElement)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIKeyShortcutHUDMenuElement

+ (id)elementWithUIMenuElement:(id)element
{
  elementCopy = element;
  v4 = objc_opt_new();
  v5 = v4[1];
  v4[1] = elementCopy;

  return v4;
}

- (NSString)title
{
  uiMenuElement = [(_UIKeyShortcutHUDMenuElement *)self uiMenuElement];
  title = [uiMenuElement title];

  return title;
}

- (NSString)subtitle
{
  uiMenuElement = [(_UIKeyShortcutHUDMenuElement *)self uiMenuElement];
  subtitle = [uiMenuElement subtitle];

  return subtitle;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = _UIKeyShortcutHUDMenuElement;
  v3 = [(_UIKeyShortcutHUDMenuElement *)&v8 description];
  v4 = [v3 mutableCopy];

  uiMenuElement = [(_UIKeyShortcutHUDMenuElement *)self uiMenuElement];

  if (uiMenuElement)
  {
    uiMenuElement2 = [(_UIKeyShortcutHUDMenuElement *)self uiMenuElement];
    [v4 appendFormat:@": %@", uiMenuElement2];
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      uiMenuElement = [(_UIKeyShortcutHUDMenuElement *)self uiMenuElement];
      uiMenuElement2 = [(_UIKeyShortcutHUDMenuElement *)v5 uiMenuElement];

      v8 = [uiMenuElement isEqual:uiMenuElement2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uiMenuElement = [(_UIKeyShortcutHUDMenuElement *)self uiMenuElement];
  [coderCopy encodeObject:uiMenuElement forKey:@"menuElement"];
}

- (_UIKeyShortcutHUDMenuElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UIKeyShortcutHUDMenuElement *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"menuElement"];
    uiMenuElement = v5->_uiMenuElement;
    v5->_uiMenuElement = v7;
  }

  return v5;
}

@end