@interface __VMULeaksMarkerObject
- (void)dealloc;
@end

@implementation __VMULeaksMarkerObject

- (void)dealloc
{
  region = self->_region;
  if (region)
  {
    entryIndex = self->_entryIndex;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = ___removeEntryFromMarkingRegion_block_invoke;
    v6[3] = &__block_descriptor_44_e5_v8__0l;
    v7 = entryIndex;
    v6[4] = region;
    _singleThreadedMarking(v6);
  }

  v5.receiver = self;
  v5.super_class = __VMULeaksMarkerObject;
  [(__VMULeaksMarkerObject *)&v5 dealloc];
}

@end