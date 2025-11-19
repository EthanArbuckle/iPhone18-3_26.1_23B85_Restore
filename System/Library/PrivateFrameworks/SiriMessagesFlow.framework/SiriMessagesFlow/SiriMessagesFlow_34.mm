uint64_t sub_267E6362C@<X0>(void *a1@<X8>)
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);
  v3 = sub_267EF89F8();
  v4 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v4))
  {
    v5 = OUTLINED_FUNCTION_32();
    *v5 = 0;
    _os_log_impl(&dword_267B93000, v3, v4, "#OfferReplyReturnGroup moving to next group", v5, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  *a1 = sub_267E624E8();
  a1[1] = v6;
  v7 = *MEMORY[0x277D5BF58];
  v8 = sub_267EF4548();
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 104);

  return v11(a1, v7, v9);
}

uint64_t sub_267E63768()
{
  type metadata accessor for OfferReplyReturnGroup();

  return sub_267EF44D8();
}

uint64_t sub_267E637D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingOfferBehaviorFlowFrameResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267E638F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267E6393C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v7 = sub_267EF8A08();
  v8 = __swift_project_value_buffer(v7, qword_280240FB0);

  v9 = sub_267EF89F8();
  v10 = sub_267EF95D8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v11 = OUTLINED_FUNCTION_55_0();
    v48 = v11;
    *v3 = 136315138;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A340, &unk_267F00A50);
    v13 = MEMORY[0x26D608FD0](a2, v12);
    v15 = sub_267BA33E8(v13, v14, &v48);

    *(v3 + 4) = v15;
    OUTLINED_FUNCTION_6_20(&dword_267B93000, v16, v10, "#getUpdatedPersonList selectedPersons=%s");
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  v17 = MEMORY[0x277D84F90];
  v48 = MEMORY[0x277D84F90];
  v18 = *(a2 + 16);
  for (i = (a2 + 32); v18; --v18)
  {
    v47 = *i;
    sub_267C7B60C(&v47, &v46);
    if (v46)
    {
      MEMORY[0x26D608F90]();
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267EF9328();
      }

      sub_267EF9368();
      v17 = v48;
    }

    ++i;
  }

  if (!a3)
  {
    return v17;
  }

  v20 = sub_267BAF0DC(a3);
  if (v20 < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v21 = v20;

  if (v21 <= a1)
  {
    v28 = sub_267EF89F8();
    sub_267EF95E8();
    OUTLINED_FUNCTION_12_3();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134218240;
      *(v30 + 4) = a1;
      *(v30 + 12) = 2048;
      *(v30 + 14) = sub_267BAF0DC(a3);

      _os_log_impl(&dword_267B93000, v28, v21, "#resolvePersonsFromIntentContacts selectedIndex %ld is out of persons count: %ld", v30, 0x16u);
      OUTLINED_FUNCTION_18_2();
    }

    else
    {
    }

    return v17;
  }

  sub_267C6F008(a1, a3);
  v23 = v22;
  v25 = v24;
  if (v24)
  {
    sub_267EF9ED8();
    swift_unknownObjectRetain_n();
    v31 = swift_dynamicCastClass();
    if (!v31)
    {
      swift_unknownObjectRelease();
      v31 = MEMORY[0x277D84F90];
    }

    v32 = *(v31 + 16);

    if (__OFSUB__(v25 >> 1, v23))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v32 != (v25 >> 1) - v23)
    {
      goto LABEL_49;
    }

    v27 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v27)
    {
      goto LABEL_25;
    }

    v27 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  while (1)
  {
    sub_267C73BFC();
    v27 = v26;
LABEL_24:
    swift_unknownObjectRelease();
LABEL_25:
    v48 = v27;
    sub_267C9B508(v17);
    v8 = v48;
    v33 = a1 + 1;
    v34 = OUTLINED_FUNCTION_66();
    sub_267C74A48(v34, v35);
    result = sub_267C74A48(v21, a3);
    if ((a3 & 0xC000000000000001) == 0)
    {

LABEL_34:

      a1 = a3 & 0xFFFFFFFFFFFFFF8;
      v17 = (a3 & 0xFFFFFFFFFFFFFF8) + 32;
      v21 = (2 * v21) | 1;
      if ((v21 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_38;
    }

    if (v33 == v21)
    {

      goto LABEL_33;
    }

    if (v33 >= v21)
    {
      break;
    }

    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);

    v37 = a1 + 1;
    do
    {
      v38 = v37 + 1;
      sub_267EF9B98();
      v37 = v38;
    }

    while (v21 != v38);
LABEL_33:
    if (!(a3 >> 62))
    {
      goto LABEL_34;
    }

LABEL_37:

    a1 = sub_267EF9CC8();
    v17 = v41;
    v33 = v42;
    v21 = v43;

    if ((v21 & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    a3 = sub_267EF9ED8();
    swift_unknownObjectRetain_n();
    v44 = swift_dynamicCastClass();
    if (!v44)
    {
      swift_unknownObjectRelease();
      v44 = MEMORY[0x277D84F90];
    }

    v45 = *(v44 + 16);

    if (!__OFSUB__(v21 >> 1, v33))
    {
      if (v45 == (v21 >> 1) - v33)
      {
        v40 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (!v40)
        {
          v40 = MEMORY[0x277D84F90];
          goto LABEL_44;
        }
      }

      else
      {
        swift_unknownObjectRelease_n();
LABEL_35:
        sub_267C73BFC();
        v40 = v39;
LABEL_44:
        swift_unknownObjectRelease();
      }

      v48 = v8;
      sub_267C9B508(v40);
      return v48;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

void sub_267E6417C()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAE0, &unk_267F07D80);
  v3 = OUTLINED_FUNCTION_18(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v35 - v6;
  v36 = sub_267EF8AE8();
  v8 = OUTLINED_FUNCTION_58(v36);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_0();
  v15 = v14 - v13;
  v16 = sub_267EF2D28();
  v17 = OUTLINED_FUNCTION_58(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_0();
  sub_267EF2D18();
  v35[1] = sub_267EF2CE8();
  v20 = OUTLINED_FUNCTION_21_11();
  v21(v20);
  v22 = sub_267BAF0DC(v1);
  v23 = 0;
  v38 = v1;
  v39 = v1 & 0xC000000000000001;
  v37 = v1 & 0xFFFFFFFFFFFFFF8;
  v35[0] = v10 + 32;
  v24 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v22 == v23)
    {

      OUTLINED_FUNCTION_47();
      return;
    }

    if (v39)
    {
      v25 = MEMORY[0x26D609870](v23, v38);
    }

    else
    {
      if (v23 >= *(v37 + 16))
      {
        goto LABEL_15;
      }

      v25 = *(v38 + 8 * v23 + 32);
    }

    v26 = v25;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    sub_267EF8A68();
    sub_267EF8A78();
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    sub_267BF66B0();
    sub_267B9F98C(v7, &unk_28022BAE0, &unk_267F07D80);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = *(v24 + 16);
      sub_267C70CB0();
      v24 = v33;
    }

    v31 = *(v24 + 16);
    if (v31 >= *(v24 + 24) >> 1)
    {
      sub_267C70CB0();
      v24 = v34;
    }

    *(v24 + 16) = v31 + 1;
    (*(v10 + 32))(v24 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v31, v15, v36);
    ++v23;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_267E64670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_164_1();
  a27 = v28;
  a28 = v29;
  v31 = v30;
  v32 = [v30 disambiguationItems];
  v33 = sub_267EF92F8();

  v34 = *(v33 + 16);

  v35 = &selRef_alternatives;
  if (v34)
  {
    v35 = &selRef_disambiguationItems;
  }

  v36 = [v31 *v35];
  v37 = sub_267EF92F8();

  a16 = MEMORY[0x277D84F90];
  v38 = *(v37 + 16);
  if (v38)
  {
    v39 = v37 + 32;
    do
    {
      sub_267BA2E04(v39, &a13);
      sub_267BA7F4C(&a13, &a9);
      OUTLINED_FUNCTION_170();
      sub_267BA9F38(v40, v41, v42);
      if ((swift_dynamicCast() & 1) != 0 && a12)
      {
        MEMORY[0x26D608F90]();
        if (*((a16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        OUTLINED_FUNCTION_161_2();
        sub_267EF9368();
      }

      v39 += 32;
      --v38;
    }

    while (v38);
  }

  OUTLINED_FUNCTION_163_2();
}

void sub_267E64914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t *a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_164_1();
  a29 = v30;
  a30 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  a13 = &a18;
  a14 = v40;
  a15 = v41;

  sub_267CF2E80(v33, &a11, v35);
  v43 = v42;
  if (!sub_267BAF0DC(v42))
  {

    if (qword_280228818 != -1)
    {
LABEL_42:
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v61 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v61, qword_280240FB0);

    v62 = sub_267EF89F8();
    v63 = sub_267EF95D8();

    if (!os_log_type_enabled(v62, v63))
    {
      goto LABEL_36;
    }

    v64 = OUTLINED_FUNCTION_48();
    v65 = OUTLINED_FUNCTION_52();
    a16 = v65;
    *v64 = 136315138;
    v66 = OUTLINED_FUNCTION_161_2();
    *(v64 + 4) = sub_267BA33E8(v66, v67, v68);
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v69, v70, v71, v72, v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v65);
    OUTLINED_FUNCTION_40_0();
    goto LABEL_35;
  }

  if (sub_267BAF0DC(v43) == 1)
  {
    sub_267BBD0EC(0, (v43 & 0xC000000000000001) == 0, v43);
    if ((v43 & 0xC000000000000001) != 0)
    {
      v44 = MEMORY[0x26D609870](0, v43);
    }

    else
    {
      v44 = *(v43 + 32);
    }

    v45 = v44;

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v46 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v46, qword_280240FB0);

    v47 = v45;
    v48 = sub_267EF89F8();
    sub_267EF95D8();

    if (OUTLINED_FUNCTION_54_8())
    {
      swift_slowAlloc();
      v49 = OUTLINED_FUNCTION_55_0();
      a16 = v49;
      *v39 = 134218242;
      *(v39 + 4) = sub_267BAF0DC(v35);

      *(v39 + 12) = 2080;
      v50 = v47;
      v51 = [v50 description];
      sub_267EF9028();

      v52 = OUTLINED_FUNCTION_61_4();
      v55 = sub_267BA33E8(v52, v53, v54);

      *(v39 + 14) = v55;
      OUTLINED_FUNCTION_16_28();
      _os_log_impl(v56, v57, v58, v59, v60, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v49);
      OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_29_1();
    }

    else
    {

LABEL_38:
    }

    goto LABEL_39;
  }

  if (!v37)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v85 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v85, qword_280240FB0);
    v62 = sub_267EF89F8();
    v86 = sub_267EF95D8();
    if (!OUTLINED_FUNCTION_36(v86))
    {
      goto LABEL_36;
    }

    v87 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v87);
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v88, v89, v90, v91, v92, 2u);
LABEL_35:
    OUTLINED_FUNCTION_26();
LABEL_36:

    goto LABEL_39;
  }

  v74 = sub_267BAF0DC(v35);
  for (i = 0; v74 != i; ++i)
  {
    if ((v35 & 0xC000000000000001) != 0)
    {
      v76 = MEMORY[0x26D609870](i, v35);
    }

    else
    {
      if (i >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v76 = *(v35 + 8 * i + 32);
    }

    v77 = v76;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v78 = [v76 personHandle];
    if (v78 && (v79 = v78, v80 = sub_267C85790(), v82 = v81, v79, v82))
    {
      if (v80 == v39 && v82 == v37)
      {
        goto LABEL_38;
      }

      v84 = sub_267EF9EA8();

      if (v84)
      {
        break;
      }
    }

    else
    {
    }
  }

LABEL_39:
  OUTLINED_FUNCTION_163_2();
}

char *sub_267E64D5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_267E64FC8(a1, a2);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v4 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v4, qword_280240FB0);
  v5 = v3;
  v6 = sub_267EF89F8();
  sub_267EF95D8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v14 = OUTLINED_FUNCTION_100_8();
    *v2 = 136315138;
    v7 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229790, &qword_267EFE4C0);
    v8 = sub_267EF9098();
    v10 = sub_267BA33E8(v8, v9, &v14);

    *(v2 + 4) = v10;
    OUTLINED_FUNCTION_59_2(&dword_267B93000, v11, v12, "ContactDisambiguation# Selected person by reference: %s");
    OUTLINED_FUNCTION_11_42();
    OUTLINED_FUNCTION_40_0();
  }

  return v3;
}

char *sub_267E64FC8(uint64_t a1, uint64_t a2)
{
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v4 = sub_267EF8A08();
  __swift_project_value_buffer(v4, qword_280240FB0);
  v5 = sub_267EF89F8();
  v6 = sub_267EF95D8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136315138;
    sub_267D6C6D4(a1);
    v11 = sub_267BA33E8(v9, v10, &v27);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_267B93000, v5, v6, "Looking for item by reference '%s'", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26D60A7B0](v8, -1, -1);
    MEMORY[0x26D60A7B0](v7, -1, -1);
  }

  if (a1 != 25)
  {
    v13 = sub_267EA16B0(a1);
    if (v14)
    {
      v15 = sub_267EF89F8();
      v16 = sub_267EF95D8();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v27 = v18;
        *v17 = 136315138;
        sub_267D6C6D4(a1);
        v21 = sub_267BA33E8(v19, v20, &v27);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_267B93000, v15, v16, "Unsupported reference type %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x26D60A7B0](v18, -1, -1);
        MEMORY[0x26D60A7B0](v17, -1, -1);
      }

      return 0;
    }

    v22 = v13;
    v23 = sub_267BAF0DC(a2);
    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      if (v22 >= v23)
      {

        v24 = sub_267EF89F8();
        v25 = sub_267EF95D8();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 134218240;
          *(v26 + 4) = v22;
          *(v26 + 12) = 2048;
          *(v26 + 14) = sub_267BAF0DC(a2);

          _os_log_impl(&dword_267B93000, v24, v25, "Ordinal index %ld is out of range of %ld", v26, 0x16u);
          MEMORY[0x26D60A7B0](v26, -1, -1);
        }

        else
        {
        }

        return 0;
      }

      sub_267BBD0EC(v22, (a2 & 0xC000000000000001) == 0, a2);
      if ((a2 & 0xC000000000000001) == 0)
      {
        return *(a2 + 8 * v22 + 32);
      }
    }

    return MEMORY[0x26D609870](v22, a2);
  }

  return sub_267BF6698();
}

void sub_267E65350()
{
  OUTLINED_FUNCTION_48_0();
  v190 = v1;
  v189 = v2;
  v187 = v3;
  v191 = v0;
  v188 = v4;
  v205 = v5;
  v7 = v6;
  v8 = sub_267EF4BE8();
  v9 = OUTLINED_FUNCTION_58(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_0();
  v16 = v15 - v14;
  v17 = sub_267EF6A08();
  v18 = OUTLINED_FUNCTION_58(v17);
  v202 = v19;
  v203 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  v204 = v22;
  OUTLINED_FUNCTION_26_2();
  v199 = sub_267EF6A88();
  v23 = OUTLINED_FUNCTION_58(v199);
  v197 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_0();
  v198 = v27;
  OUTLINED_FUNCTION_26_2();
  v195 = sub_267EF6B88();
  v28 = OUTLINED_FUNCTION_58(v195);
  v194 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_0();
  v196 = v32;
  OUTLINED_FUNCTION_26_2();
  v33 = sub_267EF6B38();
  v34 = OUTLINED_FUNCTION_18(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_0();
  v193 = v37;
  OUTLINED_FUNCTION_26_2();
  v38 = sub_267EF2E38();
  v39 = OUTLINED_FUNCTION_18(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_0();
  v207 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229428, &unk_267F00E50);
  v44 = OUTLINED_FUNCTION_18(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_60();
  v206 = v47 - v48;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_45_0();
  v210 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  v52 = OUTLINED_FUNCTION_22(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_9_0();
  v56 = MEMORY[0x28223BE20](v55);
  v58 = &v182 - v57;
  v59 = MEMORY[0x28223BE20](v56);
  v61 = &v182 - v60;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_45_0();
  v209 = v62;
  OUTLINED_FUNCTION_26_2();
  v63 = sub_267EF6B18();
  v64 = OUTLINED_FUNCTION_58(v63);
  v200 = v65;
  v201 = v64;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_2_0();
  v208 = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  v70 = OUTLINED_FUNCTION_18(v69);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_60();
  v75 = (v73 - v74);
  MEMORY[0x28223BE20](v76);
  v78 = &v182 - v77;
  sub_267B9CC04(v7, (&v182 - v77));
  v79 = type metadata accessor for DirectInvocationUseCases();
  if (__swift_getEnumTagSinglePayload(v78, 1, v79) == 1)
  {
    goto LABEL_2;
  }

  sub_267C2FB6C(v78, v75, &unk_28022BBE0, qword_267EFD030);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 15)
  {
    if (EnumCaseMultiPayload == 14)
    {
      v99 = *v75;
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v100 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v100, qword_280240FB0);
      v101 = sub_267EF89F8();
      v102 = sub_267EF95D8();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = OUTLINED_FUNCTION_48();
        *v103 = 134217984;
        *(v103 + 4) = v99;
        OUTLINED_FUNCTION_16_28();
        _os_log_impl(v104, v105, v106, v107, v108, 0xCu);
        OUTLINED_FUNCTION_29_1();
      }

      sub_267E64670(v205, v109, v110, v111, v112, v113, v114, v115, v182, v183, *(&v183 + 1), v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200);
      sub_267EB0E0C(v99, v116);
      OUTLINED_FUNCTION_53_0();
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        sub_267CCEDF4(v75);
LABEL_2:
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v80 = sub_267EF8A08();
        __swift_project_value_buffer(v80, qword_280240FB0);
        (*(v11 + 16))(v16, v7, v8);
        v81 = sub_267EF89F8();
        v82 = sub_267EF95E8();
        if (os_log_type_enabled(v81, v82))
        {
          OUTLINED_FUNCTION_48();
          v83 = OUTLINED_FUNCTION_100_8();
          v214[0] = v83;
          *v58 = 136315138;
          v84 = Parse.DirectInvocation.description.getter();
          v86 = v85;
          (*(v11 + 8))(v16, v8);
          sub_267BA33E8(v84, v86, v214);
          OUTLINED_FUNCTION_61_2();

          *(v58 + 4) = v84;
          _os_log_impl(&dword_267B93000, v81, v82, "ContactDisambiguation# unexpected direct invocation: %s", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v83);
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_40_0();
        }

        else
        {

          (*(v11 + 8))(v16, v8);
        }

        goto LABEL_21;
      }

      v89 = *v75;
      v88 = v75[1];
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v90 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v90, qword_280240FB0);

      v91 = sub_267EF89F8();
      v92 = sub_267EF95D8();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = OUTLINED_FUNCTION_48();
        v94 = OUTLINED_FUNCTION_52();
        v214[0] = v94;
        *v93 = 136315138;
        v95 = OUTLINED_FUNCTION_46_2();
        *(v93 + 4) = sub_267BA33E8(v95, v96, v97);
        OUTLINED_FUNCTION_173_2(&dword_267B93000, v91, v92, "ContactDisambiguation# contact selection with itemIdentifier=%s");
        __swift_destroy_boxed_opaque_existential_0(v94);
        OUTLINED_FUNCTION_45_2();
        OUTLINED_FUNCTION_18_2();
      }

      v98 = OUTLINED_FUNCTION_46_2();
      sub_267E64808(v98);
    }

    goto LABEL_21;
  }

  v117 = *v75;
  v118 = v75[1];
  *(&v185 + 1) = v117;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v119 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v119, qword_280240FB0);

  v186 = v7;
  v120 = sub_267EF89F8();
  v121 = sub_267EF95D8();

  v122 = os_log_type_enabled(v120, v121);
  *&v185 = v118;
  if (v122)
  {
    v123 = OUTLINED_FUNCTION_48();
    v124 = OUTLINED_FUNCTION_52();
    v214[0] = v124;
    *v123 = 136315138;
    *(v123 + 4) = sub_267BA33E8(*(&v185 + 1), v118, v214);
    _os_log_impl(&dword_267B93000, v120, v121, "ContactDisambiguation# contact picker with contactId=%s", v123, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v124);
    OUTLINED_FUNCTION_45_2();
    OUTLINED_FUNCTION_26();
  }

  v125 = v191;
  v126 = (v191 + *v187);
  v127 = v126[3];
  v128 = v126[4];
  v187 = v126;
  __swift_project_boxed_opaque_existential_0(v126, v127);
  v188 = sub_267EF7C18();
  v205 = v129;
  *&v183 = sub_267BA9F38(0, v189, v190);
  v130 = v125[5];
  v131 = v125[6];
  __swift_project_boxed_opaque_existential_0(v125 + 2, v130);
  (*(v131 + 8))(v214, v130, v131);
  sub_267EF2D28();
  v132 = v209;
  OUTLINED_FUNCTION_78();
  v189 = v133;
  __swift_storeEnumTagSinglePayload(v134, v135, v136, v133);
  sub_267EF6C28();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v137, v138, v139, v140);
  LODWORD(v190) = OUTLINED_FUNCTION_28_3();
  sub_267EF6FF8();
  v141 = sub_267EF6FC8();
  v142 = v205;
  sub_267C2FB6C(v132, v61, &qword_280229430, &qword_267EFD2C0);

  v143 = sub_267EF89F8();
  v144 = sub_267EF95D8();

  v145 = os_log_type_enabled(v143, v144);
  v191 = v141;
  if (v145)
  {
    v146 = swift_slowAlloc();
    *(&v182 + 1) = swift_slowAlloc();
    v212 = v142;
    v213[0] = *(&v182 + 1);
    *v146 = 136315394;
    v211 = v188;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    v147 = sub_267EF9098();
    v149 = sub_267BA33E8(v147, v148, v213);

    *(v146 + 4) = v149;
    *(v146 + 12) = 2080;
    sub_267C2FB6C(v61, v58, &qword_280229430, &qword_267EFD2C0);
    v150 = sub_267EF9098();
    v152 = v151;
    v141 = v191;
    sub_267B9F98C(v61, &qword_280229430, &qword_267EFD2C0);
    v153 = sub_267BA33E8(v150, v152, v213);

    *(v146 + 14) = v153;
    _os_log_impl(&dword_267B93000, v143, v144, "#SiriKitContactResolving CRR config creation with appIdentifier:%s, crrCommsAppSelectionJointId:%s", v146, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_45_2();
  }

  else
  {

    sub_267B9F98C(v61, &qword_280229430, &qword_267EFD2C0);
  }

  v154 = v189;
  if (v141 && (sub_267EF6F98(), v155 = sub_267EF37B8(), v157 = v156, , v157))
  {
    *(&v182 + 1) = v155;
  }

  else
  {

    *(&v182 + 1) = 0;
  }

  v211 = v183;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229438, &unk_267F01FB0);
  sub_267EF9098();
  __swift_project_boxed_opaque_existential_0(v214, v214[3]);
  OUTLINED_FUNCTION_37_1();
  sub_267EF3B68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v158 = swift_allocObject();
  v183 = xmmword_267EFC020;
  *(v158 + 16) = xmmword_267EFC020;
  v159 = 0x8000000267F10280;
  v160 = v206;
  v161 = 0xD000000000000013;
  if (v205)
  {
    v161 = v188;
    v159 = v205;
  }

  *(v158 + 32) = v161;
  *(v158 + 40) = v159;
  sub_267C2FB6C(v210, v160, &qword_280229428, &unk_267F00E50);
  v162 = v192;
  sub_267C2FB6C(v209, v192, &qword_280229430, &qword_267EFD2C0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v162, 1, v154);

  if (EnumTagSinglePayload == 1)
  {
    sub_267B9F98C(v162, &qword_280229430, &qword_267EFD2C0);
  }

  else
  {
    sub_267EF2CE8();
    (*(*(v154 - 1) + 8))(v162, v154);
  }

  sub_267EF6B28();
  (*(v194 + 104))(v196, *MEMORY[0x277D56148], v195);
  (*(v197 + 104))(v198, *MEMORY[0x277D560D0], v199);
  sub_267EF6AF8();

  sub_267B9F98C(v210, &qword_280229428, &unk_267F00E50);
  sub_267B9F98C(v209, &qword_280229430, &qword_267EFD2C0);
  __swift_destroy_boxed_opaque_existential_0(v214);
  v164 = v204;
  sub_267EF69F8();
  sub_267EF6978();
  __swift_project_boxed_opaque_existential_0(v187, v187[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B00, &unk_267EFEF90);
  v165 = v202;
  v166 = *(v202 + 72);
  v167 = (*(v202 + 80) + 32) & ~*(v202 + 80);
  v168 = swift_allocObject();
  *(v168 + 16) = v183;
  (*(v165 + 16))(v168 + v167, v164, v203);
  v169 = sub_267EF6888();

  v170 = sub_267EF89F8();
  v171 = sub_267EF95D8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v172 = OUTLINED_FUNCTION_55_0();
    v214[0] = v172;
    *v168 = 136315138;
    v173 = sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v174 = MEMORY[0x26D608FD0](v169, v173);
    v176 = sub_267BA33E8(v174, v175, v214);

    *(v168 + 4) = v176;
    OUTLINED_FUNCTION_6_20(&dword_267B93000, v177, v171, "ContactDisambiguation# resolved to %s");
    __swift_destroy_boxed_opaque_existential_0(v172);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  if (sub_267BAF0DC(v169))
  {
    sub_267BBD0EC(0, (v169 & 0xC000000000000001) == 0, v169);
    if ((v169 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D609870](0, v169);
    }

    else
    {
      v178 = *(v169 + 32);
    }

    OUTLINED_FUNCTION_53_0();
  }

  else
  {
  }

  v179 = *(v165 + 8);
  v180 = OUTLINED_FUNCTION_19_25();
  v181(v180);
  (*(v200 + 8))(v208, v201);
LABEL_21:
  sub_267B9F98C(v78, &unk_28022BBE0, qword_267EFD030);
  OUTLINED_FUNCTION_47();
}

