@interface FxPlug
+ (id)fxPlugWithDescriptor:(id)a3 andHost:(id)a4;
+ (id)pinInPinList:(id)a3 withUUID:(id)a4;
+ (unsigned)leastCommonMultipleOfA:(unsigned int)a3 andB:(unsigned int)a4;
- (BOOL)renderImageOutputAtTime:(double)a3 withOptions:(id)a4 inFxContext:(id)a5 inRegionOfInterest:(id)a6;
- (FxPlug)initWithDescriptor:(id)a3 andHost:(id)a4;
- (id)inputPinWithUUID:(id)a3;
- (id)inputPins;
- (id)outputPinWithUUID:(id)a3;
- (id)outputPins;
- (void)dealloc;
@end

@implementation FxPlug

- (FxPlug)initWithDescriptor:(id)a3 andHost:(id)a4
{
  v9.receiver = self;
  v9.super_class = FxPlug;
  v6 = [(FxPlug *)&v9 init];
  if (v6)
  {
    v7 = malloc_type_calloc(1uLL, 0x20uLL, 0x8004018A671A6uLL);
    v6->_priv = v7;
    if (v7)
    {
      v6->_priv->var1 = a3;
      v6->_priv->var0 = a4;
    }
  }

  return v6;
}

- (void)dealloc
{
  FxDebugAssert(self->_priv != 0, &cfstr_PrivNull.isa, v2, v3, v4, v5, v6, v7, v13.receiver);
  priv = self->_priv;
  if (priv)
  {
    var1 = priv->var1;
    if (var1)
    {

      priv = self->_priv;
    }

    if (priv->var0)
    {

      priv = self->_priv;
    }

    var2 = priv->var2;
    if (var2)
    {

      priv = self->_priv;
    }

    var3 = priv->var3;
    if (var3)
    {

      priv = self->_priv;
    }

    free(priv);
  }

  v13.receiver = self;
  v13.super_class = FxPlug;
  [(FxPlug *)&v13 dealloc];
}

+ (id)pinInPinList:(id)a3 withUUID:(id)a4
{
  v5 = [a3 objectEnumerator];
  do
  {
    v6 = [v5 nextObject];
    v7 = v6;
  }

  while (v6 && ![objc_msgSend(v6 "uuid")]);
  return v7;
}

- (id)inputPinWithUUID:(id)a3
{
  v5 = objc_opt_class();
  v6 = [(FxPlug *)self inputPins];

  return [v5 pinInPinList:v6 withUUID:a3];
}

- (id)outputPinWithUUID:(id)a3
{
  v5 = objc_opt_class();
  v6 = [(FxPlug *)self outputPins];

  return [v5 pinInPinList:v6 withUUID:a3];
}

+ (id)fxPlugWithDescriptor:(id)a3 andHost:(id)a4
{
  v6 = [a3 plugInClass];
  v7 = [v6 isSubclassOfClass:objc_opt_class()];
  v8 = NSStringFromClass(v6);
  FxDebugAssert(v7, &cfstr_IsNotASubclass.isa, v9, v10, v11, v12, v13, v14, v8);
  v15 = [[v6 alloc] initWithDescriptor:a3 andHost:a4];

  return v15;
}

- (id)inputPins
{
  result = self->_priv->var2;
  if (!result)
  {
    result = [(FxPlug *)self createInputPinArray];
    self->_priv->var2 = result;
  }

  return result;
}

- (id)outputPins
{
  result = self->_priv->var3;
  if (!result)
  {
    result = [(FxPlug *)self createOutputPinArray];
    self->_priv->var3 = result;
  }

  return result;
}

- (BOOL)renderImageOutputAtTime:(double)a3 withOptions:(id)a4 inFxContext:(id)a5 inRegionOfInterest:(id)a6
{
  v10 = [(FxPlug *)self imageOutputPin];
  if (v10)
  {
    v10 = [v10 stream];
    if (v10)
    {
      v10 = [v10 createSampleAtTime:a3];
      if (v10)
      {
        v11 = v10;
        [v10 setRegionOfInterest:a6];
        [v11 setContext:a5];
        LOBYTE(v10) = [v11 evaluateWithOptions:a4] != 0;
      }
    }
  }

  return v10;
}

+ (unsigned)leastCommonMultipleOfA:(unsigned int)a3 andB:(unsigned int)a4
{
  if (a4)
  {
    v4 = a4;
    v5 = a3;
    do
    {
      v6 = v4;
      v4 = v5 % v4;
      v5 = v6;
    }

    while (v4);
    return a4 * a3 / v6;
  }

  v6 = a3;
  if (a3)
  {
    return a4 * a3 / v6;
  }

  return 0;
}

@end