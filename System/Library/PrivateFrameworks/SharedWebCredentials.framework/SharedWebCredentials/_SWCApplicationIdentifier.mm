@interface _SWCApplicationIdentifier
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToApplicationIdentifierIgnoringPrefix:(id)prefix;
- (NSString)rawValue;
- (_SWCApplicationIdentifier)initWithCoder:(id)coder;
- (_SWCApplicationIdentifier)initWithString:(id)string;
- (id)UUIDRepresentation;
- (id)debugDescription;
- (id)initForBundleRecord:(id)record;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SWCApplicationIdentifier

- (_SWCApplicationIdentifier)initWithString:(id)string
{
  stringCopy = string;
  v19.receiver = self;
  v19.super_class = _SWCApplicationIdentifier;
  v5 = [(_SWCApplicationIdentifier *)&v19 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    if ([stringCopy rangeOfString:@"."] == 10)
    {
      v8 = v7;
      v9 = [stringCopy substringToIndex:10];
      uppercaseString = [v9 uppercaseString];
      prefix = v5->_prefix;
      v5->_prefix = uppercaseString;

      v12 = [stringCopy substringFromIndex:v8 + 10];
    }

    else
    {
      v12 = [stringCopy copy];
    }

    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v12;

    isCaseSensitive = [objc_opt_class() isCaseSensitive];
    v15 = v5->_bundleIdentifier;
    if (isCaseSensitive)
    {
      v5->_hash = [(NSString *)v15 hash];
    }

    else
    {
      lowercaseString = [(NSString *)v15 lowercaseString];
      v5->_hash = [lowercaseString hash];
    }

    v17 = v5->_prefix;
    if (v17)
    {
      v5->_hash ^= [(NSString *)v17 hash];
    }

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (NSString)rawValue
{
  if (self->_prefix)
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.%@", self->_prefix, self->_bundleIdentifier];
  }

  else
  {
    v2 = self->_bundleIdentifier;
  }

  return v2;
}

- (BOOL)isEqualToApplicationIdentifierIgnoringPrefix:(id)prefix
{
  prefixCopy = prefix;
  isCaseSensitive = [objc_opt_class() isCaseSensitive];
  bundleIdentifier = self->_bundleIdentifier;
  v7 = prefixCopy[3];
  if (isCaseSensitive)
  {
    v8 = [(NSString *)bundleIdentifier isEqual:v7];
  }

  else
  {
    v8 = [(NSString *)bundleIdentifier caseInsensitiveCompare:v7]== NSOrderedSame;
  }

  return v8;
}

- (id)UUIDRepresentation
{
  v11 = *MEMORY[0x277D85DE8];
  rawValue = [(_SWCApplicationIdentifier *)self rawValue];
  v5 = [rawValue dataUsingEncoding:4];

  if (!v5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SWCApplicationIdentifier.mm" lineNumber:120 description:@"Failed to get the UTF-8 representation of an application identifier."];
  }

  memset(v10, 0, sizeof(v10));
  CC_SHA256([v5 bytes], objc_msgSend(v5, "length"), v10);
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v10];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      prefix = self->_prefix;
      v7 = (prefix == v5->_prefix || [(NSString *)prefix isEqual:?]) && [(_SWCApplicationIdentifier *)self isEqualToApplicationIdentifierIgnoringPrefix:v5];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = [(_SWCApplicationIdentifier *)self description];
  v6 = [v3 initWithFormat:@"<%@ %p> %@", v4, self, v5];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  rawValue = [(_SWCApplicationIdentifier *)self rawValue];
  [coderCopy encodeObject:rawValue forKey:@"rawValue"];
}

- (_SWCApplicationIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy swc_decodeObjectOfClass:objc_opt_class() forKey:@"rawValue"];
  v6 = [(_SWCApplicationIdentifier *)self initWithString:v5];

  return v6;
}

- (id)initForBundleRecord:(id)record
{
  recordCopy = record;
  applicationIdentifier = [recordCopy applicationIdentifier];
  if (applicationIdentifier || (objc_opt_respondsToSelector() & 1) != 0 && [recordCopy isSystemPlaceholder] && (objc_msgSend(recordCopy, "bundleIdentifier"), (applicationIdentifier = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = [(_SWCApplicationIdentifier *)self initWithString:applicationIdentifier];
  }

  else
  {

    applicationIdentifier = 0;
    v6 = 0;
  }

  return v6;
}

@end