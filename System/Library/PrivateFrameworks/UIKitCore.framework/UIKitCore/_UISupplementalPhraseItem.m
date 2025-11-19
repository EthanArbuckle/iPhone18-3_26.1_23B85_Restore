@interface _UISupplementalPhraseItem
- (_UISupplementalPhraseItem)initWithCoder:(id)a3;
- (_UISupplementalPhraseItem)initWithTISupplementalPhraseItem:(id)a3;
- (_UISupplementalPhraseItem)initWithTISupplementalPhraseItem:(id)a3 icon:(id)a4;
- (_UISupplementalPhraseItem)initWithTitle:(id)a3;
- (_UISupplementalPhraseItem)initWithTitle:(id)a3 icon:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UISupplementalPhraseItem

- (_UISupplementalPhraseItem)initWithTISupplementalPhraseItem:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _UISupplementalPhraseItem;
  v6 = [(_UISupplementalItem *)&v10 _init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 1, a3);
    v8 = v7;
  }

  return v7;
}

- (_UISupplementalPhraseItem)initWithTISupplementalPhraseItem:(id)a3 icon:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _UISupplementalPhraseItem;
  v9 = [(_UISupplementalItem *)&v14 _init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 1, a3);
    v11 = [v8 copy];
    [(_UISupplementalItem *)v10 setIcon:v11];

    v12 = v10;
  }

  return v10;
}

- (_UISupplementalPhraseItem)initWithTitle:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UISupplementalPhraseItem;
  v5 = [(_UISupplementalItem *)&v8 _init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69D96D0]) initWithTitle:v4];
    v5 = [(_UISupplementalPhraseItem *)v5 initWithTISupplementalPhraseItem:v6 icon:0];
  }

  return v5;
}

- (_UISupplementalPhraseItem)initWithTitle:(id)a3 icon:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _UISupplementalPhraseItem;
  v8 = [(_UISupplementalItem *)&v11 _init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69D96D0]) initWithTitle:v6];
    v8 = [(_UISupplementalPhraseItem *)v8 initWithTISupplementalPhraseItem:v9 icon:v7];
  }

  return v8;
}

- (_UISupplementalPhraseItem)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _UISupplementalPhraseItem;
  v5 = [(_UISupplementalItem *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unwrappedObject"];
    internal = v5->super._internal;
    v5->super._internal = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UISupplementalPhraseItem;
  v4 = a3;
  [(_UISupplementalItem *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->super._internal forKey:{@"unwrappedObject", v5.receiver, v5.super_class}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(_UISupplementalPhraseItem *)self title];
  v6 = [v3 stringWithFormat:@"<%@: %p title=%@, identifier=%llu>", v4, self, v5, objc_msgSend(self->super._internal, "identifier")];;

  return v6;
}

@end