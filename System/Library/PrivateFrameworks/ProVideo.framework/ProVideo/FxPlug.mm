@interface FxPlug
+ (id)fxPlugWithDescriptor:(id)descriptor andHost:(id)host;
+ (id)pinInPinList:(id)list withUUID:(id)d;
+ (unsigned)leastCommonMultipleOfA:(unsigned int)a andB:(unsigned int)b;
- (BOOL)renderImageOutputAtTime:(double)time withOptions:(id)options inFxContext:(id)context inRegionOfInterest:(id)interest;
- (FxPlug)initWithDescriptor:(id)descriptor andHost:(id)host;
- (id)inputPinWithUUID:(id)d;
- (id)inputPins;
- (id)outputPinWithUUID:(id)d;
- (id)outputPins;
- (void)dealloc;
@end

@implementation FxPlug

- (FxPlug)initWithDescriptor:(id)descriptor andHost:(id)host
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
      v6->_priv->var1 = descriptor;
      v6->_priv->var0 = host;
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

+ (id)pinInPinList:(id)list withUUID:(id)d
{
  objectEnumerator = [list objectEnumerator];
  do
  {
    nextObject = [objectEnumerator nextObject];
    v7 = nextObject;
  }

  while (nextObject && ![objc_msgSend(nextObject "uuid")]);
  return v7;
}

- (id)inputPinWithUUID:(id)d
{
  v5 = objc_opt_class();
  inputPins = [(FxPlug *)self inputPins];

  return [v5 pinInPinList:inputPins withUUID:d];
}

- (id)outputPinWithUUID:(id)d
{
  v5 = objc_opt_class();
  outputPins = [(FxPlug *)self outputPins];

  return [v5 pinInPinList:outputPins withUUID:d];
}

+ (id)fxPlugWithDescriptor:(id)descriptor andHost:(id)host
{
  plugInClass = [descriptor plugInClass];
  v7 = [plugInClass isSubclassOfClass:objc_opt_class()];
  v8 = NSStringFromClass(plugInClass);
  FxDebugAssert(v7, &cfstr_IsNotASubclass.isa, v9, v10, v11, v12, v13, v14, v8);
  v15 = [[plugInClass alloc] initWithDescriptor:descriptor andHost:host];

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

- (BOOL)renderImageOutputAtTime:(double)time withOptions:(id)options inFxContext:(id)context inRegionOfInterest:(id)interest
{
  imageOutputPin = [(FxPlug *)self imageOutputPin];
  if (imageOutputPin)
  {
    imageOutputPin = [imageOutputPin stream];
    if (imageOutputPin)
    {
      imageOutputPin = [imageOutputPin createSampleAtTime:time];
      if (imageOutputPin)
      {
        v11 = imageOutputPin;
        [imageOutputPin setRegionOfInterest:interest];
        [v11 setContext:context];
        LOBYTE(imageOutputPin) = [v11 evaluateWithOptions:options] != 0;
      }
    }
  }

  return imageOutputPin;
}

+ (unsigned)leastCommonMultipleOfA:(unsigned int)a andB:(unsigned int)b
{
  if (b)
  {
    bCopy = b;
    aCopy = a;
    do
    {
      aCopy2 = bCopy;
      bCopy = aCopy % bCopy;
      aCopy = aCopy2;
    }

    while (bCopy);
    return b * a / aCopy2;
  }

  aCopy2 = a;
  if (a)
  {
    return b * a / aCopy2;
  }

  return 0;
}

@end