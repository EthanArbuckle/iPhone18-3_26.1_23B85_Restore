@interface TLKFormattedText
+ (TLKFormattedText)formattedTextWithString:(id)string;
- (BOOL)hasContent;
- (id)description;
- (void)setEncapsulationStyle:(int64_t)style;
- (void)setString:(id)string;
- (void)setVerticalTextAlignment:(int64_t)alignment;
@end

@implementation TLKFormattedText

- (BOOL)hasContent
{
  string = [(TLKFormattedText *)self string];
  v3 = [string length] != 0;

  return v3;
}

- (void)setVerticalTextAlignment:(int64_t)alignment
{
  if (self->_verticalTextAlignment != alignment)
  {
    self->_verticalTextAlignment = alignment;
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

- (void)setEncapsulationStyle:(int64_t)style
{
  if (self->_encapsulationStyle != style)
  {
    self->_encapsulationStyle = style;
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

- (void)setString:(id)string
{
  stringCopy = string;
  if (self->_string != stringCopy)
  {
    objc_storeStrong(&self->_string, string);
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

+ (TLKFormattedText)formattedTextWithString:(id)string
{
  stringCopy = string;
  v4 = objc_opt_new();
  [v4 setString:stringCopy];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = TLKFormattedText;
  v4 = [(TLKFormattedText *)&v8 description];
  string = [(TLKFormattedText *)self string];
  v6 = [v3 stringWithFormat:@"%@ string:%@ isBold:%d isEmphasized:%d", v4, string, -[TLKFormattedTextItem isBold](self, "isBold"), -[TLKFormattedTextItem isEmphasized](self, "isEmphasized")];

  return v6;
}

@end