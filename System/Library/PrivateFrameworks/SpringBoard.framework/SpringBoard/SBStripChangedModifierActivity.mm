@interface SBStripChangedModifierActivity
- (SBStripChangedModifierActivity)initWithNewStrip:(id)strip phase:(int64_t)phase;
@end

@implementation SBStripChangedModifierActivity

- (SBStripChangedModifierActivity)initWithNewStrip:(id)strip phase:(int64_t)phase
{
  stripCopy = strip;
  v12.receiver = self;
  v12.super_class = SBStripChangedModifierActivity;
  v8 = [(SBWindowingModifierActivity *)&v12 init];
  if (v8)
  {
    if (!stripCopy)
    {
      [SBStripChangedModifierActivity initWithNewStrip:a2 phase:v8];
    }

    v9 = [stripCopy copy];
    updatedStrip = v8->_updatedStrip;
    v8->_updatedStrip = v9;

    v8->_phase = phase;
  }

  return v8;
}

- (void)initWithNewStrip:(uint64_t)a1 phase:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBStripChangedModifierActivity.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"newStrip"}];
}

@end