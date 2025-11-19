uint64_t sub_1E3D8CF38()
{
}

uint64_t sub_1E3D8CFE0()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3D8D090()
{
  v0 = sub_1E3D8CFE0();

  return MEMORY[0x1EEE6BDC0](v0, 321, 7);
}

uint64_t sub_1E3D8D0C0(uint64_t a1)
{
  LOBYTE(v20[0]) = 22;
  LOBYTE(v18[0]) = 27;
  v2 = *(*a1 + 1608);
  OUTLINED_FUNCTION_8_139();
  v2(48, 0);
  LOBYTE(v20[0]) = 11;
  OUTLINED_FUNCTION_8_139();
  v2(54, 0);
  LOBYTE(v18[0]) = 5;
  sub_1E3C3DE00(&unk_1F5D54B88);
  sub_1E3C3DE00(&unk_1F5D54B88);
  v24 = v25;
  sub_1E3C3DE00(&unk_1F5D54B88);
  v22 = v23;
  sub_1E3C2FCB8(v18, v20);
  LODWORD(v18[0]) = v20[0];
  WORD2(v18[0]) = WORD2(v20[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v3 + 1600))(v18, 55, v4 & 1, &unk_1F5D54B88);
  memset(v20, 0, sizeof(v20));
  v21 = 1;
  memset(v18, 0, sizeof(v18));
  v19 = 1;
  sub_1E3952C94();
  sub_1E3952C94();
  type metadata accessor for UIEdgeInsets();
  OUTLINED_FUNCTION_8_139();
  v2(0, 0);
  OUTLINED_FUNCTION_36();
  (*(v5 + 1984))(5);
  OUTLINED_FUNCTION_36();
  (*(v6 + 656))(0);
  sub_1E3C8BE74();
  sub_1E3DEFBE8(1);
  v7 = *sub_1E3E5FDEC();
  v8 = *(*a1 + 680);
  v9 = v7;
  v8(v7);
  OUTLINED_FUNCTION_36();
  v10 = OUTLINED_FUNCTION_8_5();
  v11(v10);
  OUTLINED_FUNCTION_36();
  v12 = OUTLINED_FUNCTION_10_7();
  v13(v12);
  OUTLINED_FUNCTION_36();
  v14 = OUTLINED_FUNCTION_10_7();
  v15(v14);
  OUTLINED_FUNCTION_36();
  return (*(v16 + 256))(0x7FF0000000000000, 0);
}

BOOL sub_1E3D8D4B0(char a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = sub_1E3D8C9E8(a1, a2, a3);
  OUTLINED_FUNCTION_8();
  return ((*(v4 + 2224))() & 1) != v3;
}

unint64_t sub_1E3D8D538()
{
  result = qword_1ECF38300;
  if (!qword_1ECF38300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38300);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StandardLockupCellLayoutType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          result = OUTLINED_FUNCTION_15(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StandardLockupCellLayout.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_15(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

id OUTLINED_FUNCTION_48_36()
{
  v3 = *(v1 + 2336);

  return [v0 v3];
}

uint64_t sub_1E3D8D778()
{
  OUTLINED_FUNCTION_24();
  v0[11] = v1;
  v0[12] = v2;
  v0[9] = v3;
  v0[10] = v4;
  sub_1E4206434();
  v0[13] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v6 = sub_1E42063B4();
  v0[14] = v6;
  v0[15] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E3D8D80C, v6, v5);
}

uint64_t sub_1E3D8D80C()
{
  v1 = [*(v0 + 80) tvpPlaylist];
  v2 = [v1 currentMediaItem];

  if (v2 && (ObjectType = swift_getObjectType(), v4 = MEMORY[0x1E69E6158], sub_1E4123588(ObjectType, MEMORY[0x1E69E6158]), sub_1E4123590(@"VUIMediaItemMetadataPlayablePassThrough", v4, v0 + 56), swift_unknownObjectRelease(), v5 = *(v0 + 64), (*(v0 + 128) = v5) != 0))
  {
    v6 = swift_task_alloc();
    *(v0 + 136) = v6;
    *v6 = v0;
    v6[1] = sub_1E3D8D9A4;

    return sub_1E3D8DC2C();
  }

  else
  {

    sub_1E3D8DBD8();
    OUTLINED_FUNCTION_4_187();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_54();

    return v8();
  }
}

uint64_t sub_1E3D8D9A4()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_31();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_31();
  *v7 = v6;
  v4[18] = v0;

  if (v0)
  {
    v8 = v4[14];
    v9 = v4[15];
    v10 = sub_1E3D8DB70;
  }

  else
  {

    v4[19] = v3;
    v8 = v4[14];
    v9 = v4[15];
    v10 = sub_1E3D8DAC8;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1E3D8DAC8()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 144);
  v2 = *(v0 + 80);

  v3 = v2;
  sub_1E3D8DFE4(0, v2, (v0 + 16));
  if (!v1)
  {
    v5 = *(v0 + 72);
    v6 = *(v0 + 16);
    v7 = *(v0 + 32);
    *(v5 + 32) = *(v0 + 48);
    *v5 = v6;
    *(v5 + 16) = v7;
  }

  OUTLINED_FUNCTION_54();

  return v4();
}

uint64_t sub_1E3D8DB70()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

unint64_t sub_1E3D8DBD8()
{
  result = qword_1ECF38308;
  if (!qword_1ECF38308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38308);
  }

  return result;
}

uint64_t sub_1E3D8DC2C()
{
  OUTLINED_FUNCTION_24();
  v0[5] = v1;
  v0[6] = v2;
  v0[3] = v3;
  v0[4] = v4;
  v0[7] = sub_1E4206434();
  v0[8] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v6 = sub_1E42063B4();
  v0[9] = v6;
  v0[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E3D8DCC4, v6, v5);
}

uint64_t sub_1E3D8DCC4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  v9 = *(v0 + 24);
  v3 = sub_1E4206424();
  *(v0 + 88) = v3;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *(v4 + 16) = v9;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  *v5 = v0;
  v5[1] = sub_1E3D8DDF8;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v0 + 16, v3, v7, 0xD00000000000002DLL, 0x80000001E4281D90, sub_1E3D8F694, v4, v6);
}

uint64_t sub_1E3D8DDF8()
{
  OUTLINED_FUNCTION_24();
  v2 = *v1;
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_31();
  *v5 = v4;
  v2[14] = v0;

  if (v0)
  {
    v6 = v2[9];
    v7 = v2[10];
    v8 = sub_1E3D8DF74;
  }

  else
  {

    v6 = v2[9];
    v7 = v2[10];
    v8 = sub_1E3D8DF10;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1E3D8DF10()
{
  OUTLINED_FUNCTION_24();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E3D8DF74()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

void sub_1E3D8DFE4(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v53 = a2;
  v47 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40C80);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v39 - v6;
  v8 = type metadata accessor for ClipItem();
  OUTLINED_FUNCTION_0_10();
  v46 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = &unk_1F5D849B8;
  v52 = &off_1F5D849C8;
  LOBYTE(v50[0]) = 3;
  v13 = MEMORY[0x1E69E7CA0];
  sub_1E3F9F164(v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v50);
    if (v3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v50);
    sub_1E3D8F640();
    OUTLINED_FUNCTION_4_187();
    v14 = swift_allocError();
    swift_willThrow();
    if (v14)
    {
      goto LABEL_9;
    }
  }

  v51 = &unk_1F5D849B8;
  v52 = &off_1F5D849C8;
  LOBYTE(v50[0]) = 0;
  sub_1E3F9F164(v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
  if (swift_dynamicCast())
  {
    v13 = v48;
    __swift_destroy_boxed_opaque_existential_1(v50);
    goto LABEL_11;
  }

  __swift_destroy_boxed_opaque_existential_1(v50);
  sub_1E3D8F640();
  OUTLINED_FUNCTION_4_187();
  v15 = swift_allocError();
  swift_willThrow();
  if (v15)
  {

LABEL_9:
    v16 = v47;
    v17 = v53;
LABEL_10:

    return;
  }

LABEL_11:
  v18 = sub_1E3D8EC40(1);
  v44 = v13;
  v19 = 0;
  v20 = sub_1E3D8EC40(2);
  v42 = a3;

  v21 = 0;
  v22 = *(v18 + 16);
  v43 = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
  while (v22 != v21)
  {
    if (v21 >= *(v18 + 16))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      return;
    }

    sub_1E3B9DB48(v7);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      sub_1E325F7A8(v7, &qword_1ECF40C80);
      ++v21;
    }

    else
    {
      sub_1E3ACA34C(v7, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_1E3ACA028(0, *(v45 + 16) + 1, 1, v45);
      }

      v24 = *(v45 + 16);
      v23 = *(v45 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v40 = *(v45 + 16);
        v41 = v24 + 1;
        v28 = sub_1E3ACA028(v23 > 1, v24 + 1, 1, v45);
        v24 = v40;
        v25 = v41;
        v45 = v28;
      }

      ++v21;
      v27 = v45;
      v26 = v46;
      *(v45 + 16) = v25;
      sub_1E3ACA34C(v12, v27 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24);
    }
  }

  v29 = 0;
  v50[0] = MEMORY[0x1E69E7CC0];
  v30 = *(v20 + 16);
  v16 = v47;
LABEL_22:
  v17 = v53;
  while (v30 != v29)
  {
    if (v29 >= *(v20 + 16))
    {
      goto LABEL_36;
    }

    v31 = v29 + 1;
    type metadata accessor for ViewModel();

    v33 = sub_1E3D8ED24(v32, v16, v17);

    v29 = v31;
    if (v33)
    {
      MEMORY[0x1E6910BF0](v34);
      if (*((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      v43 = v50[0];
      v29 = v31;
      goto LABEL_22;
    }
  }

  v51 = &unk_1F5D849B8;
  v52 = &off_1F5D849C8;
  LOBYTE(v50[0]) = 4;
  sub_1E3F9F164(v50);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
  if (swift_dynamicCast())
  {
    v35 = v48;
    v30 = v49;
    __swift_destroy_boxed_opaque_existential_1(v50);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v50);
    sub_1E3D8F640();
    OUTLINED_FUNCTION_4_187();
    v19 = swift_allocError();
    swift_willThrow();
  }

  v36 = v44;
  if (v19)
  {

    goto LABEL_10;
  }

  v37 = v42;
  v38 = v45;
  *v42 = v36;
  v37[1] = v38;
  v37[2] = v43;
  v37[3] = v35;
  v37[4] = v30;
}

uint64_t sub_1E3D8E5C4()
{
  OUTLINED_FUNCTION_24();
  v0[9] = v1;
  v0[10] = v2;
  v0[7] = v3;
  v0[8] = v4;
  sub_1E4206434();
  v0[11] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v6 = sub_1E42063B4();
  v0[12] = v6;
  v0[13] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E3D8E658, v6, v5);
}

uint64_t sub_1E3D8E658()
{
  OUTLINED_FUNCTION_27_2();
  sub_1E3D8F418(*(v0 + 64));
  *(v0 + 112) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 120) = v2;
    *v2 = v0;
    v2[1] = sub_1E3D8E768;

    return sub_1E3D8DC2C();
  }

  else
  {

    sub_1E3D8DBD8();
    OUTLINED_FUNCTION_4_187();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_54();

    return v4();
  }
}

uint64_t sub_1E3D8E768()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_31();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_31();
  *v7 = v6;
  v4[16] = v0;

  if (v0)
  {
    v8 = v4[12];
    v9 = v4[13];
    v10 = sub_1E3D8E930;
  }

  else
  {

    v4[17] = v3;
    v8 = v4[12];
    v9 = v4[13];
    v10 = sub_1E3D8E88C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1E3D8E88C()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 128);
  v2 = *(v0 + 64);

  v3 = v2;
  sub_1E3D8DFE4(v2, 0, (v0 + 16));
  if (!v1)
  {
    v5 = *(v0 + 16);
    v6 = *(v0 + 32);
    v7 = *(v0 + 56);
    *(v7 + 32) = *(v0 + 48);
    *v7 = v5;
    *(v7 + 16) = v6;
  }

  OUTLINED_FUNCTION_54();

  return v4();
}

uint64_t sub_1E3D8E930()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

void sub_1E3D8E998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38298);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = aBlock - v11;
  v13 = sub_1E4205ED4();
  if (a5)
  {
    a5 = sub_1E4205ED4();
  }

  v14 = objc_opt_self();
  (*(v9 + 16))(v12, a1, v7);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v12, v7);
  aBlock[4] = sub_1E3D8F6A0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E3D8EB94;
  aBlock[3] = &block_descriptor_107;
  v17 = _Block_copy(aBlock);

  [v14 fetchKeyPlays:v13 nextToken:a5 completion:v17];
  _Block_release(v17);
}

uint64_t sub_1E3D8EB94(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1E4205C64();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1E3D8EC40(char a1)
{
  v4[3] = &unk_1F5D849B8;
  v4[4] = &off_1F5D849C8;
  LOBYTE(v4[0]) = a1;
  sub_1E3F9F164(v4);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  if (swift_dynamicCast())
  {
    v1 = v3;
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
    sub_1E3D8F640();
    OUTLINED_FUNCTION_4_187();
    swift_allocError();
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1E3D8ED24(uint64_t a1, void *a2, void *a3)
{
  sub_1E384EE08(228);
  sub_1E3277E60(v6, v7, a1, &v20);

  if (!v21)
  {
    sub_1E325F7A8(&v20, &unk_1ECF296E0);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ViewModel();
  v8 = sub_1E39BED80(228, v19, 0);
  v9 = v8;
  if (v8)
  {
    v10 = (*(*v8 + 392))(v8);
    if (v10)
    {
      v11 = v10;
      type metadata accessor for LayoutGrid();
      sub_1E3A256EC();
      sub_1E3C2AE10();
      v13 = v12;
      (*(*v11 + 1640))();
    }

    if (!sub_1E39C2DB4())
    {
      if (a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_1E4298880;
        *(v15 + 32) = a2;
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF35BC0);
        *&v20 = v15;
        v16 = a2;
        v17 = 12;
      }

      else
      {
        if (!a3)
        {
          return v9;
        }

        v21 = sub_1E3D8F47C();
        *&v20 = a3;
        v18 = a3;
        v17 = 14;
      }

      sub_1E39C306C(v17);
      sub_1E325F7A8(&v20, &unk_1ECF296E0);
      return v9;
    }
  }

  return v9;
}

uint64_t sub_1E3D8EF70()
{
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3D8EFB8(char a1)
{
  result = 0x7865646E69;
  switch(a1)
  {
    case 1:
      result = 0x6D65744970696C63;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x7379616C5079656BLL;
      break;
    case 4:
      result = 0x656B6F547478656ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3D8F06C(unsigned __int8 a1, char a2)
{
  v2 = 0x7865646E69;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7865646E69;
  switch(v4)
  {
    case 1:
      v5 = 0x6D65744970696C63;
      v3 = 0xE900000000000073;
      break;
    case 2:
      v5 = 0xD000000000000012;
      v3 = 0x80000001E425E2C0;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x7379616C5079656BLL;
      break;
    case 4:
      v5 = 0x656B6F547478656ELL;
      v3 = 0xE90000000000006ELL;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6D65744970696C63;
      v6 = 0xE900000000000073;
      break;
    case 2:
      v2 = 0xD000000000000012;
      v6 = 0x80000001E425E2C0;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v2 = 0x7379616C5079656BLL;
      break;
    case 4:
      v2 = 0x656B6F547478656ELL;
      v6 = 0xE90000000000006ELL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3D8F204(char a1)
{
  sub_1E4207B44();
  sub_1E3D8EFB8(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3D8F270()
{
  sub_1E4206014();
}

uint64_t sub_1E3D8F354(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3D8EFB8(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3D8F3B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3D8EF70();
  *a1 = result;
  return result;
}

unint64_t sub_1E3D8F3E4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E3D8EFB8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3D8F418(void *a1)
{
  v1 = [a1 playablePassThrough];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205F14();

  return v3;
}

unint64_t sub_1E3D8F47C()
{
  result = qword_1EE23B350;
  if (!qword_1EE23B350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B350);
  }

  return result;
}

unint64_t sub_1E3D8F4C4()
{
  result = qword_1ECF38310;
  if (!qword_1ECF38310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38310);
  }

  return result;
}

unint64_t sub_1E3D8F51C()
{
  result = qword_1ECF38318;
  if (!qword_1ECF38318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38318);
  }

  return result;
}

_BYTE *sub_1E3D8F598(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1E3D8F640()
{
  result = qword_1ECF38320;
  if (!qword_1ECF38320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38320);
  }

  return result;
}

uint64_t sub_1E3D8F6A0(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38298);
  if (a2)
  {
    v4 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38298);
    return sub_1E42063C4();
  }

  else
  {
    if (!a1 || !sub_1E374BD08(a1))
    {
      sub_1E4205CB4();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38298);
    return sub_1E42063D4();
  }
}

_BYTE *sub_1E3D8F7C4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3D8F8A0()
{
  result = qword_1ECF62B30[0];
  if (!qword_1ECF62B30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF62B30);
  }

  return result;
}

uint64_t sub_1E3D8F904()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1E4205ED4();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    result = sub_1E329505C(v8);
    goto LABEL_8;
  }

  result = OUTLINED_FUNCTION_1_18();
  if (!result)
  {
LABEL_8:
    v4 = 1.0;
    goto LABEL_9;
  }

  v4 = v5;
LABEL_9:
  qword_1EE2AAD60 = *&v4;
  return result;
}

uint64_t *sub_1E3D8FA04()
{
  if (qword_1EE29AC70 != -1)
  {
    OUTLINED_FUNCTION_0_235();
  }

  return &qword_1EE2AAD60;
}

uint64_t sub_1E3D8FA44()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1E4205ED4();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    result = sub_1E329505C(v8);
    goto LABEL_8;
  }

  result = OUTLINED_FUNCTION_1_18();
  if (!result)
  {
LABEL_8:
    v4 = 0x3FC999999999999ALL;
    goto LABEL_9;
  }

  v4 = v5;
LABEL_9:
  qword_1ECF71648 = v4;
  return result;
}

uint64_t *sub_1E3D8FB48()
{
  if (qword_1ECF62C40 != -1)
  {
    OUTLINED_FUNCTION_1_213();
  }

  return &qword_1ECF71648;
}

double sub_1E3D8FB94(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  result = 50.0;
  if ((v2 & 1) == 0)
  {
    return 10.0;
  }

  return result;
}

BOOL sub_1E3D8FBD0(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1E39DFFC8() & 1) == 0 || ((*(a4 + 8))(a3, a4) & 1) == 0)
  {
    return 0;
  }

  if (qword_1EE29AC70 != -1)
  {
    OUTLINED_FUNCTION_0_235();
  }

  return *&qword_1EE2AAD60 <= a1;
}

uint64_t sub_1E3D8FC6C(char a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1E41FFCB4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    return 0;
  }

  if ((*(a5 + 8))(a4, a5))
  {
    if (sub_1E3A24FDC(a1))
    {
      return 2;
    }

    if (qword_1ECF62C40 != -1)
    {
      OUTLINED_FUNCTION_1_213();
    }

    if (*&qword_1ECF71648 <= a2)
    {
      return 2;
    }
  }

  else
  {
    v14 = sub_1E324FBDC();
    (*(v10 + 16))(v12, v14, v9);
    v15 = sub_1E41FFC94();
    v16 = sub_1E4206814();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1E323F000, v15, v16, "CellShowcasing:: hideNavBarTitle: uber layout is not active, ignore", v17, 2u);
      MEMORY[0x1E69143B0](v17, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
  }

  return 1;
}

double sub_1E3D8FE68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  type metadata accessor for CGSize(0);
  sub_1E42038E4();
  *&v15 = a3;
  *(&v15 + 1) = *v19;
  v16 = *&v19[8];
  *&v17 = a1;
  *(&v17 + 1) = a2;
  LOBYTE(v18) = a4;
  HIBYTE(v18) = a5;
  *v19 = __PAIR128__(*v19, a3);
  *&v19[16] = v16;
  v20 = a1;
  v21 = a2;
  v22 = a4;
  v23 = a5;
  sub_1E3D8FF34(&v15, v14);
  sub_1E3AC0B50(v19);
  v12 = v16;
  *a6 = v15;
  *(a6 + 16) = v12;
  result = *&v17;
  *(a6 + 32) = v17;
  *(a6 + 48) = v18;
  return result;
}

uint64_t sub_1E3D8FF6C@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_1E4201534();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38328) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_2();
  sub_1E3D901E0(v1, v11, v12, v13, v14, v15, v16, v17, v35, v36[0], v36[1], v36[2], v36[3], v37, v38, v39, v40, v41, v42, v43);
  v18 = sub_1E4203DA4();
  v20 = v19;
  v21 = v2 + *(v9 + 44);
  sub_1E3D90FB4();
  v22 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38330) + 36));
  *v22 = v18;
  v22[1] = v20;
  OUTLINED_FUNCTION_8();
  v24 = 0.0;
  if ((*(v23 + 392))())
  {
    OUTLINED_FUNCTION_30();
    (*(v25 + 552))(v36);

    if ((v37 & 1) == 0)
    {
      v26 = OUTLINED_FUNCTION_24_0();
      v24 = sub_1E3952BE8(v26, v27, v28, v29);
    }
  }

  v30 = *(v4 + 20);
  v31 = *MEMORY[0x1E697F468];
  sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  (*(v32 + 104))(v8 + v30, v31);
  *v8 = v24;
  v8[1] = v24;
  v33 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38338) + 36);
  sub_1E3D94954(v8, v33, MEMORY[0x1E697EAF0]);
  *(v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0) + 36)) = 256;
  return sub_1E3741EA0(v2, a1, &qword_1ECF38328);
}

void sub_1E3D901E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38440);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &a9 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38568);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_19_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38490);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  if (*v24)
  {

    sub_1E3D90448();
    sub_1E3743538(v27, v20, &qword_1ECF38440);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_9_128();
    sub_1E3D94264(v32, &qword_1ECF38440, &unk_1E42D0700, v33);
    OUTLINED_FUNCTION_1();
    sub_1E374AD40(v34, v35);
    OUTLINED_FUNCTION_27_67();

    v36 = v27;
    v37 = &qword_1ECF38440;
  }

  else
  {
    *v31 = sub_1E4201D44();
    *(v31 + 1) = 0;
    v31[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38570);
    sub_1E3D90B68();
    sub_1E3743538(v31, v20, &qword_1ECF38490);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_9_128();
    sub_1E3D94264(v38, v39, v40, v41);
    OUTLINED_FUNCTION_1();
    sub_1E374AD40(v42, &qword_1ECF38490);
    OUTLINED_FUNCTION_27_67();
    v36 = OUTLINED_FUNCTION_98();
  }

  sub_1E325F69C(v36, v37);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D90448()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v38 = v4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38480);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38578);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38470);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38460);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  if ((*(v3 + 48) & 1) != 0 || (v19 = *(*v1 + 128), (v19)(v18), v20 == 0.0))
  {
    sub_1E3D9083C();
    (*(*v1 + 128))();
    sub_1E4203D84();
    OUTLINED_FUNCTION_26_83();
    sub_1E42015C4();
    sub_1E3741EA0(v12, v16, &qword_1ECF38470);
    memcpy((v16 + *(v35 + 36)), v39, 0x70uLL);
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v21, v22, v23);
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v24, v25, v26);
    swift_storeEnumTagMultiPayload();
    sub_1E3D94368();
    sub_1E3D94498();
    sub_1E4201F44();
    OUTLINED_FUNCTION_82();
  }

  else
  {
    sub_1E3D9083C();
    v19();
    v19();
    sub_1E4203D84();
    OUTLINED_FUNCTION_59();
    sub_1E4200D94();
    v29 = &v7[*(v37 + 36)];
    v30 = v39[1];
    *v29 = v39[0];
    *(v29 + 1) = v30;
    *(v29 + 2) = v39[2];
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v31, v32, v33);
    swift_storeEnumTagMultiPayload();
    sub_1E3D94368();
    sub_1E3D94498();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
  }

  sub_1E325F69C(v27, v28);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3D9083C()
{
  OUTLINED_FUNCTION_31_1();
  v25[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38340);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38348);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_19_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38350);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_26_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90);
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  OUTLINED_FUNCTION_5_7();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v22 = v25 - v21;
  if (*v0)
  {
    *v7 = sub_1E4201D44();
    *(v7 + 1) = 0;
    v7[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38368);
    sub_1E3D9178C();
    sub_1E4203DA4();
    OUTLINED_FUNCTION_26_83();
    sub_1E42015C4();
    sub_1E3741EA0(v7, v12, &qword_1ECF38340);
    memcpy((v12 + *(v8 + 36)), v26, 0x70uLL);
    v23 = OUTLINED_FUNCTION_98();
    sub_1E3741EA0(v23, v24, &qword_1ECF38348);
    sub_1E3743538(v2, v1, &qword_1ECF38348);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_5_1();
    sub_1E3D913A8();
    OUTLINED_FUNCTION_33_63();
    sub_1E4201F44();
    sub_1E325F69C(v2, &qword_1ECF38348);
  }

  else
  {
    nullsub_1(v19, v20);
    (*(v17 + 16))(v1, v22, v15);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_5_1();
    sub_1E3D913A8();
    OUTLINED_FUNCTION_33_63();
    sub_1E4201F44();
    (*(v17 + 8))(v22, v15);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D90B68()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38340);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  v12 = swift_allocObject();
  v13 = *(v1 + 16);
  *(v12 + 16) = *v1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(v1 + 32);
  *(v12 + 64) = *(v1 + 48);
  sub_1E3D8FF34(v1, &v23);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_26_83();
  sub_1E4200D94();
  v14 = v23;
  v15 = v25;
  v19 = v28;
  v20 = v27;
  v30 = v24;
  v29 = v26;
  v21 = *(v1 + 8);
  v22 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
  sub_1E42038F4();
  *v11 = sub_1E4201D44();
  *(v11 + 1) = 0;
  v11[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38368);
  sub_1E3D91A34();
  v16 = v30;
  LOBYTE(v1) = v29;
  sub_1E3743538(v11, v8, &qword_1ECF38340);
  *v3 = sub_1E3D94A08;
  *(v3 + 8) = v12;
  *(v3 + 16) = v14;
  *(v3 + 24) = v16;
  *(v3 + 32) = v15;
  *(v3 + 40) = v1;
  v17 = v19;
  *(v3 + 48) = v20;
  *(v3 + 56) = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38580);
  sub_1E3743538(v8, v3 + *(v18 + 48), &qword_1ECF38340);

  sub_1E325F69C(v11, &qword_1ECF38340);
  sub_1E325F69C(v8, &qword_1ECF38340);

  OUTLINED_FUNCTION_54_0();
}

