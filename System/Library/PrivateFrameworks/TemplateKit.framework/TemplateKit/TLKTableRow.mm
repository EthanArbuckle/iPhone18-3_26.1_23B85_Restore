@interface TLKTableRow
- (void)setData:(id)a3;
- (void)setIsSubHeader:(BOOL)a3;
@end

@implementation TLKTableRow

- (void)setData:(id)a3
{
  v10 = a3;
  if (self->_data != v10)
  {
    objc_storeStrong(&self->_data, a3);
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

- (void)setIsSubHeader:(BOOL)a3
{
  if (self->_isSubHeader != a3)
  {
    self->_isSubHeader = a3;
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