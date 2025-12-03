@interface PGGraphPetRelationshipDonator
- (PGGraphPetRelationshipDonator)init;
- (void)donateWithPetNodes:(NSArray *)nodes isRebuild:(BOOL)rebuild completionHandler:(id)handler;
@end

@implementation PGGraphPetRelationshipDonator

- (void)donateWithPetNodes:(NSArray *)nodes isRebuild:(BOOL)rebuild completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 16) = nodes;
  *(v14 + 24) = rebuild;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_22F741320();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22F783A68;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22F783A70;
  v17[5] = v16;
  nodesCopy = nodes;
  selfCopy = self;
  sub_22F33C54C(0, 0, v12, &unk_22F784250, v17);
}

- (PGGraphPetRelationshipDonator)init
{
  ObjectType = swift_getObjectType();
  v4 = (&self->super.isa + OBJC_IVAR___PGGraphPetRelationshipDonator_sourceIdentifier);
  *v4 = 0xD000000000000018;
  v4[1] = 0x800000022F799310;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(PGGraphPetRelationshipDonator *)&v6 init];
}

@end