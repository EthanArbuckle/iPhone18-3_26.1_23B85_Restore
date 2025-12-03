@interface MREffectManager
+ (void)initialize;
- (BOOL)hasCustomTimingForEffectID:(id)d;
- (BOOL)hasMultiImageInputForEffectID:(id)d;
- (BOOL)isOpaqueForEffectID:(id)d;
- (Class)classForEffectID:(id)d;
- (MREffectManager)init;
- (double)defaultMainDurationForEffectID:(id)d;
- (double)defaultPhaseInDurationForEffectID:(id)d;
- (double)defaultPhaseOutDurationForEffectID:(id)d;
- (double)lineSpacingFactorForTextInEffectID:(id)d presetID:(id)iD atIndex:(int64_t)index;
- (id)attributeDescriptionForEffectID:(id)d andKey:(id)key;
- (id)customTimingWithEffectID:(id)d effectAttributes:(id)attributes slideInformation:(id)information textInformation:(id)textInformation inAspectRatio:(double)ratio;
- (id)defaultEffectAttributesWithEffectID:(id)d andSlideInformation:(id)information;
- (id)descriptionForEffectID:(id)d;
- (id)effectWithEffectID:(id)d;
- (id)imageInputInfosForEffectID:(id)d;
- (id)imageProviderInfosForEffectID:(id)d;
- (id)resourcePathForEffectID:(id)d andResource:(id)resource;
- (id)sizeScriptForEffectID:(id)d andKey:(id)key;
- (void)cleanup;
- (void)dealloc;
- (void)recycleEffect:(id)effect;
- (void)releaseResources;
@end

@implementation MREffectManager

+ (void)initialize
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___MREffectManager;
  objc_msgSendSuper2(&v2, "initialize");
  if (!qword_1EF3A8)
  {
    qword_1EF3A8 = objc_alloc_init(MREffectManager);
  }
}

- (MREffectManager)init
{
  v4.receiver = self;
  v4.super_class = MREffectManager;
  v2 = [(MREffectManager *)&v4 init];
  if (v2)
  {
    v2->mEffectSets = objc_alloc_init(NSMutableDictionary);
    v2->mEffectPools = objc_alloc_init(NSMutableDictionary);
  }

  return v2;
}

- (void)dealloc
{
  [(MREffectManager *)self cleanup];
  v3.receiver = self;
  v3.super_class = MREffectManager;
  [(MREffectManager *)&v3 dealloc];
}

- (void)cleanup
{
  [(MREffectManager *)self releaseResources];

  self->mEffectSets = 0;
  self->mEffectPools = 0;
}

- (void)releaseResources
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = self->mEffectSets;
  v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v8 = [(NSMutableDictionary *)self->mEffectSets objectForKey:v7];
        v9 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v16;
          do
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v16 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v15 + 1) + 8 * j);
              if ([v13 isRetainedByEffectLayer])
              {
                NSLog(@"[MREffectManager releaseResources] called while resources still in use. May leak.");
              }

              else
              {
                [v13 cleanup];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v10);
        }
      }

      v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  [(NSMutableDictionary *)self->mEffectSets removeAllObjects];
  [(NSMutableDictionary *)self->mEffectPools removeAllObjects];
}

