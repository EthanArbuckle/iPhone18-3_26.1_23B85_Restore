uint64_t IntentType.hash(into:)()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_55_7();
  sub_1BF9B4B48();
}

id IntentType.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  switch(*(v0 + 40))
  {
    case 1:
      v13 = [*v0 typeName];
      sub_1BF9B4AA8();

      strcpy(v18, "InIntentFull#");
      HIWORD(v18[1]) = -4864;
      v14 = OUTLINED_FUNCTION_22_0();
      MEMORY[0x1BFB5DE90](v14);
      goto LABEL_6;
    case 2:
    case 3:
      OUTLINED_FUNCTION_45_7();
      v18[0] = v6;
      v18[1] = 0xEA00000000005F74;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96F8, &qword_1BF9BF440);
      v16 = sub_1BF9B4B08();
      v17 = v7;
      OUTLINED_FUNCTION_27_9();
      v8 = sub_1BF9B4B08();
      MEMORY[0x1BFB5DE90](v8);

      OUTLINED_FUNCTION_27_9();
      v9 = MEMORY[0x1BFB5E030](v5, &type metadata for AppIntentFilter.AppIntentParameter);
      MEMORY[0x1BFB5DE90](v9);

      MEMORY[0x1BFB5DE90](v16, v17);
LABEL_6:

      return v18[0];
    case 4:
      v10 = *(v0 + 8);

      return v2;
    default:
      OUTLINED_FUNCTION_4_26();
      v18[0] = v11;
      v18[1] = v12;
      MEMORY[0x1BFB5DE90](v2, v1);
      return v18[0];
  }
}

uint64_t AppIntentFilter.description.getter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v7 = *v0;
  v9 = v0[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96F8, &qword_1BF9BF440);
  v8 = sub_1BF9B4B08();
  OUTLINED_FUNCTION_27_9();
  v4 = sub_1BF9B4B08();
  MEMORY[0x1BFB5DE90](v4);

  OUTLINED_FUNCTION_27_9();
  v5 = MEMORY[0x1BFB5E030](v3, &type metadata for AppIntentFilter.AppIntentParameter);
  MEMORY[0x1BFB5DE90](v5);

  return v8;
}

void IntentType.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA358, &qword_1BF9C6068);
  v5 = OUTLINED_FUNCTION_1(v4);
  v18 = v6;
  v19 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_11_0();
  v10 = *v0;
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  v16 = *(v0 + 32);
  v17 = *(v0 + 8);
  v13 = *(v0 + 40);
  v14 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1BF98B72C();
  sub_1BF9B5898();
  switch(v13)
  {
    case 1:
      sub_1BF920C90();
      v15 = v10;
      OUTLINED_FUNCTION_49_5();
      sub_1BF9B5638();
      swift_unknownObjectRelease();
      break;
    case 2:
    case 3:
      OUTLINED_FUNCTION_51_7();
      sub_1BF98B780();
      OUTLINED_FUNCTION_49_5();
      sub_1BF9B5638();
      break;
    default:
      v11 = v19;
      sub_1BF9B55F8();
      break;
  }

  (*(v18 + 8))(v1, v11);
  OUTLINED_FUNCTION_37();
}

void IntentType.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA368, &qword_1BF9C6070);
  OUTLINED_FUNCTION_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  sub_1BF98B72C();
  sub_1BF9B5868();
  if (!v0)
  {
    v10 = sub_1BF9B5568();
    if (*(v10 + 16))
    {
      v1 = *(v10 + 32);

      switch(v1)
      {
        case 1:
          sub_1BF920BE8();
          OUTLINED_FUNCTION_6_18();
          objc_opt_self();
          v25 = swift_dynamicCastObjCClass();
          if (v25)
          {
            v14 = v25;
            v26 = OUTLINED_FUNCTION_5_17();
            v27(v26);
            v16 = 0;
            goto LABEL_10;
          }

          swift_unknownObjectRelease();
          v11 = sub_1BF9B5308();
          swift_allocError();
          OUTLINED_FUNCTION_54_6();
          goto LABEL_5;
        case 2:
        case 3:
          sub_1BF98B7D4();
          OUTLINED_FUNCTION_6_18();
          v19 = OUTLINED_FUNCTION_5_17();
          v20(v19);
          v14 = v28;
          v16 = v29;
          v21 = v30;
          v22 = v31;
          break;
        default:
          v14 = sub_1BF9B5518();
          v16 = v15;
          v17 = OUTLINED_FUNCTION_5_17();
          v18(v17);
LABEL_10:
          v22 = 0;
          v21 = 0uLL;
          break;
      }

      *v5 = v14;
      *(v5 + 8) = v16;
      *(v5 + 16) = v21;
      *(v5 + 32) = v22;
      *(v5 + 40) = v1;
    }

    else
    {

      v11 = sub_1BF9B5308();
      swift_allocError();
      OUTLINED_FUNCTION_54_6();
LABEL_5:
      sub_1BF9B52F8();
      v12 = *MEMORY[0x1E69E6B00];
      OUTLINED_FUNCTION_11(v11);
      (*(v13 + 104))(v1);
      swift_willThrow();
      v23 = OUTLINED_FUNCTION_5_17();
      v24(v23);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF98810C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x746E65746E496E69 && a2 == 0xE800000000000000;
  if (v3 || (OUTLINED_FUNCTION_70() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E65746E496E69 && a2 == 0xEC0000006C6C7546;
    if (v6 || (OUTLINED_FUNCTION_70() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E65746E49707061 && a2 == 0xE900000000000074;
      if (v7 || (OUTLINED_FUNCTION_70() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E65746E49707061 && a2 == 0xEB00000000325674;
        if (v8 || (OUTLINED_FUNCTION_70() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = OUTLINED_FUNCTION_70();

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

uint64_t sub_1BF988274(char a1)
{
  result = 0x746E65746E496E69;
  switch(a1)
  {
    case 2:
    case 3:
      result = 0x6E65746E49707061;
      break;
    case 4:
      result = 0x6E6F69746361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF988308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF98810C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF988330(uint64_t a1)
{
  v2 = sub_1BF98B72C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF98836C(uint64_t a1)
{
  v2 = sub_1BF98B72C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntentType.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  sub_1BF9B57A8();
  v5 = v0[1];
  v4 = *v0;
  IntentType.toString()();
  sub_1BF9B4B48();

  return sub_1BF9B57E8();
}

uint64_t sub_1BF98846C()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  sub_1BF9B57A8();
  v5 = v0[1];
  v4 = *v0;
  IntentType.toString()();
  sub_1BF9B4B48();

  return sub_1BF9B57E8();
}

uint64_t AppIntentFilter.AppIntentParameter.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_43();
}

uint64_t static AppIntentFilter.AppIntentParameter.== infix(_:_:)()
{
  OUTLINED_FUNCTION_34_3();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (v3 || (v4 = 0, (sub_1BF9B56D8() & 1) != 0))
  {
    sub_1BF8E69C4(v1 + 16, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8458, &qword_1BF9BF970);
    v5 = sub_1BF9B4B08();
    v7 = v6;
    sub_1BF8E69C4((v0 + 2), v11);
    if (v5 == sub_1BF9B4B08() && v7 == v8)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_1BF9B56D8();
    }
  }

  return v4 & 1;
}

uint64_t AppIntentFilter.appId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_43();
}

uint64_t AppIntentFilter.intentIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_43();
}

uint64_t AppIntentFilter.parameters.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1BF9886D8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1BF988720(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_1BF988768(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[3];
  v4 = a3[6];
  __swift_project_boxed_opaque_existential_1(a3, v3);
  v7[3] = v3;
  v7[4] = v4;
  __swift_allocate_boxed_opaque_existential_1Tm(v7);
  OUTLINED_FUNCTION_11(v3);
  (*(v5 + 16))();
  swift_beginAccess();

  sub_1BF932778();
  swift_endAccess();
}

uint64_t sub_1BF988874(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2();
  swift_beginAccess();
  v4 = *(v2 + 48);
  *(v2 + 48) = v3;
}

uint64_t sub_1BF9888CC@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  swift_beginAccess();
  v7 = v1[6];
  v8 = *(v7 + 16);
  if (v8)
  {
    v40 = v5;
    v42 = v3;
    v43 = a1;
    v61 = MEMORY[0x1E69E7CC0];
    v41 = v4;

    v39 = v6;

    sub_1BF8D0688();
    v9 = v61;
    v12 = sub_1BF95FA38(v7);
    v13 = 0;
    v14 = v7 + 64;
    v45 = v10;
    v46 = v8;
    v44 = v7 + 72;
    v47 = v7 + 64;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v7 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v14 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v7 + 36) != v10)
      {
        goto LABEL_25;
      }

      v49 = v10;
      v48 = v11;
      v16 = (*(v7 + 48) + 16 * v12);
      v17 = *v16;
      v18 = v16[1];
      sub_1BF8E69C4(*(v7 + 56) + 40 * v12, v57);
      v54[5] = v17;
      v54[6] = v18;
      sub_1BF8C2C9C(v57, v55);
      sub_1BF98CF44();
      v19 = v7;
      v7 = v9;
      v21 = v52;
      v20 = v53;
      v50[0] = v55[0];
      v50[1] = v55[1];
      v51 = v56;

      *&v58 = v21;
      *(&v58 + 1) = v20;
      v9 = v7;
      sub_1BF8C2C9C(v50, v59);
      __swift_destroy_boxed_opaque_existential_1(v54);
      v61 = v7;
      v23 = *(v7 + 16);
      v22 = *(v7 + 24);
      if (v23 >= v22 >> 1)
      {
        OUTLINED_FUNCTION_11_3(v22);
        sub_1BF8D0688();
        v9 = v61;
      }

      *(v9 + 16) = v23 + 1;
      v24 = v9 + 56 * v23;
      v25 = v58;
      v26 = v59[0];
      v27 = v59[1];
      *(v24 + 80) = v60;
      *(v24 + 48) = v26;
      *(v24 + 64) = v27;
      *(v24 + 32) = v25;
      v28 = 1 << *(v19 + 32);
      if (v12 >= v28)
      {
        goto LABEL_26;
      }

      v7 = v19;
      v14 = v47;
      v29 = *(v47 + 8 * v15);
      if ((v29 & (1 << v12)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v7 + 36) != v49)
      {
        goto LABEL_28;
      }

      v30 = v29 & (-2 << (v12 & 0x3F));
      if (v30)
      {
        v28 = __clz(__rbit64(v30)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v31 = v46;
      }

      else
      {
        v32 = v15 << 6;
        v33 = v15 + 1;
        v34 = (v44 + 8 * v15);
        v31 = v46;
        while (v33 < (v28 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            sub_1BF90E758(v12, v49, v48 & 1);
            v28 = __clz(__rbit64(v35)) + v32;
            goto LABEL_19;
          }
        }

        sub_1BF90E758(v12, v49, v48 & 1);
      }

LABEL_19:
      v11 = 0;
      ++v13;
      v12 = v28;
      v10 = v45;
      if (v13 == v31)
      {

        v3 = v42;
        a1 = v43;
        v5 = v40;
        v4 = v41;
        v6 = v39;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);

    __break(1u);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
LABEL_22:
    *&v58 = v9;

    sub_1BF98B828(&v58);

    v38 = v58;
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
    a1[4] = v38;
  }

  return result;
}

void *AppIntentFilter.Builder.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return v0;
}

uint64_t AppIntentFilter.Builder.__deallocating_deinit()
{
  AppIntentFilter.Builder.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1BF988CD4()
{
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8458, &qword_1BF9BF970);
  *(v0 + 48) = sub_1BF9B4988();
  return v0;
}

uint64_t static AppIntentFilter.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a2[1];
  v8 = a2[2];
  v10 = a2[3];
  v9 = a2[4];
  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    v11 = *a1 == *a2 && v3 == v7;
    if (!v11 && (sub_1BF9B56D8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v6)
  {
    if (v10)
    {
      v12 = v4 == v8 && v6 == v10;
      if (v12 || (sub_1BF9B56D8() & 1) != 0)
      {
        goto LABEL_17;
      }
    }

    return 0;
  }

  if (v10)
  {
    return 0;
  }

LABEL_17:
  v13 = OUTLINED_FUNCTION_43();

  return sub_1BF8CEE50(v13, v14);
}

void AppIntentFilter.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8DC0, &qword_1BF9C6080);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  sub_1BF8E8064();
  sub_1BF9B5868();
  if (!v0)
  {
    sub_1BF8E1DE8();
    v10 = v9;
    v12 = v11;
    sub_1BF8E1DE8();
    v14 = v13;
    v20 = v15;
    v18 = sub_1BF98A564(2);
    v19 = sub_1BF98AC4C(v18);

    v16 = OUTLINED_FUNCTION_16_16();
    v17(v16, v5);
    *v4 = v10;
    v4[1] = v12;
    v4[2] = v14;
    v4[3] = v20;
    v4[4] = v19;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_37();
}

void AppIntentFilter.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8DB8, &unk_1BF9C81C0);
  OUTLINED_FUNCTION_1(v45);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_11_0();
  v7 = *v0;
  v8 = v0[1];
  v36 = *(v0 + 1);
  v35 = v0[4];
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  v11 = OUTLINED_FUNCTION_24();
  __swift_project_boxed_opaque_existential_1(v11, v12);
  sub_1BF8E8064();
  OUTLINED_FUNCTION_30_9();
  if (v8)
  {
    v13 = MEMORY[0x1E69E6160];
    v14 = MEMORY[0x1E69E6158];
    v15 = v8;
    v16 = v7;
  }

  else
  {
    OUTLINED_FUNCTION_44_8();
  }

  *&v41 = v16;
  *(&v41 + 1) = v15;
  *(&v42 + 1) = v14;
  *&v43 = v13;

  sub_1BF8E2B70();
  if (v1)
  {
    v21 = OUTLINED_FUNCTION_43_9();
    v22(v21, v45);
    sub_1BF8E8118(&v41, &qword_1EBDE8AB8, &qword_1BF9B85C0);
  }

  else
  {
    sub_1BF8E8118(&v41, &qword_1EBDE8AB8, &qword_1BF9B85C0);
    v17 = *(&v36 + 1);
    if (*(&v36 + 1))
    {
      v18 = MEMORY[0x1E69E6160];
      v19 = MEMORY[0x1E69E6158];
      v20 = v36;
    }

    else
    {
      OUTLINED_FUNCTION_44_8();
    }

    *&v41 = v20;
    *(&v41 + 1) = v17;
    *(&v42 + 1) = v19;
    *&v43 = v18;

    sub_1BF8E2B70();
    sub_1BF8E8118(&v41, &qword_1EBDE8AB8, &qword_1BF9B85C0);
    *&v41 = v7;
    *(&v41 + 1) = v8;
    v42 = v36;
    *&v43 = v35;
    v23 = sub_1BF98B314();
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = v23 + 32;
      v26 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1BF98C714(v25, &v41);
        v37 = v41;
        v38 = v42;
        v39 = v43;
        v40 = v44;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = *(v26 + 16);
          OUTLINED_FUNCTION_28_0();
          sub_1BF8DD49C();
          v26 = v31;
        }

        v28 = *(v26 + 16);
        v27 = *(v26 + 24);
        if (v28 >= v27 >> 1)
        {
          OUTLINED_FUNCTION_11_3(v27);
          sub_1BF8DD49C();
          v26 = v32;
        }

        *(v26 + 16) = v28 + 1;
        v29 = (v26 + (v28 << 6));
        v29[4] = v39;
        v29[5] = v40;
        v29[2] = v37;
        v29[3] = v38;
        v25 += 64;
        --v24;
      }

      while (v24);
    }

    else
    {

      v26 = MEMORY[0x1E69E7CC0];
    }

    sub_1BF9870D0(v26);

    sub_1BF99614C();
    v33 = OUTLINED_FUNCTION_43_9();
    v34(v33, v45);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t static IntentType.inIntent(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  *(a3 + 40) = 0;
  return OUTLINED_FUNCTION_17_6();
}

double static IntentType.appIntent(intentIdentifier:appId:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for AppIntentFilter.Builder();
  swift_initStackObject();
  sub_1BF988CD4();
  sub_1BF988720(a1, a2);

  v6 = OUTLINED_FUNCTION_88();
  sub_1BF9886D8(v6, v7);

  sub_1BF9888CC(v11);

  v8 = v12;
  result = *v11;
  v10 = v11[1];
  *a3 = v11[0];
  *(a3 + 16) = v10;
  *(a3 + 32) = v8;
  *(a3 + 40) = 2;
  return result;
}

double static IntentType.appIntent(_:)@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for AppIntentFilter.Builder();
  swift_initStackObject();
  sub_1BF988CD4();
  v2 = OUTLINED_FUNCTION_88();
  sub_1BF988720(v2, v3);

  sub_1BF9888CC(v7);

  v4 = v8;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  *(a1 + 40) = 2;
  return result;
}

uint64_t static IntentType.action(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  *(a3 + 40) = 4;
  return OUTLINED_FUNCTION_17_6();
}

void sub_1BF989474()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89A8, &unk_1BF9B84B0);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_8();
  sub_1BF8DF458();
  sub_1BF9B5868();
  if (!v0)
  {
    v14.n128_u8[0] = 0;
    v9 = sub_1BF9B5518();
    v11 = v10;
    sub_1BF8D9388();
    v12 = OUTLINED_FUNCTION_20();
    v13(v12);
    sub_1BF8BAFC8(&v14, v4 + 1);
    v4->n128_u64[0] = v9;
    v4->n128_u64[1] = v11;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF9895F0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89D8, &qword_1BF9B84D8);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_11_0();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF8DF458();
  OUTLINED_FUNCTION_30_9();
  v10 = *v3;
  v11 = v3[1];
  LOBYTE(v20[0]) = 0;
  sub_1BF9B55F8();
  if (v2)
  {
    v12 = OUTLINED_FUNCTION_43_9();
    return v13(v12, v5);
  }

  else
  {
    v15 = v3[5];
    v16 = v3[7];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v15);
    v20[3] = v15;
    v20[4] = v16;
    __swift_allocate_boxed_opaque_existential_1Tm(v20);
    OUTLINED_FUNCTION_11(v15);
    (*(v17 + 16))();
    sub_1BF8DA81C();
    v18 = OUTLINED_FUNCTION_43_9();
    v19(v18, v5);
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }
}

