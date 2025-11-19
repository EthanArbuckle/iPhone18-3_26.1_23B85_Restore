@interface TLKFormattedTextItem
- (void)setIsBold:(BOOL)a3;
- (void)setIsEmphasized:(BOOL)a3;
@end

@implementation TLKFormattedTextItem

- (void)setIsBold:(BOOL)a3
{
  if (self->_isBold != a3)
  {
    self->_isBold = a3;
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

- (void)setIsEmphasized:(BOOL)a3
{
  if (self->_isEmphasized != a3)
  {
    self->_isEmphasized = a3;
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

@end