void sub_1E3D90D90()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E4200EA4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v10 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E42036E4();
  (*(v6 + 16))(v10, v3, v4);
  v12 = (*(v6 + 80) + 66) & ~*(v6 + 80);
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_19_101(v13);
  (*(v6 + 32))(v15 + v12, v10, v4, v14);
  v20[7] = v11;
  v20[8] = sub_1E3D94A10;
  v20[9] = v13;
  v20[10] = 0;
  v20[11] = 0;
  sub_1E3D8FF34(v1, v20);
  sub_1E4200E64();
  v19[0] = v16;
  v19[1] = v17;
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_19_101(v18);
  sub_1E3D8FF34(v1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF362B0);
  type metadata accessor for CGSize(0);
  sub_1E3C8D91C();
  sub_1E3D94B58(&qword_1EE23AE98, type metadata accessor for CGSize);
  sub_1E4203524();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D90FB4()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0;
  v40 = v2;
  v3 = sub_1E4201534();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = (v6 - v5);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38558);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - v12;
  v14 = *(**(v1 + 32) + 392);
  v15 = 0.0;
  if (v14(v11))
  {
    OUTLINED_FUNCTION_30();
    (*(v16 + 552))(&v43);

    if ((v44 & 1) == 0)
    {
      v17 = OUTLINED_FUNCTION_24_0();
      v15 = sub_1E3952BE8(v17, v18, v19, v20);
    }
  }

  v21 = *(v3 + 20);
  v22 = *MEMORY[0x1E697F468];
  sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  v24 = (*(v23 + 104))(v7 + v21, v22);
  *v7 = v15;
  v7[1] = v15;
  v25 = (v14)(v24);
  if (v25)
  {
    OUTLINED_FUNCTION_30();
    v27 = (*(v26 + 792))();
  }

  else
  {
    v27 = 11;
  }

  if ((v14)(v25))
  {
    OUTLINED_FUNCTION_30();
    (*(v28 + 552))(v45);
    v38 = v45[0];
    v37 = v45[1];
    v29 = v46;

    v30 = v37;
    v31 = v38;
  }

  else
  {
    v31 = 0uLL;
    v29 = 1;
    v30 = 0uLL;
  }

  v47[0] = v31;
  v47[1] = v30;
  v48 = v29;
  v32 = sub_1E3D94B58(&qword_1ECF38560, MEMORY[0x1E697EAF0]);
  sub_1E3A6929C(v27, 0, 0, 1, v47, v3, v32);
  v33 = sub_1E3D949B0(v7, MEMORY[0x1E697EAF0]);
  if ((v14)(v33))
  {
    OUTLINED_FUNCTION_30();
    v35 = (*(v34 + 744))();
  }

  else
  {
    v35 = 0;
  }

  v41 = v3;
  v42 = v32;
  swift_getOpaqueTypeConformance2();
  v36 = v39;
  sub_1E39BA034();

  (*(v9 + 8))(v13, v36);
  OUTLINED_FUNCTION_20_0();
}

unint64_t sub_1E3D913A8()
{
  result = qword_1ECF38358;
  if (!qword_1ECF38358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38348);
    sub_1E374AD40(&qword_1ECF38360, &unk_1ECF38340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38358);
  }

  return result;
}

void sub_1E3D91460()
{
  OUTLINED_FUNCTION_21_5();
  __dst = v1;
  sub_1E3EBA478(v32);
  v29 = v32[0];
  v30 = v32[1];
  v31 = v32[2];
  v2 = v33;
  v3 = v34;
  v4 = v35;
  type metadata accessor for FlexibleGridLayoutHelper();
  OUTLINED_FUNCTION_42_7();
  (*(v5 + 872))();
  OUTLINED_FUNCTION_42_7();
  (*(v6 + 1080))();
  OUTLINED_FUNCTION_42_7();
  (*(v7 + 904))();
  v8 = sub_1E39D9354();
  OUTLINED_FUNCTION_42_7();
  v10 = 0.0;
  if ((*(v9 + 392))())
  {
    OUTLINED_FUNCTION_30();
    (*(v11 + 176))(v36);

    if ((v37 & 1) == 0)
    {
      v12 = OUTLINED_FUNCTION_24_0();
      v10 = sub_1E3952BE0(v12, v13, v14, v15);
    }
  }

  v16 = *v0;
  if (*v0)
  {
    v2 = *(*v16 + 128);
    v3 = *v16 + 128;

    v18 = v2(v17);
    (*(*v8 + 200))(v18 - v10);
    OUTLINED_FUNCTION_41_52();
  }

  else
  {
    v23 = *(v0 + 1);
    *&v24 = v0[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
    sub_1E42038F4();
    if (*__src == 0.0)
    {

      goto LABEL_9;
    }

    v23 = *(v0 + 1);
    *&v24 = v0[3];
    v19 = sub_1E42038F4();
    (*(*v8 + 200))(v19, *__src - v10);
    OUTLINED_FUNCTION_41_52();
  }

  sub_1E3A28718(v32);
LABEL_9:
  __src[0] = v29;
  __src[1] = v30;
  __src[2] = v31;
  *&__src[3] = v2;
  *(&__src[3] + 1) = v3;
  LOBYTE(__src[4]) = v4;
  v23 = v29;
  v24 = v30;
  v25 = v31;
  v26 = v2;
  v27 = v3;
  v28 = v4;
  sub_1E3741F40(__src, v21);
  sub_1E3A28718(&v23);
  memcpy(__dst, __src, 0x41uLL);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3D9178C()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for FlexibleGridSubsetViewHeader();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34[-v11 - 8];
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_19_7();
  v41[0] = v2[5];
  v14 = *v2;
  if (*v2)
  {
    OUTLINED_FUNCTION_8();
    v16 = *(v15 + 128);
    v17 = sub_1E3743538(v41, &v36, &qword_1ECF2BB28);
    v18 = v16(v17);
  }

  else
  {
    sub_1E3743538(v41, &v36, &qword_1ECF2BB28);
    v18 = 0.0;
  }

  *v12 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  *(v12 + *(v5 + 20)) = v41[0];
  *(v12 + *(v5 + 24)) = v18;
  v19 = OUTLINED_FUNCTION_98();
  sub_1E3D94954(v19, v20, v21);
  v22 = v2[4];
  if (v14)
  {
    OUTLINED_FUNCTION_8();
    v24 = *(v23 + 128);

    v26 = v24(v25);
  }

  else
  {

    v26 = 0.0;
  }

  sub_1E3D91460();
  v35[0] = 0;
  sub_1E42038E4();
  v27 = v36;
  v28 = v37;
  sub_1E3D948C0(v0, v9);
  v29 = OUTLINED_FUNCTION_34();
  sub_1E3D948C0(v29, v30);
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38550) + 48);
  v35[0] = v27;
  v35[1] = v28;
  v35[2] = v22;
  *&v35[3] = v26;
  memcpy(&v35[4], v34, 0x41uLL);
  memcpy((v4 + v31), v35, 0x61uLL);
  sub_1E3D9478C(v35, &v36);
  OUTLINED_FUNCTION_10_120();
  sub_1E3D949B0(v0, v32);
  v36 = v27;
  v37 = v28;
  v38 = v22;
  v39 = v26;
  memcpy(v40, v34, sizeof(v40));
  sub_1E3D94924(&v36);
  sub_1E3D949B0(v9, v35);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3D91A34()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for FlexibleGridSubsetViewHeader();
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_19_7();
  v22 = *(v4 + 40);
  v13 = v22;
  *v0 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  *(v0 + *(v8 + 28)) = v13;
  *(v0 + *(v8 + 32)) = v2;
  v14 = *(v4 + 32);
  sub_1E3743538(&v22, &v24, &qword_1ECF2BB28);

  sub_1E3D91460();
  v23[0] = 0;
  sub_1E42038E4();
  v15 = v24;
  v16 = v25;
  sub_1E3D948C0(v0, v11);
  v17 = OUTLINED_FUNCTION_34();
  sub_1E3D948C0(v17, v18);
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38550) + 48);
  v23[0] = v15;
  v23[1] = v16;
  v23[2] = v14;
  v23[3] = v2;
  memcpy(&v23[4], v21, 0x41uLL);
  memcpy((v6 + v19), v23, 0x61uLL);
  sub_1E3D9478C(v23, &v24);
  OUTLINED_FUNCTION_10_120();
  sub_1E3D949B0(v0, v20);
  v24 = v15;
  v25 = v16;
  v26 = v14;
  v27 = v2;
  memcpy(v28, v21, sizeof(v28));
  sub_1E3D94924(&v24);
  sub_1E3D949B0(v11, v23);
  OUTLINED_FUNCTION_54_0();
}

uint64_t type metadata accessor for FlexibleGridSubsetViewHeader()
{
  result = qword_1ECF62DE0;
  if (!qword_1ECF62DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3D91CA8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v57 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38370);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v48 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38378);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v49 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v48 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38380);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v48 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38388);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v51 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - v17;
  v19 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38390);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  v53 = &v48 - v27;
  v28 = *(v1 + *(type metadata accessor for FlexibleGridSubsetViewHeader() + 20));
  if (v28)
  {
    v48 = v5;

    sub_1E3746E10(v25);
    v29 = sub_1E3B0352C();
    (*(v21 + 8))(v25, v19);
    if (v29)
    {
      sub_1E3D9220C();
      sub_1E3743538(v18, v55, &qword_1ECF38388);
      swift_storeEnumTagMultiPayload();
      sub_1E3D92A34();
      sub_1E3D92B78();
      sub_1E4201F44();
      sub_1E325F69C(v18, &qword_1ECF38388);
    }

    else
    {
      v30 = sub_1E3D9220C();
      v31 = (*(*v28 + 392))(v30);
      if (v31)
      {
        (*(*v31 + 304))();
      }

      sub_1E4203DB4();
      OUTLINED_FUNCTION_59();
      sub_1E4200D94();
      v32 = v49;
      sub_1E3741EA0(v51, v49, &qword_1ECF38388);
      v33 = (v32 + *(v56 + 36));
      v34 = v59;
      *v33 = v58;
      v33[1] = v34;
      v33[2] = v60;
      OUTLINED_FUNCTION_19_1();
      sub_1E3741EA0(v35, v36, v37);
      OUTLINED_FUNCTION_19_1();
      sub_1E3743538(v38, v39, v40);
      swift_storeEnumTagMultiPayload();
      sub_1E3D92A34();
      sub_1E3D92B78();
      sub_1E4201F44();
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v41, v42);
    }

    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v43, v44, v45);
    swift_storeEnumTagMultiPayload();
    sub_1E3D929A8();
    sub_1E4201F44();

    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v46, v47);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1E3D929A8();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D9220C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF383D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF383C0);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF383B0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v48 - v16;
  v18 = *(v0 + *(type metadata accessor for FlexibleGridSubsetViewHeader() + 20));
  if (!v18)
  {
    goto LABEL_11;
  }

  v49 = v14;
  v50 = v17;
  v19 = *(*v18 + 488);

  v21 = v19(v20);
  if (!v21 || (v53[0] = v21, v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34240), v23 = sub_1E374AD40(&qword_1ECF289A8, &qword_1ECF34240), sub_1E38D2480(v51, v22, v23), , (v24 = v51[0]) == 0))
  {

LABEL_11:
    OUTLINED_FUNCTION_34();
    swift_storeEnumTagMultiPayload();
    sub_1E3D92AC0();
    return sub_1E4201F44();
  }

  v25 = sub_1E373E010(39, v51[0]);
  if (!v25)
  {

    goto LABEL_11;
  }

  v26 = v25;
  v27 = sub_1E373E010(23, v24);

  if (!v27)
  {

    goto LABEL_11;
  }

  v48[0] = sub_1E4201B84();
  if ((*(*v26 + 392))())
  {
    OUTLINED_FUNCTION_30();
    (*(v28 + 176))(v51);

    v29 = v51[3];
    if (v52)
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  v31 = v49;
  *v9 = v48[0];
  *(v9 + 1) = v29;
  v9[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF383D8);
  sub_1E3D926D8();
  v32 = (*(*v18 + 392))();
  v48[1] = v27;
  if (v32 && (OUTLINED_FUNCTION_30(), (*(v33 + 176))(v53), v1 = v53[0], v2 = v53[1], v3 = v53[2], v4 = v53[3], , (v54 & 1) == 0))
  {
    v34.n128_f64[0] = OUTLINED_FUNCTION_6();
    j_nullsub_1(v34, v35, v36, v37);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  v38 = OUTLINED_FUNCTION_41_8();
  sub_1E3741EA0(v9, v31, &qword_1ECF383C0);
  v39 = v31 + *(v10 + 36);
  *v39 = v38;
  *(v39 + 8) = v1;
  *(v39 + 16) = v2;
  *(v39 + 24) = v3;
  *(v39 + 32) = v4;
  *(v39 + 40) = 0;
  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v40, v41, v42);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v43, v44, v45);
  OUTLINED_FUNCTION_34();
  swift_storeEnumTagMultiPayload();
  sub_1E3D92AC0();
  sub_1E4201F44();

  OUTLINED_FUNCTION_21_1();
  return sub_1E325F69C(v46, v47);
}

void sub_1E3D926D8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v30 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38530);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38538);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  memset(v31, 0, 41);
  v31[41] = 1;
  v18 = (*(*v3 + 392))();
  sub_1E382A9B4(v3, v31, v18, v17);

  v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38540) + 36)] = 1;
  *&v17[*(v11 + 44)] = 0;
  v19 = (*(*v1 + 392))();
  sub_1E382A9B4(v1, v31, v19, v9);

  *&v9[*(v6 + 44)] = 0x3FF0000000000000;
  sub_1E3743538(v17, v14, &qword_1ECF38538);
  v20 = OUTLINED_FUNCTION_98();
  sub_1E3743538(v20, v21, &qword_1ECF38530);
  sub_1E3743538(v14, v30, &qword_1ECF38538);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38548);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v22, v23, v24);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v25, v26);
  sub_1E325F69C(v17, &qword_1ECF38538);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v27, v28);
  sub_1E325F69C(v14, &qword_1ECF38538);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3D929A8()
{
  result = qword_1ECF38398;
  if (!qword_1ECF38398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38390);
    sub_1E3D92A34();
    sub_1E3D92B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38398);
  }

  return result;
}

unint64_t sub_1E3D92A34()
{
  result = qword_1ECF383A0;
  if (!qword_1ECF383A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38388);
    sub_1E3D92AC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF383A0);
  }

  return result;
}

unint64_t sub_1E3D92AC0()
{
  result = qword_1ECF383A8;
  if (!qword_1ECF383A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF383B0);
    sub_1E374AD40(&qword_1ECF383B8, &unk_1ECF383C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF383A8);
  }

  return result;
}

unint64_t sub_1E3D92B78()
{
  result = qword_1ECF383C8;
  if (!qword_1ECF383C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38378);
    sub_1E3D92A34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF383C8);
  }

  return result;
}

void sub_1E3D92C04()
{
  OUTLINED_FUNCTION_21_5();
  v33 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF383E0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF383E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF383F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19_2();
  *v3 = sub_1E4201D44();
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF383F8);
  sub_1E3D92FB8();
  v10 = *(**(v0 + 16) + 392);
  if (v10())
  {
    type metadata accessor for FlexibleGridLayout();
    if (swift_dynamicCastClass())
    {
      goto LABEL_5;
    }
  }

  type metadata accessor for FlexibleGridLayout();
  sub_1E3B8B8C0();
LABEL_5:
  OUTLINED_FUNCTION_8();
  (*(v11 + 176))(&v34);

  if ((v35 & 1) == 0)
  {
    v12 = OUTLINED_FUNCTION_6();
    sub_1E3952BE0(v12, v13, v14, v15);
  }

  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_112_2();
  v16 = sub_1E3741EA0(v3, v2, &qword_1ECF383E0);
  v17 = (v2 + *(v7 + 36));
  v18 = v37;
  *v17 = v36;
  v17[1] = v18;
  v17[2] = v38;
  if ((v10)(v16))
  {
    type metadata accessor for FlexibleGridLayout();
    if (swift_dynamicCastClass())
    {
      goto LABEL_11;
    }
  }

  type metadata accessor for FlexibleGridLayout();
  sub_1E3B8B8C0();
LABEL_11:
  OUTLINED_FUNCTION_8();
  (*(v19 + 176))(v39);
  v20 = v39[0];
  v21 = v39[1];
  v22 = v39[2];
  v23 = v39[3];

  if (v40)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v24.n128_f64[0] = OUTLINED_FUNCTION_6();
    j_nullsub_1(v24, v25, v26, v27);
  }

  v28 = OUTLINED_FUNCTION_41_8();
  sub_1E3741EA0(v2, v1, &qword_1ECF383E8);
  v29 = v1 + *(v32 + 36);
  *v29 = v28;
  *(v29 + 8) = v20;
  *(v29 + 16) = v21;
  *(v29 + 24) = v22;
  *(v29 + 32) = v23;
  *(v29 + 40) = 0;
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_112_2();
  sub_1E3741EA0(v1, v33, &qword_1ECF383F0);
  v30 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38400) + 36));
  v31 = v42;
  *v30 = v41;
  v30[1] = v31;
  v30[2] = v43;
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3D92FB8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v55 = v3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF384D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v51 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF384D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v60 = v51 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_20_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF384E0);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v51 - v19;
  v21 = (*(*v2[2] + 904))(v18);
  if (v21)
  {
    memcpy(v74, v2 + 4, 0x41uLL);
    if (v74[6])
    {
      if ((v74[8] & 1) == 0)
      {
        sub_1E3741F40(v74, v73);
        v22 = OUTLINED_FUNCTION_18();
        sub_1E3E321AC(v21, v74, 0, v22 & 1, v73);
        v21 = v73[0];
        v58 = v73[2];
        v59 = v73[1];
        v56 = v73[3];
        v54 = v73[5];
        v69 = v73[6];
        v70 = v73[4];
        v67 = v73[8];
        v68 = v73[7];
        v65 = v73[10];
        v66 = v73[9];
        v63 = v73[12];
        v64 = v73[11];
        goto LABEL_8;
      }
    }

    else
    {
      sub_1E3A28718(v74);
    }

    v21 = 0;
  }

  v58 = 0;
  v59 = 0;
  v56 = 0;
  v69 = 0;
  v70 = 0;
  v54 = 0;
  v67 = 0;
  v68 = 0;
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
LABEL_8:
  OUTLINED_FUNCTION_8();
  v24 = (*(v23 + 872))();
  if (v24)
  {
    v27 = v24;
    *v6 = sub_1E4201D44();
    *(v6 + 1) = 0;
    v6[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38500);
    v71[0] = sub_1E3741880(v27);
    v51[1] = swift_getKeyPath();
    v28 = swift_allocObject();
    v53 = v16;
    v29 = v28;
    memcpy((v28 + 16), v2, 0x61uLL);
    v30 = swift_allocObject();
    v52 = v21;
    *(v30 + 16) = sub_1E3D94780;
    *(v30 + 24) = v29;
    sub_1E3D9478C(v2, v72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38508);
    sub_1E374AD40(&qword_1ECF28A48, &qword_1ECF28A38);
    sub_1E3D94B58(qword_1EE23BA70, type metadata accessor for ViewModel);
    sub_1E3D947C4();
    v21 = v52;
    v16 = v53;
    sub_1E4203B34();

    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v31, v32, v33);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_82();
    sub_1E374AD40(v34, v35);
    OUTLINED_FUNCTION_5_1();
    sub_1E4201F44();
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v36, v37);
  }

  else
  {
    nullsub_1(v25, v26);
    v38 = v61;
    (*(v10 + 16))(v60, v0, v61);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    sub_1E374AD40(v39, v40);
    OUTLINED_FUNCTION_5_1();
    sub_1E4201F44();
    (*(v10 + 8))(v0, v38);
  }

  v41 = v16;
  sub_1E3743538(v20, v16, &qword_1ECF384E0);
  v42 = v21;
  v44 = v58;
  v43 = v59;
  v71[0] = v21;
  v71[1] = v59;
  v45 = v56;
  v71[2] = v58;
  v71[3] = v56;
  v46 = v54;
  v47 = v55;
  v71[4] = v70;
  v71[5] = v54;
  v71[6] = v69;
  v71[7] = v68;
  v71[8] = v67;
  v71[9] = v66;
  v71[10] = v65;
  v71[11] = v64;
  v71[12] = v63;
  memcpy(v55, v71, 0x68uLL);
  v48 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF384F0) + 48);
  sub_1E3743538(v41, v48, &qword_1ECF384E0);
  sub_1E3743538(v71, v72, &qword_1ECF384F8);
  v49 = OUTLINED_FUNCTION_98();
  sub_1E325F69C(v49, v50);
  sub_1E325F69C(v41, &qword_1ECF384E0);
  v72[0] = v42;
  v72[1] = v43;
  v72[2] = v44;
  v72[3] = v45;
  v72[4] = v70;
  v72[5] = v46;
  v72[6] = v69;
  v72[7] = v68;
  v72[8] = v67;
  v72[9] = v66;
  v72[10] = v65;
  v72[11] = v64;
  v72[12] = v63;
  sub_1E325F69C(v72, &qword_1ECF384F8);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D93674@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38518);
  OUTLINED_FUNCTION_0_10();
  v57 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38520);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38528);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_20_1();
  if (sub_1E373F6E0() & 1) != 0 || (sub_1E373F6E0())
  {
    OUTLINED_FUNCTION_8();
    if ((*(v17 + 392))())
    {
      type metadata accessor for FlexibleGridLayout();
      if (swift_dynamicCastClass())
      {
LABEL_7:
        OUTLINED_FUNCTION_8();
        (*(v18 + 176))(v62);

        v19 = 0.0;
        if ((v62[4] & 1) == 0)
        {
          v20 = OUTLINED_FUNCTION_6();
          v19 = sub_1E3952BE0(v20, v21, v22, v23);
        }

        *&v24 = a2[3] - v19;
        v25 = sub_1E373F6E0();
        sub_1E383A2D0(v24, 0, v25 & 1, v63, 5.0, 6.0, 1.0, 4.0);
        v26 = *&v63[16];
        *v4 = *v63;
        *(v4 + 16) = v26;
        *(v4 + 32) = *&v63[32];
        *(v4 + 48) = v63[48];
        swift_storeEnumTagMultiPayload();
        sub_1E3741C5C();
        v27 = sub_1E3741E4C();
        __dst[0] = &type metadata for FlexibleGridRow;
        __dst[1] = v27;
        OUTLINED_FUNCTION_12_115();
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        __dst[0] = v59;
        __dst[1] = OpaqueTypeConformance2;
        OUTLINED_FUNCTION_12_18();
        swift_getOpaqueTypeConformance2();
        return sub_1E4201F44();
      }
    }

    type metadata accessor for FlexibleGridLayout();
    sub_1E3B8B8C0();
    goto LABEL_7;
  }

  v54 = v12;
  v55 = v10;
  v56 = a3;
  memcpy(__dst, a2 + 4, 0x41uLL);
  v30 = *(a2 + 2);
  v31 = *(*v30 + 904);

  v32 = sub_1E3741F40(__dst, v63);
  v33 = v31(v32);
  v34 = OUTLINED_FUNCTION_18();
  sub_1E3E321AC(a1, __dst, v33, v34 & 1, v62);
  v64 = *a2;
  v61 = *a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
  sub_1E4203914();
  v35 = *v63;
  v36 = *&v63[8];
  v37 = *&v63[16];
  v52 = sub_1E3741E4C();
  sub_1E3CEB108(v35, v36, &type metadata for FlexibleGridRow, v37);

  memcpy(v63, v62, sizeof(v63));
  v38 = sub_1E3741F9C(v63);
  if (!(*(*v30 + 392))(v38))
  {
    goto LABEL_13;
  }

  type metadata accessor for FlexibleGridLayout();
  if (!swift_dynamicCastClass())
  {

LABEL_13:
    type metadata accessor for FlexibleGridLayout();
    sub_1E3B8B8C0();
  }

  OUTLINED_FUNCTION_8();
  (*(v39 + 176))(v62);

  v40 = 0.0;
  if ((v62[4] & 1) == 0)
  {
    v41 = OUTLINED_FUNCTION_6();
    v40 = sub_1E3952BE0(v41, v42, v43, v44);
  }

  v45 = a2[3] - v40;
  v61 = v64;
  sub_1E42038F4();
  v46 = v60;
  *&v61 = &type metadata for FlexibleGridRow;
  *(&v61 + 1) = v52;
  OUTLINED_FUNCTION_12_115();
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v59;
  sub_1E3AEEBF8(a1, v59, v47, v45, v46);
  (*(v57 + 8))(v3, v48);
  v50 = v54;
  v49 = v55;
  (*(v54 + 16))(v4, v15, v55);
  swift_storeEnumTagMultiPayload();
  sub_1E3741C5C();
  *&v61 = v48;
  *(&v61 + 1) = v47;
  OUTLINED_FUNCTION_12_18();
  swift_getOpaqueTypeConformance2();
  sub_1E4201F44();
  return (*(v50 + 8))(v15, v49);
}

uint64_t sub_1E3D93D18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 50))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_1E3D93D58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E3D93DE0()
{
  sub_1E3D93ECC(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1E3D93ECC(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E3D93ECC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E3D93F38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1E3D93F78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3D93FE4()
{
  result = qword_1ECF38408;
  if (!qword_1ECF38408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38338);
    sub_1E3D9409C();
    sub_1E374AD40(&qword_1EE289E08, &qword_1ECF298B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38408);
  }

  return result;
}

unint64_t sub_1E3D9409C()
{
  result = qword_1ECF38410;
  if (!qword_1ECF38410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38328);
    sub_1E3D94264(&qword_1ECF38418, &unk_1ECF38420, &unk_1E42D06F0, sub_1E3D94180);
    sub_1E374AD40(&qword_1ECF38498, &qword_1ECF38330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38410);
  }

  return result;
}

unint64_t sub_1E3D94180()
{
  result = qword_1ECF38428;
  if (!qword_1ECF38428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38430);
    sub_1E3D94264(&qword_1ECF38438, &qword_1ECF38440, &unk_1E42D0700, sub_1E3D942DC);
    sub_1E374AD40(&qword_1ECF38488, &qword_1ECF38490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38428);
  }

  return result;
}

