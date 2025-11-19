void *sub_1C7193C40(void *result)
{
  switch(*result >> 61)
  {
    case 2:
      return result;
    case 3:
      OUTLINED_FUNCTION_0_53();
      swift_beginAccess();
      v10 = *(v1 + 128);
      result = sub_1C719164C(&v9);
      if (!v2)
      {
        v8 = v9;
        OUTLINED_FUNCTION_3_58();
        sub_1C7193E1C();

        v10 = 0x8000000000000000;
        OUTLINED_FUNCTION_3_58();
        result = sub_1C7194268(v6);
      }

      break;
    case 4:
      OUTLINED_FUNCTION_0_53();
      swift_beginAccess();
      v4 = *(v1 + 128);
      switch(v4 >> 62)
      {
        case 1uLL:
          goto LABEL_8;
        case 2uLL:
          v4 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
LABEL_8:

          v10 = v4;
          OUTLINED_FUNCTION_3_58();
          sub_1C7193E1C();
          if (!v2)
          {

            OUTLINED_FUNCTION_0_53();
            swift_beginAccess();
            v9 = *(v1 + 112);
            sub_1C7191FEC(&v8);
            OUTLINED_FUNCTION_3_58();
            sub_1C719487C(v7);
          }

          break;
        default:
          sub_1C7195E04();
          OUTLINED_FUNCTION_166_0();
          *v5 = v4;
          *(v5 + 8) = 2;
          swift_willThrow();

          break;
      }

      break;
    default:
      v11 = 0;
      OUTLINED_FUNCTION_3_58();
      result = sub_1C7194DF4(v3);
      break;
  }

  return result;
}

uint64_t sub_1C7193E1C()
{
  OUTLINED_FUNCTION_28_16();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0);
    v3 = OUTLINED_FUNCTION_39_19();
    OUTLINED_FUNCTION_42_19(v3, xmmword_1C755BAB0);
    v26[0] = 0;
    v26[1] = v4;
    sub_1C755180C();
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x1CCA5CD70](0xD000000000000019);
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    v5 = *(v0 + 128);

    sub_1C73E6C1C(v5);

    OUTLINED_FUNCTION_104();
    sub_1C73E6C1C(v1);
    OUTLINED_FUNCTION_5_45(0);
  }

  OUTLINED_FUNCTION_56();
  result = swift_beginAccess();
  v7 = *(v0 + 128);
  switch(v1 >> 62)
  {
    case 1uLL:
      v16 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v8 = 24;
      switch(v7 >> 62)
      {
        case 1uLL:
          v17 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v18 = v7 & 0x3FFFFFFFFFFFFFFFLL;
          v20 = *(v18 + 16);
          v19 = *(v18 + 24);

          sub_1C7036A90(v17, v20);
          if ((v21 & 1) == 0)
          {

            goto LABEL_20;
          }

          v22 = sub_1C7043F5C(v16, v19);

          if ((v22 & 1) == 0)
          {
            goto LABEL_20;
          }

          break;
        case 2uLL:
          goto LABEL_14;
        case 3uLL:
          goto LABEL_28;
        default:
          goto LABEL_18;
      }

      goto LABEL_27;
    case 2uLL:
      switch(v7 >> 62)
      {
        case 1uLL:
          goto LABEL_18;
        case 2uLL:
          v10 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v11 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

          sub_1C7036A90(v10, v11);
          LOBYTE(v11) = v12;

          if ((v11 & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_27;
        default:
LABEL_28:
          OUTLINED_FUNCTION_16_18();
          result = OUTLINED_FUNCTION_6_49();
          __break(1u);
          break;
      }

      break;
    case 3uLL:
      v13 = 1;
      v8 = 48;
      v14 = 0;
      v15 = v1;
      switch(v7 >> 62)
      {
        case 1uLL:
          goto LABEL_14;
        case 2uLL:
          goto LABEL_12;
        case 3uLL:
          return result;
        default:
          goto LABEL_22;
      }

    default:
      v8 = 48;
      switch(v7 >> 62)
      {
        case 1uLL:
          goto LABEL_14;
        case 2uLL:
LABEL_12:
          v8 = 24;
LABEL_14:
          v15 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + v8);

          v14 = 1;
          v13 = 1;
          goto LABEL_22;
        case 3uLL:
LABEL_18:

          v14 = 0;
          v13 = 0;
          goto LABEL_21;
        default:
          memcpy(__dst, (v7 + 16), sizeof(__dst));
          memcpy(v26, (v1 + 16), sizeof(v26));

          v9 = static StoryState.RetrievedAssetInfo.== infix(_:_:)(v26, __dst);

          if (v9)
          {
            break;
          }

LABEL_20:
          v14 = 0;
          v13 = 1;
LABEL_21:
          v15 = v1;
LABEL_22:
          v23 = *(v0 + 128);
          *(v0 + 128) = v15;

          if (v13)
          {
            v26[0] = v23;
            OUTLINED_FUNCTION_3_58();
            sub_1C71941CC();
          }

          else if (v14)
          {
            v26[0] = v1;
            OUTLINED_FUNCTION_3_58();
            sub_1C7193E1C(v24);
          }

          break;
      }

LABEL_27:

      break;
  }

  return result;
}

void sub_1C71941CC()
{
  OUTLINED_FUNCTION_25_19();
  if (!v1)
  {
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    OUTLINED_FUNCTION_12_37();
    sub_1C71910A4(v2);
    if (!v0)
    {
      OUTLINED_FUNCTION_3_58();
      sub_1C71937C4(v3);

      OUTLINED_FUNCTION_3_58();
      sub_1C7194268(v4);
    }
  }
}

