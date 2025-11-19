uint64_t sub_1B9145B6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC60F0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Value);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9145BEC(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5B90, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Value);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9145C5C()
{
  sub_1B8CD28D0(&qword_1EBAC5B90, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Value);

  return sub_1B964C5D0();
}

uint64_t sub_1B9145CF4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC57F0);
  __swift_project_value_buffer(v0, qword_1EBAC57F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "header";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "subtitle";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_HeaderItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B9146054();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B9145FA0();
        break;
    }
  }

  return result;
}

uint64_t sub_1B9145FA0()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem(0) + 24);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  sub_1B8CD28D0(&qword_1EBAC5BA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);
  return sub_1B964C580();
}

uint64_t sub_1B9146054()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem(0) + 28);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  sub_1B8CD28D0(&qword_1EBAC5BA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Platform_Watchos_HeaderItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v2 = OUTLINED_FUNCTION_686();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v5 = OUTLINED_FUNCTION_183(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44_0();
  v31 = v8;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_304_1();
  v11 = OUTLINED_FUNCTION_59_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_68();
  v32 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem(v15);
  v16 = v32[6];
  OUTLINED_FUNCTION_92_1();
  sub_1B8D92024();
  v17 = OUTLINED_FUNCTION_208_3();
  OUTLINED_FUNCTION_178(v17, v18, v10);
  if (v19)
  {
    sub_1B8D9207C(v0, &qword_1EBAC5B58, &qword_1B9694778);
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    sub_1B913EA40();
    OUTLINED_FUNCTION_4_32();
    sub_1B8CD28D0(v20, v21);
    OUTLINED_FUNCTION_257_0();
    OUTLINED_FUNCTION_79_0();
    sub_1B964C740();
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
    if (v1)
    {
      goto LABEL_12;
    }
  }

  v22 = *v0;
  v23 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v24 || (OUTLINED_FUNCTION_79_0(), sub_1B964C700(), !v1))
  {
    v25 = v32[7];
    sub_1B8D92024();
    v26 = OUTLINED_FUNCTION_208_3();
    OUTLINED_FUNCTION_178(v26, v27, v10);
    if (v19)
    {
      sub_1B8D9207C(v31, &qword_1EBAC5B58, &qword_1B9694778);
LABEL_11:
      v30 = v0 + v32[5];
      sub_1B964C290();
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_0_61();
    sub_1B913EA40();
    OUTLINED_FUNCTION_4_32();
    sub_1B8CD28D0(v28, v29);
    OUTLINED_FUNCTION_683_0();
    OUTLINED_FUNCTION_79_0();
    sub_1B964C740();
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
    if (!v1)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Platform_Watchos_HeaderItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44_0();
  v84 = v7;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v84 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B58, &qword_1B9694778);
  v12 = OUTLINED_FUNCTION_183(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44_0();
  v85 = v15;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v84 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5BB0, &qword_1B96947B0);
  v20 = OUTLINED_FUNCTION_59_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44_0();
  v88 = v23;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_441();
  v25 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem(0);
  v86 = v19;
  v87 = v25;
  v26 = *(v25 + 24);
  v27 = *(v19 + 48);
  v89 = v2;
  OUTLINED_FUNCTION_225_4();
  sub_1B8D92024();
  v28 = v3;
  OUTLINED_FUNCTION_84_0();
  v29 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v29, v30, v3);
  if (v54)
  {
    OUTLINED_FUNCTION_749();
    OUTLINED_FUNCTION_178(v31, v32, v33);
    if (v54)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5B58, &qword_1B9694778);
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  OUTLINED_FUNCTION_182();
  sub_1B8D92024();
  OUTLINED_FUNCTION_749();
  OUTLINED_FUNCTION_178(v51, v52, v53);
  if (v54)
  {
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
LABEL_20:
    v55 = &qword_1EBAC5BB0;
    v56 = &qword_1B96947B0;
LABEL_30:
    v65 = v0;
LABEL_31:
    sub_1B8D9207C(v65, v55, v56);
LABEL_32:
    v50 = 0;
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_0_61();
  sub_1B913EA40();
  v57 = *v18 == *v10 && v18[1] == v10[1];
  if (!v57 && (sub_1B964C9F0() & 1) == 0 || (v58 = v18[2], v59 = v10[2], sub_1B8D611FC(), (v60 & 1) == 0))
  {
    OUTLINED_FUNCTION_31_18();
    sub_1B913FC94();
    OUTLINED_FUNCTION_432();
    sub_1B913FC94();
    v55 = &qword_1EBAC5B58;
    v56 = &qword_1B9694778;
    goto LABEL_30;
  }

  v61 = *(v3 + 24);
  v62 = sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v63, v64);
  sub_1B964C850();
  OUTLINED_FUNCTION_8_31();
  sub_1B913FC94();
  OUTLINED_FUNCTION_514();
  sub_1B913FC94();
  sub_1B8D9207C(v0, &qword_1EBAC5B58, &qword_1B9694778);
  if ((v62 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_6:
  OUTLINED_FUNCTION_131_0();
  if (v54)
  {
    v36 = v34 == v35;
  }

  else
  {
    v36 = 0;
  }

  if (!v36 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_32;
  }

  v37 = v87;
  v38 = *(v87 + 28);
  v39 = *(v86 + 48);
  v40 = v88;
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_749();
  OUTLINED_FUNCTION_178(v41, v42, v43);
  if (v54)
  {
    OUTLINED_FUNCTION_749();
    OUTLINED_FUNCTION_178(v44, v45, v46);
    if (v54)
    {
      sub_1B8D9207C(v40, &qword_1EBAC5B58, &qword_1B9694778);
      goto LABEL_16;
    }

    goto LABEL_37;
  }

  v66 = v85;
  sub_1B8D92024();
  OUTLINED_FUNCTION_749();
  OUTLINED_FUNCTION_178(v67, v68, v69);
  if (v70)
  {
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
LABEL_37:
    v55 = &qword_1EBAC5BB0;
    v56 = &qword_1B96947B0;
LABEL_47:
    v65 = v40;
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_0_61();
  v71 = v84;
  sub_1B913EA40();
  v72 = *v66;
  v73 = v66[1];
  OUTLINED_FUNCTION_292_1();
  if (v74)
  {
    v77 = v75 == v76;
  }

  else
  {
    v77 = 0;
  }

  if (!v77 && (sub_1B964C9F0() & 1) == 0 || (v78 = v66[2], v79 = *(v71 + 16), sub_1B8D611FC(), (v80 & 1) == 0))
  {
    OUTLINED_FUNCTION_14_19();
    sub_1B913FC94();
    OUTLINED_FUNCTION_182();
    sub_1B913FC94();
    v55 = &qword_1EBAC5B58;
    v56 = &qword_1B9694778;
    goto LABEL_47;
  }

  v81 = *(v28 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v82, v83);
  LOBYTE(v81) = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_31_18();
  sub_1B913FC94();
  OUTLINED_FUNCTION_128();
  sub_1B913FC94();
  sub_1B8D9207C(v40, &qword_1EBAC5B58, &qword_1B9694778);
  if ((v81 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  v47 = *(v37 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v48, v49);
  v50 = OUTLINED_FUNCTION_239_2();
LABEL_33:
  OUTLINED_FUNCTION_264(v50);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9146968(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC60E8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91469E8(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5E30, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9146A58()
{
  sub_1B8CD28D0(&qword_1EBAC5E30, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9146C34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC60E0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SubheaderItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9146CB4(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5E48, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SubheaderItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9146D24()
{
  sub_1B8CD28D0(&qword_1EBAC5E48, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SubheaderItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9146DB0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5820);
  __swift_project_value_buffer(v0, qword_1EBAC5820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "watch_image_resource";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "content_position";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "caption";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_HeroImageItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B914717C();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B9147114();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B9147060();
        break;
    }
  }

  return result;
}

uint64_t sub_1B9147060()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem(0) + 24);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  sub_1B8CD28D0(&qword_1EBAC5BD8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource);
  return sub_1B964C580();
}

uint64_t sub_1B914717C()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem(0) + 28);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString(0);
  sub_1B8CD28D0(&qword_1EBAC5BD0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Platform_Watchos_HeroImageItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_259_1(v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B60, &qword_1B9694788);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_185();
  v43 = v10;
  v11 = OUTLINED_FUNCTION_201();
  v42 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString(v11);
  v12 = OUTLINED_FUNCTION_59_1(v42);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_251(v15);
  v16 = OUTLINED_FUNCTION_190_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_183(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_204_3();
  v23 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v22);
  v24 = OUTLINED_FUNCTION_59_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v27 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem(0);
  v28 = v27[6];
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  v29 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v29, v30, v23);
  if (v31)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9038, &qword_1B9694780);
  }

  else
  {
    OUTLINED_FUNCTION_2_35();
    sub_1B913EA40();
    OUTLINED_FUNCTION_13_21();
    sub_1B8CD28D0(v32, v33);
    OUTLINED_FUNCTION_257_0();
    OUTLINED_FUNCTION_260_1();
    sub_1B964C740();
    OUTLINED_FUNCTION_6_22();
    sub_1B913FC94();
    if (v0)
    {
      goto LABEL_14;
    }
  }

  if (*v2)
  {
    v34 = *(v2 + 8);
    OUTLINED_FUNCTION_540_0(*v2);
    sub_1B9156A1C();
    OUTLINED_FUNCTION_260_1();
    sub_1B964C680();
    v35 = v43;
    if (v0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v35 = v43;
  }

  v36 = v27[7];
  sub_1B8D92024();
  v37 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v37, v38, v42);
  if (v31)
  {
    sub_1B8D9207C(v35, &qword_1EBAC5B60, &qword_1B9694788);
LABEL_13:
    v41 = v2 + v27[5];
    sub_1B964C290();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_7_28();
  sub_1B913EA40();
  OUTLINED_FUNCTION_185_4();
  sub_1B8CD28D0(v39, v40);
  OUTLINED_FUNCTION_260_1();
  sub_1B964C740();
  OUTLINED_FUNCTION_59_9();
  sub_1B913FC94();
  if (!v0)
  {
    goto LABEL_13;
  }

LABEL_14:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Platform_Watchos_HeroImageItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v4 = v3;
  v64 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString(0);
  v5 = OUTLINED_FUNCTION_59_1(v64);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_251(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B60, &qword_1B9694788);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_99_7(v13, v60);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5BE0, &qword_1B96947B8);
  OUTLINED_FUNCTION_59_1(v63);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_185();
  v65 = v17;
  v18 = OUTLINED_FUNCTION_201();
  v19 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v18);
  v20 = OUTLINED_FUNCTION_59_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9038, &qword_1B9694780);
  OUTLINED_FUNCTION_183(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_238_0();
  v27 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9040, &unk_1B964D830) - 8);
  v28 = *(*v27 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v29);
  v30 = OUTLINED_FUNCTION_151();
  v66 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem(v30);
  v31 = v66[6];
  v32 = v27[14];
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_75(v0);
  if (v33)
  {
    OUTLINED_FUNCTION_75(v0 + v32);
    if (v33)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9038, &qword_1B9694780);
      goto LABEL_14;
    }

LABEL_9:
    v34 = &qword_1EBAB9040;
    v35 = &unk_1B964D830;
    v36 = v0;
LABEL_10:
    sub_1B8D9207C(v36, v34, v35);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_269_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_75(v0 + v32);
  if (v33)
  {
    OUTLINED_FUNCTION_6_22();
    sub_1B913FC94();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_2_35();
  sub_1B913EA40();
  static Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.== infix(_:_:)();
  OUTLINED_FUNCTION_39_8();
  sub_1B913FC94();
  OUTLINED_FUNCTION_74_7();
  sub_1B913FC94();
  sub_1B8D9207C(v0, &qword_1EBAB9038, &qword_1B9694780);
  if ((v32 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v38 = *v4;
  v39 = *v2;
  if (*(v2 + 8) == 1)
  {
    switch(v39)
    {
      case 1:
        if (v38 == 1)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
      case 2:
        if (v38 == 2)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
      case 3:
        if (v38 == 3)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
      case 4:
        if (v38 == 4)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
      default:
        if (!v38)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
    }
  }

  if (v38 != v39)
  {
    goto LABEL_11;
  }

LABEL_19:
  v40 = v66[7];
  v41 = *(v63 + 48);
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_235_1();
  v42 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_44(v42, v43);
  if (v33)
  {
    OUTLINED_FUNCTION_48(v65 + v41);
    if (v33)
    {
      sub_1B8D9207C(v65, &qword_1EBAC5B60, &qword_1B9694788);
LABEL_24:
      v44 = v66[5];
      sub_1B964C2B0();
      OUTLINED_FUNCTION_1_52();
      sub_1B8CD28D0(v45, v46);
      v37 = sub_1B964C850();
      goto LABEL_12;
    }

    goto LABEL_28;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v65 + v41);
  if (v47)
  {
    OUTLINED_FUNCTION_59_9();
    sub_1B913FC94();
LABEL_28:
    v34 = &qword_1EBAC5BE0;
    v35 = &qword_1B96947B8;
LABEL_46:
    v36 = v65;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_7_28();
  sub_1B913EA40();
  v48 = *v62;
  v49 = v62[1];
  OUTLINED_FUNCTION_292_1();
  if (v50)
  {
    v53 = v51 == v52;
  }

  else
  {
    v53 = 0;
  }

  if (!v53 && (sub_1B964C9F0() & 1) == 0 || (v54 = v62[2], v55 = *(v61 + 16), sub_1B8D611FC(), (v56 & 1) == 0))
  {
    OUTLINED_FUNCTION_184_3();
    sub_1B913FC94();
    sub_1B913FC94();
    v34 = &qword_1EBAC5B60;
    v35 = &qword_1B9694788;
    goto LABEL_46;
  }

  v57 = *(v64 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v58, v59);
  LOBYTE(v57) = sub_1B964C850();
  sub_1B913FC94();
  sub_1B913FC94();
  sub_1B8D9207C(v65, &qword_1EBAC5B60, &qword_1B9694788);
  if (v57)
  {
    goto LABEL_24;
  }

LABEL_11:
  v37 = 0;
LABEL_12:
  OUTLINED_FUNCTION_264(v37);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9147B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC60D8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9147BB4(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5E60, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9147C24()
{
  sub_1B8CD28D0(&qword_1EBAC5E60, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9147CA4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5838);
  __swift_project_value_buffer(v0, qword_1EBAC5838);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "CONTENT_POSITION_UNKNOWN";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CONTENT_POSITION_DEFAULT";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CONTENT_POSITION_HEADER";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CONTENT_POSITION_CENTERED";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "CONTENT_POSITION_FOOTER";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9147F54()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5850);
  __swift_project_value_buffer(v0, qword_1EBAC5850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "body_text";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "decorated_body_text";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_BodyTextItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B91481A8();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B91481A8()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_BodyTextItem(0) + 24);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString(0);
  sub_1B8CD28D0(&qword_1EBAC5BD0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Platform_Watchos_BodyTextItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_26_14();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B60, &qword_1B9694788);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_151();
  v8 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString(v7);
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_192_4();
  v12 = *v1;
  v13 = v1[1];
  OUTLINED_FUNCTION_1();
  if (!v14 || (OUTLINED_FUNCTION_303_1(), !v0))
  {
    v15 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_BodyTextItem(0);
    OUTLINED_FUNCTION_285_1(*(v15 + 24));
    sub_1B8D92024();
    v16 = OUTLINED_FUNCTION_443();
    OUTLINED_FUNCTION_178(v16, v17, v8);
    if (v18)
    {
      sub_1B8D9207C(v2, &qword_1EBAC5B60, &qword_1B9694788);
LABEL_7:
      v21 = v1 + *(v15 + 20);
      OUTLINED_FUNCTION_248_1();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_7_28();
    sub_1B913EA40();
    OUTLINED_FUNCTION_185_4();
    sub_1B8CD28D0(v19, v20);
    OUTLINED_FUNCTION_597_0();
    OUTLINED_FUNCTION_288_0();
    OUTLINED_FUNCTION_17_15();
    sub_1B964C740();
    OUTLINED_FUNCTION_59_9();
    sub_1B913FC94();
    if (!v0)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Platform_Watchos_BodyTextItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v3 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString(0);
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B60, &qword_1B9694788);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_137();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5BE0, &qword_1B96947B8);
  OUTLINED_FUNCTION_59_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_201_3();
  v17 = v17 && v15 == v16;
  if (!v17 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_26;
  }

  v38 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_BodyTextItem(0);
  v18 = *(v38 + 24);
  v19 = *(v11 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0);
  if (v17)
  {
    OUTLINED_FUNCTION_37_0(v0 + v19);
    if (v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5B60, &qword_1B9694788);
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_1_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0 + v19);
  if (v24)
  {
    OUTLINED_FUNCTION_59_9();
    sub_1B913FC94();
LABEL_15:
    v25 = &qword_1EBAC5BE0;
    v26 = &qword_1B96947B8;
LABEL_25:
    sub_1B8D9207C(v0, v25, v26);
LABEL_26:
    v23 = 0;
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_7_28();
  sub_1B913EA40();
  OUTLINED_FUNCTION_131_0();
  if (v27)
  {
    v30 = v28 == v29;
  }

  else
  {
    v30 = 0;
  }

  if (!v30 && (sub_1B964C9F0() & 1) == 0 || (v31 = *(v2 + 16), v32 = *(v1 + 16), sub_1B8D611FC(), (v33 & 1) == 0))
  {
    OUTLINED_FUNCTION_184_3();
    sub_1B913FC94();
    sub_1B913FC94();
    v25 = &qword_1EBAC5B60;
    v26 = &qword_1B9694788;
    goto LABEL_25;
  }

  v34 = *(v3 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v35, v36);
  v37 = sub_1B964C850();
  sub_1B913FC94();
  sub_1B913FC94();
  sub_1B8D9207C(v0, &qword_1EBAC5B60, &qword_1B9694788);
  if ((v37 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  v20 = *(v38 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v21, v22);
  v23 = OUTLINED_FUNCTION_199_0();
LABEL_27:
  OUTLINED_FUNCTION_264(v23);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9148788(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC60D0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_BodyTextItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9148808(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5E78, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_BodyTextItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9148878()
{
  sub_1B8CD28D0(&qword_1EBAC5E78, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_BodyTextItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9148910()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5868);
  __swift_project_value_buffer(v0, qword_1EBAC5868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "zoom_level";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "latitude";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "longitude";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_MapViewItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C510();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_MapViewItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
  {
    if (*(v2 + 8) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
    {
      if (*(v2 + 16) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
      {
        v3 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_MapViewItem(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_Platform_Watchos_MapViewItem.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 8) != *(v5 + 8) || *(v3 + 16) != *(v2 + 16))
  {
    return 0;
  }

  v6 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_MapViewItem(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v7, v8);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9148DC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC60C8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_MapViewItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9148E40(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5E90, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_MapViewItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9148EB0()
{
  sub_1B8CD28D0(&qword_1EBAC5E90, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_MapViewItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9148F48()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5880);
  __swift_project_value_buffer(v0, qword_1EBAC5880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "values";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Siri_Platform_Watchos_PropertyListItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_183_5();
      OUTLINED_FUNCTION_9();
      sub_1B9156564();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B91491D8();
    }
  }
}

uint64_t sub_1B91491D8()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_PropertyListItem(0) + 24);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  sub_1B8CD28D0(&qword_1EBAC5BA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Platform_Watchos_PropertyListItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_211_2();
  v9 = OUTLINED_FUNCTION_310_1();
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v23 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_PropertyListItem(0);
  v24 = v0;
  v13 = *(v23 + 24);
  sub_1B8D92024();
  v14 = OUTLINED_FUNCTION_208_3();
  OUTLINED_FUNCTION_178(v14, v15, v2);
  if (v16)
  {
    sub_1B8D9207C(v0, &qword_1EBAC5B58, &qword_1B9694778);
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    sub_1B913EA40();
    OUTLINED_FUNCTION_4_32();
    sub_1B8CD28D0(v17, v18);
    OUTLINED_FUNCTION_749();
    OUTLINED_FUNCTION_294_0();
    sub_1B964C740();
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
    if (v1)
    {
      goto LABEL_8;
    }
  }

  v19 = *v0;
  if (!*(*v24 + 16) || (OUTLINED_FUNCTION_4_32(), sub_1B8CD28D0(v20, v21), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_294_0(), sub_1B964C730(), !v1))
  {
    v22 = v24 + *(v23 + 20);
    OUTLINED_FUNCTION_690();
    sub_1B964C290();
  }

LABEL_8:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Platform_Watchos_PropertyListItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_113_6();
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v12 = OUTLINED_FUNCTION_190_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_183(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v45 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5BB0, &qword_1B96947B0);
  OUTLINED_FUNCTION_120_4(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v23);
  v24 = OUTLINED_FUNCTION_22_3();
  v46 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_PropertyListItem(v24);
  v47 = v7;
  v25 = *(v46 + 24);
  v26 = *(v3 + 56);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  v48 = v5;
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v1);
  if (v34)
  {
    OUTLINED_FUNCTION_37_0(v1 + v26);
    if (v34)
    {
      sub_1B8D9207C(v1, &qword_1EBAC5B58, &qword_1B9694778);
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v1 + v26);
  if (v34)
  {
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
LABEL_11:
    v35 = &qword_1EBAC5BB0;
    v36 = &qword_1B96947B0;
LABEL_21:
    sub_1B8D9207C(v1, v35, v36);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_0_61();
  sub_1B913EA40();
  v37 = *v19 == *v2 && v19[1] == v2[1];
  if (!v37 && (sub_1B964C9F0() & 1) == 0 || (v38 = v19[2], v39 = v2[2], sub_1B8D611FC(), (v40 & 1) == 0))
  {
    OUTLINED_FUNCTION_14_19();
    sub_1B913FC94();
    sub_1B913FC94();
    v35 = &qword_1EBAC5B58;
    v36 = &qword_1B9694778;
    goto LABEL_21;
  }

  v41 = *(v0 + 24);
  v42 = sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v43, v44);
  sub_1B964C850();
  OUTLINED_FUNCTION_8_31();
  sub_1B913FC94();
  OUTLINED_FUNCTION_686();
  sub_1B913FC94();
  sub_1B8D9207C(v1, &qword_1EBAC5B58, &qword_1B9694778);
  if ((v42 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  v27 = *v47;
  v28 = *v48;
  sub_1B8D6100C();
  if ((v29 & 1) == 0)
  {
LABEL_22:
    v33 = 0;
    goto LABEL_23;
  }

  v30 = *(v46 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v31, v32);
  v33 = OUTLINED_FUNCTION_181();
LABEL_23:
  OUTLINED_FUNCTION_264(v33);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B91497FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC60C0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_PropertyListItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B914987C(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5EA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_PropertyListItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91498EC()
{
  sub_1B8CD28D0(&qword_1EBAC5EA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_PropertyListItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9149984()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5898);
  __swift_project_value_buffer(v0, qword_1EBAC5898);
  return sub_1B964C770();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_KeylineItem.decodeMessage<A>(decoder:)()
{
  do
  {
    OUTLINED_FUNCTION_182();
    result = sub_1B964C3C0();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t static Apple_Parsec_Siri_Platform_Watchos_KeylineItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_280();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v0, v1);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

uint64_t sub_1B9149B54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC60B8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_KeylineItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9149BD4(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5EC0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_KeylineItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9149C44()
{
  sub_1B8CD28D0(&qword_1EBAC5EC0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_KeylineItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9149CD0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC58B0);
  __swift_project_value_buffer(v0, qword_1EBAC58B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "imageResource";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "attributionPosition";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_AttributionItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B914A030();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B9149F7C();
        break;
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }

  return result;
}

uint64_t sub_1B9149F7C()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_AttributionItem(0) + 28);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  sub_1B8CD28D0(&qword_1EBAC5BD8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Platform_Watchos_AttributionItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9038, &qword_1B9694780);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_192_4();
  v8 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  v12 = *v0;
  v13 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v14 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
  {
    v15 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_AttributionItem(0);
    v16 = *(v15 + 28);
    sub_1B8D92024();
    v17 = OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_178(v17, v18, v8);
    if (v19)
    {
      sub_1B8D9207C(v3, &qword_1EBAB9038, &qword_1B9694780);
    }

    else
    {
      OUTLINED_FUNCTION_2_35();
      OUTLINED_FUNCTION_190_0();
      sub_1B913EA40();
      OUTLINED_FUNCTION_13_21();
      sub_1B8CD28D0(v20, v21);
      OUTLINED_FUNCTION_683_0();
      OUTLINED_FUNCTION_687();
      sub_1B964C740();
      OUTLINED_FUNCTION_6_22();
      sub_1B913FC94();
      if (v1)
      {
        goto LABEL_10;
      }
    }

    v22 = *(v2 + 16);
    if (!v22 || (v23 = *(v2 + 24), OUTLINED_FUNCTION_540_0(v22), sub_1B9156A70(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v1))
    {
      v24 = *(v15 + 24);
      OUTLINED_FUNCTION_8_1();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Platform_Watchos_AttributionItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_280();
  v4 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v3);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_238_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9038, &qword_1B9694780);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9040, &unk_1B964D830);
  OUTLINED_FUNCTION_59_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  v16 = *v1;
  v17 = v1[1];
  OUTLINED_FUNCTION_428();
  v20 = v20 && v18 == v19;
  if (!v20 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_18;
  }

  v29 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_AttributionItem(0);
  v21 = *(v29 + 28);
  v22 = *(v12 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v2);
  if (v20)
  {
    OUTLINED_FUNCTION_50(v2 + v22);
    if (v20)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9038, &qword_1B9694780);
      goto LABEL_16;
    }

LABEL_14:
    sub_1B8D9207C(v2, &qword_1EBAB9040, &unk_1B964D830);
LABEL_18:
    v28 = 0;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v2 + v22);
  if (v23)
  {
    OUTLINED_FUNCTION_6_22();
    sub_1B913FC94();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_2_35();
  sub_1B913EA40();
  OUTLINED_FUNCTION_246();
  static Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.== infix(_:_:)();
  OUTLINED_FUNCTION_172_2();
  sub_1B913FC94();
  sub_1B913FC94();
  sub_1B8D9207C(v2, &qword_1EBAB9038, &qword_1B9694780);
  if ((v4 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_16:
  v24 = *(v0 + 24);
  if (!sub_1B8D92198(v1[2], *(v1 + 24), *(v0 + 16)))
  {
    goto LABEL_18;
  }

  v25 = *(v29 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v26, v27);
  v28 = OUTLINED_FUNCTION_634();
LABEL_19:
  OUTLINED_FUNCTION_264(v28);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B914A584(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC60B0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_AttributionItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B914A604(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5ED8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_AttributionItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B914A674()
{
  sub_1B8CD28D0(&qword_1EBAC5ED8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_AttributionItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B914A6F4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC58C8);
  __swift_project_value_buffer(v0, qword_1EBAC58C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "LEFT";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CENTER";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RIGHT";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NATURAL";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B914A968()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC58E0);
  __swift_project_value_buffer(v0, qword_1EBAC58E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1B964EE80;
  v4 = v25 + v3 + v1[14];
  *(v25 + v3) = 1;
  *v4 = "url";
  *(v4 + 8) = 3;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v25 + v3 + v2 + v1[14];
  *(v25 + v3 + v2) = 2;
  *v8 = "scale_factor";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADE8];
  v7();
  v10 = (v25 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "pixel_height";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v7();
  v12 = (v25 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "pixel_width";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v7();
  v14 = (v25 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "background_needed";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v7();
  v16 = (v25 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "local_image_resource_code";
  *(v17 + 1) = 25;
  v17[16] = 2;
  v7();
  v18 = (v25 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "pre_sized_for_device";
  *(v19 + 1) = 20;
  v19[16] = 2;
  v7();
  v20 = (v25 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "image_download_type";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v7();
  v22 = (v25 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "image_bytes";
  *(v23 + 1) = 11;
  v23[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      case 5:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 6:
        OUTLINED_FUNCTION_9();
        sub_1B914ADF0();
        break;
      case 8:
        OUTLINED_FUNCTION_9();
        sub_1B914AE58();
        break;
      case 9:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
  {
    if (*(v2 + 16) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
    {
      if (*(v2 + 24) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
      {
        if (*(v2 + 32) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
        {
          if (*(v2 + 40) != 1 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C670(), !v1))
          {
            if (!*(v2 + 48) || (v12 = *(v2 + 48), v14 = *(v2 + 56), sub_1B9156AC4(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
            {
              if (*(v2 + 57) != 1 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C670(), !v1))
              {
                if (!*(v2 + 64) || (v13 = *(v2 + 64), v15 = *(v2 + 72), sub_1B9156B18(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
                {
                  v7 = *(v2 + 80);
                  v8 = *(v2 + 88);
                  v9 = OUTLINED_FUNCTION_616();
                  if (sub_1B8D99EA8(v9, v10) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v1))
                  {
                    v11 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0) + 52);
                    return OUTLINED_FUNCTION_8_1();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v4 = *(v1 + 8);
  OUTLINED_FUNCTION_428();
  v7 = v7 && v5 == v6;
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + 16) != *(v0 + 16))
  {
    return 0;
  }

  if (*(v1 + 24) != *(v0 + 24))
  {
    return 0;
  }

  if (*(v1 + 32) != *(v0 + 32))
  {
    return 0;
  }

  if (*(v1 + 40) != *(v0 + 40))
  {
    return 0;
  }

  v8 = *(v0 + 56);
  if (!sub_1B8D92198(*(v1 + 48), *(v1 + 56), *(v0 + 48)))
  {
    return 0;
  }

  if (*(v1 + 57) != *(v0 + 57))
  {
    return 0;
  }

  v9 = *(v0 + 72);
  if (!sub_1B8D92198(*(v1 + 64), *(v1 + 72), *(v0 + 64)) || (MEMORY[0x1BFADC060](*(v1 + 80), *(v1 + 88), *(v0 + 80), *(v0 + 88)) & 1) == 0)
  {
    return 0;
  }

  v10 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0) + 52);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v11, v12);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B914B268(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC60A8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B914B2E8(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5BD8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B914B358()
{
  sub_1B8CD28D0(&qword_1EBAC5BD8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource);

  return sub_1B964C5D0();
}

uint64_t sub_1B914B3D8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC58F8);
  __swift_project_value_buffer(v0, qword_1EBAC58F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9653B20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "LOCAL_IMAGE_RESOURCE_CODE_UNKNOWN";
  *(v6 + 8) = 33;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LOCAL_IMAGE_RESOURCE_CODE_TOMATO_FRESH";
  *(v10 + 8) = 38;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LOCAL_IMAGE_RESOURCE_CODE_TOMATO_SPLAT";
  *(v12 + 1) = 38;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "LOCAL_IMAGE_RESOURCE_CODE_MALE_ATHLETE";
  *(v14 + 1) = 38;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "LOCAL_IMAGE_RESOURCE_CODE_FEMALE_ATHLETE";
  *(v16 + 1) = 40;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "LOCAL_IMAGE_RESOURCE_CODE_TEAM_LOGO";
  *(v18 + 1) = 35;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "LOCAL_IMAGE_RESOURCE_CODE_MUSIC";
  *(v20 + 1) = 31;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "LOCAL_IMAGE_RESOURCE_CODE_MOVIE";
  *(v22 + 1) = 31;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "LOCAL_IMAGE_RESOURCE_CODE_GENERAL_KNOWLEDGE";
  *(v24 + 1) = 43;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "LOCAL_IMAGE_RESOURCE_CODE_DEFAULT";
  *(v26 + 1) = 33;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "LOCAL_IMAGE_RESOURCE_CODE_MONOGRAM";
  *(v28 + 1) = 34;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "LOCAL_IMAGE_RESOURCE_CODE_SIRI_MIC_ICON";
  *(v30 + 1) = 39;
  v30[16] = 2;
  v9();
  v31 = (v5 + 12 * v2);
  v32 = v31 + v1[14];
  *v31 = 12;
  *v32 = "LOCAL_IMAGE_RESOURCE_CODE_CHECKMARK";
  *(v32 + 1) = 35;
  v32[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B914B864()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5910);
  __swift_project_value_buffer(v0, qword_1EBAC5910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "IMAGE_DOWNLOAD_TYPE_UNKNOWN";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "IMAGE_DOWNLOAD_TYPE_SERVER_WILL_SEND";
  *(v10 + 8) = 36;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "IMAGE_DOWNLOAD_TYPE_CLIENT_TO_DOWNLOAD";
  *(v12 + 1) = 38;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "IMAGE_DOWNLOAD_TYPE_INLINED";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "IMAGE_DOWNLOAD_TYPE_LOCAL_RESOURCE";
  *(v16 + 1) = 34;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "IMAGE_DOWNLOAD_TYPE_NONE";
  *(v18 + 1) = 24;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "IMAGE_DOWNLOAD_TYPE_CLIENT_CACHED";
  *(v20 + 1) = 33;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B914BB94()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5928);
  __swift_project_value_buffer(v0, qword_1EBAC5928);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "regions";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void sub_1B914BDDC()
{
  OUTLINED_FUNCTION_99_2();
  while (1)
  {
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_98_2();
      sub_1B91546CC();
    }

    else if (v1 == 1)
    {
      sub_1B964C530();
    }
  }
}

uint64_t sub_1B914BF40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC60A0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B914BFC0(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5BA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B914C030()
{
  sub_1B8CD28D0(&qword_1EBAC5BA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);

  return sub_1B964C5D0();
}

uint64_t sub_1B914C0BC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5940);
  __swift_project_value_buffer(v0, qword_1EBAC5940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "regions";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B914C2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_614();
  v8 = *v4;
  v9 = v4[1];
  OUTLINED_FUNCTION_1();
  if (!v10 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v5))
  {
    if (!*(*(v6 + 16) + 16) || (type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TextDecorationRegion(0), sub_1B8CD28D0(&qword_1EBAC5C38, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TextDecorationRegion), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_288_0(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v5))
    {
      v12 = *(a4(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B914C3DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_468();
  v9 = *v8;
  v10 = *(v5 + 8);
  OUTLINED_FUNCTION_428();
  v13 = v13 && v11 == v12;
  if (!v13 && (sub_1B964C9F0() & 1) == 0 || (a3(*(v5 + 16), *(v4 + 16)) & 1) == 0)
  {
    return 0;
  }

  v14 = *(a4(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v15, v16);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B914C51C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC6098, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B914C59C(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5BD0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B914C60C()
{
  sub_1B8CD28D0(&qword_1EBAC5BD0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString);

  return sub_1B964C5D0();
}

uint64_t sub_1B914C6A4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5958);
  __swift_project_value_buffer(v0, qword_1EBAC5958);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "start";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "length";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "region_property";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_TextDecorationRegion.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_9();
      sub_1B914C950();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4A0();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_TextDecorationRegion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6C0(), !v1))
  {
    if (!*(v2 + 4) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6C0(), !v1))
    {
      if (!*(v2 + 8) || (v5 = *(v2 + 8), v6 = *(v2 + 16), sub_1B9156B6C(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
      {
        v4 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TextDecorationRegion(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_Platform_Watchos_TextDecorationRegion.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 4) != *(v5 + 4))
  {
    return 0;
  }

  v6 = *(v3 + 8);
  v7 = *(v2 + 8);
  if (*(v2 + 16) == 1)
  {
    switch(v7)
    {
      case 1:
        if (v6 == 1)
        {
          goto LABEL_8;
        }

        return 0;
      case 2:
        if (v6 == 2)
        {
          goto LABEL_8;
        }

        return 0;
      case 3:
        if (v6 == 3)
        {
          goto LABEL_8;
        }

        return 0;
      case 4:
        if (v6 == 4)
        {
          goto LABEL_8;
        }

        return 0;
      case 5:
        if (v6 == 5)
        {
          goto LABEL_8;
        }

        return 0;
      case 6:
        if (v6 == 6)
        {
          goto LABEL_8;
        }

        return 0;
      case 7:
        if (v6 == 7)
        {
          goto LABEL_8;
        }

        return 0;
      case 8:
        if (v6 == 8)
        {
          goto LABEL_8;
        }

        return 0;
      default:
        if (v6)
        {
          return 0;
        }

        goto LABEL_8;
    }
  }

  if (v6 != v7)
  {
    return 0;
  }

LABEL_8:
  v9 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TextDecorationRegion(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v10, v11);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B914CC5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC6090, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TextDecorationRegion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B914CCDC(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5C38, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TextDecorationRegion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B914CD4C()
{
  sub_1B8CD28D0(&qword_1EBAC5C38, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TextDecorationRegion);

  return sub_1B964C5D0();
}

uint64_t sub_1B914CDCC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5970);
  __swift_project_value_buffer(v0, qword_1EBAC5970);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "REGION_PROPERTY_UNKNOWN";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "REGION_PROPERTY_HIGHLIGHTED_QUERY_PARAM";
  *(v10 + 8) = 39;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "REGION_PROPERTY_SUGGESTED_UTTERANCE";
  *(v12 + 1) = 35;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "REGION_PROPERTY_SUPERSCRIPT";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "REGION_PROPERTY_SUBSCRIPT";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "REGION_PROPERTY_DE_EMPHASIZE_RESULT";
  *(v18 + 1) = 35;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "REGION_PROPERTY_SMALL_CAPS";
  *(v20 + 1) = 26;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "REGION_PROPERTY_TIME_COLON_VERTICAL_CENTERING";
  *(v22 + 1) = 45;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "REGION_PROPERTY_TINTED";
  *(v24 + 1) = 22;
  v24[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B914D1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = v4;
  while (1)
  {
    result = sub_1B964C3C0();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B9150A60(a1, v7, a2, a3, a4);
    }
  }

  return result;
}

void sub_1B914D298()
{
  OUTLINED_FUNCTION_273_0();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_690();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_231_1();
  v10 = OUTLINED_FUNCTION_310_1();
  v11 = OUTLINED_FUNCTION_59_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  v14 = OUTLINED_FUNCTION_204_3();
  v15 = *(v3(v14) + 20);
  sub_1B8D92024();
  OUTLINED_FUNCTION_749();
  OUTLINED_FUNCTION_178(v16, v17, v18);
  if (v19)
  {
    sub_1B8D9207C(v1, &qword_1EBAC5B58, &qword_1B9694778);
LABEL_5:
    sub_1B964C290();
    goto LABEL_6;
  }

  sub_1B913EA40();
  OUTLINED_FUNCTION_4_32();
  sub_1B8CD28D0(v20, v21);
  OUTLINED_FUNCTION_272_2();
  OUTLINED_FUNCTION_749();
  sub_1B964C740();
  OUTLINED_FUNCTION_3_34();
  sub_1B913FC94();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void sub_1B914D458()
{
  OUTLINED_FUNCTION_284();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_113_6();
  v7 = OUTLINED_FUNCTION_59_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  v41 = v10;
  v11 = OUTLINED_FUNCTION_190_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_183(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_137();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5BB0, &qword_1B96947B0);
  OUTLINED_FUNCTION_120_4(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_22_3();
  v22 = *(v5(v21) + 20);
  v23 = *(v3 + 56);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v1);
  if (v27)
  {
    OUTLINED_FUNCTION_37_0(v1 + v23);
    if (v27)
    {
      sub_1B8D9207C(v1, &qword_1EBAC5B58, &qword_1B9694778);
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v1 + v23);
  if (v27)
  {
    sub_1B913FC94();
LABEL_10:
    v28 = &qword_1EBAC5BB0;
    v29 = &qword_1B96947B0;
LABEL_20:
    sub_1B8D9207C(v1, v28, v29);
LABEL_21:
    v26 = 0;
    goto LABEL_22;
  }

  sub_1B913EA40();
  OUTLINED_FUNCTION_131_0();
  if (v30)
  {
    v33 = v31 == v32;
  }

  else
  {
    v33 = 0;
  }

  if (!v33 && (sub_1B964C9F0() & 1) == 0 || (v34 = *(v2 + 16), v35 = *(v41 + 16), sub_1B8D611FC(), (v36 & 1) == 0))
  {
    sub_1B913FC94();
    sub_1B913FC94();
    v28 = &qword_1EBAC5B58;
    v29 = &qword_1B9694778;
    goto LABEL_20;
  }

  v37 = *(v0 + 24);
  v38 = sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v39, v40);
  OUTLINED_FUNCTION_239_2();
  OUTLINED_FUNCTION_8_31();
  sub_1B913FC94();
  OUTLINED_FUNCTION_491();
  sub_1B913FC94();
  sub_1B8D9207C(v1, &qword_1EBAC5B58, &qword_1B9694778);
  if ((v38 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_6:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v24, v25);
  v26 = sub_1B964C850();
LABEL_22:
  OUTLINED_FUNCTION_264(v26);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B914D7EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC6088, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_LineDetailItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B914D86C(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5F30, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_LineDetailItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B914D8DC()
{
  sub_1B8CD28D0(&qword_1EBAC5F30, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_LineDetailItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B914D974()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC59A0);
  __swift_project_value_buffer(v0, qword_1EBAC59A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "centered";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "referential_command_id";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_ButtonItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B914DC2C();
        break;
    }
  }

  return result;
}

uint64_t sub_1B914DC2C()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem(0) + 28);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  sub_1B8CD28D0(&qword_1EBAC5BA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Platform_Watchos_ButtonItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_289_0();
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_151();
  v10 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(v9);
  v11 = OUTLINED_FUNCTION_59_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  v23 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem(0);
  OUTLINED_FUNCTION_285_1(*(v23 + 28));
  sub_1B8D92024();
  v14 = OUTLINED_FUNCTION_443();
  OUTLINED_FUNCTION_178(v14, v15, v10);
  if (v16)
  {
    sub_1B8D9207C(v2, &qword_1EBAC5B58, &qword_1B9694778);
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    sub_1B913EA40();
    OUTLINED_FUNCTION_4_32();
    sub_1B8CD28D0(v17, v18);
    OUTLINED_FUNCTION_683_0();
    OUTLINED_FUNCTION_270_2();
    sub_1B964C740();
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
    if (v0)
    {
      goto LABEL_10;
    }
  }

  if (*v1 != 1 || (OUTLINED_FUNCTION_270_2(), sub_1B964C670(), !v0))
  {
    v19 = *(v1 + 8);
    v20 = *(v1 + 16);
    OUTLINED_FUNCTION_1();
    if (!v21 || (OUTLINED_FUNCTION_270_2(), sub_1B964C700(), !v0))
    {
      v22 = v1 + *(v23 + 24);
      sub_1B964C290();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Platform_Watchos_ButtonItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_113_6();
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  v13 = (v12 - v11);
  v14 = OUTLINED_FUNCTION_190_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_183(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v44 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5BB0, &qword_1B96947B0);
  OUTLINED_FUNCTION_120_4(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_79();
  v45 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem(0);
  v46 = v6;
  v26 = *(v45 + 28);
  v27 = *(v2 + 56);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  v47 = v4;
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v1);
  if (v33)
  {
    OUTLINED_FUNCTION_37_0(v1 + v27);
    if (v33)
    {
      sub_1B8D9207C(v1, &qword_1EBAC5B58, &qword_1B9694778);
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v1 + v27);
  if (v33)
  {
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
LABEL_16:
    v34 = &qword_1EBAC5BB0;
    v35 = &qword_1B96947B0;
LABEL_26:
    sub_1B8D9207C(v1, v34, v35);
LABEL_27:
    v32 = 0;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_0_61();
  sub_1B913EA40();
  v36 = *v21 == *v13 && v21[1] == v13[1];
  if (!v36 && (sub_1B964C9F0() & 1) == 0 || (v37 = v21[2], v38 = v13[2], sub_1B8D611FC(), (v39 & 1) == 0))
  {
    OUTLINED_FUNCTION_14_19();
    sub_1B913FC94();
    sub_1B913FC94();
    v34 = &qword_1EBAC5B58;
    v35 = &qword_1B9694778;
    goto LABEL_26;
  }

  v40 = *(v0 + 24);
  v41 = sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v42, v43);
  sub_1B964C850();
  OUTLINED_FUNCTION_8_31();
  sub_1B913FC94();
  OUTLINED_FUNCTION_686();
  sub_1B913FC94();
  sub_1B8D9207C(v1, &qword_1EBAC5B58, &qword_1B9694778);
  if ((v41 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_6:
  if (*v46 != *v47)
  {
    goto LABEL_27;
  }

  v28 = *(v46 + 1) == *(v47 + 1) && *(v46 + 2) == *(v47 + 2);
  if (!v28 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_27;
  }

  v29 = *(v45 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v30, v31);
  v32 = OUTLINED_FUNCTION_181();
LABEL_28:
  OUTLINED_FUNCTION_264(v32);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B914E278(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC6080, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B914E2F8(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5F48, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B914E368()
{
  sub_1B8CD28D0(&qword_1EBAC5F48, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B914E3F4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC59B8);
  __swift_project_value_buffer(v0, qword_1EBAC59B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "image_resource";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "row_layout";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "decorated_rows";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B914E754();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B914E808();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B914E8BC();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B91546CC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B914E754()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem(0) + 28);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  sub_1B8CD28D0(&qword_1EBAC5BA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);
  return sub_1B964C580();
}

uint64_t sub_1B914E808()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem(0) + 32);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  sub_1B8CD28D0(&qword_1EBAC5BD8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_259_1(v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9038, &qword_1B9694780);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  v42 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  v13 = OUTLINED_FUNCTION_59_1(v42);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_251(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B58, &qword_1B9694778);
  OUTLINED_FUNCTION_183(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_211_2();
  v21 = OUTLINED_FUNCTION_310_1();
  v22 = OUTLINED_FUNCTION_59_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_62();
  v25 = OUTLINED_FUNCTION_204_3();
  v26 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem(v25);
  v27 = v26[7];
  sub_1B8D92024();
  v28 = OUTLINED_FUNCTION_208_3();
  OUTLINED_FUNCTION_178(v28, v29, v4);
  if (v30)
  {
    sub_1B8D9207C(v1, &qword_1EBAC5B58, &qword_1B9694778);
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    sub_1B913EA40();
    OUTLINED_FUNCTION_4_32();
    sub_1B8CD28D0(v31, v32);
    OUTLINED_FUNCTION_272_2();
    OUTLINED_FUNCTION_749();
    v2 = v0;
    sub_1B964C740();
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
    if (v0)
    {
      goto LABEL_14;
    }
  }

  v33 = v26[8];
  sub_1B8D92024();
  v34 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v34, v35, v42);
  if (v30)
  {
    sub_1B8D9207C(v3, &qword_1EBAB9038, &qword_1B9694780);
  }

  else
  {
    OUTLINED_FUNCTION_2_35();
    sub_1B913EA40();
    OUTLINED_FUNCTION_13_21();
    sub_1B8CD28D0(v36, v37);
    OUTLINED_FUNCTION_193_4();
    sub_1B964C740();
    OUTLINED_FUNCTION_6_22();
    sub_1B913FC94();
    if (v2)
    {
      goto LABEL_14;
    }
  }

  if (!*v5 || (v38 = *(v5 + 8), OUTLINED_FUNCTION_540_0(*v5), sub_1B9156BC0(), OUTLINED_FUNCTION_193_4(), sub_1B964C680(), !v2))
  {
    if (!*(*(v5 + 16) + 16) || (OUTLINED_FUNCTION_4_32(), sub_1B8CD28D0(v39, v40), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_193_4(), sub_1B964C730(), !v2))
    {
      v41 = v5 + v26[6];
      sub_1B964C290();
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  v6 = v5;
  v70 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  v7 = OUTLINED_FUNCTION_59_1(v70);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_251(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9038, &qword_1B9694780);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_99_7(v15, v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9040, &unk_1B964D830);
  OUTLINED_FUNCTION_59_1(v68);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_185();
  v71 = v19;
  v20 = OUTLINED_FUNCTION_113_6();
  v21 = OUTLINED_FUNCTION_59_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  v26 = v25 - v24;
  v27 = OUTLINED_FUNCTION_1_0();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
  OUTLINED_FUNCTION_183(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_238_0();
  v33 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5BB0, &qword_1B96947B0) - 8);
  v34 = *(*v33 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v35);
  v36 = OUTLINED_FUNCTION_151();
  v69 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem(v36);
  v37 = v69[7];
  v38 = v33[14];
  OUTLINED_FUNCTION_309_1();
  OUTLINED_FUNCTION_309_1();
  OUTLINED_FUNCTION_37_0(v2);
  if (v43)
  {
    OUTLINED_FUNCTION_37_0(v2 + v38);
    if (v43)
    {
      sub_1B8D9207C(v2, &qword_1EBAC5B58, &qword_1B9694778);
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_269_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2 + v38);
  if (v43)
  {
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
LABEL_14:
    v44 = &qword_1EBAC5BB0;
    v45 = &qword_1B96947B0;
LABEL_24:
    v57 = v2;
LABEL_25:
    sub_1B8D9207C(v57, v44, v45);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_0_61();
  sub_1B913EA40();
  OUTLINED_FUNCTION_201_3();
  if (v46)
  {
    v49 = v47 == v48;
  }

  else
  {
    v49 = 0;
  }

  if (!v49 && (sub_1B964C9F0() & 1) == 0 || (v50 = *(v1 + 16), v51 = *(v26 + 16), sub_1B8D611FC(), (v52 & 1) == 0))
  {
    OUTLINED_FUNCTION_31_18();
    sub_1B913FC94();
    OUTLINED_FUNCTION_74_7();
    sub_1B913FC94();
    v44 = &qword_1EBAC5B58;
    v45 = &qword_1B9694778;
    goto LABEL_24;
  }

  v53 = *(v0 + 24);
  v54 = sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v55, v56);
  OUTLINED_FUNCTION_199_0();
  OUTLINED_FUNCTION_8_31();
  sub_1B913FC94();
  OUTLINED_FUNCTION_303();
  sub_1B913FC94();
  sub_1B8D9207C(v2, &qword_1EBAC5B58, &qword_1B9694778);
  if ((v54 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_6:
  v39 = v69[8];
  v40 = *(v68 + 48);
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_235_1();
  v41 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_44(v41, v42);
  if (!v43)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_48(v71 + v40);
    if (!v59)
    {
      OUTLINED_FUNCTION_2_35();
      sub_1B913EA40();
      OUTLINED_FUNCTION_461();
      static Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.== infix(_:_:)();
      OUTLINED_FUNCTION_39_8();
      sub_1B913FC94();
      OUTLINED_FUNCTION_128();
      sub_1B913FC94();
      sub_1B8D9207C(v71, &qword_1EBAB9038, &qword_1B9694780);
      if ((v70 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_33;
    }

    OUTLINED_FUNCTION_6_22();
    sub_1B913FC94();
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_48(v71 + v40);
  if (!v43)
  {
LABEL_31:
    v44 = &qword_1EBAB9040;
    v45 = &unk_1B964D830;
    v57 = v71;
    goto LABEL_25;
  }

  sub_1B8D9207C(v71, &qword_1EBAB9038, &qword_1B9694780);
LABEL_33:
  v60 = *(v4 + 8);
  if (sub_1B8D92198(*v6, *(v6 + 8), *v4))
  {
    v61 = *(v6 + 16);
    v62 = *(v4 + 16);
    sub_1B8D6100C();
    if (v63)
    {
      v64 = v69[6];
      sub_1B964C2B0();
      OUTLINED_FUNCTION_1_52();
      sub_1B8CD28D0(v65, v66);
      v58 = sub_1B964C850();
      goto LABEL_27;
    }
  }

LABEL_26:
  v58 = 0;
LABEL_27:
  OUTLINED_FUNCTION_264(v58);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B914F1D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC6078, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B914F254(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5F60, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B914F2C4()
{
  sub_1B8CD28D0(&qword_1EBAC5F60, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B914F344()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC59D0);
  __swift_project_value_buffer(v0, qword_1EBAC59D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ROW_LAYOUT_UNKNOWN";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ROW_LAYOUT_HORIZONTAL";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ROW_LAYOUT_VERTICAL";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

void sub_1B914F61C()
{
  OUTLINED_FUNCTION_99_2();
  while (1)
  {
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_98_2();
      sub_1B9156564();
    }
  }
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_TableHeaderItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_310_1(), OUTLINED_FUNCTION_4_32(), sub_1B8CD28D0(v2, v3), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_749(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    v5 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableHeaderItem(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B914F7E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC6070, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableHeaderItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B914F868(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5F78, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableHeaderItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B914F8D8()
{
  sub_1B8CD28D0(&qword_1EBAC5F78, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableHeaderItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B914F964()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5A00);
  __swift_project_value_buffer(v0, qword_1EBAC5A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "columnValues";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "image_resource";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Siri_Platform_Watchos_TableRowItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B914FD08();
        break;
      case 2:
        OUTLINED_FUNCTION_183_5();
        OUTLINED_FUNCTION_9();
        sub_1B9156564();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B914FC54();
        break;
    }
  }
}

uint64_t sub_1B914FC54()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem(0) + 24);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  sub_1B8CD28D0(&qword_1EBAC5BA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);
  return sub_1B964C580();
}

uint64_t sub_1B914FD08()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem(0) + 28);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  sub_1B8CD28D0(&qword_1EBAC5BD8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Platform_Watchos_TableRowItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_259_1(v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9038, &qword_1B9694780);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_185();
  v41 = v10;
  v11 = OUTLINED_FUNCTION_201();
  v42 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v11);
  v12 = OUTLINED_FUNCTION_59_1(v42);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_21();
  v15 = OUTLINED_FUNCTION_190_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_183(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_211_2();
  v21 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  v22 = OUTLINED_FUNCTION_59_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_62();
  v25 = OUTLINED_FUNCTION_204_3();
  v43 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem(v25);
  v26 = *(v43 + 24);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  v27 = OUTLINED_FUNCTION_208_3();
  OUTLINED_FUNCTION_178(v27, v28, v21);
  if (v29)
  {
    sub_1B8D9207C(v0, &qword_1EBAC5B58, &qword_1B9694778);
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    sub_1B913EA40();
    OUTLINED_FUNCTION_4_32();
    sub_1B8CD28D0(v30, v31);
    OUTLINED_FUNCTION_272_2();
    OUTLINED_FUNCTION_258_2();
    sub_1B964C740();
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
    if (v1)
    {
      goto LABEL_14;
    }
  }

  if (*(*v2 + 16))
  {
    OUTLINED_FUNCTION_4_32();
    sub_1B8CD28D0(v32, v33);
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_258_2();
    sub_1B964C730();
    v34 = v43;
    if (v1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v34 = v43;
  }

  v35 = *(v34 + 28);
  sub_1B8D92024();
  v36 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v36, v37, v42);
  if (v29)
  {
    sub_1B8D9207C(v41, &qword_1EBAB9038, &qword_1B9694780);
LABEL_13:
    v40 = v2 + *(v34 + 20);
    sub_1B964C290();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_2_35();
  sub_1B913EA40();
  OUTLINED_FUNCTION_13_21();
  sub_1B8CD28D0(v38, v39);
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_258_2();
  sub_1B964C740();
  OUTLINED_FUNCTION_6_22();
  sub_1B913FC94();
  if (!v1)
  {
    goto LABEL_13;
  }

LABEL_14:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Platform_Watchos_TableRowItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  v6 = v5;
  v69 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  v7 = OUTLINED_FUNCTION_59_1(v69);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_251(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9038, &qword_1B9694780);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_99_7(v15, v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9040, &unk_1B964D830);
  OUTLINED_FUNCTION_59_1(v67);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_185();
  v70 = v19;
  v20 = OUTLINED_FUNCTION_113_6();
  v21 = OUTLINED_FUNCTION_59_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  v26 = v25 - v24;
  v27 = OUTLINED_FUNCTION_1_0();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
  OUTLINED_FUNCTION_183(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_238_0();
  v33 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5BB0, &qword_1B96947B0) - 8);
  v34 = *(*v33 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v35);
  v36 = OUTLINED_FUNCTION_151();
  v68 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem(v36);
  v37 = v68[6];
  v38 = v33[14];
  OUTLINED_FUNCTION_309_1();
  OUTLINED_FUNCTION_309_1();
  OUTLINED_FUNCTION_37_0(v2);
  if (v46)
  {
    OUTLINED_FUNCTION_37_0(v2 + v38);
    if (v46)
    {
      sub_1B8D9207C(v2, &qword_1EBAC5B58, &qword_1B9694778);
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_269_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2 + v38);
  if (v46)
  {
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
LABEL_15:
    v47 = &qword_1EBAC5BB0;
    v48 = &qword_1B96947B0;
LABEL_25:
    v60 = v2;
LABEL_26:
    sub_1B8D9207C(v60, v47, v48);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_0_61();
  sub_1B913EA40();
  OUTLINED_FUNCTION_201_3();
  if (v49)
  {
    v52 = v50 == v51;
  }

  else
  {
    v52 = 0;
  }

  if (!v52 && (sub_1B964C9F0() & 1) == 0 || (v53 = *(v1 + 16), v54 = *(v26 + 16), sub_1B8D611FC(), (v55 & 1) == 0))
  {
    OUTLINED_FUNCTION_31_18();
    sub_1B913FC94();
    OUTLINED_FUNCTION_74_7();
    sub_1B913FC94();
    v47 = &qword_1EBAC5B58;
    v48 = &qword_1B9694778;
    goto LABEL_25;
  }

  v56 = *(v0 + 24);
  v57 = sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v58, v59);
  OUTLINED_FUNCTION_199_0();
  OUTLINED_FUNCTION_8_31();
  sub_1B913FC94();
  OUTLINED_FUNCTION_303();
  sub_1B913FC94();
  sub_1B8D9207C(v2, &qword_1EBAC5B58, &qword_1B9694778);
  if ((v57 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_6:
  v39 = *v6;
  v40 = *v4;
  sub_1B8D6100C();
  if (v41)
  {
    v42 = v68[7];
    v43 = *(v67 + 48);
    OUTLINED_FUNCTION_235_1();
    OUTLINED_FUNCTION_235_1();
    v44 = OUTLINED_FUNCTION_538();
    OUTLINED_FUNCTION_44(v44, v45);
    if (v46)
    {
      OUTLINED_FUNCTION_48(v70 + v43);
      if (v46)
      {
        sub_1B8D9207C(v70, &qword_1EBAB9038, &qword_1B9694780);
        goto LABEL_34;
      }
    }

    else
    {
      sub_1B8D92024();
      OUTLINED_FUNCTION_48(v70 + v43);
      if (!v62)
      {
        OUTLINED_FUNCTION_2_35();
        sub_1B913EA40();
        OUTLINED_FUNCTION_461();
        static Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.== infix(_:_:)();
        OUTLINED_FUNCTION_39_8();
        sub_1B913FC94();
        OUTLINED_FUNCTION_128();
        sub_1B913FC94();
        sub_1B8D9207C(v70, &qword_1EBAB9038, &qword_1B9694780);
        if ((v69 & 1) == 0)
        {
          goto LABEL_27;
        }

LABEL_34:
        v63 = v68[5];
        sub_1B964C2B0();
        OUTLINED_FUNCTION_1_52();
        sub_1B8CD28D0(v64, v65);
        v61 = OUTLINED_FUNCTION_239_2();
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_6_22();
      sub_1B913FC94();
    }

    v47 = &qword_1EBAB9040;
    v48 = &unk_1B964D830;
    v60 = v70;
    goto LABEL_26;
  }

LABEL_27:
  v61 = 0;
LABEL_28:
  OUTLINED_FUNCTION_264(v61);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B915061C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC6068, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B915069C(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5F90, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B915070C()
{
  sub_1B8CD28D0(&qword_1EBAC5F90, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B91507A4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5A18);
  __swift_project_value_buffer(v0, qword_1EBAC5A18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "decorated_title";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "decorated_value";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "image_resource";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B9150BBC();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B9150B08();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9150A60(v3, v4, v5, v6, v7);
        break;
    }
  }

  return result;
}

uint64_t sub_1B9150A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 20);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  OUTLINED_FUNCTION_4_32();
  sub_1B8CD28D0(v6, v7);
  return sub_1B964C580();
}

uint64_t sub_1B9150B08()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(0) + 24);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  sub_1B8CD28D0(&qword_1EBAC5BA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);
  return sub_1B964C580();
}

uint64_t sub_1B9150BBC()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(0) + 28);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  sub_1B8CD28D0(&qword_1EBAC5BD8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9038, &qword_1B9694780);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_99_7(v6, v42);
  v44 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  v7 = OUTLINED_FUNCTION_59_1(v44);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_251(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B58, &qword_1B9694778);
  v12 = OUTLINED_FUNCTION_183(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_66();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_304_1();
  v20 = OUTLINED_FUNCTION_59_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_219_0();
  v24 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(0);
  v25 = v24[5];
  sub_1B8D92024();
  v26 = OUTLINED_FUNCTION_208_3();
  OUTLINED_FUNCTION_178(v26, v27, v19);
  if (v28)
  {
    sub_1B8D9207C(v0, &qword_1EBAC5B58, &qword_1B9694778);
    v31 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    OUTLINED_FUNCTION_616();
    sub_1B913EA40();
    OUTLINED_FUNCTION_4_32();
    sub_1B8CD28D0(v29, v30);
    OUTLINED_FUNCTION_597_0();
    sub_1B964C740();
    v31 = v1;
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
    if (v1)
    {
      goto LABEL_14;
    }
  }

  v32 = v24[6];
  sub_1B8D92024();
  v33 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v33, v34, v19);
  if (v28)
  {
    sub_1B8D9207C(v17, &qword_1EBAC5B58, &qword_1B9694778);
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    sub_1B913EA40();
    OUTLINED_FUNCTION_4_32();
    sub_1B8CD28D0(v35, v36);
    OUTLINED_FUNCTION_257_0();
    OUTLINED_FUNCTION_270_2();
    sub_1B964C740();
    v31 = v1;
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
    if (v1)
    {
      goto LABEL_14;
    }
  }

  v37 = v24[7];
  sub_1B8D92024();
  v38 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v38, v39, v44);
  if (v28)
  {
    sub_1B8D9207C(v43, &qword_1EBAB9038, &qword_1B9694780);
LABEL_13:
    OUTLINED_FUNCTION_616();
    OUTLINED_FUNCTION_270_2();
    sub_1B964C290();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_2_35();
  sub_1B913EA40();
  OUTLINED_FUNCTION_13_21();
  sub_1B8CD28D0(v40, v41);
  OUTLINED_FUNCTION_257_0();
  sub_1B964C740();
  OUTLINED_FUNCTION_6_22();
  sub_1B913FC94();
  if (!v31)
  {
    goto LABEL_13;
  }

LABEL_14:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v73 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  v2 = OUTLINED_FUNCTION_59_1(v73);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_21();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9038, &qword_1B9694780);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_185();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9040, &unk_1B964D830);
  OUTLINED_FUNCTION_59_1(v72);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_99_7(v12, v70);
  v13 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  v14 = OUTLINED_FUNCTION_59_1(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44_0();
  v71 = v17;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_266_0();
  v76 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B58, &qword_1B9694778);
  v21 = OUTLINED_FUNCTION_183(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44_0();
  v75 = v24;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_219_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5BB0, &qword_1B96947B0);
  v27 = OUTLINED_FUNCTION_59_1(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44_0();
  v78 = v30;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v31);
  v32 = OUTLINED_FUNCTION_68();
  v77 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(v32);
  v33 = v77[5];
  v34 = *(v26 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v0);
  if (v41)
  {
    OUTLINED_FUNCTION_48(v0 + v34);
    if (v41)
    {
      sub_1B8D9207C(v0, &qword_1EBAC5B58, &qword_1B9694778);
      goto LABEL_6;
    }

    goto LABEL_19;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v0 + v34);
  if (v41)
  {
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
LABEL_19:
    v42 = &qword_1EBAC5BB0;
    v43 = &qword_1B96947B0;
LABEL_47:
    v65 = v0;
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_0_61();
  sub_1B913EA40();
  v44 = *v1 == *v76 && v1[1] == v76[1];
  if (!v44 && (sub_1B964C9F0() & 1) == 0 || (v45 = v1[2], v46 = v76[2], sub_1B8D611FC(), (v47 & 1) == 0))
  {
    OUTLINED_FUNCTION_14_19();
    sub_1B913FC94();
    sub_1B913FC94();
    v42 = &qword_1EBAC5B58;
    v43 = &qword_1B9694778;
    goto LABEL_47;
  }

  v48 = *(v13 + 24);
  v49 = sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v50, v51);
  OUTLINED_FUNCTION_731();
  OUTLINED_FUNCTION_8_31();
  sub_1B913FC94();
  OUTLINED_FUNCTION_190_0();
  sub_1B913FC94();
  sub_1B8D9207C(v0, &qword_1EBAC5B58, &qword_1B9694778);
  if ((v49 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_6:
  v35 = v77[6];
  v36 = *(v26 + 48);
  OUTLINED_FUNCTION_225_4();
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v78);
  if (v41)
  {
    OUTLINED_FUNCTION_48(v78 + v36);
    if (v41)
    {
      sub_1B8D9207C(v78, &qword_1EBAC5B58, &qword_1B9694778);
LABEL_11:
      v37 = v77[7];
      v38 = *(v72 + 48);
      v0 = v74;
      OUTLINED_FUNCTION_235_1();
      OUTLINED_FUNCTION_235_1();
      v39 = OUTLINED_FUNCTION_207();
      OUTLINED_FUNCTION_44(v39, v40);
      if (v41)
      {
        OUTLINED_FUNCTION_48(v74 + v38);
        if (v41)
        {
          sub_1B8D9207C(v74, &qword_1EBAB9038, &qword_1B9694780);
          goto LABEL_52;
        }
      }

      else
      {
        sub_1B8D92024();
        OUTLINED_FUNCTION_48(v74 + v38);
        if (!v66)
        {
          OUTLINED_FUNCTION_2_35();
          sub_1B913EA40();
          OUTLINED_FUNCTION_196();
          static Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.== infix(_:_:)();
          OUTLINED_FUNCTION_39_8();
          sub_1B913FC94();
          sub_1B913FC94();
          sub_1B8D9207C(v74, &qword_1EBAB9038, &qword_1B9694780);
          if ((v73 & 1) == 0)
          {
            goto LABEL_49;
          }

LABEL_52:
          sub_1B964C2B0();
          OUTLINED_FUNCTION_1_52();
          sub_1B8CD28D0(v68, v69);
          OUTLINED_FUNCTION_272_2();
          v67 = sub_1B964C850();
          goto LABEL_50;
        }

        OUTLINED_FUNCTION_6_22();
        sub_1B913FC94();
      }

      v42 = &qword_1EBAB9040;
      v43 = &unk_1B964D830;
      goto LABEL_47;
    }

    goto LABEL_32;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v78 + v36);
  if (v52)
  {
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
LABEL_32:
    v42 = &qword_1EBAC5BB0;
    v43 = &qword_1B96947B0;
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_0_61();
  sub_1B913EA40();
  v53 = *v75;
  v54 = v75[1];
  OUTLINED_FUNCTION_292_1();
  if (v55)
  {
    v58 = v56 == v57;
  }

  else
  {
    v58 = 0;
  }

  if (v58 || (sub_1B964C9F0() & 1) != 0)
  {
    v59 = v75[2];
    v60 = *(v71 + 16);
    sub_1B8D611FC();
    if (v61)
    {
      v62 = *(v13 + 24);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_1_52();
      sub_1B8CD28D0(v63, v64);
      LOBYTE(v62) = sub_1B964C850();
      OUTLINED_FUNCTION_31_18();
      sub_1B913FC94();
      sub_1B913FC94();
      sub_1B8D9207C(v78, &qword_1EBAC5B58, &qword_1B9694778);
      if ((v62 & 1) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_11;
    }
  }

  OUTLINED_FUNCTION_14_19();
  sub_1B913FC94();
  sub_1B913FC94();
  v42 = &qword_1EBAC5B58;
  v43 = &qword_1B9694778;
LABEL_42:
  v65 = v78;
LABEL_48:
  sub_1B8D9207C(v65, v42, v43);
LABEL_49:
  v67 = 0;
LABEL_50:
  OUTLINED_FUNCTION_264(v67);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B915179C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC6060, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B915181C(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5FA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B915188C()
{
  sub_1B8CD28D0(&qword_1EBAC5FA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity);

  return sub_1B964C5D0();
}

uint64_t sub_1B9151924()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5A30);
  __swift_project_value_buffer(v0, qword_1EBAC5A30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "first_item";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "second_item";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "foot_note";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9151B84(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  OUTLINED_FUNCTION_57_0(v6);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1B9151C94()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_Platform_Watchos_ComparisonItemP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__firstItem;
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_Platform_Watchos_ComparisonItemP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__secondItem, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_Platform_Watchos_ComparisonItemP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__footNote;
  v4 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  return v0;
}

uint64_t sub_1B9151D24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B58, &qword_1B9694778);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B68, &unk_1B9694790);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_Platform_Watchos_ComparisonItemP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__firstItem;
  v6 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_Platform_Watchos_ComparisonItemP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__secondItem, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_Platform_Watchos_ComparisonItemP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__footNote;
  v8 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v0;
}

uint64_t sub_1B915200C()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_Platform_Watchos_ComparisonItemP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__firstItem, &qword_1EBAC5B68, &unk_1B9694790);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_Platform_Watchos_ComparisonItemP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__secondItem, &qword_1EBAC5B68, &unk_1B9694790);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Siri_Platform_Watchos_ComparisonItemP33_2E11D6A37D6A83009B72DFD7965786D213_StorageClass__footNote, &qword_1EBAC5B58, &qword_1B9694778);
  return v0;
}

uint64_t sub_1B91520AC(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void sub_1B915215C()
{
  OUTLINED_FUNCTION_273_0();
  v2 = v1;
  v20 = v3;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = *(v13(0) + 20);
  v15 = *(v0 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v0 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = v5(0);
    OUTLINED_FUNCTION_57_0(v18);
    swift_allocObject();
    v19 = OUTLINED_FUNCTION_40_0();
    v17 = v20(v19);
    *(v6 + v14) = v17;
  }

  v2(v17, v12, v10, v8);
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9152210()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1B9152478();
        break;
      case 2:
        sub_1B915239C();
        break;
      case 1:
        sub_1B91522C0();
        break;
    }
  }

  return result;
}

uint64_t sub_1B91522C0()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(0);
  sub_1B8CD28D0(&qword_1EBAC5FA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B915239C()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(0);
  sub_1B8CD28D0(&qword_1EBAC5FA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9152478()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  sub_1B8CD28D0(&qword_1EBAC5BA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9152584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v8 = *(v5 + *(a4(0) + 20));
  OUTLINED_FUNCTION_12();
  result = a5();
  if (!v6)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B91525FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B58, &qword_1B9694778);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v25 = v24 - v6;
  v26 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  v7 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B68, &unk_1B9694790);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v24 - v14;
  v16 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v24[2] = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAC5B68, &unk_1B9694790);
    v20 = v27;
  }

  else
  {
    sub_1B913EA40();
    sub_1B8CD28D0(&qword_1EBAC5FA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity);
    v21 = v27;
    sub_1B964C740();
    v20 = v21;
    result = sub_1B913FC94();
    if (v21)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v13, 1, v16) == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAC5B68, &unk_1B9694790);
  }

  else
  {
    sub_1B913EA40();
    sub_1B8CD28D0(&qword_1EBAC5FA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity);
    sub_1B964C740();
    result = sub_1B913FC94();
    if (v20)
    {
      return result;
    }
  }

  swift_beginAccess();
  v23 = v25;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v26) == 1)
  {
    return sub_1B8D9207C(v23, &qword_1EBAC5B58, &qword_1B9694778);
  }

  sub_1B913EA40();
  sub_1B8CD28D0(&qword_1EBAC5BA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);
  sub_1B964C740();
  return sub_1B913FC94();
}

uint64_t sub_1B9152B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = OUTLINED_FUNCTION_280();
  v9 = *(v8(v7) + 20);
  if (*(v5 + v9) != *(v4 + v9))
  {
    v10 = *(v5 + v9);

    v11 = OUTLINED_FUNCTION_177_1();
    v12 = a4(v11);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v13, v14);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

BOOL sub_1B9152BFC(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v59 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  v2 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5BB0, &qword_1B96947B0);
  v4 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B58, &qword_1B9694778);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v56 - v10;
  v11 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6110, "Rr\v");
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v65 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v56 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B68, &unk_1B9694790);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v61 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v64 = &v56 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v67 = &v56 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v56 - v28;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v63 = v14;
  v30 = *(v14 + 48);
  v31 = v11;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v11) == 1)
  {

    sub_1B8D9207C(v29, &qword_1EBAC5B68, &unk_1B9694790);
    if (__swift_getEnumTagSinglePayload(&v19[v30], 1, v11) == 1)
    {
      sub_1B8D9207C(v19, &qword_1EBAC5B68, &unk_1B9694790);
      goto LABEL_9;
    }

LABEL_6:
    sub_1B8D9207C(v19, &qword_1EBAC6110, "Rr\v");
    goto LABEL_15;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(&v19[v30], 1, v11) == 1)
  {

    sub_1B8D9207C(v29, &qword_1EBAC5B68, &unk_1B9694790);
    sub_1B913FC94();
    goto LABEL_6;
  }

  sub_1B913EA40();

  static Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity.== infix(_:_:)();
  v33 = v32;
  sub_1B913FC94();
  sub_1B8D9207C(v29, &qword_1EBAC5B68, &unk_1B9694790);
  sub_1B913FC94();
  sub_1B8D9207C(v19, &qword_1EBAC5B68, &unk_1B9694790);
  if ((v33 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  swift_beginAccess();
  v34 = v64;
  sub_1B8D92024();
  swift_beginAccess();
  v35 = *(v63 + 48);
  v36 = v65;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v36, 1, v31) == 1)
  {
    sub_1B8D9207C(v34, &qword_1EBAC5B68, &unk_1B9694790);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36 + v35, 1, v31);
    v38 = v66;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v36, &qword_1EBAC5B68, &unk_1B9694790);
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  sub_1B8D92024();
  v39 = __swift_getEnumTagSinglePayload(v36 + v35, 1, v31);
  v38 = v66;
  if (v39 == 1)
  {
    sub_1B8D9207C(v34, &qword_1EBAC5B68, &unk_1B9694790);
    sub_1B913FC94();
LABEL_14:
    sub_1B8D9207C(v36, &qword_1EBAC6110, "Rr\v");
LABEL_15:

    return 0;
  }

  sub_1B913EA40();
  static Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity.== infix(_:_:)();
  v42 = v41;
  sub_1B913FC94();
  sub_1B8D9207C(v34, &qword_1EBAC5B68, &unk_1B9694790);
  sub_1B913FC94();
  sub_1B8D9207C(v36, &qword_1EBAC5B68, &unk_1B9694790);
  if ((v42 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v43 = *(v58 + 48);
  v44 = v60;
  sub_1B8D92024();
  sub_1B8D92024();
  v45 = v59;
  if (__swift_getEnumTagSinglePayload(v44, 1, v59) != 1)
  {
    v46 = v57;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v44 + v43, 1, v45) == 1)
    {

      sub_1B8D9207C(v38, &qword_1EBAC5B58, &qword_1B9694778);
      sub_1B913FC94();
      goto LABEL_24;
    }

    v50 = v56;
    sub_1B913EA40();
    v51 = *v46 == *v50 && v46[1] == v50[1];
    if (!v51 && (sub_1B964C9F0() & 1) == 0 || (v52 = v46[2], v53 = v50[2], sub_1B8D611FC(), (v54 & 1) == 0))
    {

      sub_1B913FC94();
      sub_1B8D9207C(v38, &qword_1EBAC5B58, &qword_1B9694778);
      sub_1B913FC94();
      v49 = v44;
      v47 = &qword_1EBAC5B58;
      v48 = &qword_1B9694778;
      goto LABEL_34;
    }

    v55 = *(v45 + 24);
    sub_1B964C2B0();
    sub_1B8CD28D0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
    LOBYTE(v55) = sub_1B964C850();

    sub_1B913FC94();
    sub_1B8D9207C(v38, &qword_1EBAC5B58, &qword_1B9694778);
    sub_1B913FC94();
    sub_1B8D9207C(v44, &qword_1EBAC5B58, &qword_1B9694778);
    return (v55 & 1) != 0;
  }

  sub_1B8D9207C(v38, &qword_1EBAC5B58, &qword_1B9694778);
  if (__swift_getEnumTagSinglePayload(v44 + v43, 1, v45) != 1)
  {
LABEL_24:
    v47 = &qword_1EBAC5BB0;
    v48 = &qword_1B96947B0;
    v49 = v44;
LABEL_34:
    sub_1B8D9207C(v49, v47, v48);
    return 0;
  }

  sub_1B8D9207C(v44, &qword_1EBAC5B58, &qword_1B9694778);
  return 1;
}

uint64_t sub_1B915379C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC6058, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B915381C(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5FC0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B915388C()
{
  sub_1B8CD28D0(&qword_1EBAC5FC0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem);

  return sub_1B964C5D0();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_SnippetObject.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_432();
      OUTLINED_FUNCTION_24_3();
      sub_1B91539AC(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B91539AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9050, &qword_1B964D840);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject.OneOf_Object(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6108, "Rr\v");
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  v28 = v13;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB9050, &qword_1B964D840);
  }

  else
  {
    sub_1B913EA40();
    sub_1B913EA40();
    sub_1B8D9207C(v22, &qword_1EBAC6108, "Rr\v");
    sub_1B913EA40();
    sub_1B913EA40();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
  }

  sub_1B8CD28D0(&qword_1EBAC5CA0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer);
  v24 = v31;
  sub_1B964C580();
  if (v24)
  {
    v25 = v22;
    return sub_1B8D9207C(v25, &qword_1EBAC6108, "Rr\v");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC6108, "Rr\v");
    v25 = v20;
    return sub_1B8D9207C(v25, &qword_1EBAC6108, "Rr\v");
  }

  sub_1B913EA40();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v22, &qword_1EBAC6108, "Rr\v");
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB9050, &qword_1B964D840);
  sub_1B913EA40();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
}

void Apple_Parsec_Siri_Platform_Watchos_SnippetObject.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9050, &qword_1B964D840);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_231_1();
  v7 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer(0);
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_192_4();
  sub_1B8D92024();
  v11 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject.OneOf_Object(0);
  OUTLINED_FUNCTION_178(v2, 1, v11);
  if (v12)
  {
    sub_1B8D9207C(v2, &qword_1EBAB9050, &qword_1B964D840);
LABEL_5:
    v13 = v0 + *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject(0) + 20);
    OUTLINED_FUNCTION_491();
    sub_1B964C290();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_29_20();
  sub_1B913EA40();
  sub_1B8CD28D0(&qword_1EBAC5CA0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer);
  OUTLINED_FUNCTION_597_0();
  sub_1B964C740();
  OUTLINED_FUNCTION_182_3();
  sub_1B913FC94();
  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Platform_Watchos_SnippetObject.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject.OneOf_Object(v1);
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_238_0();
  v6 = OUTLINED_FUNCTION_686();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9058, &qword_1B964D848);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  v17 = *(v16 + 56);
  OUTLINED_FUNCTION_92_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_92_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v0);
  if (v18)
  {
    OUTLINED_FUNCTION_50(v0 + v17);
    if (v18)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9050, &qword_1B964D840);
LABEL_12:
      v21 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject(0) + 20);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_1_52();
      sub_1B8CD28D0(v22, v23);
      v19 = OUTLINED_FUNCTION_634();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v0 + v17);
  if (v18)
  {
    OUTLINED_FUNCTION_171_2();
    sub_1B913FC94();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAB9058, &qword_1B964D848);
    goto LABEL_10;
  }

  sub_1B913EA40();
  OUTLINED_FUNCTION_246();
  v20 = static Apple_Parsec_Siri_Platform_Watchos_SnippetObject.OneOf_Object.== infix(_:_:)();
  sub_1B913FC94();
  sub_1B913FC94();
  sub_1B8D9207C(v0, &qword_1EBAB9050, &qword_1B964D840);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v19 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v19);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B91542FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC6050, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B915437C(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5B78, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91543EC()
{
  sub_1B8CD28D0(&qword_1EBAC5B78, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject);

  return sub_1B964C5D0();
}

uint64_t sub_1B9154484()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5A68);
  __swift_project_value_buffer(v0, qword_1EBAC5A68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "lines";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void sub_1B91546CC()
{
  OUTLINED_FUNCTION_273_0();
  v0 = OUTLINED_FUNCTION_114_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_128();
  sub_1B8CD28D0(v2, v3);
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_272_0();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Answer.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
  {
    if (!*(*(v2 + 16) + 16) || (type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer.Line(0), sub_1B8CD28D0(&qword_1EBAC5CB0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer.Line), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
    {
      v7 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B915489C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC6048, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B915491C(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5CA0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B915498C()
{
  sub_1B8CD28D0(&qword_1EBAC5CA0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer);

  return sub_1B964C5D0();
}

uint64_t sub_1B9154A0C()
{
  result = MEMORY[0x1BFADC850](0x656E694C2ELL, 0xE500000000000000);
  qword_1EBAC5A80 = 0xD000000000000029;
  *algn_1EBAC5A88 = 0x80000001B9709100;
  return result;
}

uint64_t static Apple_Parsec_Siri_Platform_Watchos_Answer.Line.protoMessageName.getter()
{
  if (qword_1EBAB7580 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B9154AD8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5A90);
  __swift_project_value_buffer(v0, qword_1EBAC5A90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "watch_image_resource";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "is_image_inverted";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_Answer.Line.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B9154D94();
        break;
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }

  return result;
}

uint64_t sub_1B9154D94()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer.Line(0) + 28);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0);
  sub_1B8CD28D0(&qword_1EBAC5BD8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Platform_Watchos_Answer.Line.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_26_14();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9038, &qword_1B9694780);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  v9 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v8);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  v13 = *v3;
  v14 = v3[1];
  OUTLINED_FUNCTION_1();
  if (!v15 || (OUTLINED_FUNCTION_303_1(), (v0 = v1) == 0))
  {
    v16 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer.Line(0);
    v17 = *(v16 + 28);
    sub_1B8D92024();
    v18 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v18, v19, v9);
    if (v20)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9038, &qword_1B9694780);
    }

    else
    {
      OUTLINED_FUNCTION_2_35();
      sub_1B913EA40();
      OUTLINED_FUNCTION_13_21();
      sub_1B8CD28D0(v21, v22);
      OUTLINED_FUNCTION_683_0();
      OUTLINED_FUNCTION_17_15();
      sub_1B964C740();
      v0 = v1;
      OUTLINED_FUNCTION_6_22();
      sub_1B913FC94();
      if (v1)
      {
        goto LABEL_10;
      }
    }

    if (*(v3 + 16) != 1 || (sub_1B964C670(), !v0))
    {
      v23 = v3 + *(v16 + 24);
      OUTLINED_FUNCTION_248_1();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Platform_Watchos_Answer.Line.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_280();
  v4 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v3);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_238_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9038, &qword_1B9694780);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9040, &unk_1B964D830);
  OUTLINED_FUNCTION_59_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  v16 = *v1;
  v17 = v1[1];
  OUTLINED_FUNCTION_428();
  v20 = v20 && v18 == v19;
  if (!v20 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_17;
  }

  v28 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer.Line(0);
  v21 = *(v28 + 28);
  v22 = *(v12 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v2);
  if (!v20)
  {
    OUTLINED_FUNCTION_177_1();
    sub_1B8D92024();
    OUTLINED_FUNCTION_50(v2 + v22);
    if (!v23)
    {
      OUTLINED_FUNCTION_2_35();
      sub_1B913EA40();
      OUTLINED_FUNCTION_246();
      static Apple_Parsec_Siri_Platform_Watchos_WatchImageResource.== infix(_:_:)();
      OUTLINED_FUNCTION_172_2();
      sub_1B913FC94();
      sub_1B913FC94();
      sub_1B8D9207C(v2, &qword_1EBAB9038, &qword_1B9694780);
      if ((v4 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    OUTLINED_FUNCTION_6_22();
    sub_1B913FC94();
LABEL_14:
    sub_1B8D9207C(v2, &qword_1EBAB9040, &unk_1B964D830);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_50(v2 + v22);
  if (!v20)
  {
    goto LABEL_14;
  }

  sub_1B8D9207C(v2, &qword_1EBAB9038, &qword_1B9694780);
LABEL_16:
  if (*(v1 + 16) == *(v0 + 16))
  {
    v25 = *(v28 + 24);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_1_52();
    sub_1B8CD28D0(v26, v27);
    v24 = OUTLINED_FUNCTION_634();
    goto LABEL_18;
  }

LABEL_17:
  v24 = 0;
LABEL_18:
  OUTLINED_FUNCTION_264(v24);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9155308(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC6040, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer.Line);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9155388(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC5CB0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer.Line);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91553F8()
{
  sub_1B8CD28D0(&qword_1EBAC5CB0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer.Line);

  return sub_1B964C5D0();
}

uint64_t sub_1B9155484()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC5AA8);
  __swift_project_value_buffer(v0, qword_1EBAC5AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "decorated_value";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "footer";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "decorated_footer";
  *(v15 + 1) = 16;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B9155794();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B9155848();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9155794()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem(0) + 28);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  sub_1B8CD28D0(&qword_1EBAC5BA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);
  return sub_1B964C580();
}

uint64_t sub_1B9155848()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem(0) + 32);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  sub_1B8CD28D0(&qword_1EBAC5BA8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_289_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B58, &qword_1B9694778);
  v4 = OUTLINED_FUNCTION_183(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_66();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_68();
  v12 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(v11);
  v13 = OUTLINED_FUNCTION_59_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_441();
  v17 = *v2;
  v18 = v2[1];
  OUTLINED_FUNCTION_1();
  if (!v19 || (sub_1B964C700(), !v0))
  {
    v35 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem(0);
    v20 = *(v35 + 28);
    sub_1B8D92024();
    v21 = OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_178(v21, v22, v12);
    if (v23)
    {
      sub_1B8D9207C(v1, &qword_1EBAC5B58, &qword_1B9694778);
    }

    else
    {
      OUTLINED_FUNCTION_0_61();
      OUTLINED_FUNCTION_186();
      sub_1B913EA40();
      OUTLINED_FUNCTION_4_32();
      sub_1B8CD28D0(v24, v25);
      OUTLINED_FUNCTION_288_0();
      sub_1B964C740();
      OUTLINED_FUNCTION_3_34();
      sub_1B913FC94();
      if (v0)
      {
        goto LABEL_16;
      }
    }

    v26 = v2[2];
    v27 = v2[3];
    OUTLINED_FUNCTION_1();
    if (v28)
    {
      sub_1B964C700();
      v29 = v35;
      if (v0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v29 = v35;
    }

    OUTLINED_FUNCTION_285_1(*(v29 + 32));
    sub_1B8D92024();
    v30 = OUTLINED_FUNCTION_443();
    OUTLINED_FUNCTION_178(v30, v31, v12);
    if (v23)
    {
      sub_1B8D9207C(v9, &qword_1EBAC5B58, &qword_1B9694778);
LABEL_15:
      v34 = v2 + *(v29 + 24);
      OUTLINED_FUNCTION_466();
      sub_1B964C290();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_0_61();
    sub_1B913EA40();
    OUTLINED_FUNCTION_4_32();
    sub_1B8CD28D0(v32, v33);
    OUTLINED_FUNCTION_272_2();
    sub_1B964C740();
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
    if (!v0)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v4 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_66();
  v10 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v67 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B58, &qword_1B9694778);
  v15 = OUTLINED_FUNCTION_183(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44_0();
  v71 = v18;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_441();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5BB0, &qword_1B96947B0);
  v21 = OUTLINED_FUNCTION_59_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_66();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_219_0();
  OUTLINED_FUNCTION_201_3();
  v30 = v30 && v28 == v29;
  if (!v30 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_37;
  }

  v70 = v26;
  v68 = v10;
  v31 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem(0);
  v72 = v0;
  v69 = v31;
  v32 = *(v31 + 28);
  v33 = *(v20 + 48);
  sub_1B8D92024();
  v34 = v72;
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v3);
  if (v30)
  {
    OUTLINED_FUNCTION_99_0(v3 + v33);
    if (v30)
    {
      sub_1B8D9207C(v3, &qword_1EBAC5B58, &qword_1B9694778);
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  OUTLINED_FUNCTION_502();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v3 + v33);
  if (v44)
  {
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
LABEL_25:
    v45 = &qword_1EBAC5BB0;
    v46 = &qword_1B96947B0;
LABEL_35:
    v55 = v3;
LABEL_36:
    sub_1B8D9207C(v55, v45, v46);
LABEL_37:
    v43 = 0;
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_0_61();
  sub_1B913EA40();
  v47 = *v2 == *v13 && v2[1] == v13[1];
  if (!v47 && (sub_1B964C9F0() & 1) == 0 || (v48 = v2[2], v49 = v13[2], sub_1B8D611FC(), (v50 & 1) == 0))
  {
    OUTLINED_FUNCTION_14_19();
    sub_1B913FC94();
    OUTLINED_FUNCTION_182();
    sub_1B913FC94();
    v45 = &qword_1EBAC5B58;
    v46 = &qword_1B9694778;
    goto LABEL_35;
  }

  v51 = *(v4 + 24);
  v52 = sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v53, v54);
  v34 = v72;
  sub_1B964C850();
  OUTLINED_FUNCTION_8_31();
  sub_1B913FC94();
  OUTLINED_FUNCTION_1_0();
  sub_1B913FC94();
  sub_1B8D9207C(v3, &qword_1EBAC5B58, &qword_1B9694778);
  if ((v52 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_11:
  v35 = *(v1 + 16) == *(v34 + 16) && *(v1 + 24) == *(v34 + 24);
  if (!v35 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_37;
  }

  v37 = v69;
  v36 = v70;
  v38 = *(v69 + 32);
  v39 = *(v20 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v36);
  if (v30)
  {
    OUTLINED_FUNCTION_99_0(v36 + v39);
    if (v30)
    {
      sub_1B8D9207C(v36, &qword_1EBAC5B58, &qword_1B9694778);
      goto LABEL_21;
    }

    goto LABEL_42;
  }

  v56 = v71;
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v36 + v39);
  if (v57)
  {
    OUTLINED_FUNCTION_3_34();
    sub_1B913FC94();
LABEL_42:
    v45 = &qword_1EBAC5BB0;
    v46 = &qword_1B96947B0;
LABEL_52:
    v55 = v36;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_0_61();
  v58 = v68;
  sub_1B913EA40();
  v59 = *v56 == *v58 && v56[1] == v58[1];
  if (!v59 && (sub_1B964C9F0() & 1) == 0 || (v60 = v56[2], v61 = v58[2], sub_1B8D611FC(), (v62 & 1) == 0))
  {
    OUTLINED_FUNCTION_14_19();
    sub_1B913FC94();
    sub_1B913FC94();
    v45 = &qword_1EBAC5B58;
    v46 = &qword_1B9694778;
    goto LABEL_52;
  }

  v63 = *(v4 + 24);
  v64 = sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v65, v66);
  sub_1B964C850();
  OUTLINED_FUNCTION_8_31();
  sub_1B913FC94();
  OUTLINED_FUNCTION_502();
  sub_1B913FC94();
  sub_1B8D9207C(v36, &qword_1EBAC5B58, &qword_1B9694778);
  if ((v64 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_21:
  v40 = *(v37 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v41, v42);
  v43 = sub_1B964C850();
LABEL_38:
  OUTLINED_FUNCTION_264(v43);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B91561DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC6038, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B915625C(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC6008, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91562CC()
{
  sub_1B8CD28D0(&qword_1EBAC6008, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem);

  return sub_1B964C5D0();
}

void sub_1B9156384()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1B964C780();
  __swift_allocate_value_buffer(v8, v7);
  __swift_project_value_buffer(v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B964D050;
  v13 = v12 + v11 + v9[14];
  *(v12 + v11) = 1;
  *v13 = v5;
  *(v13 + 8) = v3;
  *(v13 + 16) = 2;
  v14 = *v1;
  v15 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1(v15);
  (*(v16 + 104))(v13, v14);
  sub_1B964C760();
  OUTLINED_FUNCTION_242();
}

void sub_1B9156564()
{
  OUTLINED_FUNCTION_273_0();
  v0 = OUTLINED_FUNCTION_114_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_128();
  sub_1B8CD28D0(v2, v3);
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_272_0();
}

uint64_t Apple_Parsec_Siri_Platform_Watchos_ImageCollectionItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(0), OUTLINED_FUNCTION_13_21(), sub_1B8CD28D0(v2, v3), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_749(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    v5 = *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ImageCollectionItem(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B9156688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_468();
  if ((v7(*v5, *v6) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a4(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_52();
  sub_1B8CD28D0(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9156760()
{
  OUTLINED_FUNCTION_111_0();
  v1 = v0;
  sub_1B964CA70();
  v1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD28D0(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9156838(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD28D0(&qword_1EBAC6030, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ImageCollectionItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91568B8(uint64_t a1)
{
  v2 = sub_1B8CD28D0(&qword_1EBAC6020, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ImageCollectionItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9156928()
{
  sub_1B8CD28D0(&qword_1EBAC6020, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ImageCollectionItem);

  return sub_1B964C5D0();
}

unint64_t sub_1B91569C8()
{
  result = qword_1EBAC5B88;
  if (!qword_1EBAC5B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5B88);
  }

  return result;
}

unint64_t sub_1B9156A1C()
{
  result = qword_1EBAC5BC8;
  if (!qword_1EBAC5BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5BC8);
  }

  return result;
}

unint64_t sub_1B9156A70()
{
  result = qword_1EBAC5C10;
  if (!qword_1EBAC5C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5C10);
  }

  return result;
}

unint64_t sub_1B9156AC4()
{
  result = qword_1EBAC5C20;
  if (!qword_1EBAC5C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5C20);
  }

  return result;
}

unint64_t sub_1B9156B18()
{
  result = qword_1EBAC5C28;
  if (!qword_1EBAC5C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5C28);
  }

  return result;
}

unint64_t sub_1B9156B6C()
{
  result = qword_1EBAC5C50;
  if (!qword_1EBAC5C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5C50);
  }

  return result;
}

unint64_t sub_1B9156BC0()
{
  result = qword_1EBAC5C70;
  if (!qword_1EBAC5C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5C70);
  }

  return result;
}

unint64_t sub_1B9156C18()
{
  result = qword_1EBAC5CD8;
  if (!qword_1EBAC5CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5CD8);
  }

  return result;
}

unint64_t sub_1B9156C70()
{
  result = qword_1EBAC5CE0;
  if (!qword_1EBAC5CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5CE0);
  }

  return result;
}

unint64_t sub_1B9156CC8()
{
  result = qword_1EBAC5CE8;
  if (!qword_1EBAC5CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5CE8);
  }

  return result;
}

unint64_t sub_1B9156D50()
{
  result = qword_1EBAC5D00;
  if (!qword_1EBAC5D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5D00);
  }

  return result;
}

unint64_t sub_1B9156DA8()
{
  result = qword_1EBAC5D08;
  if (!qword_1EBAC5D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5D08);
  }

  return result;
}

unint64_t sub_1B9156E00()
{
  result = qword_1EBAC5D10;
  if (!qword_1EBAC5D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5D10);
  }

  return result;
}

unint64_t sub_1B9156E88()
{
  result = qword_1EBAC5D28;
  if (!qword_1EBAC5D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5D28);
  }

  return result;
}

unint64_t sub_1B9156EE0()
{
  result = qword_1EBAC5D30;
  if (!qword_1EBAC5D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5D30);
  }

  return result;
}

unint64_t sub_1B9156F38()
{
  result = qword_1EBAC5D38;
  if (!qword_1EBAC5D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5D38);
  }

  return result;
}

unint64_t sub_1B9156FC0()
{
  result = qword_1EBAC5D50;
  if (!qword_1EBAC5D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5D50);
  }

  return result;
}

unint64_t sub_1B9157018()
{
  result = qword_1EBAC5D58;
  if (!qword_1EBAC5D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5D58);
  }

  return result;
}

unint64_t sub_1B9157070()
{
  result = qword_1EBAC5D60;
  if (!qword_1EBAC5D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5D60);
  }

  return result;
}

unint64_t sub_1B91570C8()
{
  result = qword_1EBAC5D68;
  if (!qword_1EBAC5D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5D68);
  }

  return result;
}

unint64_t sub_1B9157120()
{
  result = qword_1EBAC5D70;
  if (!qword_1EBAC5D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5D70);
  }

  return result;
}

unint64_t sub_1B9157178()
{
  result = qword_1EBAC5D78;
  if (!qword_1EBAC5D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5D78);
  }

  return result;
}

unint64_t sub_1B9157230()
{
  result = qword_1EBAC5DA0;
  if (!qword_1EBAC5DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5DA0);
  }

  return result;
}

unint64_t sub_1B9157288()
{
  result = qword_1EBAC5DA8;
  if (!qword_1EBAC5DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5DA8);
  }

  return result;
}

unint64_t sub_1B91572E0()
{
  result = qword_1EBAC5DB0;
  if (!qword_1EBAC5DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5DB0);
  }

  return result;
}

unint64_t sub_1B9157368()
{
  result = qword_1EBAC5DC8;
  if (!qword_1EBAC5DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5DC8);
  }

  return result;
}

unint64_t sub_1B91573C0()
{
  result = qword_1EBAC5DD0;
  if (!qword_1EBAC5DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5DD0);
  }

  return result;
}

unint64_t sub_1B9157418()
{
  result = qword_1EBAC5DD8;
  if (!qword_1EBAC5DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC5DD8);
  }

  return result;
}

void sub_1B9159324()
{
  sub_1B9159420(319, &qword_1ED9CF5A8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TemplateItem, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B9159420(319, &qword_1ED9CF590, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B9159420(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B915954C()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B9159420(319, &qword_1ED9EB860, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9159660()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B9159420(319, &qword_1ED9EB388, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B9159420(319, &qword_1ED9EB4D8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedString, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_127Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  OUTLINED_FUNCTION_166_6();
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_194_1();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_266();
  }

  v9 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void __swift_store_extra_inhabitant_index_128Tm()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_279_1();
    OUTLINED_FUNCTION_128_1(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_196_2();
    }

    else
    {
      v5 = OUTLINED_FUNCTION_186();
      __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
      OUTLINED_FUNCTION_258_0();
    }

    v7 = OUTLINED_FUNCTION_61_0(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

void sub_1B9159928()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_175_6();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

void sub_1B9159A14()
{
  sub_1B9159420(319, &qword_1ED9CF598, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B9159420(319, &qword_1ED9EB860, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B9159BC8()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_169Tm()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 28);
  v4 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t __swift_store_extra_inhabitant_index_170Tm()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B9159DD0()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_123_1();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_180_1();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_136Tm()
{
  OUTLINED_FUNCTION_468();
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_753();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B58, &qword_1B9694778);
    OUTLINED_FUNCTION_194_1();
    v4 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t __swift_store_extra_inhabitant_index_137Tm()
{
  OUTLINED_FUNCTION_365_0();
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_231();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC5B58, &qword_1B9694778);
    OUTLINED_FUNCTION_196_2();
  }

  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void sub_1B9159FA4()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B9159420(319, &qword_1ED9EB860, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

void sub_1B915A0CC()
{
  sub_1B9159420(319, &qword_1ED9CF598, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B9159420(319, &qword_1ED9EB860, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B9159420(319, &qword_1ED9EB388, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B915A2B4()
{
  sub_1B9159420(319, &qword_1ED9CF598, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B9159420(319, &qword_1ED9EB860, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B9159420(319, &qword_1ED9EB388, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B915A420()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B9159420(319, &qword_1ED9EB860, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B9159420(319, &qword_1ED9EB388, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B915A55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B964C2B0();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      return OUTLINED_FUNCTION_180_1();
    }
  }

  return result;
}

uint64_t sub_1B915A638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_232Tm_0);
}

uint64_t sub_1B915A690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_125Tm_3_0);
}

uint64_t sub_1B915A6F8(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t __swift_get_extra_inhabitant_index_232Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_166_6();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_266();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B915A850(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1B9159420(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v5 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v6 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

void sub_1B915A94C()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_175_6();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_196Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  OUTLINED_FUNCTION_166_6();
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_266();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_267_0();
  }

  v9 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void __swift_store_extra_inhabitant_index_197Tm()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_279_1();
    OUTLINED_FUNCTION_128_1(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_258_0();
    }

    else
    {
      v5 = OUTLINED_FUNCTION_186();
      __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
      OUTLINED_FUNCTION_259_0();
    }

    v7 = OUTLINED_FUNCTION_61_0(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

void sub_1B915AB5C()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B9159420(319, &qword_1ED9EB860, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_298Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_166_6();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_194_1();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_299Tm()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_169_1();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_196_2();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_1B915AD40(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_1B9159420(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

void sub_1B915ADCC()
{
  sub_1B9159420(319, &qword_1ED9EBD58, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeaderItem, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v32 = *(v0 - 8) + 64;
    sub_1B9159420(319, &qword_1ED9EB830, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SubheaderItem, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v33 = *(v2 - 8) + 64;
      sub_1B9159420(319, &qword_1ED9EB848, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_HeroImageItem, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v34 = *(v4 - 8) + 64;
        sub_1B9159420(319, &qword_1ED9EB8A8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_BodyTextItem, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v35 = *(v6 - 8) + 64;
          sub_1B9159420(319, &qword_1ED9EBCA0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_MapViewItem, MEMORY[0x1E69E6720]);
          if (v9 <= 0x3F)
          {
            v36 = *(v8 - 8) + 64;
            sub_1B9159420(319, &qword_1ED9EB480, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_PropertyListItem, MEMORY[0x1E69E6720]);
            if (v11 <= 0x3F)
            {
              v37 = *(v10 - 8) + 64;
              sub_1B9159420(319, &qword_1ED9EBCB8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_KeylineItem, MEMORY[0x1E69E6720]);
              if (v13 <= 0x3F)
              {
                v38 = *(v12 - 8) + 64;
                sub_1B9159420(319, &qword_1ED9EB520, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_LineDetailItem, MEMORY[0x1E69E6720]);
                if (v15 <= 0x3F)
                {
                  v39 = *(v14 - 8) + 64;
                  sub_1B9159420(319, &qword_1ED9EBD70, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ButtonItem, MEMORY[0x1E69E6720]);
                  if (v17 <= 0x3F)
                  {
                    v40 = *(v16 - 8) + 64;
                    sub_1B9159420(319, &qword_1ED9EB3B8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ColumnDataListItem, MEMORY[0x1E69E6720]);
                    if (v19 <= 0x3F)
                    {
                      v41 = *(v18 - 8) + 64;
                      sub_1B9159420(319, &qword_1ED9EB4C0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableHeaderItem, MEMORY[0x1E69E6720]);
                      if (v21 <= 0x3F)
                      {
                        v42 = *(v20 - 8) + 64;
                        sub_1B9159420(319, &qword_1ED9EB890, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TableRowItem, MEMORY[0x1E69E6720]);
                        if (v23 <= 0x3F)
                        {
                          v43 = *(v22 - 8) + 64;
                          sub_1B9159420(319, &qword_1ED9EB538, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonItem, MEMORY[0x1E69E6720]);
                          if (v25 <= 0x3F)
                          {
                            v44 = *(v24 - 8) + 64;
                            sub_1B9159420(319, &qword_1ED9EB4F0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_AttributionItem, MEMORY[0x1E69E6720]);
                            if (v27 <= 0x3F)
                            {
                              v45 = *(v26 - 8) + 64;
                              sub_1B9159420(319, &qword_1ED9EB3A0, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SpecificAnswerItem, MEMORY[0x1E69E6720]);
                              if (v29 <= 0x3F)
                              {
                                v46 = *(v28 - 8) + 64;
                                sub_1B9159420(319, &qword_1ED9EB370, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ImageCollectionItem, MEMORY[0x1E69E6720]);
                                if (v31 <= 0x3F)
                                {
                                  v47 = *(v30 - 8) + 64;
                                  swift_updateClassMetadata2();
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1B915B4E4()
{
  sub_1B9159420(319, &qword_1ED9EB498, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_ComparisonEntity, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B9159420(319, &qword_1ED9EB860, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t OUTLINED_FUNCTION_10_27(uint64_t a1)
{
  *(v1 + 8) = a1;
  result = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
  *(v1 + 16) = result;
  v3 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_18(uint64_t a1)
{
  *(v2 + 48) = a1;
  result = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Value(0);
  v4 = *(v1 + *(result + 20));
  return result;
}

void OUTLINED_FUNCTION_24_18()
{
  *v1 = 0;
  *(v1 + 8) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0;
  *(v1 + 40) = 0;
  *(v1 + 56) = v0;
  *(v1 + 64) = 0;
  *(v1 + 72) = v0;
}

uint64_t OUTLINED_FUNCTION_73_8(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Value(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_94_9()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Value._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_143_4()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_147_5@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1;
  v4 = v1 + *(v2 + 24);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_162_2(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Value(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_175_6()
{
  v3 = MEMORY[0x1E69E6720];

  sub_1B9159420(319, v1, v0, v3);
}

uint64_t OUTLINED_FUNCTION_188_2@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1;
  v4 = v1 + *(v2 + 24);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_194_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_198_2()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_200_3(uint64_t a1)
{
  v3 = v1 + *(a1 + 20);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_201_3()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_207_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_212_3(__n128 a1)
{
  v1[5] = a1;
  v4 = v1 + *(v2 + 52);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_237_2()
{

  return sub_1B913EA40();
}

uint64_t OUTLINED_FUNCTION_238_2()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_239_2()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_248_1()
{

  return sub_1B964C290();
}

uint64_t OUTLINED_FUNCTION_279_1()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_282_2()
{
  v3 = v0 + *(v1 + 20);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_283_3()
{
  v3 = v1 + *(v0 + 20);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_284_1()
{

  return sub_1B913FC94();
}

uint64_t OUTLINED_FUNCTION_303_1()
{

  return sub_1B964C700();
}

uint64_t OUTLINED_FUNCTION_304_1()
{

  return type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_DecoratedText(0);
}

uint64_t OUTLINED_FUNCTION_305_1()
{

  return sub_1B913FC94();
}

uint64_t OUTLINED_FUNCTION_307_0()
{
  v3 = v1 + *(v0 + 24);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_309_1()
{

  return sub_1B8D92024();
}

unint64_t Apple_Parsec_Siri_V1alpha_StatusCode.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B915C178@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V1alpha_StatusCode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B915C1AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B915C74C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_V1alpha_StatusCode.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAC6198 = a1;
}

uint64_t sub_1B915C2F4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V1alpha_StatusCode.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B915C31C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC61A0);
  __swift_project_value_buffer(v0, qword_1EBAC61A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "StatusOK";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "StatusError";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "StatusNoResults";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Apple_Parsec_Siri_V1alpha_StatusCode._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB75A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAC61A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1B915C5CC()
{
  result = qword_1EBAC61B8;
  if (!qword_1EBAC61B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC61B8);
  }

  return result;
}

unint64_t sub_1B915C624()
{
  result = qword_1EBAC61C0;
  if (!qword_1EBAC61C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC61C0);
  }

  return result;
}

unint64_t sub_1B915C67C()
{
  result = qword_1EBAC61C8;
  if (!qword_1EBAC61C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC61C8);
  }

  return result;
}

unint64_t sub_1B915C6D4()
{
  result = qword_1EBAC61D0;
  if (!qword_1EBAC61D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAC61D8, &qword_1B96981A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC61D0);
  }

  return result;
}

unint64_t sub_1B915C74C()
{
  result = qword_1EBAC61E0;
  if (!qword_1EBAC61E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC61E0);
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.name.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.subLocality.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.subLocality.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.administrativeArea.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.administrativeArea.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.subAdministrativeArea.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.subAdministrativeArea.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.country.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.country.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.isoCountryCode.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.isoCountryCode.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.postalAddress.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.postalAddress.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 120);

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.subThoroughfare.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.subThoroughfare.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 136);

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.thoroughfare.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.thoroughfare.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 152);

  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0) + 64);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(v2) + 64);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(v0) + 64);
  return nullsub_1;
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
  a1[8] = 0;
  a1[9] = 0xE000000000000000;
  a1[10] = 0;
  a1[11] = 0xE000000000000000;
  a1[12] = 0;
  a1[13] = 0xE000000000000000;
  a1[14] = 0;
  a1[15] = 0xE000000000000000;
  a1[16] = 0;
  a1[17] = 0xE000000000000000;
  a1[18] = 0;
  a1[19] = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  a1[20] = 0;
  a1[21] = 0;
  v3 = a1 + *(v2 + 64);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_Timestamp.timezone.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_Timestamp.timezone.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Timestamp.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0) + 28);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_Timestamp.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(v2) + 28);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Siri_V2alpha_Timestamp.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(v0) + 28);
  return nullsub_1;
}

uint64_t Apple_Parsec_Siri_V2alpha_Timestamp.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B915D0C0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC61E8);
  __swift_project_value_buffer(v0, qword_1EBAC61E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1B964D040;
  v4 = v32 + v3;
  v5 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v5 = "name";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "locality";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "sub_locality";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADE8];
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "administrative_area";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "sub_administrative_area";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "country";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "iso_country_code";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "postal_address";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v8();
  v23 = (v4 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "sub_thoroughfare";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v4 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "thoroughfare";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v8();
  v27 = (v4 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "latitude";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v8();
  v29 = (v4 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "longitude";
  *(v30 + 1) = 9;
  v30[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 11:
      case 12:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v9 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      v10 = *(v2 + 32);
      v11 = *(v2 + 40);
      OUTLINED_FUNCTION_1();
      if (!v12 || (result = OUTLINED_FUNCTION_3(), !v1))
      {
        v13 = *(v2 + 48);
        v14 = *(v2 + 56);
        OUTLINED_FUNCTION_1();
        if (!v15 || (result = OUTLINED_FUNCTION_3(), !v1))
        {
          v16 = *(v2 + 64);
          v17 = *(v2 + 72);
          OUTLINED_FUNCTION_1();
          if (!v18 || (result = OUTLINED_FUNCTION_3(), !v1))
          {
            v19 = *(v2 + 80);
            v20 = *(v2 + 88);
            OUTLINED_FUNCTION_1();
            if (!v21 || (result = OUTLINED_FUNCTION_3(), !v1))
            {
              v22 = *(v2 + 96);
              v23 = *(v2 + 104);
              OUTLINED_FUNCTION_1();
              if (!v24 || (result = OUTLINED_FUNCTION_3(), !v1))
              {
                v25 = *(v2 + 112);
                v26 = *(v2 + 120);
                OUTLINED_FUNCTION_1();
                if (!v27 || (result = OUTLINED_FUNCTION_3(), !v1))
                {
                  v28 = *(v2 + 128);
                  v29 = *(v2 + 136);
                  OUTLINED_FUNCTION_1();
                  if (!v30 || (result = OUTLINED_FUNCTION_3(), !v1))
                  {
                    v31 = *(v2 + 144);
                    v32 = *(v2 + 152);
                    OUTLINED_FUNCTION_1();
                    if (!v33 || (result = OUTLINED_FUNCTION_3(), !v1))
                    {
                      if (*(v2 + 160) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
                      {
                        if (*(v2 + 168) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
                        {
                          v34 = v2 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0) + 64);
                          OUTLINED_FUNCTION_12();
                          return sub_1B964C290();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72);
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88);
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104);
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120);
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 128) == *(a2 + 128) && *(a1 + 136) == *(a2 + 136);
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v13 = *(a1 + 144) == *(a2 + 144) && *(a1 + 152) == *(a2 + 152);
  if (!v13 && (sub_1B964C9F0() & 1) == 0 || *(a1 + 160) != *(a2 + 160) || *(a1 + 168) != *(a2 + 168))
  {
    return 0;
  }

  v14 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0) + 64);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_3_35();
  sub_1B8CD2918(v15, v16);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B915DA4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2918(&qword_1EBAC6260, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B915DACC(uint64_t a1)
{
  v2 = sub_1B8CD2918(&qword_1EBAC6230, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B915DB3C()
{
  sub_1B8CD2918(&qword_1EBAC6230, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes);

  return sub_1B964C5D0();
}

uint64_t sub_1B915DBD8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6200);
  __swift_project_value_buffer(v0, qword_1EBAC6200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "seconds";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "utc_offset";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "timezone";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_Timestamp.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4B0();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Timestamp.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C6D0(), !v1))
  {
    if (!v2[1] || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C6D0(), !v1))
    {
      v4 = v2[2];
      v5 = v2[3];
      OUTLINED_FUNCTION_1();
      if (!v6 || (result = OUTLINED_FUNCTION_3(), !v1))
      {
        v7 = v2 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0) + 28);
        OUTLINED_FUNCTION_12();
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_Timestamp.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v2 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_3_35();
  sub_1B8CD2918(v4, v5);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B915E048(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD2918(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B915E12C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2918(&qword_1EBAC6258, type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B915E1AC(uint64_t a1)
{
  v2 = sub_1B8CD2918(&qword_1EBAC6248, type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B915E21C()
{
  sub_1B8CD2918(&qword_1EBAC6248, type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp);

  return sub_1B964C5D0();
}

uint64_t sub_1B915E504()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B915E5CC()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.weatherAppIntentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_27_9();
  v9 = OUTLINED_FUNCTION_96_4();
  OUTLINED_FUNCTION_57(v9);
  if (v10)
  {
    sub_1B8D9207C(v1, &qword_1EBAC6330, &qword_1B96985F0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_12_24();
      OUTLINED_FUNCTION_288();
      return sub_1B916402C();
    }

    sub_1B9163FB8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v12 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(0) + 20);
  if (qword_1EBAB75C8 != -1)
  {
    OUTLINED_FUNCTION_17_19();
  }

  *(a1 + v12) = qword_1EBAC62B0;
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(0) + 20);
  if (qword_1EBAB75C8 != -1)
  {
    OUTLINED_FUNCTION_17_19();
  }

  *(a1 + v2) = qword_1EBAC62B0;
}

void Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.weatherAppIntentData.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(v8);
  OUTLINED_FUNCTION_59_1(v9);
  v11 = *(v10 + 64);
  v1[2] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v1[3] = v12;
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_643();
  v1[4] = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.OneOf_Data(0);
  OUTLINED_FUNCTION_75(v0);
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBAC6330, &qword_1B96985F0);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_12_24();
      OUTLINED_FUNCTION_128();
      sub_1B916402C();
      goto LABEL_10;
    }

    sub_1B9163FB8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v15 = *(v9 + 20);
  if (qword_1EBAB75C8 != -1)
  {
    OUTLINED_FUNCTION_17_19();
  }

  *&v12[v15] = qword_1EBAC62B0;

LABEL_10:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.clockAppIntentData.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_27_9();
  v9 = OUTLINED_FUNCTION_96_4();
  OUTLINED_FUNCTION_57(v9);
  if (v10)
  {
    sub_1B8D9207C(v1, &qword_1EBAC6330, &qword_1B96985F0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_15_18();
      OUTLINED_FUNCTION_288();
      return sub_1B916402C();
    }

    sub_1B9163FB8();
  }

  *a1 = 0;
  OUTLINED_FUNCTION_92_8();
  v13 = *(v1 + 24);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = *(v1 + 28);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  OUTLINED_FUNCTION_83();
  return __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
}

uint64_t sub_1B915EBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B9164080();
  return a7(v7);
}

uint64_t sub_1B915EC78(uint64_t a1, uint64_t a2)
{
  sub_1B8D9207C(v2, &qword_1EBAC6330, &qword_1B96985F0);
  OUTLINED_FUNCTION_128();
  sub_1B916402C();
  OUTLINED_FUNCTION_96_4();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, a2);
}

uint64_t Apple_Parsec_Siri_V2alpha_ClockAppIntentData.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  OUTLINED_FUNCTION_92_8();
  v2 = *(v1 + 24);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = *(v1 + 28);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.clockAppIntentData.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(v8);
  OUTLINED_FUNCTION_59_1(v9);
  v11 = *(v10 + 64);
  v1[2] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v1[3] = v12;
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_643();
  v1[4] = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.OneOf_Data(0);
  OUTLINED_FUNCTION_75(v0);
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBAC6330, &qword_1B96985F0);
LABEL_7:
    *v12 = 0;
    v12[8] = 1;
    v15 = &v12[v9[5]];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = v9[6];
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    v21 = v9[7];
    type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B9163FB8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_15_18();
  OUTLINED_FUNCTION_128();
  sub_1B916402C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B915EF4C()
{
  OUTLINED_FUNCTION_284();
  v1 = (*v0)[3];
  v2 = (*v0)[4];
  v3 = (*v0)[1];
  v4 = (*v0)[2];
  v5 = **v0;
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B9164080();
    sub_1B8D9207C(v5, &qword_1EBAC6330, &qword_1B96985F0);
    sub_1B916402C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
    sub_1B9163FB8();
  }

  else
  {
    sub_1B8D9207C(**v0, &qword_1EBAC6330, &qword_1B96985F0);
    sub_1B916402C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v2);
  }

  free(v1);
  free(v4);
  free(v3);
  OUTLINED_FUNCTION_283();

  free(v13);
}

uint64_t (*Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData(v0) + 20);
  return nullsub_1;
}

void static Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.OneOf_Data.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(0);
  v2 = OUTLINED_FUNCTION_183(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_62();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(0);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v33 = v10 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.OneOf_Data(0);
  v12 = OUTLINED_FUNCTION_59_1(v11);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6338, &qword_1B96985F8);
  OUTLINED_FUNCTION_183(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_139();
  v23 = *(v22 + 56);
  sub_1B9164080();
  sub_1B9164080();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_36_6();
    sub_1B9164080();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_15_18();
      sub_1B916402C();
      static Apple_Parsec_Siri_V2alpha_ClockAppIntentData.== infix(_:_:)();
      sub_1B9163FB8();
      sub_1B9163FB8();
      OUTLINED_FUNCTION_3_36();
      sub_1B9163FB8();
      goto LABEL_10;
    }

LABEL_5:
    sub_1B9163FB8();
    sub_1B8D9207C(v0, &qword_1EBAC6338, &qword_1B96985F8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_36_6();
  sub_1B9164080();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_12_24();
  v24 = v33;
  sub_1B916402C();
  v25 = *(v5 + 20);
  v26 = *&v17[v25];
  v27 = *(v24 + v25);
  if (v26 == v27 || (v28 = *&v17[v25], , , v29 = sub_1B91658A0(v26, v27), , , v29))
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_2_36();
    sub_1B8CD2960(v30, v31);
    OUTLINED_FUNCTION_461();
    sub_1B964C850();
  }

  OUTLINED_FUNCTION_43_10();
  sub_1B9163FB8();
  OUTLINED_FUNCTION_128();
  sub_1B9163FB8();
  OUTLINED_FUNCTION_3_36();
  sub_1B9163FB8();
LABEL_10:
  OUTLINED_FUNCTION_283();
}

uint64_t static Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_18_17();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {
    v5 = *(v1 + v2);

    v6 = sub_1B91658A0(v3, v4);

    if (!v6)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_36();
  sub_1B8CD2960(v7, v8);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

void static Apple_Parsec_Siri_V2alpha_ClockAppIntentData.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_280();
  v69 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(v2);
  v3 = OUTLINED_FUNCTION_59_1(v69);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6340, &qword_1B9698600);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v68 = &v65 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6348, &qword_1B9698608);
  OUTLINED_FUNCTION_59_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v65 - v18;
  v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  v21 = OUTLINED_FUNCTION_59_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6350, &qword_1B9698610);
  OUTLINED_FUNCTION_183(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v65 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6358, &qword_1B9698618);
  OUTLINED_FUNCTION_59_1(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v65 - v37;
  v70 = v1;
  v39 = *v1;
  v40 = *v0;
  if (*(v0 + 8) != 1)
  {
    if (v39 != v40)
    {
      goto LABEL_46;
    }

LABEL_6:
    v65 = v8;
    v67 = v19;
    v66 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(0);
    v41 = *(v66 + 24);
    v42 = *(v33 + 48);
    sub_1B8D92024();
    sub_1B8D92024();
    OUTLINED_FUNCTION_75(v38);
    if (v43)
    {
      OUTLINED_FUNCTION_75(&v38[v42]);
      if (v43)
      {
        sub_1B8D9207C(v38, &qword_1EBAC6350, &qword_1B9698610);
        goto LABEL_16;
      }
    }

    else
    {
      sub_1B8D92024();
      OUTLINED_FUNCTION_75(&v38[v42]);
      if (!v43)
      {
        OUTLINED_FUNCTION_1_53();
        sub_1B916402C();
        v47 = static Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.== infix(_:_:)(v32, v26);
        sub_1B9163FB8();
        sub_1B9163FB8();
        sub_1B8D9207C(v38, &qword_1EBAC6350, &qword_1B9698610);
        if ((v47 & 1) == 0)
        {
          goto LABEL_46;
        }

LABEL_16:
        v49 = v66;
        v48 = v67;
        v50 = *(v66 + 28);
        v51 = *(v14 + 48);
        sub_1B8D92024();
        v52 = v48;
        sub_1B8D92024();
        v53 = v69;
        OUTLINED_FUNCTION_178(v48, 1, v69);
        if (v43)
        {
          OUTLINED_FUNCTION_57(v48 + v51);
          if (v43)
          {
            sub_1B8D9207C(v48, &qword_1EBAC6340, &qword_1B9698600);
LABEL_21:
            v54 = *(v49 + 20);
            sub_1B964C2B0();
            OUTLINED_FUNCTION_2_36();
            sub_1B8CD2960(v55, v56);
            sub_1B964C850();
            goto LABEL_46;
          }
        }

        else
        {
          v57 = v68;
          sub_1B8D92024();
          OUTLINED_FUNCTION_57(v52 + v51);
          if (!v58)
          {
            OUTLINED_FUNCTION_0_62();
            v59 = v65;
            sub_1B916402C();
            if (*v57 == *v59 && v57[1] == v59[1])
            {
              v60 = v57[2] == v59[2] && v57[3] == v59[3];
              if (v60 || (sub_1B964C9F0() & 1) != 0)
              {
                v61 = *(v53 + 28);
                sub_1B964C2B0();
                OUTLINED_FUNCTION_2_36();
                sub_1B8CD2960(v62, v63);
                v64 = sub_1B964C850();
                sub_1B9163FB8();
                sub_1B9163FB8();
                sub_1B8D9207C(v52, &qword_1EBAC6340, &qword_1B9698600);
                if ((v64 & 1) == 0)
                {
                  goto LABEL_46;
                }

                goto LABEL_21;
              }
            }

            sub_1B9163FB8();
            sub_1B9163FB8();
            v44 = &qword_1EBAC6340;
            v45 = &qword_1B9698600;
            goto LABEL_44;
          }

          OUTLINED_FUNCTION_11_32();
          sub_1B9163FB8();
        }

        v44 = &qword_1EBAC6348;
        v45 = &qword_1B9698608;
LABEL_44:
        v46 = v52;
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_13_22();
      sub_1B9163FB8();
    }

    v44 = &qword_1EBAC6358;
    v45 = &qword_1B9698618;
    v46 = v38;
LABEL_45:
    sub_1B8D9207C(v46, v44, v45);
    goto LABEL_46;
  }

  switch(v40)
  {
    case 1:
      if (v39 == 1)
      {
        goto LABEL_6;
      }

      break;
    case 2:
      if (v39 == 2)
      {
        goto LABEL_6;
      }

      break;
    case 3:
      if (v39 == 3)
      {
        goto LABEL_6;
      }

      break;
    case 4:
      if (v39 == 4)
      {
        goto LABEL_6;
      }

      break;
    default:
      if (!v39)
      {
        goto LABEL_6;
      }

      break;
  }

LABEL_46:
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.OneOf_Data(v1);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = v0 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.appIntentTarget.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_10_28();
  result = OUTLINED_FUNCTION_521();
  v4 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1B915FBA4@<X0>(uint64_t a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.appIntentTarget.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1B915FBE8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.appIntentTarget.setter(&v3);
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.appIntentTarget.setter(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = OUTLINED_FUNCTION_38_6();
  v7 = *(v1 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_21_14();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B91641E4(v8);
    *(v3 + v2) = v7;
  }

  result = OUTLINED_FUNCTION_18();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.appIntentTarget.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[11] = v1;
  OUTLINED_FUNCTION_18_17();
  *(v3 + 21) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_521();
  v6 = *(v5 + 24);
  v3[9] = *(v5 + 16);
  *(v3 + 80) = v6;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B915FD1C()
{
  OUTLINED_FUNCTION_243();
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 84);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 80);
  v6 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 88);
    OUTLINED_FUNCTION_21_14();
    v11 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91641E4(v11);
    *(v10 + v9) = v8;
  }

  OUTLINED_FUNCTION_18();
  *(v8 + 16) = v2;
  *(v8 + 24) = v5;
  OUTLINED_FUNCTION_242();

  free(v12);
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.placeAttributes.getter@<X0>(void *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  v9 = *(v1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(v8) + 20));
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v2, &qword_1EBAC6350, &qword_1B9698610);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_53();
    OUTLINED_FUNCTION_182();
    return sub_1B916402C();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.placeAttributes.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6350, &qword_1B9698610);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_139();
  v6 = OUTLINED_FUNCTION_38_6();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_21_14();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91641E4(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_1_53();
  OUTLINED_FUNCTION_84_7();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.placeAttributes.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_28();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_37_9();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBAC6350, &qword_1B9698610);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_53();
    OUTLINED_FUNCTION_246();
    sub_1B916402C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.timestamp.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6340, &qword_1B9698600);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_139();
  v6 = OUTLINED_FUNCTION_38_6();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_21_14();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91641E4(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_0_62();
  OUTLINED_FUNCTION_84_7();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.timestamp.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_10_28();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_215_0();
    v14 = &v12[*(v8 + 28)];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC6340, &qword_1B9698600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_62();
    OUTLINED_FUNCTION_246();
    sub_1B916402C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B9160360()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 32);
  if (v7)
  {
    OUTLINED_FUNCTION_186();
    sub_1B9164080();
    v2(v3);
    sub_1B9163FB8();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v6);
  OUTLINED_FUNCTION_242();

  free(v8);
}

uint64_t sub_1B9160434(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  OUTLINED_FUNCTION_10_28();
  v16 = *a3;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v17 = a4(0);
  OUTLINED_FUNCTION_178(v15, 1, v17);
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  sub_1B8D9207C(v15, v5, v4);
  return v19;
}

void sub_1B9160534()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_16();
  v5 = v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(0) + 20);
  v13 = *(v0 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v0 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_21_14();
    v16 = OUTLINED_FUNCTION_40_0();
    *(v5 + v12) = sub_1B91641E4(v16);
  }

  v4(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = *v2;
  OUTLINED_FUNCTION_55_4();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.measurementUnitsShown.getter()
{
  OUTLINED_FUNCTION_18_17();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__measurementUnitsShown;
  OUTLINED_FUNCTION_521();
  v4 = *(v2 + v3);
}

uint64_t sub_1B9160664(uint64_t *a1)
{
  v1 = *a1;

  return Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.measurementUnitsShown.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.measurementUnitsShown.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_313();
  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(v3) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_21_14();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B91641E4(v8);
    *(v2 + v4) = v7;
  }

  v9 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__measurementUnitsShown;
  OUTLINED_FUNCTION_18();
  v10 = *(v7 + v9);
  *(v7 + v9) = v0;
}

void (*Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.measurementUnitsShown.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[7] = v1;
  OUTLINED_FUNCTION_18_17();
  *(v3 + 16) = v4;
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__measurementUnitsShown;
  OUTLINED_FUNCTION_521();
  v3[6] = *(v5 + v6);

  return sub_1B916079C;
}

void sub_1B916079C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    v4 = *(v2 + 56);
    v5 = *(*a1 + 48);

    Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.measurementUnitsShown.setter();
    v6 = *(v2 + 48);
  }

  else
  {
    v7 = *(v2 + 64);
    v8 = *(v2 + 56);
    v9 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v2 + 64);
      v13 = *(v2 + 56);
      OUTLINED_FUNCTION_21_14();
      v14 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B91641E4(v14);
      *(v13 + v12) = v11;
    }

    v15 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__measurementUnitsShown;
    OUTLINED_FUNCTION_18();
    v16 = *(v11 + v15);
    *(v11 + v15) = v3;
  }

  free(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.requestStartTime.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6340, &qword_1B9698600);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_139();
  v6 = OUTLINED_FUNCTION_38_6();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_21_14();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91641E4(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_0_62();
  OUTLINED_FUNCTION_84_7();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.requestStartTime.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_10_28();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_215_0();
    v14 = &v12[*(v8 + 28)];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC6340, &qword_1B9698600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_62();
    OUTLINED_FUNCTION_246();
    sub_1B916402C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9160AF8(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6340, &qword_1B9698600);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  v9 = *(v1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(v8) + 20));
  v10 = *a1;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  OUTLINED_FUNCTION_9_2();
  if (v11)
  {
    OUTLINED_FUNCTION_176_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v2, &qword_1EBAC6340, &qword_1B9698600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B916402C();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.requestEndTime.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6340, &qword_1B9698600);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_139();
  v6 = OUTLINED_FUNCTION_38_6();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_21_14();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91641E4(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_0_62();
  OUTLINED_FUNCTION_84_7();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.requestEndTime.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_10_28();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    OUTLINED_FUNCTION_215_0();
    v14 = &v12[*(v8 + 28)];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC6340, &qword_1B9698600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_62();
    OUTLINED_FUNCTION_246();
    sub_1B916402C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.wdsResponse.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  v9 = *(v1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(v8) + 20));
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_106_0();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse(0);
  OUTLINED_FUNCTION_9_2();
  if (v11)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = xmmword_1B9652FE0;
    v12 = a1 + *(v10 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v2, &qword_1EBAC6360, &qword_1B9698620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_20();
    OUTLINED_FUNCTION_182();
    return sub_1B916402C();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.wdsResponse.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6360, &qword_1B9698620);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_139();
  v6 = OUTLINED_FUNCTION_38_6();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_21_14();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91641E4(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_14_20();
  OUTLINED_FUNCTION_84_7();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_WdsResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = xmmword_1B9652FE0;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.wdsResponse.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_10_28();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    *(v12 + 1) = xmmword_1B9652FE0;
    v14 = v12 + *(v8 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC6360, &qword_1B9698620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_20();
    OUTLINED_FUNCTION_246();
    sub_1B916402C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_288();

  return v4(v3);
}

void Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.AppIntentTarget.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  switch(a2)
  {
    case 2:
      a2 = 1;
      break;
    case 3:
      a2 = 2;
      break;
    case 4:
      a2 = 3;
      break;
    case 5:
      a2 = 4;
      break;
    case 6:
      a2 = 5;
      break;
    case 7:
      a2 = 6;
      break;
    case 8:
      a2 = 7;
      break;
    case 9:
      a2 = 8;
      break;
    case 10:
      a2 = 9;
      break;
    case 11:
      a2 = 10;
      break;
    case 12:
      a2 = 11;
      break;
    case 13:
      a2 = 12;
      break;
    case 14:
      a2 = 13;
      break;
    case 15:
      a2 = 14;
      break;
    default:
      break;
  }

  *a1 = a2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.AppIntentTarget.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B9699218[result];
  }

  return result;
}

uint64_t sub_1B9161414@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.AppIntentTarget.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9161448(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9169A44();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

void Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.MeasurementUnits.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  switch(a2)
  {
    case 10:
      a2 = 3;
      break;
    case 11:
      a2 = 4;
      break;
    case 12:
      a2 = 5;
      break;
    case 13:
      a2 = 6;
      break;
    case 14:
      a2 = 7;
      break;
    case 20:
      a2 = 8;
      break;
    case 21:
      a2 = 9;
      break;
    case 30:
      a2 = 10;
      break;
    case 31:
      a2 = 11;
      break;
    case 32:
      a2 = 12;
      break;
    case 33:
      a2 = 13;
      break;
    case 34:
      a2 = 14;
      break;
    case 40:
      a2 = 15;
      break;
    case 41:
      a2 = 16;
      break;
    default:
      break;
  }

  *a1 = a2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.MeasurementUnits.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B9699290[result];
  }

  return result;
}

uint64_t sub_1B9161598@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.MeasurementUnits.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B91615CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91699F0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.AppIntentTarget.allCases.getter()
{
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_521();
}

uint64_t (*static Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.AppIntentTarget.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_55_4();
  return j_j__swift_endAccess;
}

uint64_t sub_1B91616D4@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.AppIntentTarget.allCases.getter();
  *a1 = result;
  return result;
}