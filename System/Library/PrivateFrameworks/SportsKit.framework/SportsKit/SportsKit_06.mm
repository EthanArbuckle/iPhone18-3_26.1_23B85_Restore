uint64_t sub_26B6A0FB8(char a1)
{
  result = 0x6163696E6F6E6163;
  switch(a1)
  {
    case 1:
      result = 0x4E79616C70736964;
      break;
    case 2:
      v3 = 0x4E7473726966;
      goto LABEL_5;
    case 3:
      result = 0x656D614E7473616CLL;
      break;
    case 4:
      v3 = 0x72676F6E6F6DLL;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6D61000000000000;
      break;
    case 5:
      result = 0x6E6F697469736F70;
      break;
    case 6:
      result = 0x617461646174656DLL;
      break;
    case 7:
      result = 0x6974736974617473;
      break;
    case 8:
      result = 0x736567616D69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B6A10CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6A0CE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6A10F4(uint64_t a1)
{
  v2 = sub_26B6B04C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6A1130(uint64_t a1)
{
  v2 = sub_26B6B04C8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B6A123C()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_100_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AA18, &qword_26B6F38B0);
  OUTLINED_FUNCTION_5_10(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6B04C8();
  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_164(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__canonicalId);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A080, &unk_26B6F37B0);
  sub_26B6839E8();
  OUTLINED_FUNCTION_15_6();
  sub_26B6EA534();
  if (!v0)
  {
    OUTLINED_FUNCTION_164(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__displayName);
    OUTLINED_FUNCTION_36_4();
    OUTLINED_FUNCTION_15_6();
    sub_26B6EA534();
    OUTLINED_FUNCTION_164(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__firstName);
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_15_6();
    sub_26B6EA534();
    OUTLINED_FUNCTION_164(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__lastName);
    OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_15_6();
    sub_26B6EA534();
    OUTLINED_FUNCTION_164(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__monogram);
    OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_15_6();
    sub_26B6EA534();
    OUTLINED_FUNCTION_164(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__position);
    OUTLINED_FUNCTION_15_6();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__metadata);
    OUTLINED_FUNCTION_204();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AA28, &qword_26B6F38B8);
    sub_26B6B051C();
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__statistics);
    OUTLINED_FUNCTION_233();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AA58, &qword_26B6F38D0);
    sub_26B6B06D8();
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__images);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A960, &qword_26B6F3860);
    sub_26B6B003C();
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
  }

  v5 = OUTLINED_FUNCTION_21_2();
  v6(v5);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_190();
}

void SportingEventParticipant.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  OUTLINED_FUNCTION_4_10();
  SportingEventParticipant.init(from:)();
}

void SportingEventParticipant.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A200, &qword_26B6F25A8);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = v64 - v9;
  OUTLINED_FUNCTION_157(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__canonicalId);
  v12 = v11;
  OUTLINED_FUNCTION_157(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__displayName);
  v65 = v13;
  OUTLINED_FUNCTION_157(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__firstName);
  v67 = v14;
  OUTLINED_FUNCTION_157(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__lastName);
  v74 = v15;
  OUTLINED_FUNCTION_157(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__monogram);
  v66 = v16;
  OUTLINED_FUNCTION_157(OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__position);
  v72 = v17;
  v71 = OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__metadata;
  *&v2[OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__metadata] = 0;
  v70 = OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__statistics;
  *&v2[OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__statistics] = 0;
  v68 = v4;
  v69 = OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__images;
  *&v2[OBJC_IVAR____TtC9SportsKit24SportingEventParticipant__images] = 0;
  v18 = v4[3];
  v19 = v4[4];
  OUTLINED_FUNCTION_39(v4);
  sub_26B6B04C8();
  v64[1] = v10;
  OUTLINED_FUNCTION_55_1();
  if (v1)
  {
    v22 = v65;
    v23 = v66;
    v24 = v67;
    __swift_destroy_boxed_opaque_existential_1(v68);
    v25 = v12[1];

    v26 = v22[1];

    v27 = v24[1];

    v28 = v74[1];

    v29 = v23[1];

    v30 = v72[1];

    OUTLINED_FUNCTION_197();

    v31 = *&v2[v70];

    v32 = *&v2[v69];

    type metadata accessor for SportingEventParticipant();
    OUTLINED_FUNCTION_91_1();
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_210();
    v21 = sub_26B67FF2C(v20);
    v33 = v12[1];
    *v12 = v21;
    v12[1] = v34;

    v35 = sub_26B67FF2C(1);
    v36 = v65;
    v37 = v65[1];
    *v65 = v35;
    v36[1] = v38;

    v39 = sub_26B67FF2C(2);
    v40 = v67;
    v41 = v67[1];
    *v67 = v39;
    v40[1] = v42;

    v43 = sub_26B67FF2C(3);
    v44 = v74[1];
    *v74 = v43;
    v74[1] = v45;

    v46 = sub_26B67FF2C(4);
    v47 = v66;
    v48 = v66[1];
    *v66 = v46;
    v47[1] = v49;

    OUTLINED_FUNCTION_210();
    v51 = sub_26B67FF2C(v50);
    v52 = v72;
    v53 = v72[1];
    *v72 = v51;
    v52[1] = v54;

    OUTLINED_FUNCTION_210();
    v56 = sub_26B67FF54(v55);
    OUTLINED_FUNCTION_94_1(v56);
    OUTLINED_FUNCTION_210();
    v58 = sub_26B67FF90(v57);
    OUTLINED_FUNCTION_94_1(v58);
    OUTLINED_FUNCTION_210();
    v60 = sub_26B67FFCC(v59);
    OUTLINED_FUNCTION_94_1(v60);
    v61 = type metadata accessor for SportingEventParticipant();
    v73.receiver = v2;
    v73.super_class = v61;
    objc_msgSendSuper2(&v73, sel_init);
    v62 = OUTLINED_FUNCTION_183();
    v63(v62);
    __swift_destroy_boxed_opaque_existential_1(v68);
  }

  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B6A1914(void *a1@<X8>)
{
  SportingEventParticipant.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B6A199C(uint64_t a1)
{
  sub_26B68A2A0(a1, v17);
  if (!v18)
  {
    sub_26B6413B4(v17, &qword_2804092A0, &qword_26B6F2850);
    goto LABEL_10;
  }

  v2 = type metadata accessor for SportingEventParticipantMetadata();
  OUTLINED_FUNCTION_38_3(v2, v3, v4, v2, v5, v6, v7, v8, v14, v15);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v12 = 0;
    return v12 & 1;
  }

  v9 = *(v1 + OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_value) == *&v16[OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_value] && *(v1 + OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_value + 8) == *&v16[OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_value + 8];
  if (!v9 && (sub_26B6EA5D4() & 1) == 0)
  {

    goto LABEL_10;
  }

  sub_26B68A378();
  v10 = *(v1 + OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_metadataType);
  v11 = *&v16[OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_metadataType];
  OUTLINED_FUNCTION_92_1();
  v12 = sub_26B6E9FA4();

  return v12 & 1;
}

uint64_t sub_26B6A1AE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xEC00000065707954)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B6A1BAC(char a1)
{
  if (a1)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_26B6A1BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6A1AE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6A1C18(uint64_t a1)
{
  v2 = sub_26B6B0898();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6A1C54(uint64_t a1)
{
  v2 = sub_26B6B0898();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B6A1CF0()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AA98, &qword_26B6F38F0);
  OUTLINED_FUNCTION_5_10(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6B0898();
  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_108(OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_value);
  OUTLINED_FUNCTION_63_2();
  sub_26B6EA4F4();
  if (!v0)
  {
    OUTLINED_FUNCTION_99_1(OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_metadataType);
    type metadata accessor for SportingEventParticipantMetadataType();
    OUTLINED_FUNCTION_134();
    sub_26B6B25CC(v5, v6, v7);
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
  }

  v8 = OUTLINED_FUNCTION_21_2();
  v9(v8);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

void SportingEventParticipantMetadata.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  v1 = OUTLINED_FUNCTION_4_10();
  SportingEventParticipantMetadata.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

void SportingEventParticipantMetadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_64_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AAB0, &qword_26B6F38F8);
  OUTLINED_FUNCTION_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_21_3();
  sub_26B6B0898();
  OUTLINED_FUNCTION_12_7();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    type metadata accessor for SportingEventParticipantMetadata();
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_215();
  }

  else
  {
    OUTLINED_FUNCTION_174();
    OUTLINED_FUNCTION_52_1();
    v17 = sub_26B6EA424();
    v18 = &v10[OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_value];
    *v18 = v17;
    v18[1] = v19;
    type metadata accessor for SportingEventParticipantMetadataType();
    OUTLINED_FUNCTION_36_4();
    OUTLINED_FUNCTION_134();
    sub_26B6B25CC(v20, v21, v22);
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_20_6();
    sub_26B6EA464();
    *&v10[OBJC_IVAR____TtC9SportsKit32SportingEventParticipantMetadata_metadataType] = a10;
    v25.receiver = v10;
    v25.super_class = type metadata accessor for SportingEventParticipantMetadata();
    objc_msgSendSuper2(&v25, sel_init);
    v23 = OUTLINED_FUNCTION_10_8();
    v24(v23);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B6A2010(void *a1@<X8>)
{
  SportingEventParticipantMetadata.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B6A208C(uint64_t a1)
{
  sub_26B68A2A0(a1, v16);
  if (!v17)
  {
    sub_26B6413B4(v16, &qword_2804092A0, &qword_26B6F2850);
    goto LABEL_9;
  }

  v1 = type metadata accessor for SportingEventParticipantMetadataType();
  OUTLINED_FUNCTION_38_3(v1, v2, v3, v1, v4, v5, v6, v7, v13, v14);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v11 = 0;
    return v11 & 1;
  }

  OUTLINED_FUNCTION_194(OBJC_IVAR____TtC9SportsKit36SportingEventParticipantMetadataType_name);
  v10 = v10 && v8 == v9;
  if (v10)
  {

    v11 = 1;
  }

  else
  {
    v11 = sub_26B6EA5D4();
  }

  return v11 & 1;
}

uint64_t sub_26B6A2190(uint64_t a1)
{
  v2 = sub_26B6B0910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6A21CC(uint64_t a1)
{
  v2 = sub_26B6B0910();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B6A222C()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_104_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AAC8, &qword_26B6F3900);
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6B0910();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_71_0();
  sub_26B6EA7C4();
  OUTLINED_FUNCTION_108(OBJC_IVAR____TtC9SportsKit36SportingEventParticipantMetadataType_name);
  OUTLINED_FUNCTION_177();
  sub_26B6EA4F4();
  v4 = OUTLINED_FUNCTION_38_2();
  v5(v4);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_190();
}

void SportingEventParticipantMetadataType.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  OUTLINED_FUNCTION_4_10();
  SportingEventParticipantMetadataType.init(from:)();
}

void SportingEventParticipantMetadataType.init(from:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_37_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AAD8, &qword_26B6F3908);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  sub_26B6B0910();
  OUTLINED_FUNCTION_31_4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
    type metadata accessor for SportingEventParticipantMetadataType();
    OUTLINED_FUNCTION_106_1();
    OUTLINED_FUNCTION_225();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
    v7 = sub_26B6EA424();
    OUTLINED_FUNCTION_237(v7, v8, OBJC_IVAR____TtC9SportsKit36SportingEventParticipantMetadataType_name);
    v11.receiver = v2;
    v11.super_class = type metadata accessor for SportingEventParticipantMetadataType();
    objc_msgSendSuper2(&v11, sel_init);
    v9 = OUTLINED_FUNCTION_13_3();
    v10(v9);
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B6A2484(void *a1@<X8>)
{
  SportingEventParticipantMetadataType.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

id SportingEventCompetitorScore.__allocating_init(scoreEntries:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC9SportsKit28SportingEventCompetitorScore_scoreEntries] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SportingEventCompetitorScore.init(scoreEntries:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC9SportsKit28SportingEventCompetitorScore_scoreEntries] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SportingEventCompetitorScore();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_26B6A2570(uint64_t a1)
{
  sub_26B68A2A0(a1, v25);
  if (v26)
  {
    v2 = type metadata accessor for SportingEventCompetitorScore();
    OUTLINED_FUNCTION_38_3(v2, v3, v4, v2, v5, v6, v7, v8, v22, v23);
    if (swift_dynamicCast())
    {
      v9 = *(v1 + OBJC_IVAR____TtC9SportsKit28SportingEventCompetitorScore_scoreEntries);
      v10 = sub_26B651134(v9);
      v11 = OBJC_IVAR____TtC9SportsKit28SportingEventCompetitorScore_scoreEntries;
      if (v10 == sub_26B651134(*&v24[OBJC_IVAR____TtC9SportsKit28SportingEventCompetitorScore_scoreEntries]))
      {
        v12 = sub_26B651134(v9);
        if ((v12 & 0x8000000000000000) == 0)
        {
          v13 = -v12;
          v14 = 4;
          while (1)
          {
            if (v13 + v14 == 4)
            {

              return;
            }

            v15 = v14 - 4;
            if (__OFADD__(v14 - 4, 1))
            {
              break;
            }

            if ((v9 & 0xC000000000000001) != 0)
            {
              v16 = MEMORY[0x26D67DB30](v14 - 4, v9);
            }

            else
            {
              if (v15 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_23;
              }

              v16 = *(v9 + 8 * v14);
            }

            v17 = v16;
            v18 = *&v24[v11];
            if ((v18 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x26D67DB30](v14 - 4);
            }

            else
            {
              if (v15 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_24;
              }

              v19 = *(v18 + 8 * v14);
            }

            v20 = v19;
            type metadata accessor for SportingEventCompetitorScoreEntry();
            OUTLINED_FUNCTION_52_0();
            v21 = sub_26B6E9FA4();

            ++v14;
            if ((v21 & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
        }

        __break(1u);
      }

      else
      {
LABEL_19:
      }
    }
  }

  else
  {
    sub_26B6413B4(v25, &qword_2804092A0, &qword_26B6F2850);
  }
}

uint64_t sub_26B6A2760(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E4565726F6373 && a2 == 0xEC00000073656972)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B6A2800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6A2760(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B6A282C(uint64_t a1)
{
  v2 = sub_26B6B0988();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6A2868(uint64_t a1)
{
  v2 = sub_26B6B0988();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B6A28CC()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_104_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AAE0, &qword_26B6F3910);
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6B0988();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_71_0();
  sub_26B6EA7C4();
  OUTLINED_FUNCTION_127_0(OBJC_IVAR____TtC9SportsKit28SportingEventCompetitorScore_scoreEntries);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AAE8, &qword_26B6F3918);
  sub_26B6B09DC();
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_177();
  sub_26B6EA534();
  v4 = OUTLINED_FUNCTION_38_2();
  v5(v4);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_190();
}

void SportingEventCompetitorScore.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  v1 = OUTLINED_FUNCTION_4_10();
  SportingEventCompetitorScore.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

void SportingEventCompetitorScore.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_65_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AAF0, &qword_26B6F3920);
  OUTLINED_FUNCTION_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  sub_26B6B0988();
  OUTLINED_FUNCTION_12_7();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
    type metadata accessor for SportingEventCompetitorScore();
    OUTLINED_FUNCTION_102_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AAE8, &qword_26B6F3918);
    sub_26B6B0A90();
    OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_20_6();
    sub_26B6EA464();
    *&v12[OBJC_IVAR____TtC9SportsKit28SportingEventCompetitorScore_scoreEntries] = a10;
    v19.receiver = v12;
    v19.super_class = type metadata accessor for SportingEventCompetitorScore();
    objc_msgSendSuper2(&v19, sel_init);
    v17 = OUTLINED_FUNCTION_10_8();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_37();
}

void sub_26B6A2B60(void *a1@<X8>)
{
  SportingEventCompetitorScore.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

void SportingEventCompetitorWinOutcome.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_247();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_18_2();
  v26 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  OUTLINED_FUNCTION_22_2();
  sub_26B6EA764();
  if (v22)
  {
    OUTLINED_FUNCTION_95_1();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(&a10, a13);
    OUTLINED_FUNCTION_22_2();
    sub_26B6EA5E4();
    sub_26B6EA394();

    OUTLINED_FUNCTION_33_6(&a10);
  }

  OUTLINED_FUNCTION_246();
}

SportsKit::SportingEventCompetitorWinOutcome_optional __swiftcall SportingEventCompetitorWinOutcome.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_23_4();
  sub_26B6EA394();
  OUTLINED_FUNCTION_113_0();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t SportingEventCompetitorWinOutcome.rawValue.getter()
{
  result = 7235927;
  switch(*v0)
  {
    case 1:
      result = 1936944972;
      break;
    case 2:
      result = 6646100;
      break;
    case 3:
      result = OUTLINED_FUNCTION_12_0();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B6A2D30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (OUTLINED_FUNCTION_223() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974736974617473 && a2 == 0xED00006570795463)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_223();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B6A2E70@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventCompetitorWinOutcome.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B6A2F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6A2D30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6A2F28(uint64_t a1)
{
  v2 = sub_26B6B0B44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6A2F64(uint64_t a1)
{
  v2 = sub_26B6B0B44();

  return MEMORY[0x2821FE720](a1, v2);
}

void SportingEventCompetitorScoreEntry.valueContainer.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_valueContainer + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_valueContainer);
  *(a1 + 8) = v2;
}

id SportingEventCompetitorScoreEntry.init(value:statisticType:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_value] = a1;
  v3 = &v2[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_valueContainer];
  *v3 = a1;
  v3[8] = 0;
  *&v2[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_statisticType] = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SportingEventCompetitorScoreEntry();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_26B6A307C(uint64_t a1)
{
  sub_26B68A2A0(a1, v16);
  if (!v17)
  {
    sub_26B6413B4(v16, &qword_2804092A0, &qword_26B6F2850);
    goto LABEL_7;
  }

  v2 = type metadata accessor for SportingEventCompetitorScoreEntry();
  OUTLINED_FUNCTION_38_3(v2, v3, v4, v2, v5, v6, v7, v8, v13, v14);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v11 = 0;
    return v11 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_value) != *&v15[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_value])
  {

    goto LABEL_7;
  }

  sub_26B68A378();
  v9 = *(v1 + OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_statisticType);
  v10 = *&v15[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_statisticType];
  OUTLINED_FUNCTION_92_1();
  v11 = sub_26B6E9FA4();

  return v11 & 1;
}

void SportingEventCompetitorScoreEntry.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  OUTLINED_FUNCTION_4_10();
  SportingEventCompetitorScoreEntry.init(from:)();
}

void SportingEventCompetitorScoreEntry.init(from:)()
{
  OUTLINED_FUNCTION_64_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AB08, &qword_26B6F3928);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_21_3();
  sub_26B6B0B44();
  OUTLINED_FUNCTION_12_7();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    type metadata accessor for SportingEventCompetitorScoreEntry();
    OUTLINED_FUNCTION_91_1();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for SportingEventCompetitorScoreStatisticType();
    v14 = 1;
    OUTLINED_FUNCTION_128_0();
    sub_26B6B25CC(v7, 255, v8);
    OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_20_6();
    sub_26B6EA464();
    *&v0[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_statisticType] = v15;
    OUTLINED_FUNCTION_174();
    OUTLINED_FUNCTION_52_1();
    v9 = sub_26B6EA454();
    v10 = OUTLINED_FUNCTION_10_8();
    v11(v10);
    *&v0[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_value] = v9;
    v12 = &v0[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_valueContainer];
    *&v0[OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_valueContainer] = v9;
    v12[8] = 0;
    v13.receiver = v0;
    v13.super_class = type metadata accessor for SportingEventCompetitorScoreEntry();
    objc_msgSendSuper2(&v13, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v2);
  }
}

