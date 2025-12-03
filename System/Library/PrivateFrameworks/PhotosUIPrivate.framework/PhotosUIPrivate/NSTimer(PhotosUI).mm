@interface NSTimer(PhotosUI)
+ (id)pu_scheduledTimerWithTimeInterval:()PhotosUI repeats:block:;
+ (id)pu_scheduledTimerWithTimeInterval:()PhotosUI weakTarget:selector:userInfo:repeats:;
+ (id)pu_timerWithFireDate:()PhotosUI interval:repeats:block:;
+ (void)blockInvoke:()PhotosUI;
@end

@implementation NSTimer(PhotosUI)

+ (void)blockInvoke:()PhotosUI
{
  userInfo = [a3 userInfo];
  if (userInfo)
  {
    v4 = userInfo;
    userInfo[2]();
    userInfo = v4;
  }
}

+ (id)pu_scheduledTimerWithTimeInterval:()PhotosUI repeats:block:
{
  v8 = MEMORY[0x1E695DFF0];
  v9 = [a5 copy];
  v10 = [v8 scheduledTimerWithTimeInterval:self target:sel_blockInvoke_ selector:v9 userInfo:a4 repeats:a2];

  return v10;
}

+ (id)pu_timerWithFireDate:()PhotosUI interval:repeats:block:
{
  v10 = MEMORY[0x1E695DFF0];
  v11 = a6;
  v12 = a4;
  v13 = [v10 alloc];
  v14 = [v11 copy];

  v15 = [v13 initWithFireDate:v12 interval:self target:sel_blockInvoke_ selector:v14 userInfo:a5 repeats:a2];

  return v15;
}

+ (id)pu_scheduledTimerWithTimeInterval:()PhotosUI weakTarget:selector:userInfo:repeats:
{
  v11 = a6;
  v12 = a4;
  v13 = objc_alloc_init(_PUTimerTarget);
  [(_PUTimerTarget *)v13 setTarget:v12];

  [(_PUTimerTarget *)v13 setSelector:a5];
  v14 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:v13 target:sel_handleTimer_ selector:v11 userInfo:a7 repeats:self];

  return v14;
}

@end