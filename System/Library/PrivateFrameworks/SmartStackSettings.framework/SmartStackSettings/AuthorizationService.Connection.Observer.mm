@interface AuthorizationService.Connection.Observer
- (_TtCCC18SmartStackSettings20AuthorizationService10Connection8Observer)init;
- (void)descriptorCollectionChanged:(id)a3;
@end

@implementation AuthorizationService.Connection.Observer

- (_TtCCC18SmartStackSettings20AuthorizationService10Connection8Observer)init
{
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803698F8, &qword_26A09FE08);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v18 - v6);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803698F0, &qword_26A09FE00);
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v18);
  v11 = &v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369900, &qword_26A09FE10);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v18 - v15;
  _s23DescriptorCollectionBoxCMa();
  *v7 = 1;
  (*(v4 + 104))(v7, *MEMORY[0x277D85768], v3);
  sub_26A09E004();
  (*(v4 + 8))(v7, v3);
  (*(v13 + 32))(self + OBJC_IVAR____TtCCC18SmartStackSettings20AuthorizationService10Connection8Observer_descriptorCollectionStream, v16, v12);
  (*(v8 + 32))(self + OBJC_IVAR____TtCCC18SmartStackSettings20AuthorizationService10Connection8Observer_descriptorCollectionStreamContinuation, v11, v18);
  v20.receiver = self;
  v20.super_class = ObjectType;
  return [(AuthorizationService.Connection.Observer *)&v20 init];
}

- (void)descriptorCollectionChanged:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803698E8, ":+");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v12[1] = a3;
  v10 = a3;
  v11 = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803698F0, &qword_26A09FE00);
  sub_26A09E024();

  (*(v6 + 8))(v9, v5);
}

@end