uint64_t sub_1E3D94264(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3D942DC()
{
  result = qword_1ECF38448;
  if (!qword_1ECF38448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38450);
    sub_1E3D94368();
    sub_1E3D94498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38448);
  }

  return result;
}

unint64_t sub_1E3D94368()
{
  result = qword_1ECF38458;
  if (!qword_1ECF38458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38460);
    sub_1E3D943F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38458);
  }

  return result;
}

unint64_t sub_1E3D943F4()
{
  result = qword_1ECF38468;
  if (!qword_1ECF38468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38470);
    swift_getOpaqueTypeConformance2();
    sub_1E3D913A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38468);
  }

  return result;
}

unint64_t sub_1E3D94498()
{
  result = qword_1ECF38478;
  if (!qword_1ECF38478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38480);
    sub_1E3D943F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38478);
  }

  return result;
}

unint64_t sub_1E3D94524()
{
  result = qword_1ECF384A0;
  if (!qword_1ECF384A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF384A8);
    sub_1E3D929A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF384A0);
  }

  return result;
}

unint64_t sub_1E3D945B0()
{
  result = qword_1ECF384B0;
  if (!qword_1ECF384B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38400);
    sub_1E3D9463C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF384B0);
  }

  return result;
}

unint64_t sub_1E3D9463C()
{
  result = qword_1ECF384B8;
  if (!qword_1ECF384B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF383F0);
    sub_1E3D946C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF384B8);
  }

  return result;
}

unint64_t sub_1E3D946C8()
{
  result = qword_1ECF384C0;
  if (!qword_1ECF384C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF383E8);
    sub_1E374AD40(&qword_1ECF384C8, &qword_1ECF383E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF384C0);
  }

  return result;
}

unint64_t sub_1E3D947C4()
{
  result = qword_1ECF38510;
  if (!qword_1ECF38510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38508);
    sub_1E3741C5C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38518);
    sub_1E3741E4C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38510);
  }

  return result;
}

uint64_t sub_1E3D948C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlexibleGridSubsetViewHeader();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3D94954(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E3D949B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E3D94A10()
{
  v0 = sub_1E4200EA4();
  OUTLINED_FUNCTION_17_2(v0);
  sub_1E4200E64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
  return sub_1E4203904();
}

uint64_t objectdestroy_32Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1E3D94B58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3D94BA0()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v2 = sub_1E3D21824();
    v1 = *v2;
    *(v0 + 112) = *v2;
    swift_retain_n();
  }

  return v1;
}

uint64_t sub_1E3D94C04()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    v2 = sub_1E3D21A0C();
    v1 = *v2;
    *(v0 + 120) = *v2;
    swift_retain_n();
  }

  return v1;
}

uint64_t sub_1E3D94C9C()
{
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v1 = sub_1E3C2F9A0();

  sub_1E3D94D68();
  v2 = (*(*v1 + 1160))(0x4010000000000000, 0);
  v3 = (*(*v1 + 1712))(v2);
  sub_1E3C37CBC(v3, 17);

  return v1;
}

uint64_t sub_1E3D94D68()
{
  v1 = (*v0 + 1712);
  v2 = *v1;
  v3 = (*v1)();
  (*(*v3 + 2056))(1, 0);

  (v2)(v4);
  OUTLINED_FUNCTION_2_1();
  (*(v5 + 2080))(0, 0);

  (v2)(v6);
  OUTLINED_FUNCTION_2_1();
  (*(v7 + 2104))(0, 0);

  v9 = (v2)(v8);
  v10 = *sub_1E3E5FDEC();
  v11 = *(*v9 + 680);
  v12 = v10;
  v11(v10);

  (v2)(v13);
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 1696))(22);

  (v2)(v15);
  OUTLINED_FUNCTION_2_1();
  (*(v16 + 1792))(10);
}

uint64_t sub_1E3D94FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for FrameModifier();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E4203DA4();
  v12 = v10;
  v13 = v11;
  v14 = (v2 + *(v6 + 28));
  v15 = *v14;
  if (*v14)
  {
    v29 = v11;
    v16 = v10;
    v17 = a1;
    v18 = v14[1];

    v19 = sub_1E42036E4();
    sub_1E3D9555C(v2, &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v21 = swift_allocObject();
    sub_1E3D955C0(v9, v21 + v20);
    v22 = swift_allocObject();
    *(v22 + 16) = v15;
    *(v22 + 24) = v18;
    a1 = v17;
    v12 = v16;
    v13 = v29;
    v23 = sub_1E3D9569C;
    v24 = sub_1E3D95624;
  }

  else
  {
    v19 = 0;
    v24 = 0;
    v21 = 0;
    v23 = 0;
    v22 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38588);
  OUTLINED_FUNCTION_2();
  (*(v25 + 16))(a2, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38590);
  v27 = (a2 + *(result + 36));
  *v27 = v19;
  v27[1] = v24;
  v27[2] = v21;
  v27[3] = v23;
  v27[4] = v22;
  v27[5] = v12;
  v27[6] = v13;
  return result;
}

uint64_t sub_1E3D951F8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a6;
  v22 = a3;
  v23 = a5;
  v9 = sub_1E4201274();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FrameModifier();
  OUTLINED_FUNCTION_2();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, v9, v15);
  v18 = 0;
  v19 = 0;
  if (a2)
  {

    v18 = v22;
    v19 = a4;
  }

  (*(v10 + 32))(v17, v12, v9);
  v20 = &v17[*(v13 + 20)];
  *v20 = v18;
  *(v20 + 1) = v19;
  MEMORY[0x1E690DE70](v17, v23, v13, v24);
  return sub_1E3D953E0(v17);
}

uint64_t type metadata accessor for FrameModifier()
{
  result = qword_1EE2A6CA8;
  if (!qword_1EE2A6CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3D953E0(uint64_t a1)
{
  v2 = type metadata accessor for FrameModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E3D9543C()
{
  result = qword_1EE2A6CC0[0];
  if (!qword_1EE2A6CC0[0])
  {
    type metadata accessor for FrameModifier();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A6CC0);
  }

  return result;
}

void sub_1E3D954BC()
{
  sub_1E4201274();
  if (v0 <= 0x3F)
  {
    sub_1E381ECE4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E3D9555C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FrameModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3D955C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FrameModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3D95624@<X0>(void *a1@<X8>)
{
  type metadata accessor for FrameModifier();
  result = sub_1E4200E74();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

unint64_t sub_1E3D956CC()
{
  result = qword_1ECF38598;
  if (!qword_1ECF38598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38590);
    sub_1E32752B0(&qword_1EE288908, &qword_1ECF38588);
    sub_1E32752B0(&qword_1ECF385A0, &qword_1ECF385A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38598);
  }

  return result;
}

uint64_t sub_1E3D957B0()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

uint64_t sub_1E3D957E4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 248) = a1;
}

uint64_t sub_1E3D9587C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

uint64_t sub_1E3D958B0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 256) = a1;
}

uint64_t sub_1E3D95948()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
  sub_1E3D965D4(&unk_1EE28A130);
  return sub_1E42006B4();
}

void *sub_1E3D959C4()
{
  (*(*v0 + 1104))();
  v1 = v0[47];
  v2 = v1;
  return v1;
}

uint64_t sub_1E3D95A18@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_18_93();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  if (*(v1 + 280) != 1)
  {
    goto LABEL_7;
  }

  v13 = *(v1 + 312);
  v14 = *(v1 + 320);
  __swift_project_boxed_opaque_existential_1((v1 + 288), v13);
  (*(*(v14 + 8) + 88))(v13);
  if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
  {
    sub_1E325F7FC(v2, &unk_1ECF28E20);
LABEL_7:
    v18 = 1;
    return __swift_storeEnumTagSinglePayload(a1, v18, 1, v6);
  }

  v15 = *(v8 + 32);
  v15(v12, v2, v6);
  v16 = objc_opt_self();
  v17 = sub_1E41FE514();
  LODWORD(v16) = [v16 shouldShowLabelForDownloadExpirationDate_];

  if (!v16)
  {
    (*(v8 + 8))(v12, v6);
    goto LABEL_7;
  }

  v15(a1, v12, v6);
  v18 = 0;
  return __swift_storeEnumTagSinglePayload(a1, v18, 1, v6);
}

uint64_t sub_1E3D95C60(void *a1, char a2, uint64_t a3)
{
  *(v3 + 368) = 0;
  *(v3 + 376) = 0;
  *(v3 + 248) = 0;
  *(v3 + 256) = 0;
  v7 = OBJC_IVAR____TtC8VideosUI19LibEpisodeViewModel__lastKnownExpirationDate;
  v8 = sub_1E41FE5D4();
  __swift_storeEnumTagSinglePayload(v3 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC8VideosUI19LibEpisodeViewModel_childrenUpdatedSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
  swift_allocObject();
  *(v3 + v9) = sub_1E4200544();
  sub_1E327F454(a1, v3 + 288);
  v10 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  OUTLINED_FUNCTION_3_178();
  *(v3 + 264) = (*(v11 + 16))(v10);
  *(v3 + 272) = v12;
  *(v3 + 280) = a2;
  sub_1E3D96570(a3, v3 + 328, &qword_1ECF2D640);

  sub_1E39C0300();
  v13 = OUTLINED_FUNCTION_38();
  sub_1E325F7FC(v13, &qword_1ECF2D640);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_1E3D95DB0()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 36, v0[39]);
  v2 = OUTLINED_FUNCTION_38();
  if ((v3(v2) & 1) == 0)
  {
    return 0;
  }

  v4 = v0[3];
  if (v4)
  {
    v5 = *(v1 + 16);
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = *(v1 + 24);
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  type metadata accessor for LibViewModel();

  MEMORY[0x1E69109E0](v5, v6);

  MEMORY[0x1E69109E0](0x79616C7265766F2DLL, 0xE800000000000000);

  v7 = sub_1E3B76C80(164, 0, 0xE000000000000000, v1, 0, 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  ViewModelKeys.rawValue.getter(7);
  *(inited + 32) = v9;
  *(inited + 40) = v10;
  v11 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0xD00000000000001BLL;
  *(inited + 56) = 0x80000001E4266270;
  *(inited + 80) = sub_1E3C7CCAC(0);
  *(inited + 88) = v12;
  *(inited + 120) = v11;
  *(inited + 96) = 0xD00000000000001ELL;
  *(inited + 104) = 0x80000001E4266290;
  v13 = sub_1E4205CB4();
  type metadata accessor for ImageViewModel();

  v14 = sub_1E3F5321C(39, v13, v7);
  if (v14)
  {
    v15 = v14;
    if (v7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1E4298880;
      *(v16 + 32) = v15;
      v17 = *(*v7 + 472);

      v17(v16);
    }
  }

  return v7;
}

uint64_t sub_1E3D96028()
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE90);
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v46 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  v18 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  v49 = (v22 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v46 - v25;
  sub_1E3D95A18(v17);
  OUTLINED_FUNCTION_63(v17);
  if (v36)
  {
    sub_1E325F7FC(v17, &unk_1ECF28E20);
    v27 = OBJC_IVAR____TtC8VideosUI19LibEpisodeViewModel__lastKnownExpirationDate;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E3D96570(&v0[v27], v8, &unk_1ECF28E20);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v18);
    result = sub_1E325F7FC(v8, &unk_1ECF28E20);
    if (EnumTagSinglePayload == 1)
    {
      return result;
    }

LABEL_14:
    v0[368] = 0;
    (*(*v0 + 1096))(result);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
    sub_1E3D965D4(&qword_1EE28A140);
    sub_1E4200624();
  }

  v46 = *(v20 + 32);
  v47 = v11;
  v46(v26, v17, v18);
  (*(v20 + 16))(v14, v26, v18);
  OUTLINED_FUNCTION_20_87();
  v30 = OBJC_IVAR____TtC8VideosUI19LibEpisodeViewModel__lastKnownExpirationDate;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v48 = v26;
  v31 = v20;
  v32 = *(v50 + 48);
  sub_1E3D96570(v14, v3, &unk_1ECF28E20);
  v50 = v0;
  v33 = &v0[v30];
  v34 = v3;
  v35 = v32;
  sub_1E3D96570(v33, v34 + v32, &unk_1ECF28E20);
  OUTLINED_FUNCTION_63(v34);
  if (v36)
  {
    sub_1E325F7FC(v14, &unk_1ECF28E20);
    (*(v31 + 8))(v48, v18);
    OUTLINED_FUNCTION_63(v34 + v32);
    if (v36)
    {
      return sub_1E325F7FC(v34, &unk_1ECF28E20);
    }

    goto LABEL_13;
  }

  v37 = v47;
  v38 = v48;
  v39 = v31;
  sub_1E3D96570(v34, v47, &unk_1ECF28E20);
  OUTLINED_FUNCTION_63(v34 + v35);
  if (v40)
  {
    sub_1E325F7FC(v14, &unk_1ECF28E20);
    v41 = *(v31 + 8);
    v41(v38, v18);
    v41(v37, v18);
LABEL_13:
    result = sub_1E325F7FC(v34, &qword_1ECF2CE90);
    v0 = v50;
    goto LABEL_14;
  }

  v42 = (v34 + v35);
  v43 = v49;
  v46(v49, v42, v18);
  sub_1E3D96624();
  v44 = sub_1E4205E84();
  v45 = *(v39 + 8);
  v45(v43, v18);
  sub_1E325F7FC(v14, &unk_1ECF28E20);
  v45(v38, v18);
  v45(v37, v18);
  result = sub_1E325F7FC(v34, &unk_1ECF28E20);
  v0 = v50;
  if ((v44 & 1) == 0)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1E3D96570(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_37_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1E3D965D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF326C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3D96624()
{
  result = qword_1EE28A458;
  if (!qword_1EE28A458)
  {
    sub_1E41FE5D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE28A458);
  }

  return result;
}

void sub_1E3D9667C()
{
  if ((*(v0 + 368) & 1) == 0)
  {
    v1 = v0;
    v2 = MEMORY[0x1E69E7CC0];
    v42 = MEMORY[0x1E69E7CC0];
    type metadata accessor for LibViewModel();
    v3 = *(v0 + 312);
    v4 = *(v0 + 320);
    __swift_project_boxed_opaque_existential_1(v1 + 36, v1[39]);
    OUTLINED_FUNCTION_14_127(*(v4 + 8), v35, v37, v38, v39, v40, v41, v42, v43, v44, v45, v3, v47);
    OUTLINED_FUNCTION_37_1();
    (*(v5 + 16))();
    v6 = sub_1E3B76F00(&v43, v0);
    v7 = __swift_destroy_boxed_opaque_existential_1(&v43);
    if (v6)
    {
      MEMORY[0x1E6910BF0](v7);
      OUTLINED_FUNCTION_1_214();
      if (v8)
      {
        OUTLINED_FUNCTION_2_180();
      }

      OUTLINED_FUNCTION_13_128();
      sub_1E4206324();
      v2 = v42;
    }

    type metadata accessor for TextViewModel();
    v9 = *(v0 + 312);
    OUTLINED_FUNCTION_21_86();
    OUTLINED_FUNCTION_3_178();
    OUTLINED_FUNCTION_33_24();
    v11 = v10(v9);
    v12 = MEMORY[0x1E69E6158];
    v46 = MEMORY[0x1E69E6158];
    v43 = v11;
    v44 = v13;

    if (OUTLINED_FUNCTION_17_109(23, &v43))
    {
      MEMORY[0x1E6910BF0]();
      OUTLINED_FUNCTION_1_214();
      if (v8)
      {
        OUTLINED_FUNCTION_2_180();
      }

      OUTLINED_FUNCTION_13_128();
      sub_1E4206324();
      v2 = v42;
    }

    if (sub_1E3D96AA8((v0 + 288)) || (type metadata accessor for LibEpisodeViewModel(), v14 = sub_1E3D97284((v0 + 288)), v46 = v12, v43 = v14, v44 = v15, , OUTLINED_FUNCTION_17_109(15, &v43)))
    {
      MEMORY[0x1E6910BF0]();
      OUTLINED_FUNCTION_1_214();
      if (v8)
      {
        OUTLINED_FUNCTION_2_180();
      }

      OUTLINED_FUNCTION_13_128();
      sub_1E4206324();
      v2 = v42;
    }

    v16 = *(v0 + 312);
    OUTLINED_FUNCTION_21_86();
    OUTLINED_FUNCTION_3_178();
    v18 = (*(v17 + 72))(v16);
    if (v19)
    {
      v40 = v12;
      v37 = v18;
      v38 = v19;
      sub_1E3751C10();
      v20 = *(v0 + 312);
      v21 = *(v0 + 320);
      OUTLINED_FUNCTION_21_86();
      OUTLINED_FUNCTION_14_127(*(v21 + 8), v36, v37, v38, v39, v12, v41, v42, v43, v44, v45, v20, v47);
      OUTLINED_FUNCTION_37_1();
      (*(v22 + 16))();
      v23 = sub_1E37FAFF8();

      if (sub_1E3C27638(9, &v37, v1, v23, 0))
      {
        MEMORY[0x1E6910BF0]();
        OUTLINED_FUNCTION_1_214();
        if (v8)
        {
          OUTLINED_FUNCTION_2_180();
        }

        OUTLINED_FUNCTION_13_128();
        sub_1E4206324();
        v2 = v42;
      }
    }

    type metadata accessor for LibDownloadButtonViewModel();
    v24 = v1[39];
    v25 = v1[40];
    __swift_project_boxed_opaque_existential_1(v1 + 36, v24);
    OUTLINED_FUNCTION_14_127(*(v25 + 8), v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v24, v47);
    OUTLINED_FUNCTION_37_1();
    (*(v26 + 16))();
    v27 = v1[39];
    OUTLINED_FUNCTION_21_86();
    OUTLINED_FUNCTION_3_178();
    v29 = (*(v28 + 16))(v27);
    v31 = v30;
    sub_1E3D96570((v1 + 41), &v37, &qword_1ECF2D640);

    if (sub_1E38F5DAC(&v43, v29, v31, v1, &v37))
    {
      v32 = *(*v1 + 944);

      v34 = v32(v33);
      MEMORY[0x1E6910BF0](v34);
      OUTLINED_FUNCTION_1_214();
      if (v8)
      {
        OUTLINED_FUNCTION_2_180();
      }

      OUTLINED_FUNCTION_13_128();
      sub_1E4206324();
      v2 = v42;
    }

    (*(*v1 + 472))(v2);
    *(v1 + 368) = 1;
  }
}

uint64_t sub_1E3D96AA8(void *a1)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v66 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v62 - v15;
  v17 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v68 = v1;
  sub_1E3D95A18(v16);
  OUTLINED_FUNCTION_63(v16);
  if (v24)
  {
    sub_1E325F7FC(v16, &unk_1ECF28E20);
    return 0;
  }

  else
  {
    v65 = v19;
    v26 = *(v19 + 32);
    v67 = v23;
    v26(v23, v16, v17);
    v28 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v28);
    v29 = (*(*(v27 + 8) + 80))(v28);
    v30 = v29;
    if ((v29 & 0x100000000) != 0)
    {
      v31 = sub_1E41A3110();
      v32 = v66;
      (*(v66 + 16))(v8, v31, v3);
      sub_1E327F454(a1, v70);
      v33 = sub_1E41FFC94();
      v34 = sub_1E42067F4();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v69[0] = v64;
        *v35 = 136315138;
        v63 = v34;
        __swift_project_boxed_opaque_existential_1(v70, v71);
        v36 = sub_1E4207944();
        v38 = v37;
        __swift_destroy_boxed_opaque_existential_1(v70);
        v39 = sub_1E3270FC8(v36, v38, v69);

        *(v35 + 4) = v39;
        _os_log_impl(&dword_1E323F000, v33, v63, "Downloaded episode %s should have adam ID", v35, 0xCu);
        v40 = v64;
        __swift_destroy_boxed_opaque_existential_1(v64);
        MEMORY[0x1E69143B0](v40, -1, -1);
        MEMORY[0x1E69143B0](v35, -1, -1);

        (*(v32 + 8))(v8, v3);
      }

      else
      {

        (*(v32 + 8))(v8, v3);
        __swift_destroy_boxed_opaque_existential_1(v70);
      }

      v30 = 0;
    }

    v41 = v65;
    (*(v65 + 16))(v13);
    OUTLINED_FUNCTION_20_87();
    v42 = OBJC_IVAR____TtC8VideosUI19LibEpisodeViewModel__lastKnownExpirationDate;
    v43 = v68;
    swift_beginAccess();
    sub_1E32ABDC0(v13, v43 + v42);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4299720;
    ViewModelKeys.rawValue.getter(7);
    *(inited + 32) = v45;
    *(inited + 40) = v46;
    *(inited + 72) = MEMORY[0x1E69E72F0];
    *(inited + 48) = v30;
    ViewModelKeys.rawValue.getter(11);
    *(inited + 80) = v47;
    *(inited + 88) = v48;
    v49 = swift_initStackObject();
    *(v49 + 16) = xmmword_1E4297BD0;
    sub_1E3854630(1);
    *(v49 + 32) = v50;
    *(v49 + 40) = v51;
    sub_1E41FE574();
    *(v49 + 72) = MEMORY[0x1E69E63B0];
    *(v49 + 48) = v52;
    sub_1E3854630(0);
    *(v49 + 80) = v53;
    *(v49 + 88) = v54;
    v55 = MEMORY[0x1E69E6370];
    *(v49 + 120) = MEMORY[0x1E69E6370];
    *(v49 + 96) = 1;
    sub_1E3854630(2);
    *(v49 + 128) = v56;
    *(v49 + 136) = v57;
    *(v49 + 168) = v55;
    *(v49 + 144) = 1;
    v58 = sub_1E4205CB4();
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    *(inited + 120) = v59;
    *(inited + 96) = v58;
    v60 = sub_1E4205CB4();
    type metadata accessor for TextViewModel();
    v71 = v59;
    v70[0] = v60;

    v25 = sub_1E3C27638(15, v70, v43, 0, 0);
    (*(v41 + 8))(v67, v17);
  }

  return v25;
}

void sub_1E3D97020()
{
  if (!v0[47])
  {
    v1 = v0;
    sub_1E3751C10();
    v2 = v0[39];
    v3 = v0[40];
    __swift_project_boxed_opaque_existential_1(v1 + 36, v1[39]);
    v21[3] = v2;
    v21[4] = *(*(v3 + 8) + 8);
    __swift_allocate_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_37_1();
    (*(v4 + 16))();
    v5 = sub_1E37FAFF8();
    v6 = v0[47];
    v1[47] = v5;
    v7 = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BD0;
    *(inited + 32) = sub_1E4205F14();
    *(inited + 40) = v9;
    *(inited + 48) = sub_1E4205F14();
    *(inited + 56) = v10;
    *(inited + 64) = sub_1E4205F14();
    *(inited + 72) = v11;
    *(inited + 80) = sub_1E4205F14();
    *(inited + 88) = v12;
    *(inited + 96) = sub_1E4205F14();
    *(inited + 104) = v13;
    *(inited + 112) = sub_1E4205F14();
    *(inited + 120) = v14;
    v15 = sub_1E4205CB4();
    type metadata accessor for Metrics();
    v16 = sub_1E3BA54D0();
    v17 = (*(*v1 + 584))(v16);
    v18 = (*(*v1 + 576))(v17);
    if (v18)
    {
      v19 = v18;
      v20 = sub_1E3797720(v15);

      (*(*v19 + 184))(v20);
    }

    else
    {
    }
  }
}

id sub_1E3D97284(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_18_93();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = (v10 - v9);
  v51 = 0;
  v52 = 0xE000000000000000;
  if ([objc_opt_self() isTV] && (TVAppFeature.isEnabled.getter(10) & 1) != 0)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    OUTLINED_FUNCTION_3_178();
    v12 = OUTLINED_FUNCTION_38();
    return v13(v12);
  }

  v50 = v11;
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_8_140(result);
  v16 = v15;

  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  (*(v18 + 24))(v17, v18);
  v19 = v7;
  if (v20)
  {
    v21 = 0;
    v22 = 0xE000000000000000;
  }

  else
  {
    v21 = sub_1E4207944();
    v22 = v23;
  }

  v25 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  OUTLINED_FUNCTION_33_24();
  v26(v25, v24);
  if ((v27 & 1) == 0)
  {

    v21 = sub_1E4206584();
    v22 = v28;
  }

  v29 = v19;
  v30 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v30 = v21 & 0xFFFFFFFFFFFFLL;
  }

  v31 = v5;
  if (!v30)
  {

    v16 = 0;
LABEL_17:
    v34 = 0xE000000000000000;
    goto LABEL_18;
  }

  if (!v16)
  {

    goto LABEL_17;
  }

  sub_1E32822E0();
  OUTLINED_FUNCTION_25();
  v32 = sub_1E42071F4();
  v34 = v33;

  v51 = v32;
  v52 = v34;
  v16 = v32 & 0xFFFFFFFFFFFFLL;
LABEL_18:
  v36 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v36);
  (*(*(*(v35 + 8) + 8) + 120))(v36);
  if (__swift_getEnumTagSinglePayload(v1, 1, v31) == 1)
  {
    sub_1E325F7FC(v1, &unk_1ECF28E20);
  }

  else
  {
    (*(v29 + 32))(v50, v1, v31);
    v37 = HIBYTE(v34) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v37 = v16;
    }

    if (v37)
    {
      OUTLINED_FUNCTION_19_102();
    }

    v38 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    [v38 setTimeStyle_];
    [v38 setDateStyle_];
    v39 = sub_1E41FE514();
    v40 = [v38 stringFromDate_];

    v41 = sub_1E4205F14();
    v43 = v42;

    MEMORY[0x1E69109E0](v41, v43);

    (*(v29 + 8))(v50, v31);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v44 = OUTLINED_FUNCTION_38();
  v46 = v45(v44);
  v48 = v47;
  v49 = v51 & 0xFFFFFFFFFFFFLL;
  if ((v52 & 0x2000000000000000) != 0)
  {
    v49 = HIBYTE(v52) & 0xF;
  }

  if (v49)
  {
    OUTLINED_FUNCTION_19_102();
  }

  MEMORY[0x1E69109E0](v46, v48);

  return v51;
}

