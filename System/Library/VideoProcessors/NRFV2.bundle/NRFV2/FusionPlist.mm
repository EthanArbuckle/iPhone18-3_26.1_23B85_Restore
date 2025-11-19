@interface FusionPlist
+ (void)initialize;
- (FusionPlist)init;
- (void)applyOverrides;
@end

@implementation FusionPlist

+ (void)initialize
{
  dword_2A18C233C = 2;
  dword_2A18C2338 = 2;
  dword_2A18C2340 = -1;
}

- (FusionPlist)init
{
  v8.receiver = self;
  v8.super_class = FusionPlist;
  v2 = [(FusionPlist *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    bands = v2->bands;
    v2->bands = v3;

    v5 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    toneMapSmoothingBands = v2->toneMapSmoothingBands;
    v2->toneMapSmoothingBands = v5;
  }

  return v2;
}

- (void)applyOverrides
{
  if (dword_2A18C233C <= 1)
  {
    self->enableMotionDetection = dword_2A18C233C == 1;
  }

  if (dword_2A18C2338 <= 1)
  {
    self->preWarpInputs = dword_2A18C2338 == 1;
  }

  if ((dword_2A18C2340 & 0x80000000) == 0)
  {
    self->hybridRegistrationMode = dword_2A18C2340;
  }
}

@end