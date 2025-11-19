uint64_t closure #1 in SportsPersonalizationExperiencesResolver.personalizedSelection(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
  v7 = *(v6 - 8);
  v43 = v6;
  v44 = v7;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v41 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v42 = v35 - v13;
  v14 = type metadata accessor for SportsPersonalizationEntity();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppDataProviding(a1, v46);
  v20 = v47;
  v21 = v48;
  v22 = __swift_project_boxed_opaque_existential_1(v46, v47);
  v23 = *(a2 + 16);
  v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v25 = a2;
    v35[1] = v22;
    v36 = v21;
    v37 = v20;
    v38 = a3;
    v49 = MEMORY[0x277D84F90];
    v45 = v23;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
    v26 = v49;
    v27 = v25 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    v39 = *(v44 + 72);
    v40 = v15;
    do
    {
      v28 = v42;
      outlined init with copy of MediaUserStateCenter?(v27, v42, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
      v29 = v41;
      outlined init with take of PommesSearchReason?(v28, v41, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
      v30 = *(v43 + 48);
      v44 = *(v15 + 32);
      (v44)(v19, v29, v14);
      v31 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
      (*(*(v31 - 8) + 8))(v29 + v30, v31);
      v49 = v26;
      v33 = *(v26 + 16);
      v32 = *(v26 + 24);
      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1);
        v26 = v49;
      }

      *(v26 + 16) = v33 + 1;
      (v44)(v26 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v33, v19, v14);
      v27 += v39;
      --v45;
    }

    while (v45);
    v24 = v26;
    v21 = v36;
    v20 = v37;
  }

  (*(v21 + 8))(v24, v20, v21);

  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t closure #2 in SportsPersonalizationExperiencesResolver.personalizedSelection(from:with:)(uint64_t a1, uint64_t a2)
{
  v27[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v27 - v12;
  v14 = type metadata accessor for SportsItem();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of MediaUserStateCenter?(a1, v13, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
  v20 = *(v9 + 56);
  SportsPersonalizationEntity.sportsItem.getter();
  if ((*(v15 + 48))(v7, 1, v14) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v7, &_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
    v21 = type metadata accessor for SportsPersonalizationEntity();
    (*(*(v21 - 8) + 8))(v13, v21);
    v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
    (*(*(v22 - 8) + 8))(&v13[v20], v22);
    v23 = 0;
  }

  else
  {
    (*(v15 + 32))(v19, v7, v14);
    v24 = type metadata accessor for SportsPersonalizationEntity();
    (*(*(v24 - 8) + 8))(v13, v24);
    v25 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
    (*(*(v25 - 8) + 8))(&v13[v20], v25);
    v23 = static SportsItem.partiallyEqual(lhs:rhs:)();
    (*(v15 + 8))(v19, v14);
  }

  return v23 & 1;
}

uint64_t closure #4 in SportsPersonalizationExperiencesResolver.personalizedSelection(from:with:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v26 - v12;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = (&v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v19, a1, v14);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.getter();
  v21 = v20;
  v22 = type metadata accessor for ClientExperienceSignals();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext();
  (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  v24 = specialized ExperiencesResolver.extractExperiences(from:score:with:with:)(v19, v13, v8, v21);
  outlined destroy of MediaUserStateCenter?(v8, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  outlined destroy of MediaUserStateCenter?(v13, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  result = (*(v15 + 8))(v19, v14);
  *a2 = v24;
  return result;
}

uint64_t specialized closure #1 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(uint64_t a1@<X2>, uint64_t (*a2)(char *, uint64_t, char *, double)@<X3>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  v20 = a2(v18, a1, v12, a4);
  outlined destroy of MediaUserStateCenter?(v12, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  result = (*(v14 + 8))(v18, v13);
  *a3 = v20;
  return result;
}

uint64_t specialized closure #2 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void (*a3)(unint64_t *__return_ptr, uint64_t)@<X3>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v10 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.alternateSiriInstructions.getter();
  v13[2] = a1;
  *&v13[3] = a5;
  v13[4] = a2;
  v11 = specialized Sequence.flatMap<A>(_:)(a3, v13, v10);

  *a4 = v11;
  return result;
}

uint64_t specialized closure #1 in closure #2 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t, uint64_t, char *, double)@<X3>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v18 - v13;
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = a3(a1, a2, v14, a5);
  result = outlined destroy of MediaUserStateCenter?(v14, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  *a4 = v16;
  return result;
}

uint64_t specialized closure #1 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = (&v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v18 = specialized ExperiencesResolver.extractExperiences(from:score:with:with:)(v16, a1, a3);
  outlined destroy of MediaUserStateCenter?(v10, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  result = (*(v12 + 8))(v16, v11);
  *a2 = v18;
  return result;
}

uint64_t specialized closure #2 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v6 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.alternateSiriInstructions.getter();
  *&v9[3] = a3;
  v9[4] = a1;
  v7 = specialized Sequence.flatMap<A>(_:)(partial apply for specialized closure #1 in closure #2 in ExperiencesResolver.defaultExperiences(from:with:), v9, v6);

  *a2 = v7;
  return result;
}

uint64_t specialized closure #1 in closure #2 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v16 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = specialized ExperiencesResolver.extractExperiences(from:score:with:with:)(a1, a2, a4);
  result = outlined destroy of MediaUserStateCenter?(v12, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  *a3 = v14;
  return result;
}

uint64_t specialized closure #1 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = (&v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *a1;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  v21 = specialized ExperiencesResolver.extractExperiences(from:score:with:with:)(v18, a2, a4, v12, v19);
  outlined destroy of MediaUserStateCenter?(v12, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  result = (*(v14 + 8))(v18, v13);
  *a3 = v21;
  return result;
}

uint64_t specialized closure #2 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v11 = *a1;
  v7 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.alternateSiriInstructions.getter();
  v10[2] = &v11;
  *&v10[3] = a4;
  v10[4] = a2;
  v8 = specialized Sequence.flatMap<A>(_:)(partial apply for specialized closure #1 in closure #2 in ExperiencesResolver.defaultExperiences(from:with:), v10, v7);

  *a3 = v8;
  return result;
}

uint64_t specialized closure #1 in closure #2 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v19 - v13;
  v15 = *a2;
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = specialized ExperiencesResolver.extractExperiences(from:score:with:with:)(a1, a3, a5, v14, v15);
  result = outlined destroy of MediaUserStateCenter?(v14, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  *a4 = v17;
  return result;
}

uint64_t partial apply for closure #1 in closure #2 in SportsPersonalizationExperiencesResolver.buildExperiences(from:with:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[2];
  result = SportsPersonalizationExperiencesResolver.personalizedSelection(from:with:)(v3, v4);
  *a1 = result;
  return result;
}

void *specialized static SportsPersonalizationExperiencesResolver.makeEntityInstructionMapping(alternatives:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference20PersonalizationLevelOSgMd, &_s13SiriInference20PersonalizationLevelOSgMR);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v104 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v103 = &v96 - v8;
  v114 = type metadata accessor for SportsItem();
  v9 = *(v114 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v114, v11);
  v119 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8, v15);
  v102 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v96 - v19;
  v21 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
  v28 = *(*(v27 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v27 - 8, v29);
  v32 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v96 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityVSgMd, &_s13SiriInference27SportsPersonalizationEntityVSgMR);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8, v38);
  v131 = &v96 - v39;
  v129 = type metadata accessor for SportsPersonalizationEntity();
  v40 = *(v129 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v129, v42);
  v113 = &v96 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
  v111 = *(v112 - 8);
  v44 = *(v111 + 64);
  v46 = MEMORY[0x28223BE20](v112, v45);
  v110 = &v96 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v48);
  v128 = &v96 - v49;
  v137 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v50 = *(*(v137 - 8) + 64);
  MEMORY[0x28223BE20](v137, v51);
  v136 = &v96 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = *(a1 + 16);
  if (v130)
  {
    v101 = v20;
    v132 = v35;
    v54 = v22;
    v55 = 0;
    v57 = *(v52 + 16);
    v56 = v52 + 16;
    v126 = a1 + ((*(v56 + 64) + 32) & ~*(v56 + 64));
    v127 = v57;
    v125 = *(v56 + 56);
    v117 = v54 + 16;
    v123 = (v54 + 48);
    v124 = (v54 + 56);
    v109 = (v54 + 32);
    v96 = (v9 + 32);
    v97 = (v9 + 56);
    v105 = (v54 + 8);
    v120 = (v40 + 48);
    v121 = (v40 + 56);
    v108 = (v40 + 32);
    v107 = (v56 + 16);
    v58 = MEMORY[0x277D84F90];
    v106 = (v56 - 8);
    v100 = v21;
    v118 = v54;
    v99 = v26;
    v98 = v32;
    v122 = v56;
    while (1)
    {
      v135 = v58;
      v127(v136, v126 + v125 * v55, v137);
      v59 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
      if (*(v59 + 16))
      {
        v60 = v132;
        (*(v118 + 16))(v132, v59 + ((*(v118 + 80) + 32) & ~*(v118 + 80)), v21);
        v61 = 0;
      }

      else
      {
        v61 = 1;
        v60 = v132;
      }

      v62 = 1;
      (*v124)(v60, v61, 1, v21);
      outlined init with copy of MediaUserStateCenter?(v60, v32, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
      if ((*v123)(v32, 1, v21) == 1)
      {
        goto LABEL_74;
      }

      (*v109)(v26, v32, v21);
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      v64 = __swift_project_value_buffer(v63, static Logger.pommes);
      v65 = specialized static UsoEntity_common_SportsItem.from(resultEntity:logger:)(v26, v64);
      if (v65)
      {
        break;
      }

LABEL_73:
      (*v105)(v26, v21);
      v60 = v132;
LABEL_74:
      outlined destroy of MediaUserStateCenter?(v60, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
      v81 = v131;
      v82 = v129;
      (*v121)(v131, v62, 1, v129);
      if ((*v120)(v81, 1, v82) == 1)
      {
        (*v106)(v136, v137);
        outlined destroy of MediaUserStateCenter?(v81, &_s13SiriInference27SportsPersonalizationEntityVSgMd, &_s13SiriInference27SportsPersonalizationEntityVSgMR);
        v58 = v135;
      }

      else
      {
        v83 = v32;
        v84 = v21;
        v85 = *v108;
        v86 = v113;
        (*v108)(v113, v81, v82);
        v87 = *(v112 + 48);
        v88 = v110;
        v85(v110, v86, v82);
        (*v107)(v88 + v87, v136, v137);
        outlined init with take of PommesSearchReason?(v88, v128, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
        v58 = v135;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58[2] + 1, 1, v58);
        }

        v90 = v58[2];
        v89 = v58[3];
        if (v90 >= v89 >> 1)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v89 > 1, v90 + 1, 1, v58);
        }

        v21 = v84;
        v32 = v83;
        v58[2] = v90 + 1;
        outlined init with take of PommesSearchReason?(v128, v58 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v90, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
      }

      if (++v55 == v130)
      {
        goto LABEL_81;
      }
    }

    v115 = v65;
    v66 = dispatch thunk of UsoEntity_common_SportsItem.associatedSportsItems.getter();
    v116 = v55;
    if (!v66)
    {
      v78 = 1;
      v79 = v101;
LABEL_72:
      (*v97)(v79, v78, 1, v114);
      v80 = v103;
      static PersonalizationLevel.from(uso:)(v103);
      outlined init with copy of MediaUserStateCenter?(v79, v102, &_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
      outlined init with copy of MediaUserStateCenter?(v80, v104, &_s13SiriInference20PersonalizationLevelOSgMd, &_s13SiriInference20PersonalizationLevelOSgMR);
      SportsPersonalizationEntity.init(sportsItem:personalizationLevel:)();

      outlined destroy of MediaUserStateCenter?(v80, &_s13SiriInference20PersonalizationLevelOSgMd, &_s13SiriInference20PersonalizationLevelOSgMR);
      outlined destroy of MediaUserStateCenter?(v79, &_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
      v62 = 0;
      v32 = v98;
      v55 = v116;
      v21 = v100;
      v26 = v99;
      goto LABEL_73;
    }

    v67 = v66;
    SportsItem.init(sport:league:team:athlete:sportQId:leagueQId:teamQId:athleteQId:)();
    if (!(v67 >> 62))
    {
      v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v68)
      {
        goto LABEL_15;
      }

      goto LABEL_71;
    }

    v68 = __CocoaSet.count.getter();
    if (!v68)
    {
LABEL_71:

      v79 = v101;
      (*v96)(v101, v119, v114);
      v78 = 0;
      goto LABEL_72;
    }

LABEL_15:
    v69 = 0;
    v70 = v67 & 0xC000000000000001;
    v133 = v67 & 0xC000000000000001;
    v134 = v68;
    while (1)
    {
      if (v70)
      {
        MEMORY[0x223DDFF80](v69, v67);
        v72 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          goto LABEL_87;
        }
      }

      else
      {
        if (v69 >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_88;
        }

        v71 = *(v67 + 8 * v69 + 32);

        v72 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          swift_once();
LABEL_83:
          v91 = type metadata accessor for Logger();
          __swift_project_value_buffer(v91, static Logger.pommes);
          v92 = Logger.logObject.getter();
          v93 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            *v94 = 0;
            _os_log_impl(&dword_2232BB000, v92, v93, "One or more alternative instruction did not have a single sports entity. Will ignore alternatives...", v94, 2u);
            MEMORY[0x223DE0F80](v94, -1, -1);
          }

          return 0;
        }
      }

      dispatch thunk of CodeGenListEntry.entry.getter();
      if (v138)
      {
        if (!dispatch thunk of UsoEntity_common_SportsItem.type.getter())
        {
          dispatch thunk of UsoEntity_common_SportsItem.name.getter();
LABEL_32:

          goto LABEL_17;
        }

        v73 = dispatch thunk of UsoEntity_common_SportsItemType.name.getter();
        v75 = v74;

        dispatch thunk of UsoEntity_common_SportsItem.name.getter();
        if (!v75)
        {
          v70 = v133;
          v68 = v134;
          goto LABEL_32;
        }

        if (v76)
        {
          if (v73 == 0x74726F7073 && v75 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            SportsItem.sport.setter();
          }

          else if (v73 == 0x69715F74726F7073 && v75 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            SportsItem.sportQId.setter();
          }

          else if (v73 == 0x65756761656CLL && v75 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            SportsItem.league.setter();
          }

          else if (v73 == 0x715F65756761656CLL && v75 == 0xEA00000000006469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            SportsItem.leagueQId.setter();
          }

          else if (v73 == 1835099508 && v75 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            SportsItem.team.setter();
          }

          else if (v73 == 0x6469715F6D616574 && v75 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            SportsItem.teamQId.setter();
          }

          else if (v73 == 0x6574656C687461 && v75 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            SportsItem.athlete.setter();
          }

          else
          {
            if (v73 == 0x5F6574656C687461 && v75 == 0xEB00000000646971)
            {

LABEL_67:
              v70 = v133;

              SportsItem.athleteQId.setter();

              v68 = v134;
              goto LABEL_17;
            }

            v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v77)
            {

              goto LABEL_67;
            }
          }
        }

        else
        {
        }

        v70 = v133;
        v68 = v134;
      }

      else
      {
      }

LABEL_17:
      ++v69;
      if (v72 == v68)
      {
        goto LABEL_71;
      }
    }
  }

  v58 = MEMORY[0x277D84F90];
LABEL_81:
  if (v58[2] != v130)
  {

    if (one-time initialization token for pommes != -1)
    {
      goto LABEL_89;
    }

    goto LABEL_83;
  }

  return v58;
}

uint64_t specialized static SportsPersonalizationExperiencesResolver.isSupportedPersonalizationInstruction(_:)(uint64_t a1)
{
  v47 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  v51 = *(v47 - 8);
  v2 = *(v51 + 64);
  MEMORY[0x28223BE20](v47, v3);
  v46 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CatDialogComponent();
  v49 = *(v53 - 8);
  v5 = *(v49 + 64);
  MEMORY[0x28223BE20](v53, v6);
  v52 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v9 = *(v8 - 8);
  v55 = v8;
  v56 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v44 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v45 = *(v50 - 8);
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20](v50, v14);
  v43 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  result = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
  v23 = result;
  v24 = 0;
  v25 = *(result + 16);
  v26 = (v17 + 8);
  do
  {
    v48 = v25 != v24;
    if (v25 == v24)
    {
      break;
    }

    if (v24 >= *(v23 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    (*(v17 + 16))(v21, v23 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v24, v16);
    if (Apple_Parsec_Siri_Context_ResultEntity.name.getter() == 0x6769626D61736944 && v28 == 0xEE006E6F69746175)
    {

      (*v26)(v21, v16);
      break;
    }

    ++v24;
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v26)(v21, v16);
  }

  while ((v27 & 1) == 0);

  v29 = v43;
  v30 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverDrivenExperience.getter();
  v31 = MEMORY[0x223DDB9C0](v30);
  (*(v45 + 8))(v29, v50);
  result = v31;
  v32 = 0;
  v54 = *(v31 + 16);
  v33 = v55;
  v49 += 8;
  v50 = v56 + 16;
  v45 = v51 + 8;
  v51 = v56 + 8;
  v34 = v44;
  while (1)
  {
    if (v54 == v32)
    {

      return v48;
    }

    if (v32 >= *(result + 16))
    {
      goto LABEL_19;
    }

    v35 = result;
    (*(v56 + 16))(v34, result + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v32, v33);
    v36 = v52;
    v37 = Apple_Parsec_Siri_V2alpha_ExperienceComponent.catDialog.getter();
    MEMORY[0x223DDB2A0](v37);
    (*v49)(v36, v53);
    v38 = String.lowercased()();

    v58 = v38;
    strcpy(v57, "disambiguation");
    v57[15] = -18;
    lazy protocol witness table accessor for type String and conformance String();
    v39 = StringProtocol.contains<A>(_:)();

    if (v39)
    {
      break;
    }

    ++v32;
    v40 = v46;
    Apple_Parsec_Siri_V2alpha_ExperienceComponent.renderedDialog.getter();
    Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.catID.getter();
    (*v45)(v40, v47);
    v41 = String.lowercased()();

    v58 = v41;
    strcpy(v57, "disambiguation");
    v57[15] = -18;
    v42 = StringProtocol.contains<A>(_:)();
    v33 = v55;

    (*v51)(v34, v33);
    result = v35;
    if (v42)
    {

      return 1;
    }
  }

  (*v51)(v34, v33);
  return 1;
}

uint64_t getEnumTagSinglePayload for DisambiguatedSportsExperiencesResult(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DisambiguatedSportsExperiencesResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for DisambiguatedSportsExperiencesResult(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for DisambiguatedSportsExperiencesResult(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SportsPersonalizationExperiencesResolver(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SportsPersonalizationExperiencesResolver(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  return specialized closure #1 in ExperiencesResolver.defaultExperiences(from:with:)(*(v1 + 16), *(v1 + 40), a1, *(v1 + 32));
}

{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return specialized closure #1 in ExperiencesResolver.defaultExperiences(from:with:)(*(v1 + 40), a1, *(v1 + 32));
}

{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return specialized closure #1 in ExperiencesResolver.defaultExperiences(from:with:)(*(v1 + 40), specialized ExperiencesResolver.extractExperiences(from:score:with:with:), a1, *(v1 + 32));
}

{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return specialized closure #1 in ExperiencesResolver.defaultExperiences(from:with:)(*(v1 + 40), specialized ExperiencesResolver.extractExperiences(from:score:with:with:), a1, *(v1 + 32));
}

uint64_t partial apply for specialized closure #2 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  return specialized closure #2 in ExperiencesResolver.defaultExperiences(from:with:)(*(v1 + 24), *(v1 + 40), a1, *(v1 + 32));
}

{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return specialized closure #2 in ExperiencesResolver.defaultExperiences(from:with:)(*(v1 + 40), a1, *(v1 + 32));
}

{
  v2 = *(v1 + 16);
  return specialized closure #2 in ExperiencesResolver.defaultExperiences(from:with:)(*(v1 + 24), *(v1 + 40), partial apply for specialized closure #1 in closure #2 in ExperiencesResolver.defaultExperiences(from:with:), a1, *(v1 + 32));
}

{
  v2 = *(v1 + 16);
  return specialized closure #2 in ExperiencesResolver.defaultExperiences(from:with:)(*(v1 + 24), *(v1 + 40), partial apply for specialized closure #1 in closure #2 in ExperiencesResolver.defaultExperiences(from:with:), a1, *(v1 + 32));
}

unint64_t lazy protocol witness table accessor for type [Experience] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Experience] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Experience] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Experience] and conformance [A]);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in closure #2 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  return specialized closure #1 in closure #2 in ExperiencesResolver.defaultExperiences(from:with:)(a1, *(v2 + 32), specialized ExperiencesResolver.extractExperiences(from:score:with:with:), a2, *(v2 + 24));
}

{
  v3 = *(v2 + 16);
  return specialized closure #1 in closure #2 in ExperiencesResolver.defaultExperiences(from:with:)(a1, *(v2 + 32), specialized ExperiencesResolver.extractExperiences(from:score:with:with:), a2, *(v2 + 24));
}