uint64_t sub_1E3D97798()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 288);
  sub_1E325F7FC(v0 + 328, &qword_1ECF2D640);

  sub_1E325F7FC(v0 + OBJC_IVAR____TtC8VideosUI19LibEpisodeViewModel__lastKnownExpirationDate, &unk_1ECF28E20);
}

uint64_t sub_1E3D97830()
{
  v0 = ViewModel.deinit();

  __swift_destroy_boxed_opaque_existential_1(v0 + 288);
  sub_1E325F7FC(v0 + 328, &qword_1ECF2D640);

  sub_1E325F7FC(v0 + OBJC_IVAR____TtC8VideosUI19LibEpisodeViewModel__lastKnownExpirationDate, &unk_1ECF28E20);

  return v0;
}

uint64_t sub_1E3D978C8()
{
  v0 = sub_1E3D97830();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for LibEpisodeViewModel()
{
  result = qword_1EE29EE50;
  if (!qword_1EE29EE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3D97A80()
{
  sub_1E3273C28();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E3D97B54()
{
  OUTLINED_FUNCTION_15_1();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

void sub_1E3D97B98(uint64_t a1, uint64_t a2, double a3)
{
  v6 = fabs(a3) < sub_1E3D97C6C(&selRef_focusVelocityThreshold);
  v7 = *(v3 + 16);
  v8 = sub_1E3D97C6C(&selRef_focusDebounceInterval);
  sub_1E32ADE38();
  v9 = sub_1E4206A04();
  (*(*v7 + 112))(v6, v9, a1, a2, v8);
}

double sub_1E3D97C6C(SEL *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 libConfig];

  [v3 *a1];
  v5 = v4;

  return v5;
}

uint64_t sub_1E3D97CF4()
{
  OUTLINED_FUNCTION_15_1();
  v0 = swift_allocObject();
  sub_1E3D97D24();
  return v0;
}

uint64_t sub_1E3D97D24()
{
  type metadata accessor for Debouncer();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_1E3D97D54(char a1, uint64_t a2, uint64_t (*a3)(uint64_t, __n128), uint64_t a4)
{
  v21[1] = a2;
  v8 = sub_1E4204014();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  v15 = sub_1E4203FC4();
  v17 = MEMORY[0x1EEE9AC00](v15);
  v22 = v4;
  if (*(v4 + 16))
  {

    sub_1E4204034();
  }

  if (a1)
  {
    return a3(v16, v17);
  }

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E378AEA4;
  aBlock[3] = &block_descriptor_108;
  _Block_copy(aBlock);
  v23 = MEMORY[0x1E69E7CC0];
  sub_1E37E7A8C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E378AD28();
  sub_1E42072E4();
  sub_1E4204054();
  swift_allocObject();
  v19 = sub_1E4204024();

  sub_1E4204004();
  sub_1E4204074();
  v20 = *(v9 + 8);
  v20(v11, v8);
  sub_1E4206994();
  v20(v14, v8);
  *(v22 + 16) = v19;
}

char *sub_1E3D98030()
{
  type metadata accessor for VerticalStackView();
  v1 = *v0;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  v9 = 2;
  v11 = 0;
  v10 = 0;
  v2 = sub_1E3DA6C4C(v1, 0, v7);
  if (!v2)
  {
    v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  v3 = v2;
  v4 = *(v0 + 24);
  v5 = OBJC_IVAR____TtC8VideosUI17VerticalStackView_isPartiallyExpanded;
  swift_beginAccess();
  v3[v5] = v4;
  return v3;
}

uint64_t sub_1E3D980E4(void *a1)
{
  v2 = v1;
  v4 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 vui:*(v2 + 8) sizeThatFits:*(v2 + 16)];
  v16 = v15;
  v18 = v17;
  v19 = sub_1E3DA6ACC(0.0);
  if (*(v2 + 32))
  {
    v20 = v19;
    sub_1E3DAF3BC(v16, v18, 0);
    sub_1E3DAF30C(*&v20 & 0x7FFFFFFFFFFFFFFFLL, 0);
  }

  sub_1E32ADE38();
  v21 = sub_1E4206A04();
  v22 = swift_allocObject();
  v23 = *(v2 + 16);
  *(v22 + 16) = *v2;
  *(v22 + 32) = v23;
  *(v22 + 48) = *(v2 + 32);
  aBlock[4] = sub_1E3D983C8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E378AEA4;
  aBlock[3] = &block_descriptor_109;
  v24 = _Block_copy(aBlock);

  sub_1E4203FE4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E37E7A8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E378AD28();
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v14, v9, v24);
  _Block_release(v24);

  (*(v6 + 8))(v9, v4);
  return (*(v11 + 8))(v14, v27);
}

void sub_1E3D983C8()
{
  if (*(v0 + 48))
  {
    sub_1E3DAF470();
  }
}

uint64_t sub_1E3D983F0@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = result;
  *(a4 + 8) = a5;
  *(a4 + 16) = a6;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  return result;
}

unint64_t sub_1E3D9840C(uint64_t a1)
{
  result = sub_1E3D98434();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3D98434()
{
  result = qword_1ECF385B0;
  if (!qword_1ECF385B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF385B0);
  }

  return result;
}

unint64_t sub_1E3D9848C()
{
  result = qword_1ECF385B8;
  if (!qword_1ECF385B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF385B8);
  }

  return result;
}

uint64_t sub_1E3D984E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E3D98728();

  return sub_1E3E36D18(a1, a2, v4);
}

uint64_t sub_1E3D9852C()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3D98728();
  v0 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v0, v1, v2, v3);
}

uint64_t sub_1E3D98600()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3D98434();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v0);
}

uint64_t sub_1E3D98654()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3D98434();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v0);
}

void sub_1E3D986A8()
{
  sub_1E3D98434();
  sub_1E4201F04();
  __break(1u);
}

uint64_t sub_1E3D986D0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1E3D98728()
{
  result = qword_1ECF385C0;
  if (!qword_1ECF385C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF385C0);
  }

  return result;
}

uint64_t sub_1E3D9877C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E3D9D2CC();

  return sub_1E3E36CBC(a1, a2, v4);
}

uint64_t sub_1E3D987C8()
{
  OUTLINED_FUNCTION_31_58();
  sub_1E3D9D2CC();
  v0 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36CD0(v0, v1, v2, v3);
}

uint64_t sub_1E3D988B4()
{
  OUTLINED_FUNCTION_31_58();
  sub_1E3D9CFF0();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDB778](v0);
}

uint64_t sub_1E3D9890C()
{
  OUTLINED_FUNCTION_31_58();
  sub_1E3D9CFF0();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDB740](v0);
}

void sub_1E3D98964()
{
  sub_1E3D9CFF0();
  sub_1E42025D4();
  __break(1u);
}

uint64_t sub_1E3D9898C()
{
  if ([objc_opt_self() isSUIEnabled])
  {
    return 1;
  }

  else
  {
    return *(v0 + 40);
  }
}

uint64_t sub_1E3D989C8(void *a1)
{
  v2 = sub_1E3827728([a1 uiConfiguration], &selRef_viewControllerIdentifier);
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v6 = sub_1E39A4DDC(a1, &selRef_controllerRef);
  v8 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
  }

  else
  {
    v9 = v6;
    v10 = v7;

    if (v10)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1E3D98A84(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_31_58();
  v6 = swift_allocObject();
  sub_1E3D98AD8(v4, v3, a3);
  return v6;
}

uint64_t sub_1E3D98AD8(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_31_58();
  swift_unknownObjectWeakInit();
  *(v3 + 48) = 0;
  *(v3 + 16) = v5;
  *(v3 + 24) = v4;
  *(v3 + 40) = a3;
  return v3;
}

uint64_t sub_1E3D98B64()
{

  MEMORY[0x1E69144A0](v0 + 32);

  return v0;
}

uint64_t sub_1E3D98B9C()
{
  sub_1E3D98B64();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1E3D98BF4(uint64_t a1, uint64_t a2, char a3, char a4)
{
  OUTLINED_FUNCTION_31_58();
  v9 = v8;
  type metadata accessor for InternalDocumentModel();
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v4;
  *v9 = v10;
  *(v9 + 8) = a3;
  *(v9 + 9) = a4;
}

uint64_t sub_1E3D98C6C(uint64_t a1, uint64_t a2)
{
  sub_1E3D9C464();
  v4 = *(*(a2 + 16) + 16);
  v5 = *(*(a1 + 16) + 16);
  v6 = v4;
  OUTLINED_FUNCTION_75();
  v7 = sub_1E4206F64();

  v8 = *(a1 + 24);
  if (v8)
  {
    v9 = sub_1E3D98D3C(v8);
    if (v9)
    {
      v10 = v9;
      if ((v7 & 1) != 0 && (v11 = *(a2 + 24)) != 0 && (v12 = sub_1E3D98D3C(v11)) != 0)
      {
        v7 = sub_1E3D9C074(v10, v12);
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7 & 1;
}

uint64_t sub_1E3D98D3C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF385C8);
    v2 = sub_1E4207744();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_12:
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1E374E74C(*(a1 + 48) + 40 * v11, __src);
    sub_1E328438C(*(a1 + 56) + 32 * v11, &__src[2] + 8);
    memcpy(__dst, __src, sizeof(__dst));
    v28 = __src[0];
    v29 = __src[1];
    v30 = *&__src[2];
    sub_1E329504C(&__dst[5], &v27);
    if (!swift_dynamicCast())
    {
      break;
    }

    v34 = v24;
    v35 = v25;
    v36 = v26;
    v37 = v28;
    v38 = v29;
    v39 = v30;
    v40 = v24;
    v41 = v25;
    v42 = v26;
    v31 = v28;
    v32 = v29;
    v33 = v30;
    v28 = v24;
    v29 = v25;
    v30 = v26;
    result = sub_1E42073F4();
    v12 = -1 << *(v2 + 32);
    v13 = result & ~v12;
    v14 = v13 >> 6;
    if (((-1 << v13) & ~*(v7 + 8 * (v13 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v12) >> 6;
      while (++v14 != v17 || (v16 & 1) == 0)
      {
        v18 = v14 == v17;
        if (v14 == v17)
        {
          v14 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v14);
        if (v19 != -1)
        {
          v15 = __clz(__rbit64(~v19)) + (v14 << 6);
          goto LABEL_22;
        }
      }

LABEL_28:
      __break(1u);
      return result;
    }

    v15 = __clz(__rbit64((-1 << v13) & ~*(v7 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
    v5 &= v5 - 1;
    *(v7 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    v20 = 5 * v15;
    v21 = *(v2 + 48) + 8 * v20;
    v22 = v32;
    *v21 = v31;
    *(v21 + 16) = v22;
    *(v21 + 32) = v33;
    v23 = *(v2 + 56) + 8 * v20;
    *v23 = v28;
    *(v23 + 16) = v29;
    *(v23 + 32) = v30;
    ++*(v2 + 16);
    if (!v5)
    {
LABEL_8:
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v10 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v10);
        ++v9;
        if (v5)
        {
          v9 = v10;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_28;
    }
  }

  sub_1E375D84C(&v28);

  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_1E325F6F0(&v24, &qword_1ECF40720);

  return 0;
}

uint64_t sub_1E3D99078()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1E3D990C4@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v353 = a2;
  v373 = a3;
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF385D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v372 = v5;
  v358 = type metadata accessor for AccountSettings();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_3();
  v354 = v7;
  v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF385D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v357 = v9;
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF385E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v359 = v11;
  type metadata accessor for LibShowDetailsView();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9_3();
  v360 = v13;
  v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF385E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v368 = v15;
  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF385F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v363 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF385F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v352[-v19];
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38600);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v352[-v22];
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38608);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44();
  v365 = v25;
  v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38610);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44();
  v369 = v27;
  v28 = *(a1 + 16);
  v29 = *(v28 + 16);
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  v355 = a1;
  v375 = *(a1 + 24);

  v30 = v29;
  v31 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
  v32 = *v31;
  v376 = v30;
  v33 = sub_1E3D510B4(v30);

  if ((sub_1E3D9898C() & 1) == 0 && (v33 & 1) == 0)
  {
    type metadata accessor for UIFactory();
    v34 = v376;
    v35 = [v376 documentRef];
    sub_1E4205F14();

    v36 = OUTLINED_FUNCTION_75();
    v38 = sub_1E3D50E3C(v36, v37);

    if ((v38 & 1) == 0)
    {
      v98 = *v31;
      v42 = Strong;
      sub_1E3D50594();
      v100 = v99;

      if (!v100)
      {
        sub_1E3D9C574(v385);
        memcpy(v384, v385, 0xDDuLL);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38618);
        sub_1E3D9C580();
        sub_1E4201F44();
LABEL_87:
        memcpy(v372, v386, 0xDDuLL);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_13_129();
        sub_1E379D7E4(v188, v189, v190);
        OUTLINED_FUNCTION_13_129();
        sub_1E379D7E4(v191, v192, v193);
        v194 = OUTLINED_FUNCTION_57();
        __swift_instantiateConcreteTypeFromMangledNameV2(v194);
        sub_1E3D9C8B0();
        OUTLINED_FUNCTION_6_158();
        OUTLINED_FUNCTION_82();
        sub_1E3D9CCC8(v195, v196, v197, v198);
        sub_1E4201F44();

        OUTLINED_FUNCTION_82();
        sub_1E325F6F0(v199, v200);
        goto LABEL_88;
      }

      v101 = [objc_allocWithZone(VUIAppNavigationController) initWithRootViewController_];
      *&v378[0] = v101;
      sub_1E3D9CD4C(v378);
      memcpy(v386, v378, 0xDCuLL);
      v102 = v101;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38630);
      sub_1E3D9C60C();
      sub_1E3D9C85C();
      OUTLINED_FUNCTION_27_68();
      sub_1E4201F44();
      v103 = OUTLINED_FUNCTION_35_56();
      memcpy(v103, v104, 0xDCuLL);
      memcpy(v385, v377, 0xDCuLL);
      sub_1E3D9CD58(v385);
      v105 = OUTLINED_FUNCTION_20_88();
      memcpy(v105, v106, 0xDDuLL);
      sub_1E379D7E4(v379, v384, &qword_1ECF38618);
      v107 = OUTLINED_FUNCTION_75();
      __swift_instantiateConcreteTypeFromMangledNameV2(v107);
      sub_1E3D9C580();
      sub_1E4201F44();

      sub_1E325F6F0(v379, &qword_1ECF38618);
LABEL_86:
      memcpy(v386, v384, 0xDDuLL);
      goto LABEL_87;
    }

    v39 = [v34 &selRef_excludedCanonicals + 5];
    sub_1E4205F14();
    OUTLINED_FUNCTION_152();

    sub_1E4205F14();
    OUTLINED_FUNCTION_41_53();
    v41 = v41 && v38 == v40;
    v42 = Strong;
    if (v41)
    {
    }

    else
    {
      OUTLINED_FUNCTION_3_179();
      OUTLINED_FUNCTION_48_37();
      OUTLINED_FUNCTION_47_44();

      if ((v35 & 1) == 0)
      {
        v43 = [v34 &selRef_excludedCanonicals + 5];
        sub_1E4205F14();
        OUTLINED_FUNCTION_152();

        sub_1E4205F14();
        OUTLINED_FUNCTION_41_53();
        if (v41 && v38 == v44)
        {
        }

        else
        {
          OUTLINED_FUNCTION_3_179();
          OUTLINED_FUNCTION_48_37();
          OUTLINED_FUNCTION_47_44();

          if ((v35 & 1) == 0)
          {
            v46 = [v34 &selRef_excludedCanonicals + 5];
            sub_1E4205F14();
            OUTLINED_FUNCTION_152();

            sub_1E4205F14();
            OUTLINED_FUNCTION_41_53();
            if (v41 && v38 == v47)
            {
            }

            else
            {
              OUTLINED_FUNCTION_3_179();
              OUTLINED_FUNCTION_48_37();
              OUTLINED_FUNCTION_47_44();

              if ((v35 & 1) == 0)
              {
                sub_1E3D9CE84(v379);
                v49 = OUTLINED_FUNCTION_19_103();
                memcpy(v49, v50, 0x9AuLL);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38690);
                sub_1E3D9C82C();
                sub_1E4201F44();
                v51 = OUTLINED_FUNCTION_40_53();
                memcpy(v51, v52, 0x9AuLL);
                sub_1E3D9CE90(v385);
                memcpy(v384, v385, 0xDBuLL);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38640);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38680);
                sub_1E3D9C6C4();
                OUTLINED_FUNCTION_4_188();
                OUTLINED_FUNCTION_55_0();
                sub_1E3D9CCC8(v53, v54, v55, v56);
                OUTLINED_FUNCTION_52_0();
                sub_1E4201F44();
LABEL_85:
                memcpy(v377, v386, 0xDBuLL);
                v177 = OUTLINED_FUNCTION_35_56();
                memcpy(v177, v178, 0xDBuLL);
                sub_1E3D9CD60(v379);
                v179 = OUTLINED_FUNCTION_19_103();
                memcpy(v179, v180, 0xDCuLL);
                OUTLINED_FUNCTION_10_121();
                v181 = OUTLINED_FUNCTION_57();
                __swift_instantiateConcreteTypeFromMangledNameV2(v181);
                sub_1E3D9C60C();
                sub_1E3D9C85C();
                OUTLINED_FUNCTION_27_68();
                sub_1E4201F44();
                v182 = OUTLINED_FUNCTION_40_53();
                memcpy(v182, v183, 0xDCuLL);
                sub_1E3D9CD58(v385);
                v184 = OUTLINED_FUNCTION_20_88();
                memcpy(v184, v185, 0xDDuLL);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38618);
                sub_1E3D9C580();
                OUTLINED_FUNCTION_27_68();
                sub_1E4201F44();
                OUTLINED_FUNCTION_82();
                sub_1E325F6F0(v186, v187);
                goto LABEL_86;
              }
            }

            v204 = [v34 contextData];
            if (!v204)
            {
              goto LABEL_171;
            }

            v205 = sub_1E3751A20(v204);
            if (!v205)
            {
              goto LABEL_171;
            }

            sub_1E374BD08(v205);
            OUTLINED_FUNCTION_38();

            if (!v38)
            {
              goto LABEL_171;
            }

            sub_1E37FAF8C();

            OUTLINED_FUNCTION_24_79();

            if (*(&v386[1] + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
              OUTLINED_FUNCTION_26_84();
              if (OUTLINED_FUNCTION_49_46())
              {
                v206 = *&v385[0];
                sub_1E37FAFC8();

                v207 = OUTLINED_FUNCTION_57();
                sub_1E3277E60(v207, v208, v206, v209);

                if (*(&v386[1] + 1))
                {
                  OUTLINED_FUNCTION_26_84();
                  if (OUTLINED_FUNCTION_49_46())
                  {
                    v210 = v385[0];
                    v211 = sub_1E3B7B1C8();
                    v212 = *(**v211 + 408);

                    v214 = v212(v213);

                    if (v214)
                    {
                      v215 = sub_1E37FAF98();
                      v216 = *v215;
                      v217 = v215[1];

                      sub_1E3277E60(v216, v217, v206, v385);

                      if (*(&v385[1] + 1))
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780);
                        OUTLINED_FUNCTION_20_88();
                        if (OUTLINED_FUNCTION_49_46())
                        {
                          if (*(&v386[1] + 1))
                          {
                            v218 = OUTLINED_FUNCTION_19_103();
                            sub_1E3251BE8(v218, v219);
                            v220 = sub_1E37FAFA4();
                            v221 = *v220;
                            v222 = v220[1];

                            sub_1E3277E60(v221, v222, v206, v378);

                            if (*(&v378[1] + 1))
                            {
                              if (OUTLINED_FUNCTION_49_46())
                              {
                                v223 = v388[0];
                                v224 = *v211;
                                sub_1E327F454(v379, v386);
                                v225 = *(*(v355 + 16) + 24);

                                sub_1E3B23ED0(v224, v210, *(&v210 + 1), v214, v386, v223, v225, v387);
                                type metadata accessor for Router();
                                OUTLINED_FUNCTION_38();
                                v226 = sub_1E38D1D7C();
                                OUTLINED_FUNCTION_2_181();
                                sub_1E3D9D0B0(v227, v228);
                                OUTLINED_FUNCTION_20_2();
                                v229 = sub_1E4200504();
                                v230 = *sub_1E3CD9D88();
                                type metadata accessor for AppEnvironment();
                                OUTLINED_FUNCTION_1_215();
                                sub_1E3D9D0B0(v231, v232);

                                v233 = sub_1E4200504();
                                memcpy(v386, v387, 0x78uLL);
                                *(&v386[7] + 1) = v229;
                                *&v386[8] = v226;
                                *(&v386[8] + 1) = v233;
                                *&v386[9] = v230;
                                sub_1E3D9CEB0(v386);
                                memcpy(v384, v386, 0x99uLL);
                                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A7F0);
                                sub_1E37DA968();
                                sub_1E4201F44();

                                __swift_destroy_boxed_opaque_existential_1(v379);
                                memcpy(v377, v385, 0x99uLL);
                                v42 = Strong;
                                v34 = v376;
LABEL_172:
                                v345 = OUTLINED_FUNCTION_35_56();
                                memcpy(v345, v346, 0x99uLL);
                                sub_1E3D9CEA8(v379);
                                v347 = OUTLINED_FUNCTION_19_103();
                                memcpy(v347, v348, 0x9AuLL);
                                OUTLINED_FUNCTION_10_121();
                                v349 = OUTLINED_FUNCTION_57();
                                __swift_instantiateConcreteTypeFromMangledNameV2(v349);
                                sub_1E3D9C82C();
                                OUTLINED_FUNCTION_27_68();
                                sub_1E4201F44();
                                v350 = OUTLINED_FUNCTION_40_53();
                                memcpy(v350, v351, 0x9AuLL);
                                sub_1E3D9CE90(v385);
                                goto LABEL_84;
                              }

                              __swift_destroy_boxed_opaque_existential_1(v379);

                              goto LABEL_180;
                            }

LABEL_178:
                            __swift_destroy_boxed_opaque_existential_1(v379);

                            sub_1E325F6F0(v378, &unk_1ECF296E0);
LABEL_180:
                            v42 = Strong;
                            goto LABEL_170;
                          }
                        }

                        else
                        {
                          *&v386[2] = 0;
                          OUTLINED_FUNCTION_14_128();
                        }

                        v42 = Strong;
                      }

                      else
                      {

                        sub_1E325F6F0(v385, &unk_1ECF296E0);
                        memset(v386, 0, 40);
                      }

                      v34 = v376;
                      v342 = &qword_1ECF2A778;
LABEL_163:
                      sub_1E325F6F0(v386, v342);
LABEL_171:
                      sub_1E3D9CE9C(v386);
                      v343 = OUTLINED_FUNCTION_26_84();
                      memcpy(v343, v344, 0x99uLL);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A7F0);
                      sub_1E37DA968();
                      sub_1E4201F44();
                      goto LABEL_172;
                    }
                  }
                }

                else
                {

                  sub_1E325F6F0(v386, &unk_1ECF296E0);
                }
              }

LABEL_170:
              v34 = v376;
              goto LABEL_171;
            }

            v342 = &unk_1ECF296E0;
            goto LABEL_163;
          }
        }

        v128 = [v34 contextData];
        if (v128)
        {
          v129 = sub_1E3751A20(v128);
          if (v129)
          {
            sub_1E374BD08(v129);
            OUTLINED_FUNCTION_38();

            if (v38)
            {
              sub_1E37FAFC8();

              OUTLINED_FUNCTION_24_79();

              if (*(&v386[1] + 1))
              {
                OUTLINED_FUNCTION_26_84();
                if (swift_dynamicCast())
                {
                  v130 = v385[0];
                  v375 = sub_1E3B7B1C8();
                  v131 = *(**v375 + 672);

                  v133 = v131(v132);

                  v134 = 0;
                  v135 = *(v133 + 16);
                  for (i = v133 + 32; ; i += 40)
                  {
                    if (v135 == v134)
                    {

                      goto LABEL_165;
                    }

                    if (v134 >= *(v133 + 16))
                    {
                      break;
                    }

                    sub_1E327F454(i, v385);
                    v137 = *(&v385[1] + 1);
                    v138 = *&v385[2];
                    __swift_project_boxed_opaque_existential_1(v385, *(&v385[1] + 1));
                    if ((*(v138 + 16))(v137, v138) == v130 && v139 == *(&v130 + 1))
                    {

                      v34 = v376;
LABEL_160:

                      sub_1E3251BE8(v385, v388);
                      sub_1E3251BE8(v388, v378);
                      v322 = *(**v375 + 408);

                      v324 = v322(v323);

                      if (v324)
                      {
                        sub_1E327F454(v378, v385);

                        v325 = OUTLINED_FUNCTION_18();
                        sub_1E41E2FB4(v385, 0, v325 & 1, v387);
                        type metadata accessor for Router();
                        OUTLINED_FUNCTION_38();
                        v326 = sub_1E38D1D7C();
                        OUTLINED_FUNCTION_2_181();
                        sub_1E3D9D0B0(v327, v328);
                        OUTLINED_FUNCTION_20_2();
                        v329 = sub_1E4200504();
                        v330 = *sub_1E3CD9D88();
                        type metadata accessor for AppEnvironment();
                        OUTLINED_FUNCTION_1_215();
                        sub_1E3D9D0B0(v331, v332);

                        v333 = sub_1E4200504();
                        memcpy(v379, v387, 0x48uLL);
                        *&v379[72] = v329;
                        *&v379[80] = v326;
                        *&v379[88] = v333;
                        *&v379[96] = v330;
                        memcpy(v384, v379, 0x68uLL);
                        v377[0] = 0;
                        LOBYTE(v384[13]) = 0;
                        OUTLINED_FUNCTION_13_129();
                        sub_1E379D7E4(v334, v335, v336);
                        OUTLINED_FUNCTION_13_129();
                        sub_1E379D7E4(v337, v338, v339);
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A7C8);
                        sub_1E37DA7A4();
                        sub_1E4201F44();

                        OUTLINED_FUNCTION_36_54();
                        OUTLINED_FUNCTION_36_54();
                        __swift_destroy_boxed_opaque_existential_1(v378);
                        v340 = OUTLINED_FUNCTION_20_88();
                        memcpy(v340, v341, 0x69uLL);
                        v42 = Strong;
LABEL_166:
                        memcpy(v377, v386, 0x69uLL);
                        goto LABEL_118;
                      }

                      __swift_destroy_boxed_opaque_existential_1(v378);
LABEL_165:
                      v42 = Strong;
                      LOBYTE(v384[0]) = 1;
                      BYTE8(v385[6]) = 1;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A7C8);
                      sub_1E37DA7A4();
                      sub_1E4201F44();
                      goto LABEL_166;
                    }

                    v141 = sub_1E42079A4();

                    v34 = v376;
                    if (v141)
                    {
                      goto LABEL_160;
                    }

                    __swift_destroy_boxed_opaque_existential_1(v385);
                    ++v134;
                  }

                  __break(1u);
                  goto LABEL_178;
                }
              }

              else
              {
                sub_1E325F6F0(v386, &unk_1ECF296E0);
              }
            }
          }
        }

        memset(v377, 0, 104);
        v377[104] = -1;
