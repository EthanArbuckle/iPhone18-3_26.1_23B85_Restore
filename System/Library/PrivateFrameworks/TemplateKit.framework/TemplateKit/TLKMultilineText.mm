@interface TLKMultilineText
+ (TLKMultilineText)textWithString:(id)a3;
- (id)description;
- (void)setMaxLines:(unint64_t)a3;
- (void)setText:(id)a3;
@end

@implementation TLKMultilineText

+ (TLKMultilineText)textWithString:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_opt_new();
    [v4 setText:v3];

    [v4 setMaxLines:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setText:(id)a3
{
  v10 = a3;
  if (self->_text != v10)
  {
    objc_storeStrong(&self->_text, a3);
    v5 = [(TLKObject *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKObject *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKObject *)self observer];
        [v9 propertiesDidChange];
      }
    }
  }
}

- (void)setMaxLines:(unint64_t)a3
{
  if (self->_maxLines != a3)
  {
    self->_maxLines = a3;
    v4 = [(TLKObject *)self observer];
    if (v4)
    {
      v5 = v4;
      v6 = [(TLKObject *)self observer];
      v7 = [v6 batchUpdateCount];

      if (!v7)
      {
        v8 = [(TLKObject *)self observer];
        [v8 propertiesDidChange];
      }
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = TLKMultilineText;
  v4 = [(TLKMultilineText *)&v8 description];
  v5 = [(TLKMultilineText *)self text];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end