uint64_t outlined copy of SportsProperty(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 7u)
  {
  }

  return result;
}

uint64_t outlined consume of SportsProperty?(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return outlined consume of SportsProperty(a1, a2, a3);
  }

  return a1;
}

uint64_t outlined consume of SportsProperty(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 7u)
  {
  }

  return result;
}

uint64_t partial apply for closure #4 in SportsPersonalizationExperiencesResolver.personalizedSelection(from:with:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  return closure #4 in SportsPersonalizationExperiencesResolver.personalizedSelection(from:with:)(v1[3], a1);
}

uint64_t outlined copy of SportsPersonalizationSelection<DisambiguatedSportsExperiencesResult>(uint64_t result)
{
  if ((result - 1) >= 2)
  {
  }

  return result;
}

uint64_t outlined consume of SportsPersonalizationSelection<DisambiguatedSportsExperiencesResult>(uint64_t result)
{
  if ((result - 1) >= 2)
  {
  }

  return result;
}

uint64_t Siri_Nlu_External_UserParse.firstUserDialogAct.getter@<X0>(char *a1@<X8>)
{
  v42 = a1;
  v2 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v38 = &v37 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v37 = &v37 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v37 - v17;
  v20 = MEMORY[0x28223BE20](v16, v19);
  v40 = &v37 - v21;
  MEMORY[0x28223BE20](v20, v22);
  v39 = &v37 - v23;
  v41 = v1;
  result = Siri_Nlu_External_Span.matcherNames.getter();
  v25 = result;
  v26 = *(result + 16);
  if (v26)
  {
    v27 = 0;
    while (1)
    {
      if (v27 >= *(v25 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      (*(v3 + 16))(v18, v25 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v27, v2);
      if (Siri_Nlu_External_UserDialogAct.hasAccepted.getter())
      {
        break;
      }

      ++v27;
      result = (*(v3 + 8))(v18, v2);
      if (v26 == v27)
      {
        goto LABEL_6;
      }
    }

    v33 = *(v3 + 32);
    v34 = v40;
    v33(v40, v18, v2);
    v35 = v39;
LABEL_15:
    v33(v35, v34, v2);
    v32 = v42;
    v33(v42, v35, v2);
    goto LABEL_16;
  }

LABEL_6:

  result = Siri_Nlu_External_Span.matcherNames.getter();
  v28 = result;
  v29 = *(result + 16);
  if (!v29)
  {
LABEL_11:

    v31 = Siri_Nlu_External_Span.matcherNames.getter();
    if (!*(v31 + 16))
    {

      v36 = 1;
      v32 = v42;
      return (*(v3 + 56))(v32, v36, 1, v2);
    }

    v32 = v42;
    (*(v3 + 16))(v42, v31 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

LABEL_16:
    v36 = 0;
    return (*(v3 + 56))(v32, v36, 1, v2);
  }

  v30 = 0;
  while (v30 < *(v28 + 16))
  {
    (*(v3 + 16))(v8, v28 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v30, v2);
    if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
    {

      v33 = *(v3 + 32);
      v34 = v38;
      v33(v38, v8, v2);
      v35 = v37;
      goto LABEL_15;
    }

    ++v30;
    result = (*(v3 + 8))(v8, v2);
    if (v29 == v30)
    {
      goto LABEL_11;
    }
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t LazySequenceProtocol<>.keepSalientNLv4Parses()(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v44[-v6];
  v8 = type metadata accessor for Siri_Nlu_External_UserParse();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v51 = &v44[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v44[-v16];
  v19 = MEMORY[0x28223BE20](v15, v18);
  v52 = &v44[-v20];
  v22 = MEMORY[0x28223BE20](v19, v21);
  v53 = &v44[-v23];
  v24 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v22, v25);
  (*(v27 + 16))(&v44[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)], v1, a1);
  result = LazySequenceProtocol.filter(_:)();
  v29 = v61;
  v59 = v63;
  v30 = *(v61 + 16);
  if (v30)
  {
    v50 = v7;
    v31 = 0;
    v57 = v9 + 16;
    v58 = v62;
    v32 = (v9 + 8);
    v55 = (v9 + 32);
    v56 = v30;
    v48 = v30 - 1;
    v54 = MEMORY[0x277D84F90];
    while (2)
    {
      v33 = v31;
      while (1)
      {
        if (v33 >= *(v29 + 16))
        {
          __break(1u);
          return result;
        }

        v34 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v35 = *(v9 + 72);
        (*(v9 + 16))(v17, v29 + v34 + v35 * v33, v8);
        v31 = v33 + 1;
        if (v58(v17))
        {
          break;
        }

        result = (*v32)(v17, v8);
        ++v33;
        if (v56 == v31)
        {
          goto LABEL_20;
        }
      }

      v36 = *v55;
      (*v55)(v52, v17, v8);
      v49 = v36;
      v36(v53, v52, v8);
      Siri_Nlu_External_UserParse.firstUserDialogAct.getter(v50);
      v37 = v50;
      v38 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
      v46 = *(v38 - 8);
      v47 = v38;
      if ((*(v46 + 48))(v37, 1) == 1)
      {
        outlined destroy of Siri_Nlu_External_UserDialogAct?(v37);
      }

      else
      {
        v45 = Siri_Nlu_External_UserDialogAct.hasDelegated.getter();
        (*(v46 + 8))(v37, v47);
        if (v45)
        {
          result = (*v32)(v53, v8);
          goto LABEL_17;
        }
      }

      v49(v51, v53, v8);
      v39 = v54;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 16) + 1, 1);
        v39 = v60;
      }

      v42 = *(v39 + 16);
      v41 = *(v39 + 24);
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        v54 = v42 + 1;
        v47 = v42;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v41 > 1, v42 + 1, 1);
        v43 = v54;
        v42 = v47;
        v39 = v60;
      }

      *(v39 + 16) = v43;
      v54 = v39;
      result = v49(v39 + v34 + v42 * v35, v51, v8);
LABEL_17:
      if (v48 != v33)
      {
        continue;
      }

      goto LABEL_20;
    }
  }

  v54 = MEMORY[0x277D84F90];
LABEL_20:

  return v54;
}

BOOL closure #1 in LazySequenceProtocol<>.keepSalientNLv4Parses()(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for Siri_Nlu_External_Parser();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  Siri_Nlu_External_UserParse.parser.getter();
  Siri_Nlu_External_Parser.parserID.getter();
  v23 = *(v13 + 8);
  v24 = v12;
  v23(v17, v12);
  v18 = *MEMORY[0x277D5DA78];
  v22 = v3[13];
  v22(v8, v18, v2);
  lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = v3[1];
  v19(v8, v2);
  v19(v11, v2);
  if (v27 != v26)
  {
    Siri_Nlu_External_UserParse.parser.getter();
    Siri_Nlu_External_Parser.parserID.getter();
    v23(v17, v24);
    v22(v8, *MEMORY[0x277D5DA80], v2);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v19(v8, v2);
    v19(v11, v2);
    if (v27 != v26)
    {
      return 0;
    }
  }

  Siri_Nlu_External_UserParse.comparableProbability.getter();
  return v20 > 0.05;
}

uint64_t outlined destroy of Siri_Nlu_External_UserDialogAct?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier()
{
  result = lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier;
  if (!lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier)
  {
    type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier;
  if (!lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier)
  {
    type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier);
  }

  return result;
}

uint64_t PommesSearchPreflightHandling.handleAndLog(pommesSearchRequest:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = a1;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PerformanceUtil.Ticket(0);
  v12 = (v11 - 8);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = 0;
  v44 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);
  swift_getDynamicType();
  v17 = _typeName(_:qualified:)();
  v19 = v18;

  v43 = v17;
  v44 = v19;
  MEMORY[0x223DDF6D0](0xD00000000000001DLL, 0x80000002234DF530);
  v20 = v43;
  Date.init()();
  v21 = &v16[v12[7]];
  *v21 = "SiriInformationSearch/PommesSearchPreflightHandling.swift";
  *(v21 + 1) = 57;
  v21[16] = 2;
  *&v16[v12[8]] = 39;
  v22 = &v16[v12[9]];
  *v22 = "handleAndLog(pommesSearchRequest:)";
  *(v22 + 1) = 34;
  v22[16] = 2;
  v23 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(v20);
  v25 = v24;

  v26 = &v16[v12[10]];
  *v26 = v23;
  v26[1] = v25;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.pommes);
  (*(v7 + 16))(v10, v4, a2);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v43 = v31;
    *v30 = 136446210;
    swift_getDynamicType();
    v32 = _typeName(_:qualified:)();
    v41 = v4;
    v33 = v32;
    v34 = v7;
    v35 = a3;
    v37 = v36;
    (*(v34 + 8))(v10, a2);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v37, &v43);
    a3 = v35;

    *(v30 + 4) = v38;
    _os_log_impl(&dword_2232BB000, v28, v29, "%{public}s#handle", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x223DE0F80](v31, -1, -1);
    MEMORY[0x223DE0F80](v30, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, a2);
  }

  v39 = (*(a3 + 16))(v42, a2, a3);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(v16, 0);
  outlined destroy of PerformanceUtil.Ticket(v16);
  return v39;
}

uint64_t static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v88 = a7;
  v85 = a5;
  v86 = a6;
  v82 = a3;
  v83 = a4;
  v80 = a2;
  v87 = a1;
  v94 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog();
  v12 = *(v94 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v94, v14);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v76 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v73 - v24;
  v26 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v78 = *(v26 - 8);
  v27 = *(v78 + 64);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a8;
  v95 = a8;
  v96 = a9;
  v81 = a9;
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v79 = v26;
  static Message.with(_:)();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  v31 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLogs.getter();
  v32 = *(v18 + 8);
  v77 = v18 + 8;
  v32(v25, v17);
  v33 = *(v31 + 16);
  v89 = v30;
  if (v33)
  {
    v74 = v32;
    v75 = v17;
    v98 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33, 0);
    v34 = v98;
    v93 = v12;
    v36 = *(v12 + 16);
    v35 = v12 + 16;
    v91 = v36;
    v37 = (*(v35 + 64) + 32) & ~*(v35 + 64);
    v73 = v31;
    v38 = v31 + v37;
    v90 = *(v35 + 56);
    v92 = v35;
    v39 = (v35 - 8);
    do
    {
      v40 = v94;
      v91(v16, v38, v94);
      v41 = Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainFlowStepLog.getter();
      v43 = v42;
      (*v39)(v16, v40);
      v98 = v34;
      v45 = *(v34 + 16);
      v44 = *(v34 + 24);
      if (v45 >= v44 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
        v34 = v98;
      }

      *(v34 + 16) = v45 + 1;
      v46 = v34 + 16 * v45;
      *(v46 + 32) = v41;
      *(v46 + 40) = v43;
      v38 += v90;
      --v33;
    }

    while (v33);

    v30 = v89;
    v12 = v93;
    v17 = v75;
    v32 = v74;
  }

  else
  {

    v34 = MEMORY[0x277D84F90];
  }

  v47 = a11;
  v90 = a10;
  v98 = v34;
  v48 = v76;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  v49 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLogs.getter();
  v32(v48, v17);
  v50 = *(v49 + 16);
  if (v50)
  {
    v77 = a11;
    v97 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50, 0);
    v51 = v97;
    v53 = *(v12 + 16);
    v52 = v12 + 16;
    v92 = v53;
    v54 = (*(v52 + 64) + 32) & ~*(v52 + 64);
    v76 = v49;
    v55 = v49 + v54;
    v91 = *(v52 + 56);
    v93 = v52;
    v56 = (v52 - 8);
    do
    {
      v57 = v94;
      v92(v16, v55, v94);
      v58 = Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainUserSensitiveTier1Log.getter();
      v60 = v59;
      (*v56)(v16, v57);
      v97 = v51;
      v62 = *(v51 + 16);
      v61 = *(v51 + 24);
      if (v62 >= v61 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1);
        v51 = v97;
      }

      *(v51 + 16) = v62 + 1;
      v63 = v51 + 16 * v62;
      *(v63 + 32) = v58;
      *(v63 + 40) = v60;
      v55 += v91;
      --v50;
    }

    while (v50);

    v30 = v89;
    v47 = v77;
  }

  else
  {

    v51 = MEMORY[0x277D84F90];
  }

  v97 = v51;
  v64 = type metadata accessor for PommesResponse();
  MEMORY[0x28223BE20](v64, v65);
  v66 = v82;
  *(&v73 - 14) = v80;
  *(&v73 - 13) = v66;
  v67 = v84;
  *(&v73 - 12) = v30;
  *(&v73 - 11) = v67;
  v68 = v83;
  *(&v73 - 10) = v81;
  *(&v73 - 9) = v68;
  v69 = v86;
  *(&v73 - 8) = v85;
  *(&v73 - 7) = v69;
  *(&v73 - 6) = v90;
  *(&v73 - 5) = v47;
  *(&v73 - 4) = &v98;
  *(&v73 - 3) = &v97;
  v70 = v87;
  *(&v73 - 2) = v88;
  *(&v73 - 1) = v70;
  v71 = PommesResponse.__allocating_init(_:)();

  (*(v78 + 8))(v30, v79);
  return v71;
}

uint64_t closure #1 in static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)()
{

  v0 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.modify();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.setter();
  return v0(&v2, 0);
}

uint64_t closure #4 in static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t *a13, uint64_t a14, uint64_t a15)
{
  v54 = a8;
  v55 = a7;
  v50 = a5;
  v63 = a14;
  v64 = a15;
  v61 = a13;
  v59 = a12;
  v56 = a11;
  v57 = a10;
  v53 = a9;
  v62 = type metadata accessor for PommesSearchReason();
  v60 = *(v62 - 8);
  v16 = *(v60 + 64);
  MEMORY[0x28223BE20](v62, v17);
  v58 = v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v52 = v49 - v22;
  v51 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog();
  v23 = *(v51 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v51, v25);
  v27 = v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28, v31);
  v33 = v49 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);

  PommesResponse.Builder.experiences.setter();

  PommesResponse.Builder.clientResults.setter();
  v49[1] = a4;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.conversationContextBytes.getter();
  PommesResponse.Builder.conversationContext.setter();

  PommesResponse.Builder.metadataDomainName.setter();
  PommesResponse.Builder.metadataFallbackTriggered.setter();
  PommesResponse.Builder.renderedTexts.setter();
  PommesResponse.Builder.redactedRenderedTexts.setter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLog.getter();
  v34 = *(v29 + 8);
  v50 = v29 + 8;
  v35 = v28;
  v34(v33, v28);
  Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainFlowStepLog.getter();
  v36 = *(v23 + 8);
  v37 = v51;
  v36(v27, v51);
  PommesResponse.Builder.pegasusDomainFlowStepLog.setter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLog.getter();
  v34(v33, v35);
  Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainUserSensitiveTier1Log.getter();
  v36(v27, v37);
  PommesResponse.Builder.pegasusDomainUserSensitiveTier1Log.setter();
  PommesResponse.Builder.listenAfterSpeaking.setter();

  PommesResponse.Builder.requestId.setter();
  outlined init with copy of PommesCandidateId?(v53, v52);
  PommesResponse.Builder.pommesCandidateId.setter();
  PommesResponse.Builder.isHandledByPreflight.setter();

  PommesResponse.Builder.preflightClientHandlerIdentifier.setter();
  v38 = *v59;

  PommesResponse.Builder.taskStepLogs.setter();
  v39 = *v61;

  PommesResponse.Builder.userSensitiveTier1Logs.setter();
  PommesResponse.Builder.componentsWarmedUp.setter();
  (*(v60 + 16))(v58, v63, v62);
  PommesResponse.Builder.searchReason.setter();
  PommesResponse.Builder.isCachedResponse.setter();
  v40 = type metadata accessor for PommesSearchRequest(0);
  v41 = v64;
  v42 = (v64 + *(v40 + 20));
  v43 = *v42;
  v44 = v42[1];

  PommesResponse.Builder.searchRequestUtterance.setter();
  v45 = (v41 + *(v40 + 84));
  v46 = *v45;
  v47 = v45[1];

  return PommesResponse.Builder.sharedUserId.setter();
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(void (*a1)(void))
{
  a1();

  return _typeName(_:qualified:)();
}

uint64_t partial apply for closure #1 in static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)();
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21SiriInformationSearch06PommesC15PreflightResultO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for PommesSearchPreflightResult(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PommesSearchPreflightResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for PommesSearchPreflightResult(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    v2 = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2;
  }

  *result = v2;
  return result;
}

uint64_t AssistantLocationProvider.__allocating_init(serviceHelper:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = specialized AssistantLocationProvider.init(serviceHelper:)(a1);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t AssistantLocationProvider.init(serviceHelper:)(uint64_t a1)
{
  v1 = specialized AssistantLocationProvider.init(serviceHelper:)(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t AssistantLocationProvider.serviceHelper.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = v1[2];
  v1[2] = a1;
  swift_unknownObjectRetain();
  v4 = swift_unknownObjectRelease();
  (*(*v1 + 288))(v4);
  swift_unknownObjectRelease();
}

uint64_t (*AssistantLocationProvider.serviceHelper.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return AssistantLocationProvider.serviceHelper.modify;
}

uint64_t AssistantLocationProvider.serviceHelper.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    (*(**(a1 + 24) + 288))(result);
  }

  return result;
}

uint64_t AssistantLocationProvider.setServiceHelper(_:)()
{
  v3 = *(*v0 + 136);
  v1 = swift_unknownObjectRetain();

  return v3(v1);
}

uint64_t key path setter for AssistantLocationProvider.status : AssistantLocationProvider(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationStatus();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of LocationStatus(a1, v8);
  return (*(**a2 + 216))(v8);
}

void (*AssistantLocationProvider.status.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for LocationStatus() - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  v5 = *(v1 + 24);
  OS_dispatch_queue.sync<A>(execute:)();

  return AssistantLocationProvider.status.modify;
}

void AssistantLocationProvider.status.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    outlined init with copy of LocationStatus(v3, v2);
    AssistantLocationProvider.status.setter(v2);
    outlined destroy of LocationStatus(v3);
  }

  else
  {
    AssistantLocationProvider.status.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t AssistantLocationProvider.statusPublisher.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch25AssistantLocationProvider____lazy_storage___statusPublisher;
  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch25AssistantLocationProvider____lazy_storage___statusPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch25AssistantLocationProvider____lazy_storage___statusPublisher);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch25AssistantLocationProvider_statusPassthrough);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCys6ResultOy21SiriInformationSearch14LocationStatusOAF0H5ErrorOGs5NeverOGMd, &_s7Combine18PassthroughSubjectCys6ResultOy21SiriInformationSearch14LocationStatusOAF0H5ErrorOGs5NeverOGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<Result<LocationStatus, LocationError>, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCys6ResultOy21SiriInformationSearch14LocationStatusOAF0H5ErrorOGs5NeverOGMd, &_s7Combine18PassthroughSubjectCys6ResultOy21SiriInformationSearch14LocationStatusOAF0H5ErrorOGs5NeverOGMR);
    v3 = v0;
    v2 = Publisher.eraseToAnyPublisher()();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t AssistantLocationProvider.statusPublisher.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch25AssistantLocationProvider____lazy_storage___statusPublisher);
  *(v1 + OBJC_IVAR____TtC21SiriInformationSearch25AssistantLocationProvider____lazy_storage___statusPublisher) = a1;
}

uint64_t (*AssistantLocationProvider.statusPublisher.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = AssistantLocationProvider.statusPublisher.getter();
  return AssistantLocationProvider.statusPublisher.modify;
}

uint64_t AssistantLocationProvider.statusPublisher.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch25AssistantLocationProvider____lazy_storage___statusPublisher);
  *(v1 + OBJC_IVAR____TtC21SiriInformationSearch25AssistantLocationProvider____lazy_storage___statusPublisher) = v2;
}

Swift::Void __swiftcall AssistantLocationProvider.setCachedLocation(location:)(CLLocation location)
{
  isa = location.super.isa;
  v3 = type metadata accessor for LocationStatus();
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = (&v20 - v11);
  (*(*v1 + 208))(v10);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of LocationStatus(v12);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.pommes);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2232BB000, v14, v15, "Cannot set cached location on cachedLocation status that is not .available", v16, 2u);
      MEMORY[0x223DE0F80](v16, -1, -1);
    }
  }

  else
  {
    v14 = *v12;
    v17 = v12[1];
    *v8 = isa;
    *(v8 + 1) = v17;
    v8[16] = 0;
    swift_storeEnumTagMultiPayload();
    v18 = *(*v1 + 216);
    v19 = isa;
    v18(v8);
  }
}