void sub_267E664F0()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v70 = v0;
  v9 = v7[3];
  v10 = v7[4];
  v11 = OUTLINED_FUNCTION_131(v7);
  if (sub_267E58398(v11, v10))
  {
    sub_267EC4E04();
    v10 = v12;

    if (*(v10 + 16))
    {
      goto LABEL_11;
    }
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v13 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v13, qword_280240FB0);
  v14 = sub_267EF89F8();
  v15 = sub_267EF95D8();
  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_48();
    v16 = OUTLINED_FUNCTION_55_0();
    v69[0] = v16;
    *v10 = 136315138;
    v17 = sub_267EDBC50(v4);
    v19 = sub_267BA33E8(v17, v18, v69);

    *(v10 + 4) = v19;
    OUTLINED_FUNCTION_6_20(&dword_267B93000, v20, v15, "#resolvePersonsFromIntentContacts No sms contact for role %s -> fallback to all roles");
    __swift_destroy_boxed_opaque_existential_0(v16);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  v21 = v8[3];
  v22 = v8[4];
  v23 = OUTLINED_FUNCTION_131(v8);
  if (sub_267E58398(v23, v22))
  {
    sub_267EC4E04();
    v10 = v24;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

LABEL_11:
  if (*(v10 + 16))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v25 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v25, qword_280240FB0);
    v26 = sub_267EF89F8();
    v27 = sub_267EF95D8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_32();
      *v28 = 0;
      _os_log_impl(&dword_267B93000, v26, v27, "#resolvePersonsFromIntentContacts Found contact(s) in input", v28, 2u);
      OUTLINED_FUNCTION_18_2();
    }

    MEMORY[0x28223BE20](v29);
    v67[2] = &v70;
    v67[3] = v6;
    sub_267DA4ECC(v2, v67, v10);

    goto LABEL_33;
  }

  v30 = v8[3];
  v31 = v8[4];
  v32 = OUTLINED_FUNCTION_46_2();
  __swift_project_boxed_opaque_existential_0(v32, v33);
  v34 = *(v31 + 408);
  v35 = OUTLINED_FUNCTION_37_1();
  v37 = v36(v35);
  if (v37 == 37)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v38 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v38, qword_280240FB0);
    v39 = sub_267EF89F8();
    v40 = sub_267EF95D8();
    if (!OUTLINED_FUNCTION_36(v40))
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v41 = v37;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v42 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v42, qword_280240FB0);
  v43 = sub_267EF89F8();
  v44 = sub_267EF95D8();
  if (os_log_type_enabled(v43, v44))
  {
    OUTLINED_FUNCTION_48();
    v45 = OUTLINED_FUNCTION_55_0();
    v69[0] = v45;
    *v31 = 136315138;
    v68 = v41;
    v46 = sub_267EF9098();
    v48 = sub_267BA33E8(v46, v47, v69);

    *(v31 + 4) = v48;
    _os_log_impl(&dword_267B93000, v43, v44, "#resolvePersonsFromIntentContacts Found reference %s in input", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    OUTLINED_FUNCTION_45_2();
    OUTLINED_FUNCTION_29_1();
  }

  v49 = sub_267E64E7C(v41, v6);
  if (!v49)
  {
    v39 = sub_267EF89F8();
    v60 = sub_267EF95D8();
    if (!OUTLINED_FUNCTION_36(v60))
    {
LABEL_32:

      goto LABEL_33;
    }

LABEL_31:
    v61 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v61);
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v62, v63, v64, v65, v66, 2u);
    OUTLINED_FUNCTION_26();
    goto LABEL_32;
  }

  v50 = v49;
  v51 = sub_267EF89F8();
  sub_267EF95D8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v69[0] = OUTLINED_FUNCTION_100_8();
    *v43 = 136315138;
    v52 = [v50 displayName];
    sub_267EF9028();

    v53 = OUTLINED_FUNCTION_68_0();
    v56 = sub_267BA33E8(v53, v54, v55);

    *(v43 + 4) = v56;
    OUTLINED_FUNCTION_59_2(&dword_267B93000, v57, v58, "#resolvePersonsFromIntentContacts Found person %s by reference");
    OUTLINED_FUNCTION_11_42();
    OUTLINED_FUNCTION_40_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v59 = OUTLINED_FUNCTION_47_3();
  *(v59 + 16) = xmmword_267EFCA40;
  *(v59 + 32) = v50;
LABEL_33:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267E66A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  OUTLINED_FUNCTION_22_0();
  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267E66AB8()
{
  OUTLINED_FUNCTION_12();
  __swift_project_boxed_opaque_existential_0((v0[6] + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_featureFlags), *(v0[6] + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_featureFlags + 24));
  if (sub_267CC8B28())
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[7] = v1;
    *v1 = v2;
    v3 = OUTLINED_FUNCTION_29_30(v1);

    return sub_267E66DD0(v3, v4, v5, v6);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[8] = v8;
    *v8 = v9;
    v10 = OUTLINED_FUNCTION_29_30(v8);

    return sub_267E67EF8(v10, v11, v12, v13);
  }
}

uint64_t sub_267E66BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_267E66BE8, 0, 0);
}

uint64_t sub_267E66BE8()
{
  OUTLINED_FUNCTION_12();
  __swift_project_boxed_opaque_existential_0((v0[6] + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags), *(v0[6] + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags + 24));
  if (sub_267CC8B28())
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[7] = v1;
    *v1 = v2;
    v3 = OUTLINED_FUNCTION_29_30(v1);

    return sub_267E6757C(v3, v4, v5, v6);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[8] = v8;
    *v8 = v9;
    v10 = OUTLINED_FUNCTION_29_30(v8);

    return sub_267E684E4(v10, v11, v12, v13);
  }
}

uint64_t sub_267E66CF0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267E66DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = sub_267EF8428();
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v8 = *(v7 + 64) + 15;
  v5[19] = swift_task_alloc();
  v9 = *(*(sub_267EF3CF8() - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v10 = sub_267EF48A8();
  v5[21] = v10;
  v11 = *(v10 - 8);
  v5[22] = v11;
  v12 = *(v11 + 64) + 15;
  v5[23] = swift_task_alloc();
  v13 = sub_267EF2E38();
  v5[24] = v13;
  v14 = *(v13 - 8);
  v5[25] = v14;
  v15 = *(v14 + 64) + 15;
  v5[26] = swift_task_alloc();
  v16 = sub_267EF7DA8();
  v5[27] = v16;
  v17 = *(v16 - 8);
  v5[28] = v17;
  v18 = *(v17 + 64) + 15;
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E66FE4, 0, 0);
}

void sub_267E66FE4()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v3 = sub_267EF8A08();
  __swift_project_value_buffer(v3, qword_280240FB0);
  OUTLINED_FUNCTION_142_2();
  v4 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_12_3();
  if (os_log_type_enabled(v4, v5))
  {
    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_374(&dword_267B93000, v6, v7, "ContactDisambiguation# generating SMART contact disambiguation prompt");
    OUTLINED_FUNCTION_29_1();
  }

  v8 = v2[15];

  sub_267EF7C18();
  if (v9)
  {
    OUTLINED_FUNCTION_89_13();
    OUTLINED_FUNCTION_1_0();
    v10 = OUTLINED_FUNCTION_4_1();
    v11(v10);
    OUTLINED_FUNCTION_171_3();
    sub_267B9F98C((v2 + 2), &qword_28022A620, &qword_267F08EC0);
    sub_267EF7898();

    v12 = v1[6];
    __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
    v13 = OUTLINED_FUNCTION_111_7();
    v14(v13);
    v15 = sub_267EF7E98();
    OUTLINED_FUNCTION_97(v15);
    v2[31] = OUTLINED_FUNCTION_137_3();
    OUTLINED_FUNCTION_1_0();
    v16 = OUTLINED_FUNCTION_4_1();
    v17(v16);
    v18 = v2[11];
    __swift_project_boxed_opaque_existential_0(v2 + 7, v2[10]);
    OUTLINED_FUNCTION_4_1();
    sub_267EF3B68();
    sub_267EF7D88();
    (*(v0 + 8))(v4);
    __swift_destroy_boxed_opaque_existential_0(v2 + 7);
    v19 = sub_267E68C54(v67);
    v2[32] = v19;
    v2[33] = v20;
    if (v19)
    {
      OUTLINED_FUNCTION_120_7();
      *(swift_task_alloc() + 16) = v12;
      OUTLINED_FUNCTION_165_2();

      v21 = *MEMORY[0x277D5D720];
      v22 = OUTLINED_FUNCTION_141_3();
      v23(v22);
      v24 = sub_267EF8418();
      v26 = OUTLINED_FUNCTION_119_5(v24, v25);
      v27(v26);
      OUTLINED_FUNCTION_46_21();
      v28 = *(v4 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v2[35] = v29;
      *v29 = v30;
      OUTLINED_FUNCTION_92_11(v29);
      OUTLINED_FUNCTION_93();

      __asm { BRAA            X5, X16 }
    }

    (*(v2[28] + 16))(v2[29], v2[30], v2[27]);
    v43 = sub_267EF89F8();
    sub_267EF95E8();
    OUTLINED_FUNCTION_12_3();
    v45 = os_log_type_enabled(v43, v44);
    v47 = v2[28];
    v46 = v2[29];
    v48 = v2[27];
    if (v45)
    {
      v49 = OUTLINED_FUNCTION_48();
      v69[0] = OUTLINED_FUNCTION_52();
      *v49 = 136315138;
      v68 = sub_267EF7D98();
      v51 = v50;
      v52 = OUTLINED_FUNCTION_19_40();
      v53(v52);
      sub_267BA33E8(v68, v51, v69);
      OUTLINED_FUNCTION_528();

      *(v49 + 4) = v46;
      OUTLINED_FUNCTION_156_1();
      OUTLINED_FUNCTION_173_2(v54, v55, v56, v57);
      OUTLINED_FUNCTION_90_11();
      OUTLINED_FUNCTION_18_2();
    }

    else
    {

      v58 = OUTLINED_FUNCTION_19_40();
      v59(v58);
    }

    v60 = v2[30];
    v61 = v2[27];
    sub_267C4BE60();
    v62 = OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_118_6(v62, v63);

    v64 = OUTLINED_FUNCTION_115_6();
    v48(v64);
  }

  else
  {
    v33 = sub_267EF89F8();
    v34 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v34))
    {
      v35 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v35);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v36, v37, v38, v39, v40, 2u);
      OUTLINED_FUNCTION_26();
    }

    sub_267C4BE60();
    v41 = OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_170_3(xmmword_267F0CE20, v41, v42);
  }

  OUTLINED_FUNCTION_106_6();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_93();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267E67464()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *(v1 + 280);
  *v4 = *v2;
  *(v3 + 288) = v0;

  OUTLINED_FUNCTION_22_2();
  v7 = *(v6 + 272);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E6757C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = sub_267EF8428();
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v8 = *(v7 + 64) + 15;
  v5[19] = swift_task_alloc();
  v9 = *(*(sub_267EF3CF8() - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v10 = sub_267EF48A8();
  v5[21] = v10;
  v11 = *(v10 - 8);
  v5[22] = v11;
  v12 = *(v11 + 64) + 15;
  v5[23] = swift_task_alloc();
  v13 = sub_267EF2E38();
  v5[24] = v13;
  v14 = *(v13 - 8);
  v5[25] = v14;
  v15 = *(v14 + 64) + 15;
  v5[26] = swift_task_alloc();
  v16 = sub_267EF7DA8();
  v5[27] = v16;
  v17 = *(v16 - 8);
  v5[28] = v17;
  v18 = *(v17 + 64) + 15;
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E67790, 0, 0);
}

void sub_267E67790()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v3 = sub_267EF8A08();
  __swift_project_value_buffer(v3, qword_280240FB0);
  OUTLINED_FUNCTION_142_2();
  v4 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_12_3();
  if (os_log_type_enabled(v4, v5))
  {
    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_374(&dword_267B93000, v6, v7, "ContactDisambiguation# generating SMART contact disambiguation prompt");
    OUTLINED_FUNCTION_29_1();
  }

  v8 = v2[15];

  sub_267EF7C18();
  if (v9)
  {
    OUTLINED_FUNCTION_89_13();
    OUTLINED_FUNCTION_1_0();
    v10 = OUTLINED_FUNCTION_4_1();
    v11(v10);
    OUTLINED_FUNCTION_171_3();
    sub_267B9F98C((v2 + 2), &qword_28022A620, &qword_267F08EC0);
    sub_267EF7898();

    v12 = v1[6];
    __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
    v13 = OUTLINED_FUNCTION_111_7();
    v14(v13);
    v15 = sub_267EF7E98();
    OUTLINED_FUNCTION_97(v15);
    v2[31] = OUTLINED_FUNCTION_137_3();
    OUTLINED_FUNCTION_1_0();
    v16 = OUTLINED_FUNCTION_4_1();
    v17(v16);
    v18 = v2[11];
    __swift_project_boxed_opaque_existential_0(v2 + 7, v2[10]);
    OUTLINED_FUNCTION_4_1();
    sub_267EF3B68();
    sub_267EF7D88();
    (*(v0 + 8))(v4);
    __swift_destroy_boxed_opaque_existential_0(v2 + 7);
    v19 = sub_267E68C54(v67);
    v2[32] = v19;
    v2[33] = v20;
    if (v19)
    {
      OUTLINED_FUNCTION_120_7();
      *(swift_task_alloc() + 16) = v12;
      OUTLINED_FUNCTION_165_2();

      v21 = *MEMORY[0x277D5D720];
      v22 = OUTLINED_FUNCTION_141_3();
      v23(v22);
      v24 = sub_267EF8418();
      v26 = OUTLINED_FUNCTION_119_5(v24, v25);
      v27(v26);
      OUTLINED_FUNCTION_46_21();
      v28 = *(v4 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v2[35] = v29;
      *v29 = v30;
      OUTLINED_FUNCTION_92_11(v29);
      OUTLINED_FUNCTION_93();

      __asm { BRAA            X5, X16 }
    }

    (*(v2[28] + 16))(v2[29], v2[30], v2[27]);
    v43 = sub_267EF89F8();
    sub_267EF95E8();
    OUTLINED_FUNCTION_12_3();
    v45 = os_log_type_enabled(v43, v44);
    v47 = v2[28];
    v46 = v2[29];
    v48 = v2[27];
    if (v45)
    {
      v49 = OUTLINED_FUNCTION_48();
      v69[0] = OUTLINED_FUNCTION_52();
      *v49 = 136315138;
      v68 = sub_267EF7D98();
      v51 = v50;
      v52 = OUTLINED_FUNCTION_19_40();
      v53(v52);
      sub_267BA33E8(v68, v51, v69);
      OUTLINED_FUNCTION_528();

      *(v49 + 4) = v46;
      OUTLINED_FUNCTION_156_1();
      OUTLINED_FUNCTION_173_2(v54, v55, v56, v57);
      OUTLINED_FUNCTION_90_11();
      OUTLINED_FUNCTION_18_2();
    }

    else
    {

      v58 = OUTLINED_FUNCTION_19_40();
      v59(v58);
    }

    v60 = v2[30];
    v61 = v2[27];
    sub_267C4BE60();
    v62 = OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_118_6(v62, v63);

    v64 = OUTLINED_FUNCTION_115_6();
    v48(v64);
  }

  else
  {
    v33 = sub_267EF89F8();
    v34 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v34))
    {
      v35 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v35);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v36, v37, v38, v39, v40, 2u);
      OUTLINED_FUNCTION_26();
    }

    sub_267C4BE60();
    v41 = OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_170_3(xmmword_267F0CE20, v41, v42);
  }

  OUTLINED_FUNCTION_106_6();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_93();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267E67C10()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *(v1 + 280);
  *v4 = *v2;
  *(v3 + 288) = v0;

  OUTLINED_FUNCTION_22_2();
  v7 = *(v6 + 272);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E67D28()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  v5 = v0[28];
  v4 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  v9 = v0[22];
  v8 = v0[23];
  v10 = v0[21];
  v16 = v0[20];
  v17 = v0[19];
  sub_267BA1BFC(v0[32]);

  v11 = *(v9 + 8);
  v12 = OUTLINED_FUNCTION_68_0();
  v13(v12);
  (*(v5 + 8))(v2, v6);

  OUTLINED_FUNCTION_17();

  return v14();
}

uint64_t sub_267E67E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  v11 = v10[33];
  v12 = v10[30];
  v13 = v10[31];
  v14 = v10[27];
  v15 = v10[28];
  v17 = v10[22];
  v16 = v10[23];
  v18 = v10[21];
  sub_267BA1BFC(v10[32]);

  v19 = *(v17 + 8);
  v20 = OUTLINED_FUNCTION_44_0();
  v21(v20);
  v22 = *(v15 + 8);
  v23 = OUTLINED_FUNCTION_26_0();
  v24(v23);
  v25 = v10[36];
  OUTLINED_FUNCTION_106_6();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_36_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_267E67EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60) - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v8 = *(*(sub_267EF3CF8() - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v9 = sub_267EF48A8();
  v4[6] = v9;
  v10 = *(v9 - 8);
  v4[7] = v10;
  v11 = *(v10 + 64) + 15;
  v4[8] = swift_task_alloc();
  v12 = swift_task_alloc();
  v4[9] = v12;
  *v12 = v4;
  v12[1] = sub_267E68060;

  return sub_267E68E54(a2, a4);
}

uint64_t sub_267E68060()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 72);
  *v4 = *v1;
  v3[10] = v7;

  if (v0)
  {
    v8 = v3[8];
    v11 = v3 + 4;
    v9 = v3[4];
    v10 = v11[1];

    OUTLINED_FUNCTION_17();

    return v12();
  }

  else
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }
}

uint64_t sub_267E681A4()
{
  OUTLINED_FUNCTION_53();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_267EF8A08();
  v0[11] = OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  LOBYTE(v1) = sub_267EF95D8();

  if (os_log_type_enabled(v4, v1))
  {
    v5 = v0[10];
    v6 = OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_52();
    *v6 = 136315138;
    v7 = [v5 patternId];
    sub_267EF9028();

    v8 = OUTLINED_FUNCTION_68_0();
    v11 = sub_267BA33E8(v8, v9, v10);

    *(v6 + 4) = v11;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    OUTLINED_FUNCTION_11_42();
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_168_3();
  OUTLINED_FUNCTION_66_18();
  sub_267EF47F8();
  sub_267EF4858();
  v17 = sub_267EF4158();
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 16);
  v20 = OUTLINED_FUNCTION_37_1();
  v21(v20);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v17);
  sub_267EF4818();
  v25 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v25);
  v0[12] = sub_267EF4188();
  OUTLINED_FUNCTION_10(MEMORY[0x277D5BD48]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[13] = v26;
  *v26 = v27;
  v28 = OUTLINED_FUNCTION_113_8(v26);

  return v29(v28);
}

uint64_t sub_267E683C8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v7 + 112) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E684E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60) - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v8 = *(*(sub_267EF3CF8() - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v9 = sub_267EF48A8();
  v4[6] = v9;
  v10 = *(v9 - 8);
  v4[7] = v10;
  v11 = *(v10 + 64) + 15;
  v4[8] = swift_task_alloc();
  v12 = swift_task_alloc();
  v4[9] = v12;
  *v12 = v4;
  v12[1] = sub_267E6864C;

  return sub_267E69C8C(a2, a4);
}

uint64_t sub_267E6864C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 72);
  *v4 = *v1;
  v3[10] = v7;

  if (v0)
  {
    v8 = v3[8];
    v11 = v3 + 4;
    v9 = v3[4];
    v10 = v11[1];

    OUTLINED_FUNCTION_17();

    return v12();
  }

  else
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }
}

uint64_t sub_267E68790()
{
  OUTLINED_FUNCTION_53();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_267EF8A08();
  v0[11] = OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  LOBYTE(v1) = sub_267EF95D8();

  if (os_log_type_enabled(v4, v1))
  {
    v5 = v0[10];
    v6 = OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_52();
    *v6 = 136315138;
    v7 = [v5 patternId];
    sub_267EF9028();

    v8 = OUTLINED_FUNCTION_68_0();
    v11 = sub_267BA33E8(v8, v9, v10);

    *(v6 + 4) = v11;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    OUTLINED_FUNCTION_11_42();
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_168_3();
  OUTLINED_FUNCTION_66_18();
  sub_267EF47F8();
  sub_267EF4858();
  v17 = sub_267EF4158();
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 16);
  v20 = OUTLINED_FUNCTION_37_1();
  v21(v20);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v17);
  sub_267EF4818();
  v25 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v25);
  v0[12] = sub_267EF4188();
  OUTLINED_FUNCTION_10(MEMORY[0x277D5BD48]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[13] = v26;
  *v26 = v27;
  v28 = OUTLINED_FUNCTION_113_8(v26);

  return v29(v28);
}

uint64_t sub_267E689B4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v7 + 112) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E68AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  v11 = v10[11];
  v12 = sub_267EF89F8();
  v13 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v13))
  {
    v14 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v14);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v15, v16, v17, v18, v19, 2u);
    OUTLINED_FUNCTION_26();
    v20 = v10[10];
  }

  else
  {
    v20 = v12;
    v12 = v10[10];
  }

  v22 = v10[7];
  v21 = v10[8];
  v24 = v10[5];
  v23 = v10[6];
  v25 = v10[4];

  v26 = *(v22 + 8);
  v27 = OUTLINED_FUNCTION_26_0();
  v28(v27);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_36_0();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
}

uint64_t sub_267E68BBC()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);

  v4 = OUTLINED_FUNCTION_21_11();
  v5(v4);
  v6 = *(v0 + 112);
  v7 = *(v0 + 64);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);

  OUTLINED_FUNCTION_17();

  return v10();
}

void *sub_267E68C54(uint64_t a1)
{
  v2 = sub_267EF7DA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D564D8])
  {

    return &unk_267F0CFF8;
  }

  else if (v7 == *MEMORY[0x277D564E8])
  {

    return &unk_267F0CFD8;
  }

  else if (v7 == *MEMORY[0x277D564E0])
  {

    return &unk_267F0CFC8;
  }

  else if (v7 == *MEMORY[0x277D564F0])
  {

    return &unk_267F0CFB8;
  }

  else
  {
    if (v7 != *MEMORY[0x277D564F8])
    {
      (*(v3 + 8))(v6, v2);
      return 0;
    }

    return &unk_267F0CFE8;
  }
}

