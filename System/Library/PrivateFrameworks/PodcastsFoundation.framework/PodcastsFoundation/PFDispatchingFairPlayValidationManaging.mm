@interface PFDispatchingFairPlayValidationManaging
+ (id)receiveOn:(id)a3 manager:(id)a4;
- (PFDispatchingFairPlayValidationManaging)init;
- (void)validateDownloadedEpisodesWithCompletion:(id)a3;
@end

@implementation PFDispatchingFairPlayValidationManaging

+ (id)receiveOn:(id)a3 manager:(id)a4
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v7 = objc_allocWithZone(ObjCClassMetadata);
  *&v7[OBJC_IVAR___PFDispatchingFairPlayValidationManaging_wrappedInstance] = a4;
  *&v7[OBJC_IVAR___PFDispatchingFairPlayValidationManaging_responseQueue] = a3;
  v11.receiver = v7;
  v11.super_class = ObjCClassMetadata;
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

- (void)validateDownloadedEpisodesWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
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