@interface NSError(UVObjCAdditions)
+ (id)uv_errorWithDescription:()UVObjCAdditions;
+ (id)uv_errorWithFormat:()UVObjCAdditions;
+ (id)uv_errorWithUserInfo:()UVObjCAdditions;
@end

@implementation NSError(UVObjCAdditions)

+ (id)uv_errorWithUserInfo:()UVObjCAdditions
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDomain:@"com.apple.Previews" code:-1 userInfo:v4];

  return v5;
}

+ (id)uv_errorWithDescription:()UVObjCAdditions
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = *MEMORY[0x277CCA450];
  v11[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [a1 uv_errorWithUserInfo:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)uv_errorWithFormat:()UVObjCAdditions
{
  v10 = MEMORY[0x277CCACA8];
  v11 = a3;
  v12 = [[v10 alloc] initWithFormat:v11 arguments:&a9];

  v13 = [a1 uv_errorWithDescription:v12];

  return v13;
}

@end