uint64_t sub_267E68E54(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CB10, &qword_267F0D038) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v5 = sub_267EF2E38();
  v3[31] = v5;
  v6 = *(v5 - 8);
  v3[32] = v6;
  v7 = *(v6 + 64) + 15;
  v3[33] = swift_task_alloc();
  v8 = sub_267EF7DA8();
  v3[34] = v8;
  v9 = *(v8 - 8);
  v3[35] = v9;
  v10 = *(v9 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v11 = sub_267EF8428();
  v3[39] = v11;
  v12 = *(v11 - 8);
  v3[40] = v12;
  v13 = *(v12 + 64) + 15;
  v3[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E69020, 0, 0);
}

uint64_t sub_267E69020()
{
  v98 = v0;
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[39];
  v6 = v0[28];
  v7 = *MEMORY[0x277D5D720];
  v8 = OUTLINED_FUNCTION_157_0();
  v9(v8);
  v10 = sub_267EF8418();
  v0[42] = v11;
  v13 = *(v4 + 8);
  v12 = v4 + 8;
  v14 = OUTLINED_FUNCTION_66();
  v15(v14);
  sub_267EF7C18();
  if (!v16)
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v47 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v47, qword_280240FB0);
    v48 = sub_267EF89F8();
    v49 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v49))
    {
      v50 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v50);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v51, v52, v53, v54, v55, 2u);
      OUTLINED_FUNCTION_26();
    }

    sub_267C4BE60();
    v56 = OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_170_3(xmmword_267F0CE20, v56, v57);
LABEL_11:
    OUTLINED_FUNCTION_21_30();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_63_1();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_72_15();
  v17 = *(v12 + 40);
  v18 = *(v12 + 48);
  OUTLINED_FUNCTION_172_3();
  OUTLINED_FUNCTION_14_4();
  v19 = OUTLINED_FUNCTION_115_6();
  v20(v19);
  OUTLINED_FUNCTION_171_3();
  sub_267B9F98C((v0 + 2), &qword_28022A620, &qword_267F08EC0);
  sub_267EF7898();

  v21 = *(v12 + 48);
  __swift_project_boxed_opaque_existential_0((v12 + 16), *(v12 + 40));
  v22 = OUTLINED_FUNCTION_110_9();
  v23(v22);
  v24 = sub_267EF7E68();
  OUTLINED_FUNCTION_97(v24);
  v25 = OUTLINED_FUNCTION_136_2();
  v0[43] = v25;
  v26 = *(v12 + 40);
  v27 = *(v12 + 48);
  OUTLINED_FUNCTION_172_3();
  v28 = *(v27 + 8);
  v29 = OUTLINED_FUNCTION_38_0();
  v30(v29);
  v31 = v0[11];
  __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
  OUTLINED_FUNCTION_38_0();
  sub_267EF3B68();
  sub_267EF7D88();
  (*(v1 + 8))(v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v32 = *(v10 + 16);
  v33 = OUTLINED_FUNCTION_66();
  v32(v33);
  v34 = *(v10 + 88);
  v35 = OUTLINED_FUNCTION_66();
  v37 = v36(v35);
  if (v37 == *MEMORY[0x277D564D8])
  {
    v38 = v0[30];
    sub_267EF4A68();
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
    v43 = *(MEMORY[0x277D56540] + 4);
    v44 = swift_task_alloc();
    v0[44] = v44;
    *v44 = v0;
    v44[1] = sub_267E696D4;
    v45 = v0[30];
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_63_1();

    return MEMORY[0x2821B9190]();
  }

  if (v37 == *MEMORY[0x277D564E8])
  {
    v60 = *(MEMORY[0x277D56550] + 4);
    v61 = swift_task_alloc();
    v0[48] = v61;
    *v61 = v0;
    v61[1] = sub_267E69938;
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_63_1();

    return MEMORY[0x2821B91A8]();
  }

  if (v37 == *MEMORY[0x277D564E0])
  {
    v63 = *(MEMORY[0x277D56548] + 4);
    v64 = swift_task_alloc();
    v0[50] = v64;
    *v64 = v0;
    v64[1] = sub_267E69A54;
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_63_1();

    return MEMORY[0x2821B91A0]();
  }

  if (v37 == *MEMORY[0x277D564F0])
  {
    v66 = *(MEMORY[0x277D56558] + 4);
    v67 = swift_task_alloc();
    v0[52] = v67;
    *v67 = v0;
    v67[1] = sub_267E69B70;
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_63_1();

    return MEMORY[0x2821B91B0]();
  }

  if (v37 != *MEMORY[0x277D564F8])
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v72 = OUTLINED_FUNCTION_134_3();
    __swift_project_value_buffer(v72, qword_280240FB0);
    v73 = OUTLINED_FUNCTION_158_3();
    v32(v73);
    v74 = sub_267EF89F8();
    sub_267EF95E8();
    OUTLINED_FUNCTION_12_3();
    v76 = os_log_type_enabled(v74, v75);
    v78 = v0[35];
    v77 = v0[36];
    v79 = v0[34];
    if (v76)
    {
      OUTLINED_FUNCTION_48();
      v97[0] = OUTLINED_FUNCTION_55_0();
      *v12 = 136315138;
      v96 = sub_267EF7D98();
      v81 = v80;
      v82 = OUTLINED_FUNCTION_27_32();
      v25(v82);
      sub_267BA33E8(v96, v81, v97);
      OUTLINED_FUNCTION_61_2();

      *(v12 + 4) = v77;
      OUTLINED_FUNCTION_156_1();
      _os_log_impl(v83, v84, v85, v86, v12, 0xCu);
      OUTLINED_FUNCTION_90_11();
      OUTLINED_FUNCTION_29_1();
    }

    else
    {

      v87 = OUTLINED_FUNCTION_27_32();
      v25(v87);
    }

    v89 = v0[37];
    v88 = v0[38];
    v90 = v0[34];
    sub_267C4BE60();
    v91 = OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_118_6(v91, v92);

    v93 = OUTLINED_FUNCTION_115_6();
    v25(v93);
    v94 = OUTLINED_FUNCTION_44_0();
    v25(v94);
    goto LABEL_11;
  }

  v69 = *(MEMORY[0x277D56560] + 4);
  v70 = swift_task_alloc();
  v0[46] = v70;
  *v70 = v0;
  v70[1] = sub_267E6981C;
  OUTLINED_FUNCTION_1_80();
  OUTLINED_FUNCTION_63_1();

  return MEMORY[0x2821B91B8]();
}

uint64_t sub_267E696D4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v3[12] = v2;
  v3[13] = v5;
  v3[14] = v0;
  OUTLINED_FUNCTION_22_2();
  v7 = *(v6 + 352);
  *v8 = *v2;
  *(v9 + 360) = v0;

  OUTLINED_FUNCTION_22_2();
  v11 = *(v10 + 336);
  sub_267B9F98C(*(v1 + 240), &qword_28022CB10, &qword_267F0D038);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267E6981C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v2[15] = v1;
  v2[16] = v4;
  v2[17] = v0;
  OUTLINED_FUNCTION_22_2();
  v6 = *(v5 + 368);
  *v7 = *v1;
  *(v8 + 376) = v0;

  OUTLINED_FUNCTION_22_2();
  v10 = *(v9 + 336);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267E69938()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v2[18] = v1;
  v2[19] = v4;
  v2[20] = v0;
  OUTLINED_FUNCTION_22_2();
  v6 = *(v5 + 384);
  *v7 = *v1;
  *(v8 + 392) = v0;

  OUTLINED_FUNCTION_22_2();
  v10 = *(v9 + 336);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267E69A54()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v2[21] = v1;
  v2[22] = v4;
  v2[23] = v0;
  OUTLINED_FUNCTION_22_2();
  v6 = *(v5 + 400);
  *v7 = *v1;
  *(v8 + 408) = v0;

  OUTLINED_FUNCTION_22_2();
  v10 = *(v9 + 336);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267E69B70()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v2[24] = v1;
  v2[25] = v4;
  v2[26] = v0;
  OUTLINED_FUNCTION_22_2();
  v6 = *(v5 + 416);
  *v7 = *v1;
  *(v8 + 424) = v0;

  OUTLINED_FUNCTION_22_2();
  v10 = *(v9 + 336);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267E69C8C(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CB10, &qword_267F0D038) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v5 = sub_267EF2E38();
  v3[31] = v5;
  v6 = *(v5 - 8);
  v3[32] = v6;
  v7 = *(v6 + 64) + 15;
  v3[33] = swift_task_alloc();
  v8 = sub_267EF7DA8();
  v3[34] = v8;
  v9 = *(v8 - 8);
  v3[35] = v9;
  v10 = *(v9 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v11 = sub_267EF8428();
  v3[39] = v11;
  v12 = *(v11 - 8);
  v3[40] = v12;
  v13 = *(v12 + 64) + 15;
  v3[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E69E58, 0, 0);
}

uint64_t sub_267E69E58()
{
  v98 = v0;
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[39];
  v6 = v0[28];
  v7 = *MEMORY[0x277D5D720];
  v8 = OUTLINED_FUNCTION_157_0();
  v9(v8);
  v10 = sub_267EF8418();
  v0[42] = v11;
  v13 = *(v4 + 8);
  v12 = v4 + 8;
  v14 = OUTLINED_FUNCTION_66();
  v15(v14);
  sub_267EF7C18();
  if (!v16)
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v47 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v47, qword_280240FB0);
    v48 = sub_267EF89F8();
    v49 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v49))
    {
      v50 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v50);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v51, v52, v53, v54, v55, 2u);
      OUTLINED_FUNCTION_26();
    }

    sub_267C4BE60();
    v56 = OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_170_3(xmmword_267F0CE20, v56, v57);
LABEL_11:
    OUTLINED_FUNCTION_21_30();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_63_1();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_72_15();
  v17 = *(v12 + 40);
  v18 = *(v12 + 48);
  OUTLINED_FUNCTION_172_3();
  OUTLINED_FUNCTION_14_4();
  v19 = OUTLINED_FUNCTION_115_6();
  v20(v19);
  OUTLINED_FUNCTION_171_3();
  sub_267B9F98C((v0 + 2), &qword_28022A620, &qword_267F08EC0);
  sub_267EF7898();

  v21 = *(v12 + 48);
  __swift_project_boxed_opaque_existential_0((v12 + 16), *(v12 + 40));
  v22 = OUTLINED_FUNCTION_110_9();
  v23(v22);
  v24 = sub_267EF7E68();
  OUTLINED_FUNCTION_97(v24);
  v25 = OUTLINED_FUNCTION_136_2();
  v0[43] = v25;
  v26 = *(v12 + 40);
  v27 = *(v12 + 48);
  OUTLINED_FUNCTION_172_3();
  v28 = *(v27 + 8);
  v29 = OUTLINED_FUNCTION_38_0();
  v30(v29);
  v31 = v0[11];
  __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
  OUTLINED_FUNCTION_38_0();
  sub_267EF3B68();
  sub_267EF7D88();
  (*(v1 + 8))(v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v32 = *(v10 + 16);
  v33 = OUTLINED_FUNCTION_66();
  v32(v33);
  v34 = *(v10 + 88);
  v35 = OUTLINED_FUNCTION_66();
  v37 = v36(v35);
  if (v37 == *MEMORY[0x277D564D8])
  {
    v38 = v0[30];
    sub_267EF4A68();
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
    v43 = *(MEMORY[0x277D56540] + 4);
    v44 = swift_task_alloc();
    v0[44] = v44;
    *v44 = v0;
    v44[1] = sub_267E6A50C;
    v45 = v0[30];
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_63_1();

    return MEMORY[0x2821B9190]();
  }

  if (v37 == *MEMORY[0x277D564E8])
  {
    v60 = *(MEMORY[0x277D56550] + 4);
    v61 = swift_task_alloc();
    v0[48] = v61;
    *v61 = v0;
    v61[1] = sub_267E6A770;
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_63_1();

    return MEMORY[0x2821B91A8]();
  }

  if (v37 == *MEMORY[0x277D564E0])
  {
    v63 = *(MEMORY[0x277D56548] + 4);
    v64 = swift_task_alloc();
    v0[50] = v64;
    *v64 = v0;
    v64[1] = sub_267E6A88C;
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_63_1();

    return MEMORY[0x2821B91A0]();
  }

  if (v37 == *MEMORY[0x277D564F0])
  {
    v66 = *(MEMORY[0x277D56558] + 4);
    v67 = swift_task_alloc();
    v0[52] = v67;
    *v67 = v0;
    v67[1] = sub_267E6A9A8;
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_63_1();

    return MEMORY[0x2821B91B0]();
  }

  if (v37 != *MEMORY[0x277D564F8])
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v72 = OUTLINED_FUNCTION_134_3();
    __swift_project_value_buffer(v72, qword_280240FB0);
    v73 = OUTLINED_FUNCTION_158_3();
    v32(v73);
    v74 = sub_267EF89F8();
    sub_267EF95E8();
    OUTLINED_FUNCTION_12_3();
    v76 = os_log_type_enabled(v74, v75);
    v78 = v0[35];
    v77 = v0[36];
    v79 = v0[34];
    if (v76)
    {
      OUTLINED_FUNCTION_48();
      v97[0] = OUTLINED_FUNCTION_55_0();
      *v12 = 136315138;
      v96 = sub_267EF7D98();
      v81 = v80;
      v82 = OUTLINED_FUNCTION_27_32();
      v25(v82);
      sub_267BA33E8(v96, v81, v97);
      OUTLINED_FUNCTION_61_2();

      *(v12 + 4) = v77;
      OUTLINED_FUNCTION_156_1();
      _os_log_impl(v83, v84, v85, v86, v12, 0xCu);
      OUTLINED_FUNCTION_90_11();
      OUTLINED_FUNCTION_29_1();
    }

    else
    {

      v87 = OUTLINED_FUNCTION_27_32();
      v25(v87);
    }

    v89 = v0[37];
    v88 = v0[38];
    v90 = v0[34];
    sub_267C4BE60();
    v91 = OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_118_6(v91, v92);

    v93 = OUTLINED_FUNCTION_115_6();
    v25(v93);
    v94 = OUTLINED_FUNCTION_44_0();
    v25(v94);
    goto LABEL_11;
  }

  v69 = *(MEMORY[0x277D56560] + 4);
  v70 = swift_task_alloc();
  v0[46] = v70;
  *v70 = v0;
  v70[1] = sub_267E6A654;
  OUTLINED_FUNCTION_1_80();
  OUTLINED_FUNCTION_63_1();

  return MEMORY[0x2821B91B8]();
}

uint64_t sub_267E6A50C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v3[12] = v2;
  v3[13] = v5;
  v3[14] = v0;
  OUTLINED_FUNCTION_22_2();
  v7 = *(v6 + 352);
  *v8 = *v2;
  *(v9 + 360) = v0;

  OUTLINED_FUNCTION_22_2();
  v11 = *(v10 + 336);
  sub_267B9F98C(*(v1 + 240), &qword_28022CB10, &qword_267F0D038);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267E6A654()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v2[15] = v1;
  v2[16] = v4;
  v2[17] = v0;
  OUTLINED_FUNCTION_22_2();
  v6 = *(v5 + 368);
  *v7 = *v1;
  *(v8 + 376) = v0;

  OUTLINED_FUNCTION_22_2();
  v10 = *(v9 + 336);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267E6A770()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v2[18] = v1;
  v2[19] = v4;
  v2[20] = v0;
  OUTLINED_FUNCTION_22_2();
  v6 = *(v5 + 384);
  *v7 = *v1;
  *(v8 + 392) = v0;

  OUTLINED_FUNCTION_22_2();
  v10 = *(v9 + 336);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267E6A88C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v2[21] = v1;
  v2[22] = v4;
  v2[23] = v0;
  OUTLINED_FUNCTION_22_2();
  v6 = *(v5 + 400);
  *v7 = *v1;
  *(v8 + 408) = v0;

  OUTLINED_FUNCTION_22_2();
  v10 = *(v9 + 336);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267E6A9A8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v2[24] = v1;
  v2[25] = v4;
  v2[26] = v0;
  OUTLINED_FUNCTION_22_2();
  v6 = *(v5 + 416);
  *v7 = *v1;
  *(v8 + 424) = v0;

  OUTLINED_FUNCTION_22_2();
  v10 = *(v9 + 336);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267E6AAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 104);
  OUTLINED_FUNCTION_24_36();
  v14 = OUTLINED_FUNCTION_53_18();
  v15(v14);

  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_40();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_267E6AB64()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_98_10();
  v1 = OUTLINED_FUNCTION_21_11();
  v2(v1);
  v3 = *(v0 + 360);
  OUTLINED_FUNCTION_21_30();

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267E6AC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 128);
  OUTLINED_FUNCTION_24_36();
  v14 = OUTLINED_FUNCTION_53_18();
  v15(v14);

  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_40();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_267E6ACA8()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_98_10();
  v1 = OUTLINED_FUNCTION_21_11();
  v2(v1);
  v3 = *(v0 + 376);
  OUTLINED_FUNCTION_21_30();

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267E6AD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 152);
  OUTLINED_FUNCTION_24_36();
  v14 = OUTLINED_FUNCTION_53_18();
  v15(v14);

  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_40();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_267E6ADEC()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_98_10();
  v1 = OUTLINED_FUNCTION_21_11();
  v2(v1);
  v3 = *(v0 + 392);
  OUTLINED_FUNCTION_21_30();

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267E6AE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 176);
  OUTLINED_FUNCTION_24_36();
  v14 = OUTLINED_FUNCTION_53_18();
  v15(v14);

  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_40();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_267E6AF30()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_98_10();
  v1 = OUTLINED_FUNCTION_21_11();
  v2(v1);
  v3 = *(v0 + 408);
  OUTLINED_FUNCTION_21_30();

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267E6AFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 200);
  OUTLINED_FUNCTION_24_36();
  v14 = OUTLINED_FUNCTION_53_18();
  v15(v14);

  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_40();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_267E6B074()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_98_10();
  v1 = OUTLINED_FUNCTION_21_11();
  v2(v1);
  v3 = *(v0 + 424);
  OUTLINED_FUNCTION_21_30();

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267E6B118(uint64_t a1, uint64_t a2, id a3, uint64_t a4)
{
  if (sub_267BBDEAC() == a3 && v5 == a4)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_267EF9EA8();
  }

  return v7 & 1;
}

uint64_t sub_267E6B190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  *(v6 + 16) = a6;
  v13 = *(MEMORY[0x277D56580] + 4);
  v14 = swift_task_alloc();
  *(v6 + 24) = v14;
  *v14 = v6;
  v14[1] = sub_267E71518;
  v15 = MEMORY[0x277D56578];

  return MEMORY[0x2821B9200](a1, a2, a3, a4, a5, v12, v15);
}

uint64_t sub_267E6B2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  *(v6 + 16) = a6;
  v13 = *(MEMORY[0x277D565A0] + 4);
  v14 = swift_task_alloc();
  *(v6 + 24) = v14;
  *v14 = v6;
  v14[1] = sub_267E6B3B0;
  v15 = MEMORY[0x277D56578];

  return MEMORY[0x2821B9220](a1, a2, a3, a4, a5, v12, v15);
}

uint64_t sub_267E6B3B0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267E6B490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  *(v6 + 16) = a6;
  v13 = *(MEMORY[0x277D56590] + 4);
  v14 = swift_task_alloc();
  *(v6 + 24) = v14;
  *v14 = v6;
  v14[1] = sub_267E71518;
  v15 = MEMORY[0x277D56578];

  return MEMORY[0x2821B9210](a1, a2, a3, a4, a5, v12, v15);
}

uint64_t sub_267E6B5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  *(v6 + 16) = a6;
  v13 = *(MEMORY[0x277D56588] + 4);
  v14 = swift_task_alloc();
  *(v6 + 24) = v14;
  *v14 = v6;
  v14[1] = sub_267E71518;
  v15 = MEMORY[0x277D56578];

  return MEMORY[0x2821B9208](a1, a2, a3, a4, a5, v12, v15);
}

uint64_t sub_267E6B6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  *(v6 + 16) = a6;
  v13 = *(MEMORY[0x277D56598] + 4);
  v14 = swift_task_alloc();
  *(v6 + 24) = v14;
  *v14 = v6;
  v14[1] = sub_267E71518;
  v15 = MEMORY[0x277D56578];

  return MEMORY[0x2821B9218](a1, a2, a3, a4, a5, v12, v15);
}

void sub_267E6B7C0()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v178 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_267EF4C08();
  v8 = OUTLINED_FUNCTION_58(v7);
  v180 = v9;
  v181 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v174 - v13;
  v15 = sub_267EF4BE8();
  v16 = OUTLINED_FUNCTION_58(v15);
  v183 = v17;
  *&v184 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  v182 = v20;
  OUTLINED_FUNCTION_26_2();
  v21 = sub_267EF4BA8();
  v22 = OUTLINED_FUNCTION_58(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_0();
  v29 = v28 - v27;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v30 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v30, qword_280240FB0);
  v31 = *(v24 + 16);
  v179 = v4;
  v31(v29, v4, v21);
  v185 = v0;
  v32 = sub_267EF89F8();
  v33 = sub_267EF95C8();
  v34 = &unk_267EFC000;
  if (os_log_type_enabled(v32, v33))
  {
    v35 = OUTLINED_FUNCTION_48();
    v176 = v6;
    v6 = v35;
    v36 = OUTLINED_FUNCTION_52();
    v175 = v0;
    v37 = v36;
    v189[0] = v36;
    *v6 = 136315138;
    sub_267E71494(&qword_28022AF50, MEMORY[0x277D5C118]);
    v38 = sub_267EF9E58();
    v40 = v39;
    (*(v24 + 8))(v29, v21);
    sub_267BA33E8(v38, v40, v189);
    OUTLINED_FUNCTION_528();
    v34 = &unk_267EFC000;

    *(v6 + 4) = v38;
    OUTLINED_FUNCTION_173_2(&dword_267B93000, v32, v33, "#SendContactDisambiguation received input: %s");
    __swift_destroy_boxed_opaque_existential_0(v37);
    v1 = v175;
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_127_6();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v24 + 8))(v29, v21);
  }

  sub_267EF4B88();
  v41 = v180;
  v42 = *(v180 + 88);
  v43 = OUTLINED_FUNCTION_5_29();
  if (v44(v43) == *MEMORY[0x277D5C150])
  {
    v45 = *(v41 + 96);
    v46 = OUTLINED_FUNCTION_5_29();
    v47(v46);
    (*(v183 + 32))(v182, v14, v184);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
    v48 = sub_267EF4928();
    v49 = sub_267EF4908();
    sub_267E65350();
    v51 = v50;

    if (v51)
    {
      v52 = v51;
      v53 = sub_267EF89F8();
      sub_267EF95D8();

      if (OUTLINED_FUNCTION_99())
      {
        OUTLINED_FUNCTION_48();
        v189[0] = OUTLINED_FUNCTION_100_8();
        *v49 = v34[9];
        v54 = v52;
        v176 = v6;
        v55 = v54;
        v56 = [v54 description];
        sub_267EF9028();

        v57 = OUTLINED_FUNCTION_61_4();
        v60 = sub_267BA33E8(v57, v58, v59);

        *(v49 + 4) = v60;
        OUTLINED_FUNCTION_127_6();
        OUTLINED_FUNCTION_59_2(&dword_267B93000, v61, v62, "#SendContactDisambiguation Selected person %s");
        OUTLINED_FUNCTION_11_42();
        OUTLINED_FUNCTION_40_0();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297A8, &unk_267EFEFA0);
      v63 = OUTLINED_FUNCTION_47_3();
      *(v63 + 16) = xmmword_267EFC020;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v64 = OUTLINED_FUNCTION_47_3();
      *(v64 + 16) = xmmword_267EFCA40;
      *(v64 + 32) = v52;
      *(v63 + 32) = v64;
      v65 = *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow49SendMessageContactNeedsDisambiguationFlowStrategy_selectedPersons);
      *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow49SendMessageContactNeedsDisambiguationFlowStrategy_selectedPersons) = v63;
      v66 = v52;

      sub_267EF3E58();
    }

    else
    {
      v83 = sub_267EF89F8();
      v84 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v84))
      {
        v85 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v85);
        OUTLINED_FUNCTION_64_1();
        _os_log_impl(v86, v87, v88, v89, v90, 2u);
        OUTLINED_FUNCTION_26();
      }

      sub_267EF3E68();
    }

    (*(v183 + 8))(v182, v184);
    goto LABEL_84;
  }

  v67 = *(v41 + 8);
  v68 = OUTLINED_FUNCTION_5_29();
  v67(v68);
  v69 = v177;
  sub_267EF4B88();
  sub_267E57DFC(v69, &v187);
  v70 = OUTLINED_FUNCTION_5_29();
  v67(v70);
  if (!v188)
  {
    sub_267B9F98C(&v187, &unk_28022BBF0, &unk_267F01C60);
    v91 = sub_267EF89F8();
    v92 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v92))
    {
      v93 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v93);
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v94, v95, v96, v97, v98, 2u);
      OUTLINED_FUNCTION_26();
    }

    sub_267EF3E68();
    goto LABEL_84;
  }

  sub_267BE58F4(&v187, v189);
  v71 = v191;
  __swift_project_boxed_opaque_existential_0(v189, v190);
  v72 = *(v71 + 96);
  v73 = OUTLINED_FUNCTION_38_0();
  if (v74(v73))
  {
    v75 = sub_267EF89F8();
    v76 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v76))
    {
      v77 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v77);
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v78, v79, v80, v81, v82, 2u);
      OUTLINED_FUNCTION_26();
    }

    sub_267EF3E48();
    goto LABEL_83;
  }

  v99 = v191;
  __swift_project_boxed_opaque_existential_0(v189, v190);
  v100 = *(v99 + 272);
  v101 = OUTLINED_FUNCTION_38_0();
  if (v102(v101))
  {
    v103 = sub_267EF89F8();
    v104 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v104))
    {
      v105 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v105);
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v106, v107, v108, v109, v110, 2u);
      OUTLINED_FUNCTION_26();
    }