uint64_t sub_1C7194268(unint64_t *a1)
{
  v3 = v2;
  v4 = v1;
  v57 = sub_1C754DFFC();
  v6 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - v9;
  v11 = *a1;
  if (*(v1 + 168) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0);
    v12 = OUTLINED_FUNCTION_39_19();
    OUTLINED_FUNCTION_42_19(v12, xmmword_1C755BAB0);
    v58 = 0;
    v59 = v13;
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    v58 = 0xD000000000000019;
    v59 = v14;
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    v61 = *(v1 + 136);

    v15 = StoryState.TraitState.description.getter();
    MEMORY[0x1CCA5CD70](v15);

    OUTLINED_FUNCTION_104();
    v61 = v11;
    v16 = StoryState.TraitState.description.getter();
    MEMORY[0x1CCA5CD70](v16);

    v17 = v58;
    v18 = v59;
    v12[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v12[2].n128_u64[0] = v17;
    v12[2].n128_u64[1] = v18;
    OUTLINED_FUNCTION_6_6();
  }

  OUTLINED_FUNCTION_56();
  result = swift_beginAccess();
  v20 = *(v1 + 136);
  v21 = v20 >> 62;
  if (v11 >> 62)
  {
    if (v11 >> 62 == 1)
    {
      v22 = v11 & 0x3FFFFFFFFFFFFFFFLL;
      if (v21)
      {
        if (v21 != 1)
        {
          OUTLINED_FUNCTION_16_18();
          result = OUTLINED_FUNCTION_6_49();
          __break(1u);
          return result;
        }

        v20 &= 0x3FFFFFFFFFFFFFFFuLL;
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    if (!v21)
    {
      v23 = 0;
      v24 = 1;
      goto LABEL_22;
    }

    if (v21 != 1)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (v21)
  {
    if (v21 != 1)
    {
LABEL_10:

      v23 = 0;
      v24 = 0;
LABEL_22:
      v25 = v11;
      goto LABEL_31;
    }

LABEL_13:
    v25 = *((v20 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

    v23 = 1;
    v24 = 1;
    goto LABEL_31;
  }

  v22 = v11;
LABEL_15:
  v51 = v1;
  v53 = v2;
  v26 = *(v20 + 16);
  v27 = *(v22 + 16);
  v28 = *(v27 + 16);
  v29 = MEMORY[0x1E69E7CC0];
  v52 = v11;
  v54 = v26;
  if (v28)
  {
    v62 = MEMORY[0x1E69E7CC0];
    sub_1C75504FC();
    sub_1C75504FC();

    sub_1C716E10C(0, v28, 0);
    v30 = v62;
    v56 = v27;
    v31 = v27 + 32;
    do
    {
      sub_1C6FB5E28(v31, &v58);
      __swift_project_boxed_opaque_existential_1(&v58, v60);
      sub_1C755182C();
      __swift_destroy_boxed_opaque_existential_1(&v58);
      v62 = v30;
      v33 = *(v30 + 16);
      v32 = *(v30 + 24);
      if (v33 >= v32 >> 1)
      {
        OUTLINED_FUNCTION_15(v32);
        OUTLINED_FUNCTION_116_0();
        sub_1C716E10C(v34, v35, v36);
        v30 = v62;
      }

      *(v30 + 16) = v33 + 1;
      (*(v6 + 32))(v30 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v33, v10, v57);
      v31 += 40;
      --v28;
    }

    while (v28);

    v26 = v54;
    v29 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    sub_1C75504FC();
  }

  v37 = *(v26 + 16);
  v38 = v55;
  if (v37)
  {
    v62 = v29;
    v39 = OUTLINED_FUNCTION_105();
    sub_1C716E10C(v39, v40, v41);
    v42 = v62;
    v43 = v26 + 32;
    v56 = v6 + 32;
    do
    {
      sub_1C6FB5E28(v43, &v58);
      __swift_project_boxed_opaque_existential_1(&v58, v60);
      sub_1C755182C();
      __swift_destroy_boxed_opaque_existential_1(&v58);
      v62 = v42;
      v45 = *(v42 + 16);
      v44 = *(v42 + 24);
      if (v45 >= v44 >> 1)
      {
        OUTLINED_FUNCTION_15(v44);
        OUTLINED_FUNCTION_116_0();
        sub_1C716E10C(v46, v47, v48);
        v42 = v62;
      }

      *(v42 + 16) = v45 + 1;
      (*(v6 + 32))(v42 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v45, v38, v57);
      v43 += 40;
      --v37;
    }

    while (v37);
  }

  sub_1C7003CFC();
  v50 = v49;

  if (v50)
  {
  }

  v23 = 0;
  v4 = v51;
  v11 = v52;
  v20 = *(v51 + 136);
  v24 = 1;
  v25 = v52;
  v3 = v53;
LABEL_31:
  *(v4 + 136) = v25;

  if (!v24 || (v58 = v20, sub_1C71947F8(), !v3))
  {
    if (v23)
    {
      v58 = v11;
      sub_1C7194268(&v58);
    }
  }
}

void sub_1C71947F8()
{
  OUTLINED_FUNCTION_25_19();
  if (v1 == 1)
  {
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    OUTLINED_FUNCTION_12_37();
    sub_1C7191FEC(v2);
    if (!v0)
    {
      OUTLINED_FUNCTION_3_58();
      sub_1C719487C(v3);
    }
  }
}

uint64_t sub_1C719487C(unint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  if (*(v1 + 168) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0);
    v4 = OUTLINED_FUNCTION_39_19();
    OUTLINED_FUNCTION_42_19(v4, xmmword_1C755BAB0);
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&v37 = 0xD00000000000001ALL;
    *(&v37 + 1) = v5;
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();

    v6 = StoryState.PromptState.description.getter();
    MEMORY[0x1CCA5CD70](v6);

    OUTLINED_FUNCTION_104();
    *&v34 = v3;
    v7 = StoryState.PromptState.description.getter();
    MEMORY[0x1CCA5CD70](v7);

    v8 = *(&v37 + 1);
    v4[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v4[2].n128_u64[0] = 0xD00000000000001ALL;
    v4[2].n128_u64[1] = v8;
    OUTLINED_FUNCTION_6_6();
  }

  OUTLINED_FUNCTION_56();
  result = swift_beginAccess();
  v10 = *(v1 + 112);
  switch(v3 >> 62)
  {
    case 1uLL:
      v11 = 48;
      switch(v10 >> 62)
      {
        case 1uLL:
          sub_1C6F65BE8(0, &qword_1EDD10100);

          v28 = sub_1C75513EC();

          if ((v28 & 1) == 0)
          {
            goto LABEL_27;
          }

          break;
        case 2uLL:
          goto LABEL_24;
        case 3uLL:
          goto LABEL_23;
        default:
          goto LABEL_22;
      }

    case 2uLL:
      result = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v13 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v11 = 88;
      switch(v10 >> 62)
      {
        case 1uLL:
          goto LABEL_22;
        case 2uLL:
          v14 = (v10 & 0x3FFFFFFFFFFFFFFFLL);
          v15 = v14[4];
          v16 = v14[5];
          if (result != v14[2] || *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) != v14[3])
          {
            result = sub_1C7551DBC();
            if ((result & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          if (v12 != v15 || v13 != v16)
          {
            result = sub_1C7551DBC();
            if ((result & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          break;
        case 3uLL:
          goto LABEL_24;
        default:
          goto LABEL_36;
      }

      return result;
    case 3uLL:
      v19 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v20 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v37 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v38 = v20;
      v39[0] = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      *(v39 + 9) = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x41);
      switch(v10 >> 62)
      {
        case 2uLL:
LABEL_22:

          v25 = 0;
          v26 = 0;
          goto LABEL_28;
        case 3uLL:
          v21 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v22 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          v34 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v35 = v22;
          v36[0] = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
          *(v36 + 9) = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x41);

          sub_1C708C6E4(v19, v21);
          if ((v23 & 1) == 0)
          {

            goto LABEL_27;
          }

          v32[0] = v37;
          v32[1] = v38;
          v33[0] = v39[0];
          *(v33 + 9) = *(v39 + 9);
          v30[0] = v34;
          v30[1] = v35;
          v31[0] = v36[0];
          *(v31 + 9) = *(v36 + 9);
          v24 = static LLMSamplingParameters.== infix(_:_:)(v32, v30);

          if ((v24 & 1) == 0)
          {
            goto LABEL_27;
          }

          break;
        default:
LABEL_36:
          result = OUTLINED_FUNCTION_6_49();
          __break(1u);
          return result;
      }

    default:
      v11 = 48;
      switch(v10 >> 62)
      {
        case 1uLL:
LABEL_16:

LABEL_27:
          v25 = 0;
          v26 = 1;
LABEL_28:
          v27 = v3;
          goto LABEL_29;
        case 2uLL:
          goto LABEL_24;
        case 3uLL:
LABEL_23:
          v11 = 88;
LABEL_24:
          v27 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + v11);

          v25 = 1;
          v26 = 1;
LABEL_29:
          v29 = *(v2 + 112);
          *(v2 + 112) = v27;

          if (v26)
          {
            *&v37 = v29;
            OUTLINED_FUNCTION_3_58();
            sub_1C7194CF8();
          }

          else if (v25)
          {
            *&v37 = v3;
            OUTLINED_FUNCTION_3_58();
            sub_1C719487C();
          }

        default:
          return result;
      }
  }
}

void sub_1C7194CF8()
{
  OUTLINED_FUNCTION_25_19();
  if ((v1 - 2) >= 2)
  {
    if (v1)
    {
      OUTLINED_FUNCTION_0_53();
      swift_beginAccess();
      OUTLINED_FUNCTION_12_37();
      sub_1C719164C(v3);
      if (!v0)
      {
        OUTLINED_FUNCTION_3_58();
        sub_1C7193E1C(v4);

        OUTLINED_FUNCTION_3_58();
        sub_1C7194268(v5);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_58();
      sub_1C7193E1C(v2);
      if (!v0)
      {
        OUTLINED_FUNCTION_27_1();
        *(swift_allocObject() + 16) = 0;
        OUTLINED_FUNCTION_3_58();
        sub_1C71937C4();
      }
    }
  }
}

uint64_t sub_1C7194DF4(uint64_t *a1)
{
  v3 = *a1;
  if (*(v1 + 168) == 1)
  {
    v42 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0);
    *(OUTLINED_FUNCTION_39_19() + 16) = xmmword_1C755BAB0;
    *&v35 = 0;
    *(&v35 + 1) = 0xE000000000000000;
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&v31[0] = 0xD00000000000001ELL;
    *(&v31[0] + 1) = v4;
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    v5 = *(v1 + 144);
    if (v5)
    {
      v27 = *(v5 + 32);
      v29 = *(v5 + 16);
      v6 = *(v5 + 48);
      v7 = *(v5 + 56);
      v8 = *(v5 + 57);
      v40 = 0;
      v41 = 0xE000000000000000;

      MEMORY[0x1CCA5CD70](0x6F74737265646E75, 0xEB0000000028646FLL);
      v35 = v29;
      v36 = v27;
      v37 = v6;
      v38 = v7;
      v39 = v8;
      sub_1C75519EC();
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    else
    {
      v10 = 0xE400000000000000;
      v9 = OUTLINED_FUNCTION_32_16();
    }

    MEMORY[0x1CCA5CD70](v9, v10);

    v11 = 0xE400000000000000;
    OUTLINED_FUNCTION_104();
    if (v3)
    {
      v28 = *(v3 + 32);
      v30 = *(v3 + 16);
      v12 = *(v3 + 48);
      v13 = *(v3 + 56);
      v14 = *(v3 + 57);
      v40 = 0;
      v41 = 0xE000000000000000;
      v15 = OUTLINED_FUNCTION_1_66();
      MEMORY[0x1CCA5CD70](v15);
      v35 = v30;
      v36 = v28;
      v37 = v12;
      v38 = v13;
      v39 = v14;
      sub_1C75519EC();
      v16 = 0;
      v11 = 0xE000000000000000;
    }

    else
    {
      v16 = OUTLINED_FUNCTION_32_16();
    }

    MEMORY[0x1CCA5CD70](v16, v11);

    OUTLINED_FUNCTION_5_45(*&v31[0]);
  }

  OUTLINED_FUNCTION_56();
  result = swift_beginAccess();
  v18 = *(v1 + 144);
  if (!v3)
  {
    if (!v18)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (!v18 || (v19 = *(v3 + 57), v20 = *(v3 + 56), v21 = *(v3 + 48), v22 = *(v18 + 32), v23 = *(v18 + 48), v24 = *(v18 + 56), v25 = *(v18 + 57), v26 = *(v3 + 32), v35 = *(v3 + 16), v36 = v26, v37 = v21, v38 = v20, v39 = v19, v31[0] = *(v18 + 16), v31[1] = v22, v32 = v23, v33 = v24, v34 = v25, result = static StoryPromptAttributes.== infix(_:_:)(&v35, v31), (result & 1) == 0))
  {
LABEL_14:
    *(v1 + 144) = v3;
  }

  return result;
}

uint64_t sub_1C71950BC(char *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_56();
  result = swift_beginAccess();
  *(v1 + 152) = v2;
  return result;
}

uint64_t sub_1C71950F8(uint64_t a1)
{
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 160) = a1;
  sub_1C75504FC();
}

uint64_t StoryState.deinit()
{

  sub_1C7195390(v0 + OBJC_IVAR____TtC18PhotosIntelligence10StoryState_promptOrigin, type metadata accessor for StoryState.PromptOrigin);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t StoryState.__deallocating_deinit()
{
  StoryState.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C7195258(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoryState.PromptOrigin(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C71952BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2183C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C719532C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoryState.PromptOrigin(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7195390(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C7195410()
{
  result = type metadata accessor for StoryState.PromptOrigin(319);
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence10StoryStateC05AssetD0O(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

unint64_t get_enum_tag_for_layout_string_18PhotosIntelligence10StoryStateC05TraitD0O(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1C7195904(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 9))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C7195944(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C71959A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7C && *(a1 + 8))
    {
      v2 = *a1 + 123;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7B)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1C71959F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1C7195A80(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C7195AC0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t *sub_1C7195B20(unint64_t *result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_1C7195B58(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1C7195BAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1C7195BFC(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_1C7195C34(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 8))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1C7195C88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1C7195D34()
{
  sub_1C7195D8C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1C7195D8C()
{
  if (!qword_1EC218838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2183C0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC218838);
    }
  }
}

unint64_t sub_1C7195E04()
{
  result = qword_1EC218840;
  if (!qword_1EC218840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218840);
  }

  return result;
}

void *OUTLINED_FUNCTION_21_27@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char __dst)
{

  return memcpy(&__dst, ((a1 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0x50uLL);
}

void OUTLINED_FUNCTION_40_19()
{

  JUMPOUT(0x1CCA5CD70);
}

id sub_1C7195EE4(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C754DC8C();
  v4 = [v2 initWithContentsOfURL_];

  v5 = sub_1C754DD2C();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t GlobalTraitGeneratorConfiguration.init(numberOfGlobalTraits:llmVersion:contextSize:minimumNumberOfAssetsRequiredForGlobalTrait:maximumNumberOfAssetsRequiredForGlobalTrait:minimumRatioOfAssetsRequiredForGlobalTrait:maximumNumberOfTokensForLifeContext:computeNumberOfTokens:useGlobalTraitsV3:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, unsigned __int8 a11)
{
  v41 = a3;
  v42 = a6;
  v37 = a4;
  v38 = a5;
  v39 = a2;
  v36 = a1;
  v40 = a11;
  v15 = sub_1C754E15C();
  OUTLINED_FUNCTION_3_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v33 - v22;
  if (a7)
  {
    v24 = a7;
  }

  else
  {
    v24 = sub_1C7196254;
  }

  if (a7)
  {
    v25 = a8;
  }

  else
  {
    v25 = 0;
  }

  v34 = v25;
  v35 = v24;
  sub_1C6F9EE84(a7);
  sub_1C754E0AC();
  sub_1C754E04C();
  v26 = *(v17 + 8);
  v26(v20, v15);
  sub_1C754E03C();
  v27 = sub_1C719647C(v23);
  sub_1C6F6E5B4(a7);
  result = (v26)(v23, v15);
  v29 = v37;
  *a9 = v36;
  *(a9 + 8) = v29;
  *(a9 + 16) = v38;
  *(a9 + 24) = a10;
  *(a9 + 32) = v27;
  *(a9 + 40) = 1;
  v31 = v41;
  v30 = v42;
  *(a9 + 48) = v39;
  *(a9 + 56) = v31;
  *(a9 + 64) = v30;
  v32 = v34;
  *(a9 + 72) = v35;
  *(a9 + 80) = v32;
  *(a9 + 88) = v40;
  return result;
}

uint64_t sub_1C7196154()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD07540);
  __swift_project_value_buffer(v0, qword_1EDD07540);
  return sub_1C754FEFC();
}

uint64_t GlobalTraitGeneratorConfiguration.computeNumberOfTokens.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

void sub_1C7196254(uint64_t a1, uint64_t a2)
{
  if (a1 || a2 != 0xE000000000000000)
  {
    OUTLINED_FUNCTION_103();
    if ((sub_1C7551DBC() & 1) == 0)
    {
      v5 = objc_allocWithZone(MEMORY[0x1E696AE70]);
      v6 = sub_1C71C8B80(0x5A2D417A2D615E5BLL, 0xED00005D20392D30, 0);
      if (v2)
      {
      }

      else
      {
        v7 = v6;
        if (v6)
        {
          v8 = objc_allocWithZone(MEMORY[0x1E696AE70]);
          v9 = sub_1C71C8B80(0x5D275C090A5BLL, 0xE600000000000000, 0);
          v11 = v9;
          if (v9)
          {
            sub_1C6FB5E8C();
            v17 = *(sub_1C755152C() + 16);

            OUTLINED_FUNCTION_103();
            v12 = sub_1C75507FC();
            OUTLINED_FUNCTION_103();
            v13 = sub_1C755065C();
            v14 = [v7 numberOfMatchesInString:v13 options:0 range:{0, v12, 32, 0xE100000000000000, a1, a2}];

            OUTLINED_FUNCTION_103();
            v15 = sub_1C755065C();
            v16 = [v11 numberOfMatchesInString:v15 options:0 range:{0, v12}];

            if (!__OFADD__(v17, v14))
            {
              if (!__OFADD__(&v14[v17], v16))
              {
                return;
              }

              __break(1u);
            }

            __break(1u);
            return;
          }
        }
      }

      sub_1C7196EF4();
      swift_allocError();
      *v10 = 0;
      *(v10 + 8) = 2;
      swift_willThrow();
    }
  }
}

uint64_t sub_1C719647C(uint64_t a1)
{
  v77 = sub_1C754E15C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v74 = v8;
  v75 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v73 - v12;
  v14 = sub_1C754E13C();
  OUTLINED_FUNCTION_3_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2177A8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v73 - v21;
  v23 = [objc_allocWithZone(type metadata accessor for StoryRemoteConfiguration()) init];
  v76 = a1;
  sub_1C754E14C();
  sub_1C754E12C();
  (*(v16 + 8))(v19, v14);
  v24 = sub_1C754E07C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v24);
  v78 = v23;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C7196DE0(v22);
    sub_1C7196E48();
    v26 = swift_allocError();
    *v27 = 1;
    swift_willThrow();
LABEL_11:
    v46 = v77;
    if (qword_1EDD07538 != -1)
    {
      OUTLINED_FUNCTION_0_87();
    }

    v47 = sub_1C754FF1C();
    __swift_project_value_buffer(v47, qword_1EDD07540);
    (*(v3 + 16))(v6, v76, v46);
    v48 = v26;
    v49 = sub_1C754FEEC();
    v50 = sub_1C755119C();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v80[0] = swift_slowAlloc();
      *v51 = 136315394;
      sub_1C7196E9C();
      v52 = sub_1C7551D8C();
      v54 = v53;
      (*(v3 + 8))(v6, v46);
      v55 = sub_1C6F765A4(v52, v54, v80);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      v79 = v26;
      v56 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
      v57 = sub_1C75506EC();
      v59 = sub_1C6F765A4(v57, v58, v80);

      *(v51 + 14) = v59;
      _os_log_impl(&dword_1C6F5C000, v49, v50, "Failed to load file for global traits deny list for locale %s: %s. Using empty deny list.", v51, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {

      (*(v3 + 8))(v6, v46);
    }

    return MEMORY[0x1E69E7CD0];
  }

  v28 = sub_1C754E05C();
  v30 = v29;
  (*(*(v24 - 8) + 8))(v22, v24);
  sub_1C6F85DE8();
  v73[0] = v28;
  sub_1C70A9E44();
  v31 = *(v74 + 16);
  v73[1] = v13;
  v31(v10, v13, v75);
  v32 = sub_1C7195EE4(v10);
  if (!v32 || (v33 = v32, v80[0] = 0, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00), sub_1C755049C(), v33, !v80[0]))
  {

    sub_1C7196E48();
    v26 = swift_allocError();
    *v43 = 0;
    swift_willThrow();
    v44 = OUTLINED_FUNCTION_2_58();
    v45(v44);
    goto LABEL_11;
  }

  v34 = sub_1C6FE3768(v73[0], v30, v80[0]);

  if (!v34)
  {
    if (qword_1EDD07538 != -1)
    {
      OUTLINED_FUNCTION_0_87();
    }

    v62 = sub_1C754FF1C();
    __swift_project_value_buffer(v62, qword_1EDD07540);
    sub_1C75504FC();
    v63 = sub_1C754FEEC();
    v64 = sub_1C75511BC();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v80[0] = v66;
      *v65 = 136315138;
      v67 = sub_1C6F765A4(v73[0], v30, v80);

      *(v65 + 4) = v67;
      _os_log_impl(&dword_1C6F5C000, v63, v64, "No deny list found for language code %s - using empty deny list", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    v71 = OUTLINED_FUNCTION_2_58();
    v72(v71);
    return MEMORY[0x1E69E7CD0];
  }

  if (qword_1EDD07538 != -1)
  {
    OUTLINED_FUNCTION_0_87();
  }

  v35 = sub_1C754FF1C();
  __swift_project_value_buffer(v35, qword_1EDD07540);
  sub_1C75504FC();
  sub_1C75504FC();
  v36 = sub_1C754FEEC();
  v37 = sub_1C75511BC();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v80[0] = swift_slowAlloc();
    *v38 = 136380931;
    v39 = MEMORY[0x1CCA5D090](v34, MEMORY[0x1E69E6158]);
    v41 = sub_1C6F765A4(v39, v40, v80);

    *(v38 + 4) = v41;
    *(v38 + 12) = 2080;
    v42 = sub_1C6F765A4(v73[0], v30, v80);

    *(v38 + 14) = v42;
    _os_log_impl(&dword_1C6F5C000, v36, v37, "Using deny list %{private}s for language code %s", v38, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  v68 = v78;
  v60 = sub_1C706D154(v34);

  v69 = OUTLINED_FUNCTION_2_58();
  v70(v69);
  return v60;
}

uint64_t sub_1C7196D38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1C7196D78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C7196DE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2177A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C7196E48()
{
  result = qword_1EC218848;
  if (!qword_1EC218848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218848);
  }

  return result;
}

unint64_t sub_1C7196E9C()
{
  result = qword_1EDD0CB88;
  if (!qword_1EDD0CB88)
  {
    sub_1C754E15C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0CB88);
  }

  return result;
}

unint64_t sub_1C7196EF4()
{
  result = qword_1EC218C40;
  if (!qword_1EC218C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218C40);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GlobalTraitGeneratorConfiguration.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C7197028()
{
  result = qword_1EC218850;
  if (!qword_1EC218850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218850);
  }

  return result;
}

PHFetchOptions __swiftcall StoryPhotoLibraryContext.sharingFilterFetchOptions()()
{
  v1 = *(v0 + 8);
  v2 = [*v0 librarySpecificFetchOptions];
  [v2 setSharingFilter_];
  return v2;
}

uint64_t StoryPhotoLibraryContext.init(photoLibrary:sharingFilter:generationCache:)@<X0>(uint64_t result@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t static CropUtilities.cropVariants(forAsset:targetSize:faces:)(void *a1, void *a2, double a3, double a4)
{
  v9 = a3 / a4;
  v10 = sub_1C71973D8(a1);
  v11 = sub_1C7197554(a1, v10, a2, v9);

  v17 = MEMORY[0x1E69E7CC0];
  sub_1C6FB6304();
  OUTLINED_FUNCTION_5_46();
  while (1)
  {
    if (a1 == v10)
    {

      v17 = sub_1C71CC8EC(v15);
      sub_1C7199160(&v17);

      sub_1C7197774(&v17);
      return v17;
    }

    if (v4)
    {
      v12 = MEMORY[0x1CCA5DDD0](v10, v11);
    }

    else
    {
      if (v10 >= *(v5 + 16))
      {
        goto LABEL_14;
      }

      v12 = *(v11 + 8 * v10 + 32);
    }

    v13 = v12;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    [v12 (v6 + 1698)];
    if (v14 <= v9)
    {
    }

    else
    {
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
    }

    ++v10;
  }

  __break(1u);
LABEL_14:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C71973D8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215008);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C75604F0;
  *(v2 + 32) = xmmword_1C756A560;
  v3 = [a1 mediaAnalysisProperties];
  v4 = [v3 faceCount];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_13:
    OUTLINED_FUNCTION_15(v5);
    OUTLINED_FUNCTION_8_36();
    v2 = v12;
    goto LABEL_4;
  }

  if (!v4)
  {

    return v2;
  }

  OUTLINED_FUNCTION_8_36();
  v2 = v6;
  v6[2] = 3;
  v6[6] = 3;
  v5 = v6[3];
  if (v5 <= 7)
  {
    goto LABEL_13;
  }

LABEL_4:
  *(v2 + 16) = 4;
  *(v2 + 56) = 6;
  v7 = [a1 curationProperties];
  if (sub_1C7199CD0(v7) && (v8 = sub_1C6FB6304(), , v8 > 0))
  {
    v10 = *(v2 + 16);
    v9 = *(v2 + 24);
    if (v10 >= v9 >> 1)
    {
      OUTLINED_FUNCTION_15(v9);
      OUTLINED_FUNCTION_8_36();
      v2 = v13;
    }

    *(v2 + 16) = v10 + 1;
    *(v2 + 8 * v10 + 32) = 4;
  }

  else
  {
  }

  return v2;
}

unint64_t sub_1C7197554(void *a1, uint64_t a2, void *a3, double a4)
{
  v7 = *MEMORY[0x1E695F050];
  v8 = *(MEMORY[0x1E695F050] + 8);
  v9 = *(MEMORY[0x1E695F050] + 16);
  v10 = *(MEMORY[0x1E695F050] + 24);
  v11 = [a1 mediaAnalysisProperties];
  v12 = [v11 faceCount];
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  if (v12)
  {
    [a1 faceAreaMinX];
    v13 = v17;
    [a1 faceAreaMinY];
    v14 = v18;
    [a1 faceAreaMaxX];
    v20 = v19;
    [a1 faceAreaMaxY];
    v15 = v20 - v13;
    v16 = v21 - v14;
  }

  v44 = *&v16;
  v45 = v15;
  v46 = v14;
  v47 = v13;
  v22 = [a1 curationProperties];
  v23 = sub_1C7199CD0(v22);
  if (a3)
  {
    sub_1C7198620(a3);
    OUTLINED_FUNCTION_1_67();
  }

  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  v25 = [a1 pixelWidth];
  v26 = [a1 pixelHeight];
  [a1 acceptableCropRect];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  [a1 preferredCropRect];
  v42 = sub_1C7197F0C(a2, v25, v26, v24, 1, v35, v36, v37, a4, v28, v30, v32, v34, v38, v39, v40, v41, v47, v46, v45, v44, v7, v8, v9, v10);

  return v42;
}

void sub_1C7197774(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >> 62)
  {
    v2 = sub_1C75516BC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 >= 2)
  {
    v3 = v1 & 0xC000000000000001;
    sub_1C6FB6330(0, (v1 & 0xC000000000000001) == 0, v1);
    v4 = (v1 & 0xC000000000000001) != 0 ? MEMORY[0x1CCA5DDD0](0, v1) : *(v1 + 32);
    v5 = v4;
    v6 = [v4 cropType];

    if (v6 == 1)
    {
      sub_1C6FB6330(1, v3 == 0, v1);
      v7 = v3 ? MEMORY[0x1CCA5DDD0](1, v1) : *(v1 + 40);
      v8 = v7;
      v9 = [v7 cropType];

      if (v9 == 3)
      {
        sub_1C6FB6330(0, v3 == 0, v1);
        if (v3)
        {
          v10 = MEMORY[0x1CCA5DDD0](0, v1);
        }

        else
        {
          v10 = *(v1 + 32);
        }

        v11 = v10;
        [v10 cropScore];
        v13 = v12;

        sub_1C6FB6330(1, v3 == 0, v1);
        if (v3)
        {
          v14 = MEMORY[0x1CCA5DDD0](1, v1);
        }

        else
        {
          v14 = *(v1 + 40);
        }

        v15 = v14;
        [v14 cropScore];
        v17 = v16;

        if (v13 - v17 < 0.1)
        {
          sub_1C73B3944(0, 1uLL);
        }
      }
    }
  }
}

uint64_t static CropUtilities.cropVariants(forAsset:faces:)(void *a1, void *a2)
{
  PFDeviceScreenSize();

  return static CropUtilities.cropVariants(forAsset:targetSize:faces:)(a1, a2, v4, v5);
}

void static CropUtilities.cropVariantsFromSignals(requestedCropTypes:aspectRatio:sourcePixelWidth:sourcePixelHeight:acceptableCropRect:preferredCropRect:normalizedFaceAreaRect:objectSaliencyRects:gazeAreaRect:isDenormalized:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, double a18, double a19, double a20, uint64_t a21, double a22, double a23, double a24, double a25)
{
  v26 = a5;
  v29 = a2;
  v30 = a24;
  v31 = a25;
  v32 = a22;
  v33 = a23;
  v34 = a20;
  v35 = a21;
  v36 = a19;
  v37 = *(a1 + 16);
  v38 = MEMORY[0x1E69E7CC0];
  if (v37)
  {
    v75 = MEMORY[0x1E69E7CC0];
    sub_1C716E678();
    v43 = v75;
    v44 = (a1 + 32);
    v25 = *(v75 + 16);
    do
    {
      v46 = *v44++;
      v45 = v46;
      v75 = v43;
      v47 = *(v43 + 24);
      if (v25 >= v47 >> 1)
      {
        OUTLINED_FUNCTION_15(v47);
        sub_1C716E678();
        v43 = v75;
      }

      *(v43 + 16) = v25 + 1;
      *(v43 + 8 * v25++ + 32) = v45;
      --v37;
    }

    while (v37);
    v48 = a12;
    v49 = a13;
    v50 = a10;
    v51 = a11;
    v29 = a2;
    v52 = a8;
    v53 = a9;
    v38 = MEMORY[0x1E69E7CC0];
    v54 = a6;
    v55 = a7;
    v26 = a5;
    v56 = a17;
  }

  else
  {
    OUTLINED_FUNCTION_3_59();
    v59 = v58;
    v60 = sub_1C7197DAC();
    a18 = v59;
    v36 = a19;
    v34 = a20;
    v35 = a21;
    v32 = a22;
    v33 = a23;
    v30 = a24;
    v31 = a25;
    v43 = v60;
    v48 = a12;
    v49 = a13;
    v50 = a10;
    v51 = a11;
    v52 = a8;
    v53 = a9;
    v54 = a6;
    v55 = a7;
    v56 = a17;
  }

  v61 = sub_1C7197F0C(v43, v29, a3, a4, v26 & 1, v40, v41, v42, v54, v55, v52, v53, v50, v51, v48, v49, v56, a18, v36, v34, v35, v32, v33, v30, v31);

  v75 = v38;
  sub_1C6FB6304();
  OUTLINED_FUNCTION_5_46();
  while (1)
  {
    if (a4 == v29)
    {

      sub_1C7197774(&v75);
      return;
    }

    if (v43)
    {
      v62 = MEMORY[0x1CCA5DDD0](v29, v61);
    }

    else
    {
      if (v29 >= MEMORY[0x10])
      {
        goto LABEL_21;
      }

      v62 = *(v61 + 8 * v29 + 32);
    }

    v63 = v62;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    [v62 (v25 + 1698)];
    if (v64 <= *&v56)
    {
    }

    else
    {
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
    }

    ++v29;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1C7197DAC()
{
  OUTLINED_FUNCTION_10_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215008);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C75604F0;
  *(v0 + 32) = xmmword_1C756A560;
  OUTLINED_FUNCTION_0_88();
  OUTLINED_FUNCTION_3_59();
  if (!CGRectEqualToRect(v9, v11))
  {
    OUTLINED_FUNCTION_8_36();
    v0 = v1;
    *(v1 + 16) = 3;
    *(v1 + 48) = 3;
  }

  if (sub_1C6FB6304() >= 1)
  {
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    if (v3 >= v2 >> 1)
    {
      OUTLINED_FUNCTION_15(v2);
      OUTLINED_FUNCTION_8_36();
      v0 = v7;
    }

    *(v0 + 16) = v3 + 1;
    *(v0 + 8 * v3 + 32) = 4;
  }

  OUTLINED_FUNCTION_3_59();
  if (!CGRectEqualToRect(v10, v12))
  {
    v5 = *(v0 + 16);
    v4 = *(v0 + 24);
    if (v5 >= v4 >> 1)
    {
      OUTLINED_FUNCTION_15(v4);
      OUTLINED_FUNCTION_8_36();
      v0 = v8;
    }

    *(v0 + 16) = v5 + 1;
    *(v0 + 8 * v5 + 32) = 6;
  }

  return v0;
}

unint64_t sub_1C7197F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, double a18, double a19, double a20, uint64_t a21, double a22, double a23, double a24, double a25)
{
  v99.origin.x = CGRectMake(0.0);
  r2 = v99.origin.x;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v97.size.width = a20 * 1.1;
  v97.size.height = *&a21 * 1.1;
  v28 = a18 + a20 * 0.5;
  v29 = a19 + *&a21 * 0.5;
  v97.origin.x = v28 + a20 * 1.1 * -0.5;
  v97.origin.y = v29 + *&a21 * 1.1 * -0.5;
  v99.origin.y = v23;
  v99.size.width = v25;
  v99.size.height = v27;
  CGRectIntersection(v97, v99);
  v90 = a20;
  v98.size.width = v90 + v90;
  v98.size.height = *&a21 + *&a21;
  v98.origin.x = v28 + (v90 + v90) * -0.5;
  v98.origin.y = v29 + (*&a21 + *&a21) * -0.5;
  v100.origin.x = r2;
  v100.origin.y = v23;
  v100.size.width = v25;
  v100.size.height = v27;
  CGRectIntersection(v98, v100);
  if (sub_1C6FB6304())
  {
    sub_1C6FB6330(0, (a4 & 0xC000000000000001) == 0, a4);
    isUniquelyReferenced_nonNull_bridgeObject = 0;
    if ((a4 & 0xC000000000000001) != 0)
    {
      goto LABEL_52;
    }

    sub_1C6FB6330(0, 1, a4);
    v31 = *(a4 + 32);
LABEL_4:
    v32 = v31;
    v33 = *&v90;
    MEMORY[0x1CCA5E7F0]();
  }

  else
  {
    v33 = *&a20;
  }

  v96 = MEMORY[0x1E69E7CC0];
  v34 = *(a1 + 16);
  if (v34)
  {
    v35 = 0;
    v90 = a25;
    a1 += 32;
    v94 = MEMORY[0x1E69E7CC0];
    v88 = v34;
    v89 = a2;
    v85 = a5;
    v84 = a3;
    v87 = a1;
    while (1)
    {
      if (*(a1 + 8 * v35) == 5)
      {
        OUTLINED_FUNCTION_7_42();
        OUTLINED_FUNCTION_6_50();
        v51 = sub_1C7198878(v36, a3, v43, v44, v45, v46, v47, v48, v49, v50, v37, v38, v39, v40, v41, v42, v81, v82, v83, v33, a21);
        MEMORY[0x1CCA5D040]();
        v52 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v52 >> 1)
        {
          OUTLINED_FUNCTION_15(v52);
          sub_1C7550B9C();
        }

        sub_1C7550BEC();

        v94 = v96;
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_7_42();
      OUTLINED_FUNCTION_6_50();
      v63 = sub_1C7198C18(v53, a2, a3, v54, v55, v56, v57, v58, v59, v60, v61, v62, v81, *&v82, *&v83, *&v33, *&a21, a22, a23, a24, a25);
      v64 = v63;
      v65 = v63 >> 62;
      if (v63 >> 62)
      {
        v66 = sub_1C75516BC();
      }

      else
      {
        v66 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a2 = v94;
      a4 = v94 >> 62;
      if (v94 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1C75516BC();
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v93 = v66;
      v67 = __OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v66);
      v68 = isUniquelyReferenced_nonNull_bridgeObject + v66;
      if (v67)
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        MEMORY[0x1CCA5DDD0](isUniquelyReferenced_nonNull_bridgeObject, a4);
        swift_unknownObjectRelease();
        sub_1C6FB6330(0, 0, a4);
        v31 = MEMORY[0x1CCA5DDD0](0, a4);
        goto LABEL_4;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        break;
      }

      if (a4)
      {
        goto LABEL_22;
      }

LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1C75518CC();
      a2 = isUniquelyReferenced_nonNull_bridgeObject;
      v69 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v94 = a2;
      v70 = *(v69 + 16);
      a4 = (*(v69 + 24) >> 1) - v70;
      v71 = v69 + 8 * v70;
      v92 = v69;
      if (v65)
      {
        v72 = sub_1C75516BC();
        if (!v72)
        {
LABEL_38:

          v77 = a2;
          if (v93 > 0)
          {
            goto LABEL_47;
          }

          goto LABEL_39;
        }

        a2 = v72;
        isUniquelyReferenced_nonNull_bridgeObject = sub_1C75516BC();
        if (a4 < isUniquelyReferenced_nonNull_bridgeObject)
        {
          goto LABEL_49;
        }

        if (a2 < 1)
        {
          goto LABEL_51;
        }

        v86 = isUniquelyReferenced_nonNull_bridgeObject;
        a4 = v71 + 32;
        sub_1C7199C6C();
        v73 = 0;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215660);
          v74 = sub_1C6FDD09C(v95, v73, v64);
          v76 = *v75;
          v74(v95, 0);
          *(a4 + 8 * v73++) = v76;
        }

        while (a2 != v73);
        a5 = v85;
        a3 = v84;
        a1 = v86;
      }

      else
      {
        a1 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!a1)
        {
          goto LABEL_38;
        }

        if (a4 < a1)
        {
          goto LABEL_50;
        }

        sub_1C6F65BE8(0, &qword_1EDD0CE98);
        swift_arrayInitWithCopy();
      }

      v77 = v94;
      if (a1 < v93)
      {
        goto LABEL_47;
      }

      if (a1 > 0)
      {
        v78 = *(v92 + 16);
        v67 = __OFADD__(v78, a1);
        v79 = v78 + a1;
        if (v67)
        {
          goto LABEL_48;
        }

        *(v92 + 16) = v79;
      }

LABEL_39:
      v96 = v77;
      v34 = v88;
      a2 = v89;
      a1 = v87;
LABEL_40:
      if (++v35 == v34)
      {
        return v94;
      }
    }

    if (!a4)
    {
      v69 = v94 & 0xFFFFFFFFFFFFFF8;
      if (v68 <= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_22:
    sub_1C75516BC();
    goto LABEL_23;
  }

  return MEMORY[0x1E69E7CC0];
}

double sub_1C7198620(void *a1)
{
  v2 = swift_allocObject();
  v3 = *(MEMORY[0x1E695F050] + 16);
  *(v2 + 16) = *MEMORY[0x1E695F050];
  *(v2 + 32) = v3;
  v7[4] = sub_1C7199D40;
  v7[5] = v2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1C7067B48;
  v7[3] = &block_descriptor_13;
  v4 = _Block_copy(v7);

  [a1 enumerateObjectsUsingBlock_];
  _Block_release(v4);
  swift_beginAccess();
  v5 = *(v2 + 16);

  return v5;
}

uint64_t sub_1C7198764(void *a1, uint64_t a2, uint64_t a3, double *a4)
{
  [a1 gazeRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v33.origin.x = CGRectMake(-1.0);
  v33.origin.y = v14;
  v33.size.width = v15;
  v33.size.height = v16;
  v30.origin.x = v7;
  v30.origin.y = v9;
  v30.size.width = v11;
  v30.size.height = v13;
  result = CGRectEqualToRect(v30, v33);
  if ((result & 1) == 0)
  {
    swift_beginAccess();
    v18 = a4[2];
    v19 = a4[3];
    v20 = a4[4];
    v21 = a4[5];
    [a1 gazeRect];
    v34.origin.x = v22;
    v34.origin.y = v23;
    v34.size.width = v24;
    v34.size.height = v25;
    v31.origin.x = v18;
    v31.origin.y = v19;
    v31.size.width = v20;
    v31.size.height = v21;
    v32 = CGRectUnion(v31, v34);
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
    result = swift_beginAccess();
    a4[2] = x;
    a4[3] = y;
    a4[4] = width;
    a4[5] = height;
  }

  return result;
}

id sub_1C7198878(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, double a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v36[1] = *MEMORY[0x1E69E9840];
  CGRectMake(0.0);
  v35 = 0;
  v36[0] = 0.0;
  v34 = 1;
  v26 = [objc_opt_self() deviceConfigurationForOrientation_];
  if (!v26)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v27 = v26;
  [objc_opt_self() bestCropRectV2ForPosterClassification:1 layoutConfiguration:v26 sourcePixelWidth:a1 sourcePixelHeight:a2 sourcePreferredCropRectNormalized:v36 sourceAcceptableCropRectNormalized:&v35 sourceFaceAreaRectNormalized:a8 outputCropScore:a9 outputLayoutScore:a10 outputClockOverlapAcceptable:{a17, a4, a5, a6, a7, a18, a19, a20, a21, &v34}];
  OUTLINED_FUNCTION_1_67();

  result = OUTLINED_FUNCTION_15_38(objc_allocWithZone(PNCropVariant), sel_initWithAspectRatio_scaleFactor_cropScore_cropType_cropRect_, a3, 1.0, v36[0]);
  if (!result)
  {
    goto LABEL_5;
  }

  return result;
}

void static CropUtilities.computeIOU(_:_:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a3 != 0.0 && a4 != 0.0)
  {
    v9 = *MEMORY[0x1E69BDDB0];
    v10 = *(MEMORY[0x1E69BDDB0] + 8);
    v11 = v10 == a4 && v9 == a3;
    if (!v11 && a3 * a4 > 0.0 && a7 != 0.0 && a8 != 0.0)
    {
      v12 = v10 == a8 && v9 == a7;
      if (!v12 && a7 * a8 > 0.0)
      {
        OUTLINED_FUNCTION_2_59();
        CGRectGetMinX(v13);
        v14.origin.x = OUTLINED_FUNCTION_0_88();
        CGRectGetMinX(v14);
        OUTLINED_FUNCTION_2_59();
        CGRectGetMinY(v15);
        v16.origin.x = OUTLINED_FUNCTION_0_88();
        CGRectGetMinY(v16);
        OUTLINED_FUNCTION_2_59();
        CGRectGetMaxX(v17);
        v18.origin.x = OUTLINED_FUNCTION_0_88();
        CGRectGetMaxX(v18);
        OUTLINED_FUNCTION_2_59();
        CGRectGetMaxY(v19);
        v20.origin.x = OUTLINED_FUNCTION_0_88();
        CGRectGetMaxY(v20);
      }
    }
  }
}

uint64_t sub_1C7198BC8()
{
  OUTLINED_FUNCTION_10_41();
  v4 = (v3 >= 0.0) & ~CGRectIsNull(v6);
  if (v2 < 0.0)
  {
    v4 = 0;
  }

  if (v1 <= 0.0)
  {
    v4 = 0;
  }

  if (v0 > 0.0)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

id sub_1C7198C18(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, CGFloat a13, double a14, double a15, double a16, double a17, double a18, double a19, double a20, double a21)
{
  v107[1] = *MEMORY[0x1E69E9840];
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v26 = OUTLINED_FUNCTION_9_43();
  switch(a1)
  {
    case 0:
      height = a13;
      x = v31;
      y = v32;
      width = v33;
      r2 = v34;
      v99 = v28;
      v101 = v29;
      v103 = v30;
      if ((sub_1C7198BC8() & 1) == 0)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_13_39();
      *&v26 = CGRectUnion(v108, v113);
      v35 = v37;
      v36 = v38;
      goto LABEL_20;
    case 1:
      v60 = v28;
      v61 = v29;
      v62 = v30;
      v63 = v34;
      v64 = sub_1C7198BC8();
      v65 = v63;
      v66 = v62;
      v67 = v63;
      v68 = v60;
      v69 = v61;
      v70 = v62;
      if ((v64 & 1) == 0)
      {
        goto LABEL_11;
      }

      static CropUtilities.computeIOU(_:_:)(v63, v60, v61, v62, a14, a15, a16, a17);
      if (v71 <= 0.5)
      {
        return MEMORY[0x1E69E7CC0];
      }

      OUTLINED_FUNCTION_13_39();
      *&v67 = CGRectIntersection(v111, v115);
      v69 = v72;
      v70 = v73;
      v66 = v62;
      v65 = v63;
LABEL_11:
      v74 = v60;
      v75 = v61;
      a21 = v67;
      a20 = v68;
      a19 = v69;
      a18 = v70;
      v76 = v66;
      v77 = v65;
      v116.origin.x = CGRectMake(0.0);
      v116.origin.y = v78;
      v116.size.width = v79;
      v116.size.height = v80;
      v112.size.width = v75 * 1.2;
      v112.size.height = v76 * 1.2;
      v112.origin.x = v77 + v75 * 0.5 + v75 * 1.2 * -0.5;
      v112.origin.y = v74 + v76 * 0.5 + v76 * 1.2 * -0.5;
      v110 = CGRectIntersection(v112, v116);
      goto LABEL_12;
    case 2:
      OUTLINED_FUNCTION_12_38();
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;
      height = v47;
      width = v48;
      y = v49;
      x = v50;
      v51 = sub_1C7198BC8();
      v26 = v46;
      v27 = v44;
      v35 = v42;
      v36 = v40;
      if (v51)
      {
        goto LABEL_20;
      }

      return MEMORY[0x1E69E7CC0];
    case 3:
      OUTLINED_FUNCTION_11_35();
      OUTLINED_FUNCTION_12_38();
      v101 = v82;
      v103 = v81;
      r2 = v84;
      v99 = v83;
      goto LABEL_15;
    case 4:
      OUTLINED_FUNCTION_11_35();
      r2 = v86;
      v99 = v85;
      v101 = v88;
      v103 = v87;
      OUTLINED_FUNCTION_0_88();
LABEL_15:
      if ((sub_1C7198BC8() & 1) == 0)
      {
        return MEMORY[0x1E69E7CC0];
      }

      v89 = OUTLINED_FUNCTION_0_88();
      x = OUTLINED_FUNCTION_14_36(v89, v90, v91, v92);
      y = v93;
      width = v94;
      height = v95;
LABEL_17:
      v26 = r2;
      v27 = v99;
      v35 = v101;
      v36 = v103;
      goto LABEL_20;
    case 5:
      goto LABEL_20;
    case 6:
      v100 = v31;
      v102 = v32;
      v104 = v33;
      OUTLINED_FUNCTION_0_88();
      if ((sub_1C7198BC8() & 1) == 0)
      {
        return MEMORY[0x1E69E7CC0];
      }

      v56 = OUTLINED_FUNCTION_0_88();
      OUTLINED_FUNCTION_14_36(v56, v57, v58, v59);
      OUTLINED_FUNCTION_1_67();
      v114.origin.x = v100;
      v114.origin.y = v102;
      v114.size.width = v104;
      v114.size.height = a13;
      v110 = CGRectUnion(v109, v114);
LABEL_12:
      v36 = a18;
      v35 = a19;
      x = v110.origin.x;
      v26 = a21;
      y = v110.origin.y;
      v27 = a20;
      width = v110.size.width;
      height = v110.size.height;
LABEL_20:
      v106 = MEMORY[0x1E69E7CC0];
      v107[0] = 0.0;
      [objc_opt_self() bestCropRectV2ForAspectRatio:a2 zoom:a3 sourcePixelWidth:v107 sourcePixelHeight:a5 sourceEssentialAreaRect:1.0 sourceSecondaryEssentialAreaRect:v26 outputCropScore:{v27, v35, v36, *&x, *&y, *&width, *&height}];
      OUTLINED_FUNCTION_1_67();
      if (a4)
      {
        CGRectMake(0.0);
      }

      result = OUTLINED_FUNCTION_15_38(objc_allocWithZone(PNCropVariant), sel_initWithAspectRatio_scaleFactor_cropScore_cropType_cropRect_, a5, 1.0, v107[0]);
      if (result)
      {
        MEMORY[0x1CCA5D040]();
        v97 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v97 >> 1)
        {
          OUTLINED_FUNCTION_15(v97);
          sub_1C7550B9C();
        }

        sub_1C7550BEC();
        return v106;
      }

      else
      {
        __break(1u);
      }

      return result;
    default:
      v26 = OUTLINED_FUNCTION_9_43();
      goto LABEL_20;
  }
}

id CropUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CropUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CropUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CropUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CropUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C7199160(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C7423D10();
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C71991DC(v6);
  return sub_1C755193C();
}

void sub_1C71991DC(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1C7551D7C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1C739D560(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1C71993B0(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1C71992BC(0, v3, 1, a1);
  }
}

void sub_1C71992BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v10 = v6;
      do
      {
        v11 = *v10;
        v12 = v8;
        v13 = v11;
        [v12 cropScore];
        v15 = v14;
        [v13 cropScore];
        v17 = v16;

        if (v17 >= v15)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v18 = *v10;
        v8 = *(v10 + 8);
        *v10 = v8;
        *(v10 + 8) = v18;
        v10 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 += 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C71993B0(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v114 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    v5 = v116;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_95:
      v99 = v6 + 16;
      v100 = *(v6 + 2);
      while (v100 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_131;
        }

        v101 = v6;
        v102 = &v6[16 * v100];
        v103 = *v102;
        v104 = &v99[2 * v100];
        v105 = *(v104 + 1);
        sub_1C7199A10((*a3 + 8 * *v102), (*a3 + 8 * *v104), (*a3 + 8 * v105), v114);
        if (v5)
        {
          break;
        }

        if (v105 < v103)
        {
          goto LABEL_119;
        }

        if (v100 - 2 >= *v99)
        {
          goto LABEL_120;
        }

        *v102 = v103;
        *(v102 + 1) = v105;
        v106 = *v99 - v100;
        if (*v99 < v100)
        {
          goto LABEL_121;
        }

        v100 = *v99 - 1;
        sub_1C7423CF4(v104 + 16, v106, v104);
        *v99 = v100;
        v6 = v101;
      }

LABEL_103:

      return;
    }

LABEL_128:
    v6 = sub_1C7420830();
    goto LABEL_95;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = &selRef_clsSceneClassifications;
  while (1)
  {
    v8 = v5++;
    if (v5 < v4)
    {
      v108 = v6;
      v9 = v8;
      v10 = (*a3 + 8 * v8);
      v11 = 8 * v9;
      v13 = *v10;
      v12 = v10 + 2;
      v14 = *(*a3 + 8 * v5);
      v15 = v13;
      [v14 v7[42]];
      v17 = v16;
      [v15 v7[42]];
      v19 = v18;

      v111 = v9;
      v20 = v9 + 2;
      while (1)
      {
        v21 = v20;
        if (++v5 >= v4)
        {
          break;
        }

        v22 = *(v12 - 1);
        v23 = *v12;
        v24 = v22;
        [v23 v7[42]];
        v26 = v25;
        [v24 v7[42]];
        v28 = v27;

        ++v12;
        v20 = v21 + 1;
        if (v19 < v17 == v28 >= v26)
        {
          goto LABEL_9;
        }
      }

      v5 = v4;
LABEL_9:
      if (v19 >= v17)
      {
        v6 = v108;
        v8 = v111;
      }

      else
      {
        v8 = v111;
        if (v5 < v111)
        {
          goto LABEL_125;
        }

        if (v111 >= v5)
        {
          v6 = v108;
        }

        else
        {
          if (v4 >= v21)
          {
            v29 = v21;
          }

          else
          {
            v29 = v4;
          }

          v30 = 8 * v29 - 8;
          v31 = v5;
          v32 = v111;
          v6 = v108;
          do
          {
            if (v32 != --v31)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_132;
              }

              v34 = *(v33 + v11);
              *(v33 + v11) = *(v33 + v30);
              *(v33 + v30) = v34;
            }

            ++v32;
            v30 -= 8;
            v11 += 8;
          }

          while (v32 < v31);
        }
      }
    }

    v35 = a3[1];
    if (v5 < v35)
    {
      if (__OFSUB__(v5, v8))
      {
        goto LABEL_124;
      }

      if (v5 - v8 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v5 < v8)
    {
      goto LABEL_123;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC();
      v6 = v97;
    }

    v52 = *(v6 + 2);
    v53 = v52 + 1;
    if (v52 >= *(v6 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v6 = v98;
    }

    *(v6 + 2) = v53;
    v54 = v6 + 32;
    v55 = &v6[16 * v52 + 32];
    *v55 = v8;
    *(v55 + 1) = v5;
    v114 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (v52)
    {
      v113 = v5;
      while (1)
      {
        v56 = v53 - 1;
        v57 = &v54[16 * v53 - 16];
        v58 = &v6[16 * v53];
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v59 = *(v6 + 4);
          v60 = *(v6 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_60:
          if (v62)
          {
            goto LABEL_110;
          }

          v74 = *v58;
          v73 = *(v58 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_113;
          }

          v78 = *(v57 + 1);
          v79 = v78 - *v57;
          if (__OFSUB__(v78, *v57))
          {
            goto LABEL_116;
          }

          if (__OFADD__(v76, v79))
          {
            goto LABEL_118;
          }

          if (v76 + v79 >= v61)
          {
            if (v61 < v79)
            {
              v56 = v53 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v53 < 2)
        {
          goto LABEL_112;
        }

        v81 = *v58;
        v80 = *(v58 + 1);
        v69 = __OFSUB__(v80, v81);
        v76 = v80 - v81;
        v77 = v69;
LABEL_75:
        if (v77)
        {
          goto LABEL_115;
        }

        v83 = *v57;
        v82 = *(v57 + 1);
        v69 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v69)
        {
          goto LABEL_117;
        }

        if (v84 < v76)
        {
          goto LABEL_89;
        }

LABEL_82:
        if (v56 - 1 >= v53)
        {
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v88 = &v54[16 * v56 - 16];
        v89 = *v88;
        v90 = v56;
        v91 = &v54[16 * v56];
        v92 = *(v91 + 1);
        sub_1C7199A10((*a3 + 8 * *v88), (*a3 + 8 * *v91), (*a3 + 8 * v92), v114);
        if (v116)
        {
          goto LABEL_103;
        }

        if (v92 < v89)
        {
          goto LABEL_105;
        }

        v5 = v54;
        v93 = v7;
        v94 = v6;
        v95 = *(v6 + 2);
        if (v90 > v95)
        {
          goto LABEL_106;
        }

        *v88 = v89;
        *(v88 + 1) = v92;
        if (v90 >= v95)
        {
          goto LABEL_107;
        }

        v53 = v95 - 1;
        sub_1C7423CF4(v91 + 16, v95 - 1 - v90, v91);
        *(v94 + 2) = v95 - 1;
        v96 = v95 > 2;
        v6 = v94;
        v7 = v93;
        v54 = v5;
        v5 = v113;
        if (!v96)
        {
          goto LABEL_89;
        }
      }

      v63 = &v54[16 * v53];
      v64 = *(v63 - 8);
      v65 = *(v63 - 7);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_108;
      }

      v68 = *(v63 - 6);
      v67 = *(v63 - 5);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_109;
      }

      v70 = *(v58 + 1);
      v71 = v70 - *v58;
      if (__OFSUB__(v70, *v58))
      {
        goto LABEL_111;
      }

      v69 = __OFADD__(v61, v71);
      v72 = v61 + v71;
      if (v69)
      {
        goto LABEL_114;
      }

      if (v72 >= v66)
      {
        v86 = *v57;
        v85 = *(v57 + 1);
        v69 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v69)
        {
          goto LABEL_122;
        }

        if (v61 < v87)
        {
          v56 = v53 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_89:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_93;
    }
  }

  v36 = (v8 + a4);
  if (__OFADD__(v8, a4))
  {
    goto LABEL_126;
  }

  if (v36 >= v35)
  {
    v36 = a3[1];
  }

  if (v36 < v8)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (v5 == v36)
  {
    goto LABEL_39;
  }

  v109 = v6;
  v37 = *a3;
  v38 = *a3 + 8 * v5 - 8;
  v112 = v8;
  v114 = v36;
  v39 = v8 - v5;
LABEL_32:
  v40 = *(v37 + 8 * v5);
  v41 = v39;
  v42 = v38;
  while (1)
  {
    v43 = *v42;
    v44 = v40;
    v45 = v43;
    [v44 v7[42]];
    v47 = v46;
    [v45 v7[42]];
    v49 = v48;

    if (v49 >= v47)
    {
LABEL_37:
      ++v5;
      v38 += 8;
      --v39;
      if (v5 == v114)
      {
        v5 = v114;
        v6 = v109;
        v8 = v112;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v37)
    {
      break;
    }

    v50 = *v42;
    v40 = *(v42 + 8);
    *v42 = v40;
    *(v42 + 8) = v50;
    v42 -= 8;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

uint64_t sub_1C7199A10(void **a1, id *a2, id *a3, void **a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_1C7423CF8(a1);
    v11 = &a4[v8];
    while (1)
    {
      if (a4 >= v11 || v6 >= a3)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v13 = *a4;
      v14 = *v6;
      v15 = v13;
      [v14 cropScore];
      v17 = v16;
      [v15 cropScore];
      v19 = v18;

      if (v19 >= v17)
      {
        break;
      }

      v20 = v6;
      v21 = v7 == v6++;
      if (!v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
    }

    v20 = a4;
    v21 = v7 == a4++;
    if (v21)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v20;
    goto LABEL_13;
  }

  sub_1C7423CF8(a2);
  v11 = &a4[v9];
  v38 = a4;
LABEL_15:
  v22 = v6 - 1;
  --v5;
  while (v11 > a4 && v6 > v7)
  {
    v24 = v7;
    v25 = v22;
    v26 = *v22;
    v27 = *(v11 - 1);
    v28 = v26;
    [v27 cropScore];
    v30 = v29;
    [v28 cropScore];
    v32 = v31;

    v33 = v5 + 1;
    if (v32 < v30)
    {
      v21 = v33 == v6;
      v34 = v25;
      v6 = v25;
      v7 = v24;
      a4 = v38;
      if (!v21)
      {
        *v5 = *v34;
        v6 = v34;
      }

      goto LABEL_15;
    }

    if (v11 != v33)
    {
      *v5 = *(v11 - 1);
    }

    --v5;
    --v11;
    v22 = v25;
    v7 = v24;
    a4 = v38;
  }

LABEL_28:
  v35 = v11 - a4;
  if (v6 != a4 || v6 >= &a4[v35])
  {
    memmove(v6, a4, 8 * v35);
  }

  return 1;
}

unint64_t sub_1C7199C6C()
{
  result = qword_1EC215668;
  if (!qword_1EC215668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215668);
  }

  return result;
}

uint64_t sub_1C7199CD0(void *a1)
{
  v1 = [a1 objectSaliencyRects];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C6F65BE8(0, &unk_1EDD0CD10);
  v3 = sub_1C7550B5C();

  return v3;
}

uint64_t dispatch thunk of QueryTokenProviding.groundedQueryTokens(prompt:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1C70E8468;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t type metadata accessor for PromptSuggestionQueryTokenProvider()
{
  result = qword_1EC218858;
  if (!qword_1EC218858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C7199F04()
{
  result = sub_1C7091218();
  if (v1 <= 0x3F)
  {
    result = sub_1C754FF1C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C7199F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A8);
  v5[13] = swift_task_alloc();
  v5[14] = type metadata accessor for PromptSuggestion(0);
  v5[15] = swift_task_alloc();
  v6 = sub_1C754F38C();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C719A0B8, 0, 0);
}

uint64_t sub_1C719A0B8()
{
  v60 = v0;
  v1 = v0[10];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  type metadata accessor for PromptSuggestionQueryTokenProvider();
  sub_1C75504FC();
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[8];
    v4 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v59[0] = v7;
    *v6 = 136380675;
    *(v6 + 4) = sub_1C6F765A4(v5, v4, v59);
    _os_log_impl(&dword_1C6F5C000, v2, v3, "Getting grounded query tokens for PromptSuggestion: %{private}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v8 = v0[12];
  v10 = v0[8];
  v9 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  *(inited + 32) = v10;
  *(inited + 40) = v9;
  v12 = *v8;
  sub_1C75504FC();
  v13 = static PromptSuggestionReader.promptSuggestionByPromptText(_:in:sources:)(inited, v12, &unk_1F46A8310);
  swift_setDeallocating();
  sub_1C6FDC9DC();
  sub_1C754F2DC();
  v15 = v0[13];
  v14 = v0[14];
  sub_1C710D950(v13, v15);

  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    sub_1C719AA74(v0[13]);
    sub_1C75504FC();
    v16 = OUTLINED_FUNCTION_4_48();
    v17 = sub_1C75511BC();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = v0[8];
      v18 = v0[9];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v59[0] = v21;
      *v20 = 136380675;
      *(v20 + 4) = sub_1C6F765A4(v19, v18, v59);
      _os_log_impl(&dword_1C6F5C000, v16, v17, "Failed to find backing PHSuggestion for prompt %{private}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v23 = v0[17];
    v22 = v0[18];
    v24 = v0[16];
    v25 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0[10], v1[3]);
    sub_1C754F1AC();
    (*(v23 + 8))(v22, v24);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v26 + 8))(v25);
LABEL_22:
    v46 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v27 = v0[15];
  sub_1C7159368(v0[13], v27);
  v28 = *(v27 + 88);
  if (!*(v28 + 16))
  {
    v36 = OUTLINED_FUNCTION_4_48();
    v37 = sub_1C75511BC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1C6F5C000, v36, v37, "Prompt suggestion has missing query tokens", v38, 2u);
      OUTLINED_FUNCTION_109();
    }

    v40 = v0[17];
    v39 = v0[18];
    v42 = v0[15];
    v41 = v0[16];
    v44 = v0[10];
    v43 = v0[11];

    sub_1C715930C(v42);
    __swift_project_boxed_opaque_existential_1(v44, v1[3]);
    sub_1C754F1AC();
    (*(v40 + 8))(v39, v41);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v45 + 8))(v43);
    goto LABEL_22;
  }

  v29 = v0[15];
  v30 = *(v29 + 136) == v0[8] && *(v29 + 144) == v0[9];
  if (v30 || (sub_1C7551DBC() & 1) != 0)
  {
    v31 = OUTLINED_FUNCTION_4_48();
    v32 = sub_1C755118C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1C6F5C000, v31, v32, "Prompt suggestion might contain music", v33, 2u);
      OUTLINED_FUNCTION_109();
    }

    v34 = v0[15];

    if (*(v34 + 96))
    {
      v35 = *(v34 + 96);
    }

    else
    {
      v35 = MEMORY[0x1E69E7CC0];
    }

    sub_1C75504FC();
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  v59[0] = v28;
  sub_1C75504FC();
  sub_1C6FD33F0(v35);
  v46 = v59[0];
  sub_1C75504FC();
  v49 = OUTLINED_FUNCTION_4_48();
  v50 = sub_1C75511BC();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v59[0] = v52;
    *v51 = 134218242;
    *(v51 + 4) = *(v46 + 16);

    *(v51 + 12) = 2080;
    v53 = MEMORY[0x1CCA5D090](v46, &type metadata for QueryToken);
    v55 = sub_1C6F765A4(v53, v54, v59);

    *(v51 + 14) = v55;
    _os_log_impl(&dword_1C6F5C000, v49, v50, "Found %ld cached query tokens. %s", v51, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v52);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  sub_1C754F2EC();
  v56 = v0[10];
  sub_1C715930C(v0[15]);
  __swift_project_boxed_opaque_existential_1(v56, v1[3]);
  sub_1C754F1AC();
  v57 = OUTLINED_FUNCTION_1_68();
  v58(v57);
LABEL_23:

  v47 = v0[1];

  return v47(v46);
}

uint64_t sub_1C719A8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C719A974;

  return sub_1C7199F88(a1, a2, a3, a4);
}

uint64_t sub_1C719A974(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1C719AA74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t QueryGenerator.addDisambiguationSuggestions(to:retrievedAssetUUIDs:consolidatedAssetUUIDsByMetadataTokenCategoryTypeString:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v1[292] = v0;
  v1[291] = v2;
  v1[290] = v3;
  v1[289] = v4;
  v1[288] = v5;
  v1[287] = v6;
  v1[293] = *(type metadata accessor for QueryTokenSuggestion(0) - 8);
  v1[294] = swift_task_alloc();
  v1[295] = swift_task_alloc();
  v7 = sub_1C754F38C();
  v1[296] = v7;
  v1[297] = *(v7 - 8);
  v1[298] = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1C719AC0C()
{
  v150 = v0;
  v1 = sub_1C754FEEC();
  v2 = sub_1C755117C();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    OUTLINED_FUNCTION_109();
  }

  v8 = *(v0 + 2384);
  v9 = *(v0 + 2320);
  v10 = *(v0 + 2296);

  v139 = v9;
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_1C754F1CC();
  v11 = *(v10 + 16);
  if (!v11)
  {
    v14 = 0;
    v12 = 0;
LABEL_38:
    v52 = sub_1C754FEEC();
    v53 = sub_1C755118C();
    if (OUTLINED_FUNCTION_21_0(v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 134217984;
      *(v54 + 4) = v14;
      _os_log_impl(&dword_1C6F5C000, v52, v8, "Unable to support %ld query tokens that need date and event disambiguation", v54, 0xCu);
      OUTLINED_FUNCTION_109();
    }

    v55 = *(v0 + 2384);
    v56 = *(v0 + 2376);
    v57 = *(v0 + 2368);
    v144 = *(v0 + 2328);
    v58 = *(v0 + 2320);

    sub_1C75504FC();

    __swift_project_boxed_opaque_existential_1(v58, v139[3]);
    OUTLINED_FUNCTION_9_44();
    sub_1C754F1AC();
    (*(v56 + 8))(v55, v57);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v59 + 8))(v144);
    goto LABEL_41;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = (*(v0 + 2296) + 32);
  v16 = MEMORY[0x1E69E7CC8];
  v141 = v15;
  v142 = v11;
  do
  {
    memcpy((v0 + 16), v15, 0x78uLL);
    memcpy(v149, v15, 0x78uLL);
    sub_1C6FCA6E4(v0 + 16, v0 + 136);
    static StoryGenerationUtilities.needsEventDisambiguation(for:)();
    if (v17)
    {
      sub_1C6F6E5B4(v12);
      swift_isUniquelyReferenced_nonNull_native();
      v149[0] = v16;
      sub_1C6FC30F8();
      OUTLINED_FUNCTION_19_29();
      if (v20)
      {
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      v21 = v18;
      LOBYTE(v8) = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218868);
      v22 = OUTLINED_FUNCTION_21_28();
      v16 = v149[0];
      if (v22)
      {
        v23 = sub_1C6FC30F8();
        if ((v8 & 1) != (v24 & 1))
        {
          goto LABEL_45;
        }

        v21 = v23;
      }

      if ((v8 & 1) == 0)
      {
        sub_1C6FCABDC(v21, 2, MEMORY[0x1E69E7CD0], v16);
      }

      sub_1C70F50AC();
      OUTLINED_FUNCTION_24_23((v0 + 2176));
      sub_1C6FDD548(v0 + 2176);
      v20 = __OFADD__(v14++, 1);
      if (v20)
      {
        goto LABEL_106;
      }

      v12 = sub_1C719D928;
    }

    else
    {
      memcpy(v149, (v0 + 16), 0x78uLL);
      static StoryGenerationUtilities.needsDateDisambiguation(for:)();
      if (v25)
      {
        OUTLINED_FUNCTION_14_37();
        swift_isUniquelyReferenced_nonNull_native();
        v149[0] = v16;
        sub_1C6FC30F8();
        OUTLINED_FUNCTION_19_29();
        if (v20)
        {
          goto LABEL_107;
        }

        v28 = v26;
        LOBYTE(v8) = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218868);
        v29 = OUTLINED_FUNCTION_21_28();
        v16 = v149[0];
        if (v29)
        {
          v30 = sub_1C6FC30F8();
          if ((v8 & 1) != (v31 & 1))
          {
LABEL_45:
            OUTLINED_FUNCTION_44();

            sub_1C7551E4C();
            return;
          }

          v28 = v30;
        }

        if ((v8 & 1) == 0)
        {
          sub_1C6FCABDC(v28, 1, MEMORY[0x1E69E7CD0], v16);
        }

        sub_1C70F50AC();
        OUTLINED_FUNCTION_24_23((v0 + 2056));
        sub_1C6FDD548(v0 + 2056);
        v20 = __OFADD__(v14++, 1);
        if (v20)
        {
          goto LABEL_108;
        }

        v13 = sub_1C719D928;
      }

      else
      {
        sub_1C6FDD548(v0 + 16);
      }
    }

    *(v0 + 2408) = v16;
    *(v0 + 2400) = v13;
    v15 += 120;
    *(v0 + 2392) = v12;
    --v11;
  }

  while (v11);
  if (v14 != 1)
  {
    goto LABEL_38;
  }

  v32 = sub_1C6FE13B4(2, v16);
  if (v32)
  {
    v33 = v32;
    sub_1C719D310();
    if (v35)
    {
      goto LABEL_113;
    }

    if (*(v33 + 36) != v34)
    {
      goto LABEL_111;
    }

    OUTLINED_FUNCTION_8_37();
    if (v36 != v38)
    {
      OUTLINED_FUNCTION_20_31(v36, v37);

      OUTLINED_FUNCTION_24_23((v0 + 256));
      sub_1C6FCA6E4(v0 + 256, v0 + 376);
      v63 = sub_1C754FEEC();
      v64 = sub_1C75511BC();
      sub_1C6FDD548(v0 + 256);
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v149[0] = v66;
        *v65 = 136380675;
        v67 = *(v0 + 272);
        v68 = *(v0 + 280);
        sub_1C75504FC();
        v69 = sub_1C6F765A4(v67, v68, v149);

        *(v65 + 4) = v69;
        OUTLINED_FUNCTION_8_1();
        _os_log_impl(v70, v71, v72, v73, v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v66);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      memcpy((v0 + 496), (v0 + 256), 0x78uLL);
      v75 = swift_task_alloc();
      *(v0 + 2416) = v75;
      *v75 = v0;
      v75[1] = sub_1C719B85C;
      OUTLINED_FUNCTION_44();

      sub_1C719BB8C(v76, v77, v78, v79, v80, v81);
      return;
    }
  }

  v39 = sub_1C6FE13B4(1, v16);
  if (!v39)
  {
    goto LABEL_36;
  }

  v40 = v39;
  sub_1C719D310();
  if (v42)
  {
    goto LABEL_114;
  }

  if (*(v40 + 36) != v41)
  {
    goto LABEL_112;
  }

  OUTLINED_FUNCTION_8_37();
  if (v43 == v45)
  {

LABEL_36:
    v46 = *(v0 + 2384);
    v47 = *(v0 + 2376);
    v48 = *(v0 + 2368);
    v49 = *(v0 + 2328);
    v50 = *(v0 + 2320);
    sub_1C75504FC();

    __swift_project_boxed_opaque_existential_1(v50, v139[3]);
    OUTLINED_FUNCTION_9_44();
    sub_1C754F1AC();
    (*(v47 + 8))(v46, v48);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v51 + 8))(v49);
LABEL_41:
    sub_1C6F6E5B4(v12);
    OUTLINED_FUNCTION_14_37();
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_20_31(v43, v44);

  OUTLINED_FUNCTION_24_23((v0 + 616));
  sub_1C6FCA6E4(v0 + 616, v0 + 736);
  v83 = sub_1C754FEEC();
  v84 = sub_1C75511BC();
  sub_1C6FDD548(v0 + 616);
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v149[0] = v86;
    *v85 = 136380675;
    v87 = *(v0 + 632);
    v88 = *(v0 + 640);
    sub_1C75504FC();
    v89 = sub_1C6F765A4(v87, v88, v149);

    *(v85 + 4) = v89;
    _os_log_impl(&dword_1C6F5C000, v83, v84, "QueryToken %{private}s needs date disambiguation", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v86);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v136 = *(v0 + 2344);
  v147 = MEMORY[0x1E69E7CC0];
  sub_1C716D7D8();
  v90 = 0;
  v91 = v147;
  v143 = *(v0 + 640);
  v145 = *(v0 + 632);
  v131 = *(v0 + 664);
  v132 = *(v0 + 656);
  OUTLINED_FUNCTION_16_29();
  v140 = v92;
  v128 = (v92 + 40);
  while (1)
  {
    memcpy((v0 + 856), &v141[120 * v90], 0x78uLL);
    if (*(v0 + 872) != v145 || *(v0 + 880) != v143)
    {
      v94 = sub_1C7551DBC();
      v95 = v0 + 976;
      if ((v94 & 1) == 0)
      {
        goto LABEL_99;
      }
    }

    v96 = *(v0 + 920);
    if (v96)
    {
      v95 = v0 + 1696;
      if (!v140)
      {
        goto LABEL_99;
      }

      v97 = *(v96 + 16);
      v95 = v0 + 1816;
      if (v97 != *(v140 + 16))
      {
        goto LABEL_99;
      }

      if (v97)
      {
        v98 = v96 == v140;
      }

      else
      {
        v98 = 1;
      }

      if (!v98)
      {
        v99 = (v96 + 40);
        v100 = v128;
        while (1)
        {
          v101 = *(v99 - 1) == *(v100 - 1) && *v99 == *v100;
          if (!v101 && (sub_1C7551DBC() & 1) == 0)
          {
            break;
          }

          v100 += 2;
          v99 += 2;
          if (!--v97)
          {
            goto LABEL_77;
          }
        }

        v95 = v0 + 1936;
LABEL_99:
        sub_1C6FCA6E4(v0 + 856, v95);
LABEL_100:
        memcpy(__dst, (v0 + 856), sizeof(__dst));
        v119 = *(v0 + 968);
        goto LABEL_101;
      }
    }

    else
    {
      v95 = v0 + 1096;
      if (v140)
      {
        goto LABEL_99;
      }
    }

LABEL_77:
    v137 = *(v0 + 936);
    v102 = *(v137 + 16);
    OUTLINED_FUNCTION_15_39();
    v95 = v0 + 1216;
    if (v102 != v103)
    {
      goto LABEL_99;
    }

    v104 = v0 + 1576;
    if (v102)
    {
      v104 = v0 + 1456;
      if (v137 != v138)
      {
        break;
      }
    }

    sub_1C6FCA6E4(v0 + 856, v104);
LABEL_87:
    if (*(v0 + 912))
    {
      if (!v130)
      {
        goto LABEL_100;
      }
    }

    else
    {
      v117 = v129;
      if (*(v0 + 896) != v132)
      {
        v117 = 0;
      }

      if (v117 != 1 || *(v0 + 904) != v131)
      {
        goto LABEL_100;
      }
    }

    memcpy(__dst, (v0 + 856), sizeof(__dst));

    v119 = MEMORY[0x1E69E7CC0];
LABEL_101:
    memcpy(v149, __dst, 0x70uLL);
    v121 = *(v91 + 16);
    v120 = *(v91 + 24);
    if (v121 >= v120 >> 1)
    {
      OUTLINED_FUNCTION_15(v120);
      sub_1C716D7D8();
    }

    ++v90;
    *(v91 + 16) = v121 + 1;
    v122 = v91 + 120 * v121;
    memcpy((v122 + 32), v149, 0x70uLL);
    *(v122 + 144) = v119;
    if (v90 == v142)
    {
      v123 = *(v0 + 2384);
      v124 = *(v0 + 2376);
      v125 = *(v0 + 2368);
      v146 = *(v0 + 2328);
      v126 = *(v0 + 2320);
      sub_1C6FDD548(v0 + 616);

      __swift_project_boxed_opaque_existential_1(v126, v139[3]);
      OUTLINED_FUNCTION_9_44();
      sub_1C754F1AC();
      (*(v124 + 8))(v123, v125);
      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v127 + 8))(v146);
      sub_1C6F6E5B4(v12);
      OUTLINED_FUNCTION_14_37();
LABEL_42:

      OUTLINED_FUNCTION_44();

      __asm { BRAA            X2, X16 }
    }
  }

  OUTLINED_FUNCTION_12_39();
  v135 = v105;
  v133 = v138 + v106;
  sub_1C6FCA6E4(v0 + 856, v0 + 1336);
  v107 = 0;
  v134 = v90;
  while (v107 < *(v137 + 16))
  {
    v108 = *(v136 + 72) * v107;
    sub_1C7161564(v135 + v108, *(v0 + 2360));
    OUTLINED_FUNCTION_15_39();
    if (v107 >= v109)
    {
      goto LABEL_110;
    }

    v110 = v12;
    v111 = v13;
    v112 = v91;
    v113 = *(v0 + 2360);
    v114 = *(v0 + 2352);
    sub_1C7161564(v133 + v108, v114);
    v115 = static QueryTokenSuggestion.== infix(_:_:)(v113, v114);
    sub_1C719D800(v114);
    v116 = v113;
    v91 = v112;
    v13 = v111;
    v12 = v110;
    v90 = v134;
    sub_1C719D800(v116);
    if ((v115 & 1) == 0)
    {
      goto LABEL_100;
    }

    if (v102 == ++v107)
    {
      goto LABEL_87;
    }
  }

LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
}

uint64_t sub_1C719B85C(uint64_t a1)
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_40();
  *v8 = v7;
  *(v5 + 2424) = v1;

  if (!v1)
  {
    *(v5 + 2432) = a1;
    sub_1C6FDD548(v5 + 256);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C719B97C()
{
  v1 = v0[300];
  v2 = v0[298];
  v3 = v0[297];
  v4 = v0[296];
  v5 = v0[290];

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1C754F1AC();
  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_14_37();
  sub_1C6F6E5B4(v1);

  v6 = OUTLINED_FUNCTION_0_89();

  return v7(v6);
}

uint64_t sub_1C719BA78()
{
  v1 = v0[300];
  v2 = v0[298];
  v3 = v0[297];
  v4 = v0[296];
  v5 = v0[290];
  sub_1C6FDD548((v0 + 32));

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1C754F1AC();
  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_14_37();
  sub_1C6F6E5B4(v1);

  OUTLINED_FUNCTION_43();

  return v6();
}

uint64_t sub_1C719BB8C(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[202] = v6;
  v7[201] = a6;
  v7[200] = a5;
  v7[199] = a4;
  v7[198] = a2;
  v7[197] = a1;
  v7[203] = *(type metadata accessor for QueryTokenSuggestion(0) - 8);
  v7[204] = swift_task_alloc();
  v7[205] = swift_task_alloc();
  memcpy(v7 + 2, a1, 0x78uLL);

  return MEMORY[0x1EEE6DFA0](sub_1C719BC7C, 0, 0);
}

uint64_t sub_1C719BC7C()
{
  v1 = *(v0 + 1616);
  Generator = type metadata accessor for QueryGenerator();
  *(v0 + 1648) = Generator;
  if (*(v1 + *(Generator + 52)) == 1)
  {
    memcpy((v0 + 136), *(v0 + 1576), 0x78uLL);
    v3 = swift_task_alloc();
    *(v0 + 1656) = v3;
    *v3 = v0;
    v3[1] = sub_1C719BE44;
    v4 = *(v0 + 1600);
    v5 = *(v0 + 1592);

    return sub_1C719C6FC((v0 + 136), v5, v4);
  }

  else
  {
    v7 = sub_1C754FEEC();
    v8 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_21_0(v8))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_109();
    }

    v14 = *(v0 + 1608);

    v15 = sub_1C754F2FC();
    v16 = *(*(v15 - 8) + 8);
    sub_1C75504FC();
    v16(v14, v15);

    v17 = OUTLINED_FUNCTION_0_89();

    return v18(v17);
  }
}

uint64_t sub_1C719BE44()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1664) = v4;
  *(v2 + 1672) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1C719BF4C()
{
  v86 = v0;
  v1 = *(v0 + 1584);
  v81 = [objc_opt_self() targetNumberOfEventSuggestions];
  v2 = 0;
  v3 = *(v1 + 16);
  v79 = v1 + 32;
  v4 = v1 + 136;
  v5 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v6 = (v4 + 120 * v2);
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_80;
    }

    v9 = *v6;
    v6 += 15;
    v8 = v9;
    ++v2;
    if (v9)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB226C();
        v5 = v12;
      }

      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        OUTLINED_FUNCTION_15(v10);
        sub_1C6FB226C();
        v5 = v13;
      }

      *(v5 + 16) = v11 + 1;
      *(v5 + 8 * v11 + 32) = v8;
      v2 = v7;
      goto LABEL_2;
    }
  }

  v14 = *(v5 + 16);
  if (v14)
  {
    __dst[0] = MEMORY[0x1E69E7CC0];
    sub_1C716E23C(0, v14, 0);
    v15 = 32;
    v16 = __dst[0];
    do
    {
      v17 = sub_1C75504FC();
      v18 = sub_1C706D154(v17);
      __dst[0] = v16;
      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v20 >= v19 >> 1)
      {
        v21 = OUTLINED_FUNCTION_15(v19);
        sub_1C716E23C(v21, v20 + 1, 1);
        v16 = __dst[0];
      }

      *(v16 + 16) = v20 + 1;
      *(v16 + 8 * v20 + 32) = v18;
      v15 += 8;
      --v14;
    }

    while (v14);
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v22 = *(v0 + 1672);
  v23 = *(v0 + 1664);
  v24 = *(v0 + 1608);
  v25 = *(v0 + 1600);
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v85[0] = v81;
  v85[1] = v16;
  v26 = QueryDisambiguationSuggestionProducer.produceEventSuggestions(forQueryToken:withAssetUUIDs:recipe:eventRecorder:progressReporter:)(__dst, v23, v85, v25, v24);
  if (v22)
  {

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_44();

    __asm { BRAA            X1, X16 }
  }

  sub_1C75504FC();
  sub_1C6FCA6E4(v0 + 16, v0 + 256);
  v29 = sub_1C754FEEC();
  v30 = sub_1C75511BC();
  sub_1C6FDD548(v0 + 16);
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    __dst[0] = v32;
    *v31 = 134218243;
    *(v31 + 4) = *(v26 + 16);

    *(v31 + 12) = 2081;
    *(v31 + 14) = sub_1C6F765A4(*(v0 + 32), *(v0 + 40), __dst);
    _os_log_impl(&dword_1C6F5C000, v29, v30, "Add %ld event suggestions to query token %{private}s", v31, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  if (!v3)
  {
LABEL_76:

    OUTLINED_FUNCTION_0_89();
    OUTLINED_FUNCTION_44();

    __asm { BRAA            X2, X16 }
  }

  v73 = v26;
  v76 = *(v0 + 1624);
  v84 = MEMORY[0x1E69E7CC0];
  sub_1C716D7D8();
  v33 = 0;
  v34 = v84;
  v35 = *(v0 + 32);
  v71 = *(v0 + 64);
  v72 = *(v0 + 56);
  OUTLINED_FUNCTION_16_29();
  v80 = v36;
  v82 = v37;
  v68 = (v36 + 40);
  while (1)
  {
    memcpy((v0 + 376), (v79 + 120 * v33), 0x78uLL);
    if (*(v0 + 392) != v35 || *(v0 + 400) != v82)
    {
      v39 = sub_1C7551DBC();
      v40 = v0 + 496;
      if ((v39 & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    v41 = *(v0 + 440);
    if (v41)
    {
      v40 = v0 + 1216;
      if (!v80)
      {
        goto LABEL_71;
      }

      v42 = *(v41 + 16);
      v40 = v0 + 1336;
      if (v42 != *(v80 + 16))
      {
        goto LABEL_71;
      }

      if (v42)
      {
        v43 = v41 == v80;
      }

      else
      {
        v43 = 1;
      }

      if (!v43)
      {
        v44 = (v41 + 40);
        v45 = v68;
        while (1)
        {
          v46 = *(v44 - 1) == *(v45 - 1) && *v44 == *v45;
          if (!v46 && (sub_1C7551DBC() & 1) == 0)
          {
            break;
          }

          v45 += 2;
          v44 += 2;
          if (!--v42)
          {
            goto LABEL_49;
          }
        }

        v40 = v0 + 1456;
LABEL_71:
        sub_1C6FCA6E4(v0 + 376, v40);
LABEL_72:
        memcpy(v85, (v0 + 376), 0x70uLL);
        v62 = *(v0 + 488);
        goto LABEL_73;
      }
    }

    else
    {
      v40 = v0 + 616;
      if (v80)
      {
        goto LABEL_71;
      }
    }

LABEL_49:
    v77 = *(v0 + 456);
    v47 = *(v77 + 16);
    OUTLINED_FUNCTION_15_39();
    v40 = v0 + 736;
    if (v47 != v48)
    {
      goto LABEL_71;
    }

    v49 = v0 + 1096;
    if (v47)
    {
      v49 = v0 + 976;
      if (v77 != v78)
      {
        break;
      }
    }

    sub_1C6FCA6E4(v0 + 376, v49);
LABEL_59:
    if (*(v0 + 432))
    {
      if (!v70)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v60 = v69;
      if (*(v0 + 416) != v72)
      {
        v60 = 0;
      }

      if (v60 != 1 || *(v0 + 424) != v71)
      {
        goto LABEL_72;
      }
    }

    memcpy(v85, (v0 + 376), 0x70uLL);
    v62 = v73;
    sub_1C75504FC();

LABEL_73:
    memcpy(__dst, v85, 0x70uLL);
    v84 = v34;
    v64 = *(v34 + 16);
    v63 = *(v34 + 24);
    if (v64 >= v63 >> 1)
    {
      OUTLINED_FUNCTION_15(v63);
      sub_1C716D7D8();
      v34 = v84;
    }

    ++v33;
    *(v34 + 16) = v64 + 1;
    v65 = v34 + 120 * v64;
    memcpy((v65 + 32), __dst, 0x70uLL);
    *(v65 + 144) = v62;
    if (v33 == v3)
    {
      goto LABEL_76;
    }
  }

  OUTLINED_FUNCTION_12_39();
  v75 = v50;
  v74 = v78 + v51;
  sub_1C6FCA6E4(v0 + 376, v0 + 856);
  v52 = 0;
  while (v52 < *(v77 + 16))
  {
    v53 = *(v76 + 72) * v52;
    sub_1C7161564(v75 + v53, *(v0 + 1640));
    OUTLINED_FUNCTION_15_39();
    if (v52 >= v54)
    {
      goto LABEL_82;
    }

    v55 = *(v0 + 1640);
    v56 = v35;
    v57 = *(v0 + 1632);
    sub_1C7161564(v74 + v53, v57);
    v58 = static QueryTokenSuggestion.== infix(_:_:)(v55, v57);
    v59 = v57;
    v35 = v56;
    sub_1C719D800(v59);
    sub_1C719D800(v55);
    if ((v58 & 1) == 0)
    {
      goto LABEL_72;
    }

    if (v47 == ++v52)
    {
      goto LABEL_59;
    }
  }

LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
}

uint64_t sub_1C719C664()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 1608);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v1);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C719C6FC(const void *a1, uint64_t a2, uint64_t a3)
{
  v4[96] = v3;
  v4[95] = a3;
  v4[94] = a2;
  v4[93] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216328);
  v4[97] = swift_task_alloc();
  v6 = sub_1C754F14C();
  v4[98] = v6;
  v4[99] = *(v6 - 8);
  v4[100] = swift_task_alloc();
  memcpy(v4 + 40, a1, 0x78uLL);

  return MEMORY[0x1EEE6DFA0](sub_1C719C814, 0, 0);
}

uint64_t sub_1C719C814()
{
  v34 = v0;
  v1 = *(v0 + 784);
  v2 = *(v0 + 776);
  memcpy(__dst, *(v0 + 744), sizeof(__dst));
  QueryToken.publicEvent()();
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_1C719D8C0(*(v0 + 776));
LABEL_8:
    if (qword_1EDD0E0A0 != -1)
    {
      swift_once();
    }

    TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
    v25 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E0A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215040);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_22_33(inited, xmmword_1C755BAB0);
    *(swift_task_alloc() + 16) = v25;
    sub_1C6FCA6E4(v0 + 320, v0 + 440);
    v27 = sub_1C707351C();
    swift_setDeallocating();
    sub_1C6FDC98C();

    if (v27)
    {
      v28 = *(v0 + 752);
      v29 = swift_initStackObject();
      *(v0 + 848) = v29;
      OUTLINED_FUNCTION_22_33(v29, xmmword_1C755BAB0);
      type metadata accessor for QueryGenerator();
      *(v0 + 680) = 1;
      *(v0 + 688) = v29;
      *(v0 + 696) = v28;
      *(v0 + 704) = 0;
      *(v0 + 712) = 0;
      *(v0 + 720) = 0;
      sub_1C75504FC();
      sub_1C6FCA6E4(v0 + 320, v0 + 560);
      v30 = swift_task_alloc();
      *(v0 + 856) = v30;
      *v30 = v0;
      v30[1] = sub_1C719CE60;

      return QueryAssetsRetrievalProcessor.performAssetsRetrieval(with:eventRecorder:diagnosticContext:)(v0 + 728, v0 + 680);
    }

    else
    {

      v31 = *(v0 + 8);
      v32 = MEMORY[0x1E69E7CD0];

      return v31(v32);
    }
  }

  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 784);
  (*(v4 + 32))(v3, *(v0 + 776), v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217890);
  v6 = *(v4 + 72);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C75604F0;
  v9 = v8 + v7;
  v10 = *(v4 + 104);
  v10(v9, *MEMORY[0x1E69C17C0], v5);
  v10(v9 + v6, *MEMORY[0x1E69C17B0], v5);
  v11 = swift_task_alloc();
  *(v11 + 16) = v3;
  LOBYTE(v4) = sub_1C70734EC(sub_1C710104C, v11, v8);
  swift_setDeallocating();
  sub_1C6FDC924();

  if ((v4 & 1) == 0)
  {
    v22 = OUTLINED_FUNCTION_2_60();
    v23(v22);
    goto LABEL_8;
  }

  v12 = sub_1C75504FC();
  v13 = sub_1C71CD938(v12);
  sub_1C6FDE498(v13);
  v15 = v14;
  *(v0 + 808) = v14;

  type metadata accessor for QueryGenerator();
  v16 = sub_1C754F10C();
  v18 = v17;
  *(v0 + 816) = v17;
  *(v0 + 722) = 0;
  v19 = swift_task_alloc();
  *(v0 + 824) = v19;
  *v19 = v0;
  v19[1] = sub_1C719CCA4;
  v20 = *(v0 + 760);

  return QueryAssetsRetrievalProcessor.performQueryAssetsRetrieval(for:retrievalType:scopedAssetUUIDs:eventRecorder:)(v16, v18, (v0 + 722), v15, v20);
}

