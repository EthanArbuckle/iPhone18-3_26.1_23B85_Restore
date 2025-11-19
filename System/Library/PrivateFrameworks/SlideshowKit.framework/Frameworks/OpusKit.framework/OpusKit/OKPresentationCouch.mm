@interface OKPresentationCouch
+ (id)couchWithName:(id)a3 settings:(id)a4 steps:(id)a5 restartScript:(id)a6;
- (OKPresentationCouch)init;
- (OKPresentationCouch)initWithDictionary:(id)a3 andName:(id)a4 forPresentation:(id)a5;
- (double)duration;
- (id)closestStepForPageName:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionary;
- (id)lastStepForPageName:(id)a3;
- (id)nextStepAfterStep:(id)a3 canLoop:(BOOL)a4;
- (void)addStep:(id)a3;
- (void)dealloc;
- (void)resolveIfNeeded;
@end

@implementation OKPresentationCouch

- (OKPresentationCouch)init
{
  v3.receiver = self;
  v3.super_class = OKPresentationCouch;
  result = [(OKPresentationCanvas *)&v3 init];
  if (result)
  {
    result->_steps = 0;
    result->_internalSettings = 0;
    result->_restartScript = 0;
  }

  return result;
}

- (OKPresentationCouch)initWithDictionary:(id)a3 andName:(id)a4 forPresentation:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = [(OKPresentationCouch *)self init];
  v9 = v8;
  if (v8)
  {
    [(OKPresentationCanvas *)v8 setPresentation:a5];
    [(OKPresentationCanvas *)v9 setName:a4];
    v9->_steps = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [a3 objectForKey:{@"steps", 0}];
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [[OKPresentationCouchStep alloc] initWithDictionary:*(*(&v17 + 1) + 8 * v14) forPresentation:a5 andCouch:v9];
          [(NSMutableArray *)v9->_steps addObject:v15];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    v9->_restartScript = [objc_msgSend(a3 objectForKey:{@"restartScript", "copy"}];
    v9->_internalSettings = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:objc_msgSend(a3 copyItems:{"objectForKey:", @"settings", 1}];
  }

  return v9;
}

- (void)dealloc
{
  steps = self->_steps;
  if (steps)
  {

    self->_steps = 0;
  }

  internalSettings = self->_internalSettings;
  if (internalSettings)
  {

    self->_internalSettings = 0;
  }

  restartScript = self->_restartScript;
  if (restartScript)
  {

    self->_restartScript = 0;
  }

  loopStep = self->_loopStep;
  if (loopStep)
  {

    self->_loopStep = 0;
  }

  v7.receiver = self;
  v7.super_class = OKPresentationCouch;
  [(OKPresentationCanvas *)&v7 dealloc];
}

+ (id)couchWithName:(id)a3 settings:(id)a4 steps:(id)a5 restartScript:(id)a6
{
  v10 = objc_alloc_init(OKPresentationCouch);
  [(OKPresentationCanvas *)v10 setName:a3];
  v10->_steps = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:a5 copyItems:1];
  v10->_restartScript = [a6 copy];
  v10->_internalSettings = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:a4 copyItems:1];
  [(NSMutableArray *)v10->_steps makeObjectsPerformSelector:sel_setParent_ withObject:v10];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = OKPresentationCouch;
  v4 = [(OKPresentationCanvas *)&v7 copyWithZone:a3];
  if (v4)
  {
    steps = self->_steps;
    objc_sync_enter(steps);
    if (self->_steps)
    {
      v4[11] = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_steps copyItems:1];
    }

    objc_sync_exit(steps);
    v4[10] = [(NSString *)self->_restartScript copy];
    if (self->_internalSettings)
    {
      v4[12] = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:self->_internalSettings copyItems:1];
    }
  }

  return v4;
}

- (id)dictionary
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  steps = self->_steps;
  objc_sync_enter(steps);
  if ([(NSMutableArray *)self->_steps count])
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = self->_steps;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [v5 addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "dictionary")}];
        }

        v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [v3 setObject:v5 forKey:@"steps"];
    restartScript = self->_restartScript;
    if (restartScript)
    {
      [v3 setObject:restartScript forKey:@"restartScript"];
    }

    if (self->_internalSettings)
    {
      [v3 setObject:+[OKSettingsUtility normalizedObjectFromValue:](OKSettingsUtility forKey:{"normalizedObjectFromValue:"), @"settings"}];
    }
  }

  objc_sync_exit(steps);
  return v3;
}

