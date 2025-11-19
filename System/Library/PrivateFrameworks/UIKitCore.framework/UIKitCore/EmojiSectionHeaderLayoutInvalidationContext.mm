@interface EmojiSectionHeaderLayoutInvalidationContext
- (double)preferredWidthForHeaderInSection:(int64_t)a3;
- (void)dealloc;
@end

@implementation EmojiSectionHeaderLayoutInvalidationContext

- (void)dealloc
{
  headerWidthDict = self->_headerWidthDict;
  if (headerWidthDict)
  {
    CFRelease(headerWidthDict);
  }

  v4.receiver = self;
  v4.super_class = EmojiSectionHeaderLayoutInvalidationContext;
  [(EmojiSectionHeaderLayoutInvalidationContext *)&v4 dealloc];
}

- (double)preferredWidthForHeaderInSection:(int64_t)a3
{
  headerWidthDict = self->_headerWidthDict;
  v5 = 0.0;
  if (headerWidthDict && CFDictionaryContainsKey(headerWidthDict, a3))
  {
    return CFDictionaryGetValue(self->_headerWidthDict, a3);
  }

  return v5;
}

@end