uint64_t sub_1BF98978C()
{
  OUTLINED_FUNCTION_34_3();
  v3 = v1 == OUTLINED_FUNCTION_46_5() && v0 == v2;
  if (v3 || (OUTLINED_FUNCTION_70() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x65756C6176 && v0 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_70();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BF989830(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x6574656D61726170;
  }
}

uint64_t sub_1BF989878@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF98978C();
  *a1 = result;
  return result;
}

uint64_t sub_1BF9898A0(uint64_t a1)
{
  v2 = sub_1BF8DF458();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9898DC(uint64_t a1)
{
  v2 = sub_1BF8DF458();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

SiriSuggestionsKit::AppIntentFilter::CodingKeys_optional __swiftcall AppIntentFilter.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x6449707061 && stringValue._object == 0xE500000000000000;
  if (v5 || (OUTLINED_FUNCTION_42_10() & 1) != 0)
  {

    v7 = 0;
  }

  else
  {
    v8 = countAndFlagsBits == 0xD000000000000010 && 0x80000001BF9CE040 == object;
    if (v8 || (OUTLINED_FUNCTION_42_10() & 1) != 0)
    {

      v7 = 1;
    }

    else if (countAndFlagsBits == OUTLINED_FUNCTION_46_5() && object == v9)
    {

      v7 = 2;
    }

    else
    {
      v11 = OUTLINED_FUNCTION_42_10();

      if (v11)
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }
    }
  }

  *v4 = v7;
  return result;
}

uint64_t AppIntentFilter.CodingKeys.hashValue.getter()
{
  v1 = *v0;
  sub_1BF9B57A8();
  MEMORY[0x1BFB5EAC0](v1);
  return sub_1BF9B57E8();
}

uint64_t AppIntentFilter.CodingKeys.stringValue.getter()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6574656D61726170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6449707061;
  }
}