void sub_26B6A3538()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AB10, &qword_26B6F3930);
  OUTLINED_FUNCTION_5_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6B0B44();
  OUTLINED_FUNCTION_39_3();
  v6 = *(v1 + OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_value);
  OUTLINED_FUNCTION_69_1();
  sub_26B6EA524();
  if (!v0)
  {
    OUTLINED_FUNCTION_99_1(OBJC_IVAR____TtC9SportsKit33SportingEventCompetitorScoreEntry_statisticType);
    type metadata accessor for SportingEventCompetitorScoreStatisticType();
    OUTLINED_FUNCTION_128_0();
    sub_26B6B25CC(v7, 255, v8);
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
  }

  v9 = OUTLINED_FUNCTION_21_2();
  v10(v9);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

void sub_26B6A3674(void *a1@<X8>)
{
  SportingEventCompetitorScoreEntry.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B6A36D0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  return sub_26B6A3730(v2);
}

void *sub_26B6A3700()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__total);
  v2 = v1;
  return v1;
}

uint64_t sub_26B6A373C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26B6A3774(v4);
}

id SportingEventCurrentClock.__allocating_init(current:total:periods:)()
{
  OUTLINED_FUNCTION_248();
  v0 = OUTLINED_FUNCTION_240();
  return SportingEventCurrentClock.init(current:total:periods:)(v0, v1, v2);
}

