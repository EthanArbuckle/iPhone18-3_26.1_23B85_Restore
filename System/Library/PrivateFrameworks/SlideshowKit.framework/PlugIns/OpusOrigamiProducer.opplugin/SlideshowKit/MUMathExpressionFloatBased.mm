@interface MUMathExpressionFloatBased
+ (float)evaluateString:(id)string error:(id *)error;
- (MUMathExpressionFloatBased)initWithString:(id)string error:(id *)error;
- (float)valueForVariable:(id)variable;
- (id)stringValue;
- (void)_resetVariableIndicies;
- (void)cleanup;
- (void)dealloc;
- (void)replaceVariable:(id)variable withValue:(float)value;
- (void)resetAllVariables;
- (void)setValue:(float)value forVariable:(id)variable;
- (void)setVariableValues:(id)values;
@end

@implementation MUMathExpressionFloatBased

+ (float)evaluateString:(id)string error:(id *)error
{
  [objc_opt_class() invalidResult];
  v6 = v5;
  if ([string UTF8String])
  {
    operator new();
  }

  return v6;
}

- (MUMathExpressionFloatBased)initWithString:(id)string error:(id *)error
{
  if ([string UTF8String])
  {
    v8.receiver = self;
    v8.super_class = MUMathExpressionFloatBased;
    v6 = [(MUMathExpressionBase *)&v8 init];
    if (v6)
    {
      operator new();
    }
  }

  else
  {
    if (error)
    {
      *error = 0;
    }

    return 0;
  }

  return v6;
}

- (void)dealloc
{
  [(MUMathExpressionFloatBased *)self cleanup];
  v3.receiver = self;
  v3.super_class = MUMathExpressionFloatBased;
  [(MUMathExpressionBase *)&v3 dealloc];
}

- (void)cleanup
{
  mInterpreter = self->mInterpreter;
  if (mInterpreter)
  {
    (*(*mInterpreter + 152))();
  }
}

- (void)_resetVariableIndicies
{
  [(NSMutableDictionary *)self->super._indicesForVariables removeAllObjects];
  v3 = (*(*self->mInterpreter + 296))();
  if (v3)
  {
    v4 = 0;
    v5 = v3;
    do
    {
      v6 = (*(*self->mInterpreter + 312))(self->mInterpreter, v4);
      if (v6)
      {
        [(NSMutableDictionary *)self->super._indicesForVariables setObject:[NSNumber forKey:"numberWithInteger:" numberWithInteger:v4], [NSString stringWithUTF8String:v6]];
      }

      ++v4;
    }

    while (v5 != v4);
  }
}

- (void)setValue:(float)value forVariable:(id)variable
{
  v6 = [(NSMutableDictionary *)self->super._indicesForVariables objectForKey:variable];
  if (v6)
  {
    mInterpreter = self->mInterpreter;
    unsignedIntValue = [v6 unsignedIntValue];
    v9 = *(*mInterpreter + 352);
    v10.n128_f32[0] = value;

    v9(mInterpreter, unsignedIntValue, v10);
  }
}

- (float)valueForVariable:(id)variable
{
  v4 = [(NSMutableDictionary *)self->super._indicesForVariables objectForKey:variable];
  if (!v4)
  {
    return 0.0;
  }

  mInterpreter = self->mInterpreter;
  intValue = [v4 intValue];
  v7 = *(*mInterpreter + 320);

  v7(mInterpreter, intValue);
  return result;
}

- (void)setVariableValues:(id)values
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  indicesForVariables = self->super._indicesForVariables;
  v6 = [(NSMutableDictionary *)indicesForVariables countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(indicesForVariables);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [values objectForKey:v10];
        if (v11)
        {
          v12 = v11;
          mInterpreter = self->mInterpreter;
          v14 = [-[NSMutableDictionary objectForKey:](self->super._indicesForVariables objectForKey:{v10), "intValue"}];
          [v12 floatValue];
          (*(*mInterpreter + 352))(mInterpreter, v14);
        }
      }

      v7 = [(NSMutableDictionary *)indicesForVariables countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)replaceVariable:(id)variable withValue:(float)value
{
  if ([(NSMutableDictionary *)self->super._indicesForVariables objectForKey:variable])
  {
    operator new();
  }

  [(MUMathExpressionFloatBased *)self _resetVariableIndicies];
}

- (void)resetAllVariables
{
  v3 = (*(*self->mInterpreter + 296))(self->mInterpreter, a2);
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    do
    {
      (*(*self->mInterpreter + 352))(self->mInterpreter, v5, 0.0);
      v5 = (v5 + 1);
    }

    while (v4 != v5);
  }
}

- (id)stringValue
{
  (*(*self->mInterpreter + 96))(self->mInterpreter, a2);
  v3 = (*(*self->mInterpreter + 104))(self->mInterpreter);
  v4 = [NSString stringWithUTF8String:v3];
  if (v3)
  {
    operator delete[]();
  }

  return v4;
}

@end