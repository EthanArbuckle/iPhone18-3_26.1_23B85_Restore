uint64_t sub_26C066FF0(uint64_t a1)
{
  v3 = v1;
  *(v3 + 16) = 0;
  *(v3 + 40) = 1;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 48) = 0;
  *(v3 + 24) = a1;
  *(v3 + 32) = 0;
  result = swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = sub_26C0AB8B0();

    swift_beginAccess();
    v8 = sqlite3_prepare_v2(v6, (v7 + 32), -1, (v3 + 16), 0);
    swift_endAccess();

    sub_26C0678E0(v8, 0);
    if (v2)
    {
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26C067104(uint64_t a1, uint64_t a2)
{

  v4 = sub_26C0AB930();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      if (v6 == a1 && v7 == a2 || (sub_26C0ABC70() & 1) != 0)
      {
        sub_26C0AB800();
      }

      sub_26C0AB800();

      MEMORY[0x26D69A890](0, 0xE000000000000000);

      v6 = sub_26C0AB930();
      v7 = v8;
    }

    while (v8);
  }

  sub_26C0AB800();
  MEMORY[0x26D69A890](0, 0xE000000000000000);

  sub_26C0AB800();
  return 0;
}

void Cursor.subscript.getter(uint64_t iCol@<X0>, uint64_t a2@<X8>)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = iCol;
  if (iCol > 0x7FFFFFFF)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    sub_26C0ABB30();

    v14 = sub_26C0ABC60();
    MEMORY[0x26D69A890](v14);

    sub_26C0ABBE0();
    __break(1u);
    return;
  }

  v5 = *v2;
  v6 = sqlite3_column_type(*v2, iCol);
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      v7 = sqlite3_column_int64(v5, v4);
      *(a2 + 24) = MEMORY[0x277D84A28];
      *(a2 + 32) = &protocol witness table for Int64;
      *a2 = v7;
      return;
    }

    if (v6 == 2)
    {
      v13 = sqlite3_column_double(v5, v4);
      *(a2 + 24) = MEMORY[0x277D839F8];
      *(a2 + 32) = &protocol witness table for Double;
      *a2 = v13;
      return;
    }

    goto LABEL_23;
  }

  if (v6 == 3)
  {
    if (sqlite3_column_text(v5, v4))
    {
      v8 = sub_26C0AB920();
      *(a2 + 24) = MEMORY[0x277D837D0];
      *(a2 + 32) = &protocol witness table for String;
      *a2 = v8;
      *(a2 + 8) = v9;
      return;
    }

    goto LABEL_22;
  }

  if (v6 == 5)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  if (v6 != 4)
  {
    goto LABEL_23;
  }

  *(a2 + 24) = &type metadata for Blob;
  *(a2 + 32) = &protocol witness table for Blob;
  v10 = sqlite3_column_blob(v5, v4);
  if (v10)
  {
    v11 = v10;
    v12 = sqlite3_column_bytes(v5, v4);

    Blob.init(bytes:length:)(v11, v12, a2);
  }

  else
  {
    *a2 = MEMORY[0x277D84F90];
  }
}

uint64_t sub_26C067528@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC590;
  v6 = *(v2 + 8);
  if (*v2)
  {
    v7 = 0x44205443454C4553;
  }

  else
  {
    v7 = 0x5443454C4553;
  }

  if (*v2)
  {
    v8 = 0xEF54434E49545349;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(inited + 56) = v9;
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = v7;
  v10 = MEMORY[0x277D84F90];
  *(inited + 40) = v8;
  *(inited + 48) = v10;
  sub_26C0688D8(v6, (inited + 72));
  *(inited + 136) = v9;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = 1297044038;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = v10;
  a1(1);
  sub_26C0688D8(inited, a2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  return swift_arrayDestroy();
}

uint64_t sub_26C067698@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = Statement.step()();
  if (v5)
  {
    result = MEMORY[0x26D69B350](v5);
LABEL_7:
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

  Statement.row.getter(v7);
  sub_26C06C95C(v7[0], v7[1]);
  *a2 = a1;
  a2[1] = v6;
}

unint64_t sub_26C06772C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26C0ABD60();
  sub_26C0AB8D0();
  v6 = sub_26C0ABD80();

  return sub_26C06C440(a1, a2, v6);
}

