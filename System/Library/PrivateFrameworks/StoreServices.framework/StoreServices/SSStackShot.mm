@interface SSStackShot
+ (id)generateSymbolicatedStackShot;
+ (id)generateSymbolicatedStackShotPromise;
@end

@implementation SSStackShot

+ (id)generateSymbolicatedStackShot
{
  generateSymbolicatedStackShotPromise = [self generateSymbolicatedStackShotPromise];
  v3 = [generateSymbolicatedStackShotPromise resultWithTimeout:0 error:10.0];

  return v3;
}

+ (id)generateSymbolicatedStackShotPromise
{
  if (+[SSDevice deviceIsInternalBuild])
  {
    v2 = objc_alloc_init(SSPromise);
    callStackReturnAddresses = [MEMORY[0x1E696AF00] callStackReturnAddresses];
    v4 = dispatch_get_global_queue(0, 0);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__SSStackShot_generateSymbolicatedStackShotPromise__block_invoke;
    v10[3] = &unk_1E84AC028;
    v5 = v2;
    v11 = v5;
    v12 = callStackReturnAddresses;
    v6 = callStackReturnAddresses;
    dispatch_async(v4, v10);

    v7 = v12;
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __51__SSStackShot_generateSymbolicatedStackShotPromise__block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = CSSymbolicatorCreateWithTaskFlagsAndNotification();
  v4 = v3;
  if (CSIsNull())
  {
    v5 = *(a1 + 32);
    v28 = SSError(@"SSErrorDomain", 100, @"Stack Shot Failed", @"Failed to create symbolicator");
    [v5 finishWithError:?];
  }

  else
  {
    mach_absolute_time();
    CSSymbolicatorGetArchitecture();
    v6 = CSArchitectureIs64Bit();
    v27 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v23 = a1;
    obj = *(a1 + 40);
    v29 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v29)
    {
      v7 = 0;
      if (v6)
      {
        v8 = 16;
      }

      else
      {
        v8 = 8;
      }

      v25 = *v33;
      v26 = v8;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v33 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [*(*(&v32 + 1) + 8 * i) unsignedIntegerValue];
          CSSymbolicatorGetSymbolOwnerWithAddressAtTime();
          v11 = v2;
          v12 = v4;
          CSSymbolicatorGetSymbolWithAddressAtTime();
          v31 = 0;
          Range = CSSymbolGetRange();
          Name = CSSymbolGetName();
          if (Name)
          {
            asprintf(&v31, " %s + %llu", Name, v10 - Range);
          }

          CSSymbolOwnerGetSourceInfoWithAddress();
          Filename = CSSourceInfoGetFilename();
          v30 = 0;
          if (Filename)
          {
            v16 = Filename;
            LineNumber = CSSourceInfoGetLineNumber();
            asprintf(&v30, " (%s:%u)", v16, LineNumber);
          }

          v18 = CSSymbolOwnerGetName();
          if (v18)
          {
            v19 = v18;
          }

          else
          {
            v19 = "";
          }

          v21 = v30;
          v20 = v31;
          if (!v31)
          {
            v20 = "";
          }

          if (!v30)
          {
            v21 = "";
          }

          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%-3d %-30s\t0x%0*llx%s%s\n", v7, v19, v26, v10, v20, v21];
          if (v31)
          {
            free(v31);
          }

          v2 = v11;
          v4 = v12;
          if (v30)
          {
            free(v30);
          }

          [v27 appendString:v22];
          v7 = (v7 + 1);
        }

        v29 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v29);
    }

    [*(v23 + 32) finishWithResult:v27];
  }
}

@end