uint64_t sub_1C719CCA4(uint64_t a1)
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_40();
  *v8 = v7;
  *(v5 + 832) = v1;

  if (!v1)
  {
    *(v5 + 840) = a1;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C719CDF0()
{
  OUTLINED_FUNCTION_42();
  v0 = OUTLINED_FUNCTION_2_60();
  v1(v0);
  OUTLINED_FUNCTION_23_24();

  v2 = OUTLINED_FUNCTION_0_89();

  return v3(v2);
}

uint64_t sub_1C719CE60()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  *(v3 + 864) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C719CF7C()
{
  v1 = *(v0 + 728);
  if (v1)
  {
    v2 = sub_1C75504FC();
    sub_1C716A74C(v2);
    v3 = v1 + 64;
    v4 = -1 << *(v1 + 32);
    if (-v4 < 64)
    {
      v5 = ~(-1 << -v4);
    }

    else
    {
      v5 = -1;
    }

    v6 = v5 & *(v1 + 64);
    v7 = (63 - v4) >> 6;
    result = sub_1C75504FC();
    v9 = 0;
    v22 = v1;
    if (v6)
    {
LABEL_6:
      v10 = v9;
LABEL_10:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = *(*(v1 + 56) + ((v10 << 9) | (8 * v11)));
      v23 = MEMORY[0x1E69E7CC0];
      v13 = -1 << *(v12 + 32);
      if (-v13 < 64)
      {
        v14 = ~(-1 << -v13);
      }

      else
      {
        v14 = -1;
      }

      v15 = v14 & *(v12 + 64);
      v16 = (63 - v13) >> 6;
      result = swift_bridgeObjectRetain_n();
      v17 = 0;
      if (v15)
      {
        goto LABEL_19;
      }

      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v18 >= v16)
        {

          sub_1C73978C4(v23);

          v9 = v10;
          v1 = v22;
          if (!v6)
          {
            goto LABEL_7;
          }

          goto LABEL_6;
        }

        v15 = *(v12 + 64 + 8 * v18);
        ++v17;
        if (v15)
        {
          v17 = v18;
          do
          {
LABEL_19:
            v15 &= v15 - 1;
            v19 = sub_1C75504FC();
            result = sub_1C6FD25FC(v19);
          }

          while (v15);
          continue;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v10 >= v7)
        {

          goto LABEL_24;
        }

        v6 = *(v3 + 8 * v10);
        ++v9;
        if (v6)
        {
          goto LABEL_10;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    OUTLINED_FUNCTION_23_24();

    v20 = OUTLINED_FUNCTION_0_89();

    return v21(v20);
  }

  return result;
}

uint64_t sub_1C719D1C4()
{
  OUTLINED_FUNCTION_42();
  v0 = OUTLINED_FUNCTION_2_60();
  v1(v0);
  OUTLINED_FUNCTION_23_24();

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1C719D234()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_23_24();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C719D2B0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1C755164C();
  }

  else
  {
    return sub_1C755160C();
  }
}

uint64_t sub_1C719D350(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1C755171C();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

uint64_t sub_1C719D3B8@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = (*(a3 + 48) + 48 * result);
  v6 = v5[1];
  v7 = v5[2];
  v8 = v5[3];
  v9 = v5[4];
  v10 = v5[5];
  *a4 = *v5;
  a4[1] = v6;
  a4[2] = v7;
  a4[3] = v8;
  a4[4] = v9;
  a4[5] = v10;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();

  return sub_1C75504FC();
}

uint64_t sub_1C719D474(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);
    sub_1C75504FC();
    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1C719D504(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5)
{
  v5 = a5;
  v7 = a2;
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1CCA5DBF0](a1, a2, v9);
      sub_1C6F65BE8(0, v5);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1C6F65BE8(0, a5);
    if (sub_1C755169C() == *(a4 + 36))
    {
      sub_1C75516AC();
      swift_dynamicCast();
      v5 = v17;
      v10 = sub_1C75513DC();
      v11 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v8 = v10 & v11;
        if (((*(a4 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          goto LABEL_25;
        }

        v12 = *(*(a4 + 48) + 8 * v8);
        v13 = sub_1C75513EC();

        if (v13)
        {
          goto LABEL_18;
        }

        v10 = v8 + 1;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (a1 < 0 || (OUTLINED_FUNCTION_8_37(), v14 <= v8))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != v7)
  {
    __break(1u);
LABEL_18:
  }

  v15 = *(*(a4 + 48) + 8 * v8);

  v16 = v15;
}

uint64_t sub_1C719D700@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C719D754@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v5 = (*(a3 + 48) + 120 * result);
    memcpy(__dst, v5, sizeof(__dst));
    memcpy(a4, v5, 0x78uLL);
    return sub_1C6FCA6E4(__dst, &v6);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C719D800(uint64_t a1)
{
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  (*(*(TokenSuggestion - 8) + 8))(a1, TokenSuggestion);
  return a1;
}

uint64_t sub_1C719D870(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 2 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C719D8C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216328);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_21_28()
{

  return sub_1C7551A2C();
}

void *OUTLINED_FUNCTION_24_23(void *a1)
{

  return memcpy(a1, (v1 - 200), 0x78uLL);
}

uint64_t sub_1C719D998()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60);
  result = sub_1C755146C();
  qword_1EC218870 = result;
  return result;
}

uint64_t sub_1C719DA10()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC218878);
  __swift_project_value_buffer(v0, qword_1EC218878);
  if (qword_1EC213E60 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC218870;
  return sub_1C754FF2C();
}

