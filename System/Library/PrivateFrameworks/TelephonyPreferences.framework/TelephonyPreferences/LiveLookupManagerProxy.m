@interface LiveLookupManagerProxy
+ (NSString)LLExtensionsChangedNotification;
- (LiveLookupManagerProxy)init;
- (id)extensionName:(id)a3;
- (id)extensions;
- (void)setEnabled:(BOOL)a3 forExtension:(_TtC14IdentityLookup21LiveLookupDBExtension *)a4 completion:(id)a5;
- (void)setWithPrioritizedExtensionIdentifiers:(id)a3;
@end

@implementation LiveLookupManagerProxy

+ (NSString)LLExtensionsChangedNotification
{
  if (qword_27CD9AEF0 != -1)
  {
    swift_once();
  }

  v3 = qword_27CD9AEF8;

  return v3;
}

- (id)extensions
{
  v3 = OBJC_IVAR___LiveLookupManagerProxy_manager;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  v5 = self;

  sub_21B91E42C();

  sub_21B91E41C();
  v6 = sub_21B91E74C();

  return v6;
}

- (id)extensionName:(id)a3
{
  v3 = [a3 identifier];

  return v3;
}

- (void)setEnabled:(BOOL)a3 forExtension:(_TtC14IdentityLookup21LiveLookupDBExtension *)a4 completion:(id)a5
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9AC98, &qword_21B923378) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_21B91E78C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_21B923388;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_21B923398;
  v16[5] = v15;
  v17 = a4;
  v18 = self;
  sub_21B916854(0, 0, v11, &unk_21B9233A8, v16);
}

- (void)setWithPrioritizedExtensionIdentifiers:(id)a3
{
  sub_21B91E75C();
  v4 = OBJC_IVAR___LiveLookupManagerProxy_manager;
  swift_beginAccess();
  v5 = *(&self->super.isa + v4);
  v6 = self;

  sub_21B91E43C();
}

- (LiveLookupManagerProxy)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___LiveLookupManagerProxy_manager;
  sub_21B91E45C();
  *(&self->super.isa + v4) = sub_21B91E44C();
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(LiveLookupManagerProxy *)&v6 init];
}

@end