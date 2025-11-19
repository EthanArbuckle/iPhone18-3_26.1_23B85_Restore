uint64_t sub_26B644504(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v36 = a3;
  v40 = a2;
  v6 = sub_26B6E93B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_beginningOfFile) = 0;
  v11 = OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_linesRead;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409318, &qword_26B6ED018);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_26B6E9604();
  v35 = v11;
  *(v3 + v11) = v15;
  v16 = v3 + OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_delimiter;
  *v16 = sub_26B643FFC(10, 0xE100000000000000);
  *(v16 + 8) = v17;
  v18 = OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_temporaryBuffer;
  v19 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
  v34 = v18;
  *(v4 + v18) = v19;
  *(v4 + OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_currentOffset) = 0;
  v37 = v7;
  v20 = *(v7 + 16);
  v32 = OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_url;
  v20(v4 + OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_url, a1, v6);
  v21 = v36;
  v33 = OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_queue;
  *(v4 + OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_queue) = v36;
  *(v4 + OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_bytesToRead) = v40;
  sub_26B645B98();
  v40 = a1;
  v38 = v6;
  v20(v10, a1, v6);
  v22 = v21;
  v23 = v39;
  v24 = sub_26B678FC8(v10);
  if (v23)
  {

    v25 = v38;
    v26 = *(v37 + 8);
    v26(v40, v38);
    v26(v4 + v32, v25);
    v27 = *(v4 + v35);

    sub_26B645A94(*v16, *(v16 + 8));

    type metadata accessor for ReverseChronologicalStreamReader();
    v28 = *(*v4 + 48);
    v29 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_fileHandle) = v24;
    v30 = [v24 seekToEndOfFile];

    (*(v37 + 8))(v40, v38);
    *(v4 + OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_currentOffset) = v30;
  }

  return v4;
}

uint64_t sub_26B64481C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_queue);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_26B645AEC;
  *(v3 + 24) = v2;
  v6[4] = sub_26B645AF4;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_26B6447F4;
  v6[3] = &block_descriptor_0;
  v4 = _Block_copy(v6);

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B644978()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_26B644A10();
  }

  return result;
}

_BYTE *sub_26B644A10()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_beginningOfFile;
  if (*(v0 + OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_beginningOfFile) == 1)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_linesRead);
    LOBYTE(v92) = 1;
    return sub_26B6E95E4();
  }

  v5 = OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_temporaryBuffer;
  v6 = *(v0 + OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_temporaryBuffer);
  v7 = *(v0 + OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_delimiter);
  v8 = *(v1 + OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_delimiter + 8);
  v86 = (v1 + OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_delimiter);
  v9 = v6;
  v10 = sub_26B6E9464();
  v11 = [v9 rangeOfData:v10 options:1 range:{0, objc_msgSend(*(v1 + v5), sel_length)}];

  result = sub_26B6E8FF4();
  if (v11 != result)
  {
    goto LABEL_21;
  }

  v84 = v2;
  v85 = v5;
  v12 = *(v1 + OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_bytesToRead);
  v13 = *(v1 + OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_fileHandle);
  v14 = OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_currentOffset;
  while (2)
  {
    v15 = *(v1 + v14);
    if (v12 < 1 || v15 >= v12)
    {
      if (v12 < 0)
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v17 = v15 - v12;
      if (v15 < v12)
      {
        goto LABEL_54;
      }

      v15 = v12;
    }

    else
    {
      v17 = 0;
    }

    *(v1 + v14) = v17;
    [v13 seekToFileOffset_];
    v18 = [v13 readDataOfLength_];
    v19 = sub_26B6E9474();
    v21 = v20;

    switch(v21 >> 62)
    {
      case 1uLL:
        v22 = v19;
        v23 = v19 >> 32;
        goto LABEL_18;
      case 2uLL:
        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
LABEL_18:
        if (v22 != v23)
        {
          goto LABEL_19;
        }

        goto LABEL_26;
      case 3uLL:
        goto LABEL_26;
      default:
        if ((v21 & 0xFF000000000000) == 0)
        {
LABEL_26:
          *(v1 + v84) = 1;
          if ([*(v1 + v85) length] < 1)
          {
            v64 = OUTLINED_FUNCTION_6_0();

            return sub_26B645A94(v64, v65);
          }

          v50 = *(v1 + v85);
          v51 = sub_26B6E9474();
          v53 = v52;

          v54 = OUTLINED_FUNCTION_2_2();
          v56 = sub_26B6ADC5C(v54, v55);
          if (!v57)
          {
            v90 = v51;
            v91 = v53;
            v58 = OUTLINED_FUNCTION_2_2();
            sub_26B645A3C(v58, v59);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409308, &unk_26B6F3650);
            if (swift_dynamicCast())
            {
              sub_26B6367F0(&v87, &v92);
              __swift_project_boxed_opaque_existential_1(&v92, v94);
              if (sub_26B6EA374())
              {
                v60 = OUTLINED_FUNCTION_2_2();
                sub_26B645A94(v60, v61);
                __swift_project_boxed_opaque_existential_1(&v92, v94);
                OUTLINED_FUNCTION_0_3();
                sub_26B6EA364();
                v62 = *(&v87 + 1);
                v63 = v87;
                __swift_destroy_boxed_opaque_existential_1(&v92);
                goto LABEL_48;
              }

              __swift_destroy_boxed_opaque_existential_1(&v92);
            }

            else
            {
              v89 = 0;
              v87 = 0u;
              v88 = 0u;
              sub_26B645BDC(&v87, &qword_280409310, &qword_26B6ED010);
            }

            v76 = OUTLINED_FUNCTION_2_2();
            v56 = sub_26B6AD08C(v76, v77);
          }

          v63 = v56;
          v62 = v57;
          v78 = OUTLINED_FUNCTION_2_2();
          sub_26B645A94(v78, v79);
LABEL_48:
          v80 = HIBYTE(v62) & 0xF;
          if ((v62 & 0x2000000000000000) == 0)
          {
            v80 = v63 & 0xFFFFFFFFFFFFLL;
          }

          if (v80)
          {
            [*(v1 + v85) setLength_];
            v81 = *(v1 + OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_linesRead);
            v92 = v63;
            v93 = v62;
            sub_26B6E95F4();
          }

LABEL_52:
          v82 = OUTLINED_FUNCTION_6_0();
          sub_26B645A94(v82, v83);
        }

LABEL_19:
        v24 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
        OUTLINED_FUNCTION_6_0();
        v25 = sub_26B6E9464();
        [v24 appendData_];

        [v24 appendData_];
        v26 = *(v1 + v85);
        *(v1 + v85) = v24;
        v27 = v24;

        v28 = *v86;
        v29 = v86[1];
        v30 = sub_26B6E9464();
        v11 = [v27 rangeOfData:v30 options:1 range:{0, objc_msgSend(*(v1 + v85), sel_length)}];
        v31 = OUTLINED_FUNCTION_6_0();
        sub_26B645A94(v31, v32);

        result = sub_26B6E8FF4();
        if (v11 == result)
        {
          continue;
        }

        v5 = v85;
LABEL_21:
        v33 = *(v1 + v5);
        result = [v33 length];
        if (__OFSUB__(result, v11))
        {
          goto LABEL_55;
        }

        v34 = [v33 subdataWithRange_];

        v35 = sub_26B6E9474();
        v37 = v36;

        v38 = OUTLINED_FUNCTION_6_0();
        sub_26B645A3C(v38, v39);
        v40 = OUTLINED_FUNCTION_6_0();
        v42 = sub_26B6ADC5C(v40, v41);
        if (!v43)
        {
          v90 = v35;
          v91 = v37;
          v44 = OUTLINED_FUNCTION_6_0();
          sub_26B645A3C(v44, v45);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409308, &unk_26B6F3650);
          if (swift_dynamicCast())
          {
            sub_26B6367F0(&v87, &v92);
            __swift_project_boxed_opaque_existential_1(&v92, v94);
            if (sub_26B6EA374())
            {
              v46 = OUTLINED_FUNCTION_6_0();
              sub_26B645A94(v46, v47);
              __swift_project_boxed_opaque_existential_1(&v92, v94);
              OUTLINED_FUNCTION_0_3();
              sub_26B6EA364();
              v49 = *(&v87 + 1);
              v48 = v87;
              __swift_destroy_boxed_opaque_existential_1(&v92);
              goto LABEL_38;
            }

            __swift_destroy_boxed_opaque_existential_1(&v92);
          }

          else
          {
            v89 = 0;
            v87 = 0u;
            v88 = 0u;
            sub_26B645BDC(&v87, &qword_280409310, &qword_26B6ED010);
          }

          v66 = OUTLINED_FUNCTION_6_0();
          v42 = sub_26B6AD08C(v66, v67);
        }

        v48 = v42;
        v49 = v43;
        v68 = OUTLINED_FUNCTION_6_0();
        sub_26B645A94(v68, v69);
LABEL_38:
        v70 = *(v1 + v5);
        result = [v70 length];
        if (!__OFSUB__(result, v11))
        {
          [v70 replaceBytesInRange:v11 withBytes:result - v11 length:{0, 0}];

          v92 = v48;
          v93 = v49;
          *&v87 = 10;
          *(&v87 + 1) = 0xE100000000000000;
          v90 = 0;
          v91 = 0xE000000000000000;
          sub_26B641414();
          v71 = sub_26B6EA044();
          v73 = v72;

          v74 = HIBYTE(v73) & 0xF;
          if ((v73 & 0x2000000000000000) == 0)
          {
            v74 = v71 & 0xFFFFFFFFFFFFLL;
          }

          if (v74)
          {
            v75 = *(v1 + OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_linesRead);
            v92 = v71;
            v93 = v73;
            sub_26B6E95F4();
          }

          goto LABEL_52;
        }

LABEL_56:
        __break(1u);
        return result;
    }
  }
}

uint64_t sub_26B6450E4()
{
  v1 = OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_url;
  v2 = sub_26B6E93B4();
  OUTLINED_FUNCTION_3_2(v2);
  (*(v3 + 8))(v0 + v1);

  v4 = *(v0 + OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_linesRead);

  sub_26B645A94(*(v0 + OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_delimiter), *(v0 + OBJC_IVAR____TtC9SportsKit32ReverseChronologicalStreamReader_delimiter + 8));

  return v0;
}

uint64_t sub_26B64518C()
{
  sub_26B6450E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ReverseChronologicalStreamReader()
{
  result = qword_2804092F8;
  if (!qword_2804092F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B645238()
{
  result = sub_26B6E93B4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26B64530C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_26B6E93C4();
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_26B6E9204();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_26B6E91C4();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_26B6E9424();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_26B6453D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_26B6458AC(sub_26B645C60, v5, a1, a2);
}

uint64_t sub_26B645428(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_26B645A94(v6, v5);
      *v4 = xmmword_26B6ECFA0;
      sub_26B645A94(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (sub_26B6E91D4() && __OFSUB__(v6, sub_26B6E91F4()))
      {
        goto LABEL_24;
      }

      v13 = sub_26B6E9204();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_26B6E91B4();

      v11 = v16;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_26B645910(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_26B645A94(v6, v5);
      v20 = v6;
      v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_26B6ECFA0;
      sub_26B645A94(0, 0xC000000000000000);
      sub_26B6E93D4();
      v6 = v20;
      v9 = sub_26B645910(*(v20 + 16), *(v20 + 24), a1);
      if (v2)
      {
        v10 = v21 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v21 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

LABEL_21:
      v17 = *MEMORY[0x277D85DE8];
      return v3;
    case 3uLL:
      memset(v22, 0, 15);
      a1(&v20, v22, v22);
      if (!v2)
      {
        v3 = v20;
      }

      goto LABEL_21;
    default:
      v3 = v6 >> 8;
      sub_26B645A94(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        v3 = v20;
      }

      v8 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v4 = v22[0];
      v4[1] = v8;
      goto LABEL_21;
  }
}

uint64_t sub_26B6457EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_26B6E93C4();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x26D67CDA0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x26D67CDC0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_26B645864(uint64_t result)
{
  if (result)
  {
    result = sub_26B6EA144();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26B6458AC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_26B645910(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_26B6E91D4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_26B6E91F4();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_26B6E91E4();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

void *sub_26B6459C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_26B6453D4(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_26B6459FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  result = sub_26B645864(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

uint64_t sub_26B645A3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26B645A94(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26B645AF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26B645B34()
{
  result = qword_280409320;
  if (!qword_280409320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409318, &qword_26B6ED018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409320);
  }

  return result;
}

unint64_t sub_26B645B98()
{
  result = qword_2810CC278;
  if (!qword_2810CC278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810CC278);
  }

  return result;
}

uint64_t sub_26B645BDC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3_2(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_26B645C4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26B645A94(a1, a2);
  }

  return a1;
}

uint64_t sub_26B645CC4(unsigned __int8 a1, char a2)
{
  v2 = 1701667143;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701667143;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x65676170706F7453;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_32_0(19);
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x6C61746F54;
      break;
    case 4:
      v5 = 1819042135;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_12_0();
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x65676170706F7453;
      break;
    case 2:
      OUTLINED_FUNCTION_31_0();
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x6C61746F54;
      break;
    case 4:
      v2 = 1819042135;
      break;
    case 5:
      v6 = 0xE700000000000000;
      OUTLINED_FUNCTION_17_0();
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
    v8 = OUTLINED_FUNCTION_21_0();
  }

  return v8 & 1;
}

uint64_t sub_26B645E18(unsigned __int8 a1, char a2)
{
  v2 = 0x6C6C616265736162;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x6C6C616265736162;
  switch(v4)
  {
    case 1:
      v5 = 0x616274656B736162;
      v3 = 0xEA00000000006C6CLL;
      break;
    case 2:
      v6 = 1953460070;
      goto LABEL_9;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x79656B636F68;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = 0x7962677572;
      break;
    case 5:
      v3 = 0xE600000000000000;
      v5 = 0x726563636F73;
      break;
    case 6:
      v6 = 1952870259;
LABEL_9:
      v5 = v6 | 0x6C6C616200000000;
      break;
    case 7:
      v3 = 0xE600000000000000;
      v5 = 0x73696E6E6574;
      break;
    case 8:
      v3 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_102();
      break;
    default:
      break;
  }

  v7 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x616274656B736162;
      v7 = 0xEA00000000006C6CLL;
      break;
    case 2:
      v8 = 1953460070;
      goto LABEL_19;
    case 3:
      v7 = 0xE600000000000000;
      v2 = 0x79656B636F68;
      break;
    case 4:
      v7 = 0xE500000000000000;
      v2 = 0x7962677572;
      break;
    case 5:
      v7 = 0xE600000000000000;
      v2 = 0x726563636F73;
      break;
    case 6:
      v8 = 1952870259;
LABEL_19:
      v2 = v8 | 0x6C6C616200000000;
      break;
    case 7:
      v7 = 0xE600000000000000;
      v2 = 0x73696E6E6574;
      break;
    case 8:
      v7 = 0xE700000000000000;
      OUTLINED_FUNCTION_98();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_21_0();
  }

  return v10 & 1;
}

uint64_t sub_26B645FF8()
{
  v0 = sub_26B6E9A24();
  v2 = v1;
  if (v0 == sub_26B6E9A24() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_21_0();
  }

  return v5 & 1;
}

uint64_t sub_26B646070(unsigned __int8 a1, char a2)
{
  v2 = 0x65726F6353;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x65726F6353;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1936618834;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1937008968;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x73726F727245;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v5 = 0x73656B69727453;
      break;
    case 5:
      v6 = 1819042114;
      goto LABEL_10;
    case 6:
      v5 = 1937012047;
      v3 = 0xE400000000000000;
      break;
    case 7:
      v3 = 0xE800000000000000;
      v5 = OUTLINED_FUNCTION_96();
      break;
    case 8:
      v6 = 1818324807;
LABEL_10:
      v5 = v6 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
      break;
    default:
      break;
  }

  v7 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE400000000000000;
      v2 = 1936618834;
      break;
    case 2:
      v7 = 0xE400000000000000;
      v2 = 1937008968;
      break;
    case 3:
      v7 = 0xE600000000000000;
      v2 = 0x73726F727245;
      break;
    case 4:
      v7 = 0xE700000000000000;
      v2 = 0x73656B69727453;
      break;
    case 5:
      v8 = 1819042114;
      goto LABEL_20;
    case 6:
      v2 = 1937012047;
      v7 = 0xE400000000000000;
      break;
    case 7:
      v7 = 0xE800000000000000;
      OUTLINED_FUNCTION_90();
      break;
    case 8:
      v8 = 1818324807;
LABEL_20:
      v2 = v8 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_21_0();
  }

  return v10 & 1;
}

uint64_t sub_26B64622C(unsigned __int8 a1, char a2)
{
  v2 = 0xEE00676E69747461;
  v3 = 0x423A737461427441;
  v4 = a1;
  v5 = 0x423A737461427441;
  v6 = 0xEE00676E69747461;
  switch(v4)
  {
    case 1:
      v5 = 0x7461423A73746948;
      v6 = 0xEC000000676E6974;
      break;
    case 2:
      v5 = 0x503A736573736F4CLL;
      v6 = 0xEF676E6968637469;
      break;
    case 3:
      v5 = 0xD000000000000014;
      v6 = 0x800000026B6FAC00;
      break;
    case 4:
      v6 = 0x800000026B6FAC20;
      v5 = 0xD00000000000001CLL;
      break;
    case 5:
      v5 = 0x7469503A736E6957;
      v6 = 0xED0000676E696863;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x7461423A73746948;
      v2 = 0xEC000000676E6974;
      break;
    case 2:
      v3 = 0x503A736573736F4CLL;
      v2 = 0xEF676E6968637469;
      break;
    case 3:
      v3 = 0xD000000000000014;
      v2 = 0x800000026B6FAC00;
      break;
    case 4:
      v2 = 0x800000026B6FAC20;
      v3 = 0xD00000000000001CLL;
      break;
    case 5:
      v3 = 0x7469503A736E6957;
      v2 = 0xED0000676E696863;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_43();
  }

  return v8 & 1;
}

uint64_t sub_26B646420(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x746E657645;
  }

  else
  {
    v2 = 0x6B636F6C43;
  }

  if (a2)
  {
    v3 = 0x746E657645;
  }

  else
  {
    v3 = 0x6B636F6C43;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_26B6EA5D4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_26B646498()
{
  OUTLINED_FUNCTION_74();
  switch(v2)
  {
    case 1:
      v3 = "subscriptionIfUnknown";
      goto LABEL_6;
    case 2:
      v0 = 0xE600000000000000;
      break;
    case 3:
      v3 = "FieldGoals:Percentage";
LABEL_6:
      v0 = v3 | 0x8000000000000000;
      break;
    case 4:
      v0 = 0xE800000000000000;
      break;
    case 5:
      v0 = 0xE500000000000000;
      break;
    case 6:
      v0 = 0xEA00000000006C61;
      break;
    case 7:
      v0 = 0xE900000000000073;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_73();
  switch(v8)
  {
    case 1:
      v5 = 0xD000000000000015;
      v9 = v7 - 32;
      goto LABEL_15;
    case 2:
      v1 = 0xE600000000000000;
      v5 = 0x736573736150;
      break;
    case 3:
      v5 = 0xD000000000000015;
      v9 = v6 - 32;
LABEL_15:
      v1 = v9 | 0x8000000000000000;
      break;
    case 4:
      v1 = 0xE800000000000000;
      v5 = 0x73646E756F626552;
      break;
    case 5:
      v1 = 0xE500000000000000;
      v5 = 0x73746F6853;
      break;
    case 6:
      v5 = 0x6F473A73746F6853;
      v1 = 0xEA00000000006C61;
      break;
    case 7:
      v5 = 0x7265766F6E727554;
      v1 = 0xE900000000000073;
      break;
    default:
      break;
  }

  if (v4 == v5 && v0 == v1)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_21_0();
  }

  return v11 & 1;
}

uint64_t sub_26B646688(unsigned __int8 a1, char a2)
{
  v2 = 7235927;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7235927;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1936944972;
      break;
    case 2:
      v5 = 6646100;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_12_0();
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1936944972;
      break;
    case 2:
      v2 = 6646100;
      break;
    case 3:
      v6 = 0xE700000000000000;
      OUTLINED_FUNCTION_17_0();
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
    v8 = OUTLINED_FUNCTION_21_0();
  }

  return v8 & 1;
}

uint64_t sub_26B646784()
{
  OUTLINED_FUNCTION_74();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_32_0(18);
      break;
    case 2:
      v0 = 0xE800000000000000;
      break;
    case 3:
      v0 = 0xE600000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_73();
  switch(v5)
  {
    case 1:
      OUTLINED_FUNCTION_31_0();
      break;
    case 2:
      v1 = 0xE800000000000000;
      v4 = 0x644965756761656CLL;
      break;
    case 3:
      v1 = 0xE600000000000000;
      v4 = 0x656372756F73;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_21_0();
  }

  return v7 & 1;
}

uint64_t sub_26B6468A4(uint64_t a1, uint64_t a2)
{
  v3 = 0xEE00736369747369;
  v4 = 0x746174536576696CLL;
  v5 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v6 = 0x6C50794279616C70;
    }

    else
    {
      v6 = 0x536B636F6C437674;
    }

    if (v5 == 1)
    {
      v2 = 0xEA00000000007961;
    }

    else
    {
      v2 = 0xEC00000065726F63;
    }
  }

  else
  {
    v6 = OUTLINED_FUNCTION_101(a1, a2, 0x746174536576696CLL);
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v4 = 0x6C50794279616C70;
    }

    else
    {
      v4 = 0x536B636F6C437674;
    }

    if (a2 == 1)
    {
      v3 = 0xEA00000000007961;
    }

    else
    {
      v3 = 0xEC00000065726F63;
    }
  }

  if (v6 == v4 && v2 == v3)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_43();
  }

  return v8 & 1;
}