uint64_t QueryDisambiguationAssetFetcher.init(photoLibrary:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = type metadata accessor for PhotosSearchBasedStoryAssetsFetcher();
  a2[4] = &protocol witness table for PhotosSearchBasedStoryAssetsFetcher;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  sub_1C754FEFC();
  type metadata accessor for PhotosSearchQueryManagerProxy();
  swift_allocObject();
  result = sub_1C72FC904(a1, 0);
  *boxed_opaque_existential_0 = result;
  return result;
}

uint64_t QueryDisambiguationAssetFetcher.previewDateAssetUUIDs(forStartDateComponents:endDateComponents:eventRecorder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v5 = sub_1C754F38C();
  v4[26] = v5;
  v4[27] = *(v5 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v6 = sub_1C754DABC();
  v4[32] = v6;
  v4[33] = *(v6 - 8);
  v4[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C719DCBC, 0, 0);
}

uint64_t sub_1C719DCBC()
{
  v36 = v0;
  if (qword_1EC213E68 != -1)
  {
    OUTLINED_FUNCTION_0_90();
  }

  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = sub_1C754FF1C();
  __swift_project_value_buffer(v7, qword_1EC218878);
  (*(v2 + 16))(v1, v6, v3);
  sub_1C7026190(v5, v4);
  v8 = sub_1C754FEEC();
  v9 = sub_1C75511BC();
  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 264);
  v11 = *(v0 + 272);
  v13 = *(v0 + 248);
  v14 = *(v0 + 256);
  if (v10)
  {
    v33 = *(v0 + 240);
    v15 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v15 = 136315394;
    sub_1C719EAB0();
    v16 = sub_1C7551D8C();
    v18 = v17;
    (*(v12 + 8))(v11, v14);
    sub_1C6F765A4(v16, v18, &v35);
    OUTLINED_FUNCTION_2_61();

    *(v15 + 4) = v11;
    *(v15 + 12) = 2080;
    sub_1C7026190(v13, v33);
    v19 = sub_1C75506EC();
    v21 = v20;
    sub_1C70EA928(v13);
    sub_1C6F765A4(v19, v21, &v35);
    OUTLINED_FUNCTION_2_61();

    *(v15 + 14) = v19;
    _os_log_impl(&dword_1C6F5C000, v8, v9, "Retrieving preview date assets with start date components = %s and end date components = %s", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {

    sub_1C70EA928(v13);
    (*(v12 + 8))(v11, v14);
  }

  __swift_project_boxed_opaque_existential_1(*(v0 + 192), *(*(v0 + 192) + 24));
  sub_1C754F1CC();
  static StoryGenerationUtilities.dateComponentsAttributedQueryStringWithAdjustedRange(withStartDateComponents:endDateComponents:localizedText:)();
  v23 = v22;
  *(v0 + 280) = v22;
  *(v0 + 56) = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
  *(v0 + 64) = &off_1F46ACFD0;
  v24 = [objc_opt_self() currentUnifiedEmbeddingVersion];
  v25 = v24;
  if (v24)
  {
    v26 = [v24 integerValue];
  }

  else
  {
    v26 = 0;
  }

  v27 = *(v0 + 200);
  *(v0 + 32) = 4;
  *(v0 + 40) = v26;
  *(v0 + 48) = v25 == 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 88) = 1;
  *(v0 + 112) = vdupq_n_s64(1uLL);
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 72) = 4000;
  *(v0 + 80) = 0;
  v28 = v27[3];
  v29 = v27[4];
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v34 = (*(v29 + 16) + **(v29 + 16));
  v30 = swift_task_alloc();
  *(v0 + 288) = v30;
  *v30 = v0;
  v30[1] = sub_1C719E108;
  v31 = *(v0 + 192);

  return v34(v0 + 152, v23, v0 + 16, v31, v28, v29);
}

