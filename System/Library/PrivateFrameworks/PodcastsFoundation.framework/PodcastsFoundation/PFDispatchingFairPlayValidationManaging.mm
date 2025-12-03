@interface PFDispatchingFairPlayValidationManaging
+ (id)receiveOn:(id)on manager:(id)manager;
- (PFDispatchingFairPlayValidationManaging)init;
- (void)validateDownloadedEpisodesWithCompletion:(id)completion;
@end

@implementation PFDispatchingFairPlayValidationManaging

+ (id)receiveOn:(id)on manager:(id)manager
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v7 = objc_allocWithZone(ObjCClassMetadata);
  *&v7[OBJC_IVAR___PFDispatchingFairPlayValidationManaging_wrappedInstance] = manager;
  *&v7[OBJC_IVAR___PFDispatchingFairPlayValidationManaging_responseQueue] = on;
  v11.receiver = v7;
  v11.super_class = ObjCClassMetadata;
  onCopy = on;
  swift_unknownObjectRetain();
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

- (void)validateDownloadedEpisodesWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1D8D96FE8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  DispatchingFairPlayValidationManaging.validateDownloadedEpisodes(completion:)(v7, v6);
  sub_1D8D15664(v7);
}

- (PFDispatchingFairPlayValidationManaging)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end