id SportingEventCurrentClock.init(current:total:periods:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__total;
  *&v3[OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__total] = 0;
  v5 = OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__periods;
  *&v3[OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__periods] = 0;
  *&v3[OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock_current] = a1;
  *&v3[v4] = a2;
  *&v3[v5] = a3;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for SportingEventCurrentClock();
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_26B6A3810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_166();
  a27 = v30;
  a28 = v31;
  v32 = v28;
  sub_26B68A2A0(v33, &a13);
  if (!a16)
  {
    sub_26B6413B4(&a13, &qword_2804092A0, &qword_26B6F2850);
    goto LABEL_29;
  }

  type metadata accessor for SportingEventCurrentClock();
  if ((OUTLINED_FUNCTION_98_0() & 1) == 0)
  {
LABEL_29:
    OUTLINED_FUNCTION_165();
    return;
  }

  v34 = a12;
  v35 = *(v28 + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__periods);
  v36 = *&a12[OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__periods];
  if (!v35)
  {
    if (v36)
    {
LABEL_28:

      goto LABEL_29;
    }

LABEL_24:
    sub_26B68A378();
    v49 = *(v32 + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock_current);
    v50 = *&v34[OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock_current];
    OUTLINED_FUNCTION_52_0();
    v51 = sub_26B6E9FA4();

    if ((v51 & 1) == 0)
    {
      goto LABEL_28;
    }

    v52 = *(v32 + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__total);
    v53 = *&v34[OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__total];
    if (!v52)
    {
      v56 = v53;

      if (v53)
      {
      }

      goto LABEL_29;
    }

    if (!v53)
    {
      goto LABEL_28;
    }

    type metadata accessor for SportingEventClock();
    v54 = v53;
    v55 = v52;
    OUTLINED_FUNCTION_211();
    sub_26B6E9FA4();

    goto LABEL_29;
  }

  if (!v36)
  {
    goto LABEL_28;
  }

  v37 = sub_26B651134(*(v28 + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__periods));
  if (v37 != sub_26B651134(v36))
  {
    goto LABEL_28;
  }

  if ((v37 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_189();

    v38 = 4;
    while (1)
    {
      OUTLINED_FUNCTION_124_0();
      if (v39)
      {

        v34 = a12;
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_122_0();
      if (v40)
      {
        break;
      }

      if (a11)
      {
        v47 = OUTLINED_FUNCTION_111();
        v42 = MEMORY[0x26D67DB30](v47);
      }

      else
      {
        OUTLINED_FUNCTION_121_0();
        if (v41)
        {
          goto LABEL_34;
        }

        v42 = *(v35 + 8 * v38);
      }

      v43 = v42;
      if (v29)
      {
        v48 = OUTLINED_FUNCTION_92_1();
        v44 = MEMORY[0x26D67DB30](v48);
      }

      else
      {
        OUTLINED_FUNCTION_156();
        if (v41)
        {
          goto LABEL_35;
        }

        v44 = *(v36 + 8 * v38);
      }

      v45 = v44;
      type metadata accessor for SportingEventClockTimeContainer();
      v46 = OUTLINED_FUNCTION_93_1();

      ++v38;
      if ((v46 & 1) == 0)
      {

        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_26B6A3A98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6572727563 && a2 == 0xE700000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C61746F74 && a2 == 0xE500000000000000;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x73646F69726570 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_26B6EA5D4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26B6A3BA4(char a1)
{
  if (!a1)
  {
    return 0x746E6572727563;
  }

  if (a1 == 1)
  {
    return 0x6C61746F74;
  }

  return 0x73646F69726570;
}

uint64_t sub_26B6A3C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6A3A98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6A3C28(uint64_t a1)
{
  v2 = sub_26B6B0BE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6A3C64(uint64_t a1)
{
  v2 = sub_26B6B0BE0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B6A3D14()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AB30, &qword_26B6F3938);
  OUTLINED_FUNCTION_5_10(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6B0BE0();
  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_127_0(OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock_current);
  type metadata accessor for SportingEventClock();
  OUTLINED_FUNCTION_45_2();
  sub_26B6B25CC(v5, v6, v7);
  OUTLINED_FUNCTION_110_1();
  OUTLINED_FUNCTION_12_9();
  sub_26B6EA534();
  if (!v0)
  {
    OUTLINED_FUNCTION_84_1(OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__total);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AB38, &qword_26B6F3940);
    sub_26B6B0C34();
    OUTLINED_FUNCTION_110_1();
    OUTLINED_FUNCTION_12_9();
    sub_26B6EA534();
    OUTLINED_FUNCTION_127_0(OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__periods);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AB48, &qword_26B6F3950);
    sub_26B6B0D6C();
    OUTLINED_FUNCTION_110_1();
    OUTLINED_FUNCTION_12_9();
    sub_26B6EA534();
  }

  v8 = OUTLINED_FUNCTION_21_2();
  v9(v8);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

void SportingEventCurrentClock.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  v1 = OUTLINED_FUNCTION_4_10();
  SportingEventCurrentClock.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

void SportingEventCurrentClock.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_64_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A1F0, &qword_26B6F2598);
  OUTLINED_FUNCTION_4(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26_1();
  v28 = OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__total;
  *(v11 + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__total) = 0;
  *(v11 + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__periods) = 0;
  OUTLINED_FUNCTION_21_3();
  sub_26B6B0BE0();
  OUTLINED_FUNCTION_12_7();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);

    OUTLINED_FUNCTION_197();

    type metadata accessor for SportingEventCurrentClock();
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_215();
  }

  else
  {
    type metadata accessor for SportingEventClock();
    v30 = 0;
    OUTLINED_FUNCTION_45_2();
    sub_26B6B25CC(v18, v19, v20);
    OUTLINED_FUNCTION_30_5();
    OUTLINED_FUNCTION_20_4();
    sub_26B6EA464();
    *&v10[OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock_current] = a10;
    OUTLINED_FUNCTION_20_4();
    v22 = sub_26B67FFF4(v21);
    v23 = *&v10[v28];
    *&v10[v28] = v22;

    OUTLINED_FUNCTION_20_4();
    v25 = sub_26B68001C(v24);
    OUTLINED_FUNCTION_94_1(v25);
    v29.receiver = v10;
    v29.super_class = type metadata accessor for SportingEventCurrentClock();
    objc_msgSendSuper2(&v29, sel_init);
    v26 = OUTLINED_FUNCTION_112_0();
    v27(v26, v14);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B6A4104(void *a1@<X8>)
{
  SportingEventCurrentClock.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

void SportingEventCurrentClock.announcedAdditionalMinutesAndSeconds(for:)()
{
  OUTLINED_FUNCTION_132();
  v3 = *(v0 + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__periods);
  if (!v3)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 1;
    v17 = 1;
    goto LABEL_16;
  }

  v4 = v1;
  v23 = v2;
  v5 = sub_26B6542CC(v3);

  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {
LABEL_12:

      v13 = 0;
      v14 = 0;
LABEL_13:
      v15 = 0;
      v16 = 1;
      v17 = 1;
      goto LABEL_14;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D67DB30](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v7 = *(v3 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }

    v9 = *&v7[OBJC_IVAR____TtC9SportsKit31SportingEventClockTimeContainer__period];
    if (v9)
    {
      type metadata accessor for SportingEventClockPeriod();
      v10 = v9;
      v11 = v4;
      v12 = sub_26B6E9FA4();

      if (v12)
      {
        break;
      }
    }
  }

  v14 = *&v8[OBJC_IVAR____TtC9SportsKit31SportingEventClockTimeContainer__clockTimes];

  if (!v14)
  {
    v13 = 0;
    goto LABEL_13;
  }

  v18 = sub_26B6542CC(v14);
  v19 = 0;
  while (2)
  {
    if (v18 == v19)
    {
      goto LABEL_12;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x26D67DB30](v19, v14);
    }

    else
    {
      if (v19 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v20 = *(v14 + 8 * v19 + 32);
    }

    v21 = v20;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_39;
    }

    switch(v20[OBJC_IVAR____TtC9SportsKit22SportingEventClockTime__clockType])
    {
      case 2:

        goto LABEL_31;
      case 5:
        OUTLINED_FUNCTION_12_0();
        goto LABEL_26;
      case 6:
        goto LABEL_27;
      default:
LABEL_26:
        v22 = sub_26B6EA5D4();

        if ((v22 & 1) == 0)
        {
LABEL_27:

          ++v19;
          continue;
        }

LABEL_31:

        v14 = *&v21[OBJC_IVAR____TtC9SportsKit22SportingEventClockTime__minutes];
        v16 = v21[OBJC_IVAR____TtC9SportsKit22SportingEventClockTime__minutes + 8];
        v15 = *&v21[OBJC_IVAR____TtC9SportsKit22SportingEventClockTime__seconds];
        v17 = v21[OBJC_IVAR____TtC9SportsKit22SportingEventClockTime__seconds + 8];
        if ((v16 & 1) != 0 || v14 <= 0)
        {
          v13 = (v15 > 0) & ~v17;
        }

        else
        {
          v13 = 1;
        }

LABEL_14:
        v2 = v23;
LABEL_16:
        *v2 = v13;
        *(v2 + 8) = v14;
        *(v2 + 16) = v16;
        *(v2 + 24) = v15;
        *(v2 + 32) = v17;
        OUTLINED_FUNCTION_131();
        return;
    }
  }
}

uint64_t sub_26B6A4464(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  return sub_26B6A44C4(v2);
}

void *sub_26B6A4494()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit31SportingEventClockTimeContainer__period);
  v2 = v1;
  return v1;
}

uint64_t sub_26B6A44D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26B6A4508(v4);
}

void sub_26B6A4514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_166();
  a27 = v31;
  a28 = v32;
  sub_26B68A2A0(v33, &a13);
  if (!a16)
  {
    sub_26B6413B4(&a13, &qword_2804092A0, &qword_26B6F2850);
    goto LABEL_23;
  }

  type metadata accessor for SportingEventClockTimeContainer();
  if ((OUTLINED_FUNCTION_98_0() & 1) == 0)
  {
LABEL_23:
    OUTLINED_FUNCTION_165();
    return;
  }

  v34 = a12;
  v35 = *(v28 + OBJC_IVAR____TtC9SportsKit31SportingEventClockTimeContainer__clockTimes);
  v36 = *&a12[OBJC_IVAR____TtC9SportsKit31SportingEventClockTimeContainer__clockTimes];
  if (!v35)
  {
    if (!v36)
    {
LABEL_25:
      v48 = *(v28 + OBJC_IVAR____TtC9SportsKit31SportingEventClockTimeContainer__period);
      v49 = *&v34[OBJC_IVAR____TtC9SportsKit31SportingEventClockTimeContainer__period];
      if (!v48)
      {
        v52 = v49;

        if (v49)
        {
        }

        goto LABEL_23;
      }

      if (v49)
      {
        type metadata accessor for SportingEventClockPeriod();
        v50 = v49;
        v51 = v48;
        OUTLINED_FUNCTION_211();
        sub_26B6E9FA4();

        goto LABEL_23;
      }
    }

    goto LABEL_22;
  }

  if (!v36 || (v37 = sub_26B651134(*(v28 + OBJC_IVAR____TtC9SportsKit31SportingEventClockTimeContainer__clockTimes)), v37 != sub_26B651134(v36)))
  {
LABEL_22:

    goto LABEL_23;
  }

  v53 = v28;
  if ((v37 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_189();

    OUTLINED_FUNCTION_144();
    while (1)
    {
      OUTLINED_FUNCTION_124_0();
      if (v38)
      {

        v28 = v53;
        v34 = a12;
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_122_0();
      if (v39)
      {
        break;
      }

      if (a11)
      {
        v46 = OUTLINED_FUNCTION_111();
        v41 = MEMORY[0x26D67DB30](v46);
      }

      else
      {
        OUTLINED_FUNCTION_121_0();
        if (v40)
        {
          goto LABEL_32;
        }

        v41 = *(v35 + v29);
      }

      v42 = v41;
      if (v30)
      {
        v47 = OUTLINED_FUNCTION_92_1();
        v43 = MEMORY[0x26D67DB30](v47);
      }

      else
      {
        OUTLINED_FUNCTION_156();
        if (v40)
        {
          goto LABEL_33;
        }

        v43 = *(v36 + 8 * v29);
      }

      v44 = v43;
      type metadata accessor for SportingEventClockTime();
      v45 = OUTLINED_FUNCTION_93_1();

      ++v29;
      if ((v45 & 1) == 0)
      {

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_26B6A4758(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F69726570 && a2 == 0xE600000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D69546B636F6C63 && a2 == 0xEA00000000007365)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B6A4824(char a1)
{
  if (a1)
  {
    return 0x6D69546B636F6C63;
  }

  else
  {
    return 0x646F69726570;
  }
}

uint64_t sub_26B6A4864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6A4758(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6A488C(uint64_t a1)
{
  v2 = sub_26B6B0F70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6A48C8(uint64_t a1)
{
  v2 = sub_26B6B0F70();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B6A4968()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AB80, &qword_26B6F3960);
  OUTLINED_FUNCTION_5_10(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6B0F70();
  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_127_0(OBJC_IVAR____TtC9SportsKit31SportingEventClockTimeContainer__period);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AB88, &qword_26B6F3968);
  sub_26B6B0FC4();
  OUTLINED_FUNCTION_110_1();
  OUTLINED_FUNCTION_12_9();
  sub_26B6EA534();
  if (!v0)
  {
    OUTLINED_FUNCTION_84_1(OBJC_IVAR____TtC9SportsKit31SportingEventClockTimeContainer__clockTimes);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AB98, &qword_26B6F3978);
    sub_26B6B10FC();
    OUTLINED_FUNCTION_110_1();
    OUTLINED_FUNCTION_12_9();
    sub_26B6EA534();
  }

  v5 = OUTLINED_FUNCTION_21_2();
  v6(v5);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

void SportingEventClockTimeContainer.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  OUTLINED_FUNCTION_4_10();
  SportingEventClockTimeContainer.init(from:)();
}

void SportingEventClockTimeContainer.init(from:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_64_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A1E0, &qword_26B6F3990);
  OUTLINED_FUNCTION_4(v5);
  v17 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_26_1();
  v10 = OBJC_IVAR____TtC9SportsKit31SportingEventClockTimeContainer__period;
  *(v1 + OBJC_IVAR____TtC9SportsKit31SportingEventClockTimeContainer__period) = 0;
  v19 = OBJC_IVAR____TtC9SportsKit31SportingEventClockTimeContainer__clockTimes;
  *(v1 + OBJC_IVAR____TtC9SportsKit31SportingEventClockTimeContainer__clockTimes) = 0;
  OUTLINED_FUNCTION_21_3();
  sub_26B6B0F70();
  OUTLINED_FUNCTION_12_7();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);

    v16 = *&v0[v19];

    type metadata accessor for SportingEventClockTimeContainer();
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_225();
  }

  else
  {
    OUTLINED_FUNCTION_20_4();
    v12 = sub_26B680058(v11);
    v13 = *&v0[v10];
    *&v0[v10] = v12;

    OUTLINED_FUNCTION_20_4();
    v15 = sub_26B68010C(v14);
    OUTLINED_FUNCTION_94_1(v15);
    v18.receiver = v0;
    v18.super_class = type metadata accessor for SportingEventClockTimeContainer();
    objc_msgSendSuper2(&v18, sel_init);
    (*(v17 + 8))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B6A4C9C(void *a1@<X8>)
{
  SportingEventClockTimeContainer.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_26B6A4E08(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  sub_26B6A4E7C(&v4);
  *a2 = v4;
}

void sub_26B6A4E44(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_26B6A4E88(&v3);
}

uint64_t sub_26B6A4E98(uint64_t a1)
{
  sub_26B68A2A0(a1, v32);
  if (!v33)
  {
    sub_26B6413B4(v32, &qword_2804092A0, &qword_26B6F2850);
    goto LABEL_35;
  }

  v2 = type metadata accessor for SportingEventClockTime();
  OUTLINED_FUNCTION_38_3(v2, v3, v4, v2, v5, v6, v7, v8, v29, v30);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_35:
    v27 = 0;
    return v27 & 1;
  }

  OUTLINED_FUNCTION_154();
  if (v11)
  {
    if ((v10 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (v10)
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_57_0(v9);
    if (!v24)
    {
      goto LABEL_34;
    }
  }

  OUTLINED_FUNCTION_154();
  if (v14)
  {
    if ((v13 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (v13)
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_57_0(v12);
    if (!v24)
    {
      goto LABEL_34;
    }
  }

  OUTLINED_FUNCTION_154();
  if (v17)
  {
    if ((v16 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (v16)
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_57_0(v15);
    if (!v24)
    {
      goto LABEL_34;
    }
  }

  OUTLINED_FUNCTION_142_0();
  v20 = *&v31[v19 + 8];
  if (v21)
  {
    if (!v20)
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_44_2(v18);
    v24 = v24 && v22 == v23;
    if (!v24 && (sub_26B6EA5D4() & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v20)
  {
LABEL_34:

    goto LABEL_35;
  }

  v25 = *(v1 + OBJC_IVAR____TtC9SportsKit22SportingEventClockTime__clockType);
  v26 = v31[OBJC_IVAR____TtC9SportsKit22SportingEventClockTime__clockType];
  if (v25 != 6)
  {
    if (v26 != 6)
    {
      v27 = sub_26B645CC4(v25, v31[OBJC_IVAR____TtC9SportsKit22SportingEventClockTime__clockType]);

      return v27 & 1;
    }

    goto LABEL_34;
  }

  v27 = v26 == 6;
  return v27 & 1;
}

uint64_t sub_26B6A505C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736574756E696DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73646E6F636573 && a2 == 0xE700000000000000;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x636573696C6C696DLL && a2 == 0xEC00000073646E6FLL;
      if (v7 || (sub_26B6EA5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x657474616D726F66 && a2 == 0xE900000000000064;
        if (v8 || (sub_26B6EA5D4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7079546B636F6C63 && a2 == 0xE900000000000065)
        {

          return 4;
        }

        else
        {
          v10 = sub_26B6EA5D4();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_26B6A520C(char a1)
{
  result = 0x736574756E696DLL;
  switch(a1)
  {
    case 1:
      result = 0x73646E6F636573;
      break;
    case 2:
      result = 0x636573696C6C696DLL;
      break;
    case 3:
      result = 0x657474616D726F66;
      break;
    case 4:
      result = 0x7079546B636F6C63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B6A52C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6A505C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6A52E8(uint64_t a1)
{
  v2 = sub_26B6B12B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6A5324(uint64_t a1)
{
  v2 = sub_26B6B12B8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B6A5384()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040ABB8, &qword_26B6F3998);
  OUTLINED_FUNCTION_5_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6B12B8();
  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_40_3(OBJC_IVAR____TtC9SportsKit22SportingEventClockTime__minutes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A8D8, &qword_26B6F37F8);
  sub_26B6AF944();
  OUTLINED_FUNCTION_15_6();
  sub_26B6EA534();
  if (!v1)
  {
    OUTLINED_FUNCTION_40_3(OBJC_IVAR____TtC9SportsKit22SportingEventClockTime__seconds);
    OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_15_6();
    sub_26B6EA534();
    OUTLINED_FUNCTION_40_3(OBJC_IVAR____TtC9SportsKit22SportingEventClockTime__milliseconds);
    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_15_6();
    sub_26B6EA534();
    v8 = *(v0 + OBJC_IVAR____TtC9SportsKit22SportingEventClockTime__formatted);
    OUTLINED_FUNCTION_176();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A080, &unk_26B6F37B0);
    sub_26B6839E8();
    OUTLINED_FUNCTION_8_7();
    sub_26B6EA534();
    v9 = *(v0 + OBJC_IVAR____TtC9SportsKit22SportingEventClockTime__clockType);
    OUTLINED_FUNCTION_175();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040ABC0, &qword_26B6F39A0);
    sub_26B6B130C();
    OUTLINED_FUNCTION_8_7();
    sub_26B6EA534();
  }

  v6 = OUTLINED_FUNCTION_21_2();
  v7(v6);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

void SportingEventClockTime.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  OUTLINED_FUNCTION_4_10();
  SportingEventClockTime.init(from:)();
}

void SportingEventClockTime.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A1D8, &unk_26B6F2580);
  v33 = OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_145(OBJC_IVAR____TtC9SportsKit22SportingEventClockTime__minutes);
  v8 = &v0[OBJC_IVAR____TtC9SportsKit22SportingEventClockTime__seconds];
  *v8 = 0;
  v8[8] = v9;
  v10 = &v0[OBJC_IVAR____TtC9SportsKit22SportingEventClockTime__milliseconds];
  *v10 = 0;
  v10[8] = v9;
  v11 = &v0[OBJC_IVAR____TtC9SportsKit22SportingEventClockTime__formatted];
  *v11 = 0;
  v11[1] = 0;
  v34 = v0;
  v35 = v11;
  v12 = OBJC_IVAR____TtC9SportsKit22SportingEventClockTime__clockType;
  v0[OBJC_IVAR____TtC9SportsKit22SportingEventClockTime__clockType] = 6;
  v13 = v3[3];
  v14 = v3[4];
  OUTLINED_FUNCTION_39(v3);
  sub_26B6B12B8();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    v19 = v35[1];

    type metadata accessor for SportingEventClockTime();
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_209();
    v16 = sub_26B6801B0(v15);
    OUTLINED_FUNCTION_180(v16, v17);
    OUTLINED_FUNCTION_209();
    *v8 = sub_26B6801B0(v18);
    v8[8] = v20 & 1;
    OUTLINED_FUNCTION_209();
    v22 = sub_26B6801B0(v21);
    OUTLINED_FUNCTION_187(v22, v23);
    OUTLINED_FUNCTION_209();
    v25 = sub_26B6801E8(v24);
    v27 = v35[1];
    *v35 = v25;
    v35[1] = v26;

    OUTLINED_FUNCTION_198(4);
    if (sub_26B6EA484())
    {
      OUTLINED_FUNCTION_200();
      OUTLINED_FUNCTION_209();
      sub_26B6EA3C4();
      v28 = v12;
      OUTLINED_FUNCTION_222();
      v29 = OUTLINED_FUNCTION_213();
      sub_26B681844(v29);
      OUTLINED_FUNCTION_199();
    }

    else
    {
      v30 = 6;
      v28 = v12;
    }

    v34[v28] = v30;
    v36.receiver = v34;
    v36.super_class = type metadata accessor for SportingEventClockTime();
    objc_msgSendSuper2(&v36, sel_init);
    v31 = OUTLINED_FUNCTION_171();
    v32(v31, v33);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_37();
}

void sub_26B6A585C(void *a1@<X8>)
{
  SportingEventClockTime.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

SportsKit::SportingEventClockTimeType_optional __swiftcall SportingEventClockTimeType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_23_4();
  sub_26B6EA394();
  OUTLINED_FUNCTION_113_0();

  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t SportingEventClockTimeType.rawValue.getter()
{
  result = 1701667143;
  switch(*v0)
  {
    case 1:
      result = 0x65676170706F7453;
      break;
    case 2:
      result = OUTLINED_FUNCTION_74_0();
      break;
    case 3:
      result = 0x6C61746F54;
      break;
    case 4:
      result = 1819042135;
      break;
    case 5:
      result = OUTLINED_FUNCTION_12_0();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B6A5AD0@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventClockTimeType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B6A5C50(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26B6A5C8C(v4);
}

uint64_t sub_26B6A5C8C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__runningState);
  *(v1 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__runningState) = a1;
}

uint64_t sub_26B6A5CC0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  return sub_26B6A5D20(v2);
}

void *sub_26B6A5CF0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__activityStatus);
  v2 = v1;
  return v1;
}

uint64_t sub_26B6A5D2C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  return sub_26B6A5D8C(v2);
}

void *sub_26B6A5D5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__additional);
  v2 = v1;
  return v1;
}

id SportingEventClock.init(minutes:seconds:milliseconds:period:runningState:isCountingDown:activityStatus:additional:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void *a10, void *a11)
{
  OUTLINED_FUNCTION_152(OBJC_IVAR____TtC9SportsKit18SportingEventClock__minutes);
  v13 = &v11[OBJC_IVAR____TtC9SportsKit18SportingEventClock__seconds];
  *v13 = 0;
  v13[8] = v14;
  v15 = &v11[OBJC_IVAR____TtC9SportsKit18SportingEventClock__milliseconds];
  *v15 = 0;
  v15[8] = v14;
  v16 = OBJC_IVAR____TtC9SportsKit18SportingEventClock__runningState;
  *&v11[OBJC_IVAR____TtC9SportsKit18SportingEventClock__runningState] = 0;
  v17 = OBJC_IVAR____TtC9SportsKit18SportingEventClock__isCountingDown;
  v11[OBJC_IVAR____TtC9SportsKit18SportingEventClock__isCountingDown] = 2;
  v18 = OBJC_IVAR____TtC9SportsKit18SportingEventClock__activityStatus;
  *&v11[OBJC_IVAR____TtC9SportsKit18SportingEventClock__activityStatus] = 0;
  v19 = OBJC_IVAR____TtC9SportsKit18SportingEventClock__additional;
  *&v11[OBJC_IVAR____TtC9SportsKit18SportingEventClock__additional] = 0;
  *v21 = v20;
  *(v21 + 8) = v22 & 1;
  *v13 = v23;
  v13[8] = v24 & 1;
  *v15 = v25;
  v15[8] = v26 & 1;
  *&v11[OBJC_IVAR____TtC9SportsKit18SportingEventClock_period] = v27;
  *&v11[v16] = v28;
  v11[v17] = a9;
  *&v11[v18] = a10;
  v29 = *&v11[v19];
  *&v11[v19] = a11;
  v30 = v27;
  OUTLINED_FUNCTION_113_0();

  v31 = a10;
  v32 = a11;

  v35.receiver = v11;
  v35.super_class = type metadata accessor for SportingEventClock();
  v33 = objc_msgSendSuper2(&v35, sel_init);

  return v33;
}

uint64_t sub_26B6A5F74()
{
  OUTLINED_FUNCTION_103_1();
  sub_26B6EA394();
  OUTLINED_FUNCTION_250();
  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_26B6A5FB8(char a1)
{
  result = 0x736574756E696DLL;
  switch(a1)
  {
    case 1:
      result = 0x73646E6F636573;
      break;
    case 2:
      result = 0x636573696C6C696DLL;
      break;
    case 3:
      result = OUTLINED_FUNCTION_219(25968);
      break;
    case 4:
      result = 0x53676E696E6E7572;
      break;
    case 5:
      result = 0x69746E756F437369;
      break;
    case 6:
      result = OUTLINED_FUNCTION_74_0();
      break;
    case 7:
      result = 0x6E6F697469646461;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B6A60A0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_26B6477D8();
}

uint64_t sub_26B6A6114@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26B6A5F74();
  *a2 = result;
  return result;
}

unint64_t sub_26B6A6144()
{
  v1 = OUTLINED_FUNCTION_229();
  result = sub_26B6A5FB8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26B6A6188@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B6A5FB4();
  *a1 = result;
  return result;
}

uint64_t sub_26B6A61BC(uint64_t a1)
{
  v2 = sub_26B6B1468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6A61F8(uint64_t a1)
{
  v2 = sub_26B6B1468();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B6A6234(uint64_t a1)
{
  sub_26B68A2A0(a1, v26);
  if (!v27)
  {
    sub_26B6413B4(v26, &qword_2804092A0, &qword_26B6F2850);
    goto LABEL_24;
  }

  v2 = type metadata accessor for SportingEventClock();
  OUTLINED_FUNCTION_38_3(v2, v3, v4, v2, v5, v6, v7, v8, v23, v24);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v21 = 0;
    return v21 & 1;
  }

  OUTLINED_FUNCTION_155();
  if (v11)
  {
    if ((v10 & 1) == 0)
    {
LABEL_23:

      goto LABEL_24;
    }
  }

  else
  {
    if (v10)
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_57_0(v9);
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  OUTLINED_FUNCTION_155();
  if (v15)
  {
    if ((v14 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v14)
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_57_0(v13);
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  OUTLINED_FUNCTION_155();
  if (v18)
  {
    if ((v17 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v17)
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_57_0(v16);
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  sub_26B68A378();
  v19 = *(v1 + OBJC_IVAR____TtC9SportsKit18SportingEventClock_period);
  v20 = *&v25[OBJC_IVAR____TtC9SportsKit18SportingEventClock_period];
  OUTLINED_FUNCTION_92_1();
  v21 = sub_26B6E9FA4();

  return v21 & 1;
}

void SportingEventClock.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  v1 = OUTLINED_FUNCTION_4_10();
  SportingEventClock.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

void SportingEventClock.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AC10, &qword_26B6F39B8);
  OUTLINED_FUNCTION_4(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18_0();
  v18 = &v10[OBJC_IVAR____TtC9SportsKit18SportingEventClock__minutes];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v10[OBJC_IVAR____TtC9SportsKit18SportingEventClock__seconds];
  *v19 = 0;
  v19[8] = 1;
  v20 = &v10[OBJC_IVAR____TtC9SportsKit18SportingEventClock__milliseconds];
  *v20 = 0;
  v20[8] = 1;
  v45 = OBJC_IVAR____TtC9SportsKit18SportingEventClock__runningState;
  *&v10[OBJC_IVAR____TtC9SportsKit18SportingEventClock__runningState] = 0;
  v21 = OBJC_IVAR____TtC9SportsKit18SportingEventClock__isCountingDown;
  v10[OBJC_IVAR____TtC9SportsKit18SportingEventClock__isCountingDown] = 2;
  v46 = OBJC_IVAR____TtC9SportsKit18SportingEventClock__activityStatus;
  *&v10[OBJC_IVAR____TtC9SportsKit18SportingEventClock__activityStatus] = 0;
  v47 = OBJC_IVAR____TtC9SportsKit18SportingEventClock__additional;
  *&v10[OBJC_IVAR____TtC9SportsKit18SportingEventClock__additional] = 0;
  v22 = v13[3];
  v23 = v13[4];
  OUTLINED_FUNCTION_39(v13);
  sub_26B6B1468();
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v24 = *&v10[v45];

    type metadata accessor for SportingEventClock();
    OUTLINED_FUNCTION_91_1();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *v18 = OUTLINED_FUNCTION_167();
    v18[8] = v25 & 1;
    v26 = OUTLINED_FUNCTION_167();
    OUTLINED_FUNCTION_151(v26, v27);
    LOBYTE(a10) = 2;
    *v20 = OUTLINED_FUNCTION_167();
    v20[8] = v28 & 1;
    v29 = type metadata accessor for SportingEventClockPeriod();
    OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_135_0();
    sub_26B6B25CC(v30, v31, v32);
    OUTLINED_FUNCTION_41_1();
    sub_26B6EA414();
    v33 = a10;
    if (!a10)
    {
      v50 = 9;
      v49 = 0;
      v34 = objc_allocWithZone(v29);
      v33 = SportingEventClockPeriod.init(index:type:subdivision:subPeriod:)();
    }

    *&v10[OBJC_IVAR____TtC9SportsKit18SportingEventClock_period] = v33;
    type metadata accessor for SportingEventClockRunningState();
    OUTLINED_FUNCTION_206();
    sub_26B6B25CC(&qword_2810CDFC0, v35, type metadata accessor for SportingEventClockRunningState);
    OUTLINED_FUNCTION_30_5();
    sub_26B6EA414();
    v36 = *&v10[v45];
    *&v10[v45] = a10;

    OUTLINED_FUNCTION_172(5);
    v10[v21] = sub_26B6EA3E4();
    type metadata accessor for SportingEventClockActivityStatus();
    OUTLINED_FUNCTION_204();
    sub_26B6B25CC(&qword_2810CDE28, v37, type metadata accessor for SportingEventClockActivityStatus);
    OUTLINED_FUNCTION_41_1();
    sub_26B6EA414();
    v38 = *&v10[v46];
    *&v10[v46] = a10;

    v39 = type metadata accessor for SportingEventClock();
    OUTLINED_FUNCTION_233();
    OUTLINED_FUNCTION_45_2();
    sub_26B6B25CC(v40, v41, v42);
    OUTLINED_FUNCTION_41_1();
    sub_26B6EA414();
    v43 = OUTLINED_FUNCTION_186();
    v44(v43);
    OUTLINED_FUNCTION_224(a10);
    v48.receiver = v10;
    v48.super_class = v39;
    objc_msgSendSuper2(&v48, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  OUTLINED_FUNCTION_37();
}

id SportingEventClockPeriod.__allocating_init(index:type:subdivision:subPeriod:)()
{
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_6_0();
  return SportingEventClockPeriod.init(index:type:subdivision:subPeriod:)();
}

void sub_26B6A69CC()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_100_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AC18, &qword_26B6F39C0);
  OUTLINED_FUNCTION_5_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6B1468();
  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_25_5((v1 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__minutes));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A8D8, &qword_26B6F37F8);
  sub_26B6AF944();
  OUTLINED_FUNCTION_15_6();
  sub_26B6EA534();
  if (!v0)
  {
    OUTLINED_FUNCTION_25_5((v1 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__seconds));
    OUTLINED_FUNCTION_36_4();
    OUTLINED_FUNCTION_15_6();
    sub_26B6EA534();
    OUTLINED_FUNCTION_25_5((v1 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__milliseconds));
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_15_6();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit18SportingEventClock_period);
    OUTLINED_FUNCTION_207();
    type metadata accessor for SportingEventClockPeriod();
    OUTLINED_FUNCTION_135_0();
    sub_26B6B25CC(v6, v7, v8);
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit18SportingEventClock__runningState);
    OUTLINED_FUNCTION_206();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AC20, &qword_26B6F39C8);
    sub_26B6B1504();
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
    v11 = *(v1 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__isCountingDown);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A3D0, &qword_26B6F28A0);
    sub_26B68C890();
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit18SportingEventClock__activityStatus);
    OUTLINED_FUNCTION_204();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AC30, &qword_26B6F39D8);
    sub_26B6B163C();
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit18SportingEventClock__additional);
    OUTLINED_FUNCTION_233();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AB38, &qword_26B6F3940);
    sub_26B6B0C34();
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
  }

  v9 = OUTLINED_FUNCTION_21_2();
  v10(v9);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_190();
}

void sub_26B6A6C94(void *a1@<X8>)
{
  SportingEventClock.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B6A6D34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B616572427369 && a2 == 0xE700000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7079546B61657262 && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B6A6E04(char a1)
{
  if (a1)
  {
    return 0x7079546B61657262;
  }

  else
  {
    return 0x6B616572427369;
  }
}

uint64_t sub_26B6A6E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6A6D34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6A6E70(uint64_t a1)
{
  v2 = sub_26B6B1774();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6A6EAC(uint64_t a1)
{
  v2 = sub_26B6B1774();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B6A6F00()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AC50, &qword_26B6F39E8);
  OUTLINED_FUNCTION_5_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6B1774();
  OUTLINED_FUNCTION_39_3();
  v6 = *(v1 + OBJC_IVAR____TtC9SportsKit32SportingEventClockActivityStatus_isBreak);
  OUTLINED_FUNCTION_69_1();
  sub_26B6EA504();
  if (!v0)
  {
    v9 = *(v1 + OBJC_IVAR____TtC9SportsKit32SportingEventClockActivityStatus_breakType);
    sub_26B6B17C8();
    OUTLINED_FUNCTION_69_1();
    sub_26B6EA534();
  }

  v7 = OUTLINED_FUNCTION_21_2();
  v8(v7);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

void SportingEventClockActivityStatus.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  OUTLINED_FUNCTION_4_10();
  SportingEventClockActivityStatus.init(from:)();
}

void SportingEventClockActivityStatus.init(from:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_65_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AC58, &qword_26B6F39F0);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  sub_26B6B1774();
  OUTLINED_FUNCTION_12_7();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
    type metadata accessor for SportingEventClockActivityStatus();
    OUTLINED_FUNCTION_106_1();
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_52_1();
    v2[OBJC_IVAR____TtC9SportsKit32SportingEventClockActivityStatus_isBreak] = sub_26B6EA434() & 1;
    sub_26B6B181C();
    OUTLINED_FUNCTION_20_4();
    sub_26B6EA464();
    v2[OBJC_IVAR____TtC9SportsKit32SportingEventClockActivityStatus_breakType] = 0;
    v9.receiver = v2;
    v9.super_class = type metadata accessor for SportingEventClockActivityStatus();
    objc_msgSendSuper2(&v9, sel_init);
    v7 = OUTLINED_FUNCTION_10_8();
    v8(v7);
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_37();
}

void sub_26B6A71EC(void *a1@<X8>)
{
  SportingEventClockActivityStatus.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

SportsKit::SportingEventClockBreakType_optional __swiftcall SportingEventClockBreakType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_23_4();
  sub_26B6EA394();
  OUTLINED_FUNCTION_113_0();

  v4 = 7;
  if (v2 < 7)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t SportingEventClockBreakType.rawValue.getter()
{
  result = 1701736270;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_12_0();
      break;
    case 2:
      result = 0x74756F656D6954;
      break;
    case 3:
      result = 0x52746E6174736E49;
      break;
    case 4:
      result = 0x755279616C706552;
      break;
    case 5:
      result = 0x726550664F646E45;
      break;
    case 6:
      result = 0x627553664F646E45;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B6A74B8@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventClockBreakType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_26B6A7594(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  sub_26B6A7608(&v4);
  *a2 = v4;
}

void sub_26B6A75D0(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_26B6A7614(&v3);
}

void sub_26B6A7624(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  sub_26B6A7698(&v4);
  *a2 = v4;
}

void sub_26B6A7660(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_26B6A76A4(&v3);
}

uint64_t sub_26B6A76B4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  return sub_26B6A7714(v2);
}

void *sub_26B6A76E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__subPeriod);
  v2 = v1;
  return v1;
}

id SportingEventClockPeriod.init(index:type:subdivision:subPeriod:)()
{
  OUTLINED_FUNCTION_152(OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__index);
  v1 = OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__type;
  v0[OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__type] = 10;
  v3 = *v2;
  v4 = OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__subdivision;
  v0[OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__subdivision] = 6;
  v5 = OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__subPeriod;
  *v7 = v6;
  *(v7 + 8) = 0;
  v0[v1] = v3;
  v0[v4] = *v8;
  *&v0[v5] = v9;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for SportingEventClockPeriod();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_26B6A77A4(uint64_t a1)
{
  sub_26B68A2A0(a1, v38);
  if (!v39)
  {
    sub_26B6413B4(v38, &qword_2804092A0, &qword_26B6F2850);
    goto LABEL_69;
  }

  v2 = type metadata accessor for SportingEventClockPeriod();
  OUTLINED_FUNCTION_38_3(v2, v3, v4, v5, v6, v7, v8, v9, v35, v36);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_69:
    v32 = 0;
    return v32 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__index + 8))
  {
    if ((v37[OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__index + 8] & 1) == 0)
    {
LABEL_68:

      goto LABEL_69;
    }
  }

  else
  {
    if (v37[OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__index + 8])
    {
      goto LABEL_68;
    }

    OUTLINED_FUNCTION_57_0((v1 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__index));
    if (!v16)
    {
      goto LABEL_68;
    }
  }

  v10 = 0x72657472617551;
  v11 = 0xE700000000000000;
  v12 = 0;
  v13 = 0x72657472617551;
  v14 = 0;
  switch(*(v1 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__type))
  {
    case 1:
      v11 = 0xE400000000000000;
      v13 = 1718378824;
      goto LABEL_20;
    case 2:
      v11 = 0xE600000000000000;
      v13 = 0x676E696E6E49;
      goto LABEL_20;
    case 3:
      v11 = 0xE300000000000000;
      v13 = 7628115;
      goto LABEL_20;
    case 4:
      v11 = 0xE800000000000000;
      v13 = 0x656D69747265764FLL;
      goto LABEL_20;
    case 5:
      v11 = 0xE900000000000073;
      v13 = 0x74756F746F6F6853;
      goto LABEL_20;
    case 6:
      v11 = 0xE300000000000000;
      v13 = 7364940;
      goto LABEL_20;
    case 7:
      v11 = 0xE600000000000000;
      v13 = 0x646F69726550;
      goto LABEL_20;
    case 8:
      v11 = 0xE500000000000000;
      v13 = 0x646E756F52;
      goto LABEL_20;
    case 9:
      v13 = 0xD000000000000012;
      v11 = 0x800000026B6FAED0;
      goto LABEL_20;
    case 0xA:
      goto LABEL_21;
    default:
LABEL_20:
      v12 = v13;
      v14 = v11;
LABEL_21:
      v15 = 0xE700000000000000;
      switch(v37[OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__type])
      {
        case 1:
          v15 = 0xE400000000000000;
          v10 = 1718378824;
          goto LABEL_33;
        case 2:
          v15 = 0xE600000000000000;
          v10 = 0x676E696E6E49;
          goto LABEL_33;
        case 3:
          v15 = 0xE300000000000000;
          v10 = 7628115;
          goto LABEL_33;
        case 4:
          v15 = 0xE800000000000000;
          v10 = 0x656D69747265764FLL;
          goto LABEL_33;
        case 5:
          v15 = 0xE900000000000073;
          OUTLINED_FUNCTION_90();
          goto LABEL_33;
        case 6:
          v15 = 0xE300000000000000;
          v10 = 7364940;
          goto LABEL_33;
        case 7:
          v15 = 0xE600000000000000;
          v10 = 0x646F69726550;
          goto LABEL_33;
        case 8:
          v15 = 0xE500000000000000;
          v10 = 0x646E756F52;
          goto LABEL_33;
        case 9:
          v10 = 0xD000000000000012;
          v15 = 0x800000026B6FAED0;
          goto LABEL_33;
        case 10:
          if (!v14)
          {
            goto LABEL_41;
          }

          goto LABEL_63;
        default:
LABEL_33:
          if (!v14)
          {
LABEL_63:

            goto LABEL_69;
          }

          v16 = v12 == v10 && v14 == v15;
          if (v16)
          {
          }

          else
          {
            v17 = sub_26B6EA5D4();

            if ((v17 & 1) == 0)
            {
              goto LABEL_68;
            }
          }

LABEL_41:
          v18 = 1701736270;
          v19 = 0xE400000000000000;
          v20 = 0;
          v21 = 1701736270;
          v22 = 0;
          switch(*(v1 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__subdivision))
          {
            case 1:
              v19 = 0xE500000000000000;
              v23 = 1918989395;
              goto LABEL_47;
            case 2:
              v19 = 0xE300000000000000;
              v21 = 6581829;
              goto LABEL_48;
            case 3:
              v19 = 0xE600000000000000;
              v21 = 0x6D6F74746F42;
              goto LABEL_48;
            case 4:
              v21 = 7368532;
              v19 = 0xE300000000000000;
              goto LABEL_48;
            case 5:
              v19 = 0xE500000000000000;
              v23 = 1631745089;
LABEL_47:
              v21 = v23 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
              goto LABEL_48;
            case 6:
              goto LABEL_49;
            default:
LABEL_48:
              v20 = v21;
              v22 = v19;
LABEL_49:
              v24 = 0xE400000000000000;
              switch(v37[OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__subdivision])
              {
                case 1:
                  v24 = 0xE500000000000000;
                  v25 = 1918989395;
                  goto LABEL_55;
                case 2:
                  v24 = 0xE300000000000000;
                  v18 = 6581829;
                  goto LABEL_56;
                case 3:
                  v24 = 0xE600000000000000;
                  v18 = 0x6D6F74746F42;
                  goto LABEL_56;
                case 4:
                  v18 = 7368532;
                  v24 = 0xE300000000000000;
                  goto LABEL_56;
                case 5:
                  v24 = 0xE500000000000000;
                  v25 = 1631745089;
LABEL_55:
                  v18 = v25 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
                  goto LABEL_56;
                case 6:
                  if (v22)
                  {
                    goto LABEL_63;
                  }

                  goto LABEL_65;
                default:
LABEL_56:
                  if (!v22)
                  {
                    goto LABEL_63;
                  }

                  if (v20 == v18 && v22 == v24)
                  {
                  }

                  else
                  {
                    v27 = sub_26B6EA5D4();

                    if ((v27 & 1) == 0)
                    {
                      goto LABEL_68;
                    }
                  }

LABEL_65:
                  v28 = *(v1 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__subPeriod);
                  v29 = *&v37[OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__subPeriod];
                  if (v28)
                  {
                    if (!v29)
                    {
                      goto LABEL_68;
                    }

                    v30 = v29;
                    v31 = v28;
                    OUTLINED_FUNCTION_211();
                    v32 = sub_26B6E9FA4();
                  }

                  else
                  {
                    v34 = v29;

                    if (v29)
                    {

                      goto LABEL_69;
                    }

                    v32 = 1;
                  }

                  break;
              }

              break;
          }

          break;
      }

      break;
  }

  return v32 & 1;
}

unint64_t SportingEventClockPeriodType.rawValue.getter()
{
  result = 0x72657472617551;
  switch(*v0)
  {
    case 1:
      result = 1718378824;
      break;
    case 2:
      result = 0x676E696E6E49;
      break;
    case 3:
      result = 7628115;
      break;
    case 4:
      result = 0x656D69747265764FLL;
      break;
    case 5:
      result = 0x74756F746F6F6853;
      break;
    case 6:
      result = 7364940;
      break;
    case 7:
      result = OUTLINED_FUNCTION_219(25936);
      break;
    case 8:
      result = 0x646E756F52;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SportingEventClockPeriodSubdivision.rawValue.getter()
{
  result = 1701736270;
  switch(*v0)
  {
    case 1:
      result = 0x7472617453;
      break;
    case 2:
      result = 6581829;
      break;
    case 3:
      result = 0x6D6F74746F42;
      break;
    case 4:
      result = 7368532;
      break;
    case 5:
      result = 0x7461427441;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B6A7E54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7369766964627573 && a2 == 0xEB000000006E6F69;
      if (v7 || (sub_26B6EA5D4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6F69726550627573 && a2 == 0xE900000000000064)
      {

        return 3;
      }

      else
      {
        v9 = sub_26B6EA5D4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_26B6A7FB4(char a1)
{
  result = 0x7865646E69;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x7369766964627573;
      break;
    case 3:
      result = 0x6F69726550627573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B6A8040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6A7E54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6A8068(uint64_t a1)
{
  v2 = sub_26B6B1870();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6A80A4(uint64_t a1)
{
  v2 = sub_26B6B1870();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B6A8104()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AC80, &qword_26B6F39F8);
  OUTLINED_FUNCTION_5_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6B1870();
  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_25_5((v0 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__index));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A8D8, &qword_26B6F37F8);
  sub_26B6AF944();
  OUTLINED_FUNCTION_2_11();
  sub_26B6EA534();
  if (!v1)
  {
    OUTLINED_FUNCTION_193(OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__type);
    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AC88, &qword_26B6F3A00);
    sub_26B6B18C4();
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
    OUTLINED_FUNCTION_193(OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__subdivision);
    OUTLINED_FUNCTION_231();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AC98, &qword_26B6F3A10);
    sub_26B6B1A20();
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
    v8 = *(v0 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__subPeriod);
    OUTLINED_FUNCTION_207();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AB88, &qword_26B6F3968);
    sub_26B6B0FC4();
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
  }

  v6 = OUTLINED_FUNCTION_21_2();
  v7(v6);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

void SportingEventClockPeriod.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  OUTLINED_FUNCTION_4_10();
  SportingEventClockPeriod.init(from:)();
}

void SportingEventClockPeriod.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A1D0, &qword_26B6F3A20);
  OUTLINED_FUNCTION_4(v4);
  v26 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_16_0();
  v9 = &v0[OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__index];
  *v9 = 0;
  v9[8] = 1;
  v10 = OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__type;
  v0[OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__type] = 10;
  v11 = OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__subdivision;
  v0[OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__subdivision] = 6;
  v27 = OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__subPeriod;
  *&v0[OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__subPeriod] = 0;
  v12 = v3[3];
  v13 = v3[4];
  OUTLINED_FUNCTION_39(v3);
  sub_26B6B1870();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);

    type metadata accessor for SportingEventClockPeriod();
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_215();
  }

  else
  {
    v14 = sub_26B680210(0);
    OUTLINED_FUNCTION_151(v14, v15);
    OUTLINED_FUNCTION_198(1);
    v16 = sub_26B6EA484();
    if (v16)
    {
      OUTLINED_FUNCTION_200();
      sub_26B6EA3C4();
      v17 = v26;
      OUTLINED_FUNCTION_222();
      OUTLINED_FUNCTION_213();
      sub_26B681A10();
      OUTLINED_FUNCTION_199();
    }

    else
    {
      v18 = 10;
      v17 = v26;
    }

    v0[v10] = v18;
    OUTLINED_FUNCTION_198(2);
    if (sub_26B6EA484())
    {
      OUTLINED_FUNCTION_200();
      sub_26B6EA3C4();
      OUTLINED_FUNCTION_222();
      v19 = OUTLINED_FUNCTION_213();
      sub_26B681864(v19);
      OUTLINED_FUNCTION_199();
    }

    else
    {
      v20 = 6;
    }

    v0[v11] = v20;
    v21 = sub_26B680248(3);
    v22 = *&v0[v27];
    *&v0[v27] = v21;

    v28.receiver = v0;
    v28.super_class = type metadata accessor for SportingEventClockPeriod();
    objc_msgSendSuper2(&v28, sel_init);
    v23 = *(v17 + 8);
    v24 = OUTLINED_FUNCTION_111();
    v25(v24);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B6A85B8(void *a1@<X8>)
{
  SportingEventClockPeriod.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

SportsKit::SportingEventClockPeriodType_optional __swiftcall SportingEventClockPeriodType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_23_4();
  sub_26B6EA394();
  OUTLINED_FUNCTION_113_0();

  v4 = 10;
  if (v2 < 0xA)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_26B6A8720(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_26B6475E8();
}

unint64_t sub_26B6A8738@<X0>(unint64_t *a1@<X8>)
{
  result = SportingEventClockPeriodType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SportsKit::SportingEventClockPeriodSubdivision_optional __swiftcall SportingEventClockPeriodSubdivision.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_23_4();
  sub_26B6EA394();
  OUTLINED_FUNCTION_113_0();

  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

BOOL static SportingEventClockPeriodSubdivision.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if ((*a1 - 1) > 3u)
  {
    v2 = 0x8000000000000000;
  }

  else
  {
    v2 = qword_26B6F82A8[(*a1 - 1)];
  }

  if ((*a2 - 1) > 3u)
  {
    v3 = 0x8000000000000000;
  }

  else
  {
    v3 = qword_26B6F82A8[(*a2 - 1)];
  }

  return v2 < v3;
}

uint64_t static SportingEventClockPeriodSubdivision.== infix(_:_:)(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = 1701736270;
  v3 = *a1;
  v4 = 0xE400000000000000;
  v5 = 1701736270;
  switch(v3)
  {
    case 1:
      v4 = 0xE500000000000000;
      v6 = 1918989395;
      goto LABEL_7;
    case 2:
      v4 = 0xE300000000000000;
      v5 = 6581829;
      break;
    case 3:
      v4 = 0xE600000000000000;
      v5 = 0x6D6F74746F42;
      break;
    case 4:
      v4 = 0xE300000000000000;
      v5 = 7368532;
      break;
    case 5:
      v4 = 0xE500000000000000;
      v6 = 1631745089;
LABEL_7:
      v5 = v6 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
      break;
    default:
      break;
  }

  v7 = 0xE400000000000000;
  switch(*a2)
  {
    case 1:
      v7 = 0xE500000000000000;
      v8 = 1918989395;
      goto LABEL_14;
    case 2:
      v7 = 0xE300000000000000;
      v2 = 6581829;
      break;
    case 3:
      v7 = 0xE600000000000000;
      v2 = 0x6D6F74746F42;
      break;
    case 4:
      v7 = 0xE300000000000000;
      v2 = 7368532;
      break;
    case 5:
      v7 = 0xE500000000000000;
      v8 = 1631745089;
LABEL_14:
      v2 = v8 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v4 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_26B6EA5D4();
  }

  return v10 & 1;
}

uint64_t sub_26B6A8B7C@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventClockPeriodSubdivision.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_26B6A8C1C(char a1, char a2)
{
  if ((a2 - 1) > 3u)
  {
    v2 = 0x8000000000000000;
  }

  else
  {
    v2 = qword_26B6F82A8[(a2 - 1)];
  }

  if ((a1 - 1) > 3u)
  {
    v3 = 0x8000000000000000;
  }

  else
  {
    v3 = qword_26B6F82A8[(a1 - 1)];
  }

  return v2 >= v3;
}

BOOL sub_26B6A8C88(char a1, char a2)
{
  if ((a2 - 1) > 3u)
  {
    v2 = 0x8000000000000000;
  }

  else
  {
    v2 = qword_26B6F82A8[(a2 - 1)];
  }

  if ((a1 - 1) > 3u)
  {
    v3 = 0x8000000000000000;
  }

  else
  {
    v3 = qword_26B6F82A8[(a1 - 1)];
  }

  return v2 < v3;
}

uint64_t SportingEventClockRunningState.__allocating_init(isReliable:isActive:)(char a1, char a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 17) = a2;
  return result;
}

uint64_t SportingEventClockRunningState.init(isReliable:isActive:)(char a1, char a2)
{
  *(v2 + 16) = a1;
  *(v2 + 17) = a2;
  return v2;
}

uint64_t sub_26B6A8D50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6261696C65527369 && a2 == 0xEA0000000000656CLL;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6576697463417369 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B6A8E20(char a1)
{
  if (a1)
  {
    return 0x6576697463417369;
  }

  else
  {
    return 0x6261696C65527369;
  }
}

uint64_t sub_26B6A8E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6A8D50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6A8E8C(uint64_t a1)
{
  v2 = sub_26B6B1B7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6A8EC8(uint64_t a1)
{
  v2 = sub_26B6B1B7C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B6A8F1C()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040ACA8, &unk_26B6F3A28);
  OUTLINED_FUNCTION_5_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6B1B7C();
  OUTLINED_FUNCTION_39_3();
  v9 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A3D0, &qword_26B6F28A0);
  sub_26B68C890();
  OUTLINED_FUNCTION_15_6();
  sub_26B6EA534();
  if (!v1)
  {
    v8 = *(v0 + 17);
    OUTLINED_FUNCTION_15_6();
    sub_26B6EA534();
  }

  v6 = OUTLINED_FUNCTION_21_2();
  v7(v6);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

uint64_t SportingEventClockRunningState.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_23_6();
  swift_allocObject();
  OUTLINED_FUNCTION_4_10();
  SportingEventClockRunningState.init(from:)();
  return v0;
}

void SportingEventClockRunningState.init(from:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_125();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A1C8, &unk_26B6F2570);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26_1();
  *(v1 + 16) = 514;
  OUTLINED_FUNCTION_21_3();
  sub_26B6B1B7C();
  OUTLINED_FUNCTION_31_4();
  if (v2)
  {
  }

  else
  {
    OUTLINED_FUNCTION_88_1();
    *(v0 + 16) = sub_26B6802FC(v8);
    OUTLINED_FUNCTION_88_1();
    v10 = sub_26B6802FC(v9);
    v11 = OUTLINED_FUNCTION_13_3();
    v12(v11);
    *(v0 + 17) = v10;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B6A91CC@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventClockRunningState.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t SportingEventPlayLevel.rawValue.getter()
{
  result = 0x737472656C41;
  switch(*v0)
  {
    case 1:
      result = 7105601;
      break;
    case 2:
      result = 0x6867696C68676948;
      break;
    case 3:
      result = 0x79616C5079654BLL;
      break;
    case 4:
      result = 0x6E6F6973736553;
      break;
    default:
      return result;
  }

  return result;
}

SportsKit::SportingEventPlayLevel_optional __swiftcall SportingEventPlayLevel.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_23_4();
  sub_26B6EA394();
  OUTLINED_FUNCTION_113_0();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_26B6A9438@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventPlayLevel.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B6A9588(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26B6A95C0(v4);
}

uint64_t sub_26B6A95CC(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  return sub_26B6A962C(v2);
}

void *sub_26B6A95FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__clock);
  v2 = v1;
  return v1;
}

uint64_t sub_26B6A9638(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26B6A9670(v4);
}

uint64_t sub_26B6A967C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26B6A96B4(v4);
}

uint64_t sub_26B6A96C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26B6A96F8(v4);
}

uint64_t sub_26B6A9704(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26B6A973C(v4);
}

uint64_t sub_26B6A9748()
{
  OUTLINED_FUNCTION_103_1();
  sub_26B6EA394();
  OUTLINED_FUNCTION_250();
  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26B6A978C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x706D617473;
      break;
    case 2:
      result = 0x7470697263736564;
      break;
    case 3:
      result = 0x7470697263736564;
      break;
    case 4:
      result = 0x74697465706D6F63;
      break;
    case 5:
      result = 0x6B636F6C63;
      break;
    case 6:
      result = 0x736C6576656CLL;
      break;
    case 7:
      result = 0x7069636974726170;
      break;
    case 8:
      result = 0x697461746F6E6E61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B6A9904@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26B6A9748();
  *a2 = result;
  return result;
}

uint64_t sub_26B6A9934()
{
  v1 = OUTLINED_FUNCTION_229();
  result = sub_26B6A978C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_26B6A9978@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B6A9788();
  *a1 = result;
  return result;
}

uint64_t sub_26B6A99AC(uint64_t a1)
{
  v2 = sub_26B6B1BD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6A99E8(uint64_t a1)
{
  v2 = sub_26B6B1BD0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B6A9A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_166();
  a27 = v30;
  a28 = v31;
  v32 = v28;
  sub_26B68A2A0(v33, &a13);
  if (!a16)
  {
    sub_26B6413B4(&a13, &qword_2804092A0, &qword_26B6F2850);
    goto LABEL_59;
  }

  type metadata accessor for SportingEventPlay();
  if ((OUTLINED_FUNCTION_98_0() & 1) == 0)
  {
LABEL_59:
    OUTLINED_FUNCTION_165();
    return;
  }

  v34 = a12;
  v35 = *(v28 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__participants);
  if (!v35 || (v36 = *&a12[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__participants]) == 0)
  {
LABEL_22:
    v46 = *&v34[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__id + 8];
    if (*(v32 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__id + 8))
    {
      if (!v46)
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_44_2((v32 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__id));
      v49 = v49 && v47 == v48;
      if (!v49 && (sub_26B6EA5D4() & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (v46)
    {
      goto LABEL_58;
    }

    if (*(v32 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8))
    {
      if ((v34[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8] & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (v34[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8])
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_57_0((v32 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp));
      if (!v49)
      {
        goto LABEL_58;
      }
    }

    OUTLINED_FUNCTION_228(OBJC_IVAR____TtC9SportsKit17SportingEventPlay_playDescription);
    v52 = v49 && v50 == v51;
    if (!v52 && (sub_26B6EA5D4() & 1) == 0)
    {
      goto LABEL_58;
    }

    v53 = *(v32 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__competitors);
    v54 = *&v34[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__competitors];

    OUTLINED_FUNCTION_92_1();
    sub_26B6371EC();
    v56 = v55;

    if ((v56 & 1) == 0)
    {
      goto LABEL_58;
    }

    v57 = *(v32 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__clock);
    v58 = *&v34[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__clock];
    if (v57)
    {
      if (!v58)
      {
        goto LABEL_58;
      }

      type metadata accessor for SportingEventClock();
      v59 = v58;
      v60 = v57;
      OUTLINED_FUNCTION_211();
      v61 = sub_26B6E9FA4();

      if ((v61 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (v58)
    {
      goto LABEL_58;
    }

    v62 = *(v32 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__levels);
    v63 = *&v34[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__levels];

    v64 = OUTLINED_FUNCTION_92_1();
    v66 = sub_26B637234(v64, v65);

    if ((v66 & 1) == 0)
    {
      goto LABEL_58;
    }

    v67 = *&v34[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__playDescriptors];
    if (*(v32 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__playDescriptors))
    {
      if (!v67)
      {
        goto LABEL_58;
      }

      v68 = *&v34[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__playDescriptors];

      sub_26B637400();
      v70 = v69;

      if ((v70 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (v67)
    {
      goto LABEL_58;
    }

    v37 = *&v34[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__annotations];
    if (!*(v32 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__annotations))
    {
LABEL_63:

      if (v37)
      {
LABEL_47:
      }

      goto LABEL_59;
    }

    if (!v37)
    {
      goto LABEL_58;
    }

    v71 = *&v34[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__annotations];

    sub_26B6375C8(v72, v37);

    goto LABEL_59;
  }

  v37 = sub_26B651134(*(v28 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__participants));
  if (v37 != sub_26B651134(v36))
  {
LABEL_58:

    goto LABEL_59;
  }

  v73 = v32;
  if ((v37 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_43_2();

    v38 = 4;
    while (1)
    {
      OUTLINED_FUNCTION_124_0();
      if (v49)
      {

        v32 = v73;
        v34 = a12;
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_122_0();
      if (v39)
      {
        break;
      }

      if (a11)
      {
        v44 = OUTLINED_FUNCTION_92_1();
        v41 = MEMORY[0x26D67DB30](v44);
      }

      else
      {
        OUTLINED_FUNCTION_121_0();
        if (v40)
        {
          goto LABEL_61;
        }

        v41 = *(v35 + 8 * v38);
      }

      v34 = v41;
      if (v29)
      {
        v45 = OUTLINED_FUNCTION_111();
        v42 = MEMORY[0x26D67DB30](v45);
      }

      else
      {
        OUTLINED_FUNCTION_156();
        if (v40)
        {
          goto LABEL_62;
        }

        v42 = *(v36 + 8 * v38);
      }

      v43 = v42;
      type metadata accessor for SportingEventParticipant();
      v37 = OUTLINED_FUNCTION_93_1();

      ++v38;
      if ((v37 & 1) == 0)
      {

        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  __break(1u);
}

void sub_26B6A9EE0()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_100_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AD00, &qword_26B6F3A38);
  OUTLINED_FUNCTION_5_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6B1BD0();
  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_164(OBJC_IVAR____TtC9SportsKit17SportingEventPlay__id);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A080, &unk_26B6F37B0);
  sub_26B6839E8();
  OUTLINED_FUNCTION_2_11();
  sub_26B6EA534();
  if (!v0)
  {
    OUTLINED_FUNCTION_25_5((v1 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp));
    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A8D8, &qword_26B6F37F8);
    sub_26B6AF944();
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
    OUTLINED_FUNCTION_105(OBJC_IVAR____TtC9SportsKit17SportingEventPlay_playDescription);
    OUTLINED_FUNCTION_35_1();
    sub_26B6EA4F4();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit17SportingEventPlay__playDescriptors);
    OUTLINED_FUNCTION_207();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AD10, &qword_26B6F3A40);
    sub_26B6B1C24();
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit17SportingEventPlay__competitors);
    OUTLINED_FUNCTION_206();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A6D0, &qword_26B6F3688);
    sub_26B6AE1F4();
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit17SportingEventPlay__clock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AB38, &qword_26B6F3940);
    sub_26B6B0C34();
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit17SportingEventPlay__levels);
    OUTLINED_FUNCTION_204();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AD40, &qword_26B6F3A58);
    sub_26B6B1E04();
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit17SportingEventPlay__participants);
    OUTLINED_FUNCTION_233();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A930, &qword_26B6F3818);
    sub_26B6AFB04();
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
    OUTLINED_FUNCTION_86_1(OBJC_IVAR____TtC9SportsKit17SportingEventPlay__annotations);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AD60, &qword_26B6F3A68);
    sub_26B6B1F0C();
    OUTLINED_FUNCTION_2_11();
    sub_26B6EA534();
  }

  v6 = OUTLINED_FUNCTION_21_2();
  v7(v6);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_190();
}

void SportingEventPlay.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  v1 = OUTLINED_FUNCTION_4_10();
  SportingEventPlay.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

void SportingEventPlay.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  v12 = v10;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A188, &qword_26B6F2550);
  OUTLINED_FUNCTION_4(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_157(OBJC_IVAR____TtC9SportsKit17SportingEventPlay__id);
  v20 = v19;
  v21 = &v12[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp];
  *v21 = 0;
  v21[8] = 1;
  v49 = OBJC_IVAR____TtC9SportsKit17SportingEventPlay__clock;
  *&v12[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__clock] = 0;
  v48 = OBJC_IVAR____TtC9SportsKit17SportingEventPlay__participants;
  *&v12[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__participants] = 0;
  *&v12[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__playDescriptors] = 0;
  v47 = OBJC_IVAR____TtC9SportsKit17SportingEventPlay__annotations;
  *&v12[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__annotations] = 0;
  v22 = v14[3];
  v23 = v14[4];
  OUTLINED_FUNCTION_39(v14);
  sub_26B6B1BD0();
  OUTLINED_FUNCTION_48_1();
  if (v11)
  {
    OUTLINED_FUNCTION_244();
    __swift_destroy_boxed_opaque_existential_1(v14);
    v30 = v20[1];

    if (v21)
    {
      v31 = *&v12[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__competitors];
    }

    if (v14)
    {
      v32 = *&v12[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__levels];
    }

    v33 = *&v12[v48];

    OUTLINED_FUNCTION_197();

    v34 = *&v12[v47];

    type metadata accessor for SportingEventPlay();
    OUTLINED_FUNCTION_91_1();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = sub_26B6803A4(0);
    v25 = v20[1];
    *v20 = v24;
    v20[1] = v26;

    v27 = sub_26B6803CC(1);
    OUTLINED_FUNCTION_151(v27, v28);
    OUTLINED_FUNCTION_172(2);
    OUTLINED_FUNCTION_163();
    v29 = sub_26B6EA424();
    OUTLINED_FUNCTION_70(v29, v35, OBJC_IVAR____TtC9SportsKit17SportingEventPlay_playDescription);
    OUTLINED_FUNCTION_163();
    v37 = sub_26B680404(v36);
    OUTLINED_FUNCTION_94_1(v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A6D0, &qword_26B6F3688);
    OUTLINED_FUNCTION_206();
    sub_26B6B20EC();
    OUTLINED_FUNCTION_30_5();
    OUTLINED_FUNCTION_163();
    sub_26B6EA464();
    *&v12[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__competitors] = a10;
    OUTLINED_FUNCTION_163();
    v39 = sub_26B680440(v38);
    v40 = *&v12[v49];
    *&v12[v49] = v39;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AD40, &qword_26B6F3A58);
    OUTLINED_FUNCTION_204();
    sub_26B6B2224();
    OUTLINED_FUNCTION_30_5();
    OUTLINED_FUNCTION_163();
    sub_26B6EA464();
    *&v12[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__levels] = a10;
    OUTLINED_FUNCTION_163();
    v42 = sub_26B680520(v41);
    OUTLINED_FUNCTION_94_1(v42);
    OUTLINED_FUNCTION_163();
    v44 = sub_26B680548(v43);
    OUTLINED_FUNCTION_94_1(v44);
    v50.receiver = v12;
    v50.super_class = type metadata accessor for SportingEventPlay();
    objc_msgSendSuper2(&v50, sel_init);
    v45 = OUTLINED_FUNCTION_101_1();
    v46(v45);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B6AA64C(void *a1@<X8>)
{
  SportingEventPlay.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_26B6AA69C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  sub_26B6AA710(&v4);
  *a2 = v4;
}

void sub_26B6AA6D8(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_26B6AA71C(&v3);
}

uint64_t SportingEventPlayDescriptor.DescriptorType.rawValue.getter()
{
  result = 0x656C746954;
  switch(*v0)
  {
    case 1:
      result = 0x656C746954627553;
      break;
    case 2:
      result = 0x646E496863746950;
      break;
    case 3:
      result = OUTLINED_FUNCTION_74_0();
      break;
    case 4:
      result = OUTLINED_FUNCTION_12_0();
      break;
    default:
      return result;
  }

  return result;
}

SportsKit::SportingEventPlayDescriptor::DescriptorType_optional __swiftcall SportingEventPlayDescriptor.DescriptorType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_23_4();
  sub_26B6EA394();
  OUTLINED_FUNCTION_113_0();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_26B6AA988@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventPlayDescriptor.DescriptorType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B6AAA18(uint64_t a1)
{
  sub_26B68A2A0(a1, v23);
  if (!v24)
  {
    sub_26B6413B4(v23, &qword_2804092A0, &qword_26B6F2850);
    goto LABEL_18;
  }

  v2 = type metadata accessor for SportingEventPlayDescriptor();
  OUTLINED_FUNCTION_38_3(v2, v3, v4, v2, v5, v6, v7, v8, v20, v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    LOBYTE(v14) = 0;
    return v14 & 1;
  }

  v9 = *(v1 + OBJC_IVAR____TtC9SportsKit27SportingEventPlayDescriptor__type);
  v10 = v22[OBJC_IVAR____TtC9SportsKit27SportingEventPlayDescriptor__type];
  if (v9 == 5)
  {
    if (v10 != 5)
    {
LABEL_17:

      goto LABEL_18;
    }
  }

  else if (v10 == 5 || (sub_26B646E7C(v9, v10) & 1) == 0)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_142_0();
  v13 = &v22[v12];
  v14 = *(v13 + 1);
  if (!v15)
  {
    v19 = *(v13 + 1);

    if (v14)
    {

      goto LABEL_18;
    }

    goto LABEL_23;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_44_2(v11);
    v17 = v17 && v16 == v14;
    if (!v17)
    {
      LOBYTE(v14) = OUTLINED_FUNCTION_223();
      goto LABEL_16;
    }

LABEL_23:
    LOBYTE(v14) = 1;
    return v14 & 1;
  }

LABEL_16:

  return v14 & 1;
}

id SportingEventPlayDescriptor.init()()
{
  v0[OBJC_IVAR____TtC9SportsKit27SportingEventPlayDescriptor__type] = 5;
  v1 = &v0[OBJC_IVAR____TtC9SportsKit27SportingEventPlayDescriptor__value];
  v2 = type metadata accessor for SportingEventPlayDescriptor();
  *v1 = 0;
  v1[1] = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_26B6AABCC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B6AAC90(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_26B6AACBC()
{
  v1 = *v0;
  sub_26B6EA714();
  OUTLINED_FUNCTION_252();
  return sub_26B6EA744();
}

uint64_t sub_26B6AAD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6AABCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6AAD28(uint64_t a1)
{
  v2 = sub_26B6B232C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6AAD64(uint64_t a1)
{
  v2 = sub_26B6B232C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B6AADC4()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040ADC0, &qword_26B6F3A78);
  OUTLINED_FUNCTION_5_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6B232C();
  OUTLINED_FUNCTION_39_3();
  v8 = *(v0 + OBJC_IVAR____TtC9SportsKit27SportingEventPlayDescriptor__type);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040ADD0, &qword_26B6F3A80);
  sub_26B6B2380();
  OUTLINED_FUNCTION_8_7();
  sub_26B6EA534();
  if (!v1)
  {
    v9 = *(v0 + OBJC_IVAR____TtC9SportsKit27SportingEventPlayDescriptor__value);
    OUTLINED_FUNCTION_87_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A080, &unk_26B6F37B0);
    sub_26B6839E8();
    OUTLINED_FUNCTION_8_7();
    sub_26B6EA534();
  }

  v6 = OUTLINED_FUNCTION_21_2();
  v7(v6);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

void SportingEventPlayDescriptor.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  OUTLINED_FUNCTION_4_10();
  SportingEventPlayDescriptor.init(from:)();
}

void SportingEventPlayDescriptor.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A180, &qword_26B6F3A90);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26_1();
  v8 = OBJC_IVAR____TtC9SportsKit27SportingEventPlayDescriptor__type;
  v0[OBJC_IVAR____TtC9SportsKit27SportingEventPlayDescriptor__type] = 5;
  v9 = &v0[OBJC_IVAR____TtC9SportsKit27SportingEventPlayDescriptor__value];
  *v9 = 0;
  v9[1] = 0;
  OUTLINED_FUNCTION_3_7();
  sub_26B6B232C();
  OUTLINED_FUNCTION_31_4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    v14 = v9[1];

    type metadata accessor for SportingEventPlayDescriptor();
    OUTLINED_FUNCTION_106_1();
    OUTLINED_FUNCTION_215();
  }

  else
  {
    v18 = v8;
    if (sub_26B6EA484())
    {
      OUTLINED_FUNCTION_200();
      OUTLINED_FUNCTION_88_1();
      sub_26B6EA3C4();
      v10 = v0;
      OUTLINED_FUNCTION_222();
      OUTLINED_FUNCTION_213();
      sub_26B681BA8();
      OUTLINED_FUNCTION_199();
    }

    else
    {
      v11 = 5;
      v10 = v0;
    }

    v10[v18] = v11;
    OUTLINED_FUNCTION_88_1();
    v13 = sub_26B680584(v12);
    OUTLINED_FUNCTION_178(v13, v15);
    v19.receiver = v10;
    v19.super_class = type metadata accessor for SportingEventPlayDescriptor();
    objc_msgSendSuper2(&v19, sel_init);
    v16 = OUTLINED_FUNCTION_232();
    v17(v16, v4);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B6AB120(void *a1@<X8>)
{
  SportingEventPlayDescriptor.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B6AB17C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x646E756F72 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B6AB208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6AB17C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B6AB234(uint64_t a1)
{
  v2 = sub_26B6B24DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6AB270(uint64_t a1)
{
  v2 = sub_26B6B24DC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B6AB2D0()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_185();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AE00, &qword_26B6F3A98);
  OUTLINED_FUNCTION_4(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6B24DC();
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_71_0();
  sub_26B6EA7C4();
  v10 = *(v0 + OBJC_IVAR____TtC9SportsKit18SportingTournament_round);
  type metadata accessor for SportingTournamentRound();
  OUTLINED_FUNCTION_137_0();
  sub_26B6B25CC(v5, v6, v7);
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_234();
  sub_26B6EA534();
  v8 = OUTLINED_FUNCTION_85_1();
  v9(v8);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_190();
}

void SportingTournament.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  v1 = OUTLINED_FUNCTION_4_10();
  SportingTournament.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

void SportingTournament.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_65_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AE10, &qword_26B6F3AA0);
  OUTLINED_FUNCTION_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  sub_26B6B24DC();
  OUTLINED_FUNCTION_12_7();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
    type metadata accessor for SportingTournament();
    OUTLINED_FUNCTION_102_0();
  }

  else
  {
    type metadata accessor for SportingTournamentRound();
    OUTLINED_FUNCTION_137_0();
    sub_26B6B25CC(v17, v18, v19);
    OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_20_6();
    sub_26B6EA464();
    *&v12[OBJC_IVAR____TtC9SportsKit18SportingTournament_round] = a10;
    v22.receiver = v12;
    v22.super_class = type metadata accessor for SportingTournament();
    objc_msgSendSuper2(&v22, sel_init);
    v20 = OUTLINED_FUNCTION_10_8();
    v21(v20);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_37();
}

void sub_26B6AB584(void *a1@<X8>)
{
  SportingTournament.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B6AB5E0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E6572727563 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B6AB658()
{
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_252();
  return sub_26B6EA744();
}

uint64_t sub_26B6AB6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6AB5E0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B6AB6D8(uint64_t a1)
{
  v2 = sub_26B6B2554();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6AB714(uint64_t a1)
{
  v2 = sub_26B6B2554();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B6AB774()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_185();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AE28, &qword_26B6F3AA8);
  OUTLINED_FUNCTION_4(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6B2554();
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_71_0();
  sub_26B6EA7C4();
  v10 = *(v0 + OBJC_IVAR____TtC9SportsKit23SportingTournamentRound_current);
  type metadata accessor for SportingRound();
  OUTLINED_FUNCTION_136();
  sub_26B6B25CC(v5, v6, v7);
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_234();
  sub_26B6EA534();
  v8 = OUTLINED_FUNCTION_85_1();
  v9(v8);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_190();
}

void SportingTournamentRound.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  v1 = OUTLINED_FUNCTION_4_10();
  SportingTournamentRound.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

void SportingTournamentRound.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_65_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AE40, &qword_26B6F3AB0);
  OUTLINED_FUNCTION_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_3_7();
  sub_26B6B2554();
  OUTLINED_FUNCTION_12_7();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
    type metadata accessor for SportingTournamentRound();
    OUTLINED_FUNCTION_102_0();
  }

  else
  {
    type metadata accessor for SportingRound();
    OUTLINED_FUNCTION_136();
    sub_26B6B25CC(v17, v18, v19);
    OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_20_6();
    sub_26B6EA464();
    *&v12[OBJC_IVAR____TtC9SportsKit23SportingTournamentRound_current] = a10;
    v22.receiver = v12;
    v22.super_class = type metadata accessor for SportingTournamentRound();
    objc_msgSendSuper2(&v22, sel_init);
    v20 = OUTLINED_FUNCTION_10_8();
    v21(v20);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_37();
}

void sub_26B6ABA28(void *a1@<X8>)
{
  SportingTournamentRound.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B6ABB10(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

id SportingRound.init()()
{
  OUTLINED_FUNCTION_152(OBJC_IVAR____TtC9SportsKit13SportingRound__number);
  v1 = &v0[OBJC_IVAR____TtC9SportsKit13SportingRound__total];
  *v1 = 0;
  v1[8] = v2;
  v3 = &v0[OBJC_IVAR____TtC9SportsKit13SportingRound__name];
  v4 = type metadata accessor for SportingRound();
  *v3 = 0;
  *(v3 + 1) = 0;
  v6.receiver = v0;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_26B6ABC20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265626D756ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C61746F74 && a2 == 0xE500000000000000;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701667182 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_26B6EA5D4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26B6ABD28(char a1)
{
  if (!a1)
  {
    return 0x7265626D756ELL;
  }

  if (a1 == 1)
  {
    return 0x6C61746F74;
  }

  return 1701667182;
}

uint64_t sub_26B6ABD78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6ABC20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6ABDA0(uint64_t a1)
{
  v2 = sub_26B6B2614();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6ABDDC(uint64_t a1)
{
  v2 = sub_26B6B2614();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26B6ABE3C()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AE68, &unk_26B6F3AB8);
  OUTLINED_FUNCTION_5_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6B2614();
  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_40_3(OBJC_IVAR____TtC9SportsKit13SportingRound__number);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A8D8, &qword_26B6F37F8);
  sub_26B6AF944();
  OUTLINED_FUNCTION_15_6();
  sub_26B6EA534();
  if (!v1)
  {
    OUTLINED_FUNCTION_40_3(OBJC_IVAR____TtC9SportsKit13SportingRound__total);
    OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_15_6();
    sub_26B6EA534();
    v8 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingRound__name);
    OUTLINED_FUNCTION_146();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A080, &unk_26B6F37B0);
    sub_26B6839E8();
    OUTLINED_FUNCTION_8_7();
    sub_26B6EA534();
  }

  v6 = OUTLINED_FUNCTION_21_2();
  v7(v6);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

void SportingRound.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  OUTLINED_FUNCTION_4_10();
  SportingRound.init(from:)();
}

void SportingRound.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A170, &unk_26B6F2540);
  OUTLINED_FUNCTION_4(v5);
  v25 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_145(OBJC_IVAR____TtC9SportsKit13SportingRound__number);
  v10 = &v0[OBJC_IVAR____TtC9SportsKit13SportingRound__total];
  *v10 = 0;
  v10[8] = v11;
  v12 = &v0[OBJC_IVAR____TtC9SportsKit13SportingRound__name];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = v4[3];
  v14 = v4[4];
  OUTLINED_FUNCTION_39(v4);
  sub_26B6B2614();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
    v23 = *(v12 + 1);

    type metadata accessor for SportingRound();
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_88_1();
    v16 = sub_26B68061C(v15);
    OUTLINED_FUNCTION_180(v16, v17);
    OUTLINED_FUNCTION_88_1();
    v19 = sub_26B68061C(v18);
    OUTLINED_FUNCTION_187(v19, v20);
    OUTLINED_FUNCTION_88_1();
    v22 = sub_26B680654(v21);
    OUTLINED_FUNCTION_178(v22, v24);
    v26.receiver = v0;
    v26.super_class = type metadata accessor for SportingRound();
    objc_msgSendSuper2(&v26, sel_init);
    (*(v25 + 8))(v2, v5);
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B6AC1D0(void *a1@<X8>)
{
  SportingRound.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

void SportingEventPlayAnnotation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_247();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_18_2();
  v26 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  OUTLINED_FUNCTION_22_2();
  sub_26B6EA764();
  if (v22)
  {
    OUTLINED_FUNCTION_95_1();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(&a10, a13);
    OUTLINED_FUNCTION_22_2();
    sub_26B6EA5E4();
    sub_26B6EA394();

    OUTLINED_FUNCTION_33_6(&a10);
  }

  OUTLINED_FUNCTION_246();
}

uint64_t SportingEventPlayAnnotation.rawValue.getter()
{
  v1 = 0x74756F6C6C6143;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E55;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x476564697374754FLL;
  }
}

SportsKit::SportingEventPlayAnnotation_optional __swiftcall SportingEventPlayAnnotation.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_23_4();
  sub_26B6EA394();
  OUTLINED_FUNCTION_113_0();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_26B6AC3CC@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventPlayAnnotation.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_26B6AC45C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_26B6AC4D0();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_26B6AC4FC(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC9SportsKit18SportingEventImage__aspectRatio;
  *v2 = result;
  *(v2 + 4) = BYTE4(result) & 1;
  return result;
}

id SportingEventImage.init(aspectRatio:height:token:type:width:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = &v9[OBJC_IVAR____TtC9SportsKit18SportingEventImage__aspectRatio];
  *v10 = 0;
  v10[4] = 1;
  v11 = &v9[OBJC_IVAR____TtC9SportsKit18SportingEventImage__height];
  *v11 = 0;
  v11[8] = 1;
  v12 = &v9[OBJC_IVAR____TtC9SportsKit18SportingEventImage__width];
  *v12 = 0;
  v12[8] = 1;
  *v10 = a1;
  v10[4] = BYTE4(a1) & 1;
  *v11 = a2;
  v11[8] = a3 & 1;
  v13 = &v9[OBJC_IVAR____TtC9SportsKit18SportingEventImage_token];
  *v13 = a4;
  *(v13 + 1) = a5;
  v14 = &v9[OBJC_IVAR____TtC9SportsKit18SportingEventImage_type];
  *v14 = a6;
  *(v14 + 1) = a7;
  *v12 = a8;
  v12[8] = a9 & 1;
  v16.receiver = v9;
  v16.super_class = type metadata accessor for SportingEventImage();
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t sub_26B6AC774(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6152746365707361 && a2 == 0xEB000000006F6974;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
      if (v7 || (sub_26B6EA5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1701869940 && a2 == 0xE400000000000000;
        if (v8 || (sub_26B6EA5D4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6874646977 && a2 == 0xE500000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_26B6EA5D4();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_26B6AC90C(char a1)
{
  result = 0x6152746365707361;
  switch(a1)
  {
    case 1:
      result = 0x746867696568;
      break;
    case 2:
      result = 0x6E656B6F74;
      break;
    case 3:
      result = 1701869940;
      break;
    case 4:
      result = 0x6874646977;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B6AC9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6AC774(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6AC9CC(uint64_t a1)
{
  v2 = sub_26B6B2668();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6ACA08(uint64_t a1)
{
  v2 = sub_26B6B2668();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_26B6ACA5C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_26B6ACADC()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_24_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AEA0, &qword_26B6F3AC8);
  OUTLINED_FUNCTION_5_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_20_0();
  sub_26B6B2668();
  OUTLINED_FUNCTION_39_3();
  v8 = *(v0 + OBJC_IVAR____TtC9SportsKit18SportingEventImage__aspectRatio);
  v9 = *(v0 + OBJC_IVAR____TtC9SportsKit18SportingEventImage__aspectRatio + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040AEB0, &qword_26B6F3AD0);
  sub_26B6B26BC();
  OUTLINED_FUNCTION_3_12();
  sub_26B6EA534();
  if (!v1)
  {
    OUTLINED_FUNCTION_25_5((v0 + OBJC_IVAR____TtC9SportsKit18SportingEventImage__height));
    OUTLINED_FUNCTION_87_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A8D8, &qword_26B6F37F8);
    sub_26B6AF944();
    OUTLINED_FUNCTION_15_6();
    sub_26B6EA534();
    OUTLINED_FUNCTION_108(OBJC_IVAR____TtC9SportsKit18SportingEventImage_token);
    OUTLINED_FUNCTION_63_2();
    sub_26B6EA4F4();
    OUTLINED_FUNCTION_108(OBJC_IVAR____TtC9SportsKit18SportingEventImage_type);
    OUTLINED_FUNCTION_63_2();
    sub_26B6EA4F4();
    OUTLINED_FUNCTION_25_5((v0 + OBJC_IVAR____TtC9SportsKit18SportingEventImage__width));
    OUTLINED_FUNCTION_175();
    OUTLINED_FUNCTION_15_6();
    sub_26B6EA534();
  }

  v6 = OUTLINED_FUNCTION_21_2();
  v7(v6);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_190();
}

void SportingEventImage.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_23_6());
  OUTLINED_FUNCTION_4_10();
  SportingEventImage.init(from:)();
}

void SportingEventImage.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v33 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A168, &unk_26B6F2530);
  OUTLINED_FUNCTION_4(v4);
  v32[1] = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = v32 - v9;
  v11 = v0 + OBJC_IVAR____TtC9SportsKit18SportingEventImage__aspectRatio;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v0 + OBJC_IVAR____TtC9SportsKit18SportingEventImage__height;
  *v12 = 0;
  *(v12 + 8) = 1;
  v34 = v0;
  v35 = v3;
  v13 = v0 + OBJC_IVAR____TtC9SportsKit18SportingEventImage__width;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v3[3];
  v15 = v3[4];
  OUTLINED_FUNCTION_39(v3);
  sub_26B6B2668();
  v32[2] = v10;
  v16 = v33;
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(v35);
    type metadata accessor for SportingEventImage();
    OUTLINED_FUNCTION_91_1();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = sub_26B680708(0);
    *v11 = v17;
    *(v11 + 4) = BYTE4(v17) & 1;
    OUTLINED_FUNCTION_239();
    v19 = sub_26B6807A8(v18);
    v20 = v34;
    *v12 = v19;
    *(v12 + 8) = v21 & 1;
    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_239();
    v22 = sub_26B6EA424();
    OUTLINED_FUNCTION_70(v22, v23, OBJC_IVAR____TtC9SportsKit18SportingEventImage_token);
    OUTLINED_FUNCTION_176();
    OUTLINED_FUNCTION_239();
    v24 = sub_26B6EA424();
    OUTLINED_FUNCTION_70(v24, v25, OBJC_IVAR____TtC9SportsKit18SportingEventImage_type);
    OUTLINED_FUNCTION_239();
    v27 = sub_26B6807A8(v26);
    OUTLINED_FUNCTION_151(v27, v28);
    v29 = type metadata accessor for SportingEventImage();
    v36.receiver = v20;
    v36.super_class = v29;
    objc_msgSendSuper2(&v36, sel_init);
    v30 = OUTLINED_FUNCTION_96_0();
    v31(v30);
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_37();
}

void sub_26B6ACFCC(void *a1@<X8>)
{
  SportingEventImage.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

void *sub_26B6AD01C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B1C0, &unk_26B6F8268);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_26B6AD08C(uint64_t a1, unint64_t a2)
{
  sub_26B645A3C(a1, a2);
  v4 = *(sub_26B6ADAD8(a1, a2) + 16);
  sub_26B6E9AC4();

  return OUTLINED_FUNCTION_92_1();
}

uint64_t sub_26B6AD0F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B6E9AC4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unsigned __int8 *sub_26B6AD130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a1;
  v81 = a2;

  result = sub_26B6E9BB4();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_26B6AD66C();
    v44 = v43;

    v7 = v44;
    if ((v44 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_26B6EA1E4();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_208();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v17 = 0;
            v31 = (v27 + 1);
            do
            {
              v32 = *v31;
              if (v32 < 0x30 || v32 >= v30)
              {
                if (v32 < 0x41 || v32 >= v29)
                {
                  OUTLINED_FUNCTION_214();
                  if (!v22 || v32 >= v34)
                  {
                    goto LABEL_142;
                  }

                  v33 = -87;
                }

                else
                {
                  v33 = -55;
                }
              }

              else
              {
                v33 = -48;
              }

              v35 = v17 * a3;
              if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v17 = v35 + (v32 + v33);
              if (__OFADD__(v35, (v32 + v33)))
              {
                goto LABEL_141;
              }

              ++v31;
              --v28;
            }

            while (v28);
LABEL_52:
            v6 = v17;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v6 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v36 = a3 + 48;
        v37 = a3 + 55;
        v38 = a3 + 87;
        if (a3 > 10)
        {
          v36 = 58;
        }

        else
        {
          v38 = 97;
          v37 = 65;
        }

        if (result)
        {
          v39 = 0;
          do
          {
            v40 = *result;
            if (v40 < 0x30 || v40 >= v36)
            {
              if (v40 < 0x41 || v40 >= v37)
              {
                v6 = 0;
                if (v40 < 0x61 || v40 >= v38)
                {
                  goto LABEL_142;
                }

                v41 = -87;
              }

              else
              {
                v41 = -55;
              }
            }

            else
            {
              v41 = -48;
            }

            v42 = v39 * a3;
            if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v39 = v42 + (v40 + v41);
            if (__OFADD__(v42, (v40 + v41)))
            {
              goto LABEL_141;
            }

            ++result;
            --v8;
          }

          while (v8);
          v6 = v42 + (v40 + v41);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_208();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                OUTLINED_FUNCTION_214();
                if (!v22 || v19 >= v21)
                {
                  goto LABEL_142;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v17 = v23 - (v19 + v20);
            if (__OFSUB__(v23, (v19 + v20)))
            {
              goto LABEL_141;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v6 = 0;
LABEL_142:

        return v6;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v45 = HIBYTE(v7) & 0xF;
  v80 = v6;
  v81 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v45)
      {
        OUTLINED_FUNCTION_79_1();
        if (v70 ^ v71 | v69)
        {
          v73 = 65;
        }

        if (!(v70 ^ v71 | v69))
        {
          v74 = 58;
        }

        v75 = &v80;
        while (1)
        {
          v76 = *v75;
          if (v76 < 0x30 || v76 >= v74)
          {
            if (v76 < 0x41 || v76 >= v73)
            {
              OUTLINED_FUNCTION_214();
              if (!v22 || v76 >= v78)
              {
                goto LABEL_142;
              }

              v77 = -87;
            }

            else
            {
              v77 = -55;
            }
          }

          else
          {
            v77 = -48;
          }

          v79 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v79 + (v76 + v77);
          if (__OFADD__(v79, (v76 + v77)))
          {
            goto LABEL_141;
          }

          v75 = (v75 + 1);
          if (!--v72)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v45)
    {
      if (v45 != 1)
      {
        OUTLINED_FUNCTION_79_1();
        if (v47 ^ v48 | v46)
        {
          v51 = 65;
        }

        if (!(v47 ^ v48 | v46))
        {
          v52 = 58;
        }

        v53 = &v80 + 1;
        while (1)
        {
          v54 = *v53;
          if (v54 < 0x30 || v54 >= v52)
          {
            if (v54 < 0x41 || v54 >= v51)
            {
              OUTLINED_FUNCTION_214();
              if (!v22 || v54 >= v56)
              {
                goto LABEL_142;
              }

              v55 = -87;
            }

            else
            {
              v55 = -55;
            }
          }

          else
          {
            v55 = -48;
          }

          v57 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v57 - (v54 + v55);
          if (__OFSUB__(v57, (v54 + v55)))
          {
            goto LABEL_141;
          }

          ++v53;
          if (!--v49)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v45)
  {
    if (v45 != 1)
    {
      OUTLINED_FUNCTION_79_1();
      if (v59 ^ v60 | v58)
      {
        v62 = 65;
      }

      if (!(v59 ^ v60 | v58))
      {
        v63 = 58;
      }

      v64 = &v80 + 1;
      do
      {
        v65 = *v64;
        if (v65 < 0x30 || v65 >= v63)
        {
          if (v65 < 0x41 || v65 >= v62)
          {
            OUTLINED_FUNCTION_214();
            if (!v22 || v65 >= v67)
            {
              goto LABEL_142;
            }

            v66 = -87;
          }

          else
          {
            v66 = -55;
          }
        }

        else
        {
          v66 = -48;
        }

        v68 = v50 * a3;
        if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v50 = v68 + (v65 + v66);
        if (__OFADD__(v68, (v65 + v66)))
        {
          goto LABEL_141;
        }

        ++v64;
        --v61;
      }

      while (v61);
LABEL_140:
      v6 = v50;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_26B6AD66C()
{
  v0 = sub_26B6AD6D8();
  v4 = sub_26B6AD70C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_26B6AD70C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_26B6E9AD4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_26B6EA004();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_26B6AD01C(v9, 0);
  v12 = sub_26B6AD86C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_26B6E9AD4();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_26B6EA1E4();
LABEL_4:

  return sub_26B6E9AD4();
}

unint64_t sub_26B6AD86C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_26B6ADA7C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_26B6E9B64();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_26B6EA1E4();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_26B6ADA7C(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_26B6E9B44();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_26B6ADA7C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_26B6E9B74();
    OUTLINED_FUNCTION_202(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x26D67D510](15, a1 >> 16);
    OUTLINED_FUNCTION_202(v3);
    return v4 | 8;
  }
}

uint64_t sub_26B6ADAD8(uint64_t a1, unint64_t a2)
{
  v4 = sub_26B6E9494();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v10 = HIDWORD(a1) - a1;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v12 = *(a1 + 16);
      v11 = *(a1 + 24);
      v10 = v11 - v12;
      if (!__OFSUB__(v11, v12))
      {
        goto LABEL_6;
      }

LABEL_12:
      __break(1u);
      return result;
    case 3uLL:
      goto LABEL_9;
    default:
      v10 = BYTE6(a2);
LABEL_6:
      if (!v10)
      {
        goto LABEL_9;
      }

      v13 = sub_26B6AD01C(v10, 0);
      v14 = sub_26B6E9414();
      sub_26B645A94(a1, a2);
      (*(v5 + 8))(v9, v4);
      if (v14 != v10)
      {
        __break(1u);
LABEL_9:
        sub_26B645A94(a1, a2);
        return MEMORY[0x277D84F90];
      }

      return v13;
  }
}

uint64_t sub_26B6ADC5C(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
      }

      v4 = a1;
      if (sub_26B6E91D4() && __OFSUB__(v4, sub_26B6E91F4()))
      {
        goto LABEL_14;
      }

LABEL_9:
      sub_26B6E91E4();
LABEL_10:
      result = sub_26B6E9AC4();
      v6 = *MEMORY[0x277D85DE8];
      return result;
    case 2uLL:
      v2 = *(a1 + 16);
      v3 = *(a1 + 24);
      if (sub_26B6E91D4() && __OFSUB__(v2, sub_26B6E91F4()))
      {
        goto LABEL_13;
      }

      if (!__OFSUB__(v3, v2))
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    default:
      goto LABEL_10;
  }
}

unint64_t sub_26B6ADE28()
{
  result = qword_2810CE678;
  if (!qword_2810CE678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE678);
  }

  return result;
}

unint64_t sub_26B6ADE7C()
{
  result = qword_2810CE018;
  if (!qword_2810CE018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE018);
  }

  return result;
}

unint64_t sub_26B6ADED0()
{
  result = qword_2810CDC38;
  if (!qword_2810CDC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A6A8, &qword_26B6F94F0);
    sub_26B6B25CC(&qword_2810CDDF8, v1, type metadata accessor for SportingEventCompetitorContainer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDC38);
  }

  return result;
}

unint64_t sub_26B6ADFCC()
{
  result = qword_2810CDCC8;
  if (!qword_2810CDCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409E40, &qword_26B6F3670);
    sub_26B6B25CC(&qword_2810CE448, v1, type metadata accessor for SportingEventPlay);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDCC8);
  }

  return result;
}

unint64_t sub_26B6AE0EC()
{
  result = qword_28040A6B8;
  if (!qword_28040A6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A6B0, &qword_26B6F3678);
    sub_26B6B25CC(&qword_28040A6C0, v1, type metadata accessor for SportingEventAlertUpdate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A6B8);
  }

  return result;
}

unint64_t sub_26B6AE1A0()
{
  result = qword_2810CE028;
  if (!qword_2810CE028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE028);
  }

  return result;
}

unint64_t sub_26B6AE1F4()
{
  result = qword_2810CE528;
  if (!qword_2810CE528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A6D0, &qword_26B6F3688);
    sub_26B6AE278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE528);
  }

  return result;
}

unint64_t sub_26B6AE278()
{
  result = qword_2810CDC40;
  if (!qword_2810CDC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A6A8, &qword_26B6F94F0);
    sub_26B6B25CC(&qword_2810CDE00, v1, type metadata accessor for SportingEventCompetitorContainer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDC40);
  }

  return result;
}