- (id)closestStepForPageName:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  steps = self->_steps;
  objc_sync_enter(steps);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_steps;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([objc_msgSend(v10 "anchorPage")])
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:
  objc_sync_exit(steps);
  return v11;
}

- (id)lastStepForPageName:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  steps = self->_steps;
  objc_sync_enter(steps);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_steps;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = 0;
    v9 = *v14;
    do
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v8 = *(*(&v13 + 1) + 8 * v10);
        if (([objc_msgSend(v8 "anchorPage")] & 1) == 0)
        {
          if (v11)
          {
            goto LABEL_13;
          }

          v8 = 0;
        }

        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v11 = v8;
    }

    while (v7);
  }

  else
  {
    v11 = 0;
  }

LABEL_13:
  objc_sync_exit(steps);
  return v11;
}

- (id)nextStepAfterStep:(id)a3 canLoop:(BOOL)a4
{
  v4 = a4;
  steps = self->_steps;
  objc_sync_enter(steps);
  v8 = [(NSMutableArray *)self->_steps indexOfObject:a3];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_loopStep == a3)
    {
      loopStep = [(NSMutableArray *)self->_steps firstObject];
LABEL_8:
      v10 = loopStep;
      goto LABEL_10;
    }
  }

  else
  {
    if (v8 < [(NSMutableArray *)self->_steps count]- 1)
    {
      loopStep = [(NSMutableArray *)self->_steps objectAtIndexedSubscript:v8 + 1];
      goto LABEL_8;
    }

    if (v4)
    {
      loopStep = self->_loopStep;
      goto LABEL_8;
    }
  }

  v10 = 0;
LABEL_10:
  objc_sync_exit(steps);

  return v10;
}

- (void)addStep:(id)a3
{
  steps = self->_steps;
  objc_sync_enter(steps);
  [a3 setParent:self];
  [a3 setPresentation:{-[OKPresentationCanvas presentation](self, "presentation")}];
  [a3 resolveIfNeeded];
  [(NSMutableArray *)self->_steps addObject:a3];

  objc_sync_exit(steps);
}

- (double)duration
{
  v16 = *MEMORY[0x277D85DE8];
  steps = self->_steps;
  objc_sync_enter(steps);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_steps;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * i) duration];
        v7 = v7 + v9;
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  objc_sync_exit(steps);
  return v7;
}

- (void)resolveIfNeeded
{
  v25 = *MEMORY[0x277D85DE8];
  if ([(OKPresentationCanvas *)self presentation])
  {
    steps = self->_steps;
    objc_sync_enter(steps);
    v4 = [(OKPresentationCanvas *)self isResolved];
    if (!v4)
    {
      [(NSMutableArray *)self->_steps makeObjectsPerformSelector:sel_setPresentation_ withObject:[(OKPresentationCanvas *)self presentation]];
      [(OKPresentationCanvas *)self setIsResolved:1];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = self->_steps;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    v7 = !v4;
    if (v6)
    {
      v8 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          if (([v10 isResolved] & 1) == 0)
          {
            [v10 resolveIfNeeded];
            v7 = 1;
          }
        }

        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v6);
    }

    objc_sync_exit(steps);
    if (v7)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v11 = [(NSMutableDictionary *)self->_internalSettings allKeys];
      v12 = [v11 countByEnumeratingWithState:&v15 objects:v23 count:16];
      if (v12)
      {
        v13 = *v16;
        do
        {
          for (j = 0; j != v12; ++j)
          {
            if (*v16 != v13)
            {
              objc_enumerationMutation(v11);
            }

            [(OKPresentationCanvas *)self setSettingsObject:[(NSMutableDictionary *)self->_internalSettings objectForKey:*(*(&v15 + 1) + 8 * j)] forKeyPath:*(*(&v15 + 1) + 8 * j)];
          }

          v12 = [v11 countByEnumeratingWithState:&v15 objects:v23 count:16];
        }

        while (v12);
      }
    }
  }

  else if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Model/OKPresentationCouch.m" line:316 andFormat:@"Failed to resolve canvas %@: Not attached to any presentation", -[OKPresentationCanvas name](self, "name")];
  }
}

@end