uint64_t sub_1BF989B54(uint64_t a1)
{
  v2 = sub_1BF8E8064();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF989B90(uint64_t a1)
{
  v2 = sub_1BF8E8064();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1BF989BCC()
{
  OUTLINED_FUNCTION_39();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89F0, &unk_1BF9C66D0);
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_77_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95A8, &unk_1BF9C7770);
  sub_1BF8DF500();
  OUTLINED_FUNCTION_40_4();
  if (!v0)
  {
    v12 = OUTLINED_FUNCTION_33_10();
    OUTLINED_FUNCTION_38_7(v12);
    sub_1BF987574(&v61, v13, &qword_1EBDE89F8, &qword_1BF9B84F0);
    OUTLINED_FUNCTION_47_6();
    if (v14)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_103:
        sub_1BF98C624(v8);
        v8 = v56;
      }

      OUTLINED_FUNCTION_7_18();
      while (1)
      {
        if (v5 >= *(v3 + 2))
        {
          __break(1u);
LABEL_95:

LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

        OUTLINED_FUNCTION_18_13();
        if (!v17)
        {
          goto LABEL_95;
        }

        v18 = *(v16 + 16);
        v19 = *(v16 + 24);
        if ((v1 & 0x1000000000000000) == 0)
        {
          break;
        }

        swift_bridgeObjectRetain_n();
        v41 = OUTLINED_FUNCTION_23_16();
        v3 = sub_1BF99854C(v41, v42, 10);
        v62 = v43;

        if (v62)
        {
          goto LABEL_96;
        }

LABEL_73:
        OUTLINED_FUNCTION_20_17();
        sub_1BF8D8520();
        if (v0)
        {
          v54 = OUTLINED_FUNCTION_2_26();
          v55(v54);

          goto LABEL_92;
        }

        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_97;
        }

        if (v3 >= *(v8 + 16))
        {
          goto LABEL_98;
        }

        OUTLINED_FUNCTION_22_9();
        sub_1BF98CEE8();
        v3 = v57;
        if (v5 == v58)
        {
          goto LABEL_81;
        }
      }

      if ((v1 & 0x2000000000000000) != 0)
      {
        OUTLINED_FUNCTION_48_6();
        if (v23)
        {
          if (!v27)
          {
            goto LABEL_99;
          }

          if (v27 != 1)
          {
            OUTLINED_FUNCTION_15_20();
            while (1)
            {
              OUTLINED_FUNCTION_3_27();
              if (!v23 & v22)
              {
                break;
              }

              OUTLINED_FUNCTION_0_24();
              if (!v23)
              {
                break;
              }

              v3 = (v34 + v33);
              if (__OFADD__(v34, v33))
              {
                break;
              }

              OUTLINED_FUNCTION_10_2();
              if (v23)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v28 == 45)
        {
          if (!v27)
          {
            goto LABEL_102;
          }

          if (v27 != 1)
          {
            OUTLINED_FUNCTION_15_20();
            while (1)
            {
              OUTLINED_FUNCTION_3_27();
              if (!v23 & v22)
              {
                break;
              }

              OUTLINED_FUNCTION_0_24();
              if (!v23)
              {
                break;
              }

              v3 = (v30 - v29);
              if (__OFSUB__(v30, v29))
              {
                break;
              }

              OUTLINED_FUNCTION_10_2();
              if (v23)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v27)
        {
          while (1)
          {
            OUTLINED_FUNCTION_3_27();
            if (!v23 & v22)
            {
              break;
            }

            OUTLINED_FUNCTION_0_24();
            if (!v23)
            {
              break;
            }

            v3 = (v40 + v39);
            if (__OFADD__(v40, v39))
            {
              break;
            }

            OUTLINED_FUNCTION_10_2();
            if (v23)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

      if ((v2 & 0x1000000000000000) != 0)
      {
        v20 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        OUTLINED_FUNCTION_23_16();
        v20 = sub_1BF9B5318();
      }

      v21 = *v20;
      if (v21 == 43)
      {
        if (v15 < 1)
        {
          goto LABEL_101;
        }

        if (v15 == 1)
        {
          goto LABEL_71;
        }

        v3 = 0;
        if (v20)
        {
          while (1)
          {
            OUTLINED_FUNCTION_3_27();
            if (!v23 & v22)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_0_24();
            if (!v23)
            {
              goto LABEL_71;
            }

            v3 = (v32 + v31);
            if (__OFADD__(v32, v31))
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_10_2();
            if (v23)
            {
              goto LABEL_72;
            }
          }
        }
      }

      else if (v21 == 45)
      {
        if (v15 < 1)
        {
          goto LABEL_100;
        }

        if (v15 == 1)
        {
          goto LABEL_71;
        }

        v3 = 0;
        if (v20)
        {
          while (1)
          {
            OUTLINED_FUNCTION_3_27();
            if (!v23 & v22)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_0_24();
            if (!v23)
            {
              goto LABEL_71;
            }

            v3 = (v25 - v24);
            if (__OFSUB__(v25, v24))
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_10_2();
            if (v23)
            {
              goto LABEL_72;
            }
          }
        }
      }

      else
      {
        if (!v15)
        {
LABEL_71:
          v3 = 0;
          v26 = 1;
LABEL_72:
          v60.n128_u8[0] = v26;
          v0 = v26;

          if (v0)
          {
            goto LABEL_96;
          }

          goto LABEL_73;
        }

        v3 = 0;
        if (v20)
        {
          while (*v20 - 48 <= 9)
          {
            OUTLINED_FUNCTION_34_9();
            if (!v23)
            {
              break;
            }

            v3 = (v38 + v37);
            if (__OFADD__(v38, v37))
            {
              break;
            }

            v20 = (v35 + 1);
            if (v36 == 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_71;
        }
      }

LABEL_62:
      v26 = 0;
      goto LABEL_72;
    }

LABEL_81:

    v44 = *(v8 + 16);
    v45 = MEMORY[0x1E69E7CC0];
    if (v44)
    {
      v46 = v8 + 32;
      do
      {
        OUTLINED_FUNCTION_57_8();
        OUTLINED_FUNCTION_39_7();
        if (v47)
        {
          sub_1BF8BAFC8(v59, &v60);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = *(v45 + 16);
            OUTLINED_FUNCTION_28_0();
            sub_1BF8DD194();
            v45 = v50;
          }

          v48 = *(v45 + 24);
          if (*(v45 + 16) >= v48 >> 1)
          {
            OUTLINED_FUNCTION_11_3(v48);
            sub_1BF8DD194();
            v45 = v51;
          }

          OUTLINED_FUNCTION_59_8();
        }

        else
        {
          sub_1BF8E8118(v59, &qword_1EBDE89F8, &qword_1BF9B84F0);
        }

        v46 += 48;
        --v44;
      }

      while (v44);
    }

    v52 = OUTLINED_FUNCTION_2_26();
    v53(v52);
  }

LABEL_92:
  OUTLINED_FUNCTION_37();
}

void sub_1BF98A098()
{
  OUTLINED_FUNCTION_39();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89F0, &unk_1BF9C66D0);
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_77_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95A8, &unk_1BF9C7770);
  sub_1BF8DF500();
  OUTLINED_FUNCTION_40_4();
  if (!v0)
  {
    v12 = OUTLINED_FUNCTION_33_10();
    OUTLINED_FUNCTION_38_7(v12);
    sub_1BF987574(&v61, v13, &qword_1EBDE89C8, &qword_1BF9B98D0);
    OUTLINED_FUNCTION_47_6();
    if (v14)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_103:
        sub_1BF98C638(v8);
        v8 = v56;
      }

      OUTLINED_FUNCTION_7_18();
      while (1)
      {
        if (v5 >= *(v3 + 2))
        {
          __break(1u);
LABEL_95:

LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

        OUTLINED_FUNCTION_18_13();
        if (!v17)
        {
          goto LABEL_95;
        }

        v18 = *(v16 + 16);
        v19 = *(v16 + 24);
        if ((v1 & 0x1000000000000000) == 0)
        {
          break;
        }

        swift_bridgeObjectRetain_n();
        v41 = OUTLINED_FUNCTION_23_16();
        v3 = sub_1BF99854C(v41, v42, 10);
        v62 = v43;

        if (v62)
        {
          goto LABEL_96;
        }

LABEL_73:
        OUTLINED_FUNCTION_20_17();
        sub_1BF8D889C();
        if (v0)
        {
          v54 = OUTLINED_FUNCTION_2_26();
          v55(v54);

          goto LABEL_92;
        }

        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_97;
        }

        if (v3 >= *(v8 + 16))
        {
          goto LABEL_98;
        }

        OUTLINED_FUNCTION_22_9();
        sub_1BF98CEE8();
        v3 = v57;
        if (v5 == v58)
        {
          goto LABEL_81;
        }
      }

      if ((v1 & 0x2000000000000000) != 0)
      {
        OUTLINED_FUNCTION_48_6();
        if (v23)
        {
          if (!v27)
          {
            goto LABEL_99;
          }

          if (v27 != 1)
          {
            OUTLINED_FUNCTION_15_20();
            while (1)
            {
              OUTLINED_FUNCTION_3_27();
              if (!v23 & v22)
              {
                break;
              }

              OUTLINED_FUNCTION_0_24();
              if (!v23)
              {
                break;
              }

              v3 = (v34 + v33);
              if (__OFADD__(v34, v33))
              {
                break;
              }

              OUTLINED_FUNCTION_10_2();
              if (v23)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v28 == 45)
        {
          if (!v27)
          {
            goto LABEL_102;
          }

          if (v27 != 1)
          {
            OUTLINED_FUNCTION_15_20();
            while (1)
            {
              OUTLINED_FUNCTION_3_27();
              if (!v23 & v22)
              {
                break;
              }

              OUTLINED_FUNCTION_0_24();
              if (!v23)
              {
                break;
              }

              v3 = (v30 - v29);
              if (__OFSUB__(v30, v29))
              {
                break;
              }

              OUTLINED_FUNCTION_10_2();
              if (v23)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v27)
        {
          while (1)
          {
            OUTLINED_FUNCTION_3_27();
            if (!v23 & v22)
            {
              break;
            }

            OUTLINED_FUNCTION_0_24();
            if (!v23)
            {
              break;
            }

            v3 = (v40 + v39);
            if (__OFADD__(v40, v39))
            {
              break;
            }

            OUTLINED_FUNCTION_10_2();
            if (v23)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

      if ((v2 & 0x1000000000000000) != 0)
      {
        v20 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        OUTLINED_FUNCTION_23_16();
        v20 = sub_1BF9B5318();
      }

      v21 = *v20;
      if (v21 == 43)
      {
        if (v15 < 1)
        {
          goto LABEL_101;
        }

        if (v15 == 1)
        {
          goto LABEL_71;
        }

        v3 = 0;
        if (v20)
        {
          while (1)
          {
            OUTLINED_FUNCTION_3_27();
            if (!v23 & v22)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_0_24();
            if (!v23)
            {
              goto LABEL_71;
            }

            v3 = (v32 + v31);
            if (__OFADD__(v32, v31))
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_10_2();
            if (v23)
            {
              goto LABEL_72;
            }
          }
        }
      }

      else if (v21 == 45)
      {
        if (v15 < 1)
        {
          goto LABEL_100;
        }

        if (v15 == 1)
        {
          goto LABEL_71;
        }

        v3 = 0;
        if (v20)
        {
          while (1)
          {
            OUTLINED_FUNCTION_3_27();
            if (!v23 & v22)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_0_24();
            if (!v23)
            {
              goto LABEL_71;
            }

            v3 = (v25 - v24);
            if (__OFSUB__(v25, v24))
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_10_2();
            if (v23)
            {
              goto LABEL_72;
            }
          }
        }
      }

      else
      {
        if (!v15)
        {
LABEL_71:
          v3 = 0;
          v26 = 1;
LABEL_72:
          v60.n128_u8[0] = v26;
          v0 = v26;

          if (v0)
          {
            goto LABEL_96;
          }

          goto LABEL_73;
        }

        v3 = 0;
        if (v20)
        {
          while (*v20 - 48 <= 9)
          {
            OUTLINED_FUNCTION_34_9();
            if (!v23)
            {
              break;
            }

            v3 = (v38 + v37);
            if (__OFADD__(v38, v37))
            {
              break;
            }

            v20 = (v35 + 1);
            if (v36 == 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_71;
        }
      }

LABEL_62:
      v26 = 0;
      goto LABEL_72;
    }

LABEL_81:

    v44 = *(v8 + 16);
    v45 = MEMORY[0x1E69E7CC0];
    if (v44)
    {
      v46 = v8 + 32;
      do
      {
        OUTLINED_FUNCTION_57_8();
        OUTLINED_FUNCTION_39_7();
        if (v47)
        {
          sub_1BF8BAFC8(v59, &v60);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = *(v45 + 16);
            OUTLINED_FUNCTION_28_0();
            sub_1BF8DD314();
            v45 = v50;
          }

          v48 = *(v45 + 24);
          if (*(v45 + 16) >= v48 >> 1)
          {
            OUTLINED_FUNCTION_11_3(v48);
            sub_1BF8DD314();
            v45 = v51;
          }

          OUTLINED_FUNCTION_59_8();
        }

        else
        {
          sub_1BF8E8118(v59, &qword_1EBDE89C8, &qword_1BF9B98D0);
        }

        v46 += 48;
        --v44;
      }

      while (v44);
    }

    v52 = OUTLINED_FUNCTION_2_26();
    v53(v52);
  }

LABEL_92:
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF98A564(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89F0, &unk_1BF9C66D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v58 - v7;
  v76 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8DC0, &qword_1BF9C6080);
  sub_1BF8DF500();
  sub_1BF9B54A8();
  if (!v1)
  {
    v60 = v4;
    v9 = sub_1BF9B5568();
    v10 = *(v9 + 16);
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v11 = sub_1BF987620(&v71, v10);
    v12 = *(v9 + 16);
    v59 = v5;
    v65 = v12;
    if (v12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_98;
      }

      while (1)
      {
        v13 = 0;
        v64 = v9 + 32;
        v61 = &v71 + 1;
        v62 = v11 + 32;
        v63 = v9;
        while (v13 < *(v9 + 16))
        {
          v14 = v64 + 32 * v13;
          v16 = *v14;
          v15 = *(v14 + 8);
          v17 = HIBYTE(v15) & 0xF;
          v18 = *v14 & 0xFFFFFFFFFFFFLL;
          if ((v15 & 0x2000000000000000) != 0)
          {
            v19 = HIBYTE(v15) & 0xF;
          }

          else
          {
            v19 = *v14 & 0xFFFFFFFFFFFFLL;
          }

          if (!v19)
          {
            goto LABEL_90;
          }

          v20 = *(v14 + 16);
          v21 = *(v14 + 24);
          if ((v15 & 0x1000000000000000) == 0)
          {
            if ((v15 & 0x2000000000000000) != 0)
            {
              *&v71 = *v14;
              *(&v71 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
              if (v16 == 43)
              {
                if (!v17)
                {
                  goto LABEL_94;
                }

                if (--v17)
                {
                  v9 = 0;
                  v33 = v61;
                  while (1)
                  {
                    v34 = *v33 - 48;
                    if (v34 > 9)
                    {
                      break;
                    }

                    v35 = 10 * v9;
                    if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                    {
                      break;
                    }

                    v9 = v35 + v34;
                    if (__OFADD__(v35, v34))
                    {
                      break;
                    }

                    ++v33;
                    if (!--v17)
                    {
                      goto LABEL_67;
                    }
                  }
                }
              }

              else if (v16 == 45)
              {
                if (!v17)
                {
                  goto LABEL_97;
                }

                if (--v17)
                {
                  v9 = 0;
                  v27 = v61;
                  while (1)
                  {
                    v28 = *v27 - 48;
                    if (v28 > 9)
                    {
                      break;
                    }

                    v29 = 10 * v9;
                    if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                    {
                      break;
                    }

                    v9 = v29 - v28;
                    if (__OFSUB__(v29, v28))
                    {
                      break;
                    }

                    ++v27;
                    if (!--v17)
                    {
                      goto LABEL_67;
                    }
                  }
                }
              }

              else if (v17)
              {
                v9 = 0;
                v38 = &v71;
                while (1)
                {
                  v39 = *v38 - 48;
                  if (v39 > 9)
                  {
                    break;
                  }

                  v40 = 10 * v9;
                  if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                  {
                    break;
                  }

                  v9 = v40 + v39;
                  if (__OFADD__(v40, v39))
                  {
                    break;
                  }

                  ++v38;
                  if (!--v17)
                  {
                    goto LABEL_67;
                  }
                }
              }
            }

            else
            {
              if ((v16 & 0x1000000000000000) != 0)
              {
                v22 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v44 = *v14;
                v45 = *(v14 + 8);
                v22 = sub_1BF9B5318();
              }

              v23 = *v22;
              if (v23 == 43)
              {
                if (v18 < 1)
                {
                  goto LABEL_96;
                }

                v17 = v18 - 1;
                if (v18 != 1)
                {
                  v9 = 0;
                  if (!v22)
                  {
                    goto LABEL_58;
                  }

                  v30 = v22 + 1;
                  while (1)
                  {
                    v31 = *v30 - 48;
                    if (v31 > 9)
                    {
                      break;
                    }

                    v32 = 10 * v9;
                    if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                    {
                      break;
                    }

                    v9 = v32 + v31;
                    if (__OFADD__(v32, v31))
                    {
                      break;
                    }

                    ++v30;
                    if (!--v17)
                    {
                      goto LABEL_67;
                    }
                  }
                }
              }

              else if (v23 == 45)
              {
                if (v18 < 1)
                {
                  goto LABEL_95;
                }

                v17 = v18 - 1;
                if (v18 != 1)
                {
                  v9 = 0;
                  if (v22)
                  {
                    v24 = v22 + 1;
                    while (1)
                    {
                      v25 = *v24 - 48;
                      if (v25 > 9)
                      {
                        goto LABEL_66;
                      }

                      v26 = 10 * v9;
                      if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                      {
                        goto LABEL_66;
                      }

                      v9 = v26 - v25;
                      if (__OFSUB__(v26, v25))
                      {
                        goto LABEL_66;
                      }

                      ++v24;
                      if (!--v17)
                      {
                        goto LABEL_67;
                      }
                    }
                  }

LABEL_58:
                  LOBYTE(v17) = 0;
LABEL_67:
                  LOBYTE(v67) = v17;
                  v41 = v17;

                  if (v41)
                  {
                    goto LABEL_91;
                  }

                  goto LABEL_68;
                }
              }

              else
              {
                if (!v18)
                {
                  goto LABEL_66;
                }

                v9 = 0;
                if (!v22)
                {
                  goto LABEL_58;
                }

                while (1)
                {
                  v36 = *v22 - 48;
                  if (v36 > 9)
                  {
                    break;
                  }

                  v37 = 10 * v9;
                  if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                  {
                    break;
                  }

                  v9 = v37 + v36;
                  if (__OFADD__(v37, v36))
                  {
                    break;
                  }

                  ++v22;
                  if (!--v18)
                  {
                    goto LABEL_58;
                  }
                }
              }
            }

LABEL_66:
            v9 = 0;
            LOBYTE(v17) = 1;
            goto LABEL_67;
          }

          v42 = *(v14 + 8);
          swift_bridgeObjectRetain_n();
          v9 = sub_1BF99854C(v16, v15, 10);
          v75 = v43;

          if (v75)
          {
            goto LABEL_91;
          }

LABEL_68:
          sub_1BF8D8F70();

          if (v9 < 0)
          {
            goto LABEL_92;
          }

          if (v9 >= *(v11 + 16))
          {
            goto LABEL_93;
          }

          ++v13;
          sub_1BF98CEE8();
          v9 = v63;
          if (v13 == v65)
          {
            goto LABEL_75;
          }
        }

        __break(1u);
LABEL_90:

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
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        sub_1BF98C64C(v11);
        v11 = v57;
      }
    }

LABEL_75:

    v46 = *(v11 + 16);
    v65 = v11;
    if (v46)
    {
      v47 = v11 + 32;
      v2 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1BF98CF44();
        v66[0] = v71;
        v66[1] = v72;
        v66[2] = v73;
        v66[3] = v74;
        if (*(&v71 + 1))
        {
          v67 = v71;
          v68 = v72;
          v69 = v73;
          v70 = v74;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = *(v2 + 16);
            sub_1BF8DD49C();
            v2 = v54;
          }

          v48 = *(v2 + 16);
          if (v48 >= *(v2 + 24) >> 1)
          {
            sub_1BF8DD49C();
            v2 = v55;
          }

          *(v2 + 16) = v48 + 1;
          v49 = (v2 + (v48 << 6));
          v50 = v67;
          v51 = v68;
          v52 = v70;
          v49[4] = v69;
          v49[5] = v52;
          v49[2] = v50;
          v49[3] = v51;
        }

        else
        {
          sub_1BF8E8118(v66, &qword_1EBDE8A60, &qword_1BF9B8558);
        }

        v47 += 64;
        --v46;
      }

      while (v46);
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    (*(v59 + 8))(v8, v60);
  }

  return v2;
}

uint64_t sub_1BF98AC4C(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = a1 + 32;
  while (1)
  {
    v5 = ~v1;
    v6 = (v4 + (v1 << 6));
    v7 = v2 - v1;
    if (v2 == v1)
    {
      break;
    }

    while (1)
    {
      sub_1BF98ADA8(v6, v18);
      if (*(&v18[0] + 1))
      {
        break;
      }

      sub_1BF8E8118(v18, &qword_1EBDEA1E8, &qword_1BF9C4820);
      --v5;
      v6 += 8;
      if (!--v7)
      {
        return v3;
      }
    }

    v14 = v18[0];
    v15 = v18[1];
    v16 = v18[2];
    v17 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = *(v3 + 16);
      sub_1BF8DD020();
      v3 = v11;
    }

    v8 = *(v3 + 16);
    if (v8 >= *(v3 + 24) >> 1)
    {
      sub_1BF8DD020();
      v3 = v12;
    }

    v1 = -v5;
    *(v3 + 16) = v8 + 1;
    v9 = v3 + 56 * v8;
    *(v9 + 80) = v17;
    *(v9 + 48) = v15;
    *(v9 + 64) = v16;
    *(v9 + 32) = v14;
  }

  return v3;
}

void sub_1BF98ADA8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  sub_1BF8D7914((a1 + 2), &v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89C0, &unk_1BF9B84C0);
  v6 = swift_dynamicCast();
  v36 = v4;
  if (v6)
  {
    *&v31[0] = v25;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96D8, &unk_1BF9BF240);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8458, &qword_1BF9BF970);
    if (swift_dynamicCast())
    {
      sub_1BF8E8118(&v33, &qword_1EBDE99E0, &unk_1BF9C6700);
      swift_unknownObjectRelease();
      sub_1BF8C2C9C(&v25, &v28);
      v7 = &v28;
LABEL_6:
      sub_1BF8C2C9C(v7, &v33);
      goto LABEL_18;
    }

    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    sub_1BF8E8118(&v25, &qword_1EBDE99E0, &unk_1BF9C6700);
    if (qword_1EDBF5568 != -1)
    {
      swift_once();
    }

    v8 = sub_1BF9B47C8();
    __swift_project_value_buffer(v8, qword_1EDBF5570);
    swift_unknownObjectRetain();

    v9 = sub_1BF9B47A8();
    v10 = sub_1BF9B5048();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v28 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_1BF8DE810(v4, v5, &v28);
      *(v11 + 12) = 2080;
      swift_getObjectType();
      v13 = sub_1BF9B58D8();
      v15 = sub_1BF8DE810(v13, v14, &v28);

      *(v11 + 14) = v15;
      _os_log_impl(&dword_1BF8B8000, v9, v10, "Parameter %s is an NSCodingAdaptor but the data type is not DisplayRepresentable. It is %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB5F320](v12, -1, -1);
      MEMORY[0x1BFB5F320](v11, -1, -1);

      swift_unknownObjectRelease();
      goto LABEL_18;
    }

    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  sub_1BF8D7914((a1 + 2), &v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8458, &qword_1BF9BF970);
  if (swift_dynamicCast())
  {
    sub_1BF8E8118(&v33, &qword_1EBDE99E0, &unk_1BF9C6700);
    sub_1BF8C2C9C(v31, &v25);
    v7 = &v25;
    goto LABEL_6;
  }

  v32 = 0;
  memset(v31, 0, sizeof(v31));
  sub_1BF8E8118(v31, &qword_1EBDE99E0, &unk_1BF9C6700);
  if (qword_1EDBF5568 != -1)
  {
    swift_once();
  }

  v16 = sub_1BF9B47C8();
  __swift_project_value_buffer(v16, qword_1EDBF5570);
  sub_1BF98C714(a1, &v28);

  v9 = sub_1BF9B47A8();
  v17 = sub_1BF9B5048();

  if (os_log_type_enabled(v9, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v31[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_1BF8DE810(v36, v5, v31);
    *(v18 + 12) = 2080;
    sub_1BF8D7914(&v29, &v25);
    __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(&v25);
    v20 = sub_1BF9B58D8();
    v22 = v21;
    sub_1BF98CEB8(&v28);
    v23 = sub_1BF8DE810(v20, v22, v31);

    *(v18 + 14) = v23;
    _os_log_impl(&dword_1BF8B8000, v9, v17, "Parameter %s is not DisplayRepresentable. It is %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5F320](v19, -1, -1);
    MEMORY[0x1BFB5F320](v18, -1, -1);
LABEL_16:

    goto LABEL_18;
  }

  sub_1BF98CEB8(&v28);
LABEL_18:
  v28 = v33;
  v29 = v34;
  v30 = v35;
  v24 = *(&v34 + 1);
  if (*(&v34 + 1))
  {
    sub_1BF8C2C9C(&v28, a2 + 16);

    v24 = v36;
  }

  else
  {
    v5 = 0;
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
  }

  *a2 = v24;
  *(a2 + 8) = v5;
}

uint64_t sub_1BF98B314()
{
  v1 = *(v0 + 4);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = *v0;
  v15 = v0[1];
  v3 = v1 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1BF8D1F54(v3, v21);
    v17 = v14;
    v18 = v15;
    *&v19 = v1;
    sub_1BF98B474(v21, v16);
    sub_1BF8D1FB0(v21);
    if (*(&v16[0] + 1))
    {
      v17 = v16[0];
      v18 = v16[1];
      v19 = v16[2];
      v20 = v16[3];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = *(v4 + 16);
        sub_1BF8DD49C();
        v4 = v11;
      }

      v5 = *(v4 + 16);
      if (v5 >= *(v4 + 24) >> 1)
      {
        sub_1BF8DD49C();
        v4 = v12;
      }

      *(v4 + 16) = v5 + 1;
      v6 = (v4 + (v5 << 6));
      v7 = v17;
      v8 = v18;
      v9 = v20;
      v6[4] = v19;
      v6[5] = v9;
      v6[2] = v7;
      v6[3] = v8;
    }

    else
    {
      sub_1BF8E8118(v16, &qword_1EBDE8A60, &qword_1BF9B8558);
    }

    v3 += 56;
    --v2;
  }

  while (v2);
  return v4;
}

__n128 *sub_1BF98B474@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  sub_1BF8E69C4((a1 + 2), v21);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8458, &qword_1BF9BF970);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96D8, &unk_1BF9BF240);
  if (swift_dynamicCast())
  {
    v18[1] = &type metadata for NSCodingAdaptor;
    v18[2] = sub_1BF920BE8();
    v18[3] = sub_1BF920C90();
    v17.n128_u64[0] = v19.n128_u64[0];
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = sub_1BF8BAFC8(&v17, (a2 + 16));
    *a2 = v5;
    *(a2 + 8) = v4;
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89C0, &unk_1BF9B84C0);
  if (swift_dynamicCast())
  {
    sub_1BF8BAFC8(&v19, &v17);
    goto LABEL_5;
  }

  if (qword_1EDBF5568 != -1)
  {
    swift_once();
  }

  v7 = sub_1BF9B47C8();
  __swift_project_value_buffer(v7, qword_1EDBF5570);
  sub_1BF8D1F54(a1, &v17);
  v8 = sub_1BF9B47A8();
  v9 = sub_1BF9B5048();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    sub_1BF8E69C4(v18, &v19);
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(&v19);
    v12 = sub_1BF9B58D8();
    v14 = v13;
    sub_1BF8D1FB0(&v17);
    v15 = sub_1BF8DE810(v12, v14, &v16);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1BF8B8000, v8, v9, "Unknown type to serialise of: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1BFB5F320](v11, -1, -1);
    MEMORY[0x1BFB5F320](v10, -1, -1);
  }

  else
  {

    sub_1BF8D1FB0(&v17);
  }

  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

unint64_t sub_1BF98B72C()
{
  result = qword_1EDBF44E8;
  if (!qword_1EDBF44E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF44E8);
  }

  return result;
}

unint64_t sub_1BF98B780()
{
  result = qword_1EBDEA360;
  if (!qword_1EBDEA360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA360);
  }

  return result;
}

unint64_t sub_1BF98B7D4()
{
  result = qword_1EBDEA370;
  if (!qword_1EBDEA370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA370);
  }

  return result;
}

uint64_t sub_1BF98B828(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BF95DCE8(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1BF98B894(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1BF98B894(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BF9B5658();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1BF9B4D88();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1BF98BAB8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1BF98B988(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BF98B988(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 56 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      while (1)
      {
        sub_1BF8D1F54(v10, v21);
        v11 = v10 - 56;
        sub_1BF8D1F54(v10 - 56, v20);
        if (v21[0] == v20[0] && v21[1] == v20[1])
        {
          break;
        }

        v13 = sub_1BF9B56D8();
        sub_1BF8D1FB0(v20);
        result = sub_1BF8D1FB0(v21);
        if (v13)
        {
          if (!v6)
          {
            __break(1u);
            return result;
          }

          v14 = *(v10 + 48);
          v16 = *(v10 + 16);
          v15 = *(v10 + 32);
          v17 = *v10;
          v18 = *(v10 - 40);
          *v10 = *v11;
          *(v10 + 16) = v18;
          *(v10 + 32) = *(v10 - 24);
          *(v10 + 48) = *(v10 - 8);
          *v11 = v17;
          *(v10 - 40) = v16;
          *(v10 - 24) = v15;
          v10 -= 56;
          *(v11 + 48) = v14;
          if (!__CFADD__(v9++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_1BF8D1FB0(v20);
      result = sub_1BF8D1FB0(v21);
LABEL_14:
      ++v4;
      v7 += 56;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1BF98BAB8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v107 = *a1;
    if (!*a1)
    {
      goto LABEL_147;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_108:
      v95 = v6;
      v96 = (v6 + 16);
      for (i = *(v6 + 16); ; *v96 = i)
      {
        v6 = i - 2;
        if (i < 2)
        {
          break;
        }

        if (!*a3)
        {
          goto LABEL_144;
        }

        v98 = (v95 + 16 * i);
        v99 = *v98;
        v100 = &v96[2 * i];
        v101 = v100[1];
        v102 = v113;
        sub_1BF98C18C((*a3 + 56 * *v98), (*a3 + 56 * *v100), *a3 + 56 * v101, v107);
        v113 = v102;
        if (v102)
        {
          break;
        }

        if (v101 < v99)
        {
          goto LABEL_132;
        }

        if (v6 >= *v96)
        {
          goto LABEL_133;
        }

        *v98 = v99;
        v98[1] = v101;
        if (*v96 < i)
        {
          goto LABEL_134;
        }

        i = *v96 - 1;
        sub_1BF95E3AC(v100 + 2);
      }

LABEL_116:

      return;
    }

LABEL_141:
    v6 = sub_1BF95B0FC(v6);
    goto LABEL_108;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5++;
    if (v5 < v4)
    {
      v104 = v6;
      v8 = *a3;
      sub_1BF8D1F54(*a3 + 56 * v5, &v111);
      sub_1BF8D1F54(v8 + 56 * v7, &v109);
      if (v111 == v109 && v112 == v110)
      {
        v6 = 0;
      }

      else
      {
        v6 = sub_1BF9B56D8();
      }

      sub_1BF8D1FB0(&v109);
      sub_1BF8D1FB0(&v111);
      v10 = v7 + 2;
      v107 = v7;
      v11 = 56 * v7;
      v12 = v8 + 56 * v7 + 112;
      v13 = 56 * v7 + 56;
      v14 = v5;
      do
      {
        v15 = v10;
        v16 = v14;
        v17 = v13;
        if (v10 >= v4)
        {
          break;
        }

        sub_1BF8D1F54(v12, &v111);
        sub_1BF8D1F54(v12 - 56, &v109);
        v18 = v111 == v109 && v112 == v110;
        v19 = v18 ? 0 : sub_1BF9B56D8();
        sub_1BF8D1FB0(&v109);
        sub_1BF8D1FB0(&v111);
        v10 = v15 + 1;
        v12 += 56;
        v14 = (v16 + 1);
        v13 = v17 + 56;
      }

      while (((v6 ^ v19) & 1) == 0);
      if (v6)
      {
        v20 = v107;
        if (v15 < v107)
        {
          goto LABEL_138;
        }

        if (v107 >= v15)
        {
          v5 = v15;
          v6 = v104;
          v7 = v107;
          goto LABEL_31;
        }

        v6 = v104;
        do
        {
          if (v20 != v16)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_145;
            }

            v22 = (v21 + v11);
            v23 = *(v21 + v11 + 48);
            v24 = (v21 + v17);
            v26 = v22[1];
            v25 = v22[2];
            v27 = *v22;
            v29 = v24[1];
            v28 = v24[2];
            v30 = *v24;
            *(v22 + 6) = *(v24 + 6);
            v22[1] = v29;
            v22[2] = v28;
            *v22 = v30;
            *v24 = v27;
            v24[1] = v26;
            v24[2] = v25;
            *(v24 + 6) = v23;
          }

          ++v20;
          v17 -= 56;
          v11 += 56;
          v31 = v20 < v16--;
        }

        while (v31);
        v5 = v15;
      }

      else
      {
        v5 = v15;
        v6 = v104;
      }

      v7 = v107;
    }

LABEL_31:
    v32 = a3[1];
    if (v5 < v32)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_137;
      }

      if (v5 - v7 < a4)
      {
        break;
      }
    }

LABEL_54:
    if (v5 < v7)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v92 = *(v6 + 16);
      sub_1BF8DCF6C();
      v6 = v93;
    }

    v48 = *(v6 + 16);
    v49 = v48 + 1;
    if (v48 >= *(v6 + 24) >> 1)
    {
      sub_1BF8DCF6C();
      v6 = v94;
    }

    *(v6 + 16) = v49;
    v50 = v6 + 32;
    v51 = (v6 + 32 + 16 * v48);
    *v51 = v7;
    v51[1] = v5;
    v107 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    if (v48)
    {
      while (1)
      {
        v52 = v49 - 1;
        v53 = (v50 + 16 * (v49 - 1));
        v54 = (v6 + 16 * v49);
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v55 = *(v6 + 32);
          v56 = *(v6 + 40);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_74:
          if (v58)
          {
            goto LABEL_123;
          }

          v70 = *v54;
          v69 = v54[1];
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_126;
          }

          v74 = v53[1];
          v75 = v74 - *v53;
          if (__OFSUB__(v74, *v53))
          {
            goto LABEL_129;
          }

          if (__OFADD__(v72, v75))
          {
            goto LABEL_131;
          }

          if (v72 + v75 >= v57)
          {
            if (v57 < v75)
            {
              v52 = v49 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        if (v49 < 2)
        {
          goto LABEL_125;
        }

        v77 = *v54;
        v76 = v54[1];
        v65 = __OFSUB__(v76, v77);
        v72 = v76 - v77;
        v73 = v65;
LABEL_89:
        if (v73)
        {
          goto LABEL_128;
        }

        v79 = *v53;
        v78 = v53[1];
        v65 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v65)
        {
          goto LABEL_130;
        }

        if (v80 < v72)
        {
          goto LABEL_103;
        }

LABEL_96:
        if (v52 - 1 >= v49)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*a3)
        {
          goto LABEL_143;
        }

        v84 = (v50 + 16 * (v52 - 1));
        v85 = *v84;
        v86 = v52;
        v87 = (v50 + 16 * v52);
        v88 = v87[1];
        v89 = v113;
        sub_1BF98C18C((*a3 + 56 * *v84), (*a3 + 56 * *v87), *a3 + 56 * v88, v107);
        v113 = v89;
        if (v89)
        {
          goto LABEL_116;
        }

        if (v88 < v85)
        {
          goto LABEL_118;
        }

        v90 = v5;
        v91 = v6;
        v6 = *(v6 + 16);
        if (v86 > v6)
        {
          goto LABEL_119;
        }

        *v84 = v85;
        v84[1] = v88;
        if (v86 >= v6)
        {
          goto LABEL_120;
        }

        v49 = v6 - 1;
        sub_1BF95E3AC(v87 + 2);
        *(v91 + 16) = v6 - 1;
        v31 = v6 > 2;
        v6 = v91;
        v5 = v90;
        if (!v31)
        {
          goto LABEL_103;
        }
      }

      v59 = v50 + 16 * v49;
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_121;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_122;
      }

      v66 = v54[1];
      v67 = v66 - *v54;
      if (__OFSUB__(v66, *v54))
      {
        goto LABEL_124;
      }

      v65 = __OFADD__(v57, v67);
      v68 = v57 + v67;
      if (v65)
      {
        goto LABEL_127;
      }

      if (v68 >= v62)
      {
        v82 = *v53;
        v81 = v53[1];
        v65 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v65)
        {
          goto LABEL_135;
        }

        if (v57 < v83)
        {
          v52 = v49 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_74;
    }

LABEL_103:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_139;
  }

  if (v7 + a4 >= v32)
  {
    v33 = a3[1];
  }

  else
  {
    v33 = (v7 + a4);
  }

  if (v33 < v7)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v5 == v33)
  {
    goto LABEL_54;
  }

  v105 = v6;
  v34 = *a3;
  v35 = *a3 + 56 * v5;
  v107 = v7;
  v36 = (v7 - v5);
LABEL_41:
  v37 = v36;
  v38 = v35;
  while (1)
  {
    sub_1BF8D1F54(v38, &v111);
    v39 = v38 - 56;
    sub_1BF8D1F54(v38 - 56, &v109);
    if (v111 == v109 && v112 == v110)
    {
      sub_1BF8D1FB0(&v109);
      sub_1BF8D1FB0(&v111);
LABEL_52:
      ++v5;
      v35 += 56;
      --v36;
      if (v5 == v33)
      {
        v5 = v33;
        v6 = v105;
        v7 = v107;
        goto LABEL_54;
      }

      goto LABEL_41;
    }

    v41 = sub_1BF9B56D8();
    sub_1BF8D1FB0(&v109);
    sub_1BF8D1FB0(&v111);
    if ((v41 & 1) == 0)
    {
      goto LABEL_52;
    }

    if (!v34)
    {
      break;
    }

    v42 = *(v38 + 48);
    v44 = *(v38 + 16);
    v43 = *(v38 + 32);
    v45 = *v38;
    v46 = *(v38 - 40);
    *v38 = *v39;
    *(v38 + 16) = v46;
    *(v38 + 32) = *(v38 - 24);
    *(v38 + 48) = *(v38 - 8);
    *v39 = v45;
    *(v38 - 40) = v44;
    *(v38 - 24) = v43;
    v38 -= 56;
    *(v39 + 48) = v42;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

uint64_t sub_1BF98C18C(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 56;
  v9 = (a3 - a2) / 56;
  if (v8 < v9)
  {
    sub_1BF958CA0(a1, (a2 - a1) / 56, a4);
    v10 = &v4[56 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_39;
      }

      sub_1BF8D1F54(v6, &v35);
      sub_1BF8D1F54(v4, &v33);
      v12 = v35 == v33 && v36 == v34;
      if (v12)
      {
        break;
      }

      v13 = sub_1BF9B56D8();
      sub_1BF8D1FB0(&v33);
      sub_1BF8D1FB0(&v35);
      if ((v13 & 1) == 0)
      {
        goto LABEL_16;
      }

      v14 = v6;
      v12 = v7 == v6;
      v6 += 56;
      if (!v12)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 56;
    }

    sub_1BF8D1FB0(&v33);
    sub_1BF8D1FB0(&v35);
LABEL_16:
    v14 = v4;
    v12 = v7 == v4;
    v4 += 56;
    if (v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = *v14;
    v16 = *(v14 + 1);
    v17 = *(v14 + 2);
    *(v7 + 6) = *(v14 + 6);
    *(v7 + 1) = v16;
    *(v7 + 2) = v17;
    *v7 = v15;
    goto LABEL_18;
  }

  sub_1BF958CA0(a2, (a3 - a2) / 56, a4);
  v18 = &v4[56 * v9];
LABEL_20:
  v19 = v6 - 56;
  v5 -= 56;
  for (i = (v18 - 56); ; i -= 56)
  {
    v10 = (i + 56);
    if (i + 56 <= v4 || v6 <= v7)
    {
      break;
    }

    sub_1BF8D1F54(i, &v35);
    sub_1BF8D1F54((v6 - 56), &v33);
    if (v35 == v33 && v36 == v34)
    {
      v23 = 0;
    }

    else
    {
      v23 = sub_1BF9B56D8();
    }

    sub_1BF8D1FB0(&v33);
    sub_1BF8D1FB0(&v35);
    if (v23)
    {
      v18 = (i + 56);
      v12 = v5 + 56 == v6;
      v6 -= 56;
      if (!v12)
      {
        v27 = *v19;
        v28 = *(v19 + 1);
        v29 = *(v19 + 2);
        *(v5 + 48) = *(v19 + 6);
        *(v5 + 16) = v28;
        *(v5 + 32) = v29;
        *v5 = v27;
        v6 = v19;
      }

      goto LABEL_20;
    }

    if (v10 != (v5 + 56))
    {
      v24 = *i;
      v25 = *(i + 16);
      v26 = *(i + 32);
      *(v5 + 48) = *(i + 48);
      *(v5 + 16) = v25;
      *(v5 + 32) = v26;
      *v5 = v24;
    }

    v5 -= 56;
  }

LABEL_39:
  v30 = (v10 - v4) / 56;
  if (v6 != v4 || v6 >= &v4[56 * v30])
  {
    memmove(v6, v4, 56 * v30);
  }

  return 1;
}

uint64_t sub_1BF98C3F4(uint64_t a1, char a2, uint64_t *a3)
{
  v34 = a3;
  v28 = *(a1 + 16);
  if (!v28)
  {
  }

  v5 = 0;
  v6 = a1 + 32;
  while (v5 < *(a1 + 16))
  {
    sub_1BF98CF44();
    v8 = v31;
    v7 = v32;
    sub_1BF8C17FC(&v33, v30);
    v9 = *v34;
    v11 = sub_1BF8C2E64(v8, v7);
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v15 = v10;
    if (*(v9 + 24) >= v14)
    {
      if (a2)
      {
        if (v10)
        {
          goto LABEL_11;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA3B0, &qword_1BF9C6720);
        sub_1BF9B53B8();
        if (v15)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      v16 = v34;
      sub_1BF95C1AC(v14);
      v17 = *v16;
      v18 = sub_1BF8C2E64(v8, v7);
      if ((v15 & 1) != (v19 & 1))
      {
        goto LABEL_22;
      }

      v11 = v18;
      if (v15)
      {
LABEL_11:
        v20 = *v34;
        sub_1BF95E2E4(v30, v29);
        __swift_destroy_boxed_opaque_existential_1(v30);

        v21 = (*(v20 + 56) + 56 * v11);
        __swift_destroy_boxed_opaque_existential_1(v21);
        sub_1BF8C17FC(v29, v21);
        goto LABEL_15;
      }
    }

    v22 = *v34;
    v22[(v11 >> 6) + 8] |= 1 << v11;
    v23 = (v22[6] + 16 * v11);
    *v23 = v8;
    v23[1] = v7;
    sub_1BF8C17FC(v30, (v22[7] + 56 * v11));
    v24 = v22[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_21;
    }

    v22[2] = v26;
LABEL_15:
    ++v5;
    v6 += 72;
    a2 = 1;
    if (v28 == v5)
    {
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1BF9B5758();
  __break(1u);
  return result;
}

uint64_t sub_1BF98C674()
{
  swift_getObjectType();
  swift_beginAccess();

  swift_unknownObjectRetain();
  sub_1BF932778();
  swift_endAccess();
}

unint64_t sub_1BF98C750()
{
  result = qword_1EBDEA380;
  if (!qword_1EBDEA380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA380);
  }

  return result;
}

unint64_t sub_1BF98C7A8()
{
  result = qword_1EBDEA388;
  if (!qword_1EBDEA388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA388);
  }

  return result;
}

unint64_t sub_1BF98C800()
{
  result = qword_1EBDEA390;
  if (!qword_1EBDEA390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA390);
  }

  return result;
}

unint64_t sub_1BF98C858()
{
  result = qword_1EBDEA398;
  if (!qword_1EBDEA398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA398);
  }

  return result;
}

uint64_t sub_1BF98C8B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 41))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 40);
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