unint64_t sub_26B6AE32C()
{
  result = qword_2810CE558;
  if (!qword_2810CE558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A6D8, &qword_26B6F3690);
    sub_26B6AE3B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE558);
  }

  return result;
}

unint64_t sub_26B6AE3B0()
{
  result = qword_2810CDCD0;
  if (!qword_2810CDCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409E40, &qword_26B6F3670);
    sub_26B6B25CC(&qword_2810CE450, v1, type metadata accessor for SportingEventPlay);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDCD0);
  }

  return result;
}

unint64_t sub_26B6AE464()
{
  result = qword_2810CE5B8;
  if (!qword_2810CE5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A6E0, &qword_26B6F3698);
    sub_26B6AE4E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE5B8);
  }

  return result;
}

unint64_t sub_26B6AE4E8()
{
  result = qword_2810CE2C8;
  if (!qword_2810CE2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A6E8, &qword_26B6F36A0);
    sub_26B6B25CC(&qword_2810CE2D8, v1, type metadata accessor for SportingEventCoverage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE2C8);
  }

  return result;
}

unint64_t sub_26B6AE59C()
{
  result = qword_2810CE5C8;
  if (!qword_2810CE5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A6F0, &qword_26B6F36A8);
    sub_26B6AE620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE5C8);
  }

  return result;
}

