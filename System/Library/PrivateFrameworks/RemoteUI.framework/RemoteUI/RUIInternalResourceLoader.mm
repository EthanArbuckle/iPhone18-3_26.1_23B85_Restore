@interface RUIInternalResourceLoader
+ (RUIInternalResourceLoader)shared;
- (void)loadWithCompletionHandler:(id)a3;
@end

@implementation RUIInternalResourceLoader

- (void)loadWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9D6B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_21BA8801C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_21BA953C8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_21BA953D8;
  v12[5] = v11;
  v13 = self;
  sub_21B9DA5B0(0, 0, v7, &unk_21BA953E8, v12);
}

+ (RUIInternalResourceLoader)shared
{
  if (qword_27CDA4D50 != -1)
  {
    swift_once();
  }

  v3 = qword_27CDA4D58;

  return v3;
}

@end