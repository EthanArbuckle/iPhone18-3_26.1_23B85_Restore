@interface NSTimer(PhotosUICore)
+ (id)px_scheduledTimerWithTimeInterval:()PhotosUICore repeats:block:;
+ (id)px_scheduledTimerWithTimeInterval:()PhotosUICore weakTarget:selector:userInfo:repeats:;
+ (id)px_timerWithFireDate:()PhotosUICore interval:repeats:block:;
+ (id)px_timerWithTimeInterval:()PhotosUICore weakTarget:selector:userInfo:repeats:;
+ (void)blockInvoke:()PhotosUICore;
@end

@implementation NSTimer(PhotosUICore)

+ (void)blockInvoke:()PhotosUICore
{
  v3 = [a3 userInfo];
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

+ (id)px_scheduledTimerWithTimeInterval:()PhotosUICore repeats:block:
{
  v8 = MEMORY[0x1E695DFF0];
  v9 = [a5 copy];
  v10 = [v8 scheduledTimerWithTimeInterval:a1 target:sel_blockInvoke_ selector:v9 userInfo:a4 repeats:a2];

  return v10;
}

+ (id)px_timerWithFireDate:()PhotosUICore interval:repeats:block:
{
  v10 = MEMORY[0x1E695DFF0];
  v11 = a6;
  v12 = a4;
  v13 = [v10 alloc];
  v14 = [v11 copy];

  v15 = [v13 initWithFireDate:v12 interval:a1 target:sel_blockInvoke_ selector:v14 userInfo:a5 repeats:a2];

  return v15;
}

+ (id)px_timerWithTimeInterval:()PhotosUICore weakTarget:selector:userInfo:repeats:
{
  v11 = a6;
  v12 = a4;
  v13 = objc_alloc_init(_PXTimerTarget);
  [(_PXTimerTarget *)v13 setTarget:v12];

  [(_PXTimerTarget *)v13 setSelector:a5];
  v14 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:v13 target:sel_handleTimer_ selector:v11 userInfo:a7 repeats:a1];

  return v14;
}

+ (id)px_scheduledTimerWithTimeInterval:()PhotosUICore weakTarget:selector:userInfo:repeats:
{
  v11 = a6;
  v12 = a4;
  v13 = objc_alloc_init(_PXTimerTarget);
  [(_PXTimerTarget *)v13 setTarget:v12];

  [(_PXTimerTarget *)v13 setSelector:a5];
  v14 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:v13 target:sel_handleTimer_ selector:v11 userInfo:a7 repeats:a1];

  return v14;
}

@end