@interface _UISupplementalItem
+ (id)_uiSupplementalItemWithTISupplementalItem:(id)item icon:(id)icon;
- (_UISupplementalItem)initWithCoder:(id)coder;
- (id)_init;
@end

@implementation _UISupplementalItem

- (id)_init
{
  v6.receiver = self;
  v6.super_class = _UISupplementalItem;
  v2 = [(_UISupplementalItem *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

+ (id)_uiSupplementalItemWithTISupplementalItem:(id)item icon:(id)icon
{
  itemCopy = item;
  iconCopy = icon;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [[_UISupplementalPersonItem alloc] initWithTISupplementalPersonItem:itemCopy icon:iconCopy];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [[_UISupplementalPhraseItem alloc] initWithTISupplementalPhraseItem:itemCopy icon:iconCopy];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (_UISupplementalItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(_UISupplementalItem *)self _init];
  if (_init)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    icon = _init->_icon;
    _init->_icon = v6;

    v8 = _init;
  }

  return _init;
}

@end