unint64_t sub_26B6AE620()
{
  result = qword_2810CE3E0;
  if (!qword_2810CE3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A6F8, &qword_26B6F36B0);
    sub_26B6B25CC(&qword_2810CE3F0, v1, type metadata accessor for SportingTournament);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE3E0);
  }

  return result;
}

unint64_t sub_26B6AE6D4()
{
  result = qword_2810CE5B0;
  if (!qword_2810CE5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A700, &qword_26B6F36B8);
    sub_26B6AE758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE5B0);
  }

  return result;
}

unint64_t sub_26B6AE758()
{
  result = qword_2810CE288;
  if (!qword_2810CE288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A708, &qword_26B6F36C0);
    sub_26B6B25CC(&qword_2810CE298, v1, type metadata accessor for SportingEventSchedule);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE288);
  }

  return result;
}

unint64_t sub_26B6AE80C()
{
  result = qword_2810CE5C0;
  if (!qword_2810CE5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A710, &qword_26B6F36C8);
    sub_26B6AE890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE5C0);
  }

  return result;
}

unint64_t sub_26B6AE890()
{
  result = qword_2810CE3B0;
  if (!qword_2810CE3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A718, &qword_26B6F36D0);
    sub_26B6B25CC(&qword_2810CE3C0, v1, type metadata accessor for SportingEventLeague);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE3B0);
  }

  return result;
}