uint64_t sub_26B6469B0(char a1, char a2)
{
  v2 = 0xEA0000000000434ELL;
  v3 = 0x59535F4B434F4C43;
  if (a1)
  {
    OUTLINED_FUNCTION_99();
    if (v5 == 1)
    {
      v8 = v4;
    }

    else
    {
      v8 = v4 + 10;
    }

    if (v5 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = v7;
    }
  }

  else
  {
    v8 = 0x59535F4B434F4C43;
    v9 = 0xEA0000000000434ELL;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_97();
    if (v13 == 1)
    {
      v3 = v10;
    }

    else
    {
      v3 = v10 + 10;
    }

    if (v13 == 1)
    {
      v2 = v12;
    }

    else
    {
      v2 = v11;
    }
  }

  if (v8 == v3 && v9 == v2)
  {
    v15 = 1;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_43();
  }

  return v15 & 1;
}

uint64_t sub_26B646A7C(char a1, char a2)
{
  if (a1)
  {
    v2 = 2036430657;
  }

  else
  {
    v2 = 1701670728;
  }

  if (a2)
  {
    v3 = 2036430657;
  }

  else
  {
    v3 = 1701670728;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_26B6EA5D4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_26B646AEC(uint64_t a1, uint64_t a2)
{
  v3 = 0xEF73657461647055;
  v4 = 0x6567617265766F63;
  v5 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v6 = 0x616470557473616CLL;
    }

    else
    {
      v6 = 1953718636;
    }

    if (v5 == 1)
    {
      v2 = 0xEB00000000736574;
    }

    else
    {
      v2 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = OUTLINED_FUNCTION_101(a1, a2, 0x6567617265766F63);
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v4 = 0x616470557473616CLL;
    }

    else
    {
      v4 = 1953718636;
    }

    if (a2 == 1)
    {
      v3 = 0xEB00000000736574;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  if (v6 == v4 && v2 == v3)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_43();
  }

  return v8 & 1;
}

uint64_t sub_26B646BE0(char a1, char a2)
{
  v2 = 0x7974706D65;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 1936943469;
    }

    else
    {
      v3 = 1818324839;
    }

    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
    v3 = 0x7974706D65;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 1936943469;
    }

    else
    {
      v2 = 1818324839;
    }

    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (v3 == v2 && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_21_0();
  }

  return v7 & 1;
}

uint64_t sub_26B646CAC()
{
  OUTLINED_FUNCTION_74();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_94();
      v0 = 0xEA00000000007373;
      break;
    case 2:
      v0 = 0xE500000000000000;
      break;
    case 3:
      v0 = 0xE500000000000000;
      break;
    case 4:
      OUTLINED_FUNCTION_92();
      goto LABEL_10;
    case 5:
      OUTLINED_FUNCTION_85();
      goto LABEL_10;
    case 6:
      OUTLINED_FUNCTION_84();
LABEL_10:
      v0 = 0xE900000000000064;
      break;
    case 7:
      OUTLINED_FUNCTION_89();
      break;
    case 8:
      OUTLINED_FUNCTION_82();
      break;
    case 9:
      OUTLINED_FUNCTION_12_0();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_73();
  switch(v5)
  {
    case 1:
      v4 = 0x6572676F72506E49;
      v1 = 0xEA00000000007373;
      break;
    case 2:
      v1 = 0xE500000000000000;
      v4 = 0x6B61657242;
      break;
    case 3:
      v1 = 0xE500000000000000;
      v4 = 0x6C616E6946;
      break;
    case 4:
      v4 = 0x656E6F7074736F50;
      goto LABEL_21;
    case 5:
      v4 = 0x65646E6570737553;
      goto LABEL_21;
    case 6:
      v4 = 0x656C6C65636E6143;
LABEL_21:
      v1 = 0xE900000000000064;
      break;
    case 7:
      v4 = 0x646579616C6544;
      break;
    case 8:
      v4 = 0x74696566726F46;
      break;
    case 9:
      OUTLINED_FUNCTION_17_0();
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_21_0();
  }

  return v7 & 1;
}

uint64_t sub_26B646E7C(unsigned __int8 a1, char a2)
{
  v2 = 0x656C746954;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x656C746954;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x656C746954627553;
      break;
    case 2:
      v5 = 0x646E496863746950;
      v3 = 0xEA00000000007865;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_32_0(19);
      break;
    case 4:
      v3 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_12_0();
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x656C746954627553;
      break;
    case 2:
      v2 = 0x646E496863746950;
      v6 = 0xEA00000000007865;
      break;
    case 3:
      OUTLINED_FUNCTION_31_0();
      break;
    case 4:
      v6 = 0xE700000000000000;
      OUTLINED_FUNCTION_17_0();
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
    v8 = OUTLINED_FUNCTION_21_0();
  }

  return v8 & 1;
}

uint64_t sub_26B646FC8(uint64_t a1, uint64_t a2)
{
  v3 = 0xEC00000070756F72;
  v4 = 0x476564697374754FLL;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x74756F6C6C6143;
    }

    else
    {
      v5 = 0x6E776F6E6B6E55;
    }

    v2 = 0xE700000000000000;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_101(a1, a2, 0x476564697374754FLL);
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v4 = 0x74756F6C6C6143;
    }

    else
    {
      v4 = 0x6E776F6E6B6E55;
    }

    v3 = 0xE700000000000000;
  }

  if (v5 == v4 && v2 == v3)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_43();
  }

  return v7 & 1;
}

uint64_t sub_26B6470B8(unsigned __int8 a1, char a2)
{
  v2 = 1701736270;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701736270;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_12_0();
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x74756F656D6954;
      break;
    case 3:
      v5 = 0x52746E6174736E49;
      v3 = 0xED000079616C7065;
      break;
    case 4:
      v5 = 0x755279616C706552;
      v3 = 0xEC000000676E696CLL;
      break;
    case 5:
      v5 = 0x726550664F646E45;
      v3 = 0xEB00000000646F69;
      break;
    case 6:
      v5 = 0x627553664F646E45;
      v3 = 0xEE00646F69726550;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      OUTLINED_FUNCTION_17_0();
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x74756F656D6954;
      break;
    case 3:
      v2 = 0x52746E6174736E49;
      v6 = 0xED000079616C7065;
      break;
    case 4:
      v2 = 0x755279616C706552;
      v6 = 0xEC000000676E696CLL;
      break;
    case 5:
      v2 = 0x726550664F646E45;
      v6 = 0xEB00000000646F69;
      break;
    case 6:
      v2 = 0x627553664F646E45;
      v6 = 0xEE00646F69726550;
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
    v8 = OUTLINED_FUNCTION_21_0();
  }

  return v8 & 1;
}

uint64_t sub_26B6472BC(uint64_t a1, uint64_t a2)
{
  v3 = 0xEF726F6C6F43646ELL;
  if (a1)
  {
    OUTLINED_FUNCTION_99();
    if (v7 == 1)
    {
      v10 = v6;
    }

    else
    {
      v10 = v6 + 4;
    }

    if (v7 == 1)
    {
      v2 = v8;
    }

    else
    {
      v2 = v9;
    }
  }

  else
  {
    v10 = OUTLINED_FUNCTION_101(a1, a2, 0x756F72676B636142);
  }

  if (v4)
  {
    OUTLINED_FUNCTION_97();
    if (v14 == 1)
    {
      v5 = v11;
    }

    else
    {
      v5 = v11 + 4;
    }

    if (v14 == 1)
    {
      v3 = v13;
    }

    else
    {
      v3 = v12;
    }
  }

  if (v10 == v5 && v2 == v3)
  {
    v16 = 1;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_43();
  }

  return v16 & 1;
}

uint64_t sub_26B647388(char a1, char a2)
{
  if (qword_26B6EDD08[a1] == qword_26B6EDD08[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_26B6EA5D4();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_26B6473F0(unsigned __int8 a1, char a2)
{
  v2 = 0x737472656C41;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x737472656C41;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 7105601;
      break;
    case 2:
      v5 = 0x6867696C68676948;
      v3 = 0xE900000000000074;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x79616C5079654BLL;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v5 = 0x6E6F6973736553;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 7105601;
      break;
    case 2:
      v2 = 0x6867696C68676948;
      v6 = 0xE900000000000074;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x79616C5079654BLL;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v2 = 0x6E6F6973736553;
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
    v8 = OUTLINED_FUNCTION_21_0();
  }

  return v8 & 1;
}

uint64_t sub_26B647554(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x736772612D636F6CLL;
  }

  else
  {
    v3 = 0x79656B2D636F6CLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x736772612D636F6CLL;
  }

  else
  {
    v5 = 0x79656B2D636F6CLL;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_21_0();
  }

  return v8 & 1;
}

uint64_t sub_26B6475E8()
{
  OUTLINED_FUNCTION_74();
  switch(v2)
  {
    case 1:
      v0 = 0xE400000000000000;
      break;
    case 2:
      v0 = 0xE600000000000000;
      break;
    case 3:
      v0 = 0xE300000000000000;
      break;
    case 4:
      v0 = 0xE800000000000000;
      break;
    case 5:
      OUTLINED_FUNCTION_96();
      v0 = 0xE900000000000073;
      break;
    case 6:
      v0 = 0xE300000000000000;
      break;
    case 7:
      v0 = 0xE600000000000000;
      break;
    case 8:
      v0 = 0xE500000000000000;
      break;
    case 9:
      OUTLINED_FUNCTION_32_0(18);
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_73();
  switch(v5)
  {
    case 1:
      v1 = 0xE400000000000000;
      v4 = 1718378824;
      break;
    case 2:
      v1 = 0xE600000000000000;
      v4 = 0x676E696E6E49;
      break;
    case 3:
      v1 = 0xE300000000000000;
      v4 = 7628115;
      break;
    case 4:
      v1 = 0xE800000000000000;
      v4 = 0x656D69747265764FLL;
      break;
    case 5:
      OUTLINED_FUNCTION_90();
      v1 = 0xE900000000000073;
      break;
    case 6:
      v1 = 0xE300000000000000;
      v4 = 7364940;
      break;
    case 7:
      v1 = 0xE600000000000000;
      v4 = 0x646F69726550;
      break;
    case 8:
      v1 = 0xE500000000000000;
      v4 = 0x646E756F52;
      break;
    case 9:
      OUTLINED_FUNCTION_31_0();
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_21_0();
  }

  return v7 & 1;
}

uint64_t sub_26B6477D8()
{
  OUTLINED_FUNCTION_74();
  switch(v2)
  {
    case 2:
      v3 = 1935961711;
      goto LABEL_4;
    case 3:
      v0 = 0xE600000000000000;
      break;
    case 4:
      v3 = 1702125940;
LABEL_4:
      v0 = v3 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 5:
      v0 = 0xEE006E776F44676ELL;
      break;
    case 6:
      OUTLINED_FUNCTION_32_0(19);
      break;
    case 7:
      v0 = 0xEA00000000006C61;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_73();
  switch(v6)
  {
    case 1:
      v5 = 0x73646E6F636573;
      break;
    case 2:
      v5 = 0x636573696C6C696DLL;
      v7 = 1935961711;
      goto LABEL_13;
    case 3:
      v1 = 0xE600000000000000;
      v5 = 0x646F69726570;
      break;
    case 4:
      v5 = 0x53676E696E6E7572;
      v7 = 1702125940;
LABEL_13:
      v1 = v7 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 5:
      v5 = 0x69746E756F437369;
      v1 = 0xEE006E776F44676ELL;
      break;
    case 6:
      OUTLINED_FUNCTION_31_0();
      break;
    case 7:
      v5 = 0x6E6F697469646461;
      v1 = 0xEA00000000006C61;
      break;
    default:
      break;
  }

  if (v4 == v5 && v0 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_21_0();
  }

  return v9 & 1;
}

uint64_t sub_26B6479E8(unsigned __int8 a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = a1;
  v6 = 0xEB0000000073726FLL;
  switch(v5)
  {
    case 1:
      v3 = 0xE500000000000000;
      v4 = 0x706D617473;
      break;
    case 2:
      v4 = OUTLINED_FUNCTION_80();
      v7 = 7237481;
      goto LABEL_7;
    case 3:
      v4 = OUTLINED_FUNCTION_80();
      goto LABEL_6;
    case 4:
      v4 = 0x74697465706D6F63;
LABEL_6:
      v7 = 7565935;
LABEL_7:
      v3 = v7 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 5:
      v3 = 0xE500000000000000;
      v4 = 0x6B636F6C63;
      break;
    case 6:
      v3 = 0xE600000000000000;
      v4 = 0x736C6576656CLL;
      break;
    case 7:
      v4 = 0x7069636974726170;
      v3 = 0xEC00000073746E61;
      break;
    case 8:
      v4 = 0x697461746F6E6E61;
      v3 = 0xEB00000000736E6FLL;
      break;
    default:
      break;
  }

  v8 = 0xE200000000000000;
  v9 = 25705;
  switch(a2)
  {
    case 1:
      v8 = 0xE500000000000000;
      v9 = 0x706D617473;
      break;
    case 2:
      OUTLINED_FUNCTION_78();
      v10 = 7237481;
      goto LABEL_18;
    case 3:
      OUTLINED_FUNCTION_78();
      goto LABEL_17;
    case 4:
      v9 = 0x74697465706D6F63;
LABEL_17:
      v10 = 7565935;
LABEL_18:
      v8 = v10 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 5:
      v8 = 0xE500000000000000;
      v9 = 0x6B636F6C63;
      break;
    case 6:
      v8 = 0xE600000000000000;
      v9 = 0x736C6576656CLL;
      break;
    case 7:
      v9 = 0x7069636974726170;
      v8 = 0xEC00000073746E61;
      break;
    case 8:
      v9 = 0x697461746F6E6E61;
      v8 = v6 - 1024;
      break;
    default:
      break;
  }

  if (v4 == v9 && v3 == v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_21_0();
  }

  return v12 & 1;
}

uint64_t sub_26B647BF4(unsigned __int8 a1, char a2)
{
  v2 = 0x6574696857;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x65757161704FLL;
    }

    else
    {
      v4 = 0x656E696C74754FLL;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x6574696857;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x65757161704FLL;
    }

    else
    {
      v2 = 0x656E696C74754FLL;
    }

    if (a2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_21_0();
  }

  return v8 & 1;
}

uint64_t sub_26B647CD8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (v2)
  {
    v4 = "";
  }

  else
  {
    v4 = "GAME_CLOCK_SUPPRESSED";
  }

  if (a2)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (a2)
  {
    v6 = "GAME_CLOCK_SUPPRESSED";
  }

  else
  {
    v6 = "";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_21_0();
  }

  return v8 & 1;
}

uint64_t sub_26B647D80(unsigned __int8 a1, char a2)
{
  v2 = 0xEB0000000053554CLL;
  v3 = 0x505F315F52454954;
  v4 = a1;
  v5 = 0x505F315F52454954;
  v6 = 0xEB0000000053554CLL;
  switch(v4)
  {
    case 1:
      v6 = 0xE600000000000000;
      v5 = 0x315F52454954;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v5 = 0x325F52454954;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_102();
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE600000000000000;
      v3 = 0x315F52454954;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v3 = 0x325F52454954;
      break;
    case 3:
      v2 = 0xE700000000000000;
      OUTLINED_FUNCTION_98();
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_43();
  }

  return v8 & 1;
}

uint64_t SportingEventSubscription.updatedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_updatedAt;
  OUTLINED_FUNCTION_19_0();
  swift_beginAccess();
  v4 = sub_26B6E9564();
  OUTLINED_FUNCTION_16(v4);
  return (*(v5 + 16))(a1, v1 + v3);
}

