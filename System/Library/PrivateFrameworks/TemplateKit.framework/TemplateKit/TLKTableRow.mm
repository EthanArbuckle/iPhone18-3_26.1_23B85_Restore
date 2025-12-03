@interface TLKTableRow
- (void)setData:(id)data;
- (void)setIsSubHeader:(BOOL)header;
@end

@implementation TLKTableRow

- (void)setData:(id)data
{
  dataCopy = data;
  if (self->_data != dataCopy)
  {
    objc_storeStrong(&self->_data, data);
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

- (void)setIsSubHeader:(BOOL)header
{
  if (self->_isSubHeader != header)
  {
    self->_isSubHeader = header;
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

@end