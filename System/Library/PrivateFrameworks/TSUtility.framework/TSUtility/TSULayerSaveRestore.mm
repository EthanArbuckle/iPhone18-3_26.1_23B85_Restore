@interface TSULayerSaveRestore
- (BOOL)restoreLayer:(id)layer;
- (id)objectForLayer:(id)layer key:(id)key;
- (void)dealloc;
- (void)saveLayer:(id)layer;
@end

@implementation TSULayerSaveRestore

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSULayerSaveRestore;
  [(TSULayerSaveRestore *)&v3 dealloc];
}

- (id)objectForLayer:(id)layer key:(id)key
{
  v5 = [(TSUNoCopyDictionary *)[(TSULayerSaveRestore *)self layerStates] objectForKey:layer];

  return [v5 objectForKey:key];
}

- (void)saveLayer:(id)layer
{
  if (layer)
  {
    if (![(TSULayerSaveRestore *)self layerStates])
    {
      v5 = objc_alloc_init(TSURetainedPointerKeyDictionary);
      [(TSULayerSaveRestore *)self setLayerStates:v5];
    }

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = MEMORY[0x277CCAE60];
    [layer transform];
    [v6 setObject:objc_msgSend(v7 forKey:{"valueWithCATransform3D:", &v15), @"transform"}];
    v8 = MEMORY[0x277CCABB0];
    [layer opacity];
    [v6 setObject:objc_msgSend(v8 forKey:{"numberWithFloat:"), @"opacity"}];
    v9 = MEMORY[0x277CCABB0];
    [layer shadowOpacity];
    [v6 setObject:objc_msgSend(v9 forKey:{"numberWithFloat:"), @"shadowOpacity"}];
    v10 = MEMORY[0x277CCAE60];
    [layer position];
    [v6 setObject:objc_msgSend(v10 forKey:{"valueWithCGPoint:"), @"position"}];
    v11 = MEMORY[0x277CCAE60];
    [layer anchorPoint];
    [v6 setObject:objc_msgSend(v11 forKey:{"valueWithCGPoint:"), @"anchorPoint"}];
    [v6 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", objc_msgSend(layer, "isHidden")), @"hidden"}];
    v12 = MEMORY[0x277CCABB0];
    [layer zPosition];
    *&v13 = v13;
    [v6 setObject:objc_msgSend(v12 forKey:{"numberWithFloat:", v13), @"zPosition"}];
    if ([layer superlayer])
    {
      superlayer = [layer superlayer];
    }

    else
    {
      superlayer = [MEMORY[0x277CBEB68] null];
    }

    [v6 setObject:superlayer forKey:@"superlayer"];
    [v6 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", objc_msgSend(objc_msgSend(objc_msgSend(layer, "superlayer"), "sublayers"), "indexOfObject:", layer)), @"layerIndex"}];
    [v6 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", objc_msgSend(objc_msgSend(layer, "animationKeys"), "count") != 0), @"hasAnimations"}];
    [(TSUNoCopyDictionary *)[(TSULayerSaveRestore *)self layerStates] setObject:v6 forKey:layer];
  }
}

- (BOOL)restoreLayer:(id)layer
{
  if (layer)
  {
    v5 = [(TSUNoCopyDictionary *)[(TSULayerSaveRestore *)self layerStates] objectForKey:layer];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 objectForKey:@"superlayer"];
      if (v7)
      {
        v8 = v7;
        if (v7 != [MEMORY[0x277CBEB68] null] && v8 != objc_msgSend(layer, "superlayer"))
        {
          [v8 insertSublayer:layer atIndex:{objc_msgSend(objc_msgSend(v6, "objectForKey:", @"layerIndex", "intValue")}];
        }
      }

      memset(&v35, 0, sizeof(v35));
      v9 = [v6 objectForKey:@"transform"];
      if (v9)
      {
        [v9 CATransform3DValue];
      }

      else
      {
        memset(&v35, 0, sizeof(v35));
      }

      [layer transform];
      v33 = v35;
      if (!CATransform3DEqualToTransform(&v33, &b))
      {
        b = v35;
        [layer setTransform:&b];
      }

      [objc_msgSend(v6 objectForKey:{@"opacity", "floatValue"}];
      v11 = v10;
      [layer opacity];
      if (*&v12 != v11)
      {
        *&v12 = v11;
        [layer setOpacity:v12];
      }

      [objc_msgSend(v6 objectForKey:{@"shadowOpacity", "floatValue"}];
      v14 = v13;
      [layer shadowOpacity];
      if (*&v15 != v14)
      {
        *&v15 = v14;
        [layer setShadowOpacity:v15];
      }

      [objc_msgSend(v6 objectForKey:{@"position", "CGPointValue"}];
      v17 = v16;
      v19 = v18;
      [layer position];
      if (v21 != v17 || v20 != v19)
      {
        [layer setPosition:{v17, v19}];
      }

      [objc_msgSend(v6 objectForKey:{@"anchorPoint", "CGPointValue"}];
      v23 = v22;
      v25 = v24;
      [layer anchorPoint];
      if (v27 != v23 || v26 != v25)
      {
        [layer setAnchorPoint:{v23, v25}];
      }

      v28 = [objc_msgSend(v6 objectForKey:{@"hidden", "BOOLValue"}];
      if (v28 != [layer isHidden])
      {
        [layer setHidden:v28];
      }

      [objc_msgSend(v6 objectForKey:{@"zPosition", "floatValue"}];
      v30 = v29;
      [layer zPosition];
      if (v31 != v30)
      {
        [layer setZPosition:v30];
      }

      if (([objc_msgSend(v6 objectForKey:{@"hasAnimations", "BOOLValue"}] & 1) == 0)
      {
        [layer removeAllAnimations];
      }

      [(TSUNoCopyDictionary *)[(TSULayerSaveRestore *)self layerStates] removeObjectForKey:layer];
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

@end