uint64_t sub_2314F55F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainToContactFrequencyByIntentSignal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314F565C(uint64_t a1)
{
  v2 = type metadata accessor for DomainToContactFrequencyByIntentSignal();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2314F56B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6B8, &unk_23158AC00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2314F5750()
{
  result = sub_231585D34();
  if (v1 <= 0x3F)
  {
    result = sub_2314EF33C();
    if (v2 <= 0x3F)
    {
      result = sub_231585A84();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2314F5834()
{
  result = sub_231586964();
  qword_27DD5B6D0 = result;
  *algn_27DD5B6D8 = v1;
  return result;
}

uint64_t static DomainToContactFrequencySignal.signalName.getter()
{
  if (qword_27DD5ADD0 != -1)
  {
    OUTLINED_FUNCTION_0_36();
  }

  v0 = qword_27DD5B6D0;

  return v0;
}

uint64_t DomainToContactFrequencySignal.entityID.getter()
{
  v1 = (v0 + *(type metadata accessor for DomainToContactFrequencySignal() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for DomainToContactFrequencySignal()
{
  result = qword_27DD5B6E0;
  if (!qword_27DD5B6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DomainToContactFrequencySignal.id.getter()
{
  v4[8] = 0;
  v1 = type metadata accessor for DomainToContactFrequencySignal();
  *v4 = *(v0 + *(v1 + 20));
  v2 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](v2);

  OUTLINED_FUNCTION_7_10();
  if (qword_27DD5ADD0 != -1)
  {
    OUTLINED_FUNCTION_0_36();
  }

  MEMORY[0x23192FF80](qword_27DD5B6D0, *algn_27DD5B6D8);
  OUTLINED_FUNCTION_7_10();
  v4[0] = *(v0 + *(v1 + 28));
  sub_231586A54();
  return *&v4[1];
}

uint64_t static DomainToContactFrequencySignal.instances(createdFor:useCases:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[0] = MEMORY[0x277D84F90];
  v17[1] = a1;
  v17[2] = a2;
  v17[3] = 0;
  v17[4] = 0;
  v17[5] = a3;

  v3 = sub_2314F6AE8(v17);
  sub_2314C1D18(v17);
  v4 = *(v3 + 16);
  if (!v4)
  {

    return MEMORY[0x277D84F90];
  }

  v5 = v3 + 32;
  v6 = MEMORY[0x277D84F90];
  do
  {
    sub_2314A2C74(v5, v16);
    sub_23149FD3C(v16, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B590, &qword_23158A9D8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
LABEL_11:
      sub_2314A2910(&v12, &qword_27DD5B598, &qword_23158A9E0);
      goto LABEL_12;
    }

    if (!*(&v13 + 1))
    {
      goto LABEL_11;
    }

    sub_23149FD3C(&v12, v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = *(v6 + 16);
      sub_2314F1698();
      v6 = v9;
    }

    v7 = *(v6 + 16);
    if (v7 >= *(v6 + 24) >> 1)
    {
      sub_2314F1698();
      v6 = v10;
    }

    *(v6 + 16) = v7 + 1;
    sub_23149FD3C(v15, v6 + 40 * v7 + 32);
LABEL_12:
    v5 += 40;
    --v4;
  }

  while (v4);

  return v6;
}

uint64_t static DomainToContactFrequencySignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_2314F6AE8(v3);
}

uint64_t static DomainToContactFrequencySignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314F6F14(v3, v1, v2);
}

uint64_t sub_2314F5CA8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v21 = a5;
  v24 = a2;
  v25 = a3;
  v7 = type metadata accessor for DomainToContactFrequencySignal();
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v29 = MEMORY[0x277D84F90];
  sub_23152D5B8();
  v11 = v29;
  v12 = 0;
  v22 = sub_231585D34();
  v13 = *(*(v22 - 8) + 16);
  do
  {
    v14 = byte_28460FCD0[v12 + 32];
    v13(v10, v24, v22);
    v10[v7[5]] = v23;
    v15 = &v10[v7[6]];
    *v15 = v25;
    *(v15 + 1) = a4;
    v10[v7[7]] = v14;
    v29 = v11;
    v17 = *(v11 + 16);
    v16 = *(v11 + 24);

    if (v17 >= v16 >> 1)
    {
      sub_23152D5B8();
      v11 = v29;
    }

    ++v12;
    v27 = v7;
    v28 = &protocol witness table for DomainToContactFrequencySignal;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v26);
    sub_2314F7360(v10, boxed_opaque_existential_1);
    *(v11 + 16) = v17 + 1;
    sub_23149FD3C(&v26, v11 + 40 * v17 + 32);
    result = sub_2314F73C4(v10);
  }

  while (v12 != 8);
  *v21 = v11;
  return result;
}

uint64_t static DomainToContactFrequencySignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611BF8);
  *a1 = result;
  return result;
}

uint64_t DomainToContactFrequencySignal.value(completion:)(void (*a1)(uint64_t *), uint64_t a2)
{
  v3 = v2;
  v114 = a2;
  v5 = type metadata accessor for DomainToContactFrequencySignal();
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v109 = &v101 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v108 = &v101 - v16;
  v17 = sub_231585D34();
  v18 = OUTLINED_FUNCTION_4_1(v17);
  v111 = v19;
  v112 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11_0();
  v107 = v22 - v23;
  MEMORY[0x28223BE20](v24);
  v110 = &v101 - v25;
  v26 = sub_231585AE4();
  v27 = OUTLINED_FUNCTION_4_1(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_11_0();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v101 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  OUTLINED_FUNCTION_11_0();
  v42 = v40 - v41;
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v101 - v45;
  MEMORY[0x28223BE20](v44);
  v113 = &v101 - v47;
  v48 = sub_2314E76F4(*(v3 + *(v5 + 28)), byte_28460FCD0);
  if (v49)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v50 = sub_231585FF4();
    __swift_project_value_buffer(v50, qword_280D72248);
    sub_2314F7360(v3, v11);
    v51 = sub_231585FE4();
    v52 = sub_2315865E4();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      OUTLINED_FUNCTION_4_11(v54, 4.8149e-34);
      v115 = *(v11 + v55);
      v56 = DomainUseCase.rawValue.getter();
      MEMORY[0x23192FF80](v56);

      OUTLINED_FUNCTION_7_10();
      if (qword_27DD5ADD0 != -1)
      {
        OUTLINED_FUNCTION_0_36();
      }

      MEMORY[0x23192FF80](qword_27DD5B6D0, *algn_27DD5B6D8);
      OUTLINED_FUNCTION_7_10();
      v115 = *(v11 + *(v5 + 28));
      sub_231586A54();
      sub_2314F73C4(v11);
      v57 = sub_2314A22E8();

      *(v53 + 4) = v57;
      _os_log_impl(&dword_231496000, v51, v52, "Unsupported time bucket range received %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    else
    {

      sub_2314F73C4(v11);
    }

    v116 = sub_2315860F4();
    LOBYTE(v117) = 1;
    a1(&v116);
    return sub_2314A5EEC(v116, v117);
  }

  v103 = v48;
  v104 = v42;
  v105 = a1;
  v106 = v5;
  v58 = *(v5 + 20);
  v59 = *(v3 + v58);
  v60 = 1;
  if (v59 > 0xD)
  {
    v61 = v113;
  }

  else
  {
    v61 = v113;
    if (((1 << v59) & 0x2E5C) != 0)
    {
      sub_231585AD4();
      sub_231585AC4();
      v62 = *(v29 + 8);
      v62(v34, v26);
      v63 = (v3 + *(v106 + 24));
      v64 = *v63;
      v65 = v63[1];
      sub_231585AA4();
      v62(v37, v26);
      v60 = 0;
    }
  }

  __swift_storeEnumTagSinglePayload(v61, v60, 1, v26);
  v66 = v110;
  v67 = *(v111 + 16);
  v68 = v112;
  v67(v110, v3, v112);
  v69 = *(v3 + v58);
  sub_2314A1D9C(v61, v46, &qword_27DD5B4D0, &qword_23158A5D0);
  v70 = DomainToContactFrequencySignal.id.getter();
  v102 = v71;
  v72 = v107;
  v67(v107, v66, v68);
  LOBYTE(v116) = v69;
  v73 = DomainUseCase.intentTypes.getter();
  v74 = v108;
  if (v69 > 0xD)
  {
    goto LABEL_30;
  }

  if (((1 << v69) & 0xA95) == 0)
  {
    if (((1 << v69) & 0x3060) != 0)
    {
      v75 = v70;
      v76 = MEMORY[0x277D5FFB8];
      goto LABEL_18;
    }

LABEL_30:
    v75 = v70;
    v83 = sub_231585D74();
    v81 = v74;
    v82 = 1;
    goto LABEL_19;
  }

  v75 = v70;
  v76 = MEMORY[0x277D5FFC0];
LABEL_18:
  v78 = *v76;
  v79 = sub_231585D74();
  OUTLINED_FUNCTION_8(v79);
  (*(v80 + 104))(v74, v78, v79);
  v81 = v74;
  v82 = 0;
  v83 = v79;
LABEL_19:
  __swift_storeEnumTagSinglePayload(v81, v82, 1, v83);
  v84 = v104;
  if (v69 - 1 > 0xA)
  {
    v85 = 2;
  }

  else
  {
    v85 = byte_23158ACEA[(v69 - 1)];
  }

  sub_2314A1D9C(v46, v104, &qword_27DD5B4D0, &qword_23158A5D0);
  v86 = sub_2314A0DE8(v72, v73, v74, v85, v84, v75, v102, MEMORY[0x277D84F90], 0);
  sub_2314A2910(v46, &qword_27DD5B4D0, &qword_23158A5D0);
  (*(v111 + 8))(v110, v112);
  v87 = sub_23156D02C(v103, v86);

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v88 = sub_231585FF4();
  __swift_project_value_buffer(v88, qword_280D72248);
  v89 = v109;
  sub_2314F7360(v3, v109);

  v90 = sub_231585FE4();
  v91 = sub_2315865D4();

  v92 = os_log_type_enabled(v90, v91);
  v93 = v106;
  if (v92)
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_11(v95, 4.8151e-34);
    v115 = *(v89 + v96);
    v97 = DomainUseCase.rawValue.getter();
    MEMORY[0x23192FF80](v97);

    OUTLINED_FUNCTION_7_10();
    if (qword_27DD5ADD0 != -1)
    {
      OUTLINED_FUNCTION_0_36();
    }

    MEMORY[0x23192FF80](qword_27DD5B6D0, *algn_27DD5B6D8);
    OUTLINED_FUNCTION_7_10();
    v115 = *(v89 + *(v93 + 28));
    sub_231586A54();
    sub_2314F73C4(v89);
    v98 = sub_2314A22E8();

    *(v94 + 4) = v98;
    *(v94 + 12) = 2080;
    sub_2315860E4();
    v99 = sub_2314A22E8();

    *(v94 + 14) = v99;
    _os_log_impl(&dword_231496000, v90, v91, "%s value: %s", v94, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    sub_2314F73C4(v89);
  }

  v100 = v113;
  v116 = v87;
  LOBYTE(v117) = 1;
  v105(&v116);
  sub_2314A5EEC(v116, v117);
  return sub_2314A2910(v100, &qword_27DD5B4D0, &qword_23158A5D0);
}

uint64_t sub_2314F6868(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314F6F14(v3, v1, v2);
}

uint64_t sub_2314F68B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v13 - v2;
  v14[3] = &type metadata for NoParameters;
  v14[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v14, v3);
  v4 = sub_231585D34();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v4);
  sub_2314A2910(v3, &qword_27DD5B008, &unk_23158A5C0);
  if (EnumTagSinglePayload != 1)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v6 = sub_231585FF4();
    __swift_project_value_buffer(v6, qword_280D72248);
    v7 = sub_231585FE4();
    v8 = sub_2315865E4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13[2] = v10;
      *v9 = 136315138;
      v13[1] = type metadata accessor for DomainToContactFrequencySignal();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6F0, &qword_23158ACD8);
      sub_231586204();
      v11 = sub_2314A22E8();

      *(v9 + 4) = v11;
      _os_log_impl(&dword_231496000, v7, v8, "%s no entityName given", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return MEMORY[0x277D84F90];
}

uint64_t sub_2314F6AE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28[-1] - v4;
  v6 = sub_231585D34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[3] = &type metadata for SignalComputationContext;
  v30[4] = &protocol witness table for SignalComputationContext;
  v11 = swift_allocObject();
  v30[0] = v11;
  v12 = *(a1 + 16);
  v11[1] = *a1;
  v11[2] = v12;
  v11[3] = *(a1 + 32);
  sub_2314B5008(a1, v29);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v30, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2314A2910(v5, &qword_27DD5B008, &unk_23158A5C0);
LABEL_15:
    v19 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v13 = *(a1 + 40);
  (*(v7 + 32))(v10, v5, v6);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = &unk_2846104A0;
  }

  v29[0] = *(a1 + 8);
  v15 = *(&v29[0] + 1);
  if (!*(&v29[0] + 1))
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v20 = sub_231585FF4();
    __swift_project_value_buffer(v20, qword_280D72248);
    v21 = sub_231585FE4();
    v22 = sub_2315865E4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28[0] = v24;
      *v23 = 136315138;
      v28[2] = type metadata accessor for DomainToContactFrequencySignal();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6F0, &qword_23158ACD8);
      sub_231586204();
      v25 = sub_2314A22E8();

      *(v23 + 4) = v25;
      _os_log_impl(&dword_231496000, v21, v22, "%s no entityName given", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x231931280](v24, -1, -1);
      MEMORY[0x231931280](v23, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    goto LABEL_15;
  }

  v16 = *&v29[0];

  sub_2314A1D9C(v29, v28, &qword_27DD5B120, &qword_23158ACE0);

  MEMORY[0x28223BE20](v17);
  *(&v27 - 4) = v10;
  *(&v27 - 3) = v16;
  *(&v27 - 2) = v15;
  sub_231543A1C(sub_2314F74F0, (&v27 - 6), v14);
  v19 = v18;

  (*(v7 + 8))(v10, v6);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v30);
  return v19;
}

uint64_t sub_2314F6F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v32 - v8;
  v10 = sub_231585D34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[3] = a2;
  v37[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v37, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2314A2910(v9, &qword_27DD5B008, &unk_23158A5C0);
LABEL_15:
    v24 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  (*(v11 + 32))(v14, v9, v10);
  v16 = (*(a3 + 24))(a2, a3);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = &unk_2846104A0;
  }

  (*(a3 + 32))(&v33, a2, a3);
  v18 = v34;
  if (!v34)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v25 = sub_231585FF4();
    __swift_project_value_buffer(v25, qword_280D72248);
    v26 = sub_231585FE4();
    v27 = sub_2315865E4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33 = v29;
      *v28 = 136315138;
      v32[2] = type metadata accessor for DomainToContactFrequencySignal();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6F0, &qword_23158ACD8);
      sub_231586204();
      v30 = sub_2314A22E8();

      *(v28 + 4) = v30;
      _os_log_impl(&dword_231496000, v26, v27, "%s no entityName given", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x231931280](v29, -1, -1);
      MEMORY[0x231931280](v28, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    goto LABEL_15;
  }

  v19 = v35;
  v20 = v36;
  v21 = v33;

  v22 = sub_2314A0D38(v21, v18);
  MEMORY[0x28223BE20](v22);
  v32[-4] = v14;
  v32[-3] = v19;
  v32[-2] = v20;
  sub_231543A1C(sub_2314F74D0, &v32[-6], v17);
  v24 = v23;

  (*(v11 + 8))(v14, v10);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v37);
  return v24;
}

uint64_t sub_2314F7360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainToContactFrequencySignal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314F73C4(uint64_t a1)
{
  v2 = type metadata accessor for DomainToContactFrequencySignal();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2314F7448()
{
  result = sub_231585D34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2314F751C()
{
  result = sub_231586964();
  qword_27DD5B6F8 = result;
  unk_27DD5B700 = v1;
  return result;
}

uint64_t static DomainToContactRecencyRankSignal.signalName.getter()
{
  if (qword_27DD5ADD8 != -1)
  {
    OUTLINED_FUNCTION_0_37();
  }

  v0 = qword_27DD5B6F8;

  return v0;
}

uint64_t DomainToContactRecencyRankSignal.entityID.getter()
{
  v1 = (v0 + *(type metadata accessor for DomainToContactRecencyRankSignal() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for DomainToContactRecencyRankSignal()
{
  result = qword_27DD5B708;
  if (!qword_27DD5B708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DomainToContactRecencyRankSignal.entityID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DomainToContactRecencyRankSignal() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

unint64_t DomainToContactRecencyRankSignal.id.getter()
{
  v2 = *(v0 + *(type metadata accessor for DomainToContactRecencyRankSignal() + 20));
  v3 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_27DD5ADD8 != -1)
  {
    OUTLINED_FUNCTION_0_37();
  }

  MEMORY[0x23192FF80](qword_27DD5B6F8, unk_27DD5B700);
  return v3;
}

uint64_t static DomainToContactRecencyRankSignal.instances(createdFor:useCases:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[0] = MEMORY[0x277D84F90];
  v17[1] = a1;
  v17[2] = a2;
  v17[3] = 0;
  v17[4] = 0;
  v17[5] = a3;

  v3 = sub_2314F83D8(v17);
  sub_2314C1D18(v17);
  v4 = *(v3 + 16);
  if (!v4)
  {

    return MEMORY[0x277D84F90];
  }

  v5 = v3 + 32;
  v6 = MEMORY[0x277D84F90];
  do
  {
    sub_2314A2C74(v5, v16);
    sub_23149FD3C(v16, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B590, &qword_23158A9D8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
LABEL_11:
      sub_2314A2910(&v12, &qword_27DD5B598, &qword_23158A9E0);
      goto LABEL_12;
    }

    if (!*(&v13 + 1))
    {
      goto LABEL_11;
    }

    sub_23149FD3C(&v12, v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = *(v6 + 16);
      sub_2314F1698();
      v6 = v9;
    }

    v7 = *(v6 + 16);
    if (v7 >= *(v6 + 24) >> 1)
    {
      sub_2314F1698();
      v6 = v10;
    }

    *(v6 + 16) = v7 + 1;
    sub_23149FD3C(v15, v6 + 40 * v7 + 32);
LABEL_12:
    v5 += 40;
    --v4;
  }

  while (v4);

  return v6;
}

uint64_t static DomainToContactRecencyRankSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_2314F83D8(v3);
}

uint64_t static DomainToContactRecencyRankSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314F8804(v3, v1, v2);
}

uint64_t sub_2314F79C8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v10 = type metadata accessor for DomainToContactRecencyRankSignal();
  a5[3] = v10;
  a5[4] = &protocol witness table for DomainToContactRecencyRankSignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  v12 = sub_231585D34();
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, a2, v12);
  *(boxed_opaque_existential_1 + *(v10 + 20)) = v9;
  v13 = (boxed_opaque_existential_1 + *(v10 + 24));
  *v13 = a3;
  v13[1] = a4;
}

uint64_t static DomainToContactRecencyRankSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611C20);
  *a1 = result;
  return result;
}

uint64_t DomainToContactRecencyRankSignal.value(completion:)(void (*a1)(unint64_t *), uint64_t a2)
{
  v3 = v2;
  v73 = a2;
  v74 = a1;
  v4 = type metadata accessor for DomainToContactRecencyRankSignal();
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_12();
  v72 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v71 = &v69 - v11;
  v12 = sub_231585D34();
  v13 = OUTLINED_FUNCTION_4_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_12();
  v70 = v18;
  v19 = sub_231585AE4();
  v20 = OUTLINED_FUNCTION_4_1(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v20);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v69 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v34 = &v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v69 - v35;
  v75 = v4;
  v76 = &v69 - v35;
  v37 = *(v4 + 20);
  v38 = *(v3 + v37);
  v39 = 1;
  if (v38 <= 0xD && ((1 << v38) & 0x2E5C) != 0)
  {
    sub_231585AD4();
    sub_231585AC4();
    v40 = *(v22 + 8);
    v40(v27, v19);
    v41 = (v3 + *(v75 + 24));
    v42 = *v41;
    v43 = v41[1];
    sub_231585AA4();
    v40(v29, v19);
    v36 = v76;
    v39 = 0;
  }

  __swift_storeEnumTagSinglePayload(v36, v39, 1, v19);
  v44 = v70;
  (*(v15 + 16))(v70, v3, v12);
  LOBYTE(v78) = *(v3 + v37);
  v45 = DomainUseCase.intentTypes.getter();
  v46 = *(v3 + v37);
  v47 = v72;
  if (v46 <= 0xD)
  {
    if (((1 << v46) & 0xA95) != 0)
    {
      v48 = MEMORY[0x277D5FFC0];
LABEL_9:
      v49 = *v48;
      v50 = sub_231585D74();
      OUTLINED_FUNCTION_8(v50);
      v52 = v71;
      (*(v51 + 104))(v71, v49, v50);
      v53 = v52;
      v54 = 0;
      v55 = v50;
      goto LABEL_10;
    }

    if (((1 << v46) & 0x3060) != 0)
    {
      v48 = MEMORY[0x277D5FFB8];
      goto LABEL_9;
    }
  }

  v55 = sub_231585D74();
  v52 = v71;
  v53 = v71;
  v54 = 1;
LABEL_10:
  __swift_storeEnumTagSinglePayload(v53, v54, 1, v55);
  if (*(v3 + v37) - 1 >= 0xB)
  {
    v56 = 2;
  }

  else
  {
    v56 = byte_23158AD82[(*(v3 + v37) - 1)];
  }

  sub_2314A1D9C(v36, v34, &qword_27DD5B4D0, &qword_23158A5D0);
  v57 = DomainToContactRecencyRankSignal.id.getter();
  v59 = sub_2314A0DE8(v44, v45, v52, v56, v34, v57, v58, MEMORY[0x277D84F90], 0);
  v60 = sub_23156D520(v59);

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v61 = sub_231585FF4();
  __swift_project_value_buffer(v61, qword_280D72248);
  sub_2314F8C50(v3, v47);

  v62 = sub_231585FE4();
  v63 = sub_2315865D4();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v64 = 136315394;
    v77 = *(v47 + *(v75 + 20));
    v78 = DomainUseCase.rawValue.getter();
    v79 = v65;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    if (qword_27DD5ADD8 != -1)
    {
      OUTLINED_FUNCTION_0_37();
    }

    MEMORY[0x23192FF80](qword_27DD5B6F8, unk_27DD5B700);
    sub_2314F8CB4(v47);
    v66 = sub_2314A22E8();

    *(v64 + 4) = v66;
    *(v64 + 12) = 2080;
    sub_2315860E4();
    v67 = sub_2314A22E8();

    *(v64 + 14) = v67;
    _os_log_impl(&dword_231496000, v62, v63, "%s value: %s", v64, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    sub_2314F8CB4(v47);
  }

  v78 = v60;
  LOBYTE(v79) = 1;
  v74(&v78);
  sub_2314A5EEC(v78, v79);
  return sub_2314A2910(v76, &qword_27DD5B4D0, &qword_23158A5D0);
}

