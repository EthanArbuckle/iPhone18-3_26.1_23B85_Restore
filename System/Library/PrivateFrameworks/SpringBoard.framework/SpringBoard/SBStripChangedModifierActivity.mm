@interface SBStripChangedModifierActivity
- (SBStripChangedModifierActivity)initWithNewStrip:(id)a3 phase:(int64_t)a4;
@end

@implementation SBStripChangedModifierActivity

- (SBStripChangedModifierActivity)initWithNewStrip:(id)a3 phase:(int64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = SBStripChangedModifierActivity;
  v8 = [(SBWindowingModifierActivity *)&v12 init];
  if (v8)
  {
    if (!v7)
    {
      [SBStripChangedModifierActivity initWithNewStrip:a2 phase:v8];
    }

    v9 = [v7 copy];
    updatedStrip = v8->_updatedStrip;
    v8->_updatedStrip = v9;

    v8->_phase = a4;
  }

  return v8;
}

- (void)initWithNewStrip:(uint64_t)a1 phase:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBStripChangedModifierActivity.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"newStrip"}];
}

@end