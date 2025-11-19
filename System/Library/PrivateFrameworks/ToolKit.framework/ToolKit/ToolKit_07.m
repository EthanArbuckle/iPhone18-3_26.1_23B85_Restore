uint64_t sub_1C8D2BCE0(uint64_t a1)
{
  result = MEMORY[0x1CCA81DD0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1C8D8634C(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8D2BDA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1C8D3EF64();
  result = MEMORY[0x1CCA81DD0](v2, &type metadata for RestrictionContext, v3);
  v5 = 0;
  v10 = result;
  v6 = *(a1 + 16);
  for (i = 32; ; i += 136)
  {
    if (v6 == v5)
    {

      return v10;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    memcpy(__dst, (a1 + i), sizeof(__dst));
    ++v5;
    sub_1C8D073F4(__dst, v9);
    sub_1C8D86494();
    memcpy(v9, v8, sizeof(v9));
    result = sub_1C8D073A0(v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8D2BE78(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1C8D3EED4();
  v8 = MEMORY[0x1CCA81DD0](v2, &type metadata for RuntimePlatform, v3);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      sub_1C8D86644(&v7, *(a1 + v5++));
      --v4;
    }

    while (v4);

    return v8;
  }

  else
  {
    OUTLINED_FUNCTION_45_2();
  }

  return v2;
}

void sub_1C8D2BF0C()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DD0, &qword_1C9072940);
  v3 = OUTLINED_FUNCTION_11(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v8);
  v9 = *(v1 + 16);
  sub_1C8D3EDD4();
  v10 = OUTLINED_FUNCTION_125();
  MEMORY[0x1CCA81DD0](v10);
  v11 = *(v1 + 16);
  if (v11)
  {
    v12 = *(v5 + 80);
    OUTLINED_FUNCTION_139();
    v14 = v1 + v13;
    v15 = *(v5 + 72);
    do
    {
      sub_1C8D3F068();
      OUTLINED_FUNCTION_100();
      sub_1C8D86720();
      v16 = OUTLINED_FUNCTION_287();
      sub_1C8D3F0C4(v16, v17, &qword_1C9072940);
      v14 += v15;
      --v11;
    }

    while (v11);
  }

  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8D2C06C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1C8D3ED80();
  result = MEMORY[0x1CCA81DD0](v2, &type metadata for ContainerDefinition, v3);
  v5 = 0;
  v10 = result;
  v6 = *(a1 + 16);
  for (i = 32; ; i += 104)
  {
    if (v6 == v5)
    {

      return v10;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    memcpy(__dst, (a1 + i), 0x61uLL);
    ++v5;
    sub_1C8CC1340(__dst, v9);
    sub_1C8D86CF0();
    memcpy(v9, v8, 0x61uLL);
    result = sub_1C8CC15FC(v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8D2C1FC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(_OWORD *, uint64_t *), void (*a5)(uint64_t *, _OWORD *))
{
  v9 = *(a1 + 16);
  v10 = a2();
  result = MEMORY[0x1CCA81DD0](v9, a3, v10);
  v12 = 0;
  v18 = result;
  v13 = *(a1 + 16);
  for (i = 32; ; i += 40)
  {
    if (v13 == v12)
    {

      return v18;
    }

    if (v12 >= *(a1 + 16))
    {
      break;
    }

    v15 = *(a1 + i + 16);
    v19[0] = *(a1 + i);
    v19[1] = v15;
    v20 = *(a1 + i + 32);
    ++v12;
    a4(v19, v16);
    a5(v16, v19);
    result = sub_1C8D3ED20(v16[0], v16[1], v16[2], v16[3], v17);
  }

  __break(1u);
  return result;
}

void sub_1C8D2C314(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void))
{
  v8[1] = MEMORY[0x1CCA81DD0](*(a1 + 16));
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 32;
    do
    {
      a4(v8, *(a1 + v7));
      v7 += 8;
      --v6;
    }

    while (v6);
  }

  else
  {
    OUTLINED_FUNCTION_45_2();
  }

  OUTLINED_FUNCTION_199_0();
}

void sub_1C8D2C3A0()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  v2 = sub_1C906204C();
  v3 = OUTLINED_FUNCTION_11(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - v9;
  v11 = *(v1 + 16);
  v12 = sub_1C8D3EE90(&qword_1EDA666F0);
  v22[1] = MEMORY[0x1CCA81DD0](v11, v2, v12);
  v13 = *(v1 + 16);
  if (v13)
  {
    v16 = *(v5 + 16);
    v14 = v5 + 16;
    v15 = v16;
    v17 = *(v14 + 64);
    OUTLINED_FUNCTION_139();
    v22[0] = v1;
    v19 = v1 + v18;
    v20 = *(v14 + 56);
    do
    {
      v21 = OUTLINED_FUNCTION_287();
      v15(v21);
      OUTLINED_FUNCTION_112();
      sub_1C8D881DC();
      (*(v14 - 8))(v10, v2);
      v19 += v20;
      --v13;
    }

    while (v13);
  }

  else
  {
    OUTLINED_FUNCTION_45_2();
  }

  OUTLINED_FUNCTION_163();
}

uint64_t TypeInstance.asOptional(withDefaultValue:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  OUTLINED_FUNCTION_2();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = v6 | 0x4000000000000000;

  return sub_1C8D2B0FC(v4);
}

uint64_t TypeInstance.asCollection()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_50();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *a1 = v4 | 0x2000000000000000;
}

uint64_t TypeInstance.collectionIfMultiple(isCollection:)@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (a1)
  {
    OUTLINED_FUNCTION_50();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = v5 | 0x2000000000000000;
  }

  else
  {
    v6 = v4;
  }

  *a2 = v6;
}

uint64_t TypeInstance.inUnion(with:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v10 = *v2;
  v11 = v4;
  static TypeInstance.== infix(_:_:)(&v11, &v10);
  if (v6)
  {
  }

  else
  {
    OUTLINED_FUNCTION_50();
    v8 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DF8, &qword_1C906BB80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C906BAE0;
    *(inited + 32) = v5;
    *(inited + 40) = v4;

    result = sub_1C8D39264(inited);
    *(v8 + 16) = result;
    v5 = v8 | 0x6000000000000000;
  }

  *a2 = v5;
  return result;
}

void TypeInstance.restrictionContexts.getter()
{
  OUTLINED_FUNCTION_135_1();
  switch(v3)
  {
    case 1:
    case 2:
    case 6:
      OUTLINED_FUNCTION_169_0(v2);
      TypeInstance.restrictionContexts.getter(v4, v5);
      goto LABEL_3;
    case 3:
      v7 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *(v7 + 56);
      v9 = *(v7 + 32);
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_186_0();
      i = 0;
      if (v1)
      {
        goto LABEL_6;
      }

      break;
    case 4:
    case 5:
      v6 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      goto LABEL_13;
    default:
LABEL_3:
      OUTLINED_FUNCTION_199_0();
      return;
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v0)
    {
      break;
    }

    ++i;
    if (*(v7 + 56 + 8 * v11))
    {
      for (i = v11; ; v11 = i)
      {
        OUTLINED_FUNCTION_78_2(v11);
        v14 = TypeInstance.restrictionContexts.getter(v12, v13);
        sub_1C8D378D8(v14);
LABEL_6:
        ;
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_199_0();

  sub_1C8D2BDA0(v15);
}

void static RestrictionContext.ValueSetDefinition.Inner.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v8 = *(v0 + 16);
  v124 = *v0;
  v125 = v8;
  *v126 = *(v0 + 32);
  v9 = *v126;
  v10 = v1[1];
  v127 = *v1;
  v128 = v10;
  v12 = *v1;
  v11 = v1[1];
  *v129 = v1[2];
  *&v129[9] = *(v1 + 41);
  *&v126[9] = *(v0 + 41);
  v130[0] = v124;
  v130[1] = v8;
  v131[0] = v9;
  *(v131 + 9) = *&v126[9];
  *(v132 + 9) = *(v1 + 41);
  v13 = v1[2];
  v131[3] = v11;
  v132[0] = v13;
  v131[2] = v12;
  v14 = v8;
  v15 = *v126;
  v16 = *&v126[9] >> 56;
  switch(v126[24])
  {
    case 1:
      if (v129[24] != 1)
      {
        goto LABEL_45;
      }

      v39 = v127;
      HIDWORD(v93) = v129[0];
      LOBYTE(v115) = v126[0];
      LOBYTE(v110) = v129[0];
      v40 = OUTLINED_FUNCTION_195_0(v0, v1, v2, v3, v4, v5, v6, v7, *&v129[16], *&v129[8], *(&v127 + 1), v128, v93, *(&v128 + 1), v127, *(&v127 + 1), v128, *(&v128 + 1), v110, v124, *(&v124 + 1), v8, *(&v8 + 1), v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, *(&v124 + 1), v125, *(&v125 + 1), *v126, *&v126[8], *&v126[16], *&v126[24], v127);
      OUTLINED_FUNCTION_194_0(v40, v41, v42, v43, v44, v45, v46, v47, v71, v77, v83, v89, v95, v102, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124);
      v48 = OUTLINED_FUNCTION_100();
      sub_1C8D06F98(v48, v49, v14, *(&v14 + 1), v15);
      sub_1C8D06F98(v39, *(&v39 + 1), v128, v103, v99);
      v96 = static ContentItemClassDescriptor.Inner.== infix(_:_:)(&v111, &v106);
      sub_1C8D06FF4(v39, v84, v90, v103, v99);
      v50 = OUTLINED_FUNCTION_100();
      sub_1C8D06FF4(v50, v51, v14, *(&v14 + 1), v15);
      if ((v96 & 1) != 0 && (*(&v15 + 1) != v78 || v16 != v72))
      {
        sub_1C9064C2C();
      }

      goto LABEL_48;
    case 2:
      if (v129[24] != 2)
      {
        goto LABEL_45;
      }

      v3 = *(&v127 + 1);
      v2 = v127;
      if (v124 == v127 && *(&v124 + 1) == *(&v127 + 1))
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_100();
      goto LABEL_37;
    case 3:
      if (v129[24] != 3)
      {
        goto LABEL_45;
      }

      v3 = *(&v127 + 1);
      v2 = v127;
      if (v124 != v127 || *(&v124 + 1) != *(&v127 + 1))
      {
        OUTLINED_FUNCTION_100();
        v0 = sub_1C9064C2C();
        if ((v0 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      if (v14 != v128 || *(&v14 + 1) != *(&v128 + 1))
      {
        OUTLINED_FUNCTION_95_0();
        v0 = sub_1C9064C2C();
        if ((v0 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      if (*v126 == *v129 && *&v126[8] == *&v129[8])
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_125();
      goto LABEL_37;
    case 4:
      if (v129[24] == 4)
      {
        goto LABEL_5;
      }

      goto LABEL_45;
    default:
      if (v129[24])
      {
        goto LABEL_45;
      }

LABEL_5:
      v3 = *(&v127 + 1);
      v2 = v127;
      v17 = v124 == v127 && *(&v124 + 1) == *(&v127 + 1);
      if (v17 || (OUTLINED_FUNCTION_100(), v0 = sub_1C9064C2C(), (v0 & 1) != 0))
      {
        if (v14 == v128 && *(&v14 + 1) == *(&v128 + 1))
        {
LABEL_47:
          v61 = OUTLINED_FUNCTION_195_0(v0, v1, v2, v3, v4, v5, v6, v7, v69, v75, v81, v87, v93, v100, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, *(&v124 + 1), v125, *(&v125 + 1), *v126, *&v126[8], *&v126[16], *&v126[24], v127);
          OUTLINED_FUNCTION_194_0(v61, v62, v63, v64, v65, v66, v67, v68, v74, v80, v86, v92, v98, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124);
        }

        else
        {
          OUTLINED_FUNCTION_95_0();
LABEL_37:
          v23 = sub_1C9064C2C();
          v31 = OUTLINED_FUNCTION_195_0(v23, v24, v25, v26, v27, v28, v29, v30, v69, v75, v81, v87, v93, v100, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, *(&v124 + 1), v125, *(&v125 + 1), *v126, *&v126[8], *&v126[16], *&v126[24], v127);
          OUTLINED_FUNCTION_194_0(v31, v32, v33, v34, v35, v36, v37, v38, v70, v76, v82, v88, v94, v101, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124);
        }
      }

      else
      {
LABEL_45:
        v53 = OUTLINED_FUNCTION_195_0(v0, v1, v2, v3, v4, v5, v6, v7, v69, v75, v81, v87, v93, v100, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, *(&v124 + 1), v125, *(&v125 + 1), *v126, *&v126[8], *&v126[16], *&v126[24], v127);
        OUTLINED_FUNCTION_194_0(v53, v54, v55, v56, v57, v58, v59, v60, v73, v79, v85, v91, v97, v104, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124);
      }

LABEL_48:
      sub_1C8D3F0C4(v130, &qword_1EC313540, &qword_1C906BB88);
      OUTLINED_FUNCTION_163();
      return;
  }
}

void static ContentItemClassDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned __int8 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_184_0();
  a31 = v32;
  a32 = v33;
  v35 = *(v34 + 8);
  v36 = *(v34 + 16);
  v37 = *(v34 + 24);
  v39 = *v38;
  v40 = *(v38 + 8);
  v41 = *(v38 + 16);
  v42 = *(v38 + 24);
  v43 = *(v34 + 32);
  v44 = *(v38 + 32);
  a16 = *v34;
  a17 = v35;
  a18 = v36;
  a19 = v37;
  a20 = v43;
  a11 = v39;
  a12 = v40;
  a13 = v41;
  a14 = v42;
  a15 = v44;
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_368();
  sub_1C8D06F98(v45, v46, v47, v48, v43);
  v49 = OUTLINED_FUNCTION_133_1();
  sub_1C8D06F98(v49, v50, v51, v52, v53);
  static ContentItemClassDescriptor.Inner.== infix(_:_:)(&a16, &a11);
  v54 = OUTLINED_FUNCTION_133_1();
  sub_1C8D06FF4(v54, v55, v56, v57, v58);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_368();
  sub_1C8D06FF4(v59, v60, v61, v62, v43);
  OUTLINED_FUNCTION_182();
}

uint64_t sub_1C8D2CBC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001C90C9B80 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001DLL && 0x80000001C90C9BA0 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x726575516B6E696CLL && a2 == 0xE900000000000079;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x80000001C90C9BC0 == a2;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD00000000000001BLL && 0x80000001C90C9BE0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C9064C2C();

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

unint64_t sub_1C8D2CD6C(char a1)
{
  result = 0x726575516B6E696CLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_1C8D2CE2C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C90C9C40 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79747265706F7270 && a2 == 0xEC000000656D614ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8D2CF00(char a1)
{
  if (a1)
  {
    return 0x79747265706F7270;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1C8D2CF44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6564496C6F6F74 && a2 == 0xEE00726569666974;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEC00000079654B72)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8D2D018(char a1)
{
  if (a1)
  {
    return 0x6574656D61726170;
  }

  else
  {
    return 0x6E6564496C6F6F74;
  }
}

uint64_t sub_1C8D2D064(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001C90C9C00 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEC00000079654B72)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8D2D138(char a1)
{
  if (a1)
  {
    return 0x6574656D61726170;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1C8D2D17C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6564497972657571 && a2 == 0xEF7265696669746ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8D2D220(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C90C9C20 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574656D61726170 && a2 == 0xEC00000079654B72;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6564497972657571 && a2 == 0xEF7265696669746ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C8D2D344(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x6574656D61726170;
  }

  return 0x6564497972657571;
}

uint64_t sub_1C8D2D3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D2CBC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D2D3E4(uint64_t a1)
{
  v2 = sub_1C8D39ECC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D2D420(uint64_t a1)
{
  v2 = sub_1C8D39ECC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D2D464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D2CE2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D2D48C(uint64_t a1)
{
  v2 = sub_1C8D3A01C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D2D4C8(uint64_t a1)
{
  v2 = sub_1C8D3A01C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D2D50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D2CF44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D2D534(uint64_t a1)
{
  v2 = sub_1C8D3A0C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D2D570(uint64_t a1)
{
  v2 = sub_1C8D3A0C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D2D5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D2D064(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D2D5DC(uint64_t a1)
{
  v2 = sub_1C8D39F20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D2D618(uint64_t a1)
{
  v2 = sub_1C8D39F20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D2D658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D2D17C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8D2D684(uint64_t a1)
{
  v2 = sub_1C8D39FC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D2D6C0(uint64_t a1)
{
  v2 = sub_1C8D39FC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D2D704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D2D220(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D2D72C(uint64_t a1)
{
  v2 = sub_1C8D39F74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D2D768(uint64_t a1)
{
  v2 = sub_1C8D39F74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RestrictionContext.ValueSetDefinition.Inner.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v72 = v1;
  v4 = v3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313548, &qword_1C906BB90);
  OUTLINED_FUNCTION_11(v66);
  v64 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_97();
  v62 = v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313550, &qword_1C906BB98);
  OUTLINED_FUNCTION_11(v65);
  v63 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_97();
  v61 = v14;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313558, &qword_1C906BBA0);
  OUTLINED_FUNCTION_11(v59);
  v57[4] = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_97();
  v57[3] = v19;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313560, &qword_1C906BBA8);
  OUTLINED_FUNCTION_11(v60);
  v58 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_73();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313568, &qword_1C906BBB0);
  OUTLINED_FUNCTION_11(v24);
  v57[2] = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_15_0();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313570, &qword_1C906BBB8);
  v73 = OUTLINED_FUNCTION_11(v29);
  v74 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  v35 = v57 - v34;
  v36 = v0[1];
  v70 = *v0;
  v71 = v36;
  v37 = v0[3];
  v68 = v0[2];
  v69 = v37;
  v38 = v0[5];
  v67 = v0[4];
  v57[1] = v38;
  v57[0] = v0[6];
  v39 = *(v0 + 56);
  v40 = *(v4 + 24);
  v41 = *(v4 + 32);
  v42 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_217(v42, v43);
  sub_1C8D39ECC();
  sub_1C9064E1C();
  switch(v39)
  {
    case 1:
      LOBYTE(v75) = 1;
      sub_1C8D3A01C();
      OUTLINED_FUNCTION_41_4();
      sub_1C9064ACC();
      v75 = v70;
      v76 = v71;
      v77 = v68;
      v78 = v69;
      v79 = v67;
      sub_1C8D3A070();
      v55 = v60;
      v56 = v72;
      sub_1C9064B8C();
      if (!v56)
      {
        LOBYTE(v75) = 1;
        sub_1C9064B2C();
      }

      (*(v58 + 8))(v2, v55);
      v48 = OUTLINED_FUNCTION_125_1();
      goto LABEL_14;
    case 2:
      OUTLINED_FUNCTION_171_2();
      sub_1C8D39FC8();
      OUTLINED_FUNCTION_26_1();
      v49 = v35;
      sub_1C9064ACC();
      OUTLINED_FUNCTION_69_0();
      sub_1C9064B2C();
      goto LABEL_12;
    case 3:
      LOBYTE(v75) = 3;
      sub_1C8D39F74();
      OUTLINED_FUNCTION_26_1();
      v49 = v35;
      sub_1C9064ACC();
      OUTLINED_FUNCTION_117_0();
      OUTLINED_FUNCTION_69_0();
      v51 = v72;
      sub_1C9064B2C();
      if (!v51)
      {
        OUTLINED_FUNCTION_72_0();
        OUTLINED_FUNCTION_58_2();
        sub_1C9064B2C();
        OUTLINED_FUNCTION_171_2();
        OUTLINED_FUNCTION_58_2();
        sub_1C9064B2C();
      }

      goto LABEL_12;
    case 4:
      LOBYTE(v75) = 4;
      sub_1C8D39F20();
      OUTLINED_FUNCTION_26_1();
      v49 = v35;
      sub_1C9064ACC();
      OUTLINED_FUNCTION_117_0();
      OUTLINED_FUNCTION_69_0();
      v50 = v72;
      sub_1C9064B2C();
      if (!v50)
      {
        OUTLINED_FUNCTION_72_0();
        OUTLINED_FUNCTION_58_2();
        sub_1C9064B2C();
      }

LABEL_12:
      v52 = OUTLINED_FUNCTION_36_3();
      v53(v52);
      v47 = *(v74 + 8);
      v48 = v49;
      break;
    default:
      LOBYTE(v75) = 0;
      sub_1C8D3A0C4();
      OUTLINED_FUNCTION_26_1();
      sub_1C9064ACC();
      OUTLINED_FUNCTION_117_0();
      v44 = v72;
      sub_1C9064B2C();
      if (!v44)
      {
        OUTLINED_FUNCTION_72_0();
        OUTLINED_FUNCTION_58_2();
        sub_1C9064B2C();
      }

      v45 = OUTLINED_FUNCTION_125_1();
      v46(v45);
      v47 = *(v74 + 8);
      v48 = v35;
      break;
  }

  v54 = v40;
LABEL_14:
  v47(v48, v54);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t RestrictionContext.ValueSetDefinition.Inner.hash(into:)()
{
  OUTLINED_FUNCTION_164();
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  switch(*(v0 + 56))
  {
    case 1:
      v8 = v0[6];
      MEMORY[0x1CCA82810](1);
      switch(v6)
      {
        case 1:
          v10 = 1;
          goto LABEL_13;
        case 2:
          v10 = 2;
LABEL_13:
          MEMORY[0x1CCA82810](v10);
          OUTLINED_FUNCTION_33_4();
          sub_1C9063FBC();
          OUTLINED_FUNCTION_116_2();
          goto LABEL_14;
        case 3:
          v9 = 3;
          goto LABEL_11;
        default:
          v9 = 0;
LABEL_11:
          MEMORY[0x1CCA82810](v9);
          OUTLINED_FUNCTION_33_4();
LABEL_14:
          sub_1C9063FBC();
          break;
      }

      break;
    case 2:
      MEMORY[0x1CCA82810](2);
      OUTLINED_FUNCTION_33_4();
      break;
    case 3:
      MEMORY[0x1CCA82810](3);
      OUTLINED_FUNCTION_33_4();
      sub_1C9063FBC();
      OUTLINED_FUNCTION_116_2();
      sub_1C9063FBC();
      break;
    case 4:
      v7 = 4;
      goto LABEL_4;
    default:
      v7 = 0;
LABEL_4:
      MEMORY[0x1CCA82810](v7);
      OUTLINED_FUNCTION_33_4();
      sub_1C9063FBC();
      OUTLINED_FUNCTION_116_2();
      break;
  }

  OUTLINED_FUNCTION_163();

  return sub_1C9063FBC();
}

uint64_t RestrictionContext.ValueSetDefinition.Inner.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  RestrictionContext.ValueSetDefinition.Inner.hash(into:)();
  return sub_1C9064DBC();
}

void RestrictionContext.ValueSetDefinition.Inner.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  v102 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313580, &qword_1C906BBC0);
  OUTLINED_FUNCTION_11(v6);
  v106 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_97();
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313588, &qword_1C906BBC8);
  OUTLINED_FUNCTION_11(v104);
  v109 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_97();
  v112 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313590, &qword_1C906BBD0);
  OUTLINED_FUNCTION_11(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_97();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313598, &qword_1C906BBD8);
  OUTLINED_FUNCTION_11(v105);
  v103 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_86();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3135A0, &qword_1C906BBE0);
  OUTLINED_FUNCTION_11(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_110();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3135A8, &qword_1C906BBE8);
  OUTLINED_FUNCTION_11(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_142();
  v34 = v4[4];
  v113 = v4;
  OUTLINED_FUNCTION_217(v4, v4[3]);
  sub_1C8D39ECC();
  sub_1C9064DEC();
  if (v1)
  {
    goto LABEL_9;
  }

  v101 = v24;
  v114 = v30;
  v35 = sub_1C9064A9C();
  sub_1C8CB8914(v35, 0);
  if (v37 == v36 >> 1)
  {
LABEL_8:
    v50 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3();
    v52 = v51;
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v52 = &type metadata for RestrictionContext.ValueSetDefinition.Inner;
    sub_1C906499C();
    OUTLINED_FUNCTION_43_4();
    v54 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10_0(v50);
    (*(v55 + 104))(v52);
    swift_willThrow();
    swift_unknownObjectRelease();
    v56 = OUTLINED_FUNCTION_57_0();
    v57(v56, v28);
LABEL_9:
    v2 = v113;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_198();
    return;
  }

  OUTLINED_FUNCTION_119_0();
  v100 = v28;
  if (v41 < (v40 >> 1))
  {
    v99 = *(v39 + v38);
    v42 = sub_1C8CB891C(v38 + 1);
    v44 = v43;
    v46 = v45;
    swift_unknownObjectRelease();
    LOBYTE(v47) = v42;
    if (v44 == v46 >> 1)
    {
      v48 = v114;
      switch(v99)
      {
        case 1:
          OUTLINED_FUNCTION_86_0();
          sub_1C8D3A01C();
          OUTLINED_FUNCTION_34();
          OUTLINED_FUNCTION_159_1();
          OUTLINED_FUNCTION_174_0();
          sub_1C8D3A118();
          sub_1C9064A6C();
          v98 = v115;
          v110 = v117;
          v111 = v118;
          LOBYTE(v47) = v119;
          v71 = sub_1C9064A0C();
          v48 = v87;
          v107 = v116;
          v88 = v71;
          swift_unknownObjectRelease();
          v89 = *(v103 + 8);
          v90 = OUTLINED_FUNCTION_332();
          v91(v90);
          v92 = OUTLINED_FUNCTION_181_2();
          v93(v92);
          v83 = v88;
          v86 = 0;
          goto LABEL_15;
        case 2:
          OUTLINED_FUNCTION_171_2();
          sub_1C8D39FC8();
          OUTLINED_FUNCTION_34();
          OUTLINED_FUNCTION_159_1();
          OUTLINED_FUNCTION_174_0();
          v58 = sub_1C9064A0C();
          OUTLINED_FUNCTION_162_1(v58);
          v107 = v63;
          swift_unknownObjectRelease();
          v64 = OUTLINED_FUNCTION_68_0();
          v65(v64);
          v66 = OUTLINED_FUNCTION_20_4();
          v67(v66);
          v86 = 0;
          break;
        case 3:
          sub_1C8D39F74();
          OUTLINED_FUNCTION_34();
          OUTLINED_FUNCTION_159_1();
          OUTLINED_FUNCTION_174_0();
          v59 = OUTLINED_FUNCTION_99_1();
          OUTLINED_FUNCTION_162_1(v59);
          v107 = v68;
          OUTLINED_FUNCTION_86_0();
          v110 = OUTLINED_FUNCTION_99_1();
          v111 = v77;
          OUTLINED_FUNCTION_171_2();
          v78 = OUTLINED_FUNCTION_99_1();
          v108 = v94;
          v95 = v78;
          swift_unknownObjectRelease();
          (*(v109 + 8))(v112, v104);
          v96 = OUTLINED_FUNCTION_20_4();
          v97(v96);
          v83 = v108;
          v86 = v95 & 0xFFFFFFFFFFFFFF00;
          LOBYTE(v47) = v95;
LABEL_15:
          v84 = v110;
          v85 = v111;
          break;
        case 4:
          sub_1C8D39F20();
          OUTLINED_FUNCTION_34();
          OUTLINED_FUNCTION_159_1();
          OUTLINED_FUNCTION_99_1();
          OUTLINED_FUNCTION_174_0();
          v61 = v60;
          OUTLINED_FUNCTION_162_1(v62);
          OUTLINED_FUNCTION_86_0();
          v47 = (v106 + 8);
          v107 = v61;
          v48 = sub_1C9064A0C();
          v73 = v72;
          swift_unknownObjectRelease();
          v74 = *v47;
          v75 = OUTLINED_FUNCTION_332();
          v76(v75);
          (*(v114 + 8))(v0, v100);
          v84 = v48;
          v85 = v73;
          v86 = 0;
          break;
        default:
          sub_1C8D3A0C4();
          OUTLINED_FUNCTION_34();
          OUTLINED_FUNCTION_159_1();
          v49 = sub_1C9064A0C();
          v70 = v69;
          OUTLINED_FUNCTION_162_1(v49);
          v48 = v0;
          OUTLINED_FUNCTION_86_0();
          v107 = v70;
          v47 = sub_1C9064A0C();
          v80 = v79;
          swift_unknownObjectRelease();
          v81 = OUTLINED_FUNCTION_170_1();
          v82(v81, v101);
          (*(v114 + 8))(v0, v100);
          v84 = v47;
          v85 = v80;
          v86 = 0;
          v2 = v113;
          break;
      }

      *v102 = v98;
      *(v102 + 8) = v107;
      *(v102 + 16) = v84;
      *(v102 + 24) = v85;
      *(v102 + 32) = v86 | v47;
      *(v102 + 40) = v83;
      *(v102 + 48) = v48;
      *(v102 + 56) = v99;
      goto LABEL_10;
    }

    v28 = v100;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1C8D2EA94()
{
  sub_1C9064D7C();
  RestrictionContext.ValueSetDefinition.Inner.hash(into:)();
  return sub_1C9064DBC();
}

uint64_t RestrictionContext.ValueSetDefinition.inner.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 41);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_1C8D39E94(v7, &v6);
}

uint64_t RestrictionContext.ValueSetDefinition.bundleIdentifier.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_94();
}

__n128 RestrictionContext.ValueSetDefinition.init(inner:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *v4 = a1[2];
  *&v4[9] = *(a1 + 41);
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *v4;
  *(a2 + 32) = *v4;
  *(a2 + 48) = *&v4[16];
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  return result;
}

__n128 RestrictionContext.ValueSetDefinition.init(inner:bundleIdentifier:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v4;
  *(a4 + 32) = *(a1 + 32);
  result = *(a1 + 41);
  *(a4 + 41) = result;
  *(a4 + 64) = a2;
  *(a4 + 72) = a3;
  return result;
}

void static RestrictionContext.ValueSetDefinition.mock()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 56) = 2;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
}

uint64_t RestrictionContext.ValueSetDefinition.id.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  switch(*(v0 + 56))
  {
    case 1:
      v17 = *(v0 + 48);
      v20 = *v0;
      v24 = *(v0 + 8);
      v25 = *(v0 + 16);
      v26 = *(v0 + 24);
      sub_1C90648BC();
      MEMORY[0x1CCA81A90](46, 0xE100000000000000);
      v18 = OUTLINED_FUNCTION_145();
      MEMORY[0x1CCA81A90](v18);
      return 0;
    case 2:
      v19 = 0;
      if (v5)
      {
        v12 = *(v0 + 72);
      }

      else
      {
        v12 = 0xE900000000000045;
      }

      v13 = OUTLINED_FUNCTION_297();
      MEMORY[0x1CCA81A90](v13, v12);

      OUTLINED_FUNCTION_81();
      v7 = v2;
      v8 = v1;
      goto LABEL_12;
    case 3:
      v19 = *v0;
      v23 = *(v0 + 8);

      OUTLINED_FUNCTION_81();
      v14 = OUTLINED_FUNCTION_278();
      MEMORY[0x1CCA81A90](v14);
      MEMORY[0x1CCA81A90](35, 0xE100000000000000);

      v15 = OUTLINED_FUNCTION_287();
      MEMORY[0x1CCA81A90](v15);

      OUTLINED_FUNCTION_81();
      v7 = OUTLINED_FUNCTION_148();
      goto LABEL_12;
    case 4:
      v19 = *v0;
      v22 = *(v0 + 8);

      OUTLINED_FUNCTION_81();
      v9 = OUTLINED_FUNCTION_278();
      MEMORY[0x1CCA81A90](v9);
      MEMORY[0x1CCA81A90](35, 0xE100000000000000);
      if (v5)
      {
        v10 = v5;
      }

      else
      {
        v10 = 0xE900000000000045;
      }

      v11 = OUTLINED_FUNCTION_297();
      MEMORY[0x1CCA81A90](v11, v10);

      return v19;
    default:
      v19 = *v0;
      v21 = *(v0 + 8);

      OUTLINED_FUNCTION_81();
      v7 = OUTLINED_FUNCTION_278();
LABEL_12:
      MEMORY[0x1CCA81A90](v7, v8);
      return v19;
  }
}

uint64_t static RestrictionContext.ValueSetDefinition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v4;
  v17[0] = *(a1 + 32);
  *(v17 + 9) = *(a1 + 41);
  v6 = *(a1 + 64);
  v5 = *(a1 + 72);
  v7 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v7;
  v19[0] = *(a2 + 32);
  *(v19 + 9) = *(a2 + 41);
  v9 = *(a2 + 64);
  v8 = *(a2 + 72);
  sub_1C8D39E94(v16, v22);
  sub_1C8D39E94(v18, v22);
  static RestrictionContext.ValueSetDefinition.Inner.== infix(_:_:)();
  v11 = v10;
  v12 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v12;
  v21[0] = *(a2 + 32);
  *(v21 + 9) = *(a2 + 41);
  sub_1C8D3A16C(v20);
  v13 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v13;
  v23[0] = *(a1 + 32);
  *(v23 + 9) = *(a1 + 41);
  sub_1C8D3A16C(v22);
  if (v11)
  {
    if (v5)
    {
      if (v8)
      {
        if (v6 == v9 && v5 == v8)
        {
          return 1;
        }

        OUTLINED_FUNCTION_95_0();
        if (sub_1C9064C2C())
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1C8D2EF20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656E6E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C90C96C0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8D2EFEC(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x72656E6E69;
  }
}

uint64_t sub_1C8D2F02C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D2EF20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D2F054(uint64_t a1)
{
  v2 = sub_1C8D3A19C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D2F090(uint64_t a1)
{
  v2 = sub_1C8D3A19C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RestrictionContext.ValueSetDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3135B0, &qword_1C906BBF0);
  OUTLINED_FUNCTION_11(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_72();
  v11 = v0[1];
  v16 = *v0;
  v17 = v11;
  v18[0] = v0[2];
  *(v18 + 9) = *(v0 + 41);
  v19 = *(v0 + 8);
  v13 = *(v0 + 9);
  v12 = v4[4];
  OUTLINED_FUNCTION_217(v4, v4[3]);
  sub_1C8D39E94(&v16, v14);
  sub_1C8D3A19C();
  sub_1C9064E1C();
  v14[0] = v16;
  v14[1] = v17;
  v15[0] = v18[0];
  *(v15 + 9) = *(v18 + 9);
  sub_1C8D3A1F0();
  OUTLINED_FUNCTION_16_1();
  sub_1C9064B8C();
  OUTLINED_FUNCTION_76_0();
  if (!v1)
  {
    sub_1C9064ADC();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t RestrictionContext.ValueSetDefinition.hash(into:)()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  RestrictionContext.ValueSetDefinition.Inner.hash(into:)();
  if (v2)
  {
    OUTLINED_FUNCTION_284();
    OUTLINED_FUNCTION_145();

    return sub_1C9063FBC();
  }

  else
  {
    OUTLINED_FUNCTION_73_0();
    return sub_1C9064D9C();
  }
}

uint64_t RestrictionContext.ValueSetDefinition.hashValue.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  OUTLINED_FUNCTION_298();
  RestrictionContext.ValueSetDefinition.Inner.hash(into:)();
  sub_1C9064D9C();
  if (v2)
  {
    sub_1C9063FBC();
  }

  return sub_1C9064DBC();
}

void RestrictionContext.ValueSetDefinition.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v29 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3135B8, &qword_1C906BBF8);
  OUTLINED_FUNCTION_11(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - v10;
  v12 = v2[4];
  OUTLINED_FUNCTION_217(v2, v2[3]);
  sub_1C8D3A19C();
  sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v22 = 0;
    sub_1C8D3A244();
    OUTLINED_FUNCTION_107_1();
    sub_1C9064A6C();
    v26 = v23;
    v27 = v24;
    v28[0] = v25[0];
    *(v28 + 9) = *(v25 + 9);
    v21 = 1;
    v13 = sub_1C90649AC();
    v14 = *(v6 + 8);
    v16 = v15;
    v14(v11, v4);
    v17[0] = v26;
    v17[1] = v27;
    v17[2] = v28[0];
    v17[3] = v28[1];
    *&v17[4] = v13;
    *(&v17[4] + 1) = v16;
    memcpy(v29, v17, 0x50uLL);
    sub_1C8D3A298(v17, v18);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v18[0] = v26;
    v18[1] = v27;
    v18[2] = v28[0];
    v18[3] = v28[1];
    v19 = v13;
    v20 = v16;
    sub_1C8D3A2D0(v18);
  }

  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D2F5D4()
{
  sub_1C9064D7C();
  RestrictionContext.ValueSetDefinition.hash(into:)();
  return sub_1C9064DBC();
}

uint64_t sub_1C8D2F610@<X0>(uint64_t *a1@<X8>)
{
  result = RestrictionContext.ValueSetDefinition.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id RestrictionContext.NumberInclusiveRangeDefinition.lowerBound.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *RestrictionContext.NumberInclusiveRangeDefinition.upperBound.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t RestrictionContext.NumberInclusiveRangeDefinition.init(lowerBound:upperBound:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1C8D2F690()
{
  sub_1C906497C();
  OUTLINED_FUNCTION_45_2();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C8D2F6E0(char a1)
{
  if (a1)
  {
    return 0x756F427265707075;
  }

  else
  {
    return 0x756F427265776F6CLL;
  }
}

uint64_t sub_1C8D2FBB0(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_191_2();
  a2(v3);
  OUTLINED_FUNCTION_54_1();
  return sub_1C9064DBC();
}

uint64_t sub_1C8D2FC5C(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_191_2();
  a2(v3);
  OUTLINED_FUNCTION_54_1();
  return sub_1C9064DBC();
}

uint64_t sub_1C8D2FCA4()
{
  OUTLINED_FUNCTION_298();
  sub_1C9064D9C();
  return sub_1C9064DBC();
}

uint64_t sub_1C8D2FCE4()
{
  OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_190_1();
  return sub_1C9064DBC();
}

uint64_t sub_1C8D2FE28(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_298();
  a2(v5, a1);
  return sub_1C9064DBC();
}

uint64_t sub_1C8D2FE7C()
{
  OUTLINED_FUNCTION_298();
  v0 = OUTLINED_FUNCTION_297();
  MEMORY[0x1CCA82810](v0);
  return sub_1C9064DBC();
}

uint64_t sub_1C8D2FEF0()
{
  OUTLINED_FUNCTION_166_1();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_121();
      break;
    case 2:
      OUTLINED_FUNCTION_165_0();
      break;
    case 3:
      OUTLINED_FUNCTION_66_2();
      break;
    default:
      break;
  }

  sub_1C9063FBC();
}

uint64_t sub_1C8D2FF9C()
{
  sub_1C9063FBC();
}

uint64_t sub_1C8D30020()
{
  sub_1C9063FBC();
}

uint64_t sub_1C8D300D8()
{
  sub_1C9063FBC();
}

uint64_t sub_1C8D30160()
{
  sub_1C9063FBC();
}

uint64_t sub_1C8D301C0()
{
  sub_1C9063FBC();
}

uint64_t sub_1C8D3027C()
{
  sub_1C9063FBC();
}

uint64_t sub_1C8D302F4()
{
  sub_1C9063FBC();
}

uint64_t sub_1C8D303AC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_62_5();
}

uint64_t sub_1C8D303FC()
{
  sub_1C9063FBC();
}

uint64_t sub_1C8D304BC()
{
  sub_1C9063FBC();
}

uint64_t sub_1C8D305AC(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_121();
      break;
    case 3:
      OUTLINED_FUNCTION_66_2();
      break;
    default:
      break;
  }

  sub_1C9063FBC();
}

uint64_t sub_1C8D3066C(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_93_0();
  }

  sub_1C9063FBC();
}

uint64_t sub_1C8D306FC()
{
  sub_1C9063FBC();
}

uint64_t sub_1C8D30788()
{
  v0 = OUTLINED_FUNCTION_130();
  v1(v0);
  OUTLINED_FUNCTION_62_5();
}

uint64_t sub_1C8D307F4()
{
  OUTLINED_FUNCTION_192_0();
  sub_1C9063FBC();

  return sub_1C9064DBC();
}

uint64_t sub_1C8D30874()
{
  OUTLINED_FUNCTION_192_0();
  if (!v0)
  {
    OUTLINED_FUNCTION_93_0();
  }

  sub_1C9063FBC();

  return sub_1C9064DBC();
}

uint64_t sub_1C8D30970(uint64_t a1, char a2)
{
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](a2 & 1);
  return sub_1C9064DBC();
}

uint64_t sub_1C8D30D54(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_1C9064D7C();
  a3(v4);
  OUTLINED_FUNCTION_54_1();
  return sub_1C9064DBC();
}

uint64_t sub_1C8D30E84(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_1C9064D7C();
  a3(v4);
  OUTLINED_FUNCTION_54_1();
  return sub_1C9064DBC();
}

uint64_t sub_1C8D30ED0()
{
  OUTLINED_FUNCTION_192_0();
  sub_1C9064D9C();
  return sub_1C9064DBC();
}

uint64_t sub_1C8D30F0C()
{
  OUTLINED_FUNCTION_192_0();
  sub_1C9063FBC();

  return sub_1C9064DBC();
}

uint64_t sub_1C8D30F90(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_1C9064D7C();
  a3(v4);
  sub_1C9063FBC();

  return sub_1C9064DBC();
}

uint64_t sub_1C8D30FFC()
{
  sub_1C9064D7C();
  sub_1C9063FBC();

  return sub_1C9064DBC();
}

uint64_t sub_1C8D31088()
{
  sub_1C9064D7C();
  sub_1C9063FBC();

  return sub_1C9064DBC();
}

uint64_t sub_1C8D31120()
{
  sub_1C9064D7C();
  sub_1C9063FBC();

  return sub_1C9064DBC();
}

uint64_t sub_1C8D3119C()
{
  sub_1C9064D7C();
  sub_1C9063FBC();

  return sub_1C9064DBC();
}

uint64_t sub_1C8D31250(uint64_t a1, void (*a2)(__n128))
{
  sub_1C9064D7C();
  v3 = OUTLINED_FUNCTION_130();
  a2(v3);
  sub_1C9063FBC();

  return sub_1C9064DBC();
}

uint64_t sub_1C8D312B4()
{
  sub_1C9064D7C();
  v0 = OUTLINED_FUNCTION_297();
  MEMORY[0x1CCA82810](v0);
  return sub_1C9064DBC();
}

uint64_t sub_1C8D3130C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_1C9064D7C();
  a3(v6, a2);
  return sub_1C9064DBC();
}

uint64_t sub_1C8D31358()
{
  sub_1C9064D7C();
  OUTLINED_FUNCTION_190_1();
  return sub_1C9064DBC();
}

uint64_t sub_1C8D31394(uint64_t a1, unsigned __int8 a2)
{
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](a2);
  return sub_1C9064DBC();
}

uint64_t sub_1C8D313D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C8D2F690();
  *a2 = result;
  return result;
}

uint64_t sub_1C8D31408@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8D2F6E0(*v1);
  *a1 = result;
  a1[1] = 0xEA0000000000646ELL;
  return result;
}

uint64_t sub_1C8D31460@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8D2F690();
  *a1 = result;
  return result;
}

uint64_t sub_1C8D31494(uint64_t a1)
{
  v2 = sub_1C8D3A300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D314D0(uint64_t a1)
{
  v2 = sub_1C8D3A300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RestrictionContext.NumberInclusiveRangeDefinition.init(from:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3135C0, &qword_1C906BC00);
  OUTLINED_FUNCTION_11(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_56_0();
  sub_1C8D3A300();
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_196_1();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    OUTLINED_FUNCTION_42_0();
    sub_1C90649CC();
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      sub_1C8CB78AC(0, &qword_1EDA62D20, 0x1E696AD98);
      v12 = sub_1C906459C();
    }

    OUTLINED_FUNCTION_42_0();
    sub_1C90649CC();
    if (v13)
    {
      v14 = *(v7 + 8);
      v15 = OUTLINED_FUNCTION_203();
      v16(v15);
      v17 = 0;
    }

    else
    {
      sub_1C8CB78AC(0, &qword_1EDA62D20, 0x1E696AD98);
      v17 = sub_1C906459C();
      v18 = *(v7 + 8);
      v19 = OUTLINED_FUNCTION_203();
      v20(v19);
    }

    *a2 = v12;
    a2[1] = v17;
    v21 = v17;
    v22 = v12;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_164_0();
}

void RestrictionContext.NumberInclusiveRangeDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3135D0, &qword_1C906BC08);
  OUTLINED_FUNCTION_11(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_38();
  v10 = *v0;
  v19 = *(v0 + 8);
  v11 = v3[4];
  OUTLINED_FUNCTION_217(v3, v3[3]);
  sub_1C8D3A300();
  v12 = v10;
  OUTLINED_FUNCTION_132_0();
  sub_1C9064E1C();
  if (v10)
  {
    [v12 doubleValue];
    sub_1C9064B4C();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  if (!v19)
  {
    v16 = *(v6 + 8);
    v17 = OUTLINED_FUNCTION_148();
    v18(v17);
    goto LABEL_8;
  }

  v12 = v19;
  [v12 doubleValue];
  sub_1C9064B4C();
LABEL_6:
  v13 = *(v6 + 8);
  v14 = OUTLINED_FUNCTION_148();
  v15(v14);

LABEL_8:
  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

uint64_t static RestrictionContext.NumberInclusiveRangeDefinition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a1)
  {
    if (!v4)
    {
      return 0;
    }

    sub_1C8CB78AC(0, &qword_1EDA62D20, 0x1E696AD98);
    v6 = v4;
    v7 = v2;
    v8 = sub_1C90645BC();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v3)
  {
    if (v5)
    {
      sub_1C8CB78AC(0, &qword_1EDA62D20, 0x1E696AD98);
      v9 = v5;
      v10 = v3;
      v11 = sub_1C90645BC();

      if (v11)
      {
        return 1;
      }
    }
  }

  else if (!v5)
  {
    return 1;
  }

  return 0;
}

void RestrictionContext.NumberInclusiveRangeDefinition.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  if (!*v0)
  {
    OUTLINED_FUNCTION_73_0();
    sub_1C9064D9C();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_7:
    OUTLINED_FUNCTION_73_0();
    sub_1C9064D9C();
    return;
  }

  OUTLINED_FUNCTION_284();
  v3 = v2;
  OUTLINED_FUNCTION_45_2();
  sub_1C90645CC();

  if (!v1)
  {
    goto LABEL_7;
  }

LABEL_3:
  OUTLINED_FUNCTION_284();
  v4 = v1;
  sub_1C90645CC();
}

uint64_t RestrictionContext.NumberInclusiveRangeDefinition.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_298();
  sub_1C9064D9C();
  if (v2)
  {
    v3 = v2;
    sub_1C90645CC();
  }

  sub_1C9064D9C();
  if (v1)
  {
    v4 = v1;
    sub_1C90645CC();
  }

  return sub_1C9064DBC();
}

uint64_t sub_1C8D31B24()
{
  v2 = *v0;
  sub_1C9064D7C();
  RestrictionContext.NumberInclusiveRangeDefinition.hash(into:)();
  return sub_1C9064DBC();
}

ToolKit::RestrictionContext::PersonRepresentationDefinition_optional __swiftcall RestrictionContext.PersonRepresentationDefinition.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_37_5();
  sub_1C906497C();
  result.value = OUTLINED_FUNCTION_156_1();
  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t RestrictionContext.PersonRepresentationDefinition.rawValue.getter()
{
  result = 0x746361746E6F63;
  switch(*v0)
  {
    case 1:
      result = 0x656E6F6870;
      break;
    case 2:
      result = 0x6C69616D65;
      break;
    case 3:
      result = 0x50724F6C69616D65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8D31C50@<X0>(uint64_t *a1@<X8>)
{
  result = RestrictionContext.PersonRepresentationDefinition.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

ToolKit::RestrictionContext::DateRepresentationDefinition_optional __swiftcall RestrictionContext.DateRepresentationDefinition.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_37_5();
  sub_1C906497C();
  result.value = OUTLINED_FUNCTION_156_1();
  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t RestrictionContext.DateRepresentationDefinition.rawValue.getter()
{
  v1 = 1702125924;
  if (*v0 != 1)
  {
    v1 = 0x54646E4165746164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701669236;
  }
}

uint64_t sub_1C8D31E48@<X0>(uint64_t *a1@<X8>)
{
  result = RestrictionContext.DateRepresentationDefinition.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id RestrictionContext.MeasurementRepresentationDefinition.unit.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t RestrictionContext.MeasurementRepresentationDefinition.init(unit:unitAdjustForLocale:supportsNegativeNumbers:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 9) = a3;
  return result;
}

uint64_t sub_1C8D31F80()
{
  sub_1C906497C();
  OUTLINED_FUNCTION_45_2();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C8D31FC8(char a1)
{
  if (!a1)
  {
    return 1953066613;
  }

  if (a1 == 1)
  {
    return 0xD000000000000016;
  }

  return 0xD000000000000019;
}

uint64_t sub_1C8D32040@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C8D31F80();
  *a2 = result;
  return result;
}

uint64_t sub_1C8D32070@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8D31FC8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C8D320A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8D31F80();
  *a1 = result;
  return result;
}

uint64_t sub_1C8D320CC(uint64_t a1)
{
  v2 = sub_1C8D3A354();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D32108(uint64_t a1)
{
  v2 = sub_1C8D3A354();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RestrictionContext.MeasurementRepresentationDefinition.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3135D8, &qword_1C906BC10);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_56_0();
  sub_1C8D3A354();
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_196_1();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_42_0();
    v9 = sub_1C90649AC();
    if (v10)
    {
      v11 = v9;
      sub_1C8CB78AC(0, &qword_1EDA6DAA8, 0x1E696AFD0);
      v12 = sub_1C8D32334(v11);
    }

    else
    {
      v12 = 0;
    }

    OUTLINED_FUNCTION_42_0();
    v13 = sub_1C9064A1C();
    OUTLINED_FUNCTION_42_0();
    v14 = sub_1C9064A1C();
    v15 = OUTLINED_FUNCTION_59_2();
    v16(v15, v5);
    *v4 = v12;
    *(v4 + 8) = v13 & 1;
    *(v4 + 9) = v14 & 1;
    v17 = v12;
    v18 = OUTLINED_FUNCTION_45_2();
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

id sub_1C8D32334(void *a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1C9063EBC();
  OUTLINED_FUNCTION_156_1();
  v3 = [v2 initWithSymbol_];

  return v3;
}

void RestrictionContext.MeasurementRepresentationDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3135E8, &qword_1C906BC18);
  OUTLINED_FUNCTION_11(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_38();
  v10 = *v0;
  v20 = *(v0 + 8);
  v19 = *(v0 + 9);
  v11 = v3[4];
  OUTLINED_FUNCTION_217(v3, v3[3]);
  sub_1C8D3A354();
  OUTLINED_FUNCTION_132_0();
  sub_1C9064E1C();
  if (v10)
  {
    v12 = [v10 symbol];
    sub_1C9063EEC();

    sub_1C9064B2C();
    if (v1)
    {
      v13 = *(v6 + 8);
      v14 = OUTLINED_FUNCTION_112();
      v15(v14);

      goto LABEL_8;
    }
  }

  sub_1C9064B3C();
  if (!v1)
  {
    sub_1C9064B3C();
  }

  v16 = *(v6 + 8);
  v17 = OUTLINED_FUNCTION_112();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_198();
}

uint64_t static RestrictionContext.MeasurementRepresentationDefinition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  if (!*a1)
  {
    result = 0;
    if (v5)
    {
      return result;
    }

LABEL_6:
    if (((v3 ^ v6) & 1) == 0)
    {
      return v4 ^ v7 ^ 1u;
    }

    return result;
  }

  if (!v5)
  {
    return 0;
  }

  sub_1C8CB78AC(0, &qword_1EDA6DAA8, 0x1E696AFD0);
  v8 = v5;
  v9 = v2;
  v10 = sub_1C90645BC();

  result = 0;
  if (v10)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t RestrictionContext.MeasurementRepresentationDefinition.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  if (*v0)
  {
    OUTLINED_FUNCTION_284();
    v4 = v1;
    OUTLINED_FUNCTION_45_2();
    sub_1C90645CC();
  }

  else
  {
    OUTLINED_FUNCTION_73_0();
    sub_1C9064D9C();
  }

  sub_1C9064D9C();
  return sub_1C9064D9C();
}

uint64_t RestrictionContext.MeasurementRepresentationDefinition.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  OUTLINED_FUNCTION_298();
  sub_1C9064D9C();
  if (v1)
  {
    v4 = v1;
    sub_1C90645CC();
  }

  sub_1C9064D9C();
  sub_1C9064D9C();
  return sub_1C9064DBC();
}

uint64_t sub_1C8D32734()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  sub_1C9064D7C();
  RestrictionContext.MeasurementRepresentationDefinition.hash(into:)();
  return sub_1C9064DBC();
}

ToolKit::RestrictionContext::KeyboardTraitsDefinition::AutocorrectionType_optional __swiftcall RestrictionContext.KeyboardTraitsDefinition.AutocorrectionType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_37_5();
  sub_1C906497C();
  result.value = OUTLINED_FUNCTION_156_1();
  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t RestrictionContext.KeyboardTraitsDefinition.AutocorrectionType.rawValue.getter()
{
  v1 = 28271;
  if (*v0 != 1)
  {
    v1 = 6710895;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_1C8D3286C@<X0>(uint64_t *a1@<X8>)
{
  result = RestrictionContext.KeyboardTraitsDefinition.AutocorrectionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

ToolKit::RestrictionContext::KeyboardTraitsDefinition::KeyboardType_optional __swiftcall RestrictionContext.KeyboardTraitsDefinition.KeyboardType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_37_5();
  sub_1C906497C();
  result.value = OUTLINED_FUNCTION_156_1();
  v4 = 12;
  if (v2 < 0xC)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

unint64_t RestrictionContext.KeyboardTraitsDefinition.KeyboardType.rawValue.getter()
{
  result = 0x746C7561666564;
  switch(*v0)
  {
    case 1:
      result = 0x7061436969637361;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 5001813;
      break;
    case 4:
      result = 0x61507265626D756ELL;
      break;
    case 5:
      result = 0x646150656E6F6870;
      break;
    case 6:
      result = 0x6E6F6850656D616ELL;
      break;
    case 7:
      result = 0x6464416C69616D65;
      break;
    case 8:
      result = 0x506C616D69636564;
      break;
    case 9:
      result = 0x72657474697774;
      break;
    case 0xA:
      result = 0x6372616553626577;
      break;
    case 0xB:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C8D32B1C@<X0>(unint64_t *a1@<X8>)
{
  result = RestrictionContext.KeyboardTraitsDefinition.KeyboardType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

ToolKit::RestrictionContext::KeyboardTraitsDefinition::CapitalizationType_optional __swiftcall RestrictionContext.KeyboardTraitsDefinition.CapitalizationType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_37_5();
  sub_1C906497C();
  result.value = OUTLINED_FUNCTION_156_1();
  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t RestrictionContext.KeyboardTraitsDefinition.CapitalizationType.rawValue.getter()
{
  result = 1701736302;
  switch(*v0)
  {
    case 1:
      result = 0x7364726F77;
      break;
    case 2:
      result = 0x65636E65746E6573;
      break;
    case 3:
      result = 0x61726168436C6C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8D32D44@<X0>(uint64_t *a1@<X8>)
{
  result = RestrictionContext.KeyboardTraitsDefinition.CapitalizationType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void static RestrictionContext.KeyboardTraitsDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v6[1];
  v8 = v6[2];
  v9 = v6[3];
  v10 = v6[4];
  v11 = v6[5];
  if (sub_1C8E5A61C(*v0, *v6) & 1) != 0 && (sub_1C8E5A634(v1, v7))
  {
    sub_1C8E5A6FC(v2, v8);
  }

  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8D32F88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6472616F6279656BLL && a2 == 0xEC00000065707954;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C90C9C60 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001C90C9C80 == a2;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001C90C9CA0 == a2;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x80000001C90C9CC0 == a2;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000012 && 0x80000001C90C9CE0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C9064C2C();

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

unint64_t sub_1C8D33180(char a1)
{
  result = 0x6472616F6279656BLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8D33244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D32F88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D3326C(uint64_t a1)
{
  v2 = sub_1C8D3A3A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D332A8(uint64_t a1)
{
  v2 = sub_1C8D3A3A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void RestrictionContext.KeyboardTraitsDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3135F0, &qword_1C906BC20);
  OUTLINED_FUNCTION_11(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_72();
  v11 = *v0;
  v16 = v0[2];
  v17 = v0[1];
  v14 = v0[4];
  v15 = v0[3];
  v13 = v0[5];
  v12 = v4[4];
  OUTLINED_FUNCTION_217(v4, v4[3]);
  sub_1C8D3A3A8();
  sub_1C9064E1C();
  sub_1C8D3A3FC();
  OUTLINED_FUNCTION_16_1();
  sub_1C9064B8C();
  if (!v1)
  {
    OUTLINED_FUNCTION_141_0();
    sub_1C8D3A450();
    OUTLINED_FUNCTION_16_1();
    sub_1C9064B8C();
    sub_1C8D3A4A4();
    OUTLINED_FUNCTION_16_1();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_16_1();
    sub_1C9064B3C();
    OUTLINED_FUNCTION_16_1();
    sub_1C9064B3C();
    OUTLINED_FUNCTION_16_1();
    sub_1C9064B3C();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t RestrictionContext.KeyboardTraitsDefinition.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = *v0;
  RestrictionContext.KeyboardTraitsDefinition.KeyboardType.rawValue.getter();
  OUTLINED_FUNCTION_62_5();

  sub_1C9063FBC();

  sub_1C8D301C0();
  sub_1C9064D9C();
  sub_1C9064D9C();
  return sub_1C9064D9C();
}

uint64_t RestrictionContext.KeyboardTraitsDefinition.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  OUTLINED_FUNCTION_191_2();
  RestrictionContext.KeyboardTraitsDefinition.hash(into:)();
  return sub_1C9064DBC();
}

void RestrictionContext.KeyboardTraitsDefinition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16)
{
  OUTLINED_FUNCTION_196();
  v18 = v17;
  v20 = v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313618, &unk_1C906BC28);
  OUTLINED_FUNCTION_11(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_56_0();
  sub_1C8D3A3A8();
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_196_1();
  if (!v16)
  {
    sub_1C8D3A4F8();
    OUTLINED_FUNCTION_41_4();
    OUTLINED_FUNCTION_58_2();
    sub_1C9064A6C();
    OUTLINED_FUNCTION_141_0();
    sub_1C8D3A54C();
    OUTLINED_FUNCTION_41_4();
    OUTLINED_FUNCTION_58_2();
    sub_1C9064A6C();
    sub_1C8D3A5A0();
    OUTLINED_FUNCTION_41_4();
    OUTLINED_FUNCTION_58_2();
    sub_1C9064A6C();
    OUTLINED_FUNCTION_58_2();
    v29 = sub_1C9064A1C();
    OUTLINED_FUNCTION_58_2();
    v25 = sub_1C9064A1C();
    OUTLINED_FUNCTION_58_2();
    v26 = sub_1C9064A1C();
    v27 = OUTLINED_FUNCTION_59_2();
    v28(v27, v21);
    *v20 = a16;
    v20[1] = a14;
    v20[2] = a12;
    v20[3] = v29 & 1;
    v20[4] = v25 & 1;
    v20[5] = v26 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D33894()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  sub_1C9064D7C();
  RestrictionContext.KeyboardTraitsDefinition.hash(into:)();
  return sub_1C9064DBC();
}

void RestrictionContext.id.getter()
{
  OUTLINED_FUNCTION_164();
  v32 = sub_1C9063C4C();
  v0 = OUTLINED_FUNCTION_11(v32);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_354(v34);
  v8 = sub_1C8CA638C(v34);
  v9 = sub_1C8CA62B8(v34);
  switch(v8)
  {
    case 1:
      v10 = *v9;
      v11 = v9[1];
      v33[0] = 91;
      v33[1] = 0xE100000000000000;
      v12 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313638, &qword_1C906BC38);
      v13 = sub_1C9063F4C();
      MEMORY[0x1CCA81A90](v13);

      MEMORY[0x1CCA81A90](8236, 0xE200000000000000);
      v33[10] = v11;
      v14 = v11;
      v15 = sub_1C9063F4C();
      MEMORY[0x1CCA81A90](v15);

      MEMORY[0x1CCA81A90](93, 0xE100000000000000);
      break;
    case 2:
      v16 = *v9;
      v17 = *(*v9 + 2);
      v18 = MEMORY[0x1E69E7CC0];
      if (v17)
      {
        v33[0] = MEMORY[0x1E69E7CC0];
        sub_1C8CA6480();
        v18 = v33[0];
        v31 = *(v2 + 16);
        v19 = *(v2 + 80);
        OUTLINED_FUNCTION_139();
        v21 = &v16[v20];
        v30 = *(v22 + 56);
        v23 = (v22 - 8);
        do
        {
          v31(v7, v21, v32);
          v24 = sub_1C9063C1C();
          v26 = v25;
          (*v23)(v7, v32);
          v33[0] = v18;
          v28 = *(v18 + 16);
          v27 = *(v18 + 24);
          if (v28 >= v27 >> 1)
          {
            OUTLINED_FUNCTION_176(v27);
            sub_1C8CA6480();
            v18 = v33[0];
          }

          *(v18 + 16) = v28 + 1;
          v29 = v18 + 16 * v28;
          *(v29 + 32) = v24;
          *(v29 + 40) = v26;
          v21 += v30;
          --v17;
        }

        while (v17);
      }

      v33[0] = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
      sub_1C8D3A5F4();
      sub_1C9063E9C();

      break;
    case 3:
    case 4:
    case 5:
    case 6:
      break;
    default:
      memcpy(v33, v9, 0x50uLL);
      RestrictionContext.ValueSetDefinition.id.getter();
      break;
  }

  OUTLINED_FUNCTION_276();
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8D33CBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xE900000000000073)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C8D33D94(char a1)
{
  if (a1)
  {
    return 0x6574616C706D6574;
  }

  else
  {
    return 0x6974696E69666564;
  }
}

uint64_t sub_1C8D33DD4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313898, &qword_1C906F3D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  memcpy(__dst, v1, sizeof(__dst));
  v9 = *(v1 + 96);
  v21 = *(v1 + 80);
  v22 = v9;
  v23 = *(v1 + 112);
  v24 = *(v1 + 128);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D3A298(__dst, v19);
  sub_1C8D3DC70();
  sub_1C9064E1C();
  memcpy(v19, __dst, sizeof(v19));
  v26 = 0;
  sub_1C8D3DCC4();
  sub_1C9064B8C();
  memcpy(v18, v19, sizeof(v18));
  sub_1C8D3A2D0(v18);
  if (!v2)
  {
    v14 = v21;
    v15 = v22;
    v16 = v23;
    v17 = v24;
    v25 = 1;
    sub_1C8D3A7FC(&v21, v12);
    sub_1C8D3DD18();
    sub_1C9064B8C();
    v12[0] = v14;
    v12[1] = v15;
    v12[2] = v16;
    v13 = v17;
    sub_1C8D3ABC4(v12);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1C8D3402C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3138A0, &unk_1C906F3D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-v7 - 8];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8D3DC70();
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v22;
  v19 = 0;
  sub_1C8D3DD6C();
  sub_1C9064A6C();
  memcpy(__dst, v20, 0x50uLL);
  v14[143] = 1;
  sub_1C8D3DDC0();
  sub_1C9064A6C();
  (*(v5 + 8))(v8, v4);
  __dst[5] = v15;
  __dst[6] = v16;
  __dst[7] = v17;
  *&__dst[8] = v18;
  memcpy(v13, __dst, sizeof(v13));
  memcpy(v10, __dst, 0x88uLL);
  sub_1C8D3DE14(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(a1);
  memcpy(v14, __dst, 0x88uLL);
  return sub_1C8D3A8AC(v14);
}

uint64_t sub_1C8D342BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D33CBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D342E4(uint64_t a1)
{
  v2 = sub_1C8D3DC70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D34320(uint64_t a1)
{
  v2 = sub_1C8D3DC70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D34398(uint64_t a1)
{
  v2 = sub_1C8CA6338();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D343D4(uint64_t a1)
{
  v2 = sub_1C8CA6338();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static RestrictionContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_354(v258);
  memcpy(__dst, v0, sizeof(__dst));
  OUTLINED_FUNCTION_354(v260);
  memcpy(v261, v0, sizeof(v261));
  OUTLINED_FUNCTION_354(v262);
  switch(sub_1C8CA638C(v262))
  {
    case 1u:
      v72 = sub_1C8CA62B8(v262);
      v73 = *v72;
      v74 = v72[1];
      OUTLINED_FUNCTION_53_4(v72, v75, v76, v77, v78, v79, v80, v81, *&v224[0], *(&v224[0] + 1), *&v224[1], *(&v224[1] + 1), *&v224[2], *(&v224[2] + 1), *&v224[3], *(&v224[3] + 1), *&v224[4], *(&v224[4] + 1), *&v225[0], *(&v225[0] + 1), *&v225[1], *(&v225[1] + 1), *&v225[2], *(&v225[2] + 1), *&v225[3], *(&v225[3] + 1), *&v225[4], *(&v225[4] + 1), v226, v227, v228, v229, v230, v231, v232, v233, v234, *(&v234 + 1), v235, *(&v235 + 1), v236, *(&v236 + 1), v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249);
      v82 = sub_1C8CA638C(&v249);
      if (v82 == 1)
      {
        v90 = sub_1C8CA62B8(&v249);
        v98 = OUTLINED_FUNCTION_153_2(v90, v91, v92, v93, v94, v95, v96, v97, *v90, v90[1], *&v224[1], *(&v224[1] + 1), *&v224[2], *(&v224[2] + 1), *&v224[3], *(&v224[3] + 1), *&v224[4], *(&v224[4] + 1), v73, v74, *&v225[1], *(&v225[1] + 1), *&v225[2], *(&v225[2] + 1), *&v225[3], *(&v225[3] + 1), *&v225[4], *(&v225[4] + 1), v226, v227, v228, v229, v230, v231, v232, v233, v234);
        v106 = OUTLINED_FUNCTION_154_0(v98, v99, v100, v101, v102, v103, v104, v105, *&v224[0], *(&v224[0] + 1), *&v224[1], *(&v224[1] + 1), *&v224[2], *(&v224[2] + 1), *&v224[3], *(&v224[3] + 1), *&v224[4], *(&v224[4] + 1), *&v225[0], *(&v225[0] + 1), *&v225[1], *(&v225[1] + 1), *&v225[2], *(&v225[2] + 1), *&v225[3], *(&v225[3] + 1), *&v225[4], *(&v225[4] + 1), v226, v227, v228, v229, v230, v231, v232, v233, v234, *(&v234 + 1), v235, *(&v235 + 1), v236, *(&v236 + 1), v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257);
        v114 = OUTLINED_FUNCTION_153_2(v106, v107, v108, v109, v110, v111, v112, v113, *&v224[0], *(&v224[0] + 1), *&v224[1], *(&v224[1] + 1), *&v224[2], *(&v224[2] + 1), *&v224[3], *(&v224[3] + 1), *&v224[4], *(&v224[4] + 1), *&v225[0], *(&v225[0] + 1), *&v225[1], *(&v225[1] + 1), *&v225[2], *(&v225[2] + 1), *&v225[3], *(&v225[3] + 1), *&v225[4], *(&v225[4] + 1), v226, v227, v228, v229, v230, v231, v232, v233, v234);
        OUTLINED_FUNCTION_154_0(v114, v115, v116, v117, v118, v119, v120, v121, *&v224[0], *(&v224[0] + 1), *&v224[1], *(&v224[1] + 1), *&v224[2], *(&v224[2] + 1), *&v224[3], *(&v224[3] + 1), *&v224[4], *(&v224[4] + 1), *&v225[0], *(&v225[0] + 1), *&v225[1], *(&v225[1] + 1), *&v225[2], *(&v225[2] + 1), *&v225[3], *(&v225[3] + 1), *&v225[4], *(&v225[4] + 1), v226, v227, v228, v229, v230, v231, v232, v233, v234, *(&v234 + 1), v235, *(&v235 + 1), v236, *(&v236 + 1), v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257);
        v122 = static RestrictionContext.NumberInclusiveRangeDefinition.== infix(_:_:)(v225, v224);
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_101_1(v82, v83, v84, v85, v86, v87, v88, v89, *&v224[0], *(&v224[0] + 1), *&v224[1], *(&v224[1] + 1), *&v224[2], *(&v224[2] + 1), *&v224[3], *(&v224[3] + 1), *&v224[4], *(&v224[4] + 1), *&v225[0], *(&v225[0] + 1), *&v225[1], *(&v225[1] + 1), *&v225[2], *(&v225[2] + 1), *&v225[3], *(&v225[3] + 1), *&v225[4], *(&v225[4] + 1), v226, v227, v228, v229, v230, v231, v232, v233, v234, *(&v234 + 1), v235, *(&v235 + 1), v236, *(&v236 + 1), v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257);
      v199 = sub_1C8CA62B8(&v234);
      v200 = *v199;
      v201 = *(v199 + 8);
      v202 = v200;
      goto LABEL_21;
    case 2u:
      v28 = sub_1C8CA62B8(v262);
      v29 = *v28;
      OUTLINED_FUNCTION_53_4(v28, v30, v31, v32, v33, v34, v35, v36, *&v224[0], *(&v224[0] + 1), *&v224[1], *(&v224[1] + 1), *&v224[2], *(&v224[2] + 1), *&v224[3], *(&v224[3] + 1), *&v224[4], *(&v224[4] + 1), *&v225[0], *(&v225[0] + 1), *&v225[1], *(&v225[1] + 1), *&v225[2], *(&v225[2] + 1), *&v225[3], *(&v225[3] + 1), *&v225[4], *(&v225[4] + 1), v226, v227, v228, v229, v230, v231, v232, v233, v234, *(&v234 + 1), v235, *(&v235 + 1), v236, *(&v236 + 1), v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249);
      v37 = sub_1C8CA638C(&v249);
      if (v37 != 2)
      {
        OUTLINED_FUNCTION_101_1(v37, v38, v39, v40, v41, v42, v43, v44, *&v224[0], *(&v224[0] + 1), *&v224[1], *(&v224[1] + 1), *&v224[2], *(&v224[2] + 1), *&v224[3], *(&v224[3] + 1), *&v224[4], *(&v224[4] + 1), *&v225[0], *(&v225[0] + 1), *&v225[1], *(&v225[1] + 1), *&v225[2], *(&v225[2] + 1), *&v225[3], *(&v225[3] + 1), *&v225[4], *(&v225[4] + 1), v226, v227, v228, v229, v230, v231, v232, v233, v234, *(&v234 + 1), v235, *(&v235 + 1), v236, *(&v236 + 1), v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257);
        v198 = *sub_1C8CA62B8(&v234);

        goto LABEL_21;
      }

      v45 = sub_1C8CA62B8(&v249);
      v46 = *v45;
      v54 = OUTLINED_FUNCTION_153_2(v45, v47, v48, v49, v50, v51, v52, v53, *&v224[0], *(&v224[0] + 1), *&v224[1], *(&v224[1] + 1), *&v224[2], *(&v224[2] + 1), *&v224[3], *(&v224[3] + 1), *&v224[4], *(&v224[4] + 1), *&v225[0], *(&v225[0] + 1), *&v225[1], *(&v225[1] + 1), *&v225[2], *(&v225[2] + 1), *&v225[3], *(&v225[3] + 1), *&v225[4], *(&v225[4] + 1), v226, v227, v228, v229, v230, v231, v232, v233, v234);
      OUTLINED_FUNCTION_154_0(v54, v55, v56, v57, v58, v59, v60, v61, *&v224[0], *(&v224[0] + 1), *&v224[1], *(&v224[1] + 1), *&v224[2], *(&v224[2] + 1), *&v224[3], *(&v224[3] + 1), *&v224[4], *(&v224[4] + 1), *&v225[0], *(&v225[0] + 1), *&v225[1], *(&v225[1] + 1), *&v225[2], *(&v225[2] + 1), *&v225[3], *(&v225[3] + 1), *&v225[4], *(&v225[4] + 1), v226, v227, v228, v229, v230, v231, v232, v233, v234, *(&v234 + 1), v235, *(&v235 + 1), v236, *(&v236 + 1), v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257);
      OUTLINED_FUNCTION_94();
      sub_1C8CEAF48();
LABEL_17:
      v177 = v27;
      sub_1C8D3F0C4(v260, &qword_1EC313698, &qword_1C906BC58);
      return v177 & 1;
    case 3u:
      v62 = sub_1C8CA62B8(v262);
      v63 = *v62;
      OUTLINED_FUNCTION_53_4(v62, v64, v65, v66, v67, v68, v69, v70, *&v224[0], *(&v224[0] + 1), *&v224[1], *(&v224[1] + 1), *&v224[2], *(&v224[2] + 1), *&v224[3], *(&v224[3] + 1), *&v224[4], *(&v224[4] + 1), *&v225[0], *(&v225[0] + 1), *&v225[1], *(&v225[1] + 1), *&v225[2], *(&v225[2] + 1), *&v225[3], *(&v225[3] + 1), *&v225[4], *(&v225[4] + 1), v226, v227, v228, v229, v230, v231, v232, v233, v234, *(&v234 + 1), v235, *(&v235 + 1), v236, *(&v236 + 1), v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249);
      if (sub_1C8CA638C(&v249) != 3)
      {
        goto LABEL_21;
      }

      v71 = sub_1C8CA62B8(&v249);
      v27 = sub_1C8E5A288(v63, *v71);
      goto LABEL_17;
    case 4u:
      v17 = sub_1C8CA62B8(v262);
      v18 = *v17;
      OUTLINED_FUNCTION_53_4(v17, v19, v20, v21, v22, v23, v24, v25, *&v224[0], *(&v224[0] + 1), *&v224[1], *(&v224[1] + 1), *&v224[2], *(&v224[2] + 1), *&v224[3], *(&v224[3] + 1), *&v224[4], *(&v224[4] + 1), *&v225[0], *(&v225[0] + 1), *&v225[1], *(&v225[1] + 1), *&v225[2], *(&v225[2] + 1), *&v225[3], *(&v225[3] + 1), *&v225[4], *(&v225[4] + 1), v226, v227, v228, v229, v230, v231, v232, v233, v234, *(&v234 + 1), v235, *(&v235 + 1), v236, *(&v236 + 1), v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249);
      if (sub_1C8CA638C(&v249) != 4)
      {
        goto LABEL_21;
      }

      v26 = sub_1C8CA62B8(&v249);
      v27 = sub_1C8E5A3C8(v18, *v26);
      goto LABEL_17;
    case 5u:
      v123 = sub_1C8CA62B8(v262);
      v124 = *v123;
      v125 = *(v123 + 8);
      v126 = *(v123 + 9);
      OUTLINED_FUNCTION_53_4(v123, v127, v128, v129, v130, v131, v132, v133, *&v224[0], *(&v224[0] + 1), *&v224[1], *(&v224[1] + 1), *&v224[2], *(&v224[2] + 1), *&v224[3], *(&v224[3] + 1), *&v224[4], *(&v224[4] + 1), *&v225[0], *(&v225[0] + 1), *&v225[1], *(&v225[1] + 1), *&v225[2], *(&v225[2] + 1), *&v225[3], *(&v225[3] + 1), *&v225[4], *(&v225[4] + 1), v226, v227, v228, v229, v230, v231, v232, v233, v234, *(&v234 + 1), v235, *(&v235 + 1), v236, *(&v236 + 1), v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249);
      v134 = sub_1C8CA638C(&v249);
      if (v134 != 5)
      {
        OUTLINED_FUNCTION_101_1(v134, v135, v136, v137, v138, v139, v140, v141, *&v224[0], *(&v224[0] + 1), *&v224[1], *(&v224[1] + 1), *&v224[2], *(&v224[2] + 1), *&v224[3], *(&v224[3] + 1), *&v224[4], *(&v224[4] + 1), *&v225[0], *(&v225[0] + 1), *&v225[1], *(&v225[1] + 1), *&v225[2], *(&v225[2] + 1), *&v225[3], *(&v225[3] + 1), *&v225[4], *(&v225[4] + 1), v226, v227, v228, v229, v230, v231, v232, v233, v234, *(&v234 + 1), v235, *(&v235 + 1), v236, *(&v236 + 1), v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257);
        v203 = *sub_1C8CA62B8(&v234);
        goto LABEL_21;
      }

      v142 = sub_1C8CA62B8(&v249);
      v143 = *v142;
      v144 = *(v142 + 8);
      v145 = *(v142 + 9);
      BYTE8(v225[0]) = v125;
      BYTE9(v225[0]) = v126;
      BYTE8(v224[0]) = v144;
      BYTE9(v224[0]) = v145;
      v153 = OUTLINED_FUNCTION_153_2(v142, v146, v147, v148, v149, v150, v151, v152, v143, *(&v224[0] + 1), *&v224[1], *(&v224[1] + 1), *&v224[2], *(&v224[2] + 1), *&v224[3], *(&v224[3] + 1), *&v224[4], *(&v224[4] + 1), v124, *(&v225[0] + 1), *&v225[1], *(&v225[1] + 1), *&v225[2], *(&v225[2] + 1), *&v225[3], *(&v225[3] + 1), *&v225[4], *(&v225[4] + 1), v226, v227, v228, v229, v230, v231, v232, v233, v234);
      v161 = OUTLINED_FUNCTION_154_0(v153, v154, v155, v156, v157, v158, v159, v160, *&v224[0], *(&v224[0] + 1), *&v224[1], *(&v224[1] + 1), *&v224[2], *(&v224[2] + 1), *&v224[3], *(&v224[3] + 1), *&v224[4], *(&v224[4] + 1), *&v225[0], *(&v225[0] + 1), *&v225[1], *(&v225[1] + 1), *&v225[2], *(&v225[2] + 1), *&v225[3], *(&v225[3] + 1), *&v225[4], *(&v225[4] + 1), v226, v227, v228, v229, v230, v231, v232, v233, v234, *(&v234 + 1), v235, *(&v235 + 1), v236, *(&v236 + 1), v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257);
      v169 = OUTLINED_FUNCTION_153_2(v161, v162, v163, v164, v165, v166, v167, v168, *&v224[0], *(&v224[0] + 1), *&v224[1], *(&v224[1] + 1), *&v224[2], *(&v224[2] + 1), *&v224[3], *(&v224[3] + 1), *&v224[4], *(&v224[4] + 1), *&v225[0], *(&v225[0] + 1), *&v225[1], *(&v225[1] + 1), *&v225[2], *(&v225[2] + 1), *&v225[3], *(&v225[3] + 1), *&v225[4], *(&v225[4] + 1), v226, v227, v228, v229, v230, v231, v232, v233, v234);
      OUTLINED_FUNCTION_154_0(v169, v170, v171, v172, v173, v174, v175, v176, *&v224[0], *(&v224[0] + 1), *&v224[1], *(&v224[1] + 1), *&v224[2], *(&v224[2] + 1), *&v224[3], *(&v224[3] + 1), *&v224[4], *(&v224[4] + 1), *&v225[0], *(&v225[0] + 1), *&v225[1], *(&v225[1] + 1), *&v225[2], *(&v225[2] + 1), *&v225[3], *(&v225[3] + 1), *&v225[4], *(&v225[4] + 1), v226, v227, v228, v229, v230, v231, v232, v233, v234, *(&v234 + 1), v235, *(&v235 + 1), v236, *(&v236 + 1), v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257);
      v122 = static RestrictionContext.MeasurementRepresentationDefinition.== infix(_:_:)(v225, v224);
LABEL_14:
      v177 = v122;
      sub_1C8D3F0C4(v260, &qword_1EC313698, &qword_1C906BC58);
      sub_1C8D073A0(__dst);
      sub_1C8D073A0(v258);
      return v177 & 1;
    case 6u:
      v178 = sub_1C8CA62B8(v262);
      v179 = *v178;
      v180 = v178[1];
      v181 = v178[2];
      v182 = v178[3];
      v183 = v178[4];
      v184 = v178[5];
      OUTLINED_FUNCTION_53_4(v178, v185, v186, v187, v188, v189, v190, v191, *&v224[0], *(&v224[0] + 1), *&v224[1], *(&v224[1] + 1), *&v224[2], *(&v224[2] + 1), *&v224[3], *(&v224[3] + 1), *&v224[4], *(&v224[4] + 1), *&v225[0], *(&v225[0] + 1), *&v225[1], *(&v225[1] + 1), *&v225[2], *(&v225[2] + 1), *&v225[3], *(&v225[3] + 1), *&v225[4], *(&v225[4] + 1), v226, v227, v228, v229, v230, v231, v232, v233, v234, *(&v234 + 1), v235, *(&v235 + 1), v236, *(&v236 + 1), v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249);
      if (sub_1C8CA638C(&v249) != 6)
      {
        goto LABEL_21;
      }

      v192 = sub_1C8CA62B8(&v249);
      OUTLINED_FUNCTION_128_1(v192);
      LOBYTE(v234) = v179;
      BYTE1(v234) = v180;
      BYTE2(v234) = v181;
      BYTE3(v234) = v182;
      BYTE4(v234) = v183;
      BYTE5(v234) = v184;
      LOWORD(v225[0]) = v193;
      BYTE2(v225[0]) = v194;
      BYTE3(v225[0]) = v195;
      BYTE4(v225[0]) = v196;
      BYTE5(v225[0]) = v197;
      static RestrictionContext.KeyboardTraitsDefinition.== infix(_:_:)();
      goto LABEL_17;
    default:
      v1 = sub_1C8CA62B8(v262);
      OUTLINED_FUNCTION_53_4(v1, v2, v3, v4, v5, v6, v7, v8, *&v224[0], *(&v224[0] + 1), *&v224[1], *(&v224[1] + 1), *&v224[2], *(&v224[2] + 1), *&v224[3], *(&v224[3] + 1), *&v224[4], *(&v224[4] + 1), *&v225[0], *(&v225[0] + 1), *&v225[1], *(&v225[1] + 1), *&v225[2], *(&v225[2] + 1), *&v225[3], *(&v225[3] + 1), *&v225[4], *(&v225[4] + 1), v226, v227, v228, v229, v230, v231, v232, v233, v234, *(&v234 + 1), v235, *(&v235 + 1), v236, *(&v236 + 1), v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249);
      v9 = sub_1C8CA638C(&v249);
      if (v9)
      {
        OUTLINED_FUNCTION_101_1(v9, v10, v11, v12, v13, v14, v15, v16, *&v224[0], *(&v224[0] + 1), *&v224[1], *(&v224[1] + 1), *&v224[2], *(&v224[2] + 1), *&v224[3], *(&v224[3] + 1), *&v224[4], *(&v224[4] + 1), *&v225[0], *(&v225[0] + 1), *&v225[1], *(&v225[1] + 1), *&v225[2], *(&v225[2] + 1), *&v225[3], *(&v225[3] + 1), *&v225[4], *(&v225[4] + 1), v226, v227, v228, v229, v230, v231, v232, v233, v234, *(&v234 + 1), v235, *(&v235 + 1), v236, *(&v236 + 1), v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257);
        sub_1C8CA62B8(&v234);
        sub_1C8D3F068();
LABEL_21:
        sub_1C8D073F4(__dst, &v249);
        goto LABEL_22;
      }

      v205 = sub_1C8CA62B8(&v249);
      memcpy(v225, v1, sizeof(v225));
      v206 = memcpy(v224, v205, sizeof(v224));
      v214 = OUTLINED_FUNCTION_153_2(v206, v207, v208, v209, v210, v211, v212, v213, *&v224[0], *(&v224[0] + 1), *&v224[1], *(&v224[1] + 1), *&v224[2], *(&v224[2] + 1), *&v224[3], *(&v224[3] + 1), *&v224[4], *(&v224[4] + 1), *&v225[0], *(&v225[0] + 1), *&v225[1], *(&v225[1] + 1), *&v225[2], *(&v225[2] + 1), *&v225[3], *(&v225[3] + 1), *&v225[4], *(&v225[4] + 1), v226, v227, v228, v229, v230, v231, v232, v233, v234);
      OUTLINED_FUNCTION_154_0(v214, v215, v216, v217, v218, v219, v220, v221, *&v224[0], *(&v224[0] + 1), *&v224[1], *(&v224[1] + 1), *&v224[2], *(&v224[2] + 1), *&v224[3], *(&v224[3] + 1), *&v224[4], *(&v224[4] + 1), *&v225[0], *(&v225[0] + 1), *&v225[1], *(&v225[1] + 1), *&v225[2], *(&v225[2] + 1), *&v225[3], *(&v225[3] + 1), *&v225[4], *(&v225[4] + 1), v226, v227, v228, v229, v230, v231, v232, v233, v234, *(&v234 + 1), v235, *(&v235 + 1), v236, *(&v236 + 1), v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257);
      sub_1C8D3A7FC(v1 + 80, &v234);
      sub_1C8D3A7FC(v205 + 80, &v234);
      if ((static RestrictionContext.ValueSetDefinition.== infix(_:_:)(v225, v224) & 1) == 0)
      {
        sub_1C8D3ABC4(v205 + 80);
        sub_1C8D3ABC4(v1 + 80);
LABEL_22:
        sub_1C8D3F0C4(v260, &qword_1EC313698, &qword_1C906BC58);
        v177 = 0;
        return v177 & 1;
      }

      v222 = *(v1 + 96);
      v234 = *(v1 + 80);
      v235 = v222;
      v236 = *(v1 + 112);
      v237 = *(v1 + 128);
      v223 = *(v205 + 96);
      v225[0] = *(v205 + 80);
      v225[1] = v223;
      v225[2] = *(v205 + 112);
      *&v225[3] = *(v205 + 128);
      v177 = static QueryDefinition.PredicateTemplates.== infix(_:_:)(&v234, v225);
      sub_1C8D3F0C4(v260, &qword_1EC313698, &qword_1C906BC58);
      sub_1C8D3ABC4(v205 + 80);
      sub_1C8D3ABC4(v1 + 80);
      return v177 & 1;
  }
}

void RestrictionContext.hash(into:)(void *a1)
{
  OUTLINED_FUNCTION_354(v32);
  OUTLINED_FUNCTION_354(v33);
  v2 = sub_1C8CA638C(v33);
  v3 = sub_1C8CA62B8(v33);
  v4 = v3;
  switch(v2)
  {
    case 1:
      v13 = *v3;
      v12 = *(v3 + 1);
      MEMORY[0x1CCA82810](1);
      if (!v13)
      {
        OUTLINED_FUNCTION_73_0();
        sub_1C9064D9C();
        if (v12)
        {
          goto LABEL_9;
        }

LABEL_16:
        OUTLINED_FUNCTION_73_0();
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_284();
      v14 = v13;
      OUTLINED_FUNCTION_45_2();
      sub_1C90645CC();

      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_9:
      OUTLINED_FUNCTION_284();
      v15 = v12;
      OUTLINED_FUNCTION_45_2();
      sub_1C90645CC();

      return;
    case 2:
      v8 = *v3;
      MEMORY[0x1CCA82810](2);
      v9 = OUTLINED_FUNCTION_145();
      sub_1C8D03724(v9, v10);
      return;
    case 3:
      v11 = *v3;
      MEMORY[0x1CCA82810](3);
      sub_1C8D30020();
      return;
    case 4:
      v7 = *v3;
      MEMORY[0x1CCA82810](4);
      sub_1C9063FBC();

      return;
    case 5:
      v16 = *v3;
      v17 = v3[8];
      v18 = v3[9];
      MEMORY[0x1CCA82810](5);
      if (v16)
      {
        OUTLINED_FUNCTION_284();
        v19 = v16;
        OUTLINED_FUNCTION_45_2();
        sub_1C90645CC();
        sub_1C8D073A0(v32);
      }

      else
      {
        OUTLINED_FUNCTION_73_0();
        sub_1C9064D9C();
      }

      sub_1C9064D9C();
LABEL_19:
      sub_1C9064D9C();
      return;
    case 6:
      v20 = *v3;
      v21 = v3[2];
      v22 = v3[3];
      v23 = v3[4];
      v24 = v3[5];
      MEMORY[0x1CCA82810](6);
      RestrictionContext.KeyboardTraitsDefinition.hash(into:)();
      return;
    default:
      MEMORY[0x1CCA82810](0);
      v5 = *(v4 + 8);
      v6 = *(v4 + 9);
      v25 = *v4;
      v27 = *(v4 + 1);
      *v29 = *(v4 + 2);
      *&v29[9] = *(v4 + 41);
      RestrictionContext.ValueSetDefinition.Inner.hash(into:)();
      if (v6)
      {
        OUTLINED_FUNCTION_284();
        OUTLINED_FUNCTION_104_2();
        sub_1C9063FBC();
      }

      else
      {
        OUTLINED_FUNCTION_73_0();
        sub_1C9064D9C();
      }

      v26 = *(v4 + 5);
      v28 = *(v4 + 6);
      v30 = *(v4 + 7);
      v31 = *(v4 + 16);
      QueryDefinition.PredicateTemplates.hash(into:)(a1);
      return;
  }
}

uint64_t RestrictionContext.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  RestrictionContext.hash(into:)(v1);
  return sub_1C9064DBC();
}

uint64_t sub_1C8D34B70()
{
  sub_1C9064D7C();
  RestrictionContext.hash(into:)(v1);
  return sub_1C9064DBC();
}

void sub_1C8D34BAC(void *a1@<X8>)
{
  RestrictionContext.id.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t static ContentItemClassDescriptor.Inner.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = *(a2 + 32);
  v47[0] = *a1;
  v47[1] = v3;
  v47[2] = v4;
  v47[3] = v5;
  v48 = v6;
  v49 = v8;
  v50 = v7;
  v51 = v10;
  v52 = v9;
  v53 = v11;
  switch(v6)
  {
    case 1:
      if (v11 != 1)
      {
        goto LABEL_37;
      }

      if (v2 != v8 || v3 != v7)
      {
        OUTLINED_FUNCTION_94();
        if ((OUTLINED_FUNCTION_100_0() & 1) == 0)
        {
          LOBYTE(v6) = 1;
          v28 = OUTLINED_FUNCTION_6_7();
          v32 = 1;
          goto LABEL_38;
        }
      }

      if (v4 != v10 || v5 != v9)
      {
        OUTLINED_FUNCTION_249();
        OUTLINED_FUNCTION_52_1();
        v13 = sub_1C9064C2C();
        LOBYTE(v6) = 1;
        v20 = OUTLINED_FUNCTION_6_7();
        v24 = 1;
        goto LABEL_36;
      }

      LOBYTE(v6) = 1;
      OUTLINED_FUNCTION_368();
      v37 = 1;
      goto LABEL_43;
    case 2:
      if (v11 != 2)
      {
        goto LABEL_37;
      }

      if (v2 != v8 || v3 != v7)
      {
        OUTLINED_FUNCTION_94();
        if ((OUTLINED_FUNCTION_100_0() & 1) == 0)
        {
          LOBYTE(v6) = 2;
          v28 = OUTLINED_FUNCTION_6_7();
          v32 = 2;
          goto LABEL_38;
        }
      }

      if (v4 != v10 || v5 != v9)
      {
        OUTLINED_FUNCTION_249();
        OUTLINED_FUNCTION_52_1();
        v13 = sub_1C9064C2C();
        LOBYTE(v6) = 2;
        v20 = OUTLINED_FUNCTION_6_7();
        v24 = 2;
        goto LABEL_36;
      }

      LOBYTE(v6) = 2;
      OUTLINED_FUNCTION_368();
      v37 = 2;
      goto LABEL_43;
    case 3:
      if (v11 != 3)
      {
        goto LABEL_37;
      }

      if (v2 != v8 || v3 != v7)
      {
        OUTLINED_FUNCTION_94();
        v13 = OUTLINED_FUNCTION_100_0();
        LOBYTE(v6) = 3;
        v20 = OUTLINED_FUNCTION_6_7();
        v24 = 3;
LABEL_36:
        sub_1C8D06F98(v20, v21, v22, v23, v24);
        goto LABEL_45;
      }

      LOBYTE(v6) = 3;
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_52_1();
      v37 = 3;
LABEL_43:
      sub_1C8D06F98(v33, v34, v35, v36, v37);
      goto LABEL_44;
    default:
      if (v11)
      {
LABEL_37:
        v28 = OUTLINED_FUNCTION_6_7();
LABEL_38:
        sub_1C8D06F98(v28, v29, v30, v31, v32);
        v13 = 0;
      }

      else if (v2 == v8 && v3 == v7)
      {
        OUTLINED_FUNCTION_52_1();
        sub_1C8D06F98(v38, v39, v40, v41, 0);
        LOBYTE(v6) = 0;
LABEL_44:
        v13 = 1;
      }

      else
      {
        v13 = OUTLINED_FUNCTION_100_0();
        v14 = OUTLINED_FUNCTION_6_7();
        sub_1C8D06F98(v14, v15, v16, v17, 0);
        LOBYTE(v6) = 0;
      }

LABEL_45:
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_368();
      sub_1C8D06F98(v42, v43, v44, v45, v6);
      sub_1C8D3F0C4(v47, &qword_1EC3136A0, &qword_1C906BC68);
      return v13 & 1;
  }
}

uint64_t sub_1C8D34E30(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000001C90C9D20 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x80000001C90C9D40 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000018 && 0x80000001C90C9D60 == a2;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD00000000000001BLL && 0x80000001C90C9D80 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C9064C2C();

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

unint64_t sub_1C8D34F8C(char a1)
{
  result = 0xD000000000000017;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8D35008(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8D350A4()
{
  OUTLINED_FUNCTION_223();
  v3 = v1 == 0x696669746E656469 && v2 == 0xEA00000000007265;
  if (v3 || (OUTLINED_FUNCTION_31_0() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0xD000000000000010 && 0x80000001C90C96C0 == v0)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    OUTLINED_FUNCTION_420();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8D35158(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1C9064C2C();
    OUTLINED_FUNCTION_420();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8D351C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D34E30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8D351F0(uint64_t a1)
{
  v2 = sub_1C8D3AC18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D3522C(uint64_t a1)
{
  v2 = sub_1C8D3AC18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D3526C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D35008(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8D35298(uint64_t a1)
{
  v2 = sub_1C8D3AC6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D352D4(uint64_t a1)
{
  v2 = sub_1C8D3AC6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D35310(uint64_t a1)
{
  v2 = sub_1C8D3AD14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D3534C(uint64_t a1)
{
  v2 = sub_1C8D3AD14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D35388(uint64_t a1)
{
  v2 = sub_1C8D3ACC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D353C4(uint64_t a1)
{
  v2 = sub_1C8D3ACC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8D35400(uint64_t a1)
{
  v2 = sub_1C8D3AD68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D3543C(uint64_t a1)
{
  v2 = sub_1C8D3AD68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ContentItemClassDescriptor.Inner.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3136A8, &qword_1C906BC70);
  OUTLINED_FUNCTION_11(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_97();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3136B0, &qword_1C906BC78);
  OUTLINED_FUNCTION_11(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_97();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3136B8, &qword_1C906BC80);
  v15 = OUTLINED_FUNCTION_11(v14);
  v40 = v16;
  v41 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_73();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3136C0, &qword_1C906BC88);
  OUTLINED_FUNCTION_11(v20);
  v39 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_142();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3136C8, &qword_1C906BC90);
  v44 = OUTLINED_FUNCTION_11(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_38();
  v42 = *v1;
  v43 = v1[1];
  v37 = v1[3];
  v38 = v1[2];
  v29 = *(v1 + 32);
  v30 = v5[4];
  OUTLINED_FUNCTION_217(v5, v5[3]);
  sub_1C8D3AC18();
  OUTLINED_FUNCTION_132_0();
  sub_1C9064E1C();
  switch(v29)
  {
    case 1:
      sub_1C8D3AD14();
      OUTLINED_FUNCTION_380();
      sub_1C9064ACC();
      sub_1C9064B2C();
      if (!v2)
      {
        sub_1C9064B2C();
      }

      (*(v40 + 8))(v3, v41);
      v31 = OUTLINED_FUNCTION_47_3();
      v33 = v44;
      break;
    case 2:
      sub_1C8D3ACC0();
      v34 = v44;
      OUTLINED_FUNCTION_380();
      sub_1C9064ACC();
      OUTLINED_FUNCTION_69_0();
      sub_1C9064B2C();
      if (!v2)
      {
        OUTLINED_FUNCTION_141_0();
        OUTLINED_FUNCTION_42_0();
        sub_1C9064B2C();
      }

      goto LABEL_7;
    case 3:
      sub_1C8D3AC6C();
      v34 = v44;
      OUTLINED_FUNCTION_380();
      sub_1C9064ACC();
      OUTLINED_FUNCTION_69_0();
      sub_1C9064B2C();
LABEL_7:
      v35 = OUTLINED_FUNCTION_36_3();
      v36(v35);
      v31 = OUTLINED_FUNCTION_47_3();
      v33 = v34;
      break;
    default:
      sub_1C8D3AD68();
      OUTLINED_FUNCTION_380();
      sub_1C9064ACC();
      sub_1C9064B2C();
      (*(v39 + 8))(v0, v20);
      v31 = OUTLINED_FUNCTION_47_3();
      v33 = v44;
      break;
  }

  v32(v31, v33);
  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_198();
}

void ContentItemClassDescriptor.Inner.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v76 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3136E0, &qword_1C906BC98);
  v70 = OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_97();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3136E8, &qword_1C906BCA0);
  OUTLINED_FUNCTION_11(v74);
  v72 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_97();
  v77 = v13;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3136F0, &qword_1C906BCA8);
  OUTLINED_FUNCTION_11(v73);
  v75 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_72();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3136F8, &qword_1C906BCB0);
  OUTLINED_FUNCTION_11(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_86();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313700, &qword_1C906BCB8);
  OUTLINED_FUNCTION_11(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_38();
  v26 = v3[3];
  v27 = v3[4];
  v79 = v3;
  v28 = OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_217(v28, v29);
  sub_1C8D3AC18();
  OUTLINED_FUNCTION_132_0();
  sub_1C9064DEC();
  if (v0)
  {
    goto LABEL_9;
  }

  v30 = sub_1C9064A9C();
  sub_1C8CB8914(v30, 0);
  v32 = v22;
  if (v33 == v31 >> 1)
  {
LABEL_8:
    v46 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3();
    v48 = v47;
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v48 = &type metadata for ContentItemClassDescriptor.Inner;
    sub_1C906499C();
    OUTLINED_FUNCTION_43_4();
    v50 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10_0(v46);
    (*(v51 + 104))(v48);
    swift_willThrow();
    swift_unknownObjectRelease();
    v52 = OUTLINED_FUNCTION_57_0();
    v53(v52, v32);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_10:
    OUTLINED_FUNCTION_198();
    return;
  }

  OUTLINED_FUNCTION_119_0();
  if (v37 < (v36 >> 1))
  {
    v68 = *(v35 + v34);
    sub_1C8CB891C(v34 + 1);
    v39 = v38;
    v41 = v40;
    swift_unknownObjectRelease();
    if (v39 == v41 >> 1)
    {
      switch(v68)
      {
        case 1:
          sub_1C8D3AD14();
          OUTLINED_FUNCTION_107_1();
          sub_1C906498C();
          v69 = sub_1C9064A0C();
          v71 = v59;
          v78 = v1;
          v60 = sub_1C9064A0C();
          v62 = v65;
          swift_unknownObjectRelease();
          (*(v75 + 8))(v78, v73);
          v66 = OUTLINED_FUNCTION_38_5();
          v67(v66);
          v42 = v79;
          break;
        case 2:
          sub_1C8D3ACC0();
          OUTLINED_FUNCTION_107_1();
          sub_1C906498C();
          v42 = v3;
          v69 = sub_1C9064A0C();
          v71 = v58;
          OUTLINED_FUNCTION_141_0();
          v60 = sub_1C9064A0C();
          v62 = v61;
          swift_unknownObjectRelease();
          (*(v72 + 8))(v77, v74);
          v63 = OUTLINED_FUNCTION_38_5();
          v64(v63);
          break;
        case 3:
          sub_1C8D3AC6C();
          OUTLINED_FUNCTION_107_1();
          sub_1C906498C();
          v42 = v3;
          v43 = v70;
          v44 = sub_1C9064A0C();
          goto LABEL_14;
        default:
          sub_1C8D3AD68();
          OUTLINED_FUNCTION_107_1();
          sub_1C906498C();
          v42 = v3;
          v43 = v18;
          v44 = sub_1C9064A0C();
LABEL_14:
          v69 = v44;
          v71 = v45;
          swift_unknownObjectRelease();
          v54 = OUTLINED_FUNCTION_170_1();
          v55(v54, v43);
          v56 = OUTLINED_FUNCTION_38_5();
          v57(v56);
          v60 = 0;
          v62 = 0;
          break;
      }

      *v76 = v69;
      *(v76 + 8) = v71;
      *(v76 + 16) = v60;
      *(v76 + 24) = v62;
      *(v76 + 32) = v68;
      __swift_destroy_boxed_opaque_existential_1(v42);
      goto LABEL_10;
    }

    v32 = v22;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1C8D361B8()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_1C9064D7C();
  ContentItemClassDescriptor.hash(into:)(v4);
  return sub_1C9064DBC();
}

uint64_t ContentItemClassDescriptor.bundleIdentifier.getter()
{
  if (*(v0 + 32) - 1 <= 1)
  {
    v3 = v0 + 16;
    v2 = *(v0 + 16);
    v1 = *(v3 + 8);
  }

  return OUTLINED_FUNCTION_95_0();
}

uint64_t ContentItemClassDescriptor.inner.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_1C8D06F98(v2, v3, v4, v5, v6);
}

__n128 ContentItemClassDescriptor.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

uint64_t sub_1C8D36284(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x72656E6E69 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8D36310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8D36284(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8D3633C(uint64_t a1)
{
  v2 = sub_1C8D3ADBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8D36378(uint64_t a1)
{
  v2 = sub_1C8D3ADBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ContentItemClassDescriptor.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313708, &qword_1C906BCC0);
  OUTLINED_FUNCTION_11(v17);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_38();
  v6 = *v0;
  v7 = *(v0 + 8);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = *(v2 + 24);
  v16 = *(v2 + 32);
  v11 = *(v0 + 32);
  v12 = OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_217(v12, v13);
  sub_1C8D06F98(v6, v7, v8, v9, v11);
  sub_1C8D3ADBC();
  OUTLINED_FUNCTION_132_0();
  sub_1C9064E1C();
  sub_1C8D3AE10();
  sub_1C9064B8C();
  sub_1C8D06FF4(v6, v7, v8, v9, v11);
  v14 = OUTLINED_FUNCTION_17_3();
  v15(v14);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D3650C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  switch(*(v0 + 32))
  {
    case 1:
      v6 = 1;
      goto LABEL_7;
    case 2:
      v6 = 2;
LABEL_7:
      MEMORY[0x1CCA82810](v6);
      OUTLINED_FUNCTION_168_0();
      sub_1C9063FBC();
      OUTLINED_FUNCTION_278();
      goto LABEL_8;
    case 3:
      v5 = 3;
      goto LABEL_5;
    default:
      v5 = 0;
LABEL_5:
      MEMORY[0x1CCA82810](v5);
      OUTLINED_FUNCTION_168_0();
LABEL_8:

      return sub_1C9063FBC();
  }
}

uint64_t _s7ToolKit26ContentItemClassDescriptorV5InnerO9hashValueSivg_0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  OUTLINED_FUNCTION_298();
  switch(v5)
  {
    case 1:
      v7 = 1;
      goto LABEL_7;
    case 2:
      v7 = 2;
LABEL_7:
      MEMORY[0x1CCA82810](v7);
      OUTLINED_FUNCTION_168_0();
      sub_1C9063FBC();
      OUTLINED_FUNCTION_104_2();
      goto LABEL_8;
    case 3:
      v6 = 3;
      goto LABEL_5;
    default:
      v6 = 0;
LABEL_5:
      MEMORY[0x1CCA82810](v6);
      OUTLINED_FUNCTION_168_0();
LABEL_8:
      sub_1C9063FBC();
      return sub_1C9064DBC();
  }
}

void ContentItemClassDescriptor.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313710, &qword_1C906BCC8);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_56_0();
  sub_1C8D3ADBC();
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_196_1();
  if (!v0)
  {
    sub_1C8D3AE64();
    OUTLINED_FUNCTION_34();
    sub_1C9064A6C();
    v9 = OUTLINED_FUNCTION_59_2();
    v10(v9, v5);
    *v4 = v11;
    *(v4 + 16) = v12;
    *(v4 + 32) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D367E0()
{
  v1 = *(v0 + 32);
  sub_1C9064D7C();
  v3 = *v0;
  v4 = v0[1];
  ContentItemClassDescriptor.hash(into:)(v5);
  return sub_1C9064DBC();
}

uint64_t TypeInstance.debugDescription.getter()
{
  OUTLINED_FUNCTION_135_1();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_134_0(v1);
      v11[0] = 91;
      v11[1] = 0xE100000000000000;

      TypeInstance.debugDescription.getter(v5);
      OUTLINED_FUNCTION_414();

      v6 = 93;
      goto LABEL_11;
    case 2:
      OUTLINED_FUNCTION_169_0(v1);
      strcpy(v11, "Optional<");
      WORD1(v11[1]) = 0;
      HIDWORD(v11[1]) = -385875968;
      TypeInstance.debugDescription.getter(v3);
      goto LABEL_5;
    case 3:
      v11[0] = 0x3C6E6F696E55;
      v11[1] = 0xE600000000000000;
      sub_1C8D2A280(*((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
      sub_1C8D3A5F4();
      sub_1C9063E9C();

      v4 = OUTLINED_FUNCTION_249();
      MEMORY[0x1CCA81A90](v4);
      goto LABEL_7;
    case 4:
      OUTLINED_FUNCTION_127_1(v1);
      MEMORY[0x1CCA81A90](0x7463697274736552, 0xEB000000003C6465);
      sub_1C90648BC();
      OUTLINED_FUNCTION_149_0();
      MEMORY[0x1CCA81C60](v0, &type metadata for RestrictionContext);
LABEL_5:
      OUTLINED_FUNCTION_414();
LABEL_7:

      MEMORY[0x1CCA81A90](62, 0xE100000000000000);
      break;
    case 5:
      OUTLINED_FUNCTION_127_1(v1);

      strcpy(v11, "Constrained<");
      BYTE5(v11[1]) = 0;
      HIWORD(v11[1]) = -5120;
      TypeInstance.typeIdentifiers.getter();
      sub_1C8D3AEB8();
      sub_1C906433C();

      v7 = OUTLINED_FUNCTION_249();
      MEMORY[0x1CCA81A90](v7);

      OUTLINED_FUNCTION_149_0();
      MEMORY[0x1CCA81C60](v0, &type metadata for RestrictionContext);
      OUTLINED_FUNCTION_414();

      break;
    case 6:
      OUTLINED_FUNCTION_134_0(v1);
      strcpy(v11, "Deferred<");
      WORD1(v11[1]) = 0;
      HIDWORD(v11[1]) = -385875968;

      TypeInstance.debugDescription.getter(v8);
      OUTLINED_FUNCTION_414();

      v6 = 62;
LABEL_11:
      MEMORY[0x1CCA81A90](v6, 0xE100000000000000);

      break;
    default:
      v11[0] = 0;
      v11[1] = 0xE000000000000000;
      v10 = *(v1 + 16);
      sub_1C90648BC();
      break;
  }

  return v11[0];
}

uint64_t RestrictionContext.debugDescription.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = sub_1C8CA638C(__dst);
  v2 = sub_1C8CA62B8(__dst);
  v3 = v2;
  switch(v1)
  {
    case 1:
      v12 = *v2;
      v13 = *(v2 + 8);
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();

      OUTLINED_FUNCTION_163_0();
      *&v31[0] = v15;
      *(&v31[0] + 1) = v14;
      v16 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313638, &qword_1C906BC38);
      v17 = sub_1C9063F4C();
      MEMORY[0x1CCA81A90](v17);

      v18 = OUTLINED_FUNCTION_122_0();
      MEMORY[0x1CCA81A90](v18);
      *&v32 = v13;
      v19 = v13;
      v20 = sub_1C9063F4C();
      MEMORY[0x1CCA81A90](v20);

      v21 = 10589;
      v22 = 0xE200000000000000;
      goto LABEL_10;
    case 2:
      v7 = *v2;
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();

      OUTLINED_FUNCTION_163_0();
      *&v31[0] = v9 - 2;
      *(&v31[0] + 1) = v8;
      v10 = sub_1C9063C4C();
      v11 = MEMORY[0x1CCA81C30](v7, v10);
      MEMORY[0x1CCA81A90](v11);

      goto LABEL_9;
    case 3:
    case 4:
      v6 = *v2;
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();
      OUTLINED_FUNCTION_177_0();
      OUTLINED_FUNCTION_150_0();
      LOBYTE(v32) = v6;
      goto LABEL_8;
    case 5:
      v23 = *v2;
      v24 = *(v2 + 8);
      v25 = *(v2 + 9);
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();
      OUTLINED_FUNCTION_177_0();
      MEMORY[0x1CCA81A90](0xD000000000000019, 0x80000001C90C99E0);
      *&v32 = v23;
      BYTE8(v32) = v24;
      BYTE9(v32) = v25;
      goto LABEL_8;
    case 6:
      v26 = *v2;
      v27 = *(v2 + 2);
      v28 = *(v2 + 3);
      v29 = *(v2 + 4);
      v30 = *(v2 + 5);
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();
      OUTLINED_FUNCTION_177_0();
      MEMORY[0x1CCA81A90](0x6570795474786574, 0xEE00286874695764);
      LOWORD(v32) = v26;
      BYTE2(v32) = v27;
      BYTE3(v32) = v28;
      BYTE4(v32) = v29;
      BYTE5(v32) = v30;
LABEL_8:
      sub_1C90648BC();
LABEL_9:
      v21 = 41;
      v22 = 0xE100000000000000;
LABEL_10:
      MEMORY[0x1CCA81A90](v21, v22);
      result = *&v31[0];
      break;
    default:
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();
      v32 = v31[0];
      MEMORY[0x1CCA81A90](0x287465536E69, 0xE600000000000000);
      memcpy(v31, v3, sizeof(v31));
      OUTLINED_FUNCTION_188_0();
      MEMORY[0x1CCA81A90](0xD000000000000011, 0x80000001C90C9A80);
      v4 = *(v3 + 96);
      v31[0] = *(v3 + 80);
      v31[1] = v4;
      v31[2] = *(v3 + 112);
      *&v31[3] = *(v3 + 128);
      OUTLINED_FUNCTION_188_0();
      MEMORY[0x1CCA81A90](41, 0xE100000000000000);
      result = v32;
      break;
  }

  return result;
}

uint64_t RestrictionContext.ValueSetDefinition.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[5];
  switch(*(v0 + 56))
  {
    case 1:
      v3 = v0[6];
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();

      OUTLINED_FUNCTION_25_5();
      OUTLINED_FUNCTION_142_0();
      v10 = v5;
      goto LABEL_9;
    case 2:
      v16 = 0x726575516B6E696CLL;
      v10 = OUTLINED_FUNCTION_112();
      goto LABEL_10;
    case 3:
      v12 = v0[4];
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();

      OUTLINED_FUNCTION_25_5();
      OUTLINED_FUNCTION_142_0();
      v13 = OUTLINED_FUNCTION_203();
      MEMORY[0x1CCA81A90](v13);
      MEMORY[0x1CCA81A90](0x656D61726170202CLL, 0xED0000203A726574);
      v14 = OUTLINED_FUNCTION_112();
      MEMORY[0x1CCA81A90](v14);
      v8 = 46;
      v9 = 0xE100000000000000;
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();

      OUTLINED_FUNCTION_25_5();
      OUTLINED_FUNCTION_142_0();
      v7 = OUTLINED_FUNCTION_112();
      MEMORY[0x1CCA81A90](v7);
      v8 = OUTLINED_FUNCTION_122_0();
LABEL_6:
      MEMORY[0x1CCA81A90](v8, v9);
      break;
    default:
      OUTLINED_FUNCTION_9_8();
      sub_1C906478C();

      OUTLINED_FUNCTION_25_5();
      v16 = v6 - 9;
      break;
  }

  v10 = v4;
LABEL_9:
  v11 = v3;
LABEL_10:
  MEMORY[0x1CCA81A90](v10, v11);
  MEMORY[0x1CCA81A90](41, 0xE100000000000000);
  return v16;
}

void ContentItemClassDescriptor.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  switch(*(v0 + 32))
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_147_0();

      sub_1C906478C();

      OUTLINED_FUNCTION_65_1();
      OUTLINED_FUNCTION_142_0();
      v9 = OUTLINED_FUNCTION_112();
      MEMORY[0x1CCA81A90](v9);

      v10 = OUTLINED_FUNCTION_122_0();
      MEMORY[0x1CCA81A90](v10);
      MEMORY[0x1CCA81A90](v4, v3);

      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_147_0();
      sub_1C906478C();

      OUTLINED_FUNCTION_65_1();
      OUTLINED_FUNCTION_142_0();
      v6 = OUTLINED_FUNCTION_112();
      MEMORY[0x1CCA81A90](v6);
      v7 = OUTLINED_FUNCTION_112();
      sub_1C8D06FF4(v7, v8, v4, v3, 3u);
LABEL_5:
      MEMORY[0x1CCA81A90](62, 0xE100000000000000);
      break;
    default:
      v5 = v0[1];

      break;
  }

  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_199_0();
}

void TypeInstance.defaultValue()(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_135_1();
  switch(v3)
  {
    case 1:
    case 5:
    case 6:
      OUTLINED_FUNCTION_169_0(v2);
      v46 = v4;
      TypeInstance.defaultValue()(a1);
      goto LABEL_27;
    case 2:
      *a1 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      OUTLINED_FUNCTION_183_0();

      sub_1C8D2B0FC(v5);
      return;
    case 3:
      v7 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *(v7 + 56);
      v9 = *(v7 + 32);
      OUTLINED_FUNCTION_3_1();
      v12 = v11 & v10;
      v14 = (v13 + 63) >> 6;

      v15 = 0;
      v16 = MEMORY[0x1E69E7CC0];
      v17 = MEMORY[0x1E69E7CC0];
      break;
    default:
      goto LABEL_25;
  }

  while (v12)
  {
    v18 = v15;
LABEL_12:
    OUTLINED_FUNCTION_173_0();
    v45 = *(*(v7 + 48) + ((v18 << 9) | (8 * v19)));
    TypeInstance.defaultValue()(&v46);
    v20 = v46;
    if ((~v46 & 0xF000000000000007) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = *(v17 + 16);
        sub_1C8D010FC();
        v17 = v24;
      }

      v21 = *(v17 + 16);
      v22 = v21 + 1;
      if (v21 >= *(v17 + 24) >> 1)
      {
        sub_1C8D010FC();
        v22 = v21 + 1;
        v17 = v25;
      }

      *(v17 + 16) = v22;
      *(v17 + 8 * v21 + 32) = v20;
      v15 = v18;
      v16 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1C8D2B114(v46);
      v15 = v18;
    }
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v18 >= v14)
    {
      break;
    }

    v12 = *(v7 + 56 + 8 * v18);
    ++v15;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  v26 = *(v17 + 16);
  if (!v26)
  {
LABEL_24:

LABEL_25:
    v28 = 0xF000000000000007;
    goto LABEL_26;
  }

  if (v26 == 1)
  {
    sub_1C8D2A240(v17, a1);
    OUTLINED_FUNCTION_183_0();

    return;
  }

  v46 = v16;
  sub_1C8CAF09C();
  v29 = 32;
  v30 = v46;
  do
  {
    v31 = *(v17 + v29);
    OUTLINED_FUNCTION_50();
    v32 = swift_allocObject();
    TypedValue.typeIdentifier.getter();
    v46 = v30;
    v34 = *(v30 + 16);
    v33 = *(v30 + 24);
    if (v34 >= v33 >> 1)
    {
      OUTLINED_FUNCTION_176(v33);
      sub_1C8CAF09C();
      v30 = v46;
    }

    *(v30 + 16) = v34 + 1;
    *(v30 + 8 * v34 + 32) = v32;
    v29 += 8;
    --v26;
  }

  while (v26);
  OUTLINED_FUNCTION_87_0();
  sub_1C8CAF750(v30, v35, v36, sub_1C8CAEB90);
  v38 = v37;
  if (*(v37 + 16) > 1uLL)
  {
    OUTLINED_FUNCTION_50();
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    v40 = v39 | 0x6000000000000000;
    goto LABEL_39;
  }

  v41 = sub_1C8D39D38(v37);
  if (v43)
  {
LABEL_42:
    __break(1u);
    return;
  }

  if (*(v38 + 36) != v42)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v41 == 1 << *(v38 + 32))
  {

    goto LABEL_24;
  }

  sub_1C8D39D94(v41, v42, v38, &v46);

  v40 = v46;
LABEL_39:
  OUTLINED_FUNCTION_2();
  v44 = swift_allocObject();
  *(v44 + 16) = v40;
  *(v44 + 24) = v17;
  v28 = v44 | 0x3000000000000000;
LABEL_26:
  *a1 = v28;
LABEL_27:
  OUTLINED_FUNCTION_183_0();
}

void sub_1C8D375B4(uint64_t a1)
{
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = *(*v2 + 16);
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1C8E955B4(v7 + v6, 1);
  v1 = *v2;
  v8 = (*(*v2 + 24) >> 1) - *(*v2 + 16);
  OUTLINED_FUNCTION_368();
  sub_1C8D7C32C();
  if (v9 < v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v9)
  {
    v11 = *(v1 + 16);
    v12 = __OFADD__(v11, v9);
    v13 = v11 + v9;
    if (v12)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v1 + 16) = v13;
  }

  if (v9 != v8)
  {
    sub_1C8C9E7E4();
LABEL_8:
    *v2 = v1;
    return;
  }

LABEL_11:
  v4 = *(v1 + 16);
  v5 = v27;
  v10 = v28;
  v3 = v29;
  v25 = v26;
  if (v30)
  {
    v14 = (v30 - 1) & v30;
    v15 = __clz(__rbit64(v30)) | (v29 << 6);
    v16 = (v28 + 64) >> 6;
LABEL_19:
    v19 = *(*(v25 + 48) + 8 * v15);

LABEL_20:
    if ((~v19 & 0xF000000000000007) != 0)
    {
      v20 = *(v1 + 24) >> 1;
      if (v20 < v4 + 1)
      {
        sub_1C8D00D64();
        v1 = v24;
        v20 = *(v24 + 24) >> 1;
      }

      while (1)
      {
LABEL_23:
        if ((~v19 & 0xF000000000000007) == 0 || v4 >= v20)
        {
          *(v1 + 16) = v4;
          goto LABEL_20;
        }

        sub_1C8CD0FB0(v19);
        *(v1 + 32 + 8 * v4++) = v19;
        if (!v14)
        {
          break;
        }

        v22 = v3;
LABEL_34:
        v23 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v19 = *(*(v25 + 48) + ((v22 << 9) | (8 * v23)));
      }

      while (1)
      {
        v22 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if (v22 >= v16)
        {
          v14 = 0;
          v19 = 0xF000000000000007;
          goto LABEL_23;
        }

        v14 = *(v5 + 8 * v22);
        ++v3;
        if (v14)
        {
          v3 = v22;
          goto LABEL_34;
        }
      }

      __break(1u);
    }

    sub_1C8C9E7E4();
    sub_1C8CD0FB0(v19);
    goto LABEL_8;
  }

LABEL_14:
  v16 = (v10 + 64) >> 6;
  while (1)
  {
    v17 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v17 >= v16)
    {
      v14 = 0;
      v19 = 0xF000000000000007;
      goto LABEL_20;
    }

    v18 = *(v5 + 8 * v17);
    ++v3;
    if (v18)
    {
      v14 = (v18 - 1) & v18;
      v15 = __clz(__rbit64(v18)) | (v17 << 6);
      v3 = v17;
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_1C8D3784C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_7_6(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C8E955E4(v4, 1);
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
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = OUTLINED_FUNCTION_118_0(v3 + v7);
  memcpy(v9, v10, v11);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_137_1();
  if (!v5)
  {
    *(v3 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C8D378D8(uint64_t a1)
{
  v4 = a1;
  v5 = *(a1 + 16);
  v6 = *(*v2 + 16);
  if (__OFADD__(v6, v5))
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1C8E955FC(v6 + v5, 1);
  v1 = *v2;
  v7 = *(*v2 + 16);
  v8 = (*(*v2 + 24) >> 1) - v7;
  sub_1C8D7C54C(v35, *v2 + 136 * v7 + 32, v8, v4);
  if (v9 < v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v9)
  {
    v11 = *(v1 + 16);
    v12 = __OFADD__(v11, v9);
    v13 = v11 + v9;
    if (v12)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v1 + 16) = v13;
  }

  if (v9 != v8)
  {
    sub_1C8C9E7E4();
LABEL_8:
    *v2 = v1;
    return;
  }

LABEL_11:
  v5 = *(v1 + 16);
  v4 = v35[1];
  v10 = v36;
  v3 = v37;
  v26 = v35[0];
  if (v38)
  {
    v14 = (v38 - 1) & v38;
    v15 = __clz(__rbit64(v38)) | (v37 << 6);
    v16 = (v36 + 64) >> 6;
LABEL_19:
    v19 = (*(v26 + 48) + 136 * v15);
    memcpy(__dst, v19, sizeof(__dst));
    memmove(__src, v19, 0x88uLL);
    nullsub_1(__src);
    sub_1C8D073F4(__dst, v32);
LABEL_20:
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1C8D3EF28(__dst) != 1)
    {
      v20 = *(v1 + 24) >> 1;
      if (v20 < v5 + 1)
      {
        sub_1C8D010CC();
        v1 = v25;
        v20 = *(v25 + 24) >> 1;
      }

      while (1)
      {
LABEL_23:
        memcpy(v31, __src, sizeof(v31));
        memcpy(v32, __src, sizeof(v32));
        if (sub_1C8D3EF28(v32) == 1 || v5 >= v20)
        {
          *(v1 + 16) = v5;
          goto LABEL_20;
        }

        memcpy(v29, __src, sizeof(v29));
        memcpy(v30, v31, sizeof(v30));
        sub_1C8D073F4(v30, v28);
        sub_1C8D3F0C4(v29, &qword_1EC313968, &qword_1C906F3F0);
        memmove((v1 + 32 + 136 * v5++), v31, 0x88uLL);
        if (!v14)
        {
          break;
        }

        v22 = v3;
LABEL_34:
        v23 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v24 = (*(v26 + 48) + 136 * (v23 | (v22 << 6)));
        memcpy(v28, v24, sizeof(v28));
        memmove(__src, v24, 0x88uLL);
        nullsub_1(__src);
        sub_1C8D073F4(v28, v27);
      }

      while (1)
      {
        v22 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if (v22 >= v16)
        {
          sub_1C8D3EF40(v28);
          memcpy(__src, v28, sizeof(__src));
          v14 = 0;
          goto LABEL_23;
        }

        v14 = *(v4 + 8 * v22);
        ++v3;
        if (v14)
        {
          v3 = v22;
          goto LABEL_34;
        }
      }

      __break(1u);
    }

    sub_1C8C9E7E4();
    memcpy(v32, __src, sizeof(v32));
    sub_1C8D3F0C4(v32, &qword_1EC313968, &qword_1C906F3F0);
    goto LABEL_8;
  }

LABEL_14:
  v16 = (v10 + 64) >> 6;
  while (1)
  {
    v17 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v17 >= v16)
    {
      sub_1C8D3EF40(__src);
      v14 = 0;
      goto LABEL_20;
    }

    v18 = *(v4 + 8 * v17);
    ++v3;
    if (v18)
    {
      v14 = (v18 - 1) & v18;
      v15 = __clz(__rbit64(v18)) | (v17 << 6);
      v3 = v17;
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_1C8D37C5C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_7_6(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C8E95614(v4, 1);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312AB0, &qword_1C9068E90);
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

void sub_1C8D37D04(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_7_6(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C8E95B8C(v4, 1);
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
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_118_0(v3 + 136 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_137_1();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1C8D37DC8(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a2(result, 1);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = a3(0);
  v11 = *(result - 8);
  if (v10 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v15 = __OFADD__(v14, v5);
  v16 = v14 + v5;
  if (!v15)
  {
    *(v9 + 16) = v16;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1C8D37EE0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1C8E95C5C(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1C8D37F98()
{
  result = qword_1EDA63890;
  if (!qword_1EDA63890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63890);
  }

  return result;
}

unint64_t sub_1C8D37FEC()
{
  result = qword_1EC3134E8;
  if (!qword_1EC3134E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3134E8);
  }

  return result;
}

unint64_t sub_1C8D38040()
{
  result = qword_1EDA66988;
  if (!qword_1EDA66988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66988);
  }

  return result;
}

unint64_t sub_1C8D38094()
{
  result = qword_1EDA6A040;
  if (!qword_1EDA6A040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6A040);
  }

  return result;
}

unint64_t sub_1C8D380E8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_57(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3134F8, &qword_1C906BB38);
    v4();
    OUTLINED_FUNCTION_181();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C8D38158()
{
  result = qword_1EDA6CDE8;
  if (!qword_1EDA6CDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CDE8);
  }

  return result;
}

unint64_t sub_1C8D381AC()
{
  result = qword_1EDA6A048;
  if (!qword_1EDA6A048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6A048);
  }

  return result;
}

void sub_1C8D38200()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  if (*(v0 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313980, &unk_1C906F400), OUTLINED_FUNCTION_45_2(), v2 = sub_1C906475C(), v3 = v2, (v106 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v104 = v1;
    v105 = v1 + 32;
    v110 = v2 + 56;
LABEL_4:
    if (v4 >= *(v1 + 16))
    {
LABEL_256:
      __break(1u);
    }

    else
    {
      v6 = *(v105 + 8 * v4);
      v7 = *(v3 + 40);
      sub_1C9064D7C();
      v111 = v6;
      v8 = v6 >> 61;
      v109 = v4 + 1;
      switch(v6 >> 61)
      {
        case 1uLL:
          v26 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          MEMORY[0x1CCA82810](1);
          switch(v26)
          {
            case 0:
              v27 = 0;
              goto LABEL_40;
            case 1:
              v27 = 1;
              goto LABEL_40;
            case 2:
              v27 = 2;
              goto LABEL_40;
            case 3:
              v27 = 3;
              goto LABEL_40;
            case 4:
              v27 = 4;
              goto LABEL_40;
            case 5:
              v27 = 5;
              goto LABEL_40;
            case 6:
              v27 = 6;
              goto LABEL_40;
            case 7:
              v27 = 7;
              goto LABEL_40;
            case 8:
              v27 = 8;
              goto LABEL_40;
            case 9:
              v27 = 9;
              goto LABEL_40;
            case 10:
              v27 = 10;
              goto LABEL_40;
            case 11:
              v27 = 11;
              goto LABEL_40;
            case 12:
              v27 = 12;
              goto LABEL_40;
            case 13:
              v27 = 13;
              goto LABEL_40;
            case 14:
              v27 = 14;
              goto LABEL_40;
            case 15:
              v27 = 16;
LABEL_40:
              MEMORY[0x1CCA82810](v27);
              goto LABEL_41;
            default:
              v89 = *(v26 + 16);
              MEMORY[0x1CCA82810](15);
              v121[0] = v89;

              TypeIdentifier.hash(into:)(v116);
              goto LABEL_42;
          }

        case 2uLL:
          v12 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v13 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v14 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v15 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
          MEMORY[0x1CCA82810](2);

          OUTLINED_FUNCTION_104_2();
          sub_1C9063FBC();
          goto LABEL_24;
        case 3uLL:
          v16 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v17 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v19 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v18 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
          v20 = *((v111 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
          v21 = *((v111 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
          v95 = *((v111 & 0x1FFFFFFFFFFFFFFFLL) + 0x48);
          v91 = *((v111 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
          v92 = *((v111 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
          v96 = *((v111 & 0x1FFFFFFFFFFFFFFFLL) + 0x58);
          v97 = *((v111 & 0x1FFFFFFFFFFFFFFFLL) + 0x68);
          v98 = *((v111 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
          v93 = *((v111 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
          v94 = *((v111 & 0x1FFFFFFFFFFFFFFFLL) + 0x78);
          v100 = *((v111 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
          memcpy(__dst, ((v111 & 0x1FFFFFFFFFFFFFFFLL) + 136), 0x51uLL);
          v107 = *((v111 & 0x1FFFFFFFFFFFFFFFLL) + 0xE0);
          v102 = *((v111 & 0x1FFFFFFFFFFFFFFFLL) + 0xE8);
          MEMORY[0x1CCA82810](3);

          sub_1C9063FBC();
          v22 = *(v19 + 16);
          MEMORY[0x1CCA82810](v22);
          if (v22)
          {
            v23 = (v19 + 40);
            do
            {
              v24 = *(v23 - 1);
              v25 = *v23;

              sub_1C9063FBC();

              v23 += 2;
              --v22;
            }

            while (v22);
          }

          sub_1C9063FBC();
          sub_1C9064D9C();
          if (v21)
          {
            sub_1C9063FBC();
          }

          v5 = v110;
          MEMORY[0x1CCA82810](v95);
          sub_1C9064D9C();
          if (v96)
          {
            sub_1C9063FBC();
          }

          if (v97)
          {
            MEMORY[0x1CCA82810](1);
            sub_1C9063FBC();
          }

          else
          {
            MEMORY[0x1CCA82810](0);
          }

          MEMORY[0x1CCA82810](v98);
          if (v100)
          {
            __src[0] = v94;
            __src[1] = v100;
            memcpy(&__src[2], __dst, 0x51uLL);
            memcpy(v123, __src, 0x61uLL);
            sub_1C9064D9C();
            sub_1C8CC1340(__src, v121);
            ContainerDefinition.hash(into:)(v116);
            memcpy(v121, v123, 0x61uLL);
            sub_1C8CC15FC(v121);
          }

          else
          {
            sub_1C9064D9C();
          }

          goto LABEL_24;
        case 4uLL:
          v10 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v11 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          MEMORY[0x1CCA82810](4);

          OUTLINED_FUNCTION_104_2();
LABEL_24:
          sub_1C9063FBC();
          break;
        default:
          v9 = *(v6 + 16);
          MEMORY[0x1CCA82810](0);
          LOBYTE(v121[0]) = v9;
          TypeIdentifier.PrimitiveTypeIdentifier.hash(into:)();
LABEL_41:

          break;
      }

LABEL_42:
      v28 = sub_1C9064DBC() & ~(-1 << *(v3 + 32));
      OUTLINED_FUNCTION_161_0();
      if ((v31 & v30) != 0)
      {
        v33 = ~v32;
        do
        {
          v34 = *(*(v3 + 48) + 8 * v28);
          switch(v34 >> 61)
          {
            case 1uLL:
              if (v8 != 1)
              {
                goto LABEL_232;
              }

              v57 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v58 = *((v111 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              switch(v57)
              {
                case 0uLL:
                  if (v58)
                  {
                    goto LABEL_146;
                  }

                  goto LABEL_245;
                case 1uLL:
                  if (v58 == 1)
                  {
                    goto LABEL_245;
                  }

                  goto LABEL_146;
                case 2uLL:
                  if (v58 == 2)
                  {
                    goto LABEL_245;
                  }

                  goto LABEL_146;
                case 3uLL:
                  if (v58 == 3)
                  {
                    goto LABEL_245;
                  }

                  goto LABEL_146;
                case 4uLL:
                  if (v58 == 4)
                  {
                    goto LABEL_245;
                  }

                  goto LABEL_146;
                case 5uLL:
                  if (v58 == 5)
                  {
                    goto LABEL_245;
                  }

                  goto LABEL_146;
                case 6uLL:
                  if (v58 == 6)
                  {
                    goto LABEL_245;
                  }

                  goto LABEL_146;
                case 7uLL:
                  if (v58 == 7)
                  {
                    goto LABEL_245;
                  }

                  goto LABEL_146;
                case 8uLL:
                  if (v58 != 8)
                  {
                    goto LABEL_146;
                  }

LABEL_245:

                  sub_1C8D3F130(v57);
                  sub_1C8D3F130(v57);
                  goto LABEL_246;
                case 9uLL:
                  if (v58 != 9)
                  {
                    goto LABEL_146;
                  }

                  sub_1C8D3F130(9uLL);
                  v90 = 9;
                  goto LABEL_248;
                case 0xAuLL:
                  if (v58 != 10)
                  {
                    goto LABEL_146;
                  }

                  sub_1C8D3F130(0xAuLL);
                  v90 = 10;
                  goto LABEL_248;
                case 0xBuLL:
                  if (v58 != 11)
                  {
                    goto LABEL_146;
                  }

                  sub_1C8D3F130(0xBuLL);
                  v90 = 11;
                  goto LABEL_248;
                case 0xCuLL:
                  if (v58 != 12)
                  {
                    goto LABEL_146;
                  }

                  sub_1C8D3F130(0xCuLL);
                  v90 = 12;
                  goto LABEL_248;
                case 0xDuLL:
                  if (v58 != 13)
                  {
                    goto LABEL_146;
                  }

                  sub_1C8D3F130(0xDuLL);
                  v90 = 13;
                  goto LABEL_248;
                case 0xEuLL:
                  if (v58 != 14)
                  {
                    goto LABEL_146;
                  }

                  sub_1C8D3F130(0xEuLL);
                  v90 = 14;
                  goto LABEL_248;
                case 0xFuLL:
                  if (v58 != 15)
                  {
                    goto LABEL_146;
                  }

                  sub_1C8D3F130(0xFuLL);
                  v90 = 15;
LABEL_248:
                  sub_1C8D3F130(v90);

                  goto LABEL_249;
                default:
                  if (v58 >= 0x10)
                  {
                    v60 = *(v58 + 16);
                    v121[0] = *(v57 + 16);
                    __src[0] = v60;

                    sub_1C8D3F120(v58);

                    sub_1C8D3F120(v58);
                    sub_1C8D3F120(v57);
                    v61 = OUTLINED_FUNCTION_82_0();
                    v63 = static TypeIdentifier.== infix(_:_:)(v61, v62);
                    sub_1C8D3F130(v57);
                    sub_1C8D3F130(v58);

                    sub_1C8D3F130(v58);
                    if (v63)
                    {
LABEL_246:

                      goto LABEL_250;
                    }
                  }

                  else
                  {
LABEL_146:
                    sub_1C8D3F120(*((v111 & 0x1FFFFFFFFFFFFFFFLL) + 0x10));
                    sub_1C8D3F120(v57);

                    sub_1C8D3F130(v57);
                    sub_1C8D3F130(v58);
                  }

                  break;
              }

              goto LABEL_232;
            case 2uLL:
              if (v8 != 2)
              {
                goto LABEL_232;
              }

              v38 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v39 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
              v40 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
              v41 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
              v42 = *((v111 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
              v43 = *((v111 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
              v44 = v38 == *((v111 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) && v39 == *((v111 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
              if (!v44 && (sub_1C9064C2C() & 1) == 0)
              {
                goto LABEL_232;
              }

              if (v40 == v42 && v41 == v43)
              {
                goto LABEL_249;
              }

              OUTLINED_FUNCTION_104_2();
LABEL_67:
              if (sub_1C9064C2C())
              {
                goto LABEL_249;
              }

              goto LABEL_232;
            case 3uLL:
              v46 = v34 & 0x1FFFFFFFFFFFFFFFLL;
              memcpy(__dst, ((v34 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0x61uLL);
              memcpy(v123, ((v34 & 0x1FFFFFFFFFFFFFFFLL) + 120), 0x61uLL);
              if (v8 != 3)
              {
                goto LABEL_231;
              }

              v47 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0xE0);
              v48 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0xE8);
              v108 = *(v46 + 224);
              memcpy(v121, ((v111 & 0x1FFFFFFFFFFFFFFFLL) + 16), sizeof(v121));
              v49 = __dst[0] == v121[0] && __dst[1] == v121[1];
              if (!v49 && (sub_1C9064C2C() & 1) == 0)
              {
                goto LABEL_231;
              }

              v50 = *(__dst[2] + 16);
              if (v50 != *(v121[2] + 16))
              {
                goto LABEL_231;
              }

              if (v50)
              {
                v51 = __dst[2] == v121[2];
              }

              else
              {
                v51 = 1;
              }

              if (v51)
              {
                goto LABEL_88;
              }

              v52 = (__dst[2] + 40);
              v53 = (v121[2] + 40);
              break;
            case 4uLL:
              if (v8 != 4)
              {
                goto LABEL_232;
              }

              if (*((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((v111 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) || *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) != *((v111 & 0x1FFFFFFFFFFFFFFFLL) + 0x18))
              {
                goto LABEL_67;
              }

              goto LABEL_249;
            default:
              if (v8)
              {
                goto LABEL_232;
              }

              v35 = *(v34 + 16);
              v36 = *(v111 + 16);
              switch(*(v34 + 16))
              {
                case 0x17:
                  if (v36 == 23)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x18:
                  if (v36 == 24)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x19:
                  if (v36 == 25)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x1A:
                  if (v36 == 26)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x1B:
                  if (v36 == 27)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x1C:
                  if (v36 == 28)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x1D:
                  if (v36 == 29)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x1E:
                  if (v36 == 30)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x1F:
                  if (v36 == 31)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x20:
                  if (v36 == 32)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x21:
                  if (v36 == 33)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x22:
                  if (v36 == 34)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x23:
                  if (v36 == 35)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x24:
                  if (v36 == 36)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x25:
                  if (v36 == 37)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x26:
                  if (v36 == 38)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x27:
                  if (v36 == 39)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x28:
                  if (v36 == 40)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x29:
                  if (v36 == 41)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x2A:
                  if (v36 == 42)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x2B:
                  if (v36 == 43)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x2C:
                  if (v36 == 44)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x2D:
                  if (v36 == 45)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                case 0x2E:
                  if (v36 == 46)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_232;
                default:
                  if ((v36 - 23) < 0x18)
                  {
                    goto LABEL_232;
                  }

                  if (v35 == 22)
                  {
                    if (v36 != 22)
                    {
                      goto LABEL_232;
                    }
                  }

                  else if (v36 == 22 || v35 != v36)
                  {
                    goto LABEL_232;
                  }

LABEL_244:

LABEL_249:

LABEL_250:
                  v4 = v109;
                  v1 = v104;
                  if (v109 == v106)
                  {
                    goto LABEL_254;
                  }

                  goto LABEL_4;
              }
          }

          do
          {
            if (!v50)
            {
              __break(1u);
              goto LABEL_256;
            }

            v54 = *(v52 - 1) == *(v53 - 1) && *v52 == *v53;
            if (!v54 && (sub_1C9064C2C() & 1) == 0)
            {
              goto LABEL_231;
            }

            v52 += 2;
            v53 += 2;
            --v50;
          }

          while (v50);
LABEL_88:
          v55 = __dst[3] == v121[3] && __dst[4] == v121[4];
          if (v55 || (sub_1C9064C2C() & 1) != 0)
          {
            if (__dst[6])
            {
              if (!v121[6])
              {
                goto LABEL_231;
              }

              v56 = __dst[5] == v121[5] && __dst[6] == v121[6];
              if (!v56 && (sub_1C9064C2C() & 1) == 0)
              {
                goto LABEL_231;
              }
            }

            else if (v121[6])
            {
              goto LABEL_231;
            }

            if (LOBYTE(__dst[7]) != LOBYTE(v121[7]))
            {
              goto LABEL_231;
            }

            if (__dst[9])
            {
              if (!v121[9])
              {
                goto LABEL_231;
              }

              v59 = __dst[8] == v121[8] && __dst[9] == v121[9];
              if (!v59 && (sub_1C9064C2C() & 1) == 0)
              {
                goto LABEL_231;
              }
            }

            else if (v121[9])
            {
              goto LABEL_231;
            }

            if (__dst[11])
            {
              if (v121[11])
              {
                if (__dst[10] == v121[10] && __dst[11] == v121[11])
                {
                  swift_retain_n();

                  v71 = OUTLINED_FUNCTION_82_0();
                  sub_1C8D3EFB8(v71, v72);
                  sub_1C8CC1340(__dst, __src);
                  v73 = OUTLINED_FUNCTION_82_0();
                  sub_1C8CC1340(v73, v74);
                }

                else
                {
                  v65 = sub_1C9064C2C();
                  swift_retain_n();

                  v66 = OUTLINED_FUNCTION_82_0();
                  sub_1C8D3EFB8(v66, v67);
                  sub_1C8CC1340(__dst, __src);
                  v68 = OUTLINED_FUNCTION_82_0();
                  sub_1C8CC1340(v68, v69);
                  if ((v65 & 1) == 0)
                  {
                    sub_1C8CC15FC(v121);
                    sub_1C8CC15FC(__dst);
                    goto LABEL_224;
                  }
                }

LABEL_220:
                v79 = LOBYTE(__dst[12]);
                v80 = LOBYTE(v121[12]);
                sub_1C8CC15FC(v121);
                sub_1C8CC15FC(__dst);
                if (v79 == v80)
                {
                  v103 = v123[0];
                  memcpy(v118, &v123[2], sizeof(v118));
                  v101 = v121[13];
                  v81 = v121[14];
                  memcpy(v117, &v121[15], sizeof(v117));
                  if (v123[1])
                  {
                    __src[0] = v123[0];
                    __src[1] = v123[1];
                    v99 = v123[1];
                    OUTLINED_FUNCTION_187_0();
                    memcpy(v116, __src, 0x61uLL);
                    v82 = v81;
                    if (v81)
                    {
                      memcpy(&v112[2], &v121[15], 0x51uLL);
                      v112[0] = v101;
                      v112[1] = v81;
                      sub_1C8D3F068();
                      sub_1C8D3F068();
                      sub_1C8D3F068();
                      v83 = static ContainerDefinition.== infix(_:_:)(v116);
                      memcpy(v113, v112, 0x61uLL);
                      sub_1C8CC15FC(v113);
                      memcpy(v114, v116, 0x61uLL);
                      sub_1C8CC15FC(v114);
                      v115[0] = v103;
                      v115[1] = v99;
                      memcpy(&v115[2], v118, 0x51uLL);
                      sub_1C8D3F0C4(v115, &qword_1EC312EF8, &unk_1C90839D0);
                      if ((v83 & 1) == 0)
                      {
                        goto LABEL_224;
                      }

LABEL_235:
                      if (v108 == v121[26] && v48 == v121[27])
                      {

                        sub_1C8D3F014(v121);
                        goto LABEL_253;
                      }

                      v85 = sub_1C9064C2C();

                      sub_1C8D3F014(v121);
                      if (v85)
                      {
LABEL_253:

                        v5 = v110;
                        goto LABEL_250;
                      }

LABEL_230:

                      goto LABEL_231;
                    }

                    sub_1C8D3F068();
                    sub_1C8D3F068();
                    sub_1C8D3F068();

                    memcpy(v115, v116, 0x61uLL);
                    sub_1C8CC15FC(v115);
                  }

                  else
                  {
                    if (!v121[14])
                    {
                      __src[0] = v123[0];
                      __src[1] = 0;
                      OUTLINED_FUNCTION_187_0();
                      sub_1C8D3F068();
                      sub_1C8D3F068();
                      sub_1C8D3F0C4(__src, &qword_1EC312EF8, &unk_1C90839D0);
                      goto LABEL_235;
                    }

                    v82 = v121[14];
                    v99 = 0;
                    sub_1C8D3F068();
                    sub_1C8D3F068();
                  }

                  __src[0] = v103;
                  __src[1] = v99;
                  memcpy(&__src[2], v118, 0x51uLL);
                  __src[13] = v101;
                  __src[14] = v82;
                  memcpy(v120, v117, sizeof(v120));
                  sub_1C8D3F0C4(__src, &qword_1EC313988, &qword_1C906F410);
                }

                else
                {
LABEL_224:
                }

                sub_1C8D3F014(v121);
                goto LABEL_230;
              }
            }

            else
            {
              if (!v121[11])
              {
                swift_retain_n();

                v75 = OUTLINED_FUNCTION_82_0();
                sub_1C8D3EFB8(v75, v76);
                sub_1C8CC1340(__dst, __src);
                v77 = OUTLINED_FUNCTION_82_0();
                sub_1C8CC1340(v77, v78);
                swift_bridgeObjectRelease_n();
                goto LABEL_220;
              }
            }
          }

LABEL_231:
          v5 = v110;
LABEL_232:
          v28 = (v28 + 1) & v33;
          OUTLINED_FUNCTION_161_0();
        }

        while ((v30 & v31) != 0);
      }

      *(v5 + 8 * v29) = v30 | v31;
      *(*(v3 + 48) + 8 * v28) = v111;
      v86 = *(v3 + 16);
      v87 = __OFADD__(v86, 1);
      v88 = v86 + 1;
      if (!v87)
      {
        *(v3 + 16) = v88;
        goto LABEL_250;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_254:

    OUTLINED_FUNCTION_163();
  }
}

uint64_t sub_1C8D39264(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313978, &qword_1C906F3F8);
  result = sub_1C906475C();
  v3 = result;
  v19 = *(a1 + 16);
  if (!v19)
  {
LABEL_15:

    return v3;
  }

  v4 = 0;
  v5 = result + 56;
  while (v4 < *(a1 + 16))
  {
    v6 = v4 + 1;
    v7 = *(a1 + 32 + 8 * v4);
    v21 = v7;
    v8 = *(v3 + 40);
    v20[9] = v7;
    sub_1C9064D7C();

    TypeInstance.hash(into:)();
    result = sub_1C9064DBC();
    v9 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v5 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) == 0)
      {
        break;
      }

      v20[0] = *(*(v3 + 48) + 8 * v10);

      static TypeInstance.== infix(_:_:)(v20, &v21);
      v15 = v14;

      if (v15)
      {

        goto LABEL_12;
      }

      result = v10 + 1;
    }

    *(v5 + 8 * v11) = v13 | v12;
    *(*(v3 + 48) + 8 * v10) = v7;
    v16 = *(v3 + 16);
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      goto LABEL_17;
    }

    *(v3 + 16) = v18;
LABEL_12:
    v4 = v6;
    if (v6 == v19)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_1C8D39400()
{
  OUTLINED_FUNCTION_184_0();
  v1 = v0;
  if (!*(v0 + 16))
  {
    goto LABEL_41;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313950, &qword_1C906F3E8);
  v2 = sub_1C906475C();
  v3 = v2;
  v26 = *(v1 + 16);
  if (!v26)
  {
    goto LABEL_41;
  }

  v4 = 0;
  v5 = v2 + 56;
  v24 = v1;
  v25 = v1 + 32;
  while (1)
  {
    if (v4 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_43;
    }

    v6 = *(v25 + v4);
    v7 = *(v3 + 40);
    sub_1C9064D7C();
    if (v6 == 5)
    {
      MEMORY[0x1CCA82810](0);
    }

    else
    {
      MEMORY[0x1CCA82810](1);
      if (v6 == 4)
      {
        sub_1C9064D9C();
      }

      else
      {
        sub_1C9064D9C();
        OUTLINED_FUNCTION_166_1();
        switch(v6)
        {
          case 1:
            OUTLINED_FUNCTION_121();
            break;
          case 2:
            OUTLINED_FUNCTION_165_0();
            break;
          case 3:
            OUTLINED_FUNCTION_66_2();
            break;
          default:
            break;
        }

        sub_1C9063FBC();
      }
    }

    v8 = sub_1C9064DBC();
    v9 = ~(-1 << *(v3 + 32));
    v10 = v8 & v9;
    v11 = (v8 & v9) >> 6;
    v12 = *(v5 + 8 * v11);
    v13 = 1 << (v8 & v9);
    if ((v13 & v12) == 0)
    {
      break;
    }

    while (1)
    {
      v14 = *(v3 + 48);
      v15 = *(v14 + v10);
      if (v15 == 5)
      {
        if (v6 == 5)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      if (v6 != 5)
      {
        break;
      }

LABEL_35:
      v10 = (v10 + 1) & v9;
      v11 = v10 >> 6;
      v12 = *(v5 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if ((v12 & (1 << v10)) == 0)
      {
        goto LABEL_36;
      }
    }

    if (v15 == 4)
    {
      if (v6 == 4)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v16 = 0xE700000000000000;
    v17 = 0x6D756E45707061;
    switch(*(v14 + v10))
    {
      case 1:
        v17 = 0x6E456E6F69746361;
        v16 = 0xEA00000000006D75;
        break;
      case 2:
        v17 = 0x4572656767697274;
        v16 = 0xEB000000006D756ELL;
        break;
      case 3:
        v17 = 0x6E776F6E6B6E75;
        break;
      default:
        break;
    }

    v1 = 0xE700000000000000;
    v18 = 0x6D756E45707061;
    switch(v6)
    {
      case 0:
        break;
      case 1:
        v18 = 0x6E456E6F69746361;
        v1 = 0xEA00000000006D75;
        break;
      case 2:
        v18 = 0x4572656767697274;
        v1 = 0xEB000000006D756ELL;
        break;
      case 3:
        v18 = 0x6E776F6E6B6E75;
        break;
      default:
        goto LABEL_35;
    }

    if (v17 != v18 || v16 != v1)
    {
      v20 = sub_1C9064C2C();

      v1 = v24;
      if (v20)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v1 = v24;
LABEL_38:
    if (++v4 == v26)
    {
LABEL_41:

      OUTLINED_FUNCTION_182();
      return;
    }
  }

LABEL_36:
  *(v5 + 8 * v11) = v12 | v13;
  *(*(v3 + 48) + v10) = v6;
  v21 = *(v3 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v3 + 16) = v23;
    goto LABEL_38;
  }

LABEL_43:
  __break(1u);
}

uint64_t sub_1C8D3977C(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C9064DBC();
  v3 = *(a2 + 56);
  v4 = *(a2 + 32);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v11 = 0;
  for (i = 0; v7; v11 ^= v15)
  {
    v13 = i;
LABEL_7:
    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v16 = *(*(a2 + 48) + ((v13 << 9) | (8 * v14)));
    sub_1C9064D7C();

    TypedValue.hash(into:)();
    v15 = sub_1C9064DBC();
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return MEMORY[0x1CCA82810](v11);
    }

    v7 = *(a2 + 56 + 8 * v13);
    ++i;
    if (v7)
    {
      i = v13;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8D398B8(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C9064DBC();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v12)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v13[9] = *(*(a2 + 48) + ((v10 << 9) | (8 * v11)));
    sub_1C9064D7C();

    TypeInstance.hash(into:)(v13);
    v12 = sub_1C9064DBC();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1CCA82810](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8D39A08(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C9064DBC();
  v3 = *(a2 + 56);
  v4 = *(a2 + 32);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  if (v7)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return MEMORY[0x1CCA82810](v11);
    }

    v7 = *(a2 + 56 + 8 * v13);
    ++v12;
    if (v7)
    {
      v12 = v13;
LABEL_6:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = *(a2 + 48) + ((v12 << 10) | (16 * v14));
      v16 = *v15;
      v17 = *(v15 + 8);
      sub_1C9064D7C();
      switch(v17 >> 5)
      {
        case 1u:
          v18 = 3;
          goto LABEL_14;
        case 2u:
          v19 = 4;
          goto LABEL_11;
        case 3u:
          v19 = 5;
LABEL_11:
          MEMORY[0x1CCA82810](v19);

          sub_1C8D3977C(__srca, v16);
          sub_1C9064D9C();
          goto LABEL_15;
        case 4u:
          v18 = 6;
          goto LABEL_14;
        case 5u:
          v18 = 7;
          goto LABEL_14;
        case 6u:
          MEMORY[0x1CCA82810]((v16 | v17 ^ 0xC0) != 0);
          goto LABEL_15;
        default:
          v18 = 2;
LABEL_14:
          MEMORY[0x1CCA82810](v18);

          sub_1C8D3977C(__srca, v16);
LABEL_15:
          v20 = sub_1C9064DBC();
          result = sub_1C8D07168(v16, v17);
          v11 ^= v20;
          if (!v7)
          {
            continue;
          }

          goto LABEL_6;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8D39BF8(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C9064DBC();
  v3 = *(a2 + 56);
  v4 = *(a2 + 32);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v11 = 0;
  for (i = 0; v7; v11 ^= v18)
  {
    v13 = i;
LABEL_7:
    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v15 = (*(a2 + 48) + ((v13 << 10) | (16 * v14)));
    v16 = *v15;
    v17 = v15[1];
    sub_1C9064D7C();

    sub_1C9063FBC();
    v18 = sub_1C9064DBC();
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return MEMORY[0x1CCA82810](v11);
    }

    v7 = *(a2 + 56 + 8 * v13);
    ++i;
    if (v7)
    {
      i = v13;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8D39D38(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1C90646DC();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1C8D39D94@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, void *a4@<X8>)
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
    *a4 = *(*(a3 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_1C8D39DEC()
{
  result = qword_1EDA66980;
  if (!qword_1EDA66980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66980);
  }

  return result;
}

unint64_t sub_1C8D39E40()
{
  result = qword_1EDA6B9F0;
  if (!qword_1EDA6B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B9F0);
  }

  return result;
}

unint64_t sub_1C8D39ECC()
{
  result = qword_1EDA69B38;
  if (!qword_1EDA69B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B38);
  }

  return result;
}

unint64_t sub_1C8D39F20()
{
  result = qword_1EC313578;
  if (!qword_1EC313578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313578);
  }

  return result;
}

unint64_t sub_1C8D39F74()
{
  result = qword_1EDA63610;
  if (!qword_1EDA63610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63610);
  }

  return result;
}

unint64_t sub_1C8D39FC8()
{
  result = qword_1EDA63618;
  if (!qword_1EDA63618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63618);
  }

  return result;
}

unint64_t sub_1C8D3A01C()
{
  result = qword_1EDA635F8;
  if (!qword_1EDA635F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA635F8);
  }

  return result;
}

unint64_t sub_1C8D3A070()
{
  result = qword_1EDA62FB8;
  if (!qword_1EDA62FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62FB8);
  }

  return result;
}

unint64_t sub_1C8D3A0C4()
{
  result = qword_1EDA69B10;
  if (!qword_1EDA69B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B10);
  }

  return result;
}

unint64_t sub_1C8D3A118()
{
  result = qword_1EDA62FB0;
  if (!qword_1EDA62FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62FB0);
  }

  return result;
}

unint64_t sub_1C8D3A19C()
{
  result = qword_1EDA69B50;
  if (!qword_1EDA69B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B50);
  }

  return result;
}

unint64_t sub_1C8D3A1F0()
{
  result = qword_1EDA635F0;
  if (!qword_1EDA635F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA635F0);
  }

  return result;
}

unint64_t sub_1C8D3A244()
{
  result = qword_1EDA635E8;
  if (!qword_1EDA635E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA635E8);
  }

  return result;
}

unint64_t sub_1C8D3A300()
{
  result = qword_1EC3135C8;
  if (!qword_1EC3135C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3135C8);
  }

  return result;
}

unint64_t sub_1C8D3A354()
{
  result = qword_1EC3135E0;
  if (!qword_1EC3135E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3135E0);
  }

  return result;
}

unint64_t sub_1C8D3A3A8()
{
  result = qword_1EC3135F8;
  if (!qword_1EC3135F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3135F8);
  }

  return result;
}

unint64_t sub_1C8D3A3FC()
{
  result = qword_1EC313600;
  if (!qword_1EC313600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313600);
  }

  return result;
}

unint64_t sub_1C8D3A450()
{
  result = qword_1EC313608;
  if (!qword_1EC313608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313608);
  }

  return result;
}

unint64_t sub_1C8D3A4A4()
{
  result = qword_1EC313610;
  if (!qword_1EC313610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313610);
  }

  return result;
}

unint64_t sub_1C8D3A4F8()
{
  result = qword_1EC313620;
  if (!qword_1EC313620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313620);
  }

  return result;
}

unint64_t sub_1C8D3A54C()
{
  result = qword_1EC313628;
  if (!qword_1EC313628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313628);
  }

  return result;
}

unint64_t sub_1C8D3A5A0()
{
  result = qword_1EC313630;
  if (!qword_1EC313630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313630);
  }

  return result;
}

unint64_t sub_1C8D3A5F4()
{
  result = qword_1EDA6D4A0;
  if (!qword_1EDA6D4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC312558, &qword_1C9066990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D4A0);
  }

  return result;
}

unint64_t sub_1C8D3A658()
{
  result = qword_1EC313648;
  if (!qword_1EC313648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313648);
  }

  return result;
}

unint64_t sub_1C8D3A6AC()
{
  result = qword_1EC313650;
  if (!qword_1EC313650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313650);
  }

  return result;
}

unint64_t sub_1C8D3A700()
{
  result = qword_1EC313658;
  if (!qword_1EC313658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313658);
  }

  return result;
}

unint64_t sub_1C8D3A754()
{
  result = qword_1EDA60A68;
  if (!qword_1EDA60A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A68);
  }

  return result;
}

unint64_t sub_1C8D3A7A8()
{
  result = qword_1EC313660;
  if (!qword_1EC313660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313660);
  }

  return result;
}

unint64_t sub_1C8D3A858()
{
  result = qword_1EDA60A88;
  if (!qword_1EDA60A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A88);
  }

  return result;
}

unint64_t sub_1C8D3A8DC()
{
  result = qword_1EC313678;
  if (!qword_1EC313678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313678);
  }

  return result;
}

uint64_t sub_1C8D3A930(uint64_t result)
{
  v1 = *(result + 88) & 0x10101010101 | 0xC000000000000000;
  *(result + 56) &= 7uLL;
  *(result + 88) = v1;
  return result;
}

unint64_t sub_1C8D3A958()
{
  result = qword_1EC313680;
  if (!qword_1EC313680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313680);
  }

  return result;
}

uint64_t sub_1C8D3A9AC(uint64_t result)
{
  v1 = *(result + 88) & 0x10101010101 | 0xA000000000000000;
  *(result + 56) &= 7uLL;
  *(result + 88) = v1;
  return result;
}

unint64_t sub_1C8D3A9D8()
{
  result = qword_1EC313688;
  if (!qword_1EC313688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313688);
  }

  return result;
}

uint64_t sub_1C8D3AA2C(uint64_t result)
{
  v1 = *(result + 88) & 0x10101010101 | 0x8000000000000000;
  *(result + 56) &= 7uLL;
  *(result + 88) = v1;
  return result;
}

unint64_t sub_1C8D3AA54()
{
  result = qword_1EDA60A60;
  if (!qword_1EDA60A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A60);
  }

  return result;
}

uint64_t sub_1C8D3AAA8(uint64_t result)
{
  v1 = *(result + 88) & 0x10101010101 | 0x6000000000000000;
  *(result + 56) &= 7uLL;
  *(result + 88) = v1;
  return result;
}

unint64_t sub_1C8D3AAD0()
{
  result = qword_1EC313690;
  if (!qword_1EC313690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313690);
  }

  return result;
}

uint64_t sub_1C8D3AB24(uint64_t result)
{
  v1 = *(result + 88) & 0x10101010101 | 0x2000000000000000;
  *(result + 56) &= 7uLL;
  *(result + 88) = v1;
  return result;
}

unint64_t sub_1C8D3AB4C()
{
  result = qword_1EDA60A80;
  if (!qword_1EDA60A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A80);
  }

  return result;
}

uint64_t sub_1C8D3ABA0(uint64_t result)
{
  v1 = *(result + 88) & 0x10101010101;
  *(result + 56) &= 7uLL;
  *(result + 88) = v1;
  return result;
}

unint64_t sub_1C8D3AC18()
{
  result = qword_1EDA69560;
  if (!qword_1EDA69560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69560);
  }

  return result;
}

unint64_t sub_1C8D3AC6C()
{
  result = qword_1EC3136D0;
  if (!qword_1EC3136D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3136D0);
  }

  return result;
}

unint64_t sub_1C8D3ACC0()
{
  result = qword_1EC3136D8;
  if (!qword_1EC3136D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3136D8);
  }

  return result;
}

unint64_t sub_1C8D3AD14()
{
  result = qword_1EDA69598;
  if (!qword_1EDA69598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69598);
  }

  return result;
}

unint64_t sub_1C8D3AD68()
{
  result = qword_1EDA62FD0;
  if (!qword_1EDA62FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62FD0);
  }

  return result;
}

unint64_t sub_1C8D3ADBC()
{
  result = qword_1EDA695B0;
  if (!qword_1EDA695B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA695B0);
  }

  return result;
}

unint64_t sub_1C8D3AE10()
{
  result = qword_1EDA62FC8;
  if (!qword_1EDA62FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62FC8);
  }

  return result;
}

unint64_t sub_1C8D3AE64()
{
  result = qword_1EDA62FC0;
  if (!qword_1EDA62FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62FC0);
  }

  return result;
}

unint64_t sub_1C8D3AEB8()
{
  result = qword_1EDA69C98;
  if (!qword_1EDA69C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69C98);
  }

  return result;
}

unint64_t sub_1C8D3AF10()
{
  result = qword_1EDA6A020;
  if (!qword_1EDA6A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6A020);
  }

  return result;
}

unint64_t sub_1C8D3AF68()
{
  result = qword_1EC313718;
  if (!qword_1EC313718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313718);
  }

  return result;
}

unint64_t sub_1C8D3AFC0()
{
  result = qword_1EC313720;
  if (!qword_1EC313720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313720);
  }

  return result;
}

unint64_t sub_1C8D3B024()
{
  result = qword_1EC313728;
  if (!qword_1EC313728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313728);
  }

  return result;
}

unint64_t sub_1C8D3B07C()
{
  result = qword_1EC313730;
  if (!qword_1EC313730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313730);
  }

  return result;
}

unint64_t sub_1C8D3B0D4()
{
  result = qword_1EC313738;
  if (!qword_1EC313738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313738);
  }

  return result;
}

unint64_t sub_1C8D3B12C()
{
  result = qword_1EC313740;
  if (!qword_1EC313740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313740);
  }

  return result;
}

unint64_t sub_1C8D3B184()
{
  result = qword_1EC313748;
  if (!qword_1EC313748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313748);
  }

  return result;
}

unint64_t sub_1C8D3B1DC()
{
  result = qword_1EC313750;
  if (!qword_1EC313750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313750);
  }

  return result;
}

unint64_t sub_1C8D3B234()
{
  result = qword_1EC313758;
  if (!qword_1EC313758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313758);
  }

  return result;
}

unint64_t sub_1C8D3B28C()
{
  result = qword_1EC313760;
  if (!qword_1EC313760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313760);
  }

  return result;
}

unint64_t sub_1C8D3B2E4()
{
  result = qword_1EC313768;
  if (!qword_1EC313768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313768);
  }

  return result;
}

unint64_t sub_1C8D3B33C()
{
  result = qword_1EC313770;
  if (!qword_1EC313770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313770);
  }

  return result;
}

unint64_t sub_1C8D3B394()
{
  result = qword_1EC313778;
  if (!qword_1EC313778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313778);
  }

  return result;
}

uint64_t sub_1C8D3B3E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7A && *(a1 + 8))
    {
      v2 = *a1 + 121;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x79)
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

uint64_t sub_1C8D3B43C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
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

uint64_t get_enum_tag_for_layout_string_7ToolKit15QueryDefinitionV18PredicateTemplatesV0E8MetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_7ToolKit20ValueSearchPredicateV8TemplateVSg(void *a1)
{
  v1 = ((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x79)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C8D3B520(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56) >> 3;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1C8D3B568(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 120) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 136) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 0;
      *(a1 + 56) = 8 * -a2;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0;
      return result;
    }

    *(a1 + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C8D3B5E4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 88) & 0x10101010101 | (a2 << 61);
  *(result + 56) &= 7uLL;
  *(result + 88) = v2;
  return result;
}

uint64_t sub_1C8D3B624(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 72);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1C8D3B678(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C8D3B70C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 57))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 56);
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