uint64_t sub_2314F8158(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314F8804(v3, v1, v2);
}

uint64_t sub_2314F81A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v13 - v2;
  v14[3] = &type metadata for NoParameters;
  v14[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v14, v3);
  v4 = sub_231585D34();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v4);
  sub_2314A2910(v3, &qword_27DD5B008, &unk_23158A5C0);
  if (EnumTagSinglePayload != 1)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v6 = sub_231585FF4();
    __swift_project_value_buffer(v6, qword_280D72248);
    v7 = sub_231585FE4();
    v8 = sub_2315865E4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13[2] = v10;
      *v9 = 136315138;
      v13[1] = type metadata accessor for DomainToContactRecencyRankSignal();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B718, &unk_23158AD70);
      sub_231586204();
      v11 = sub_2314A22E8();

      *(v9 + 4) = v11;
      _os_log_impl(&dword_231496000, v7, v8, "%s no entityName given", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return MEMORY[0x277D84F90];
}

uint64_t sub_2314F83D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27[-1] - v4;
  v6 = sub_231585D34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[3] = &type metadata for SignalComputationContext;
  v29[4] = &protocol witness table for SignalComputationContext;
  v11 = swift_allocObject();
  v29[0] = v11;
  v12 = *(a1 + 16);
  v11[1] = *a1;
  v11[2] = v12;
  v11[3] = *(a1 + 32);
  sub_2314B5008(a1, v28);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v29, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2314A2910(v5, &qword_27DD5B008, &unk_23158A5C0);
LABEL_15:
    v18 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v13 = *(a1 + 40);
  (*(v7 + 32))(v10, v5, v6);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = &unk_2846104C8;
  }

  v28[0] = *(a1 + 8);
  v15 = *(&v28[0] + 1);
  if (!*(&v28[0] + 1))
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v19 = sub_231585FF4();
    __swift_project_value_buffer(v19, qword_280D72248);
    v20 = sub_231585FE4();
    v21 = sub_2315865E4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27[0] = v23;
      *v22 = 136315138;
      v27[2] = type metadata accessor for DomainToContactRecencyRankSignal();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B718, &unk_23158AD70);
      sub_231586204();
      v24 = sub_2314A22E8();

      *(v22 + 4) = v24;
      _os_log_impl(&dword_231496000, v20, v21, "%s no entityName given", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x231931280](v23, -1, -1);
      MEMORY[0x231931280](v22, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    goto LABEL_15;
  }

  v16 = *&v28[0];

  sub_2314A1D9C(v28, v27, &qword_27DD5B120, &qword_23158ACE0);

  MEMORY[0x28223BE20](v17);
  *(&v26 - 4) = v10;
  *(&v26 - 3) = v16;
  *(&v26 - 2) = v15;
  v18 = sub_2314DCD00(sub_2314F8D58, (&v26 - 6), v14);

  (*(v7 + 8))(v10, v6);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v18;
}

uint64_t sub_2314F8804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v31 - v8;
  v10 = sub_231585D34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[3] = a2;
  v36[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v36, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2314A2910(v9, &qword_27DD5B008, &unk_23158A5C0);
LABEL_15:
    v23 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  (*(v11 + 32))(v14, v9, v10);
  v16 = (*(a3 + 24))(a2, a3);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = &unk_2846104C8;
  }

  (*(a3 + 32))(&v32, a2, a3);
  v18 = v33;
  if (!v33)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v24 = sub_231585FF4();
    __swift_project_value_buffer(v24, qword_280D72248);
    v25 = sub_231585FE4();
    v26 = sub_2315865E4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32 = v28;
      *v27 = 136315138;
      v31[2] = type metadata accessor for DomainToContactRecencyRankSignal();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B718, &unk_23158AD70);
      sub_231586204();
      v29 = sub_2314A22E8();

      *(v27 + 4) = v29;
      _os_log_impl(&dword_231496000, v25, v26, "%s no entityName given", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x231931280](v28, -1, -1);
      MEMORY[0x231931280](v27, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    goto LABEL_15;
  }

  v19 = v34;
  v20 = v35;
  v21 = v32;

  v22 = sub_2314A0D38(v21, v18);
  MEMORY[0x28223BE20](v22);
  v31[-4] = v14;
  v31[-3] = v19;
  v31[-2] = v20;
  v23 = sub_2314DCD00(sub_2314F8D38, &v31[-6], v17);

  (*(v11 + 8))(v14, v10);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v36);
  return v23;
}

uint64_t sub_2314F8C50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainToContactRecencyRankSignal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314F8CB4(uint64_t a1)
{
  v2 = type metadata accessor for DomainToContactRecencyRankSignal();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2314F8D84()
{
  result = sub_231586964();
  qword_27DD5B720 = result;
  *algn_27DD5B728 = v1;
  return result;
}

uint64_t static DomainToContactRecencySignal.signalName.getter()
{
  if (qword_27DD5ADE0 != -1)
  {
    OUTLINED_FUNCTION_0_38();
  }

  v0 = qword_27DD5B720;

  return v0;
}

uint64_t DomainToContactRecencySignal.entityID.getter()
{
  v1 = (v0 + *(type metadata accessor for DomainToContactRecencySignal() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for DomainToContactRecencySignal()
{
  result = qword_27DD5B730;
  if (!qword_27DD5B730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t DomainToContactRecencySignal.id.getter()
{
  v2 = *(v0 + *(type metadata accessor for DomainToContactRecencySignal() + 20));
  v3 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_27DD5ADE0 != -1)
  {
    OUTLINED_FUNCTION_0_38();
  }

  MEMORY[0x23192FF80](qword_27DD5B720, *algn_27DD5B728);
  return v3;
}

uint64_t static DomainToContactRecencySignal.instances(createdFor:useCases:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[0] = MEMORY[0x277D84F90];
  v17[1] = a1;
  v17[2] = a2;
  v17[3] = 0;
  v17[4] = 0;
  v17[5] = a3;

  v3 = sub_2314F9FDC(v17);
  sub_2314C1D18(v17);
  v4 = *(v3 + 16);
  if (!v4)
  {

    return MEMORY[0x277D84F90];
  }

  v5 = v3 + 32;
  v6 = MEMORY[0x277D84F90];
  do
  {
    sub_2314A2C74(v5, v16);
    sub_23149FD3C(v16, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B590, &qword_23158A9D8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
LABEL_11:
      sub_2314A2910(&v12, &qword_27DD5B598, &qword_23158A9E0);
      goto LABEL_12;
    }

    if (!*(&v13 + 1))
    {
      goto LABEL_11;
    }

    sub_23149FD3C(&v12, v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = *(v6 + 16);
      sub_2314F1698();
      v6 = v9;
    }

    v7 = *(v6 + 16);
    if (v7 >= *(v6 + 24) >> 1)
    {
      sub_2314F1698();
      v6 = v10;
    }

    *(v6 + 16) = v7 + 1;
    sub_23149FD3C(v15, v6 + 40 * v7 + 32);
LABEL_12:
    v5 += 40;
    --v4;
  }

  while (v4);

  return v6;
}

uint64_t static DomainToContactRecencySignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_2314F9FDC(v3);
}

uint64_t static DomainToContactRecencySignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314FA408(v3, v1, v2);
}

uint64_t sub_2314F91A0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v10 = type metadata accessor for DomainToContactRecencySignal();
  a5[3] = v10;
  a5[4] = &protocol witness table for DomainToContactRecencySignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  v12 = sub_231585D34();
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, a2, v12);
  *(boxed_opaque_existential_1 + v10[5]) = v9;
  v13 = (boxed_opaque_existential_1 + v10[6]);
  *v13 = sub_2314E03E4;
  v13[1] = 0;
  v14 = (boxed_opaque_existential_1 + v10[7]);
  *v14 = a3;
  v14[1] = a4;
}

uint64_t static DomainToContactRecencySignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611C48);
  *a1 = result;
  return result;
}

uint64_t DomainToContactRecencySignal.value(completion:)(void (*a1)(unint64_t *), uint64_t a2)
{
  v3 = v2;
  v87 = a2;
  v88 = a1;
  v4 = type metadata accessor for DomainToContactRecencySignal();
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v89 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v86 = &v82 - v11;
  v12 = sub_231585D34();
  v13 = OUTLINED_FUNCTION_4_1(v12);
  v93 = v14;
  v94 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11_0();
  v91 = (v17 - v18);
  MEMORY[0x28223BE20](v19);
  v92 = &v82 - v20;
  v21 = sub_231585AE4();
  v22 = OUTLINED_FUNCTION_4_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_11_0();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v82 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  OUTLINED_FUNCTION_11_0();
  v85 = v35 - v36;
  v38 = MEMORY[0x28223BE20](v37);
  v40 = &v82 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v82 - v41;
  v90 = v4;
  v43 = *(v4 + 20);
  v44 = *(v3 + v43);
  v45 = 1;
  v95 = &v82 - v41;
  if (v44 <= 0xD && ((1 << v44) & 0x2E5C) != 0)
  {
    sub_231585AD4();
    sub_231585AC4();
    v46 = *(v24 + 8);
    v46(v29, v21);
    v47 = (v3 + *(v90 + 28));
    v48 = *v47;
    v49 = v47[1];
    sub_231585AA4();
    v46(v32, v21);
    v42 = v95;
    v45 = 0;
  }

  __swift_storeEnumTagSinglePayload(v42, v45, 1, v21);
  v50 = v92;
  v51 = *(v93 + 16);
  v52 = v94;
  v51(v92, v3, v94);
  v53 = *(v3 + v43);
  sub_2314A1D9C(v42, v40, &qword_27DD5B4D0, &qword_23158A5D0);
  v54 = DomainToContactRecencySignal.id.getter();
  v83 = v55;
  v84 = v54;
  v51(v91, v50, v52);
  LOBYTE(v97) = v53;
  v56 = DomainUseCase.intentTypes.getter();
  v57 = v86;
  if (v53 > 0xD)
  {
    goto LABEL_20;
  }

  if (((1 << v53) & 0xA95) != 0)
  {
    v58 = *MEMORY[0x277D5FFC0];
    v59 = sub_231585D74();
    OUTLINED_FUNCTION_8(v59);
    (*(v60 + 104))(v57, v58, v59);
    v61 = v57;
    v62 = 0;
    v63 = v59;
    goto LABEL_9;
  }

  if (((1 << v53) & 0x3060) != 0)
  {
    v64 = *MEMORY[0x277D5FFB8];
    v65 = sub_231585D74();
    OUTLINED_FUNCTION_8(v65);
    (*(v66 + 104))(v57, v64, v65);
    v61 = v57;
    v62 = 0;
    v63 = v65;
  }

  else
  {
LABEL_20:
    v63 = sub_231585D74();
    v61 = v57;
    v62 = 1;
  }

LABEL_9:
  __swift_storeEnumTagSinglePayload(v61, v62, 1, v63);
  if (v53 - 1 > 0xA)
  {
    v67 = 2;
  }

  else
  {
    v67 = byte_23158AE0A[(v53 - 1)];
  }

  v68 = v89;
  v69 = v85;
  sub_2314A1D9C(v40, v85, &qword_27DD5B4D0, &qword_23158A5D0);
  v70 = sub_2314A0DE8(v91, v56, v57, v67, v69, v84, v83, MEMORY[0x277D84F90], 0);
  sub_2314A2910(v40, &qword_27DD5B4D0, &qword_23158A5D0);
  (*(v93 + 8))(v92, v94);
  sub_2314A4360(v70);
  v72 = v71;

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v73 = sub_231585FF4();
  __swift_project_value_buffer(v73, qword_280D72248);
  sub_2314FA854(v3, v68);

  v74 = sub_231585FE4();
  v75 = sub_2315865D4();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    *v76 = 136315394;
    v96 = *(v68 + *(v90 + 20));
    v97 = DomainUseCase.rawValue.getter();
    v98 = v77;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    if (qword_27DD5ADE0 != -1)
    {
      OUTLINED_FUNCTION_0_38();
    }

    MEMORY[0x23192FF80](qword_27DD5B720, *algn_27DD5B728);
    v78 = v97;
    sub_2314FA8B8(v68);
    sub_2314A22E8();
    OUTLINED_FUNCTION_6_3();

    *(v76 + 4) = v78;
    *(v76 + 12) = 2080;
    sub_2315860E4();
    v79 = sub_2314A22E8();

    *(v76 + 14) = v79;
    _os_log_impl(&dword_231496000, v74, v75, "%s value: %s", v76, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    sub_2314FA8B8(v68);
  }

  v80 = v95;
  v97 = v72;
  LOBYTE(v98) = 1;
  v88(&v97);
  sub_2314A5EEC(v97, v98);
  return sub_2314A2910(v80, &qword_27DD5B4D0, &qword_23158A5D0);
}

void DomainToContactRecencySignal.derive(from:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = v2 + *(type metadata accessor for DomainToContactRecencySignal() + 24);
  v7 = *v6;
  v8 = *(v6 + 8);
  switch(v5)
  {
    case 1:
      v39 = *(v6 + 8);
      swift_retain_n();
      sub_2314EA928(v4, v7);
      OUTLINED_FUNCTION_6_3();

      *a2 = v2;
      goto LABEL_38;
    case 2:
      v11 = OUTLINED_FUNCTION_6_1(*&v4);
      if (!(v13 ^ v14 | v12))
      {
        goto LABEL_44;
      }

      if (v11 <= -9.22337204e18)
      {
        goto LABEL_45;
      }

      if (v11 >= 9.22337204e18)
      {
        goto LABEL_46;
      }

      v15 = v11;
      if ((v11 & 0x8000000000000000) == 0)
      {

        v7(v16);
        OUTLINED_FUNCTION_6_3();

        if (v8 < v15)
        {
          v15 = -1;
        }

        else
        {
          v15 = v8 - v15;
        }
      }

      *a2 = v15;
      goto LABEL_38;
    case 3:
      v41 = a2;
      v42 = *v6;
      v40 = v5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
      v17 = sub_231586AC4();
      v18 = v17;
      v19 = v4 + 64;
      v20 = 1 << *(v4 + 32);
      v21 = -1;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      i = v21 & *(v4 + 64);
      v23 = (v20 + 63) >> 6;
      v44 = v17 + 64;
      swift_retain_n();
      v24 = 0;
      v43 = v4;
      if (i)
      {
        goto LABEL_19;
      }

      break;
    default:
      if ((v4 & 0x8000000000000000) == 0)
      {
        v9 = *(v6 + 8);

        v7(v10);
        OUTLINED_FUNCTION_6_3();

        if (v8 < v4)
        {
          v4 = -1;
        }

        else
        {
          v4 = v8 - v4;
        }
      }

      *a2 = v4;
      goto LABEL_38;
  }

LABEL_20:
  v26 = v24;
  do
  {
    v24 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v24 >= v23)
    {

      LOBYTE(v5) = v40;
      a2 = v41;
      *v41 = v18;
LABEL_38:
      *(a2 + 8) = v5;
      return;
    }

    v27 = *(v19 + 8 * v24);
    ++v26;
  }

  while (!v27);
  v25 = __clz(__rbit64(v27));
  for (i = (v27 - 1) & v27; ; i &= i - 1)
  {
    v28 = v25 | (v24 << 6);
    v29 = OUTLINED_FUNCTION_6_1(*(*(v4 + 56) + 8 * v28));
    if (!(v13 ^ v14 | v12))
    {
      break;
    }

    if (v29 <= -9.22337204e18)
    {
      goto LABEL_41;
    }

    if (v29 >= 9.22337204e18)
    {
      goto LABEL_42;
    }

    v30 = (*(v4 + 48) + 16 * v28);
    v31 = *v30;
    v32 = v30[1];
    v33 = v29;

    if ((v33 & 0x8000000000000000) == 0)
    {
      v35 = v42(v34);
      if (v35 < v33)
      {
        v33 = -1;
      }

      else
      {
        v33 = v35 - v33;
      }
    }

    *(v44 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v36 = (v18[6] + 16 * v28);
    *v36 = v31;
    v36[1] = v32;
    *(v18[7] + 8 * v28) = v33;
    v37 = v18[2];
    v14 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v14)
    {
      goto LABEL_43;
    }

    v18[2] = v38;
    v4 = v43;
    if (!i)
    {
      goto LABEL_20;
    }

LABEL_19:
    v25 = __clz(__rbit64(i));
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

uint64_t sub_2314F9D5C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314FA408(v3, v1, v2);
}

uint64_t sub_2314F9DA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v13 - v2;
  v14[3] = &type metadata for NoParameters;
  v14[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v14, v3);
  v4 = sub_231585D34();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v4);
  sub_2314A2910(v3, &qword_27DD5B008, &unk_23158A5C0);
  if (EnumTagSinglePayload != 1)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v6 = sub_231585FF4();
    __swift_project_value_buffer(v6, qword_280D72248);
    v7 = sub_231585FE4();
    v8 = sub_2315865E4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13[2] = v10;
      *v9 = 136315138;
      v13[1] = type metadata accessor for DomainToContactRecencySignal();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B740, &unk_23158ADF8);
      sub_231586204();
      v11 = sub_2314A22E8();

      *(v9 + 4) = v11;
      _os_log_impl(&dword_231496000, v7, v8, "%s no entityName given", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return MEMORY[0x277D84F90];
}

uint64_t sub_2314F9FDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27[-1] - v4;
  v6 = sub_231585D34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[3] = &type metadata for SignalComputationContext;
  v29[4] = &protocol witness table for SignalComputationContext;
  v11 = swift_allocObject();
  v29[0] = v11;
  v12 = *(a1 + 16);
  v11[1] = *a1;
  v11[2] = v12;
  v11[3] = *(a1 + 32);
  sub_2314B5008(a1, v28);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v29, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2314A2910(v5, &qword_27DD5B008, &unk_23158A5C0);
LABEL_15:
    v18 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v13 = *(a1 + 40);
  (*(v7 + 32))(v10, v5, v6);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = &unk_284610448;
  }

  v28[0] = *(a1 + 8);
  v15 = *(&v28[0] + 1);
  if (!*(&v28[0] + 1))
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v19 = sub_231585FF4();
    __swift_project_value_buffer(v19, qword_280D72248);
    v20 = sub_231585FE4();
    v21 = sub_2315865E4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27[0] = v23;
      *v22 = 136315138;
      v27[2] = type metadata accessor for DomainToContactRecencySignal();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B740, &unk_23158ADF8);
      sub_231586204();
      v24 = sub_2314A22E8();

      *(v22 + 4) = v24;
      _os_log_impl(&dword_231496000, v20, v21, "%s no entityName given", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x231931280](v23, -1, -1);
      MEMORY[0x231931280](v22, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    goto LABEL_15;
  }

  v16 = *&v28[0];

  sub_2314A1D9C(v28, v27, &qword_27DD5B120, &qword_23158ACE0);

  MEMORY[0x28223BE20](v17);
  *(&v26 - 4) = v10;
  *(&v26 - 3) = v16;
  *(&v26 - 2) = v15;
  v18 = sub_2314DCD00(sub_2314FA9E4, (&v26 - 6), v14);

  (*(v7 + 8))(v10, v6);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v18;
}

uint64_t sub_2314FA408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v31 - v8;
  v10 = sub_231585D34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[3] = a2;
  v36[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v36, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2314A2910(v9, &qword_27DD5B008, &unk_23158A5C0);
LABEL_15:
    v23 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  (*(v11 + 32))(v14, v9, v10);
  v16 = (*(a3 + 24))(a2, a3);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = &unk_284610448;
  }

  (*(a3 + 32))(&v32, a2, a3);
  v18 = v33;
  if (!v33)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v24 = sub_231585FF4();
    __swift_project_value_buffer(v24, qword_280D72248);
    v25 = sub_231585FE4();
    v26 = sub_2315865E4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32 = v28;
      *v27 = 136315138;
      v31[2] = type metadata accessor for DomainToContactRecencySignal();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B740, &unk_23158ADF8);
      sub_231586204();
      v29 = sub_2314A22E8();

      *(v27 + 4) = v29;
      _os_log_impl(&dword_231496000, v25, v26, "%s no entityName given", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x231931280](v28, -1, -1);
      MEMORY[0x231931280](v27, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    goto LABEL_15;
  }

  v19 = v34;
  v20 = v35;
  v21 = v32;

  v22 = sub_2314A0D38(v21, v18);
  MEMORY[0x28223BE20](v22);
  v31[-4] = v14;
  v31[-3] = v19;
  v31[-2] = v20;
  v23 = sub_2314DCD00(sub_2314FA9C4, &v31[-6], v17);

  (*(v11 + 8))(v14, v10);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v36);
  return v23;
}

uint64_t sub_2314FA854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainToContactRecencySignal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314FA8B8(uint64_t a1)
{
  v2 = type metadata accessor for DomainToContactRecencySignal();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2314FA93C()
{
  result = sub_231585D34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2314FAA10()
{
  result = sub_231586964();
  qword_27DD5B748 = result;
  unk_27DD5B750 = v1;
  return result;
}

uint64_t static DomainToContactTimeSinceLastUsedSignal.signalName.getter()
{
  if (qword_27DD5ADE8 != -1)
  {
    OUTLINED_FUNCTION_0_39();
  }

  v0 = qword_27DD5B748;

  return v0;
}

unint64_t DomainToContactTimeSinceLastUsedSignal.id.getter()
{
  v2 = *(v0 + *(type metadata accessor for DomainToContactTimeSinceLastUsedSignal() + 28));
  v3 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_27DD5ADE8 != -1)
  {
    OUTLINED_FUNCTION_0_39();
  }

  MEMORY[0x23192FF80](qword_27DD5B748, unk_27DD5B750);
  return v3;
}

uint64_t type metadata accessor for DomainToContactTimeSinceLastUsedSignal()
{
  result = qword_27DD5B760;
  if (!qword_27DD5B760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static DomainToContactTimeSinceLastUsedSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314FB8A0(v3, v1, v2);
}

uint64_t sub_2314FABB4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a3;
  v7 = sub_231585D34();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v22[-v13];
  v23 = *a1;
  v15 = *(v8 + 16);
  v15(&v22[-v13], a2, v7);
  UsedSignal = type metadata accessor for DomainToContactTimeSinceLastUsedSignal();
  a4[3] = UsedSignal;
  a4[4] = &protocol witness table for DomainToContactTimeSinceLastUsedSignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v15(boxed_opaque_existential_1, v14, v7);
  *(boxed_opaque_existential_1 + UsedSignal[7]) = v23;
  v18 = v24;
  *(boxed_opaque_existential_1 + UsedSignal[5]) = v24;
  v15(v12, boxed_opaque_existential_1, v7);
  v19 = UsedSignal[6];
  v20 = v18;
  sub_231585A74();
  return (*(v8 + 8))(v14, v7);
}

uint64_t static DomainToContactTimeSinceLastUsedSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611C70);
  *a1 = result;
  return result;
}

