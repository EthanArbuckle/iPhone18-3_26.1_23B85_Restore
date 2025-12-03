@interface NSObject(SCRCThread)
- (NSString)threadDescription;
- (char)performSelector:()SCRCThread withObjectsAsArray:;
- (id)valueForBlock:()SCRCThread forThreadKey:waitTime:;
- (id)valueForKeyPath:()SCRCThread forThreadKey:waitTime:;
- (id)valueForKeyPathOnMainThread:()SCRCThread;
- (id)valueForSelector:()SCRCThread forThreadKey:waitTime:copyValue:withObjects:;
- (uint64_t)_getRetainedValueForKeyPath:()SCRCThread forThreadKey:waitTime:copy:;
- (uint64_t)_getRetainedValueForKeyPathOnMainThread:()SCRCThread copy:;
- (void)_scr_safeGetValueForBlock:()SCRCThread lock:;
- (void)_scr_safeGetValueForKeyPath:()SCRCThread lock:;
- (void)_scr_safeGetValueForSelector:()SCRCThread lock:;
- (void)_scr_safePerformBlock:()SCRCThread lock:;
- (void)performAsyncBlock:()SCRCThread forThreadKey:;
@end

@implementation NSObject(SCRCThread)

- (NSString)threadDescription
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

- (char)performSelector:()SCRCThread withObjectsAsArray:
{
  v6 = a4;
  v7 = v6;
  if (a3)
  {
    v8 = [v6 count];
    if (v8 > 7)
    {
      a3 = 0;
      goto LABEL_25;
    }

    if (v8 <= 3)
    {
      if (v8 <= 1)
      {
        if (!v8)
        {
          a3 = [self a3];
          goto LABEL_25;
        }

        v9 = [v7 objectAtIndex:0];
        a3 = [self a3];
        goto LABEL_24;
      }

      if (v8 == 2)
      {
        v9 = [v7 objectAtIndex:0];
        v10 = [v7 objectAtIndex:1];
        a3 = [self a3];
LABEL_23:

LABEL_24:
        goto LABEL_25;
      }

      v9 = [v7 objectAtIndex:0];
      v10 = [v7 objectAtIndex:1];
      v11 = [v7 objectAtIndex:2];
      a3 = [self a3];
LABEL_22:

      goto LABEL_23;
    }

    if (v8 > 5)
    {
      if (v8 == 6)
      {
        v9 = [v7 objectAtIndex:0];
        v10 = [v7 objectAtIndex:1];
        v11 = [v7 objectAtIndex:2];
        v12 = [v7 objectAtIndex:3];
        v13 = [v7 objectAtIndex:4];
        v14 = [v7 objectAtIndex:5];
        a3 = [self a3];
      }

      else
      {
        v9 = [v7 objectAtIndex:0];
        v10 = [v7 objectAtIndex:1];
        v11 = [v7 objectAtIndex:2];
        v12 = [v7 objectAtIndex:3];
        v13 = [v7 objectAtIndex:4];
        v14 = [v7 objectAtIndex:5];
        v15 = [v7 objectAtIndex:6];
        a3 = [self a3];
      }
    }

    else
    {
      if (v8 == 4)
      {
        v9 = [v7 objectAtIndex:0];
        v10 = [v7 objectAtIndex:1];
        v11 = [v7 objectAtIndex:2];
        v12 = [v7 objectAtIndex:3];
        a3 = [self a3];
LABEL_21:

        goto LABEL_22;
      }

      v9 = [v7 objectAtIndex:0];
      v10 = [v7 objectAtIndex:1];
      v11 = [v7 objectAtIndex:2];
      v12 = [v7 objectAtIndex:3];
      v13 = [v7 objectAtIndex:4];
      a3 = [self a3];
    }

    goto LABEL_21;
  }

LABEL_25:

  return a3;
}

- (void)_scr_safeGetValueForSelector:()SCRCThread lock:
{
  v15 = a3;
  v6 = a4;
  [v6 lock];
  v7 = [v15 objectForKey:@"selector"];
  v8 = [v15 objectForKey:@"copy"];
  v9 = [v15 objectForKey:@"objects"];
  [v6 unlock];
  v10 = NSSelectorFromString(v7);
  bOOLValue = [v8 BOOLValue];
  v12 = [self performSelector:v10 withObjectsAsArray:v9];
  if (v12)
  {
    v13 = v12;
    if (bOOLValue)
    {
      v14 = [v12 copy];

      v13 = v14;
    }

    [v6 lock];
    [v15 setObject:v13 forKey:@"result"];
    [v6 unlock];
  }
}

- (void)_scr_safeGetValueForBlock:()SCRCThread lock:
{
  v8 = a3;
  v5 = a4;
  [v5 lock];
  v6 = [v8 objectForKey:@"block"];
  [v5 unlock];
  if (v6)
  {
    v7 = v6[2](v6);
    if (v7)
    {
      [v5 lock];
      [v8 setObject:v7 forKey:@"result"];
      [v5 unlock];
    }
  }
}

