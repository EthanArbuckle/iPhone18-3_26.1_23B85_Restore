@interface SFPeopleSuggesterResult
- (SFPeopleSuggesterResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFPeopleSuggesterResult

- (SFPeopleSuggesterResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = SFPeopleSuggesterResult;
  v5 = [(SFPeopleSuggesterResult *)&v10 init];
  if (v5)
  {
    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v11 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_flags = v11;
    }

    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();
    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  contactID = self->_contactID;
  v9 = coderCopy;
  if (contactID)
  {
    [coderCopy encodeObject:contactID forKey:@"cnID"];
    coderCopy = v9;
  }

  flags = self->_flags;
  if (flags)
  {
    [v9 encodeInt64:flags forKey:@"flags"];
    coderCopy = v9;
  }

  handles = self->_handles;
  if (handles)
  {
    [v9 encodeObject:handles forKey:@"hnds"];
    coderCopy = v9;
  }

  sendersKnownAlias = self->_sendersKnownAlias;
  if (sendersKnownAlias)
  {
    [v9 encodeObject:sendersKnownAlias forKey:@"ska"];
    coderCopy = v9;
  }
}

@end