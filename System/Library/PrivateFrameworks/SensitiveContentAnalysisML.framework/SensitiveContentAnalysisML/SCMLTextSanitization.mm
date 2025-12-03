@interface SCMLTextSanitization
- (SCMLTextSanitization)initWithGranularOutput:(BOOL)output;
- (id)description;
- (id)unsafeReason;
- (id)updateSignal:(id)signal withSafe:(BOOL)safe;
@end

@implementation SCMLTextSanitization

- (id)unsafeReason
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = +[SCMLImageLabelCoder instance];
  v4 = [MEMORY[0x1E695E0F0] mutableCopy];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_signals;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_signals objectForKeyedSubscript:v9];
        if (([v10 safe] & 1) == 0)
        {
          v11 = [v3 decodeFromP1:v9];
          [v4 addObject:v11];
        }
      }

      v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v12 = MEMORY[0x1E696AEC0];
  adapterViolationCategory = [(SCMLTextSanitization *)self adapterViolationCategory];
  v14 = [v4 componentsJoinedByString:{@", "}];
  v15 = [v12 stringWithFormat:@"%u %@", adapterViolationCategory, v14, v18];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)description
{
  if ([(SCMLTextSanitization *)self safe])
  {
    v2 = @"safe";
  }

  else
  {
    v2 = @"unsafe";
  }

  return v2;
}

- (SCMLTextSanitization)initWithGranularOutput:(BOOL)output
{
  outputCopy = output;
  v9.receiver = self;
  v9.super_class = SCMLTextSanitization;
  v4 = [(SCMLTextSanitization *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_safe = 1;
    v4->_adapterViolationCategory = 0;
    if (outputCopy)
    {
      v6 = [MEMORY[0x1E695E0F8] mutableCopy];
    }

    else
    {
      v6 = 0;
    }

    signals = v5->_signals;
    v5->_signals = v6;

    v5->_granularOutput = outputCopy;
    v5->_regionalSensitive = 0;
  }

  return v5;
}

- (id)updateSignal:(id)signal withSafe:(BOOL)safe
{
  safeCopy = safe;
  signalCopy = signal;
  if ([(SCMLTextSanitization *)self granularOutput])
  {
    v7 = [(NSMutableDictionary *)self->_signals objectForKeyedSubscript:signalCopy];
    if (!v7)
    {
      v7 = objc_alloc_init(SCMLTextSanitizationSignal);
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    }

    [(SCMLTextSanitizationSignal *)v7 setSafe:[(SCMLTextSanitizationSignal *)v7 safe]& safeCopy];
  }

  else
  {
    v7 = 0;
  }

  [(SCMLTextSanitization *)self setSafe:[(SCMLTextSanitization *)self safe]& safeCopy];

  return v7;
}

@end