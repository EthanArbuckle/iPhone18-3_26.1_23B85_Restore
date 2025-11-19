@interface SSLockdown
+ (id)sharedInstance;
- (__CFString)copyDeviceGUID;
@end

@implementation SSLockdown

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__SSLockdown_sharedInstance__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = a1;
  if (sharedInstance_sInstanceGuard != -1)
  {
    dispatch_once(&sharedInstance_sInstanceGuard, block);
  }

  return sharedInstance_sSharedInstance;
}

id __28__SSLockdown_sharedInstance__block_invoke()
{
  result = objc_alloc_init(objc_opt_class());
  sharedInstance_sSharedInstance = result;
  return result;
}

- (__CFString)copyDeviceGUID
{
  v2 = MGCopyAnswer();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 == CFStringGetTypeID())
  {
    if (SSDeviceIsAppleTV())
    {
      v5 = [v3 uppercaseString];
    }

    else
    {
      v5 = v3;
    }

    v6 = CFRetain(v5);
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v3);
  return v6;
}

@end