LABEL_118:
        v264 = OUTLINED_FUNCTION_35_56();
        memcpy(v264, v265, 0x69uLL);
        sub_1E3D9CEB8(v379);
        v266 = OUTLINED_FUNCTION_19_103();
        memcpy(v266, v267, 0xDAuLL);
        OUTLINED_FUNCTION_10_121();
        v268 = OUTLINED_FUNCTION_75();
        __swift_instantiateConcreteTypeFromMangledNameV2(v268);
        v269 = OUTLINED_FUNCTION_57();
        __swift_instantiateConcreteTypeFromMangledNameV2(v269);
        OUTLINED_FUNCTION_5_167();
        sub_1E3D9CCC8(v270, &qword_1ECF38650, &unk_1E42D0D20, v271);
        sub_1E3D9C77C();
LABEL_83:
        sub_1E4201F44();
        v169 = OUTLINED_FUNCTION_40_53();
        memcpy(v169, v170, 0xDAuLL);
        sub_1E3D9CEC4(v385);
LABEL_84:
        v171 = OUTLINED_FUNCTION_20_88();
        memcpy(v171, v172, 0xDBuLL);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38640);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38680);
        sub_1E3D9C6C4();
        OUTLINED_FUNCTION_4_188();
        sub_1E3D9CCC8(v173, &qword_1ECF38680, &unk_1E42D0D38, v174);
        OUTLINED_FUNCTION_27_68();
        sub_1E4201F44();
        OUTLINED_FUNCTION_82();
        sub_1E325F6F0(v175, v176);
        memcpy(v386, v384, 0xDBuLL);
        goto LABEL_85;
      }
    }

    v108 = [v34 contextData];
    if (v108)
    {
      v109 = sub_1E3751A20(v108);
      if (v109)
      {
        sub_1E374BD08(v109);
        OUTLINED_FUNCTION_38();

        if (v38)
        {
          sub_1E37FAFB0();

          OUTLINED_FUNCTION_24_79();

          if (*(&v386[1] + 1))
          {
            type metadata accessor for LibMenuItem();
            OUTLINED_FUNCTION_26_84();
            if (swift_dynamicCast())
            {
              sub_1E37FAFE0();

              v110 = OUTLINED_FUNCTION_75();
              sub_1E3277E60(v110, v111, v38, v112);

              if (*(&v378[1] + 1))
              {
                swift_dynamicCast();
              }

              else
              {
                sub_1E325F6F0(v378, &unk_1ECF296E0);
              }

              sub_1E3B7B1C8();

              OUTLINED_FUNCTION_51_1();
              OUTLINED_FUNCTION_18();
              sub_1E3A71D24();
              type metadata accessor for Router();
              OUTLINED_FUNCTION_38();
              v238 = sub_1E38D1D7C();
              OUTLINED_FUNCTION_2_181();
              sub_1E3D9D0B0(v239, v240);
              OUTLINED_FUNCTION_20_2();
              v241 = sub_1E4200504();
              memcpy(v387, v388, 0xB1uLL);
              v242 = *sub_1E3CD9D88();
              type metadata accessor for AppEnvironment();
              OUTLINED_FUNCTION_1_215();
              sub_1E3D9D0B0(v243, v244);

              v245 = sub_1E4200504();
              memcpy(v379, v387, sizeof(v379));
              v380 = v241;
              v381 = v238;
              v382 = v245;
              v383 = v242;
              v246 = OUTLINED_FUNCTION_19_103();
              memcpy(v246, v247, 0xD8uLL);
              sub_1E3D9CEE0(v386);
              memcpy(v384, v386, 0xD9uLL);
              OUTLINED_FUNCTION_13_129();
              sub_1E379D7E4(v248, v249, v250);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A818);
              sub_1E37DAC1C();
              sub_1E4201F44();

              OUTLINED_FUNCTION_36_54();
              memcpy(v377, v385, 0xD9uLL);
              goto LABEL_82;
            }
          }

          else
          {

            sub_1E325F6F0(v386, &unk_1ECF296E0);
          }
        }
      }
    }

    sub_1E3D9CECC(v386);
    v158 = OUTLINED_FUNCTION_26_84();
    memcpy(v158, v159, 0xD9uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A818);
    sub_1E37DAC1C();
    sub_1E4201F44();
LABEL_82:
    v160 = OUTLINED_FUNCTION_35_56();
    memcpy(v160, v161, 0xD9uLL);
    sub_1E3D9CED8(v379);
    v162 = OUTLINED_FUNCTION_19_103();
    memcpy(v162, v163, 0xDAuLL);
    OUTLINED_FUNCTION_10_121();
    v164 = OUTLINED_FUNCTION_57();
    __swift_instantiateConcreteTypeFromMangledNameV2(v164);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38660);
    OUTLINED_FUNCTION_5_167();
    OUTLINED_FUNCTION_82();
    sub_1E3D9CCC8(v165, v166, v167, v168);
    sub_1E3D9C77C();
    OUTLINED_FUNCTION_27_68();
    OUTLINED_FUNCTION_52_0();
    goto LABEL_83;
  }

  v57 = [v376 documentRef];
  v58 = sub_1E4205F14();
  v60 = v59;

  if (v58 == sub_1E4205F14() && v60 == v61)
  {

    goto LABEL_37;
  }

  v63 = OUTLINED_FUNCTION_37_58();

  if (v63)
  {
LABEL_37:

    sub_1E3B7B1C8();

    *v20 = sub_1E3B4F454();
    v20[1] = v80;
    v20[2] = v81;
    swift_storeEnumTagMultiPayload();
    sub_1E3D9CA84();
    OUTLINED_FUNCTION_8_141();
    sub_1E3D9D0B0(v82, v83);

    OUTLINED_FUNCTION_43_49();
    sub_1E4201F44();
    OUTLINED_FUNCTION_96_2();
    sub_1E379D7E4(v84, v85, v86);
    swift_storeEnumTagMultiPayload();
    sub_1E3D9C9C8();
    sub_1E3D9CAD8();
    sub_1E4201F44();
    OUTLINED_FUNCTION_55_0();
    sub_1E325F6F0(v87, v88);
    OUTLINED_FUNCTION_96_2();
    sub_1E379D7E4(v89, v90, v91);
    OUTLINED_FUNCTION_50_40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF386E8);
    sub_1E3D9C93C();
    sub_1E3D9CBE8();
    OUTLINED_FUNCTION_11_128();
    sub_1E4201F44();

    OUTLINED_FUNCTION_55_0();
LABEL_38:
    sub_1E325F6F0(v92, v93);
    goto LABEL_39;
  }

  v64 = [v376 documentRef];
  v65 = sub_1E4205F14();
  v67 = v66;

  if (v65 == sub_1E4205F14() && v67 == v68)
  {

    goto LABEL_53;
  }

  v70 = OUTLINED_FUNCTION_37_58();

  v71 = v375;
  if (v70)
  {
LABEL_53:

    v113 = *(v28 + 24);
    v114 = v376;

    v115 = v360;
    sub_1E3898E04(v114, v113, v360);
    v375 = type metadata accessor for LibShowDetailsView;
    sub_1E3D9CDD0(v115, v20, type metadata accessor for LibShowDetailsView);
    swift_storeEnumTagMultiPayload();
    sub_1E3D9CA84();
    OUTLINED_FUNCTION_8_141();
    sub_1E3D9D0B0(v116, v117);
    OUTLINED_FUNCTION_43_49();
    sub_1E4201F44();
    OUTLINED_FUNCTION_96_2();
    sub_1E379D7E4(v118, v119, v120);
    swift_storeEnumTagMultiPayload();
    sub_1E3D9C9C8();
    sub_1E3D9CAD8();
    sub_1E4201F44();
    OUTLINED_FUNCTION_55_0();
    sub_1E325F6F0(v121, v122);
    OUTLINED_FUNCTION_96_2();
    sub_1E379D7E4(v123, v124, v125);
    OUTLINED_FUNCTION_50_40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF386E8);
    sub_1E3D9C93C();
    sub_1E3D9CBE8();
    OUTLINED_FUNCTION_11_128();
    OUTLINED_FUNCTION_52_0();
    sub_1E4201F44();
    v126 = OUTLINED_FUNCTION_57();
    sub_1E325F6F0(v126, v127);
    sub_1E3D9CE2C(v115, v375);
    goto LABEL_39;
  }

  v72 = v376;
  v73 = [v376 documentRef];
  v74 = sub_1E4205F14();
  v76 = v75;

  if (v74 == sub_1E4205F14() && v76 == v77)
  {
  }

  else
  {
    v79 = sub_1E42079A4();

    if ((v79 & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  type metadata accessor for LibDescriptiveAlertViewModel();
  if (sub_1E3750C3C(v72))
  {

    sub_1E3EA1BCC(v142, v386);
    v385[0] = *(v386 + 8);
    LOBYTE(v385[1]) = BYTE8(v386[1]);
    v143 = v386[2];
    *v379 = v386[2];
    v144 = v386[1];
    v145 = v357;
    *v357 = v386[0];
    v145[1] = v144;
    v145[2] = v143;
    swift_storeEnumTagMultiPayload();

    sub_1E379D7E4(v385, v384, &qword_1ECF386F8);
    sub_1E379D7E4(v379, v384, &qword_1ECF38700);
    sub_1E3D9CB94();
    OUTLINED_FUNCTION_7_169();
    sub_1E3D9D0B0(v146, v147);
    v148 = v359;
    sub_1E4201F44();
    v23 = &unk_1E42D0CD0;
    sub_1E379D7E4(v148, v363, &qword_1ECF385E0);
    swift_storeEnumTagMultiPayload();
    sub_1E3D9C9C8();
    sub_1E3D9CAD8();
    v149 = v365;
    sub_1E4201F44();
    sub_1E325F6F0(v148, &qword_1ECF385E0);
    sub_1E379D7E4(v149, v368, &qword_1ECF38608);
    OUTLINED_FUNCTION_50_40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF386E8);
    sub_1E3D9C93C();
    sub_1E3D9CBE8();
    OUTLINED_FUNCTION_11_128();
    sub_1E4201F44();

    sub_1E325F6F0(v385, &qword_1ECF386F8);
    sub_1E325F6F0(v379, &qword_1ECF38700);

    v92 = v149;
    v93 = &qword_1ECF38608;
    goto LABEL_38;
  }

LABEL_73:
  v150 = sub_1E39A4DDC(v72, &selRef_controllerRef);
  v152 = v151;
  v153 = sub_1E4205F14();
  v155 = v154;
  if (v152)
  {
    v156 = v150 == v153 && v152 == v154;
    v94 = Strong;
    v23 = v369;
    if (v156)
    {

LABEL_115:

      v251 = v354;
      sub_1E3FC8A7C(v354);
      v375 = type metadata accessor for AccountSettings;
      sub_1E3D9CDD0(v251, v357, type metadata accessor for AccountSettings);
      swift_storeEnumTagMultiPayload();
      sub_1E3D9CB94();
      OUTLINED_FUNCTION_7_169();
      sub_1E3D9D0B0(v252, v253);
      sub_1E4201F44();
      OUTLINED_FUNCTION_96_2();
      sub_1E379D7E4(v254, v255, v256);
      swift_storeEnumTagMultiPayload();
      sub_1E3D9C9C8();
      sub_1E3D9CAD8();
      sub_1E4201F44();
      OUTLINED_FUNCTION_55_0();
      sub_1E325F6F0(v257, v258);
      OUTLINED_FUNCTION_96_2();
      sub_1E379D7E4(v259, v260, v261);
      OUTLINED_FUNCTION_50_40();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF386E8);
      sub_1E3D9C93C();
      sub_1E3D9CBE8();
      OUTLINED_FUNCTION_52_0();
      sub_1E4201F44();
      OUTLINED_FUNCTION_55_0();
      sub_1E325F6F0(v262, v263);
      sub_1E3D9CE2C(v251, v375);
      goto LABEL_40;
    }

    v157 = sub_1E42079A4();

    v155 = v71;
    if (v157)
    {
      goto LABEL_115;
    }
  }

  else
  {

    v94 = Strong;
    v23 = v369;
  }

  sub_1E39A4DDC(v376, &selRef_controllerRef);
  if (v234)
  {
    OUTLINED_FUNCTION_152();
    if (v152 == sub_1E4205F14() && v155 == v235)
    {
      goto LABEL_139;
    }

    OUTLINED_FUNCTION_3_179();
    v237 = sub_1E42079A4();

    if (v237)
    {
      goto LABEL_140;
    }

    if (v152 == sub_1E4205F14() && v155 == v272)
    {
LABEL_139:

      goto LABEL_140;
    }

    OUTLINED_FUNCTION_3_179();
    v274 = sub_1E42079A4();

    if (v274)
    {
LABEL_140:

      sub_1E4205F14();
      OUTLINED_FUNCTION_41_53();
      if (v41 && v155 == v296)
      {
      }

      else
      {
        OUTLINED_FUNCTION_3_179();
        OUTLINED_FUNCTION_48_37();
        OUTLINED_FUNCTION_47_44();

        if ((v152 & 1) == 0)
        {
          type metadata accessor for MetricsRenderSessionListViewController();
          v298 = *MetricsDiskManager.shared.unsafeMutableAddressor();
          v299 = MetricsRenderSessionListViewController.__allocating_init(storageDataSource:)(v298);
LABEL_148:
          v300 = v299;
          LOBYTE(v384[0]) = 0;
          *&v385[0] = v299;
          BYTE1(v385[5]) = 0;
          sub_1E3D9C85C();
          sub_1E3D9CC74();
          v301 = v300;
          sub_1E4201F44();
          memcpy(v368, v386, 0x52uLL);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF386E8);
          sub_1E3D9C93C();
          sub_1E3D9CBE8();
          OUTLINED_FUNCTION_96_2();
          sub_1E4201F44();

          goto LABEL_40;
        }
      }

      v299 = [objc_allocWithZone(VUIDebugViewController) init];
      goto LABEL_148;
    }
  }

  v275 = *(v28 + 16);
  v276 = sub_1E39A4DDC(v275, &selRef_documentType);
  if (!v277)
  {
    v276 = 0x746C7561666564;
    v277 = 0xE700000000000000;
  }

  LOBYTE(v278) = DocumentType.init(rawValue:)(*&v276);
  if (v278 == 8)
  {
    v279 = 0;
  }

  else
  {
    v279 = v278;
  }

  v280 = sub_1E39A4DDC(v275, &selRef_controllerRef);
  if (v281)
  {
    v282 = v280;
  }

  else
  {
    v282 = 0;
  }

  if (v281)
  {
    v23 = v281;
  }

  else
  {
    v23 = 0xE000000000000000;
  }

  type metadata accessor for DocumentContext();
  v283 = *(v28 + 16);

  v284 = sub_1E3D989C8(v283);
  v362 = v285;
  v363 = v284;
  OUTLINED_FUNCTION_5_0();
  v286 = swift_unknownObjectWeakLoadStrong();
  type metadata accessor for DocumentServiceRequestContext();
  *&v287 = OUTLINED_FUNCTION_14_128();
  v385[1] = v287;
  v385[0] = v287;
  v288 = v286;

  v289 = OUTLINED_FUNCTION_18();
  v364 = v282;
  v290 = DocumentServiceRequestContext.__allocating_init(documentType:requestType:controllerRef:appContext:contextDataRef:prefetchDataRef:animateUpdates:)(v279, 0, v282, v23, v286, v386, v385, v289 & 1);
  v291 = [v275 contextData];
  if (v291 && (v292 = v291, v293 = [v291 jsonData], v292, v293))
  {
    OUTLINED_FUNCTION_146_1();
    v294 = sub_1E4205C64();

    *(&v386[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
    *&v386[0] = v294;
  }

  else
  {
    v295.n128_f64[0] = OUTLINED_FUNCTION_14_128();
  }

  (*(*v290 + 224))(v386, v295);
  v302 = [v275 prefetchData];
  if (v302 && (v303 = v302, v304 = [v302 jsonData], v303, v304))
  {
    OUTLINED_FUNCTION_146_1();
    v305 = sub_1E4205C64();

    *(&v386[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
    *&v386[0] = v305;
  }

  else
  {
    v306.n128_f64[0] = OUTLINED_FUNCTION_14_128();
  }

  (*(*v290 + 248))(v386, v306);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
  v307 = v375;
  LODWORD(v365) = v279;
  if (v375)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    v309 = sub_1E3DDBFA8();
    v311 = *v309;
    v310 = v309[1];
    *&v385[0] = v311;
    *(&v385[0] + 1) = v310;

    sub_1E4207414();
    *(inited + 96) = MEMORY[0x1E69E6370];
    *(inited + 72) = 1;
    OUTLINED_FUNCTION_146_1();
    v312 = sub_1E4205CB4();
    v313 = sub_1E3D9BA8C(v312, v307);
  }

  else
  {
    v314 = swift_initStackObject();
    *(v314 + 16) = xmmword_1E4297BE0;
    v315 = sub_1E3DDBFA8();
    v317 = *v315;
    v316 = v315[1];
    *&v385[0] = v317;
    *(&v385[0] + 1) = v316;

    sub_1E4207414();
    *(v314 + 96) = MEMORY[0x1E69E6370];
    *(v314 + 72) = 1;
    OUTLINED_FUNCTION_146_1();
    v313 = sub_1E4205CB4();
  }

  v318 = v313;
  v319 = (v353 >> 8) & 1;
  v320 = v353 & 1;
  type metadata accessor for DocumentInteractor();
  type metadata accessor for PagePerformanceReporter();
  OUTLINED_FUNCTION_38();

  sub_1E3C678AC();
  OUTLINED_FUNCTION_58_4();
  v321 = sub_1E3DDCD04();
  (*(*v321 + 808))(v28);

  LOBYTE(v384[0]) = v365;
  v384[1] = v363;
  v384[2] = v362;
  v384[3] = v364;
  v384[4] = v23;
  LOBYTE(v384[5]) = v320;
  BYTE1(v384[5]) = v319;
  v384[6] = v318;
  v384[7] = v28;
  v384[8] = sub_1E38074D0;
  v384[9] = v321;
  LOBYTE(v384[10]) = 0;
  memcpy(v385, v384, 0x51uLL);
  LOBYTE(v378[0]) = 1;
  BYTE1(v385[5]) = 1;
  sub_1E3D9CD68(v384, v386);
  sub_1E3D9C85C();
  sub_1E3D9CC74();
  sub_1E4201F44();
  memcpy(v368, v386, 0x52uLL);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF386E8);
  sub_1E3D9C93C();
  sub_1E3D9CBE8();
  OUTLINED_FUNCTION_11_128();
  sub_1E4201F44();
  sub_1E3D9CDA0(v384);
LABEL_39:
  v94 = Strong;
LABEL_40:
  sub_1E379D7E4(v23, v372, &qword_1ECF38610);
  swift_storeEnumTagMultiPayload();
  v95 = OUTLINED_FUNCTION_75();
  __swift_instantiateConcreteTypeFromMangledNameV2(v95);
  sub_1E3D9C8B0();
  OUTLINED_FUNCTION_6_158();
  sub_1E3D9CCC8(v96, &qword_1ECF38698, &unk_1E42D0D48, v97);
  sub_1E4201F44();

LABEL_88:
  OUTLINED_FUNCTION_82();
  return sub_1E325F6F0(v201, v202);
}

uint64_t sub_1E3D9BA6C@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1E3D990C4(*v1, v2 | *(v1 + 8), a1);
}

uint64_t sub_1E3D9BA8C(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1E3D9C21C(a1, sub_1E397BCA4, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void *sub_1E3D9BB10@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = v1 + 48;
  v3 = *(v1 + 6);
  v5 = *(*(v4 + 1) + 16);
  v67 = *(v4 + 1);

  if (v3)
  {
    v65 = sub_1E374BD08(v3);
  }

  else
  {
    v65 = 0;
  }

  v6 = *v2;
  v66 = v6;
  v63 = v2[40];
  v64 = v2[41];
  v62 = j__OUTLINED_FUNCTION_1_135();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  HIDWORD(v61) = v6 != 1;

  LOBYTE(v6) = j__OUTLINED_FUNCTION_18();
  v13 = j__OUTLINED_FUNCTION_18();
  v14 = OUTLINED_FUNCTION_51_1();
  v15 = j__OUTLINED_FUNCTION_3_24();
  sub_1E3AC59C0(v75);
  sub_1E3AC5A74(v6 & 1, v13 & 1, v14 & 1, v15, v62, v8, v10 & 1, v12, __src, v75);
  BYTE2(__src[0]) = BYTE4(v61);
  sub_1E3AC582C(v63);

  __src[1] = v65;
  BYTE1(__src[0]) = v64;
  LOBYTE(v12) = [v5 shouldLoadPageImmediately];
  v16 = sub_1E3827728([v5 uiConfiguration], &selRef_loadingViewText);
  v18 = v17;
  v19 = [v5 uiConfiguration];
  v20 = [v19 prefersLargeTitle];

  v21 = sub_1E3827728([v5 uiConfiguration], &selRef_navigationTitle);
  v23 = v22;
  v24 = j__OUTLINED_FUNCTION_18();
  LOBYTE(v15) = j__OUTLINED_FUNCTION_18();
  v25 = j__OUTLINED_FUNCTION_18();
  v26 = j__OUTLINED_FUNCTION_18();
  v27.value._countAndFlagsBits = v16;
  v27.value._object = v18;
  v28.value._countAndFlagsBits = v21;
  v28.value._object = v23;
  DocumentLoadingConfiguration.init(loadImmediately:labelTextOverride:withZoomTransition:prefersLargeTitle:navigationTitle:isComingFromExtras:isComingFromRoot:isRootViewController:)(&v76, v12, v27, v24 & 1, v20, v28, v15 & 1, v25 & 1, v26 & 1);
  sub_1E3AC5838(&v76);

  memcpy(__dst, __src, 0x64uLL);
  memcpy(v74, __src, 0x64uLL);
  sub_1E3AB6E28(__dst, v72);
  sub_1E3D9D05C(v74);
  if (v66 == 1)
  {
    type metadata accessor for DocumentInteractor();
    OUTLINED_FUNCTION_9_129();
    sub_1E3D9D0B0(v42, v43);

    OUTLINED_FUNCTION_12_116();
    v44 = sub_1E4200BC4();
    sub_1E3AB6E28(__dst, __src);
    v45 = OUTLINED_FUNCTION_32_0();
    sub_1E3AB6618(v45, v46, v44, v47, v67, v48);
    OUTLINED_FUNCTION_12_116();
    sub_1E4200BC4();
    v49 = OUTLINED_FUNCTION_51_1();
    sub_1E379DF10(v49 & 1, &__src[23]);
    memcpy(__src, v70, 0xB8uLL);
    memcpy(v71, __src, 0xE0uLL);
    memcpy(v72, v71, 0xE0uLL);
    sub_1E3D9D2C4(v72);
    v50 = memcpy(__src, v72, 0x149uLL);
    v33 = &qword_1ECF38720;
    OUTLINED_FUNCTION_45_51(v50, v51, v52, v53, v54, v55, v56, v57, isComingFromRoot, v61);
    v58 = OUTLINED_FUNCTION_32_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v58);
    v41 = &qword_1ECF38718;
  }

  else
  {

    type metadata accessor for DocumentInteractor();
    OUTLINED_FUNCTION_9_129();
    sub_1E3D9D0B0(v29, v30);

    OUTLINED_FUNCTION_12_116();
    sub_1E4200BC4();
    sub_1E3AB6E28(__dst, __src);

    OUTLINED_FUNCTION_3_24();
    sub_1E40D9BF4();
    OUTLINED_FUNCTION_12_116();
    sub_1E4200BC4();
    v31 = OUTLINED_FUNCTION_51_1();
    sub_1E379DF10(v31 & 1, &__src[36]);
    memcpy(__src, v70, 0x120uLL);
    memcpy(v71, __src, sizeof(v71));
    memcpy(v72, v71, 0x148uLL);
    sub_1E3D9D0F4(v72);
    v32 = memcpy(__src, v72, 0x149uLL);
    v33 = &qword_1ECF38718;
    OUTLINED_FUNCTION_45_51(v32, v34, v35, v36, v37, v38, v39, v40, isComingFromRoot, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38720);
    v41 = OUTLINED_FUNCTION_32_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v41);
  sub_1E3D9D100();
  sub_1E3D9D20C();
  OUTLINED_FUNCTION_55_0();
  sub_1E4201F44();
  sub_1E3D9D05C(__dst);
  sub_1E325F6F0(v71, v33);
  memcpy(__src, v69, 0x149uLL);
  return memcpy(a1, __src, 0x149uLL);
}