uint64_t DomainToContactTimeSinceLastUsedSignal.value(completion:)(void (*a1)(unint64_t *), uint64_t a2)
{
  UsedSignal = type metadata accessor for DomainToContactTimeSinceLastUsedSignal();
  v6 = *(*(UsedSignal - 1) + 64);
  MEMORY[0x28223BE20](UsedSignal);
  v8 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_231585884();
  v9 = OUTLINED_FUNCTION_4_1(v105);
  v111 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v104 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_231585BA4();
  v15 = OUTLINED_FUNCTION_4_1(v14);
  v99 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_1();
  v110 = v19;
  MEMORY[0x28223BE20](v20);
  v98 = &v90 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6B8, &unk_23158AC00);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  OUTLINED_FUNCTION_3_1();
  v109 = v24;
  MEMORY[0x28223BE20](v25);
  v106 = (&v90 - v26);
  v107 = v14;
  sub_2315860F4();
  v27 = UsedSignal[6];
  v28 = *(v2 + UsedSignal[5]);
  LOBYTE(v113) = *(v2 + UsedSignal[7]);
  DomainUseCase.intentTypes.getter();
  v29 = sub_231585A44();
  v95 = 0;
  v94 = a1;
  v93 = a2;
  v92 = v8;
  v90 = UsedSignal;
  v91 = v2;
  v30 = v29;

  v31 = v111;
  v32 = sub_2315860F4();
  v33 = 0;
  v100 = v30;
  v36 = *(v30 + 64);
  v35 = v30 + 64;
  v34 = v36;
  v37 = 1 << *(v35 - 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & v34;
  v96 = (v37 + 63) >> 6;
  v97 = v99 + 16;
  v108 = (v99 + 32);
  v102 = v99 + 8;
  v103 = (v31 + 1);
  isUniquelyReferenced_nonNull_native = v107;
  v41 = v109;
  for (i = v35; ; v35 = i)
  {
    v111 = v32;
    if (!v39)
    {
      while (1)
      {
        v42 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v42 >= v96)
        {
          v32 = &qword_27DD5B640;
          v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
          __swift_storeEnumTagSinglePayload(v41, 1, 1, v78);
          v39 = 0;
          goto LABEL_11;
        }

        v39 = *(v35 + 8 * v42);
        ++v33;
        if (v39)
        {
          v33 = v42;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v42 = v33;
LABEL_10:
    v43 = __clz(__rbit64(v39));
    v39 &= v39 - 1;
    v44 = v43 | (v42 << 6);
    v45 = (*(v100 + 48) + 16 * v44);
    v47 = *v45;
    v46 = v45[1];
    v48 = v99;
    v49 = v98;
    (*(v99 + 16))(v98, *(v100 + 56) + *(v99 + 72) * v44, isUniquelyReferenced_nonNull_native);
    v32 = &qword_27DD5B640;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
    v51 = *(v50 + 48);
    v52 = v109;
    *v109 = v47;
    *(v52 + 1) = v46;
    v41 = v52;
    (*(v48 + 32))(&v52[v51], v49, isUniquelyReferenced_nonNull_native);
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v50);

LABEL_11:
    v53 = v106;
    sub_2314F56B8(v41, v106);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
    if (__swift_getEnumTagSinglePayload(v53, 1, v54) == 1)
    {
      break;
    }

    v56 = *v53;
    v55 = v53[1];
    (*v108)(v110, v53 + *(v54 + 48), isUniquelyReferenced_nonNull_native);
    v57 = v104;
    sub_231585B74();
    sub_2315857F4();
    v59 = v58;
    (*v103)(v57, v105);
    v60 = round(v59);
    v61 = v111;
    if ((*&v60 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_35;
    }

    if (v60 <= -9.22337204e18)
    {
      goto LABEL_36;
    }

    if (v60 >= 9.22337204e18)
    {
      goto LABEL_37;
    }

    if (v60 < 0 && __OFSUB__(0, v60))
    {
      goto LABEL_40;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v113 = v61;
    v62 = sub_23149C888(v56, v55);
    v64 = *(v61 + 16);
    v65 = (v63 & 1) == 0;
    v32 = (v64 + v65);
    if (__OFADD__(v64, v65))
    {
      goto LABEL_38;
    }

    v66 = v62;
    v67 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
    if (sub_231586A64())
    {
      v68 = sub_23149C888(v56, v55);
      if ((v67 & 1) != (v69 & 1))
      {
        result = sub_231586C84();
        __break(1u);
        return result;
      }

      v66 = v68;
    }

    if (v67)
    {

      v32 = v113;
      v70 = OUTLINED_FUNCTION_2_15();
      v71(v70);
    }

    else
    {
      v32 = v113;
      *(v113 + 8 * (v66 >> 6) + 64) |= 1 << v66;
      v72 = (v32[6] + 16 * v66);
      *v72 = v56;
      v72[1] = v55;
      v73 = OUTLINED_FUNCTION_2_15();
      v74(v73);
      v75 = v32[2];
      v76 = __OFADD__(v75, 1);
      v77 = v75 + 1;
      if (v76)
      {
        goto LABEL_39;
      }

      v32[2] = v77;
    }

    v41 = v109;
  }

  v32 = v111;
  if (qword_280D70420 == -1)
  {
    goto LABEL_28;
  }

LABEL_41:
  OUTLINED_FUNCTION_6_0();
LABEL_28:
  v79 = sub_231585FF4();
  __swift_project_value_buffer(v79, qword_280D72248);
  v80 = v92;
  sub_2314FBCAC(v91, v92);
  v81 = sub_231585FE4();
  v82 = sub_2315865D4();
  v83 = os_log_type_enabled(v81, v82);
  v84 = v94;
  if (v83)
  {
    v85 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    *v85 = 136315394;
    v112 = *(v80 + v90[7]);
    v113 = DomainUseCase.rawValue.getter();
    v114 = v86;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    if (qword_27DD5ADE8 != -1)
    {
      OUTLINED_FUNCTION_0_39();
    }

    MEMORY[0x23192FF80](qword_27DD5B748, unk_27DD5B750);
    sub_2314FBD10(v80);
    v87 = sub_2314A22E8();

    *(v85 + 4) = v87;
    *(v85 + 12) = 2080;

    sub_2315860E4();

    v88 = sub_2314A22E8();

    *(v85 + 14) = v88;
    _os_log_impl(&dword_231496000, v81, v82, "%s value: %s", v85, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    sub_2314FBD10(v80);
  }

  v113 = v32;
  LOBYTE(v114) = 1;

  v84(&v113);
  sub_2314A5EEC(v113, v114);
}

uint64_t sub_2314FB840(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314FB8A0(v3, v1, v2);
}

uint64_t sub_2314FB8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v29 - v8;
  v10 = sub_231585D34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[3] = a2;
  v30[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v30, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2314B5064(v9);
LABEL_15:
    v21 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  (*(v11 + 32))(v14, v9, v10);
  v16 = (*(a3 + 24))(a2, a3);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = &unk_28460FFA8;
  }

  v18 = (*(a3 + 48))(a2, a3);
  if (!v18)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v22 = sub_231585FF4();
    __swift_project_value_buffer(v22, qword_280D72248);
    v23 = sub_231585FE4();
    v24 = sub_2315865E4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29[2] = v26;
      *v25 = 136315138;
      v29[1] = type metadata accessor for DomainToContactTimeSinceLastUsedSignal();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B758, &unk_23158DE10);
      sub_231586204();
      v27 = sub_2314A22E8();

      *(v25 + 4) = v27;
      _os_log_impl(&dword_231496000, v23, v24, "%s no intent given", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x231931280](v26, -1, -1);
      MEMORY[0x231931280](v25, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    goto LABEL_15;
  }

  v19 = v18;
  v20 = MEMORY[0x28223BE20](v18);
  v29[-2] = v14;
  v29[-1] = v20;
  v21 = sub_2314DCD00(sub_2314FBE38, &v29[-4], v17);

  (*(v11 + 8))(v14, v10);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v30);
  return v21;
}

uint64_t sub_2314FBCAC(uint64_t a1, uint64_t a2)
{
  UsedSignal = type metadata accessor for DomainToContactTimeSinceLastUsedSignal();
  (*(*(UsedSignal - 8) + 16))(a2, a1, UsedSignal);
  return a2;
}

uint64_t sub_2314FBD10(uint64_t a1)
{
  UsedSignal = type metadata accessor for DomainToContactTimeSinceLastUsedSignal();
  (*(*(UsedSignal - 8) + 8))(a1, UsedSignal);
  return a1;
}

unint64_t sub_2314FBD94()
{
  result = sub_231585D34();
  if (v1 <= 0x3F)
  {
    result = sub_2314EF33C();
    if (v2 <= 0x3F)
    {
      result = sub_231585A84();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2314FBE68()
{
  result = sub_231586964();
  qword_27DD5B770 = result;
  *algn_27DD5B778 = v1;
  return result;
}

uint64_t static DomainToContactTotalFrequencyByIntentSignal.signalName.getter()
{
  if (qword_27DD5ADF0 != -1)
  {
    OUTLINED_FUNCTION_0_40();
  }

  v0 = qword_27DD5B770;

  return v0;
}

unint64_t DomainToContactTotalFrequencyByIntentSignal.id.getter()
{
  v2 = *(v0 + *(type metadata accessor for DomainToContactTotalFrequencyByIntentSignal() + 28));
  v3 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_27DD5ADF0 != -1)
  {
    OUTLINED_FUNCTION_0_40();
  }

  MEMORY[0x23192FF80](qword_27DD5B770, *algn_27DD5B778);
  return v3;
}

uint64_t type metadata accessor for DomainToContactTotalFrequencyByIntentSignal()
{
  result = qword_27DD5B788;
  if (!qword_27DD5B788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static DomainToContactTotalFrequencyByIntentSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314FCD78(v3, v1, v2);
}

uint64_t sub_2314FC00C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a3;
  v7 = sub_231585D34();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v22[-v13];
  v23 = *a1;
  v15 = *(v8 + 16);
  v15(&v22[-v13], a2, v7);
  v16 = type metadata accessor for DomainToContactTotalFrequencyByIntentSignal();
  a4[3] = v16;
  a4[4] = &protocol witness table for DomainToContactTotalFrequencyByIntentSignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v15(boxed_opaque_existential_1, v14, v7);
  *(boxed_opaque_existential_1 + v16[7]) = v23;
  v18 = v24;
  *(boxed_opaque_existential_1 + v16[5]) = v24;
  v15(v12, boxed_opaque_existential_1, v7);
  v19 = v16[6];
  v20 = v18;
  sub_231585A74();
  return (*(v8 + 8))(v14, v7);
}

uint64_t static DomainToContactTotalFrequencyByIntentSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611C98);
  *a1 = result;
  return result;
}

uint64_t DomainToContactTotalFrequencyByIntentSignal.value(completion:)(void (*a1)(unint64_t *), uint64_t a2)
{
  v5 = type metadata accessor for DomainToContactTotalFrequencyByIntentSignal();
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v98 = v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_231585BA4();
  v105 = *(v10 - 8);
  v11 = *(v105 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v115 = v12;
  MEMORY[0x28223BE20](v13);
  v104 = v97 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6B8, &unk_23158AC00);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_3_1();
  v114 = v17;
  MEMORY[0x28223BE20](v18);
  v111 = (v97 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v97 - v22;
  v24 = v10;
  v106 = sub_2315860F4();
  v25 = sub_2315860F4();
  v26 = *(v2 + *(v5 + 20));
  v101 = v5;
  v27 = *(v5 + 28);
  v102 = v2;
  LOBYTE(v117) = *(v2 + v27);
  v28 = v117;
  DomainUseCase.intentTypes.getter();
  if (v28 <= 0xD)
  {
    if (((1 << v28) & 0xA95) != 0)
    {
      v29 = MEMORY[0x277D5FFC0];
LABEL_6:
      v30 = *v29;
      v31 = sub_231585D74();
      OUTLINED_FUNCTION_8(v31);
      (*(v32 + 104))(v23, v30, v31);
      v33 = v23;
      v34 = 0;
      v35 = v31;
      goto LABEL_7;
    }

    if (((1 << v28) & 0x3060) != 0)
    {
      v29 = MEMORY[0x277D5FFB8];
      goto LABEL_6;
    }
  }

  v35 = sub_231585D74();
  v33 = v23;
  v34 = 1;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v33, v34, 1, v35);
  if (*(v102 + v27) - 1 < 0xB)
  {
    v36 = byte_23158AEFA[(*(v102 + v27) - 1)];
  }

  v37 = v102 + *(v101 + 24);
  v38 = sub_231585A34();
  v100 = a1;
  v99 = a2;
  v39 = v38;
  v97[1] = 0;
  sub_2314A2910(v23, &qword_27DD5B4C8, &unk_23158A6B0);

  v40 = v114;
  v41 = v10;
  v42 = 0;
  v106 = v39;
  v45 = *(v39 + 64);
  v44 = v39 + 64;
  v43 = v45;
  v46 = 1 << *(v44 - 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & v43;
  v49 = (v46 + 63) >> 6;
  v103 = v105 + 16;
  v113 = (v105 + 32);
  v109 = v24;
  v110 = v105 + 8;
  v50 = v115;
  v107 = v49;
  v108 = v44;
  if ((v47 & v43) != 0)
  {
    while (1)
    {
      v112 = v25;
      v51 = v41;
      v52 = v42;
LABEL_17:
      v53 = __clz(__rbit64(v48));
      v48 &= v48 - 1;
      v54 = v53 | (v52 << 6);
      v55 = v105;
      v56 = (*(v106 + 48) + 16 * v54);
      v58 = *v56;
      v57 = v56[1];
      v59 = v104;
      (*(v105 + 16))(v104, *(v106 + 56) + *(v105 + 72) * v54, v51);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
      v61 = *(v60 + 48);
      v62 = v114;
      *v114 = v58;
      v62[1] = v57;
      v40 = v62;
      v63 = *(v55 + 32);
      v41 = v51;
      v63(v40 + v61, v59, v51);
      __swift_storeEnumTagSinglePayload(v40, 0, 1, v60);

      v25 = v112;
      v50 = v115;
LABEL_18:
      v64 = v111;
      sub_2314F56B8(v40, v111);
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
      if (__swift_getEnumTagSinglePayload(v64, 1, v65) == 1)
      {
        break;
      }

      v67 = *v64;
      v66 = v64[1];
      (*v113)(v50, v64 + *(v65 + 48), v41);
      if (v25[2] && (v68 = sub_23149C888(v67, v66), (v69 & 1) != 0))
      {
        v70 = *(v25[7] + 8 * v68);
      }

      else
      {
        v70 = 0;
      }

      if (__OFADD__(v70, sub_231585B84()))
      {
        goto LABEL_44;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v117 = v25;
      v71 = sub_23149C888(v67, v66);
      v73 = v25[2];
      v74 = (v72 & 1) == 0;
      v25 = (v73 + v74);
      if (__OFADD__(v73, v74))
      {
        goto LABEL_45;
      }

      v41 = v71;
      v50 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
      if (sub_231586A64())
      {
        v75 = sub_23149C888(v67, v66);
        if ((v50 & 1) != (v76 & 1))
        {
          result = sub_231586C84();
          __break(1u);
          return result;
        }

        v41 = v75;
      }

      if (v50)
      {

        v25 = v117;
        v77 = OUTLINED_FUNCTION_2_16();
        v78(v77);
      }

      else
      {
        v25 = v117;
        *(v117 + 8 * (v41 >> 6) + 64) |= 1 << v41;
        v79 = (v25[6] + 16 * v41);
        *v79 = v67;
        v79[1] = v66;
        v80 = OUTLINED_FUNCTION_2_16();
        v81(v80);
        v82 = v25[2];
        v83 = __OFADD__(v82, 1);
        v84 = v82 + 1;
        if (v83)
        {
          goto LABEL_46;
        }

        v25[2] = v84;
      }

      v40 = v114;
      v49 = v107;
      v44 = v108;
      if (!v48)
      {
        goto LABEL_13;
      }
    }

    if (qword_280D70420 != -1)
    {
      goto LABEL_47;
    }
  }

  else
  {
LABEL_13:
    while (1)
    {
      v52 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v52 >= v49)
      {
        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
        __swift_storeEnumTagSinglePayload(v40, 1, 1, v85);
        v48 = 0;
        goto LABEL_18;
      }

      v48 = *(v44 + 8 * v52);
      ++v42;
      if (v48)
      {
        v112 = v25;
        v51 = v41;
        v42 = v52;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    OUTLINED_FUNCTION_6_0();
  }

  v86 = sub_231585FF4();
  __swift_project_value_buffer(v86, qword_280D72248);
  v87 = v98;
  sub_2314FD194(v102, v98);
  v88 = sub_231585FE4();
  v89 = sub_2315865D4();
  v90 = os_log_type_enabled(v88, v89);
  v91 = v100;
  if (v90)
  {
    v92 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    *v92 = 136315394;
    v116 = *(v87 + *(v101 + 28));
    v117 = DomainUseCase.rawValue.getter();
    v118 = v93;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    if (qword_27DD5ADF0 != -1)
    {
      OUTLINED_FUNCTION_0_40();
    }

    MEMORY[0x23192FF80](qword_27DD5B770, *algn_27DD5B778);
    sub_2314FD1F8(v87);
    v94 = sub_2314A22E8();

    *(v92 + 4) = v94;
    *(v92 + 12) = 2080;

    sub_2315860E4();

    v95 = sub_2314A22E8();

    *(v92 + 14) = v95;
    _os_log_impl(&dword_231496000, v88, v89, "%s value: %s", v92, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    sub_2314FD1F8(v87);
  }

  v117 = v25;
  LOBYTE(v118) = 1;

  v91(&v117);
  sub_2314A5EEC(v117, v118);
}

uint64_t sub_2314FCD18(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314FCD78(v3, v1, v2);
}

uint64_t sub_2314FCD78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v29 - v8;
  v10 = sub_231585D34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[3] = a2;
  v30[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v30, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2314A2910(v9, &qword_27DD5B008, &unk_23158A5C0);
LABEL_15:
    v21 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  (*(v11 + 32))(v14, v9, v10);
  v16 = (*(a3 + 24))(a2, a3);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = &unk_28460FFD0;
  }

  v18 = (*(a3 + 48))(a2, a3);
  if (!v18)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v22 = sub_231585FF4();
    __swift_project_value_buffer(v22, qword_280D72248);
    v23 = sub_231585FE4();
    v24 = sub_2315865E4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29[2] = v26;
      *v25 = 136315138;
      v29[1] = type metadata accessor for DomainToContactTotalFrequencyByIntentSignal();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B780, &qword_23158AE90);
      sub_231586204();
      v27 = sub_2314A22E8();

      *(v25 + 4) = v27;
      _os_log_impl(&dword_231496000, v23, v24, "%s no intent given", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x231931280](v26, -1, -1);
      MEMORY[0x231931280](v25, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    goto LABEL_15;
  }

  v19 = v18;
  v20 = MEMORY[0x28223BE20](v18);
  v29[-2] = v14;
  v29[-1] = v20;
  v21 = sub_2314DCD00(sub_2314FD27C, &v29[-4], v17);

  (*(v11 + 8))(v14, v10);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v30);
  return v21;
}

uint64_t sub_2314FD194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainToContactTotalFrequencyByIntentSignal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314FD1F8(uint64_t a1)
{
  v2 = type metadata accessor for DomainToContactTotalFrequencyByIntentSignal();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2314FD2AC()
{
  result = sub_231586964();
  qword_27DD5B798 = result;
  unk_27DD5B7A0 = v1;
  return result;
}

uint64_t static DomainToHandleAffinityScoreSignal.signalName.getter()
{
  if (qword_27DD5ADF8 != -1)
  {
    OUTLINED_FUNCTION_0_41();
  }

  v0 = qword_27DD5B798;

  return v0;
}

unint64_t DomainToHandleAffinityScoreSignal.id.getter()
{
  v2 = *(v0 + *(type metadata accessor for DomainToHandleAffinityScoreSignal() + 20));
  v3 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_27DD5ADF8 != -1)
  {
    OUTLINED_FUNCTION_0_41();
  }

  MEMORY[0x23192FF80](qword_27DD5B798, unk_27DD5B7A0);
  return v3;
}

uint64_t type metadata accessor for DomainToHandleAffinityScoreSignal()
{
  result = qword_27DD5B7A8;
  if (!qword_27DD5B7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DomainToHandleAffinityScoreSignal.entityID.getter()
{
  v1 = (v0 + *(type metadata accessor for DomainToHandleAffinityScoreSignal() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t static DomainToHandleAffinityScoreSignal.instances(createdFor:useCases:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[0] = MEMORY[0x277D84F90];
  v23[1] = a1;
  v23[2] = a2;
  v23[3] = 0;
  v23[4] = 0;
  v23[5] = a3;

  v3 = sub_2314FE338(v23);
  sub_2314C1D18(v23);
  v4 = *(v3 + 16);
  if (!v4)
  {

    return MEMORY[0x277D84F90];
  }

  v17 = v3;
  v5 = v3 + 32;
  v6 = MEMORY[0x277D84F90];
  do
  {
    sub_2314A2C74(v5, v22);
    sub_23149FD3C(v22, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B590, &qword_23158A9D8);
    if ((OUTLINED_FUNCTION_7_14() & 1) == 0)
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
LABEL_11:
      sub_2314A2910(&v18, &qword_27DD5B598, &qword_23158A9E0);
      goto LABEL_12;
    }

    if (!*(&v19 + 1))
    {
      goto LABEL_11;
    }

    sub_23149FD3C(&v18, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_4_13();
      v6 = isUniquelyReferenced_nonNull_native;
    }

    if (*(v6 + 16) >= *(v6 + 24) >> 1)
    {
      OUTLINED_FUNCTION_6_12();
      v6 = isUniquelyReferenced_nonNull_native;
    }

    OUTLINED_FUNCTION_5_11(isUniquelyReferenced_nonNull_native, v8, v9, v10, v11, v12, v13, v14, v16, v17, v18, *(&v18 + 1), v19, *(&v19 + 1), v20, v21[0]);
LABEL_12:
    v5 += 40;
    --v4;
  }

  while (v4);

  return v6;
}

uint64_t static DomainToHandleAffinityScoreSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_2314FE338(v3);
}

uint64_t static DomainToHandleAffinityScoreSignal.instances(createdFor:)(uint64_t a1, uint64_t a2)
{
  v22[0] = MEMORY[0x277D84F90];
  v22[1] = a1;
  v22[2] = a2;
  memset(&v22[3], 0, 24);

  v2 = sub_2314FE338(v22);
  sub_2314C1D18(v22);
  v3 = *(v2 + 16);
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v16 = v2;
  v4 = v2 + 32;
  v5 = MEMORY[0x277D84F90];
  do
  {
    sub_2314A2C74(v4, v21);
    sub_23149FD3C(v21, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B590, &qword_23158A9D8);
    if ((OUTLINED_FUNCTION_7_14() & 1) == 0)
    {
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
LABEL_11:
      sub_2314A2910(&v17, &qword_27DD5B598, &qword_23158A9E0);
      goto LABEL_12;
    }

    if (!*(&v18 + 1))
    {
      goto LABEL_11;
    }

    sub_23149FD3C(&v17, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_4_13();
      v5 = isUniquelyReferenced_nonNull_native;
    }

    if (*(v5 + 16) >= *(v5 + 24) >> 1)
    {
      OUTLINED_FUNCTION_6_12();
      v5 = isUniquelyReferenced_nonNull_native;
    }

    OUTLINED_FUNCTION_5_11(isUniquelyReferenced_nonNull_native, v7, v8, v9, v10, v11, v12, v13, v15, v16, v17, *(&v17 + 1), v18, *(&v18 + 1), v19, v20[0]);
LABEL_12:
    v4 += 40;
    --v3;
  }

  while (v3);

  return v5;
}

uint64_t static DomainToHandleAffinityScoreSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314FE764(v3, v1, v2);
}

uint64_t sub_2314FD808@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v10 = type metadata accessor for DomainToHandleAffinityScoreSignal();
  a5[3] = v10;
  a5[4] = &protocol witness table for DomainToHandleAffinityScoreSignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  v12 = sub_231585D34();
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, a2, v12);
  *(boxed_opaque_existential_1 + *(v10 + 20)) = v9;
  v13 = (boxed_opaque_existential_1 + *(v10 + 24));
  *v13 = a3;
  v13[1] = a4;
}

uint64_t static DomainToHandleAffinityScoreSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611CC0);
  *a1 = result;
  return result;
}

