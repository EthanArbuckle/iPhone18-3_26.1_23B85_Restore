@interface UITextCheckerDictionaryEntry
- (void)dealloc;
@end

@implementation UITextCheckerDictionaryEntry

- (void)dealloc
{
  dictionary = self->dictionary;
  if (dictionary)
  {
    CFRelease(dictionary);
  }

  v4.receiver = self;
  v4.super_class = UITextCheckerDictionaryEntry;
  [(UITextCheckerDictionaryEntry *)&v4 dealloc];
}

@end