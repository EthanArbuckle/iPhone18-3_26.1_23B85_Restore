@interface FxSample
+ (id)_requiredSamplesForSamples:(id)a3;
- (BOOL)isPredetermined;
- (BOOL)supportsContextType:(int)a3;
- (FxSample)init;
- (id)domainOfDefinition;
- (id)evaluateWithOptions:(id)a3;
- (id)regionOfInterest;
- (id)requiredSamples;
- (unint64_t)fieldOrder;
- (void)dealloc;
- (void)setContext:(id)a3;
- (void)setRegionOfInterest:(id)a3;
- (void)setStream:(id)a3;
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

- (void)setStream:(id)a3
{
  var3 = self->_priv->var3;
  if (var3 != a3)
  {
    if (var3)
    {
    }

    self->_priv->var3 = a3;
  }
}

- (void)setContext:(id)a3
{
  var1 = self->_priv->var1;
  if (var1 != a3)
  {
    if (var1)
    {
    }

    self->_priv->var1 = a3;
  }
}

- (BOOL)supportsContextType:(int)a3
{
  v3 = *&a3;
  v5 = [self->_priv->var3 provider];

  return [v5 isContextTypeSupported:v3 bySample:self];
}

- (id)domainOfDefinition
{
  v3 = [self->_priv->var3 provider];

  return [v3 domainOfDefinitionForSample:self];
}

