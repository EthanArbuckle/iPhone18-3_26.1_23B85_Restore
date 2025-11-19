uint64_t sub_1D79313D4@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v3 = *(v2 + 40);
  if (*(result + 616) == 1)
  {
    switch(*(v2 + 40))
    {
      case 1:
        if (*(result + 48))
        {
          v3 = 0;
        }

        break;
      case 2:
        if ((*(result + 48) & 1) == 0)
        {
          v3 = 3;
        }

        break;
      case 3:
        if (!*(result + 48))
        {
          v3 = 2;
        }

        break;
      case 4:
      case 5:
      case 6:
        break;
      default:
        if (*(result + 48))
        {
          v3 = 1;
        }

        break;
    }
  }

  *a2 = v3;
  return result;
}

unint64_t sub_1D7931460()
{
  result = qword_1EE09C458;
  if (!qword_1EE09C458)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE09C458);
  }

  return result;
}

char *sub_1D79314BC()
{
  v1 = v0;
  v2 = sub_1D796C170();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 64))
  {
    sub_1D7930964();
    swift_allocError();
    *v7 = 3;
    *(v7 + 8) = 0u;
    *(v7 + 24) = 0u;
    *(v7 + 40) = 0;
    *(v7 + 48) = 6;
    swift_willThrow();
  }

  else
  {
    v8 = sub_1D7931738(v1);
    v10 = v9;
    sub_1D796C160();
    v11 = sub_1D796C150();
    v13 = v12;
    (*(v3 + 8))(v6, v2);
    v14 = *(v1 + 112);
    v15 = *(v1 + 120);
    v16 = *(v1 + 16);
    v17 = *(v1 + 24);
    memcpy(v29, (v1 + 128), 0x109uLL);
    memcpy(v28, (v1 + 128), 0x109uLL);
    memcpy(v27, (v1 + 400), sizeof(v27));
    v31 = *(v1 + 48);
    *&v24 = v11;
    *(&v24 + 1) = v13;
    v25 = v8;
    v26 = v10;
    v18 = *(v1 + 696);
    v19 = *(v1 + 704);
    v20 = *(v1 + 714);
    v21 = *(v1 + 712);
    v30[0] = *(v1 + 713);
    v30[1] = v20;
    v23 = *(v1 + 88);
    v6 = sub_1D7928168(v28, v27, &v31, &v24, v18, v19, v21, v30, v16, v17, v14, v15, &v23, *(v1 + 616));
    sub_1D7923AE4(v29, v28);
  }

  return v6;
}

double sub_1D7931738(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4 = *(a1 + 96);
  v3 = *(a1 + 104);
  v6 = *(a1 + 112);
  v5 = *(a1 + 120);
  v9.origin.x = v4;
  v9.origin.y = v3;
  v9.size.width = v6;
  v9.size.height = v5;
  Width = CGRectGetWidth(v9);
  if (v2)
  {
    v10.origin.x = v4;
    v10.origin.y = v3;
    v10.size.width = v6;
    v10.size.height = v5;
    CGRectGetHeight(v10);
    swift_beginAccess();
  }

  else
  {
    swift_beginAccess();
    Width = Width - *(a1 + 680);
    v11.origin.x = v4;
    v11.origin.y = v3;
    v11.size.width = v6;
    v11.size.height = v5;
    CGRectGetHeight(v11);
  }

  return Width;
}

void sub_1D7931820(CGFloat *a1@<X8>, double a2@<D0>)
{
  v15 = SizerResult.postProcess(frame:nonIntegral:)(*&a2, 0);
  if (!v6)
  {
    x = v15.origin.x;
    y = v15.origin.y;
    width = v15.size.width;
    height = v15.size.height;
    sub_1D792C9F8();
    *a1 = x;
    a1[1] = y;
    a1[2] = width;
    a1[3] = height;
    *(a1 + 4) = v11;
    *(a1 + 5) = v12;
    *(a1 + 6) = v13;
    *(a1 + 7) = v14;
  }
}

uint64_t sub_1D7931904()
{
  result = type metadata accessor for LayoutDecoder.ObjectPath();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D79319A0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D7931A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12_1();
  v5 = swift_allocObject();
  v6 = OUTLINED_FUNCTION_0();
  sub_1D7931ABC(v7, a2, a3, v6, v8, v9, v10);
  return v5;
}

uint64_t sub_1D7931ABC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v106 = a2;
  v87 = *v7;
  v15 = *(v87 + 80);
  v89 = sub_1D796C690();
  OUTLINED_FUNCTION_0_15();
  v81 = v16;
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v79 - v20;
  v85 = v15;
  v82 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v79 - v23;
  v84 = sub_1D796CB20();
  OUTLINED_FUNCTION_0_15();
  v83 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_14_0();
  v30 = (v29 - v28);
  v31 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_14_0();
  v86 = v31;
  v34 = *(v31 + 16);
  v34(v36 - v35, a1, a3);
  sub_1D793257C(0, &qword_1EE09D138);
  if (swift_dynamicCast())
  {
    sub_1D7924DA0(&v98, &v101);
    v37 = *(&v102 + 1);
    v38 = v103;
    __swift_project_boxed_opaque_existential_1(&v101, *(&v102 + 1));
    *&v98 = a4;
    *(&v98 + 1) = a5;
    *&v99 = a6;
    *(&v99 + 1) = a7;
    *&v100 = v106;
    v39 = v88;
    (*(v38 + 8))(&v92, &v98, v37, v38);
    if (!v39)
    {
      v40 = v85;
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_9_4();
        v41(a1, a3);
        __swift_storeEnumTagSinglePayload(v21, 0, 1, v40);
        v42 = v82[4];
        v42(v24, v21, v40);
        v42(&v8[*(*v8 + 96)], v24, v40);
        OUTLINED_FUNCTION_13_1();
        type metadata accessor for LayoutDecoder.ObjectPath();
        swift_storeEnumTagMultiPayload();
        __swift_destroy_boxed_opaque_existential_1(&v101);
        return v8;
      }

      __swift_storeEnumTagSinglePayload(v21, 1, 1, v40);
      OUTLINED_FUNCTION_9_4();
      v75(v21, v89);
      sub_1D7953554();
      swift_allocError();
      *v76 = 2;
      swift_willThrow();
    }

    OUTLINED_FUNCTION_9_4();
    v77(a1, a3);
    __swift_destroy_boxed_opaque_existential_1(&v101);
    swift_deallocPartialClassInstance();
    return v8;
  }

  v82 = v8;
  *&v100 = 0;
  v98 = 0u;
  v99 = 0u;
  sub_1D79325D0(&v98, &qword_1EE09D130, &qword_1EE09D138);
  *(&v102 + 1) = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v101);
  v80 = a1;
  v81 = a3;
  v34(boxed_opaque_existential_1, a1, a3);
  sub_1D796CB00();
  sub_1D796CB10();
  sub_1D796C850();

  v44 = MEMORY[0x1E69E7CC8];
  v45 = v30;
  v89 = v30;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        sub_1D796C8F0();
        v102 = v99;
        v103 = v100;
        v101 = v98;
        if (!*(&v100 + 1))
        {

          OUTLINED_FUNCTION_9_4();
          v71(v80, v81);
          OUTLINED_FUNCTION_9_4();
          v72(v45, v84);
          v73 = v82;
          v74 = v73 + *(*v73 + 96);
          *v74 = v44;
          v8 = v73;
          *(v74 + 8) = 0;
          OUTLINED_FUNCTION_13_1();
          type metadata accessor for LayoutDecoder.ObjectPath();
          swift_storeEnumTagMultiPayload();
          return v8;
        }

        v46 = v101;
        sub_1D79326E0(&v102, v97);
        if (*(&v46 + 1))
        {
          break;
        }

        __swift_destroy_boxed_opaque_existential_1(v97);
      }

      if (v106)
      {
        break;
      }

      sub_1D79326F0(v97, &v98);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_4_11();
      OUTLINED_FUNCTION_2_20();
      if (v56)
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_11_2();
      if (OUTLINED_FUNCTION_10_3())
      {
        v59 = OUTLINED_FUNCTION_8_5();
        sub_1D792CF90(v59, v60);
        OUTLINED_FUNCTION_7_9();
        if (!v47)
        {
          goto LABEL_64;
        }
      }

      if (a3)
      {
LABEL_45:

        OUTLINED_FUNCTION_17_0(&v105);
        sub_1D79326E0(&v98, v45);
        __swift_destroy_boxed_opaque_existential_1(v97);
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_0_30(&v105);
      OUTLINED_FUNCTION_5_10(&v98, v61);
      if (v56)
      {
        goto LABEL_60;
      }

LABEL_47:
      *(v44 + 16) = v62;
LABEL_48:
      v45 = v89;
    }

    if (v106 != 1)
    {
      break;
    }

    v47 = v46 == 0x656D617266 && *(&v46 + 1) == 0xE500000000000000;
    if (v47)
    {
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_8_5();
    if (sub_1D796C990())
    {
      goto LABEL_40;
    }

    sub_1D79326F0(v97, &v95);
    v45 = &qword_1EC9DA278;
    sub_1D793257C(0, &qword_1EC9DA278);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v94 = 0;
      v93 = 0u;
      v92 = 0u;
      sub_1D79325D0(&v92, &qword_1EC9DA280, &qword_1EC9DA278);
LABEL_40:
      sub_1D79326F0(v97, &v98);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_4_11();
      OUTLINED_FUNCTION_2_20();
      if (v56)
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_11_2();
      if (OUTLINED_FUNCTION_10_3())
      {
        v66 = OUTLINED_FUNCTION_8_5();
        sub_1D792CF90(v66, v67);
        OUTLINED_FUNCTION_7_9();
        if (!v47)
        {
          goto LABEL_64;
        }
      }

      if (a3)
      {
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_0_30(&v105);
      OUTLINED_FUNCTION_5_10(&v98, v68);
      if (v56)
      {
        goto LABEL_61;
      }

      goto LABEL_47;
    }

    sub_1D7924DA0(&v92, &v98);
    v48 = *(&v99 + 1);
    v49 = v100;
    __swift_project_boxed_opaque_existential_1(&v98, *(&v99 + 1));
    LOBYTE(a3) = v49 + 8;
    v79 = *(v49 + 8);
    *(&v93 + 1) = v48;
    v94 = v49;
    __swift_allocate_boxed_opaque_existential_1(&v92);
    v50 = OUTLINED_FUNCTION_0();
    v79(v48, v49, v50);
    v51 = *(&v93 + 1);
    __swift_project_boxed_opaque_existential_1(&v92, *(&v93 + 1));
    v96 = v51;
    __swift_allocate_boxed_opaque_existential_1(&v95);
    OUTLINED_FUNCTION_15_1();
    (*(v52 + 16))();
    sub_1D79326E0(&v95, v91);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = v44;
    v54 = OUTLINED_FUNCTION_8_5();
    sub_1D792CF90(v54, v55);
    OUTLINED_FUNCTION_2_20();
    if (v56)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_11_2();
    if (sub_1D796C880())
    {
      v57 = OUTLINED_FUNCTION_8_5();
      sub_1D792CF90(v57, v58);
      OUTLINED_FUNCTION_7_9();
      if (!v47)
      {
        goto LABEL_64;
      }
    }

    if ((v49 + 8))
    {

      OUTLINED_FUNCTION_17_0(v104);
      sub_1D79326E0(v91, isUniquelyReferenced_nonNull_native);
      __swift_destroy_boxed_opaque_existential_1(v97);
    }

    else
    {
      OUTLINED_FUNCTION_0_30(v104);
      OUTLINED_FUNCTION_5_10(v91, v69);
      if (v56)
      {
        goto LABEL_63;
      }

      *(v44 + 16) = v70;
    }

    v45 = v89;
    __swift_destroy_boxed_opaque_existential_1(&v92);
    __swift_destroy_boxed_opaque_existential_1(&v98);
  }

  sub_1D79326F0(v97, &v98);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_2_20();
  if (!v56)
  {
    OUTLINED_FUNCTION_11_2();
    if (OUTLINED_FUNCTION_10_3())
    {
      v63 = OUTLINED_FUNCTION_8_5();
      sub_1D792CF90(v63, v64);
      OUTLINED_FUNCTION_7_9();
      if (!v47)
      {
        goto LABEL_64;
      }
    }

    if (a3)
    {
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_0_30(&v105);
    OUTLINED_FUNCTION_5_10(&v98, v65);
    if (v56)
    {
      goto LABEL_59;
    }

    goto LABEL_47;
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  result = sub_1D796CA70();
  __break(1u);
  return result;
}

uint64_t sub_1D793257C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1D79325D0(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1D7932628(0, a2, a3);
  OUTLINED_FUNCTION_15_1();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1D7932628(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D793257C(255, a3);
    v4 = sub_1D796C690();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

_OWORD *sub_1D79326E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D79326F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1D793274C()
{
  if (!qword_1EE09C4A0)
  {
    v0 = sub_1D796C8B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE09C4A0);
    }
  }
}

uint64_t sub_1D79327B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for LayoutDecoder.ObjectPath();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v17 - v8;
  (*(v10 + 16))(v17 - v8, v1 + *(v3 + 96), v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v9;
    v12 = v9[8];
    v13 = type metadata accessor for _LayoutDecoder();
    swift_allocObject();
    v14 = sub_1D79329A4(v11, v12);
    v17[4] = v13;
    v17[5] = sub_1D7932A18();
    v17[1] = v14;
    return sub_1D796C520();
  }

  else
  {
    OUTLINED_FUNCTION_15_1();
    return (*(v16 + 32))(a1, v9, v4);
  }
}

uint64_t sub_1D79329A4(uint64_t a1, char a2)
{
  *(v2 + 32) = MEMORY[0x1E69E7CC0];
  sub_1D796C870();
  *(v2 + 40) = sub_1D796C240();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return v2;
}

unint64_t sub_1D7932A18()
{
  result = qword_1EE09D470;
  if (!qword_1EE09D470)
  {
    type metadata accessor for _LayoutDecoder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE09D470);
  }

  return result;
}

uint64_t sub_1D7932A88()
{
  type metadata accessor for LayoutKeyedDecodingContainer();
  sub_1D7932BA0(*(v0 + 16), *(v0 + 24));

  swift_getWitnessTable();
  return sub_1D796C920();
}

uint64_t sub_1D7932BA0(uint64_t a1, char a2)
{
  result = swift_allocObject();
  *(result + 32) = MEMORY[0x1E69E7CC0];
  *(result + 16) = a1;
  *(result + 24) = a2 & 1;
  return result;
}

uint64_t sub_1D7932C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v35 = a1;
  v34 = a3;
  v5 = sub_1D796C690();
  v33 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v32 - v11;
  v13 = *(v3 + 16);
  v14 = *(v3 + 24);
  v15 = sub_1D796CB30();
  if ((v14 & 1) == 0)
  {
    sub_1D7933170(v15, v16, v13, &v43);

    if (v44)
    {
      sub_1D79326E0(&v43, v42);
      sub_1D79326F0(v42, v38);
      sub_1D793257C(0, qword_1EE09D280);
      if (swift_dynamicCast())
      {
        sub_1D7924DA0(v36, &v39);
        v18 = v40;
        v19 = v41;
        __swift_project_boxed_opaque_existential_1(&v39, v40);
        (*(v19 + 8))(v36, v18, v19);
        sub_1D7933374();
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_1(v42);
          __swift_storeEnumTagSinglePayload(v12, 0, 1, a2);
          (*(*(a2 - 8) + 32))(v34, v12, a2);
          return __swift_destroy_boxed_opaque_existential_1(&v39);
        }

        __swift_storeEnumTagSinglePayload(v12, 1, 1, a2);
        (*(v33 + 8))(v12, v5);
        sub_1D79534BC();
        swift_allocError();
        v28 = v27;
        v29 = v40;
        v30 = v41;
        __swift_project_boxed_opaque_existential_1(&v39, v40);
        (*(v30 + 8))(v29, v30);
        *(v28 + 32) = sub_1D796CB50();
        *(v28 + 40) = v31;
        *(v28 + 48) = 0;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1(v42);
        v24 = &v39;
      }

      else
      {
        v37 = 0;
        memset(v36, 0, sizeof(v36));
        sub_1D795C2E4(v36, &qword_1EC9DA340, qword_1EE09D280);
        sub_1D79534BC();
        swift_allocError();
        v26 = v25;
        sub_1D79326F0(v42, v25);
        *(v26 + 48) = 1;
        swift_willThrow();
        v24 = v42;
      }

      return __swift_destroy_boxed_opaque_existential_1(v24);
    }

LABEL_9:
    sub_1D79534BC();
    swift_allocError();
    *v20 = 1;
    *(v20 + 8) = 0u;
    *(v20 + 24) = 0u;
    *(v20 + 40) = 0;
    *(v20 + 48) = 2;
    return swift_willThrow();
  }

  sub_1D7933170(v15, v16, v13, &v39);

  if (!v40)
  {
    goto LABEL_9;
  }

  sub_1D79326E0(&v39, v36);
  sub_1D79326F0(v36, &v43);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v36);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, a2);
    return (*(*(a2 - 8) + 32))(v34, v9, a2);
  }

  __swift_storeEnumTagSinglePayload(v9, 1, 1, a2);
  (*(v33 + 8))(v9, v5);
  sub_1D79534BC();
  swift_allocError();
  v22 = v21;
  sub_1D79326F0(v36, v21);
  *(v22 + 32) = sub_1D796CB50();
  *(v22 + 40) = v23;
  *(v22 + 48) = 0;
  swift_willThrow();
  v24 = v36;
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

double sub_1D7933170@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1D792CF90(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1D79326F0(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1D79331D4@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_5();
  v4 = *(v3 + 80);
  sub_1D796C690();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_5_5();
  v7 = OUTLINED_FUNCTION_6_4();
  v8(v7);
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
  {
    v9 = OUTLINED_FUNCTION_7_5();
    result = v10(v9);
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    *(a1 + 24) = v4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return (*(*(v4 - 8) + 32))(boxed_opaque_existential_1, v1, v4);
  }

  return result;
}

void sub_1D7933374()
{
  if (!qword_1EE09C450)
  {
    v0 = sub_1D796C690();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE09C450);
    }
  }
}

