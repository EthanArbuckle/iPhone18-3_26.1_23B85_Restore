@interface TISupplementalPhraseItem
- (TISupplementalPhraseItem)initWithCoder:(id)coder;
- (TISupplementalPhraseItem)initWithTitle:(id)title;
- (TISupplementalPhraseItem)initWithTitle:(id)title phoneticTitle:(id)phoneticTitle;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TISupplementalPhraseItem;
  coderCopy = coder;
  [(TISupplementalItem *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_title forKey:{@"title", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_phoneticTitle forKey:@"phoneticTitle"];
}

- (TISupplementalPhraseItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = TISupplementalPhraseItem;
  v5 = [(TISupplementalItem *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneticTitle"];
    phoneticTitle = v5->_phoneticTitle;
    v5->_phoneticTitle = v8;

    v10 = v5;
  }

  return v5;
}

- (TISupplementalPhraseItem)initWithTitle:(id)title phoneticTitle:(id)phoneticTitle
{
  titleCopy = title;
  phoneticTitleCopy = phoneticTitle;
  v15.receiver = self;
  v15.super_class = TISupplementalPhraseItem;
  v8 = [(TISupplementalItem *)&v15 init];
  if (v8)
  {
    v9 = [titleCopy copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [phoneticTitleCopy copy];
    phoneticTitle = v8->_phoneticTitle;
    v8->_phoneticTitle = v11;

    v13 = v8;
  }

  return v8;
}

- (TISupplementalPhraseItem)initWithTitle:(id)title
{
  titleCopy = title;
  v10.receiver = self;
  v10.super_class = TISupplementalPhraseItem;
  v5 = [(TISupplementalItem *)&v10 init];
  if (v5)
  {
    v6 = [titleCopy copy];
    title = v5->_title;
    v5->_title = v6;

    v8 = v5;
  }

  return v5;
}

@end