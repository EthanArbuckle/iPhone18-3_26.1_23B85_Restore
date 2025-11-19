@interface _SWCApplicationIdentifier
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToApplicationIdentifierIgnoringPrefix:(id)a3;
- (NSString)rawValue;
- (_SWCApplicationIdentifier)initWithCoder:(id)a3;
- (_SWCApplicationIdentifier)initWithString:(id)a3;
- (id)UUIDRepresentation;
- (id)debugDescription;
- (id)initForBundleRecord:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SWCApplicationIdentifier

- (_SWCApplicationIdentifier)initWithString:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = _SWCApplicationIdentifier;
  v5 = [(_SWCApplicationIdentifier *)&v19 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    if ([v4 rangeOfString:@"."] == 10)
    {
      v8 = v7;
      v9 = [v4 substringToIndex:10];
      v10 = [v9 uppercaseString];
      prefix = v5->_prefix;
      v5->_prefix = v10;

      v12 = [v4 substringFromIndex:v8 + 10];
    }

    else
    {
      v12 = [v4 copy];
    }

    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v12;

    v14 = [objc_opt_class() isCaseSensitive];
    v15 = v5->_bundleIdentifier;
    if (v14)
    {
      v5->_hash = [(NSString *)v15 hash];
    }

    else
    {
      v16 = [(NSString *)v15 lowercaseString];
      v5->_hash = [v16 hash];
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

- (BOOL)isEqualToApplicationIdentifierIgnoringPrefix:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() isCaseSensitive];
  bundleIdentifier = self->_bundleIdentifier;
  v7 = v4[3];
  if (v5)
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
  v4 = [(_SWCApplicationIdentifier *)self rawValue];
  v5 = [v4 dataUsingEncoding:4];

  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"SWCApplicationIdentifier.mm" lineNumber:120 description:@"Failed to get the UTF-8 representation of an application identifier."];
  }

  memset(v10, 0, sizeof(v10));
  CC_SHA256([v5 bytes], objc_msgSend(v5, "length"), v10);
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v10];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(_SWCApplicationIdentifier *)self rawValue];
  [v5 encodeObject:v4 forKey:@"rawValue"];
}

- (_SWCApplicationIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 swc_decodeObjectOfClass:objc_opt_class() forKey:@"rawValue"];
  v6 = [(_SWCApplicationIdentifier *)self initWithString:v5];

  return v6;
}

- (id)initForBundleRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 applicationIdentifier];
  if (v5 || (objc_opt_respondsToSelector() & 1) != 0 && [v4 isSystemPlaceholder] && (objc_msgSend(v4, "bundleIdentifier"), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = [(_SWCApplicationIdentifier *)self initWithString:v5];
  }

  else
  {

    v5 = 0;
    v6 = 0;
  }

  return v6;
}

@end