uint64_t sub_1C719E108()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_1C719E3F4;
  }

  else
  {
    v2 = sub_1C719E21C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C719E21C()
{
  v1 = v0[19];
  v19 = v0[20];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v3 = v20;
    v4 = *(v20 + 16);
    v5 = 16 * v4;
    v6 = (v1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = *(v20 + 24);
      sub_1C75504FC();
      if (v4 >= v9 >> 1)
      {
        sub_1C6F7ED9C();
      }

      *(v20 + 16) = v4 + 1;
      v10 = v20 + v5;
      *(v10 + 32) = v8;
      *(v10 + 40) = v7;
      v5 += 16;
      v6 += 4;
      ++v4;
      --v2;
    }

    while (v2);
  }

  v11 = v0[35];
  v13 = v0[27];
  v12 = v0[28];
  v14 = v0[26];
  v15 = v0[24];
  v18 = sub_1C706D154(v3);

  swift_unknownObjectRelease();
  sub_1C70DF138((v0 + 2));
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_1C754F1AC();
  (*(v13 + 8))(v12, v14);

  v16 = v0[1];

  return v16(v18);
}

uint64_t sub_1C719E3F4()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 192);

  sub_1C70DF138(v0 + 16);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  OUTLINED_FUNCTION_2_61();
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t static QueryDisambiguationAssetFetcher.fetchEventSuggestionAssetUUIDs(forMomentUUIDs:shouldApplyCurationFilter:storyPhotoLibraryContext:eventRecorder:)(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v55 = sub_1C754F38C();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a3;
  v12 = *(a3 + 8);
  v51 = *(a3 + 16);
  if (qword_1EC213E68 != -1)
  {
    OUTLINED_FUNCTION_0_90();
  }

  v13 = sub_1C754FF1C();
  __swift_project_value_buffer(v13, qword_1EC218878);
  OUTLINED_FUNCTION_2_61();
  sub_1C75504FC();
  v50 = v4;
  v14 = sub_1C754FEEC();
  v15 = sub_1C75511BC();

  v16 = os_log_type_enabled(v14, v15);
  v54 = v11;
  v52 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v56 = v18;
    *v17 = 136315138;
    v19 = sub_1C7550F9C();
    v21 = sub_1C6F765A4(v19, v20, &v56);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_1C6F5C000, v14, v15, "Fetching event suggestion assets for moments = %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  sub_1C754F1CC();
  if (a2)
  {
    v22 = MEMORY[0x1E69E6158];
    sub_1C6F65BE8(0, &qword_1EDD0FAD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1C75604F0;
    *(v23 + 56) = v22;
    v24 = sub_1C6F6D524();
    v49 = v10;
    v25 = v24;
    *(v23 + 64) = v24;
    *(v23 + 32) = 0x752E746E656D6F6DLL;
    *(v23 + 40) = 0xEB00000000646975;
    *(v23 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
    *(v23 + 104) = sub_1C7067A60();
    *(v23 + 72) = a1;
    sub_1C75504FC();
    v26 = sub_1C755112C();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1C755BAB0;
    *(v27 + 56) = v22;
    *(v27 + 64) = v25;
    *(v27 + 32) = 0xD00000000000001CLL;
    *(v27 + 40) = 0x80000001C75A2960;
    v28 = sub_1C755112C();
    v29 = v54;
    v30 = v52;
    v31 = static StoryGenerationUtilities.assetIdentifiersFetchOptions(for:sharingFilter:wantsIncrementalChangeDetails:)(v54, v52, 0);
    sub_1C6F65BE8(0, &qword_1EDD0FA80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1C7564A90;
    *(v32 + 32) = v26;
    *(v32 + 40) = v28;
    v33 = v26;
    v34 = v28;
    v10 = v49;
    v35 = sub_1C6F6E5C4();
    [v31 setInternalPredicate_];
  }

  else
  {
    v31 = 0;
    v29 = v54;
    v30 = v52;
  }

  v36 = objc_autoreleasePoolPush();
  sub_1C71C8640(a1, v31, v29, v30, &v56);
  objc_autoreleasePoolPop(v36);
  v37 = v56;
  v38 = *(v56 + 16);
  if (v38 >= 3)
  {
  }

  else
  {

    sub_1C75504FC();
    v39 = sub_1C754FEEC();
    v40 = sub_1C75511BC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = v10;
      v43 = swift_slowAlloc();
      v56 = v43;
      *v41 = 134218498;
      *(v41 + 4) = v38;
      *(v41 + 12) = 2048;
      *(v41 + 14) = 3;
      *(v41 + 22) = 2080;
      v44 = sub_1C7550F9C();
      v46 = sub_1C6F765A4(v44, v45, &v56);

      *(v41 + 24) = v46;
      _os_log_impl(&dword_1C6F5C000, v39, v40, "The number of assets (%ld) is below %ld for moments = %s", v41, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v43);
      v10 = v42;
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v37 = MEMORY[0x1E69E7CD0];
  }

  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  sub_1C754F1AC();
  (*(v53 + 8))(v10, v55);
  return v37;
}

unint64_t sub_1C719EAB0()
{
  result = qword_1EC218890;
  if (!qword_1EC218890)
  {
    sub_1C754DABC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218890);
  }

  return result;
}

uint64_t sub_1C719EB08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1C719EB48(uint64_t result, int a2, int a3)
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

void sub_1C719EBA0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = 0;
  v29 = *(a1 + 16);
  v28 = a1 + 32;
  v5 = a2 + 56;
  v26 = MEMORY[0x1E69E7CC0];
  while (1)
  {
LABEL_2:
    if (v4 == v29)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v6 = (v28 + 16 * v4);
    v8 = *v6;
    v7 = v6[1];
    ++v4;
    if (*(a2 + 16))
    {
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75505AC();
      v9 = sub_1C7551FAC();
      v10 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v11 = v9 & v10;
        if (((*(v5 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          break;
        }

        v12 = (*(a2 + 48) + 16 * v11);
        if (*v12 != v8 || v12[1] != v7)
        {
          v14 = sub_1C7551DBC();
          v9 = v11 + 1;
          if ((v14 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_2;
      }
    }

    else
    {
      sub_1C75504FC();
    }

    v15 = *a3;
    if (*(*a3 + 16))
    {
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75505AC();
      v16 = sub_1C7551FAC();
      v17 = ~(-1 << *(v15 + 32));
      do
      {
        v18 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {

          goto LABEL_24;
        }

        v19 = (*(v15 + 48) + 16 * v18);
        if (*v19 == v8 && v19[1] == v7)
        {
          break;
        }

        v21 = sub_1C7551DBC();
        v16 = v18 + 1;
      }

      while ((v21 & 1) == 0);
    }

    else
    {
LABEL_24:
      sub_1C75504FC();
      sub_1C70F082C(v31, v8, v7);

      v22 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6F7ED9C();
        v22 = v32;
      }

      v24 = *(v22 + 16);
      if (v24 >= *(v22 + 24) >> 1)
      {
        sub_1C6F7ED9C();
        v22 = v32;
      }

      *(v22 + 16) = v24 + 1;
      v26 = v22;
      v25 = v22 + 16 * v24;
      *(v25 + 32) = v8;
      *(v25 + 40) = v7;
    }
  }

  __break(1u);
}

uint64_t sub_1C719EE4C()
{
  OUTLINED_FUNCTION_42();
  v2 = v0;
  v4 = v3;
  v1[215] = v2;
  v1[214] = v5;
  v1[213] = v6;
  v1[212] = v7;
  v1[211] = v8;
  v1[210] = v9;
  v1[216] = *v2;
  v10 = sub_1C754F2FC();
  v1[217] = v10;
  OUTLINED_FUNCTION_18(v10);
  v1[218] = v11;
  v1[219] = swift_task_alloc();
  v1[220] = swift_task_alloc();
  v1[221] = swift_task_alloc();
  v1[222] = swift_task_alloc();
  v1[223] = swift_task_alloc();
  v1[224] = swift_task_alloc();
  v12 = sub_1C754F38C();
  v1[225] = v12;
  OUTLINED_FUNCTION_18(v12);
  v1[226] = v13;
  v1[227] = swift_task_alloc();
  memcpy(v1 + 2, v4, 0x68uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C719EFDC()
{
  v1 = v0[213];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v2 = v0[224];
  v9 = v0[221];
  v3 = v0[218];
  v4 = v0[217];
  OUTLINED_FUNCTION_70(v0[213], v1[3]);
  sub_1C754F15C();
  sub_1C754F2BC();
  sub_1C754F2BC();
  sub_1C754F2BC();
  memcpy(v0 + 41, v0 + 2, 0x68uLL);
  v5 = *(v3 + 32);
  v0[228] = v5;
  v0[229] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v5(v9, v2, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[230] = v6;
  *v6 = v7;
  v6[1] = sub_1C719F2C0;

  return sub_1C71A1814();
}

uint64_t sub_1C719F2C0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1848) = v4;
  *(v2 + 1856) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C719F3C8()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 1720);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  *(v0 + 1864) = v3;
  *(v0 + 1872) = v2;
  v4 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_diagnosticContext);
  *(v0 + 1880) = v4;
  if (v4)
  {
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](0x657463656C45203ALL, 0xE900000000000064);
    OUTLINED_FUNCTION_61_9();
    v10 = sub_1C7164AD8(v5, v6, v7, v8, v9);
  }

  *(v0 + 1664) = v3;
  *(v0 + 1672) = v2;
  *(v0 + 1648) = 32;
  *(v0 + 1656) = 0xE100000000000000;
  *(v0 + 1632) = 95;
  *(v0 + 1640) = 0xE100000000000000;
  v34 = sub_1C6FB5E8C();
  v33 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_61_9();
  *(v0 + 1888) = sub_1C755155C();
  *(v0 + 1896) = v11;
  sub_1C755180C();

  v12 = OUTLINED_FUNCTION_55();
  MEMORY[0x1CCA5CD70](v12);
  MEMORY[0x1CCA5CD70](1819113518, 0xE400000000000000);
  if (v4)
  {
    v13 = *(v0 + 1848);
    sub_1C75504FC();
    sub_1C7162B4C(0xD000000000000011, 0x80000001C75A2B50, v4, v13);
  }

  v14 = *(v0 + 1848);

  v15 = *(v0 + 24);
  v16 = OUTLINED_FUNCTION_0_11();
  sub_1C703255C(v16, v17, v18, v15, v19);
  memcpy((v0 + 984), (v0 + 1144), 0x50uLL);
  v20 = *(v14 + 16);
  *(v0 + 1904) = v20;
  *(v0 + 1016) = v20;
  v21 = objc_opt_self();
  sub_1C75504FC();
  sub_1C75504FC();
  v22 = [v21 useShadowNamesInAssetCuration];
  *(v0 + 1444) = v22;
  v23 = sub_1C754FEEC();
  v24 = sub_1C75511BC();
  v25 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 67109120;
    *(v27 + 4) = v22;
    _os_log_impl(&dword_1C6F5C000, v23, v24, "Use shadow names during curation is %{BOOL}d", v27, 8u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v28 = *(v0 + 1720);

  *(v0 + 1445) = [v21 usePersonPromptAnnotations];
  v29 = *(v28 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyPhotoLibraryContext);
  *(v0 + 1912) = v29;
  type metadata accessor for AssetCurationUtilities();
  v30 = swift_task_alloc();
  *(v0 + 1920) = v30;
  *v30 = v0;
  v30[1] = sub_1C719F708;
  v31 = OUTLINED_FUNCTION_61_3(*(v0 + 1848));

  return static AssetCurationUtilities.generateCharacterSummaryByCharacterUUID(for:photoLibrary:)(v31, v29);
}

uint64_t sub_1C719F708()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  v3[241] = v5;
  v3[242] = v0;

  if (v0)
  {
    memcpy(v3 + 103, v3 + 123, 0x50uLL);
    sub_1C703307C((v3 + 103));
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C719F844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  v19 = *(v18 + 1936);
  sub_1C71A1E04(*(v18 + 1888), *(v18 + 1896), *(v18 + 1928));
  if (v19)
  {
    v20 = *(v18 + 1808);
    v90 = *(v18 + 1800);
    v21 = *(v18 + 1784);
    v22 = *(v18 + 1776);
    v23 = *(v18 + 1744);
    v24 = *(v18 + 1736);
    v88 = *(v18 + 1816);
    v89 = *(v18 + 1712);

    memcpy((v18 + 904), (v18 + 984), 0x50uLL);
    sub_1C703307C(v18 + 904);
    __swift_destroy_boxed_opaque_existential_1(v18 + 1592);
    v25 = *(v23 + 8);
    v25(v22, v24);
    v25(v21, v24);
    v26 = OUTLINED_FUNCTION_291();
    OUTLINED_FUNCTION_70(v26, v27);
    OUTLINED_FUNCTION_291();
    sub_1C754F1AC();
    (*(v20 + 8))(v88, v90);
    v25(v89, v24);
    OUTLINED_FUNCTION_8_38();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_94_1();

    v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, v88, v89, v90, v19, a14, a15, a16, a17, a18);
  }

  else
  {
    v36 = *(v18 + 1720);

    v92 = v36 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyElements;
    v37 = *(v36 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyElements + 216);
    v38 = *(v37 + 16);
    v39 = MEMORY[0x1E69E7CC0];
LABEL_6:
    v40 = (v37 + 32 + 72 * v19);
    while (v38 != v19)
    {
      if (v19 >= *(v37 + 16))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        return;
      }

      memcpy((v18 + 1448), v40, 0x41uLL);
      if ((*(v18 + 1472) & 1) == 0)
      {
        sub_1C7025F3C(v18 + 1448, v18 + 1520);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_99();
          sub_1C716D97C();
        }

        v42 = v39[2];
        v41 = v39[3];
        if (v42 >= v41 >> 1)
        {
          OUTLINED_FUNCTION_15(v41);
          sub_1C716D97C();
        }

        ++v19;
        v39[2] = v42 + 1;
        memcpy(&v39[9 * v42 + 4], (v18 + 1448), 0x41uLL);
        goto LABEL_6;
      }

      v40 += 72;
      ++v19;
    }

    v43 = 0;
    v44 = v39[2];
    v45 = v39 + 9;
    v46 = MEMORY[0x1E69E7CC0];
    while (v44 != v43)
    {
      if (v43 >= v39[2])
      {
        goto LABEL_47;
      }

      v48 = *(v45 - 1);
      v47 = *v45;
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_99();
        sub_1C6FB1814();
        v46 = v52;
      }

      v50 = *(v46 + 16);
      v49 = *(v46 + 24);
      if (v50 >= v49 >> 1)
      {
        OUTLINED_FUNCTION_15(v49);
        sub_1C6FB1814();
        v46 = v53;
      }

      *(v46 + 16) = v50 + 1;
      v51 = v46 + 16 * v50;
      *(v51 + 32) = v48;
      *(v51 + 40) = v47;
      v45 += 9;
      ++v43;
    }

    v91 = sub_1C706D154(v46);
    v54 = 0;
    v55 = *(v92 + 224);
    v56 = *(v55 + 16);
    v57 = MEMORY[0x1E69E7CC0];
LABEL_25:
    v58 = (v55 + 32 + 72 * v54);
    while (v56 != v54)
    {
      if (v54 >= *(v55 + 16))
      {
        goto LABEL_48;
      }

      memcpy((v18 + 1376), v58, 0x42uLL);
      if ((*(v18 + 1400) & 1) == 0)
      {
        sub_1C7025FF8(v18 + 1376, v18 + 1304);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_99();
          sub_1C716D940();
        }

        v60 = v57[2];
        v59 = v57[3];
        if (v60 >= v59 >> 1)
        {
          OUTLINED_FUNCTION_15(v59);
          sub_1C716D940();
        }

        ++v54;
        v57[2] = v60 + 1;
        memcpy(&v57[9 * v60 + 4], (v18 + 1376), 0x42uLL);
        goto LABEL_25;
      }

      v58 += 72;
      ++v54;
    }

    v61 = 0;
    v62 = v57[2];
    v63 = v57 + 9;
    v64 = MEMORY[0x1E69E7CC0];
    while (v62 != v61)
    {
      if (v61 >= v57[2])
      {
        goto LABEL_49;
      }

      v66 = *(v63 - 1);
      v65 = *v63;
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_99();
        sub_1C6FB1814();
        v64 = v70;
      }

      v68 = *(v64 + 16);
      v67 = *(v64 + 24);
      if (v68 >= v67 >> 1)
      {
        OUTLINED_FUNCTION_15(v67);
        sub_1C6FB1814();
        v64 = v71;
      }

      *(v64 + 16) = v68 + 1;
      v69 = v64 + 16 * v68;
      *(v69 + 32) = v66;
      *(v69 + 40) = v65;
      v63 += 9;
      ++v61;
    }

    v72 = *(v18 + 1444);
    v73 = *(v18 + 1824);
    v74 = *(v18 + 1784);
    v75 = *(v18 + 1760);
    v76 = *(v18 + 1736);

    v77 = sub_1C706D154(v64);
    *(v18 + 1944) = sub_1C70738FC(v77, v91);
    memcpy((v18 + 640), (v18 + 16), 0x68uLL);
    *(v18 + 1370) = 16843009;
    *(v18 + 1374) = 1;
    *(v18 + 1375) = v72;
    v73(v75, v74, v76);
    sub_1C6FC061C(v18 + 16, v18 + 536);
    v78 = swift_task_alloc();
    *(v18 + 1952) = v78;
    *v78 = v18;
    v78[1] = sub_1C719FE34;
    OUTLINED_FUNCTION_61_3(*(v18 + 1848));
    OUTLINED_FUNCTION_94_1();

    AssetRichDescriptionsGenerator.generateAssetRichDescriptionResults(for:chapter:characterSummaryByCharacterUUID:userQueryCharacterUUIDs:options:eventRecorder:progressReporter:diagnosticContext:)(v79, v80, v81, v82, v83, v84, v85, v86);
  }
}

uint64_t sub_1C719FE34()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  v3[245] = v5;
  v3[246] = v0;

  if (v0)
  {

    memcpy(v3 + 54, v3 + 80, 0x68uLL);
    sub_1C6FB5FC8((v3 + 54), &qword_1EC217EF8);
    memcpy(v3 + 133, v3 + 123, 0x50uLL);
    sub_1C703307C((v3 + 133));
  }

  else
  {
    memcpy(v3 + 28, v3 + 80, 0x68uLL);
    sub_1C6FB5FC8((v3 + 28), &qword_1EC217EF8);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C719FFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_75_0();
  v27 = *(v26 + 1880);
  if (v27)
  {
    v28 = *(v26 + 1960);
    v29 = *(v28 + 16);
    if (v29)
    {
      v78 = *(v26 + 1880);
      v80 = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C();
      v30 = *(v80 + 16);
      v31 = 16 * v30;
      v32 = (v28 + 40);
      do
      {
        v34 = *(v32 - 1);
        v33 = *v32;
        v35 = *(v80 + 24);
        sub_1C75504FC();
        if (v30 >= v35 >> 1)
        {
          sub_1C6F7ED9C();
        }

        *(v80 + 16) = v30 + 1;
        v36 = v80 + v31;
        *(v36 + 32) = v34;
        *(v36 + 40) = v33;
        v31 += 16;
        v32 += 4;
        ++v30;
        --v29;
      }

      while (v29);
      v28 = *(v26 + 1960);
      v27 = v78;
    }

    v37 = *(v26 + 1872);
    v38 = *(v26 + 1864);
    v39 = *(v26 + 1848);
    a22 = v38;
    a23 = v37;
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](0x6E49204D4C4C203ALL, 0xEB00000000747570);
    OUTLINED_FUNCTION_61_9();
    v45 = sub_1C7164AD8(v40, v41, v42, v43, v44);

    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C71616E4(v27, v39, v38, v37, v28);
  }

  v46 = *(v26 + 1960);

  v47 = *(v46 + 16);
  *(v26 + 1024) = v47;
  if (v47)
  {
    v48 = *(v26 + 1445);
    v49 = *(v26 + 1444);
    v50 = *(v26 + 1824);
    memcpy((v26 + 120), (v26 + 16), 0x68uLL);
    *(v26 + 1442) = v49;
    *(v26 + 1443) = v48;
    v51 = OUTLINED_FUNCTION_90();
    v50(v51);
    v52 = swift_task_alloc();
    *(v26 + 1976) = v52;
    *v52 = v26;
    v52[1] = sub_1C71A03BC;
    OUTLINED_FUNCTION_61_3(*(v26 + 1960));
    OUTLINED_FUNCTION_130_0();

    return sub_1C71A1FC4();
  }

  else
  {
    v55 = *(v26 + 1816);
    v56 = *(v26 + 1808);
    v72 = *(v26 + 1800);
    v57 = *(v26 + 1744);
    v58 = *(v26 + 1704);

    v77 = *(v26 + 1160);
    v79 = *(v26 + 1192);
    v75 = *(v26 + 1144);
    v76 = *(v26 + 1208);

    v74 = [objc_allocWithZone(MEMORY[0x1E6978840]) init];
    __swift_destroy_boxed_opaque_existential_1(v26 + 1592);
    v59 = *(v57 + 8);
    v60 = OUTLINED_FUNCTION_55();
    (v59)(v60);
    OUTLINED_FUNCTION_70(v58, v58[3]);
    sub_1C754F1AC();
    (*(v56 + 8))(v55, v72);
    OUTLINED_FUNCTION_48_15();
    v71 = *(v26 + 1752);
    v73 = v61;
    v62 = *(v26 + 1680);
    v59();

    *v62 = v74;
    *(v62 + 8) = 0;
    *(v62 + 16) = 0;
    *(v62 + 24) = v75;
    *(v62 + 40) = v77;
    *(v62 + 56) = v73;
    *(v62 + 64) = 0;
    *(v62 + 88) = v76;
    *(v62 + 72) = v79;
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_130_0();

    return v64(v63, v64, v65, v66, v67, v68, v69, v70, a9, v71, v73, v74, v75, *(&v75 + 1), v76, *(&v76 + 1), v77, *(&v77 + 1), v79, *(&v79 + 1), a21, a22, a23, a24, a25, a26);
  }
}

