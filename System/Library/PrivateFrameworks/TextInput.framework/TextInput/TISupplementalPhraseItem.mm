@interface TISupplementalPhraseItem
- (TISupplementalPhraseItem)initWithCoder:(id)a3;
- (TISupplementalPhraseItem)initWithTitle:(id)a3;
- (TISupplementalPhraseItem)initWithTitle:(id)a3 phoneticTitle:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TISupplementalPhraseItem

- (id)description
{
  v18[2] = *MEMORY[0x1E69E9840];
  title = self->_title;
  v17[0] = "title";
  v17[1] = title;
  v4 = v17;
  phoneticTitle = self->_phoneticTitle;
  v18[0] = "phoneticTitle";
  v18[1] = phoneticTitle;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v7 = 1;
  do
  {
    v8 = v7;
    v10 = *v4;
    v9 = v4[1];
    if ([v9 length])
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s=%@", v10, v9];
      [v6 addObject:v11];
    }

    v7 = 0;
    v4 = v18;
  }

  while ((v8 & 1) != 0);
  v12 = MEMORY[0x1E696AEC0];
  v13 = objc_opt_class();
  v14 = [v6 componentsJoinedByString:{@", "}];
  v15 = [v12 stringWithFormat:@"<%@: %p %@, identifier=%llu>", v13, self, v14, -[TISupplementalItem identifier](self, "identifier")];;

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TISupplementalPhraseItem;
  v4 = a3;
  [(TISupplementalItem *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_title forKey:{@"title", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_phoneticTitle forKey:@"phoneticTitle"];
}

- (TISupplementalPhraseItem)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TISupplementalPhraseItem;
  v5 = [(TISupplementalItem *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneticTitle"];
    phoneticTitle = v5->_phoneticTitle;
    v5->_phoneticTitle = v8;

    v10 = v5;
  }

  return v5;
}

- (TISupplementalPhraseItem)initWithTitle:(id)a3 phoneticTitle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = TISupplementalPhraseItem;
  v8 = [(TISupplementalItem *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [v7 copy];
    phoneticTitle = v8->_phoneticTitle;
    v8->_phoneticTitle = v11;

    v13 = v8;
  }

  return v8;
}

- (TISupplementalPhraseItem)initWithTitle:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TISupplementalPhraseItem;
  v5 = [(TISupplementalItem *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    title = v5->_title;
    v5->_title = v6;

    v8 = v5;
  }

  return v5;
}

@end