unint64_t sub_26B6AE944()
{
  result = qword_2810CE518;
  if (!qword_2810CE518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A720, &qword_26B6F36D8);
    sub_26B6AE9C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE518);
  }

  return result;
}

unint64_t sub_26B6AE9C8()
{
  result = qword_2810CDBF8;
  if (!qword_2810CDBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A728, &qword_26B6F36E0);
    sub_26B696CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDBF8);
  }

  return result;
}

unint64_t sub_26B6AEA4C()
{
  result = qword_28040A738;
  if (!qword_28040A738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A730, &qword_26B6F36E8);
    sub_26B6AEAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A738);
  }

  return result;
}

unint64_t sub_26B6AEAD0()
{
  result = qword_28040A740;
  if (!qword_28040A740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A748, &qword_26B6F36F0);
    sub_26B6AEB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A740);
  }

  return result;
}

unint64_t sub_26B6AEB54()
{
  result = qword_28040A750;
  if (!qword_28040A750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A6B0, &qword_26B6F3678);
    sub_26B6B25CC(&qword_28040A758, v1, type metadata accessor for SportingEventAlertUpdate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A750);
  }

  return result;
}

unint64_t sub_26B6AEC2C()
{
  result = qword_28040A780;
  if (!qword_28040A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A780);
  }

  return result;
}