uint64_t sub_1D79333C8()
{
  sub_1D79333FC();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1D79333FC()
{

  return v0;
}

uint64_t sub_1D7933424()
{
  v0 = sub_1D7933454();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1D7933454()
{

  return v0;
}

uint64_t sub_1D7933484()
{
  v1 = *(*v0 + 96);
  type metadata accessor for LayoutDecoder.ObjectPath();
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1D7933518()
{
  sub_1D7933484();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t LayoutItem.__deallocating_deinit()
{
  LayoutItem.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t LayoutItem.deinit()
{
  v1 = *(*v0 + 96);
  sub_1D796C690();
  OUTLINED_FUNCTION_0_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

__n128 sub_1D7933644()
{
  OUTLINED_FUNCTION_0_41();
  (*(v2 + 32))(v1);
  OUTLINED_FUNCTION_9_7();
  v3 = v1 + *(type metadata accessor for Layout.InternalLayoutResult() + 52);
  v4 = *(v0 + 16);
  *v3 = *v0;
  *(v3 + 16) = v4;
  result = *(v0 + 32);
  v6 = *(v0 + 48);
  *(v3 + 32) = result;
  *(v3 + 48) = v6;
  return result;
}

uint64_t sub_1D79336C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v47 = a6;
  v44 = a4;
  v49 = a2;
  v45 = a1;
  v50 = *v7;
  v52 = *(v50 + 176);
  v58 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v51 = v42 - v10;
  v46 = *v11;
  v13 = *v12;
  v14 = *(*v12 + 32);
  v15 = *(*v12 + 40);
  v17 = *(v16 + 224);
  v18 = *(v17 + 16);
  v19 = *(v16 + 192);
  v42[1] = v17 + 16;
  v42[0] = v18;
  v20 = v18(v19, v17);
  v22 = sub_1D7933BC4(v14 + v20, v15 + v21);
  v24 = v7[13];
  v23 = v7[14];
  LayoutContext.set(context:for:)(v22, v8[13], v8[14]);

  LOBYTE(v54[0]) = *(v45 + 48);
  v55[0] = v46;
  v25 = SizerResult.metadata.getter();
  v43 = v17;
  v46 = a7;
  sub_1D7933DA4(a7, v44, v54, v25, v24, v23, v13, v19, v17);

  sub_1D7927B8C(v47);
  v26 = v7[15];
  if (v26)
  {
    v47 = v19;

    v27 = v51;
    swift_getAtKeyPath();
    v56 = v50;
    v57 = &protocol witness table for Node<A>;
    v55[0] = v8;
    v28 = *(v50 + 208);
    v29 = *(v28 + 24);

    v30 = v52;
    v29(v53, v55, v52, v28);
    v31 = *(v58 + 8);
    v58 += 8;
    v31(v27, v30);
    __swift_destroy_boxed_opaque_existential_1(v55);
    v32 = v48;
    v26(v54, v46, v53);
    sub_1D792A250(v53, sub_1D7933374);
    if (v32)
    {
      return sub_1D7935140(v26);
    }

    v39 = v51;
    swift_getAtKeyPath();
    v56 = v50;
    v57 = &protocol witness table for Node<A>;
    v55[0] = v8;
    v40 = *(v28 + 16);

    v41 = v52;
    v40(v54, v55, MEMORY[0x1E69E7CA0] + 8, v52, v28);
    sub_1D7935140(v26);
    v31(v39, v41);
    __swift_destroy_boxed_opaque_existential_1(v54);
    __swift_destroy_boxed_opaque_existential_1(v55);
    v38 = v47;
  }

  else
  {
    v34 = v51;
    swift_getAtKeyPath();
    v56 = v50;
    v57 = &protocol witness table for Node<A>;
    v55[0] = v8;
    v35 = *(v50 + 208);
    v36 = *(v35 + 16);

    v37 = v52;
    v36(v46, v55, v19, v52, v35);
    (*(v58 + 8))(v34, v37);
    __swift_destroy_boxed_opaque_existential_1(v55);
    v38 = v19;
  }

  return (v42[0])(v38, v43);
}

uint64_t sub_1D7933BC4(double a1, double a2)
{
  v3 = v2;
  v7 = v2[2];
  v6 = v2[3];
  OUTLINED_FUNCTION_4_3();
  v8 = v2[7];
  OUTLINED_FUNCTION_4_3();
  v9 = v3[8];
  OUTLINED_FUNCTION_4_3();
  v10 = v3[9];
  OUTLINED_FUNCTION_4_3();
  v11 = v3[10];
  v12 = v3[6];
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  *(v13 + 24) = v6;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  *&v14 = v12;
  *(&v14 + 1) = v8;
  *(v13 + 80) = v11;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  *(v13 + 48) = v14;
  *(v13 + 64) = v15;

  return v13;
}

void LayoutContext.set(context:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    OUTLINED_FUNCTION_6_3();

    swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v3 + 72);
    v4 = OUTLINED_FUNCTION_1_6();
    sub_1D79299F8(v4, v5, v6, v7, v8, v9, v10);
    *(v3 + 72) = v11;
    swift_endAccess();
  }
}

uint64_t sub_1D7933DA4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v44[3] = a8;
  v44[4] = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  (*(*(a8 - 8) + 16))(boxed_opaque_existential_1, a1, a8);
  if (a6)
  {
    v17 = *a3;
    v18 = (*(a9 + 16))(a8, a9);
    v20 = v19;
    v22 = v21;
    v24 = v23;
    type metadata accessor for LayoutContextFrame();
    v25 = swift_allocObject();
    *(v25 + 16) = v18;
    *(v25 + 24) = v20;
    *(v25 + 32) = v22;
    *(v25 + 40) = v24;
    *(v25 + 48) = v17;
    OUTLINED_FUNCTION_6_3();
    swift_isUniquelyReferenced_nonNull_native();
    v40 = *(a7 + 56);
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_2_5();
    sub_1D79299F8(v26, v27, v28, v29, v30, v31, v32);
    *(a7 + 56) = v40;
    swift_endAccess();
    sub_1D7924F60(v44, v42);
    v43 = a2;
    OUTLINED_FUNCTION_6_3();

    OUTLINED_FUNCTION_2_5();
    sub_1D79457D0(v33, v34, v35);
    swift_endAccess();
    if (a4)
    {
      OUTLINED_FUNCTION_6_3();

      swift_isUniquelyReferenced_nonNull_native();
      v41 = *(a7 + 64);
      v36 = OUTLINED_FUNCTION_1_6();
      sub_1D7946050(v36, v37, v38);
      *(a7 + 64) = v41;
      swift_endAccess();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t LayoutItemList.apply<A>(_:source:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v50 = a1;
  v52 = *(*v4 + 80);
  v53 = sub_1D796C690();
  OUTLINED_FUNCTION_0_15();
  v49 = v7;
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v47 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v48 = v45 - v14;
  v51 = a3;
  v15 = *(a3 - 8);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = v45 - v21;
  OUTLINED_FUNCTION_4_3();
  v23 = v4[3];
  v25 = a2[3];
  v24 = a2[4];
  v26 = __swift_project_boxed_opaque_existential_1(a2, v25);
  v27 = *(v24 + 8);

  v45[1] = v26;
  v46 = v27;
  v28 = v27(v25, v24);
  v45[0] = sub_1D7934318(v28, v29, v23);
  LOBYTE(v27) = v30;

  v31 = *(v15 + 16);
  if (v27)
  {
    v31(v19, v50, v51);
    v32 = OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_5_4(v32);
    sub_1D796C4F0();
    sub_1D796C4C0();
    swift_endAccess();
    v33 = v46(v25, v24);
    v35 = v34;
    OUTLINED_FUNCTION_6_3();
    sub_1D792BD44();
    v36 = *(v4[3] + 16);
    sub_1D792B604(v36);
    v37 = v4[3];
    *(v37 + 16) = v36 + 1;
    v38 = v37 + 16 * v36;
    *(v38 + 32) = v33;
    *(v38 + 40) = v35;
    v4[3] = v37;
  }

  else
  {
    v31(v22, v50, v51);
    v39 = v48;
    v40 = OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_5_4(v40);
    v41 = v53;
    sub_1D796C4F0();
    sub_1D796C470();
    v42 = v4[2];
    v43 = v45[0];
    sub_1D79343A4(v45[0], v42);
    (*(v49 + 40))(v42 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v43, v39, v41);
  }

  return swift_endAccess();
}

uint64_t sub_1D7934318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_1D796C990() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

uint64_t sub_1D79343A4(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D79343F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a2;
  v30 = a4;
  v7 = *v5;
  v8 = *(*v5 + 192);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v23 - v11;
  v25 = &v23 - v11;
  v27 = *v13;
  v24 = v7[21];
  v26 = v7[25];
  v28 = type metadata accessor for NodeRepositioning();
  v14 = v7[28];
  (*(v14 + 16))(v8, v14);
  (*(v9 + 16))(v12, a1, v8);
  v15 = (*(v9 + 80) + 80) & ~*(v9 + 80);
  v23 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = v25;
  *(v18 + 2) = v24;
  *(v18 + 3) = v7[22];
  *(v18 + 4) = v7[23];
  *(v18 + 5) = v8;
  *(v18 + 6) = v26;
  *(v18 + 7) = v7[26];
  *(v18 + 8) = v7[27];
  *(v18 + 9) = v14;
  (*(v9 + 32))(&v18[v15], v19, v8);
  *&v18[v23] = v5;
  v20 = v30;
  *&v18[v16] = v29;
  *&v18[v17] = v27;
  *&v18[(v17 + 15) & 0xFFFFFFFFFFFFFFF8] = v20;
  v21 = sub_1D7928004(v5, 0, sub_1D796BF1C, v18);

  swift_retain_n();

  return v21;
}

uint64_t sub_1D79346D4()
{
  v1 = *(*(v0 + 40) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = (((((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

void sub_1D79347C0(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v8 = a2;
  if (CGRectGetHeight(*&a2) != 0.0)
  {
    sub_1D796C630();
    v8 = v10;
    a3 = v11;
    a4 = v12;
    a5 = v13;
  }

  *a1 = v8;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = v8;
  a1[5] = a3;
  a1[6] = a4;
  a1[7] = a5;
}

double sub_1D793487C()
{
  if (*v0 == 1.79769313e308)
  {
    v2.origin.x = OUTLINED_FUNCTION_0();
    CGRectGetMaxX(v2);
  }

  v3.origin.x = OUTLINED_FUNCTION_0();
  CGRectGetHeight(v3);
  return 0.0;
}

uint64_t sub_1D79348F4@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_4_3();
  sub_1D796C690();
  sub_1D796C4F0();

  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_10_1();
  v2 = sub_1D796C370();

  result = sub_1D796C4F0();
  a1[3] = result;
  *a1 = v2;
  return result;
}

uint64_t LayoutItemList.__deallocating_deinit()
{
  LayoutItemList.deinit();
  v0 = OUTLINED_FUNCTION_3_4();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t LayoutItemList.deinit()
{

  return v0;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 208);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    sub_1D79436D4(v1);
  }

  v2 = *(v0 + 216);
  if ((~v2 & 0xF000000000000007) != 0)
  {
    sub_1D79436D4(v2);
  }

  v3 = *(v0 + 224);
  if ((~v3 & 0xF000000000000007) != 0)
  {
    sub_1D79436D4(v3);
  }

  v4 = *(v0 + 232);
  if ((~v4 & 0xF000000000000007) != 0)
  {
    sub_1D79436D4(v4);
  }

  v5 = *(v0 + 240);
  if ((~v5 & 0xF000000000000007) != 0)
  {
    sub_1D79436D4(v5);
  }

  v6 = *(v0 + 248);
  if ((~v6 & 0xF000000000000007) != 0)
  {
    sub_1D79436D4(v6);
  }

  v7 = *(v0 + 256);
  if ((~v7 & 0xF000000000000007) != 0)
  {
    sub_1D79436D4(v7);
  }

  v8 = *(v0 + 264);
  if ((~v8 & 0xF000000000000007) != 0)
  {
    sub_1D79436D4(v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, 281, 7);
}

uint64_t Layout.DebugLayoutAttributes.init(layoutAttributes:debugData:)()
{
  OUTLINED_FUNCTION_0_41();
  (*(v2 + 32))(v1);
  OUTLINED_FUNCTION_9_7();
  result = type metadata accessor for Layout.DebugLayoutAttributes();
  *(v1 + *(result + 52)) = v0;
  return result;
}

uint64_t DebugLayoutData.__deallocating_deinit()
{
  DebugLayoutData.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t DebugLayoutData.deinit()
{

  return v0;
}

uint64_t LayoutContextRecords.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t Layout.deinit()
{
  v0 = Node.deinit();

  return v0;
}

uint64_t Layout.__deallocating_deinit()
{
  v0 = Layout.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 144, 7);
}

uint64_t sub_1D7934D50()
{
  v0 = Node.deinit();
  sub_1D7934DC0(*(v0 + 80));

  return v0;
}

uint64_t sub_1D7934D90()
{
  v0 = sub_1D7934D50();

  return MEMORY[0x1EEE6BDC0](v0, 121, 7);
}

unint64_t sub_1D7934DC0(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t Space.deinit()
{
  v0 = Node.deinit();
  sub_1D7934DC0(*(v0 + 80));
  return v0;
}

uint64_t Space.__deallocating_deinit()
{
  v0 = Space.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t sub_1D7934ED8()
{
  v0 = Node.deinit();

  sub_1D7934F58(*(v0 + 88));

  sub_1D7935140(*(v0 + 120));
  return v0;
}

uint64_t sub_1D7934F28()
{
  v0 = sub_1D7934ED8();

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

unint64_t sub_1D7934F58(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t Frame.deinit()
{
  v0 = Node.deinit();

  sub_1D7935088(*(v0 + 88));

  sub_1D7935140(*(v0 + 112));
  return v0;
}

uint64_t Frame.__deallocating_deinit()
{
  v0 = Frame.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

unint64_t sub_1D7935088(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D7935140(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D7935150()
{
  v0 = sub_1D7934D50();

  return v0;
}

uint64_t sub_1D7935188()
{
  v0 = sub_1D7935150();

  return MEMORY[0x1EEE6BDC0](v0, 152, 7);
}

uint64_t sub_1D79351B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 265))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
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

void BuilderType.embed<A, B>(name:keyPath:size:_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_71();
  v54 = v23;
  v55 = v24;
  v49 = v25;
  v52 = v26;
  v53 = v27;
  v29 = v28;
  v51 = v30;
  v56 = v31;
  v32 = *v30;
  v50 = a21;
  v33 = (v32 + *MEMORY[0x1E69E77B0]);
  v34 = v33[1];
  v59 = *v33;
  v60 = v34;
  v61 = v35;
  v62 = v35;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v64 = a22;
  v65 = a23;
  v66 = a23;
  OUTLINED_FUNCTION_58();
  v36 = type metadata accessor for EmbedFactory.Context();
  OUTLINED_FUNCTION_0_15();
  v38 = v37;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v49 - v41;
  v43 = *v29;
  v60 = v34;
  v62 = AssociatedConformanceWitness;
  AssociatedConformanceWitness = a22;
  v64 = a23;
  OUTLINED_FUNCTION_58();
  type metadata accessor for EmbedFactory();
  OUTLINED_FUNCTION_53();
  v58 = v43;
  v44 = v52;

  v45 = v51;

  v46 = v49;
  v47 = v50;
  sub_1D792233C(&v58, v53, &v57);
  (*(v38 + 16))(v42, v55, v36);
  v48 = sub_1D7935408(v56, v44, &v59, v45, &v57, v42, 0, 0);
  (*(v47 + 40))(v48, v46, v47);

  OUTLINED_FUNCTION_67();
}

double OUTLINED_FUNCTION_53()
{
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 1;
  return result;
}

uint64_t sub_1D793549C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *v8;
  v15 = *v8;
  v16 = *(a3 + 32);
  v17 = *a5;
  *(v8 + 10) = a4;
  *(v8 + 11) = v17;
  *(v8 + 12) = a1;
  *(v8 + 13) = a2;
  v18 = v14[30];
  v19 = v14[25];
  v20 = v14[26];
  v31 = *(v15 + 21);
  v21 = *(v15 + 23);
  *v32 = v15[23];
  *&v32[8] = v21;
  v33 = v19;
  v34 = v20;
  v35 = v20;
  v22 = type metadata accessor for EmbedFactory.Context();
  v23 = *(v22 - 8);
  v27 = *(a3 + 16);
  v28 = *a3;
  (*(v23 + 16))(&v8[v18], a6, v22);
  v24 = &v8[*(*v8 + 248)];
  *v24 = a7;
  *(v24 + 1) = a8;
  v30 = 4;
  v31 = v28;
  *v32 = v27;
  v32[16] = v16;

  v25 = sub_1D79202C0(&v30, a1, a2, &v31);
  (*(v23 + 8))(a6, v22);
  return v25;
}

uint64_t sub_1D793569C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_1_3();
  v3 = v2;
  v4 = *(v1 + 176);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v15[-1] - v8;
  swift_getAtKeyPath();
  v15[3] = v3;
  v15[4] = &protocol witness table for Node<A>;
  v15[0] = v0;
  OUTLINED_FUNCTION_1_3();
  v11 = *(v10 + 200);
  v12 = *(v11 + 8);

  v12(v15, v4, v11);
  (*(v5 + 8))(v9, v4);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_1D79357F8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v65 = a1;
  v4 = v3;
  v66 = a2;
  v61 = *v4;
  v6 = v61;
  v7 = v61[23];
  v63 = v61[26];
  v57 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v59 = AssociatedTypeWitness;
  v60 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v11);
  v62 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v53 - v14;
  v17 = v4[11];
  v16 = v4[12];
  v18 = v4[13];
  v58 = a3;
  v19 = sub_1D7929258(v16, v18);
  v70 = v17;
  v20 = v6[21];
  v21 = v6[24];
  v22 = type metadata accessor for Sizing();
  sub_1D79228AC(v22, v67);
  v24 = v68;
  v23 = v69;
  __swift_project_boxed_opaque_existential_1(v67, v68);
  v25 = v64;
  v26 = (*(v23 + 8))(v65, v66, v19, v20, v21, v24, v23);
  if (!v25)
  {
    v64 = v26;
    v55 = v10;
    v56 = v15;
    v27 = v68;
    v28 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v29 = v65;
    (*(v28 + 16))(&v70, v65, v66, v19, v20, v21, v27, v28);
    v54 = v21;
    v53 = v20;
    v31 = v70;
    if ((SizerResult.isAmbiguous.getter() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1(v67);
      v67[0] = v31;
      v70 = v31;
      v33 = SizerResult.nonIntegral.getter();
      sub_1D79276B0(v33 & 1);
      v67[0] = v31;
      v34 = v56;
      sub_1D793636C(v29, v67, v56, v35, v36, v37, v38);
      v39 = v66;
      v66 = 0;
      v67[0] = v31;
      sub_1D7936940(v29, v39, v58, v67, v64, v34);
      v40 = v34;
      v20 = swift_allocObject();
      v41 = v53;
      v65 = type metadata accessor for NodeRepositioning();
      v42 = v57;
      v43 = v59;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 16))(v43, AssociatedConformanceWitness);
      v45 = v60 + 32;
      v60 = *(v60 + 32);
      (v60)(v62, v40, v43);
      v46 = (*(v45 + 48) + 64) & ~*(v45 + 48);
      v58 = (v55 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
      v56 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
      v55 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
      v47 = swift_allocObject();
      v47[2] = v41;
      v49 = v61;
      v48 = v62;
      v47[3] = v61[22];
      v47[4] = v42;
      v47[5] = v54;
      v50 = v63;
      v47[6] = v49[25];
      v47[7] = v50;
      (v60)(v47 + v46, v48, v43);
      *(v47 + v58) = v4;
      v51 = v55;
      *(v47 + v56) = v31;
      *(v47 + v51) = v64;
      v52 = sub_1D792EC4C();
      *(v20 + 16) = sub_1D7928004(v4, v52 & 1, sub_1D7942428, v47);
      swift_retain_n();
      return v20;
    }

    sub_1D7930964();
    swift_allocError();
    *v32 = 0u;
    *(v32 + 16) = 0u;
    *(v32 + 32) = 0u;
    *(v32 + 48) = 6;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(v67);
  return v20;
}

uint64_t sub_1D7935D58()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7935D90()
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = (((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1D7935E8C()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v3 > 0x3F)
    {
      return AssociatedTypeWitness;
    }

    else
    {
      v0 = swift_getAssociatedTypeWitness();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

uint64_t sub_1D7935F80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  swift_beginAccess();
  if (*(a1 + 64))
  {
    v6 = *(a1 + 72);
    v7 = *(a1 + 80);
    if (*(a1 + 48))
    {
      OUTLINED_FUNCTION_2_14();
      v8 = *(a1 + 664);
      v9 = *(a1 + 672);
      v10 = swift_allocObject();
      v11 = swift_allocObject();
      *(v11 + 16) = v8;
      *(v11 + 24) = v9;
      *(v11 + 32) = v6;
      *(v11 + 40) = v7 * a3;
      if (qword_1EE09D478 != -1)
      {
        OUTLINED_FUNCTION_0_22();
      }

      OUTLINED_FUNCTION_1_17(&word_1EE09D480);
      result = swift_allocObject();
      *(result + 16) = xmmword_1D796EBB0;
      *(result + 32) = v7;
      *(result + 40) = 1;
      *(v10 + 24) = MEMORY[0x1E69E7CC0];
      *(v10 + 32) = result;
    }

    else
    {
      OUTLINED_FUNCTION_2_14();
      v14 = *(a1 + 664);
      v15 = *(a1 + 672);
      v10 = swift_allocObject();
      v16 = swift_allocObject();
      *(v16 + 16) = v14;
      *(v16 + 24) = v15;
      *(v16 + 32) = v6 * a3;
      *(v16 + 40) = v7;
      if (qword_1EE09D478 != -1)
      {
        OUTLINED_FUNCTION_0_22();
      }

      OUTLINED_FUNCTION_1_17(&word_1EE09D480);
      result = swift_allocObject();
      *(result + 16) = xmmword_1D796EBB0;
      *(result + 32) = v6;
      *(result + 40) = 1;
      v17 = MEMORY[0x1E69E7CC0];
      *(v10 + 24) = result;
      *(v10 + 32) = v17;
    }

    v13 = 0x4000000000000000;
  }

  else
  {
    result = swift_allocObject();
    v10 = result;
    *(result + 40) = &type metadata for FlexibleSizer;
    *(result + 48) = &off_1F528A0F8;
    *(result + 16) = a3;
    v13 = 0x2000000000000000;
  }

  *a2 = v13 | v10;
  return result;
}

uint64_t sub_1D79361A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D79361FC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t EmbedFactory.Context.init(factory:model:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v7 = type metadata accessor for EmbedFactory.Context();
  v8 = *(v7 + 84);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_0();
  (*(v9 + 32))(a5 + v8, a2);
  v10 = *(v7 + 88);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_0();
  return (*(v11 + 32))(a5 + v10, a3);
}

uint64_t sub_1D793636C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v29 = a3;
  v31 = *v7;
  v14 = *(v31 + 208);
  v15 = *(v31 + 184);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  v28 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v17);
  v30 = &v26 - v18;
  v19 = *a2;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  memcpy(v39, (a1 + 128), 0x109uLL);
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  memcpy(&v40[4], (a1 + 128), 0x109uLL);
  *v40 = a4;
  *&v40[1] = a5;
  *&v40[2] = a6;
  *&v40[3] = a7;
  v40[38] = sub_1D793675C;
  v40[39] = v21;
  memcpy(v38, v40, sizeof(v38));
  sub_1D7923AE4(v39, &v32);

  v32 = *(v31 + 168);
  v33 = v15;
  v34 = v15;
  v22 = v30;
  v35 = *(v31 + 192);
  v36 = v14;
  v37 = v14;
  v23 = type metadata accessor for EmbedFactory.Context();
  v24 = v40[46];
  sub_1D793665C(v38, v23);
  sub_1D793683C(v40);
  if (!v24)
  {
    (*(v27 + 32))(v29, v22, v28);
  }
}

uint64_t sub_1D7936618()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t EmbedFactoryCursor.layoutOptions.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 32), 0x109uLL);
  memcpy(a1, (v1 + 32), 0x109uLL);
  return sub_1D7923AE4(__dst, v4);
}

void sub_1D7936790(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  swift_beginAccess();
  *(a1 + 16) = 1;
  v10.origin.x = a2;
  v10.origin.y = a3;
  v10.size.width = a4;
  v10.size.height = a5;
  SizerResult.postProcess(frame:nonIntegral:)(v10, 0);
}

uint64_t sub_1D793686C()
{
  result = type metadata accessor for EmbedFactory.Context();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1D7936940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v40 = a5;
  v41 = a2;
  v42 = *v6;
  v44 = *(v42 + 176);
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v39 = v38 - v10;
  v12 = *v11;
  v38[1] = *v13;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = *(AssociatedConformanceWitness + 16);
  v16 = swift_checkMetadataState();
  v17 = v15(v16, AssociatedConformanceWitness);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  LOBYTE(v45[0]) = *(a1 + 48);
  v46[0] = v12;
  v24 = SizerResult.metadata.getter();
  v25 = v6[12];
  v26.value._countAndFlagsBits = v6[13];
  v49.origin.x = v17;
  v49.origin.y = v19;
  v49.size.width = v21;
  v27 = v24;
  v49.size.height = v23;
  LayoutContext.set(frame:direction:metadata:for:)(v49, v45, *(&v25 - 1), v26);

  v15(v16, AssociatedConformanceWitness);
  sub_1D7927B8C(v40);
  v28 = *(v7 + *(*v7 + 248));
  if (v28)
  {

    v28(v45, a6);
    v29 = v39;
    swift_getAtKeyPath();
    v47 = v42;
    v48 = &protocol witness table for Node<A>;
    v46[0] = v7;
    v30 = *(v42 + 200);
    v31 = *(v30 + 16);

    v32 = v44;
    v31(v45, v46, MEMORY[0x1E69E7CA0] + 8, v44, v30);
    sub_1D7935140(v28);
    (*(v43 + 8))(v29, v32);
    __swift_destroy_boxed_opaque_existential_1(v45);
  }

  else
  {
    v33 = v39;
    swift_getAtKeyPath();
    v47 = v42;
    v48 = &protocol witness table for Node<A>;
    v46[0] = v7;
    v34 = *(v42 + 200);
    v35 = *(v34 + 16);

    v36 = v44;
    v35(a6, v46, v16, v44, v34);
    (*(v43 + 8))(v33, v36);
  }

  return __swift_destroy_boxed_opaque_existential_1(v46);
}

unint64_t *EmbedFactory.deinit()
{
  v0 = Node.deinit();

  sub_1D7936E54(v0[11]);

  v1 = *(*v0 + 240);
  type metadata accessor for EmbedFactory.Context();
  OUTLINED_FUNCTION_0_0();
  (*(v2 + 8))(v0 + v1);
  sub_1D7935140(*(v0 + *(*v0 + 248)));
  return v0;
}

uint64_t EmbedFactory.__deallocating_deinit()
{
  v0 = EmbedFactory.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1D7936E54(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D7936F30(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(*a1 + 168);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v23[-1] - v9;
  v12 = v11[13];
  v13 = v11[14];
  __swift_project_boxed_opaque_existential_1(v11 + 10, v12);
  (*(v13 + 8))(v23, v12, v13);
  v14 = v24;
  v15 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  (*(v8 + 16))(v10, a3, v7);
  v16 = (*(v15 + 8))(a2, v10, v7, *(v6 + 176), v14, v15);
  (*(v8 + 8))(v10, v7);
  v17 = __swift_destroy_boxed_opaque_existential_1(v23);
  if (v16)
  {
    return (a1[15])(v17);
  }

  v19 = a1[17];
  if (v19)
  {

    v18 = v19(v20);
    sub_1D7935140(v19);
  }

  else
  {
    type metadata accessor for Node();
    return sub_1D796C480();
  }

  return v18;
}

uint64_t sub_1D7937140@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v9 = *a1;
  v10 = v5[3];
  v11 = v5[4];
  v21 = v5;
  __swift_project_boxed_opaque_existential_1(v5, v10);
  LOBYTE(v23) = 0;
  sub_1D7938D18(&v23, a1, v24);
  OUTLINED_FUNCTION_0_38();
  v12 = *(v11 + 16);
  v13 = *(v9 + 80);
  v14 = *(v9 + 88);

  v12(&v25, &v23, a2, a3, v13, v14, v10, v11);

  if (!v22)
  {
    v16 = v25;
    v17 = v21[8];
    v18 = v21[9];
    __swift_project_boxed_opaque_existential_1(v21 + 5, v17);
    LOBYTE(v23) = 1;
    sub_1D7938D18(&v23, a1, v24);
    OUTLINED_FUNCTION_0_38();
    v19 = *(v18 + 16);

    v19(&v25, &v23, a2, a3, v13, v14, v17, v18);

    v24[0] = v16;
    v23 = v25;
    sub_1D793797C(v24, &v23, a4);
  }

  return result;
}

uint64_t sub_1D7937308()
{
  type metadata accessor for Node();
  *(v0 + 16) = sub_1D796C480();
  return v0;
}

uint64_t sub_1D7937364(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v18 = v3[2];
  v19 = v3[1];
  v24 = *v3;
  v7 = type metadata accessor for Conditional();
  Conditional.condition.getter(v7, v21);
  v8 = v22;
  v9 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v10 = *(v6 + 80);
  v11 = *(v6 + 88);
  v12 = (*(v9 + 8))(a1, a2, v10, v11, v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v21);
  if (v12)
  {
    v13 = v19;
  }

  else
  {
    v13 = v18;
  }

  v24 = v13;
  sub_1D7922754(v13);
  v14 = type metadata accessor for Sizing();
  sub_1D79228AC(v14, v21);
  v15 = v22;
  v16 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(v16 + 16))(a1, a2, a3, v10, v11, v15, v16);
  sub_1D7934DC0(v13);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_1D79374F4()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    type metadata accessor for ListBuilder();

    v2 = sub_1D79375E0();
    v1(v2, v3, v4, v5);
    sub_1D7935140(v1);
    swift_beginAccess();
    v6 = *(v2 + 16);
  }

  else
  {
    type metadata accessor for Node();
    return sub_1D796C480();
  }

  return v6;
}

uint64_t sub_1D79375E0()
{
  v0 = swift_allocObject();
  sub_1D7937308();
  return v0;
}

unint64_t sub_1D793763C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D793774C(v3, a1, a2);
  type metadata accessor for Node();
  sub_1D796C4F0();
  swift_getWitnessTable();
  if (sub_1D796C570())
  {

    return 0x8000000000000000;
  }

  else
  {
    v8 = sub_1D7929380(v7, a1, a2, a3);
  }

  return v8;
}

uint64_t sub_1D793774C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a1;
  v7 = *(*a1 + 168);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v23[-1] - v9;
  v12 = v11[13];
  v13 = v11[14];
  __swift_project_boxed_opaque_existential_1(v11 + 10, v12);
  (*(v13 + 8))(v23, v12, v13);
  v14 = v24;
  v15 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  (*(v8 + 16))(v10, a3, v7);
  LOBYTE(v4) = (*(v15 + 8))(v4, v10, v7, *(v6 + 176), v14, v15);
  (*(v8 + 8))(v10, v7);
  v16 = __swift_destroy_boxed_opaque_existential_1(v23);
  v17 = a1[19];
  if (v4)
  {
    if (!v17 || (a1[20] & 1) == 0)
    {
      return (a1[15])(v16);
    }

    goto LABEL_9;
  }

  if (v17 && (a1[20] & 1) == 0)
  {
LABEL_9:

    return v17;
  }

  v19 = a1[17];
  if (!v19)
  {
    type metadata accessor for Node();
    return sub_1D796C480();
  }

  v17 = v19(v20);
  sub_1D7935140(v19);
  return v17;
}

uint64_t sub_1D793797C@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  sub_1D7938C58();
  v7 = v5 >> 61;
  if (v5 >> 61 == 1)
  {
    goto LABEL_6;
  }

  v8 = v6 >> 61;
  if (!v7 && !v8)
  {
    v9 = *(v5 + 32);
    v50.val[0] = *(v5 + 16);
    v50.val[1] = *(v6 + 16);
    v10 = *(v6 + 32);
    result = swift_allocObject();
    v12 = (result + 16);
    v54 = v50;
    vst2q_f64(v12, v54);
    *(result + 48) = v9;
    *(result + 49) = v10;
LABEL_12:
    *a3 = result;
    return result;
  }

  if (v8 == 1)
  {
LABEL_6:
    v13 = swift_allocObject();
    *(v13 + 40) = &type metadata for DimensionWiseSizer;
    *(v13 + 48) = &off_1F528C508;
    v14 = swift_allocObject();
    *(v13 + 16) = v14;
    sub_1D795B2D4(v3, v14 + 16);
    result = v13 | 0x2000000000000000;
    goto LABEL_12;
  }

  if (v7 == 4)
  {
    v5 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
LABEL_11:

    v15 = swift_allocObject();
    v52 = v6;
    v53 = v5;
    sub_1D793797C((v15 + 16), &v53, &v52);

    result = v15 | 0x3000000000000000;
    goto LABEL_12;
  }

  if (v8 == 4)
  {
    v6 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    goto LABEL_11;
  }

  if (v7 == 5)
  {
    v16 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v17 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v18 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v51 = v6;
    v52 = v16;

    sub_1D793797C(&v53, &v52, &v51);
    v19 = v53;
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    v21 = swift_allocObject();
    *(v21 + 16) = v17;
    *(v21 + 24) = v18;
    v22 = sub_1D795B2CC;
LABEL_17:
    *(v20 + 24) = v22;
    *(v20 + 32) = v21;

    result = v20 | 0x6000000000000000;
    goto LABEL_12;
  }

  if (v8 == 5)
  {
    v23 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v24 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v51 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v52 = v5;

    sub_1D793797C(&v53, &v52, &v51);
    v25 = v53;
    v20 = swift_allocObject();
    *(v20 + 16) = v25;
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = v24;
    v22 = sub_1D795B2C4;
    goto LABEL_17;
  }

  if (v7 == 6)
  {
    v26 = v5 & 0x1FFFFFFFFFFFFFFFLL;
    v27 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v28 = *(v26 + 24);
    v29 = *(v26 + 32);
    v30 = swift_allocObject();
    v52 = v6;
    v53 = v27;

    sub_1D793797C((v30 + 16), &v53, &v52);
    v31 = swift_allocObject();
    *(v31 + 16) = v28;
    *(v31 + 24) = v29;
    v32 = sub_1D795B264;
LABEL_22:
    *(v30 + 24) = v32;
    *(v30 + 32) = v31;

    result = v30 | 0x7000000000000000;
    goto LABEL_12;
  }

  if (v8 == 6)
  {
    v33 = v6 & 0x1FFFFFFFFFFFFFFFLL;
    v34 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v35 = *(v33 + 24);
    v36 = *(v33 + 32);
    v30 = swift_allocObject();
    v52 = v34;
    v53 = v5;

    sub_1D793797C((v30 + 16), &v53, &v52);
    v31 = swift_allocObject();
    *(v31 + 16) = v35;
    *(v31 + 24) = v36;
    v32 = sub_1D795B248;
    goto LABEL_22;
  }

  if (v7 == 3)
  {
    v5 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
LABEL_27:

    v37 = swift_allocObject();
    v52 = v6;
    v53 = v5;
    sub_1D793797C((v37 + 16), &v53, &v52);

    result = v37 | 0x5000000000000000;
    goto LABEL_12;
  }

  if (v8 == 3)
  {
    v6 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    goto LABEL_27;
  }

  if (v7 == 2)
  {
    v38 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v39 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v40 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v51 = v6;
    v52 = v38;

    sub_1D793797C(&v53, &v52, &v51);
    v41 = v53;
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    sub_1D792EC60();
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1D796EBB0;
    *(v43 + 32) = v39;
    *(v43 + 40) = v40;

    v44 = MEMORY[0x1E69E7CC0];
    *(v42 + 24) = v43;
    *(v42 + 32) = v44;
LABEL_32:

    result = v42 | 0x4000000000000000;
    goto LABEL_12;
  }

  if (v8 == 2)
  {
    v45 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v46 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v47 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v51 = v45;
    v52 = v5;

    sub_1D793797C(&v53, &v52, &v51);
    v48 = v53;
    v42 = swift_allocObject();
    *(v42 + 16) = v48;
    sub_1D792EC60();
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1D796EBB0;
    *(v49 + 32) = v46;
    *(v49 + 40) = v47;

    *(v42 + 24) = MEMORY[0x1E69E7CC0];
    *(v42 + 32) = v49;
    goto LABEL_32;
  }

  result = sub_1D796C980();
  __break(1u);
  return result;
}

uint64_t sub_1D7937F40()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D7937F8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7937FC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7938004()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D793803C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

void sub_1D793809C(char a1@<W3>, uint64_t *a2@<X8>)
{
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_0_18();
  if (a1)
  {
    *(v4 + 16) = DimensionCursor.position.getter();
    *(v4 + 24) = 0x7FEFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = DimensionCursor.position.getter();
    v6 = DimensionCursor.remainingBounds.getter();
    *(v4 + 16) = v5;
    *(v4 + 24) = v6;
  }

  *(v4 + 32) = 0;
  *a2 = v4;
}

double DimensionCursor.remainingBounds.getter()
{
  v1 = *v0;
  v2 = Cursor.remainingBounds.getter();
  if (v1)
  {

    return CGRectGetHeight(*&v2);
  }

  else
  {

    return CGRectGetWidth(*&v2);
  }
}

void sub_1D7938214(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  type metadata accessor for DimensionCursor();
  v3 = DimensionCursor.position.getter();
  v4 = DimensionCursor.remainingBounds.getter();
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 1;
  *a1 = v2;
}

void sub_1D793830C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, __int128 a20, __int128 a21, char a22, __int16 a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  OUTLINED_FUNCTION_37();
  a38 = v44;
  a39 = v45;
  v69 = v46;
  v65 = v47;
  v68 = v48;
  v50 = v49;
  v52 = v51;
  v67 = v53;
  v64 = a42;
  v55 = a40;
  v54 = a41;
  v66 = *(v49 + 32);
  v57 = *v56;
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_31();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_54();
  v59 = type metadata accessor for Box();
  *&a20 = v57;
  sub_1D792233C(&a20, v65, &a27);
  a26 = v64;
  v60 = v50[1];
  a20 = *v50;
  a21 = v60;
  a22 = v66;
  a19 = 2;

  v61 = sub_1D792280C(&a19, &a27, &a26, v67, v52, v68, &a20);
  (*(v54 + 40))(v61, v55, v54);
  OUTLINED_FUNCTION_11_3();
  v62 = OUTLINED_FUNCTION_34();
  *&a20 = v43;
  *(&a20 + 1) = v42;
  *&a21 = AssociatedConformanceWitness;
  *(&a21 + 1) = v62;
  OUTLINED_FUNCTION_32();
  type metadata accessor for BoxBuilder();
  v63 = OUTLINED_FUNCTION_19_0();
  sub_1D79207F4(v63);
  OUTLINED_FUNCTION_45();
  v69(v59);

  OUTLINED_FUNCTION_36();
}

uint64_t OUTLINED_FUNCTION_34()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_34_1()
{
}

uint64_t sub_1D7938564(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D7936F30(v2, a1, a2);
  *(v2 + 152) = v5;
  *(v2 + 160) = v6;

  if (v5)
  {
    type metadata accessor for Node();

    v8 = sub_1D796C430();

    for (i = v8; i != sub_1D796C4A0(); v8 = i)
    {
      v9 = sub_1D796C490();
      sub_1D796C450();
      if (v9)
      {
        v10 = *(v5 + 32 + 8 * v8);
      }

      else
      {
        v10 = sub_1D796C790();
      }

      sub_1D796C4E0();
      (*(*v10 + 144))(a1, a2);
    }
  }

  return result;
}

void BuilderType.frame<A>(name:flexBoxItem:keyPath:size:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, unint64_t a12, unint64_t a13, __int128 a14, __int128 a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_64();
  a28 = v30;
  a29 = v31;
  v33 = v32;
  v34 = a30;
  v35 = *(v32 + 32);
  v37 = *v36;
  OUTLINED_FUNCTION_22();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a14 = a9;
  *&a15 = AssociatedConformanceWitness;
  *(&a15 + 1) = v34;
  OUTLINED_FUNCTION_38();
  type metadata accessor for Frame();
  v39 = v33[1];
  a14 = *v33;
  a15 = v39;
  a16 = v35;
  a13 = v37;

  OUTLINED_FUNCTION_24(&a13, &a12);
  OUTLINED_FUNCTION_51();
  sub_1D79236F8(v40, v41, v42, v43, v44, 0, 0);
  OUTLINED_FUNCTION_0_35();
  v45();

  OUTLINED_FUNCTION_66();
}

uint64_t FastLayoutDecoder.decode<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_9_13(a2);
  v7 = v6;
  v9 = *(v8 + 80);
  sub_1D796C690();
  OUTLINED_FUNCTION_7_17();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_4_21();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v27 - v16;
  v18 = *(v2 + 32);
  if (v18 == 1)
  {
    LayoutItem.flipRightToLeft(bounds:)(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
    OUTLINED_FUNCTION_2_36();
    v21 = OUTLINED_FUNCTION_6_17();
    v22(v21);

    OUTLINED_FUNCTION_3_26(v4);
    if (!v20)
    {
      goto LABEL_12;
    }

    (*(v11 + 8))(v4, v3);
    goto LABEL_9;
  }

  if (v18)
  {
    sub_1D7953554();
    OUTLINED_FUNCTION_8_12();
    v24 = 1;
    goto LABEL_11;
  }

  v19 = *(v7 + 96);
  OUTLINED_FUNCTION_2_36();
  (*(v11 + 16))(v17, a1 + v19, v3);
  OUTLINED_FUNCTION_3_26(v17);
  if (v20)
  {
    (*(v11 + 8))(v17, v3);
LABEL_9:
    sub_1D7953554();
    OUTLINED_FUNCTION_8_12();
    v24 = 0;
LABEL_11:
    *v23 = v24;
    return swift_willThrow();
  }

  v4 = v17;
LABEL_12:
  OUTLINED_FUNCTION_5_22();
  return (*(v26 + 32))(v27[5], v4, v9);
}

uint64_t ListBuilder.__deallocating_deinit()
{
  ListBuilder.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t ListBuilder.add(node:)()
{
  swift_beginAccess();
  OUTLINED_FUNCTION_0_45();
  OUTLINED_FUNCTION_0_45();
  type metadata accessor for Node();
  sub_1D796C4F0();

  sub_1D796C4C0();
  return swift_endAccess();
}

uint64_t sub_1D7938B60()
{
  type metadata accessor for ListBuilder();
  v1 = sub_1D79375E0();
  (*(v0 + 16))(v1, v2, v3, v4);
  swift_beginAccess();
  v5 = *(v1 + 16);

  return v5;
}

void sub_1D7938C58()
{
  if (!qword_1EE09D128)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE09D128);
    }
  }
}

double DimensionCursor.position.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v2 + 664;
  if (v1)
  {
    swift_beginAccess();
    v3 = v2 + 672;
  }

  else
  {
    swift_beginAccess();
  }

  return *v3;
}

_BYTE *sub_1D7938D18@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

unint64_t sub_1D7938D28(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

void *sub_1D7938D44@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v4 = *a2;
  v5 = *a3;
  *a4 = *result;
  a4[1] = v4;
  a4[2] = v5;
  return result;
}

uint64_t Conditional.condition.getter@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *v2 >> 62;
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = result;
      a2[3] = &type metadata for NotCondition;
      a2[4] = &off_1F528C758;
      *a2 = swift_allocObject();
      return Conditional.condition.getter(v6);
    }

    if (v4 == 0x8000000000000000)
    {
      a2[3] = &type metadata for FlexibleCondition;
      a2[4] = &off_1F528EE98;
      *a2 = 0;
      return result;
    }

    a2[3] = &type metadata for FlexibleCondition;
    a2[4] = &off_1F528EE98;
    if (v4 == 0x8000000000000008)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    v7 = *(v4 + 16);
    a2[3] = &type metadata for BoolCondition;
    a2[4] = &off_1F528A208;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1D7938E9C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

unint64_t get_enum_tag_for_layout_string_11TeaTemplate11ConditionalOyxG(uint64_t *a1)
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

BOOL sub_1D7938EF0(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    if ((*(a1 + 48) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    Height = CGRectGetHeight(*(a1 + 96));
    return Height == 1.79769313e308;
  }

  if (a3 != 1)
  {
    goto LABEL_5;
  }

LABEL_3:
  Height = CGRectGetWidth(*(a1 + 96));
  return Height == 1.79769313e308;
}

void sub_1D7938F48(uint64_t a1@<X8>)
{
  v3 = *v1;
  switch(*v1 >> 61)
  {
    case 1uLL:
      v6 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *(a1 + 24) = &type metadata for FixedDimensionSizer;
      *(a1 + 32) = &off_1F528B670;
      *a1 = v6;
      *(a1 + 8) = 0;
      v7 = 1;
      goto LABEL_16;
    case 2uLL:
      v5 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *(a1 + 24) = &type metadata for ColumnDimensionSizer;
      *(a1 + 32) = &off_1F52892E8;
      *a1 = v5;
      break;
    case 3uLL:
      *(a1 + 24) = &type metadata for InvertDimensionSizer;
      *(a1 + 32) = &off_1F528CE00;
      *a1 = swift_allocObject();
      sub_1D7938F48();
      break;
    case 4uLL:

      sub_1D7924F60((v3 & 0x1FFFFFFFFFFFFFFFLL) + 16, a1);
      break;
    case 5uLL:
      v8 = v3 & 0x1FFFFFFFFFFFFFFFLL;
      v9 = *(v8 + 16);
      v10 = *(v8 + 24);
      *(a1 + 24) = &type metadata for FixedDimensionSizer;
      *(a1 + 32) = &off_1F528B670;
      *a1 = v9;
      *(a1 + 8) = v10;
      *(a1 + 16) = 2;

      v11 = v9;
      break;
    case 6uLL:
      v12 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *(a1 + 24) = &type metadata for FixedDimensionSizer;
      *(a1 + 32) = &off_1F528B670;
      *a1 = v12;
      *(a1 + 8) = 0;
      v7 = 3;
LABEL_16:
      *(a1 + 16) = v7;
      break;
    case 7uLL:
      if (v3 == 0xE000000000000000)
      {
        *(a1 + 24) = &type metadata for SizeToFitDimensionSizer;
        *(a1 + 32) = &off_1F52898E0;
        *a1 = 0;
      }

      else if (v3 == 0xE000000000000008)
      {
        *(a1 + 24) = &type metadata for SizeToFitDimensionSizer;
        *(a1 + 32) = &off_1F52898E0;
        *a1 = 1;
      }

      else
      {
        *(a1 + 24) = &type metadata for FillDimensionSizer;
        *(a1 + 32) = &off_1F5287C98;
      }

      break;
    default:
      v4 = *(v3 + 16);
      *(a1 + 24) = &type metadata for FixedDimensionSizer;
      *(a1 + 32) = &off_1F528B670;
      *a1 = v4;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      break;
  }
}

uint64_t sub_1D793917C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D79391DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_0_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FlexBoxItemFlex(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1D793921C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return OUTLINED_FUNCTION_0_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7939288@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D793B71C();
  *a1 = result;
  return result;
}

uint64_t sub_1D7939408()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7939440()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D7939494()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D793963C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7939674()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D79396E8()
{

  OUTLINED_FUNCTION_4_2();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1D793972C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D7939764()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  sub_1D7944F10(*(v0 + 64), *(v0 + 72), *(v0 + 80));

  return MEMORY[0x1EEE6BDD0](v0, 82, 7);
}

uint64_t sub_1D79397B0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  sub_1D7944F10(*(v0 + 80), *(v0 + 88), *(v0 + 96));

  OUTLINED_FUNCTION_6_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1D7939810()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  sub_1D7944F10(*(v0 + 88), *(v0 + 96), *(v0 + 104));

  OUTLINED_FUNCTION_6_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1D7939870()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  sub_1D7944F10(*(v0 + 80), *(v0 + 88), *(v0 + 96));

  OUTLINED_FUNCTION_8_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1D79398C8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  sub_1D7944F10(*(v0 + 80), *(v0 + 88), *(v0 + 96));

  OUTLINED_FUNCTION_8_0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1D793991C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7939980()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D79399B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D7939A04()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7939A68()
{
  sub_1D79436D4(*(v0 + 16));
  sub_1D79436D4(*(v0 + 24));
  OUTLINED_FUNCTION_3_6();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1D7939AF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7939B38()
{
  OUTLINED_FUNCTION_1_13();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1D7939B6C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D7939C44()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D7939C7C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D7939CBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D7939D00()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7939D60()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D7939DA4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D7939E1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7939E60()
{
  OUTLINED_FUNCTION_1_13();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1D7939E94()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D7939ED8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D7939F20()
{

  OUTLINED_FUNCTION_4_2();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1D7939F78()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D7939FF4()
{

  v0 = OUTLINED_FUNCTION_0_28();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1D793A100()
{

  OUTLINED_FUNCTION_39();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1D793A134()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D793A16C()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D793A1A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D793A1DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D793A214()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D793A310()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D793A4BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D793A500()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D793A5B8()
{
  sub_1D7941034(*(v0 + 16));
  sub_1D7941034(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

BOOL sub_1D793AAB8(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t initializeBufferWithCopyOfBuffer for ColumnSystem(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t ColumnLayoutSize.hashValue.getter()
{
  v1 = *v0;
  sub_1D796CAC0();
  MEMORY[0x1DA704EF0](v1);
  return sub_1D796CAF0();
}

uint64_t sub_1D793ABF4()
{
  v1 = *v0;
  sub_1D796CAC0();
  MEMORY[0x1DA704EF0](v1);
  return sub_1D796CAF0();
}

uint64_t ColumnLayoutSize.description.getter()
{
  if (*v0)
  {
    return 0x6C6C616D53;
  }

  else
  {
    return 0x656772614CLL;
  }
}

unint64_t sub_1D793AC68()
{
  result = qword_1EC9D9E70;
  if (!qword_1EC9D9E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9D9E70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ColumnLayoutSize(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ColumnLayoutSize(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void sub_1D793AECC(uint64_t a1@<X8>)
{
  sub_1D793AF00();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_1D793AF08@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1D793AF34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D793B408(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D793AF60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D793B5E8();
  *a1 = result;
  return result;
}

uint64_t sub_1D793AF88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D793B754(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1D793AFB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D793F5A4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1D793AFE8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D793B60C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1D793B020@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D793B75C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1D793B054@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D793B7B0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1D793B0A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D793B7EC(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_1D793B110@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D793B12C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D793B834(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D793B274(uint64_t a1)
{
  v2 = sub_1D792FEA4(&qword_1EC9D9ED8, type metadata accessor for UIContentSizeCategory);
  v3 = sub_1D792FEA4(&qword_1EC9D9EE0, type metadata accessor for UIContentSizeCategory);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D793B3C0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D796C2E0();

  *a1 = v2;
  return result;
}

uint64_t sub_1D793B40C(uint64_t a1)
{
  v2 = sub_1D792FEA4(&qword_1EE09C500, type metadata accessor for Key);
  v3 = sub_1D792FEA4(&qword_1EC9D9EF8, type metadata accessor for Key);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D793B510()
{
  sub_1D796C310();
  sub_1D796C320();
}

uint64_t sub_1D793B564()
{
  v0 = sub_1D796C310();
  v2 = v1;
  if (v0 == sub_1D796C310() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D796C990();
  }

  return v5 & 1;
}

uint64_t sub_1D793B624(uint64_t a1, id *a2)
{
  result = sub_1D796C2F0();
  *a2 = 0;
  return result;
}

uint64_t sub_1D793B69C(uint64_t a1, id *a2)
{
  v3 = sub_1D796C300();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D793B71C()
{
  sub_1D796C310();
  v0 = sub_1D796C2E0();

  return v0;
}

uint64_t sub_1D793B75C(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 & a1;
  if (sub_1D796C5C0())
  {
    return 0;
  }

  *v1 = v3 & ~a1;
  return v4;
}

uint64_t sub_1D793B7B0(uint64_t a1)
{
  v2 = *v1 & a1;
  *v1 |= a1;
  if (sub_1D796C5C0())
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D793B7FC()
{
  v0 = sub_1D796C310();
  v1 = MEMORY[0x1DA704760](v0);

  return v1;
}

uint64_t sub_1D793B834(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t StackBuilder.layer(block:)(void (*a1)(void))
{
  type metadata accessor for ListBuilder();
  v3 = sub_1D79375E0();
  a1();
  if (!v1)
  {
    type metadata accessor for StackLayer();
    swift_beginAccess();
    sub_1D7951CA0(*(v3 + 16));

    sub_1D7951E18();
  }
}

uint64_t StackBuilder.__deallocating_deinit()
{
  StackBuilder.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

unint64_t LayoutOptions.layoutMarginAdjuster.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1[24];
  v3 = v1[25];
  v5 = v1[26];
  v4 = v1[27];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
  sub_1D793BBC4(v2);
  sub_1D793BBC4(v3);
  sub_1D793BBC4(v5);

  return sub_1D793BBC4(v4);
}

unint64_t sub_1D793BBC4(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1D793BBD8(result);
  }

  return result;
}

unint64_t sub_1D793BBD8(unint64_t result)
{
  switch(result >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t LayoutOptions.layoutGuideAdjuster.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 192), 0x49uLL);
  memcpy(a1, (v1 + 192), 0x49uLL);
  return sub_1D793BC64(__dst, &v4);
}

double LayoutOptions.scale.getter()
{
  v1 = *(v0 + 80);
  [v1 displayScale];
  if (v2 <= 0.0)
  {
    return 1.0;
  }

  [v1 displayScale];
  return result;
}

id LayoutOptions.makeCopy(layoutDirection:origin:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v10 = *(v3 + 144);
  OUTLINED_FUNCTION_4(a1, a2, a3);
  *(v6 + 136) = v4;
  *(v6 + 144) = v5;
  OUTLINED_FUNCTION_15(v6);
  v7 = vdupq_n_s64(0xF000000000000007);
  v8[12] = v7;
  v8[13] = v7;
  OUTLINED_FUNCTION_21_0(v8, v7);

  return v10;
}

unint64_t LayoutOptions.makeCopy(layoutDirection:origin:layoutMarginAdjuster:)@<X0>(unint64_t *a1@<X1>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v6 = *a1;
  v5 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v9 = *(v4 + 144);
  OUTLINED_FUNCTION_4(a2, a3, a4);
  *(v11 + 136) = v10;
  *(v11 + 144) = v9;
  OUTLINED_FUNCTION_15(v11);
  v12[12].n128_u64[0] = v6;
  v12[12].n128_u64[1] = v5;
  v12[13].n128_u64[0] = v8;
  v12[13].n128_u64[1] = v7;
  OUTLINED_FUNCTION_21_0(v12, vdupq_n_s64(0xF000000000000007));
  v13 = v9;
  sub_1D793BBC4(v6);
  sub_1D793BBC4(v5);
  sub_1D793BBC4(v8);

  return sub_1D793BBC4(v7);
}

uint64_t LayoutOptions.makeCopy(layoutDirection:origin:layoutGuideAdjuster:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  memcpy(__dst, a2, 0x49uLL);
  v11 = *(v5 + 80);
  v12 = *(v5 + 144);
  v13 = *(v5 + 184);
  v14 = *(v5 + 16);
  *a3 = *v5;
  *(a3 + 16) = v14;
  v15 = *(v5 + 48);
  *(a3 + 32) = *(v5 + 32);
  *(a3 + 48) = v15;
  *(a3 + 64) = *(v5 + 64);
  *(a3 + 80) = v11;
  *(a3 + 88) = *(v5 + 88);
  *(a3 + 104) = *(v5 + 104);
  *(a3 + 120) = a4;
  *(a3 + 128) = a5;
  *(a3 + 136) = a1;
  *(a3 + 144) = v12;
  *(a3 + 152) = *(v5 + 152);
  *(a3 + 168) = *(v5 + 168);
  *(a3 + 184) = v13;
  memcpy((a3 + 192), a2, 0x49uLL);
  v16 = v11;
  v17 = v12;
  return sub_1D793BC64(__dst, &v19);
}

uint64_t static LayoutOptions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  v7 = *(a1 + 120);
  v6 = *(a1 + 128);
  v8 = *(a1 + 136);
  v34 = *(a1 + 152);
  v35 = *(a1 + 160);
  v36 = *(a1 + 168);
  v37 = *(a1 + 176);
  v29 = *(a1 + 184);
  memcpy(__dst, (a1 + 192), 0x49uLL);
  v10 = *(a2 + 64);
  v9 = *(a2 + 72);
  v40 = *(a1 + 88);
  v41 = *(a1 + 104);
  v38 = *(a2 + 88);
  v39 = *(a2 + 104);
  v12 = *(a2 + 120);
  v11 = *(a2 + 128);
  v13 = *(a2 + 136);
  v30 = *(a2 + 152);
  v31 = *(a2 + 160);
  v32 = *(a2 + 168);
  v33 = *(a2 + 176);
  v14 = *(a2 + 184);
  memcpy(v47, (a2 + 192), 0x49uLL);
  v15 = 0;
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48)))))) & 1) == 0)
  {
    return v15 & 1;
  }

  if (v5 != v10)
  {
    return v15 & 1;
  }

  if (v4 != v9)
  {
    return v15 & 1;
  }

  sub_1D793C9A0();
  v15 = 0;
  if ((sub_1D796C670() & 1) == 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v40, v38), vceqq_f64(v41, v39)), xmmword_1D796D960)) & 0xF) != 0 || v7 != v12 || v6 != v11 || v8 != v13)
  {
    return v15 & 1;
  }

  v16 = sub_1D796C310();
  v18 = v17;
  if (v16 == sub_1D796C310() && v18 == v19)
  {

    if (v34 != v30 || v35 != v31 || v36 != v32 || v37 != v33)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v21 = sub_1D796C990();

  v15 = 0;
  if (v21)
  {
    v22 = v34 == v30 && v35 == v31;
    v23 = v22 && v36 == v32;
    if (v23 && v37 == v33)
    {
LABEL_36:
      if (sub_1D791FF3C(v29, v14))
      {
        memcpy(v43, (a1 + 192), 0x49uLL);
        memcpy(__src, (a2 + 192), 0x49uLL);
        sub_1D793BC64(__dst, v45);
        sub_1D793BC64(v47, v45);
        v15 = static LayoutGuideAdjuster.== infix(_:_:)(v43, __src);
        memcpy(v44, __src, 0x49uLL);
        sub_1D793C9E4(v44);
        memcpy(v45, v43, 0x49uLL);
        sub_1D793C9E4(v45);
        return v15 & 1;
      }

LABEL_38:
      v15 = 0;
    }
  }

  return v15 & 1;
}

uint64_t sub_1D793C23C()
{
  v0 = NodeKind.rawValue.getter();
  v2 = v1;
  if (v0 == NodeKind.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_5_0();
  }

  return v5 & 1;
}

uint64_t sub_1D793C2CC()
{
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = 0xE900000000000074;
  switch(v5)
  {
    case 1:
      v3 = OUTLINED_FUNCTION_2();
      break;
    case 2:
      v3 = OUTLINED_FUNCTION_6();
      break;
    case 3:
      v7 = OUTLINED_FUNCTION_8();
      v3 = OUTLINED_FUNCTION_13(v7);
      break;
    case 4:
      v6 = OUTLINED_FUNCTION_8();
      v3 = OUTLINED_FUNCTION_19(v6);
      goto LABEL_7;
    case 5:
      v8 = OUTLINED_FUNCTION_8();
      v3 = OUTLINED_FUNCTION_17(v8);
LABEL_7:
      v4 = 0xEB00000000000074;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_3();
      break;
    case 2:
      OUTLINED_FUNCTION_7_0();
      break;
    case 3:
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_14();
      break;
    case 4:
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_20();
      goto LABEL_14;
    case 5:
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_18();
LABEL_14:
      v0 = v0 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    default:
      break;
  }

  if (v3 == v2 && v4 == v0)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_16();
  }

  return v10 & 1;
}

uint64_t sub_1D793C3DC()
{
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = 0xE900000000000074;
  switch(v5)
  {
    case 1:
      v3 = OUTLINED_FUNCTION_2();
      break;
    case 2:
      v3 = OUTLINED_FUNCTION_6();
      break;
    case 3:
      v3 = OUTLINED_FUNCTION_11();
      break;
    case 4:
      v6 = OUTLINED_FUNCTION_8();
      v3 = OUTLINED_FUNCTION_13(v6);
      break;
    case 5:
      v7 = OUTLINED_FUNCTION_8();
      v3 = OUTLINED_FUNCTION_19(v7);
      goto LABEL_8;
    case 6:
      v8 = OUTLINED_FUNCTION_8();
      v3 = OUTLINED_FUNCTION_17(v8);
LABEL_8:
      v4 = 0xEB00000000000074;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_3();
      break;
    case 2:
      OUTLINED_FUNCTION_7_0();
      break;
    case 3:
      OUTLINED_FUNCTION_12();
      break;
    case 4:
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_14();
      break;
    case 5:
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_20();
      goto LABEL_16;
    case 6:
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_18();
LABEL_16:
      v0 = v0 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    default:
      break;
  }

  if (v3 == v2 && v4 == v0)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_16();
  }

  return v10 & 1;
}

uint64_t sub_1D793C4FC()
{
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  switch(v4)
  {
    case 1:
      v3 = OUTLINED_FUNCTION_2();
      break;
    case 2:
      v3 = OUTLINED_FUNCTION_11();
      break;
    case 3:
      v3 = OUTLINED_FUNCTION_6();
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_3();
      break;
    case 2:
      OUTLINED_FUNCTION_12();
      break;
    case 3:
      OUTLINED_FUNCTION_7_0();
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == 0xE900000000000074)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_16();
  }

  return v6 & 1;
}

uint64_t sub_1D793C5CC(unsigned __int8 a1, char a2)
{
  v2 = 7827314;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7827314;
  switch(v4)
  {
    case 1:
      v5 = 0x7265766552776F72;
      v3 = 0xEA00000000006573;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x6E6D756C6F63;
      break;
    case 3:
      v5 = 0x65526E6D756C6F63;
      v3 = 0xED00006573726576;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x7265766552776F72;
      v6 = 0xEA00000000006573;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x6E6D756C6F63;
      break;
    case 3:
      v2 = 0x65526E6D756C6F63;
      v6 = 0xED00006573726576;
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
    v8 = OUTLINED_FUNCTION_5_0();
  }

  return v8 & 1;
}

uint64_t sub_1D793C720(unsigned __int8 a1, char a2)
{
  v2 = 0x656D617266;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x656D617266;
  switch(v4)
  {
    case 1:
      v5 = OUTLINED_FUNCTION_8() & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 2:
      v3 = 0xE300000000000000;
      v5 = 7892834;
      break;
    case 3:
      v5 = 0x6465626D65;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_9_0();
      v2 = v7 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 2:
      v6 = 0xE300000000000000;
      v2 = 7892834;
      break;
    case 3:
      v2 = 0x6465626D65;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_5_0();
  }

  return v9 & 1;
}

uint64_t sub_1D793C824(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x656E696C6E69;
  }

  else
  {
    v3 = 0x6B636F6C62;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x656E696C6E69;
  }

  else
  {
    v5 = 0x6B636F6C62;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_0();
  }

  return v8 & 1;
}

uint64_t sub_1D793C8B0(unsigned __int8 a1, char a2)
{
  v2 = 0x706172576F6ELL;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1885434487;
    }

    else
    {
      v4 = 0x6576655270617277;
    }

    if (v3 == 1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xEB00000000657372;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x706172576F6ELL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 1885434487;
    }

    else
    {
      v2 = 0x6576655270617277;
    }

    if (a2 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xEB00000000657372;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_0();
  }

  return v8 & 1;
}

unint64_t sub_1D793C9A0()
{
  result = qword_1EC9D9F00;
  if (!qword_1EC9D9F00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC9D9F00);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11TeaTemplate25LayoutEdgeInsetAdjustmentO(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 5;
  }
}

uint64_t get_enum_tag_for_layout_string_11TeaTemplate25LayoutEdgeInsetAdjustmentOSg(void *a1)
{
  v1 = ((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7));
  v2 = v1 ^ 0x7E;
  v3 = 128 - v1;
  if (v2 >= 0x7A)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D793CA8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 264) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 265) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 265) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static DimensionSizerTrait.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t DimensionSizerTrait.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    return MEMORY[0x1DA704EF0](v2);
  }

  else
  {
    MEMORY[0x1DA704EF0](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    return MEMORY[0x1DA704F00](v3);
  }
}

uint64_t DimensionSizerTrait.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D796CAC0();
  if (v2 == 1)
  {
    if (v1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1DA704EF0](v3);
  }

  else
  {
    MEMORY[0x1DA704EF0](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1DA704F00](v4);
  }

  return sub_1D796CAF0();
}

uint64_t sub_1D793CC74()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D796CAC0();
  if (v2 == 1)
  {
    if (v1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1DA704EF0](v3);
  }

  else
  {
    MEMORY[0x1DA704EF0](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1DA704F00](v4);
  }

  return sub_1D796CAF0();
}

