@interface NSDistributedNotificationCenter(VideosUI)
+ (uint64_t)vui_wasSentByDifferentProcess:()VideosUI;
- (void)vui_postNotificationName:()VideosUI object:userInfo:;
@end

@implementation NSDistributedNotificationCenter(VideosUI)

- (void)vui_postNotificationName:()VideosUI object:userInfo:
{
  if (a5)
  {
    v9 = a4;
    v10 = a3;
    v11 = [a5 mutableCopy];
  }

  else
  {
    v12 = MEMORY[0x1E695DF90];
    v13 = a4;
    v14 = a3;
    v11 = objc_alloc_init(v12);
  }

  v17 = v11;
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:getpid()];
  [v17 setObject:v15 forKeyedSubscript:@"sendingPID"];

  [a1 postNotificationName:a3 object:a4 userInfo:v17 deliverImmediately:1];
  v16 = [a3 cStringUsingEncoding:4];

  notify_post(v16);
}

+ (uint64_t)vui_wasSentByDifferentProcess:()VideosUI
{
  v3 = MEMORY[0x1E696AD98];
  v4 = a3;
  v5 = [v3 numberWithUnsignedInteger:getpid()];
  v6 = [v4 objectForKeyedSubscript:@"sendingPID"];

  LODWORD(v4) = [v5 isEqualToNumber:v6];
  return v4 ^ 1;
}

@end