- (unint64_t)fieldOrder
{
  v3 = [self->_priv->var3 provider];

  return [v3 fieldOrderForSample:self];
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

- (void)setRegionOfInterest:(id)a3
{
  var2 = self->_priv->var2;
  if (var2 != a3)
  {
    if (var2)
    {
    }

    self->_priv->var2 = a3;
  }
}

- (BOOL)isPredetermined
{
  v3 = [(FxSample *)self stream];
  FxDebugAssert(v3 != 0, &cfstr_StreamIsNullIn.isa, v4, v5, v6, v7, v8, v9, v12);
  v10 = [v3 provider];

  return [v10 isSamplePredetermined:self];
}

+ (id)_requiredSamplesForSamples:(id)a3
{
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [a3 objectEnumerator];
  v7 = [v6 nextObject];
  if (v7)
  {
    v8 = v7;
    do
    {
      v9 = [objc_msgSend(objc_msgSend(v8 "stream")];
      if (v9)
      {
        v10 = v9;
        if (![v9 count])
        {
          [v10 objectAtIndex:0];
          [v5 addObjectsFromArray:{objc_msgSend(a1, "_requiredSamplesForSamples:", v10)}];
        }
      }

      v8 = [v6 nextObject];
    }

    while (v8);
  }

  return v5;
}

- (id)requiredSamples
{
  v3 = [(FxSample *)self stream]!= 0;
  FxDebugAssert(v3, &cfstr_StreamIsNullIn.isa, v4, v5, v6, v7, v8, v9, v13);
  v10 = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObject:self];

  return [v10 _requiredSamplesForSamples:v11];
}

- (id)evaluateWithOptions:(id)a3
{
  v5 = [(FxSample *)self stream];
  FxDebugAssert(v5 != 0, &cfstr_StreamIsNullIn_0.isa, v6, v7, v8, v9, v10, v11, v53);
  v12 = [v5 provider];
  v13 = [(FxSample *)self context];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 contextType];
    if (![v12 isContextTypeSupported:v15 bySample:self])
    {
      v17 = [v14 options];
      v18 = [-[FxSample regionOfInterest](self "regionOfInterest")];
      v19 = [v18 isInfinite];
      if (!FxDebugAssert(v19 ^ 1u, &cfstr_CannotRenderAn.isa, v20, v21, v22, v23, v24, v25, v54))
      {
        return 0;
      }

      [v18 extent];
      v37 = 0;
      if (v15 <= 2)
      {
        switch(v15)
        {
          case 0:
            v38 = @"Unsupported FxContext conversion: kFxContextType_Invalid to anything";
            goto LABEL_74;
          case 1:
            if ([v12 isContextTypeSupported:2 bySample:self])
            {
              v38 = @"Unsupported FxContext conversion: CGContext to CGImage";
              goto LABEL_74;
            }

            if ([v12 isContextTypeSupported:3 bySample:self])
            {
              v38 = @"Unsupported FxContext conversion: GLTexture to CGImage";
              goto LABEL_74;
            }

            if ([v12 isContextTypeSupported:4 bySample:self])
            {
              v38 = @"Unsupported FxContext conversion: GLContext to CGImage";
              goto LABEL_74;
            }

            if ([v12 isContextTypeSupported:5 bySample:self])
            {
              v38 = @"Unsupported FxContext conversion: Bitmap to CGImage";
              goto LABEL_74;
            }

            if ([v12 isContextTypeSupported:6 bySample:self])
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
            if ([v12 isContextTypeSupported:1 bySample:self])
            {
              v43 = [FxContext contextForCGImageWithOptions:v17];
              [(FxSample *)self setContext:v43];
              if ([objc_msgSend(v5 "provider")])
              {
                v44 = [v43 cgImage];
                v45 = [v14 cgContext];
                v57.origin.x = v39;
                v57.origin.y = v40;
                v57.size.width = v41;
                v57.size.height = v42;
                CGContextDrawImage(v45, v57, v44);
                v37 = v14;
              }

              else
              {
                v37 = 0;
              }

              [(FxSample *)self setContext:v14];
              return v37;
            }

            if (([v12 isContextTypeSupported:6 bySample:self] & 1) == 0)
            {
              if ([v12 isContextTypeSupported:3 bySample:self])
              {
                v38 = @"Unsupported FxContext conversion: GLTexture to CGContext";
                goto LABEL_74;
              }

              if ([v12 isContextTypeSupported:4 bySample:self])
              {
                v38 = @"Unsupported FxContext conversion: GLContext to CGContext";
                goto LABEL_74;
              }

              if ([v12 isContextTypeSupported:5 bySample:self])
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
        if (v15 <= 4)
        {
          if (v15 != 3)
          {
            if (([v12 isContextTypeSupported:6 bySample:self] & 1) == 0)
            {
              if ([v12 isContextTypeSupported:1 bySample:self])
              {
                v38 = @"Unsupported FxContext conversion: CGImage to GLContext";
              }

              else if ([v12 isContextTypeSupported:2 bySample:self])
              {
                v38 = @"Unsupported FxContext conversion: CGContext to GLContext";
              }

              else
              {
                if (![v12 isContextTypeSupported:3 bySample:self] && !objc_msgSend(v12, "isContextTypeSupported:bySample:", 5, self))
                {
                  return 0;
                }

                v38 = @"Unsupported FxContext conversion: Bitmap to GLContext";
              }

              goto LABEL_74;
            }

            return self;
          }

          if ([v12 isContextTypeSupported:1 bySample:self])
          {
            v38 = @"Unsupported FxContext conversion: CGImage to GLTexture";
            goto LABEL_74;
          }

          if ([v12 isContextTypeSupported:2 bySample:self])
          {
            v38 = @"Unsupported FxContext conversion: CGContext to GLTexture";
            goto LABEL_74;
          }

          if ([v12 isContextTypeSupported:4 bySample:self])
          {
            v38 = @"Unsupported FxContext conversion: GLContext to GLTexture";
            goto LABEL_74;
          }

          if ([v12 isContextTypeSupported:5 bySample:self])
          {
            v38 = @"Unsupported FxContext conversion: Bitmap to GLTexture";
            goto LABEL_74;
          }

          if ([v12 isContextTypeSupported:6 bySample:self])
          {
            v38 = @"Unsupported FxContext conversion: CIImage to GLTexture";
            goto LABEL_74;
          }

          return 0;
        }

        if (v15 == 5)
        {
          if (([v12 isContextTypeSupported:6 bySample:self] & 1) == 0)
          {
            if ([v12 isContextTypeSupported:1 bySample:self])
            {
              FxDebugLog(&cfstr_UnsupportedFxc_15.isa, v46, v47, v48, v49, v50, v51, v52, v55);
            }

            if ([v12 isContextTypeSupported:2 bySample:self])
            {
              v38 = @"Unsupported FxContext conversion: CGContext to Bitmap";
              goto LABEL_74;
            }

            if ([v12 isContextTypeSupported:3 bySample:self])
            {
              v38 = @"Unsupported FxContext conversion: GLTexture to Bitmap";
              goto LABEL_74;
            }

            if ([v12 isContextTypeSupported:4 bySample:self])
            {
              v38 = @"Unsupported FxContext conversion: GLContext to Bitmap";
              goto LABEL_74;
            }

            return 0;
          }

          return self;
        }

        if (v15 == 6)
        {
          if (([v12 isContextTypeSupported:3 bySample:self] & 1) == 0 && (objc_msgSend(v12, "isContextTypeSupported:bySample:", 5, self) & 1) == 0)
          {
            if (![v12 isContextTypeSupported:1 bySample:self])
            {
              if ([v12 isContextTypeSupported:2 bySample:self])
              {
                v38 = @"Unsupported FxContext conversion: CGContext to CIImage";
                goto LABEL_74;
              }

              if ([v12 isContextTypeSupported:4 bySample:self])
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

  return [v12 evaluateSample:self withOptions:a3];
}

@end