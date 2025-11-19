@interface PanicReportValidator
+ (id)ValidatorWithURL:(id)a3;
- (BOOL)validate;
- (BOOL)validate_ext_paniclog:(id)a3 key:(id)a4;
- (BOOL)validate_key:(id)a3 inDict:(id)a4 withValue:(id)a5;
- (BOOL)validate_key_in_log:(id)a3 present:(BOOL)a4;
- (BOOL)validate_key_in_log:(id)a3 withValue:(id)a4;
- (BOOL)validate_key_in_prologue:(id)a3 present:(BOOL)a4;
- (BOOL)validate_key_in_prologue:(id)a3 withValue:(id)a4;
- (BOOL)validate_keys:(id)a3 expected:(id)a4;
- (id)get_paniclog_json;
- (id)get_prologue_json;
- (id)withURL:(id)a3;
@end

@implementation PanicReportValidator

- (BOOL)validate
{
  v3 = [(PanicReportValidator *)self sourcePath];
  NSLog(@"validating panic report: %@", v3);

  v4 = [(PanicReportValidator *)self sourcePath];
  v5 = [v4 path];
  v6 = [NSData dataWithContentsOfFile:v5];

  v7 = [@"\n" dataUsingEncoding:4];
  v8 = [v6 rangeOfData:v7 options:0 range:{0, objc_msgSend(v6, "length")}];

  v9 = [v6 subdataWithRange:{0, v8}];
  v10 = [v6 subdataWithRange:{v8 + 1, objc_msgSend(v6, "length") + ~v8}];
  v19 = 0;
  v11 = [NSJSONSerialization JSONObjectWithData:v9 options:0 error:&v19];
  v12 = v19;
  v13 = v12;
  if (!v12 && v11)
  {
    v18 = 0;
    v14 = [NSJSONSerialization JSONObjectWithData:v10 options:0 error:&v18];
    v15 = v18;
    v13 = v15;
    if (v15 || !v14)
    {
      NSLog(@"unable to decode paniclog: %@", v15);
    }

    else if ([(PanicReportValidator *)self validate_prologue:v11])
    {
      v16 = [(PanicReportValidator *)self validate_paniclog:v14];
LABEL_10:

      goto LABEL_11;
    }

    v16 = 0;
    goto LABEL_10;
  }

  NSLog(@"unable to decode prologue: %@", v12);
  v16 = 0;
LABEL_11:

  return v16;
}

- (BOOL)validate_ext_paniclog:(id)a3 key:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PanicReportValidator *)self get_paniclog_json];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 valueForKey:@"ExtensiblePaniclog"];
    v11 = v10;
    if (v7)
    {
      v12 = [v10 valueForKey:v7];
      v13 = [v6 valueForKey:v7];
      v14 = [v12 count];
      if (v14 == [v13 count])
      {
        if ([v12 count])
        {
          v15 = 0;
          do
          {
            v16 = [v12 objectAtIndexedSubscript:v15];
            v17 = [v13 objectAtIndexedSubscript:v15];
            v18 = [v16 isEqualToDictionary:v17];

            if ((v18 & 1) == 0)
            {
              break;
            }

            ++v15;
          }

          while ([v12 count] > v15);
        }

        else
        {
          v18 = 1;
        }
      }

      else
      {
        NSLog(@"Array count does not match");
        v18 = 0;
      }
    }

    else
    {
      v18 = [v10 isEqualToDictionary:v6];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)validate_key_in_prologue:(id)a3 withValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PanicReportValidator *)self get_prologue_json];
  if (v8)
  {
    v9 = [(PanicReportValidator *)self validate_key:v6 inDict:v8 withValue:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)validate_key_in_prologue:(id)a3 present:(BOOL)a4
{
  v6 = a3;
  v7 = [(PanicReportValidator *)self get_prologue_json];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKey:v6];

    v10 = (v9 == 0) ^ a4;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)validate_key_in_log:(id)a3 withValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PanicReportValidator *)self get_paniclog_json];
  if (v8)
  {
    v9 = [(PanicReportValidator *)self validate_key:v6 inDict:v8 withValue:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)validate_key_in_log:(id)a3 present:(BOOL)a4
{
  v6 = a3;
  v7 = [(PanicReportValidator *)self get_paniclog_json];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKey:v6];

    v10 = (v9 == 0) ^ a4;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)get_prologue_json
{
  v2 = [(PanicReportValidator *)self sourcePath];
  v3 = [v2 path];
  v4 = [NSData dataWithContentsOfFile:v3];

  v5 = [@"\n" dataUsingEncoding:4];
  v6 = [v4 rangeOfData:v5 options:0 range:{0, objc_msgSend(v4, "length")}];

  v7 = [v4 subdataWithRange:{0, v6}];
  v13 = 0;
  v8 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v13];
  v9 = v13;
  v10 = v9;
  if (v9 || !v8)
  {
    NSLog(@"unable to decode prologue: %@", v9);
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  return v11;
}

- (id)get_paniclog_json
{
  v2 = [(PanicReportValidator *)self sourcePath];
  v3 = [v2 path];
  v4 = [NSData dataWithContentsOfFile:v3];

  v5 = [@"\n" dataUsingEncoding:4];
  v6 = [v4 rangeOfData:v5 options:0 range:{0, objc_msgSend(v4, "length")}];

  v7 = [v4 subdataWithRange:{v6 + 1, objc_msgSend(v4, "length") + ~v6}];
  v13 = 0;
  v8 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v13];
  v9 = v13;
  v10 = v9;
  if (v9 || !v8)
  {
    NSLog(@"unable to decode paniclog: %@", v9);
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  return v11;
}

- (BOOL)validate_key:(id)a3 inDict:(id)a4 withValue:(id)a5
{
  v7 = a5;
  if (a4)
  {
    v8 = [a4 objectForKey:a3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 stringValue];
    }

    else
    {
      v9 = v8;
    }

    v10 = v9;
    LOBYTE(a4) = [v9 isEqualToString:v7];
  }

  return a4;
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

    [(PanicReportValidator *)self setSourcePath:v5];
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
  v4 = [PanicReportValidator alloc];
  v5 = [(PanicReportValidator *)v4 withURL:v3];

  return v5;
}

@end