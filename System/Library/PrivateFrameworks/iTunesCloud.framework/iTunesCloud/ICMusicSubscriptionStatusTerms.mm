@interface ICMusicSubscriptionStatusTerms
- (BOOL)isEqual:(id)equal;
- (ICMusicSubscriptionStatusTerms)initWithCoder:(id)coder;
- (ICMusicSubscriptionStatusTerms)initWithResponseTermsDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICMusicSubscriptionStatusTerms

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeInteger:self->_sourceType forKey:@"sourceType"];
  [coderCopy encodeInteger:self->_currentVersion forKey:@"currentVersion"];
  [coderCopy encodeInteger:self->_acceptedVersion forKey:@"acceptedVersion"];
}

- (ICMusicSubscriptionStatusTerms)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = ICMusicSubscriptionStatusTerms;
  v5 = [(ICMusicSubscriptionStatusTerms *)&v7 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v5->_sourceType = [coderCopy decodeIntegerForKey:@"sourceType"];
    v5->_currentVersion = [coderCopy decodeIntegerForKey:@"currentVersion"];
    v5->_acceptedVersion = [coderCopy decodeIntegerForKey:@"acceptedVersion"];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = self->_acceptedVersion == v5->_acceptedVersion && self->_currentVersion == v5->_currentVersion && self->_sourceType == v5->_sourceType && self->_type == v5->_type;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (ICMusicSubscriptionStatusTerms)initWithResponseTermsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = ICMusicSubscriptionStatusTerms;
  v5 = [(ICMusicSubscriptionStatusTerms *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"source"];
    if (_NSIsNSString())
    {
      v5->_type = [v6 isEqualToString:@"Store"];
    }

    v7 = [dictionaryCopy objectForKey:@"source"];
    if (_NSIsNSString())
    {
      v5->_sourceType = [v7 isEqualToString:@"account"];
    }

    v8 = [dictionaryCopy objectForKey:@"latestTerms"];
    if (objc_opt_respondsToSelector())
    {
      v5->_currentVersion = [v8 integerValue];
    }

    v9 = [dictionaryCopy objectForKey:@"agreedToTerms"];
    if (objc_opt_respondsToSelector())
    {
      v5->_acceptedVersion = [v9 integerValue];
    }
  }

  return v5;
}

@end