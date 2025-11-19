@interface _UISupplementalItem
+ (id)_uiSupplementalItemWithTISupplementalItem:(id)a3 icon:(id)a4;
- (_UISupplementalItem)initWithCoder:(id)a3;
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

+ (id)_uiSupplementalItemWithTISupplementalItem:(id)a3 icon:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [[_UISupplementalPersonItem alloc] initWithTISupplementalPersonItem:v5 icon:v6];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [[_UISupplementalPhraseItem alloc] initWithTISupplementalPhraseItem:v5 icon:v6];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (_UISupplementalItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UISupplementalItem *)self _init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v6;

    v8 = v5;
  }

  return v5;
}

@end