uint64_t sub_1BF98C8F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BF98C95C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1BF98C99C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t dispatch thunk of AppIntentFilter.Builder.withParameter(paramName:value:)()
{
  return (*(*v0 + 192))();
}

{
  return (*(*v0 + 200))();
}

uint64_t dispatch thunk of AppIntentFilter.Builder.withParameters(_:)()
{
  return (*(*v0 + 208))();
}

{
  return (*(*v0 + 216))();
}

_BYTE *storeEnumTagSinglePayload for AppIntentFilter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BF98CBE8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1BF98CC28(uint64_t result, int a2, int a3)
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

_BYTE *sub_1BF98CC84(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF98CD60()
{
  result = qword_1EBDEA3A0;
  if (!qword_1EBDEA3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA3A0);
  }

  return result;
}

unint64_t sub_1BF98CDB8()
{
  result = qword_1EDBF44D8;
  if (!qword_1EDBF44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF44D8);
  }

  return result;
}

unint64_t sub_1BF98CE10()
{
  result = qword_1EDBF44E0;
  if (!qword_1EDBF44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF44E0);
  }

  return result;
}

unint64_t sub_1BF98CE64()
{
  result = qword_1EBDEA3A8;
  if (!qword_1EBDEA3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA3A8);
  }

  return result;
}

uint64_t sub_1BF98CEE8()
{
  OUTLINED_FUNCTION_34_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_11(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_43();
  v7(v6);
  return v0;
}

uint64_t sub_1BF98CF44()
{
  OUTLINED_FUNCTION_34_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_11(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_43();
  v7(v6);
  return v0;
}

_BYTE *sub_1BF98CFA0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF98D07C()
{
  result = qword_1EBDEA3B8;
  if (!qword_1EBDEA3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA3B8);
  }

  return result;
}

unint64_t sub_1BF98D0D4()
{
  result = qword_1EBDEA3C0;
  if (!qword_1EBDEA3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA3C0);
  }

  return result;
}

unint64_t sub_1BF98D12C()
{
  result = qword_1EBDEA3C8;
  if (!qword_1EBDEA3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA3C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_18()
{

  return sub_1BF9B5558();
}

double OUTLINED_FUNCTION_38_7(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = 0.0;
  *(v1 - 128) = 0u;
  *(v1 - 112) = 0u;
  *(v1 - 144) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_49_5()
{
  result = v0 - 120;
  v2 = *(v0 - 128);
  return result;
}

void OUTLINED_FUNCTION_51_7()
{
  v4 = *(v3 - 160);
  v5 = *(v3 - 152);
  *(v3 - 120) = v1;
  *(v3 - 112) = v5;
  *(v3 - 104) = v0;
  *(v3 - 96) = v2;
  *(v3 - 88) = v4;
}

uint64_t OUTLINED_FUNCTION_58_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t SiriSuggestions.SiriRuntimeRequestState.assistantTurnState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SiriSuggestions.SiriRuntimeRequestState();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t SiriSuggestions.SiriRuntimeRequestState.init(inputOrigin:assistantTurnState:isFirstInvocationSinceOSInstalled:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  sub_1BF8BADBC(a1, a4);
  result = type metadata accessor for SiriSuggestions.SiriRuntimeRequestState();
  *(a4 + *(result + 20)) = v6;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t sub_1BF98D2D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA3D0, &unk_1BF9C6830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF98D338(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69724F7475706E69 && a2 == 0xEB000000006E6967;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001BF9CE120 == a2;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000021 && 0x80000001BF9CE140 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BF9B56D8();

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

uint64_t sub_1BF98D458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF98D338(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF98D480(uint64_t a1)
{
  v2 = sub_1BF8BE2D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF98D4BC(uint64_t a1)
{
  v2 = sub_1BF8BE2D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestions.SiriRuntimeRequestState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA3D0, &unk_1BF9C6830) - 8) + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA3F0, &qword_1BF9C6858);
  v9 = OUTLINED_FUNCTION_1(v8);
  v28 = v10;
  v29 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v13);
  v14 = type metadata accessor for SiriSuggestions.SiriRuntimeRequestState();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF8BE2D4();
  sub_1BF9B5868();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v14;
  sub_1BF9B4588();
  v33 = 0;
  OUTLINED_FUNCTION_0_25();
  sub_1BF8BAE78(v19, v20);
  sub_1BF9B5508();
  sub_1BF8BADBC(v7, v17);
  v31 = 1;
  sub_1BF8D0B2C();
  sub_1BF9B5508();
  v21 = v26;
  v17[*(v26 + 20)] = v32;
  v30 = 2;
  v22 = sub_1BF9B54E8();
  v23 = OUTLINED_FUNCTION_1_26();
  v24(v23);
  v17[*(v21 + 24)] = v22;
  sub_1BF98D7F8(v17, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BF98D85C(v17);
}

uint64_t sub_1BF98D7F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestions.SiriRuntimeRequestState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF98D85C(uint64_t a1)
{
  v2 = type metadata accessor for SiriSuggestions.SiriRuntimeRequestState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BF98D9D0()
{
  sub_1BF98DA8C();
  if (v0 <= 0x3F)
  {
    sub_1BF98DAE4(319, &unk_1EDBF5080);
    if (v1 <= 0x3F)
    {
      sub_1BF98DAE4(319, &qword_1EDBF4E40);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BF98DA8C()
{
  if (!qword_1EDBF54D8[0])
  {
    sub_1BF9B4588();
    v0 = sub_1BF9B50F8();
    if (!v1)
    {
      atomic_store(v0, qword_1EDBF54D8);
    }
  }
}

void sub_1BF98DAE4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1BF9B50F8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1BF98DB44()
{
  result = qword_1EBDEA3F8;
  if (!qword_1EBDEA3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA3F8);
  }

  return result;
}

unint64_t sub_1BF98DB9C()
{
  result = qword_1EDBF4A80;
  if (!qword_1EDBF4A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4A80);
  }

  return result;
}

unint64_t sub_1BF98DBF4()
{
  result = qword_1EDBF4A88;
  if (!qword_1EDBF4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4A88);
  }

  return result;
}

uint64_t DeviceType.rawValue.getter()
{
  result = 0x656E6F685069;
  switch(*v0)
  {
    case 1:
      result = 0x72506E6F69736976;
      break;
    case 2:
      result = 1684099177;
      break;
    case 3:
      result = 0x79616C50726163;
      break;
    case 4:
      result = 0x6863746177;
      break;
    case 5:
      result = 0x5654656C707061;
      break;
    case 6:
      result = 0x646F70656D6F68;
      break;
    case 7:
      result = 6513005;
      break;
    case 8:
      result = 6582128;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t EnvironmentSnapshot.openAppIds.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 40))();
  v3 = Array<A>.getAppInViewIds()(v2);

  return v3;
}

Swift::Bool __swiftcall EnvironmentSnapshot.shouldPresentDialog()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v1 + 88);
  v4(&v9);
  switch(v9)
  {
    case 2:

      goto LABEL_5;
    case 4:
      OUTLINED_FUNCTION_5_2();
      break;
    default:
      break;
  }

  v5 = sub_1BF9B56D8();

  if (v5)
  {
LABEL_5:
    v6 = 1;
  }

  else
  {
    (v4)(&v9, v3, v2);
    v6 = 1;
    switch(v9)
    {
      case 0:
      case 1:
      case 2:
      case 4:
        v6 = sub_1BF9B56D8();
        break;
      case 3:
        break;
      default:
        JUMPOUT(0);
    }
  }

  v9 = (*(v2 + 72))(v3, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA408, &unk_1BF9C6B10);
  sub_1BF991690(&qword_1EBDEA410, &qword_1EBDEA408, &unk_1BF9C6B10);
  sub_1BF9900C0();
  v7 = sub_1BF9B4FD8();

  return (v7 | v6) & 1;
}

uint64_t EnvironmentSnapshot.getValidOpenAppIds()(uint64_t a1, uint64_t a2)
{
  EnvironmentSnapshot.getValidOpenApps()(a1, a2);
  v3 = Array<A>.getAppInViewIds()(v2);

  return v3;
}

void EnvironmentSnapshot.getValidOpenApps()(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 40))();
  v3 = 0;
  v4 = *(v2 + 16);
  v5 = v2 + 32;
  v6 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_12_17();
  v28 = v7;
  while (1)
  {
LABEL_2:
    if (v3 == v4)
    {

      return;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    sub_1BF8DC030(v5 + (v3++ << 6), v35);
    switch(v36)
    {
      case 1:
      case 2:
        goto LABEL_7;
      case 3:
        OUTLINED_FUNCTION_5_2();
LABEL_7:
        v8 = sub_1BF9B56D8();

        if (v8)
        {
          goto LABEL_8;
        }

        goto LABEL_20;
      default:

LABEL_8:
        sub_1BF8D7914(v35, &v29);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88E8, &qword_1BF9B7FF0);
        if (swift_dynamicCast())
        {
          v9 = v4;
          v10 = v5;
          v12 = v33;
          v11 = v34;
          if (qword_1EDBF28A0 != -1)
          {
            swift_once();
          }

          v13 = qword_1EDC03430;
          if (*(qword_1EDC03430 + 16))
          {
            v14 = *(qword_1EDC03430 + 40);
            sub_1BF9B57A8();
            sub_1BF9B4B48();
            v15 = sub_1BF9B57E8();
            v16 = ~(-1 << *(v13 + 32));
            while (1)
            {
              v17 = v15 & v16;
              if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
              {
                break;
              }

              v18 = (*(v13 + 48) + 16 * v17);
              if (*v18 != v12 || v18[1] != v11)
              {
                v20 = sub_1BF9B56D8();
                v15 = v17 + 1;
                if ((v20 & 1) == 0)
                {
                  continue;
                }
              }

              sub_1BF8DC068(v35);
              v5 = v10;
              v4 = v9;
              v2 = v28;
              OUTLINED_FUNCTION_12_17();
              goto LABEL_2;
            }
          }

          v29 = v35[0];
          v30 = v35[1];
          v31 = v35[2];
          v32 = v36;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v37 = v6;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v22 = *(v6 + 16);
            sub_1BF8D0808();
            v6 = v37;
          }

          v5 = v10;
          v4 = v9;
          v2 = v28;
          OUTLINED_FUNCTION_12_17();
          v23 = *(v6 + 16);
          if (v23 >= *(v6 + 24) >> 1)
          {
            sub_1BF8D0808();
            v6 = v37;
          }

          *(v6 + 16) = v23 + 1;
          v24 = (v6 + (v23 << 6));
          v25 = v29;
          v26 = v30;
          v27 = v32;
          v24[4] = v31;
          v24[5] = v27;
          v24[2] = v25;
          v24[3] = v26;
        }

        else
        {
LABEL_20:
          sub_1BF8DC068(v35);
        }

        break;
    }
  }

  __break(1u);
}