unint64_t sub_1D793CCF4()
{
  result = qword_1EC9D9F08;
  if (!qword_1EC9D9F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9D9F08);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DimensionSizerTrait(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D793CD80(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t Space.description.getter()
{
  MEMORY[0x1DA704750](0x286563617053, 0xE600000000000000);
  v2 = *(v0 + 80);
  sub_1D7922754(v2);
  type metadata accessor for Sizing();
  swift_getWitnessTable();
  sub_1D796C960();
  sub_1D7934DC0(v2);
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D793D0C8()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1D7938D28(*v0);
  sub_1D7922754(v1);
  sub_1D7922754(v3);
  sub_1D796C780();
  MEMORY[0x1DA704750](2647657, 0xE300000000000000);
  type metadata accessor for Conditional();
  swift_getWitnessTable();
  sub_1D796C960();
  sub_1D793D248(v2);
  MEMORY[0x1DA704750](0x203A6E656874202CLL, 0xE800000000000000);
  type metadata accessor for Sizing();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_6();
  sub_1D7934DC0(v1);
  MEMORY[0x1DA704750](0x203A65736C65202CLL, 0xE800000000000000);
  OUTLINED_FUNCTION_0_6();
  sub_1D7934DC0(v3);
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_1D793D248(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

uint64_t sub_1D793D264()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D793D2B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 24))
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

uint64_t sub_1D793D308(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D793D36C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 49))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 6)
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

uint64_t sub_1D793D3AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D793D400(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1D793D438(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D793D478(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D793D4C4(void *a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  switch(a7)
  {
    case 0:
    case 1:

      break;
    case 2:
    case 3:
    case 5:

      goto LABEL_4;
    case 4:

LABEL_4:

      break;
    default:
      return;
  }
}

uint64_t sub_1D793D554()
{
  v0 = sub_1D796C1E0();
  __swift_allocate_value_buffer(v0, qword_1EC9D9F10);
  v1 = __swift_project_value_buffer(v0, qword_1EC9D9F10);
  return sub_1D793D5A0(v1);
}

uint64_t sub_1D793D5A0@<X0>(uint64_t *a1@<X8>)
{
  sub_1D794A5B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v3 = v2;
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = v4 >> 1;
  v7 = v5 + 1;
  if (v4 >> 1 <= v5)
  {
    sub_1D794A5B0(v4 > 1, v5 + 1, 1, v2);
    v3 = v14;
    v4 = *(v14 + 24);
    v6 = v4 >> 1;
  }

  *(v3 + 16) = v7;
  *(v3 + 8 * v5 + 32) = 0x4080F00000000000;
  v8 = v5 + 2;
  if (v6 < (v5 + 2))
  {
    sub_1D794A5B0(v4 > 1, v5 + 2, 1, v3);
    v3 = v15;
  }

  *(v3 + 16) = v8;
  *(v3 + 8 * v7 + 32) = 0x4085400000000000;
  v9 = *(v3 + 24);
  if ((v5 + 3) > (v9 >> 1))
  {
    sub_1D794A5B0(v9 > 1, v5 + 3, 1, v3);
    v3 = v16;
  }

  *(v3 + 16) = v5 + 3;
  *(v3 + 8 * v8 + 32) = 0x4090E00000000000;
  *a1 = v3;
  v10 = *MEMORY[0x1E69D8798];
  v11 = sub_1D796C1E0();
  v12 = *(*(v11 - 8) + 104);

  return v12(a1, v10, v11);
}

uint64_t static Gutters.columnSystem.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC9D9E40 != -1)
  {
    swift_once();
  }

  v2 = sub_1D796C1E0();
  v3 = __swift_project_value_buffer(v2, qword_1EC9D9F10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1D793D918(uint64_t *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v11 = *(a5 + 32);
  type metadata accessor for Node();
  v14 = *(a5 + 16);
  v15 = *a5;
  *(v5 + 88) = sub_1D796C480();
  *(v5 + 80) = v10;
  *(v5 + 112) = *a2;
  *(v5 + 121) = *(a2 + 9);
  v12 = sub_1D796C480();
  swift_beginAccess();
  *(v5 + 88) = v12;

  *(v5 + 96) = a3;
  *(v5 + 104) = a4;
  v18 = 13;
  v16[0] = v15;
  v16[1] = v14;
  v17 = v11;

  return sub_1D79202C0(&v18, a3, a4, v16);
}

uint64_t sub_1D793DA38()
{
  swift_beginAccess();
  type metadata accessor for Node();
  sub_1D796C4F0();
  sub_1D796C460();
  return swift_endAccess();
}

uint64_t sub_1D793DAD8()
{
  swift_beginAccess();
  type metadata accessor for Node();
  sub_1D796C4F0();

  OUTLINED_FUNCTION_0_7();
  swift_getWitnessTable();
  sub_1D796C4B0();
  swift_endAccess();
}

uint64_t sub_1D793DBA0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 88);
  type metadata accessor for Node();

  v6 = sub_1D796C430();
  for (i = v6; i != sub_1D796C4A0(); v6 = i)
  {
    v8 = sub_1D796C490();
    sub_1D796C450();
    if (v8)
    {
      v9 = *(v5 + 32 + 8 * v6);
    }

    else
    {
      v9 = sub_1D796C790();
    }

    sub_1D796C4E0();
    (*(*v9 + 144))(a1, a2);
  }
}

uint64_t sub_1D793DD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = v3[10];
  v8 = v3[12];
  v9 = v3[13];
  v47 = a3;
  v10 = sub_1D7929258(v8, v9);
  v53 = v7;
  v11 = *(v6 + 168);
  v12 = *(v6 + 176);
  v13 = type metadata accessor for Sizing();
  sub_1D79228AC(v13, v50);
  v14 = v51;
  v15 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  v16 = *(v15 + 8);
  v48 = a1;
  v17 = v16(a1, a2, v10, v11, v12, v14, v15);
  if (!v49)
  {
    v49 = v17;
    v18 = v51;
    v19 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    (*(v19 + 16))(&v53, v48, a2, v10, v11, v12, v18, v19);
    v14 = v53;
    if ((SizerResult.isAmbiguous.getter() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1(v50);
      v50[0] = v14;
      v53 = v14;
      v22 = SizerResult.nonIntegral.getter();
      sub_1D79276B0(v22 & 1);
      OUTLINED_FUNCTION_1();
      v23 = swift_beginAccess();
      v45 = &v45;
      v53 = v3[11];
      MEMORY[0x1EEE9AC00](v23, v24);
      v46 = v14;
      type metadata accessor for Node();
      sub_1D796C4F0();

      OUTLINED_FUNCTION_0_7();
      swift_getWitnessTable();
      v25 = v46;
      v26 = sub_1D796C390();

      v53 = v25;
      v27 = v49;
      v28 = OUTLINED_FUNCTION_2_0();
      sub_1D793E16C(v29, v30, v31, v32, v33, v34, v28, v35, v36, v37);
      OUTLINED_FUNCTION_1();
      v38 = v25;
      v14 = swift_allocObject();
      type metadata accessor for NodeRepositioning();
      v39 = swift_allocObject();
      v40 = v26;
      v41 = v39;
      v39[2] = v3;
      v39[3] = v40;
      v39[4] = v38;
      v39[5] = v27;
      sub_1D792EC4C();
      OUTLINED_FUNCTION_2_0();
      *(v14 + 16) = sub_1D7928004(v42, v43, v44, v41);
      swift_retain_n();
      return v14;
    }

    sub_1D7930964();
    swift_allocError();
    *v21 = 0u;
    *(v21 + 16) = 0u;
    *(v21 + 32) = 0u;
    *(v21 + 48) = 6;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(v50);
  return v14;
}

CGFloat sub_1D793E16C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, double a7, double a8, double a9, CGFloat a10)
{
  v12 = v11;
  v76 = a6;
  v98 = a3;
  v85 = a1;
  v86 = a2;
  v19 = *v10;
  v20 = sub_1D796C180();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v83 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a5;
  LODWORD(v84) = *(v10 + 113) > 1u;
  v24 = *(v19 + 168);
  v82 = v10;
  v25 = *(v19 + 176);
  v26 = type metadata accessor for Cursor();
  v81 = sub_1D796C1C0();
  v27 = swift_allocObject();
  *(v27 + 16) = a7;
  *(v27 + 24) = a8;
  *(v27 + 32) = a9;
  *(v27 + 40) = a10;
  *(v27 + 48) = v85;
  *(v27 + 56) = v84;
  *(v27 + 64) = v23;
  v84 = v23;

  v77 = v26;
  sub_1D793ED20();
  v83 = sub_1D796C1B0();
  v81 = type metadata accessor for LayoutResult();
  v97 = sub_1D796C1F0();
  v79 = v24;
  v80 = v25;
  type metadata accessor for Node();
  v28 = sub_1D796C430();
  *&v93[0] = v28;
  if (v28 != sub_1D796C4A0())
  {
    v30 = 0;
    while (1)
    {
      v31 = sub_1D796C490();
      sub_1D796C450();
      if (v31)
      {
        v32 = *(a4 + 32 + 8 * v28);
      }

      else
      {
        v32 = sub_1D796C790();
      }

      sub_1D796C4E0();
      sub_1D793EDFC(v82, v83, v85, v84);
      v33 = (*(*v32 + 152))();
      if (v12)
      {

        swift_getErrorValue();
        if ((sub_1D79309B8(v96[2], v96[3]) & 1) == 0)
        {
          swift_willThrow();
LABEL_39:

LABEL_40:

          return a10;
        }

        v12 = 0;
        v30 = 1;
      }

      else
      {
        v34 = v32[2];
        v35 = v32[3];
        v88[0] = v33;
        v94[0] = v34;
        v94[1] = v35;
        sub_1D796C270();

        sub_1D796C290();
      }

      v36 = sub_1D796C4A0();
      v28 = *&v93[0];
      if (*&v93[0] == v36)
      {
        v29 = v84;
        if ((v30 & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_16;
      }
    }
  }

  v29 = v84;
LABEL_14:
  v94[0] = v29;
  if (SizerResult.shouldResize.getter() & 1) != 0 || (v94[0] = v29, (SizerResult.shouldPostProcess.getter()))
  {
LABEL_16:
    sub_1D7930964();
    swift_allocError();
    *v37 = 0u;
    *(v37 + 16) = 0u;
    *(v37 + 32) = 0u;
    *(v37 + 48) = 6;
    swift_willThrow();
    goto LABEL_40;
  }

  type metadata accessor for FlexBoxNode();
  v96[0] = sub_1D796C200();
  v38 = v82;
  swift_beginAccess();
  v39 = *(v38 + 88);

  v40 = sub_1D796C430();
  v95 = v40;
  if (v40 != sub_1D796C4A0())
  {
    v78 = v97;
    do
    {
      v56 = sub_1D796C490();
      sub_1D796C450();
      if (v56)
      {
        v57 = *(v39 + 32 + 8 * v40);
      }

      else
      {
        v57 = sub_1D796C790();
      }

      sub_1D796C4E0();
      v58 = *(v57 + 24);
      v94[0] = *(v57 + 16);
      v94[1] = v58;

      sub_1D796C280();

      v59 = *&v93[0];
      if ((~*&v93[0] & 0xF000000000000007) != 0)
      {
        sub_1D793EF74(*&v93[0], v96, v79, v80);
        if (v12)
        {

          sub_1D793F384(v59);

          goto LABEL_40;
        }

        sub_1D793F384(v59);
      }

      else
      {
      }

      v60 = sub_1D796C4A0();
      v40 = v95;
    }

    while (v95 != v60);
  }

  v81 = &v75;
  v42 = v96[0];
  *&v93[0] = v96[0];
  MEMORY[0x1EEE9AC00](v41, v43);
  v44 = v79;
  sub_1D796C4F0();

  swift_getWitnessTable();
  v45 = sub_1D796C7B0();
  v93[0] = *(v82 + 112);
  *(v93 + 9) = *(v82 + 121);
  sub_1D7965D80(v45, v44, v80, a7, a8, a9, a10);

  memcpy(v94, v85 + 128, 0x109uLL);
  memcpy(v93, v85 + 128, 0x109uLL);
  memcpy(v92, v85 + 400, sizeof(v92));
  v91 = v85[48];
  v90 = v84;
  sub_1D7923AE4(v94, v88);
  SizerResult.behavior.getter(v89);
  v87[0] = v89[0];
  v87[1] = v89[1];
  v88[0] = 0x8000000000000000;
  v46 = sub_1D7959AD8();
  v49 = sub_1D792B65C(v93, v92, &v91, v46, v47, v48, v87, v88, 0);

  v50 = sub_1D796C430();

  *&v93[0] = v50;
  while (1)
  {
    v51 = sub_1D796C4A0();
    v52 = *&v93[0];
    if (*&v93[0] == v51)
    {
      break;
    }

    v53 = sub_1D796C490();
    sub_1D796C450();
    if (v53)
    {
      v54 = *(v42 + 32 + 8 * v52);
    }

    else
    {
      v54 = sub_1D796C790();
    }

    sub_1D796C4E0();
    a10 = *(v54 + 16);

    v55 = sub_1D794BD90();
    if (v12)
    {

      goto LABEL_39;
    }

    a10 = v55;

    sub_1D7927B8C(MEMORY[0x1E69E7CD0]);
  }

  v61 = v84;
  *&v93[0] = v84;
  v99.origin.x = Cursor.absoluteFrame.getter();
  SizerResult.postProcess(frame:nonIntegral:)(v99, 0);
  if (v62)
  {
    goto LABEL_39;
  }

  sub_1D792C9F8();
  a10 = v64;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  LOBYTE(v88[0]) = *(v49 + 48);
  *&v93[0] = v61;
  v71 = SizerResult.metadata.getter();
  v72 = *(v82 + 96);
  v73.value._countAndFlagsBits = *(v82 + 104);
  v100.origin.x = a10;
  v100.origin.y = v66;
  v100.size.width = v68;
  v74 = v71;
  v100.size.height = v70;
  LayoutContext.set(frame:direction:metadata:for:)(v100, v88, *(&v72 - 1), v73);

  sub_1D7927B8C(v76);

  return a10;
}

uint64_t sub_1D793EBB0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = (a1 + 128);
  type metadata accessor for Cursor();
  memcpy(__dst, v8, 0x109uLL);
  memcpy(v19, v8, 0x109uLL);
  memcpy(v18, (a1 + 400), sizeof(v18));
  v17 = a2 & 1;
  v16 = a3;
  sub_1D7923AE4(__dst, v14);
  SizerResult.behavior.getter(&v15);
  v14[0] = 0x8000000000000000;
  v9 = sub_1D7959AD8();
  result = sub_1D792B65C(v19, v18, &v17, v9, v10, v11, &v13, v14, 0);
  *a4 = result;
  return result;
}

uint64_t sub_1D793ED20()
{
  sub_1D796C180();
  sub_1D793F3F4(&qword_1EE09C578, MEMORY[0x1E69D6420]);
  sub_1D793F39C();
  sub_1D793F3F4(&qword_1EE09C550, sub_1D793F39C);
  return sub_1D796C720();
}

uint64_t sub_1D793EDFC(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  if (*(a1 + 112) == 1)
  {
    sub_1D796C1A0();
    return __dst[0];
  }

  else
  {
    type metadata accessor for Cursor();
    memcpy(__dst, a3 + 128, 0x109uLL);
    memcpy(v16, a3 + 128, 0x109uLL);
    memcpy(v15, a3 + 400, sizeof(v15));
    v14 = a3[48];
    v13 = a4;
    sub_1D7923AE4(__dst, v11);
    SizerResult.behavior.getter(&v12);
    v11[0] = 0x8000000000000000;
    v7 = sub_1D7959AD8();
    return sub_1D792B65C(v16, v15, &v14, v7, v8, v9, &v10, v11, 0);
  }
}

unint64_t sub_1D793EF74(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    v8 = *((result & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    type metadata accessor for LayoutResult();

    v9 = sub_1D796C430();
    for (i = v9; ; v9 = i)
    {
      if (v9 == sub_1D796C4A0())
      {
      }

      v10 = sub_1D796C490();
      sub_1D796C450();
      if (v10)
      {
        v11 = *(v8 + 32 + 8 * v9);
      }

      else
      {
        v11 = sub_1D796C790();

        swift_unknownObjectRelease();
      }

      sub_1D796C4E0();
      sub_1D793EF74(v11, a2, a3, a4);
      if (v4)
      {
        break;
      }
    }
  }

  else
  {
    v12 = *(result + 16);
    v13 = v12[3];
    v14 = v12[4];
    v15 = v12[5];
    v16 = v12[6];

    v20.origin.x = v13;
    v20.origin.y = v14;
    v20.size.width = v15;
    v20.size.height = v16;
    if (CGRectGetMaxY(v20) == 1.79769313e308)
    {
      sub_1D7930964();
      swift_allocError();
      *v17 = 0u;
      *(v17 + 16) = 0u;
      *(v17 + 32) = 0u;
      *(v17 + 48) = 6;
      swift_willThrow();
    }

    else
    {
      type metadata accessor for FlexBoxNode();

      sub_1D796A730(v18);
      sub_1D796C4F0();
      sub_1D796C4C0();
    }
  }
}

uint64_t sub_1D793F234()
{
  sub_1D7934DC0(*(v0 + 80));
}

uint64_t sub_1D793F26C()
{
  v0 = Node.deinit();
  sub_1D7934DC0(*(v0 + 80));

  return v0;
}

uint64_t sub_1D793F2AC()
{
  v0 = sub_1D793F26C();

  return MEMORY[0x1EEE6BDC0](v0, 137, 7);
}

uint64_t sub_1D793F384(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

void sub_1D793F39C()
{
  if (!qword_1EE09C558)
  {
    sub_1D796C180();
    v0 = sub_1D796C4F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE09C558);
    }
  }
}

uint64_t sub_1D793F3F4(unint64_t *a1, void (*a2)(uint64_t))
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

__C::UIRectCorner __swiftcall UIRectCorner.flipRightToLeft(bounds:)(__C::CGRect bounds)
{
  if ((v1 & 1) == 0)
  {
    if ((v1 & 2) != 0)
    {
      v2.rawValue = 1;
      if ((v1 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v2.rawValue = 0;
    if ((v1 & 4) != 0)
    {
LABEL_12:
      v2.rawValue |= 8;
      goto LABEL_13;
    }

LABEL_7:
    if ((v1 & 8) == 0)
    {
      return v2;
    }

    return (v2.rawValue | 4);
  }

  if ((v1 & 2) == 0)
  {
    v2.rawValue = 2;
    if ((v1 & 4) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2.rawValue = 3;
  if ((v1 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if ((v1 & 8) != 0 && (v2.rawValue & 4) == 0)
  {
    return (v2.rawValue | 4);
  }

  return v2;
}

__C::UIRectCorner sub_1D793F578@<X0>(__C::UIRectCorner *a1@<X8>, double a2@<D0>)
{
  result.rawValue = UIRectCorner.flipRightToLeft(bounds:)(*&a2).rawValue;
  a1->rawValue = result.rawValue;
  return result;
}

TeaTemplate::Column_optional __swiftcall Column.init(_:)(Swift::Int a1)
{
  if (a1 == 18)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (a1 == 12)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 6)
  {
    v3 = 0;
  }

  *v1 = v3;
  return a1;
}

double Column.hSpacing(for:columnSystem:)(uint64_t a1, uint64_t a2)
{
  result = 28.0;
  if (*(a2 + 32) == 1 && *(a2 + 16) | *(a2 + 24) | *a2 | *(a2 + 8))
  {
    result = 16.0;
    if (!*v2)
    {
      return 10.0;
    }
  }

  return result;
}

double Column.vSpacing(for:columnSystem:)(id a1, uint64_t a2)
{
  if (*(a2 + 32) == 1 && *(a2 + 16) | *(a2 + 24) | *a2 | *(a2 + 8))
  {
    result = 16.0;
    if (!*v2)
    {
      return 10.0;
    }
  }

  else if (*v2)
  {
    if (*v2 == 1)
    {
      v5 = [a1 horizontalSizeClass];
      v6 = [a1 verticalSizeClass] == 1 && v5 == 1;
      result = 18.0;
      if (!v6)
      {
        return 20.0;
      }
    }

    else
    {
      return 30.0;
    }
  }

  else
  {
    return 18.0;
  }

  return result;
}

id Column.traits(for:viewportWidth:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v7 = *v3;
  v8 = [a1 horizontalSizeClass];
  result = [a1 verticalSizeClass];
  if (v8 == 1 && result == 1)
  {
    v14 = 1;
  }

  else
  {
    if (v7)
    {
      v11 = 1;
    }

    else
    {
      v11 = a3 > 320.0;
    }

    if (v11)
    {
      if (v8 >= 3)
      {
        sub_1D793F858();
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1D796EBB0;
        v13 = [a1 horizontalSizeClass];
        v15 = [a1 verticalSizeClass];
        sub_1D793F90C();
        sub_1D796C860();
        *(v12 + 56) = MEMORY[0x1E69E6158];
        *(v12 + 64) = sub_1D793F970();
        *(v12 + 32) = 0;
        *(v12 + 40) = 0xE000000000000000;
        MEMORY[0x1DA7045B0]("Unknown size class in %{public}@", 32, 2, v12, v13, v15);
      }

      v14 = 0;
    }

    else
    {
      v14 = 2;
    }
  }

  *a2 = v14;
  return result;
}

void sub_1D793F858()
{
  if (!qword_1EC9D9F28)
  {
    sub_1D793F8B0();
    v0 = sub_1D796C940();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9D9F28);
    }
  }
}

unint64_t sub_1D793F8B0()
{
  result = qword_1EC9D9F30;
  if (!qword_1EC9D9F30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC9D9F30);
  }

  return result;
}

void sub_1D793F90C()
{
  if (!qword_1EC9D9F38)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9D9F38);
    }
  }
}

unint64_t sub_1D793F970()
{
  result = qword_1EC9D9F40;
  if (!qword_1EC9D9F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9D9F40);
  }

  return result;
}

uint64_t Column.maxWidth(for:)(void *a1)
{
  v2 = *v1;
  v3 = static ColumnSystem.specs(for:)(a1);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 24;
    v7 = *v4;
    v4 += 24;
    if (v7 == v2)
    {
      v8 = *(v6 - 1);

      *&result = v8 + -1.0;
      return result;
    }
  }

  *&result = 0.0;
  return result;
}

uint64_t Column.hashValue.getter()
{
  v1 = *v0;
  sub_1D796CAC0();
  MEMORY[0x1DA704EF0](v1);
  return sub_1D796CAF0();
}

uint64_t Column.description.getter()
{
  v1 = 12849;
  if (*v0 != 1)
  {
    v1 = 14385;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 54;
  }
}

uint64_t ColumnSpec.hashValue.getter()
{
  v1 = *v0;
  sub_1D796CAC0();
  MEMORY[0x1DA704EF0](v1);
  return sub_1D796CAF0();
}

uint64_t ColumnSpec.description.getter()
{
  if (*v0)
  {
    return 0x676E696361705376;
  }

  else
  {
    return 0x676E696361705368;
  }
}

unint64_t sub_1D793FC44()
{
  result = qword_1EE09CCC0;
  if (!qword_1EE09CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE09CCC0);
  }

  return result;
}