uint64_t DomainToHandleAffinityScoreSignal.value(completion:)(void (*a1)(unint64_t *), uint64_t a2)
{
  v96 = a2;
  v97 = a1;
  v2 = type metadata accessor for DomainToHandleAffinityScoreSignal();
  v3 = OUTLINED_FUNCTION_8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v94 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v90 = &v84 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_11_0();
  v89 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v86 = &v84 - v15;
  v85 = sub_231585D34();
  v16 = OUTLINED_FUNCTION_4_1(v85);
  v100 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11_0();
  v98 = (v20 - v21);
  MEMORY[0x28223BE20](v22);
  v24 = &v84 - v23;
  v25 = sub_231585AE4();
  v26 = OUTLINED_FUNCTION_4_1(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_11_0();
  v33 = v31 - v32;
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v84 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v84 - v38;
  sub_231585AD4();
  sub_231585AC4();
  v40 = *(v28 + 8);
  v40(v33, v25);
  v41 = v99;
  v42 = (v99 + *(v2 + 24));
  v43 = *v42;
  v44 = v42[1];
  sub_231585AA4();
  v91 = v40;
  v92 = v28 + 8;
  v40(v37, v25);
  v45 = *(v100 + 16);
  v46 = v41;
  v47 = v41;
  v48 = v85;
  v45(v24, v47, v85);
  v84 = v2;
  v49 = *(v46 + *(v2 + 20));
  v50 = *(v28 + 16);
  v93 = v39;
  v51 = v86;
  v50();
  v95 = v25;
  v52 = v25;
  v53 = v48;
  __swift_storeEnumTagSinglePayload(v51, 0, 1, v52);
  v54 = DomainToHandleAffinityScoreSignal.id.getter();
  v56 = v55;
  v88 = v24;
  v45(v98, v24, v53);
  LOBYTE(v102) = v49;
  v57 = DomainUseCase.intentTypes.getter();
  v87 = v56;
  if (v49 <= 0xD)
  {
    if (((1 << v49) & 0xA95) != 0)
    {
      v58 = v57;
      v59 = v54;
      v60 = *MEMORY[0x277D5FFC0];
      v61 = sub_231585D74();
      OUTLINED_FUNCTION_8(v61);
      v63 = v90;
      (*(v62 + 104))(v90, v60, v61);
LABEL_6:
      v66 = v63;
      v67 = 0;
      v68 = v61;
      goto LABEL_7;
    }

    if (((1 << v49) & 0x3060) != 0)
    {
      v58 = v57;
      v59 = v54;
      v64 = *MEMORY[0x277D5FFB8];
      v61 = sub_231585D74();
      OUTLINED_FUNCTION_8(v61);
      v63 = v90;
      (*(v65 + 104))(v90, v64, v61);
      goto LABEL_6;
    }
  }

  v58 = v57;
  v59 = v54;
  v68 = sub_231585D74();
  v63 = v90;
  v66 = v90;
  v67 = 1;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v66, v67, 1, v68);
  if (v49 - 1 > 0xA)
  {
    v69 = 2;
  }

  else
  {
    v69 = byte_23158AF92[(v49 - 1)];
  }

  v70 = v89;
  sub_2314A1D9C(v51, v89, &qword_27DD5B4D0, &qword_23158A5D0);
  v71 = sub_2314A0DE8(v98, v58, v63, v69, v70, v59, v87, MEMORY[0x277D84F90], 0);
  v73 = v72;
  sub_2314A2910(v51, &qword_27DD5B4D0, &qword_23158A5D0);
  (*(v100 + 8))(v88, v53);
  v74 = sub_2314BB35C(v71, v73);

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v75 = sub_231585FF4();
  __swift_project_value_buffer(v75, qword_280D72248);
  v76 = v94;
  sub_2314FEBB0(v99, v94);

  v77 = sub_231585FE4();
  v78 = sub_2315865D4();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    *v79 = 136315394;
    v101 = *(v76 + *(v84 + 20));
    v102 = DomainUseCase.rawValue.getter();
    v103 = v80;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    if (qword_27DD5ADF8 != -1)
    {
      OUTLINED_FUNCTION_0_41();
    }

    MEMORY[0x23192FF80](qword_27DD5B798, unk_27DD5B7A0);
    sub_2314FEC14(v76);
    v81 = sub_2314A22E8();

    *(v79 + 4) = v81;
    *(v79 + 12) = 2080;
    sub_2315860E4();
    v82 = sub_2314A22E8();

    *(v79 + 14) = v82;
    _os_log_impl(&dword_231496000, v77, v78, "%s value: %s", v79, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    sub_2314FEC14(v76);
  }

  v102 = v74;
  LOBYTE(v103) = 3;
  v97(&v102);
  sub_2314A5EEC(v102, v103);
  return v91(v93, v95);
}

uint64_t sub_2314FE0A4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314FE764(v3, v1, v2);
}

uint64_t sub_2314FE104()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v13 - v2;
  v14[3] = &type metadata for NoParameters;
  v14[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v14, v3);
  v4 = sub_231585D34();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v4);
  sub_2314A2910(v3, &qword_27DD5B008, &unk_23158A5C0);
  if (EnumTagSinglePayload != 1)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v6 = sub_231585FF4();
    __swift_project_value_buffer(v6, qword_280D72248);
    v7 = sub_231585FE4();
    v8 = sub_2315865E4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13[2] = v10;
      *v9 = 136315138;
      v13[1] = type metadata accessor for DomainToHandleAffinityScoreSignal();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B7B8, &unk_23158AF80);
      sub_231586204();
      v11 = sub_2314A22E8();

      *(v9 + 4) = v11;
      _os_log_impl(&dword_231496000, v7, v8, "%s no entityName given", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return MEMORY[0x277D84F90];
}

uint64_t sub_2314FE338(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27[-1] - v4;
  v6 = sub_231585D34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[3] = &type metadata for SignalComputationContext;
  v29[4] = &protocol witness table for SignalComputationContext;
  v11 = swift_allocObject();
  v29[0] = v11;
  v12 = *(a1 + 16);
  v11[1] = *a1;
  v11[2] = v12;
  v11[3] = *(a1 + 32);
  sub_2314B5008(a1, v28);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v29, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2314A2910(v5, &qword_27DD5B008, &unk_23158A5C0);
LABEL_15:
    v18 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v13 = *(a1 + 40);
  (*(v7 + 32))(v10, v5, v6);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = &unk_2846104F0;
  }

  v28[0] = *(a1 + 8);
  v15 = *(&v28[0] + 1);
  if (!*(&v28[0] + 1))
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v19 = sub_231585FF4();
    __swift_project_value_buffer(v19, qword_280D72248);
    v20 = sub_231585FE4();
    v21 = sub_2315865E4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27[0] = v23;
      *v22 = 136315138;
      v27[2] = type metadata accessor for DomainToHandleAffinityScoreSignal();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B7B8, &unk_23158AF80);
      sub_231586204();
      v24 = sub_2314A22E8();

      *(v22 + 4) = v24;
      _os_log_impl(&dword_231496000, v20, v21, "%s no entityName given", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x231931280](v23, -1, -1);
      MEMORY[0x231931280](v22, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    goto LABEL_15;
  }

  v16 = *&v28[0];

  sub_2314A1D9C(v28, v27, &qword_27DD5B120, &qword_23158ACE0);

  MEMORY[0x28223BE20](v17);
  *(&v26 - 4) = v10;
  *(&v26 - 3) = v16;
  *(&v26 - 2) = v15;
  v18 = sub_2314DCD00(sub_2314FECB8, (&v26 - 6), v14);

  (*(v7 + 8))(v10, v6);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v18;
}

uint64_t sub_2314FE764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v31 - v8;
  v10 = sub_231585D34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[3] = a2;
  v36[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v36, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2314A2910(v9, &qword_27DD5B008, &unk_23158A5C0);
LABEL_15:
    v23 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  (*(v11 + 32))(v14, v9, v10);
  v16 = (*(a3 + 24))(a2, a3);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = &unk_2846104F0;
  }

  (*(a3 + 32))(&v32, a2, a3);
  v18 = v33;
  if (!v33)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v24 = sub_231585FF4();
    __swift_project_value_buffer(v24, qword_280D72248);
    v25 = sub_231585FE4();
    v26 = sub_2315865E4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32 = v28;
      *v27 = 136315138;
      v31[2] = type metadata accessor for DomainToHandleAffinityScoreSignal();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B7B8, &unk_23158AF80);
      sub_231586204();
      v29 = sub_2314A22E8();

      *(v27 + 4) = v29;
      _os_log_impl(&dword_231496000, v25, v26, "%s no entityName given", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x231931280](v28, -1, -1);
      MEMORY[0x231931280](v27, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    goto LABEL_15;
  }

  v19 = v34;
  v20 = v35;
  v21 = v32;

  v22 = sub_2314A0D38(v21, v18);
  MEMORY[0x28223BE20](v22);
  v31[-4] = v14;
  v31[-3] = v19;
  v31[-2] = v20;
  v23 = sub_2314DCD00(sub_2314FEC98, &v31[-6], v17);

  (*(v11 + 8))(v14, v10);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v36);
  return v23;
}

uint64_t sub_2314FEBB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainToHandleAffinityScoreSignal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314FEC14(uint64_t a1)
{
  v2 = type metadata accessor for DomainToHandleAffinityScoreSignal();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2314FECE4()
{
  result = sub_231586964();
  qword_27DD5B7C0 = result;
  *algn_27DD5B7C8 = v1;
  return result;
}

uint64_t static DomainTotalFrequencyByCountryCodeSignal.signalName.getter()
{
  if (qword_27DD5AE00 != -1)
  {
    OUTLINED_FUNCTION_0_42();
  }

  v0 = qword_27DD5B7C0;

  return v0;
}

unint64_t DomainTotalFrequencyByCountryCodeSignal.id.getter()
{
  v2 = *(v0 + *(type metadata accessor for DomainTotalFrequencyByCountryCodeSignal() + 28));
  v3 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_27DD5AE00 != -1)
  {
    OUTLINED_FUNCTION_0_42();
  }

  MEMORY[0x23192FF80](qword_27DD5B7C0, *algn_27DD5B7C8);
  return v3;
}

uint64_t type metadata accessor for DomainTotalFrequencyByCountryCodeSignal()
{
  result = qword_27DD5B7E0;
  if (!qword_27DD5B7E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static DomainTotalFrequencyByCountryCodeSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231501228(v3, v1, v2);
}

uint64_t sub_2314FEE88@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a3;
  v7 = sub_231585D34();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v22[-v13];
  v23 = *a1;
  v15 = *(v8 + 16);
  v15(&v22[-v13], a2, v7);
  v16 = type metadata accessor for DomainTotalFrequencyByCountryCodeSignal();
  a4[3] = v16;
  a4[4] = &protocol witness table for DomainTotalFrequencyByCountryCodeSignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v15(boxed_opaque_existential_1, v14, v7);
  *(boxed_opaque_existential_1 + v16[7]) = v23;
  v18 = v24;
  *(boxed_opaque_existential_1 + v16[5]) = v24;
  v15(v12, boxed_opaque_existential_1, v7);
  v19 = v16[6];
  v20 = v18;
  sub_231585A74();
  return (*(v8 + 8))(v14, v7);
}

uint64_t static DomainTotalFrequencyByCountryCodeSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611CE8);
  *a1 = result;
  return result;
}

