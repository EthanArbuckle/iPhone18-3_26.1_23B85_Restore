@interface NWAppAdvice
- (BOOL)isEqual:(id)a3;
- (NWAppAdvice)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NWAppAdvice

- (NWAppAdvice)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NWAppAdvice;
  v5 = [(NWAppAdvice *)&v12 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v7;

    v5->_state = [v4 decodeIntegerForKey:@"state"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v9;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(NWAppAdvice *)self bundleIdentifier];
  [v7 encodeObject:v5 forKey:@"bundleIdentifier"];

  [v7 encodeInteger:-[NWAppAdvice state](self forKey:{"state"), @"state"}];
  v6 = [(NWAppAdvice *)self reason];
  [v7 encodeObject:v6 forKey:@"reason"];

  objc_autoreleasePoolPop(v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(NWAppAdvice);
  objc_storeStrong(&v4->_bundleIdentifier, self->_bundleIdentifier);
  v4->_state = self->_state;
  objc_storeStrong(&v4->_reason, self->_reason);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(NWAppAdvice *)self bundleIdentifier];
      v7 = [(NWAppAdvice *)v5 bundleIdentifier];
      if ([v6 isEqualToString:v7] && (v8 = -[NWAppAdvice state](self, "state"), v8 == -[NWAppAdvice state](v5, "state")))
      {
        v9 = [(NWAppAdvice *)self reason];
        v10 = [(NWAppAdvice *)v5 reason];
        v11 = [v9 isEqualToString:v10];
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
  v4 = [(NWAppAdvice *)self bundleIdentifier];
  v5 = [(NWAppAdvice *)self state];
  v6 = [(NWAppAdvice *)self reason];
  v7 = [v3 stringWithFormat:@"%@, %ld, %@", v4, v5, v6];

  v8 = [v7 hash];
  return v8;
}

@end