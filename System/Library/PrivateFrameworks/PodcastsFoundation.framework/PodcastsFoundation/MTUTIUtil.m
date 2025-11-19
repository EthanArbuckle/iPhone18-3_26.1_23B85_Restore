@interface MTUTIUtil
+ (BOOL)isAudio:(id)a3;
+ (BOOL)isVideo:(id)a3;
+ (id)convertUti:(id)a3;
@end

@implementation MTUTIUtil

+ (id)convertUti:(id)a3
{
  v3 = a3;
  v4 = [*MEMORY[0x1E6983080] identifier];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = [*MEMORY[0x1E6982EE8] identifier];

    v3 = v6;
  }

  return v3;
}

+ (BOOL)isVideo:(id)a3
{
  v3 = [a1 convertUti:a3];
  v4 = [*MEMORY[0x1E6982EE8] identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

+ (BOOL)isAudio:(id)a3
{
  v3 = [a1 convertUti:a3];
  v4 = [*MEMORY[0x1E6982CD0] identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

@end