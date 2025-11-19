@interface NSUUID(Data)
+ (id)ses_withData:()Data;
+ (id)ses_withUUIDString:()Data;
- (id)ses_toData;
@end

@implementation NSUUID(Data)

+ (id)ses_withData:()Data
{
  v3 = MEMORY[0x1E696AFB0];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 bytes];

  v7 = [v5 initWithUUIDBytes:v6];

  return v7;
}

+ (id)ses_withUUIDString:()Data
{
  v3 = MEMORY[0x1E696AFB0];
  v4 = a3;
  v5 = [[v3 alloc] initWithUUIDString:v4];

  return v5;
}

- (id)ses_toData
{
  v2 = [MEMORY[0x1E695DF88] dataWithLength:16];
  [a1 getUUIDBytes:{objc_msgSend(v2, "mutableBytes")}];

  return v2;
}

@end