uint64_t sub_1E3D9C074(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = 5 * v12;
    sub_1E374E74C(*(v3 + 48) + 40 * v12, &v20);
    sub_1E374E74C(*(v3 + 56) + 8 * v13, &v19);
    if (!v21)
    {
      return 1;
    }

    v14 = sub_1E375D924(&v20);
    v16 = v15;
    sub_1E375D84C(&v20);
    if ((v16 & 1) == 0)
    {
      sub_1E375D84C(&v19);
      return 0;
    }

    sub_1E374E74C(*(a2 + 56) + 40 * v14, v18);
    v17 = MEMORY[0x1E6911D60](v18, &v19);
    sub_1E375D84C(v18);
    result = sub_1E375D84C(&v19);
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3D9C21C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_1E394CDB0(a1, a2, a3, v36);
  v34[2] = v36[0];
  v34[3] = v36[1];
  v34[4] = v36[2];
  v35 = v37;

  while (1)
  {
    sub_1E397C154(&v31);
    if (!*(&v32 + 1))
    {
      sub_1E397C6C4();
    }

    v28 = v31;
    v29 = v32;
    v30 = v33;
    sub_1E329504C(v34, v27);
    v7 = *a5;
    v9 = sub_1E375D924(&v28);
    v10 = *(v7 + 16);
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      break;
    }

    v13 = v8;
    if (*(v7 + 24) >= v12)
    {
      if (a4)
      {
        if (v8)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CCF0);
        sub_1E4207654();
        if (v13)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1E397A924(v12, a4 & 1);
      v14 = sub_1E375D924(&v28);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_18;
      }

      v9 = v14;
      if (v13)
      {
LABEL_10:
        v16 = *a5;
        sub_1E328438C(*(*a5 + 56) + 32 * v9, v26);
        __swift_destroy_boxed_opaque_existential_1(v27);
        sub_1E375D84C(&v28);
        v17 = (*(v16 + 56) + 32 * v9);
        __swift_destroy_boxed_opaque_existential_1(v17);
        sub_1E329504C(v26, v17);
        goto LABEL_14;
      }
    }

    v18 = *a5;
    *(*a5 + 8 * (v9 >> 6) + 64) |= 1 << v9;
    v19 = v18[6] + 40 * v9;
    v20 = v28;
    v21 = v29;
    *(v19 + 32) = v30;
    *v19 = v20;
    *(v19 + 16) = v21;
    sub_1E329504C(v27, (v18[7] + 32 * v9));
    v22 = v18[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_17;
    }

    v18[2] = v24;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

unint64_t sub_1E3D9C464()
{
  result = qword_1EE23AD70;
  if (!qword_1EE23AD70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AD70);
  }

  return result;
}

unint64_t sub_1E3D9C4FC()
{
  result = qword_1EE29D860[0];
  if (!qword_1EE29D860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE29D860);
  }

  return result;
}

unint64_t sub_1E3D9C580()
{
  result = qword_1ECF38620;
  if (!qword_1ECF38620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38618);
    sub_1E3D9C60C();
    sub_1E3D9C85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38620);
  }

  return result;
}

unint64_t sub_1E3D9C60C()
{
  result = qword_1ECF38628;
  if (!qword_1ECF38628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38630);
    sub_1E3D9C6C4();
    sub_1E3D9CCC8(&qword_1ECF38678, &qword_1ECF38680, &unk_1E42D0D38, sub_1E3D9C82C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38628);
  }

  return result;
}

unint64_t sub_1E3D9C6C4()
{
  result = qword_1ECF38638;
  if (!qword_1ECF38638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38640);
    sub_1E3D9CCC8(&qword_1ECF38648, &qword_1ECF38650, &unk_1E42D0D20, sub_1E37DAC1C);
    sub_1E3D9C77C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38638);
  }

  return result;
}

unint64_t sub_1E3D9C77C()
{
  result = qword_1ECF38658;
  if (!qword_1ECF38658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38660);
    sub_1E3D9CCC8(&qword_1ECF38668, &qword_1ECF38670, &unk_1E42D0D30, sub_1E37DA7A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38658);
  }

  return result;
}

unint64_t sub_1E3D9C85C()
{
  result = qword_1ECF63080;
  if (!qword_1ECF63080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF63080);
  }

  return result;
}

unint64_t sub_1E3D9C8B0()
{
  result = qword_1ECF386A0;
  if (!qword_1ECF386A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38610);
    sub_1E3D9C93C();
    sub_1E3D9CBE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF386A0);
  }

  return result;
}

unint64_t sub_1E3D9C93C()
{
  result = qword_1ECF386A8;
  if (!qword_1ECF386A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38608);
    sub_1E3D9C9C8();
    sub_1E3D9CAD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF386A8);
  }

  return result;
}

unint64_t sub_1E3D9C9C8()
{
  result = qword_1ECF386B0;
  if (!qword_1ECF386B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38600);
    sub_1E3D9CA84();
    sub_1E3D9D0B0(&qword_1ECF386C0, type metadata accessor for LibShowDetailsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF386B0);
  }

  return result;
}

unint64_t sub_1E3D9CA84()
{
  result = qword_1ECF386B8;
  if (!qword_1ECF386B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF386B8);
  }

  return result;
}

unint64_t sub_1E3D9CAD8()
{
  result = qword_1ECF386C8;
  if (!qword_1ECF386C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF385E0);
    sub_1E3D9CB94();
    sub_1E3D9D0B0(&qword_1ECF386D8, type metadata accessor for AccountSettings);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF386C8);
  }

  return result;
}

unint64_t sub_1E3D9CB94()
{
  result = qword_1ECF386D0;
  if (!qword_1ECF386D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF386D0);
  }

  return result;
}

unint64_t sub_1E3D9CBE8()
{
  result = qword_1ECF386E0;
  if (!qword_1ECF386E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF386E8);
    sub_1E3D9C85C();
    sub_1E3D9CC74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF386E0);
  }

  return result;
}

unint64_t sub_1E3D9CC74()
{
  result = qword_1ECF63088[0];
  if (!qword_1ECF63088[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF63088);
  }

  return result;
}

uint64_t sub_1E3D9CCC8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E3D9CDD0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E3D9CE2C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1E3D9CF0C()
{
  result = qword_1ECF38708;
  if (!qword_1ECF38708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38710);
    sub_1E3D9C8B0();
    sub_1E3D9CCC8(&qword_1ECF386F0, &qword_1ECF38698, &unk_1E42D0D48, sub_1E3D9C580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38708);
  }

  return result;
}

unint64_t sub_1E3D9CFC8(uint64_t a1)
{
  result = sub_1E3D9CFF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3D9CFF0()
{
  result = qword_1ECF63110[0];
  if (!qword_1ECF63110[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF63110);
  }

  return result;
}

uint64_t sub_1E3D9D0B0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3D9D100()
{
  result = qword_1ECF38728;
  if (!qword_1ECF38728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38720);
    sub_1E328FCF4(&qword_1ECF38730, &qword_1ECF38738);
    sub_1E3D9D1B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38728);
  }

  return result;
}

unint64_t sub_1E3D9D1B8()
{
  result = qword_1ECF38740;
  if (!qword_1ECF38740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38740);
  }

  return result;
}

unint64_t sub_1E3D9D20C()
{
  result = qword_1ECF38748;
  if (!qword_1ECF38748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38718);
    sub_1E328FCF4(&qword_1ECF38750, &qword_1ECF38758);
    sub_1E3D9D1B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38748);
  }

  return result;
}

unint64_t sub_1E3D9D2CC()
{
  result = qword_1ECF632A0[0];
  if (!qword_1ECF632A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF632A0);
  }

  return result;
}

unint64_t sub_1E3D9D320()
{
  result = qword_1ECF38760;
  if (!qword_1ECF38760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38768);
    sub_1E3D9D100();
    sub_1E3D9D20C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38760);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_48_37()
{

  return sub_1E42079A4();
}

id sub_1E3D9D3C4(uint64_t a1)
{
  v1 = (*(*a1 + 488))();
  if (!v1)
  {
    return 0;
  }

  v2 = sub_1E373E010(2, v1);

  if (!v2)
  {
    return 0;
  }

  v3 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = sub_1E393D9C4(v2, 0, &v9, 0);

  sub_1E373C624(&v9);
  if (!v5)
  {

    return 0;
  }

  type metadata accessor for ErrorTemplateController();
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = [v6 init];
  [v7 setVuiView_];

  return v7;
}

id sub_1E3D9D4FC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1E4205ED4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ErrorTemplateController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id sub_1E3D9D5DC(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ErrorTemplateController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3D9D668()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ErrorTemplateController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E3D9D69C()
{
  OUTLINED_FUNCTION_0_8();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_2_0();
  return sub_1E3D9D6E8();
}

id sub_1E3D9D6E8()
{
  OUTLINED_FUNCTION_0_8();
  v6 = v5;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC8VideosUI18PaletteContentView_trailingView] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI18PaletteContentView_hostedView] = v6;
  v8 = &v0[OBJC_IVAR____TtC8VideosUI18PaletteContentView_hostedViewMargin];
  *v8 = v4;
  *(v8 + 1) = v3;
  *(v8 + 2) = v2;
  *(v8 + 3) = v1;
  v9 = v6;
  [v9 vui:0.0 sizeThatFits:0.0];
  v11 = v10;
  v12 = OUTLINED_FUNCTION_2_0();
  v15 = sub_1E3952BD8(v12, v13, v14);
  v18.receiver = v0;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, v11 + v15);
  [v16 addSubview_];

  return v16;
}

void sub_1E3D9D7DC()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI18PaletteContentView_trailingView) = 0;
  sub_1E42076B4();
  __break(1u);
}

double sub_1E3D9D85C(char a1, double a2, double a3)
{
  v27.receiver = v3;
  v27.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v27, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  v7 = *&v3[OBJC_IVAR____TtC8VideosUI18PaletteContentView_hostedViewMargin];
  v8 = *&v3[OBJC_IVAR____TtC8VideosUI18PaletteContentView_hostedViewMargin + 8];
  v9 = OUTLINED_FUNCTION_2_182();
  v13 = a2 - sub_1E3952BE0(v9, v10, v11, v12);
  v14 = *&v3[OBJC_IVAR____TtC8VideosUI18PaletteContentView_hostedView];
  [v14 vui:v13 sizeThatFits:0.0];
  v16 = v15;
  v18 = v17;
  v19 = OUTLINED_FUNCTION_2_182();
  sub_1E3952BD8(v19, v20, v21);
  if ((a1 & 1) == 0)
  {
    v22 = [v3 vuiContentMode];
    if (v22)
    {
      if (v22 == 8)
      {
        v8 = v8 + v13 - v16;
      }

      else if (v22 == 4)
      {
        v8 = v8 + (v13 - v16) * 0.5;
      }
    }

    else
    {
      v16 = v13;
    }

    [v14 setFrame_];
  }

  v23 = OBJC_IVAR____TtC8VideosUI18PaletteContentView_trailingView;
  OUTLINED_FUNCTION_5_0();
  v24 = *&v3[v23];
  if (v24 && (a1 & 1) == 0)
  {
    v25 = v24;
    [v25 vui:a2 sizeThatFits:0.0];
    [*&v3[OBJC_IVAR____TtC8VideosUI18PaletteContentView_hostedView] frame];
    CGRectGetMidY(v28);
    [v3 bounds];
    [v3 vuiIsRTL];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    [v25 setFrame_];
  }

  return a2;
}

void *sub_1E3D9DBC0(uint64_t a1)
{
  v1 = 0;
  switch(*(a1 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType))
  {
    case 1:
    case 3:
    case 4:
    case 7:
    case 8:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1D:
    case 0x1E:
      goto LABEL_40;
    case 2:
      type metadata accessor for CanonicalTemplateController();
      OUTLINED_FUNCTION_50();

      OUTLINED_FUNCTION_51_1();
      v13 = OUTLINED_FUNCTION_2_183();
      v4 = sub_1E3FEF058(v13);
      goto LABEL_39;
    case 5:
      type metadata accessor for ConfirmationDialogTemplateController();
      v18 = OUTLINED_FUNCTION_0_236();
      v4 = sub_1E3B4A4D8(v18, v19);
      goto LABEL_39;
    case 6:
      type metadata accessor for MediaShowcasingTemplateController();
      OUTLINED_FUNCTION_50();

      v4 = sub_1E3B39C2C(v25);
      goto LABEL_39;
    case 9:
      type metadata accessor for DescriptionTemplateController();
      v15 = OUTLINED_FUNCTION_0_236();
      v4 = sub_1E373BF50(v15, v16);
      goto LABEL_39;
    case 0xA:
      type metadata accessor for ErrorTemplateController();
      v27 = OUTLINED_FUNCTION_50();
      v4 = sub_1E3D9D3C4(v27);
      goto LABEL_39;
    case 0xB:
      OUTLINED_FUNCTION_111();
      (*(v20 + 416))(v37);
      v21 = v38;
      sub_1E325F748(v37, &qword_1ECF2FFF0);
      if (v21)
      {
        v22 = &unk_1ECF38798;
        goto LABEL_38;
      }

      type metadata accessor for OfferSelectionTemplateController();
      OUTLINED_FUNCTION_50();

      v4 = sub_1E413F918();
      goto LABEL_39;
    case 0xC:
      type metadata accessor for SplitOfferTemplateController();
      v24 = OUTLINED_FUNCTION_50();
      v4 = sub_1E4066D38(v24);
      goto LABEL_39;
    case 0xD:
      type metadata accessor for SportsCanonicalTemplateController();
      OUTLINED_FUNCTION_50();

      v4 = sub_1E40917B8(v26);
      goto LABEL_39;
    case 0xE:
      type metadata accessor for SportsFavoritesTemplateController();
      OUTLINED_FUNCTION_50();

      v4 = sub_1E3DB6C4C(v23);
      goto LABEL_39;
    case 0xF:
      type metadata accessor for StackTemplateController();
      OUTLINED_FUNCTION_50();

      OUTLINED_FUNCTION_51_1();
      OUTLINED_FUNCTION_2_183();
      v4 = sub_1E3ED156C();
      goto LABEL_39;
    case 0x10:
      type metadata accessor for SearchTemplateController();
      OUTLINED_FUNCTION_0_236();
      sub_1E3944AF4();
      goto LABEL_39;
    case 0x11:
      goto LABEL_34;
    case 0x12:
      LOBYTE(v39) = 0;
      OUTLINED_FUNCTION_111();
      (*(v17 + 776))(v37, &v39, &unk_1F5D5E578, &off_1F5D5CBF8);
      if (v38)
      {
        if (OUTLINED_FUNCTION_4_189() && (v39 & 1) != 0)
        {
          type metadata accessor for MultiViewPlayerHUDTemplateController();
          OUTLINED_FUNCTION_50();

          OUTLINED_FUNCTION_51_1();
          OUTLINED_FUNCTION_2_183();
          v4 = sub_1E3FFA344();
          goto LABEL_39;
        }
      }

      else
      {
        sub_1E325F748(v37, &unk_1ECF296E0);
      }

LABEL_34:
      type metadata accessor for PlayerHUDTemplateController();
      OUTLINED_FUNCTION_50();

      j__OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_2_183();
      sub_1E378C374();
      goto LABEL_39;
    case 0x13:
      type metadata accessor for PostPlayTemplateController();
      OUTLINED_FUNCTION_50();

      v4 = sub_1E394E98C(v14, 0);
      goto LABEL_39;
    case 0x14:
      type metadata accessor for LivePostPlayTemplateViewController();
      OUTLINED_FUNCTION_50();

      OUTLINED_FUNCTION_51_1();
      OUTLINED_FUNCTION_2_183();
      v4 = sub_1E3A5A950();
      goto LABEL_39;
    case 0x15:
      OUTLINED_FUNCTION_111();
      v6 = (*(v5 + 1000))();
      v8 = v7;
      v9 = sub_1E4205F14();
      if (!v8)
      {

        goto LABEL_32;
      }

      if (v6 == v9 && v8 == v10)
      {

        goto LABEL_37;
      }

      v12 = sub_1E42079A4();

      if ((v12 & 1) == 0)
      {
LABEL_32:
        type metadata accessor for UpsellOfferTemplateViewController();
        v29 = OUTLINED_FUNCTION_0_236();
        v4 = sub_1E38DD35C(v29, v30);
        goto LABEL_39;
      }

LABEL_37:
      v22 = &unk_1ECF38790;
LABEL_38:
      __swift_instantiateConcreteTypeFromMangledNameV2(v22);
      OUTLINED_FUNCTION_50();

      v4 = sub_1E4175058(v31);
LABEL_39:
      v1 = v4;
LABEL_40:
      LOBYTE(v39) = 27;
      OUTLINED_FUNCTION_111();
      (*(v32 + 776))(v37, &v39, &unk_1F5D5DAC8, &off_1F5D5C998);
      if (v38)
      {
        if (OUTLINED_FUNCTION_4_189())
        {
          if (v1)
          {
            v33 = v39;
            v34 = v1;
            sub_1E4205ED4();
            OUTLINED_FUNCTION_50();

            v35 = VUIUserInterfaceStyleFromTheme();

            [v34 vui:v35 setOverrideUserInterfaceStyle:?];
          }

          else
          {
          }
        }
      }

      else
      {
        sub_1E325F748(v37, &unk_1ECF296E0);
      }

      return v1;
    case 0x16:
      type metadata accessor for ExternalAppInstallTemplateController();
      v28 = OUTLINED_FUNCTION_0_236();
      v4 = sub_1E41E2114(v28);
      goto LABEL_39;
    case 0x1B:
      type metadata accessor for TimedMetadataTemplateController();
      OUTLINED_FUNCTION_50();

      v4 = sub_1E4180C50();
      goto LABEL_39;
    case 0x1C:
      v22 = &unk_1ECF38788;
      goto LABEL_38;
    default:
      type metadata accessor for AlertTemplateController();
      v2 = OUTLINED_FUNCTION_0_236();
      sub_1E3E74434(v2, v3);
      goto LABEL_39;
  }
}

uint64_t sub_1E3D9E0B4@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for OfferLockup();
  v7 = v6[7];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  v8 = swift_storeEnumTagMultiPayload();
  v9 = (a3 + v6[8]);
  OUTLINED_FUNCTION_42_10(v8, MEMORY[0x1E69E7DE0], v10, v11, v12, v13, v14, v15, v29, 0);
  sub_1E42038E4();
  *v9 = v31;
  v9[1] = v32;
  v16 = (a3 + v6[9]);
  type metadata accessor for ViewInteractionStates();
  v17 = sub_1E3B1E0A8(0);
  OUTLINED_FUNCTION_42_10(v17, v18, v19, v20, v21, v22, v23, v24, v30, v17);
  sub_1E42038E4();
  *v16 = v31;
  v16[1] = v32;
  *a3 = a1;
  memcpy(a3 + 1, a2, 0xC3uLL);
  v25 = *(*a1 + 392);

  v27 = v25(v26);

  if (!v27)
  {
    goto LABEL_4;
  }

  if (*v27 != _TtC8VideosUI21OfferCardLegacyLayout)
  {

LABEL_4:
    type metadata accessor for OfferCardLegacyLayout();
    result = sub_1E3DAFF08();
    v27 = result;
  }

  a3[26] = v27;
  return result;
}

uint64_t type metadata accessor for OfferLockup()
{
  result = qword_1EE2A7FC0;
  if (!qword_1EE2A7FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3D9E2A0@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v53 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v51 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OfferLockup();
  v45 = *(v8 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF387A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_20_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF387A8);
  OUTLINED_FUNCTION_0_10();
  v46 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_19_2();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF387B0);
  OUTLINED_FUNCTION_0_10();
  v47 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF387B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_31_2();
  sub_1E3D9E7B8();
  OUTLINED_FUNCTION_12_117();
  v21 = v1;
  sub_1E3DA1E8C(v1, v10, v22);
  v23 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v24 = swift_allocObject();
  sub_1E3D9E96C(v10, v24 + v23);
  v25 = sub_1E3D9EA74();
  v26 = j__OUTLINED_FUNCTION_18();
  sub_1E383F5C4(v26 & 1, sub_1E3D9E9D0, v24, 0, 0, v11, v25);

  sub_1E325F6F0(v3, &qword_1ECF387A0);
  v27 = v21[26];
  v54 = v11;
  v55 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_53_3();
  LOBYTE(v25) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_3();
  v29 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_3();
  LOBYTE(v24) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_3();
  v30 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v27, v25 & 1, v29 & 1, v24 & 1, v30 & 1, v13, OpaqueTypeConformance2);
  v31 = (*(v46 + 8))(v2, v13);
  if ((*(**v21 + 392))(v31) && (OUTLINED_FUNCTION_30(), (*(v32 + 152))(&v54), v33 = v54, v34 = v55, v35 = v56, v36 = v57, , (v58 & 1) == 0))
  {
    v37.n128_u64[0] = v33;
    v38.n128_u64[0] = v34;
    v39.n128_u64[0] = v35;
    v40.n128_u64[0] = v36;
    j_nullsub_1(v37, v38, v39, v40);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v41 = sub_1E4202734();
  (*(v47 + 32))(v4, v19, v49);
  v42 = (v4 + *(v48 + 36));
  *v42 = v41;
  OUTLINED_FUNCTION_11_4(v42);
  v43 = v50;
  sub_1E4202474();
  sub_1E3D9EBB8();
  OUTLINED_FUNCTION_32_0();
  sub_1E4203224();
  (*(v51 + 8))(v43, v53);
  return sub_1E325F6F0(v4, &qword_1ECF387B8);
}

void sub_1E3D9E7B8()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF387E0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF387D0) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  *v2 = sub_1E4201D44();
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF387F0);
  sub_1E3D9ECE0(v0, v9, v10, v11, v12, v13, v14, v15, v18, v19, v21, v22, v24, v25, v27, v28[0], v28[1], v28[2], v28[3], v28[4]);
  sub_1E4203DA4();
  sub_1E4200D94();
  sub_1E3741EA0(v2, v1, &qword_1ECF387E0);
  v16 = (v1 + *(v7 + 44));
  *v16 = v20;
  v16[1] = v23;
  v16[2] = v26;
  sub_1E4203DA4();
  OUTLINED_FUNCTION_10_122();
  OUTLINED_FUNCTION_5_168();
  sub_1E3741EA0(v1, v4, &qword_1ECF387D0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF387A0);
  memcpy((v4 + *(v17 + 36)), v28, 0x70uLL);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D9E96C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfferLockup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3D9E9D0()
{
  v0 = type metadata accessor for OfferLockup();
  OUTLINED_FUNCTION_17_2(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AFD0);
  sub_1E42038F4();
  sub_1E3B1E260();
}

unint64_t sub_1E3D9EA74()
{
  result = qword_1ECF387C0;
  if (!qword_1ECF387C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF387A0);
    sub_1E3D9EB00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF387C0);
  }

  return result;
}

unint64_t sub_1E3D9EB00()
{
  result = qword_1ECF387C8;
  if (!qword_1ECF387C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF387D0);
    sub_1E32752B0(&qword_1ECF387D8, &qword_1ECF387E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF387C8);
  }

  return result;
}

unint64_t sub_1E3D9EBB8()
{
  result = qword_1ECF387E8;
  if (!qword_1ECF387E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF387B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF387A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF387A0);
    sub_1E3D9EA74();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF387E8);
  }

  return result;
}