uint64_t DomainTotalFrequencyByCountryCodeSignal.value(completion:)(uint64_t a1, uint64_t a2)
{
  v268 = a2;
  v269 = a1;
  v3 = type metadata accessor for DomainTotalFrequencyByCountryCodeSignal();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8_13();
  v277 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v10);
  v249 = &v243 - v11;
  v276 = sub_231585BA4();
  v12 = OUTLINED_FUNCTION_4_1(v276);
  v274 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v275 = v16;
  MEMORY[0x28223BE20](v17);
  v273 = &v243 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6B8, &unk_23158AC00);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  OUTLINED_FUNCTION_3_1();
  v272 = v21;
  MEMORY[0x28223BE20](v22);
  v271 = (&v243 - v23);
  v257 = sub_231585D74();
  v24 = OUTLINED_FUNCTION_4_1(v257);
  v256 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  v255 = &v243 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B7D0, &unk_23158AFA8);
  v29 = OUTLINED_FUNCTION_4_1(v254);
  v253 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  v263 = (&v243 - v33);
  v266 = sub_231585D14();
  v34 = OUTLINED_FUNCTION_4_1(v266);
  v267 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v42);
  v44 = &v243 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v48 = &v243 - v47;
  v49 = sub_231585AE4();
  v50 = OUTLINED_FUNCTION_4_1(v49);
  v262 = v51;
  v53 = *(v52 + 64);
  v54 = MEMORY[0x28223BE20](v50);
  v56 = (&v243 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = MEMORY[0x28223BE20](v54);
  v59 = &v243 - v58;
  MEMORY[0x28223BE20](v57);
  v61 = &v243 - v60;
  v62 = sub_2315860F4();
  v264 = v3;
  v63 = *(v3 + 24);
  v64 = *(v2 + *(v3 + 20));
  v270 = v2;
  v65 = 0;
  v66 = sub_231585A14();
  v244 = v56;
  v245 = v59;
  v246 = v61;
  v247 = v49;
  if (!v66)
  {
    v67 = v270;
    if (qword_280D70420 == -1)
    {
LABEL_3:
      v68 = sub_231585FF4();
      __swift_project_value_buffer(v68, qword_280D72248);
      v69 = v277;
      sub_231501644(v67, v277);
      v70 = sub_231585FE4();
      v71 = sub_2315865D4();
      if (OUTLINED_FUNCTION_21_4(v71))
      {
        OUTLINED_FUNCTION_14_4();
        swift_slowAlloc();
        v72 = OUTLINED_FUNCTION_16_5();
        v282 = v72;
        *v65 = 136315138;
        OUTLINED_FUNCTION_4_14();
        v74 = OUTLINED_FUNCTION_17_5(*(v69 + v73));
        OUTLINED_FUNCTION_6_13(v74, v75);
        if (qword_27DD5AE00 != -1)
        {
          OUTLINED_FUNCTION_0_42();
        }

        MEMORY[0x23192FF80](qword_27DD5B7C0, *algn_27DD5B7C8);
        sub_2315016A8(v69);
        OUTLINED_FUNCTION_10_7();
        v76 = sub_2314A22E8();

        *(v65 + 4) = v76;
        OUTLINED_FUNCTION_18_5();
        _os_log_impl(v77, v78, v79, v80, v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v72);
        goto LABEL_7;
      }

      v82 = v69;
LABEL_9:
      sub_2315016A8(v82);
      OUTLINED_FUNCTION_15_4();
      OUTLINED_FUNCTION_14_4();
      goto LABEL_10;
    }

LABEL_80:
    OUTLINED_FUNCTION_6_0();
    goto LABEL_3;
  }

  v84 = v270;
  v85 = v66;
  sub_231585A24();
  v86 = v247;
  if (__swift_getEnumTagSinglePayload(v48, 1, v247) != 1)
  {
    v261 = v85;
    (*(v262 + 32))(v246, v48, v86);
    sub_231585D04();
    sub_231585C64();
    v101 = v267 + 8;
    v102 = *(v267 + 8);
    OUTLINED_FUNCTION_19_4(&v284);
    v102();
    v103 = sub_231585C44();
    v277 = 0;
    v267 = v101;
    v278 = v62;
    v104 = v103;
    (v102)(v44, v59);
    v105 = v263;
    v106 = sub_231500988(v104);

    v107 = sub_231501010(v106);

    v108 = v244;
    if (v107[2] != 1)
    {

      if (qword_280D70420 != -1)
      {
        OUTLINED_FUNCTION_6_0();
      }

      v162 = sub_231585FF4();
      __swift_project_value_buffer(v162, qword_280D72248);
      OUTLINED_FUNCTION_13_5();
      OUTLINED_FUNCTION_19_4(v283);
      sub_231501644(v163, v164);

      v165 = sub_231585FE4();
      v166 = sub_2315865D4();
      if (OUTLINED_FUNCTION_21_4(v166))
      {
        OUTLINED_FUNCTION_14_4();
        OUTLINED_FUNCTION_22_0();
        v167 = OUTLINED_FUNCTION_16_5();
        v282 = v167;
        *v108 = 136315394;
        OUTLINED_FUNCTION_4_14();
        v169 = OUTLINED_FUNCTION_17_5(*(v106 + v168));
        OUTLINED_FUNCTION_6_13(v169, v170);
        if (qword_27DD5AE00 != -1)
        {
          OUTLINED_FUNCTION_0_42();
        }

        MEMORY[0x23192FF80](qword_27DD5B7C0, *algn_27DD5B7C8);
        sub_2315016A8(v106);
        OUTLINED_FUNCTION_10_7();
        v171 = sub_2314A22E8();

        *(v108 + 4) = v171;
        *(v108 + 6) = 2048;
        v172 = v107[2];

        *(v108 + 14) = v172;

        OUTLINED_FUNCTION_18_5();
        _os_log_impl(v173, v174, v175, v176, v177, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v167);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();

        OUTLINED_FUNCTION_15_4();
      }

      else
      {

        swift_bridgeObjectRelease_n();
        sub_2315016A8(v106);
        OUTLINED_FUNCTION_15_4();
        OUTLINED_FUNCTION_14_4();
      }

      v178 = v246;
      OUTLINED_FUNCTION_11_9();
      (v102)(&v280);
      sub_2314A5EEC(v280, v281);
      (*(v262 + 8))(v178, v247);
    }

    v109 = v86;
    v110 = v107[4];
    v111 = v107[5];

    v280 = v110;
    v281 = v111;

    MEMORY[0x23192FF80](37, 0xE100000000000000);

    v112 = v280;
    v113 = v281;
    v114 = *(v261 + 16);

    LODWORD(v261) = v114 > 1;
    v263 = sub_2315860F4();
    sub_231585AD4();
    *v105 = v112;
    v105[1] = v113;
    v115 = *MEMORY[0x277D5FF30];
    v116 = v253;
    v117 = v105;
    v118 = v102;
    v119 = v117;
    v259 = *(v253 + 104);
    v120 = v108;
    v121 = v254;
    (v259)(v117, v115, v254);
    sub_231585AB4();
    v122 = *(v116 + 8);
    v122(v119, v121);
    v260 = *(v262 + 8);
    v262 += 8;
    v260(v120, v109);
    v123 = v250;
    sub_231585D04();
    v124 = v251;
    sub_231585C64();
    v125 = v266;
    (v118)(v123, v266);
    OUTLINED_FUNCTION_4_14();
    LOBYTE(v280) = *(v270 + v126);
    *v119 = DomainUseCase.intentTypes.getter();
    (v259)(v119, *MEMORY[0x277D5FF28], v121);
    v127 = v252;
    sub_231585C94();
    v122(v119, v121);
    v128 = v124;
    v129 = v125;
    v130 = v118;
    (v118)(v128, v129);
    LOBYTE(v280) = v261;
    v131 = v265;
    sub_231585CA4();
    (v118)(v127, v129);
    v132 = v256;
    v133 = v255;
    v134 = v257;
    (*(v256 + 104))(v255, *MEMORY[0x277D5FFC0], v257);
    v135 = v258;
    sub_231585CD4();
    (*(v132 + 8))(v133, v134);
    (v130)(v131, v129);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B7D8, &qword_23158AFB8);
    v136 = sub_231585C14();
    OUTLINED_FUNCTION_4_1(v136);
    v138 = v137;
    v140 = *(v139 + 72);
    v141 = (*(v137 + 80) + 32) & ~*(v137 + 80);
    v142 = swift_allocObject();
    *(v142 + 16) = xmmword_231588340;
    (*(v138 + 104))(v142 + v141, *MEMORY[0x277D5FF90], v136);
    v143 = v135;
    v144 = v270;
    v145 = v277;
    v146 = sub_231585C34();
    v259 = v145;
    if (v145)
    {

      (v130)(v143, v129);
      v147 = OUTLINED_FUNCTION_7_15();
      v148(v147);
      if (qword_280D70420 != -1)
      {
        OUTLINED_FUNCTION_6_0();
      }

      v149 = sub_231585FF4();
      __swift_project_value_buffer(v149, qword_280D72248);
      v150 = v248;
      sub_231501644(v144, v248);
      v151 = v259;
      v152 = v259;
      v153 = sub_231585FE4();
      v154 = sub_2315865E4();

      if (os_log_type_enabled(v153, v154))
      {
        v155 = OUTLINED_FUNCTION_22_0();
        v282 = swift_slowAlloc();
        *v155 = 136315394;
        OUTLINED_FUNCTION_4_14();
        v157 = OUTLINED_FUNCTION_17_5(*(v150 + v156));
        OUTLINED_FUNCTION_6_13(v157, v158);
        if (qword_27DD5AE00 != -1)
        {
          OUTLINED_FUNCTION_0_42();
        }

        MEMORY[0x23192FF80](qword_27DD5B7C0, *algn_27DD5B7C8);
        sub_2315016A8(v150);
        OUTLINED_FUNCTION_10_7();
        v159 = sub_2314A22E8();

        *(v155 + 4) = v159;
        *(v155 + 12) = 2080;
        v160 = v259;
        swift_getErrorValue();
        sub_231586C94();
        v161 = sub_2314A22E8();

        *(v155 + 14) = v161;
        _os_log_impl(&dword_231496000, v153, v154, "%s error querying interaction history: %s", v155, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();
      }

      else
      {

        sub_2315016A8(v150);
      }

      v259 = 0;
      v179 = v263;
    }

    else
    {
      v179 = v146;

      (v130)(v143, v129);
      v180 = OUTLINED_FUNCTION_7_15();
      v181(v180);
    }

    v67 = 0;
    v263 = v179;
    v184 = *(v179 + 8);
    v183 = (v179 + 64);
    v182 = v184;
    v185 = 1 << *(v183 - 32);
    v186 = -1;
    if (v185 < 64)
    {
      v186 = ~(-1 << v185);
    }

    v187 = v186 & v182;
    v188 = (v185 + 63) >> 6;
    v189 = v274;
    v261 = v274 + 16;
    v277 = (v274 + 32);
    v267 = v274 + 8;
    v65 = &qword_27DD5B640;
    v191 = v275;
    v190 = v276;
    v56 = v273;
    v266 = v183;
    v265 = v188;
    if ((v186 & v182) != 0)
    {
      do
      {
        v192 = v67;
LABEL_50:
        v193 = __clz(__rbit64(v187));
        v187 &= v187 - 1;
        v194 = v193 | (v192 << 6);
        v195 = (v263[6] + 16 * v194);
        v197 = *v195;
        v196 = v195[1];
        (*(v189 + 16))(v56, v263[7] + *(v189 + 72) * v194, v190);
        v198 = &unk_23158AE80;
        v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
        v200 = *(v199 + 48);
        v201 = v272;
        *v272 = v197;
        v201[1] = v196;
        v202 = v201;
        (*(v189 + 32))(v201 + v200, v56, v190);
        v203 = v199;
        v65 = &qword_27DD5B640;
        __swift_storeEnumTagSinglePayload(v202, 0, 1, v203);

LABEL_51:
        v204 = v202;
        v205 = v271;
        sub_2314F56B8(v204, v271);
        v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v205, 1, v206);
        v208 = v278;
        if (EnumTagSinglePayload == 1)
        {

          if (qword_280D70420 != -1)
          {
            OUTLINED_FUNCTION_6_0();
          }

          v227 = sub_231585FF4();
          __swift_project_value_buffer(v227, qword_280D72248);
          OUTLINED_FUNCTION_13_5();
          OUTLINED_FUNCTION_19_4(&v279);
          sub_231501644(v228, v229);
          v230 = sub_231585FE4();
          v231 = sub_2315865D4();
          OUTLINED_FUNCTION_21_4(v231);
          OUTLINED_FUNCTION_20_5();
          if (v232)
          {
            v65 = OUTLINED_FUNCTION_22_0();
            v198 = swift_slowAlloc();
            v282 = v198;
            *v65 = 136315394;
            OUTLINED_FUNCTION_4_14();
            v234 = OUTLINED_FUNCTION_17_5(*(v190 + v233));
            OUTLINED_FUNCTION_6_13(v234, v235);
            if (qword_27DD5AE00 != -1)
            {
              OUTLINED_FUNCTION_0_42();
            }

            MEMORY[0x23192FF80](qword_27DD5B7C0, *algn_27DD5B7C8);
            sub_2315016A8(v190);
            OUTLINED_FUNCTION_10_7();
            v236 = sub_2314A22E8();

            *(v65 + 4) = v236;
            *(v65 + 6) = 2080;

            sub_2315860E4();

            OUTLINED_FUNCTION_10_7();
            v237 = sub_2314A22E8();

            *(v65 + 14) = v237;
            OUTLINED_FUNCTION_18_5();
            _os_log_impl(v238, v239, v240, v241, v242, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_10();
            OUTLINED_FUNCTION_10();

            OUTLINED_FUNCTION_20_5();
          }

          else
          {

            sub_2315016A8(v190);
          }

          OUTLINED_FUNCTION_11_9();
          OUTLINED_FUNCTION_15_4();
          (v65)();
          sub_2314A5EEC(v280, v281);
          v260(v198, v247);
        }

        v65 = *v205;
        v56 = v205[1];
        (*v277)(v191, v205 + *(v206 + 48), v190);
        if (*(v208 + 16) && (v209 = sub_23149C888(v65, v56), (v210 & 1) != 0))
        {
          v211 = *(*(v208 + 56) + 8 * v209);
        }

        else
        {
          v211 = 0;
        }

        if (__OFADD__(v211, sub_231585B84()))
        {
          goto LABEL_77;
        }

        swift_isUniquelyReferenced_nonNull_native();
        v280 = v208;
        v212 = sub_23149C888(v65, v56);
        if (__OFADD__(*(v208 + 16), (v213 & 1) == 0))
        {
          goto LABEL_78;
        }

        v191 = v212;
        v214 = v213;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
        if (sub_231586A64())
        {
          v215 = sub_23149C888(v65, v56);
          v190 = v276;
          if ((v214 & 1) != (v216 & 1))
          {
            result = sub_231586C84();
            __break(1u);
            return result;
          }

          v191 = v215;
          if (v214)
          {
LABEL_64:

            v278 = v280;
            v224 = OUTLINED_FUNCTION_9_9(v280[7]);
            v225(v224);
            goto LABEL_65;
          }
        }

        else
        {
          v190 = v276;
          if (v214)
          {
            goto LABEL_64;
          }
        }

        v217 = v280;
        v280[(v191 >> 6) + 8] |= 1 << v191;
        v218 = (v217[6] + 16 * v191);
        *v218 = v65;
        v218[1] = v56;
        v219 = OUTLINED_FUNCTION_9_9(v217[7]);
        v220(v219);
        v221 = v217[2];
        v222 = __OFADD__(v221, 1);
        v223 = v221 + 1;
        if (v222)
        {
          goto LABEL_79;
        }

        v278 = v217;
        v217[2] = v223;
LABEL_65:
        v56 = v273;
        v189 = v274;
        v183 = v266;
        v188 = v265;
        v65 = &qword_27DD5B640;
      }

      while (v187);
    }

    while (1)
    {
      v192 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        break;
      }

      if (v192 >= v188)
      {
        v198 = &unk_23158AE80;
        v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
        v202 = v272;
        __swift_storeEnumTagSinglePayload(v272, 1, 1, v226);
        v187 = 0;
        goto LABEL_51;
      }

      v187 = *(v183 + 8 * v192);
      ++v67;
      if (v187)
      {
        v67 = v192;
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  sub_2314CC1C4(v48, &qword_27DD5B4D0, &qword_23158A5D0);
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v87 = sub_231585FF4();
  __swift_project_value_buffer(v87, qword_280D72248);
  v88 = v84;
  v89 = v261;
  sub_231501644(v88, v261);
  v70 = sub_231585FE4();
  v90 = sub_2315865D4();
  if (!OUTLINED_FUNCTION_21_4(v90))
  {

    v82 = v89;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_14_4();
  swift_slowAlloc();
  v91 = OUTLINED_FUNCTION_16_5();
  v282 = v91;
  MEMORY[0] = 136315138;
  OUTLINED_FUNCTION_4_14();
  v93 = OUTLINED_FUNCTION_17_5(*(v89 + v92));
  OUTLINED_FUNCTION_6_13(v93, v94);
  if (qword_27DD5AE00 != -1)
  {
    OUTLINED_FUNCTION_0_42();
  }

  MEMORY[0x23192FF80](qword_27DD5B7C0, *algn_27DD5B7C8);
  sub_2315016A8(v89);
  OUTLINED_FUNCTION_10_7();
  v95 = sub_2314A22E8();

  MEMORY[4] = v95;
  OUTLINED_FUNCTION_18_5();
  _os_log_impl(v96, v97, v98, v99, v100, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v91);
LABEL_7:
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_15_4();
LABEL_10:
  OUTLINED_FUNCTION_11_9();
  (v56)(&v280);
  sub_2314A5EEC(v280, v281);
}

uint64_t sub_231500988(uint64_t a1)
{
  v79 = sub_231585E34();
  v2 = *(v79 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v79);
  v71 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v70 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4A0, &qword_23158A530);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v61 - v9;
  v11 = sub_231585DF4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v85 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *(a1 + 16);
  if (v62)
  {
    v15 = sub_231585DB4();
    v16 = 0;
    v17 = *(v15 - 8);
    v73 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v81 = v12 + 16;
    v78 = v2 + 16;
    v69 = v2;
    v67 = (v2 + 8);
    v18 = (v12 + 8);
    v72 = *(v17 + 72);
    v75 = MEMORY[0x277D84F90];
    v19 = v62;
    v68 = v10;
    v74 = v11;
    v80 = v12;
    v66 = (v12 + 8);
LABEL_3:
    v77 = v16 + 1;
    v20 = sub_231585DA4();
    v21 = 0;
    v22 = v20 + 64;
    v23 = 1 << *(v20 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(v20 + 64);
    v26 = (v23 + 63) >> 6;
LABEL_7:
    if (v25)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v27 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v27 >= v26)
      {

        v16 = v77;
        if (v77 == v19)
        {
          return v75;
        }

        goto LABEL_3;
      }

      v25 = *(v22 + 8 * v27);
      ++v21;
      if (v25)
      {
        v21 = v27;
LABEL_12:
        v28 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        v29 = v28 | (v21 << 6);
        v30 = *(*(v20 + 56) + 8 * v29);
        v31 = *(v30 + 16);
        if (v31)
        {
          v64 = v20;
          v82 = v31;
          v32 = *(*(v20 + 48) + 16 * v29 + 8);
          v84 = v30 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
          swift_bridgeObjectRetain_n();
          v63 = v32;

          v33 = 0;
          v83 = v30;
          while (1)
          {
            if (v33 >= *(v30 + 16))
            {
              goto LABEL_41;
            }

            (*(v12 + 16))(v85, v84 + *(v12 + 72) * v33, v11);
            if (sub_231585DD4() == 0x61486E6F73726550 && v34 == 0xEC000000656C646ELL)
            {
            }

            else
            {
              v36 = sub_231586C44();

              if ((v36 & 1) == 0)
              {
                goto LABEL_33;
              }
            }

            v37 = sub_231585DE4();
            if (*(v37 + 16) && (v38 = sub_23149C888(1701869940, 0xE400000000000000), (v39 & 1) != 0))
            {
              v40 = *(v69 + 72);
              v41 = *(v69 + 16);
              v42 = v79;
              v41(v10, *(v37 + 56) + v40 * v38, v79);

              __swift_storeEnumTagSinglePayload(v10, 0, 1, v42);
              sub_2314CC1C4(v10, &qword_27DD5B4A0, &qword_23158A530);
              v43 = sub_231585DE4();
              if (!*(v43 + 16))
              {
                goto LABEL_42;
              }

              v44 = sub_23149C888(1701869940, 0xE400000000000000);
              if ((v45 & 1) == 0)
              {
                goto LABEL_42;
              }

              v46 = *(v43 + 56) + v44 * v40;
              v47 = v70;
              v48 = v79;
              v41(v70, v46, v79);

              v49 = v71;
              sub_231586244();
              LODWORD(v76) = sub_231585E14();
              v50 = *v67;
              (*v67)(v49, v48);
              v50(v47, v48);
              v10 = v68;
              v11 = v74;
              v18 = v66;
              if (v76)
              {
                v76 = sub_231585DC4();
                v65 = v51;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v57 = *(v75 + 16);
                  sub_23149D588();
                  v75 = v58;
                }

                v52 = *(v75 + 16);
                if (v52 >= *(v75 + 24) >> 1)
                {
                  sub_23149D588();
                  v75 = v59;
                }

                v11 = v74;
                (*v18)(v85, v74);
                v53 = v75;
                v54 = v76;
                *(v75 + 16) = v52 + 1;
                v55 = v53 + 16 * v52;
                v56 = v65;
                *(v55 + 32) = v54;
                *(v55 + 40) = v56;
                goto LABEL_34;
              }
            }

            else
            {

              __swift_storeEnumTagSinglePayload(v10, 1, 1, v79);
              sub_2314CC1C4(v10, &qword_27DD5B4A0, &qword_23158A530);
            }

LABEL_33:
            (*v18)(v85, v11);
LABEL_34:
            ++v33;
            v30 = v83;
            v12 = v80;
            if (v82 == v33)
            {

              swift_bridgeObjectRelease_n();
              v19 = v62;
              v20 = v64;
              goto LABEL_7;
            }
          }
        }

        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

const void *sub_231501010(uint64_t a1)
{
  v1 = MEMORY[0x277D84FA0];
  v23 = MEMORY[0x277D84FA0];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = a1 + 32;
    do
    {
      v5 = (v4 + 16 * v3);
      v6 = *v5;
      v7 = v5[1];

      v8 = sub_231585D94();
      v10 = v9;

      if (v10)
      {
        if (*(v23 + 16))
        {
          v11 = *(v23 + 40);
          sub_231586D14();
          sub_231586274();
          v12 = sub_231586D44();
          v13 = ~(-1 << *(v23 + 32));
          while (1)
          {
            v14 = v12 & v13;
            if (((*(v23 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
            {
              break;
            }

            v15 = (*(v23 + 48) + 16 * v14);
            if (*v15 != v8 || v10 != v15[1])
            {
              v17 = sub_231586C44();
              v12 = v14 + 1;
              if ((v17 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_14;
          }
        }

        sub_2314A00A4();
LABEL_14:
      }

      ++v3;
    }

    while (v3 != v2);
    v1 = v23;
  }

  v18 = *(v1 + 16);
  if (!v18)
  {
    goto LABEL_20;
  }

  v19 = sub_231571BB0(*(v1 + 16), 0);
  sub_231572A38();
  v21 = v20;
  sub_2314A4B70();
  if (v21 != v18)
  {
    __break(1u);
LABEL_20:

    return MEMORY[0x277D84F90];
  }

  return v19;
}

uint64_t sub_2315011C8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231501228(v3, v1, v2);
}

uint64_t sub_231501228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v29 - v8;
  v10 = sub_231585D34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[3] = a2;
  v30[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v30, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2314CC1C4(v9, &qword_27DD5B008, &unk_23158A5C0);
LABEL_15:
    v21 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  (*(v11 + 32))(v14, v9, v10);
  v16 = (*(a3 + 24))(a2, a3);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = &unk_28460FFF8;
  }

  v18 = (*(a3 + 48))(a2, a3);
  if (!v18)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v22 = sub_231585FF4();
    __swift_project_value_buffer(v22, qword_280D72248);
    v23 = sub_231585FE4();
    v24 = sub_2315865E4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29[2] = v26;
      *v25 = 136315138;
      v29[1] = type metadata accessor for DomainTotalFrequencyByCountryCodeSignal();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B7F0, "֫");
      sub_231586204();
      v27 = sub_2314A22E8();

      *(v25 + 4) = v27;
      _os_log_impl(&dword_231496000, v23, v24, "%s no intent given", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x231931280](v26, -1, -1);
      MEMORY[0x231931280](v25, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    goto LABEL_15;
  }

  v19 = v18;
  v20 = MEMORY[0x28223BE20](v18);
  v29[-2] = v14;
  v29[-1] = v20;
  v21 = sub_2314DCD00(sub_23150172C, &v29[-4], v17);

  (*(v11 + 8))(v14, v10);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v30);
  return v21;
}

uint64_t sub_231501644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainTotalFrequencyByCountryCodeSignal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2315016A8(uint64_t a1)
{
  v2 = type metadata accessor for DomainTotalFrequencyByCountryCodeSignal();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23150175C()
{
  result = sub_231586964();
  qword_27DD5B7F8 = result;
  unk_27DD5B800 = v1;
  return result;
}

uint64_t static DomainTotalFrequencySignal.signalName.getter()
{
  if (qword_27DD5AE08 != -1)
  {
    OUTLINED_FUNCTION_1_17();
  }

  v0 = qword_27DD5B7F8;

  return v0;
}

unint64_t DomainTotalFrequencySignal.id.getter()
{
  v2 = *(v0 + *(type metadata accessor for DomainTotalFrequencySignal() + 24));
  v3 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_27DD5AE08 != -1)
  {
    OUTLINED_FUNCTION_1_17();
  }

  MEMORY[0x23192FF80](qword_27DD5B7F8, unk_27DD5B800);
  return v3;
}

uint64_t type metadata accessor for DomainTotalFrequencySignal()
{
  result = qword_27DD5B818;
  if (!qword_27DD5B818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static DomainTotalFrequencySignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231502770(v3, v1, v2);
}

uint64_t sub_231501900@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_231585D34();
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_0();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v23[-v16];
  v24 = *a1;
  v18 = *(v9 + 16);
  v18(&v23[-v16], a2, v6);
  v19 = type metadata accessor for DomainTotalFrequencySignal();
  a3[3] = v19;
  a3[4] = &protocol witness table for DomainTotalFrequencySignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v18(boxed_opaque_existential_1, v17, v6);
  *(boxed_opaque_existential_1 + *(v19 + 24)) = v24;
  v18(v14, boxed_opaque_existential_1, v6);
  v21 = boxed_opaque_existential_1 + *(v19 + 20);
  sub_231585A74();
  return (*(v9 + 8))(v17, v6);
}

uint64_t static DomainTotalFrequencySignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611D10);
  *a1 = result;
  return result;
}

uint64_t DomainTotalFrequencySignal.value(completion:)(void (*a1)(uint64_t *), uint64_t a2)
{
  v5 = type metadata accessor for DomainTotalFrequencySignal();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_231585BA4();
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v151 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11_0();
  v158 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v148 = &v141 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6B8, &unk_23158AC00);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_11_0();
  v154 = (v20 - v21);
  MEMORY[0x28223BE20](v22);
  v150 = (&v141 - v23);
  v160 = v9;
  sub_2315860F4();
  v24 = sub_2315860F4();
  v142 = v5;
  v25 = *(v5 + 20);
  v155 = *(v5 + 24);
  LOBYTE(v165) = *(v2 + v155);
  DomainUseCase.intentTypes.getter();
  v156 = v2;
  v26 = sub_231585A54();
  v145 = a1;
  v144 = a2;
  v143 = v8;
  v34 = v26;
  v141 = 0;

  v35 = v34;
LABEL_6:
  v36 = 0;
  v149 = v35;
  v39 = *(v35 + 64);
  v38 = v35 + 64;
  v37 = v39;
  v40 = 1 << *(v38 - 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & v37;
  v43 = (v40 + 63) >> 6;
  v147 = v151 + 16;
  v157 = (v151 + 32);
  v153 = v151 + 8;
  v44 = v154;
  v45 = v150;
  v152 = v38;
  v146 = v43;
  while (1)
  {
    if (!v42)
    {
      while (1)
      {
        v47 = (v36 + 1);
        if (__OFADD__(v36, 1))
        {
          break;
        }

        if (v47 >= v43)
        {
          v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
          __swift_storeEnumTagSinglePayload(v44, 1, 1, v96);
          v42 = 0;
          goto LABEL_16;
        }

        v42 = *(v38 + 8 * v47);
        ++v36;
        if (v42)
        {
          v46 = v24;
          v36 = v47;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v46 = v24;
    v47 = v36;
LABEL_15:
    v48 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
    v49 = v48 | (v47 << 6);
    v50 = (*(v149 + 48) + 16 * v49);
    v52 = *v50;
    v51 = v50[1];
    v53 = v151;
    v54 = v148;
    v55 = v160;
    (*(v151 + 16))(v148, *(v149 + 56) + *(v151 + 72) * v49, v160);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
    v57 = *(v56 + 48);
    v58 = v154;
    *v154 = v52;
    *(v58 + 1) = v51;
    v44 = v58;
    (*(v53 + 32))(&v58[v57], v54, v55);
    __swift_storeEnumTagSinglePayload(v44, 0, 1, v56);

    v24 = v46;
    v45 = v150;
    v43 = v146;
LABEL_16:
    sub_2314F56B8(v44, v45);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
    if (__swift_getEnumTagSinglePayload(v45, 1, v59) == 1)
    {
      break;
    }

    v61 = *v45;
    v60 = v45[1];
    (*v157)(v158, v45 + *(v59 + 48), v160);
    v159 = sub_231585D84();
    v161 = v62;
    v63 = *(v156 + v155);
    if (v63 <= 0xA && ((1 << v63) & 0x50A) != 0)
    {
      v165 = v61;
      v166 = v60;
      v162 = 1702195828;
      v163 = 0xE400000000000000;
      sub_231502AB8();
      if (sub_231586794())
      {

        if (*(v24 + 16) && (v64 = OUTLINED_FUNCTION_2_17(), v66 = sub_23149C888(v64, v65), (v67 & 1) != 0))
        {
          v68 = *(*(v24 + 56) + 8 * v66);
        }

        else
        {
          v68 = 0;
        }

        v76 = sub_231585B84();
        v77 = v68 + v76;
        if (__OFADD__(v68, v76))
        {
          goto LABEL_81;
        }

        swift_isUniquelyReferenced_nonNull_native();
        v165 = v24;
        v78 = OUTLINED_FUNCTION_2_17();
        v80 = sub_23149C888(v78, v79);
        OUTLINED_FUNCTION_3_14(v80, v81);
        if (v84)
        {
          goto LABEL_82;
        }

        v85 = v82;
        v86 = v83;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
        if (OUTLINED_FUNCTION_5_12())
        {
          v87 = OUTLINED_FUNCTION_2_17();
          sub_23149C888(v87, v88);
          OUTLINED_FUNCTION_7_16();
          if (!v69)
          {
            goto LABEL_91;
          }

          v85 = v89;
        }

        if (v86)
        {
          goto LABEL_69;
        }

        v90 = OUTLINED_FUNCTION_0_43();
        v91(v90);
        v92 = *(v24 + 16);
        v84 = __OFADD__(v92, 1);
        v93 = v92 + 1;
        if (v84)
        {
          goto LABEL_85;
        }

        goto LABEL_71;
      }

      v63 = *(v156 + v155);
    }

    v69 = v63 == 11 || v63 == 4;
    if (!v69)
    {

LABEL_44:
      switch(*(v156 + v155))
      {
        case 1:
        case 3:
        case 4:
        case 8:
        case 0xA:
        case 0xB:
          v94 = OUTLINED_FUNCTION_9_10();
          v95(v94);

          v38 = v152;
          continue;
        default:
          if (*(v24 + 16) && (v111 = OUTLINED_FUNCTION_2_17(), v113 = sub_23149C888(v111, v112), (v114 & 1) != 0))
          {
            v115 = *(*(v24 + 56) + 8 * v113);
          }

          else
          {
            v115 = 0;
          }

          v116 = sub_231585B84();
          v77 = v115 + v116;
          if (__OFADD__(v115, v116))
          {
            goto LABEL_87;
          }

          swift_isUniquelyReferenced_nonNull_native();
          v165 = v24;
          v117 = OUTLINED_FUNCTION_2_17();
          v119 = sub_23149C888(v117, v118);
          OUTLINED_FUNCTION_3_14(v119, v120);
          if (v84)
          {
            goto LABEL_88;
          }

          v85 = v121;
          v35 = v122;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
          if ((OUTLINED_FUNCTION_5_12() & 1) == 0)
          {
            goto LABEL_68;
          }

          v123 = OUTLINED_FUNCTION_2_17();
          sub_23149C888(v123, v124);
          OUTLINED_FUNCTION_7_16();
          if (!v69)
          {
            goto LABEL_91;
          }

          v85 = v125;
LABEL_68:
          if (v35)
          {
            goto LABEL_69;
          }

          v128 = OUTLINED_FUNCTION_0_43();
          v129(v128);
          v130 = *(v24 + 16);
          v84 = __OFADD__(v130, 1);
          v93 = v130 + 1;
          if (!v84)
          {
            goto LABEL_71;
          }

          __break(1u);
          OUTLINED_FUNCTION_6_0();
          v27 = sub_231585FF4();
          __swift_project_value_buffer(v27, qword_280D72248);
          v28 = v36;
          v29 = sub_231585FE4();
          v30 = sub_2315865E4();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v165 = swift_slowAlloc();
            *v31 = 136315394;
            v162 = v142;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B810, &qword_23158B018);
            sub_231586204();
            v32 = sub_2314A22E8();

            *(v31 + 4) = v32;
            *(v31 + 12) = 2080;
            swift_getErrorValue();
            sub_231586C94();
            v33 = sub_2314A22E8();

            *(v31 + 14) = v33;
            _os_log_impl(&dword_231496000, v29, v30, "%s error querying interaction history: %s", v31, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_10();
            OUTLINED_FUNCTION_10();
          }

          else
          {
          }

          v141 = 0;
          break;
      }

      goto LABEL_6;
    }

    v165 = v61;
    v166 = v60;
    v162 = 0x65736C6166;
    v163 = 0xE500000000000000;
    sub_231502AB8();
    v70 = sub_231586794();

    if ((v70 & 1) == 0)
    {
      goto LABEL_44;
    }

    if (*(v24 + 16) && (v71 = OUTLINED_FUNCTION_2_17(), v73 = sub_23149C888(v71, v72), (v74 & 1) != 0))
    {
      v75 = *(*(v24 + 56) + 8 * v73);
    }

    else
    {
      v75 = 0;
    }

    v97 = sub_231585B84();
    v77 = v75 + v97;
    if (__OFADD__(v75, v97))
    {
      goto LABEL_83;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v165 = v24;
    v98 = OUTLINED_FUNCTION_2_17();
    v100 = sub_23149C888(v98, v99);
    OUTLINED_FUNCTION_3_14(v100, v101);
    if (v84)
    {
      goto LABEL_84;
    }

    v85 = v102;
    v104 = v103;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
    if (OUTLINED_FUNCTION_5_12())
    {
      v105 = OUTLINED_FUNCTION_2_17();
      sub_23149C888(v105, v106);
      OUTLINED_FUNCTION_7_16();
      if (!v69)
      {
LABEL_91:
        result = sub_231586C84();
        __break(1u);
        return result;
      }

      v85 = v107;
    }

    if (v104)
    {
LABEL_69:

      v24 = v165;
      *(*(v165 + 56) + 8 * v85) = v77;
      v126 = OUTLINED_FUNCTION_9_10();
      v127(v126);
      goto LABEL_72;
    }

    v108 = OUTLINED_FUNCTION_0_43();
    v109(v108);
    v110 = *(v24 + 16);
    v84 = __OFADD__(v110, 1);
    v93 = v110 + 1;
    if (v84)
    {
      goto LABEL_86;
    }

LABEL_71:
    *(v24 + 16) = v93;
LABEL_72:
    v44 = v154;
    v38 = v152;
  }

  if (qword_280D70420 == -1)
  {
    goto LABEL_74;
  }

LABEL_89:
  OUTLINED_FUNCTION_6_0();
LABEL_74:
  v131 = sub_231585FF4();
  __swift_project_value_buffer(v131, qword_280D72248);
  v132 = v143;
  sub_2315029F8(v156, v143);
  v133 = sub_231585FE4();
  v134 = sub_2315865D4();
  if (os_log_type_enabled(v133, v134))
  {
    v135 = swift_slowAlloc();
    v162 = swift_slowAlloc();
    *v135 = 136315394;
    v164 = *(v132 + *(v142 + 24));
    v165 = DomainUseCase.rawValue.getter();
    v166 = v136;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    if (qword_27DD5AE08 != -1)
    {
      OUTLINED_FUNCTION_1_17();
    }

    MEMORY[0x23192FF80](qword_27DD5B7F8, unk_27DD5B800);
    sub_231502A5C(v132);
    v137 = sub_2314A22E8();

    *(v135 + 4) = v137;
    *(v135 + 12) = 2080;

    sub_2315860E4();

    v138 = sub_2314A22E8();

    *(v135 + 14) = v138;
    _os_log_impl(&dword_231496000, v133, v134, "%s value: %s", v135, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    sub_231502A5C(v132);
  }

  v139 = v145;
  v165 = v24;
  LOBYTE(v166) = 1;

  v139(&v165);
  sub_2314A5EEC(v165, v166);
}

uint64_t sub_231502710(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231502770(v3, v1, v2);
}

uint64_t sub_231502770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21[-1] - v8;
  v10 = sub_231585D34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[3] = a2;
  v21[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v21, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2314B5064(v9);
    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v17 = (*(a3 + 24))(a2, a3);
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = &unk_284610020;
    }

    MEMORY[0x28223BE20](v17);
    *(&v20 - 2) = v14;
    v16 = sub_2314DCD00(sub_231502BC0, (&v20 - 4), v18);

    (*(v11 + 8))(v14, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v16;
}

uint64_t sub_2315029F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainTotalFrequencySignal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231502A5C(uint64_t a1)
{
  v2 = type metadata accessor for DomainTotalFrequencySignal();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_231502AB8()
{
  result = qword_27DD5B808;
  if (!qword_27DD5B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B808);
  }

  return result;
}

uint64_t sub_231502B34()
{
  result = sub_231585D34();
  if (v1 <= 0x3F)
  {
    result = sub_231585A84();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t DomainUseCase.interactionDirection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v3 <= 0xD)
  {
    v4 = 1 << v3;
    if ((v4 & 0xA95) != 0)
    {
      v5 = MEMORY[0x277D5FFC0];
LABEL_6:
      v6 = *v5;
      v7 = sub_231585D74();
      (*(*(v7 - 8) + 104))(a1, v6, v7);
      v8 = a1;
      v9 = 0;
      v10 = v7;
      goto LABEL_7;
    }

    if ((v4 & 0x3060) != 0)
    {
      v5 = MEMORY[0x277D5FFB8];
      goto LABEL_6;
    }
  }

  v10 = sub_231585D74();
  v8 = a1;
  v9 = 1;
LABEL_7:

  return __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
}

uint64_t DomainUseCase.isDonatedBySiri.getter()
{
  if (*v0 - 1 > 0xA)
  {
    return 2;
  }

  else
  {
    return byte_23158B16E[(*v0 - 1)];
  }
}

unint64_t DomainUseCase.pseTaskName.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000029;
  if (v1 != 7)
  {
    v2 = 0;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0xD000000000000023;
  }
}

uint64_t DomainUseCase.entityFieldName.getter()
{
  if (*v0 - 2 > 0xB)
  {
    return 0;
  }

  v1 = (*v0 - 2);
  result = *&aPerson[8 * v1];
  v3 = qword_23158B1E0[v1];
  return result;
}

SiriSignals::DomainUseCase_optional __swiftcall DomainUseCase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_231586C54();

  v5 = 17;
  if (v3 < 0x11)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_231502E00(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_23151320C();
}

unint64_t sub_231502E10()
{
  result = qword_27DD5B828;
  if (!qword_27DD5B828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B828);
  }

  return result;
}

unint64_t sub_231502E88@<X0>(unint64_t *a1@<X8>)
{
  result = DomainUseCase.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DomainUseCase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DomainUseCase(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_231503014(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v26 = MEMORY[0x277D84F90];
  sub_23152D5B8();
  v6 = v26;
  v9 = (a3 + 32);
  while (1)
  {
    v10 = *v9++;
    v22 = v10;
    a1(v23, &v22);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v26 = v6;
    v11 = *(v6 + 16);
    if (v11 >= *(v6 + 24) >> 1)
    {
      sub_23152D5B8();
    }

    v12 = v24;
    v13 = v25;
    __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    OUTLINED_FUNCTION_0();
    v15 = *(v14 + 64);
    MEMORY[0x28223BE20](v16);
    OUTLINED_FUNCTION_5();
    v19 = v18 - v17;
    (*(v20 + 16))(v18 - v17);
    sub_231540938(v11, v19, &v26, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v6 = v26;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2315031C0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v15 = MEMORY[0x277D84F90];
  sub_23152D794();
  v6 = v15;
  v9 = *(sub_231585B14() - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    a1(v10);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v12 = *(v15 + 16);
    v13 = v12 + 1;
    if (v12 >= *(v15 + 24) >> 1)
    {
      sub_23152D794();
    }

    *(v15 + 16) = v13;
    v10 += v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23150331C()
{
  result = sub_231586964();
  qword_280D6F228 = result;
  *algn_280D6F230 = v1;
  return result;
}

uint64_t static DomainUserPersonaSignal.signalName.getter()
{
  if (qword_280D6F220 != -1)
  {
    OUTLINED_FUNCTION_0_45();
  }

  v0 = qword_280D6F228;

  return v0;
}

unint64_t DomainUserPersonaSignal.id.getter()
{
  v2 = *(v0 + *(type metadata accessor for DomainUserPersonaSignal() + 20));
  v3 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_280D6F220 != -1)
  {
    OUTLINED_FUNCTION_0_45();
  }

  MEMORY[0x23192FF80](qword_280D6F228, *algn_280D6F230);
  return v3;
}

uint64_t type metadata accessor for DomainUserPersonaSignal()
{
  result = qword_280D6F208;
  if (!qword_280D6F208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static DomainUserPersonaSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2315042CC(v3, v1, v2);
}

uint64_t static DomainUserPersonaSignal.instances(useCases:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v4 = OUTLINED_FUNCTION_19(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v23[3] = &type metadata for SignalComputationContext;
  v23[4] = &protocol witness table for SignalComputationContext;
  v16 = swift_allocObject();
  v23[0] = v16;
  *(v16 + 16) = MEMORY[0x277D84F90];
  *(v16 + 24) = 0u;
  *(v16 + 40) = 0u;
  *(v16 + 56) = a1;
  v17 = qword_280D6FD68;
  swift_bridgeObjectRetain_n();

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  sub_2315144B0(v23, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v7) == 1)
  {
    sub_2314A2910(v1, &qword_27DD5B008, &unk_23158A5C0);
    v18 = MEMORY[0x277D84F90];
  }

  else
  {
    v19 = (*(v9 + 32))(v15, v1, v7);
    if (a1)
    {
      v20 = a1;
    }

    else
    {
      v20 = &unk_284610378;
    }

    MEMORY[0x28223BE20](v19);
    *(&v22 - 2) = v15;

    v18 = sub_231503014(sub_231504564, (&v22 - 4), v20);

    (*(v9 + 8))(v15, v7);
  }

  __swift_destroy_boxed_opaque_existential_1(v23);

  swift_bridgeObjectRelease_n();

  return v18;
}

uint64_t static DomainUserPersonaSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_231504044(v3);
}

uint64_t sub_231503790@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for DomainUserPersonaSignal();
  a3[3] = v6;
  a3[4] = protocol witness table for DomainUserPersonaSignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v8 = sub_231585D34();
  result = (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, a2, v8);
  *(boxed_opaque_existential_1 + *(v6 + 20)) = v5;
  return result;
}

uint64_t static DomainUserPersonaSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611EF0);
  *a1 = result;
  return result;
}

uint64_t DomainUserPersonaSignal.value(completion:)(uint64_t (*a1)(unint64_t *), uint64_t a2)
{
  v67 = a2;
  v68 = a1;
  v3 = type metadata accessor for DomainUserPersonaSignal();
  v4 = OUTLINED_FUNCTION_8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v66 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  v10 = OUTLINED_FUNCTION_19(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v61 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  v16 = OUTLINED_FUNCTION_19(v15);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v64 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v61 - v21;
  v23 = sub_231585D34();
  OUTLINED_FUNCTION_0();
  v25 = v24;
  v27 = *(v26 + 64);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v61 - v32;
  v34 = *(v25 + 16);
  v34(&v61 - v32, v2, v23);
  v61 = v3;
  v35 = *(v2 + *(v3 + 20));
  v36 = sub_231585AE4();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v36);
  v65 = v2;
  v37 = DomainUserPersonaSignal.id.getter();
  v62 = v38;
  v63 = v37;
  v34(v31, v33, v23);
  LOBYTE(v70) = v35;
  v39 = DomainUseCase.intentTypes.getter();
  if (v35 <= 0xD)
  {
    if (((1 << v35) & 0xA95) != 0)
    {
      v40 = MEMORY[0x277D5FFC0];
LABEL_6:
      v41 = *v40;
      v42 = sub_231585D74();
      OUTLINED_FUNCTION_8(v42);
      (*(v43 + 104))(v14, v41, v42);
      v44 = v14;
      v45 = 0;
      v46 = v42;
      goto LABEL_7;
    }

    if (((1 << v35) & 0x3060) != 0)
    {
      v40 = MEMORY[0x277D5FFB8];
      goto LABEL_6;
    }
  }

  v46 = sub_231585D74();
  v44 = v14;
  v45 = 1;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v44, v45, 1, v46);
  if (v35 - 1 > 0xA)
  {
    v47 = 2;
  }

  else
  {
    v47 = byte_23158B28A[(v35 - 1)];
  }

  v48 = v64;
  sub_2314A68F8(v22, v64);
  v49 = sub_2314A0DE8(v31, v39, v14, v47, v48, v63, v62, MEMORY[0x277D84F90], 0);
  sub_2314A2910(v22, &qword_27DD5B4D0, &qword_23158A5D0);
  (*(v25 + 8))(v33, v23);
  sub_23156D71C(v49);
  v51 = v50;

  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v52 = sub_231585FF4();
  __swift_project_value_buffer(v52, qword_280D72248);
  v53 = v66;
  sub_231504584(v65, v66);
  v54 = sub_231585FE4();
  v55 = sub_2315865D4();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v72 = v57;
    *v56 = 136315394;
    v69 = *(v53 + *(v61 + 20));
    v70 = DomainUseCase.rawValue.getter();
    v71 = v58;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    if (qword_280D6F220 != -1)
    {
      OUTLINED_FUNCTION_0_45();
    }

    MEMORY[0x23192FF80](qword_280D6F228, *algn_280D6F230);
    sub_2315045E8(v53);
    v59 = sub_2314A22E8();

    *(v56 + 4) = v59;
    *(v56 + 12) = 1024;
    *(v56 + 14) = v51;
    _os_log_impl(&dword_231496000, v54, v55, "%s value: %d", v56, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v57);
    MEMORY[0x231931280](v57, -1, -1);
    MEMORY[0x231931280](v56, -1, -1);
  }

  else
  {

    sub_2315045E8(v53);
  }

  v70 = v51;
  LOBYTE(v71) = 0;
  return v68(&v70);
}

uint64_t sub_231503DF4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2315042CC(v3, v1, v2);
}

uint64_t _s11SiriSignals23DomainUserPersonaSignalV9instancesSayAA0F9Providing_pGyFZ_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v2 = OUTLINED_FUNCTION_19(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v18[3] = &type metadata for NoParameters;
  v18[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  sub_2315144B0(v18, v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v5) == 1)
  {
    sub_2314A2910(v0, &qword_27DD5B008, &unk_23158A5C0);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    v15 = (*(v7 + 32))(v13, v0, v5);
    MEMORY[0x28223BE20](v15);
    *(&v17 - 2) = v13;
    v14 = sub_231503014(sub_231504684, (&v17 - 4), &unk_284610378);
    (*(v7 + 8))(v13, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v14;
}

uint64_t sub_231504044(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19[-v4 - 8];
  v6 = sub_231585D34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v20[3] = &type metadata for SignalComputationContext;
  v20[4] = &protocol witness table for SignalComputationContext;
  v11 = swift_allocObject();
  v20[0] = v11;
  v12 = *(a1 + 16);
  v11[1] = *a1;
  v11[2] = v12;
  v11[3] = *(a1 + 32);
  sub_2314B5008(a1, v19);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v20, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2314A2910(v5, &qword_27DD5B008, &unk_23158A5C0);
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    v14 = *(a1 + 40);
    v15 = (*(v7 + 32))(v10, v5, v6);
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &unk_284610378;
    }

    MEMORY[0x28223BE20](v15);
    *(&v18 - 2) = v10;

    v13 = sub_231503014(sub_231504684, (&v18 - 4), v16);

    (*(v7 + 8))(v10, v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v13;
}

uint64_t sub_2315042CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21[-1] - v8;
  v10 = sub_231585D34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[3] = a2;
  v21[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v21, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2314A2910(v9, &qword_27DD5B008, &unk_23158A5C0);
    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v17 = (*(a3 + 24))(a2, a3);
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = &unk_284610378;
    }

    MEMORY[0x28223BE20](v17);
    *(&v20 - 2) = v14;
    v16 = sub_231503014(sub_231504684, (&v20 - 4), v18);

    (*(v11 + 8))(v14, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v16;
}

uint64_t sub_231504584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainUserPersonaSignal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2315045E8(uint64_t a1)
{
  v2 = type metadata accessor for DomainUserPersonaSignal();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2315046EC()
{
  result = sub_231586964();
  qword_280D6CE20 = result;
  *algn_280D6CE28 = v1;
  return result;
}

uint64_t static ForegroundAppBiomeSignal.signalName.getter()
{
  if (qword_280D6CE18 != -1)
  {
    OUTLINED_FUNCTION_0_46();
  }

  v0 = qword_280D6CE20;

  return v0;
}

uint64_t ForegroundAppBiomeSignal.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2315047B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_280D6CE18 != -1)
  {
    OUTLINED_FUNCTION_0_46();
  }

  v6 = *algn_280D6CE28;
  *a3 = qword_280D6CE20;
  a3[1] = v6;
  a3[2] = &unk_2846103A0;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = *(v8 + 8);

  a3[3] = v9(v7, v8);
  a3[4] = a2;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ForegroundAppBiomeSignal.init(candidateBundleIds:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for SignalDefinitionParametersProvider.Builder();
  swift_initStackObject();
  SignalDefinitionParametersProvider.Builder.init()();
  sub_231539348(a1);

  sub_23149A740(__src);

  memcpy(__dst, __src, sizeof(__dst));
  v4 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v5 = [v4 InFocus];
  swift_unknownObjectRelease();
  if (qword_280D6CE18 != -1)
  {
    OUTLINED_FUNCTION_0_46();
  }

  v7 = qword_280D6CE20;
  v6 = *algn_280D6CE28;
  v8 = __dst[0];

  result = sub_2314A0D7C(__dst);
  *a2 = v7;
  a2[1] = v6;
  a2[2] = &unk_284611F18;
  a2[3] = v8;
  a2[4] = v5;
  return result;
}

uint64_t static ForegroundAppBiomeSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2315056CC(v3, v1, v2);
}

uint64_t static ForegroundAppBiomeSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_23150557C(v3);
}

uint64_t static ForegroundAppBiomeSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611F48);
  *a1 = result;
  return result;
}

void ForegroundAppBiomeSignal.value(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v7);
  v11 = &v29[-v10 - 8];
  v12 = v2[1];
  v36 = *v2;
  v37 = v12;
  v38 = *(v2 + 4);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2315860F4();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = sub_231585884();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v16);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v16);
  v17 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  sub_2314B87DC(v11, v9, 1, 1, 0);
  v19 = v18;
  v20 = [v38 publisherWithOptions_];
  OUTLINED_FUNCTION_1_18();
  v21 = swift_allocObject();
  v22 = v37;
  *(v21 + 16) = v36;
  *(v21 + 32) = v22;
  *(v21 + 48) = v38;
  *(v21 + 56) = v13;
  *(v21 + 64) = a1;
  *(v21 + 72) = a2;
  v34 = sub_231505814;
  v35 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_2314B901C;
  v33 = &block_descriptor_7;
  v23 = _Block_copy(&aBlock);
  sub_231505824(&v36, v29);

  OUTLINED_FUNCTION_1_18();
  v24 = swift_allocObject();
  *(v24 + 16) = v14;
  *(v24 + 24) = v15;
  v25 = v37;
  *(v24 + 32) = v36;
  *(v24 + 48) = v25;
  *(v24 + 64) = v38;
  *(v24 + 72) = v13;
  v34 = sub_23150585C;
  v35 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_2314B901C;
  v33 = &block_descriptor_16;
  v26 = _Block_copy(&aBlock);
  sub_231505824(&v36, v29);

  v27 = [v20 sinkWithCompletion:v23 receiveInput:v26];
  _Block_release(v26);
  _Block_release(v23);
}