uint64_t SportingEventSubscription.mostRecentPlay.getter()
{
  v1 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_mostRecentPlay;
  OUTLINED_FUNCTION_19_0();
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t SportingEventSubscription.liveActivityTTLSeconds.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_liveActivityTTLSeconds;
  OUTLINED_FUNCTION_35_0();
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t (*SportingEventSubscription.liveActivityTTLSeconds.modify())()
{
  OUTLINED_FUNCTION_104();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26B648160(void *a1)
{
  v2 = (v1 + *a1);
  OUTLINED_FUNCTION_19_0();
  swift_beginAccess();
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

void SportingEventSubscription.view.getter(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_19_0();
  swift_beginAccess();
  v2 = OUTLINED_FUNCTION_50();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  sub_26B6482A8(v2, v3, v4, v5, v6, v7, v8);
}

void sub_26B6482A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != 1)
  {

    sub_26B64832C(a5);

    sub_26B64833C(a6, a7);
  }
}

uint64_t sub_26B64832C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_26B64833C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

__n128 SportingEventSubscription.view.setter(uint64_t a1)
{
  v14 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_view;
  OUTLINED_FUNCTION_35_0();
  swift_beginAccess();
  v5 = OUTLINED_FUNCTION_50();
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v14;
  *(v4 + 48) = v3;
  sub_26B6483C4(v5, v7, v8, v9, v10, v11, v12);
  return result;
}

void sub_26B6483C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != 1)
  {

    sub_26B648448(a5);

    sub_26B648458(a6, a7);
  }
}

uint64_t sub_26B648448(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_26B648458(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t (*SportingEventSubscription.view.modify())()
{
  OUTLINED_FUNCTION_104();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

BOOL sub_26B648500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_26B6EA714();
  sub_26B6E9AE4();
  v7 = sub_26B6EA744();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_26B6EA5D4();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

id SportingEventSubscription.sportingEventDetails.getter()
{
  v1 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails;
  OUTLINED_FUNCTION_19_0();
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

id sub_26B6486EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_26B648780(void *a1)
{
  v3 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails;
  OUTLINED_FUNCTION_35_0();
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_26B6487E8(v4);
}

void sub_26B6487E8(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC9SportsKit13SportingEvent__plays);
  v3 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails;
  swift_beginAccess();
  v4 = *(*(v1 + v3) + OBJC_IVAR____TtC9SportsKit13SportingEvent__plays);

  sub_26B648894(v5, v2);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    v8 = *(v1 + v3);
    sub_26B648A2C(v8);
  }
}

void sub_26B648894(unint64_t a1, unint64_t a2)
{
  type metadata accessor for SportingEventPlay();
  v4 = sub_26B651134(a2);
  v5 = 0;
  v6 = 0;
  v13 = sub_26B651134(a1);
  while (1)
  {
    if (v6 == v4)
    {
      if (v13 == v5)
      {
        return;
      }

      v7 = 0;
      v6 = v4;
    }

    else
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D67DB30](v6, a2);
      }

      else
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
          goto LABEL_27;
        }

        if (v6 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v8 = *(a2 + 32 + 8 * v6);
      }

      v7 = v8;
      if (__OFADD__(v6++, 1))
      {
        goto LABEL_28;
      }

      if (v13 == v5)
      {
        if (!v8)
        {
          return;
        }

LABEL_22:

        return;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x26D67DB30](v5, a1);
    }

    else
    {
      if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v10 = *(a1 + 8 * v5 + 32);
    }

    v11 = v10;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (!v7)
    {
      v7 = v10;
      if (!v10)
      {
        return;
      }

      goto LABEL_22;
    }

    if (!v10)
    {
      goto LABEL_22;
    }

    v12 = sub_26B6E9FA4();

    ++v5;
    if ((v12 & 1) == 0)
    {
      return;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_26B648A2C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9SportsKit13SportingEvent__plays);
  swift_bridgeObjectRetain_n();
  v33[0] = sub_26B69373C(v1);
  sub_26B651158(v33);

  v2 = v33[0];
  v3 = 0;
  v28 = sub_26B651134(v33[0]);
  v29 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_mostRecentPlay;
  v26 = v2 & 0xC000000000000001;
  v27 = v2;
  v25 = v2 + 32;
  while (1)
  {
    v4 = 0;
    v5 = byte_287C27F40[v3++ + 32];
    v31 = v3;
LABEL_3:
    if (v4 == v28)
    {
      goto LABEL_37;
    }

    if (!v26)
    {
      break;
    }

    v6 = MEMORY[0x26D67DB30](v4, v27);
LABEL_7:
    v7 = v6;
    if (__OFADD__(v4++, 1))
    {
      goto LABEL_42;
    }

    v9 = *&v6[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__levels];
    v10 = *(v9 + 16);
    v11 = (v9 + 32);

    while (1)
    {
      if (!v10)
      {

        v3 = v31;
        goto LABEL_3;
      }

      v12 = 0xE600000000000000;
      v13 = 0x737472656C41;
      switch(*v11)
      {
        case 1:
          v12 = 0xE300000000000000;
          v13 = 7105601;
          break;
        case 2:
          v13 = 0x6867696C68676948;
          v12 = 0xE900000000000074;
          break;
        case 3:
          v12 = 0xE700000000000000;
          v13 = 0x79616C5079654BLL;
          break;
        case 4:
          v12 = 0xE700000000000000;
          v13 = 0x6E6F6973736553;
          break;
        default:
          break;
      }

      v14 = 0xE600000000000000;
      v15 = 0x737472656C41;
      switch(v5)
      {
        case 1:
          v14 = 0xE300000000000000;
          v15 = 7105601;
          break;
        case 2:
          v15 = 0x6867696C68676948;
          v14 = 0xE900000000000074;
          break;
        case 3:
          v14 = 0xE700000000000000;
          v15 = 0x79616C5079654BLL;
          break;
        case 4:
          v14 = 0xE700000000000000;
          v15 = 0x6E6F6973736553;
          break;
        default:
          break;
      }

      if (v13 == v15 && v12 == v14)
      {
        break;
      }

      v17 = sub_26B6EA5D4();

      ++v11;
      --v10;
      if (v17)
      {
        goto LABEL_29;
      }
    }

LABEL_29:

    swift_beginAccess();
    v18 = sub_26B6D0650(v5, *(v30 + v29));
    if (v18)
    {
      v19 = v18;
      swift_endAccess();
      v20 = *&v19[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp];
      v21 = v19[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8];

      if ((v21 & 1) == 0)
      {
        if (v7[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8])
        {
          if (v20 != 0x8000000000000000)
          {
            goto LABEL_36;
          }
        }

        else if (*&v7[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp] < v20)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      swift_endAccess();
    }

    swift_beginAccess();
    v22 = v7;
    v23 = *(v30 + v29);
    swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v30 + v29);
    sub_26B67D9AC(v22, v5);
    *(v30 + v29) = v32;
    swift_endAccess();
LABEL_36:

    v3 = v31;
LABEL_37:
    if (v3 == 5)
    {
    }
  }

  if (v4 < *(v27 + 16))
  {
    v6 = *(v25 + 8 * v4);
    goto LABEL_7;
  }

  __break(1u);
LABEL_42:
  __break(1u);

  __break(1u);
  return result;
}

char *SportingEventSubscription.init(consumers:sportId:sport:leagueId:leagueAbbreviation:eventStateURL:fullPayloadBaseURL:imageServiceBaseURL:sportingEventDetails:heartbeatTTLSeconds:heartbeatSessionsTTLSeconds:liveActivityTTLSeconds:clockFeatures:registrationId:metadata:view:shouldDisplayPlayByPlay:qosRegistrationId:applicationType:clientApp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, double a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, __int128 *a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v32 = v31;
  ObjectType = swift_getObjectType();
  v74 = a32[2];
  v73 = *(a32 + 6);
  sub_26B6E9554();
  v36 = &v32[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_heartbeatTTLSeconds];
  *v36 = 0;
  v36[8] = 1;
  v37 = &v32[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_liveActivityTTLSeconds];
  *v37 = 0;
  v37[8] = 1;
  v38 = &v32[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_heartbeatSessionsTTLSeconds];
  *v38 = 0;
  v38[8] = 1;
  v39 = &v32[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_view];
  *v39 = xmmword_26B6ED030;
  *(v39 + 1) = 0u;
  *(v39 + 2) = 0u;
  v39[6] = 0;
  *&v32[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_consumers] = a1;
  v40 = *&a21[OBJC_IVAR____TtC9SportsKit13SportingEvent_canonicalId + 8];
  v41 = &v32[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_canonicalId];
  *v41 = *&a21[OBJC_IVAR____TtC9SportsKit13SportingEvent_canonicalId];
  v41[1] = v40;
  v42 = &v32[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportId];
  *v42 = a2;
  v42[1] = a3;
  v43 = &v32[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sport];
  *v43 = a4;
  v43[1] = a5;
  v44 = &v32[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_leagueId];
  *v44 = a6;
  v44[1] = a7;
  v45 = &v32[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_leagueAbbreviation];
  *v45 = a8;
  v45[1] = a17;
  *&v32[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails] = a21;
  sub_26B650B70(a18, &v32[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_eventStateURL], &qword_280409220, &qword_26B6EC920);
  sub_26B650B70(a19, &v32[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_fullPayloadBaseURL], &qword_280409220, &qword_26B6EC920);
  sub_26B650B70(a20, &v32[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_imageServiceBaseURL], &qword_280409220, &qword_26B6EC920);
  v46 = type metadata accessor for SportingEventRunningClock();
  v70 = *a32;
  v72 = a32[1];
  objc_allocWithZone(v46);

  v47 = a21;
  *&v32[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_runningClock] = sub_26B6BCC88(a28);
  OUTLINED_FUNCTION_35_0();
  swift_beginAccess();
  *v36 = a22;
  v36[8] = a23 & 1;
  if (a23)
  {
    v48 = 180.0;
  }

  else
  {
    v48 = a22;
  }

  OUTLINED_FUNCTION_35_0();
  swift_beginAccess();
  *v37 = a26;
  v37[8] = a27 & 1;
  sub_26B650B70(a31, &v32[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_metadata], &qword_280409360, &unk_26B6ED060);
  OUTLINED_FUNCTION_35_0();
  swift_beginAccess();
  v49 = *v39;
  v50 = v39[1];
  v51 = v39[2];
  v52 = v39[3];
  v53 = v39[4];
  v54 = v39[5];
  v55 = v39[6];
  *v39 = v70;
  *(v39 + 1) = v72;
  *(v39 + 2) = v74;
  v39[6] = v73;
  sub_26B6483C4(v49, v50, v51, v52, v53, v54, v55);
  v32[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_shouldDisplayPlayByPlay] = a33;
  type metadata accessor for SportingEventPlay();
  sub_26B650B1C();
  *&v32[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_mostRecentPlay] = sub_26B6E9944();
  v56 = &v32[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_registrationId];
  *v56 = a29;
  v56[1] = a30;
  v57 = &v32[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_qosRegistrationId];
  *v57 = a34;
  v57[1] = a35;
  v58 = &v32[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_applicationType];
  *v58 = a36;
  v58[1] = a37;
  v59 = &v32[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_clientApp];
  *v59 = a38;
  v59[1] = a39;
  v78.receiver = v32;
  v78.super_class = ObjectType;
  v60 = objc_msgSendSuper2(&v78, sel_init);
  v61 = *&v60[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_runningClock];
  v62 = v60;
  v63 = v61;
  v64._countAndFlagsBits = a4;
  v64._object = a5;
  Sport.init(rawValue:)(v64);
  sub_26B6BBC18(v47, &v77, v48);

  sub_26B648A2C(v47);
  sub_26B6493FC(0);

  sub_26B650BBC(a31, &qword_280409360, &unk_26B6ED060);
  sub_26B650BBC(a20, &qword_280409220, &qword_26B6EC920);
  sub_26B650BBC(a19, &qword_280409220, &qword_26B6EC920);
  sub_26B650BBC(a18, &qword_280409220, &qword_26B6EC920);
  return v62;
}

