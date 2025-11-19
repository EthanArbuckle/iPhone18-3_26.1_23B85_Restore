@interface NSDictionary(WFAdditions)
- (double)wf_doubleForKeyPath:()WFAdditions;
- (float)wf_floatForKeyPath:()WFAdditions;
- (id)wf_URLForKeyPath:()WFAdditions;
- (id)wf_arrayForKeyPath:()WFAdditions;
- (id)wf_dictionaryForKeyPath:()WFAdditions;
- (id)wf_filter:()WFAdditions;
- (id)wf_numberForKeyPath:()WFAdditions;
- (id)wf_objectOfKind:()WFAdditions forKeyPath:;
- (id)wf_stringForKeyPath:()WFAdditions;
- (id)wf_temperatureWithCelsiusKeyPath:()WFAdditions fahrenheitKeyPath:;
- (uint64_t)wf_integerForKeyPath:()WFAdditions;
@end

@implementation NSDictionary(WFAdditions)

- (id)wf_objectOfKind:()WFAdditions forKeyPath:
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a1;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v7 firstObject];
        }

        else
        {
          v14 = v7;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([v14 objectForKeyedSubscript:v13], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
        {

          v16 = 0;
          goto LABEL_17;
        }

        v7 = [v14 objectForKeyedSubscript:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if (a3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = 0;
    v14 = v7;
  }

  else
  {
    v14 = v7;
    v16 = v14;
  }

LABEL_17:

  return v16;
}

- (id)wf_dictionaryForKeyPath:()WFAdditions
{
  v4 = a3;
  v5 = [a1 wf_objectOfKind:objc_opt_class() forKeyPath:v4];

  return v5;
}

- (id)wf_arrayForKeyPath:()WFAdditions
{
  v4 = a3;
  v5 = [a1 wf_objectOfKind:objc_opt_class() forKeyPath:v4];

  return v5;
}

- (id)wf_stringForKeyPath:()WFAdditions
{
  v4 = a3;
  v5 = [a1 wf_objectOfKind:objc_opt_class() forKeyPath:v4];

  return v5;
}

- (id)wf_URLForKeyPath:()WFAdditions
{
  v4 = a3;
  v5 = [a1 wf_objectOfKind:objc_opt_class() forKeyPath:v4];

  return v5;
}

- (id)wf_numberForKeyPath:()WFAdditions
{
  v4 = a3;
  v5 = [a1 wf_objectOfKind:objc_opt_class() forKeyPath:v4];

  return v5;
}

- (id)wf_temperatureWithCelsiusKeyPath:()WFAdditions fahrenheitKeyPath:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 wf_objectOfKind:objc_opt_class() forKeyPath:v7];

  v9 = [a1 wf_objectOfKind:objc_opt_class() forKeyPath:v6];

  if (v8 | v9)
  {
    v10 = objc_opt_new();
    if (v8)
    {
      [v8 doubleValue];
      [v10 setCelsius:?];
    }

    if (v9)
    {
      [v9 doubleValue];
      [v10 setFahrenheit:?];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (uint64_t)wf_integerForKeyPath:()WFAdditions
{
  v4 = a3;
  v5 = [a1 wf_numberForKeyPath:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [a1 wf_stringForKeyPath:v4];
  }

  v8 = v7;

  v9 = [v8 integerValue];
  return v9;
}

- (float)wf_floatForKeyPath:()WFAdditions
{
  v4 = a3;
  v5 = [a1 wf_numberForKeyPath:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [a1 wf_stringForKeyPath:v4];
  }

  v8 = v7;

  [v8 floatValue];
  v10 = v9;

  return v10;
}

- (double)wf_doubleForKeyPath:()WFAdditions
{
  v4 = a3;
  v5 = [a1 wf_numberForKeyPath:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [a1 wf_stringForKeyPath:v4];
  }

  v8 = v7;

  [v8 doubleValue];
  v10 = v9;

  return v10;
}

- (id)wf_filter:()WFAdditions
{
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(a1, "count")}];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __39__NSDictionary_WFAdditions__wf_filter___block_invoke;
    v12 = &unk_279E6F0F8;
    v13 = v5;
    v14 = v4;
    v6 = v5;
    [a1 enumerateKeysAndObjectsUsingBlock:&v9];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:{v6, v9, v10, v11, v12}];
  }

  else
  {
    v7 = a1;
  }

  return v7;
}

@end