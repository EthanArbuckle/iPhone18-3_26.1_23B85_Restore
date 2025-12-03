@interface NWAppAdvice
- (BOOL)isEqual:(id)equal;
- (NWAppAdvice)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NWAppAdvice

- (NWAppAdvice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = NWAppAdvice;
  v5 = [(NWAppAdvice *)&v12 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v7;

    v5->_state = [coderCopy decodeIntegerForKey:@"state"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v9;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  bundleIdentifier = [(NWAppAdvice *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  [coderCopy encodeInteger:-[NWAppAdvice state](self forKey:{"state"), @"state"}];
  reason = [(NWAppAdvice *)self reason];
  [coderCopy encodeObject:reason forKey:@"reason"];

  objc_autoreleasePoolPop(v4);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(NWAppAdvice);
  objc_storeStrong(&v4->_bundleIdentifier, self->_bundleIdentifier);
  v4->_state = self->_state;
  objc_storeStrong(&v4->_reason, self->_reason);
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      bundleIdentifier = [(NWAppAdvice *)self bundleIdentifier];
      bundleIdentifier2 = [(NWAppAdvice *)v5 bundleIdentifier];
      if ([bundleIdentifier isEqualToString:bundleIdentifier2] && (v8 = -[NWAppAdvice state](self, "state"), v8 == -[NWAppAdvice state](v5, "state")))
      {
        reason = [(NWAppAdvice *)self reason];
        reason2 = [(NWAppAdvice *)v5 reason];
        v11 = [reason isEqualToString:reason2];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x277CCACA8];
  bundleIdentifier = [(NWAppAdvice *)self bundleIdentifier];
  state = [(NWAppAdvice *)self state];
  reason = [(NWAppAdvice *)self reason];
  v7 = [v3 stringWithFormat:@"%@, %ld, %@", bundleIdentifier, state, reason];

  v8 = [v7 hash];
  return v8;
}

@end