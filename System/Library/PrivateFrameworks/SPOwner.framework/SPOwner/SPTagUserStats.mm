@interface SPTagUserStats
- (SPTagUserStats)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPTagUserStats

- (id)copyWithZone:(_NSZone *)zone
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

- (void)encodeWithCoder:(id)coder
{
  overflowFlag = self->_overflowFlag;
  coderCopy = coder;
  [coderCopy encodeInteger:overflowFlag forKey:@"overflowFlag"];
  [coderCopy encodeInteger:self->_crashCount forKey:@"crashCount"];
  [coderCopy encodeInt64:self->_multiTime forKey:@"multiTime"];
  [coderCopy encodeInt64:self->_nearOwnerTime forKey:@"nearOwnerTime"];
  [coderCopy encodeInt64:self->_wildTime forKey:@"wildTime"];
  [coderCopy encodeInteger:self->_ownerPlaySoundCount forKey:@"ownerPlaySoundCount"];
  [coderCopy encodeInteger:self->_ownerPlaySoundTime forKey:@"ownerPlaySoundTime"];
  [coderCopy encodeInteger:self->_rangingCount forKey:@"rangingCount"];
  [coderCopy encodeInteger:self->_rangingTime forKey:@"rangingTime"];
  [coderCopy encodeInteger:self->_version forKey:@"version"];
}

- (SPTagUserStats)initWithCoder:(id)coder
{
  coderCopy = coder;
  self->_overflowFlag = [coderCopy decodeIntegerForKey:@"overflowFlag"];
  self->_crashCount = [coderCopy decodeIntegerForKey:@"crashCount"];
  self->_multiTime = [coderCopy decodeIntegerForKey:@"multiTime"];
  self->_nearOwnerTime = [coderCopy decodeIntegerForKey:@"nearOwnerTime"];
  self->_wildTime = [coderCopy decodeIntegerForKey:@"wildTime"];
  self->_ownerPlaySoundCount = [coderCopy decodeIntegerForKey:@"ownerPlaySoundCount"];
  self->_ownerPlaySoundTime = [coderCopy decodeIntegerForKey:@"ownerPlaySoundTime"];
  self->_rangingCount = [coderCopy decodeIntegerForKey:@"rangingCount"];
  self->_rangingTime = [coderCopy decodeIntegerForKey:@"rangingTime"];
  v5 = [coderCopy decodeIntegerForKey:@"version"];

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