uint64_t sub_231504DF4(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t *))
{
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v7 = sub_231585FF4();
  __swift_project_value_buffer(v7, qword_280D72248);
  sub_231505824(a2, v19);

  v8 = sub_231585FE4();
  v9 = sub_2315865D4();
  sub_231505918(a2);

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136315394;
    v12 = *a2;
    v13 = a2[1];
    *(v10 + 4) = sub_2314A22E8();
    *(v10 + 12) = 2080;
    swift_beginAccess();
    v14 = *(a3 + 16);

    sub_2315860E4();

    v15 = sub_2314A22E8();

    *(v10 + 14) = v15;
    _os_log_impl(&dword_231496000, v8, v9, "%s value: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231931280](v11, -1, -1);
    MEMORY[0x231931280](v10, -1, -1);
  }

  swift_beginAccess();
  v17 = *(a3 + 16);
  v18 = 1;

  a4(&v17);
  return sub_2314A5EEC(v17, v18);
}

void sub_23150502C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = MEMORY[0x231930B10]();
  v11 = [a1 eventBody];
  if (v11)
  {
    v12 = v11;
    v13 = sub_2314D7528(v11);
    v15 = v14;
    swift_beginAccess();
    v16 = *(a2 + 24);
    *(a2 + 16) = v13;
    *(a2 + 24) = v15;

    LOBYTE(v13) = [v12 starting];

    swift_beginAccess();
    *(a3 + 16) = v13;
  }

  v49 = a3;
  objc_autoreleasePoolPop(v10);
  v17 = *(a4 + 24);
  v18 = *(v17 + 16);
  if (!v18)
  {
    return;
  }

  swift_beginAccess();
  swift_beginAccess();
  v19 = (v17 + 40);
  v50 = a2;
  while (1)
  {
    v21 = *(v19 - 1);
    v20 = *v19;
    v22 = *(a2 + 24);
    if (v22)
    {
      v23 = v21 == *(a2 + 16) && v22 == v20;
      if (v23 || (v24 = *(v19 - 1), v25 = *v19, (sub_231586C44() & 1) != 0))
      {
        if (*(v49 + 16) == 1)
        {
          swift_beginAccess();

          v26 = *(a5 + 16);
          swift_isUniquelyReferenced_nonNull_native();
          v27 = *(a5 + 16);
          *(a5 + 16) = 0x8000000000000000;
          v28 = sub_23149C888(v21, v20);
          if (__OFADD__(v27[2], (v29 & 1) == 0))
          {
            goto LABEL_33;
          }

          v30 = v28;
          v31 = v29;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
          if (sub_231586A64())
          {
            v32 = sub_23149C888(v21, v20);
            if ((v31 & 1) != (v33 & 1))
            {
              goto LABEL_35;
            }

            v30 = v32;
          }

          if ((v31 & 1) == 0)
          {
            v34 = v27;
            v27[(v30 >> 6) + 8] |= 1 << v30;
            v47 = (v27[6] + 16 * v30);
            *v47 = v21;
            v47[1] = v20;
            *(v27[7] + 8 * v30) = 1;
            v48 = v27[2];
            v45 = __OFADD__(v48, 1);
            v46 = v48 + 1;
            if (v45)
            {
              goto LABEL_34;
            }

LABEL_28:
            v34[2] = v46;
            goto LABEL_29;
          }

          v34 = v27;
          *(v27[7] + 8 * v30) = 1;
          goto LABEL_29;
        }
      }
    }

    swift_beginAccess();

    v35 = *(a5 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v36 = *(a5 + 16);
    *(a5 + 16) = 0x8000000000000000;
    v37 = sub_23149C888(v21, v20);
    if (__OFADD__(v36[2], (v38 & 1) == 0))
    {
      break;
    }

    v39 = v37;
    v40 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
    if (sub_231586A64())
    {
      v41 = sub_23149C888(v21, v20);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_35;
      }

      v39 = v41;
    }

    if ((v40 & 1) == 0)
    {
      v34 = v36;
      v36[(v39 >> 6) + 8] |= 1 << v39;
      v43 = (v36[6] + 16 * v39);
      *v43 = v21;
      v43[1] = v20;
      *(v36[7] + 8 * v39) = 0;
      v44 = v36[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }

    v34 = v36;
    *(v36[7] + 8 * v39) = 0;
LABEL_29:
    *(a5 + 16) = v34;
    swift_endAccess();
    a2 = v50;
    v19 += 2;
    if (!--v18)
    {
      return;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  sub_231586C84();
  __break(1u);
}

uint64_t sub_231505404(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2315056CC(v3, v1, v2);
}

uint64_t _s11SiriSignals24ForegroundAppBiomeSignalV9instancesSayAA0F9Providing_pGyFZ_0()
{
  v6[3] = &type metadata for NoParameters;
  v6[4] = &protocol witness table for NoParameters;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  sub_2314A2C74(v6, v5);
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 InFocus];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for ForegroundAppBiomeSignal;
  *(v0 + 64) = &protocol witness table for ForegroundAppBiomeSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  sub_2315047B0(v5, v2, (v3 + 16));
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v0;
}

uint64_t sub_23150557C(_OWORD *a1)
{
  v11[3] = &type metadata for SignalComputationContext;
  v11[4] = &protocol witness table for SignalComputationContext;
  v2 = swift_allocObject();
  v11[0] = v2;
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v2[3] = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_231588340;
  sub_2314A2C74(v11, v10);
  sub_2314B5008(a1, &v9);
  v5 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v6 = [v5 InFocus];
  swift_unknownObjectRelease();
  *(v4 + 56) = &type metadata for ForegroundAppBiomeSignal;
  *(v4 + 64) = &protocol witness table for ForegroundAppBiomeSignal;
  v7 = swift_allocObject();
  *(v4 + 32) = v7;
  sub_2315047B0(v10, v6, (v7 + 16));
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v4;
}

uint64_t sub_2315056CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[3] = a2;
  v12[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_231588340;
  sub_2314A2C74(v12, v11);
  v7 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v8 = [v7 InFocus];
  swift_unknownObjectRelease();
  *(v6 + 56) = &type metadata for ForegroundAppBiomeSignal;
  *(v6 + 64) = &protocol witness table for ForegroundAppBiomeSignal;
  v9 = swift_allocObject();
  *(v6 + 32) = v9;
  sub_2315047B0(v11, v8, (v9 + 16));
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v6;
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

uint64_t sub_231505880(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2315058C0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_231505964()
{
  result = sub_231586964();
  qword_280D6CB48 = result;
  *algn_280D6CB50 = v1;
  return result;
}

uint64_t static ForegroundAppInFocusSignal.signalName.getter()
{
  if (qword_280D6CB40 != -1)
  {
    OUTLINED_FUNCTION_0_47();
  }

  v0 = qword_280D6CB48;

  return v0;
}

uint64_t ForegroundAppInFocusSignal.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_231505A20@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  if (qword_280D6CB40 != -1)
  {
    OUTLINED_FUNCTION_0_47();
  }

  v6 = *algn_280D6CB50;
  *a3 = qword_280D6CB48;
  a3[1] = v6;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = *(v8 + 8);

  a3[2] = v9(v7, v8);
  v10 = v9(v7, v8);
  type metadata accessor for BiomeQueriesAppInFocus();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  sub_2314D62B4(a2, v11 + 24);
  a3[3] = v11;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ForegroundAppInFocusSignal.init(candidateBundleIds:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for SignalDefinitionParametersProvider.Builder();
  swift_initStackObject();
  SignalDefinitionParametersProvider.Builder.init()();
  sub_231539348(a1);

  sub_23149A740(__src);

  v15[3] = &type metadata for SignalDefinitionParametersProvider;
  v15[4] = &protocol witness table for SignalDefinitionParametersProvider;
  v4 = swift_allocObject();
  v15[0] = v4;
  memcpy((v4 + 16), __src, 0x50uLL);
  v13 = &type metadata for BiomeSQLQueryResultProvider;
  v14 = &protocol witness table for BiomeSQLQueryResultProvider;
  if (qword_280D6CB40 != -1)
  {
    OUTLINED_FUNCTION_0_47();
  }

  v6 = qword_280D6CB48;
  v5 = *algn_280D6CB50;
  v7 = __swift_project_boxed_opaque_existential_1(v15, &type metadata for SignalDefinitionParametersProvider);
  v8 = *(v4 + 16);
  v9 = *v7;
  type metadata accessor for BiomeQueriesAppInFocus();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  sub_2314D62B4(&v12, v10 + 24);

  result = __swift_destroy_boxed_opaque_existential_1(v15);
  *a2 = v6;
  a2[1] = v5;
  a2[2] = v8;
  a2[3] = v10;
  return result;
}

uint64_t static ForegroundAppInFocusSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2315061EC(v3, v1, v2);
}

uint64_t static ForegroundAppInFocusSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_2315060D8(v3);
}

uint64_t static ForegroundAppInFocusSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611F70);
  *a1 = result;
  return result;
}