uint64_t sub_1C71A03BC()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *v5 = *v1;
  v4[248] = v0;

  if (v0)
  {
    memcpy(v4 + 153, v4 + 123, 0x50uLL);
    sub_1C703307C((v4 + 153));
  }

  else
  {

    v4[249] = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C71A0538()
{
  v1 = *(v0 + 1984);
  v2 = sub_1C71A2CA8();

  sub_1C754F2EC();
  if (v1)
  {

    memcpy((v0 + 744), (v0 + 984), 0x50uLL);
    sub_1C703307C(v0 + 744);
    __swift_destroy_boxed_opaque_existential_1(v0 + 1592);
    v3 = OUTLINED_FUNCTION_66_2();
    OUTLINED_FUNCTION_70(v3, v4);
    sub_1C754F1AC();
    v5 = OUTLINED_FUNCTION_55();
    v6(v5);
    OUTLINED_FUNCTION_8_38();

    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    v8 = *(v0 + 1704);
    __swift_destroy_boxed_opaque_existential_1(v0 + 1592);
    v17 = *(v0 + 984);
    v15 = *(v0 + 1008);
    v16 = *(v0 + 1000);
    v18 = *(v0 + 1056);
    v19 = *(v0 + 1048);
    v13 = *(v0 + 1032);
    v14 = *(v0 + 1016);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_1C754F1AC();
    v9 = *(v0 + 1816);
    OUTLINED_FUNCTION_48_15();
    v10 = *(v0 + 1680);
    v11(v9);

    *v10 = v2;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *(v10 + 24) = v17;
    *(v10 + 40) = v16;
    *(v10 + 48) = v15;
    *(v10 + 72) = v13;
    *(v10 + 56) = v14;
    *(v10 + 88) = v19;
    *(v10 + 96) = v18;
    OUTLINED_FUNCTION_43();
  }

  return v7();
}

uint64_t sub_1C71A0784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v17 = OUTLINED_FUNCTION_31_21();
  v15(v17);
  v18 = OUTLINED_FUNCTION_82();
  v15(v18);
  OUTLINED_FUNCTION_12_2(v16);
  sub_1C754F1AC();
  v19 = OUTLINED_FUNCTION_44_15();
  v20(v19);
  (v15)(a10, v14);
  OUTLINED_FUNCTION_5_47();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C71A086C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v17 = OUTLINED_FUNCTION_31_21();
  v15(v17);
  v18 = OUTLINED_FUNCTION_82();
  v15(v18);
  OUTLINED_FUNCTION_12_2(v16);
  sub_1C754F1AC();
  v19 = OUTLINED_FUNCTION_44_15();
  v20(v19);
  (v15)(a10, v14);
  OUTLINED_FUNCTION_5_47();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C71A0954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v15 = v14[222];
  v16 = v14[218];
  v17 = v14[217];
  v32 = v14[214];
  v33 = v14[225];
  __swift_destroy_boxed_opaque_existential_1((v14 + 199));
  v18 = *(v16 + 8);
  v18(v15, v17);
  v19 = OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_0_22(v19, v20);
  sub_1C754F1AC();
  v21 = OUTLINED_FUNCTION_44_15();
  v22(v21);
  v18(v32, v17);
  OUTLINED_FUNCTION_5_47();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, a13, a14);
}

uint64_t sub_1C71A0A64()
{
  v1 = *(v0 + 1704);
  __swift_destroy_boxed_opaque_existential_1(v0 + 1592);
  OUTLINED_FUNCTION_0_22(v1, v1[3]);
  sub_1C754F1AC();
  v2 = OUTLINED_FUNCTION_57_0();
  v3(v2);
  v4 = OUTLINED_FUNCTION_117_0();
  v5(v4);
  OUTLINED_FUNCTION_5_47();

  OUTLINED_FUNCTION_43();

  return v6();
}

uint64_t sub_1C71A0B78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72657470616863 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x734174706D6F7270 && a2 == 0xEC00000073746573;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

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

uint64_t sub_1C71A0C88(char a1)
{
  if (!a1)
  {
    return 0x72657470616863;
  }

  if (a1 == 1)
  {
    return 0x734174706D6F7270;
  }

  return 0x74706D6F7270;
}

uint64_t sub_1C71A0CE4()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2188B8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - v4;
  memcpy(__dst, v0, 0x68uLL);
  v6 = v0[13];
  v24 = v0[14];
  v25 = v6;
  v7 = v0[15];
  v22 = v0[16];
  v23 = v7;
  v8 = v0[17];
  v18 = v0[18];
  v19 = v8;
  v9 = v0[20];
  v20 = v0[19];
  v21 = v9;
  v10 = OUTLINED_FUNCTION_98_1();
  __swift_project_boxed_opaque_existential_1(v10, v11);
  sub_1C6FC061C(__dst, v34);
  sub_1C71A8434();
  sub_1C755200C();
  memcpy(v34, __dst, sizeof(v34));
  v37 = 0;
  sub_1C716A2A8();
  sub_1C7551D2C();
  if (v1)
  {
    memcpy(v33, v34, sizeof(v33));
    sub_1C70552E0(v33);
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    v13 = v22;
    v14 = v23;
    v15 = v24;
    v17 = v3;
    v16 = v21;
    memcpy(v33, v34, sizeof(v33));
    sub_1C70552E0(v33);
    v26 = v25;
    v36 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2188C0);
    sub_1C71A8488();
    sub_1C7551D2C();
    v26 = v15;
    v27 = v14;
    v28 = v13;
    v29 = v19;
    v30 = v18;
    v31 = v20;
    v32 = v16;
    v36 = 2;
    sub_1C71A8560();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C7551D2C();

    return (*(v17 + 8))(v5, v2);
  }
}

uint64_t sub_1C71A0FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C71A0B78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C71A1000(uint64_t a1)
{
  v2 = sub_1C71A8434();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C71A103C(uint64_t a1)
{
  v2 = sub_1C71A8434();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void __swiftcall ChapterLLMCurationResult.init(assetUUIDs:llmCuratedAssetCount:llmExtraAssetCount:llmDupeAssetCount:llmHallucinatedAssetCount:unfilteredCompletion:)(PhotosIntelligence::ChapterLLMCurationResult *__return_ptr retstr, Swift::OpaquePointer assetUUIDs, Swift::Int llmCuratedAssetCount, Swift::Int llmExtraAssetCount, Swift::Int llmDupeAssetCount, Swift::Int llmHallucinatedAssetCount, Swift::OpaquePointer unfilteredCompletion)
{
  retstr->assetUUIDs = assetUUIDs;
  retstr->llmCuratedAssetCount = llmCuratedAssetCount;
  retstr->llmExtraAssetCount = llmExtraAssetCount;
  retstr->llmDupeAssetCount = llmDupeAssetCount;
  retstr->llmHallucinatedAssetCount = llmHallucinatedAssetCount;
  retstr->unfilteredCompletion = unfilteredCompletion;
}

unint64_t sub_1C71A10F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 0xD000000000000022;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

uint64_t sub_1C71A1128(uint64_t a1)
{
  v2 = sub_1C71A8020();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C71A1164(uint64_t a1)
{
  v2 = sub_1C71A8020();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C71A11A4()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD08E68);
  __swift_project_value_buffer(v0, qword_1EDD08E68);
  return sub_1C754FEFC();
}

uint64_t sub_1C71A1238()
{
  if (qword_1EC213E78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC25B6C0);
  v0 = qword_1EC25B6C8;
  if (!qword_1EC25B6C8)
  {
    if (qword_1EDD0A988 != -1)
    {
      OUTLINED_FUNCTION_30_0();
    }

    static LLMWrapper.tokenGenerator(for:)();
    v0 = v1;
    qword_1EC25B6C8 = v1;
  }

  os_unfair_lock_unlock(&dword_1EC25B6C0);
  return v0;
}

uint64_t sub_1C71A12F8(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9)
{
  v10 = v9;
  v46 = a8;
  v51 = a5;
  v52 = a7;
  v49 = a1;
  v50 = a4;
  v48 = a3;
  v47 = a9;
  v45 = type metadata accessor for AssetCurationDiagnosticsGenerator();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for AssetRichDescriptionsGenerator();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v55, a2, 0x130uLL);
  v18 = *a6;
  v43 = *(a6 + 8);
  v19 = *(a6 + 16);
  v20 = OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_logger;
  if (qword_1EDD08E60 != -1)
  {
    OUTLINED_FUNCTION_3_61();
    swift_once();
  }

  v21 = sub_1C754FF1C();
  v22 = __swift_project_value_buffer(v21, qword_1EDD08E68);
  (*(*(v21 - 8) + 16))(v10 + v20, v22, v21);
  v23 = OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_curationSession;
  *(v10 + v23) = [objc_allocWithZone(CLSCurationSession) init];
  *(v10 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_configuration) = v49;
  memcpy((v10 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyElements), a2, 0x130uLL);
  v24 = (v10 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyTitle);
  v25 = v50;
  v26 = v51;
  *v24 = v48;
  v24[1] = v25;
  *(v10 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_traits) = v26;
  v27 = v10 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyPhotoLibraryContext;
  *v27 = v18;
  v28 = v43;
  *(v27 + 8) = v43;
  *(v27 + 16) = v19;
  sub_1C6FB5E28(v52, v10 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyAssetsFetcher);
  sub_1C6FDE884(v55, v54);
  sub_1C75504FC();
  sub_1C75504FC();
  v29 = v18;

  sub_1C754FEFC();
  v30 = &v17[*(v44 + 20)];
  *v30 = v29;
  *(v30 + 4) = v28;
  *(v30 + 2) = v19;
  sub_1C71A8320(v17, v10 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_assetRichDescriptionsGenerator, type metadata accessor for AssetRichDescriptionsGenerator);
  type metadata accessor for LLMAssetCache();
  swift_allocObject();
  *(v10 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_assetCache) = LLMAssetCache.init()();
  v31 = v46;
  *(v10 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_diagnosticContext) = v46;
  swift_retain_n();
  v32 = v42;
  sub_1C754FEFC();
  *v32 = v31;
  sub_1C71A8320(v32, v10 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_assetCurationDiagnosticsGenerator, type metadata accessor for AssetCurationDiagnosticsGenerator);
  v33 = v55[1];
  memcpy(v54, &v55[27], 0x50uLL);
  v34 = objc_opt_self();
  v35 = v33;
  sub_1C7027A20(&v55[27], &v53);
  LOBYTE(v34) = [v34 shufflePromptParameters];
  type metadata accessor for AssetCurationPromptGeneratorConfiguration();
  swift_allocObject();
  AssetCurationPromptGeneratorConfiguration.init(userPrompt:storyTitle:extendedTokens:traits:targetAssetCount:lifeContextMaximumTokenCount:assetCurationPromptMaximumTokenCount:shufflePromptParameters:)(v35, v48, v50, v54, v51, v49, 200, 3700, v34);
  type metadata accessor for AssetCurationPromptGenerator();
  swift_allocObject();

  *(v10 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_assetCurationPromptGenerator) = AssetCurationPromptGenerator.init(with:)(v36);
  if (qword_1EDD0E038 != -1)
  {
    swift_once();
  }

  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  v38 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E040);
  MEMORY[0x1EEE9AC00](v38);
  v39 = sub_1C707351C();
  sub_1C6FE0DC0(v55);

  __swift_destroy_boxed_opaque_existential_1(v52);
  *(v10 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_promoteAssetsWithLocation) = v39;
  sub_1C6F699F8(v47, v10 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_aiEventReporting);
  return v10;
}

uint64_t sub_1C71A1814()
{
  OUTLINED_FUNCTION_42();
  v1[143] = v0;
  v1[142] = v2;
  v1[141] = v3;
  v1[140] = v4;
  v1[139] = v5;
  v1[138] = v6;
  v7 = sub_1C754F38C();
  v1[144] = v7;
  OUTLINED_FUNCTION_18(v7);
  v1[145] = v8;
  v1[146] = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C71A18D8()
{
  v41 = v0;
  __swift_project_boxed_opaque_existential_1(*(v0 + 1128), *(*(v0 + 1128) + 24));
  sub_1C754F1CC();
  v1 = sub_1C754FEEC();
  sub_1C75511BC();
  v2 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_23_1();
    v5 = OUTLINED_FUNCTION_20_1();
    v40[0] = v5;
    *v4 = 136315394;
    v6 = sub_1C6F765A4(27444, 0xE200000000000000, v40);
    OUTLINED_FUNCTION_43_18(v6);
    *(v4 + 14) = 55;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v12 = *(v0 + 1144);
  v13 = *(v0 + 1104);
  v14 = objc_opt_self();
  v15 = [v14 promotePlayableAssetsInStories];
  v16 = [v14 chapterCuratorFeatureTypesForDistribution];
  sub_1C7212E74(v16, v17, v18, v19, v20, v21, v22, v23, v39, SWORD2(v39), SBYTE6(v39), SHIBYTE(v39), v40[0], v40[1], v40[2], v40[3], v40[4], v40[5], v41, v42, v43);
  v25 = v24;

  *(v0 + 1032) = 20;
  *(v0 + 1040) = 55;
  *(v0 + 1048) = 0x3F847AE147AE147BLL;
  *(v0 + 1056) = 0x3F847AE147AE147BLL;
  *(v0 + 1064) = 1;
  *(v0 + 1065) = v15;
  *(v0 + 1072) = v25;
  v26 = OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyElements;
  memcpy((v0 + 16), (v12 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyElements), 0x130uLL);
  memcpy((v0 + 320), (v12 + v26), 0x130uLL);
  v27 = *(v12 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyPhotoLibraryContext);
  v28 = *(v12 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyPhotoLibraryContext + 8);
  v29 = *(v12 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyPhotoLibraryContext + 16);
  *(v0 + 1080) = v27;
  *(v0 + 1088) = v28;
  *(v0 + 1096) = v29;
  v30 = *(v12 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_diagnosticContext);
  type metadata accessor for FreeformStoryAssetElector();
  swift_allocObject();
  sub_1C6FDE884(v0 + 16, v0 + 624);

  v31 = v27;

  *(v0 + 1176) = sub_1C72133FC((v0 + 1032), v0 + 320, 1, (v0 + 1080), v30);
  memcpy((v0 + 928), v13, 0x68uLL);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 1184) = v32;
  *v32 = v33;
  v32[1] = sub_1C71A1BC0;
  v34 = *(v0 + 1136);
  v35 = *(v0 + 1128);
  v36 = *(v0 + 1120);
  v37 = *(v0 + 1112);

  return sub_1C7210E4C(v0 + 928, v37, v36, v35, v34);
}

uint64_t sub_1C71A1BC0()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 1192) = v0;

  if (!v0)
  {
    *(v5 + 1200) = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C71A1CCC()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_58_14();
  OUTLINED_FUNCTION_12_2(v0);
  sub_1C754F1AC();
  v2 = OUTLINED_FUNCTION_57_0();
  v3(v2);

  v4 = *(v1 + 8);
  v5 = *(v1 + 1200);

  return v4(v5);
}

uint64_t sub_1C71A1D6C()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_58_14();
  OUTLINED_FUNCTION_12_2(v0);
  sub_1C754F1AC();
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C71A1E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C755180C();

  MEMORY[0x1CCA5CD70](a1, a2);
  MEMORY[0x1CCA5CD70](1819113518, 0xE400000000000000);
  v7 = *(v3 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_diagnosticContext);
  if (v7)
  {
    sub_1C75504FC();
    sub_1C7162634(0xD000000000000014, 0x80000001C75A2BD0, v7, a3);
  }
}

void sub_1C71A1EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a2 + 16);
  sub_1C75504FC();
  sub_1C6FB0C38();
  v10 = *(*(a1 + 48) + 16);
  sub_1C6FB147C();
  v11 = *(a1 + 48);
  *(v11 + 16) = v10 + 1;
  v12 = v11 + 32 * v10;
  *(v12 + 32) = v9;
  *(v12 + 40) = a3;
  *(v12 + 48) = a4;
  *(v12 + 56) = 15;
  *(a1 + 48) = v11;
  v13 = *(a5 + 16);
  sub_1C75504FC();
  sub_1C6FB0C38();
  v14 = *(*(a1 + 48) + 16);
  sub_1C6FB147C();
  v15 = *(a1 + 48);
  *(v15 + 16) = v14 + 1;
  v16 = v15 + 32 * v14;
  *(v16 + 32) = v13;
  *(v16 + 40) = a3;
  *(v16 + 48) = a4;
  *(v16 + 56) = 16;
  *(a1 + 48) = v15;
}

uint64_t sub_1C71A1FC4()
{
  OUTLINED_FUNCTION_49_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  *(v1 + 1048) = v2;
  *(v1 + 1040) = v7;
  *(v1 + 1032) = v8;
  *(v1 + 1024) = v9;
  *(v1 + 1016) = v10;
  *(v1 + 1008) = v11;
  *(v1 + 1000) = v12;
  *(v1 + 1056) = *v2;
  v13 = sub_1C754F2FC();
  *(v1 + 1064) = v13;
  OUTLINED_FUNCTION_18(v13);
  *(v1 + 1072) = v14;
  *(v1 + 1080) = swift_task_alloc();
  *(v1 + 1088) = swift_task_alloc();
  *(v1 + 1096) = swift_task_alloc();
  *(v1 + 1104) = swift_task_alloc();
  memcpy((v1 + 352), v6, 0x68uLL);
  *(v1 + 1234) = *v4;
  *(v1 + 1235) = v4[1];
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C71A2108()
{
  v1 = *(v0 + 1000);
  sub_1C754F2BC();
  sub_1C754F2BC();
  v2 = *(v1 + 16);
  *(v0 + 1112) = v2;
  *(v0 + 1120) = OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_assetCache;
  *(v0 + 1144) = MEMORY[0x1E69E7CC0];
  *(v0 + 1128) = 0u;
  if (v2)
  {
    v3 = *(v0 + 1000);
    *(v0 + 1152) = v3[4];
    *(v0 + 1160) = v3[5];
    *(v0 + 1168) = v3[6];
    *(v0 + 1176) = v3[7];
    OUTLINED_FUNCTION_21_29();
    sub_1C75504FC();
    OUTLINED_FUNCTION_0_11();
    OUTLINED_FUNCTION_12_1();

    return MEMORY[0x1EEE6DFA0](v4, v5, v6);
  }

  else
  {
    v8 = *(v0 + 1235);
    v9 = *(v0 + 1234);
    v10 = *(v0 + 1104);
    v11 = *(v0 + 1088);
    v12 = *(v0 + 1072);
    v13 = *(v0 + 1064);
    v30 = *(v0 + 1024);
    v14 = *(v0 + 1016);
    v15 = *(v0 + 1008);
    v16 = *(*(v0 + 1048) + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_assetCurationPromptGenerator);
    memcpy((v0 + 456), (v0 + 352), 0x68uLL);
    *(v0 + 1232) = v9;
    *(v0 + 1233) = v8;
    v17 = *(v12 + 32);
    v17(v11, v10, v13);
    v18 = MEMORY[0x1E69E7CC0];
    v19 = OUTLINED_FUNCTION_71_7();
    sub_1C7437AAC(v19, v20, v15, v21, v14, v30, v11, v22);
    v23 = OUTLINED_FUNCTION_70_12();
    v31 = v24;
    v29 = v23;
    OUTLINED_FUNCTION_76_9();
    *(v0 + 120) = v18;
    *(v0 + 128) = v31;
    *(v0 + 144) = v29;
    *(v0 + 160) = v14;
    OUTLINED_FUNCTION_59_12((v0 + 808));
    v17(0, v16, v8);
    sub_1C6FC061C(v0 + 352, v0 + 560);
    sub_1C75504FC();
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 1216) = v25;
    *v25 = v26;
    OUTLINED_FUNCTION_15_40(v25);
    OUTLINED_FUNCTION_12_1();

    return sub_1C71A2D00();
  }
}

uint64_t sub_1C71A23E0()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[141];
  v2 = sub_1C70CDFD4(v0[144], v0[145]);
  v0[149] = v1;
  v0[150] = v2;
  v0[151] = v3;
  if (v1)
  {
    swift_bridgeObjectRelease_n();
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C71A2498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v18 + 1144);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_99();
    sub_1C6FB27E8();
    v20 = v65;
  }

  v22 = *(v20 + 16);
  v21 = *(v20 + 24);
  if (v22 >= v21 >> 1)
  {
    OUTLINED_FUNCTION_15(v21);
    sub_1C6FB27E8();
    v20 = v66;
  }

  v23 = *(v18 + 1200);
  v24 = *(v18 + 1176);
  v25 = *(v18 + 1168);
  v26 = *(v18 + 1152);
  *(v20 + 16) = v22 + 1;
  v27 = v20 + 48 * v22;
  *(v27 + 32) = v26;
  *(v27 + 48) = v23;
  *(v27 + 64) = v25;
  *(v27 + 72) = v24;
  v28 = *(v18 + 1192);
  v29 = *(v18 + 1136) + 1;
  *(v18 + 1144) = v20;
  *(v18 + 1136) = v29;
  *(v18 + 1128) = v28;
  if (v29 == *(v18 + 1112))
  {
    v30 = *(v18 + 1235);
    v67 = (v18 + 808);
    v31 = *(v18 + 1234);
    v32 = *(v18 + 1104);
    v33 = *(v18 + 1088);
    v34 = *(v18 + 1072);
    v35 = *(v18 + 1064);
    v71 = *(v18 + 1024);
    v36 = *(v18 + 1008);
    v68 = *(*(v18 + 1048) + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_assetCurationPromptGenerator);
    v69 = *(v18 + 1016);
    memcpy((v18 + 456), (v18 + 352), 0x68uLL);
    *(v18 + 1232) = v31;
    *(v18 + 1233) = v30;
    v37 = *(v34 + 32);
    v37(v33, v32, v35);
    v38 = OUTLINED_FUNCTION_71_7();
    sub_1C7437AAC(v38, v39, v36, v40, v69, v71, v33, v41);
    if (v28)
    {
      v42 = *(v18 + 1096);
      v43 = *(v18 + 1072);
      v44 = *(v18 + 1064);

      v45 = *(v43 + 8);
      v45(v42, v44);
      v46 = OUTLINED_FUNCTION_117_0();
      (v45)(v46);
      OUTLINED_FUNCTION_36_17();

      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_94_1();

      return v48(v47, v48, v49, v50, v51, v52, v53, v54, v67, v68, v69, a12, v71, a14, a15, a16, a17, a18);
    }

    else
    {
      v70 = OUTLINED_FUNCTION_70_12();
      v72 = v61;
      OUTLINED_FUNCTION_76_9();
      *(v18 + 120) = v20;
      *(v18 + 128) = v72;
      *(v18 + 144) = v70;
      *(v18 + 160) = v35;
      OUTLINED_FUNCTION_59_12(v67);
      v37(0, v68, v33);
      sub_1C6FC061C(v18 + 352, v18 + 560);
      sub_1C75504FC();
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v18 + 1216) = v62;
      *v62 = v63;
      OUTLINED_FUNCTION_15_40(v62);
      OUTLINED_FUNCTION_94_1();

      return sub_1C71A2D00();
    }
  }

  else
  {
    v56 = (*(v18 + 1000) + 32 * v29);
    *(v18 + 1152) = v56[4];
    *(v18 + 1160) = v56[5];
    *(v18 + 1168) = v56[6];
    *(v18 + 1176) = v56[7];
    OUTLINED_FUNCTION_21_29();
    sub_1C75504FC();
    OUTLINED_FUNCTION_0_11();
    OUTLINED_FUNCTION_94_1();

    return MEMORY[0x1EEE6DFA0](v57, v58, v59);
  }
}

