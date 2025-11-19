uint64_t ContactSuggestionOutcomeGroundTruth.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v38 = sub_222C9367C();
  v34 = *(v38 - 8);
  v3 = *(v34 + 64);
  v4 = MEMORY[0x28223BE20](v38);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v29 - v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026CD0, &qword_222C9FD48);
  v35 = *(v37 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v11 = v29 - v10;
  v12 = type metadata accessor for ContactSuggestionOutcomeGroundTruth();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BFD6B8();
  v36 = v11;
  v17 = v39;
  sub_222C9535C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v31 = v6;
  v32 = v12;
  v39 = a1;
  LOBYTE(v40) = 0;
  sub_222BFD9A0(&qword_27D025178, MEMORY[0x277CC95F0]);
  sub_222C9507C();
  v18 = *(v34 + 32);
  v30 = v15;
  v19 = v38;
  v18(v15, v8, v38);
  sub_222C9378C();
  v43 = 1;
  sub_222BFD9A0(&qword_27D026C98, MEMORY[0x277D5E850]);
  sub_222C9507C();
  v20 = v19;
  v29[0] = v18;
  v29[1] = 0;
  v21 = v31;
  v22 = v32;
  v23 = v30;
  *&v30[v32[5]] = v40;
  LOBYTE(v40) = 2;
  v24 = v20;
  sub_222C9507C();
  v25 = v39;
  (v29[0])(v23 + v22[6], v21, v24);
  v43 = 3;
  sub_222BFD7B4();
  sub_222C9507C();
  v26 = v41;
  v27 = v23 + v22[7];
  *v27 = v40;
  *(v27 + 8) = v26;
  *(v27 + 16) = v42;
  v43 = 4;
  sub_222BBBBD4();
  sub_222C9507C();
  *(v23 + v22[8]) = v40;
  v43 = 5;
  sub_222BFD808();
  sub_222C9507C();
  (*(v35 + 8))(v36, v37);
  *(v23 + v22[9]) = v40;
  sub_222BFD85C(v23, v33);
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  return sub_222BFD8C0(v23);
}

BOOL _s28SiriPrivateLearningInference35ContactSuggestionOutcomeGroundTruthV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_222C9362C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ContactSuggestionOutcomeGroundTruth();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  v8 = sub_222C9534C();
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  if (v8 != sub_222C9534C())
  {
    return 0;
  }

  v9 = v4[6];
  if ((sub_222C9362C() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = *(a1 + v10 + 16);
  v14 = *(a1 + v10 + 24);
  v15 = (a2 + v10);
  v17 = v15[2];
  v16 = v15[3];
  if ((v11 != *v15 || v12 != v15[1]) && (sub_222C951FC() & 1) == 0)
  {
    return 0;
  }

  if (v14)
  {
    if (!v16 || (v13 != v17 || v14 != v16) && (sub_222C951FC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v18 = v4[8];
  v21[0] = *(a1 + v18);
  v20 = *(a2 + v18);
  if (_s28SiriPrivateLearningInference17SuggestionOutcomeO2eeoiySbAC_ACtFZ_0(v21, &v20))
  {
    return *(a1 + v4[9]) == *(a2 + v4[9]);
  }

  return 0;
}

unint64_t sub_222BFD6B8()
{
  result = qword_27D026CB8;
  if (!qword_27D026CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026CB8);
  }

  return result;
}

unint64_t sub_222BFD70C()
{
  result = qword_27D026CC0;
  if (!qword_27D026CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026CC0);
  }

  return result;
}

unint64_t sub_222BFD760()
{
  result = qword_27D026CC8;
  if (!qword_27D026CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026CC8);
  }

  return result;
}

unint64_t sub_222BFD7B4()
{
  result = qword_27D026CD8;
  if (!qword_27D026CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026CD8);
  }

  return result;
}

unint64_t sub_222BFD808()
{
  result = qword_27D026CE0;
  if (!qword_27D026CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026CE0);
  }

  return result;
}

uint64_t sub_222BFD85C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactSuggestionOutcomeGroundTruth();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222BFD8C0(uint64_t a1)
{
  v2 = type metadata accessor for ContactSuggestionOutcomeGroundTruth();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222BFD91C(uint64_t a1)
{
  *(a1 + 8) = sub_222BFD9A0(&qword_280FDC690, type metadata accessor for ContactSuggestionOutcomeGroundTruth);
  result = sub_222BFD9A0(qword_280FDC698, type metadata accessor for ContactSuggestionOutcomeGroundTruth);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222BFD9A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222BFDA10()
{
  result = sub_222C9367C();
  if (v1 <= 0x3F)
  {
    result = sub_222C9378C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_222BFDAD0()
{
  result = qword_27D026CE8;
  if (!qword_27D026CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026CE8);
  }

  return result;
}

unint64_t sub_222BFDB28()
{
  result = qword_27D026CF0;
  if (!qword_27D026CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026CF0);
  }

  return result;
}

unint64_t sub_222BFDB80()
{
  result = qword_27D026CF8;
  if (!qword_27D026CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026CF8);
  }

  return result;
}

uint64_t sub_222BFDBD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x51746361746E6F63 && a2 == 0xEC00000079726575 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000222CAC300 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000222CAC320 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D6F6374756FLL && a2 == 0xE700000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_222C951FC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t *sub_222BFDE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v51 = a1;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54[2] = a3;
  v54[3] = v10;
  v52 = v10;
  v55 = v3;
  v12 = sub_222BDBEE4(sub_222BFEA08, v54, v11);
  v13 = v12;
  v14 = v12[2];
  v53 = v4;
  if (v14)
  {
    sub_222B4FC6C((v12 + 4), &v59, &qword_27D024CE0, &qword_222C96AB8);
    if (v14 != 1)
    {
      v28 = (v13 + 10);
      v29 = 1;
      v4 = &qword_222C96AB8;
      while (v29 < v13[2])
      {
        sub_222B4FC6C(v28, &v62, &qword_27D024CE0, &qword_222C96AB8);
        if (*&v59 >= *&v62)
        {
          sub_222B4FCD4(&v62, &qword_27D024CE0, &qword_222C96AB8);
        }

        else
        {
          sub_222B4FCD4(&v59, &qword_27D024CE0, &qword_222C96AB8);
          v59 = v62;
          v60 = v63;
          v61 = v64;
        }

        ++v29;
        v28 += 48;
        if (v14 == v29)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
LABEL_24:
      swift_once();
      goto LABEL_7;
    }

LABEL_3:

    v62 = v59;
    v63 = v60;
    v64 = v61;
    v4 = v53;
  }

  else
  {

    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
  }

  sub_222B4FC6C(&v62, &v59, &qword_27D026860, &qword_222C9E440);
  if (!v61)
  {
    sub_222B4FCD4(&v59, &qword_27D026860, &qword_222C9E440);
    goto LABEL_22;
  }

  sub_222B405A0((&v59 + 8), v58);
  if (qword_280FDFE78 != -1)
  {
    goto LABEL_24;
  }

LABEL_7:
  v15 = sub_222C9431C();
  __swift_project_value_buffer(v15, qword_280FE2340);
  (*(v6 + 16))(v9, v4, a3);
  sub_222B43E3C(v58, &v59);
  v16 = sub_222C942FC();
  v17 = sub_222C94A3C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v57[0] = v19;
    *v18 = 136315394;
    v56[0] = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v20 = sub_222C944EC();
    v22 = v21;
    (*(v6 + 8))(v9, a3);
    v23 = sub_222B437C0(v20, v22, v57);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    sub_222B43E3C(&v59, v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B40, qword_222C96770);
    v24 = sub_222C944EC();
    v26 = v25;
    __swift_destroy_boxed_opaque_existential_0Tm(&v59);
    v27 = sub_222B437C0(v24, v26, v57);

    *(v18 + 14) = v27;
    _os_log_impl(&dword_222B39000, v16, v17, "[%s] Searching for an in app followup for classification %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v19, -1, -1);
    MEMORY[0x223DCA8C0](v18, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(&v59);
    (*(v6 + 8))(v9, a3);
  }

  v30 = v52;
  sub_222BFE6A4(v51, &v59);
  v31 = v59;
  v32 = v60;
  v33 = v61;
  v52 = *(&v60 + 1);
  v34 = sub_222BFEA28(&v59, a3, v30);
  v35 = sub_222C1EC00(v34);

  if (v35)
  {
    if (*(&v31 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C60, &unk_222C9BC50);
      v36 = swift_allocObject();
      v51 = xmmword_222C97C40;
      *(v36 + 16) = xmmword_222C97C40;
      sub_222B43E3C(v58, &v59);
      *(v36 + 56) = &type metadata for InAppFollowupClassification;
      *(v36 + 64) = &protocol witness table for InAppFollowupClassification;
      v53 = v36;
      v37 = swift_allocObject();
      v50[1] = v32;
      v38 = v37;
      *(v36 + 32) = v37;
      sub_222B43E3C(&v59, v37 + 16);
      *(v38 + 56) = v31;
      v40 = *(&v60 + 1);
      v39 = v61;
      __swift_project_boxed_opaque_existential_1(&v59, *(&v60 + 1));
      v41 = *(v39 + 8);
      v42 = *(v41 + 16);
      swift_bridgeObjectRetain_n();

      *(v38 + 88) = v42(v40, v41);
      v44 = *(&v60 + 1);
      v43 = v61;
      __swift_project_boxed_opaque_existential_1(&v59, *(&v60 + 1));
      v45 = (*(*(v43 + 8) + 24))(v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024ED0, &qword_222C96C80);
      inited = swift_initStackObject();
      *(inited + 16) = v51;
      *(inited + 32) = v31;
      v56[0] = v45;
      sub_222B48F64(inited);
      v47 = v56[0];
      v48 = v52;
      sub_222B5EE44(v31, *(&v31 + 1));
      *(v38 + 96) = v47;
      *(v38 + 72) = v48;
      *(v38 + 80) = v33;
      __swift_destroy_boxed_opaque_existential_0Tm(&v59);
      __swift_destroy_boxed_opaque_existential_0Tm(v58);
      sub_222B4FCD4(&v62, &qword_27D026860, &qword_222C9E440);
      return v53;
    }
  }

  else
  {
    sub_222B5EE44(v31, *(&v31 + 1));
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v58);
LABEL_22:
  sub_222B4FCD4(&v62, &qword_27D026860, &qword_222C9E440);
  return MEMORY[0x277D84F90];
}

uint64_t sub_222BFE4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_222B43E3C(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B40, qword_222C96770);
  if (swift_dynamicCast())
  {
    sub_222B405A0(v17, v20);
    v7 = v21;
    v8 = v22;
    v9 = __swift_project_boxed_opaque_existential_1(v20, v21);
    v19[3] = v7;
    v19[4] = *(v8 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v9, v7);
    v11 = (*(a3 + 24))(v19, a2, a3);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    if (v11)
    {
      v12 = v21;
      v13 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v14 = (*(v13 + 16))(v12, v13);
      if ((v15 & 1) == 0)
      {
        *a4 = v14;
        sub_222B43E3C(v20, a4 + 8);
        return __swift_destroy_boxed_opaque_existential_0Tm(v20);
      }
    }

    result = __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    result = sub_222B4FCD4(v17, &qword_27D026D08, &unk_222C9FFF0);
  }

  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  return result;
}

double sub_222BFE6A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = type metadata accessor for FeaturisedTurn(0);
    v7 = *(v6 - 8);
    v6 -= 8;
    v8 = *(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5 + *(v6 + 36));
    MEMORY[0x28223BE20](v6);

    sub_222B41174(sub_222BFED3C, v8, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_222BFE7D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for RuleResult();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026690, &unk_222C9FFE0);
  v13 = sub_222BFECD8();
  sub_222B77E04(AssociatedTypeWitness, v13, &v17);
  if (v18)
  {
    *a4 = sub_222C93ECC();
    a4[1] = v14;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(a3 + 40))(a2, a3);
    swift_storeEnumTagMultiPayload();
    return sub_222B99D5C(v11, a4);
  }
}

uint64_t sub_222BFE964(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v11[0] = *a1;
  v11[1] = v4;
  v11[2] = v6;
  v11[3] = v5;
  v11[4] = v7;
  if ((*(a4 + 32))(v11, a3, a4))
  {
    v8 = sub_222B41CFC(v6);
    v9 = v8 ^ 1;
    if (v8 == 2)
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_222BFEA28(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v27 = a2;
  *&v29 = type metadata accessor for RuleResult();
  v4 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  v26 = *a1;
  v8 = a1[2];
  v23 = a1[3];
  v24 = v8;
  v22 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CD0, &qword_222C98B50);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC8, &unk_222C96AA0);
  v10 = *(*(v9 - 8) + 72);
  v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_222C97C40;
  v13 = (v12 + v11);
  v14 = *(v9 + 48);
  *v13 = 0xD000000000000013;
  v13[1] = 0x8000000222CAC340;
  v25 = v7;
  if (v7)
  {
    v29 = xmmword_222C97C40;
    swift_storeEnumTagMultiPayload();
    sub_222B99D5C(v6, v13 + v14);
    v15 = swift_allocObject();
    *(v15 + 16) = v29;
    v16 = (v15 + v11);
    v17 = *(v9 + 48);
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_222C94D1C();
    MEMORY[0x223DC9330](0xD000000000000013, 0x8000000222CAC360);
    v18 = v28;
    v19 = v27;
    (*(v28 + 40))(v27, v28);
    sub_222C948DC();
    v20 = v31;
    *v16 = v30;
    v16[1] = v20;
    v30 = v26;
    v31 = v25;
    v32 = v24;
    v33 = v23;
    v34 = v22;
    sub_222BFE7D8(&v30, v19, v18, (v15 + v11 + v17));
    v30 = v12;
    sub_222B4931C(v15);
    return v30;
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_222B99D5C(v6, v13 + v14);
  }

  return v12;
}

unint64_t sub_222BFECD8()
{
  result = qword_27D026D00;
  if (!qword_27D026D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D026690, &unk_222C9FFE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026D00);
  }

  return result;
}

uint64_t PhoneCallAbandonmentClassification.referencedTurns.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t PhoneCallAbandonmentClassification.referencedEvents.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_222BFEE34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_222BFEE7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_222BFEECC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_222C9455C();
    v13[0] = sub_222C945FC();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t AMPSongMetadata.Attributes.song.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AMPSongMetadata.Attributes.artistName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AMPSongMetadata.Attributes.albumName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t AMPSongMetadata.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AMPSongMetadata.attributes.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = *(v1 + 40);
  *(a1 + 40) = v2;
}

void __swiftcall AMPSongMetadata.init(id:artistName:song:albumName:)(SiriPrivateLearningInference::AMPSongMetadata *__return_ptr retstr, Swift::String id, Swift::String_optional artistName, Swift::String_optional song, Swift::String_optional albumName)
{
  retstr->id = id;
  retstr->attributes.song = song;
  retstr->attributes.artistName = artistName;
  retstr->attributes.albumName = albumName;
}

uint64_t AMPSongMetadata.title.getter()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[6];
  v5 = v0[7];

  sub_222C94D1C();

  if (v1)
  {
    v7 = v2;
  }

  else
  {
    v7 = 7104878;
  }

  if (!v1)
  {
    v1 = 0xE300000000000000;
  }

  MEMORY[0x223DC9330](v7, v1);

  MEMORY[0x223DC9330](0x2079622022, 0xE500000000000000);
  if (v3)
  {
    v8 = v4;
  }

  else
  {
    v8 = 7104878;
  }

  if (v3)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  MEMORY[0x223DC9330](v8, v9);

  MEMORY[0x223DC9330](0x3A6D75626C612820, 0xE900000000000020);
  if (v5)
  {
    v10 = v6;
  }

  else
  {
    v10 = 7104878;
  }

  if (v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x223DC9330](v10, v11);

  MEMORY[0x223DC9330](41, 0xE100000000000000);
  return 34;
}

uint64_t AMPSongMetadata.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[6];
  v7 = v0[7];

  sub_222C94D1C();
  MEMORY[0x223DC9330](0xD000000000000011, 0x8000000222CAC380);
  MEMORY[0x223DC9330](v1, v2);
  MEMORY[0x223DC9330](0x203A676E6F73202CLL, 0xE900000000000022);
  if (v3)
  {
    v9 = v4;
  }

  else
  {
    v9 = 7104878;
  }

  if (!v3)
  {
    v3 = 0xE300000000000000;
  }

  MEMORY[0x223DC9330](v9, v3);

  MEMORY[0x223DC9330](0x7369747261202C22, 0xEF203A656D614E74);
  if (v5)
  {
    v10 = v6;
  }

  else
  {
    v10 = 7104878;
  }

  if (v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x223DC9330](v10, v11);

  MEMORY[0x223DC9330](0x4E6D75626C61202CLL, 0xED0000203A656D61);
  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = 7104878;
  }

  if (v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = 0xE300000000000000;
  }

  MEMORY[0x223DC9330](v12, v13);

  return 0;
}

