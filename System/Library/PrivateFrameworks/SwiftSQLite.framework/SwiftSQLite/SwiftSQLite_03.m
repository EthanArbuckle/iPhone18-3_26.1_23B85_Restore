uint64_t OnConflict.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x4543414C504552;
  v3 = 0x54524F4241;
  v4 = 1279869254;
  if (v1 != 3)
  {
    v4 = 0x45524F4E4749;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4B4341424C4C4F52;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

SwiftSQLite::Insert __swiftcall QueryType.insert()()
{
  v3 = v1;
  v4 = v0;
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC540;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(inited + 32) = 0x4920545245534E49;
  *(inited + 56) = v7;
  *(inited + 64) = &protocol witness table for Expression<A>;
  v8 = MEMORY[0x277D84F90];
  *(inited + 40) = 0xEB000000004F544ELL;
  *(inited + 48) = v8;
  sub_26C070730(0, v4, v3, (inited + 72));
  *(inited + 136) = v7;
  *(inited + 144) = &protocol witness table for Expression<A>;
  strcpy((inited + 112), "DEFAULT VALUES");
  *(inited + 127) = -18;
  *(inited + 128) = v8;
  sub_26C0688D8(inited, v16);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  v9 = v17;
  v10 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  (*(v10 + 8))(&v14, v9, v10);
  *v5 = v14;
  *(v5 + 8) = v15;
  v11 = __swift_destroy_boxed_opaque_existential_1(v16);
  result.bindings._rawValue = v13;
  result.template._object = v12;
  result.template._countAndFlagsBits = v11;
  return result;
}

uint64_t QueryType.insert(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC540;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(inited + 32) = 0x4920545245534E49;
  *(inited + 56) = v9;
  *(inited + 64) = &protocol witness table for Expression<A>;
  v10 = MEMORY[0x277D84F90];
  *(inited + 40) = 0xEB000000004F544ELL;
  *(inited + 48) = v10;
  sub_26C070730(0, a2, a3, (inited + 72));
  v12 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v13 = *(*(v11 + 8) + 8);
  *(inited + 136) = v9;
  *(inited + 144) = &protocol witness table for Expression<A>;
  v13(v12);
  sub_26C0688D8(inited, v19);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  v14 = v20;
  v15 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(v15 + 8))(&v17, v14, v15);
  *a4 = v17;
  *(a4 + 8) = v18;
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_26C0A4C38(void *a1, void *a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = Expressible.asSQL()();
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = Expressible.asSQL()();
  if (v4._countAndFlagsBits == v6._countAndFlagsBits && v4._object == v6._object)
  {

    v9 = 0;
  }

  else
  {
    v8 = sub_26C0ABC70();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_26C0A4D38(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x277D84F90];
    v22 = a2;
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_26C06FE38(v8, v20);
      v10 = v6(v20);
      if (v3)
      {
        sub_26C0717EC(v20);

        goto LABEL_15;
      }

      if (v10)
      {
        v17 = v20[2];
        v18 = v20[3];
        v19 = v20[4];
        v15 = v20[0];
        v16 = v20[1];
        result = swift_isUniquelyReferenced_nonNull_native();
        v21 = v9;
        if ((result & 1) == 0)
        {
          result = sub_26C088A20(0, *(v9 + 16) + 1, 1);
          v9 = v21;
        }

        v12 = *(v9 + 16);
        v11 = *(v9 + 24);
        if (v12 >= v11 >> 1)
        {
          result = sub_26C088A20((v11 > 1), v12 + 1, 1);
          v9 = v21;
        }

        *(v9 + 16) = v12 + 1;
        v13 = (v9 + 80 * v12);
        v13[2] = v15;
        v13[5] = v18;
        v13[6] = v19;
        v13[3] = v16;
        v13[4] = v17;
        v6 = v14;
      }

      else
      {
        result = sub_26C0717EC(v20);
      }

      ++v7;
      v8 += 80;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_15:

    return v9;
  }

  return result;
}

void *QueryType.upsert(_:onConflictOf:set:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v48 = a5;
  v47 = a4;
  v50 = a6;
  *&v51 = a3;
  v49 = a2;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = a1 + 32;
    v9 = MEMORY[0x277D84F90];
    v52 = xmmword_26C0AC5C0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_26C06FE38(v8, v60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
      inited = swift_initStackObject();
      *(inited + 16) = v52;
      sub_26C06B6BC(v60, inited + 32);
      v12 = v9[2];

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v14 = v9[3] >> 1, v15 = v9, v14 <= v12))
      {
        result = sub_26C06A384(result, v12 + 1, 1, v9);
        v15 = result;
        v14 = result[3] >> 1;
      }

      if (v14 <= *(v15 + 16))
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
      swift_arrayInitWithCopy();

      ++*(v15 + 16);
      v16 = swift_initStackObject();
      *(v16 + 16) = v52;
      sub_26C06B6BC(v62, v16 + 32);
      v17 = v10[2];

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v18 = v10[3] >> 1, v19 = v10, v18 <= v17))
      {
        result = sub_26C06A384(result, v17 + 1, 1, v10);
        v19 = result;
        v18 = result[3] >> 1;
      }

      if (v18 <= *(v19 + 16))
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      ++*(v19 + 16);

      sub_26C0717EC(v60);
      v8 += 80;
      v9 = v15;
      v10 = v19;
      --v6;
      v7 = MEMORY[0x277D84F90];
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
    v19 = MEMORY[0x277D84F90];
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
    v20 = swift_allocObject();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    *(v20 + 32) = 0x545245534E49;
    v46 = v20 + 32;
    *(v20 + 56) = v21;
    *(v20 + 64) = &protocol witness table for Expression<A>;
    *(v20 + 40) = 0xE600000000000000;
    *(v20 + 48) = v7;
    *(v20 + 96) = v21;
    *(v20 + 104) = &protocol witness table for Expression<A>;
    *(v20 + 72) = 1330925129;
    *(v20 + 80) = 0xE400000000000000;
    *(v20 + 88) = v7;
    v22 = v48;
    sub_26C070730(0, v47, v48, (v20 + 112));
    *(v20 + 176) = v21;
    *(v20 + 184) = &protocol witness table for Expression<A>;
    sub_26C0688D8(v15, v60);
    sub_26C06E24C((v20 + 152), v60, 0, 0xE000000000000000);
    __swift_destroy_boxed_opaque_existential_1(v60);
    *(v20 + 216) = v21;
    *(v20 + 224) = &protocol witness table for Expression<A>;
    *(v20 + 192) = 0x5345554C4156;
    *(v20 + 200) = 0xE600000000000000;
    *(v20 + 208) = v7;
    *(v20 + 256) = v21;
    *(v20 + 264) = &protocol witness table for Expression<A>;
    sub_26C0688D8(v19, v60);
    sub_26C06E24C((v20 + 232), v60, 0, 0xE000000000000000);

    __swift_destroy_boxed_opaque_existential_1(v60);
    sub_26C071840(v22, v20 + 272);
    *(v20 + 336) = v21;
    *(v20 + 344) = &protocol witness table for Expression<A>;
    *(v20 + 312) = 0x4C464E4F43204E4FLL;
    *(v20 + 320) = 0xEB00000000544349;
    *(v20 + 328) = v7;
    *(v20 + 376) = v21;
    *(v20 + 384) = &protocol witness table for Expression<A>;
    sub_26C06E24C((v20 + 352), v49, 0, 0xE000000000000000);
    *(v20 + 416) = v21;
    *(v20 + 424) = &protocol witness table for Expression<A>;
    strcpy((v20 + 392), "DO UPDATE SET");
    *(v20 + 406) = -4864;
    *(v20 + 408) = v7;
    v23 = *(v51 + 16);
    if (v23)
    {
      v59[0] = v7;
      sub_26C07272C(0, v23, 0);
      v24 = v51 + 32;
      v51 = xmmword_26C0AC580;
      do
      {
        sub_26C06FE38(v24, v60);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
        v25 = swift_initStackObject();
        *(v25 + 16) = v51;
        sub_26C06B6BC(v60, v25 + 32);
        sub_26C06B6BC(v62, v25 + 72);
        sub_26C0688D8(v25, &v55);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
        swift_arrayDestroy();
        v27 = v57;
        v26 = v58;
        __swift_project_boxed_opaque_existential_1(&v55, v57);
        (*(v26 + 8))(v53, v27, v26);
        v28 = *&v53[0];
        v52 = *(v53 + 8);
        __swift_destroy_boxed_opaque_existential_1(&v55);
        sub_26C0717EC(v60);
        v59[0] = v7;
        v30 = *(v7 + 16);
        v29 = *(v7 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_26C07272C((v29 > 1), v30 + 1, 1);
          v7 = v59[0];
        }

        *&v60[24] = v21;
        v61 = &protocol witness table for Expression<A>;
        *v60 = v28;
        *&v60[8] = v52;
        *(v7 + 16) = v30 + 1;
        sub_26C06A3A8(v60, v7 + 40 * v30 + 32);
        v24 += 80;
        --v23;
      }

      while (v23);
    }

    sub_26C0688D8(v7, (v20 + 432));

    v31 = MEMORY[0x277D84F90];
    for (i = 32; i != 472; i += 40)
    {
      sub_26C067878(v20 + i, v60, &qword_280479360, &qword_26C0AC5D8);
      v53[0] = *v60;
      v53[1] = *&v60[16];
      v54 = v61;
      if (*&v60[24])
      {
        sub_26C06A3A8(v53, &v55);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59[0] = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31 = sub_26C06A384(0, v31[2] + 1, 1, v31);
          v59[0] = v31;
        }

        v35 = v31[2];
        v34 = v31[3];
        if (v35 >= v34 >> 1)
        {
          v31 = sub_26C06A384((v34 > 1), v35 + 1, 1, v31);
          v59[0] = v31;
        }

        v36 = v57;
        v37 = v58;
        v38 = __swift_mutable_project_boxed_opaque_existential_1(&v55, v57);
        v39 = *(*(v36 - 8) + 64);
        MEMORY[0x28223BE20](v38);
        v41 = &v46 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v42 + 16))(v41);
        sub_26C06A410(v35, v41, v59, v36, v37);
        __swift_destroy_boxed_opaque_existential_1(&v55);
      }

      else
      {
        sub_26C06A56C(v53, &qword_280479360, &qword_26C0AC5D8);
      }
    }

    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_26C0688D8(v31, v60);

    v43 = *&v60[24];
    v44 = v61;
    __swift_project_boxed_opaque_existential_1(v60, *&v60[24]);
    (v44[1])(&v55, v43, v44);
    v45 = v50;
    *v50 = v55;
    *(v45 + 1) = v56;
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  return result;
}