uint64_t ForegroundAppInFocusSignal.value(completion:)(void (*a1)(uint64_t *))
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = sub_2314CCBB0();
  if (v7)
  {
    v8 = v7;
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v9 = sub_231585FF4();
    __swift_project_value_buffer(v9, qword_280D72248);

    v10 = sub_231585FE4();
    v11 = sub_2315865D4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136315394;

      v14 = sub_2314A22E8();

      *(v12 + 4) = v14;
      *(v12 + 12) = 2080;
      sub_2315860E4();
      v15 = sub_2314A22E8();

      *(v12 + 14) = v15;
      _os_log_impl(&dword_231496000, v10, v11, "%s value: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231931280](v13, -1, -1);
      MEMORY[0x231931280](v12, -1, -1);
    }

    v17 = v8;
    v18 = 1;
    a1(&v17);
    return sub_2314A5EEC(v17, v18);
  }

  else
  {
    v17 = -1;
    v18 = 0;
    return (a1)(&v17);
  }
}

uint64_t sub_231505FA8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2315061EC(v3, v1, v2);
}

uint64_t _s11SiriSignals26ForegroundAppInFocusSignalV9instancesSayAA0G9Providing_pGyFZ_0()
{
  v7[3] = &type metadata for NoParameters;
  v7[4] = &protocol witness table for NoParameters;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  sub_2314A2C74(v7, v6);
  v4 = &type metadata for BiomeSQLQueryResultProvider;
  v5 = &protocol witness table for BiomeSQLQueryResultProvider;
  *(v0 + 56) = &type metadata for ForegroundAppInFocusSignal;
  *(v0 + 64) = &protocol witness table for ForegroundAppInFocusSignal;
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  sub_231505A20(v6, &v3, (v1 + 16));
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v0;
}

uint64_t sub_2315060D8(_OWORD *a1)
{
  v12[3] = &type metadata for SignalComputationContext;
  v12[4] = &protocol witness table for SignalComputationContext;
  v2 = swift_allocObject();
  v12[0] = v2;
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v2[3] = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_231588340;
  sub_2314A2C74(v12, v11);
  v9 = &type metadata for BiomeSQLQueryResultProvider;
  v10 = &protocol witness table for BiomeSQLQueryResultProvider;
  *(v4 + 56) = &type metadata for ForegroundAppInFocusSignal;
  *(v4 + 64) = &protocol witness table for ForegroundAppInFocusSignal;
  v5 = swift_allocObject();
  *(v4 + 32) = v5;
  sub_2314B5008(a1, v7);
  sub_231505A20(v11, &v8, (v5 + 16));
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v4;
}

uint64_t sub_2315061EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[3] = a2;
  v13[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_231588340;
  sub_2314A2C74(v13, v12);
  v10 = &type metadata for BiomeSQLQueryResultProvider;
  v11 = &protocol witness table for BiomeSQLQueryResultProvider;
  *(v6 + 56) = &type metadata for ForegroundAppInFocusSignal;
  *(v6 + 64) = &protocol witness table for ForegroundAppInFocusSignal;
  v7 = swift_allocObject();
  *(v6 + 32) = v7;
  sub_231505A20(v12, &v9, (v7 + 16));
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v6;
}

uint64_t sub_231506310()
{
  result = sub_231586964();
  qword_280D6F160 = result;
  qword_280D6F168 = v1;
  return result;
}

uint64_t *sub_231506344()
{
  if (qword_280D6F158 != -1)
  {
    OUTLINED_FUNCTION_0_48();
  }

  return &qword_280D6F160;
}

uint64_t static ForegroundAppRecencySignal.signalName.getter()
{
  if (qword_280D6F158 != -1)
  {
    OUTLINED_FUNCTION_0_48();
  }

  swift_beginAccess();
  v0 = qword_280D6F160;

  return v0;
}

uint64_t static ForegroundAppRecencySignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6F158 != -1)
  {
    OUTLINED_FUNCTION_0_48();
  }

  swift_beginAccess();
  qword_280D6F160 = a1;
  qword_280D6F168 = a2;
}

uint64_t (*static ForegroundAppRecencySignal.signalName.modify())()
{
  if (qword_280D6F158 != -1)
  {
    OUTLINED_FUNCTION_0_48();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2315064EC@<X0>(void *a1@<X8>)
{
  sub_231506344();
  swift_beginAccess();
  v2 = qword_280D6F168;
  *a1 = qword_280D6F160;
  a1[1] = v2;
}

uint64_t sub_231506540(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_231506344();
  swift_beginAccess();
  qword_280D6F160 = v2;
  qword_280D6F168 = v1;
}

uint64_t ForegroundAppRecencySignal.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static ForegroundAppRecencySignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v7[3] = &type metadata for BiomeSQLQueryResultProvider;
  v7[4] = &protocol witness table for BiomeSQLQueryResultProvider;
  *(v0 + 56) = &type metadata for ForegroundAppRecencySignal;
  *(v0 + 64) = &protocol witness table for ForegroundAppRecencySignal;
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  if (qword_280D6F158 != -1)
  {
    OUTLINED_FUNCTION_0_48();
  }

  swift_beginAccess();
  v2 = qword_280D6F168;
  *(v1 + 16) = qword_280D6F160;
  *(v1 + 24) = v2;
  sub_2314A2C74(v7, v6);
  type metadata accessor for BiomeQueriesAppInFocus();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F90];
  *(v3 + 16) = MEMORY[0x277D84F90];
  sub_2314D62B4(v6, v3 + 24);
  *(v1 + 32) = v3;
  *(v1 + 40) = sub_2314E03E4;
  *(v1 + 48) = 0;

  __swift_destroy_boxed_opaque_existential_1(v7);
  *(v1 + 56) = v4;
  *(v1 + 64) = -1;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 1;
  return v0;
}

uint64_t static ForegroundAppRecencySignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2315071E4(v3, v1, v2);
}

uint64_t static ForegroundAppRecencySignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_231506FD0(v3);
}

uint64_t static ForegroundAppRecencySignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611F98);
  *a1 = result;
  return result;
}

void sub_2315067E4(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v15 = *a1;
  LOBYTE(v16) = v3;
  swift_unknownObjectRetain();
  sub_2315074D0(v15, v3);
  sub_2314D7108(&v15, &v11);
  if (!v12)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v7 = sub_231585FF4();
    __swift_project_value_buffer(v7, qword_280D72248);
    v8 = sub_231585FE4();
    v9 = sub_2315865E4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_231496000, v8, v9, "ForegroundAppRecencySignal: Invalid input", v10, 2u);
      MEMORY[0x231931280](v10, -1, -1);
    }

    goto LABEL_10;
  }

  v4 = v14;
  if ((v13 & 1) == 0)
  {
    v15 = v11;
    v16 = v12;
    sub_2315074E4(&v15);
    v17 = v4;
    sub_231507538(&v17);
LABEL_10:
    v5 = 0;
    v6 = -1;
    goto LABEL_11;
  }

  v15 = v14;

  swift_isUniquelyReferenced_nonNull_native();
  v17 = v4;
  sub_23157562C();

  sub_231507538(&v15);
  v5 = v17;
  v6 = 1;
LABEL_11:
  *a2 = v5;
  *(a2 + 8) = v6;
}

uint64_t ForegroundAppRecencySignal.value(completion:)(void (*a1)(uint64_t *))
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[4];
  v7 = v1[5];
  v8 = sub_2314CD40C();
  if (v8)
  {
    v9 = v8;
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v10 = sub_231585FF4();
    __swift_project_value_buffer(v10, qword_280D72248);

    v11 = sub_231585FE4();
    v12 = sub_2315865D4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315394;

      v15 = sub_2314A22E8();

      *(v13 + 4) = v15;
      *(v13 + 12) = 2080;
      sub_2315860E4();
      v16 = sub_2314A22E8();

      *(v13 + 14) = v16;
      _os_log_impl(&dword_231496000, v11, v12, "%s value: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231931280](v14, -1, -1);
      MEMORY[0x231931280](v13, -1, -1);
    }

    v18 = v9;
    v19 = 1;
    a1(&v18);
    return sub_2314A5EEC(v18, v19);
  }

  else
  {
    v18 = -1;
    v19 = 0;
    return (a1)(&v18);
  }
}

void ForegroundAppRecencySignal.derive(from:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = a2;
  switch(v4)
  {
    case 1:
      v40 = *(v2 + 32);
      swift_retain_n();
      v41 = sub_2314EA928(*&v3, v5);

      *v7 = v41;
      goto LABEL_38;
    case 2:
      v11 = OUTLINED_FUNCTION_6_1(*a1);
      if (!(v13 ^ v14 | v12))
      {
        goto LABEL_44;
      }

      if (v11 <= -9.22337204e18)
      {
        goto LABEL_45;
      }

      if (v11 >= 9.22337204e18)
      {
        goto LABEL_46;
      }

      v15 = v11;
      if ((v11 & 0x8000000000000000) == 0)
      {

        v17 = v5(v16);

        if (v17 < v15)
        {
          v15 = -1;
        }

        else
        {
          v15 = v17 - v15;
        }
      }

      *v7 = v15;
      goto LABEL_38;
    case 3:
      v44 = *(v2 + 24);
      v42 = *(a1 + 8);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
      v18 = sub_231586AC4();
      v19 = v18;
      v20 = *&v3 + 64;
      v21 = 1 << *(*&v3 + 32);
      v22 = -1;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      i = v22 & *(*&v3 + 64);
      v24 = (v21 + 63) >> 6;
      v46 = v18 + 64;
      swift_retain_n();
      v25 = 0;
      v45 = v3;
      if (i)
      {
        goto LABEL_19;
      }

      break;
    default:
      if ((*&v3 & 0x8000000000000000) == 0)
      {
        v8 = *(v2 + 32);

        v10 = v5(v9);

        if (v10 < *&v3)
        {
          v3 = NAN;
        }

        else
        {
          *&v3 = v10 - *&v3;
        }
      }

      *v7 = v3;
      goto LABEL_38;
  }

LABEL_20:
  v27 = v25;
  do
  {
    v25 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v25 >= v24)
    {

      v4 = v42;
      v7 = a2;
      *a2 = v19;
LABEL_38:
      *(v7 + 8) = v4;
      return;
    }

    v28 = *(v20 + 8 * v25);
    ++v27;
  }

  while (!v28);
  v26 = __clz(__rbit64(v28));
  for (i = (v28 - 1) & v28; ; i &= i - 1)
  {
    v29 = v26 | (v25 << 6);
    v30 = OUTLINED_FUNCTION_6_1(*(*(*&v3 + 56) + 8 * v29));
    if (!(v13 ^ v14 | v12))
    {
      break;
    }

    if (v30 <= -9.22337204e18)
    {
      goto LABEL_41;
    }

    if (v30 >= 9.22337204e18)
    {
      goto LABEL_42;
    }

    v31 = (*(*&v3 + 48) + 16 * v29);
    v32 = *v31;
    v33 = v31[1];
    v34 = v30;

    if ((v34 & 0x8000000000000000) == 0)
    {
      v36 = v44(v35);
      if (v36 < v34)
      {
        v34 = -1;
      }

      else
      {
        v34 = v36 - v34;
      }
    }

    *(v46 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v37 = (v19[6] + 16 * v29);
    *v37 = v32;
    v37[1] = v33;
    *(v19[7] + 8 * v29) = v34;
    v38 = v19[2];
    v14 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v14)
    {
      goto LABEL_43;
    }

    v19[2] = v39;
    v3 = v45;
    if (!i)
    {
      goto LABEL_20;
    }

LABEL_19:
    v26 = __clz(__rbit64(i));
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

void ForegroundAppRecencySignal.adaptCached(value:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 56);
  v8 = *(v2 + 40);
  v9 = v5;
  v10 = *(v2 + 72);
  v6 = v3;
  v7 = v4;
  sub_231566F38(&v6, a2);
}

uint64_t sub_231506F4C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2315071E4(v3, v1, v2);
}

uint64_t sub_231506FD0(uint64_t a1)
{
  v15[3] = &type metadata for SignalComputationContext;
  v15[4] = &protocol witness table for SignalComputationContext;
  v2 = swift_allocObject();
  v15[0] = v2;
  v3 = *a1;
  v16 = *a1;
  v4 = *(a1 + 16);
  v2[1] = *a1;
  v2[2] = v4;
  v2[3] = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_231588340;
  sub_2314A2C74(v15, v14);
  v13[3] = &type metadata for BiomeSQLQueryResultProvider;
  v13[4] = &protocol witness table for BiomeSQLQueryResultProvider;
  *(v5 + 56) = &type metadata for ForegroundAppRecencySignal;
  *(v5 + 64) = &protocol witness table for ForegroundAppRecencySignal;
  v6 = swift_allocObject();
  *(v5 + 32) = v6;
  sub_2314B5008(a1, v12);
  if (qword_280D6F158 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = qword_280D6F168;
  *(v6 + 16) = qword_280D6F160;
  *(v6 + 24) = v7;
  v8 = __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_2314A2C74(v13, v12);
  type metadata accessor for BiomeQueriesAppInFocus();
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  sub_2314D62B4(v12, v9 + 24);
  *(v6 + 32) = v9;
  *(v6 + 40) = sub_2314E03E4;
  *(v6 + 48) = 0;
  v10 = *v8;

  sub_2315075A0(&v16, v12);

  __swift_destroy_boxed_opaque_existential_1(v13);
  *(v6 + 56) = v10;
  *(v6 + 64) = -1;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 88) = 1;
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v5;
}