uint64_t AssistantLocationProvider.cachedLocationInfo(options:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LocationStatus();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = (v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1[2])
  {
    v10 = a1[4];
    v11 = a1[5];
    v12 = *(*v2 + 208);

    v12(v13);
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of LocationStatus(v9);
      v14 = 0;
    }

    else
    {
      v16 = *v9;
      v17 = type metadata accessor for PommesCodableLocation();
      v18 = *(v17 + 48);
      v19 = *(v17 + 52);
      swift_allocObject();
      v14 = specialized PommesCodableLocation.init(fromCLLocation:)(v16);
    }

    v34[2] = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21PommesCodableLocationCSgMd, &_s21SiriInformationSearch21PommesCodableLocationCSgMR);
    lazy protocol witness table accessor for type PommesCodableLocation? and conformance <A> A?(&lazy protocol witness table cache variable for type PommesCodableLocation? and conformance <A> A?, &lazy protocol witness table cache variable for type PommesCodableLocation and conformance PommesCodableLocation);
    lazy protocol witness table accessor for type PommesCodableLocation? and conformance <A> A?(&lazy protocol witness table cache variable for type PommesCodableLocation? and conformance <A> A?, &lazy protocol witness table cache variable for type PommesCodableLocation and conformance PommesCodableLocation);
    runSimulatableTask<A, B>(interactionId:input:_:)();

    if (v35)
    {
      v20 = *(*v35 + 168);

      v22 = v20(v21);

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Logger.pommes);
      v24 = v22;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        *(v27 + 4) = v24;
        *v28 = v24;
        v29 = v24;
        _os_log_impl(&dword_2232BB000, v25, v26, "SimulatedLocation is: %@", v27, 0xCu);
        outlined destroy of MediaUserStateCenter?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x223DE0F80](v28, -1, -1);
        MEMORY[0x223DE0F80](v27, -1, -1);
      }

      *a2 = v24;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }

    else
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.pommes);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_2232BB000, v31, v32, "LocationInformation from simulation is not present, continue with normal checks.", v33, 2u);
        MEMORY[0x223DE0F80](v33, -1, -1);
      }

      AssistantLocationProvider.locationStatusCheck()(a2);
    }
  }

  else
  {

    return AssistantLocationProvider.locationStatusCheck()(a2);
  }

  return result;
}

uint64_t AssistantLocationProvider.locationStatusCheck()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LocationStatus();
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v38 - v11;
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v38 - v15;
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v38 - v19;
  (*(*v1 + 208))(v18);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.pommes);
  outlined init with copy of LocationStatus(v20, v16);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v38 = a1;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v39 = v25;
    *v24 = 136315138;
    outlined init with copy of LocationStatus(v16, v12);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v29 = 0x80000002234DF6F0;
        outlined destroy of LocationStatus(v16);
        v30 = 0xD000000000000015;
      }

      else if (EnumCaseMultiPayload == 4)
      {
        outlined destroy of LocationStatus(v16);
        v29 = 0xEC000000656C6261;
        v30 = 0x6C696176616E752ELL;
      }

      else
      {
        outlined destroy of LocationStatus(v16);
        v29 = 0xE800000000000000;
        v30 = 0x6E776F6E6B6E752ELL;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMd, &_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMR) + 48);
        outlined destroy of LocationStatus(v16);
        v28 = type metadata accessor for Date();
        (*(*(v28 - 8) + 8))(&v12[v27], v28);
        v29 = 0xE800000000000000;
        v30 = 0x676E69646E65702ELL;
      }

      else
      {
        v30 = 0xD000000000000011;
        v29 = 0x80000002234DF710;
        outlined destroy of LocationStatus(v16);
      }
    }

    else
    {
      outlined destroy of LocationStatus(v12);
      v29 = 0x80000002234DF730;
      outlined destroy of LocationStatus(v16);
      v30 = 0xD00000000000001ELL;
    }

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, &v39);

    *(v24 + 4) = v31;
    _os_log_impl(&dword_2232BB000, v22, v23, "Checking locationStatus with %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x223DE0F80](v25, -1, -1);
    MEMORY[0x223DE0F80](v24, -1, -1);

    a1 = v38;
  }

  else
  {

    outlined destroy of LocationStatus(v16);
  }

  outlined init with take of LocationStatus(v20, v8);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if ((result - 4) < 2)
    {
      goto LABEL_22;
    }

    v37 = xmmword_2234D6480;
LABEL_26:
    *a1 = v37;
    goto LABEL_27;
  }

  if (!result)
  {
    v35 = *(v8 + 1);
    v36 = v8[16];
    *a1 = *v8;
    *(a1 + 8) = v35;
    *(a1 + 16) = v36;
    return result;
  }

  if (result != 1)
  {
    v37 = xmmword_2234D6490;
    goto LABEL_26;
  }

  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMd, &_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMR) + 48);
  v34 = type metadata accessor for Date();
  result = (*(*(v34 - 8) + 8))(&v8[v33], v34);
LABEL_22:
  *a1 = 0;
  *(a1 + 8) = 0;
LABEL_27:
  *(a1 + 16) = 256;
  return result;
}

Swift::String_optional __swiftcall AssistantLocationProvider.countryCode()()
{
  v0 = _AFPreferencesCountryCode();
  if (v0)
  {
    v1 = v0;
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v5 = v2;
  v6 = v4;
  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

Swift::Void __swiftcall AssistantLocationProvider.reset()()
{
  v1 = type metadata accessor for LocationStatus();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v1);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  (*(*v0 + 216))(v4);
}

uint64_t AssistantLocationProvider.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  outlined destroy of LocationStatus(v0 + OBJC_IVAR____TtC21SiriInformationSearch25AssistantLocationProvider__status);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch25AssistantLocationProvider_statusPassthrough);

  v3 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch25AssistantLocationProvider____lazy_storage___statusPublisher);

  return v0;
}

uint64_t AssistantLocationProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  outlined destroy of LocationStatus(v0 + OBJC_IVAR____TtC21SiriInformationSearch25AssistantLocationProvider__status);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch25AssistantLocationProvider_statusPassthrough);

  v3 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch25AssistantLocationProvider____lazy_storage___statusPublisher);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t specialized AssistantLocationProvider.init(serviceHelper:)(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  *(v1 + 16) = 0;
  v14 = (v1 + 16);
  v15 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v22[0] = ".available(PommesLocationInfo)";
  v22[1] = v15;
  static DispatchQoS.unspecified.getter();
  v26 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type PommesCodableLocation and conformance PommesCodableLocation(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v23 + 104))(v7, *MEMORY[0x277D85260], v24);
  *(v1 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for LocationStatus();
  swift_storeEnumTagMultiPayload();
  v16 = OBJC_IVAR____TtC21SiriInformationSearch25AssistantLocationProvider_statusPassthrough;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCys6ResultOy21SiriInformationSearch14LocationStatusOAF0H5ErrorOGs5NeverOGMd, &_s7Combine18PassthroughSubjectCys6ResultOy21SiriInformationSearch14LocationStatusOAF0H5ErrorOGs5NeverOGMR);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *(v1 + v16) = PassthroughSubject.init()();
  *(v1 + OBJC_IVAR____TtC21SiriInformationSearch25AssistantLocationProvider____lazy_storage___statusPublisher) = 0;
  swift_beginAccess();
  v20 = *(v1 + 16);
  *v14 = v25;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t lazy protocol witness table accessor for type PommesCodableLocation? and conformance <A> A?(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s21SiriInformationSearch21PommesCodableLocationCSgMd, &_s21SiriInformationSearch21PommesCodableLocationCSgMR);
    lazy protocol witness table accessor for type PommesCodableLocation and conformance PommesCodableLocation(a2, type metadata accessor for PommesCodableLocation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for AssistantLocationProvider()
{
  result = type metadata singleton initialization cache for AssistantLocationProvider;
  if (!type metadata singleton initialization cache for AssistantLocationProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for AssistantLocationProvider()
{
  result = type metadata accessor for LocationStatus();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OptionalMethodError and conformance OptionalMethodError()
{
  result = lazy protocol witness table cache variable for type OptionalMethodError and conformance OptionalMethodError;
  if (!lazy protocol witness table cache variable for type OptionalMethodError and conformance OptionalMethodError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OptionalMethodError and conformance OptionalMethodError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OptionalMethodError and conformance OptionalMethodError;
  if (!lazy protocol witness table cache variable for type OptionalMethodError and conformance OptionalMethodError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OptionalMethodError and conformance OptionalMethodError);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PommesCodableLocation and conformance PommesCodableLocation(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PairedDeviceDataProvider.make()()
{
  type metadata accessor for PairedDeviceDataProvider();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMR);
  swift_allocObject();
  return specialized AnyDataProvider.init<A>(provider:)(v0);
}

uint64_t PairedDeviceDataProvider.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t PairedDeviceDataProvider.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

void PairedDeviceDataProvider.prepare(dispatchQueue:)()
{
  v1 = v0;
  v2 = *(*v0 + 96);
  v3 = v2();
  if (v3)
  {
  }

  else
  {
    v4 = [objc_opt_self() sharedInstance];
    v5 = [v4 getActivePairedDevice];

    (*(*v1 + 104))(v5);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.pommes);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      v2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NRDeviceCSgMd, &_sSo8NRDeviceCSgMR);
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_2232BB000, v7, v8, "PairedDeviceDataProvider: paired watch fetched as %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x223DE0F80](v10, -1, -1);
      MEMORY[0x223DE0F80](v9, -1, -1);
    }
  }
}

uint64_t PairedDeviceDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)()
{
  v1 = (*(*v0 + 96))();
  if (!v1)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.pommes);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2232BB000, v29, v30, "PairedDeviceDataProvider: no paired device", v31, 2u);
      MEMORY[0x223DE0F80](v31, -1, -1);
    }

    return 0;
  }

  v2 = v1;
  v3 = *MEMORY[0x277D2BBC0];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = specialized PairedDeviceDataProvider.pairedDeviceValue(forKey:device:)(v4, v5, v2);
  v8 = v7;

  if (!v8)
  {
LABEL_16:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.pommes);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2232BB000, v33, v34, "PairedDeviceDataProvider: found paired device but unable to extract productType, systemVersion, or regulatoryDeviceModel property", v35, 2u);
      MEMORY[0x223DE0F80](v35, -1, -1);
    }

    return 0;
  }

  v9 = *MEMORY[0x277D2BC20];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = specialized PairedDeviceDataProvider.pairedDeviceValue(forKey:device:)(v10, v11, v2);
  v14 = v13;

  if (!v14)
  {
LABEL_15:

    goto LABEL_16;
  }

  v15 = *MEMORY[0x277D2BBD8];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = specialized PairedDeviceDataProvider.pairedDeviceValue(forKey:device:)(v16, v17, v2);
  v20 = v19;

  if (!v20)
  {

    goto LABEL_15;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.pommes);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v42 = v12;
    v24 = v18;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v43[0] = v26;
    *v25 = 136315650;
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, v43);

    *(v25 + 4) = v27;
    *(v25 + 12) = 2080;
    *(v25 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v14, v43);
    *(v25 + 22) = 2080;
    *(v25 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v20, v43);
    _os_log_impl(&dword_2232BB000, v22, v23, "PairedDeviceDataProvider: returning paired device (product: %s, OS: %s, model: %s)", v25, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v26, -1, -1);
    MEMORY[0x223DE0F80](v25, -1, -1);
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI27Useragentpb_CompanionDeviceVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI27Useragentpb_CompanionDeviceVGMR);
  v37 = *(type metadata accessor for Useragentpb_CompanionDevice() - 8);
  v38 = *(v37 + 72);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2234CF920;
  MEMORY[0x28223BE20](v40, v41);
  lazy protocol witness table accessor for type Useragentpb_CompanionDevice and conformance Useragentpb_CompanionDevice(&lazy protocol witness table cache variable for type Useragentpb_CompanionDevice and conformance Useragentpb_CompanionDevice, MEMORY[0x277D38EB8]);
  static Message.with(_:)();

  return v40;
}

uint64_t closure #1 in PairedDeviceDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)()
{
  v0 = type metadata accessor for Useragentpb_DeviceMetadata();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  v3 = type metadata accessor for Useragentpb_UserAgent();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  lazy protocol witness table accessor for type Useragentpb_CompanionDevice and conformance Useragentpb_CompanionDevice(&lazy protocol witness table cache variable for type Useragentpb_UserAgent and conformance Useragentpb_UserAgent, MEMORY[0x277D38E50]);
  static Message.with(_:)();
  Useragentpb_CompanionDevice.companionUserAgent.setter();
  lazy protocol witness table accessor for type Useragentpb_CompanionDevice and conformance Useragentpb_CompanionDevice(&lazy protocol witness table cache variable for type Useragentpb_DeviceMetadata and conformance Useragentpb_DeviceMetadata, MEMORY[0x277D38E88]);
  static Message.with(_:)();
  return Useragentpb_CompanionDevice.deviceMetadata.setter();
}

uint64_t closure #1 in closure #1 in PairedDeviceDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)()
{

  Useragentpb_UserAgent.buildOsVersion.setter();

  return Useragentpb_UserAgent.productVersion.setter();
}

uint64_t PairedDeviceDataProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for DataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:) in conformance PairedDeviceDataProvider@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 136))();
  *a1 = result;
  return result;
}

uint64_t specialized PairedDeviceDataProvider.pairedDeviceValue(forKey:device:)(uint64_t a1, unint64_t a2, void *a3)
{
  result = specialized static PegasusOverrideUtil.pairedDeviceOverrideValue(forKey:)(a1, a2);
  if (!v7)
  {
    v8 = MEMORY[0x223DDF550](a1, a2);
    v9 = [a3 valueForProperty_];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13[0] = v11;
    v13[1] = v12;
    if (*(&v12 + 1))
    {
      if (swift_dynamicCast())
      {
        return v10;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      outlined destroy of Any?(v13);
      return 0;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in PairedDeviceDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return closure #1 in PairedDeviceDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)();
}

uint64_t dispatch thunk of PairedDeviceDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(*v2 + 136);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  v9[4] = *(a2 + 64);
  v10 = v3;
  v11 = v4;
  return v5(a1, v9);
}

uint64_t partial apply for closure #1 in closure #1 in PairedDeviceDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in closure #1 in PairedDeviceDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)();
}

uint64_t partial apply for closure #2 in closure #1 in PairedDeviceDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  return MEMORY[0x223DDA070](v2, v1);
}

uint64_t lazy protocol witness table accessor for type Useragentpb_CompanionDevice and conformance Useragentpb_CompanionDevice(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static UtteranceMatchPreflightClient.disallowedUtterances.setter(void *a1)
{
  swift_beginAccess();
  static UtteranceMatchPreflightClient.disallowedUtterances = a1;
}

uint64_t key path setter for static UtteranceMatchPreflightClient.disallowedUtterances : UtteranceMatchPreflightClient.Type(void **a1)
{
  v1 = *a1;

  swift_beginAccess();
  static UtteranceMatchPreflightClient.disallowedUtterances = v1;
}

uint64_t UtteranceMatchPreflightClient.handle(pommesSearchRequest:)(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for PommesSearchReason();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v59 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v58 = (&v54 - v12);
  v13 = type metadata accessor for PommesSearchRequest(0);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (a1 + *(v16 + 20));
  v20 = *v19;
  v21 = v19[1];
  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v23 = swift_beginAccess();
    v24 = static UtteranceMatchPreflightClient.disallowedUtterances;
    v60[0] = v20;
    v60[1] = v21;
    MEMORY[0x28223BE20](v23, v25);
    v53 = v60;

    v26 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v52, v24);

    if ((v26 & 1) == 0)
    {
      return 1;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = __swift_project_value_buffer(v27, static Logger.pommes);
  outlined init with copy of PommesSearchRequest(a1, v18);
  v57 = v28;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v55 = v5;
    v32 = v31;
    v33 = swift_slowAlloc();
    v60[0] = v33;
    *v32 = 136315138;
    v34 = &v18[*(v13 + 20)];
    v56 = a1;
    v35 = v3;
    v36 = v4;
    v37 = *v34;
    v38 = v34[1];

    outlined destroy of PommesSearchRequest(v18);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v60);
    v4 = v36;
    v3 = v35;
    a1 = v56;

    *(v32 + 4) = v39;
    _os_log_impl(&dword_2232BB000, v29, v30, "UtteranceMatchPreflightClient matched utterance: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x223DE0F80](v33, -1, -1);
    v40 = v32;
    v5 = v55;
    MEMORY[0x223DE0F80](v40, -1, -1);
  }

  else
  {

    outlined destroy of PommesSearchRequest(v18);
  }

  v41 = (a1 + *(v13 + 32));
  v42 = *v41;
  v43 = v41[1];
  v44 = v58;
  PommesSearchRequest.pommesCandidateId.getter(v58);
  v45 = type metadata accessor for PommesCandidateId();
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  v46 = v59;
  default argument 5 of static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v59);
  v52[1] = v3;
  v53 = &protocol witness table for UtteranceMatchPreflightClient;
  v47 = static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(a1, MEMORY[0x277D84F90], MEMORY[0x277D84F90], v42, v43, v44, v46, 0x6867696C66657270, 0xE900000000000074, 0xD00000000000001DLL, 0x80000002234D66D0);
  (*(v5 + 8))(v46, v4);
  outlined destroy of PommesCandidateId?(v44);
  result = v47;
  if (!v47)
  {
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_2232BB000, v49, v50, "UtteranceMatchPreflightClient#handle could not build PommesResponse with given parameters", v51, 2u);
      MEMORY[0x223DE0F80](v51, -1, -1);
    }

    return 1;
  }

  return result;
}

uint64_t AppData.init(applicationIdentifier:supportedIntents:supportedMediaCategories:linkActions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t AppDataProvider.__allocating_init(appChecking:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = specialized AppDataProvider.init(appChecking:)(v8, v2, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t AppData.applicationIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AppDataProvider.init(appChecking:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = specialized AppDataProvider.init(appChecking:)(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

void AppDataProvider.getAppInfo(bundleId:allowPlaceholder:)(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v43[1] = *MEMORY[0x277D85DE8];
  if ((*(*v4 + 120))())
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.pommes);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v43[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v43);
    v14 = "AppDataProvider#getAppInfo failed to locate app for bundleIdentifier:%s";
LABEL_11:
    _os_log_impl(&dword_2232BB000, v10, v11, v14, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x223DE0F80](v13, -1, -1);
    MEMORY[0x223DE0F80](v12, -1, -1);
LABEL_12:

LABEL_13:
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_14;
  }

  v15 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v16 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(a1, a2, a3 & 1);
  v24 = v16;
  if (!v16)
  {
LABEL_7:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.pommes);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v43[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v43);
    v14 = "AppDataProvider#getAppInfo failed to resolve appData for bundleIdentifier:%s";
    goto LABEL_11;
  }

  v25 = [objc_opt_self() appInfoWithApplicationRecord_];
  if (!v25)
  {

    goto LABEL_7;
  }

  v26 = v25;
  if ([v24 appProtectionHidden])
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.pommes);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2232BB000, v28, v29, "AppDataProvider#getAppInfo excluded hidden app from consideration", v30, 2u);
      MEMORY[0x223DE0F80](v30, -1, -1);
    }

    goto LABEL_13;
  }

  v31 = v4[7];
  v32 = MEMORY[0x223DDF550](a1, a2);
  v43[0] = 0;
  v33 = [v31 actionsForBundleIdentifier:v32 error:v43];

  v34 = v43[0];
  if (v33)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for LNActionMetadata, 0x277D23730);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;
  }

  else
  {
    v36 = v43[0];
    v37 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v22 = MEMORY[0x277D84F90];
  }

  v38 = [v26 applicationIdentifier];
  if (v38)
  {
    v39 = v38;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v40;
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v41 = [v26 supportedIntents];
  v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = [v26 supportedMediaCategories];
  v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_14:
  *a4 = v18;
  a4[1] = v19;
  a4[2] = v20;
  a4[3] = v21;
  a4[4] = v22;
  v23 = *MEMORY[0x277D85DE8];
}

unint64_t AppDataProvider.getVocabularies(bundleId:allowPlaceholder:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = v106 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = v106 - v17;
  if ((*(*v2 + 120))(a1, a2))
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.pommes);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_12;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v113[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v113);
    v24 = "AppDataProvider#getAppInfo failed to locate app for bundleIdentifier:%s";
LABEL_11:
    _os_log_impl(&dword_2232BB000, v20, v21, v24, v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x223DE0F80](v23, -1, -1);
    MEMORY[0x223DE0F80](v22, -1, -1);