unint64_t sub_26B6AEC80()
{
  result = qword_2810CDE70;
  if (!qword_2810CDE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDE70);
  }

  return result;
}

unint64_t sub_26B6AECF8()
{
  result = qword_2810CDD40;
  if (!qword_2810CDD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDD40);
  }

  return result;
}

unint64_t sub_26B6AED4C()
{
  result = qword_2810CE568;
  if (!qword_2810CE568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A7B0, &qword_26B6F3720);
    sub_26B6AEDD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE568);
  }

  return result;
}

unint64_t sub_26B6AEDD0()
{
  result = qword_2810CDD38;
  if (!qword_2810CDD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A7B8, &qword_26B6F3728);
    sub_26B6AEE54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDD38);
  }

  return result;
}

unint64_t sub_26B6AEE54()
{
  result = qword_2810CDD50;
  if (!qword_2810CDD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDD50);
  }

  return result;
}

unint64_t sub_26B6AEEA8()
{
  result = qword_2810CE500;
  if (!qword_2810CE500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A7C0, &qword_26B6F3730);
    sub_26B6AEF2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE500);
  }

  return result;
}

unint64_t sub_26B6AEF2C()
{
  result = qword_2810CDBC8;
  if (!qword_2810CDBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A7C8, &qword_26B6F3738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDBC8);
  }

  return result;
}

unint64_t sub_26B6AEFCC()
{
  result = qword_2810CE2F0;
  if (!qword_2810CE2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE2F0);
  }

  return result;
}

unint64_t sub_26B6AF020()
{
  result = qword_2810CE590;
  if (!qword_2810CE590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A7E0, &qword_26B6F3748);
    sub_26B6AF0A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE590);
  }

  return result;
}

unint64_t sub_26B6AF0A4()
{
  result = qword_2810CDEA0;
  if (!qword_2810CDEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A7E8, &unk_26B6F3750);
    sub_26B6B25CC(&qword_2810CDEB0, v1, type metadata accessor for SportingEventCoverageIngestion);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDEA0);
  }

  return result;
}

unint64_t sub_26B6AF158()
{
  result = qword_2810CDEC8;
  if (!qword_2810CDEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDEC8);
  }

  return result;
}

unint64_t sub_26B6AF1AC()
{
  result = qword_2810CE510;
  if (!qword_2810CE510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A810, &qword_26B6F3768);
    sub_26B6AF230();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE510);
  }

  return result;
}

unint64_t sub_26B6AF230()
{
  result = qword_2810CDBE0;
  if (!qword_2810CDBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A818, &unk_26B6F3770);
    sub_26B6AF2B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDBE0);
  }

  return result;
}

unint64_t sub_26B6AF2B4()
{
  result = qword_2810CDBF0;
  if (!qword_2810CDBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A290, &qword_26B6F2600);
    sub_26B6B25CC(&qword_2810CDD60, v1, type metadata accessor for SportingEventCoverageIngestionUpdate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDBF0);
  }

  return result;
}

unint64_t sub_26B6AF38C()
{
  result = qword_2810CE530;
  if (!qword_2810CE530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A820, &qword_26B6F3780);
    sub_26B6AF410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE530);
  }

  return result;
}

unint64_t sub_26B6AF410()
{
  result = qword_2810CDC48;
  if (!qword_2810CDC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A828, &qword_26B6F3788);
    sub_26B6AF494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDC48);
  }

  return result;
}

unint64_t sub_26B6AF494()
{
  result = qword_2810CDC58;
  if (!qword_2810CDC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A288, &unk_26B6F3790);
    sub_26B6B25CC(&qword_2810CDE58, v1, type metadata accessor for SportingEventCoverageLastUpdate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDC58);
  }

  return result;
}

unint64_t sub_26B6AF548()
{
  result = qword_28040A848;
  if (!qword_28040A848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A848);
  }

  return result;
}

unint64_t sub_26B6AF59C()
{
  result = qword_28040A850;
  if (!qword_28040A850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A850);
  }

  return result;
}

unint64_t sub_26B6AF5F0()
{
  result = qword_28040A868;
  if (!qword_28040A868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A860, &qword_26B6F37C0);
    sub_26B6AF674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A868);
  }

  return result;
}

unint64_t sub_26B6AF674()
{
  result = qword_28040A870;
  if (!qword_28040A870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A878, &qword_26B6F37C8);
    sub_26B6AF6F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A870);
  }

  return result;
}

unint64_t sub_26B6AF6F8()
{
  result = qword_28040A880;
  if (!qword_28040A880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A880);
  }

  return result;
}

unint64_t sub_26B6AF74C()
{
  result = qword_2810CDE18;
  if (!qword_2810CDE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDE18);
  }

  return result;
}

unint64_t sub_26B6AF7E8()
{
  result = qword_2810CE578;
  if (!qword_2810CE578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A8C8, &qword_26B6F37E8);
    sub_26B6AF86C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE578);
  }

  return result;
}

unint64_t sub_26B6AF86C()
{
  result = qword_2810CDD98;
  if (!qword_2810CDD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A8D0, &qword_26B6F37F0);
    sub_26B6AF8F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDD98);
  }

  return result;
}

unint64_t sub_26B6AF8F0()
{
  result = qword_2810CDDA8;
  if (!qword_2810CDDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDDA8);
  }

  return result;
}

unint64_t sub_26B6AF944()
{
  result = qword_2810CE4F8;
  if (!qword_2810CE4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A8D8, &qword_26B6F37F8);
    sub_26B6AF9C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE4F8);
  }

  return result;
}

unint64_t sub_26B6AF9C8()
{
  result = qword_2810CDBB8;
  if (!qword_2810CDBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A8E0, &unk_26B6F3800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDBB8);
  }

  return result;
}

unint64_t sub_26B6AFAB0()
{
  result = qword_2810CE190;
  if (!qword_2810CE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE190);
  }

  return result;
}

unint64_t sub_26B6AFB04()
{
  result = qword_2810CE540;
  if (!qword_2810CE540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A930, &qword_26B6F3818);
    sub_26B6AFB88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE540);
  }

  return result;
}

unint64_t sub_26B6AFB88()
{
  result = qword_2810CDC80;
  if (!qword_2810CDC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A938, &unk_26B6F3820);
    sub_26B6AFC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDC80);
  }

  return result;
}

unint64_t sub_26B6AFC0C()
{
  result = qword_2810CDC90;
  if (!qword_2810CDC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A1A8, &unk_26B6F2560);
    sub_26B6B25CC(&qword_2810CE138, v1, type metadata accessor for SportingEventParticipant);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDC90);
  }

  return result;
}

unint64_t sub_26B6AFCC0()
{
  result = qword_2810CE548;
  if (!qword_2810CE548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A940, &qword_26B6F3830);
    sub_26B6AFD44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE548);
  }

  return result;
}

unint64_t sub_26B6AFD44()
{
  result = qword_2810CDCA0;
  if (!qword_2810CDCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A948, &unk_26B6F3838);
    sub_26B6AFDC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDCA0);
  }

  return result;
}

unint64_t sub_26B6AFDC8()
{
  result = qword_2810CDCB0;
  if (!qword_2810CDCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A270, &qword_26B6F25E0);
    sub_26B6B25CC(&qword_2810CE2C0, v1, type metadata accessor for SportingEventMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDCB0);
  }

  return result;
}

unint64_t sub_26B6AFE7C()
{
  result = qword_2810CE520;
  if (!qword_2810CE520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A950, &qword_26B6F3848);
    sub_26B6AFF00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE520);
  }

  return result;
}

unint64_t sub_26B6AFF00()
{
  result = qword_2810CDC20;
  if (!qword_2810CDC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A958, &unk_26B6F3850);
    sub_26B6AFF84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDC20);
  }

  return result;
}

unint64_t sub_26B6AFF84()
{
  result = qword_2810CDC30;
  if (!qword_2810CDC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A268, &qword_26B6F25D8);
    sub_26B6B25CC(&qword_2810CDDE0, 255, type metadata accessor for SportingEventCompetitorStatistic);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDC30);
  }

  return result;
}

unint64_t sub_26B6B003C()
{
  result = qword_2810CE550;
  if (!qword_2810CE550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A960, &qword_26B6F3860);
    sub_26B6B00C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE550);
  }

  return result;
}

unint64_t sub_26B6B00C0()
{
  result = qword_2810CDCB8;
  if (!qword_2810CDCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A968, &unk_26B6F3868);
    sub_26B6B0144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDCB8);
  }

  return result;
}

unint64_t sub_26B6B0144()
{
  result = qword_2810CDCC0;
  if (!qword_2810CDCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A208, &unk_26B6F25B0);
    sub_26B6B25CC(&qword_2810CE410, v1, type metadata accessor for SportingEventImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDCC0);
  }

  return result;
}

unint64_t sub_26B6B01F8()
{
  result = qword_2810CE580;
  if (!qword_2810CE580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A970, &qword_26B6F3878);
    sub_26B6B027C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE580);
  }

  return result;
}

unint64_t sub_26B6B027C()
{
  result = qword_2810CDDE8;
  if (!qword_2810CDDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A978, &unk_26B6F3880);
    sub_26B6B0300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDDE8);
  }

  return result;
}

unint64_t sub_26B6B0300()
{
  result = qword_2810CDDF0;
  if (!qword_2810CDDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDDF0);
  }

  return result;
}

unint64_t sub_26B6B0354()
{
  result = qword_28040A998;
  if (!qword_28040A998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A998);
  }

  return result;
}

unint64_t sub_26B6B03A8()
{
  result = qword_28040A9A0;
  if (!qword_28040A9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A9A0);
  }

  return result;
}

unint64_t sub_26B6B03FC()
{
  result = qword_28040A9B0;
  if (!qword_28040A9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A9B0);
  }

  return result;
}

unint64_t sub_26B6B0450()
{
  result = qword_28040A9C0;
  if (!qword_28040A9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040A9C0);
  }

  return result;
}

unint64_t sub_26B6B04C8()
{
  result = qword_28040AA20;
  if (!qword_28040AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AA20);
  }

  return result;
}

unint64_t sub_26B6B051C()
{
  result = qword_28040AA30;
  if (!qword_28040AA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AA28, &qword_26B6F38B8);
    sub_26B6B05A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AA30);
  }

  return result;
}

unint64_t sub_26B6B05A0()
{
  result = qword_28040AA38;
  if (!qword_28040AA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AA40, &unk_26B6F38C0);
    sub_26B6B0624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AA38);
  }

  return result;
}

unint64_t sub_26B6B0624()
{
  result = qword_28040AA48;
  if (!qword_28040AA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A238, &qword_26B6F25C0);
    sub_26B6B25CC(&qword_28040AA50, v1, type metadata accessor for SportingEventParticipantMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AA48);
  }

  return result;
}

unint64_t sub_26B6B06D8()
{
  result = qword_28040AA60;
  if (!qword_28040AA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AA58, &qword_26B6F38D0);
    sub_26B6B075C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AA60);
  }

  return result;
}

unint64_t sub_26B6B075C()
{
  result = qword_28040AA68;
  if (!qword_28040AA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AA70, &qword_26B6F38D8);
    sub_26B6B07E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AA68);
  }

  return result;
}

unint64_t sub_26B6B07E0()
{
  result = qword_28040AA78;
  if (!qword_28040AA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A220, &unk_26B6F38E0);
    sub_26B6B25CC(&qword_28040AA80, 255, type metadata accessor for SportingEventParticipantStatistic);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AA78);
  }

  return result;
}

unint64_t sub_26B6B0898()
{
  result = qword_28040AAA0;
  if (!qword_28040AAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AAA0);
  }

  return result;
}

unint64_t sub_26B6B0910()
{
  result = qword_28040AAD0;
  if (!qword_28040AAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AAD0);
  }

  return result;
}

unint64_t sub_26B6B0988()
{
  result = qword_2810CDFF0;
  if (!qword_2810CDFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDFF0);
  }

  return result;
}

unint64_t sub_26B6B09DC()
{
  result = qword_2810CDC18;
  if (!qword_2810CDC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AAE8, &qword_26B6F3918);
    sub_26B6B25CC(&qword_2810CDDB8, v1, type metadata accessor for SportingEventCompetitorScoreEntry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDC18);
  }

  return result;
}

unint64_t sub_26B6B0A90()
{
  result = qword_2810CDC10;
  if (!qword_2810CDC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AAE8, &qword_26B6F3918);
    sub_26B6B25CC(&qword_2810CDDB0, v1, type metadata accessor for SportingEventCompetitorScoreEntry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDC10);
  }

  return result;
}

