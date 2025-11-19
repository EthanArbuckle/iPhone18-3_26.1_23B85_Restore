@interface POConstantUtil
+ (id)stringForDeviceAction:(int64_t)a3;
+ (id)stringForRegistrationStatus:(int64_t)a3;
+ (id)stringForTokenStatus:(int64_t)a3;
+ (id)stringForUserAction:(int64_t)a3;
@end

@implementation POConstantUtil

+ (id)stringForDeviceAction:(int64_t)a3
{
  if (a3 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279A3A168[a3];
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v6 = [v4 stringWithFormat:@"%@ (%@)", v3, v5];

  return v6;
}

+ (id)stringForUserAction:(int64_t)a3
{
  if (a3 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279A3A180[a3];
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v6 = [v4 stringWithFormat:@"%@ (%@)", v3, v5];

  return v6;
}

+ (id)stringForRegistrationStatus:(int64_t)a3
{
  if (a3 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279A3A1A0[a3];
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v6 = [v4 stringWithFormat:@"%@ (%@)", v3, v5];

  return v6;
}

+ (id)stringForTokenStatus:(int64_t)a3
{
  if (a3 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279A3A1C0[a3];
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v6 = [v4 stringWithFormat:@"%@ (%@)", v3, v5];

  return v6;
}

@end