- (Class)classForEffectID:(id)d
{
  dCopy = d;
  if (!d)
  {
    return dCopy;
  }

  v4 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  v5 = [v4 objectForKey:@"className"];
  v6 = v5 ? v5 : dCopy;
  v7 = NSClassFromString([@"MREffect" stringByAppendingString:v6]);
  if (v7)
  {
    dCopy = v7;
    v8 = [NSBundle bundleForClass:v7];
    if (v8 == [NSBundle bundleForClass:objc_opt_class()])
    {
      return dCopy;
    }
  }

  if (![objc_msgSend(v4 objectForKey:{@"imageInputInfo", "count"}])
  {
    return 0;
  }

  return objc_opt_class();
}

- (id)effectWithEffectID:(id)d
{
  if (!d || ([d isEqualToString:@"Undefined"] & 1) != 0)
  {
    return 0;
  }

  objc_sync_enter(self);
  v6 = [(NSMutableDictionary *)self->mEffectPools objectForKey:d];
  v7 = v6;
  if (v6 && [v6 count])
  {
    anyObject = [v7 anyObject];
    [v7 removeObject:anyObject];
  }

  else
  {
    anyObject = [objc_alloc(-[MREffectManager classForEffectID:](self classForEffectID:{d)), "initWithEffectID:", d}];
    if (anyObject)
    {
      v8 = [(NSMutableDictionary *)self->mEffectSets objectForKey:d];
      if (v8)
      {
        [v8 addObject:anyObject];
      }

      else
      {
        [(NSMutableDictionary *)self->mEffectSets setObject:[NSMutableSet forKey:"setWithObject:" setWithObject:anyObject], d];
      }
    }
  }

  objc_sync_exit(self);
  return anyObject;
}

- (void)recycleEffect:(id)effect
{
  objc_sync_enter(self);
  v5 = -[NSMutableDictionary objectForKey:](self->mEffectPools, "objectForKey:", [effect effectID]);
  if (v5)
  {
    [v5 addObject:effect];
  }

  else
  {
    -[NSMutableDictionary setObject:forKey:](self->mEffectPools, "setObject:forKey:", +[NSMutableSet setWithObject:](NSMutableSet, "setWithObject:", effect), [effect effectID]);
  }

  objc_sync_exit(self);
}

- (id)descriptionForEffectID:(id)d
{
  v4 = +[MPEffectManager sharedManager];

  return [v4 descriptionForEffectID:d];
}

- (id)resourcePathForEffectID:(id)d andResource:(id)resource
{
  v5 = [objc_msgSend(+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  if (!v5)
  {
    return resource;
  }

  return [v5 stringByAppendingPathComponent:resource];
}

- (id)sizeScriptForEffectID:(id)d andKey:(id)key
{
  v5 = [(MREffectManager *)self descriptionForEffectID:d];
  v6 = [key stringByAppendingString:@"SizeScript"];

  return [v5 objectForKey:v6];
}

- (BOOL)hasMultiImageInputForEffectID:(id)d
{
  v3 = [-[MREffectManager descriptionForEffectID:](self descriptionForEffectID:{d), "objectForKey:", @"hasMultiImageInput"}];

  return [v3 BOOLValue];
}

- (id)imageInputInfosForEffectID:(id)d
{
  v3 = [(MREffectManager *)self descriptionForEffectID:d];

  return [v3 objectForKey:@"imageInputInfo"];
}

- (id)imageProviderInfosForEffectID:(id)d
{
  v3 = [(MREffectManager *)self descriptionForEffectID:d];

  return [v3 objectForKey:@"imageProviderInfo"];
}

- (BOOL)isOpaqueForEffectID:(id)d
{
  if (![-[MREffectManager descriptionForEffectID:](self "descriptionForEffectID:{"objectForKey:", @"isOpaque"}")])
  {
    return 1;
  }

  v5 = [-[MREffectManager descriptionForEffectID:](self descriptionForEffectID:{d), "objectForKey:", @"isOpaque"}];

  return [v5 BOOLValue];
}

- (double)defaultPhaseInDurationForEffectID:(id)d
{
  v3 = [-[MREffectManager descriptionForEffectID:](self descriptionForEffectID:{d), "objectForKey:", @"phaseInDuration"}];

  [v3 doubleValue];
  return result;
}

- (double)defaultMainDurationForEffectID:(id)d
{
  v3 = [-[MREffectManager descriptionForEffectID:](self descriptionForEffectID:{d), "objectForKey:", @"mainDuration"}];

  [v3 doubleValue];
  return result;
}

- (double)defaultPhaseOutDurationForEffectID:(id)d
{
  v3 = [-[MREffectManager descriptionForEffectID:](self descriptionForEffectID:{d), "objectForKey:", @"phaseOutDuration"}];

  [v3 doubleValue];
  return result;
}

- (BOOL)hasCustomTimingForEffectID:(id)d
{
  v3 = [(MREffectManager *)self classForEffectID:d];

  return [(objc_class *)v3 hasCustomTiming];
}

- (id)customTimingWithEffectID:(id)d effectAttributes:(id)attributes slideInformation:(id)information textInformation:(id)textInformation inAspectRatio:(double)ratio
{
  v12 = [(MREffectManager *)self classForEffectID:?];

  return [(objc_class *)v12 customTimingWithEffectID:d effectAttributes:attributes slideInformation:information textInformation:textInformation inAspectRatio:ratio];
}

- (id)defaultEffectAttributesWithEffectID:(id)d andSlideInformation:(id)information
{
  v6 = [(MREffectManager *)self classForEffectID:?];

  return [(objc_class *)v6 defaultEffectAttributesWithEffectID:d andSlideInformation:information];
}

- (id)attributeDescriptionForEffectID:(id)d andKey:(id)key
{
  v5 = [-[MREffectManager descriptionForEffectID:](self descriptionForEffectID:{d), "objectForKey:", @"attributes"}];

  return [v5 objectForKey:key];
}

- (double)lineSpacingFactorForTextInEffectID:(id)d presetID:(id)iD atIndex:(int64_t)index
{
  if (iD)
  {
    iDCopy = iD;
  }

  else
  {
    iDCopy = @"Default";
  }

  v7 = [objc_msgSend(+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  if ([v7 count] <= index)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v7 objectAtIndex:index];
  }

  v9 = [v8 objectForKey:@"lineSpacing"];
  if (!v9)
  {
    return 1.0;
  }

  [v9 floatValue];
  return v10;
}

@end