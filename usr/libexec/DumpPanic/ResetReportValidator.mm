@interface ResetReportValidator
+ (id)ValidatorWithURL:(id)a3;
- (BOOL)validate;
- (BOOL)validate_keys:(id)a3 expected:(id)a4;
- (id)withURL:(id)a3;
@end

@implementation ResetReportValidator

- (BOOL)validate
{
  v3 = [(ResetReportValidator *)self sourcePath];
  NSLog(@"validating reset report: %@", v3);

  v4 = [(ResetReportValidator *)self sourcePath];
  v5 = [v4 path];
  v6 = [NSData dataWithContentsOfFile:v5];

  v7 = [@"\n" dataUsingEncoding:4];
  v8 = [v6 rangeOfData:v7 options:0 range:{0, objc_msgSend(v6, "length")}];

  v9 = [v6 subdataWithRange:{0, v8}];
  v15 = 0;
  v10 = [NSJSONSerialization JSONObjectWithData:v9 options:0 error:&v15];
  v11 = v15;
  v12 = v11;
  if (v11 || !v10)
  {
    NSLog(@"unable to decode prologue: %@", v11);
    v13 = 0;
  }

  else
  {
    v13 = [(ResetReportValidator *)self validate_prologue:v10];
  }

  return v13;
}

- (BOOL)validate_keys:(id)a3 expected:(id)a4
{
  v5 = a4;
  v6 = [a3 allKeys];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (([v6 containsObject:v12] & 1) == 0)
        {
          NSLog(@"missing key: %@", v12);
          v13 = 0;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:

  return v13;
}

- (id)withURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;

    [(ResetReportValidator *)self setSourcePath:v5];
    return self;
  }

  else
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  return result;
}

+ (id)ValidatorWithURL:(id)a3
{
  v3 = a3;
  v4 = [ResetReportValidator alloc];
  v5 = [(ResetReportValidator *)v4 withURL:v3];

  return v5;
}

@end