SiriSuggestionsKit::NetworkConnectivity __swiftcall NetworkConnectivity.init(networkAvailable:airplaneMode:)(Swift::Bool networkAvailable, Swift::Bool airplaneMode)
{
  *v2 = networkAvailable;
  v2[1] = airplaneMode;
  result.networkAvailable = networkAvailable;
  return result;
}

uint64_t static NetworkConnectivity.unknownConnectivity.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EDBF2B30 != -1)
  {
    result = OUTLINED_FUNCTION_3_28();
  }

  v2 = HIBYTE(word_1EDBF2B38);
  *a1 = word_1EDBF2B38;
  a1[1] = v2;
  return result;
}

double sub_1BF98E550()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA4A0, &qword_1BF9C74C8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BF9C6AE0;
  *&result = 0x101000101;
  *(v0 + 32) = 0x101000101;
  qword_1EBDEA400 = v0;
  return result;
}

uint64_t static NetworkConnectivity.allCases.getter()
{
  if (qword_1EBDE81D8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1BF98E600(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001BF9CE190 == a2;
  if (v3 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E616C70726961 && a2 == 0xEC00000065646F4DLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF98E6D4(char a1)
{
  if (a1)
  {
    return 0x656E616C70726961;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1BF98E720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF98E600(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF98E748(uint64_t a1)
{
  v2 = sub_1BF990F38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF98E784(uint64_t a1)
{
  v2 = sub_1BF990F38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void NetworkConnectivity.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA418, &qword_1BF9C6B20);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_11_0();
  v11 = *v0;
  v13 = v0[1];
  v12 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1BF990F38();
  OUTLINED_FUNCTION_32_1();
  sub_1BF9B5898();
  sub_1BF9B5608();
  if (!v1)
  {
    sub_1BF9B5608();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_37();
}

void NetworkConnectivity.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA420, &qword_1BF9C6B28);
  OUTLINED_FUNCTION_1(v30);
  v32 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &a9 - v36;
  v38 = v27[4];
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1BF990F38();
  sub_1BF9B5868();
  if (!v23)
  {
    a13 = 0;
    v39 = sub_1BF9B5528();
    a12 = 1;
    v40 = sub_1BF9B5528();
    (*(v32 + 8))(v37, v30);
    *v29 = v39 & 1;
    v29[1] = v40 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF98EAC0()
{
  result = sub_1BF927940(&unk_1F3EF6058);
  qword_1EDC03430 = result;
  return result;
}

void SiriSuggestions.SystemDeviceState.networkConnectivity.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  OUTLINED_FUNCTION_24_11(a1);
}

uint64_t SiriSuggestions.SystemDeviceState.siriLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SiriSuggestions.SystemDeviceState(0) + 28);
  v4 = sub_1BF9B4558();
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t SiriSuggestions.SystemDeviceState.init(deviceLockState:deviceTypes:networkConnectivity:siriLocale:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  OUTLINED_FUNCTION_21_16(a1, a2, a3);
  *a5 = v7;
  *(a5 + 8) = v8;
  *(a5 + 16) = v9;
  *(a5 + 17) = v10;
  v11 = *(type metadata accessor for SiriSuggestions.SystemDeviceState(0) + 28);
  v12 = sub_1BF9B4558();
  OUTLINED_FUNCTION_13(v12);
  v14 = *(v13 + 32);

  return v14(a5 + v11, a4);
}

uint64_t SiriSuggestions.SystemDeviceState.description.getter()
{
  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0();
  }

  v1 = sub_1BF9B47C8();
  v2 = __swift_project_value_buffer(v1, qword_1EDBF5570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA428, &unk_1BF9C6B30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF9C6AE0;
  OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_22_10(v4, v5);
  v6 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA408, &unk_1BF9C6B10);
  *(inited + 48) = v6;
  OUTLINED_FUNCTION_11_17();
  *(inited + 72) = v8;
  *(inited + 80) = v7 & 0xFFFFFFFFFFFFLL | 0x6F4C000000000000;
  OUTLINED_FUNCTION_26_15();
  *(inited + 88) = v9;
  *(inited + 96) = *v0;
  OUTLINED_FUNCTION_25_13();
  *(inited + 120) = v10;
  *(inited + 128) = v11;
  *(inited + 136) = v12;
  LOBYTE(v10) = *(v0 + 17);
  *(inited + 144) = *(v0 + 16);
  *(inited + 145) = v10;
  OUTLINED_FUNCTION_31_13();
  *(inited + 168) = v14;
  *(inited + 176) = v13;
  *(inited + 184) = 0xEA0000000000656CLL;
  v15 = *(type metadata accessor for SiriSuggestions.SystemDeviceState(0) + 28);
  v16 = sub_1BF9B4558();
  *(inited + 216) = v16;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((inited + 192));
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_1Tm, v0 + v15, v16);

  sub_1BF951740(MEMORY[0x1E69E7CC0], inited, 120, v2, v18, v19, v20, v21, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  OUTLINED_FUNCTION_6_19();
  sub_1BF991690(v22, v23, &qword_1BF9B7FC0);
  v24 = sub_1BF9B4A78();
  v26 = v25;

  MEMORY[0x1BFB5DE90](v24, v26);

  return 0;
}

uint64_t sub_1BF98EE40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4C656369766564 && a2 == 0xEF65746174536B63;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7954656369766564 && a2 == 0xEB00000000736570;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001BF9CE170 == a2;
      if (v7 || (sub_1BF9B56D8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x61636F4C69726973 && a2 == 0xEA0000000000656CLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_1BF9B56D8();

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

unint64_t sub_1BF98EFB4(char a1)
{
  result = 0x6F4C656369766564;
  switch(a1)
  {
    case 1:
      result = 0x7954656369766564;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x61636F4C69726973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF98F074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF98EE40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF98F09C(uint64_t a1)
{
  v2 = sub_1BF990FAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF98F0D8(uint64_t a1)
{
  v2 = sub_1BF990FAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestions.SystemDeviceState.encode(to:)(uint64_t a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA430, &qword_1BF9C6B40);
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_11_0();
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = OUTLINED_FUNCTION_17_17();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_1BF990FAC();
  OUTLINED_FUNCTION_32_1();
  sub_1BF9B5898();
  v25 = *v4;
  sub_1BF991000();
  OUTLINED_FUNCTION_12_15();
  sub_1BF9B5638();
  if (!v2)
  {
    v24 = *(v4 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA408, &unk_1BF9C6B10);
    OUTLINED_FUNCTION_7_19();
    sub_1BF991150(v16, v17);
    OUTLINED_FUNCTION_12_15();
    sub_1BF9B5638();
    v22 = v4[16];
    v23 = v4[17];
    sub_1BF9910A8();
    OUTLINED_FUNCTION_12_15();
    sub_1BF9B5638();
    v18 = *(type metadata accessor for SiriSuggestions.SystemDeviceState(0) + 28);
    sub_1BF9B4558();
    OUTLINED_FUNCTION_0_26();
    sub_1BF9209A0(v19, v20);
    OUTLINED_FUNCTION_12_15();
    sub_1BF9B5638();
  }

  return (*(v8 + 8))(v3, v6);
}

void SiriSuggestions.SystemDeviceState.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16)
{
  OUTLINED_FUNCTION_39();
  v18 = v17;
  v49 = v19;
  v20 = sub_1BF9B4558();
  v21 = OUTLINED_FUNCTION_1(v20);
  v48 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_17();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA440, &qword_1BF9C6B48);
  OUTLINED_FUNCTION_1(v28);
  v50 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_11_0();
  v33 = type metadata accessor for SiriSuggestions.SystemDeviceState(0);
  v34 = OUTLINED_FUNCTION_13(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_17();
  v39 = v38 - v37;
  v40 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  sub_1BF990FAC();
  OUTLINED_FUNCTION_32_1();
  sub_1BF9B5868();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    sub_1BF9910FC();
    sub_1BF9B5558();
    *v39 = a16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA408, &unk_1BF9C6B10);
    OUTLINED_FUNCTION_8_14();
    sub_1BF991150(v41, v42);
    sub_1BF9B5558();
    *(v39 + 8) = v51;
    sub_1BF99121C();
    sub_1BF9B5558();
    *(v39 + 16) = a12;
    *(v39 + 17) = a13;
    OUTLINED_FUNCTION_0_26();
    sub_1BF9209A0(v43, v44);
    sub_1BF9B5558();
    v45 = *(v50 + 8);
    v46 = OUTLINED_FUNCTION_17_17();
    v47(v46);
    (*(v48 + 32))(v39 + *(v33 + 28), v27, v20);
    sub_1BF99138C(v39, v49, type metadata accessor for SiriSuggestions.SystemDeviceState);
    __swift_destroy_boxed_opaque_existential_1(v18);
    sub_1BF9913EC(v39, type metadata accessor for SiriSuggestions.SystemDeviceState);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t SiriSuggestions.SiriRuntimeDeviceState.assistantId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void SiriSuggestions.SiriRuntimeDeviceState.networkConnectivity.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 33);
  OUTLINED_FUNCTION_24_11(a1);
}

uint64_t SiriSuggestions.SiriRuntimeDeviceState.siriLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState(0) + 36);
  v4 = sub_1BF9B4558();
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t SiriSuggestions.SiriRuntimeDeviceState.init(deviceLockState:deviceTypes:networkConnectivity:siriLocale:assistantId:responseMode:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  OUTLINED_FUNCTION_21_16(a1, a2, a3);
  v12 = *v11;
  *(a7 + 17) = v13;
  *(a7 + 24) = v14;
  *(a7 + 32) = v15;
  *(a7 + 33) = v16;
  v17 = *(type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState(0) + 36);
  v18 = sub_1BF9B4558();
  OUTLINED_FUNCTION_13(v18);
  result = (*(v19 + 32))(a7 + v17, a4);
  *a7 = a5;
  *(a7 + 8) = a6;
  *(a7 + 16) = v12;
  return result;
}

uint64_t SiriSuggestions.SiriRuntimeDeviceState.description.getter()
{
  v1 = sub_1BF9B47C8();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_17();
  v9 = v8 - v7;
  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0();
  }

  v10 = __swift_project_value_buffer(v1, qword_1EDBF5570);
  (*(v4 + 16))(v9, v10, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA428, &unk_1BF9C6B30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF9C6AF0;
  OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_22_10(v12, v13);
  v14 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA408, &unk_1BF9C6B10);
  *(inited + 48) = v14;
  OUTLINED_FUNCTION_11_17();
  *(inited + 72) = v16;
  *(inited + 80) = v15 & 0xFFFFFFFFFFFFLL | 0x6F4C000000000000;
  OUTLINED_FUNCTION_26_15();
  *(inited + 88) = v17;
  *(inited + 96) = *(v0 + 17);
  OUTLINED_FUNCTION_25_13();
  *(inited + 120) = v18;
  *(inited + 128) = v19;
  *(inited + 136) = v20;
  LOBYTE(v18) = *(v0 + 33);
  *(inited + 144) = *(v0 + 32);
  *(inited + 145) = v18;
  OUTLINED_FUNCTION_31_13();
  *(inited + 168) = v22;
  *(inited + 176) = v21;
  *(inited + 184) = 0xEA0000000000656CLL;
  v23 = *(type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState(0) + 36);
  v24 = sub_1BF9B4558();
  *(inited + 216) = v24;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((inited + 192));
  (*(*(v24 - 8) + 16))(boxed_opaque_existential_1Tm, v0 + v23, v24);
  *(inited + 224) = 0x6E61747369737361;
  *(inited + 232) = 0xEB00000000644974;
  v26 = v0[1];
  if (v26)
  {
    v27 = *v0;
    v28 = MEMORY[0x1E69E6158];
  }

  else
  {
    v27 = 0;
    v28 = 0;
    *(inited + 256) = 0;
  }

  *(inited + 240) = v27;
  *(inited + 248) = v26;
  *(inited + 264) = v28;
  strcpy((inited + 272), "responseMode");
  *(inited + 285) = 0;
  *(inited + 286) = -5120;
  v29 = *(v0 + 16);
  *(inited + 312) = &type metadata for SiriSuggestions.SiriRuntimeDeviceState.ResponseMode;
  *(inited + 288) = v29;

  sub_1BF951610(MEMORY[0x1E69E7CC0], inited, 120, v9, v30, v31, v32, v33, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  OUTLINED_FUNCTION_6_19();
  sub_1BF991690(v34, v35, &qword_1BF9B7FC0);
  v36 = sub_1BF9B4A78();
  v38 = v37;

  MEMORY[0x1BFB5DE90](v36, v38);

  (*(v4 + 8))(v9, v1);
  return 0;
}

uint64_t SiriSuggestions.SiriRuntimeDeviceState.ResponseMode.init(rawValue:)()
{
  OUTLINED_FUNCTION_20_18();
  v1 = sub_1BF9B5488();

  v3 = 5;
  if (v1 < 5)
  {
    v3 = v1;
  }

  *v0 = v3;
  return result;
}

uint64_t SiriSuggestions.SiriRuntimeDeviceState.ResponseMode.rawValue.getter()
{
  result = 0x4F79616C70736964;
  switch(*v0)
  {
    case 1:
      result = 0x4679616C70736964;
      break;
    case 2:
      result = 0x6C6E4F6563696F76;
      break;
    case 3:
      result = 0x726F466563696F76;
      break;
    case 4:
      result = OUTLINED_FUNCTION_5_2();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF98FD7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E61747369737361 && a2 == 0xEB00000000644974;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65736E6F70736572 && a2 == 0xEC00000065646F4DLL;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F4C656369766564 && a2 == 0xEF65746174536B63;
      if (v7 || (sub_1BF9B56D8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7954656369766564 && a2 == 0xEB00000000736570;
        if (v8 || (sub_1BF9B56D8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000001BF9CE170 == a2;
          if (v9 || (sub_1BF9B56D8() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x61636F4C69726973 && a2 == 0xEA0000000000656CLL)
          {

            return 5;
          }

          else
          {
            v11 = sub_1BF9B56D8();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1BF98FF88(char a1)
{
  result = 0x6E61747369737361;
  switch(a1)
  {
    case 1:
      result = 0x65736E6F70736572;
      break;
    case 2:
      result = 0x6F4C656369766564;
      break;
    case 3:
      result = 0x7954656369766564;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x61636F4C69726973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF99008C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return SiriSuggestions.SiriRuntimeDeviceState.ResponseMode.init(rawValue:)();
}

uint64_t sub_1BF990098@<X0>(uint64_t *a1@<X8>)
{
  result = SiriSuggestions.SiriRuntimeDeviceState.ResponseMode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1BF9900C0()
{
  result = qword_1EDBF3938;
  if (!qword_1EDBF3938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3938);
  }

  return result;
}

uint64_t sub_1BF9901C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BF9B57A8();
  a4(v8, v6);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF990218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF98FD7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF990240(uint64_t a1)
{
  v2 = sub_1BF991290();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF99027C(uint64_t a1)
{
  v2 = sub_1BF991290();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestions.SiriRuntimeDeviceState.encode(to:)(uint64_t a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA448, &qword_1BF9C6B50);
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_11_0();
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = OUTLINED_FUNCTION_17_17();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_1BF991290();
  OUTLINED_FUNCTION_32_1();
  sub_1BF9B5898();
  v16 = *v4;
  v17 = v4[1];
  OUTLINED_FUNCTION_12_15();
  sub_1BF9B55B8();
  if (!v2)
  {
    v24 = *(v4 + 16);
    sub_1BF9912E4();
    OUTLINED_FUNCTION_13_15();
    OUTLINED_FUNCTION_12_15();
    sub_1BF9B5638();
    v25 = *(v4 + 17);
    sub_1BF991000();
    OUTLINED_FUNCTION_13_15();
    OUTLINED_FUNCTION_12_15();
    sub_1BF9B5638();
    v26 = v4[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA408, &unk_1BF9C6B10);
    OUTLINED_FUNCTION_7_19();
    sub_1BF991150(v18, v19);
    OUTLINED_FUNCTION_13_15();
    OUTLINED_FUNCTION_12_15();
    sub_1BF9B5638();
    v27 = *(v4 + 32);
    v28 = *(v4 + 33);
    sub_1BF9910A8();
    OUTLINED_FUNCTION_13_15();
    OUTLINED_FUNCTION_12_15();
    sub_1BF9B5638();
    v20 = *(type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState(0) + 36);
    sub_1BF9B4558();
    OUTLINED_FUNCTION_0_26();
    sub_1BF9209A0(v21, v22);
    OUTLINED_FUNCTION_12_15();
    sub_1BF9B5638();
  }

  return (*(v8 + 8))(v3, v6);
}

void SiriSuggestions.SiriRuntimeDeviceState.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v34 = v3;
  v4 = sub_1BF9B4558();
  v5 = OUTLINED_FUNCTION_1(v4);
  v33 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA450, &qword_1BF9C6B58);
  OUTLINED_FUNCTION_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v15);
  v16 = type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState(0);
  v17 = OUTLINED_FUNCTION_13(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17();
  v35 = v21 - v20;
  v23 = v2[3];
  v22 = v2[4];
  v24 = OUTLINED_FUNCTION_17_17();
  __swift_project_boxed_opaque_existential_1(v24, v25);
  sub_1BF991290();
  sub_1BF9B5868();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v36) = 0;
    *v35 = sub_1BF9B54D8();
    *(v35 + 8) = v26;
    sub_1BF991338();
    OUTLINED_FUNCTION_15_21();
    *(v35 + 16) = 0;
    sub_1BF9910FC();
    OUTLINED_FUNCTION_15_21();
    *(v35 + 17) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA408, &unk_1BF9C6B10);
    OUTLINED_FUNCTION_8_14();
    sub_1BF991150(v27, v28);
    sub_1BF9B5558();
    *(v35 + 24) = v36;
    sub_1BF99121C();
    OUTLINED_FUNCTION_15_21();
    *(v35 + 32) = __PAIR16__(BYTE1(v36), 0);
    OUTLINED_FUNCTION_0_26();
    sub_1BF9209A0(v29, v30);
    sub_1BF9B5558();
    v31 = OUTLINED_FUNCTION_5_18();
    v32(v31);
    (*(v33 + 32))(v35 + *(v16 + 36), v11, v4);
    sub_1BF99138C(v35, v34, type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_1BF9913EC(v35, type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t SiriSuggestions.SiriRuntimeDeviceState.init(deviceLockState:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (qword_1EDBF2B30 != -1)
  {
    OUTLINED_FUNCTION_3_28();
  }

  v4 = word_1EDBF2B38;
  v5 = HIBYTE(word_1EDBF2B38);
  v6 = type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState(0);
  OUTLINED_FUNCTION_16_17(v6);
  result = sub_1BF9B4528();
  *(a2 + 17) = v3;
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  *(a2 + 32) = v4;
  *(a2 + 33) = v5;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 4;
  return result;
}

uint64_t SiriSuggestions.SiriRuntimeDeviceState.init(deviceLockState:deviceTypes:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  if (qword_1EDBF2B30 != -1)
  {
    OUTLINED_FUNCTION_3_28();
  }

  v6 = word_1EDBF2B38;
  v7 = HIBYTE(word_1EDBF2B38);
  v8 = type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState(0);
  OUTLINED_FUNCTION_16_17(v8);
  result = sub_1BF9B4528();
  *(a3 + 17) = v5;
  *(a3 + 24) = a2;
  *(a3 + 32) = v6;
  *(a3 + 33) = v7;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 4;
  return result;
}

uint64_t SiriSuggestions.SiriRuntimeDeviceState.init(deviceLockState:deviceTypes:networkConnectivity:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a3;
  v8 = a3[1];
  v9 = type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState(0);
  OUTLINED_FUNCTION_16_17(v9);
  result = sub_1BF9B4528();
  *(a4 + 17) = v6;
  *(a4 + 24) = a2;
  *(a4 + 32) = v7;
  *(a4 + 33) = v8;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 4;
  return result;
}

uint64_t SiriSuggestions.SiriRuntimeDeviceState.init(deviceLockState:deviceTypes:networkConnectivity:siriLocale:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  OUTLINED_FUNCTION_21_16(a1, a2, a3);
  *(a5 + 17) = v7;
  *(a5 + 24) = v8;
  *(a5 + 32) = v9;
  *(a5 + 33) = v10;
  v11 = *(type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState(0) + 36);
  v12 = sub_1BF9B4558();
  OUTLINED_FUNCTION_13(v12);
  result = (*(v13 + 32))(a5 + v11, a4);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 4;
  return result;
}

SiriSuggestionsKit::DeviceLockState_optional __swiftcall DeviceLockState.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_20_18();
  v2 = sub_1BF9B5488();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t DeviceLockState.rawValue.getter()
{
  if (*v0)
  {
    result = 0x64656B636F6C6E75;
  }

  else
  {
    result = 0x64656B636F6CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1BF990CD8@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceLockState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriSuggestionsKit::DeviceType_optional __swiftcall DeviceType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_20_18();
  v2 = sub_1BF9B5488();

  v4 = 9;
  if (v2 < 9)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1BF990E50@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1BF990F38()
{
  result = qword_1EDBF4820;
  if (!qword_1EDBF4820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4820);
  }

  return result;
}

unint64_t sub_1BF990FAC()
{
  result = qword_1EBDEA438;
  if (!qword_1EBDEA438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA438);
  }

  return result;
}

unint64_t sub_1BF991000()
{
  result = qword_1EDBF4328[0];
  if (!qword_1EDBF4328[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF4328);
  }

  return result;
}

unint64_t sub_1BF991054()
{
  result = qword_1EDBF44F0;
  if (!qword_1EDBF44F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF44F0);
  }

  return result;
}

unint64_t sub_1BF9910A8()
{
  result = qword_1EDBF4228[0];
  if (!qword_1EDBF4228[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF4228);
  }

  return result;
}

unint64_t sub_1BF9910FC()
{
  result = qword_1EDBF32E0;
  if (!qword_1EDBF32E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF32E0);
  }

  return result;
}

uint64_t sub_1BF991150(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDEA408, &unk_1BF9C6B10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BF9911C8()
{
  result = qword_1EDBF3930;
  if (!qword_1EDBF3930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3930);
  }

  return result;
}

unint64_t sub_1BF99121C()
{
  result = qword_1EDBF2B20;
  if (!qword_1EDBF2B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF2B20);
  }

  return result;
}

unint64_t sub_1BF991290()
{
  result = qword_1EDBF4B00;
  if (!qword_1EDBF4B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4B00);
  }

  return result;
}

unint64_t sub_1BF9912E4()
{
  result = qword_1EDBF45B8;
  if (!qword_1EDBF45B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF45B8);
  }

  return result;
}

unint64_t sub_1BF991338()
{
  result = qword_1EDBF3AB0;
  if (!qword_1EDBF3AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3AB0);
  }

  return result;
}

uint64_t sub_1BF99138C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_13(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BF9913EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BF991444(void *a1)
{
  a1[1] = sub_1BF9209A0(&qword_1EDBF39F0, type metadata accessor for SiriSuggestions.SystemDeviceState);
  a1[2] = sub_1BF9209A0(&qword_1EDBF39F8, type metadata accessor for SiriSuggestions.SystemDeviceState);
  result = sub_1BF9209A0(&qword_1EDBF3A00, type metadata accessor for SiriSuggestions.SystemDeviceState);
  a1[3] = result;
  return result;
}

unint64_t sub_1BF9914F4()
{
  result = qword_1EBDEA458;
  if (!qword_1EBDEA458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA458);
  }

  return result;
}

uint64_t sub_1BF991548(void *a1)
{
  a1[1] = sub_1BF9209A0(&qword_1EDBF4AD0, type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState);
  a1[2] = sub_1BF9209A0(&qword_1EDBF4AD8, type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState);
  result = sub_1BF9209A0(&qword_1EDBF4AE0, type metadata accessor for SiriSuggestions.SiriRuntimeDeviceState);
  a1[3] = result;
  return result;
}

unint64_t sub_1BF9915F8()
{
  result = qword_1EBDEA460;
  if (!qword_1EBDEA460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA460);
  }

  return result;
}

uint64_t sub_1BF991690(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkConnectivity(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkConnectivity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

void sub_1BF991A28()
{
  sub_1BF991C14(319, &qword_1EDBF4748, &type metadata for DeviceType, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1BF9B4558();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BF991B10()
{
  sub_1BF991C14(319, &qword_1EDBF4750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1BF991C14(319, &qword_1EDBF4748, &type metadata for DeviceType, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1BF9B4558();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BF991C14(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *_s22SiriRuntimeDeviceStateV12ResponseModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for DeviceType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s22SiriRuntimeDeviceStateV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s17SystemDeviceStateV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1BF991FE4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF9920C4()
{
  result = qword_1EBDEA478;
  if (!qword_1EBDEA478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA478);
  }

  return result;
}

unint64_t sub_1BF99211C()
{
  result = qword_1EBDEA480;
  if (!qword_1EBDEA480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA480);
  }

  return result;
}

unint64_t sub_1BF992174()
{
  result = qword_1EBDEA488;
  if (!qword_1EBDEA488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA488);
  }

  return result;
}

unint64_t sub_1BF9921CC()
{
  result = qword_1EDBF4AF0;
  if (!qword_1EDBF4AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4AF0);
  }

  return result;
}

unint64_t sub_1BF992224()
{
  result = qword_1EDBF4AF8;
  if (!qword_1EDBF4AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4AF8);
  }

  return result;
}

unint64_t sub_1BF99227C()
{
  result = qword_1EBDEA490;
  if (!qword_1EBDEA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA490);
  }

  return result;
}

unint64_t sub_1BF9922D4()
{
  result = qword_1EBDEA498;
  if (!qword_1EBDEA498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA498);
  }

  return result;
}

unint64_t sub_1BF99232C()
{
  result = qword_1EDBF4810;
  if (!qword_1EDBF4810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4810);
  }

  return result;
}

unint64_t sub_1BF992384()
{
  result = qword_1EDBF4818;
  if (!qword_1EDBF4818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4818);
  }

  return result;
}

unint64_t sub_1BF9923D8()
{
  result = qword_1EDBF52D0;
  if (!qword_1EDBF52D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF52D0);
  }

  return result;
}

unint64_t sub_1BF99242C()
{
  result = qword_1EDBF49B8;
  if (!qword_1EDBF49B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF49B8);
  }

  return result;
}

unint64_t sub_1BF992480()
{
  result = qword_1EDBF4AE8;
  if (!qword_1EDBF4AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4AE8);
  }

  return result;
}

unsigned __int8 *OUTLINED_FUNCTION_21_16(unsigned __int8 *result, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *result;
  v4 = *a3;
  v5 = a3[1];
  return result;
}

uint64_t sub_1BF992584(uint64_t *a1, uint64_t *a2)
{
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  return sub_1BF9B4B08();
}

uint64_t sub_1BF9925DC()
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_1BF9B4B08();
}

uint64_t UnionSignalExtractor.__allocating_init(extractors:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1BF9926CC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, unint64_t *a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v9 = a2();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  a5[3] = v9;
  a5[4] = sub_1BF993CC4(a3, v11, a4);
  *a5 = v10;
}

uint64_t UnionSignalExtractor.description.getter()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D90, &qword_1BF9C2B70);
  v3 = MEMORY[0x1BFB5E030](v1, v2);
  MEMORY[0x1BFB5DE90](v3);

  MEMORY[0x1BFB5DE90](93, 0xE100000000000000);
  return 0x5B6E6F696E55;
}

uint64_t UnionSignalExtractor.extract(interaction:environment:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_1BF99283C()
{
  v1 = *(v0 + 104);
  v2 = *(*(v0 + 112) + 16);
  sub_1BF8D2004(*(v0 + 96), v0 + 16);
  sub_1BF8D2004(v1, v0 + 56);
  v3 = swift_allocObject();
  *(v0 + 120) = v3;
  sub_1BF8C2C9C((v0 + 16), v3 + 16);
  sub_1BF8C2C9C((v0 + 56), v3 + 56);
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *v4 = v0;
  v4[1] = sub_1BF99295C;

  return sub_1BF8E958C(v2, 0, 0, 0, &unk_1BF9C74E0, v3);
}

void sub_1BF99295C(uint64_t a1)
{
  OUTLINED_FUNCTION_5_3();
  v5 = v4;
  v6 = *(v4 + 128);
  v7 = *v2;
  OUTLINED_FUNCTION_3();
  *v8 = v7;

  if (v1)
  {
  }

  else
  {
    v9 = *(v5 + 120);

    v10 = *(v7 + 8);

    v10(a1);
  }
}

uint64_t sub_1BF992A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BF992AB0, 0, 0);
}

