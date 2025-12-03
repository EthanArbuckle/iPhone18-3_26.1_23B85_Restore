@interface MTPlaybackPositionController
- (MTPlaybackPositionController)init;
- (void)updatePlaybackPositionWithEpisodeStoreId:(int64_t)id completed:(BOOL)completed position:(double)position account:(id)account completion:(id)completion;
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

- (void)updatePlaybackPositionWithEpisodeStoreId:(int64_t)id completed:(BOOL)completed position:(double)position account:(id)account completion:(id)completion
{
  completedCopy = completed;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45A0, &unk_1D91941F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  if (id < 0)
  {
    __break(1u);
  }

  else
  {
    *(inited + 32) = id;
    v15 = inited;
    accountCopy = account;
    selfCopy = self;
    sub_1D905454C(v15, completedCopy, *&position, 0, account, sub_1D8E899BC, v13);

    swift_setDeallocating();
  }
}

@end