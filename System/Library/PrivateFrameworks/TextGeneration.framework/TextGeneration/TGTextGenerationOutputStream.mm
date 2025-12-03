@interface TGTextGenerationOutputStream
- (NSString)mostRecentTextUpdate;
- (NSString)text;
- (TGTextGenerationOutputStream)init;
- (void)addOutput:(id)output;
@end

@implementation TGTextGenerationOutputStream

- (TGTextGenerationOutputStream)init
{
  v6.receiver = self;
  v6.super_class = TGTextGenerationOutputStream;
  v2 = [(TGTextGenerationOutputStream *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    textFragments = v2->_textFragments;
    v2->_textFragments = array;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)addOutput:(id)output
{
  outputCopy = output;
  os_unfair_lock_lock(&self->_lock);
  [outputCopy score];
  [(TGTextGenerationOutputStream *)self setScore:?];
  textFragments = [(TGTextGenerationOutputStream *)self textFragments];
  text = [outputCopy text];

  [textFragments addObject:text];

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)mostRecentTextUpdate
{
  os_unfair_lock_lock(&self->_lock);
  textFragments = [(TGTextGenerationOutputStream *)self textFragments];
  v4 = [textFragments count];

  if (v4)
  {
    textFragments2 = [(TGTextGenerationOutputStream *)self textFragments];
    lastObject = [textFragments2 lastObject];
  }

  else
  {
    lastObject = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return lastObject;
}

- (NSString)text
{
  v16 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  os_unfair_lock_lock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  textFragments = [(TGTextGenerationOutputStream *)self textFragments];
  v5 = [textFragments countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(textFragments);
        }

        [string appendString:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [textFragments countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = *MEMORY[0x277D85DE8];

  return string;
}

@end