uint64_t Statement.row.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[7];
  if (v2)
  {
    result = v1[8];
LABEL_5:
    *a1 = v2;
    a1[1] = result;
    return result;
  }

  v4 = a1;
  result = swift_beginAccess();
  v2 = v1[2];
  if (v2)
  {
    result = Statement.columnCount.getter();
    v1[7] = v2;
    v1[8] = result;
    a1 = v4;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t Statement.columnCount.getter()
{
  if (*(v0 + 40) != 1)
  {
    return *(v0 + 32);
  }

  swift_beginAccess();
  result = sqlite3_column_count(*(v0 + 16));
  *(v0 + 32) = result;
  *(v0 + 40) = 0;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26C067878(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

sqlite3 *sub_26C0678E0(uint64_t a1, uint64_t a2)
{
  if (qword_280B5B0A0 != -1)
  {
    swift_once();
  }

  v5 = off_280B5B0A8;
  if (*(off_280B5B0A8 + 2))
  {
    v6 = MEMORY[0x26D69ACD0](*(off_280B5B0A8 + 5), a1, 4);
    v7 = -1 << v5[32];
    v8 = v6 & ~v7;
    if ((*&v5[((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v8))
    {
      v9 = ~v7;
      while (*(*(v5 + 6) + 4 * v8) != a1)
      {
        v8 = (v8 + 1) & v9;
        if (((*&v5[((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v8) & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      return a1;
    }
  }

LABEL_8:
  swift_beginAccess();
  result = *(v2 + 16);
  if (result)
  {
    result = sqlite3_errmsg(result);
    if (result)
    {
      v11 = sub_26C0AB910();
      v13 = v12;
      sub_26C08FE58();
      swift_allocError();
      *v14 = v11;
      *(v14 + 8) = v13;
      *(v14 + 16) = a1;
      *(v14 + 24) = a2;
      swift_willThrow();

      return a1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Connection.prepare(_:)(void *a1)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(*(v3 + 8) + 8))(v11, v4);
  v5 = v11[2];
  type metadata accessor for Statement();
  swift_allocObject();

  sub_26C066FF0(v6);
  if (v1)
  {
  }

  else
  {

    v7 = sub_26C06A5F0(v5);

    v9 = sub_26C06A790(a1);
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479660, &qword_26C0AD888);
    result = swift_allocObject();
    *(result + 16) = sub_26C06C798;
    *(result + 24) = v10;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11SwiftSQLite10ExpressionVySbSgGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_Say11SwiftSQLite11Expressible_pG2by_AA10ExpressionVySbSgGSg6havingtSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

sqlite3 *sub_26C067C0C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = sqlite3_step(*(a1 + 16));
  result = sub_26C0678E0(v6, 0);
  if (!v2)
  {
    *a2 = result == 100;
  }

  return result;
}

uint64_t sub_26C067C80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C067CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479708, &qword_26C0ADEB8);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_26C0688D0;
  *(v7 + 24) = v6;
  *a3 = v7;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t Statement.__deallocating_deinit()
{
  swift_beginAccess();
  sqlite3_finalize(*(v0 + 16));
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

void *Blob.init(bytes:length:)@<X0>(void *result@<X0>, int64_t a2@<X1>, void *a3@<X8>)
{
  if (a2)
  {
    v5 = result;
    if (a2 < 1)
    {
      v6 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479460, "~#");
      v6 = swift_allocObject();
      v7 = _swift_stdlib_malloc_size(v6);
      v6[2] = a2;
      v6[3] = 2 * v7 - 64;
    }

    result = memcpy(v6 + 4, v5, a2);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  *a3 = v6;
  return result;
}

uint64_t sub_26C067EA0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v5 = *v4;
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = v5;
  return a4(&v7);
}

uint64_t Row.get<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v27 = a3;
  v7 = sub_26C0ABAF0();
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v34 = *v4;
  v14 = type metadata accessor for Expression();
  v28 = v12;
  v29 = v11;
  v30 = v13;
  v15 = type metadata accessor for Expression();

  WitnessTable = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  ExpressionType.init<A>(_:)(&v28, v14, v15, WitnessTable, v17);
  v28 = v31;
  v29 = v32;
  v30 = v33;
  v18 = v35;
  Row.get<A>(_:)(&v28, a2, v27, v10);

  if (!v18)
  {
    v21 = v25;
    v20 = v26;
    v22 = *(a2 - 8);
    if ((*(v22 + 48))(v10, 1, a2) == 1)
    {
      (*(v21 + 8))(v10, v7);
      sub_26C072E10();
      swift_allocError();
      *v23 = v12;
      *(v23 + 8) = v11;
      *(v23 + 16) = 0;
      *(v23 + 24) = 3;
      swift_willThrow();
    }

    else
    {
      return (*(v22 + 32))(v20, v10, a2);
    }
  }

  return result;
}

{
  v6 = v5;
  v9 = *a1;
  v8 = a1[1];
  v53 = a1[2];
  v10 = *v4;
  v11 = v4[1];
  v12 = *(*v4 + 16);
  swift_bridgeObjectRetain_n();
  if (v12)
  {
    v13 = v9;
    v14 = sub_26C06772C(v9, v8);
    if (v15)
    {
      v16 = v14;
      swift_bridgeObjectRelease_n();
      return sub_26C0681EC(*(*(v10 + 56) + 8 * v16), v11, a2, a3, a4);
    }

    v20 = *(v10 + 16);
    if (v20)
    {
      v21 = v5;
      v18 = sub_26C072BB4(v20, 0);
      v22 = sub_26C072C38(v56, v18 + 4, v20, v10);
      v19 = v56[0];
      v51 = v22;

      sub_26C072D90();
      if (v51 != v20)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v6 = v21;
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }

    v19 = v13;
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
    v19 = v9;
  }

  v45 = a4;
  v46 = v11;
  v47 = v10;
  v52 = v18[2];
  if (v52)
  {
    v23 = 0;
    v24 = (v18 + 5);
    v25 = MEMORY[0x277D84F90];
    v48 = v8;
    v49 = v19;
    while (v23 < v18[2])
    {
      v27 = *(v24 - 1);
      v26 = *v24;
      v56[0] = v27;
      v56[1] = v26;

      if (sub_26C072D98(v56, v19, v8))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26C06B938(0, *(v25 + 2) + 1, 1);
          v25 = v57;
        }

        v30 = *(v25 + 2);
        v29 = *(v25 + 3);
        if (v30 >= v29 >> 1)
        {
          sub_26C06B938((v29 > 1), v30 + 1, 1);
          v25 = v57;
        }

        *(v25 + 2) = v30 + 1;
        v31 = &v25[16 * v30];
        *(v31 + 4) = v27;
        *(v31 + 5) = v26;
        v19 = v49;
        v8 = v48;
      }

      else
      {
      }

      ++v23;
      v24 += 2;
      if (v52 == v23)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v25 = MEMORY[0x277D84F90];
LABEL_22:
  v32 = v19;

  v33 = *(v25 + 2);

  if (v33)
  {
    if (v33 == 1)
    {

      if (*(v25 + 2))
      {
        if (*(v47 + 16))
        {
          v35 = *(v25 + 4);
          v34 = *(v25 + 5);

          v36 = sub_26C06772C(v35, v34);
          LOBYTE(v35) = v37;

          if (v35)
          {
            return sub_26C0681EC(*(*(v47 + 56) + 8 * v36), v46, a2, a3, v45);
          }

          goto LABEL_39;
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v43 = 2;
LABEL_35:
    sub_26C072E10();
    swift_allocError();
    *v44 = v32;
    *(v44 + 8) = v8;
    *(v44 + 16) = v25;
    *(v44 + 24) = v43;
    return swift_willThrow();
  }

  v38 = *(v47 + 16);
  if (v38)
  {
    v50 = v19;
    v39 = v8;
    v40 = v6;
    v41 = sub_26C072BB4(v38, 0);
    v42 = sub_26C072C38(v56, v41 + 4, v38, v47);
    v19 = v56[0];

    sub_26C072D90();
    if (v42 != v38)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v6 = v40;
    v8 = v39;
    v32 = v50;
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  v56[0] = v41;
  v19 = v6;
  sub_26C0AA298(v56);
  if (!v6)
  {
    v25 = v56[0];
    v43 = 1;
    goto LABEL_35;
  }

LABEL_42:
  MEMORY[0x26D69B350](v19);

  __break(1u);
  return result;
}

uint64_t sub_26C0681EC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v32 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v30 = &v30 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = sub_26C0ABAF0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v30 - v16;
  v18 = *(v11 - 8);
  v19 = *(v18 + 64);
  result = MEMORY[0x28223BE20](v15);
  v22 = &v30 - v21;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > a1)
  {
    sub_26C067878(a2 + 40 * a1 + 32, v33, &qword_2804793C0, &qword_26C0AC810);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
    v23 = swift_dynamicCast();
    v24 = *(v18 + 56);
    if (v23)
    {
      v24(v17, 0, 1, v11);
      (*(v18 + 32))(v22, v17, v11);
      (*(a4 + 48))(v22, a3, a4);
      (*(v18 + 8))(v22, v11);
      v25 = v32;
      v26 = swift_dynamicCast();
      v27 = *(*(a3 - 8) + 56);
      if (v26)
      {
        v28 = v25;
        v29 = 0;
        return v27(v28, v29, 1, a3);
      }

      v28 = v25;
    }

    else
    {
      v24(v17, 1, 1, v11);
      (*(v13 + 8))(v17, v12);
      v27 = *(*(a3 - 8) + 56);
      v28 = v32;
    }

    v29 = 1;
    return v27(v28, v29, 1, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C068554@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_26C0685B4@<X0>(uint64_t a1@<X8>)
{
  v11 = v1[8];
  v12 = v1[9];
  v13 = *(v1 + 20);
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_26C068624(sub_26C068F74, a1);
}

uint64_t sub_26C068624@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  sub_26C067528(a1, v28);
  sub_26C069260(&v29);
  sub_26C069F20(&v30);
  sub_26C069CC4(&v31);
  sub_26C0696D8(&v32);
  sub_26C06C11C(&v33);
  sub_26C06A060(&v34);
  v2 = MEMORY[0x277D84F90];
  for (i = 32; i != 312; i += 40)
  {
    sub_26C067878(&v27[i], &v24, &qword_280479360, &qword_26C0AC5D8);
    v18[0] = v24;
    v18[1] = v25;
    v19 = v26;
    if (*(&v25 + 1))
    {
      sub_26C06A3A8(v18, v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v2 = sub_26C06A384(0, v2[2] + 1, 1, v2);
        v23 = v2;
      }

      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        v2 = sub_26C06A384((v5 > 1), v6 + 1, 1, v2);
        v23 = v2;
      }

      v7 = v21;
      v8 = v22;
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      v10 = *(*(v7 - 8) + 64);
      MEMORY[0x28223BE20](v9);
      v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 16))(v12);
      sub_26C06A410(v6, v12, &v23, v7, v8);
      __swift_destroy_boxed_opaque_existential_1(v20);
    }

    else
    {
      sub_26C06A56C(v18, &qword_280479360, &qword_26C0AC5D8);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  sub_26C0688D8(v2, &v24);

  v14 = *(&v25 + 1);
  v15 = v26;
  __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
  (*(v15 + 8))(v14, v15);
  return __swift_destroy_boxed_opaque_existential_1(&v24);
}

uint64_t sub_26C0688D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x277D84F90];
    v5 = MEMORY[0x277D84F90];
LABEL_23:
    v27[0] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479408, &qword_26C0AC858);
    sub_26C068F2C(&qword_280B5B098, &qword_280479408, &qword_26C0AC858);
    v23 = sub_26C0AB810();
    v25 = v24;

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    a2[3] = result;
    a2[4] = &protocol witness table for Expression<A>;
    *a2 = v23;
    a2[1] = v25;
    a2[2] = v5;
    return result;
  }

  v3 = (a1 + 32);
  v4 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = v3[3];
    v8 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v7);
    (*(v8 + 8))(v27, v7, v8);
    v9 = v27[0];
    v10 = v27[1];
    v11 = v27[2];

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26C068CD4(0, *(v4 + 16) + 1, 1, v4);
      v4 = result;
    }

    v13 = *(v4 + 16);
    v12 = *(v4 + 24);
    if (v13 >= v12 >> 1)
    {
      result = sub_26C068CD4((v12 > 1), v13 + 1, 1, v4);
      v4 = result;
    }

    *(v4 + 16) = v13 + 1;
    v14 = v4 + 16 * v13;
    *(v14 + 32) = v9;
    *(v14 + 40) = v10;
    v15 = *(v11 + 16);
    v16 = v5[2];
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v18 = v5[3] >> 1, v18 >= v17))
    {
      if (*(v11 + 16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v19 = v16 + v15;
      }

      else
      {
        v19 = v16;
      }

      result = sub_26C068DE4(result, v19, 1, v5);
      v5 = result;
      v18 = *(result + 24) >> 1;
      if (*(v11 + 16))
      {
LABEL_18:
        if (v18 - v5[2] < v15)
        {
          goto LABEL_26;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
        swift_arrayInitWithCopy();

        if (v15)
        {
          v20 = v5[2];
          v21 = __OFADD__(v20, v15);
          v22 = v20 + v15;
          if (v21)
          {
            goto LABEL_27;
          }

          v5[2] = v22;
        }

        goto LABEL_4;
      }
    }

    if (v15)
    {
      goto LABEL_25;
    }

LABEL_4:

    v3 += 5;
    if (!--v2)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_26C068B98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return ExpressionType.expression.getter(a1, WitnessTable, a2);
}

uint64_t ExpressionType.expression.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = (*(a2 + 24))();
  v8 = v7;
  result = (*(a2 + 32))(a1, a2);
  *a3 = v6;
  a3[1] = v8;
  a3[2] = result;
  return result;
}

uint64_t sub_26C068C74()
{
  sub_26C06C114();
}

uint64_t sub_26C068C9C()
{
  v0 = sub_26C0696D0();

  return v0;
}

char *sub_26C068CD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C8, &qword_26C0AC818);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_26C068DE4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26C068F2C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26C068F7C@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v5 = v2[2];
  v4 = v2[3];
  if (v2[5])
  {
    v6 = v2[4];
    if (a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26C0AC540;
      sub_26C069100((inited + 32));
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
      *(inited + 104) = &protocol witness table for Expression<A>;
      *(inited + 72) = 21313;
      *(inited + 80) = 0xE200000000000000;
      v9 = MEMORY[0x277D84F90];
      *(inited + 88) = MEMORY[0x277D84F90];
      *(inited + 96) = v8;
      *(inited + 136) = v8;
      *(inited + 144) = &protocol witness table for Expression<A>;
      *(inited + 112) = sub_26C067104(34, 0xE100000000000000);
      *(inited + 120) = v10;
      *(inited + 128) = v9;
      sub_26C0688D8(inited, a2);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
      return swift_arrayDestroy();
    }

    v13 = v2[4];
    v14 = v2[5];
  }

  else
  {
    v12 = v2[3];
  }

  sub_26C069100(a2);
}

uint64_t sub_26C069100@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_26C067104(34, 0xE100000000000000);
  v5 = v4;
  if (*(v1 + 56))
  {
    v6 = *(v1 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC580;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    *(inited + 56) = v8;
    *(inited + 64) = &protocol witness table for Expression<A>;
    *(inited + 32) = sub_26C067104(34, 0xE100000000000000);
    v9 = MEMORY[0x277D84F90];
    *(inited + 40) = v10;
    *(inited + 48) = v9;
    *(inited + 96) = v8;
    *(inited + 104) = &protocol witness table for Expression<A>;
    *(inited + 72) = v3;
    *(inited + 80) = v5;
    *(inited + 88) = v9;
    sub_26C0688D8(inited, a1);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    return swift_arrayDestroy();
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    a1[4] = &protocol witness table for Expression<A>;
    *a1 = v3;
    a1[1] = v5;
    a1[2] = MEMORY[0x277D84F90];
    a1[3] = result;
  }

  return result;
}

double sub_26C069260@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v2 + 16);
  if (v3)
  {
    v27 = a1;
    v38 = MEMORY[0x277D84F90];
    sub_26C07272C(0, v3, 0);
    v4 = v2 + 32;
    v5 = v38;
    v28 = xmmword_26C0AC590;
    v6 = MEMORY[0x277D84F90];
    do
    {
      sub_26C067878(v4, &v29, &qword_2804793E0, &qword_26C0AC830);
      v7 = v29;
      sub_26C06A3A8(&v30, v35);
      sub_26C06A3A8(&v33, v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
      inited = swift_initStackObject();
      *(inited + 16) = v28;
      v29 = 0;
      *&v30 = 0xE000000000000000;
      if (v7)
      {
        if (v7 == 1)
        {
          v9 = 0x52454E4E49;
        }

        else
        {
          v9 = 0x54554F205446454CLL;
        }

        if (v7 == 1)
        {
          v10 = 0xE500000000000000;
        }

        else
        {
          v10 = 0xEA00000000005245;
        }
      }

      else
      {
        v10 = 0xE500000000000000;
        v9 = 0x53534F5243;
      }

      MEMORY[0x26D69A890](v9, v10);

      MEMORY[0x26D69A890](0x4E494F4A20, 0xE500000000000000);
      v11 = v29;
      v12 = v30;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
      *(inited + 56) = v13;
      *(inited + 64) = &protocol witness table for Expression<A>;
      *(inited + 32) = v11;
      *(inited + 40) = v12;
      *(inited + 48) = v6;
      v14 = v36;
      v15 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      sub_26C070730(1, v14, v15, (inited + 72));
      *(inited + 136) = v13;
      *(inited + 144) = &protocol witness table for Expression<A>;
      *(inited + 112) = 20047;
      *(inited + 120) = 0xE200000000000000;
      *(inited + 128) = v6;
      sub_26C06B6BC(v34, inited + 152);
      sub_26C0688D8(inited, &v29);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
      swift_arrayDestroy();
      __swift_destroy_boxed_opaque_existential_1(v34);
      __swift_destroy_boxed_opaque_existential_1(v35);
      v38 = v5;
      v17 = *(v5 + 16);
      v16 = *(v5 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_26C07272C((v16 > 1), v17 + 1, 1);
      }

      v18 = v31;
      v19 = v32;
      v20 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v31);
      v21 = *(*(v18 - 8) + 64);
      MEMORY[0x28223BE20](v20);
      v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v24 + 16))(v23);
      sub_26C072778(v17, v23, &v38, v18, v19);
      __swift_destroy_boxed_opaque_existential_1(&v29);
      v5 = v38;
      v4 += 88;
      --v3;
    }

    while (v3);
    sub_26C0688D8(v38, v27);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double _s11SwiftSQLite12VirtualTableV_8databaseACSS_SSSgtcfC_0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
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

uint64_t sub_26C0696D0()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

void sub_26C0696D8(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v3 = *(v2 + 16);
  if (!v3)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v54 = a1;
  v4 = MEMORY[0x277D84F90];
  v71 = MEMORY[0x277D84F90];
  sub_26C07272C(0, v3, 0);
  v5 = v2 + 32;
  v6 = v71;
  while (1)
  {
    v56 = v3;
    sub_26C06B6BC(v5, v63);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    v59 = &protocol witness table for Expression<A>;
    v57[0] = 0x4E4F494E55;
    v57[1] = 0xE500000000000000;
    v57[2] = v4;
    v55 = v58;
    v7 = v64;
    v8 = v65;
    v9 = __swift_project_boxed_opaque_existential_1(v63, v64);
    v61 = v7;
    v62 = *(v8 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v60);
    (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v9, v7);
    v11 = v58;
    v12 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    (v12[1])(&v66, v11, v12);
    v14 = v66;
    v13 = v67;
    v15 = v68;

    v16 = sub_26C068CD4(0, 1, 1, v4);
    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_26C068CD4((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v19 = &v16[16 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v13;
    v20 = v15[2];

    v21 = sub_26C068DE4(0, v20, 1, v4);
    v22 = v21;
    if (!v15[2])
    {
      break;
    }

    if ((v21[3] >> 1) - v21[2] < v20)
    {
      goto LABEL_33;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
    swift_arrayInitWithCopy();

    if (v20)
    {
      v23 = v22[2];
      v24 = __OFADD__(v23, v20);
      v25 = v23 + v20;
      if (v24)
      {
        goto LABEL_35;
      }

      v22[2] = v25;
    }

LABEL_11:

    v26 = v61;
    v27 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    (*(v27 + 8))(&v66, v26, v27);
    v29 = v66;
    v28 = v67;
    v30 = v68;
    v32 = *(v16 + 2);
    v31 = *(v16 + 3);

    if (v32 >= v31 >> 1)
    {
      v16 = sub_26C068CD4((v31 > 1), v32 + 1, 1, v16);
    }

    *(v16 + 2) = v32 + 1;
    v33 = &v16[16 * v32];
    *(v33 + 4) = v29;
    *(v33 + 5) = v28;
    v34 = v30[2];
    v35 = v22[2];
    v36 = v35 + v34;
    if (__OFADD__(v35, v34))
    {
      goto LABEL_31;
    }

    v37 = v22[3] >> 1;

    if (v37 < v36)
    {
      if (v35 <= v36)
      {
        v40 = v35 + v34;
      }

      else
      {
        v40 = v35;
      }

      v22 = sub_26C068DE4(1, v40, 1, v22);
      v35 = v22[2];
      v37 = v22[3] >> 1;
      if (v30[2])
      {
LABEL_16:
        if ((v37 - v35) < v34)
        {
          goto LABEL_34;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
        swift_arrayInitWithCopy();

        if (v34)
        {
          v38 = v22[2];
          v24 = __OFADD__(v38, v34);
          v39 = v38 + v34;
          if (v24)
          {
            goto LABEL_36;
          }

          v22[2] = v39;
        }

        goto LABEL_25;
      }
    }

    else if (v34)
    {
      goto LABEL_16;
    }

    if (v34)
    {
      goto LABEL_32;
    }

LABEL_25:

    v66 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479408, &qword_26C0AC858);
    sub_26C068F2C(&qword_280B5B098, &qword_280479408, &qword_26C0AC858);
    v41 = sub_26C0AB810();
    v43 = v42;

    v69 = v55;
    v70 = &protocol witness table for Expression<A>;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    v66 = v41;
    v67 = v43;
    v68 = v22;
    __swift_destroy_boxed_opaque_existential_1(v63);
    v71 = v6;
    v45 = *(v6 + 16);
    v44 = *(v6 + 24);
    if (v45 >= v44 >> 1)
    {
      sub_26C07272C((v44 > 1), v45 + 1, 1);
    }

    v46 = v69;
    v47 = v70;
    v48 = __swift_mutable_project_boxed_opaque_existential_1(&v66, v69);
    v49 = *(*(v46 - 8) + 64);
    MEMORY[0x28223BE20](v48);
    v51 = &v53 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v52 + 16))(v51);
    sub_26C072778(v45, v51, &v71, v46, v47);
    __swift_destroy_boxed_opaque_existential_1(&v66);
    v6 = v71;
    v5 += 40;
    v3 = v56 - 1;
    v4 = MEMORY[0x277D84F90];
    if (v56 == 1)
    {
      sub_26C0688D8(v71, v54);

      return;
    }
  }

  if (!v20)
  {
    goto LABEL_11;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_26C069CC4(uint64_t a1@<X8>)
{
  v3 = v1[12];
  if (v3)
  {
    v4 = v1[13];
    v5 = v1[14];
    v6 = v1[15];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC580;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    *(inited + 32) = 0x59422050554F5247;
    *(inited + 56) = v8;
    *(inited + 64) = &protocol witness table for Expression<A>;
    v9 = MEMORY[0x277D84F90];
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = v9;

    sub_26C06E874(v4, v5);
    sub_26C0688D8(v3, (inited + 72));
    sub_26C0688D8(inited, v12);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();

    if (v5)
    {
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_26C0AC580;
      sub_26C06B6BC(v12, v10 + 32);
      v11 = swift_initStackObject();
      *(v11 + 16) = xmmword_26C0AC580;
      *(v11 + 56) = v8;
      *(v11 + 64) = &protocol witness table for Expression<A>;
      *(v11 + 32) = 0x474E49564148;
      *(v11 + 40) = 0xE600000000000000;
      *(v11 + 48) = MEMORY[0x277D84F90];
      *(v11 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
      *(v11 + 104) = &protocol witness table for Expression<A>;
      *(v11 + 72) = v4;
      *(v11 + 80) = v5;
      *(v11 + 88) = v6;
      sub_26C0688D8(v11, (v10 + 72));
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_26C0688D8(v10, a1);
      swift_setDeallocating();
      swift_arrayDestroy();
      __swift_destroy_boxed_opaque_existential_1(v12);
    }

    else
    {
      sub_26C06A3A8(v12, a1);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

double sub_26C069F20@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[10];
  if (v3)
  {
    v4 = v1[11];
    v5 = v1[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC580;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    *(inited + 32) = 0x4552454857;
    *(inited + 56) = v7;
    *(inited + 64) = &protocol witness table for Expression<A>;
    v8 = MEMORY[0x277D84F90];
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v8;
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
    *(inited + 104) = &protocol witness table for Expression<A>;
    *(inited + 72) = v5;
    *(inited + 80) = v3;
    *(inited + 88) = v4;

    sub_26C0688D8(inited, a1);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void sub_26C06A060(uint64_t a1@<X8>)
{
  if (*(v1 + 153))
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    v3 = *(v1 + 152);
    v4 = *(v1 + 144);
    v11 = *(v1 + 136);
    v5 = sub_26C0ABC60();
    MEMORY[0x26D69A890](v5);

    if (v3)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
      *(a1 + 32) = &protocol witness table for Expression<A>;
      *a1 = 0x2054494D494CLL;
      *(a1 + 8) = 0xE600000000000000;
      *(a1 + 16) = MEMORY[0x277D84F90];
      *(a1 + 24) = v6;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26C0AC580;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
      *(inited + 56) = v8;
      *(inited + 64) = &protocol witness table for Expression<A>;
      *(inited + 32) = 0x2054494D494CLL;
      v9 = MEMORY[0x277D84F90];
      *(inited + 40) = 0xE600000000000000;
      *(inited + 48) = v9;
      v10 = sub_26C0ABC60();
      MEMORY[0x26D69A890](v10);

      *(inited + 96) = v8;
      *(inited + 104) = &protocol witness table for Expression<A>;
      *(inited + 72) = 0x2054455346464FLL;
      *(inited + 80) = 0xE700000000000000;
      *(inited + 88) = v9;
      sub_26C0688D8(inited, a1);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
      swift_arrayDestroy();
    }
  }
}

void *sub_26C06A23C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_26C06A3A8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_26C06A410(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_26C06A3A8(&v12, v10 + 40 * a1 + 32);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26C06A56C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26C06A5F0(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (!v3)
  {
    return v2;
  }

  swift_beginAccess();
  sqlite3_reset(*(v2 + 16));
  sqlite3_clear_bindings(*(v2 + 16));
  if (v3 == sqlite3_bind_parameter_count(*(v2 + 16)))
  {
    v5 = a1 + 32;
    v6 = -v3;
    v7 = 1;
    do
    {
      sub_26C06D998(v5, v7++);
      v5 += 40;
    }

    while (v6 + v7 != 1);
    return v2;
  }

  sub_26C0ABB30();
  sqlite3_bind_parameter_count(*(v2 + 16));
  sub_26C0ABC60();

  MEMORY[0x26D69A890](0xD000000000000012, 0x800000026C0AE260);
  v9 = sub_26C0ABC60();
  MEMORY[0x26D69A890](v9);

  MEMORY[0x26D69A890](0x64657373617020, 0xE700000000000000);
  result = sub_26C0ABBE0();
  __break(1u);
  return result;
}

uint64_t sub_26C06A790(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F98];
  v129 = (v4 + 16);
  v140 = a1;
  v141 = v5;
  *(v5 + 16) = 0;
  v6 = (v5 + 16);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 16))(v177, v7, v8);
  v9 = v177[1];

  sub_26C06B68C(v177);
  v10 = *(v9 + 16);
  v128 = v6;
  swift_beginAccess();
  v130 = v10;
  if (!v10)
  {
LABEL_90:

    swift_beginAccess();
    v35 = *(v4 + 16);

    return v35;
  }

  v11 = 0;
  v132 = v9 + 32;
  v135 = v4;
  v131 = v9;
  while (2)
  {
    if (v11 >= *(v9 + 16))
    {
      goto LABEL_99;
    }

    v134 = v11;
    sub_26C06B6BC(v132 + 40 * v11, v174);
    v12 = v175;
    v13 = v176;
    __swift_project_boxed_opaque_existential_1(v174, v175);
    (*(v13 + 8))(v172, v12, v13);
    v14 = v172[0];

    v15 = HIBYTE(*(&v14 + 1)) & 0xFLL;
    if ((*(&v14 + 1) & 0x2000000000000000) == 0)
    {
      v15 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15)
    {

      v34 = MEMORY[0x277D84F90];
      v18 = MEMORY[0x277D84F90];
      v35 = *(MEMORY[0x277D84F90] + 16);
      if (v35)
      {
        goto LABEL_34;
      }

LABEL_25:
      v36 = v34;

      if (*(v34 + 16))
      {
        goto LABEL_40;
      }

LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      result = sub_26C0ABCF0();
      __break(1u);
      return result;
    }

    v136 = v2;
    v16 = 0;
    v17 = 4 * v15;
    v18 = MEMORY[0x277D84F90];
    v19 = 15;
    do
    {
      while (1)
      {
        if (sub_26C0AB960() == 46 && v22 == 0xE100000000000000)
        {

          goto LABEL_16;
        }

        v23 = sub_26C0ABC70();

        if ((v23 & 1) == 0)
        {
          break;
        }

LABEL_16:
        if (v19 >> 14 != v16)
        {
          if (v16 < v19 >> 14)
          {
            goto LABEL_102;
          }

          v24 = sub_26C0AB980();
          v178 = v25;
          v27 = v26;
          v29 = v28;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_26C06B720(0, *(v18 + 2) + 1, 1, v18);
          }

          v30 = v18;
          v31 = *(v18 + 2);
          v32 = v30;
          v33 = *(v30 + 3);
          if (v31 >= v33 >> 1)
          {
            v32 = sub_26C06B720((v33 > 1), v31 + 1, 1, v32);
          }

          *(v32 + 2) = v31 + 1;
          v20 = &v32[32 * v31];
          v18 = v32;
          v21 = v178;
          *(v20 + 4) = v24;
          *(v20 + 5) = v21;
          *(v20 + 6) = v27;
          *(v20 + 7) = v29;
        }

        v19 = sub_26C0AB8F0();
        v16 = v19 >> 14;
        if (v19 >> 14 == v17)
        {
          goto LABEL_22;
        }
      }

      v16 = sub_26C0AB8F0() >> 14;
    }

    while (v16 != v17);
    v16 = v19 >> 14;
LABEL_22:
    if (v16 == v17)
    {

      v4 = v135;
      v2 = v136;
      goto LABEL_33;
    }

    if (v17 < v16)
    {
      goto LABEL_103;
    }

    v37 = sub_26C0AB980();
    v39 = v38;
    v41 = v40;
    v43 = v42;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_26C06B720(0, *(v18 + 2) + 1, 1, v18);
    }

    v4 = v135;
    v2 = v136;
    v44 = v18;
    v45 = *(v18 + 2);
    v46 = v44;
    v47 = *(v44 + 3);
    if (v45 >= v47 >> 1)
    {
      v46 = sub_26C06B720((v47 > 1), v45 + 1, 1, v46);
    }

    *(v46 + 2) = v45 + 1;
    v48 = &v46[32 * v45];
    v18 = v46;
    *(v48 + 4) = v37;
    *(v48 + 5) = v39;
    *(v48 + 6) = v41;
    *(v48 + 7) = v43;
LABEL_33:
    v34 = MEMORY[0x277D84F90];
    v35 = *(v18 + 2);
    if (!v35)
    {
      goto LABEL_25;
    }

LABEL_34:
    v137 = v2;
    *&v172[0] = v34;
    sub_26C06B938(0, v35, 0);
    v49 = 0;
    v36 = *&v172[0];
    v50 = (v18 + 56);
    do
    {
      if (v49 >= *(v18 + 2))
      {
        __break(1u);
LABEL_96:

        __swift_destroy_boxed_opaque_existential_1(&v158);
        goto LABEL_93;
      }

      v51 = v35;
      v52 = v18;
      v54 = *(v50 - 3);
      v53 = *(v50 - 2);
      v55 = v36;
      v56 = *(v50 - 1);
      v57 = *v50;

      v58 = v56;
      v36 = v55;
      v59 = MEMORY[0x26D69A850](v54, v53, v58, v57);
      v61 = v60;

      *&v172[0] = v55;
      v62 = *(v55 + 2);
      v63 = *(v36 + 3);
      if (v62 >= v63 >> 1)
      {
        sub_26C06B938((v63 > 1), v62 + 1, 1);
        v36 = *&v172[0];
      }

      ++v49;
      *(v36 + 2) = v62 + 1;
      v64 = &v36[16 * v62];
      *(v64 + 4) = v59;
      *(v64 + 5) = v61;
      v50 += 4;
      v35 = v51;
      v18 = v52;
    }

    while (v51 != v49);

    v4 = v135;
    v2 = v137;
    if (!*(v36 + 2))
    {
      goto LABEL_100;
    }

LABEL_40:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_26C0AAD84(v36);
      v65 = *(v36 + 2);
      if (v65)
      {
        goto LABEL_42;
      }

      goto LABEL_101;
    }

    v65 = *(v36 + 2);
    if (!v65)
    {
      goto LABEL_101;
    }

LABEL_42:
    v66 = v65 - 1;
    v67 = &v36[16 * v66];
    v69 = *(v67 + 4);
    v68 = *(v67 + 5);
    *(v36 + 2) = v66;
    *&v172[0] = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479408, &qword_26C0AC858);
    sub_26C068F2C(&qword_280B5B098, &qword_280479408, &qword_26C0AC858);
    v70 = sub_26C0AB810();
    v72 = v71;

    if (v69 == 42 && v68 == 0xE100000000000000)
    {

      break;
    }

    v73 = sub_26C0ABC70();

    if ((v73 & 1) == 0)
    {

      v106 = v175;
      v107 = v176;
      __swift_project_boxed_opaque_existential_1(v174, v175);
      (*(v107 + 8))(v172, v106, v107);
      v108 = v172[0];

      v109 = *v128;
      swift_beginAccess();
      v110 = *v129;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v142 = *v129;
      v112 = v142;
      v113 = sub_26C06772C(v108, *(&v108 + 1));
      v115 = *(v112 + 16);
      v116 = (v114 & 1) == 0;
      v117 = __OFADD__(v115, v116);
      v118 = v115 + v116;
      if (v117)
      {
        goto LABEL_104;
      }

      v119 = v114;
      if (*(v112 + 24) >= v118)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v123 = v113;
          sub_26C0A9960();
          v113 = v123;
          if (v119)
          {
            goto LABEL_78;
          }

          goto LABEL_85;
        }
      }

      else
      {
        sub_26C06C4F8(v118, isUniquelyReferenced_nonNull_native);
        v113 = sub_26C06772C(v108, *(&v108 + 1));
        if ((v119 & 1) != (v120 & 1))
        {
          goto LABEL_107;
        }
      }

      if (v119)
      {
LABEL_78:
        v121 = v113;

        v122 = v142;
        *(*(v142 + 56) + 8 * v121) = v109;
LABEL_87:
        *v129 = v122;
        swift_endAccess();
        v9 = v131;
        if (__OFADD__(v109, 1))
        {
          goto LABEL_105;
        }

        *v128 = v109 + 1;
        __swift_destroy_boxed_opaque_existential_1(v174);
LABEL_89:
        v11 = v134 + 1;
        if (v134 + 1 == v130)
        {
          goto LABEL_90;
        }

        continue;
      }

LABEL_85:
      v122 = v142;
      *(v142 + 8 * (v113 >> 6) + 64) |= 1 << v113;
      *(v122[6] + 16 * v113) = v108;
      *(v122[7] + 8 * v113) = v109;
      v124 = v122[2];
      v117 = __OFADD__(v124, 1);
      v125 = v124 + 1;
      if (v117)
      {
        goto LABEL_106;
      }

      v122[2] = v125;
      goto LABEL_87;
    }

    break;
  }

  v178 = v72;
  sub_26C06B6BC(v140, v169);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_26C0AC5C0;
  *(v74 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(v74 + 64) = &protocol witness table for Expression<A>;
  *(v74 + 32) = 42;
  *(v74 + 40) = 0xE100000000000000;
  *(v74 + 48) = MEMORY[0x277D84F90];
  v75 = v170;
  v76 = v171;
  __swift_mutable_project_boxed_opaque_existential_1(v169, v170);
  v77 = (*(v76 + 32))(&v158, v75, v76);
  *v78 = 0;
  v79 = *(v78 + 8);
  *(v78 + 8) = v74;

  v77(&v158, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793E8, &qword_26C0AC838);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_26C0AC5C0;
  v133 = v80;
  sub_26C06B6BC(v169, v80 + 32);
  v35 = v140[3];
  v81 = v140[4];
  __swift_project_boxed_opaque_existential_1(v140, v35);
  (*(v81 + 16))(&v158, v35, v81);
  v172[8] = v166;
  v172[9] = v167;
  v173 = v168;
  v172[4] = v162;
  v172[5] = v163;
  v172[6] = v164;
  v172[7] = v165;
  v172[0] = v158;
  v172[1] = v159;
  v172[2] = v160;
  v172[3] = v161;
  v82 = v162;

  sub_26C06B68C(v172);
  v83 = *(v82 + 16);
  if (v83)
  {
    v138 = v2;
    v157 = MEMORY[0x277D84F90];
    sub_26C072834(0, v83, 0);
    v84 = v157;
    v35 = v82 + 32;
    do
    {
      sub_26C067878(v35, &v142, &qword_2804793E0, &qword_26C0AC830);
      v153[2] = v144;
      v154[0] = v145;
      v154[1] = v146;
      v155 = v147;
      v153[0] = v142;
      v153[1] = v143;
      sub_26C06A3A8((v153 + 8), v156);
      __swift_destroy_boxed_opaque_existential_1(v154);
      v157 = v84;
      v86 = *(v84 + 16);
      v85 = *(v84 + 24);
      if (v86 >= v85 >> 1)
      {
        sub_26C072834((v85 > 1), v86 + 1, 1);
        v84 = v157;
      }

      *(v84 + 16) = v86 + 1;
      sub_26C06A3A8(v156, v84 + 40 * v86 + 32);
      v35 += 88;
      --v83;
    }

    while (v83);

    v2 = v138;
  }

  else
  {

    v84 = MEMORY[0x277D84F90];
  }

  *&v158 = v133;
  sub_26C06B97C(v84);
  v87 = v158;
  v88 = v178;
  v89 = HIBYTE(v178) & 0xF;
  if ((v178 & 0x2000000000000000) == 0)
  {
    v89 = v70 & 0xFFFFFFFFFFFFLL;
  }

  if (!v89)
  {

    v178 = *(v87 + 16);
    if (v178)
    {
      v101 = 0;
      v102 = v87 + 32;
      v4 = v135;
      while (v101 < *(v87 + 16))
      {
        sub_26C06B6BC(v102, v153);
        v103 = v140[3];
        v104 = v140[4];
        __swift_project_boxed_opaque_existential_1(v140, v103);
        (*(v104 + 16))(&v142, v103, v104);
        v166 = v150;
        v167 = v151;
        v168 = v152;
        v162 = v146;
        v163 = v147;
        v164 = v148;
        v165 = v149;
        v158 = v142;
        v159 = v143;
        v160 = v144;
        v161 = v145;
        v35 = v146;

        sub_26C06B68C(&v158);
        v105 = *(v35 + 16);

        sub_26C06BAC4(v153, v139, v105 != 0, v135, v141);
        if (v2)
        {
          __swift_destroy_boxed_opaque_existential_1(v153);

          goto LABEL_93;
        }

        ++v101;
        __swift_destroy_boxed_opaque_existential_1(v153);
        v102 += 40;
        if (v178 == v101)
        {
          goto LABEL_80;
        }
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v4 = v135;
LABEL_80:

LABEL_81:
    __swift_destroy_boxed_opaque_existential_1(v169);
    __swift_destroy_boxed_opaque_existential_1(v174);
    v9 = v131;
    goto LABEL_89;
  }

  v90 = *(v158 + 16);
  if (v90)
  {
    v91 = 0;
    v92 = v158 + 32;
    while (1)
    {
      if (v91 >= *(v87 + 16))
      {
        __break(1u);
        goto LABEL_98;
      }

      sub_26C06B6BC(v92, &v158);
      v93 = *(&v159 + 1);
      v94 = v160;
      __swift_project_boxed_opaque_existential_1(&v158, *(&v159 + 1));
      sub_26C070730(0, v93, v94, &v142);
      v95 = *(&v143 + 1);
      v96 = v144;
      __swift_project_boxed_opaque_existential_1(&v142, *(&v143 + 1));
      v97 = *(v96 + 8);
      v98 = v96;
      v88 = v178;
      v97(v153, v95, v98);
      v35 = *(&v153[0] + 1);
      v99 = *&v153[0];

      if (__PAIR128__(v35, v99) == __PAIR128__(v88, v70))
      {
        break;
      }

      v100 = sub_26C0ABC70();

      __swift_destroy_boxed_opaque_existential_1(&v142);
      if (v100)
      {
        goto LABEL_74;
      }

      ++v91;
      __swift_destroy_boxed_opaque_existential_1(&v158);
      v92 += 40;
      if (v90 == v91)
      {
        goto LABEL_91;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v142);
LABEL_74:

    v4 = v135;
    sub_26C06BAC4(&v158, v139, 1, v135, v141);
    if (v2)
    {
      goto LABEL_96;
    }

    __swift_destroy_boxed_opaque_existential_1(&v158);
    goto LABEL_81;
  }

LABEL_91:

  sub_26C072E10();
  swift_allocError();
  *v126 = v70;
  *(v126 + 8) = v88;
  *(v126 + 16) = 0;
  *(v126 + 24) = 0;
  swift_willThrow();
LABEL_93:
  __swift_destroy_boxed_opaque_existential_1(v169);
  __swift_destroy_boxed_opaque_existential_1(v174);

  return v35;
}

uint64_t sub_26C06B61C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26C06B6BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_26C06B720(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793D0, &qword_26C0AC820);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_26C06B82C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C8, &qword_26C0AC818);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_26C06B938(char *a1, int64_t a2, char a3)
{
  result = sub_26C06B82C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26C06B9A4(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  v12 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v6 = result;
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v13 = *(v6 + 16);
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    *(v6 + 16) = v15;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_26C06BAC4(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v78 = a5;
  v79 = a4;
  v74 = a3;
  v76 = a2;
  v5 = a1;
  v87[21] = *MEMORY[0x277D85DE8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  v7 = v5[3];
  v8 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v7);
  (*(v8 + 16))(v85, v7, v8);
  v9 = v85[3];
  v75 = v85[2];

  sub_26C06B68C(v85);
  v11 = v5[3];
  v10 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v11);
  v12 = v11;
  v13 = v5;
  (*(v10 + 16))(v86, v12, v10);
  v14 = v86[6];
  v15 = v86[7];

  sub_26C06B68C(v86);
  v16 = *(v8 + 40);
  v83 = DynamicType;
  v84 = v8;
  __swift_allocate_boxed_opaque_existential_1(v82);
  v16(v75, v9, v14, v15, DynamicType, v8);
  v17 = v5[3];
  v18 = v5[4];
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  (*(v18 + 16))(v87, v17, v18);
  LOBYTE(v5) = v87[0];
  v19 = v87[1];

  sub_26C06B68C(v87);
  v20 = v83;
  v21 = v84;
  __swift_mutable_project_boxed_opaque_existential_1(v82, v83);
  v22 = (*(v21 + 32))(v81, v20, v21);
  v24 = *(v23 + 8);
  *v23 = v5;
  *(v23 + 8) = v19;

  v22(v81, 0);
  v26 = v83;
  v25 = v84;
  __swift_project_boxed_opaque_existential_1(v82, v83);
  (*(*(v25 + 8) + 8))(v81, v26);
  v27 = v81[2];
  type metadata accessor for Statement();
  swift_allocObject();

  sub_26C066FF0(v28);
  if (!v77)
  {
    v75 = 0;

    sub_26C06A5F0(v27);

    v30 = Statement.columnNames.getter();

    v31 = *(v30 + 16);
    if (v31)
    {
      v81[0] = MEMORY[0x277D84F90];
      sub_26C06B938(0, v31, 0);
      v32 = v81[0];
      v77 = v30;
      v33 = (v30 + 40);
      do
      {
        v35 = *(v33 - 1);
        v34 = *v33;

        v36 = sub_26C067104(34, 0xE100000000000000);
        v38 = v37;

        v81[0] = v32;
        v40 = *(v32 + 16);
        v39 = *(v32 + 24);
        v41 = v32;
        if (v40 >= v39 >> 1)
        {
          sub_26C06B938((v39 > 1), v40 + 1, 1);
          v41 = v81[0];
        }

        *(v41 + 16) = v40 + 1;
        v42 = v41 + 16 * v40;
        *(v42 + 32) = v36;
        *(v42 + 40) = v38;
        v33 += 2;
        --v31;
        v32 = v41;
      }

      while (v31);

      if ((v74 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {

      v32 = MEMORY[0x277D84F90];
      if ((v74 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    MEMORY[0x28223BE20](v43);
    v73[2] = v13;
    v44 = v75;
    v45 = sub_26C072874(sub_26C072A88, v73, v32);
    v75 = v44;

    v32 = v45;
LABEL_10:
    v46 = v79;
    v77 = *(v32 + 16);
    if (!v77)
    {
LABEL_25:

      result = __swift_destroy_boxed_opaque_existential_1(v82);
      goto LABEL_26;
    }

    v47 = v78;
    swift_beginAccess();
    swift_beginAccess();
    v48 = 0;
    v49 = (v32 + 40);
    v76 = v32;
    while (1)
    {
      if (v48 >= *(v32 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
      }

      v51 = *(v49 - 1);
      v50 = *v49;
      v52 = *(v47 + 16);
      swift_beginAccess();

      v53 = *(v46 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v80 = *(v46 + 16);
      v55 = v80;
      *(v46 + 16) = 0x8000000000000000;
      v56 = sub_26C06772C(v51, v50);
      v58 = v55[2];
      v59 = (v57 & 1) == 0;
      v60 = __OFADD__(v58, v59);
      v61 = v58 + v59;
      if (v60)
      {
        goto LABEL_30;
      }

      v62 = v57;
      if (v55[3] < v61)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_18;
      }

      v66 = v56;
      sub_26C0A9960();
      v56 = v66;
      if ((v62 & 1) == 0)
      {
LABEL_21:
        v65 = v80;
        v80[(v56 >> 6) + 8] |= 1 << v56;
        v67 = (v65[6] + 16 * v56);
        *v67 = v51;
        v67[1] = v50;
        *(v65[7] + 8 * v56) = v52;
        v68 = v65[2];
        v60 = __OFADD__(v68, 1);
        v69 = v68 + 1;
        if (v60)
        {
          goto LABEL_32;
        }

        v65[2] = v69;
        goto LABEL_23;
      }

LABEL_19:
      v64 = v56;

      v65 = v80;
      *(v80[7] + 8 * v64) = v52;
LABEL_23:
      v46 = v79;
      *(v79 + 16) = v65;
      swift_endAccess();
      v47 = v78;
      v70 = *(v78 + 16);
      v60 = __OFADD__(v70, 1);
      v71 = v70 + 1;
      v32 = v76;
      if (v60)
      {
        goto LABEL_31;
      }

      ++v48;
      *(v78 + 16) = v71;
      v49 += 2;
      if (v77 == v48)
      {
        goto LABEL_25;
      }
    }

    sub_26C06C4F8(v61, isUniquelyReferenced_nonNull_native);
    v56 = sub_26C06772C(v51, v50);
    if ((v62 & 1) != (v63 & 1))
    {
      result = sub_26C0ABCF0();
      __break(1u);
      return result;
    }

LABEL_18:
    if ((v62 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v82);
LABEL_26:
  v72 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_26C06C11C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 128);
  if (*(v3 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC580;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    *(inited + 32) = 0x594220524544524FLL;
    *(inited + 56) = v5;
    *(inited + 64) = &protocol witness table for Expression<A>;
    v6 = MEMORY[0x277D84F90];
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = v6;
    sub_26C0688D8(v3, (inited + 72));
    sub_26C0688D8(inited, a1);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_26C06C234@<X0>(uint64_t a1@<X8>)
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

int64_t Statement.columnNames.getter()
{
  v1 = v0;
  v2 = *(v0 + 48);
  if (v2)
  {

    return v2;
  }

  result = Statement.columnCount.getter();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2 = MEMORY[0x277D84F90];
  if (!result)
  {
LABEL_13:
    v12 = *(v1 + 48);
    *(v1 + 48) = v2;

    return v2;
  }

  v13 = MEMORY[0x277D84F90];
  sub_26C06B938(0, result, 0);
  v2 = v13;
  swift_beginAccess();
  v5 = 0;
  while (1)
  {
    result = sqlite3_column_name(*(v1 + 16), v5);
    if (!result)
    {
      break;
    }

    result = sub_26C0AB910();
    v8 = *(v13 + 16);
    v7 = *(v13 + 24);
    if (v8 >= v7 >> 1)
    {
      v10 = result;
      v11 = v6;
      sub_26C06B938((v7 > 1), v8 + 1, 1);
      v6 = v11;
      result = v10;
    }

    *(v13 + 16) = v8 + 1;
    v9 = v13 + 16 * v8;
    *(v9 + 32) = result;
    *(v9 + 40) = v6;
    if (v4 == v5)
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v4 == ++v5)
    {
      goto LABEL_13;
    }
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_26C06C440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26C0ABC70())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_26C06C4F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479710, &qword_26C0ADEC0);
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

uint64_t sub_26C06C7A0(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479450, &qword_26C0AC948);
  v10 = sub_26C06DF08();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_26C06C850(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

_BYTE *sub_26C06C850@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_26C086E80(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_26C086F38(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_26C06D7B4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_26C06C8E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;

  v5 = sub_26C06C7A0(v4);
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
  return result;
}

uint64_t Row.subscript.getter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  return sub_26C067EA0(a1, a2, a3, Row.get<A>(_:));
}

{
  return sub_26C067EA0(a1, a2, a3, Row.get<A>(_:));
}

void sub_26C06C95C(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = (v3 + 16);

  swift_beginAccess();
  v5 = MEMORY[0x277D84F90];
  if (a2 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = MEMORY[0x277D84F90] + 32;
    while (1)
    {
      v9 = v6 + 1;
      *v4 = v6 + 1;
      Cursor.subscript.getter(v6, v24);
      if (!v7)
      {
        v10 = v5[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
        v13 = swift_allocObject();
        v14 = (_swift_stdlib_malloc_size(v13) - 32) / 40;
        v13[2] = v12;
        v13[3] = 2 * v14;
        v15 = (v13 + 4);
        v16 = v5[3] >> 1;
        if (v5[2])
        {
          if (v13 != v5 || v15 >= &v5[5 * v16 + 4])
          {
            memmove(v13 + 4, v5 + 4, 40 * v16);
          }

          v5[2] = 0;
        }

        v8 = v15 + 40 * v16;
        v7 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v5 = v13;
      }

      v18 = __OFSUB__(v7--, 1);
      if (v18)
      {
        break;
      }

      v19 = v24[0];
      v20 = v24[1];
      *(v8 + 32) = v25;
      *v8 = v19;
      *(v8 + 16) = v20;
      v8 += 40;
      v6 = v9;
      if (a2 == v9)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v7 = 0;
LABEL_21:

  v21 = v5[3];
  if (v21 >= 2)
  {
    v22 = v21 >> 1;
    v18 = __OFSUB__(v22, v7);
    v23 = v22 - v7;
    if (v18)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v5[2] = v23;
  }
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Statement.step()()
{
  v2 = *(v0 + 24);
  sub_26C06CD30();
  if (qword_280B5AF70 != -1)
  {
    swift_once();
  }

  sub_26C0ABAA0();
  v3 = sub_26C06CD98();
  if ((v14 & 1) != 0 || v13 != v3)
  {
    v6 = *(v2 + 88);
    sub_26C0ABAD0();

    if (!v1)
    {
      v5 = v15;
    }

    goto LABEL_14;
  }

  swift_beginAccess();
  v4 = sqlite3_step(*(v0 + 16));
  if (qword_280B5B0A0 != -1)
  {
    swift_once();
  }

  if (!sub_26C071740(v4, off_280B5B0A8))
  {
    swift_beginAccess();
    v7 = *(v2 + 16);
    if (v7)
    {
      v7 = sqlite3_errmsg(v7);
      if (v7)
      {
        v8 = sub_26C0AB910();
        v10 = v9;
        sub_26C08FE58();
        swift_allocError();
        *v11 = v8;
        *(v11 + 8) = v10;
        *(v11 + 16) = v4;
        *(v11 + 24) = 0;
        swift_willThrow();
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return v7;
  }

  v5 = v4 == 100;
LABEL_14:
  LOBYTE(v7) = v5;
  return v7;
}

unint64_t sub_26C06CD30()
{
  result = qword_280B5B040;
  if (!qword_280B5B040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280B5B040);
  }

  return result;
}

uint64_t sub_26C06CD98()
{
  result = v0;
  if (*(v0 + 104) != 1)
  {
    return *(v0 + 96);
  }

  *(v0 + 96) = v0;
  *(v0 + 104) = 0;
  return result;
}

uint64_t ExpressionType.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(a5 + 24))(a3, a5);
  v12 = v11;
  v13 = (*(a5 + 32))(a3, a5);
  (*(a4 + 40))(v10, v12, v13, a2, a4);
  v14 = *(*(a3 - 8) + 8);

  return v14(a1, a3);
}

uint64_t Value.expression.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Expression();
  (*(v7 + 16))(v10, v3, a1);
  WitnessTable = swift_getWitnessTable();
  ExpressionType<>.init(value:)(v10, v11, WitnessTable, a2);
  v18[0] = v18[3];
  v18[1] = v18[4];
  v18[2] = v18[5];
  v13 = (*(WitnessTable + 24))(v11, WitnessTable);
  v15 = v14;
  v16 = (*(WitnessTable + 32))(v11, WitnessTable);
  *a3 = v13;
  a3[1] = v15;
  a3[2] = v16;
}

uint64_t sub_26C06D4A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v18[3] = type metadata accessor for Expression();
  v18[4] = &protocol witness table for Expression<A>;
  v18[0] = v12;
  v18[1] = v11;
  v18[2] = v13;
  v14 = *(a4 + 8);
  v17[3] = a3;
  v17[4] = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);

  sub_26C06E7EC(v18, v17, 1, a5, a6);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t QueryType.filter(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  (*(a3 + 16))(v24, a2, a3);
  v10 = v25;
  v11 = v26;
  v12 = v27;
  sub_26C06E874(v25, v26);
  sub_26C06B68C(v24);
  if (v11)
  {
    v23[0] = v10;
    v23[1] = v11;
    v23[2] = v12;
    v22[0] = v8;
    v22[1] = v7;
    v22[2] = v9;
    && infix(_:_:)(v23, v22);
    sub_26C06E9FC(v10, v11);
    v8 = v19;
    v7 = v20;
    v9 = v21;
  }

  else
  {
  }

  v13 = (*(a3 + 32))(v23, a2, a3);
  v15 = v14[9];
  v16 = v14[10];
  v17 = v14[11];
  v14[9] = v8;
  v14[10] = v7;
  v14[11] = v9;
  sub_26C06E9FC(v15, v16);
  return v13(v23, 0);
}

{
  v7 = a1[1];
  v8 = a1[2];
  v10[0] = *a1;
  v10[1] = v7;
  v10[2] = v8;

  QueryType.filter(_:)(v10, a2, a3, a4);
}

uint64_t sub_26C06D7B4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_26C0AB6D0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_26C0AB690();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_26C06D83C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, void (*a7)(uint64_t *, void, unint64_t)@<X6>, uint64_t *a8@<X8>)
{
  v21 = 32;
  v22 = 0xE100000000000000;
  MEMORY[0x26D69A890](a3, a4);
  MEMORY[0x26D69A890](32, 0xE100000000000000);
  sub_26C0688D8(a1, &v21);

  v14 = v24;
  v15 = v25;
  __swift_project_boxed_opaque_existential_1(&v21, v24);
  (v15[1])(v20, v14, v15);
  v17 = v20[0];
  v16 = v20[1];
  v18 = v20[2];
  result = __swift_destroy_boxed_opaque_existential_1(&v21);
  if (a2)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v25 = &protocol witness table for Expression<A>;
    v21 = v17;
    v22 = v16;
    v23 = v18;
    a7(&v21, 0, 0xE000000000000000);
    return __swift_destroy_boxed_opaque_existential_1(&v21);
  }

  else
  {
    *a8 = v17;
    a8[1] = v16;
    a8[2] = v18;
  }

  return result;
}

double sub_26C06D96C@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t Expression.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_26C06D998(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 24))
  {
    v7 = swift_beginAccess();
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      return sqlite3_bind_null(v2[2], a2);
    }

    __break(1u);
    goto LABEL_46;
  }

  sub_26C06DF6C(a1, v17);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479438, &unk_26C0ACEA0);
    if (swift_dynamicCast())
    {
      v3 = v15;
      v7 = swift_beginAccess();
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          v4 = *(v15 + 16);
          if (!(v4 >> 31))
          {
            v7 = v2[2];
            if (qword_280B5AF20 == -1)
            {
LABEL_8:
              sqlite3_bind_blob(v7, a2, (v3 + 32), v4, qword_280B5B228);
            }

LABEL_49:
            v14 = v7;
            swift_once();
            v7 = v14;
            goto LABEL_8;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }
  }

  else
  {
    sub_26C071BDC(v17);
  }

  sub_26C06DF6C(a1, v17);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479438, &unk_26C0ACEA0);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (a2 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (a2 <= 0x7FFFFFFF)
      {
        return sqlite3_bind_double(v2[2], a2, *&v15);
      }

      __break(1u);
      goto LABEL_52;
    }
  }

  else
  {
    sub_26C071BDC(v17);
  }

  sub_26C06DF6C(a1, v17);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479438, &unk_26C0ACEA0);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          return sqlite3_bind_int64(v2[2], a2, v15);
        }

        goto LABEL_53;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

  else
  {
    sub_26C071BDC(v17);
  }

  sub_26C06DF6C(a1, v17);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479438, &unk_26C0ACEA0);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          v2 = v2[2];
          if (qword_280B5AF20 == -1)
          {
LABEL_30:
            v9 = qword_280B5B228;
            v10 = sub_26C0AB8B0();

            sqlite3_bind_text(v2, a2, (v10 + 32), -1, v9);
          }

LABEL_56:
          swift_once();
          goto LABEL_30;
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

LABEL_54:
      __break(1u);
      goto LABEL_55;
    }
  }

  else
  {
    sub_26C071BDC(v17);
  }

  sub_26C06DF6C(a1, v17);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479438, &unk_26C0ACEA0);
    if (swift_dynamicCast())
    {
      v11 = MEMORY[0x277D84A28];
      v12 = v15;
LABEL_39:
      v18 = v11;
      v19 = &protocol witness table for Int64;
      v17[0] = v12;
      sub_26C06D998(v17, a2);
      v13 = v17;
      return sub_26C071BDC(v13);
    }
  }

  else
  {
    sub_26C071BDC(v17);
  }

  sub_26C06DF6C(a1, v17);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479438, &unk_26C0ACEA0);
    if (swift_dynamicCast())
    {
      v11 = MEMORY[0x277D84A28];
      v12 = v15;
      goto LABEL_39;
    }
  }

  else
  {
    sub_26C071BDC(v17);
  }

  sub_26C06DF6C(a1, &v15);
  if (!v16)
  {
    v13 = &v15;
    return sub_26C071BDC(v13);
  }

  sub_26C06A3A8(&v15, v17);
  *&v15 = 0;
  *(&v15 + 1) = 0xE000000000000000;
  sub_26C0ABB30();
  MEMORY[0x26D69A890](0xD00000000000001FLL, 0x800000026C0AE240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479438, &unk_26C0ACEA0);
  sub_26C0ABBD0();
  result = sub_26C0ABBE0();
  __break(1u);
  return result;
}

unint64_t sub_26C06DF08()
{
  result = qword_280B5A980;
  if (!qword_280B5A980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280479450, &qword_26C0AC948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B5A980);
  }

  return result;
}

uint64_t sub_26C06DF6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C06DFDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v14 = *a1;
  v13 = a1[1];
  v15 = a1[2];
  v21[3] = type metadata accessor for Expression();
  v21[4] = &protocol witness table for Expression<A>;
  v21[0] = v14;
  v21[1] = v13;
  v21[2] = v15;
  v16 = *(a4 + 8);
  v20[3] = a3;
  v20[4] = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v21, inited + 32);
  sub_26C06B6BC(v20, inited + 72);

  sub_26C06E254(inited, 1, a5, a6, a7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v20);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_26C06E148@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v16 = a2;
  v17 = a3;

  MEMORY[0x26D69A890](40, 0xE100000000000000);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = *(v7 + 8);
  v8(v15, v6, v7);
  v9 = v15[0];
  v10 = v15[1];

  MEMORY[0x26D69A890](v9, v10);

  MEMORY[0x26D69A890](41, 0xE100000000000000);
  v11 = v16;
  v12 = v17;
  v8(v15, v6, v7);
  v13 = v15[2];

  *a4 = v11;
  a4[1] = v12;
  a4[2] = v13;
  return result;
}

