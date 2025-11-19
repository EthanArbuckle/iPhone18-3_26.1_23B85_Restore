@interface WBSURLCompletionUserTypedString
+ (void)initialize;
- (NSArray)components;
- (NSString)searchQueryParameterString;
- (WBSURLCompletionUserTypedString)initWithCoder:(id)a3;
- (WBSURLCompletionUserTypedString)initWithString:(id)a3;
- (WBSURLCompletionUserTypedString)stringWithoutWhitespace;
- (WBSURLCompletionUserTypedString)typedStringForURLMatching;
- (void)dealloc;
@end

@implementation WBSURLCompletionUserTypedString

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    systemEightBitStringEncoding = CFStringGetFastestEncoding(@" ");
  }
}

- (WBSURLCompletionUserTypedString)initWithString:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = WBSURLCompletionUserTypedString;
  v5 = [(WBSURLCompletionUserTypedString *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [v4 safari_stringByFoldingWideCharactersAndNormalizing];
    string = v6->_string;
    v6->_string = v7;

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

- (WBSURLCompletionUserTypedString)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userTypedString"];
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
    v4 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v5 = [(NSString *)string safari_stringByRemovingCharactersInSet:v4];
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
    v4 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v5 = [(NSString *)string componentsSeparatedByCharactersInSet:v4];
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
  v2 = self;
  os_unfair_lock_lock(&self->_lock);
  typedStringForURLMatching = v2->_typedStringForURLMatching;
  os_unfair_lock_unlock(&v2->_lock);
  if (typedStringForURLMatching)
  {
    v4 = v2->_typedStringForURLMatching;
LABEL_5:
    v6 = v4;
    goto LABEL_6;
  }

  v5 = atomic_load(&v2->_stringOnlyContainsWhitespaces);
  if (v5)
  {
    v4 = v2;
    goto LABEL_5;
  }

  v8 = [(NSString *)v2->_string safari_stringByTrimmingWhitespace];
  if ([v8 length])
  {
    os_unfair_lock_lock(&v2->_lock);
    if (!v2->_typedStringForURLMatching)
    {
      v9 = [[WBSURLCompletionUserTypedString alloc] initWithString:v8];
      v10 = v2->_typedStringForURLMatching;
      v2->_typedStringForURLMatching = v9;
    }

    os_unfair_lock_unlock(&v2->_lock);
    v2 = v2->_typedStringForURLMatching;
  }

  else
  {
    atomic_store(1u, &v2->_stringOnlyContainsWhitespaces);
  }

  v6 = v2;

LABEL_6:

  return v6;
}

@end