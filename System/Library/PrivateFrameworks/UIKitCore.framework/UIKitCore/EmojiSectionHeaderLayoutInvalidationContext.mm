@interface EmojiSectionHeaderLayoutInvalidationContext
- (double)preferredWidthForHeaderInSection:(int64_t)section;
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

- (double)preferredWidthForHeaderInSection:(int64_t)section
{
  headerWidthDict = self->_headerWidthDict;
  v5 = 0.0;
  if (headerWidthDict && CFDictionaryContainsKey(headerWidthDict, section))
  {
    return CFDictionaryGetValue(self->_headerWidthDict, section);
  }

  return v5;
}

@end