uint64_t sub_1BF992AB0()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  OUTLINED_FUNCTION_19();
  v11 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1BF992BC8;
  v9 = v0[3];
  v8 = v0[4];

  return v11(v9, v8, v2, v3);
}

uint64_t sub_1BF992BC8()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  OUTLINED_FUNCTION_5_3();
  v4 = *(v3 + 40);
  v5 = *v0;
  OUTLINED_FUNCTION_3();
  *v6 = v5;

  OUTLINED_FUNCTION_4();

  return v7(v2);
}

uint64_t UnionSignalExtractor.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t UnionSignalExtractor.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1BF992D30(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF8D5C68;

  return UnionSignalExtractor.extract(interaction:environment:)(a1, a2);
}

uint64_t sub_1BF992DD8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF8D59E4;

  return sub_1BF982454();
}

void _s18SiriSuggestionsKit20UnionSignalExtractorC11signalTypesSayAA0E4Type_pGvg_0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x1E69E7CC0];
    for (i = v1 + 32; ; i += 40)
    {
      sub_1BF8D2004(i, v22);
      sub_1BF8D2004(v22, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D90, &qword_1BF9C2B70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8870, &unk_1BF9B7C10);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v20 = 0;
        memset(v19, 0, sizeof(v19));
      }

      sub_1BF9930E4(v19, &v17);
      if (v18)
      {
        sub_1BF8C2C9C(&v17, v14);
        v6 = v15;
        v5 = v16;
        __swift_project_boxed_opaque_existential_1(v14, v15);
        v7 = (*(v5 + 16))(v6, v5);
        __swift_destroy_boxed_opaque_existential_1(v14);
      }

      else
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      sub_1BF993154(v19);
      __swift_destroy_boxed_opaque_existential_1(v22);
      v8 = *(v7 + 16);
      v9 = *(v3 + 16);
      if (__OFADD__(v9, v8))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v9 + v8 > *(v3 + 24) >> 1)
      {
        sub_1BF8DE614();
        v3 = v10;
      }

      if (*(v7 + 16))
      {
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v8)
        {
          goto LABEL_23;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A48, &unk_1BF9B8540);
        swift_arrayInitWithCopy();

        if (v8)
        {
          v11 = *(v3 + 16);
          v12 = __OFADD__(v11, v8);
          v13 = v11 + v8;
          if (v12)
          {
            goto LABEL_24;
          }

          *(v3 + 16) = v13;
        }
      }

      else
      {

        if (v8)
        {
          goto LABEL_22;
        }
      }

      if (!--v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_1BF9930E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E30, &unk_1BF9C2CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF993154(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E30, &unk_1BF9C2CF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ChainedSignalExtractor.extract(interaction:environment:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return OUTLINED_FUNCTION_2();
}

void sub_1BF9931D4()
{
  v1 = *(v0[9] + 16);
  v0[10] = v1;
  v2 = *(v1 + 16);
  v0[11] = v2;
  v0[12] = 0;
  if (v2)
  {
    if (*(v1 + 16))
    {
      sub_1BF8D2004(v1 + 32, (v0 + 2));
      v3 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      OUTLINED_FUNCTION_19();
      v12 = v4 + *v4;
      v6 = *(v5 + 4);
      v7 = swift_task_alloc();
      v0[13] = v7;
      *v7 = v0;
      v8 = OUTLINED_FUNCTION_2_27(v7);

      v9(v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
    v11 = MEMORY[0x1E69E7CC0];

    v10(v11);
  }
}

uint64_t sub_1BF993324()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = v1;
  v3 = *(v1 + 104);
  v6 = *v0;
  *(v2 + 112) = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));

  return MEMORY[0x1EEE6DFA0](sub_1BF993424, 0, 0);
}

uint64_t sub_1BF993424()
{
  v1 = v0[14];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v3 = v0[14];
    }

    if (sub_1BF9B5448())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = v0[14];
LABEL_8:
    OUTLINED_FUNCTION_4();

    return v8();
  }

  v4 = v0[14];

  v6 = v0[11];
  v7 = v0[12] + 1;
  v0[12] = v7;
  if (v7 == v6)
  {
    goto LABEL_8;
  }

  v9 = v0[10];
  if (v7 >= *(v9 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_1BF8D2004(v9 + 40 * v7 + 32, (v0 + 2));
    v10 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    OUTLINED_FUNCTION_19();
    v17 = v11 + *v11;
    v13 = *(v12 + 4);
    v14 = swift_task_alloc();
    v0[13] = v14;
    *v14 = v0;
    v15 = OUTLINED_FUNCTION_2_27();

    return v16(v15);
  }

  return result;
}

uint64_t sub_1BF9935BC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF8D5C68;

  return ChainedSignalExtractor.extract(interaction:environment:)(a1, a2);
}

uint64_t sub_1BF993698()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BF8D5B7C;

  return sub_1BF992A8C(v3, v0 + 16, v0 + 56);
}

