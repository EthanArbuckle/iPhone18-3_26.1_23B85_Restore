@interface POConstantUtil
+ (id)stringForDeviceAction:(int64_t)action;
+ (id)stringForRegistrationStatus:(int64_t)status;
+ (id)stringForTokenStatus:(int64_t)status;
+ (id)stringForUserAction:(int64_t)action;
@end

@implementation POConstantUtil

+ (id)stringForDeviceAction:(int64_t)action
{
  if (action > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279A3A168[action];
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v6 = [v4 stringWithFormat:@"%@ (%@)", v3, v5];

  return v6;
}

+ (id)stringForUserAction:(int64_t)action
{
  if (action > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279A3A180[action];
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v6 = [v4 stringWithFormat:@"%@ (%@)", v3, v5];

  return v6;
}

+ (id)stringForRegistrationStatus:(int64_t)status
{
  if (status > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279A3A1A0[status];
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v6 = [v4 stringWithFormat:@"%@ (%@)", v3, v5];

  return v6;
}

+ (id)stringForTokenStatus:(int64_t)status
{
  if (status > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279A3A1C0[status];
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v6 = [v4 stringWithFormat:@"%@ (%@)", v3, v5];

  return v6;
}

@end