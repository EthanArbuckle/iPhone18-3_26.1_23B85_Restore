@interface PBFDisplayTransformer
- (PBFDisplayTransformer)init;
- (id)transformDisplayConfiguration:(id)a3;
@end

@implementation PBFDisplayTransformer

- (PBFDisplayTransformer)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___PBFDisplayTransformer_mainDisplayTransformer) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(PBFDisplayTransformer *)&v5 init];
}

- (id)transformDisplayConfiguration:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92C10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B6D81D0;
  *(inited + 32) = a3;
  v5 = a3;
  sub_21B6463D8(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_21B65DF38();
  sub_21B65DF84();
  v6 = sub_21B6C8F84();

  return v6;
}

@end