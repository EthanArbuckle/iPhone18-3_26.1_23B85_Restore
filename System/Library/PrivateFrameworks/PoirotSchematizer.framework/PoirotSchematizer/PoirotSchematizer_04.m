void (*SchematizedDataComposer.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x70uLL);
  }

  *a1 = v7;
  v7[12] = a3;
  v7[13] = v3;
  v7[11] = a2;
  v9 = *v3;
  v10 = *(v3 + 2);
  v7[10] = SchematizedDataComposer.subscript.getter(a2, a3);
  return sub_1D8C5D354;
}

void sub_1D8C5D354(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 80);
  v3 = *v4;
  v5 = *(*a1 + 96);
  v6 = *(*a1 + 104);
  v7 = *(*a1 + 88);
  if (a2)
  {
    if (v3)
    {
      *v2 = v3;
      v2[1] = 0;
      v2[2] = 0;
      v2[3] = 0;
      *(v2 + 16) = 0x8000;

      v8 = *(v6 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *(v6 + 16);
      sub_1D8C7590C(v2, v7, v5, isUniquelyReferenced_nonNull_native);

      *(v6 + 16) = v15;
    }

    else
    {
      v12 = *(*a1 + 96);

      sub_1D8C75164(v7, v5, &v15);

      sub_1D8C31D74(v15, v16, v17, v18, v19);
    }

    v13 = *v4;
  }

  else if (v3)
  {
    v2[5] = v3;
    v2[6] = 0;
    v2[7] = 0;
    v2[8] = 0;
    *(v2 + 36) = 0x8000;

    v10 = *(v6 + 16);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v6 + 16);
    sub_1D8C7590C((v2 + 5), v7, v5, v11);

    *(v6 + 16) = v15;
  }

  else
  {
    v14 = *(*a1 + 96);

    sub_1D8C75164(v7, v5, &v15);

    sub_1D8C31D74(v15, v16, v17, v18, v19);
  }

  free(v2);
}

uint64_t sub_1D8C5D4E0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  ObjectType = swift_getObjectType();
  v10 = *(a1 + 8);
  v11 = *(v10 + 8);
  v91 = ObjectType;
  v12 = v11(ObjectType, v10);
  v14 = *a2;
  if (!*(*a2 + 16))
  {

    goto LABEL_7;
  }

  v86 = v11;
  v87 = v10;
  v15 = sub_1D8C4668C(v12, v13);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_7:
    *a5 = 0u;
    *(a5 + 16) = 0u;
    v32 = -256;