uint64_t sub_1C71A2798()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 1224) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C71A2898()
{
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 888);
  *(v0 + 824) = *(v0 + 872);
  *(v0 + 840) = v3;
  *(v0 + 856) = *(v0 + 904);
  v4 = *(v0 + 824);
  v2[6] = *(v0 + 832);
  v2[7] = *(v0 + 840);
  v2[8] = *(v0 + 848);
  v2[9] = *(v0 + 856);
  if (*(v1 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_diagnosticContext))
  {
    *(v0 + 968) = *(v0 + 368);
    sub_1C75504FC();

    sub_1C6FCA460(v0 + 968, v0 + 984);
    MEMORY[0x1CCA5CD70](0x754F204D4C4C203ALL, 0xEC00000074757074);
    OUTLINED_FUNCTION_61_9();
    v10 = sub_1C7164AD8(v5, v6, v7, v8, v9);

    sub_1C6FC061C(v0 + 352, v0 + 664);
    sub_1C71A8178(v0 + 824, v0 + 920);
    sub_1C716167C();
  }

  else
  {
    sub_1C75504FC();
  }

  v11 = *(v0 + 1224);

  OUTLINED_FUNCTION_32_17();
  static FreeformStoryChapterCurator.checkHallucinatedAssets(result:numberOfPromptAssets:targetNumberOfAssetsPerChapter:)(v12);
  if (v11)
  {
    v14 = *(v0 + 1072);
    v15 = *(v0 + 1064);
    v16 = *(v0 + 1032);

    sub_1C6FC1868(v0 + 16);
    sub_1C716A018(v0 + 824);
    (*(v14 + 8))(v16, v15);
    OUTLINED_FUNCTION_36_17();

    OUTLINED_FUNCTION_6_0();

    return v17();
  }

  else
  {
    OUTLINED_FUNCTION_32_17();
    static FreeformStoryChapterCurator.checkDuplicatedAssets(result:numberOfPromptAssets:targetNumberOfAssetsPerChapter:)(v13);
    sub_1C716A018(v0 + 824);
    sub_1C754F2EC();
    sub_1C6FC1868(v0 + 16);

    v19 = *(v0 + 8);

    return v19(v4);
  }
}

uint64_t sub_1C71A2B40()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0[134] + 8);
  (v1)(v0[137], v0[133]);
  v2 = OUTLINED_FUNCTION_66_2();
  v1(v2);
  v3 = OUTLINED_FUNCTION_0_11();
  v1(v3);
  OUTLINED_FUNCTION_77_9();

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C71A2C08()
{
  OUTLINED_FUNCTION_49_0();
  sub_1C6FC1868(v0 + 16);
  v1 = OUTLINED_FUNCTION_90();
  v2(v1);
  OUTLINED_FUNCTION_77_9();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C71A2CA8()
{
  v0 = objc_autoreleasePoolPush();
  v1 = OUTLINED_FUNCTION_90();
  sub_1C71A36E0(v1, v2, v3);
  objc_autoreleasePoolPop(v0);
  return v5;
}

uint64_t sub_1C71A2D00()
{
  OUTLINED_FUNCTION_42();
  v1[100] = v0;
  v1[99] = v2;
  v1[98] = v3;
  v1[97] = v4;
  v1[96] = v5;
  v1[101] = *v0;
  memcpy(v1 + 28, v4, 0xA8uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C71A2DA0()
{
  OUTLINED_FUNCTION_49_0();
  v1 = sub_1C71A1238();
  *(v0 + 816) = v1;
  if (v1)
  {
    v2 = v1;
    memcpy((v0 + 392), *(v0 + 776), 0xA8uLL);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 824) = v3;
    *v3 = v4;
    v3[1] = sub_1C71A2EF4;
    v5 = *(v0 + 792);
    v6 = *(v0 + 784);
    v7 = *(v0 + 768);

    return sub_1C71A3894(v7, (v0 + 392), v2, v6, v5);
  }

  else
  {
    v9 = *(v0 + 792);
    sub_1C6FB5280();
    swift_allocError();
    swift_willThrow();
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v10 + 8))(v9);
    OUTLINED_FUNCTION_43();

    return v11();
  }
}

uint64_t sub_1C71A2EF4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 832) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C71A2FF0()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C71A304C()
{
  v11 = v0;
  v1 = v0[104];
  sub_1C6FC1764((v0 + 28), (v0 + 70));
  sub_1C755180C();

  v10[0] = 0xD000000000000013;
  v10[1] = 0x80000001C75A2B70;
  v0[94] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  v3 = sub_1C75506EC();
  MEMORY[0x1CCA5CD70](v3);

  MEMORY[0x1CCA5CD70](0xD000000000000015, 0x80000001C75A2B90);
  swift_getErrorValue();
  v4 = sub_1C7551EAC();
  MEMORY[0x1CCA5CD70](v4);

  MEMORY[0x1CCA5CD70](34, 0xE100000000000000);
  v5 = v10[0];
  v6 = v10[1];
  memcpy(v0 + 2, v0 + 28, 0xA8uLL);
  v7 = MEMORY[0x1E69E7CC0];
  v0[23] = MEMORY[0x1E69E7CC0];
  v0[24] = v7;
  v0[25] = v7;
  v0[26] = v5;
  v0[27] = v6;
  memcpy(v10, v0 + 2, 0xD0uLL);
  sub_1C6FC11CC(v10);
  swift_willThrow();
  sub_1C71A81B0((v0 + 2));

  OUTLINED_FUNCTION_43();

  return v8();
}

uint64_t sub_1C71A320C(uint64_t a1)
{
  swift_isUniquelyReferenced_nonNull_native();
  v2 = *(a1 + 56);
  v3 = OUTLINED_FUNCTION_117_0();
  v5 = sub_1C6F78124(v3, v4);
  if (__OFADD__(*(v2 + 16), (v6 & 1) == 0))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v5;
  v8 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A8);
  if ((sub_1C7551A2C() & 1) == 0)
  {
LABEL_5:
    *(a1 + 56) = v2;
    if ((v8 & 1) == 0)
    {
      sub_1C6FC6D3C(v7, 0x7543207465737341, 0xEE006E6F69746172, 0, v2);
    }

    v13 = *(v2 + 56);
    v14 = *(v13 + 8 * v7);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (!v15)
    {
      *(v13 + 8 * v7) = v16;
      sub_1C75519EC();
      swift_isUniquelyReferenced_nonNull_native();
      v18 = *(a1 + 176);
      result = sub_1C6FC80A4();
      *(a1 + 176) = v18;
      return result;
    }

    goto LABEL_10;
  }

  v9 = OUTLINED_FUNCTION_117_0();
  v11 = sub_1C6F78124(v9, v10);
  if ((v8 & 1) == (v12 & 1))
  {
    v7 = v11;
    goto LABEL_5;
  }

LABEL_11:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void static FreeformStoryChapterCurator.checkHallucinatedAssets(result:numberOfPromptAssets:targetNumberOfAssetsPerChapter:)(uint64_t a1)
{
  if (*(a1 + 32) >= 1)
  {
    OUTLINED_FUNCTION_63_12();
    if (v5 ^ v6 | v4)
    {
      v7 = v3;
    }

    else
    {
      v7 = v2;
    }

    if (v7 <= v1)
    {
      OUTLINED_FUNCTION_46_17();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
      sub_1C703328C();
      v20 = OUTLINED_FUNCTION_57_14();
      v22 = v21;

      MEMORY[0x1CCA5CD70](v20, v22);

      MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
      sub_1C70553F8();
      swift_allocError();
      *v23 = v24;
      *(v23 + 8) = v25;
      *(v23 + 16) = 1;
      swift_willThrow();
    }

    else
    {
      if (qword_1EDD08E60 != -1)
      {
        OUTLINED_FUNCTION_3_61();
        swift_once();
      }

      v8 = sub_1C754FF1C();
      __swift_project_value_buffer(v8, qword_1EDD08E68);
      v9 = sub_1C754FEEC();
      sub_1C75511BC();
      v10 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v10, v11))
      {
        OUTLINED_FUNCTION_65_13();
        v12 = swift_slowAlloc();
        OUTLINED_FUNCTION_28_17(v12, 3.8523e-34);
        OUTLINED_FUNCTION_45_16();
        _os_log_impl(v13, v14, v15, v16, v17, v18);
        v19 = OUTLINED_FUNCTION_6_51();
        MEMORY[0x1CCA5F8E0](v19);
      }
    }
  }
}

void static FreeformStoryChapterCurator.checkDuplicatedAssets(result:numberOfPromptAssets:targetNumberOfAssetsPerChapter:)(uint64_t a1)
{
  if (*(a1 + 24) >= 1)
  {
    OUTLINED_FUNCTION_63_12();
    if (v5 ^ v6 | v4)
    {
      v7 = v3;
    }

    else
    {
      v7 = v2;
    }

    if (v7 <= v1)
    {
      OUTLINED_FUNCTION_46_17();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
      sub_1C703328C();
      v20 = OUTLINED_FUNCTION_57_14();
      v22 = v21;

      MEMORY[0x1CCA5CD70](v20, v22);

      MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
      sub_1C70553F8();
      swift_allocError();
      *v23 = v24;
      *(v23 + 8) = v25;
      *(v23 + 16) = 0;
      swift_willThrow();
    }

    else
    {
      if (qword_1EDD08E60 != -1)
      {
        OUTLINED_FUNCTION_3_61();
        swift_once();
      }

      v8 = sub_1C754FF1C();
      __swift_project_value_buffer(v8, qword_1EDD08E68);
      v9 = sub_1C754FEEC();
      sub_1C75511BC();
      v10 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v10, v11))
      {
        OUTLINED_FUNCTION_65_13();
        v12 = swift_slowAlloc();
        OUTLINED_FUNCTION_28_17(v12, 3.8523e-34);
        OUTLINED_FUNCTION_45_16();
        _os_log_impl(v13, v14, v15, v16, v17, v18);
        v19 = OUTLINED_FUNCTION_6_51();
        MEMORY[0x1CCA5F8E0](v19);
      }
    }
  }
}

void sub_1C71A36E0(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = [a1 librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C755BAB0;
  *(v6 + 32) = sub_1C755068C();
  *(v6 + 40) = v7;
  sub_1C6FCA0EC(v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C75604F0;
  v9 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v10 = sub_1C6F6AF98(0x6165724365746164, 0xEB00000000646574, 1);
  v11 = sub_1C6F65BE8(0, &qword_1EDD108F0);
  *(v8 + 56) = v11;
  *(v8 + 32) = v10;
  v12 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v13 = sub_1C6F6AF98(0x44497463656A626FLL, 0xE800000000000000, 1);
  *(v8 + 88) = v11;
  *(v8 + 64) = v13;
  sub_1C70E7F40(v8, v5);
  v14 = objc_opt_self();
  v15 = v5;
  v16 = sub_1C6FCA158(a2, v5, v14);

  if (v16)
  {

    *a3 = v16;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C71A3894(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[90] = v5;
  v6[89] = a5;
  v6[88] = a4;
  v6[87] = a3;
  v6[86] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8);
  v6[91] = swift_task_alloc();
  v8 = sub_1C754FA7C();
  v6[92] = v8;
  v6[93] = *(v8 - 8);
  v6[94] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0);
  v6[95] = swift_task_alloc();
  v9 = sub_1C754F38C();
  v6[96] = v9;
  v6[97] = *(v9 - 8);
  v6[98] = swift_task_alloc();
  v10 = sub_1C754F61C();
  v6[99] = v10;
  v6[100] = *(v10 - 8);
  v6[101] = swift_task_alloc();
  v11 = sub_1C754DFFC();
  v6[102] = v11;
  v6[103] = *(v11 - 8);
  v6[104] = swift_task_alloc();
  v6[105] = swift_task_alloc();
  v12 = sub_1C754E72C();
  v6[106] = v12;
  v6[107] = *(v12 - 8);
  v6[108] = swift_task_alloc();
  v6[109] = swift_task_alloc();
  v6[110] = swift_task_alloc();
  v6[111] = type metadata accessor for LLMConfiguration(0);
  v6[112] = swift_task_alloc();
  v6[113] = swift_task_alloc();
  memcpy(v6 + 2, a2, 0xA8uLL);

  return MEMORY[0x1EEE6DFA0](sub_1C71A3BB8, 0, 0);
}

uint64_t sub_1C71A3BB8()
{
  v81 = v0;
  if (qword_1EDD0A988 != -1)
  {
    OUTLINED_FUNCTION_30_0();
  }

  v1 = *(v0 + 904);
  v2 = *(v0 + 720);
  type metadata accessor for LLMConfigurationProvider();
  LOBYTE(v79[0]) = 13;
  static LLMConfigurationProvider.configuration(for:logger:)(v79, v2 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_logger, v1);
  v3 = *(v0 + 720);
  v4 = (*(v0 + 904) + *(*(v0 + 888) + 40));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *(v0 + 561) = *(v4 + 41);
  *(v0 + 536) = v6;
  *(v0 + 552) = v7;
  *(v0 + 520) = v5;
  v8 = v4[1];
  v79[0] = *v4;
  v79[1] = v8;
  v80[0] = v4[2];
  *(v80 + 9) = *(v4 + 41);
  static LLMWrapper.gmsSamplingParameters(from:)();
  v9 = *(v0 + 136);
  v10 = *(v0 + 144);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 168);
  v14 = *(v0 + 176);
  *(v0 + 584) = *(v0 + 128);
  *(v0 + 592) = v9;
  *(v0 + 600) = v10;
  *(v0 + 608) = v11;
  *(v0 + 616) = v12;
  *(v0 + 624) = v13;
  *(v0 + 632) = v14;
  v15 = *(v3 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_diagnosticContext);
  if (v15)
  {
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    if (sub_1C71656D8())
    {
      v16 = (v15 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
      os_unfair_lock_lock(v16);
      sub_1C71A606C(&v16[2], 13, v0 + 584, (v0 + 520));
      os_unfair_lock_unlock(v16);
    }
  }

  v17 = *(v0 + 720);
  sub_1C754DFEC();
  v18 = OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_aiEventReporting;
  *(v0 + 912) = OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_aiEventReporting;
  __swift_project_boxed_opaque_existential_1((v17 + v18), *(v17 + v18 + 24));
  LOBYTE(v79[0]) = 4;
  OUTLINED_FUNCTION_52_15();
  v19();
  type metadata accessor for LLMDefaults();
  static LLMDefaults.backendType.getter(v79);
  v78 = v14;
  switch(LOBYTE(v79[0]))
  {
    case 3:

      break;
    default:
      sub_1C7551DBC();

      break;
  }

  sub_1C754F60C();
  v71 = *(v0 + 904);
  v72 = *(v0 + 896);
  v74 = *(v0 + 872);
  v75 = *(v0 + 880);
  v20 = *(v0 + 856);
  v73 = *(v0 + 848);
  v21 = *(v0 + 808);
  v22 = *(v0 + 800);
  v23 = *(v0 + 792);
  v24 = *(v0 + 760);
  v69 = *(v0 + 752);
  v70 = *(v0 + 888);
  v25 = *(v0 + 744);
  v68 = *(v0 + 736);
  __swift_project_boxed_opaque_existential_1(*(v0 + 704), *(*(v0 + 704) + 24));
  (*(v22 + 16))(v24, v21, v23);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v23);
  sub_1C754F16C();
  sub_1C6FB5FC8(v24, &qword_1EC214BF0);
  (*(v25 + 16))(v69, v71 + *(v70 + 24), v68);
  sub_1C71A8204(v71, v72);
  v26 = *(v20 + 16);
  v26(v74, v75, v73);
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v27 = v14;
  sub_1C75504FC();
  sub_1C6FC1764(v0 + 16, v0 + 184);
  v28 = sub_1C754FEEC();
  v29 = sub_1C75511BC();
  sub_1C6FC1868(v0 + 16);

  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 896);
  if (v30)
  {
    v77 = *(v0 + 872);
    v76 = *(v0 + 864);
    v32 = *(v0 + 856);
    v33 = *(v0 + 848);
    OUTLINED_FUNCTION_65_13();
    v34 = swift_slowAlloc();
    *&v79[0] = swift_slowAlloc();
    *v34 = 136643587;
    sub_1C75504FC();
    v35 = OUTLINED_FUNCTION_66_2();
    v38 = sub_1C6F765A4(v35, v36, v37);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2085;
    v39 = sub_1C75504BC();
    v41 = sub_1C6F765A4(v39, v40, v79);

    *(v34 + 14) = v41;
    *(v34 + 22) = 2080;
    sub_1C754E15C();
    sub_1C71A82D8(&qword_1EDD0CB88, MEMORY[0x1E6969770]);
    sub_1C7551D8C();
    OUTLINED_FUNCTION_0_91();
    sub_1C71A8268(v31, v42);
    v43 = OUTLINED_FUNCTION_66_2();
    v46 = sub_1C6F765A4(v43, v44, v45);

    *(v34 + 24) = v46;
    *(v34 + 32) = 2080;
    v26(v76, v77, v33);
    sub_1C75506EC();
    v47 = *(v32 + 8);
    v48 = v33;
    v27 = v78;
    (v47)(v77, v48);
    v49 = OUTLINED_FUNCTION_66_2();
    v52 = sub_1C6F765A4(v49, v50, v51);

    *(v34 + 34) = v52;
    _os_log_impl(&dword_1C6F5C000, v28, v29, "Generating asset curation for chapter %{sensitive}s with bindings: %{sensitive}s, locale: %s, and sampling parameters: %s", v34, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
    v53 = *(v0 + 856);

    v47 = *(v53 + 8);
    v54 = OUTLINED_FUNCTION_66_2();
    v47(v54);
    OUTLINED_FUNCTION_0_91();
    sub_1C71A8268(v31, v55);
  }

  *(v0 + 920) = v47;
  v56 = *(v0 + 904);
  v57 = *(v0 + 728);
  v58 = *(*(v0 + 888) + 44);
  v59 = sub_1C754E15C();
  OUTLINED_FUNCTION_12();
  (*(v60 + 16))(v57, v56 + v58, v59);
  __swift_storeEnumTagSinglePayload(v57, 0, 1, v59);
  v61 = swift_task_alloc();
  *(v0 + 928) = v61;
  *v61 = v0;
  v61[1] = sub_1C71A44C4;
  v62 = OUTLINED_FUNCTION_61_3(*(v0 + 752));

  return sub_1C71A4F00(v62, v63, v64, v27, v65, v66);
}

uint64_t sub_1C71A44C4()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  *(v8 + 936) = v7;
  *(v8 + 944) = v0;

  sub_1C6FB5FC8(*(v2 + 728), &qword_1EC214DF8);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C71A4600()
{
  v1 = v0[98];
  v2 = v0[97];
  v3 = v0[96];
  v4 = v0[88];
  (*(v0[93] + 8))(v0[94], v0[92]);
  OUTLINED_FUNCTION_70(v4, v4[3]);
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v3);
  v5 = OUTLINED_FUNCTION_57_0();
  v6(v5);
  memcpy(v0 + 44, v0 + 2, 0xA8uLL);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[119] = v7;
  *v7 = v8;
  v7[1] = sub_1C71A4758;

  return sub_1C71A61D0();
}

uint64_t sub_1C71A4758()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 960) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C71A4860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_75_0();
  v27 = v26[118];
  v61 = v26[115];
  v63 = v26[113];
  v57 = v26[106];
  v58 = v26[110];
  v53 = v26[104];
  v54 = v26[105];
  v28 = v26[103];
  v55 = v26[102];
  v56 = v26[107];
  v29 = v26[100];
  v51 = v26[99];
  v52 = v26[101];
  v30 = v26[98];
  v31 = v26[97];
  v50 = v26[96];
  v59 = v26[89];
  v32 = v26[88];
  v33 = (v26[90] + v26[114]);
  (*(v26[93] + 8))(v26[94], v26[92]);
  OUTLINED_FUNCTION_70(v32, v32[3]);
  sub_1C754F1AC();
  (*(v31 + 8))(v30, v50);
  (*(v29 + 8))(v52, v51);
  swift_willThrow();
  v34 = v33[4];
  OUTLINED_FUNCTION_70(v33, v33[3]);
  HIBYTE(a22) = 4;
  v35 = *(v34 + 16);
  v36 = v27;
  OUTLINED_FUNCTION_52_15();
  v35();

  v37 = *(v28 + 8);
  v37(v53, v55);
  v37(v54, v55);
  v61(v58, v57);
  OUTLINED_FUNCTION_0_91();
  sub_1C71A8268(v63, v38);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v39 + 8))(v59);
  OUTLINED_FUNCTION_10_42();
  v60 = v26[94];
  v62 = v26[91];
  v64 = v40;

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_130_0();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, v50, v51, v52, "memoryCreation.Storyteller", v53, v54, v55, v56, v57, v58, v60, v62, v64, a22, a23, a24, a25, a26);
}

uint64_t sub_1C71A4B1C()
{
  v1 = *(v0 + 904);
  v18 = *(v0 + 920);
  v16 = *(v0 + 848);
  v17 = *(v0 + 880);
  v2 = *(v0 + 840);
  v3 = *(v0 + 832);
  v4 = *(v0 + 824);
  v5 = *(v0 + 816);
  v6 = *(v0 + 688);
  v7 = (*(v0 + 720) + *(v0 + 912));
  v8 = *(v0 + 680);
  v9 = *(v0 + 648);
  v10 = *(v0 + 664);
  *v6 = *(v0 + 640);
  *(v6 + 8) = v9;
  *(v6 + 24) = v10;
  *(v6 + 40) = v8;
  OUTLINED_FUNCTION_70(v7, v7[3]);
  OUTLINED_FUNCTION_52_15();
  v11();
  v12 = *(v4 + 8);
  v12(v3, v5);
  v12(v2, v5);
  v18(v17, v16);
  OUTLINED_FUNCTION_0_91();
  sub_1C71A8268(v1, v13);

  OUTLINED_FUNCTION_43();

  return v14();
}

uint64_t sub_1C71A4D30()
{
  v12 = v0[115];
  v13 = v0[113];
  v10 = v0[106];
  v11 = v0[110];
  v1 = v0[103];
  v2 = (v0[90] + v0[114]);
  OUTLINED_FUNCTION_70(v2, v2[3]);
  OUTLINED_FUNCTION_52_15();
  v3();
  v4 = *(v1 + 8);
  v5 = OUTLINED_FUNCTION_98_1();
  v4(v5);
  v6 = OUTLINED_FUNCTION_291();
  v4(v6);
  v12(v11, v10);
  OUTLINED_FUNCTION_0_91();
  sub_1C71A8268(v13, v7);
  OUTLINED_FUNCTION_10_42();

  OUTLINED_FUNCTION_43();

  return v8();
}

uint64_t sub_1C71A4F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[27] = a3;
  v6[28] = a4;
  v6[25] = a1;
  v6[26] = a2;
  v6[31] = *a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E00);
  v6[32] = v7;
  v6[33] = *(v7 - 8);
  v6[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E08);
  v6[35] = swift_task_alloc();
  v6[36] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E10);
  v6[37] = swift_task_alloc();
  v8 = sub_1C754EECC();
  v6[38] = v8;
  v6[39] = *(v8 - 8);
  v6[40] = swift_task_alloc();
  v9 = sub_1C754EEEC();
  v6[41] = v9;
  v6[42] = *(v9 - 8);
  v6[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E18);
  v6[44] = swift_task_alloc();
  v10 = sub_1C754FD9C();
  v6[45] = v10;
  v6[46] = *(v10 - 8);
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E20);
  v6[49] = v11;
  v6[50] = *(v11 - 8);
  v6[51] = swift_task_alloc();
  v12 = sub_1C755029C();
  v6[52] = v12;
  v6[53] = *(v12 - 8);
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C71A52D4, 0, 0);
}

uint64_t sub_1C71A52D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_75_0();
  v59 = *(v26 + 472);
  v60 = *(v26 + 480);
  v27 = *(v26 + 448);
  v29 = *(v26 + 424);
  v28 = *(v26 + 432);
  v30 = *(v26 + 416);
  v56 = *(v26 + 408);
  v53 = *(v26 + 456);
  v54 = *(v26 + 400);
  v57 = *(v26 + 392);
  v58 = *(v26 + 464);
  v62 = *(v26 + 384);
  v55 = *(v26 + 232);
  v52 = *(v26 + 224);
  v61 = *(v26 + 352);
  v31 = *(v26 + 200);
  *(swift_task_alloc() + 16) = v31;
  sub_1C75502AC();

  sub_1C755028C();
  v32 = *(v29 + 8);
  *(v26 + 488) = v32;
  *(v26 + 496) = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32(v28, v30);
  sub_1C754DF8C();
  *(v26 + 504) = sub_1C71A82D8(&qword_1EDD06CA8, MEMORY[0x1E69C61F8]);
  OUTLINED_FUNCTION_82();
  sub_1C75503AC();

  v33 = OUTLINED_FUNCTION_98_1();
  (v32)(v33);
  sub_1C70BFEC0();
  sub_1C75503DC();

  v32(v27, v30);
  *(v26 + 512) = sub_1C754E72C();
  OUTLINED_FUNCTION_12();
  v35 = *(v34 + 16);
  *(v26 + 520) = v35;
  *(v26 + 528) = (v34 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v35(v56, v55);
  *(v26 + 600) = *MEMORY[0x1E69A1370];
  v36 = *(v54 + 104);
  *(v26 + 536) = v36;
  *(v26 + 544) = (v54 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v36(v56);
  sub_1C75503BC();
  v37 = *(v54 + 8);
  *(v26 + 552) = v37;
  *(v26 + 560) = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v56, v57);
  v38 = OUTLINED_FUNCTION_98_1();
  (v32)(v38);
  sub_1C755037C();
  v39 = OUTLINED_FUNCTION_291();
  (v32)(v39);
  sub_1C755038C();
  v32(v59, v30);
  v40 = sub_1C754FD8C();
  __swift_storeEnumTagSinglePayload(v61, 1, 1, v40);
  sub_1C754FD7C();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v26 + 568) = v41;
  *v41 = v42;
  v41[1] = sub_1C71A5670;
  OUTLINED_FUNCTION_52_15();
  OUTLINED_FUNCTION_130_0();

  return MEMORY[0x1EEE0B310](v43, v44, v45, v46, v47, v48, v49, v50, a9, v32, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, " with description: ", v62, a23, a24, a25, a26);
}