LABEL_12:

    v28 = MEMORY[0x277D84F90];

    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So12NSDictionaryCTt0g5Tf4g_n(v28);
  }

  v25 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v26 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(a1, a2, 0);
  if (!v26)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.pommes);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_12;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v113[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v113);
    v24 = "AppDataProvider#getVocabularies failed to resolve appData for bundleIdentifier:%s";
    goto LABEL_11;
  }

  v30 = v26;
  if ([v30 appProtectionHidden])
  {

    if (one-time initialization token for pommes != -1)
    {
      goto LABEL_56;
    }

    goto LABEL_18;
  }

  v38 = [v30 URL];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  URL.absoluteURL.getter();
  v40 = *(v6 + 8);
  v39 = v6 + 8;
  v40(v18, v5);
  v41 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  URL._bridgeToObjectiveC()(v42);
  v44 = v43;
  v45 = [v41 initWithURL_];

  v109 = v40;
  v110 = v5;
  v40(v15, v5);
  if (!v45)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    __swift_project_value_buffer(v82, static Logger.pommes);
    v83 = v30;
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v113[0] = v112;
      *v86 = 136315138;
      v87 = [v83 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL.absoluteURL.getter();
      v89 = v109;
      v88 = v110;
      v109(v18, v110);
      v90 = URL.absoluteString.getter();
      v92 = v91;
      v89(v15, v88);
      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, v113);

      *(v86 + 4) = v93;
      _os_log_impl(&dword_2232BB000, v84, v85, "AppDataProvider#getVocabularies unable to construct bundle for url: %s", v86, 0xCu);
      v94 = v112;
      __swift_destroy_boxed_opaque_existential_1(v112);
      MEMORY[0x223DE0F80](v94, -1, -1);
      MEMORY[0x223DE0F80](v86, -1, -1);
    }

    v49 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So12NSDictionaryCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    return v49;
  }

  v107 = v30;
  v46 = [v45 localizations];
  v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = [objc_allocWithZone(MEMORY[0x277CBEB38]) initWithCapacity_];
  v113[0] = 0;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

  v49 = v113[0];
  if (!v113[0])
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v95 = type metadata accessor for Logger();
    __swift_project_value_buffer(v95, static Logger.pommes);

    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.debug.getter();

    v98 = os_log_type_enabled(v96, v97);
    v99 = v107;
    if (v98)
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v113[0] = v101;
      *v100 = 136315138;
      v102 = MEMORY[0x223DDF850](v47, MEMORY[0x277D837D0]);
      v104 = v103;

      v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v104, v113);

      *(v100 + 4) = v105;
      _os_log_impl(&dword_2232BB000, v96, v97, "AppDataProvider#getVocabularies unable create vocabulariesByLocale from allLocalizations:%s", v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v101);
      MEMORY[0x223DE0F80](v101, -1, -1);
      MEMORY[0x223DE0F80](v100, -1, -1);
    }

    else
    {
    }

    v49 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So12NSDictionaryCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    return v49;
  }

  v112 = v45;
  v50 = [v45 localizations];
  v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = *(v51 + 16);
  v106[1] = v51;
  if (!v30)
  {
LABEL_41:

    return v49;
  }

  v111 = "eranceMatchPreflightClient";
  v52 = (v51 + 40);
  v108 = v39;
  while (1)
  {
    v53 = *(v52 - 1);
    v54 = *v52;

    v55 = MEMORY[0x223DDF550](0xD000000000000013, v111 | 0x8000000000000000);
    v56 = MEMORY[0x223DDF550](0x7473696C70, 0xE500000000000000);
    v57 = MEMORY[0x223DDF550](v53, v54);
    v58 = [v112 URLForResource:v55 withExtension:v56 subdirectory:0 localization:v57];

    if (!v58)
    {
      goto LABEL_26;
    }

    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v59 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
    URL._bridgeToObjectiveC()(v60);
    v62 = v61;
    v63 = [v59 initWithContentsOfURL_];

    if (v63)
    {
      break;
    }

    v109(v11, v110);
LABEL_26:

LABEL_27:
    v52 += 2;
    if (!--v30)
    {
      goto LABEL_41;
    }
  }

  v64 = static Locale.canonicalLanguageIdentifier(from:)();
  v66 = v65;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v113[0] = v49;
  v68 = specialized __RawDictionaryStorage.find<A>(_:)(v64, v66);
  v70 = v49[2];
  v71 = (v69 & 1) == 0;
  v72 = __OFADD__(v70, v71);
  v73 = v70 + v71;
  if (!v72)
  {
    v74 = v69;
    if (v49[3] >= v73)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_35;
      }

      v78 = v68;
      specialized _NativeDictionary.copy()();
      v68 = v78;
      v49 = v113[0];
      if ((v74 & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_36:
      v76 = v49[7];
      v77 = *(v76 + 8 * v68);
      *(v76 + 8 * v68) = v63;
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v73, isUniquelyReferenced_nonNull_native);
      v68 = specialized __RawDictionaryStorage.find<A>(_:)(v64, v66);
      if ((v74 & 1) != (v75 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

LABEL_35:
      v49 = v113[0];
      if (v74)
      {
        goto LABEL_36;
      }

LABEL_38:
      v49[(v68 >> 6) + 8] |= 1 << v68;
      v79 = (v49[6] + 16 * v68);
      *v79 = v64;
      v79[1] = v66;
      *(v49[7] + 8 * v68) = v63;
      v80 = v49[2];
      v72 = __OFADD__(v80, 1);
      v81 = v80 + 1;
      if (v72)
      {
        goto LABEL_55;
      }

      v49[2] = v81;
    }

    v109(v11, v110);
    goto LABEL_27;
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  swift_once();
LABEL_18:
  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.pommes);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = v30;
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_2232BB000, v32, v33, "AppDataProvider#getVocabularies excluded hidden app from consideration", v35, 2u);
    v36 = v35;
    v30 = v34;
    MEMORY[0x223DE0F80](v36, -1, -1);
  }

  v37 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So12NSDictionaryCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  return v37;
}

Swift::Bool __swiftcall AppDataProvider.isAppHidden(bundleId:)(Swift::String bundleId)
{
  object = bundleId._object;
  countAndFlagsBits = bundleId._countAndFlagsBits;
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  (*(v5 + 8))(&v7, countAndFlagsBits, object, v4, v5);
  LOBYTE(object) = v8;

  return object;
}

uint64_t AppDataProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t AppDataProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

double protocol witness for AppDataProviding.getAppInfo(bundleId:allowPlaceholder:) in conformance AppDataProvider@<D0>(uint64_t a1@<X8>)
{
  (*(**v1 + 104))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t specialized AppDataProvider.init(appChecking:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[3] = a3;
  v9[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *(a2 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  outlined init with take of PommesAppChecking(v9, a2 + 16);
  return a2;
}

uint64_t getEnumTagSinglePayload for AppData(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AppData(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t NLXResultCandidate.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v13 - v4;
  v14 = 0;
  v15 = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  v13[0] = *(*v0 + 16);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DDF6D0](v6);

  MEMORY[0x223DDF6D0](0xD00000000000001BLL, 0x80000002234DF860);
  v7 = type metadata accessor for NLXResultCandidate();
  outlined init with copy of Siri_Nlu_External_DelegatedUserDialogAct?(v0 + *(v7 + 20), v5);
  v8 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v8);

  MEMORY[0x223DDF6D0](0xD000000000000022, 0x80000002234DF880);
  v9 = (v0 + *(v7 + 24));
  v10 = v9[1];
  v13[0] = *v9;
  v13[1] = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v11 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v11);

  return v14;
}

uint64_t type metadata accessor for NLXResultCandidate()
{
  result = type metadata singleton initialization cache for NLXResultCandidate;
  if (!type metadata singleton initialization cache for NLXResultCandidate)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of Siri_Nlu_External_DelegatedUserDialogAct?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NLXResultCandidate.init(parses:fallbackParse:responseVariantResult:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for NLXResultCandidate();
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = &a5[*(v10 + 24)];
  *a5 = a1;
  result = outlined assign with take of Siri_Nlu_External_DelegatedUserDialogAct?(a2, &a5[v11]);
  *v13 = a3;
  *(v13 + 1) = a4;
  return result;
}

uint64_t NLXResultCandidate.parses.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t NLXResultCandidate.fallbackParse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NLXResultCandidate() + 20);

  return outlined init with copy of Siri_Nlu_External_DelegatedUserDialogAct?(v3, a1);
}

uint64_t NLXResultCandidate.fallbackParse.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NLXResultCandidate() + 20);

  return outlined assign with take of Siri_Nlu_External_DelegatedUserDialogAct?(a1, v3);
}

uint64_t NLXResultCandidate.responseVariantResult.getter()
{
  v1 = (v0 + *(type metadata accessor for NLXResultCandidate() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t NLXResultCandidate.responseVariantResult.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NLXResultCandidate() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void type metadata completion function for NLXResultCandidate()
{
  type metadata accessor for [Siri_Nlu_External_UserParse](319, &lazy cache variable for type metadata for [Siri_Nlu_External_UserParse], MEMORY[0x277D5DB08], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [Siri_Nlu_External_UserParse](319, &lazy cache variable for type metadata for Siri_Nlu_External_DelegatedUserDialogAct?, MEMORY[0x277D5DD80], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [Siri_Nlu_External_UserParse](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t SportsPersonalizationSelection<A>.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1, a2);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v14);
  v15 = (*(v4 + 48))(v12, 2, v3);
  if (v15)
  {
    if (v15 == 1)
    {
      return 0x63696C7070616E69;
    }

    else
    {
      return 0x756769626D616E75;
    }
  }

  else
  {
    (*(v4 + 32))(v8, v12, v3);
    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v22 = 0xD00000000000001ELL;
    v23 = 0x80000002234DF510;
    v17 = (*(a2 + 8))(v3, a2);
    v18 = (v17 & 1) == 0;
    if (v17)
    {
      v19 = 1702195828;
    }

    else
    {
      v19 = 0x65736C6166;
    }

    if (v18)
    {
      v20 = 0xE500000000000000;
    }

    else
    {
      v20 = 0xE400000000000000;
    }

    MEMORY[0x223DDF6D0](v19, v20);

    MEMORY[0x223DDF6D0](41, 0xE100000000000000);
    v21 = v22;
    (*(v4 + 8))(v8, v3);
    return v21;
  }
}

uint64_t type metadata completion function for SportsPersonalizationSelection(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for SportsPersonalizationSelection(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 3)
        {
          return v18 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *storeEnumTagSinglePayload for SportsPersonalizationSelection(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 2;
  if (v6 <= 1)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

uint64_t *static DummyDataProvider.make(dummyResult:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v17 - v8;
  type metadata accessor for AnyDataProvider();
  v10 = type metadata accessor for DummyDataProvider();
  (*(v5 + 16))(v9, a1, v4);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  DummyDataProvider.init(dummyResult:)(v9);
  v18 = v13;
  WitnessTable = swift_getWitnessTable();
  v15 = specialized AnyDataProvider.__allocating_init<A>(provider:)(&v18, v10, WitnessTable);

  return v15;
}

uint64_t key path setter for DummyDataProvider.dummyResult : <A>DummyDataProvider<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 8);
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return (*(**a2 + 104))(v11);
}

uint64_t DummyDataProvider.dummyResult.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = type metadata accessor for Optional();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t DummyDataProvider.dummyResult.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

uint64_t (*DummyDataProvider.dummyResult.modify())()
{
  v1 = *(*v0 + 88);
  swift_beginAccess();
  return PommesSearch.serverFallbackPreferences.modify;
}

uint64_t DummyDataProvider.__allocating_init(dummyResult:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  DummyDataProvider.init(dummyResult:)(a1);
  return v5;
}

uint64_t *DummyDataProvider.make()()
{
  v1 = *(*v0 + 80);
  type metadata accessor for AnyDataProvider();
  v5 = v0;
  v2 = type metadata accessor for DummyDataProvider();
  WitnessTable = swift_getWitnessTable();
  return specialized AnyDataProvider.__allocating_init<A>(provider:)(&v5, v2, WitnessTable);
}

uint64_t DummyDataProvider.init(dummyResult:)(uint64_t a1)
{
  v3 = *(*v1 + 88);
  (*(*(*(*v1 + 80) - 8) + 56))(v1 + v3, 1, 1, *(*v1 + 80));
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  swift_endAccess();
  return v1;
}

uint64_t DummyDataProvider.deinit()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  return v0;
}

uint64_t DummyDataProvider.__deallocating_deinit()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for DummyDataProvider(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of DummyDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(*v2 + 152);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  v9[4] = *(a2 + 64);
  v10 = v3;
  v11 = v4;
  return v5(a1, v9);
}

uint64_t static Apple_Parsec_Search_PegasusQueryContext.TemperatureUnit.fromString(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *MEMORY[0x277D47C28];
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v7 == a2)
  {
    v10 = MEMORY[0x277D38C18];
LABEL_8:

    goto LABEL_9;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    v10 = MEMORY[0x277D38C18];
    goto LABEL_9;
  }

  v15 = *MEMORY[0x277D47C30];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = MEMORY[0x277D38C10];
  if (v16 == a1 && v17 == a2)
  {
    goto LABEL_8;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v19 & 1) == 0)
  {
    v10 = MEMORY[0x277D38C20];
  }

LABEL_9:
  v11 = *v10;
  v12 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext.TemperatureUnit();
  v13 = *(*(v12 - 8) + 104);

  return v13(a3, v11, v12);
}

uint64_t static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocationManager:dataProviderManager:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a4;
  v76 = type metadata accessor for Date();
  v81 = *(v76 - 8);
  v7 = *(v81 + 64);
  MEMORY[0x28223BE20](v76, v8);
  v10 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v72 = *(Context - 8);
  v11 = *(v72 + 64);
  v13 = MEMORY[0x28223BE20](Context, v12);
  v66 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v63 - v16;
  v18 = type metadata accessor for SignpostToken();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v22 = v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v79 = a3;
  v23 = type metadata accessor for OSSignposter();
  v67 = __swift_project_value_buffer(v23, static Signposter.pommes);
  v68 = v22;
  OSSignposter.begin(name:context:)("proxy.createQueryContext", 24, 2u, 0, v22);
  v24 = Apple_Parsec_Search_PegasusQueryContext.init()();
  v26 = v17;
  if (one-time initialization token for shared != -1)
  {
    v24 = swift_once();
    v26 = v17;
  }

  v80 = v26;
  v27 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v24, v25);
  v60[0] = v28;
  v60[1] = a2;
  v71 = a1;
  v61 = a1;
  Date.init()();
  v29 = (*v27 + 200);
  v78 = *v29;
  v30 = v29;
  v31 = MEMORY[0x277D84F78] + 8;
  v61 = &v59;
  v62 = MEMORY[0x277D84F78] + 8;
  LOBYTE(v60[0]) = 2;
  v78(0xD000000000000017, 0x80000002234DF8B0, 0, v10, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 25, "build(for:withLocationManager:dataProviderManager:)", 51, v60[0], partial apply for closure #1 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocationManager:dataProviderManager:));
  v32 = *(v81 + 8);
  v81 += 8;
  v75 = v32;
  v33 = v76;
  v34 = v32(v10, v76);
  v65 = v63;
  MEMORY[0x28223BE20](v34, v35);
  Date.init()();
  v70 = v31;
  v61 = v60;
  v62 = v31;
  LOBYTE(v60[0]) = 2;
  v73 = v27;
  v74 = v30;
  v36 = v78;
  v78(0xD000000000000015, 0x80000002234DF950, 0, v10, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 29, "build(for:withLocationManager:dataProviderManager:)", 51, v60[0], partial apply for closure #2 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocationManager:dataProviderManager:));
  v64 = 0;
  v37 = v75(v10, v33);
  v65 = v63;
  MEMORY[0x28223BE20](v37, v38);
  Date.init()();
  v61 = v60;
  v62 = v31;
  LOBYTE(v60[0]) = 2;
  v39 = v64;
  v36(0xD000000000000026, 0x80000002234DF970, 0, v10, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 32, "build(for:withLocationManager:dataProviderManager:)", 51, v60[0], partial apply for closure #3 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocationManager:dataProviderManager:));
  v40 = v75;
  v41 = v75(v10, v33);
  v65 = v63;
  MEMORY[0x28223BE20](v41, v42);
  LODWORD(v60[0]) = v79;
  Date.init()();
  v43 = Context;
  v61 = &v59;
  v62 = Context;
  LOBYTE(v60[0]) = 2;
  v44 = v66;
  v78(0xD00000000000002DLL, 0x80000002234DF9A0, 0, v10, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 36, "build(for:withLocationManager:dataProviderManager:)", 51, v60[0], partial apply for closure #4 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocationManager:dataProviderManager:));
  v64 = v39;
  v40(v10, v33);
  v65 = *(v72 + 40);
  v45 = v65(v80, v44, v43);
  v63[1] = v63;
  MEMORY[0x28223BE20](v45, v46);
  Date.init()();
  v61 = v60;
  v62 = v43;
  LOBYTE(v60[0]) = 2;
  v47 = v64;
  v48 = v78;
  v78(0xD000000000000023, 0x80000002234DF9D0, 0, v10, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 39, "build(for:withLocationManager:dataProviderManager:)", 51, v60[0], partial apply for closure #5 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocationManager:dataProviderManager:));
  v64 = v47;
  v49 = v75;
  v75(v10, v76);
  v50 = v80;
  v51 = v65(v80, v44, Context);
  MEMORY[0x28223BE20](v51, v52);
  Date.init()();
  v61 = v60;
  v62 = v70;
  LOBYTE(v60[0]) = 2;
  v53 = v48;
  v54 = v76;
  v53(0xD00000000000002BLL, 0x80000002234DFA00, 0, v10, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 42, "build(for:withLocationManager:dataProviderManager:)", 51, v60[0], partial apply for closure #6 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocationManager:dataProviderManager:));
  v49(v10, v54);
  v55 = type metadata accessor for PommesSearchRequest(0);
  if (*(v71 + *(v55 + 60)) == 1)
  {
    MEMORY[0x28223BE20](v55, v56);
    LODWORD(v60[0]) = v79;
    Date.init()();
    v61 = &v59;
    v62 = v70;
    LOBYTE(v60[0]) = 2;
    v78(0xD00000000000002BLL, 0x80000002234DFA30, 0, v10, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 47, "build(for:withLocationManager:dataProviderManager:)", 51, v60[0], partial apply for closure #7 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocationManager:dataProviderManager:));
    v49(v10, v54);
  }

  (*(v72 + 32))(v69, v50, Context);
  v57 = v68;
  OSSignposter.end(token:message:)(v68, 0, 0xE000000000000000);
  return _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v57, type metadata accessor for SignpostToken);
}

uint64_t closure #1 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocationManager:dataProviderManager:)(uint64_t a1, int *a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = 5;
  (*(v6 + 104))(v10, *MEMORY[0x277D85188], v5);
  Apple_Parsec_Search_PegasusQueryContext.addLocation(using:for:suspensionTimeInterval:)(a2, a3, v10);
  return (*(v6 + 8))(v10, v5);
}

void Apple_Parsec_Search_PegasusQueryContext.addLocation(using:for:suspensionTimeInterval:)(int *a1, uint64_t a2, uint64_t a3)
{
  v72 = a2;
  v76 = a3;
  v64 = type metadata accessor for Apple_Parsec_Search_V2_Location();
  v4 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64, v5);
  v65 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for Apple_Parsec_Search_V2_PreciseStatus();
  v67 = *(v62 - 8);
  v7 = *(v67 + 64);
  MEMORY[0x28223BE20](v62, v8);
  v63 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for PerformanceUtil.Ticket(0);
  v10 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66, v11);
  v68 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    v17 = swift_once();
  }

  v21 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v17, v18);
  v59 = a1;
  Date.init()();
  v22 = *(*v21 + 200);
  v71 = *v21 + 200;
  v59 = &v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  LOBYTE(v58) = 2;
  v77 = v21;
  v73 = v22;
  v22(&v78, 0xD00000000000001DLL, 0x80000002234DFA60, 0, v20, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 119, "addLocation(using:for:suspensionTimeInterval:)", 46, v58, partial apply for closure #1 in Apple_Parsec_Search_PegasusQueryContext.addLocation(using:for:suspensionTimeInterval:));
  v23 = *(v14 + 8);
  v75 = v13;
  v69 = v23;
  v70 = 0;
  v23(v20, v13);
  v24 = v79;
  v74 = v14 + 8;
  if (v79)
  {
    v25 = v78;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.pommes);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v78 = v30;
      *v29 = 136315138;

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, &v78);

      *(v29 + 4) = v31;
      _os_log_impl(&dword_2232BB000, v27, v28, "Adding country code to query context: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x223DE0F80](v30, -1, -1);
      MEMORY[0x223DE0F80](v29, -1, -1);
    }

    Apple_Parsec_Search_PegasusQueryContext.countryCode.setter();
  }

  Apple_Parsec_Search_PegasusQueryContext.suspendRequestIfNecessary(_:_:_:)(v72, a1, v76);
  MEMORY[0x28223BE20](v32, v33);
  Date.init()();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch18PommesLocationInfoVAC0F5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch18PommesLocationInfoVAC0F5ErrorOGMR);
  v59 = &v58;
  v60 = v34;
  LOBYTE(v58) = 2;
  v73(&v78, 0xD00000000000001ELL, 0x80000002234DFAB0, 0, v20, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 129, "addLocation(using:for:suspensionTimeInterval:)", 46, v58, partial apply for closure #2 in Apple_Parsec_Search_PegasusQueryContext.addLocation(using:for:suspensionTimeInterval:));
  v69(v20, v75);
  v35 = v78;
  v36 = v79;
  v37 = v80;
  if (v81)
  {
    if (v78)
    {
      if (v78 == 1)
      {
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        __swift_project_value_buffer(v38, static Logger.pommes);
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_2232BB000, v39, v40, "Location services disabled", v41, 2u);
          MEMORY[0x223DE0F80](v41, -1, -1);
        }
      }

      else
      {
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v54 = type metadata accessor for Logger();
        __swift_project_value_buffer(v54, static Logger.pommes);
        v39 = Logger.logObject.getter();
        v55 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v39, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&dword_2232BB000, v39, v55, "Siri location sharing disabled", v56, 2u);
          MEMORY[0x223DE0F80](v56, -1, -1);
        }
      }
    }

    else
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, static Logger.pommes);
      v39 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_2232BB000, v39, v52, "Location unavailable", v53, 2u);
        MEMORY[0x223DE0F80](v53, -1, -1);
      }
    }

    lazy protocol witness table accessor for type Apple_Parsec_Search_V2_Location and conformance Apple_Parsec_Search_V2_Location();
    static Message.with(_:)();
    Apple_Parsec_Search_PegasusQueryContext.location.setter();
    outlined consume of Result<PommesLocationInfo, LocationError>(v35, v36, v37, 1);
  }

  else
  {
    v42 = v80;
    v43 = v68;
    Date.init()();
    v44 = v66;
    v45 = v43 + *(v66 + 20);
    *v45 = "SiriInformationSearch/PegasusQueryContext+Extensions.swift";
    *(v45 + 8) = 58;
    *(v45 + 16) = 2;
    *(v43 + v44[6]) = 139;
    v46 = v43 + v44[7];
    *v46 = "addLocation(using:for:suspensionTimeInterval:)";
    *(v46 + 8) = 46;
    *(v46 + 16) = 2;
    v47 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000023);
    v48 = (v43 + v44[8]);
    *v48 = v47;
    v48[1] = v49._internal;
    v49.super.isa = v35;
    Apple_Parsec_Search_PegasusQueryContext.augment(withLocation:)(v49);
    if (v36)
    {
      if (v36 == 1)
      {
        v50 = MEMORY[0x277D39240];
      }

      else
      {
        v50 = MEMORY[0x277D39248];
      }
    }

    else
    {
      v50 = MEMORY[0x277D39250];
    }

    (*(v67 + 104))(v63, *v50, v62);
    v57 = Apple_Parsec_Search_PegasusQueryContext.location.modify();
    Apple_Parsec_Search_V2_Location.preciseStatus.setter();
    v57(&v78, 0);
    (*(*v77 + 184))(v43, 0);
    outlined consume of Result<PommesLocationInfo, LocationError>(v35, v36, v42, 0);
    _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v43, type metadata accessor for PerformanceUtil.Ticket);
  }
}