void sub_26B6493FC(uint64_t a1)
{
  if (a1)
  {
    v3 = *&v1[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_consumers];

    sub_26B6C2F68(v3, a1);

    sub_26B6C2F68(a1, v3);
    if (qword_2810CE9F0 != -1)
    {
      swift_once();
    }

    v4 = sub_26B6E95C4();
    __swift_project_value_buffer(v4, qword_2810D4308);
    v5 = v1;

    oslog = sub_26B6E95A4();
    v6 = sub_26B6E9E64();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v38 = v8;
      *v7 = 136315650;
      v9 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails;
      swift_beginAccess();
      v10 = (*&v5[v9] + OBJC_IVAR____TtC9SportsKit13SportingEvent_canonicalId);
      v11 = *v10;
      v12 = v10[1];

      v13 = sub_26B6D22D8(v11, v12, &v38);

      *(v7 + 4) = v13;
      *(v7 + 12) = 2080;
      v14 = sub_26B6E9E24();
      v16 = v15;

      v17 = sub_26B6D22D8(v14, v16, &v38);

      *(v7 + 14) = v17;
      *(v7 + 22) = 2080;
      v18 = sub_26B6E9E24();
      v20 = v19;

      v21 = sub_26B6D22D8(v18, v20, &v38);

      *(v7 + 24) = v21;
      _os_log_impl(&dword_26B630000, oslog, v6, "Updating consumers on SportingEventSubscription '%s': adding %s, removing %s", v7, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D67E950](v8, -1, -1);
      v22 = v7;
LABEL_10:
      MEMORY[0x26D67E950](v22, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_2810CE9F0 != -1)
    {
      swift_once();
    }

    v23 = sub_26B6E95C4();
    __swift_project_value_buffer(v23, qword_2810D4308);
    v24 = v1;
    oslog = sub_26B6E95A4();
    v25 = sub_26B6E9E64();

    if (os_log_type_enabled(oslog, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38 = v27;
      *v26 = 136315394;
      v28 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails;
      swift_beginAccess();
      v29 = (*&v24[v28] + OBJC_IVAR____TtC9SportsKit13SportingEvent_canonicalId);
      v30 = *v29;
      v31 = v29[1];

      v32 = sub_26B6D22D8(v30, v31, &v38);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2080;
      v33 = *&v24[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_consumers];
      v34 = sub_26B6E9E24();
      v36 = sub_26B6D22D8(v34, v35, &v38);

      *(v26 + 14) = v36;
      _os_log_impl(&dword_26B630000, oslog, v25, "Creating SportingEventSubscription '%s' with consumers: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D67E950](v27, -1, -1);
      v22 = v26;
      goto LABEL_10;
    }
  }
}

id sub_26B649884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, char a15, void *a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  ObjectType = swift_getObjectType();
  v74 = *(a20 + 32);
  v73 = *(a20 + 48);
  sub_26B6E9554();
  v32 = &v30[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_heartbeatTTLSeconds];
  *v32 = 0;
  v32[8] = 1;
  v33 = &v30[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_liveActivityTTLSeconds];
  *v33 = 0;
  v33[8] = 1;
  v34 = &v30[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_heartbeatSessionsTTLSeconds];
  *v34 = 0;
  v34[8] = 1;
  v35 = &v30[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_view];
  *v35 = xmmword_26B6ED030;
  *(v35 + 1) = 0u;
  *(v35 + 2) = 0u;
  v35[6] = 0;
  *&v30[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_consumers] = a1;
  v36 = *&a13[OBJC_IVAR____TtC9SportsKit13SportingEvent_canonicalId + 8];
  v37 = &v30[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_canonicalId];
  *v37 = *&a13[OBJC_IVAR____TtC9SportsKit13SportingEvent_canonicalId];
  v37[1] = v36;
  v38 = &v30[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportId];
  *v38 = a2;
  v38[1] = a3;
  v39 = &v30[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sport];
  *v39 = a4;
  v39[1] = a5;
  v40 = &v30[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_leagueId];
  *v40 = a6;
  v40[1] = a7;
  v41 = &v30[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_leagueAbbreviation];
  *v41 = a8;
  v41[1] = a9;
  *&v30[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails] = a13;
  sub_26B650B70(a10, &v30[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_eventStateURL], &qword_280409220, &qword_26B6EC920);
  OUTLINED_FUNCTION_59();
  sub_26B650B70(v42, v43, v44, v45);
  OUTLINED_FUNCTION_59();
  sub_26B650B70(v46, v47, v48, v49);
  *&v30[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_runningClock] = a16;
  OUTLINED_FUNCTION_35_0();
  swift_beginAccess();
  *v32 = a14;
  v32[8] = a15 & 1;
  OUTLINED_FUNCTION_35_0();
  swift_beginAccess();
  *v33 = a17;
  v33[8] = a18 & 1;
  sub_26B650B70(a19, &v30[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_metadata], &qword_280409360, &unk_26B6ED060);
  OUTLINED_FUNCTION_35_0();
  swift_beginAccess();
  v51 = *v35;
  v50 = v35[1];
  v52 = v35[2];
  v53 = v35[3];
  v54 = v35[4];
  v55 = v35[5];
  v56 = v35[6];
  v57 = *(a20 + 16);
  *v35 = *a20;
  *(v35 + 1) = v57;
  *(v35 + 2) = v74;
  v35[6] = v73;

  v58 = a13;
  v59 = a16;
  sub_26B6483C4(v51, v50, v52, v53, v54, v55, v56);
  v30[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_shouldDisplayPlayByPlay] = a21;
  *&v30[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_mostRecentPlay] = a22;
  v60 = &v30[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_registrationId];
  *v60 = a23;
  v60[1] = a24;
  v61 = &v30[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_qosRegistrationId];
  *v61 = a25;
  v61[1] = a26;
  v62 = &v30[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_applicationType];
  *v62 = a27;
  v62[1] = a28;
  v63 = &v30[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_clientApp];
  *v63 = a29;
  v63[1] = a30;
  v76.receiver = v30;
  v76.super_class = ObjectType;
  v64 = objc_msgSendSuper2(&v76, sel_init);
  sub_26B6493FC(0);

  sub_26B650BBC(a19, &qword_280409360, &unk_26B6ED060);
  sub_26B650BBC(a12, &qword_280409220, &qword_26B6EC920);
  sub_26B650BBC(a11, &qword_280409220, &qword_26B6EC920);
  sub_26B650BBC(a10, &qword_280409220, &qword_26B6EC920);
  return v64;
}

void SportingEventSubscription.update(sportingEventDetails:updatedAt:)()
{
  OUTLINED_FUNCTION_10_0();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  OUTLINED_FUNCTION_46(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18_0();
  v11 = sub_26B6E9564();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_61();
  v17 = v6;
  sub_26B648780(v17);
  sub_26B650B70(v4, v2, &qword_280409370, &qword_26B6ED070);
  if (__swift_getEnumTagSinglePayload(v2, 1, v11) == 1)
  {
    sub_26B6E9554();
    if (__swift_getEnumTagSinglePayload(v2, 1, v11) != 1)
    {
      sub_26B650BBC(v2, &qword_280409370, &qword_26B6ED070);
    }
  }

  else
  {
    (*(v14 + 32))(v1, v2, v11);
  }

  v18 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_updatedAt;
  OUTLINED_FUNCTION_104();
  swift_beginAccess();
  (*(v14 + 40))(v0 + v18, v1, v11);
  swift_endAccess();
  v19 = *(v0 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_runningClock);
  v20 = *(v0 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sport);
  v21 = *(v0 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sport + 8);

  v22._countAndFlagsBits = v20;
  v22._object = v21;
  Sport.init(rawValue:)(v22);
  v23 = v0 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_heartbeatTTLSeconds;
  OUTLINED_FUNCTION_19_0();
  swift_beginAccess();
  v24 = *v23;
  if (*(v23 + 8))
  {
    v24 = 180.0;
  }

  sub_26B6BBC18(v17, &v25, v24);
  OUTLINED_FUNCTION_8_0();
}

id SportingEventSubscription.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_26B649F78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6163696E6F6E6163 && a2 == 0xEB0000000064496CLL;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x644974726F7073 && a2 == 0xE700000000000000;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74726F7073 && a2 == 0xE500000000000000;
      if (v7 || (sub_26B6EA5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x644965756761656CLL && a2 == 0xE800000000000000;
        if (v8 || (sub_26B6EA5D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x800000026B6FB010 == a2;
          if (v9 || (sub_26B6EA5D4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4164657461647075 && a2 == 0xE900000000000074;
            if (v10 || (sub_26B6EA5D4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6563655274736F6DLL && a2 == 0xEE0079616C50746ELL;
              if (v11 || (sub_26B6EA5D4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
                if (v12 || (sub_26B6EA5D4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000017 && 0x800000026B6FB650 == a2;
                  if (v13 || (sub_26B6EA5D4() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000013 && 0x800000026B6FB670 == a2;
                    if (v14 || (sub_26B6EA5D4() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000016 && 0x800000026B6FB690 == a2;
                      if (v15 || (sub_26B6EA5D4() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001BLL && 0x800000026B6FB6B0 == a2;
                        if (v16 || (sub_26B6EA5D4() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x617453746E657665 && a2 == 0xED00004C52556574;
                          if (v17 || (sub_26B6EA5D4() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000012 && 0x800000026B6FB6E0 == a2;
                            if (v18 || (sub_26B6EA5D4() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000013 && 0x800000026B6FB700 == a2;
                              if (v19 || (sub_26B6EA5D4() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 2003134838 && a2 == 0xE400000000000000;
                                if (v20 || (sub_26B6EA5D4() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x72656D75736E6F63 && a2 == 0xE900000000000073;
                                  if (v21 || (sub_26B6EA5D4() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x6172747369676572 && a2 == 0xEE0064496E6F6974;
                                    if (v22 || (sub_26B6EA5D4() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000011 && 0x800000026B6FB740 == a2;
                                      if (v23 || (sub_26B6EA5D4() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x7041746E65696C63 && a2 == 0xE900000000000070;
                                        if (v24 || (sub_26B6EA5D4() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x746163696C707061 && a2 == 0xEF657079546E6F69;
                                          if (v25 || (sub_26B6EA5D4() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD000000000000014 && 0x800000026B6FB770 == a2;
                                            if (v26 || (sub_26B6EA5D4() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else if (a1 == 0x43676E696E6E7572 && a2 == 0xEC0000006B636F6CLL)
                                            {

                                              return 22;
                                            }

                                            else
                                            {
                                              v28 = sub_26B6EA5D4();

                                              if (v28)
                                              {
                                                return 22;
                                              }

                                              else
                                              {
                                                return 23;
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
            }
          }
        }
      }
    }
  }
}

uint64_t sub_26B64A668(char a1)
{
  result = 0x6163696E6F6E6163;
  switch(a1)
  {
    case 1:
      return 0x644974726F7073;
    case 2:
      return 0x74726F7073;
    case 3:
      return 0x644965756761656CLL;
    case 4:
      return 0xD000000000000012;
    case 5:
      return 0x4164657461647075;
    case 6:
      return 0x6563655274736F6DLL;
    case 7:
      v4 = 0x61646174656DLL;
      goto LABEL_12;
    case 8:
      v3 = 5;
      goto LABEL_23;
    case 9:
    case 14:
      return 0xD000000000000013;
    case 10:
      return 0xD000000000000016;
    case 11:
      v3 = 9;
LABEL_23:
      result = v3 | 0xD000000000000012;
      break;
    case 12:
      v4 = 0x53746E657665;
LABEL_12:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6174000000000000;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 2003134838;
      break;
    case 16:
      result = 0x72656D75736E6F63;
      break;
    case 17:
      result = 0x6172747369676572;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0x7041746E65696C63;
      break;
    case 20:
      result = 0x746163696C707061;
      break;
    case 21:
      result = 0xD000000000000014;
      break;
    case 22:
      result = 0x43676E696E6E7572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B64A920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B649F78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B64A948@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B64A660();
  *a1 = result;
  return result;
}

uint64_t sub_26B64A970(uint64_t a1)
{
  v2 = sub_26B650C14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B64A9AC(uint64_t a1)
{
  v2 = sub_26B650C14();

  return MEMORY[0x2821FE720](a1, v2);
}

id SportingEventSubscription.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void SportingEventSubscription.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_38();
  a19 = v24;
  a20 = v25;
  v26 = v20;
  v28 = v27;
  v29 = sub_26B6E9564();
  v30 = OUTLINED_FUNCTION_4(v29);
  v71 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_61();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409378, &qword_26B6ED078);
  OUTLINED_FUNCTION_4(v34);
  v36 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18_0();
  v40 = v28[4];
  OUTLINED_FUNCTION_4_0(v28, v28[3]);
  sub_26B650C14();
  OUTLINED_FUNCTION_83();
  sub_26B6EA7C4();
  v41 = *(v26 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_canonicalId);
  v42 = *(v26 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_canonicalId + 8);
  sub_26B6EA4F4();
  if (!v21)
  {
    OUTLINED_FUNCTION_81(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportId);
    OUTLINED_FUNCTION_28_0(1);
    OUTLINED_FUNCTION_44();
    sub_26B6EA4A4();
    OUTLINED_FUNCTION_81(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sport);
    OUTLINED_FUNCTION_28_0(2);
    OUTLINED_FUNCTION_44();
    sub_26B6EA4F4();
    OUTLINED_FUNCTION_81(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_leagueId);
    OUTLINED_FUNCTION_5_1(3);
    OUTLINED_FUNCTION_44();
    sub_26B6EA4A4();
    OUTLINED_FUNCTION_81(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_leagueAbbreviation);
    OUTLINED_FUNCTION_5_1(4);
    OUTLINED_FUNCTION_44();
    sub_26B6EA4A4();
    OUTLINED_FUNCTION_19_0();
    swift_beginAccess();
    (*(v71 + 16))();
    OUTLINED_FUNCTION_28_0(5);
    OUTLINED_FUNCTION_9_1();
    sub_26B650D78(v43, v44);
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_44();
    sub_26B6EA534();
    (*(v71 + 8))(v22, v29);
    v45 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_mostRecentPlay;
    OUTLINED_FUNCTION_19_0();
    swift_beginAccess();
    v72 = *(v26 + v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409380, &unk_26B6ED080);
    sub_26B650C68();
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_44();
    sub_26B6EA534();
    OUTLINED_FUNCTION_28_0(7);
    type metadata accessor for SportingEventSubscription.Metadata(0);
    OUTLINED_FUNCTION_42();
    sub_26B650D78(v46, v47);
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_44();
    sub_26B6EA4E4();
    v48 = *(v26 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_shouldDisplayPlayByPlay);
    OUTLINED_FUNCTION_28_0(8);
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_44();
    sub_26B6EA504();
    v49 = (v26 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_heartbeatTTLSeconds);
    OUTLINED_FUNCTION_19_0();
    swift_beginAccess();
    v50 = *v49;
    v51 = *(v49 + 8);
    OUTLINED_FUNCTION_5_1(9);
    OUTLINED_FUNCTION_44();
    sub_26B6EA4C4();
    v52 = (v26 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_liveActivityTTLSeconds);
    OUTLINED_FUNCTION_19_0();
    swift_beginAccess();
    v53 = *v52;
    v54 = *(v52 + 8);
    OUTLINED_FUNCTION_5_1(10);
    OUTLINED_FUNCTION_44();
    sub_26B6EA4C4();
    v55 = (v26 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_heartbeatSessionsTTLSeconds);
    OUTLINED_FUNCTION_19_0();
    swift_beginAccess();
    v56 = *v55;
    v57 = *(v55 + 8);
    OUTLINED_FUNCTION_5_1(11);
    OUTLINED_FUNCTION_38_0();
    sub_26B6EA4C4();
    OUTLINED_FUNCTION_28_0(12);
    sub_26B6E93B4();
    OUTLINED_FUNCTION_41();
    sub_26B650D78(v58, v59);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_19_0();
    swift_beginAccess();
    v73 = OUTLINED_FUNCTION_50();
    sub_26B6482A8(v73, v60, v61, v62, v63, v64, v65);
    sub_26B650DE0();
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_38_0();
    sub_26B6EA4E4();
    OUTLINED_FUNCTION_52(&a15);
    v74 = *(v26 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_consumers);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409248, &qword_26B6ECA18);
    sub_26B641C48(&qword_2810CC288);
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_38_0();
    sub_26B6EA534();
    OUTLINED_FUNCTION_105(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_registrationId);
    OUTLINED_FUNCTION_5_1(17);
    OUTLINED_FUNCTION_38_0();
    sub_26B6EA4F4();
    OUTLINED_FUNCTION_105(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_qosRegistrationId);
    OUTLINED_FUNCTION_5_1(18);
    OUTLINED_FUNCTION_38_0();
    sub_26B6EA4A4();
    OUTLINED_FUNCTION_105(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_clientApp);
    OUTLINED_FUNCTION_5_1(19);
    OUTLINED_FUNCTION_38_0();
    sub_26B6EA4F4();
    OUTLINED_FUNCTION_105(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_applicationType);
    OUTLINED_FUNCTION_5_1(20);
    OUTLINED_FUNCTION_38_0();
    sub_26B6EA4A4();
    v66 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails;
    OUTLINED_FUNCTION_19_0();
    swift_beginAccess();
    v75 = *(v26 + v66);
    type metadata accessor for SportingEvent();
    OUTLINED_FUNCTION_40_0();
    sub_26B650D78(v67, v68);
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_38_0();
    sub_26B6EA534();
    v76 = *(v26 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_runningClock);
    type metadata accessor for SportingEventRunningClock();
    OUTLINED_FUNCTION_39_0();
    sub_26B650D78(v69, v70);
    OUTLINED_FUNCTION_38_0();
    sub_26B6EA534();
  }

  (*(v36 + 8))(v23, v34);
  OUTLINED_FUNCTION_37();
}

void SportingEventSubscription.init(from:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_54();
  v2 = v0;
  v4 = v3;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409220, &qword_26B6EC920);
  v6 = OUTLINED_FUNCTION_46(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_30_0();
  *&v137 = v9 - v10;
  v12 = MEMORY[0x28223BE20](v11);
  *&v133 = v130 - v13;
  MEMORY[0x28223BE20](v12);
  v132 = v130 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409360, &unk_26B6ED060);
  OUTLINED_FUNCTION_46(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v20 = v130 - v19;
  v145 = sub_26B6E9564();
  v21 = OUTLINED_FUNCTION_4(v145);
  v144 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_0();
  v27 = v26 - v25;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804093B8, &qword_26B6ED090);
  OUTLINED_FUNCTION_4(v135);
  v134 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_18_0();
  v143 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_updatedAt;
  sub_26B6E9554();
  v32 = &v2[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_heartbeatTTLSeconds];
  *v32 = 0;
  v32[8] = 1;
  v33 = &v2[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_liveActivityTTLSeconds];
  *v33 = 0;
  v33[8] = 1;
  v34 = &v2[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_heartbeatSessionsTTLSeconds];
  *v34 = 0;
  v34[8] = 1;
  v142 = v2;
  v35 = &v2[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_view];
  *v35 = xmmword_26B6ED030;
  *(v35 + 1) = 0u;
  *(v35 + 2) = 0u;
  v139 = v35;
  *(v35 + 6) = 0;
  v37 = v4[3];
  v36 = v4[4];
  v138 = v4;
  OUTLINED_FUNCTION_4_0(v4, v37);
  sub_26B650C14();
  v136 = v1;
  OUTLINED_FUNCTION_83();
  v38 = v140;
  sub_26B6EA784();
  v39 = &qword_280409000;
  if (v38)
  {
    OUTLINED_FUNCTION_91();
    LODWORD(v97) = 0;
    OUTLINED_FUNCTION_2_3();
    v42 = v142;
    *&v140 = v38;
    __swift_destroy_boxed_opaque_existential_1(v138);
    LODWORD(v131) = 0;
    v44 = 0;
    v45 = 0;
    LODWORD(v74) = 0;
    LODWORD(v137) = 0;
    v46 = 0;
  }

  else
  {
    *&v140 = v27;
    v130[1] = v32;
    v131 = v20;
    v130[0] = v33;
    v27 = v133;
    v40 = v137;
    LOBYTE(v148) = 0;
    v41 = sub_26B6EA424();
    v58 = v142;
    OUTLINED_FUNCTION_70(v41, v59, OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_canonicalId);
    OUTLINED_FUNCTION_7_1(1);
    v60 = sub_26B6EA3D4();
    OUTLINED_FUNCTION_70(v60, v61, OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportId);
    OUTLINED_FUNCTION_7_1(2);
    v62 = sub_26B6EA424();
    OUTLINED_FUNCTION_70(v62, v63, OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sport);
    OUTLINED_FUNCTION_7_1(3);
    v64 = sub_26B6EA3D4();
    OUTLINED_FUNCTION_70(v64, v65, OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_leagueId);
    OUTLINED_FUNCTION_7_1(4);
    v66 = sub_26B6EA3D4();
    OUTLINED_FUNCTION_70(v66, v67, OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_leagueAbbreviation);
    LOBYTE(v148) = 5;
    OUTLINED_FUNCTION_9_1();
    sub_26B650D78(v68, v69);
    v70 = v140;
    v39 = v145;
    OUTLINED_FUNCTION_14_0();
    sub_26B6EA464();
    v71 = v143;
    OUTLINED_FUNCTION_104();
    swift_beginAccess();
    (*(v144 + 40))(v58 + v71, v70, v39);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409380, &unk_26B6ED080);
    v152 = 6;
    sub_26B650E34();
    OUTLINED_FUNCTION_62();
    OUTLINED_FUNCTION_14_0();
    sub_26B6EA464();
    *(v58 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_mostRecentPlay) = v148;
    type metadata accessor for SportingEventSubscription.Metadata(0);
    LOBYTE(v148) = 7;
    OUTLINED_FUNCTION_42();
    sub_26B650D78(v72, v73);
    v74 = v131;
    OUTLINED_FUNCTION_62();
    OUTLINED_FUNCTION_14_0();
    sub_26B6EA414();
    v75 = v134;
    OUTLINED_FUNCTION_48(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_metadata);
    sub_26B650F44(v74, v76, v77, v78);
    OUTLINED_FUNCTION_7_1(8);
    v142[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_shouldDisplayPlayByPlay] = sub_26B6EA434() & 1;
    OUTLINED_FUNCTION_7_1(9);
    v79 = sub_26B6EA3F4();
    LOBYTE(v39) = v80;
    OUTLINED_FUNCTION_68(&v151);
    OUTLINED_FUNCTION_35_0();
    swift_beginAccess();
    *v75 = v79;
    *(v75 + 8) = v39 & 1;
    OUTLINED_FUNCTION_8_1(10);
    v81 = sub_26B6EA3F4();
    LOBYTE(v39) = v82;
    OUTLINED_FUNCTION_68(&v150 + 8);
    OUTLINED_FUNCTION_35_0();
    swift_beginAccess();
    *v75 = v81;
    *(v75 + 8) = v39 & 1;
    OUTLINED_FUNCTION_8_1(11);
    v83 = sub_26B6EA3F4();
    LOBYTE(v39) = v84;
    OUTLINED_FUNCTION_35_0();
    swift_beginAccess();
    *v34 = v83;
    v34[8] = v39 & 1;
    LODWORD(v39) = sub_26B6E93B4();
    LOBYTE(v148) = 12;
    OUTLINED_FUNCTION_41();
    sub_26B650D78(v85, v86);
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_14_0();
    sub_26B6EA414();
    OUTLINED_FUNCTION_48(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_eventStateURL);
    sub_26B650F44(v132, v87, v88, v89);
    LOBYTE(v148) = 13;
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_14_0();
    sub_26B6EA414();
    OUTLINED_FUNCTION_48(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_fullPayloadBaseURL);
    sub_26B650F44(v27, v90, v91, v92);
    LOBYTE(v148) = 14;
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_14_0();
    sub_26B6EA414();
    OUTLINED_FUNCTION_48(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_imageServiceBaseURL);
    sub_26B650F44(v40, v93, v94, v95);
    v147 = 15;
    sub_26B650F90();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_14_0();
    sub_26B6EA414();
    v140 = v150;
    v96 = v151;
    v137 = v149;
    v133 = v148;
    v97 = v139;
    OUTLINED_FUNCTION_35_0();
    swift_beginAccess();
    v98 = *v97;
    v99 = v97[1];
    v100 = v97[2];
    v101 = v97[3];
    v102 = v97[4];
    v103 = v97[5];
    v104 = v97[6];
    v105 = v137;
    *v97 = v133;
    *(v97 + 1) = v105;
    *(v97 + 2) = v140;
    v97[6] = v96;
    sub_26B6483C4(v98, v99, v100, v101, v102, v103, v104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409248, &qword_26B6ECA18);
    sub_26B641C48(&qword_2810CDBC0);
    OUTLINED_FUNCTION_13_0();
    sub_26B6EA464();
    OUTLINED_FUNCTION_63(v148);
    OUTLINED_FUNCTION_8_1(17);
    sub_26B6EA424();
    LODWORD(v137) = 1;
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_23_0(v106, v107, OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_registrationId);
    OUTLINED_FUNCTION_8_1(18);
    OUTLINED_FUNCTION_103();
    sub_26B6EA3D4();
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_23_0(v111, v112, OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_qosRegistrationId);
    OUTLINED_FUNCTION_8_1(19);
    OUTLINED_FUNCTION_103();
    sub_26B6EA424();
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_23_0(v113, v114, OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_clientApp);
    OUTLINED_FUNCTION_8_1(20);
    OUTLINED_FUNCTION_103();
    sub_26B6EA3D4();
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_23_0(v115, v116, OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_applicationType);
    v45 = type metadata accessor for SportingEvent();
    OUTLINED_FUNCTION_40_0();
    sub_26B650D78(v117, v118);
    OUTLINED_FUNCTION_13_0();
    v119 = v140;
    sub_26B6EA464();
    OUTLINED_FUNCTION_54();
    if (v119)
    {
      v120 = OUTLINED_FUNCTION_0_4();
      v121(v120);
      LODWORD(v131) = 0;
      OUTLINED_FUNCTION_107();
      v44 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_63(v148);
      v45 = type metadata accessor for SportingEventRunningClock();
      OUTLINED_FUNCTION_39_0();
      sub_26B650D78(v122, v123);
      OUTLINED_FUNCTION_13_0();
      v124 = v140;
      sub_26B6EA464();
      OUTLINED_FUNCTION_54();
      if (!v124)
      {
        OUTLINED_FUNCTION_63(v148);
        v146.receiver = v127;
        v146.super_class = ObjectType;
        objc_msgSendSuper2(&v146, sel_init);
        v128 = OUTLINED_FUNCTION_0_4();
        v129(v128);
        __swift_destroy_boxed_opaque_existential_1(v138);
        goto LABEL_33;
      }

      v125 = OUTLINED_FUNCTION_0_4();
      v126(v125);
      OUTLINED_FUNCTION_107();
      v44 = 1;
      LODWORD(v131) = 1;
    }

    __swift_destroy_boxed_opaque_existential_1(v138);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_47(v108);
    *(v110 - 256) = v109;
    LODWORD(v136) = v109;
    v46 = 1;
    v42 = v142;
    OUTLINED_FUNCTION_27_0(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_canonicalId);

    if (v34)
    {
      OUTLINED_FUNCTION_27_0(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportId);

      if ((v39 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  if (!v39)
  {
LABEL_6:
    if (v27)
    {
      goto LABEL_7;
    }

LABEL_11:
    v43 = v145;
    if (!v97)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_10:
  OUTLINED_FUNCTION_27_0(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sport);

  if ((v27 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_27_0(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_leagueId);

  v43 = v145;
  if (v97)
  {
LABEL_12:
    OUTLINED_FUNCTION_27_0(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_leagueAbbreviation);
  }

LABEL_13:
  (*(v144 + 8))(&v42[v143], v43);
  if (v132)
  {
    v47 = *&v42[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_mostRecentPlay];
  }

  if (v133)
  {
    sub_26B650BBC(&v42[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_metadata], &qword_280409360, &unk_26B6ED060);
  }

  if (v134)
  {
    sub_26B650BBC(&v42[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_eventStateURL], &qword_280409220, &qword_26B6EC920);
  }

  if (v135)
  {
    sub_26B650BBC(&v42[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_fullPayloadBaseURL], &qword_280409220, &qword_26B6EC920);
  }

  if (v136)
  {
    sub_26B650BBC(&v42[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_imageServiceBaseURL], &qword_280409220, &qword_26B6EC920);
  }

  v48 = OUTLINED_FUNCTION_87(v139);
  sub_26B6483C4(v48, v49, v50, v51, v52, v53, v54);
  if (v46)
  {
    v55 = *&v42[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_consumers];
  }

  if (v137)
  {
    OUTLINED_FUNCTION_27_0(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_registrationId);

    if (!v74)
    {
LABEL_27:
      if (!v45)
      {
        goto LABEL_28;
      }

LABEL_36:
      OUTLINED_FUNCTION_27_0(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_clientApp);

      if (!v44)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }
  }

  else if (!v74)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_27_0(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_qosRegistrationId);

  if (v45)
  {
    goto LABEL_36;
  }

LABEL_28:
  if (v44)
  {
LABEL_29:
    OUTLINED_FUNCTION_27_0(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_applicationType);
  }

LABEL_30:
  if (v131)
  {
  }

  v56 = *((*MEMORY[0x277D85000] & *v42) + 0x30);
  v57 = *((*MEMORY[0x277D85000] & *v42) + 0x34);
  swift_deallocPartialClassInstance();
LABEL_33:
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_37();
}

void sub_26B64C404(void *a1@<X8>)
{
  SportingEventSubscription.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_26B64C468(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000026B6FB7A0 == a2;
  if (v3 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x800000026B6FB7C0 == a2;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000018 && 0x800000026B6FB7E0 == a2)
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

unint64_t sub_26B64C588(char a1)
{
  result = 0xD000000000000011;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000013;
    }

    else
    {
      return 0xD000000000000018;
    }
  }

  return result;
}

uint64_t sub_26B64C5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B64C468(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B64C610@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B64C580();
  *a1 = result;
  return result;
}

uint64_t sub_26B64C638(uint64_t a1)
{
  v2 = sub_26B650FE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B64C674(uint64_t a1)
{
  v2 = sub_26B650FE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B64C6B0(uint64_t a1)
{
  v2 = sub_26B65108C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B64C6EC(uint64_t a1)
{
  v2 = sub_26B65108C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B64C728(uint64_t a1)
{
  v2 = sub_26B6510E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B64C764(uint64_t a1)
{
  v2 = sub_26B6510E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B64C7A0(uint64_t a1)
{
  v2 = sub_26B651038();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B64C7DC(uint64_t a1)
{
  v2 = sub_26B651038();

  return MEMORY[0x2821FE720](a1, v2);
}

void SportsSubscriptionError.encode(to:)()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804093F0, &qword_26B6ED098);
  v4 = OUTLINED_FUNCTION_4(v3);
  v35[7] = v5;
  v35[8] = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_71();
  v35[6] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804093F8, &qword_26B6ED0A0);
  v11 = OUTLINED_FUNCTION_4(v10);
  v35[4] = v12;
  v35[5] = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_71();
  v35[3] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409400, &qword_26B6ED0A8);
  v18 = OUTLINED_FUNCTION_4(v17);
  v35[1] = v19;
  v35[2] = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_61();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409408, &qword_26B6ED0B0);
  OUTLINED_FUNCTION_4(v23);
  v25 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  v30 = v35 - v29;
  v31 = *v0;
  v32 = v2[4];
  OUTLINED_FUNCTION_4_0(v2, v2[3]);
  sub_26B650FE4();
  sub_26B6EA7C4();
  if (v31)
  {
    if (v31 == 1)
    {
      OUTLINED_FUNCTION_64();
      sub_26B65108C();
    }

    else
    {
      sub_26B651038();
    }

    OUTLINED_FUNCTION_56();
  }

  else
  {
    sub_26B6510E0();
    OUTLINED_FUNCTION_56();
  }

  v33 = OUTLINED_FUNCTION_93();
  v34(v33);
  (*(v25 + 8))(v30, v23);
  OUTLINED_FUNCTION_37();
}

uint64_t SportsSubscriptionError.hashValue.getter()
{
  v1 = *v0;
  sub_26B6EA714();
  MEMORY[0x26D67E0E0](v1);
  return sub_26B6EA744();
}

void SportsSubscriptionError.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v73 = v0;
  v3 = v2;
  v68 = v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409430, &qword_26B6ED0B8);
  OUTLINED_FUNCTION_4(v72);
  v69 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_71();
  v71 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409438, &qword_26B6ED0C0);
  v11 = OUTLINED_FUNCTION_4(v10);
  v66 = v12;
  v67 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409440, &qword_26B6ED0C8);
  OUTLINED_FUNCTION_4(v16);
  v65 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409448, &qword_26B6ED0D0);
  OUTLINED_FUNCTION_4(v23);
  v70 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  v29 = &v60 - v28;
  v30 = v3[4];
  OUTLINED_FUNCTION_4_0(v3, v3[3]);
  sub_26B650FE4();
  v31 = v73;
  sub_26B6EA784();
  if (v31)
  {
    goto LABEL_10;
  }

  v62 = v16;
  v63 = v22;
  v64 = v1;
  v33 = v71;
  v32 = v72;
  v73 = v3;
  v34 = sub_26B6EA474();
  sub_26B65251C(v34, 0);
  if (v37 == v38 >> 1)
  {
    goto LABEL_9;
  }

  v61 = 0;
  if (v37 < (v38 >> 1))
  {
    LODWORD(v39) = *(v36 + v37);
    sub_26B65424C(v37 + 1, v38 >> 1, v35, v36, v37, v38);
    v41 = v40;
    v43 = v42;
    swift_unknownObjectRelease();
    v44 = v41 == v43 >> 1;
    v45 = v69;
    if (v44)
    {
      if (v39)
      {
        if (v39 == 1)
        {
          OUTLINED_FUNCTION_64();
          sub_26B65108C();
          v46 = v64;
          OUTLINED_FUNCTION_109();
          v47 = v68;
          v48 = v23;
          v49 = v70;
          swift_unknownObjectRelease();
          (*(v66 + 8))(v46, v67);
          (*(v49 + 8))(v29, v48);
        }

        else
        {
          LODWORD(v67) = v39;
          sub_26B651038();
          v54 = v61;
          sub_26B6EA3A4();
          v47 = v68;
          v39 = v23;
          v55 = v70;
          if (v54)
          {
            (*(v70 + 8))(v29, v39);
            swift_unknownObjectRelease();
            v3 = v73;
            goto LABEL_10;
          }

          swift_unknownObjectRelease();
          (*(v45 + 8))(v33, v32);
          (*(v55 + 8))(v29, v39);
          LOBYTE(v39) = v67;
        }
      }

      else
      {
        sub_26B6510E0();
        OUTLINED_FUNCTION_109();
        swift_unknownObjectRelease();
        v56 = OUTLINED_FUNCTION_93();
        v57(v56, v62);
        v58 = OUTLINED_FUNCTION_95();
        v59(v58);
        v47 = v68;
      }

      *v47 = v39;
      __swift_destroy_boxed_opaque_existential_1(v73);
      goto LABEL_11;
    }

LABEL_9:
    v50 = sub_26B6EA1A4();
    swift_allocError();
    v52 = v51;
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409450, &qword_26B6ED0D8) + 48);
    *v52 = &type metadata for SportsSubscriptionError;
    sub_26B6EA3B4();
    sub_26B6EA194();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D84160], v50);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v70 + 8))(v29, v23);
    v3 = v73;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_11:
    OUTLINED_FUNCTION_37();
    return;
  }

  __break(1u);
}

uint64_t SportingEventSubscription.flatlineDate.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_26B6E9564();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_61();
  v10 = (v1 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_heartbeatTTLSeconds);
  OUTLINED_FUNCTION_19_0();
  swift_beginAccess();
  if (v10[1])
  {
    v11 = 1;
  }

  else
  {
    v12 = *v10;
    v13 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_updatedAt;
    OUTLINED_FUNCTION_19_0();
    swift_beginAccess();
    (*(v7 + 16))(v2, v1 + v13, v4);
    sub_26B6E94B4();
    (*(v7 + 8))(v2, v4);
    v11 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v11, 1, v4);
}

uint64_t SportingEventSubscription.isFlatlined.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  OUTLINED_FUNCTION_46(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  v6 = sub_26B6E9564();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_0();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - v16;
  SportingEventSubscription.flatlineDate.getter(v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_26B650BBC(v5, &qword_280409370, &qword_26B6ED070);
    v18 = 0;
  }

  else
  {
    (*(v9 + 32))(v17, v5, v6);
    sub_26B6E9554();
    v18 = sub_26B6E94E4();
    v19 = *(v9 + 8);
    v19(v14, v6);
    v19(v17, v6);
  }

  return v18 & 1;
}

void SportingEventSubscription.subscriptionErrors.getter()
{
  v1 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails;
  OUTLINED_FUNCTION_19_0();
  swift_beginAccess();
  switch(*(*(v0 + v1) + OBJC_IVAR____TtC9SportsKit13SportingEvent_progressStatus))
  {
    case 1:
      OUTLINED_FUNCTION_94();
      goto LABEL_11;
    case 3:

      return;
    case 4:
      OUTLINED_FUNCTION_92();
      goto LABEL_11;
    case 5:
      OUTLINED_FUNCTION_85();
      goto LABEL_11;
    case 6:
      OUTLINED_FUNCTION_84();
      goto LABEL_11;
    case 7:
      OUTLINED_FUNCTION_89();
      goto LABEL_11;
    case 8:
      OUTLINED_FUNCTION_82();
      goto LABEL_11;
    case 9:
      OUTLINED_FUNCTION_12_0();
      goto LABEL_11;
    default:
LABEL_11:
      v2 = sub_26B6EA5D4();

      if (v2)
      {
        return;
      }

      v28 = MEMORY[0x277D84FA0];
      if (SportingEventSubscription.isFlatlined.getter())
      {
        sub_26B652558(&v27, 0);
      }

      v3 = *(*(v0 + v1) + OBJC_IVAR____TtC9SportsKit13SportingEvent__coverage);
      if (!v3 || (v4 = *(v3 + OBJC_IVAR____TtC9SportsKit21SportingEventCoverage__ingestion)) == 0 || (v5 = *(v4 + OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__coverageUpdates)) == 0)
      {
        v19 = MEMORY[0x277D84F90];
LABEL_44:
        sub_26B64D780(v19, v28);
        return;
      }

      v6 = sub_26B651134(*(v4 + OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__coverageUpdates));

      v7 = 0;
      v8 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v6 == v7)
        {

          v20 = *(v8 + 16);
          if (v20)
          {
            v21 = (v8 + 32);
            v19 = MEMORY[0x277D84F90];
            do
            {
              if (*v21)
              {
                v22 = 2;
              }

              else
              {
                v22 = 1;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_26B63A9A4(0, *(v19 + 16) + 1, 1, v19);
                v19 = v25;
              }

              v24 = *(v19 + 16);
              v23 = *(v19 + 24);
              if (v24 >= v23 >> 1)
              {
                sub_26B63A9A4(v23 > 1, v24 + 1, 1, v19);
                v19 = v26;
              }

              *(v19 + 16) = v24 + 1;
              *(v19 + v24 + 32) = v22;
              ++v21;
              --v20;
            }

            while (v20);
          }

          else
          {
            v19 = MEMORY[0x277D84F90];
          }

          goto LABEL_44;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x26D67DB30](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = v9[OBJC_IVAR____TtC9SportsKit36SportingEventCoverageIngestionUpdate__statusCode];

        ++v7;
        if (v11 != 2)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26B63A9CC(0, *(v8 + 16) + 1, 1, v8);
            v8 = v15;
          }

          v12 = *(v8 + 16);
          v13 = *(v8 + 24);
          v14 = v12 + 1;
          if (v12 >= v13 >> 1)
          {
            v16 = v8;
            v17 = *(v8 + 16);
            sub_26B63A9CC(v13 > 1, v12 + 1, 1, v16);
            v12 = v17;
            v8 = v18;
          }

          *(v8 + 16) = v14;
          *(v8 + v12 + 32) = v11 & 1;
          v7 = v10;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
      return;
  }
}

uint64_t sub_26B64D780(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_26B652558(&v7, *(a1 + v4++));
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = a2;
  }

  return v5;
}

uint64_t sub_26B64D7FC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_26B652648(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26B64D900(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v9 = a2;
  v4 = *(result + 16);
  for (i = (result + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_26B652648(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t SportingEventSubscription.Metadata.eventStartDate.getter()
{
  v0 = sub_26B6E9564();
  OUTLINED_FUNCTION_16(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_22_0();

  return v4(v3);
}

uint64_t SportingEventSubscription.Metadata.competitors.getter()
{
  v1 = *(v0 + *(type metadata accessor for SportingEventSubscription.Metadata(0) + 20));
}

uint64_t SportingEventSubscription.Metadata.preGameTitle.getter()
{
  v0 = type metadata accessor for SportingEventSubscription.Metadata(0);
  OUTLINED_FUNCTION_25_0(*(v0 + 24));
  return OUTLINED_FUNCTION_22_0();
}

uint64_t SportingEventSubscription.Metadata.shortTitle.getter()
{
  v0 = type metadata accessor for SportingEventSubscription.Metadata(0);
  OUTLINED_FUNCTION_25_0(*(v0 + 28));
  return OUTLINED_FUNCTION_22_0();
}

uint64_t SportingEventSubscription.Metadata.eventURL.getter()
{
  v0 = type metadata accessor for SportingEventSubscription.Metadata(0);
  OUTLINED_FUNCTION_25_0(*(v0 + 32));
  return OUTLINED_FUNCTION_22_0();
}

uint64_t SportingEventSubscription.Metadata.localizedLeagueName.getter()
{
  v0 = type metadata accessor for SportingEventSubscription.Metadata(0);
  OUTLINED_FUNCTION_25_0(*(v0 + 36));
  return OUTLINED_FUNCTION_22_0();
}

int *SportingEventSubscription.Metadata.init(eventStartDate:competitors:preGameTitle:shortTitle:eventURL:localizedLeagueName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v19 = sub_26B6E9564();
  OUTLINED_FUNCTION_16(v19);
  (*(v20 + 32))(a9, a1);
  result = type metadata accessor for SportingEventSubscription.Metadata(0);
  *(a9 + result[5]) = a2;
  v22 = (a9 + result[6]);
  *v22 = a3;
  v22[1] = a4;
  v23 = (a9 + result[7]);
  *v23 = a5;
  v23[1] = a6;
  v24 = (a9 + result[8]);
  *v24 = a7;
  v24[1] = a8;
  v25 = (a9 + result[9]);
  *v25 = a10;
  v25[1] = a11;
  return result;
}

uint64_t sub_26B64DBDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617453746E657665 && a2 == 0xEE00657461447472;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74697465706D6F63 && a2 == 0xEB0000000073726FLL;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x54656D6147657270 && a2 == 0xEC000000656C7469;
      if (v7 || (sub_26B6EA5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74695474726F6873 && a2 == 0xEA0000000000656CLL;
        if (v8 || (sub_26B6EA5D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4C5255746E657665 && a2 == 0xE800000000000000;
          if (v9 || (sub_26B6EA5D4() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000013 && 0x800000026B6FB800 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_26B6EA5D4();

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

uint64_t sub_26B64DDEC(char a1)
{
  result = 0x617453746E657665;
  switch(a1)
  {
    case 1:
      v3 = 0x7465706D6F63;
      goto LABEL_6;
    case 2:
      result = 0x54656D6147657270;
      break;
    case 3:
      v3 = 0x5474726F6873;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7469000000000000;
      break;
    case 4:
      result = 0x4C5255746E657665;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B64DEC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B64DBDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B64DEF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B64DDE4();
  *a1 = result;
  return result;
}

uint64_t sub_26B64DF18(uint64_t a1)
{
  v2 = sub_26B652A34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B64DF54(uint64_t a1)
{
  v2 = sub_26B652A34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportingEventSubscription.Metadata.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409458, &qword_26B6ED0E0);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_61();
  v12 = a1[4];
  OUTLINED_FUNCTION_4_0(a1, a1[3]);
  sub_26B652A34();
  sub_26B6EA7C4();
  sub_26B6E9564();
  OUTLINED_FUNCTION_9_1();
  sub_26B650D78(v13, v14);
  OUTLINED_FUNCTION_58();
  sub_26B6EA534();
  if (!v2)
  {
    v15 = type metadata accessor for SportingEventSubscription.Metadata(0);
    v17 = *(v4 + v15[5]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409468, &qword_26B6ED0E8);
    sub_26B652ADC(&qword_280409470, sub_26B652A88);
    OUTLINED_FUNCTION_58();
    sub_26B6EA534();
    OUTLINED_FUNCTION_108(v15[6]);
    OUTLINED_FUNCTION_58();
    sub_26B6EA4F4();
    OUTLINED_FUNCTION_108(v15[7]);
    OUTLINED_FUNCTION_58();
    sub_26B6EA4F4();
    OUTLINED_FUNCTION_108(v15[8]);
    OUTLINED_FUNCTION_58();
    sub_26B6EA4F4();
    OUTLINED_FUNCTION_108(v15[9]);
    OUTLINED_FUNCTION_58();
    sub_26B6EA4F4();
  }

  return (*(v8 + 8))(v3, v6);
}

void SportingEventSubscription.Metadata.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v39 = v3;
  v4 = sub_26B6E9564();
  v5 = OUTLINED_FUNCTION_4(v4);
  v42 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  v11 = v10 - v9;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409480, &qword_26B6ED0F0);
  OUTLINED_FUNCTION_4(v41);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v40 = type metadata accessor for SportingEventSubscription.Metadata(0);
  v15 = OUTLINED_FUNCTION_16(v40);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_0();
  v43 = v19 - v18;
  v20 = v2[4];
  OUTLINED_FUNCTION_4_0(v2, v2[3]);
  sub_26B652A34();
  sub_26B6EA784();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_9_1();
    sub_26B650D78(v21, v22);
    OUTLINED_FUNCTION_60();
    sub_26B6EA464();
    (*(v42 + 32))(v43, v11, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409468, &qword_26B6ED0E8);
    OUTLINED_FUNCTION_64();
    sub_26B652ADC(&qword_280409488, sub_26B652B54);
    OUTLINED_FUNCTION_62();
    OUTLINED_FUNCTION_60();
    sub_26B6EA464();
    *(v43 + v40[5]) = v44;
    OUTLINED_FUNCTION_60();
    v23 = sub_26B6EA424();
    v24 = (v43 + v40[6]);
    *v24 = v23;
    v24[1] = v25;
    OUTLINED_FUNCTION_60();
    v26 = sub_26B6EA424();
    v27 = (v43 + v40[7]);
    *v27 = v26;
    v27[1] = v28;
    OUTLINED_FUNCTION_60();
    v29 = sub_26B6EA424();
    v30 = (v43 + v40[8]);
    *v30 = v29;
    v30[1] = v31;
    OUTLINED_FUNCTION_60();
    v32 = sub_26B6EA424();
    v38 = v33;
    v34 = v32;
    v35 = OUTLINED_FUNCTION_29_0();
    v36(v35);
    v37 = (v43 + v40[9]);
    *v37 = v34;
    v37[1] = v38;
    sub_26B652BA8(v43, v39);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_26B652C0C(v43);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t SportingEventSubscription.Competitor.LogoFilePaths.smallSize.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_22_0();
}

uint64_t SportingEventSubscription.Competitor.LogoFilePaths.defaultSize.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_22_0();
}

SportsKit::SportingEventSubscription::Competitor::LogoFilePaths __swiftcall SportingEventSubscription.Competitor.LogoFilePaths.init(smallSize:defaultSize:)(Swift::String_optional smallSize, Swift::String defaultSize)
{
  *v2 = smallSize;
  v2[1].value = defaultSize;
  result.defaultSize = defaultSize;
  result.smallSize = smallSize;
  return result;
}

uint64_t static SportingEventSubscription.Competitor.LogoFilePaths.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (v6)
    {
      v9 = *a1 == *a2 && v3 == v6;
      if (v9 || (sub_26B6EA5D4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_8:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_59();

  return sub_26B6EA5D4();
}

uint64_t sub_26B64E800(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7A69536C6C616D73 && a2 == 0xE900000000000065;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x53746C7561666564 && a2 == 0xEB00000000657A69)
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

uint64_t sub_26B64E8D4(char a1)
{
  if (a1)
  {
    return 0x53746C7561666564;
  }

  else
  {
    return 0x7A69536C6C616D73;
  }
}

uint64_t sub_26B64E920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B64E800(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B64E948(uint64_t a1)
{
  v2 = sub_26B652C68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B64E984(uint64_t a1)
{
  v2 = sub_26B652C68();

  return MEMORY[0x2821FE720](a1, v2);
}

void SportingEventSubscription.Competitor.LogoFilePaths.encode(to:)()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409498, &qword_26B6ED0F8);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_61();
  v8 = *v0;
  v9 = v0[1];
  v13 = v0[3];
  v14 = v0[2];
  v10 = v3[4];
  OUTLINED_FUNCTION_4_0(v3, v3[3]);
  sub_26B652C68();
  sub_26B6EA7C4();
  sub_26B6EA4A4();
  if (!v1)
  {
    OUTLINED_FUNCTION_64();
    sub_26B6EA4F4();
  }

  v11 = OUTLINED_FUNCTION_93();
  v12(v11, v4);
  OUTLINED_FUNCTION_37();
}

void SportingEventSubscription.Competitor.LogoFilePaths.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804094A8, &qword_26B6ED100);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = v2[4];
  OUTLINED_FUNCTION_4_0(v2, v2[3]);
  sub_26B652C68();
  OUTLINED_FUNCTION_100();
  sub_26B6EA784();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v14 = sub_26B6EA3D4();
    v16 = v15;
    OUTLINED_FUNCTION_64();
    v17 = sub_26B6EA424();
    v19 = v18;
    v20 = *(v7 + 8);
    v22 = v17;
    v20(v12, v5);
    *v4 = v14;
    v4[1] = v16;
    v4[2] = v22;
    v4[3] = v19;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t SportingEventSubscription.Competitor.canonicalId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_22_0();
}

uint64_t SportingEventSubscription.Competitor.abbreviation.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_22_0();
}

uint64_t SportingEventSubscription.Competitor.name.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_22_0();
}

uint64_t SportingEventSubscription.Competitor.teamLogoUrl.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_22_0();
}

uint64_t SportingEventSubscription.Competitor.localLogoUrl.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_22_0();
}

uint64_t SportingEventSubscription.Competitor.logoFilePaths.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_26B652CBC(v2, v3, v4, v5);
}

uint64_t SportingEventSubscription.Competitor.teamColorHex.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_22_0();
}

__n128 SportingEventSubscription.Competitor.init(canonicalId:abbreviation:name:teamLogoUrl:localLogoUrl:logoFilePaths:teamColorHex:isHome:ordinal:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  result = *a12;
  v17 = *(a12 + 16);
  *(a9 + 80) = *a12;
  *(a9 + 96) = v17;
  *(a9 + 112) = a13;
  *(a9 + 120) = a14;
  *(a9 + 128) = a15;
  *(a9 + 136) = a16;
  return result;
}

uint64_t sub_26B64EE80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6163696E6F6E6163 && a2 == 0xEB0000000064496CLL;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6169766572626261 && a2 == 0xEC0000006E6F6974;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667182 && a2 == 0xE400000000000000;
      if (v7 || (sub_26B6EA5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F676F4C6D616574 && a2 == 0xEB000000006C7255;
        if (v8 || (sub_26B6EA5D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x676F4C6C61636F6CLL && a2 == 0xEC0000006C72556FLL;
          if (v9 || (sub_26B6EA5D4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656C69466F676F6CLL && a2 == 0xED00007368746150;
            if (v10 || (sub_26B6EA5D4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F6C6F436D616574 && a2 == 0xEC00000078654872;
              if (v11 || (sub_26B6EA5D4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x656D6F487369 && a2 == 0xE600000000000000;
                if (v12 || (sub_26B6EA5D4() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x6C616E6964726FLL && a2 == 0xE700000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_26B6EA5D4();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_26B64F160(unsigned __int8 a1)
{
  sub_26B6EA714();
  MEMORY[0x26D67E0E0](a1);
  return sub_26B6EA744();
}

uint64_t sub_26B64F1A8(char a1)
{
  result = 0x6163696E6F6E6163;
  switch(a1)
  {
    case 1:
      result = 0x6169766572626261;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x6F676F4C6D616574;
      break;
    case 4:
      result = 0x676F4C6C61636F6CLL;
      break;
    case 5:
      result = 0x656C69466F676F6CLL;
      break;
    case 6:
      result = 0x6F6C6F436D616574;
      break;
    case 7:
      result = 0x656D6F487369;
      break;
    case 8:
      result = 0x6C616E6964726FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B64F2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B64EE80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B64F2FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B64F158();
  *a1 = result;
  return result;
}

uint64_t sub_26B64F324(uint64_t a1)
{
  v2 = sub_26B652D00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B64F360(uint64_t a1)
{
  v2 = sub_26B652D00();

  return MEMORY[0x2821FE720](a1, v2);
}

void SportingEventSubscription.Competitor.encode(to:)()
{
  OUTLINED_FUNCTION_38();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804094B0, &qword_26B6ED108);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18_0();
  v11 = *v0;
  v12 = v0[1];
  v27 = v0[3];
  v28 = v0[2];
  v25 = v0[5];
  v26 = v0[4];
  v23 = v0[7];
  v24 = v0[6];
  v21 = v0[9];
  v22 = v0[8];
  v17 = v0[10];
  v18 = v0[11];
  v19 = v0[12];
  v20 = v0[13];
  v15 = v0[14];
  v16 = v0[15];
  v29 = *(v0 + 128);
  v14 = v0[17];
  v13 = v4[4];
  OUTLINED_FUNCTION_4_0(v4, v4[3]);
  sub_26B652D00();
  OUTLINED_FUNCTION_83();
  sub_26B6EA7C4();
  sub_26B6EA4F4();
  if (!v1)
  {
    OUTLINED_FUNCTION_72(1);
    OUTLINED_FUNCTION_69();
    sub_26B6EA4F4();
    OUTLINED_FUNCTION_72(2);
    OUTLINED_FUNCTION_69();
    sub_26B6EA4F4();
    OUTLINED_FUNCTION_72(3);
    OUTLINED_FUNCTION_69();
    sub_26B6EA4A4();
    OUTLINED_FUNCTION_72(4);
    OUTLINED_FUNCTION_69();
    sub_26B6EA4A4();
    sub_26B652CBC(v17, v18, v19, v20);
    sub_26B652D54();
    sub_26B6EA4E4();
    sub_26B652DA8(v17, v18, v19, v20);
    OUTLINED_FUNCTION_72(6);
    OUTLINED_FUNCTION_69();
    sub_26B6EA4F4();
    sub_26B6EA504();
    sub_26B6EA524();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_37();
}

void SportingEventSubscription.Competitor.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804094C8, &qword_26B6ED110);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18_0();
  v11 = v2[3];
  v12 = v2[4];
  v41 = v2;
  OUTLINED_FUNCTION_4_0(v2, v11);
  sub_26B652D00();
  OUTLINED_FUNCTION_83();
  sub_26B6EA784();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_91();
    if (v5)
    {

      if ((v11 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (!v11)
    {
      goto LABEL_8;
    }

    sub_26B652DA8(v7, v34, v32, v30);
    goto LABEL_8;
  }

  LOBYTE(v43) = 0;
  v13 = sub_26B6EA424();
  v40 = v14;
  OUTLINED_FUNCTION_10_1(1);
  v15 = sub_26B6EA424();
  v39 = v16;
  OUTLINED_FUNCTION_10_1(2);
  v28 = sub_26B6EA424();
  v38 = v17;
  OUTLINED_FUNCTION_10_1(3);
  v27 = sub_26B6EA3D4();
  v37 = v18;
  OUTLINED_FUNCTION_10_1(4);
  v25 = sub_26B6EA3D4();
  v36 = v19;
  LOBYTE(v42[0]) = 5;
  sub_26B652DEC();
  sub_26B6EA414();
  v26 = v43;
  v33 = v45;
  v35 = v44;
  v31 = v46;
  OUTLINED_FUNCTION_10_1(6);
  v24 = sub_26B6EA424();
  v29 = v20;
  OUTLINED_FUNCTION_10_1(7);
  v61 = sub_26B6EA434();
  v21 = sub_26B6EA454();
  v22 = OUTLINED_FUNCTION_15_0();
  v23(v22);
  v42[0] = v13;
  v42[1] = v40;
  v42[2] = v15;
  v42[3] = v39;
  v42[4] = v28;
  v42[5] = v38;
  v42[6] = v27;
  v42[7] = v37;
  v42[8] = v25;
  v42[9] = v36;
  v42[10] = v26;
  v42[11] = v35;
  v42[12] = v33;
  v42[13] = v31;
  v42[14] = v24;
  v42[15] = v29;
  LOBYTE(v42[16]) = v61 & 1;
  v42[17] = v21;
  memcpy(v4, v42, 0x90uLL);
  sub_26B652E40(v42, &v43);
  __swift_destroy_boxed_opaque_existential_1(v41);
  v43 = v13;
  v44 = v40;
  v45 = v15;
  v46 = v39;
  v47 = v28;
  v48 = v38;
  v49 = v27;
  v50 = v37;
  v51 = v25;
  v52 = v36;
  v53 = v26;
  v54 = v35;
  v55 = v33;
  v56 = v31;
  v57 = v24;
  v58 = v29;
  v59 = v61 & 1;
  v60 = v21;
  sub_26B652E78(&v43);
LABEL_8:
  OUTLINED_FUNCTION_37();
}

void SportingEventSubscription.byChangingMetadata(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10_0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  ObjectType = swift_getObjectType();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409360, &unk_26B6ED060);
  OUTLINED_FUNCTION_46(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_71();
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409220, &qword_26B6EC920);
  v32 = OUTLINED_FUNCTION_46(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_30_0();
  v37 = v35 - v36;
  v112 = v35 - v36;
  v39 = MEMORY[0x28223BE20](v38);
  v41 = &v91 - v40;
  v113 = &v91 - v40;
  MEMORY[0x28223BE20](v39);
  v115 = &v91 - v42;
  v111 = *(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_consumers);
  OUTLINED_FUNCTION_36_0(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportId);
  OUTLINED_FUNCTION_86(v43);
  OUTLINED_FUNCTION_36_0(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sport);
  OUTLINED_FUNCTION_106(v44);
  OUTLINED_FUNCTION_36_0(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_leagueId);
  v117 = v45;
  v108 = v46;
  OUTLINED_FUNCTION_36_0(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_leagueAbbreviation);
  v116 = v47;
  v120 = v48;
  OUTLINED_FUNCTION_76(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_eventStateURL, v49);
  OUTLINED_FUNCTION_76(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_fullPayloadBaseURL, v41);
  OUTLINED_FUNCTION_76(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_imageServiceBaseURL, v37);
  v50 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails;
  OUTLINED_FUNCTION_19_0();
  swift_beginAccess();
  v51 = *(v20 + v50);
  v52 = (v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_heartbeatTTLSeconds);
  OUTLINED_FUNCTION_19_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_77(*v52);
  v106 = v53;
  v54 = *(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_runningClock);
  v55 = (v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_liveActivityTTLSeconds);
  OUTLINED_FUNCTION_19_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_77(*v55);
  v105 = v56;
  v104 = v30;
  sub_26B652BA8(v24, v30);
  v57 = type metadata accessor for SportingEventSubscription.Metadata(0);
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v57);
  v58 = (v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_view);
  OUTLINED_FUNCTION_19_0();
  swift_beginAccess();
  v59 = *v58;
  v99 = v58[1];
  v61 = v58[2];
  v60 = v58[3];
  v98 = v58[4];
  v97 = v58[5];
  v96 = v58[6];
  v121 = v59;
  v122 = v99;
  v123 = v61;
  v124 = v60;
  v125 = v98;
  v126 = v97;
  v127 = v96;
  v103 = *(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_shouldDisplayPlayByPlay);
  v62 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_mostRecentPlay;
  OUTLINED_FUNCTION_19_0();
  swift_beginAccess();
  v93 = *(v20 + v62);
  OUTLINED_FUNCTION_36_0(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_registrationId);
  v102 = v63;
  v92 = v64;
  v65 = *(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_qosRegistrationId + 8);
  v101 = *(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_qosRegistrationId);
  v66 = *(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_applicationType + 8);
  v100 = *(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_applicationType);
  v67 = *(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_clientApp);
  v68 = *(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_clientApp + 8);
  v94 = v67;
  ObjectType = objc_allocWithZone(ObjectType);

  v95 = v51;
  v91 = v54;
  OUTLINED_FUNCTION_68(&v129);

  v69 = v110;

  v70 = v109;

  v71 = v108;

  sub_26B6482A8(v59, v99, v61, v60, v98, v97, v96);
  v72 = v93;

  v73 = v92;

  v90 = v94;
  v89 = v100;
  v88 = v101;
  v87 = v102;
  OUTLINED_FUNCTION_34_0(&v128);
  v81 = v91;
  v80 = v106;
  v79 = v107;
  v78 = v95;
  v77 = v112;
  v76 = v113;
  OUTLINED_FUNCTION_66(&a12);
  sub_26B649884(v58, v119, v69, v118, v70, v117, v71, v116, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v72, v87, v73, v88, v65, v89, v66, v90, v68);
  OUTLINED_FUNCTION_8_0();
}

void SportingEventSubscription.byChangingConsumers(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10_0();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v103 = v24;
  ObjectType = swift_getObjectType();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409360, &unk_26B6ED060);
  OUTLINED_FUNCTION_46(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18_0();
  v95 = v21;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409220, &qword_26B6EC920);
  v31 = OUTLINED_FUNCTION_46(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_30_0();
  v36 = v34 - v35;
  v104 = v34 - v35;
  v38 = MEMORY[0x28223BE20](v37);
  v40 = &v81 - v39;
  v105 = &v81 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v81 - v41;
  v107 = &v81 - v41;
  sub_26B6493FC(v25);
  OUTLINED_FUNCTION_36_0(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportId);
  v111 = v43;
  v102 = v44;
  OUTLINED_FUNCTION_36_0(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sport);
  OUTLINED_FUNCTION_86(v45);
  OUTLINED_FUNCTION_36_0(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_leagueId);
  OUTLINED_FUNCTION_106(v46);
  v47 = *(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_leagueAbbreviation + 8);
  v108 = *(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_leagueAbbreviation);
  v90 = v47;
  OUTLINED_FUNCTION_76(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_eventStateURL, v42);
  OUTLINED_FUNCTION_76(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_fullPayloadBaseURL, v40);
  OUTLINED_FUNCTION_76(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_imageServiceBaseURL, v36);
  v48 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails;
  OUTLINED_FUNCTION_19_0();
  swift_beginAccess();
  v49 = *(v20 + v48);
  v50 = (v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_heartbeatTTLSeconds);
  OUTLINED_FUNCTION_19_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_77(*v50);
  v98 = v51;
  v93 = *(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_runningClock);
  v52 = (v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_liveActivityTTLSeconds);
  OUTLINED_FUNCTION_19_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_77(*v52);
  v96 = v53;
  sub_26B650B70(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_metadata, v21, &qword_280409360, &unk_26B6ED060);
  v54 = (v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_view);
  OUTLINED_FUNCTION_19_0();
  swift_beginAccess();
  v55 = *v54;
  v88 = v54[1];
  v56 = v54[2];
  v87 = v54[3];
  v86 = v54[4];
  v57 = v54[5];
  v58 = v54[6];
  v85 = v57;
  v112[0] = v55;
  v112[1] = v88;
  v112[2] = v56;
  v112[3] = v87;
  v112[4] = v86;
  v112[5] = v57;
  v112[6] = v58;
  v94 = *(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_shouldDisplayPlayByPlay);
  v59 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_mostRecentPlay;
  OUTLINED_FUNCTION_19_0();
  swift_beginAccess();
  v82 = *(v20 + v59);
  OUTLINED_FUNCTION_36_0(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_registrationId);
  v92 = v60;
  v81 = v61;
  v62 = *(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_qosRegistrationId + 8);
  v91 = *(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_qosRegistrationId);
  v63 = *(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_applicationType + 8);
  v89 = *(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_applicationType);
  v64 = *(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_clientApp);
  v65 = *(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_clientApp + 8);
  v83 = v64;
  ObjectType = objc_allocWithZone(ObjectType);

  v84 = v49;
  v93 = v93;
  OUTLINED_FUNCTION_68(&a9);

  v66 = v102;

  v67 = v101;

  v68 = v100;

  sub_26B6482A8(v55, v88, v56, v87, v86, v85, v58);
  v69 = v82;

  v70 = v81;

  v80 = v83;
  v79 = v89;
  v78 = v91;
  v77 = v92;
  v76 = v94;
  v75 = v95;
  v74 = v96;
  v73 = v97;
  OUTLINED_FUNCTION_65(&v113);
  sub_26B649884(v52, v111, v66, v110, v67, v109, v68, v108, v90, v107, v105, v104, v84, v99, v71, v72, v73, v74, v75, v112, v76, v69, v77, v70, v78, v62, v79, v63, v80, v65);
  OUTLINED_FUNCTION_8_0();
}

void SportingEventSubscription.byChanging(leagueId:sportId:metadata:consumers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10_0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v121 = v23;
  v26 = v25;
  v130 = v27;
  v131 = v28;
  v129 = v29;
  v132 = v30;
  ObjectType = swift_getObjectType();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409360, &unk_26B6ED060);
  OUTLINED_FUNCTION_46(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_71();
  v36 = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409220, &qword_26B6EC920);
  v38 = OUTLINED_FUNCTION_46(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_30_0();
  v123 = v41 - v42;
  v44 = MEMORY[0x28223BE20](v43);
  v125 = &v105 - v45;
  MEMORY[0x28223BE20](v44);
  v126 = &v105 - v46;
  sub_26B6493FC(v24);
  OUTLINED_FUNCTION_36_0(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sport);
  v128 = v47;
  v119 = v48;
  OUTLINED_FUNCTION_36_0(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_leagueAbbreviation);
  v127 = v49;
  v133 = v50;
  OUTLINED_FUNCTION_59();
  sub_26B650B70(v51, v52, v53, v54);
  OUTLINED_FUNCTION_59();
  sub_26B650B70(v55, v56, v57, v58);
  OUTLINED_FUNCTION_59();
  sub_26B650B70(v59, v60, v61, v62);
  v63 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails;
  OUTLINED_FUNCTION_19_0();
  swift_beginAccess();
  v115 = *(v20 + v63);
  v64 = v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_heartbeatTTLSeconds;
  OUTLINED_FUNCTION_19_0();
  swift_beginAccess();
  v122 = *v64;
  v120 = *(v64 + 8);
  v114 = *(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_runningClock);
  v65 = (v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_liveActivityTTLSeconds);
  OUTLINED_FUNCTION_19_0();
  swift_beginAccess();
  v118 = *v65;
  v117 = *(v65 + 8);
  v116 = v36;
  sub_26B652BA8(v26, v36);
  v66 = type metadata accessor for SportingEventSubscription.Metadata(0);
  __swift_storeEnumTagSinglePayload(v36, 0, 1, v66);
  v67 = (v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_view);
  OUTLINED_FUNCTION_19_0();
  swift_beginAccess();
  v68 = v67[1];
  v108 = *v67;
  v69 = v67[2];
  v70 = v67[3];
  v72 = v67[4];
  v71 = v67[5];
  v73 = v67[6];
  v134 = v108;
  v135 = v68;
  v136 = v69;
  v137 = v70;
  v138 = v72;
  v139 = v71;
  v140 = v73;
  v113 = *(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_shouldDisplayPlayByPlay);
  v74 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_mostRecentPlay;
  OUTLINED_FUNCTION_19_0();
  swift_beginAccess();
  v107 = *(v20 + v74);
  OUTLINED_FUNCTION_36_0(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_registrationId);
  v112 = v75;
  v106 = v76;
  OUTLINED_FUNCTION_36_0(OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_qosRegistrationId);
  v111 = v77;
  v105 = v78;
  v79 = *(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_applicationType + 8);
  v110 = *(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_applicationType);
  v80 = *(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_clientApp);
  v81 = *(v20 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_clientApp + 8);
  v109 = v80;
  ObjectType = objc_allocWithZone(ObjectType);

  v115 = v115;
  v114 = v114;
  v82 = v121;

  v83 = v119;

  sub_26B6482A8(v108, v68, v69, v70, v72, v71, v73);
  v84 = v107;

  v85 = v106;

  v86 = v105;

  OUTLINED_FUNCTION_68(&a13);

  v87 = v130;

  v104 = v109;
  v103 = v110;
  v102 = v111;
  v101 = v112;
  OUTLINED_FUNCTION_34_0(&v141);
  OUTLINED_FUNCTION_65(&v142);
  v93 = v122;
  v92 = v115;
  v91 = v123;
  v90 = v125;
  OUTLINED_FUNCTION_66(&a10);
  sub_26B649884(v82, v131, v87, v128, v83, v132, v73, v127, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v84, v101, v85, v102, v86, v103, v79, v104, v81);
  OUTLINED_FUNCTION_8_0();
}

unint64_t sub_26B650B1C()
{
  result = qword_280409368;
  if (!qword_280409368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409368);
  }

  return result;
}

uint64_t sub_26B650B70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_110(a1, a2, a3, a4);
  OUTLINED_FUNCTION_16(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_22_0();
  v9(v8);
  return v4;
}

uint64_t sub_26B650BBC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_16(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_26B650C14()
{
  result = qword_2810CC628;
  if (!qword_2810CC628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CC628);
  }

  return result;
}

unint64_t sub_26B650C68()
{
  result = qword_280409388;
  if (!qword_280409388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409380, &unk_26B6ED080);
    sub_26B650D24();
    sub_26B650D78(&qword_2810CE450, type metadata accessor for SportingEventPlay);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409388);
  }

  return result;
}

unint64_t sub_26B650D24()
{
  result = qword_280409390;
  if (!qword_280409390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409390);
  }

  return result;
}

uint64_t sub_26B650D78(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26B650DE0()
{
  result = qword_2804093A8;
  if (!qword_2804093A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804093A8);
  }

  return result;
}

unint64_t sub_26B650E34()
{
  result = qword_2804093C0;
  if (!qword_2804093C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409380, &unk_26B6ED080);
    sub_26B650EF0();
    sub_26B650D78(&qword_2810CE448, type metadata accessor for SportingEventPlay);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804093C0);
  }

  return result;
}

unint64_t sub_26B650EF0()
{
  result = qword_2804093C8;
  if (!qword_2804093C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804093C8);
  }

  return result;
}

uint64_t sub_26B650F44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_110(a1, a2, a3, a4);
  OUTLINED_FUNCTION_16(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_22_0();
  v9(v8);
  return v4;
}

unint64_t sub_26B650F90()
{
  result = qword_2804093E0;
  if (!qword_2804093E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804093E0);
  }

  return result;
}

unint64_t sub_26B650FE4()
{
  result = qword_280409410;
  if (!qword_280409410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409410);
  }

  return result;
}

unint64_t sub_26B651038()
{
  result = qword_280409418;
  if (!qword_280409418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409418);
  }

  return result;
}

unint64_t sub_26B65108C()
{
  result = qword_280409420;
  if (!qword_280409420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409420);
  }

  return result;
}

unint64_t sub_26B6510E0()
{
  result = qword_280409428;
  if (!qword_280409428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409428);
  }

  return result;
}

uint64_t sub_26B651134(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_26B6EA324();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_26B651158(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_26B63F508(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v21[0] = v2 + 32;
  v21[1] = v4;
  v5 = sub_26B6EA554();
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v10 = -1;
      v11 = 1;
      v12 = (v2 + 32);
      do
      {
        v13 = *(v2 + 32 + 8 * v11);
        v14 = v10;
        v15 = v12;
        do
        {
          v16 = *v15;
          if (*(v13 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8))
          {
            v17 = 0x8000000000000000;
          }

          else
          {
            v17 = *(v13 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp);
          }

          if (*(v16 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8))
          {
            if (v17 == 0x8000000000000000)
            {
              break;
            }
          }

          else if (*(v16 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp) >= v17)
          {
            break;
          }

          *v15 = v13;
          v15[1] = v16;
          --v15;
        }

        while (!__CFADD__(v14++, 1));
        ++v11;
        ++v12;
        --v10;
      }

      while (v11 != v4);
    }
  }

  else
  {
    v6 = v5;
    v7 = (v4 >> 1);
    v8 = sub_26B692998(v4 >> 1);
    v20[0] = v9;
    v20[1] = v7;
    sub_26B6512AC(v20, v22, v21, v6);
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return sub_26B6EA204();
}

void sub_26B6512AC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v104 = MEMORY[0x277D84F90];
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v7 = v5 + 1;
      if (v5 + 1 >= v4)
      {
        i = v5 + 1;
        goto LABEL_28;
      }

      v8 = *(*a3 + 8 * v7);
      v9 = *(v8 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8);
      v10 = *(*a3 + 8 * v5) + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
      if (*(v10 + 8))
      {
        v11 = 0x8000000000000000;
      }

      else
      {
        v11 = *v10;
      }

      v12 = (*(v8 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp) > v11) & ~v9;
      for (i = v5 + 2; i < v4; ++i)
      {
        v14 = *(*a3 + 8 * i);
        ++v7;
        v15 = *(v14 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp);
        if (*(v14 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8))
        {
          v15 = 0x8000000000000000;
        }

        if (v9)
        {
          if (((v12 ^ (v15 == 0x8000000000000000)) & 1) == 0)
          {
            i = v7;
            if (!v12)
            {
              goto LABEL_28;
            }

LABEL_19:
            if (i >= v5)
            {
              if (v5 < i)
              {
                v16 = 8 * i - 8;
                v17 = 8 * v5;
                v18 = i;
                v19 = v5;
                do
                {
                  if (v19 != --v18)
                  {
                    v20 = *a3;
                    if (!*a3)
                    {
                      goto LABEL_167;
                    }

                    v21 = *(v20 + v17);
                    *(v20 + v17) = *(v20 + v16);
                    *(v20 + v16) = v21;
                  }

                  ++v19;
                  v16 -= 8;
                  v17 += 8;
                }

                while (v19 < v18);
                v4 = a3[1];
              }

              goto LABEL_28;
            }

LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
            goto LABEL_164;
          }
        }

        else if (v12 == *(v8 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp) >= v15)
        {
          goto LABEL_18;
        }

        LOBYTE(v9) = *(v14 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8);
        v8 = v14;
      }

      i = v4;
LABEL_18:
      if (v12)
      {
        goto LABEL_19;
      }

LABEL_28:
      if (i < v4)
      {
        if (__OFSUB__(i, v5))
        {
          goto LABEL_161;
        }

        if (i - v5 < a4)
        {
          if (__OFADD__(v5, a4))
          {
            goto LABEL_163;
          }

          if (v5 + a4 < v4)
          {
            v4 = v5 + a4;
          }

          if (v4 < v5)
          {
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
            return;
          }

          if (i != v4)
          {
            v22 = *a3;
            v23 = *a3 + 8 * i - 8;
            v24 = v5 - i;
            do
            {
              v25 = *(v22 + 8 * i);
              v26 = v24;
              v27 = v23;
              do
              {
                v28 = *v27;
                if (*(v25 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8))
                {
                  v29 = 0x8000000000000000;
                }

                else
                {
                  v29 = *(v25 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp);
                }

                if (*(v28 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8))
                {
                  if (v29 == 0x8000000000000000)
                  {
                    break;
                  }
                }

                else if (*(v28 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp) >= v29)
                {
                  break;
                }

                if (!v22)
                {
                  goto LABEL_165;
                }

                *v27 = v25;
                v27[1] = v28;
                --v27;
                v79 = __CFADD__(v26++, 1);
              }

              while (!v79);
              ++i;
              v23 += 8;
              --v24;
            }

            while (i != v4);
            i = v4;
          }
        }
      }

      if (i < v5)
      {
        goto LABEL_160;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26B63A97C(0, v6[2] + 1, 1, v6);
        v6 = v92;
      }

      v31 = v6[2];
      v30 = v6[3];
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        sub_26B63A97C(v30 > 1, v31 + 1, 1, v6);
        v6 = v93;
      }

      v6[2] = v32;
      v33 = v6 + 4;
      v34 = &v6[2 * v31 + 4];
      *v34 = v5;
      v34[1] = i;
      v96 = i;
      v35 = *a1;
      if (!*a1)
      {
        goto LABEL_168;
      }

      if (v31)
      {
        v97 = v6 + 4;
        while (1)
        {
          v36 = v32 - 1;
          v37 = &v33[2 * v32 - 2];
          v38 = &v6[2 * v32];
          if (v32 >= 4)
          {
            break;
          }

          if (v32 == 3)
          {
            v39 = v6[4];
            v40 = v6[5];
            v49 = __OFSUB__(v40, v39);
            v41 = v40 - v39;
            v42 = v49;
LABEL_71:
            if (v42)
            {
              goto LABEL_151;
            }

            v54 = *v38;
            v53 = v38[1];
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_154;
            }

            v58 = v37[1];
            v59 = v58 - *v37;
            if (__OFSUB__(v58, *v37))
            {
              goto LABEL_157;
            }

            if (__OFADD__(v56, v59))
            {
              goto LABEL_158;
            }

            if (v56 + v59 >= v41)
            {
              if (v41 < v59)
              {
                v36 = v32 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          v60 = *v38;
          v61 = v38[1];
          v49 = __OFSUB__(v61, v60);
          v56 = v61 - v60;
          v57 = v49;
LABEL_85:
          if (v57)
          {
            goto LABEL_153;
          }

          v63 = *v37;
          v62 = v37[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_156;
          }

          if (v64 < v56)
          {
            goto LABEL_141;
          }

LABEL_92:
          if (v36 - 1 >= v32)
          {
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
            goto LABEL_162;
          }

          v68 = *a3;
          if (!*a3)
          {
            goto LABEL_166;
          }

          v69 = v6;
          v100 = &v33[2 * v36 - 2];
          v101 = v36;
          v99 = &v33[2 * v36];
          v70 = (v68 + 8 * *v100);
          v71 = (v68 + 8 * *v99);
          v72 = 8 * *(v99 + 1);
          v102 = *(v99 + 1);
          v103 = *v100;
          v73 = (v68 + v72);
          v74 = 8 * *v99 - 8 * *v100;
          v75 = v72 - 8 * *v99;
          if (v74 >> 3 < v75 >> 3)
          {
            sub_26B63E4F8((v68 + 8 * *v100), v74 >> 3, v35);
            v76 = &v35[v74];
            v77 = v70;
            v78 = v35;
            v6 = v69;
            while (1)
            {
              v79 = v78 >= v76 || v71 >= v73;
              if (v79)
              {
                goto LABEL_131;
              }

              v80 = *v71;
              v81 = *v71 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
              if (*(v81 + 8))
              {
                v82 = 0x8000000000000000;
              }

              else
              {
                v82 = *v81;
              }

              v83 = *v78 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
              if (*(v83 + 8))
              {
                if (v82 != 0x8000000000000000)
                {
                  goto LABEL_105;
                }
              }

              else if (*v83 < v82)
              {
LABEL_105:
                v84 = v77 == v71;
                v71 += 8;
                if (v84)
                {
                  goto LABEL_107;
                }

LABEL_106:
                *v77 = v80;
                goto LABEL_107;
              }

              v80 = *v78;
              v84 = v77 == v78;
              v78 += 8;
              if (!v84)
              {
                goto LABEL_106;
              }

LABEL_107:
              v77 += 8;
            }
          }

          sub_26B63E4F8(v71, v75 >> 3, v35);
          v76 = &v35[v75];
          v6 = v69;
LABEL_113:
          v77 = v71;
          v71 -= 8;
          for (v73 -= 8; v76 > v35 && v70 < v77; v73 -= 8)
          {
            v86 = *(v76 - 1);
            v87 = *v71;
            if (*(v86 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8))
            {
              v88 = 0x8000000000000000;
            }

            else
            {
              v88 = *(v86 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp);
            }

            if (*(v87 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8))
            {
              if (v88 != 0x8000000000000000)
              {
                goto LABEL_128;
              }
            }

            else if (*(v87 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp) < v88)
            {
LABEL_128:
              if (v73 + 8 != v77)
              {
                *v73 = v87;
              }

              goto LABEL_113;
            }

            if (v76 != v73 + 8)
            {
              *v73 = v86;
            }

            v76 -= 8;
          }

          v78 = v35;
LABEL_131:
          v89 = (v76 - v78) / 8;
          if (v77 != v78 || v77 >= &v78[8 * v89])
          {
            memmove(v77, v78, 8 * v89);
          }

          if (v102 < v103)
          {
            goto LABEL_146;
          }

          v91 = v6[2];
          if (v101 > v91)
          {
            goto LABEL_147;
          }

          *v100 = v103;
          v100[1] = v102;
          if (v101 >= v91)
          {
            goto LABEL_148;
          }

          v32 = v91 - 1;
          sub_26B63F530(v99 + 16, v91 - 1 - v101, v99);
          v6[2] = v91 - 1;
          v33 = v97;
          if (v91 <= 2)
          {
            goto LABEL_141;
          }
        }

        v43 = &v33[2 * v32];
        v44 = *(v43 - 8);
        v45 = *(v43 - 7);
        v49 = __OFSUB__(v45, v44);
        v46 = v45 - v44;
        if (v49)
        {
          goto LABEL_149;
        }

        v48 = *(v43 - 6);
        v47 = *(v43 - 5);
        v49 = __OFSUB__(v47, v48);
        v41 = v47 - v48;
        v42 = v49;
        if (v49)
        {
          goto LABEL_150;
        }

        v50 = v38[1];
        v51 = v50 - *v38;
        if (__OFSUB__(v50, *v38))
        {
          goto LABEL_152;
        }

        v49 = __OFADD__(v41, v51);
        v52 = v41 + v51;
        if (v49)
        {
          goto LABEL_155;
        }

        if (v52 >= v46)
        {
          v66 = *v37;
          v65 = v37[1];
          v49 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v49)
          {
            goto LABEL_159;
          }

          if (v41 < v67)
          {
            v36 = v32 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_71;
      }

LABEL_141:
      v4 = a3[1];
      v5 = v96;
      if (v96 >= v4)
      {
        v104 = v6;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_169;
  }

  sub_26B651958(&v104, *a1, a3);
}

uint64_t sub_26B651958(uint64_t *a1, char *a2, uint64_t *a3)
{
  v4 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_2:
  for (*a1 = v4; ; v4 = *a1)
  {
    v6 = *(v4 + 16);
    if (v6 < 2)
    {
      return 1;
    }

    v7 = *a3;
    if (!*a3)
    {
      break;
    }

    v38 = v6 - 2;
    v39 = *(v4 + 16);
    v8 = *(v4 + 16 * v6);
    v37 = v6 - 1;
    v40 = v4;
    v9 = (v7 + 8 * v8);
    v10 = 8 * *(v4 + 16 * (v6 - 1) + 32);
    v11 = (v7 + v10);
    v12 = 8 * *(v4 + 16 * (v6 - 1) + 40);
    v13 = *(v4 + 16 * (v6 - 1) + 40);
    v14 = (v7 + v12);
    v41 = v8;
    v15 = v10 - 8 * v8;
    v16 = v12 - v10;
    if (v15 >> 3 < (v12 - v10) >> 3)
    {
      sub_26B63E4F8((v7 + 8 * v8), v15 >> 3, a2);
      v17 = &a2[v15];
      v18 = v9;
      v19 = a2;
      v20 = v13;
      v21 = v40;
      while (1)
      {
        if (v19 >= v17 || v11 >= v14)
        {
          goto LABEL_42;
        }

        v23 = *v11;
        v24 = *v11 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
        if (*(v24 + 8))
        {
          v25 = 0x8000000000000000;
        }

        else
        {
          v25 = *v24;
        }

        v26 = *v19 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp;
        if (*(v26 + 8))
        {
          if (v25 != 0x8000000000000000)
          {
            goto LABEL_16;
          }
        }

        else if (*v26 < v25)
        {
LABEL_16:
          v27 = v18 == v11;
          v11 += 8;
          if (v27)
          {
            goto LABEL_18;
          }

LABEL_17:
          *v18 = v23;
          goto LABEL_18;
        }

        v23 = *v19;
        v27 = v18 == v19;
        v19 += 8;
        if (!v27)
        {
          goto LABEL_17;
        }

LABEL_18:
        v18 += 8;
      }
    }

    sub_26B63E4F8((v7 + v10), v16 >> 3, a2);
    v17 = &a2[v16];
    v20 = v13;
    v21 = v40;
LABEL_24:
    v18 = v11;
    v11 -= 8;
    for (v14 -= 8; v17 > a2 && v9 < v18; v14 -= 8)
    {
      v29 = *(v17 - 1);
      v30 = *v11;
      if (*(v29 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8))
      {
        v31 = 0x8000000000000000;
      }

      else
      {
        v31 = *(v29 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp);
      }

      if (*(v30 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp + 8))
      {
        if (v31 != 0x8000000000000000)
        {
          goto LABEL_39;
        }
      }

      else if (*(v30 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__stamp) < v31)
      {
LABEL_39:
        if (v14 + 8 != v18)
        {
          *v14 = v30;
        }

        goto LABEL_24;
      }

      if (v17 != v14 + 8)
      {
        *v14 = v29;
      }

      v17 -= 8;
    }

    v19 = a2;
LABEL_42:
    v32 = (v17 - v19) / 8;
    v33 = v18 != v19 || v18 >= &v19[8 * v32];
    v4 = v41;
    if (v33)
    {
      memmove(v18, v19, 8 * v32);
    }

    if (v20 < v41)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      result = sub_26B63F2BC(v4);
      v4 = result;
      goto LABEL_2;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_26B63F2BC(v21);
    }

    if (v38 >= *(v21 + 2))
    {
      goto LABEL_55;
    }

    v34 = &v21[16 * v39];
    *v34 = v41;
    *(v34 + 1) = v20;
    *a1 = v21;
    result = sub_26B63F230(v37);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B651C24(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409578, &qword_26B6EDD00);
  result = sub_26B6EA0F4();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_26B676BD4(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_26B6EA714();
    sub_26B6E9AE4();
    result = sub_26B6EA744();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26B651E80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409580, &qword_26B6F8FF0);
  result = sub_26B6EA0F4();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_26B676BD4(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_26B6EA714();
    MEMORY[0x26D67E0E0](v17);
    result = sub_26B6EA744();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26B6520CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409578, &qword_26B6EDD00);
  result = sub_26B6EA0F4();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_26B6EA714();

        sub_26B6E9AE4();
        result = sub_26B6EA744();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

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
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_26B652300(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409580, &qword_26B6F8FF0);
  result = sub_26B6EA0F4();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_26B6EA714();
        MEMORY[0x26D67E0E0](v16);
        result = sub_26B6EA744();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

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
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void sub_26B65251C(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_51();
    return;
  }

LABEL_9:
  __break(1u);
}

BOOL sub_26B652558(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_26B6EA714();
  MEMORY[0x26D67E0E0](a2);
  v7 = sub_26B6EA744();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v5 + 48) + v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  v11 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  sub_26B652794(a2, v9, isUniquelyReferenced_nonNull_native);
  *v2 = v14;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_26B652648(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_26B6EA714();
  sub_26B6E9AE4();
  v9 = sub_26B6EA744();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_26B6EA5D4() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_26B6528CC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_26B652794(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26B651E80(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_26B652300(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_26B6EA714();
      MEMORY[0x26D67E0E0](v5);
      result = sub_26B6EA744();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_26B6CC6CC();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_26B6EA664();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_26B6528CC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_26B651C24(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_26B6520CC(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_26B6EA714();
      sub_26B6E9AE4();
      result = sub_26B6EA744();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_26B6EA5D4() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_26B6CC594();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_26B6EA664();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

unint64_t sub_26B652A34()
{
  result = qword_280409460;
  if (!qword_280409460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409460);
  }

  return result;
}

unint64_t sub_26B652A88()
{
  result = qword_280409478;
  if (!qword_280409478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409478);
  }

  return result;
}

uint64_t sub_26B652ADC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280409468, &qword_26B6ED0E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26B652B54()
{
  result = qword_280409490;
  if (!qword_280409490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409490);
  }

  return result;
}

uint64_t sub_26B652BA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportingEventSubscription.Metadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B652C0C(uint64_t a1)
{
  v2 = type metadata accessor for SportingEventSubscription.Metadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26B652C68()
{
  result = qword_2804094A0;
  if (!qword_2804094A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804094A0);
  }

  return result;
}

uint64_t sub_26B652CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

unint64_t sub_26B652D00()
{
  result = qword_2804094B8;
  if (!qword_2804094B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804094B8);
  }

  return result;
}

unint64_t sub_26B652D54()
{
  result = qword_2804094C0;
  if (!qword_2804094C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804094C0);
  }

  return result;
}

uint64_t sub_26B652DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

unint64_t sub_26B652DEC()
{
  result = qword_2804094D0;
  if (!qword_2804094D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804094D0);
  }

  return result;
}

unint64_t sub_26B652EAC()
{
  result = qword_2804094D8;
  if (!qword_2804094D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804094D8);
  }

  return result;
}

uint64_t sub_26B652F28(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26B652F60()
{
  v0 = sub_26B6E9564();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_26B65321C(319, qword_2810CE0B8, type metadata accessor for SportingEventSubscription.Metadata);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_26B65321C(319, &qword_2810CEA08, MEMORY[0x277CC9260]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of SportingEventSubscription.__allocating_init(consumers:sportId:sport:leagueId:leagueAbbreviation:eventStateURL:fullPayloadBaseURL:imageServiceBaseURL:sportingEventDetails:heartbeatTTLSeconds:heartbeatSessionsTTLSeconds:liveActivityTTLSeconds:clockFeatures:registrationId:metadata:view:shouldDisplayPlayByPlay:qosRegistrationId:applicationType:clientApp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v10 + 264);

  return v12(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void sub_26B65321C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26B6E9FF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26B6532A8()
{
  sub_26B6E9564();
  if (v0 <= 0x3F)
  {
    sub_26B653340();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26B653340()
{
  if (!qword_2810CDC78)
  {
    v0 = sub_26B6E9CF4();
    if (!v1)
    {
      atomic_store(v0, &qword_2810CDC78);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9SportsKit25SportingEventSubscriptionC10CompetitorV13LogoFilePathsVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26B6533B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_26B6533F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

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

uint64_t sub_26B653470(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26B6534B0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for SportingEventSubscription.Competitor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SportingEventSubscription.Competitor.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SportingEventSubscription.Competitor.LogoFilePaths.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SportingEventSubscription.Metadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SportingEventSubscription.Metadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_26B6538A4(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SportingEventSubscription.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEA)
  {
    if (a2 + 22 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 22) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 23;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v5 = v6 - 23;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SportingEventSubscription.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE9)
  {
    v6 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
          *result = a2 + 22;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26B653B18()
{
  result = qword_2804094E0;
  if (!qword_2804094E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804094E0);
  }

  return result;
}

unint64_t sub_26B653B70()
{
  result = qword_2804094E8;
  if (!qword_2804094E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804094E8);
  }

  return result;
}

unint64_t sub_26B653BC8()
{
  result = qword_2804094F0;
  if (!qword_2804094F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804094F0);
  }

  return result;
}

unint64_t sub_26B653C20()
{
  result = qword_2804094F8;
  if (!qword_2804094F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804094F8);
  }

  return result;
}

unint64_t sub_26B653C78()
{
  result = qword_280409500;
  if (!qword_280409500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409500);
  }

  return result;
}

unint64_t sub_26B653CD0()
{
  result = qword_280409508;
  if (!qword_280409508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409508);
  }

  return result;
}

unint64_t sub_26B653D28()
{
  result = qword_280409510;
  if (!qword_280409510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409510);
  }

  return result;
}

unint64_t sub_26B653D80()
{
  result = qword_280409518;
  if (!qword_280409518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409518);
  }

  return result;
}

unint64_t sub_26B653DD8()
{
  result = qword_280409520;
  if (!qword_280409520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409520);
  }

  return result;
}

unint64_t sub_26B653E30()
{
  result = qword_280409528;
  if (!qword_280409528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409528);
  }

  return result;
}

unint64_t sub_26B653E88()
{
  result = qword_280409530;
  if (!qword_280409530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409530);
  }

  return result;
}

unint64_t sub_26B653EE0()
{
  result = qword_280409538;
  if (!qword_280409538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409538);
  }

  return result;
}

unint64_t sub_26B653F38()
{
  result = qword_280409540;
  if (!qword_280409540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409540);
  }

  return result;
}

unint64_t sub_26B653F90()
{
  result = qword_280409548;
  if (!qword_280409548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409548);
  }

  return result;
}

unint64_t sub_26B653FE8()
{
  result = qword_280409550;
  if (!qword_280409550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409550);
  }

  return result;
}

unint64_t sub_26B654040()
{
  result = qword_280409558;
  if (!qword_280409558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409558);
  }

  return result;
}

unint64_t sub_26B654098()
{
  result = qword_280409560;
  if (!qword_280409560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409560);
  }

  return result;
}

unint64_t sub_26B6540F0()
{
  result = qword_280409568;
  if (!qword_280409568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409568);
  }

  return result;
}

unint64_t sub_26B654148()
{
  result = qword_280409570;
  if (!qword_280409570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280409570);
  }

  return result;
}

unint64_t sub_26B6541A0()
{
  result = qword_2810CC618;
  if (!qword_2810CC618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CC618);
  }

  return result;
}

unint64_t sub_26B6541F8()
{
  result = qword_2810CC620;
  if (!qword_2810CC620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CC620);
  }

  return result;
}

void sub_26B65424C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a1 < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < a1 || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_75();
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_0_4()
{
  v1 = *(*(v0 - 376) + 8);
  result = *(v0 - 360);
  v3 = *(v0 - 368);
  return result;
}

void OUTLINED_FUNCTION_2_3()
{
  *(v0 - 408) = 0;
  *(v0 - 400) = 0;
  *(v0 - 376) = 0;
  *(v0 - 368) = 0;
  *(v0 - 360) = 0;
}

void OUTLINED_FUNCTION_3_3()
{
  *(v0 - 376) = 0;
  *(v0 - 368) = 0;
  *(v0 - 360) = 0;
}

uint64_t OUTLINED_FUNCTION_7_1@<X0>(char a1@<W8>)
{
  *(v1 - 216) = a1;
  result = v1 - 216;
  v3 = *(v1 - 360);
  return result;
}