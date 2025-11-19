@interface _SWCPrefs
+ (_SWCPrefs)sharedPrefs;
- (BOOL)_BOOLForKey:(id)a3 defaultValue:(BOOL)a4;
- (BOOL)isAppleInternal;
- (double)retryIntervalAfterFailure;
- (double)retryIntervalAfterReachLimitWithFailure:(unint64_t)a3;
- (double)retryIntervalAfterSuccess;
- (double)retryIntervalAfterSuccess:(BOOL)a3;
- (id)_init;
- (id)_stringForKey:(id)a3 defaultValue:(id)a4;
- (id)containerURLReturningError:(id *)a3;
- (id)descriptionOfAllPrefs;
- (unint64_t)_recheckFuzzForSuccess:(BOOL)a3;
- (unint64_t)_unsignedIntegerForKey:(id)a3 defaultValue:(unint64_t)a4 minimumValue:(unint64_t)a5 maximumValue:(unint64_t)a6;
@end

@implementation _SWCPrefs

+ (_SWCPrefs)sharedPrefs
{
  if (qword_280B21878 != -1)
  {
    dispatch_once(&qword_280B21878, &__block_literal_global_2);
  }

  v3 = qword_280B21870;

  return v3;
}

- (id)containerURLReturningError:(id *)a3
{
  if (qword_280B21758 && [(_SWCPrefs *)self isAppleInternal])
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [v4 temporaryDirectory];
    v6 = [qword_280B21758 UUIDString];
    v7 = [v5 URLByAppendingPathComponent:v6 isDirectory:1];

    v8 = [MEMORY[0x277CCAA00] defaultManager];
    [v8 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:0];
  }

  else
  {
    if (qword_280B21890 != -1)
    {
      dispatch_once(&qword_280B21890, &__block_literal_global_3);
    }

    v9 = qword_280B21880;
    if (a3 && !qword_280B21880)
    {
      *a3 = qword_280B21888;
      v9 = qword_280B21880;
    }

    v7 = v9;
  }

  return v7;
}

- (double)retryIntervalAfterReachLimitWithFailure:(unint64_t)a3
{
  v4 = fmax(exp2((a3 - [(_SWCPrefs *)self maximumRetryCount]+ 1)), 1.0);
  [(_SWCPrefs *)self retryIntervalAfterFailure];
  return v5 * v4;
}

- (double)retryIntervalAfterFailure
{
  if (qword_280B218A0 != -1)
  {
    dispatch_once(&qword_280B218A0, &__block_literal_global_23);
  }

  return [(_SWCPrefs *)self _unsignedIntegerForKey:@"recheckFailureDelaySecs" defaultValue:qword_280B21898 minimumValue:10800 maximumValue:14400];
}

- (double)retryIntervalAfterSuccess
{
  if (qword_280B218B0 != -1)
  {
    dispatch_once(&qword_280B218B0, &__block_literal_global_28);
  }

  return [(_SWCPrefs *)self _unsignedIntegerForKey:@"recheckSuccessDelaySecs" defaultValue:qword_280B218A8 minimumValue:428400 maximumValue:432000];
}

- (double)retryIntervalAfterSuccess:(BOOL)a3
{
  if (a3)
  {
    [(_SWCPrefs *)self retryIntervalAfterSuccess];
  }

  else
  {
    [(_SWCPrefs *)self retryIntervalAfterFailure];
  }

  return result;
}

- (BOOL)isAppleInternal
{
  if (qword_280B218B8 != -1)
  {
    dispatch_once(&qword_280B218B8, &__block_literal_global_36);
  }

  return _MergedGlobals_2;
}

- (id)descriptionOfAllPrefs
{
  v21 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [&unk_2877A7468 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(&unk_2877A7468);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = CFPreferencesCopyAppValue(v7, @"com.apple.SharedWebCredentials");
        v9 = v8;
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = @"<not set>";
        }

        [v3 setObject:v10 forKeyedSubscript:v7];
      }

      v4 = [&unk_2877A7468 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[_SWCPrefs isAppleInternal](self, "isAppleInternal")}];
  [v3 setObject:v11 forKeyedSubscript:@"appleInternal"];

  v12 = [v3 copy];
  objc_autoreleasePoolPop(context);
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = _SWCPrefs;
  return [(_SWCPrefs *)&v3 init];
}

- (unint64_t)_recheckFuzzForSuccess:(BOOL)a3
{
  v3 = a3;
  if (qword_280B218C0 != -1)
  {
    dispatch_once(&qword_280B218C0, &__block_literal_global_81);
  }

  return *&_MergedGlobals_2[8 * v3 + 112];
}

- (BOOL)_BOOLForKey:(id)a3 defaultValue:(BOOL)a4
{
  v5 = CFPreferencesCopyAppValue(a3, @"com.apple.SharedWebCredentials");
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    a4 = [v5 BOOLValue];
  }

  return a4;
}

- (unint64_t)_unsignedIntegerForKey:(id)a3 defaultValue:(unint64_t)a4 minimumValue:(unint64_t)a5 maximumValue:(unint64_t)a6
{
  v9 = CFPreferencesCopyAppValue(a3, @"com.apple.SharedWebCredentials");
  if (v9)
  {
    v10 = v9;
    if (objc_opt_respondsToSelector())
    {
      a4 = [v10 unsignedIntegerValue];
    }

    else if (objc_opt_respondsToSelector())
    {
      v13 = [v10 integerValue];
      a4 = v13 & ~(v13 >> 63);
    }

    v14 = CFPreferencesCopyAppValue(@"skipClampingRetryDelaySecs", @"com.apple.SharedWebCredentials");
    if (objc_opt_respondsToSelector())
    {
      v15 = [v14 BOOLValue];
    }

    else
    {
      v15 = 0;
    }

    if (a4 >= a6)
    {
      v16 = a6;
    }

    else
    {
      v16 = a4;
    }

    if (v16 <= a5)
    {
      v16 = a5;
    }

    if (v15)
    {
      return a4;
    }

    else
    {
      return v16;
    }
  }

  else
  {
    if (a4 >= a6)
    {
      v11 = a6;
    }

    else
    {
      v11 = a4;
    }

    if (v11 <= a5)
    {
      return a5;
    }

    else
    {
      return v11;
    }
  }
}

- (id)_stringForKey:(id)a3 defaultValue:(id)a4
{
  v5 = a4;
  v6 = CFPreferencesCopyAppValue(a3, @"com.apple.SharedWebCredentials");
  v7 = v5;
  if (v6)
  {
    if (_NSIsNSString())
    {
      v8 = v6;
    }

    else
    {
      v8 = [v6 description];
    }

    v7 = v8;
  }

  return v7;
}

@end