void Apple_Parsec_Search_PegasusQueryContext.addSiriLocale(using:)(uint64_t a1)
{
  v1 = [*(a1 + 120) languageCode];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    Apple_Parsec_Search_PegasusQueryContext.siriLocale.setter();
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.pommes);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2232BB000, oslog, v4, "Unable to add locale to QueryContext", v5, 2u);
      MEMORY[0x223DE0F80](v5, -1, -1);
    }
  }
}

void Apple_Parsec_Search_PegasusQueryContext.addSiriResponseLanguageVariant(using:)()
{
  v0 = PommesSearchRequest.responseVariantResult.getter();
  if (v1)
  {
    v2 = v0;
    v3 = v1;

    Apple_Parsec_Search_PegasusQueryContext.siriResponseLanguageVariant.setter();
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.pommes);

    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v10 = v7;
      *v6 = 136315138;
      v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, &v10);

      *(v6 + 4) = v8;
      _os_log_impl(&dword_2232BB000, oslog, v5, "Adding siri response language variant to query context: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x223DE0F80](v7, -1, -1);
      MEMORY[0x223DE0F80](v6, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocation:dataProviderManager:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v91 = a1;
  v86 = a4;
  v97 = type metadata accessor for Date();
  v92 = *(v97 - 8);
  v6 = *(v92 + 64);
  MEMORY[0x28223BE20](v97, v7);
  v9 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Parsec_Search_V2_Location();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = v79 - v18;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v89 = *(Context - 8);
  v90 = Context;
  v21 = *(v89 + 64);
  v23 = MEMORY[0x28223BE20](Context, v22);
  v82 = v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v27 = v79 - v26;
  v28 = type metadata accessor for SignpostToken();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8, v30);
  v32 = v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for OSSignposter();
  v83 = __swift_project_value_buffer(v33, static Signposter.pommes);
  v84 = v32;
  OSSignposter.begin(name:context:)("proxy.createQueryContext", 24, 2u, 0, v32);
  Apple_Parsec_Search_PegasusQueryContext.init()();
  v85 = v9;
  v94 = a3;
  if (a2)
  {
    v34 = a2;
    Apple_Parsec_Search_V2_Location.init()();
    v35 = [v34 coordinate];
    *&v36 = v36;
    MEMORY[0x223DDA160](v35, *&v36);
    [v34 coordinate];
    Apple_Parsec_Search_V2_Location.longitude.setter();
    (*(v11 + 16))(v16, v19, v10);
    v37 = v27;
    Apple_Parsec_Search_PegasusQueryContext.location.setter();

    v38 = (*(v11 + 8))(v19, v10);
  }

  else
  {
    v37 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_2234CF920;
    *(v40 + 56) = MEMORY[0x277D837D0];
    *(v40 + 32) = 0xD000000000000014;
    *(v40 + 40) = 0x80000002234DFB00;
    print(_:separator:terminator:)();

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.pommes);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_2232BB000, v42, v43, "Location unavailable", v44, 2u);
      MEMORY[0x223DE0F80](v44, -1, -1);
    }
  }

  if (one-time initialization token for shared != -1)
  {
    v38 = swift_once();
  }

  v45 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v38, v39);
  v46 = v37;
  v77 = v37;
  v78 = v94;
  v47 = v85;
  Date.init()();
  v49 = (*v45 + 200);
  v48 = *v49;
  v93 = v45;
  v50 = v49;
  v51 = MEMORY[0x277D84F78] + 8;
  v77 = &v76;
  v78 = MEMORY[0x277D84F78] + 8;
  LOBYTE(v76) = 2;
  v52 = v48;
  v96 = v48;
  v48(0xD000000000000015, 0x80000002234DF950, 0, v47, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 68, "build(for:withLocation:dataProviderManager:)", 44, v76, partial apply for closure #1 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocation:dataProviderManager:));
  v53 = v92 + 8;
  v88 = *(v92 + 8);
  v54 = v88(v47, v97);
  v81 = v79;
  MEMORY[0x28223BE20](v54, v55);
  v80 = v46;
  Date.init()();
  v78 = v51;
  v87 = v51;
  v77 = &v76;
  LOBYTE(v76) = 2;
  v95 = v50;
  v52(0xD000000000000012, 0x80000002234DFB50, 0, v47, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 72, "build(for:withLocation:dataProviderManager:)", 44, v76, partial apply for closure #2 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocation:dataProviderManager:));
  v56 = v88;
  v57 = v88(v47, v97);
  v81 = v79;
  MEMORY[0x28223BE20](v57, v58);
  Date.init()();
  v77 = &v76;
  v78 = v51;
  LOBYTE(v76) = 2;
  v59 = v96;
  v96(0xD000000000000026, 0x80000002234DF970, 0, v47, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 76, "build(for:withLocation:dataProviderManager:)", 44, v76, partial apply for closure #3 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocation:dataProviderManager:));
  v60 = v56(v47, v97);
  v81 = v79;
  MEMORY[0x28223BE20](v60, v61);
  v62 = v80;
  v76 = v94;
  Date.init()();
  v63 = v90;
  v77 = &v75;
  v78 = v90;
  LOBYTE(v76) = 2;
  v64 = v82;
  v59(0xD00000000000002DLL, 0x80000002234DF9A0, 0, v47, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 80, "build(for:withLocation:dataProviderManager:)", 44, v76, partial apply for closure #4 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocation:dataProviderManager:));
  v56(v47, v97);
  v81 = *(v89 + 40);
  v65 = (v81)(v62, v64, v63);
  v79[1] = v79;
  MEMORY[0x28223BE20](v65, v66);
  Date.init()();
  v77 = &v76;
  v78 = v63;
  LOBYTE(v76) = 2;
  v92 = v53;
  v96(0xD000000000000023, 0x80000002234DF9D0, 0, v47, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 83, "build(for:withLocation:dataProviderManager:)", 44, v76, partial apply for closure #5 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocation:dataProviderManager:));
  v67 = v88;
  v88(v47, v97);
  v68 = (v81)(v62, v64, v63);
  v69 = v97;
  MEMORY[0x28223BE20](v68, v70);
  Date.init()();
  v77 = &v76;
  v78 = v87;
  LOBYTE(v76) = 2;
  v96(0xD00000000000002BLL, 0x80000002234DFA00, 0, v47, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 86, "build(for:withLocation:dataProviderManager:)", 44, v76, partial apply for closure #6 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocation:dataProviderManager:));
  v67(v47, v69);
  v71 = type metadata accessor for PommesSearchRequest(0);
  if (*(v91 + *(v71 + 60)) == 1)
  {
    MEMORY[0x28223BE20](v71, v72);
    v76 = v94;
    Date.init()();
    v77 = &v75;
    v78 = v87;
    LOBYTE(v76) = 2;
    v96(0xD00000000000002BLL, 0x80000002234DFA30, 0, v47, "SiriInformationSearch/PegasusQueryContext+Extensions.swift", 58, 2, 91, "build(for:withLocation:dataProviderManager:)", 44, v76, partial apply for closure #7 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocation:dataProviderManager:));
    v67(v47, v69);
  }

  (*(v89 + 32))(v86, v62, v90);
  v73 = v84;
  OSSignposter.end(token:message:)(v84, 0, 0xE000000000000000);
  return _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v73, type metadata accessor for SignpostToken);
}

Swift::Void __swiftcall Apple_Parsec_Search_PegasusQueryContext.addLocation(using:)(CLLocation using)
{
  isa = using.super.isa;
  v2 = type metadata accessor for Apple_Parsec_Search_V2_Location();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  Apple_Parsec_Search_V2_Location.init()();
  v12 = [(objc_class *)isa coordinate];
  *&v13 = v13;
  MEMORY[0x223DDA160](v12, *&v13);
  [(objc_class *)isa coordinate];
  Apple_Parsec_Search_V2_Location.longitude.setter();
  (*(v3 + 16))(v8, v11, v2);
  Apple_Parsec_Search_PegasusQueryContext.location.setter();
  (*(v3 + 8))(v11, v2);
}

Swift::Void __swiftcall Apple_Parsec_Search_PegasusQueryContext.addInternalBuild()()
{
  AFIsInternalInstall();

  Apple_Parsec_Search_PegasusQueryContext.internalBuild.setter();
}

uint64_t closure #4 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocationManager:dataProviderManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v7 = *(Context - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](Context, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a2, Context);
  (*(*a1 + 352))(v11, a3);
  return (*(v7 + 8))(v11, Context);
}

uint64_t closure #5 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocationManager:dataProviderManager:)(uint64_t a1, uint64_t a2)
{
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v5 = *(Context - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](Context, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a2, Context);
  (*(*a1 + 392))(v9);
  return (*(v5 + 8))(v9, Context);
}

uint64_t partial apply for closure #1 in Apple_Parsec_Search_PegasusQueryContext.addLocation(using:for:suspensionTimeInterval:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  result = (*(v5 + 32))(v4, v5);
  *a1 = result;
  a1[1] = v7;
  return result;
}

void Apple_Parsec_Search_PegasusQueryContext.suspendRequestIfNecessary(_:_:_:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v35 - v14;
  if (Apple_Parsec_Search_PegasusQueryContext.shouldSuspend(_:_:)(a1, a2))
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    v35[0] = __swift_project_value_buffer(v16, static Logger.pommes);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2232BB000, v17, v18, "locationManager.status is pending. Suspending execution until location available or timeout.", v19, 2u);
      MEMORY[0x223DE0F80](v19, -1, -1);
    }

    v20 = dispatch_semaphore_create(0);
    v21 = a2[3];
    v22 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v21);
    v35[1] = (*(v22 + 56))(v21, v22);
    *(swift_allocObject() + 16) = v20;
    v23 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVys6ResultOy21SiriInformationSearch14LocationStatusOAF0H5ErrorOGs5NeverOGMd, &_s7Combine12AnyPublisherVys6ResultOy21SiriInformationSearch14LocationStatusOAF0H5ErrorOGs5NeverOGMR);
    lazy protocol witness table accessor for type AnyPublisher<Result<LocationStatus, LocationError>, Never> and conformance AnyPublisher<A, B>();
    Publisher<>.sink(receiveValue:)();

    static DispatchTime.now()();
    MEMORY[0x223DDF450](v12, a3);
    v24 = *(v7 + 8);
    v24(v12, v6);
    v25 = MEMORY[0x223DDFC40](v15);
    v24(v15, v6);
    AnyCancellable.cancel()();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    v28 = os_log_type_enabled(v26, v27);
    if (v25)
    {
      if (v28)
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        v30 = "Timed out waiting to receive location. Resuming execution with no location info.";
LABEL_18:
        _os_log_impl(&dword_2232BB000, v26, v27, v30, v29, 2u);
        MEMORY[0x223DE0F80](v29, -1, -1);
      }
    }

    else if (v28)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "Resuming execution to add location to Pegasus request";
      goto LABEL_18;
    }

    return;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.pommes);
  v35[0] = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35[0], v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_2232BB000, v35[0], v32, "Will not suspend request. Continuing to add location.", v33, 2u);
    MEMORY[0x223DE0F80](v33, -1, -1);
  }

  v34 = v35[0];
}

double closure #2 in Apple_Parsec_Search_PegasusQueryContext.addLocation(using:for:suspensionTimeInterval:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (a1 + *(type metadata accessor for PommesSearchRequest(0) + 32));
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = a2[3];
    v9 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch18PommesLocationInfoV7OptionsOGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch18PommesLocationInfoV7OptionsOGMR);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2234CF920;
    *(v10 + 32) = v7;
    *(v10 + 40) = v6;
    v11 = *(v9 + 24);

    v11(&v17, v10, v8, v9);
  }

  else
  {
    v12 = a2[3];
    v13 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v12);
    (*(v13 + 24))(&v17, MEMORY[0x277D84F90], v12, v13);
  }

  v14 = v18;
  v15 = v19;
  result = *&v17;
  *a3 = v17;
  *(a3 + 16) = v14;
  *(a3 + 17) = v15;
  return result;
}

uint64_t closure #3 in Apple_Parsec_Search_PegasusQueryContext.addLocation(using:for:suspensionTimeInterval:)(uint64_t a1, unsigned int *a2)
{
  v3 = type metadata accessor for Apple_Parsec_Search_V2_Location.Source();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  (*(v7 + 104))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *a2);
  return Apple_Parsec_Search_V2_Location.source.setter();
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Search_V2_Location and conformance Apple_Parsec_Search_V2_Location()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Search_V2_Location and conformance Apple_Parsec_Search_V2_Location;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Search_V2_Location and conformance Apple_Parsec_Search_V2_Location)
  {
    type metadata accessor for Apple_Parsec_Search_V2_Location();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Search_V2_Location and conformance Apple_Parsec_Search_V2_Location);
  }

  return result;
}

void outlined consume of Result<PommesLocationInfo, LocationError>(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.shouldSuspend(_:_:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for PommesSearchRequest.ParseState(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LocationStatus();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  (*(v15 + 48))(v14, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMd, &_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMR) + 48);
    v20 = type metadata accessor for Date();
    (*(*(v20 - 8) + 8))(v13 + v19, v20);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v13, type metadata accessor for LocationStatus);
      return 0;
    }

    v17 = *(v13 + 16);

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_0(a1, v8, type metadata accessor for PommesSearchRequest.ParseState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v21 = *(v8 + 1);

    v22 = *(v8 + 2);

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR);
    v24 = *(v23 + 64);
    v25 = *&v8[*(v23 + 80) + 8];

    outlined destroy of Siri_Nlu_External_DelegatedUserDialogAct?(&v8[v24]);
    return 1;
  }

  else
  {
    _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v8, type metadata accessor for PommesSearchRequest.ParseState);
    return *(a1 + *(type metadata accessor for PommesSearchRequest(0) + 80));
  }
}

void closure #1 in Apple_Parsec_Search_PegasusQueryContext.suspendRequestIfNecessary(_:_:_:)(uint64_t a1)
{
  v2 = type metadata accessor for LocationStatus();
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v50[-v10];
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v50[-v14];
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v50[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14LocationStatusOAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14LocationStatusOAC0E5ErrorOGMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v50[-v22];
  outlined init with copy of Result<LocationStatus, LocationError>(a1, &v50[-v22]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of LocationStatus(v23, v18);
    _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_0(v18, v15, type metadata accessor for LocationStatus);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v15, type metadata accessor for LocationStatus);
    if (EnumCaseMultiPayload)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Logger.pommes);
      _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_0(v18, v11, type metadata accessor for LocationStatus);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v35, v36))
      {

        _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v11, type metadata accessor for LocationStatus);
        v48 = v18;
LABEL_30:
        _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v48, type metadata accessor for LocationStatus);
        return;
      }

      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v51 = v38;
      *v37 = 136315138;
      _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_0(v11, v7, type metadata accessor for LocationStatus);
      v39 = swift_getEnumCaseMultiPayload();
      if (v39 > 2)
      {
        if (v39 == 3)
        {
          v42 = 0x80000002234DF6F0;
          _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v11, type metadata accessor for LocationStatus);
          v43 = 0xD000000000000015;
        }

        else if (v39 == 4)
        {
          _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v11, type metadata accessor for LocationStatus);
          v42 = 0xEC000000656C6261;
          v43 = 0x6C696176616E752ELL;
        }

        else
        {
          _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v11, type metadata accessor for LocationStatus);
          v42 = 0xE800000000000000;
          v43 = 0x6E776F6E6B6E752ELL;
        }
      }

      else if (v39)
      {
        if (v39 == 1)
        {
          v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMd, &_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMR) + 48);
          _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v11, type metadata accessor for LocationStatus);
          v41 = type metadata accessor for Date();
          (*(*(v41 - 8) + 8))(&v7[v40], v41);
          v42 = 0xE800000000000000;
          v43 = 0x676E69646E65702ELL;
        }

        else
        {
          v42 = 0x80000002234DF710;
          _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v11, type metadata accessor for LocationStatus);
          v43 = 0xD000000000000011;
        }
      }

      else
      {
        _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v7, type metadata accessor for LocationStatus);
        v42 = 0x80000002234DF730;
        _s21SiriInformationSearch13SignpostTokenVWOhTm_0(v11, type metadata accessor for LocationStatus);
        v43 = 0xD00000000000001ELL;
      }

      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v42, &v51);

      *(v37 + 4) = v49;
      _os_log_impl(&dword_2232BB000, v35, v36, "locationManager.status changed to %s. Continuing suspension until location available or timeout.", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x223DE0F80](v38, -1, -1);
      MEMORY[0x223DE0F80](v37, -1, -1);
    }

    else
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, static Logger.pommes);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_2232BB000, v45, v46, "locationManager.status changed to available", v47, 2u);
        MEMORY[0x223DE0F80](v47, -1, -1);
      }

      OS_dispatch_semaphore.signal()();
    }

    v48 = v18;
    goto LABEL_30;
  }

  v24 = *v23;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.pommes);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v51 = v29;
    *v28 = 136315138;
    v50[7] = v24;
    lazy protocol witness table accessor for type LocationError and conformance LocationError();
    v30 = Error.localizedDescription.getter();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v51);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_2232BB000, v26, v27, "locationManager.statusPublisher failed with error=%s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x223DE0F80](v29, -1, -1);
    MEMORY[0x223DE0F80](v28, -1, -1);
  }
}

uint64_t Apple_Parsec_Search_PegasusQueryContext.addWeatherUnits(using:)(void *a1)
{
  v2 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.PressureUnit();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.DistanceUnit();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.PrecipitationUnit();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.WindUnit();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.TemperatureUnit();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v31 = MEMORY[0x28223BE20](v27, v30);
  v33 = &v38 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v38 - v35;
  Apple_Parsec_Search_V2_WeatherUnits.init()();
  static Apple_Parsec_Search_V2_WeatherUnits.TemperatureUnit.fromWeatherUnitManager(_:)(a1, v26);
  Apple_Parsec_Search_V2_WeatherUnits.temperature.setter();
  static Apple_Parsec_Search_V2_WeatherUnits.WindUnit.fromWeatherUnitManager(_:)(a1, v21);
  Apple_Parsec_Search_V2_WeatherUnits.wind.setter();
  static Apple_Parsec_Search_V2_WeatherUnits.PrecipitationUnit.fromWeatherUnitManager(_:)(a1, v16);
  Apple_Parsec_Search_V2_WeatherUnits.precipitation.setter();
  static Apple_Parsec_Search_V2_WeatherUnits.DistanceUnit.fromWeatherUnitManager(_:)(a1, v11);
  Apple_Parsec_Search_V2_WeatherUnits.distance.setter();
  static Apple_Parsec_Search_V2_WeatherUnits.PressureUnit.fromWeatherUnitManager(_:)(a1, v6);
  Apple_Parsec_Search_V2_WeatherUnits.pressure.setter();
  (*(v28 + 16))(v33, v36, v27);
  Apple_Parsec_Search_PegasusQueryContext.weatherUnits.setter();
  return (*(v28 + 8))(v36, v27);
}

