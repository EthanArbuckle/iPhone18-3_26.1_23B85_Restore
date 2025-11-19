@interface TRITaskSupport
+ (id)sharedInstance;
- (Class)taskClassForTaskType:(int)a3;
- (id)XPCTaskAllowlist;
@end

@implementation TRITaskSupport

- (Class)taskClassForTaskType:(int)a3
{
  v4 = a3 - 1;
  if (a3 - 1) <= 0x20 && ((0x10FFFF57FuLL >> v4))
  {
    v7 = *off_279DE5038[v4];
    v8 = objc_opt_class();
    if (v8)
    {
      v9 = v8;
      if (([(objc_class *)v8 conformsToProtocol:&unk_287FD33B8]& 1) == 0)
      {
        v11 = [MEMORY[0x277CCA890] currentHandler];
        v12 = NSStringFromClass(v9);
        [v11 handleFailureInMethod:a2 object:self file:@"TRITaskSupport.m" lineNumber:141 description:{@"taskClassForTaskType returning class %@ which is not a TRITask", v12}];
      }

      v8 = v9;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)XPCTaskAllowlist
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__TRITaskSupport_XPCTaskAllowlist__block_invoke;
  block[3] = &unk_279DDEEE0;
  block[4] = self;
  if (qword_281597850 != -1)
  {
    dispatch_once(&qword_281597850, block);
  }

  return _MergedGlobals_38;
}

void __34__TRITaskSupport_XPCTaskAllowlist__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  v4 = 0;
  do
  {
    if (v4 <= 0x21 && ((1 << v4) & 0x21FFFEAFELL) != 0)
    {
      v5 = [*(a1 + 32) taskClassForTaskType:v4];
      if (v5)
      {
        [v3 addObject:v5];
      }
    }

    v4 = (v4 + 1);
  }

  while (v4 != 1000);
  v6 = _MergedGlobals_38;
  _MergedGlobals_38 = v3;

  objc_autoreleasePoolPop(v2);
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__TRITaskSupport_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_281597860 != -1)
  {
    dispatch_once(&qword_281597860, block);
  }

  v2 = qword_281597858;

  return v2;
}

void __32__TRITaskSupport_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = qword_281597858;
  qword_281597858 = v4;

  objc_autoreleasePoolPop(v2);
}

@end