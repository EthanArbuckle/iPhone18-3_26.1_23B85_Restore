@interface SASProximityHandshake
- (SASProximityHandshake)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)loadInformation;
@end

@implementation SASProximityHandshake

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  v6 = [v4 numberWithInteger:{-[SASProximityHandshake platformType](self, "platformType")}];
  [coderCopy encodeObject:v6 forKey:@"platformType"];

  [coderCopy encodeBool:-[SASProximityHandshake hasPasscodeSet](self forKey:{"hasPasscodeSet"), @"hasPasscodeSet"}];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:{-[SASProximityHandshake simplePasscodeType](self, "simplePasscodeType")}];
  [coderCopy encodeObject:v7 forKey:@"simplePasscodeType"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[SASProximityHandshake unlockType](self, "unlockType")}];
  [coderCopy encodeObject:v8 forKey:@"unlockType"];
}

- (SASProximityHandshake)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = SASProximityHandshake;
  v5 = [(SASProximityHandshake *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"platformType"];
    -[SASProximityHandshake setPlatformType:](v5, "setPlatformType:", [v6 integerValue]);

    -[SASProximityHandshake setHasPasscodeSet:](v5, "setHasPasscodeSet:", [coderCopy decodeBoolForKey:@"hasPasscodeSet"]);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"simplePasscodeType"];
    -[SASProximityHandshake setSimplePasscodeType:](v5, "setSimplePasscodeType:", [v7 integerValue]);

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unlockType"];
    -[SASProximityHandshake setUnlockType:](v5, "setUnlockType:", [v8 integerValue]);
  }

  return v5;
}

- (void)loadInformation
{
  [(SASProximityHandshake *)self setPlatformType:1];
  v5 = 0;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  -[SASProximityHandshake setUnlockType:](self, "setUnlockType:", [mEMORY[0x277D262A0] unlockScreenTypeWithOutSimplePasscodeType:&v5]);

  [(SASProximityHandshake *)self setSimplePasscodeType:v5];
  mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
  -[SASProximityHandshake setHasPasscodeSet:](self, "setHasPasscodeSet:", [mEMORY[0x277D262A0]2 isPasscodeSet]);
}

@end