uint64_t *AMPMetadataHelper.__allocating_init(mediaClient:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_222C00820(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v6;
}

uint64_t *AMPMetadataHelper.init(mediaClient:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_222C00548(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v10;
}

uint64_t sub_222BFF544(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return MEMORY[0x2822009F8](sub_222BFF564, 0, 0);
}

uint64_t sub_222BFF564()
{
  v63 = v0;
  v1 = v0[36];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v51 = sub_222B6395C(MEMORY[0x277D84F90]);
    v52 = v0[1];

    return v52(v51);
  }

  v56 = v0 + 34;
  v3 = sub_222B63858(MEMORY[0x277D84F90]);
  v4 = 0;
  v5 = 0;
  v6 = (v1 + 40);
  v57 = v0;
  do
  {
    v60 = v2;
    v7 = *(v6 - 1);
    v8 = *v6;
    v0[34] = 47;
    v0[35] = 0xE100000000000000;
    v9 = swift_task_alloc();
    *(v9 + 16) = v56;

    v10 = sub_222BFEECC(sub_222B77BA0, v9, v7, v8);
    v12 = v11;
    v59 = v4;

    v58 = v8;
    if (v12)
    {

      v13 = v7;
      v14 = v7;
      v15 = v8;
    }

    else
    {

      v13 = v7;
      sub_222BB12DC(v10, v7, v8);
      v17 = v16;

      result = sub_222C94B6C();
      if (v19)
      {
        result = v17;
      }

      if (v17 >> 14 < result >> 14)
      {
        goto LABEL_39;
      }

      v20 = sub_222C94B8C();
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v14 = MEMORY[0x223DC92B0](v20, v22, v24, v26);
      v15 = v27;
      v0 = v57;
    }

    sub_222C00924(v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v3;
    v30 = sub_222B8C9DC(v14, v15);
    v31 = v3[2];
    v32 = (v29 & 1) == 0;
    result = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v33 = v29;
    if (v3[3] >= result)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v0[38] = v3;
        if (v29)
        {
          goto LABEL_16;
        }
      }

      else
      {
        result = sub_222B94784();
        v3 = v62;
        v0[38] = v62;
        if (v33)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      sub_222B917E0(result, isUniquelyReferenced_nonNull_native);
      v3 = v62;
      result = sub_222B8C9DC(v14, v15);
      if ((v33 & 1) != (v34 & 1))
      {

        return sub_222C9526C();
      }

      v30 = result;
      v0[38] = v62;
      if (v33)
      {
LABEL_16:

        goto LABEL_20;
      }
    }

    v3[(v30 >> 6) + 8] |= 1 << v30;
    v35 = (v3[6] + 16 * v30);
    *v35 = v14;
    v35[1] = v15;
    *(v3[7] + 8 * v30) = MEMORY[0x277D84F90];
    v36 = v3[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_40;
    }

    v3[2] = v38;
LABEL_20:
    v39 = v3[7];
    v40 = *(v39 + 8 * v30);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    *(v39 + 8 * v30) = v40;
    if ((v41 & 1) == 0)
    {
      v40 = sub_222B49E84(0, *(v40 + 2) + 1, 1, v40);
      *(v39 + 8 * v30) = v40;
    }

    v43 = *(v40 + 2);
    v42 = *(v40 + 3);
    if (v43 >= v42 >> 1)
    {
      v40 = sub_222B49E84((v42 > 1), v43 + 1, 1, v40);
      *(v39 + 8 * v30) = v40;
    }

    v0 = v57;
    *(v40 + 2) = v43 + 1;
    v44 = &v40[16 * v43];
    *(v44 + 4) = v13;
    *(v44 + 5) = v58;
    v6 += 2;
    v5 = sub_222BFFFA4;
    v4 = v59;
    v2 = v60 - 1;
  }

  while (v60 != 1);
  v45 = v57[37];
  v46 = v45[5];
  v47 = v45[6];
  __swift_project_boxed_opaque_existential_1(v45 + 2, v46);
  v48 = v3[2];
  if (v48)
  {
    v49 = sub_222B8C8D4(v48, 0);
    v50 = sub_222B95AD8(&v62, v49 + 4, v48, v3);

    result = sub_222B504E8();
    if (v50 == v48)
    {
      v0 = v57;
      goto LABEL_35;
    }

LABEL_41:
    __break(1u);
    return result;
  }

  v49 = MEMORY[0x277D84F90];
LABEL_35:
  v0[39] = v49;
  v53 = *(v47 + 8);
  v61 = (v53 + *v53);
  v54 = v53[1];
  v55 = swift_task_alloc();
  v0[40] = v55;
  *v55 = v0;
  v55[1] = sub_222BFFAEC;

  return (v61)(v49, v46, v47);
}

uint64_t sub_222BFFAEC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 320);
  v8 = *v2;
  v3[41] = a1;
  v3[42] = v1;

  if (v1)
  {
    v5 = sub_222BFFF38;
  }

  else
  {
    v6 = v3[39];

    v5 = sub_222BFFC08;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

unint64_t sub_222BFFC08()
{
  v1 = *(v0 + 328);
  v2 = sub_222B6395C(MEMORY[0x277D84F90]);
  v3 = *(v1 + 16);
  v4 = *(v0 + 328);
  if (!v3)
  {
    goto LABEL_29;
  }

  v5 = 0;
  v6 = v4 + 32;
  v50 = *(v1 + 16);
  v51 = v1;
  v49 = v4 + 32;
  while (1)
  {
    v7 = *(v0 + 304);
    v8 = (v6 + (v5 << 6));
    v9 = v8[3];
    v11 = *v8;
    v10 = v8[1];
    *(v0 + 48) = v8[2];
    *(v0 + 64) = v9;
    *(v0 + 16) = v11;
    *(v0 + 32) = v10;
    if (!*(v7 + 16))
    {
      goto LABEL_22;
    }

    v12 = *(v0 + 16);
    v13 = *(v0 + 24);
    sub_222B95964(v0 + 16, v0 + 80);

    v14 = sub_222B8C9DC(v12, v13);
    LOBYTE(v12) = v15;

    if (v12)
    {
      v53 = *(*(*(*(v0 + 304) + 56) + 8 * v14) + 16);
      if (v53)
      {
        break;
      }
    }

LABEL_21:
    sub_222C00934(v0 + 16);
LABEL_22:
    if (++v5 == v3)
    {
      v46 = *(v0 + 328);
LABEL_29:
      v47 = *(v0 + 304);

      v48 = *(v0 + 8);

      return v48(v2);
    }

    if (v5 >= *(v1 + 16))
    {
      __break(1u);
LABEL_25:

      return sub_222C9526C();
    }
  }

  v52 = v5;

  v17 = 0;
  v18 = (result + 40);
  while (v17 < *(result + 16))
  {
    v27 = result;
    v29 = *(v18 - 1);
    v28 = *v18;
    sub_222B95964(v0 + 16, v0 + 144);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v2;
    result = sub_222B8C9DC(v29, v28);
    v32 = *(v2 + 16);
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      goto LABEL_33;
    }

    v36 = v31;
    if (*(v2 + 24) < v35)
    {
      sub_222B914C0(v35, isUniquelyReferenced_nonNull_native);
      result = sub_222B8C9DC(v29, v28);
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_25;
      }

LABEL_15:
      if (v36)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v45 = result;
    sub_222B945E4();
    result = v45;
    if (v36)
    {
LABEL_7:
      v19 = result;

      v2 = v54;
      v20 = (v54[7] + (v19 << 6));
      v21 = v20[3];
      v23 = *v20;
      v22 = v20[1];
      *(v0 + 240) = v20[2];
      *(v0 + 256) = v21;
      *(v0 + 208) = v23;
      *(v0 + 224) = v22;
      v24 = *(v0 + 16);
      v25 = *(v0 + 32);
      v26 = *(v0 + 64);
      v20[2] = *(v0 + 48);
      v20[3] = v26;
      *v20 = v24;
      v20[1] = v25;
      sub_222C00934(v0 + 208);
      goto LABEL_8;
    }

LABEL_16:
    v2 = v54;
    v54[(result >> 6) + 8] |= 1 << result;
    v38 = (v54[6] + 16 * result);
    *v38 = v29;
    v38[1] = v28;
    v39 = (v54[7] + (result << 6));
    v41 = *(v0 + 48);
    v40 = *(v0 + 64);
    v42 = *(v0 + 32);
    *v39 = *(v0 + 16);
    v39[1] = v42;
    v39[2] = v41;
    v39[3] = v40;
    v43 = v54[2];
    v34 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (v34)
    {
      goto LABEL_34;
    }

    v54[2] = v44;
LABEL_8:
    ++v17;
    v18 += 2;
    result = v27;
    if (v53 == v17)
    {

      v3 = v50;
      v1 = v51;
      v6 = v49;
      v5 = v52;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_222BFFF38()
{
  v2 = v0[38];
  v1 = v0[39];

  v3 = v0[1];
  v4 = v0[42];

  return v3();
}

uint64_t AMPMetadataHelper.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_222C0000C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_222C00054(unint64_t result, uint64_t a2, __int16 a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 56 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = *(a2 + 48);
  *(a4[7] + 2 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_222C000B4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  v8 = a7[7] + 4 * result;
  *v8 = a6;
  *(v8 + 3) = HIBYTE(a6);
  *(v8 + 1) = a6 >> 8;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

unint64_t sub_222C00114(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_222C00158(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_222C9367C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_222C00210(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_222C9367C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_222C002EC(unint64_t a1, uint64_t a2, __int16 a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_222C9367C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = (a4[7] + 2 * a1);
  *v11 = a3 & 1;
  v11[1] = HIBYTE(a3) & 1;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_222C003B4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_222C9367C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for PlusClientEventFeatureExtractor.GenericSuggestionMetadata(0);
  result = sub_222B5B33C(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_222C00490(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_222C004D8(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_222B405A0(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t *sub_222C00548(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  return a2;
}

uint64_t _s28SiriPrivateLearningInference15AMPSongMetadataV10AttributesV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    if (!v8 || (*a1 != *a2 || v3 != v8) && (sub_222C951FC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v4 != v9 || v6 != v11) && (sub_222C951FC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v7)
  {
    if (v12 && (v5 == v10 && v7 == v12 || (sub_222C951FC() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

uint64_t _s28SiriPrivateLearningInference15AMPSongMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v10 = *(a1 + 40);
  v11 = *(a1 + 24);
  v3 = *(a1 + 56);
  v4 = *(a2 + 16);
  v8 = *(a2 + 40);
  v9 = *(a2 + 24);
  v5 = *(a2 + 56);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (v6 = 0, (sub_222C951FC() & 1) != 0))
  {
    v15 = v5;
    v16 = v2;
    v17 = v11;
    v18 = v10;
    v19 = v3;
    v12 = v4;
    v13 = v9;
    v14 = v8;
    v6 = _s28SiriPrivateLearningInference15AMPSongMetadataV10AttributesV2eeoiySbAE_AEtFZ_0(&v16, &v12);
  }

  return v6 & 1;
}

uint64_t *sub_222C00820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AMPMetadataHelper();
  v11 = swift_allocObject();
  (*(v7 + 16))(v10, a1, a3);
  v11[5] = a3;
  v11[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11 + 2);
  (*(v7 + 32))(boxed_opaque_existential_1, v10, a3);
  return v11;
}

uint64_t sub_222C00924(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_222C00978(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_222C009C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_222C00A20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_222C00A7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of SongMetadataClient.searchSongs(identifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_222C00E84;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AMPMetadataHelper.getSongMetadata(identifiers:)(uint64_t a1)
{
  v4 = *(*v1 + 96);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_222C00D84;

  return v8(a1);
}

uint64_t sub_222C00D84(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

SiriPrivateLearningInference::MessagesGroundTruthSource_optional __swiftcall MessagesGroundTruthSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222C94FDC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MessagesGroundTruthSource.rawValue.getter()
{
  *v0;
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0xD00000000000001BLL;
  }

  *v0;
  return result;
}

uint64_t sub_222C00F44()
{
  v1 = *v0;
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222C00FDC()
{
  *v0;
  *v0;
  sub_222C9452C();
}

uint64_t sub_222C01060()
{
  v1 = *v0;
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

void sub_222C01100(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000011;
  v3 = "abandonmentAndInAppFollowup";
  if (*v1 != 1)
  {
    v3 = "partialRepetition";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD00000000000001BLL;
    v4 = "previouslySurfaced";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t sub_222C01208(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "abandonmentAndInAppFollowup";
  if (v2 == 1)
  {
    v4 = "abandonmentAndInAppFollowup";
  }

  else
  {
    v4 = "partialRepetition";
  }

  if (*a1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD00000000000001BLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = "previouslySurfaced";
  }

  if (*a2 != 1)
  {
    v3 = "partialRepetition";
  }

  if (*a2)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v7 = 0xD00000000000001BLL;
  }

  if (*a2)
  {
    v8 = v3;
  }

  else
  {
    v8 = "previouslySurfaced";
  }

  if (v5 == v7 && (v6 | 0x8000000000000000) == (v8 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_222C951FC();
  }

  return v9 & 1;
}

uint64_t MessagesGroundTruth.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MessagesGroundTruth.source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MessagesGroundTruth();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for MessagesGroundTruth()
{
  result = qword_280FDF4A8;
  if (!qword_280FDF4A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MessagesGroundTruth.contactUSOPerson.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessagesGroundTruth() + 24));
}

uint64_t MessagesGroundTruth.originalContactReference.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MessagesGroundTruth() + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_222B98D00(v4, v5);
}

uint64_t MessagesGroundTruth.correctedContactReference.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MessagesGroundTruth() + 32));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
}

unint64_t sub_222C014B4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000018;
  if (v1 != 3)
  {
    v4 = 0xD000000000000019;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656372756F73;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_222C01548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222C02938(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222C01570(uint64_t a1)
{
  v2 = sub_222C0244C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C015AC(uint64_t a1)
{
  v2 = sub_222C0244C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MessagesGroundTruth.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026D10, &qword_222CA0270);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C0244C();
  sub_222C9536C();
  LOBYTE(v22) = 0;
  sub_222C9367C();
  sub_222C026A4(&qword_27D025148, MEMORY[0x277CC95F0]);
  sub_222C9512C();
  if (!v2)
  {
    v11 = type metadata accessor for MessagesGroundTruth();
    LOBYTE(v22) = *(v3 + v11[5]);
    v26 = 1;
    sub_222BBBAD8();
    sub_222C9512C();
    v22 = *(v3 + v11[6]);
    v26 = 2;
    sub_222C9378C();
    sub_222C026A4(&qword_27D025A98, MEMORY[0x277D5E850]);
    sub_222C9512C();
    v12 = (v3 + v11[7]);
    v13 = v12[1];
    v14 = v12[2];
    v15 = v12[3];
    v22 = *v12;
    v23 = v13;
    v24 = v14;
    v25 = v15;
    v26 = 3;
    sub_222B98D00(v22, v13);
    sub_222BFD70C();
    sub_222C950DC();
    sub_222B450E8(v22, v23);
    v16 = (v3 + v11[8]);
    v17 = v16[1];
    v19 = v16[2];
    v18 = v16[3];
    v22 = *v16;
    v23 = v17;
    v24 = v19;
    v25 = v18;
    v26 = 4;

    sub_222C9512C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t MessagesGroundTruth.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_222C9367C();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026D20, &qword_222CA0278);
  v8 = *(v7 - 8);
  v31 = v7;
  v32 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = type metadata accessor for MessagesGroundTruth();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C0244C();
  v33 = v11;
  sub_222C9535C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v27 = a1;
  v17 = v15;
  v18 = v29;
  LOBYTE(v34) = 0;
  sub_222C026A4(&qword_27D025178, MEMORY[0x277CC95F0]);
  v19 = v30;
  v20 = v31;
  sub_222C9507C();
  (*(v18 + 32))(v17, v19, v4);
  v36 = 1;
  sub_222BBBC7C();
  sub_222C9507C();
  *(v17 + v12[5]) = v34;
  sub_222C9378C();
  v36 = 2;
  sub_222C026A4(&qword_27D026C98, MEMORY[0x277D5E850]);
  sub_222C9507C();
  *(v17 + v12[6]) = v34;
  v36 = 3;
  sub_222BFD7B4();
  sub_222C9502C();
  v21 = (v17 + v12[7]);
  v22 = v35;
  *v21 = v34;
  v21[1] = v22;
  v36 = 4;
  sub_222C9507C();
  (*(v32 + 8))(v33, v20);
  v23 = *(&v34 + 1);
  v24 = v17 + v12[8];
  *v24 = v34;
  *(v24 + 8) = v23;
  *(v24 + 16) = v35;
  sub_222C024A0(v17, v28);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  return sub_222C02504(v17);
}

uint64_t _s28SiriPrivateLearningInference19MessagesGroundTruthV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_222C9362C() & 1) == 0)
  {
    return 0;
  }

  v4 = 0xD000000000000011;
  v5 = type metadata accessor for MessagesGroundTruth();
  v6 = v5[5];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  v9 = "previouslySurfaced";
  if (v7)
  {
    if (v7 == 1)
    {
      v10 = "partialRepetition";
    }

    else
    {
      v10 = "successfulOneShot";
    }

    v11 = 0xD000000000000011;
    v12 = (v10 - 32) | 0x8000000000000000;
    if (v8)
    {
      goto LABEL_9;
    }

LABEL_6:
    v4 = 0xD00000000000001BLL;
    goto LABEL_13;
  }

  v11 = 0xD00000000000001BLL;
  v12 = 0x8000000222CA9420;
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_9:
  if (v8 == 1)
  {
    v13 = "partialRepetition";
  }

  else
  {
    v13 = "successfulOneShot";
  }

  v9 = v13 - 32;
LABEL_13:
  if (v11 == v4 && v12 == (v9 | 0x8000000000000000))
  {
  }

  else
  {
    v14 = sub_222C951FC();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = v5[6];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  v18 = sub_222C9534C();
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  if (v18 != sub_222C9534C())
  {
    return 0;
  }

  v19 = v5[7];
  v20 = *(a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = *(a1 + v19 + 16);
  v23 = *(a1 + v19 + 24);
  v24 = (a2 + v19);
  v25 = *v24;
  v26 = v24[1];
  v27 = v24[2];
  v28 = v24[3];
  if (!v21)
  {
    v51 = v20;
    sub_222B98D00(v20, 0);
    if (!v26)
    {
      sub_222B98D00(v25, 0);
      v21 = 0;
      goto LABEL_51;
    }

    v36 = v25;
    sub_222B98D00(v25, v26);
    v37 = v20;
    goto LABEL_37;
  }

  if (!v26)
  {
    v36 = *v24;
    v37 = v20;
    sub_222B98D00(v20, v21);
    sub_222B98D00(v36, 0);
    sub_222B98D00(v20, v21);

LABEL_37:
    sub_222B450E8(v37, v21);
    v38 = v36;
    v39 = v26;
LABEL_43:
    sub_222B450E8(v38, v39);
    return 0;
  }

  if (v20 != v25 || v21 != v26)
  {
    v50 = v24[3];
    v29 = v23;
    v30 = *v24;
    v31 = v20;
    v32 = v22;
    v33 = sub_222C951FC();
    v22 = v32;
    v20 = v31;
    v25 = v30;
    v23 = v29;
    v28 = v50;
    if ((v33 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  if (!v23)
  {
    sub_222B98D00(v20, v21);
    if (!v28)
    {
      sub_222B98D00(v25, v26);
      sub_222B98D00(v20, v21);
      v34 = v25;
      v35 = v26;
      goto LABEL_49;
    }

    goto LABEL_41;
  }

  if (!v28)
  {
LABEL_38:
    sub_222B98D00(v20, v21);
LABEL_41:
    sub_222B98D00(v25, v26);
    sub_222B98D00(v20, v21);
    sub_222B450E8(v25, v26);
LABEL_42:

    v38 = v20;
    v39 = v21;
    goto LABEL_43;
  }

  if (v22 != v27 || v23 != v28)
  {
    v52 = sub_222C951FC();
    sub_222B98D00(v20, v21);
    sub_222B98D00(v25, v26);
    sub_222B98D00(v20, v21);
    sub_222B450E8(v25, v26);
    if (v52)
    {
      goto LABEL_50;
    }

    goto LABEL_42;
  }

  sub_222B98D00(v20, v21);
  sub_222B98D00(v25, v26);
  sub_222B98D00(v20, v21);
  v34 = v25;
  v35 = v26;
LABEL_49:
  sub_222B450E8(v34, v35);
LABEL_50:
  v51 = v20;

LABEL_51:
  sub_222B450E8(v51, v21);
  v41 = v5[8];
  v42 = a1 + v41;
  v43 = *(a1 + v41);
  v44 = *(a1 + v41 + 8);
  v46 = *(a1 + v41 + 16);
  v45 = *(v42 + 24);
  v47 = (a2 + v41);
  v49 = v47[2];
  v48 = v47[3];
  if (v43 == *v47 && v44 == v47[1] || (sub_222C951FC() & 1) != 0)
  {
    if (v45)
    {
      if (v48 && (v46 == v49 && v45 == v48 || (sub_222C951FC() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v48)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_222C0244C()
{
  result = qword_27D026D18;
  if (!qword_27D026D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026D18);
  }

  return result;
}

uint64_t sub_222C024A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesGroundTruth();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C02504(uint64_t a1)
{
  v2 = type metadata accessor for MessagesGroundTruth();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_222C02564()
{
  result = qword_27D026D28;
  if (!qword_27D026D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026D28);
  }

  return result;
}

unint64_t sub_222C025BC()
{
  result = qword_27D026D30;
  if (!qword_27D026D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D026D38, &qword_222CA0370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026D30);
  }

  return result;
}

uint64_t sub_222C02620(uint64_t a1)
{
  *(a1 + 8) = sub_222C026A4(&qword_280FDF4C0, type metadata accessor for MessagesGroundTruth);
  result = sub_222C026A4(qword_280FDF4C8, type metadata accessor for MessagesGroundTruth);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222C026A4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_222C02724()
{
  sub_222C9367C();
  if (v0 <= 0x3F)
  {
    sub_222C9378C();
    if (v1 <= 0x3F)
    {
      sub_222C027D0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_222C027D0()
{
  if (!qword_280FDFB50[0])
  {
    v0 = sub_222C94B5C();
    if (!v1)
    {
      atomic_store(v0, qword_280FDFB50);
    }
  }
}

unint64_t sub_222C02834()
{
  result = qword_27D026D40;
  if (!qword_27D026D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026D40);
  }

  return result;
}

unint64_t sub_222C0288C()
{
  result = qword_27D026D48;
  if (!qword_27D026D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026D48);
  }

  return result;
}

unint64_t sub_222C028E4()
{
  result = qword_27D026D50;
  if (!qword_27D026D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026D50);
  }

  return result;
}

uint64_t sub_222C02938(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000222CAC3F0 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000222CAC410 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000222CAC430 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_222C951FC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_222C02AE4()
{
  result = qword_27D026D58;
  if (!qword_27D026D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026D58);
  }

  return result;
}

uint64_t static UsoMediaUtils.createUsoMediaWithName(entityName:)()
{
  v0 = sub_222C93A5C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_222C93A4C();
  sub_222C93A3C();
  MEMORY[0x223DC8590](v3);
  sub_222C9386C();
  sub_222C9381C();

  return v5;
}

uint64_t static UsoMediaUtils.createUsoMediaWithNameAndDuration(entityName:duration:)()
{
  v0 = sub_222C9380C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_222C939AC();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_222C9399C();
  sub_222C9398C();
  v8 = sub_222C93A1C();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_222C93A0C();
  (*(v1 + 104))(v4, *MEMORY[0x277D5E978], v0);
  sub_222C939FC();
  (*(v1 + 8))(v4, v0);
  v11 = sub_222C93B0C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_222C93AFC();

  sub_222C93ADC();

  sub_222C93AEC();

  v14 = sub_222C939EC();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_222C939DC();

  sub_222C939CC();

  v17 = sub_222C93A5C();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_222C93A4C();
  sub_222C93A3C();

  sub_222C93A2C();

  MEMORY[0x223DC8590](v20);
  sub_222C9386C();
  sub_222C9381C();

  return v22[1];
}

uint64_t sub_222C02E7C(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5 = sub_222C94D4C();
  swift_getObjectType();
  result = sub_222C94D4C();
  if (v5 == result)
  {
    v7 = sub_222C94D5C();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v7)
    {
      return 0;
    }

    else
    {
      sub_222C9521C();
      sub_222C94F1C();
      swift_unknownObjectRelease();
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t InferenceCombinedSessionAsyncSequence.InferenceCombinedSessionAsyncSequenceIterator.init(asyncSequence:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InferenceCombinedSessionAsyncSequence.InferenceCombinedSessionAsyncSequenceIterator();
  v11 = *(v10 + 36);
  v12 = sub_222C93BFC();
  (*(*(v12 - 8) + 56))(a3 + v11, 1, 1, v12);
  *(a3 + *(v10 + 40)) = 0;
  (*(v6 + 16))(v9, a1, a2);
  sub_222C9487C();
  return (*(v6 + 8))(a1, a2);
}

uint64_t InferenceCombinedSessionAsyncSequence.InferenceCombinedSessionAsyncSequenceIterator.next()(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026D60, &unk_222CA0628);
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v8 = sub_222C9367C();
  v3[14] = v8;
  v9 = *(v8 - 8);
  v3[15] = v9;
  v10 = *(v9 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025290, &unk_222C97C30);
  v3[18] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v14 = sub_222C93BFC();
  v3[23] = v14;
  v15 = *(v14 - 8);
  v3[24] = v15;
  v16 = *(v15 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026D68, qword_222CA0638) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222C033C8, 0, 0);
}

uint64_t sub_222C033C8()
{
  v1 = *(v0 + 72);
  v2 = *(*(v0 + 64) + 40);
  *(v0 + 384) = v2;
  if (*(v1 + v2))
  {
    (*(*(v0 + 88) + 56))(*(v0 + 56), 1, 1, *(v0 + 80));
    v4 = *(v0 + 256);
    v3 = *(v0 + 264);
    v6 = *(v0 + 240);
    v5 = *(v0 + 248);
    v8 = *(v0 + 224);
    v7 = *(v0 + 232);
    v9 = *(v0 + 208);
    v10 = *(v0 + 216);
    v11 = *(v0 + 200);
    v12 = *(v0 + 176);
    v35 = *(v0 + 168);
    v37 = *(v0 + 160);
    v39 = *(v0 + 152);
    v41 = *(v0 + 136);
    v43 = *(v0 + 128);
    v45 = *(v0 + 104);
    v47 = *(v0 + 96);

    v13 = *(v0 + 8);
LABEL_5:

    return v13();
  }

  if (sub_222C9486C())
  {
    *(v1 + v2) = 1;
    sub_222C9483C();
    sub_222C05370(&qword_27D026D70, MEMORY[0x277D85678]);
    swift_allocError();
    sub_222C9437C();
    swift_willThrow();
    v15 = *(v0 + 256);
    v14 = *(v0 + 264);
    v17 = *(v0 + 240);
    v16 = *(v0 + 248);
    v19 = *(v0 + 224);
    v18 = *(v0 + 232);
    v21 = *(v0 + 208);
    v20 = *(v0 + 216);
    v22 = *(v0 + 200);
    v23 = *(v0 + 176);
    v34 = *(v0 + 168);
    v36 = *(v0 + 160);
    v38 = *(v0 + 152);
    v40 = *(v0 + 136);
    v42 = *(v0 + 128);
    v44 = *(v0 + 104);
    v46 = *(v0 + 96);

    v13 = *(v0 + 8);
    goto LABEL_5;
  }

  v25 = *(v0 + 64);
  v26 = *(v25 + 16);
  v27 = *(v25 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v0 + 272) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 280) = AssociatedConformanceWitness;
  v30 = *(MEMORY[0x277D856D0] + 4);
  v31 = swift_task_alloc();
  *(v0 + 288) = v31;
  *v31 = v0;
  v31[1] = sub_222C03754;
  v32 = *(v0 + 264);
  v33 = *(v0 + 72);

  return MEMORY[0x282200308](v32, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_222C03754()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_222C0496C;
  }

  else
  {
    v3 = sub_222C03868;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222C03868()
{
  v131 = v0;
  v1 = *(v0 + 184);
  v2 = *(*(v0 + 192) + 48);
  if (v2(*(v0 + 264), 1, v1) == 1)
  {
    *(*(v0 + 72) + *(v0 + 384)) = 1;
    v1 = *(v0 + 184);
  }

  v3 = *(v0 + 256);
  v4 = *(v0 + 72);
  v5 = *(*(v0 + 64) + 36);
  *(v0 + 388) = v5;
  sub_222B4FC6C(v4 + v5, v3, &qword_27D026D68, qword_222CA0638);
  if (v2(v3, 1, v1) == 1)
  {
    sub_222B4FCD4(*(v0 + 256), &qword_27D026D68, qword_222CA0638);
    goto LABEL_27;
  }

  v6 = *(v0 + 256);
  v7 = *(v0 + 264);
  v8 = *(v0 + 248);
  v9 = *(v0 + 224);
  v10 = *(v0 + 184);
  v11 = *(v0 + 192);
  v12 = *(v11 + 32);
  *(v0 + 304) = v12;
  *(v0 + 312) = (v11 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v12(v9, v6, v10);
  sub_222B4FC6C(v7, v8, &qword_27D026D68, qword_222CA0638);
  v13 = v2(v8, 1, v10);
  v14 = *(v0 + 248);
  v15 = *(v0 + 224);
  if (v13 == 1)
  {
    (*(*(v0 + 192) + 8))(*(v0 + 224), *(v0 + 184));
    sub_222B4FCD4(v14, &qword_27D026D68, qword_222CA0638);
    goto LABEL_27;
  }

  v12(*(v0 + 216), *(v0 + 248), *(v0 + 184));
  v16 = sub_222C93BEC();
  v17 = sub_222C02E7C(v16);

  v126 = v4;
  if (v17)
  {
    v18 = *(v0 + 176);
    sub_222C941DC();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = *(v0 + 216);
  v21 = 1;
  v117 = *(*(v0 + 120) + 56);
  v117(*(v0 + 176), v19, 1, *(v0 + 112));
  v22 = sub_222C93BEC();
  v23 = sub_222BB77B0(v22);

  v120 = v2;
  v123 = v5;
  if (v23)
  {
    v24 = *(v0 + 168);
    sub_222C941DC();

    v21 = 0;
  }

  v26 = *(v0 + 168);
  v25 = *(v0 + 176);
  v28 = *(v0 + 144);
  v27 = *(v0 + 152);
  v29 = *(v0 + 112);
  v30 = *(v0 + 120);
  v117(v26, v21, 1, v29);
  v31 = *(v28 + 48);
  sub_222B4FC6C(v25, v27, &unk_27D026290, &qword_222C96B40);
  sub_222B4FC6C(v26, v27 + v31, &unk_27D026290, &qword_222C96B40);
  v32 = *(v30 + 48);
  if (v32(v27, 1, v29) == 1)
  {
    v33 = *(v0 + 176);
    v34 = *(v0 + 112);
    sub_222B4FCD4(*(v0 + 168), &unk_27D026290, &qword_222C96B40);
    sub_222B4FCD4(v33, &unk_27D026290, &qword_222C96B40);
    v35 = v32(v27 + v31, 1, v34);
    v2 = v120;
    v5 = v123;
    if (v35 == 1)
    {
      sub_222B4FCD4(*(v0 + 152), &unk_27D026290, &qword_222C96B40);
      v4 = v126;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v36 = *(v0 + 112);
  sub_222B4FC6C(*(v0 + 152), *(v0 + 160), &unk_27D026290, &qword_222C96B40);
  v37 = v32(v27 + v31, 1, v36);
  v38 = *(v0 + 168);
  v39 = *(v0 + 176);
  v40 = *(v0 + 160);
  if (v37 == 1)
  {
    v41 = *(v0 + 112);
    v42 = *(v0 + 120);
    sub_222B4FCD4(*(v0 + 168), &unk_27D026290, &qword_222C96B40);
    sub_222B4FCD4(v39, &unk_27D026290, &qword_222C96B40);
    (*(v42 + 8))(v40, v41);
    v2 = v120;
    v5 = v123;
LABEL_17:
    sub_222B4FCD4(*(v0 + 152), &qword_27D025290, &unk_222C97C30);
    v4 = v126;
LABEL_26:
    v68 = *(v0 + 224);
    v69 = *(v0 + 184);
    v70 = *(*(v0 + 192) + 8);
    v70(*(v0 + 216), v69);
    v70(v68, v69);
LABEL_27:
    v71 = *(v0 + 232);
    v72 = *(v0 + 184);
    sub_222B4FC6C(v4 + v5, v71, &qword_27D026D68, qword_222CA0638);
    v73 = v2(v71, 1, v72);
    v74 = *(v0 + 264);
    if (v73 == 1)
    {
      sub_222B4FCD4(*(v0 + 232), &qword_27D026D68, qword_222CA0638);
      sub_222C04DC4(v74, v4 + v5);
      v75 = swift_task_alloc();
      *(v0 + 368) = v75;
      *v75 = v0;
      v75[1] = sub_222C0470C;
      v76 = *(v0 + 64);
      v77 = *(v0 + 72);
      v78 = *(v0 + 56);

      return InferenceCombinedSessionAsyncSequence.InferenceCombinedSessionAsyncSequenceIterator.next()(v78, v76);
    }

    else
    {
      v80 = *(v0 + 200);
      v81 = *(v0 + 184);
      v124 = v5;
      v128 = v4;
      v83 = *(v0 + 88);
      v82 = *(v0 + 96);
      v84 = *(v0 + 80);
      v121 = *(v0 + 56);
      v85 = *(*(v0 + 192) + 32);
      v85(v80, *(v0 + 232), v81);
      v86 = *(v84 + 48);
      v85(v82, v80, v81);
      sub_222B4FC6C(v74, v82 + v86, &qword_27D026D68, qword_222CA0638);
      sub_222C04E34(v74, v128 + v124);
      sub_222B723A4(v82, v121, &qword_27D026D60, &unk_222CA0628);
      (*(v83 + 56))(v121, 0, 1, v84);
      v88 = *(v0 + 256);
      v87 = *(v0 + 264);
      v90 = *(v0 + 240);
      v89 = *(v0 + 248);
      v92 = *(v0 + 224);
      v91 = *(v0 + 232);
      v93 = *(v0 + 208);
      v94 = *(v0 + 216);
      v95 = *(v0 + 200);
      v96 = *(v0 + 176);
      v113 = *(v0 + 168);
      v114 = *(v0 + 160);
      v116 = *(v0 + 152);
      v119 = *(v0 + 136);
      v122 = *(v0 + 128);
      v125 = *(v0 + 104);
      v129 = *(v0 + 96);

      v97 = *(v0 + 8);

      return v97();
    }
  }

  v115 = *(v0 + 176);
  v118 = *(v0 + 152);
  v43 = *(v0 + 136);
  v44 = *(v0 + 112);
  v45 = *(v0 + 120);
  (*(v45 + 32))(v43, v27 + v31, v44);
  sub_222C05370(&qword_280FE02A0, MEMORY[0x277CC95F0]);
  v46 = sub_222C9447C();
  v47 = *(v45 + 8);
  v47(v43, v44);
  sub_222B4FCD4(v38, &unk_27D026290, &qword_222C96B40);
  sub_222B4FCD4(v115, &unk_27D026290, &qword_222C96B40);
  v47(v40, v44);
  sub_222B4FCD4(v118, &unk_27D026290, &qword_222C96B40);
  v5 = v123;
  v4 = v126;
  v2 = v120;
  if ((v46 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_19:
  v48 = *(v0 + 224);
  v49 = sub_222C93BEC();
  v50 = sub_222C02E7C(v49);
  *(v0 + 320) = v50;

  if (!v50)
  {
    goto LABEL_26;
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v51 = sub_222C9431C();
  __swift_project_value_buffer(v51, qword_280FE2340);

  v52 = sub_222C942FC();
  v53 = sub_222C94A3C();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = *(v0 + 136);
    v55 = *(v0 + 120);
    v127 = *(v0 + 112);
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v130 = v57;
    *v56 = 136315138;
    sub_222C941DC();
    v58 = sub_222C9360C();
    v60 = v59;
    (*(v55 + 8))(v54, v127);
    v61 = sub_222B437C0(v58, v60, &v130);

    *(v56 + 4) = v61;
    _os_log_impl(&dword_222B39000, v52, v53, "[CombinedSessionAsyncSequence] Turns with the same id: %s detected, merging related conversations", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v57);
    MEMORY[0x223DCA8C0](v57, -1, -1);
    MEMORY[0x223DCA8C0](v56, -1, -1);
  }

  v63 = *(v0 + 216);
  v62 = *(v0 + 224);
  v64 = *(v0 + 128);
  *(v0 + 328) = sub_222C93BEC();
  v65 = sub_222C93BEC();
  *(v0 + 336) = v65;
  sub_222C941DC();
  v66 = sub_222C941CC();
  if (sub_222BB77B0(v65))
  {
    v67 = sub_222C941CC();
  }

  else
  {
    v67 = MEMORY[0x277D84F90];
  }

  v98 = *(v0 + 208);
  v99 = *(v0 + 128);
  v100 = *(v0 + 104);
  v130 = v66;
  sub_222B49C08(v67);
  sub_222C941BC();
  v101 = sub_222C941FC();
  v102 = *(v101 + 48);
  v103 = *(v101 + 52);
  swift_allocObject();
  v104 = sub_222C941EC();
  *(v0 + 344) = v104;

  sub_222C94F0C();

  sub_222C94EAC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222C9BAE0;
  *(inited + 32) = v104;

  sub_222B49BF0(inited);

  sub_222C94E8C();

  v106 = sub_222C94EAC();

  sub_222B49BF0(v106);
  sub_222C93C0C();
  v107 = *(MEMORY[0x277D856D0] + 4);
  v108 = swift_task_alloc();
  *(v0 + 352) = v108;
  *v108 = v0;
  v108[1] = sub_222C043B4;
  v109 = *(v0 + 272);
  v110 = *(v0 + 280);
  v111 = *(v0 + 240);
  v112 = *(v0 + 72);

  return MEMORY[0x282200308](v111, v109, v110);
}

uint64_t sub_222C043B4()
{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_222C04AA8;
  }

  else
  {
    v3 = sub_222C044C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222C044C8()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v36 = *(v0 + 304);
  v38 = *(v0 + 312);
  v30 = *(v0 + 240);
  v32 = *(v0 + 388);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v34 = *(v0 + 208);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  v9 = *(v0 + 88);
  v26 = *(v0 + 264);
  v28 = *(v0 + 80);
  v25 = *(v0 + 72);
  v10 = *(v0 + 56);

  v11 = *(v7 + 8);
  v11(v6, v8);
  v11(v5, v8);
  sub_222B4FCD4(v26, &qword_27D026D68, qword_222CA0638);
  sub_222C04DC4(v30, v25 + v32);
  v12 = *(v28 + 48);
  v36(v10, v34, v8);
  sub_222B723A4(v30, v10 + v12, &qword_27D026D68, qword_222CA0638);
  (*(v9 + 56))(v10, 0, 1, v28);
  v14 = *(v0 + 256);
  v13 = *(v0 + 264);
  v16 = *(v0 + 240);
  v15 = *(v0 + 248);
  v18 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 208);
  v20 = *(v0 + 216);
  v21 = *(v0 + 200);
  v22 = *(v0 + 176);
  v27 = *(v0 + 168);
  v29 = *(v0 + 160);
  v31 = *(v0 + 152);
  v33 = *(v0 + 136);
  v35 = *(v0 + 128);
  v37 = *(v0 + 104);
  v39 = *(v0 + 96);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_222C0470C()
{
  v2 = *(*v1 + 368);
  v5 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_222C04C70;
  }

  else
  {
    v3 = sub_222C04820;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222C04820()
{
  sub_222B4FCD4(v0[33], &qword_27D026D68, qword_222CA0638);
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[26];
  v8 = v0[27];
  v9 = v0[25];
  v10 = v0[22];
  v13 = v0[21];
  v14 = v0[20];
  v15 = v0[19];
  v16 = v0[17];
  v17 = v0[16];
  v18 = v0[13];
  v19 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t sub_222C0496C()
{
  v20 = v0[37];
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[25];
  v10 = v0[22];
  v13 = v0[21];
  v14 = v0[20];
  v15 = v0[19];
  v16 = v0[17];
  v17 = v0[16];
  v18 = v0[13];
  v19 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t sub_222C04AA8()
{
  v1 = v0[42];
  v2 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[33];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];
  v9 = v0[23];
  v10 = v0[24];

  v11 = *(v10 + 8);
  v11(v8, v9);
  v11(v7, v9);
  v11(v6, v9);
  sub_222B4FCD4(v5, &qword_27D026D68, qword_222CA0638);
  v31 = v0[45];
  v13 = v0[32];
  v12 = v0[33];
  v15 = v0[30];
  v14 = v0[31];
  v17 = v0[28];
  v16 = v0[29];
  v19 = v0[26];
  v18 = v0[27];
  v20 = v0[25];
  v21 = v0[22];
  v24 = v0[21];
  v25 = v0[20];
  v26 = v0[19];
  v27 = v0[17];
  v28 = v0[16];
  v29 = v0[13];
  v30 = v0[12];

  v22 = v0[1];

  return v22();
}

uint64_t sub_222C04C70()
{
  sub_222B4FCD4(v0[33], &qword_27D026D68, qword_222CA0638);
  v20 = v0[47];
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[25];
  v10 = v0[22];
  v13 = v0[21];
  v14 = v0[20];
  v15 = v0[19];
  v16 = v0[17];
  v17 = v0[16];
  v18 = v0[13];
  v19 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t sub_222C04DC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026D68, qword_222CA0638);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C04E34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026D68, qword_222CA0638);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C04EA4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222B503AC;

  return InferenceCombinedSessionAsyncSequence.InferenceCombinedSessionAsyncSequenceIterator.next()(a1, a2);
}

uint64_t sub_222C04F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x277D856F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_222C05020;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_222C05020()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t InferenceCombinedSessionAsyncSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = *(a1 + 24);
  return InferenceCombinedSessionAsyncSequence.InferenceCombinedSessionAsyncSequenceIterator.init(asyncSequence:)(v7, v4, a2);
}

uint64_t sub_222C05238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  InferenceCombinedSessionAsyncSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t AsyncSequence<>.windowSquished()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  return (*(v4 + 32))(a2, v7, a1);
}

uint64_t sub_222C05370(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222C053E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_222C05450(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_222C05590(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

void sub_222C057B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  if (v3 <= 0x3F)
  {
    sub_222C05E50();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_222C05850(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = sub_222C93BFC();
  v12 = *(v11 - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= 0xFE)
  {
    v16 = 254;
  }

  v17 = *(v12 + 80);
  v18 = *(*(v11 - 8) + 64);
  if (!v14)
  {
    ++v18;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v9 + 64) + v17;
  if (a2 > v16)
  {
    v20 = v18 + (v19 & ~v17) + 1;
    v21 = 8 * v20;
    if (v20 > 3)
    {
      goto LABEL_14;
    }

    v23 = ((a2 - v16 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v23))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v23 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v23 >= 2)
    {
LABEL_14:
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_34;
      }

LABEL_21:
      v24 = (v22 - 1) << v21;
      if (v20 > 3)
      {
        v24 = 0;
      }

      if (v20)
      {
        if (v20 <= 3)
        {
          v25 = v20;
        }

        else
        {
          v25 = 4;
        }

        if (v25 > 2)
        {
          if (v25 == 3)
          {
            v26 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v26 = *a1;
          }
        }

        else if (v25 == 1)
        {
          v26 = *a1;
        }

        else
        {
          v26 = *a1;
        }
      }

      else
      {
        v26 = 0;
      }

      v32 = v16 + (v26 | v24);
      return (v32 + 1);
    }
  }

LABEL_34:
  if (v10 != v16)
  {
    v29 = (a1 + v19) & ~v17;
    if (v15 == v16)
    {
      if (v14 >= 2)
      {
        v30 = (*(v13 + 48))(v29);
        if (v30 >= 2)
        {
          return v30 - 1;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }

    v31 = *(v29 + v18);
    if (v31 < 2)
    {
      return 0;
    }

    v32 = (v31 + 2147483646) & 0x7FFFFFFF;
    return (v32 + 1);
  }

  v27 = *(v9 + 48);

  return v27(a1, v10, AssociatedTypeWitness);
}

void sub_222C05B04(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v29 = v10;
  v11 = *(v10 + 84);
  v12 = 0;
  v13 = *(sub_222C93BFC() - 8);
  v14 = *(v13 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v15 <= v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v13 + 80);
  v18 = *(v13 + 64);
  if (v16 <= 0xFE)
  {
    v16 = 254;
  }

  v19 = *(v10 + 64) + v17;
  if (!v14)
  {
    ++v18;
  }

  v20 = v18 + (v19 & ~v17) + 1;
  if (a3 <= v16)
  {
    goto LABEL_21;
  }

  if (v20 <= 3)
  {
    v21 = ((a3 - v16 + ~(-1 << (8 * v20))) >> (8 * v20)) + 1;
    if (HIWORD(v21))
    {
      v12 = 4;
      if (v16 >= a2)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    if (v21 >= 2)
    {
      v12 = v22;
    }

    else
    {
      v12 = 0;
    }

LABEL_21:
    if (v16 >= a2)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v12 = 1;
  if (v16 >= a2)
  {
LABEL_31:
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        *&a1[v20] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v20] = 0;
    }

    else if (v12)
    {
      a1[v20] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    if (!a2)
    {
      return;
    }

LABEL_38:
    if (v11 == v16)
    {
      v26 = *(v29 + 56);

      v26(a1, a2, v11, AssociatedTypeWitness);
    }

    else
    {
      v27 = &a1[v19] & ~v17;
      if (v15 == v16)
      {
        v28 = *(v13 + 56);

        v28(v27, (a2 + 1));
      }

      else
      {
        *(v27 + v18) = a2 + 1;
      }
    }

    return;
  }

LABEL_22:
  v23 = ~v16 + a2;
  if (v20 >= 4)
  {
    bzero(a1, v18 + (v19 & ~v17) + 1);
    *a1 = v23;
    v24 = 1;
    if (v12 > 1)
    {
      goto LABEL_54;
    }

    goto LABEL_51;
  }

  v24 = (v23 >> (8 * v20)) + 1;
  if (v18 + (v19 & ~v17) == -1)
  {
LABEL_50:
    if (v12 > 1)
    {
      goto LABEL_54;
    }

    goto LABEL_51;
  }

  v25 = v23 & ~(-1 << (8 * v20));
  bzero(a1, v20);
  if (v20 == 3)
  {
    *a1 = v25;
    a1[2] = BYTE2(v25);
    goto LABEL_50;
  }

  if (v20 == 2)
  {
    *a1 = v25;
    if (v12 > 1)
    {
LABEL_54:
      if (v12 == 2)
      {
        *&a1[v20] = v24;
      }

      else
      {
        *&a1[v20] = v24;
      }

      return;
    }
  }

  else
  {
    *a1 = v23;
    if (v12 > 1)
    {
      goto LABEL_54;
    }
  }

LABEL_51:
  if (v12)
  {
    a1[v20] = v24;
  }
}

void sub_222C05E50()
{
  if (!qword_280FE0288)
  {
    sub_222C93BFC();
    v0 = sub_222C94B5C();
    if (!v1)
    {
      atomic_store(v0, &qword_280FE0288);
    }
  }
}

uint64_t sub_222C05EA8()
{
  type metadata accessor for MessagesSuggestionOutcomeExtractor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026D78, &qword_222CA0818);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_280FDC778 = 91;
  unk_280FDC780 = 0xE100000000000000;
  return result;
}

uint64_t MessagesSuggestionOutcomeExtractor.__allocating_init(picsStore:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_222B405A0(a1, v2 + 16);
  return v2;
}

void *sub_222C05F98(uint64_t a1, uint64_t a2)
{
  v94 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v97 = (&v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v98 = &v94 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v94 - v10;
  v12 = type metadata accessor for EntityPromptClassification();
  v102 = *(v12 - 8);
  v13 = *(v102 + 64);
  MEMORY[0x28223BE20](v12);
  v106 = (&v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for FeaturisedTurn(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v105 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v95 = &v94 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v94 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v27 = &v94 - v26;
  v28 = *(a1 + 16);
  v99 = v25;
  v103 = v24;
  v96 = v28;
  v100 = a1;
  if (v28)
  {
    v29 = *(v25 + 72);
    v104 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v30 = a1 + v104;
    v31 = MEMORY[0x277D84F90];
    do
    {
      sub_222C09250(v30, v27, type metadata accessor for FeaturisedTurn);
      if (sub_222B42478(*&v27[*(v15 + 24)]))
      {

        sub_222C0A01C(v27, v23, type metadata accessor for FeaturisedTurn);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v109[0] = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C3D4(0, *(v31 + 16) + 1, 1);
          v31 = *&v109[0];
        }

        v34 = *(v31 + 16);
        v33 = *(v31 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_222B4C3D4(v33 > 1, v34 + 1, 1);
          v31 = *&v109[0];
        }

        *(v31 + 16) = v34 + 1;
        sub_222C0A01C(v23, v31 + v104 + v34 * v29, type metadata accessor for FeaturisedTurn);
        v15 = v103;
      }

      else
      {
        sub_222C0A084(v27, type metadata accessor for FeaturisedTurn);
      }

      v30 += v29;
      --v28;
    }

    while (v28);
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  v101 = v31;
  v35 = *(v94 + 16);
  if (v35)
  {
    v27 = (v94 + 32);
    v36 = (v102 + 56);
    v37 = (v102 + 48);
    v38 = MEMORY[0x277D84F90];
    v39 = v94 + 32;
    v40 = *(v94 + 16);
    do
    {
      sub_222B43E3C(v39, v109);
      sub_222B405A0(v109, v108);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      v41 = swift_dynamicCast();
      (*v36)(v11, v41 ^ 1u, 1, v12);
      if ((*v37)(v11, 1, v12) == 1)
      {
        sub_222B4FCD4(v11, &qword_27D025028, &unk_222C96EC0);
      }

      else
      {
        sub_222C0A01C(v11, v106, type metadata accessor for EntityPromptClassification);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_222B49F90(0, v38[2] + 1, 1, v38);
        }

        v43 = v38[2];
        v42 = v38[3];
        v44 = v38;
        if (v43 >= v42 >> 1)
        {
          v44 = sub_222B49F90(v42 > 1, v43 + 1, 1, v38);
        }

        *(v44 + 16) = v43 + 1;
        v38 = v44;
        sub_222C0A01C(v106, v44 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v43, type metadata accessor for EntityPromptClassification);
      }

      v39 += 40;
      --v40;
    }

    while (v40);
    do
    {
      sub_222B43E3C(v27, v109);
      sub_222B405A0(v109, v108);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      if (swift_dynamicCast())
      {
        v45 = v107;

        if (v45)
        {
          v106 = v38;
          LODWORD(v104) = 1;
          goto LABEL_29;
        }
      }

      v27 += 40;
      --v35;
    }

    while (v35);
    v106 = v38;
    LODWORD(v104) = 0;
  }

  else
  {
    LODWORD(v104) = 0;
    v106 = MEMORY[0x277D84F90];
  }

LABEL_29:
  v46 = 0xD000000000000013;
  v47 = v99 + 56;
  v48 = (v99 + 48);
  swift_bridgeObjectRetain_n();
  LOBYTE(v49) = 0;
  v50 = 0;
  while (1)
  {
LABEL_39:
    if (v50 == v96)
    {
      v56 = 1;
      v50 = v96;
      v57 = v97;
      v58 = v103;
      goto LABEL_44;
    }

    v57 = v97;
    if (v50 >= v96)
    {
      break;
    }

    sub_222C09250(v100 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v50, v98, type metadata accessor for FeaturisedTurn);
    v59 = __OFADD__(v50++, 1);
    v58 = v103;
    if (v59)
    {
      goto LABEL_98;
    }

    v56 = 0;
LABEL_44:
    v60 = v98;
    (*v47)(v98, v56, 1, v58);
    sub_222B5EC84(v60, v57);
    if ((*v48)(v57, 1, v58) == 1)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_60;
    }

    v27 = v95;
    sub_222C0A01C(v57, v95, type metadata accessor for FeaturisedTurn);
    v61 = *&v27[*(v58 + 28)];

    sub_222C0A084(v27, type metadata accessor for FeaturisedTurn);

    v49 = v61;
    if (v61)
    {
      v51 = (v61 + 64);
      v52 = -1;
      do
      {
        ++v52;
        v53 = *(v49 + 16);
        if (v52 == v53)
        {
          goto LABEL_39;
        }

        if (v52 >= v53)
        {
          goto LABEL_93;
        }

        v54 = *(v51 - 3);
        v27 = *(v51 - 2);
        if (*(v51 - 1) == 0xD000000000000013 && 0x8000000222CA87A0 == *v51)
        {
          break;
        }

        v51 += 5;
      }

      while ((sub_222C951FC() & 1) == 0);

      swift_bridgeObjectRelease_n();

      v62 = sub_222B41660(v27);

      if (v62)
      {
        v63 = 0;
        v64 = *(v62 + 16);
        v46 = MEMORY[0x277D84F90];
        while (1)
        {
          v47 = v106;
          v65 = v62 + 48 * v63;
          do
          {
            if (v64 == v63)
            {

              goto LABEL_61;
            }

            if (v63 >= *(v62 + 16))
            {
              goto LABEL_92;
            }

            v66 = (v65 + 48);
            ++v63;
            v67 = *(v65 + 56);
            v65 += 48;
          }

          while (!v67);
          v68 = *v66;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = sub_222B49E84(0, *(v46 + 2) + 1, 1, v46);
          }

          v70 = *(v46 + 2);
          v69 = *(v46 + 3);
          if (v70 >= v69 >> 1)
          {
            v46 = sub_222B49E84((v69 > 1), v70 + 1, 1, v46);
          }

          *(v46 + 2) = v70 + 1;
          v71 = &v46[16 * v70];
          *(v71 + 4) = v68;
          *(v71 + 5) = v67;
        }
      }

LABEL_60:
      v46 = 0;
      v47 = v106;
LABEL_61:
      if (qword_280FDFE78 != -1)
      {
        goto LABEL_96;
      }

      goto LABEL_62;
    }
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  swift_once();
LABEL_64:
  *(v27 + 4) = sub_222B437C0(qword_280FDC778, unk_280FDC780, v109);
  *(v27 + 6) = 2048;
  *(v27 + 14) = *(v101 + 16);

  _os_log_impl(&dword_222B39000, v57, v49, "%s Found %ld turns with PICS suggestions reported.", v27, 0x16u);
  __swift_destroy_boxed_opaque_existential_0Tm(v48);
  MEMORY[0x223DCA8C0](v48, -1, -1);
  MEMORY[0x223DCA8C0](v27, -1, -1);

  v47 = v106;
LABEL_66:

  v73 = sub_222C942FC();
  v74 = sub_222C94A3C();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *&v109[0] = v76;
    *v75 = 136315394;
    if (qword_280FDC770 != -1)
    {
      swift_once();
    }

    *(v75 + 4) = sub_222B437C0(qword_280FDC778, unk_280FDC780, v109);
    *(v75 + 12) = 2048;
    *(v75 + 14) = *(v47 + 16);

    _os_log_impl(&dword_222B39000, v73, v74, "%s Found %ld entity prompts in the session.", v75, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v76);
    MEMORY[0x223DCA8C0](v76, -1, -1);
    MEMORY[0x223DCA8C0](v75, -1, -1);
  }

  else
  {
  }

  v77 = *(v101 + 16);
  if (v77)
  {
    v78 = v101 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
    v79 = *(v99 + 72);
    v80 = MEMORY[0x277D84F90];
    while (1)
    {
      v81 = v105;
      sub_222C09250(v78, v105, type metadata accessor for FeaturisedTurn);
      v82 = sub_222C06D54(v81, v106, v46, v104);
      sub_222C0A084(v81, type metadata accessor for FeaturisedTurn);
      v83 = *(v82 + 16);
      v47 = v80[2];
      v84 = v47 + v83;
      if (__OFADD__(v47, v83))
      {
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        swift_once();
LABEL_62:
        v72 = sub_222C9431C();
        __swift_project_value_buffer(v72, qword_280FE2340);

        v57 = sub_222C942FC();
        LOBYTE(v49) = sub_222C94A3C();
        if (os_log_type_enabled(v57, v49))
        {
          v27 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *&v109[0] = v48;
          *v27 = 136315394;
          if (qword_280FDC770 == -1)
          {
            goto LABEL_64;
          }

          goto LABEL_99;
        }

        goto LABEL_66;
      }

      v85 = swift_isUniquelyReferenced_nonNull_native();
      if (v85 && v84 <= v80[3] >> 1)
      {
        if (*(v82 + 16))
        {
          goto LABEL_84;
        }
      }

      else
      {
        if (v47 <= v84)
        {
          v86 = v47 + v83;
        }

        else
        {
          v86 = v47;
        }

        v80 = sub_222B4B674(v85, v86, 1, v80);
        if (*(v82 + 16))
        {
LABEL_84:
          v47 = v80[2];
          v87 = (v80[3] >> 1) - v47;
          v88 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024DE8, &qword_222CA55A0) - 8);
          if (v87 < v83)
          {
            goto LABEL_94;
          }

          v89 = (*(v88 + 80) + 32) & ~*(v88 + 80);
          v90 = *(v88 + 72);
          swift_arrayInitWithCopy();

          if (v83)
          {
            v91 = v80[2];
            v59 = __OFADD__(v91, v83);
            v92 = v91 + v83;
            if (v59)
            {
              goto LABEL_95;
            }

            v80[2] = v92;
          }

          goto LABEL_74;
        }
      }

      if (v83)
      {
        goto LABEL_91;
      }

LABEL_74:
      v78 += v79;
      if (!--v77)
      {
        goto LABEL_89;
      }
    }
  }

  v80 = MEMORY[0x277D84F90];
LABEL_89:

  return v80;
}

uint64_t sub_222C06D54(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v195 = a4;
  v206 = a3;
  v193 = a2;
  v222 = type metadata accessor for FeaturisedTurn(0);
  v5 = *(*(v222 - 8) + 64);
  MEMORY[0x28223BE20](v222);
  v197 = &v186 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v192 = &v186 - v9;
  v191 = type metadata accessor for EntityPromptClassification();
  v190 = *(v191 - 8);
  v10 = *(v190 + 64);
  MEMORY[0x28223BE20](v191);
  v194 = &v186 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A88, &unk_222C9A0C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v211 = &v186 - v14;
  v210 = type metadata accessor for PlusContactSuggestion();
  v214 = *(v210 - 8);
  v15 = *(v214 + 64);
  MEMORY[0x28223BE20](v210);
  v202 = &v186 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  v218 = *(v224 - 8);
  v17 = *(v218 + 64);
  v18 = MEMORY[0x28223BE20](v224);
  v196 = &v186 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v201 = &v186 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v186 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v186 - v26;
  MEMORY[0x28223BE20](v25);
  v219 = &v186 - v28;
  v29 = type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary();
  v220 = *(v29 - 1);
  v30 = *(v220 + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v221 = &v186 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v186 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v186 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v217 = &v186 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v186 - v42;
  v44 = sub_222C9367C();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  v47 = MEMORY[0x28223BE20](v44);
  v199 = &v186 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v209 = &v186 - v50;
  MEMORY[0x28223BE20](v49);
  v52 = &v186 - v51;
  FeaturisedTurn.getPlusId()(v43);
  v215 = *(v45 + 48);
  v216 = v45 + 48;
  if (v215(v43, 1, v44) == 1)
  {
    sub_222B4FCD4(v43, &unk_27D026290, &qword_222C96B40);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v53 = sub_222C9431C();
    __swift_project_value_buffer(v53, qword_280FE2340);
    v54 = sub_222C942FC();
    v55 = sub_222C94A4C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v226 = v57;
      *v56 = 136315138;
      if (qword_280FDC770 != -1)
      {
        swift_once();
      }

      *(v56 + 4) = sub_222B437C0(qword_280FDC778, unk_280FDC780, &v226);
      _os_log_impl(&dword_222B39000, v54, v55, "%s Missing PLUS Id for turn with PICS suggestions. SELF logs cannot be emitted for these suggestions.", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v57);
      MEMORY[0x223DCA8C0](v57, -1, -1);
      MEMORY[0x223DCA8C0](v56, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  v59 = *(v45 + 32);
  v200 = v52;
  v208 = v45 + 32;
  v207 = v59;
  v59(v52, v43, v44);
  v198 = *(a1 + *(v222 + 24));
  v60 = sub_222B42A30(v198);
  v61 = a1;
  if (v60 != 2 && (v60 & 1) == 0)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v96 = sub_222C9431C();
    __swift_project_value_buffer(v96, qword_280FE2340);
    v97 = sub_222C942FC();
    v98 = sub_222C94A3C();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v226 = v100;
      *v99 = 136315138;
      if (qword_280FDC770 != -1)
      {
        swift_once();
      }

      *(v99 + 4) = sub_222B437C0(qword_280FDC778, unk_280FDC780, &v226);
      _os_log_impl(&dword_222B39000, v97, v98, "%s Runtime suggestions is not enabled for the turn, no outcomes will be extracted", v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v100);
      MEMORY[0x223DCA8C0](v100, -1, -1);
      MEMORY[0x223DCA8C0](v99, -1, -1);
    }

    (*(v45 + 8))(v200, v44);
    return MEMORY[0x277D84F90];
  }

  v62 = MEMORY[0x277D84F90];
  v63 = sub_222B42478(v198);
  if (v63)
  {
    v62 = v63;
  }

  v223 = v44;
  v189 = v45;
  v188 = a1;
  if (v206)
  {
    v64 = *(v62 + 16);
    if (v64)
    {
      v225 = MEMORY[0x277D84F90];
      sub_222B4CC54(0, v64, 0);
      v222 = v225;
      v65 = (*(v218 + 80) + 32) & ~*(v218 + 80);
      v187 = v62;
      v66 = v62 + v65;
      v204 = (v214 + 48);
      v203 = (v45 + 8);
      v67 = *(v218 + 72);
      v213 = (v45 + 16);
      v214 = v67;
      v205 = v29;
      do
      {
        v68 = v219;
        sub_222C09250(v66, v219, type metadata accessor for PlusContactSuggestionRuntimeSummary);
        sub_222C09250(v68, v27, type metadata accessor for PlusContactSuggestionRuntimeSummary);
        v69 = v217;
        sub_222B5551C(v68 + *(v224 + 20), v217);
        if (v215(v69, 1, v44) == 1)
        {
          sub_222C0A084(v68, type metadata accessor for PlusContactSuggestionRuntimeSummary);
          sub_222B4FCD4(v69, &unk_27D026290, &qword_222C96B40);
          v70 = 2;
        }

        else
        {
          v71 = v209;
          v207(v209, v69, v44);
          v72 = v212[5];
          v73 = v212[6];
          __swift_project_boxed_opaque_existential_1(v212 + 2, v72);
          v74 = v211;
          (*(v73 + 64))(v71, v72, v73);
          v75 = v210;
          if ((*v204)(v74, 1, v210) == 1)
          {
            v44 = v223;
            (*v203)(v71, v223);
            sub_222C0A084(v219, type metadata accessor for PlusContactSuggestionRuntimeSummary);
            sub_222B4FCD4(v74, &qword_27D025A88, &unk_222C9A0C0);
            v70 = 2;
          }

          else
          {
            v76 = v74;
            v77 = v202;
            v78 = sub_222C0A01C(v76, v202, type metadata accessor for PlusContactSuggestion);
            v79 = (v77 + *(v75 + 24));
            v80 = v79[1];
            v226 = *v79;
            v227 = v80;
            MEMORY[0x28223BE20](v78);
            *(&v186 - 2) = &v226;

            v81 = sub_222B42F4C(sub_222B5EEB0, (&v186 - 4), v206);
            sub_222C0A084(v77, type metadata accessor for PlusContactSuggestion);
            v44 = v223;
            (*v203)(v71, v223);
            sub_222C0A084(v219, type metadata accessor for PlusContactSuggestionRuntimeSummary);

            v70 = v81 & 1;
          }

          v29 = v205;
        }

        (*v213)(v37, v27, v44);
        v82 = v224;
        sub_222B5551C(&v27[*(v224 + 20)], &v37[v29[5]]);
        v37[v29[6]] = v27[*(v82 + 24)];
        v83 = v27[*(v82 + 28)];
        sub_222C0A084(v27, type metadata accessor for PlusContactSuggestionRuntimeSummary);
        v37[v29[7]] = v83;
        v37[v29[8]] = v70;
        v84 = v222;
        v225 = v222;
        v86 = *(v222 + 16);
        v85 = *(v222 + 24);
        if (v86 >= v85 >> 1)
        {
          sub_222B4CC54(v85 > 1, v86 + 1, 1);
          v84 = v225;
        }

        *(v84 + 16) = v86 + 1;
        v87 = (*(v220 + 80) + 32) & ~*(v220 + 80);
        v222 = v84;
        sub_222C0A01C(v37, v84 + v87 + *(v220 + 72) * v86, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
        v66 += v214;
        --v64;
        v44 = v223;
      }

      while (v64);

LABEL_41:
      v45 = v189;
      v61 = v188;
      goto LABEL_43;
    }
  }

  else
  {
    v88 = v62;
    v89 = *(v62 + 16);
    if (v89)
    {
      v226 = MEMORY[0x277D84F90];
      sub_222B4CC54(0, v89, 0);
      v90 = v226;
      v91 = (*(v218 + 80) + 32) & ~*(v218 + 80);
      v187 = v88;
      v92 = v88 + v91;
      v222 = *(v218 + 72);
      do
      {
        sub_222C09250(v92, v24, type metadata accessor for PlusContactSuggestionRuntimeSummary);
        (*(v45 + 16))(v35, v24, v223);
        v93 = v224;
        sub_222B5551C(&v24[*(v224 + 20)], &v35[v29[5]]);
        v35[v29[6]] = v24[*(v93 + 24)];
        LOBYTE(v93) = v24[*(v93 + 28)];
        sub_222C0A084(v24, type metadata accessor for PlusContactSuggestionRuntimeSummary);
        v35[v29[7]] = v93;
        v35[v29[8]] = 2;
        v226 = v90;
        v95 = *(v90 + 16);
        v94 = *(v90 + 24);
        if (v95 >= v94 >> 1)
        {
          sub_222B4CC54(v94 > 1, v95 + 1, 1);
          v90 = v226;
        }

        *(v90 + 16) = v95 + 1;
        sub_222C0A01C(v35, v90 + ((*(v220 + 80) + 32) & ~*(v220 + 80)) + *(v220 + 72) * v95, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
        v92 += v222;
        --v89;
      }

      while (v89);
      v222 = v90;

      v44 = v223;
      goto LABEL_41;
    }
  }

  v222 = MEMORY[0x277D84F90];
LABEL_43:
  v101 = sub_222B41648(v198);
  v102 = v201;
  if (v101 && (v103 = v101, v226 = 0xD000000000000029, v227 = 0x8000000222CA8620, MEMORY[0x28223BE20](v101), *(&v186 - 2) = &v226, v104 = sub_222B42F4C(sub_222B5EBA4, (&v186 - 4), v103), v105 = , (v104 & 1) != 0))
  {
    MEMORY[0x28223BE20](v105);
    *(&v186 - 2) = v61;
    v106 = v192;
    sub_222B4128C(sub_222C092D8, v193, v192);
    v219 = 0;
    if ((*(v190 + 48))(v106, 1, v191) == 1)
    {
      sub_222B4FCD4(v106, &qword_27D025028, &unk_222C96EC0);
      v107 = v222;
      v108 = sub_222C09818(v222, v195 & 1);
      v109 = v197;
    }

    else
    {
      v139 = v106;
      v140 = v194;
      v141 = sub_222C0A01C(v139, v194, type metadata accessor for EntityPromptClassification);
      MEMORY[0x28223BE20](v141);
      *(&v186 - 2) = v212;
      *(&v186 - 1) = v140;
      v142 = sub_222C55D08(sub_222C0A014, (&v186 - 4), v222);
      v143 = v142;
      v145 = v144;
      v146 = *(v144 + 16);
      if (v146)
      {
        v217 = v142;
        v226 = MEMORY[0x277D84F90];
        sub_222B4C9EC(0, v146, 0);
        v147 = v226;
        v148 = *(v220 + 80);
        v216 = v145;
        v149 = v145 + ((v148 + 32) & ~v148);
        v150 = *(v220 + 72);
        v151 = (v189 + 16);
        do
        {
          v152 = v221;
          sub_222C09250(v149, v221, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
          (*v151)(v102, v152, v223);
          v153 = v224;
          sub_222B5551C(v152 + v29[5], v102 + *(v224 + 20));
          v154 = *(v152 + v29[7]);
          *(v102 + *(v153 + 24)) = *(v152 + v29[6]);
          *(v102 + *(v153 + 28)) = v154;
          sub_222C0A084(v152, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
          v226 = v147;
          v156 = *(v147 + 16);
          v155 = *(v147 + 24);
          if (v156 >= v155 >> 1)
          {
            sub_222B4C9EC(v155 > 1, v156 + 1, 1);
            v147 = v226;
          }

          *(v147 + 16) = v156 + 1;
          sub_222C0A01C(v102, v147 + ((*(v218 + 80) + 32) & ~*(v218 + 80)) + *(v218 + 72) * v156, type metadata accessor for PlusContactSuggestionRuntimeSummary);
          v149 += v150;
          --v146;
        }

        while (v146);

        v44 = v223;
        v143 = v217;
      }

      else
      {

        v147 = MEMORY[0x277D84F90];
      }

      v157 = v194;
      v158 = sub_222C55204(v147, v194);

      v159 = sub_222C09818(v143, v195 & 1);

      v226 = v158;
      sub_222B49C20(v159);
      v108 = v226;
      sub_222C0A084(v157, type metadata accessor for EntityPromptClassification);
      v109 = v197;
      v61 = v188;
      v107 = v222;
    }

    v160 = *(v107 + 16);
    if (v160)
    {
      v226 = MEMORY[0x277D84F90];
      sub_222B4C418(0, v160, 0);
      v161 = v226;
      v162 = v107 + ((*(v220 + 80) + 32) & ~*(v220 + 80));
      v163 = *(v220 + 72);
      do
      {
        v164 = v221;
        sub_222C09250(v162, v221, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
        v165 = sub_222C9360C();
        v167 = v166;
        sub_222C0A084(v164, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
        v226 = v161;
        v169 = *(v161 + 16);
        v168 = *(v161 + 24);
        if (v169 >= v168 >> 1)
        {
          sub_222B4C418((v168 > 1), v169 + 1, 1);
          v161 = v226;
        }

        *(v161 + 16) = v169 + 1;
        v170 = v161 + 16 * v169;
        *(v170 + 32) = v165;
        *(v170 + 40) = v167;
        v162 += v163;
        --v160;
      }

      while (v160);

      v44 = v223;
      v109 = v197;
      v61 = v188;
    }

    else
    {

      v161 = MEMORY[0x277D84F90];
    }

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v171 = sub_222C9431C();
    __swift_project_value_buffer(v171, qword_280FE2340);
    sub_222C09250(v61, v109, type metadata accessor for FeaturisedTurn);

    v172 = sub_222C942FC();
    v173 = sub_222C94A3C();
    if (os_log_type_enabled(v172, v173))
    {
      v174 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v226 = v175;
      *v174 = 136315906;
      if (qword_280FDC770 != -1)
      {
        swift_once();
      }

      *(v174 + 4) = sub_222B437C0(qword_280FDC778, unk_280FDC780, &v226);
      *(v174 + 12) = 2048;
      if (v108 >> 62)
      {
        v176 = sub_222C94C6C();
      }

      else
      {
        v176 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v174 + 14) = v176;

      *(v174 + 22) = 2048;
      *(v174 + 24) = *(v161 + 16);

      *(v174 + 32) = 2080;
      sub_222B9E5D0();
      v177 = v223;
      v178 = sub_222C9517C();
      v180 = v179;
      sub_222C0A084(v109, type metadata accessor for FeaturisedTurn);
      v181 = sub_222B437C0(v178, v180, &v226);

      *(v174 + 34) = v181;
      _os_log_impl(&dword_222B39000, v172, v173, "%s Generated outcomes for %ld/%ld suggestions in Turn id=%s", v174, 0x2Au);
      swift_arrayDestroy();
      v182 = v175;
      v44 = v177;
      MEMORY[0x223DCA8C0](v182, -1, -1);
      MEMORY[0x223DCA8C0](v174, -1, -1);
    }

    else
    {

      sub_222C0A084(v109, type metadata accessor for FeaturisedTurn);
    }

    sub_222C54A3C(v108, v161);

    MEMORY[0x28223BE20](v183);
    v184 = v200;
    *(&v186 - 2) = v200;
    sub_222C63194(sub_222C0A208, &v186 - 4, v108);
    v138 = v185;

    (*(v189 + 8))(v184, v44);
  }

  else
  {
    v110 = v200;
    v219 = 0;
    v111 = v199;
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v112 = sub_222C9431C();
    __swift_project_value_buffer(v112, qword_280FE2340);
    v113 = *(v45 + 16);
    v113(v111, v110, v44);
    v114 = sub_222C942FC();
    v115 = v45;
    v116 = sub_222C94A3C();
    if (os_log_type_enabled(v114, v116))
    {
      v117 = swift_slowAlloc();
      v216 = swift_slowAlloc();
      v226 = v216;
      *v117 = 136315394;
      if (qword_280FDC770 != -1)
      {
        swift_once();
      }

      *(v117 + 4) = sub_222B437C0(qword_280FDC778, unk_280FDC780, &v226);
      *(v117 + 12) = 2080;
      sub_222B9E5D0();
      v118 = sub_222C9517C();
      v120 = v119;
      v217 = *(v189 + 8);
      (v217)(v111, v223);
      v121 = sub_222B437C0(v118, v120, &v226);
      v44 = v223;

      *(v117 + 14) = v121;
      _os_log_impl(&dword_222B39000, v114, v116, "%s Turn with PLUS ID %s does not have a messages task type. Marking all suggestion outcomes as unknown.", v117, 0x16u);
      v122 = v216;
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v122, -1, -1);
      MEMORY[0x223DCA8C0](v117, -1, -1);
    }

    else
    {

      v217 = *(v115 + 8);
      (v217)(v111, v44);
    }

    v123 = *(v222 + 16);
    if (v123)
    {
      v226 = MEMORY[0x277D84F90];
      v124 = v222;
      sub_222B4C9EC(0, v123, 0);
      v125 = v226;
      v126 = v124 + ((*(v220 + 80) + 32) & ~*(v220 + 80));
      v127 = *(v220 + 72);
      v128 = v196;
      do
      {
        v129 = v221;
        sub_222C09250(v126, v221, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
        v113(v128, v129, v44);
        v130 = v224;
        sub_222B5551C(v129 + v29[5], v128 + *(v224 + 20));
        v131 = *(v129 + v29[7]);
        *(v128 + *(v130 + 24)) = *(v129 + v29[6]);
        *(v128 + *(v130 + 28)) = v131;
        sub_222C0A084(v129, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
        v226 = v125;
        v133 = *(v125 + 16);
        v132 = *(v125 + 24);
        if (v133 >= v132 >> 1)
        {
          sub_222B4C9EC(v132 > 1, v133 + 1, 1);
          v125 = v226;
        }

        *(v125 + 16) = v133 + 1;
        sub_222C0A01C(v128, v125 + ((*(v218 + 80) + 32) & ~*(v218 + 80)) + *(v218 + 72) * v133, type metadata accessor for PlusContactSuggestionRuntimeSummary);
        v126 += v127;
        --v123;
        v44 = v223;
      }

      while (v123);
    }

    else
    {

      v125 = MEMORY[0x277D84F90];
    }

    v134 = sub_222BC94A8(v125, 0);

    MEMORY[0x28223BE20](v135);
    v136 = v200;
    *(&v186 - 2) = v200;
    sub_222C63194(sub_222C092B8, &v186 - 4, v134);
    v138 = v137;

    (v217)(v136, v44);
  }

  return v138;
}

uint64_t sub_222C0886C(void *a1)
{
  v2 = *a1 == 0xD000000000000029 && 0x8000000222CA8620 == a1[1];
  if (!v2 && (sub_222C951FC() & 1) == 0)
  {
    return 0;
  }

  v3 = a1[2] == 0x6E65697069636572 && a1[3] == 0xE900000000000074;
  if (!v3 && (sub_222C951FC() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for EntityPromptClassification() + 44);
  return sub_222C9362C() & 1;
}

uint64_t sub_222C08940(uint64_t a1, void *a2, uint64_t a3)
{
  v58 = a3;
  v62 = a2;
  v4 = type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary();
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v60 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v55 - v10;
  v12 = sub_222C9367C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v56 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  v17 = (v16 - 8);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A88, &unk_222C9A0C0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v55 - v23;
  v61 = type metadata accessor for PlusContactSuggestion();
  v25 = *(v61 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v61);
  v57 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v20, a1, v12);
  v28 = v17[7];
  sub_222B5551C(a1 + v5[7], &v20[v28]);
  v29 = v5[9];
  v30 = *(a1 + v5[8]);
  v59 = a1;
  LOBYTE(v29) = *(a1 + v29);
  v20[v17[8]] = v30;
  v20[v17[9]] = v29;
  sub_222B5551C(&v20[v28], v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_222C0A084(v20, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    sub_222B4FCD4(v11, &unk_27D026290, &qword_222C96B40);
    v31 = v61;
    (*(v25 + 56))(v24, 1, 1, v61);
  }

  else
  {
    v32 = v56;
    (*(v13 + 32))(v56, v11, v12);
    v33 = v62[5];
    v34 = v62[6];
    __swift_project_boxed_opaque_existential_1(v62 + 2, v33);
    (*(v34 + 64))(v32, v33, v34);
    (*(v13 + 8))(v32, v12);
    sub_222C0A084(v20, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    v31 = v61;
  }

  if ((*(v25 + 48))(v24, 1, v31) == 1)
  {
    sub_222B4FCD4(v24, &qword_27D025A88, &unk_222C9A0C0);
    v35 = v62;
  }

  else
  {
    v36 = v57;
    v37 = sub_222C0A01C(v24, v57, type metadata accessor for PlusContactSuggestion);
    v38 = *(v58 + 32);
    v39 = (v36 + *(v31 + 24));
    v40 = v39[1];
    v63[0] = *v39;
    v63[1] = v40;
    MEMORY[0x28223BE20](v37);
    *(&v55 - 2) = v63;

    LOBYTE(v38) = sub_222B42F4C(sub_222B5EEB0, (&v55 - 4), v38);
    sub_222C0A084(v36, type metadata accessor for PlusContactSuggestion);

    v35 = v62;
    if (v38)
    {
      return 1;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v42 = sub_222C9431C();
  __swift_project_value_buffer(v42, qword_280FE2340);
  v43 = v60;
  sub_222C09250(v59, v60, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);

  v44 = sub_222C942FC();
  v45 = sub_222C94A4C();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v63[0] = v47;
    *v46 = 136315394;
    v63[2] = v35;
    type metadata accessor for MessagesSuggestionOutcomeExtractor();

    v48 = sub_222C944EC();
    v50 = sub_222B437C0(v48, v49, v63);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2080;
    v51 = sub_222C9360C();
    v53 = v52;
    sub_222C0A084(v43, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
    v54 = sub_222B437C0(v51, v53, v63);

    *(v46 + 14) = v54;
    _os_log_impl(&dword_222B39000, v44, v45, "[%s] Suggestion was not in the prompt entities. Falling back to non-prompt resolution. suggestionId=%s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v47, -1, -1);
    MEMORY[0x223DCA8C0](v46, -1, -1);
  }

  else
  {

    sub_222C0A084(v43, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
  }

  return 0;
}

id sub_222C09028@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024DE8, &qword_222CA55A0) + 48);
  v7 = sub_222C9367C();
  (*(*(v7 - 8) + 16))(a3, a2, v7);
  *(a3 + v6) = v5;
  return v5;
}

uint64_t MessagesSuggestionOutcomeExtractor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_222C0911C@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for MessagesSuggestionOutcomeExtractor();
  v4 = swift_allocObject();
  result = sub_222B405A0(a1, v4 + 16);
  *a2 = v4;
  return result;
}

uint64_t type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary()
{
  result = qword_27D026D80;
  if (!qword_27D026D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222C09250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C092F8(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = *(a1 + *(type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary() + 32));
    if (v2 == 2)
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v3 = sub_222C9431C();
      __swift_project_value_buffer(v3, qword_280FE2340);
      v4 = sub_222C942FC();
      v5 = sub_222C94A3C();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v24 = v7;
        *v6 = 136315138;
        if (qword_280FDC770 != -1)
        {
          swift_once();
        }

        *(v6 + 4) = sub_222B437C0(qword_280FDC778, unk_280FDC780, &v24);
        _os_log_impl(&dword_222B39000, v4, v5, "%s Message was sent in session, but we don't know whether the suggestion was in recipients list. Marking outcome as unknown", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v7);
        MEMORY[0x223DCA8C0](v7, -1, -1);
        MEMORY[0x223DCA8C0](v6, -1, -1);
      }

      return 0;
    }

    else if (v2)
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v14 = sub_222C9431C();
      __swift_project_value_buffer(v14, qword_280FE2340);
      v15 = sub_222C942FC();
      v16 = sub_222C94A3C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v24 = v18;
        *v17 = 136315138;
        if (qword_280FDC770 != -1)
        {
          swift_once();
        }

        *(v17 + 4) = sub_222B437C0(qword_280FDC778, unk_280FDC780, &v24);
        _os_log_impl(&dword_222B39000, v15, v16, "%s Suggestion was chosen by model without prompt, the user did not abandon and messages were sent to the suggestion. Marking outcome as successful execution.", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
        MEMORY[0x223DCA8C0](v18, -1, -1);
        MEMORY[0x223DCA8C0](v17, -1, -1);
      }

      return 11;
    }

    else
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v19 = sub_222C9431C();
      __swift_project_value_buffer(v19, qword_280FE2340);
      v20 = sub_222C942FC();
      v21 = sub_222C94A3C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v24 = v23;
        *v22 = 136315138;
        if (qword_280FDC770 != -1)
        {
          swift_once();
        }

        *(v22 + 4) = sub_222B437C0(qword_280FDC778, unk_280FDC780, &v24);
        _os_log_impl(&dword_222B39000, v20, v21, "%s Suggestion was chosen by model without prompt, but was not included in the final recipients. Marking outcome as removed.", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v23);
        MEMORY[0x223DCA8C0](v23, -1, -1);
        MEMORY[0x223DCA8C0](v22, -1, -1);
      }

      return 12;
    }
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v9 = sub_222C9431C();
    __swift_project_value_buffer(v9, qword_280FE2340);
    v10 = sub_222C942FC();
    v11 = sub_222C94A3C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 136315138;
      if (qword_280FDC770 != -1)
      {
        swift_once();
      }

      *(v12 + 4) = sub_222B437C0(qword_280FDC778, unk_280FDC780, &v24);
      _os_log_impl(&dword_222B39000, v10, v11, "%s Suggestion was chosen by model without prompt, the user abandoned, and messages were not sent in session. Marking outcome as abandoned.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x223DCA8C0](v13, -1, -1);
      MEMORY[0x223DCA8C0](v12, -1, -1);
    }

    return 13;
  }
}

uint64_t sub_222C09818(uint64_t a1, int a2)
{
  LODWORD(v59) = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v58 - v5;
  v7 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  v60 = *(v7 - 1);
  v8 = *(v60 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v58 - v12;
  v14 = type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary();
  v15 = *(*(v14 - 1) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v58 - v20;
  MEMORY[0x28223BE20](v19);
  v24 = &v58 - v22;
  v25 = *(a1 + 16);
  if (v25 == 1)
  {
    v26 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    sub_222C09250(a1 + v26, &v58 - v22, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
    v27 = a1;
    v28 = sub_222C092F8(v24, v59 & 1);
    v29 = sub_222C9367C();
    (*(*(v29 - 8) + 16))(v13, v24, v29);
    sub_222B5551C(&v24[v14[5]], &v13[v7[5]]);
    v30 = v24[v14[7]];
    v13[v7[6]] = v24[v14[6]];
    v13[v7[7]] = v30;
    v31 = type metadata accessor for EntityPromptClassification();
    (*(*(v31 - 8) + 56))(v6, 1, 1, v31);
    v32 = sub_222BC8C30(v13, v6);
    sub_222B4FCD4(v6, &qword_27D025028, &unk_222C96EC0);
    sub_222C0A084(v13, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    v61 = MEMORY[0x277D84F90];
    sub_222C09250(v27 + v26, v21, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
    v33 = [objc_allocWithZone(MEMORY[0x277D59CC8]) init];
    if (v33)
    {
      v34 = v33;
      v35 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v36 = sub_222C9361C();
      v37 = [v35 initWithNSUUID_];

      [v34 setSuggestionId_];
      [v34 setContactSuggestionOutcome_];
      [v34 setContactSuggestionRedundancyState_];
      v38 = sub_222C0A084(v21, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
      MEMORY[0x223DC94A0](v38);
      if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v57 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_222C9475C();
      }

      sub_222C947AC();
      v39 = v61;
    }

    else
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v52 = sub_222C9431C();
      __swift_project_value_buffer(v52, qword_280FE2340);
      v53 = sub_222C942FC();
      v54 = sub_222C94A4C();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_222B39000, v53, v54, "Failed to create SELF template for PLUSSchemaPLUSContactSuggestionOutcomeReported", v55, 2u);
        MEMORY[0x223DCA8C0](v55, -1, -1);
      }

      sub_222C0A084(v21, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
      v39 = MEMORY[0x277D84F90];
    }

    sub_222C0A084(v24, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
  }

  else
  {
    v59 = v23;
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v40 = sub_222C9431C();
    __swift_project_value_buffer(v40, qword_280FE2340);
    v41 = sub_222C942FC();
    v42 = sub_222C94A3C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v61 = v44;
      *v43 = 136315138;
      if (qword_280FDC770 != -1)
      {
        swift_once();
      }

      *(v43 + 4) = sub_222B437C0(qword_280FDC778, unk_280FDC780, &v61);
      _os_log_impl(&dword_222B39000, v41, v42, "%s Either found zero suggestions, or multiple suggestions included in the model output but no detected prompt. Marking all suggestions as unknown outcomes.", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      MEMORY[0x223DCA8C0](v44, -1, -1);
      MEMORY[0x223DCA8C0](v43, -1, -1);
    }

    v45 = MEMORY[0x277D84F90];
    if (v25)
    {
      v61 = MEMORY[0x277D84F90];
      sub_222B4C9EC(0, v25, 0);
      v45 = v61;
      v46 = a1 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
      v47 = *(v59 + 72);
      do
      {
        sub_222C09250(v46, v18, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
        v48 = sub_222C9367C();
        (*(*(v48 - 8) + 16))(v11, v18, v48);
        sub_222B5551C(&v18[v14[5]], &v11[v7[5]]);
        v49 = v18[v14[7]];
        v11[v7[6]] = v18[v14[6]];
        v11[v7[7]] = v49;
        sub_222C0A084(v18, type metadata accessor for ResolvedPlusContactSuggestionRuntimeSummary);
        v61 = v45;
        v51 = *(v45 + 16);
        v50 = *(v45 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_222B4C9EC(v50 > 1, v51 + 1, 1);
          v45 = v61;
        }

        *(v45 + 16) = v51 + 1;
        sub_222C0A01C(v11, v45 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v51, type metadata accessor for PlusContactSuggestionRuntimeSummary);
        v46 += v47;
        --v25;
      }

      while (v25);
    }

    v39 = sub_222BC94A8(v45, 8);
  }

  return v39;
}

uint64_t sub_222C0A01C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C0A084(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_222C0A10C()
{
  sub_222C9367C();
  if (v0 <= 0x3F)
  {
    sub_222B56160();
    if (v1 <= 0x3F)
    {
      sub_222C0A1B8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_222C0A1B8()
{
  if (!qword_27D026D90)
  {
    v0 = sub_222C94B5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D026D90);
    }
  }
}

uint64_t sub_222C0A220@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026D98, &unk_222CA0850);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v75 - v6;
  v8 = sub_222C93A8C();
  v91 = *(v8 - 8);
  v9 = *(v91 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026A40, &qword_222C9F098);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v75 - v14;
  v16 = sub_222C9397C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v103 = &v75 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v75 - v24;
  v26 = sub_222C9382C();
  if (!v26)
  {
    result = sub_222C9385C();
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v60 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    if (v61)
    {
      v69 = result;
    }

    else
    {
      v69 = 0;
    }

    if (v61 <= 1)
    {
      v70 = 1;
    }

    else
    {
      v70 = v61;
    }

    goto LABEL_60;
  }

  v107 = v26;
  if (v26 >> 62)
  {
    result = sub_222C94C6C();
  }

  else
  {
    result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v87 = v11;
  v90 = a1;
  if (!result)
  {

    v60 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v102 = 0;
    v31 = MEMORY[0x277D84F90];
LABEL_52:
    if (sub_222C9384C())
    {
      sub_222C93A6C();
      v71 = v91;
      if ((*(v91 + 48))(v7, 1, v8) != 1)
      {
        v73 = v87;
        (*(v71 + 32))(v87, v7, v8);
        v67 = sub_222C93A7C();
        v68 = v74;

        (*(v71 + 8))(v73, v8);
        if (*(v31 + 2))
        {
          goto LABEL_56;
        }

        goto LABEL_58;
      }

      sub_222B4FCD4(v7, &qword_27D026D98, &unk_222CA0850);
    }

    v67 = 0;
    v68 = 0;
    if (*(v31 + 2))
    {
LABEL_56:
      v109 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F20, &unk_222C96CD0);
      sub_222B72340();
      v69 = sub_222C9445C();
      v70 = v72;

LABEL_59:
      v62 = v93;
      v66 = v94;
      v63 = v95;
      v64 = v96;
      v65 = v102;
LABEL_60:
      *a2 = v69;
      a2[1] = v70;
      a2[2] = v62;
      a2[3] = v63;
      a2[4] = v64;
      a2[5] = v65;
      a2[6] = v60;
      a2[7] = v66;
      a2[8] = v67;
      a2[9] = v68;
      return result;
    }

LABEL_58:

    v69 = 0;
    v70 = 0;
    goto LABEL_59;
  }

  if (result >= 1)
  {
    v83 = v21;
    v84 = v7;
    v85 = v8;
    v86 = a2;
    v89 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v102 = 0;
    v29 = 0;
    v30 = v107;
    v108 = v107 & 0xC000000000000001;
    v105 = (v17 + 48);
    v99 = (v17 + 32);
    v100 = (v17 + 16);
    v98 = (v17 + 88);
    v97 = *MEMORY[0x277D5EDC0];
    v92 = *MEMORY[0x277D5ED90];
    v88 = *MEMORY[0x277D5ED98];
    v101 = (v17 + 8);
    v31 = MEMORY[0x277D84F90];
    v106 = (v17 + 56);
    *&v27 = 136315138;
    v81 = v27;
    v104 = v25;
    while (1)
    {
      v32 = result;
      if (v108)
      {
        MEMORY[0x223DC9B30](v29, v30);
      }

      else
      {
        v33 = *(v30 + 8 * v29 + 32);
      }

      sub_222C936DC();
      if (!v109)
      {
        break;
      }

      v34 = sub_222C9383C();

      if (!v34)
      {
        break;
      }

      sub_222C9395C();

      if ((*v105)(v15, 1, v16) == 1)
      {
        goto LABEL_20;
      }

      (*v99)(v25, v15, v16);
      v35 = *v100;
      v36 = v103;
      (*v100)(v103, v25, v16);
      v37 = (*v98)(v36, v16);
      if (v37 == v97)
      {

        sub_222C936DC();
        if (!v109)
        {
          (*v101)(v25, v16);

          v96 = 0;
          v102 = 0;
          goto LABEL_9;
        }

        v96 = sub_222C9385C();
        v102 = v38;

        goto LABEL_34;
      }

      if (v37 == v92)
      {

        sub_222C936DC();
        if (!v109)
        {
          (*v101)(v25, v16);

          v93 = 0;
          v95 = 0;
          goto LABEL_9;
        }

        v93 = sub_222C9385C();
        v95 = v45;
LABEL_33:

LABEL_34:

        (*v101)(v25, v16);
        goto LABEL_9;
      }

      if (v37 == v88)
      {

        sub_222C936DC();
        if (!v109)
        {
          (*v101)(v25, v16);

          v89 = 0;
          v94 = 0;
          goto LABEL_9;
        }

        v89 = sub_222C9385C();
        v94 = v46;
        goto LABEL_33;
      }

      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v47 = sub_222C9431C();
      __swift_project_value_buffer(v47, qword_280FE2340);
      v48 = v83;
      v35(v83, v25, v16);
      v49 = sub_222C942FC();
      v80 = sub_222C94A3C();
      v50 = os_log_type_enabled(v49, v80);
      v51 = v101;
      v82 = v101 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v50)
      {
        v52 = swift_slowAlloc();
        v79 = v52;
        v78 = swift_slowAlloc();
        v109 = v78;
        *v52 = v81;
        v76 = sub_222C9396C();
        v54 = v53;
        v77 = v49;
        v55 = *v101;
        (*v101)(v48, v16);
        v56 = sub_222B437C0(v76, v54, &v109);

        v57 = v79;
        *(v79 + 1) = v56;
        v58 = v77;
        _os_log_impl(&dword_222B39000, v77, v80, "Unknown type detected in MediaItem USO: %s", v57, 0xCu);
        v59 = v78;
        __swift_destroy_boxed_opaque_existential_0Tm(v78);
        MEMORY[0x223DCA8C0](v59, -1, -1);
        MEMORY[0x223DCA8C0](v79, -1, -1);
      }

      else
      {

        v55 = *v51;
        (*v51)(v48, v16);
      }

      v55(v25, v16);
      v55(v103, v16);
LABEL_8:
      v30 = v107;
LABEL_9:
      ++v29;
      result = v32;
      if (v32 == v29)
      {

        a2 = v86;
        v8 = v85;
        v7 = v84;
        v60 = v89;
        goto LABEL_52;
      }
    }

    (*v106)(v15, 1, 1, v16);
LABEL_20:
    sub_222B4FCD4(v15, &qword_27D026A40, &qword_222C9F098);
    sub_222C936DC();
    if (v109 && (v39 = sub_222C9385C(), v41 = v40, , v41))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_222B49E84(0, *(v31 + 2) + 1, 1, v31);
      }

      v43 = *(v31 + 2);
      v42 = *(v31 + 3);
      if (v43 >= v42 >> 1)
      {
        v31 = sub_222B49E84((v42 > 1), v43 + 1, 1, v31);
      }

      *(v31 + 2) = v43 + 1;
      v44 = &v31[16 * v43];
      *(v44 + 4) = v39;
      *(v44 + 5) = v41;
      v25 = v104;
    }

    else
    {
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.findEvent(eventId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v38 = a4;
  v44 = type metadata accessor for FeaturisedTurn(0);
  v7 = *(v44 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v44);
  v39 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v43 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v42 = &v37 - v14;
  v37 = v7;
  v40 = (v7 + 48);
  v41 = (v7 + 56);
  v46 = a3;

  v45 = 0;
  while (1)
  {
    v25 = v45;
    v26 = *(v46 + 16);
    if (v45 == v26)
    {
      v27 = 1;
      v29 = v43;
      v28 = v44;
      v30 = v42;
      goto LABEL_15;
    }

    v29 = v43;
    v28 = v44;
    v30 = v42;
    if (v45 >= v26)
    {
      break;
    }

    sub_222B78534(v46 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v45, v42);
    v27 = 0;
    ++v25;
LABEL_15:
    (*v41)(v30, v27, 1, v28);
    sub_222B5EC84(v30, v29);
    if ((*v40)(v29, 1, v28) == 1)
    {

      v36 = v38;
      v38[4] = 0;
      *v36 = 0u;
      v36[1] = 0u;
      return result;
    }

    v45 = v25;
    v31 = v29;
    v32 = v39;
    sub_222B7E350(v31, v39);
    v33 = *(v32 + *(v28 + 28));

    sub_222B73DD0(v32);

    v34 = v33;
    if (v33)
    {
      v16 = (v33 + 64);
      v17 = -1;
      while (1)
      {
        ++v17;
        v18 = *(v34 + 16);
        if (v17 == v18)
        {
          break;
        }

        if (v17 >= v18)
        {
          __break(1u);
          goto LABEL_22;
        }

        v20 = *(v16 - 4);
        v19 = *(v16 - 3);
        v21 = *(v16 - 2);
        v22 = *(v16 - 1);
        v23 = *v16;
        if (v20 == a1 && v19 == a2)
        {
          v20 = a1;
LABEL_19:

          v35 = v38;
          *v38 = v20;
          v35[1] = v19;
          v35[2] = v21;
          v35[3] = v22;
          v35[4] = v23;
          return result;
        }

        v16 += 5;
        result = sub_222C951FC();
        if (result)
        {
          goto LABEL_19;
        }
      }
    }
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_222C0AFD4()
{
  v0 = sub_222C9377C();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v4 = sub_222C9431C();
    __swift_project_value_buffer(v4, qword_280FE2340);

    v5 = sub_222C942FC();
    v6 = sub_222C94A3C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v44 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_222B437C0(v2, v3, &v44);
      _os_log_impl(&dword_222B39000, v5, v6, "Regular name was: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x223DCA8C0](v8, -1, -1);
      MEMORY[0x223DCA8C0](v7, -1, -1);
    }
  }

  else if (sub_222C9375C())
  {
    v10 = [objc_allocWithZone(MEMORY[0x277CBDA58]) init];
    sub_222C938CC();
    if (v11)
    {
      v12 = sub_222C9448C();
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_222C9448C();
    [v10 setValue:v12 forKeyPath:v13];
    swift_unknownObjectRelease();

    sub_222C9389C();
    if (v14)
    {
      v15 = sub_222C9448C();
    }

    else
    {
      v15 = 0;
    }

    v16 = sub_222C9448C();
    [v10 setValue:v15 forKeyPath:v16];
    swift_unknownObjectRelease();

    sub_222C938BC();
    if (v17)
    {
      v18 = sub_222C9448C();
    }

    else
    {
      v18 = 0;
    }

    v19 = sub_222C9448C();
    [v10 setValue:v18 forKeyPath:v19];
    swift_unknownObjectRelease();

    sub_222C938AC();
    if (v20)
    {
      v21 = sub_222C9448C();
    }

    else
    {
      v21 = 0;
    }

    v22 = sub_222C9448C();
    [v10 setValue:v21 forKeyPath:v22];
    swift_unknownObjectRelease();

    sub_222C938DC();
    if (v23)
    {
      v24 = sub_222C9448C();
    }

    else
    {
      v24 = 0;
    }

    v25 = sub_222C9448C();
    [v10 setValue:v24 forKeyPath:v25];
    swift_unknownObjectRelease();

    sub_222C9388C();
    if (v26)
    {
      v27 = sub_222C9448C();
    }

    else
    {
      v27 = 0;
    }

    v28 = sub_222C9448C();
    [v10 setValue:v27 forKeyPath:v28];
    swift_unknownObjectRelease();

    v29 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
    v30 = [v29 stringFromContact_];
    if (v30)
    {
      v31 = v30;
      v2 = sub_222C9449C();
      v33 = v32;
    }

    else
    {
      v2 = 0;
      v33 = 0;
    }

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v34 = sub_222C9431C();
    __swift_project_value_buffer(v34, qword_280FE2340);

    v35 = sub_222C942FC();
    v36 = sub_222C94A3C();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = v38;
      *v37 = 136315138;
      if (v33)
      {
        v40 = v2;
      }

      else
      {
        v40 = 7104878;
      }

      v43 = v29;
      v44 = v38;
      if (v33)
      {
        v41 = v33;
      }

      else
      {
        v41 = 0xE300000000000000;
      }

      v42 = sub_222B437C0(v40, v41, &v44);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_222B39000, v35, v36, "Formatted name for USO was: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x223DCA8C0](v39, -1, -1);
      MEMORY[0x223DCA8C0](v37, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    return 0;
  }

  return v2;
}

uint64_t sub_222C0B5A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for FeaturisedTurn(0) + 28));
}

uint64_t MediaSuggestionStoreCandidateAdapter.__allocating_init(store:requiredTags:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 64) = sub_222B63AF8(MEMORY[0x277D84F90]);
  sub_222B405A0(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t MediaSuggestionStoreCandidateAdapter.init(store:requiredTags:)(__int128 *a1, uint64_t a2)
{
  *(v2 + 64) = sub_222B63AF8(MEMORY[0x277D84F90]);
  sub_222B405A0(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t sub_222C0B69C(uint64_t a1)
{
  v3 = type metadata accessor for PlusMediaSuggestion();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  swift_beginAccess();
  v31 = v1;
  v11 = v1[8];
  if (*(v11 + 16))
  {

    v12 = sub_222B8CC2C(a1);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);

      return v14;
    }
  }

  v15 = v31[5];
  v16 = v31[6];
  __swift_project_boxed_opaque_existential_1(v31 + 2, v15);
  v17 = *(v16 + 48);
  v30 = a1;
  result = v17(a1, v15, v16);
  v19 = result;
  v34 = *(result + 16);
  if (!v34)
  {
    v14 = MEMORY[0x277D84F90];
    v21 = v31;
LABEL_17:

    swift_beginAccess();
    v27 = v30;

    v28 = v21[8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v21[8];
    v21[8] = 0x8000000000000000;
    sub_222BAA6B0(v14, v27, isUniquelyReferenced_nonNull_native);

    v21[8] = v35;
    swift_endAccess();
    return v14;
  }

  v20 = 0;
  v14 = MEMORY[0x277D84F90];
  v21 = v31;
  v32 = v8;
  v33 = v3;
  while (v20 < *(v19 + 16))
  {
    v22 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v23 = *(v4 + 72);
    sub_222B79B14(v19 + v22 + v23 * v20, v10);
    if (sub_222BB26C4(*&v10[*(v3 + 44)], v21[7]))
    {
      sub_222B7D960(v10, v8);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v36 = v14;
      if ((v24 & 1) == 0)
      {
        sub_222B4C630(0, *(v14 + 16) + 1, 1);
        v21 = v31;
        v14 = v36;
      }

      v26 = *(v14 + 16);
      v25 = *(v14 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_222B4C630(v25 > 1, v26 + 1, 1);
        v21 = v31;
        v14 = v36;
      }

      *(v14 + 16) = v26 + 1;
      v8 = v32;
      result = sub_222B7D960(v32, v14 + v22 + v26 * v23);
      v3 = v33;
    }

    else
    {
      result = sub_222B7D9D0(v10);
    }

    if (v34 == ++v20)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222C0B9B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  v5 = *(v2 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 64);
  *(v2 + 64) = 0x8000000000000000;
  sub_222BAA6B0(a2, a1, isUniquelyReferenced_nonNull_native);

  *(v2 + 64) = v8;
  return swift_endAccess();
}

uint64_t sub_222C0BA50()
{
  v1 = v0;
  v2 = type metadata accessor for PlusMediaSuggestion();
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = v0[8];
  v7 = *(v6 + 64);
  v27 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v7;
  v26 = (v8 + 63) >> 6;

  v12 = 0;
  v28 = result;
LABEL_5:
  while (v10)
  {
LABEL_10:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = *(*(result + 56) + ((v12 << 9) | (8 * v14)));
    v16 = *(v15 + 16);
    if (v16)
    {
      v29 = v15 + ((*(v30 + 80) + 32) & ~*(v30 + 80));

      v17 = 0;
      while (v17 < *(v15 + 16))
      {
        sub_222B79B14(v29 + *(v30 + 72) * v17, v5);
        v19 = v1[5];
        v18 = v1[6];
        __swift_project_boxed_opaque_existential_1(v1 + 2, v19);
        if (((*(v18 + 24))(v5, v19, v18) & 1) == 0)
        {
          v20 = v1[5];
          v21 = v1[6];
          __swift_project_boxed_opaque_existential_1(v1 + 2, v20);
          if (((*(v21 + 8))(v5, v20, v21) & 1) == 0)
          {
            if (qword_280FDFE78 != -1)
            {
              swift_once();
            }

            v22 = sub_222C9431C();
            __swift_project_value_buffer(v22, qword_280FE2340);
            v23 = sub_222C942FC();
            v24 = sub_222C94A4C();
            if (os_log_type_enabled(v23, v24))
            {
              v25 = swift_slowAlloc();
              *v25 = 0;
              _os_log_impl(&dword_222B39000, v23, v24, "Failed to write updated candiates to the suggestion store", v25, 2u);
              MEMORY[0x223DCA8C0](v25, -1, -1);
            }
          }
        }

        ++v17;
        result = sub_222B7D9D0(v5);
        if (v16 == v17)
        {

          result = v28;
          goto LABEL_5;
        }
      }

      __break(1u);
      goto LABEL_23;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v26)
    {
    }

    v10 = *(v27 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t *MediaSuggestionStoreCandidateAdapter.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return v0;
}

uint64_t MediaSuggestionStoreCandidateAdapter.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t sub_222C0BDF4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *v2;
  swift_beginAccess();

  v6 = *(v5 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v5 + 64);
  *(v5 + 64) = 0x8000000000000000;
  sub_222BAA6B0(a2, v4, isUniquelyReferenced_nonNull_native);

  *(v5 + 64) = v9;
  return swift_endAccess();
}

unint64_t sub_222C0BE98()
{
  result = qword_27D025AC8;
  if (!qword_27D025AC8)
  {
    type metadata accessor for PlusMediaSuggestion();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025AC8);
  }

  return result;
}

uint64_t sub_222C0BFAC(unint64_t a1)
{
  v151 = *MEMORY[0x277D85DE8];
  v140 = type metadata accessor for PlusMediaSuggestion();
  v127 = *(v140 - 8);
  v2 = *(v127 + 64);
  v3 = MEMORY[0x28223BE20](v140);
  v121 = v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v131 = v116 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v118 = v116 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v116 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v116 - v12;
  if (qword_280FDFE78 != -1)
  {
    goto LABEL_110;
  }

  while (1)
  {
    v14 = sub_222C9431C();
    v15 = __swift_project_value_buffer(v14, qword_280FE2340);

    v116[1] = v15;
    v16 = sub_222C942FC();
    v17 = sub_222C94A3C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = *(a1 + 16);

      _os_log_impl(&dword_222B39000, v16, v17, "Reviewing %ld candidates for nomination.", v18, 0xCu);
      MEMORY[0x223DCA8C0](v18, -1, -1);
    }

    else
    {
    }

    v19 = *(v123 + 24);
    v20 = *(a1 + 16);
    v21 = MEMORY[0x277D84F90];
    v135 = a1;
    v138 = v19;
    v124 = v20;
    if (v20)
    {
      v146 = MEMORY[0x277D84F90];
      v22 = v20;
      sub_222B4C7C0(0, v20, 0);
      v21 = v146;
      v23 = a1 + ((*(v127 + 80) + 32) & ~*(v127 + 80));
      v24 = *(v127 + 72);
      for (i = v22 - 1; ; --i)
      {
        sub_222C12DD0(v23, v13, type metadata accessor for PlusMediaSuggestion);
        v26 = &v13[*(v140 + 24)];
        v27 = *(v26 + 2);
        v143 = *(v26 + 1);
        v144 = v27;
        v145 = *(v26 + 24);
        v142 = *v26;
        sub_222B554C0(&v142, &v149);
        sub_222C12E38(v13, type metadata accessor for PlusMediaSuggestion);
        v146 = v21;
        v29 = *(v21 + 16);
        v28 = *(v21 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_222B4C7C0((v28 > 1), v29 + 1, 1);
          v21 = v146;
        }

        *(v21 + 16) = v29 + 1;
        v30 = v21 + 56 * v29;
        v31 = v142;
        v32 = v143;
        v33 = v144;
        *(v30 + 80) = v145;
        *(v30 + 48) = v32;
        *(v30 + 64) = v33;
        *(v30 + 32) = v31;
        if (!i)
        {
          break;
        }

        v23 += v24;
      }

      a1 = v135;
      v19 = v138;
    }

    v34 = sub_222B71CA4(v21);

    v35 = *(v19 + 16);
    v126 = v11;
    v137 = v35;
    if (v35)
    {
      break;
    }

    v129 = 0;
LABEL_34:
    if (!v124)
    {
      v119 = MEMORY[0x277D84F90];
      goto LABEL_90;
    }

    v69 = 0;
    v70 = (*(v127 + 80) + 32) & ~*(v127 + 80);
    v125 = *(v127 + 72);
    v117 = v70;
    v120 = a1 + v70;
    v137 = v34 + 56;
    v119 = MEMORY[0x277D84F90];
    do
    {
      v130 = v69;
      sub_222C12DD0(v120 + v125 * v69, v11, type metadata accessor for PlusMediaSuggestion);
      if (!*(v34 + 16))
      {
        goto LABEL_80;
      }

      v71 = v11 + *(v140 + 24);
      v73 = *v71;
      v72 = *(v71 + 8);
      v13 = *(v71 + 16);
      v136 = *(v71 + 24);
      v74 = *(v71 + 40);
      v138 = *(v71 + 32);
      v75 = *(v71 + 48);
      v76 = *(v34 + 40);
      sub_222C952FC();
      *(&v139 + 1) = v73;
      *&v139 = v72;
      sub_222C9452C();
      v77 = sub_222C9534C();
      v78 = -1 << *(v34 + 32);
      v79 = v77 & ~v78;
      if (((*(v137 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79) & 1) == 0)
      {
LABEL_80:
        v11 = v126;
        sub_222C12E38(v126, type metadata accessor for PlusMediaSuggestion);
        goto LABEL_81;
      }

      v80 = ~v78;
      v81 = 0x6C7070612E6D6F63;
      if (v75)
      {
        v81 = 0x656E696665646E75;
      }

      v128 = v81;
      v82 = 0xEF636973754D2E65;
      if (v75)
      {
        v82 = 0xE900000000000064;
      }

      v122 = v82;
      v135 = v13;
      v132 = v80;
      v134 = v75;
      while (1)
      {
        v83 = *(v34 + 48) + 56 * v79;
        v84 = *(v83 + 48);
        v85 = *(v83 + 32);
        v86 = *v83;
        v143 = *(v83 + 16);
        v144 = v85;
        v142 = v86;
        v145 = v84;
        if (__PAIR128__(v86, *(&v86 + 1)) != v139 && (sub_222C951FC() & 1) == 0)
        {
          goto LABEL_46;
        }

        v87 = *(&v143 + 1);
        a1 = v143;
        v88 = v144;
        if (*(&v143 + 1) != 1)
        {
          v89 = v136;
          if (v136 == 1)
          {
            sub_222B554C0(&v142, &v149);
            sub_222B4FDCC(a1, v87);
            sub_222B4FDCC(v13, 1);
            sub_222B4FDCC(a1, v87);

LABEL_44:
            sub_222B4FE78(a1, v87);
            sub_222B4FE78(v13, v89);
LABEL_45:
            sub_222B55A80(&v142);
            v13 = v135;
            goto LABEL_46;
          }

          if (*(&v143 + 1))
          {
            if (v136 && (v143 == __PAIR128__(v136, v13) || (sub_222C951FC() & 1) != 0))
            {
              goto LABEL_57;
            }

LABEL_63:
            v91 = 0;
          }

          else
          {
            if (v136)
            {
              goto LABEL_63;
            }

LABEL_57:
            v91 = (*(&v88 + 1) | v74) == 0;
            if (*(&v88 + 1) && v74)
            {
              if (v88 == __PAIR128__(v74, v138))
              {
                v91 = 1;
              }

              else
              {
                v91 = sub_222C951FC();
              }
            }
          }

          v133 = v91;
          sub_222B554C0(&v142, &v149);
          sub_222B4FDCC(a1, v87);
          v13 = v74;
          v92 = v135;
          v93 = v136;
          sub_222B4FDCC(v135, v136);
          sub_222B4FDCC(a1, v87);
          sub_222B4FE78(v92, v93);

          sub_222B4FE78(a1, v87);
          v90 = v134;
          v80 = v132;
          if ((v133 & 1) == 0)
          {
            goto LABEL_45;
          }

          goto LABEL_65;
        }

        v89 = v136;
        if (v136 != 1)
        {
          sub_222B554C0(&v142, &v149);
          sub_222B4FDCC(a1, 1);
          sub_222B4FDCC(v13, v89);
          goto LABEL_44;
        }

        sub_222B554C0(&v142, &v149);
        sub_222B4FDCC(a1, 1);
        sub_222B4FDCC(v13, 1);
        sub_222B4FE78(a1, 1);
        v90 = v134;
LABEL_65:
        if (v145 == 2)
        {
          sub_222B55A80(&v142);
          v13 = v135;
          if (v90 == 2)
          {
            goto LABEL_84;
          }

          goto LABEL_46;
        }

        if (v90 == 2)
        {
          goto LABEL_45;
        }

        v94 = (v145 & 1) != 0 ? 0x656E696665646E75 : 0x6C7070612E6D6F63;
        v95 = (v145 & 1) != 0 ? 0xE900000000000064 : 0xEF636973754D2E65;
        if (v94 == v128 && v95 == v122)
        {
          break;
        }

        v96 = sub_222C951FC();

        sub_222B55A80(&v142);
        v13 = v135;
        v80 = v132;
        if (v96)
        {
          goto LABEL_84;
        }

LABEL_46:
        v79 = (v79 + 1) & v80;
        if (((*(v137 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79) & 1) == 0)
        {
          goto LABEL_80;
        }
      }

      sub_222B55A80(&v142);
LABEL_84:
      v11 = v126;
      sub_222C12F00(v126, v118, type metadata accessor for PlusMediaSuggestion);
      v97 = v119;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v146 = v97;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_222B4C630(0, *(v97 + 16) + 1, 1);
        v97 = v146;
      }

      v100 = *(v97 + 16);
      v99 = *(v97 + 24);
      if (v100 >= v99 >> 1)
      {
        sub_222B4C630(v99 > 1, v100 + 1, 1);
        v97 = v146;
      }

      *(v97 + 16) = v100 + 1;
      v119 = v97;
      sub_222C12F00(v118, v97 + v117 + v100 * v125, type metadata accessor for PlusMediaSuggestion);
LABEL_81:
      v69 = v130 + 1;
    }

    while (v130 + 1 != v124);
LABEL_90:

    v11 = v119;
    v101 = *(v119 + 16);
    if (!v101)
    {
      v103 = MEMORY[0x277D84F90];
LABEL_103:

      v110 = sub_222C942FC();
      v111 = sub_222C94A3C();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        *v112 = 134217984;
        *(v112 + 4) = *(v103 + 16);

        _os_log_impl(&dword_222B39000, v110, v111, "%ld candidates marked as nominated", v112, 0xCu);
        MEMORY[0x223DCA8C0](v112, -1, -1);
      }

      else
      {
      }

      v113 = *MEMORY[0x277D85DE8];
      return v103;
    }

    v102 = 0;
    v103 = MEMORY[0x277D84F90];
    v104 = v129;
    while (v102 < *(v11 + 16))
    {
      v59 = ((*(v127 + 80) + 32) & ~*(v127 + 80));
      v105 = *(v127 + 72);
      v106 = v131;
      sub_222C12DD0(v59 + v11 + v105 * v102, v131, type metadata accessor for PlusMediaSuggestion);
      v107 = sub_222C0DD40(v106, v123);
      if (v104)
      {

        sub_222C12E38(v131, type metadata accessor for PlusMediaSuggestion);

        __break(1u);
        goto LABEL_112;
      }

      if (v107)
      {
        sub_222C12F00(v131, v121, type metadata accessor for PlusMediaSuggestion);
        v108 = swift_isUniquelyReferenced_nonNull_native();
        *&v142 = v103;
        if ((v108 & 1) == 0)
        {
          sub_222B4C630(0, *(v103 + 16) + 1, 1);
          v103 = v142;
        }

        a1 = *(v103 + 16);
        v109 = *(v103 + 24);
        v13 = (a1 + 1);
        if (a1 >= v109 >> 1)
        {
          sub_222B4C630(v109 > 1, a1 + 1, 1);
          v103 = v142;
        }

        *(v103 + 16) = v13;
        sub_222C12F00(v121, v59 + v103 + a1 * v105, type metadata accessor for PlusMediaSuggestion);
      }

      else
      {
        sub_222C12E38(v131, type metadata accessor for PlusMediaSuggestion);
      }

      if (v101 == ++v102)
      {
        goto LABEL_103;
      }
    }

LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    swift_once();
  }

  v36 = 0;
  v129 = 0;
  v136 = v19 + 32;
  while (1)
  {
    if (v36 >= *(v19 + 16))
    {
      goto LABEL_109;
    }

    *(&v139 + 1) = v36;
    sub_222B43E3C(v136 + 40 * v36, &v146);
    v37 = v147;
    v38 = v148;
    __swift_project_boxed_opaque_existential_1(&v146, v147);
    v39 = (*(v38 + 24))(a1, v37, v38);
    v40 = *(v39 + 16);
    if (v40)
    {
      *&v139 = v34;
      v141 = MEMORY[0x277D84F90];
      sub_222B4C7C0(0, v40, 0);
      if (!*(v39 + 16))
      {
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v41 = 0;
      v42 = v141;
      v43 = v39 + ((*(v127 + 80) + 32) & ~*(v127 + 80));
      v11 = *(v127 + 72);
      a1 = v40 - 1;
      while (1)
      {
        sub_222C12DD0(v43, v13, type metadata accessor for PlusMediaSuggestion);
        v44 = &v13[*(v140 + 24)];
        v45 = *(v44 + 2);
        v143 = *(v44 + 1);
        v144 = v45;
        v145 = *(v44 + 24);
        v142 = *v44;
        sub_222B554C0(&v142, &v149);
        sub_222C12E38(v13, type metadata accessor for PlusMediaSuggestion);
        v141 = v42;
        v47 = *(v42 + 16);
        v46 = *(v42 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_222B4C7C0((v46 > 1), v47 + 1, 1);
          v42 = v141;
        }

        *(v42 + 16) = v47 + 1;
        v48 = v42 + 56 * v47;
        v49 = v142;
        v50 = v143;
        v51 = v144;
        *(v48 + 80) = v145;
        *(v48 + 48) = v50;
        *(v48 + 64) = v51;
        *(v48 + 32) = v49;
        if (a1 == v41)
        {
          break;
        }

        ++v41;
        v43 += v11;
        if (v41 >= *(v39 + 16))
        {
          goto LABEL_107;
        }
      }

      v11 = v126;
      v34 = v139;
      a1 = v135;
    }

    else
    {

      v42 = MEMORY[0x277D84F90];
    }

    v149 = v42;
    v53 = *(v34 + 32);
    isStackAllocationSafe = MEMORY[0x28223BE20](v52);
    v116[-2] = &v149;
    v116[-1] = v34;
    v56 = v55 + 63;
    v57 = v56 >> 6;
    if (v58 <= 0xD)
    {
      break;
    }

    v66 = 8 * (v56 >> 6);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      break;
    }

    v59 = swift_slowAlloc();
    bzero(v59, v66);
    v67 = v129;
    sub_222C12E98(v59, v57, &v142);
    v68 = &v150;
    v129 = v67;
    if (v67)
    {
      goto LABEL_113;
    }

    v65 = v142;

    MEMORY[0x223DCA8C0](v59, -1, -1);

LABEL_28:
    v34 = v65;
    v19 = v138;
    v36 = *(&v139 + 1) + 1;
    __swift_destroy_boxed_opaque_existential_0Tm(&v146);
    if (v36 == v137)
    {
      goto LABEL_34;
    }
  }

  v59 = v116;
  MEMORY[0x28223BE20](isStackAllocationSafe);
  v61 = v116 - ((v60 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v61, v60);
  v62 = v129;
  v63 = sub_222C0F9C8(v61, v57, v42, v34);
  v64 = &v150;
  v129 = v62;
  if (!v62)
  {
    v65 = v63;

    goto LABEL_28;
  }

LABEL_112:
  v115 = *(v64 - 32);
  swift_willThrow();

  __break(1u);
LABEL_113:

  result = MEMORY[0x223DCA8C0](v59, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_222C0D10C(int64_t a1)
{
  v130 = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for PlusContactSuggestion();
  v123 = *(v2 - 8);
  v124 = v2;
  v3 = *(v123 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v112 = v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v117 = v106 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v107 = v106 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v106 - v11;
  MEMORY[0x28223BE20](v10);
  v122 = v106 - v13;
  if (qword_280FDFE78 != -1)
  {
    goto LABEL_78;
  }

LABEL_2:
  v14 = sub_222C9431C();
  v15 = __swift_project_value_buffer(v14, qword_280FE2340);

  v106[1] = v15;
  v16 = sub_222C942FC();
  v17 = sub_222C94A3C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = *(a1 + 16);

    _os_log_impl(&dword_222B39000, v16, v17, "Reviewing %ld candidates for nomination.", v18, 0xCu);
    MEMORY[0x223DCA8C0](v18, -1, -1);
  }

  else
  {
  }

  v19 = *(v113 + 24);
  v20 = *(a1 + 16);
  v21 = MEMORY[0x277D84F90];
  v115 = v12;
  v111 = a1;
  v110 = v19;
  v114 = v20;
  if (v20)
  {
    v127[0] = MEMORY[0x277D84F90];
    v22 = v20;
    sub_222B4CAD0(0, v20, 0);
    v21 = v127[0];
    v23 = a1 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
    v121 = *(v123 + 72);
    do
    {
      v24 = v122;
      sub_222C12DD0(v23, v122, type metadata accessor for PlusContactSuggestion);
      v25 = (v24 + *(v124 + 24));
      v27 = *v25;
      v26 = v25[1];
      v29 = v25[2];
      v28 = v25[3];

      sub_222C12E38(v24, type metadata accessor for PlusContactSuggestion);
      v127[0] = v21;
      v31 = *(v21 + 16);
      v30 = *(v21 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_222B4CAD0((v30 > 1), v31 + 1, 1);
        v21 = v127[0];
      }

      *(v21 + 16) = v31 + 1;
      v32 = (v21 + 32 * v31);
      v32[4] = v27;
      v32[5] = v26;
      v32[6] = v29;
      v32[7] = v28;
      v23 += v121;
      --v22;
    }

    while (v22);
    v12 = v115;
    v19 = v110;
  }

  v33 = sub_222B72C64(v21);

  v109 = *(v19 + 16);
  if (!v109)
  {
    v119 = 0;
    a1 = v111;
    v34 = v33;
    goto LABEL_31;
  }

  v119 = 0;
  v108 = v19 + 32;
  a1 = v111;
  v34 = v33;
  v35 = 0;
  do
  {
    if (v35 >= *(v19 + 16))
    {
LABEL_77:
      __break(1u);
LABEL_78:
      swift_once();
      goto LABEL_2;
    }

    v118 = v34;
    v116 = v35;
    sub_222B43E3C(v108 + 40 * v35, v127);
    v36 = v128;
    v37 = v129;
    __swift_project_boxed_opaque_existential_1(v127, v128);
    v38 = (*(v37 + 24))(a1, v36, v37);
    a1 = *(v38 + 16);
    if (!a1)
    {

      v41 = MEMORY[0x277D84F90];
      goto LABEL_22;
    }

    v126 = MEMORY[0x277D84F90];
    v39 = v38;
    sub_222B4CAD0(0, a1, 0);
    v40 = v39;
    v12 = 0;
    v41 = v126;
    v120 = v40 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
    v121 = v40;
    do
    {
      if (v12 >= *(v40 + 16))
      {
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v42 = v122;
      sub_222C12DD0(v120 + *(v123 + 72) * v12, v122, type metadata accessor for PlusContactSuggestion);
      v43 = (v42 + *(v124 + 24));
      v44 = *v43;
      v45 = v43[1];
      v46 = v43[2];
      v47 = v43[3];

      sub_222C12E38(v42, type metadata accessor for PlusContactSuggestion);
      v126 = v41;
      v49 = *(v41 + 16);
      v48 = *(v41 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_222B4CAD0((v48 > 1), v49 + 1, 1);
        v41 = v126;
      }

      ++v12;
      *(v41 + 16) = v49 + 1;
      v50 = (v41 + 32 * v49);
      v50[4] = v44;
      v50[5] = v45;
      v50[6] = v46;
      v50[7] = v47;
      v40 = v121;
    }

    while (a1 != v12);

    v12 = v115;
LABEL_22:
    v125 = v41;
    v52 = v118;
    v53 = *(v118 + 32);
    isStackAllocationSafe = MEMORY[0x28223BE20](v51);
    v106[-2] = &v125;
    v106[-1] = v52;
    v56 = v55 + 63;
    v57 = v56 >> 6;
    if (v58 <= 0xD || (v65 = 8 * (v56 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
    {
      MEMORY[0x28223BE20](isStackAllocationSafe);
      v60 = v106 - ((v59 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v60, v59);
      v61 = v57;
      v62 = v119;
      v63 = sub_222C1020C(v60, v61, v41, v52);
      v119 = v62;
      if (!v62)
      {
        v64 = v63;

        goto LABEL_25;
      }

LABEL_80:
      v105 = v119;
      swift_willThrow();

      __break(1u);
LABEL_81:

      result = MEMORY[0x223DCA8C0](v52, -1, -1);
      __break(1u);
      return result;
    }

    v52 = swift_slowAlloc();
    bzero(v52, v65);
    v66 = v57;
    v67 = v119;
    sub_222C12DA4(v52, v66, &v126);
    v119 = v67;
    if (v67)
    {
      goto LABEL_81;
    }

    v64 = v126;

    MEMORY[0x223DCA8C0](v52, -1, -1);

LABEL_25:
    v34 = v64;
    a1 = v111;
    v35 = v116 + 1;
    __swift_destroy_boxed_opaque_existential_0Tm(v127);
    v19 = v110;
  }

  while (v35 != v109);
LABEL_31:
  if (v114)
  {
    v68 = a1;
    v69 = 0;
    v70 = (*(v123 + 80) + 32) & ~*(v123 + 80);
    v120 = *(v123 + 72);
    v111 = v70;
    v116 = v68 + v70;
    v122 = v34 + 56;
    v71 = MEMORY[0x277D84F90];
    v118 = v34;
    while (1)
    {
      v121 = v71;
      sub_222C12DD0(v116 + v120 * v69, v12, type metadata accessor for PlusContactSuggestion);
      if (!*(v34 + 16))
      {
        goto LABEL_33;
      }

      v72 = (v12 + *(v124 + 24));
      v73 = *v72;
      v74 = v72[1];
      v75 = v72[2];
      v76 = v72[3];
      v77 = *(v34 + 40);
      sub_222C952FC();
      sub_222C9452C();
      v78 = sub_222C9534C();
      v79 = -1 << *(v34 + 32);
      v80 = v78 & ~v79;
      if (((*(v122 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
      {
LABEL_33:
        v12 = v115;
        sub_222C12E38(v115, type metadata accessor for PlusContactSuggestion);
        v71 = v121;
        goto LABEL_34;
      }

      v81 = v34;
      v82 = ~v79;
      v83 = *(v81 + 48);
      while (1)
      {
        v84 = (v83 + 32 * v80);
        v85 = v84[2];
        v86 = v84[3];
        v87 = *v84 == v73 && v84[1] == v74;
        if (!v87 && (sub_222C951FC() & 1) == 0)
        {
          goto LABEL_39;
        }

        if (v86)
        {
          break;
        }

        if (!v76)
        {
          goto LABEL_52;
        }

LABEL_39:
        v80 = (v80 + 1) & v82;
        if (((*(v122 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      if (!v76)
      {
        goto LABEL_39;
      }

      v88 = v85 == v75 && v86 == v76;
      if (!v88 && (sub_222C951FC() & 1) == 0)
      {
        goto LABEL_39;
      }

LABEL_52:
      v12 = v115;
      sub_222C12F00(v115, v107, type metadata accessor for PlusContactSuggestion);
      v71 = v121;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v126 = v71;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_222B4C6E8(0, *(v71 + 16) + 1, 1);
        v71 = v126;
      }

      v91 = *(v71 + 16);
      v90 = *(v71 + 24);
      if (v91 >= v90 >> 1)
      {
        sub_222B4C6E8(v90 > 1, v91 + 1, 1);
        v71 = v126;
      }

      *(v71 + 16) = v91 + 1;
      sub_222C12F00(v107, v71 + v111 + v91 * v120, type metadata accessor for PlusContactSuggestion);
LABEL_34:
      ++v69;
      v34 = v118;
      if (v69 == v114)
      {
        goto LABEL_58;
      }
    }
  }

  v71 = MEMORY[0x277D84F90];
LABEL_58:

  a1 = *(v71 + 16);
  if (a1)
  {
    v52 = 0;
    v92 = MEMORY[0x277D84F90];
    while (v52 < *(v71 + 16))
    {
      v93 = (*(v123 + 80) + 32) & ~*(v123 + 80);
      v12 = *(v123 + 72);
      v94 = v117;
      sub_222C12DD0(v71 + v93 + v12 * v52, v117, type metadata accessor for PlusContactSuggestion);
      v95 = v119;
      v96 = sub_222C0DD40(v94, v113);
      if (v95)
      {

        sub_222C12E38(v117, type metadata accessor for PlusContactSuggestion);

        __break(1u);
        goto LABEL_80;
      }

      v119 = 0;
      if (v96)
      {
        sub_222C12F00(v117, v112, type metadata accessor for PlusContactSuggestion);
        v97 = swift_isUniquelyReferenced_nonNull_native();
        v127[0] = v92;
        if ((v97 & 1) == 0)
        {
          sub_222B4C6E8(0, *(v92 + 16) + 1, 1);
          v92 = v127[0];
        }

        v99 = *(v92 + 16);
        v98 = *(v92 + 24);
        if (v99 >= v98 >> 1)
        {
          sub_222B4C6E8(v98 > 1, v99 + 1, 1);
          v92 = v127[0];
        }

        *(v92 + 16) = v99 + 1;
        sub_222C12F00(v112, v92 + v93 + v99 * v12, type metadata accessor for PlusContactSuggestion);
      }

      else
      {
        sub_222C12E38(v117, type metadata accessor for PlusContactSuggestion);
      }

      if (a1 == ++v52)
      {
        goto LABEL_71;
      }
    }

    goto LABEL_76;
  }

  v92 = MEMORY[0x277D84F90];
LABEL_71:

  v100 = sub_222C942FC();
  v101 = sub_222C94A3C();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    *v102 = 134217984;
    *(v102 + 4) = *(v92 + 16);

    _os_log_impl(&dword_222B39000, v100, v101, "%ld candidates marked as nominated", v102, 0xCu);
    MEMORY[0x223DCA8C0](v102, -1, -1);
  }

  else
  {
  }

  v103 = *MEMORY[0x277D85DE8];
  return v92;
}

uint64_t sub_222C0DD40(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = v3 + 32;
  v5 = -*(v3 + 16);
  v6 = -1;
  while (1)
  {
    v7 = v5 + v6;
    if (v5 + v6 == -1)
    {
      return v7 == -1;
    }

    if (++v6 >= *(v3 + 16))
    {
      break;
    }

    v8 = result + 40;
    sub_222B43E3C(result, v12);
    v9 = v13;
    v10 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v11 = (*(v10 + 24))(a1, v9, v10);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    result = v8;
    if (v11)
    {
      return v7 == -1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222C0DE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_222C0DE80(a1, a2, a3, a4);
  return v8;
}

void *sub_222C0DE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AdaptiveContactSuggestionNominator();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026DA0, &unk_222CA0980);
  v9 = sub_222C944EC();
  MEMORY[0x223DC9330](v9);

  MEMORY[0x223DC9330](93, 0xE100000000000000);
  v4[2] = 91;
  v4[3] = 0xE100000000000000;
  v4[8] = a3;
  v4[9] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4 + 5);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v4[4] = a2;
  return v4;
}

uint64_t AdaptiveContactSuggestionNominator.__allocating_init<A>(candidateProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, a2);
  v10 = sub_222BBA148();
  v11 = swift_allocObject();
  sub_222C0DE80(v9, v10, a2, a3);
  (*(v6 + 8))(a1, a2);
  return v11;
}

void *sub_222C0E090(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  swift_retain_n();
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x223DC9B30](v3, a1);
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_25:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          v2 = sub_222C94C6C();
          goto LABEL_3;
        }

        v5 = *(a1 + 8 * v3 + 32);

        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_25;
        }
      }

      v7 = sub_222C0E2AC(v5);

      v8 = *(v7 + 16);
      v9 = v4[2];
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        goto LABEL_29;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= v4[3] >> 1)
      {
        if (!*(v7 + 16))
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        v4 = sub_222B4ACA4(isUniquelyReferenced_nonNull_native, v12, 1, v4);
        if (!*(v7 + 16))
        {
LABEL_5:

          if (v8)
          {
            goto LABEL_30;
          }

          goto LABEL_6;
        }
      }

      v13 = (v4[3] >> 1) - v4[2];
      v14 = *(type metadata accessor for PlusContactSuggestion() - 8);
      if (v13 < v8)
      {
        goto LABEL_31;
      }

      v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v16 = *(v14 + 72);
      swift_arrayInitWithCopy();

      if (v8)
      {
        v17 = v4[2];
        v18 = __OFADD__(v17, v8);
        v19 = v17 + v8;
        if (v18)
        {
          goto LABEL_32;
        }

        v4[2] = v19;
      }

LABEL_6:
      ++v3;
      if (v6 == v2)
      {
        goto LABEL_27;
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_27:

  return v4;
}

uint64_t sub_222C0E2AC(unint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A88, &unk_222C9A0C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v60 - v7;
  v9 = type metadata accessor for PlusContactSuggestion();
  v70 = *(v9 - 8);
  v10 = *(v70 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v61 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v69 = &v60 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v66 = &v60 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v62 = &v60 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v60 - v19;
  v21 = v1[8];
  v22 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v21);
  v72[0] = a1;
  v23 = (*(v22 + 24))(v72, v21, v22);
  v24 = v1[4];
  v68 = v23;
  v67 = sub_222C0D10C(v23);
  if (qword_280FDFE78 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v25 = sub_222C9431C();
    __swift_project_value_buffer(v25, qword_280FE2340);

    v26 = sub_222C942FC();
    v27 = sub_222C94A3C();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v2;
    v63 = v9;
    v64 = v2;
    if (v28)
    {
      v2 = v27;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v72[0] = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_222B437C0(v29[2], v29[3], v72);
      *(v30 + 12) = 2080;
      v33 = UsoEntity_common_Person.convertUSOPersonToString()();
      countAndFlagsBits = v33.value._countAndFlagsBits;
      if (v33.value._object)
      {
        object = v33.value._object;
      }

      else
      {
        countAndFlagsBits = 0x3E726F7272453CLL;
        object = 0xE700000000000000;
      }

      v35 = sub_222B437C0(countAndFlagsBits, object, v72);
      v29 = v64;

      *(v30 + 14) = v35;
      _os_log_impl(&dword_222B39000, v26, v2, "%s Updating nomination status for candidates with query=%s:", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v31, -1, -1);
      v36 = v30;
      v9 = v63;
      MEMORY[0x223DCA8C0](v36, -1, -1);
    }

    v60 = a1;
    v37 = v68;
    v65 = *(v68 + 16);
    if (v65)
    {
      v38 = 0;
      v39 = (v70 + 48);
      v71 = MEMORY[0x277D84F90];
      while (v38 < *(v37 + 16))
      {
        a1 = (*(v70 + 80) + 32) & ~*(v70 + 80);
        v2 = *(v70 + 72);
        sub_222C12DD0(v37 + a1 + v2 * v38, v20, type metadata accessor for PlusContactSuggestion);
        sub_222C0EBB8(v20, v67, v29, v8);
        sub_222C12E38(v20, type metadata accessor for PlusContactSuggestion);
        if ((*v39)(v8, 1, v9) == 1)
        {
          sub_222B4FCD4(v8, &qword_27D025A88, &unk_222C9A0C0);
        }

        else
        {
          v40 = v20;
          v41 = v4;
          v42 = v62;
          sub_222C12F00(v8, v62, type metadata accessor for PlusContactSuggestion);
          sub_222C12F00(v42, v66, type metadata accessor for PlusContactSuggestion);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v71 = sub_222B4ACA4(0, v71[2] + 1, 1, v71);
          }

          v44 = v71[2];
          v43 = v71[3];
          if (v44 >= v43 >> 1)
          {
            v71 = sub_222B4ACA4(v43 > 1, v44 + 1, 1, v71);
          }

          v45 = v71;
          v71[2] = v44 + 1;
          sub_222C12F00(v66, v45 + a1 + v44 * v2, type metadata accessor for PlusContactSuggestion);
          v4 = v41;
          v20 = v40;
          v9 = v63;
          v29 = v64;
        }

        ++v38;
        v37 = v68;
        if (v65 == v38)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

    v71 = MEMORY[0x277D84F90];
LABEL_19:
    v65 = 0;

    v46 = v29[8];
    v4 = v29[9];
    __swift_project_boxed_opaque_existential_1(v29 + 5, v46);
    v72[0] = v60;
    v47 = v71;
    (*(v4 + 32))(v72, v71, v46, v4);
    v68 = v47[2];
    if (!v68)
    {
      break;
    }

    v20 = 0;
    v66 = MEMORY[0x277D84F90];
    while (v20 < v47[2])
    {
      v48 = v69;
      v8 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v2 = *(v70 + 72);
      sub_222C12DD0(v47 + v8 + v2 * v20, v69, type metadata accessor for PlusContactSuggestion);
      v49 = v9;
      a1 = *(v48 + *(v9 + 36));
      if (*(a1 + 16) && (v50 = *(a1 + 40), sub_222C952FC(), sub_222C9452C(), v51 = sub_222C9534C(), v4 = a1 + 56, v52 = -1 << *(a1 + 32), v53 = v51 & ~v52, ((*(a1 + 56 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) != 0))
      {
        v67 = v8;
        v54 = ~v52;
        while (1)
        {
          v55 = *(*(a1 + 48) + v53);
          if (v55 > 2 && v55 != 4)
          {
            break;
          }

          v8 = sub_222C951FC();

          if (v8)
          {
            goto LABEL_33;
          }

          v53 = (v53 + 1) & v54;
          if (((*(v4 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
          {
            goto LABEL_21;
          }
        }

LABEL_33:
        sub_222C12F00(v69, v61, type metadata accessor for PlusContactSuggestion);
        v56 = v66;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v73 = v56;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C6E8(0, *(v56 + 16) + 1, 1);
          v56 = v73;
        }

        v9 = v49;
        v47 = v71;
        v4 = v67;
        a1 = *(v56 + 16);
        v58 = *(v56 + 24);
        v8 = a1 + 1;
        if (a1 >= v58 >> 1)
        {
          sub_222B4C6E8(v58 > 1, a1 + 1, 1);
          v56 = v73;
        }

        *(v56 + 16) = v8;
        v66 = v56;
        sub_222C12F00(v61, v56 + v4 + a1 * v2, type metadata accessor for PlusContactSuggestion);
      }

      else
      {
LABEL_21:
        sub_222C12E38(v69, type metadata accessor for PlusContactSuggestion);
        v9 = v49;
        v47 = v71;
      }

      if (++v20 == v68)
      {
        goto LABEL_39;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
  }

  v66 = MEMORY[0x277D84F90];
LABEL_39:

  return v66;
}

uint64_t sub_222C0EBB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A88, &unk_222C9A0C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v53 = &v44 - v9;
  v52 = type metadata accessor for PlusContactSuggestion();
  v10 = *(v52 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v52);
  v54 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - v17;
  v19 = 0;
  v20 = *(a2 + 16);
  do
  {
    v21 = v19;
    if (v20 == v19)
    {
      break;
    }

    ++v19;
  }

  while ((_s28SiriPrivateLearningInference21PlusContactSuggestionV2eeoiySbAC_ACtFZ_0(a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v21, a1) & 1) == 0);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v22 = sub_222C9431C();
  __swift_project_value_buffer(v22, qword_280FE2340);
  v51 = v18;
  sub_222C12DD0(a1, v18, type metadata accessor for PlusContactSuggestion);
  sub_222C12DD0(a1, v16, type metadata accessor for PlusContactSuggestion);
  v23 = v54;
  sub_222C12DD0(a1, v54, type metadata accessor for PlusContactSuggestion);

  v24 = sub_222C942FC();
  v25 = sub_222C94A3C();

  if (os_log_type_enabled(v24, v25))
  {
    v49 = v20 != v21;
    v26 = swift_slowAlloc();
    v48 = v16;
    v27 = v26;
    v50 = swift_slowAlloc();
    v60 = v50;
    *v27 = 136316162;
    *(v27 + 4) = sub_222B437C0(*(a3 + 16), *(a3 + 24), &v60);
    *(v27 + 12) = 2080;
    v47 = v25;
    v28 = v51;
    v29 = v52;
    v30 = &v51[*(v52 + 24)];
    v31 = *(v30 + 1);
    v33 = *(v30 + 2);
    v32 = *(v30 + 3);
    v56 = *v30;
    v57 = v31;
    v58 = v33;
    v59 = v32;

    v46 = v24;
    v45 = ContactReference.description.getter();
    v35 = v34;

    sub_222C12E38(v28, type metadata accessor for PlusContactSuggestion);
    v36 = sub_222B437C0(v45, v35, &v60);

    *(v27 + 14) = v36;
    *(v27 + 22) = 2048;
    v37 = *&v48[*(v29 + 40)];
    sub_222C12E38(v48, type metadata accessor for PlusContactSuggestion);
    *(v27 + 24) = v37;
    *(v27 + 32) = 1024;
    v38 = v54;
    LODWORD(v36) = PlusContactSuggestion.isNominated.getter() & 1;
    sub_222C12E38(v38, type metadata accessor for PlusContactSuggestion);
    *(v27 + 34) = v36;
    *(v27 + 38) = 1024;
    *(v27 + 40) = v49;
    v39 = v46;
    _os_log_impl(&dword_222B39000, v46, v47, "%s    Candidate %s, Score: %f, Nominated: %{BOOL}d -> %{BOOL}d", v27, 0x2Cu);
    v40 = v50;
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v40, -1, -1);
    MEMORY[0x223DCA8C0](v27, -1, -1);
  }

  else
  {
    sub_222C12E38(v23, type metadata accessor for PlusContactSuggestion);

    sub_222C12E38(v16, type metadata accessor for PlusContactSuggestion);
    sub_222C12E38(v51, type metadata accessor for PlusContactSuggestion);
    v29 = v52;
  }

  v41 = v53;
  sub_222C0F0FC(v20 != v21, a1, v53);
  v42 = *(v10 + 48);
  if (v42(v41, 1, v29) == 1)
  {
    sub_222C12DD0(a1, v55, type metadata accessor for PlusContactSuggestion);
    if (v42(v41, 1, v29) != 1)
    {
      sub_222B4FCD4(v41, &qword_27D025A88, &unk_222C9A0C0);
    }
  }

  else
  {
    sub_222C12F00(v41, v55, type metadata accessor for PlusContactSuggestion);
  }

  return (*(v10 + 56))(v55, 0, 1, v29);
}

uint64_t sub_222C0F0FC@<X0>(char a1@<W0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v90 = a3;
  v5 = sub_222C9367C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v79 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v79 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v83 = &v79 - v22;
  MEMORY[0x28223BE20](v21);
  v87 = &v79 - v23;
  v24 = type metadata accessor for PlusContactSuggestion();
  v88 = v12;
  v89 = v24;
  v25 = *(v24 + 36);
  v86 = a2;
  v26 = *(a2 + v25);
  if (*(v26 + 16))
  {
    v82 = v17;
    v84 = v6;
    v27 = *(v26 + 40);
    sub_222C952FC();
    sub_222C9452C();
    v28 = sub_222C9534C();
    v29 = -1 << *(v26 + 32);
    v30 = v28 & ~v29;
    if ((*(v26 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
    {
      v80 = v20;
      v81 = v10;
      v85 = v5;
      v31 = ~v29;
      v32 = a1;
      while (1)
      {
        v33 = *(*(v26 + 48) + v30);
        if (v33 > 2 && v33 != 4)
        {
          break;
        }

        v34 = sub_222C951FC();

        v32 = a1;
        if (v34)
        {
          goto LABEL_20;
        }

        v30 = (v30 + 1) & v31;
        if (((*(v26 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v6 = v84;
          v5 = v85;
          v12 = v88;
          if (a1)
          {
            goto LABEL_13;
          }

          goto LABEL_21;
        }
      }

LABEL_20:
      v57 = v84;
      v56 = v85;
      if (v32)
      {
        goto LABEL_21;
      }

      v61 = v80;
      (*(v84 + 56))(v80, 1, 1, v85);

      v88 = sub_222C11B7C(&unk_2836081C0, v26);
      v62 = v61;
      v63 = v82;
      sub_222B5551C(v62, v82);
      v64 = *(v57 + 48);
      if (v64(v63, 1, v56) == 1)
      {
        v65 = v57;
        v66 = v63;
        v67 = *(v65 + 16);
        v67(v81, v86, v56);
        if (v64(v66, 1, v56) != 1)
        {
          sub_222B4FCD4(v66, &unk_27D026290, &qword_222C96B40);
        }

        v69 = v84;
        v68 = v85;
      }

      else
      {
        (*(v57 + 32))(v81, v63, v56);
        v67 = *(v57 + 16);
        v68 = v56;
        v69 = v57;
      }

      v43 = v89;
      v44 = v90;
      v70 = *(v86 + v89[5]);
      v71 = (v86 + v89[6]);
      v73 = *v71;
      v72 = v71[1];
      v74 = *(v86 + v89[7]);
      v75 = *(v86 + v89[8]);
      v76 = *(v86 + v89[10]);
      v77 = *(v86 + v89[11]);
      v67(v90, v81, v68);
      *&v44[v43[5]] = v70;
      v78 = &v44[v43[6]];
      *v78 = v73;
      *(v78 + 1) = v72;
      *(v78 + 2) = 0;
      *(v78 + 3) = 0;
      swift_retain_n();

      *&v44[v43[7]] = sub_222C17488(50, v74);
      *&v44[v43[8]] = v75;
      *&v44[v43[9]] = v88;
      *&v44[v43[10]] = v76;
      v54 = sub_222C17748(0x32uLL, v77);

      (*(v69 + 8))(v81, v85);
      v55 = v80;
      goto LABEL_30;
    }

    v6 = v84;
    v12 = v88;
    if (a1)
    {
LABEL_13:
      v35 = v87;
      (*(v6 + 56))(v87, 1, 1, v5);

      v82 = sub_222C701CC(&unk_283608198, v26);
      v36 = v35;
      v37 = v83;
      sub_222B5551C(v36, v83);
      v38 = *(v6 + 48);
      if (v38(v37, 1, v5) == 1)
      {
        v84 = v6;
        v39 = *(v6 + 16);
        v39(v12, v86, v5);
        if (v38(v37, 1, v5) != 1)
        {
          sub_222B4FCD4(v37, &unk_27D026290, &qword_222C96B40);
        }

        v40 = v5;
        v41 = v84;
        v42 = v12;
      }

      else
      {
        (*(v6 + 32))(v12, v37, v5);
        v39 = *(v6 + 16);
        v40 = v5;
        v41 = v6;
        v42 = v12;
      }

      v43 = v89;
      v44 = v90;
      v45 = *(v86 + v89[5]);
      v46 = (v86 + v89[6]);
      v48 = *v46;
      v47 = v46[1];
      v49 = *(v86 + v89[7]);
      v50 = *(v86 + v89[8]);
      v51 = *(v86 + v89[10]);
      v52 = *(v86 + v89[11]);
      v85 = v40;
      v39(v90, v42, v40);
      *&v44[v43[5]] = v45;
      v53 = &v44[v43[6]];
      *v53 = v48;
      *(v53 + 1) = v47;
      *(v53 + 2) = 0;
      *(v53 + 3) = 0;
      swift_retain_n();

      *&v44[v43[7]] = sub_222C17488(50, v49);
      *&v44[v43[8]] = v50;
      *&v44[v43[9]] = v82;
      *&v44[v43[10]] = v51;
      v54 = sub_222C17748(0x32uLL, v52);

      (*(v41 + 8))(v88, v85);
      v55 = v87;
LABEL_30:
      sub_222B4FCD4(v55, &unk_27D026290, &qword_222C96B40);
      *&v44[v43[11]] = v54;
      return (*(*(v43 - 1) + 56))(v44, 0, 1, v43);
    }
  }

  else if (a1)
  {
    goto LABEL_13;
  }

LABEL_21:
  v58 = v90;
  v59 = *(*(v89 - 1) + 56);

  return v59(v58, 1, 1);
}

void *AdaptiveContactSuggestionNominator.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 5);
  return v0;
}

uint64_t AdaptiveContactSuggestionNominator.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 5);

  return swift_deallocClassInstance();
}

uint64_t sub_222C0F9C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v42 = result;
  v5 = *(a3 + 16);
  if (!v5)
  {
LABEL_67:
    v41 = 0;
LABEL_68:

    return sub_222C10C50(v42, a2, v41, v4);
  }

  v6 = 0;
  v41 = 0;
  v44 = *(a3 + 16);
  v45 = a3 + 32;
  v55 = a4 + 56;
LABEL_5:
  if (v6 < v5)
  {
    v7 = (v45 + 56 * v6);
    v8 = v7[1];
    v61 = *v7;
    v62 = v8;
    v63 = v7[2];
    v64 = *(v7 + 24);
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_70;
    }

    v10 = *(&v61 + 1);
    v11 = v61;
    v12 = *(v4 + 40);
    sub_222C952FC();
    sub_222B554C0(&v61, v56);
    v65 = v10;
    sub_222C9452C();
    v13 = sub_222C9534C();
    v14 = -1 << *(v4 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    v17 = 1 << v15;
    if (((1 << v15) & *(v55 + 8 * (v15 >> 6))) == 0)
    {
      result = sub_222B55A80(&v61);
      goto LABEL_4;
    }

    v46 = v6;
    v54 = ~v14;
    v18 = *(&v62 + 1);
    *(&v52 + 1) = v63;
    v53 = v62;
    *&v52 = *(&v63 + 1);
    v49 = v64;
    if (v64)
    {
      v19 = 0x656E696665646E75;
    }

    else
    {
      v19 = 0x6C7070612E6D6F63;
    }

    v20 = 0xEF636973754D2E65;
    if (v64)
    {
      v20 = 0xE900000000000064;
    }

    v47 = v20;
    v48 = v19;
    v51 = v11;
    while (1)
    {
      v21 = *(v4 + 48) + 56 * v15;
      v23 = *(v21 + 16);
      v22 = *(v21 + 32);
      v24 = *v21;
      v60 = *(v21 + 48);
      v58 = v23;
      v59 = v22;
      v57 = v24;
      if (v24 != __PAIR128__(v65, v11) && (sub_222C951FC() & 1) == 0)
      {
        goto LABEL_15;
      }

      v26 = *(&v58 + 1);
      v25 = v58;
      v27 = v59;
      if (*(&v58 + 1) == 1)
      {
        break;
      }

      if (v18 == 1)
      {
        sub_222B554C0(&v57, v56);
        sub_222B4FDCC(v25, v26);
        v31 = v53;
        sub_222B4FDCC(v53, 1);
        sub_222B4FDCC(v25, v26);

LABEL_37:
        sub_222B4FE78(v25, v26);
        v32 = v31;
        v33 = v18;
        goto LABEL_54;
      }

      if (*(&v58 + 1))
      {
        if (!v18)
        {
          sub_222B554C0(&v57, v56);
          sub_222B4FDCC(v25, v26);
          sub_222B4FDCC(v53, 0);
          sub_222B4FDCC(v25, v26);
          v37 = v53;
          v38 = 0;
          goto LABEL_53;
        }

        if (v58 != __PAIR128__(v18, v53) && (sub_222C951FC() & 1) == 0)
        {
LABEL_51:
          sub_222B554C0(&v57, v56);
          sub_222B4FDCC(v25, v26);
          v34 = v53;
          sub_222B4FDCC(v53, v18);
          v35 = v25;
          v36 = v26;
LABEL_52:
          sub_222B4FDCC(v35, v36);
          v37 = v34;
          v38 = v18;
LABEL_53:
          sub_222B4FE78(v37, v38);

          v32 = v25;
          v33 = v26;
LABEL_54:
          sub_222B4FE78(v32, v33);
          v4 = a4;
          v11 = v51;
LABEL_55:
          sub_222B55A80(&v57);
          goto LABEL_15;
        }
      }

      else if (v18)
      {
        sub_222B554C0(&v57, v56);
        sub_222B4FDCC(v25, 0);
        v34 = v53;
        sub_222B4FDCC(v53, v18);
        v35 = v25;
        v36 = 0;
        goto LABEL_52;
      }

      if (!*(&v27 + 1))
      {
        if (v52)
        {
          goto LABEL_51;
        }

LABEL_59:
        sub_222B554C0(&v57, v56);
        sub_222B4FDCC(v25, v26);
        sub_222B4FDCC(v53, v18);
        sub_222B4FDCC(v25, v26);
        sub_222B4FE78(v53, v18);

LABEL_21:
        sub_222B4FE78(v25, v26);
        v4 = a4;
        v11 = v51;
        goto LABEL_22;
      }

      if (!v52)
      {
        sub_222B554C0(&v57, v56);
        sub_222B4FDCC(v25, v26);
        sub_222B4FDCC(v53, v18);
        sub_222B4FDCC(v25, v26);
        v37 = v53;
        v38 = v18;
        goto LABEL_53;
      }

      if (__PAIR128__(v27, *(&v27 + 1)) == v52)
      {
        goto LABEL_59;
      }

      v43 = sub_222C951FC();
      sub_222B554C0(&v57, v56);
      sub_222B4FDCC(v25, v26);
      sub_222B4FDCC(v53, v18);
      sub_222B4FDCC(v25, v26);
      sub_222B4FE78(v53, v18);

      sub_222B4FE78(v25, v26);
      v4 = a4;
      v11 = v51;
      if ((v43 & 1) == 0)
      {
        goto LABEL_55;
      }

LABEL_22:
      if (v60 == 2)
      {
        sub_222B55A80(&v57);
        if (v49 == 2)
        {
          goto LABEL_63;
        }

        goto LABEL_15;
      }

      if (v49 == 2)
      {
        goto LABEL_55;
      }

      if (v60)
      {
        v28 = 0x656E696665646E75;
      }

      else
      {
        v28 = 0x6C7070612E6D6F63;
      }

      if (v60)
      {
        v29 = 0xE900000000000064;
      }

      else
      {
        v29 = 0xEF636973754D2E65;
      }

      if (v28 == v48 && v29 == v47)
      {

        sub_222B55A80(&v57);
LABEL_63:
        result = sub_222B55A80(&v61);
        v39 = v42[v16];
        v42[v16] = v39 | v17;
        if ((v39 & v17) != 0)
        {
          goto LABEL_61;
        }

        v9 = __OFADD__(v41++, 1);
        v5 = v44;
        v6 = v46;
        if (v9)
        {
          __break(1u);
          goto LABEL_67;
        }

LABEL_4:
        if (v6 == v5)
        {
          goto LABEL_68;
        }

        goto LABEL_5;
      }

      v30 = sub_222C951FC();

      sub_222B55A80(&v57);
      if (v30)
      {
        goto LABEL_63;
      }

LABEL_15:
      v15 = (v15 + 1) & v54;
      v16 = v15 >> 6;
      v17 = 1 << v15;
      if ((*(v55 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        result = sub_222B55A80(&v61);
LABEL_61:
        v5 = v44;
        v6 = v46;
        goto LABEL_4;
      }
    }

    if (v18 != 1)
    {
      sub_222B554C0(&v57, v56);
      sub_222B4FDCC(v25, 1);
      v31 = v53;
      sub_222B4FDCC(v53, v18);
      goto LABEL_37;
    }

    sub_222B554C0(&v57, v56);
    sub_222B4FDCC(v25, 1);
    sub_222B4FDCC(v53, 1);
    v26 = 1;
    goto LABEL_21;
  }

  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_222C1020C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = *(a3 + 16);
  v26 = result;
  v27 = a3 + 32;
  v34 = a4 + 56;
  v28 = v6;
LABEL_2:
  v25 = v4;
  if (v5 == v6)
  {
LABEL_28:

    return sub_222C10EB0(v26, a2, v25, a4);
  }

LABEL_6:
  if (v5 < v6)
  {
    if (__OFADD__(v5, 1))
    {
      goto LABEL_30;
    }

    v7 = (v27 + 32 * v5);
    v9 = *v7;
    v8 = v7[1];
    v10 = v7[3];
    v31 = v5 + 1;
    v32 = v7[2];
    v30 = v5 + 1;
    v11 = *(a4 + 40);
    sub_222C952FC();

    sub_222C9452C();
    v12 = sub_222C9534C();
    v13 = -1 << *(a4 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & *(v34 + 8 * (v14 >> 6))) == 0)
    {
LABEL_4:

      v6 = v28;
      v5 = v31;
      goto LABEL_5;
    }

    v33 = ~v13;
    v17 = *(a4 + 48);
    while (1)
    {
      v18 = (v17 + 32 * v14);
      v20 = v18[2];
      v19 = v18[3];
      v21 = *v18 == v9 && v18[1] == v8;
      if (v21 || (sub_222C951FC() & 1) != 0)
      {
        if (v19)
        {
          if (v10)
          {
            v22 = v20 == v32 && v19 == v10;
            if (v22 || (sub_222C951FC() & 1) != 0)
            {
LABEL_24:

              v23 = v26[v15];
              v26[v15] = v23 | v16;
              v6 = v28;
              v5 = v31;
              if ((v23 & v16) == 0)
              {
                v4 = v25 + 1;
                if (!__OFADD__(v25, 1))
                {
                  goto LABEL_2;
                }

                __break(1u);
                goto LABEL_28;
              }

LABEL_5:
              if (v30 == v6)
              {
                goto LABEL_28;
              }

              goto LABEL_6;
            }
          }
        }

        else if (!v10)
        {
          goto LABEL_24;
        }
      }

      v14 = (v14 + 1) & v33;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if ((*(v34 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_4;
      }
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_222C1043C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025690, &qword_222C9B8F0);
  result = sub_222C94CFC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_222C952FC();

    sub_222C9452C();
    result = sub_222C9534C();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_222C10660(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025648, &qword_222C9B8E0);
  result = sub_222C94CFC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_222C952FC();
    sub_222C9452C();

    result = sub_222C9534C();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_222C10994(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025650, &unk_222C98A70);
  result = sub_222C94CFC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_222C952FC();
    sub_222C9452C();

    result = sub_222C9534C();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}