LABEL_8:
    *(a5 + 32) = v32;
    return result;
  }

  v19 = *(v14 + 56) + 40 * v15;
  v20 = *(a1 + 16);
  v81 = *v19;
  v82 = *(v19 + 8);
  v83 = *(v19 + 16);
  v84 = *(v19 + 24);
  v85 = *(v19 + 32);
  sub_1D8C60608(*v19, v82, v83, v84, v85);
  if (v20(v91, a1))
  {
    if ((v85 & 0x80000000) == 0)
    {
      v92 = 0;
      v93 = 0xE000000000000000;
      sub_1D8C85124();
      MEMORY[0x1DA7255C0](0x3A6567617373654DLL, 0xE900000000000020);
      swift_getObjectType();
      MessageSchemaDescribing.asPublic()(a4, &v97);
      v21 = v98;
      v22 = swift_getObjectType();
      v23 = (*(*(v21 + 8) + 8))(v22);
      v25 = v24;
      swift_unknownObjectRelease();
      MEMORY[0x1DA7255C0](v23, v25);

      MEMORY[0x1DA7255C0](0xD000000000000011, 0x80000001D8C8C0E0);
      v26 = v86(v91, v87);
      MEMORY[0x1DA7255C0](v26);

      MEMORY[0x1DA7255C0](0xD00000000000001ALL, 0x80000001D8C8C100);
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1D8C603DC();
      swift_allocError();
      v30 = 3;
      v31 = v81;
LABEL_29:
      *v29 = v27;
      *(v29 + 8) = v28;
      *(v29 + 16) = v30;
      swift_willThrow();
      return sub_1D8C31D88(v31, v82, v83, v84, v85);
    }

    v41 = *(v81 + 16);
    if (v41)
    {
      v43 = *(v81 + 32);
      v42 = *(v81 + 40);
      v44 = *(v81 + 56);
      v80 = *(v81 + 48);
      v45 = *(v81 + 64);
      v46 = *(v81 + 65);
      sub_1D8C60608(v81, v82, v83, v84, v85);
      v89 = v43;
      v90 = v44;
      sub_1D8C5C2AC(v43, v42, v80, v44, v45, v46);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = v81;
      if (!isUniquelyReferenced_nonNull_native || (v48 = v81, (v41 - 1) > *(v81 + 24) >> 1))
      {
        v48 = sub_1D8C4ABAC(isUniquelyReferenced_nonNull_native, v41, 1, v81);
        v97 = v48;
      }

      sub_1D8C60618(0, 1, 0);
      if (*(v48 + 2))
      {
        v49 = v86(v91, v87);
        v51 = v50;
        v99[0] = v48;
        memset(&v99[1], 0, 24);
        v100 = 0x8000;
        v52 = *a2;
        v53 = swift_isUniquelyReferenced_nonNull_native();
        v92 = *a2;
        *a2 = 0x8000000000000000;
        sub_1D8C7590C(v99, v49, v51, v53);

        *a2 = v92;
      }

      else
      {

        v78 = v86(v91, v87);
        sub_1D8C75164(v78, v79, &v92);

        sub_1D8C31D74(v92, v93, v94, v95, v96);
      }

      result = sub_1D8C31D88(v81, v82, v83, v84, v85);
      *a5 = v89;
      *(a5 + 8) = v42;
      v32 = v45 | (v46 << 8);
      *(a5 + 16) = v80;
      *(a5 + 24) = v90;
      goto LABEL_8;
    }

    v68 = v86(v91, v87);
    sub_1D8C75164(v68, v69, &v92);

    sub_1D8C31D74(v92, v93, v94, v95, v96);
    result = sub_1D8C31D88(v81, v82, v83, v84, v85);
    goto LABEL_7;
  }

  v33 = (*(a1 + 40))(v91, a1);
  v31 = v81;
  if ((v33 & 0x100000000) != 0)
  {
LABEL_17:
    if ((v85 & 0x80000000) == 0)
    {
      sub_1D8C5C2AC(v81, v82, v83, v84, v85, BYTE1(v85));
      v39 = v86(v91, v87);
      sub_1D8C75164(v39, v40, &v92);

      sub_1D8C31D74(v92, v93, v94, v95, v96);
      result = sub_1D8C31D88(v81, v82, v83, v84, v85);
      *a5 = v81;
      *(a5 + 8) = v82;
      *(a5 + 16) = v83;
      *(a5 + 24) = v84;
      *(a5 + 32) = v85;
      return result;
    }

    v92 = 0;
    v93 = 0xE000000000000000;
    sub_1D8C85124();
    MEMORY[0x1DA7255C0](0x3A6567617373654DLL, 0xE900000000000020);
    swift_getObjectType();
    MessageSchemaDescribing.asPublic()(a4, &v97);
    v62 = v98;
    v63 = swift_getObjectType();
    v64 = (*(*(v62 + 8) + 8))(v63);
    v66 = v65;
    swift_unknownObjectRelease();
    MEMORY[0x1DA7255C0](v64, v66);

    MEMORY[0x1DA7255C0](0xD000000000000010, 0x80000001D8C8C0A0);
    v67 = v86(v91, v87);
    MEMORY[0x1DA7255C0](v67);

    MEMORY[0x1DA7255C0](0xD00000000000001BLL, 0x80000001D8C8C0C0);
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1D8C603DC();
    swift_allocError();
    v30 = 3;
    goto LABEL_29;
  }

  if ((v33 & 0x80000000) != 0 || (v34 = *a3, v35 = v33, v33 >= *(*a3 + 16)))
  {
    v54 = v33;
    sub_1D8C85124();

    v92 = 0x3A6567617373654DLL;
    v93 = 0xE900000000000020;
    swift_getObjectType();
    MessageSchemaDescribing.asPublic()(a4, &v97);
    v55 = v98;
    v56 = swift_getObjectType();
    v57 = (*(*(v55 + 8) + 8))(v56);
    v59 = v58;
    swift_unknownObjectRelease();
    MEMORY[0x1DA7255C0](v57, v59);

    MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
    v60 = v86(v91, v87);
    MEMORY[0x1DA7255C0](v60);

    MEMORY[0x1DA7255C0](0x3A7865646E69202CLL, 0xE900000000000020);
    LODWORD(v97) = v54;
    v61 = sub_1D8C85274();
    MEMORY[0x1DA7255C0](v61);

    v27 = 0x3A6567617373654DLL;
    v28 = 0xE900000000000020;
    sub_1D8C603DC();
    swift_allocError();
    v30 = 1;
    goto LABEL_29;
  }

  if (!v34[2 * v33 + 4])
  {
    v70 = v33;
    sub_1D8C85124();

    v92 = 0x3A6567617373654DLL;
    v93 = 0xE900000000000020;
    swift_getObjectType();
    MessageSchemaDescribing.asPublic()(a4, &v97);
    v71 = v98;
    v72 = swift_getObjectType();
    v73 = (*(*(v71 + 8) + 8))(v72);
    v75 = v74;
    swift_unknownObjectRelease();
    MEMORY[0x1DA7255C0](v73, v75);

    MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
    v76 = v86(v91, v87);
    MEMORY[0x1DA7255C0](v76);

    MEMORY[0x1DA7255C0](0x3A7865646E69202CLL, 0xE900000000000020);
    LODWORD(v97) = v70;
    v77 = sub_1D8C85274();
    MEMORY[0x1DA7255C0](v77);

    v27 = 0x3A6567617373654DLL;
    v28 = 0xE900000000000020;
    sub_1D8C603DC();
    swift_allocError();
    v30 = 2;
    goto LABEL_29;
  }

  v36 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v34;
  if ((result & 1) == 0)
  {
    result = sub_1D8C6026C(v34);
    v34 = result;
    *a3 = result;
  }

  if (v35 < v34[2])
  {
    v37 = &v34[2 * v35];
    v38 = v37[4];
    v37[4] = 0;
    v37[5] = 0;
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void *sub_1D8C5DED0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1D8C5DF54(void *a1, int64_t a2, char a3)
{
  result = sub_1D8C5E394(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8C5DF74(char *a1, int64_t a2, char a3)
{
  result = sub_1D8C5E288(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D8C5DF94(void *a1, int64_t a2, char a3)
{
  result = sub_1D8C5E4E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D8C5DFB4(void *a1, int64_t a2, char a3)
{
  result = sub_1D8C5E62C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D8C5DFD4(void *a1, int64_t a2, char a3)
{
  result = sub_1D8C5E760(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8C5DFF4(char *a1, int64_t a2, char a3)
{
  result = sub_1D8C5E8A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D8C5E014(void *a1, int64_t a2, char a3)
{
  result = sub_1D8C5E9B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D8C5E034@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 48);
  return sub_1D8C5D4E0(a1, *(v2 + 16), *(v2 + 24), *(v2 + 40), a2);
}

char *sub_1D8C5E058(char *a1, int64_t a2, char a3)
{
  result = sub_1D8C5EAE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D8C5E078(void *a1, int64_t a2, char a3)
{
  result = sub_1D8C5EC04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D8C5E098(void *a1, int64_t a2, char a3)
{
  result = sub_1D8C5ED4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D8C5E0B8(void *a1, int64_t a2, char a3)
{
  result = sub_1D8C5EE94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D8C5E0D8(void *a1, int64_t a2, char a3)
{
  result = sub_1D8C5EFDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8C5E0F8(char *a1, int64_t a2, char a3)
{
  result = sub_1D8C5F124(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8C5E118(char *a1, int64_t a2, char a3)
{
  result = sub_1D8C5F420(a1, a2, a3, *v3, &qword_1ECAAB168, &qword_1D8C86250);
  *v3 = result;
  return result;
}

char *sub_1D8C5E148(char *a1, int64_t a2, char a3)
{
  result = sub_1D8C5F230(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8C5E168(char *a1, int64_t a2, char a3)
{
  result = sub_1D8C5F324(a1, a2, a3, *v3, &qword_1ECAAB318, &qword_1D8C87BC0);
  *v3 = result;
  return result;
}

char *sub_1D8C5E198(char *a1, int64_t a2, char a3)
{
  result = sub_1D8C5F420(a1, a2, a3, *v3, &qword_1ECAAB310, &qword_1D8C87BB8);
  *v3 = result;
  return result;
}

char *sub_1D8C5E1C8(char *a1, int64_t a2, char a3)
{
  result = sub_1D8C5F324(a1, a2, a3, *v3, &qword_1ECAAB308, &qword_1D8C87BB0);
  *v3 = result;
  return result;
}

char *sub_1D8C5E1F8(char *a1, int64_t a2, char a3)
{
  result = sub_1D8C5F420(a1, a2, a3, *v3, &qword_1ECAAB300, &qword_1D8C87BA8);
  *v3 = result;
  return result;
}

char *sub_1D8C5E228(char *a1, int64_t a2, char a3)
{
  result = sub_1D8C5F51C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8C5E248(char *a1, int64_t a2, char a3)
{
  result = sub_1D8C5F620(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8C5E268(char *a1, int64_t a2, char a3)
{
  result = sub_1D8C5F724(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8C5E288(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8C5E394(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB330, &qword_1D8C87BE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB338, &qword_1D8C87BF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8C5E4E4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB178, &unk_1D8C863A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB068, &unk_1D8C87380);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8C5E62C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB2D0, &qword_1D8C87B70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB2D8, &qword_1D8C87B78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8C5E760(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB2E0, &unk_1D8C87B80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB2E8, &unk_1D8C888F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8C5E8A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB1B0, &qword_1D8C86708);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8C5E9B4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB208, &unk_1D8C87C20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB210, &unk_1D8C86770);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8C5EAE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB1C8, &qword_1D8C86728);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8C5EC04(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB340, &qword_1D8C87BF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB348, &unk_1D8C87C00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8C5ED4C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB1A0, &qword_1D8C866E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB0B0, &qword_1D8C866F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8C5EE94(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB2B8, &unk_1D8C87390);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB2C0, &qword_1D8C873A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8C5EFDC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB2A8, &unk_1D8C87370);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB2B0, &unk_1D8C87C10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8C5F124(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB328, &unk_1D8C87BD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8C5F230(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB320, &unk_1D8C87BC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1D8C5F324(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

char *sub_1D8C5F420(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_1D8C5F51C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB2F8, &qword_1D8C87BA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1D8C5F620(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB2F0, &qword_1D8C87B98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1D8C5F724(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB1C0, &qword_1D8C87B90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D8C5F834(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8C7C47C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D8C5F8A0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D8C5F8A0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D8C85264();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D8C84F84();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D8C5FA68(v7, v8, a1, v4);
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
    return sub_1D8C5F998(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D8C5F998(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1D8C852A4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D8C5FA68(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1D8C7C468(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1D8C60044((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1D8C852A4();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1D8C852A4();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D8C4A268(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1D8C4A268((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1D8C60044((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D8C7C468(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1D8C7C3DC(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1D8C852A4(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1D8C60044(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1D8C852A4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1D8C852A4() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

void *sub_1D8C60284(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1D8C603DC()
{
  result = qword_1ECAAB2C8;
  if (!qword_1ECAAB2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB2C8);
  }

  return result;
}

uint64_t sub_1D8C60430(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  if (HIBYTE(a5) != 255)
  {
    return sub_1D8C31D98(result, a2, a3, a4, a5, HIBYTE(a5));
  }

  return result;
}

uint64_t sub_1D8C60444(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  if (HIBYTE(a5) != 255)
  {
    return sub_1D8C5C2AC(result, a2, a3, a4, a5, HIBYTE(a5));
  }

  return result;
}

uint64_t sub_1D8C60474(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF && *(a1 + 34))
  {
    return (*a1 + 15);
  }

  v3 = ((*(a1 + 32) >> 11) & 0xE | (*(a1 + 32) >> 15)) ^ 0xF;
  if (v3 >= 0xE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D8C604C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 15;
    *(result + 8) = 0;
    if (a3 >= 0xF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (((-a2 >> 1) & 7) - 8 * a2) << 12;
    }
  }

  return result;
}

uint64_t sub_1D8C60564(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D8C605AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1D8C60608(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  if (a5 < 0)
  {
  }

  else
  {
    return sub_1D8C5C2AC(a1, a2, a3, a4, a5, HIBYTE(a5));
  }
}

unint64_t sub_1D8C60618(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  v14 = 40 * v12;
  v15 = &v13[40 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8C606EC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
LABEL_28:
    v18 = 1;
    return v18 & 1;
  }

  v9 = 0;
  v10 = a4 & 0xFFFFFFFFFFFFFFLL;
  v11 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      v14 = sub_1D8C85114();
      v16 = v15;
      goto LABEL_15;
    }

    if ((a4 & 0x2000000000000000) != 0)
    {
      v21[0] = a3;
      v21[1] = v10;
      v13 = v21 + v9;
    }

    else
    {
      v12 = v11;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v12 = sub_1D8C85144();
      }

      v13 = (v12 + v9);
    }

    v14 = *v13;
    if ((*v13 & 0x80000000) == 0)
    {
LABEL_14:
      v16 = 1;
      goto LABEL_15;
    }

    v19 = (__clz(v14 ^ 0xFF) - 24);
    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v14 = ((v14 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3F;
        v16 = 3;
      }

      else
      {
        v14 = ((v14 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
        v16 = 4;
      }
    }

    else
    {
      if (v19 == 1)
      {
        goto LABEL_14;
      }

      v14 = v13[1] & 0x3F | ((v14 & 0x1F) << 6);
      v16 = 2;
    }

LABEL_15:
    LODWORD(v21[0]) = v14;
    v17 = a1(v21);
    if (v4)
    {
      return v18 & 1;
    }

    if ((v17 & 1) == 0)
    {
      break;
    }

    v9 += v16;
    if (v9 >= v5)
    {
      goto LABEL_28;
    }
  }

  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1D8C60894()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB388, &unk_1D8C87DF0);
  v13 = sub_1D8C84DD4();
  MEMORY[0x1DA7255C0](0x203A726F72724520, 0xE800000000000000);
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  if (v5 <= 2)
  {
    if (*(v0 + 40))
    {
      if (v5 == 1)
      {
        v8 = *(v0 + 32);
        sub_1D8C85124();
        MEMORY[0x1DA7255C0](0xD000000000000038, 0x80000001D8C8C1B0);
        MEMORY[0x1DA7255C0](v2, v1);
        MEMORY[0x1DA7255C0](41, 0xE100000000000000);
        v7 = sub_1D8C60BA0(0, 0xE000000000000000, v3, v4, v8, v13);

        goto LABEL_15;
      }

      v10 = 0x20676E697373694DLL;
      v9 = 0xED00007865646E69;
LABEL_14:
      v7 = sub_1D8C60BA0(v10, v9, *v0, *(v0 + 8), *(v0 + 16), v13);
      goto LABEL_15;
    }

    v11 = "egative (index: ";
    v10 = 0xD000000000000012;
LABEL_13:
    v9 = v11 | 0x8000000000000000;
    goto LABEL_14;
  }

  if (*(v0 + 40) > 4u)
  {
    if (v5 != 5)
    {
      sub_1D8C85124();

      MEMORY[0x1DA7255C0](0xD00000000000001CLL, 0x80000001D8C8C1F0);
      return v13;
    }

    v9 = 0x80000001D8C8C120;
    v10 = 0xD000000000000011;
    goto LABEL_14;
  }

  if (v5 != 3)
  {
    v11 = "Missing separator";
    v10 = 0xD000000000000017;
    goto LABEL_13;
  }

  sub_1D8C85124();

  v6 = sub_1D8C85274();
  MEMORY[0x1DA7255C0](v6);

  MEMORY[0x1DA7255C0](41, 0xE100000000000000);
  v7 = sub_1D8C60BA0(0xD000000000000020, 0x80000001D8C8C160, v1, v3, v4, v13);

LABEL_15:

  return v7;
}

uint64_t sub_1D8C60BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D8C84EC4();
  v13 = sub_1D8C84EE4();
  v14 = v11;

  MEMORY[0x1DA7255C0](0x6572654820A987E2, 0xA800000000000000);

  MEMORY[0x1DA7255C0](a1, a2);
  MEMORY[0x1DA7255C0](10, 0xE100000000000000);
  MEMORY[0x1DA7255C0](v13, v14);

  MEMORY[0x1DA7255C0](10, 0xE100000000000000);
  MEMORY[0x1DA7255C0](a3, a4);
  return a6;
}

uint64_t sub_1D8C60CC8()
{
  v0 = sub_1D8C84664();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v11 - v7;
  __swift_allocate_value_buffer(v6, qword_1ECAAB350);
  __swift_project_value_buffer(v0, qword_1ECAAB350);
  sub_1D8C84644();
  sub_1D8C84614();
  sub_1D8C84634();
  v9 = *(v1 + 8);
  v9(v5, v0);
  return (v9)(v8, v0);
}

uint64_t sub_1D8C60E00()
{
  v0 = sub_1D8C84664();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v12 - v7;
  __swift_allocate_value_buffer(v6, qword_1ECAAB368);
  __swift_project_value_buffer(v0, qword_1ECAAB368);
  if (qword_1ECAAAFD8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_1ECAAB350);
  (*(v1 + 16))(v8, v9, v0);
  sub_1D8C84624();
  sub_1D8C84634();
  v10 = *(v1 + 8);
  v10(v5, v0);
  return (v10)(v8, v0);
}

uint64_t sub_1D8C60F88(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v78 = sub_1D8C85044();
  v6 = *(v78 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D8C84664();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v13 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    sub_1D8C61920();
    swift_allocError();
    *v61 = 0u;
    *(v61 + 16) = 0u;
    *(v61 + 32) = 0;
    *(v61 + 40) = 6;
    swift_willThrow();
    return v6;
  }

  v14 = objc_allocWithZone(MEMORY[0x1E696AE88]);
  v72 = a1;
  v73 = a2;
  v15 = sub_1D8C84D74();
  v16 = [v14 initWithString_];

  [v16 setCharactersToBeSkipped_];
  v81 = (v10 + 8);
  v75 = (v6 + 8);
  v76 = (v6 + 104);
  v6 = MEMORY[0x1E69E7CC0];
  v74 = *MEMORY[0x1E696A028];
  while (1)
  {
    v19 = sub_1D8C85014();
    if (qword_1ECAAAFE0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v9, qword_1ECAAB368);
    v20 = sub_1D8C85034();
    if (!v21)
    {

      sub_1D8C61920();
      swift_allocError();
      v6 = v73;
      *v65 = v72;
      *(v65 + 8) = v6;
      *(v65 + 24) = 0;
      *(v65 + 32) = 0;
      *(v65 + 16) = v19;
      *(v65 + 40) = 0;
      goto LABEL_46;
    }

    v22 = v21;
    v83 = v20;
    v23 = sub_1D8C84EF4();
    v25 = v24;
    if (qword_1ECAAAFD8 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v9, qword_1ECAAB350);
    *(&v71 - 2) = MEMORY[0x1EEE9AC00](v26);
    v27 = sub_1D8C606EC(sub_1D8C61974, (&v71 - 4), v23, v25);

    if ((v27 & 1) == 0)
    {

      sub_1D8C61920();
      swift_allocError();
      *v66 = v83;
      *(v66 + 8) = v22;
      v6 = v73;
      *(v66 + 16) = v72;
      *(v66 + 24) = v6;
      *(v66 + 32) = v19;
      v67 = 1;
      goto LABEL_45;
    }

    if ([v16 isAtEnd])
    {
LABEL_14:
      v28 = 0;
      v29 = 1;
      goto LABEL_27;
    }

    v30 = [v16 string];
    sub_1D8C84D84();

    sub_1D8C85014();
    v31 = sub_1D8C84EF4();
    v33 = v32;

    if (v31 == 91 && v33 == 0xE100000000000000)
    {
    }

    else
    {
      v34 = sub_1D8C852A4();

      if ((v34 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v79 = v3;
    v80 = v6;
    v35 = [v16 string];
    sub_1D8C84D84();

    sub_1D8C85014();
    sub_1D8C84E54();

    sub_1D8C85024();
    v36 = v82;
    sub_1D8C84604();
    sub_1D8C85034();

    v37 = *v81;
    v38 = v36;
    v39 = v9;
    (*v81)(v38, v9);
    v40 = sub_1D8C85014();
    v41 = v77;
    v42 = v78;
    (*v76)(v77, v74, v78);
    v28 = sub_1D8C85054();
    v44 = v43;
    (*v75)(v41, v42);
    if (v44)
    {

      sub_1D8C61920();
      swift_allocError();
      v6 = v73;
      *v66 = v72;
      *(v66 + 8) = v6;
      *(v66 + 24) = 0;
      *(v66 + 32) = 0;
      *(v66 + 16) = v40;
      v67 = 2;
      goto LABEL_45;
    }

    if (v28 < 0)
    {
      break;
    }

    v45 = v82;
    sub_1D8C84604();
    sub_1D8C85034();

    v9 = v39;
    v37(v45, v39);
    v46 = [v16 isAtEnd];
    v3 = v79;
    v6 = v80;
    if (v46)
    {
      goto LABEL_41;
    }

    v47 = [v16 string];
    sub_1D8C84D84();

    sub_1D8C85014();
    v48 = sub_1D8C84EF4();
    v50 = v49;

    if (v48 == 93 && v50 == 0xE100000000000000)
    {
    }

    else
    {
      v51 = sub_1D8C852A4();

      if ((v51 & 1) == 0)
      {
LABEL_41:

        v68 = v73;

        v6 = sub_1D8C85014();
        sub_1D8C61920();
        swift_allocError();
        *v63 = v72;
        *(v63 + 8) = v68;
        *(v63 + 24) = 0;
        *(v63 + 32) = 0;
        *(v63 + 16) = v6;
        v64 = 4;
        goto LABEL_42;
      }
    }

    v52 = [v16 string];
    sub_1D8C84D84();

    sub_1D8C85014();
    sub_1D8C84E54();

    sub_1D8C85024();
    v29 = 0;
LABEL_27:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D8C4A994(0, *(v6 + 16) + 1, 1, v6);
    }

    v54 = *(v6 + 16);
    v53 = *(v6 + 24);
    if (v54 >= v53 >> 1)
    {
      v6 = sub_1D8C4A994((v53 > 1), v54 + 1, 1, v6);
    }

    *(v6 + 16) = v54 + 1;
    v55 = v6 + 32 * v54;
    *(v55 + 32) = v83;
    *(v55 + 40) = v22;
    *(v55 + 48) = v28;
    *(v55 + 56) = v29;
    if ([v16 isAtEnd])
    {
      goto LABEL_47;
    }

    v56 = v6;
    if ([v16 isAtEnd])
    {
LABEL_37:

      v62 = v73;

      v6 = sub_1D8C85014();
      sub_1D8C61920();
      swift_allocError();
      *v63 = v72;
      *(v63 + 8) = v62;
      *(v63 + 24) = 0;
      *(v63 + 32) = 0;
      *(v63 + 16) = v6;
      v64 = 5;
LABEL_42:
      *(v63 + 40) = v64;
      swift_willThrow();
      goto LABEL_47;
    }

    v57 = [v16 string];
    sub_1D8C84D84();

    sub_1D8C85014();
    v58 = sub_1D8C84EF4();
    v60 = v59;

    if (v58 == 46 && v60 == 0xE100000000000000)
    {
    }

    else
    {
      v17 = sub_1D8C852A4();

      if ((v17 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v18 = [v16 string];
    sub_1D8C84D84();

    sub_1D8C85014();
    sub_1D8C84E54();

    sub_1D8C85024();
    v6 = v56;
  }

  sub_1D8C61920();
  swift_allocError();
  v69 = v72;
  v6 = v73;
  *v66 = v28;
  *(v66 + 8) = v69;
  *(v66 + 16) = v6;
  *(v66 + 24) = v40;
  *(v66 + 32) = 0;
  v67 = 3;
LABEL_45:
  *(v66 + 40) = v67;
LABEL_46:
  swift_willThrow();

LABEL_47:

  return v6;
}

unint64_t sub_1D8C61920()
{
  result = qword_1ECAAB380;
  if (!qword_1ECAAB380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB380);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17PoirotSchematizer16PropertyPathUtilV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 40) & 7u) <= 5)
  {
    return *(a1 + 40) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1D8C619B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 41))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 40);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D8C619F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_1D8C61A48(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 6;
  }

  *(result + 40) = a2;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1D8C61A90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8C61AD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8C61B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1D8C2E858(MEMORY[0x1E69E7CC0]);
  v36 = sub_1D8C2E870(v7);
  ObjectType = swift_getObjectType();
  v9 = (*(a2 + 16))(ObjectType, a2);
  swift_unknownObjectRetain();
  sub_1D8C621D8(v9, &v36, a1, a2);

  swift_unknownObjectRelease();
  if (v3)
  {
    swift_unknownObjectRelease();

    sub_1D8C2C670(0, 0xF000000000000000);
  }

  else
  {
    v11 = v36;
    v12 = *(a2 + 24);

    v13 = v12(ObjectType, a2);
    v35 = a3;
    v34 = v11;
    if (v13)
    {
      v32 = *(v13 + 40);
      v33 = *(v13 + 32);
      sub_1D8C2C5E4(v33, v32);
    }

    else
    {
      v32 = 0xF000000000000000;
      v33 = 0;
    }

    sub_1D8C2C670(0, 0xF000000000000000);
    v14 = (*(a2 + 32))(ObjectType, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB028, &unk_1D8C87F10);
    result = sub_1D8C85214();
    v15 = result;
    v16 = 0;
    v17 = 1 << *(v14 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v14 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = result + 64;
    if (v19)
    {
      while (1)
      {
        v22 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_15:
        v25 = v22 | (v16 << 6);
        v26 = *(*(v14 + 48) + 8 * v25);
        v27 = v15[6];
        v28 = *(*(*(v14 + 56) + 8 * v25) + 32);
        *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        *(v27 + 8 * v25) = v26;
        *(v15[7] + 16 * v25) = v28;
        v29 = v15[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          break;
        }

        v15[2] = v31;
        result = sub_1D8C2C5E4(v28, *(&v28 + 1));
        if (!v19)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v23 = v16;
      while (1)
      {
        v16 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v16 >= v20)
        {

          swift_unknownObjectRelease();

          *v35 = v34;
          v35[1] = v33;
          v35[2] = v32;
          v35[3] = v15;
          return result;
        }

        v24 = *(v14 + 64 + 8 * v16);
        ++v23;
        if (v24)
        {
          v22 = __clz(__rbit64(v24));
          v19 = (v24 - 1) & v24;
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t EnumManifest.init(values:options:valueOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 8) = xmmword_1D8C86390;
  sub_1D8C2E858(MEMORY[0x1E69E7CC0]);
  *a5 = a1;
  sub_1D8C2C670(0, 0xF000000000000000);

  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t EnumManifest.values.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t EnumManifest.options.getter()
{
  v1 = *(v0 + 8);
  sub_1D8C2C5D0(v1, *(v0 + 16));
  return v1;
}

uint64_t EnumManifest.options.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1D8C2C670(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t EnumManifest.valueOptions.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t EnumManifest.nextAvailableValue.getter()
{
  v1 = 0;
  v2 = *v0;
  result = 1;
  v4 = 1 << *(*v0 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v7 = *(v2 + 64);
  v6 = v2 + 64;
  v8 = v5 & v7;
  v9 = (v4 + 63) >> 6;
  if (v8)
  {
    while (1)
    {
      v10 = v1;
LABEL_8:
      v11 = *(*(*v0 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v8)))));
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        break;
      }

      v8 &= v8 - 1;
      if (v13 > result)
      {
        result = v13;
      }

      v1 = v10;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        return result;
      }

      v8 = *(v6 + 8 * v10);
      ++v1;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL _s17PoirotSchematizer12EnumManifestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if ((sub_1D8C4BEF8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3 >> 60 != 15)
  {
    if (v7 >> 60 != 15)
    {
      sub_1D8C2C5D0(v2, v3);
      sub_1D8C2C5D0(v5, v7);
      v9 = sub_1D8C76A90(v2, v3, v5, v7);
      sub_1D8C2C670(v5, v7);
      sub_1D8C2C670(v2, v3);
      if (v9)
      {
        goto LABEL_9;
      }

      return 0;
    }

LABEL_6:
    sub_1D8C2C5D0(v2, v3);
    sub_1D8C2C5D0(v5, v7);
    sub_1D8C2C670(v2, v3);
    sub_1D8C2C670(v5, v7);
    return 0;
  }

  if (v7 >> 60 != 15)
  {
    goto LABEL_6;
  }

  sub_1D8C2C5D0(v2, v3);
  sub_1D8C2C5D0(v5, v7);
  sub_1D8C2C670(v2, v3);
LABEL_9:

  return sub_1D8C4C02C(v4, v6);
}

uint64_t sub_1D8C621D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v38 = a2;
  v39 = v11;
  while (v10)
  {
LABEL_11:
    v15 = *(*(a1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v10)))));
    ObjectType = swift_getObjectType();
    v42 = v15;
    v17 = (*(a4 + 48))(v15, ObjectType);
    if (v5)
    {
    }

    v19 = v17;
    v20 = v18;
    v21 = v7;
    v22 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *a2;
    v43 = *a2;
    *a2 = 0x8000000000000000;
    v26 = sub_1D8C4668C(v19, v20);
    v27 = *(v24 + 16);
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_23;
    }

    v30 = v25;
    if (*(v24 + 24) >= v29)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D8C74800();
      }
    }

    else
    {
      sub_1D8C72EF4(v29, isUniquelyReferenced_nonNull_native);
      v31 = sub_1D8C4668C(v19, v20);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_25;
      }

      v26 = v31;
    }

    v7 = v21;
    v11 = v39;
    if (v30)
    {
      *(v43[7] + 8 * v26) = v42;
    }

    else
    {
      v43[(v26 >> 6) + 8] |= 1 << v26;
      v33 = (v43[6] + 16 * v26);
      *v33 = v19;
      v33[1] = v20;
      *(v43[7] + 8 * v26) = v42;
      v34 = v43[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_24;
      }

      v43[2] = v36;
    }

    v10 &= v10 - 1;
    a2 = v38;
    v13 = *v38;
    *v38 = v43;

    v5 = 0;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
    }

    v10 = *(v7 + 8 * v14);
    ++v12;
    if (v10)
    {
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1D8C85354();
  __break(1u);
  return result;
}

uint64_t sub_1D8C62444(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = a3[2];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v6 = result;
  v7 = *(a2 + 16);
  if (!v7)
  {
    goto LABEL_49;
  }

  v8 = 0;
  v9 = a2 + 32;
  v47 = a2 + 32;
  while (2)
  {
    v10 = *(v9 + 8 * v8);
    while (1)
    {
      v11 = a3[3];
      if ((v11 & 0x8000000000000000) == 0 && v11 >= v4)
      {
        goto LABEL_79;
      }

      v13 = *a3;
      v12 = a3[1];
      if (*a3)
      {
        v14 = v12 - v13;
        if (v11 >= v12 - v13)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_46;
        }

        v14 = 0;
      }

      v15 = *(v13 + v11);
      v16 = v11 + 1;
      if ((v15 & 0x8000000000000000) != 0)
      {
        if (v16 >= v14)
        {
          goto LABEL_46;
        }

        v15 &= 0x7Fu;
        v17 = (v13 + v11 + 1);
        v16 = v11 + 2;
        v18 = 7;
        while (1)
        {
          v19 = *v17++;
          v15 |= (v19 & 0x7F) << v18;
          if ((v19 & 0x80) == 0)
          {
            break;
          }

          if (v16 < v14)
          {
            ++v16;
            v20 = v18 > 0x38;
            v18 += 7;
            if (!v20)
            {
              continue;
            }
          }

          goto LABEL_46;
        }

        a3[3] = v16;
        if (v15 > 0xFFFFFFFE)
        {
          goto LABEL_46;
        }
      }

      else
      {
        a3[3] = v16;
      }

      if (v15 < 8 || (v15 & 6) == 6)
      {
        goto LABEL_46;
      }

      if (v10 == v15 >> 3)
      {
        break;
      }

      result = sub_1D8C452D0(v15);
      if (v3)
      {
        return result;
      }
    }

    result = sub_1D8C29E98(v15);
    if (result != 2)
    {
      sub_1D8C85124();
      MEMORY[0x1DA7255C0](0xD000000000000024, 0x80000001D8C8BFB0);
      sub_1D8C851E4();
      sub_1D8C2F8AC();
      swift_allocError();
      *v28 = 0;
      *(v28 + 8) = 0xE000000000000000;
      v29 = 5;
      goto LABEL_47;
    }

    if (v13)
    {
      v22 = v12 - v13;
      if (v16 >= v12 - v13)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_46;
      }

      v22 = 0;
    }

    v23 = *(v13 + v16);
    v24 = v16 + 1;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_36;
    }

    if (v24 >= v22)
    {
LABEL_46:
      sub_1D8C36A64();
      swift_allocError();
      *v28 = xmmword_1D8C86190;
      v29 = 2;
LABEL_47:
      *(v28 + 16) = v29;
      return swift_willThrow();
    }

    v23 &= 0x7Fu;
    v25 = (v13 + v16 + 1);
    v24 = v16 + 2;
    v26 = 7;
    while (1)
    {
      v27 = *v25++;
      v23 |= (v27 & 0x7F) << v26;
      if ((v27 & 0x80) == 0)
      {
        break;
      }

      if (v24 < v22)
      {
        ++v24;
        v20 = v26 > 0x38;
        v26 += 7;
        if (!v20)
        {
          continue;
        }
      }

      goto LABEL_46;
    }

LABEL_36:
    a3[3] = v24;
    v9 = v47;
    if (v24 < 0)
    {
      goto LABEL_84;
    }

    v4 = v23 + v24;
    if (__CFADD__(v23, v24))
    {
LABEL_85:
      __break(1u);
      return result;
    }

    if (++v8 != v7)
    {
      continue;
    }

    break;
  }

LABEL_49:
  v30 = v6 + 56;
  while (1)
  {
    v31 = a3[3];
    if ((v31 & 0x8000000000000000) == 0 && v31 >= v4)
    {
      break;
    }

    v32 = *a3;
    if (*a3)
    {
      v33 = a3[1] - v32;
      if (v31 >= v33)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if ((v31 & 0x8000000000000000) == 0)
      {
        goto LABEL_46;
      }

      v33 = 0;
    }

    v34 = *(v32 + v31);
    v35 = v31 + 1;
    if ((v34 & 0x8000000000000000) != 0)
    {
      if (v35 >= v33)
      {
        goto LABEL_46;
      }

      v34 &= 0x7Fu;
      v36 = (v32 + v31 + 1);
      v37 = v31 + 2;
      v38 = 7;
      while (1)
      {
        v39 = *v36++;
        v34 |= (v39 & 0x7F) << v38;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        if (v37 < v33)
        {
          ++v37;
          v20 = v38 > 0x38;
          v38 += 7;
          if (!v20)
          {
            continue;
          }
        }

        goto LABEL_46;
      }

      a3[3] = v37;
      if (v34 > 0xFFFFFFFE)
      {
        goto LABEL_46;
      }
    }

    else
    {
      a3[3] = v35;
    }

    if (v34 < 8 || (v34 & 6) == 6)
    {
      goto LABEL_46;
    }

    if (*(v6 + 16))
    {
      v41 = *(v6 + 40);
      v42 = sub_1D8C853A4();
      v43 = -1 << *(v6 + 32);
      v44 = v42 & ~v43;
      if ((*(v30 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
      {
        v45 = ~v43;
        while (*(*(v6 + 48) + 8 * v44) != v34 >> 3)
        {
          v44 = (v44 + 1) & v45;
          if (((*(v30 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        v46 = 0;
        return v34 + (v46 << 32);
      }
    }

LABEL_50:
    result = sub_1D8C452D0(v34);
    if (v3)
    {
      return result;
    }
  }

LABEL_79:
  v34 = 0;
  v46 = 1;
  return v34 + (v46 << 32);
}

uint64_t SchematizedDataComposer.subscript.setter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (!a1)
  {
    sub_1D8C75164(a2, a3, &v20);

    return sub_1D8C31D74(v20, v21, v22, v23, v24);
  }

  if (!(a1 >> 62))
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_15:

    v11 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v20 = v11;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0x8000;
    v16 = *(v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v4 + 16);
    sub_1D8C7590C(&v20, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v19;
    return result;
  }

  v8 = sub_1D8C85204();
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_4:
  v20 = MEMORY[0x1E69E7CC0];
  result = sub_1D8C5E058(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v18 = v3;
    v10 = 0;
    v11 = v20;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1DA725890](v10, a1);
      }

      else
      {
        v12 = *(a1 + 8 * v10 + 32);
      }

      v20 = v11;
      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D8C5E058((v13 > 1), v14 + 1, 1);
        v11 = v20;
      }

      ++v10;
      *(v11 + 16) = v14 + 1;
      v15 = v11 + 40 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 2560;
    }

    while (v8 != v10);

    v4 = v18;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t (*SchematizedDataComposer.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = *v3;
  v6 = *(v3 + 16);
  *a1 = SchematizedDataComposer.subscript.getter(a2, a3);
  return sub_1D8C62D10;
}

{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = *v3;
  v6 = *(v3 + 16);
  *a1 = SchematizedDataComposer.subscript.getter(a2, a3);
  return sub_1D8C638A8;
}

{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = *v3;
  v6 = *(v3 + 16);
  *a1 = SchematizedDataComposer.subscript.getter(a2, a3);
  return sub_1D8C63DAC;
}

{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = *v3;
  v6 = *(v3 + 16);
  *a1 = SchematizedDataComposer.subscript.getter(a2, a3);
  return sub_1D8C64CB0;
}

{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = *v3;
  v6 = *(v3 + 16);
  *a1 = SchematizedDataComposer.subscript.getter(a2, a3);
  return sub_1D8C6510C;
}

{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = *v3;
  v6 = *(v3 + 16);
  *a1 = SchematizedDataComposer.subscript.getter(a2, a3);
  return sub_1D8C6555C;
}

{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = *v3;
  v6 = *(v3 + 16);
  *a1 = SchematizedDataComposer.subscript.getter(a2, a3);
  return sub_1D8C6582C;
}

{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = *v3;
  v6 = *(v3 + 16);
  *a1 = SchematizedDataComposer.subscript.getter(a2, a3);
  return sub_1D8C65C90;
}

{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = *v3;
  v6 = *(v3 + 16);
  *a1 = SchematizedDataComposer.subscript.getter(a2, a3);
  return sub_1D8C66100;
}

{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = *v3;
  v6 = *(v3 + 16);
  *a1 = SchematizedDataComposer.subscript.getter(a2, a3);
  return sub_1D8C66564;
}

{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = *v3;
  v6 = *(v3 + 16);
  *a1 = SchematizedDataComposer.subscript.getter(a2, a3);
  return sub_1D8C669C8;
}

uint64_t sub_1D8C631E4(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *a1;

  return a5(v8, v6, v7);
}

uint64_t sub_1D8C638C0(uint64_t *a1, char a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a1;
  v7 = a1[1];
  if (a2)
  {
    v8 = *a1;

    a3(v6, v7, v5);
  }

  else
  {
    v10 = a1[2];

    return (a3)(v6, v7, v5);
  }
}

uint64_t sub_1D8C65EF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a2;
  if (a1)
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v25 = MEMORY[0x1E69E7CC0];
      sub_1D8C5E058(0, v8, 0);
      v10 = 0;
      v11 = v25;
      v12 = *(v25 + 16);
      v13 = 40 * v12;
      do
      {
        v14 = *(a1 + 32 + 8 * v10);
        v25 = v11;
        v15 = *(v11 + 24);
        v16 = v12 + v10 + 1;
        if (v12 + v10 >= v15 >> 1)
        {
          sub_1D8C5E058((v15 > 1), v12 + v10 + 1, 1);
          v11 = v25;
        }

        ++v10;
        *(v11 + 16) = v16;
        v17 = v11 + v13;
        *(v17 + 32) = v14;
        *(v17 + 40) = 0;
        *(v17 + 48) = 0;
        *(v17 + 56) = 0;
        *(v17 + 64) = 0;
        v13 += 40;
        *(v17 + 65) = a4;
      }

      while (v8 != v10);

      v7 = a2;
      v6 = a3;
    }

    else
    {

      v11 = MEMORY[0x1E69E7CC0];
    }

    v25 = v11;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0x8000;
    v19 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v5 + 16);
    sub_1D8C7590C(&v25, v7, v6, isUniquelyReferenced_nonNull_native);

    *(v5 + 16) = v24;
  }

  else
  {
    sub_1D8C75164(a2, a3, &v25);

    return sub_1D8C31D74(v25, v26, v27, v28, v29);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, void)@<X3>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 2);
  result = a3(*a2, a2[1]);
  *a4 = result;
  return result;
}

uint64_t UnsafeAnyValue.asPublic()@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D8C29EAC(v1, &v27);
  if (v30 <= 4u)
  {
    if (v30 <= 1u)
    {
      if (!v30)
      {
        *a1 = v27;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        return result;
      }

      *a1 = v27;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v4 = 256;
    }

    else if (v30 == 2)
    {
      *a1 = v27;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v4 = 512;
    }

    else if (v30 == 3)
    {
      *a1 = v27;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v4 = 768;
    }

    else
    {
      *a1 = v27;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v4 = 1024;
    }

    goto LABEL_26;
  }

  if (v30 > 7u)
  {
    if (v30 == 8)
    {
      sub_1D8C2AA1C(&v27, v24);
      v9 = v25;
      v10 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      *a1 = (*(v10 + 24))(v9, v10);
      *(a1 + 8) = v11;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v8 = 2048;
    }

    else
    {
      if (v30 != 9)
      {
        v25 = MEMORY[0x1E69E6290];
        v26 = MEMORY[0x1E6969DF8];
        v23 = v27;
        *v24 = v28;
        v14 = __swift_project_boxed_opaque_existential_1(v24, MEMORY[0x1E69E6290]);
        v15 = *v14;
        if (*v14 && (v16 = v14[1], v17 = &v16[-v15], v16 != v15))
        {
          if (v17 <= 14)
          {
            v18 = sub_1D8C45074(*v14, v16);
            v19 = v21 & 0xFFFFFFFFFFFFFFLL;
            swift_unknownObjectRetain();
          }

          else
          {
            swift_unknownObjectRetain();
            if (v17 >= 0x7FFFFFFF)
            {
              v18 = sub_1D8C45134(v15, v16);
              v19 = v22 | 0x8000000000000000;
            }

            else
            {
              v18 = sub_1D8C2B5D0(v15, v16);
              v19 = v20 | 0x4000000000000000;
            }
          }
        }

        else
        {
          swift_unknownObjectRetain();
          v18 = 0;
          v19 = 0xC000000000000000;
        }

        __swift_destroy_boxed_opaque_existential_1(v24);
        swift_unknownObjectRelease();
        type metadata accessor for SchematizedData();
        result = swift_allocObject();
        *(result + 16) = v23;
        *(result + 32) = v18;
        *(result + 40) = v19;
        *a1 = result;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        v4 = 2560;
        goto LABEL_26;
      }

      sub_1D8C2AA1C(&v27, v24);
      v5 = v25;
      v6 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      *a1 = (*(v6 + 16))(v5, v6);
      *(a1 + 8) = v7;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v8 = 2304;
    }

    *(a1 + 32) = v8;
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }

  if (v30 == 5)
  {
    *a1 = v27;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v4 = 1280;
  }

  else
  {
    if (v30 != 6)
    {
      v12 = v29;
      v13 = v28;
      *a1 = v27;
      *(a1 + 16) = v13;
      *(a1 + 32) = v12;
      *(a1 + 33) = 7;
      return result;
    }

    *a1 = v27;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v4 = 1536;
  }

LABEL_26:
  *(a1 + 32) = v4;
  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnyValue.ensureBool()()
{
  if (*(v0 + 33) == 6)
  {
    v1 = *v0;
  }

  else
  {
    sub_1D8C2F8AC();
    swift_allocError();
    *v2 = 0xD000000000000010;
    *(v2 + 8) = 0x80000001D8C8C250;
    *(v2 + 16) = 6;
    swift_willThrow();
  }

  return v1 & 1;
}

Swift::Int32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnyValue.ensureInt32()()
{
  if (!*(v0 + 33))
  {
    return *v0;
  }

  sub_1D8C2F8AC();
  swift_allocError();
  *v1 = 0xD000000000000011;
  *(v1 + 8) = 0x80000001D8C8C270;
  *(v1 + 16) = 6;
  return swift_willThrow();
}

Swift::UInt32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnyValue.ensureUInt32()()
{
  if (*(v0 + 33) == 1)
  {
    return *v0;
  }

  sub_1D8C2F8AC();
  swift_allocError();
  *v2 = 0xD000000000000012;
  *(v2 + 8) = 0x80000001D8C8C290;
  *(v2 + 16) = 6;
  return swift_willThrow();
}

Swift::Int64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnyValue.ensureInt64()()
{
  v1 = *v0;
  if (*(v0 + 33) != 2)
  {
    sub_1D8C2F8AC();
    swift_allocError();
    *v2 = 0xD000000000000011;
    *(v2 + 8) = 0x80000001D8C8C2B0;
    *(v2 + 16) = 6;
    swift_willThrow();
  }

  return v1;
}

Swift::UInt64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnyValue.ensureUInt64()()
{
  v1 = *v0;
  if (*(v0 + 33) != 3)
  {
    sub_1D8C2F8AC();
    swift_allocError();
    *v2 = 0xD000000000000012;
    *(v2 + 8) = 0x80000001D8C8C2D0;
    *(v2 + 16) = 6;
    swift_willThrow();
  }

  return v1;
}

Swift::Float __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnyValue.ensureFloat()()
{
  if (*(v0 + 33) == 4)
  {
    return *v0;
  }

  sub_1D8C2F8AC();
  swift_allocError();
  *v2 = 0xD000000000000011;
  *(v2 + 8) = 0x80000001D8C8C2F0;
  *(v2 + 16) = 6;
  swift_willThrow();
  return result;
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnyValue.ensureDouble()()
{
  if (*(v0 + 33) == 5)
  {
    return *v0;
  }

  sub_1D8C2F8AC();
  swift_allocError();
  *v2 = 0xD000000000000012;
  *(v2 + 8) = 0x80000001D8C8C310;
  *(v2 + 16) = 6;
  swift_willThrow();
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AnyValue.ensureString()()
{
  if (*(v0 + 33) == 8)
  {
    v3 = v0;
    v2 = *v0;
    v1 = *(v3 + 8);
  }

  else
  {
    v2 = 0x80000001D8C8C330;
    sub_1D8C2F8AC();
    v1 = swift_allocError();
    *v4 = 0xD000000000000012;
    *(v4 + 8) = 0x80000001D8C8C330;
    *(v4 + 16) = 6;
    swift_willThrow();
  }

  v5 = v2;
  v6 = v1;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t AnyValue.ensureData()()
{
  if (*(v0 + 33) == 9)
  {
    v1 = *v0;
    sub_1D8C2C5E4(*v0, *(v0 + 8));
  }

  else
  {
    sub_1D8C2F8AC();
    swift_allocError();
    *v2 = 0xD000000000000010;
    *(v2 + 8) = 0x80000001D8C8C350;
    *(v2 + 16) = 6;
    swift_willThrow();
  }

  return v1;
}

uint64_t AnyValue.ensureEnum()@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 33) == 7)
  {
    v3 = *(v1 + 16);
    v2 = *(v1 + 24);
    *a1 = *v1;
    *(a1 + 16) = v3;
    *(a1 + 24) = v2;
    v4 = *(v1 + 32);
    v5 = v4 & 1;
    *(a1 + 32) = v4 & 1;
    swift_unknownObjectRetain();
    return sub_1D8C3510C(v3, v2, v5);
  }

  else
  {
    sub_1D8C2F8AC();
    swift_allocError();
    *v7 = 0xD000000000000010;
    *(v7 + 8) = 0x80000001D8C8C370;
    *(v7 + 16) = 6;
    return swift_willThrow();
  }
}

uint64_t AnyValue.ensureMessage()()
{
  if (*(v0 + 33) == 10)
  {
    v1 = *v0;
  }

  else
  {
    sub_1D8C2F8AC();
    swift_allocError();
    *v3 = 0xD000000000000013;
    *(v3 + 8) = 0x80000001D8C8C390;
    *(v3 + 16) = 6;
    return swift_willThrow();
  }
}

uint64_t AnyValue.asUnsafe<A>(_:)(void (*a1)(uint64_t *))
{
  v3 = *v1;
  v4 = *(v1 + 33);
  if (v4 <= 4)
  {
    if (*(v1 + 33) > 1u)
    {
      if (v4 != 2 && v4 != 3)
      {
        LODWORD(v14) = *v1;
        LOBYTE(v4) = 4;
        goto LABEL_18;
      }

LABEL_9:
      v14 = *v1;
LABEL_18:
      v19 = v4;
      goto LABEL_20;
    }

    if (*(v1 + 33))
    {
      LODWORD(v14) = *v1;
      LOBYTE(v4) = 1;
      goto LABEL_18;
    }

    LODWORD(v14) = *v1;
    v19 = 0;
LABEL_20:
    a1(&v14);
    return sub_1D8C2AB08(&v14);
  }

  v5 = *(v1 + 8);
  if (*(v1 + 33) <= 7u)
  {
    if (v4 != 5)
    {
      if (v4 != 6)
      {
        v8 = *(v1 + 16);
        v7 = *(v1 + 24);
        v9 = *(v1 + 32);
        v14 = *v1;
        v15 = v5;
        v16 = v8;
        v17 = v7;
        v10 = v9 & 1;
        LOBYTE(v18) = v9 & 1;
        v19 = 7;
        swift_unknownObjectRetain();
        sub_1D8C3510C(v8, v7, v10);
        goto LABEL_20;
      }

      LOBYTE(v14) = v3 & 1;
      LOBYTE(v4) = 6;
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  if (v4 == 8)
  {
    MEMORY[0x1EEE9AC00](a1);
    return String.asUnsafe<A>(_:)();
  }

  if (v4 == 9)
  {
    v17 = MEMORY[0x1E6969080];
    v18 = &protocol witness table for Data;
    v14 = v3;
    v15 = v5;
    v19 = 9;
    sub_1D8C2C5E4(v3, v5);
    goto LABEL_20;
  }

  MEMORY[0x1EEE9AC00](a1);
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  swift_getObjectType();
  v13 = *(v3 + 40);
  MEMORY[0x1EEE9AC00](*(v3 + 32));
  return MessageSchemaDescribing.schematizing<A>(data:block:)();
}

uint64_t sub_1D8C67594(_OWORD *a1, void (*a2)(_OWORD *))
{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v6 = 10;
  swift_unknownObjectRetain();
  a2(v5);
  return sub_1D8C2AB08(v5);
}

uint64_t UnsafeAnyValue.encode(to:)(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8C853F4();
  sub_1D8C29EAC(v1, &v16);
  if (v19 <= 4u)
  {
    if (v19 <= 1u)
    {
      if (v19)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
        sub_1D8C85324();
      }

      else
      {
        __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
        sub_1D8C85304();
      }
    }

    else if (v19 == 2)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      sub_1D8C85314();
    }

    else if (v19 == 3)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      sub_1D8C85334();
    }

    else
    {
      __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      sub_1D8C852E4();
    }
  }

  else if (v19 > 7u)
  {
    if (v19 == 8)
    {
      sub_1D8C2AA1C(&v16, &v13);
      v6 = *(&v14 + 1);
      v7 = v15;
      __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
      (*(v7 + 24))(v6, v7);
      __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      sub_1D8C852B4();
    }

    else
    {
      if (v19 != 9)
      {
        v13 = v16;
        v14 = v17;
        __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
        sub_1D8C4526C();
        sub_1D8C852F4();
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v20);
      }

      sub_1D8C2AA1C(&v16, &v13);
      v3 = *(&v14 + 1);
      v4 = v15;
      __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
      v11 = (*(v4 + 16))(v3, v4);
      v12 = v5;
      __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      sub_1D8C67AFC();
      sub_1D8C852F4();
      sub_1D8C2C684(v11, v12);
    }

    __swift_destroy_boxed_opaque_existential_1(&v13);
  }

  else if (v19 == 5)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    sub_1D8C852D4();
  }

  else if (v19 == 6)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    sub_1D8C852C4();
  }

  else
  {
    v8 = v17;
    v9 = v18;
    v13 = v16;
    v14 = v17;
    LOBYTE(v15) = v18;
    __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    sub_1D8C67B50();
    sub_1D8C852F4();
    swift_unknownObjectRelease();
    sub_1D8C31E4C(v8, *(&v8 + 1), v9);
  }

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_1D8C67A50(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_1D8C67594(a1, *(v1 + 24));
}

uint64_t sub_1D8C67A70(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_1D8C5757C(a1, *(v1 + 24));
}

uint64_t sub_1D8C67A90(uint64_t a1)
{
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  sub_1D8C2F900(a1, v5);
  v5[40] = 8;
  v3(v5);
  return sub_1D8C2AB08(v5);
}

unint64_t sub_1D8C67AFC()
{
  result = qword_1ECAAB390;
  if (!qword_1ECAAB390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB390);
  }

  return result;
}

unint64_t sub_1D8C67B50()
{
  result = qword_1ECAAB398;
  if (!qword_1ECAAB398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB398);
  }

  return result;
}

uint64_t sub_1D8C67BA4(uint64_t result, unsigned int a2)
{
  if (a2 > 0xA)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 11;
    LOBYTE(a2) = 11;
  }

  *(result + 33) = a2;
  return result;
}

uint64_t sub_1D8C67BDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
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

uint64_t sub_1D8C67C28(uint64_t result, unsigned int a2)
{
  if (a2 > 0xA)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 11;
    LOBYTE(a2) = 11;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1D8C67C60@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unsigned __int8 a5@<W4>, void *a6@<X8>)
{
  if (a1 >= 2)
  {
    v15 = *v6;
    v14 = *(v6 + 8);
    v17 = *(v6 + 16);
    v16 = *(v6 + 24);
    if (*v6)
    {
      v35[4] = *v6;
      v35[5] = v14;
      v36 = v17;
      v37 = v16;
      v31 = a1;
      v32 = a2;
      v33 = a3;
      v34 = a4;
      sub_1D8C6BC7C(a1, a2, a3, a4);
      sub_1D8C2F004(v15, v14, v17, v16);
      sub_1D8C2CEBC(&v31, a5, v35);
      if (v7)
      {
        sub_1D8C2F060(v31, v32, v33, v34);
        v19 = v36;
        v20 = v37;

        return sub_1D8C2C670(v19, v20);
      }

      else
      {
        sub_1D8C2F060(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24));
        sub_1D8C2F060(v31, v32, v33, v34);
        v25 = v36;
        v26 = v37;

        sub_1D8C2C670(v25, v26);
        v27 = v35[0];
        v28 = v35[1];
        v29 = v35[2];
        v30 = v35[3];
        *v6 = v35[0];
        *(v6 + 8) = v28;
        *(v6 + 16) = v29;
        *(v6 + 24) = v30;
        *a6 = v27;
        a6[1] = v28;
        a6[2] = v29;
        a6[3] = v30;
        return sub_1D8C2F004(v27, v28, v29, v30);
      }
    }

    else
    {
      v38 = v7;
      sub_1D8C2F004(a1, a2, a3, a4);
      sub_1D8C2F060(0, v14, v17, v16);
      *v6 = a1;
      *(v6 + 8) = a2;
      *(v6 + 16) = a3;
      *(v6 + 24) = a4;
      *a6 = a1;
      a6[1] = a2;
      a6[2] = a3;
      a6[3] = a4;
      return sub_1D8C2F004(a1, a2, a3, a4);
    }
  }

  else
  {
    v9 = *v6;
    v10 = *(v6 + 8);
    v11 = *(v6 + 16);
    v12 = *(v6 + 24);
    *a6 = *v6;
    a6[1] = v10;
    a6[2] = v11;
    a6[3] = v12;
    return sub_1D8C2F004(v9, v10, v11, v12);
  }
}

uint64_t sub_1D8C67E10@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v7 = MEMORY[0x1E69E7CC0];
  v10 = sub_1D8C2E72C(MEMORY[0x1E69E7CC0]);
  v9 = sub_1D8C2E600(v7);
  swift_getObjectType();
  MessageSchemaDescribing.schematizing<A>(data:block:)();
  sub_1D8C2C684(a1, a2);
  swift_unknownObjectRelease();
  result = v9;
  if (v3)
  {
  }

  else
  {
    *a3 = v9;
    a3[1] = v10;
  }

  return result;
}

uint64_t sub_1D8C67F14(uint64_t *a1, uint64_t *a2, void *a3)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  ObjectType = swift_getObjectType();
  result = (*(v7 + 56))(1701603686, 0xE400000000000000, ObjectType, v7);
  if (!v3)
  {
    v13 = v9 - v8;
    if (!v8)
    {
      v13 = 0;
    }

    v14[0] = v8;
    v14[1] = v9;
    v14[3] = 0;
    v14[4] = 0;
    v14[2] = v13;
    v15 = 1;
    sub_1D8C39F48(result, v12, v14, a2, a3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D8C67FE0(uint64_t a1, uint64_t *a2, void *a3)
{
  v42[0] = MEMORY[0x1E69E7CC0];
  sub_1D8C29EAC(a1, &v40);
  if (v41[24] == 10)
  {
    v43 = a2;
    v6 = *(&v40 + 1);
    v7 = *v41;
    v8 = *&v41[8];
    ObjectType = swift_getObjectType();
    (*(v6 + 56))(0x6567616B636170, 0xE700000000000000, ObjectType, v6);
    if (v3)
    {
      return swift_unknownObjectRelease();
    }

    else
    {
      v12 = v10;
      v28 = v7;
      v27 = v8;
      v26 = a3;
      v13 = swift_getObjectType();
      (*(v12 + 56))(&v32, v13, v12);
      v15 = v32;
      v16 = v33;
      v17 = (*(v12 + 48))(v13, v12);
      v18 = v27 - v28;
      if (!v28)
      {
        v18 = 0;
      }

      v32 = v28;
      v33 = v27;
      v35 = 0;
      v36 = 0;
      v25 = v18;
      v34 = v18;
      v37 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB200, &unk_1D8C86760);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1D8C861A0;
      *(v19 + 32) = v17;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      v29 = v19;
      v30 = v15;
      v31 = v16;
      sub_1D8C2B50C(v15, v16);
      sub_1D8C2B670(&v29, 0, &v38);
      swift_unknownObjectRelease();
      sub_1D8C2BBF0(v15, v16);

      sub_1D8C2BBF0(v15, v16);
      if (v39[24] == 255)
      {
        sub_1D8C2A970(&v38);
      }

      else
      {
        v40 = v38;
        *v41 = *v39;
        *&v41[9] = *&v39[9];
        sub_1D8C29EAC(&v40, &v38);
        if (v39[24] == 8)
        {
          sub_1D8C2AA1C(&v38, &v32);
          v21 = v35;
          v20 = v36;
          __swift_project_boxed_opaque_existential_1(&v32, v35);
          *&v38 = (*(v20 + 24))(v21, v20);
          *(&v38 + 1) = v22;
          v29 = 46;
          v30 = 0xE100000000000000;
          sub_1D8C46638();
          v23 = sub_1D8C85074();

          sub_1D8C2AB08(&v40);
          v42[0] = v23;
          __swift_destroy_boxed_opaque_existential_1(&v32);
        }

        else
        {
          sub_1D8C2AB08(&v40);
          sub_1D8C2AB08(&v38);
        }
      }

      *&v40 = v28;
      *(&v40 + 1) = v27;
      *&v41[8] = 0;
      *&v41[16] = 0;
      *v41 = v25;
      v41[24] = 1;
      v24 = (*(v6 + 40))(ObjectType);
      sub_1D8C3C8D8(v24, &v40, v42, v43, v26);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1D8C2AB08(&v40);
    sub_1D8C3D17C();
    swift_allocError();
    *v11 = 0xD00000000000002ALL;
    *(v11 + 8) = 0x80000001D8C8C3B0;
    *(v11 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1D8C68444(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void **a5)
{
  v11 = *a1;
  v12 = a1[1];
  ObjectType = swift_getObjectType();
  v14 = (*(*(v12 + 8) + 8))(ObjectType);
  v16 = v15;
  v17 = v14 == 1701667182 && v15 == 0xE400000000000000;
  if (v17 || (v18 = v14, (sub_1D8C852A4() & 1) != 0))
  {

    sub_1D8C29EAC((a1 + 2), &v70);
    if (v73 == 8)
    {
      sub_1D8C2AA1C(&v70, &v66);
      v19 = v68;
      v20 = v69;
      __swift_project_boxed_opaque_existential_1(&v66, v68);
      v21 = (*(v20 + 24))(v19, v20);
      v22 = a2[1];
      *a2 = v21;
      a2[1] = v23;

      return __swift_destroy_boxed_opaque_existential_1(&v66);
    }

    sub_1D8C2AB08(&v70);
    sub_1D8C3D17C();
    swift_allocError();
    v26 = xmmword_1D8C882B0;
    goto LABEL_9;
  }

  v27 = v18 == 0x736E6F6974706FLL && v16 == 0xE700000000000000;
  if (v27 || (sub_1D8C852A4() & 1) != 0)
  {

    sub_1D8C29EAC((a1 + 2), &v70);
    if (v73 != 10)
    {
      sub_1D8C2AB08(&v70);
      sub_1D8C3D17C();
      swift_allocError();
      v26 = xmmword_1D8C882C0;
LABEL_9:
      *v25 = v26;
      *(v25 + 16) = 0;
      return swift_willThrow();
    }

    v28 = v71;
    *(&v71 + 1) = MEMORY[0x1E69E6290];
    v72 = MEMORY[0x1E6969DF8];
    v70 = v28;
    v29 = __swift_project_boxed_opaque_existential_1(&v70, MEMORY[0x1E69E6290]);
    v30 = *v29;
    if (*v29 && (v31 = v29[1], v32 = v31 - v30, v31 != v30))
    {
      if (v32 <= 14)
      {
        v33 = sub_1D8C45074(v30, v31);
        v47 = v46;
        swift_unknownObjectRelease();
        v34 = v47 & 0xFFFFFFFFFFFFFFLL;
      }

      else if (v32 >= 0x7FFFFFFF)
      {
        v33 = sub_1D8C45134(v30, v31);
        v49 = v48;
        swift_unknownObjectRelease();
        v34 = v49 | 0x8000000000000000;
      }

      else
      {
        v33 = sub_1D8C2B5D0(v30, v31);
        v44 = v43;
        swift_unknownObjectRelease();
        v34 = v44 | 0x4000000000000000;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      v33 = 0;
      v34 = 0xC000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1(&v70);
    v35 = *a3;
    v36 = a3[1];
    *a3 = v33;
    a3[1] = v34;
    return sub_1D8C2C670(v35, v36);
  }

  else
  {
    if (v18 == 0x65756C6176 && v16 == 0xE500000000000000)
    {
    }

    else
    {
      v38 = sub_1D8C852A4();

      if ((v38 & 1) == 0)
      {
        return result;
      }
    }

    v66 = 0;
    v67 = 0xE000000000000000;
    v75 = 0;
    v76 = 1;
    v74 = xmmword_1D8C86390;
    sub_1D8C29EAC((a1 + 2), &v70);
    if (v73 == 10)
    {
      v39 = *(&v70 + 1);
      v40 = *(&v71 + 1) - v71;
      if (!v71)
      {
        v40 = 0;
      }

      v70 = v71;
      v72 = 0;
      v71 = v40;
      v73 = 1;
      v41 = swift_getObjectType();
      v42 = (*(v39 + 40))(v41, v39);
      if (v5)
      {
        swift_unknownObjectRelease();
        sub_1D8C2C670(0, 0xF000000000000000);
      }

      else
      {
        sub_1D8C3A87C(v42, &v70, &v66, &v74, &v75);

        v51 = v66;
        v50 = v67;
        v52 = HIBYTE(v67) & 0xF;
        if ((v67 & 0x2000000000000000) == 0)
        {
          v52 = v66 & 0xFFFFFFFFFFFFLL;
        }

        if (v52 && (v76 & 1) == 0)
        {
          v77 = v75;
          v56 = *(&v74 + 1);
          if (*(&v74 + 1) >> 60 != 15)
          {
            v57 = v74;
            sub_1D8C2C5E4(v74, *(&v74 + 1));
            v58 = *a4;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v70 = *a4;
            *a4 = 0x8000000000000000;
            sub_1D8C75F08(v57, v56, v77, isUniquelyReferenced_nonNull_native);
            *a4 = v70;
          }

          v60 = *a5;

          v61 = swift_isUniquelyReferenced_nonNull_native();
          *a5 = v60;
          if ((v61 & 1) == 0)
          {
            v60 = sub_1D8C4A36C(0, v60[2] + 1, 1, v60);
            *a5 = v60;
          }

          v63 = v60[2];
          v62 = v60[3];
          if (v63 >= v62 >> 1)
          {
            *a5 = sub_1D8C4A36C((v62 > 1), v63 + 1, 1, v60);
          }

          swift_unknownObjectRelease();
          v64 = *a5;
          v64[2] = v63 + 1;
          v65 = &v64[3 * v63];
          v65[4] = v51;
          v65[5] = v50;
          v65[6] = v77;
          v54 = v74;
          v55 = v56;
        }

        else
        {
          sub_1D8C3D17C();
          swift_allocError();
          *v53 = 0xD000000000000015;
          *(v53 + 8) = 0x80000001D8C8C440;
          *(v53 + 16) = 1;
          swift_willThrow();
          swift_unknownObjectRelease();
          v55 = *(&v74 + 1);
          v54 = v74;
        }

        sub_1D8C2C670(v54, v55);
      }
    }

    else
    {
      sub_1D8C2AB08(&v70);
      sub_1D8C3D17C();
      swift_allocError();
      *v45 = xmmword_1D8C882B0;
      *(v45 + 16) = 0;
      swift_willThrow();
      return sub_1D8C2C670(v74, *(&v74 + 1));
    }
  }
}

uint64_t sub_1D8C68A2C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a1;
  v9 = a1[1];
  ObjectType = swift_getObjectType();
  v11 = (*(*(v9 + 8) + 8))(ObjectType);
  v13 = v12;
  v14 = v11 == 1701667182 && v12 == 0xE400000000000000;
  if (v14 || (v15 = v11, (sub_1D8C852A4() & 1) != 0))
  {

    sub_1D8C29EAC((a1 + 2), &v46);
    if (v49 == 8)
    {
      sub_1D8C2AA1C(&v46, v43);
      v16 = v44;
      v17 = v45;
      __swift_project_boxed_opaque_existential_1(v43, v44);
      v18 = (*(v17 + 24))(v16, v17);
      v19 = a2[1];
      *a2 = v18;
      a2[1] = v20;

      return __swift_destroy_boxed_opaque_existential_1(v43);
    }

    goto LABEL_27;
  }

  v22 = v15 == 0x736E6F6974706FLL && v13 == 0xE700000000000000;
  if (v22 || (sub_1D8C852A4() & 1) != 0)
  {

    sub_1D8C29EAC((a1 + 2), &v46);
    if (v49 != 10)
    {
      sub_1D8C2AB08(&v46);
      v32 = 0x80000001D8C8C460;
      v33 = 0xD000000000000012;
LABEL_28:
      sub_1D8C3D17C();
      swift_allocError();
      *v36 = v33;
      *(v36 + 8) = v32;
      *(v36 + 16) = 0;
      return swift_willThrow();
    }

    v23 = v47;
    *(&v47 + 1) = MEMORY[0x1E69E6290];
    v48 = MEMORY[0x1E6969DF8];
    v46 = v23;
    v24 = __swift_project_boxed_opaque_existential_1(&v46, MEMORY[0x1E69E6290]);
    v25 = *v24;
    if (*v24 && (v26 = v24[1], v27 = v26 - v25, v26 != v25))
    {
      if (v27 <= 14)
      {
        v28 = sub_1D8C45074(v25, v26);
        v40 = v39;
        swift_unknownObjectRelease();
        v29 = v40 & 0xFFFFFFFFFFFFFFLL;
      }

      else if (v27 >= 0x7FFFFFFF)
      {
        v28 = sub_1D8C45134(v25, v26);
        v42 = v41;
        swift_unknownObjectRelease();
        v29 = v42 | 0x8000000000000000;
      }

      else
      {
        v28 = sub_1D8C2B5D0(v25, v26);
        v38 = v37;
        swift_unknownObjectRelease();
        v29 = v38 | 0x4000000000000000;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      v28 = 0;
      v29 = 0xC000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1(&v46);
    v30 = *a3;
    v31 = a3[1];
    *a3 = v28;
    a3[1] = v29;
    return sub_1D8C2C670(v30, v31);
  }

  else
  {
    if (v15 == 0x7265626D756ELL && v13 == 0xE600000000000000)
    {
    }

    else
    {
      v35 = sub_1D8C852A4();

      if ((v35 & 1) == 0)
      {
        return result;
      }
    }

    result = sub_1D8C29EAC((a1 + 2), &v46);
    if (v49)
    {
LABEL_27:
      v32 = 0xEF656D616E206575;
      sub_1D8C2AB08(&v46);
      v33 = 0x6C6176206D756E45;
      goto LABEL_28;
    }

    *a4 = v46;
    *(a4 + 8) = 0;
  }

  return result;
}

uint64_t sub_1D8C68D70(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, char *a5, uint64_t *a6, BOOL *a7, _DWORD *a8)
{
  v82 = a8;
  v83 = a7;
  v84 = a6;
  v85 = a5;
  v86 = a4;
  v11 = sub_1D8C84664();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v16 = a1[1];
  ObjectType = swift_getObjectType();
  v19 = (*(*(v16 + 8) + 8))(ObjectType);
  v21 = v20;
  v22 = v19 == 1701667182 && v20 == 0xE400000000000000;
  if (v22 || (v23 = v19, (sub_1D8C852A4() & 1) != 0))
  {

    sub_1D8C29EAC((a1 + 2), &v90);
    if (v93 == 8)
    {
      sub_1D8C2AA1C(&v90, v87);
      v24 = v88;
      v25 = v89;
      __swift_project_boxed_opaque_existential_1(v87, v88);
      v26 = (*(v25 + 24))(v24, v25);
      v27 = a2[1];
      *a2 = v26;
      a2[1] = v28;
LABEL_8:

      return __swift_destroy_boxed_opaque_existential_1(v87);
    }

    sub_1D8C2AB08(&v90);
    sub_1D8C3D17C();
    swift_allocError();
    v31 = xmmword_1D8C88320;
    goto LABEL_17;
  }

  v32 = v23 == 0x7265626D756ELL && v21 == 0xE600000000000000;
  if (v32 || (sub_1D8C852A4() & 1) != 0)
  {

    result = sub_1D8C29EAC((a1 + 2), &v90);
    if (!v93)
    {
      *a3 = v90;
      *(a3 + 8) = 0;
      return result;
    }

    sub_1D8C2AB08(&v90);
    sub_1D8C3D17C();
    swift_allocError();
    v31 = xmmword_1D8C88310;
    goto LABEL_17;
  }

  v33 = v23 == 0x736E6F6974706FLL && v21 == 0xE700000000000000;
  if (!v33 && (sub_1D8C852A4() & 1) == 0)
  {
    v44 = v23 == 1701869940 && v21 == 0xE400000000000000;
    if (!v44 && (sub_1D8C852A4() & 1) == 0)
    {
      if (v23 == 0x6D616E5F65707974 && v21 == 0xE900000000000065 || (sub_1D8C852A4() & 1) != 0)
      {

        sub_1D8C29EAC((a1 + 2), &v90);
        if (v93 == 8)
        {
          sub_1D8C2AA1C(&v90, v87);
          v57 = v88;
          v58 = v89;
          __swift_project_boxed_opaque_existential_1(v87, v88);
          *&v90 = (*(v58 + 24))(v57, v58);
          *(&v90 + 1) = v59;
          sub_1D8C84614();
          sub_1D8C46638();
          v60 = sub_1D8C85094();
          v62 = v61;
          (*(v12 + 8))(v15, v11);

          v63 = v84;
          v64 = v84[1];
          *v84 = v60;
          v63[1] = v62;
          goto LABEL_8;
        }
      }

      else
      {
        if ((v23 != 0x6C6562616CLL || v21 != 0xE500000000000000) && (sub_1D8C852A4() & 1) == 0)
        {
          if (v23 == 0x6E695F666F656E6FLL && v21 == 0xEB00000000786564)
          {
          }

          else
          {
            v78 = sub_1D8C852A4();

            if ((v78 & 1) == 0)
            {
              return result;
            }
          }

          result = sub_1D8C29EAC((a1 + 2), &v90);
          if (!v93)
          {
            v79 = v82;
            *v82 = v90;
            *(v79 + 4) = 0;
            return result;
          }

          sub_1D8C2AB08(&v90);
          sub_1D8C3D17C();
          swift_allocError();
          v31 = xmmword_1D8C882D0;
          goto LABEL_17;
        }

        sub_1D8C29EAC((a1 + 2), &v90);
        if (v93 == 7)
        {
          v73 = *(&v91 + 1);
          v72 = v91;
          if (v92)
          {
            swift_unknownObjectRelease();
            result = sub_1D8C31E4C(v72, v73, 1);
          }

          else
          {
            v74 = *(&v90 + 1);
            v75 = swift_getObjectType();
            v76 = v94;
            v77 = (*(v74 + 40))(v72, v73, v75, v74);
            swift_unknownObjectRelease();
            result = sub_1D8C31E4C(v72, v73, 0);
            if (v76)
            {
              return result;
            }

            v72 = v77;
          }

          *v83 = v72 == 3;
          return result;
        }
      }

      sub_1D8C2AB08(&v90);
      sub_1D8C3D17C();
      swift_allocError();
      v31 = xmmword_1D8C882E0;
LABEL_17:
      *v30 = v31;
      *(v30 + 16) = 0;
      return swift_willThrow();
    }

    sub_1D8C29EAC((a1 + 2), &v90);
    if (v93 != 7)
    {
      sub_1D8C2AB08(&v90);
      sub_1D8C3D17C();
      swift_allocError();
      v31 = xmmword_1D8C882F0;
      goto LABEL_17;
    }

    v45 = v91;
    v46 = v92;
    if (v92)
    {
      v47 = *(&v90 + 1);
      v48 = swift_getObjectType();
      v49 = v94;
      v50 = (*(v47 + 48))(v45, v48, v47);
      if (v49)
      {
        swift_unknownObjectRelease();
        v53 = *(&v45 + 1);
        v52 = v45;
        v54 = 1;
        return sub_1D8C31E4C(v52, v53, v54);
      }

      v68 = v50;
      v67 = v51;
    }

    else
    {

      v67 = *(&v45 + 1);
      v68 = v45;
    }

    if (v68 == 0x4F4F425F45505954 && v67 == 0xE90000000000004CLL || (sub_1D8C852A4() & 1) != 0)
    {
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v45, *(&v45 + 1), v46);

      v71 = 7;
LABEL_58:
      *v85 = v71;
      return result;
    }

    if (v68 == 0x5459425F45505954 && v67 == 0xEA00000000005345 || (sub_1D8C852A4() & 1) != 0)
    {
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v45, *(&v45 + 1), v46);

      v71 = 10;
      goto LABEL_58;
    }

    if (v68 == 0x554F445F45505954 && v67 == 0xEB00000000454C42 || (sub_1D8C852A4() & 1) != 0)
    {
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v45, *(&v45 + 1), v46);

      *v85 = 0;
      return result;
    }

    if (v68 == 0x554E455F45505954 && v67 == 0xE90000000000004DLL || (sub_1D8C852A4() & 1) != 0)
    {
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v45, *(&v45 + 1), v46);

      v71 = 12;
      goto LABEL_58;
    }

    if (v68 == 0x4F4C465F45505954 && v67 == 0xEA00000000005441 || (sub_1D8C852A4() & 1) != 0)
    {
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v45, *(&v45 + 1), v46);

      v71 = 1;
      goto LABEL_58;
    }

    if (v68 == 0x544E495F45505954 && v67 == 0xEA00000000003233 || (sub_1D8C852A4() & 1) != 0)
    {
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v45, *(&v45 + 1), v46);

      v71 = 4;
      goto LABEL_58;
    }

    if (v68 == 0x544E495F45505954 && v67 == 0xEA00000000003436 || (sub_1D8C852A4() & 1) != 0)
    {
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v45, *(&v45 + 1), v46);

      v71 = 2;
      goto LABEL_58;
    }

    if (v68 == 0x53454D5F45505954 && v67 == 0xEC00000045474153 || (sub_1D8C852A4() & 1) != 0)
    {
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v45, *(&v45 + 1), v46);

      v71 = 9;
      goto LABEL_58;
    }

    if (v68 == 0x5254535F45505954 && v67 == 0xEB00000000474E49 || (sub_1D8C852A4() & 1) != 0)
    {
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v45, *(&v45 + 1), v46);

      v71 = 8;
      goto LABEL_58;
    }

    if (v68 == 0x4E49555F45505954 && v67 == 0xEB00000000323354 || (sub_1D8C852A4() & 1) != 0)
    {
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v45, *(&v45 + 1), v46);

      v71 = 11;
      goto LABEL_58;
    }

    if (v68 == 0x4E49555F45505954 && v67 == 0xEB00000000343654 || (sub_1D8C852A4() & 1) != 0)
    {
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v45, *(&v45 + 1), v46);

      v71 = 3;
      goto LABEL_58;
    }

    if (v68 == 0x5849465F45505954 && v67 == 0xEC00000032334445 || (sub_1D8C852A4() & 1) != 0)
    {
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v45, *(&v45 + 1), v46);

      v71 = 6;
      goto LABEL_58;
    }

    if (v68 == 0x5849465F45505954 && v67 == 0xEC00000034364445 || (sub_1D8C852A4() & 1) != 0)
    {
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v45, *(&v45 + 1), v46);

      v71 = 5;
      goto LABEL_58;
    }

    if (v68 == 0x4F52475F45505954 && v67 == 0xEA00000000005055 || (sub_1D8C852A4() & 1) != 0)
    {

      sub_1D8C3D17C();
      swift_allocError();
      *v80 = 0xD000000000000013;
      *(v80 + 8) = 0x80000001D8C8C4E0;
LABEL_129:
      *(v80 + 16) = 0;
      swift_willThrow();
      swift_unknownObjectRelease();
      v53 = *(&v45 + 1);
      v52 = v45;
      v54 = v46;
      return sub_1D8C31E4C(v52, v53, v54);
    }

    if (v68 == 0x4946535F45505954 && v67 == 0xED00003233444558 || (sub_1D8C852A4() & 1) != 0)
    {
LABEL_133:
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v45, *(&v45 + 1), v46);

      v71 = 13;
      goto LABEL_58;
    }

    if ((v68 != 0x4946535F45505954 || v67 != 0xED00003436444558) && (sub_1D8C852A4() & 1) == 0)
    {
      if (v68 == 0x4E49535F45505954 && v67 == 0xEB00000000323354 || (sub_1D8C852A4() & 1) != 0)
      {
        goto LABEL_133;
      }

      if ((v68 != 0x4E49535F45505954 || v67 != 0xEB00000000343654) && (sub_1D8C852A4() & 1) == 0)
      {
        *&v90 = 0;
        *(&v90 + 1) = 0xE000000000000000;
        sub_1D8C85124();

        strcpy(&v90, "Unknown type: ");
        HIBYTE(v90) = -18;
        MEMORY[0x1DA7255C0](v68, v67);

        v81 = v90;
        sub_1D8C3D17C();
        swift_allocError();
        *v80 = v81;
        goto LABEL_129;
      }
    }

    swift_unknownObjectRelease();
    sub_1D8C31E4C(v45, *(&v45 + 1), v46);

    v71 = 14;
    goto LABEL_58;
  }

  sub_1D8C29EAC((a1 + 2), &v90);
  if (v93 != 10)
  {
    sub_1D8C2AB08(&v90);
    sub_1D8C3D17C();
    swift_allocError();
    v31 = xmmword_1D8C88300;
    goto LABEL_17;
  }

  v34 = v91;
  *(&v91 + 1) = MEMORY[0x1E69E6290];
  v92 = MEMORY[0x1E6969DF8];
  v90 = v34;
  v35 = __swift_project_boxed_opaque_existential_1(&v90, MEMORY[0x1E69E6290]);
  v36 = *v35;
  if (*v35 && (v37 = v35[1], v38 = v37 - v36, v37 != v36))
  {
    if (v38 <= 14)
    {
      v39 = sub_1D8C45074(v36, v37);
      v66 = v65;
      swift_unknownObjectRelease();
      v40 = v66 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v38 >= 0x7FFFFFFF)
    {
      v39 = sub_1D8C45134(v36, v37);
      v70 = v69;
      swift_unknownObjectRelease();
      v40 = v70 | 0x8000000000000000;
    }

    else
    {
      v39 = sub_1D8C2B5D0(v36, v37);
      v56 = v55;
      swift_unknownObjectRelease();
      v40 = v56 | 0x4000000000000000;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    v39 = 0;
    v40 = 0xC000000000000000;
  }

  __swift_destroy_boxed_opaque_existential_1(&v90);
  v41 = v86;
  v42 = *v86;
  v43 = v86[1];
  *v86 = v39;
  v41[1] = v40;
  return sub_1D8C2C670(v42, v43);
}

uint64_t sub_1D8C69D3C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D8C850D4() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_1D8C853B4();

      sub_1D8C84E24();
      v15 = sub_1D8C853E4();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (40 * v3 < (40 * v6) || v21 >= v22 + 40 || v3 != v6)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D8C69F0C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D8C850D4() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1D8C853B4();

      sub_1D8C84E24();
      v14 = sub_1D8C853E4();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void (*sub_1D8C6A0BC(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_1D8C6A424(v8);
  v8[9] = sub_1D8C6A1C8(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1D8C6A168;
}

void sub_1D8C6A168(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1D8C6A1C8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x48uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[5] = a3;
  v10[6] = v4;
  v10[4] = a2;
  v12 = *v4;
  v13 = sub_1D8C4668C(a2, a3);
  *(v11 + 64) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1D8C74B2C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1D8C734B4(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_1D8C4668C(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_15:
    result = sub_1D8C85354();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[7] = v13;
  v24 = 0uLL;
  v25 = 0uLL;
  if (v19)
  {
    v26 = (*(*v5 + 56) + 32 * v13);
    v24 = *v26;
    v25 = v26[1];
  }

  *v11 = v24;
  *(v11 + 1) = v25;
  return sub_1D8C6A324;
}

void sub_1D8C6A324(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = (*a1)[3];
  v6 = *(*a1 + 64);
  if (v2)
  {
    v7 = v1[7];
    v8 = *v1[6];
    if (v6)
    {
      v9 = (v8[7] + 32 * v7);
      *v9 = v2;
      v9[1] = v3;
      v9[2] = v4;
      v9[3] = v5;
    }

    else
    {
      sub_1D8C76354(v7, v1[4], v1[5], v2, v3, v4, v5, v8);
    }
  }

  else if ((*a1)[8])
  {
    v10 = v1[7];
    v11 = *v1[6];
    sub_1D8C6BC8C(*(v11 + 48) + 16 * v10);
    sub_1D8C69F0C(v10, v11);
  }

  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v15 = v1[3];
  sub_1D8C2F004(v2, v3, v4, v5);
  sub_1D8C2F060(v12, v13, v14, v15);

  free(v1);
}

uint64_t (*sub_1D8C6A424(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1D8C6A44C;
}

uint64_t sub_1D8C6A474(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1D8C29EAC(a1, &v32);
  if (v37 == 10)
  {
    v6 = v33;
    v7 = v34;
    v8 = v35;
    v30 = 0;
    v31 = 0;
    v38 = MEMORY[0x1E69E7CC0];
    v29 = xmmword_1D8C86390;
    v28 = sub_1D8C2E858(MEMORY[0x1E69E7CC0]);
    v9 = v8 - v7;
    if (!v7)
    {
      v9 = 0;
    }

    v32 = v7;
    v33 = v8;
    v35 = 0;
    v36 = 0;
    v34 = v9;
    v37 = 1;
    ObjectType = swift_getObjectType();
    v11 = (*(v6 + 40))(ObjectType, v6);
    if (v3)
    {
      swift_unknownObjectRelease();

      sub_1D8C2C670(0, 0xF000000000000000);
    }

    else
    {
      sub_1D8C3AD78(v11, &v32, &v30, &v29, &v28, &v38);

      v14 = v31;
      if (v31)
      {
        v15 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D8C861A0;
        *(inited + 32) = v15;
        *(inited + 40) = v14;
        v32 = a2;

        sub_1D8C4B134(inited);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB228, &qword_1D8C877F0);
        sub_1D8C52AF8();
        v26 = sub_1D8C84D54();
        v27 = v17;

        if (v38[2])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB030, &qword_1D8C85C30);
          v18 = sub_1D8C85234();
        }

        else
        {
          v18 = MEMORY[0x1E69E7CC8];
        }

        v32 = v18;

        sub_1D8C7B514(v20, 1, &v32);
        v21 = v32;
        v22 = v29;
        v23 = v28;
        sub_1D8C2E858(MEMORY[0x1E69E7CC0]);
        sub_1D8C2C5D0(v22, *(&v22 + 1));

        sub_1D8C2C670(0, 0xF000000000000000);

        v24 = *a3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = *a3;
        sub_1D8C75D50(v21, v22, *(&v22 + 1), v23, v26, v27, isUniquelyReferenced_nonNull_native);

        swift_unknownObjectRelease();

        *a3 = v32;
        sub_1D8C2C670(v29, *(&v29 + 1));
      }

      else
      {
        sub_1D8C3D17C();
        swift_allocError();
        *v19 = 0xD00000000000001DLL;
        *(v19 + 8) = 0x80000001D8C8C400;
        *(v19 + 16) = 1;
        swift_willThrow();
        swift_unknownObjectRelease();

        sub_1D8C2C670(v29, *(&v29 + 1));
      }
    }
  }

  else
  {
    sub_1D8C2AB08(&v32);
    sub_1D8C3D17C();
    swift_allocError();
    *v12 = 0xD000000000000018;
    *(v12 + 8) = 0x80000001D8C8C3E0;
    *(v12 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1D8C6A890(uint64_t a1, uint64_t *a2)
{
  sub_1D8C29EAC(a1, &v30);
  if (v35 == 10)
  {
    v4 = v31;
    v28 = 0;
    v29 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 1;
    v46 = 2;
    v45 = 17;
    v24 = 0;
    v23 = xmmword_1D8C86390;
    v43 = 0;
    v44 = 1;
    v5 = v33 - v32;
    if (!v32)
    {
      v5 = 0;
    }

    v30 = v32;
    v31 = v33;
    v33 = 0;
    v34 = 0;
    v32 = v5;
    v35 = 1;
    ObjectType = swift_getObjectType();
    v7 = (*(v4 + 40))(ObjectType, v4);
    if (v2)
    {
      swift_unknownObjectRelease();
      sub_1D8C2C670(0, 0xF000000000000000);
    }

    else
    {
      sub_1D8C3B258(v7, &v30, &v28, &v26, &v23, &v45, &v24, &v46, &v43);

      v10 = v45;
      if (v45 == 17 || (v11 = v29) == 0 || (v27 & 1) != 0)
      {
        sub_1D8C3D17C();
        swift_allocError();
        *v12 = 0xD000000000000015;
        *(v12 + 8) = 0x80000001D8C8C440;
        *(v12 + 16) = 1;
        swift_willThrow();
        swift_unknownObjectRelease();
        sub_1D8C2C670(v23, *(&v23 + 1));
      }

      else
      {
        v13 = v25;
        v20 = v26;
        v21 = v28;
        v18 = v24;
        v19 = v43;
        v14 = v23;
        v15 = v46 & 1;
        v22 = v44;

        sub_1D8C2C5D0(v14, *(&v14 + 1));
        sub_1D8C2C670(0, 0xF000000000000000);
        LOBYTE(v36) = v10;
        *(&v36 + 1) = v18;
        v37 = v13;
        v38 = v20;
        v39 = v15;
        v40 = v19;
        v41 = v22;
        v42 = v14;
        v16 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = *a2;
        sub_1D8C7546C(&v36, v21, v11, isUniquelyReferenced_nonNull_native);
        swift_unknownObjectRelease();

        *a2 = v30;
        sub_1D8C2C670(v14, *(&v14 + 1));
      }
    }
  }

  else
  {
    sub_1D8C2AB08(&v30);
    sub_1D8C3D17C();
    swift_allocError();
    *v8 = 0xD000000000000010;
    *(v8 + 8) = 0x80000001D8C8C4C0;
    *(v8 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1D8C6ABD0(uint64_t a1, void *a2)
{
  v5 = sub_1D8C84664();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8C29EAC(a1, &v60);
  if (v63 != 10)
  {
    sub_1D8C2AB08(&v60);
    sub_1D8C3D17C();
    swift_allocError();
    *v16 = 0xD00000000000001BLL;
    *(v16 + 8) = 0x80000001D8C8C480;
    *(v16 + 16) = 0;
    return swift_willThrow();
  }

  v49 = v6;
  v64 = a2;
  v48 = a1;
  v10 = v60;
  v11 = v61;
  v12 = v62;
  ObjectType = swift_getObjectType();
  (*(*(&v10 + 1) + 56))(0x6565646E65747865, 0xE800000000000000, ObjectType, *(&v10 + 1));
  if (v2)
  {
    return swift_unknownObjectRelease();
  }

  v17 = v14;
  v47 = v10;
  v18 = swift_getObjectType();
  (*(v17 + 56))(&v51, v18, v17);
  v45 = v51;
  v46 = v52;
  v19 = (*(v17 + 48))(v18, v17);
  v20 = v12 - v11;
  if (!v11)
  {
    v20 = 0;
  }

  v51 = v11;
  v52 = v12;
  v54 = 0;
  v55 = 0;
  v53 = v20;
  v56 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB200, &unk_1D8C86760);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D8C861A0;
  *(v21 + 32) = v19;
  *(v21 + 40) = 0;
  *(v21 + 48) = 0;
  v22 = v45;
  v50[0] = v21;
  v50[1] = v45;
  v23 = v46;
  v50[2] = v46;
  sub_1D8C2B50C(v45, v46);
  sub_1D8C2B670(v50, 0, &v60);
  swift_unknownObjectRelease();
  sub_1D8C2BBF0(v22, v23);

  sub_1D8C2BBF0(v22, v23);
  if (v63 != 8)
  {
    if (v63 == 255)
    {
      sub_1D8C2A970(&v60);
    }

    else
    {
      sub_1D8C2AB08(&v60);
    }

    sub_1D8C3D17C();
    swift_allocError();
    *v41 = 0xD000000000000023;
    *(v41 + 8) = 0x80000001D8C8C520;
    *(v41 + 16) = 0;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  sub_1D8C2AA1C(&v60, v57);
  v24 = v58;
  v25 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  *&v60 = (*(v25 + 24))(v24, v25);
  *(&v60 + 1) = v26;
  sub_1D8C84614();
  sub_1D8C46638();
  v27 = sub_1D8C85094();
  v29 = v28;
  (*(v49 + 8))(v9, v5);

  v30 = v64;
  v31 = *v64;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v60 = *v30;
  v33 = v60;
  v35 = sub_1D8C4668C(v27, v29);
  v36 = *(v33 + 16);
  v37 = (v34 & 1) == 0;
  v38 = v36 + v37;
  if (__OFADD__(v36, v37))
  {
    __break(1u);
    goto LABEL_22;
  }

  LOBYTE(v9) = v34;
  if (*(v33 + 24) >= v38)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

LABEL_22:
    sub_1D8C74B2C();
    goto LABEL_17;
  }

  sub_1D8C734B4(v38, isUniquelyReferenced_nonNull_native);
  v39 = sub_1D8C4668C(v27, v29);
  if ((v9 & 1) != (v40 & 1))
  {
    result = sub_1D8C85354();
    __break(1u);
    return result;
  }

  v35 = v39;
LABEL_17:
  v42 = v60;
  *v30 = v60;
  if (v9)
  {
  }

  else
  {
    v43 = MEMORY[0x1E69E7CC0];
    v44 = sub_1D8C2E464(MEMORY[0x1E69E7CC0]);
    sub_1D8C2C670(0, 0xF000000000000000);
    sub_1D8C76354(v35, v27, v29, v44, v43, 0, 0xF000000000000000, v42);
  }

  sub_1D8C6A890(v48, (v42[7] + 32 * v35));
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_1D8C6B17C(uint64_t a1, char **a2)
{
  sub_1D8C29EAC(a1, &v63);
  if (v66 != 10)
  {
    sub_1D8C2AB08(&v63);
    sub_1D8C3D17C();
    swift_allocError();
    *v8 = 0xD000000000000010;
    *(v8 + 8) = 0x80000001D8C8C500;
    *(v8 + 16) = 0;
    return swift_willThrow();
  }

  v4 = *(&v63 + 1);
  v50 = *(&v64 + 1);
  v67 = v64;
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 56);
  v6(1701667182, 0xE400000000000000, ObjectType, v4);
  if (v2)
  {
    return swift_unknownObjectRelease();
  }

  v10 = v7;
  v48 = v4;
  v49 = ObjectType;
  v47 = a2;
  v11 = swift_getObjectType();
  (*(v10 + 56))(&v54, v11, v10);
  v13 = v54;
  v12 = v55;
  v14 = (*(v10 + 48))(v11, v10);
  if (v67)
  {
    v15 = v50 - v67;
  }

  else
  {
    v15 = 0;
  }

  v54 = v67;
  v55 = v50;
  v57 = 0;
  v58 = 0;
  v56 = v15;
  v59 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB200, &unk_1D8C86760);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D8C861A0;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  *(v16 + 48) = 0;
  v51 = v16;
  v52 = v13;
  v53 = v12;
  sub_1D8C2B50C(v13, v12);
  sub_1D8C2B670(&v51, 0, &v63);
  swift_unknownObjectRelease();
  sub_1D8C2BBF0(v13, v12);

  sub_1D8C2BBF0(v13, v12);
  if (v66 != 8)
  {
    if (v66 == 255)
    {
      sub_1D8C2A970(&v63);
    }

    else
    {
      sub_1D8C2AB08(&v63);
    }

    sub_1D8C3D17C();
    swift_allocError();
    *v17 = xmmword_1D8C882B0;
    *(v17 + 16) = 0;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  sub_1D8C2AA1C(&v63, v60);
  v6(0x736E6F6974706FLL, 0xE700000000000000, v49, v48);
  v19 = v18;
  v20 = swift_getObjectType();
  (*(v19 + 56))(&v54, v20, v19);
  v22 = v54;
  v21 = v55;
  v23 = (*(v19 + 48))(v20, v19);
  v54 = v67;
  v55 = v50;
  v57 = 0;
  v58 = 0;
  v56 = v15;
  v59 = 1;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D8C861A0;
  *(v24 + 32) = v23;
  *(v24 + 40) = 0;
  *(v24 + 48) = 0;
  v51 = v24;
  v52 = v22;
  v53 = v21;
  sub_1D8C2B50C(v22, v21);
  sub_1D8C2B670(&v51, 0, &v63);
  swift_unknownObjectRelease();
  sub_1D8C2BBF0(v22, v21);

  sub_1D8C2BBF0(v22, v21);
  if (v66 == 10)
  {
    v25 = v64;
    *(&v64 + 1) = MEMORY[0x1E69E6290];
    v65 = MEMORY[0x1E6969DF8];
    v63 = v25;
    v26 = __swift_project_boxed_opaque_existential_1(&v63, MEMORY[0x1E69E6290]);
    v27 = *v26;
    if (*v26 && (v28 = v26[1], v29 = v28 - v27, v28 != v27))
    {
      if (v29 <= 14)
      {
        v30 = sub_1D8C45074(v27, v28);
        v44 = v43;
        swift_unknownObjectRelease();
        v31 = v44 & 0xFFFFFFFFFFFFFFLL;
      }

      else if (v29 >= 0x7FFFFFFF)
      {
        v30 = sub_1D8C45134(v27, v28);
        v46 = v45;
        swift_unknownObjectRelease();
        v31 = v46 | 0x8000000000000000;
      }

      else
      {
        v30 = sub_1D8C2B5D0(v27, v28);
        v42 = v41;
        swift_unknownObjectRelease();
        v31 = v42 | 0x4000000000000000;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      v30 = 0;
      v31 = 0xC000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1(&v63);
  }

  else
  {
    if (v66 == 255)
    {
      sub_1D8C2A970(&v63);
    }

    else
    {
      sub_1D8C2AB08(&v63);
    }

    v30 = 0;
    v31 = 0xF000000000000000;
  }

  v32 = v61;
  v33 = v62;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  v34 = (*(v33 + 24))(v32, v33);
  v36 = v35;
  sub_1D8C2C5D0(v30, v31);
  sub_1D8C2C670(0, 0xF000000000000000);
  v37 = *v47;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = sub_1D8C4B028(0, *(v37 + 2) + 1, 1, v37);
  }

  v39 = *(v37 + 2);
  v38 = *(v37 + 3);
  if (v39 >= v38 >> 1)
  {
    v37 = sub_1D8C4B028((v38 > 1), v39 + 1, 1, v37);
  }

  swift_unknownObjectRelease();
  sub_1D8C2C670(v30, v31);
  *(v37 + 2) = v39 + 1;
  v40 = &v37[32 * v39];
  *(v40 + 4) = v34;
  *(v40 + 5) = v36;
  *(v40 + 6) = v30;
  *(v40 + 7) = v31;
  *v47 = v37;
  return __swift_destroy_boxed_opaque_existential_1(v60);
}

uint64_t sub_1D8C6B810(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  sub_1D8C29EAC(a1, &v39);
  if (v44 != 10)
  {
    sub_1D8C2AB08(&v39);
    sub_1D8C3D17C();
    swift_allocError();
    *v16 = 0xD00000000000001BLL;
    *(v16 + 8) = 0x80000001D8C8C480;
    *(v16 + 16) = 0;
    return swift_willThrow();
  }

  v32 = a4;
  v33 = a3;
  v8 = v40;
  v10 = v41;
  v9 = v42;
  v37 = 0;
  v38 = 0xE000000000000000;
  v11 = MEMORY[0x1E69E7CC0];
  v45 = sub_1D8C2E464(MEMORY[0x1E69E7CC0]);
  v36 = v11;
  v35 = xmmword_1D8C86390;
  v12 = v9 - v10;
  if (!v10)
  {
    v12 = 0;
  }

  v39 = v10;
  v40 = v9;
  v42 = 0;
  v43 = 0;
  v41 = v12;
  v44 = 1;
  ObjectType = swift_getObjectType();
  v14 = *(v8 + 40);

  v15 = v14(ObjectType, v8);
  if (v4)
  {

    swift_unknownObjectRelease();
    sub_1D8C2C670(0, 0xF000000000000000);
  }

  else
  {
    v18 = v15;

    sub_1D8C3B74C(v18, &v39, &v37, a2, v32, &v35, v33, &v45, &v36);

    v19 = v37;
    v20 = v38;
    v21 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v21 = v37 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D8C861A0;
      *(inited + 32) = v19;
      *(inited + 40) = v20;
      v39 = a2;

      sub_1D8C4B134(inited);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB228, &qword_1D8C877F0);
      sub_1D8C52AF8();
      v23 = sub_1D8C84D54();
      v25 = v24;

      v26 = v45;
      v28 = *(&v35 + 1);
      v27 = v36;
      v29 = v35;

      sub_1D8C2C5D0(v29, v28);
      sub_1D8C2C670(0, 0xF000000000000000);

      sub_1D8C2C5D0(v29, v28);
      v30 = sub_1D8C6A0BC(v34, v23, v25);
      sub_1D8C67C60(v26, v27, v29, v28, 2u, &v39);
      sub_1D8C2F060(v39, v40, v41, v42);

      sub_1D8C2C670(v29, v28);
      (v30)(v34, 0);

      swift_unknownObjectRelease();
      sub_1D8C2C670(v29, v28);
      sub_1D8C2C670(v35, *(&v35 + 1));
    }

    sub_1D8C3D17C();
    swift_allocError();
    *v31 = 0xD00000000000001FLL;
    *(v31 + 8) = 0x80000001D8C8C4A0;
    *(v31 + 16) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1D8C2C670(v35, *(&v35 + 1));
  }
}

uint64_t sub_1D8C6BC7C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (result != 1)
  {
    return sub_1D8C2F004(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1D8C6BCE0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + OBJC_IVAR____TtC17PoirotSchematizer16QueryableMessage_data + 16);
  v9 = *(v3 + OBJC_IVAR____TtC17PoirotSchematizer16QueryableMessage_data);
  swift_unknownObjectRetain();
  UnsafeSchematizedData.getAnyQueriable(matchingFieldPath:)(a1, a2, a3);
  return swift_unknownObjectRelease();
}

_OWORD *sub_1D8C6BF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3 + OBJC_IVAR____TtC17PoirotSchematizer16QueryableMessage_data;
  v8 = *(v3 + OBJC_IVAR____TtC17PoirotSchematizer16QueryableMessage_data);
  v7 = *(v3 + OBJC_IVAR____TtC17PoirotSchematizer16QueryableMessage_data + 8);
  ObjectType = swift_getObjectType();
  v10 = *(v7 + 56);
  v10(a1, a2, ObjectType, v7);
  v12 = v11;
  v13 = swift_getObjectType();
  if (((*(v12 + 16))(v13, v12) & 1) == 0)
  {
    v15 = *(v6 + 16);
    v16 = *(v6 + 24);
    v10(a1, a2, ObjectType, v7);
    v18 = v17;
    v19 = swift_getObjectType();
    (*(v18 + 56))(&v110, v19, v18);
    v54 = v110;
    v56 = (*(v18 + 48))(v19, v18);
    v57 = v16 - v15;
    if (!v15)
    {
      v57 = 0;
    }

    *&v110 = v15;
    *(&v110 + 1) = v16;
    *&v111[8] = 0;
    *&v111[16] = 0;
    *v111 = v57;
    v111[24] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB200, &unk_1D8C86760);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1D8C861A0;
    *(v58 + 32) = v56;
    *(v58 + 40) = 0;
    *(v58 + 48) = 0;
    *v109 = v58;
    *&v109[8] = v54;
    sub_1D8C2B50C(v54, *(&v54 + 1));
    sub_1D8C2B670(v109, 0, v112);
    swift_unknownObjectRelease();
    sub_1D8C2BBF0(v54, *(&v54 + 1));

    sub_1D8C2BBF0(v54, *(&v54 + 1));
    sub_1D8C5011C(v112, &v110);
    if (v111[24] == 255)
    {
      sub_1D8C51FD4(v112, &qword_1ECAAB138, &unk_1D8C86900);
      result = swift_unknownObjectRelease();
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *v109 = v110;
    *&v109[16] = *v111;
    *&v109[25] = *&v111[9];
    sub_1D8C29EAC(v109, &v102);
    LODWORD(v26) = v106;
    if (v106 > 4u)
    {
      if (v106 > 7u)
      {
        goto LABEL_55;
      }

      if (v106 == 5)
      {
        v71 = v102;
        v108 = MEMORY[0x1E69E63B0];
        swift_unknownObjectRelease();
        *&v107 = v71;
        goto LABEL_71;
      }

      if (v106 == 6)
      {
        v59 = v102;
        v108 = MEMORY[0x1E69E6370];
        swift_unknownObjectRelease();
        LOBYTE(v107) = v59;
        goto LABEL_71;
      }

      v76 = v103;
      v77 = v104;
      v78 = v105;
      if (v105)
      {
        v79 = *(&v102 + 1);
        v80 = swift_getObjectType();
        v87 = (*(v79 + 48))(v76, v80, v79);
        v89 = v88;
      }

      else
      {

        v87 = v76;
        v89 = v77;
      }

      v60 = a3;
      v108 = MEMORY[0x1E69E6158];
      swift_unknownObjectRelease();
      sub_1D8C31E4C(v76, v77, v78);
      swift_unknownObjectRelease();
      *&v107 = v87;
      *(&v107 + 1) = v89;
      goto LABEL_75;
    }

    if (v106 <= 1u)
    {
      v60 = a3;
      v69 = v102;
      if (v106)
      {
        v70 = MEMORY[0x1E69E7668];
      }

      else
      {
        v70 = MEMORY[0x1E69E72F0];
      }

      v108 = v70;
      swift_unknownObjectRelease();
      LODWORD(v107) = v69;
      goto LABEL_75;
    }

    v60 = a3;
    if (v106 == 2)
    {
      v61 = v102;
      v62 = MEMORY[0x1E69E7360];
    }

    else
    {
      if (v106 != 3)
      {
        v75 = v102;
        v108 = MEMORY[0x1E69E6448];
        swift_unknownObjectRelease();
        LODWORD(v107) = v75;
        goto LABEL_75;
      }

      v61 = v102;
      v62 = MEMORY[0x1E69E76D8];
    }

    v108 = v62;
    swift_unknownObjectRelease();
    *&v107 = v61;
LABEL_75:
    sub_1D8C2AB08(v109);
    sub_1D8C51FD4(v112, &qword_1ECAAB138, &unk_1D8C86900);
    return sub_1D8C59AD8(&v107, v60);
  }

  v14 = *(v6 + 16);
  v112[0] = *v6;
  v112[1] = v14;
  swift_unknownObjectRetain();
  v20 = UnsafeSchematizedData.getArray(forFieldName:)(a1, a2);
  swift_unknownObjectRelease();
  v21 = *(v20 + 2);
  if (!v21)
  {

    v24 = MEMORY[0x1E69E7CC0];
LABEL_40:
    *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB268, &qword_1D8C87240);
    result = swift_unknownObjectRelease();
    *a3 = v24;
    return result;
  }

  *&v107 = MEMORY[0x1E69E7CC0];
  v94 = v21;
  sub_1D8C5E268(0, v21, 0);
  v22 = v94;
  v23 = 0;
  v24 = v107;
  v25 = (v20 + 32);
  v91 = v20;
  while (1)
  {
    v26 = *(v20 + 2);
    if (v23 >= v26)
    {
      break;
    }

    sub_1D8C29EAC(v25, v112);
    sub_1D8C29EAC(v112, &v110);
    if (v111[24] <= 4u)
    {
      if (v111[24] <= 1u)
      {
        if (v111[24])
        {
          v33 = MEMORY[0x1E69E7668];
        }

        else
        {
          v33 = MEMORY[0x1E69E72F0];
        }

        v99 = v33;
        LODWORD(v98) = v110;
        goto LABEL_28;
      }

      if (v111[24] == 2)
      {
        v27 = v110;
        v28 = MEMORY[0x1E69E7360];
      }

      else
      {
        if (v111[24] != 3)
        {
          v99 = MEMORY[0x1E69E6448];
          LODWORD(v98) = v110;
          goto LABEL_28;
        }

        v27 = v110;
        v28 = MEMORY[0x1E69E76D8];
      }

      v99 = v28;
      *&v98 = v27;
    }

    else
    {
      if (v111[24] > 7u)
      {
        if (v111[24] == 8)
        {
          sub_1D8C2AA1C(&v110, v109);
          v34 = *&v109[24];
          v35 = *&v109[32];
          __swift_project_boxed_opaque_existential_1(v109, *&v109[24]);
          v36 = (*(v35 + 24))(v34, v35);
          v22 = v94;
          v99 = MEMORY[0x1E69E6158];
          *&v98 = v36;
          *(&v98 + 1) = v37;
          sub_1D8C2AB08(v112);
          __swift_destroy_boxed_opaque_existential_1(v109);
        }

        else
        {
          if (v111[24] == 9)
          {
            sub_1D8C2AA1C(&v110, v109);
            v29 = *&v109[24];
            v30 = *&v109[32];
            __swift_project_boxed_opaque_existential_1(v109, *&v109[24]);
            v31 = (*(v30 + 16))(v29, v30);
            v99 = MEMORY[0x1E6969080];
            *&v98 = v31;
            *(&v98 + 1) = v32;
            sub_1D8C2AB08(v112);
            __swift_destroy_boxed_opaque_existential_1(v109);
          }

          else
          {
            v46 = *v111;
            v47 = *&v111[8];
            v48 = type metadata accessor for QueryableMessage();
            v93 = v110;
            v49 = objc_allocWithZone(v48);
            v50 = &v49[OBJC_IVAR____TtC17PoirotSchematizer16QueryableMessage_data];
            *v50 = v93;
            *(v50 + 2) = v46;
            *(v50 + 3) = v47;
            v97.receiver = v49;
            v97.super_class = v48;
            swift_unknownObjectRetain();
            v51 = objc_msgSendSuper2(&v97, sel_init);
            v99 = v48;
            swift_unknownObjectRelease();
            *&v98 = v51;
            sub_1D8C2AB08(v112);
          }

          v22 = v94;
        }

        goto LABEL_35;
      }

      if (v111[24] == 5)
      {
        v99 = MEMORY[0x1E69E63B0];
        *&v98 = v110;
      }

      else
      {
        if (v111[24] != 6)
        {
          v38 = *v111;
          v92 = v111[16];
          if (v111[16])
          {
            v90 = *&v111[8];
            v39 = *(&v110 + 1);
            v40 = swift_getObjectType();
            v41 = v38;
            v42 = (*(v39 + 48))(v38, v40, v39);
            v44 = v43;
            v45 = v90;
          }

          else
          {

            v42 = v38;
            v41 = v38;
            v44 = v45;
          }

          v99 = MEMORY[0x1E69E6158];
          swift_unknownObjectRelease();
          sub_1D8C31E4C(v41, v45, v92);
          *&v98 = v42;
          *(&v98 + 1) = v44;
          sub_1D8C2AB08(v112);
          v22 = v94;
          v20 = v91;
          goto LABEL_35;
        }

        v99 = MEMORY[0x1E69E6370];
        LOBYTE(v98) = v110;
      }
    }

LABEL_28:
    sub_1D8C2AB08(v112);
LABEL_35:
    sub_1D8C59AD8(&v98, &v102);
    *&v107 = v24;
    v53 = *(v24 + 16);
    v52 = *(v24 + 24);
    if (v53 >= v52 >> 1)
    {
      sub_1D8C5E268((v52 > 1), v53 + 1, 1);
      v22 = v94;
      v24 = v107;
    }

    ++v23;
    *(v24 + 16) = v53 + 1;
    sub_1D8C59AD8(&v102, (v24 + 32 * v53 + 32));
    v25 += 48;
    if (v22 == v23)
    {

      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_55:
  if (v26 == 8)
  {
    sub_1D8C2AA1C(&v102, &v98);
    v72 = v99;
    v73 = v100;
    __swift_project_boxed_opaque_existential_1(&v98, v99);
    v65 = (*(v73 + 24))(v72, v73);
    v67 = v74;
    v68 = MEMORY[0x1E69E6158];
LABEL_64:
    v108 = v68;
    swift_unknownObjectRelease();
    *&v107 = v65;
    *(&v107 + 1) = v67;
    sub_1D8C2AB08(v109);
    sub_1D8C51FD4(v112, &qword_1ECAAB138, &unk_1D8C86900);
    __swift_destroy_boxed_opaque_existential_1(&v98);
  }

  else
  {
    if (v26 == 9)
    {
      sub_1D8C2AA1C(&v102, &v98);
      v63 = v99;
      v64 = v100;
      __swift_project_boxed_opaque_existential_1(&v98, v99);
      v65 = (*(v64 + 16))(v63, v64);
      v67 = v66;
      v68 = MEMORY[0x1E6969080];
      goto LABEL_64;
    }

    v81 = v103;
    v82 = v104;
    v83 = type metadata accessor for QueryableMessage();
    v95 = v102;
    v84 = objc_allocWithZone(v83);
    v85 = &v84[OBJC_IVAR____TtC17PoirotSchematizer16QueryableMessage_data];
    *v85 = v95;
    *(v85 + 2) = v81;
    *(v85 + 3) = v82;
    v101.receiver = v84;
    v101.super_class = v83;
    swift_unknownObjectRetain();
    v86 = objc_msgSendSuper2(&v101, sel_init);
    v108 = v83;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *&v107 = v86;
LABEL_71:
    sub_1D8C2AB08(v109);
    sub_1D8C51FD4(v112, &qword_1ECAAB138, &unk_1D8C86900);
  }

  v60 = a3;
  return sub_1D8C59AD8(&v107, v60);
}

id sub_1D8C6CB94(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  v6 = sub_1D8C84D84();
  v8 = v7;
  v9 = a1;
  a4(v18, v6, v8);

  v10 = v19;
  if (v19)
  {
    v11 = __swift_project_boxed_opaque_existential_1(v18, v19);
    v12 = *(v10 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x1EEE9AC00](v11);
    v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15);
    v16 = sub_1D8C85294();
    (*(v12 + 8))(v15, v10);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

id sub_1D8C6CD2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QueryableMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D8C6CD94(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D8C6CE60(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1D8C5998C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1D8C6CE60(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1D8C6CF6C(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_1D8C85144();
    a6 = v11;
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

uint64_t sub_1D8C6CF6C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D8C6CFB8(a1, a2);
  sub_1D8C6D0E8(&unk_1F544FC38);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1D8C6CFB8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D8C7ADD0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1D8C85144();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1D8C84E74();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D8C7ADD0(v10, 0);
        result = sub_1D8C85104();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D8C6D0E8(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1D8C6D1D4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1D8C6D1D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB3B0, &qword_1D8C88358);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1D8C6D2C8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v33 = a2;
  v7 = v6;
  v8 = v5;
  v10 = *v5;
  v11 = *a3;
  v12 = *(a3 + 1);
  v13 = *(a3 + 2);
  v14 = *(a3 + 3);
  v15 = a3[32];
  v16 = *(a3 + 9);
  v17 = a3[40];
  v19 = *(a3 + 6);
  v18 = *(a3 + 7);
  *(v8 + 88) = 1;
  *(v8 + 73) = v15;
  v8[10] = v14;
  *(v8 + 26) = v16;
  *(v8 + 108) = v17;
  swift_unknownObjectWeakInit();
  v28[0] = v11;
  v29 = v12;
  v30 = v13;
  v31 = a5;
  swift_unknownObjectWeakAssign();
  v32 = 0;
  sub_1D8C6DCB4(v28, (v8 + 4));
  ObjectType = swift_getObjectType();

  if ((sub_1D8C4F020(ObjectType, a5) & 1) == 0)
  {

    swift_unknownObjectRelease();
    sub_1D8C2C670(v19, v18);
    goto LABEL_5;
  }

  if (v18 >> 60 == 15)
  {

    sub_1D8C2C670(v19, v18);
    swift_unknownObjectRelease();
LABEL_5:
    v21 = 0;
    goto LABEL_6;
  }

  sub_1D8C2C5E4(v19, v18);
  sub_1D8C4F084(ObjectType, a5);
  if (v7)
  {
    sub_1D8C2C670(v19, v18);

    swift_unknownObjectRelease();

    sub_1D8C2C670(v19, v18);
    sub_1D8C6DCEC((v8 + 4));
    swift_deallocPartialClassInstance();
    return v8;
  }

  v24 = v23;
  v25 = swift_getObjectType();
  v21 = (*(v24 + 80))(v19, v18, v25, v24);

  swift_unknownObjectRelease();
  sub_1D8C2C670(v19, v18);
  swift_unknownObjectRelease();
  sub_1D8C2C670(v19, v18);
LABEL_6:
  v8[12] = v21;
  v22 = v33;
  v8[2] = a1;
  v8[3] = v22;
  return v8;
}

void *sub_1D8C6D56C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (a3)
  {
    v6 = v4;
    ObjectType = swift_getObjectType();
    result = (*(a1 + 24))(a2, a3, ObjectType, a1);
    if (!v5)
    {
      v14 = result;
      v15 = v13;
      if (object_getClass(result) == _TtC17PoirotSchematizer18ProtoMessageSchema && v14 != 0)
      {
        swift_unknownObjectRetain();
      }

      swift_weakInit();

      v20 = 2;
      swift_beginAccess();
      sub_1D8C6DC14(v19, v6 + 32);
      swift_endAccess();
      swift_getObjectType();
      MessageSchemaDescribing.asPublic()(v15, v19);
      result = swift_unknownObjectRelease();
      v18 = v19[1] | 0x4000000000000000;
      *a4 = v19[0];
      a4[1] = v18;
    }
  }

  else
  {
    sub_1D8C2F8AC();
    swift_allocError();
    *v17 = xmmword_1D8C88360;
    *(v17 + 16) = 8;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D8C6D6E4@<X0>(uint64_t *a1@<X8>)
{
  v3 = v2;
  swift_beginAccess();
  result = sub_1D8C6DB74(v1 + 32, v25);
  if (v26)
  {
    if (v26 == 1)
    {
      *a1 = v25[0];
    }

    else
    {
      sub_1D8C6DC4C(v25, v19);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        result = sub_1D8C6DC84(v19);
        *a1 = v10;
        a1[1] = 0x40000001F54519C8uLL;
      }

      else
      {
        sub_1D8C2F8AC();
        swift_allocError();
        *v12 = 0xD000000000000012;
        *(v12 + 8) = 0x80000001D8C8C640;
        *(v12 + 16) = 2;
        swift_willThrow();
        return sub_1D8C6DC84(v19);
      }
    }

    return result;
  }

  sub_1D8C6DBAC(v25, v21);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    sub_1D8C2F8AC();
    swift_allocError();
    *v11 = 0xD000000000000012;
    *(v11 + 8) = 0x80000001D8C8C640;
    *(v11 + 16) = 2;
    swift_willThrow();
    return sub_1D8C6DBE4(v21);
  }

  v6 = v24;
  if (v21[0] == 9)
  {
    v7 = v23;
    if (v23)
    {
      v8 = v22;

      sub_1D8C6D56C(v6, v8, v7, a1);
      sub_1D8C6DBE4(v21);
      swift_unknownObjectRelease();
    }

    sub_1D8C2F8AC();
    swift_allocError();
    *v17 = xmmword_1D8C88360;
    *(v17 + 16) = 8;
    swift_willThrow();
    swift_unknownObjectRelease();
    return sub_1D8C6DBE4(v21);
  }

  v13 = v22;
  v14 = v23;
  v18[0] = v21[0];

  sub_1D8C82D20(v18, v13, v14, v6, v19);
  result = sub_1D8C6DBE4(v21);
  if (!v3)
  {
    v15 = v19[0];
    v16 = v19[1];
    v20 = 1;
    swift_beginAccess();
    sub_1D8C2B50C(v15, v16);
    sub_1D8C6DC14(v19, v1 + 32);
    result = swift_endAccess();
    *a1 = v15;
    a1[1] = v16;
  }

  return result;
}

uint64_t sub_1D8C6D998()
{
  sub_1D8C6DCEC(v0 + 32);
  v1 = *(v0 + 96);
}

uint64_t sub_1D8C6D9C8()
{
  v1 = *(v0 + 24);

  sub_1D8C6DCEC(v0 + 32);
  v2 = *(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8C6DA5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8C6DA98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1D8C6DAE4(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1D8C6DD1C(uint64_t a1, int a2)
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

uint64_t sub_1D8C6DD3C(uint64_t result, int a2, int a3)
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

uint64_t sub_1D8C6DD74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 32) & 0xF000000000000007) != 0)
  {
    v2 = *(a1 + 24) & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8C6DDC0(uint64_t result, int a2, int a3)
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
      *(result + 32) = 1;
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

unint64_t *sub_1D8C6DE1C@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v4 = *result;
  v3 = result[1];
  if (v3 >> 62)
  {
    if (v3 >> 62 == 2 && v4 <= 0xC)
    {
      switch(v4)
      {
        case 1uLL:
          v39 = *v2;
          if (*v2)
          {
            v40 = v2[1] - v39;
            v41 = v2[3];
            if (v41 >= v40)
            {
              goto LABEL_169;
            }
          }

          else
          {
            v41 = v2[3];
            if ((v41 & 0x8000000000000000) == 0)
            {
              goto LABEL_169;
            }

            v40 = 0;
          }

          v71 = *(v39 + v41);
          v72 = v41 + 1;
          if ((v71 & 0x8000000000000000) == 0)
          {
            v2[3] = v72;
            goto LABEL_100;
          }

          if (v72 < v40)
          {
            v71 &= 0x7Fu;
            v95 = (v39 + v72);
            v96 = v41 + 2;
            v97 = 7;
            while (1)
            {
              v98 = *v95++;
              v71 |= (v98 & 0x7F) << v97;
              if ((v98 & 0x80) == 0)
              {
                break;
              }

              if (v96 < v40)
              {
                ++v96;
                v17 = v97 > 0x38;
                v97 += 7;
                if (!v17)
                {
                  continue;
                }
              }

              goto LABEL_169;
            }

            v2[3] = v96;
LABEL_100:
            *a2 = v71;
            goto LABEL_101;
          }

          goto LABEL_169;
        case 2uLL:
          v30 = *v2;
          if (*v2)
          {
            v31 = v2[1] - v30;
            v32 = v2[3];
            if (v32 >= v31)
            {
              goto LABEL_169;
            }
          }

          else
          {
            v32 = v2[3];
            if ((v32 & 0x8000000000000000) == 0)
            {
              goto LABEL_169;
            }

            v31 = 0;
          }

          v63 = *(v30 + v32);
          v64 = v32 + 1;
          if ((v63 & 0x8000000000000000) == 0)
          {
            v2[3] = v64;
            goto LABEL_81;
          }

          if (v64 < v31)
          {
            v63 &= 0x7Fu;
            v83 = (v30 + v64);
            v84 = v32 + 2;
            v85 = 7;
            while (1)
            {
              v86 = *v83++;
              v63 |= (v86 & 0x7F) << v85;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              if (v84 < v31)
              {
                ++v84;
                v17 = v85 > 0x38;
                v85 += 7;
                if (!v17)
                {
                  continue;
                }
              }

              goto LABEL_169;
            }

            v2[3] = v84;
LABEL_81:
            *a2 = -(v63 & 1) ^ (v63 >> 1);
            *(a2 + 40) = 0;
            return result;
          }

          goto LABEL_169;
        case 3uLL:
          v33 = v2[3];
          v34 = *v2;
          if (*v2)
          {
            if (v2[1] - v34 < v33)
            {
              goto LABEL_186;
            }

            v35 = (v34 + v33);
          }

          else
          {
            if (v33 > 0)
            {
              goto LABEL_192;
            }

            v35 = 0;
          }

          v54 = __OFADD__(v33, 4);
          v65 = v33 + 4;
          if (v54)
          {
            goto LABEL_180;
          }

          v66 = *v35;
          v2[3] = v65;
          *a2 = v66;
LABEL_101:
          *(a2 + 40) = 1;
          return result;
        case 4uLL:
          v21 = v2[3];
          v22 = *v2;
          if (*v2)
          {
            if (v2[1] - v22 < v21)
            {
              goto LABEL_184;
            }

            v23 = (v22 + v21);
          }

          else
          {
            if (v21 > 0)
            {
              goto LABEL_190;
            }

            v23 = 0;
          }

          v54 = __OFADD__(v21, 4);
          v57 = v21 + 4;
          if (v54)
          {
            goto LABEL_178;
          }

          v58 = *v23;
          v2[3] = v57;
          *a2 = v58;
          *(a2 + 40) = 0;
          return result;
        case 5uLL:
          v42 = *v2;
          if (*v2)
          {
            v43 = v2[1] - v42;
            v44 = v2[3];
            if (v44 >= v43)
            {
              goto LABEL_169;
            }
          }

          else
          {
            v44 = v2[3];
            if ((v44 & 0x8000000000000000) == 0)
            {
              goto LABEL_169;
            }

            v43 = 0;
          }

          v62 = *(v42 + v44);
          v73 = v44 + 1;
          if ((v62 & 0x8000000000000000) == 0)
          {
            v2[3] = v73;
            goto LABEL_106;
          }

          if (v73 >= v43)
          {
            goto LABEL_169;
          }

          v62 &= 0x7Fu;
          v99 = (v42 + v73);
          v100 = v44 + 2;
          v101 = 7;
          while (1)
          {
            v102 = *v99++;
            v62 |= (v102 & 0x7F) << v101;
            if ((v102 & 0x80) == 0)
            {
              break;
            }

            if (v100 < v43)
            {
              ++v100;
              v17 = v101 > 0x38;
              v101 += 7;
              if (!v17)
              {
                continue;
              }
            }

            goto LABEL_169;
          }

          v2[3] = v100;
LABEL_106:
          *a2 = v62;
LABEL_107:
          *(a2 + 40) = 2;
          return result;
        case 6uLL:
          v45 = *v2;
          if (*v2)
          {
            v46 = v2[1] - v45;
            v47 = v2[3];
            if (v47 >= v46)
            {
              goto LABEL_169;
            }
          }

          else
          {
            v47 = v2[3];
            if ((v47 & 0x8000000000000000) == 0)
            {
              goto LABEL_169;
            }

            v46 = 0;
          }

          v74 = *(v45 + v47);
          v75 = v47 + 1;
          if ((v74 & 0x8000000000000000) == 0)
          {
            v2[3] = v75;
            goto LABEL_120;
          }

          if (v75 >= v46)
          {
            goto LABEL_169;
          }

          v74 &= 0x7Fu;
          v103 = (v45 + v75);
          v104 = v47 + 2;
          v105 = 7;
          while (1)
          {
            v106 = *v103++;
            v74 |= (v106 & 0x7F) << v105;
            if ((v106 & 0x80) == 0)
            {
              break;
            }

            if (v104 < v46)
            {
              ++v104;
              v17 = v105 > 0x38;
              v105 += 7;
              if (!v17)
              {
                continue;
              }
            }

            goto LABEL_169;
          }

          v2[3] = v104;
LABEL_120:
          *a2 = v74;
          *(a2 + 40) = 3;
          return result;
        case 7uLL:
          v36 = *v2;
          if (*v2)
          {
            v37 = v2[1] - v36;
            v38 = v2[3];
            if (v38 >= v37)
            {
              goto LABEL_169;
            }
          }

          else
          {
            v38 = v2[3];
            if ((v38 & 0x8000000000000000) == 0)
            {
              goto LABEL_169;
            }

            v37 = 0;
          }

          v67 = *(v36 + v38);
          v68 = v38 + 1;
          if ((v67 & 0x8000000000000000) == 0)
          {
            v2[3] = v68;
            goto LABEL_90;
          }

          if (v68 < v37)
          {
            v67 &= 0x7Fu;
            v87 = (v36 + v68);
            v88 = v38 + 2;
            v89 = 7;
            while (1)
            {
              v90 = *v87++;
              v67 |= (v90 & 0x7F) << v89;
              if ((v90 & 0x80) == 0)
              {
                break;
              }

              if (v88 < v37)
              {
                ++v88;
                v17 = v89 > 0x38;
                v89 += 7;
                if (!v17)
                {
                  continue;
                }
              }

              goto LABEL_169;
            }

            v2[3] = v88;
LABEL_90:
            *a2 = -(v67 & 1) ^ (v67 >> 1);
            goto LABEL_107;
          }

          goto LABEL_169;
        case 8uLL:
          v51 = v2[3];
          v52 = *v2;
          if (*v2)
          {
            if (v2[1] - v52 < v51)
            {
              goto LABEL_188;
            }

            v53 = (v52 + v51);
          }

          else
          {
            if (v51 > 0)
            {
              goto LABEL_194;
            }

            v53 = 0;
          }

          v54 = __OFADD__(v51, 8);
          v78 = v51 + 8;
          if (v54)
          {
            goto LABEL_182;
          }

          v74 = *v53;
          v2[3] = v78;
          goto LABEL_120;
        case 9uLL:
          v27 = v2[3];
          v28 = *v2;
          if (*v2)
          {
            if (v2[1] - v28 < v27)
            {
              goto LABEL_185;
            }

            v29 = (v28 + v27);
          }

          else
          {
            if (v27 > 0)
            {
              goto LABEL_191;
            }

            v29 = 0;
          }

          v54 = __OFADD__(v27, 8);
          v61 = v27 + 8;
          if (v54)
          {
            goto LABEL_179;
          }

          v62 = *v29;
          v2[3] = v61;
          goto LABEL_106;
        case 0xAuLL:
          v48 = v2[3];
          v49 = *v2;
          if (*v2)
          {
            if (v2[1] - v49 < v48)
            {
              goto LABEL_187;
            }

            v50 = (v49 + v48);
          }

          else
          {
            if (v48 > 0)
            {
              goto LABEL_193;
            }

            v50 = 0;
          }

          v54 = __OFADD__(v48, 8);
          v76 = v48 + 8;
          if (v54)
          {
            goto LABEL_181;
          }

          v77 = *v50;
          v2[3] = v76;
          *a2 = v77;
          *(a2 + 40) = 5;
          return result;
        case 0xBuLL:
          v18 = v2[3];
          v19 = *v2;
          if (*v2)
          {
            if (v2[1] - v19 < v18)
            {
              goto LABEL_183;
            }

            v20 = (v19 + v18);
          }

          else
          {
            if (v18 > 0)
            {
              goto LABEL_189;
            }

            v20 = 0;
          }

          v54 = __OFADD__(v18, 4);
          v55 = v18 + 4;
          if (!v54)
          {
            v56 = *v20;
            v2[3] = v55;
            *a2 = v56;
            *(a2 + 40) = 4;
            return result;
          }

          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
          return result;
        case 0xCuLL:
          v24 = *v2;
          if (*v2)
          {
            v25 = v2[1] - v24;
            v26 = v2[3];
            if (v26 >= v25)
            {
              goto LABEL_169;
            }
          }

          else
          {
            v26 = v2[3];
            if ((v26 & 0x8000000000000000) == 0)
            {
              goto LABEL_169;
            }

            v25 = 0;
          }

          v59 = *(v24 + v26);
          v60 = v26 + 1;
          if ((v59 & 0x8000000000000000) == 0)
          {
            v2[3] = v60;
            goto LABEL_72;
          }

          if (v60 < v25)
          {
            v59 &= 0x7Fu;
            v79 = (v24 + v60);
            v80 = v26 + 2;
            v81 = 7;
            while (1)
            {
              v82 = *v79++;
              v59 |= (v82 & 0x7F) << v81;
              if ((v82 & 0x80) == 0)
              {
                break;
              }

              if (v80 < v25)
              {
                ++v80;
                v17 = v81 > 0x38;
                v81 += 7;
                if (!v17)
                {
                  continue;
                }
              }

              goto LABEL_169;
            }

            v2[3] = v80;
LABEL_72:
            *a2 = v59 != 0;
            *(a2 + 40) = 6;
            return result;
          }

          goto LABEL_169;
        default:
          v5 = *v2;
          if (*v2)
          {
            v6 = v2[1] - v5;
            v7 = v2[3];
            if (v7 >= v6)
            {
              goto LABEL_169;
            }
          }

          else
          {
            v7 = v2[3];
            if ((v7 & 0x8000000000000000) == 0)
            {
              goto LABEL_169;
            }

            v6 = 0;
          }

          v69 = *(v5 + v7);
          v70 = v7 + 1;
          if ((v69 & 0x8000000000000000) == 0)
          {
            v2[3] = v70;
            goto LABEL_95;
          }

          if (v70 < v6)
          {
            v69 &= 0x7Fu;
            v91 = (v5 + v70);
            v92 = v7 + 2;
            v93 = 7;
            while (1)
            {
              v94 = *v91++;
              v69 |= (v94 & 0x7F) << v93;
              if ((v94 & 0x80) == 0)
              {
                break;
              }

              if (v92 < v6)
              {
                ++v92;
                v17 = v93 > 0x38;
                v93 += 7;
                if (!v17)
                {
                  continue;
                }
              }

              goto LABEL_169;
            }

            v2[3] = v92;
LABEL_95:
            *a2 = v69;
            *(a2 + 40) = 0;
            return result;
          }

          break;
      }
    }

    goto LABEL_169;
  }

  v8 = *v2;
  if (*v2)
  {
    v9 = v2[1] - v8;
    v10 = v2[3];
    if (v10 >= v9)
    {
      goto LABEL_169;
    }
  }

  else
  {
    v10 = v2[3];
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_169;
    }

    v9 = 0;
  }

  v11 = *(v8 + v10);
  v12 = v10 + 1;
  if ((v11 & 0x8000000000000000) == 0)
  {
    v2[3] = v12;
LABEL_15:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = v11;
    *(a2 + 24) = 0;
    *(a2 + 32) = 1;
    *(a2 + 40) = 7;
    return sub_1D8C2B50C(v4, v3);
  }

  if (v12 < v9)
  {
    v11 &= 0x7Fu;
    v13 = (v8 + v12);
    v14 = v10 + 2;
    v15 = 7;
    while (1)
    {
      v16 = *v13++;
      v11 |= (v16 & 0x7F) << v15;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      if (v14 < v9)
      {
        ++v14;
        v17 = v15 > 0x38;
        v15 += 7;
        if (!v17)
        {
          continue;
        }
      }

      goto LABEL_169;
    }

    v2[3] = v14;
    goto LABEL_15;
  }

LABEL_169:
  sub_1D8C36A64();
  swift_allocError();
  *v107 = xmmword_1D8C86190;
  *(v107 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_1D8C6E5F0()
{
  v1 = v0[3];
  v2 = *v0;
  if (*v0)
  {
    if (v0[1] - v2 < v1)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    v3 = (v2 + v1);
    v4 = __OFADD__(v1, 4);
    v5 = v1 + 4;
    if (!v4)
    {
LABEL_4:
      result = *v3;
      v0[3] = v5;
      return result;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v1 <= 0)
  {
    v3 = 0;
    v4 = __OFADD__(v1, 4);
    v5 = v1 + 4;
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

LABEL_10:
  __break(1u);
  return result;
}