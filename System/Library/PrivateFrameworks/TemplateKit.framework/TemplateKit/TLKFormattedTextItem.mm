@interface TLKFormattedTextItem
- (void)setIsBold:(BOOL)bold;
- (void)setIsEmphasized:(BOOL)emphasized;
@end

@implementation TLKFormattedTextItem

- (void)setIsBold:(BOOL)bold
{
  if (self->_isBold != bold)
  {
    self->_isBold = bold;
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

- (void)setIsEmphasized:(BOOL)emphasized
{
  if (self->_isEmphasized != emphasized)
  {
    self->_isEmphasized = emphasized;
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