@interface SCMLImageSanitization
- (SCMLImageSanitization)initWithGranularOutput:(BOOL)output;
- (id)description;
- (id)unsafeReason;
- (id)updateSignal:(id)signal withSafe:(BOOL)safe;
@end

@implementation SCMLImageSanitization

- (SCMLImageSanitization)initWithGranularOutput:(BOOL)output
{
  outputCopy = output;
  v10.receiver = self;
  v10.super_class = SCMLImageSanitization;
  v4 = [(SCMLImageSanitization *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_safe = 1;
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
    peopleCountInternal = v5->_peopleCountInternal;
    v5->_peopleCountInternal = 0;
  }

  return v5;
}

- (id)unsafeReason
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = +[SCMLImageLabelCoder instance];
  v4 = [MEMORY[0x1E695E0F0] mutableCopy];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_signals;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_signals objectForKeyedSubscript:v9, v15];
        if (([v10 safe] & 1) == 0)
        {
          v11 = [v3 decodeFromP1:v9];
          [v4 addObject:v11];
        }
      }

      v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = [v4 componentsJoinedByString:{@", "}];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)description
{
  if ([(SCMLImageSanitization *)self safe])
  {
    v2 = @"safe";
  }

  else
  {
    v2 = @"unsafe";
  }

  return v2;
}

- (id)updateSignal:(id)signal withSafe:(BOOL)safe
{
  safeCopy = safe;
  signalCopy = signal;
  if ([(SCMLImageSanitization *)self granularOutput])
  {
    v7 = [(NSMutableDictionary *)self->_signals objectForKeyedSubscript:signalCopy];
    if (!v7)
    {
      v7 = objc_alloc_init(SCMLImageSanitizationSignal);
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    }

    [(SCMLImageSanitizationSignal *)v7 setSafe:[(SCMLImageSanitizationSignal *)v7 safe]& safeCopy];
  }

  else
  {
    v7 = 0;
  }

  [(SCMLImageSanitization *)self setSafe:[(SCMLImageSanitization *)self safe]& safeCopy];

  return v7;
}

@end