uint64_t sub_25F57BA94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_25F57BADC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TaggingStepConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TaggingStepConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F57BCB8()
{
  result = qword_27FD9DD68;
  if (!qword_27FD9DD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DD68);
  }

  return result;
}

unint64_t sub_25F57BD10()
{
  result = qword_27FD9DD70;
  if (!qword_27FD9DD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DD70);
  }

  return result;
}

unint64_t sub_25F57BD68()
{
  result = qword_27FD9DD78;
  if (!qword_27FD9DD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DD78);
  }

  return result;
}

uint64_t sub_25F57BDBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B7475706E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654B74757074756FLL && a2 == 0xE900000000000079 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636E657265666E69 && a2 == 0xEF6769666E6F4365 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73694C776F6C6C61 && a2 == 0xEF73676154646574 || (sub_25F5E4B84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7473694C796E6564 && a2 == 0xEE00736761546465 || (sub_25F5E4B84() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61546D754E78616DLL && a2 == 0xEA00000000007367 || (sub_25F5E4B84() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x426E4965726F7473 && a2 == 0xEC000000656D6F69)
  {

    return 6;
  }

  else
  {
    v6 = sub_25F5E4B84();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_25F57C08C()
{
  result = qword_27FD9DDA8;
  if (!qword_27FD9DDA8)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DDA8);
  }

  return result;
}

uint64_t sub_25F57C0E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25F57C148(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25F57C1A8()
{
  v1 = *v0;
  v2 = 0x79654B7475706E69;
  v3 = 0x636E657265666E69;
  v4 = 0x6174744174786574;
  if (v1 != 3)
  {
    v4 = 0x614665726F6E6769;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x654B74757074756FLL;
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

uint64_t sub_25F57C26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F57E478(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F57C2A0(uint64_t a1)
{
  v2 = sub_25F57C910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F57C2DC(uint64_t a1)
{
  v2 = sub_25F57C910();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TextCompletionStepConfig.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE18, &qword_25F5E7250);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v28 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v11);
  sub_25F57C910();
  sub_25F5E4C74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v63);
  }

  v13 = v6;
  v31 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB58, &qword_25F5E5F50);
  LOBYTE(v32) = 0;
  sub_25F574164();
  v14 = v5;
  sub_25F5E4AD4();
  v30 = v34[0];
  LOBYTE(v34[0]) = 1;
  v15 = sub_25F5E4A94();
  v29 = v16;
  v17 = v15;
  v46 = 2;
  sub_25F576820();
  sub_25F5E4AD4();
  v59 = v51;
  v60 = v52;
  v61 = v53;
  v62 = v54;
  v55 = v47;
  v56 = v48;
  v57 = v49;
  v58 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB30, &qword_25F5E5F30);
  LOBYTE(v32) = 3;
  sub_25F571DEC();
  sub_25F5E4A84();
  v18 = v34[0];
  v45 = 4;
  v19 = sub_25F5E4AA4();
  (*(v13 + 8))(v10, v14);
  v19 &= 1u;
  v20 = v29;
  v21 = v30;
  *&v32 = v30;
  *(&v32 + 1) = v17;
  *&v33[0] = v29;
  *(&v33[4] + 8) = v59;
  *(&v33[5] + 8) = v60;
  *(&v33[6] + 8) = v61;
  BYTE8(v33[7]) = v62;
  *(v33 + 8) = v55;
  *(&v33[1] + 8) = v56;
  *(&v33[2] + 8) = v57;
  *(&v33[3] + 8) = v58;
  *&v33[8] = v18;
  BYTE8(v33[8]) = v19;
  v22 = v33[6];
  v23 = v31;
  v31[6] = v33[5];
  v23[7] = v22;
  v23[8] = v33[7];
  v24 = v33[2];
  v23[2] = v33[1];
  v23[3] = v24;
  v25 = v33[4];
  v23[4] = v33[3];
  v23[5] = v25;
  v26 = v33[0];
  *v23 = v32;
  v23[1] = v26;
  *(v23 + 137) = *(&v33[7] + 9);
  sub_25F57C964(&v32, v34);
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  v39 = v59;
  v40 = v60;
  v41 = v61;
  v35 = v55;
  v36 = v56;
  v37 = v57;
  v34[0] = v21;
  v34[1] = v17;
  v34[2] = v20;
  v42 = v62;
  v38 = v58;
  v43 = v18;
  v44 = v19;
  return sub_25F57C99C(v34);
}

char *sub_25F57C7D4@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v20 = *(a1 + 40);
  v21 = *(a1 + 24);
  v4 = *(a1 + 64);
  v19 = *(a1 + 80);
  v18 = *(a1 + 88);
  v17 = *(a1 + 96);
  v16 = *(a1 + 104);
  v15 = *(a1 + 112);
  v14 = *(a1 + 120);
  v5 = *(a1 + 128);
  v6 = *(a1 + 136);
  v7 = *(a1 + 72);
  v22[0] = *(a1 + 56);
  v22[1] = v4;
  v23 = v7;
  v8 = type metadata accessor for LLMInference();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();

  sub_25F57B79C(v22[0], v4, v7);
  v11 = v24;
  result = LLMInference.init(modelBundleID:usecaseId:promptConfig:topKSampling:nucleusSampling:temperature:seed:)(v21, v2, v20, v3, v22, v19, v18, v17, v16, v15, v14, v5, v6);
  if (!v11)
  {
    a2[3] = v8;
    a2[4] = &protocol witness table for LLMInference;
    *a2 = result;
  }

  return result;
}

unint64_t sub_25F57C910()
{
  result = qword_27FD9DE20;
  if (!qword_27FD9DE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DE20);
  }

  return result;
}

uint64_t (*static TextCompletionStep.textCompleterFactory.getter())()
{
  swift_beginAccess();
  v0 = off_281E8DB80;

  return v0;
}

uint64_t static TextCompletionStep.textCompleterFactory.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  off_281E8DB80 = a1;
  qword_281E8DB88 = a2;
}

uint64_t sub_25F57CAD8(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  swift_beginAccess();
  off_281E8DB80 = v2;
  qword_281E8DB88 = v1;
}

uint64_t TextCompletionStep.process(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25F57CB5C, 0, 0);
}

uint64_t sub_25F57CB5C()
{
  v1 = v0[3];
  v2 = *(v1 + 152);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_25F57CC44;
  v5 = v0[2];

  return sub_25F5A1F60(v5, v2, &unk_25F5E7268, v3);
}

uint64_t sub_25F57CC44(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_25F57CD9C, 0, 0);
  }

  else
  {
    v7 = *(v4 + 32);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_25F57CD9C()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_25F57CE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[31] = a2;
  v3[32] = a3;
  v3[30] = a1;
  return MEMORY[0x2822009F8](sub_25F57CE24, 0, 0);
}

unint64_t sub_25F57CE24()
{
  v1 = v0[32];
  if (*(v1 + 72) - 1 > 1)
  {
    v34 = *v1;
    if (*(*v1 + 16) == 1)
    {
      if (*(v0[31] + 16))
      {
        v36 = *(v34 + 32);
        v35 = *(v34 + 40);
        v37 = v0[31];

        v38 = sub_25F5709C8(v36, v35);
        LOBYTE(v36) = v39;

        if (v36)
        {
          sub_25F573A4C(*(v0[31] + 56) + 32 * v38, (v0 + 2));
          if (swift_dynamicCast())
          {
            v40 = v0[32];
            v42 = v0[26];
            v41 = v0[27];
            v0[36] = v41;
            v43 = v40[23];
            v44 = v40[24];
            __swift_project_boxed_opaque_existential_1Tm(v40 + 20, v43);
            v45 = *(v44 + 16);
            v90 = (v45 + *v45);
            v46 = v45[1];
            v47 = swift_task_alloc();
            v0[37] = v47;
            *v47 = v0;
            v47[1] = sub_25F57D938;

            return v90(v42, v41, v43, v44);
          }

          v84 = v0[31];
        }

LABEL_51:
      }

      sub_25F5748D4();
      swift_allocError();
      *v77 = 0;
    }

    else
    {
      sub_25F5748D4();
      swift_allocError();
      *v75 = 7;
    }

    swift_willThrow();
    v78 = v0[1];

    return v78();
  }

  v2 = v0[31];

  v3 = sub_25F571EB0(MEMORY[0x277D84F90]);
  result = v1[18];
  v93 = v0;
  if (!result)
  {
    goto LABEL_30;
  }

  v5 = result + 64;
  v6 = -1;
  v7 = -1 << *(result + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(result + 64);
  v9 = (63 - v7) >> 6;

  v10 = 0;
  v85 = v5;
  v87 = result;
  while (v8)
  {
    v14 = v10;
LABEL_13:
    v15 = (v14 << 10) | (16 * __clz(__rbit64(v8)));
    v16 = (*(result + 48) + v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = (*(result + 56) + v15);
    v20 = v19[1];
    v89 = *v19;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94 = v3;
    result = sub_25F5709C8(v18, v17);
    v23 = *(v3 + 16);
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_67;
    }

    v27 = v22;
    if (*(v3 + 24) >= v26)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = result;
        sub_25F57ADD8();
        result = v33;
      }
    }

    else
    {
      sub_25F579590(v26, isUniquelyReferenced_nonNull_native);
      result = sub_25F5709C8(v18, v17);
      if ((v27 & 1) != (v28 & 1))
      {
LABEL_60:

        return sub_25F5E4BC4();
      }
    }

    v8 &= v8 - 1;
    if (v27)
    {
      v11 = result;

      v3 = v94;
      v12 = (v94[7] + 16 * v11);
      v13 = v12[1];
      *v12 = v89;
      v12[1] = v20;
    }

    else
    {
      v3 = v94;
      v94[(result >> 6) + 8] |= 1 << result;
      v29 = (v94[6] + 16 * result);
      *v29 = v18;
      v29[1] = v17;
      v30 = (v94[7] + 16 * result);
      *v30 = v89;
      v30[1] = v20;
      v31 = v94[2];
      v25 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v25)
      {
        goto LABEL_69;
      }

      v94[2] = v32;
    }

    v10 = v14;
    v5 = v85;
    result = v87;
  }

  while (1)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      return result;
    }

    if (v14 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v14);
    ++v10;
    if (v8)
    {
      goto LABEL_13;
    }
  }

  v0 = v93;
LABEL_30:
  v48 = v0[32];
  v49 = *v48;
  v91 = *(*v48 + 16);
  if (v91)
  {
    v50 = 0;
    v51 = v0[31];
    v52 = (v49 + 40);
    v86 = v51;
    v88 = *v48;
    while (1)
    {
      if (v50 >= *(v49 + 16))
      {
        goto LABEL_65;
      }

      v56 = v0[31];
      if (!*(v51 + 16))
      {
        goto LABEL_50;
      }

      v58 = *(v52 - 1);
      v57 = *v52;

      v59 = sub_25F5709C8(v58, v57);
      if ((v60 & 1) == 0 || (sub_25F573A4C(*(v51 + 56) + 32 * v59, (v0 + 14)), (swift_dynamicCast() & 1) == 0))
      {
        v76 = v0[31];

LABEL_50:

        goto LABEL_51;
      }

      v62 = v0[28];
      v61 = v0[29];
      v63 = swift_isUniquelyReferenced_nonNull_native();
      v95 = v3;
      result = sub_25F5709C8(v58, v57);
      v65 = *(v3 + 16);
      v66 = (v64 & 1) == 0;
      v25 = __OFADD__(v65, v66);
      v67 = v65 + v66;
      if (v25)
      {
        goto LABEL_66;
      }

      v68 = v64;
      if (*(v3 + 24) < v67)
      {
        break;
      }

      if (v63)
      {
        goto LABEL_43;
      }

      v74 = result;
      sub_25F57ADD8();
      result = v74;
      if ((v68 & 1) == 0)
      {
LABEL_44:
        v3 = v95;
        v95[(result >> 6) + 8] |= 1 << result;
        v70 = (v95[6] + 16 * result);
        *v70 = v58;
        v70[1] = v57;
        v71 = (v95[7] + 16 * result);
        *v71 = v62;
        v71[1] = v61;
        v72 = v95[2];
        v25 = __OFADD__(v72, 1);
        v73 = v72 + 1;
        if (v25)
        {
          goto LABEL_68;
        }

        v95[2] = v73;
        goto LABEL_33;
      }

LABEL_32:
      v53 = result;

      v3 = v95;
      v54 = (v95[7] + 16 * v53);
      v55 = v54[1];
      *v54 = v62;
      v54[1] = v61;

LABEL_33:
      ++v50;
      v52 += 2;
      v0 = v93;
      v51 = v86;
      v49 = v88;
      if (v91 == v50)
      {
        v48 = v93[32];
        goto LABEL_57;
      }
    }

    sub_25F579590(v67, v63);
    result = sub_25F5709C8(v58, v57);
    if ((v68 & 1) != (v69 & 1))
    {
      goto LABEL_60;
    }

LABEL_43:
    if ((v68 & 1) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_32;
  }

LABEL_57:
  v0[33] = v3;
  v79 = v48[23];
  v80 = v48[24];
  __swift_project_boxed_opaque_existential_1Tm(v48 + 20, v79);
  v81 = *(v80 + 24);
  v92 = (v81 + *v81);
  v82 = v81[1];
  v83 = swift_task_alloc();
  v0[34] = v83;
  *v83 = v0;
  v83[1] = sub_25F57D5E0;

  return v92(v3, v79, v80);
}

uint64_t sub_25F57D5E0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[18] = v3;
  v5[19] = a1;
  v5[20] = a2;
  v5[21] = v2;
  v6 = v4[34];
  v7 = *v3;
  v5[35] = v2;

  v8 = v4[33];
  if (v2)
  {
    v9 = v5[31];

    v10 = sub_25F57DC90;
  }

  else
  {

    v10 = sub_25F57D730;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_25F57D730()
{
  v20 = v0;
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = qword_27FD9D8B0;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_25F5E3FB4();
  __swift_project_value_buffer(v4, qword_27FD9EA20);

  v5 = sub_25F5E3F94();
  v6 = sub_25F5E4794();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 240);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 134218242;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    v10 = sub_25F570AF8(v2, v1, &v19);

    *(v8 + 14) = v10;
    _os_log_impl(&dword_25F56A000, v5, v6, "Completion for item %ld: %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x25F8E3B70](v9, -1, -1);
    MEMORY[0x25F8E3B70](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 248);
  v11 = *(v0 + 256);
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  *(v0 + 72) = MEMORY[0x277D837D0];
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  sub_25F571D88((v0 + 48), (v0 + 80));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v12;
  sub_25F5710A0((v0 + 80), v13, v14, isUniquelyReferenced_nonNull_native);
  v16 = v19;
  v17 = *(v0 + 8);

  return v17(v16);
}

uint64_t sub_25F57D938(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[22] = v3;
  v5[23] = a1;
  v5[24] = a2;
  v5[25] = v2;
  v6 = v4[37];
  v7 = *v3;
  v5[38] = v2;

  v8 = v4[36];
  if (v2)
  {
    v9 = v5[31];

    v10 = sub_25F57DCA8;
  }

  else
  {

    v10 = sub_25F57DA88;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_25F57DA88()
{
  v20 = v0;
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = qword_27FD9D8B0;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_25F5E3FB4();
  __swift_project_value_buffer(v4, qword_27FD9EA20);

  v5 = sub_25F5E3F94();
  v6 = sub_25F5E4794();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 240);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 134218242;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    v10 = sub_25F570AF8(v2, v1, &v19);

    *(v8 + 14) = v10;
    _os_log_impl(&dword_25F56A000, v5, v6, "Completion for item %ld: %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x25F8E3B70](v9, -1, -1);
    MEMORY[0x25F8E3B70](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 248);
  v11 = *(v0 + 256);
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  *(v0 + 72) = MEMORY[0x277D837D0];
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  sub_25F571D88((v0 + 48), (v0 + 80));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v12;
  sub_25F5710A0((v0 + 80), v13, v14, isUniquelyReferenced_nonNull_native);
  v16 = v19;
  v17 = *(v0 + 8);

  return v17(v16);
}

uint64_t sub_25F57DCC0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F57E7F4;

  return sub_25F57CE00(a1, a2, v6);
}

uint64_t sub_25F57DD6C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25F57DD8C, 0, 0);
}

uint64_t sub_25F57DD8C()
{
  v1 = v0[3];
  v2 = *(v1 + 152);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_25F57DE74;
  v5 = v0[2];

  return sub_25F5A1F60(v5, v2, &unk_25F5E7598, v3);
}

uint64_t sub_25F57DE74(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_25F57E7F8, 0, 0);
  }

  else
  {
    v7 = *(v4 + 32);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_25F57DFCC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_281E8DB88;
  *a1 = off_281E8DB80;
  a1[1] = v2;
}

__n128 __swift_memcpy153_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_25F57E054(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F57E09C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_25F57E158(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F57E1A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextCompletionStepConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TextCompletionStepConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F57E374()
{
  result = qword_27FD9DE28;
  if (!qword_27FD9DE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DE28);
  }

  return result;
}

unint64_t sub_25F57E3CC()
{
  result = qword_27FD9DE30;
  if (!qword_27FD9DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DE30);
  }

  return result;
}

unint64_t sub_25F57E424()
{
  result = qword_27FD9DE38;
  if (!qword_27FD9DE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DE38);
  }

  return result;
}

uint64_t sub_25F57E478(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B7475706E69 && a2 == 0xE900000000000073;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654B74757074756FLL && a2 == 0xE900000000000079 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636E657265666E69 && a2 == 0xEF6769666E6F4365 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174744174786574 && a2 == 0xEF73746E656D6863 || (sub_25F5E4B84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x614665726F6E6769 && a2 == 0xEE00736572756C69)
  {

    return 4;
  }

  else
  {
    v6 = sub_25F5E4B84();

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

uint64_t sub_25F57E64C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F57E6F8;

  return sub_25F57CE00(a1, a2, v6);
}

uint64_t sub_25F57E6F8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_25F57E7FC()
{
  v1 = 0x79654B7475706E69;
  v2 = 0x636E657265666E69;
  if (*v0 != 2)
  {
    v2 = 0x614665726F6E6769;
  }

  if (*v0)
  {
    v1 = 0x654B74757074756FLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25F57E894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F580064(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F57E8BC(uint64_t a1)
{
  v2 = sub_25F57EFF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F57E8F8(uint64_t a1)
{
  v2 = sub_25F57EFF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageGenerationStepConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE40, &unk_25F5E75B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F57EFF0();
  sub_25F5E4C74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v30 = 0;
  v12 = sub_25F5E4A94();
  v14 = v13;
  v23 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB58, &qword_25F5E5F50);
  v29 = 1;
  sub_25F574164();
  sub_25F5E4AD4();
  v22 = v24;
  v26 = 2;
  sub_25F57F044();
  sub_25F5E4AD4();
  v20 = v28;
  v21 = v27;
  v25 = 3;
  v16 = sub_25F5E4AA4();
  (*(v6 + 8))(v10, v5);
  v17 = v16 & 1;
  v18 = v22;
  *a2 = v23;
  *(a2 + 8) = v14;
  *(a2 + 16) = v18;
  v19 = v20;
  *(a2 + 24) = v21;
  *(a2 + 25) = v19;
  *(a2 + 26) = v17;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_25F57EC30(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 64) = *(a2 + 24);
  v3 = type metadata accessor for ImagePlaygroundInference();
  *(v2 + 24) = v3;
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  *(v2 + 32) = swift_allocObject();

  return MEMORY[0x2822009F8](sub_25F57ECB8, 0, 0);
}

uint64_t sub_25F57ECB8()
{
  *(*(v0 + 32) + 24) = *(v0 + 64);
  v1 = sub_25F5E3934();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = *(MEMORY[0x277CD3780] + 4);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_25F57ED6C;

  return MEMORY[0x282122C48]();
}

uint64_t sub_25F57ED6C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_25F57EF60;
  }

  else
  {
    *(v4 + 56) = a1;
    v7 = sub_25F57EE94;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25F57EE94()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  *(v2 + 16) = v0[7];
  v4 = OBJC_IVAR____TtC8PriMLETL24ImagePlaygroundInference_debugDirectory;
  v5 = sub_25F5E3554();
  (*(*(v5 - 8) + 56))(v2 + v4, 1, 1, v5);
  v3[3] = v1;
  v3[4] = &off_287197CE0;
  *v3 = v2;
  v6 = v0[1];

  return v6();
}

uint64_t sub_25F57EF60()
{
  v1 = *(v0 + 24);
  v2 = **(v0 + 32);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_deallocPartialClassInstance();
  v5 = *(v0 + 8);
  v6 = *(v0 + 48);

  return v5();
}

unint64_t sub_25F57EFF0()
{
  result = qword_27FD9DE48;
  if (!qword_27FD9DE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DE48);
  }

  return result;
}

unint64_t sub_25F57F044()
{
  result = qword_27FD9DE50;
  if (!qword_27FD9DE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DE50);
  }

  return result;
}

void *static ImageGenerationStep.imageCreatorFactory.getter()
{
  swift_beginAccess();
  v0 = off_281E8DB90;

  return v0;
}

uint64_t static ImageGenerationStep.imageCreatorFactory.setter(void *a1, uint64_t a2)
{
  swift_beginAccess();
  off_281E8DB90 = a1;
  qword_281E8DB98 = a2;
}

uint64_t sub_25F57F1A0(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  swift_beginAccess();
  off_281E8DB90 = v2;
  qword_281E8DB98 = v1;
}

uint64_t ImageGenerationStep.process(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25F57F224, 0, 0);
}

uint64_t sub_25F57F224()
{
  v1 = v0[3];
  v2 = *(v1 + 26);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_25F57CC44;
  v5 = v0[2];

  return sub_25F5A1F60(v5, v2, &unk_25F5E75D8, v3);
}

uint64_t sub_25F57F30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v3[16] = a1;
  return MEMORY[0x2822009F8](sub_25F57F330, 0, 0);
}

uint64_t sub_25F57F330()
{
  v24 = v0;
  if (*(*(v0 + 136) + 16) && (v1 = sub_25F5709C8(**(v0 + 144), *(*(v0 + 144) + 8)), (v2 & 1) != 0) && (sub_25F573A4C(*(*(v0 + 136) + 56) + 32 * v1, v0 + 16), (swift_dynamicCast() & 1) != 0))
  {
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);
    *(v0 + 152) = v3;
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v5 = sub_25F5E3FB4();
    *(v0 + 160) = __swift_project_value_buffer(v5, qword_27FD9EA20);

    v6 = sub_25F5E3F94();
    v7 = sub_25F5E4794();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 128);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 134218242;
      *(v9 + 4) = v8;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_25F570AF8(v4, v3, &v23);
      _os_log_impl(&dword_25F56A000, v6, v7, "Generating image(s) for item %ld with prompt: %s", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x25F8E3B70](v10, -1, -1);
      MEMORY[0x25F8E3B70](v9, -1, -1);
    }

    v11 = *(v0 + 144);
    v12 = v11[7];
    v13 = v11[8];
    __swift_project_boxed_opaque_existential_1Tm(v11 + 4, v12);
    v14 = v11[2];
    *(v0 + 168) = v14;
    v15 = *(v14 + 16);
    v16 = *(v13 + 8);
    v22 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    *(v0 + 176) = v18;
    *v18 = v0;
    v18[1] = sub_25F57F668;

    return v22(v4, v3, v15, v12, v13);
  }

  else
  {
    sub_25F5748D4();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_25F57F668(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v8 = *v2;
  v3[23] = a1;
  v3[24] = v1;

  if (v1)
  {
    v5 = sub_25F57FB60;
  }

  else
  {
    v6 = v3[19];

    v5 = sub_25F57F784;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F57F784()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);

  v3 = sub_25F5E3F94();
  LOBYTE(v4) = sub_25F5E4794();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 184);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    if (v6 >> 62)
    {
LABEL_42:
      *(v0 + 184);
      v43 = v7;
      v8 = sub_25F5E49C4();
      v7 = v43;
    }

    else
    {
      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = *(v0 + 184);
    v10 = *(v0 + 128);
    *(v7 + 4) = v8;
    v11 = v7;

    *(v11 + 12) = 2048;
    *(v11 + 14) = v10;
    _os_log_impl(&dword_25F56A000, v3, v4, "Generated %ld image(s) for item %ld", v11, 0x16u);
    MEMORY[0x25F8E3B70](v11, -1, -1);
  }

  else
  {
    v12 = *(v0 + 184);
  }

  v13 = *(v0 + 168);
  v3 = *(v0 + 136);
  v14 = *(v13 + 16);

  v7 = *(v0 + 184);
  v46 = v14;
  if (v14)
  {
    v4 = 0;
    v15 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 < 0)
    {
      v16 = *(v0 + 184);
    }

    v45 = v7 & 0xC000000000000001;
    v44 = v7 + 32;
    v17 = (v13 + 40);
    v47 = v7 >> 62;
    while (1)
    {
      if (v4 >= *(*(v0 + 168) + 16))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v21 = *(v17 - 1);
      v20 = *v17;
      if (v47)
      {
        v7 = sub_25F5E49C4();
        if (v4 == v7)
        {
LABEL_31:
          v40 = *(v0 + 184);
          goto LABEL_32;
        }
      }

      else
      {
        v7 = *(v15 + 16);
        if (v4 == v7)
        {
          goto LABEL_31;
        }
      }

      if (v45)
      {
        v38 = *(v0 + 184);

        v23 = MEMORY[0x25F8E3030](v4, v38);
      }

      else
      {
        if (v4 >= *(v15 + 16))
        {
          goto LABEL_40;
        }

        v22 = *(v44 + 8 * v4);

        v23 = v22;
      }

      v24 = v23;
      type metadata accessor for CGImage(0);
      *(v0 + 72) = v25;
      *(v0 + 48) = v24;
      sub_25F571D88((v0 + 48), (v0 + 80));
      v26 = v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = sub_25F5709C8(v21, v20);
      isa = v3[2].isa;
      v30 = (v28 & 1) == 0;
      v31 = __OFADD__(isa, v30);
      v32 = isa + v30;
      if (v31)
      {
        goto LABEL_39;
      }

      v33 = v28;
      if (v3[3].isa < v32)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_23;
      }

      v39 = v7;
      sub_25F57AAC4();
      v7 = v39;
      if (v33)
      {
LABEL_10:
        v18 = v7;

        v19 = (v3[7].isa + 32 * v18);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        sub_25F571D88((v0 + 80), v19);

        goto LABEL_11;
      }

LABEL_24:
      v3[(v7 >> 6) + 8].isa = (v3[(v7 >> 6) + 8].isa | (1 << v7));
      v35 = (v3[6].isa + 16 * v7);
      *v35 = v21;
      v35[1] = v20;
      sub_25F571D88((v0 + 80), v3[7].isa + 2 * v7);

      v36 = v3[2].isa;
      v31 = __OFADD__(v36, 1);
      v37 = (v36 + 1);
      if (v31)
      {
        goto LABEL_41;
      }

      v3[2].isa = v37;
LABEL_11:
      ++v4;
      v17 += 2;
      if (v46 == v4)
      {
        goto LABEL_31;
      }
    }

    sub_25F579030(v32, isUniquelyReferenced_nonNull_native);
    v7 = sub_25F5709C8(v21, v20);
    if ((v33 & 1) != (v34 & 1))
    {

      return sub_25F5E4BC4();
    }

