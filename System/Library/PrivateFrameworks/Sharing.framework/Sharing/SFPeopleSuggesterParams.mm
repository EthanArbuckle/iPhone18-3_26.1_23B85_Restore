@interface SFPeopleSuggesterParams
- (SFPeopleSuggesterParams)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFPeopleSuggesterParams

- (SFPeopleSuggesterParams)initWithCoder:(id)a3
{
  v4 = a3;
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

    v6 = v4;
    if ([v6 containsValueForKey:@"exclBf"])
    {
      v5->_excludeBackfills = [v6 decodeBoolForKey:@"exclBf"];
    }

    v7 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  contactIDs = self->_contactIDs;
  v8 = v4;
  if (contactIDs)
  {
    [v4 encodeObject:contactIDs forKey:@"cids"];
    v4 = v8;
  }

  flags = self->_flags;
  if (flags)
  {
    [v8 encodeInt64:flags forKey:@"flags"];
    v4 = v8;
  }

  maxPeople = self->_maxPeople;
  if (maxPeople)
  {
    [v8 encodeInt64:maxPeople forKey:@"maxP"];
    v4 = v8;
  }

  if (self->_excludeBackfills)
  {
    [v8 encodeBool:1 forKey:@"exclBf"];
    v4 = v8;
  }
}

@end