LABEL_27:
    sub_267EF3E68();
    goto LABEL_83;
  }

  v111 = *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver + 24);
  v112 = *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver), v111);
  v113 = sub_267EBE108(v189, v111, v112);
  v114 = OBJC_IVAR____TtC16SiriMessagesFlow49SendMessageContactNeedsDisambiguationFlowStrategy_selectedPersons;
  v115 = *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow49SendMessageContactNeedsDisambiguationFlowStrategy_selectedPersons);
  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow49SendMessageContactNeedsDisambiguationFlowStrategy_selectedPersons) = v113;

  if (!*(*(v1 + v114) + 16))
  {
    v183 = v114;
    v131 = sub_267EF89F8();
    v132 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v132))
    {
      v133 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v133);
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v134, v135, v136, v137, v138, 2u);
      OUTLINED_FUNCTION_26();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
    v139 = sub_267EF4928();
    sub_267E664F0();
    v141 = v140;

    v142 = sub_267BAF0DC(v141);
    if (v142)
    {
      v143 = v142;
      v175 = v1;
      v176 = v6;
      *&v187 = MEMORY[0x277D84F90];
      sub_267C724EC();
      if (v143 < 0)
      {
        goto LABEL_87;
      }

      v144 = 0;
      v145 = v187;
      v184 = xmmword_267EFCA40;
      do
      {
        if ((v141 & 0xC000000000000001) != 0)
        {
          v146 = MEMORY[0x26D609870](v144, v141);
        }

        else
        {
          v146 = *(v141 + 8 * v144 + 32);
        }

        v147 = v146;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
        v148 = OUTLINED_FUNCTION_47_3();
        *(v148 + 16) = v184;
        *(v148 + 32) = v147;
        *&v187 = v145;
        v150 = *(v145 + 16);
        v149 = *(v145 + 24);
        if (v150 >= v149 >> 1)
        {
          OUTLINED_FUNCTION_8_2(v149);
          sub_267C724EC();
          v145 = v187;
        }

        ++v144;
        *(v145 + 16) = v150 + 1;
        *(v145 + 8 * v150 + 32) = v148;
      }

      while (v143 != v144);

      OUTLINED_FUNCTION_127_6();
      v1 = v175;
    }

    else
    {

      v145 = MEMORY[0x277D84F90];
    }

    v157 = v183;
    v158 = *(v1 + v183);
    *(v1 + v183) = v145;

    if (!*(*(v1 + v157) + 16))
    {
      goto LABEL_27;
    }

    v116 = sub_267EF89F8();
    v117 = sub_267EF95D8();

    if (!os_log_type_enabled(v116, v117))
    {
      goto LABEL_82;
    }

    v118 = OUTLINED_FUNCTION_48();
    v185 = OUTLINED_FUNCTION_52();
    *&v187 = v185;
    *v118 = 136315138;
    v159 = *(v1 + v157);
    v160 = MEMORY[0x277D84F90];
    if (!*(v159 + 16))
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_125_6();
    OUTLINED_FUNCTION_166_2();
    v160 = v186;
    while (1)
    {
      v161 = *(v159 + 32);
      if (v161 >> 62)
      {
        if (v161 < 0)
        {
          v166 = *(v159 + 32);
        }

        if (sub_267EF9A68())
        {
LABEL_67:
          if ((v161 & 0xC000000000000001) != 0)
          {

            v163 = MEMORY[0x26D609870](0, v161);
          }

          else
          {
            if (!*((v161 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_86;
            }

            v162 = *(v161 + 32);

            v163 = v162;
          }

          v164 = v163;
          v165 = [v163 displayName];

          sub_267EF9028();
        }
      }

      else if (*((v161 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_67;
      }

      OUTLINED_FUNCTION_151_2();
      if (v128)
      {
        v168 = OUTLINED_FUNCTION_8_2(v167);
        sub_267BE8B74(v168, v161, 1);
        v160 = v186;
      }

      OUTLINED_FUNCTION_129_3();
      if (v129)
      {

        OUTLINED_FUNCTION_127_6();
        v117 = v184;
        v118 = v183;
LABEL_80:
        v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
        v170 = MEMORY[0x26D608FD0](v160, v169);
        v172 = v171;

        v173 = sub_267BA33E8(v170, v172, &v187);

        *(v118 + 4) = v173;
        v156 = "#SendContactDisambiguation Found recipients in SmsIntent: %s";
LABEL_81:
        _os_log_impl(&dword_267B93000, v116, v117, v156, v118, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v185);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
LABEL_82:

        sub_267EF3E58();
LABEL_83:
        __swift_destroy_boxed_opaque_existential_0(v189);
LABEL_84:
        OUTLINED_FUNCTION_47();
        return;
      }
    }
  }

  v116 = sub_267EF89F8();
  v117 = sub_267EF95D8();

  if (!os_log_type_enabled(v116, v117))
  {
    goto LABEL_82;
  }

  v118 = OUTLINED_FUNCTION_48();
  v185 = OUTLINED_FUNCTION_52();
  *&v187 = v185;
  *v118 = v34[9];
  v119 = *(v1 + v114);
  v120 = MEMORY[0x277D84F90];
  if (!*(v119 + 16))
  {
LABEL_59:
    v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    v152 = MEMORY[0x26D608FD0](v120, v151);
    v154 = v153;

    v155 = sub_267BA33E8(v152, v154, &v187);

    *(v118 + 4) = v155;
    v156 = "#SendContactDisambiguation Found recipients in SRR: %s";
    goto LABEL_81;
  }

  OUTLINED_FUNCTION_125_6();
  OUTLINED_FUNCTION_166_2();
  v120 = v186;
  while (1)
  {
    v121 = *(v119 + 32);
    if (v121 >> 62)
    {
      break;
    }

    if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_34;
    }

LABEL_41:
    OUTLINED_FUNCTION_151_2();
    if (v128)
    {
      v130 = OUTLINED_FUNCTION_8_2(v127);
      sub_267BE8B74(v130, v121, 1);
      v120 = v186;
    }

    OUTLINED_FUNCTION_129_3();
    if (v129)
    {

      OUTLINED_FUNCTION_127_6();
      v117 = v184;
      v118 = v183;
      goto LABEL_59;
    }
  }

  if (v121 < 0)
  {
    v126 = *(v119 + 32);
  }

  if (!sub_267EF9A68())
  {
    goto LABEL_41;
  }

LABEL_34:
  if ((v121 & 0xC000000000000001) != 0)
  {

    v123 = MEMORY[0x26D609870](0, v121);
    goto LABEL_37;
  }

  if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v122 = *(v121 + 32);

    v123 = v122;
LABEL_37:
    v124 = v123;
    v125 = [v123 displayName];

    sub_267EF9028();

    goto LABEL_41;
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
}

uint64_t sub_267E6C534()
{
  OUTLINED_FUNCTION_12();
  v1[20] = v2;
  v1[21] = v0;
  v3 = sub_267EF2E38();
  v1[22] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[23] = v4;
  v6 = *(v5 + 64);
  v1[24] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF7DA8();
  v1[25] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[26] = v8;
  v10 = *(v9 + 64);
  v1[27] = OUTLINED_FUNCTION_2();
  v11 = sub_267EF44C8();
  v1[28] = v11;
  OUTLINED_FUNCTION_30_0(v11);
  v1[29] = v12;
  v14 = *(v13 + 64);
  v1[30] = OUTLINED_FUNCTION_2();
  v15 = sub_267EF43F8();
  v1[31] = v15;
  OUTLINED_FUNCTION_30_0(v15);
  v1[32] = v16;
  v18 = *(v17 + 64);
  v1[33] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_267E6CAC0()
{
  OUTLINED_FUNCTION_12();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297B0, &unk_267EFE4E0);
  v1[5] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF44C8();
  v1[8] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[9] = v9;
  v11 = *(v10 + 64);
  v1[10] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267E6CBC4()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC16SiriMessagesFlow49SendMessageContactNeedsDisambiguationFlowStrategy_selectedPersons;
  v3 = v0[10];
  if (*(*(v1 + OBJC_IVAR____TtC16SiriMessagesFlow49SendMessageContactNeedsDisambiguationFlowStrategy_selectedPersons) + 16))
  {
    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
    v31 = sub_267EF4918();
    sub_267EF4938();
    v7 = sub_267EF44A8();
    v9 = v8;
    (*(v4 + 8))(v3, v5);
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7;
    }

    sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
    v11 = *(v1 + v2);

    v12 = sub_267EF4918();
    v13 = sub_267EB7470(v12);
    v14 = sub_267E6393C(v10, v11, v13);

    v15 = sub_267D28C4C(v31, v14);
    v16 = *(v1 + v2);
    if (*(v16 + 16))
    {
      v17 = *(v16 + 32);
      if (sub_267BAF0DC(v17))
      {
        sub_267BBD0EC(0, (v17 & 0xC000000000000001) == 0, v17);
        if ((v17 & 0xC000000000000001) != 0)
        {

          MEMORY[0x26D609870](0, v17);
        }

        else
        {
          *(v17 + 32);
        }

        sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      }
    }

    v18 = v0[10];
    v20 = v0[6];
    v19 = v0[7];
    v21 = v0[5];
    v22 = v0[2];
    v23 = v15;
    sub_267EF4388();
    OUTLINED_FUNCTION_44_0();
    sub_267EF4508();

    v24 = *(v20 + 8);
    v25 = OUTLINED_FUNCTION_44_0();
    v26(v25);

    OUTLINED_FUNCTION_17();
  }

  else
  {
    v28 = v0[7];
    sub_267C266B0();
    OUTLINED_FUNCTION_61_1();
    *v29 = 0xD000000000000015;
    v29[1] = 0x8000000267F1C230;
    swift_willThrow();

    OUTLINED_FUNCTION_17();
  }

  return v27();
}

uint64_t sub_267E6CE84()
{
  OUTLINED_FUNCTION_12();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_267EF4158();
  v1[10] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[11] = v5;
  v7 = *(v6 + 64);
  v1[12] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E6D104()
{
  OUTLINED_FUNCTION_56();
  v2 = *v1;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = v2[15];
  *v4 = *v1;
  *(v3 + 128) = v0;

  v6 = v2[14];
  v7 = v2[13];
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E6D258()
{
  OUTLINED_FUNCTION_12();
  v0 = OUTLINED_FUNCTION_152_3();
  v1(v0);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267E6D2C4()
{
  OUTLINED_FUNCTION_12();
  v1 = OUTLINED_FUNCTION_152_3();
  v2(v1);

  OUTLINED_FUNCTION_17();
  v4 = *(v0 + 128);

  return v3();
}

void sub_267E6D330()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v77 = v2;
  v76 = v3;
  v4 = sub_267EF53D8();
  v5 = OUTLINED_FUNCTION_58(v4);
  v79 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v70 - v11;
  v13 = sub_267EF2E38();
  v14 = OUTLINED_FUNCTION_58(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_0();
  v21 = v20 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229750, &unk_267F01E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFCE30;
  if (qword_280228898 != -1)
  {
    swift_once();
  }

  v78 = v12;
  v23 = qword_280241050;
  v24 = sub_267EF54C8();
  v25 = MEMORY[0x277D5E210];
  *(inited + 56) = v24;
  *(inited + 64) = v25;
  *(inited + 32) = v23;
  v26 = qword_280228888;

  if (v26 != -1)
  {
    OUTLINED_FUNCTION_17_29();
    swift_once();
  }

  v27 = qword_280241040;
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  *(inited + 104) = sub_267C586C4(&qword_280229758, &unk_28022CF00, &unk_267EFE460);
  *(inited + 72) = v27;
  v28 = qword_280228870;

  if (v28 != -1)
  {
    OUTLINED_FUNCTION_32_22();
  }

  v29 = qword_280241028;
  *(inited + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229760, &unk_267F004C0);
  *(inited + 144) = sub_267C586C4(&qword_280229768, &qword_280229760, &unk_267F004C0);
  *(inited + 112) = v29;
  v30 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v1[3]);

  sub_267EF3B68();
  type metadata accessor for ContactIdOrBase64PersonIdentifierProvider();
  v31 = swift_initStackObject();
  sub_267E6FE5C(v77, v21, v31, v32, v33, v34, v35, v36, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80[0], v80[1]);
  v38 = v37;
  (*(v16 + 8))(v21, v13);
  sub_267C37CA8(inited, v38, v1);

  swift_setDeallocating();
  sub_267DB70BC();
  v39 = v78;
  sub_267E6DA84();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v40 = sub_267EF8A08();
  __swift_project_value_buffer(v40, qword_280240FB0);
  v41 = v79;
  v42 = *(v79 + 16);
  v43 = v75;
  v42(v75, v39, v4);
  v44 = sub_267EF89F8();
  HIDWORD(v73) = sub_267EF95D8();
  if (os_log_type_enabled(v44, BYTE4(v73)))
  {
    v45 = OUTLINED_FUNCTION_48();
    v71 = v45;
    v72 = OUTLINED_FUNCTION_52();
    v81 = v72;
    *v45 = 136315138;
    v46 = v74;
    v47 = OUTLINED_FUNCTION_61_4();
    (v42)(v47);
    sub_267EF5458();
    v80[3] = v4;
    v80[4] = sub_267E71494(&qword_28022BAF0, MEMORY[0x277D5DC70]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v80);
    v42(boxed_opaque_existential_0, v46, v4);
    v49 = sub_267EF5448();
    v51 = v50;
    v70 = v42;
    v52 = v4;
    v53 = *(v79 + 8);
    v53(v46, v4);
    v75 = v53;
    v53(v43, v4);
    __swift_destroy_boxed_opaque_existential_0(v80);
    sub_267BA33E8(v49, v51, &v81);
    OUTLINED_FUNCTION_53_0();
    v41 = v79;

    v54 = v71;
    *(v71 + 1) = v49;
    _os_log_impl(&dword_267B93000, v44, BYTE4(v73), "SendContactDisambiguation# submitting NLv4 dialog act: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v72);
    v39 = v78;
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();

    v55 = v70;
  }

  else
  {

    v75 = *(v41 + 8);
    v75(v43, v4);
    v55 = v42;
    v52 = v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v56 = *(v41 + 72);
  v57 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_267EFC020;
  v55(v58 + v57, v39, v52);
  sub_267EF4088();
  sub_267E6417C();
  v60 = v59;

  v61 = sub_267EF89F8();
  v62 = sub_267EF95D8();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = OUTLINED_FUNCTION_48();
    v64 = OUTLINED_FUNCTION_52();
    v80[0] = v64;
    *v63 = 136315138;
    v65 = sub_267EF8AE8();
    v66 = MEMORY[0x26D608FD0](v60, v65);
    v68 = sub_267BA33E8(v66, v67, v80);

    *(v63 + 4) = v68;
    _os_log_impl(&dword_267B93000, v61, v62, "SendContactDisambiguation# Donating RRaaS entities: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_45_2();
  }

  sub_267EF4058();
  v69 = OUTLINED_FUNCTION_61_4();
  (v75)(v69);
  OUTLINED_FUNCTION_47();
}

void sub_267E6DA84()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C288, &unk_267F09BF0);
  v5 = OUTLINED_FUNCTION_58(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v38 = v35 - v10;
  v47 = MEMORY[0x277D84F90];
  v43 = v1;
  v11 = sub_267BAF0DC(v1);
  if (!v11)
  {
LABEL_16:
    sub_267BC8938();

    OUTLINED_FUNCTION_47();
    return;
  }

  if (v11 >= 1)
  {
    v35[1] = v3;
    v13 = 0;
    v40 = (v7 + 8);
    v41 = v43 & 0xC000000000000001;
    *&v12 = 138412290;
    v37 = v12;
    *&v12 = 136315138;
    v36 = v12;
    v39 = v4;
    v42 = v11;
    do
    {
      if (v41)
      {
        v14 = MEMORY[0x26D609870](v13, v43);
      }

      else
      {
        v14 = *(v43 + 8 * v13 + 32);
      }

      v15 = v14;
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v16 = sub_267EF8A08();
      __swift_project_value_buffer(v16, qword_280240FB0);
      v17 = v15;
      v18 = sub_267EF89F8();
      v19 = sub_267EF95D8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = OUTLINED_FUNCTION_48();
        v21 = swift_slowAlloc();
        *v20 = v37;
        *(v20 + 4) = v17;
        *v21 = v17;
        v22 = v17;
        _os_log_impl(&dword_267B93000, v18, v19, "SendContactDisambiguation# adding context for intentPerson %@", v20, 0xCu);
        sub_267B9F98C(v21, &unk_280229E30, &unk_267EFC270);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_45_2();
      }

      v23 = sub_267EF6268();
      OUTLINED_FUNCTION_97(v23);
      v44 = sub_267EF6258();
      v24 = sub_267EF6168();
      OUTLINED_FUNCTION_97(v24);
      sub_267EF6158();
      v25 = [v17 displayName];
      sub_267EF9028();

      sub_267EF6148();

      sub_267EF7028();
      v26 = sub_267EF7038();
      v46 = v17;
      v26(&v45, &v46);

      v27 = sub_267EF5C08();

      if (v27)
      {
        v28 = sub_267EF65F8();
        OUTLINED_FUNCTION_97(v28);
        sub_267EF65E8();

        sub_267EF56B8();
        OUTLINED_FUNCTION_53_0();

        sub_267EF5D18();

        sub_267EF6138();
      }

      v29 = *v40;
      v30 = OUTLINED_FUNCTION_19_25();
      v31(v30);

      sub_267EF6218();

      v32 = sub_267EF6448();
      OUTLINED_FUNCTION_97(v32);
      sub_267EF6438();
      sub_267EF61F8();

      MEMORY[0x26D608F90](v33);
      v34 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v34 >> 1)
      {
        OUTLINED_FUNCTION_8_2(v34);
        sub_267EF9328();
      }

      ++v13;
      sub_267EF9368();
    }

    while (v42 != v13);
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_267E6DFFC()
{
  v0 = sub_267B9DCC8();
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow49SendMessageContactNeedsDisambiguationFlowStrategy_selectedPersons);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SendMessageContactNeedsDisambiguationFlowStrategy()
{
  result = qword_28022CAF8;
  if (!qword_28022CAF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267E6E10C()
{
  type metadata accessor for SendMessageContactNeedsDisambiguationFlowStrategy();

  JUMPOUT(0x26D602E30);
}

uint64_t sub_267E6E188(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_267C564C8;

  return sub_267E6C534();
}

uint64_t sub_267E6E224()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BBD07C;

  return sub_267E6CAC0();
}

uint64_t sub_267E6E2D0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BAEBEC;

  return sub_267E6CE84();
}

uint64_t sub_267E6E37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B588] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SendMessageContactNeedsDisambiguationFlowStrategy();
  *v11 = v5;
  v11[1] = sub_267BBD07C;

  return MEMORY[0x2821B9F38](a1, a2, a3, v12, a5);
}

uint64_t sub_267E6E44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B598] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SendMessageContactNeedsDisambiguationFlowStrategy();
  *v11 = v5;
  v11[1] = sub_267BBD07C;

  return MEMORY[0x2821B9F48](a1, a2, a3, v12, a5);
}

uint64_t sub_267E6E51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B590] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SendMessageContactNeedsDisambiguationFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9F40](a1, a2, v10, a4);
}

uint64_t sub_267E6E5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B5A0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SendMessageContactNeedsDisambiguationFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9F58](a1, a2, v10, a4);
}

uint64_t sub_267E6E6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SendMessageContactNeedsDisambiguationFlowStrategy();

  return MEMORY[0x2821B9F50](a1, v5, a3);
}