unint64_t sub_1D793FC9C()
{
  result = qword_1EC9D9F48;
  if (!qword_1EC9D9F48)
  {
    sub_1D793FCF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9D9F48);
  }

  return result;
}

void sub_1D793FCF4()
{
  if (!qword_1EC9D9F50)
  {
    v0 = sub_1D796C4F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9D9F50);
    }
  }
}

unint64_t sub_1D793FD48()
{
  result = qword_1EC9D9F58;
  if (!qword_1EC9D9F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9D9F58);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ColumnSpec(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t Frame.init(name:_:_:mapBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a4;
  v6[10] = a3;
  v6[11] = v9;
  v6[12] = a1;
  v6[13] = a2;
  v6[14] = a5;
  v6[15] = a6;
  v11 = 0;

  return Node.init(kind:identifier:)(&v11, a1, a2);
}

double sub_1D793FF5C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v19 = SizerResult.metadata.getter();
  v20 = sub_1D792CC7C(a1, a2, a8, a9, a10, a11, a3, v19, MEMORY[0x1E69E7CD0]);
  if (!v11)
  {
    a11 = v20;
  }

  return a11;
}

uint64_t sub_1D79400A4()
{

  sub_1D7935088(*(v0 + 88));

  v1 = *(v0 + 112);

  return sub_1D7935140(v1);
}

uint64_t Frame.description.getter()
{
  MEMORY[0x1DA704750](0x28656D617246, 0xE600000000000000);
  v2 = *(v0 + 88);
  sub_1D7922754(v2);
  type metadata accessor for Sizing();
  swift_getWitnessTable();
  sub_1D796C960();
  sub_1D7935088(v2);
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

BOOL static SizerTrait.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  if (*(a1 + 16) == 1)
  {
    if (!(*&v2 | *&v3))
    {
      if (*(a2 + 16))
      {
LABEL_12:
        if (!(*&v4 | *(a2 + 8)))
        {
          return 1;
        }
      }

      return 0;
    }

    if (!(*&v2 ^ 1 | *&v3))
    {
      if (*(a2 + 16))
      {
        *&v4 ^= 1uLL;
        goto LABEL_12;
      }

      return 0;
    }

    if (!*(a2 + 16))
    {
      return 0;
    }

    result = 1;
    if (*&v4 <= 1uLL)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    return v3 == *(a2 + 8) && v2 == v4;
  }

  return result;
}

uint64_t SizerTrait.hashValue.getter()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = *(v0 + 16);
  sub_1D796CAC0();
  if (v5 == 1)
  {
    if (v3 | v4)
    {
      if (v3 ^ 1 | v4)
      {
        v6 = 3;
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x1DA704EF0](v6);
  }

  else
  {
    OUTLINED_FUNCTION_0_8();
    sub_1D7940410(v1, v2);
  }

  return sub_1D796CAF0();
}

uint64_t sub_1D794036C()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = *(v0 + 16);
  sub_1D796CAC0();
  if (v5 == 1)
  {
    if (v3 | v4)
    {
      if (v3 ^ 1 | v4)
      {
        v6 = 3;
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x1DA704EF0](v6);
  }

  else
  {
    OUTLINED_FUNCTION_0_8();
    sub_1D7940410(v1, v2);
  }

  return sub_1D796CAF0();
}

uint64_t sub_1D7940410(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1DA704F00](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1DA704F00](*&v3);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SizerTrait(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SizerTrait(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1D79404C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D79404E0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 16) = v2;
  return result;
}

void sub_1D7940560(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = Cursor.remainingBounds.getter();
  *(v2 + 24) = v3;
  *(v2 + 32) = v4;
  *(v2 + 40) = v5;
  if (qword_1EE09D488 != -1)
  {
    swift_once();
  }

  v6 = HIBYTE(word_1EE09D492);
  *(v2 + 48) = word_1EE09D492;
  *(v2 + 49) = v6;
  *a1 = v2;
}

uint64_t sub_1D7940648(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1D7940688(uint64_t result, int a2, int a3)
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
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D79406E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_5_1();
  return v7(a1, a2, a3);
}

void *sub_1D7940790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = v4;
  __swift_project_boxed_opaque_existential_1(v8, *(v8 + 24));
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_5_1();
  result = v13(v60, a1, a2, a3);
  if (v5)
  {
    return result;
  }

  v15 = v60[0];
  v16 = *(v8 + 40);
  v17 = *(v8 + 48);
  if (!(v17 >> 6))
  {
    v25 = OUTLINED_FUNCTION_2_1();
    v26 = OUTLINED_FUNCTION_3_0(v25);
    sub_1D79276B0(v26);
    Height = CGRectGetHeight(v62);
    v28 = sub_1D7940B04(Height * v16, v15, MEMORY[0x1E695F038]);
    OUTLINED_FUNCTION_1_2();
    v29 = OUTLINED_FUNCTION_0_9();
    OUTLINED_FUNCTION_6_0(v29);
    v31 = v30;
    goto LABEL_6;
  }

  if (v17 >> 6 == 1)
  {
    v18 = OUTLINED_FUNCTION_2_1();
    v19 = OUTLINED_FUNCTION_3_0(v18);
    sub_1D79276B0(v19);
    Width = CGRectGetWidth(v61);
    v21 = sub_1D7940B04(Width * v16, v15, MEMORY[0x1E695F000]);
    OUTLINED_FUNCTION_1_2();
    v22 = OUTLINED_FUNCTION_0_9();
    OUTLINED_FUNCTION_6_0(v22);
    v24 = v23;
LABEL_26:
    v32 = swift_allocObject();
    *(v32 + 16) = v6;
    *(v32 + 24) = v7;
    *(v32 + 32) = v24;
    *(v32 + 40) = v21;
    goto LABEL_27;
  }

  v33 = OUTLINED_FUNCTION_2_1();
  v34 = OUTLINED_FUNCTION_3_0(v33);
  sub_1D79276B0(v34);
  CGRectGetWidth(v63);
  v35 = 0.0;
  OUTLINED_FUNCTION_4_0();
  v36 = 0.0;
  if (!v37)
  {
    v38 = OUTLINED_FUNCTION_2_1();
    v39 = OUTLINED_FUNCTION_3_0(v38);
    sub_1D79276B0(v39);
    v36 = CGRectGetWidth(v64);
  }

  v40 = OUTLINED_FUNCTION_2_1();
  v41 = OUTLINED_FUNCTION_3_0(v40);
  sub_1D79276B0(v41);
  CGRectGetHeight(v65);
  OUTLINED_FUNCTION_4_0();
  if (v37)
  {
    if ((v17 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_12:
    switch(*&v16)
    {
      case 1:
        v50 = 1.33333333;
        goto LABEL_17;
      case 2:
        v50 = 0.75;
        goto LABEL_17;
      case 3:
        v50 = 1.77777778;
        goto LABEL_17;
      case 4:
        v50 = 1.6;
        goto LABEL_17;
      default:
        v42 = v36;
        v43 = v35;
        if (v35 <= v36)
        {
          goto LABEL_19;
        }

        v43 = v35;
        break;
    }

    goto LABEL_20;
  }

  v44 = OUTLINED_FUNCTION_2_1();
  v45 = OUTLINED_FUNCTION_3_0(v44);
  sub_1D79276B0(v45);
  v35 = CGRectGetHeight(*&v46);
  if (v17)
  {
    goto LABEL_12;
  }

LABEL_16:
  v50 = v16;
LABEL_17:
  v43 = v35 * v50;
  if (v35 > v36)
  {
    goto LABEL_20;
  }

  v42 = v36 / v50;
LABEL_19:
  if (v43 > v36)
  {
LABEL_20:
    if (v36 <= v43)
    {
      v36 = v43;
    }

    v66.origin.x = Cursor.remainingBounds.getter();
    v51 = CGRectGetWidth(v66);
    if (v36 >= v51)
    {
      v24 = v51;
    }

    else
    {
      v24 = v36;
    }

    OUTLINED_FUNCTION_1_2();
    v52 = OUTLINED_FUNCTION_0_9();
    OUTLINED_FUNCTION_6_0(v52);
    v21 = v53;
    goto LABEL_26;
  }

  if (v35 > v42)
  {
    v56 = v35;
  }

  else
  {
    v56 = v42;
  }

  v67.origin.x = Cursor.remainingBounds.getter();
  v57 = CGRectGetHeight(v67);
  if (v56 >= v57)
  {
    v31 = v57;
  }

  else
  {
    v31 = v56;
  }

  OUTLINED_FUNCTION_1_2();
  v58 = OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_6_0(v58);
  v28 = v59;
LABEL_6:
  v32 = swift_allocObject();
  *(v32 + 16) = v6;
  *(v32 + 24) = v7;
  *(v32 + 32) = v28;
  *(v32 + 40) = v31;
LABEL_27:
  if (qword_1EE09D478 != -1)
  {
    swift_once();
  }

  v54 = word_1EE09D480;
  v55 = HIBYTE(word_1EE09D480);

  *(v32 + 48) = v54;
  *(v32 + 49) = v55;
  *a4 = v32;
  return result;
}

double sub_1D7940B04(double a1, uint64_t a2, double (*a3)(uint64_t, uint64_t))
{
  v5 = SizerResult.nonIntegral.getter();
  v6 = OUTLINED_FUNCTION_3_0(v5);
  sub_1D79276B0(v6);
  a3(v7, v8);
  OUTLINED_FUNCTION_4_0();
  if (v9 != v10)
  {
    v11 = SizerResult.nonIntegral.getter();
    v12 = OUTLINED_FUNCTION_3_0(v11);
    sub_1D79276B0(v12);
    v15 = a3(v13, v14);
    if (v15 > a1)
    {
      return v15;
    }
  }

  return a1;
}

uint64_t sub_1D7940BC0()
{
  MEMORY[0x1DA704750](0x69746172206E696DLL, 0xEA0000000000286FLL);
  sub_1D796C860();
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

uint64_t DimensionSizing.description.getter()
{
  v1 = *v0;
  switch(*v0 >> 61)
  {
    case 1uLL:
      v2 = 0x694664656C616373;
      v3 = 0xEC00000028646578;
      goto LABEL_15;
    case 2uLL:
      v16 = 0;
      v17 = 0xE000000000000000;
      MEMORY[0x1DA704750](0x28736E6D756C6F63, 0xE800000000000000);
      sub_1D796C860();
      goto LABEL_17;
    case 3uLL:
      v5 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v16 = 0x28747265766E69;
      v17 = 0xE700000000000000;
      v6 = sub_1D7941004(v5);
      v7 = DimensionSizing.description.getter(v6);
      MEMORY[0x1DA704750](v7);

      MEMORY[0x1DA704750](41, 0xE100000000000000);
      sub_1D7941034(v5);
      return v16;
    case 4uLL:
      sub_1D7924F60((v1 & 0x1FFFFFFFFFFFFFFFLL) + 16, &v16);
      MEMORY[0x1DA704750](0x2872657A6973, 0xE600000000000000);
      sub_1D7940FA4();
      sub_1D796C860();
      MEMORY[0x1DA704750](41, 0xE100000000000000);
      v4 = 0;
      __swift_destroy_boxed_opaque_existential_1(&v16);
      return v4;
    case 5uLL:
      v9 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D796C780();

      v16 = 0x7274654D746E6F66;
      v17 = 0xEB00000000286369;
      v10 = [v9 description];
      v11 = sub_1D796C310();
      v13 = v12;

      MEMORY[0x1DA704750](v11, v13);

      MEMORY[0x1DA704750](8236, 0xE200000000000000);
      goto LABEL_16;
    case 6uLL:
      v2 = 0x61746E6563726570;
      v3 = 0xEB00000000286567;
      goto LABEL_15;
    case 7uLL:
      if (v1 == 0xE000000000000008)
      {
        v8 = 0xD000000000000011;
      }

      else
      {
        v8 = 1819044198;
      }

      if (v1 == 0xE000000000000000)
      {
        return 0x69466F54657A6973;
      }

      else
      {
        return v8;
      }

    default:
      v2 = 0x286465786966;
      v3 = 0xE600000000000000;
LABEL_15:
      v16 = v2;
      v17 = v3;
LABEL_16:
      v14 = sub_1D796C510();
      MEMORY[0x1DA704750](v14);

LABEL_17:
      MEMORY[0x1DA704750](41, 0xE100000000000000);
      return v16;
  }
}

unint64_t sub_1D7940FA4()
{
  result = qword_1EE09D1F8[0];
  if (!qword_1EE09D1F8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EE09D1F8);
  }

  return result;
}

unint64_t sub_1D7941004(unint64_t result)
{
  switch(result >> 61)
  {
    case 7uLL:
      return result;
    default:

      break;
  }

  return result;
}

unint64_t sub_1D7941034(unint64_t result)
{
  switch(result >> 61)
  {
    case 7uLL:
      return result;
    default:

      break;
  }

  return result;
}

double DimensionSizing.init(floatLiteral:)@<D0>(uint64_t *a1@<X8>, float a2@<S0>)
{
  v4 = swift_allocObject();
  result = a2;
  *(v4 + 16) = a2;
  *a1 = v4;
  return result;
}

double DimensionSizing.init(integerLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = swift_allocObject();
  result = a1;
  *(v4 + 16) = a1;
  *a2 = v4;
  return result;
}

uint64_t get_enum_tag_for_layout_string_11TeaTemplate15DimensionSizingO(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 == 7)
  {
    return (*a1 >> 3) + 7;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D7941138(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x79 && *(a1 + 8))
    {
      v2 = *a1 + 120;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x78)
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

uint64_t sub_1D794118C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
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

unint64_t *sub_1D79411EC(unint64_t *result, uint64_t a2)
{
  if (a2 < 7)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    v2 = (8 * (a2 - 7)) | 0xE000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ColumnSize(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ColumnSize(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1D794127C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 16);
  memcpy(__dst, a1 + 50, sizeof(__dst));
  if (sub_1D792C4B8(__dst) == 1)
  {
    sub_1D7930964();
    swift_allocError();
    *v8 = 1;
    *(v8 + 8) = 0u;
    *(v8 + 24) = 0u;
    *(v8 + 40) = 0;
    *(v8 + 48) = 6;
    return swift_willThrow();
  }

  swift_beginAccess();
  v10 = a1[83];
  v11 = a1[84];
  v12 = a1;
  Cursor.remainingBounds.getter();
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    v14 = v13;
    if (v7)
    {
      v15 = dbl_1D796F208[*&v5];
    }

    else
    {
      v15 = v5;
    }

    v16 = (__dst[6] * v6 + __dst[10] * (v6 - 1)) / v15;
    result = swift_allocObject();
    v12 = result;
    *(result + 16) = v10;
    *(result + 24) = v11;
    *(result + 32) = v14;
    *(result + 40) = v16;
    if (qword_1EE09D478 == -1)
    {
      goto LABEL_8;
    }
  }

  result = swift_once();
LABEL_8:
  v17 = HIBYTE(word_1EE09D480);
  *(v12 + 48) = word_1EE09D480;
  *(v12 + 49) = v17;
  *a2 = v12;
  return result;
}

uint64_t sub_1D794143C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1D796C780();

  strcpy(v8, "columnRowSpan(");
  HIBYTE(v8[1]) = -18;
  v3 = sub_1D796C930();
  MEMORY[0x1DA704750](v3);

  MEMORY[0x1DA704750](8236, 0xE200000000000000);
  if (v2 == 1)
  {
    v4 = 0xE300000000000000;
    v5 = 3226161;
    switch(v1)
    {
      case 1:
        v5 = 3357236;
        break;
      case 2:
        v5 = 3422771;
        break;
      case 3:
        v4 = 0xE400000000000000;
        v5 = 960116273;
        break;
      case 4:
        v4 = 0xE500000000000000;
        v5 = 0x30313A3631;
        break;
      default:
        break;
    }
  }

  else
  {
    v5 = sub_1D796C510();
    v4 = v6;
  }

  MEMORY[0x1DA704750](v5, v4);

  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return v8[0];
}

uint64_t storeEnumTagSinglePayload for ColumnRowSpanSizer(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t EmbedFactoryCursor.adjustFrameBlock.getter()
{
  v1 = *(v0 + 304);

  return v1;
}

double sub_1D7941618(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v32 = a3;
  v33 = a15;
  v30 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v25);
  v27 = &v30 - v26;
  sub_1D7941854(a1, a14, &v30 - v26, a6, a7, a8, a9, a10, a11);
  if (!v15)
  {
    v34 = a14;
    sub_1D7936940(a1, v30, v32, &v34, v33, v27);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    a11 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v31 + 8))(v27, AssociatedTypeWitness);
  }

  return a11;
}