uint64_t sub_1BF993730(uint64_t a1, uint64_t a2)
{
  result = sub_1BF993CC4(&qword_1EDBF27C8, a2, type metadata accessor for UnionSignalExtractor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF993788(uint64_t a1, uint64_t a2)
{
  result = sub_1BF993CC4(qword_1EDBF27D8, a2, type metadata accessor for UnionSignalExtractor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF9937E0(uint64_t a1, uint64_t a2)
{
  result = sub_1BF993CC4(&qword_1EDBF23D0, a2, type metadata accessor for ChainedSignalExtractor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF993838(uint64_t a1, uint64_t a2)
{
  result = sub_1BF993CC4(qword_1EDBF23E0, a2, type metadata accessor for ChainedSignalExtractor);
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of SignalExtractor.extract(interaction:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1BF8D59E4;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PlatformSignalExtractorProvider.get(interaction:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1BF8F0EF8;

  return v15(a1, a2, a3, a4, a5);
}

_BYTE *storeEnumTagSinglePayload for SignalExtractors(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BF993C68(uint64_t a1)
{
  result = sub_1BF993CC4(&qword_1EBDEA4A8, 255, type metadata accessor for NoOpSignalExtractor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF993CC4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void static CodableWrapper.decode<A, B>(forType:forKey:container:)()
{
  OUTLINED_FUNCTION_39();
  v72 = v2;
  v73 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v67 = v10;
  v68 = v9;
  v11 = sub_1BF9B50F8();
  v69 = OUTLINED_FUNCTION_1(v11);
  v70 = v12;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v69);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v63 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89A0, &unk_1BF9B9720);
  OUTLINED_FUNCTION_1(v20);
  v71 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_68_4();
  sub_1BF9B5588();
  sub_1BF8BF518();
  v25 = v73;
  sub_1BF9B54A8();
  if (!v25)
  {
    v65 = v17;
    v66 = v4;
    v72 = v8;
    v73 = v6;
    v26 = v70;
    sub_1BF8DF378();
    sub_1BF9B5558();
    v64 = v20;
    v27 = dynamic_cast_existential_1_conditional(v74);
    if (v27)
    {
      v73 = v28;
      OUTLINED_FUNCTION_11(v27);
      v30 = *(v29 + 64);
      MEMORY[0x1EEE9AC00](v31);
      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_61_6();
      sub_1BF9B54C8();
      sub_1BF9B4F68();
      v73 = v1;
      v45 = v19;
      v46 = v68;
      v47 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v19, v47 ^ 1u, 1, v46);
      v48 = v65;
      v49 = v69;
      (*(v26 + 16))(v65, v45, v69);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v48, 1, v46);
      v51 = v71;
      if (EnumTagSinglePayload == 1)
      {
        v52 = *(v26 + 8);
        v52(v48, v49);
        type metadata accessor for CodingErrors();
        OUTLINED_FUNCTION_1_27();
        sub_1BF8C3530(v53, v54);
        OUTLINED_FUNCTION_67_2();
        v56 = v55;
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
        __swift_storeEnumTagSinglePayload(v56, 1, 1, v57);
        swift_willThrow();
        (*(v51 + 8))(v73, v64);
        v58 = OUTLINED_FUNCTION_50_6();
        (v52)(v58);
      }

      else
      {
        (*(v71 + 8))(v73, v64);
        OUTLINED_FUNCTION_24_1();
        (*(v59 + 32))(v67, v48, v46);
        v60 = *(v26 + 8);
        v61 = OUTLINED_FUNCTION_50_6();
        v62(v61);
      }
    }

    else
    {
      type metadata accessor for CodingErrors();
      OUTLINED_FUNCTION_1_27();
      sub_1BF8C3530(v32, v33);
      OUTLINED_FUNCTION_67_2();
      v35 = v34;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
      v37 = v1;
      v38 = *(v36 + 48);
      v39 = v73;
      v40 = v66;
      v35[3] = v73;
      v35[4] = v40;
      __swift_allocate_boxed_opaque_existential_1Tm(v35);
      OUTLINED_FUNCTION_11(v39);
      (*(v41 + 16))();
      sub_1BF9B4638();
      OUTLINED_FUNCTION_38();
      __swift_storeEnumTagSinglePayload(v42, v43, v44, v36);
      swift_willThrow();
      (*(v71 + 8))(v37, v64);
    }
  }

  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_37();
}

uint64_t type metadata accessor for CodingErrors()
{
  result = qword_1EDBF4CB8;
  if (!qword_1EDBF4CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static CodableWrapper.encode<A>(to:forKey:instance:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89D0, &qword_1BF9B84D0);
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_10_19();
  sub_1BF9B5648();
  sub_1BF8BF518();
  OUTLINED_FUNCTION_12_18();
  v10 = v3[3];
  __swift_project_boxed_opaque_existential_1(v3, v10);
  v15 = v10;
  __swift_allocate_boxed_opaque_existential_1Tm(v14);
  OUTLINED_FUNCTION_24_1();
  (*(v11 + 16))();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v14);
  v14[0] = DynamicType;
  sub_1BF8C328C();
  sub_1BF9B5638();
  if (!v0)
  {
    v13 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_1BF9B55A8();
    sub_1BF9B4A28();
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_37();
}

void static CodableWrapper.decodeOptional<A, B>(forType:forKey:container:)()
{
  OUTLINED_FUNCTION_39();
  v84 = v1;
  v85 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v80 = v9;
  v81 = v8;
  v83 = sub_1BF9B50F8();
  v10 = OUTLINED_FUNCTION_1(v83);
  v79 = v11;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v75 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89A0, &unk_1BF9B9720);
  OUTLINED_FUNCTION_1(v19);
  v82 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_10_19();
  sub_1BF9B5588();
  sub_1BF8BF518();
  v24 = v85;
  sub_1BF9B54A8();
  if (!v24)
  {
    v77 = v3;
    v78 = v7;
    v84 = v5;
    v85 = 0;
    v75 = v16;
    v76 = v18;
    v25 = v83;
    LOBYTE(v86) = 1;
    if ((sub_1BF9B5578() & 1) == 0)
    {
      v29 = OUTLINED_FUNCTION_1_12();
      v30(v29);
      __swift_storeEnumTagSinglePayload(v80, 1, 1, v81);
      goto LABEL_6;
    }

    sub_1BF8DF378();
    v26 = v85;
    sub_1BF9B5558();
    if (v26)
    {
      goto LABEL_4;
    }

    v31 = dynamic_cast_existential_1_conditional(v86);
    if (!v31)
    {
      type metadata accessor for CodingErrors();
      OUTLINED_FUNCTION_1_27();
      sub_1BF8C3530(v36, v37);
      OUTLINED_FUNCTION_67_2();
      v39 = v38;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
      v41 = *(v40 + 48);
      v42 = v84;
      v43 = v77;
      v39[3] = v84;
      v39[4] = v43;
      __swift_allocate_boxed_opaque_existential_1Tm(v39);
      OUTLINED_FUNCTION_11(v42);
      (*(v44 + 16))();
      sub_1BF9B4638();
      OUTLINED_FUNCTION_38();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v40);
      swift_willThrow();
LABEL_4:
      v27 = OUTLINED_FUNCTION_1_12();
      v28(v27);
      goto LABEL_6;
    }

    v85 = v32;
    OUTLINED_FUNCTION_11(v31);
    v34 = *(v33 + 64);
    MEMORY[0x1EEE9AC00](v35);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_61_6();
    sub_1BF9B54C8();
    sub_1BF9B4F68();
    v85 = 0;
    v48 = v76;
    v49 = v81;
    v50 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v48, v50 ^ 1u, 1, v49);
    v51 = v79;
    v52 = v25;
    v53 = v75;
    (*(v79 + 16))();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v49);
    if (EnumTagSinglePayload == 1)
    {
      v55 = *(v51 + 8);
      v55(v53, v52);
      type metadata accessor for CodingErrors();
      OUTLINED_FUNCTION_1_27();
      sub_1BF8C3530(v56, v57);
      OUTLINED_FUNCTION_67_2();
      v59 = v58;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
      __swift_storeEnumTagSinglePayload(v59, 1, 1, v60);
      swift_willThrow();
      v61 = OUTLINED_FUNCTION_1_12();
      v62(v61);
      v63 = OUTLINED_FUNCTION_50_6();
      (v55)(v63);
    }

    else
    {
      v64 = OUTLINED_FUNCTION_1_12();
      v65(v64);
      OUTLINED_FUNCTION_24_1();
      v67 = *(v66 + 32);
      OUTLINED_FUNCTION_35_10();
      v68();
      OUTLINED_FUNCTION_38();
      __swift_storeEnumTagSinglePayload(v69, v70, v71, v49);
      v72 = *(v51 + 8);
      v73 = OUTLINED_FUNCTION_50_6();
      v74(v73);
    }
  }

LABEL_6:
  OUTLINED_FUNCTION_31_14();
  OUTLINED_FUNCTION_37();
}

void static CodableWrapper.encodeOptional<A>(to:forKey:instance:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89D0, &qword_1BF9B84D0);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_38_8();
  sub_1BF9B5648();
  sub_1BF8BF518();
  OUTLINED_FUNCTION_12_18();
  sub_1BF998494(v2, &v16, &qword_1EBDE8AB8, &qword_1BF9B85C0);
  if (v17)
  {
    sub_1BF8C2C9C(&v16, v18);
    v7 = v19;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v17 = v7;
    __swift_allocate_boxed_opaque_existential_1Tm(&v16);
    OUTLINED_FUNCTION_24_1();
    v9 = *(v8 + 16);
    OUTLINED_FUNCTION_35_10();
    v10();
    __swift_project_boxed_opaque_existential_1(&v16, v17);
    DynamicType = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(&v16);
    *&v16 = DynamicType;
    sub_1BF8C328C();
    sub_1BF9B5638();
    if (!v0)
    {
      __swift_project_boxed_opaque_existential_1(v18, v19);
      sub_1BF9B55A8();
      sub_1BF9B4A28();
      __swift_destroy_boxed_opaque_existential_1(&v16);
    }

    v12 = OUTLINED_FUNCTION_22_11();
    v13(v12);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_22_11();
    v15(v14);
    sub_1BF8E8118(&v16, &qword_1EBDE8AB8, &qword_1BF9B85C0);
  }

  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_37();
}

void static CodableWrapper.decodeDictionary<A, B>(forType:forKey:container:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v25 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95A8, &unk_1BF9C7770);
  OUTLINED_FUNCTION_1(v6);
  v26 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v22 - v11;
  OUTLINED_FUNCTION_38_8();
  sub_1BF9B5588();
  sub_1BF919B68();
  v33 = v12;
  sub_1BF9B54A8();
  if (!v0)
  {
    v24 = v4;
    v13 = v25;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
    LOBYTE(v32) = 0;
    OUTLINED_FUNCTION_10_1(&qword_1EDBF0578);
    OUTLINED_FUNCTION_65_6();
    sub_1BF9B5558();
    v23 = v6;
    v15 = v27;
    LOBYTE(v27) = 1;
    static CodableWrapper.decodeArray<A, B>(forType:forKey:container:)();
    v27 = v15;
    *&v31 = v16;
    OUTLINED_FUNCTION_38_8();
    v17 = sub_1BF9B4E08();
    v18 = sub_1BF997328();
    OUTLINED_FUNCTION_2_1();
    v22[1] = v19;
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_63_4();
    sub_1BF9B5738();

    v31 = v32;
    swift_getTupleTypeMetadata2();
    v27 = v14;
    v28 = v17;
    v29 = v18;
    v30 = WitnessTable;
    sub_1BF9B52B8();
    OUTLINED_FUNCTION_16_18();
    swift_getWitnessTable();
    v27 = sub_1BF9B4E18();
    MEMORY[0x1EEE9AC00](v27);
    v21 = v24;
    v22[-4] = v13;
    v22[-3] = v21;
    v22[-2] = v2;
    sub_1BF9B4E08();
    swift_getWitnessTable();
    sub_1BF9B49E8();
    (*(v26 + 8))(v33, v23);
  }

  OUTLINED_FUNCTION_37();
}

void static CodableWrapper.encodeDictionary<A>(to:forKey:instance:)()
{
  OUTLINED_FUNCTION_39();
  v47 = v0;
  v2 = v1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9588, &unk_1BF9C7780);
  OUTLINED_FUNCTION_1(v50);
  v49 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47 - v7;
  OUTLINED_FUNCTION_35_10();
  sub_1BF9B5648();
  sub_1BF919B68();
  v48 = v8;
  OUTLINED_FUNCTION_12_18();
  v9 = *(v2 + 16);
  OUTLINED_FUNCTION_70_3();
  sub_1BF8DD6D4();
  v11 = v10;
  v12 = *(v2 + 16);
  OUTLINED_FUNCTION_70_3();
  sub_1BF8DD618();
  v14 = v13;
  v16 = v2 + 64;
  v15 = *(v2 + 64);
  v17 = *(v2 + 32);
  OUTLINED_FUNCTION_1_2();
  v20 = v19 & v18;
  v22 = (v21 + 63) >> 6;
  v51 = v2;

  v23 = 0;
  if (!v20)
  {
    goto LABEL_3;
  }

  do
  {
    v59 = v14;
LABEL_7:
    OUTLINED_FUNCTION_67_5();
    v26 = *v25;
    v27 = v25[1];
    sub_1BF8D2004(v29 + 40 * v28, v58);
    v56[0] = v26;
    v56[1] = v27;
    sub_1BF8C2C9C(v58, v57);
    v30 = OUTLINED_FUNCTION_30_4();
    sub_1BF998494(v30, v31, &qword_1EBDE95A0, &qword_1BF9BEF98);
    v32 = v54;
    v52 = v53;
    v33 = v11;
    v34 = *(v11 + 16);
    v35 = v33;
    v36 = *(v33 + 24);

    if (v34 >= v36 >> 1)
    {
      sub_1BF8DD6D4();
      v35 = v41;
    }

    *(v35 + 16) = v34 + 1;
    v37 = v35 + 16 * v34;
    v11 = v35;
    *(v37 + 32) = v52;
    *(v37 + 40) = v32;
    __swift_destroy_boxed_opaque_existential_1(&v55);
    v38 = OUTLINED_FUNCTION_30_4();
    sub_1BF998494(v38, v39, &qword_1EBDE95A0, &qword_1BF9BEF98);

    v14 = v59;
    v40 = *(v59 + 16);
    if (v40 >= *(v59 + 24) >> 1)
    {
      sub_1BF8DD618();
      v14 = v42;
    }

    v20 &= v20 - 1;
    sub_1BF8E8118(v56, &qword_1EBDE95A0, &qword_1BF9BEF98);
    *(v14 + 16) = v40 + 1;
    sub_1BF8C2C9C(&v55, v14 + 40 * v40 + 32);
  }

  while (v20);
  while (1)
  {
LABEL_3:
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      return;
    }

    if (v24 >= v22)
    {
      break;
    }

    v20 = *(v16 + 8 * v24);
    ++v23;
    if (v20)
    {
      v59 = v14;
      v23 = v24;
      goto LABEL_7;
    }
  }

  v57[5] = v11;
  LOBYTE(v56[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  OUTLINED_FUNCTION_11_10(&qword_1EDBF4B20);
  OUTLINED_FUNCTION_66_4();
  v44 = *(v43 - 256);
  v45 = v48;
  v46 = v47;
  sub_1BF9B5638();

  if (!v46)
  {
    sub_1BF995FDC();
  }

  (*(v49 + 8))(v45, v44);

  OUTLINED_FUNCTION_31_14();
  OUTLINED_FUNCTION_37();
}

void static CodableWrapper.decodeDictionaryWithOptionals<A, B>(forType:forKey:container:)()
{
  OUTLINED_FUNCTION_39();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95A8, &unk_1BF9C7770);
  OUTLINED_FUNCTION_1(v2);
  v8 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10_19();
  sub_1BF9B5588();
  sub_1BF919B68();
  sub_1BF9B54A8();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
    OUTLINED_FUNCTION_10_1(&qword_1EDBF0578);
    OUTLINED_FUNCTION_65_6();
    sub_1BF9B5558();
    static CodableWrapper.decodeArrayWithOptionals<A, B>(forType:forKey:container:)();
    sub_1BF9B50F8();
    sub_1BF9B4E08();
    sub_1BF997328();
    OUTLINED_FUNCTION_2_1();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_63_4();
    sub_1BF9B5738();

    swift_getTupleTypeMetadata2();
    sub_1BF9B52B8();
    OUTLINED_FUNCTION_16_18();
    swift_getWitnessTable();
    v7 = sub_1BF9B4E18();
    MEMORY[0x1EEE9AC00](v7);
    sub_1BF9B4E08();
    swift_getWitnessTable();
    sub_1BF9B49E8();
    (*(v8 + 8))(v1, v2);
  }

  OUTLINED_FUNCTION_37();
}

