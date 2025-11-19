@interface TGTextGenerationOutputStream
- (NSString)mostRecentTextUpdate;
- (NSString)text;
- (TGTextGenerationOutputStream)init;
- (void)addOutput:(id)a3;
@end

@implementation TGTextGenerationOutputStream

- (TGTextGenerationOutputStream)init
{
  v6.receiver = self;
  v6.super_class = TGTextGenerationOutputStream;
  v2 = [(TGTextGenerationOutputStream *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    textFragments = v2->_textFragments;
    v2->_textFragments = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)addOutput:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [v4 score];
  [(TGTextGenerationOutputStream *)self setScore:?];
  v5 = [(TGTextGenerationOutputStream *)self textFragments];
  v6 = [v4 text];

  [v5 addObject:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)mostRecentTextUpdate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(TGTextGenerationOutputStream *)self textFragments];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(TGTextGenerationOutputStream *)self textFragments];
    v6 = [v5 lastObject];
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (NSString)text
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  os_unfair_lock_lock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(TGTextGenerationOutputStream *)self textFragments];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 appendString:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

@end