void sub_1E3D9ECE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF387F8);
  v25 = OUTLINED_FUNCTION_17_2(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_6();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38800);
  v33 = OUTLINED_FUNCTION_17_2(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4_6();
  v36 = v34 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &a9 - v38;
  sub_1E3D9EEA8();
  sub_1E3D9F378();
  sub_1E3743538(v39, v36, &qword_1ECF38800);
  sub_1E3743538(v31, v28, &qword_1ECF387F8);
  sub_1E3743538(v36, v23, &qword_1ECF38800);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38808);
  sub_1E3743538(v28, v23 + *(v40 + 48), &qword_1ECF387F8);
  sub_1E325F6F0(v31, &qword_1ECF387F8);
  sub_1E325F6F0(v39, &qword_1ECF38800);
  sub_1E325F6F0(v28, &qword_1ECF387F8);
  sub_1E325F6F0(v36, &qword_1ECF38800);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D9EEA8()
{
  OUTLINED_FUNCTION_31_1();
  v34 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF388A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF388A8);
  OUTLINED_FUNCTION_0_10();
  v28 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF388B0);
  OUTLINED_FUNCTION_0_10();
  v30 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31_2();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF388B8);
  OUTLINED_FUNCTION_0_10();
  v32 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_27_69(v16, v28);
  *v6 = sub_1E4201D44();
  *(v6 + 1) = 0;
  v6[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF388C0);
  sub_1E3D9FC4C();
  v17 = *(v0 + 208);
  v18 = (*(*v17 + 792))();
  memset(v38, 0, sizeof(v38));
  v39 = 1;
  v19 = sub_1E32752B0(&qword_1ECF388C8, &qword_1ECF388A0);
  sub_1E3A6929C(v18, 0, 0, 1, v38, v3, v19);
  v20 = sub_1E325F6F0(v6, &qword_1ECF388A0);
  v21 = (*(*v17 + 744))(v20);
  v37[0] = v3;
  v37[1] = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E39B87A4(v21);

  v23 = (*(v28 + 8))(v11, v7);
  (*(*v17 + 552))(v35, v23);
  if ((v36 & 1) == 0)
  {
    sub_1E3952BE8(v35[0], v35[1], v35[2], v35[3]);
  }

  v37[0] = v7;
  v37[1] = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v24 = v29;
  v25 = v31;
  sub_1E3E361E8();
  (*(v30 + 8))(v1, v25);
  sub_1E4203D44();
  OUTLINED_FUNCTION_10_122();
  LOBYTE(v29) = 1;
  OUTLINED_FUNCTION_5_168();
  v26 = v34;
  (*(v32 + 32))(v34, v24, v33);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38800);
  memcpy((v26 + *(v27 + 36)), v37, 0x70uLL);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D9F378()
{
  OUTLINED_FUNCTION_21_5();
  v7 = v0;
  v9 = v8;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38810);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_2();
  v11 = type metadata accessor for OfferLockup();
  OUTLINED_FUNCTION_0_10();
  v78 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v79 = v14;
  v80 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38818);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_31_2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v71 - v18;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38820);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_26_2();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38828);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_27_69(v22, v71[0]);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38830);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  v81 = v24 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v82 = v71 - v27;
  OUTLINED_FUNCTION_14_18();
  v29 = (*(v28 + 488))();
  if (!v29)
  {
    goto LABEL_21;
  }

  v30 = sub_1E373E010(14, v29);

  if (!v30)
  {
    goto LABEL_21;
  }

  if (*v30 != _TtC8VideosUI13TextViewModel)
  {

LABEL_21:
    sub_1E3DA0F68();
    sub_1E3743538(v3, v1, &qword_1ECF38818);
    swift_storeEnumTagMultiPayload();
    sub_1E3DA18F0();
    sub_1E3DA1A60();
    sub_1E4201F44();
    v64 = v3;
    v65 = &qword_1ECF38818;
    goto LABEL_22;
  }

  v75 = v30;
  v74 = v9;
  v31 = *(v0 + 192);
  v32 = *(v0 + 208);
  sub_1E374EBCC();
  OUTLINED_FUNCTION_30();
  (*(v33 + 152))(&v88);

  (*(*v32 + 176))(v89, v34);
  if ((v90 & 1) == 0)
  {
    sub_1E3952BE0(v89[0], v89[1], v89[2], v89[3]);
  }

  v35 = (v0 + *(v11 + 32));
  v36 = *v35;
  v37 = v35[1];
  *&v91 = v36;
  v72 = v37;
  *(&v91 + 1) = v37;
  v71[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
  sub_1E42038F4();
  v38 = v87 == 0.0 || v31 == 0;
  v39 = v38;
  v73 = v39;
  v40 = sub_1E4201D44();
  v41 = v83;
  *v83 = v40;
  v41[1] = 0;
  *(v41 + 16) = 0;
  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  *&v19[*(v16 + 36)] = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v43 = sub_1E4202764();
  *(inited + 32) = v43;
  v44 = sub_1E4202784();
  *(inited + 33) = v44;
  v45 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v43)
  {
    v45 = sub_1E4202774();
  }

  sub_1E4202774();
  if (sub_1E4202774() != v44)
  {
    v45 = sub_1E4202774();
  }

  sub_1E4200A54();
  v47 = v46;
  OUTLINED_FUNCTION_20_89();
  sub_1E3741EA0(v19, v2, &qword_1ECF29D98);
  v48 = v2 + *(v76 + 36);
  *v48 = v45;
  *(v48 + 8) = v47;
  *(v48 + 16) = v4;
  *(v48 + 24) = v5;
  *(v48 + 32) = v6;
  *(v48 + 40) = 0;
  sub_1E4202744();
  v49 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v38)
  {
    v49 = sub_1E4202774();
  }

  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38898);
  v51 = v83;
  v52 = v83 + *(v50 + 44);
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v2, v52, &qword_1ECF38820);
  v53 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38888) + 36));
  *v53 = v49;
  OUTLINED_FUNCTION_11_4(v53);
  sub_1E3DA0F68();
  OUTLINED_FUNCTION_12_117();
  v54 = v80;
  sub_1E3DA1E8C(v7, v80, v55);
  v56 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v57 = swift_allocObject();
  sub_1E3D9E96C(v54, v57 + v56);
  sub_1E3DA1A60();
  v58 = OUTLINED_FUNCTION_51_1();
  v59 = v51 + *(v77 + 36);
  sub_1E40AB6EC(v58 & 1);

  sub_1E325F6F0(v3, &qword_1ECF38818);
  v60 = sub_1E4203DA4();
  v62 = v61;
  v63 = &v59[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38860) + 36)];
  *v63 = v60;
  v63[1] = v62;
  if ((v73 & 1) == 0)
  {
    *&v91 = v36;
    *(&v91 + 1) = v72;
    sub_1E42038F4();
  }

  sub_1E4203D84();
  sub_1E4200D94();
  v66 = v81;
  sub_1E3741EA0(v83, v81, &qword_1ECF38828);
  v67 = (v66 + *(v84 + 36));
  v68 = v92;
  *v67 = v91;
  v67[1] = v68;
  v67[2] = v93;
  v69 = v66;
  v70 = v82;
  sub_1E3741EA0(v69, v82, &qword_1ECF38830);
  sub_1E3743538(v70, v1, &qword_1ECF38830);
  swift_storeEnumTagMultiPayload();
  sub_1E3DA18F0();
  sub_1E4201F44();

  v64 = v70;
  v65 = &qword_1ECF38830;
LABEL_22:
  sub_1E325F6F0(v64, v65);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3D9FC4C()
{
  OUTLINED_FUNCTION_31_1();
  v27 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF388D0);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF388D8);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF388E0);
  v19 = OUTLINED_FUNCTION_17_2(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v26 - v21;
  sub_1E3D9FF14(&v26 - v21);
  sub_1E3DA00F4(v17);
  sub_1E3DA0328(v9);
  sub_1E3743538(v22, v0, &qword_1ECF388E0);
  sub_1E3743538(v17, v14, &qword_1ECF388D8);
  v23 = v6;
  sub_1E3743538(v9, v6, &qword_1ECF388D0);
  v24 = v27;
  sub_1E3743538(v0, v27, &qword_1ECF388E0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF388E8);
  sub_1E3743538(v14, v24 + *(v25 + 48), &qword_1ECF388D8);
  sub_1E3743538(v23, v24 + *(v25 + 64), &qword_1ECF388D0);
  sub_1E325F6F0(v9, &qword_1ECF388D0);
  sub_1E325F6F0(v17, &qword_1ECF388D8);
  sub_1E325F6F0(v22, &qword_1ECF388E0);
  sub_1E325F6F0(v23, &qword_1ECF388D0);
  sub_1E325F6F0(v14, &qword_1ECF388D8);
  sub_1E325F6F0(v0, &qword_1ECF388E0);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D9FF14(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38948);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_14_18();
  v6 = (*(v5 + 488))();
  if (v6)
  {
    v7 = sub_1E373E010(39, v6);

    if (v7)
    {
      type metadata accessor for ImageViewModel();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = v8;
        sub_1E3DA1498(v21);
        OUTLINED_FUNCTION_29_76();
        sub_1E418A524();
        v10 = OUTLINED_FUNCTION_18();
        sub_1E37E8BE8(v9, v21, 0, v10 & 1, 0, 0, v1);
        sub_1E4203DA4();
        OUTLINED_FUNCTION_19_104();
        sub_1E375C31C(v21);

        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C1A8);
        OUTLINED_FUNCTION_18_94(v11);
        *(v1 + *(v3 + 36)) = 0;
        sub_1E3741EA0(v1, a1, &qword_1ECF38948);
        OUTLINED_FUNCTION_8_11();
        __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
        OUTLINED_FUNCTION_32_66();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_32_66();

  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
}

void sub_1E3DA00F4(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38928);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_14_18();
  v6 = (*(v5 + 488))();
  if (v6)
  {
    v7 = sub_1E373E010(32, v6);

    if (v7)
    {
      type metadata accessor for ImageViewModel();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = v8;
        sub_1E3DA1498(v29);
        OUTLINED_FUNCTION_29_76();
        sub_1E418A524();
        *v1 = sub_1E4201B84();
        *(v1 + 8) = 0;
        *(v1 + 16) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38930);
        sub_1E3DA160C(v9, v29, v10, v11, v12, v13, v14, v15, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5], v29[6], v29[7], v29[8], v29[9], v29[10], v29[11]);
        sub_1E4203DA4();
        OUTLINED_FUNCTION_19_104();
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38938);
        OUTLINED_FUNCTION_18_94(v16);
        v17 = [objc_opt_self() lightGrayColor];
        v18 = sub_1E38F08C4(v17);

        LOBYTE(v17) = sub_1E4202734();

        sub_1E375C31C(v29);
        v19 = v1 + *(v3 + 36);
        *v19 = v18;
        *(v19 + 8) = v17;
        sub_1E3741EA0(v1, a1, &qword_1ECF38928);
        OUTLINED_FUNCTION_8_11();
        __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
        OUTLINED_FUNCTION_32_66();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_32_66();

  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
}

void *sub_1E3DA0328@<X0>(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF388F0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF388F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38900);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_2();
  *v4 = sub_1E4201D54();
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38908);
  sub_1E3DA06A0();
  v11 = sub_1E4202754();
  v12 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v11)
  {
    v12 = sub_1E4202774();
  }

  v13 = *(**(v1 + 208) + 176);
  v13(v23);
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v4, v3, &qword_1ECF388F0);
  v14 = (v3 + *(v7 + 36));
  *v14 = v12;
  OUTLINED_FUNCTION_11_4(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v16 = sub_1E4202764();
  *(inited + 32) = v16;
  v17 = sub_1E4202784();
  *(inited + 33) = v17;
  v18 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v16)
  {
    v18 = sub_1E4202774();
  }

  sub_1E4202774();
  if (sub_1E4202774() != v17)
  {
    v18 = sub_1E4202774();
  }

  v13(v24);
  if ((v25 & 1) == 0)
  {
    sub_1E3952BE0(v24[0], v24[1], v24[2], v24[3]);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v3, v2, &qword_1ECF388F8);
  v19 = (v2 + *(v9 + 36));
  *v19 = v18;
  OUTLINED_FUNCTION_11_4(v19);
  sub_1E4203D44();
  OUTLINED_FUNCTION_10_122();
  LOBYTE(a1) = 1;
  OUTLINED_FUNCTION_5_168();
  sub_1E3741EA0(v2, a1, &qword_1ECF38900);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF388D0);
  return memcpy((a1 + *(v20 + 36)), __src, 0x70uLL);
}

void sub_1E3DA06A0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v32 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38910);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  v9 = type metadata accessor for StackedTextViews(0);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - v16;
  v18 = *(**v2 + 488);
  v19 = v18(v15);
  v20 = v19;
  if (!v19)
  {
    goto LABEL_5;
  }

  v21 = sub_1E373E010(23, v20);

  if (v21 && *v21 != _TtC8VideosUI13TextViewModel)
  {

LABEL_5:
    v21 = 0;
  }

  v22 = (v18)(v19);
  if (!v22)
  {
LABEL_10:
    v23 = 0;
    goto LABEL_11;
  }

  v23 = sub_1E373E010(17, v22);

  if (v23 && *v23 != _TtC8VideosUI13TextViewModel)
  {

    goto LABEL_10;
  }

LABEL_11:
  if (!v20)
  {
LABEL_15:
    v24 = 0;
    goto LABEL_16;
  }

  v24 = sub_1E373E010(15, v20);

  if (v24 && *v24 != _TtC8VideosUI13TextViewModel)
  {

    goto LABEL_15;
  }

LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D378);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1E4297BD0;
  *(v25 + 32) = v21;
  *(v25 + 40) = v23;
  *(v25 + 48) = v24;

  v27 = sub_1E404034C(v26);
  v28 = j__OUTLINED_FUNCTION_18();
  sub_1E403E654(v25, v27, v28 & 1, v17);

  sub_1E3DA0A54();
  sub_1E3DA1E8C(v17, v13, type metadata accessor for StackedTextViews);
  sub_1E3743538(v8, v0, &qword_1ECF38910);
  v29 = v32;
  sub_1E3DA1E8C(v13, v32, type metadata accessor for StackedTextViews);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38918);
  sub_1E3743538(v0, v29 + *(v30 + 48), &qword_1ECF38910);
  sub_1E325F6F0(v8, &qword_1ECF38910);
  sub_1E38F8510(v17);
  sub_1E325F6F0(v0, &qword_1ECF38910);
  sub_1E38F8510(v13);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DA0A54()
{
  OUTLINED_FUNCTION_21_5();
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29878);
  OUTLINED_FUNCTION_0_10();
  v48 = v9;
  v49 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_31_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DE58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38920);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_14_18();
  v19 = (*(v18 + 488))();
  if (v19 && (v20 = sub_1E373E010(60, v19), v21 = , v20))
  {
    v46 = v15;
    v22 = (*(*v20 + 392))(v21);
    if (v22)
    {
      type metadata accessor for ButtonLayout();
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        (*(*v23 + 2048))();
        OUTLINED_FUNCTION_30();
        (*(v24 + 152))(v50);
      }
    }

    v47 = v7;
    if ((*(*v20 + 392))(v22))
    {
      OUTLINED_FUNCTION_30();
      (*(v30 + 176))(v50);
    }

    type metadata accessor for Accessibility();
    (*(*v20 + 320))();
    sub_1E40A7DC8();
    v45[1] = v31;
    v45[2] = v32;

    sub_1E3EC24F4(v20, 0, 0, 0);
    sub_1E4202744();
    v33 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v34)
    {
      v33 = sub_1E4202774();
    }

    sub_1E4200A54();
    v36 = v35;
    OUTLINED_FUNCTION_20_89();
    (*(v48 + 32))(v2, v12, v49);
    v37 = v2 + *(v13 + 36);
    *v37 = v33;
    *(v37 + 8) = v36;
    *(v37 + 16) = v3;
    *(v37 + 24) = v4;
    *(v37 + 32) = v5;
    *(v37 + 40) = 0;
    sub_1E4202764();
    v38 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    v39 = v47;
    if (!v34)
    {
      v38 = sub_1E4202774();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    sub_1E3741EA0(v2, v0, &qword_1ECF289E8);
    v40 = (v0 + *(v46 + 36));
    *v40 = v38;
    OUTLINED_FUNCTION_11_4(v40);
    sub_1E391D1DC();
    sub_1E4202EA4();

    sub_1E325F6F0(v0, &qword_1ECF2DE58);
    sub_1E3741EA0(v1, v39, &qword_1ECF38920);
    OUTLINED_FUNCTION_8_11();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
    OUTLINED_FUNCTION_20_0();
  }

  else
  {
    OUTLINED_FUNCTION_48_3();
    OUTLINED_FUNCTION_20_0();

    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  }
}

void sub_1E3DA0F68()
{
  OUTLINED_FUNCTION_21_5();
  v5 = v0;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38820);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_26_2();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38888);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38878);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v62 = v18 - v19;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v58 - v22;
  v24 = *(v0 + 192);
  if (v24)
  {
    v25 = (*(*v24 + 488))(v21);
    if (v25)
    {
      v26 = sub_1E373E010(14, v25);
      v61 = v5;
      v27 = v11;
      v28 = v12;
      v29 = v16;
      v30 = v1;
      v31 = v23;
      v32 = v26;

      v33 = v32;
      v34 = v31;
      if (v33)
      {
        if (*v33 == _TtC8VideosUI13TextViewModel)
        {
          v60 = v33;
          v59 = v7;
          v35 = *(v61 + 208);
          sub_1E374EBCC();
          OUTLINED_FUNCTION_30();
          (*(v36 + 152))(&v64);

          (*(*v35 + 176))(v65, v37);
          if ((v66 & 1) == 0)
          {
            sub_1E3952BE0(v65[0], v65[1], v65[2], v65[3]);
          }

          OUTLINED_FUNCTION_18();
          sub_1E3F23370();
          *(v27 + *(v8 + 36)) = 256;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1E4299720;
          v39 = sub_1E4202764();
          *(inited + 32) = v39;
          *(inited + 33) = sub_1E4202784();
          v40 = sub_1E4202774();
          sub_1E4202774();
          if (sub_1E4202774() != v39)
          {
            v40 = sub_1E4202774();
          }

          sub_1E4202774();
          sub_1E4202774();
          OUTLINED_FUNCTION_29();
          v41 = v59;
          if (!v42)
          {
            v40 = sub_1E4202774();
          }

          sub_1E4200A54();
          v44 = v43;
          OUTLINED_FUNCTION_20_89();
          sub_1E3741EA0(v27, v30, &qword_1ECF29D98);
          v45 = v30 + *(v28 + 36);
          *v45 = v40;
          *(v45 + 8) = v44;
          *(v45 + 16) = v2;
          *(v45 + 24) = v3;
          *(v45 + 32) = v4;
          *(v45 + 40) = 0;
          sub_1E4202744();
          v46 = OUTLINED_FUNCTION_41_4();
          sub_1E4202774();
          sub_1E4202774();
          OUTLINED_FUNCTION_29();
          if (!v42)
          {
            v46 = sub_1E4202774();
          }

          sub_1E4200A54();
          OUTLINED_FUNCTION_3();

          sub_1E3741EA0(v30, v29, &qword_1ECF38820);
          v47 = (v29 + *(v63 + 36));
          *v47 = v46;
          OUTLINED_FUNCTION_11_4(v47);
          v48 = v62;
          sub_1E3741EA0(v29, v62, &qword_1ECF38888);
          sub_1E3741EA0(v48, v34, &qword_1ECF38878);
          sub_1E3741EA0(v34, v41, &qword_1ECF38878);
          OUTLINED_FUNCTION_8_11();
          __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
          OUTLINED_FUNCTION_20_0();
          return;
        }
      }
    }
  }

  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_20_0();

  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
}

__n128 sub_1E3DA1498@<Q0>(uint64_t a1@<X8>)
{
  if (*(v1 + 144))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = *(v1 + 128);
  }

  v4 = sub_1E373F6E0();
  v5 = v3 / *sub_1E418A524();
  if (v4)
  {
    sub_1E37BD0DC();
    OUTLINED_FUNCTION_30();
    v7 = COERCE_DOUBLE((*(v6 + 432))());
    v9 = v8;

    if (v9)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = v7;
    }

    VUIRoundValue();
    v5 = v11;
    v3 = v11 * v10;
  }

  sub_1E3EB9BB4(v16);
  v12 = v19;
  sub_1E3741534();
  if (sub_1E4205E84())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  *(a1 + 17) = v17;
  *(a1 + 33) = v18;
  *(a1 + 41) = v13;
  *(a1 + 42) = v20;
  *(a1 + 46) = v21;
  *(a1 + 48) = v3;
  *(a1 + 56) = 0;
  result = v22;
  v15 = v23;
  *(a1 + 89) = v24;
  *(a1 + 73) = v15;
  *(a1 + 57) = result;
  return result;
}

void sub_1E3DA160C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  v36 = OUTLINED_FUNCTION_18();
  sub_1E37E8BE8(v26, v24, 0, v36 & 1, 0, 0, v35);
  v37 = *(v31 + 16);
  v37(v20, v35, v29);
  *v28 = 0;
  *(v28 + 8) = 1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38940);
  v37(v28 + *(v38 + 48), v20, v29);
  v39 = v28 + *(v38 + 64);
  *v39 = 0;
  *(v39 + 8) = 1;
  v40 = *(v31 + 8);
  v40(v35, v29);
  v40(v20, v29);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DA17BC()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for OfferCardLegacyLayout();
    if (v1 <= 0x3F)
    {
      sub_1E3806038(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1E3A99200();
        if (v3 <= 0x3F)
        {
          sub_1E3806038(319, &qword_1EE288688, type metadata accessor for ViewInteractionStates, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1E3DA18F0()
{
  result = qword_1ECF38838;
  if (!qword_1ECF38838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38830);
    sub_1E3DA197C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38838);
  }

  return result;
}

unint64_t sub_1E3DA197C()
{
  result = qword_1ECF38840;
  if (!qword_1ECF38840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38828);
    sub_1E32752B0(&qword_1ECF38848, &qword_1ECF38850);
    sub_1E32752B0(&qword_1ECF38858, &qword_1ECF38860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38840);
  }

  return result;
}

unint64_t sub_1E3DA1A60()
{
  result = qword_1ECF38868;
  if (!qword_1ECF38868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38818);
    sub_1E3DA1AE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38868);
  }

  return result;
}

unint64_t sub_1E3DA1AE4()
{
  result = qword_1ECF38870;
  if (!qword_1ECF38870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38878);
    sub_1E3DA1B70();
    sub_1E3BF7594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38870);
  }

  return result;
}

unint64_t sub_1E3DA1B70()
{
  result = qword_1ECF38880;
  if (!qword_1ECF38880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38888);
    sub_1E3DA1BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38880);
  }

  return result;
}

unint64_t sub_1E3DA1BFC()
{
  result = qword_1ECF38890;
  if (!qword_1ECF38890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38820);
    sub_1E3A1FD38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38890);
  }

  return result;
}

uint64_t objectdestroyTm_40()
{
  v1 = type metadata accessor for OfferLockup();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E3DA1DE8()
{
  v0 = type metadata accessor for OfferLockup();
  OUTLINED_FUNCTION_17_2(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
  return sub_1E4203904();
}

uint64_t sub_1E3DA1E8C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E3DA1F34()
{
  *(v0 + 136) = 0;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  v1 = sub_1E3C2F9A0();
  swift_retain_n();
  sub_1E3C2D0A0();
  v2 = *sub_1E3E60480();
  sub_1E3C2E258();

  sub_1E37BD068();
  OUTLINED_FUNCTION_2_1();
  (*(v3 + 1984))(4);
  OUTLINED_FUNCTION_36();
  v4 = OUTLINED_FUNCTION_15_8();
  v5(v4);
  OUTLINED_FUNCTION_36();
  v6 = OUTLINED_FUNCTION_15_8();
  v7(v6);
  OUTLINED_FUNCTION_36();
  (*(v8 + 2104))(0, 0);
  LOBYTE(v65[0]) = 3;
  LOBYTE(v77) = 7;
  sub_1E3C2FC98();
  LOBYTE(v75) = v76;
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v73) = v74;
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v71) = v72;
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v69) = v70;
  sub_1E3C2FCB8(v65, &v78);
  LODWORD(v65[0]) = v78;
  WORD2(v65[0]) = WORD2(v78);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v9 + 1600))(v65, 48, v10 & 1, &qword_1F5D549D8);
  sub_1E3E5FD88();
  OUTLINED_FUNCTION_7_16();
  v11 = *(*v1 + 680);
  v12 = &qword_1F5D549D8;
  v11(&qword_1F5D549D8);
  OUTLINED_FUNCTION_36();
  (*(v13 + 1696))(3);
  v78 = xmmword_1E42A9D20;
  v79 = xmmword_1E42A9D20;
  OUTLINED_FUNCTION_3_180();
  (*(v14 + 160))(&v78);

  sub_1E374EA2C();
  OUTLINED_FUNCTION_2_1();
  (*(v15 + 1984))(4);
  OUTLINED_FUNCTION_36();
  v16 = OUTLINED_FUNCTION_15_8();
  v17(v16);
  OUTLINED_FUNCTION_36();
  v18 = OUTLINED_FUNCTION_15_8();
  v19(v18);
  OUTLINED_FUNCTION_36();
  v20 = OUTLINED_FUNCTION_15_8();
  v21(v20);
  OUTLINED_FUNCTION_36();
  (*(v22 + 1696))(3);
  OUTLINED_FUNCTION_36();
  (*(v23 + 1792))(10);
  sub_1E3E60700();
  OUTLINED_FUNCTION_7_16();
  v24 = *(*v1 + 680);
  v25 = &qword_1F5D549D8;
  v24(&qword_1F5D549D8);

  sub_1E37DAE10();
  OUTLINED_FUNCTION_2_1();
  (*(v26 + 512))(0);
  OUTLINED_FUNCTION_36();
  (*(v27 + 1808))(1);
  sub_1E3E60A14();
  OUTLINED_FUNCTION_7_16();
  v28 = *(*v1 + 872);
  v29 = &qword_1F5D549D8;
  v28(&qword_1F5D549D8);
  OUTLINED_FUNCTION_36();
  (*(v30 + 2000))(2);
  v78 = xmmword_1E42A76A0;
  v79 = xmmword_1E42D1200;
  OUTLINED_FUNCTION_3_180();
  (*(v31 + 160))(&v78);
  OUTLINED_FUNCTION_36();
  (*(v32 + 2072))(2);
  OUTLINED_FUNCTION_36();
  (*(v33 + 2168))(5);
  sub_1E3E60700();
  OUTLINED_FUNCTION_7_16();
  v34 = *(*v1 + 680);
  v35 = &qword_1F5D549D8;
  v34(&qword_1F5D549D8);
  OUTLINED_FUNCTION_36();
  (*(v36 + 1712))(1);
  (*(*v1 + 208))(0x4040000000000000, 0);
  OUTLINED_FUNCTION_36();
  (*(v37 + 312))(0x4040000000000000, 0);

  sub_1E374EB64();
  OUTLINED_FUNCTION_2_1();
  (*(v38 + 1984))(4);
  OUTLINED_FUNCTION_36();
  v39 = OUTLINED_FUNCTION_15_8();
  v40(v39);
  OUTLINED_FUNCTION_36();
  v41 = OUTLINED_FUNCTION_15_8();
  v42(v41);
  OUTLINED_FUNCTION_36();
  v43 = OUTLINED_FUNCTION_15_8();
  v44(v43);
  OUTLINED_FUNCTION_36();
  (*(v45 + 1696))(15);
  sub_1E3E60364();
  OUTLINED_FUNCTION_7_16();
  v46 = *(*v1 + 680);
  v47 = &qword_1F5D549D8;
  v46(&qword_1F5D549D8);
  OUTLINED_FUNCTION_36();
  (*(v48 + 2272))(1);
  v78 = xmmword_1E42CA410;
  v79 = xmmword_1E42CA410;
  OUTLINED_FUNCTION_3_180();
  (*(v49 + 160))(&v78);

  v50 = sub_1E38A86A4();
  sub_1E3E60364();
  OUTLINED_FUNCTION_7_16();
  v51 = *(*v50 + 680);
  v52 = &qword_1F5D549D8;
  v51(&qword_1F5D549D8);
  OUTLINED_FUNCTION_36();
  (*(v53 + 2072))(15);
  OUTLINED_FUNCTION_36();
  (*(v54 + 2168))(6);
  OUTLINED_FUNCTION_36();
  v55 = OUTLINED_FUNCTION_15_8();
  v56(v55);
  OUTLINED_FUNCTION_36();
  (*(v57 + 1712))(1);
  (*(*v50 + 208))(0x403C000000000000, 0);
  OUTLINED_FUNCTION_36();
  (*(v58 + 312))(0x403C000000000000, 0);
  v78 = 0uLL;
  *&v79 = 0;
  *(&v79 + 1) = 0x4024000000000000;
  OUTLINED_FUNCTION_3_180();
  (*(v59 + 160))(&v78);

  sub_1E3C37CBC(v60, 23);

  sub_1E3C37CBC(v61, 39);

  sub_1E3C37CBC(v62, 31);

  *&v65[0] = &unk_1F5D84F08;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF357B8);
  sub_1E3C2FC98();
  v76 = v77;
  sub_1E3C3DE00(v63);
  v74 = v75;
  sub_1E3C3DE00(v63);
  v72 = v73;
  sub_1E3C3DE00(v63);
  v70 = v71;
  sub_1E3C3DE00(v63);
  v68 = v69;
  sub_1E3C2FCB8(v65, &v78);
  v65[0] = v78;
  v65[1] = v79;
  v66 = v80;
  v67 = v81;
  OUTLINED_FUNCTION_18();
  sub_1E3C2FDFC();

  return v1;
}

