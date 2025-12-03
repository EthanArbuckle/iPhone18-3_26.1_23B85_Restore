@interface TLKMultilineText
+ (TLKMultilineText)textWithString:(id)string;
- (id)description;
- (void)setMaxLines:(unint64_t)lines;
- (void)setText:(id)text;
@end

@implementation TLKMultilineText

+ (TLKMultilineText)textWithString:(id)string
{
  if (string)
  {
    stringCopy = string;
    v4 = objc_opt_new();
    [v4 setText:stringCopy];

    [v4 setMaxLines:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setText:(id)text
{
  textCopy = text;
  if (self->_text != textCopy)
  {
    objc_storeStrong(&self->_text, text);
    observer = [(TLKObject *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKObject *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKObject *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setMaxLines:(unint64_t)lines
{
  if (self->_maxLines != lines)
  {
    self->_maxLines = lines;
    observer = [(TLKObject *)self observer];
    if (observer)
    {
      v5 = observer;
      observer2 = [(TLKObject *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKObject *)self observer];
        [observer3 propertiesDidChange];
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
  text = [(TLKMultilineText *)self text];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, text];

  return v6;
}

@end