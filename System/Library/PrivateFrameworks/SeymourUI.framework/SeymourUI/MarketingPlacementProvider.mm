@interface MarketingPlacementProvider
- (_TtC9SeymourUI26MarketingPlacementProvider)init;
- (void)engagement:(AMSEngagement *)engagement didUpdateEngagementRequest:(AMSEngagementRequest *)request placement:(NSString *)placement serviceType:(NSString *)type completion:(id)completion;
- (void)engagement:(AMSEngagement *)engagement handleDialogRequest:(AMSDialogRequest *)request completion:(id)completion;
- (void)engagement:(AMSEngagement *)engagement handleEngagementRequest:(AMSEngagementRequest *)request completion:(id)completion;
- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type;
@end

@implementation MarketingPlacementProvider

- (_TtC9SeymourUI26MarketingPlacementProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_20C13C954();
  v14 = v13;
  v15 = sub_20C13CDF4();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = self;
  v16[5] = engagement;
  v16[6] = request;
  v16[7] = v12;
  v16[8] = v14;
  engagementCopy = engagement;
  requestCopy = request;
  selfCopy = self;
  sub_20B6383D0(0, 0, v11, &unk_20C18D768, v16);
}

- (void)engagement:(AMSEngagement *)engagement handleDialogRequest:(AMSDialogRequest *)request completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = engagement;
  v13[3] = request;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_20C13CDF4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_20C18D740;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_20C18D748;
  v16[5] = v15;
  engagementCopy = engagement;
  requestCopy = request;
  selfCopy = self;
  sub_20B77397C(0, 0, v11, &unk_20C18D750, v16);
}

- (void)engagement:(AMSEngagement *)engagement handleEngagementRequest:(AMSEngagementRequest *)request completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = engagement;
  v13[3] = request;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_20C13CDF4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_20C18D718;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_20C18D720;
  v16[5] = v15;
  engagementCopy = engagement;
  requestCopy = request;
  selfCopy = self;
  sub_20B77397C(0, 0, v11, &unk_20C18D728, v16);
}

- (void)engagement:(AMSEngagement *)engagement didUpdateEngagementRequest:(AMSEngagementRequest *)request placement:(NSString *)placement serviceType:(NSString *)type completion:(id)completion
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v26 - v14;
  v16 = _Block_copy(completion);
  v17 = swift_allocObject();
  v17[2] = engagement;
  v17[3] = request;
  v17[4] = placement;
  v17[5] = type;
  v17[6] = v16;
  v17[7] = self;
  v18 = sub_20C13CDF4();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_20C18D6E0;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_20C18D6F0;
  v20[5] = v19;
  engagementCopy = engagement;
  requestCopy = request;
  placementCopy = placement;
  typeCopy = type;
  selfCopy = self;
  sub_20B77397C(0, 0, v15, &unk_20C18D700, v20);
}

@end