uint64_t sub_1D7941854@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>)
{
  if (a4 == a8 && a5 == a9)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return sub_1D794C600(AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v13 = a2;
    return sub_1D793636C(a1, &v13, a3, a6, a7, a8, a9);
  }
}

uint64_t sub_1D79419D8()
{
  OUTLINED_FUNCTION_1_3();

  sub_1D7936E54(v0[11]);

  v1 = *(*v0 + 240);
  OUTLINED_FUNCTION_1_3();
  type metadata accessor for EmbedFactory.Context();
  OUTLINED_FUNCTION_0_0();
  (*(v2 + 8))(v0 + v1);
  return sub_1D7935140(*(v0 + *(*v0 + 248)));
}

uint64_t EmbedFactory.description.getter()
{
  sub_1D796C780();
  MEMORY[0x1DA704750](0x6361466465626D45, 0xED00003C79726F74);
  v1 = sub_1D796CB50();
  MEMORY[0x1DA704750](v1);

  MEMORY[0x1DA704750](10302, 0xE200000000000000);
  v3 = *(v0 + 88);
  sub_1D7922754(v3);
  type metadata accessor for Sizing();
  swift_getWitnessTable();
  sub_1D796C960();
  sub_1D7936E54(v3);
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D7941C5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 320))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 112);
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