void static CodableWrapper.encodeDictionaryWithOptionals<A>(to:forKey:instance:)()
{
  OUTLINED_FUNCTION_39();
  v43 = v0;
  v3 = v2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9588, &unk_1BF9C7780);
  OUTLINED_FUNCTION_1(v46);
  v45 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_10_19();
  sub_1BF9B5648();
  sub_1BF919B68();
  v44 = v1;
  sub_1BF9B5598();
  v8 = *(v3 + 16);
  OUTLINED_FUNCTION_70_3();
  sub_1BF8DD6D4();
  v59 = v9;
  v10 = *(v3 + 16);
  OUTLINED_FUNCTION_70_3();
  sub_1BF8DD788();
  v12 = v11;
  v14 = v3 + 64;
  v13 = *(v3 + 64);
  v15 = *(v3 + 32);
  OUTLINED_FUNCTION_1_2();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;

  v21 = 0;
  if (!v18)
  {
    goto LABEL_3;
  }

  do
  {
    v47 = v12;
LABEL_7:
    OUTLINED_FUNCTION_67_5();
    v24 = *v23;
    v25 = v23[1];
    sub_1BF998494(v27 + 40 * v26, v57, &qword_1EBDE8AB8, &qword_1BF9B85C0);
    v52[0] = v24;
    v52[1] = v25;
    v53 = v57[0];
    v54 = v57[1];
    v55 = v58;
    v28 = OUTLINED_FUNCTION_30_4();
    sub_1BF998494(v28, v29, &qword_1EBDEA248, &qword_1BF9C7790);
    v31 = *(v59 + 16);
    v30 = *(v59 + 24);

    if (v31 >= v30 >> 1)
    {
      sub_1BF8DD6D4();
      v59 = v39;
    }

    *(v59 + 16) = v31 + 1;
    v32 = v59 + 16 * v31;
    *(v32 + 32) = v48;
    *(v32 + 40) = v49;
    sub_1BF8E8118(v50, &qword_1EBDE8AB8, &qword_1BF9B85C0);
    v33 = OUTLINED_FUNCTION_30_4();
    sub_1BF998494(v33, v34, &qword_1EBDEA248, &qword_1BF9C7790);

    v12 = v47;
    v35 = *(v47 + 16);
    if (v35 >= *(v47 + 24) >> 1)
    {
      sub_1BF8DD788();
      v12 = v40;
    }

    v18 &= v18 - 1;
    sub_1BF8E8118(v52, &qword_1EBDEA248, &qword_1BF9C7790);
    *(v12 + 16) = v35 + 1;
    v36 = v12 + 40 * v35;
    v37 = v51;
    v38 = v50[1];
    *(v36 + 32) = v50[0];
    *(v36 + 48) = v38;
    *(v36 + 64) = v37;
  }

  while (v18);
  while (1)
  {
LABEL_3:
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      return;
    }

    if (v22 >= v20)
    {
      break;
    }

    v18 = *(v14 + 8 * v22);
    ++v21;
    if (v18)
    {
      v47 = v12;
      v21 = v22;
      goto LABEL_7;
    }
  }

  v56 = v59;
  LOBYTE(v52[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  OUTLINED_FUNCTION_11_10(&qword_1EDBF4B20);
  OUTLINED_FUNCTION_66_4();
  v42 = *(v41 - 256);
  sub_1BF9B5638();

  if (!v43)
  {
    sub_1BF996908();
  }

  (*(v45 + 8))(v44, v42);

  OUTLINED_FUNCTION_31_14();
  OUTLINED_FUNCTION_37();
}

void static CodableWrapper.decodeArray<A, B>(forType:forKey:container:)()
{
  OUTLINED_FUNCTION_39();
  v82 = v0;
  v3 = v2;
  v5 = v4;
  v73 = v6;
  v7 = sub_1BF9B50F8();
  OUTLINED_FUNCTION_1(v7);
  v83 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v67[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89F0, &unk_1BF9C66D0);
  OUTLINED_FUNCTION_1(v14);
  v72 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_68_4();
  v19 = sub_1BF9B5588();
  sub_1BF8DF500();
  OUTLINED_FUNCTION_53_8();
  v20 = v82;
  sub_1BF9B54A8();
  if (v20)
  {
LABEL_77:
    OUTLINED_FUNCTION_37();
    return;
  }

  v80 = v13;
  v81 = v5;
  v70 = v14;
  v71 = v7;
  v21 = sub_1BF9B5568();
  v22 = v73;
  v23 = sub_1BF996C14(*(v21 + 16), v73);
  v24 = v21;
  v87 = v23;
  v25 = *(v21 + 16);
  v26 = v22;
  v82 = v1;
  v79 = v25;
  if (!v25)
  {

    v22 = v81;
LABEL_76:
    v84[0] = v23;
    MEMORY[0x1EEE9AC00](v64);
    *&v67[-32] = v26;
    *&v67[-24] = v22;
    *&v67[-16] = v65;
    sub_1BF9B4E08();

    OUTLINED_FUNCTION_2_1();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_48_7();

    OUTLINED_FUNCTION_62_7();
    v66(v82, v70);

    goto LABEL_77;
  }

  v27 = 0;
  v77 = v24;
  v78 = v24 + 32;
  v74 = v84 + 1;
  v75 = v83 + 40;
  v69 = v3;
  v28 = v71;
  v76 = v19;
  while (v27 < *(v24 + 16))
  {
    OUTLINED_FUNCTION_55_8();
    if (!v31)
    {
      goto LABEL_79;
    }

    v32 = *(v30 + 16);
    v33 = *(v30 + 24);
    if ((v22 & 0x1000000000000000) == 0)
    {
      if ((v22 & 0x2000000000000000) != 0)
      {
        OUTLINED_FUNCTION_69_3();
        if (v37)
        {
          if (!v41)
          {
            goto LABEL_84;
          }

          if (v41 != 1)
          {
            while (1)
            {
              OUTLINED_FUNCTION_3_27();
              if (!v37 & v36)
              {
                break;
              }

              OUTLINED_FUNCTION_2_28();
              if (!v37 || __OFADD__(v48, v47))
              {
                break;
              }

              OUTLINED_FUNCTION_10_2();
              if (v37)
              {
                goto LABEL_69;
              }
            }
          }
        }

        else if (v42 == 45)
        {
          if (!v41)
          {
            goto LABEL_83;
          }

          if (v41 != 1)
          {
            while (1)
            {
              OUTLINED_FUNCTION_3_27();
              if (!v37 & v36)
              {
                break;
              }

              OUTLINED_FUNCTION_2_28();
              if (!v37 || __OFSUB__(v44, v43))
              {
                break;
              }

              OUTLINED_FUNCTION_10_2();
              if (v37)
              {
                goto LABEL_69;
              }
            }
          }
        }

        else if (v41)
        {
          while (1)
          {
            OUTLINED_FUNCTION_3_27();
            if (!v37 & v36)
            {
              break;
            }

            OUTLINED_FUNCTION_2_28();
            if (!v37 || __OFADD__(v54, v53))
            {
              break;
            }

            OUTLINED_FUNCTION_10_2();
            if (v37)
            {
              goto LABEL_69;
            }
          }
        }
      }

      else
      {
        if ((v23 & 0x1000000000000000) != 0)
        {
          v34 = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          OUTLINED_FUNCTION_36_6();
          v34 = sub_1BF9B5318();
        }

        v35 = *v34;
        if (v35 == 43)
        {
          if (v29 < 1)
          {
            goto LABEL_82;
          }

          if (v29 != 1)
          {
            if (!v34)
            {
              goto LABEL_59;
            }

            while (1)
            {
              OUTLINED_FUNCTION_3_27();
              if (!v37 & v36)
              {
                break;
              }

              OUTLINED_FUNCTION_2_28();
              if (!v37 || __OFADD__(v46, v45))
              {
                break;
              }

              OUTLINED_FUNCTION_10_2();
              if (v37)
              {
                goto LABEL_69;
              }
            }
          }
        }

        else if (v35 == 45)
        {
          if (v29 < 1)
          {
            goto LABEL_81;
          }

          if (v29 != 1)
          {
            if (v34)
            {
              while (1)
              {
                OUTLINED_FUNCTION_3_27();
                if (!v37 & v36)
                {
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_2_28();
                if (!v37 || __OFSUB__(v39, v38))
                {
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_10_2();
                if (v37)
                {
                  goto LABEL_69;
                }
              }
            }

LABEL_59:
            v40 = 0;
LABEL_69:
            v86 = v40;
            v55 = v40;

            if (v55)
            {
              goto LABEL_80;
            }

            goto LABEL_70;
          }
        }

        else
        {
          if (!v29)
          {
            goto LABEL_68;
          }

          if (!v34)
          {
            goto LABEL_59;
          }

          while (*v34 - 48 <= 9)
          {
            OUTLINED_FUNCTION_52_7();
            if (!v37 || __OFADD__(v52, v51))
            {
              break;
            }

            v34 = (v49 + 1);
            if (v50 == 1)
            {
              goto LABEL_59;
            }
          }
        }
      }

LABEL_68:
      v40 = 1;
      goto LABEL_69;
    }

    swift_bridgeObjectRetain_n();
    v61 = OUTLINED_FUNCTION_36_6();
    sub_1BF99854C(v61, v62, 10);
    v68 = v63;

    if (v68)
    {
      goto LABEL_80;
    }

LABEL_70:
    v84[0] = v23;
    v84[1] = v22;
    v84[2] = v32;
    v85 = v33;
    v23 = v80;
    static CodableWrapper.decode<A, B>(forType:forKey:container:)();
    ++v27;

    OUTLINED_FUNCTION_38();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v26);
    OUTLINED_FUNCTION_38_8();
    sub_1BF9B4E08();
    sub_1BF9B4D68();
    OUTLINED_FUNCTION_73_3();
    v59 = OUTLINED_FUNCTION_30_11();
    v60(v59, v23, v28);
    v22 = v81;
    v24 = v77;
    if (v27 == v79)
    {

      v23 = v87;
      goto LABEL_76;
    }
  }

  __break(1u);
LABEL_79:

LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
}

void sub_1BF995FDC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_25_14();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A50, &unk_1BF9B9710);
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_39_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9588, &unk_1BF9C7780);
  sub_1BF8DF500();
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_60_5();
  while (1)
  {
    v7.n128_f64[0] = OUTLINED_FUNCTION_42_11();
    if (v10)
    {
      goto LABEL_6;
    }

    if (v5)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_57_9(v6);
    v9 = v17[0];
    v8 = v17[1];
    v7 = v17[2];
LABEL_6:
    OUTLINED_FUNCTION_46_6(v7, v8, v9);
    if (!v14)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_72_4(v11, v12, v13);
    sub_1BF9B51B8();
    OUTLINED_FUNCTION_7_20();
    if (v0)
    {

      __swift_destroy_boxed_opaque_existential_1(v17);
LABEL_10:
      v15 = OUTLINED_FUNCTION_19_5();
      v16(v15);
      OUTLINED_FUNCTION_23_17();
      OUTLINED_FUNCTION_37();
      return;
    }

    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_1BF99614C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_25_14();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A50, &unk_1BF9B9710);
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_39_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8DB8, &unk_1BF9C81C0);
  sub_1BF8DF500();
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_60_5();
  while (1)
  {
    v7.n128_f64[0] = OUTLINED_FUNCTION_42_11();
    if (v10)
    {
      goto LABEL_6;
    }

    if (v5)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_57_9(v6);
    v9 = v17[0];
    v8 = v17[1];
    v7 = v17[2];
LABEL_6:
    OUTLINED_FUNCTION_46_6(v7, v8, v9);
    if (!v14)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_72_4(v11, v12, v13);
    sub_1BF9B51B8();
    OUTLINED_FUNCTION_7_20();
    if (v0)
    {

      __swift_destroy_boxed_opaque_existential_1(v17);
LABEL_10:
      v15 = OUTLINED_FUNCTION_19_5();
      v16(v15);
      OUTLINED_FUNCTION_23_17();
      OUTLINED_FUNCTION_37();
      return;
    }

    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void static CodableWrapper.encodeArray<A>(to:forKey:instance:)()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_34_10();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A50, &unk_1BF9B9710);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_35_10();
  sub_1BF9B5648();
  sub_1BF8DF500();
  OUTLINED_FUNCTION_12_18();
  v6 = *(v1 + 16);
  while (1)
  {
    v9.n128_f64[0] = OUTLINED_FUNCTION_42_11();
    if (v12)
    {
      goto LABEL_6;
    }

    if (v7)
    {
      break;
    }

    if (__OFADD__(v8, 1))
    {
      goto LABEL_12;
    }

    *&v16[0] = v8;
    sub_1BF8D2004(v1 + 32 + 40 * v8, v16 + 8);
    v11 = v16[0];
    v10 = v16[1];
    v9 = v16[2];
LABEL_6:
    OUTLINED_FUNCTION_46_6(v9, v10, v11);
    if (!v13)
    {
      goto LABEL_10;
    }

    sub_1BF8C2C9C(&v17, v16);
    sub_1BF998A84();
    sub_1BF9B51B8();
    OUTLINED_FUNCTION_7_20();
    if (v0)
    {

      __swift_destroy_boxed_opaque_existential_1(v16);
LABEL_10:
      v14 = OUTLINED_FUNCTION_19_5();
      v15(v14);
      OUTLINED_FUNCTION_23_17();
      OUTLINED_FUNCTION_37();
      return;
    }

    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t sub_1BF996458(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_70() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E656D656C65 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_59_9();
    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BF996504(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1937335659 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_70() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_59_9();
    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BF9965A8(char a1)
{
  if (a1)
  {
    return 0x7365756C6176;
  }

  else
  {
    return 1937335659;
  }
}

uint64_t sub_1BF9965EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF996458(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF996614(uint64_t a1)
{
  v2 = sub_1BF8BF518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF996650(uint64_t a1)
{
  v2 = sub_1BF8BF518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF9966A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BF9B57A8();
  a4(v8, v6);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF9966F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF996504(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF996720(uint64_t a1)
{
  v2 = sub_1BF919B68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF99675C(uint64_t a1)
{
  v2 = sub_1BF919B68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF9967F0()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void sub_1BF996820(uint64_t a1@<X8>)
{
  sub_1BF996798();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

uint64_t sub_1BF996854()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_1BF996860@<X0>(uint64_t a1@<X8>)
{
  result = sub_1BF9967A4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_1BF996890(uint64_t a1)
{
  v2 = sub_1BF8DF500();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9968CC(uint64_t a1)
{
  v2 = sub_1BF8DF500();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1BF996908()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_25_14();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A50, &unk_1BF9B9710);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_39_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9588, &unk_1BF9C7780);
  sub_1BF8DF500();
  OUTLINED_FUNCTION_24_12();
  v6 = 0;
  v7 = *(v1 + 16);
  for (i = v1 + 32; v7 != v6; i += 40)
  {
    OUTLINED_FUNCTION_47_7();
    if (v12.n128_u64[0] == 1)
    {
      break;
    }

    OUTLINED_FUNCTION_40_5(v12);
    sub_1BF998A84();
    sub_1BF9B51B8();
    OUTLINED_FUNCTION_29_8();
    if (v0)
    {

      sub_1BF8E8118(v11, &qword_1EBDE8AB8, &qword_1BF9B85C0);
      break;
    }

    sub_1BF8E8118(v11, &qword_1EBDE8AB8, &qword_1BF9B85C0);

    ++v6;
  }

  v9 = OUTLINED_FUNCTION_19_5();
  v10(v9);
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_37();
}

void static CodableWrapper.encodeArrayWithOptional<A>(to:forKey:instance:)()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_34_10();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A50, &unk_1BF9B9710);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_35_10();
  sub_1BF9B5648();
  sub_1BF8DF500();
  OUTLINED_FUNCTION_12_18();
  v6 = 0;
  v7 = *(v1 + 16);
  for (i = v1 + 32; v7 != v6; i += 40)
  {
    OUTLINED_FUNCTION_47_7();
    if (v12.n128_u64[0] == 1)
    {
      break;
    }

    OUTLINED_FUNCTION_40_5(v12);
    sub_1BF998A84();
    sub_1BF9B51B8();
    OUTLINED_FUNCTION_29_8();
    if (v0)
    {

      sub_1BF8E8118(v11, &qword_1EBDE8AB8, &qword_1BF9B85C0);
      break;
    }

    sub_1BF8E8118(v11, &qword_1EBDE8AB8, &qword_1BF9B85C0);

    ++v6;
  }

  v9 = OUTLINED_FUNCTION_19_5();
  v10(v9);
  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF996C14(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BF9B50F8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  __swift_storeEnumTagSinglePayload(&v7 - v5, 1, 1, a2);
  return sub_1BF9B4DF8();
}

uint64_t TypeTransport.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = DynamicType;
  return result;
}

void static CodableWrapper.decodeArrayWithOptionals<A, B>(forType:forKey:container:)()
{
  OUTLINED_FUNCTION_39();
  v76 = v0;
  v3 = v2;
  v5 = v4;
  v78 = v6;
  v7 = sub_1BF9B50F8();
  OUTLINED_FUNCTION_1(v7);
  v77 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v63[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89F0, &unk_1BF9C66D0);
  OUTLINED_FUNCTION_1(v14);
  v67 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_77_0();
  v19 = sub_1BF9B5588();
  sub_1BF8DF500();
  OUTLINED_FUNCTION_53_8();
  v20 = v76;
  sub_1BF9B54A8();
  if (v20)
  {
LABEL_77:
    OUTLINED_FUNCTION_37();
    return;
  }

  v73 = v13;
  v74 = v3;
  v66 = v7;
  v75 = v5;
  v76 = v1;
  v21 = v1;
  v22 = sub_1BF9B5568();
  v23 = sub_1BF996C14(*(v22 + 16), v78);
  v82 = v23;
  v72 = *(v22 + 16);
  if (!v72)
  {
    v61 = v23;

    v21 = v74;
    v56 = v75;
LABEL_76:
    v79[0] = v61;
    MEMORY[0x1EEE9AC00](v60);
    *&v63[-32] = v78;
    *&v63[-24] = v56;
    *&v63[-16] = v21;
    sub_1BF9B4E08();

    OUTLINED_FUNCTION_2_1();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_48_7();

    OUTLINED_FUNCTION_62_7();
    v62(v76, v14);

    goto LABEL_77;
  }

  v65 = v14;
  v24 = 0;
  v70 = v19;
  v71 = v22 + 32;
  v68 = v79 + 1;
  v69 = v77 + 40;
  v25 = v66;
  while (v24 < *(v22 + 16))
  {
    OUTLINED_FUNCTION_55_8();
    if (!v28)
    {
      goto LABEL_79;
    }

    v29 = *(v27 + 16);
    v30 = *(v27 + 24);
    if ((v21 & 0x1000000000000000) == 0)
    {
      if ((v21 & 0x2000000000000000) != 0)
      {
        OUTLINED_FUNCTION_69_3();
        if (v34)
        {
          if (!v38)
          {
            goto LABEL_84;
          }

          if (v38 != 1)
          {
            while (1)
            {
              OUTLINED_FUNCTION_3_27();
              if (!v34 & v33)
              {
                break;
              }

              OUTLINED_FUNCTION_2_28();
              if (!v34 || __OFADD__(v45, v44))
              {
                break;
              }

              OUTLINED_FUNCTION_10_2();
              if (v34)
              {
                goto LABEL_69;
              }
            }
          }
        }

        else if (v39 == 45)
        {
          if (!v38)
          {
            goto LABEL_83;
          }

          if (v38 != 1)
          {
            while (1)
            {
              OUTLINED_FUNCTION_3_27();
              if (!v34 & v33)
              {
                break;
              }

              OUTLINED_FUNCTION_2_28();
              if (!v34 || __OFSUB__(v41, v40))
              {
                break;
              }

              OUTLINED_FUNCTION_10_2();
              if (v34)
              {
                goto LABEL_69;
              }
            }
          }
        }

        else if (v38)
        {
          while (1)
          {
            OUTLINED_FUNCTION_3_27();
            if (!v34 & v33)
            {
              break;
            }

            OUTLINED_FUNCTION_2_28();
            if (!v34 || __OFADD__(v51, v50))
            {
              break;
            }

            OUTLINED_FUNCTION_10_2();
            if (v34)
            {
              goto LABEL_69;
            }
          }
        }
      }

      else
      {
        if ((v13 & 0x1000000000000000) != 0)
        {
          v31 = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          OUTLINED_FUNCTION_36_6();
          v31 = sub_1BF9B5318();
        }

        v32 = *v31;
        if (v32 == 43)
        {
          if (v26 < 1)
          {
            goto LABEL_82;
          }

          if (v26 != 1)
          {
            if (!v31)
            {
              goto LABEL_59;
            }

            while (1)
            {
              OUTLINED_FUNCTION_3_27();
              if (!v34 & v33)
              {
                break;
              }

              OUTLINED_FUNCTION_2_28();
              if (!v34 || __OFADD__(v43, v42))
              {
                break;
              }

              OUTLINED_FUNCTION_10_2();
              if (v34)
              {
                goto LABEL_69;
              }
            }
          }
        }

        else if (v32 == 45)
        {
          if (v26 < 1)
          {
            goto LABEL_81;
          }

          if (v26 != 1)
          {
            if (v31)
            {
              while (1)
              {
                OUTLINED_FUNCTION_3_27();
                if (!v34 & v33)
                {
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_2_28();
                if (!v34 || __OFSUB__(v36, v35))
                {
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_10_2();
                if (v34)
                {
                  goto LABEL_69;
                }
              }
            }

LABEL_59:
            v37 = 0;
LABEL_69:
            v81 = v37;
            v52 = v37;

            if (v52)
            {
              goto LABEL_80;
            }

            goto LABEL_70;
          }
        }

        else
        {
          if (!v26)
          {
            goto LABEL_68;
          }

          if (!v31)
          {
            goto LABEL_59;
          }

          while (*v31 - 48 <= 9)
          {
            OUTLINED_FUNCTION_52_7();
            if (!v34 || __OFADD__(v49, v48))
            {
              break;
            }

            v31 = (v46 + 1);
            if (v47 == 1)
            {
              goto LABEL_59;
            }
          }
        }
      }

LABEL_68:
      v37 = 1;
      goto LABEL_69;
    }

    swift_bridgeObjectRetain_n();
    v57 = OUTLINED_FUNCTION_36_6();
    sub_1BF99854C(v57, v58, 10);
    v64 = v59;

    if (v64)
    {
      goto LABEL_80;
    }

LABEL_70:
    v79[0] = v13;
    v79[1] = v21;
    v79[2] = v29;
    v80 = v30;
    v53 = v73;
    v13 = v76;
    static CodableWrapper.decodeOptional<A, B>(forType:forKey:container:)();
    ++v24;

    OUTLINED_FUNCTION_38_8();
    sub_1BF9B4E08();
    sub_1BF9B4D68();
    OUTLINED_FUNCTION_73_3();
    v54 = OUTLINED_FUNCTION_30_11();
    v55(v54, v53, v25);
    v21 = v74;
    v56 = v75;
    if (v24 == v72)
    {

      v61 = v82;
      v14 = v65;
      goto LABEL_76;
    }
  }

  __break(1u);
LABEL_79:

LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
}

uint64_t sub_1BF997298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BF9B50F8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

unint64_t sub_1BF997328()
{
  result = qword_1EDBF0580;
  if (!qword_1EDBF0580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF0580);
  }

  return result;
}

void TypeTransport.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v34 = v4;
  v5 = sub_1BF9B4668();
  v6 = OUTLINED_FUNCTION_1(v5);
  v35 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  v37 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA4C0, &qword_1BF9C7798);
  OUTLINED_FUNCTION_1(v12);
  v36 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_77_0();
  v18 = v3[3];
  v17 = v3[4];
  OUTLINED_FUNCTION_32_12(v3);
  v19 = sub_1BF8C34DC();
  sub_1BF9B5868();
  if (!v0)
  {
    OUTLINED_FUNCTION_17_18();
    sub_1BF8C3530(v20, v21);
    sub_1BF9B5558();
    sub_1BF9B4648();
    v22 = sub_1BF9B52A8();

    if (v22)
    {
      (*(v35 + 8))(v37, v5);
      (*(v36 + 8))(v1, v12);
      *v34 = v22;
    }

    else
    {
      type metadata accessor for CodingErrors();
      OUTLINED_FUNCTION_1_27();
      sub_1BF8C3530(v23, v24);
      OUTLINED_FUNCTION_67_2();
      v26 = v25;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
      v28 = *(v27 + 48);
      *(v26 + 24) = &type metadata for TypeTransport.CodingKeys;
      *(v26 + 32) = v19;
      (*(v35 + 16))(v26 + v28, v37, v5);
      OUTLINED_FUNCTION_38();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v27);
      swift_willThrow();
      v32 = OUTLINED_FUNCTION_41_8();
      v33(v32);
      (*(v36 + 8))(v1, v12);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_37();
}