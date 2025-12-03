@interface QLThumbnailExtensionMonitor
+ (QLThumbnailExtensionMonitor)shared;
+ (void)setShared:(id)shared;
- (BOOL)canGenerateThumbnailWith:(id)with at:(CGSize)at;
- (id)bestExtensionFor:(id)for matching:(int64_t)matching;
- (id)bestExtensionFor:(id)for shouldUseRestrictedExtension:(BOOL)extension matching:(int64_t)matching;
- (void)queryControllerDidUpdate:(id)update resultDifference:(id)difference;
@end

@implementation QLThumbnailExtensionMonitor

- (id)bestExtensionFor:(id)for matching:(int64_t)matching
{
  forCopy = for;
  selfCopy = self;
  v8 = sub_2615D5EE4(forCopy, matching);

  return v8;
}

+ (QLThumbnailExtensionMonitor)shared
{
  if (qword_281368790 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return qword_2813686F0;
}

+ (void)setShared:(id)shared
{
  v3 = qword_281368790;
  sharedCopy = shared;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_2813686F0;
  qword_2813686F0 = sharedCopy;
}

- (BOOL)canGenerateThumbnailWith:(id)with at:(CGSize)at
{
  height = at.height;
  width = at.width;
  v8 = sub_26162B4FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  withCopy = with;
  selfCopy = self;
  sub_26162B47C();

  v15 = COERCE_DOUBLE(sub_26161AEB0(v12));
  LOBYTE(withCopy) = v16;

  (*(v9 + 8))(v12, v8);
  if (withCopy)
  {
    return 0;
  }

  if (width == 0.0 && height == 0.0)
  {
    return 1;
  }

  if (width < v15)
  {
    return 0;
  }

  return height >= v15;
}

- (id)bestExtensionFor:(id)for shouldUseRestrictedExtension:(BOOL)extension matching:(int64_t)matching
{
  matchingCopy = matching;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26162B4FC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  forCopy = for;
  selfCopy = self;
  sub_26162B47C();

  (*(v15 + 16))(v13, v18, v14);
  v13[*(v10 + 28)] = extension;
  *&v13[*(v10 + 32)] = matchingCopy;
  v21 = *(&selfCopy->super.isa + OBJC_IVAR___QLThumbnailExtensionMonitor_queue);
  v27 = selfCopy;
  v28 = v13;
  v29 = ObjectType;
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB52C0, &qword_261630EB0);
  sub_26162BA6C();

  (*(v15 + 8))(v18, v14);
  v23 = v30;
  sub_2615D69B0(v13);

  return v23;
}

- (void)queryControllerDidUpdate:(id)update resultDifference:(id)difference
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB53E0, &qword_2616311A8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_261618454(0, &qword_281368608, 0x277CC5DD8);
  sub_26162BC2C();
  updateCopy = update;
  selfCopy = self;
  sub_26161B49C(updateCopy);

  (*(v7 + 8))(v10, v6);
}

@end