uint64_t != infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C06DFDC(a1, a2, a3, a4, 15649, 0xE200000000000000, a5);
}

{
  return sub_26C0922B4(a1, a2, a3, a4, 15649, 0xE200000000000000, 0x544F4E205349, a5, 0xE600000000000000);
}

uint64_t sub_26C06E288@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v16 = a2;
  v17 = a3;

  MEMORY[0x26D69A890](40, 0xE100000000000000);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = *(v7 + 8);
  v8(v15, v6, v7);
  v9 = v15[0];
  v10 = v15[1];

  MEMORY[0x26D69A890](v9, v10);

  MEMORY[0x26D69A890](41, 0xE100000000000000);
  v11 = v16;
  v12 = v17;
  v8(v15, v6, v7);
  v13 = v15[2];

  return Expression.init(_:_:)(v11, v12, v13, a4);
}

uint64_t sub_26C06E3AC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for Expression();
  v23 = 32;
  v24 = 0xE100000000000000;
  MEMORY[0x26D69A890](a3, a4);
  MEMORY[0x26D69A890](32, 0xE100000000000000);
  sub_26C0688D8(a1, &v23);

  v11 = v26;
  v12 = v27;
  __swift_project_boxed_opaque_existential_1(&v23, v26);
  (v12[1])(&v21, v11, v12);
  v19 = v21;
  v20 = v22;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  WitnessTable = swift_getWitnessTable();
  v15 = sub_26C068F2C(&qword_280B5AF28, &qword_280479358, &qword_26C0AC5D0);
  ExpressionType.init<A>(_:)(&v19, v10, v13, WitnessTable, v15);
  result = __swift_destroy_boxed_opaque_existential_1(&v23);
  v17 = v29;
  v18 = v30;
  if (a2)
  {
    v26 = v10;
    v27 = &protocol witness table for Expression<A>;
    v23 = v28;
    v24 = v29;
    v25 = v30;
    sub_26C06E288(&v23, 0, 0xE000000000000000, a5);
    return __swift_destroy_boxed_opaque_existential_1(&v23);
  }

  else
  {
    *a5 = v28;
    a5[1] = v17;
    a5[2] = v18;
  }

  return result;
}

uint64_t ExpressionType<>.init(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26C0AC5C0;
  v9 = *(a4 + 56);
  swift_getAssociatedTypeWitness();
  *(v8 + 56) = swift_getAssociatedTypeWitness();
  *(v8 + 64) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v8 + 32));
  v10 = swift_checkMetadataState();
  v9(v10, a4);
  (*(a3 + 40))(63, 0xE100000000000000, v8, a2, a3);
  v11 = *(*(v10 - 8) + 8);

  return v11(a1, v10);
}

uint64_t sub_26C06E708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(a1, inited + 32);
  sub_26C06B6BC(a2, inited + 72);
  sub_26C06E3AC(inited, a3, a4, a5, a6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  return swift_arrayDestroy();
}

uint64_t sub_26C06E7EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v9 = sub_26C06E8B8(a4);
  sub_26C06E708(a1, a2, a3, v9, v10, a5);
}

uint64_t & infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C06D4A0(a1, a2, a3, a4, 10, a5);
}

{
  return sub_26C090C78(a1, a2, a3, a4, 10, a5);
}

