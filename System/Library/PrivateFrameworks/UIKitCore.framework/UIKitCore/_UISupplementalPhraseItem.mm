@interface _UISupplementalPhraseItem
- (_UISupplementalPhraseItem)initWithCoder:(id)coder;
- (_UISupplementalPhraseItem)initWithTISupplementalPhraseItem:(id)item;
- (_UISupplementalPhraseItem)initWithTISupplementalPhraseItem:(id)item icon:(id)icon;
- (_UISupplementalPhraseItem)initWithTitle:(id)title;
- (_UISupplementalPhraseItem)initWithTitle:(id)title icon:(id)icon;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UISupplementalPhraseItem

- (_UISupplementalPhraseItem)initWithTISupplementalPhraseItem:(id)item
{
  itemCopy = item;
  v10.receiver = self;
  v10.super_class = _UISupplementalPhraseItem;
  _init = [(_UISupplementalItem *)&v10 _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, item);
    v8 = v7;
  }

  return v7;
}

- (_UISupplementalPhraseItem)initWithTISupplementalPhraseItem:(id)item icon:(id)icon
{
  itemCopy = item;
  iconCopy = icon;
  v14.receiver = self;
  v14.super_class = _UISupplementalPhraseItem;
  _init = [(_UISupplementalItem *)&v14 _init];
  v10 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, item);
    v11 = [iconCopy copy];
    [(_UISupplementalItem *)v10 setIcon:v11];

    v12 = v10;
  }

  return v10;
}

- (_UISupplementalPhraseItem)initWithTitle:(id)title
{
  titleCopy = title;
  v8.receiver = self;
  v8.super_class = _UISupplementalPhraseItem;
  _init = [(_UISupplementalItem *)&v8 _init];
  if (_init)
  {
    v6 = [objc_alloc(MEMORY[0x1E69D96D0]) initWithTitle:titleCopy];
    _init = [(_UISupplementalPhraseItem *)_init initWithTISupplementalPhraseItem:v6 icon:0];
  }

  return _init;
}

- (_UISupplementalPhraseItem)initWithTitle:(id)title icon:(id)icon
{
  titleCopy = title;
  iconCopy = icon;
  v11.receiver = self;
  v11.super_class = _UISupplementalPhraseItem;
  _init = [(_UISupplementalItem *)&v11 _init];
  if (_init)
  {
    v9 = [objc_alloc(MEMORY[0x1E69D96D0]) initWithTitle:titleCopy];
    _init = [(_UISupplementalPhraseItem *)_init initWithTISupplementalPhraseItem:v9 icon:iconCopy];
  }

  return _init;
}

- (_UISupplementalPhraseItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = _UISupplementalPhraseItem;
  v5 = [(_UISupplementalItem *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unwrappedObject"];
    internal = v5->super._internal;
    v5->super._internal = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UISupplementalPhraseItem;
  coderCopy = coder;
  [(_UISupplementalItem *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->super._internal forKey:{@"unwrappedObject", v5.receiver, v5.super_class}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  title = [(_UISupplementalPhraseItem *)self title];
  v6 = [v3 stringWithFormat:@"<%@: %p title=%@, identifier=%llu>", v4, self, title, objc_msgSend(self->super._internal, "identifier")];;

  return v6;
}

@end