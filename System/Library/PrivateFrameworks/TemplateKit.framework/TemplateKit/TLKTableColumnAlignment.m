@interface TLKTableColumnAlignment
- (id)description;
- (int64_t)textAlignment;
- (void)setColumnAlignment:(unint64_t)a3;
- (void)setDataAlignment:(int64_t)a3;
- (void)setIsEqualWidth:(BOOL)a3;
@end

@implementation TLKTableColumnAlignment

- (void)setColumnAlignment:(unint64_t)a3
{
  if (self->_columnAlignment != a3)
  {
    self->_columnAlignment = a3;
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

- (void)setDataAlignment:(int64_t)a3
{
  if (self->_dataAlignment != a3)
  {
    self->_dataAlignment = a3;
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

- (void)setIsEqualWidth:(BOOL)a3
{
  if (self->_isEqualWidth != a3)
  {
    self->_isEqualWidth = a3;
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

- (int64_t)textAlignment
{
  v2 = [(TLKTableColumnAlignment *)self columnAlignment];
  if (v2 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v2 == 2);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = TLKTableColumnAlignment;
  v4 = [(TLKTableColumnAlignment *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ dataAlignment - %d columnAlignment - %d", v4, -[TLKTableColumnAlignment dataAlignment](self, "dataAlignment"), -[TLKTableColumnAlignment columnAlignment](self, "columnAlignment")];

  return v5;
}

@end