uint64_t sub_1C8D3B74C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C8D3B7B8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1C8D3B80C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1C8D3B8A0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 10))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1C8D3B8F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RestrictionContext.KeyboardTraitsDefinition(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 6))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 3);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
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

uint64_t storeEnumTagSinglePayload for RestrictionContext.KeyboardTraitsDefinition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *(result + 3) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RestrictionContext.KeyboardTraitsDefinition.KeyboardType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RestrictionContext.KeyboardTraitsDefinition.KeyboardType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
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

uint64_t sub_1C8D3BBB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_80(-1);
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return OUTLINED_FUNCTION_80(*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 > 3)
  {
    return OUTLINED_FUNCTION_80(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_80(-1);
  }
}

uint64_t sub_1C8D3BBF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C8D3BC60(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_80(-1);
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
      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 4);
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

  return OUTLINED_FUNCTION_80(v8);
}

_BYTE *sub_1C8D3BCE4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_96_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_94_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_95(result, v6);
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
          result = OUTLINED_FUNCTION_349(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C8D3BDF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1C8D3BE30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RestrictionContext.KeyboardTraitsDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for RestrictionContext.ValueSetDefinition.Inner.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C8D3C0C8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_80(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_80((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_80(v8);
}

_BYTE *sub_1C8D3C14C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_96_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_94_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_95(result, v6);
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
          result = OUTLINED_FUNCTION_349(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C8D3C2AC()
{
  result = qword_1EC313780;
  if (!qword_1EC313780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313780);
  }

  return result;
}

unint64_t sub_1C8D3C304()
{
  result = qword_1EC313788;
  if (!qword_1EC313788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313788);
  }

  return result;
}

unint64_t sub_1C8D3C35C()
{
  result = qword_1EC313790;
  if (!qword_1EC313790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313790);
  }

  return result;
}

unint64_t sub_1C8D3C3B4()
{
  result = qword_1EC313798;
  if (!qword_1EC313798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC313798);
  }

  return result;
}