LABEL_23:
    if (v33)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_32:

  v41 = *(v0 + 8);

  return v41(v3);
}

uint64_t sub_25F57FB60()
{
  v1 = v0[19];

  v2 = v0[24];
  v3 = v0[1];

  return v3();
}

uint64_t sub_25F57FBC4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F57E7F4;

  return sub_25F57F30C(a1, a2, v6);
}

uint64_t sub_25F57FC70(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25F57FC90, 0, 0);
}

uint64_t sub_25F57FC90()
{
  v1 = v0[3];
  v2 = *(v1 + 26);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_25F57DE74;
  v5 = v0[2];

  return sub_25F5A1F60(v5, v2, &unk_25F5E77C8, v3);
}

uint64_t sub_25F57FD78@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_281E8DB98;
  *a1 = off_281E8DB90;
  a1[1] = v2;
}

__n128 __swift_memcpy27_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_25F57FDE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 27))
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

uint64_t sub_25F57FE28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 27) = 1;
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

    *(result + 27) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F57FEA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_25F57FEEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F57FF60()
{
  result = qword_27FD9DE58;
  if (!qword_27FD9DE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DE58);
  }

  return result;
}

unint64_t sub_25F57FFB8()
{
  result = qword_27FD9DE60;
  if (!qword_27FD9DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DE60);
  }

  return result;
}

unint64_t sub_25F580010()
{
  result = qword_27FD9DE68;
  if (!qword_27FD9DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DE68);
  }

  return result;
}

uint64_t sub_25F580064(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B7475706E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654B74757074756FLL && a2 == 0xEA00000000007379 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636E657265666E69 && a2 == 0xEF6769666E6F4365 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614665726F6E6769 && a2 == 0xEE00736572756C69)
  {

    return 3;
  }

  else
  {
    v6 = sub_25F5E4B84();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_25F5801E0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F57E6F8;

  return sub_25F57F30C(a1, a2, v6);
}

uint64_t LLMInference.__allocating_init(config:)(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  v19 = *(a1 + 16);
  v20 = *a1;
  v4 = *(a1 + 40);
  v18 = *(a1 + 56);
  v17 = *(a1 + 64);
  v16 = *(a1 + 72);
  v15 = *(a1 + 80);
  v14 = *(a1 + 88);
  v5 = *(a1 + 96);
  v6 = *(a1 + 104);
  v7 = *(a1 + 112);
  v8 = *(a1 + 48);
  v21[0] = *(a1 + 32);
  v3 = v21[0];
  v21[1] = v4;
  v22 = v8;
  v9 = type metadata accessor for LLMInference();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();

  sub_25F57B79C(v21[0], v4, v8);
  LLMInference.init(modelBundleID:usecaseId:promptConfig:topKSampling:nucleusSampling:temperature:seed:)(v20, v1, v19, v2, v21, v18, v17, v16, v15, v14, v5, v6, v7);

  sub_25F581A78(v3, v4, v8);
  return v12;
}

uint64_t sub_25F5803C8()
{
  error[1] = *MEMORY[0x277D85DE8];
  error[0] = 0;
  v0 = SecTaskCreateFromSelf(0);
  if (!v0)
  {
    goto LABEL_6;
  }

  v1 = v0;
  v2 = sub_25F5E43C4();
  v3 = SecTaskCopyValueForEntitlement(v1, v2, error);

  if (!v3)
  {

LABEL_6:
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v6 = sub_25F5E3FB4();
    __swift_project_value_buffer(v6, qword_27FD9EA20);
    v1 = sub_25F5E3F94();
    v7 = sub_25F5E47A4();
    if (os_log_type_enabled(v1, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_25F570AF8(0xD00000000000002CLL, 0x800000025F5EC380, &v17);
      _os_log_impl(&dword_25F56A000, v1, v7, "No entitlement found for key: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x25F8E3B70](v9, -1, -1);
      MEMORY[0x25F8E3B70](v8, -1, -1);
    }

    goto LABEL_15;
  }

  v17 = v3;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB58, &qword_25F5E5F50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v10 = sub_25F5E3FB4();
    __swift_project_value_buffer(v10, qword_27FD9EA20);
    v11 = sub_25F5E3F94();
    v12 = sub_25F5E47B4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_25F570AF8(0xD00000000000002CLL, 0x800000025F5EC380, &v17);
      _os_log_impl(&dword_25F56A000, v11, v12, "Entitlement %s is not an array of strings", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x25F8E3B70](v14, -1, -1);
      MEMORY[0x25F8E3B70](v13, -1, -1);
    }

    swift_unknownObjectRelease();
LABEL_15:

    result = MEMORY[0x277D84FA0];
    goto LABEL_16;
  }

  v4 = sub_25F5D03B8(v16);
  swift_unknownObjectRelease();

  result = v4;
LABEL_16:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25F580714(uint64_t a1, uint64_t a2)
{
  v24[1] = a2;
  v24[0] = a1;
  sub_25F58C444();
  if ((sub_25F5E4874() & 1) == 0)
  {
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v11 = sub_25F5E3FB4();
    __swift_project_value_buffer(v11, qword_27FD9EA20);
    v6 = sub_25F5E3F94();
    v12 = sub_25F5E4794();
    if (!os_log_type_enabled(v6, v12))
    {
      goto LABEL_12;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_25F56A000, v6, v12, "Passed bundle allowed check, on-device models allowed by default", v13, 2u);
    v10 = v13;
    goto LABEL_11;
  }

  v4 = sub_25F5803C8();
  if (sub_25F5D1280(a1, a2, v4))
  {

    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v5 = sub_25F5E3FB4();
    __swift_project_value_buffer(v5, qword_27FD9EA20);

    v6 = sub_25F5E3F94();
    v7 = sub_25F5E4794();

    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_12;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_25F570AF8(a1, a2, v24);
    _os_log_impl(&dword_25F56A000, v6, v7, "Passed bundle allowed check for model bundle %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x25F8E3B70](v9, -1, -1);
    v10 = v8;
LABEL_11:
    MEMORY[0x25F8E3B70](v10, -1, -1);
LABEL_12:

    return;
  }

  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v14 = sub_25F5E3FB4();
  __swift_project_value_buffer(v14, qword_27FD9EA20);

  v15 = sub_25F5E3F94();
  v16 = sub_25F5E47B4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24[0] = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_25F570AF8(a1, a2, v24);
    *(v17 + 12) = 2080;
    v19 = sub_25F5E46F4();
    v21 = v20;

    v22 = sub_25F570AF8(v19, v21, v24);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_25F56A000, v15, v16, "Unauthorized server model bundle: %s. Allowed bundles: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8E3B70](v18, -1, -1);
    MEMORY[0x25F8E3B70](v17, -1, -1);
  }

  else
  {
  }

  sub_25F581FD8();
  swift_allocError();
  *v23 = 10;
  swift_willThrow();
}

uint64_t LLMInference.__allocating_init(modelBundleID:usecaseId:promptConfig:topKSampling:nucleusSampling:temperature:seed:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  v17 = *(v13 + 48);
  v18 = *(v13 + 52);
  v19 = swift_allocObject();
  LLMInference.init(modelBundleID:usecaseId:promptConfig:topKSampling:nucleusSampling:temperature:seed:)(a1, a2, a3, a4, a5, a6, a7 & 1, a8, a9 & 1, a10, a11 & 1, a12, a13 & 1);
  return v19;
}

uint64_t type metadata accessor for LLMInference()
{
  result = qword_27FD9DEC0;
  if (!qword_27FD9DEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *LLMInference.init(modelBundleID:usecaseId:promptConfig:topKSampling:nucleusSampling:temperature:seed:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  v158 = a4;
  v159 = a2;
  v147 = a8;
  v151 = a7;
  v153 = a6;
  v155 = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE70, &qword_25F5E77F0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v152 = &v141 - v18;
  v19 = sub_25F5E4444();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v149 = &v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE78, &qword_25F5E77F8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v148 = &v141 - v26;
  v27 = sub_25F5E3884();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v150 = (&v141 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE80, &unk_25F5E7800);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8, v33);
  v35 = &v141 - v34;
  v36 = sub_25F5E3AD4();
  v154 = *(v36 - 8);
  v37 = *(v154 + 64);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v41 = &v141 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v42);
  v44 = &v141 - v43;
  v45 = *a5;
  v46 = *(a5 + 8);
  v47 = *(a5 + 16);
  v156 = a1;
  v48 = v159;
  v49 = v157;
  sub_25F580714(a1, v159);
  if (!v49)
  {
    LODWORD(v145) = v47;
    v143 = v35;
    v144 = v41;
    v157 = v45;
    v146 = v46;
    type metadata accessor for LLMInference();
    static LLMInference.getSessionConfig(modelBundleID:usecaseId:)(v156, v48, v155, v158, v44);

    v50 = sub_25F5E3864();
    v51 = *(v50 + 48);
    v52 = *(v50 + 52);
    swift_allocObject();
    v53 = sub_25F5E3854();
    v58 = sub_25F5E3844();
    v155 = 0;
    v158 = v36;
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v59 = sub_25F5E3FB4();
    v60 = __swift_project_value_buffer(v59, qword_27FD9EA20);
    v61 = v58;
    v141 = v60;
    v62 = sub_25F5E3F94();
    v63 = sub_25F5E47A4();

    v64 = os_log_type_enabled(v62, v63);
    v65 = v157;
    if (v64)
    {
      v66 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v142 = v44;
      v67 = v65;
      v68 = v162;
      *v66 = 136315138;
      v161 = v61;
      sub_25F5E38A4();
      v69 = v61;
      v70 = sub_25F5E4474();
      v72 = sub_25F570AF8(v70, v71, &v162);

      *(v66 + 4) = v72;
      _os_log_impl(&dword_25F56A000, v62, v63, "Model's resource information: %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      v73 = v68;
      v65 = v67;
      v44 = v142;
      MEMORY[0x25F8E3B70](v73, -1, -1);
      MEMORY[0x25F8E3B70](v66, -1, -1);
    }

    v74 = sub_25F5E3894();
    if (!v74)
    {
      v76 = 0xE700000000000000;
      v80 = 0x6E776F6E6B6E75;
      goto LABEL_18;
    }

    v75 = v74;
    if (*(v74 + 16))
    {
      v76 = 0xE700000000000000;
      v77 = sub_25F5709C8(0x6E6F6973726576, 0xE700000000000000);
      if (v78)
      {
        v79 = (*(v75 + 56) + 16 * v77);
        v80 = *v79;
        v76 = v79[1];

LABEL_17:

LABEL_18:
        v81 = v145;
        v82 = &v160[OBJC_IVAR____TtC8PriMLETL12LLMInference__modelVersion];
        *v82 = v80;
        v82[1] = v76;
        v83 = v144;
        if (v81 > 1)
        {
          v156 = v61;
          v90 = v154;
          if (v81 != 2)
          {
            v150 = v82;
            v145 = v53;

            v105 = OBJC_IVAR____TtC8PriMLETL12LLMInference_promptTemplate;
            v106 = sub_25F5E3D64();
            v54 = v160;
            (*(*(v106 - 8) + 56))(&v160[v105], 1, 1, v106);
            v107 = OBJC_IVAR____TtC8PriMLETL12LLMInference_parsedPromptTemplate;
            v108 = sub_25F5E4244();
            (*(*(v108 - 8) + 56))(&v54[v107], 1, 1, v108);
            sub_25F5E4424();
            v109 = v146;
            v110 = v155;
            v111 = sub_25F5E43B4();
            if (v110)
            {

              sub_25F581A78(v65, v109, 3u);
              (*(v90 + 8))(v44, v158);
              v113 = v150[1];
              goto LABEL_43;
            }

            v125 = v111;
            v126 = v112;
            sub_25F581A78(v65, v109, 3u);
            v127 = &v54[OBJC_IVAR____TtC8PriMLETL12LLMInference_systemPrompt];
            *v127 = v125;
            v127[1] = v126;
            v83 = v144;
            v82 = v150;
LABEL_34:
            (*(v90 + 16))(v83, v44, v158);
            v128 = sub_25F5E39D4();
            v129 = *(v128 + 48);
            v130 = *(v128 + 52);
            swift_allocObject();
            *(v54 + 2) = sub_25F5E39C4();
            if (v151)
            {
              v131 = v152;
              if (a9)
              {
                (*(v90 + 8))(v44, v158);

                v132 = OBJC_IVAR____TtC8PriMLETL12LLMInference_samplingStrategy;
                v133 = sub_25F5E3A64();
                (*(*(v133 - 8) + 56))(&v54[v132], 1, 1, v133);
LABEL_41:
                v135 = &v54[OBJC_IVAR____TtC8PriMLETL12LLMInference_temperature];
                *v135 = a10;
                v135[8] = a11 & 1;
                v136 = &v54[OBJC_IVAR____TtC8PriMLETL12LLMInference_seed];
                *v136 = a12;
                v136[8] = a13 & 1;
                return v54;
              }

              sub_25F5E3A44();
LABEL_40:

              (*(v90 + 8))(v44, v158);
              v134 = sub_25F5E3A64();
              (*(*(v134 - 8) + 56))(v131, 0, 1, v134);
              sub_25F57B86C(v131, &v54[OBJC_IVAR____TtC8PriMLETL12LLMInference_samplingStrategy], &qword_27FD9DE70, &qword_25F5E77F0);
              goto LABEL_41;
            }

            v131 = v152;
            if (a9)
            {
              sub_25F5E3A54();
              goto LABEL_40;
            }

            sub_25F581FD8();
            swift_allocError();
            *v137 = 5;
            swift_willThrow();

            (*(v90 + 8))(v44, v158);
            v138 = *(v54 + 2);

            v139 = v82[1];

            v140 = *&v54[OBJC_IVAR____TtC8PriMLETL12LLMInference_systemPrompt + 8];
LABEL_43:

            sub_25F57C148(&v54[OBJC_IVAR____TtC8PriMLETL12LLMInference_promptTemplate], &qword_27FD9DE80, &unk_25F5E7800);
            sub_25F57C148(&v54[OBJC_IVAR____TtC8PriMLETL12LLMInference_parsedPromptTemplate], &qword_27FD9DE78, &qword_25F5E77F8);
            goto LABEL_4;
          }

          v91 = v146;

          v92 = v148;
          v93 = v155;
          sub_25F5E4214();
          if (!v93)
          {
            v145 = v53;
            sub_25F581A78(v65, v91, 2u);
            v114 = sub_25F5E4244();
            (*(*(v114 - 8) + 56))(v92, 0, 1, v114);
            v54 = v160;
            sub_25F57B86C(v92, &v160[OBJC_IVAR____TtC8PriMLETL12LLMInference_parsedPromptTemplate], &qword_27FD9DE78, &qword_25F5E77F8);
            v115 = OBJC_IVAR____TtC8PriMLETL12LLMInference_promptTemplate;
            v116 = sub_25F5E3D64();
            (*(*(v116 - 8) + 56))(&v54[v115], 1, 1, v116);
            v117 = &v54[OBJC_IVAR____TtC8PriMLETL12LLMInference_systemPrompt];
            *v117 = 0;
            *(v117 + 1) = 0;
            goto LABEL_34;
          }

          sub_25F581A78(v65, v91, 2u);
          v54 = v160;
        }

        else
        {
          if (!v81)
          {
            v156 = v61;
            v145 = v53;

            v84 = OBJC_IVAR____TtC8PriMLETL12LLMInference_promptTemplate;
            v85 = sub_25F5E3D64();
            v54 = v160;
            (*(*(v85 - 8) + 56))(&v160[v84], 1, 1, v85);
            v86 = OBJC_IVAR____TtC8PriMLETL12LLMInference_parsedPromptTemplate;
            v87 = sub_25F5E4244();
            (*(*(v87 - 8) + 56))(&v54[v86], 1, 1, v87);
            v88 = &v54[OBJC_IVAR____TtC8PriMLETL12LLMInference_systemPrompt];
            v89 = v146;
            *v88 = v65;
            v88[1] = v89;
            v90 = v154;
            goto LABEL_34;
          }

          v94 = v146;

          v95 = sub_25F5E3F94();
          v96 = sub_25F5E4794();
          if (os_log_type_enabled(v95, v96))
          {
            v97 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            v142 = v44;
            v99 = v98;
            v162 = v98;
            *v97 = 136315138;
            *(v97 + 4) = sub_25F570AF8(v157, v94, &v162);
            _os_log_impl(&dword_25F56A000, v95, v96, "Using prompt_template_id=%s", v97, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v99);
            v100 = v99;
            v44 = v142;
            MEMORY[0x25F8E3B70](v100, -1, -1);
            MEMORY[0x25F8E3B70](v97, -1, -1);
          }

          v101 = v155;
          sub_25F5E3874();
          v83 = v144;
          if (!v101)
          {
            v156 = v61;
            v145 = v53;
            v118 = v157;
            v119 = v143;
            v120 = v146;
            sub_25F5E3D54();
            sub_25F581A78(v118, v120, 1u);
            v121 = sub_25F5E3D64();
            (*(*(v121 - 8) + 56))(v119, 0, 1, v121);
            v54 = v160;
            sub_25F57B86C(v119, &v160[OBJC_IVAR____TtC8PriMLETL12LLMInference_promptTemplate], &qword_27FD9DE80, &unk_25F5E7800);
            v122 = OBJC_IVAR____TtC8PriMLETL12LLMInference_parsedPromptTemplate;
            v123 = sub_25F5E4244();
            (*(*(v123 - 8) + 56))(&v54[v122], 1, 1, v123);
            v124 = &v54[OBJC_IVAR____TtC8PriMLETL12LLMInference_systemPrompt];
            *v124 = 0;
            *(v124 + 1) = 0;
            v90 = v154;
            goto LABEL_34;
          }

          v102 = v157;
          v103 = v146;
          sub_25F581A78(v157, v146, 1u);
          sub_25F581A78(v102, v103, 1u);

          v54 = v160;
          v90 = v154;
        }

        (*(v90 + 8))(v44, v158);
        v104 = v82[1];

        goto LABEL_4;
      }
    }

    else
    {
      v76 = 0xE700000000000000;
    }

    v80 = 0x6E776F6E6B6E75;
    goto LABEL_17;
  }

  sub_25F581A78(v45, v46, v47);
  v54 = v160;
LABEL_4:
  type metadata accessor for LLMInference();
  v55 = *(*v54 + 48);
  v56 = *(*v54 + 52);
  swift_deallocPartialClassInstance();
  return v54;
}

uint64_t sub_25F581A78(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t static LLMInference.getSessionConfig(modelBundleID:usecaseId:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a5;
  v42 = a4;
  v9 = sub_25F5E3A14();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEB0, qword_25F5E8200);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = v39 - v15;
  v17 = sub_25F5E3A34();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);

  v40 = a1;
  sub_25F5E3A24();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_25F57C148(v16, &qword_27FD9DEB0, qword_25F5E8200);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v23 = sub_25F5E3FB4();
    __swift_project_value_buffer(v23, qword_27FD9EA20);

    v24 = sub_25F5E3F94();
    v25 = sub_25F5E47B4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v43 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_25F570AF8(v40, a2, &v43);
      _os_log_impl(&dword_25F56A000, v24, v25, "Failed to get model bundle %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x25F8E3B70](v27, -1, -1);
      MEMORY[0x25F8E3B70](v26, -1, -1);
    }

    sub_25F581FD8();
    swift_allocError();
    *v28 = 0;
    return swift_willThrow();
  }

  else
  {
    v39[1] = a3;
    (*(v18 + 32))(v22, v16, v17);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v39[2] = v5;
    v30 = sub_25F5E3FB4();
    __swift_project_value_buffer(v30, qword_27FD9EA20);

    v31 = sub_25F5E3F94();
    v32 = sub_25F5E4794();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v43 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_25F570AF8(v40, a2, &v43);
      _os_log_impl(&dword_25F56A000, v31, v32, "Using adapter %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x25F8E3B70](v34, -1, -1);
      MEMORY[0x25F8E3B70](v33, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEB8, &unk_25F5E7810);
    v35 = *(v18 + 72);
    v36 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_25F5E5EE0;
    (*(v18 + 16))(v37 + v36, v22, v17);

    sub_25F5E3A04();
    v38 = [objc_opt_self() processInfo];
    [v38 processIdentifier];

    sub_25F5E3AC4();
    return (*(v18 + 8))(v22, v17);
  }
}

unint64_t sub_25F581FD8()
{
  result = qword_27FD9DEA8;
  if (!qword_27FD9DEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DEA8);
  }

  return result;
}

uint64_t sub_25F58202C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PriMLETL12LLMInference__modelVersion);
  v2 = *(v0 + OBJC_IVAR____TtC8PriMLETL12LLMInference__modelVersion + 8);

  return v1;
}

uint64_t sub_25F582068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[34] = a4;
  v5[35] = a5;
  v5[32] = a2;
  v5[33] = a3;
  v5[31] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF78, &qword_25F5E7988);
  v5[36] = v6;
  v7 = *(v6 - 8);
  v5[37] = v7;
  v8 = *(v7 + 64) + 15;
  v5[38] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF80, &qword_25F5E7990) - 8) + 64) + 15;
  v5[39] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF88, &qword_25F5E7998);
  v5[40] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[41] = swift_task_alloc();
  v12 = sub_25F5E3C64();
  v5[42] = v12;
  v13 = *(v12 - 8);
  v5[43] = v13;
  v14 = *(v13 + 64) + 15;
  v5[44] = swift_task_alloc();
  v15 = sub_25F5E3C84();
  v5[45] = v15;
  v16 = *(v15 - 8);
  v5[46] = v16;
  v17 = *(v16 + 64) + 15;
  v5[47] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF40, &unk_25F5E8580) - 8) + 64) + 15;
  v5[48] = swift_task_alloc();
  v19 = sub_25F5E3F84();
  v5[49] = v19;
  v20 = *(v19 - 8);
  v5[50] = v20;
  v21 = *(v20 + 64) + 15;
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE70, &qword_25F5E77F0) - 8) + 64) + 15;
  v5[53] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF48, &unk_25F5E7950);
  v5[54] = v23;
  v24 = *(v23 - 8);
  v5[55] = v24;
  v25 = *(v24 + 64) + 15;
  v5[56] = swift_task_alloc();
  v26 = sub_25F5E4144();
  v5[57] = v26;
  v27 = *(v26 - 8);
  v5[58] = v27;
  v28 = *(v27 + 64) + 15;
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F58241C, 0, 0);
}

