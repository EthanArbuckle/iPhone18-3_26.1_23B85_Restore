@interface FxSample
+ (id)_requiredSamplesForSamples:(id)samples;
- (BOOL)isPredetermined;
- (BOOL)supportsContextType:(int)type;
- (FxSample)init;
- (id)domainOfDefinition;
- (id)evaluateWithOptions:(id)options;
- (id)regionOfInterest;
- (id)requiredSamples;
- (unint64_t)fieldOrder;
- (void)dealloc;
- (void)setContext:(id)context;
- (void)setRegionOfInterest:(id)interest;
- (void)setStream:(id)stream;
@end

@implementation FxSample

- (FxSample)init
{
  v4.receiver = self;
  v4.super_class = FxSample;
  v2 = [(FxSample *)&v4 init];
  if (v2)
  {
    v2->_priv = malloc_type_calloc(1uLL, 0x20uLL, 0x10800409938AC02uLL);
  }

  return v2;
}

- (void)dealloc
{
  FxDebugAssert(self->_priv != 0, &cfstr_PrivNull.isa, v2, v3, v4, v5, v6, v7, v13.receiver);
  priv = self->_priv;
  if (priv)
  {
    var3 = priv->var3;
    if (var3)
    {

      priv = self->_priv;
    }

    var2 = priv->var2;
    if (var2)
    {

      priv = self->_priv;
    }

    var1 = priv->var1;
    if (var1)
    {

      priv = self->_priv;
    }

    free(priv);
  }

  v13.receiver = self;
  v13.super_class = FxSample;
  [(FxSample *)&v13 dealloc];
}

- (void)setStream:(id)stream
{
  var3 = self->_priv->var3;
  if (var3 != stream)
  {
    if (var3)
    {
    }

    self->_priv->var3 = stream;
  }
}

- (void)setContext:(id)context
{
  var1 = self->_priv->var1;
  if (var1 != context)
  {
    if (var1)
    {
    }

    self->_priv->var1 = context;
  }
}

- (BOOL)supportsContextType:(int)type
{
  v3 = *&type;
  provider = [self->_priv->var3 provider];

  return [provider isContextTypeSupported:v3 bySample:self];
}

- (id)domainOfDefinition
{
  provider = [self->_priv->var3 provider];

  return [provider domainOfDefinitionForSample:self];
}

- (unint64_t)fieldOrder
{
  provider = [self->_priv->var3 provider];

  return [provider fieldOrderForSample:self];
}

- (id)regionOfInterest
{
  result = self->_priv->var2;
  if (!result)
  {
    return +[FxShape infiniteShape];
  }

  return result;
}

- (void)setRegionOfInterest:(id)interest
{
  var2 = self->_priv->var2;
  if (var2 != interest)
  {
    if (var2)
    {
    }

    self->_priv->var2 = interest;
  }
}

- (BOOL)isPredetermined
{
  stream = [(FxSample *)self stream];
  FxDebugAssert(stream != 0, &cfstr_StreamIsNullIn.isa, v4, v5, v6, v7, v8, v9, v12);
  provider = [stream provider];

  return [provider isSamplePredetermined:self];
}

+ (id)_requiredSamplesForSamples:(id)samples
{
  array = [MEMORY[0x277CBEB18] array];
  objectEnumerator = [samples objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      v9 = [objc_msgSend(objc_msgSend(nextObject2 "stream")];
      if (v9)
      {
        v10 = v9;
        if (![v9 count])
        {
          [v10 objectAtIndex:0];
          [array addObjectsFromArray:{objc_msgSend(self, "_requiredSamplesForSamples:", v10)}];
        }
      }

      nextObject2 = [objectEnumerator nextObject];
    }

    while (nextObject2);
  }

  return array;
}

- (id)requiredSamples
{
  v3 = [(FxSample *)self stream]!= 0;
  FxDebugAssert(v3, &cfstr_StreamIsNullIn.isa, v4, v5, v6, v7, v8, v9, v13);
  v10 = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObject:self];

  return [v10 _requiredSamplesForSamples:v11];
}