void static Apple_Parsec_Search_V2_WeatherUnits.TemperatureUnit.fromWeatherUnitManager(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = objc_opt_self();
  v16 = v5;
  v7 = [v6 celsius];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
  LOBYTE(v4) = static NSObject.== infix(_:_:)();

  if (v4)
  {
    v8 = *MEMORY[0x277D39088];
    v9 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.TemperatureUnit();
    (*(*(v9 - 8) + 104))(a2, v8, v9);
  }

  else
  {
    v10 = [v6 fahrenheit];
    v11 = static NSObject.== infix(_:_:)();

    v12 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.TemperatureUnit();
    v13 = *(*(v12 - 8) + 104);
    if (v11)
    {
      v14 = MEMORY[0x277D39080];
    }

    else
    {
      v14 = MEMORY[0x277D39090];
    }

    v15 = *v14;

    v13(a2, v15, v12);
  }
}

void static Apple_Parsec_Search_V2_WeatherUnits.WindUnit.fromWeatherUnitManager(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v6 = objc_opt_self();
  v21 = v5;
  v7 = [v6 metersPerSecond];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSUnitSpeed, 0x277CCAE40);
  LOBYTE(v4) = static NSObject.== infix(_:_:)();

  if (v4)
  {
    v8 = MEMORY[0x277D390B8];
LABEL_7:
    v13 = *v8;
    v14 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.WindUnit();
    (*(*(v14 - 8) + 104))(a2, v13, v14);

    return;
  }

  v21 = v21;
  v9 = [v6 kilometersPerHour];
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    v8 = MEMORY[0x277D390C0];
    goto LABEL_7;
  }

  v21 = v21;
  v11 = [v6 milesPerHour];
  v12 = static NSObject.== infix(_:_:)();

  if (v12)
  {
    v8 = MEMORY[0x277D390B0];
    goto LABEL_7;
  }

  v15 = [v6 knots];
  v16 = static NSObject.== infix(_:_:)();

  v17 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.WindUnit();
  v18 = *(*(v17 - 8) + 104);
  if (v16)
  {
    v19 = MEMORY[0x277D390C8];
  }

  else
  {
    v19 = MEMORY[0x277D390D0];
  }

  v20 = *v19;

  v18(a2, v20, v17);
}

void static Apple_Parsec_Search_V2_WeatherUnits.PrecipitationUnit.fromWeatherUnitManager(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v6 = objc_opt_self();
  v19 = v5;
  v7 = [v6 inches];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  LOBYTE(v4) = static NSObject.== infix(_:_:)();

  if (v4)
  {
    v8 = MEMORY[0x277D390A0];
LABEL_5:
    v11 = *v8;
    v12 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.PrecipitationUnit();
    (*(*(v12 - 8) + 104))(a2, v11, v12);

    return;
  }

  v19 = v19;
  v9 = [v6 millimeters];
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    v8 = MEMORY[0x277D39098];
    goto LABEL_5;
  }

  v13 = [v6 centimeters];
  v14 = static NSObject.== infix(_:_:)();

  v15 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.PrecipitationUnit();
  v16 = *(*(v15 - 8) + 104);
  if (v14)
  {
    v17 = MEMORY[0x277D39098];
  }

  else
  {
    v17 = MEMORY[0x277D390A8];
  }

  v18 = *v17;

  v16(a2, v18, v15);
}

void static Apple_Parsec_Search_V2_WeatherUnits.DistanceUnit.fromWeatherUnitManager(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 32))(v3, v4);
  v6 = objc_opt_self();
  v16 = v5;
  v7 = [v6 miles];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  LOBYTE(v4) = static NSObject.== infix(_:_:)();

  if (v4)
  {
    v8 = *MEMORY[0x277D39048];
    v9 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.DistanceUnit();
    (*(*(v9 - 8) + 104))(a2, v8, v9);
  }

  else
  {
    v10 = [v6 kilometers];
    v11 = static NSObject.== infix(_:_:)();

    v12 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.DistanceUnit();
    v13 = *(*(v12 - 8) + 104);
    if (v11)
    {
      v14 = MEMORY[0x277D39040];
    }

    else
    {
      v14 = MEMORY[0x277D39050];
    }

    v15 = *v14;

    v13(a2, v15, v12);
  }
}

void static Apple_Parsec_Search_V2_WeatherUnits.PressureUnit.fromWeatherUnitManager(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 40))(v3, v4);
  v6 = objc_opt_self();
  v21 = v5;
  v7 = [v6 millibars];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSUnitPressure, 0x277CCAE38);
  LOBYTE(v4) = static NSObject.== infix(_:_:)();

  if (v4)
  {
    v8 = MEMORY[0x277D39078];
LABEL_7:
    v13 = *v8;
    v14 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.PressureUnit();
    (*(*(v14 - 8) + 104))(a2, v13, v14);

    return;
  }

  v21 = v21;
  v9 = [v6 inchesOfMercury];
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    v8 = MEMORY[0x277D39068];
    goto LABEL_7;
  }

  v21 = v21;
  v11 = [v6 hectopascals];
  v12 = static NSObject.== infix(_:_:)();

  if (v12)
  {
    v8 = MEMORY[0x277D39060];
    goto LABEL_7;
  }

  v15 = [v6 kilopascals];
  v16 = static NSObject.== infix(_:_:)();

  v17 = type metadata accessor for Apple_Parsec_Search_V2_WeatherUnits.PressureUnit();
  v18 = *(*(v17 - 8) + 104);
  if (v16)
  {
    v19 = MEMORY[0x277D39058];
  }

  else
  {
    v19 = MEMORY[0x277D39070];
  }

  v20 = *v19;

  v18(a2, v20, v17);
}

void partial apply for closure #1 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocation:dataProviderManager:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  Apple_Parsec_Search_PegasusQueryContext.addSiriLocale(using:)(v1);
}

uint64_t partial apply for closure #2 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocation:dataProviderManager:)()
{
  v1 = *(v0 + 16);
  AFIsInternalInstall();
  return Apple_Parsec_Search_PegasusQueryContext.internalBuild.setter();
}

void partial apply for closure #3 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocation:dataProviderManager:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  Apple_Parsec_Search_PegasusQueryContext.addSiriResponseLanguageVariant(using:)();
}

uint64_t partial apply for closure #6 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocationManager:dataProviderManager:)()
{
  return (*(**(v0 + 16) + 400))(*(v0 + 24));
}

{
  return partial apply for closure #6 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocation:dataProviderManager:)();
}

uint64_t partial apply for closure #7 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocationManager:dataProviderManager:)()
{
  return (*(**(v0 + 16) + 408))(*(v0 + 24), *(v0 + 32));
}

{
  return partial apply for closure #7 in static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocation:dataProviderManager:)();
}

uint64_t outlined destroy of Siri_Nlu_External_DelegatedUserDialogAct?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AnyPublisher<Result<LocationStatus, LocationError>, Never> and conformance AnyPublisher<A, B>()
{
  result = lazy protocol witness table cache variable for type AnyPublisher<Result<LocationStatus, LocationError>, Never> and conformance AnyPublisher<A, B>;
  if (!lazy protocol witness table cache variable for type AnyPublisher<Result<LocationStatus, LocationError>, Never> and conformance AnyPublisher<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine12AnyPublisherVys6ResultOy21SiriInformationSearch14LocationStatusOAF0H5ErrorOGs5NeverOGMd, &_s7Combine12AnyPublisherVys6ResultOy21SiriInformationSearch14LocationStatusOAF0H5ErrorOGs5NeverOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyPublisher<Result<LocationStatus, LocationError>, Never> and conformance AnyPublisher<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of Result<LocationStatus, LocationError>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14LocationStatusOAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14LocationStatusOAC0E5ErrorOGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type LocationError and conformance LocationError()
{
  result = lazy protocol witness table cache variable for type LocationError and conformance LocationError;
  if (!lazy protocol witness table cache variable for type LocationError and conformance LocationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationError and conformance LocationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationError and conformance LocationError;
  if (!lazy protocol witness table cache variable for type LocationError and conformance LocationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationError and conformance LocationError);
  }

  return result;
}

uint64_t _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t *PommesBridgeInstrumentationUtil.sharedInstance.unsafeMutableAddressor()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  return &static PommesBridgeInstrumentationUtil.sharedInstance;
}

uint64_t one-time initialization function for sharedInstance()
{
  type metadata accessor for PommesBridgeInstrumentationUtil();
  v0 = swift_allocObject();
  v0[2] = [objc_opt_self() sharedStream];
  v1 = type metadata accessor for InstrumentationUtil();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[3] = InstrumentationUtil.init()();
  type metadata accessor for AnalyticsComponentIdGenerator();
  v0[4] = swift_allocObject();
  v4 = type metadata accessor for FeatureChecker();
  result = swift_allocObject();
  v0[8] = v4;
  v0[9] = &protocol witness table for FeatureChecker;
  v0[5] = result;
  static PommesBridgeInstrumentationUtil.sharedInstance = v0;
  return result;
}

uint64_t static PommesBridgeInstrumentationUtil.sharedInstance.getter()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }
}

void *PommesBridgeInstrumentationUtil.__allocating_init(_:_:_:featureChecker:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  outlined init with take of DomainWarmupHandling(a4, (v8 + 5));
  return v8;
}

void *PommesBridgeInstrumentationUtil.init(_:_:_:featureChecker:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  outlined init with take of DomainWarmupHandling(a4, (v4 + 5));
  return v4;
}

void PommesBridgeInstrumentationUtil.logPommesRequestStarted(pommesCandidateId:requestId:rootRequestId:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v28 - v10;
  v12 = specialized PommesBridgeInstrumentationUtil.buildWrapperEventMessageForPommes(pommesCandidateId:requestId:rootRequestId:logResourceUtilization:)(a1, a2, a3);
  if (v12)
  {
    v13 = v12;
    v29 = [objc_allocWithZone(MEMORY[0x277D59788]) init];
    [v29 setExists:1];
    v14 = [v13 pommesBridgeContext];
    [v14 setStartedOrChanged_];

    [*(v3 + 16) emitMessage_];
    v15 = *(v3 + 24);
    v16 = dispatch thunk of InstrumentationUtil.powerLogger()();
    if (v16)
    {
      v17 = v16;
      v18 = [v16 captureSnapshot];

      if (v18)
      {
        v19 = [objc_opt_self() context];
        if (v19)
        {
          v20 = v19;
          UUID.init(uuidString:)();
          v21 = type metadata accessor for UUID();
          v22 = *(v21 - 8);
          isa = 0;
          if ((*(v22 + 48))(v11, 1, v21) != 1)
          {
            isa = UUID._bridgeToObjectiveC()().super.isa;
            (*(v22 + 8))(v11, v21);
          }

          [v18 logWithEventContext:v20 requestIdentifier:isa];
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.pommes);
    v29 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2232BB000, v29, v25, "Unable to log Pommes request started because wrapperEvent is nil", v26, 2u);
      MEMORY[0x223DE0F80](v26, -1, -1);
    }
  }

  v27 = v29;
}

void PommesBridgeInstrumentationUtil.logPommesRequestEnded(status:pommesCandidateId:requestId:rootRequestId:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v30 - v12;
  v14 = specialized PommesBridgeInstrumentationUtil.buildWrapperEventMessageForPommes(pommesCandidateId:requestId:rootRequestId:logResourceUtilization:)(a2, a3, a4);
  if (v14)
  {
    v15 = v14;
    v31 = [objc_allocWithZone(MEMORY[0x277D59778]) init];
    [v31 setStatus:a1];
    v16 = [v15 pommesBridgeContext];
    [v16 setEnded_];

    [*(v4 + 16) emitMessage_];
    v17 = *(v4 + 24);
    v18 = dispatch thunk of InstrumentationUtil.powerLogger()();
    if (v18)
    {
      v19 = v18;
      v20 = [v18 captureSnapshot];

      if (v20)
      {
        v21 = [objc_opt_self() context];
        if (v21)
        {
          v22 = v21;
          UUID.init(uuidString:)();
          v23 = type metadata accessor for UUID();
          v24 = *(v23 - 8);
          isa = 0;
          if ((*(v24 + 48))(v13, 1, v23) != 1)
          {
            isa = UUID._bridgeToObjectiveC()().super.isa;
            (*(v24 + 8))(v13, v23);
          }

          [v20 logWithEventContext:v22 requestIdentifier:isa];
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.pommes);
    v31 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2232BB000, v31, v27, "Unable to log Pommes request ended because wrapperEvent is nil", v28, 2u);
      MEMORY[0x223DE0F80](v28, -1, -1);
    }
  }

  v29 = v31;
}

void PommesBridgeInstrumentationUtil.logPommesRequestFailed(reason:pommesCandidateId:requestId:rootRequestId:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v30 - v12;
  v14 = specialized PommesBridgeInstrumentationUtil.buildWrapperEventMessageForPommes(pommesCandidateId:requestId:rootRequestId:logResourceUtilization:)(a2, a3, a4);
  if (v14)
  {
    v15 = v14;
    v31 = [objc_allocWithZone(MEMORY[0x277D59780]) init];
    [v31 setReason:a1];
    v16 = [v15 pommesBridgeContext];
    [v16 setFailed_];

    [*(v4 + 16) emitMessage_];
    v17 = *(v4 + 24);
    v18 = dispatch thunk of InstrumentationUtil.powerLogger()();
    if (v18)
    {
      v19 = v18;
      v20 = [v18 captureSnapshot];

      if (v20)
      {
        v21 = [objc_opt_self() context];
        if (v21)
        {
          v22 = v21;
          UUID.init(uuidString:)();
          v23 = type metadata accessor for UUID();
          v24 = *(v23 - 8);
          isa = 0;
          if ((*(v24 + 48))(v13, 1, v23) != 1)
          {
            isa = UUID._bridgeToObjectiveC()().super.isa;
            (*(v24 + 8))(v13, v23);
          }

          [v20 logWithEventContext:v22 requestIdentifier:isa];
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.pommes);
    v31 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2232BB000, v31, v27, "Unable to log Pommes request failed because wrapperEvent is nil", v28, 2u);
      MEMORY[0x223DE0F80](v28, -1, -1);
    }
  }

  v29 = v31;
}

void PommesBridgeInstrumentationUtil.logPommesRequestUnableToHandle(pommesCandidateId:requestId:rootRequestId:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = specialized PommesBridgeInstrumentationUtil.buildWrapperEventMessageForPommes(pommesCandidateId:requestId:rootRequestId:logResourceUtilization:)(a1, a2, a3);
  if (v4)
  {
    v5 = v4;
    oslog = [objc_allocWithZone(MEMORY[0x277D59790]) init];
    [oslog setExists:1];
    v6 = [v5 pommesBridgeContext];
    [v6 setCancelled_];

    [*(v3 + 16) emitMessage_];
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.pommes);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2232BB000, oslog, v8, "Unable to log Pommes request unable to habdle because wrapperEvent is nil", v9, 2u);
      MEMORY[0x223DE0F80](v9, -1, -1);
    }
  }
}

void *PommesBridgeInstrumentationUtil.logSearchCompletion(pommesCandidateId:requestId:rootRequestId:result:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8)
{
  v110 = a5;
  v111 = a6;
  v109 = a4;
  v112 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC5ErrorVSgMd, &_s21SiriInformationSearch06PommesC5ErrorVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v101 - v16;
  v18 = type metadata accessor for PommesSearchError(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v105 = (&v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  v24 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v23 - 8, v25);
  v104 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v101 - v29;
  v31 = type metadata accessor for PommesError();
  v106 = *(v31 - 8);
  v107 = v31;
  v32 = *(v106 + 64);
  v34 = MEMORY[0x28223BE20](v31, v33);
  MEMORY[0x28223BE20](v34, v35);
  v38 = &v101 - v37;
  if ((a8 & 1) == 0)
  {
    v50 = *(*v8 + 136);
    v51 = a7;
    v50(1, a2, a3, v109, v110, v111);
    (*(v19 + 56))(v112, 1, 1, v18);
    return a7;
  }

  v101 = v36;
  v102 = a2;
  v103 = a3;
  v108 = v19;
  v39 = v112;
  v114 = a7;
  v40 = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_willThrowTypedImpl();
  v114 = a7;
  v41 = a7;
  v42 = a7;
  if (swift_dynamicCast())
  {
    LOBYTE(v114) = v113;
    logAndMapSearchRequestProcessorError #1 (_:) in PommesBridgeInstrumentationUtil.logSearchCompletion(pommesCandidateId:requestId:rootRequestId:result:)(&v114, a7, v8, v102, v103, v109, v110, v111, v30);
    v44 = v106;
    v43 = v107;
    if ((*(v106 + 48))(v30, 1, v107) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v30, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
      v45 = *(v18 + 20);
      v46 = *MEMORY[0x277D56670];
      v47 = type metadata accessor for PommesSearchReason();
      (*(*(v47 - 8) + 104))(v39 + v45, v46, v47);
      lazy protocol witness table accessor for type PommesError and conformance PommesError();
      v48 = swift_allocError();
      (*(v44 + 104))(v49, *MEMORY[0x277D5CEE0], v43);
      outlined consume of Result<PommesResponse, Error>(a7);
    }

    else
    {
      v63 = *(v44 + 32);
      v63(v38, v30, v43);
      lazy protocol witness table accessor for type PommesError and conformance PommesError();
      v48 = swift_allocError();
      v63(v64, v38, v43);
      outlined consume of Result<PommesResponse, Error>(a7);
      v65 = *(v18 + 20);
      v66 = *MEMORY[0x277D56670];
      v67 = type metadata accessor for PommesSearchReason();
      (*(*(v67 - 8) + 104))(v39 + v65, v66, v67);
    }

    *v39 = v48;
    (*(v108 + 56))(v39, 0, 1, v18);
    return 0;
  }

  v114 = a7;
  v53 = a7;
  v54 = v18;
  v55 = swift_dynamicCast();
  v56 = *(v108 + 56);
  v108 += 56;
  if (!v55)
  {
    v105 = v8;
    v56(v17, 1, 1, v18);
    outlined destroy of MediaUserStateCenter?(v17, &_s21SiriInformationSearch06PommesC5ErrorVSgMd, &_s21SiriInformationSearch06PommesC5ErrorVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    __swift_project_value_buffer(v68, static Logger.pommes);
    v69 = a7;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    outlined consume of Result<PommesResponse, Error>(a7);
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v113 = a7;
      v114 = v73;
      *v72 = 136315138;
      v74 = a7;
      v75 = String.init<A>(describing:)();
      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &v114);

      *(v72 + 4) = v77;
      _os_log_impl(&dword_2232BB000, v70, v71, "Pommes request failed due to unknown error, not of expected types: %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      v78 = v73;
      v42 = a7;
      MEMORY[0x223DE0F80](v78, -1, -1);
      MEMORY[0x223DE0F80](v72, -1, -1);
    }

    v79 = v106;
    v80 = v39;
    v81 = v107;
    (*(*v105 + 18))(0, v102, v103, v109, v110, v111);
    v82 = *(v18 + 20);
    v83 = *MEMORY[0x277D56670];
    v84 = type metadata accessor for PommesSearchReason();
    (*(*(v84 - 8) + 104))(v80 + v82, v83, v84);
    lazy protocol witness table accessor for type PommesError and conformance PommesError();
    v85 = swift_allocError();
    (*(v79 + 104))(v86, *MEMORY[0x277D5CEE0], v81);
    outlined consume of Result<PommesResponse, Error>(v42);
    *v80 = v85;
    v87 = v80;
    v88 = v18;
    goto LABEL_21;
  }

  v56(v17, 0, 1, v18);
  v57 = v17;
  v58 = v105;
  outlined init with take of PommesSearchError(v57, v105);
  v114 = *v58;
  v59 = v114;
  if (swift_dynamicCast())
  {
    LOBYTE(v114) = v113;
    v60 = v104;
    logAndMapSearchRequestProcessorError #1 (_:) in PommesBridgeInstrumentationUtil.logSearchCompletion(pommesCandidateId:requestId:rootRequestId:result:)(&v114, v42, v8, v102, v103, v109, v110, v111, v104);
    v62 = v106;
    v61 = v107;
    if ((*(v106 + 48))(v60, 1, v107) != 1)
    {
      v89 = v54;
      v95 = *(v62 + 32);
      v96 = v101;
      v95(v101, v60, v61);
      lazy protocol witness table accessor for type PommesError and conformance PommesError();
      v97 = swift_allocError();
      v95(v98, v96, v61);
      outlined consume of Result<PommesResponse, Error>(v42);
      v99 = *(v54 + 20);
      v100 = type metadata accessor for PommesSearchReason();
      (*(*(v100 - 8) + 16))(v39 + v99, v58 + v99, v100);
      outlined destroy of PommesSearchError(v58);
      *v39 = v97;
      goto LABEL_20;
    }

    outlined destroy of MediaUserStateCenter?(v60, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  }

  else
  {
    v62 = v106;
    v61 = v107;
  }

  v89 = v54;
  v90 = *(v54 + 20);
  lazy protocol witness table accessor for type PommesError and conformance PommesError();
  v91 = swift_allocError();
  (*(v62 + 104))(v92, *MEMORY[0x277D5CEE0], v61);
  outlined consume of Result<PommesResponse, Error>(v42);
  v93 = *(v89 + 20);
  v94 = type metadata accessor for PommesSearchReason();
  (*(*(v94 - 8) + 16))(v39 + v93, v58 + v90, v94);
  outlined destroy of PommesSearchError(v58);
  *v39 = v91;
LABEL_20:
  v87 = v39;
  v88 = v89;
LABEL_21:
  v56(v87, 0, 1, v88);
  return 0;
}

uint64_t logAndMapSearchRequestProcessorError #1 (_:) in PommesBridgeInstrumentationUtil.logSearchCompletion(pommesCandidateId:requestId:rootRequestId:result:)@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = *a1;
  if (!(v15 >> 6))
  {
    if (v15 == 2)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static Logger.pommes);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_31;
      }

      v28 = a5;
      v29 = a6;
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2232BB000, v26, v27, "Declining Pommes request due to low PSC score. This is expected behavior for non-info requests.", v30, 2u);
      v31 = v30;
      a6 = v29;
      a5 = v28;
    }

    else
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, static Logger.pommes);
      v52 = a2;
      v26 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v26, v53))
      {
        goto LABEL_31;
      }

      v54 = swift_slowAlloc();
      v92 = a6;
      v55 = swift_slowAlloc();
      v97 = v55;
      *v54 = 136315138;
      v56 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v57 = String.init<A>(describing:)();
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v97);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_2232BB000, v26, v53, "Pommes request unable to be handled: %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      v60 = v55;
      a6 = v92;
      MEMORY[0x223DE0F80](v60, -1, -1);
      v31 = v54;
    }

    MEMORY[0x223DE0F80](v31, -1, -1);
