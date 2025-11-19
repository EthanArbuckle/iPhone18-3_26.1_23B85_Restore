@interface PGSearchEntityAccumulator
- (BOOL)accumulateHomeAndWorkWithHomeAndWorkKeywords:(id)a3 forMomentUUID:(id)a4 dateInterval:(id)a5 error:(id *)a6;
- (BOOL)accumulateMeanings:(id)a3 forMomentUUID:(id)a4 error:(id *)a5;
- (BOOL)accumulatePersonAndPetRelationshipsFromGraph:(id)a3 progressReporter:(id)a4 error:(id *)a5;
- (BOOL)accumulatePublicEventsInPublicEventKeywords:(id)a3 forMomentUUID:(id)a4 dateInterval:(id)a5 error:(id *)a6;
- (BOOL)accumulateTrip:(id)a3 forMomentUUID:(id)a4 error:(id *)a5;
- (NSDictionary)relatedPersonAndPetDescriptorByRelatedPersonIdentifier;
- (NSDictionary)searchEntitiesByMomentUUID;
- (PGSearchEntityAccumulator)init;
- (PGSearchEntityAccumulator)initWithSynonymsByCategoryMask:(id)a3 graphLocaleIdentifier:(id)a4;
@end

@implementation PGSearchEntityAccumulator

- (NSDictionary)searchEntitiesByMomentUUID
{
  v3 = OBJC_IVAR___PGSearchEntityAccumulator_internalSearchEntitiesByMomentUUID;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB32A8, &unk_22F7868C0);
  v5 = sub_22F740C80();

  return v5;
}

- (NSDictionary)relatedPersonAndPetDescriptorByRelatedPersonIdentifier
{
  v3 = OBJC_IVAR___PGSearchEntityAccumulator_internalRelatedPersonAndPetDescriptorByPersonIdentifier;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  type metadata accessor for RelatedPersonEntityDescriptor();

  v5 = sub_22F740C80();

  return v5;
}

- (PGSearchEntityAccumulator)initWithSynonymsByCategoryMask:(id)a3 graphLocaleIdentifier:(id)a4
{
  ObjectType = swift_getObjectType();
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1070, &unk_22F7714B0);
  sub_22F11FA28(&qword_2810A8EC8, &qword_2810A8ED0, 0x277CCABB0);
  v6 = sub_22F740CA0();
  v7 = sub_22F740E20();
  v9 = v8;
  v10 = OBJC_IVAR___PGSearchEntityAccumulator_internalSearchEntitiesByMomentUUID;
  v11 = MEMORY[0x277D84F90];
  *(&self->super.isa + v10) = sub_22F14FCDC(MEMORY[0x277D84F90]);
  *(&self->super.isa + OBJC_IVAR___PGSearchEntityAccumulator_internalMePersonEntity) = 0;
  v12 = OBJC_IVAR___PGSearchEntityAccumulator_internalRelatedPersonAndPetDescriptorByPersonIdentifier;
  *(&self->super.isa + v12) = sub_22F14FCF0(v11);
  v13 = OBJC_IVAR___PGSearchEntityAccumulator_logger;
  if (qword_2810A9400 != -1)
  {
    swift_once();
  }

  v14 = sub_22F740B90();
  v15 = __swift_project_value_buffer(v14, qword_2810B4CE0);
  (*(*(v14 - 8) + 16))(self + v13, v15, v14);
  *(&self->super.isa + OBJC_IVAR___PGSearchEntityAccumulator_synonymsByCategoryMask) = v6;
  v16 = (self + OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier);
  *v16 = v7;
  v16[1] = v9;
  v18.receiver = self;
  v18.super_class = ObjectType;
  return [(PGSearchEntityAccumulator *)&v18 init];
}

- (PGSearchEntityAccumulator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)accumulatePublicEventsInPublicEventKeywords:(id)a3 forMomentUUID:(id)a4 dateInterval:(id)a5 error:(id *)a6
{
  v17[1] = a6;
  v18 = sub_22F73F090();
  v7 = *(v18 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v18);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F11FA28(&qword_2810A8EC8, &qword_2810A8ED0, 0x277CCABB0);
  v11 = sub_22F740CA0();
  v12 = sub_22F740E20();
  v14 = v13;
  sub_22F73F020();
  v15 = self;
  SearchEntityAccumulator.accumulatePublicEvents(in:for:dateInterval:)(v11, v12, v14, v10);
  (*(v7 + 8))(v10, v18);

  return 1;
}

- (BOOL)accumulateTrip:(id)a3 forMomentUUID:(id)a4 error:(id *)a5
{
  v7 = sub_22F740E20();
  v9 = v8;
  v10 = sub_22F740E20();
  v12 = v11;
  v13 = self;
  v14._countAndFlagsBits = v7;
  v14._object = v9;
  v15._countAndFlagsBits = v10;
  v15._object = v12;
  SearchEntityAccumulator.accumulateTrip(trip:for:)(v14, v15);

  if (v16)
  {
    if (a5)
    {
      v17 = sub_22F73F360();

      v18 = v17;
      *a5 = v17;
    }

    else
    {
    }
  }

  return v16 == 0;
}

- (BOOL)accumulateMeanings:(id)a3 forMomentUUID:(id)a4 error:(id *)a5
{
  v7 = sub_22F740CA0();
  v8 = sub_22F740E20();
  v10 = v9;
  v11 = self;
  v12._countAndFlagsBits = v8;
  v12._object = v10;
  SearchEntityAccumulator.accumulateMeanings(meanings:for:)(v7, v12);

  if (v13)
  {
    if (a5)
    {
      v14 = sub_22F73F360();

      v15 = v14;
      *a5 = v14;
    }

    else
    {
    }
  }

  return v13 == 0;
}

- (BOOL)accumulateHomeAndWorkWithHomeAndWorkKeywords:(id)a3 forMomentUUID:(id)a4 dateInterval:(id)a5 error:(id *)a6
{
  v18 = a6;
  v7 = sub_22F73F090();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  sub_22F11FA28(&qword_2810A8EC8, &qword_2810A8ED0, 0x277CCABB0);
  v12 = sub_22F740CA0();
  v13 = sub_22F740E20();
  v15 = v14;
  sub_22F73F020();
  v16 = self;
  SearchEntityAccumulator.accumulateHomeAndWork(with:for:dateInterval:)(v12, v13, v15, v11);
  (*(v8 + 8))(v11, v7);

  return 1;
}

- (BOOL)accumulatePersonAndPetRelationshipsFromGraph:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  SearchEntityAccumulator.accumulatePersonAndPetRelationships(from:progressReporter:)(v7);

  return 1;
}

@end