uint64_t sub_1D7941C9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7941D80(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v28 = *(v7 + 84);
  v29 = v6;
  if (v28 > v6)
  {
    v6 = *(v7 + 84);
  }

  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v7 + 80);
  v13 = *(v7 + 64);
  v14 = *(v9 + 80);
  v15 = *(*(v8 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v16 = v8;
  v17 = *(v5 + 64) + v12;
  v18 = a1;
  if (a2 <= v11)
  {
LABEL_27:
    if (v29 == v11)
    {
      v10 = v29;
      v16 = v4;
    }

    else
    {
      v18 = (a1 + v17) & ~v12;
      if (v28 == v11)
      {
        v10 = v28;
        v16 = AssociatedTypeWitness;
      }

      else
      {
        v18 = (v18 + v13 + v14) & ~v14;
      }
    }

    return __swift_getEnumTagSinglePayload(v18, v10, v16);
  }

  v19 = ((v13 + v14 + (v17 & ~v12)) & ~v14) + v15;
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v22 = ((a2 - v11 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v22))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v22 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v22 < 2)
    {
LABEL_26:
      if (v11)
      {
        goto LABEL_27;
      }

      return 0;
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_26;
  }

LABEL_16:
  v23 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v23 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v24 = v19;
    }

    else
    {
      v24 = 4;
    }

    switch(v24)
    {
      case 2:
        v25 = *a1;
        break;
      case 3:
        v25 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v25 = *a1;
        break;
      default:
        v25 = *a1;
        break;
    }
  }

  else
  {
    v25 = 0;
  }

  return v11 + (v25 | v23) + 1;
}

