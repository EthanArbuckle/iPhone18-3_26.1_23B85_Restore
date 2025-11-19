@interface MTPlaybackPositionController
- (MTPlaybackPositionController)init;
- (void)updatePlaybackPositionWithEpisodeStoreId:(int64_t)a3 completed:(BOOL)a4 position:(double)a5 account:(id)a6 completion:(id)a7;
@end

@implementation MTPlaybackPositionController

- (MTPlaybackPositionController)init
{
  v3 = OBJC_IVAR___MTPlaybackPositionController_requestController;
  *(&self->super.isa + v3) = [objc_allocWithZone(type metadata accessor for MediaRequestController()) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for PlaybackPositionController();
  return [(MTPlaybackPositionController *)&v5 init];
}

- (void)updatePlaybackPositionWithEpisodeStoreId:(int64_t)a3 completed:(BOOL)a4 position:(double)a5 account:(id)a6 completion:(id)a7
{
  v9 = a4;
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45A0, &unk_1D91941F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    *(inited + 32) = a3;
    v15 = inited;
    v16 = a6;
    v17 = self;
    sub_1D905454C(v15, v9, *&a5, 0, a6, sub_1D8E899BC, v13);

    swift_setDeallocating();
  }
}

@end