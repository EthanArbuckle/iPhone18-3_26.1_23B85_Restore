@interface TLKInlineRoundedText
- (void)setString:(id)string;
@end

@implementation TLKInlineRoundedText

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

@end