- (void)_scr_safeGetValueForKeyPath:()SCRCThread lock:
{
  v13 = a3;
  v6 = a4;
  [v6 lock];
  v7 = [v13 objectForKey:@"keypath"];
  v8 = [v13 objectForKey:@"copy"];
  bOOLValue = [v8 BOOLValue];

  [v6 unlock];
  v10 = [self valueForKeyPath:v7];
  if (v10)
  {
    v11 = v10;
    if (bOOLValue)
    {
      v12 = [v10 copy];

      v11 = v12;
    }

    [v6 lock];
    [v13 setObject:v11 forKey:@"result"];
    [v6 unlock];
  }
}

- (void)_scr_safePerformBlock:()SCRCThread lock:
{
  v5 = a4;
  v6 = a3;
  [v5 lock];
  v8 = [v6 objectForKey:@"block"];

  [v5 unlock];
  v7 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8);
    v7 = v8;
  }
}

- (uint64_t)_getRetainedValueForKeyPathOnMainThread:()SCRCThread copy:
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a3;
  v8 = [[v6 alloc] initWithCapacity:2];
  [v8 setObject:v7 forKey:@"keypath"];

  if (a4)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v8 setObject:v9 forKey:@"copy"];
  }

  [self performSelectorOnMainThread:sel__scr_safeGetValueForKeyPath_ withObject:v8 waitUntilDone:1];
  v10 = [v8 objectForKey:@"result"];

  return v10;
}

- (id)valueForKeyPathOnMainThread:()SCRCThread
{
  v3 = [self _getRetainedValueForKeyPathOnMainThread:a3 copy:0];

  return v3;
}

- (uint64_t)_getRetainedValueForKeyPath:()SCRCThread forThreadKey:waitTime:copy:
{
  v10 = a5;
  v11 = MEMORY[0x277CCAAF8];
  v12 = a4;
  v13 = objc_alloc_init(v11);
  v14 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  [v14 setObject:v12 forKey:@"keypath"];

  if (a6)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v14 setObject:v15 forKey:@"copy"];
  }

  [self performSelector:sel__scr_safeGetValueForKeyPath_lock_ withThreadKey:v10 waitTime:0 cancelMask:2 count:v14 objects:{a2, v13}];
  [v13 lock];
  v16 = [v14 objectForKey:@"result"];
  [v13 unlock];

  return v16;
}

- (id)valueForKeyPath:()SCRCThread forThreadKey:waitTime:
{
  v4 = [self _getRetainedValueForKeyPath:a3 forThreadKey:a4 waitTime:0 copy:?];

  return v4;
}

- (id)valueForSelector:()SCRCThread forThreadKey:waitTime:copyValue:withObjects:
{
  v15 = a5;
  v16 = a7;
  v17 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v18 = NSStringFromSelector(a4);
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v29 = &a10;
  v20 = v16;
  v21 = v20;
  if (v20)
  {
    v22 = v20;
    do
    {
      [v19 addObject:v22];
      v23 = v29++;
      v24 = *v23;

      v22 = v24;
    }

    while (v24);
  }

  v25 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
  [v25 setObject:v18 forKey:@"selector"];
  [v25 setObject:v19 forKey:@"objects"];
  if (a6)
  {
    v26 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v25 setObject:v26 forKey:@"copy"];
  }

  [self performSelector:sel__scr_safeGetValueForSelector_lock_ withThreadKey:v15 waitTime:0 cancelMask:2 count:v25 objects:{a2, v17}];
  [v17 lock];
  v27 = [v25 objectForKey:@"result"];
  [v17 unlock];

  return v27;
}

- (id)valueForBlock:()SCRCThread forThreadKey:waitTime:
{
  v8 = MEMORY[0x277CCAAF8];
  v9 = a5;
  v10 = a4;
  v11 = objc_alloc_init(v8);
  v12 = [v10 copy];

  v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
  v14 = MEMORY[0x266744B50](v12);
  [v13 setObject:v14 forKey:@"block"];

  [self performSelector:sel__scr_safeGetValueForBlock_lock_ withThreadKey:v9 waitTime:0 cancelMask:2 count:v13 objects:{a2, v11}];
  [v11 lock];
  v15 = [v13 objectForKey:@"result"];
  [v13 removeObjectForKey:@"block"];
  [v11 unlock];

  return v15;
}

- (void)performAsyncBlock:()SCRCThread forThreadKey:
{
  v6 = a4;
  v7 = a3;
  v11 = objc_opt_new();
  v8 = [v7 copy];

  v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
  v10 = MEMORY[0x266744B50](v8);
  [v9 setObject:v10 forKey:@"block"];

  [self performSelector:sel__scr_safePerformBlock_lock_ withThreadKey:v6 waitTime:0 cancelMask:2 count:v9 objects:{-1.0, v11}];
  [v11 lock];
  [v11 unlock];
}

@end