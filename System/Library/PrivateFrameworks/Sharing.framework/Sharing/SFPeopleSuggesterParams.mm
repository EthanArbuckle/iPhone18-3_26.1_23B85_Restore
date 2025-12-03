@interface SFPeopleSuggesterParams
- (SFPeopleSuggesterParams)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFPeopleSuggesterParams

- (SFPeopleSuggesterParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SFPeopleSuggesterParams;
  v5 = [(SFPeopleSuggesterParams *)&v9 init];
  if (v5)
  {
    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();
    v10 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_flags = v10;
    }

    v10 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_maxPeople = v10;
    }

    v6 = coderCopy;
    if ([v6 containsValueForKey:@"exclBf"])
    {
      v5->_excludeBackfills = [v6 decodeBoolForKey:@"exclBf"];
    }

    v7 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  contactIDs = self->_contactIDs;
  v8 = coderCopy;
  if (contactIDs)
  {
    [coderCopy encodeObject:contactIDs forKey:@"cids"];
    coderCopy = v8;
  }

  flags = self->_flags;
  if (flags)
  {
    [v8 encodeInt64:flags forKey:@"flags"];
    coderCopy = v8;
  }

  maxPeople = self->_maxPeople;
  if (maxPeople)
  {
    [v8 encodeInt64:maxPeople forKey:@"maxP"];
    coderCopy = v8;
  }

  if (self->_excludeBackfills)
  {
    [v8 encodeBool:1 forKey:@"exclBf"];
    coderCopy = v8;
  }
}

@end