@interface LibImageLoader
- (id)URLForObject:(id)object;
- (id)imageKeyForObject:(id)object;
- (id)loadImageForObject:(id)object scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction completionHandler:(id)handler;
- (void)cancelLoad:(id)load;
@end

@implementation LibImageLoader

- (id)URLForObject:(id)object
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_42_1();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1E4207264();
  swift_unknownObjectRelease();
  sub_1E39FAFF4();

  __swift_destroy_boxed_opaque_existential_1(v13);
  v8 = sub_1E41FE414();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v3, 1, v8) != 1)
  {
    v9 = sub_1E41FE364();
    v10 = OUTLINED_FUNCTION_16_0();
    v11(v10);
  }

  return v9;
}

- (id)imageKeyForObject:(id)object
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1E4207264();
  swift_unknownObjectRelease();
  sub_1E39FB154(v9);
  v6 = v5;

  __swift_destroy_boxed_opaque_existential_1(v9);
  if (v6)
  {
    OUTLINED_FUNCTION_16_0();
    v7 = sub_1E4205ED4();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)cancelLoad:(id)load
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1E4207264();
  swift_unknownObjectRelease();
  sub_1E39FB554();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (id)loadImageForObject:(id)object scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction completionHandler:(id)handler
{
  OUTLINED_FUNCTION_5_16();
  v8 = v7;
  v10 = _Block_copy(v9);
  swift_unknownObjectRetain();
  v11 = v8;
  sub_1E4207264();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_4_0();
  *(swift_allocObject() + 16) = v10;
  sub_1E39FB7F4();

  __swift_destroy_boxed_opaque_existential_1(v21);
  v12 = v23;
  if (v23)
  {
    v13 = __swift_project_boxed_opaque_existential_1(v22, v23);
    v14 = *(v12 - 8);
    MEMORY[0x1EEE9AC00](v13);
    OUTLINED_FUNCTION_5();
    (*(v14 + 16))(v16 - v15);
    OUTLINED_FUNCTION_13_8();
    v17 = sub_1E4207994();
    v18 = OUTLINED_FUNCTION_13_8();
    v19(v18);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end