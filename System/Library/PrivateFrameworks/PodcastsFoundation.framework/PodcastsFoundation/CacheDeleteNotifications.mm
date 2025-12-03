@interface CacheDeleteNotifications
- (_TtC18PodcastsFoundation24CacheDeleteNotifications)init;
- (void)cacheDeleteObserver:(id)observer didIdentifyCacheDeletedPath:(id)path deletedAtDate:(id)date;
- (void)cacheDeleteObserverBecameSynchronizedWithFileSystem:(id)system;
@end

@implementation CacheDeleteNotifications

- (void)cacheDeleteObserver:(id)observer didIdentifyCacheDeletedPath:(id)path deletedAtDate:(id)date
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - v10;
  v12 = sub_1D917820C();
  v14 = v13;
  if (date)
  {
    sub_1D9176DFC();
    v15 = sub_1D9176E3C();
    (*(*(v15 - 8) + 56))(v11, 0, 1, v15);
  }

  else
  {
    v16 = sub_1D9176E3C();
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  }

  observerCopy = observer;
  selfCopy = self;
  sub_1D8E61CE8(v12, v14, v11);

  sub_1D8D08A50(v11, &qword_1ECAB75C0, &unk_1D9188A50);
}

- (void)cacheDeleteObserverBecameSynchronizedWithFileSystem:(id)system
{
  v4 = type metadata accessor for CacheDeleteNotifications.CacheDeleteEvent(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4BA0, &qword_1D918C568);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4BA8, &qword_1D918C570);
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B98, &unk_1D918C558);
  sub_1D91788AC();

  (*(v9 + 8))(v12, v8);
}

- (_TtC18PodcastsFoundation24CacheDeleteNotifications)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end