LABEL_31:

    (*(*a3 + 152))(a4, a5, a6, a7, a8);
    v24 = MEMORY[0x277D5CEC8];
    goto LABEL_42;
  }

  if (v15 >> 6 == 1)
  {
    v16 = v15 & 0x3F;
    if ((v15 & 0x3F) == 1)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.pommes);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = a5;
        v21 = a6;
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_2232BB000, v18, v19, "Declining Pommes request due to missing DUDA. This is expected behavior for non-info requests.", v22, 2u);
        v23 = v22;
        a6 = v21;
        a5 = v20;
        MEMORY[0x223DE0F80](v23, -1, -1);
      }

      (*(*a3 + 144))(7, a4, a5, a6, a7, a8);
      v24 = MEMORY[0x277D5CEC0];
    }

    else
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.pommes);
      v43 = a2;
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v91 = v45;
        v46 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v97 = v90;
        *v46 = 136315138;
        v47 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v48 = String.init<A>(describing:)();
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v97);

        *(v46 + 4) = v50;
        _os_log_impl(&dword_2232BB000, v44, v91, "Pommes request failed due to a Pommes failure: %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v90);
        MEMORY[0x223DE0F80](v90, -1, -1);
        MEMORY[0x223DE0F80](v46, -1, -1);
      }

      (*(*a3 + 144))(7, a4, a5, a6, a7, a8);
      v24 = qword_2784DACB8[v16];
    }
  }

  else if (v15 == 128)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    __swift_project_value_buffer(v61, static Logger.pommes);
    v62 = a2;
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v93 = a6;
      v66 = swift_slowAlloc();
      v97 = v66;
      *v65 = 136315138;
      v67 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v68 = String.init<A>(describing:)();
      v70 = a4;
      v71 = a5;
      v72 = a8;
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v97);

      *(v65 + 4) = v73;
      a8 = v72;
      a5 = v71;
      a4 = v70;
      _os_log_impl(&dword_2232BB000, v63, v64, "Pommes request failed due to invalid state: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      v74 = v66;
      a6 = v93;
      MEMORY[0x223DE0F80](v74, -1, -1);
      MEMORY[0x223DE0F80](v65, -1, -1);
    }

    (*(*a3 + 144))(7, a4, a5, a6, a7, a8);
    v24 = MEMORY[0x277D5CEB8];
  }

  else if (v15 == 129)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.pommes);
    v33 = a2;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v97 = v37;
      *v36 = 136315138;
      v38 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v39 = String.init<A>(describing:)();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v97);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_2232BB000, v34, v35, "Pommes request failed due to getting no results: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x223DE0F80](v37, -1, -1);
      MEMORY[0x223DE0F80](v36, -1, -1);
    }

    (*(*a3 + 136))(2, a4, a5, a6, a7, a8);
    v24 = MEMORY[0x277D5CEF0];
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    __swift_project_value_buffer(v75, static Logger.pommes);
    v76 = a2;
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v94 = a6;
      v80 = swift_slowAlloc();
      v97 = v80;
      *v79 = 136315138;
      v81 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v82 = String.init<A>(describing:)();
      v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, &v97);

      *(v79 + 4) = v84;
      _os_log_impl(&dword_2232BB000, v77, v78, "Pommes request failed due to unavailable network: %s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v80);
      v85 = v80;
      a6 = v94;
      MEMORY[0x223DE0F80](v85, -1, -1);
      MEMORY[0x223DE0F80](v79, -1, -1);
    }

    (*(*a3 + 144))(6, a4, a5, a6, a7, a8);
    v24 = MEMORY[0x277D5CED0];
  }

LABEL_42:
  v86 = *v24;
  v87 = type metadata accessor for PommesError();
  v88 = *(v87 - 8);
  (*(v88 + 104))(a9, v86, v87);
  return (*(v88 + 56))(a9, 0, 1, v87);
}

void *PommesBridgeInstrumentationUtil.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  v3 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  return v0;
}

uint64_t PommesBridgeInstrumentationUtil.__deallocating_deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  v3 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);

  return swift_deallocClassInstance();
}

uint64_t specialized PommesBridgeInstrumentationUtil.getRCIdAndTRPId(pommesCandidateId:)(uint64_t a1)
{
  v2 = type metadata accessor for PommesCandidateId();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v7, a1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277D56618])
  {
    goto LABEL_2;
  }

  if (v8 == *MEMORY[0x277D56620])
  {
    (*(v3 + 96))(v7, v2);
    v12 = *v7;
    v11 = v7[1];
    v13 = v7[3];

    return v12;
  }

  else
  {
    if (v8 == *MEMORY[0x277D56610])
    {
LABEL_2:
      (*(v3 + 96))(v7, v2);
      result = *v7;
      v10 = v7[1];
      return result;
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.pommes);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2232BB000, v15, v16, "Unknown PommesCandidateId. Setting resultCandidateId and trpId to empty string.", v17, 2u);
      MEMORY[0x223DE0F80](v17, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    return 0;
  }
}

void *specialized PommesBridgeInstrumentationUtil.buildWrapperEventMessageForPommes(pommesCandidateId:requestId:rootRequestId:logResourceUtilization:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v56 = a3;
  v54 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v53 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v50 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v51 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v52 = &v50 - v20;
  v21 = specialized PommesBridgeInstrumentationUtil.getRCIdAndTRPId(pommesCandidateId:)(a1);
  v23 = v22;
  v55 = v3;
  v24 = v3[3];

  v25 = dispatch thunk of InstrumentationUtil.buildWrapperEventMessage(_:_:logResourceUtilization:)();

  if (v25)
  {

    v26 = [objc_allocWithZone(MEMORY[0x277D59770]) init];
    UUID.init(uuidString:)();

    v27 = *(v14 + 48);
    v28 = v14;
    if (v27(v12, 1, v13) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    else
    {
      v36 = v52;
      (*(v14 + 32))(v52, v12, v13);
      if (v26)
      {
        v37 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v38 = v26;
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v40 = [v37 initWithNSUUID_];

        v28 = v14;
        [v38 setTrpId_];
      }

      v14 = v28;
      (*(v28 + 8))(v36, v13);
    }

    v41 = v55[8];
    v42 = v55[9];
    __swift_project_boxed_opaque_existential_1(v55 + 5, v41);
    if ((*(v42 + 8))(v41, v42))
    {
      v43 = v53;
      UUID.init(uuidString:)();
      if (v27(v43, 1, v13) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v43, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
        v44 = v51;
        (*(v14 + 32))(v51, v43, v13);
        if (v26)
        {
          v45 = objc_allocWithZone(MEMORY[0x277D5AC78]);
          v46 = v26;
          v47 = UUID._bridgeToObjectiveC()().super.isa;
          v48 = [v45 initWithNSUUID_];

          [v46 setSubRequestId_];
        }

        (*(v14 + 8))(v44, v13);
      }
    }

    [v25 setPommesBridgeContext_];
  }

  else
  {

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.pommes);

    v30 = v56;

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v57 = v34;
      *v33 = 136315394;
      *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v30, &v57);
      *(v33 + 12) = 2080;
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v57);

      *(v33 + 14) = v35;
      _os_log_impl(&dword_2232BB000, v31, v32, "Unable to create ORCHSchemaORCHClientEvent for requestId=%s resultCandidateId=%s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v34, -1, -1);
      MEMORY[0x223DE0F80](v33, -1, -1);
    }

    else
    {
    }
  }

  return v25;
}

unint64_t lazy protocol witness table accessor for type PommesError and conformance PommesError()
{
  result = lazy protocol witness table cache variable for type PommesError and conformance PommesError;
  if (!lazy protocol witness table cache variable for type PommesError and conformance PommesError)
  {
    type metadata accessor for PommesError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesError and conformance PommesError);
  }

  return result;
}

uint64_t outlined init with take of PommesSearchError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PommesSearchError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PommesSearchError(uint64_t a1)
{
  v2 = type metadata accessor for PommesSearchError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AssistantDataSnapshot.MeCard.toProfileSliceProtobuf()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v17[-v6];
  v8 = type metadata accessor for Google_Protobuf_Any();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19[3] = type metadata accessor for Apple_Parsec_Siri_V2alpha_Person();
  v19[4] = lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_Person and conformance Apple_Parsec_Siri_V2alpha_Person(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_Person and conformance Apple_Parsec_Siri_V2alpha_Person, MEMORY[0x277D38FC0]);
  __swift_allocate_boxed_opaque_existential_1(v19);
  v18 = v1;
  static Message.with(_:)();
  defaultAnyTypeURLPrefix.getter();
  Google_Protobuf_Any.init(message:partial:typePrefix:)();
  (*(v9 + 56))(v7, 0, 1, v8);
  (*(v9 + 32))(v13, v7, v8);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  MEMORY[0x28223BE20](v14, v15);
  *&v17[-16] = v13;
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_Person and conformance Apple_Parsec_Siri_V2alpha_Person(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue, MEMORY[0x277D39768]);
  static Message.with(_:)();
  (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
  return (*(v9 + 8))(v13, v8);
}

uint64_t AssistantDataSnapshot.MeCard.toPersonProtobuf()()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Person();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_Person and conformance Apple_Parsec_Siri_V2alpha_Person(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_Person and conformance Apple_Parsec_Siri_V2alpha_Person, MEMORY[0x277D38FC0]);
  return static Message.with(_:)();
}

uint64_t closure #1 in AssistantDataSnapshot.MeCard.toProfileSliceProtobuf()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Google_Protobuf_Any();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v17);
  (*(v19 + 104))(&v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D39AD8]);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  (*(v10 + 104))(v14, *MEMORY[0x277D39D58], v9);
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter();
  (*(v4 + 16))(v8, a2, v3);
  return Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.setter();
}

uint64_t closure #1 in AssistantDataSnapshot.MeCard.toPersonProtobuf()(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress();
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2[1])
  {
    v9 = *a2;
    v10 = a2[1];

    Apple_Parsec_Siri_V2alpha_Person.givenName.setter();
  }

  if (a2[3])
  {
    v11 = a2[2];
    v12 = a2[3];

    Apple_Parsec_Siri_V2alpha_Person.middleName.setter();
  }

  if (a2[5])
  {
    v13 = a2[4];
    v14 = a2[5];

    Apple_Parsec_Siri_V2alpha_Person.familyName.setter();
  }

  if (a2[9])
  {
    v15 = a2[8];
    v16 = a2[9];

    Apple_Parsec_Siri_V2alpha_Person.fullName.setter();
  }

  if (a2[7])
  {
    v17 = a2[6];
    v18 = a2[7];

    Apple_Parsec_Siri_V2alpha_Person.nickname.setter();
  }

  if (a2[12])
  {
    v19 = a2[11];
    v20 = a2[12];

    Apple_Parsec_Siri_V2alpha_Person.contactIdentifier.setter();
  }

  v21 = a2[10];
  v22 = *(v21 + 16);
  if (v22)
  {
    v34[1] = a1;
    v36 = MEMORY[0x277D84F90];
    v23 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v25 = v36;
    v26 = (v21 + 32);
    v34[2] = v38 + 32;
    do
    {
      v27 = v26[1];
      v37[0] = *v26;
      v37[1] = v27;
      v28 = v26[2];
      v29 = v26[3];
      v30 = v26[5];
      v37[4] = v26[4];
      v37[5] = v30;
      v37[2] = v28;
      v37[3] = v29;
      MEMORY[0x28223BE20](v23, v24);
      v34[-2] = v37;
      outlined init with copy of AssistantDataSnapshot.MeCard.ContactAddress(v37, v35);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_Person and conformance Apple_Parsec_Siri_V2alpha_Person(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ContactAddress and conformance Apple_Parsec_Siri_V2alpha_ContactAddress, MEMORY[0x277D39648]);
      static Message.with(_:)();
      outlined destroy of AssistantDataSnapshot.MeCard.ContactAddress(v37);
      v36 = v25;
      v32 = *(v25 + 16);
      v31 = *(v25 + 24);
      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1);
        v25 = v36;
      }

      *(v25 + 16) = v32 + 1;
      v23 = (*(v38 + 32))(v25 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v32, v8, v4);
      v26 += 6;
      --v22;
    }

    while (v22);
  }

  return Apple_Parsec_Siri_V2alpha_Person.addresses.setter();
}

uint64_t outlined destroy of Google_Protobuf_Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in AssistantDataSnapshot.MeCard.ContactAddress.toContactAddressProtobuf()(uint64_t a1, uint64_t *a2)
{
  if (a2[1])
  {
    v3 = *a2;
    v4 = a2[1];

    result = Apple_Parsec_Siri_V2alpha_Person.givenName.setter();
  }

  if (a2[3])
  {
    v6 = a2[2];
    v7 = a2[3];

    result = Apple_Parsec_Siri_V2alpha_Person.middleName.setter();
  }

  if (a2[5])
  {
    v8 = a2[4];
    v9 = a2[5];

    result = Apple_Parsec_Siri_V2alpha_Person.familyName.setter();
  }

  if (a2[7])
  {
    v10 = a2[6];
    v11 = a2[7];

    result = Apple_Parsec_Siri_V2alpha_Person.nickname.setter();
  }

  if (a2[9])
  {
    v12 = a2[8];
    v13 = a2[9];

    result = Apple_Parsec_Siri_V2alpha_Person.fullName.setter();
  }

  if (a2[11])
  {
    v14 = a2[10];

    return Apple_Parsec_Siri_V2alpha_ContactAddress.countryCode.setter();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_Person and conformance Apple_Parsec_Siri_V2alpha_Person(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t AppIntentMetadataMapper.getAppIntentMetadata(bundleId:)(uint64_t a1, uint64_t a2)
{
  i = a1;
  v108 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVSgMd, &_s10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v109 = &v88 - v6;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata();
  v102 = *(v7 - 8);
  v103 = v7;
  v8 = *(v102 + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v100 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v101 = &v88 - v13;
  outlined init with copy of AppDataProviding(v2, v111);
  v105 = v113;
  v106 = v112;
  v104 = __swift_project_boxed_opaque_existential_1(v111, v112);
  if (one-time initialization token for mappings != -1)
  {
    goto LABEL_58;
  }

LABEL_2:
  v14 = static AppIntentMetadataMapper.mappings;
  v15 = MEMORY[0x277D84F90];
  v110 = MEMORY[0x277D84F90];
  v16 = 1 << *(static AppIntentMetadataMapper.mappings + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(static AppIntentMetadataMapper.mappings + 8);
  v19 = (v16 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v20 = 0;
  if (!v18)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_5:
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      if ([objc_opt_self() protocolOrNilWithIdentifier_])
      {
        break;
      }

      if (!v18)
      {
        goto LABEL_7;
      }
    }

    MEMORY[0x223DDF820]();
    if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v15 = v110;
  }

  while (v18);
  while (1)
  {
LABEL_7:
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_56;
    }

    if (v22 >= v19)
    {
      break;
    }

    v18 = v14[v22 + 8];
    ++v20;
    if (v18)
    {
      v20 = v22;
      goto LABEL_5;
    }
  }

  v23 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo16LNSystemProtocolC_SayAEGTt0g5Tf4g_n(v15);

  v25 = i;
  v24 = v108;
  v26 = (*(v105 + 8))(v23, 2, i, v108, v106);

  if (*(v26 + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(v25, v24), (v28 & 1) != 0))
  {
    v29 = *(*(v26 + 56) + 8 * v27);

    __swift_destroy_boxed_opaque_existential_1(v111);
    v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v31 = 0;
    v32 = v29 + 64;
    v33 = 1 << *(v29 + 32);
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v35 = v34 & *(v29 + 64);
    v36 = (v33 + 63) >> 6;
    v104 = v29;
    v105 = v102 + 48;
    v96 = (v102 + 32);
    v97 = v30;
    v95 = (v102 + 16);
    v94 = v102 + 8;
    v93 = v102 + 40;
    v98 = v36;
    v99 = v29 + 64;
LABEL_22:
    if (v35)
    {
      v37 = v31;
LABEL_27:
      v38 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v106 = *(v104[7] + ((v37 << 9) | (8 * v38)));
      v39 = [v106 systemProtocolMetadata];
      type metadata accessor for LNSystemProtocolIdentifier(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24LNSystemProtocolMetadata_pMd, &_sSo24LNSystemProtocolMetadata_pMR);
      lazy protocol witness table accessor for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier(&lazy protocol witness table cache variable for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier, type metadata accessor for LNSystemProtocolIdentifier);
      v40 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v41 = 0;
      v42 = v40 + 64;
      v43 = 1 << *(v40 + 32);
      if (v43 < 64)
      {
        v44 = ~(-1 << v43);
      }

      else
      {
        v44 = -1;
      }

      v45 = v44 & *(v40 + 64);
      v46 = (v43 + 63) >> 6;
      for (i = v40; ; v40 = i)
      {
        while (1)
        {
          while (1)
          {
            while (1)
            {
              do
              {
                if (!v45)
                {
                  while (1)
                  {
                    v48 = v41 + 1;
                    if (__OFADD__(v41, 1))
                    {
                      break;
                    }

                    if (v48 >= v46)
                    {

                      v31 = v37;
                      v36 = v98;
                      v32 = v99;
                      goto LABEL_22;
                    }

                    v47 = *(v42 + 8 * v48);
                    ++v41;
                    if (v47)
                    {
                      v41 = v48;
                      goto LABEL_38;
                    }
                  }

LABEL_56:
                  __break(1u);
LABEL_57:
                  __break(1u);
LABEL_58:
                  swift_once();
                  goto LABEL_2;
                }

                v47 = v45;
LABEL_38:
                v45 = (v47 - 1) & v47;
              }

              while (!v14[2]);
              v49 = (v41 << 9) | (8 * __clz(__rbit64(v47)));
              v50 = v14;
              v51 = *(*(v40 + 56) + v49);
              v52 = *(*(v40 + 48) + v49);
              swift_unknownObjectRetain();
              v53 = specialized __RawDictionaryStorage.find<A>(_:)(v52);
              if (v54)
              {
                break;
              }

              swift_unknownObjectRelease();
              v14 = v50;
            }

            v108 = v45;
            v55 = v50;
            v56 = v50[7] + 16 * v53;
            v58 = *v56;
            v57 = *(v56 + 8);
            v111[0] = v51;

            v58(v111);
            v59 = v109;

            if ((*v105)(v59, 1, v103) != 1)
            {
              break;
            }

            swift_unknownObjectRelease();

            outlined destroy of MediaUserStateCenter?(v59, &_s10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVSgMd, &_s10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVSgMR);
            v14 = v55;
            v40 = i;
            v45 = v108;
          }

          v92 = v51;
          v60 = v103;
          v89 = *v96;
          v89(v101, v59, v103);
          v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v63 = v62;
          (*v95)(v100, v101, v60);
          v64 = v97;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v111[0] = v64;
          v91 = v61;
          v66 = specialized __RawDictionaryStorage.find<A>(_:)(v61, v63);
          v67 = *(v64 + 16);
          v68 = (v65 & 1) == 0;
          v69 = v67 + v68;
          if (__OFADD__(v67, v68))
          {
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v14 = v55;
          if (*(v64 + 24) < v69)
          {
            break;
          }

          v45 = v108;
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v65 & 1) == 0)
            {
              goto LABEL_51;
            }
          }

          else
          {
            isUniquelyReferenced_nonNull_native = v65;
            v97 = v66;
            specialized _NativeDictionary.copy()(MEMORY[0x277D39C20], &_ss18_DictionaryStorageCySS10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVGMd, _ss18_DictionaryStorageCySS10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVGMR);
            v66 = v97;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              goto LABEL_51;
            }
          }

LABEL_49:
          v76 = v66;

          v97 = v111[0];
          v77 = v102;
          v78 = *(v111[0] + 56) + *(v102 + 72) * v76;
          v79 = v103;
          (*(v102 + 40))(v78, v100, v103);

          swift_unknownObjectRelease();
          (*(v77 + 8))(v101, v79);
          v40 = i;
        }

        v70 = v65;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v69, isUniquelyReferenced_nonNull_native, MEMORY[0x277D39C20], &_ss18_DictionaryStorageCySS10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVGMd, _ss18_DictionaryStorageCySS10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVGMR);
        v71 = specialized __RawDictionaryStorage.find<A>(_:)(v91, v63);
        v73 = v72 & 1;
        v74 = v70;
        v75 = v70 & 1;
        v45 = v108;
        if (v75 != v73)
        {
          goto LABEL_61;
        }

        v66 = v71;
        if (v74)
        {
          goto LABEL_49;
        }

LABEL_51:
        v80 = v63;
        v81 = v111[0];
        *(v111[0] + 8 * (v66 >> 6) + 64) |= 1 << v66;
        v82 = (v81[6] + 16 * v66);
        *v82 = v91;
        v82[1] = v80;
        v83 = v103;
        v89((v81[7] + *(v102 + 72) * v66), v100, v103);

        swift_unknownObjectRelease();
        (*(v102 + 8))(v101, v83);
        v84 = v81[2];
        v85 = __OFADD__(v84, 1);
        v86 = v84 + 1;
        if (v85)
        {
          goto LABEL_60;
        }

        v97 = v81;
        v81[2] = v86;
      }
    }

    while (1)
    {
      v37 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_57;
      }

      if (v37 >= v36)
      {
        break;
      }

      v35 = *(v32 + 8 * v37);
      ++v31;
      if (v35)
      {
        goto LABEL_27;
      }
    }

    return v97;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v111);
    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }
}