void sub_1D7942094(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a4 + 40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v30 = v6;
  if (v8 > v6)
  {
    v6 = *(v7 + 84);
  }

  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v7 + 80);
  v14 = *(v5 + 64) + v13;
  v15 = *(v7 + 64);
  v16 = *(v10 + 80);
  v17 = ((v15 + v16 + (v14 & ~v13)) & ~v16) + *(*(v9 - 8) + 64);
  v18 = 8 * v17;
  if (a3 <= v12)
  {
    v21 = 0;
    v19 = a1;
    v20 = a2;
  }

  else
  {
    v19 = a1;
    v20 = a2;
    if (v17 <= 3)
    {
      v25 = ((a3 - v12 + ~(-1 << v18)) >> v18) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  if (v12 >= v20)
  {
    v24 = ~v13;
    switch(v21)
    {
      case 1:
        v19[v17] = 0;
        if (v20)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&v19[v17] = 0;
        if (v20)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_47:
        __break(1u);
        break;
      case 4:
        *&v19[v17] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (v20)
        {
LABEL_29:
          if (v30 == v12)
          {
            v28 = v19;
            v11 = v30;
            v9 = v4;
          }

          else
          {
            v28 = &v19[v14] & v24;
            if (v8 == v12)
            {
              v11 = v8;
              v9 = AssociatedTypeWitness;
            }

            else
            {
              v28 = (v28 + v15 + v16) & ~v16;
            }
          }

          __swift_storeEnumTagSinglePayload(v28, v20, v11, v9);
        }

        break;
    }
  }

  else
  {
    v22 = ~v12 + v20;
    if (v17 < 4)
    {
      v23 = (v22 >> v18) + 1;
      if (v17)
      {
        v27 = v22 & ~(-1 << v18);
        bzero(v19, v17);
        if (v17 == 3)
        {
          *v19 = v27;
          v19[2] = BYTE2(v27);
        }

        else if (v17 == 2)
        {
          *v19 = v27;
        }

        else
        {
          *v19 = v22;
        }
      }
    }

    else
    {
      bzero(v19, v17);
      *v19 = v22;
      v23 = 1;
    }

    switch(v21)
    {
      case 1:
        v19[v17] = v23;
        break;
      case 2:
        *&v19[v17] = v23;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *&v19[v17] = v23;
        break;
      default:
        return;
    }
  }
}

void sub_1D7942428(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v23 = *(swift_getAssociatedTypeWitness() - 8);
  v24 = (*(v23 + 80) + 64) & ~*(v23 + 80);
  v25 = (*(v23 + 64) + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1D7941618(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, v11 + v24, *(v11 + v25), *(v11 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v11 + ((((v25 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1D79425D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a3 + 32);
  *(v5 + 80) = a4;
  *(v5 + 88) = a5;
  v11 = 6;
  v7 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v7;
  v10 = v6;
  return sub_1D79202C0(&v11, a1, a2, v9);
}

uint64_t sub_1D7942624(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v39 = a1;
  v6 = *(*v3 + 168);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = v34 - v8;
  v37 = *(v10 + 176);
  v11 = type metadata accessor for Dynamic.State();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = v34 - v15;
  v17 = *(v7 + 16);
  v41 = a2;
  v18 = a2;
  v19 = v39;
  v17(v9, v18, v6, v14);
  v38 = a3;
  sub_1D7942B34(v19, v9, *a3, v16);
  v20 = v3[10];

  v21 = v40;
  v22 = v20(v16);
  if (v21)
  {
    return (*(v12 + 8))(v16, v11);
  }

  v26 = v22;
  v34[1] = v23;
  v34[2] = v24;
  v27 = v38;
  v35 = v16;
  v36 = v12;
  v40 = v11;
  type metadata accessor for LayoutResult();
  v44 = sub_1D796C200();
  type metadata accessor for Node();

  v28 = sub_1D796C430();

  v43 = v28;
  while (1)
  {
    v29 = sub_1D796C4A0();
    v30 = v43;
    if (v43 == v29)
    {
      break;
    }

    v31 = sub_1D796C490();
    sub_1D796C450();
    if (v31)
    {
      v32 = *(v26 + 32 + 8 * v30);
    }

    else
    {
      v32 = sub_1D796C790();
    }

    sub_1D796C4E0();
    v42 = (*(*v32 + 152))(v19, v41, v27);
    sub_1D796C4F0();
    sub_1D796C4C0();
  }

  (*(v36 + 8))(v35, v40);

  v33 = swift_allocObject();
  *(v33 + 16) = v44;
  return v33 | 0x4000000000000000;
}

uint64_t sub_1D7942B34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = *a1;
  *a4 = a1;
  v8 = *(v7 + 80);
  v9 = type metadata accessor for Dynamic.State();
  result = (*(*(v8 - 8) + 32))(&a4[*(v9 + 36)], a2, v8);
  *&a4[*(v9 + 40)] = a3;
  return result;
}

uint64_t Dynamic.deinit()
{
  v0 = Node.deinit();

  return v0;
}

uint64_t Dynamic.__deallocating_deinit()
{
  v0 = Dynamic.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t sub_1D7942DA0()
{
  result = type metadata accessor for Cursor();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for LayoutContext();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D7942E48(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((result + v7 + 8) & ~v7, v6, v4);
    }

    else
    {
      v17 = *result;
      if (*result >= 0xFFFFFFFFuLL)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 8) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1D7942F90(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v19 = &a1[v10 + 8] & ~v10;

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *a1 = v18;
          }
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1D7943184()
{
  result = qword_1EC9D9F60;
  if (!qword_1EC9D9F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9D9F60);
  }

  return result;
}

uint64_t Embed<A, B, C, D>(name:_:_:_:)(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *a5;
  v12 = *a4;
  v13 = *(*a5 + 168);
  v15[0] = *(*a3 + *MEMORY[0x1E69E77B0]);
  v15[1] = v13;
  v16 = a6;
  v17 = a7;
  v18 = *(v11 + 184);
  type metadata accessor for EmbedLayout();
  *&v15[0] = v12;

  sub_1D7922754(v12);

  return sub_1D796B8CC(a1, a2, a3, v15, a5, 0, 0);
}

uint64_t MapEmbed<A, B, C, D>(name:_:_:_:_:)(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *a5;
  v15 = *a4;
  v16 = *(*a5 + 184);
  v17 = *(*a5 + 192);
  v18 = *(*a3 + *MEMORY[0x1E69E77B0]);
  v27 = a8;
  v28 = a9;
  v29 = v16;
  v30 = v17;
  v21 = *(v14 + 168);
  v22 = v18;
  v25[1] = *(&v18 + 1);
  v26 = v21;
  type metadata accessor for EmbedLayout();
  v25[0] = v15;
  v19 = swift_allocObject();
  *(v19 + 16) = v22;
  *(v19 + 32) = v21;
  *(v19 + 48) = a8;
  *(v19 + 56) = a9;
  *(v19 + 64) = v16;
  *(v19 + 72) = v17;
  *(v19 + 80) = a6;
  *(v19 + 88) = a7;

  sub_1D7922754(v15);

  return sub_1D796B8CC(a1, a2, a3, v25, a5, sub_1D794348C, v19);
}

uint64_t Embed<A, B, C>(name:keyPath:sizing:context:)(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24 = a8;
  v25 = a5;
  v26 = a2;
  v27 = a1;
  v13 = (*a3 + *MEMORY[0x1E69E77B0]);
  v14 = v13[1];
  *&v29 = *v13;
  *(&v29 + 1) = v14;
  *&v30 = a6;
  *(&v30 + 1) = a6;
  v31 = a7;
  v32 = a8;
  v33 = a9;
  v34 = a9;
  v15 = type metadata accessor for EmbedFactory.Context();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v23 - v18;
  v20 = *a4;
  *(&v29 + 1) = v14;
  *&v30 = a6;
  *(&v30 + 1) = a7;
  v31 = v24;
  v32 = a9;
  type metadata accessor for EmbedFactory();
  v29 = 0u;
  v30 = 0u;
  LOBYTE(v31) = 1;
  v28 = v20;
  (*(v16 + 16))(v19, v25, v15);
  v21 = v26;

  sub_1D7922754(v20);
  return sub_1D7935408(v27, v21, &v29, a3, &v28, v19, 0, 0);
}

uint64_t sub_1D7943668@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

unint64_t sub_1D79436C0(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1D79436D4(result);
  }

  return result;
}

unint64_t sub_1D79436D4(unint64_t result)
{
  switch(result >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:

      break;
    default:
      return result;
  }

  return result;
}

__n128 ColumnSystem.Options.columnSystem.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 8);
  v4 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_1D7943858@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_1D7943888@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

TeaTemplate::ColumnSystem::Options::Traits sub_1D79438F4@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = ColumnSystem.Options.Traits.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D7943934@<X0>(uint64_t *a1@<X8>)
{
  result = ColumnSystem.Options.Traits.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t static ColumnSystem.Options.== infix(_:_:)(float64x2_t *a1, float64x2_t *a2)
{
  if (LOBYTE(a1->f64[0]) != LOBYTE(a2->f64[0]))
  {
    return 0;
  }

  v2 = a1[13].f64[0];
  v4 = a1[11];
  v3 = a1[12];
  v6 = a1[9];
  v5 = a1[10];
  v8 = a2[11];
  v7 = a2[12];
  v50 = a2[10];
  v49 = a2[9];
  v9 = a2[13].f64[0];
  if (LOBYTE(a1[2].f64[1]) == 1)
  {
    if (*&a1[1].f64[1] | *&a1->f64[1] | *&a1[1].f64[0] | *&a1[2].f64[0])
    {
      if ((LOBYTE(a2[2].f64[1]) & 1) == 0)
      {
        return 0;
      }

      OUTLINED_FUNCTION_3_1();
      if (!v10)
      {
        return 0;
      }
    }

    else
    {
      if (!LOBYTE(a2[2].f64[1]))
      {
        return 0;
      }

      OUTLINED_FUNCTION_3_1();
      if (v38)
      {
        return 0;
      }
    }

    result = OUTLINED_FUNCTION_4_1();
    v25 = v39 == v40;
    v28 = v41 == v42;
    v37 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v43, v44), vceqq_f64(v45, v46))));
  }

  else
  {
    if (LOBYTE(a2[2].f64[1]))
    {
      return 0;
    }

    result = OUTLINED_FUNCTION_4_1();
    v25 = v23 == v24;
    v28 = v26 == v27;
    v37 = vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v34, v33), vceqq_f64(v36, v35)), vuzp1q_s32(vceqq_f64(v29, v30), vceqq_f64(v31, v32)))));
  }

  if ((v37 & 1) != 0 && v14 && v25 && v28 && v12 == v13)
  {
    v47 = CGRectEqualToRect(*&v15, *&v19);
    v48 = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v6, v49), vceqq_f64(v5, v50)), vuzp1q_s32(vceqq_f64(v4, v8), vceqq_f64(v3, v7))));
    v48.i8[0] = vminv_u8(v48);
    if (v2 == v9)
    {
      return v47 & v48.i32[0];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL static ColumnSystem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 16);
  v5 = *a2;
  v4 = *(a2 + 16);
  if (*(a1 + 32) == 1)
  {
    v6 = *&v2.f64[0] | *&v3.f64[0] | *&v3.f64[1] | *&v2.f64[1];
    v7 = vorrq_s8(v5, v4);
    v8 = vextq_s8(v7, v7, 8uLL).u64[0];
    v9 = vorr_s8(*v7.i8, v8) == 0;
    if (!*(a2 + 32))
    {
      v9 = 0;
    }

    v10 = vorr_s8(*v7.i8, v8) != 0;
    v11 = (*(a2 + 32) & 1) != 0 && v10;
    if (!v6)
    {
      return v9;
    }
  }

  else
  {
    v12 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, v5), vceqq_f64(v2, v4))));
    if (*(a2 + 32))
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  return v11;
}

