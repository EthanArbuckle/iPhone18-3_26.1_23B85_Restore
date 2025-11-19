@interface TSULayerSaveRestore
- (BOOL)restoreLayer:(id)a3;
- (id)objectForLayer:(id)a3 key:(id)a4;
- (void)dealloc;
- (void)saveLayer:(id)a3;
@end

@implementation TSULayerSaveRestore

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSULayerSaveRestore;
  [(TSULayerSaveRestore *)&v3 dealloc];
}

- (id)objectForLayer:(id)a3 key:(id)a4
{
  v5 = [(TSUNoCopyDictionary *)[(TSULayerSaveRestore *)self layerStates] objectForKey:a3];

  return [v5 objectForKey:a4];
}

- (void)saveLayer:(id)a3
{
  if (a3)
  {
    if (![(TSULayerSaveRestore *)self layerStates])
    {
      v5 = objc_alloc_init(TSURetainedPointerKeyDictionary);
      [(TSULayerSaveRestore *)self setLayerStates:v5];
    }

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = MEMORY[0x277CCAE60];
    [a3 transform];
    [v6 setObject:objc_msgSend(v7 forKey:{"valueWithCATransform3D:", &v15), @"transform"}];
    v8 = MEMORY[0x277CCABB0];
    [a3 opacity];
    [v6 setObject:objc_msgSend(v8 forKey:{"numberWithFloat:"), @"opacity"}];
    v9 = MEMORY[0x277CCABB0];
    [a3 shadowOpacity];
    [v6 setObject:objc_msgSend(v9 forKey:{"numberWithFloat:"), @"shadowOpacity"}];
    v10 = MEMORY[0x277CCAE60];
    [a3 position];
    [v6 setObject:objc_msgSend(v10 forKey:{"valueWithCGPoint:"), @"position"}];
    v11 = MEMORY[0x277CCAE60];
    [a3 anchorPoint];
    [v6 setObject:objc_msgSend(v11 forKey:{"valueWithCGPoint:"), @"anchorPoint"}];
    [v6 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", objc_msgSend(a3, "isHidden")), @"hidden"}];
    v12 = MEMORY[0x277CCABB0];
    [a3 zPosition];
    *&v13 = v13;
    [v6 setObject:objc_msgSend(v12 forKey:{"numberWithFloat:", v13), @"zPosition"}];
    if ([a3 superlayer])
    {
      v14 = [a3 superlayer];
    }

    else
    {
      v14 = [MEMORY[0x277CBEB68] null];
    }

    [v6 setObject:v14 forKey:@"superlayer"];
    [v6 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", objc_msgSend(objc_msgSend(objc_msgSend(a3, "superlayer"), "sublayers"), "indexOfObject:", a3)), @"layerIndex"}];
    [v6 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", objc_msgSend(objc_msgSend(a3, "animationKeys"), "count") != 0), @"hasAnimations"}];
    [(TSUNoCopyDictionary *)[(TSULayerSaveRestore *)self layerStates] setObject:v6 forKey:a3];
  }
}

- (BOOL)restoreLayer:(id)a3
{
  if (a3)
  {
    v5 = [(TSUNoCopyDictionary *)[(TSULayerSaveRestore *)self layerStates] objectForKey:a3];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 objectForKey:@"superlayer"];
      if (v7)
      {
        v8 = v7;
        if (v7 != [MEMORY[0x277CBEB68] null] && v8 != objc_msgSend(a3, "superlayer"))
        {
          [v8 insertSublayer:a3 atIndex:{objc_msgSend(objc_msgSend(v6, "objectForKey:", @"layerIndex", "intValue")}];
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

      [a3 transform];
      v33 = v35;
      if (!CATransform3DEqualToTransform(&v33, &b))
      {
        b = v35;
        [a3 setTransform:&b];
      }

      [objc_msgSend(v6 objectForKey:{@"opacity", "floatValue"}];
      v11 = v10;
      [a3 opacity];
      if (*&v12 != v11)
      {
        *&v12 = v11;
        [a3 setOpacity:v12];
      }

      [objc_msgSend(v6 objectForKey:{@"shadowOpacity", "floatValue"}];
      v14 = v13;
      [a3 shadowOpacity];
      if (*&v15 != v14)
      {
        *&v15 = v14;
        [a3 setShadowOpacity:v15];
      }

      [objc_msgSend(v6 objectForKey:{@"position", "CGPointValue"}];
      v17 = v16;
      v19 = v18;
      [a3 position];
      if (v21 != v17 || v20 != v19)
      {
        [a3 setPosition:{v17, v19}];
      }

      [objc_msgSend(v6 objectForKey:{@"anchorPoint", "CGPointValue"}];
      v23 = v22;
      v25 = v24;
      [a3 anchorPoint];
      if (v27 != v23 || v26 != v25)
      {
        [a3 setAnchorPoint:{v23, v25}];
      }

      v28 = [objc_msgSend(v6 objectForKey:{@"hidden", "BOOLValue"}];
      if (v28 != [a3 isHidden])
      {
        [a3 setHidden:v28];
      }

      [objc_msgSend(v6 objectForKey:{@"zPosition", "floatValue"}];
      v30 = v29;
      [a3 zPosition];
      if (v31 != v30)
      {
        [a3 setZPosition:v30];
      }

      if (([objc_msgSend(v6 objectForKey:{@"hasAnimations", "BOOLValue"}] & 1) == 0)
      {
        [a3 removeAllAnimations];
      }

      [(TSUNoCopyDictionary *)[(TSULayerSaveRestore *)self layerStates] removeObjectForKey:a3];
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