uint64_t one-time initialization function for mappings()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo26LNSystemProtocolIdentifiera_10PegasusAPI035Apple_Parsec_Siri_V2alpha_AppIntentE8MetadataVSgSo0deO0_pctGMd, &_ss23_ContiguousArrayStorageCySo26LNSystemProtocolIdentifiera_10PegasusAPI035Apple_Parsec_Siri_V2alpha_AppIntentE8MetadataVSgSo0deO0_pctGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234CF940;
  v1 = *MEMORY[0x277D23710];
  *(inited + 32) = *MEMORY[0x277D23710];
  *(inited + 40) = specialized thunk for @escaping @callee_guaranteed (@guaranteed LNSystemProtocolMetadata) -> (@out Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata?);
  *(inited + 48) = 0;
  v2 = *MEMORY[0x277D23718];
  *(inited + 56) = *MEMORY[0x277D23718];
  *(inited + 64) = specialized thunk for @escaping @callee_guaranteed (@guaranteed LNSystemProtocolMetadata) -> (@out Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata?);
  *(inited + 72) = 0;
  v3 = v1;
  v4 = v2;
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo26LNSystemProtocolIdentifiera_10PegasusAPI035Apple_Parsec_Siri_V2alpha_AppIntentD8MetadataVSgSo0cdN0_pcTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26LNSystemProtocolIdentifiera_yyctMd, &_sSo26LNSystemProtocolIdentifiera_yyctMR);
  result = swift_arrayDestroy();
  static AppIntentMetadataMapper.mappings = v5;
  return result;
}

uint64_t static AppIntentMetadataMapper.mapPlayVideo(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v69 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v57 - v10;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata.VideoCategory();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = v24;
    v60 = v19;
    v61 = v18;
    v62 = a1;
    swift_unknownObjectRetain();
    v59 = v23;
    Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.PlayVideoIntentMetadata.init()();
    v26 = [v25 supportedCategories];
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = *(v27 + 16);
    if (v28)
    {
      v58 = a2;
      v73 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
      v29 = v73;
      v68 = *MEMORY[0x277CB9E10];
      v66 = *MEMORY[0x277CB9E08];
      v30 = *MEMORY[0x277CB9E18];
      v63 = *MEMORY[0x277D39C00];
      v64 = v30;
      v31 = (v13 + 104);
      v65 = *MEMORY[0x277D39BE8];
      v71 = v13 + 32;
      v57[1] = v27;
      v32 = (v27 + 40);
      v67 = *MEMORY[0x277D39BF0];
      v72 = *MEMORY[0x277D39BF8];
      do
      {
        v34 = *(v32 - 1);
        v33 = *v32;

        VideoCategory.init(rawValue:)();
        v35 = type metadata accessor for VideoCategory();
        v36 = *(v35 - 8);
        v37 = (*(v36 + 48))(v11, 1, v35);
        v38 = v72;
        if (v37 != 1)
        {
          v39 = v11;
          v70 = v28;
          v40 = v29;
          v41 = v11;
          v42 = v31;
          v43 = v13;
          v44 = v17;
          v45 = v12;
          v46 = v69;
          outlined init with copy of MediaUserStateCenter?(v39, v69, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
          v47 = v46;
          v12 = v45;
          v17 = v44;
          v13 = v43;
          v31 = v42;
          v11 = v41;
          v29 = v40;
          v28 = v70;
          v48 = (*(v36 + 88))(v47, v35);
          v38 = v67;
          if (v48 != v68)
          {
            v38 = v65;
            if (v48 != v66)
            {
              v38 = v63;
              if (v48 != v64)
              {
                (*(v36 + 8))(v69, v35);
                v38 = v72;
              }
            }
          }
        }

        (*v31)(v17, v38, v12);
        outlined destroy of MediaUserStateCenter?(v11, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
        v73 = v29;
        v50 = *(v29 + 16);
        v49 = *(v29 + 24);
        if (v50 >= v49 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v49 > 1, v50 + 1, 1);
          v29 = v73;
        }

        *(v29 + 16) = v50 + 1;
        (*(v13 + 32))(v29 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v50, v17, v12);
        v32 += 2;
        --v28;
      }

      while (v28);

      a2 = v58;
    }

    else
    {

      v29 = MEMORY[0x277D84F90];
    }

    v54 = v59;
    MEMORY[0x223DDBB00](v29);
    v55 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata();
    MEMORY[0x28223BE20](v55, v56);
    v57[-2] = v54;
    lazy protocol witness table accessor for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata and conformance Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata, MEMORY[0x277D39C20]);
    static Message.with(_:)();
    swift_unknownObjectRelease();
    (*(*(v55 - 8) + 56))(a2, 0, 1, v55);
    return (*(v60 + 8))(v54, v61);
  }

  else
  {
    v51 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata();
    v52 = *(*(v51 - 8) + 56);

    return v52(a2, 1, 1, v51);
  }
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed LNSystemProtocolMetadata) -> (@out Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata?)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  return static AppIntentMetadataMapper.mapPlayVideo(_:)(*a1, a2);
}

{
  return static AppIntentMetadataMapper.mapShowInAppStringSearchResults(_:)(*a1, a2);
}

uint64_t static AppIntentMetadataMapper.mapShowInAppStringSearchResults(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v70 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v56 - v10;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata.StringSearchScope();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = v24;
    v61 = v19;
    v62 = v18;
    v63 = a1;
    swift_unknownObjectRetain();
    v60 = v23;
    Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.ShowInAppStringSearchResultsIntentMetadata.init()();
    v26 = [v25 searchScopes];
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = *(v27 + 16);
    if (v28)
    {
      v57 = a2;
      v74 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
      v29 = v74;
      v69 = *MEMORY[0x277CB9FF8];
      v67 = *MEMORY[0x277CB9FF0];
      v65 = *MEMORY[0x277CB9FE8];
      v59 = *MEMORY[0x277CB9FE0];
      v58 = *MEMORY[0x277D39BB0];
      v30 = (v13 + 104);
      v64 = *MEMORY[0x277D39BB8];
      v66 = *MEMORY[0x277D39BC0];
      v72 = v13 + 32;
      v56 = v27;
      v31 = (v27 + 40);
      v68 = *MEMORY[0x277D39BC8];
      v73 = *MEMORY[0x277D39BD0];
      do
      {
        v33 = *(v31 - 1);
        v32 = *v31;

        StringSearchScope.init(rawValue:)();
        v34 = type metadata accessor for StringSearchScope();
        v35 = *(v34 - 8);
        v36 = (*(v35 + 48))(v11, 1, v34);
        v37 = v73;
        if (v36 != 1)
        {
          v38 = v11;
          v71 = v28;
          v39 = v29;
          v40 = v11;
          v41 = v30;
          v42 = v13;
          v43 = v17;
          v44 = v12;
          v45 = v70;
          outlined init with copy of MediaUserStateCenter?(v38, v70, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
          v46 = v45;
          v12 = v44;
          v17 = v43;
          v13 = v42;
          v30 = v41;
          v11 = v40;
          v29 = v39;
          v28 = v71;
          v47 = (*(v35 + 88))(v46, v34);
          v37 = v68;
          if (v47 != v69)
          {
            v37 = v66;
            if (v47 != v67)
            {
              v37 = v64;
              if (v47 != v65)
              {
                v37 = v58;
                if (v47 != v59)
                {
                  (*(v35 + 8))(v70, v34);
                  v37 = v73;
                }
              }
            }
          }
        }

        (*v30)(v17, v37, v12);
        outlined destroy of MediaUserStateCenter?(v11, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
        v74 = v29;
        v49 = *(v29 + 16);
        v48 = *(v29 + 24);
        if (v49 >= v48 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v48 > 1, v49 + 1, 1);
          v29 = v74;
        }

        *(v29 + 16) = v49 + 1;
        (*(v13 + 32))(v29 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v49, v17, v12);
        v31 += 2;
        --v28;
      }

      while (v28);

      a2 = v57;
    }

    else
    {

      v29 = MEMORY[0x277D84F90];
    }

    v53 = v60;
    MEMORY[0x223DDBAC0](v29);
    v54 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata();
    MEMORY[0x28223BE20](v54, v55);
    *(&v56 - 2) = v53;
    lazy protocol witness table accessor for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata and conformance Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata, MEMORY[0x277D39C20]);
    static Message.with(_:)();
    swift_unknownObjectRelease();
    (*(*(v54 - 8) + 56))(a2, 0, 1, v54);
    return (*(v61 + 8))(v53, v62);
  }

  else
  {
    v50 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata();
    v51 = *(*(v50 - 8) + 56);

    return v51(a2, 1, 1, v50);
  }
}

uint64_t closure #2 in static AppIntentMetadataMapper.mapPlayVideo(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unsigned int *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataV06OneOf_J0OSgMd, &_s10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataV06OneOf_J0OSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v17 - v10;
  v12 = a3(0);
  (*(*(v12 - 8) + 16))(v11, a2, v12);
  v13 = *a4;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.OneOf_Metadata();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v11, v13, v14);
  (*(v15 + 56))(v11, 0, 1, v14);
  return Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata.metadata.setter();
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSShySSGGMd, &_ss18_DictionaryStorageCySSShySSGGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd, &_ss18_DictionaryStorageCySSSdGMR);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSaySDyS2SGGGMd, &_ss18_DictionaryStorageCySSSaySDyS2SGGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSo15StateCacheEntryCGMd, &_ss18_DictionaryStorageCySSSo15StateCacheEntryCGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSo12NSDictionaryCGMd, &_ss18_DictionaryStorageCySSSo12NSDictionaryCGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SiriInformationSearch7AppDataVGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch7AppDataVGMR);
  v46 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v43 = v3;
    v44 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    v45 = result;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v47 = (v13 - 1) & v13;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = v25[1];
      v50 = *v25;
      v27 = (*(v5 + 56) + 40 * v24);
      v28 = v27[1];
      v48 = *v27;
      v30 = v27[2];
      v29 = v27[3];
      v31 = v27[4];
      if ((v46 & 1) == 0)
      {
      }

      v49 = v29;
      v32 = v30;
      v33 = v28;
      v34 = *(v45 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v8 = v45;
      v35 = -1 << *(v45 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v15 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v17 = v49;
        v18 = v31;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v15 + 8 * v37);
          if (v41 != -1)
          {
            v16 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v36) & ~*(v15 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v17 = v49;
      v18 = v31;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v19 = (*(v45 + 48) + 16 * v16);
      *v19 = v50;
      v19[1] = v26;
      v20 = (*(v45 + 56) + 40 * v16);
      v13 = v47;
      *v20 = v48;
      v20[1] = v33;
      v20[2] = v32;
      v20[3] = v17;
      v20[4] = v18;
      ++*(v45 + 16);
      v5 = v44;
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v47 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_35;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v10, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSaySo16LNActionMetadataCGGMd, &_ss18_DictionaryStorageCySSSaySo16LNActionMetadataCGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS8Dispatch0C13TimeoutResultOGMd, &_ss18_DictionaryStorageCySS8Dispatch0C13TimeoutResultOGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SiriInformationSearch21DomainAffinityKVStoreCGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch21DomainAffinityKVStoreCGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSDySSSfGGMd, &_ss18_DictionaryStorageCySSSDySSSfGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SiriInformationSearch19OnScreenContextTypeOSaySSGGMd, &_ss18_DictionaryStorageCy21SiriInformationSearch19OnScreenContextTypeOSaySSGGMR);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SiriInformationSearch19OnScreenContextTypeOSSGMd, &_ss18_DictionaryStorageCy21SiriInformationSearch19OnScreenContextTypeOSSGMR);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = v23[1];
      v36 = *v23;
      if ((v35 & 1) == 0)
      {
      }

      v25 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v36;
      v17[1] = v24;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS21SiriInformationSearch18AudioItemCandidateCGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch18AudioItemCandidateCGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS21SiriInformationSearch12PommesResultCGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch12PommesResultCGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay20SiriInformationTypes15WarmupComponentOGGMd, &_ss18_DictionaryStorageCySSSay20SiriInformationTypes15WarmupComponentOGGMR);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, MEMORY[0x277D5DA48], &_ss18_DictionaryStorageCySS12SiriNLUTypes0C18_Nlu_External_SpanVGMd, &_ss18_DictionaryStorageCySS12SiriNLUTypes0C18_Nlu_External_SpanVGMR);
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v46 = &v42 - v9;
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS12SiriNLUTypes0C36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtGMd, &_ss18_DictionaryStorageCySS12SiriNLUTypes0C36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtGMR);
  v45 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v10 + 16))
  {
    v42 = v3;
    v43 = v10;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 56);
      v28 = (*(v10 + 48) + 16 * v26);
      v29 = *v28;
      v30 = v28[1];
      v31 = *(v44 + 72);
      v32 = v27 + v31 * v26;
      if (v45)
      {
        outlined init with take of (delegatedUDA: Siri_Nlu_External_DelegatedUserDialogAct, score: Double, isEligibleForCombination: Bool)(v32, v46);
      }

      else
      {
        outlined init with copy of MediaUserStateCenter?(v32, v46, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
      }

      v33 = *(v13 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = (*(v13 + 48) + 16 * v21);
      *v22 = v29;
      v22[1] = v30;
      result = outlined init with take of (delegatedUDA: Siri_Nlu_External_DelegatedUserDialogAct, score: Double, isEligibleForCombination: Bool)(v46, *(v13 + 56) + v31 * v21);
      ++*(v13 + 16);
      v10 = v43;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v10 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for PommesDialogStateManager.DialogValue();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SiriInformationSearch24PommesDialogStateManagerC0G5Value33_DDAE567450B270DABF8F98FB8100F132LLVGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch24PommesDialogStateManagerC0G5Value33_DDAE567450B270DABF8F98FB8100F132LLVGMR);
  v45 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v10 + 16))
  {
    v42 = v3;
    v43 = v10;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 56);
      v28 = (*(v10 + 48) + 16 * v26);
      v29 = *v28;
      v30 = v28[1];
      v31 = *(v44 + 72);
      v32 = v27 + v31 * v26;
      if (v45)
      {
        outlined init with take of PommesBridgeResultCandidateState(v32, v46, type metadata accessor for PommesDialogStateManager.DialogValue);
      }

      else
      {
        outlined init with copy of PommesBridgeResultCandidateState(v32, v46, type metadata accessor for PommesDialogStateManager.DialogValue);
      }

      v33 = *(v13 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = (*(v13 + 48) + 16 * v21);
      *v22 = v29;
      v22[1] = v30;
      result = outlined init with take of PommesBridgeResultCandidateState(v46, *(v13 + 56) + v31 * v21, type metadata accessor for PommesDialogStateManager.DialogValue);
      ++*(v13 + 16);
      v10 = v43;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v10 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v54 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PommesCandidateId();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v53 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v16 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy20SiriInformationTypes17PommesCandidateIdO0cD6Search0f12BridgeResultG5StateVGMd, &_ss18_DictionaryStorageCy20SiriInformationTypes17PommesCandidateIdO0cD6Search0f12BridgeResultG5StateVGMR);
  v50 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v18 = result;
  if (*(v15 + 16))
  {
    v45 = v3;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v46 = (v11 + 16);
    v47 = v11;
    v51 = (v11 + 32);
    v25 = result + 64;
    v48 = v15;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v52 = *(v11 + 72);
      v32 = v31 + v52 * v30;
      if (v50)
      {
        (*v51)(v53, v32, v10);
        v33 = *(v15 + 56);
        v34 = *(v49 + 72);
        outlined init with take of PommesBridgeResultCandidateState(v33 + v34 * v30, v54, type metadata accessor for PommesBridgeResultCandidateState);
      }

      else
      {
        (*v46)(v53, v32, v10);
        v35 = *(v15 + 56);
        v34 = *(v49 + 72);
        outlined init with copy of PommesBridgeResultCandidateState(v35 + v34 * v30, v54, type metadata accessor for PommesBridgeResultCandidateState);
      }

      v36 = *(v18 + 40);
      lazy protocol witness table accessor for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier(&lazy protocol witness table cache variable for type PommesCandidateId and conformance PommesCandidateId, MEMORY[0x277D56628]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v37 = -1 << *(v18 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v25 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v25 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v25 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v51)((*(v18 + 48) + v52 * v26), v53, v10);
      result = outlined init with take of PommesBridgeResultCandidateState(v54, *(v18 + 56) + v34 * v26, type metadata accessor for PommesBridgeResultCandidateState);
      ++*(v18 + 16);
      v11 = v47;
      v15 = v48;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_36;
    }

    v44 = 1 << *(v15 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero(v20, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v44;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v3 = v18;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSfGMd, &_ss18_DictionaryStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSfGMR);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v12 + 16))
  {
    v47 = v11;
    v48 = v6;
    v41 = v3;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v42 = (v7 + 16);
    v43 = v7;
    v45 = (v7 + 32);
    v22 = result + 64;
    v23 = v7;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v28 = v25 | (v16 << 6);
      v29 = *(v12 + 48);
      v46 = *(v23 + 72);
      v30 = v29 + v46 * v28;
      if (v44)
      {
        (*v45)(v47, v30, v48);
      }

      else
      {
        (*v42)(v47, v30, v48);
      }

      v31 = *(*(v12 + 56) + 4 * v28);
      v32 = *(v15 + 40);
      lazy protocol witness table accessor for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v33 = -1 << *(v15 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v22 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v22 + 8 * v35);
          if (v39 != -1)
          {
            v24 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v34) & ~*(v22 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = (*v45)(*(v15 + 48) + v46 * v24, v47, v48);
      *(*(v15 + 56) + 4 * v24) = v31;
      ++*(v15 + 16);
      v23 = v43;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v12 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v17, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v40;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v55 = a3(0);
  v11 = *(v55 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v55, v13);
  v54 = &v47 - v14;
  v15 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v16 = *(*v8 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v52 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v18 = result;
  if (*(v15 + 16))
  {
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v48 = v8;
    v49 = (v11 + 16);
    v50 = v15;
    v51 = v11;
    v53 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v31 = v28 | (v19 << 6);
      v32 = *(v15 + 56);
      v33 = (*(v15 + 48) + 16 * v31);
      v35 = *v33;
      v34 = v33[1];
      v36 = *(v51 + 72);
      v37 = v32 + v36 * v31;
      if (v52)
      {
        (*v53)(v54, v37, v55);
      }

      else
      {
        (*v49)(v54, v37, v55);
      }

      v38 = *(v18 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v39 = -1 << *(v18 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v25 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v25 + 8 * v41);
          if (v45 != -1)
          {
            v26 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v40) & ~*(v25 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v27 = (*(v18 + 48) + 16 * v26);
      *v27 = v35;
      v27[1] = v34;
      result = (*v53)(*(v18 + 56) + v36 * v26, v54, v55);
      ++*(v18 + 16);
      v15 = v50;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v23 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v8 = v48;
      goto LABEL_36;
    }

    v46 = 1 << *(v15 + 32);
    v8 = v48;
    if (v46 >= 64)
    {
      bzero(v20, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v46;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v8 = v18;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}