SwiftSQLite::Delete __swiftcall QueryType.delete()()
{
  v3 = v1;
  v4 = v0;
  v25 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v41 = &protocol witness table for Expression<A>;
  v37 = 0x46204554454C4544;
  v38 = 0xEB000000004D4F52;
  v6 = MEMORY[0x277D84F90];
  v39 = MEMORY[0x277D84F90];
  v40 = v5;
  sub_26C070730(0, v4, v3, v42);
  sub_26C071840(v3, &v43);
  sub_26C0A3164(v4, v3, &v44);
  sub_26C0A32FC(v3, &v45);
  for (i = 32; i != 232; i += 40)
  {
    sub_26C067878(&v36[i], &v33, &qword_280479360, &qword_26C0AC5D8);
    v26[0] = v33;
    v26[1] = v34;
    v27 = v35;
    if (*(&v34 + 1))
    {
      sub_26C06A3A8(v26, &v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_26C06A384(0, v6[2] + 1, 1, v6);
        v32 = v6;
      }

      v10 = v6[2];
      v9 = v6[3];
      if (v10 >= v9 >> 1)
      {
        v6 = sub_26C06A384((v9 > 1), v10 + 1, 1, v6);
        v32 = v6;
      }

      v11 = v30;
      v12 = v31;
      v13 = __swift_mutable_project_boxed_opaque_existential_1(&v28, v30);
      v14 = *(*(v11 - 8) + 64);
      MEMORY[0x28223BE20](v13);
      v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v16);
      sub_26C06A410(v10, v16, &v32, v11, v12);
      __swift_destroy_boxed_opaque_existential_1(&v28);
    }

    else
    {
      sub_26C06A56C(v26, &qword_280479360, &qword_26C0AC5D8);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  sub_26C0688D8(v6, &v33);

  v18 = *(&v34 + 1);
  v19 = v35;
  __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
  (*(v19 + 8))(&v28, v18, v19);
  v20 = v25;
  *v25 = v28;
  *(v20 + 1) = v29;
  v21 = __swift_destroy_boxed_opaque_existential_1(&v33);
  result.bindings._rawValue = v23;
  result.template._object = v22;
  result.template._countAndFlagsBits = v21;
  return result;
}

uint64_t QueryType.exists.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  strcpy((inited + 32), "SELECT EXISTS");
  *(inited + 56) = v7;
  *(inited + 64) = &protocol witness table for Expression<A>;
  v8 = MEMORY[0x277D84F90];
  *(inited + 46) = -4864;
  *(inited + 48) = v8;
  v9 = *(*(a2 + 8) + 8);
  v16 = v7;
  v17 = &protocol witness table for Expression<A>;
  v9(v15, a1);
  *(inited + 96) = v7;
  *(inited + 104) = &protocol witness table for Expression<A>;
  sub_26C06E24C((inited + 72), v15, 0, 0xE000000000000000);
  __swift_destroy_boxed_opaque_existential_1(v15);
  sub_26C0688D8(inited, v15);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  v10 = v16;
  v11 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (v11[1])(&v13, v10, v11);
  *a3 = v13;
  *(a3 + 8) = v14;
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t QueryType.subscript.getter(void (*a1)(void *__return_ptr, uint64_t *, void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  a1(v11, &v8, v7);
  v8 = v11[0];
  v9 = v11[1];
  v10 = v11[2];
  QueryType.namespace<A>(_:)(&v8, a3, MEMORY[0x277D84F78] + 8, a4);
}

uint64_t QueryType.expression.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  sub_26C0A2854(a1, a2, v31);
  sub_26C0A2A2C(a1, a2, &v32);
  sub_26C071840(a2, &v33);
  sub_26C0A2EF0(a2, &v34);
  sub_26C0A3500(a1, a2, &v35);
  sub_26C0A3164(a1, a2, &v36);
  sub_26C0A32FC(a2, &v37);
  v5 = MEMORY[0x277D84F90];
  for (i = 32; i != 312; i += 40)
  {
    sub_26C067878(&v30[i], &v27, &qword_280479360, &qword_26C0AC5D8);
    v21[0] = v27;
    v21[1] = v28;
    v22 = v29;
    if (*(&v28 + 1))
    {
      sub_26C06A3A8(v21, v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = sub_26C06A384(0, v5[2] + 1, 1, v5);
        v26 = v5;
      }

      v9 = v5[2];
      v8 = v5[3];
      if (v9 >= v8 >> 1)
      {
        v5 = sub_26C06A384((v8 > 1), v9 + 1, 1, v5);
        v26 = v5;
      }

      v10 = v24;
      v11 = v25;
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
      v13 = *(*(v10 - 8) + 64);
      MEMORY[0x28223BE20](v12);
      v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v15);
      sub_26C06A410(v9, v15, &v26, v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v23);
    }

    else
    {
      sub_26C06A56C(v21, &qword_280479360, &qword_26C0AC5D8);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  sub_26C0688D8(v5, &v27);

  v17 = *(&v28 + 1);
  v18 = v29;
  __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
  (*(v18 + 8))(v17, v18);
  return __swift_destroy_boxed_opaque_existential_1(&v27);
}

__n128 Table.clauses.setter(uint64_t a1)
{
  v3 = *(v1 + 144);
  v13[8] = *(v1 + 128);
  v13[9] = v3;
  v14 = *(v1 + 160);
  v4 = *(v1 + 80);
  v13[4] = *(v1 + 64);
  v13[5] = v4;
  v5 = *(v1 + 112);
  v13[6] = *(v1 + 96);
  v13[7] = v5;
  v6 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v6;
  v7 = *(v1 + 48);
  v13[2] = *(v1 + 32);
  v13[3] = v7;
  sub_26C071710(v13);
  v8 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v8;
  *(v1 + 160) = *(a1 + 160);
  v9 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v9;
  v10 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v11;
  result = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

__n128 View.clauses.setter(uint64_t a1)
{
  v3 = *(v1 + 144);
  v13[8] = *(v1 + 128);
  v13[9] = v3;
  v14 = *(v1 + 160);
  v4 = *(v1 + 80);
  v13[4] = *(v1 + 64);
  v13[5] = v4;
  v5 = *(v1 + 112);
  v13[6] = *(v1 + 96);
  v13[7] = v5;
  v6 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v6;
  v7 = *(v1 + 48);
  v13[2] = *(v1 + 32);
  v13[3] = v7;
  sub_26C0AADB0(v13);
  v8 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v8;
  *(v1 + 160) = *(a1 + 160);
  v9 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v9;
  v10 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v11;
  result = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

__n128 sub_26C0A6158(uint64_t a1)
{
  v3 = *(v1 + 144);
  v13[8] = *(v1 + 128);
  v13[9] = v3;
  v14 = *(v1 + 160);
  v4 = *(v1 + 80);
  v13[4] = *(v1 + 64);
  v13[5] = v4;
  v5 = *(v1 + 112);
  v13[6] = *(v1 + 96);
  v13[7] = v5;
  v6 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v6;
  v7 = *(v1 + 48);
  v13[2] = *(v1 + 32);
  v13[3] = v7;
  sub_26C0AADB0(v13);
  v8 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v8;
  *(v1 + 160) = *(a1 + 160);
  v9 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v9;
  v10 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v11;
  result = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

uint64_t VirtualTable.clauses.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[9];
  v25 = v1[8];
  v26 = v3;
  v4 = v1[3];
  v5 = v1[5];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v7 = v1[5];
  v8 = v1[7];
  v23 = v1[6];
  v9 = v23;
  v24 = v8;
  v10 = v1[1];
  v18[0] = *v1;
  v18[1] = v10;
  v11 = v1[3];
  v13 = *v1;
  v12 = v1[1];
  v19 = v1[2];
  v14 = v19;
  v20 = v11;
  v15 = v1[9];
  *(a1 + 128) = v25;
  *(a1 + 144) = v15;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 96) = v9;
  *(a1 + 112) = v2;
  *a1 = v13;
  *(a1 + 16) = v12;
  v27 = *(v1 + 20);
  *(a1 + 160) = *(v1 + 20);
  *(a1 + 32) = v14;
  *(a1 + 48) = v4;
  return sub_26C06B654(v18, v17);
}

__n128 VirtualTable.clauses.setter(uint64_t a1)
{
  v3 = *(v1 + 144);
  v13[8] = *(v1 + 128);
  v13[9] = v3;
  v14 = *(v1 + 160);
  v4 = *(v1 + 80);
  v13[4] = *(v1 + 64);
  v13[5] = v4;
  v5 = *(v1 + 112);
  v13[6] = *(v1 + 96);
  v13[7] = v5;
  v6 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v6;
  v7 = *(v1 + 48);
  v13[2] = *(v1 + 32);
  v13[3] = v7;
  sub_26C0AADE0(v13);
  v8 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v8;
  *(v1 + 160) = *(a1 + 160);
  v9 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v9;
  v10 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v11;
  result = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

__n128 sub_26C0A6378(uint64_t a1)
{
  v3 = *(v1 + 144);
  v13[8] = *(v1 + 128);
  v13[9] = v3;
  v14 = *(v1 + 160);
  v4 = *(v1 + 80);
  v13[4] = *(v1 + 64);
  v13[5] = v4;
  v5 = *(v1 + 112);
  v13[6] = *(v1 + 96);
  v13[7] = v5;
  v6 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v6;
  v7 = *(v1 + 48);
  v13[2] = *(v1 + 32);
  v13[3] = v7;
  sub_26C0AADE0(v13);
  v8 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v8;
  *(v1 + 160) = *(a1 + 160);
  v9 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v9;
  v10 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v11;
  result = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

uint64_t ScalarQuery.clauses.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[9];
  v25 = v1[8];
  v26 = v3;
  v4 = v1[3];
  v5 = v1[5];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v7 = v1[5];
  v8 = v1[7];
  v23 = v1[6];
  v9 = v23;
  v24 = v8;
  v10 = v1[1];
  v18[0] = *v1;
  v18[1] = v10;
  v11 = v1[3];
  v13 = *v1;
  v12 = v1[1];
  v19 = v1[2];
  v14 = v19;
  v20 = v11;
  v15 = v1[9];
  *(a1 + 128) = v25;
  *(a1 + 144) = v15;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 96) = v9;
  *(a1 + 112) = v2;
  *a1 = v13;
  *(a1 + 16) = v12;
  v27 = *(v1 + 20);
  *(a1 + 160) = *(v1 + 20);
  *(a1 + 32) = v14;
  *(a1 + 48) = v4;
  return sub_26C06B654(v18, v17);
}

__n128 ScalarQuery.clauses.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 144);
  v14[8] = *(v2 + 128);
  v14[9] = v4;
  v15 = *(v2 + 160);
  v5 = *(v2 + 80);
  v14[4] = *(v2 + 64);
  v14[5] = v5;
  v6 = *(v2 + 112);
  v14[6] = *(v2 + 96);
  v14[7] = v6;
  v7 = *(v2 + 16);
  v14[0] = *v2;
  v14[1] = v7;
  v8 = *(v2 + 48);
  v14[2] = *(v2 + 32);
  v14[3] = v8;
  (*(*(a2 - 8) + 8))(v14);
  v9 = *(a1 + 144);
  *(v2 + 128) = *(a1 + 128);
  *(v2 + 144) = v9;
  *(v2 + 160) = *(a1 + 160);
  v10 = *(a1 + 80);
  *(v2 + 64) = *(a1 + 64);
  *(v2 + 80) = v10;
  v11 = *(a1 + 112);
  *(v2 + 96) = *(a1 + 96);
  *(v2 + 112) = v11;
  v12 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v12;
  result = *(a1 + 48);
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 48) = result;
  return result;
}