uint64_t sub_2315071E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[3] = a2;
  v20[4] = a3;
  __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a2 - 8) + 16))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_231588340;
  sub_2314A2C74(v20, v17);
  v16[3] = &type metadata for BiomeSQLQueryResultProvider;
  v16[4] = &protocol witness table for BiomeSQLQueryResultProvider;
  *(v5 + 56) = &type metadata for ForegroundAppRecencySignal;
  *(v5 + 64) = &protocol witness table for ForegroundAppRecencySignal;
  v6 = swift_allocObject();
  *(v5 + 32) = v6;
  if (qword_280D6F158 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = qword_280D6F168;
  *(v6 + 16) = qword_280D6F160;
  *(v6 + 24) = v7;
  v8 = v18;
  v14 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v9 = *(a3 + 8);

  v10 = v9(a2, a3);
  sub_2314A2C74(v16, v15);
  type metadata accessor for BiomeQueriesAppInFocus();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  sub_2314D62B4(v15, v11 + 24);
  *(v6 + 32) = v11;
  *(v6 + 40) = sub_2314E03E4;
  *(v6 + 48) = 0;
  v12 = v9(v8, v14);
  __swift_destroy_boxed_opaque_existential_1(v16);
  *(v6 + 56) = v12;
  *(v6 + 64) = -1;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 88) = 1;
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v5;
}

uint64_t sub_23150742C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23150746C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2315074D0(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_2314A5168(a1, a2);
  }

  return a1;
}

uint64_t sub_231507538(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B2E8, &unk_23158B460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2315075A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231507688(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = OUTLINED_FUNCTION_10_8();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t sub_231507748(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t *))
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v8 = *(a1 + 16);
  }

  else
  {
    v8 = *(a2 + 16);
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v9 = OUTLINED_FUNCTION_10_8();
  }

  else
  {
    v9 = MEMORY[0x277D84F98];
  }

  v11 = v9;

  a5(a1, a2, 1, &v11);

  return v11;
}

uint64_t sub_231507838(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v6 = OUTLINED_FUNCTION_10_8();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v8 = v6;
  a4(a1, 1, &v8);
  return v8;
}

uint64_t ForegroundAppSignal.name.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ForegroundAppSignal.__allocating_init(candidateAppBundleIds:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ForegroundAppSignal.init(candidateAppBundleIds:)(a1);
  return v2;
}

void *ForegroundAppSignal.init(candidateAppBundleIds:)(uint64_t a1)
{
  v1[3] = [objc_opt_self() keyPathForForegroundApp];
  v1[4] = sub_231586964();
  v1[5] = v3;
  v1[2] = a1;
  return v1;
}

void sub_2315079AC(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() userContext];
  if (!v3)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v22 = sub_231585FF4();
    __swift_project_value_buffer(v22, qword_280D72248);
    v23 = sub_231585FE4();
    v24 = sub_2315865E4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_231496000, v23, v24, "ForegroundAppSignal#BOOLValue Could not find user context; values are empty", v25, 2u);
      MEMORY[0x231931280](v25, -1, -1);
    }

    goto LABEL_35;
  }

  v4 = v3;
  v5 = *(v1 + 24);
  if (!v5)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v26 = sub_231585FF4();
    __swift_project_value_buffer(v26, qword_280D72248);
    v27 = sub_231585FE4();
    v28 = sub_2315865E4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_231496000, v27, v28, "ForegroundAppSignal#BOOLValue could not resolve keypath, which should never happen", v29, 2u);
      MEMORY[0x231931280](v29, -1, -1);
    }

    goto LABEL_35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B830, &qword_23158B470);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_231588FF0;
  *(v6 + 32) = v5;
  sub_2314A207C(0, &qword_280D6FE80, 0x277CFE358);
  v7 = v5;
  v8 = sub_231586374();

  v9 = [v4 valuesForKeyPaths_];

  if (!v9)
  {
    goto LABEL_30;
  }

  sub_2314A207C(0, &qword_280D6FEA0, 0x277CFE340);
  sub_2314DFED8();
  v10 = sub_2315860D4();

  v11 = sub_231566778(v7, v10);

  if (!v11 || (v12 = [v11 value], v11, !v12))
  {
LABEL_30:
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v30 = sub_231585FF4();
    __swift_project_value_buffer(v30, qword_280D72248);
    v31 = sub_231585FE4();
    v32 = sub_2315865E4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_231496000, v31, v32, "ForegroundAppSignal#BOOLValue missing value for path", v33, 2u);
      MEMORY[0x231931280](v33, -1, -1);
    }

LABEL_35:
    v34 = 0;
    v35 = -1;
    goto LABEL_36;
  }

  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B840, &unk_23158A000);
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_30;
  }

  v13 = *(v1 + 16);
  v14 = *(v13 + 16);
  if (v14)
  {
    v37 = v7;
    v15 = v38;
    v39 = MEMORY[0x277D84F90];
    sub_23152D5F8(0, v14, 0);
    v16 = v39;
    v17 = (v13 + 40);
    do
    {
      if (*(v17 - 1) == v15 && *v17 == v40)
      {
        v19 = 1;
      }

      else
      {
        v19 = sub_231586C44() & 1;
      }

      v21 = *(v39 + 16);
      v20 = *(v39 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_23152D5F8(v20 > 1, v21 + 1, 1);
      }

      *(v39 + 16) = v21 + 1;
      *(v39 + 8 * v21 + 32) = v19;
      v17 += 2;
      --v14;
    }

    while (v14);

    v7 = v37;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v35 = sub_231507748(v36, v16, &qword_27DD5B188, &unk_231588590, sub_231508F88);

  swift_unknownObjectRelease();
  v34 = 1;
LABEL_36:
  *a1 = v35;
  *(a1 + 8) = v34;
}

uint64_t ForegroundAppSignal.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t ForegroundAppSignal.__deallocating_deinit()
{
  ForegroundAppSignal.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

void sub_231507FFC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B188, &unk_231588590);
  v45 = a2;
  v7 = sub_231586AD4();
  if (!*(v5 + 16))
  {
LABEL_30:

LABEL_31:
    *v3 = v7;
    return;
  }

  v43 = v3;
  v44 = v5;
  v8 = 0;
  v9 = v5;
  OUTLINED_FUNCTION_1_19();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v15 = v7 + 64;
  if ((v11 & v10) == 0)
  {
LABEL_6:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v14)
      {
        break;
      }

      ++v17;
      if (*(v9 + 8 * v8))
      {
        OUTLINED_FUNCTION_9_0();
        v12 = v19 & v18;
        goto LABEL_11;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_31;
    }

    v39 = *(v5 + 32);
    OUTLINED_FUNCTION_9_11();
    v3 = v43;
    if (v41 != v42)
    {
      OUTLINED_FUNCTION_7_17(v40);
    }

    else
    {
      OUTLINED_FUNCTION_5_13(v40);
    }

    *(v5 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v20 = v16 | (v8 << 6);
    v21 = (*(v5 + 48) + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = *(*(v5 + 56) + 8 * v20);
    if ((v45 & 1) == 0)
    {
      v25 = v21[1];
    }

    v26 = *(v7 + 40);
    sub_231586D14();
    sub_231586274();
    sub_231586D44();
    v27 = *(v7 + 32);
    OUTLINED_FUNCTION_4_15();
    if (((v30 << v29) & ~*(v15 + 8 * v28)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_3_15();
LABEL_22:
    OUTLINED_FUNCTION_12_0();
    *(v15 + v35) |= v36;
    v38 = (*(v7 + 48) + 16 * v37);
    *v38 = v22;
    v38[1] = v23;
    *(*(v7 + 56) + 8 * v37) = v24;
    ++*(v7 + 16);
    v5 = v44;
    if (!v12)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_2_18();
  while (++v31 != v33 || (v32 & 1) == 0)
  {
    v34 = v31 == v33;
    if (v31 == v33)
    {
      v31 = 0;
    }

    v32 |= v34;
    if (*(v15 + 8 * v31) != -1)
    {
      OUTLINED_FUNCTION_11();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_231508218(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B328, &qword_231589370);
  v33 = a2;
  result = sub_231586AD4();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_34;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      sub_23149BEE0(0, (v31 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(*(v5 + 48) + v19);
    v21 = *(*(v5 + 56) + 8 * v19);
    if ((v33 & 1) == 0)
    {
    }

    v22 = *(v8 + 40);
    sub_231586D14();
    sub_231586274();

    result = sub_231586D44();
    v23 = -1 << *(v8 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(*(v8 + 48) + v26) = v20;
    *(*(v8 + 56) + 8 * v26) = v21;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v15 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_231508524(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B358, &qword_23158B510);
  v46 = a2;
  v7 = sub_231586AD4();
  if (!*(v5 + 16))
  {
LABEL_30:

LABEL_31:
    *v3 = v7;
    return;
  }

  v44 = v3;
  v45 = v5;
  v8 = 0;
  v9 = v5;
  OUTLINED_FUNCTION_1_19();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v15 = v7 + 64;
  if ((v11 & v10) == 0)
  {
LABEL_6:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v14)
      {
        break;
      }

      ++v17;
      if (*(v9 + 8 * v8))
      {
        OUTLINED_FUNCTION_9_0();
        v12 = v19 & v18;
        goto LABEL_11;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_31;
    }

    v40 = *(v5 + 32);
    OUTLINED_FUNCTION_9_11();
    v3 = v44;
    if (v42 != v43)
    {
      OUTLINED_FUNCTION_7_17(v41);
    }

    else
    {
      OUTLINED_FUNCTION_5_13(v41);
    }

    *(v5 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v20 = v16 | (v8 << 6);
    v21 = (*(v5 + 48) + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = (*(v5 + 56) + 16 * v20);
    v25 = v24[1];
    v47 = *v24;
    if ((v46 & 1) == 0)
    {
    }

    v26 = *(v7 + 40);
    sub_231586D14();
    sub_231586274();
    sub_231586D44();
    v27 = *(v7 + 32);
    OUTLINED_FUNCTION_4_15();
    if (((v30 << v29) & ~*(v15 + 8 * v28)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_3_15();
LABEL_22:
    OUTLINED_FUNCTION_12_0();
    *(v15 + v35) |= v36;
    v38 = (*(v7 + 48) + 16 * v37);
    *v38 = v22;
    v38[1] = v23;
    v39 = (*(v7 + 56) + 16 * v37);
    *v39 = v47;
    v39[1] = v25;
    ++*(v7 + 16);
    v5 = v45;
    if (!v12)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_2_18();
  while (++v31 != v33 || (v32 & 1) == 0)
  {
    v34 = v31 == v33;
    if (v31 == v33)
    {
      v31 = 0;
    }

    v32 |= v34;
    if (*(v15 + 8 * v31) != -1)
    {
      OUTLINED_FUNCTION_11();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_231508758(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
  v37 = a2;
  result = sub_231586AD4();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_23149BEE0(0, (v35 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v37 & 1) == 0)
    {
      v24 = v20[1];
    }

    v25 = *(v8 + 40);
    sub_231586D14();
    sub_231586274();
    result = sub_231586D44();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    *(*(v8 + 56) + 8 * v29) = v23;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_2315089F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B8A0, &qword_23158B518);
  v55 = a2;
  v7 = sub_231586AD4();
  if (!*(v5 + 16))
  {

LABEL_31:
    *v3 = v7;
    return;
  }

  v52 = v3;
  v53 = v5;
  v8 = 0;
  v9 = v5;
  OUTLINED_FUNCTION_1_19();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v15 = v7 + 64;
  v16 = 56;
  v54 = v7;
  if (!v12)
  {
LABEL_6:
    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v14)
      {
        break;
      }

      ++v18;
      if (*(v9 + 8 * v8))
      {
        OUTLINED_FUNCTION_9_0();
        v57 = v20 & v19;
        goto LABEL_11;
      }
    }

    if (v55)
    {
      v48 = *(v5 + 32);
      OUTLINED_FUNCTION_9_11();
      if (v50 != v51)
      {
        OUTLINED_FUNCTION_7_17(v49);
      }

      else
      {
        OUTLINED_FUNCTION_5_13(v49);
      }

      *(v5 + 16) = 0;
    }

    v3 = v52;
    goto LABEL_31;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v12));
    v57 = (v12 - 1) & v12;
LABEL_11:
    v21 = v17 | (v8 << 6);
    v22 = (*(v5 + 48) + 16 * v21);
    v23 = v22[1];
    v60 = *v22;
    v24 = (*(v5 + 56) + v21 * v16);
    v25 = v24[1];
    v58 = *v24;
    v27 = v24[2];
    v26 = v24[3];
    v28 = v24[5];
    v56 = v24[4];
    v29 = v24[6];
    if ((v55 & 1) == 0)
    {
    }

    v59 = v26;
    v30 = v27;
    v31 = v25;
    v32 = *(v54 + 40);
    sub_231586D14();
    sub_231586274();
    sub_231586D44();
    v7 = v54;
    v33 = *(v54 + 32);
    OUTLINED_FUNCTION_4_15();
    if (((v36 << v35) & ~*(v15 + 8 * v34)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_3_15();
    v38 = v59;
    v39 = v29;
    v40 = v28;
LABEL_22:
    *(v15 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    v46 = (*(v54 + 48) + 16 * v37);
    *v46 = v60;
    v46[1] = v23;
    v16 = 56;
    v47 = (*(v54 + 56) + 56 * v37);
    v12 = v57;
    *v47 = v58;
    v47[1] = v31;
    v47[2] = v30;
    v47[3] = v38;
    v47[4] = v56;
    v47[5] = v40;
    v47[6] = v39;
    ++*(v54 + 16);
    v5 = v53;
    if (!v57)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_2_18();
  v38 = v59;
  v39 = v29;
  v40 = v28;
  while (++v41 != v43 || (v42 & 1) == 0)
  {
    v44 = v41 == v43;
    if (v41 == v43)
    {
      v41 = 0;
    }

    v42 |= v44;
    v45 = *(v15 + 8 * v41);
    if (v45 != -1)
    {
      v37 = __clz(__rbit64(~v45)) + (v41 << 6);
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_231508CC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B850, &qword_23158B4E8);
  v39 = a2;
  result = sub_231586AD4();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v37 = v3;
  v38 = v5;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      sub_23149BEE0(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = v20[1];
    v40 = *v20;
    v22 = *(v5 + 56) + 16 * v19;
    v23 = *v22;
    v24 = *(v22 + 8);
    if ((v39 & 1) == 0)
    {

      sub_2315074D0(v23, v24);
    }

    v25 = *(v8 + 40);
    sub_231586D14();
    sub_231586274();
    result = sub_231586D44();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v40;
    v34[1] = v21;
    v35 = *(v8 + 56) + 16 * v29;
    *v35 = v23;
    *(v35 + 8) = v24;
    ++*(v8 + 16);
    v5 = v38;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_231508F88(uint64_t a1, uint64_t a2, char a3, void *a4)
{

  v7 = 0;
  v31 = a2;
  v8 = (a1 + 40);
  while (1)
  {
    v9 = *(a1 + 16);
    if (v7 == v9)
    {
LABEL_18:

      swift_bridgeObjectRelease_n();
      return;
    }

    if (v7 >= v9)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      sub_231586C84();
      __break(1u);
      goto LABEL_25;
    }

    v10 = *(a2 + 16);
    if (v7 == v10)
    {
      goto LABEL_18;
    }

    if (v7 >= v10)
    {
      goto LABEL_21;
    }

    v12 = *(v8 - 1);
    v11 = *v8;
    v13 = *(a2 + 8 * v7 + 32);
    v14 = *a4;

    v16 = sub_23149C888(v12, v11);
    v17 = v14[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_22;
    }

    v20 = v15;
    if (v14[3] < v19)
    {
      break;
    }

    if (a3)
    {
      if (v15)
      {
        goto LABEL_16;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
      sub_231586A74();
      if (v20)
      {
        goto LABEL_16;
      }
    }

LABEL_13:
    v24 = *a4;
    *(*a4 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    v25 = (v24[6] + 16 * v16);
    *v25 = v12;
    v25[1] = v11;
    *(v24[7] + 8 * v16) = v13;
    v26 = v24[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_23;
    }

    v24[2] = v28;
    v8 += 2;
    ++v7;
    a3 = 1;
    a2 = v31;
  }

  sub_231507FFC(v19, a3 & 1);
  v21 = *a4;
  v22 = sub_23149C888(v12, v11);
  if ((v20 & 1) != (v23 & 1))
  {
    goto LABEL_24;
  }

  v16 = v22;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_16:
  v29 = swift_allocError();
  swift_willThrow();
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B860, qword_231588D90);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return;
  }

LABEL_25:
  sub_231586954();
  MEMORY[0x23192FF80](0xD00000000000001BLL, 0x80000002315913A0);
  sub_231586A54();
  MEMORY[0x23192FF80](39, 0xE100000000000000);
  sub_231586AA4();
  __break(1u);
}

void sub_2315092A8(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v25 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_231586C84();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 8);
    v8 = *i;
    v9 = *a3;

    v11 = sub_231574C34(v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B870, &qword_23158B4F8);
      sub_231586A74();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v19[6] + v11) = v7;
    *(v19[7] + 8 * v11) = v8;
    v20 = v19[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v19[2] = v22;
    ++v5;
    a2 = 1;
  }

  sub_231508218(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_231574C34(v7);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = swift_allocError();
  swift_willThrow();

  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B860, qword_231588D90);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_231586954();
  MEMORY[0x23192FF80](0xD00000000000001BLL, 0x80000002315913A0);
  sub_231586A54();
  MEMORY[0x23192FF80](39, 0xE100000000000000);
  sub_231586AA4();
  __break(1u);
}

void sub_23150956C(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v27 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      sub_231586C84();
      __break(1u);
      goto LABEL_21;
    }

    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    v10 = *a3;

    v12 = sub_23149C888(v8, v7);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_18;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B168, &unk_23158B500);
      sub_231586A74();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v21 = (v20[6] + 16 * v12);
    *v21 = v8;
    v21[1] = v7;
    *(v20[7] + 8 * v12) = v9;
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_19;
    }

    v20[2] = v24;
    ++v5;
    a2 = 1;
  }

  sub_231508758(v15, a2 & 1);
  v17 = *a3;
  v18 = sub_23149C888(v8, v7);
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_20;
  }

  v12 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v25 = swift_allocError();
  swift_willThrow();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B860, qword_231588D90);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_21:
  sub_231586954();
  MEMORY[0x23192FF80](0xD00000000000001BLL, 0x80000002315913A0);
  sub_231586A54();
  MEMORY[0x23192FF80](39, 0xE100000000000000);
  sub_231586AA4();
  __break(1u);
}

void sub_231509844(uint64_t a1, uint64_t a2, char a3, void *a4)
{

  v7 = 0;
  v8 = (a1 + 40);
  while (1)
  {
    v9 = *(a1 + 16);
    if (v7 == v9)
    {
LABEL_18:

      swift_bridgeObjectRelease_n();
      return;
    }

    if (v7 >= v9)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_231586C84();
      __break(1u);
      goto LABEL_24;
    }

    v10 = *(a2 + 16);
    if (v7 == v10)
    {
      goto LABEL_18;
    }

    if (v7 >= v10)
    {
      goto LABEL_20;
    }

    v12 = *(v8 - 1);
    v11 = *v8;
    v13 = a2;
    v14 = *(a2 + 8 * v7 + 32);
    v15 = *a4;

    v17 = sub_23149C888(v12, v11);
    v18 = v15[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_21;
    }

    v21 = v16;
    if (v15[3] < v20)
    {
      break;
    }

    if (a3)
    {
      if (v16)
      {
        goto LABEL_16;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B168, &unk_23158B500);
      sub_231586A74();
      if (v21)
      {
        goto LABEL_16;
      }
    }

LABEL_13:
    v25 = *a4;
    *(*a4 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    v26 = (v25[6] + 16 * v17);
    *v26 = v12;
    v26[1] = v11;
    *(v25[7] + 8 * v17) = v14;
    v27 = v25[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_22;
    }

    v25[2] = v29;
    v8 += 2;
    ++v7;
    a3 = 1;
    a2 = v13;
  }

  sub_231508758(v20, a3 & 1);
  v22 = *a4;
  v23 = sub_23149C888(v12, v11);
  if ((v21 & 1) != (v24 & 1))
  {
    goto LABEL_23;
  }

  v17 = v23;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_16:
  v30 = swift_allocError();
  swift_willThrow();
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B860, qword_231588D90);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return;
  }

LABEL_24:
  sub_231586954();
  MEMORY[0x23192FF80](0xD00000000000001BLL, 0x80000002315913A0);
  sub_231586A54();
  MEMORY[0x23192FF80](39, 0xE100000000000000);
  sub_231586AA4();
  __break(1u);
}

void sub_231509B70(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 32)
  {
    if (v28 == v4)
    {
LABEL_17:

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_231586C84();
      __break(1u);
      goto LABEL_23;
    }

    v6 = *i;
    v7 = *(i - 2);
    v8 = *(i - 1);
    v9 = *(i - 3);

    sub_2315074D0(v8, v6);
    if (!v7)
    {
      goto LABEL_17;
    }

    v30 = v6;
    v10 = *a3;
    v12 = sub_23149C888(v9, v7);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_20;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B858, &qword_23158B4F0);
      sub_231586A74();
      if (v16)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v20 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v21 = (v20[6] + 16 * v12);
    *v21 = v9;
    v21[1] = v7;
    v22 = v20[7] + 16 * v12;
    *v22 = v8;
    *(v22 + 8) = v30;
    v23 = v20[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_21;
    }

    v20[2] = v25;
    ++v4;
    a2 = 1;
  }

  sub_231508CC4(v15, a2 & 1);
  v17 = *a3;
  v18 = sub_23149C888(v9, v7);
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_22;
  }

  v12 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v26 = swift_allocError();
  swift_willThrow();

  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B860, qword_231588D90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2314D70F4(v8, v30);

    return;
  }

LABEL_23:
  sub_231586954();
  MEMORY[0x23192FF80](0xD00000000000001BLL, 0x80000002315913A0);
  sub_231586A54();
  MEMORY[0x23192FF80](39, 0xE100000000000000);
  sub_231586AA4();
  __break(1u);
}