uint64_t ColumnSystem.description.getter()
{
  if (*(v0 + 32) == 1)
  {
    if (*(v0 + 8) | *v0 | *(v0 + 16) | *(v0 + 24))
    {
      return 1685217635;
    }

    else
    {
      return 0x746C7561666564;
    }
  }

  else
  {
    sub_1D796C780();
    MEMORY[0x1DA704750](0x69286D6F74737563, 0xEF203A737465736ELL);
    type metadata accessor for UIEdgeInsets(0);
    sub_1D796C860();
    MEMORY[0x1DA704750](41, 0xE100000000000000);
    return 0;
  }
}

unint64_t sub_1D7943D18()
{
  result = qword_1EC9D9F68;
  if (!qword_1EC9D9F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9D9F68);
  }

  return result;
}

unint64_t sub_1D7943D70()
{
  result = qword_1EC9D9F70[0];
  if (!qword_1EC9D9F70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC9D9F70);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D7943DD8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7943DF4(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[216])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7943E30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
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
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 216) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 216) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1D7943EA8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_11TeaTemplate9FontSizerV5AlignOyx_G(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1D7943F08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_1D7943F48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7943FB4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = *(a3 + 16);
  result = sub_1D7924DA0(a1, a5);
  *(a5 + 40) = a2;
  *(a5 + 48) = v8;
  *(a5 + 56) = v9;
  *(a5 + 64) = v10;
  *(a5 + 65) = a4;
  return result;
}

uint64_t sub_1D794400C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = OUTLINED_FUNCTION_5_2();
  __swift_project_boxed_opaque_existential_1(v10, v11);
  return (*(v9 + 8))(a1, a2, a3, *(v7 + 80), *(v7 + 88), v8, v9);
}

void *sub_1D79440B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = v5;
  v180 = a4;
  v12 = *a1;
  v14 = *(v7 + 24);
  v13 = *(v7 + 32);
  __swift_project_boxed_opaque_existential_1(v7, v14);
  result = (*(v13 + 16))(__src, a1, a2, a3, *(v12 + 80), *(v12 + 88), v14, v13);
  if (!v6)
  {
    v167 = a1;
    v16 = v180;
    v159 = a5;
    v17 = *__src;
    v18 = *(v7 + 48);
    v19 = *(v7 + 56);
    v20 = v7;
    switch(*(v7 + 64))
    {
      case 1:
        OUTLINED_FUNCTION_9_1();
        v96 = *(a3 + 56);

        v97 = OUTLINED_FUNCTION_5_2();
        v99 = sub_1D792D5D0(v97, v98, v96);
        swift_endAccess();
        if (v99)
        {
          v100 = OUTLINED_FUNCTION_5_2();
          sub_1D7944F10(v100, v101, 1u);
          OUTLINED_FUNCTION_4_2();
          v27 = swift_allocObject();
          v102 = OUTLINED_FUNCTION_0_12(v27);
          v110 = OUTLINED_FUNCTION_1_5(v102, v103, v104, v105, v106, v107, v108, v109, v153, v159, v167, __src[0]);
          v111(v110);
          OUTLINED_FUNCTION_6_2();
          v112 = swift_allocObject();
          OUTLINED_FUNCTION_2_4(v112, v113, v114, v115, v116, v117, v118, v119, v157, v164, v175, __src[0]);
          *(v13 + 104) = v99;
          *(v13 + 112) = v19;
          *(v13 + 120) = v176;
          v38 = sub_1D794500C;
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_7_2();
        if (*(v13 + 64))
        {
          goto LABEL_19;
        }

        v147 = OUTLINED_FUNCTION_5_2();
        v149 = 1;
        goto LABEL_21;
      case 2:
        OUTLINED_FUNCTION_4_2();
        v57 = swift_allocObject();
        v58 = OUTLINED_FUNCTION_0_12(v57);
        v66 = OUTLINED_FUNCTION_1_5(v58, v59, v60, v61, v62, v63, v64, v65, v153, v159, v167, __src[0]);
        v67(v66);
        OUTLINED_FUNCTION_6_2();
        v68 = swift_allocObject();
        OUTLINED_FUNCTION_3_2(v68, v69, v70, v71, v72, v73, v74, v75, v155, v162, v171, __src[0]);
        *(v7 + 120) = v172;
        v76 = sub_1D7944FAC;
        goto LABEL_9;
      case 3:
        OUTLINED_FUNCTION_4_2();
        v57 = swift_allocObject();
        v77 = OUTLINED_FUNCTION_0_12(v57);
        v85 = OUTLINED_FUNCTION_1_5(v77, v78, v79, v80, v81, v82, v83, v84, v153, v159, v167, __src[0]);
        v86(v85);
        OUTLINED_FUNCTION_6_2();
        v87 = swift_allocObject();
        OUTLINED_FUNCTION_3_2(v87, v88, v89, v90, v91, v92, v93, v94, v156, v163, v173, __src[0]);
        *(v7 + 120) = v174;
        v76 = sub_1D7944F28;
LABEL_9:
        *(v57 + 24) = v76;
        *(v57 + 32) = v7;
        v95 = v57 | 0x7000000000000000;
        goto LABEL_13;
      case 4:
        if (v18 | v19)
        {
          OUTLINED_FUNCTION_4_2();
          v27 = swift_allocObject();
          v39 = OUTLINED_FUNCTION_0_12(v27);
          v47 = OUTLINED_FUNCTION_1_5(v39, v40, v41, v42, v43, v44, v45, v46, v153, v159, v167, __src[0]);
          v48(v47);
          OUTLINED_FUNCTION_8_0();
          v49 = swift_allocObject();
          OUTLINED_FUNCTION_2_4(v49, v50, v51, v52, v53, v54, v55, v56, v154, v161, v169, __src[0]);
          *(v13 + 104) = v19;
          *(v13 + 112) = v170;
          v38 = sub_1D794505C;
          goto LABEL_12;
        }

        v120 = *(v7 + 40);
        [v120 ascender];
        v122 = v121;
        [v120 descender];
        v124 = v122 + fabs(v123);
        [v120 descender];
        v126 = fabs(v125);
        [v120 capHeight];
        v128 = v124 - (v126 + v127);
        OUTLINED_FUNCTION_4_2();
        v129 = swift_allocObject();
        *(v129 + 16) = v17;
        v137 = OUTLINED_FUNCTION_1_5(v129, v130, v131, v132, v133, v134, v135, v136, v153, v159, v167, __src[0]);
        v138(v137);
        OUTLINED_FUNCTION_8_0();
        v139 = swift_allocObject();
        OUTLINED_FUNCTION_2_4(v139, v140, v141, v142, v143, v144, v145, v146, v158, v165, v177, __src[0]);
        MEMORY[0x1E84E6068] = *&v128;
        MEMORY[0x1E84E6070] = v178;
        *(v129 + 24) = sub_1D7945080;
        *(v129 + 32) = 0x1E84E6000uLL;
        *v166 = v129 | 0x7000000000000000;

        break;
      default:
        OUTLINED_FUNCTION_9_1();
        v21 = *(a3 + 56);

        v22 = OUTLINED_FUNCTION_5_2();
        v24 = sub_1D792D5D0(v22, v23, v21);
        swift_endAccess();
        if (v24)
        {
          v25 = OUTLINED_FUNCTION_5_2();
          sub_1D7944F10(v25, v26, 0);
          OUTLINED_FUNCTION_4_2();
          v27 = swift_allocObject();
          v28 = OUTLINED_FUNCTION_0_12(v27);
          v36 = OUTLINED_FUNCTION_1_5(v28, v29, v30, v31, v32, v33, v34, v35, v153, v159, v167, __src[0]);
          v37(v36);
          OUTLINED_FUNCTION_6_2();
          v13 = swift_allocObject();
          *(v13 + 16) = *(v16 + 16);
          *(v13 + 32) = v19;
          memcpy((v13 + 40), __src, 0x42uLL);
          *(v13 + 112) = v24;
          *(v13 + 120) = v168;
          v38 = sub_1D7945034;
LABEL_12:
          *(v27 + 24) = v38;
          *(v27 + 32) = v13;
          v95 = v27 | 0x7000000000000000;
LABEL_13:
          *v160 = v95;

          result = v19;
        }

        else
        {
          OUTLINED_FUNCTION_7_2();
          if (*(v13 + 64))
          {
LABEL_19:
            sub_1D7930964();
            swift_allocError();
            *v150 = v18;
            *(v150 + 8) = v19;
            *(v150 + 16) = 0u;
            *(v150 + 32) = 0u;
            *(v150 + 48) = 2;
            swift_willThrow();
          }

          else
          {
            v147 = OUTLINED_FUNCTION_5_2();
            v149 = 0;
LABEL_21:
            sub_1D7944F10(v147, v148, v149);
            v151 = swift_allocObject();
            *(v151 + 40) = v16;
            *(v151 + 48) = &off_1F52888C0;
            v152 = swift_allocObject();
            *(v151 + 16) = v152;
            (*(*(v16 - 8) + 16))(v152 + 16, v20, v16);

            *v159 = v151 | 0x2000000000000000;
          }
        }

        break;
    }
  }

  return result;
}

double sub_1D7944678(double a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v7 = a1;
  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  v11.size.width = 0.0;
  v11.size.height = 0.0;
  if (!CGRectEqualToRect(*&a1, v11))
  {
    v9.origin.x = v7;
    v9.origin.y = a2;
    v9.size.width = a3;
    v9.size.height = a4;
    CGRectGetMinY(v9);
    v10.origin.x = v7;
    v10.origin.y = a2;
    v10.size.width = a3;
    v10.size.height = a4;
    return CGRectGetMinX(v10);
  }

  return v7;
}

double sub_1D7944754(double a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, void *a6)
{
  v10 = a1;
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = 0.0;
  v14.size.height = 0.0;
  if (!CGRectEqualToRect(*&a1, v14))
  {
    v12.origin.x = v10;
    v12.origin.y = a2;
    v12.size.width = a3;
    v12.size.height = a4;
    CGRectGetMinY(v12);
    [a6 descender];
    v13.origin.x = v10;
    v13.origin.y = a2;
    v13.size.width = a3;
    v13.size.height = a4;
    return CGRectGetMinX(v13);
  }

  return v10;
}

double sub_1D7944848(void *a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, uint64_t a7)
{
  v12 = a2;
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = 0.0;
  v15.size.height = 0.0;
  if (!CGRectEqualToRect(*&a2, v15))
  {
    [a1 ascender];
    [a1 descender];
    [a1 descender];
    [a1 capHeight];
    CGRectGetMinY(*(a7 + 16));
    v14.origin.x = v12;
    v14.origin.y = a3;
    v14.size.width = a4;
    v14.size.height = a5;
    return CGRectGetMinX(v14);
  }

  return v12;
}

double sub_1D794497C(double a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = a1;
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = 0.0;
  v16.size.height = 0.0;
  if (!CGRectEqualToRect(*&a1, v16))
  {
    CGRectGetMaxY(*(a6 + 16));
    v14.origin.x = v12;
    v14.origin.y = a2;
    v14.size.width = a3;
    v14.size.height = a4;
    CGRectGetHeight(v14);
    [a7 descender];
    v15.origin.x = v12;
    v15.origin.y = a2;
    v15.size.width = a3;
    v15.size.height = a4;
    return CGRectGetMinX(v15);
  }

  return v12;
}

double sub_1D7944A8C(double a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, void *a6)
{
  v10 = a1;
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = 0.0;
  v14.size.height = 0.0;
  if (!CGRectEqualToRect(*&a1, v14))
  {
    [a6 ascender];
    v12.origin.x = v10;
    v12.origin.y = a2;
    v12.size.width = a3;
    v12.size.height = a4;
    CGRectGetMinY(v12);
    v13.origin.x = v10;
    v13.origin.y = a2;
    v13.size.width = a3;
    v13.size.height = a4;
    return CGRectGetMinX(v13);
  }

  return v10;
}

double sub_1D7944B90(double a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, void *a6)
{
  v10 = a1;
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = 0.0;
  v14.size.height = 0.0;
  if (!CGRectEqualToRect(*&a1, v14))
  {
    [a6 descender];
    v12.origin.x = v10;
    v12.origin.y = a2;
    v12.size.width = a3;
    v12.size.height = a4;
    CGRectGetMinY(v12);
    v13.origin.x = v10;
    v13.origin.y = a2;
    v13.size.width = a3;
    v13.size.height = a4;
    return CGRectGetMinX(v13);
  }

  return v10;
}

uint64_t sub_1D7944CC8()
{
  sub_1D79450A8();
  sub_1D796C860();
  MEMORY[0x1DA704750](0x28746E6F66202B20, 0xE800000000000000);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  sub_1D7945104(v2, v3, v4);
  type metadata accessor for FontSizer.Align();
  swift_getWitnessTable();
  sub_1D796C960();
  sub_1D7944F10(v2, v3, v4);
  MEMORY[0x1DA704750](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_1D7944DC0()
{
  v1 = *v0;
  result = 0x736142726568746FLL;
  switch(*(v0 + 16))
  {
    case 1:
      return result;
    case 2:
      v3 = 0x7265646E65637361;
      goto LABEL_9;
    case 3:
      v3 = 0x65646E6563736564;
LABEL_9:
      v6 = v3;
      if (v1)
      {
        v4 = 0x7463617274627573;
      }

      else
      {
        v4 = 0x676E69646461;
      }

      if (v1)
      {
        v5 = 0xEB00000000676E69;
      }

      else
      {
        v5 = 0xE600000000000000;
      }

      MEMORY[0x1DA704750](v4, v5);

      result = v6;
      break;
    case 4:
      if (*v0 == 0)
      {
        result = 0x7361427473726966;
      }

      else
      {
        result = 0x656E696C65736162;
      }

      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_1D7944F10(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  sub_1D7944F10(*(v0 + 96), *(v0 + 104), *(v0 + 112));

  OUTLINED_FUNCTION_6_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

unint64_t sub_1D79450A8()
{
  result = qword_1EE09C598[0];
  if (!qword_1EE09C598[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EE09C598);
  }

  return result;
}

uint64_t sub_1D7945104(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D7945134()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D7945170(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1D79451B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D79451F4(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
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

uint64_t sub_1D7945220(uint64_t a1, int a2)
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

uint64_t sub_1D7945260(uint64_t result, int a2, int a3)
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

uint64_t sub_1D79452B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v10 = *a1;
  v11 = v4[3];
  v12 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v11);
  result = (*(v12 + 16))(&v20, a1, a2, a3, *(v10 + 80), *(v10 + 88), v11, v12);
  if (!v5)
  {
    v14 = v20;
    v15 = SizerResult.nonIntegral.getter();
    sub_1D79276B0(v15 & 1);
    if (*(a1 + 48) == 1)
    {
      CGRectGetHeight(*&v16);
    }

    else
    {
      CGRectGetWidth(*&v16);
    }

    result = swift_allocObject();
    *(result + 16) = v14;
    *a4 = result | 0x3000000000000000;
  }

  return result;
}

uint64_t sub_1D7945408()
{
  sub_1D79450A8();
  sub_1D796C860();
  MEMORY[0x1DA704750](0x7A69736572202B20, 0xE900000000000065);
  return 0;
}

uint64_t AltText.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void AltText.init(identifier:logic:attributedText:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v6 = *a3;
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a4;
  a5[3] = v6;
  v7 = a4;
  v8 = sub_1D7921F20();

  a5[4] = v8;
}