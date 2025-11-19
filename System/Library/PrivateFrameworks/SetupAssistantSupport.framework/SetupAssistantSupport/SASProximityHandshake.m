@interface SASProximityHandshake
- (SASProximityHandshake)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)loadInformation;
@end

@implementation SASProximityHandshake

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithInteger:{-[SASProximityHandshake platformType](self, "platformType")}];
  [v5 encodeObject:v6 forKey:@"platformType"];

  [v5 encodeBool:-[SASProximityHandshake hasPasscodeSet](self forKey:{"hasPasscodeSet"), @"hasPasscodeSet"}];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:{-[SASProximityHandshake simplePasscodeType](self, "simplePasscodeType")}];
  [v5 encodeObject:v7 forKey:@"simplePasscodeType"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[SASProximityHandshake unlockType](self, "unlockType")}];
  [v5 encodeObject:v8 forKey:@"unlockType"];
}

- (SASProximityHandshake)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SASProximityHandshake;
  v5 = [(SASProximityHandshake *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"platformType"];
    -[SASProximityHandshake setPlatformType:](v5, "setPlatformType:", [v6 integerValue]);

    -[SASProximityHandshake setHasPasscodeSet:](v5, "setHasPasscodeSet:", [v4 decodeBoolForKey:@"hasPasscodeSet"]);
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"simplePasscodeType"];
    -[SASProximityHandshake setSimplePasscodeType:](v5, "setSimplePasscodeType:", [v7 integerValue]);

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unlockType"];
    -[SASProximityHandshake setUnlockType:](v5, "setUnlockType:", [v8 integerValue]);
  }

  return v5;
}

- (void)loadInformation
{
  [(SASProximityHandshake *)self setPlatformType:1];
  v5 = 0;
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  -[SASProximityHandshake setUnlockType:](self, "setUnlockType:", [v3 unlockScreenTypeWithOutSimplePasscodeType:&v5]);

  [(SASProximityHandshake *)self setSimplePasscodeType:v5];
  v4 = [MEMORY[0x277D262A0] sharedConnection];
  -[SASProximityHandshake setHasPasscodeSet:](self, "setHasPasscodeSet:", [v4 isPasscodeSet]);
}

@end