double ScalarQuery.init(_:database:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26C0AC5C0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(v10 + 64) = &protocol witness table for Expression<A>;
  *(v10 + 32) = 42;
  *(v10 + 40) = 0xE100000000000000;
  v12 = MEMORY[0x277D84F90];
  *(v10 + 48) = MEMORY[0x277D84F90];
  *(v10 + 56) = v11;
  *a5 = 0;
  *(a5 + 8) = v10;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  *(a5 + 64) = v12;
  result = 0.0;
  *(a5 + 72) = 0u;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0;
  *(a5 + 128) = v12;
  *(a5 + 136) = 0;
  *(a5 + 144) = 0;
  *(a5 + 152) = 256;
  *(a5 + 160) = v12;
  return result;
}

void (*sub_26C0A666C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = ScalarQuery.clauses.modify();
  return sub_26C0A66DC;
}

void sub_26C0A66DC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t Select.template.getter()
{
  v0 = sub_26C0696D0();

  return v0;
}

uint64_t Select.template.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Select.bindings.getter()
{
  sub_26C06C114();
}

uint64_t Select.bindings.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Select.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t Delete.template.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Delete.template.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Delete.bindings.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

SwiftSQLite::Delete __swiftcall Delete.init(_:_:)(Swift::String a1, Swift::OpaquePointer a2)
{
  *v2 = a1;
  *(v2 + 16) = a2;
  result.template = a1;
  result.bindings = a2;
  return result;
}

