@interface TLKFormattedText
+ (TLKFormattedText)formattedTextWithString:(id)a3;
- (BOOL)hasContent;
- (id)description;
- (void)setEncapsulationStyle:(int64_t)a3;
- (void)setString:(id)a3;
- (void)setVerticalTextAlignment:(int64_t)a3;
@end

@implementation TLKFormattedText

- (BOOL)hasContent
{
  v2 = [(TLKFormattedText *)self string];
  v3 = [v2 length] != 0;

  return v3;
}

- (void)setVerticalTextAlignment:(int64_t)a3
{
  if (self->_verticalTextAlignment != a3)
  {
    self->_verticalTextAlignment = a3;
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

- (void)setEncapsulationStyle:(int64_t)a3
{
  if (self->_encapsulationStyle != a3)
  {
    self->_encapsulationStyle = a3;
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

- (void)setString:(id)a3
{
  v10 = a3;
  if (self->_string != v10)
  {
    objc_storeStrong(&self->_string, a3);
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

+ (TLKFormattedText)formattedTextWithString:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setString:v3];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = TLKFormattedText;
  v4 = [(TLKFormattedText *)&v8 description];
  v5 = [(TLKFormattedText *)self string];
  v6 = [v3 stringWithFormat:@"%@ string:%@ isBold:%d isEmphasized:%d", v4, v5, -[TLKFormattedTextItem isBold](self, "isBold"), -[TLKFormattedTextItem isEmphasized](self, "isEmphasized")];

  return v6;
}

@end