uint64_t sub_26C06E874(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_26C06E8B8(char a1)
{
  result = 43;
  switch(a1)
  {
    case 1:
      result = 45;
      break;
    case 2:
      result = 21071;
      break;
    case 3:
      result = 4476481;
      break;
    case 4:
      result = 542396238;
      break;
    case 5:
      result = 42;
      break;
    case 6:
      result = 47;
      break;
    case 7:
      result = 37;
      break;
    case 8:
      result = 15420;
      break;
    case 9:
      result = 15934;
      break;
    case 10:
      result = 38;
      break;
    case 11:
      result = 124;
      break;
    case 12:
      result = 126;
      break;
    case 13:
      result = 61;
      break;
    case 14:
      result = 15649;
      break;
    case 15:
      result = 62;
      break;
    case 16:
      result = 60;
      break;
    case 17:
      result = 15678;
      break;
    case 18:
      result = 15676;
      break;
    case 19:
      result = 31868;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26C06E9FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void Connection.transaction(_:block:)(unsigned __int8 *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  sub_26C0ABB30();

  v25 = 0x204E49474542;
  v26 = 0xE600000000000000;
  v7 = 0x54414944454D4D49;
  if (v6 != 1)
  {
    v7 = 0x564953554C435845;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0x4445525245464544;
  }

  if (v6)
  {
    v9 = 0xE900000000000045;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  MEMORY[0x26D69A890](v8, v9);

  v10 = MEMORY[0x26D69A890](0x4341534E41525420, 0xEC0000004E4F4954);
  v24 = v21;
  MEMORY[0x28223BE20](v10);
  v22 = a2;
  v21[1] = a3;
  v21[0] = v11;
  sub_26C06CD30();
  if (qword_280B5AF70 != -1)
  {
    swift_once();
  }

  sub_26C0ABAA0();
  v12 = v25;
  v13 = v26;
  v14 = sub_26C06CD98();
  if ((v13 & 1) != 0 || v12 != v14)
  {
    v17 = *(v3 + 88);
    sub_26C0ABAD0();
  }

  else
  {
    type metadata accessor for Statement();
    swift_initStackObject();

    v16 = v23;
    sub_26C066FF0(v15);
    if (!v16)
    {

      Statement.run(_:)(MEMORY[0x277D84F90]);

      v22(v19);
      swift_initStackObject();

      sub_26C066FF0(v20);

      Statement.run(_:)(MEMORY[0x277D84F90]);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t sub_26C06EECC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v11 = *MEMORY[0x277D85DE8];
  type metadata accessor for Statement();
  swift_initStackObject();

  sub_26C066FF0(v7);

  if (!v4)
  {
    Statement.run(_:)(MEMORY[0x277D84F90]);

    a4(v9);
    swift_initStackObject();

    sub_26C066FF0(a1);

    Statement.run(_:)(MEMORY[0x277D84F90]);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C06F148()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 80);
  return sub_26C06EECC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
}

sqlite3 *Statement.run(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_26C06A5F0(a1);
  swift_beginAccess();
  v4 = *(v3 + 16);

  sqlite3_reset(v4);
  sub_26C06CD30();
  while (1)
  {
    while (1)
    {
      v5 = *(v3 + 24);
      if (qword_280B5AF70 != -1)
      {
        swift_once();
      }

      sub_26C0ABAA0();
      v6 = sub_26C06CD98();
      if ((v21 & 1) == 0 && v20 == v6)
      {
        break;
      }

      v14 = *(v5 + 88);
      sub_26C0ABAD0();
      if (v2)
      {

        return v3;
      }

      if ((v22 & 1) == 0)
      {
        return v3;
      }
    }

    v7 = *(v3 + 24);
    v8 = sqlite3_step(*(v3 + 16));
    if (qword_280B5B0A0 != -1)
    {
      swift_once();
    }

    v9 = off_280B5B0A8;
    if (!*(off_280B5B0A8 + 2))
    {
      break;
    }

    v10 = MEMORY[0x26D69ACD0](*(off_280B5B0A8 + 5), v8, 4);
    v11 = -1 << v9[32];
    v12 = v10 & ~v11;
    if (((*&v9[((v12 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v12) & 1) == 0)
    {
      break;
    }

    v13 = ~v11;
    while (*(*(v9 + 6) + 4 * v12) != v8)
    {
      v12 = (v12 + 1) & v13;
      if (((*&v9[((v12 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v12) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    if (v8 != 100)
    {
      return v3;
    }
  }

LABEL_19:
  swift_beginAccess();
  result = *(v7 + 16);
  if (result)
  {
    result = sqlite3_errmsg(result);
    if (result)
    {
      v16 = sub_26C0AB910();
      v18 = v17;
      sub_26C08FE58();
      swift_allocError();
      *v19 = v16;
      *(v19 + 8) = v18;
      *(v19 + 16) = v8;
      *(v19 + 24) = 0;
      swift_willThrow();

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v3 = v1;
  if (*(a1 + 16))
  {
    v4 = Statement.run(_:)(a1);
    if (!v2)
    {
      return v4;
    }

    return v3;
  }

  else
  {
    swift_beginAccess();
    sqlite3_reset(*(v1 + 16));
    sub_26C06CD30();
    v5 = *(v1 + 24);
    while (1)
    {
      while (1)
      {
        if (qword_280B5AF70 != -1)
        {
          swift_once();
        }

        sub_26C0ABAA0();
        v6 = sub_26C06CD98();
        if ((v19 & 1) == 0 && v18 == v6)
        {
          break;
        }

        v13 = *(v5 + 88);
        sub_26C0ABAD0();

        if (v2)
        {
          return v3;
        }

        if ((v20 & 1) == 0)
        {
LABEL_26:

          return v3;
        }
      }

      v7 = sqlite3_step(*(v3 + 16));
      if (qword_280B5B0A0 != -1)
      {
        swift_once();
      }

      v8 = off_280B5B0A8;
      if (!*(off_280B5B0A8 + 2))
      {
        break;
      }

      v9 = MEMORY[0x26D69ACD0](*(off_280B5B0A8 + 5), v7, 4);
      v10 = -1 << v8[32];
      v11 = v9 & ~v10;
      if (((*&v8[((v11 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v11) & 1) == 0)
      {
        break;
      }

      v12 = ~v10;
      while (*(*(v8 + 6) + 4 * v11) != v7)
      {
        v11 = (v11 + 1) & v12;
        if (((*&v8[((v11 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v11) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      if (v7 != 100)
      {
        goto LABEL_26;
      }
    }

LABEL_22:
    swift_beginAccess();
    result = *(v5 + 16);
    if (result)
    {
      result = sqlite3_errmsg(result);
      if (result)
      {
        v3 = sub_26C0AB910();
        v16 = v15;
        sub_26C08FE58();
        swift_allocError();
        *v17 = v3;
        *(v17 + 8) = v16;
        *(v17 + 16) = v7;
        *(v17 + 24) = 0;
        swift_willThrow();
        return v3;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

{
  Statement.bind(_:)(a1);
  v1 = Statement.run(_:)(MEMORY[0x277D84F90]);

  return v1;
}

uint64_t == infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C06DFDC(a1, a2, a3, a4, 61, 0xE100000000000000, a5);
}

{
  return sub_26C0922B4(a1, a2, a3, a4, 61, 0xE100000000000000, 21321, a5, 0xE200000000000000);
}

uint64_t sub_26C06F45C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v19 = &protocol witness table for Expression<A>;
  v17[0] = v9;
  v17[1] = v8;
  v17[2] = v10;
  v16[3] = v18;
  v16[4] = &protocol witness table for Expression<A>;
  v16[0] = v12;
  v16[1] = v11;
  v16[2] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v17, inited + 32);
  sub_26C06B6BC(v16, inited + 72);

  a6(inited, 1, a5, 0xE200000000000000);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v16);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t && infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  return sub_26C093B6C(a1, a2, &qword_280479390, &qword_26C0AD880, sub_26C06E254);
}

{
  return sub_26C093B6C(a1, a2, &qword_280479398, &qword_26C0AC610, sub_26C085EE0);
}

uint64_t <- infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(*(a2 - 8) + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v8[1];
  v12 = v8[2];
  v16[0] = *v8;
  v16[1] = v11;
  v16[2] = v12;
  (*(v13 + 16))(v10);
  sub_26C06F6C4(v16, v10, a2, a3, a4);
}

uint64_t sub_26C06F6C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a1;
  *(a5 + 24) = type metadata accessor for Expression();
  *(a5 + 32) = &protocol witness table for Expression<A>;
  *a5 = v10;
  *(a5 + 8) = *(a1 + 1);
  v11 = *(a4 + 8);
  *(a5 + 64) = a3;
  *(a5 + 72) = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a5 + 40));
  v13 = *(*(a3 - 8) + 32);

  return v13(boxed_opaque_existential_1, a2, a3);
}

uint64_t <- infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_26C0ABAF0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v18[-1] - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v18[0] = v12;
  v18[1] = v13;
  v18[2] = v14;
  (*(v15 + 16))(v11, a2);

  return sub_26C06F890(v18, v11, a3, a4);
}

uint64_t sub_26C06F890@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_26C0ABAF0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = *a1;
  v14 = type metadata accessor for Expression();
  *(a4 + 24) = v14;
  *(a4 + 32) = &protocol witness table for Expression<A>;
  *a4 = v13;
  *(a4 + 8) = *(a1 + 1);
  (*(v9 + 16))(v12, a2, v8);
  *(a4 + 64) = v14;
  *(a4 + 72) = &protocol witness table for Expression<A>;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  ExpressionType<>.init(value:)(v12, v14, WitnessTable, a3, a4 + 40);
  return (*(v9 + 8))(a2, v8);
}

uint64_t ExpressionType<>.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v30 = a5;
  v31 = a2;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_26C0ABAF0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = swift_getAssociatedTypeWitness();
  v28 = *(v14 - 8);
  v29 = v14;
  v15 = *(v28 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_26C0AC5C0;
  v19 = a1;
  (*(v10 + 16))(v13, a1, v9);
  v20 = *(AssociatedTypeWitness - 8);
  if ((*(v20 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v13, v9);
    *(v18 + 64) = 0;
    *(v18 + 32) = 0u;
    *(v18 + 48) = 0u;
  }

  else
  {
    v21 = *(a4 + 56);
    v26 = v17;
    v27 = v10;
    v21(AssociatedTypeWitness, a4);
    v10 = v27;
    (*(v20 + 8))(v13, AssociatedTypeWitness);
    v22 = v29;
    *(v18 + 56) = v29;
    *(v18 + 64) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v18 + 32));
    (*(v28 + 32))(boxed_opaque_existential_1, v26, v22);
  }

  (*(a3 + 40))(63, 0xE100000000000000, v18, v31, a3);
  return (*(v10 + 8))(v19, v9);
}

uint64_t QueryType.insert(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479400, &qword_26C0AC850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC5C0;
  sub_26C06FE38(a1, inited + 32);
  v11 = inited;

  sub_26C06FE94(v9);
  LOBYTE(v11) = 5;
  sub_26C0700AC(&v11, inited, a2, a3, a4);
}

uint64_t sub_26C06FE94(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_26C06FF8C(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_26C06FF8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479400, &qword_26C0AC850);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26C0700AC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v46 = a4;
  v45 = a3;
  v47 = a5;
  v44 = *a1;
  v5 = *(a2 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = a2 + 32;
    v8 = MEMORY[0x277D84F90];
    v48 = xmmword_26C0AC5C0;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_26C06FE38(v7, &v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
      inited = swift_initStackObject();
      *(inited + 16) = v48;
      sub_26C06B6BC(&v68, inited + 32);
      v11 = v8[2];

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v13 = v8[3] >> 1, v14 = v8, v13 <= v11))
      {
        result = sub_26C06A384(result, v11 + 1, 1, v8);
        v14 = result;
        v13 = result[3] >> 1;
      }

      if (v13 <= *(v14 + 16))
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
      swift_arrayInitWithCopy();

      ++*(v14 + 16);
      v15 = swift_initStackObject();
      *(v15 + 16) = v48;
      sub_26C06B6BC(&v71, v15 + 32);
      v16 = v9[2];

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v17 = v9[3] >> 1, v6 = v9, v17 <= v16))
      {
        result = sub_26C06A384(result, v16 + 1, 1, v9);
        v6 = result;
        v17 = result[3] >> 1;
      }

      if (v17 <= *(v6 + 16))
      {
        goto LABEL_41;
      }

      swift_arrayInitWithCopy();

      ++*(v6 + 16);

      sub_26C0717EC(&v68);
      v7 += 80;
      v8 = v14;
      v9 = v6;
      if (!--v5)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_14:
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    v55[8] = v18;
    v55[9] = &protocol witness table for Expression<A>;
    v55[5] = 0x545245534E49;
    v55[6] = 0xE600000000000000;
    v19 = MEMORY[0x277D84F90];
    v55[7] = MEMORY[0x277D84F90];
    if (v44 == 5)
    {
      v58 = 0;
      v57 = 0u;
      v56 = 0u;
    }

    else
    {
      v20 = 0xE600000000000000;
      v21 = 0x45524F4E4749;
      *&v68 = 2118223;
      *(&v68 + 1) = 0xE300000000000000;
      v22 = 0xE500000000000000;
      v23 = 0x54524F4241;
      if (v44 == 3)
      {
        v21 = 1279869254;
        v20 = 0xE400000000000000;
      }

      if (v44 != 2)
      {
        v23 = v21;
        v22 = v20;
      }

      v24 = 0xE700000000000000;
      v25 = 0x4543414C504552;
      if (v44)
      {
        v25 = 0x4B4341424C4C4F52;
        v24 = 0xE800000000000000;
      }

      if (v44 <= 1)
      {
        v26 = v25;
      }

      else
      {
        v26 = v23;
      }

      if (v44 <= 1)
      {
        v27 = v24;
      }

      else
      {
        v27 = v22;
      }

      MEMORY[0x26D69A890](v26, v27);

      *(&v57 + 1) = v18;
      v58 = &protocol witness table for Expression<A>;
      v56 = v68;
      v19 = MEMORY[0x277D84F90];
      *&v57 = MEMORY[0x277D84F90];
    }

    v62 = v18;
    v63 = &protocol witness table for Expression<A>;
    v59 = 1330925129;
    v60 = 0xE400000000000000;
    v61 = v19;
    sub_26C070730(0, v45, v46, v64);
    v65[3] = v18;
    v65[4] = &protocol witness table for Expression<A>;
    sub_26C0688D8(v14, &v68);
    sub_26C06E24C(v65, &v68, 0, 0xE000000000000000);
    __swift_destroy_boxed_opaque_existential_1(&v68);
    v65[5] = 0x5345554C4156;
    v65[6] = 0xE600000000000000;
    v65[7] = v19;
    v65[8] = v18;
    v65[9] = &protocol witness table for Expression<A>;
    v66[3] = v18;
    v66[4] = &protocol witness table for Expression<A>;
    sub_26C0688D8(v6, &v68);
    sub_26C06E24C(v66, &v68, 0, 0xE000000000000000);

    __swift_destroy_boxed_opaque_existential_1(&v68);
    sub_26C071840(v46, &v67);
    for (i = 4; i != 44; i += 5)
    {
      sub_26C067878(&v55[i + 1], &v68, &qword_280479360, &qword_26C0AC5D8);
      v49[0] = v68;
      v49[1] = v69;
      v50 = v70;
      if (*(&v69 + 1))
      {
        sub_26C06A3A8(v49, &v51);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55[0] = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = sub_26C06A384(0, v19[2] + 1, 1, v19);
          v55[0] = v19;
        }

        v31 = v19[2];
        v30 = v19[3];
        if (v31 >= v30 >> 1)
        {
          v32 = sub_26C06A384((v30 > 1), v31 + 1, 1, v19);
          v55[0] = v32;
        }

        else
        {
          v32 = v19;
        }

        v33 = v53;
        v34 = v54;
        v35 = __swift_mutable_project_boxed_opaque_existential_1(&v51, v53);
        v36 = *(*(v33 - 8) + 64);
        MEMORY[0x28223BE20](v35);
        v38 = &v43 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v39 + 16))(v38);
        sub_26C06A410(v31, v38, v55, v33, v34);
        __swift_destroy_boxed_opaque_existential_1(&v51);
        v19 = v32;
      }

      else
      {
        sub_26C06A56C(v49, &qword_280479360, &qword_26C0AC5D8);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
    swift_arrayDestroy();
    sub_26C0688D8(v19, &v68);

    v40 = *(&v69 + 1);
    v41 = v70;
    __swift_project_boxed_opaque_existential_1(&v68, *(&v69 + 1));
    (*(v41 + 8))(&v51, v40, v41);
    v42 = v47;
    *v47 = v51;
    *(v42 + 1) = v52;
    return __swift_destroy_boxed_opaque_existential_1(&v68);
  }

  return result;
}

uint64_t sub_26C070730@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a3 + 16);
  v8(v20, a2, a3);
  v9 = v20[5];

  sub_26C06B68C(v20);
  if (v9)
  {
    if (a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_26C0AC540;
      v8(v19, a2, a3);

      sub_26C06B68C(v19);
      sub_26C070B4C(a2, a3, (v10 + 32));

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
      *(v10 + 104) = &protocol witness table for Expression<A>;
      *(v10 + 72) = 21313;
      *(v10 + 80) = 0xE200000000000000;
      v12 = MEMORY[0x277D84F90];
      *(v10 + 88) = MEMORY[0x277D84F90];
      *(v10 + 96) = v11;
      *(v10 + 136) = v11;
      *(v10 + 144) = &protocol witness table for Expression<A>;
      v13 = sub_26C067104(34, 0xE100000000000000);
      v15 = v14;

      *(v10 + 112) = v13;
      *(v10 + 120) = v15;
      *(v10 + 128) = v12;
      sub_26C0688D8(v10, a4);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
      swift_arrayDestroy();
      return swift_deallocClassInstance();
    }
  }

  v8(v19, a2, a3);
  v17 = v19[5];

  sub_26C06B68C(v19);
  if (!v17)
  {
    v8(v18, a2, a3);

    sub_26C06B68C(v18);
  }

  sub_26C070B4C(a2, a3, a4);
}

double sub_26C07097C@<D0>(char a1@<W0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
  v4 = swift_allocObject();
  *&result = 1;
  v6 = MEMORY[0x277D84A28];
  *(v4 + 16) = xmmword_26C0AC5C0;
  *(v4 + 56) = v6;
  *(v4 + 64) = &protocol witness table for Int64;
  *(v4 + 32) = a1 & 1;
  *a2 = 63;
  a2[1] = 0xE100000000000000;
  a2[2] = v4;
  return result;
}

uint64_t sub_26C070A00@<X0>(void *a1@<X8>)
{
  v3 = sub_26C0AB740();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26C0AC5C0;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = &protocol witness table for String;
  *(v8 + 32) = _s10Foundation4UUIDV11SwiftSQLiteE13datatypeValueSSvg_0();
  *(v8 + 40) = v9;
  result = (*(v4 + 8))(v7, v3);
  *a1 = 63;
  a1[1] = 0xE100000000000000;
  a1[2] = v8;
  return result;
}

uint64_t sub_26C070B4C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = sub_26C067104(34, 0xE100000000000000);
  v8 = v7;
  (*(a2 + 16))(v17, a1, a2);
  v9 = v17[7];

  sub_26C06B68C(v17);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC580;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    *(inited + 56) = v11;
    *(inited + 64) = &protocol witness table for Expression<A>;
    v12 = sub_26C067104(34, 0xE100000000000000);
    v14 = v13;

    *(inited + 32) = v12;
    v15 = MEMORY[0x277D84F90];
    *(inited + 40) = v14;
    *(inited + 48) = v15;
    *(inited + 96) = v11;
    *(inited + 104) = &protocol witness table for Expression<A>;
    *(inited + 72) = v6;
    *(inited + 80) = v8;
    *(inited + 88) = v15;
    sub_26C0688D8(inited, a3);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    return swift_arrayDestroy();
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    a3[4] = &protocol witness table for Expression<A>;
    *a3 = v6;
    a3[1] = v8;
    a3[2] = MEMORY[0x277D84F90];
    a3[3] = result;
  }

  return result;
}

uint64_t sub_26C070CF8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26C0AC5C0;
  *(v6 + 56) = &type metadata for Blob;
  *(v6 + 64) = &protocol witness table for Blob;
  sub_26C071078(a1, a2);
  result = sub_26C070EEC(a1, a2, a1, a2, (v6 + 32));
  *a3 = 63;
  a3[1] = 0xE100000000000000;
  a3[2] = v6;
  return result;
}

void *sub_26C070DB4@<X0>(void *result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, void *a4@<X8>)
{
  if (result)
  {
    v4 = result;
    v6 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v6 != 2)
      {
        goto LABEL_12;
      }

      v9 = *(a2 + 16);
      v8 = *(a2 + 24);
      v7 = v8 - v9;
      if (!__OFSUB__(v8, v9))
      {
        if (v7)
        {
          goto LABEL_9;
        }

LABEL_12:
        v10 = MEMORY[0x277D84F90];
        goto LABEL_13;
      }

      __break(1u);
    }

    else
    {
      if (!v6)
      {
        v7 = BYTE6(a3);
        if (!BYTE6(a3))
        {
          goto LABEL_12;
        }

LABEL_9:
        v10 = sub_26C070E78(v7, 0);
        result = memcpy(v10 + 4, v4, v7);
LABEL_13:
        *a4 = v10;
        return result;
      }

      v11 = HIDWORD(a2) - a2;
      if (!__OFSUB__(HIDWORD(a2), a2))
      {
        v7 = v11;
        if (v11)
        {
          goto LABEL_9;
        }

        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26C070E78(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479460, "~#");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_26C070EEC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v13, 0, 14);
      goto LABEL_9;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
  }

  else
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
LABEL_9:
      sub_26C070DB4(v13, a3, a4, a5);
      goto LABEL_10;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  sub_26C071078(a3, a4);
  sub_26C071314(v8, v9, a3, a4, a5);
LABEL_10:
  result = sub_26C0710CC(a3, a4);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C071078(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26C0710CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26C071124@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_26C0AB710();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D837D0];
  *(v9 + 16) = xmmword_26C0AC5C0;
  *(v9 + 56) = v10;
  *(v9 + 64) = &protocol witness table for String;
  if (qword_280B5A8E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = qword_280B5A8F0;
  v12 = sub_26C0AB6F0();
  v13 = [v11 stringFromDate_];

  v14 = sub_26C0AB840();
  v16 = v15;

  *(v9 + 32) = v14;
  *(v9 + 40) = v16;
  result = (*(v5 + 8))(v8, v4);
  *a1 = 63;
  a1[1] = 0xE100000000000000;
  a1[2] = v9;
  return result;
}

uint64_t sub_26C071314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, unint64_t a4@<X4>, void *a5@<X8>)
{
  result = sub_26C0AB6A0();
  v11 = result;
  if (result)
  {
    result = sub_26C0AB6C0();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_7;
    }

    v11 += a1 - result;
  }

  if (!__OFSUB__(a2, a1))
  {
    sub_26C0AB6B0();
    sub_26C070DB4(v11, a3, a4, a5);
    return sub_26C0710CC(a3, a4);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_26C0713D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26C0AC5C0;
  sub_26C06B6BC(a1, v9 + 32);

  sub_26C0714B8(v10);
  sub_26C0714E8(a5, v9, a3, a3, *(a4 + 8), *(a4 + 8));
}

uint64_t sub_26C0714E8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a5 + 16);
  v10(v23, a3, a5);
  v11 = v23[3];
  v19 = v23[2];

  sub_26C06B68C(v23);
  v10(v24, a3, a5);
  v13 = v24[6];
  v12 = v24[7];

  sub_26C06B68C(v24);
  (*(a6 + 40))(v19, v11, v13, v12, a4, a6);
  v10(v22, a3, a5);
  (*(a6 + 24))(v22, a4, a6);
  v14 = *(a6 + 32);

  v15 = v14(v22, a4, a6);
  *v16 = a1;
  v17 = *(v16 + 8);
  *(v16 + 8) = a2;

  return v15(v22, 0);
}

__n128 sub_26C071680(uint64_t a1)
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

BOOL sub_26C071740(unsigned int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = MEMORY[0x26D69ACD0](*(a2 + 40), a1, 4);
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 4 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

double sub_26C071840@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v10);
  v3 = v11;
  v4 = v12;
  v5 = v13;
  sub_26C06E874(v11, v12);
  sub_26C06B68C(v10);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC580;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    *(inited + 32) = 0x4552454857;
    *(inited + 56) = v7;
    *(inited + 64) = &protocol witness table for Expression<A>;
    v8 = MEMORY[0x277D84F90];
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v8;
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
    *(inited + 104) = &protocol witness table for Expression<A>;
    *(inited + 72) = v3;
    *(inited + 80) = v4;
    *(inited + 88) = v5;
    sub_26C0688D8(inited, a2);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

Swift::Int64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Connection.run(_:)(SwiftSQLite::Insert a1)
{
  v3 = v2;
  v17 = *MEMORY[0x277D85DE8];
  v4 = *a1.template._countAndFlagsBits;
  v5 = *(a1.template._countAndFlagsBits + 16);
  v14 = *(a1.template._countAndFlagsBits + 8);
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
    insert_rowid = sqlite3_last_insert_rowid(result);

    result = insert_rowid;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_26C071BDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t QueryType.limit(_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, v5);
  if (a2)
  {
    a1 = 0;
  }

  v10 = (*(a4 + 32))(v13, a3, a4);
  *(v11 + 136) = a1;
  *(v11 + 144) = 0;
  *(v11 + 152) = (a2 & 1) == 0;
  *(v11 + 153) = a2 & 1;
  return v10(v13, 0);
}

uint64_t QueryType.namespace<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = type metadata accessor for Expression();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C070730(0, a2, a4, (inited + 32));
  *(inited + 96) = v9;
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = v7;
  *(inited + 80) = v6;
  *(inited + 88) = v8;

  sub_26C0688D8(inited, v21);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  v11 = v22;
  v12 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(v12 + 8))(&v19, v11, v12);
  v17 = v19;
  v18 = v20;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  WitnessTable = swift_getWitnessTable();
  v15 = sub_26C068F2C(&qword_280B5AF28, &qword_280479358, &qword_26C0AC5D0);
  ExpressionType.init<A>(_:)(&v17, v9, v13, WitnessTable, v15);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

double sub_26C071F30@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_26C0AC5C0;
  *(v4 + 56) = MEMORY[0x277D84A28];
  *(v4 + 64) = &protocol witness table for Int64;
  *(v4 + 32) = a1;
  *a2 = 63;
  a2[1] = 0xE100000000000000;
  a2[2] = v4;
  return result;
}

uint64_t QueryType.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  return QueryType.namespace<A>(_:)(&v5, a2, a3, a4);
}

{
  v8 = *a1;
  v9 = *(a1 + 8);
  v6 = sub_26C0ABAF0();
  return QueryType.namespace<A>(_:)(&v8, a2, v6, a4);
}

uint64_t sub_26C071FFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v18 = type metadata accessor for Expression();
  v19 = &protocol witness table for Expression<A>;
  v17[0] = v9;
  v17[1] = v8;
  v17[2] = v10;
  v16[3] = v18;
  v16[4] = &protocol witness table for Expression<A>;
  v16[0] = v12;
  v16[1] = v11;
  v16[2] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v17, inited + 32);
  sub_26C06B6BC(v16, inited + 72);

  sub_26C06E254(inited, 1, a3, a4, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v16);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t == infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_26C071FFC(a1, a2, 61, 0xE100000000000000, a3);
}

{
  return sub_26C092CF0(a1, a2, 61, 0xE100000000000000, a3);
}

{
  return sub_26C092E5C(a1, a2, 61, 0xE100000000000000, a3);
}

{
  return sub_26C092FC8(a1, a2, 61, 0xE100000000000000, a3);
}

uint64_t QueryType.join(_:_:on:)@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v15 = *a1;
  v14[0] = v10;
  v14[1] = v11;
  v14[2] = v12;

  QueryType.join(_:_:on:)(&v15, a2, v14, a4, a5, a6);
}

{
  v31 = *a1;
  v11 = *a3;
  v10 = a3[1];
  v12 = a3[2];
  (*(*(a4 - 8) + 16))(a6, v6, a4);
  sub_26C06B6BC(a2, v42);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 16))(v43, v13, v14);
  v15 = v44;
  v16 = v45;
  v17 = v46;
  sub_26C06E874(v44, v45);
  sub_26C06B68C(v43);
  if (!v16)
  {
    goto LABEL_4;
  }

  *&v38 = v11;
  *(&v38 + 1) = v10;
  v39 = v12;
  v32[0] = v15;
  v32[1] = v16;
  v32[2] = v17;
  *(&v34 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  *&v35 = &protocol witness table for Expression<A>;
  && infix(_:_:)(&v38, v32);
  sub_26C06E9FC(v15, v16);
  if (*(&v34 + 1))
  {
    sub_26C06A3A8(&v33, &v38);
  }

  else
  {
LABEL_4:
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
    v41 = &protocol witness table for Expression<A>;
    *&v38 = v11;
    *(&v38 + 1) = v10;
    v39 = v12;
  }

  LOBYTE(v33) = v31;
  sub_26C06A3A8(v42, &v33 + 8);
  sub_26C06A3A8(&v38, v36);
  v18 = (*(a5 + 32))(v32, a4, a5);
  v20 = v19;
  v21 = *(v19 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 64) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_26C072494(0, v21[2] + 1, 1, v21);
    *(v20 + 64) = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_26C072494((v23 > 1), v24 + 1, 1, v21);
    *(v20 + 64) = v21;
  }

  v21[2] = v24 + 1;
  v25 = &v21[11 * v24];
  v26 = v34;
  *(v25 + 2) = v33;
  *(v25 + 3) = v26;
  v27 = v35;
  v28 = v36[0];
  v29 = v36[1];
  v25[14] = v37;
  *(v25 + 5) = v28;
  *(v25 + 6) = v29;
  *(v25 + 4) = v27;
  return v18(v32, 0);
}