SwiftSQLite::Row_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RowIterator.failableNext()()
{
  v2 = v1;
  v3 = v0;
  v4 = *v1;
  v5 = v2[1];
  v6 = Statement.step()();
  if (!v9)
  {
    if (v6)
    {
      Statement.row.getter(v11);
      sub_26C06C95C(v11[0], v11[1]);
      *v3 = v5;
      v3[1] = v10;
    }

    else
    {
      *v3 = 0;
      v3[1] = 0;
    }
  }

  result.value.values._rawValue = v7;
  result.value.columnNames._rawValue = v6;
  result.is_nil = v8;
  return result;
}

uint64_t RowIterator.map<A>(_:)(void (*a1)(sqlite3_stmt **), uint64_t a2, uint64_t a3)
{
  v7 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v10 = v3[1];
  v61 = sub_26C0AB7E0();
  v12 = Statement.step()();
  if (v13)
  {
  }

  v47[2] = v9;
  v48 = v10;
  v49 = a1;
  v50 = a2;
  v47[1] = a3;
  v52 = v11;
  while (1)
  {
    if (!v12)
    {
      return v61;
    }

    v51 = v13;
    LODWORD(v15) = Statement.row.getter(&v59);
    v55 = v60;
    if (v60 >= 1)
    {
      break;
    }

    v17 = 0;
    v19 = MEMORY[0x277D84F90];
    v21 = a2;
LABEL_45:
    v41 = v19[3];
    if (v41 >= 2)
    {
      v42 = v41 >> 1;
      v40 = __OFSUB__(v42, v17);
      v43 = v42 - v17;
      if (v40)
      {
        goto LABEL_56;
      }

      v19[2] = v43;
    }

    v59 = v48;
    v60 = v19;

    v44 = v51;
    v49(&v59);
    if (v44)
    {
    }

    a2 = v21;

    sub_26C0ABA20();
    sub_26C0ABA00();
    v12 = Statement.step()();
    if (v13)
    {
    }
  }

  v16 = 0;
  v17 = 0;
  v18 = v59;
  v19 = MEMORY[0x277D84F90];
  v20 = (MEMORY[0x277D84F90] + 32);
  v21 = a2;
  v54 = v59;
  while (v16 != 0x80000000)
  {
    LODWORD(v15) = sqlite3_column_type(v18, v16);
    if (v15 <= 2)
    {
      if (v15 == 1)
      {
        v15 = sqlite3_column_int64(v18, v16);
        v22 = *&v15;
        v23 = MEMORY[0x277D84A28];
        v24 = &protocol witness table for Int64;
        if (v17)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_58;
        }

        v22 = sqlite3_column_double(v18, v16);
        v23 = MEMORY[0x277D839F8];
        v24 = &protocol witness table for Double;
        if (v17)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      switch(v15)
      {
        case 3:
          v15 = sqlite3_column_text(v18, v16);
          if (!v15)
          {
            goto LABEL_57;
          }

          v15 = sub_26C0AB920();
          v22 = *&v15;
          v21 = v25;
          v23 = MEMORY[0x277D837D0];
          v24 = &protocol witness table for String;
          if (v17)
          {
            goto LABEL_41;
          }

          break;
        case 5:
          v22 = 0.0;
          v21 = 0;
          v23 = 0;
          v24 = 0;
          if (v17)
          {
            goto LABEL_41;
          }

          break;
        case 4:
          v15 = sqlite3_column_blob(v18, v16);
          if (v15 && (v26 = v15, LODWORD(v15) = sqlite3_column_bytes(v18, v16), v15))
          {
            v27 = v21;
            v28 = v15;
            if (v15 <= 0)
            {
              v22 = MEMORY[0x277D84F90];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479460, "~#");
              v22 = COERCE_DOUBLE(swift_allocObject());
              v29 = _swift_stdlib_malloc_size(*&v22);
              *(*&v22 + 16) = v28;
              *(*&v22 + 24) = 2 * v29 - 64;
            }

            LODWORD(v15) = memcpy((*&v22 + 32), v26, v28);
            v21 = v27;
          }

          else
          {
            v22 = MEMORY[0x277D84F90];
          }

          v23 = &type metadata for Blob;
          v24 = &protocol witness table for Blob;
          if (v17)
          {
            goto LABEL_41;
          }

          break;
        default:
          goto LABEL_58;
      }
    }

    v30 = v19[3];
    if (((v30 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_55;
    }

    v53 = v21;
    v31 = v30 & 0xFFFFFFFFFFFFFFFELL;
    if (v31 <= 1)
    {
      v32 = 1;
    }

    else
    {
      v32 = v31;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
    v33 = swift_allocObject();
    v34 = (_swift_stdlib_malloc_size(v33) - 32) / 40;
    v33[2] = v32;
    v33[3] = 2 * v34;
    v35 = v19;
    v36 = (v33 + 4);
    v37 = v19[2];
    v38 = v19[3] >> 1;
    if (v37)
    {
      v39 = v35 + 4;
      if (v33 != v35 || v36 >= v39 + 40 * v38)
      {
        memmove(v33 + 4, v39, 40 * v38);
      }

      v35[2] = 0;
    }

    v20 = (v36 + 40 * v38);
    v17 = (v34 & 0x7FFFFFFFFFFFFFFFLL) - v38;

    v19 = v33;
    v21 = v53;
LABEL_41:
    v40 = __OFSUB__(v17--, 1);
    if (v40)
    {
      goto LABEL_54;
    }

    ++v16;
    *v20 = v22;
    *(v20 + 1) = v21;
    v20[2] = 0.0;
    *(v20 + 3) = v23;
    *(v20 + 4) = v24;
    v20 += 5;
    v18 = v54;
    if (v55 == v16)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  v57 = 0;
  v58 = 0xE000000000000000;
  v45 = v15;
  sub_26C0ABB30();

  v57 = 0xD000000000000019;
  v58 = 0x800000026C0AE190;
  v56 = v45;
  v46 = sub_26C0ABC60();
  MEMORY[0x26D69A890](v46);

  result = sub_26C0ABBE0();
  __break(1u);
  return result;
}

uint64_t Connection.prepareRowIterator(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(*(v5 + 8) + 8))(v11, v6);
  v7 = v11[2];
  type metadata accessor for Statement();
  swift_allocObject();

  sub_26C066FF0(v8);
  if (v2)
  {
  }

  else
  {

    v9 = sub_26C06A5F0(v7);

    result = sub_26C06A790(a1);
    *a2 = v9;
    a2[1] = result;
  }

  return result;
}

uint64_t Connection.scalar<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 144);
  v21[8] = *(a1 + 128);
  v21[9] = v6;
  v22 = *(a1 + 160);
  v7 = *(a1 + 80);
  v21[4] = *(a1 + 64);
  v21[5] = v7;
  v8 = *(a1 + 112);
  v21[6] = *(a1 + 96);
  v21[7] = v8;
  v9 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v9;
  v10 = *(a1 + 48);
  v21[2] = *(a1 + 32);
  v21[3] = v10;
  v11 = type metadata accessor for ScalarQuery();
  QueryType.expression.getter(v11, &protocol witness table for ScalarQuery<A>, v20);
  v12 = v20[2];
  type metadata accessor for Statement();
  swift_initStackObject();

  sub_26C066FF0(v13);

  if (v3)
  {
  }

  else
  {
    v15 = sub_26C06A5F0(v12);
    swift_beginAccess();
    v16 = *(v15 + 16);

    sqlite3_reset(v16);
    Statement.step()();
    if (v17)
    {
    }

    else
    {
      Statement.row.getter(&v19);
      Cursor.subscript.getter(0, v21);

      sub_26C086510(v21, a2, a3);
      result = sub_26C06A56C(v21, &qword_2804793C0, &qword_26C0AC810);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Connection.scalar<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v50 = *MEMORY[0x277D85DE8];
  v39 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_26C0ABAF0();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v42 = &v36 - v10;
  v40 = *(AssociatedTypeWitness - 8);
  v11 = *(v40 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v14 = *(a1 + 144);
  v48[8] = *(a1 + 128);
  v48[9] = v14;
  v49 = *(a1 + 160);
  v15 = *(a1 + 80);
  v48[4] = *(a1 + 64);
  v48[5] = v15;
  v16 = *(a1 + 112);
  v48[6] = *(a1 + 96);
  v48[7] = v16;
  v17 = *(a1 + 16);
  v48[0] = *a1;
  v48[1] = v17;
  v18 = *(a1 + 48);
  v48[2] = *(a1 + 32);
  v48[3] = v18;
  sub_26C0ABAF0();
  v19 = type metadata accessor for ScalarQuery();
  QueryType.expression.getter(v19, &protocol witness table for ScalarQuery<A>, v47);
  v20 = v47[2];
  type metadata accessor for Statement();
  swift_initStackObject();

  v22 = v43;
  sub_26C066FF0(v21);

  if (v22)
  {
  }

  else
  {
    v36 = v13;
    v24 = v42;
    v43 = a2;
    v25 = sub_26C06A5F0(v20);
    swift_beginAccess();
    v26 = *(v25 + 16);

    sqlite3_reset(v26);
    Statement.step()();
    if (v27)
    {
    }

    else
    {
      Statement.row.getter(v46);
      v44 = v46[0];
      v45 = v46[1];
      Cursor.subscript.getter(0, v48);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
      v28 = swift_dynamicCast();
      v29 = v40;
      v30 = *(v40 + 56);
      if (v28)
      {
        v30(v24, 0, 1, AssociatedTypeWitness);
        v31 = v36;
        (*(v29 + 32))(v36, v24, AssociatedTypeWitness);
        v32 = v41;
        (*(v39 + 48))(v31, v43, v39);
        (*(v29 + 8))(v31, AssociatedTypeWitness);
        v33 = 0;
      }

      else
      {
        v33 = 1;
        v30(v24, 1, 1, AssociatedTypeWitness);
        (*(v37 + 8))(v24, v38);
        v32 = v41;
      }

      v34 = swift_getAssociatedTypeWitness();
      result = (*(*(v34 - 8) + 56))(v32, v33, 1, v34);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Connection.scalar<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v15 = *a1;
  v16 = *(a1 + 1);
  v6 = type metadata accessor for Select();
  ExpressionType.expression.getter(v6, &protocol witness table for Select<A>, v17);
  v7 = v17[2];
  type metadata accessor for Statement();
  swift_initStackObject();

  sub_26C066FF0(v8);

  if (v3)
  {
  }

  else
  {
    v10 = sub_26C06A5F0(v7);
    swift_beginAccess();
    v11 = *(v10 + 16);

    sqlite3_reset(v11);
    Statement.step()();
    if (v12)
    {
    }

    else
    {
      Statement.row.getter(&v14);
      Cursor.subscript.getter(0, &v15);

      sub_26C086510(&v15, a2, a3);
      result = sub_26C06A56C(&v15, &qword_2804793C0, &qword_26C0AC810);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Connection.scalar<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v45[3] = *MEMORY[0x277D85DE8];
  v38 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = sub_26C0ABAF0();
  v34 = *(v35 - 8);
  v7 = *(v34 + 64);
  v8 = MEMORY[0x28223BE20](v35);
  v10 = v32 - v9;
  v36 = *(AssociatedTypeWitness - 8);
  v11 = *(v36 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = v32 - v12;
  v43 = *a1;
  v44 = *(a1 + 1);
  sub_26C0ABAF0();
  v14 = type metadata accessor for Select();
  ExpressionType.expression.getter(v14, &protocol witness table for Select<A>, v45);
  v15 = v45[2];
  type metadata accessor for Statement();
  swift_initStackObject();

  v17 = v39;
  sub_26C066FF0(v16);

  if (v17)
  {
  }

  else
  {
    v33 = v13;
    v39 = a2;
    v19 = v38;
    v20 = sub_26C06A5F0(v15);
    swift_beginAccess();
    v21 = *(v20 + 16);

    sqlite3_reset(v21);
    Statement.step()();
    if (v22)
    {
    }

    else
    {
      v32[1] = 0;
      Statement.row.getter(v42);
      v40 = v42[0];
      v41 = v42[1];
      Cursor.subscript.getter(0, &v43);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
      v23 = v10;
      v24 = swift_dynamicCast();
      v25 = v36;
      v26 = *(v36 + 56);
      if (v24)
      {
        v26(v10, 0, 1, AssociatedTypeWitness);
        v27 = v33;
        (*(v25 + 32))(v33, v23, AssociatedTypeWitness);
        v28 = v37;
        (*(v19 + 48))(v27, v39, v19);
        (*(v25 + 8))(v27, AssociatedTypeWitness);
        v29 = 0;
      }

      else
      {
        v29 = 1;
        v26(v10, 1, 1, AssociatedTypeWitness);
        (*(v34 + 8))(v10, v35);
        v28 = v37;
      }

      v30 = swift_getAssociatedTypeWitness();
      result = (*(*(v30 - 8) + 56))(v28, v29, 1, v30);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Connection.pluck(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 16))(v23, v7, v8);
  sub_26C06B68C(v23);
  if (v25)
  {
    v9 = 0;
  }

  else
  {
    v9 = v23[18];
  }

  v10 = v25 | v24;
  v22[3] = v5;
  v22[4] = v6;
  __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(v5 - 8) + 16))();
  v11 = (*(v6 + 32))(v26, v5, v6);
  *(v12 + 136) = 1;
  *(v12 + 144) = v9;
  *(v12 + 152) = v10 & 1;
  *(v12 + 153) = 0;
  v11(v26, 0);
  (*(*(v6 + 8) + 8))(v26, v5);
  v13 = v26[2];
  type metadata accessor for Statement();
  swift_initStackObject();

  sub_26C066FF0(v14);
  if (v2)
  {

    result = __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {

    sub_26C06A5F0(v13);

    v17 = sub_26C06A790(v22);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v18 = Statement.step()();
    if (v19)
    {
    }

    else
    {
      if (v18)
      {
        Statement.row.getter(v26);
        sub_26C06C95C(v26[0], v26[1]);
        v21 = v20;
      }

      else
      {

        v17 = 0;
        v21 = 0;
      }

      *a2 = v17;
      a2[1] = v21;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3 *sub_26C0A8144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, sqlite3 **a3@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  type metadata accessor for Statement();
  swift_initStackObject();

  sub_26C066FF0(v7);

  if (v3)
  {
    goto LABEL_5;
  }

  Statement.run(_:)(a2);

  swift_beginAccess();
  result = *(a1 + 16);
  if (result)
  {
    result = sqlite3_last_insert_rowid(result);
    *a3 = result;
LABEL_5:
    v9 = *MEMORY[0x277D85DE8];
    return result;
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Connection.run(_:)(SwiftSQLite::Update a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_26C0A831C(a1.template._countAndFlagsBits);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Connection.run(_:)(SwiftSQLite::Delete a1)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_26C0A831C(a1.template._countAndFlagsBits);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C0A831C(uint64_t *a1)
{
  v3 = v2;
  v17 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = a1[2];
  v14 = a1[1];
  sub_26C06CD30();
  v6 = qword_280B5AF70;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_26C0ABAA0();
  v7 = sub_26C06CD98();
  if ((v16 & 1) != 0 || v15 != v7)
  {
    v10 = *(v1 + 88);
    sub_26C0ABAD0();

    if (!v3)
    {
      result = v13;
    }

    goto LABEL_9;
  }

  type metadata accessor for Statement();
  swift_initStackObject();

  sub_26C066FF0(v8);

  if (v3)
  {

LABEL_9:
    v11 = *MEMORY[0x277D85DE8];
    return result;
  }

  Statement.run(_:)(v5);

  swift_beginAccess();
  result = *(v1 + 16);
  if (result)
  {
    v12 = sqlite3_changes(result);

    result = v12;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_26C0A8558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  type metadata accessor for Statement();
  swift_initStackObject();

  sub_26C066FF0(v7);

  if (v3)
  {
    goto LABEL_5;
  }

  Statement.run(_:)(a2);

  swift_beginAccess();
  result = *(a1 + 16);
  if (result)
  {
    result = sqlite3_changes(result);
    *a3 = result;
LABEL_5:
    v9 = *MEMORY[0x277D85DE8];
    return result;
  }

  __break(1u);
  return result;
}

SwiftSQLite::JoinType_optional __swiftcall JoinType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26C0ABC20();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26C0A86D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x52454E4E49;
  if (v2 != 1)
  {
    v5 = 0x54554F205446454CLL;
    v4 = 0xEA00000000005245;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x53534F5243;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x52454E4E49;
  if (*a2 != 1)
  {
    v8 = 0x54554F205446454CLL;
    v3 = 0xEA00000000005245;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x53534F5243;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26C0ABC70();
  }

  return v11 & 1;
}

uint64_t sub_26C0A87CC()
{
  v1 = *v0;
  sub_26C0ABD60();
  sub_26C0AB8D0();

  return sub_26C0ABD80();
}

uint64_t sub_26C0A886C()
{
  *v0;
  *v0;
  sub_26C0AB8D0();
}

uint64_t sub_26C0A88F8()
{
  v1 = *v0;
  sub_26C0ABD60();
  sub_26C0AB8D0();

  return sub_26C0ABD80();
}

void sub_26C0A89A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x52454E4E49;
  if (v2 != 1)
  {
    v5 = 0x54554F205446454CLL;
    v4 = 0xEA00000000005245;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x53534F5243;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

SwiftSQLite::OnConflict_optional __swiftcall OnConflict.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26C0ABC20();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26C0A8A64()
{
  v1 = *v0;
  sub_26C0ABD60();
  sub_26C0AB8D0();

  return sub_26C0ABD80();
}

uint64_t sub_26C0A8B38()
{
  *v0;
  *v0;
  *v0;
  sub_26C0AB8D0();
}

uint64_t sub_26C0A8BF8()
{
  v1 = *v0;
  sub_26C0ABD60();
  sub_26C0AB8D0();

  return sub_26C0ABD80();
}

void sub_26C0A8CD4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x4543414C504552;
  v5 = 0xE500000000000000;
  v6 = 0x54524F4241;
  v7 = 0xE400000000000000;
  v8 = 1279869254;
  if (v2 != 3)
  {
    v8 = 0x45524F4E4749;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x4B4341424C4C4F52;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_26C0A8D64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479508, &unk_26C0AD370);
  result = sub_26C0ABC00();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        _Block_copy(*(v21 + 8 * v20));
      }

      v24 = *(v8 + 40);
      result = sub_26C0ABD50();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26C0A8FD4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280479720, &qword_26C0ADED0);
  v38 = a2;
  result = sub_26C0ABC00();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_26C0ABD60();
      sub_26C0AB8D0();
      result = sub_26C0ABD80();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26C0A927C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479718, &qword_26C0ADEC8);
  v38 = a2;
  result = sub_26C0ABC00();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];

        _Block_copy(v25);
      }

      v27 = *(v8 + 40);
      sub_26C0ABD60();
      sub_26C0AB8D0();
      result = sub_26C0ABD80();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_26C0A9524()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479508, &unk_26C0AD370);
  v2 = *v0;
  v3 = sub_26C0ABBF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = _Block_copy(v18);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26C0A9680()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280479720, &qword_26C0ADED0);
  v2 = *v0;
  v3 = sub_26C0ABBF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26C0A97F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479718, &qword_26C0ADEC8);
  v2 = *v0;
  v3 = sub_26C0ABBF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = _Block_copy(v20);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26C0A9960()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479710, &qword_26C0ADEC0);
  v2 = *v0;
  v3 = sub_26C0ABBF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_26C0A9AC8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a4;
  v11[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804794A8, &qword_26C0ACC98);
  result = swift_allocObject();
  v13 = result;
  *(result + 16) = sub_26C08FEAC;
  *(result + 24) = v11;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    *a1 = v13;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v14 = 1;
    while (1)
    {
      v15 = *(v13 + 24);
      (*(v13 + 16))(&v19);
      if (*(&v20 + 1) == 1)
      {
        break;
      }

      v16 = v20;
      v22 = v19;
      v23 = v20;
      v17 = v21;
      v24 = v21;
      *a2 = v19;
      *(a2 + 16) = v16;
      *(a2 + 32) = v17;
      if (a3 == v14)
      {
        goto LABEL_12;
      }

      a2 += 40;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    sub_26C06A56C(&v19, &qword_280479700, &qword_26C0ADEB0);
    a3 = v14 - 1;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_26C0A9C20(void *a1, void *a2, uint64_t a3)
{
  v5 = v3;
  swift_beginAccess();
  LODWORD(v9) = sqlite3_reset(*(v3 + 16));
  v56 = a1;
  if (!a2 || !a3)
  {
    v10 = 0;
LABEL_73:
    *v56 = v5;
    return v10;
  }

  if (a3 < 0)
  {
    goto LABEL_80;
  }

  sub_26C06CD30();
  v10 = 0;
  v11 = 0;
  v12 = 1;
  v54 = a3;
  v55 = v3;
  while (1)
  {
    v59 = v12;
    v13 = *(v5 + 24);
    if (qword_280B5AF70 != -1)
    {
      swift_once();
    }

    sub_26C0ABAA0();
    v14 = v63;
    v15 = v64;
    v16 = sub_26C06CD98();
    if ((v15 & 1) != 0 || v14 != v16)
    {
      v24 = *(v13 + 88);
      sub_26C0ABAD0();

      if ((v66 & 1) == 0)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v17 = *(v5 + 24);
      v18 = sqlite3_step(*(v5 + 16));
      if (qword_280B5B0A0 != -1)
      {
        swift_once();
      }

      v19 = off_280B5B0A8;
      if (!*(off_280B5B0A8 + 2) || (v20 = MEMORY[0x26D69ACD0](*(off_280B5B0A8 + 5), v18, 4), v21 = -1 << v19[32], v22 = v20 & ~v21, ((*&v19[((v22 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v22) & 1) == 0))
      {
LABEL_70:
        swift_beginAccess();
        v9 = *(v17 + 16);
        if (!v9)
        {
          goto LABEL_82;
        }

        v9 = sqlite3_errmsg(v9);
        if (!v9)
        {
          goto LABEL_83;
        }

        sub_26C0AB910();

        goto LABEL_73;
      }

      v23 = ~v21;
      while (*(*(v19 + 6) + 4 * v22) != v18)
      {
        v22 = (v22 + 1) & v23;
        if (((*&v19[((v22 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v22) & 1) == 0)
        {
          goto LABEL_70;
        }
      }

      if (v18 != 100)
      {
        goto LABEL_73;
      }
    }

    v57 = v11;
    v58 = a2;
    LODWORD(v9) = Statement.row.getter(&v63);
    v62 = v64;
    if (v64 >= 1)
    {
      break;
    }

    v26 = 0;
    v28 = MEMORY[0x277D84F90];
LABEL_60:
    v48 = v28[3];
    if (v48 >= 2)
    {
      v49 = v48 >> 1;
      v47 = __OFSUB__(v49, v26);
      v50 = v49 - v26;
      if (v47)
      {
        goto LABEL_79;
      }

      v28[2] = v50;
    }

    *v58 = v28;
    if (v59 == v54)
    {
      v10 = v54;
      v5 = v55;
      goto LABEL_73;
    }

    a2 = v58 + 1;
    v10 = v59;
    v12 = v59 + 1;
    v5 = v55;
    v11 = v57;
    if (__OFADD__(v59, 1))
    {
      goto LABEL_78;
    }
  }

  v25 = 0;
  v26 = 0;
  v27 = v63;
  v28 = MEMORY[0x277D84F90];
  v29 = (MEMORY[0x277D84F90] + 32);
  v60 = v63;
  while (v25 != 0x80000000)
  {
    LODWORD(v9) = sqlite3_column_type(v27, v25);
    if (v9 <= 2)
    {
      if (v9 == 1)
      {
        v9 = sqlite3_column_int64(v27, v25);
        v30 = *&v9;
        v31 = MEMORY[0x277D84A28];
        v32 = &protocol witness table for Int64;
        if (v26)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v9 != 2)
        {
          goto LABEL_84;
        }

        v30 = sqlite3_column_double(v27, v25);
        v31 = MEMORY[0x277D839F8];
        v32 = &protocol witness table for Double;
        if (v26)
        {
          goto LABEL_56;
        }
      }
    }

    else
    {
      switch(v9)
      {
        case 3:
          v9 = sqlite3_column_text(v27, v25);
          if (!v9)
          {
            goto LABEL_81;
          }

          v9 = sub_26C0AB920();
          v30 = *&v9;
          v4 = v33;
          v31 = MEMORY[0x277D837D0];
          v32 = &protocol witness table for String;
          if (v26)
          {
            goto LABEL_56;
          }

          break;
        case 5:
          v4 = 0;
          v30 = 0.0;
          v31 = 0;
          v32 = 0;
          if (v26)
          {
            goto LABEL_56;
          }

          break;
        case 4:
          v9 = sqlite3_column_blob(v27, v25);
          v34 = v27;
          if (v9)
          {
            v35 = v9;
            LODWORD(v9) = sqlite3_column_bytes(v34, v25);
            if (v9)
            {
              v36 = v4;
              v37 = v9;
              if (v9 <= 0)
              {
                v30 = MEMORY[0x277D84F90];
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479460, "~#");
                v30 = COERCE_DOUBLE(swift_allocObject());
                v38 = _swift_stdlib_malloc_size(*&v30);
                *(*&v30 + 16) = v37;
                *(*&v30 + 24) = 2 * v38 - 64;
              }

              LODWORD(v9) = memcpy((*&v30 + 32), v35, v37);
              v4 = v36;
            }

            else
            {
              v30 = MEMORY[0x277D84F90];
            }

            v31 = &type metadata for Blob;
            v32 = &protocol witness table for Blob;
            v27 = v60;
            if (v26)
            {
              goto LABEL_56;
            }
          }

          else
          {
            v30 = MEMORY[0x277D84F90];
            v31 = &type metadata for Blob;
            v32 = &protocol witness table for Blob;
            if (v26)
            {
              goto LABEL_56;
            }
          }

          break;
        default:
          goto LABEL_84;
      }
    }

    v39 = v28[3];
    if (((v39 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_77;
    }

    v61 = v4;
    v40 = v39 & 0xFFFFFFFFFFFFFFFELL;
    if (v40 <= 1)
    {
      v41 = 1;
    }

    else
    {
      v41 = v40;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
    v42 = swift_allocObject();
    v43 = (_swift_stdlib_malloc_size(v42) - 32) / 40;
    v42[2] = v41;
    v42[3] = 2 * v43;
    v44 = (v42 + 4);
    v45 = v28[3] >> 1;
    if (v28[2])
    {
      v46 = v28 + 4;
      if (v42 != v28 || v44 >= v46 + 40 * v45)
      {
        memmove(v42 + 4, v46, 40 * v45);
      }

      v28[2] = 0;
    }

    v29 = (v44 + 40 * v45);
    v26 = (v43 & 0x7FFFFFFFFFFFFFFFLL) - v45;

    v28 = v42;
    v27 = v60;
    v4 = v61;
LABEL_56:
    v47 = __OFSUB__(v26--, 1);
    if (v47)
    {
      goto LABEL_76;
    }

    ++v25;
    *v29 = v30;
    *(v29 + 1) = v4;
    v29[2] = 0.0;
    *(v29 + 3) = v31;
    *(v29 + 4) = v32;
    v29 += 5;
    if (v62 == v25)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  v66 = 0;
  v67 = 0xE000000000000000;
  v52 = v9;
  sub_26C0ABB30();

  v66 = 0xD000000000000019;
  v67 = 0x800000026C0AE190;
  v65 = v52;
  v53 = sub_26C0ABC60();
  MEMORY[0x26D69A890](v53);

  result = sub_26C0ABBE0();
  __break(1u);
  return result;
}

uint64_t sub_26C0AA298(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26C0AAD70(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_26C0AA304(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26C0AA304(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26C0ABC50();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_26C0AB9E0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26C0AA4CC(v7, v8, a1, v4);
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
    return sub_26C0AA3FC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26C0AA3FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_26C0ABC70(), (result & 1) == 0))
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

uint64_t sub_26C0AA4CC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
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
      result = sub_26C0AAD5C(v8);
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
        sub_26C0AAAA8((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
  v8 = MEMORY[0x277D84F90];
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
        result = sub_26C0ABC70();
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
            result = sub_26C0ABC70();
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
      result = sub_26C081048(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_26C081048((v39 > 1), v40 + 1, 1, v8);
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
        sub_26C0AAAA8((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_26C0AAD5C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_26C0AACD0(v44);
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
    if (v37 || (result = sub_26C0ABC70(), (result & 1) == 0))
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

uint64_t sub_26C0AAAA8(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_26C0ABC70() & 1) != 0)
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
      if (!v21 && (sub_26C0ABC70() & 1) != 0)
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

uint64_t sub_26C0AACD0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26C0AAD5C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

sqlite3 *sub_26C0AAE28@<X0>(sqlite3 **a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_26C0A8144(v1[2], v1[5], a1);
}

uint64_t sub_26C0AAE48@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_26C0A8558(v1[2], v1[5], a1);
}

unint64_t sub_26C0AAE68(uint64_t a1)
{
  result = sub_26C0AAE90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26C0AAE90()
{
  result = qword_280479668;
  if (!qword_280479668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280479668);
  }

  return result;
}

unint64_t sub_26C0AAEE8()
{
  result = qword_280479670;
  if (!qword_280479670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280479670);
  }

  return result;
}

unint64_t sub_26C0AAF40()
{
  result = qword_280479678;
  if (!qword_280479678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280479678);
  }

  return result;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_26C0AB054()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26C0AB090()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26C0AB0FC(uint64_t result, int a2, int a3)
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

uint64_t sub_26C0AB138(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_26C0AB180(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26C0AB1F8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return sub_26C06E874(a2, a3);
  }

  return result;
}

uint64_t sub_26C0AB250(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return sub_26C06E9FC(a2, a3);
  }

  return result;
}

uint64_t Collation.expression.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0xE600000000000000;
      result = 0x455341434F4ELL;
    }

    else if (v2 == 2)
    {
      v3 = 0xE500000000000000;
      result = 0x4D49525452;
    }

    else
    {
      v5 = *v1;
      v6 = a1;
      result = sub_26C067104(34, 0xE100000000000000);
      a1 = v6;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    result = 0x5952414E4942;
  }

  *a1 = result;
  a1[1] = v3;
  a1[2] = MEMORY[0x277D84F90];
  return result;
}

uint64_t Collation.description.getter()
{
  v1 = v0[1];
  switch(v1)
  {
    case 0:
      return 0x5952414E4942;
    case 1:
      return 0x455341434F4ELL;
    case 2:
      return 0x4D49525452;
  }

  v3 = *v0;
  return sub_26C067104(34, 0xE100000000000000);
}

uint64_t sub_26C0AB440@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0xE600000000000000;
      result = 0x455341434F4ELL;
    }

    else if (v2 == 2)
    {
      v3 = 0xE500000000000000;
      result = 0x4D49525452;
    }

    else
    {
      v5 = *v1;
      v6 = a1;
      result = sub_26C067104(34, 0xE100000000000000);
      a1 = v6;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    result = 0x5952414E4942;
  }

  *a1 = result;
  a1[1] = v3;
  a1[2] = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_26C0AB4D8()
{
  v1 = v0[1];
  switch(v1)
  {
    case 0:
      return 0x5952414E4942;
    case 1:
      return 0x455341434F4ELL;
    case 2:
      return 0x4D49525452;
  }

  v3 = *v0;
  return sub_26C067104(34, 0xE100000000000000);
}

uint64_t get_enum_tag_for_layout_string_11SwiftSQLite9CollationO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26C0AB574(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C0AB5D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}