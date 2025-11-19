@interface MCProfileConnection(AutoLock)
- (id)autoLockTime;
- (id)autoLockTimeMaximum;
- (uint64_t)isAutoLockOn:()AutoLock;
- (void)setAutoLockTime:()AutoLock;
@end

@implementation MCProfileConnection(AutoLock)

- (id)autoLockTime
{
  v2 = [a1 effectiveValueForSetting:*MEMORY[0x277D25D78]];
  if ([a1 _isUnset:v2])
  {
    v3 = [a1 _autoLockTimeDefault];
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v4;
}

- (void)setAutoLockTime:()AutoLock
{
  v4 = a3;
  v5 = &unk_28349F4C0;
  v6 = v4;
  if (v4 && ![a1 _isNever:v4])
  {
    v5 = v6;
  }

  [a1 setValue:v5 forSetting:*MEMORY[0x277D25D78]];
}

- (uint64_t)isAutoLockOn:()AutoLock
{
  v4 = a3;
  if ([a1 isAutoLockEnabled] && (objc_msgSend(a1, "_isUnset:", v4) & 1) == 0)
  {
    v5 = [a1 _isNever:v4] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)autoLockTimeMaximum
{
  v1 = [a1 effectiveParametersForValueSetting:*MEMORY[0x277D25D78]];
  v2 = [v1 objectForKey:*MEMORY[0x277D26188]];

  return v2;
}

@end