uint64_t sub_25F58241C()
{
  v1 = *(v0 + 480);
  v23 = *(v0 + 472);
  v30 = *(v0 + 464);
  v3 = *(v0 + 448);
  v2 = *(v0 + 456);
  v26 = *(v0 + 440);
  v27 = *(v0 + 432);
  v25 = *(v0 + 424);
  v29 = *(v0 + 416);
  v28 = *(v0 + 384);
  v24 = *(v0 + 280);
  v4 = *(v0 + 256);
  v21 = *(v0 + 264);
  v22 = *(v0 + 272);
  v5 = *(v0 + 248);
  sub_25F5E4154();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF90, &unk_25F5E79A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F5E77E0;
  strcpy((inited + 32), "system.message");
  *(inited + 47) = -18;
  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  v8 = MEMORY[0x277D42D68];
  *(inited + 72) = v2;
  *(inited + 80) = v8;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 48));
  sub_25F5E4154();

  strcpy((inited + 88), "user.message");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  v9 = swift_task_alloc();
  *(v9 + 16) = v21;
  *(v9 + 24) = v22;
  *(inited + 128) = v2;
  *(inited + 136) = v8;
  __swift_allocate_boxed_opaque_existential_1Tm((inited + 104));
  sub_25F5E4154();

  sub_25F572340(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC70, &unk_25F5E68D0);
  swift_arrayDestroy();
  *(v0 + 496) = sub_25F58C3E0(&qword_27FD9DF98, MEMORY[0x277D42D78]);
  sub_25F5E4294();

  v10 = *(v30 + 8);
  *(v0 + 504) = v10;
  *(v0 + 512) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v23, v2);
  v11 = OBJC_IVAR____TtC8PriMLETL12LLMInference_samplingStrategy;
  *(v0 + 520) = OBJC_IVAR____TtC8PriMLETL12LLMInference_samplingStrategy;
  v12 = v24 + OBJC_IVAR____TtC8PriMLETL12LLMInference_temperature;
  *(v0 + 528) = *(v24 + OBJC_IVAR____TtC8PriMLETL12LLMInference_temperature);
  *(v0 + 628) = *(v12 + 8);
  v13 = v24 + OBJC_IVAR____TtC8PriMLETL12LLMInference_seed;
  *(v0 + 536) = *(v24 + OBJC_IVAR____TtC8PriMLETL12LLMInference_seed);
  *(v0 + 629) = *(v13 + 8);
  sub_25F573B94(v24 + v11, v25, &qword_27FD9DE70, &qword_25F5E77F0);
  sub_25F5E3AA4();
  sub_25F5E3A94();
  sub_25F5E3A74();
  sub_25F5E3A84();
  *(v0 + 624) = *MEMORY[0x277D0E548];
  v14 = *(v26 + 104);
  *(v0 + 544) = v14;
  *(v0 + 552) = (v26 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v14(v3);
  sub_25F5E4264();
  v15 = *(v26 + 8);
  *(v0 + 560) = v15;
  *(v0 + 568) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v3, v27);
  v10(v1, v2);
  v16 = sub_25F5E3F74();
  (*(*(v16 - 8) + 56))(v28, 1, 1, v16);
  sub_25F5E3F64();
  v17 = *(MEMORY[0x277D0E540] + 4);
  v18 = swift_task_alloc();
  *(v0 + 576) = v18;
  *v18 = v0;
  v18[1] = sub_25F5828EC;
  v19 = *(v0 + 312);

  return MEMORY[0x282166B60](v19, 0xD00000000000001CLL, 0x800000025F5EC360);
}

uint64_t sub_25F5828EC()
{
  v2 = *(*v1 + 576);
  v5 = *v1;
  *(*v1 + 584) = v0;

  if (v0)
  {
    v3 = sub_25F583258;
  }

  else
  {
    v3 = sub_25F582A00;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F582A00()
{
  v1 = *(v0 + 312);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DFA0, &qword_25F5E79B0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_25F57C148(v1, &qword_27FD9DF80, &qword_25F5E7990);
  }

  else
  {
    v49 = *(v0 + 568);
    v48 = *(v0 + 560);
    v47 = *(v0 + 552);
    v46 = *(v0 + 544);
    v45 = *(v0 + 624);
    v40 = *(v0 + 629);
    v43 = *(v0 + 628);
    v41 = *(v0 + 536);
    v42 = *(v0 + 528);
    v38 = *(v0 + 520);
    v55 = *(v0 + 504);
    v56 = *(v0 + 512);
    v50 = *(v0 + 480);
    v51 = *(v0 + 488);
    v53 = *(v0 + 456);
    v54 = *(v0 + 464);
    v39 = *(v0 + 448);
    v44 = *(v0 + 432);
    v37 = *(v0 + 424);
    v3 = *(v0 + 408);
    v32 = v3;
    v33 = *(v0 + 400);
    v34 = *(v0 + 392);
    v35 = *(v0 + 416);
    v30 = *(v0 + 376);
    v52 = *(v0 + 368);
    v4 = *(v0 + 360);
    v31 = *(v0 + 352);
    v5 = *(v0 + 344);
    v57 = *(v0 + 336);
    v29 = *(v2 + 48);
    v7 = *(v0 + 320);
    v6 = *(v0 + 328);
    v36 = *(v0 + 280);
    v8 = *(v7 + 48);
    v9 = *(v52 + 32);
    v9(v6, v1, v4);
    v10 = *(v5 + 32);
    v10(v6 + v8, v1 + v29, v57);
    v11 = *(v7 + 48);
    v9(v30, v6, v4);
    v10(v31, v6 + v11, v57);
    sub_25F5E3C54();
    (*(v33 + 8))(v35, v34);
    (*(v33 + 32))(v35, v32, v34);
    v12 = MEMORY[0x277D84F90];
    sub_25F572474(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB50, &unk_25F5E5F40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25F5E5EE0;
    *(inited + 32) = 0xD0000000000000A0;
    *(inited + 40) = 0x800000025F5EC290;
    sub_25F573B94(v36 + v38, v37, &qword_27FD9DE70, &qword_25F5E77F0);
    sub_25F5E3AA4();
    sub_25F5E3A94();
    sub_25F5E3A74();
    sub_25F5E3A84();
    v46(v39, v45, v44);
    *(inited + 72) = sub_25F5E3AB4();
    __swift_allocate_boxed_opaque_existential_1Tm((inited + 48));
    sub_25F5E3BB4();
    v48(v39, v44);
    sub_25F571A78(inited);
    swift_setDeallocating();
    sub_25F57C148(inited + 32, &qword_27FD9E6B0, &unk_25F5E85A0);
    sub_25F572340(v12);
    sub_25F5E3C44();

    (*(v5 + 8))(v31, v57);
    (*(v52 + 8))(v30, v4);
    v55(v51, v53);
    (*(v54 + 32))(v51, v50, v53);
  }

  v15 = *(v0 + 504);
  v14 = *(v0 + 512);
  v17 = *(v0 + 488);
  v16 = *(v0 + 496);
  v18 = *(v0 + 480);
  v19 = *(v0 + 456);
  v20 = *(v0 + 416);
  v21 = *(v0 + 304);
  v22 = *(v0 + 280);
  sub_25F5E4254();
  *(v0 + 240) = *(v22 + 16);
  sub_25F5E39D4();
  sub_25F5E4274();
  v15(v18, v19);
  v23 = *(MEMORY[0x277D0D8E8] + 4);
  v24 = swift_task_alloc();
  *(v0 + 592) = v24;
  v25 = sub_25F58C3E0(&qword_27FD9DFA8, MEMORY[0x277D71A98]);
  *v24 = v0;
  v24[1] = sub_25F582F80;
  v26 = *(v0 + 304);
  v27 = *(v0 + 288);

  return MEMORY[0x282165A78](v27, v25);
}

uint64_t sub_25F582F80(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 592);
  v8 = *v3;
  v6[75] = v2;

  v9 = v6[38];
  v10 = v6[37];
  v11 = v6[36];
  if (v2)
  {
    (*(v10 + 8))(v9, v11);
    v12 = sub_25F5833A0;
  }

  else
  {
    v6[76] = a2;
    v6[77] = a1;
    (*(v10 + 8))(v9, v11);
    v12 = sub_25F583110;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_25F583110()
{
  v2 = v0[63];
  v1 = v0[64];
  v4 = v0[60];
  v3 = v0[61];
  v5 = v0[59];
  v7 = v0[56];
  v6 = v0[57];
  v8 = v0[53];
  v13 = v0[51];
  v14 = v0[48];
  v15 = v0[47];
  v16 = v0[44];
  v17 = v0[41];
  v18 = v0[39];
  v19 = v0[38];
  (*(v0[50] + 8))(v0[52], v0[49]);
  v2(v3, v6);

  v9 = v0[1];
  v10 = v0[77];
  v11 = v0[76];

  return v9(v10, v11);
}

uint64_t sub_25F583258()
{
  v18 = v0[73];
  v1 = v0[63];
  v2 = v0[64];
  v4 = v0[60];
  v3 = v0[61];
  v5 = v0[59];
  v7 = v0[56];
  v6 = v0[57];
  v8 = v0[53];
  v11 = v0[51];
  v12 = v0[48];
  v13 = v0[47];
  v14 = v0[44];
  v15 = v0[41];
  v16 = v0[39];
  v17 = v0[38];
  (*(v0[50] + 8))(v0[52], v0[49]);
  v1(v3, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_25F5833A0()
{
  v18 = v0[75];
  v1 = v0[63];
  v2 = v0[64];
  v4 = v0[60];
  v3 = v0[61];
  v5 = v0[59];
  v7 = v0[56];
  v6 = v0[57];
  v8 = v0[53];
  v11 = v0[51];
  v12 = v0[48];
  v13 = v0[47];
  v14 = v0[44];
  v15 = v0[41];
  v16 = v0[39];
  v17 = v0[38];
  (*(v0[50] + 8))(v0[52], v0[49]);
  v1(v3, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_25F5834E8@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v1 = sub_25F5E4194();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F5E4144();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v24[0] = v24 - v15;
  sub_25F5E4184();
  sub_25F5E4174();
  v16 = *(v2 + 8);
  v16(v6, v1);
  sub_25F5E4184();
  sub_25F5E4174();
  v16(v6, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DFB0, &qword_25F5E79B8);
  v17 = *(v8 + 72);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_25F5E77E0;
  v20 = *(v8 + 16);
  v21 = v24[0];
  v20(v19 + v18, v24[0], v7);
  v20(v19 + v18 + v17, v13, v7);
  MEMORY[0x25F8E2820](v19);

  v22 = *(v8 + 8);
  v22(v13, v7);
  return (v22)(v21, v7);
}

uint64_t sub_25F5837C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, _BYTE *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a5;
  v28 = a6;
  v26 = a4;
  v25 = a2;
  v32 = a7;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v24 - v12;
  v14 = sub_25F5E4144();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v31 = v25;
  v27(v26, v29);
  sub_25F5E4174();
  (*(v9 + 8))(v13, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DFB0, &qword_25F5E79B8);
  v20 = *(v15 + 72);
  v21 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25F5E5EE0;
  (*(v15 + 16))(v22 + v21, v19, v14);
  MEMORY[0x25F8E2820](v22);

  return (*(v15 + 8))(v19, v14);
}

uint64_t sub_25F5839F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F5E4244();
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v8);
  v10 = &v17[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[3] = MEMORY[0x277D837D0];
  v17[4] = MEMORY[0x277D42EC0];
  v17[0] = a1;
  v17[1] = a2;

  v11 = MEMORY[0x277D42E18];
  sub_25F5E41D4();
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF70, &unk_25F5E7970);
  v12 = *(v5 + 72);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25F5E5EE0;
  (*(v6 + 16))(v14 + v13, v10, v4);
  MEMORY[0x25F8E2880](v14, v4, v11);

  return (*(v6 + 8))(v10, v4);
}

uint64_t sub_25F583BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[25] = a2;
  v3[26] = a3;
  v3[24] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF28, &unk_25F5E7930);
  v3[27] = v4;
  v5 = *(v4 - 8);
  v3[28] = v5;
  v6 = *(v5 + 64) + 15;
  v3[29] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF30, &unk_25F5E8570) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF38, &unk_25F5E7940);
  v3[31] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v10 = sub_25F5E3C64();
  v3[33] = v10;
  v11 = *(v10 - 8);
  v3[34] = v11;
  v12 = *(v11 + 64) + 15;
  v3[35] = swift_task_alloc();
  v13 = sub_25F5E3C74();
  v3[36] = v13;
  v14 = *(v13 - 8);
  v3[37] = v14;
  v15 = *(v14 + 64) + 15;
  v3[38] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF40, &unk_25F5E8580) - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v17 = sub_25F5E3F84();
  v3[40] = v17;
  v18 = *(v17 - 8);
  v3[41] = v18;
  v19 = *(v18 + 64) + 15;
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE70, &qword_25F5E77F0) - 8) + 64) + 15;
  v3[44] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF48, &unk_25F5E7950);
  v3[45] = v21;
  v22 = *(v21 - 8);
  v3[46] = v22;
  v23 = *(v22 + 64) + 15;
  v3[47] = swift_task_alloc();
  v24 = sub_25F5E4114();
  v3[48] = v24;
  v25 = *(v24 - 8);
  v3[49] = v25;
  v26 = *(v25 + 64) + 15;
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F583F60, 0, 0);
}

uint64_t sub_25F583F60()
{
  v1 = *(v0 + 400);
  v20 = *(v0 + 392);
  v22 = *(v0 + 408);
  v3 = *(v0 + 376);
  v2 = *(v0 + 384);
  v4 = *(v0 + 368);
  v23 = *(v0 + 360);
  v24 = *(v0 + 416);
  v19 = *(v0 + 352);
  v26 = *(v0 + 344);
  v25 = *(v0 + 312);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 192);
  *(swift_task_alloc() + 16) = v7;
  sub_25F5E4134();

  sub_25F584F90(v6);
  *(v0 + 424) = sub_25F58C3E0(&qword_27FD9DF18, MEMORY[0x277D42D40]);
  sub_25F5E4284();

  v8 = v20 + 8;
  v21 = *(v20 + 8);
  *(v0 + 432) = v21;
  *(v0 + 440) = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v1, v2);
  v9 = OBJC_IVAR____TtC8PriMLETL12LLMInference_samplingStrategy;
  *(v0 + 448) = OBJC_IVAR____TtC8PriMLETL12LLMInference_samplingStrategy;
  v10 = v5 + OBJC_IVAR____TtC8PriMLETL12LLMInference_temperature;
  *(v0 + 456) = *(v5 + OBJC_IVAR____TtC8PriMLETL12LLMInference_temperature);
  *(v0 + 556) = *(v10 + 8);
  v11 = v5 + OBJC_IVAR____TtC8PriMLETL12LLMInference_seed;
  *(v0 + 464) = *(v5 + OBJC_IVAR____TtC8PriMLETL12LLMInference_seed);
  *(v0 + 557) = *(v11 + 8);
  sub_25F573B94(v5 + v9, v19, &qword_27FD9DE70, &qword_25F5E77F0);
  sub_25F5E3AA4();
  sub_25F5E3A94();
  sub_25F5E3A74();
  sub_25F5E3A84();
  *(v0 + 552) = *MEMORY[0x277D0E548];
  v12 = *(v4 + 104);
  *(v0 + 472) = v12;
  *(v0 + 480) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v12(v3);
  sub_25F5E4264();
  v13 = *(v4 + 8);
  *(v0 + 488) = v13;
  *(v0 + 496) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v3, v23);
  v21(v22, v2);
  v14 = sub_25F5E3F74();
  (*(*(v14 - 8) + 56))(v25, 1, 1, v14);
  sub_25F5E3F64();
  v15 = *(MEMORY[0x277D0E538] + 4);
  v16 = swift_task_alloc();
  *(v0 + 504) = v16;
  *v16 = v0;
  v16[1] = sub_25F5842F8;
  v17 = *(v0 + 240);

  return MEMORY[0x282166B58](v17, 0xD00000000000001CLL, 0x800000025F5EC270);
}

uint64_t sub_25F5842F8()
{
  v2 = *(*v1 + 504);
  v5 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = sub_25F584D10;
  }

  else
  {
    v3 = sub_25F58440C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F58440C()
{
  v1 = *(v0 + 240);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF50, &unk_25F5E8590);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_25F57C148(v1, &qword_27FD9DF30, &unk_25F5E8570);
  }

  else
  {
    v50 = *(v0 + 488);
    v51 = *(v0 + 496);
    v49 = *(v0 + 480);
    v47 = *(v0 + 552);
    v42 = *(v0 + 557);
    v48 = *(v0 + 472);
    v45 = *(v0 + 556);
    v43 = *(v0 + 464);
    v44 = *(v0 + 456);
    v40 = *(v0 + 448);
    v57 = *(v0 + 432);
    v58 = *(v0 + 440);
    v53 = *(v0 + 408);
    v54 = *(v0 + 416);
    v55 = *(v0 + 384);
    v56 = *(v0 + 392);
    v41 = *(v0 + 376);
    v46 = *(v0 + 360);
    v39 = *(v0 + 352);
    v33 = *(v0 + 336);
    v34 = *(v0 + 328);
    v35 = *(v0 + 320);
    v36 = *(v0 + 344);
    v59 = *(v0 + 304);
    v52 = *(v0 + 296);
    v3 = *(v0 + 288);
    v32 = *(v0 + 280);
    v5 = *(v0 + 264);
    v4 = *(v0 + 272);
    v6 = *(v0 + 248);
    v7 = *(v0 + 256);
    v37 = *(v0 + 192);
    v38 = *(v0 + 208);
    v30 = *(v6 + 48);
    v31 = *(v2 + 48);
    v8 = *(v52 + 32);
    v8(v7, v1, v3);
    v9 = *(v4 + 32);
    v9(v7 + v30, v1 + v31, v5);
    v10 = *(v6 + 48);
    v8(v59, v7, v3);
    v9(v32, v7 + v10, v5);
    sub_25F5E3C54();
    (*(v34 + 8))(v36, v35);
    (*(v34 + 32))(v36, v33, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF60, &unk_25F5E7960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25F5E5EE0;
    *(inited + 32) = 0x6574616C706D6574;
    *(inited + 40) = 0xE800000000000000;
    v12 = sub_25F5E3D64();
    *(inited + 72) = v12;
    *(inited + 80) = sub_25F58C3E0(&qword_27FD9DF68, MEMORY[0x277D0E698]);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((inited + 48));
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1Tm, v37, v12);
    sub_25F572474(inited);
    swift_setDeallocating();
    sub_25F57C148(inited + 32, &qword_27FD9DC60, &qword_25F5E68C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB50, &unk_25F5E5F40);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_25F5E5EE0;
    *(v14 + 32) = 0xD0000000000000A0;
    *(v14 + 40) = 0x800000025F5EC290;
    sub_25F573B94(v38 + v40, v39, &qword_27FD9DE70, &qword_25F5E77F0);
    sub_25F5E3AA4();
    sub_25F5E3A94();
    sub_25F5E3A74();
    sub_25F5E3A84();
    v48(v41, v47, v46);
    *(v14 + 72) = sub_25F5E3AB4();
    __swift_allocate_boxed_opaque_existential_1Tm((v14 + 48));
    sub_25F5E3BB4();
    v50(v41, v46);
    sub_25F571A78(v14);
    swift_setDeallocating();
    sub_25F57C148(v14 + 32, &qword_27FD9E6B0, &unk_25F5E85A0);
    sub_25F5E3C34();

    (*(v4 + 8))(v32, v5);
    (*(v52 + 8))(v59, v3);
    v57(v54, v55);
    (*(v56 + 32))(v54, v53, v55);
  }

  v16 = *(v0 + 432);
  v15 = *(v0 + 440);
  v18 = *(v0 + 416);
  v17 = *(v0 + 424);
  v19 = *(v0 + 408);
  v20 = *(v0 + 384);
  v21 = *(v0 + 344);
  v22 = *(v0 + 232);
  v23 = *(v0 + 208);
  sub_25F5E4254();
  *(v0 + 184) = *(v23 + 16);
  sub_25F5E39D4();
  sub_25F5E4274();
  v16(v19, v20);
  v24 = *(MEMORY[0x277D0D8C8] + 4);
  v25 = swift_task_alloc();
  *(v0 + 520) = v25;
  v26 = sub_25F58C3E0(&qword_27FD9DF58, MEMORY[0x277D71A98]);
  *v25 = v0;
  v25[1] = sub_25F584A38;
  v27 = *(v0 + 232);
  v28 = *(v0 + 216);

  return MEMORY[0x282165A58](v28, v26);
}

uint64_t sub_25F584A38(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 520);
  v8 = *v3;
  v6[66] = v2;

  v9 = v6[29];
  v10 = v6[28];
  v11 = v6[27];
  if (v2)
  {
    (*(v10 + 8))(v9, v11);
    v12 = sub_25F584E50;
  }

  else
  {
    v6[67] = a2;
    v6[68] = a1;
    (*(v10 + 8))(v9, v11);
    v12 = sub_25F584BC8;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_25F584BC8()
{
  v2 = v0[54];
  v1 = v0[55];
  v4 = v0[51];
  v3 = v0[52];
  v5 = v0[50];
  v7 = v0[47];
  v6 = v0[48];
  v8 = v0[44];
  v13 = v0[42];
  v14 = v0[39];
  v15 = v0[38];
  v16 = v0[35];
  v17 = v0[32];
  v18 = v0[30];
  v19 = v0[29];
  (*(v0[41] + 8))(v0[43], v0[40]);
  v2(v3, v6);

  v9 = v0[1];
  v10 = v0[68];
  v11 = v0[67];

  return v9(v10, v11);
}

uint64_t sub_25F584D10()
{
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[52];
  v4 = v0[48];
  (*(v0[41] + 8))(v0[43], v0[40]);
  v2(v3, v4);
  v6 = v0[51];
  v5 = v0[52];
  v7 = v0[50];
  v8 = v0[47];
  v10 = v0[43];
  v9 = v0[44];
  v11 = v0[42];
  v13 = v0[38];
  v12 = v0[39];
  v14 = v0[35];
  v17 = v0[32];
  v18 = v0[30];
  v19 = v0[29];
  v20 = v0[64];

  v15 = v0[1];

  return v15();
}

uint64_t sub_25F584E50()
{
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[52];
  v4 = v0[48];
  (*(v0[41] + 8))(v0[43], v0[40]);
  v2(v3, v4);
  v6 = v0[51];
  v5 = v0[52];
  v7 = v0[50];
  v8 = v0[47];
  v10 = v0[43];
  v9 = v0[44];
  v11 = v0[42];
  v13 = v0[38];
  v12 = v0[39];
  v14 = v0[35];
  v17 = v0[32];
  v18 = v0[30];
  v19 = v0[29];
  v20 = v0[66];

  v15 = v0[1];

  return v15();
}

unint64_t sub_25F584F90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC58, &qword_25F5E7200);
    v2 = sub_25F5E49F4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v20 = *v19;
        v21 = v19[1];
        v28 = MEMORY[0x277D837D0];
        v29 = MEMORY[0x277D42EC0];
        *&v27 = v20;
        *(&v27 + 1) = v21;
        sub_25F573C54(&v27, v31);
        sub_25F573C54(v31, v32);
        sub_25F573C54(v32, &v30);

        result = sub_25F5709C8(v18, v17);
        if (v22)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 40 * v11);
          __swift_destroy_boxed_opaque_existential_1Tm(v12);
          result = sub_25F573C54(&v30, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v23 = (v2[6] + 16 * result);
          *v23 = v18;
          v23[1] = v17;
          result = sub_25F573C54(&v30, v2[7] + 40 * result);
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_25F5851EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[25] = a2;
  v3[26] = a3;
  v3[24] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF28, &unk_25F5E7930);
  v3[27] = v4;
  v5 = *(v4 - 8);
  v3[28] = v5;
  v6 = *(v5 + 64) + 15;
  v3[29] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF30, &unk_25F5E8570) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF38, &unk_25F5E7940);
  v3[31] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v10 = sub_25F5E3C64();
  v3[33] = v10;
  v11 = *(v10 - 8);
  v3[34] = v11;
  v12 = *(v11 + 64) + 15;
  v3[35] = swift_task_alloc();
  v13 = sub_25F5E3C74();
  v3[36] = v13;
  v14 = *(v13 - 8);
  v3[37] = v14;
  v15 = *(v14 + 64) + 15;
  v3[38] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF40, &unk_25F5E8580) - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v17 = sub_25F5E3F84();
  v3[40] = v17;
  v18 = *(v17 - 8);
  v3[41] = v18;
  v19 = *(v18 + 64) + 15;
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE70, &qword_25F5E77F0) - 8) + 64) + 15;
  v3[44] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF48, &unk_25F5E7950);
  v3[45] = v21;
  v22 = *(v21 - 8);
  v3[46] = v22;
  v23 = *(v22 + 64) + 15;
  v3[47] = swift_task_alloc();
  v24 = sub_25F5E4114();
  v3[48] = v24;
  v25 = *(v24 - 8);
  v3[49] = v25;
  v26 = *(v25 + 64) + 15;
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F58559C, 0, 0);
}