double sub_1E3DA2B98()
{
  v0 = sub_1E3B02A04();
  result = 32.0;
  if (v0)
  {
    return 54.0;
  }

  return result;
}

uint64_t sub_1E3DA2BF8()
{
  OUTLINED_FUNCTION_29_77();
  swift_allocObject();
  return sub_1E3DA48A4();
}

void sub_1E3DA2C4C()
{
  OUTLINED_FUNCTION_15_0();
  sub_1E3DA2C98(*(v0 + 120));
  sub_1E4048E24(*(v0 + 120));
}

void sub_1E3DA2C98(void *a1)
{
  OUTLINED_FUNCTION_3_0();
  v3 = *(v1 + 104);
  *(v1 + 104) = a1;
  v4 = a1;
  swift_beginAccess();
  v5 = sub_1E4205F14();
  v7 = v6;
  if (v5 == sub_1E4205F14() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1E42079A4();

    if ((v10 & 1) == 0)
    {
      sub_1E3DA35A0();
    }
  }
}

void sub_1E3DA2D78(void *a1)
{
  OUTLINED_FUNCTION_14_0();
  v3 = *(v1 + 120);
  *(v1 + 120) = a1;
  v4 = a1;

  sub_1E3DA2C4C();
}

uint64_t sub_1E3DA2DCC()
{
  type metadata accessor for TextLayout();
  v1 = sub_1E383BCC0();
  (*(*v1 + 1696))(14);

  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_22_3();
  v2 = *(*v1 + 680);
  v3 = v0;
  v2(v0);

  return v1;
}

void sub_1E3DA2E8C(uint64_t a1, id a2)
{
  if (a2)
  {
    v13 = [a2 preferredContentSizeCategory];
  }

  else
  {
    v13 = 0;
  }

  v4 = sub_1E3C2F8E8();
  if (!v4)
  {
    v12 = v13 == 0;
    goto LABEL_15;
  }

  v5 = v4;
  v6 = [v4 preferredContentSizeCategory];

  if (v13)
  {
    v7 = sub_1E4205F14();
    v9 = v8;
    if (v7 == sub_1E4205F14() && v9 == v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_1E42079A4();
    }

LABEL_15:
    sub_1E3C35CF4(a1, a2);
    if (v12)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  sub_1E3C35CF4(a1, a2);
LABEL_16:
  sub_1E3DA2FE0();
LABEL_17:
}

uint64_t sub_1E3DA2FE0()
{
  OUTLINED_FUNCTION_8();
  sub_1E3DA4CE8(&qword_1ECF38950, v0, type metadata accessor for SportStatsLayout);
  OUTLINED_FUNCTION_8_10();
  sub_1E4200514();
  sub_1E4200594();

  if (TVAppFeature.isEnabled.getter(10))
  {
    v1 = *(MEMORY[0x1E69DDCE0] + 16);
    v221 = *MEMORY[0x1E69DDCE0];
    v222 = v1;
    v223 = 0;
    sub_1E3C2CC78();
    v2 = sub_1E3DA34BC(283.0);
    LOBYTE(v167) = LOBYTE(v2);
    LOBYTE(v168) = 0;
    sub_1E3DA34BC(277.0);
    sub_1E3C2FC98();
    v3 = OUTLINED_FUNCTION_17_9();
    OUTLINED_FUNCTION_6_159(v3, v4, v5, v6, v7, v8, v9, v10, v115, *(&v115 + 1), v132, *(&v132 + 1), v149, v158, SLOBYTE(v167), v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, SBYTE8(v197), v198, *(&v198 + 1), v199, v200, v201, SBYTE8(v201));
    v19 = OUTLINED_FUNCTION_24_80(v11, v12, v13, v14, v15, v16, v17, v18, v116, v124, v133, v141, v150, v159, SLOBYTE(v167));
    memcpy(v19, v20, 0x59uLL);
    v21 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_10_123(v21, v22, v23, v24, v25, v26, v27, v28, v117, v125, v134, v142, v151, v160, SLOBYTE(v167));
    sub_1E3C2FDFC();
    v29 = sub_1E3DA34BC(165.0);
    LOBYTE(v167) = LOBYTE(v29);
    LOBYTE(v168) = 0;
    v218 = 0x406D800000000000;
    v219 = 0;
    *&v215 = 0x4062600000000000;
    BYTE8(v215) = 0;
    *&v212 = sub_1E3DA34BC(164.0);
    BYTE8(v212) = 0;
    sub_1E3C2FC98();
    v30 = OUTLINED_FUNCTION_17_9();
    OUTLINED_FUNCTION_6_159(v30, v31, v32, v33, v34, v35, v36, v37, v118, v126, v135, v143, v152, v161, SLOBYTE(v167), v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, SBYTE8(v197), v198, *(&v198 + 1), v199, v200, v201, SBYTE8(v201));
    v46 = OUTLINED_FUNCTION_24_80(v38, v39, v40, v41, v42, v43, v44, v45, v119, v127, v136, v144, v153, v162, SLOBYTE(v167));
    memcpy(v46, v47, 0x59uLL);
    v48 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_10_123(v48, v49, v50, v51, v52, v53, v54, v55, v120, v128, v137, v145, v154, v163, SLOBYTE(v167));
    sub_1E3C2FDFC();
    v56.n128_f64[0] = sub_1E3DA34BC(24.0);
    j__OUTLINED_FUNCTION_7_78(v56);
    v57.n128_f64[0] = OUTLINED_FUNCTION_27_70();
    v58 = j__OUTLINED_FUNCTION_7_78(v57);
    OUTLINED_FUNCTION_21_87(v58, v59, v60, v61);
    v62.n128_f64[0] = sub_1E3DA34BC(20.0);
    v63 = j__OUTLINED_FUNCTION_7_78(v62);
    OUTLINED_FUNCTION_19_105(v63, v64, v65, v66);
    type metadata accessor for UIEdgeInsets();
    v68 = v67;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_11_7(v69, v70, v71, v72, v73, v74, v75, v76, v121, v129, v138, v146, v155, v164, v167, *&v168, *&v169, *&v170, *&v171, *&v172, *&v173, *&v174, *&v175, *&v176, *&v177, *&v178, *&v179, *&v180, *&v181, *&v182, *&v183, *&v184, *&v185, *&v186, *&v187, *&v188, *&v189, *&v190, *&v191, *&v192, *&v193, *&v194, *&v195, *&v196, *&v197, *(&v197 + 1), *&v198, *(&v198 + 1), *&v199, *&v200, *&v201, *(&v201 + 1), *&v202, *(&v202 + 1), v203, v204, *&v205, *(&v205 + 1), *&v206, *(&v206 + 1), v207, v208, *&v209);
    sub_1E3C3DE00(v68);
    OUTLINED_FUNCTION_4_10(v77, v78, v79, v80, v81, v82, v83, v84, v122, v130, v139, v147, v156, v165, v167, *&v168, *&v169, *&v170, *&v171, *&v172, *&v173, *&v174, *&v175, *&v176, *&v177, *&v178, *&v179, *&v180, *&v181, *&v182, *&v183, *&v184, *&v185, *&v186, *&v187, *&v188, *&v189, *&v190, *&v191, *&v192, *&v193, *&v194, *&v195, *&v196, *&v197, *(&v197 + 1), *&v198, *(&v198 + 1), *&v199, *&v200, *&v201, *(&v201 + 1), *&v202, *(&v202 + 1), v203, v204, *&v205);
    sub_1E3C3DE00(v68);
    v115 = v197;
    v132 = v198;
    LOBYTE(v149) = v199;
  }

  else
  {
    sub_1E3952C64();
    OUTLINED_FUNCTION_27_70();
    *&v221 = sub_1E3952C64();
    *(&v221 + 1) = v103;
    *&v222 = v104;
    *(&v222 + 1) = v105;
    v223 = 0;
    v106 = sub_1E3952C64();
    OUTLINED_FUNCTION_21_87(v106, v107, v108, v109);
    type metadata accessor for UIEdgeInsets();
    v111 = v110;
    sub_1E3C2FC98();
    v212 = v215;
    v213 = v216;
    v214 = v217;
    sub_1E3C3DE00(v111);
    v205 = v209;
    v206 = v210;
    LOBYTE(v207) = v211;
    sub_1E3C3DE00(v111);
    v197 = v201;
    v198 = v202;
    LOBYTE(v199) = LOBYTE(v203);
  }

  sub_1E3C2FCB8(&v167, v220);
  v93 = OUTLINED_FUNCTION_24_80(v85, v86, v87, v88, v89, v90, v91, v92, v115, *(&v115 + 1), v132, *(&v132 + 1), v149, v158, SLOBYTE(v167));
  memcpy(v93, v94, 0xE9uLL);
  v95 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_10_123(v95, v96, v97, v98, v99, v100, v101, v102, v123, v131, v140, v148, v157, v166, SLOBYTE(v167));
  OUTLINED_FUNCTION_30_66();
  v112 = sub_1E3DA35A0();
  return sub_1E4048558(v112, v113);
}

void sub_1E3DA3344(double a1)
{
  if (*(v1 + 128) == a1)
  {
    return;
  }

  *(v1 + 128) = a1;
  v2 = a1 / 100.0;
  if (COERCE__INT64(fabs(a1 / 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  v3 = *(sub_1E392AFDC() + 16);

  v4 = v3 - 1;
  if (v3 - 1 >= v2)
  {
    v4 = v2;
  }

  v5 = v4 & ~(v4 >> 63);
  v6 = sub_1E392AFDC();
  if (v5 >= *(v6 + 16))
  {
    goto LABEL_20;
  }

  v7 = *(v6 + 8 * v5 + 32);

  OUTLINED_FUNCTION_15_0();
  v8 = sub_1E4205F14();
  v10 = v9;
  if (v8 == sub_1E4205F14() && v10 == v11)
  {
  }

  else
  {
    v13 = sub_1E42079A4();

    if ((v13 & 1) == 0)
    {
      v7 = v7;
      sub_1E3DA2D78(v7);
      sub_1E3DA2FE0();
    }
  }
}

double sub_1E3DA34BC(double a1)
{
  if (TVAppFeature.isEnabled.getter(10))
  {
    v3 = sub_1E3C2F8E8();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 preferredContentSizeCategory];

      OUTLINED_FUNCTION_15_0();
      v6 = *(v1 + 120);
      if ((sub_1E4206CA4() & 1) == 0)
      {
        v7 = v5;

        v6 = v7;
      }

      v8 = [objc_opt_self() defaultMetrics];
      OUTLINED_FUNCTION_5_169();
      a1 = v9;
    }
  }

  return a1;
}

uint64_t sub_1E3DA35A0()
{
  v3 = v0;
  OUTLINED_FUNCTION_8();
  sub_1E3DA4CE8(qword_1EE27FEE0, v4, type metadata accessor for TeamStatsLayout);
  OUTLINED_FUNCTION_8_10();
  sub_1E4200514();
  sub_1E4200594();

  if (TVAppFeature.isEnabled.getter(10))
  {
    v1 = sub_1E3DA3E00(18.0);
    sub_1E3DA3E00(20.0);
    if (OUTLINED_FUNCTION_23_80())
    {
      v5 = v2;
    }

    else
    {
      *&v5 = v1;
    }

    v6 = v5;
  }

  else if (TVAppFeature.isEnabled.getter(10))
  {
    v6 = 0x4034000000000000;
  }

  else
  {
    v6 = 0x402C000000000000;
  }

  OUTLINED_FUNCTION_3_0();
  *(v3 + 112) = v6;
  *(v3 + 120) = 0;
  sub_1E3DA3E00(5.0);
  OUTLINED_FUNCTION_31_59();
  OUTLINED_FUNCTION_23_80();
  OUTLINED_FUNCTION_20_90();
  OUTLINED_FUNCTION_3_0();
  *(v3 + 144) = v1;
  sub_1E3DA3E00(4.0);
  OUTLINED_FUNCTION_31_59();
  OUTLINED_FUNCTION_23_80();
  OUTLINED_FUNCTION_20_90();
  OUTLINED_FUNCTION_3_0();
  *(v3 + 152) = v1;
  if (TVAppFeature.isEnabled.getter(10))
  {
    sub_1E3DA3E00(4.0);
    OUTLINED_FUNCTION_31_59();
    OUTLINED_FUNCTION_23_80();
    OUTLINED_FUNCTION_20_90();
  }

  else if (TVAppFeature.isEnabled.getter(10))
  {
    v1 = 12.0;
  }

  else
  {
    v1 = 6.0;
  }

  OUTLINED_FUNCTION_3_0();
  *(v3 + 176) = v1;
  if (TVAppFeature.isEnabled.getter(10))
  {
    v7 = sub_1E3DA3E00(6.0);
    sub_1E3DA3E00(6.0);
    OUTLINED_FUNCTION_23_80();
    OUTLINED_FUNCTION_20_90();
  }

  else
  {
    TVAppFeature.isEnabled.getter(10);
    v7 = 4.0;
  }

  OUTLINED_FUNCTION_3_0();
  *(v3 + 184) = v7;
  if (TVAppFeature.isEnabled.getter(10))
  {
    v8 = sub_1E3DA3E00(0.5);
    if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
    {
      v8 = 0.0;
    }
  }

  else
  {
    TVAppFeature.isEnabled.getter(10);
    v8 = 0.25;
  }

  OUTLINED_FUNCTION_3_0();
  *(v3 + 192) = v8;
  if (TVAppFeature.isEnabled.getter(10))
  {
    sub_1E3DA3E00(6.0);
    OUTLINED_FUNCTION_31_59();
    OUTLINED_FUNCTION_23_80();
    OUTLINED_FUNCTION_20_90();
  }

  OUTLINED_FUNCTION_3_0();
  *(v3 + 216) = 0;
  *(v3 + 224) = 0;
  *(v3 + 232) = 8.0;
  *(v3 + 240) = 0;
  if (TVAppFeature.isEnabled.getter(10))
  {
    v9 = sub_1E3DA3E00(14.0);
    v10 = v9 + v9;
    v11 = sub_1E3DA3E00(10.0);
    *v57 = sub_1E3952C10(v10, v11 + v11);
    *&v57[8] = v12;
    *&v57[16] = v13;
    *&v57[24] = v14;
    v57[32] = 0;
    v15 = sub_1E3952C10(68.0, 40.0);
    OUTLINED_FUNCTION_19_105(v15, v16, v17, v18);
    v79 = xmmword_1E42B5E20;
    v80 = xmmword_1E42B5E30;
    v81 = 0;
    __asm { FMOV            V1.2D, #14.0 }

    v76 = xmmword_1E429D550;
    v77 = _Q1;
    v78 = 0;
    type metadata accessor for UIEdgeInsets();
    v25 = v24;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_4_10(v26, v27, v28, v29, v30, v31, v32, v33, *v57, *&v57[8], *&v57[16], *&v57[24], *&v57[32], *&v57[40], *&v57[48], *&v57[56], *&v57[64], *&v57[72], *&v57[80], *&v57[88], *&v57[96], *&v57[104], *&v57[112], *&v57[120], *&v57[128], *&v57[136], *&v57[144], *&v57[152], *&v57[160], *&v57[168], *&v57[176], *&v57[184], *&v57[192], *&v57[200], *&v57[208], *&v57[216], *&v57[224], *&v57[232], *&v58, *&v59, *&v60, *&v61, *&v62, *&v63, *&v64, *(&v64 + 1), v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75[0]);
    v34 = sub_1E3C3DE00(v25);
    OUTLINED_FUNCTION_107(v34, v35, v36, v37, v38, v39, v40, v41, *v57, *&v57[8], *&v57[16], *&v57[24], *&v57[32], *&v57[40], *&v57[48], *&v57[56], *&v57[64], *&v57[72], *&v57[80], *&v57[88], *&v57[96], *&v57[104], *&v57[112], *&v57[120], *&v57[128], *&v57[136], *&v57[144], *&v57[152], *&v57[160], *&v57[168], *&v57[176], *&v57[184], *&v57[192], *&v57[200], *&v57[208], *&v57[216], *&v57[224], *&v57[232], v58, v59, v60, v61, v62, v63, v64);
    sub_1E3C2FCB8(v57, __src);
    memcpy(v57, __src, 0xE9uLL);
    v42 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_17_8(v42, v43, v44, v45, v46, v47, v48, v49, *v57);
    OUTLINED_FUNCTION_30_66();
  }

  if (TVAppFeature.isEnabled.getter(10))
  {
    v50 = sub_1E3DA3E00(36.0);
    v51 = TVAppFeature.isEnabled.getter(10);
    if (v51)
    {
      v50 = 0.0;
    }
  }

  else
  {
    v51 = 0;
    if (TVAppFeature.isEnabled.getter(10))
    {
      v50 = 36.0;
    }

    else
    {
      v50 = 21.0;
    }
  }

  OUTLINED_FUNCTION_3_0();
  *(v3 + 160) = v50;
  *(v3 + 168) = v51 & 1;
  result = TVAppFeature.isEnabled.getter(10);
  if (result)
  {
    v53 = sub_1E3DA3EE4();
    v54 = sub_1E3DA3E00(22.0);
    (*(*v53 + 1816))(*&v54, 0);

    v55 = sub_1E3DA40FC();
    v56 = sub_1E3DA3E00(22.0);
    (*(*v55 + 1816))(COERCE_DOUBLE(*&v56), 0);
  }

  return result;
}

uint64_t sub_1E3DA3A74()
{
  type metadata accessor for TeamStatsLayout();
  OUTLINED_FUNCTION_29_77();
  swift_allocObject();
  v0[13] = sub_1E3DA48A4();
  type metadata accessor for PlayerStatsLayout();
  v1 = sub_1E4048408();
  v2 = *MEMORY[0x1E69DDC20];
  v0[14] = v1;
  v0[15] = v2;
  v0[16] = 0;
  v3 = v2;
  v0[17] = sub_1E3DA2DCC();
  v4 = sub_1E3C2F9A0();

  if (TVAppFeature.isEnabled.getter(10))
  {
    LOBYTE(v33[0]) = 2;
    LOBYTE(v42) = 8;
    sub_1E3C2FC98();
    LOBYTE(v40) = v41;
    sub_1E3C3DE00(&unk_1F5D999E0);
    LOBYTE(v38) = v39;
    sub_1E3C3DE00(&unk_1F5D999E0);
    LOBYTE(v36) = v37;
    sub_1E3C3DE00(&unk_1F5D999E0);
    LOBYTE(v34) = v35;
    sub_1E3C2FCB8(v33, &v43);
    LODWORD(v33[0]) = v43;
    WORD2(v33[0]) = WORD2(v43);
    v5 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_17_8(v5, v6, v7, v8, v9, v10, v11, v12, v33[0]);
    OUTLINED_FUNCTION_30_66();
    v13 = [objc_opt_self() systemGray3Color];
    v33[0] = sub_1E3E5F2C0();
    v14 = sub_1E3755B54();
    sub_1E3C2FC98();
    v41 = v42;
    sub_1E3C3DE00(v14);
    v39 = v40;
    sub_1E3C3DE00(v14);
    v37 = v38;
    sub_1E3C3DE00(v14);
    v35 = v36;
    sub_1E3C3DE00(v14);
    v33[6] = v34;
    sub_1E3C2FCB8(v33, &v43);
    v15 = v43;
    v16 = v44;
    v17 = v45;
    v18 = v46;
    v19 = v47;
    v20 = v48;
    v33[0] = v43;
    v33[1] = v44;
    v33[2] = v45;
    v33[3] = v46;
    v33[4] = v47;
    v33[5] = v48;
    v21 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_17_8(v21, v22, v23, v24, v25, v26, v27, v28, v33[0]);
    OUTLINED_FUNCTION_30_66();
  }

  sub_1E3C37CBC(v29, 23);

  sub_1E3C37CBC(v30, 242);

  sub_1E3C37CBC(v31, 243);

  sub_1E3DA2FE0();

  return v4;
}

uint64_t sub_1E3DA3D48()
{
}

uint64_t sub_1E3DA3D88()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3DA3DD0()
{
  v0 = sub_1E3DA3D88();

  return MEMORY[0x1EEE6BDC0](v0, 144, 7);
}

double sub_1E3DA3E00(double a1)
{
  if (TVAppFeature.isEnabled.getter(10))
  {
    v3 = sub_1E3C2F8E8();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 preferredContentSizeCategory];

      OUTLINED_FUNCTION_15_0();
      v6 = *(v1 + 104);
      if ((sub_1E4206CA4() & 1) == 0)
      {
        v7 = v5;

        v6 = v7;
      }

      v8 = [objc_opt_self() defaultMetrics];
      OUTLINED_FUNCTION_5_169();
      a1 = v9;
    }
  }

  return a1;
}

uint64_t sub_1E3DA3EE4()
{
  if (*(v0 + 288))
  {
    v1 = *(v0 + 288);
  }

  else
  {
    v2 = v0;
    v3 = TVAppFeature.isEnabled.getter(10);
    type metadata accessor for TextLayout();
    v1 = sub_1E383BCC0();
    v4 = sub_1E3DA3E00(22.0);
    (*(*v1 + 1816))(COERCE_DOUBLE(*&v4), 0);
    sub_1E4205F14();
    OUTLINED_FUNCTION_9_2();
    (*(v5 + 1768))();

    v6 = *sub_1E3E60364();
    v7 = *(*v1 + 680);
    v8 = v6;
    v9 = OUTLINED_FUNCTION_8_10();
    v7(v9);

    OUTLINED_FUNCTION_9_2();
    (*(v10 + 1792))(6);
    if (v3)
    {
      v11 = OUTLINED_FUNCTION_26_85();
      v12(v11);
      OUTLINED_FUNCTION_9_2();
      (*(v13 + 1840))(4);
    }

    *(v2 + 288) = v1;
  }

  return v1;
}

uint64_t sub_1E3DA40FC()
{
  if (*(v0 + 304))
  {
    v1 = *(v0 + 304);
  }

  else
  {
    v2 = v0;
    v3 = TVAppFeature.isEnabled.getter(10);
    type metadata accessor for TextLayout();
    v4 = sub_1E383BCC0();
    v1 = v4;
    if (v3)
    {
      v5 = sub_1E3DA3E00(22.0);
      (*(*v1 + 1816))(*&v5, 0);
      sub_1E4205F14();
      OUTLINED_FUNCTION_9_2();
      (*(v6 + 1768))();

      v7 = *sub_1E3E5FD88();
      v8 = *(*v1 + 680);
      v9 = v7;
      v10 = OUTLINED_FUNCTION_8_10();
      v8(v10);

      OUTLINED_FUNCTION_9_2();
      (*(v11 + 1792))(6);
      OUTLINED_FUNCTION_9_2();
      v12 = OUTLINED_FUNCTION_26_85();
      v13(v12);
      OUTLINED_FUNCTION_9_2();
      (*(v14 + 1840))(4);
    }

    else
    {
      (*(*v4 + 1696))(14);

      v15 = *sub_1E3E5FD88();
      v16 = *(*v1 + 680);
      v17 = v15;
      v18 = OUTLINED_FUNCTION_8_10();
      v16(v18);
    }

    *(v2 + 304) = v1;
  }

  return v1;
}

id sub_1E3DA439C()
{
  v0 = TVAppFeature.isEnabled.getter(10);
  v1 = [objc_opt_self() whiteColor];
  v2 = v1;
  v3 = 0.3;
  if (v0)
  {
    v3 = 0.2;
  }

  v4 = [v1 colorWithAlphaComponent_];

  return v4;
}

uint64_t sub_1E3DA4420()
{
  v0 = TVAppFeature.isEnabled.getter(10);
  type metadata accessor for TextLayout();
  v1 = sub_1E383BCC0();
  v2 = *v1;
  if (v0)
  {
    (*(v2 + 1936))(3);
    OUTLINED_FUNCTION_8();
    (*(v3 + 1696))(17);
    OUTLINED_FUNCTION_36();
    (*(v4 + 1792))(5);

    sub_1E3E5FDEC();
    OUTLINED_FUNCTION_22_3();
    v5 = *(*v1 + 680);
    v6 = v0;
    v5(v0);

    OUTLINED_FUNCTION_36();
    (*(v7 + 2272))(1);
    OUTLINED_FUNCTION_36();
    v8 = OUTLINED_FUNCTION_26_85();
    v9(v8);
  }

  else
  {
    (*(v2 + 1696))(19);
    OUTLINED_FUNCTION_8();
    (*(v10 + 1792))(7);

    sub_1E3E5FDEC();
    OUTLINED_FUNCTION_22_3();
    v11 = *(*v1 + 680);
    v12 = v0;
    v11(v0);
  }

  return v1;
}

uint64_t sub_1E3DA466C(uint64_t (*a1)(uint64_t), void *a2)
{
  v4 = TVAppFeature.isEnabled.getter(10);
  type metadata accessor for TextLayout();
  v5 = sub_1E383BCC0();
  v6 = *(*v5 + 1696);
  if (v4)
  {
    v6(17);
    OUTLINED_FUNCTION_8();
    (*(v7 + 1792))(5);

    v9 = *a1(v8);
    v10 = *(*v5 + 680);
    v11 = v9;
    v10(v9);

    OUTLINED_FUNCTION_36();
    (*(v12 + 2272))(a2);
    OUTLINED_FUNCTION_36();
    v13 = OUTLINED_FUNCTION_26_85();
    v14(v13);
    OUTLINED_FUNCTION_36();
    (*(v15 + 2176))(5, 0);
  }

  else
  {
    v6(19);

    a1(v16);
    OUTLINED_FUNCTION_22_3();
    v17 = *(*v5 + 680);
    v18 = a2;
    v17(a2);
  }

  return v5;
}