@interface WBSURLCompletionUserTypedString
+ (void)initialize;
- (NSArray)components;
- (NSString)searchQueryParameterString;
- (WBSURLCompletionUserTypedString)initWithCoder:(id)coder;
- (WBSURLCompletionUserTypedString)initWithString:(id)string;
- (WBSURLCompletionUserTypedString)stringWithoutWhitespace;
- (WBSURLCompletionUserTypedString)typedStringForURLMatching;
- (void)dealloc;
@end

@implementation WBSURLCompletionUserTypedString

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    systemEightBitStringEncoding = CFStringGetFastestEncoding(@" ");
  }
}

- (WBSURLCompletionUserTypedString)initWithString:(id)string
{
  stringCopy = string;
  v13.receiver = self;
  v13.super_class = WBSURLCompletionUserTypedString;
  v5 = [(WBSURLCompletionUserTypedString *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    safari_stringByFoldingWideCharactersAndNormalizing = [stringCopy safari_stringByFoldingWideCharactersAndNormalizing];
    string = v6->_string;
    v6->_string = safari_stringByFoldingWideCharactersAndNormalizing;

    v6->_length = CFStringGetLength(v6->_string);
    v6->_containsAnySpaces = CFStringFind(v6->_string, @" ", 0).location != -1;
    CharactersPtr = CFStringGetCharactersPtr(v6->_string);
    v6->_unichars = CharactersPtr;
    if (!CharactersPtr)
    {
      operator new[]();
    }

    CStringPtr = CFStringGetCStringPtr(v6->_string, systemEightBitStringEncoding);
    v6->_chars = CStringPtr;
    if (!CStringPtr)
    {
      operator new[]();
    }

    v11 = v6;
  }

  return v6;
}

- (WBSURLCompletionUserTypedString)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userTypedString"];
  v6 = [(WBSURLCompletionUserTypedString *)self initWithString:v5];

  return v6;
}

- (void)dealloc
{
  if (self->_ownsUnichars)
  {
    unichars = self->_unichars;
    if (unichars)
    {
      MEMORY[0x1BFB13480](unichars, 0x1000C40BDFB0063);
    }
  }

  if (self->_ownsChars)
  {
    chars = self->_chars;
    if (chars)
    {
      MEMORY[0x1BFB13480](chars, 0x1000C4077774924);
    }
  }

  v5.receiver = self;
  v5.super_class = WBSURLCompletionUserTypedString;
  [(WBSURLCompletionUserTypedString *)&v5 dealloc];
}

- (NSString)searchQueryParameterString
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_searchQueryParameterString)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [(NSString *)self->_string stringByReplacingOccurrencesOfString:@" " withString:@"+"];
    v5 = [v3 stringWithFormat:@"q=%@", v4];
    searchQueryParameterString = self->_searchQueryParameterString;
    self->_searchQueryParameterString = v5;
  }

  os_unfair_lock_unlock(&self->_lock);
  v7 = self->_searchQueryParameterString;

  return v7;
}

- (WBSURLCompletionUserTypedString)stringWithoutWhitespace
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_stringWithoutWhitespace)
  {
    string = self->_string;
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v5 = [(NSString *)string safari_stringByRemovingCharactersInSet:whitespaceCharacterSet];
    stringWithoutWhitespace = self->_stringWithoutWhitespace;
    self->_stringWithoutWhitespace = v5;
  }

  os_unfair_lock_unlock(&self->_lock);
  v7 = self->_stringWithoutWhitespace;

  return v7;
}

- (NSArray)components
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_components)
  {
    string = self->_string;
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v5 = [(NSString *)string componentsSeparatedByCharactersInSet:whitespaceCharacterSet];
    v6 = [v5 safari_filterObjectsUsingBlock:&__block_literal_global_113];
    components = self->_components;
    self->_components = v6;
  }

  os_unfair_lock_unlock(&self->_lock);
  v8 = self->_components;

  return v8;
}

- (WBSURLCompletionUserTypedString)typedStringForURLMatching
{
  selfCopy = self;
  os_unfair_lock_lock(&self->_lock);
  typedStringForURLMatching = selfCopy->_typedStringForURLMatching;
  os_unfair_lock_unlock(&selfCopy->_lock);
  if (typedStringForURLMatching)
  {
    v4 = selfCopy->_typedStringForURLMatching;
LABEL_5:
    v6 = v4;
    goto LABEL_6;
  }

  v5 = atomic_load(&selfCopy->_stringOnlyContainsWhitespaces);
  if (v5)
  {
    v4 = selfCopy;
    goto LABEL_5;
  }

  safari_stringByTrimmingWhitespace = [(NSString *)selfCopy->_string safari_stringByTrimmingWhitespace];
  if ([safari_stringByTrimmingWhitespace length])
  {
    os_unfair_lock_lock(&selfCopy->_lock);
    if (!selfCopy->_typedStringForURLMatching)
    {
      v9 = [[WBSURLCompletionUserTypedString alloc] initWithString:safari_stringByTrimmingWhitespace];
      v10 = selfCopy->_typedStringForURLMatching;
      selfCopy->_typedStringForURLMatching = v9;
    }

    os_unfair_lock_unlock(&selfCopy->_lock);
    selfCopy = selfCopy->_typedStringForURLMatching;
  }

  else
  {
    atomic_store(1u, &selfCopy->_stringOnlyContainsWhitespaces);
  }

  v6 = selfCopy;

LABEL_6:

  return v6;
}

@end