uint64_t sub_25F58559C()
{
  v1 = *(v0 + 400);
  v20 = *(v0 + 392);
  v22 = *(v0 + 408);
  v3 = *(v0 + 376);
  v2 = *(v0 + 384);
  v4 = *(v0 + 368);
  v23 = *(v0 + 360);
  v24 = *(v0 + 416);
  v19 = *(v0 + 352);
  v26 = *(v0 + 344);
  v25 = *(v0 + 312);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 192);
  *(swift_task_alloc() + 16) = v7;
  sub_25F5E4134();

  sub_25F584F90(v6);
  *(v0 + 424) = sub_25F58C3E0(&qword_27FD9DF18, MEMORY[0x277D42D40]);
  sub_25F5E4284();

  v8 = v20 + 8;
  v21 = *(v20 + 8);
  *(v0 + 432) = v21;
  *(v0 + 440) = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v1, v2);
  v9 = OBJC_IVAR____TtC8PriMLETL12LLMInference_samplingStrategy;
  *(v0 + 448) = OBJC_IVAR____TtC8PriMLETL12LLMInference_samplingStrategy;
  v10 = v5 + OBJC_IVAR____TtC8PriMLETL12LLMInference_temperature;
  *(v0 + 456) = *(v5 + OBJC_IVAR____TtC8PriMLETL12LLMInference_temperature);
  *(v0 + 556) = *(v10 + 8);
  v11 = v5 + OBJC_IVAR____TtC8PriMLETL12LLMInference_seed;
  *(v0 + 464) = *(v5 + OBJC_IVAR____TtC8PriMLETL12LLMInference_seed);
  *(v0 + 557) = *(v11 + 8);
  sub_25F573B94(v5 + v9, v19, &qword_27FD9DE70, &qword_25F5E77F0);
  sub_25F5E3AA4();
  sub_25F5E3A94();
  sub_25F5E3A74();
  sub_25F5E3A84();
  *(v0 + 552) = *MEMORY[0x277D0E548];
  v12 = *(v4 + 104);
  *(v0 + 472) = v12;
  *(v0 + 480) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v12(v3);
  sub_25F5E4264();
  v13 = *(v4 + 8);
  *(v0 + 488) = v13;
  *(v0 + 496) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v3, v23);
  v21(v22, v2);
  v14 = sub_25F5E3F74();
  (*(*(v14 - 8) + 56))(v25, 1, 1, v14);
  sub_25F5E3F64();
  v15 = *(MEMORY[0x277D0E538] + 4);
  v16 = swift_task_alloc();
  *(v0 + 504) = v16;
  *v16 = v0;
  v16[1] = sub_25F585934;
  v17 = *(v0 + 240);

  return MEMORY[0x282166B58](v17, 0xD00000000000001CLL, 0x800000025F5EC340);
}

uint64_t sub_25F585934()
{
  v2 = *(*v1 + 504);
  v5 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = sub_25F58C4C8;
  }

  else
  {
    v3 = sub_25F585A48;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F585A48()
{
  v1 = *(v0 + 240);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF50, &unk_25F5E8590);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_25F57C148(v1, &qword_27FD9DF30, &unk_25F5E8570);
  }

  else
  {
    v51 = *(v0 + 488);
    v52 = *(v0 + 496);
    v50 = *(v0 + 480);
    v48 = *(v0 + 552);
    v43 = *(v0 + 557);
    v49 = *(v0 + 472);
    v46 = *(v0 + 556);
    v44 = *(v0 + 464);
    v45 = *(v0 + 456);
    v41 = *(v0 + 448);
    v58 = *(v0 + 432);
    v59 = *(v0 + 440);
    v54 = *(v0 + 408);
    v55 = *(v0 + 416);
    v56 = *(v0 + 384);
    v57 = *(v0 + 392);
    v42 = *(v0 + 376);
    v47 = *(v0 + 360);
    v40 = *(v0 + 352);
    v34 = *(v0 + 336);
    v35 = *(v0 + 328);
    v36 = *(v0 + 320);
    v37 = *(v0 + 344);
    v60 = *(v0 + 304);
    v53 = *(v0 + 296);
    v3 = *(v0 + 288);
    v33 = *(v0 + 280);
    v5 = *(v0 + 264);
    v4 = *(v0 + 272);
    v6 = *(v0 + 248);
    v7 = *(v0 + 256);
    v38 = *(v0 + 192);
    v39 = *(v0 + 208);
    v31 = *(v6 + 48);
    v32 = *(v2 + 48);
    v8 = *(v53 + 32);
    v8(v7, v1, v3);
    v9 = *(v4 + 32);
    v9(v7 + v31, v1 + v32, v5);
    v10 = *(v6 + 48);
    v8(v60, v7, v3);
    v9(v33, v7 + v10, v5);
    sub_25F5E3C54();
    (*(v35 + 8))(v37, v36);
    (*(v35 + 32))(v37, v34, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF60, &unk_25F5E7960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25F5E5EE0;
    *(inited + 32) = 0x74706D6F7270;
    *(inited + 40) = 0xE600000000000000;
    v12 = sub_25F5E4244();
    v13 = MEMORY[0x277D42E20];
    *(inited + 72) = v12;
    *(inited + 80) = v13;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((inited + 48));
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1Tm, v38, v12);
    sub_25F572474(inited);
    swift_setDeallocating();
    sub_25F57C148(inited + 32, &qword_27FD9DC60, &qword_25F5E68C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB50, &unk_25F5E5F40);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_25F5E5EE0;
    *(v15 + 32) = 0xD0000000000000A0;
    *(v15 + 40) = 0x800000025F5EC290;
    sub_25F573B94(v39 + v41, v40, &qword_27FD9DE70, &qword_25F5E77F0);
    sub_25F5E3AA4();
    sub_25F5E3A94();
    sub_25F5E3A74();
    sub_25F5E3A84();
    v49(v42, v48, v47);
    *(v15 + 72) = sub_25F5E3AB4();
    __swift_allocate_boxed_opaque_existential_1Tm((v15 + 48));
    sub_25F5E3BB4();
    v51(v42, v47);
    sub_25F571A78(v15);
    swift_setDeallocating();
    sub_25F57C148(v15 + 32, &qword_27FD9E6B0, &unk_25F5E85A0);
    sub_25F5E3C34();

    (*(v4 + 8))(v33, v5);
    (*(v53 + 8))(v60, v3);
    v58(v55, v56);
    (*(v57 + 32))(v55, v54, v56);
  }

  v17 = *(v0 + 432);
  v16 = *(v0 + 440);
  v19 = *(v0 + 416);
  v18 = *(v0 + 424);
  v20 = *(v0 + 408);
  v21 = *(v0 + 384);
  v22 = *(v0 + 344);
  v23 = *(v0 + 232);
  v24 = *(v0 + 208);
  sub_25F5E4254();
  *(v0 + 184) = *(v24 + 16);
  sub_25F5E39D4();
  sub_25F5E4274();
  v17(v20, v21);
  v25 = *(MEMORY[0x277D0D8C8] + 4);
  v26 = swift_task_alloc();
  *(v0 + 520) = v26;
  v27 = sub_25F58C3E0(&qword_27FD9DF58, MEMORY[0x277D71A98]);
  *v26 = v0;
  v26[1] = sub_25F586040;
  v28 = *(v0 + 232);
  v29 = *(v0 + 216);

  return MEMORY[0x282165A58](v29, v27);
}

uint64_t sub_25F586040(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 520);
  v8 = *v3;
  v6[66] = v2;

  v9 = v6[29];
  v10 = v6[28];
  v11 = v6[27];
  if (v2)
  {
    (*(v10 + 8))(v9, v11);
    v12 = sub_25F58C4CC;
  }

  else
  {
    v6[67] = a2;
    v6[68] = a1;
    (*(v10 + 8))(v9, v11);
    v12 = sub_25F58C4DC;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_25F5861D0()
{
  v0 = sub_25F5E4244();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D42E18];
  sub_25F5E41E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF70, &unk_25F5E7970);
  v8 = *(v1 + 72);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25F5E5EE0;
  (*(v2 + 16))(v10 + v9, v6, v0);
  MEMORY[0x25F8E2880](v10, v0, v7);

  return (*(v2 + 8))(v6, v0);
}

uint64_t sub_25F586358(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_25F58637C, 0, 0);
}

uint64_t sub_25F58637C()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_25F586428;
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_25F589700(v5, v6, v4);
}

uint64_t sub_25F586428(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 40);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_25F586538(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25F586558, 0, 0);
}

uint64_t sub_25F586558()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_25F586600;
  v4 = v0[2];
  v5 = v0[3];

  return sub_25F588334(v5, v4);
}

uint64_t sub_25F586600(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 32);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_25F586710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = sub_25F5E4114();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v7 = sub_25F5E41B4();
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE78, &qword_25F5E77F8) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v11 = sub_25F5E4244();
  v3[17] = v11;
  v12 = *(v11 - 8);
  v3[18] = v12;
  v13 = *(v12 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE80, &unk_25F5E7800) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v15 = sub_25F5E3D64();
  v3[22] = v15;
  v16 = *(v15 - 8);
  v3[23] = v16;
  v17 = *(v16 + 64) + 15;
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F586988, 0, 0);
}

uint64_t sub_25F586988()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  sub_25F573B94(v0[5] + OBJC_IVAR____TtC8PriMLETL12LLMInference_promptTemplate, v3, &qword_27FD9DE80, &unk_25F5E7800);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[17];
    v5 = v0[18];
    v6 = v0[16];
    v7 = v0[5];
    sub_25F57C148(v0[21], &qword_27FD9DE80, &unk_25F5E7800);
    sub_25F573B94(v7 + OBJC_IVAR____TtC8PriMLETL12LLMInference_parsedPromptTemplate, v6, &qword_27FD9DE78, &qword_25F5E77F8);
    if ((*(v5 + 48))(v6, 1, v4) == 1)
    {
      sub_25F57C148(v0[16], &qword_27FD9DE78, &qword_25F5E77F8);
      sub_25F581FD8();
      swift_allocError();
      *v8 = 7;
      swift_willThrow();
      v9 = v0[24];
      v11 = v0[20];
      v10 = v0[21];
      v12 = v0[19];
      v14 = v0[15];
      v13 = v0[16];
      v15 = v0[14];
      v17 = v0[10];
      v16 = v0[11];
      v48 = v0[9];

      v18 = v0[1];

      return v18();
    }

    v36 = v0[19];
    v35 = v0[20];
    v37 = v0[17];
    v38 = v0[18];
    v40 = v0[9];
    v39 = v0[10];
    v41 = v0[7];
    v42 = v0[8];
    v43 = v0[6];
    v49 = v0[5];
    (*(v38 + 32))(v35, v0[16], v37);
    (*(v38 + 16))(v36, v35, v37);
    sub_25F5E4124();
    sub_25F584F90(v43);
    sub_25F58C3E0(&qword_27FD9DF18, MEMORY[0x277D42D40]);
    sub_25F5E4284();

    v44 = *(v42 + 8);
    v0[33] = v44;
    v0[34] = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v44(v39, v41);
    v0[2] = *(v49 + 16);
    v28 = v0 + 2;
    v45 = *(MEMORY[0x277D0D930] + 4);
    v46 = swift_task_alloc();
    v0[35] = v46;
    v31 = sub_25F5E39D4();
    v32 = sub_25F58C3E0(&qword_27FD9DF20, MEMORY[0x277D71A98]);
    *v46 = v0;
    v46[1] = sub_25F587534;
    v33 = v0[14];
    v47 = v0[9];
  }

  else
  {
    v20 = v0[24];
    v21 = v0[10];
    v22 = v0[11];
    v23 = v0[7];
    v24 = v0[8];
    v26 = v0[5];
    v25 = v0[6];
    (*(v0[23] + 32))(v20, v0[21], v0[22]);
    *(swift_task_alloc() + 16) = v20;
    sub_25F5E4134();

    sub_25F584F90(v25);
    sub_25F58C3E0(&qword_27FD9DF18, MEMORY[0x277D42D40]);
    sub_25F5E4284();

    v27 = *(v24 + 8);
    v0[25] = v27;
    v0[26] = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v21, v23);
    v0[3] = *(v26 + 16);
    v28 = v0 + 3;
    v29 = *(MEMORY[0x277D0D930] + 4);
    v30 = swift_task_alloc();
    v0[27] = v30;
    v31 = sub_25F5E39D4();
    v32 = sub_25F58C3E0(&qword_27FD9DF20, MEMORY[0x277D71A98]);
    *v30 = v0;
    v30[1] = sub_25F586EBC;
    v33 = v0[15];
    v34 = v0[11];
  }

  return MEMORY[0x282165AC8](v33, v28, v31, v32);
}

uint64_t sub_25F586EBC()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  v4 = *(v2 + 208);
  (*(v2 + 200))(*(v2 + 88), *(v2 + 56));
  if (v0)
  {
    v5 = sub_25F587BAC;
  }

  else
  {
    v5 = sub_25F586FF0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F586FF0()
{
  v19 = v0;
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = sub_25F5E41A4();
  v6 = v5;
  (*(v3 + 8))(v1, v2);
  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v7 = sub_25F5E3FB4();
  __swift_project_value_buffer(v7, qword_27FD9EA20);

  v8 = sub_25F5E3F94();
  v9 = sub_25F5E4794();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    v12 = sub_25F570AF8(v4, v6, &v18);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_25F56A000, v8, v9, "Initialized with prompt template: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x25F8E3B70](v11, -1, -1);
    MEMORY[0x25F8E3B70](v10, -1, -1);
  }

  else
  {
  }

  v13 = swift_task_alloc();
  v0[29] = v13;
  *v13 = v0;
  v13[1] = sub_25F5871F4;
  v14 = v0[24];
  v16 = v0[5];
  v15 = v0[6];

  return sub_25F583BB0(v14, v15, v16);
}

uint64_t sub_25F5871F4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 232);
  v8 = *v3;
  *(*v3 + 240) = v2;

  if (v2)
  {
    v9 = sub_25F587430;
  }

  else
  {
    *(v6 + 248) = a2;
    *(v6 + 256) = a1;
    v9 = sub_25F587328;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_25F587328()
{
  v1 = v0[31];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v5 = v0[4];
  *v5 = v0[32];
  v5[1] = v1;
  (*(v3 + 8))(v2, v4);
  v6 = v0[24];
  v7 = v0[20];
  v8 = v0[21];
  v9 = v0[19];
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[14];
  v14 = v0[10];
  v13 = v0[11];
  v15 = v0[9];

  v16 = v0[1];

  return v16();
}

uint64_t sub_25F587430()
{
  (*(v0[23] + 8))(v0[24], v0[22]);
  v13 = v0[30];
  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_25F587534()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v7 = *v1;
  *(*v1 + 288) = v0;

  v4 = *(v2 + 272);
  (*(v2 + 264))(*(v2 + 72), *(v2 + 56));
  if (v0)
  {
    v5 = sub_25F587CB0;
  }

  else
  {
    v5 = sub_25F587668;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F587668()
{
  v19 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = sub_25F5E41A4();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v7 = sub_25F5E3FB4();
  __swift_project_value_buffer(v7, qword_27FD9EA20);

  v8 = sub_25F5E3F94();
  v9 = sub_25F5E4794();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    v12 = sub_25F570AF8(v4, v6, &v18);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_25F56A000, v8, v9, "Initialized with parsed prompt template: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x25F8E3B70](v11, -1, -1);
    MEMORY[0x25F8E3B70](v10, -1, -1);
  }

  else
  {
  }

  v13 = swift_task_alloc();
  v0[37] = v13;
  *v13 = v0;
  v13[1] = sub_25F58786C;
  v14 = v0[20];
  v16 = v0[5];
  v15 = v0[6];

  return sub_25F5851EC(v14, v15, v16);
}

uint64_t sub_25F58786C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 296);
  v8 = *v3;
  *(*v3 + 304) = v2;

  if (v2)
  {
    v9 = sub_25F587AA8;
  }

  else
  {
    *(v6 + 312) = a2;
    *(v6 + 320) = a1;
    v9 = sub_25F5879A0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_25F5879A0()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[4];
  (*(v0[18] + 8))(v0[20], v0[17]);
  *v3 = v2;
  v3[1] = v1;
  v4 = v0[24];
  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[19];
  v9 = v0[15];
  v8 = v0[16];
  v10 = v0[14];
  v12 = v0[10];
  v11 = v0[11];
  v13 = v0[9];

  v14 = v0[1];

  return v14();
}

uint64_t sub_25F587AA8()
{
  (*(v0[18] + 8))(v0[20], v0[17]);
  v13 = v0[38];
  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_25F587BAC()
{
  (*(v0[23] + 8))(v0[24], v0[22]);
  v13 = v0[28];
  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_25F587CB0()
{
  (*(v0[18] + 8))(v0[20], v0[17]);
  v13 = v0[36];
  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_25F587DB4(uint64_t a1)
{
  v2 = sub_25F5E4244();
  v3 = *(v2 - 8);
  v4 = v3;
  v5 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v6);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F5E3D64();
  v17[3] = v9;
  v17[4] = sub_25F58C3E0(&qword_27FD9DF68, MEMORY[0x277D0E698]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v17);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1Tm, a1, v9);
  v11 = MEMORY[0x277D42E18];
  sub_25F5E41D4();
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF70, &unk_25F5E7970);
  v12 = *(v3 + 72);
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25F5E5EE0;
  (*(v4 + 16))(v14 + v13, v8, v2);
  MEMORY[0x25F8E2880](v14, v2, v11);

  return (*(v4 + 8))(v8, v2);
}

uint64_t LLMInference.deinit()
{
  v1 = *(v0 + 16);

  sub_25F57C148(v0 + OBJC_IVAR____TtC8PriMLETL12LLMInference_samplingStrategy, &qword_27FD9DE70, &qword_25F5E77F0);
  v2 = *(v0 + OBJC_IVAR____TtC8PriMLETL12LLMInference__modelVersion + 8);

  v3 = *(v0 + OBJC_IVAR____TtC8PriMLETL12LLMInference_systemPrompt + 8);

  sub_25F57C148(v0 + OBJC_IVAR____TtC8PriMLETL12LLMInference_promptTemplate, &qword_27FD9DE80, &unk_25F5E7800);
  sub_25F57C148(v0 + OBJC_IVAR____TtC8PriMLETL12LLMInference_parsedPromptTemplate, &qword_27FD9DE78, &qword_25F5E77F8);
  return v0;
}

uint64_t LLMInference.__deallocating_deinit()
{
  v1 = v0[2];

  sub_25F57C148(v0 + OBJC_IVAR____TtC8PriMLETL12LLMInference_samplingStrategy, &qword_27FD9DE70, &qword_25F5E77F0);
  v2 = *(v0 + OBJC_IVAR____TtC8PriMLETL12LLMInference__modelVersion + 8);

  v3 = *(v0 + OBJC_IVAR____TtC8PriMLETL12LLMInference_systemPrompt + 8);

  sub_25F57C148(v0 + OBJC_IVAR____TtC8PriMLETL12LLMInference_promptTemplate, &qword_27FD9DE80, &unk_25F5E7800);
  sub_25F57C148(v0 + OBJC_IVAR____TtC8PriMLETL12LLMInference_parsedPromptTemplate, &qword_27FD9DE78, &qword_25F5E77F8);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_25F588154()
{
  v1 = (*v0 + OBJC_IVAR____TtC8PriMLETL12LLMInference__modelVersion);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_25F588194(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_25F5881BC, 0, 0);
}

uint64_t sub_25F5881BC()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_25F58C4D0;
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_25F589700(v5, v6, v4);
}

uint64_t sub_25F588268(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_25F58828C, 0, 0);
}

uint64_t sub_25F58828C()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_25F58C4D4;
  v4 = v0[2];
  v5 = v0[3];

  return sub_25F588334(v5, v4);
}