void sub_267E6E78C()
{
  OUTLINED_FUNCTION_164_1();
  v1 = v0;
  if (*(v0 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B148, &qword_267F0D050), v2 = OUTLINED_FUNCTION_73_9(), v3 = v2, (v4 = *(v1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(v1 + 16))
    {
      v7 = (v1 + 32 + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
      ++v5;
      v10 = v3[5];
      sub_267EF9FC8();

      sub_267EF9128();
      sub_267EFA018();
      OUTLINED_FUNCTION_124_4();
      v13 = ~v12;
      while (1)
      {
        v14 = v11 & v13;
        v15 = (v11 & v13) >> 6;
        v16 = *(v6 + 8 * v15);
        v17 = 1 << (v11 & v13);
        if ((v17 & v16) == 0)
        {
          break;
        }

        v18 = (v3[6] + 16 * v14);
        v19 = *v18 == v9 && v18[1] == v8;
        if (v19 || (sub_267EF9EA8() & 1) != 0)
        {

          goto LABEL_16;
        }

        v11 = v14 + 1;
      }

      *(v6 + 8 * v15) = v17 | v16;
      v20 = (v3[6] + 16 * v14);
      *v20 = v9;
      v20[1] = v8;
      v21 = v3[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_19;
      }

      v3[2] = v23;
LABEL_16:
      if (v5 == v4)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:

    OUTLINED_FUNCTION_163_2();
  }
}

void sub_267E6E8F0(uint64_t a1)
{
  v1 = a1;
  if (sub_267BAF0DC(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B160, &qword_267F04E88);
    v2 = OUTLINED_FUNCTION_73_9();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v23 = sub_267BAF0DC(v1);
  if (v23)
  {
    v3 = 0;
    v4 = v2 + 7;
    v21 = v1;
    v22 = v1 & 0xC000000000000001;
    v20 = v1 + 32;
    while (1)
    {
      sub_267BBD0EC(v3, v22 == 0, v1);
      v5 = v22 ? MEMORY[0x26D609870](v3, v1) : *(v20 + 8 * v3);
      v6 = v5;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      v8 = v2[5];
      sub_267EF9808();
      OUTLINED_FUNCTION_124_4();
      v11 = ~v10;
      while (1)
      {
        v12 = v9 & v11;
        v13 = (v9 & v11) >> 6;
        v14 = v4[v13];
        v15 = 1 << (v9 & v11);
        if ((v15 & v14) == 0)
        {
          break;
        }

        sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
        v16 = *(v2[6] + 8 * v12);
        v17 = sub_267EF9818();

        if (v17)
        {

          goto LABEL_17;
        }

        v9 = v12 + 1;
      }

      v4[v13] = v15 | v14;
      *(v2[6] + 8 * v12) = v6;
      v18 = v2[2];
      v7 = __OFADD__(v18, 1);
      v19 = v18 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      v2[2] = v19;
LABEL_17:
      v1 = v21;
      if (v3 == v23)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_267E6EAA0()
{
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_162_2();
  v4 = sub_267EF2E88();
  v5 = OUTLINED_FUNCTION_58(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_87_4();
  v9 = MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_31_26(v9, v10, v11, v12, v13, v14, v15, v16, v34);
  if (v0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CB28, &qword_267F0D058), OUTLINED_FUNCTION_73_9(), OUTLINED_FUNCTION_88_6(), v17))
  {
    OUTLINED_FUNCTION_5_63();
    while (1)
    {
      OUTLINED_FUNCTION_153_3();
      if (v19)
      {
        break;
      }

      v20 = OUTLINED_FUNCTION_6_47(v18);
      v1(v20);
      v21 = *(v2 + 40);
      OUTLINED_FUNCTION_70_13();
      sub_267E71494(&qword_28022CB30, v22);
      OUTLINED_FUNCTION_76_14();
      OUTLINED_FUNCTION_45_25();
      while (1)
      {
        OUTLINED_FUNCTION_13_45(v23);
        if (v25)
        {
          break;
        }

        v26 = OUTLINED_FUNCTION_20_30();
        v1(v26);
        OUTLINED_FUNCTION_70_13();
        sub_267E71494(&qword_28022CB38, v27);
        OUTLINED_FUNCTION_49_23();
        v28 = OUTLINED_FUNCTION_43_23();
        (v2)(v28);
        if (v21)
        {
          v33 = OUTLINED_FUNCTION_146_3();
          (v2)(v33);
          v2 = v3;
          goto LABEL_12;
        }

        v23 = OUTLINED_FUNCTION_159_3();
      }

      v29 = OUTLINED_FUNCTION_9_52(v24);
      v30(v29);
      OUTLINED_FUNCTION_148_3();
      if (v32)
      {
        goto LABEL_16;
      }

      *(v2 + 16) = v31;
LABEL_12:
      OUTLINED_FUNCTION_30_34();
      if (v25)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_155_3();
    OUTLINED_FUNCTION_47();
  }
}

uint64_t sub_267E6EC6C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CB20, &qword_267F0D048);
  result = sub_267EF9B28();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = *(a1 + 32 + v5++);
    v8 = *(v3 + 40);
    sub_267EF9FC8();
    MEMORY[0x26D609CA0](v7);
    result = sub_267EFA018();
    v9 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v6 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + v10) == v7)
      {
        goto LABEL_11;
      }

      result = v10 + 1;
    }

    *(v6 + 8 * v11) = v13 | v12;
    *(*(v3 + 48) + v10) = v7;
    v14 = *(v3 + 16);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      goto LABEL_16;
    }

    *(v3 + 16) = v16;
LABEL_11:
    if (v5 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void sub_267E6EDB8()
{
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_162_2();
  v4 = sub_267EF6288();
  v5 = OUTLINED_FUNCTION_58(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_87_4();
  v9 = MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_31_26(v9, v10, v11, v12, v13, v14, v15, v16, v34);
  if (v0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CB78, &qword_267F0D078), OUTLINED_FUNCTION_73_9(), OUTLINED_FUNCTION_88_6(), v17))
  {
    OUTLINED_FUNCTION_5_63();
    while (1)
    {
      OUTLINED_FUNCTION_153_3();
      if (v19)
      {
        break;
      }

      v20 = OUTLINED_FUNCTION_6_47(v18);
      v1(v20);
      v21 = *(v2 + 40);
      OUTLINED_FUNCTION_67_14();
      sub_267E71494(&qword_28022CB80, v22);
      OUTLINED_FUNCTION_76_14();
      OUTLINED_FUNCTION_45_25();
      while (1)
      {
        OUTLINED_FUNCTION_13_45(v23);
        if (v25)
        {
          break;
        }

        v26 = OUTLINED_FUNCTION_20_30();
        v1(v26);
        OUTLINED_FUNCTION_67_14();
        sub_267E71494(&qword_28022C118, v27);
        OUTLINED_FUNCTION_49_23();
        v28 = OUTLINED_FUNCTION_43_23();
        (v2)(v28);
        if (v21)
        {
          v33 = OUTLINED_FUNCTION_146_3();
          (v2)(v33);
          v2 = v3;
          goto LABEL_12;
        }

        v23 = OUTLINED_FUNCTION_159_3();
      }

      v29 = OUTLINED_FUNCTION_9_52(v24);
      v30(v29);
      OUTLINED_FUNCTION_148_3();
      if (v32)
      {
        goto LABEL_16;
      }

      *(v2 + 16) = v31;
LABEL_12:
      OUTLINED_FUNCTION_30_34();
      if (v25)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_155_3();
    OUTLINED_FUNCTION_47();
  }
}

void sub_267E6EF84(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CB40, &qword_267F0D060), v2 = OUTLINED_FUNCTION_73_9(), (v28 = *(v1 + 16)) != 0))
  {
    v3 = 0;
    v26 = v1;
    v27 = v1 + 32;
    while (v3 < *(v1 + 16))
    {
      v4 = *(v27 + v3++);
      v5 = v2[5];
      sub_267EF9FC8();
      sub_267EF9128();

      sub_267EFA018();
      OUTLINED_FUNCTION_124_4();
      v7 = ~v6;
      v9 = v8 & ~v6;
      OUTLINED_FUNCTION_140_2();
      if ((v12 & v11) != 0)
      {
        while (1)
        {
          v13 = 0xE500000000000000;
          v14 = 0x6D75626C61;
          switch(*(v2[6] + v9))
          {
            case 1:
              v13 = 0xE300000000000000;
              v14 = 7368801;
              break;
            case 2:
              v13 = 0xE700000000000000;
              v15 = 0x6C6369747261;
              goto LABEL_20;
            case 3:
              v13 = 0xE600000000000000;
              v14 = 0x747369747261;
              break;
            case 4:
              v13 = 0xE400000000000000;
              v14 = 1802465122;
              break;
            case 5:
              v13 = 0xE700000000000000;
              v15 = 0x646F73697065;
              goto LABEL_20;
            case 6:
              v14 = 0x6569766F6DLL;
              break;
            case 7:
              v13 = 0xE800000000000000;
              v14 = 0x6E6F697461636F6CLL;
              break;
            case 8:
              v14 = 0x697461636F4C796DLL;
              v13 = 0xEA00000000006E6FLL;
              break;
            case 9:
              v16 = 1953458288;
              goto LABEL_16;
            case 0xA:
              v13 = 0xE800000000000000;
              v14 = 0x7473696C79616C70;
              break;
            case 0xB:
              v13 = 0xE700000000000000;
              v14 = 0x74736163646F70;
              break;
            case 0xC:
              v13 = 0xEA0000000000746FLL;
              v14 = 0x68736E6565726373;
              break;
            case 0xD:
              v13 = 0xE400000000000000;
              v14 = 2003789939;
              break;
            case 0xE:
              v13 = 0xE400000000000000;
              v14 = 1735290739;
              break;
            case 0xF:
              v16 = 1701079414;
LABEL_16:
              v14 = v16 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
              break;
            case 0x10:
              v13 = 0xE700000000000000;
              v15 = 0x676170626577;
LABEL_20:
              v14 = v15 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
              break;
            default:
              break;
          }

          v17 = 0xE500000000000000;
          v18 = 0x6D75626C61;
          switch(v4)
          {
            case 1:
              v17 = 0xE300000000000000;
              v18 = 7368801;
              break;
            case 2:
              v17 = 0xE700000000000000;
              v19 = 0x6C6369747261;
              goto LABEL_39;
            case 3:
              v17 = 0xE600000000000000;
              v18 = 0x747369747261;
              break;
            case 4:
              v17 = 0xE400000000000000;
              v18 = 1802465122;
              break;
            case 5:
              v17 = 0xE700000000000000;
              v19 = 0x646F73697065;
              goto LABEL_39;
            case 6:
              v18 = 0x6569766F6DLL;
              break;
            case 7:
              v17 = 0xE800000000000000;
              v18 = 0x6E6F697461636F6CLL;
              break;
            case 8:
              v18 = 0x697461636F4C796DLL;
              v17 = 0xEA00000000006E6FLL;
              break;
            case 9:
              v20 = 1953458288;
              goto LABEL_35;
            case 10:
              v17 = 0xE800000000000000;
              v18 = 0x7473696C79616C70;
              break;
            case 11:
              v17 = 0xE700000000000000;
              v18 = 0x74736163646F70;
              break;
            case 12:
              v17 = 0xEA0000000000746FLL;
              v18 = 0x68736E6565726373;
              break;
            case 13:
              v17 = 0xE400000000000000;
              v18 = 2003789939;
              break;
            case 14:
              v17 = 0xE400000000000000;
              v18 = 1735290739;
              break;
            case 15:
              v20 = 1701079414;
LABEL_35:
              v18 = v20 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
              break;
            case 16:
              v17 = 0xE700000000000000;
              v19 = 0x676170626577;
LABEL_39:
              v18 = v19 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
              break;
            default:
              break;
          }

          if (v14 == v18 && v13 == v17)
          {
            break;
          }

          v22 = sub_267EF9EA8();

          if (v22)
          {
            goto LABEL_53;
          }

          v9 = (v9 + 1) & v7;
          OUTLINED_FUNCTION_140_2();
          if ((v11 & v12) == 0)
          {
            goto LABEL_50;
          }
        }
      }

      else
      {
LABEL_50:
        v2[v10 + 7] = v11 | v12;
        *(v2[6] + v9) = v4;
        v23 = v2[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_56;
        }

        v2[2] = v25;
      }

LABEL_53:
      v1 = v26;
      if (v3 == v28)
      {
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
  }

  else
  {
LABEL_54:
  }
}

void sub_267E6F564()
{
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_162_2();
  v4 = sub_267EF88B8();
  v5 = OUTLINED_FUNCTION_58(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_87_4();
  v9 = MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_31_26(v9, v10, v11, v12, v13, v14, v15, v16, v34);
  if (v0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CB48, &qword_267F0D068), OUTLINED_FUNCTION_73_9(), OUTLINED_FUNCTION_88_6(), v17))
  {
    OUTLINED_FUNCTION_5_63();
    while (1)
    {
      OUTLINED_FUNCTION_153_3();
      if (v19)
      {
        break;
      }

      v20 = OUTLINED_FUNCTION_6_47(v18);
      v1(v20);
      v21 = *(v2 + 40);
      OUTLINED_FUNCTION_69_13();
      sub_267E71494(&qword_28022CB50, v22);
      OUTLINED_FUNCTION_76_14();
      OUTLINED_FUNCTION_45_25();
      while (1)
      {
        OUTLINED_FUNCTION_13_45(v23);
        if (v25)
        {
          break;
        }

        v26 = OUTLINED_FUNCTION_20_30();
        v1(v26);
        OUTLINED_FUNCTION_69_13();
        sub_267E71494(&qword_28022CB58, v27);
        OUTLINED_FUNCTION_49_23();
        v28 = OUTLINED_FUNCTION_43_23();
        (v2)(v28);
        if (v21)
        {
          v33 = OUTLINED_FUNCTION_146_3();
          (v2)(v33);
          v2 = v3;
          goto LABEL_12;
        }

        v23 = OUTLINED_FUNCTION_159_3();
      }

      v29 = OUTLINED_FUNCTION_9_52(v24);
      v30(v29);
      OUTLINED_FUNCTION_148_3();
      if (v32)
      {
        goto LABEL_16;
      }

      *(v2 + 16) = v31;
LABEL_12:
      OUTLINED_FUNCTION_30_34();
      if (v25)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_155_3();
    OUTLINED_FUNCTION_47();
  }
}

void sub_267E6F730()
{
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_162_2();
  v4 = sub_267EF8728();
  v5 = OUTLINED_FUNCTION_58(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_87_4();
  v9 = MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_31_26(v9, v10, v11, v12, v13, v14, v15, v16, v34);
  if (v0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CB60, &qword_267F0D070), OUTLINED_FUNCTION_73_9(), OUTLINED_FUNCTION_88_6(), v17))
  {
    OUTLINED_FUNCTION_5_63();
    while (1)
    {
      OUTLINED_FUNCTION_153_3();
      if (v19)
      {
        break;
      }

      v20 = OUTLINED_FUNCTION_6_47(v18);
      v1(v20);
      v21 = *(v2 + 40);
      OUTLINED_FUNCTION_68_13();
      sub_267E71494(&qword_28022CB68, v22);
      OUTLINED_FUNCTION_76_14();
      OUTLINED_FUNCTION_45_25();
      while (1)
      {
        OUTLINED_FUNCTION_13_45(v23);
        if (v25)
        {
          break;
        }

        v26 = OUTLINED_FUNCTION_20_30();
        v1(v26);
        OUTLINED_FUNCTION_68_13();
        sub_267E71494(&qword_28022CB70, v27);
        OUTLINED_FUNCTION_49_23();
        v28 = OUTLINED_FUNCTION_43_23();
        (v2)(v28);
        if (v21)
        {
          v33 = OUTLINED_FUNCTION_146_3();
          (v2)(v33);
          v2 = v3;
          goto LABEL_12;
        }

        v23 = OUTLINED_FUNCTION_159_3();
      }

      v29 = OUTLINED_FUNCTION_9_52(v24);
      v30(v29);
      OUTLINED_FUNCTION_148_3();
      if (v32)
      {
        goto LABEL_16;
      }

      *(v2 + 16) = v31;
LABEL_12:
      OUTLINED_FUNCTION_30_34();
      if (v25)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_155_3();
    OUTLINED_FUNCTION_47();
  }
}

uint64_t sub_267E6F8FC(uint64_t a1, uint64_t a2, void *a3)
{
  v59 = a2;
  v5 = a3[3];
  v6 = a3[4];
  OUTLINED_FUNCTION_131(a3);
  v7 = sub_267BCD18C();
  v8 = sub_267D32820(a1);
  if ((v8 & 1) == 0)
  {
    v58 = 0x500000000;
    v13 = MEMORY[0x277D84F90];
    v65 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  LOBYTE(v6) = sub_267D32DB4(a1);
  v9 = a3[3];
  v10 = a3[4];
  OUTLINED_FUNCTION_131(a3);
  v11 = sub_267DBF878();
  if (v6)
  {
    v12 = 5;
  }

  else
  {
    v12 = 1;
  }

  HIDWORD(v58) = v12;
  v13 = MEMORY[0x277D84F90];
  v65 = MEMORY[0x277D84F90];
  if ((v11 & 1) == 0)
  {
    LODWORD(v58) = 0;
    goto LABEL_13;
  }

  LOBYTE(v6) = v7 ^ 1;
  sub_267BBD0EC(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_34;
  }

  for (i = *(a1 + 32); ; i = MEMORY[0x26D609870](0, a1))
  {
    v15 = i;
    sub_267CF0184(i, v6 & 1);

    v16 = MEMORY[0x26D608F90]();
    OUTLINED_FUNCTION_145_3(v16, v17, v18, v19, v20, v21, v22, v23, v52, v54, v55, v56, v58, v59, v60, v61, v62, v63, v64, v65);
    if (v25)
    {
      OUTLINED_FUNCTION_8_2(v24);
      sub_267EF9328();
    }

    sub_267EF9368();
    LODWORD(v58) = 5;
    v13 = v65;
LABEL_13:
    v26 = sub_267BAF0DC(a1);
    if (!v26)
    {
      break;
    }

    v27 = v26;
    if (v26 >= 1)
    {
      v28 = 0;
      v29 = a1;
      v57 = a1 & 0xC000000000000001;
      if (v8)
      {
        v30 = 2;
      }

      else
      {
        v30 = 5;
      }

      if (v7)
      {
        v31 = 5;
      }

      else
      {
        v31 = 3;
      }

      v53 = xmmword_267EFCDC0;
      do
      {
        if (v57)
        {
          v32 = MEMORY[0x26D609870](v28, v29);
        }

        else
        {
          v32 = *(v29 + 8 * v28 + 32);
        }

        v33 = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CB18, &qword_267F0D040);
        inited = swift_initStackObject();
        *(inited + 16) = v53;
        *(inited + 32) = v58;
        *(inited + 33) = BYTE4(v58);
        *(inited + 34) = v30;
        *(inited + 35) = v31;
        v35 = a3[3];
        v36 = a3[4];
        OUTLINED_FUNCTION_131(a3);
        v38 = v37;
        if (sub_267DBF878())
        {
          v39 = 4;
        }

        else
        {
          v39 = 5;
        }

        *(inited + 36) = v39;
        sub_267E6EC6C(inited);
        v40 = OUTLINED_FUNCTION_61_2();
        sub_267E6FBC4(v40, v38);

        v42 = MEMORY[0x26D608F90](v41);
        OUTLINED_FUNCTION_145_3(v42, v43, v44, v45, v46, v47, v48, v49, v53, *(&v53 + 1), v55, v57, v58, v59, v60, v61, v62, v63, v64, v65);
        if (v25)
        {
          OUTLINED_FUNCTION_8_2(v50);
          sub_267EF9328();
        }

        ++v28;
        sub_267EF9368();
      }

      while (v27 != v28);
      return v65;
    }

    __break(1u);
LABEL_34:
    ;
  }

  return v13;
}

uint64_t sub_267E6FBC4(void *a1, void *a2)
{
  v4 = sub_267EF4B68();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_267CF0394(a1, a2);
  v6 = sub_267BBDEAC();
  sub_267CEFFB0(v6, v7);

  if (sub_267EE9580(0, a2))
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v8 = sub_267EF8A08();
    __swift_project_value_buffer(v8, qword_280240FB0);
    v9 = sub_267EF89F8();
    v10 = sub_267EF95D8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_267B93000, v9, v10, "Making person disambiguation item with image", v11, 2u);
      MEMORY[0x26D60A7B0](v11, -1, -1);
    }

    v12 = sub_267EE9580(3u, a2);
    INPerson.displayImage(isDeviceLocked:)(v12 & 1);
    v13 = sub_267EF3928();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    return sub_267EF38A8();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v17 = sub_267EF8A08();
    __swift_project_value_buffer(v17, qword_280240FB0);
    v18 = sub_267EF89F8();
    v19 = sub_267EF95D8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_267B93000, v18, v19, "Making person disambiguation item without image", v20, 2u);
      MEMORY[0x26D60A7B0](v20, -1, -1);
    }

    v21 = sub_267EF3928();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    return sub_267EF3898();
  }
}

void sub_267E6FE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  v25 = OUTLINED_FUNCTION_18(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_60();
  v30 = v28 - v29;
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v184 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v184 - v36;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_45_0();
  v198 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF40, &unk_267F0CF80);
  v40 = OUTLINED_FUNCTION_18(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  v44 = &v184 - v43;
  v45 = sub_267EF3D18();
  v206 = OUTLINED_FUNCTION_58(v45);
  v207 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v206);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_45_0();
  v202 = v54;
  OUTLINED_FUNCTION_26_2();
  v55 = sub_267EF3E38();
  v56 = OUTLINED_FUNCTION_58(v55);
  v199 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_60();
  v205 = v60 - v61;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_77_0();
  v209 = v63;
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_45_0();
  v213 = v65;
  OUTLINED_FUNCTION_26_2();
  v66 = sub_267EF4968();
  v67 = OUTLINED_FUNCTION_58(v66);
  v69 = v68;
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_2_0();
  v184 = v72;
  v73 = MEMORY[0x277D84F90];
  v214 = MEMORY[0x277D84F90];
  v200 = v23;
  v74 = sub_267BAF0DC(v23);
  v186 = v66;
  v185 = v69;
  if (v74)
  {
    if (v74 >= 1)
    {
      v204 = v44;
      v196 = v37;
      v75 = 0;
      v194 = v200 & 0xC000000000000001;
      v212 = (v199 + 16);
      v193 = v199 + 32;
      v203 = v207 + 32;
      v192 = v199 + 8;
      v76 = MEMORY[0x277D84F90];
      v197 = v30;
      v77 = &selRef_personTypes;
      v210 = MEMORY[0x277D84F90];
      v191 = v55;
      v201 = v34;
      v195 = v74;
      while (1)
      {
        v208 = v75;
        if (v194)
        {
          v78 = MEMORY[0x26D609870](v75, v200);
        }

        else
        {
          v78 = *(v200 + 8 * v75 + 32);
        }

        v79 = v78;
        sub_267BBDEAC();
        if (qword_280228868 != -1)
        {
          OUTLINED_FUNCTION_71_10();
          swift_once();
        }

        sub_267EF5648();
        sub_267BCEF48();
        OUTLINED_FUNCTION_143_3();
        v80 = v213;
        sub_267EF3E18();
        v211 = *v212;
        v211(v209, v80, v55);
        v81 = v210;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v167 = *(v81 + 16);
          sub_267C71114();
          v81 = v168;
        }

        v83 = *(v81 + 16);
        v82 = *(v81 + 24);
        if (v83 >= v82 >> 1)
        {
          OUTLINED_FUNCTION_5_6(v82);
          sub_267C71114();
          v81 = v169;
        }

        *(v81 + 16) = v83 + 1;
        v84 = (*(v199 + 80) + 32) & ~*(v199 + 80);
        v210 = v81;
        (*(v199 + 32))(v81 + v84 + *(v199 + 72) * v83, v209, v55);
        v85 = [v79 v77[9]];
        v86 = sub_267EF9028();
        v88 = v87;

        v89 = HIBYTE(v88) & 0xF;
        if ((v88 & 0x2000000000000000) == 0)
        {
          v89 = v86 & 0xFFFFFFFFFFFFLL;
        }

        if (v89)
        {
          v90 = OUTLINED_FUNCTION_26_34();
          v91(v90);
          OUTLINED_FUNCTION_79_13();
          v92 = [v79 v77 + 1912];
          sub_267EF9028();

          sub_267EF5628();
          sub_267EF55A8();
          sub_267EF5648();

          sub_267EF55A8();
          sub_267BCEF48();

          v93 = v205;
          sub_267EF3E18();
          sub_267EF3D08();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_25_37();
            v76 = v170;
          }

          OUTLINED_FUNCTION_39_24();
          v95 = v201;
          v55 = v191;
          v77 = &selRef_personTypes;
          if (v96)
          {
            OUTLINED_FUNCTION_5_6(v94);
            sub_267C7103C();
            v76 = v171;
          }

          *(v76 + 16) = v93;
          v97 = OUTLINED_FUNCTION_4_62();
          v98(v97, v202);
          v214 = v76;
        }

        else
        {
          v95 = v201;
        }

        v99 = [v79 nameComponents];
        if (v99)
        {
          v100 = v99;
          v101 = v196;
          sub_267EF2A18();

          v102 = 0;
        }

        else
        {
          v102 = 1;
          v101 = v196;
        }

        v103 = sub_267EF2A58();
        __swift_storeEnumTagSinglePayload(v101, v102, 1, v103);
        v104 = v198;
        sub_267D2E49C(v101, v198);
        if (__swift_getEnumTagSinglePayload(v104, 1, v103))
        {
          sub_267B9F98C(v104, &unk_28022BCA0, &unk_267EFD990);
        }

        else
        {
          v109 = sub_267EF2988();
          v111 = v110;
          sub_267B9F98C(v104, &unk_28022BCA0, &unk_267EFD990);
          if (v111)
          {
            v112 = HIBYTE(v111) & 0xF;
            if ((v111 & 0x2000000000000000) == 0)
            {
              v112 = v109 & 0xFFFFFFFFFFFFLL;
            }

            if (v112)
            {
              v211(v204, v213, v55);
              OUTLINED_FUNCTION_9();
              __swift_storeEnumTagSinglePayload(v113, v114, v115, v55);
              sub_267EF5628();
              OUTLINED_FUNCTION_142_2();
              sub_267EF55C8();
              v187 = sub_267EF5648();

              v116 = sub_267EF55C8();
              sub_267BCEF48();

              OUTLINED_FUNCTION_81_10();
              sub_267EF3E18();
              sub_267EF3D08();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_25_37();
                v76 = v174;
              }

              OUTLINED_FUNCTION_39_24();
              v95 = v201;
              v55 = v191;
              v77 = &selRef_personTypes;
              if (v96)
              {
                OUTLINED_FUNCTION_5_6(v117);
                sub_267C7103C();
                v76 = v175;
              }

              *(v76 + 16) = v116;
              v118 = OUTLINED_FUNCTION_4_62();
              v119(v118, v188);
              v214 = v76;
            }

            else
            {
            }
          }
        }

        v105 = [v79 nameComponents];
        if (v105)
        {
          v106 = v105;
          v107 = v197;
          sub_267EF2A18();

          v108 = 0;
        }

        else
        {
          v108 = 1;
          v107 = v197;
        }

        __swift_storeEnumTagSinglePayload(v107, v108, 1, v103);
        v120 = OUTLINED_FUNCTION_26_0();
        sub_267D2E49C(v120, v121);
        if (__swift_getEnumTagSinglePayload(v95, 1, v103))
        {
          sub_267B9F98C(v95, &unk_28022BCA0, &unk_267EFD990);
        }

        else
        {
          v144 = sub_267EF29A8();
          v146 = v145;
          sub_267B9F98C(v95, &unk_28022BCA0, &unk_267EFD990);
          if (v146)
          {
            v147 = HIBYTE(v146) & 0xF;
            if ((v146 & 0x2000000000000000) == 0)
            {
              v147 = v144 & 0xFFFFFFFFFFFFLL;
            }

            if (v147)
            {
              v211(v204, v213, v55);
              OUTLINED_FUNCTION_9();
              __swift_storeEnumTagSinglePayload(v148, v149, v150, v55);
              sub_267EF5628();
              OUTLINED_FUNCTION_142_2();
              sub_267EF55B8();
              sub_267EF5648();

              sub_267EF55B8();
              sub_267BCEF48();

              v151 = v205;
              OUTLINED_FUNCTION_161_2();
              sub_267EF3E18();
              sub_267EF3D08();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_25_37();
                v76 = v176;
              }

              OUTLINED_FUNCTION_39_24();
              v55 = v191;
              v77 = &selRef_personTypes;
              if (v96)
              {
                OUTLINED_FUNCTION_5_6(v152);
                sub_267C7103C();
                v76 = v177;
              }

              *(v76 + 16) = v151;
              v153 = OUTLINED_FUNCTION_4_62();
              v154(v153, v189);
              v214 = v76;
            }

            else
            {
            }
          }
        }

        v122 = [v79 personHandle];
        if (v122)
        {
          v123 = v122;
          sub_267C85790();
          if (v124)
          {
            v125 = OUTLINED_FUNCTION_26_34();
            v126(v125);
            OUTLINED_FUNCTION_79_13();
            if (qword_280228888 != -1)
            {
              OUTLINED_FUNCTION_17_29();
              swift_once();
            }

            sub_267EF5648();
            sub_267BCEF48();
            OUTLINED_FUNCTION_143_3();
            v127 = v205;
            sub_267EF3E18();
            OUTLINED_FUNCTION_135_1(&a15);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_25_37();
              v76 = v172;
            }

            v77 = &selRef_personTypes;
            OUTLINED_FUNCTION_39_24();
            if (v96)
            {
              OUTLINED_FUNCTION_5_6(v128);
              sub_267C7103C();
              v76 = v173;
            }

            *(v76 + 16) = v127;
            v129 = OUTLINED_FUNCTION_4_62();
            v130(v129, v190);
            v214 = v76;
          }

          v131 = sub_267BC2AF0(v123);
          if (v132)
          {
            v133 = HIBYTE(v132) & 0xF;
            if ((v132 & 0x2000000000000000) == 0)
            {
              v133 = v131 & 0xFFFFFFFFFFFFLL;
            }

            if (v133)
            {
              v134 = [v123 type];
              if (v134 == 1)
              {
                v161 = OUTLINED_FUNCTION_26_34();
                v162(v161);
                OUTLINED_FUNCTION_79_13();
                if (qword_280228880 != -1)
                {
                  swift_once();
                }

                v163 = qword_280241038;
                sub_267EF5648();
                sub_267BCEF48();
                OUTLINED_FUNCTION_143_3();
                OUTLINED_FUNCTION_81_10();
                sub_267EF3E18();
                OUTLINED_FUNCTION_135_1(&a10);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_25_37();
                  v76 = v180;
                }

                v77 = &selRef_personTypes;
                OUTLINED_FUNCTION_39_24();
                if (v96)
                {
                  OUTLINED_FUNCTION_5_6(v164);
                  sub_267C7103C();
                  v76 = v181;
                }

                v165 = OUTLINED_FUNCTION_14_42();
                v166(v165);
                *(v76 + 16) = v163;
                v141 = OUTLINED_FUNCTION_4_62();
                v143 = &a10;
                goto LABEL_85;
              }

              if (v134 == 2)
              {
                v135 = OUTLINED_FUNCTION_26_34();
                v136(v135);
                OUTLINED_FUNCTION_79_13();
                if (qword_280228878 != -1)
                {
                  swift_once();
                }

                v137 = qword_280241030;
                sub_267EF5648();
                sub_267BCEF48();
                OUTLINED_FUNCTION_143_3();
                OUTLINED_FUNCTION_81_10();
                sub_267EF3E18();
                OUTLINED_FUNCTION_135_1(&a11);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_25_37();
                  v76 = v178;
                }

                v77 = &selRef_personTypes;
                OUTLINED_FUNCTION_39_24();
                if (v96)
                {
                  OUTLINED_FUNCTION_5_6(v138);
                  sub_267C7103C();
                  v76 = v179;
                }

                v139 = OUTLINED_FUNCTION_14_42();
                v140(v139);
                *(v76 + 16) = v137;
                v141 = OUTLINED_FUNCTION_4_62();
                v143 = &a11;
LABEL_85:
                v142(v141, *(v143 - 32), v206);
                v214 = v76;
                goto LABEL_86;
              }
            }

            v159 = OUTLINED_FUNCTION_14_42();
            v160(v159);
          }

          else
          {
            v157 = OUTLINED_FUNCTION_14_42();
            v158(v157);
          }
        }

        else
        {
          v155 = OUTLINED_FUNCTION_14_42();
          v156(v155);
        }

