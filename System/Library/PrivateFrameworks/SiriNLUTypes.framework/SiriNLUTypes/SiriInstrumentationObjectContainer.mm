@interface SiriInstrumentationObjectContainer
- (void)addTier1Event:(id)a3;
@end

@implementation SiriInstrumentationObjectContainer

- (void)addTier1Event:(id)a3
{
  v7 = a3;
  v4 = [(SiriInstrumentationObjectContainer *)self tier1Events];

  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(SiriInstrumentationObjectContainer *)self setTier1Events:v5];
  }

  v6 = [(SiriInstrumentationObjectContainer *)self tier1Events];
  [v6 addObject:v7];
}

@end