unint64_t sub_26B6B0B44()
{
  result = qword_2810CDDD0;
  if (!qword_2810CDDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDDD0);
  }

  return result;
}

unint64_t sub_26B6B0BE0()
{
  result = qword_2810CE128;
  if (!qword_2810CE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE128);
  }

  return result;
}

unint64_t sub_26B6B0C34()
{
  result = qword_2810CE5D0[0];
  if (!qword_2810CE5D0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AB38, &qword_26B6F3940);
    sub_26B6B0CB8();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810CE5D0);
  }

  return result;
}

unint64_t sub_26B6B0CB8()
{
  result = qword_2810CE418;
  if (!qword_2810CE418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AB40, &qword_26B6F3948);
    sub_26B6B25CC(&qword_2810CE428, v1, type metadata accessor for SportingEventClock);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE418);
  }

  return result;
}

unint64_t sub_26B6B0D6C()
{
  result = qword_2810CE538;
  if (!qword_2810CE538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AB48, &qword_26B6F3950);
    sub_26B6B0DF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE538);
  }

  return result;
}

unint64_t sub_26B6B0DF0()
{
  result = qword_2810CDC60;
  if (!qword_2810CDC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AB50, &qword_26B6F3958);
    sub_26B6B0E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDC60);
  }

  return result;
}

unint64_t sub_26B6B0E74()
{
  result = qword_2810CDC70;
  if (!qword_2810CDC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A1F8, &qword_26B6F25A0);
    sub_26B6B25CC(&qword_2810CDE80, v1, type metadata accessor for SportingEventClockTimeContainer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDC70);
  }

  return result;
}

unint64_t sub_26B6B0F70()
{
  result = qword_2810CDE98;
  if (!qword_2810CDE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDE98);
  }

  return result;
}

unint64_t sub_26B6B0FC4()
{
  result = qword_2810CE5A8;
  if (!qword_2810CE5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AB88, &qword_26B6F3968);
    sub_26B6B1048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE5A8);
  }

  return result;
}

unint64_t sub_26B6B1048()
{
  result = qword_2810CE140;
  if (!qword_2810CE140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AB90, &qword_26B6F3970);
    sub_26B6B25CC(&qword_2810CE150, v1, type metadata accessor for SportingEventClockPeriod);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE140);
  }

  return result;
}

unint64_t sub_26B6B10FC()
{
  result = qword_2810CD1F0;
  if (!qword_2810CD1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AB98, &qword_26B6F3978);
    sub_26B6B1180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CD1F0);
  }

  return result;
}

unint64_t sub_26B6B1180()
{
  result = qword_2810CC2C0;
  if (!qword_2810CC2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040ABA0, &unk_26B6F3980);
    sub_26B6B1204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CC2C0);
  }

  return result;
}

unint64_t sub_26B6B1204()
{
  result = qword_2810CC2C8;
  if (!qword_2810CC2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A1E8, &qword_26B6F2590);
    sub_26B6B25CC(&unk_2810CC8D0, v1, type metadata accessor for SportingEventClockTime);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CC2C8);
  }

  return result;
}

unint64_t sub_26B6B12B8()
{
  result = qword_2810CE1B0;
  if (!qword_2810CE1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE1B0);
  }

  return result;
}

unint64_t sub_26B6B130C()
{
  result = qword_2810CD1F8[0];
  if (!qword_2810CD1F8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040ABC0, &qword_26B6F39A0);
    sub_26B6B1390();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810CD1F8);
  }

  return result;
}

unint64_t sub_26B6B1390()
{
  result = qword_2810CC5F8;
  if (!qword_2810CC5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040ABC8, &unk_26B6F39A8);
    sub_26B6B1414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CC5F8);
  }

  return result;
}

unint64_t sub_26B6B1414()
{
  result = qword_2810CC608;
  if (!qword_2810CC608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CC608);
  }

  return result;
}

unint64_t sub_26B6B1468()
{
  result = qword_2810CE440;
  if (!qword_2810CE440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE440);
  }

  return result;
}

unint64_t sub_26B6B1504()
{
  result = qword_2810CE598;
  if (!qword_2810CE598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AC20, &qword_26B6F39C8);
    sub_26B6B1588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE598);
  }

  return result;
}

unint64_t sub_26B6B1588()
{
  result = qword_2810CDED0;
  if (!qword_2810CDED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AC28, &qword_26B6F39D0);
    sub_26B6B25CC(&qword_2810CDFC8, v1, type metadata accessor for SportingEventClockRunningState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDED0);
  }

  return result;
}

unint64_t sub_26B6B163C()
{
  result = qword_2810CE588;
  if (!qword_2810CE588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AC30, &qword_26B6F39D8);
    sub_26B6B16C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE588);
  }

  return result;
}

unint64_t sub_26B6B16C0()
{
  result = qword_2810CDE20;
  if (!qword_2810CDE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AC38, &qword_26B6F39E0);
    sub_26B6B25CC(&qword_2810CDE30, v1, type metadata accessor for SportingEventClockActivityStatus);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDE20);
  }

  return result;
}

unint64_t sub_26B6B1774()
{
  result = qword_2810CDE48;
  if (!qword_2810CDE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDE48);
  }

  return result;
}

unint64_t sub_26B6B17C8()
{
  result = qword_2810CE040;
  if (!qword_2810CE040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE040);
  }

  return result;
}

unint64_t sub_26B6B181C()
{
  result = qword_2810CE030;
  if (!qword_2810CE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE030);
  }

  return result;
}

unint64_t sub_26B6B1870()
{
  result = qword_2810CE168;
  if (!qword_2810CE168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE168);
  }

  return result;
}

unint64_t sub_26B6B18C4()
{
  result = qword_2810CE5A0;
  if (!qword_2810CE5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AC88, &qword_26B6F3A00);
    sub_26B6B1948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE5A0);
  }

  return result;
}

unint64_t sub_26B6B1948()
{
  result = qword_2810CDFF8;
  if (!qword_2810CDFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AC90, &qword_26B6F3A08);
    sub_26B6B19CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDFF8);
  }

  return result;
}

unint64_t sub_26B6B19CC()
{
  result = qword_2810CE010;
  if (!qword_2810CE010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE010);
  }

  return result;
}

unint64_t sub_26B6B1A20()
{
  result = qword_2810CE570;
  if (!qword_2810CE570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AC98, &qword_26B6F3A10);
    sub_26B6B1AA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE570);
  }

  return result;
}

unint64_t sub_26B6B1AA4()
{
  result = qword_2810CDD68;
  if (!qword_2810CDD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040ACA0, &qword_26B6F3A18);
    sub_26B6B1B28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDD68);
  }

  return result;
}

unint64_t sub_26B6B1B28()
{
  result = qword_2810CDD80;
  if (!qword_2810CDD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDD80);
  }

  return result;
}

unint64_t sub_26B6B1B7C()
{
  result = qword_28040ACB0;
  if (!qword_28040ACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040ACB0);
  }

  return result;
}

unint64_t sub_26B6B1BD0()
{
  result = qword_28040AD08;
  if (!qword_28040AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AD08);
  }

  return result;
}

unint64_t sub_26B6B1C24()
{
  result = qword_28040AD18;
  if (!qword_28040AD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AD10, &qword_26B6F3A40);
    sub_26B6B1CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AD18);
  }

  return result;
}

unint64_t sub_26B6B1CA8()
{
  result = qword_28040AD20;
  if (!qword_28040AD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AD28, &qword_26B6F3A48);
    sub_26B6B1D2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AD20);
  }

  return result;
}

unint64_t sub_26B6B1D2C()
{
  result = qword_28040AD30;
  if (!qword_28040AD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A1B0, &qword_26B6F3A50);
    sub_26B6B25CC(&qword_28040AD38, v1, type metadata accessor for SportingEventPlayDescriptor);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AD30);
  }

  return result;
}

unint64_t sub_26B6B1E04()
{
  result = qword_28040AD48;
  if (!qword_28040AD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AD40, &qword_26B6F3A58);
    sub_26B6B1E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AD48);
  }

  return result;
}

unint64_t sub_26B6B1E88()
{
  result = qword_28040AD50;
  if (!qword_28040AD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AD58, &qword_26B6F3A60);
    sub_26B650D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AD50);
  }

  return result;
}

unint64_t sub_26B6B1F0C()
{
  result = qword_28040AD68;
  if (!qword_28040AD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AD60, &qword_26B6F3A68);
    sub_26B6B1F90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AD68);
  }

  return result;
}

unint64_t sub_26B6B1F90()
{
  result = qword_28040AD70;
  if (!qword_28040AD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AD78, &qword_26B6F3A70);
    sub_26B6B2014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AD70);
  }

  return result;
}

unint64_t sub_26B6B2014()
{
  result = qword_28040AD80;
  if (!qword_28040AD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A190, &qword_26B6F2558);
    sub_26B6B2098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AD80);
  }

  return result;
}

unint64_t sub_26B6B2098()
{
  result = qword_28040AD88;
  if (!qword_28040AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AD88);
  }

  return result;
}

unint64_t sub_26B6B20EC()
{
  result = qword_28040AD90;
  if (!qword_28040AD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A6D0, &qword_26B6F3688);
    sub_26B6B2170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AD90);
  }

  return result;
}

unint64_t sub_26B6B2170()
{
  result = qword_28040AD98;
  if (!qword_28040AD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A6A8, &qword_26B6F94F0);
    sub_26B6B25CC(&qword_2810CDDF8, v1, type metadata accessor for SportingEventCompetitorContainer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AD98);
  }

  return result;
}

unint64_t sub_26B6B2224()
{
  result = qword_28040ADA0;
  if (!qword_28040ADA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AD40, &qword_26B6F3A58);
    sub_26B6B22A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040ADA0);
  }

  return result;
}

unint64_t sub_26B6B22A8()
{
  result = qword_28040ADA8;
  if (!qword_28040ADA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AD58, &qword_26B6F3A60);
    sub_26B650EF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040ADA8);
  }

  return result;
}

unint64_t sub_26B6B232C()
{
  result = qword_28040ADC8;
  if (!qword_28040ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040ADC8);
  }

  return result;
}

unint64_t sub_26B6B2380()
{
  result = qword_28040ADD8;
  if (!qword_28040ADD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040ADD0, &qword_26B6F3A80);
    sub_26B6B2404();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040ADD8);
  }

  return result;
}

unint64_t sub_26B6B2404()
{
  result = qword_28040ADE0;
  if (!qword_28040ADE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040ADE8, &qword_26B6F3A88);
    sub_26B6B2488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040ADE0);
  }

  return result;
}

unint64_t sub_26B6B2488()
{
  result = qword_28040ADF0;
  if (!qword_28040ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040ADF0);
  }

  return result;
}

unint64_t sub_26B6B24DC()
{
  result = qword_2810CE408;
  if (!qword_2810CE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE408);
  }

  return result;
}

unint64_t sub_26B6B2554()
{
  result = qword_28040AE30;
  if (!qword_28040AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AE30);
  }

  return result;
}

uint64_t sub_26B6B25CC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26B6B2614()
{
  result = qword_28040AE70;
  if (!qword_28040AE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AE70);
  }

  return result;
}

unint64_t sub_26B6B2668()
{
  result = qword_28040AEA8;
  if (!qword_28040AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AEA8);
  }

  return result;
}

unint64_t sub_26B6B26BC()
{
  result = qword_28040AEB8;
  if (!qword_28040AEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AEB0, &qword_26B6F3AD0);
    sub_26B6B2740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AEB8);
  }

  return result;
}

unint64_t sub_26B6B2740()
{
  result = qword_28040AEC0;
  if (!qword_28040AEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AEC8, &unk_26B6F3AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AEC0);
  }

  return result;
}

unint64_t sub_26B6B27C0()
{
  result = qword_28040AED0;
  if (!qword_28040AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AED0);
  }

  return result;
}

unint64_t sub_26B6B2818()
{
  result = qword_28040AED8;
  if (!qword_28040AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AED8);
  }

  return result;
}

unint64_t sub_26B6B2870()
{
  result = qword_28040AEE0;
  if (!qword_28040AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AEE0);
  }

  return result;
}

unint64_t sub_26B6B28C8()
{
  result = qword_28040AEE8;
  if (!qword_28040AEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AEE8);
  }

  return result;
}

unint64_t sub_26B6B2920()
{
  result = qword_28040AEF0;
  if (!qword_28040AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AEF0);
  }

  return result;
}

unint64_t sub_26B6B2978()
{
  result = qword_28040AEF8;
  if (!qword_28040AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AEF8);
  }

  return result;
}

unint64_t sub_26B6B29D0()
{
  result = qword_28040AF00;
  if (!qword_28040AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AF00);
  }

  return result;
}

unint64_t sub_26B6B2A28()
{
  result = qword_28040AF08;
  if (!qword_28040AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AF08);
  }

  return result;
}

unint64_t sub_26B6B2A80()
{
  result = qword_28040AF10;
  if (!qword_28040AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AF10);
  }

  return result;
}

unint64_t sub_26B6B2AD4()
{
  result = qword_28040AF18;
  if (!qword_28040AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AF18);
  }

  return result;
}

unint64_t sub_26B6B2B2C()
{
  result = qword_28040AF20;
  if (!qword_28040AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AF20);
  }

  return result;
}

unint64_t sub_26B6B2B84()
{
  result = qword_28040AF28;
  if (!qword_28040AF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040AD58, &qword_26B6F3A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AF28);
  }

  return result;
}

unint64_t sub_26B6B2BEC()
{
  result = qword_28040AF30;
  if (!qword_28040AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AF30);
  }

  return result;
}

unint64_t sub_26B6B2C44()
{
  result = qword_28040AF38;
  if (!qword_28040AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040AF38);
  }

  return result;
}

uint64_t keypath_get_30Tm(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_72_1(a1);
  v3 = v2(v1);
  return OUTLINED_FUNCTION_180(v3, v4);
}

uint64_t dispatch thunk of SportingEventLocalizedDisplayName.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 96))();
}

uint64_t dispatch thunk of SportingEventDuration.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 88))();
}

uint64_t dispatch thunk of SportingEventSchedule.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 88))();
}

uint64_t dispatch thunk of SportingEventSport.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 88))();
}

uint64_t dispatch thunk of SportingEventLeague.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 104))();
}

uint64_t dispatch thunk of SportingEventAlertText.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 96))();
}

uint64_t dispatch thunk of SportingEventAlert.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 104))();
}

uint64_t dispatch thunk of SportingEventAlertUpdate.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 96))();
}

uint64_t dispatch thunk of SportingEvent.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 392))();
}

uint64_t dispatch thunk of SportingEventVersion.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 112))();
}

uint64_t dispatch thunk of SportingEventCoverageLastUpdate.timestamp.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 120))();
}

uint64_t dispatch thunk of SportingEventCoverageLastUpdate.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 160))();
}

uint64_t dispatch thunk of SportingEventCoverage.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 120))();
}

uint64_t dispatch thunk of SportingEventCoverageIngestion.last.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 152))();
}

uint64_t dispatch thunk of SportingEventCoverageIngestion.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 184))();
}

uint64_t dispatch thunk of SportingEventCoverageIngestionUpdate.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 152))();
}

uint64_t dispatch thunk of SportingEventCompetitorContainer.ordinal.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 168))();
}

uint64_t dispatch thunk of SportingEventCompetitorContainer.getScoreEntry(name:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 200))();
}

uint64_t dispatch thunk of SportingEventCompetitorContainer.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 208))();
}

uint64_t dispatch thunk of SportingEventCompetitor.getStatistic(name:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 320))();
}

uint64_t dispatch thunk of SportingEventCompetitor.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 328))();
}

uint64_t dispatch thunk of SportingEventMetadata.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 104))();
}

uint64_t dispatch thunk of SportingEventParticipant.getStatistic(name:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 376))();
}

uint64_t dispatch thunk of SportingEventParticipant.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 384))();
}

uint64_t dispatch thunk of SportingEventParticipantMetadata.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 104))();
}

uint64_t dispatch thunk of SportingEventParticipantMetadataType.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 96))();
}

uint64_t dispatch thunk of SportingEventCompetitorScore.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 96))();
}

uint64_t dispatch thunk of SportingEventCompetitorScoreEntry.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 120))();
}

uint64_t dispatch thunk of SportingEventCurrentClock.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 160))();
}

uint64_t dispatch thunk of SportingEventClockTimeContainer.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 152))();
}

uint64_t dispatch thunk of SportingEventClockTime.minutes.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 120))();
}

uint64_t dispatch thunk of SportingEventClockTime.seconds.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 144))();
}

uint64_t dispatch thunk of SportingEventClockTime.milliseconds.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 168))();
}

uint64_t dispatch thunk of SportingEventClockTime.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 248))();
}

uint64_t dispatch thunk of SportingEventClock.minutes.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 144))();
}

uint64_t dispatch thunk of SportingEventClock.seconds.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 168))();
}

uint64_t dispatch thunk of SportingEventClock.milliseconds.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 192))();
}

uint64_t dispatch thunk of SportingEventClock.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 328))();
}

uint64_t dispatch thunk of SportingEventClockActivityStatus.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 104))();
}

uint64_t getEnumTagSinglePayload for SportingEventClockBreakType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SportingEventClockBreakType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of SportingEventClockPeriod.index.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 112))();
}

uint64_t dispatch thunk of SportingEventClockPeriod.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 216))();
}

uint64_t sub_26B6B4BD0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_117_0(-1);
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_117_0((*a1 | (v4 << 8)) - 10);
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

      return OUTLINED_FUNCTION_117_0((*a1 | (v4 << 8)) - 10);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_117_0((*a1 | (v4 << 8)) - 10);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_117_0(v8);
}

_BYTE *sub_26B6B4C54(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_116(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_114_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_115_0(result, v6);
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
          result = OUTLINED_FUNCTION_114(result, a2 + 9);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26B6B4D1C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_117_0(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_117_0((*a1 | (v4 << 8)) - 6);
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

      return OUTLINED_FUNCTION_117_0((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_117_0((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_117_0(v8);
}

_BYTE *sub_26B6B4DA0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_116(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_114_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_115_0(result, v6);
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
          result = OUTLINED_FUNCTION_114(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of SportingEventPlay.stamp.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 176))();
}

uint64_t dispatch thunk of SportingEventPlay.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 352))();
}

uint64_t dispatch thunk of SportingEventPlayDescriptor.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 144))();
}

uint64_t dispatch thunk of SportingTournament.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 88))();
}

uint64_t dispatch thunk of SportingTournamentRound.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 88))();
}

uint64_t dispatch thunk of SportingRound.number.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 104))();
}

uint64_t dispatch thunk of SportingRound.total.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 128))();
}

uint64_t dispatch thunk of SportingRound.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 176))();
}

uint64_t dispatch thunk of SportingEventImage.aspectRatio.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  v4 = (*(v3 + 120))();
  return v4 | ((HIDWORD(v4) & 1) << 32);
}

uint64_t dispatch thunk of SportingEventImage.height.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 144))();
}

uint64_t dispatch thunk of SportingEventImage.width.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 168))();
}

uint64_t dispatch thunk of SportingEventImage.encode(to:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_26_5();
  return (*(v3 + 200))();
}

uint64_t sub_26B6B5720(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_117_0(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_117_0((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_117_0((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_117_0((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_117_0(v8);
}