void *sub_26C072494(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793D8, &qword_26C0AC828);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793E0, &qword_26C0AC830);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26C0725E4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_26C07272C(void *a1, int64_t a2, char a3)
{
  result = sub_26C0725E4(a1, a2, a3, *v3, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
  *v3 = result;
  return result;
}

uint64_t sub_26C072778(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_26C06A3A8(&v12, v10 + 40 * a1 + 32);
}

void *sub_26C072834(void *a1, int64_t a2, char a3)
{
  result = sub_26C0725E4(a1, a2, a3, *v3, &qword_2804793E8, &qword_26C0AC838, &qword_2804793F0, &qword_26C0AC840);
  *v3 = result;
  return result;
}

uint64_t sub_26C072874(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v19 = MEMORY[0x277D84F90];
  sub_26C06B938(0, v5, 0);
  v6 = v19;
  for (i = (a3 + 40); ; i += 2)
  {
    v9 = *i;
    v17[0] = *(i - 1);
    v17[1] = v9;

    a1(v18, v17);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v18[0];
    v10 = v18[1];
    v19 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_26C06B938((v12 > 1), v13 + 1, 1);
      v6 = v19;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 16 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26C07299C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  sub_26C070730(0, v6, v7, v15);
  v8 = v16;
  v9 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v9 + 8))(v14, v8, v9);
  v10 = v14[0];
  v11 = v14[1];

  v18 = v10;
  v19 = v11;
  __swift_destroy_boxed_opaque_existential_1(v15);
  MEMORY[0x26D69A890](46, 0xE100000000000000);
  result = MEMORY[0x26D69A890](v4, v5);
  v13 = v19;
  *a3 = v18;
  a3[1] = v13;
  return result;
}

uint64_t sub_26C072AB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479440, &qword_26C0AC8D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = *a1;
  v11 = a1[1];
  sub_26C0AB720();
  v12 = *(a2 - 8);
  result = (*(v12 + 48))(v9, 1, a2);
  if (result != 1)
  {
    return (*(v12 + 32))(a3, v9, a2);
  }

  __break(1u);
  return result;
}

void *sub_26C072BB4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C8, &qword_26C0AC818);
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

void *sub_26C072C38(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26C072D98(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  MEMORY[0x26D69A890](a2, a3);
  LOBYTE(v3) = sub_26C0AB940();

  return v3 & 1;
}

unint64_t sub_26C072E10()
{
  result = qword_280B5A978;
  if (!qword_280B5A978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B5A978);
  }

  return result;
}

void sub_26C072E70(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (qword_280B5A8E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_280B5A8F0;
  v4 = sub_26C0AB830();
  v5 = [v3 dateFromString_];

  if (v5)
  {
    sub_26C0AB700();
  }

  else
  {
    __break(1u);
  }
}

double sub_26C072F4C@<D0>(void *a1@<X8>, double a2@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_26C0AC5C0;
  *(v4 + 56) = MEMORY[0x277D839F8];
  *(v4 + 64) = &protocol witness table for Double;
  *(v4 + 32) = a2;
  *a1 = 63;
  a1[1] = 0xE100000000000000;
  a1[2] = v4;
  return result;
}

uint64_t sub_26C073028()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26C073060()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26C073098()
{
  v1 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_26C0730D0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26C073178@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = Statement.columnCount.getter();
  *a2 = result;
  return result;
}

void *sub_26C0731A4(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 32) = *result;
  *(v2 + 40) = 0;
  return result;
}

int64_t sub_26C0731B8@<X0>(uint64_t *a1@<X0>, int64_t *a2@<X8>)
{
  v3 = *a1;
  result = Statement.columnNames.getter();
  *a2 = result;
  return result;
}

uint64_t sub_26C0731E4(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 48);
  *(*a2 + 48) = *a1;
}

uint64_t sub_26C073228@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = Statement.row.getter(v6);
  v5 = v6[1];
  *a2 = v6[0];
  a2[1] = v5;
  return result;
}

void *sub_26C073264(void *result, uint64_t *a2)
{
  v2 = result[1];
  v3 = *a2;
  *(v3 + 56) = *result;
  *(v3 + 64) = v2;
  return result;
}

uint64_t sub_26C073274()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26C0732BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26C0732F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26C073304(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

double sub_26C073314@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 24);
  *a2 = result;
  return result;
}

uint64_t sub_26C073404()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_26C07343C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_26C07345C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

