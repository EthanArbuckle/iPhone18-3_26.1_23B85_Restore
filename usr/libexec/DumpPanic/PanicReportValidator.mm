@interface PanicReportValidator
+ (id)ValidatorWithURL:(id)l;
- (BOOL)validate;
- (BOOL)validate_ext_paniclog:(id)validate_ext_paniclog key:(id)key;
- (BOOL)validate_key:(id)validate_key inDict:(id)dict withValue:(id)value;
- (BOOL)validate_key_in_log:(id)validate_key_in_log present:(BOOL)present;
- (BOOL)validate_key_in_log:(id)validate_key_in_log withValue:(id)value;
- (BOOL)validate_key_in_prologue:(id)validate_key_in_prologue present:(BOOL)present;
- (BOOL)validate_key_in_prologue:(id)validate_key_in_prologue withValue:(id)value;
- (BOOL)validate_keys:(id)validate_keys expected:(id)expected;
- (id)get_paniclog_json;
- (id)get_prologue_json;
- (id)withURL:(id)l;
@end

@implementation PanicReportValidator

- (BOOL)validate
{
  sourcePath = [(PanicReportValidator *)self sourcePath];
  NSLog(@"validating panic report: %@", sourcePath);

  sourcePath2 = [(PanicReportValidator *)self sourcePath];
  path = [sourcePath2 path];
  v6 = [NSData dataWithContentsOfFile:path];

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

- (BOOL)validate_ext_paniclog:(id)validate_ext_paniclog key:(id)key
{
  validate_ext_paniclogCopy = validate_ext_paniclog;
  keyCopy = key;
  get_paniclog_json = [(PanicReportValidator *)self get_paniclog_json];
  v9 = get_paniclog_json;
  if (get_paniclog_json)
  {
    v10 = [get_paniclog_json valueForKey:@"ExtensiblePaniclog"];
    v11 = v10;
    if (keyCopy)
    {
      v12 = [v10 valueForKey:keyCopy];
      v13 = [validate_ext_paniclogCopy valueForKey:keyCopy];
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
      v18 = [v10 isEqualToDictionary:validate_ext_paniclogCopy];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)validate_key_in_prologue:(id)validate_key_in_prologue withValue:(id)value
{
  validate_key_in_prologueCopy = validate_key_in_prologue;
  valueCopy = value;
  get_prologue_json = [(PanicReportValidator *)self get_prologue_json];
  if (get_prologue_json)
  {
    v9 = [(PanicReportValidator *)self validate_key:validate_key_in_prologueCopy inDict:get_prologue_json withValue:valueCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)validate_key_in_prologue:(id)validate_key_in_prologue present:(BOOL)present
{
  validate_key_in_prologueCopy = validate_key_in_prologue;
  get_prologue_json = [(PanicReportValidator *)self get_prologue_json];
  v8 = get_prologue_json;
  if (get_prologue_json)
  {
    v9 = [get_prologue_json objectForKey:validate_key_in_prologueCopy];

    v10 = (v9 == 0) ^ present;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)validate_key_in_log:(id)validate_key_in_log withValue:(id)value
{
  validate_key_in_logCopy = validate_key_in_log;
  valueCopy = value;
  get_paniclog_json = [(PanicReportValidator *)self get_paniclog_json];
  if (get_paniclog_json)
  {
    v9 = [(PanicReportValidator *)self validate_key:validate_key_in_logCopy inDict:get_paniclog_json withValue:valueCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)validate_key_in_log:(id)validate_key_in_log present:(BOOL)present
{
  validate_key_in_logCopy = validate_key_in_log;
  get_paniclog_json = [(PanicReportValidator *)self get_paniclog_json];
  v8 = get_paniclog_json;
  if (get_paniclog_json)
  {
    v9 = [get_paniclog_json objectForKey:validate_key_in_logCopy];

    v10 = (v9 == 0) ^ present;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)get_prologue_json
{
  sourcePath = [(PanicReportValidator *)self sourcePath];
  path = [sourcePath path];
  v4 = [NSData dataWithContentsOfFile:path];

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
  sourcePath = [(PanicReportValidator *)self sourcePath];
  path = [sourcePath path];
  v4 = [NSData dataWithContentsOfFile:path];

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

- (BOOL)validate_key:(id)validate_key inDict:(id)dict withValue:(id)value
{
  valueCopy = value;
  if (dict)
  {
    v8 = [dict objectForKey:validate_key];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = [v8 stringValue];
    }

    else
    {
      stringValue = v8;
    }

    v10 = stringValue;
    LOBYTE(dict) = [stringValue isEqualToString:valueCopy];
  }

  return dict;
}

- (BOOL)validate_keys:(id)validate_keys expected:(id)expected
{
  expectedCopy = expected;
  allKeys = [validate_keys allKeys];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = expectedCopy;
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
        if (([allKeys containsObject:v12] & 1) == 0)
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

- (id)withURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v5 = lCopy;

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

+ (id)ValidatorWithURL:(id)l
{
  lCopy = l;
  v4 = [PanicReportValidator alloc];
  v5 = [(PanicReportValidator *)v4 withURL:lCopy];

  return v5;
}

@end