uint64_t sub_25F588334(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v5 = sub_25F5E3D44();
  v2[14] = v5;
  v6 = *(v5 - 8);
  v2[15] = v6;
  v7 = *(v6 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v8 = sub_25F5E39F4();
  v2[19] = v8;
  v9 = *(v8 - 8);
  v2[20] = v9;
  v10 = *(v9 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v11 = sub_25F5E3CC4();
  v2[24] = v11;
  v12 = *(v11 - 8);
  v2[25] = v12;
  v13 = *(v12 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v14 = sub_25F5E3F54();
  v2[30] = v14;
  v15 = *(v14 - 8);
  v2[31] = v15;
  v16 = *(v15 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v17 = swift_task_alloc();
  v2[36] = v17;
  *v17 = v2;
  v17[1] = sub_25F5885CC;

  return sub_25F586710((v2 + 5), a1, a2);
}

uint64_t sub_25F5885CC()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_25F588814;
  }

  else
  {
    v3 = sub_25F5886E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F5886E0()
{
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[28];
  v6 = v0[29];
  v8 = v0[26];
  v7 = v0[27];
  v13 = v0[23];
  v14 = v0[22];
  v15 = v0[21];
  v16 = v0[18];
  v17 = v0[17];
  v18 = v0[16];
  v9 = v0[12];
  v10 = v0[13];

  v19 = v0[6];
  v20 = v0[5];

  v11 = v0[1];

  return v11(v20, v19);
}

uint64_t sub_25F588814()
{
  v191 = v0;
  v1 = v0;
  isa = v0[37].isa;
  v0[7].isa = isa;
  v3 = v0 + 7;
  v4 = v0[35].isa;
  v5 = v0[30].isa;
  v6 = isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEE8, &unk_25F5E7910);
  v7 = swift_dynamicCast();
  v8 = v0[37].isa;
  if (v7)
  {
    v9 = v0[34].isa;
    v10 = v0[35].isa;
    v12 = v0[30].isa;
    v11 = v0[31].isa;

    (*(v11 + 4))(v9, v10, v12);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v13 = v1[33].isa;
    v14 = v1[34].isa;
    v16 = v1[31].isa;
    v15 = v1[32].isa;
    v17 = v1[30].isa;
    v18 = sub_25F5E3FB4();
    __swift_project_value_buffer(v18, qword_27FD9EA20);
    v19 = *(v16 + 2);
    v19(v13, v14, v17);
    v19(v15, v14, v17);
    v20 = sub_25F5E3F94();
    v21 = sub_25F5E47B4();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v1[32].isa;
    v24 = v1[33].isa;
    v25 = v1[30].isa;
    v26 = v1[31].isa;
    if (v22)
    {
      v27 = swift_slowAlloc();
      logc = v20;
      v28 = swift_slowAlloc();
      *v27 = 138412546;
      sub_25F58C3E0(&qword_27FD9DF10, MEMORY[0x277D0DBB0]);
      swift_allocError();
      v182 = v21;
      v29 = v1;
      v19(v30, v24, v25);
      v31 = _swift_stdlib_bridgeErrorToNSError();
      v32 = *(v26 + 1);
      v32(v24, v25);
      *(v27 + 4) = v31;
      *v28 = v31;
      v1 = v29;
      *(v27 + 12) = 2048;
      v33 = sub_25F5E3F44();
      v32(v23, v25);
      *(v27 + 14) = v33;
      _os_log_impl(&dword_25F56A000, logc, v182, "Failed to complete chat, type=GenerativeError, reason=%@, code=%ld", v27, 0x16u);
      sub_25F57C148(v28, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v28, -1, -1);
      MEMORY[0x25F8E3B70](v27, -1, -1);
    }

    else
    {
      v32 = *(v26 + 1);
      v32(v1[32].isa, v1[30].isa);

      v32(v24, v25);
    }

    v64 = v1[34].isa;
    v65 = v1[30].isa;
    v67 = v1[12].isa;
    v66 = v1[13].isa;
    v68 = sub_25F58DD74();
    sub_25F581FD8();
    swift_allocError();
    *v69 = v68;
    swift_willThrow();
    v32(v64, v65);

    goto LABEL_39;
  }

  v34 = v0[29].isa;
  v35 = v0[24].isa;

  v0[8].isa = v8;
  v36 = v8;
  v37 = swift_dynamicCast();
  v38 = v0[37].isa;
  if (v37)
  {
    v40 = v0[28].isa;
    v39 = v1[29].isa;
    v41 = v1[24].isa;
    v42 = v1[25].isa;

    (*(v42 + 4))(v40, v39, v41);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v44 = v1[27].isa;
    v43 = v1[28].isa;
    v45 = v1;
    v48 = v1 + 25;
    v47 = v1[25].isa;
    v46 = v48[1].isa;
    v49 = v45[24].isa;
    v50 = sub_25F5E3FB4();
    __swift_project_value_buffer(v50, qword_27FD9EA20);
    v51 = *(v47 + 2);
    v51(v44, v43, v49);
    v51(v46, v43, v49);
    v52 = sub_25F5E3F94();
    v53 = sub_25F5E47B4();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v45[26].isa;
    v56 = v45[27].isa;
    log = v45;
    v59 = v45 + 24;
    v57 = v45[24].isa;
    v58 = v59[1].isa;
    if (v54)
    {
      v60 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      *v60 = 138412546;
      sub_25F58C3E0(&qword_27FD9DF08, MEMORY[0x277D29D58]);
      swift_allocError();
      v51(v61, v56, v57);
      v62 = _swift_stdlib_bridgeErrorToNSError();
      v1 = *(v58 + 1);
      (v1)(v56, v57);
      *(v60 + 4) = v62;
      *v183 = v62;
      *(v60 + 12) = 2048;
      v63 = sub_25F5E3CB4();
      (v1)(v55, v57);
      *(v60 + 14) = v63;
      _os_log_impl(&dword_25F56A000, v52, v53, "Failed to complete chat, type=ModelManagerError, reason=%@, code=%ld", v60, 0x16u);
      sub_25F57C148(v183, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v183, -1, -1);
      MEMORY[0x25F8E3B70](v60, -1, -1);
    }

    else
    {
      v1 = *(v58 + 1);
      (v1)(v55, v57);

      (v1)(v56, v57);
    }

    v97 = log[28].isa;
    v98 = sub_25F5E3CB4();
    v99 = v98 - 1000;
    if (__OFSUB__(v98, 1000))
    {
      __break(1u);
    }

    else
    {
      v100 = v98 + 19100;
      if (!__OFADD__(v99, 20100))
      {
        v101 = log[28].isa;
        v102 = log[24].isa;
        v103 = log[25].isa;
        v105 = log[12].isa;
        v104 = log[13].isa;
        v106 = sub_25F58E04C(v100);
        if (v106 == 89)
        {
          v107 = 50;
        }

        else
        {
          v107 = v106;
        }

        sub_25F581FD8();
        swift_allocError();
        *v108 = v107;
        swift_willThrow();
        (v1)(v101, v102);
        v1 = log;
        v109 = log[8].isa;
LABEL_38:

        goto LABEL_39;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v70 = v0[23].isa;
  v71 = v1[19].isa;

  v1[9].isa = v38;
  v72 = v38;
  v73 = swift_dynamicCast();
  v74 = v1[37].isa;
  if (v73)
  {
    v76 = v1[22].isa;
    v75 = v1[23].isa;
    v77 = v1[19].isa;
    v78 = v1[20].isa;

    (*(v78 + 4))(v76, v75, v77);
    if (qword_27FD9D8B0 == -1)
    {
LABEL_15:
      v80 = v1[21].isa;
      v79 = v1[22].isa;
      v81 = v1[19].isa;
      v82 = v1[20].isa;
      v83 = sub_25F5E3FB4();
      __swift_project_value_buffer(v83, qword_27FD9EA20);
      v84 = v1;
      v85 = *(v82 + 2);
      v85(v80, v79, v81);
      v86 = sub_25F5E3F94();
      v87 = sub_25F5E47B4();
      v88 = os_log_type_enabled(v86, v87);
      v90 = v84[20].isa;
      v89 = v84[21].isa;
      loga = v84;
      v91 = v84[19].isa;
      if (v88)
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        *v92 = 138412290;
        sub_25F58C3E0(&qword_27FD9DF00, MEMORY[0x277D71B08]);
        swift_allocError();
        v85(v94, v89, v91);
        v95 = _swift_stdlib_bridgeErrorToNSError();
        v96 = *(v90 + 1);
        v96(v89, v91);
        *(v92 + 4) = v95;
        *v93 = v95;
        _os_log_impl(&dword_25F56A000, v86, v87, "Failed to complete chat, type=TokenGenerationError, reason=%@", v92, 0xCu);
        sub_25F57C148(v93, &qword_27FD9DEF0, &qword_25F5E8550);
        MEMORY[0x25F8E3B70](v93, -1, -1);
        MEMORY[0x25F8E3B70](v92, -1, -1);
      }

      else
      {

        v96 = *(v90 + 1);
        v96(v89, v91);
      }

      v135 = loga[22].isa;
      v136 = loga[19].isa;
      v138 = loga[12].isa;
      v137 = loga[13].isa;
      v139 = sub_25F58E838(v135);
      sub_25F581FD8();
      swift_allocError();
      *v140 = v139;
      swift_willThrow();
      v96(v135, v136);
      v1 = loga;
      v109 = loga[9].isa;
      goto LABEL_38;
    }

LABEL_44:
    swift_once();
    goto LABEL_15;
  }

  v110 = v1[18].isa;
  v111 = v1[14].isa;

  v1[10].isa = v74;
  v112 = v74;
  if (swift_dynamicCast())
  {
    v114 = v1[17].isa;
    v113 = v1[18].isa;
    v115 = v1[14].isa;
    v116 = v1[15].isa;

    (*(v116 + 4))(v114, v113, v115);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v118 = v1[16].isa;
    v117 = v1[17].isa;
    v119 = v1[14].isa;
    v120 = v1[15].isa;
    v121 = sub_25F5E3FB4();
    __swift_project_value_buffer(v121, qword_27FD9EA20);
    v122 = v1;
    v123 = *(v120 + 2);
    v123(v118, v117, v119);
    v124 = sub_25F5E3F94();
    v125 = sub_25F5E47B4();
    v126 = os_log_type_enabled(v124, v125);
    v128 = v122[15].isa;
    v127 = v122[16].isa;
    logb = v122;
    v129 = v122[14].isa;
    if (v126)
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      *v130 = 138412290;
      sub_25F58C3E0(&qword_27FD9DEF8, MEMORY[0x277D71F10]);
      swift_allocError();
      v123(v132, v127, v129);
      v133 = _swift_stdlib_bridgeErrorToNSError();
      v134 = *(v128 + 1);
      v134(v127, v129);
      *(v130 + 4) = v133;
      *v131 = v133;
      _os_log_impl(&dword_25F56A000, v124, v125, "Failed to complete chat, type=PromptTemplateRenderError, reason=%@", v130, 0xCu);
      sub_25F57C148(v131, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v131, -1, -1);
      MEMORY[0x25F8E3B70](v130, -1, -1);
    }

    else
    {

      v134 = *(v128 + 1);
      v134(v127, v129);
    }

    v161 = logb[17].isa;
    v162 = logb[13].isa;
    v163 = logb[14].isa;
    v164 = logb[12].isa;
    sub_25F581FD8();
    swift_allocError();
    *v165 = 8;
    swift_willThrow();
    v134(v161, v163);
    v1 = logb;
    v109 = logb[10].isa;
    goto LABEL_38;
  }

  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v141 = v1[37].isa;
  v142 = sub_25F5E3FB4();
  __swift_project_value_buffer(v142, qword_27FD9EA20);
  v143 = v141;
  v144 = sub_25F5E3F94();
  v145 = sub_25F5E47B4();

  if (os_log_type_enabled(v144, v145))
  {
    v146 = v1[37].isa;
    v147 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    v190 = v149;
    *v147 = 138412546;
    v150 = v146;
    v151 = _swift_stdlib_bridgeErrorToNSError();
    *(v147 + 4) = v151;
    *v148 = v151;
    *(v147 + 12) = 2080;
    swift_getErrorValue();
    v152 = v1[2].isa;
    v153 = v1[3].isa;
    swift_getDynamicType();
    v154 = sub_25F5E4D04();
    v156 = sub_25F570AF8(v154, v155, &v190);

    *(v147 + 14) = v156;
    _os_log_impl(&dword_25F56A000, v144, v145, "Failed to complete chat, reason=%@, type=%s", v147, 0x16u);
    sub_25F57C148(v148, &qword_27FD9DEF0, &qword_25F5E8550);
    MEMORY[0x25F8E3B70](v148, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v149);
    MEMORY[0x25F8E3B70](v149, -1, -1);
    MEMORY[0x25F8E3B70](v147, -1, -1);
  }

  v157 = v1[37].isa;
  v158 = v1[12].isa;
  v159 = v1[13].isa;
  sub_25F581FD8();
  swift_allocError();
  *v160 = 4;
  swift_willThrow();

LABEL_39:

  v167 = v1[34].isa;
  v166 = v1[35].isa;
  v169 = v1[32].isa;
  v168 = v1[33].isa;
  v171 = v1[28].isa;
  v170 = v1[29].isa;
  p_isa = &v1->isa;
  v175 = v1 + 26;
  v174 = v1[26].isa;
  v173 = v175[1].isa;
  v176 = p_isa[22];
  v177 = p_isa[23];
  v180 = p_isa[21];
  v181 = p_isa[18];
  v184 = p_isa[17];
  logd = p_isa[16];

  v178 = p_isa[1];

  return v178();
}

uint64_t sub_25F589700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = sub_25F5E3D44();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v7 = sub_25F5E39F4();
  v3[18] = v7;
  v8 = *(v7 - 8);
  v3[19] = v8;
  v9 = *(v8 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v10 = sub_25F5E3CC4();
  v3[23] = v10;
  v11 = *(v10 - 8);
  v3[24] = v11;
  v12 = *(v11 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v13 = sub_25F5E3F54();
  v3[29] = v13;
  v14 = *(v13 - 8);
  v3[30] = v14;
  v15 = *(v14 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F589950, 0, 0);
}

uint64_t sub_25F589950()
{
  v181 = v0;
  v1 = (*(v0 + 80) + OBJC_IVAR____TtC8PriMLETL12LLMInference_systemPrompt);
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
    v4 = swift_task_alloc();
    *(v0 + 280) = v4;
    *v4 = v0;
    v4[1] = sub_25F58A8F0;
    v5 = *(v0 + 88);
    v6 = *(v0 + 96);
    v7 = *(v0 + 80);

    return sub_25F582068(v3, v2, v5, v6, v7);
  }

  sub_25F581FD8();
  v9 = swift_allocError();
  *v10 = 6;
  swift_willThrow();
  v11 = *(v0 + 272);
  v12 = *(v0 + 232);
  *(v0 + 40) = v9;
  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEE8, &unk_25F5E7910);
  if (swift_dynamicCast())
  {
    v15 = *(v0 + 264);
    v14 = *(v0 + 272);
    v17 = *(v0 + 232);
    v16 = *(v0 + 240);

    (*(v16 + 32))(v15, v14, v17);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 256);
    v18 = *(v0 + 264);
    v20 = *(v0 + 240);
    v21 = *(v0 + 248);
    v22 = *(v0 + 232);
    v23 = sub_25F5E3FB4();
    __swift_project_value_buffer(v23, qword_27FD9EA20);
    v24 = *(v20 + 16);
    v24(v19, v18, v22);
    v24(v21, v18, v22);
    v25 = sub_25F5E3F94();
    v26 = sub_25F5E47B4();
    log = v25;
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 248);
    v29 = *(v0 + 256);
    v30 = *(v0 + 232);
    v31 = *(v0 + 240);
    if (v27)
    {
      v32 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      *v32 = 138412546;
      sub_25F58C3E0(&qword_27FD9DF10, MEMORY[0x277D0DBB0]);
      swift_allocError();
      v24(v33, v29, v30);
      v34 = _swift_stdlib_bridgeErrorToNSError();
      v169 = v26;
      v35 = *(v31 + 8);
      v35(v29, v30);
      *(v32 + 4) = v34;
      v171->isa = v34;
      *(v32 + 12) = 2048;
      v36 = sub_25F5E3F44();
      v35(v28, v30);
      v37 = v35;
      *(v32 + 14) = v36;
      _os_log_impl(&dword_25F56A000, log, v169, "Failed to complete chat, type=GenerativeError, reason=%@, code=%ld", v32, 0x16u);
      sub_25F57C148(v171, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v171, -1, -1);
      MEMORY[0x25F8E3B70](v32, -1, -1);
    }

    else
    {
      v64 = *(v31 + 8);
      v64(*(v0 + 248), *(v0 + 232));

      v64(v29, v30);
      v37 = v64;
    }

    v65 = *(v0 + 264);
    v66 = *(v0 + 232);
    v67 = *(v0 + 96);
    v68 = *(v0 + 80);
    v69 = sub_25F58DD74();
    swift_allocError();
    *v70 = v69;
    swift_willThrow();
    v37(v65, v66);

    goto LABEL_43;
  }

  v38 = *(v0 + 224);
  v39 = *(v0 + 184);

  *(v0 + 48) = v9;
  v40 = v9;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v71 = *(v0 + 176);
    v72 = *(v0 + 144);

    *(v0 + 56) = v9;
    v73 = v9;
    if ((swift_dynamicCast() & 1) == 0)
    {
      v107 = *(v0 + 136);
      v108 = *(v0 + 104);

      *(v0 + 64) = v9;
      v109 = v9;
      if ((swift_dynamicCast() & 1) == 0)
      {

        if (qword_27FD9D8B0 != -1)
        {
          swift_once();
        }

        v136 = sub_25F5E3FB4();
        __swift_project_value_buffer(v136, qword_27FD9EA20);
        v137 = v9;
        v138 = sub_25F5E3F94();
        v139 = sub_25F5E47B4();

        if (os_log_type_enabled(v138, v139))
        {
          v140 = swift_slowAlloc();
          v141 = swift_slowAlloc();
          v142 = swift_slowAlloc();
          v180 = v142;
          *v140 = 138412546;
          v143 = v9;
          v144 = _swift_stdlib_bridgeErrorToNSError();
          *(v140 + 4) = v144;
          *v141 = v144;
          *(v140 + 12) = 2080;
          swift_getErrorValue();
          v145 = *(v0 + 16);
          v146 = *(v0 + 24);
          swift_getDynamicType();
          v147 = sub_25F5E4D04();
          v149 = sub_25F570AF8(v147, v148, &v180);

          *(v140 + 14) = v149;
          _os_log_impl(&dword_25F56A000, v138, v139, "Failed to complete chat, reason=%@, type=%s", v140, 0x16u);
          sub_25F57C148(v141, &qword_27FD9DEF0, &qword_25F5E8550);
          MEMORY[0x25F8E3B70](v141, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm(v142);
          MEMORY[0x25F8E3B70](v142, -1, -1);
          MEMORY[0x25F8E3B70](v140, -1, -1);
        }

        v150 = *(v0 + 96);
        v151 = *(v0 + 80);
        swift_allocError();
        *v152 = 4;
        swift_willThrow();

        goto LABEL_43;
      }

      v111 = *(v0 + 128);
      v110 = *(v0 + 136);
      v113 = *(v0 + 104);
      v112 = *(v0 + 112);

      (*(v112 + 32))(v111, v110, v113);
      if (qword_27FD9D8B0 != -1)
      {
        swift_once();
      }

      v115 = *(v0 + 120);
      v114 = *(v0 + 128);
      v117 = *(v0 + 104);
      v116 = *(v0 + 112);
      v118 = sub_25F5E3FB4();
      __swift_project_value_buffer(v118, qword_27FD9EA20);
      v119 = *(v116 + 16);
      v119(v115, v114, v117);
      v120 = sub_25F5E3F94();
      v121 = sub_25F5E47B4();
      v122 = os_log_type_enabled(v120, v121);
      v124 = *(v0 + 112);
      v123 = *(v0 + 120);
      v125 = *(v0 + 104);
      if (v122)
      {
        v126 = swift_slowAlloc();
        logc = swift_slowAlloc();
        *v126 = 138412290;
        sub_25F58C3E0(&qword_27FD9DEF8, MEMORY[0x277D71F10]);
        swift_allocError();
        v119(v127, v123, v125);
        v128 = _swift_stdlib_bridgeErrorToNSError();
        v129 = *(v124 + 8);
        v129(v123, v125);
        *(v126 + 4) = v128;
        logc->isa = v128;
        _os_log_impl(&dword_25F56A000, v120, v121, "Failed to complete chat, type=PromptTemplateRenderError, reason=%@", v126, 0xCu);
        sub_25F57C148(logc, &qword_27FD9DEF0, &qword_25F5E8550);
        MEMORY[0x25F8E3B70](logc, -1, -1);
        MEMORY[0x25F8E3B70](v126, -1, -1);
      }

      else
      {

        v129 = *(v124 + 8);
        v129(v123, v125);
      }

      v153 = *(v0 + 128);
      v155 = *(v0 + 96);
      v154 = *(v0 + 104);
      v156 = *(v0 + 80);
      swift_allocError();
      *v157 = 8;
      swift_willThrow();
      v129(v153, v154);
      v106 = *(v0 + 64);
      goto LABEL_42;
    }

    v75 = *(v0 + 168);
    v74 = *(v0 + 176);
    v77 = *(v0 + 144);
    v76 = *(v0 + 152);

    (*(v76 + 32))(v75, v74, v77);
    if (qword_27FD9D8B0 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

  v42 = *(v0 + 216);
  v41 = *(v0 + 224);
  v44 = *(v0 + 184);
  v43 = *(v0 + 192);

  (*(v43 + 32))(v42, v41, v44);
  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v46 = *(v0 + 208);
  v45 = *(v0 + 216);
  v47 = *(v0 + 192);
  v48 = *(v0 + 200);
  v49 = *(v0 + 184);
  v50 = sub_25F5E3FB4();
  __swift_project_value_buffer(v50, qword_27FD9EA20);
  v51 = *(v47 + 16);
  v51(v46, v45, v49);
  v51(v48, v45, v49);
  v52 = sub_25F5E3F94();
  v53 = sub_25F5E47B4();
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 200);
  v56 = *(v0 + 208);
  v57 = *(v0 + 184);
  v58 = *(v0 + 192);
  if (v54)
  {
    loga = v53;
    v59 = swift_slowAlloc();
    v173 = swift_slowAlloc();
    *v59 = 138412546;
    sub_25F58C3E0(&qword_27FD9DF08, MEMORY[0x277D29D58]);
    swift_allocError();
    v51(v60, v56, v57);
    v61 = _swift_stdlib_bridgeErrorToNSError();
    v62 = *(v58 + 8);
    v62(v56, v57);
    *(v59 + 4) = v61;
    *v173 = v61;
    *(v59 + 12) = 2048;
    v63 = sub_25F5E3CB4();
    v62(v55, v57);
    *(v59 + 14) = v63;
    _os_log_impl(&dword_25F56A000, v52, loga, "Failed to complete chat, type=ModelManagerError, reason=%@, code=%ld", v59, 0x16u);
    sub_25F57C148(v173, &qword_27FD9DEF0, &qword_25F5E8550);
    MEMORY[0x25F8E3B70](v173, -1, -1);
    MEMORY[0x25F8E3B70](v59, -1, -1);
  }

  else
  {
    v62 = *(v58 + 8);
    v62(*(v0 + 200), *(v0 + 184));

    v62(v56, v57);
  }

  v94 = *(v0 + 216);
  v95 = sub_25F5E3CB4();
  v96 = v95 - 1000;
  if (__OFSUB__(v95, 1000))
  {
    __break(1u);
    goto LABEL_47;
  }

  v97 = v95 + 19100;
  if (__OFADD__(v96, 20100))
  {
LABEL_47:
    __break(1u);
LABEL_48:
    swift_once();
LABEL_19:
    v79 = *(v0 + 160);
    v78 = *(v0 + 168);
    v81 = *(v0 + 144);
    v80 = *(v0 + 152);
    v82 = sub_25F5E3FB4();
    __swift_project_value_buffer(v82, qword_27FD9EA20);
    v83 = *(v80 + 16);
    v83(v79, v78, v81);
    v84 = sub_25F5E3F94();
    v85 = sub_25F5E47B4();
    v86 = os_log_type_enabled(v84, v85);
    v88 = *(v0 + 152);
    v87 = *(v0 + 160);
    v89 = *(v0 + 144);
    if (v86)
    {
      v90 = swift_slowAlloc();
      logb = swift_slowAlloc();
      *v90 = 138412290;
      sub_25F58C3E0(&qword_27FD9DF00, MEMORY[0x277D71B08]);
      swift_allocError();
      v83(v91, v87, v89);
      v92 = _swift_stdlib_bridgeErrorToNSError();
      v93 = *(v88 + 8);
      v93(v87, v89);
      *(v90 + 4) = v92;
      logb->isa = v92;
      _os_log_impl(&dword_25F56A000, v84, v85, "Failed to complete chat, type=TokenGenerationError, reason=%@", v90, 0xCu);
      sub_25F57C148(logb, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](logb, -1, -1);
      MEMORY[0x25F8E3B70](v90, -1, -1);
    }

    else
    {

      v93 = *(v88 + 8);
      v93(v87, v89);
    }

    v130 = *(v0 + 168);
    v131 = *(v0 + 144);
    v132 = *(v0 + 96);
    v133 = *(v0 + 80);
    v134 = sub_25F58E838(v130);
    swift_allocError();
    *v135 = v134;
    swift_willThrow();
    v93(v130, v131);
    v106 = *(v0 + 56);
    goto LABEL_42;
  }

  v98 = *(v0 + 216);
  v99 = *(v0 + 184);
  v100 = *(v0 + 192);
  v101 = *(v0 + 96);
  v102 = *(v0 + 80);
  v103 = sub_25F58E04C(v97);
  if (v103 == 89)
  {
    v104 = 50;
  }

  else
  {
    v104 = v103;
  }

  swift_allocError();
  *v105 = v104;
  swift_willThrow();
  v62(v98, v99);
  v106 = *(v0 + 48);
LABEL_42:

LABEL_43:

  v159 = *(v0 + 264);
  v158 = *(v0 + 272);
  v161 = *(v0 + 248);
  v160 = *(v0 + 256);
  v163 = *(v0 + 216);
  v162 = *(v0 + 224);
  v165 = *(v0 + 200);
  v164 = *(v0 + 208);
  v166 = *(v0 + 168);
  v167 = *(v0 + 176);
  v170 = *(v0 + 160);
  v172 = *(v0 + 136);
  v174 = *(v0 + 128);
  logd = *(v0 + 120);

  v168 = *(v0 + 8);

  return v168();
}

uint64_t sub_25F58A8F0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 280);
  v8 = *v3;
  *(*v3 + 288) = v2;

  if (v2)
  {
    v9 = sub_25F58AB54;
  }

  else
  {
    *(v6 + 296) = a2;
    *(v6 + 304) = a1;
    v9 = sub_25F58AA24;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_25F58AA24()
{
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[25];
  v8 = v0[26];
  v15 = v0[22];
  v16 = v0[21];
  v17 = v0[20];
  v18 = v0[17];
  v19 = v0[16];
  v20 = v0[15];
  v9 = v0[12];
  v10 = v0[10];

  v11 = v0[1];
  v13 = v0[37];
  v12 = v0[38];

  return v11(v12, v13);
}

uint64_t sub_25F58AB54()
{
  v182 = v0;
  v1 = v0;
  isa = v0[36].isa;
  v0[5].isa = isa;
  v3 = v0 + 5;
  v4 = v0[34].isa;
  v5 = v0[29].isa;
  v6 = isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEE8, &unk_25F5E7910);
  if (swift_dynamicCast())
  {
    v8 = v0[33].isa;
    v7 = v0[34].isa;
    v10 = v0[29].isa;
    v9 = v0[30].isa;

    (*(v9 + 4))(v8, v7, v10);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v11 = v1[32].isa;
    v12 = v1[33].isa;
    v14 = v1[30].isa;
    v13 = v1[31].isa;
    v15 = v1[29].isa;
    v16 = sub_25F5E3FB4();
    __swift_project_value_buffer(v16, qword_27FD9EA20);
    v17 = *(v14 + 2);
    v17(v11, v12, v15);
    v17(v13, v12, v15);
    v18 = sub_25F5E3F94();
    v19 = sub_25F5E47B4();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v1[31].isa;
    v22 = v1[32].isa;
    v23 = v1[29].isa;
    v24 = v1[30].isa;
    if (v20)
    {
      v25 = swift_slowAlloc();
      logc = v18;
      v26 = swift_slowAlloc();
      *v25 = 138412546;
      sub_25F58C3E0(&qword_27FD9DF10, MEMORY[0x277D0DBB0]);
      swift_allocError();
      v173 = v19;
      v27 = v1;
      v17(v28, v22, v23);
      v29 = _swift_stdlib_bridgeErrorToNSError();
      v30 = *(v24 + 1);
      v30(v22, v23);
      *(v25 + 4) = v29;
      *v26 = v29;
      v1 = v27;
      *(v25 + 12) = 2048;
      v31 = sub_25F5E3F44();
      v30(v21, v23);
      *(v25 + 14) = v31;
      _os_log_impl(&dword_25F56A000, logc, v173, "Failed to complete chat, type=GenerativeError, reason=%@, code=%ld", v25, 0x16u);
      sub_25F57C148(v26, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v26, -1, -1);
      MEMORY[0x25F8E3B70](v25, -1, -1);
    }

    else
    {
      v30 = *(v24 + 1);
      v30(v1[31].isa, v1[29].isa);

      v30(v22, v23);
    }

    v60 = v1[33].isa;
    v61 = v1[29].isa;
    v62 = v1[12].isa;
    v63 = v1[10].isa;
    v64 = sub_25F58DD74();
    sub_25F581FD8();
    swift_allocError();
    *v65 = v64;
    swift_willThrow();
    v30(v60, v61);

    goto LABEL_39;
  }

  v32 = v0[28].isa;
  v33 = v0[23].isa;

  v0[6].isa = isa;
  v34 = isa;
  if (swift_dynamicCast())
  {
    v36 = v0[27].isa;
    v35 = v1[28].isa;
    v37 = v1[23].isa;
    v38 = v1[24].isa;

    (*(v38 + 4))(v36, v35, v37);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v40 = v1[26].isa;
    v39 = v1[27].isa;
    v41 = v1;
    v44 = v1 + 24;
    v43 = v1[24].isa;
    v42 = v44[1].isa;
    v45 = v41[23].isa;
    v46 = sub_25F5E3FB4();
    __swift_project_value_buffer(v46, qword_27FD9EA20);
    v47 = *(v43 + 2);
    v47(v40, v39, v45);
    v47(v42, v39, v45);
    v48 = sub_25F5E3F94();
    v49 = sub_25F5E47B4();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v41[25].isa;
    v52 = v41[26].isa;
    log = v41;
    v55 = v41 + 23;
    v53 = v41[23].isa;
    v54 = v55[1].isa;
    if (v50)
    {
      v56 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      *v56 = 138412546;
      sub_25F58C3E0(&qword_27FD9DF08, MEMORY[0x277D29D58]);
      swift_allocError();
      v47(v57, v52, v53);
      v58 = _swift_stdlib_bridgeErrorToNSError();
      v1 = *(v54 + 1);
      (v1)(v52, v53);
      *(v56 + 4) = v58;
      *v174 = v58;
      *(v56 + 12) = 2048;
      v59 = sub_25F5E3CB4();
      (v1)(v51, v53);
      *(v56 + 14) = v59;
      _os_log_impl(&dword_25F56A000, v48, v49, "Failed to complete chat, type=ModelManagerError, reason=%@, code=%ld", v56, 0x16u);
      sub_25F57C148(v174, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v174, -1, -1);
      MEMORY[0x25F8E3B70](v56, -1, -1);
    }

    else
    {
      v1 = *(v54 + 1);
      (v1)(v51, v53);

      (v1)(v52, v53);
    }

    v91 = log[27].isa;
    v92 = sub_25F5E3CB4();
    v93 = v92 - 1000;
    if (__OFSUB__(v92, 1000))
    {
      __break(1u);
    }

    else
    {
      v94 = v92 + 19100;
      if (!__OFADD__(v93, 20100))
      {
        v95 = log[27].isa;
        v96 = log[23].isa;
        v97 = log[24].isa;
        v98 = log[12].isa;
        v99 = log[10].isa;
        v100 = sub_25F58E04C(v94);
        if (v100 == 89)
        {
          v101 = 50;
        }

        else
        {
          v101 = v100;
        }

        sub_25F581FD8();
        swift_allocError();
        *v102 = v101;
        swift_willThrow();
        (v1)(v95, v96);
        v1 = log;
        v103 = log[6].isa;
LABEL_38:

        goto LABEL_39;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v66 = v0[22].isa;
  v67 = v1[18].isa;

  v1[7].isa = isa;
  v68 = isa;
  if (swift_dynamicCast())
  {
    v70 = v1[21].isa;
    v69 = v1[22].isa;
    v71 = v1[18].isa;
    v72 = v1[19].isa;

    (*(v72 + 4))(v70, v69, v71);
    if (qword_27FD9D8B0 == -1)
    {
LABEL_15:
      v74 = v1[20].isa;
      v73 = v1[21].isa;
      v75 = v1[18].isa;
      v76 = v1[19].isa;
      v77 = sub_25F5E3FB4();
      __swift_project_value_buffer(v77, qword_27FD9EA20);
      v78 = v1;
      v79 = *(v76 + 2);
      v79(v74, v73, v75);
      v80 = sub_25F5E3F94();
      v81 = sub_25F5E47B4();
      v82 = os_log_type_enabled(v80, v81);
      v84 = v78[19].isa;
      v83 = v78[20].isa;
      loga = v78;
      v85 = v78[18].isa;
      if (v82)
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *v86 = 138412290;
        sub_25F58C3E0(&qword_27FD9DF00, MEMORY[0x277D71B08]);
        swift_allocError();
        v79(v88, v83, v85);
        v89 = _swift_stdlib_bridgeErrorToNSError();
        v90 = *(v84 + 1);
        v90(v83, v85);
        *(v86 + 4) = v89;
        *v87 = v89;
        _os_log_impl(&dword_25F56A000, v80, v81, "Failed to complete chat, type=TokenGenerationError, reason=%@", v86, 0xCu);
        sub_25F57C148(v87, &qword_27FD9DEF0, &qword_25F5E8550);
        MEMORY[0x25F8E3B70](v87, -1, -1);
        MEMORY[0x25F8E3B70](v86, -1, -1);
      }

      else
      {

        v90 = *(v84 + 1);
        v90(v83, v85);
      }

      v129 = loga[21].isa;
      v130 = loga[18].isa;
      v131 = loga[12].isa;
      v132 = loga[10].isa;
      v133 = sub_25F58E838(v129);
      sub_25F581FD8();
      swift_allocError();
      *v134 = v133;
      swift_willThrow();
      v90(v129, v130);
      v1 = loga;
      v103 = loga[7].isa;
      goto LABEL_38;
    }

LABEL_44:
    swift_once();
    goto LABEL_15;
  }

  v104 = v1[17].isa;
  v105 = v1[13].isa;

  v1[8].isa = isa;
  v106 = isa;
  if (swift_dynamicCast())
  {
    v108 = v1[16].isa;
    v107 = v1[17].isa;
    v109 = v1[13].isa;
    v110 = v1[14].isa;

    (*(v110 + 4))(v108, v107, v109);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v112 = v1[15].isa;
    v111 = v1[16].isa;
    v113 = v1[13].isa;
    v114 = v1[14].isa;
    v115 = sub_25F5E3FB4();
    __swift_project_value_buffer(v115, qword_27FD9EA20);
    v116 = v1;
    v117 = *(v114 + 2);
    v117(v112, v111, v113);
    v118 = sub_25F5E3F94();
    v119 = sub_25F5E47B4();
    v120 = os_log_type_enabled(v118, v119);
    v122 = v116[14].isa;
    v121 = v116[15].isa;
    logb = v116;
    v123 = v116[13].isa;
    if (v120)
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      *v124 = 138412290;
      sub_25F58C3E0(&qword_27FD9DEF8, MEMORY[0x277D71F10]);
      swift_allocError();
      v117(v126, v121, v123);
      v127 = _swift_stdlib_bridgeErrorToNSError();
      v128 = *(v122 + 1);
      v128(v121, v123);
      *(v124 + 4) = v127;
      *v125 = v127;
      _os_log_impl(&dword_25F56A000, v118, v119, "Failed to complete chat, type=PromptTemplateRenderError, reason=%@", v124, 0xCu);
      sub_25F57C148(v125, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v125, -1, -1);
      MEMORY[0x25F8E3B70](v124, -1, -1);
    }

    else
    {

      v128 = *(v122 + 1);
      v128(v121, v123);
    }

    v152 = logb[16].isa;
    v153 = logb[12].isa;
    v154 = logb[13].isa;
    v155 = logb[10].isa;
    sub_25F581FD8();
    swift_allocError();
    *v156 = 8;
    swift_willThrow();
    v128(v152, v154);
    v1 = logb;
    v103 = logb[8].isa;
    goto LABEL_38;
  }

  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v135 = sub_25F5E3FB4();
  __swift_project_value_buffer(v135, qword_27FD9EA20);
  v136 = isa;
  v137 = sub_25F5E3F94();
  v138 = sub_25F5E47B4();

  if (os_log_type_enabled(v137, v138))
  {
    v139 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    v181 = v141;
    *v139 = 138412546;
    v142 = isa;
    v143 = _swift_stdlib_bridgeErrorToNSError();
    *(v139 + 4) = v143;
    *v140 = v143;
    *(v139 + 12) = 2080;
    swift_getErrorValue();
    v144 = v1[2].isa;
    v145 = v1[3].isa;
    swift_getDynamicType();
    v146 = sub_25F5E4D04();
    v148 = sub_25F570AF8(v146, v147, &v181);

    *(v139 + 14) = v148;
    _os_log_impl(&dword_25F56A000, v137, v138, "Failed to complete chat, reason=%@, type=%s", v139, 0x16u);
    sub_25F57C148(v140, &qword_27FD9DEF0, &qword_25F5E8550);
    MEMORY[0x25F8E3B70](v140, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v141);
    MEMORY[0x25F8E3B70](v141, -1, -1);
    MEMORY[0x25F8E3B70](v139, -1, -1);
  }

  v149 = v1[12].isa;
  v150 = v1[10].isa;
  sub_25F581FD8();
  swift_allocError();
  *v151 = 4;
  swift_willThrow();

LABEL_39:

  v158 = v1[33].isa;
  v157 = v1[34].isa;
  v160 = v1[31].isa;
  v159 = v1[32].isa;
  v162 = v1[27].isa;
  v161 = v1[28].isa;
  p_isa = &v1->isa;
  v166 = v1 + 25;
  v165 = v1[25].isa;
  v164 = v166[1].isa;
  v167 = p_isa[21];
  v168 = p_isa[22];
  v171 = p_isa[20];
  v172 = p_isa[17];
  v175 = p_isa[16];
  logd = p_isa[15];

  v169 = p_isa[1];

  return v169();
}

uint64_t dispatch thunk of ChatPromptResponding.completeChat(userPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_25F58C4D8;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ChatPromptResponding.completeChat(bindVariables:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25F58C4D8;

  return v11(a1, a2, a3);
}

void sub_25F58BCB0()
{
  sub_25F58C230(319, &qword_27FD9DED0, MEMORY[0x277D71C58]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_25F58C230(319, &qword_27FD9DED8, MEMORY[0x277D0E698]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_25F58C230(319, &qword_27FD9DEE0, MEMORY[0x277D42E28]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of LLMInference.completeChat(userPrompt:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 224);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25F58C004;

  return v10(a1, a2);
}

uint64_t sub_25F58C004(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of LLMInference.completeChat(bindVariables:)(uint64_t a1)
{
  v4 = *(*v1 + 232);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F58C4D8;

  return v8(a1);
}

void sub_25F58C230(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25F5E47F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_25F58C3E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25F58C444()
{
  result = qword_27FD9DFB8;
  if (!qword_27FD9DFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DFB8);
  }

  return result;
}

uint64_t sub_25F58C4E0()
{
  v1 = *v0;
  v2 = 0x6E75426C65646F6DLL;
  v3 = 0x74617265706D6574;
  if (v1 != 5)
  {
    v3 = 1684366707;
  }

  v4 = 0x706D61534B706F74;
  if (v1 != 3)
  {
    v4 = 0x537375656C63756ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x4965736163657375;
  if (v1 != 1)
  {
    v5 = 0x6F4374706D6F7270;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25F58C5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F58D72C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F58C610(uint64_t a1)
{
  v2 = sub_25F58CB0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F58C64C(uint64_t a1)
{
  v2 = sub_25F58CB0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LLMInferenceConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DFC0, &qword_25F5E79C0);
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v38, v7);
  v9 = &v29 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F58CB0C();
  sub_25F5E4C74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v11 = v5;
  LOBYTE(v47) = 0;
  v12 = sub_25F5E4A94();
  v14 = v13;
  v37 = v12;
  LOBYTE(v47) = 1;
  *&v36 = sub_25F5E4A94();
  *(&v36 + 1) = v15;
  LOBYTE(v39) = 2;
  sub_25F58CB60();
  sub_25F5E4AD4();
  v34 = v47;
  v35 = v48;
  LOBYTE(v47) = 3;
  v33 = sub_25F5E4A74();
  v62 = v16 & 1;
  LOBYTE(v47) = 4;
  v32 = sub_25F5E4A64();
  v61 = v17 & 1;
  LOBYTE(v47) = 5;
  v31 = sub_25F5E4A64();
  v60 = v18 & 1;
  v63 = 6;
  v19 = sub_25F5E4A74();
  v21 = v20;
  (*(v11 + 8))(v9, v38);
  v21 &= 1u;
  v59 = v21;
  *&v39 = v37;
  *(&v39 + 1) = v14;
  v40 = v36;
  v41 = v34;
  LOBYTE(v42) = v35;
  v22 = v32;
  *(&v42 + 1) = v33;
  LODWORD(v38) = v62;
  LOBYTE(v43) = v62;
  *(&v43 + 1) = v32;
  v29 = v14;
  v30 = v61;
  LOBYTE(v44) = v61;
  v23 = v31;
  *(&v44 + 1) = v31;
  v24 = v60;
  LOBYTE(v45) = v60;
  *(&v45 + 1) = v19;
  v46 = v21;
  v25 = v42;
  *(a2 + 32) = v34;
  *(a2 + 48) = v25;
  *(a2 + 112) = v21;
  v26 = v40;
  *a2 = v39;
  *(a2 + 16) = v26;
  v27 = v45;
  *(a2 + 80) = v44;
  *(a2 + 96) = v27;
  *(a2 + 64) = v43;
  sub_25F57B740(&v39, &v47);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *&v47 = v37;
  *(&v47 + 1) = v29;
  v48 = v36;
  v49 = v34;
  v50 = v35;
  v51 = v33;
  v52 = v38;
  v53 = v22;
  v54 = v30;
  v55 = v23;
  v56 = v24;
  v57 = v19;
  v58 = v21;
  return sub_25F5767CC(&v47);
}

unint64_t sub_25F58CB0C()
{
  result = qword_27FD9DFC8;
  if (!qword_27FD9DFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DFC8);
  }

  return result;
}

unint64_t sub_25F58CB60()
{
  result = qword_27FD9DFD0;
  if (!qword_27FD9DFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DFD0);
  }

  return result;
}

uint64_t LLMInferenceConfig.updateFilePaths(_:)(uint64_t result)
{
  v2 = v1;
  if (*(v1 + 48) == 3)
  {
    v3 = result;
    v4 = *(v1 + 32);
    v5 = *(v1 + 40);

    v6 = v3(v4, v5);
    if (v7)
    {
      v8 = v6;
      v9 = v7;
      sub_25F581A78(v4, v5, 3u);
      v4 = v8;
      v5 = v9;
    }

    result = sub_25F581A78(*(v2 + 32), *(v2 + 40), *(v2 + 48));
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    *(v2 + 48) = 3;
  }

  return result;
}

uint64_t sub_25F58CC74()
{
  v1 = *v0;
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

uint64_t sub_25F58CD5C()
{
  *v0;
  *v0;
  *v0;
  sub_25F5E4334();
}

uint64_t sub_25F58CE30()
{
  v1 = *v0;
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

uint64_t sub_25F58CF14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F58D998();
  *a2 = result;
  return result;
}

void sub_25F58CF44(unint64_t *a1@<X8>)
{
  v2 = 0xEC00000074706D6FLL;
  v3 = 0x72506D6574737953;
  v4 = 0xEE006574616C706DLL;
  v5 = 0x655474706D6F7250;
  if (*v1 != 2)
  {
    v5 = 0x694674706D6F7250;
    v4 = 0xEE0068746150656CLL;
  }

  if (*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x800000025F5EBFB0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_25F58CFE8()
{
  v1 = 0x72506D6574737953;
  v2 = 0x655474706D6F7250;
  if (*v0 != 2)
  {
    v2 = 0x694674706D6F7250;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25F58D088@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25F58D998();
  *a1 = result;
  return result;
}

uint64_t sub_25F58D0B0(uint64_t a1)
{
  v2 = sub_25F58D39C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F58D0EC(uint64_t a1)
{
  v2 = sub_25F58D39C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PromptConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DFD8, &qword_25F5E79C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F58D39C();
  sub_25F5E4C74();
  if (!v2)
  {
    v17 = 0;
    v12 = sub_25F5E4A94();
    v14 = v13;
    (*(v6 + 8))(v10, v5);
    *a2 = v12;
    *(a2 + 8) = v14;
    *(a2 + 16) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_25F58D39C()
{
  result = qword_27FD9DFE0;
  if (!qword_27FD9DFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DFE0);
  }

  return result;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_25F58D434(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_25F58D47C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F58D520()
{
  result = qword_27FD9DFE8;
  if (!qword_27FD9DFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DFE8);
  }

  return result;
}

unint64_t sub_25F58D578()
{
  result = qword_27FD9DFF0;
  if (!qword_27FD9DFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DFF0);
  }

  return result;
}

unint64_t sub_25F58D5D0()
{
  result = qword_27FD9DFF8;
  if (!qword_27FD9DFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9DFF8);
  }

  return result;
}

unint64_t sub_25F58D628()
{
  result = qword_27FD9E000;
  if (!qword_27FD9E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E000);
  }

  return result;
}

unint64_t sub_25F58D680()
{
  result = qword_27FD9E008;
  if (!qword_27FD9E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E008);
  }

  return result;
}

unint64_t sub_25F58D6D8()
{
  result = qword_27FD9E010;
  if (!qword_27FD9E010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E010);
  }

  return result;
}

uint64_t sub_25F58D72C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E75426C65646F6DLL && a2 == 0xED00004449656C64;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4965736163657375 && a2 == 0xE900000000000064 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4374706D6F7270 && a2 == 0xEC0000006769666ELL || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x706D61534B706F74 && a2 == 0xEC000000676E696CLL || (sub_25F5E4B84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x537375656C63756ELL && a2 == 0xEF676E696C706D61 || (sub_25F5E4B84() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275 || (sub_25F5E4B84() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1684366707 && a2 == 0xE400000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_25F5E4B84();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_25F58D998()
{
  v0 = sub_25F5E4A14();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for LLMInferenceError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xA8)
  {
    goto LABEL_17;
  }

  if (a2 + 88 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 88) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 88;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 88;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 88;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x59;
  v8 = v6 - 89;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LLMInferenceError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 88 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 88) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xA8)
  {
    v4 = 0;
  }

  if (a2 > 0xA7)
  {
    v5 = ((a2 - 168) >> 8) + 1;
    *result = a2 + 88;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 88;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25F58DB58()
{
  v1 = *v0;
  sub_25F5E4C34();
  MEMORY[0x25F8E3300](qword_25F5E7F10[v1]);
  return sub_25F5E4C54();
}

uint64_t sub_25F58DBE0()
{
  v1 = *v0;
  sub_25F5E4C34();
  MEMORY[0x25F8E3300](qword_25F5E7F10[v1]);
  return sub_25F5E4C54();
}

uint64_t sub_25F58DC2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F58E04C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_25F58DC74()
{
  result = qword_27FD9E018;
  if (!qword_27FD9E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E018);
  }

  return result;
}

uint64_t sub_25F58DCC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F58DD20();
  v5 = sub_25F5739D8();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

unint64_t sub_25F58DD20()
{
  result = qword_27FD9E020;
  if (!qword_27FD9E020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E020);
  }

  return result;
}

uint64_t sub_25F58DD74()
{
  v0 = sub_25F5E3F44();
  if (v0 > 5020099)
  {
    if (v0 > 5039999)
    {
      if (v0 > 7009999)
      {
        switch(v0)
        {
          case 7010000:
            return 72;
          case 8010000:
            return 73;
          case 9010000:
            return 74;
        }
      }

      else
      {
        switch(v0)
        {
          case 5040000:
            return 69;
          case 5050000:
            return 70;
          case 6010000:
            return 71;
        }
      }
    }

    else if (v0 > 5020399)
    {
      switch(v0)
      {
        case 5020400:
          return 66;
        case 5020500:
          return 67;
        case 5030000:
          return 68;
      }
    }

    else
    {
      switch(v0)
      {
        case 5020100:
          return 63;
        case 5020200:
          return 64;
        case 5020300:
          return 65;
      }
    }
  }

  else if (v0 > 4019999)
  {
    if (v0 > 4049999)
    {
      switch(v0)
      {
        case 4050000:
          return 60;
        case 4060000:
          return 61;
        case 5010000:
          return 62;
      }
    }

    else
    {
      switch(v0)
      {
        case 4020000:
          return 57;
        case 4030000:
          return 58;
        case 4040000:
          return 59;
      }
    }
  }

  else if (v0 > 2009999)
  {
    switch(v0)
    {
      case 2010000:
        return 54;
      case 3010000:
        return 55;
      case 4010000:
        return 56;
    }
  }

  else
  {
    switch(v0)
    {
      case 1010000:
        return 51;
      case 1020000:
        return 52;
      case 1030000:
        return 53;
    }
  }

  return 75;
}

uint64_t sub_25F58E04C(uint64_t a1)
{
  v1 = a1 - 20000;
  result = 1;
  switch(v1)
  {
    case 0:
      result = 0;
      break;
    case 1:
      return result;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    case 4:
      result = 4;
      break;
    case 5:
      result = 5;
      break;
    case 6:
      result = 6;
      break;
    case 7:
      result = 7;
      break;
    case 8:
      result = 8;
      break;
    case 9:
      result = 9;
      break;
    case 10:
      result = 10;
      break;
    case 101:
      result = 11;
      break;
    case 102:
      result = 12;
      break;
    case 103:
      result = 13;
      break;
    case 104:
      result = 14;
      break;
    case 105:
      result = 15;
      break;
    case 106:
      result = 16;
      break;
    case 107:
      result = 17;
      break;
    case 108:
      result = 18;
      break;
    case 109:
      result = 19;
      break;
    case 110:
      result = 20;
      break;
    case 111:
      result = 21;
      break;
    case 112:
      result = 22;
      break;
    case 113:
      result = 23;
      break;
    case 114:
      result = 24;
      break;
    case 115:
      result = 25;
      break;
    case 116:
      result = 26;
      break;
    case 117:
      result = 27;
      break;
    case 118:
      result = 28;
      break;
    case 119:
      result = 29;
      break;
    case 120:
      result = 30;
      break;
    case 121:
      result = 31;
      break;
    case 122:
      result = 32;
      break;
    case 123:
      result = 33;
      break;
    case 124:
      result = 34;
      break;
    case 125:
      result = 35;
      break;
    case 126:
      result = 36;
      break;
    case 127:
      result = 37;
      break;
    case 128:
      result = 38;
      break;
    case 129:
      result = 39;
      break;
    case 130:
      result = 40;
      break;
    case 131:
      result = 41;
      break;
    case 132:
      result = 42;
      break;
    case 133:
      result = 43;
      break;
    case 134:
      result = 44;
      break;
    case 135:
      result = 45;
      break;
    case 136:
      result = 46;
      break;
    case 137:
      result = 47;
      break;
    case 138:
      result = 48;
      break;
    case 139:
      result = 49;
      break;
    case 199:
      result = 50;
      break;
    case 201:
      result = 51;
      break;
    case 202:
      result = 52;
      break;
    case 203:
      result = 53;
      break;
    case 204:
      result = 54;
      break;
    case 205:
      result = 55;
      break;
    case 206:
      result = 56;
      break;
    case 207:
      result = 57;
      break;
    case 208:
      result = 58;
      break;
    case 209:
      result = 59;
      break;
    case 210:
      result = 60;
      break;
    case 211:
      result = 61;
      break;
    case 212:
      result = 62;
      break;
    case 213:
      result = 63;
      break;
    case 214:
      result = 64;
      break;
    case 215:
      result = 65;
      break;
    case 216:
      result = 66;
      break;
    case 217:
      result = 67;
      break;
    case 218:
      result = 68;
      break;
    case 219:
      result = 69;
      break;
    case 220:
      result = 70;
      break;
    case 221:
      result = 71;
      break;
    case 222:
      result = 72;
      break;
    case 223:
      result = 73;
      break;
    case 224:
      result = 74;
      break;
    case 299:
      result = 75;
      break;
    case 301:
      result = 76;
      break;
    case 302:
      result = 77;
      break;
    case 303:
      result = 78;
      break;
    case 304:
      result = 79;
      break;
    case 305:
      result = 80;
      break;
    case 306:
      result = 81;
      break;
    case 307:
      result = 82;
      break;
    case 308:
      result = 83;
      break;
    case 309:
      result = 84;
      break;
    case 311:
      result = 85;
      break;
    case 313:
      result = 86;
      break;
    case 314:
      result = 87;
      break;
    case 315:
      result = 88;
      break;
    default:
      result = 89;
      break;
  }

  return result;
}

uint64_t sub_25F58E838(uint64_t a1)
{
  v2 = sub_25F5E39F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277D71AF8])
  {
    (*(v3 + 8))(v7, v2);
    return 76;
  }

  else if (v8 == *MEMORY[0x277D71AC0])
  {
    (*(v3 + 8))(v7, v2);
    return 77;
  }

  else if (v8 == *MEMORY[0x277D71AB0])
  {
    (*(v3 + 8))(v7, v2);
    return 78;
  }

  else if (v8 == *MEMORY[0x277D71AC8])
  {
    (*(v3 + 96))(v7, v2);
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E030, &unk_25F5E7F00) + 64);
    v11 = sub_25F5E39E4();
    (*(*(v11 - 8) + 8))(&v7[v10], v11);
    return 79;
  }

  else if (v8 == *MEMORY[0x277D71B00])
  {
    (*(v3 + 8))(v7, v2);
    return 80;
  }

  else if (v8 == *MEMORY[0x277D71AF0])
  {
    (*(v3 + 8))(v7, v2);
    return 81;
  }

  else if (v8 == *MEMORY[0x277D71AA8])
  {
    (*(v3 + 96))(v7, v2);
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E028, &qword_25F5E7EF8) + 48);
    v13 = sub_25F5E39E4();
    (*(*(v13 - 8) + 8))(&v7[v12], v13);
    v14 = sub_25F5E3AE4();
    (*(*(v14 - 8) + 8))(v7, v14);
    return 82;
  }

  else if (v8 == *MEMORY[0x277D71AD0])
  {
    (*(v3 + 8))(v7, v2);
    return 83;
  }

  else if (v8 == *MEMORY[0x277D71AE0])
  {
    (*(v3 + 8))(v7, v2);
    return 84;
  }

  else if (v8 == *MEMORY[0x277D71AA0])
  {
    (*(v3 + 8))(v7, v2);
    return 85;
  }

  else if (v8 == *MEMORY[0x277D71AB8])
  {
    (*(v3 + 8))(v7, v2);
    return 86;
  }

  else
  {
    v15 = *MEMORY[0x277D71AE8];
    v16 = v8;
    (*(v3 + 8))(v7, v2);
    if (v16 == v15)
    {
      return 87;
    }

    else
    {
      return 88;
    }
  }
}

unint64_t sub_25F58EC68(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E75426C65646F6DLL;
    v6 = 0x6F4374706D6F7270;
    if (a1 != 2)
    {
      v6 = 0x616C436567616D69;
    }

    if (a1)
    {
      v5 = 0x4965736163657375;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x537375656C63756ELL;
    v2 = 0x74617265706D6574;
    if (a1 != 7)
    {
      v2 = 1684366707;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0x706D61534B706F74;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_25F58EDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F598430(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F58EDFC(uint64_t a1)
{
  v2 = sub_25F58F3C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F58EE38(uint64_t a1)
{
  v2 = sub_25F58F3C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MultiModalLLMInferenceConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E038, &unk_25F5E81F0);
  v5 = *(v53 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v53, v7);
  v9 = &v38 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F58F3C8();
  v54 = v9;
  sub_25F5E4C74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v11 = v5;
  LOBYTE(v65) = 0;
  v12 = v53;
  v13 = sub_25F5E4A94();
  v52 = v14;
  LOBYTE(v65) = 1;
  v15 = sub_25F5E4A94();
  v51 = v16;
  v49 = v15;
  v50 = v13;
  LOBYTE(v55) = 2;
  sub_25F58CB60();
  sub_25F5E4AD4();
  v17 = a1;
  v47 = v66;
  v48 = v65;
  v46 = v67;
  LOBYTE(v65) = 3;
  v18 = sub_25F5E4A74();
  v89 = v19 & 1;
  LOBYTE(v65) = 4;
  v20 = sub_25F5E4A74();
  v88 = v21 & 1;
  LOBYTE(v65) = 5;
  v45 = sub_25F5E4A74();
  v87 = v22 & 1;
  LOBYTE(v65) = 6;
  v44 = sub_25F5E4A64();
  v86 = v23 & 1;
  LOBYTE(v65) = 7;
  v42 = sub_25F5E4A64();
  v85 = v24 & 1;
  v90 = 8;
  v43 = sub_25F5E4A74();
  v26 = v25;
  (*(v11 + 8))(v54, v12);
  v84 = v26 & 1;
  *&v55 = v50;
  *(&v55 + 1) = v52;
  *&v56 = v49;
  *(&v56 + 1) = v51;
  *&v57 = v48;
  *(&v57 + 1) = v47;
  LOBYTE(v58) = v46;
  *(&v58 + 1) = v18;
  LODWORD(v54) = v89;
  LOBYTE(v59) = v89;
  v27 = v20;
  *(&v59 + 1) = v20;
  LODWORD(v53) = v88;
  LOBYTE(v60) = v88;
  *(&v60 + 1) = v45;
  v41 = v87;
  LOBYTE(v61) = v87;
  v28 = v43;
  *(&v61 + 1) = v44;
  v40 = v86;
  LOBYTE(v62) = v86;
  v39 = v18;
  v29 = v42;
  *(&v62 + 1) = v42;
  LOBYTE(v12) = v85;
  LOBYTE(v63) = v85;
  *(&v63 + 1) = v43;
  LOBYTE(v20) = v84;
  v64 = v84;
  v31 = v61;
  v30 = v62;
  v32 = v63;
  *(a2 + 144) = v84;
  *(a2 + 112) = v30;
  *(a2 + 128) = v32;
  v33 = v56;
  *a2 = v55;
  *(a2 + 16) = v33;
  v34 = v57;
  v35 = v58;
  v36 = v59;
  *(a2 + 80) = v60;
  *(a2 + 96) = v31;
  *(a2 + 48) = v35;
  *(a2 + 64) = v36;
  *(a2 + 32) = v34;
  sub_25F58F41C(&v55, &v65);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  v65 = v50;
  v66 = v52;
  v67 = v49;
  v68 = v51;
  v69 = v48;
  v70 = v47;
  v71 = v46;
  v72 = v39;
  v73 = v54;
  v74 = v27;
  v75 = v53;
  v76 = v45;
  v77 = v41;
  v78 = v44;
  v79 = v40;
  v80 = v29;
  v81 = v12;
  v82 = v28;
  v83 = v20;
  return sub_25F58F454(&v65);
}

unint64_t sub_25F58F3C8()
{
  result = qword_27FD9E040;
  if (!qword_27FD9E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E040);
  }

  return result;
}

uint64_t MultiModalLLMInferenceConfig.updateFilePaths(_:)(uint64_t result)
{
  v2 = v1;
  if (*(v1 + 48) == 3)
  {
    v3 = result;
    v4 = *(v1 + 32);
    v5 = *(v1 + 40);

    v6 = v3(v4, v5);
    if (v7)
    {
      v8 = v6;
      v9 = v7;
      sub_25F581A78(v4, v5, 3u);
      v4 = v8;
      v5 = v9;
    }

    result = sub_25F581A78(*(v2 + 32), *(v2 + 40), *(v2 + 48));
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    *(v2 + 48) = 3;
  }

  return result;
}

char *MultiModalLLMInference.__allocating_init(modelBundleID:usecaseId:promptConfig:imageClampSize:topKSampling:nucleusSampling:temperature:seed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  v168 = a4;
  v17 = v16;
  LODWORD(v163) = a8;
  v161 = a6;
  v162 = a7;
  v165 = a3;
  v170 = a2;
  v20 = sub_25F5E3884();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v158 = v151 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE80, &unk_25F5E7800);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8, v26);
  v159 = v151 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE70, &qword_25F5E77F0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8, v30);
  v160 = v151 - v31;
  v32 = sub_25F5E4444();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8, v34);
  v157 = v151 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE78, &qword_25F5E77F8);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8, v38);
  v156 = v151 - v39;
  v40 = sub_25F5E3AD4();
  v164 = *(v40 - 8);
  v41 = *(v164 + 64);
  v43 = MEMORY[0x28223BE20](v40, v42);
  v45 = v151 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43, v46);
  v48 = v151 - v47;
  v49 = *(v17 + 48);
  v50 = *(v17 + 52);
  v166 = v17;
  v169 = swift_allocObject();
  v51 = *a5;
  v52 = *(a5 + 8);
  v53 = *(a5 + 16);
  v54 = a1;
  v55 = a1;
  v56 = v170;
  v57 = v167;
  sub_25F580714(v55, v170);
  if (!v57)
  {
    v155 = v53;
    v167 = v51;
    v153 = v45;
    v154 = v40;
    static MultiModalLLMInference.getSessionConfig(modelBundleID:usecaseId:)(v54, v56, v165, v168, v48);

    v62 = sub_25F5E3864();
    v63 = *(v62 + 48);
    v64 = *(v62 + 52);
    swift_allocObject();
    v168 = sub_25F5E3854();
    v65 = sub_25F5E3844();
    v66 = v52;
    v58 = v169;
    v67 = v65;
    v151[2] = v54;
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v68 = sub_25F5E3FB4();
    v69 = __swift_project_value_buffer(v68, qword_27FD9EA20);
    v70 = v67;
    v151[1] = v69;
    v71 = sub_25F5E3F94();
    v72 = sub_25F5E47A4();

    v73 = os_log_type_enabled(v71, v72);
    v165 = 0;
    if (v73)
    {
      v74 = swift_slowAlloc();
      v151[0] = v48;
      v75 = v72;
      v76 = v74;
      v77 = swift_slowAlloc();
      v172 = v77;
      *v76 = 136315138;
      v171 = v70;
      sub_25F5E38A4();
      v78 = v70;
      v79 = sub_25F5E4474();
      v81 = sub_25F570AF8(v79, v80, &v172);
      v66 = v52;

      *(v76 + 4) = v81;
      v82 = v75;
      v48 = v151[0];
      _os_log_impl(&dword_25F56A000, v71, v82, "Multimodal model's resource information: %s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v77);
      MEMORY[0x25F8E3B70](v77, -1, -1);
      MEMORY[0x25F8E3B70](v76, -1, -1);
    }

    v83 = sub_25F5E3894();
    if (!v83)
    {
      v85 = 0xE700000000000000;
      v89 = 0x6E776F6E6B6E75;
      goto LABEL_18;
    }

    v84 = v83;
    if (*(v83 + 16))
    {
      v85 = 0xE700000000000000;
      v86 = sub_25F5709C8(0x6E6F6973726576, 0xE700000000000000);
      if (v87)
      {
        v88 = (*(v84 + 56) + 16 * v86);
        v89 = *v88;
        v85 = v88[1];

LABEL_17:

LABEL_18:
        v90 = v163;
        v92 = v161;
        v91 = v162;
        v93 = &v58[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference__modelVersion];
        *v93 = v89;
        v93[1] = v85;
        v94 = &v58[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_imageClampSize];
        *v94 = v92;
        *(v94 + 1) = v91;
        v94[16] = v90 & 1;
        v95 = v155;
        if (v155 <= 1)
        {
          v152 = v70;
          if (v155)
          {

            v109 = sub_25F5E3F94();
            v110 = sub_25F5E4794();
            if (os_log_type_enabled(v109, v110))
            {
              v111 = swift_slowAlloc();
              v112 = swift_slowAlloc();
              v172 = v112;
              *v111 = 136315138;
              *(v111 + 4) = sub_25F570AF8(v167, v66, &v172);
              _os_log_impl(&dword_25F56A000, v109, v110, "Using prompt_template_id=%s", v111, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v112);
              MEMORY[0x25F8E3B70](v112, -1, -1);
              MEMORY[0x25F8E3B70](v111, -1, -1);
            }

            v113 = v159;
            v114 = v165;
            sub_25F5E3874();
            v115 = v167;
            if (v114)
            {

              sub_25F581A78(v115, v66, 1u);
              sub_25F581A78(v115, v66, 1u);

              (*(v164 + 8))(v48, v154);
              v116 = v93[1];

              goto LABEL_4;
            }

            v163 = v93;
            v165 = 0;
            sub_25F5E3D54();
            sub_25F581A78(v115, v66, 1u);
            v131 = sub_25F5E3D64();
            (*(*(v131 - 8) + 56))(v113, 0, 1, v131);
            sub_25F57B86C(v113, &v58[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate], &qword_27FD9DE80, &unk_25F5E7800);
            v132 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate;
            v133 = sub_25F5E4244();
            (*(*(v133 - 8) + 56))(&v58[v132], 1, 1, v133);
            v134 = &v58[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt];
            *v134 = 0;
            *(v134 + 1) = 0;
          }

          else
          {
            v163 = v93;

            v96 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate;
            v97 = sub_25F5E3D64();
            (*(*(v97 - 8) + 56))(&v58[v96], 1, 1, v97);
            v98 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate;
            v99 = sub_25F5E4244();
            (*(*(v99 - 8) + 56))(&v58[v98], 1, 1, v99);
            v100 = &v58[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt];
            *v100 = v167;
            *(v100 + 1) = v66;
          }

          v129 = v164;
          v130 = v154;
          goto LABEL_36;
        }

        v163 = v93;
        if (v155 == 2)
        {

          v101 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate;
          v102 = sub_25F5E3D64();
          (*(*(v102 - 8) + 56))(&v58[v101], 1, 1, v102);

          v103 = v156;
          v104 = v58;
          v105 = v167;
          v106 = v165;
          sub_25F5E4214();
          if (v106)
          {
            v107 = 0;
            v108 = v154;
            goto LABEL_30;
          }

          v152 = v70;
          v165 = 0;
          sub_25F581A78(v105, v66, 2u);
          v127 = sub_25F5E4244();
          (*(*(v127 - 8) + 56))(v103, 0, 1, v127);
          sub_25F57B86C(v103, &v104[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate], &qword_27FD9DE78, &qword_25F5E77F8);
          v128 = &v104[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt];
          *v128 = 0;
          *(v128 + 1) = 0;
          v129 = v164;
          v130 = v154;
          v58 = v104;
        }

        else
        {

          v117 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate;
          v118 = sub_25F5E3D64();
          v107 = 1;
          (*(*(v118 - 8) + 56))(&v58[v117], 1, 1, v118);
          v119 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate;
          v120 = sub_25F5E4244();
          (*(*(v120 - 8) + 56))(&v58[v119], 1, 1, v120);
          sub_25F5E4424();
          v121 = v58;
          v122 = v167;
          v123 = v165;
          v124 = sub_25F5E43B4();
          v165 = v123;
          if (v123)
          {
            v108 = v154;
            v95 = v155;
LABEL_30:

            sub_25F581A78(v167, v66, v95);
            (*(v164 + 8))(v48, v108);
            v126 = v163[1];

            v58 = v169;
            sub_25F57C148(v169 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate, &qword_27FD9DE80, &unk_25F5E7800);
            if (!v107)
            {
              goto LABEL_4;
            }

            goto LABEL_45;
          }

          v135 = v124;
          v136 = v125;
          v152 = v70;
          sub_25F581A78(v122, v66, 3u);
          v137 = &v121[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt];
          *v137 = v135;
          v137[1] = v136;
          v129 = v164;
          v130 = v154;
          v58 = v121;
        }

LABEL_36:
        (*(v129 + 16))(v153, v48, v130);
        v138 = sub_25F5E39D4();
        v139 = *(v138 + 48);
        v140 = *(v138 + 52);
        swift_allocObject();
        *(v58 + 2) = sub_25F5E39C4();
        if (a10)
        {
          v141 = v160;
          if (a12)
          {
            (*(v129 + 8))(v48, v130);

            v142 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy;
            v143 = sub_25F5E3A64();
            (*(*(v143 - 8) + 56))(&v58[v142], 1, 1, v143);
LABEL_43:
            v145 = &v58[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_temperature];
            *v145 = a13;
            v145[8] = a14 & 1;
            v146 = &v58[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_seed];
            *v146 = a15;
            v146[8] = a16 & 1;
            return v58;
          }

          sub_25F5E3A44();
LABEL_42:

          (*(v129 + 8))(v48, v130);
          v144 = sub_25F5E3A64();
          (*(*(v144 - 8) + 56))(v141, 0, 1, v144);
          sub_25F57B86C(v141, &v58[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy], &qword_27FD9DE70, &qword_25F5E77F0);
          goto LABEL_43;
        }

        v141 = v160;
        if (a12)
        {
          sub_25F5E3A54();
          goto LABEL_42;
        }

        sub_25F581FD8();
        swift_allocError();
        *v147 = 5;
        swift_willThrow();

        (*(v129 + 8))(v48, v130);
        v148 = *(v58 + 2);

        v149 = v163[1];

        v150 = *&v58[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt + 8];

        sub_25F57C148(&v58[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate], &qword_27FD9DE80, &unk_25F5E7800);
LABEL_45:
        sub_25F57C148(&v58[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate], &qword_27FD9DE78, &qword_25F5E77F8);
        goto LABEL_4;
      }
    }

    else
    {
      v85 = 0xE700000000000000;
    }

    v89 = 0x6E776F6E6B6E75;
    goto LABEL_17;
  }

  sub_25F581A78(v51, v52, v53);
  v58 = v169;
LABEL_4:
  v59 = *(*v58 + 48);
  v60 = *(*v58 + 52);
  swift_deallocPartialClassInstance();
  return v58;
}