unint64_t sub_1C8D3C40C()
{
  result = qword_1EC3137A0;
  if (!qword_1EC3137A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3137A0);
  }

  return result;
}

unint64_t sub_1C8D3C464()
{
  result = qword_1EC3137A8;
  if (!qword_1EC3137A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3137A8);
  }

  return result;
}

unint64_t sub_1C8D3C4BC()
{
  result = qword_1EC3137B0;
  if (!qword_1EC3137B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3137B0);
  }

  return result;
}

unint64_t sub_1C8D3C514()
{
  result = qword_1EC3137B8;
  if (!qword_1EC3137B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3137B8);
  }

  return result;
}

unint64_t sub_1C8D3C56C()
{
  result = qword_1EC3137C0;
  if (!qword_1EC3137C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3137C0);
  }

  return result;
}

unint64_t sub_1C8D3C5C4()
{
  result = qword_1EC3137C8;
  if (!qword_1EC3137C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3137C8);
  }

  return result;
}

unint64_t sub_1C8D3C61C()
{
  result = qword_1EC3137D0;
  if (!qword_1EC3137D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3137D0);
  }

  return result;
}

unint64_t sub_1C8D3C674()
{
  result = qword_1EC3137D8;
  if (!qword_1EC3137D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3137D8);
  }

  return result;
}

unint64_t sub_1C8D3C6CC()
{
  result = qword_1EC3137E0;
  if (!qword_1EC3137E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3137E0);
  }

  return result;
}

unint64_t sub_1C8D3C724()
{
  result = qword_1EC3137E8;
  if (!qword_1EC3137E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3137E8);
  }

  return result;
}

unint64_t sub_1C8D3C77C()
{
  result = qword_1EC3137F0;
  if (!qword_1EC3137F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3137F0);
  }

  return result;
}