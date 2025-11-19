@interface SFPeopleSuggesterResult
- (SFPeopleSuggesterResult)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFPeopleSuggesterResult

- (SFPeopleSuggesterResult)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFPeopleSuggesterResult;
  v5 = [(SFPeopleSuggesterResult *)&v10 init];
  if (v5)
  {
    v6 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  contactID = self->_contactID;
  v9 = v4;
  if (contactID)
  {
    [v4 encodeObject:contactID forKey:@"cnID"];
    v4 = v9;
  }

  flags = self->_flags;
  if (flags)
  {
    [v9 encodeInt64:flags forKey:@"flags"];
    v4 = v9;
  }

  handles = self->_handles;
  if (handles)
  {
    [v9 encodeObject:handles forKey:@"hnds"];
    v4 = v9;
  }

  sendersKnownAlias = self->_sendersKnownAlias;
  if (sendersKnownAlias)
  {
    [v9 encodeObject:sendersKnownAlias forKey:@"ska"];
    v4 = v9;
  }
}

@end