char *MultiModalLLMInference.init(modelBundleID:usecaseId:promptConfig:imageClampSize:topKSampling:nucleusSampling:temperature:seed:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  v158 = a4;
  v159 = a2;
  LODWORD(v153) = a8;
  v151 = a6;
  v152 = a7;
  v155 = a3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE70, &qword_25F5E77F0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v150 = &v141 - v21;
  v22 = sub_25F5E4444();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v148 = &v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE78, &qword_25F5E77F8);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v147 = &v141 - v29;
  v30 = sub_25F5E3884();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8, v32);
  v149 = &v141 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE80, &unk_25F5E7800);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8, v36);
  v38 = &v141 - v37;
  v39 = sub_25F5E3AD4();
  v154 = *(v39 - 8);
  v40 = *(v154 + 64);
  v42 = MEMORY[0x28223BE20](v39, v41);
  v44 = &v141 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v45);
  v47 = &v141 - v46;
  v49 = *a5;
  v48 = *(a5 + 8);
  v50 = *(a5 + 16);
  v156 = a1;
  v51 = v159;
  v52 = v157;
  sub_25F580714(a1, v159);
  if (!v52)
  {
    v145 = v50;
    v142 = v38;
    v143 = v44;
    v146 = v49;
    v157 = v48;
    v144 = v39;
    type metadata accessor for MultiModalLLMInference();
    static MultiModalLLMInference.getSessionConfig(modelBundleID:usecaseId:)(v156, v51, v155, v158, v47);
    v155 = v47;

    v53 = sub_25F5E3864();
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    swift_allocObject();
    v158 = sub_25F5E3854();
    v56 = sub_25F5E3844();
    v57 = v146;
    v58 = v145;
    v63 = v56;
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v64 = sub_25F5E3FB4();
    v65 = __swift_project_value_buffer(v64, qword_27FD9EA20);
    v66 = v63;
    v141 = v65;
    v67 = sub_25F5E3F94();
    v68 = sub_25F5E47A4();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v162 = v70;
      *v69 = 136315138;
      v161 = v66;
      sub_25F5E38A4();
      v71 = v66;
      v72 = sub_25F5E4474();
      v74 = v66;
      v75 = v67;
      v76 = sub_25F570AF8(v72, v73, &v162);

      *(v69 + 4) = v76;
      v57 = v146;
      _os_log_impl(&dword_25F56A000, v75, v68, "Multimodal model's resource information: %s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      MEMORY[0x25F8E3B70](v70, -1, -1);
      MEMORY[0x25F8E3B70](v69, -1, -1);

      v66 = v74;
      v58 = v145;
    }

    else
    {
    }

    v77 = sub_25F5E3894();
    if (!v77)
    {
      v79 = 0xE700000000000000;
      v83 = 0x6E776F6E6B6E75;
      goto LABEL_19;
    }

    v78 = v77;
    if (*(v77 + 16))
    {
      v79 = 0xE700000000000000;
      v80 = sub_25F5709C8(0x6E6F6973726576, 0xE700000000000000);
      if (v81)
      {
        v82 = (*(v78 + 56) + 16 * v80);
        v83 = *v82;
        v79 = v82[1];

LABEL_18:

LABEL_19:
        v84 = v153;
        v86 = v151;
        v85 = v152;
        v87 = v160;
        v88 = (v160 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference__modelVersion);
        *v88 = v83;
        v88[1] = v79;
        v153 = v88;
        v89 = v87 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_imageClampSize;
        *v89 = v86;
        *(v89 + 8) = v85;
        *(v89 + 16) = v84 & 1;
        v90 = v143;
        if (v58 > 1)
        {
          v156 = v66;
          if (v58 != 2)
          {

            v110 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate;
            v111 = sub_25F5E3D64();
            v59 = v160;
            (*(*(v111 - 8) + 56))(v160 + v110, 1, 1, v111);
            v112 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate;
            v113 = sub_25F5E4244();
            (*(*(v113 - 8) + 56))(&v59[v112], 1, 1, v113);
            sub_25F5E4424();
            v114 = v157;
            v124 = sub_25F5E43B4();
            v126 = v125;
            sub_25F581A78(v57, v114, 3u);
            v127 = &v59[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt];
            *v127 = v124;
            v127[1] = v126;
            v123 = v154;
            v90 = v143;
            v108 = v144;
            goto LABEL_29;
          }

          v97 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate;
          v98 = sub_25F5E3D64();
          v59 = v160;
          (*(*(v98 - 8) + 56))(v160 + v97, 1, 1, v98);
          v99 = v157;

          v100 = v147;
          sub_25F5E4214();
          sub_25F581A78(v57, v99, 2u);
          v115 = sub_25F5E4244();
          (*(*(v115 - 8) + 56))(v100, 0, 1, v115);
          sub_25F57B86C(v100, &v59[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate], &qword_27FD9DE78, &qword_25F5E77F8);
          v116 = &v59[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt];
          *v116 = 0;
          *(v116 + 1) = 0;
        }

        else
        {
          if (v58)
          {
            v101 = v157;

            v102 = sub_25F5E3F94();
            v103 = sub_25F5E4794();
            if (os_log_type_enabled(v102, v103))
            {
              v104 = swift_slowAlloc();
              v105 = v66;
              v106 = swift_slowAlloc();
              v162 = v106;
              *v104 = 136315138;
              *(v104 + 4) = sub_25F570AF8(v57, v101, &v162);
              _os_log_impl(&dword_25F56A000, v102, v103, "Using prompt_template_id=%s", v104, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v106);
              v107 = v106;
              v66 = v105;
              MEMORY[0x25F8E3B70](v107, -1, -1);
              MEMORY[0x25F8E3B70](v104, -1, -1);
            }

            v108 = v144;
            v109 = v142;
            sub_25F5E3874();
            v90 = v143;
            v156 = v66;
            v117 = v146;
            v118 = v157;
            sub_25F5E3D54();
            sub_25F581A78(v117, v118, 1u);
            v119 = sub_25F5E3D64();
            (*(*(v119 - 8) + 56))(v109, 0, 1, v119);
            v59 = v160;
            sub_25F57B86C(v109, v160 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate, &qword_27FD9DE80, &unk_25F5E7800);
            v120 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate;
            v121 = sub_25F5E4244();
            (*(*(v121 - 8) + 56))(&v59[v120], 1, 1, v121);
            v122 = &v59[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt];
            *v122 = 0;
            *(v122 + 1) = 0;
            v123 = v154;
LABEL_29:
            (*(v123 + 16))(v90, v155, v108);
            v128 = sub_25F5E39D4();
            v129 = *(v128 + 48);
            v130 = *(v128 + 52);
            swift_allocObject();
            *(v59 + 2) = sub_25F5E39C4();
            if (a10)
            {
              v131 = v150;
              if (a12)
              {
                (*(v123 + 8))(v155, v108);

                v132 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy;
                v133 = sub_25F5E3A64();
                (*(*(v133 - 8) + 56))(&v59[v132], 1, 1, v133);
LABEL_36:
                v135 = &v59[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_temperature];
                *v135 = a13;
                v135[8] = a14 & 1;
                v136 = &v59[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_seed];
                *v136 = a15;
                v136[8] = a16 & 1;
                return v59;
              }

              sub_25F5E3A44();
            }

            else
            {
              v131 = v150;
              if ((a12 & 1) == 0)
              {
                sub_25F581FD8();
                swift_allocError();
                *v137 = 5;
                swift_willThrow();

                (*(v123 + 8))(v155, v108);
                v138 = *(v59 + 2);

                v139 = v153[1];

                v140 = *&v59[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt + 8];

                sub_25F57C148(&v59[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate], &qword_27FD9DE80, &unk_25F5E7800);
                sub_25F57C148(&v59[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate], &qword_27FD9DE78, &qword_25F5E77F8);
                goto LABEL_4;
              }

              sub_25F5E3A54();
            }

            (*(v123 + 8))(v155, v108);
            v134 = sub_25F5E3A64();
            (*(*(v134 - 8) + 56))(v131, 0, 1, v134);
            sub_25F57B86C(v131, &v59[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy], &qword_27FD9DE70, &qword_25F5E77F0);
            goto LABEL_36;
          }

          v156 = v66;

          v91 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate;
          v92 = sub_25F5E3D64();
          v59 = v160;
          (*(*(v92 - 8) + 56))(v160 + v91, 1, 1, v92);
          v93 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate;
          v94 = sub_25F5E4244();
          (*(*(v94 - 8) + 56))(&v59[v93], 1, 1, v94);
          v95 = &v59[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt];
          v96 = v157;
          *v95 = v57;
          v95[1] = v96;
        }

        v123 = v154;
        v108 = v144;
        goto LABEL_29;
      }
    }

    else
    {
      v79 = 0xE700000000000000;
    }

    v83 = 0x6E776F6E6B6E75;
    goto LABEL_18;
  }

  sub_25F581A78(v49, v48, v50);
  v59 = v160;
