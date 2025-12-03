@interface SiriInstrumentationObjectContainer
- (void)addTier1Event:(id)event;
@end

@implementation SiriInstrumentationObjectContainer

- (void)addTier1Event:(id)event
{
  eventCopy = event;
  tier1Events = [(SiriInstrumentationObjectContainer *)self tier1Events];

  if (!tier1Events)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(SiriInstrumentationObjectContainer *)self setTier1Events:v5];
  }

  tier1Events2 = [(SiriInstrumentationObjectContainer *)self tier1Events];
  [tier1Events2 addObject:eventCopy];
}

@end