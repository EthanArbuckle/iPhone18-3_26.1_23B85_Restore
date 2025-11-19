@interface SPTagUserStats
- (SPTagUserStats)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPTagUserStats

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  [v4 setOverflowFlag:{-[SPTagUserStats overflowFlag](self, "overflowFlag")}];
  [v4 setCrashCount:{-[SPTagUserStats crashCount](self, "crashCount")}];
  [v4 setMultiTime:{-[SPTagUserStats multiTime](self, "multiTime")}];
  [v4 setNearOwnerTime:{-[SPTagUserStats nearOwnerTime](self, "nearOwnerTime")}];
  [v4 setWildTime:{-[SPTagUserStats wildTime](self, "wildTime")}];
  [v4 setOwnerPlaySoundCount:{-[SPTagUserStats ownerPlaySoundCount](self, "ownerPlaySoundCount")}];
  [v4 setOwnerPlaySoundTime:{-[SPTagUserStats ownerPlaySoundTime](self, "ownerPlaySoundTime")}];
  [v4 setRangingCount:{-[SPTagUserStats rangingCount](self, "rangingCount")}];
  [v4 setRangingTime:{-[SPTagUserStats rangingTime](self, "rangingTime")}];
  [v4 setVersion:{-[SPTagUserStats version](self, "version")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  overflowFlag = self->_overflowFlag;
  v5 = a3;
  [v5 encodeInteger:overflowFlag forKey:@"overflowFlag"];
  [v5 encodeInteger:self->_crashCount forKey:@"crashCount"];
  [v5 encodeInt64:self->_multiTime forKey:@"multiTime"];
  [v5 encodeInt64:self->_nearOwnerTime forKey:@"nearOwnerTime"];
  [v5 encodeInt64:self->_wildTime forKey:@"wildTime"];
  [v5 encodeInteger:self->_ownerPlaySoundCount forKey:@"ownerPlaySoundCount"];
  [v5 encodeInteger:self->_ownerPlaySoundTime forKey:@"ownerPlaySoundTime"];
  [v5 encodeInteger:self->_rangingCount forKey:@"rangingCount"];
  [v5 encodeInteger:self->_rangingTime forKey:@"rangingTime"];
  [v5 encodeInteger:self->_version forKey:@"version"];
}

- (SPTagUserStats)initWithCoder:(id)a3
{
  v4 = a3;
  self->_overflowFlag = [v4 decodeIntegerForKey:@"overflowFlag"];
  self->_crashCount = [v4 decodeIntegerForKey:@"crashCount"];
  self->_multiTime = [v4 decodeIntegerForKey:@"multiTime"];
  self->_nearOwnerTime = [v4 decodeIntegerForKey:@"nearOwnerTime"];
  self->_wildTime = [v4 decodeIntegerForKey:@"wildTime"];
  self->_ownerPlaySoundCount = [v4 decodeIntegerForKey:@"ownerPlaySoundCount"];
  self->_ownerPlaySoundTime = [v4 decodeIntegerForKey:@"ownerPlaySoundTime"];
  self->_rangingCount = [v4 decodeIntegerForKey:@"rangingCount"];
  self->_rangingTime = [v4 decodeIntegerForKey:@"rangingTime"];
  v5 = [v4 decodeIntegerForKey:@"version"];

  self->_version = v5;
  return self;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Overflow Flag: %d\n", -[SPTagUserStats overflowFlag](self, "overflowFlag")];
  v4 = [&stru_2875DB468 stringByAppendingString:v3];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Crash Count: %d\n", -[SPTagUserStats crashCount](self, "crashCount")];
  v6 = [v4 stringByAppendingString:v5];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Multi Time: %llu\n", -[SPTagUserStats multiTime](self, "multiTime")];
  v8 = [v6 stringByAppendingString:v7];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Near Owner Time: %llu\n", -[SPTagUserStats nearOwnerTime](self, "nearOwnerTime")];
  v10 = [v8 stringByAppendingString:v9];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Wild Time: %llu\n", -[SPTagUserStats wildTime](self, "wildTime")];
  v12 = [v10 stringByAppendingString:v11];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Owner Play Sound Count: %u\n", -[SPTagUserStats ownerPlaySoundCount](self, "ownerPlaySoundCount")];
  v14 = [v12 stringByAppendingString:v13];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Owner Play Sound Time: %u\n", -[SPTagUserStats ownerPlaySoundTime](self, "ownerPlaySoundTime")];
  v16 = [v14 stringByAppendingString:v15];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Ranging Count: %u\n", -[SPTagUserStats rangingCount](self, "rangingCount")];
  v18 = [v16 stringByAppendingString:v17];

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Ranging Time: %u\n", -[SPTagUserStats rangingTime](self, "rangingTime")];
  v20 = [v18 stringByAppendingString:v19];

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Version: %d\n", -[SPTagUserStats version](self, "version")];
  v22 = [v20 stringByAppendingString:v21];

  return v22;
}

@end