LABEL_4:
  type metadata accessor for MultiModalLLMInference();
  v60 = *(*v59 + 48);
  v61 = *(*v59 + 52);
  swift_deallocPartialClassInstance();
  return v59;
}

uint64_t static MultiModalLLMInference.getSessionConfig(modelBundleID:usecaseId:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a5;
  v42 = a4;
  v9 = sub_25F5E3A14();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEB0, qword_25F5E8200);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = v39 - v15;
  v17 = sub_25F5E3A34();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);

  v40 = a1;
  sub_25F5E3A24();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_25F57C148(v16, &qword_27FD9DEB0, qword_25F5E8200);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v23 = sub_25F5E3FB4();
    __swift_project_value_buffer(v23, qword_27FD9EA20);

    v24 = sub_25F5E3F94();
    v25 = sub_25F5E47B4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v43 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_25F570AF8(v40, a2, &v43);
      _os_log_impl(&dword_25F56A000, v24, v25, "Failed to get model bundle %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x25F8E3B70](v27, -1, -1);
      MEMORY[0x25F8E3B70](v26, -1, -1);
    }

    sub_25F581FD8();
    swift_allocError();
    *v28 = 0;
    return swift_willThrow();
  }

  else
  {
    v39[1] = a3;
    (*(v18 + 32))(v22, v16, v17);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v39[2] = v5;
    v30 = sub_25F5E3FB4();
    __swift_project_value_buffer(v30, qword_27FD9EA20);

    v31 = sub_25F5E3F94();
    v32 = sub_25F5E4794();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v43 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_25F570AF8(v40, a2, &v43);
      _os_log_impl(&dword_25F56A000, v31, v32, "Using multimodal adapter %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x25F8E3B70](v34, -1, -1);
      MEMORY[0x25F8E3B70](v33, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEB8, &unk_25F5E7810);
    v35 = *(v18 + 72);
    v36 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_25F5E5EE0;
    (*(v18 + 16))(v37 + v36, v22, v17);

    sub_25F5E3A04();
    v38 = [objc_opt_self() processInfo];
    [v38 processIdentifier];

    sub_25F5E3AC4();
    return (*(v18 + 8))(v22, v17);
  }
}