LABEL_86:
        v75 = v208 + 1;
        if (v195 == v208 + 1)
        {
          goto LABEL_89;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v210 = v73;
LABEL_89:
    if (qword_280228870 != -1)
    {
      OUTLINED_FUNCTION_32_22();
    }

    sub_267EF5648();
    v182 = v184;
    sub_267EF4948();
    v183 = sub_267EF4958();

    (*(v185 + 8))(v182, v186);
    sub_267C9B4C4(v183);
    OUTLINED_FUNCTION_47();
  }
}

uint64_t sub_267E70CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_267BBD07C;

  return sub_267E6B6B0(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_267E70DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_48();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_55_16(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_76(v11);
  OUTLINED_FUNCTION_36_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_267E70E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_267BBD07C;

  return sub_267E6B5A0(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_267E70F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_48();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_55_16(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_76(v11);
  OUTLINED_FUNCTION_36_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_267E70FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_267BBD07C;

  return sub_267E6B490(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_267E7107C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_48();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_55_16(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_76(v11);
  OUTLINED_FUNCTION_36_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_267E7110C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_267BBD07C;

  return sub_267E6B2A0(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_267E711DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_48();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_55_16(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_76(v11);
  OUTLINED_FUNCTION_36_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_267E7126C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_267BBD07C;

  return sub_267E6B190(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_267E7133C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_48();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_55_16(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_76(v11);
  OUTLINED_FUNCTION_36_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_267E713CC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_267E66A24(a1, *a2, a3, sub_267E71538);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_267E71410@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_267E66A24(a1, *a2, a3, sub_267E71470);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_267E71494(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_135_1@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_267EF3D08();
}

uint64_t OUTLINED_FUNCTION_137_3()
{

  return sub_267EF7E88();
}

void OUTLINED_FUNCTION_151_2()
{
  *(v1 - 176) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_152_3()
{
  v1 = v0[10];
  v2 = *(v0[11] + 8);
  return v0[12];
}

uint64_t OUTLINED_FUNCTION_165_2()
{

  return sub_267EF47A8();
}

uint64_t OUTLINED_FUNCTION_168_3()
{
  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];

  return sub_267EF3CA8();
}

uint64_t OUTLINED_FUNCTION_170_3(__n128 a1, uint64_t a2, __n128 *a3)
{
  *a3 = a1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_171_3()
{

  return sub_267EF7868();
}

void *OUTLINED_FUNCTION_172_3()
{

  return __swift_project_boxed_opaque_existential_0((v1 + 16), v0);
}

unint64_t sub_267E716C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CBA0, &unk_267F0D0D0);
    v2 = sub_267EF9CF8();
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
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v25 = *(*(a1 + 56) + 8 * v11);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229298, &qword_267EFCDF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEF0, &qword_267EFCDE0);
    swift_dynamicCast();
    v29 = v27;
    v30 = v28;
    v26 = v27;
    v27 = v28;
    result = sub_267BA9948();
    v15 = result;
    if (v16)
    {
      v17 = (v2[6] + 16 * result);
      v18 = v17[1];
      *v17 = v14;
      v17[1] = v13;

      result = sub_267E76214(&v26, v2[7] + 32 * v15);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = (v2[6] + 16 * result);
      *v19 = v14;
      v19[1] = v13;
      v20 = (v2[7] + 32 * result);
      v21 = v27;
      *v20 = v26;
      v20[1] = v21;
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_20;
      }

      v2[2] = v24;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_267E71910(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CB90, &qword_267F0D0A8);
    v2 = sub_267EF9CF8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = v12[1];
    v14 = *(*(a1 + 56) + 8 * v11);
    *&v33[0] = *v12;
    *(&v33[0] + 1) = v13;

    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229298, &qword_267EFCDF0);
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_267BA7F4C(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_267BA7F4C(v32, v33);
    v15 = *(v2 + 40);
    result = sub_267EF9AC8();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v2 + 48) + 40 * v19;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    result = sub_267BA7F4C(v33, (*(v2 + 56) + 32 * v19));
    ++*(v2 + 16);
  }

  while (v5);
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
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_267E71BD8@<X0>(void *a1@<X8>)
{
  v2 = sub_267EF4C08();
  v3 = OUTLINED_FUNCTION_58(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_0();
  v8 = sub_267EF4BE8();
  v9 = OUTLINED_FUNCTION_58(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_0();
  v16 = v15 - v14;
  sub_267EF4B88();
  v17 = v5[11];
  v18 = OUTLINED_FUNCTION_1_10();
  if (v19(v18) == *MEMORY[0x277D5C150])
  {
    v20 = v5[12];
    v21 = OUTLINED_FUNCTION_1_10();
    v22(v21);
    v23 = *(v11 + 32);
    v24 = OUTLINED_FUNCTION_91_1();
    v25(v24);
    sub_267B9CC04(v16, a1);
    return (*(v11 + 8))(v16, v8);
  }

  else
  {
    v27 = v5[1];
    v28 = OUTLINED_FUNCTION_1_10();
    v29(v28);
    type metadata accessor for DirectInvocationUseCases();
    v30 = OUTLINED_FUNCTION_55();
    return __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  }
}

uint64_t sub_267E71D90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!a1)
  {
    v37 = 0u;
    v38 = 0u;
    goto LABEL_8;
  }

  sub_267BB40A0(0xD000000000000016, 0x8000000267F0FE30, a1);
  if (!*(&v38 + 1))
  {
LABEL_8:
    sub_267B9FF34(&v37, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    sub_267BB40A0(0x6C646E7542707061, 0xEB00000000644965, a1);
    if (swift_dynamicCast())
    {
      sub_267BB40A0(0xD000000000000010, 0x8000000267F1C250, a1);
      sub_267BA9F38(0, &qword_280229538, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v34 = [v35 integerValue];
      }

      else
      {
        v34 = 0;
      }

      sub_267BB40A0(0xD000000000000015, 0x8000000267F1C270, a1);
      if (*(&v38 + 1))
      {
        if (swift_dynamicCast())
        {
          v15 = v35;
          goto LABEL_24;
        }
      }

      else
      {
        sub_267B9FF34(&v37, &qword_28022AEF0, &qword_267EFCDE0);
      }

      v15 = 0;
LABEL_24:
      v16 = objc_opt_self();
      sub_267BB52B4(a1);
      v17 = sub_267EF8EE8();

      v18 = [v16 announcePayloadFromUserData_];

      v19 = MEMORY[0x277D84F90];
      if (v18)
      {
        v20 = sub_267E760C8(v18);
        if (v20)
        {
          v19 = v20;
        }
      }

      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v21 = sub_267EF8A08();
      __swift_project_value_buffer(v21, qword_280240FB0);

      v22 = sub_267EF89F8();
      v23 = sub_267EF95D8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v33 = v15;
        v25 = swift_slowAlloc();
        *&v37 = v25;
        *v24 = 134218242;
        *(v24 + 4) = sub_267BAF0DC(v19);
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_267BA33E8(v35, v36, &v37);
        _os_log_impl(&dword_267B93000, v22, v23, "#DirectInvocationUseCases %ld summaries available for notification %s", v24, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v25);
        v26 = v25;
        v15 = v33;
        MEMORY[0x26D60A7B0](v26, -1, -1);
        MEMORY[0x26D60A7B0](v24, -1, -1);
      }

      if (sub_267BAF0DC(v19))
      {
        sub_267BBD0EC(0, (v19 & 0xC000000000000001) == 0, v19);
        if ((v19 & 0xC000000000000001) != 0)
        {

          v27 = MEMORY[0x26D609870](0, v19);
        }

        else
        {
          v27 = *(v19 + 32);
        }

        v28 = [v27 summary];

        v29 = sub_267EF9028();
        v31 = v30;

        *a2 = v35;
        a2[1] = v36;
        a2[2] = v35;
        a2[3] = v36;
        a2[4] = v15;
        a2[5] = v34;
        a2[6] = v29;
        a2[7] = v31;
        v32 = type metadata accessor for DirectInvocationUseCases();
      }

      else
      {

        *a2 = v35;
        a2[1] = v36;
        a2[2] = v35;
        a2[3] = v36;
        a2[4] = v15;
        a2[5] = v34;
        v32 = type metadata accessor for DirectInvocationUseCases();
        a2[6] = 0;
        a2[7] = 0;
      }

      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(a2, 0, 1, v32);
    }
  }

LABEL_9:
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v4 = sub_267EF8A08();
  __swift_project_value_buffer(v4, qword_280240FB0);

  v5 = sub_267EF89F8();
  v6 = sub_267EF95E8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v37 = v8;
    *v7 = 136315138;
    if (a1)
    {
      v9 = sub_267EF8F08();
      v11 = v10;
    }

    else
    {
      v11 = 0xE300000000000000;
      v9 = 7104878;
    }

    v12 = sub_267BA33E8(v9, v11, &v37);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_267B93000, v5, v6, "#DirectInvocationUseCases invalid user data for announceMessage: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26D60A7B0](v8, -1, -1);
    MEMORY[0x26D60A7B0](v7, -1, -1);
  }

  v13 = type metadata accessor for DirectInvocationUseCases();
  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v13);
}

uint64_t sub_267E723F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BFD0, &qword_267F0D0B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = v35 - v5;
  v7 = sub_267EF8228();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v36 = 0u;
    v37 = 0u;
    goto LABEL_10;
  }

  sub_267BB40A0(0x72506E6F74747562, 0xED00006465737365, a1);
  if (!*(&v37 + 1))
  {
LABEL_10:
    sub_267B9FF34(&v36, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v21 = sub_267EF8A08();
    __swift_project_value_buffer(v21, qword_280240FB0);

    v15 = sub_267EF89F8();
    v22 = sub_267EF95E8();

    if (!os_log_type_enabled(v15, v22))
    {
      goto LABEL_19;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v36 = v24;
    *v23 = 136315138;
    if (a1)
    {
      v25 = sub_267EF8F08();
      v27 = v26;
    }

    else
    {
      v27 = 0xE300000000000000;
      v25 = 7104878;
    }

    v28 = sub_267BA33E8(v25, v27, &v36);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_267B93000, v15, v22, "#DirectInvocationUseCases invalid user data for buttonPress: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x26D60A7B0](v24, -1, -1);
    v20 = v23;
    goto LABEL_18;
  }

  v13 = v35[0];
  v12 = v35[1];

  sub_267EF8208();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {

    v33 = *(v8 + 32);
    v33(v11, v6, v7);
    v33(a2, v11, v7);
    v34 = type metadata accessor for DirectInvocationUseCases();
    swift_storeEnumTagMultiPayload();
    v30 = a2;
    v31 = 0;
    v29 = v34;
    return __swift_storeEnumTagSinglePayload(v30, v31, 1, v29);
  }

  sub_267B9FF34(v6, &qword_28022BFD0, &qword_267F0D0B0);
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v14 = sub_267EF8A08();
  __swift_project_value_buffer(v14, qword_280240FB0);

  v15 = sub_267EF89F8();
  v16 = sub_267EF95E8();

  if (!os_log_type_enabled(v15, v16))
  {

    goto LABEL_19;
  }

  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  *&v36 = v18;
  *v17 = 136315138;
  v19 = sub_267BA33E8(v13, v12, &v36);

  *(v17 + 4) = v19;
  _os_log_impl(&dword_267B93000, v15, v16, "#DirectInvocationUseCases Unrecognized buttonPressed value: %s", v17, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v18);
  MEMORY[0x26D60A7B0](v18, -1, -1);
  v20 = v17;
LABEL_18:
  MEMORY[0x26D60A7B0](v20, -1, -1);
LABEL_19:

  v29 = type metadata accessor for DirectInvocationUseCases();
  v30 = a2;
  v31 = 1;
  return __swift_storeEnumTagSinglePayload(v30, v31, 1, v29);
}

uint64_t sub_267E728AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!a1)
  {
    v20 = 0u;
    v21 = 0u;
    goto LABEL_7;
  }

  sub_267BB40A0(0xD000000000000016, 0x8000000267F0FE30, a1);
  if (!*(&v21 + 1))
  {
LABEL_7:
    sub_267B9FF34(&v20, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {
    sub_267BB40A0(0x6C646E7542707061, 0xEB00000000644965, a1);
    if (swift_dynamicCast())
    {
      *a2 = v18;
      a2[1] = v19;
      a2[2] = v18;
      a2[3] = v19;
      v4 = type metadata accessor for DirectInvocationUseCases();
      swift_storeEnumTagMultiPayload();
      v5 = a2;
      v6 = 0;
      v7 = v4;
      return __swift_storeEnumTagSinglePayload(v5, v6, 1, v7);
    }
  }

LABEL_8:
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v8 = sub_267EF8A08();
  __swift_project_value_buffer(v8, qword_280240FB0);

  v9 = sub_267EF89F8();
  v10 = sub_267EF95E8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v20 = v12;
    *v11 = 136315138;
    if (a1)
    {
      v13 = sub_267EF8F08();
      v15 = v14;
    }

    else
    {
      v15 = 0xE300000000000000;
      v13 = 7104878;
    }

    v16 = sub_267BA33E8(v13, v15, &v20);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_267B93000, v9, v10, "#DirectInvocationUseCases invalid user data for readMessagesFromNotification: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x26D60A7B0](v12, -1, -1);
    MEMORY[0x26D60A7B0](v11, -1, -1);
  }

  v7 = type metadata accessor for DirectInvocationUseCases();
  v5 = a2;
  v6 = 1;
  return __swift_storeEnumTagSinglePayload(v5, v6, 1, v7);
}

uint64_t sub_267E72B74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!a1)
  {
    v34 = 0u;
    v35 = 0u;
    goto LABEL_11;
  }

  sub_267BB40A0(0x6C646E7542707061, 0xEB00000000644965, a1);
  if (!*(&v35 + 1))
  {
LABEL_11:
    sub_267B9FF34(&v34, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v7 = sub_267EF8A08();
    __swift_project_value_buffer(v7, qword_280240FB0);

    v8 = sub_267EF89F8();
    v9 = sub_267EF95E8();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_20;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v34 = v11;
    *v10 = 136315138;
    if (a1)
    {
      v12 = sub_267EF8F08();
      v14 = v13;
    }

    else
    {
      v14 = 0xE300000000000000;
      v12 = 7104878;
    }

    v15 = sub_267BA33E8(v12, v14, &v34);

    *(v10 + 4) = v15;
    v16 = "#DirectInvocationUseCases invalid user data for newMessageToContact: %s";
    goto LABEL_19;
  }

  sub_267BB40A0(0x4E746361746E6F63, 0xEB00000000656D61, a1);
  v4 = swift_dynamicCast();
  if (v4)
  {
    v5 = v32;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v33;
  }

  else
  {
    v6 = 0;
  }

  sub_267BB40A0(0xD000000000000012, 0x8000000267F1C290, a1);
  if (*(&v35 + 1))
  {
    v21 = swift_dynamicCast();
    if (v21)
    {
      v22 = v32;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = v33;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    sub_267B9FF34(&v34, &qword_28022AEF0, &qword_267EFCDE0);
    v22 = 0;
    v23 = 0;
  }

  sub_267BB40A0(0xD000000000000013, 0x8000000267F1C2B0, a1);
  if (*(&v35 + 1))
  {
    v24 = swift_dynamicCast();
    v25 = v32;
    v26 = v33;
    if (!v24)
    {
      v25 = 0;
      v26 = 0;
    }

    if (v6)
    {
      goto LABEL_42;
    }
  }

  else
  {
    sub_267B9FF34(&v34, &qword_28022AEF0, &qword_267EFCDE0);
    v25 = 0;
    v26 = 0;
    if (v6)
    {
LABEL_42:
      *a2 = v32;
      a2[1] = v33;
      a2[2] = v5;
      a2[3] = v6;
      a2[4] = v22;
      a2[5] = v23;
      a2[6] = v25;
      a2[7] = v26;
      v31 = type metadata accessor for DirectInvocationUseCases();
      swift_storeEnumTagMultiPayload();
      v18 = a2;
      v19 = 0;
      v17 = v31;
      return __swift_storeEnumTagSinglePayload(v18, v19, 1, v17);
    }
  }

  if (v23 || v26)
  {
    goto LABEL_42;
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v27 = sub_267EF8A08();
  __swift_project_value_buffer(v27, qword_280240FB0);

  v8 = sub_267EF89F8();
  v9 = sub_267EF95E8();

  if (!os_log_type_enabled(v8, v9))
  {
    goto LABEL_20;
  }

  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  *&v34 = v11;
  *v10 = 136315138;
  v28 = sub_267EF8F08();
  v30 = sub_267BA33E8(v28, v29, &v34);

  *(v10 + 4) = v30;
  v16 = "#DirectInvocationUseCases No contact info provided for newMessageToContact: %s";
LABEL_19:
  _os_log_impl(&dword_267B93000, v8, v9, v16, v10, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v11);
  MEMORY[0x26D60A7B0](v11, -1, -1);
  MEMORY[0x26D60A7B0](v10, -1, -1);
LABEL_20:

  v17 = type metadata accessor for DirectInvocationUseCases();
  v18 = a2;
  v19 = 1;
  return __swift_storeEnumTagSinglePayload(v18, v19, 1, v17);
}

uint64_t sub_267E7306C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  i = a1;
  if (!a1)
  {
    v38 = 0u;
    v39 = 0u;
    goto LABEL_7;
  }

  sub_267BB40A0(0x6C646E7542707061, 0xEB00000000644965, a1);
  if (!*(&v39 + 1))
  {
LABEL_7:
    sub_267B9FF34(&v38, &qword_28022AEF0, &qword_267EFCDE0);
LABEL_8:
    if (qword_280228818 != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_267BB40A0(0x73656C646E6168, 0xE700000000000000, i);
  v4 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CB98, &qword_267F0D0B8);
  if (swift_dynamicCast())
  {
    v5 = v36;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  *&v38 = v4;
  v35 = *(v5 + 16);
  if (!v35)
  {

    v19 = MEMORY[0x277D84F90];
LABEL_35:
    *a2 = v36;
    *(a2 + 8) = v37;
    *(a2 + 16) = v19;
    v31 = type metadata accessor for DirectInvocationUseCases();
    swift_storeEnumTagMultiPayload();
    v16 = a2;
    v17 = 0;
    v15 = v31;
    return __swift_storeEnumTagSinglePayload(v16, v17, 1, v15);
  }

  v32 = a2;
  a2 = 0;
  v34 = v5 + 32;
  v19 = MEMORY[0x277D84F90];
  v33 = v5;
LABEL_19:
  if (a2 >= *(v5 + 16))
  {
    goto LABEL_37;
  }

  v20 = *(v34 + 8 * a2++);
  v21 = 1 << *(v20 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & *(v20 + 64);
  v24 = (v21 + 63) >> 6;

  for (i = 0; v23; v19 = v38)
  {
LABEL_28:
    v26 = __clz(__rbit64(v23)) | (i << 6);
    v27 = (*(v20 + 48) + 16 * v26);
    v28 = *v27;
    v29 = v27[1];
    v30 = *(*(v20 + 56) + 8 * v26);
    objc_allocWithZone(MEMORY[0x277CD3E98]);

    sub_267E7605C(v28, v29, v30);
    MEMORY[0x26D608F90]();
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_267EF9328();
    }

    v23 &= v23 - 1;
    sub_267EF9368();
  }

  while (1)
  {
    v25 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v25 >= v24)
    {

      v5 = v33;
      if (a2 == v35)
      {

        a2 = v32;
        goto LABEL_35;
      }

      goto LABEL_19;
    }

    v23 = *(v20 + 64 + 8 * v25);
    ++i;
    if (v23)
    {
      i = v25;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  swift_once();
LABEL_9:
  v6 = sub_267EF8A08();
  __swift_project_value_buffer(v6, qword_280240FB0);

  v7 = sub_267EF89F8();
  v8 = sub_267EF95E8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v38 = v10;
    *v9 = 136315138;
    if (i)
    {
      v11 = sub_267EF8F08();
      v13 = v12;
    }

    else
    {
      v13 = 0xE300000000000000;
      v11 = 7104878;
    }

    v14 = sub_267BA33E8(v11, v13, &v38);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_267B93000, v7, v8, "#DirectInvocationUseCases invalid user data for newMessageToContact: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26D60A7B0](v10, -1, -1);
    MEMORY[0x26D60A7B0](v9, -1, -1);
  }

  v15 = type metadata accessor for DirectInvocationUseCases();
  v16 = a2;
  v17 = 1;
  return __swift_storeEnumTagSinglePayload(v16, v17, 1, v15);
}

uint64_t sub_267E734E8(unint64_t a1, uint64_t *a2)
{
  v4 = a1;
  if (!a1)
  {
    v28 = 0u;
    v29 = 0u;
    goto LABEL_7;
  }

  v5 = *a2;
  v6 = sub_267EF9028();
  v2 = v7;
  sub_267BB40A0(v6, v7, v4);

  if (!*(&v29 + 1))
  {
LABEL_7:
    sub_267B9FF34(&v28, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_8;
  }

  if (OUTLINED_FUNCTION_13_46())
  {
    v3 = v26;
    v2 = v27;
    sub_267BB40A0(0x6472616F6279656BLL, 0xEE00656C61636F4CLL, v4);
    v8 = OUTLINED_FUNCTION_13_46();
    if (v8)
    {
      OUTLINED_FUNCTION_37_23(v8, v9, v10, v11, v12, v13, v14, v15, v26, v27);
      OUTLINED_FUNCTION_23_28();
      v16 = OUTLINED_FUNCTION_19_41();
      return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    }
  }

LABEL_8:
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v20 = sub_267EF8A08();
  __swift_project_value_buffer(v20, qword_280240FB0);

  v21 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_40_23();
  if (os_log_type_enabled(v21, v2))
  {
    OUTLINED_FUNCTION_48();
    *&v28 = OUTLINED_FUNCTION_5_4();
    *v3 = 136315138;
    if (v4)
    {
      v22 = sub_267EF8F08();
      v4 = v23;
    }

    else
    {
      v22 = OUTLINED_FUNCTION_25_38();
    }

    v24 = sub_267BA33E8(v22, v4, &v28);

    *(v3 + 4) = v24;
    OUTLINED_FUNCTION_18_36(&dword_267B93000);
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_32_0();
  }

  type metadata accessor for DirectInvocationUseCases();
  v16 = OUTLINED_FUNCTION_55();
  return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
}

uint64_t sub_267E736F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E18, &unk_267F0D0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v6 = &v61 - v5;
  v7 = sub_267EF8818();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v61 - v13;
  if (!a1)
  {
    v69 = 0u;
    v70 = 0u;
    goto LABEL_18;
  }

  sub_267BB40A0(0x6449707061, 0xE500000000000000, a1);
  if (!*(&v70 + 1))
  {
LABEL_18:
    sub_267B9FF34(&v69, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v25 = sub_267EF8A08();
    __swift_project_value_buffer(v25, qword_280240FB0);

    v26 = sub_267EF89F8();
    v27 = sub_267EF95E8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v69 = v29;
      *v28 = 136315138;
      if (a1)
      {
        v30 = sub_267EF8F08();
        v32 = v31;
      }

      else
      {
        v32 = 0xE300000000000000;
        v30 = 7104878;
      }

      v33 = sub_267BA33E8(v30, v32, &v69);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_267B93000, v26, v27, "#DirectInvocationUseCases invalid user data for newMessageWithIntent: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x26D60A7B0](v29, -1, -1);
      MEMORY[0x26D60A7B0](v28, -1, -1);
    }

    goto LABEL_27;
  }

  v15 = v68;
  v66 = v67;
  v16 = sub_267E74CF0(a1);
  if (!v16)
  {

    goto LABEL_19;
  }

  v17 = v16;
  v18 = sub_267E76140(v16);
  if (!v18)
  {
LABEL_32:
    *a2 = v66;
    a2[1] = v15;
    a2[2] = v17;
    v38 = type metadata accessor for DirectInvocationUseCases();
    swift_storeEnumTagMultiPayload();
    v35 = a2;
    v36 = 0;
    v34 = v38;
    return __swift_storeEnumTagSinglePayload(v35, v36, 1, v34);
  }

  v19 = v18;
  v65 = v15;
  v20 = sub_267BAF0DC(v18);
  if (!v20)
  {

LABEL_31:
    v15 = v65;
    goto LABEL_32;
  }

  v21 = v20;
  if (sub_267BAF0DC(v19) != 1)
  {

    if (qword_280228818 != -1)
    {
LABEL_61:
      swift_once();
    }

    v39 = sub_267EF8A08();
    __swift_project_value_buffer(v39, qword_280240FB0);
    v40 = sub_267EF89F8();
    v41 = sub_267EF95E8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = "#DirectInvocationUseCases rejecting intent with externally provided attachments";
LABEL_45:
      _os_log_impl(&dword_267B93000, v40, v41, v43, v42, 2u);
      MEMORY[0x26D60A7B0](v42, -1, -1);
    }

LABEL_46:

    goto LABEL_27;
  }

  v61 = v7;
  v62 = v8;
  v63 = v17;
  v64 = a2;
  v17 = 0;
  a2 = (v19 & 0xC000000000000001);
  while (1)
  {
    if (v21 == v17)
    {

LABEL_40:

      v17 = v63;
      a2 = v64;
LABEL_41:
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v48 = sub_267EF8A08();
      __swift_project_value_buffer(v48, qword_280240FB0);
      v40 = sub_267EF89F8();
      v41 = sub_267EF95E8();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        v43 = "#DirectInvocationUseCases rejecting intent with externally provided attachment that is not file";
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    if (a2)
    {
      v22 = MEMORY[0x26D609870](v17, v19);
    }

    else
    {
      if (v17 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_60;
      }

      v22 = *(v19 + 8 * v17 + 32);
    }

    v23 = v22;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v24 = [v22 file];
    if (v24)
    {
      break;
    }

    ++v17;
  }

  v44 = v24;

  v45 = [v23 file];
  if (!v45)
  {
    goto LABEL_40;
  }

  sub_267E761B0(v45);
  sub_267EF8828();
  v46 = v61;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v61);
  v17 = v63;
  a2 = v64;
  if (EnumTagSinglePayload == 1)
  {

    sub_267B9FF34(v6, &qword_280229E18, &unk_267F0D0C0);
    goto LABEL_41;
  }

  v49 = v62;
  (*(v62 + 32))(v14, v6, v46);
  sub_267EF87D8();
  v50 = sub_267EF8808();
  v51 = *(v49 + 8);
  v62 = v49 + 8;
  v51(v12, v46);
  if (v50 & 1) != 0 || (sub_267EF87E8(), v52 = sub_267EF8808(), v51(v12, v46), (v52))
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v53 = sub_267EF8A08();
    __swift_project_value_buffer(v53, qword_280240FB0);
    v54 = sub_267EF89F8();
    v55 = sub_267EF95D8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_267B93000, v54, v55, "#DirectInvocationUseCases allowing single photo/video file as externally provided attachment", v56, 2u);
      MEMORY[0x26D60A7B0](v56, -1, -1);
    }

    v51(v14, v46);
    goto LABEL_31;
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v57 = sub_267EF8A08();
  __swift_project_value_buffer(v57, qword_280240FB0);
  v58 = sub_267EF89F8();
  v59 = sub_267EF95E8();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_267B93000, v58, v59, "#DirectInvocationUseCases rejecting intent with externally file attachment that is not a photo/video", v60, 2u);
    MEMORY[0x26D60A7B0](v60, -1, -1);
  }

  v51(v14, v46);
LABEL_27:
  v34 = type metadata accessor for DirectInvocationUseCases();
  v35 = a2;
  v36 = 1;
  return __swift_storeEnumTagSinglePayload(v35, v36, 1, v34);
}

uint64_t sub_267E73F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v40 - v6;
  v8 = sub_267EF2BA8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v41 = 0u;
    v42 = 0u;
    goto LABEL_10;
  }

  sub_267BB40A0(0x5255657469766E69, 0xE90000000000004CLL, a1);
  if (!*(&v42 + 1))
  {
LABEL_10:
    sub_267B9FF34(&v41, &qword_28022AEF0, &qword_267EFCDE0);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    goto LABEL_11;
  }

  v13 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v7, v13 ^ 1u, 1, v8);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