- (id)evaluateWithOptions:(id)options
{
  stream = [(FxSample *)self stream];
  FxDebugAssert(stream != 0, &cfstr_StreamIsNullIn_0.isa, v6, v7, v8, v9, v10, v11, v53);
  provider = [stream provider];
  context = [(FxSample *)self context];
  if (context)
  {
    v14 = context;
    contextType = [context contextType];
    if (![provider isContextTypeSupported:contextType bySample:self])
    {
      options = [v14 options];
      v18 = [-[FxSample regionOfInterest](self "regionOfInterest")];
      isInfinite = [v18 isInfinite];
      if (!FxDebugAssert(isInfinite ^ 1u, &cfstr_CannotRenderAn.isa, v20, v21, v22, v23, v24, v25, v54))
      {
        return 0;
      }

      [v18 extent];
      v37 = 0;
      if (contextType <= 2)
      {
        switch(contextType)
        {
          case 0:
            v38 = @"Unsupported FxContext conversion: kFxContextType_Invalid to anything";
            goto LABEL_74;
          case 1:
            if ([provider isContextTypeSupported:2 bySample:self])
            {
              v38 = @"Unsupported FxContext conversion: CGContext to CGImage";
              goto LABEL_74;
            }

            if ([provider isContextTypeSupported:3 bySample:self])
            {
              v38 = @"Unsupported FxContext conversion: GLTexture to CGImage";
              goto LABEL_74;
            }

            if ([provider isContextTypeSupported:4 bySample:self])
            {
              v38 = @"Unsupported FxContext conversion: GLContext to CGImage";
              goto LABEL_74;
            }

            if ([provider isContextTypeSupported:5 bySample:self])
            {
              v38 = @"Unsupported FxContext conversion: Bitmap to CGImage";
              goto LABEL_74;
            }

            if ([provider isContextTypeSupported:6 bySample:self])
            {
              v38 = @"Unsupported FxContext conversion: CIImage to CGImage";
              goto LABEL_74;
            }

            return 0;
          case 2:
            v39 = v33;
            v40 = v34;
            v41 = v35;
            v42 = v36;
            if ([provider isContextTypeSupported:1 bySample:self])
            {
              v43 = [FxContext contextForCGImageWithOptions:options];
              [(FxSample *)self setContext:v43];
              if ([objc_msgSend(stream "provider")])
              {
                cgImage = [v43 cgImage];
                cgContext = [v14 cgContext];
                v57.origin.x = v39;
                v57.origin.y = v40;
                v57.size.width = v41;
                v57.size.height = v42;
                CGContextDrawImage(cgContext, v57, cgImage);
                v37 = v14;
              }

              else
              {
                v37 = 0;
              }

              [(FxSample *)self setContext:v14];
              return v37;
            }

            if (([provider isContextTypeSupported:6 bySample:self] & 1) == 0)
            {
              if ([provider isContextTypeSupported:3 bySample:self])
              {
                v38 = @"Unsupported FxContext conversion: GLTexture to CGContext";
                goto LABEL_74;
              }

              if ([provider isContextTypeSupported:4 bySample:self])
              {
                v38 = @"Unsupported FxContext conversion: GLContext to CGContext";
                goto LABEL_74;
              }

              if ([provider isContextTypeSupported:5 bySample:self])
              {
                v38 = @"Unsupported FxContext conversion: Bitmap to CGContext";
                goto LABEL_74;
              }

              return 0;
            }

            return self;
        }
      }

      else
      {
        if (contextType <= 4)
        {
          if (contextType != 3)
          {
            if (([provider isContextTypeSupported:6 bySample:self] & 1) == 0)
            {
              if ([provider isContextTypeSupported:1 bySample:self])
              {
                v38 = @"Unsupported FxContext conversion: CGImage to GLContext";
              }

              else if ([provider isContextTypeSupported:2 bySample:self])
              {
                v38 = @"Unsupported FxContext conversion: CGContext to GLContext";
              }

              else
              {
                if (![provider isContextTypeSupported:3 bySample:self] && !objc_msgSend(provider, "isContextTypeSupported:bySample:", 5, self))
                {
                  return 0;
                }

                v38 = @"Unsupported FxContext conversion: Bitmap to GLContext";
              }

              goto LABEL_74;
            }

            return self;
          }

          if ([provider isContextTypeSupported:1 bySample:self])
          {
            v38 = @"Unsupported FxContext conversion: CGImage to GLTexture";
            goto LABEL_74;
          }

          if ([provider isContextTypeSupported:2 bySample:self])
          {
            v38 = @"Unsupported FxContext conversion: CGContext to GLTexture";
            goto LABEL_74;
          }

          if ([provider isContextTypeSupported:4 bySample:self])
          {
            v38 = @"Unsupported FxContext conversion: GLContext to GLTexture";
            goto LABEL_74;
          }

          if ([provider isContextTypeSupported:5 bySample:self])
          {
            v38 = @"Unsupported FxContext conversion: Bitmap to GLTexture";
            goto LABEL_74;
          }

          if ([provider isContextTypeSupported:6 bySample:self])
          {
            v38 = @"Unsupported FxContext conversion: CIImage to GLTexture";
            goto LABEL_74;
          }

          return 0;
        }

        if (contextType == 5)
        {
          if (([provider isContextTypeSupported:6 bySample:self] & 1) == 0)
          {
            if ([provider isContextTypeSupported:1 bySample:self])
            {
              FxDebugLog(&cfstr_UnsupportedFxc_15.isa, v46, v47, v48, v49, v50, v51, v52, v55);
            }

            if ([provider isContextTypeSupported:2 bySample:self])
            {
              v38 = @"Unsupported FxContext conversion: CGContext to Bitmap";
              goto LABEL_74;
            }

            if ([provider isContextTypeSupported:3 bySample:self])
            {
              v38 = @"Unsupported FxContext conversion: GLTexture to Bitmap";
              goto LABEL_74;
            }

            if ([provider isContextTypeSupported:4 bySample:self])
            {
              v38 = @"Unsupported FxContext conversion: GLContext to Bitmap";
              goto LABEL_74;
            }

            return 0;
          }

          return self;
        }

        if (contextType == 6)
        {
          if (([provider isContextTypeSupported:3 bySample:self] & 1) == 0 && (objc_msgSend(provider, "isContextTypeSupported:bySample:", 5, self) & 1) == 0)
          {
            if (![provider isContextTypeSupported:1 bySample:self])
            {
              if ([provider isContextTypeSupported:2 bySample:self])
              {
                v38 = @"Unsupported FxContext conversion: CGContext to CIImage";
                goto LABEL_74;
              }

              if ([provider isContextTypeSupported:4 bySample:self])
              {
                v38 = @"Unsupported FxContext conversion: GLContext to CIImage";
                goto LABEL_74;
              }

              return 0;
            }

            v38 = @"Unsupported FxContext conversion: CGImage to CIImage";
LABEL_74:
            FxDebugLog(&v38->isa, v26, v27, v28, v29, v30, v31, v32, v55);
            return 0;
          }

          return self;
        }
      }

      return v37;
    }
  }

  return [provider evaluateSample:self withOptions:options];
}

@end