char *MultiModalLLMInference.__allocating_init(config:)(__int128 *a1)
{
  v2 = sub_25F5E3884();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE80, &unk_25F5E7800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v165 = &v156 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE70, &qword_25F5E77F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v170 = &v156 - v14;
  v15 = sub_25F5E4444();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v168 = &v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE78, &qword_25F5E77F8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v23 = &v156 - v22;
  v24 = sub_25F5E3AD4();
  v25 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v174 = &v156 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v31 = a1[7];
  v192 = a1[6];
  v193 = v31;
  v194 = a1[8];
  v195 = *(a1 + 144);
  v32 = a1[3];
  v188 = a1[2];
  v189 = v32;
  v33 = a1[5];
  v190 = a1[4];
  v191 = v33;
  v34 = a1[1];
  v186 = *a1;
  v187 = v34;
  v35 = 0.0;
  v178 = v36;
  v177 = v30;
  v180 = &v156 - v37;
  v169 = v6;
  v167 = v23;
  if (v191 & 1) != 0 || (v190)
  {
    LODWORD(v175) = 1;
    v38 = 0.0;
  }

  else
  {
    LODWORD(v175) = 0;
    v35 = *(&v189 + 1);
    v38 = *(&v190 + 1);
  }

  v39 = v186;
  v40 = *(&v187 + 1);
  v179 = v187;
  v41 = v188;
  v42 = v189;
  v166 = *(&v191 + 1);
  v172 = v192;
  v173 = v193;
  v171 = *(&v193 + 1);
  v176 = v194;
  v43 = *(&v194 + 1);
  v44 = v195;
  v45 = type metadata accessor for MultiModalLLMInference();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  v181 = v45;
  v182 = swift_allocObject();

  sub_25F57B79C(v41, *(&v41 + 1), v42);
  v48 = v183;
  sub_25F580714(v39, *(&v39 + 1));
  if (!v48)
  {
    LODWORD(v183) = v42;
    v164 = v41;
    v163 = v44;
    v162 = v43;
    static MultiModalLLMInference.getSessionConfig(modelBundleID:usecaseId:)(v39, *(&v39 + 1), v179, v40, v180);

    v53 = sub_25F5E3864();
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    swift_allocObject();
    v56 = sub_25F5E3854();
    v57 = sub_25F5E3844();
    v179 = 0;
    v49 = v182;
    v58 = *(&v164 + 1);
    v59 = v57;
    v160 = v39;
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v60 = sub_25F5E3FB4();
    v61 = __swift_project_value_buffer(v60, qword_27FD9EA20);
    v62 = v59;
    v159 = v61;
    v63 = sub_25F5E3F94();
    v64 = sub_25F5E47A4();

    v65 = os_log_type_enabled(v63, v64);
    v66 = v176;
    if (v65)
    {
      v67 = swift_slowAlloc();
      v158 = v67;
      v161 = swift_slowAlloc();
      v185 = v161;
      *v67 = 136315138;
      v184 = v62;
      sub_25F5E38A4();
      v68 = v62;
      v69 = sub_25F5E4474();
      v71 = sub_25F570AF8(v69, v70, &v185);
      v157 = v63;
      v72 = v56;
      v73 = v58;
      v74 = v62;
      v75 = v66;
      v76 = v64;
      v77 = v71;

      v78 = v158;
      *(v158 + 1) = v77;
      v79 = v76;
      v66 = v75;
      v62 = v74;
      v58 = v73;
      v56 = v72;
      v80 = v157;
      v81 = v78;
      _os_log_impl(&dword_25F56A000, v157, v79, "Multimodal model's resource information: %s", v78, 0xCu);
      v82 = v161;
      __swift_destroy_boxed_opaque_existential_1Tm(v161);
      MEMORY[0x25F8E3B70](v82, -1, -1);
      MEMORY[0x25F8E3B70](v81, -1, -1);
    }

    else
    {
    }

    v83 = sub_25F5E3894();
    if (!v83)
    {
      v85 = 0xE700000000000000;
      v89 = 0x6E776F6E6B6E75;
      goto LABEL_23;
    }

    v84 = v83;
    if (*(v83 + 16))
    {
      v85 = 0xE700000000000000;
      v86 = sub_25F5709C8(0x6E6F6973726576, 0xE700000000000000);
      if (v87)
      {
        v88 = (*(v84 + 56) + 16 * v86);
        v89 = *v88;
        v85 = v88[1];

LABEL_22:

LABEL_23:
        v90 = v183;
        v91 = &v49[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference__modelVersion];
        *v91 = v89;
        v91[1] = v85;
        v161 = v91;
        v92 = &v49[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_imageClampSize];
        *v92 = v35;
        v92[1] = v38;
        *(v92 + 16) = v175;
        if (v90 <= 1)
        {
          if (v90)
          {
            v183 = *(&v39 + 1);

            v108 = sub_25F5E3F94();
            v109 = sub_25F5E4794();
            if (os_log_type_enabled(v108, v109))
            {
              v110 = v58;
              v111 = swift_slowAlloc();
              v112 = swift_slowAlloc();
              v185 = v112;
              *v111 = 136315138;
              *(v111 + 4) = sub_25F570AF8(v164, v110, &v185);
              _os_log_impl(&dword_25F56A000, v108, v109, "Using prompt_template_id=%s", v111, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v112);
              MEMORY[0x25F8E3B70](v112, -1, -1);
              MEMORY[0x25F8E3B70](v111, -1, -1);
            }

            v99 = v178;
            v101 = v180;
            v113 = v179;
            sub_25F5E3874();
            v114 = v164;
            if (v113)
            {

              v115 = v114;
              v116 = v114;
              v117 = *(&v164 + 1);
              sub_25F581A78(v115, *(&v164 + 1), 1u);
              sub_25F581A78(v116, v117, 1u);

              (*(v99 + 8))(v101, v177);
              v118 = v161[1];

              goto LABEL_8;
            }

            v93 = v176;
            v175 = v62;
            v183 = v56;
            v179 = 0;
            v129 = v165;
            v130 = *(&v164 + 1);
            v131 = v164;
            sub_25F5E3D54();
            sub_25F581A78(v131, v130, 1u);
            v132 = sub_25F5E3D64();
            (*(*(v132 - 8) + 56))(v129, 0, 1, v132);
            sub_25F57B86C(v129, &v49[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate], &qword_27FD9DE80, &unk_25F5E7800);
            v133 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate;
            v134 = sub_25F5E4244();
            (*(*(v134 - 8) + 56))(&v49[v133], 1, 1, v134);
            v135 = &v49[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt];
            *v135 = 0;
            *(v135 + 1) = 0;
            v100 = v177;
          }

          else
          {
            v93 = v66;
            v175 = v62;
            v183 = v56;

            v94 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate;
            v95 = sub_25F5E3D64();
            (*(*(v95 - 8) + 56))(&v49[v94], 1, 1, v95);
            v96 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate;
            v97 = sub_25F5E4244();
            (*(*(v97 - 8) + 56))(&v49[v96], 1, 1, v97);
            v98 = &v49[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt];
            *v98 = v164;
            *(v98 + 1) = v58;
            v99 = v178;
            v100 = v177;
            v101 = v180;
          }

          goto LABEL_41;
        }

        if (v90 == 2)
        {

          v102 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate;
          v103 = sub_25F5E3D64();
          (*(*(v103 - 8) + 56))(&v49[v102], 1, 1, v103);

          v104 = v167;
          v105 = v164;
          v106 = v179;
          sub_25F5E4214();
          v99 = v178;
          if (v106)
          {
            v107 = 0;
            goto LABEL_35;
          }

          v175 = v62;
          v183 = v56;
          v179 = 0;
          sub_25F581A78(v105, v58, 2u);
          v127 = sub_25F5E4244();
          (*(*(v127 - 8) + 56))(v104, 0, 1, v127);
          sub_25F57B86C(v104, &v49[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate], &qword_27FD9DE78, &qword_25F5E77F8);
          v128 = &v49[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt];
          *v128 = 0;
          *(v128 + 1) = 0;
        }

        else
        {

          v119 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate;
          v120 = sub_25F5E3D64();
          v107 = 1;
          (*(*(v120 - 8) + 56))(&v49[v119], 1, 1, v120);
          v121 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate;
          v122 = sub_25F5E4244();
          (*(*(v122 - 8) + 56))(&v49[v121], 1, 1, v122);
          sub_25F5E4424();
          v105 = v164;
          v123 = v179;
          v124 = sub_25F5E43B4();
          v179 = v123;
          if (v123)
          {
            v99 = v178;
LABEL_35:

            sub_25F581A78(v105, v58, v183);
            (*(v99 + 8))(v180, v177);
            v126 = v161[1];

            sub_25F57C148(&v49[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate], &qword_27FD9DE80, &unk_25F5E7800);
            if (!v107)
            {
              goto LABEL_8;
            }

            goto LABEL_49;
          }

          v136 = v124;
          v137 = v125;
          v175 = v62;
          v183 = v56;
          sub_25F581A78(v105, v58, 3u);
          v138 = &v49[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt];
          *v138 = v136;
          v138[1] = v137;
          v99 = v178;
        }

        v100 = v177;
        v101 = v180;
        v93 = v176;
LABEL_41:
        (*(v99 + 16))(v174, v101, v100);
        v139 = sub_25F5E39D4();
        v140 = *(v139 + 48);
        v141 = *(v139 + 52);
        swift_allocObject();
        *(v49 + 2) = sub_25F5E39C4();
        v142 = v163;
        if (v172)
        {
          v143 = v162;
          if (v173)
          {
            (*(v99 + 8))(v101, v100);

            v144 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy;
            v145 = sub_25F5E3A64();
            (*(*(v145 - 8) + 56))(&v49[v144], 1, 1, v145);
          }

          else
          {
            v148 = v170;
            sub_25F5E3A44();

            (*(v99 + 8))(v101, v100);
            v149 = sub_25F5E3A64();
            (*(*(v149 - 8) + 56))(v148, 0, 1, v149);
            sub_25F57B86C(v148, &v49[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy], &qword_27FD9DE70, &qword_25F5E77F0);
          }

          goto LABEL_47;
        }

        if (v173)
        {
          v146 = v170;
          sub_25F5E3A54();

          (*(v99 + 8))(v101, v100);
          v147 = sub_25F5E3A64();
          (*(*(v147 - 8) + 56))(v146, 0, 1, v147);
          sub_25F57B86C(v146, &v49[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy], &qword_27FD9DE70, &qword_25F5E77F0);
          v143 = v162;
LABEL_47:
          v150 = &v49[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_temperature];
          *v150 = v171;
          v150[8] = v93;
          v151 = &v49[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_seed];
          *v151 = v143;
          v151[8] = v142;
          goto LABEL_9;
        }

        sub_25F581FD8();
        swift_allocError();
        *v152 = 5;
        swift_willThrow();

        (*(v99 + 8))(v101, v100);
        v153 = *(v49 + 2);

        v154 = v161[1];

        v155 = *&v49[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt + 8];

        sub_25F57C148(&v49[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate], &qword_27FD9DE80, &unk_25F5E7800);
LABEL_49:
        sub_25F57C148(&v49[OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate], &qword_27FD9DE78, &qword_25F5E77F8);
        goto LABEL_8;
      }
    }

    else
    {
      v85 = 0xE700000000000000;
    }

    v89 = 0x6E776F6E6B6E75;
    goto LABEL_22;
  }

  sub_25F581A78(v41, *(&v41 + 1), v42);
  v49 = v182;
LABEL_8:
  v50 = *(*v49 + 48);
  v51 = *(*v49 + 52);
  swift_deallocPartialClassInstance();
LABEL_9:
  sub_25F58F454(&v186);
  return v49;
}

uint64_t sub_25F592908()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference__modelVersion);
  v2 = *(v0 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference__modelVersion + 8);

  return v1;
}

void sub_25F592944(void *a1)
{
  v4 = sub_25F5E41F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_imageClampSize + 16))
  {
    v10 = a1;
  }

  else
  {
    v11 = sub_25F5DC7A0(a1, *(v1 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_imageClampSize), *(v1 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_imageClampSize + 8));
    if (v2)
    {

      sub_25F5748D4();
      swift_allocError();
      *v12 = 14;
      swift_willThrow();
      return;
    }

    v10 = v11;
  }

  sub_25F5DC420(v10);
  if (v2)
  {

    sub_25F5748D4();
    swift_allocError();
    *v13 = 12;
    swift_willThrow();
  }

  else
  {
    (*(v5 + 104))(v9, *MEMORY[0x277D42D98], v4);
    sub_25F5E4224();
  }
}

uint64_t sub_25F592B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_25F592B30, 0, 0);
}

uint64_t sub_25F592B30()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v4 = v2;

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_25F592BEC;
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return sub_25F598744(v7, v6, v8, v9);
}

uint64_t sub_25F592BEC(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 48);
  v7 = *(*v3 + 24);
  v12 = *v3;

  v10 = *(v12 + 8);
  if (!v2)
  {
    v8 = a1;
    v9 = a2;
  }

  return v10(v8, v9);
}

uint64_t sub_25F592D18(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_25F592D3C, 0, 0);
}

uint64_t sub_25F592D3C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_25F592DFC;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_25F59AB20(v7, v5, v6);
}

uint64_t sub_25F592DFC(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 40);
  v7 = *(*v3 + 32);
  v12 = *v3;

  v10 = *(v12 + 8);
  if (!v2)
  {
    v8 = a1;
    v9 = a2;
  }

  return v10(v8, v9);
}

uint64_t sub_25F592F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[52] = a3;
  v4[53] = a4;
  v4[50] = a1;
  v4[51] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE78, &qword_25F5E77F8) - 8) + 64) + 15;
  v4[54] = swift_task_alloc();
  v6 = sub_25F5E4244();
  v4[55] = v6;
  v7 = *(v6 - 8);
  v4[56] = v7;
  v8 = *(v7 + 64) + 15;
  v4[57] = swift_task_alloc();
  v9 = sub_25F5E41F4();
  v4[58] = v9;
  v10 = *(v9 - 8);
  v4[59] = v10;
  v11 = *(v10 + 64) + 15;
  v4[60] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE80, &unk_25F5E7800) - 8) + 64) + 15;
  v4[61] = swift_task_alloc();
  v13 = sub_25F5E3D64();
  v4[62] = v13;
  v14 = *(v13 - 8);
  v4[63] = v14;
  v15 = *(v14 + 64) + 15;
  v4[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F593114, 0, 0);
}

uint64_t sub_25F593114()
{
  v1 = *(v0 + 408);
  v2 = sub_25F572474(MEMORY[0x277D84F90]);
  v3 = v1 + 64;
  v4 = -1;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v1 + 64);
  v7 = (63 - v5) >> 6;
  v127 = v1;

  v9 = 0;
  v123 = v7;
  v125 = v3;
  v129 = v0;
  while (v6)
  {
LABEL_11:
    v12 = (v9 << 10) | (16 * __clz(__rbit64(v6)));
    v13 = (*(v127 + 48) + v12);
    v14 = v13[1];
    v131 = *v13;
    v15 = (*(v127 + 56) + v12);
    v16 = *v15;
    v17 = v15[1];
    *(v129 + 40) = MEMORY[0x277D837D0];
    *(v129 + 48) = MEMORY[0x277D42EC0];
    *(v129 + 16) = v16;
    *(v129 + 24) = v17;
    sub_25F573C54((v129 + 16), v129 + 56);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v129 + 80);
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v129 + 56, v19);
    v21 = *(v19 - 8);
    v22 = *(v21 + 64) + 15;
    v23 = swift_task_alloc();
    (*(v21 + 16))(v23, v20, v19);
    v24 = *v23;
    v25 = v23[1];
    *(v129 + 120) = MEMORY[0x277D837D0];
    *(v129 + 128) = MEMORY[0x277D42EC0];
    *(v129 + 96) = v24;
    *(v129 + 104) = v25;
    v27 = sub_25F5709C8(v131, v14);
    v28 = v2[2];
    v29 = (v26 & 1) == 0;
    result = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_63;
    }

    v30 = v26;
    if (v2[3] >= result)
    {
      v0 = v129;
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v26)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_25F57AF50();
        if (v30)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_25F579850(result, isUniquelyReferenced_nonNull_native);
      v31 = sub_25F5709C8(v131, v14);
      v0 = v129;
      if ((v30 & 1) != (v32 & 1))
      {
LABEL_55:

        return sub_25F5E4BC4();
      }

      v27 = v31;
      if (v30)
      {
LABEL_4:

        v10 = (v2[7] + 40 * v27);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        sub_25F573C54((v0 + 96), v10);
        goto LABEL_5;
      }
    }

    v33 = *(v0 + 120);
    v121 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 96, v33);
    v34 = *(v33 - 8);
    v35 = *(v34 + 64) + 15;
    v36 = swift_task_alloc();
    (*(v34 + 16))(v36, v121, v33);
    v37 = *v36;
    v38 = v36[1];
    *(v0 + 160) = MEMORY[0x277D837D0];
    *(v0 + 168) = MEMORY[0x277D42EC0];
    *(v0 + 136) = v37;
    *(v0 + 144) = v38;
    v2[(v27 >> 6) + 8] |= 1 << v27;
    v39 = (v2[6] + 16 * v27);
    *v39 = v131;
    v39[1] = v14;
    result = sub_25F573C54((v0 + 136), v2[7] + 40 * v27);
    v40 = v2[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_65;
    }

    v2[2] = v42;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));

LABEL_5:
    v6 &= v6 - 1;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

    v7 = v123;
    v3 = v125;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_11;
    }
  }

  v43 = v2;
  v44 = *(v0 + 472);
  v46 = *(v0 + 416);
  v45 = *(v0 + 424);
  v47 = *(v0 + 408);

  v48 = v46 + 64;
  v49 = -1;
  v50 = -1 << *(v46 + 32);
  if (-v50 < 64)
  {
    v49 = ~(-1 << -v50);
  }

  v51 = v49 & *(v46 + 64);
  v52 = v45 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_imageClampSize;
  v53 = (63 - v50) >> 6;
  v122 = *MEMORY[0x277D42D98];
  v120 = (v44 + 104);
  v54 = v43;
  v124 = v46;

  v55 = 0;
  v118 = v52;
  v119 = v46 + 64;
  v117 = v53;
  while (2)
  {
    *(v0 + 520) = v54;
    if (v51)
    {
LABEL_32:
      v58 = __clz(__rbit64(v51)) | (v55 << 6);
      v59 = (*(v124 + 48) + 16 * v58);
      v60 = v59[1];
      v130 = *v59;
      v61 = *(*(v124 + 56) + 8 * v58);
      v128 = sub_25F5E4234();
      *(v0 + 200) = v128;
      *(v0 + 208) = MEMORY[0x277D42E10];
      __swift_allocate_boxed_opaque_existential_1Tm((v0 + 176));
      v126 = v61;
      v132 = v60;
      if (*(v52 + 16))
      {
        v62 = v61;

        v63 = v62;
      }

      else
      {
        v65 = *v52;
        v64 = *(v52 + 8);

        v63 = sub_25F5DC7A0(v61, v65, v64);
      }

      v66 = v63;
      sub_25F5DC420(v63);
      (*v120)(*(v0 + 480), v122, *(v0 + 464));
      sub_25F5E4224();

      sub_25F573C54((v0 + 176), v0 + 216);
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v68 = *(v0 + 240);
      v69 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 216, v68);
      v70 = *(v68 - 8);
      v71 = *(v70 + 64) + 15;
      v72 = swift_task_alloc();
      (*(v70 + 16))(v72, v69, v68);
      *(v0 + 280) = v128;
      *(v0 + 288) = MEMORY[0x277D42E10];
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 256));
      v74 = *(*(v128 - 8) + 32);
      v74(boxed_opaque_existential_1Tm, v72, v128);
      result = sub_25F5709C8(v130, v132);
      v76 = v54[2];
      v77 = (v75 & 1) == 0;
      v41 = __OFADD__(v76, v77);
      v78 = v76 + v77;
      if (v41)
      {
        goto LABEL_64;
      }

      v79 = v75;
      if (v54[3] < v78)
      {
        sub_25F579850(v78, v67);
        result = sub_25F5709C8(v130, v132);
        if ((v79 & 1) != (v80 & 1))
        {
          goto LABEL_55;
        }

        if ((v79 & 1) == 0)
        {
          goto LABEL_42;
        }

LABEL_25:
        v56 = (v54[7] + 40 * result);
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        sub_25F573C54((v0 + 256), v56);

LABEL_26:
        v53 = v117;
        v51 &= v51 - 1;
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));

        v52 = v118;
        v48 = v119;
        continue;
      }

      if (v67)
      {
        if (v75)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v90 = result;
        sub_25F57AF50();
        result = v90;
        if (v79)
        {
          goto LABEL_25;
        }
      }

LABEL_42:
      v81 = *(v0 + 280);
      v82 = result;
      v115 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 256, v81);
      v116 = v54;
      v83 = *(v81 - 8);
      v84 = *(v83 + 64) + 15;
      v85 = swift_task_alloc();
      (*(v83 + 16))(v85, v115, v81);
      v54 = v116;
      *(v0 + 320) = v128;
      *(v0 + 328) = MEMORY[0x277D42E10];
      v86 = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 296));
      v74(v86, v85, v128);
      v116[(v82 >> 6) + 8] |= 1 << v82;
      v87 = (v116[6] + 16 * v82);
      *v87 = v130;
      v87[1] = v132;
      result = sub_25F573C54((v0 + 296), v116[7] + 40 * v82);
      v88 = v116[2];
      v41 = __OFADD__(v88, 1);
      v89 = v88 + 1;
      if (v41)
      {
        goto LABEL_66;
      }

      v116[2] = v89;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));

      goto LABEL_26;
    }

    break;
  }

  while (1)
  {
    v57 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    if (v57 >= v53)
    {
      v91 = v54;
      v92 = *(v0 + 496);
      v93 = *(v0 + 504);
      v94 = *(v0 + 488);
      v95 = *(v0 + 416);
      v96 = *(v0 + 424);

      sub_25F573B94(v96 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate, v94, &qword_27FD9DE80, &unk_25F5E7800);
      if ((*(v93 + 48))(v94, 1, v92) == 1)
      {
        v97 = *(v0 + 440);
        v98 = *(v0 + 448);
        v100 = *(v0 + 424);
        v99 = *(v0 + 432);
        sub_25F57C148(*(v0 + 488), &qword_27FD9DE80, &unk_25F5E7800);
        sub_25F573B94(v100 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate, v99, &qword_27FD9DE78, &qword_25F5E77F8);
        if ((*(v98 + 48))(v99, 1, v97) == 1)
        {
          v101 = *(v0 + 432);

          sub_25F57C148(v101, &qword_27FD9DE78, &qword_25F5E77F8);
          sub_25F581FD8();
          swift_allocError();
          *v102 = 7;
          swift_willThrow();
          v109 = *(v0 + 512);
          v111 = *(v0 + 480);
          v110 = *(v0 + 488);
          v112 = *(v0 + 456);
          v113 = *(v0 + 432);

          v114 = *(v0 + 8);

          return v114();
        }

        else
        {
          (*(*(v0 + 448) + 32))(*(v0 + 456), *(v0 + 432), *(v0 + 440));
          v106 = swift_task_alloc();
          *(v0 + 544) = v106;
          *v106 = v0;
          v106[1] = sub_25F593FEC;
          v107 = *(v0 + 456);
          v108 = *(v0 + 424);

          return sub_25F597084(v107, v91, v108);
        }
      }

      else
      {
        (*(*(v0 + 504) + 32))(*(v0 + 512), *(v0 + 488), *(v0 + 496));
        v103 = swift_task_alloc();
        *(v0 + 528) = v103;
        *v103 = v0;
        v103[1] = sub_25F593D28;
        v104 = *(v0 + 512);
        v105 = *(v0 + 424);

        return sub_25F595FFC(v104, v91, v105);
      }
    }

    v51 = *(v48 + 8 * v57);
    ++v55;
    if (v51)
    {
      v55 = v57;
      goto LABEL_32;
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}