LABEL_11:
    v27 = &qword_280229E20;
    v28 = &unk_267EFDCC0;
    v29 = v7;
LABEL_12:
    sub_267B9FF34(v29, v27, v28);
    goto LABEL_13;
  }

  v14 = *(v9 + 32);
  v14(v12, v7, v8);
  v15 = sub_267BB40A0(0x746E65746E6F63, 0xE700000000000000, a1);
  if (!*(&v42 + 1))
  {
    (*(v9 + 8))(v12, v8, v15);
LABEL_25:
    v27 = &qword_28022AEF0;
    v28 = &qword_267EFCDE0;
    v29 = &v41;
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v9 + 8))(v12, v8);
    goto LABEL_13;
  }

  v17 = v40[0];
  v16 = v40[1];
  v18 = sub_267BB40A0(0x6E65697069636572, 0xEA00000000007374, a1);
  if (!*(&v42 + 1))
  {
    (*(v9 + 8))(v12, v8, v18);

    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A340, &unk_267F00A50);
  if (swift_dynamicCast())
  {
    v19 = v40[0];
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229498, &qword_267EFD2F8);
    v21 = (a2 + *(v20 + 48));
    v22 = *(v20 + 64);
    v14(a2, v12, v8);
    *v21 = v17;
    v21[1] = v16;
    *(a2 + v22) = v19;
    v23 = type metadata accessor for DirectInvocationUseCases();
    swift_storeEnumTagMultiPayload();
    v24 = a2;
    v25 = 0;
    v26 = v23;
    return __swift_storeEnumTagSinglePayload(v24, v25, 1, v26);
  }

  (*(v9 + 8))(v12, v8);

LABEL_13:
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v30 = sub_267EF8A08();
  __swift_project_value_buffer(v30, qword_280240FB0);

  v31 = sub_267EF89F8();
  v32 = sub_267EF95E8();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v41 = v34;
    *v33 = 136315138;
    if (a1)
    {
      v35 = sub_267EF8F08();
      v37 = v36;
    }

    else
    {
      v37 = 0xE300000000000000;
      v35 = 7104878;
    }

    v38 = sub_267BA33E8(v35, v37, &v41);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_267B93000, v31, v32, "#DirectInvocationUseCases invalid user data for sendFaceTimeInvite: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x26D60A7B0](v34, -1, -1);
    MEMORY[0x26D60A7B0](v33, -1, -1);
  }

  v26 = type metadata accessor for DirectInvocationUseCases();
  v24 = a2;
  v25 = 1;
  return __swift_storeEnumTagSinglePayload(v24, v25, 1, v26);
}

uint64_t sub_267E7447C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_267EF7DB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_267EF7DE8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_267EF7DD8();
  sub_267EF7DC8();
  (*(v10 + 8))(v13, v9);
  v14 = (*(v5 + 88))(v8, v4);
  if (v14 == *MEMORY[0x277D56510])
  {
    (*(v5 + 8))(v8, v4);
    v15 = MEMORY[0x277D5D4F8];
LABEL_5:
    v16 = *v15;
    v17 = sub_267EF8228();
    (*(*(v17 - 8) + 104))(a2, v16, v17);
    v18 = type metadata accessor for DirectInvocationUseCases();
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v18);
  }

  if (v14 == *MEMORY[0x277D56518])
  {
    (*(v5 + 8))(v8, v4);
    v15 = MEMORY[0x277D5D510];
    goto LABEL_5;
  }

  if (v14 == *MEMORY[0x277D56520])
  {
    (*(v5 + 96))(v8, v4);
    v21 = *v8;
    v20 = v8[1];

    *a2 = v21;
    v18 = type metadata accessor for DirectInvocationUseCases();
    goto LABEL_6;
  }

  if (v14 == *MEMORY[0x277D56528])
  {
    (*(v5 + 96))(v8, v4);
    v22 = *v8;
    v23 = v8[1];
    v24 = v8[2];

    *a2 = v22;
    a2[1] = v23;
    v18 = type metadata accessor for DirectInvocationUseCases();
    goto LABEL_6;
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v25 = sub_267EF8A08();
  __swift_project_value_buffer(v25, qword_280240FB0);

  v26 = sub_267EF89F8();
  v27 = sub_267EF95E8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v36 = v29;
    *v28 = 136315138;
    if (a1)
    {
      v30 = sub_267EF8F08();
      v32 = v31;
    }

    else
    {
      v32 = 0xE300000000000000;
      v30 = 7104878;
    }

    v33 = sub_267BA33E8(v30, v32, &v36);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_267B93000, v26, v27, "#DirectInvocationUseCases invalid user data for contactButton: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x26D60A7B0](v29, -1, -1);
    MEMORY[0x26D60A7B0](v28, -1, -1);
  }

  v34 = type metadata accessor for DirectInvocationUseCases();
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v34);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_267E74914@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!a1)
  {
    v24 = 0u;
    v25 = 0u;
    goto LABEL_7;
  }

  sub_267BB40A0(0x656D686361747461, 0xEB0000000073746ELL, a1);
  if (!*(&v25 + 1))
  {
LABEL_7:
    sub_267B9FF34(&v24, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v8 = sub_267EF8A08();
    __swift_project_value_buffer(v8, qword_280240FB0);

    v9 = sub_267EF89F8();
    v10 = sub_267EF95E8();

    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_16;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v24 = v12;
    *v11 = 136315138;
    if (a1)
    {
      v13 = sub_267EF8F08();
      v15 = v14;
    }

    else
    {
      v15 = 0xE300000000000000;
      v13 = 7104878;
    }

    v16 = sub_267BA33E8(v13, v15, &v24);

    *(v11 + 4) = v16;
    v17 = "#DirectInvocationUseCases attachments in user data for updateAttachments: %s";
    goto LABEL_15;
  }

  sub_267BB40A0(0x696669746E656469, 0xEB00000000737265, a1);
  if ((swift_dynamicCast() & 1) == 0)
  {

    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v19 = sub_267EF8A08();
    __swift_project_value_buffer(v19, qword_280240FB0);

    v9 = sub_267EF89F8();
    v10 = sub_267EF95E8();

    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_16;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v24 = v12;
    *v11 = 136315138;
    v20 = sub_267EF8F08();
    v22 = sub_267BA33E8(v20, v21, &v24);

    *(v11 + 4) = v22;
    v17 = "#DirectInvocationUseCases identifiers in user data for updateAttachments: %s";
LABEL_15:
    _os_log_impl(&dword_267B93000, v9, v10, v17, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x26D60A7B0](v12, -1, -1);
    MEMORY[0x26D60A7B0](v11, -1, -1);
LABEL_16:

    v7 = type metadata accessor for DirectInvocationUseCases();
    v5 = a2;
    v6 = 1;
    return __swift_storeEnumTagSinglePayload(v5, v6, 1, v7);
  }

  *a2 = v23;
  a2[1] = v23;
  v4 = type metadata accessor for DirectInvocationUseCases();
  swift_storeEnumTagMultiPayload();
  v5 = a2;
  v6 = 0;
  v7 = v4;
  return __swift_storeEnumTagSinglePayload(v5, v6, 1, v7);
}

uint64_t sub_267E74CF0(uint64_t a1)
{
  if (!a1)
  {
    v10 = 0u;
    v11 = 0u;
LABEL_14:
    sub_267B9FF34(&v10, &qword_28022AEF0, &qword_267EFCDE0);
    return 0;
  }

  if (*(a1 + 16))
  {
    v2 = sub_267BA9948();
    if (v3)
    {
      sub_267BA2E04(*(a1 + 56) + 32 * v2, &v10);
      sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
      if (swift_dynamicCast())
      {
        return v8;
      }
    }
  }

  sub_267BB40A0(0x7954746E65746E69, 0xEE00656D614E6570, a1);
  if (!*(&v11 + 1))
  {
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_267BB40A0(0x6144746E65746E69, 0xEA00000000006174, a1);
  if (!*(&v11 + 1))
  {

    goto LABEL_14;
  }

  if (swift_dynamicCast())
  {
    v5 = sub_267EF8FF8();

    v6 = sub_267EF2BB8();
    v7 = INIntentCreate();
    sub_267BBE0DC(v8, v9);

    if (v7)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_267E74F00(uint64_t a1, uint64_t a2)
{
  v248 = a1;
  v249 = a2;
  v4 = sub_267EF2BA8();
  v5 = OUTLINED_FUNCTION_58(v4);
  v246 = v6;
  v247 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  v231 = v10 - v9;
  v11 = sub_267EF8228();
  v12 = OUTLINED_FUNCTION_58(v11);
  v244 = v13;
  v245 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_0();
  v230 = v17 - v16;
  v18 = type metadata accessor for DirectInvocationUseCases();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6();
  v242 = v20;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_77_0();
  v241 = v22;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_77_0();
  v240 = v24;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_77_0();
  v238 = v26;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_77_0();
  v239 = v28;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_77_0();
  v243 = v30;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_77_0();
  v237 = v32;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_77_0();
  v236 = v34;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_77_0();
  v235 = v36;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_77_0();
  v234 = v38;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_77_0();
  v233 = v40;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_77_0();
  v232 = v42;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_194();
  v45 = MEMORY[0x28223BE20](v44);
  v47 = (&v229 - v46);
  v48 = MEMORY[0x28223BE20](v45);
  v50 = (&v229 - v49);
  v51 = MEMORY[0x28223BE20](v48);
  v53 = (&v229 - v52);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_25_2();
  v55 = MEMORY[0x28223BE20](v54);
  v57 = &v229 - v56;
  MEMORY[0x28223BE20](v55);
  v59 = (&v229 - v58);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CC38, &qword_267F0D138);
  v61 = *(*(v60 - 8) + 64);
  v62 = MEMORY[0x28223BE20](v60 - 8);
  v64 = (&v229 - v63);
  v65 = &v229 + *(v62 + 56) - v63;
  sub_267CFB09C(v248, &v229 - v63);
  v248 = v65;
  sub_267CFB09C(v249, v65);
  v249 = v64;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v139 = OUTLINED_FUNCTION_14_43();
      sub_267CFB09C(v139, v57);
      v140 = v248;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v142 = v244;
        v141 = v245;
        v143 = v230;
        (*(v244 + 32))(v230, v140, v245);
        LOBYTE(v79) = sub_267C27BAC(v57, v143);
        v144 = *(v142 + 8);
        v144(v143, v141);
        v145 = OUTLINED_FUNCTION_1_10();
        (v144)(v145);
        goto LABEL_180;
      }

      (*(v244 + 8))(v57, v245);
      goto LABEL_113;
    case 2u:
      v108 = OUTLINED_FUNCTION_14_43();
      sub_267CFB09C(v108, v3);
      v77 = *v3;
      v76 = v3[1];
      if (OUTLINED_FUNCTION_15_43() == 2)
      {
        goto LABEL_68;
      }

      goto LABEL_57;
    case 3u:
      v111 = v249;
      sub_267CFB09C(v249, v53);
      v113 = *v53;
      v112 = v53[1];
      if (OUTLINED_FUNCTION_15_43() != 3)
      {

        v53 = v111;
        goto LABEL_113;
      }

      v114 = *v59;
      v115 = v59[1];
      if (v113 == v114 && v112 == v115)
      {
        goto LABEL_122;
      }

      OUTLINED_FUNCTION_66();
      sub_267EF9EA8();
      OUTLINED_FUNCTION_38_27();

      v117 = v111;
      if (v113)
      {
        goto LABEL_142;
      }

      goto LABEL_147;
    case 4u:
      v87 = OUTLINED_FUNCTION_14_43();
      sub_267CFB09C(v87, v50);
      v89 = *v50;
      v88 = v50[1];
      v91 = v50[2];
      v90 = v50[3];
      OUTLINED_FUNCTION_20_31();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_56;
      }

      goto LABEL_20;
    case 5u:
      v149 = OUTLINED_FUNCTION_14_43();
      sub_267CFB09C(v149, v47);
      v151 = *v47;
      v150 = v47[1];
      v91 = v47[2];
      v90 = v47[3];
      OUTLINED_FUNCTION_20_31();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_56;
      }

      v152 = *v64;
      v153 = v64[1];
      v105 = v64[2];
      v104 = v64[3];
      if (v151 == v152 && v150 == v153)
      {
        goto LABEL_133;
      }

      v155 = sub_267EF9EA8();

      if ((v155 & 1) == 0)
      {
        goto LABEL_144;
      }

      goto LABEL_134;
    case 6u:
      v175 = OUTLINED_FUNCTION_14_43();
      sub_267CFB09C(v175, v2);
      v77 = *v2;
      v76 = v2[1];
      if (OUTLINED_FUNCTION_15_43() == 6)
      {
        goto LABEL_68;
      }

      goto LABEL_57;
    case 7u:
      v118 = v249;
      v119 = v232;
      sub_267CFB09C(v249, v232);
      v120 = *v119;
      v121 = v119[1];
      v122 = v119[2];
      v123 = v119[3];
      v124 = v119[4];
      v125 = v119[5];
      v126 = v119[6];
      v127 = v119[7];
      v247 = v126;
      v128 = v248;
      if (swift_getEnumCaseMultiPayload() != 7)
      {

        v53 = v118;
        goto LABEL_113;
      }

      v129 = *v128;
      v130 = v128[1];
      v131 = v128;
      v133 = v128[2];
      v132 = v128[3];
      v134 = v131[5];
      v245 = v131[4];
      v246 = v134;
      v136 = v131[6];
      v135 = v131[7];
      v244 = v136;
      v248 = v135;
      if (v120 == v129 && v121 == v130)
      {
      }

      else
      {
        v138 = sub_267EF9EA8();

        if ((v138 & 1) == 0)
        {

          goto LABEL_184;
        }
      }

      if (v123)
      {
        if (!v132)
        {

          goto LABEL_183;
        }

        if (v122 == v133 && v123 == v132)
        {
        }

        else
        {
          v214 = sub_267EF9EA8();

          if ((v214 & 1) == 0)
          {
            goto LABEL_183;
          }
        }
      }

      else if (v132)
      {

        goto LABEL_184;
      }

      if (!v125)
      {
        v224 = v249;
        if (v246)
        {

          goto LABEL_208;
        }

        goto LABEL_199;
      }

      v224 = v249;
      if (!v246)
      {

        goto LABEL_197;
      }

      if (v124 == v245 && v125 == v246)
      {

        goto LABEL_199;
      }

      v226 = sub_267EF9EA8();

      if ((v226 & 1) == 0)
      {
LABEL_197:

        goto LABEL_208;
      }

LABEL_199:
      if (!v127)
      {
        if (!v248)
        {
          goto LABEL_213;
        }

        goto LABEL_208;
      }

      if (!v248)
      {
LABEL_208:

        goto LABEL_209;
      }

      if (v247 == v244 && v127 == v248)
      {

        goto LABEL_213;
      }

      v228 = sub_267EF9EA8();

      if ((v228 & 1) == 0)
      {
LABEL_209:
        v117 = v224;
        goto LABEL_147;
      }

LABEL_213:
      v117 = v224;
