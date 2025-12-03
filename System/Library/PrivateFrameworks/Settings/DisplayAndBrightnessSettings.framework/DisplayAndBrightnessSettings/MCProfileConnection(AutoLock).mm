@interface MCProfileConnection(AutoLock)
- (id)autoLockTime;
- (id)autoLockTimeMaximum;
- (uint64_t)isAutoLockOn:()AutoLock;
- (void)setAutoLockTime:()AutoLock;
@end

@implementation MCProfileConnection(AutoLock)

- (id)autoLockTime
{
  v2 = [self effectiveValueForSetting:*MEMORY[0x277D25D78]];
  if ([self _isUnset:v2])
  {
    _autoLockTimeDefault = [self _autoLockTimeDefault];
  }

  else
  {
    _autoLockTimeDefault = v2;
  }

  v4 = _autoLockTimeDefault;

  return v4;
}

- (void)setAutoLockTime:()AutoLock
{
  v4 = a3;
  v5 = &unk_28349F4C0;
  v6 = v4;
  if (v4 && ![self _isNever:v4])
  {
    v5 = v6;
  }

  [self setValue:v5 forSetting:*MEMORY[0x277D25D78]];
}

- (uint64_t)isAutoLockOn:()AutoLock
{
  v4 = a3;
  if ([self isAutoLockEnabled] && (objc_msgSend(self, "_isUnset:", v4) & 1) == 0)
  {
    v5 = [self _isNever:v4] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)autoLockTimeMaximum
{
  v1 = [self effectiveParametersForValueSetting:*MEMORY[0x277D25D78]];
  v2 = [v1 objectForKey:*MEMORY[0x277D26188]];

  return v2;
}

@end