uint64_t sub_1C71A5670()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 576) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C71A576C()
{
  v1 = *(v0 + 280);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E28);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1C6FB5FC8(v1, &qword_1EC214E08);
  }

  else
  {
    v40 = *(v0 + 552);
    v39 = *(v0 + 536);
    v38 = *(v0 + 600);
    v37 = *(v0 + 520);
    v36 = *(v0 + 512);
    v47 = *(v0 + 488);
    v42 = *(v0 + 472);
    v43 = *(v0 + 480);
    v45 = *(v0 + 416);
    v46 = *(v0 + 424);
    v34 = *(v0 + 408);
    v35 = *(v0 + 392);
    v48 = *(v0 + 344);
    v44 = *(v0 + 336);
    v3 = *(v0 + 328);
    v32 = *(v0 + 320);
    v4 = *(v0 + 304);
    v5 = *(v0 + 312);
    v7 = *(v0 + 288);
    v6 = *(v0 + 296);
    v33 = *(v0 + 232);
    v41 = *(v0 + 200);
    v30 = *(v7 + 48);
    v31 = *(v2 + 48);
    v8 = *(v44 + 32);
    v8(v6, v1, v3);
    v9 = *(v5 + 32);
    v9(v6 + v30, v1 + v31, v4);
    v10 = *(v7 + 48);
    v8(v48, v6, v3);
    v9(v32, v6 + v10, v4);
    sub_1C754EEBC();
    v11 = OUTLINED_FUNCTION_457();
    v12(v11);
    v13 = OUTLINED_FUNCTION_57_0();
    v14(v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E30);
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    *(inited + 32) = 0xD00000000000004FLL;
    *(inited + 40) = 0x80000001C75973D0;
    v37(v34, v33, v36);
    v39(v34, v38, v35);
    *(inited + 72) = v36;
    __swift_allocate_boxed_opaque_existential_0((inited + 48));
    sub_1C754EBEC();
    v16 = OUTLINED_FUNCTION_57_0();
    v40(v16);
    OUTLINED_FUNCTION_82();
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E40);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_1C755BAB0;
    strcpy((v17 + 32), "promptTemplate");
    *(v17 + 47) = -18;
    v18 = sub_1C754FA7C();
    *(v17 + 72) = v18;
    *(v17 + 80) = sub_1C71A82D8(&qword_1EDD06CB0, MEMORY[0x1E69A14E8]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v17 + 48));
    (*(*(v18 - 8) + 16))(boxed_opaque_existential_0, v41, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E48);
    OUTLINED_FUNCTION_82();
    sub_1C75504DC();
    sub_1C754EEAC();

    (*(v5 + 8))(v32, v4);
    (*(v44 + 8))(v48, v3);
    v47(v43, v45);
    (*(v46 + 32))(v43, v42, v45);
  }

  v20 = *(v0 + 488);
  v21 = *(v0 + 472);
  v22 = *(v0 + 416);
  v23 = *(v0 + 240);
  sub_1C755039C();
  *(v0 + 192) = v23;
  sub_1C75503CC();
  v20(v21, v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  v25 = swift_task_alloc();
  *(v0 + 584) = v25;
  v26 = sub_1C71A82D8(&qword_1EDD0CB38, MEMORY[0x1E69DA470]);
  v27 = sub_1C6FF60E4(&qword_1EDD06AB0);
  *v25 = v0;
  v25[1] = sub_1C71A5D5C;
  v28 = *(v0 + 256);

  return MEMORY[0x1EEE0A3A0](v0 + 184, v24, v24, v28, v24, v26, v27);
}

uint64_t sub_1C71A5D5C()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 592) = v0;

  (*(v2[33] + 8))(v2[34], v2[32]);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C71A5EB4()
{
  v0 = sub_1C755029C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C754FA7C();
  sub_1C71A82D8(&qword_1EDD06CB0, MEMORY[0x1E69A14E8]);
  sub_1C75502CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E50);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C755BAB0;
  (*(v1 + 16))(v5 + v4, v3, v0);
  MEMORY[0x1CCA5C7D0](v5);

  return (*(v1 + 8))(v3, v0);
}

void sub_1C71A606C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v7 = *(a3 + 48);
  sub_1C75504FC();
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a1 + 64);
  v9 = sub_1C6FC296C();
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C58);
  if (sub_1C7551A2C())
  {
    v13 = sub_1C6FC296C();
    if ((v12 & 1) == (v14 & 1))
    {
      v11 = v13;
      goto LABEL_5;
    }

LABEL_9:
    sub_1C7551E4C();
    __break(1u);
    return;
  }

LABEL_5:
  *(a1 + 64) = v8;
  if ((v12 & 1) == 0)
  {
    sub_1C6FCABDC(v11, a2, MEMORY[0x1E69E7CC0], v8);
  }

  v15 = *(v8 + 56) + 8 * v11;
  sub_1C6FB0734();
  v16 = *(*v15 + 16);
  sub_1C6FB0FE8();
  v17 = *v15;
  *(v17 + 16) = v16 + 1;
  v18 = v17 + 72 * v16;
  *(v18 + 32) = v7;
  v19 = a4[1];
  *(v18 + 40) = *a4;
  *(v18 + 56) = v19;
  *(v18 + 72) = a4[2];
  *(v18 + 81) = *(a4 + 41);
}

uint64_t sub_1C71A61D0()
{
  OUTLINED_FUNCTION_42();
  v2 = v0;
  v4 = v3;
  v1[76] = v2;
  v1[75] = v5;
  v1[74] = v6;
  v1[73] = v7;
  v1[72] = v8;
  v1[77] = *v2;
  v9 = sub_1C754F38C();
  v1[78] = v9;
  OUTLINED_FUNCTION_18(v9);
  v1[79] = v10;
  v1[80] = swift_task_alloc();
  memcpy(v1 + 28, v4, 0xA8uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C71A62CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_95_3();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_111_0();
  a24 = v26;
  v29 = OUTLINED_FUNCTION_457();
  __swift_project_boxed_opaque_existential_1(v29, v30);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v31 = v26[73];
  v32 = *(v31 + 16);
  v34 = v26[30];
  v33 = v26[31];
  v26[81] = v34;
  v26[82] = v33;
  v26[83] = OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_logger;
  sub_1C75504FC();
  sub_1C75504FC();
  v35 = sub_1C754FEEC();
  v36 = sub_1C75511BC();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = v26[73];
    OUTLINED_FUNCTION_20_1();
    a14 = OUTLINED_FUNCTION_60_11();
    *v31 = 136643331;
    v38 = sub_1C6F765A4(v34, v33, &a14);
    OUTLINED_FUNCTION_43_18(v38);
    *(v31 + 14) = v32;
    *(v31 + 22) = 2080;
    v39 = MEMORY[0x1CCA5D090](v37, MEMORY[0x1E69E6158]);
    v41 = sub_1C6F765A4(v39, v40, &a14);

    *(v31 + 24) = v41;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v42, v43, v44, v45, v46, 0x20u);
    swift_arrayDestroy();
    v47 = OUTLINED_FUNCTION_6_51();
    MEMORY[0x1CCA5F8E0](v47);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v48 = *(*(*(v26[76] + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_assetCurationPromptGenerator) + 16) + 120);
  v49 = v32 - v48;
  v26[84] = v32 - v48;
  if (__OFSUB__(v32, v48))
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v145 = v48;
  if (v48 < v32)
  {
    sub_1C75504FC();
    v50 = OUTLINED_FUNCTION_55_14();
    v51 = sub_1C755119C();

    if (os_log_type_enabled(v50, v51))
    {
      OUTLINED_FUNCTION_65_13();
      v52 = swift_slowAlloc();
      v53 = OUTLINED_FUNCTION_20_1();
      a14 = v53;
      *v52 = 136643587;
      *(v52 + 4) = OUTLINED_FUNCTION_56_12(v53, v54, v55, v56, v57);
      *(v52 + 12) = 2048;
      *(v52 + 14) = v49;
      *(v52 + 22) = 2048;
      *(v52 + 24) = v145;
      *(v52 + 32) = 2048;
      *(v52 + 34) = v32;
      OUTLINED_FUNCTION_45_16();
      _os_log_impl(v58, v59, v60, v61, v62, v63);
      __swift_destroy_boxed_opaque_existential_1(v53);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v64 = OUTLINED_FUNCTION_6_51();
      MEMORY[0x1CCA5F8E0](v64);
    }

    v65 = OUTLINED_FUNCTION_55_14();
    v66 = sub_1C75511AC();
    v67 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 134217984;
      *(v69 + 4) = v49;
      _os_log_impl(&dword_1C6F5C000, v65, v66, "LLM AssetCuration returned extra %ld asset ids.", v69, 0xCu);
      v70 = OUTLINED_FUNCTION_6_51();
      MEMORY[0x1CCA5F8E0](v70);
    }
  }

  v71 = v26[73];
  sub_1C6F65BE8(0, &unk_1EDD069D8);
  sub_1C71BA98C(v71);
  v72 = sub_1C6FBB0C8();
  v26[85] = v72;
  v73 = v72;
  v74 = sub_1C71A73F8(v73, v73);
  v26[86] = v74;
  v26[87] = 0;
  if (*(v74 + 16))
  {
    v75 = v74;
    sub_1C75504FC();
    sub_1C75504FC();
    v76 = OUTLINED_FUNCTION_55_14();
    v77 = sub_1C755119C();

    if (os_log_type_enabled(v76, v77))
    {
      OUTLINED_FUNCTION_20_1();
      a14 = OUTLINED_FUNCTION_60_11();
      MEMORY[0] = 136643331;
      v82 = OUTLINED_FUNCTION_56_12(a14, v78, v79, v80, v81);
      OUTLINED_FUNCTION_43_18(v82);
      MEMORY[0xE] = *(v75 + 16);

      MEMORY[0x16] = 2080;
      v83 = MEMORY[0x1CCA5D090](v75, MEMORY[0x1E69E7CA0] + 8);
      v85 = sub_1C6F765A4(v83, v84, &a14);

      MEMORY[0x18] = v85;
      _os_log_impl(&dword_1C6F5C000, v76, v77, "Chapter '%{sensitive}s': LLM AssetCuration returned %ld duplicated asset ids: %s", 0, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    sub_1C75504FC();
    v86 = OUTLINED_FUNCTION_55_14();
    v87 = sub_1C75511AC();
    v88 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = OUTLINED_FUNCTION_23_1();
      v91 = OUTLINED_FUNCTION_20_1();
      a14 = v91;
      *v90 = 134218242;
      *(v90 + 4) = *(v75 + 16);

      *(v90 + 12) = 2080;
      v92 = MEMORY[0x1CCA5D090](v75, MEMORY[0x1E69E7CA0] + 8);
      v94 = sub_1C6F765A4(v92, v93, &a14);

      *(v90 + 14) = v94;
      _os_log_impl(&dword_1C6F5C000, v86, v87, "LLM AssetCuration returned %ld duplicated asset ids: %s", v90, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v91);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }
  }

  v95 = v26[41];
  v26[88] = v95;
  v96 = *(v95 + 16);
  v97 = MEMORY[0x1E69E7CC0];
  if (v96)
  {
    a14 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v97 = a14;
    v98 = *(a14 + 16);
    v99 = 16 * v98;
    v100 = (v95 + 56);
    do
    {
      v102 = *(v100 - 1);
      v101 = *v100;
      a14 = v97;
      v103 = *(v97 + 24);
      sub_1C75504FC();
      if (v98 >= v103 >> 1)
      {
        sub_1C6F7ED9C();
        v97 = a14;
      }

      *(v97 + 16) = v98 + 1;
      v104 = v97 + v99;
      *(v104 + 32) = v102;
      *(v104 + 40) = v101;
      v99 += 16;
      v100 += 6;
      ++v98;
      --v96;
    }

    while (v96);
  }

  v105 = sub_1C75504FC();
  v106 = sub_1C706D154(v105);
  v107 = sub_1C706D154(v97);
  v108 = sub_1C7238810(v107, v106);
  v26[89] = v108;

  if (*(v108 + 16))
  {
    sub_1C75504FC();
    sub_1C75504FC();
    v109 = OUTLINED_FUNCTION_55_14();
    v110 = sub_1C755119C();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = OUTLINED_FUNCTION_20_1();
      v112 = swift_slowAlloc();
      a14 = v112;
      *v111 = 136643331;
      *(v111 + 4) = OUTLINED_FUNCTION_56_12(v112, v113, v114, v115, v116);
      *(v111 + 12) = 2048;
      *(v111 + 14) = *(v108 + 16);

      *(v111 + 22) = 2080;
      v117 = sub_1C7550F9C();
      v119 = sub_1C6F765A4(v117, v118, &a14);

      *(v111 + 24) = v119;
      _os_log_impl(&dword_1C6F5C000, v109, v110, "Chapter '%{sensitive}s': LLM AssetCuration returned %ld hallucinated asset ids: %s", v111, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v120 = OUTLINED_FUNCTION_6_51();
      MEMORY[0x1CCA5F8E0](v120);
    }

    else
    {
    }

    sub_1C75504FC();
    v121 = OUTLINED_FUNCTION_55_14();
    v122 = sub_1C75511AC();
    v123 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = OUTLINED_FUNCTION_23_1();
      v126 = OUTLINED_FUNCTION_20_1();
      a14 = v126;
      *v125 = 134218242;
      *(v125 + 4) = *(v108 + 16);

      *(v125 + 12) = 2080;
      v127 = sub_1C7550F9C();
      v129 = sub_1C6F765A4(v127, v128, &a14);

      *(v125 + 14) = v129;
      _os_log_impl(&dword_1C6F5C000, v121, v122, "Chapter 'LLM AssetCuration returned %ld hallucinated asset ids: %s", v125, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v126);
      v130 = OUTLINED_FUNCTION_6_51();
      MEMORY[0x1CCA5F8E0](v130);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }
  }

  v131 = static FreeformStoryChapterCurator.removeDupesAnd(hallucinatedIDs:from:)(v108);
  sub_1C7033F04(v145, v131);
  v133 = v132;
  v135 = v134;
  if ((v134 & 1) == 0)
  {
    goto LABEL_32;
  }

  sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v138 = swift_dynamicCastClass();
  if (!v138)
  {
    swift_unknownObjectRelease();
    v138 = MEMORY[0x1E69E7CC0];
  }

  v139 = *(v138 + 16);

  if (__OFSUB__(v135 >> 1, v133))
  {
    goto LABEL_44;
  }

  if (v139 != (v135 >> 1) - v133)
  {
LABEL_45:
    swift_unknownObjectRelease();
LABEL_32:
    OUTLINED_FUNCTION_66_2();
    sub_1C739C274();
    v137 = v136;
    goto LABEL_39;
  }

  v137 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v137)
  {
    goto LABEL_40;
  }

  v137 = MEMORY[0x1E69E7CC0];
LABEL_39:
  swift_unknownObjectRelease();
LABEL_40:
  v26[90] = v137;
  v26[91] = *(v26[76] + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_assetCache);
  OUTLINED_FUNCTION_94_1();

  return MEMORY[0x1EEE6DFA0](v140, v141, v142);
}

uint64_t sub_1C71A6CC4()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[87];
  v0[92] = sub_1C70CE7C8(v0[90]);
  v0[93] = v1;

  if (v1)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

void sub_1C71A6D74()
{
  v74 = v0;
  v1 = v0;
  v69 = v0 + 70;
  v2 = v0[92];
  sub_1C75504FC();
  sub_1C75504FC();
  v3 = sub_1C754FEEC();
  v4 = sub_1C75511BC();

  v71 = v0;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[92];
    v6 = v0[82];
    v7 = v0[81];
    OUTLINED_FUNCTION_23_1();
    __dst[0] = OUTLINED_FUNCTION_60_11();
    *v2 = 136643075;
    v8 = v7;
    v1 = v0;
    *(v2 + 4) = sub_1C6F765A4(v8, v6, __dst);
    *(v2 + 12) = 2080;
    v9 = MEMORY[0x1CCA5D090](v5, MEMORY[0x1E69E6158]);
    v11 = sub_1C6F765A4(v9, v10, __dst);

    *(v2 + 14) = v11;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v12, v13, v14, v15, v16, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v17 = v1[89];
  v18 = v1[88];
  v65 = *(v1[86] + 16);
  v66 = *(v1[92] + 16);
  sub_1C75504FC();

  v64 = *(v17 + 16);

  v70 = *(v18 + 16);
  v19 = v1[93];
  sub_1C75504FC();
  v20 = 0;
  v21 = v18 + 72;
  v67 = v18 + 72;
  v68 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v22 = (v21 + 48 * v20);
  while (v70 != v20)
  {
    if (v20 >= *(v1[88] + 16))
    {
      __break(1u);
      return;
    }

    v72 = v20;
    v23 = *(v22 - 5);
    v24 = *(v22 - 4);
    v25 = *(v22 - 3);
    v26 = *(v22 - 2);
    v28 = *(v22 - 1);
    v27 = *v22;
    v1[70] = v23;
    v1[71] = v24;
    *(swift_task_alloc() + 16) = v69;
    swift_bridgeObjectRetain_n();
    sub_1C75504FC();
    sub_1C75504FC();
    v29 = sub_1C70735F4();

    if (v29)
    {
      v30 = v68;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = v68;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_99();
        sub_1C716DEF8();
        v30 = __dst[0];
      }

      v32 = v72;
      v33 = v25;
      v34 = v28;
      v36 = *(v30 + 16);
      v35 = *(v30 + 24);
      if (v36 >= v35 >> 1)
      {
        OUTLINED_FUNCTION_15(v35);
        sub_1C716DEF8();
        v34 = v28;
        v33 = v25;
        v32 = v72;
        v30 = __dst[0];
      }

      v20 = v32 + 1;
      *(v30 + 16) = v36 + 1;
      v68 = v30;
      v37 = (v30 + 48 * v36);
      v37[4] = v23;
      v37[5] = v24;
      v37[6] = v33;
      v37[7] = v26;
      v37[8] = v34;
      v37[9] = v27;
      v1 = v71;
      v21 = v67;
      goto LABEL_4;
    }

    v22 += 6;
    v1 = v71;
    v20 = v72 + 1;
  }

  v38 = *(v68 + 16);
  if (v38)
  {
    __dst[0] = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v39 = 0;
    v40 = __dst[0];
    v41 = *(__dst[0] + 16);
    v42 = 16 * v41;
    do
    {
      v43 = *(v68 + v39 + 64);
      v44 = *(v68 + v39 + 72);
      __dst[0] = v40;
      v45 = *(v40 + 24);
      sub_1C75504FC();
      if (v41 >= v45 >> 1)
      {
        sub_1C6F7ED9C();
        v40 = __dst[0];
      }

      *(v40 + 16) = v41 + 1;
      v46 = v40 + v42;
      *(v46 + 32) = v43;
      *(v46 + 40) = v44;
      v42 += 16;
      v39 += 48;
      ++v41;
      --v38;
    }

    while (v38);

    v1 = v71;
  }

  else
  {

    v40 = MEMORY[0x1E69E7CC0];
  }

  v47 = v1[92];
  v48 = v1[73];
  memcpy(v1 + 2, v1 + 28, 0xA8uLL);
  v1[23] = v48;
  v1[24] = v47;
  v1[26] = 0;
  v1[27] = 0;
  v1[25] = v40;
  memcpy(__dst, v1 + 2, 0xD0uLL);
  sub_1C75504FC();
  sub_1C6FC1764((v1 + 28), (v1 + 49));
  sub_1C6FC11CC(__dst);
  sub_1C754F2EC();
  if (v19)
  {
    v49 = v1[85];
    sub_1C71A81B0((v1 + 2));

    v50 = OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_0_22(v50, v51);
    sub_1C754F1AC();
    v52 = OUTLINED_FUNCTION_457();
    v53(v52);

    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    v55 = v1[92];
    v56 = v1[85];
    v57 = v1[84];
    v58 = v1[74];
    v59 = v1[73];
    v60 = v1;
    v61 = v1[72];

    sub_1C71A81B0((v60 + 2));
    *v61 = v55;
    v61[1] = v66;
    v61[2] = v57;
    v61[3] = v65;
    v61[4] = v64;
    v61[5] = v59;
    OUTLINED_FUNCTION_12_2(v58);
    sub_1C754F1AC();
    v62 = OUTLINED_FUNCTION_57_0();
    v63(v62);

    OUTLINED_FUNCTION_43();
  }

  v54();
}

uint64_t sub_1C71A730C()
{
  v1 = *(v0 + 600);

  v2 = OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_0_22(v2, v3);
  sub_1C754F1AC();
  v4 = OUTLINED_FUNCTION_57_0();
  v5(v4);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v6 + 8))(v1);

  OUTLINED_FUNCTION_43();

  return v7();
}

uint64_t sub_1C71A73F8(void *a1, void *a2)
{
  v4 = sub_1C754DC0C();
  v12 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C755114C();

  sub_1C71A82D8(&qword_1EDD0CBE0, MEMORY[0x1E6968EB0]);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1C755150C();
    if (!v14)
    {
      break;
    }

    sub_1C6F9ED18(&v13, &v15);
    __swift_project_boxed_opaque_existential_1(&v15, v16);
    v8 = [a2 countForObject_];
    swift_unknownObjectRelease();
    if (v8 <= 1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v15);
    }

    else
    {
      sub_1C6F9ED18(&v15, &v13);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716D6A4();
        v7 = v17;
      }

      v10 = *(v7 + 16);
      if (v10 >= *(v7 + 24) >> 1)
      {
        sub_1C716D6A4();
        v7 = v17;
      }

      *(v7 + 16) = v10 + 1;
      sub_1C6F9ED18(&v13, (v7 + 32 * v10 + 32));
    }
  }

  (*(v12 + 8))(v6, v4);
  sub_1C6FB5FC8(&v13, &qword_1EC219770);

  return v7;
}

uint64_t static FreeformStoryChapterCurator.removeDupesAnd(hallucinatedIDs:from:)(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CD0];
  sub_1C75504FC();
  v2 = sub_1C75504FC();
  sub_1C719EBA0(v2, a1, &v6);
  v4 = v3;

  return v4;
}

void sub_1C71A76AC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a2;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v4 = v29;
    v7 = sub_1C70D4544(a1);
    v8 = a1 + 64;
    v9 = v3 - 1;
    if ((v7 & 0x8000000000000000) == 0)
    {
      while (v7 < 1 << *(a1 + 32))
      {
        if ((*(v8 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
        {
          goto LABEL_17;
        }

        if (v6 != *(a1 + 36))
        {
          goto LABEL_18;
        }

        v24 = v9;
        v25 = v6;
        v10 = (*(a1 + 48) + 16 * v7);
        v11 = *v10;
        v12 = v10[1];
        sub_1C6FB5E28(*(a1 + 56) + 40 * v7, v28);
        v26[0] = v11;
        v26[1] = v12;
        sub_1C6F699F8(v28, &v27);
        sub_1C75504FC();
        v13 = OUTLINED_FUNCTION_90();
        v16 = sub_1C71A78EC(v13, v14, v15);
        v18 = v17;
        sub_1C6FB5FC8(v26, &qword_1EC2181B8);
        v29 = v4;
        v20 = *(v4 + 16);
        v19 = *(v4 + 24);
        if (v20 >= v19 >> 1)
        {
          OUTLINED_FUNCTION_15(v19);
          sub_1C6F7ED9C();
          v4 = v29;
        }

        *(v4 + 16) = v20 + 1;
        v21 = v4 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
        if (v7 >= -(-1 << *(a1 + 32)))
        {
          goto LABEL_19;
        }

        v8 = a1 + 64;
        if ((*(a1 + 64 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
        {
          goto LABEL_20;
        }

        if (v25 != *(a1 + 36))
        {
          goto LABEL_21;
        }

        v22 = sub_1C755162C();
        if (!v24)
        {
          v2 = a2;
          goto LABEL_15;
        }

        v7 = v22;
        v6 = *(a1 + 36);
        v9 = v24 - 1;
        if (v22 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_15:
    v2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    v2[4] = sub_1C6FF60E4(&qword_1EDD0CF60);
    *v2 = v4;
  }
}