LABEL_142:
      sub_267CCEDF4(v117);
      LOBYTE(v79) = 1;
      return v79 & 1;
    case 8u:
      v194 = v233;
      sub_267CFB09C(v249, v233);
      v195 = *v194;
      v79 = v194[1];
      v196 = v194[2];
      if (OUTLINED_FUNCTION_15_43() != 8)
      {

        goto LABEL_112;
      }

      v197 = *v59;
      v198 = v59[1];
      v199 = v59[2];
      if (v195 == v197 && v79 == v198)
      {

        v202 = v249;
      }

      else
      {
        v201 = OUTLINED_FUNCTION_36_25();

        v202 = v249;
        if ((v201 & 1) == 0)
        {

          v117 = v202;
          goto LABEL_147;
        }
      }

      sub_267DF0FDC(v196, v199);
      OUTLINED_FUNCTION_38_27();

      v218 = v202;
      goto LABEL_181;
    case 9u:
      v100 = OUTLINED_FUNCTION_14_43();
      v101 = v234;
      sub_267CFB09C(v100, v234);
      v89 = *v101;
      v88 = v101[1];
      v91 = v101[2];
      v90 = v101[3];
      OUTLINED_FUNCTION_20_31();
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_56;
      }

LABEL_20:
      v102 = *v64;
      v103 = v64[1];
      v105 = v64[2];
      v104 = v64[3];
      if (v89 == v102 && v88 == v103)
      {
LABEL_133:
      }

      else
      {
        OUTLINED_FUNCTION_91_1();
        v107 = sub_267EF9EA8();

        if ((v107 & 1) == 0)
        {
          goto LABEL_144;
        }
      }

LABEL_134:
      if (v91 != v105 || v90 != v104)
      {
        goto LABEL_138;
      }

      goto LABEL_140;
    case 0xAu:
      v184 = OUTLINED_FUNCTION_14_43();
      v185 = v235;
      sub_267CFB09C(v184, v235);
      v187 = *v185;
      v186 = v185[1];
      v188 = v185[2];
      if (OUTLINED_FUNCTION_15_43() != 10)
      {

        goto LABEL_113;
      }

      v189 = *v59;
      v190 = v59[1];
      v191 = v59[2];
      if (v187 == v189 && v186 == v190)
      {
      }

      else
      {
        v193 = OUTLINED_FUNCTION_36_25();

        if ((v193 & 1) == 0)
        {

          goto LABEL_146;
        }
      }

      sub_267BA9F38(0, &qword_28022ABD8, 0x277D82BB8);
      LOBYTE(v79) = sub_267EF9818();

      goto LABEL_180;
    case 0xBu:
      v81 = OUTLINED_FUNCTION_14_43();
      v82 = v236;
      sub_267CFB09C(v81, v236);
      v84 = *v82;
      v83 = v82[1];
      v86 = v82[2];
      v85 = v82[3];
      OUTLINED_FUNCTION_20_31();
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_56;
      }

      goto LABEL_13;
    case 0xCu:
      v92 = OUTLINED_FUNCTION_14_43();
      v93 = v237;
      sub_267CFB09C(v92, v237);
      v84 = *v93;
      v83 = v93[1];
      v86 = v93[2];
      v85 = v93[3];
      OUTLINED_FUNCTION_20_31();
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_56;
      }

LABEL_13:
      v94 = *v64;
      v95 = v64[1];
      v97 = v64[2];
      v96 = v64[3];
      if (v84 == v94 && v83 == v95)
      {
      }

      else
      {
        OUTLINED_FUNCTION_91_1();
        v99 = sub_267EF9EA8();

        if ((v99 & 1) == 0)
        {
          goto LABEL_144;
        }
      }

      if (v85)
      {
        if (!v96)
        {
          goto LABEL_145;
        }

        if (v86 == v97 && v85 == v96)
        {
LABEL_140:
        }

        else
        {
LABEL_138:
          v216 = OUTLINED_FUNCTION_29_31();

          if ((v216 & 1) == 0)
          {
            goto LABEL_146;
          }
        }
      }

      else if (v96)
      {
        goto LABEL_145;
      }

LABEL_141:
      v117 = v53;
      goto LABEL_142;
    case 0xDu:
      v156 = OUTLINED_FUNCTION_14_43();
      v157 = v243;
      sub_267CFB09C(v156, v243);
      v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229498, &qword_267EFD2F8);
      v159 = *(v158 + 48);
      v161 = *(v157 + v159);
      v160 = *(v157 + v159 + 8);
      v162 = *(v158 + 64);
      v163 = *(v157 + v162);
      v164 = v248;
      if (swift_getEnumCaseMultiPayload() != 13)
      {

        (*(v246 + 8))(v157, v247);
        goto LABEL_113;
      }

      v165 = *(v164 + v159 + 8);
      v242 = *(v164 + v159);
      v244 = v165;
      v245 = v163;
      v166 = *(v164 + v162);
      v167 = v246;
      v168 = v247;
      v169 = v231;
      (*(v246 + 32))(v231, v164, v247);
      OUTLINED_FUNCTION_73_0();
      v170 = sub_267EF2B28();
      v171 = *(v167 + 8);
      v171(v157, v168);
      if ((v170 & 1) == 0)
      {
        v171(v169, v168);

        goto LABEL_144;
      }

      if (v161 == v242 && v160 == v244)
      {

        v174 = v231;
      }

      else
      {
        OUTLINED_FUNCTION_33_22();
        v173 = sub_267EF9EA8();

        v174 = v231;
        if ((v173 & 1) == 0)
        {
          v171(v231, v168);
          goto LABEL_144;
        }
      }

      LOBYTE(v79) = sub_267DF0FF0(v245, v166);

      v171(v174, v168);
      goto LABEL_180;
    case 0xEu:
      v78 = OUTLINED_FUNCTION_14_43();
      v79 = v239;
      sub_267CFB09C(v78, v239);
      v80 = v248;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_113;
      }

      LOBYTE(v79) = *v79 == *v80;
      goto LABEL_180;
    case 0xFu:
      v109 = OUTLINED_FUNCTION_14_43();
      v110 = v238;
      sub_267CFB09C(v109, v238);
      v77 = *v110;
      v76 = v110[1];
      if (OUTLINED_FUNCTION_15_43() == 15)
      {
        goto LABEL_68;
      }

      goto LABEL_57;
    case 0x10u:
      v74 = OUTLINED_FUNCTION_14_43();
      v75 = v240;
      sub_267CFB09C(v74, v240);
      v77 = *v75;
      v76 = v75[1];
      if (OUTLINED_FUNCTION_15_43() == 16)
      {
        goto LABEL_68;
      }

      goto LABEL_57;
    case 0x11u:
      v146 = OUTLINED_FUNCTION_14_43();
      v147 = v241;
      sub_267CFB09C(v146, v241);
      v77 = *v147;
      v76 = v147[1];
      if (OUTLINED_FUNCTION_15_43() != 17)
      {
        goto LABEL_57;
      }

LABEL_68:
      v176 = *v59;
      v177 = v59[1];
      if (v77 == v176 && v76 == v177)
      {
        goto LABEL_140;
      }

      OUTLINED_FUNCTION_66();
      sub_267EF9EA8();
      OUTLINED_FUNCTION_38_27();

      if ((v77 & 1) == 0)
      {
        goto LABEL_146;
      }

      goto LABEL_141;
    case 0x12u:
      v179 = OUTLINED_FUNCTION_14_43();
      v180 = v242;
      sub_267CFB09C(v179, v242);
      v79 = *v180;
      v181 = v180[1];
      if (OUTLINED_FUNCTION_15_43() != 18)
      {
LABEL_56:

LABEL_57:

        goto LABEL_113;
      }

      v183 = *v59;
      v182 = v59[1];
      sub_267DF11D4(v79, v183);
      OUTLINED_FUNCTION_40_23();

      if ((v57 & 1) == 0)
      {
LABEL_144:

LABEL_145:

LABEL_146:
        v117 = v53;
        goto LABEL_147;
      }

      sub_267DF11D4(v181, v182);
      OUTLINED_FUNCTION_38_27();

LABEL_180:
      v218 = v53;
LABEL_181:
      sub_267CCEDF4(v218);
      return v79 & 1;
    case 0x13u:
      v148 = swift_getEnumCaseMultiPayload() == 19;
      goto LABEL_93;
    case 0x14u:
      v148 = swift_getEnumCaseMultiPayload() == 20;
      goto LABEL_93;
    case 0x15u:
      v148 = swift_getEnumCaseMultiPayload() == 21;
LABEL_93:
      v53 = v249;
      if (!v148)
      {
        goto LABEL_113;
      }

      goto LABEL_141;
    default:
      sub_267CFB09C(v249, v59);
      v66 = *v59;
      v67 = v59[1];
      v69 = v59[2];
      v68 = v59[3];
      v70 = v59[4];
      v71 = v59[5];
      v73 = v59[6];
      v72 = v59[7];
      OUTLINED_FUNCTION_20_31();
      if (swift_getEnumCaseMultiPayload())
      {

LABEL_112:

        v53 = v249;
LABEL_113:
        sub_267B9FF34(v53, &qword_28022CC38, &qword_267F0D138);
        goto LABEL_148;
      }

      v247 = v70;
      v245 = v71;
      v243 = v73;
      v204 = *v64;
      v205 = v64[1];
      v206 = v64[2];
      v207 = v64[3];
      v208 = v64[5];
      v246 = v64[4];
      v244 = v208;
      v209 = v64[6];
      v210 = v64[7];
      v242 = v209;
      if (v66 == v204 && v67 == v205)
      {
      }

      else
      {
        v212 = sub_267EF9EA8();

        if ((v212 & 1) == 0)
        {
LABEL_183:

LABEL_184:

          v117 = v249;
          goto LABEL_147;
        }
      }

      if (v69 == v206 && v68 == v207)
      {

        v111 = v249;
        v221 = v247;
      }

      else
      {
        OUTLINED_FUNCTION_91_1();
        v220 = sub_267EF9EA8();

        v111 = v249;
        v221 = v247;
        if ((v220 & 1) == 0)
        {
          goto LABEL_175;
        }
      }

      if (v221 == v246 && v245 == v244)
      {
        if (v72)
        {
          if (!v210)
          {
LABEL_176:

LABEL_177:
            v117 = v111;
LABEL_147:
            sub_267CCEDF4(v117);
LABEL_148:
            LOBYTE(v79) = 0;
            return v79 & 1;
          }

          if (v243 == v242 && v72 == v210)
          {
LABEL_122:
          }

          else
          {
            v223 = sub_267EF9EA8();

            if ((v223 & 1) == 0)
            {
              goto LABEL_177;
            }
          }
        }

        else if (v210)
        {
          goto LABEL_176;
        }

        v117 = v111;
        goto LABEL_142;
      }

LABEL_175:

      goto LABEL_176;
  }
}

id sub_267E7605C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_267EF8FF8();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithValue:v5 type:a3];

  return v6;
}

uint64_t sub_267E760C8(void *a1)
{
  v2 = [a1 summaries];

  if (!v2)
  {
    return 0;
  }

  sub_267BA9F38(0, &qword_28022CB88, 0x277CEF418);
  v3 = sub_267EF92F8();

  return v3;
}

uint64_t sub_267E76140(void *a1)
{
  v1 = [a1 attachments];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
  v3 = sub_267EF92F8();

  return v3;
}

uint64_t sub_267E761B0(void *a1)
{
  v1 = [a1 typeIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

uint64_t sub_267E76214(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEF0, &qword_267EFCDE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267E76284()
{
  sub_267E76498();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_267E765D0();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      v1 = sub_267E76618();
      if (v5 <= 0x3F)
      {
        v1 = sub_267E76640();
        if (v6 <= 0x3F)
        {
          sub_267E76668(319, &qword_28022CBD8);
          if (v8 > 0x3F)
          {
            return v7;
          }

          sub_267E76668(319, &qword_28022CBE0);
          if (v10 > 0x3F)
          {
            return v9;
          }

          sub_267E766C4();
          if (v11 > 0x3F)
          {
            return v7;
          }

          sub_267E7685C(319, &qword_28022CBF0, &qword_28022CBF8, qword_267F0D108);
          if (v12 > 0x3F)
          {
            return v7;
          }

          sub_267E767E0();
          if (v13 > 0x3F)
          {
            return v7;
          }

          sub_267E7685C(319, &qword_28022CC08, &qword_28022A300, &qword_267EFEEE0);
          if (v14 > 0x3F)
          {
            return v7;
          }

          sub_267E768CC();
          if (v15 > 0x3F)
          {
            return v7;
          }

          v7 = sub_267E76954();
          if (v16 > 0x3F)
          {
            return v7;
          }

          v7 = sub_267E7697C();
          if (v17 > 0x3F)
          {
            return v7;
          }

          v7 = sub_267E769A4();
          if (v18 > 0x3F)
          {
            return v7;
          }

          else
          {
            sub_267E769CC();
            v1 = v19;
            if (v20 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_267E76498()
{
  if (!qword_28022CBB8)
  {
    MEMORY[0x28223BE20](0);
    type metadata accessor for AFSiriAnnouncementPlatform(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022A300, &qword_267EFEEE0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_28022CBB8);
    }
  }
}

void sub_267E765D0()
{
  if (!qword_28022CBC0)
  {
    v0 = sub_267EF8228();
    if (!v1)
    {
      atomic_store(v0, &qword_28022CBC0);
    }
  }
}

uint64_t sub_267E76618()
{
  result = qword_28022CBC8;
  if (!qword_28022CBC8)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_28022CBC8);
  }

  return result;
}

uint64_t sub_267E76640()
{
  result = qword_28022CBD0;
  if (!qword_28022CBD0)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_28022CBD0);
  }

  return result;
}

void sub_267E76668(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_267E766C4()
{
  if (!qword_28022CBE8)
  {
    MEMORY[0x28223BE20](0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022A300, &qword_267EFEEE0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_28022CBE8);
    }
  }
}

void sub_267E767E0()
{
  if (!qword_28022CC00)
  {
    sub_267BA9F38(255, &qword_28022AE60, 0x277CD4078);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28022CC00);
    }
  }
}

void sub_267E7685C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_267E768CC()
{
  if (!qword_28022CC10)
  {
    sub_267EF2BA8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022A340, &unk_267F00A50);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_28022CC10);
    }
  }
}

uint64_t sub_267E76954()
{
  result = qword_28022CC18;
  if (!qword_28022CC18)
  {
    result = MEMORY[0x277D83B88];
    atomic_store(MEMORY[0x277D83B88], &qword_28022CC18);
  }

  return result;
}

uint64_t sub_267E7697C()
{
  result = qword_28022CC20;
  if (!qword_28022CC20)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_28022CC20);
  }

  return result;
}

uint64_t sub_267E769A4()
{
  result = qword_28022CC28;
  if (!qword_28022CC28)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_28022CC28);
  }

  return result;
}

void sub_267E769CC()
{
  if (!qword_28022CC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28022BCB0, &unk_267EFCA30);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28022CC30);
    }
  }
}

uint64_t sub_267E76A44(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = a1;
  sub_267B9A5E8(a2, v2 + 24);
  return v2;
}

uint64_t sub_267E76A70()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = v1;
  sub_267E77D14(v2);
  if (!v3)
  {

LABEL_6:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v7 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v7, qword_280240FB0);
    v2 = sub_267EF89F8();
    v8 = sub_267EF95E8();
    if (os_log_type_enabled(v2, v8))
    {
      v9 = OUTLINED_FUNCTION_32();
      *v9 = 0;
      _os_log_impl(&dword_267B93000, v2, v8, "#GoogleMapsLinkParser URL or metadata missing", v9, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    goto LABEL_10;
  }

  v4 = sub_267EF9138();
  v5 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v6 = sub_267E77B6C(0xD00000000000005ALL, 0x8000000267F1C4A0, 0);
  v12 = v6;
  if (!v6)
  {

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v13 = sub_267EF8FF8();

  v10 = [v12 firstMatchInString:v13 options:0 range:{0, v4}];

  if (v10)
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v14 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v14, qword_280240FB0);
    v15 = sub_267EF89F8();
    v16 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v16))
    {
      v17 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v17);
      OUTLINED_FUNCTION_6_24(&dword_267B93000, v18, v19, "#GoogleMapsLinkParser valid google maps link");
      OUTLINED_FUNCTION_32_0();
    }

    v10 = 1;
  }

  else
  {
  }

LABEL_11:

  return v10;
}

uint64_t sub_267E76C98(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_267E76CB8, 0, 0);
}

uint64_t sub_267E76CB8()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCA948]);
  v2 = sub_267BD346C(16);
  v7 = v2;
  if (v2)
  {
    v8 = *(*(v0 + 152) + 16);
    if (v8 && (v9 = [v8 title]) != 0)
    {
      v10 = v9;
      v11 = sub_267EF9028();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0xE000000000000000;
    }

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_267E770B4(v11, v13, v7, (v0 + 80));

      v15 = *(v0 + 80);
      if (*(v0 + 88) != 1)
      {
        v43 = *(v0 + 80);
        v42 = *(v0 + 96);
        v40 = *(v0 + 128);
        v41 = *(v0 + 112);
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v16 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v16, qword_280240FB0);
        v4 = sub_267EF89F8();
        v17 = sub_267EF95D8();
        if (!OUTLINED_FUNCTION_27(v17))
        {
          goto LABEL_33;
        }

        v18 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v18);
        v21 = "#GoogleMapsLinkParser locationInfo from title";
LABEL_32:
        OUTLINED_FUNCTION_6_24(&dword_267B93000, v19, v20, v21);
        OUTLINED_FUNCTION_32_0();
LABEL_33:

        goto LABEL_41;
      }
    }

    else
    {
    }

    if (v8 && (v22 = [v8 summary]) != 0)
    {
      v23 = v22;
      v24 = sub_267EF9028();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0xE000000000000000;
    }

    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      sub_267E770B4(v24, v26, v7, (v0 + 16));

      v28 = *(v0 + 16);
      if (*(v0 + 24) != 1)
      {
        v43 = *(v0 + 16);
        v42 = *(v0 + 32);
        v40 = *(v0 + 64);
        v41 = *(v0 + 48);
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v29 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v29, qword_280240FB0);
        v4 = sub_267EF89F8();
        v30 = sub_267EF95D8();
        if (!OUTLINED_FUNCTION_27(v30))
        {
          goto LABEL_33;
        }

        v31 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v31);
        v21 = "#GoogleMapsLinkParser locationInfo from summary";
        goto LABEL_32;
      }
    }

    else
    {
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v32 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v32, qword_280240FB0);
    v4 = sub_267EF89F8();
    v33 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_27(v33))
    {
      v34 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v34);
      OUTLINED_FUNCTION_6_24(&dword_267B93000, v35, v36, "#GoogleMapsLinkParser no address found in link title or summary");
      OUTLINED_FUNCTION_32_0();
    }

    v43 = xmmword_267EFC050;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v3 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v3, qword_280240FB0);
    v4 = sub_267EF89F8();
    v5 = sub_267EF95E8();
    v43 = xmmword_267EFC050;
    if (os_log_type_enabled(v4, v5))
    {
      v6 = OUTLINED_FUNCTION_32();
      *v6 = 0;
      _os_log_impl(&dword_267B93000, v4, v5, "#GoogleMapsLinkParser error getting data detector for address detection", v6, 2u);
      OUTLINED_FUNCTION_32_0();
    }
  }

  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
LABEL_41:
  v37 = *(v0 + 144);

  *v37 = v43;
  v37[1] = v42;
  v37[2] = v41;
  v37[3] = v40;
  v38 = *(v0 + 8);

  return v38();
}

void sub_267E770B4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v48[0] = a1;
  v48[1] = a2;
  sub_267BB5034();
  v6 = sub_267EF98C8();
  v7 = v6[2];
  if (!v7)
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v12 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v12, qword_280240FB0);
    v13 = sub_267EF89F8();
    v14 = sub_267EF95E8();
    if (!OUTLINED_FUNCTION_27(v14))
    {
      goto LABEL_29;
    }

    *OUTLINED_FUNCTION_32() = 0;
    v17 = "#GoogleMapsLinkParser address parsing error. This should not be empty";
    goto LABEL_28;
  }

  if (v7 == 1)
  {
    v8 = 0;
    v10 = v6[4];
    v9 = v6[5];
    v11 = 0xE000000000000000;
  }

  else
  {
    v8 = v6[4];
    v11 = v6[5];
    v10 = v6[6];
    v9 = v6[7];
  }

  swift_bridgeObjectRetain_n();

  v18 = sub_267EF8FF8();

  v19 = MEMORY[0x26D608EC0](v10, v9);

  v20 = [a3 matchesInString:v18 options:0 range:{0, v19}];

  sub_267BFCDCC();
  v21 = sub_267EF92F8();

  if (!sub_267BAF0DC(v21))
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v44 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v44, qword_280240FB0);
    v13 = sub_267EF89F8();
    v45 = sub_267EF95D8();
    if (!OUTLINED_FUNCTION_27(v45))
    {
      goto LABEL_29;
    }

    *OUTLINED_FUNCTION_32() = 0;
    v17 = "#GoogleMapsLinkParser matches for addresses is empty";
LABEL_28:
    OUTLINED_FUNCTION_28_11(&dword_267B93000, v15, v16, v17);
    OUTLINED_FUNCTION_32_0();
LABEL_29:

LABEL_30:
    v8 = 0;
    v33 = 0;
    v35 = 0;
    v36 = 0;
    v38 = 0;
    v10 = 0;
    v9 = 0;
    v11 = 1;
    goto LABEL_31;
  }

  sub_267BBD0EC(0, (v21 & 0xC000000000000001) == 0, v21);
  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x26D609870](0, v21);
  }

  else
  {
    v22 = *(v21 + 32);
  }

  v23 = v22;

  if ([v23 resultType] != 16 || (v24 = sub_267E77C48(v23)) == 0)
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v39 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v39, qword_280240FB0);
    v40 = sub_267EF89F8();
    v41 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v41))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_28_11(&dword_267B93000, v42, v43, "#GoogleMapsLinkParser cannot get address components");
      OUTLINED_FUNCTION_32_0();
    }

    goto LABEL_30;
  }

  v25 = v24;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v47 = v23;
  v26 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v26, qword_280240FB0);

  v27 = sub_267EF89F8();
  v28 = sub_267EF95D8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v48[0] = swift_slowAlloc();
    *v29 = 136315394;
    type metadata accessor for NSTextCheckingKey(0);
    sub_267E77CBC();
    v30 = sub_267EF8F08();
    v46 = v28;
    v32 = sub_267BA33E8(v30, v31, v48);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_267BA33E8(v8, v11, v48);
    _os_log_impl(&dword_267B93000, v27, v46, "#GoogleMapsLinkParser address is %s, name is %s", v29, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v33 = sub_267BC2EE8(*MEMORY[0x277CCA6B0], v25);
  v35 = v34;
  v36 = sub_267BC2EE8(*MEMORY[0x277CCA6E0], v25);
  v38 = v37;

LABEL_31:
  *a4 = v8;
  a4[1] = v11;
  a4[2] = v33;
  a4[3] = v35;
  a4[4] = v36;
  a4[5] = v38;
  a4[6] = v10;
  a4[7] = v9;
}

uint64_t sub_267E775DC()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v0;
  v2 = sub_267EF43A8();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = sub_267EF43C8();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E77700, 0, 0);
}

uint64_t sub_267E77700()
{
  v1 = v0[2];
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_0(v1 + 3, v2);
  v4 = *(MEMORY[0x277D5BFC0] + 4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_267E777E0;
  v6 = v0[9];

  return MEMORY[0x2821BB7C0](v6, 0x676F6F672E6D6F63, 0xEF7370614D2E656CLL, v2, v3);
}

uint64_t sub_267E777E0()
{
  OUTLINED_FUNCTION_12();
  v1 = *(*v0 + 80);
  v2 = *v0;
  OUTLINED_FUNCTION_5();
  *v3 = v2;

  return MEMORY[0x2822009F8](sub_267C791E8, 0, 0);
}

uint64_t sub_267E778D0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_267E77934(uint64_t a1)
{
  *(v2 + 80) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 88) = v4;
  *v4 = v2;
  v4[1] = sub_267E779D0;

  return sub_267E76C98(v2 + 16);
}

uint64_t sub_267E779D0()
{
  OUTLINED_FUNCTION_12();
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v9 = *v0;
  OUTLINED_FUNCTION_5();
  *v3 = v9;

  v4 = *(v9 + 16);
  v5 = *(v9 + 32);
  v6 = *(v9 + 64);
  v2[2] = *(v9 + 48);
  v2[3] = v6;
  *v2 = v4;
  v2[1] = v5;
  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_267E77ADC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267E42E6C;

  return sub_267E775DC();
}

id sub_267E77B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_267EF8FF8();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_267EF2A78();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}