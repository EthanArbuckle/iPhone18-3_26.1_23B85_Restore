void sub_1C8CB1B94(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v88 = a2;
  v5 = type metadata accessor for EnumerationCaseDefinition(0);
  v93 = *(v5 - 8);
  v6 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_15();
  v82 = (v8 - v7);
  v94 = sub_1C90620BC();
  v9 = OUTLINED_FUNCTION_11(v94);
  v92 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v91 = v14 - v13;
  v15 = sub_1C906308C();
  v16 = OUTLINED_FUNCTION_11(v15);
  v89 = v17;
  v90 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  v22 = v21 - v20;
  v23 = sub_1C90631AC();
  v24 = OUTLINED_FUNCTION_11(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v30 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v75 - v32;
  sub_1C906302C();
  v34 = sub_1C906317C();
  v86 = v35;
  v87 = v34;
  v36 = *(v26 + 8);
  v36(v33, v23);
  sub_1C906302C();
  sub_1C906319C();
  v36(v30, v23);
  v85 = sub_1C906305C();
  v84 = sub_1C906306C();
  v83 = sub_1C906307C();
  (*(v89 + 8))(v22, v90);
  sub_1C906302C();
  v37 = sub_1C906318C();
  v89 = v38;
  v90 = v37;
  v36(v30, v23);
  v39 = sub_1C906303C();
  v40 = [v39 displayRepresentation];

  v41 = v91;
  sub_1C90620AC();
  v42 = sub_1C906206C();
  v44 = v43;
  (*(v92 + 8))(v41, v94);
  TypeDisplayRepresentation.init(from:localeIdentifier:)(v40, v42, v44, v95);
  v45 = v95[0];
  v46 = v95[1];
  v47 = v95[2];
  v48 = v95[3];
  v49 = v95[4];
  v50 = sub_1C906303C();
  v51 = [v50 cases];

  sub_1C8CB78AC(0, &qword_1EDA62D58, 0x1E69AC828);
  v52 = sub_1C906419C();

  v53 = sub_1C8CB217C(v52);
  if (v53)
  {
    v54 = v53;
    v94 = v52;
    v95[0] = MEMORY[0x1E69E7CC0];
    sub_1C8CB2580(0, v53 & ~(v53 >> 63), 0);
    if ((v54 & 0x8000000000000000) == 0)
    {
      v92 = v54;
      v76 = v49;
      v77 = v48;
      v78 = v47;
      v79 = v46;
      v80 = v45;
      v81 = a1;
      v55 = 0;
      v56 = v94;
      v57 = v95[0];
      v58 = v94 & 0xC000000000000001;
      v91 = v94 & 0xFFFFFFFFFFFFFF8;
      v59 = v82;
      while (1)
      {
        v60 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        if (v58)
        {
          v61 = MEMORY[0x1CCA82230](v55);
        }

        else
        {
          if (v55 >= *(v91 + 16))
          {
            goto LABEL_16;
          }

          v61 = *(v56 + 8 * v55 + 32);
        }

        v62 = v61;
        v96 = v61;
        v63 = v3;
        sub_1C8CB15DC(&v96, v59);

        v95[0] = v57;
        v65 = *(v57 + 16);
        v64 = *(v57 + 24);
        if (v65 >= v64 >> 1)
        {
          sub_1C8CB2580(v64 > 1, v65 + 1, 1);
          v57 = v95[0];
        }

        *(v57 + 16) = v65 + 1;
        sub_1C8CB25D8(v59, v57 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v65, type metadata accessor for EnumerationCaseDefinition);
        ++v55;
        v3 = v63;
        v56 = v94;
        if (v60 == v92)
        {

          v66 = sub_1C906304C();
          OUTLINED_FUNCTION_13_1(v66);
          (*(v67 + 8))(v81);
          v46 = v79;
          v45 = v80;
          v47 = v78;
          v48 = v77;
          v49 = v76;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v68 = sub_1C906304C();
    OUTLINED_FUNCTION_13_1(v68);
    (*(v69 + 8))(a1);
    v57 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v70 = v88;
    v71 = v85;
    v72 = v86;
    *v88 = v87;
    v70[1] = v72;
    v70[2] = v71;
    v73 = v83;
    v70[3] = v84;
    v70[4] = v73;
    v74 = v89;
    v70[5] = v90;
    v70[6] = v74;
    v70[7] = v57;
    v70[8] = v45;
    v70[9] = v46;
    v70[10] = v47;
    v70[11] = v48;
    v70[12] = v49;
  }
}

uint64_t sub_1C8CB21A0()
{
  OUTLINED_FUNCTION_223();
  v4 = OUTLINED_FUNCTION_321(v1, v2, v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_13_1(v6);
  v8 = *(v7 + 32);
  v9 = OUTLINED_FUNCTION_94();
  v10(v9);
  return v0;
}

uint64_t sub_1C8CB21F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_13(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13_1(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_1C8CB2244(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_13_1(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C8CB22A4(void *a1)
{
  v2 = sub_1C90620BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C90620AC();
  sub_1C906206C();
  (*(v3 + 8))(v6, v2);
  v7 = sub_1C9063EBC();

  v8 = [a1 localizedStringForLocaleIdentifier_];

  v9 = sub_1C9063EEC();
  return v9;
}

void sub_1C8CB23D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  v11 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_37_2();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_123_0();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_36_0();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_342(a1, a2, a3, a4, a5, a6);
  v17 = *(a7(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(a7(0) - 8);
  if (v11)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    sub_1C8D09448(a4 + v24, v15, v20 + v24, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1C8CB25D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_13_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C8CB266C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312528, &unk_1C9066960);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_1C8CB2700()
{
  OUTLINED_FUNCTION_77();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_37_2();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_140_0(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_342(v10, v11, v12, v13, v14, v15);
      v16 = OUTLINED_FUNCTION_343();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = v3;
      v16[3] = 2 * ((v17 - 32) / 32);
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_141();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_138();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_123_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_36_0();
    goto LABEL_7;
  }

  __break(1u);
}

void LNValueType.toTypeInstance(source:isOptional:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  objc_opt_self();
  OUTLINED_FUNCTION_4();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = [v10 memberValueType];
    LNValueType.toTypeInstance(source:isOptional:)(&v39, a1, a2, a3 & 1);

    if (v4)
    {
      return;
    }

    v12 = v39;
    OUTLINED_FUNCTION_50();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v14 = v13 | 0x2000000000000000;
    goto LABEL_23;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_4();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {
    OUTLINED_FUNCTION_50();
    v14 = swift_allocObject();
    LNValueType.toTypeIdentifier(source:)(a1, a2, (v14 + 16));
    if (v4)
    {
      OUTLINED_FUNCTION_50();
      swift_deallocUninitializedObject();
      return;
    }

    goto LABEL_23;
  }

  v16 = [v15 memberValueTypes];
  sub_1C8CB78AC(0, &qword_1EDA62D70, 0x1E69ACA98);
  OUTLINED_FUNCTION_4();
  v17 = sub_1C906419C();

  v18 = sub_1C8CADD20(v17);
  if (!v18)
  {

LABEL_22:
    sub_1C8CAF0D4();
    v30 = v29;
    OUTLINED_FUNCTION_50();
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    v14 = v31 | 0x6000000000000000;
LABEL_23:
    if (a3)
    {
      v32 = swift_allocObject();
      *(v32 + 16) = v14;
      *(v32 + 24) = 0xF000000000000007;
      v14 = v32 | 0x4000000000000000;
    }

    *a4 = v14;
    return;
  }

  v19 = v18;
  v33 = a3;
  v39 = MEMORY[0x1E69E7CC0];
  sub_1C8CAF09C();
  v35 = v19;
  if ((v19 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v21 = v39;
    v36 = v17 & 0xC000000000000001;
    v37 = v17;
    v34 = v17 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v36)
      {
        v23 = MEMORY[0x1CCA82230](v20, v37);
      }

      else
      {
        if (v20 >= *(v34 + 16))
        {
          goto LABEL_28;
        }

        v23 = *(v37 + 8 * v20 + 32);
      }

      v24 = v23;
      LNValueType.toTypeInstance(source:isOptional:)(&v38, a1, a2, 0);
      if (v5)
      {

        return;
      }

      v25 = a1;
      v26 = a2;

      v27 = v38;
      v39 = v21;
      v28 = *(v21 + 16);
      if (v28 >= *(v21 + 24) >> 1)
      {
        sub_1C8CAF09C();
        v21 = v39;
      }

      *(v21 + 16) = v28 + 1;
      *(v21 + 8 * v28 + 32) = v27;
      ++v20;
      a2 = v26;
      a1 = v25;
      v5 = 0;
      if (v22 == v35)
      {

        a3 = v33;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C8CB2AF4()
{
  v1 = *(v0 + 16);

  if ((~*(v0 + 24) & 0xF000000000000007) != 0)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C8CB2B48()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

void *sub_1C8CB2B80@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1C8CADD44(*a1);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = sub_1C8CADD44(v4);
    v11 = 0x6C6562614C206F4ELL;
    if (v10)
    {
      v11 = v9;
    }

    v25 = v11;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0xE800000000000000;
    }

    v13 = [v4 parameterDescription];
    if (v13)
    {
      sub_1C906206C();
      v14 = sub_1C9063EBC();

      v15 = [v13 localizedStringForLocaleIdentifier_];

      v16 = sub_1C9063EEC();
      v13 = v17;
    }

    else
    {
      v16 = 0;
    }

    v23 = [v4 valueType];
    LNValueType.toTypeInstance(source:isOptional:)(0xD00000000000001BLL, 0x80000001C90CB600, [v4 isOptional], &v27);
    if (v2)
    {
    }

    __src[0] = v7;
    __src[1] = v8;
    __src[2] = v25;
    __src[3] = v12;
    __src[4] = v16;
    __src[5] = v13;
    __src[6] = 0;
    __src[7] = v27;
    __src[8] = MEMORY[0x1E69E7CC0];
    memset(&__src[9], 0, 64);
    nullsub_1(__src);
    v22 = a2;
  }

  else
  {
    if (qword_1EC3113D8 != -1)
    {
      swift_once();
    }

    v18 = sub_1C9063D3C();
    __swift_project_value_buffer(v18, qword_1EC316A40);
    v19 = sub_1C9063D1C();
    v20 = sub_1C906444C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1C8C9B000, v19, v20, "Ignoring parameter because key is missing", v21, 2u);
      MEMORY[0x1CCA833A0](v21, -1, -1);
    }

    sub_1C8D805E4(__src);
    v22 = a2;
  }

  return memcpy(v22, __src, 0x88uLL);
}

uint64_t sub_1C8CB2E28@<X0>(_OWORD *a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v135 = a2;
  v133 = a4;
  v144 = sub_1C90631DC();
  v6 = OUTLINED_FUNCTION_11(v144);
  v142 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v141 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v140 = &v122 - v12;
  v138 = sub_1C906308C();
  v13 = OUTLINED_FUNCTION_11(v138);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v19 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C90631AC();
  v21 = OUTLINED_FUNCTION_11(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v27 = &v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v122 - v29;
  HIDWORD(v130) = *a3;
  sub_1C90630CC();
  v143 = sub_1C906317C();
  v136 = v31;
  v32 = *(v23 + 8);
  v32(v30, v20);
  sub_1C90630CC();
  sub_1C906319C();
  v32(v27, v20);
  v132 = sub_1C906305C();
  v131 = sub_1C906306C();
  v33 = sub_1C906307C();
  (*(v15 + 8))(v19, v138);
  sub_1C90630CC();
  v34 = sub_1C906318C();
  v36 = v35;
  v37 = v27;
  v38 = a1;
  v39 = v20;
  v40 = v135;
  v32(v37, v39);
  v41 = sub_1C90630FC();
  v42 = [v41 parameters];

  sub_1C8CACFA0();
  v43 = sub_1C906419C();

  v146 = v40;
  v44 = v139;
  sub_1C8CB390C(sub_1C8CAD8D4, v145, v43, v45, v46, v47, v48, v49, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);
  v51 = v44;
  if (v44)
  {
    v52 = sub_1C906310C();
    OUTLINED_FUNCTION_38_2(v52);
    (*(v53 + 8))(v38);

    v54 = sub_1C90620BC();
    OUTLINED_FUNCTION_38_2(v54);
    return (*(v55 + 8))(v40);
  }

  else
  {
    v129 = v50;
    v124 = v34;
    v125 = v33;

    v57 = sub_1C90630FC();
    v58 = [v57 outputType];

    if (v58)
    {
      LNValueType.toTypeInstance(source:isOptional:)(0xD00000000000001BLL, 0x80000001C90CB600, 0, &v147);
      v59 = v143;

      v123 = v147;
    }

    else
    {
      OUTLINED_FUNCTION_50();
      v60 = swift_allocObject();
      v61 = swift_allocObject();
      *(v61 + 16) = 23;
      v123 = v60;
      v60[2] = v61;
      v59 = v143;
    }

    sub_1C90630EC();
    v62 = sub_1C906206C();
    v63 = sub_1C8CB26F8(v62);

    v64 = MEMORY[0x1E69E7CC0];
    v128 = v38;
    v127 = v36;
    if (v63)
    {
      v65 = *(v63 + 16);
      if (v65)
      {
        v126 = 0;
        v38 = MEMORY[0x1E69E7CC0];
        v147 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_10_23();
        v139 = *(v142 + 16);
        v64 = v147;
        OUTLINED_FUNCTION_6_25();
        v138 = *(v66 + 56);
        *&v137 = v66;
        v67 = (v66 - 8);
        v134 = xmmword_1C906A950;
        v68 = v144;
        do
        {
          v69 = v140;
          v139(v140, v51, v68);
          v70 = sub_1C90631BC();
          if (v71)
          {
            v72 = v70;
            v73 = v71;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
            v38 = swift_allocObject();
            v38[1] = v134;
            *(v38 + 4) = v72;
            *(v38 + 5) = v73;
          }

          v40 = sub_1C90631CC();
          v75 = v74;
          v68 = v144;
          (*v67)(v69, v144);
          v147 = v64;
          v77 = v64[2];
          v76 = v64[3];
          v78 = v64;
          if (v77 >= v76 >> 1)
          {
            OUTLINED_FUNCTION_8_26(v76);
            v68 = v144;
            v78 = v147;
          }

          v78[2] = v77 + 1;
          v79 = &v78[4 * v77];
          v79[4] = v38;
          v79[5] = v40;
          v79[6] = v75;
          v38 = MEMORY[0x1E69E7CC0];
          v79[7] = MEMORY[0x1E69E7CC0];
          v51 += v138;
          --v65;
          v64 = v78;
        }

        while (v65);

        OUTLINED_FUNCTION_7_26();
        v51 = v126;
        v59 = v143;
      }

      else
      {
      }
    }

    sub_1C90630DC();
    v80 = sub_1C906206C();
    v81 = sub_1C8CB26F8(v80);

    v82 = MEMORY[0x1E69E7CC0];
    v126 = v51;
    if (v81)
    {
      v83 = *(v81 + 16);
      if (v83)
      {
        *&v134 = v64;
        v147 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_10_23();
        v140 = *(v142 + 16);
        v82 = v147;
        OUTLINED_FUNCTION_6_25();
        v85 = *(v84 + 56);
        v138 = v84 - 8;
        v139 = v85;
        v137 = xmmword_1C906A950;
        v86 = v144;
        v142 = v84;
        do
        {
          v87 = v141;
          (v140)(v141, v51, v86);
          v88 = sub_1C90631BC();
          if (v89)
          {
            v90 = v88;
            v91 = v89;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
            v38 = swift_allocObject();
            v38[1] = v137;
            *(v38 + 4) = v90;
            *(v38 + 5) = v91;
          }

          else
          {
            v38 = MEMORY[0x1E69E7CC0];
          }

          v40 = sub_1C90631CC();
          v93 = v92;
          v86 = v144;
          (*v138)(v87, v144);
          v147 = v82;
          v95 = *(v82 + 16);
          v94 = *(v82 + 24);
          if (v95 >= v94 >> 1)
          {
            OUTLINED_FUNCTION_8_26(v94);
            v86 = v144;
            v82 = v147;
          }

          *(v82 + 16) = v95 + 1;
          v96 = (v82 + 32 * v95);
          v96[4] = MEMORY[0x1E69E7CC0];
          v96[5] = v40;
          v96[6] = v93;
          v96[7] = v38;
          v51 += v139;
          --v83;
          v59 = v143;
        }

        while (v83);

        OUTLINED_FUNCTION_7_26();
        v64 = v134;
      }

      else
      {
      }
    }

    v147 = v64;
    sub_1C8CAEAFC(v82);
    v144 = v147;
    v97 = v136;

    v98 = sub_1C90630FC();
    v99 = [v98 title];

    if (v99)
    {
      sub_1C906206C();
      v100 = sub_1C9063EBC();

      v101 = [v99 localizedStringForLocaleIdentifier_];

      v38 = v128;
      v102 = sub_1C9063EEC();
      v104 = v103;
    }

    else
    {

      v102 = v59;
      v104 = v97;
    }

    v105 = v133;
    v106 = sub_1C90630FC();
    v107 = [v106 descriptionMetadata];

    v108 = v132;
    if (v107)
    {
      v109 = [v107 descriptionText];

      sub_1C906206C();
      v110 = sub_1C9063EBC();

      if (HIDWORD(v130))
      {
        v38 = *MEMORY[0x1E69AC268];
      }

      else
      {
        v38 = 0;
      }

      v40 = [v109 localizedStringForLocaleIdentifier:v110 kind:v38];

      v111 = sub_1C9063EEC();
      v107 = v112;

      OUTLINED_FUNCTION_7_26();
    }

    else
    {
      v111 = 0;
    }

    v113 = sub_1C906310C();
    OUTLINED_FUNCTION_38_2(v113);
    (*(v114 + 8))(v38);
    v115 = v136;
    *v105 = v59;
    v105[1] = v115;
    v116 = v131;
    v105[2] = v108;
    v105[3] = v116;
    v117 = v124;
    v105[4] = v125;
    v105[5] = v117;
    v105[6] = v127;
    v105[7] = v102;
    v105[8] = v104;
    v105[9] = v111;
    v118 = v129;
    v105[10] = v107;
    v105[11] = v118;
    v119 = v123;
    v105[12] = v144;
    v105[13] = v119;
    v120 = sub_1C90620BC();
    OUTLINED_FUNCTION_38_2(v120);
    return (*(v121 + 8))(v40);
  }
}

uint64_t sub_1C8CB38C4()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

void sub_1C8CB390C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1C8CAD8AC(v23);
  v28 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  v36 = v26;
  while (1)
  {
    if (v27 == v28)
    {
      goto LABEL_18;
    }

    if ((v24 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x1CCA82230](v28, v24);
    }

    else
    {
      if (v28 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v30 = *(v24 + 8 * v28 + 32);
    }

    v31 = v30;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    a10 = v30;
    v26(v40, &a10);
    if (v20)
    {

LABEL_18:
      OUTLINED_FUNCTION_198();
      return;
    }

    memcpy(__dst, v40, sizeof(__dst));
    if (OUTLINED_FUNCTION_125_0(__dst) == 1)
    {
      memcpy(__src, v40, sizeof(__src));
      sub_1C8D27F8C(__src, &qword_1EC313F50, &unk_1C90C5930);
    }

    else
    {
      memcpy(__src, v40, sizeof(__src));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = *(v29 + 16);
        sub_1C8CADDA8();
        v29 = v34;
      }

      v32 = *(v29 + 16);
      if (v32 >= *(v29 + 24) >> 1)
      {
        sub_1C8CADDA8();
        v29 = v35;
      }

      memcpy(v37, __src, sizeof(v37));
      *(v29 + 16) = v32 + 1;
      memcpy((v29 + 136 * v32 + 32), v37, 0x88uLL);
      v26 = v36;
    }

    ++v28;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void LNValueType.toTypeIdentifier(source:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_1C9063D3C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v13 = OUTLINED_FUNCTION_2_39();
  if (v13)
  {
    v14 = [v13 memberValueType];
    LNValueType.toTypeIdentifier(source:)(a1, a2);

    return;
  }

  objc_opt_self();
  v15 = OUTLINED_FUNCTION_2_39();
  if (v15)
  {
    v16 = [v15 typeIdentifier];
    switch(v16)
    {
      case 0uLL:
        goto LABEL_36;
      case 1uLL:
        OUTLINED_FUNCTION_107_0();
        v17 = swift_allocObject();
        v18 = 24;
        goto LABEL_37;
      case 2uLL:
      case 3uLL:
      case 4uLL:
      case 5uLL:
      case 6uLL:
        OUTLINED_FUNCTION_107_0();
        v17 = swift_allocObject();
        v18 = 25;
        goto LABEL_37;
      case 7uLL:
        OUTLINED_FUNCTION_107_0();
        v17 = swift_allocObject();
        v18 = 26;
        goto LABEL_37;
      case 8uLL:
        OUTLINED_FUNCTION_107_0();
        v17 = swift_allocObject();
        v18 = 29;
        goto LABEL_37;
      case 9uLL:
        OUTLINED_FUNCTION_107_0();
        v17 = swift_allocObject();
        v18 = 30;
        goto LABEL_37;
      case 0xAuLL:
        OUTLINED_FUNCTION_107_0();
        v17 = swift_allocObject();
        v18 = 36;
        goto LABEL_37;
      case 0xBuLL:
        OUTLINED_FUNCTION_107_0();
        v17 = swift_allocObject();
        v18 = 31;
        goto LABEL_37;
      case 0xCuLL:
        OUTLINED_FUNCTION_107_0();
        v17 = swift_allocObject();
        v18 = 33;
        goto LABEL_37;
      default:
        type metadata accessor for LNPrimitiveValueTypeIdentifier(0);
        v85 = v16;
        sub_1C9064C8C();
        __break(1u);
        JUMPOUT(0x1C8CB4434);
    }
  }

  objc_opt_self();
  v19 = OUTLINED_FUNCTION_2_39();
  if (v19)
  {
    v20 = [objc_opt_self() unitTypeFromLinkMeasurementUnitType_];
    if (v20)
    {
      v21 = v20;
      v22 = WFMeasurementUnitType.toolkitUnitType.getter(v20);

      OUTLINED_FUNCTION_107_0();
      v17 = swift_allocObject();
      if (v22 != 22)
      {
        *(v17 + 16) = v22;
LABEL_38:
        *a3 = v17;
        return;
      }
    }

    else
    {
      OUTLINED_FUNCTION_107_0();
      v17 = swift_allocObject();
    }

    v18 = 22;
LABEL_37:
    *(v17 + 16) = v18;
    goto LABEL_38;
  }

  objc_opt_self();
  v23 = OUTLINED_FUNCTION_2_39();
  if (v23)
  {
    v24 = v23;
    OUTLINED_FUNCTION_3_33();
    v25 = swift_allocObject();
    v26 = [v24 bundleIdentifier];
    v27 = sub_1C9063EEC();
    v29 = v28;

    *(v25 + 16) = v27;
    *(v25 + 24) = v29;
    v30 = [v24 identifier];
    v31 = sub_1C9063EEC();
    v33 = v32;

    *(v25 + 32) = v31;
    *(v25 + 40) = v33;
    v17 = v25 | 0x4000000000000000;
    goto LABEL_38;
  }

  objc_opt_self();
  v34 = OUTLINED_FUNCTION_2_39();
  if (v34)
  {
    v35 = v34;
    OUTLINED_FUNCTION_3_33();
    v36 = swift_allocObject();
    *(v36 + 16) = a1;
    *(v36 + 24) = a2;

    v37 = [v35 enumerationIdentifier];
LABEL_25:
    v40 = v37;
    v41 = sub_1C9063EEC();
    v43 = v42;

    *(v36 + 32) = v41;
    *(v36 + 40) = v43;
    v17 = v36 | 0x4000000000000000;
    goto LABEL_38;
  }

  objc_opt_self();
  v38 = OUTLINED_FUNCTION_2_39();
  if (v38)
  {
    v39 = v38;
    OUTLINED_FUNCTION_3_33();
    v36 = swift_allocObject();
    *(v36 + 16) = a1;
    *(v36 + 24) = a2;

    v37 = [v39 identifier];
    goto LABEL_25;
  }

  objc_opt_self();
  v44 = OUTLINED_FUNCTION_2_39();
  if (v44)
  {
    v45 = [v44 typeIdentifier];
    if (v45 == 14)
    {
      OUTLINED_FUNCTION_107_0();
      v17 = swift_allocObject();
      v18 = 34;
      goto LABEL_37;
    }

    if (v45 == 3)
    {
      OUTLINED_FUNCTION_107_0();
      v17 = swift_allocObject();
      v18 = 37;
      goto LABEL_37;
    }

    if (v45 == 12)
    {
      OUTLINED_FUNCTION_107_0();
      v17 = swift_allocObject();
      v18 = 38;
      goto LABEL_37;
    }

    if (v45 == 13)
    {
      OUTLINED_FUNCTION_107_0();
      v17 = swift_allocObject();
      v18 = 35;
      goto LABEL_37;
    }

    if (!v45)
    {
      OUTLINED_FUNCTION_107_0();
      v17 = swift_allocObject();
      v18 = 39;
      goto LABEL_37;
    }
  }

  else
  {
    objc_opt_self();
    v46 = OUTLINED_FUNCTION_2_39();
    if (v46)
    {
      v47 = v46;
      OUTLINED_FUNCTION_3_33();
      v36 = swift_allocObject();
      *(v36 + 16) = 0xD00000000000001BLL;
      *(v36 + 24) = 0x80000001C90CB600;
      v37 = [v47 identifier];
      goto LABEL_25;
    }

    objc_opt_self();
    if (OUTLINED_FUNCTION_2_39())
    {
LABEL_36:
      OUTLINED_FUNCTION_107_0();
      v17 = swift_allocObject();
      v18 = 28;
      goto LABEL_37;
    }

    objc_opt_self();
    v48 = OUTLINED_FUNCTION_2_39();
    if (v48)
    {
      if (![v48 typeIdentifier])
      {
        OUTLINED_FUNCTION_107_0();
        v17 = swift_allocObject();
        v18 = 41;
        goto LABEL_37;
      }
    }

    else
    {
      objc_opt_self();
      if (OUTLINED_FUNCTION_2_39())
      {
        OUTLINED_FUNCTION_107_0();
        v17 = swift_allocObject();
        v18 = 23;
        goto LABEL_37;
      }

      objc_opt_self();
      v58 = OUTLINED_FUNCTION_2_39();
      if (v58)
      {
        v59 = [v58 identifier];
        v83 = sub_1C9063EEC();
        v84 = v60;

        v82[1] = sub_1C8CB78AC(0, &qword_1EC3169D8, 0x1E69AC758);
        v61 = sub_1C90644FC();
        v62 = [v61 identifier];

        v63 = sub_1C9063EEC();
        v65 = v64;

        if (v63 == v83 && v65 == v84)
        {
        }

        else
        {
          v67 = sub_1C9064C2C();

          if ((v67 & 1) == 0)
          {
            v68 = sub_1C906451C();
            v69 = [v68 identifier];

            v70 = sub_1C9063EEC();
            v72 = v71;

            if (v70 == v83 && v72 == v84)
            {
            }

            else
            {
              v74 = sub_1C9064C2C();

              if ((v74 & 1) == 0)
              {
                v75 = sub_1C906450C();
                v76 = [v75 identifier];

                v77 = sub_1C9063EEC();
                v79 = v78;

                if (v77 == v83 && v79 == v84)
                {
                }

                else
                {
                  v81 = sub_1C9064C2C();

                  if ((v81 & 1) == 0)
                  {
                    goto LABEL_45;
                  }
                }

                OUTLINED_FUNCTION_107_0();
                v17 = swift_allocObject();
                v18 = 46;
                goto LABEL_37;
              }
            }

            OUTLINED_FUNCTION_107_0();
            v17 = swift_allocObject();
            v18 = 45;
            goto LABEL_37;
          }
        }

        OUTLINED_FUNCTION_107_0();
        v17 = swift_allocObject();
        v18 = 44;
        goto LABEL_37;
      }
    }
  }

LABEL_45:
  v49 = *MEMORY[0x1E69E10E8];
  sub_1C906371C();
  v50 = v4;
  v51 = sub_1C9063D1C();
  v52 = sub_1C906444C();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v53 = 138412290;
    *(v53 + 4) = v50;
    *v54 = v50;
    v55 = v50;
    _os_log_impl(&dword_1C8C9B000, v51, v52, "Unsupported LNValueType to TypeIdentifier: %@", v53, 0xCu);
    sub_1C8E25A00(v54);
    MEMORY[0x1CCA833A0](v54, -1, -1);
    MEMORY[0x1CCA833A0](v53, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  sub_1C8E259AC();
  swift_allocError();
  *v56 = v50;
  swift_willThrow();
  v57 = v50;
}

uint64_t sub_1C8CB4484()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_3_33();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_7_3()
{
  result = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return sub_1C9062BFC();
}

uint64_t OUTLINED_FUNCTION_7_5()
{

  return swift_once();
}

void OUTLINED_FUNCTION_7_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v35 = *(v29 + 56) + 104 * v28;
  *v35 = v33;
  *(v35 + 1) = *(v34 - 152);
  *(v35 + 4) = *(v34 - 149);
  *(v35 + 8) = v30;
  *(v35 + 16) = v32;
  *(v35 + 24) = v31;
  *(v35 + 32) = v27;
  *(v35 + 33) = *(v34 - 160);
  *(v35 + 36) = *(v34 - 157);
  *(v35 + 40) = a27;
  *(v35 + 48) = a26;
  *(v35 + 56) = a25;
  *(v35 + 64) = a21;
}

uint64_t OUTLINED_FUNCTION_7_9()
{
  v3 = *(v0 + 8 * v1 + 32);
}

uint64_t OUTLINED_FUNCTION_7_10()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_1(unint64_t *a1)
{

  return sub_1C8CA669C(a1);
}

uint64_t OUTLINED_FUNCTION_7_27()
{

  return sub_1C9062DDC();
}

uint64_t OUTLINED_FUNCTION_7_28()
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_7_35()
{

  return sub_1C8ECC488();
}

uint64_t OUTLINED_FUNCTION_7_40()
{

  return MEMORY[0x1EEE18D28](0);
}

uint64_t OUTLINED_FUNCTION_7_41()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_42()
{
  v2 = *(v1 - 88);
  v3 = *(*(v1 - 96) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_7_45()
{
  v2 = *(v0 - 96);

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_7_49()
{
  v2 = *(v0 - 528);

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_7_50()
{
  v2 = *(v0 - 256);

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_7_55()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_56()
{

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_156_1()
{
}

uint64_t OUTLINED_FUNCTION_156_4()
{
}

uint64_t OUTLINED_FUNCTION_3_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_11()
{

  return sub_1C90624EC();
}

uint64_t OUTLINED_FUNCTION_3_15()
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_3_16()
{

  return sub_1C8CBA264(v0, type metadata accessor for ToolDatabase.Pager);
}

void OUTLINED_FUNCTION_3_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

unint64_t OUTLINED_FUNCTION_3_25(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_1C8D24D68();
}

uint64_t OUTLINED_FUNCTION_3_28()
{
}

uint64_t OUTLINED_FUNCTION_3_32()
{
  v3 = *(v0 - 112);
  v2 = *(v0 - 104);

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_3_34(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, __int128 a9, uint64_t a10, char a11, __int128 a12, uint64_t a13, char a14)
{
  *&a12 = a1;
  *(&a12 + 1) = a2;
  a13 = a3;
  a14 = a4;
  *&a9 = a5;
  *(&a9 + 1) = a6;
  a10 = a7;
  a11 = a8;

  return static RuntimePlatformVersion.< infix(_:_:)(&a9, &a12);
}

uint64_t OUTLINED_FUNCTION_3_36()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_37()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_3_39@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 136);
  v4 = *(v1 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_41()
{

  return sub_1C9062D6C();
}

uint64_t OUTLINED_FUNCTION_1_6()
{
  result = *v0;
  if ((v0[1] & 0x2000000000000000) == 0)
  {
    v2 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_42()
{

  return _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
}

uint64_t OUTLINED_FUNCTION_3_44(uint64_t a1)
{

  return sub_1C8EE52DC(v2, a1, v1, sub_1C902D7E0);
}

uint64_t OUTLINED_FUNCTION_3_46()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_54()
{
  v2 = *(v0 - 120);

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_3_55()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_56(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a4 + 16;
  v5 = *(a4 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_61()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_64()
{
  result = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_65()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_67()
{

  return sub_1C9063E9C();
}

uint64_t OUTLINED_FUNCTION_3_68()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_69()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_355()
{

  return sub_1C9064DEC();
}

uint64_t OUTLINED_FUNCTION_2_7()
{

  return sub_1C906251C();
}

uint64_t OUTLINED_FUNCTION_2_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_14()
{
  v2 = *(v0 - 104);

  return sub_1C9064ACC();
}

unint64_t OUTLINED_FUNCTION_2_16()
{
  v2 = *v0;

  return sub_1C8CAE064();
}

uint64_t OUTLINED_FUNCTION_2_19()
{
  *v0 = *(v3 - 96);
  *(v0 + 16) = v2;
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
}

uint64_t OUTLINED_FUNCTION_2_20()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_23()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_2_28()
{
}

uint64_t OUTLINED_FUNCTION_2_29()
{

  return sub_1C9064C2C();
}

uint64_t OUTLINED_FUNCTION_2_32()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_2_34()
{
  *v0 = v8;
  *(v0 + 8) = v3;
  *(v0 + 16) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  *(v0 + 48) = v7;
  *(v0 + 56) = *(v1 + 56);
  *(v0 + 72) = *(v1 + 72);
  result = *(v1 + 81);
  *(v0 + 81) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_35()
{

  return sub_1C9064A0C();
}

uint64_t OUTLINED_FUNCTION_2_39()
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_2_43()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_45()
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_2_48()
{

  return sub_1C9064C2C();
}

void OUTLINED_FUNCTION_2_51()
{
  v0[10] = 0;
  v0[12] = 0;
  v0[14] = 0;
}

uint64_t OUTLINED_FUNCTION_2_57()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_65()
{
  v2 = *(v0 - 128);

  return sub_1C8F26414(v2, type metadata accessor for ToolKitProtoToolInvocationSignature);
}

uint64_t OUTLINED_FUNCTION_2_66()
{

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_2_68()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_76()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_78()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_81()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_106_2()
{
  v2 = *(v0 - 72);

  return sub_1C8CD0D98(v2, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle);
}

uint64_t OUTLINED_FUNCTION_106_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  *(a1 + *(a3 + 28)) = a4;

  return sub_1C8E1BAB4(a1, a2, type metadata accessor for TypedValueResolutionRequest);
}

void OUTLINED_FUNCTION_340()
{

  JUMPOUT(0x1CCA81A90);
}

uint64_t OUTLINED_FUNCTION_41_2()
{
}

uint64_t OUTLINED_FUNCTION_41_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_41_11()
{
  result = *(v0 + 160);
  v2 = *(v0 + 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_41_14()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_41_16()
{
  v3 = *(v2 - 72);
  *(v2 - 368) = v1;
  return v0;
}

void OUTLINED_FUNCTION_41_17()
{
  v4 = *(v3 + 8 * *(v1 + v2));
  v5 = *(v0 + 24);
  v6 = *(v0 + 16) + 1;
}

BOOL OUTLINED_FUNCTION_15_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_41_18()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_41_19()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_84_1()
{

  return sub_1C8D9913C();
}

uint64_t OUTLINED_FUNCTION_84_3@<X0>(char a1@<W8>)
{
  *(v1 - 208) = a1;

  return sub_1C9064A0C();
}

uint64_t OUTLINED_FUNCTION_84_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_84_9()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_31_0()
{

  return sub_1C9064C2C();
}

void OUTLINED_FUNCTION_15_10()
{
  *(v0 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v2;
  v6 = (*(v0 + 48) + 32 * v2);
  *v6 = v5;
  v6[1] = v3;
  v6[2] = v1;
  v6[3] = v4;
  v7 = *(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_347_0()
{
  v2 = *(v0 + 16) & 0x1FFFFFFFFFFFFFFFLL;
}

uint64_t OUTLINED_FUNCTION_15_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_18()
{

  return MEMORY[0x1EEE09AD8](v1, v2, v0);
}

uint64_t OUTLINED_FUNCTION_15_21()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_24()
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_15_26()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_15_27(void *a1)
{

  return memcpy(a1, (v1 + 200), 0x51uLL);
}

uint64_t OUTLINED_FUNCTION_15_28()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_29()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_34()
{

  return sub_1C903566C(v0, type metadata accessor for ToolKitProtoComparisonPredicate.Template);
}

uint64_t OUTLINED_FUNCTION_15_36()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_29_0()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_0_16()
{
  v5 = 1 << *(v3 + 32);
  if (v5 < 64)
  {
    v6 = ~(v0 << v5);
  }

  else
  {
    v6 = v0;
  }

  v7 = v6 & *(v3 + 56);
  sub_1C8D07154(v3, v2);
  sub_1C8D07154(v1, v4);
  return sub_1C8D07154(v3, v2);
}

uint64_t OUTLINED_FUNCTION_0_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_20()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_28()
{
  v4 = *v0;
  v3 = v0[1];
  *(v1 - 96) = *(v0 + 1);
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];

  return type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
}

uint64_t OUTLINED_FUNCTION_0_35()
{
  result = v0 + 56;
  v3 = v1 + 56 + 8 * (((1 << *(v0 + 32)) + 63) >> 6);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_45()
{

  return sub_1C9064C2C();
}

uint64_t OUTLINED_FUNCTION_0_46()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_48(const void *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  TypeInstance.asSourced(from:attribution:)(a1, va);
}

uint64_t OUTLINED_FUNCTION_0_50()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_55()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_59()
{
  result = v0;
  v3 = *(v1 - 424);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_68()
{

  return sub_1C8F07D10(v0, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
}

uint64_t OUTLINED_FUNCTION_0_72()
{

  return sub_1C8F17374(v0, type metadata accessor for ToolKitProtoSearchableItemPredicate);
}

uint64_t OUTLINED_FUNCTION_0_76()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_82()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_53_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_86()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_89()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_90()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_39_1()
{
  sub_1C8D06DE0(v5, v4, v1);
  sub_1C8D06DE0(v0, v3, v2);
  return v5;
}

uint64_t OUTLINED_FUNCTION_39_2()
{
  v2 = *(v0 - 88);
  v3 = *(v0 - 72);

  return sub_1C90644BC();
}

uint64_t OUTLINED_FUNCTION_39_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_39_7()
{
  result = v0;
  v3 = *(v1 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_39_9()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 336);
  return result;
}

uint64_t OUTLINED_FUNCTION_39_12()
{
  v2 = *(v0 - 96);

  return sub_1C9064B8C();
}

void OUTLINED_FUNCTION_39_14(int a1@<W8>)
{
  v1[3] = a1;
  v1[4] = a1;
  v1[5] = a1;
  v1[6] = a1;
  v1[7] = a1;
  v1[8] = a1;
  v1[10] = a1;
}

uint64_t OUTLINED_FUNCTION_39_16()
{
  v2 = *(*(v1 - 288) + 8);
  result = v0;
  v4 = *(v1 - 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_39_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char a22, uint64_t a23, uint64_t a24)
{
  v27 = *(v25 - 104);

  return sub_1C8D3ED20(v24, v27, a24, a23, a22);
}

void *OUTLINED_FUNCTION_39_18()
{
  *(v2 + 16) = v0;
  *(v3 - 392) = v2;

  return memcpy((v2 + 104 * v1 + 32), (v3 - 208), 0x61uLL);
}

uint64_t OUTLINED_FUNCTION_1_10()
{

  return sub_1C90649EC();
}

uint64_t OUTLINED_FUNCTION_1_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_17()
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_1_23()
{
  v1 = *(*(v0 - 360) + 8);
  result = *(v0 - 368);
  v3 = *(v0 - 352);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_24(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1 + *(a1 + 24), 1, 1, v2);
  v4 = v1 + *(a1 + 28);

  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_1_27()
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_31()
{
  *(v0 + 16) = *(v1 + 16);
  v2 = *(v1 + 56);
  *(v1 + 32);
}

uint64_t OUTLINED_FUNCTION_1_40()
{

  return sub_1C9063EEC();
}

uint64_t OUTLINED_FUNCTION_1_41()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_43()
{

  return sub_1C8DFCA4C(v0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter);
}

uint64_t OUTLINED_FUNCTION_1_44()
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_45()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
}

uint64_t OUTLINED_FUNCTION_1_46()
{

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_1_50()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_51()
{

  return sub_1C906498C();
}

void OUTLINED_FUNCTION_1_54()
{
  v1 = *(v0 - 416);
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);
}

uint64_t OUTLINED_FUNCTION_1_60()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_68()
{

  return sub_1C8F22C30(v0, type metadata accessor for ToolKitProtoTypeIdentifier.Builtin);
}

uint64_t OUTLINED_FUNCTION_1_69(unint64_t *a1)
{

  return sub_1C8D28184(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_1_70()
{

  return sub_1C8F26414(v0, type metadata accessor for ToolKitProtoToolSummaryString.Component);
}

uint64_t OUTLINED_FUNCTION_1_73()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_77()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_78()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_82()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_83()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_85()
{
  v2 = *(*(v0 + 8) + 8);
  result = v1;
  v4 = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_86()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_88()
{

  return sub_1C9064B8C();
}

uint64_t OUTLINED_FUNCTION_1_89()
{

  return swift_once();
}

void OUTLINED_FUNCTION_67_0(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_67_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_67_2()
{
}

uint64_t OUTLINED_FUNCTION_67_9()
{
}

uint64_t OUTLINED_FUNCTION_67_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{

  return sub_1C8D07344(&a40, &a27);
}

void *OUTLINED_FUNCTION_67_11(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x61uLL);
}

uint64_t sub_1C8CB78AC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1C8CB7914(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x78 && *(a1 + 8))
    {
      v2 = *a1 + 119;
    }

    else
    {
      v2 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
      if (v2 >= 0x77)
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

uint64_t sub_1C8CB795C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void OUTLINED_FUNCTION_14_6()
{

  sub_1C8D098A4();
}

uint64_t OUTLINED_FUNCTION_14_11(unint64_t *a1)
{

  return sub_1C8D4F674(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_14_13()
{
}

void *OUTLINED_FUNCTION_14_21(void *a1)
{

  return memcpy(a1, (v1 - 200), 0x61uLL);
}

uint64_t OUTLINED_FUNCTION_14_22(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_14_24()
{

  return sub_1C9062A7C();
}

void OUTLINED_FUNCTION_14_28()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t OUTLINED_FUNCTION_14_32()
{

  return sub_1C8F090A0(v0);
}

uint64_t OUTLINED_FUNCTION_14_33()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_14_34()
{

  return memcpy((v0 + 456), (v1 + 200), 0x51uLL);
}

uint64_t OUTLINED_FUNCTION_14_35()
{
  v2 = *(v0 - 72);

  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_14_36()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_37()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_39()
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_14_44()
{

  return swift_once();
}

uint64_t FileLock.lock(_:configuration:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v110[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1C9063D3C();
  v7 = OUTLINED_FUNCTION_11(v6);
  v105 = v8;
  v106 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25();
  v98 = v11 - v12;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v93 - v14;
  v103 = type metadata accessor for FileLock(0);
  v16 = OUTLINED_FUNCTION_13_1(v103);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  v21 = v20 - v19;
  v22 = sub_1C9061EBC();
  v23 = OUTLINED_FUNCTION_11(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25();
  v97 = (v28 - v29);
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v93 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v93 - v34;
  v36 = *a1;
  v99 = *a2;
  v107 = v3;
  sub_1C8CC0CE0(v3, v21);
  (*(v25 + 32))(v35, v21, v22);
  v95 = *MEMORY[0x1E69E10F0];
  sub_1C906371C();
  v37 = *(v25 + 16);
  v108 = v35;
  v96 = v25 + 16;
  v94 = v37;
  (v37)(v32, v35, v22);
  v102 = v15;
  v38 = sub_1C9063D1C();
  v39 = sub_1C906443C();
  v40 = os_log_type_enabled(v38, v39);
  v104 = v25;
  v100 = v36;
  if (v40)
  {
    swift_slowAlloc();
    v110[0] = OUTLINED_FUNCTION_17_21();
    *v22 = 136315394;
    if (v36)
    {
      v41 = 0x646572616873;
    }

    else
    {
      v41 = 0x766973756C637865;
    }

    if (v36)
    {
      v42 = 0xE600000000000000;
    }

    else
    {
      v42 = 0xE900000000000065;
    }

    v43 = sub_1C8CACE04(v41, v42, v110);

    *(v22 + 4) = v43;
    *(v22 + 12) = 2080;
    v44 = _s10Foundation3URLV7ToolKitE8protobuf7useCaseSS19VoiceShortcutClient011ProtobufUseG0O_tF_0();
    v46 = v45;
    v47 = *(v25 + 8);
    v47(v32, v101);
    v48 = sub_1C8CACE04(v44, v46, v110);

    *(v22 + 14) = v48;
    _os_log_impl(&dword_1C8C9B000, v38, v39, "Attempting to take out %s lock on %s", v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
    v22 = v101;
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
  }

  else
  {

    v47 = *(v25 + 8);
    v47(v32, v22);
  }

  v49 = *(v105 + 8);
  v49(v102, v106);
  v50 = *(v103 + 5);
  if (*(v107 + v50 + 4) << 32 != 0x200000000)
  {
    type metadata accessor for FileLock.LockError(0);
    OUTLINED_FUNCTION_5_32();
    sub_1C8CC4BD4(v56, v57);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    OUTLINED_FUNCTION_8_30();
LABEL_34:
    result = (v47)(v108, v22);
    goto LABEL_35;
  }

  v51 = v108;
  sub_1C9061E5C();
  sub_1C9063F7C();

  v52 = sub_1C9063D5C();

  if ((v52 & 0x80000000) != 0)
  {
LABEL_30:
    MEMORY[0x1CCA817F0](v53);
    v78 = sub_1C9063D4C();
    type metadata accessor for FileLock.LockError(0);
    OUTLINED_FUNCTION_5_32();
    sub_1C8CC4BD4(v79, v80);
    swift_allocError();
    v82 = v81;
    if ((v78 & 0x100000000) != 0)
    {
      v86 = sub_1C906188C();
      v84 = v82;
      v85 = 1;
    }

    else
    {
      v83 = sub_1C906188C();
      LODWORD(v110[0]) = v78;
      sub_1C8D1CE58(MEMORY[0x1E69E7CC0]);
      sub_1C8CC4BD4(&unk_1EDA62CE0, MEMORY[0x1E6967EB8]);
      sub_1C9061D5C();
      v84 = v82;
      v85 = 0;
      v86 = v83;
    }

    __swift_storeEnumTagSinglePayload(v84, v85, 1, v86);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_34;
  }

  if ((v99 & 2) != 0)
  {
    OUTLINED_FUNCTION_9_25();
    v58 = sub_1C9063F7C();
    fremovexattr(v52, (v58 + 32), 0);
  }

  else
  {
    value = 1;
    OUTLINED_FUNCTION_9_25();
    v54 = sub_1C9063F7C();
    v55 = fsetxattr(v52, (v54 + 32), &value, 1uLL, 0, 0);

    if (v55 < 0)
    {
LABEL_29:
      v53 = close(v52);
      goto LABEL_30;
    }
  }

  if (v100)
  {
    v59 = 5;
  }

  else
  {
    v59 = 6;
  }

  v60 = flock(v52, v59);
  v61 = v97;
  if (v60 < 0)
  {
    goto LABEL_29;
  }

  v103 = v47;
  sub_1C906371C();
  v62 = OUTLINED_FUNCTION_208_0();
  v94(v62);
  v63 = v61;
  v64 = sub_1C9063D1C();
  v65 = sub_1C906443C();
  if (os_log_type_enabled(v64, v65))
  {
    swift_slowAlloc();
    v102 = OUTLINED_FUNCTION_17_21();
    v110[0] = v102;
    *v22 = 136315394;
    if (v100)
    {
      v66 = 0x646572616873;
    }

    else
    {
      v66 = 0x766973756C637865;
    }

    if (v100)
    {
      v67 = 0xE600000000000000;
    }

    else
    {
      v67 = 0xE900000000000065;
    }

    v68 = sub_1C8CACE04(v66, v67, v110);

    *(v22 + 4) = v68;
    *(v22 + 12) = 2080;
    _s10Foundation3URLV7ToolKitE8protobuf7useCaseSS19VoiceShortcutClient011ProtobufUseG0O_tF_0();
    OUTLINED_FUNCTION_8_30();
    v104 = v69;
    v70 = v63;
    v71 = v103;
    v103(v70, v101);
    v72 = OUTLINED_FUNCTION_208_0();
    v75 = sub_1C8CACE04(v72, v73, v74);

    *(v22 + 14) = v75;
    _os_log_impl(&dword_1C8C9B000, v64, v65, "Successfully took out %s lock on %s", v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();

    v49(v98, v106);
    result = v71(v108, v101);
    v77 = v100;
  }

  else
  {

    v88 = v103;
    v103(v63, v22);
    v49(v98, v106);
    result = v88(v51, v22);
    v77 = v100;
  }

  v89 = v77 == 0;
  v90 = 0x100000000;
  if (v89)
  {
    v90 = 0;
  }

  v91 = v90 | v52 | (v99 << 40);
  v92 = v107 + v50;
  *v92 = v52;
  *(v92 + 4) = WORD2(v91);
LABEL_35:
  v87 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1C8CB867C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1C8CC0E5C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1C90647EC();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t OUTLINED_FUNCTION_76()
{

  return sub_1C8D02958();
}

uint64_t OUTLINED_FUNCTION_76_0()
{
  v2 = *(v0 - 208);
  *(v0 - 288) = *(v0 - 224);
  *(v0 - 272) = v2;
  *(v0 - 256) = *(v0 - 192);
  *(v0 - 247) = *(v0 - 183);

  return sub_1C8D3A16C(v0 - 288);
}

uint64_t OUTLINED_FUNCTION_76_3()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 328);
  return result;
}

uint64_t OUTLINED_FUNCTION_76_5()
{
  v1 = type metadata accessor for ToolIcon(0);
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
  return v0;
}

__n128 OUTLINED_FUNCTION_76_7(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  return a1[2];
}

uint64_t OUTLINED_FUNCTION_76_11()
{
  v2 = v0;
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v2[3];
  v7 = v2[4];

  return sub_1C9063FBC();
}

uint64_t sub_1C8CB88EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CA78D4(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_1C8CB892C()
{
  result = qword_1EDA6CCF0;
  if (!qword_1EDA6CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CCF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_358()
{

  return sub_1C9064E1C();
}

uint64_t OUTLINED_FUNCTION_358_0()
{

  return sub_1C9063EAC();
}

uint64_t OUTLINED_FUNCTION_358_1()
{

  return sub_1C9063EAC();
}

uint64_t sub_1C8CB89D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CA87A4(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_1C8CB8A20()
{
  result = qword_1EDA69CA0;
  if (!qword_1EDA69CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69CA0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_73_5()
{
  v2 = *(v0 - 88);

  return sub_1C8ECA488();
}

uint64_t ToolDatabase.__allocating_init(readonly:)(int a1)
{
  v3 = a1;
  v90[4] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_25();
  v80 = v8 - v9;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v77 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v77 - v14;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v77 - v16;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v17);
  v83 = &v77 - v18;
  v86 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  v19 = OUTLINED_FUNCTION_13_1(v86);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v78 = &v77 - v26;
  v27 = sub_1C9061EBC();
  v28 = OUTLINED_FUNCTION_11(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_15();
  v35 = v34 - v33;
  v36 = type metadata accessor for ToolDatabase.Pager(0);
  v37 = OUTLINED_FUNCTION_13_1(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_15();
  v42 = v41 - v40;
  if (v3 == 2 || (a1 & 1) != 0)
  {
    v43 = 2;
  }

  else
  {
    v43 = 1;
  }

  v89 = v43;
  v84 = a1;
  v82 = v12;
  v79 = v24;
  v44 = v42;
  v87 = v1;
  if (qword_1EDA6D908 != -1)
  {
    swift_once();
  }

  v45 = __swift_project_value_buffer(v27, qword_1EDA6D910);
  swift_beginAccess();
  v46 = *(v30 + 16);
  v46(v35, v45, v27);
  if ((sub_1C9061D8C() & 1) == 0)
  {
    __break(1u);
  }

  v46(v44, v35, v27);
  v47 = v44;
  *(v44 + *(v36 + 20)) = 63;
  *(v44 + *(v36 + 24)) = v89;
  v48 = [objc_opt_self() defaultManager];
  v49 = sub_1C9061DDC();
  v90[0] = 0;
  v50 = [v48 createDirectoryAtURL:v49 withIntermediateDirectories:1 attributes:0 error:v90];

  if (!v50)
  {
    v52 = v90[0];
    sub_1C9061D7C();

    swift_willThrow();
    (*(v30 + 8))(v35, v27);
    goto LABEL_17;
  }

  v51 = v84;
  v52 = v84;
  v53 = *(v30 + 8);
  v54 = v90[0];
  v53(v35, v27);
  if (v52 != 2)
  {
    v57 = v88;
    v56 = v85;
    v58 = v86;
    goto LABEL_16;
  }

  v52 = v83;
  v55 = v85;
  sub_1C8CBAA48();
  v56 = v55;
  v57 = v88;
  v58 = v86;
  if (v55)
  {

    __swift_storeEnumTagSinglePayload(v52, 1, 1, v58);
    v56 = 0;
LABEL_15:
    sub_1C8D16D78(v52, &qword_1EC313058, &qword_1C9071D80);
    v51 = 1;
    goto LABEL_16;
  }

  if (__swift_getEnumTagSinglePayload(v52, 1, v86) == 1)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_1_18();
  v67 = v78;
  sub_1C8CBAF88(v52, v78, v68);
  v52 = *(v67 + *(v58 + 20));
  OUTLINED_FUNCTION_0_21();
  sub_1C8CBA264(v67, v69);
  v51 = v52 ^ 1;
LABEL_16:
  sub_1C8CBAFE8(v47, v51 & 1, v57);
  if (!v56)
  {
    if (v51)
    {
      v61 = v81;
      sub_1C8CBA654(v57, v81);
      v52 = OUTLINED_FUNCTION_8_12();
      ToolDatabase.init(file:readonly:)(v61, 1);
      sub_1C8D16D78(v57, &qword_1EC313058, &qword_1C9071D80);
      OUTLINED_FUNCTION_3_16();
      goto LABEL_18;
    }

    v62 = v82;
    sub_1C8CBA654(v57, v82);
    if (__swift_getEnumTagSinglePayload(v62, 1, v58) != 1)
    {
      OUTLINED_FUNCTION_1_18();
      v70 = v79;
      sub_1C8CBAF88(v62, v79, v71);
      v72 = v80;
      sub_1C8D5D8BC(v70, v80);
      __swift_storeEnumTagSinglePayload(v72, 0, 1, v58);
      v52 = OUTLINED_FUNCTION_8_12();
      ToolDatabase.init(file:readonly:)(v72, 0);
      ToolDatabase.Pager.setActive(databaseFile:)();
      OUTLINED_FUNCTION_0_21();
      sub_1C8CBA264(v70, v76);
      sub_1C8D16D78(v57, &qword_1EC313058, &qword_1C9071D80);
      OUTLINED_FUNCTION_3_16();
      goto LABEL_18;
    }

    v52 = &qword_1EC313058;
    OUTLINED_FUNCTION_116();
    sub_1C8D16D78(v63, v64, v65);
    sub_1C8D5D868();
    swift_allocError();
    *v66 = 0u;
    *(v66 + 16) = 0u;
    *(v66 + 32) = 0u;
    *(v66 + 48) = 0u;
    *(v66 + 64) = 0u;
    *(v66 + 80) = 0u;
    *(v66 + 96) = -64;
    swift_willThrow();
    OUTLINED_FUNCTION_116();
    sub_1C8D16D78(v73, v74, v75);
  }

LABEL_17:
  OUTLINED_FUNCTION_3_16();
LABEL_18:
  v59 = *MEMORY[0x1E69E9840];
  return v52;
}

void OUTLINED_FUNCTION_24_4()
{
  v1 = *(v0 - 136);
  v2 = *(v0 - 168);
  v3 = *(v0 - 160);
  v4 = *(v0 - 172);
}

uint64_t OUTLINED_FUNCTION_24_7()
{

  return sub_1C90649EC();
}

uint64_t OUTLINED_FUNCTION_24_9()
{
  v2 = *(v0 - 176);
  v3 = *(v0 - 168);

  return sub_1C9064C2C();
}

uint64_t OUTLINED_FUNCTION_24_10()
{
  v2 = *(v0 - 272);
}

uint64_t OUTLINED_FUNCTION_24_16@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1C9064B2C();
}

uint64_t OUTLINED_FUNCTION_24_20()
{
  v2 = *(v0 + 96);

  return sub_1C8E59658(v2, type metadata accessor for TypedValue.ID);
}

uint64_t OUTLINED_FUNCTION_24_21()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_24_24()
{

  return sub_1C8F07110();
}

__n128 OUTLINED_FUNCTION_24_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  *v9 = a9.n128_u32[0];
  return result;
}

unint64_t OUTLINED_FUNCTION_24_31()
{

  return sub_1C8D24EA8(v0);
}

uint64_t OUTLINED_FUNCTION_96_2(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_96_3()
{
  result = type metadata accessor for FollowUpActionExecution.Request(0);
  v1 = *(result + 20);
  return result;
}

void OUTLINED_FUNCTION_96_4(uint64_t a1@<X8>)
{
  v3[24] = v1;
  v3[25] = v2;
  v3[26] = v4;
  v3[27] = 0xD000000000000013;
  v3[28] = a1;
}

uint64_t sub_1C8CB9578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313048, &qword_1C906A960);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313050, &qword_1C906A968);
  OUTLINED_FUNCTION_11(v10);
  v45 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_16_5();
  v16 = type metadata accessor for ToolDatabase.DatabaseFile(v15);
  v17 = OUTLINED_FUNCTION_13_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v22 = v21 - v20;
  v24 = *(v23 + 32);
  v25 = [objc_opt_self() defaultManager];
  *(v22 + v24) = v25;
  sub_1C9061E5C();
  if (qword_1EDA6DA10 != -1)
  {
    OUTLINED_FUNCTION_14_7();
    swift_once();
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313060, &qword_1C906A970);
  __swift_project_value_buffer(v26, qword_1EDA6DA18);
  sub_1C906332C();

  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    v27 = sub_1C9061EBC();
    OUTLINED_FUNCTION_13_1(v27);
    (*(v28 + 8))(a1);
    sub_1C8CBE41C(v9, &qword_1EC313048);

    OUTLINED_FUNCTION_115();
    return __swift_storeEnumTagSinglePayload(v29, v30, v31, v16);
  }

  else
  {
    v33 = v45;
    (*(v45 + 32))(v2, v9, v10);
    if (qword_1EDA6DA30 != -1)
    {
      OUTLINED_FUNCTION_13_4();
      swift_once();
    }

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313068, &qword_1C906A978);
    __swift_project_value_buffer(v34, qword_1EDA6DA38);
    v35 = v16[7];
    sub_1C906204C();
    sub_1C906334C();
    v36 = sub_1C9061EBC();
    OUTLINED_FUNCTION_179(v36);
    v38 = v37;
    (*(v37 + 16))(v22, a1, v36);
    if (qword_1EDA6D9E8 != -1)
    {
      OUTLINED_FUNCTION_12_4();
      swift_once();
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313070, &qword_1C906A980);
    __swift_project_value_buffer(v39, qword_1EDA6D9F0);
    sub_1C906334C();
    *(v22 + v16[6]) = v47;
    if (qword_1EDA6DA50 != -1)
    {
      OUTLINED_FUNCTION_11_3();
      swift_once();
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313078, &qword_1C906A988);
    __swift_project_value_buffer(v40, qword_1EDA6B1A0);
    sub_1C906334C();
    (*(v38 + 8))(a1, v36);
    (*(v33 + 8))(v2, v10);
    *(v22 + v16[5]) = v47;
    OUTLINED_FUNCTION_0_11();
    sub_1C8CBA80C(v22, v46);
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v16);
    OUTLINED_FUNCTION_1_11();
    return sub_1C8CBA864(v22, v44);
  }
}

uint64_t getEnumTagSinglePayload for IdSearchPredicate.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1C8CB9B04(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_1C90647EC();
  }

  result = sub_1C8CB9CB4(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t *sub_1C8CB9BE0@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  if ((v4 ^ *result) < 0x4000)
  {
    v11 = 0;
    v9 = 1;
  }

  else
  {
    v6 = result[2];
    v5 = result[3];
    result = sub_1C8CB9B04(*result, v4, v6, v5, 10);
    if ((v7 & 0x100) != 0)
    {

      v8 = sub_1C8E269BC(v3, v4, v6, v5, 10);
      v9 = v10;
    }

    else
    {
      v8 = result;
      v9 = v7;
    }

    if (v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = v8;
    }
  }

  *a2 = v11;
  *(a2 + 8) = v9 & 1;
  return result;
}

uint64_t sub_1C8CB9CB4(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, int64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_1C8E272E8(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_97;
    }

    result = sub_1C906405C();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_1C8E272E8(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1C8E272E8(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_93;
  }

  if (v23 < a4 >> 16)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  result = sub_1C906405C();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_92;
  }

  if (v24 < v18)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a7 + 48;
        v40 = a7 + 55;
        v41 = a7 + 87;
        if (a7 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v42 = v25 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v35 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v35;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if (!is_mul_ok(v30, a7))
            {
              return 0;
            }

            v46 = v30 * a7;
            v47 = v44 + v45;
            v38 = __CFADD__(v46, v47);
            v30 = v46 + v47;
            if (v38)
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_96;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v48 = a7 + 48;
      v49 = a7 + 55;
      v50 = a7 + 87;
      if (a7 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v51 = *v25;
          if (v51 < 0x30 || v51 >= v48)
          {
            if (v51 < 0x41 || v51 >= v49)
            {
              v35 = 0;
              if (v51 < 0x61 || v51 >= v50)
              {
                return v35;
              }

              v52 = -87;
            }

            else
            {
              v52 = -55;
            }
          }

          else
          {
            v52 = -48;
          }

          if (!is_mul_ok(v30, a7))
          {
            return 0;
          }

          v53 = v30 * a7;
          v54 = v51 + v52;
          v38 = __CFADD__(v53, v54);
          v30 = v53 + v54;
          if (v38)
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          if (!is_mul_ok(v30, a7))
          {
            return 0;
          }

          v36 = v30 * a7;
          v37 = v33 + v34;
          v38 = v36 >= v37;
          v30 = v36 - v37;
          if (!v38)
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_168_4()
{
}

uint64_t sub_1C8CBA180(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_257();
  v8 = sub_1C9061EBC();
  v9 = OUTLINED_FUNCTION_179(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = sub_1C906204C();
    result = OUTLINED_FUNCTION_179(v13);
    if (*(v15 + 84) != a3)
    {
      *(v4 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = v4 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1C8CBA264(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_22_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_10()
{

  return sub_1C9064C2C();
}

uint64_t OUTLINED_FUNCTION_22_13()
{

  return sub_1C8D85364(v0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
}

uint64_t OUTLINED_FUNCTION_22_14()
{
  v2 = *v0;

  return sub_1C906473C();
}

int64x2_t OUTLINED_FUNCTION_22_18@<Q0>(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = vdupq_n_s64(0xA000000000000000);
  *v1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_22()
{

  return sub_1C90649EC();
}

uint64_t OUTLINED_FUNCTION_22_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{

  return sub_1C903A588(v13, &a13);
}

uint64_t OUTLINED_FUNCTION_22_28()
{

  return sub_1C8F07110();
}

uint64_t OUTLINED_FUNCTION_22_30()
{

  return sub_1C9064B0C();
}

uint64_t OUTLINED_FUNCTION_22_32()
{
  *(v0 - 64) = 0;
  *(v0 - 56) = 0xE000000000000000;

  return sub_1C906478C();
}

void *OUTLINED_FUNCTION_22_34(void *a1)
{

  return memcpy(a1, (v1 + 1152), 0x10AuLL);
}

uint64_t sub_1C8CBA5E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8CBA654(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8CBA6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1685025392 && a2 == 0xE400000000000000;
  if (v5 || (sub_1C9064C2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7170419 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v10 = sub_1C9064C2C();

    if (v10)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1C8CBA7B8(void *a1)
{
  MEMORY[0x1CCA81A20](*a1, a1[1], a1[2], a1[3]);
  sub_1C9061FFC();
}

uint64_t sub_1C8CBA80C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_257();
  v5 = v4(v3);
  OUTLINED_FUNCTION_13_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return a2;
}

uint64_t sub_1C8CBA864(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C8CBA8BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C8CBA928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_257();
  v6 = sub_1C9061EBC();
  v7 = OUTLINED_FUNCTION_179(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_1C906204C();
  v12 = OUTLINED_FUNCTION_179(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = v3 + *(a3 + 28);
    goto LABEL_5;
  }

  v15 = *(v3 + *(a3 + 32));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1C8CBAA48()
{
  OUTLINED_FUNCTION_196();
  v53 = v0;
  v54[2] = *MEMORY[0x1E69E9840];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312700, &qword_1C9066AC0);
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_97();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_97();
  v52 = v9;
  OUTLINED_FUNCTION_111();
  v10 = sub_1C9061D9C();
  v11 = OUTLINED_FUNCTION_11(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v18 = v17 - v16;
  v19 = sub_1C9061EBC();
  v20 = OUTLINED_FUNCTION_11(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  v27 = v26 - v25;
  v28 = [objc_opt_self() defaultManager];
  OUTLINED_FUNCTION_24_5();
  v54[0] = (v29 & 0xFFFFFFFFFFFFLL | 0x6361000000000000);
  v54[1] = 0xEC00000065766974;
  v51 = *MEMORY[0x1E6968F70];
  v50 = *(v13 + 104);
  v50(v18);
  sub_1C8CBAEDC();
  sub_1C9061EAC();
  (*(v13 + 8))(v18, v10);
  sub_1C9061E5C();
  (*(v22 + 8))(v27, v19);
  v30 = sub_1C9063EBC();

  v54[0] = 0;
  v31 = [v28 destinationOfSymbolicLinkAtPath:v30 error:v54];

  v32 = v54[0];
  if (!v31)
  {
    v40 = v54[0];
    v41 = sub_1C9061D7C();

    swift_willThrow();
    goto LABEL_6;
  }

  sub_1C9063EEC();
  v33 = v32;

  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  (v50)(v18, v51, v10);
  sub_1C9061E8C();
  sub_1C8CB9578(v27, v52);
  v38 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  OUTLINED_FUNCTION_108_2(v52, 1, v38);
  if (v39)
  {
    sub_1C8CBE41C(v52, &qword_1EC313058);
LABEL_6:
    type metadata accessor for ToolDatabase.DatabaseFile(0);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_11();
  sub_1C8CBAF30(v52, v53);
  OUTLINED_FUNCTION_150();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v38);
LABEL_7:
  v49 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_198();
}

uint64_t OUTLINED_FUNCTION_319()
{

  return sub_1C9064C2C();
}

uint64_t OUTLINED_FUNCTION_88_4(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
  a1[5] = v4;
  a1[6] = v2;
  a1[7] = v3;
}

unint64_t sub_1C8CBAEDC()
{
  result = qword_1EDA6DAB8[0];
  if (!qword_1EDA6DAB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA6DAB8);
  }

  return result;
}

uint64_t sub_1C8CBAF30(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_257();
  v5 = v4(v3);
  OUTLINED_FUNCTION_13_1(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return a2;
}

uint64_t sub_1C8CBAF88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_13_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C8CBAFE8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v72 = a2;
  v76 = a1;
  v60 = a3;
  v68 = sub_1C9063D3C();
  v4 = *(v68 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v75 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  v7 = *(*(v73 - 8) + 64);
  v8 = (MEMORY[0x1EEE9AC00])(v73);
  v59 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (MEMORY[0x1EEE9AC00])(v8);
  v62 = &v58 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v58 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80);
  v14 = *(*(v13 - 8) + 64);
  v15 = (MEMORY[0x1EEE9AC00])(v13 - 8);
  v66 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (MEMORY[0x1EEE9AC00])(v15);
  v18 = (MEMORY[0x1EEE9AC00])(v17);
  v63 = &v58 - v19;
  v20 = (MEMORY[0x1EEE9AC00])(v18);
  v22 = &v58 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v67 = &v58 - v24;
  v25 = *MEMORY[0x1E69E10F0];
  v69 = v4 + 8;
  v70 = v25;
  v23.n128_u64[0] = 136315138;
  v64 = v23;
  v65 = v26;
  v71 = v22;
  v74 = 2;
  if (v72)
  {
    sub_1C8CBAA48();
    if (v3)
    {

      __swift_storeEnumTagSinglePayload(v22, 1, 1, v73);
    }

    else if (__swift_getEnumTagSinglePayload(v22, 1, v73) != 1)
    {
      v52 = v61;
      sub_1C8CBAF88(v22, v61, type metadata accessor for ToolDatabase.DatabaseFile);
      v35 = *(v52 + *(v73 + 20));
      sub_1C8CBA264(v52, type metadata accessor for ToolDatabase.DatabaseFile);
      goto LABEL_8;
    }

    sub_1C8D16D78(v22, &qword_1EC313058, &qword_1C9071D80);
    v35 = 0;
LABEL_8:
    LOBYTE(v77) = v35;
    sub_1C8CBB654(&v77, v28, v29, v30, v31, v32, v33, v34, v58, v59, v60, v61, v62, v63, v64.n128_i64[0], v64.n128_i64[1], v65, v66, v67, v68);
    v54 = v67;
    return sub_1C8CBA5E4(v54, v60);
  }

  v27 = v65;
  sub_1C8CBAA48();
  if (v3)
  {

    __swift_storeEnumTagSinglePayload(v27, 1, 1, v73);
  }

  else if (__swift_getEnumTagSinglePayload(v27, 1, v73) != 1)
  {
    v53 = v62;
    sub_1C8CBAF88(v27, v62, type metadata accessor for ToolDatabase.DatabaseFile);
    v44 = *(v53 + *(v73 + 20));
    sub_1C8CBA264(v53, type metadata accessor for ToolDatabase.DatabaseFile);
    v36 = v66;
    goto LABEL_11;
  }

  v36 = v66;
  sub_1C8D16D78(v27, &qword_1EC313058, &qword_1C9071D80);
  v44 = 0;
LABEL_11:
  LOBYTE(v77) = v44;
  sub_1C8CBB654(&v77, v37, v38, v39, v40, v41, v42, v43, v58, v59, v60, v61, v62, v63, v64.n128_i64[0], v64.n128_i64[1], v65, v66, v67, v68);
  if (__swift_getEnumTagSinglePayload(v36, 1, v73) == 1)
  {
    sub_1C8D16D78(v36, &qword_1EC313058, &qword_1C9071D80);
    LOBYTE(v77) = v44;
    ToolDatabase.Pager.createDatabaseFile(environment:)(&v77, v45, v46, v47, v48, v49, v50, v51, v58, v59, SWORD2(v59), SBYTE6(v59), HIBYTE(v59), v60, v61, v62, v63, v64.n128_i64[0], v64.n128_i64[1], v65, v66, v67, v68);
    v54 = v63;
  }

  else
  {
    v55 = v59;
    sub_1C8CBAF88(v36, v59, type metadata accessor for ToolDatabase.DatabaseFile);
    v56 = v55;
    v54 = v63;
    sub_1C8CBAF88(v56, v63, type metadata accessor for ToolDatabase.DatabaseFile);
  }

  __swift_storeEnumTagSinglePayload(v54, 0, 1, v73);
  return sub_1C8CBA5E4(v54, v60);
}

void sub_1C8CBB654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v24;
  a20 = v25;
  v126 = v26;
  v127 = v21;
  v28 = v27;
  v125 = type metadata accessor for ToolDatabase.Pager(0);
  v29 = OUTLINED_FUNCTION_13_1(v125);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_25();
  v123 = v32 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v122 = &v118 - v35;
  OUTLINED_FUNCTION_111();
  v36 = sub_1C9063D3C();
  v37 = OUTLINED_FUNCTION_11(v36);
  v124 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_25();
  v43 = v41 - v42;
  v45 = MEMORY[0x1EEE9AC00](v44);
  v47 = &v118 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v118 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80);
  OUTLINED_FUNCTION_9(v50);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v53);
  v54 = OUTLINED_FUNCTION_16_5();
  v55 = type metadata accessor for ToolDatabase.DatabaseFile(v54);
  v56 = OUTLINED_FUNCTION_13_1(v55);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_247();
  v59 = *v28;
  v60 = v127;
  sub_1C8CBAA48();
  v127 = v60;
  if (!v60)
  {
    v120 = v59;
    v119 = v43;
    v121 = v23;
    v61 = OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_108_2(v61, v62, v55);
    if (v63)
    {
      sub_1C8CBE41C(v22, &qword_1EC313058);
LABEL_36:
      v115 = 1;
      v116 = v126;
LABEL_37:
      __swift_storeEnumTagSinglePayload(v116, v115, 1, v55);
      goto LABEL_38;
    }

    OUTLINED_FUNCTION_0_11();
    v64 = v121;
    sub_1C8CBAF30(v22, v121);
    v65 = *(v64 + *(v55 + 24));
    v66 = *(v64 + *(v55 + 20));
    v67 = v125;
    v68 = MEMORY[0x1E69E10F0];
    if (v65 == *(v20 + *(v125 + 20)))
    {
      v69 = v36;
      v70 = v124;
      if (v120 == v66)
      {
        v71 = *MEMORY[0x1E69E10F0];
        v72 = v49;
        sub_1C906371C();
        v73 = OUTLINED_FUNCTION_10_5();
        v74 = v122;
        sub_1C8CBA80C(v73, v122);
        v75 = sub_1C9063D1C();
        v76 = sub_1C906443C();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v123 = v36;
          v78 = v77;
          v79 = swift_slowAlloc();
          v80 = v70;
          v81 = v74;
          v82 = v79;
          a10 = v79;
          *v78 = 134218242;
          v83 = *(v81 + *(v125 + 20));
          OUTLINED_FUNCTION_2_6();
          sub_1C8CBA864(v85, v84);
          *(v78 + 4) = v83;
          *(v78 + 12) = 2080;
          if (v120)
          {
            v86 = 7170419;
          }

          else
          {
            v86 = 1685025392;
          }

          v87 = v72;
          v88 = v75;
          if (v120)
          {
            v89 = 0xE300000000000000;
          }

          else
          {
            v89 = 0xE400000000000000;
          }

          v90 = sub_1C8CACE04(v86, v89, &a10);

          *(v78 + 14) = v90;
          _os_log_impl(&dword_1C8C9B000, v88, v76, "Active database file matches latest interpretable version (%lu) and environment (%s), using it", v78, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v82);
          OUTLINED_FUNCTION_25_0();
          OUTLINED_FUNCTION_25_0();

          (*(v80 + 8))(v87, v123);
          v64 = v121;
        }

        else
        {
          OUTLINED_FUNCTION_2_6();
          sub_1C8CBA864(v74, v117);

          (*(v70 + 8))(v72, v36);
        }

        OUTLINED_FUNCTION_0_11();
        v116 = v126;
        sub_1C8CBAF30(v64, v126);
        v115 = 0;
        goto LABEL_37;
      }
    }

    else
    {
      LODWORD(v122) = *(v64 + *(v55 + 20));
      v91 = *MEMORY[0x1E69E10F0];
      sub_1C906371C();
      v92 = OUTLINED_FUNCTION_10_5();
      v93 = v123;
      sub_1C8CBA80C(v92, v123);
      v94 = sub_1C9063D1C();
      v95 = sub_1C906443C();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        *v96 = 134218240;
        *(v96 + 4) = v65;
        *(v96 + 12) = 2048;
        v97 = *(v93 + *(v67 + 20));
        OUTLINED_FUNCTION_2_6();
        sub_1C8CBA864(v93, v98);
        *(v96 + 14) = v97;
        _os_log_impl(&dword_1C8C9B000, v94, v95, "Active database file version (%lu) is different than latest interpretable version (%lu", v96, 0x16u);
        OUTLINED_FUNCTION_25_0();
      }

      else
      {
        OUTLINED_FUNCTION_2_6();
        sub_1C8CBA864(v93, v99);
      }

      v69 = v36;

      v70 = v124;
      (*(v124 + 8))(v47, v36);
      v66 = v122;
      v64 = v121;
      v68 = MEMORY[0x1E69E10F0];
      if (v120 == v122)
      {
        goto LABEL_34;
      }
    }

    v100 = v66;
    v101 = v69;
    v102 = *v68;
    v103 = v119;
    sub_1C906371C();
    v104 = sub_1C9063D1C();
    v105 = sub_1C906443C();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      a10 = swift_slowAlloc();
      *v106 = 136315394;
      if (v100)
      {
        v107 = 7170419;
      }

      else
      {
        v107 = 1685025392;
      }

      v123 = v101;
      if (v100)
      {
        v108 = 0xE300000000000000;
      }

      else
      {
        v108 = 0xE400000000000000;
      }

      v109 = sub_1C8CACE04(v107, v108, &a10);

      *(v106 + 4) = v109;
      *(v106 + 12) = 2080;
      if (v120)
      {
        v110 = 7170419;
      }

      else
      {
        v110 = 1685025392;
      }

      if (v120)
      {
        v111 = 0xE300000000000000;
      }

      else
      {
        v111 = 0xE400000000000000;
      }

      v112 = sub_1C8CACE04(v110, v111, &a10);

      *(v106 + 14) = v112;
      _os_log_impl(&dword_1C8C9B000, v104, v105, "Active database file (%s) is different than asked environment (%s)", v106, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_25_0();

      (*(v70 + 8))(v119, v123);
      OUTLINED_FUNCTION_1_11();
      v114 = v121;
      goto LABEL_35;
    }

    (*(v70 + 8))(v103, v101);
LABEL_34:
    v113 = type metadata accessor for ToolDatabase.DatabaseFile;
    v114 = v64;
LABEL_35:
    sub_1C8CBA864(v114, v113);
    goto LABEL_36;
  }

LABEL_38:
  OUTLINED_FUNCTION_198();
}

void OUTLINED_FUNCTION_8_5()
{
  v0[20] = 0;
  v0[21] = 0;
  v0[18] = 0;
  v0[19] = 0;
  v0[16] = 0;
  v0[17] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[13] = 0;
}

uint64_t OUTLINED_FUNCTION_8_6()
{

  return sub_1C9062BFC();
}

uint64_t OUTLINED_FUNCTION_8_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_8@<X0>(uint64_t a1@<X8>)
{
  v5 = *(*(v3 + 48) + 8 * (a1 | (v1 << 6)));
  v6 = *(v2 + 40);

  return sub_1C9064D7C();
}

void OUTLINED_FUNCTION_8_11(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  *a1 = a2;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
}

uint64_t OUTLINED_FUNCTION_8_12()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_8_13()
{
}

uint64_t OUTLINED_FUNCTION_8_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_19(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(*v3 + 24) > a1)
  {
    v5 = *(*v3 + 24);
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

uint64_t OUTLINED_FUNCTION_8_21()
{
  *(v2 - 456) = v0;
  v3 = *(v2 - 168);
  return v1;
}

uint64_t OUTLINED_FUNCTION_8_24()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 168);
  v6 = *(v0 + 144);
  v7 = *(v0 + 128);
  v12 = *(v0 + 120);
  v13 = *(v0 + 224);
  v11 = *(v0 + 112);
  v8 = *(*(v0 + 152) + 16);
  v10 = *(v0 + 256);
  return *(v0 + 160);
}

char *OUTLINED_FUNCTION_8_26@<X0>(unint64_t a1@<X8>)
{

  return sub_1C8D096FC((a1 > 1), v1, 1);
}

uint64_t OUTLINED_FUNCTION_8_27()
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_8_33()
{

  return sub_1C8ECC488();
}

void *OUTLINED_FUNCTION_8_34(void *a1)
{

  return memcpy(a1, v1, 0x61uLL);
}

uint64_t OUTLINED_FUNCTION_8_35()
{
  v2 = *(v0 - 200);

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_191_0()
{
  v2 = *(v0 - 152);

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_8_39@<X0>(uint64_t a1@<X8>)
{

  return sub_1C8D8D3E0(0, v2, a1 - (v1 & 0x3FFFFFFFFFFFFFF0));
}

uint64_t OUTLINED_FUNCTION_8_40()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_43()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_48()
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_8_52()
{

  return sub_1C9062DDC();
}

uint64_t ToolDatabase.init(file:readonly:)(uint64_t a1, int a2)
{
  v133 = a2;
  v126 = a1;
  v127 = *v2;
  v128 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313EF8, &qword_1C9071D88);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27_0(&v102 - v8);
  v109 = sub_1C9061EBC();
  v9 = OUTLINED_FUNCTION_11(v109);
  v108 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v15 = OUTLINED_FUNCTION_27_0(v14 - v13);
  v130 = type metadata accessor for FileLock(v15);
  v16 = OUTLINED_FUNCTION_13_1(v130);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  v104 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80);
  v22 = OUTLINED_FUNCTION_9(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25();
  v102 = v25 - v26;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v27);
  v29 = OUTLINED_FUNCTION_27_0(&v102 - v28);
  v129 = type metadata accessor for ToolDatabase.DatabaseFile(v29);
  v30 = OUTLINED_FUNCTION_13_1(v129);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_27_0(v34 - v33);
  v123 = sub_1C906449C();
  v35 = OUTLINED_FUNCTION_13_1(v123);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_15();
  v124 = v39 - v38;
  v40 = sub_1C9063DDC();
  v41 = OUTLINED_FUNCTION_9(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_15();
  v44 = sub_1C9063DBC();
  v45 = OUTLINED_FUNCTION_11(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_15();
  v52 = v51 - v50;
  v122 = sub_1C90644AC();
  v53 = *(v122 - 8);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v122);
  OUTLINED_FUNCTION_15();
  v57 = v56 - v55;
  v131 = v56 - v55;
  sub_1C8CB78AC(0, &qword_1EDA6D478, 0x1E69E9610);
  v115 = "sentable in utf8";
  v121 = *MEMORY[0x1E69E8098];
  v120 = *(v53 + 104);
  v120(v57);
  v119 = *MEMORY[0x1E69E7F98];
  v118 = *(v47 + 104);
  v114 = v44;
  v118(v52);
  v113 = sub_1C90644EC();
  v58 = *(v47 + 8);
  v116 = v47 + 8;
  v117 = v58;
  v58(v52, v44);
  sub_1C9063DCC();
  v132 = MEMORY[0x1E69E7CC0];
  v111 = sub_1C8CBCF34(&qword_1EDA6D480, MEMORY[0x1E69E8030]);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F00, &qword_1C9071D90);
  v112 = sub_1C8CBCF7C();
  sub_1C90646CC();
  v59 = v131;
  v60 = sub_1C90644DC();
  v61 = v125;
  *(v125 + 24) = v60;
  v115 = "t.tooldatabase.transaction";
  (v120)(v59, v121, v122);
  v62 = v114;
  (v118)(v52, v119, v114);
  sub_1C90644EC();
  v117(v52, v62);
  sub_1C9063DCC();
  v132 = MEMORY[0x1E69E7CC0];
  sub_1C90646CC();
  v63 = v130;
  v64 = v126;
  *(v61 + 32) = sub_1C90644DC();
  v65 = OBJC_IVAR____TtC7ToolKit12ToolDatabase_lock;
  __swift_storeEnumTagSinglePayload(v61 + OBJC_IVAR____TtC7ToolKit12ToolDatabase_lock, 1, 1, v63);
  v66 = v129;
  v67 = __swift_getEnumTagSinglePayload(v64, 1, v129) != 1;
  v68 = v67 & v133;
  sub_1C8CBA654(v64, v61 + OBJC_IVAR____TtC7ToolKit12ToolDatabase_file);
  v69 = v128;
  v70 = sub_1C8CBD09C(v64, v68);
  v131 = v69;
  if (!v69)
  {
    v127 = v65;
    LODWORD(v128) = v68;
    v79 = v105;
    v80 = v107;
    v81 = v108;
    v82 = v109;
    *(v61 + 16) = v70;
    v83 = v106;
    sub_1C8CBA654(v64, v106);
    if (__swift_getEnumTagSinglePayload(v83, 1, v66) == 1)
    {
      sub_1C8D16D78(v83, &qword_1EC313058, &qword_1C9071D80);
      v84 = v131;
    }

    else
    {
      OUTLINED_FUNCTION_1_18();
      v85 = v79;
      sub_1C8CBAF88(v83, v79, v86);
      v87 = v82;
      (*(v81 + 16))(v80, v79, v82);
      v88 = v130;
      v89 = v104;
      v90 = v104 + *(v130 + 20);
      *(v90 + 4) = 2;
      *v90 = 0;
      sub_1C9061E0C();
      (*(v81 + 8))(v80, v87);
      *(v89 + *(v88 + 24)) = 1;
      LOBYTE(v132) = 1;
      v134 = 0;
      v91 = v131;
      FileLock.lock(_:configuration:)(&v132, &v134);
      v84 = v91;
      if (v91)
      {
        sub_1C8CBA264(v89, type metadata accessor for FileLock);
        OUTLINED_FUNCTION_0_21();
        sub_1C8CBA264(v85, v92);
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_0_21();
      sub_1C8CBA264(v85, v93);
      v94 = v103;
      sub_1C8CBAF88(v89, v103, type metadata accessor for FileLock);
      __swift_storeEnumTagSinglePayload(v94, 0, 1, v88);
      v95 = v127;
      swift_beginAccess();
      sub_1C8CC11A8(v94, v61 + v95);
      swift_endAccess();
    }

    if (v128)
    {
LABEL_9:
      sub_1C8D16D78(v64, &qword_1EC313058, &qword_1C9071D80);
      return v61;
    }

    sub_1C8D0D434();
    if (!v84)
    {
      v97 = v102;
      sub_1C8CBA654(v64, v102);
      v98 = v129;
      if (__swift_getEnumTagSinglePayload(v97, 1, v129) == 1)
      {
        sub_1C8D16D78(v97, &qword_1EC313058, &qword_1C9071D80);
        goto LABEL_9;
      }

      v99 = *(v97 + *(v98 + 20));
      OUTLINED_FUNCTION_0_21();
      sub_1C8CBA264(v97, v100);
      if (v99 != 1)
      {
        goto LABEL_9;
      }

      ToolDatabase.insertPrimitiveTypes()();
      if (!v101)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    sub_1C8D16D78(v64, &qword_1EC313058, &qword_1C9071D80);

    return v61;
  }

  OUTLINED_FUNCTION_116();
  sub_1C8D16D78(v71, v72, v73);

  OUTLINED_FUNCTION_116();
  sub_1C8D16D78(v74, v75, v76);
  sub_1C8D16D78(v61 + OBJC_IVAR____TtC7ToolKit12ToolDatabase_lock, &qword_1EC313EF8, &qword_1C9071D88);
  v77 = *(*v61 + 48);
  v78 = *(*v61 + 52);
  swift_deallocPartialClassInstance();
  return v61;
}

void OUTLINED_FUNCTION_31_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 136) = a5;
  *(v9 - 128) = a8;
  *(v9 - 112) = a6;
  *(v9 - 104) = a7;
  *(v9 - 120) = v8;
}

uint64_t OUTLINED_FUNCTION_31_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_31_4()
{

  return sub_1C9062D6C();
}

uint64_t OUTLINED_FUNCTION_31_5()
{
}

uint64_t OUTLINED_FUNCTION_31_8()
{

  return sub_1C8DCD790(v0, type metadata accessor for AnyPredicateTemplate);
}

uint64_t OUTLINED_FUNCTION_31_9(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1C8D28184(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_31_11()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_31_12()
{
  v2 = *(v0 - 104);

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_31_14()
{
  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_1C8D04FA4((v0 + 232), v1);

  return sub_1C8D072F0(v2 - 224);
}

uint64_t OUTLINED_FUNCTION_31_16()
{

  return sub_1C9063EEC();
}

uint64_t OUTLINED_FUNCTION_31_19(uint64_t *a1, uint64_t a2, uint64_t a3)
{

  return sub_1C8F06950(a1, a2, a3, sub_1C8DC1340);
}

uint64_t OUTLINED_FUNCTION_31_20()
{
  v2 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];

  return sub_1C906266C();
}

void OUTLINED_FUNCTION_31_21()
{

  JUMPOUT(0x1CCA833A0);
}

uint64_t OUTLINED_FUNCTION_31_23()
{
}

void OUTLINED_FUNCTION_31_24()
{
  v1 = 1 << *(v0 + 32);
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  else
  {
    v2 = -1;
  }

  v3 = v2 & *(v0 + 64);
}

uint64_t sub_1C8CBCF34(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C8CBCF7C()
{
  result = qword_1EDA6D498;
  if (!qword_1EDA6D498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC313F00, &qword_1C9071D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D498);
  }

  return result;
}

uint64_t sub_1C8CBCFF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C9061EBC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1C8CBD09C(uint64_t a1, char a2)
{
  v3 = a1;
  v40 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313058, &qword_1C9071D80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v38 - v6;
  v8 = type metadata accessor for ToolDatabase.DatabaseFile(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1C9062FBC();
  v11 = *(v41 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1C906264C();
  v42 = *(v15 - 8);
  v43 = v15;
  v16 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v38 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  LOBYTE(v3) = __swift_getEnumTagSinglePayload(v3, 1, v8) == 1;
  sub_1C906263C();
  v21 = v20;
  sub_1C906262C();
  v22 = swift_allocObject();
  *(v22 + 16) = v3;
  *(v22 + 17) = a2;
  sub_1C90625DC();

  *v14 = 0x404E000000000000;
  (*(v11 + 104))(v14, *MEMORY[0x1E69A00D8], v41);
  sub_1C906260C();
  sub_1C90625FC();
  sub_1C8CBA654(v40, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1C8D16D78(v7, &qword_1EC313058, &qword_1C9071D80);
    v24 = v42;
    v23 = v43;
    (*(v42 + 16))(v38, v20, v43);
    v25 = sub_1C906274C();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    v21 = swift_allocObject();
    v28 = v44;
    v29 = sub_1C906271C();
    v30 = v23;
    if (!v28)
    {
      v21 = v29;
    }
  }

  else
  {
    v24 = v42;
    v31 = v43;
    v32 = v7;
    v33 = v39;
    v34 = sub_1C8CBAF88(v32, v39, type metadata accessor for ToolDatabase.DatabaseFile);
    MEMORY[0x1EEE9AC00](v34);
    *(&v38 - 2) = v33;
    *(&v38 - 1) = v20;
    v35 = v44;
    sub_1C8CBD500(sub_1C8CBD8F0);
    if (v35)
    {
      sub_1C8CBA264(v33, type metadata accessor for ToolDatabase.DatabaseFile);
      v30 = v31;
    }

    else
    {
      v21 = v36;
      sub_1C8CBA264(v33, type metadata accessor for ToolDatabase.DatabaseFile);
      v30 = v31;
    }
  }

  (*(v24 + 8))(v20, v30);
  return v21;
}

void sub_1C8CBD500(void (*a1)(void *__return_ptr))
{
  v31[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1C9063D3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() currentProcess];
  v8 = [v7 isManaged];

  if (v8)
  {
    v29 = v3;
    v9 = [objc_opt_self() currentProcess];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EB8, &qword_1C906A018);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C906A000;
    sub_1C8CB78AC(0, &qword_1EC312EC0, 0x1E69C7560);
    *(v10 + 32) = sub_1C8D11144();
    v11 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    v12 = sub_1C8D13FA0(0xD000000000000017, 0x80000001C90C96E0, v9);
    v30 = 0;
    if ([v12 acquireWithError_])
    {
      v13 = v30;
    }

    else
    {
      v14 = v30;
      v15 = sub_1C9061D7C();

      swift_willThrow();
      v16 = *MEMORY[0x1E69E10F0];
      sub_1C906371C();
      v17 = v15;
      v18 = sub_1C9063D1C();
      v19 = sub_1C906444C();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v28 = a1;
        v21 = v20;
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        v23 = v15;
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 4) = v24;
        *v22 = v24;
        _os_log_impl(&dword_1C8C9B000, v18, v19, "Failed to acquire RBS assertion to perform database operation. Still performing the operation: %@", v21, 0xCu);
        sub_1C8D16D78(v22, &qword_1EC312EC8, &qword_1C9071EA0);
        MEMORY[0x1CCA833A0](v22, -1, -1);
        v25 = v21;
        a1 = v28;
        MEMORY[0x1CCA833A0](v25, -1, -1);
      }

      else
      {
      }

      v13 = (*(v29 + 8))(v6, v2);
    }

    (a1)(v31, v13);
    [v12 invalidate];
  }

  else
  {
    a1(v31);
  }

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1C8CBD90C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = sub_1C906264C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9061E5C();
  (*(v6 + 16))(v9, a1, v5);
  v10 = sub_1C906274C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  result = sub_1C906271C();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C8CBDA30(uint64_t a1, char a2, char a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F10, qword_1C9071EA8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v33 = &v30 - v8;
  v9 = sub_1C906245C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v32 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C9062B9C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v30 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v30 - v24;
  if ((a2 & 1) == 0)
  {
    if ((a3 & 1) == 0)
    {
      v27 = v23;
      sub_1C9062B8C();
      sub_1C9062FAC();
      if (v3)
      {
        (*(v27 + 8))(v25, v12);
        goto LABEL_8;
      }

      v31 = *(v27 + 8);
      v31(v25, v12);
      sub_1C9062B8C();
      sub_1C9062FAC();
      v29 = v31;
      v31(v21, v12);
      sub_1C9062B8C();
      sub_1C9062FAC();
      v29(v18, v12);
      sub_1C9062B8C();
      sub_1C9062FAC();
      v29(v15, v12);
    }

    v34 = 1;
    v26 = sub_1C9062F4C();
    if (sqlite3_file_control(v26, 0, 10, &v34))
    {
      sub_1C906244C();
      __swift_storeEnumTagSinglePayload(v33, 1, 1, v12);
      sub_1C90626DC();
      sub_1C8CBCF34(&qword_1EC312ED8, MEMORY[0x1E699FE10]);
      swift_allocError();
      sub_1C906265C();
      swift_willThrow();
    }
  }

LABEL_8:
  v28 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1C8CBDEB8()
{
  v1 = sub_1C9063D3C();
  v2 = OUTLINED_FUNCTION_11(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  [*&v0[OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_client] stop];
  v0[OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_closed] = 1;
  v10 = *MEMORY[0x1E69E10F8];
  sub_1C906371C();
  v11 = v0;
  v12 = sub_1C9063D1C();
  v13 = sub_1C906446C();

  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_17_0();
    v14 = swift_slowAlloc();
    OUTLINED_FUNCTION_55_5();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315138;
    v16 = [v11 debugDescription];
    v17 = sub_1C9063EEC();
    v19 = v18;

    sub_1C8CACE04(v17, v19, &v22);
    OUTLINED_FUNCTION_123_3();

    *(v14 + 4) = v16;
    _os_log_impl(&dword_1C8C9B000, v12, v13, "Session %s ended", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
    v20 = OUTLINED_FUNCTION_36_10();
    MEMORY[0x1CCA833A0](v20);
  }

  return (*(v4 + 8))(v9, v1);
}

uint64_t OUTLINED_FUNCTION_120()
{
  v3 = *(v1 - 176);
  v4 = *(v1 - 304);

  return MEMORY[0x1EEE503C0](v0);
}

uint64_t OUTLINED_FUNCTION_120_5()
{
  result = *(v0 - 72);
  v2 = *(v0 - 184);
  return result;
}

uint64_t sub_1C8CBE164()
{
  sub_1C906478C();

  sub_1C906204C();
  sub_1C8CBE304(&qword_1EDA6CB98, MEMORY[0x1E69695A8]);
  v1 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v1);

  MEMORY[0x1CCA81A90](0x64696C61766E6920, 0xED00003D64657461);
  if (*(v0 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_invalidated))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_invalidated))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1CCA81A90](v2, v3);

  MEMORY[0x1CCA81A90](0x3D6465736F6C6320, 0xE800000000000000);
  if (*(v0 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_closed))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_closed))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1CCA81A90](v4, v5);

  MEMORY[0x1CCA81A90](62, 0xE100000000000000);
  return 1029990716;
}

uint64_t sub_1C8CBE304(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_124_2(uint64_t result)
{
  *(v1 + 24) = result;
  *v2 = result;
  return result;
}

uint64_t type metadata accessor for SageWorkflowRunnerClientToolExecutionSession()
{
  result = qword_1EDA6B488;
  if (!qword_1EDA6B488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8CBE41C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_387(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_13_1(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_107_4()
{
  v2 = *(v0 - 184);

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_107_6()
{
  v2 = *(v0 - 256);

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_102_4(uint64_t result)
{
  *(result + 8) = v1;
  *(v3 + 16) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_102_5()
{

  return swift_unknownObjectRelease();
}

void OUTLINED_FUNCTION_102_10()
{
  v1 = *(v0 - 72);
  v2 = *(v0 - 152);
  v3 = *(v0 - 144);
}

uint64_t OUTLINED_FUNCTION_420()
{
}

uint64_t OUTLINED_FUNCTION_95_2()
{

  return swift_slowAlloc();
}

id sub_1C8CBE6A0()
{
  v1 = sub_1C9063D3C();
  v2 = OUTLINED_FUNCTION_11(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  v10 = *MEMORY[0x1E69E10F8];
  sub_1C906371C();
  v11 = v0;
  v12 = sub_1C9063D1C();
  v13 = sub_1C906446C();

  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_17_0();
    v20 = v1;
    v14 = swift_slowAlloc();
    OUTLINED_FUNCTION_55_5();
    v21 = swift_slowAlloc();
    *v14 = 136315138;
    v15 = [v11 debugDescription];
    sub_1C9063EEC();
    OUTLINED_FUNCTION_97_4();

    v16 = OUTLINED_FUNCTION_325();
    sub_1C8CACE04(v16, v17, v18);
    OUTLINED_FUNCTION_173_3();
    *(v14 + 4) = v15;
    _os_log_impl(&dword_1C8C9B000, v12, v13, "Session %s destroyed", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();

    (*(v4 + 8))(v9, v20);
  }

  else
  {

    (*(v4 + 8))(v9, v1);
  }

  v22.receiver = v11;
  v22.super_class = type metadata accessor for SageWorkflowRunnerClientToolExecutionSession();
  return objc_msgSendSuper2(&v22, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_85_0()
{

  return sub_1C8D9913C();
}

uint64_t OUTLINED_FUNCTION_85_2()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_85_4()
{
}

uint64_t OUTLINED_FUNCTION_85_8()
{

  return sub_1C906243C();
}

uint64_t OUTLINED_FUNCTION_12_3()
{

  return sub_1C8CC0620(v1 + 168, v0 + 280, v3, v2);
}

uint64_t OUTLINED_FUNCTION_12_6@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t OUTLINED_FUNCTION_53_1()
{
}

uint64_t OUTLINED_FUNCTION_12_11()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_12_16(uint64_t result, char a2)
{
  *(v2 + 48) = 0;
  *(v2 + 56) = result;
  *(v2 + 64) = a2;
  *(v2 + 72) = OUTLINED_FUNCTION_2_3;
  *(v2 + 80) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_18(uint64_t a1)
{

  return MEMORY[0x1EEE6AD38](a1, v1);
}

uint64_t OUTLINED_FUNCTION_12_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_20()
{

  return sub_1C9064BBC();
}

uint64_t OUTLINED_FUNCTION_12_23()
{
  result = v1;
  *(v2 - 184) = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_24@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 104) = a1;
}

uint64_t OUTLINED_FUNCTION_12_27@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v5 = *(v1 - 168);
  v4 = *(v1 - 160);

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_12_28()
{

  return sub_1C9063EAC();
}

uint64_t OUTLINED_FUNCTION_12_31()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_32(uint64_t a1)
{

  return sub_1C8D52860(a1, v1 + 128, v2, v3);
}

uint64_t OUTLINED_FUNCTION_12_34()
{

  return sub_1C9063ACC();
}

uint64_t OUTLINED_FUNCTION_12_35()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_38()
{
  v3 = *(v0 - 120);
  v2 = *(v0 - 112);

  return sub_1C9064ACC();
}

void OUTLINED_FUNCTION_12_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_1C902CCC4(v20, v22, v21, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_12_40()
{

  return sub_1C903566C(v0, type metadata accessor for ToolKitProtoTypeInstance);
}

__n128 OUTLINED_FUNCTION_12_41@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 1152);
  v4 = *(v1 + 1168);
  v5 = *(v1 + 1184);
  *(a1 + 73) = *(v2 + 41);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_42()
{

  return swift_once();
}

uint64_t sub_1C8CBEEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_257();
  v6 = sub_1C906204C();
  v7 = OUTLINED_FUNCTION_179(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = type metadata accessor for ToolDefinition(0);
  v12 = OUTLINED_FUNCTION_179(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = v3 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(v3 + *(a3 + 24));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1C8CBEFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
    v9 = a1 + *(a3 + 64);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *OUTLINED_FUNCTION_354(void *a1)
{

  return memcpy(a1, v1, 0x88uLL);
}

uint64_t OUTLINED_FUNCTION_40_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_40_4(uint64_t a1)
{

  return sub_1C8D16D78(a1, v1, v2);
}

void OUTLINED_FUNCTION_40_5(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void *OUTLINED_FUNCTION_40_12(float a1)
{
  *v1 = a1;

  return memcpy((v2 - 248), (v2 - 176), 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_40_13()
{
  v3 = *(v0 - 176);
  v2 = *(v0 - 168);

  return sub_1C9064ACC();
}

__n128 OUTLINED_FUNCTION_40_18(__n128 *a1, uint64_t *a2)
{
  result = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_40_19()
{
  v2 = *(v0 - 400);
  v3 = *(v0 - 368);

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_40_21(uint64_t result)
{
  *(result + 8) = sub_1C8F43D40;
  v2 = *(v1 + 232);
  v3 = *(v1 + 216);
  return result;
}

uint64_t OUTLINED_FUNCTION_40_22()
{
  v2 = *(v0 - 640);

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_40_23()
{
  v4 = *(v2 + 28);
  v5 = v1 + v4;
  v6 = *(v1 + v4);
  v7 = *(v1 + v4 + 8);
  v8 = *(v1 + v4 + 16);
  v9 = *(v1 + v4 + 24);
  v10 = (v0 + v4);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  v15 = *(v5 + 32);
  v16 = *(v10 + 32);

  return sub_1C8D06F98(v6, v7, v8, v9, v15);
}

BOOL static TypeIdentifier.PrimitiveTypeIdentifier.== infix(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(*a1)
  {
    case 0x17:
      return v3 == 23;
    case 0x18:
      return v3 == 24;
    case 0x19:
      return v3 == 25;
    case 0x1A:
      return v3 == 26;
    case 0x1B:
      return v3 == 27;
    case 0x1C:
      return v3 == 28;
    case 0x1D:
      return v3 == 29;
    case 0x1E:
      return v3 == 30;
    case 0x1F:
      return v3 == 31;
    case 0x20:
      return v3 == 32;
    case 0x21:
      return v3 == 33;
    case 0x22:
      return v3 == 34;
    case 0x23:
      return v3 == 35;
    case 0x24:
      return v3 == 36;
    case 0x25:
      return v3 == 37;
    case 0x26:
      return v3 == 38;
    case 0x27:
      return v3 == 39;
    case 0x28:
      return v3 == 40;
    case 0x29:
      return v3 == 41;
    case 0x2A:
      return v3 == 42;
    case 0x2B:
      return v3 == 43;
    case 0x2C:
      return v3 == 44;
    case 0x2D:
      return v3 == 45;
    case 0x2E:
      return v3 == 46;
    default:
      if ((v3 - 23) < 0x18)
      {
        return 0;
      }

      if (v2 != 22)
      {
        return v2 == v3;
      }

      return v3 == 22;
  }
}

uint64_t sub_1C8CBF50C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1C906313C();
  sub_1C8CAD098();
  v6 = v5;

  if (v2)
  {

    sub_1C8CC0B58(a2);
  }

  else
  {
    v7 = *(v6 + 16);
    v53 = a2;
    if (v7)
    {
      v66 = MEMORY[0x1E69E7CC0];
      v8 = OUTLINED_FUNCTION_0_69();
      sub_1C8CBFC40(v8, v9, v10);
      v11 = v66;
      v12 = v7 - 1;
      for (i = 32; ; i += 112)
      {
        memcpy(__dst, (v6 + i), sizeof(__dst));
        v14 = __dst[0];
        v57 = __dst[2];
        v60 = __dst[1];
        v15 = *&__dst[3];
        memcpy(__src, (v6 + i), sizeof(__src));
        sub_1C8CBFC60(__dst, v63);
        v66 = v11;
        v17 = *(v11 + 16);
        v16 = *(v11 + 24);

        if (v17 >= v16 >> 1)
        {
          v19 = OUTLINED_FUNCTION_5_44();
          sub_1C8CBFC40(v19, v17 + 1, 1);
          v11 = v66;
        }

        *(v11 + 16) = v17 + 1;
        v18 = v11 + 168 * v17;
        *(v18 + 32) = v14;
        *(v18 + 48) = v60;
        *(v18 + 64) = v57;
        *(v18 + 80) = v15;
        memcpy((v18 + 88), __src, 0x70uLL);
        if (!v12)
        {
          break;
        }

        --v12;
      }

      v54 = v11;

      a2 = v53;
    }

    else
    {

      v54 = MEMORY[0x1E69E7CC0];
    }

    v20 = sub_1C906314C();
    v21 = sub_1C8CB0474(v20, MEMORY[0x1E69AC128], sub_1C8CBFD80, sub_1C8CB08D0);

    v22 = *(v21 + 16);
    if (v22)
    {
      v66 = MEMORY[0x1E69E7CC0];
      v55 = v21;
      v23 = OUTLINED_FUNCTION_0_69();
      sub_1C8CC3690(v23, v24, v25);
      v26 = v66;
      v27 = v22 - 1;
      for (j = 32; ; j += 104)
      {
        memcpy(__dst, (v21 + j), 0x68uLL);
        v29 = __dst[0];
        v58 = __dst[2];
        v61 = __dst[1];
        v30 = *&__dst[3];
        memcpy(__src, (v21 + j), 0x68uLL);
        sub_1C8CC37E4(__dst, v63);
        v66 = v26;
        v32 = *(v26 + 16);
        v31 = *(v26 + 24);

        if (v32 >= v31 >> 1)
        {
          v34 = OUTLINED_FUNCTION_5_44();
          sub_1C8CC3690(v34, v32 + 1, 1);
          v21 = v55;
          v26 = v66;
        }

        *(v26 + 16) = v32 + 1;
        v33 = v26 + 168 * v32;
        *(v33 + 32) = v29;
        *(v33 + 48) = v61;
        *(v33 + 64) = v58;
        *(v33 + 80) = v30;
        memcpy((v33 + 88), __src, 0x68uLL);
        *(v33 + 192) = 0;
        if (!v27)
        {
          break;
        }

        --v27;
      }

      a2 = v53;
    }

    else
    {

      v26 = MEMORY[0x1E69E7CC0];
    }

    v35 = sub_1C906312C();
    v37 = sub_1C8CB0474(v35, MEMORY[0x1E69AC118], sub_1C8CC381C, sub_1C8CB1B94);

    v38 = *(v37 + 16);
    if (v38)
    {
      v66 = MEMORY[0x1E69E7CC0];
      v39 = OUTLINED_FUNCTION_0_69();
      sub_1C8CC3690(v39, v40, v41);
      v42 = v66;
      v62 = v38 - 1;
      v43 = 32;
      for (k = v37; ; v37 = k)
      {
        memcpy(__dst, (v37 + v43), 0x68uLL);
        v44 = __dst[0];
        v56 = __dst[2];
        v59 = __dst[1];
        v45 = *&__dst[3];
        memcpy(__src, (v37 + v43), 0x68uLL);
        sub_1C8CC3A5C(__dst, v63);
        v66 = v42;
        v47 = *(v42 + 16);
        v46 = *(v42 + 24);

        if (v47 >= v46 >> 1)
        {
          v49 = OUTLINED_FUNCTION_5_44();
          sub_1C8CC3690(v49, v47 + 1, 1);
          v42 = v66;
        }

        *(v42 + 16) = v47 + 1;
        v48 = v42 + 168 * v47;
        *(v48 + 32) = v44;
        *(v48 + 48) = v59;
        *(v48 + 64) = v56;
        *(v48 + 80) = v45;
        memcpy((v48 + 88), __src, 0x68uLL);
        *(v48 + 192) = 1;
        if (!v62)
        {
          break;
        }

        --v62;
        v43 += 104;
      }

      a2 = v53;
    }

    else
    {

      v42 = MEMORY[0x1E69E7CC0];
    }

    __src[0] = v26;
    sub_1C8CC3D08(v42);
    v50 = __src[0];
    v51 = sub_1C8CC07AC(v54, &qword_1EC319C08, &qword_1C90C6600, sub_1C8CC027C);
    v52 = sub_1C8CC07AC(v50, &qword_1EC319C18, &qword_1C90A65E8, sub_1C8CC084C);

    type metadata accessor for AssistantSchemaProvider();
    v3 = swift_allocObject();
    *(v3 + 16) = v51;
    *(v3 + 24) = v52;
    sub_1C8CC0B58(a2);
  }

  return v3;
}

uint64_t sub_1C8CBFAC8(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1C90646DC();
  v4 = *(a1 + 36);
  return result;
}

void *sub_1C8CBFB08(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312D28, &qword_1C9069630);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[21 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 168 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312D30, &qword_1C9069638);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C8CBFC40(void *a1, int64_t a2, char a3)
{
  result = sub_1C8CBFB08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C8CBFC98()
{
  OUTLINED_FUNCTION_7_2();
  if (v3)
  {
    OUTLINED_FUNCTION_37_2();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_123_0();
      if (v4)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_36_0();
    }
  }

  OUTLINED_FUNCTION_9_4();
  if (v4 ^ v5 | v13)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_342(v6, v7, v8, v9, v10, v11);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    *(v15 + 2) = v2;
    *(v15 + 3) = 2 * ((v16 - 32) / 104);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v17 = v15 + 32;
  v18 = v0 + 32;
  if (v1)
  {
    if (v15 != v0 || &v18[104 * v2] <= v17)
    {
      memmove(v17, v18, 104 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1C8CBFD80()
{
  v1 = *v0;
  sub_1C8CBFC98();
  *v0 = v2;
}

void ToolDefinition.init(id:name:toolType:parameters:hiddenParameters:outputType:outputResultName:sourceContainer:attributionContainer:additionalAttributionContainers:description:customIcon:categories:searchKeywords:deprecationDefinition:requirements:flags:systemProtocols:authenticationPolicy:visibilityFlags:backingLinkActionIdentifiers:overriddenSampleInvocations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, const void *a23, const void *a24, uint64_t a25, const void *a26, uint64_t a27, uint64_t a28, uint64_t a29, __n128 *a30, uint64_t a31, uint64_t *a32, uint64_t a33, char *a34, uint64_t *a35, uint64_t a36)
{
  OUTLINED_FUNCTION_164();
  v39 = v38;
  v68 = v40;
  v66 = v41;
  v67 = v42;
  v44 = v43;
  OUTLINED_FUNCTION_205_3(v45, v46, v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  OUTLINED_FUNCTION_9(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_73();
  LOBYTE(v44) = *v44;
  v52 = *v39;
  memcpy(v69, a23, 0x61uLL);
  v53 = *a32;
  v54 = *a34;
  v55 = *a35;
  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  *v36 = v63;
  *(v36 + 8) = v64;
  *(v36 + 16) = v65;
  *(v36 + 24) = v66;
  *(v36 + 32) = v44;
  *(v36 + 40) = v67;
  *(v36 + 48) = v68;
  *(v36 + 56) = v52;
  *(v36 + 64) = a21;
  *(v36 + 72) = a22;
  memcpy((v36 + 192), v69, 0x61uLL);
  memcpy((v36 + 296), a24, 0x61uLL);
  *(v36 + 400) = a25;
  memcpy((v36 + 408), a26, 0x50uLL);
  v56 = type metadata accessor for ToolDefinition(0);
  OUTLINED_FUNCTION_212_3(v56);
  sub_1C8D63FCC();
  *(v36 + v56[17]) = a28;
  OUTLINED_FUNCTION_254_1(v56[18]);
  OUTLINED_FUNCTION_165_6((v36 + v56[19]), *a30, a30[1]);
  *(v36 + v57) = a31;
  OUTLINED_FUNCTION_202_3();
  *(v36 + v58) = a33;
  *(v36 + v56[22]) = v54;
  OUTLINED_FUNCTION_19_22();
  *(v36 + v59) = v55;
  *(v36 + v56[26]) = a36;
  OUTLINED_FUNCTION_235_2();
  sub_1C8CC1340(v69, &v70);
  sub_1C8CC139C();
  sub_1C8D16D78(a27, &qword_1EC3144B8, &qword_1C90839E0);
  sub_1C8D16D78(v37, &qword_1EC3144B8, &qword_1C90839E0);
  OUTLINED_FUNCTION_226_4();
  memcpy(v60, v61, v62);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8CC0038(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_257();
  v8 = sub_1C906204C();
  v9 = OUTLINED_FUNCTION_179(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = type metadata accessor for ToolDefinition(0);
    result = OUTLINED_FUNCTION_179(v13);
    if (*(v15 + 84) != a3)
    {
      *(v4 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

char *sub_1C8CC0140(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312D38, &qword_1C9069640);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[112 * v8] <= v12)
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C8CC0258(char *a1, int64_t a2, char a3)
{
  result = sub_1C8CC0140(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C8CC027C(uint64_t a1, char a2, uint64_t *a3)
{
  v6 = 0;
  v7 = *(a1 + 16);
  v39 = a1 + 32;
  while (1)
  {
    if (v6 == v7)
    {
      sub_1C8CC0B48(__src);
      memcpy(__dst, __src, sizeof(__dst));
      v6 = v7;
    }

    else
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_21;
      }

      if (v6 >= *(a1 + 16))
      {
        goto LABEL_22;
      }

      memcpy(__src, (v39 + 168 * v6), sizeof(__src));
      memcpy(__dst, (v39 + 168 * v6++), sizeof(__dst));
      nullsub_1(__dst);
      sub_1C8DFBCF4(__src, v32, &qword_1EC312D30, &qword_1C9069638);
    }

    memcpy(__src, __dst, sizeof(__src));
    if (OUTLINED_FUNCTION_125_0(__src) == 1)
    {
    }

    v35 = *__dst;
    v36 = *&__dst[16];
    v37 = *&__dst[32];
    v38 = *&__dst[48];
    memcpy(v32, &__dst[56], 0x70uLL);
    v8 = *a3;
    v10 = sub_1C8CC056C();
    v11 = *(v8 + 16);
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (*(v8 + 24) >= v13)
    {
      if (a2)
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319C30, &unk_1C90A6610);
        sub_1C90648FC();
        if ((v14 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

LABEL_15:
      v18 = *a3;
      v19 = 112 * v10;
      memcpy(v30, (*(*a3 + 56) + v19), sizeof(v30));
      sub_1C8CBFC60(v30, v31);
      sub_1C8E28D84(v32);
      sub_1C8F09D54(&v35);
      v20 = *(v18 + 56);
      memcpy(v31, (v20 + v19), sizeof(v31));
      memcpy((v20 + v19), v30, 0x70uLL);
      sub_1C8E28D84(v31);
      a2 = 1;
    }

    else
    {
      sub_1C90436F8(v13);
      v15 = *a3;
      v16 = sub_1C8CC056C();
      if ((v14 & 1) != (v17 & 1))
      {
        goto LABEL_24;
      }

      v10 = v16;
      if (v14)
      {
        goto LABEL_15;
      }

LABEL_17:
      v21 = *a3;
      *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
      v22 = v21[6] + 56 * v10;
      v23 = v35;
      v24 = v36;
      v25 = v37;
      *(v22 + 48) = v38;
      *(v22 + 16) = v24;
      *(v22 + 32) = v25;
      *v22 = v23;
      memcpy((v21[7] + 112 * v10), v32, 0x70uLL);
      v26 = v21[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_23;
      }

      v21[2] = v28;
      a2 = 1;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1C9064CBC();
  __break(1u);
  return result;
}

unint64_t sub_1C8CC056C()
{
  OUTLINED_FUNCTION_19_5();
  sub_1C9064D7C();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_1C9063FBC();
  MEMORY[0x1CCA82830](v3);
  MEMORY[0x1CCA82830](v4);
  MEMORY[0x1CCA82830](v5);
  sub_1C9063FBC();
  v8 = sub_1C9064DBC();

  return sub_1C8CC0670(v0, v8);
}

uint64_t sub_1C8CC0620(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_13(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13_1(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

unint64_t sub_1C8CC0670(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v25 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v24 = ~v3;
    v22 = a1[3];
    v23 = a1[2];
    v6 = *a1;
    v5 = a1[1];
    v20 = a1[5];
    v21 = a1[4];
    v7 = a1[6];
    v8 = *(v2 + 48);
    do
    {
      v9 = (v8 + 56 * v4);
      v10 = v9[2];
      v11 = v9[3];
      v12 = v9[4];
      v13 = v9[5];
      v14 = v9[6];
      v15 = *v9 == v6 && v9[1] == v5;
      if (v15 || (sub_1C9064C2C() & 1) != 0)
      {
        v16 = v10 == v23 && v11 == v22;
        if (v16 && v12 == v21)
        {
          v18 = v13 == v20 && v14 == v7;
          if (v18 || (sub_1C9064C2C() & 1) != 0)
          {
            break;
          }
        }
      }

      v4 = (v4 + 1) & v24;
    }

    while (((*(v25 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1C8CC07AC(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_1C906495C();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC8];
  }

  v10 = v7;
  a4(a1, 1, &v10);
  v8 = v10;
  if (v4)
  {
  }

  return v8;
}

uint64_t sub_1C8CC084C(uint64_t a1, char a2, uint64_t *a3)
{
  v6 = 0;
  v7 = *(a1 + 16);
  v39 = a1 + 32;
  while (1)
  {
    if (v6 == v7)
    {
      sub_1C8CC0B50(__src);
      memcpy(__dst, __src, sizeof(__dst));
      v6 = v7;
    }

    else
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_21;
      }

      if (v6 >= *(a1 + 16))
      {
        goto LABEL_22;
      }

      memcpy(__src, (v39 + 168 * v6), 0xA1uLL);
      memcpy(__dst, (v39 + 168 * v6++), sizeof(__dst));
      nullsub_1(__dst);
      sub_1C8DFBCF4(__src, v32, &qword_1EC312980, &qword_1C9068D60);
    }

    memcpy(__src, __dst, 0xA1uLL);
    if (OUTLINED_FUNCTION_125_0(__src) == 1)
    {
    }

    v35 = *__dst;
    v36 = *&__dst[16];
    v37 = *&__dst[32];
    v38 = *&__dst[48];
    memcpy(v32, &__dst[56], 0x69uLL);
    v8 = *a3;
    v10 = sub_1C8CC056C();
    v11 = *(v8 + 16);
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (*(v8 + 24) >= v13)
    {
      if (a2)
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319C28, &unk_1C90A6600);
        sub_1C90648FC();
        if ((v14 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

LABEL_15:
      v18 = *a3;
      v19 = 112 * v10;
      memcpy(v30, (*(*a3 + 56) + v19), 0x69uLL);
      sub_1C8ED3E6C(v30, v31);
      sub_1C8ED3F0C(v32);
      sub_1C8F09D54(&v35);
      v20 = *(v18 + 56);
      memcpy(v31, (v20 + v19), 0x69uLL);
      memcpy((v20 + v19), v30, 0x69uLL);
      sub_1C8ED3F0C(v31);
      a2 = 1;
    }

    else
    {
      sub_1C90434BC(v13);
      v15 = *a3;
      v16 = sub_1C8CC056C();
      if ((v14 & 1) != (v17 & 1))
      {
        goto LABEL_24;
      }

      v10 = v16;
      if (v14)
      {
        goto LABEL_15;
      }

LABEL_17:
      v21 = *a3;
      *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
      v22 = v21[6] + 56 * v10;
      v23 = v35;
      v24 = v36;
      v25 = v37;
      *(v22 + 48) = v38;
      *(v22 + 16) = v24;
      *(v22 + 32) = v25;
      *v22 = v23;
      memcpy((v21[7] + 112 * v10), v32, 0x69uLL);
      v26 = v21[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_23;
      }

      v21[2] = v28;
      a2 = 1;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1C9064CBC();
  __break(1u);
  return result;
}

uint64_t sub_1C8CC0B58(uint64_t a1)
{
  v2 = type metadata accessor for ToolDatabaseLocaleOptions();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_121_1()
{

  return sub_1C8DB47C0();
}

uint64_t sub_1C8CC0CA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C8CC0CE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileLock(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8CC0D44(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1C906402C())
  {
    result = sub_1C8CC0EA8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1C906476C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1C90647EC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C8CC0E5C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C8CC0D44(a1, a2);
  sub_1C8CC10C4(&unk_1F489A9D8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

void *sub_1C8CC0EA8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313098, &qword_1C906AB10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_1C8CC0F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C9061EBC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void *sub_1C8CC0FEC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t static AssistantSchemaProvider.load()()
{
  v2 = type metadata accessor for ToolDatabaseLocaleOptions();
  v3 = OUTLINED_FUNCTION_13_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_7_40();
  result = sub_1C906311C();
  if (!v0)
  {
    v7 = result;
    type metadata accessor for AssistantSchemaProvider();
    _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
    *(v1 + *(v2 + 20)) = 0;
    return sub_1C8CBF50C(v7, v1);
  }

  return result;
}

uint64_t sub_1C8CC10C4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1C8D1D09C(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C8CC11A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313EF8, &qword_1C9071D88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_188_0()
{

  return sub_1C90648BC();
}

uint64_t OUTLINED_FUNCTION_188_3()
{
  v2 = *(v0 + 528);
  v4 = *(v0 + 520);

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_188_4()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_188_5@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = v4;
  a2[2] = v3;
  a2[3] = a1;
  a2[4] = v5;
}

uint64_t OUTLINED_FUNCTION_148_0()
{
  result = v0;
  v3 = *(v1 - 112);
  v4 = *(v1 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_148_3()
{
  v2 = *(v0 - 96);
  *(v0 - 104) = *(v0 - 104);
  *(v0 - 96) = v2;
}

void sub_1C8CC139C()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  OUTLINED_FUNCTION_386();
  v27 = sub_1C906204C();
  v3 = OUTLINED_FUNCTION_11(v27);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  memcpy(v29, v2, 0x61uLL);
  sub_1C9064D7C();
  ContainerDefinition.hash(into:)(&v28);
  sub_1C9064DBC();
  v11 = WFUUIDv4FromInteger();
  sub_1C906202C();

  v26 = sub_1C906200C();
  v25 = v12;
  v13 = v29[5];
  if (!v29[6])
  {
    v13 = 7040629;
  }

  v24 = v13;
  v14 = 0xE300000000000000;
  if (v29[6])
  {
    v15 = v29[6];
  }

  else
  {
    v15 = 0xE300000000000000;
  }

  v23 = v15;
  if (v29[9])
  {
    v16 = v29[8];
  }

  else
  {
    v16 = 7040629;
  }

  if (v29[9])
  {
    v14 = v29[9];
  }

  v21 = v14;
  v22 = v29[12];
  v17 = v29[0];
  v18 = v29[1];
  v19 = v29[3];
  v20 = v29[4];

  sub_1C8CC15FC(v29);
  (*(v5 + 8))(v10, v27);
  *v0 = v26;
  *(v0 + 8) = v25;
  *(v0 + 16) = v17;
  *(v0 + 24) = v18;
  *(v0 + 32) = v19;
  *(v0 + 40) = v20;
  *(v0 + 48) = v24;
  *(v0 + 56) = v23;
  *(v0 + 64) = v16;
  *(v0 + 72) = v21;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = v22;
  *(v0 + 104) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8CC1590(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_84_0(a1, a2);
  result = MEMORY[0x1CCA82810](v2);
  if (v2)
  {
    v5 = (v3 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      OUTLINED_FUNCTION_209();
      sub_1C9063FBC();

      v5 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1C8CC1650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_133();
  v11 = v10[2];
  v12 = v10[3];
  v13 = type metadata accessor for ToolExecutor.SessionOptions(0);
  v14 = (v11 + *(v13 + 20));
  v15 = *v14;
  v16 = v14[1];
  v17 = sub_1C90620BC();
  OUTLINED_FUNCTION_13_1(v17);
  (*(v18 + 16))(v12, v11, v17);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v17);
  v19 = v10[3];
  v20 = **(&unk_1E832F270 + *(v11 + *(v13 + 24)));
  v21 = MEMORY[0x1E69E0C60];
  v22 = v20;
  v23 = objc_allocWithZone(v21);

  v24 = sub_1C8CC2AE8(0xD00000000000001BLL, 0x80000001C90CB700, v15, v16, v19, v22);
  v10[4] = v24;
  v25 = objc_allocWithZone(type metadata accessor for SageWorkflowRunnerClientToolExecutionSession());
  v10[5] = OUTLINED_FUNCTION_149_3(v24);
  if (v25)
  {

    v26 = v10[3];

    OUTLINED_FUNCTION_127_3();
    OUTLINED_FUNCTION_151_4();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }

  else
  {
    v36 = swift_task_alloc();
    v10[6] = v36;
    *v36 = v10;
    OUTLINED_FUNCTION_52(v36);
    OUTLINED_FUNCTION_151_4();

    return sub_1C8CC2404();
  }
}

uint64_t sub_1C8CC1830(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
    v8 = v5 + *(a4 + 64);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_46_2()
{

  return sub_1C9062BFC();
}

uint64_t *OUTLINED_FUNCTION_46_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 136) = a1;
  *(v2 - 128) = a2;

  return __swift_allocate_boxed_opaque_existential_1((v2 - 160));
}

uint64_t OUTLINED_FUNCTION_248_0()
{

  return sub_1C90637EC();
}

uint64_t OUTLINED_FUNCTION_46_6()
{

  return sub_1C8DC8564(v0, v1 - 88);
}

uint64_t OUTLINED_FUNCTION_46_8()
{

  return sub_1C9063E8C();
}

uint64_t OUTLINED_FUNCTION_46_11()
{

  return sub_1C9063ADC();
}

BOOL OUTLINED_FUNCTION_46_14(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_46_17()
{
  v3 = *(v1 - 144);

  return MEMORY[0x1EEE09BC8](v1 - 128, v0);
}

id OUTLINED_FUNCTION_46_18()
{
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return v1;
}

uint64_t sub_1C8CC1C28(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1C8CC1C84(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t OUTLINED_FUNCTION_123_2()
{

  return sub_1C9063EAC();
}

void *OUTLINED_FUNCTION_123_4@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 16), (v1 - 184), 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_123_6()
{
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  return result;
}

uint64_t sub_1C8CC1D3C()
{
  OUTLINED_FUNCTION_223();
  v4 = OUTLINED_FUNCTION_321(v1, v2, v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_13_1(v6);
  v8 = *(v7 + 16);
  v9 = OUTLINED_FUNCTION_94();
  v10(v9);
  return v0;
}

uint64_t OUTLINED_FUNCTION_201_2()
{
  result = *(v1 + 8);
  v3 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_336_2()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_353@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t OUTLINED_FUNCTION_245_0()
{

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_26_0()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 112);
  return result;
}

unint64_t OUTLINED_FUNCTION_26_3@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 4);
  *(v2 - 4) = v3;
  return v4 | (v3 << 32);
}

uint64_t OUTLINED_FUNCTION_26_8()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_26_15()
{

  return sub_1C8ECC488();
}

uint64_t OUTLINED_FUNCTION_26_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_17()
{

  return sub_1C8F07110();
}

void OUTLINED_FUNCTION_26_21()
{
  v2 = *(v0 - 104);

  TypedValue.init(protobuf:)();
}

uint64_t OUTLINED_FUNCTION_243_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{

  return sub_1C8E1B5B4(v4, v3, a3);
}

uint64_t OUTLINED_FUNCTION_243_2()
{
  v2 = *(v0 - 112);
  v4 = *(v0 - 96);
  v3 = *(v0 - 88);

  return sub_1C9064B2C();
}

void OUTLINED_FUNCTION_341()
{

  JUMPOUT(0x1CCA82810);
}

uint64_t OUTLINED_FUNCTION_341_1()
{
  *(v1 - 120) = v0;
  v3 = *(v1 - 104);

  return type metadata accessor for DisplayRepresentation(0);
}

uint64_t ContainerDefinition.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + 56);
  v11 = v1[9];
  v12 = v1[11];
  v14 = v1[8];
  v15 = v1[10];
  v16 = *(v1 + 96);
  sub_1C9063FBC();
  sub_1C8CC1590(a1, v6);
  OUTLINED_FUNCTION_206_0();
  sub_1C9063FBC();
  sub_1C9064D9C();
  if (v9)
  {
    sub_1C9063FBC();
  }

  MEMORY[0x1CCA82810](v10);
  if (!v11)
  {
    sub_1C9064D9C();
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_7:
    MEMORY[0x1CCA82810](0);
    return MEMORY[0x1CCA82810](v16);
  }

  sub_1C9064D9C();
  sub_1C9063FBC();
  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_5:
  MEMORY[0x1CCA82810](1);
  sub_1C9063FBC();
  return MEMORY[0x1CCA82810](v16);
}

uint64_t OUTLINED_FUNCTION_283_0()
{

  return sub_1C8DB47C0();
}

uint64_t OUTLINED_FUNCTION_71_6@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1C9064A0C();
}

uint64_t OUTLINED_FUNCTION_71_7()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

void OUTLINED_FUNCTION_202_4()
{
  v3 = *v0;
  v2 = v0[1];
  v4 = v0[3];
  *(v1 - 160) = v0[2];
  *(v1 - 152) = v4;
  v5 = v0[4];
  v6 = v0[5];
}

uint64_t OUTLINED_FUNCTION_202_5()
{

  return sub_1C8D63FCC();
}

uint64_t sub_1C8CC2404()
{
  OUTLINED_FUNCTION_7();
  v1[18] = v0;
  v2 = sub_1C9063D3C();
  v1[19] = v2;
  OUTLINED_FUNCTION_46(v2);
  v1[20] = v3;
  v5 = *(v4 + 64);
  v1[21] = OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C8CC24AC()
{
  OUTLINED_FUNCTION_4_2();
  v1 = *(v0[18] + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_client);
  v0[2] = v0;
  v0[3] = sub_1C8CC3A94;
  v2 = swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316560, &qword_1C9085280);
  OUTLINED_FUNCTION_96_2(v3);
  v0[11] = 1107296256;
  v0[12] = sub_1C8CC38C8;
  v0[13] = &block_descriptor_244;
  v0[14] = v2;
  [v1 startWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t OUTLINED_FUNCTION_90_3()
{

  return sub_1C9064C2C();
}

uint64_t OUTLINED_FUNCTION_90_6()
{

  return sub_1C906494C();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for ToolInvocation()
{
  result = qword_1EDA6E348;
  if (!qword_1EDA6E348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static ToolExecutor.start(sessionID:)()
{
  OUTLINED_FUNCTION_7();
  v0[2] = v1;
  v0[3] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AA0, &unk_1C90AB5C0);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  v0[4] = OUTLINED_FUNCTION_39();
  v6 = OUTLINED_FUNCTION_71();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

BOOL OUTLINED_FUNCTION_62_3()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_62_4()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_62_5()
{

  return sub_1C9063FBC();
}

uint64_t OUTLINED_FUNCTION_62_9()
{
  __swift_getEnumTagSinglePayload(v3, 1, v1);

  return sub_1C8D16D78(v3, v0, v2);
}

void *OUTLINED_FUNCTION_62_10()
{

  return memcpy((v0 + 104), (v1 - 176), 0x58uLL);
}

uint64_t OUTLINED_FUNCTION_226()
{
  v2 = *(v0 - 120) & 0x1FFFFFFFFFFFFFFFLL;
}

uint64_t OUTLINED_FUNCTION_62_11()
{
  v2 = *v0;
}

void OUTLINED_FUNCTION_62_13(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = *(v1 + 24);
  v4 = *(v1 + 16) + 1;
}

uint64_t sub_1C8CC2980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_133();
  v11 = v10[3];
  v12 = v10[4];
  v13 = v10[2];
  sub_1C90620BC();
  OUTLINED_FUNCTION_227_0();
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = *MEMORY[0x1E69E13D0];
  objc_allocWithZone(MEMORY[0x1E69E0C60]);
  v19 = v18;

  OUTLINED_FUNCTION_61_8();
  v24 = sub_1C8CC2AE8(v20, v21, v22, v23, v12, v19);
  v10[5] = v24;
  v25 = objc_allocWithZone(type metadata accessor for SageWorkflowRunnerClientToolExecutionSession());
  v10[6] = OUTLINED_FUNCTION_149_3(v24);
  if (v25)
  {

    v26 = v10[4];

    OUTLINED_FUNCTION_127_3();
    OUTLINED_FUNCTION_151_4();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }

  else
  {
    v36 = swift_task_alloc();
    v10[7] = v36;
    *v36 = v10;
    OUTLINED_FUNCTION_52(v36);
    OUTLINED_FUNCTION_151_4();

    return sub_1C8CC2404();
  }
}

id sub_1C8CC2AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v11 = sub_1C9063EBC();

  if (a4)
  {
    v12 = sub_1C9063EBC();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_1C90620BC();
  v14 = 0;
  if (__swift_getEnumTagSinglePayload(a5, 1, v13) != 1)
  {
    v14 = sub_1C906207C();
    (*(*(v13 - 8) + 8))(a5, v13);
  }

  v15 = [v7 initWithClientIdentifier:v11 siriSessionID:v12 locale:v14 runSource:a6];

  return v15;
}

uint64_t sub_1C8CC2C20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x77)
  {
    *result = a2 - 120;
    if (a3 >= 0x78)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x78)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_1C8CC2C70()
{
  sub_1C906204C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ToolDefinition(319);
    if (v1 <= 0x3F)
    {
      sub_1C8CC331C();
      if (v2 <= 0x3F)
      {
        sub_1C8CC34E0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C8CC2D24()
{
  sub_1C8CC3090(319, &qword_1EDA6E538, &type metadata for ParameterDefinition, MEMORY[0x1E69E62F8]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1C8CC3090(319, &qword_1EDA6E558, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1C8CC3090(319, qword_1EDA6E3A0, &type metadata for AppDefinition, MEMORY[0x1E69E6720]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_1C8CC3090(319, &qword_1EDA6E398, &type metadata for ContainerDefinition, MEMORY[0x1E69E6720]);
      if (v7 > 0x3F)
      {
        return v5;
      }

      sub_1C8CC3090(319, &qword_1EDA6E360, &type metadata for ContainerDefinition, MEMORY[0x1E69E62F8]);
      if (v8 > 0x3F)
      {
        return v5;
      }

      sub_1C8CC30E0();
      if (v9 > 0x3F)
      {
        return v5;
      }

      sub_1C8CC3090(319, &qword_1EDA6E370, &type metadata for ToolCategory, MEMORY[0x1E69E62F8]);
      if (v10 > 0x3F)
      {
        return v5;
      }

      sub_1C8CC3090(319, &qword_1EDA6E550, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      if (v12 > 0x3F)
      {
        return v11;
      }

      sub_1C8CC3090(319, qword_1EDA6E448, &type metadata for ToolDeprecationDefinition, MEMORY[0x1E69E6720]);
      if (v13 > 0x3F)
      {
        return v5;
      }

      sub_1C8CC3090(319, &qword_1EDA6E368, &type metadata for RuntimeRequirement, MEMORY[0x1E69E62F8]);
      if (v14 > 0x3F)
      {
        return v5;
      }

      sub_1C8CC3090(319, &qword_1EDA6E378, &type metadata for SystemToolProtocol, MEMORY[0x1E69E62F8]);
      if (v15 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_1C8CC32B8();
        v1 = v16;
        if (v17 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_1C8CC3090(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C8CC30E0()
{
  if (!qword_1EDA6E418[0])
  {
    type metadata accessor for ToolIcon(255);
    v0 = sub_1C906464C();
    if (!v1)
    {
      atomic_store(v0, qword_1EDA6E418);
    }
  }
}

void sub_1C8CC3138()
{
  sub_1C8CC31C0();
  if (v0 <= 0x3F)
  {
    sub_1C8CC31E8();
    if (v1 <= 0x3F)
    {
      sub_1C8CC324C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C8CC31C0()
{
  result = qword_1EDA6E380;
  if (!qword_1EDA6E380)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EDA6E380);
  }

  return result;
}

void sub_1C8CC31E8()
{
  if (!qword_1EDA6E388)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDA6E388);
    }
  }
}

void sub_1C8CC324C()
{
  if (!qword_1EDA6E390)
  {
    sub_1C9061EBC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDA6E390);
    }
  }
}

void sub_1C8CC32B8()
{
  if (!qword_1EDA6E358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316A70, &qword_1C9087680);
    v0 = sub_1C906464C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA6E358);
    }
  }
}

void sub_1C8CC331C()
{
  if (!qword_1EDA6DAB0)
  {
    type metadata accessor for ConcreteResolvable();
    v0 = sub_1C9063E5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA6DAB0);
    }
  }
}

uint64_t type metadata accessor for ConcreteResolvable()
{
  result = qword_1EDA6E0C0;
  if (!qword_1EDA6E0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8CC33F0()
{
  result = type metadata accessor for TypedValue.ID(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C8CC345C()
{
  result = sub_1C906204C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C8CC34E0()
{
  if (!qword_1EDA6E340)
  {
    v0 = sub_1C906464C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA6E340);
    }
  }
}

uint64_t static ToolExecutor.SessionOptions.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDA660F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ToolExecutor.SessionOptions(0);
  v3 = __swift_project_value_buffer(v2, qword_1EDA660F8);
  return sub_1C8CC35B0(v3, a1, type metadata accessor for ToolExecutor.SessionOptions);
}

uint64_t sub_1C8CC35B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_13_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_94();
  v8(v7);
  return a2;
}

uint64_t static ToolExecutor.start(options:)()
{
  OUTLINED_FUNCTION_7();
  *(v0 + 16) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AA0, &unk_1C90AB5C0);
  OUTLINED_FUNCTION_9(v2);
  v4 = *(v3 + 64);
  *(v0 + 24) = OUTLINED_FUNCTION_39();
  v5 = OUTLINED_FUNCTION_71();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void *sub_1C8CC3690(void *a1, int64_t a2, char a3)
{
  result = sub_1C8CC36B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C8CC36B0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312978, &qword_1C9068D58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[21 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 168 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312980, &qword_1C9068D60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1C8CC381C()
{
  v1 = *v0;
  sub_1C8CBFC98();
  *v0 = v2;
}

uint64_t sub_1C8CC38C8(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume();
}

void sub_1C8CC3900(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = v2;
    OUTLINED_FUNCTION_50();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = *MEMORY[0x1E69E1328];
    v6 = a2;
    v7 = sub_1C906441C();

    v8 = *(v3 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_actionStateObservation);
    *(v3 + OBJC_IVAR____TtC7ToolKit44SageWorkflowRunnerClientToolExecutionSession_actionStateObservation) = v7;
  }
}

uint64_t sub_1C8CC39C8()
{
  MEMORY[0x1CCA83460](v0 + 16);
  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8CC3A94()
{
  OUTLINED_FUNCTION_7();
  v7 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C8CC3B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_176_3();
  v15 = v14[21];
  v16 = v14[18];
  v17 = *MEMORY[0x1E69E10F8];
  sub_1C906371C();
  v18 = v16;
  v19 = sub_1C9063D1C();
  v20 = sub_1C906446C();

  v21 = os_log_type_enabled(v19, v20);
  v22 = v14[20];
  v23 = v14[21];
  v24 = v14[19];
  if (v21)
  {
    v25 = v14[18];
    OUTLINED_FUNCTION_17_0();
    a10 = v23;
    v26 = swift_slowAlloc();
    OUTLINED_FUNCTION_55_5();
    a11 = swift_slowAlloc();
    *v26 = 136315138;
    v27 = [v25 debugDescription];
    sub_1C9063EEC();
    OUTLINED_FUNCTION_97_4();

    v28 = OUTLINED_FUNCTION_325();
    v31 = sub_1C8CACE04(v28, v29, v30);

    *(v26 + 4) = v31;
    OUTLINED_FUNCTION_232_1(&dword_1C8C9B000, v32, v33, "Session %s started");
    __swift_destroy_boxed_opaque_existential_1(a11);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();

    (*(v22 + 8))(a10, v24);
  }

  else
  {

    (*(v22 + 8))(v23, v24);
  }

  v34 = v14[21];

  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_101();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
}

void sub_1C8CC3D08(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_7_6(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C8CC3F44(v4, 1);
  OUTLINED_FUNCTION_136_0();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_9();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312980, &qword_1C9068D60);
  OUTLINED_FUNCTION_185_0();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_137_1();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1C8CC3DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312528, &unk_1C9066960);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t OUTLINED_FUNCTION_131()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_131_1(uint64_t result)
{
  *(v1 + 24) = result;
  *v2 = result;
  return result;
}

uint64_t ToolDatabase.__deallocating_deinit()
{
  ToolDatabase.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t ToolDatabase.deinit()
{
  sub_1C8D0EE18();
  v1 = *(v0 + 16);

  sub_1C8D16D78(v0 + OBJC_IVAR____TtC7ToolKit12ToolDatabase_file, &qword_1EC313058, &qword_1C9071D80);
  sub_1C8D16D78(v0 + OBJC_IVAR____TtC7ToolKit12ToolDatabase_lock, &qword_1EC313EF8, &qword_1C9071D88);
  return v0;
}

void sub_1C8CC4008()
{
  OUTLINED_FUNCTION_202_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_37_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_67_0(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312978, &qword_1C9068D58);
      v8 = OUTLINED_FUNCTION_197_0();
      OUTLINED_FUNCTION_33_0(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_66_0();
        sub_1C8CC4C1C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312980, &qword_1C9068D60);
    OUTLINED_FUNCTION_131();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_123_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_36_0();
    goto LABEL_7;
  }

  __break(1u);
}

void OUTLINED_FUNCTION_174_1()
{
  *(v1 - 72) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_65_0()
{

  return sub_1C906251C();
}

uint64_t OUTLINED_FUNCTION_65_3()
{
  v2 = *(v0 - 72);

  return sub_1C9064B8C();
}

uint64_t OUTLINED_FUNCTION_65_4()
{
  v2 = *(v0 - 936);

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_65_5()
{
}

uint64_t OUTLINED_FUNCTION_65_10@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 208);

  return sub_1C9064B8C();
}

void *OUTLINED_FUNCTION_65_12()
{
  v3 = *(v1 + 128);
  v4 = *(v1 + 64);
  v5 = v0[2] - 1;

  return memmove(v0 + 4, v0 + 33, v5);
}

uint64_t OUTLINED_FUNCTION_69_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v5 = *(v1 - 184);
  v4 = *(v1 - 176);

  return sub_1C9064ACC();
}

uint64_t OUTLINED_FUNCTION_69_4()
{
  v2 = *(v0 + 200);
  v3 = *(v0 + 168);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v6 = *(v0 + 256);

  return sub_1C90633FC();
}

uint64_t OUTLINED_FUNCTION_69_8()
{

  return sub_1C906373C();
}

uint64_t OUTLINED_FUNCTION_69_10()
{

  return sub_1C90637CC();
}

void *OUTLINED_FUNCTION_69_12(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char __src)
{

  return memcpy(&a9, &__src, 0x48uLL);
}

uint64_t sub_1C8CC4BD4(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1C8CC4C1C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[168 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_9(a3, result, 168 * a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_64_3()
{
  v2 = *(v0 - 448) + *(v0 - 440);

  return sub_1C906206C();
}

uint64_t OUTLINED_FUNCTION_64_6()
{
  v2 = *(v0 - 256);

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_64_7(uint64_t a1)
{
  v2 = *(a1 + 24);

  return sub_1C90637EC();
}

uint64_t OUTLINED_FUNCTION_64_9()
{

  return sub_1C8F07110();
}

uint64_t OUTLINED_FUNCTION_64_11()
{
  v2 = v0[16];
  v3 = v0[12];
  v8 = v0[15];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_25_7(uint64_t a1, double *a2)
{
  *a2 = v2;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_25_11()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_16()
{
  v2[(v1 >> 6) + 8] |= 1 << v1;
  v3 = (v2[6] + 16 * v1);
  v4 = *(v0 + 184);
  *v3 = *(v0 + 160);
  v3[1] = v4;
  result = sub_1C8D04FA4((v0 + 192), v2[7] + 40 * v1);
  v6 = v2[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_25_20()
{

  return sub_1C8F07110();
}

uint64_t OUTLINED_FUNCTION_25_21()
{
  result = v0 - 216;
  v2 = *(v0 - 328);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_22()
{
  *(v0 + 8 * (v1 >> 6) + 64) |= 1 << v1;
  *(*(v0 + 48) + 8 * v1) = v2;
  return *(v0 + 56) + 104 * v1;
}

uint64_t OUTLINED_FUNCTION_25_23()
{
  v3 = *(v0 - 120);
  v2 = *(v0 - 112);

  return sub_1C9064ACC();
}

void OUTLINED_FUNCTION_25_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = *(v11 - 96);

  TypeInstance.init(protobuf:)(v10, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t OUTLINED_FUNCTION_25_26()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v0);
}

uint64_t OUTLINED_FUNCTION_225(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  return result;
}

void OUTLINED_FUNCTION_225_3()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
}

uint64_t OUTLINED_FUNCTION_225_4()
{
  v2 = *(v0 - 112);
  v4 = *(v0 - 96);
  v3 = *(v0 - 88);
}

uint64_t objectdestroyTm()
{
  v1 = sub_1C9062E6C();
  OUTLINED_FUNCTION_13_1(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t objectdestroyTm_1()
{
  v1 = sub_1C9062E6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C8CC5294()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 56) = v0;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t OUTLINED_FUNCTION_333_2()
{
  result = **(v1 - 88);
  v3 = *v0;
  return result;
}

void OUTLINED_FUNCTION_149_0()
{

  JUMPOUT(0x1CCA81A90);
}

uint64_t OUTLINED_FUNCTION_149_1()
{
  result = v0;
  v3 = *(v1 - 144);
  return result;
}

char *OUTLINED_FUNCTION_149_3(void *a1)
{

  return sub_1C8E077EC(a1);
}

uint64_t sub_1C8CC547C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1C8CC54DC()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_63();
  v3 = *(v0 + 40);

  return v2(v3);
}

uint64_t sub_1C8CC5544(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
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

void OUTLINED_FUNCTION_58_1()
{
}

void OUTLINED_FUNCTION_58_3()
{
  v2 = *(v0 - 112);

  sub_1C8E06D78();
}

uint64_t OUTLINED_FUNCTION_58_4()
{

  return sub_1C906474C();
}

void OUTLINED_FUNCTION_58_5(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = 0;
  *(v3 + 8) = v2;
}

uint64_t OUTLINED_FUNCTION_226_0()
{

  return sub_1C9063EAC();
}

uint64_t OUTLINED_FUNCTION_58_9()
{

  return sub_1C90620BC();
}

BOOL OUTLINED_FUNCTION_58_10()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_58_11(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(v4 - 176) = a2;
  *(v4 - 160) = a1;
  *(v4 - 152) = v2;
  *(v4 - 144) = v3;
  *(v4 - 136) = a2;
}

uint64_t sub_1C8CC5734()
{
  OUTLINED_FUNCTION_223();
  v2 = v1(0);
  OUTLINED_FUNCTION_13_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v0;
}

uint64_t sub_1C8CC578C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_13_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C8CC57EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C8CC582C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21_12();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void TypedValue.PrimitiveValue.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_164();
  a19 = v23;
  a20 = v24;
  v25 = sub_1C9061D4C();
  v26 = OUTLINED_FUNCTION_11(v25);
  v173 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_111();
  v30 = sub_1C906194C();
  v31 = OUTLINED_FUNCTION_11(v30);
  v172 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_111();
  v35 = sub_1C90622FC();
  v36 = OUTLINED_FUNCTION_11(v35);
  v171 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_7_0();
  v40 = OUTLINED_FUNCTION_111();
  v170 = type metadata accessor for TypedValue.PrimitiveValue.Shortcut(v40);
  v41 = OUTLINED_FUNCTION_13_1(v170);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_7_0();
  v44 = OUTLINED_FUNCTION_111();
  v169 = type metadata accessor for TypedValue.PrimitiveValue.AppValue(v44);
  v45 = OUTLINED_FUNCTION_13_1(v169);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_7_0();
  v48 = OUTLINED_FUNCTION_111();
  v168 = type metadata accessor for TypedValue.PrimitiveValue.FileValue(v48);
  v49 = OUTLINED_FUNCTION_13_1(v168);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_7_0();
  v52 = OUTLINED_FUNCTION_111();
  v167 = type metadata accessor for TypedValue.PrimitiveValue.PersonValue(v52);
  v53 = OUTLINED_FUNCTION_13_1(v167);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_7_0();
  v56 = OUTLINED_FUNCTION_111();
  v57 = type metadata accessor for TypedValue.PrimitiveValue.PlacemarkValue(v56);
  v58 = OUTLINED_FUNCTION_23_16(v57, &a18);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_7_0();
  v62 = OUTLINED_FUNCTION_27_0(v61);
  v63 = type metadata accessor for TypedValue.PrimitiveValue.PaymentMethodValue(v62);
  v64 = OUTLINED_FUNCTION_23_16(v63, &a14);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_7_0();
  v68 = OUTLINED_FUNCTION_27_0(v67);
  v69 = type metadata accessor for TypedValue.PrimitiveValue.CurrencyAmountValue(v68);
  v70 = OUTLINED_FUNCTION_23_16(v69, &a11);
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A00, &qword_1C906F540);
  OUTLINED_FUNCTION_4_22(v74, &a9);
  v165 = v75;
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_27_0(v79);
  v80 = sub_1C9061C0C();
  v81 = OUTLINED_FUNCTION_4_22(v80, &a16);
  v166 = v82;
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_12();
  v174 = v85;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_27_0(v87);
  v88 = sub_1C9061EBC();
  v89 = OUTLINED_FUNCTION_11(v88);
  v164 = v90;
  v92 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_14();
  v93 = sub_1C9061BAC();
  v94 = OUTLINED_FUNCTION_11(v93);
  v96 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_67_4();
  v97 = sub_1C9061FEC();
  v98 = OUTLINED_FUNCTION_11(v97);
  v100 = v99;
  v102 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_290();
  v103 = type metadata accessor for TypedValue.PrimitiveValue(0);
  v104 = OUTLINED_FUNCTION_13_1(v103);
  v106 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_0_47();
  OUTLINED_FUNCTION_246();
  sub_1C8CC5734();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v175 = *v21;
      sub_1C9064BDC();
      goto LABEL_23;
    case 2u:
      v117 = *v21;
      OUTLINED_FUNCTION_180_1();
      sub_1C906430C();
      break;
    case 3u:
      v110 = *(v21 + 4);
      v111 = *v21;
      v112 = *(v21 + 1);
      sub_1C90645DC();
      goto LABEL_23;
    case 4u:
      v129 = *v21;
      v128 = *(v21 + 1);
      v175 = 34;
      v176 = 0xE100000000000000;
      v130 = *MEMORY[0x1E69E1140];
      if ((os_variant_allows_internal_security_policies() & 1) == 0)
      {
      }

      v131 = OUTLINED_FUNCTION_134();
      MEMORY[0x1CCA81A90](v131);

      MEMORY[0x1CCA81A90](34, 0xE100000000000000);
      break;
    case 5u:
      v134 = *(v100 + 32);
      v135 = OUTLINED_FUNCTION_276();
      v136(v135);
      OUTLINED_FUNCTION_36_9();
      sub_1C8CC8068(v137);
      sub_1C9064BDC();
      OUTLINED_FUNCTION_273_0();
      v138 = *(v100 + 8);
      v139 = OUTLINED_FUNCTION_208_0();
      v141(v139, v140);
      break;
    case 6u:
      OUTLINED_FUNCTION_263_1(&v175);
      v118 = OUTLINED_FUNCTION_162();
      v119(v118);
      OUTLINED_FUNCTION_34_9();
      sub_1C8CC8068(v120);
      sub_1C9064BDC();
      OUTLINED_FUNCTION_273_0();
      (*(v100 + 8))(v22, v93);
      break;
    case 7u:
      OUTLINED_FUNCTION_206_2();
      v144 = OUTLINED_FUNCTION_288();
      v145(v144);
      OUTLINED_FUNCTION_38_10();
      sub_1C8CC8068(v146);
      sub_1C9064BDC();
      OUTLINED_FUNCTION_273_0();
      (*(v164 + 8))(v20, v88);
      break;
    case 8u:
      v113 = *(v166 + 32);
      v114 = OUTLINED_FUNCTION_146_0();
      v115(v114);
      v175 = 0x7475626972747461;
      v176 = 0xEB00000000286465;
      v116 = *MEMORY[0x1E69E1140];
      if (os_variant_allows_internal_security_policies())
      {
        (*(v166 + 16))(v174);
      }

      else
      {
        sub_1C9061BEC();
      }

      OUTLINED_FUNCTION_33_8();
      sub_1C8CC8068(v159);
      v160 = sub_1C9064BDC();
      MEMORY[0x1CCA81A90](v160);

      v161 = *(v166 + 8);
      v161(v174);
      v162 = OUTLINED_FUNCTION_203_2();
      MEMORY[0x1CCA81A90](v162);
      v163 = OUTLINED_FUNCTION_347();
      v161(v163);
      break;
    case 9u:
      v124 = v165;
      OUTLINED_FUNCTION_206_2();
      v142 = OUTLINED_FUNCTION_276();
      v143(v142);
      sub_1C8D24EA8(&unk_1EC315C50);
      goto LABEL_33;
    case 0xAu:
      OUTLINED_FUNCTION_151_3();
      OUTLINED_FUNCTION_130_0(&a10);
      sub_1C8CCEB64();
      OUTLINED_FUNCTION_180_1();
      OUTLINED_FUNCTION_237_1();
      sub_1C90648BC();
      goto LABEL_28;
    case 0xBu:
      OUTLINED_FUNCTION_151_3();
      OUTLINED_FUNCTION_130_0(&a13);
      sub_1C8CCEB64();
      OUTLINED_FUNCTION_180_1();
      OUTLINED_FUNCTION_237_1();
      sub_1C90648BC();
      goto LABEL_28;
    case 0xCu:
      OUTLINED_FUNCTION_151_3();
      OUTLINED_FUNCTION_130_0(&a17);
      sub_1C8CCEB64();
      OUTLINED_FUNCTION_180_1();
      OUTLINED_FUNCTION_237_1();
      sub_1C90648BC();
      goto LABEL_28;
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x11u:
      OUTLINED_FUNCTION_151_3();
      sub_1C8CCEB64();
      OUTLINED_FUNCTION_180_1();
      OUTLINED_FUNCTION_237_1();
      sub_1C90648BC();
LABEL_28:
      sub_1C8CC6AB4();
      break;
    case 0x10u:
      v121 = *v21;
      OUTLINED_FUNCTION_180_1();
      v122 = &unk_1EC315860;
      v123 = &unk_1C90AAB70;
      goto LABEL_37;
    case 0x12u:
      v153 = *(v171 + 32);
      v154 = OUTLINED_FUNCTION_181_0();
      v155(v154);
      OUTLINED_FUNCTION_180_1();
      sub_1C90648BC();
      v156 = *(v171 + 8);
      v157 = OUTLINED_FUNCTION_134();
      v158(v157);
      break;
    case 0x13u:
      v124 = v172;
      OUTLINED_FUNCTION_206_2();
      v125 = OUTLINED_FUNCTION_276();
      v126(v125);
      OUTLINED_FUNCTION_32_8();
      goto LABEL_32;
    case 0x14u:
      v132 = *v21;
      v133 = *(v21 + 1);
      sub_1C9064E3C();
LABEL_23:
      OUTLINED_FUNCTION_273_0();
      break;
    case 0x15u:
      v124 = v173;
      OUTLINED_FUNCTION_206_2();
      v147 = OUTLINED_FUNCTION_276();
      v148(v147);
      OUTLINED_FUNCTION_35_11();
LABEL_32:
      sub_1C8CC8068(v127);
LABEL_33:
      sub_1C9064BDC();
      OUTLINED_FUNCTION_273_0();
      v149 = *(v124 + 8);
      v150 = OUTLINED_FUNCTION_95_0();
      v152(v150, v151);
      break;
    case 0x16u:
      v121 = *v21;
      OUTLINED_FUNCTION_180_1();
      v122 = &qword_1EC315730;
      v123 = &qword_1C907D630;
LABEL_37:
      __swift_instantiateConcreteTypeFromMangledNameV2(v122, v123);
      sub_1C90648BC();

      break;
    case 0x17u:
      break;
    default:
      v107 = *v21;
      v175 = 0;
      v176 = 0xE000000000000000;
      if (v107)
      {
        v108 = 1702195828;
      }

      else
      {
        v108 = 0x65736C6166;
      }

      if (v107)
      {
        v109 = 0xE400000000000000;
      }

      else
      {
        v109 = 0xE500000000000000;
      }

      MEMORY[0x1CCA81A90](v108, v109);

      break;
  }

  OUTLINED_FUNCTION_163();
}