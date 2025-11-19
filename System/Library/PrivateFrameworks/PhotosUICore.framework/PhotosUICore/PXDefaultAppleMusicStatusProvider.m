@interface PXDefaultAppleMusicStatusProvider
- (NSError)error;
- (int64_t)statusForCapability:(int64_t)a3;
- (void)requestStatusForCapability:(int64_t)a3 handler:(id)a4;
- (void)startGatheringCapabilityStatuses;
@end

@implementation PXDefaultAppleMusicStatusProvider

- (int64_t)statusForCapability:(int64_t)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___PXDefaultAppleMusicStatusProvider_lockedState);
  v5 = self;
  os_unfair_lock_lock(v4 + 8);
  sub_1A3D947DC(&v4[4], a3, &v8);
  os_unfair_lock_unlock(v4 + 8);
  v6 = v8;

  return v6;
}

- (void)requestStatusForCapability:(int64_t)a3 handler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self;
  sub_1A3D949C0(a3, sub_1A3D96FA4, v7);
}

- (void)startGatheringCapabilityStatuses
{
  sub_1A3C29FDC(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_1A524CCB4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[5] = 0;
  v7[6] = 0;
  v7[4] = v6;
  sub_1A3D4D930(0, 0, v4, &unk_1A52FB788, v7);
}

- (NSError)error
{
  v2 = *(&self->super.isa + OBJC_IVAR___PXDefaultAppleMusicStatusProvider_lockedState);
  v3 = self;
  os_unfair_lock_lock((v2 + 32));
  v4 = *(v2 + 24);
  v5 = v4;
  os_unfair_lock_unlock((v2 + 32));

  if (v4)
  {
    v6 = sub_1A5240B74();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end