Swift::String __swiftcall SchemaType.drop(ifExists:)(Swift::Bool ifExists)
{
  sub_26C070730(0, v1, *(v2 + 8), v10);
  v4 = sub_26C073520(0x454C424154, 0xE500000000000000, v10, ifExists);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(v10);
  v7 = v4;
  v8 = v6;
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

uint64_t sub_26C073520(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *&v30 = 0x20504F5244;
  *(&v30 + 1) = 0xE500000000000000;
  MEMORY[0x26D69A890]();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v38 = &protocol witness table for Expression<A>;
  v34 = 0x20504F5244;
  v35 = 0xE500000000000000;
  v36 = MEMORY[0x277D84F90];
  v37 = v6;
  if (a4)
  {
    v7 = xmmword_26C0AC550;
    v8 = MEMORY[0x277D84F90];
    v9 = &protocol witness table for Expression<A>;
  }

  else
  {
    v6 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0uLL;
  }

  v41 = v6;
  v42 = v9;
  v39 = v7;
  v40 = v8;
  sub_26C06B6BC(a3, &v43);
  v10 = MEMORY[0x277D84F90];
  for (i = 32; i != 152; i += 40)
  {
    sub_26C067878(&v33[i], &v30, &qword_280479360, &qword_26C0AC5D8);
    v24[0] = v30;
    v24[1] = v31;
    v25 = v32;
    if (*(&v31 + 1))
    {
      sub_26C06A3A8(v24, v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_26C06A23C(0, v10[2] + 1, 1, v10, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v29 = v10;
      }

      v14 = v10[2];
      v13 = v10[3];
      if (v14 >= v13 >> 1)
      {
        v10 = sub_26C06A23C((v13 > 1), v14 + 1, 1, v10, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v29 = v10;
      }

      v16 = v27;
      v15 = v28;
      v17 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
      v18 = *(*(v16 - 8) + 64);
      MEMORY[0x28223BE20](v17);
      v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v20);
      sub_26C06A410(v14, v20, &v29, v16, v15);
      __swift_destroy_boxed_opaque_existential_1(v26);
    }

    else
    {
      sub_26C06A56C(v24, &qword_280479360, &qword_26C0AC5D8);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  sub_26C0688D8(v10, &v30);

  __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
  countAndFlagsBits = Expressible.asSQL()()._countAndFlagsBits;
  __swift_destroy_boxed_opaque_existential_1(&v30);
  return countAndFlagsBits;
}

uint64_t Table.create(temporary:ifNotExists:withoutRowid:block:)(char a1, char a2, char a3, void (*a4)(void))
{
  v9 = v4[9];
  v62 = v4[8];
  v63 = v9;
  v64 = *(v4 + 20);
  v10 = v4[5];
  v58 = v4[4];
  v59 = v10;
  v11 = v4[7];
  v60 = v4[6];
  v61 = v11;
  v12 = v4[1];
  v54 = *v4;
  v55 = v12;
  v13 = v4[3];
  v56 = v4[2];
  v57 = v13;
  type metadata accessor for TableBuilder();
  v14 = swift_allocObject();
  *(v14 + 16) = MEMORY[0x277D84F90];
  v15 = (v14 + 16);
  v37[1] = v14;
  a4();
  if (!*(&v56 + 1))
  {
  }

  sub_26C069100(&v44);

  if (a1)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  sub_26C073CCC(0x454C424154, 0xE500000000000000, &v44, v16, a2 & 1, v48);
  __swift_destroy_boxed_opaque_existential_1(&v44);
  swift_beginAccess();
  v17 = *v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v49[3] = v18;
  v49[4] = &protocol witness table for Expression<A>;

  sub_26C0688D8(v19, &v44);

  sub_26C06E148(&v44, 0, 0xE000000000000000, v49);
  __swift_destroy_boxed_opaque_existential_1(&v44);
  if (a3)
  {
    v20 = xmmword_26C0AC560;
    v21 = MEMORY[0x277D84F90];
    v22 = &protocol witness table for Expression<A>;
  }

  else
  {
    v18 = 0;
    v22 = 0;
    v21 = 0;
    v20 = 0uLL;
  }

  v52 = v18;
  v53 = v22;
  v50 = v20;
  v23 = 32;
  v51 = v21;
  v24 = MEMORY[0x277D84F90];
  do
  {
    sub_26C067878(&v47[v23], &v44, &qword_280479360, &qword_26C0AC5D8);
    v38[0] = v44;
    v38[1] = v45;
    v39 = v46;
    if (*(&v45 + 1))
    {
      sub_26C06A3A8(v38, v40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43[0] = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_26C06A23C(0, v24[2] + 1, 1, v24, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v43[0] = v24;
      }

      v27 = v24[2];
      v26 = v24[3];
      if (v27 >= v26 >> 1)
      {
        v24 = sub_26C06A23C((v26 > 1), v27 + 1, 1, v24, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v43[0] = v24;
      }

      v28 = v41;
      v29 = v42;
      v30 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
      v31 = *(*(v28 - 8) + 64);
      MEMORY[0x28223BE20](v30);
      v33 = v37 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v34 + 16))(v33);
      sub_26C06A410(v27, v33, v43, v28, v29);
      __swift_destroy_boxed_opaque_existential_1(v40);
    }

    else
    {
      sub_26C06A56C(v38, &qword_280479360, &qword_26C0AC5D8);
    }

    v23 += 40;
  }

  while (v23 != 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  sub_26C0688D8(v24, &v44);

  __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
  countAndFlagsBits = Expressible.asSQL()()._countAndFlagsBits;

  __swift_destroy_boxed_opaque_existential_1(&v44);
  return countAndFlagsBits;
}

uint64_t sub_26C073CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v35 = a6;
  v11 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v44[9] = &protocol witness table for Expression<A>;
  v44[5] = 0x455441455243;
  v44[6] = 0xE600000000000000;
  v44[7] = MEMORY[0x277D84F90];
  v44[8] = v12;
  if (v11 == 2)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v13 = 0x455551494E55;
    if (a4)
    {
      v13 = 0x5241524F504D4554;
    }

    v14 = 0xE900000000000059;
    if ((a4 & 1) == 0)
    {
      v14 = 0xE600000000000000;
    }

    v17 = &protocol witness table for Expression<A>;
    v15 = MEMORY[0x277D84F90];
    v16 = v12;
  }

  v44[10] = v13;
  v44[11] = v14;
  v44[12] = v15;
  v44[13] = v16;
  v44[18] = v12;
  v44[19] = &protocol witness table for Expression<A>;
  v44[14] = v17;
  v44[15] = a1;
  v44[16] = a2;
  v44[17] = MEMORY[0x277D84F90];
  if (a5)
  {
    v18 = xmmword_26C0AC570;
    v19 = MEMORY[0x277D84F90];
    v20 = &protocol witness table for Expression<A>;
  }

  else
  {
    v12 = 0;
    v20 = 0;
    v19 = 0;
    v18 = 0uLL;
  }

  v47 = v12;
  v48 = v20;
  v45 = v18;
  v46 = v19;
  sub_26C06B6BC(a3, &v49);

  v21 = MEMORY[0x277D84F90];
  for (i = 4; i != 29; i += 5)
  {
    sub_26C067878(&v44[i + 1], &v41, &qword_280479360, &qword_26C0AC5D8);
    v36[0] = v41;
    v36[1] = v42;
    v37 = v43;
    if (*(&v42 + 1))
    {
      sub_26C06A3A8(v36, v38);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44[0] = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_26C06A23C(0, v21[2] + 1, 1, v21, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v44[0] = v21;
      }

      v25 = v21[2];
      v24 = v21[3];
      if (v25 >= v24 >> 1)
      {
        v21 = sub_26C06A23C((v24 > 1), v25 + 1, 1, v21, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v44[0] = v21;
      }

      v26 = v39;
      v27 = v40;
      v28 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
      v29 = *(*(v26 - 8) + 64);
      MEMORY[0x28223BE20](v28);
      v31 = &v34 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v32 + 16))(v31);
      sub_26C06A410(v25, v31, v44, v26, v27);
      __swift_destroy_boxed_opaque_existential_1(v38);
    }

    else
    {
      sub_26C06A56C(v36, &qword_280479360, &qword_26C0AC5D8);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  sub_26C0688D8(v21, v35);
}

uint64_t Table.addColumn<A>(_:check:defaultValue:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a2[1];
  v46 = *a2;
  v47 = a3;
  v12 = a2[2];
  v13 = v5[9];
  v73 = v5[8];
  v74 = v13;
  v75 = *(v5 + 20);
  v14 = v5[5];
  v69 = v5[4];
  v70 = v14;
  v15 = v5[7];
  v71 = v5[6];
  v72 = v15;
  v16 = v5[1];
  v65 = *v5;
  v66 = v16;
  v17 = v5[3];
  v67 = v5[2];
  v68 = v17;
  v64[3] = type metadata accessor for Expression();
  v64[4] = &protocol witness table for Expression<A>;
  v64[0] = v8;
  v64[1] = v9;
  v64[2] = v10;
  v18 = *(a5 + 40);

  v19 = v18(a4, a5);
  v21 = v20;
  v48 = v11;
  v49 = v12;
  if (v11)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
    v23 = &protocol witness table for Expression<A>;
    v24 = v46;
    v25 = v46;
  }

  else
  {
    v25 = 0;
    v12 = 0;
    v22 = 0;
    v23 = 0;
    v24 = v46;
  }

  v63[0] = v25;
  v63[1] = v11;
  v63[2] = v12;
  v63[3] = v22;
  v63[4] = v23;
  v26 = *(a5 + 8);
  v62[3] = a4;
  v62[4] = v26;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, v47, a4);
  memset(v61, 0, 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
  v28 = swift_allocObject();
  sub_26C06B6BC(v64, v28 + 32);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(v28 + 104) = &protocol witness table for Expression<A>;
  *(v28 + 72) = v19;
  *(v28 + 80) = v21;
  v30 = MEMORY[0x277D84F90];
  *(v28 + 88) = MEMORY[0x277D84F90];
  *(v28 + 96) = v29;
  *(v28 + 112) = 0u;
  *(v28 + 128) = 0u;
  *(v28 + 176) = v29;
  *(v28 + 184) = &protocol witness table for Expression<A>;
  *(v28 + 144) = 0;
  *(v28 + 152) = 0x4C4C554E20544F4ELL;
  *(v28 + 160) = 0xE800000000000000;
  *(v28 + 168) = v30;
  *(v28 + 192) = 0u;
  *(v28 + 208) = 0u;
  *(v28 + 224) = 0;
  sub_26C067878(v63, &v56, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v57 + 1))
  {
    sub_26C06A3A8(&v56, &v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_26C0AC580;
    *(v31 + 56) = v29;
    *(v31 + 64) = &protocol witness table for Expression<A>;
    *(v31 + 32) = 0x4B43454843;
    *(v31 + 40) = 0xE500000000000000;
    *(v31 + 48) = v30;
    sub_26C06B6BC(&v50, v31 + 72);
    sub_26C06E874(v24, v48);

    sub_26C0688D8(v31, (v28 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v50);
  }

  else
  {
    *(v28 + 264) = 0;
    *(v28 + 248) = 0u;
    *(v28 + 232) = 0u;
    sub_26C06E874(v24, v48);
  }

  sub_26C067878(v62, &v56, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v57 + 1))
  {
    sub_26C06A3A8(&v56, &v50);
    *(v28 + 296) = v29;
    *(v28 + 304) = &protocol witness table for Expression<A>;
    sub_26C06E148(&v50, 0x20544C5541464544, 0xE800000000000000, (v28 + 272));
    __swift_destroy_boxed_opaque_existential_1(&v50);
  }

  else
  {
    *(v28 + 304) = 0;
    *(v28 + 272) = 0u;
    *(v28 + 288) = 0u;
  }

  sub_26C067878(v61, &v56, &qword_280479370, &qword_26C0AC5E8);
  if (*(&v57 + 1))
  {
    v52[0] = v58;
    v52[1] = v59;
    v52[2] = v60;
    v50 = v56;
    v51 = v57;
    sub_26C080BEC(&v50, v52 + 8, (v28 + 312));

    sub_26C06A56C(&v50, &qword_280479378, &qword_26C0AC5F0);
  }

  else
  {

    *(v28 + 344) = 0;
    *(v28 + 312) = 0u;
    *(v28 + 328) = 0u;
  }

  v32 = MEMORY[0x277D84F90];
  *(v28 + 384) = 0;
  v33 = 32;
  *(v28 + 352) = 0u;
  *(v28 + 368) = 0u;
  do
  {
    sub_26C067878(v28 + v33, &v56, &qword_280479360, &qword_26C0AC5D8);
    v53[0] = v56;
    v53[1] = v57;
    v54 = v58;
    if (*(&v57 + 1))
    {
      sub_26C06A3A8(v53, &v50);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = sub_26C06A23C(0, v32[2] + 1, 1, v32, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v55 = v32;
      }

      v36 = v32[2];
      v35 = v32[3];
      if (v36 >= v35 >> 1)
      {
        v32 = sub_26C06A23C((v35 > 1), v36 + 1, 1, v32, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v55 = v32;
      }

      v37 = *(&v51 + 1);
      v38 = *&v52[0];
      v39 = __swift_mutable_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
      v40 = *(*(v37 - 8) + 64);
      MEMORY[0x28223BE20](v39);
      v42 = &v46 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v43 + 16))(v42);
      sub_26C06A410(v36, v42, &v55, v37, v38);
      __swift_destroy_boxed_opaque_existential_1(&v50);
    }

    else
    {
      sub_26C06A56C(v53, &qword_280479360, &qword_26C0AC5D8);
    }

    v33 += 40;
  }

  while (v33 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26C0688D8(v32, &v56);

  sub_26C06A56C(v61, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v62, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v63, &qword_280479360, &qword_26C0AC5D8);
  __swift_destroy_boxed_opaque_existential_1(v64);
  v44 = sub_26C074764(&v56);
  __swift_destroy_boxed_opaque_existential_1(&v56);
  return v44;
}

{
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v11 = a2[1];
  v44 = *a2;
  v45 = a3;
  v43 = v11;
  v12 = a2[2];
  v13 = v5[9];
  v69 = v5[8];
  v70 = v13;
  v71 = *(v5 + 20);
  v14 = v5[5];
  v65 = v5[4];
  v66 = v14;
  v15 = v5[7];
  v67 = v5[6];
  v68 = v15;
  v16 = v5[1];
  v61 = *v5;
  v62 = v16;
  v17 = v5[3];
  v63 = v5[2];
  v64 = v17;
  v60[3] = type metadata accessor for Expression();
  v60[4] = &protocol witness table for Expression<A>;
  v60[0] = v9;
  v60[1] = v8;
  v60[2] = v10;
  v18 = *(a5 + 40);

  v19 = v18(a4, a5);
  v21 = v20;
  v59[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v59[4] = &protocol witness table for Expression<A>;
  v59[0] = v44;
  v59[1] = v43;
  v59[2] = v12;
  v22 = *(a5 + 8);
  v58[3] = a4;
  v58[4] = v22;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, v45, a4);
  memset(v57, 0, sizeof(v57));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
  v24 = swift_allocObject();
  sub_26C06B6BC(v60, v24 + 32);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(v24 + 104) = &protocol witness table for Expression<A>;
  *(v24 + 72) = v19;
  *(v24 + 80) = v21;
  v26 = MEMORY[0x277D84F90];
  *(v24 + 88) = MEMORY[0x277D84F90];
  *(v24 + 96) = v25;
  *(v24 + 112) = 0u;
  *(v24 + 128) = 0u;
  *(v24 + 176) = v25;
  *(v24 + 184) = &protocol witness table for Expression<A>;
  *(v24 + 144) = 0;
  *(v24 + 152) = 0x4C4C554E20544F4ELL;
  *(v24 + 160) = 0xE800000000000000;
  *(v24 + 168) = v26;
  *(v24 + 192) = 0u;
  *(v24 + 208) = 0u;
  *(v24 + 224) = 0;
  sub_26C067878(v59, &v52, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v53 + 1))
  {
    sub_26C06A3A8(&v52, &v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_26C0AC580;
    *(v27 + 56) = v25;
    *(v27 + 64) = &protocol witness table for Expression<A>;
    *(v27 + 32) = 0x4B43454843;
    *(v27 + 40) = 0xE500000000000000;
    *(v27 + 48) = v26;
    sub_26C06B6BC(&v46, v27 + 72);

    sub_26C0688D8(v27, (v24 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v46);
  }

  else
  {
    *(v24 + 264) = 0;
    *(v24 + 248) = 0u;
    *(v24 + 232) = 0u;
  }

  sub_26C067878(v58, &v52, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v53 + 1))
  {
    sub_26C06A3A8(&v52, &v46);
    *(v24 + 296) = v25;
    *(v24 + 304) = &protocol witness table for Expression<A>;
    sub_26C06E148(&v46, 0x20544C5541464544, 0xE800000000000000, (v24 + 272));
    __swift_destroy_boxed_opaque_existential_1(&v46);
  }

  else
  {
    *(v24 + 304) = 0;
    *(v24 + 272) = 0u;
    *(v24 + 288) = 0u;
  }

  sub_26C067878(v57, &v52, &qword_280479370, &qword_26C0AC5E8);
  if (*(&v53 + 1))
  {
    v48[0] = v54;
    v48[1] = v55;
    v48[2] = v56;
    v46 = v52;
    v47 = v53;
    sub_26C080BEC(&v46, v48 + 8, (v24 + 312));

    sub_26C06A56C(&v46, &qword_280479378, &qword_26C0AC5F0);
  }

  else
  {

    *(v24 + 344) = 0;
    *(v24 + 312) = 0u;
    *(v24 + 328) = 0u;
  }

  v28 = MEMORY[0x277D84F90];
  *(v24 + 384) = 0;
  v29 = 32;
  *(v24 + 352) = 0u;
  *(v24 + 368) = 0u;
  do
  {
    sub_26C067878(v24 + v29, &v52, &qword_280479360, &qword_26C0AC5D8);
    v49[0] = v52;
    v49[1] = v53;
    v50 = v54;
    if (*(&v53 + 1))
    {
      sub_26C06A3A8(v49, &v46);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_26C06A23C(0, v28[2] + 1, 1, v28, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v51 = v28;
      }

      v32 = v28[2];
      v31 = v28[3];
      if (v32 >= v31 >> 1)
      {
        v28 = sub_26C06A23C((v31 > 1), v32 + 1, 1, v28, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v51 = v28;
      }

      v33 = *(&v47 + 1);
      v34 = *&v48[0];
      v35 = __swift_mutable_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
      v36 = *(*(v33 - 8) + 64);
      MEMORY[0x28223BE20](v35);
      v38 = &v42 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v39 + 16))(v38);
      sub_26C06A410(v32, v38, &v51, v33, v34);
      __swift_destroy_boxed_opaque_existential_1(&v46);
    }

    else
    {
      sub_26C06A56C(v49, &qword_280479360, &qword_26C0AC5D8);
    }

    v29 += 40;
  }

  while (v29 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26C0688D8(v28, &v52);

  sub_26C06A56C(v57, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v58, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v59, &qword_280479360, &qword_26C0AC5D8);
  __swift_destroy_boxed_opaque_existential_1(v60);
  v40 = sub_26C074764(&v52);
  __swift_destroy_boxed_opaque_existential_1(&v52);
  return v40;
}

{
  v61 = a3;
  v10 = sub_26C0ABAF0();
  v65 = *(v10 - 8);
  v11 = *(v65 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v58 - v12;
  v15 = *a1;
  v14 = a1[1];
  v16 = a1[2];
  v17 = *a2;
  v18 = a2[1];
  v59 = a2[2];
  v60 = v17;
  v19 = v5[9];
  v91 = v5[8];
  v92 = v19;
  v93 = *(v5 + 20);
  v20 = v5[5];
  v87 = v5[4];
  v88 = v20;
  v21 = v5[7];
  v89 = v5[6];
  v90 = v21;
  v22 = v5[1];
  v83 = *v5;
  v84 = v22;
  v23 = v5[3];
  v85 = v5[2];
  v86 = v23;
  v64 = v24;
  v82[3] = type metadata accessor for Expression();
  v82[4] = &protocol witness table for Expression<A>;
  v82[0] = v15;
  v82[1] = v14;
  v82[2] = v16;
  v25 = *(a5 + 40);

  v26 = v25(a4, a5);
  v62 = v27;
  v63 = v26;
  if (v18)
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
    v29 = &protocol witness table for Expression<A>;
    v30 = v59;
    v31 = v60;
    v32 = v60;
    v33 = v18;
  }

  else
  {
    v31 = v60;
    v33 = 0;
    v32 = 0;
    v30 = 0;
    v28 = 0;
    v29 = 0;
  }

  v81[0] = v32;
  v81[1] = v18;
  v81[2] = v30;
  v81[3] = v28;
  v81[4] = v29;
  v35 = v64;
  v34 = v65;
  (*(v65 + 16))(v13, v61, v64);
  v36 = *(a4 - 8);
  if ((*(v36 + 48))(v13, 1, a4) == 1)
  {
    sub_26C06E874(v31, v33);
    (*(v34 + 8))(v13, v35);
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
  }

  else
  {
    v37 = *(a5 + 8);
    *(&v79 + 1) = a4;
    v80 = v37;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v78);
    (*(v36 + 32))(boxed_opaque_existential_1, v13, a4);
    sub_26C06E874(v31, v33);
  }

  memset(v77, 0, sizeof(v77));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
  v39 = swift_allocObject();
  sub_26C06B6BC(v82, v39 + 32);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(v39 + 104) = &protocol witness table for Expression<A>;
  v41 = v62;
  *(v39 + 72) = v63;
  *(v39 + 80) = v41;
  v42 = MEMORY[0x277D84F90];
  *(v39 + 88) = MEMORY[0x277D84F90];
  *(v39 + 96) = v40;
  *(v39 + 112) = 0u;
  *(v39 + 128) = 0u;
  *(v39 + 144) = 0u;
  *(v39 + 160) = 0u;
  *(v39 + 176) = 0u;
  *(v39 + 192) = 0u;
  *(v39 + 208) = 0u;
  *(v39 + 224) = 0;
  sub_26C067878(v81, &v72, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v73 + 1))
  {
    sub_26C06A3A8(&v72, &v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_26C0AC580;
    *(v43 + 56) = v40;
    *(v43 + 64) = &protocol witness table for Expression<A>;
    *(v43 + 32) = 0x4B43454843;
    *(v43 + 40) = 0xE500000000000000;
    *(v43 + 48) = v42;
    sub_26C06B6BC(&v66, v43 + 72);

    sub_26C0688D8(v43, (v39 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v66);
  }

  else
  {
    *(v39 + 264) = 0;
    *(v39 + 248) = 0u;
    *(v39 + 232) = 0u;
  }

  sub_26C067878(&v78, &v72, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v73 + 1))
  {
    sub_26C06A3A8(&v72, &v66);
    *(v39 + 296) = v40;
    *(v39 + 304) = &protocol witness table for Expression<A>;
    sub_26C06E148(&v66, 0x20544C5541464544, 0xE800000000000000, (v39 + 272));
    __swift_destroy_boxed_opaque_existential_1(&v66);
  }

  else
  {
    *(v39 + 304) = 0;
    *(v39 + 272) = 0u;
    *(v39 + 288) = 0u;
  }

  sub_26C067878(v77, &v72, &qword_280479370, &qword_26C0AC5E8);
  if (*(&v73 + 1))
  {
    v68[0] = v74;
    v68[1] = v75;
    v68[2] = v76;
    v66 = v72;
    v67 = v73;
    sub_26C080BEC(&v66, v68 + 8, (v39 + 312));

    sub_26C06A56C(&v66, &qword_280479378, &qword_26C0AC5F0);
  }

  else
  {

    *(v39 + 344) = 0;
    *(v39 + 312) = 0u;
    *(v39 + 328) = 0u;
  }

  v44 = MEMORY[0x277D84F90];
  *(v39 + 384) = 0;
  v45 = 32;
  *(v39 + 352) = 0u;
  *(v39 + 368) = 0u;
  do
  {
    sub_26C067878(v39 + v45, &v72, &qword_280479360, &qword_26C0AC5D8);
    v69[0] = v72;
    v69[1] = v73;
    v70 = v74;
    if (*(&v73 + 1))
    {
      sub_26C06A3A8(v69, &v66);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v44;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v44 = sub_26C06A23C(0, v44[2] + 1, 1, v44, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v71 = v44;
      }

      v48 = v44[2];
      v47 = v44[3];
      if (v48 >= v47 >> 1)
      {
        v44 = sub_26C06A23C((v47 > 1), v48 + 1, 1, v44, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v71 = v44;
      }

      v49 = *(&v67 + 1);
      v50 = *&v68[0];
      v51 = __swift_mutable_project_boxed_opaque_existential_1(&v66, *(&v67 + 1));
      v52 = *(*(v49 - 8) + 64);
      MEMORY[0x28223BE20](v51);
      v54 = &v58 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v55 + 16))(v54);
      sub_26C06A410(v48, v54, &v71, v49, v50);
      __swift_destroy_boxed_opaque_existential_1(&v66);
    }

    else
    {
      sub_26C06A56C(v69, &qword_280479360, &qword_26C0AC5D8);
    }

    v45 += 40;
  }

  while (v45 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26C0688D8(v44, &v72);

  sub_26C06A56C(v77, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(&v78, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v81, &qword_280479360, &qword_26C0AC5D8);
  __swift_destroy_boxed_opaque_existential_1(v82);
  v56 = sub_26C074764(&v72);
  __swift_destroy_boxed_opaque_existential_1(&v72);
  return v56;
}

{
  v54 = a3;
  v10 = sub_26C0ABAF0();
  v53 = *(v10 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x28223BE20](v10);
  v52 = &v50 - v12;
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[2];
  v16 = *a2;
  v50 = a2[1];
  v51 = v16;
  v17 = a2[2];
  v18 = v5[9];
  v81 = v5[8];
  v82 = v18;
  v83 = *(v5 + 20);
  v19 = v5[5];
  v77 = v5[4];
  v78 = v19;
  v20 = v5[7];
  v79 = v5[6];
  v80 = v20;
  v21 = v5[1];
  v73 = *v5;
  v74 = v21;
  v22 = v5[3];
  v75 = v5[2];
  v76 = v22;
  v72[3] = type metadata accessor for Expression();
  v72[4] = &protocol witness table for Expression<A>;
  v72[0] = v13;
  v72[1] = v14;
  v72[2] = v15;
  v23 = *(a5 + 40);

  v55 = v23(a4, a5);
  v25 = v24;
  v71[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v71[4] = &protocol witness table for Expression<A>;
  v71[0] = v51;
  v71[1] = v50;
  v71[2] = v17;
  v26 = v52;
  v27 = v53;
  (*(v53 + 16))(v52, v54, v10);
  v28 = *(a4 - 8);
  if ((*(v28 + 48))(v26, 1, a4) == 1)
  {
    v29 = *(v27 + 8);

    v29(v26, v10);
    v70 = 0;
    v68 = 0u;
    v69 = 0u;
  }

  else
  {
    v30 = *(a5 + 8);
    *(&v69 + 1) = a4;
    v70 = v30;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v68);
    (*(v28 + 32))(boxed_opaque_existential_1, v26, a4);
  }

  memset(v67, 0, sizeof(v67));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
  v32 = swift_allocObject();
  sub_26C06B6BC(v72, v32 + 32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(v32 + 104) = &protocol witness table for Expression<A>;
  *(v32 + 72) = v55;
  *(v32 + 80) = v25;
  v34 = MEMORY[0x277D84F90];
  *(v32 + 88) = MEMORY[0x277D84F90];
  *(v32 + 96) = v33;
  *(v32 + 112) = 0u;
  *(v32 + 128) = 0u;
  *(v32 + 144) = 0u;
  *(v32 + 160) = 0u;
  *(v32 + 176) = 0u;
  *(v32 + 192) = 0u;
  *(v32 + 208) = 0u;
  *(v32 + 224) = 0;
  sub_26C067878(v71, &v62, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v63 + 1))
  {
    sub_26C06A3A8(&v62, &v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_26C0AC580;
    *(v35 + 56) = v33;
    *(v35 + 64) = &protocol witness table for Expression<A>;
    *(v35 + 32) = 0x4B43454843;
    *(v35 + 40) = 0xE500000000000000;
    *(v35 + 48) = v34;
    sub_26C06B6BC(&v56, v35 + 72);

    sub_26C0688D8(v35, (v32 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v56);
  }

  else
  {
    *(v32 + 264) = 0;
    *(v32 + 248) = 0u;
    *(v32 + 232) = 0u;
  }

  sub_26C067878(&v68, &v62, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v63 + 1))
  {
    sub_26C06A3A8(&v62, &v56);
    *(v32 + 296) = v33;
    *(v32 + 304) = &protocol witness table for Expression<A>;
    sub_26C06E148(&v56, 0x20544C5541464544, 0xE800000000000000, (v32 + 272));
    __swift_destroy_boxed_opaque_existential_1(&v56);
  }

  else
  {
    *(v32 + 304) = 0;
    *(v32 + 272) = 0u;
    *(v32 + 288) = 0u;
  }

  sub_26C067878(v67, &v62, &qword_280479370, &qword_26C0AC5E8);
  if (*(&v63 + 1))
  {
    v58[0] = v64;
    v58[1] = v65;
    v58[2] = v66;
    v56 = v62;
    v57 = v63;
    sub_26C080BEC(&v56, v58 + 8, (v32 + 312));

    sub_26C06A56C(&v56, &qword_280479378, &qword_26C0AC5F0);
  }

  else
  {

    *(v32 + 344) = 0;
    *(v32 + 312) = 0u;
    *(v32 + 328) = 0u;
  }

  v36 = MEMORY[0x277D84F90];
  *(v32 + 384) = 0;
  v37 = 32;
  *(v32 + 352) = 0u;
  *(v32 + 368) = 0u;
  do
  {
    sub_26C067878(v32 + v37, &v62, &qword_280479360, &qword_26C0AC5D8);
    v59[0] = v62;
    v59[1] = v63;
    v60 = v64;
    if (*(&v63 + 1))
    {
      sub_26C06A3A8(v59, &v56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = sub_26C06A23C(0, v36[2] + 1, 1, v36, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v61 = v36;
      }

      v40 = v36[2];
      v39 = v36[3];
      if (v40 >= v39 >> 1)
      {
        v36 = sub_26C06A23C((v39 > 1), v40 + 1, 1, v36, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v61 = v36;
      }

      v41 = *(&v57 + 1);
      v42 = *&v58[0];
      v43 = __swift_mutable_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
      v44 = *(*(v41 - 8) + 64);
      MEMORY[0x28223BE20](v43);
      v46 = &v50 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v47 + 16))(v46);
      sub_26C06A410(v40, v46, &v61, v41, v42);
      __swift_destroy_boxed_opaque_existential_1(&v56);
    }

    else
    {
      sub_26C06A56C(v59, &qword_280479360, &qword_26C0AC5D8);
    }

    v37 += 40;
  }

  while (v37 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26C0688D8(v36, &v62);

  sub_26C06A56C(v67, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(&v68, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v71, &qword_280479360, &qword_26C0AC5D8);
  __swift_destroy_boxed_opaque_existential_1(v72);
  v48 = sub_26C074764(&v62);
  __swift_destroy_boxed_opaque_existential_1(&v62);
  return v48;
}

uint64_t sub_26C074764(uint64_t a1)
{
  v3 = v1[9];
  v22 = v1[8];
  v23 = v3;
  v24 = *(v1 + 20);
  v4 = v1[5];
  v18 = v1[4];
  v19 = v4;
  v5 = v1[7];
  v20 = v1[6];
  v21 = v5;
  v6 = v1[1];
  v14 = *v1;
  v15 = v6;
  v7 = v1[3];
  v16 = v1[2];
  v17 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC590;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(inited + 32) = 0x4154205245544C41;
  *(inited + 56) = v9;
  *(inited + 64) = &protocol witness table for Expression<A>;
  v10 = MEMORY[0x277D84F90];
  *(inited + 40) = 0xEB00000000454C42;
  *(inited + 48) = v10;
  if (!*(&v16 + 1))
  {
  }

  sub_26C069100((inited + 72));

  *(inited + 136) = v9;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = 0x554C4F4320444441;
  *(inited + 120) = 0xEA00000000004E4DLL;
  *(inited + 128) = v10;
  sub_26C06B6BC(a1, inited + 152);
  sub_26C0688D8(inited, v13);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  countAndFlagsBits = Expressible.asSQL()()._countAndFlagsBits;
  __swift_destroy_boxed_opaque_existential_1(v13);
  return countAndFlagsBits;
}

uint64_t Table.addColumn<A>(_:unique:check:references:_:)(uint64_t *a1, int a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v58 = a2;
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a3[1];
  v55 = *a3;
  v14 = a3[2];
  v15 = a5[1];
  v56 = *a5;
  v57 = a4;
  v60 = v15;
  v61 = a5[2];
  v62 = v14;
  v16 = v7[9];
  v88 = v7[8];
  v89 = v16;
  v90 = *(v7 + 20);
  v17 = v7[5];
  v84 = v7[4];
  v85 = v17;
  v18 = v7[7];
  v86 = v7[6];
  v87 = v18;
  v19 = v7[1];
  v80 = *v7;
  v81 = v19;
  v20 = v7[3];
  v82 = v7[2];
  v83 = v20;
  v21 = type metadata accessor for Expression();
  v79[3] = v21;
  v79[4] = &protocol witness table for Expression<A>;
  v79[0] = v10;
  v79[1] = v11;
  v79[2] = v12;
  v22 = *(a7 + 40);

  v23 = v22(a6, a7);
  v63 = v24;
  v59 = v13;
  if (v13)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
    v26 = &protocol witness table for Expression<A>;
    v27 = v55;
    v28 = v55;
    v29 = v62;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v25 = 0;
    v26 = 0;
    v27 = v55;
  }

  v78[0] = v28;
  v78[1] = v13;
  v78[2] = v29;
  v78[3] = v25;
  v78[4] = v26;
  v77 = 0;
  memset(v76, 0, sizeof(v76));
  sub_26C06B6BC(v57, v75);
  v75[8] = v21;
  v75[9] = &protocol witness table for Expression<A>;
  v75[5] = v56;
  v75[6] = v60;
  v75[7] = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
  v30 = swift_allocObject();
  sub_26C06B6BC(v79, v30 + 32);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v32 = 0uLL;
  v33 = v31;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  *(v30 + 104) = &protocol witness table for Expression<A>;
  v37 = v63;
  *(v30 + 72) = v23;
  *(v30 + 80) = v37;
  v38 = MEMORY[0x277D84F90];
  *(v30 + 88) = MEMORY[0x277D84F90];
  *(v30 + 96) = v31;
  *(v30 + 112) = 0u;
  *(v30 + 128) = 0u;
  *(v30 + 176) = v31;
  *(v30 + 184) = &protocol witness table for Expression<A>;
  *(v30 + 144) = 0;
  *(v30 + 152) = 0x4C4C554E20544F4ELL;
  *(v30 + 160) = 0xE800000000000000;
  *(v30 + 168) = v38;
  if (v58)
  {
    v32 = xmmword_26C0AC5A0;
    v36 = MEMORY[0x277D84F90];
    v35 = &protocol witness table for Expression<A>;
    v34 = v31;
  }

  *(v30 + 216) = v34;
  *(v30 + 224) = v35;
  *(v30 + 192) = v32;
  *(v30 + 208) = v36;
  sub_26C067878(v78, &v70, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v71 + 1))
  {
    sub_26C06A3A8(&v70, &v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_26C0AC580;
    *(v39 + 56) = v33;
    *(v39 + 64) = &protocol witness table for Expression<A>;
    *(v39 + 32) = 0x4B43454843;
    *(v39 + 40) = 0xE500000000000000;
    *(v39 + 48) = v38;
    sub_26C06B6BC(&v64, v39 + 72);
    sub_26C06E874(v27, v59);

    sub_26C0688D8(v39, (v30 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v64);
  }

  else
  {
    *(v30 + 264) = 0;
    *(v30 + 248) = 0u;
    *(v30 + 232) = 0u;
    sub_26C06E874(v27, v59);
  }

  sub_26C067878(v76, &v70, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v71 + 1))
  {
    sub_26C06A3A8(&v70, &v64);
    *(v30 + 296) = v33;
    *(v30 + 304) = &protocol witness table for Expression<A>;
    sub_26C06E148(&v64, 0x20544C5541464544, 0xE800000000000000, (v30 + 272));
    __swift_destroy_boxed_opaque_existential_1(&v64);
  }

  else
  {
    *(v30 + 304) = 0;
    *(v30 + 272) = 0u;
    *(v30 + 288) = 0u;
  }

  sub_26C067878(v75, &v70, &qword_280479370, &qword_26C0AC5E8);
  if (*(&v71 + 1))
  {
    v66[0] = v72;
    v66[1] = v73;
    v66[2] = v74;
    v64 = v70;
    v65 = v71;
    sub_26C080BEC(&v64, v66 + 8, (v30 + 312));

    sub_26C06A56C(&v64, &qword_280479378, &qword_26C0AC5F0);
  }

  else
  {

    *(v30 + 344) = 0;
    *(v30 + 312) = 0u;
    *(v30 + 328) = 0u;
  }

  v40 = MEMORY[0x277D84F90];
  *(v30 + 384) = 0;
  v41 = 32;
  *(v30 + 352) = 0u;
  *(v30 + 368) = 0u;
  do
  {
    sub_26C067878(v30 + v41, &v70, &qword_280479360, &qword_26C0AC5D8);
    v67[0] = v70;
    v67[1] = v71;
    v68 = v72;
    if (*(&v71 + 1))
    {
      sub_26C06A3A8(v67, &v64);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = sub_26C06A23C(0, v40[2] + 1, 1, v40, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v69 = v40;
      }

      v44 = v40[2];
      v43 = v40[3];
      if (v44 >= v43 >> 1)
      {
        v40 = sub_26C06A23C((v43 > 1), v44 + 1, 1, v40, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v69 = v40;
      }

      v45 = *(&v65 + 1);
      v46 = *&v66[0];
      v47 = __swift_mutable_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
      v48 = *(*(v45 - 8) + 64);
      MEMORY[0x28223BE20](v47);
      v50 = &v54 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v51 + 16))(v50);
      sub_26C06A410(v44, v50, &v69, v45, v46);
      __swift_destroy_boxed_opaque_existential_1(&v64);
    }

    else
    {
      sub_26C06A56C(v67, &qword_280479360, &qword_26C0AC5D8);
    }

    v41 += 40;
  }

  while (v41 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26C0688D8(v40, &v70);

  sub_26C06A56C(v76, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v75, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v78, &qword_280479360, &qword_26C0AC5D8);
  __swift_destroy_boxed_opaque_existential_1(v79);
  v52 = sub_26C074764(&v70);
  __swift_destroy_boxed_opaque_existential_1(&v70);
  return v52;
}

{
  v54 = a2;
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v13 = *a3;
  v14 = a3[2];
  v55 = a3[1];
  v56 = v14;
  v16 = *a5;
  v15 = a5[1];
  v50 = v13;
  v51 = v16;
  v57 = v15;
  v52 = a5[2];
  v53 = a4;
  v17 = v7[9];
  v82 = v7[8];
  v83 = v17;
  v84 = *(v7 + 20);
  v18 = v7[5];
  v78 = v7[4];
  v79 = v18;
  v19 = v7[7];
  v80 = v7[6];
  v81 = v19;
  v20 = v7[1];
  v74 = *v7;
  v75 = v20;
  v21 = v7[3];
  v76 = v7[2];
  v77 = v21;
  v22 = type metadata accessor for Expression();
  v73[3] = v22;
  v73[4] = &protocol witness table for Expression<A>;
  v73[0] = v11;
  v73[1] = v10;
  v73[2] = v12;
  v23 = *(a7 + 40);

  v24 = v23(a6, a7);
  v26 = v25;
  v72[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v72[4] = &protocol witness table for Expression<A>;
  v72[0] = v50;
  v72[1] = v55;
  v72[2] = v56;
  v71 = 0;
  memset(v70, 0, sizeof(v70));
  sub_26C06B6BC(v53, v69);
  v69[8] = v22;
  v69[9] = &protocol witness table for Expression<A>;
  v69[5] = v51;
  v69[6] = v57;
  v69[7] = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
  v27 = swift_allocObject();
  sub_26C06B6BC(v73, v27 + 32);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v29 = 0uLL;
  v30 = v28;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  *(v27 + 104) = &protocol witness table for Expression<A>;
  *(v27 + 72) = v24;
  *(v27 + 80) = v26;
  v34 = MEMORY[0x277D84F90];
  *(v27 + 88) = MEMORY[0x277D84F90];
  *(v27 + 96) = v28;
  *(v27 + 112) = 0u;
  *(v27 + 128) = 0u;
  *(v27 + 176) = v28;
  *(v27 + 184) = &protocol witness table for Expression<A>;
  *(v27 + 144) = 0;
  *(v27 + 152) = 0x4C4C554E20544F4ELL;
  *(v27 + 160) = 0xE800000000000000;
  *(v27 + 168) = v34;
  if (v54)
  {
    v29 = xmmword_26C0AC5A0;
    v33 = MEMORY[0x277D84F90];
    v32 = &protocol witness table for Expression<A>;
    v31 = v28;
  }

  *(v27 + 216) = v31;
  *(v27 + 224) = v32;
  *(v27 + 192) = v29;
  *(v27 + 208) = v33;
  sub_26C067878(v72, &v64, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v65 + 1))
  {
    sub_26C06A3A8(&v64, &v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_26C0AC580;
    *(v35 + 56) = v30;
    *(v35 + 64) = &protocol witness table for Expression<A>;
    *(v35 + 32) = 0x4B43454843;
    *(v35 + 40) = 0xE500000000000000;
    *(v35 + 48) = v34;
    sub_26C06B6BC(&v58, v35 + 72);

    sub_26C0688D8(v35, (v27 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v58);
  }

  else
  {
    *(v27 + 264) = 0;
    *(v27 + 248) = 0u;
    *(v27 + 232) = 0u;
  }

  sub_26C067878(v70, &v64, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v65 + 1))
  {
    sub_26C06A3A8(&v64, &v58);
    *(v27 + 296) = v30;
    *(v27 + 304) = &protocol witness table for Expression<A>;
    sub_26C06E148(&v58, 0x20544C5541464544, 0xE800000000000000, (v27 + 272));
    __swift_destroy_boxed_opaque_existential_1(&v58);
  }

  else
  {
    *(v27 + 304) = 0;
    *(v27 + 272) = 0u;
    *(v27 + 288) = 0u;
  }

  sub_26C067878(v69, &v64, &qword_280479370, &qword_26C0AC5E8);
  if (*(&v65 + 1))
  {
    v60[0] = v66;
    v60[1] = v67;
    v60[2] = v68;
    v58 = v64;
    v59 = v65;
    sub_26C080BEC(&v58, v60 + 8, (v27 + 312));

    sub_26C06A56C(&v58, &qword_280479378, &qword_26C0AC5F0);
  }

  else
  {

    *(v27 + 344) = 0;
    *(v27 + 312) = 0u;
    *(v27 + 328) = 0u;
  }

  v36 = MEMORY[0x277D84F90];
  *(v27 + 384) = 0;
  v37 = 32;
  *(v27 + 352) = 0u;
  *(v27 + 368) = 0u;
  do
  {
    sub_26C067878(v27 + v37, &v64, &qword_280479360, &qword_26C0AC5D8);
    v61[0] = v64;
    v61[1] = v65;
    v62 = v66;
    if (*(&v65 + 1))
    {
      sub_26C06A3A8(v61, &v58);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = sub_26C06A23C(0, v36[2] + 1, 1, v36, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v63 = v36;
      }

      v40 = v36[2];
      v39 = v36[3];
      if (v40 >= v39 >> 1)
      {
        v36 = sub_26C06A23C((v39 > 1), v40 + 1, 1, v36, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v63 = v36;
      }

      v41 = *(&v59 + 1);
      v42 = *&v60[0];
      v43 = __swift_mutable_project_boxed_opaque_existential_1(&v58, *(&v59 + 1));
      v44 = *(*(v41 - 8) + 64);
      MEMORY[0x28223BE20](v43);
      v46 = &v50 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v47 + 16))(v46);
      sub_26C06A410(v40, v46, &v63, v41, v42);
      __swift_destroy_boxed_opaque_existential_1(&v58);
    }

    else
    {
      sub_26C06A56C(v61, &qword_280479360, &qword_26C0AC5D8);
    }

    v37 += 40;
  }

  while (v37 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26C0688D8(v36, &v64);

  sub_26C06A56C(v70, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v69, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v72, &qword_280479360, &qword_26C0AC5D8);
  __swift_destroy_boxed_opaque_existential_1(v73);
  v48 = sub_26C074764(&v64);
  __swift_destroy_boxed_opaque_existential_1(&v64);
  return v48;
}

{
  v56 = a2;
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a3[1];
  v53 = *a3;
  v14 = a3[2];
  v15 = a5[1];
  v54 = *a5;
  v55 = a4;
  v58 = v15;
  v60 = a5[2];
  v16 = v7[9];
  v86 = v7[8];
  v87 = v16;
  v88 = *(v7 + 20);
  v17 = v7[5];
  v82 = v7[4];
  v83 = v17;
  v18 = v7[7];
  v84 = v7[6];
  v85 = v18;
  v19 = v7[1];
  v78 = *v7;
  v79 = v19;
  v20 = v7[3];
  v80 = v7[2];
  v81 = v20;
  sub_26C0ABAF0();
  v77[3] = type metadata accessor for Expression();
  v77[4] = &protocol witness table for Expression<A>;
  v77[0] = v10;
  v77[1] = v11;
  v77[2] = v12;
  v21 = *(a7 + 40);

  v22 = v21(a6, a7);
  v61 = v23;
  v59 = v13;
  v57 = v14;
  if (v13)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
    v25 = &protocol witness table for Expression<A>;
    v26 = v53;
    v27 = v53;
  }

  else
  {
    v27 = 0;
    v14 = 0;
    v24 = 0;
    v25 = 0;
    v26 = v53;
  }

  v76[0] = v27;
  v76[1] = v13;
  v76[2] = v14;
  v76[3] = v24;
  v76[4] = v25;
  v75 = 0;
  memset(v74, 0, sizeof(v74));
  sub_26C06B6BC(v55, v73);
  v73[8] = type metadata accessor for Expression();
  v73[9] = &protocol witness table for Expression<A>;
  v73[5] = v54;
  v73[6] = v58;
  v73[7] = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
  v28 = swift_allocObject();
  sub_26C06B6BC(v77, v28 + 32);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v30 = 0uLL;
  v31 = v29;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  *(v28 + 104) = &protocol witness table for Expression<A>;
  v35 = v61;
  *(v28 + 72) = v22;
  *(v28 + 80) = v35;
  v36 = MEMORY[0x277D84F90];
  *(v28 + 88) = MEMORY[0x277D84F90];
  *(v28 + 96) = v29;
  *(v28 + 112) = 0u;
  *(v28 + 128) = 0u;
  *(v28 + 144) = 0u;
  *(v28 + 160) = 0u;
  *(v28 + 176) = 0u;
  if (v56)
  {
    v30 = xmmword_26C0AC5A0;
    v34 = MEMORY[0x277D84F90];
    v33 = &protocol witness table for Expression<A>;
    v32 = v29;
  }

  *(v28 + 216) = v32;
  *(v28 + 224) = v33;
  *(v28 + 192) = v30;
  *(v28 + 208) = v34;
  sub_26C067878(v76, &v68, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v69 + 1))
  {
    sub_26C06A3A8(&v68, &v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_26C0AC580;
    *(v37 + 56) = v31;
    *(v37 + 64) = &protocol witness table for Expression<A>;
    *(v37 + 32) = 0x4B43454843;
    *(v37 + 40) = 0xE500000000000000;
    *(v37 + 48) = v36;
    sub_26C06B6BC(&v62, v37 + 72);
    sub_26C06E874(v26, v59);

    sub_26C0688D8(v37, (v28 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v62);
  }

  else
  {
    *(v28 + 264) = 0;
    *(v28 + 248) = 0u;
    *(v28 + 232) = 0u;
    sub_26C06E874(v26, v59);
  }

  sub_26C067878(v74, &v68, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v69 + 1))
  {
    sub_26C06A3A8(&v68, &v62);
    *(v28 + 296) = v31;
    *(v28 + 304) = &protocol witness table for Expression<A>;
    sub_26C06E148(&v62, 0x20544C5541464544, 0xE800000000000000, (v28 + 272));
    __swift_destroy_boxed_opaque_existential_1(&v62);
  }

  else
  {
    *(v28 + 304) = 0;
    *(v28 + 272) = 0u;
    *(v28 + 288) = 0u;
  }

  sub_26C067878(v73, &v68, &qword_280479370, &qword_26C0AC5E8);
  if (*(&v69 + 1))
  {
    v64[0] = v70;
    v64[1] = v71;
    v64[2] = v72;
    v62 = v68;
    v63 = v69;
    sub_26C080BEC(&v62, v64 + 8, (v28 + 312));

    sub_26C06A56C(&v62, &qword_280479378, &qword_26C0AC5F0);
  }

  else
  {

    *(v28 + 344) = 0;
    *(v28 + 312) = 0u;
    *(v28 + 328) = 0u;
  }

  v38 = MEMORY[0x277D84F90];
  *(v28 + 384) = 0;
  v39 = 32;
  *(v28 + 352) = 0u;
  *(v28 + 368) = 0u;
  v61 = v28;
  do
  {
    sub_26C067878(v28 + v39, &v68, &qword_280479360, &qword_26C0AC5D8);
    v65[0] = v68;
    v65[1] = v69;
    v66 = v70;
    if (*(&v69 + 1))
    {
      sub_26C06A3A8(v65, &v62);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = sub_26C06A23C(0, v38[2] + 1, 1, v38, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v67 = v38;
      }

      v42 = v38[2];
      v41 = v38[3];
      if (v42 >= v41 >> 1)
      {
        v38 = sub_26C06A23C((v41 > 1), v42 + 1, 1, v38, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v67 = v38;
      }

      v43 = *(&v63 + 1);
      v44 = *&v64[0];
      v45 = __swift_mutable_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
      v46 = *(*(v43 - 8) + 64);
      MEMORY[0x28223BE20](v45);
      v48 = &v52 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v49 + 16))(v48);
      sub_26C06A410(v42, v48, &v67, v43, v44);
      __swift_destroy_boxed_opaque_existential_1(&v62);
      v28 = v61;
    }

    else
    {
      sub_26C06A56C(v65, &qword_280479360, &qword_26C0AC5D8);
    }

    v39 += 40;
  }

  while (v39 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26C0688D8(v38, &v68);

  sub_26C06A56C(v74, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v73, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v76, &qword_280479360, &qword_26C0AC5D8);
  __swift_destroy_boxed_opaque_existential_1(v77);
  v50 = sub_26C074764(&v68);
  __swift_destroy_boxed_opaque_existential_1(&v68);
  return v50;
}

{
  v53 = a2;
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v13 = a3[1];
  v14 = a3[2];
  v54 = *a3;
  v55 = v14;
  v15 = a5[1];
  v52 = *a5;
  v50 = a4;
  v51 = v15;
  v49 = a5[2];
  v16 = v7[9];
  v80 = v7[8];
  v81 = v16;
  v82 = *(v7 + 20);
  v17 = v7[5];
  v76 = v7[4];
  v77 = v17;
  v18 = v7[7];
  v78 = v7[6];
  v79 = v18;
  v19 = v7[1];
  v72 = *v7;
  v73 = v19;
  v20 = v7[3];
  v74 = v7[2];
  v75 = v20;
  sub_26C0ABAF0();
  v71[3] = type metadata accessor for Expression();
  v71[4] = &protocol witness table for Expression<A>;
  v71[0] = v11;
  v71[1] = v10;
  v71[2] = v12;
  v21 = *(a7 + 40);

  v22 = v21(a6, a7);
  v24 = v23;
  v70[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v70[4] = &protocol witness table for Expression<A>;
  v70[0] = v54;
  v70[1] = v13;
  v54 = v13;
  v70[2] = v55;
  v69 = 0;
  memset(v68, 0, sizeof(v68));
  sub_26C06B6BC(v50, v67);
  v67[8] = type metadata accessor for Expression();
  v67[9] = &protocol witness table for Expression<A>;
  v67[5] = v52;
  v67[6] = v51;
  v67[7] = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
  v25 = swift_allocObject();
  sub_26C06B6BC(v71, v25 + 32);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v27 = 0uLL;
  v28 = v26;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  *(v25 + 104) = &protocol witness table for Expression<A>;
  *(v25 + 72) = v22;
  *(v25 + 80) = v24;
  v32 = MEMORY[0x277D84F90];
  *(v25 + 88) = MEMORY[0x277D84F90];
  *(v25 + 96) = v26;
  *(v25 + 112) = 0u;
  *(v25 + 128) = 0u;
  *(v25 + 144) = 0u;
  *(v25 + 160) = 0u;
  *(v25 + 176) = 0u;
  if (v53)
  {
    v27 = xmmword_26C0AC5A0;
    v31 = MEMORY[0x277D84F90];
    v30 = &protocol witness table for Expression<A>;
    v29 = v26;
  }

  *(v25 + 216) = v29;
  *(v25 + 224) = v30;
  *(v25 + 192) = v27;
  *(v25 + 208) = v31;
  sub_26C067878(v70, &v62, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v63 + 1))
  {
    sub_26C06A3A8(&v62, &v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_26C0AC580;
    *(v33 + 56) = v28;
    *(v33 + 64) = &protocol witness table for Expression<A>;
    *(v33 + 32) = 0x4B43454843;
    *(v33 + 40) = 0xE500000000000000;
    *(v33 + 48) = v32;
    sub_26C06B6BC(&v56, v33 + 72);

    sub_26C0688D8(v33, (v25 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v56);
  }

  else
  {
    *(v25 + 264) = 0;
    *(v25 + 248) = 0u;
    *(v25 + 232) = 0u;
  }

  sub_26C067878(v68, &v62, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v63 + 1))
  {
    sub_26C06A3A8(&v62, &v56);
    *(v25 + 296) = v28;
    *(v25 + 304) = &protocol witness table for Expression<A>;
    sub_26C06E148(&v56, 0x20544C5541464544, 0xE800000000000000, (v25 + 272));
    __swift_destroy_boxed_opaque_existential_1(&v56);
  }

  else
  {
    *(v25 + 304) = 0;
    *(v25 + 272) = 0u;
    *(v25 + 288) = 0u;
  }

  sub_26C067878(v67, &v62, &qword_280479370, &qword_26C0AC5E8);
  if (*(&v63 + 1))
  {
    v58[0] = v64;
    v58[1] = v65;
    v58[2] = v66;
    v56 = v62;
    v57 = v63;
    sub_26C080BEC(&v56, v58 + 8, (v25 + 312));

    sub_26C06A56C(&v56, &qword_280479378, &qword_26C0AC5F0);
  }

  else
  {

    *(v25 + 344) = 0;
    *(v25 + 312) = 0u;
    *(v25 + 328) = 0u;
  }

  v34 = MEMORY[0x277D84F90];
  *(v25 + 384) = 0;
  v35 = 32;
  *(v25 + 352) = 0u;
  *(v25 + 368) = 0u;
  v55 = v25;
  do
  {
    sub_26C067878(v25 + v35, &v62, &qword_280479360, &qword_26C0AC5D8);
    v59[0] = v62;
    v59[1] = v63;
    v60 = v64;
    if (*(&v63 + 1))
    {
      sub_26C06A3A8(v59, &v56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = sub_26C06A23C(0, v34[2] + 1, 1, v34, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v61 = v34;
      }

      v38 = v34[2];
      v37 = v34[3];
      if (v38 >= v37 >> 1)
      {
        v34 = sub_26C06A23C((v37 > 1), v38 + 1, 1, v34, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v61 = v34;
      }

      v39 = *(&v57 + 1);
      v40 = *&v58[0];
      v41 = __swift_mutable_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
      v42 = *(*(v39 - 8) + 64);
      MEMORY[0x28223BE20](v41);
      v44 = &v48 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v45 + 16))(v44);
      sub_26C06A410(v38, v44, &v61, v39, v40);
      __swift_destroy_boxed_opaque_existential_1(&v56);
      v25 = v55;
    }

    else
    {
      sub_26C06A56C(v59, &qword_280479360, &qword_26C0AC5D8);
    }

    v35 += 40;
  }

  while (v35 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26C0688D8(v34, &v62);

  sub_26C06A56C(v68, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v67, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v70, &qword_280479360, &qword_26C0AC5D8);
  __swift_destroy_boxed_opaque_existential_1(v71);
  v46 = sub_26C074764(&v62);
  __swift_destroy_boxed_opaque_existential_1(&v62);
  return v46;
}

uint64_t Table.addColumn<A>(_:check:defaultValue:collate:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v12 = a2[1];
  v50 = *a2;
  v51 = a3;
  v13 = a2[2];
  v14 = *a4;
  v53 = a4[1];
  v54 = v14;
  v15 = v6[9];
  v79 = v6[8];
  v80 = v15;
  v81 = *(v6 + 20);
  v16 = v6[5];
  v75 = v6[4];
  v76 = v16;
  v17 = v6[7];
  v77 = v6[6];
  v78 = v17;
  v18 = v6[1];
  v71 = *v6;
  v72 = v18;
  v19 = v6[3];
  v73 = v6[2];
  v74 = v19;
  v70[3] = type metadata accessor for Expression();
  v70[4] = &protocol witness table for Expression<A>;
  v70[0] = v10;
  v70[1] = v9;
  v70[2] = v11;
  v20 = *(a6 + 40);

  v21 = v20(a5, a6);
  v23 = v22;
  v55 = v13;
  v52 = v12;
  if (v12)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
    v25 = &protocol witness table for Expression<A>;
    v26 = v50;
    v27 = v50;
  }

  else
  {
    v27 = 0;
    v13 = 0;
    v24 = 0;
    v25 = 0;
    v26 = v50;
  }

  v69[0] = v27;
  v69[1] = v12;
  v69[2] = v13;
  v69[3] = v24;
  v69[4] = v25;
  v28 = *(a6 + 8);
  v68[3] = a5;
  v68[4] = v28;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v68);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, v51, a5);
  memset(v67, 0, 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
  v30 = swift_allocObject();
  sub_26C06B6BC(v70, v30 + 32);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(v30 + 104) = &protocol witness table for Expression<A>;
  *(v30 + 72) = v21;
  *(v30 + 80) = v23;
  v32 = MEMORY[0x277D84F90];
  *(v30 + 88) = MEMORY[0x277D84F90];
  *(v30 + 96) = v31;
  *(v30 + 112) = 0u;
  *(v30 + 128) = 0u;
  *(v30 + 176) = v31;
  *(v30 + 184) = &protocol witness table for Expression<A>;
  *(v30 + 144) = 0;
  *(v30 + 152) = 0x4C4C554E20544F4ELL;
  *(v30 + 160) = 0xE800000000000000;
  *(v30 + 168) = v32;
  *(v30 + 192) = 0u;
  *(v30 + 208) = 0u;
  *(v30 + 224) = 0;
  sub_26C067878(v69, &v62, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v63 + 1))
  {
    sub_26C06A3A8(&v62, &v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_26C0AC580;
    *(v33 + 56) = v31;
    *(v33 + 64) = &protocol witness table for Expression<A>;
    *(v33 + 32) = 0x4B43454843;
    *(v33 + 40) = 0xE500000000000000;
    *(v33 + 48) = v32;
    sub_26C06B6BC(&v56, v33 + 72);
    sub_26C06E874(v26, v52);
    sub_26C082220(v54, v53);

    sub_26C0688D8(v33, (v30 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v56);
  }

  else
  {
    *(v30 + 264) = 0;
    *(v30 + 248) = 0u;
    *(v30 + 232) = 0u;
    sub_26C06E874(v26, v52);
    sub_26C082220(v54, v53);
  }

  sub_26C067878(v68, &v62, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v63 + 1))
  {
    sub_26C06A3A8(&v62, &v56);
    *(v30 + 296) = v31;
    *(v30 + 304) = &protocol witness table for Expression<A>;
    sub_26C06E148(&v56, 0x20544C5541464544, 0xE800000000000000, (v30 + 272));
    __swift_destroy_boxed_opaque_existential_1(&v56);
  }

  else
  {
    *(v30 + 304) = 0;
    *(v30 + 272) = 0u;
    *(v30 + 288) = 0u;
  }

  sub_26C067878(v67, &v62, &qword_280479370, &qword_26C0AC5E8);
  if (*(&v63 + 1))
  {
    v58[0] = v64;
    v58[1] = v65;
    v58[2] = v66;
    v56 = v62;
    v57 = v63;
    sub_26C080BEC(&v56, v58 + 8, (v30 + 312));

    sub_26C06A56C(&v56, &qword_280479378, &qword_26C0AC5F0);
  }

  else
  {

    *(v30 + 344) = 0;
    *(v30 + 312) = 0u;
    *(v30 + 328) = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v34 = swift_allocObject();
  *(v34 + 32) = 0x4554414C4C4F43;
  *(v34 + 16) = xmmword_26C0AC580;
  *(v34 + 56) = v31;
  *(v34 + 64) = &protocol witness table for Expression<A>;
  *(v34 + 40) = 0xE700000000000000;
  *(v34 + 48) = v32;
  *(v34 + 96) = &type metadata for Collation;
  *(v34 + 104) = &protocol witness table for Collation;
  v36 = v53;
  v35 = v54;
  *(v34 + 72) = v54;
  *(v34 + 80) = v36;
  sub_26C082220(v35, v36);
  v37 = 32;
  sub_26C0688D8(v34, (v30 + 352));
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v55 = v30;
  do
  {
    sub_26C067878(v30 + v37, &v62, &qword_280479360, &qword_26C0AC5D8);
    v59[0] = v62;
    v59[1] = v63;
    v60 = v64;
    if (*(&v63 + 1))
    {
      sub_26C06A3A8(v59, &v56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = sub_26C06A23C(0, v32[2] + 1, 1, v32, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v61 = v32;
      }

      v40 = v32[2];
      v39 = v32[3];
      if (v40 >= v39 >> 1)
      {
        v32 = sub_26C06A23C((v39 > 1), v40 + 1, 1, v32, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v61 = v32;
      }

      v41 = *(&v57 + 1);
      v42 = *&v58[0];
      v43 = __swift_mutable_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
      v44 = *(*(v41 - 8) + 64);
      MEMORY[0x28223BE20](v43);
      v46 = &v50 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v47 + 16))(v46);
      sub_26C06A410(v40, v46, &v61, v41, v42);
      __swift_destroy_boxed_opaque_existential_1(&v56);
      v30 = v55;
    }

    else
    {
      sub_26C06A56C(v59, &qword_280479360, &qword_26C0AC5D8);
    }

    v37 += 40;
  }

  while (v37 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26C0688D8(v32, &v62);

  sub_26C082234(v54, v53);
  sub_26C06A56C(v67, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v68, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v69, &qword_280479360, &qword_26C0AC5D8);
  __swift_destroy_boxed_opaque_existential_1(v70);
  v48 = sub_26C074764(&v62);
  __swift_destroy_boxed_opaque_existential_1(&v62);
  return v48;
}

{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = *a2;
  v13 = a2[1];
  v47 = a2[2];
  v48 = a3;
  v14 = a4[1];
  v50 = *a4;
  v51 = v12;
  v49 = v14;
  v15 = v6[9];
  v75 = v6[8];
  v76 = v15;
  v77 = *(v6 + 20);
  v16 = v6[5];
  v71 = v6[4];
  v72 = v16;
  v17 = v6[7];
  v73 = v6[6];
  v74 = v17;
  v18 = v6[1];
  v67 = *v6;
  v68 = v18;
  v19 = v6[3];
  v69 = v6[2];
  v70 = v19;
  v66[3] = type metadata accessor for Expression();
  v66[4] = &protocol witness table for Expression<A>;
  v66[0] = v9;
  v66[1] = v10;
  v66[2] = v11;
  v20 = *(a6 + 40);

  v21 = v20(a5, a6);
  v23 = v22;
  v65[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v65[4] = &protocol witness table for Expression<A>;
  v65[0] = v51;
  v65[1] = v13;
  v51 = v13;
  v65[2] = v47;
  v24 = *(a6 + 8);
  v64[3] = a5;
  v64[4] = v24;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, v48, a5);
  memset(v63, 0, sizeof(v63));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
  v26 = swift_allocObject();
  sub_26C06B6BC(v66, v26 + 32);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(v26 + 104) = &protocol witness table for Expression<A>;
  *(v26 + 72) = v21;
  *(v26 + 80) = v23;
  v28 = MEMORY[0x277D84F90];
  *(v26 + 88) = MEMORY[0x277D84F90];
  *(v26 + 96) = v27;
  *(v26 + 112) = 0u;
  *(v26 + 128) = 0u;
  *(v26 + 176) = v27;
  *(v26 + 184) = &protocol witness table for Expression<A>;
  *(v26 + 144) = 0;
  *(v26 + 152) = 0x4C4C554E20544F4ELL;
  *(v26 + 160) = 0xE800000000000000;
  *(v26 + 168) = v28;
  *(v26 + 192) = 0u;
  *(v26 + 208) = 0u;
  *(v26 + 224) = 0;
  sub_26C067878(v65, &v58, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v59 + 1))
  {
    sub_26C06A3A8(&v58, &v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_26C0AC580;
    *(v29 + 56) = v27;
    *(v29 + 64) = &protocol witness table for Expression<A>;
    *(v29 + 32) = 0x4B43454843;
    *(v29 + 40) = 0xE500000000000000;
    *(v29 + 48) = v28;
    sub_26C06B6BC(&v52, v29 + 72);

    v31 = v49;
    v30 = v50;
    sub_26C082220(v50, v49);

    sub_26C0688D8(v29, (v26 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v52);
  }

  else
  {
    *(v26 + 264) = 0;
    *(v26 + 248) = 0u;
    *(v26 + 232) = 0u;

    v31 = v49;
    v30 = v50;
    sub_26C082220(v50, v49);
  }

  sub_26C067878(v64, &v58, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v59 + 1))
  {
    sub_26C06A3A8(&v58, &v52);
    *(v26 + 296) = v27;
    *(v26 + 304) = &protocol witness table for Expression<A>;
    sub_26C06E148(&v52, 0x20544C5541464544, 0xE800000000000000, (v26 + 272));
    __swift_destroy_boxed_opaque_existential_1(&v52);
  }

  else
  {
    *(v26 + 304) = 0;
    *(v26 + 272) = 0u;
    *(v26 + 288) = 0u;
  }

  sub_26C067878(v63, &v58, &qword_280479370, &qword_26C0AC5E8);
  if (*(&v59 + 1))
  {
    v54[0] = v60;
    v54[1] = v61;
    v54[2] = v62;
    v52 = v58;
    v53 = v59;
    sub_26C080BEC(&v52, v54 + 8, (v26 + 312));

    sub_26C06A56C(&v52, &qword_280479378, &qword_26C0AC5F0);
  }

  else
  {

    *(v26 + 344) = 0;
    *(v26 + 312) = 0u;
    *(v26 + 328) = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v32 = swift_allocObject();
  *(v32 + 32) = 0x4554414C4C4F43;
  *(v32 + 16) = xmmword_26C0AC580;
  *(v32 + 56) = v27;
  *(v32 + 64) = &protocol witness table for Expression<A>;
  *(v32 + 40) = 0xE700000000000000;
  *(v32 + 48) = v28;
  *(v32 + 96) = &type metadata for Collation;
  *(v32 + 104) = &protocol witness table for Collation;
  *(v32 + 72) = v30;
  *(v32 + 80) = v31;
  sub_26C082220(v30, v31);
  v33 = 32;
  sub_26C0688D8(v32, (v26 + 352));
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v51 = v26;
  do
  {
    sub_26C067878(v26 + v33, &v58, &qword_280479360, &qword_26C0AC5D8);
    v55[0] = v58;
    v55[1] = v59;
    v56 = v60;
    if (*(&v59 + 1))
    {
      sub_26C06A3A8(v55, &v52);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_26C06A23C(0, v28[2] + 1, 1, v28, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v57 = v28;
      }

      v36 = v28[2];
      v35 = v28[3];
      if (v36 >= v35 >> 1)
      {
        v28 = sub_26C06A23C((v35 > 1), v36 + 1, 1, v28, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v57 = v28;
      }

      v37 = *(&v53 + 1);
      v38 = *&v54[0];
      v39 = __swift_mutable_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
      v40 = *(*(v37 - 8) + 64);
      MEMORY[0x28223BE20](v39);
      v42 = &v46 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v43 + 16))(v42);
      sub_26C06A410(v36, v42, &v57, v37, v38);
      __swift_destroy_boxed_opaque_existential_1(&v52);
      v26 = v51;
    }

    else
    {
      sub_26C06A56C(v55, &qword_280479360, &qword_26C0AC5D8);
    }

    v33 += 40;
  }

  while (v33 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26C0688D8(v28, &v58);

  sub_26C082234(v50, v49);
  sub_26C06A56C(v63, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v64, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v65, &qword_280479360, &qword_26C0AC5D8);
  __swift_destroy_boxed_opaque_existential_1(v66);
  v44 = sub_26C074764(&v58);
  __swift_destroy_boxed_opaque_existential_1(&v58);
  return v44;
}

{
  v66 = a3;
  v12 = sub_26C0ABAF0();
  v73 = *(v12 - 8);
  v13 = *(v73 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v64 - v14;
  v17 = *a1;
  v16 = a1[1];
  v18 = a1[2];
  v19 = *a2;
  v64 = a2[1];
  v65 = v19;
  v20 = a2[2];
  v21 = *a4;
  v71 = a4[1];
  v72 = v21;
  v22 = v6[9];
  v99 = v6[8];
  v100 = v22;
  v101 = *(v6 + 20);
  v23 = v6[5];
  v95 = v6[4];
  v96 = v23;
  v24 = v6[7];
  v97 = v6[6];
  v98 = v24;
  v25 = v6[1];
  v91 = *v6;
  v92 = v25;
  v26 = v6[3];
  v93 = v6[2];
  v94 = v26;
  v68 = v27;
  v90[3] = type metadata accessor for Expression();
  v90[4] = &protocol witness table for Expression<A>;
  v90[0] = v17;
  v90[1] = v16;
  v90[2] = v18;
  v28 = *(a6 + 40);

  v29 = v28(a5, a6);
  v30 = v64;
  v67 = v29;
  v69 = v20;
  v70 = v31;
  if (v64)
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
    v33 = &protocol witness table for Expression<A>;
    v34 = v65;
    v35 = v65;
    v36 = v30;
    v37 = v30;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v37 = 0;
    v20 = 0;
    v32 = 0;
    v33 = 0;
    v34 = v65;
  }

  v89[0] = v35;
  v89[1] = v37;
  v89[2] = v20;
  v89[3] = v32;
  v89[4] = v33;
  v38 = v73;
  v39 = v68;
  (*(v73 + 16))(v15, v66, v68);
  v40 = *(a5 - 8);
  if ((*(v40 + 48))(v15, 1, a5) == 1)
  {
    sub_26C06E874(v34, v36);
    (*(v38 + 8))(v15, v39);
    v88 = 0;
    v86 = 0u;
    v87 = 0u;
  }

  else
  {
    v41 = *(a6 + 8);
    *(&v87 + 1) = a5;
    v88 = v41;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v86);
    (*(v40 + 32))(boxed_opaque_existential_1, v15, a5);
    sub_26C06E874(v34, v36);
  }

  v43 = v70;
  memset(v85, 0, sizeof(v85));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
  v44 = swift_allocObject();
  sub_26C06B6BC(v90, v44 + 32);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(v44 + 104) = &protocol witness table for Expression<A>;
  *(v44 + 72) = v67;
  *(v44 + 80) = v43;
  v46 = MEMORY[0x277D84F90];
  *(v44 + 88) = MEMORY[0x277D84F90];
  *(v44 + 96) = v45;
  *(v44 + 112) = 0u;
  *(v44 + 128) = 0u;
  *(v44 + 144) = 0u;
  *(v44 + 160) = 0u;
  *(v44 + 176) = 0u;
  *(v44 + 192) = 0u;
  *(v44 + 208) = 0u;
  *(v44 + 224) = 0;
  sub_26C067878(v89, &v80, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v81 + 1))
  {
    sub_26C06A3A8(&v80, &v74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_26C0AC580;
    *(v47 + 56) = v45;
    *(v47 + 64) = &protocol witness table for Expression<A>;
    *(v47 + 32) = 0x4B43454843;
    *(v47 + 40) = 0xE500000000000000;
    *(v47 + 48) = v46;
    sub_26C06B6BC(&v74, v47 + 72);
    sub_26C082220(v72, v71);

    sub_26C0688D8(v47, (v44 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v74);
  }

  else
  {
    *(v44 + 264) = 0;
    *(v44 + 248) = 0u;
    *(v44 + 232) = 0u;
    sub_26C082220(v72, v71);
  }

  sub_26C067878(&v86, &v80, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v81 + 1))
  {
    sub_26C06A3A8(&v80, &v74);
    *(v44 + 296) = v45;
    *(v44 + 304) = &protocol witness table for Expression<A>;
    sub_26C06E148(&v74, 0x20544C5541464544, 0xE800000000000000, (v44 + 272));
    __swift_destroy_boxed_opaque_existential_1(&v74);
  }

  else
  {
    *(v44 + 304) = 0;
    *(v44 + 272) = 0u;
    *(v44 + 288) = 0u;
  }

  sub_26C067878(v85, &v80, &qword_280479370, &qword_26C0AC5E8);
  if (*(&v81 + 1))
  {
    v76[0] = v82;
    v76[1] = v83;
    v76[2] = v84;
    v74 = v80;
    v75 = v81;
    sub_26C080BEC(&v74, v76 + 8, (v44 + 312));

    sub_26C06A56C(&v74, &qword_280479378, &qword_26C0AC5F0);
  }

  else
  {

    *(v44 + 344) = 0;
    *(v44 + 312) = 0u;
    *(v44 + 328) = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v48 = swift_allocObject();
  *(v48 + 32) = 0x4554414C4C4F43;
  *(v48 + 16) = xmmword_26C0AC580;
  *(v48 + 56) = v45;
  *(v48 + 64) = &protocol witness table for Expression<A>;
  *(v48 + 40) = 0xE700000000000000;
  *(v48 + 48) = v46;
  *(v48 + 96) = &type metadata for Collation;
  *(v48 + 104) = &protocol witness table for Collation;
  v50 = v71;
  v49 = v72;
  *(v48 + 72) = v72;
  *(v48 + 80) = v50;
  sub_26C082220(v49, v50);
  v51 = 32;
  sub_26C0688D8(v48, (v44 + 352));
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v73 = v44;
  do
  {
    sub_26C067878(v44 + v51, &v80, &qword_280479360, &qword_26C0AC5D8);
    v77[0] = v80;
    v77[1] = v81;
    v78 = v82;
    if (*(&v81 + 1))
    {
      sub_26C06A3A8(v77, &v74);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = v46;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v46 = sub_26C06A23C(0, v46[2] + 1, 1, v46, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v79 = v46;
      }

      v54 = v46[2];
      v53 = v46[3];
      if (v54 >= v53 >> 1)
      {
        v46 = sub_26C06A23C((v53 > 1), v54 + 1, 1, v46, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v79 = v46;
      }

      v55 = *(&v75 + 1);
      v56 = *&v76[0];
      v57 = __swift_mutable_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
      v58 = *(*(v55 - 8) + 64);
      MEMORY[0x28223BE20](v57);
      v60 = &v64 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v61 + 16))(v60);
      sub_26C06A410(v54, v60, &v79, v55, v56);
      __swift_destroy_boxed_opaque_existential_1(&v74);
      v44 = v73;
    }

    else
    {
      sub_26C06A56C(v77, &qword_280479360, &qword_26C0AC5D8);
    }

    v51 += 40;
  }

  while (v51 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26C0688D8(v46, &v80);

  sub_26C082234(v72, v71);
  sub_26C06A56C(v85, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(&v86, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v89, &qword_280479360, &qword_26C0AC5D8);
  __swift_destroy_boxed_opaque_existential_1(v90);
  v62 = sub_26C074764(&v80);
  __swift_destroy_boxed_opaque_existential_1(&v80);
  return v62;
}

{
  v60 = a6;
  v62 = a3;
  v11 = sub_26C0ABAF0();
  v59 = *(v11 - 8);
  v12 = *(v59 + 64);
  MEMORY[0x28223BE20](v11);
  v61 = &v56 - v13;
  v14 = *a1;
  v15 = a1[1];
  v16 = a1[2];
  v17 = *a2;
  v57 = a2[1];
  v58 = v17;
  v56 = a2[2];
  v18 = *a4;
  v63 = a4[1];
  v64 = v18;
  v19 = v6[9];
  v91 = v6[8];
  v92 = v19;
  v93 = *(v6 + 20);
  v20 = v6[5];
  v87 = v6[4];
  v88 = v20;
  v21 = v6[7];
  v89 = v6[6];
  v90 = v21;
  v22 = v6[1];
  v83 = *v6;
  v84 = v22;
  v23 = v6[3];
  v85 = v6[2];
  v86 = v23;
  v82[3] = type metadata accessor for Expression();
  v82[4] = &protocol witness table for Expression<A>;
  v82[0] = v14;
  v82[1] = v15;
  v82[2] = v16;
  v24 = v60;
  v25 = *(v60 + 40);

  v26 = v24;
  v27 = v25(a5, v24);
  v28 = v59;
  v65 = v27;
  v30 = v29;
  v81[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v81[4] = &protocol witness table for Expression<A>;
  v31 = v61;
  v81[0] = v58;
  v81[1] = v57;
  v81[2] = v56;
  (*(v28 + 16))(v61, v62, v11);
  v32 = *(a5 - 8);
  if ((*(v32 + 48))(v31, 1, a5) == 1)
  {
    v33 = *(v28 + 8);

    v33(v31, v11);
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
  }

  else
  {
    v34 = *(v26 + 8);
    *(&v79 + 1) = a5;
    v80 = v34;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v78);
    (*(v32 + 32))(boxed_opaque_existential_1, v31, a5);
  }

  memset(v77, 0, sizeof(v77));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
  v36 = swift_allocObject();
  sub_26C06B6BC(v82, v36 + 32);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(v36 + 104) = &protocol witness table for Expression<A>;
  *(v36 + 72) = v65;
  *(v36 + 80) = v30;
  v38 = MEMORY[0x277D84F90];
  *(v36 + 88) = MEMORY[0x277D84F90];
  *(v36 + 96) = v37;
  *(v36 + 112) = 0u;
  *(v36 + 128) = 0u;
  *(v36 + 144) = 0u;
  *(v36 + 160) = 0u;
  *(v36 + 176) = 0u;
  *(v36 + 192) = 0u;
  *(v36 + 208) = 0u;
  *(v36 + 224) = 0;
  sub_26C067878(v81, &v72, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v73 + 1))
  {
    sub_26C06A3A8(&v72, &v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_26C0AC580;
    *(v39 + 56) = v37;
    *(v39 + 64) = &protocol witness table for Expression<A>;
    *(v39 + 32) = 0x4B43454843;
    *(v39 + 40) = 0xE500000000000000;
    *(v39 + 48) = v38;
    sub_26C06B6BC(&v66, v39 + 72);
    sub_26C082220(v64, v63);

    sub_26C0688D8(v39, (v36 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v66);
  }

  else
  {
    *(v36 + 264) = 0;
    *(v36 + 248) = 0u;
    *(v36 + 232) = 0u;
    sub_26C082220(v64, v63);
  }

  sub_26C067878(&v78, &v72, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v73 + 1))
  {
    sub_26C06A3A8(&v72, &v66);
    *(v36 + 296) = v37;
    *(v36 + 304) = &protocol witness table for Expression<A>;
    sub_26C06E148(&v66, 0x20544C5541464544, 0xE800000000000000, (v36 + 272));
    __swift_destroy_boxed_opaque_existential_1(&v66);
  }

  else
  {
    *(v36 + 304) = 0;
    *(v36 + 272) = 0u;
    *(v36 + 288) = 0u;
  }

  sub_26C067878(v77, &v72, &qword_280479370, &qword_26C0AC5E8);
  if (*(&v73 + 1))
  {
    v68[0] = v74;
    v68[1] = v75;
    v68[2] = v76;
    v66 = v72;
    v67 = v73;
    sub_26C080BEC(&v66, v68 + 8, (v36 + 312));

    sub_26C06A56C(&v66, &qword_280479378, &qword_26C0AC5F0);
  }

  else
  {

    *(v36 + 344) = 0;
    *(v36 + 312) = 0u;
    *(v36 + 328) = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v40 = swift_allocObject();
  *(v40 + 32) = 0x4554414C4C4F43;
  *(v40 + 16) = xmmword_26C0AC580;
  *(v40 + 56) = v37;
  *(v40 + 64) = &protocol witness table for Expression<A>;
  *(v40 + 40) = 0xE700000000000000;
  *(v40 + 48) = v38;
  *(v40 + 96) = &type metadata for Collation;
  *(v40 + 104) = &protocol witness table for Collation;
  v42 = v63;
  v41 = v64;
  *(v40 + 72) = v64;
  *(v40 + 80) = v42;
  sub_26C082220(v41, v42);
  v43 = 32;
  sub_26C0688D8(v40, (v36 + 352));
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v65 = v36;
  do
  {
    sub_26C067878(v36 + v43, &v72, &qword_280479360, &qword_26C0AC5D8);
    v69[0] = v72;
    v69[1] = v73;
    v70 = v74;
    if (*(&v73 + 1))
    {
      sub_26C06A3A8(v69, &v66);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = sub_26C06A23C(0, v38[2] + 1, 1, v38, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v71 = v38;
      }

      v46 = v38[2];
      v45 = v38[3];
      if (v46 >= v45 >> 1)
      {
        v38 = sub_26C06A23C((v45 > 1), v46 + 1, 1, v38, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v71 = v38;
      }

      v47 = *(&v67 + 1);
      v48 = *&v68[0];
      v49 = __swift_mutable_project_boxed_opaque_existential_1(&v66, *(&v67 + 1));
      v50 = *(*(v47 - 8) + 64);
      MEMORY[0x28223BE20](v49);
      v52 = &v56 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v53 + 16))(v52);
      sub_26C06A410(v46, v52, &v71, v47, v48);
      __swift_destroy_boxed_opaque_existential_1(&v66);
      v36 = v65;
    }

    else
    {
      sub_26C06A56C(v69, &qword_280479360, &qword_26C0AC5D8);
    }

    v43 += 40;
  }

  while (v43 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26C0688D8(v38, &v72);

  sub_26C082234(v64, v63);
  sub_26C06A56C(v77, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(&v78, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v81, &qword_280479360, &qword_26C0AC5D8);
  __swift_destroy_boxed_opaque_existential_1(v82);
  v54 = sub_26C074764(&v72);
  __swift_destroy_boxed_opaque_existential_1(&v72);
  return v54;
}