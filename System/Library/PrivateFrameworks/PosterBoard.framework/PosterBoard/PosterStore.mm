@interface PosterStore
- (_TtC11PosterBoard11PosterStore)init;
- (void)dataStoreDidTearDown;
- (void)posterExtensionDataStore:(id)store didAddConfiguration:(id)configuration;
- (void)posterExtensionDataStore:(id)store didUpdateGalleryConfiguration:(id)configuration;
- (void)posterExtensionDataStore:(id)store posterConfiguration:(id)configuration didUpdateAssociatedHomeScreenPosterConfigurationTo:(id)to;
@end

@implementation PosterStore

- (_TtC11PosterBoard11PosterStore)init
{
  swift_getObjectType();
  type metadata accessor for IncludeAllPostersFilter();
  v2 = swift_allocObject();
  v3 = objc_allocWithZone(type metadata accessor for PosterStore());
  v4 = sub_21B629420(v2, v3);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)posterExtensionDataStore:(id)store didUpdateGalleryConfiguration:(id)configuration
{
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  *(v6 + 24) = configuration;
  v7 = swift_allocObject();
  v7[2] = self;
  v7[3] = sub_21B62A904;
  v7[4] = v6;
  v13[4] = sub_21B62ABA8;
  v13[5] = v7;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_21B63863C;
  v13[3] = &block_descriptor_215;
  v8 = _Block_copy(v13);
  selfCopy = self;
  configurationCopy = configuration;
  v11 = selfCopy;
  v12 = configurationCopy;

  BSDispatchMain();

  _Block_release(v8);
}

- (void)posterExtensionDataStore:(id)store didAddConfiguration:(id)configuration
{
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  *(v6 + 24) = configuration;
  v11[4] = sub_21B62AB54;
  v11[5] = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_21B63863C;
  v11[3] = &block_descriptor_205;
  v7 = _Block_copy(v11);
  configurationCopy = configuration;
  selfCopy = self;
  v10 = configurationCopy;

  BSDispatchMain();

  _Block_release(v7);
}

- (void)posterExtensionDataStore:(id)store posterConfiguration:(id)configuration didUpdateAssociatedHomeScreenPosterConfigurationTo:(id)to
{
  v7 = swift_allocObject();
  *(v7 + 16) = self;
  *(v7 + 24) = configuration;
  v12[4] = sub_21B62A8E0;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_21B63863C;
  v12[3] = &block_descriptor_181;
  v8 = _Block_copy(v12);
  configurationCopy = configuration;
  selfCopy = self;
  v11 = configurationCopy;

  BSDispatchMain();

  _Block_release(v8);
}

- (void)dataStoreDidTearDown
{
  v3 = swift_allocObject();
  *(v3 + 16) = self;
  v6[4] = sub_21B62A880;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_21B63863C;
  v6[3] = &block_descriptor_147;
  v4 = _Block_copy(v6);
  selfCopy = self;

  BSDispatchMain();

  _Block_release(v4);
}

@end