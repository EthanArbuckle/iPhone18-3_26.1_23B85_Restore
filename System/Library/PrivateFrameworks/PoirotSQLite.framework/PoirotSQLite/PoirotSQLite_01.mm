unint64_t sub_21AF33EB8(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    v16 = a1;
    v17 = a2;

    if (sqlite3_errmsg(v3))
    {
      v4 = sub_21AF497A0();
      v6 = HIBYTE(v5) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v6 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (v6)
      {
        v15[0] = 8236;
        v15[1] = 0xE200000000000000;
        MEMORY[0x21CEE5D10]();

        MEMORY[0x21CEE5D10](8236, 0xE200000000000000);
      }
    }

    if (qword_27CD3ECD8 != -1)
    {
      swift_once();
    }

    v7 = sub_21AF49690();
    __swift_project_value_buffer(v7, qword_27CD3F1A8);
    v8 = v16;
    v9 = v17;

    v10 = sub_21AF49670();
    v11 = sub_21AF49970();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_21AF39910(v8, v9, v15);
      _os_log_impl(&dword_21AF22000, v10, v11, "%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x21CEE68E0](v13, -1, -1);
      MEMORY[0x21CEE68E0](v12, -1, -1);
    }
  }

  else
  {
    MEMORY[0x21CEE5D10]();
    return 0xD000000000000014;
  }

  return v8;
}

const char *sub_21AF340A4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    result = sqlite3_errmsg(v1);
    if (result)
    {
      return sub_21AF497A0();
    }
  }

  else
  {
    sub_21AF23A54();
    swift_allocError();
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = 4;
    *(v3 + 24) = 9;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_21AF34124()
{
  result = sub_21AF3503C();
  if (!v0)
  {
  }

  return result;
}

void sub_21AF3414C(sqlite3_context *a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    return;
  }

  if (!a3)
  {
    sub_21AF23A54();
    v17 = swift_allocError();
    *v18 = xmmword_21AF4B4C0;
    *(v18 + 16) = 0;
    *(v18 + 24) = 4;
    swift_willThrow();
LABEL_17:
    swift_getErrorValue();
    SQLiteContext.setError<A>(_:message:code:)(v20, 0xD000000000000015, 0x800000021AF4A9A0, -1, v21);

    return;
  }

  if (a2 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v3 = a2;
  if (!a2)
  {
LABEL_26:
    *(MEMORY[0x277D84F90] + 16) = v3;
    __break(1u);
    return;
  }

  v6 = sub_21AF498A0();
  v7 = v6;
  v8 = 0;
  *(v6 + 16) = v3;
  do
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    v10 = *(a3 + 8 * v8);
    if (!v10)
    {
      sub_21AF23A54();
      v17 = swift_allocError();
      *v19 = xmmword_21AF4B4B0;
      *(v19 + 16) = 0;
      *(v19 + 24) = 4;
      swift_willThrow();
      *(v7 + 16) = 0;

      goto LABEL_17;
    }

    *(v6 + 8 * v8++ + 32) = v10;
  }

  while (v9 != v3);
  *(v6 + 16) = v3;
  v11 = *(v6 + 32);
  if (sqlite3_value_type(v11) != 2 && sqlite3_value_type(v11) != 1)
  {
    goto LABEL_19;
  }

  if (*(v7 + 16) < 2uLL)
  {
    goto LABEL_25;
  }

  v12 = *(v7 + 40);
  if (sqlite3_value_type(v12) == 2 || sqlite3_value_type(v12) == 1)
  {
    v13 = sqlite3_value_double(*(v7 + 32));
    v14 = *(v7 + 40);

    v15 = sqlite3_value_double(v14);
    v16 = pow(v13, v15);
  }

  else
  {
LABEL_19:

    v16 = 0.0;
  }

  sqlite3_result_double(a1, v16);
}

void sub_21AF34394(sqlite3_context *a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    return;
  }

  if (!a3)
  {
    sub_21AF23A54();
    v15 = swift_allocError();
    *v16 = xmmword_21AF4B4C0;
    *(v16 + 16) = 0;
    *(v16 + 24) = 4;
    swift_willThrow();
LABEL_14:
    swift_getErrorValue();
    SQLiteContext.setError<A>(_:message:code:)(v18, 0xD000000000000015, 0x800000021AF4A9A0, -1, v19);

    return;
  }

  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v3 = a2;
  if (!a2)
  {
LABEL_22:
    *(MEMORY[0x277D84F90] + 16) = v3;
    __break(1u);
    return;
  }

  v6 = sub_21AF498A0();
  v7 = v6;
  v8 = 0;
  *(v6 + 16) = v3;
  do
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    v10 = *(a3 + 8 * v8);
    if (!v10)
    {
      sub_21AF23A54();
      v15 = swift_allocError();
      *v17 = xmmword_21AF4B4B0;
      *(v17 + 16) = 0;
      *(v17 + 24) = 4;
      swift_willThrow();
      *(v7 + 16) = 0;

      goto LABEL_14;
    }

    *(v6 + 8 * v8++ + 32) = v10;
  }

  while (v9 != v3);
  *(v6 + 16) = v3;
  v11 = *(v6 + 32);
  if (sqlite3_value_type(v11) == 2 || sqlite3_value_type(v11) == 1)
  {
    v12 = *(v7 + 32);

    v13 = sqlite3_value_double(v12);
    v14 = exp(v13);
  }

  else
  {

    v14 = 0.0;
  }

  sqlite3_result_double(a1, v14);
}

uint64_t sub_21AF34588()
{
  v18[1] = *MEMORY[0x277D85DE8];
  if (sqlite3_threadsafe() != 2)
  {
    sub_21AF23A54();
    swift_allocError();
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *v7 = 1;
    v8 = 9;
LABEL_9:
    *(v7 + 24) = v8;
LABEL_10:
    swift_willThrow();
    goto LABEL_11;
  }

  v18[0] = 0;
  v1 = sqlite3_open(":memory:", v18);
  if (v1)
  {
    LODWORD(v0) = v1;
    if (qword_27CD3ECD8 != -1)
    {
      swift_once();
    }

    v2 = sub_21AF49690();
    __swift_project_value_buffer(v2, qword_27CD3F1A8);
    v3 = sub_21AF49670();
    v4 = sub_21AF49970();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = v0;
      _os_log_impl(&dword_21AF22000, v3, v4, "Error %d occurred while opening in-memory db connection", v5, 8u);
      MEMORY[0x21CEE68E0](v5, -1, -1);
    }

    v0 = v0;
    sub_21AF23A54();
    swift_allocError();
    *v6 = v0;
    *(v6 + 8) = 0xD000000000000026;
    *(v6 + 16) = 0x800000021AF4AA20;
    *(v6 + 24) = 0;
    goto LABEL_10;
  }

  v0 = v18[0];
  if (!v18[0])
  {
    if (qword_27CD3ECD8 != -1)
    {
      swift_once();
    }

    v15 = sub_21AF49690();
    __swift_project_value_buffer(v15, qword_27CD3F1A8);
    v16 = sub_21AF49670();
    v17 = sub_21AF49970();
    if (os_log_type_enabled(v16, v17))
    {
      v0 = swift_slowAlloc();
      *v0 = 0;
      _os_log_impl(&dword_21AF22000, v16, v17, "Failed to open in-memory db connection", v0, 2u);
      MEMORY[0x21CEE68E0](v0, -1, -1);
    }

    sub_21AF23A54();
    swift_allocError();
    *v7 = 0xD000000000000026;
    *(v7 + 8) = 0x800000021AF4AA20;
    *(v7 + 16) = 0;
    v8 = 4;
    goto LABEL_9;
  }

  if (qword_27CD3ECD8 != -1)
  {
    swift_once();
  }

  v11 = sub_21AF49690();
  __swift_project_value_buffer(v11, qword_27CD3F1A8);
  v12 = sub_21AF49670();
  v13 = sub_21AF49960();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_21AF22000, v12, v13, "In-memory db connection opened", v14, 2u);
    MEMORY[0x21CEE68E0](v14, -1, -1);
  }

LABEL_11:
  v9 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t sub_21AF34920(uint64_t a1, uint64_t a2, char a3)
{
  ppDb[1] = *MEMORY[0x277D85DE8];
  v6 = sub_21AF495D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v58 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v58 - v15;
  if (sqlite3_threadsafe() != 2)
  {
    sub_21AF23A54();
    swift_allocError();
    *(v33 + 8) = 0;
    *(v33 + 16) = 0;
    *v33 = 1;
    v34 = 9;
LABEL_15:
    *(v33 + 24) = v34;
LABEL_24:
    swift_willThrow();
    goto LABEL_25;
  }

  v61 = v7;
  v62 = v6;
  if (a3)
  {
    v17 = 3145728;
  }

  else
  {
    v17 = 0;
  }

  if (a2)
  {
    v18 = 65537;
  }

  else
  {
    v18 = 65542;
  }

  ppDb[0] = 0;
  sub_21AF495C0();
  v19 = sub_21AF49720();

  a2 = sqlite3_open_v2((v19 + 32), ppDb, v18 | v17, 0);

  if (a2)
  {
    if (qword_27CD3ECD8 != -1)
    {
      swift_once();
    }

    v20 = sub_21AF49690();
    __swift_project_value_buffer(v20, qword_27CD3F1A8);
    v22 = v61;
    v21 = v62;
    (*(v61 + 16))(v11, a1, v62);
    v23 = sub_21AF49670();
    v24 = sub_21AF49970();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v63 = v26;
      *v25 = 67109378;
      *(v25 + 4) = a2;
      *(v25 + 8) = 2080;
      v27 = sub_21AF495C0();
      v28 = v22;
      v30 = v29;
      (*(v28 + 8))(v11, v21);
      v31 = sub_21AF39910(v27, v30, &v63);

      *(v25 + 10) = v31;
      _os_log_impl(&dword_21AF22000, v23, v24, "Error %d occurred while opening db connection: %s", v25, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x21CEE68E0](v26, -1, -1);
      MEMORY[0x21CEE68E0](v25, -1, -1);

      v32 = ppDb[0];
      if (!ppDb[0])
      {
        goto LABEL_23;
      }
    }

    else
    {

      (*(v22 + 8))(v11, v21);
      v32 = ppDb[0];
      if (!ppDb[0])
      {
LABEL_23:
        sub_21AF23A54();
        swift_allocError();
        *v45 = a2;
        *(v45 + 8) = 0xD00000000000001CLL;
        *(v45 + 16) = 0x800000021AF4A9C0;
        *(v45 + 24) = 0;
        goto LABEL_24;
      }
    }

    sub_21AF324C8(v32);
    goto LABEL_23;
  }

  a2 = ppDb[0];
  if (!ppDb[0])
  {
    v49 = v61;
    v48 = v62;
    if (qword_27CD3ECD8 != -1)
    {
      swift_once();
    }

    v50 = sub_21AF49690();
    __swift_project_value_buffer(v50, qword_27CD3F1A8);
    (*(v49 + 16))(v14, a1, v48);
    v51 = sub_21AF49670();
    v52 = sub_21AF49970();
    if (os_log_type_enabled(v51, v52))
    {
      a2 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v63 = v53;
      *a2 = 136315138;
      v54 = sub_21AF495C0();
      v56 = v55;
      (*(v49 + 8))(v14, v48);
      v57 = sub_21AF39910(v54, v56, &v63);

      *(a2 + 4) = v57;
      _os_log_impl(&dword_21AF22000, v51, v52, "Failed to open db connection with no error: %s", a2, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x21CEE68E0](v53, -1, -1);
      MEMORY[0x21CEE68E0](a2, -1, -1);
    }

    else
    {

      (*(v49 + 8))(v14, v48);
    }

    sub_21AF23A54();
    swift_allocError();
    *v33 = 0xD00000000000002ALL;
    *(v33 + 8) = 0x800000021AF4A9E0;
    *(v33 + 16) = 0;
    v34 = 4;
    goto LABEL_15;
  }

  v36 = v61;
  v35 = v62;
  if (qword_27CD3ECD8 != -1)
  {
    swift_once();
  }

  v37 = sub_21AF49690();
  __swift_project_value_buffer(v37, qword_27CD3F1A8);
  (*(v36 + 16))(v16, a1, v35);
  v38 = sub_21AF49670();
  v39 = sub_21AF49960();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v63 = v60;
    *v40 = 136315138;
    v59 = sub_21AF495C0();
    v42 = v41;
    (*(v36 + 8))(v16, v35);
    v43 = sub_21AF39910(v59, v42, &v63);

    *(v40 + 4) = v43;
    _os_log_impl(&dword_21AF22000, v38, v39, "DB connection opened %s", v40, 0xCu);
    v44 = v60;
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x21CEE68E0](v44, -1, -1);
    MEMORY[0x21CEE68E0](v40, -1, -1);
  }

  else
  {

    (*(v36 + 8))(v16, v35);
  }

LABEL_25:
  v46 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_21AF3503C()
{
  v1 = v0;
  function = sqlite3_create_function(*(v0 + 16), "power", 2, 5, 0, sub_21AF34390, 0, 0);
  if (function)
  {
    LODWORD(v7) = function;
    sub_21AF49A60();

    v3 = sub_21AF49B60();
    MEMORY[0x21CEE5D10](v3);

    v4 = sub_21AF33EB8(0xD000000000000021, 0x800000021AF4A950);
    v6 = v5;

    v7 = v7;
LABEL_5:
    sub_21AF23A54();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v4;
    *(v10 + 16) = v6;
    *(v10 + 24) = 0;
    swift_willThrow();
    return v1;
  }

  if (sqlite3_create_function(*(v0 + 16), "exp", 1, 5, 0, sub_21AF34584, 0, 0))
  {
    sub_21AF49A60();

    v8 = sub_21AF49B60();
    MEMORY[0x21CEE5D10](v8);

    v4 = sub_21AF33EB8(0xD00000000000001FLL, 0x800000021AF4A980);
    v6 = v9;

    v7 = 0;
    goto LABEL_5;
  }

  return v1;
}

uint64_t sub_21AF35320(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3EFE8, &unk_21AF4BA90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21AF35390()
{
  result = qword_27CD3EFF0;
  if (!qword_27CD3EFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3EFF0);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21AF35698(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21AF356E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_21AF35740(uint64_t a1, uint64_t a2, sqlite3_context *a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *__s = a1;
      v11 = a2 & 0xFFFFFFFFFFFFFFLL;
      v9 = strlen(__s);
      if (v9 >= 0xFFFFFFFF80000000)
      {
        v3 = v9;
        if (v9 <= 0x7FFFFFFF)
        {
          if (qword_280B23DC8 == -1)
          {
LABEL_12:
            v7 = qword_280B23DC0;
            v8 = __s;
LABEL_13:
            sqlite3_result_text(a3, v8, v3, v7);
            return;
          }

LABEL_19:
          swift_once();
          goto LABEL_12;
        }

        goto LABEL_17;
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = a2 & 0xFFFFFFFFFFFFFFFLL;
      v6 = strlen(((a2 & 0xFFFFFFFFFFFFFFFLL) + 32));
      if (v6 >= 0xFFFFFFFF80000000)
      {
        v3 = v6;
        if (v6 <= 0x7FFFFFFF)
        {
          if (qword_280B23DC8 != -1)
          {
            swift_once();
          }

          v7 = qword_280B23DC0;
          v8 = (v5 + 32);
          goto LABEL_13;
        }

        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

  sub_21AF49A50();
}

Swift::Void __swiftcall SQLiteContext.setError(message:code:)(Swift::String message, Swift::Int32 code)
{
  v4 = *v2;
  v5 = sub_21AF49720();
  sqlite3_result_error(v4, (v5 + 32), code);
}

uint64_t SQLiteContext.setError<A>(_:message:code:)(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  if (sub_21AF49770())
  {
    v23 = a2;
    v24 = a3;

    MEMORY[0x21CEE5D10](8238, 0xE200000000000000);
    v17 = v23;
    v16 = v24;
  }

  else
  {
    v17 = 0;
    v16 = 0xE000000000000000;
  }

  v23 = 0x203A726F727245;
  v24 = 0xE700000000000000;
  (*(v11 + 16))(v14, a1, a5);
  v18 = sub_21AF49700();
  MEMORY[0x21CEE5D10](v18);

  v19 = v23;
  v20 = v24;
  v23 = v17;
  v24 = v16;

  MEMORY[0x21CEE5D10](v19, v20);

  v21 = sub_21AF49720();

  sqlite3_result_error(v15, (v21 + 32), a4);
}

uint64_t sub_21AF35B24()
{
  if (qword_280B23D90 != -1)
  {
    result = swift_once();
  }

  qword_280B23DC0 = qword_280B23DD0;
  return result;
}

void *sub_21AF35BA0@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*result != -1)
  {
    v3 = a2;
    v4 = a3;
    result = swift_once();
    a3 = v4;
    a2 = v3;
  }

  *a3 = *a2;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteContext.setUInt32(_:)(Swift::UInt32 a1)
{
  if ((a1 & 0x80000000) != 0)
  {
    sub_21AF23A54();
    swift_allocError();
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = 8;
    *(v2 + 24) = 9;
    swift_willThrow();
  }

  else
  {
    sqlite3_result_int(*v1, a1);
  }
}

void sub_21AF35DBC(sqlite3_int64 a1)
{
  if (a1 < 0)
  {
    sub_21AF23A54();
    swift_allocError();
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = 8;
    *(v2 + 24) = 9;
    swift_willThrow();
  }

  else
  {
    sqlite3_result_int64(*v1, a1);
  }
}

Swift::Void __swiftcall SQLiteContext.setString(_:)(Swift::String_optional a1)
{
  if (a1.value._object)
  {
    sub_21AF35740(a1.value._countAndFlagsBits, a1.value._object, *v1);
  }

  else
  {
    v2 = *v1;

    sqlite3_result_null(v2);
  }
}

void sub_21AF35EAC(const char *a1, sqlite3_context *a2)
{
  v5 = strlen(a1);
  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = v5;
  if (v5 > 0x7FFFFFFF)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (qword_280B23DC8 != -1)
  {
LABEL_7:
    swift_once();
  }

  sqlite3_result_text(a2, a1, v2, qword_280B23DC0);
}

void SQLiteContext.setData(_:destructor:)(uint64_t a1, unint64_t a2, void (__cdecl **a3)(void *))
{
  v31[2] = *MEMORY[0x277D85DE8];
  v5 = *v3;
  if (a2 >> 60 == 15)
  {
    v6 = *MEMORY[0x277D85DE8];

    sqlite3_result_null(v5);
    return;
  }

  v8 = *a3;
  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      v31[0] = a1;
      LOWORD(v31[1]) = a2;
      BYTE2(v31[1]) = BYTE2(a2);
      BYTE3(v31[1]) = BYTE3(a2);
      BYTE4(v31[1]) = BYTE4(a2);
      v10 = BYTE6(a2);
      BYTE5(v31[1]) = BYTE5(a2);
      v11 = a1;
LABEL_24:
      sqlite3_result_blob(v5, v31, v10, v8);
      sub_21AF36234(v11, a2);
      v29 = *MEMORY[0x277D85DE8];
      return;
    }

    v24 = a1;
    if (a1 <= a1 >> 32)
    {
      v12 = *v3;
      v14 = a1;

      v25 = sub_21AF49580();
      if (v25)
      {
        v26 = v25;
        v27 = sub_21AF495A0();
        if (!__OFSUB__(v24, v27))
        {
          v28 = (v24 - v27 + v26);
          sub_21AF49590();
          if (v28)
          {
            LODWORD(v21) = HIDWORD(v14) - v14;
            if (!__OFSUB__(HIDWORD(v14), v14))
            {
              v22 = v12;
              v23 = v28;
              goto LABEL_22;
            }

            goto LABEL_35;
          }

LABEL_26:
          sqlite3_result_null(v12);
          goto LABEL_27;
        }

        goto LABEL_32;
      }

LABEL_25:
      sub_21AF49590();
      goto LABEL_26;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v9 != 2)
  {
    memset(v31, 0, 14);
    v11 = a1;
    v10 = 0;
    goto LABEL_24;
  }

  v12 = *v3;
  v13 = *(a1 + 16);
  v14 = a1;

  v15 = sub_21AF49580();
  if (!v15)
  {
    goto LABEL_25;
  }

  v16 = v15;
  v17 = sub_21AF495A0();
  if (__OFSUB__(v13, v17))
  {
    goto LABEL_31;
  }

  v18 = (v13 - v17 + v16);
  sub_21AF49590();
  if (!v18)
  {
    goto LABEL_26;
  }

  v19 = *(v14 + 16);
  v20 = *(v14 + 24);
  v21 = v20 - v19;
  if (__OFSUB__(v20, v19))
  {
    goto LABEL_33;
  }

  if (v21 < 0xFFFFFFFF80000000)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  if (v21 > 0x7FFFFFFF)
  {
    goto LABEL_36;
  }

  v22 = v12;
  v23 = v18;
LABEL_22:
  sqlite3_result_blob(v22, v23, v21, v8);
LABEL_27:
  v30 = *MEMORY[0x277D85DE8];

  sub_21AF36234(v14, a2);
}

uint64_t sub_21AF36234(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21AF2C61C(a1, a2);
  }

  return a1;
}

uint64_t sub_21AF36278(uint64_t result, uint64_t a2, void *a3, uint64_t (*a4)(void, uint64_t, uint64_t, void))
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return a4(*v4, result, a2, *a3);
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for SQLiteDestructor(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for SQLiteDestructor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

PoirotSQLite::SQLiteDataType __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteUndefined.getSQLDataType()()
{
  sub_21AF23A54();
  swift_allocError();
  *v0 = 0xD00000000000003ALL;
  *(v0 + 8) = 0x800000021AF4AA50;
  *(v0 + 16) = 0;
  *(v0 + 24) = 4;
  return swift_willThrow();
}

double SQLiteUndefined.unwrapIfOptional()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t static SQLiteUndefined.create(from:at:nullable:)()
{
  sub_21AF23A54();
  swift_allocError();
  *v0 = 0xD000000000000024;
  *(v0 + 8) = 0x800000021AF4AA90;
  *(v0 + 16) = 0;
  *(v0 + 24) = 4;
  return swift_willThrow();
}

uint64_t SQLiteUndefined.bind(to:at:)()
{
  sub_21AF23A54();
  swift_allocError();
  *v0 = 0xD00000000000002FLL;
  *(v0 + 8) = 0x800000021AF4AAC0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 4;
  return swift_willThrow();
}

unint64_t static SQLiteUndefined.create(from:)@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SQLiteUndefined;
  result = sub_21AF23BE4();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_21AF365C0()
{
  sub_21AF23A54();
  swift_allocError();
  *v0 = 0xD00000000000003ALL;
  *(v0 + 8) = 0x800000021AF4AA50;
  *(v0 + 16) = 0;
  *(v0 + 24) = 4;
  return swift_willThrow();
}

double sub_21AF36630@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_21AF36640()
{
  sub_21AF23A54();
  swift_allocError();
  *v0 = 0xD000000000000024;
  *(v0 + 8) = 0x800000021AF4AA90;
  *(v0 + 16) = 0;
  *(v0 + 24) = 4;
  return swift_willThrow();
}

uint64_t sub_21AF366B8()
{
  sub_21AF23A54();
  swift_allocError();
  *v0 = 0xD00000000000002FLL;
  *(v0 + 8) = 0x800000021AF4AAC0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 4;
  return swift_willThrow();
}

unint64_t sub_21AF36794(uint64_t a1)
{
  result = sub_21AF367BC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21AF367BC()
{
  result = qword_27CD3F000;
  if (!qword_27CD3F000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3F000);
  }

  return result;
}

unint64_t sub_21AF36814()
{
  result = qword_27CD3F008;
  if (!qword_27CD3F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3F008);
  }

  return result;
}

void SQLiteStatement.nextRow()(void *a1@<X8>)
{
  v28 = a1;
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[3];
  v26 = v1[2];
  v6 = *(v1 + 48);
  ObjectType = swift_getObjectType();
  v8 = *(v3 + 56);
  swift_unknownObjectRetain();
  v9 = v8(ObjectType, v3);
  if (v2)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = v6;
    v11 = v28;
    if (v9 == 100)
    {
      *v28 = v4;
      v11[1] = v3;
    }

    else
    {
      v12 = v5;
      if (v9 == 101)
      {
        swift_unknownObjectRelease();
        v13 = v28;
        if (v10)
        {
          if (qword_27CD3ECD8 != -1)
          {
            swift_once();
          }

          v14 = sub_21AF49690();
          __swift_project_value_buffer(v14, qword_27CD3F1A8);
          swift_unknownObjectRetain();

          v15 = sub_21AF49670();
          v16 = sub_21AF49950();

          swift_unknownObjectRelease();
          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            v18 = swift_slowAlloc();
            v27 = v18;
            *v17 = 136315138;

            v19 = v16;
            v20 = sub_21AF39910(v26, v12, &v27);

            *(v17 + 4) = v20;
            v13 = v11;
            _os_log_impl(&dword_21AF22000, v15, v19, "SQL statement executed: %s", v17, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v18);
            MEMORY[0x21CEE68E0](v18, -1, -1);
            MEMORY[0x21CEE68E0](v17, -1, -1);
          }
        }

        *v13 = 0;
        v13[1] = 0;
      }

      else
      {
        v21 = v9;
        swift_unknownObjectRelease();
        (*(v3 + 16))(ObjectType, v3);
        sub_21AF49A60();

        MEMORY[0x21CEE5D10](v26, v5);
        v22 = sub_21AF33EB8(0xD000000000000025, 0x800000021AF4AAF0);
        v24 = v23;

        sub_21AF23A54();
        swift_allocError();
        *v25 = v21;
        *(v25 + 8) = v22;
        *(v25 + 16) = v24;
        *(v25 + 24) = 0;
        swift_willThrow();
      }
    }
  }
}

uint64_t SQLiteStatement.bind(_:withName:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a3;
  v7 = *v4;
  v6 = v4[1];
  v8 = v4[3];
  v25 = v4[2];
  v10 = v4[4];
  v9 = v4[5];
  v11 = *(v4 + 48);
  ObjectType = swift_getObjectType();
  result = (*(v6 + 24))(ObjectType, v6);
  if (!v5)
  {
    v21 = v9;
    v22 = v8;
    v14 = result;
    v15 = v29;
    v16 = sub_21AF49720();
    v17 = sqlite3_bind_parameter_index(v14, (v16 + 32));

    if (v17)
    {
      (*(v6 + 32))(v17, ObjectType, v6);
      v18 = a1[3];
      v19 = a1[4];
      v29 = 0;
      __swift_project_boxed_opaque_existential_1(a1, v18);
      v27[0] = v7;
      v27[1] = v6;
      v27[2] = v25;
      v27[3] = v22;
      v27[4] = v10;
      v27[5] = v21;
      v28 = v11;
      (*(v19 + 8))(v27, v17, v18, v19);
      *a4 = v7;
      *(a4 + 8) = v6;
      *(a4 + 16) = v25;
      *(a4 + 24) = v22;
      *(a4 + 32) = v10;
      *(a4 + 40) = v21;
      *(a4 + 48) = v11;
      swift_unknownObjectRetain();
    }

    else
    {
      sub_21AF23A54();
      swift_allocError();
      *v20 = a2;
      *(v20 + 8) = v15;
      *(v20 + 16) = 0;
      *(v20 + 24) = 6;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t SQLiteStatement.bindIfAny(_:withName:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[3];
  v27 = v2[2];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(v2 + 48);
  ObjectType = swift_getObjectType();
  result = (*(v4 + 24))(ObjectType, v4);
  if (!v3)
  {
    v12 = v4;
    v22 = v9;
    v24 = v7;
    v25 = v5;
    v23 = v8;
    v13 = result;
    v14 = sub_21AF49720();
    v15 = sqlite3_bind_parameter_index(v13, (v14 + 32));

    if (v15)
    {
      v16 = v15;
      v17 = v4;
      v18 = v25;
      (*(v4 + 32))(v15, ObjectType, v4);
      v19 = v30;
      v20 = a1[3];
      v21 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v20);
      v28[0] = v25;
      v28[1] = v17;
      v28[2] = v27;
      v28[3] = v6;
      v28[4] = v24;
      v28[5] = v23;
      v29 = v22;
      (*(v21 + 8))(v28, v16, v20, v21);
    }

    else
    {
      v19 = v30;
      v18 = v5;
      v17 = v12;
    }

    *v19 = v18;
    *(v19 + 8) = v17;
    *(v19 + 16) = v27;
    *(v19 + 24) = v6;
    *(v19 + 32) = v24;
    *(v19 + 40) = v23;
    *(v19 + 48) = v22;
    swift_unknownObjectRetain();
  }

  return result;
}

void SQLiteStatement.forEach(_:)(void (*a1)(uint64_t *), uint64_t a2)
{
  v23[3] = a2;
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v2[5];
  v11 = *(v2 + 48);
  v16 = *v2;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  SQLiteStatement.nextRow()(v23);
  if (!v3)
  {
    v15 = v5;
    v12 = v10;
    while (v23[0])
    {
      if (!v12)
      {
        sub_21AF23A54();
        swift_allocError();
        *(v14 + 8) = 0;
        *(v14 + 16) = 0;
        *v14 = 2;
        *(v14 + 24) = 9;
        swift_willThrow();
        swift_unknownObjectRelease();
        return;
      }

      v16 = v23[0];
      v17 = v23[1];
      a1(&v16);
      swift_unknownObjectRelease();
      --v12;
      v16 = v15;
      v17 = v6;
      v18 = v7;
      v19 = v8;
      v20 = v9;
      v21 = v10;
      v22 = v11;
      SQLiteStatement.nextRow()(v23);
    }

    if (v10 < v12)
    {
      __break(1u);
    }

    else if (v10 - v12 < v9)
    {
      sub_21AF23A54();
      swift_allocError();
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      *v13 = 5;
      *(v13 + 24) = 9;
      swift_willThrow();
    }
  }
}

void SQLiteStatement.reduce<A>(into:handleRow:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v15 = v5[1];
  v10 = *(v5 + 4);
  v11 = *(v5 + 5);
  v12 = *(v5 + 48);
  v13 = *(a4 - 8);
  (*(v13 + 16))(a5, a1, a4);
  v21 = *v5;
  v22 = v15;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v17 = a4;
  v18 = a2;
  v19 = a3;
  v20 = a5;
  v14 = v26;
  SQLiteStatement.forEach(_:)(sub_21AF399DC, v16);
  if (v14)
  {
    (*(v13 + 8))(a5, a4);
  }
}

double SQLiteStatement.init(database:statement:sqlString:verboseLog:)@<D0>(uint64_t a1@<X0>, sqlite3_stmt *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v11 = sub_21AF39E8C(a1, a2);
  v13 = v12;

  if (v6)
  {
  }

  else
  {
    *a6 = v11;
    *(a6 + 8) = v13;
    *(a6 + 16) = a3;
    *(a6 + 24) = a4;
    result = 0.0;
    *(a6 + 32) = xmmword_21AF4B260;
    *(a6 + 48) = a5 & 1;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteStatement.execute()()
{
  v2 = *(v0 + 32);
  v8[1] = *(v0 + 16);
  v9 = v2;
  v8[0] = *v0;
  v10 = *(v0 + 48);
  v3 = *(&v2 + 1);
  SQLiteStatement.nextRow()(&v7);
  if (!v1)
  {
    v4 = v3;
    while (v7)
    {
      if (!v4)
      {
        sub_21AF23A54();
        swift_allocError();
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
        *v6 = 2;
        *(v6 + 24) = 9;
        swift_willThrow();
        swift_unknownObjectRelease();
        return;
      }

      sub_21AF3889C(&v7, v8);
      swift_unknownObjectRelease();
      --v4;
      SQLiteStatement.nextRow()(&v7);
    }

    if (v3 < v4)
    {
      __break(1u);
    }

    else if (v3 - v4 < v9)
    {
      sub_21AF23A54();
      swift_allocError();
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *v5 = 5;
      *(v5 + 24) = 9;
      swift_willThrow();
    }
  }
}

uint64_t sub_21AF373CC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    sqlite3_finalize(v1);
  }

  v2 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_21AF37410()
{
  v1 = *(v0 + 16);
  if (!v1 || !*(v1 + 16))
  {
    v3 = 4;
LABEL_6:
    sub_21AF23A54();
    swift_allocError();
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *v4 = v3;
    *(v4 + 24) = 9;
    return swift_willThrow();
  }

  result = *(v0 + 24);
  if (!result)
  {
    v3 = 3;
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_21AF37494()
{
  v0 = sub_21AF49B60();
  MEMORY[0x21CEE5D10](v0);

  sub_21AF23A54();
  swift_allocError();
  *v1 = 0x7865646E69207441;
  *(v1 + 8) = v3;
  *(v1 + 16) = 0;
  *(v1 + 24) = 5;
  return swift_willThrow();
}

uint64_t sub_21AF3754C()
{
  sub_21AF49AF0();
  MEMORY[0x21CEE5D10](3026478, 0xE300000000000000);
  sub_21AF49AF0();
  MEMORY[0x21CEE5D10](0, 0xE000000000000000);

  sub_21AF23A54();
  swift_allocError();
  *v0 = 0x7865646E69207441;
  *(v0 + 8) = 0xEB00000000207365;
  *(v0 + 16) = 0;
  *(v0 + 24) = 5;
  return swift_willThrow();
}

uint64_t sub_21AF37658()
{
  v1 = *(v0 + 16);
  if (!v1 || !*(v1 + 16))
  {
    sub_21AF23A54();
    swift_allocError();
    v11 = 4;
LABEL_11:
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *v10 = v11;
    *(v10 + 24) = 9;
    return swift_willThrow();
  }

  v2 = *(v0 + 24);
  if (!v2)
  {
    sub_21AF23A54();
    swift_allocError();
    v11 = 3;
    goto LABEL_11;
  }

  result = sqlite3_reset(v2);
  if (!result)
  {
    return result;
  }

  v4 = result;
  if (qword_27CD3ECD8 != -1)
  {
    swift_once();
  }

  v5 = sub_21AF49690();
  __swift_project_value_buffer(v5, qword_27CD3F1A8);
  v6 = sub_21AF49670();
  v7 = sub_21AF49970();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v4;
    _os_log_impl(&dword_21AF22000, v6, v7, "Failed to reset a statement with error: %d", v8, 8u);
    MEMORY[0x21CEE68E0](v8, -1, -1);
  }

  sub_21AF23A54();
  swift_allocError();
  *v9 = v4;
  *(v9 + 8) = 0xD000000000000010;
  *(v9 + 16) = 0x800000021AF4ABF0;
  *(v9 + 24) = 0;
  return swift_willThrow();
}

uint64_t sub_21AF37818()
{
  v1 = *(v0 + 16);
  if (v1 && *(v1 + 16))
  {
    v2 = *(v0 + 24);
    if (v2)
    {
      return sqlite3_step(v2);
    }

    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

  sub_21AF23A54();
  swift_allocError();
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = v4;
  *(v5 + 24) = 9;
  return swift_willThrow();
}

uint64_t sub_21AF378C4()
{
  v1 = *(v0 + 16);
  if (v1 && *(v1 + 16))
  {
  }

  sub_21AF23A54();
  swift_allocError();
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *v3 = 4;
  *(v3 + 24) = 9;
  return swift_willThrow();
}

uint64_t sub_21AF37A38(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21AF49660();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCV12PoirotSQLite15SQLiteStatement16BoundableContext_unboundParams;
  swift_beginAccess();
  (*(v5 + 16))(v8, v2 + v9, v4);
  v10 = sub_21AF49640();
  (*(v5 + 8))(v8, v4);
  if (v10)
  {
    swift_beginAccess();
    sub_21AF49610();
    return swift_endAccess();
  }

  else
  {
    v17 = 0x7865646E69207441;
    v18 = 0xEA0000000000203ALL;
    v19 = a1;
    v12 = sub_21AF49B60();
    MEMORY[0x21CEE5D10](v12);

    v13 = v17;
    v14 = v18;
    sub_21AF23A54();
    swift_allocError();
    *v15 = v13;
    *(v15 + 8) = v14;
    *(v15 + 16) = 0;
    *(v15 + 24) = 8;
    return swift_willThrow();
  }
}

uint64_t sub_21AF37C14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21AF49660();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV12PoirotSQLite15SQLiteStatement16BoundableContext_unboundParams;
  swift_beginAccess();
  (*(v7 + 16))(v10, v3 + v11, v6);
  v18[0] = a1;
  v18[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F020, &qword_21AF4BDB8);
  sub_21AF3A338();
  v12 = sub_21AF49630();
  (*(v7 + 8))(v10, v6);
  if (v12)
  {
    swift_beginAccess();
    sub_21AF49600();
    return swift_endAccess();
  }

  else
  {
    strcpy(v18, "At indexes: ");
    BYTE5(v18[1]) = 0;
    HIWORD(v18[1]) = -5120;
    v22 = a1;
    v19 = 0;
    v20 = 0xE000000000000000;
    v21 = a2;
    sub_21AF49AF0();
    MEMORY[0x21CEE5D10](3026478, 0xE300000000000000);
    sub_21AF49AF0();
    MEMORY[0x21CEE5D10](v19, v20);

    v14 = v18[0];
    v15 = v18[1];
    sub_21AF23A54();
    swift_allocError();
    *v16 = v14;
    *(v16 + 8) = v15;
    *(v16 + 16) = 0;
    *(v16 + 24) = 8;
    return swift_willThrow();
  }
}

uint64_t sub_21AF37E80()
{
  v2 = v0;
  v3 = sub_21AF49660();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  result = sub_21AF37658();
  if (v1)
  {
    return result;
  }

  v12 = v0[2];
  if (!v12 || !*(v12 + 16))
  {
LABEL_12:
    v17 = 4;
LABEL_13:
    sub_21AF23A54();
    swift_allocError();
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *v18 = v17;
    *(v18 + 24) = 9;
    return swift_willThrow();
  }

  v13 = v0[3];
  if (!v13)
  {
    v17 = 3;
    goto LABEL_13;
  }

  v20[0] = 0;
  result = sqlite3_clear_bindings(v13);
  v14 = v0[4];
  if (v14)
  {
    if (v14 < 1)
    {
      __break(1u);
      return result;
    }

    sub_21AF3A2F4(&qword_27CD3F018);
    sub_21AF49A20();
    v15 = 1;
    while (1)
    {
      v20[5] = v15;
      sub_21AF49A10();
      if (v14 == v15)
      {
        break;
      }

      if (__OFADD__(v15++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    (*(v4 + 32))(v10, v8, v3);
  }

  else
  {
    sub_21AF49650();
  }

  v19 = OBJC_IVAR____TtCV12PoirotSQLite15SQLiteStatement16BoundableContext_unboundParams;
  swift_beginAccess();
  (*(v4 + 40))(v2 + v19, v10, v3);
  return swift_endAccess();
}

uint64_t sub_21AF380D0()
{
  v1 = v0;
  v2 = sub_21AF49660();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtCV12PoirotSQLite15SQLiteStatement16BoundableContext_unboundParams;
  swift_beginAccess();
  v8 = v3[2];
  v8(v6, v0 + v7, v2);
  v9 = sub_21AF49620();
  v22 = v3[1];
  v22(v6, v2);
  if (v9)
  {
    v10 = *(v1 + 16);
    if (v10 && *(v10 + 16))
    {
      v11 = *(v1 + 24);
      if (v11)
      {
        return sqlite3_step(v11);
      }

      sub_21AF23A54();
      swift_allocError();
      v18 = 3;
    }

    else
    {
      sub_21AF23A54();
      swift_allocError();
      v18 = 4;
    }

    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    *v16 = v18;
    v17 = 9;
  }

  else
  {
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_21AF49A60();

    v20 = 0xD00000000000001BLL;
    v21 = 0x800000021AF4ABD0;
    v8(v6, v1 + v7, v2);
    sub_21AF3A2F4(&qword_27CD3F010);
    v13 = sub_21AF49B60();
    MEMORY[0x21CEE5D10](v13);

    v22(v6, v2);
    v14 = v20;
    v15 = v21;
    sub_21AF23A54();
    swift_allocError();
    *v16 = v14;
    *(v16 + 8) = v15;
    *(v16 + 16) = 0;
    v17 = 7;
  }

  *(v16 + 24) = v17;
  return swift_willThrow();
}

uint64_t sub_21AF38364()
{
  v1 = OBJC_IVAR____TtCV12PoirotSQLite15SQLiteStatement16BoundableContext_unboundParams;
  v2 = sub_21AF49660();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_21AF383CC()
{
  v1 = *(v0 + 3);
  if (v1)
  {
    sqlite3_finalize(v1);
  }

  v2 = *(v0 + 2);

  v3 = OBJC_IVAR____TtCV12PoirotSQLite15SQLiteStatement16BoundableContext_unboundParams;
  v4 = sub_21AF49660();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t SQLiteStatement.paramCount.getter()
{
  v1 = *v0;
  v2 = v0[1];
  ObjectType = swift_getObjectType();
  return (*(v2 + 8))(ObjectType, v2);
}

uint64_t SQLiteStatement.bind(_:at:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  v18 = v3[4];
  v22 = v3[5];
  v19 = *(v3 + 48);
  ObjectType = swift_getObjectType();
  result = (*(v9 + 32))(a2, ObjectType, v9);
  if (!v4)
  {
    v17 = a3;
    v15 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);
    v20[0] = v8;
    v20[1] = v9;
    v20[2] = v10;
    v20[3] = v11;
    v20[4] = v18;
    v20[5] = v22;
    v21 = v19;
    (*(v14 + 8))(v20, a2, v15, v14);
    *v17 = v8;
    *(v17 + 8) = v9;
    *(v17 + 16) = v10;
    *(v17 + 24) = v11;
    v16 = v22;
    *(v17 + 32) = v18;
    *(v17 + 40) = v16;
    *(v17 + 48) = v19;
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t SQLiteStatement.bind(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 2);
  v6 = *(v2 + 3);
  v7 = v2[2];
  v8 = *(v2 + 48);
  return SQLiteStatement.bind(_:)(a1, a2);
}

{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = *v2;
    v7 = v2[1];
    v19 = v2[2];
    v22 = v2[3];
    v17 = v2[5];
    v18 = v2[4];
    v8 = (a1 + 32);
    v16 = *(v2 + 48);
    while (1)
    {
      ++v5;
      v10 = v8[3];
      v9 = v8[4];
      __swift_project_boxed_opaque_existential_1(v8, v10);
      v20[0] = v6;
      v20[1] = v7;
      v20[2] = v19;
      v20[3] = v22;
      v20[4] = v18;
      v20[5] = v17;
      v21 = v16;
      result = (*(v9 + 8))(v20, v5, v10, v9);
      if (v3)
      {
        break;
      }

      v8 += 5;
      if (v4 == v5)
      {
        ObjectType = swift_getObjectType();
        (*(v7 + 40))(1, v4, ObjectType, v7);
        *a2 = v6;
        *(a2 + 8) = v7;
        v13 = v22;
        *(a2 + 16) = v19;
        *(a2 + 24) = v13;
        *(a2 + 32) = v18;
        *(a2 + 40) = v17;
        *(a2 + 48) = v16;
        swift_unknownObjectRetain();
      }
    }
  }

  else
  {
    sub_21AF23A54();
    swift_allocError();
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *v14 = 7;
    *(v14 + 24) = 9;
    return swift_willThrow();
  }

  return result;
}

uint64_t SQLiteStatement.reset()@<X0>(uint64_t a1@<X8>)
{
  v5 = *v1;
  v4 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v12 = *(v1 + 48);
  ObjectType = swift_getObjectType();
  result = (*(v4 + 48))(ObjectType, v4);
  if (!v2)
  {
    *a1 = v5;
    *(a1 + 8) = v4;
    *(a1 + 16) = v7;
    *(a1 + 24) = v6;
    *(a1 + 32) = v8;
    *(a1 + 40) = v9;
    *(a1 + 48) = v12;
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_21AF3889C(uint64_t a1, uint64_t a2)
{
  if (qword_27CD3ECD8 != -1)
  {
    swift_once();
  }

  v3 = sub_21AF49690();
  __swift_project_value_buffer(v3, qword_27CD3F1A8);
  sub_21AF2B9B0(a2, v10);
  v4 = sub_21AF49670();
  v5 = sub_21AF49970();
  sub_21AF2C5C8(a2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_21AF39910(*(a2 + 16), *(a2 + 24), v10);
    _os_log_impl(&dword_21AF22000, v4, v5, "Unexpected result: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CEE68E0](v7, -1, -1);
    MEMORY[0x21CEE68E0](v6, -1, -1);
  }

  sub_21AF23A54();
  swift_allocError();
  *v8 = xmmword_21AF4BCF0;
  *(v8 + 16) = 0x800000021AF4AC10;
  *(v8 + 24) = 0;
  return swift_willThrow();
}

void SQLiteStatement.executeAndReset()(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + 48);
  SQLiteStatement.execute()();
  if (!v10)
  {
    ObjectType = swift_getObjectType();
    (*(v4 + 48))(ObjectType, v4);
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v6;
    *(a1 + 24) = v5;
    *(a1 + 32) = v7;
    *(a1 + 40) = v8;
    *(a1 + 48) = v9;
    swift_unknownObjectRetain();
  }
}

uint64_t SQLiteStatement.singleRowIfAny<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = *(v4 + 2);
  v10 = *(v4 + 3);
  (*(*(a3 - 8) + 56))(a4, 1, 1, a3);
  v19 = *v4;
  v20 = v11;
  v21 = v10;
  v22 = xmmword_21AF4B8D0;
  v23 = 0;
  v15 = a3;
  v16 = a4;
  v17 = a1;
  v18 = a2;

  swift_unknownObjectRetain();
  SQLiteStatement.forEach(_:)(sub_21AF3A098, v14);

  if (!v5)
  {
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  v12 = sub_21AF49990();
  return (*(*(v12 - 8) + 8))(a4, v12);
}

uint64_t sub_21AF38C4C(__int128 *a1, uint64_t a2, uint64_t (*a3)(__int128 *), uint64_t a4, uint64_t a5)
{
  v10 = sub_21AF49990();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v16 - v13;
  v16 = *a1;
  result = a3(&v16);
  if (!v5)
  {
    (*(*(a5 - 8) + 56))(v14, 0, 1, a5);
    return (*(v11 + 40))(a2, v14, v10);
  }

  return result;
}

uint64_t SQLiteStatement.singleRow<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v9 = sub_21AF49990();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v4 + 2);
  v18 = *(v4 + 3);
  v19 = *(v4 + 48);
  v26 = *v4;
  v27 = v17;
  v28 = v18;
  v29 = v4[2];
  v30 = v19;
  result = SQLiteStatement.singleRowIfAny<A>(_:)(a1, a2, a3, &v26 - v15);
  if (!v5)
  {
    v21 = v31;
    (*(v10 + 16))(v14, v16, v9);
    v22 = *(a3 - 8);
    v23 = (*(v22 + 48))(v14, 1, a3);
    v24 = *(v10 + 8);
    if (v23 == 1)
    {
      v24(v14, v9);
      sub_21AF23A54();
      swift_allocError();
      *(v25 + 8) = 0;
      *(v25 + 16) = 0;
      *v25 = 5;
      *(v25 + 24) = 9;
      swift_willThrow();
      return (v24)(v16, v9);
    }

    else
    {
      v24(v16, v9);
      return (*(v22 + 32))(v21, v14, a3);
    }
  }

  return result;
}

void SQLiteStatement.iterate(_:)(uint64_t (*a1)(__int128 *), uint64_t a2)
{
  v22 = a2;
  v14 = *v2;
  v4 = *(v2 + 2);
  v5 = *(v2 + 3);
  v7 = *(v2 + 4);
  v6 = *(v2 + 5);
  v8 = *(v2 + 48);
  v9 = v6;
  do
  {
    v15 = v14;
    v16 = v4;
    v17 = v5;
    v18 = v7;
    v19 = v6;
    v20 = v8;
    SQLiteStatement.nextRow()(&v21);
    if (v3)
    {
      break;
    }

    if (!v21)
    {
      if (v6 < v9)
      {
        __break(1u);
      }

      else if (v6 - v9 < v7)
      {
        sub_21AF23A54();
        swift_allocError();
        *(v11 + 8) = 0;
        *(v11 + 16) = 0;
        *v11 = 5;
        *(v11 + 24) = 9;
        swift_willThrow();
      }

      return;
    }

    if (!v9)
    {
      sub_21AF23A54();
      swift_allocError();
      *(v12 + 8) = 0;
      *(v12 + 16) = 0;
      *v12 = 2;
      *(v12 + 24) = 9;
      swift_willThrow();
      swift_unknownObjectRelease();
      return;
    }

    v15 = v21;
    v10 = a1(&v15);
    swift_unknownObjectRelease();
    --v9;
  }

  while ((v10 & 1) != 0);
}

void SQLiteStatement.reduce<A>(_:handleRow:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v15 = v5[1];
  v10 = *(v5 + 4);
  v11 = *(v5 + 5);
  v12 = *(v5 + 48);
  v13 = *(a4 - 8);
  (*(v13 + 16))(a5, a1, a4);
  v21 = *v5;
  v22 = v15;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v17 = a4;
  v18 = a5;
  v19 = a2;
  v20 = a3;
  v14 = v26;
  SQLiteStatement.forEach(_:)(sub_21AF3A0B8, v16);
  if (v14)
  {
    (*(v13 + 8))(a5, a4);
  }
}

uint64_t sub_21AF39284(__int128 *a1, uint64_t a2, void (*a3)(char *, __int128 *), uint64_t a4, uint64_t a5)
{
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = (MEMORY[0x28223BE20])();
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v18 - v15;
  (*(v10 + 16))(v14);
  v18 = *a1;
  a3(v14, &v18);
  result = (*(v10 + 8))(v14, a5);
  if (!v5)
  {
    return (*(v10 + 40))(a2, v16, a5);
  }

  return result;
}

uint64_t SQLiteStatement.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 2);
  v5 = *(v3 + 3);
  v6 = *(v3 + 48);
  v9 = *v3;
  v10 = v4;
  v11 = v5;
  v12 = v3[2];
  v13 = v6;
  v8[2] = a3;
  v8[3] = a1;
  v8[4] = a2;
  return SQLiteStatement.compactMap<A>(_:)(sub_21AF3A0D8, v8, a3);
}

uint64_t sub_21AF39458@<X0>(__int128 *a1@<X0>, uint64_t (*a2)(__int128 *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *a1;
  result = a2(&v8);
  if (!v4)
  {
    return (*(*(a3 - 8) + 56))(a4, 0, 1, a3);
  }

  return result;
}

uint64_t SQLiteStatement.compactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = v3[1];
  v8 = *(v3 + 4);
  v9 = *(v3 + 5);
  v10 = *(v3 + 48);
  v24 = sub_21AF49890();
  v19 = *v3;
  v20 = v13;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v15 = a3;
  v16 = a1;
  v17 = a2;
  v18 = &v24;
  SQLiteStatement.forEach(_:)(sub_21AF3A0F8, v14);
  v11 = v24;
  if (v4)
  {
  }

  return v11;
}

uint64_t sub_21AF395B4(__int128 *a1, uint64_t (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[1] = a4;
  v9 = sub_21AF49990();
  v23[0] = *(v9 - 8);
  v10 = *(v23[0] + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v23 - v12;
  v25 = *(a5 - 8);
  v14 = *(v25 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v23 - v18;
  v24 = *a1;
  result = a2(&v24);
  if (!v5)
  {
    v21 = v23[0];
    v22 = v25;
    if ((*(v25 + 48))(v13, 1, a5) == 1)
    {
      return (*(v21 + 8))(v13, v9);
    }

    else
    {
      (*(v22 + 32))(v19, v13, a5);
      (*(v22 + 16))(v17, v19, a5);
      sub_21AF498D0();
      sub_21AF498C0();
      return (*(v22 + 8))(v19, a5);
    }
  }

  return result;
}

uint64_t SQLiteStatement.expect(minRows:maxRows:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 24);
  *(a3 + 16) = *(v3 + 16);
  *(a3 + 24) = v4;
  *a3 = *v3;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
  *(a3 + 48) = 0;

  return swift_unknownObjectRetain();
}

uint64_t SQLiteStatement.dontExpectRows()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 24) = v2;
  *a1 = *v1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;

  return swift_unknownObjectRetain();
}

uint64_t sub_21AF398BC@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = *(v2 + 24);
  *(a1 + 16) = *(v2 + 16);
  *(a1 + 24) = v3;
  *a1 = *v2;
  *(a1 + 32) = a2;
  *(a1 + 48) = 0;

  return swift_unknownObjectRetain();
}

uint64_t sub_21AF39910(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21AF39A24(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_21AF3A39C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_21AF399DC(__int128 *a1)
{
  v3 = v1[3];
  v2 = v1[4];
  v4 = v1[5];
  v6 = *a1;
  return v3(v4, &v6);
}

unint64_t sub_21AF39A24(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21AF39B30(a5, a6);
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
    result = sub_21AF49A80();
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

uint64_t sub_21AF39B30(uint64_t a1, unint64_t a2)
{
  v4 = sub_21AF39B7C(a1, a2);
  sub_21AF39CAC(&unk_282C86198);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_21AF39B7C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_21AF406D8(v5, 0);
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

  result = sub_21AF49A80();
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
        v10 = sub_21AF497C0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21AF406D8(v10, 0);
        result = sub_21AF49A40();
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

uint64_t sub_21AF39CAC(uint64_t result)
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

  result = sub_21AF39D98(result, v12, 1, v3);
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

char *sub_21AF39D98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F030, &unk_21AF4BDC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_21AF39E8C(uint64_t a1, sqlite3_stmt *a2)
{
  v5 = sub_21AF49660();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = sqlite3_bind_parameter_count(a2);
  if (!v13)
  {
    type metadata accessor for SQLiteStatement.Context();
    v19 = swift_allocObject();
LABEL_7:
    *(v19 + 16) = a1;
    *(v19 + 24) = a2;

    return v19;
  }

  v14 = v13;
  v15 = type metadata accessor for SQLiteStatement.BoundableContext();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  result = swift_allocObject();
  *(result + 32) = v14;
  if (v14 >= 1)
  {
    v19 = result;
    v23 = a2;
    v24 = a1;
    v25 = v2;
    sub_21AF3A2F4(&qword_27CD3F018);
    sub_21AF49A20();
    v20 = -v14;
    v21 = 1;
    do
    {
      v26 = v21;
      sub_21AF49A10();
      ++v21;
    }

    while (v20 + v21 != 1);
    v22 = *(v6 + 32);
    v22(v12, v10, v5);
    v22((v19 + OBJC_IVAR____TtCV12PoirotSQLite15SQLiteStatement16BoundableContext_unboundParams), v12, v5);
    a1 = v24;
    a2 = v23;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21AF3A134(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_21AF3A17C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t type metadata accessor for SQLiteStatement.BoundableContext()
{
  result = qword_280B236A8;
  if (!qword_280B236A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AF3A254()
{
  result = sub_21AF49660();
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

uint64_t sub_21AF3A2F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21AF49660();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21AF3A338()
{
  result = qword_27CD3F028;
  if (!qword_27CD3F028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD3F020, &qword_21AF4BDB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3F028);
  }

  return result;
}

uint64_t sub_21AF3A39C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t String.init(with:column:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 24))(ObjectType, v5);
  result = swift_unknownObjectRelease();
  if (!v2)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      result = sqlite3_column_text(v7, a2);
      if (result)
      {
        return sub_21AF497B0();
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21AF3A520@<X0>(uint64_t (*a1)(void)@<X5>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t RawRepresentable<>.init(with:column:)@<X0>(__int128 *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a6;
  v47 = a2;
  v10 = sub_21AF49990();
  v41 = *(v10 - 8);
  v42 = v10;
  v11 = *(v41 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - v12;
  v43 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_21AF49990();
  v44 = *(v15 - 8);
  v16 = *(v44 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  v45 = *(AssociatedTypeWitness - 8);
  v20 = *(v45 + 64);
  v21 = MEMORY[0x28223BE20](v17);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v40 - v24;
  v48 = *a1;
  v26 = v49;
  result = (*(a5 + 16))(&v48, v47, AssociatedTypeWitness, a5);
  if (!v26)
  {
    v28 = a3;
    v49 = 0;
    v30 = v44;
    v29 = v45;
    if ((*(v45 + 48))(v19, 1, AssociatedTypeWitness) == 1)
    {
      (*(v30 + 8))(v19, v15);
      return (*(*(v28 - 8) + 56))(v46, 1, 1, v28);
    }

    else
    {
      (*(v29 + 32))(v25, v19, AssociatedTypeWitness);
      v31 = *(v29 + 16);
      v47 = v25;
      v31(v23, v25, AssociatedTypeWitness);
      v32 = v28;
      sub_21AF49880();
      v33 = *(v28 - 8);
      v34 = (*(v33 + 48))(v13, 1, v32);
      v35 = v46;
      if (v34 == 1)
      {
        (*(v41 + 8))(v13, v42);
        *&v48 = 0;
        *(&v48 + 1) = 0xE000000000000000;
        sub_21AF49A60();
        MEMORY[0x21CEE5D10](0xD000000000000011, 0x800000021AF4A710);
        v36 = sub_21AF49C50();
        MEMORY[0x21CEE5D10](v36);

        MEMORY[0x21CEE5D10](0xD000000000000018, 0x800000021AF4A730);
        v37 = v47;
        sub_21AF49B80();
        v38 = v48;
        sub_21AF23A54();
        swift_allocError();
        *v39 = v38;
        *(v39 + 16) = 0;
        *(v39 + 24) = 4;
        swift_willThrow();
        return (*(v29 + 8))(v37, AssociatedTypeWitness);
      }

      else
      {
        (*(v29 + 8))(v47, AssociatedTypeWitness);
        (*(v33 + 32))(v35, v13, v32);
        return (*(v33 + 56))(v35, 0, 1, v32);
      }
    }
  }

  return result;
}

uint64_t sub_21AF3AA18(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 24);
  swift_unknownObjectRetain();
  v8 = v7(ObjectType, v5);
  result = swift_unknownObjectRelease();
  if (v2)
  {
    return swift_unknownObjectRelease();
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v10 = sqlite3_column_blob(v8, a2);
  if (v10)
  {
    v11 = v10;
    swift_unknownObjectRelease();
    v12 = sqlite3_column_bytes(v8, a2);
    return sub_21AF2A19C(v11, v12);
  }

  else
  {
    SQLiteRow.type(at:)(a2);
    result = swift_unknownObjectRelease();
    if (!v13)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_21AF3AB54(uint64_t a1)
{
  result = sub_21AF23C38();
  *(a1 + 8) = result;
  return result;
}

uint64_t SQLiteVTab.init(style:)(char *a1)
{
  v2 = *a1;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 40) = v2;
  *(v1 + 32) = swift_slowAlloc();
  v3 = (*(*v1 + 256))();
  v4 = *(v1 + 40);
  v5 = sub_21AF3C58C;
  if (!*(v1 + 40))
  {
    goto LABEL_4;
  }

  if (v4 == 1)
  {
    v5 = sub_21AF3C588;
LABEL_4:
    v6 = v5;
    goto LABEL_6;
  }

  v6 = 0;
LABEL_6:
  if (v4 >= 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_21AF3B8F8;
  }

  v8 = *(v1 + 32);
  *v8 = v3;
  *(v8 + 4) = 0;
  *(v8 + 8) = v6;
  *(v8 + 16) = sub_21AF3C588;
  *(v8 + 24) = sub_21AF3B87C;
  *(v8 + 32) = sub_21AF3B8F8;
  *(v8 + 40) = v7;
  *(v8 + 48) = sub_21AF3BA6C;
  *(v8 + 56) = sub_21AF3BA70;
  *(v8 + 64) = sub_21AF3BC00;
  *(v8 + 72) = sub_21AF3BC04;
  *(v8 + 80) = sub_21AF3BCB0;
  *(v8 + 88) = sub_21AF3BD3C;
  *(v8 + 96) = sub_21AF3BDFC;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 136) = 0u;
  *(v8 + 152) = 0u;
  *(v8 + 168) = 0u;
  *(v8 + 184) = 0u;
  return v1;
}

uint64_t SQLiteVTab.deinit()
{
  v1 = v0;
  MEMORY[0x21CEE68E0](*(v0 + 32), -1, -1);
  if (qword_27CD3ECD8 != -1)
  {
    swift_once();
  }

  v2 = sub_21AF49690();
  __swift_project_value_buffer(v2, qword_27CD3F1A8);

  v3 = sub_21AF49670();
  v4 = sub_21AF49960();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    swift_beginAccess();
    if (*(v1 + 24))
    {
      v7 = *(v1 + 16);
      v8 = *(v1 + 24);
    }

    else
    {
      v8 = 0x800000021AF4AC40;
      v7 = 0xD000000000000010;
    }

    v9 = sub_21AF39910(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_21AF22000, v3, v4, "Destroying vtable module with name %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CEE68E0](v6, -1, -1);
    MEMORY[0x21CEE68E0](v5, -1, -1);
  }

  v10 = *(v1 + 24);

  return v1;
}

uint64_t sub_21AF3AEC8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_21AF3AF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = v4[3];
  v4[2] = a1;
  v4[3] = a2;

  v9 = *(a3 + 16);
  v10 = v4[4];
  v11 = sub_21AF49720();

  LODWORD(v4) = sqlite3_create_module_v2(v9, (v11 + 32), v10, v4, sub_21AF3BED0);

  if (v4)
  {
    sub_21AF23A54();
    swift_allocError();
    *v13 = a1;
    *(v13 + 8) = a2;
    *(v13 + 16) = 0;
    *(v13 + 24) = 2;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_21AF3B028(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 24);
  if (v4)
  {
    v5 = *(v1 + 16);

    sub_21AF3B358(v5, v4, a1);
  }

  return result;
}

void *SQLiteVTab.Connection.init(_:argc:argv:)(uint64_t a1, int a2, uint64_t a3)
{
  v7 = sub_21AF496F0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  if (a2 < 3)
  {
    v9 = 0x800000021AF4AC80;
    sub_21AF23A54();
    swift_allocError();
    v11 = 0xD00000000000001CLL;
LABEL_8:
    *v10 = v11;
    *(v10 + 8) = v9;
    *(v10 + 16) = 0;
    *(v10 + 24) = 4;
    swift_willThrow();

    type metadata accessor for SQLiteVTab.Connection();
    swift_deallocPartialClassInstance();
    return v3;
  }

  if (!*(a3 + 16))
  {
    sub_21AF23A54();
    swift_allocError();
    v9 = 0xEE006C696E206465;
    v11 = 0x7463657078656E55;
    goto LABEL_8;
  }

  sub_21AF496E0();
  v12 = sub_21AF496D0();
  if (!v13)
  {
    v11 = 0xD000000000000014;
    v9 = 0x800000021AF4AC60;
    sub_21AF23A54();
    swift_allocError();
    goto LABEL_8;
  }

  v3[2] = v12;
  v3[3] = v13;
  v3[4] = a1;
  return v3;
}

uint64_t SQLiteVTab.Connection.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t SQLiteVTab.Cursor.init(_:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

uint64_t SQLiteVTab.Cursor.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_21AF3B2F0()
{
  v1 = *(v0 + 16);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v3;
    return 0;
  }

  return result;
}

uint64_t sub_21AF3B358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8[0] = a1;
    v8[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v7[0] = v8;
    v7[1] = 0;
    v3 = *(a3 + 16);
    v4 = v7;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    sub_21AF49A50();
  }

  v6[0] = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v6[1] = 0;
  v3 = *(a3 + 16);
  v4 = v6;
LABEL_6:
  sqlite3_drop_modules(v3, v4);
}

uint64_t SQLiteVTab.Style.hashValue.getter()
{
  v1 = *v0;
  sub_21AF49C10();
  MEMORY[0x21CEE61A0](v1);
  return sub_21AF49C40();
}

uint64_t sub_21AF3B4B0()
{
  v1 = *v0;
  sub_21AF49C10();
  MEMORY[0x21CEE61A0](v1);
  return sub_21AF49C40();
}

uint64_t sub_21AF3B524()
{
  v1 = *v0;
  sub_21AF49C10();
  MEMORY[0x21CEE61A0](v1);
  return sub_21AF49C40();
}

uint64_t sub_21AF3B568(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_21AF3B5C8(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a1 && a2 && a5)
  {
    result = 1;
    if (a4 && a6)
    {
      v9 = *(*a2 + 264);

      v13 = *(v9(v12) + 96);

      v15 = v13(v14, a3, a4);
      sub_21AF49A60();
      MEMORY[0x21CEE5D10](0xD00000000000001ALL, 0x800000021AF4AD60);
      v16 = v15[2];
      v17 = v15[3];

      MEMORY[0x21CEE5D10](v16, v17);

      v18 = MEMORY[0x21CEE5D10](0xD000000000000010, 0x800000021AF4AD80);
      v19 = (*(*v15 + 128))(v18);
      MEMORY[0x21CEE5D10](v19);

      MEMORY[0x21CEE5D10](0x202020202020200ALL, 0xEA00000000002920);
      v21 = sub_21AF49720();

      v22 = sqlite3_declare_vtab(a1, (v21 + 32));

      if (v22)
      {

        result = v22;
      }

      else
      {
        v23 = sqlite3_malloc(32);
        if (v23)
        {
          *v23 = 0;
          v23[2] = 0;
          *(v23 + 2) = 0;
          *(v23 + 3) = v15;
          *a5 = v23;

          result = 0;
        }

        else
        {
          *a5 = 0;

          result = 7;
        }
      }
    }
  }

  else
  {
    result = 1;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21AF3B87C(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return 1;
  }

  v3 = *(**(a1 + 24) + 104);

  v4 = v3(a2);

  return v4;
}

uint64_t sub_21AF3B8F8(void **a1)
{
  if (!a1)
  {
    return 1;
  }

  (*(*a1[3] + 112))();

  sqlite3_free(a1);
  return 0;
}

uint64_t sub_21AF3B964(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  result = 1;
  if (a1 && a2)
  {
    v5 = *(a1 + 24);
    v6 = *(*v5 + 136);

    v8 = v6(v7);
    v9 = (*(v8 + 120))(v5);
    v10 = sqlite3_malloc(16);
    if (v10)
    {
      v11 = v10;
      result = 0;
      *v11 = 0;
      v11[1] = v9;
      *a2 = v11;
    }

    else
    {

      *a2 = 0;
      result = 7;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21AF3BA70(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = a1[1];

  sqlite3_free(a1);
  return 0;
}

uint64_t sub_21AF3BAB8(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (!result || !a5)
  {
    return 1;
  }

  if (a4 < 0)
  {
    goto LABEL_15;
  }

  v5 = result;
  v8 = a4;
  if (a4)
  {
    result = sub_21AF498A0();
    v10 = 0;
    *(result + 16) = v8;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v12 = *(a5 + 8 * v10);
      if (!v12)
      {
        *(result + 16) = 0;

        return 1;
      }

      *(result + 8 * v10++ + 32) = v12;
      if (v11 == v8)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  result = MEMORY[0x277D84F90];
LABEL_11:
  *(result + 16) = v8;
  v13 = result;
  v14 = MEMORY[0x21CEE6200]();
  v15 = *(**(v5 + 8) + 128);

  v16 = v15(a2, a3, v13);

  objc_autoreleasePoolPop(v14);
  return v16;
}

uint64_t sub_21AF3BC04(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = MEMORY[0x21CEE6200]();
  v3 = *(**(a1 + 8) + 136);

  v5 = v3(v4);

  objc_autoreleasePoolPop(v2);
  return v5;
}

BOOL sub_21AF3BCB0(uint64_t a1)
{
  v1 = 1;
  if (a1)
  {
    v3 = MEMORY[0x21CEE6200]();
    v4 = *(**(a1 + 8) + 144);

    LOBYTE(v4) = v4(v5);

    v1 = (v4 & 1) == 0;
    objc_autoreleasePoolPop(v3);
  }

  return v1;
}

uint64_t sub_21AF3BD3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 1;
  if (a1 && a2)
  {
    v7 = MEMORY[0x21CEE6200]();
    v8 = *(a1 + 8);

    v10 = a2;
    v3 = (*(*v8 + 160))(a3, &v10);

    objc_autoreleasePoolPop(v7);
  }

  return v3;
}

uint64_t sub_21AF3BDFC(uint64_t a1, uint64_t *a2)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      v5 = MEMORY[0x21CEE6200](1);
      v6 = *(**(a1 + 8) + 152);

      v8 = v6(v7);

      *a2 = v8;
      objc_autoreleasePoolPop(v5);
      return 0;
    }
  }

  return result;
}

uint64_t SQLiteVTab.__allocating_init(style:)(char *a1)
{
  v2 = swift_allocObject();
  SQLiteVTab.init(style:)(a1);
  return v2;
}

uint64_t sub_21AF3BED0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t SQLiteVTab.__deallocating_deinit()
{
  SQLiteVTab.deinit();

  return MEMORY[0x2821FE8D8](v0, 41, 7);
}

uint64_t SQLiteVTab.Connection.tableName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SQLiteVTab.Connection.__allocating_init(_:argc:argv:)(uint64_t a1, int a2, uint64_t a3)
{
  v6 = swift_allocObject();
  SQLiteVTab.Connection.init(_:argc:argv:)(a1, a2, a3);
  return v6;
}

uint64_t SQLiteVTab.Connection.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t SQLiteVTab.Cursor.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  return result;
}

uint64_t SQLiteVTab.Cursor.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_21AF3C0A8()
{
  result = qword_27CD3F038;
  if (!qword_27CD3F038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3F038);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SQLiteVTab.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLiteVTab.Style(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void static SQLiteInteger32<>.sqlColumnType.getter(_BYTE *a1@<X8>)
{
  *a1 = 2;
}

{
  *a1 = 4;
}

void static SQLiteInteger64<>.sqlColumnType.getter(_BYTE *a1@<X8>)
{
  *a1 = 3;
}

{
  *a1 = 5;
}

unsigned __int8 *sub_21AF3C5C8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F130, &unk_21AF4C2B0);
  result = sub_21AF438FC(&qword_27CD3F138, &qword_27CD3F130, &unk_21AF4C2B0);
  *(a3 + 32) = result;
  v7 = HIBYTE(a2) & 0xF;
  v8 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    LOBYTE(v7) = 1;
LABEL_66:
    *a3 = v9;
    *(a3 + 1) = v7 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v11 = sub_21AF407C8(a1, a2, 10);

    LODWORD(v7) = (v11 >> 8) & 1;
LABEL_63:
    if (v7)
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      LOBYTE(v9) = v11;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_21AF49A80();
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          LOBYTE(v11) = 0;
          if (result)
          {
            v18 = result + 1;
            while (1)
            {
              v19 = *v18 - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = (10 * v11);
              if (v20 != 10 * v11)
              {
                goto LABEL_61;
              }

              v11 = v20 + v19;
              if ((v20 + v19) != v11)
              {
                goto LABEL_61;
              }

              ++v18;
              if (!--v7)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        LOBYTE(v11) = 0;
        LOBYTE(v7) = 1;
        goto LABEL_62;
      }

      goto LABEL_72;
    }

    if (v10 != 45)
    {
      if (v8)
      {
        LOBYTE(v11) = 0;
        while (1)
        {
          v24 = *result - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = (10 * v11);
          if (v25 != 10 * v11)
          {
            break;
          }

          v11 = v25 + v24;
          if ((v25 + v24) != v11)
          {
            break;
          }

          ++result;
          if (!--v8)
          {
            goto LABEL_53;
          }
        }
      }

      goto LABEL_61;
    }

    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        LOBYTE(v11) = 0;
        if (result)
        {
          v12 = result + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              goto LABEL_61;
            }

            v14 = (10 * v11);
            if (v14 != 10 * v11)
            {
              goto LABEL_61;
            }

            v11 = v14 - v13;
            if ((v14 - v13) != v11)
            {
              goto LABEL_61;
            }

            ++v12;
            if (!--v7)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v7) = 0;
LABEL_62:
        v30 = v7;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v29[0] = a1;
  v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 != 43)
  {
    if (a1 != 45)
    {
      if (v7)
      {
        LOBYTE(v11) = 0;
        v26 = v29;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = (10 * v11);
          if (v28 != 10 * v11)
          {
            break;
          }

          v11 = v28 + v27;
          if ((v28 + v27) != v11)
          {
            break;
          }

          ++v26;
          if (!--v7)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v7)
    {
      if (--v7)
      {
        LOBYTE(v11) = 0;
        v15 = v29 + 1;
        while (1)
        {
          v16 = *v15 - 48;
          if (v16 > 9)
          {
            break;
          }

          v17 = (10 * v11);
          if (v17 != 10 * v11)
          {
            break;
          }

          v11 = v17 - v16;
          if ((v17 - v16) != v11)
          {
            break;
          }

          ++v15;
          if (!--v7)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v7)
  {
    if (--v7)
    {
      LOBYTE(v11) = 0;
      v21 = v29 + 1;
      while (1)
      {
        v22 = *v21 - 48;
        if (v22 > 9)
        {
          break;
        }

        v23 = (10 * v11);
        if (v23 != 10 * v11)
        {
          break;
        }

        v11 = v23 + v22;
        if ((v23 + v22) != v11)
        {
          break;
        }

        ++v21;
        if (!--v7)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

unsigned __int8 *sub_21AF3C950@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F120, &qword_21AF4C2A8);
  result = sub_21AF438FC(&qword_27CD3F128, &qword_27CD3F120, &qword_21AF4C2A8);
  *(a3 + 32) = result;
  v7 = HIBYTE(a2) & 0xF;
  v8 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    LOBYTE(v7) = 1;
LABEL_66:
    *a3 = v9;
    *(a3 + 1) = v7 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v11 = sub_21AF411AC(a1, a2, 10);

    LODWORD(v7) = (v11 >> 8) & 1;
LABEL_63:
    if (v7)
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      LOBYTE(v9) = v11;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_21AF49A80();
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          LOBYTE(v11) = 0;
          if (result)
          {
            v16 = result + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                goto LABEL_61;
              }

              if (((10 * v11) & 0xF00) != 0)
              {
                goto LABEL_61;
              }

              v11 = (10 * v11) + v17;
              if ((v11 >> 8))
              {
                goto LABEL_61;
              }

              ++v16;
              if (!--v7)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        LOBYTE(v11) = 0;
        LOBYTE(v7) = 1;
        goto LABEL_62;
      }

      goto LABEL_72;
    }

    if (v10 != 45)
    {
      if (v8)
      {
        LOBYTE(v11) = 0;
        while (1)
        {
          v20 = *result - 48;
          if (v20 > 9)
          {
            break;
          }

          if (((10 * v11) & 0xF00) != 0)
          {
            break;
          }

          v11 = (10 * v11) + v20;
          if ((v11 >> 8))
          {
            break;
          }

          ++result;
          if (!--v8)
          {
            goto LABEL_53;
          }
        }
      }

      goto LABEL_61;
    }

    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        LOBYTE(v11) = 0;
        if (result)
        {
          v12 = result + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v11) & 0xF00) != 0)
            {
              goto LABEL_61;
            }

            v11 = (10 * v11) - v13;
            if ((v11 & 0xFFFFFF00) != 0)
            {
              goto LABEL_61;
            }

            ++v12;
            if (!--v7)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v7) = 0;
LABEL_62:
        v24 = v7;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v23[0] = a1;
  v23[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 != 43)
  {
    if (a1 != 45)
    {
      if (v7)
      {
        LOBYTE(v11) = 0;
        v21 = v23;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          if (((10 * v11) & 0xF00) != 0)
          {
            break;
          }

          v11 = (10 * v11) + v22;
          if ((v11 >> 8))
          {
            break;
          }

          ++v21;
          if (!--v7)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v7)
    {
      if (--v7)
      {
        LOBYTE(v11) = 0;
        v14 = v23 + 1;
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            break;
          }

          if (((10 * v11) & 0xF00) != 0)
          {
            break;
          }

          v11 = (10 * v11) - v15;
          if ((v11 & 0xFFFFFF00) != 0)
          {
            break;
          }

          ++v14;
          if (!--v7)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v7)
  {
    if (--v7)
    {
      LOBYTE(v11) = 0;
      v18 = v23 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        if (((10 * v11) & 0xF00) != 0)
        {
          break;
        }

        v11 = (10 * v11) + v19;
        if ((v11 >> 8))
        {
          break;
        }

        ++v18;
        if (!--v7)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

unsigned __int8 *sub_21AF3CCC0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F110, &qword_21AF4C2A0);
  result = sub_21AF438FC(&qword_27CD3F118, &qword_27CD3F110, &qword_21AF4C2A0);
  *(a3 + 32) = result;
  v7 = HIBYTE(a2) & 0xF;
  v8 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    LOBYTE(v7) = 1;
LABEL_66:
    *a3 = v9;
    *(a3 + 2) = v7 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v11 = sub_21AF41774(a1, a2, 10);

    LODWORD(v7) = HIWORD(v11) & 1;
LABEL_63:
    if (v7)
    {
      LOWORD(v9) = 0;
    }

    else
    {
      LOWORD(v9) = v11;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_21AF49A80();
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          LOWORD(v11) = 0;
          if (result)
          {
            v18 = result + 1;
            while (1)
            {
              v19 = *v18 - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = (10 * v11);
              if (v20 != 10 * v11)
              {
                goto LABEL_61;
              }

              v11 = v20 + v19;
              if ((v20 + v19) != v11)
              {
                goto LABEL_61;
              }

              ++v18;
              if (!--v7)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        LOWORD(v11) = 0;
        LOBYTE(v7) = 1;
        goto LABEL_62;
      }

      goto LABEL_72;
    }

    if (v10 != 45)
    {
      if (v8)
      {
        LOWORD(v11) = 0;
        while (1)
        {
          v24 = *result - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = (10 * v11);
          if (v25 != 10 * v11)
          {
            break;
          }

          v11 = v25 + v24;
          if ((v25 + v24) != v11)
          {
            break;
          }

          ++result;
          if (!--v8)
          {
            goto LABEL_53;
          }
        }
      }

      goto LABEL_61;
    }

    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        LOWORD(v11) = 0;
        if (result)
        {
          v12 = result + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              goto LABEL_61;
            }

            v14 = (10 * v11);
            if (v14 != 10 * v11)
            {
              goto LABEL_61;
            }

            v11 = v14 - v13;
            if ((v14 - v13) != v11)
            {
              goto LABEL_61;
            }

            ++v12;
            if (!--v7)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v7) = 0;
LABEL_62:
        v30 = v7;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v29[0] = a1;
  v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 != 43)
  {
    if (a1 != 45)
    {
      if (v7)
      {
        LOWORD(v11) = 0;
        v26 = v29;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = (10 * v11);
          if (v28 != 10 * v11)
          {
            break;
          }

          v11 = v28 + v27;
          if ((v28 + v27) != v11)
          {
            break;
          }

          ++v26;
          if (!--v7)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v7)
    {
      if (--v7)
      {
        LOWORD(v11) = 0;
        v15 = v29 + 1;
        while (1)
        {
          v16 = *v15 - 48;
          if (v16 > 9)
          {
            break;
          }

          v17 = (10 * v11);
          if (v17 != 10 * v11)
          {
            break;
          }

          v11 = v17 - v16;
          if ((v17 - v16) != v11)
          {
            break;
          }

          ++v15;
          if (!--v7)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v7)
  {
    if (--v7)
    {
      LOWORD(v11) = 0;
      v21 = v29 + 1;
      while (1)
      {
        v22 = *v21 - 48;
        if (v22 > 9)
        {
          break;
        }

        v23 = (10 * v11);
        if (v23 != 10 * v11)
        {
          break;
        }

        v11 = v23 + v22;
        if ((v23 + v22) != v11)
        {
          break;
        }

        ++v21;
        if (!--v7)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

unsigned __int8 *sub_21AF3D048@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F100, &qword_21AF4C298);
  result = sub_21AF438FC(&qword_27CD3F108, &qword_27CD3F100, &qword_21AF4C298);
  *(a3 + 32) = result;
  v7 = HIBYTE(a2) & 0xF;
  v8 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    LOBYTE(v7) = 1;
LABEL_66:
    *a3 = v9;
    *(a3 + 2) = v7 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v11 = sub_21AF41D54(a1, a2, 10);

    LODWORD(v7) = HIWORD(v11) & 1;
LABEL_63:
    if (v7)
    {
      LOWORD(v9) = 0;
    }

    else
    {
      LOWORD(v9) = v11;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_21AF49A80();
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          LOWORD(v11) = 0;
          if (result)
          {
            v16 = result + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                goto LABEL_61;
              }

              if (((10 * v11) & 0xF0000) != 0)
              {
                goto LABEL_61;
              }

              v11 = (10 * v11) + v17;
              if ((v11 & 0x10000) != 0)
              {
                goto LABEL_61;
              }

              ++v16;
              if (!--v7)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        LOWORD(v11) = 0;
        LOBYTE(v7) = 1;
        goto LABEL_62;
      }

      goto LABEL_72;
    }

    if (v10 != 45)
    {
      if (v8)
      {
        LOWORD(v11) = 0;
        while (1)
        {
          v20 = *result - 48;
          if (v20 > 9)
          {
            break;
          }

          if (((10 * v11) & 0xF0000) != 0)
          {
            break;
          }

          v11 = (10 * v11) + v20;
          if ((v11 & 0x10000) != 0)
          {
            break;
          }

          ++result;
          if (!--v8)
          {
            goto LABEL_53;
          }
        }
      }

      goto LABEL_61;
    }

    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        LOWORD(v11) = 0;
        if (result)
        {
          v12 = result + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v11) & 0xF0000) != 0)
            {
              goto LABEL_61;
            }

            v11 = (10 * v11) - v13;
            if ((v11 & 0xFFFF0000) != 0)
            {
              goto LABEL_61;
            }

            ++v12;
            if (!--v7)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v7) = 0;
LABEL_62:
        v24 = v7;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v23[0] = a1;
  v23[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 != 43)
  {
    if (a1 != 45)
    {
      if (v7)
      {
        LOWORD(v11) = 0;
        v21 = v23;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          if (((10 * v11) & 0xF0000) != 0)
          {
            break;
          }

          v11 = (10 * v11) + v22;
          if ((v11 & 0x10000) != 0)
          {
            break;
          }

          ++v21;
          if (!--v7)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v7)
    {
      if (--v7)
      {
        LOWORD(v11) = 0;
        v14 = v23 + 1;
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            break;
          }

          if (((10 * v11) & 0xF0000) != 0)
          {
            break;
          }

          v11 = (10 * v11) - v15;
          if ((v11 & 0xFFFF0000) != 0)
          {
            break;
          }

          ++v14;
          if (!--v7)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v7)
  {
    if (--v7)
    {
      LOWORD(v11) = 0;
      v18 = v23 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        if (((10 * v11) & 0xF0000) != 0)
        {
          break;
        }

        v11 = (10 * v11) + v19;
        if ((v11 & 0x10000) != 0)
        {
          break;
        }

        ++v18;
        if (!--v7)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

unsigned __int8 *sub_21AF3D3B8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F0F0, &qword_21AF4C290);
  result = sub_21AF438FC(&qword_27CD3F0F8, &qword_27CD3F0F0, &qword_21AF4C290);
  *(a3 + 32) = result;
  v7 = HIBYTE(a2) & 0xF;
  v8 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    LOBYTE(v7) = 1;
LABEL_66:
    *a3 = v9;
    *(a3 + 4) = v7 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v11 = sub_21AF4231C(a1, a2, 10);

    v7 = (v11 >> 32) & 1;
LABEL_63:
    if (v7)
    {
      LODWORD(v9) = 0;
    }

    else
    {
      LODWORD(v9) = v11;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_21AF49A80();
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          LODWORD(v11) = 0;
          if (result)
          {
            v18 = result + 1;
            while (1)
            {
              v19 = *v18 - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v11;
              if (v20 != v20)
              {
                goto LABEL_61;
              }

              LODWORD(v11) = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++v18;
              if (!--v7)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        LODWORD(v11) = 0;
        LOBYTE(v7) = 1;
        goto LABEL_62;
      }

      goto LABEL_72;
    }

    if (v10 != 45)
    {
      if (v8)
      {
        LODWORD(v11) = 0;
        while (1)
        {
          v24 = *result - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v11;
          if (v25 != v25)
          {
            break;
          }

          LODWORD(v11) = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++result;
          if (!--v8)
          {
            goto LABEL_53;
          }
        }
      }

      goto LABEL_61;
    }

    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        LODWORD(v11) = 0;
        if (result)
        {
          v12 = result + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              goto LABEL_61;
            }

            v14 = 10 * v11;
            if (v14 != v14)
            {
              goto LABEL_61;
            }

            LODWORD(v11) = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              goto LABEL_61;
            }

            ++v12;
            if (!--v7)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v7) = 0;
LABEL_62:
        v30 = v7;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v29[0] = a1;
  v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 != 43)
  {
    if (a1 != 45)
    {
      if (v7)
      {
        LODWORD(v11) = 0;
        v26 = v29;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = 10 * v11;
          if (v28 != v28)
          {
            break;
          }

          LODWORD(v11) = v28 + v27;
          if (__OFADD__(v28, v27))
          {
            break;
          }

          ++v26;
          if (!--v7)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v7)
    {
      if (--v7)
      {
        LODWORD(v11) = 0;
        v15 = v29 + 1;
        while (1)
        {
          v16 = *v15 - 48;
          if (v16 > 9)
          {
            break;
          }

          v17 = 10 * v11;
          if (v17 != v17)
          {
            break;
          }

          LODWORD(v11) = v17 - v16;
          if (__OFSUB__(v17, v16))
          {
            break;
          }

          ++v15;
          if (!--v7)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v7)
  {
    if (--v7)
    {
      LODWORD(v11) = 0;
      v21 = v29 + 1;
      while (1)
      {
        v22 = *v21 - 48;
        if (v22 > 9)
        {
          break;
        }

        v23 = 10 * v11;
        if (v23 != v23)
        {
          break;
        }

        LODWORD(v11) = v23 + v22;
        if (__OFADD__(v23, v22))
        {
          break;
        }

        ++v21;
        if (!--v7)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

unsigned __int8 *sub_21AF3D6E0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F0E0, &qword_21AF4C288);
  result = sub_21AF438FC(&qword_27CD3F0E8, &qword_27CD3F0E0, &qword_21AF4C288);
  *(a3 + 32) = result;
  v7 = HIBYTE(a2) & 0xF;
  v8 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    LOBYTE(v7) = 1;
LABEL_66:
    *a3 = v9;
    *(a3 + 4) = v7 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v11 = sub_21AF4288C(a1, a2, 10);

    v7 = (v11 >> 32) & 1;
LABEL_63:
    if (v7)
    {
      LODWORD(v9) = 0;
    }

    else
    {
      LODWORD(v9) = v11;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_21AF49A80();
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          LODWORD(v11) = 0;
          if (result)
          {
            v18 = result + 1;
            while (1)
            {
              v19 = *v18 - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v11;
              if ((v20 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v11) = v20 + v19;
              if (__CFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++v18;
              if (!--v7)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        LODWORD(v11) = 0;
        LOBYTE(v7) = 1;
        goto LABEL_62;
      }

      goto LABEL_72;
    }

    if (v10 != 45)
    {
      if (v8)
      {
        LODWORD(v11) = 0;
        while (1)
        {
          v24 = *result - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v11;
          if ((v25 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v11) = v25 + v24;
          if (__CFADD__(v25, v24))
          {
            break;
          }

          ++result;
          if (!--v8)
          {
            goto LABEL_53;
          }
        }
      }

      goto LABEL_61;
    }

    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        LODWORD(v11) = 0;
        if (result)
        {
          v12 = result + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              goto LABEL_61;
            }

            v14 = 10 * v11;
            if ((v14 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v11) = v14 - v13;
            if (v14 < v13)
            {
              goto LABEL_61;
            }

            ++v12;
            if (!--v7)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v7) = 0;
LABEL_62:
        v30 = v7;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v29[0] = a1;
  v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 != 43)
  {
    if (a1 != 45)
    {
      if (v7)
      {
        LODWORD(v11) = 0;
        v26 = v29;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = 10 * v11;
          if ((v28 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v11) = v28 + v27;
          if (__CFADD__(v28, v27))
          {
            break;
          }

          ++v26;
          if (!--v7)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v7)
    {
      if (--v7)
      {
        LODWORD(v11) = 0;
        v15 = v29 + 1;
        while (1)
        {
          v16 = *v15 - 48;
          if (v16 > 9)
          {
            break;
          }

          v17 = 10 * v11;
          if ((v17 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v11) = v17 - v16;
          if (v17 < v16)
          {
            break;
          }

          ++v15;
          if (!--v7)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v7)
  {
    if (--v7)
    {
      LODWORD(v11) = 0;
      v21 = v29 + 1;
      while (1)
      {
        v22 = *v21 - 48;
        if (v22 > 9)
        {
          break;
        }

        v23 = 10 * v11;
        if ((v23 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v11) = v23 + v22;
        if (__CFADD__(v23, v22))
        {
          break;
        }

        ++v21;
        if (!--v7)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

unsigned __int8 *sub_21AF3DA20@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, unint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_21AF438FC(a5, a3, a4);
  *(a6 + 32) = result;
  v13 = HIBYTE(a2) & 0xF;
  v14 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    v36 = 0;
    v35 = 1;
LABEL_66:
    *a6 = v36;
    *(a6 + 8) = v35 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v17 = sub_21AF42DFC(a1, a2, 10);
    v35 = v37;

LABEL_63:
    if (v35)
    {
      v36 = 0;
    }

    else
    {
      v36 = v17;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_21AF49A80();
    }

    v16 = *result;
    if (v16 == 43)
    {
      if (v14 >= 1)
      {
        v13 = v14 - 1;
        if (v14 != 1)
        {
          v17 = 0;
          if (result)
          {
            v24 = result + 1;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                goto LABEL_61;
              }

              v26 = 10 * v17;
              if ((v17 * 10) >> 64 != (10 * v17) >> 63)
              {
                goto LABEL_61;
              }

              v17 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                goto LABEL_61;
              }

              ++v24;
              if (!--v13)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        v17 = 0;
        LOBYTE(v13) = 1;
        goto LABEL_62;
      }

      goto LABEL_72;
    }

    if (v16 != 45)
    {
      if (v14)
      {
        v17 = 0;
        while (1)
        {
          v30 = *result - 48;
          if (v30 > 9)
          {
            break;
          }

          v31 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            break;
          }

          v17 = v31 + v30;
          if (__OFADD__(v31, v30))
          {
            break;
          }

          ++result;
          if (!--v14)
          {
            goto LABEL_53;
          }
        }
      }

      goto LABEL_61;
    }

    if (v14 >= 1)
    {
      v13 = v14 - 1;
      if (v14 != 1)
      {
        v17 = 0;
        if (result)
        {
          v18 = result + 1;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              goto LABEL_61;
            }

            v17 = v20 - v19;
            if (__OFSUB__(v20, v19))
            {
              goto LABEL_61;
            }

            ++v18;
            if (!--v13)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v13) = 0;
LABEL_62:
        v39 = v13;
        v35 = v13;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v38[0] = a1;
  v38[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 != 43)
  {
    if (a1 != 45)
    {
      if (v13)
      {
        v17 = 0;
        v32 = v38;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          v34 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            break;
          }

          v17 = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            break;
          }

          ++v32;
          if (!--v13)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v13)
    {
      if (--v13)
      {
        v17 = 0;
        v21 = v38 + 1;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            break;
          }

          v17 = v23 - v22;
          if (__OFSUB__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v13)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v13)
  {
    if (--v13)
    {
      v17 = 0;
      v27 = v38 + 1;
      while (1)
      {
        v28 = *v27 - 48;
        if (v28 > 9)
        {
          break;
        }

        v29 = 10 * v17;
        if ((v17 * 10) >> 64 != (10 * v17) >> 63)
        {
          break;
        }

        v17 = v29 + v28;
        if (__OFADD__(v29, v28))
        {
          break;
        }

        ++v27;
        if (!--v13)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

unsigned __int8 *sub_21AF3DD7C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, unint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_21AF438FC(a5, a3, a4);
  *(a6 + 32) = result;
  v13 = HIBYTE(a2) & 0xF;
  v14 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    v31 = 0;
    v30 = 1;
LABEL_68:
    *a6 = v31;
    *(a6 + 8) = v30 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v17 = sub_21AF4337C(a1, a2, 10);
    v30 = v32;

LABEL_65:
    if (v30)
    {
      v31 = 0;
    }

    else
    {
      v31 = v17;
    }

    goto LABEL_68;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_21AF49A80();
    }

    v16 = *result;
    if (v16 == 43)
    {
      if (v14 >= 1)
      {
        v13 = v14 - 1;
        if (v14 != 1)
        {
          v17 = 0;
          if (result)
          {
            v23 = result + 1;
            while (1)
            {
              v24 = *v23 - 48;
              if (v24 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v17, 0xAuLL))
              {
                goto LABEL_63;
              }

              v20 = __CFADD__(10 * v17, v24);
              v17 = 10 * v17 + v24;
              if (v20)
              {
                goto LABEL_63;
              }

              ++v23;
              if (!--v13)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        v17 = 0;
        LOBYTE(v13) = 1;
        goto LABEL_64;
      }

      goto LABEL_74;
    }

    if (v16 != 45)
    {
      if (v14)
      {
        v17 = 0;
        while (1)
        {
          v27 = *result - 48;
          if (v27 > 9)
          {
            break;
          }

          if (!is_mul_ok(v17, 0xAuLL))
          {
            break;
          }

          v20 = __CFADD__(10 * v17, v27);
          v17 = 10 * v17 + v27;
          if (v20)
          {
            break;
          }

          ++result;
          if (!--v14)
          {
            goto LABEL_55;
          }
        }
      }

      goto LABEL_63;
    }

    if (v14 >= 1)
    {
      v13 = v14 - 1;
      if (v14 != 1)
      {
        v17 = 0;
        if (result)
        {
          v18 = result + 1;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v17, 0xAuLL))
            {
              goto LABEL_63;
            }

            v20 = 10 * v17 >= v19;
            v17 = 10 * v17 - v19;
            if (!v20)
            {
              goto LABEL_63;
            }

            ++v18;
            if (!--v13)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v13) = 0;
LABEL_64:
        v34 = v13;
        v30 = v13;
        goto LABEL_65;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v33[0] = a1;
  v33[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 != 43)
  {
    if (a1 != 45)
    {
      if (v13)
      {
        v17 = 0;
        v28 = v33;
        while (1)
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            break;
          }

          if (!is_mul_ok(v17, 0xAuLL))
          {
            break;
          }

          v20 = __CFADD__(10 * v17, v29);
          v17 = 10 * v17 + v29;
          if (v20)
          {
            break;
          }

          ++v28;
          if (!--v13)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v13)
    {
      if (--v13)
      {
        v17 = 0;
        v21 = v33 + 1;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          if (!is_mul_ok(v17, 0xAuLL))
          {
            break;
          }

          v20 = 10 * v17 >= v22;
          v17 = 10 * v17 - v22;
          if (!v20)
          {
            break;
          }

          ++v21;
          if (!--v13)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_73;
  }

  if (v13)
  {
    if (--v13)
    {
      v17 = 0;
      v25 = v33 + 1;
      while (1)
      {
        v26 = *v25 - 48;
        if (v26 > 9)
        {
          break;
        }

        if (!is_mul_ok(v17, 0xAuLL))
        {
          break;
        }

        v20 = __CFADD__(10 * v17, v26);
        v17 = 10 * v17 + v26;
        if (v20)
        {
          break;
        }

        ++v25;
        if (!--v13)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_75:
  __break(1u);
  return result;
}

uint64_t sub_21AF3E0D8@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  a2[3] = sub_21AF49990();
  v6 = *(*(a1 + 8) + 8);
  a2[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a2);
  v4 = *(*(a1 + 16) + 16);

  return sub_21AF49B70();
}

uint64_t sub_21AF3E1A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21AF43B9C(*a1, a1[1], a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t SQLiteInteger32.init(with:column:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a4;
  v48 = a5;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v44 - v14;
  v17 = *v13;
  v16 = v13[1];
  ObjectType = swift_getObjectType();
  v19 = (*(v16 + 24))(ObjectType, v16);
  result = swift_unknownObjectRelease();
  if (!v5)
  {
    v45 = v8;
    v46 = v12;
    v21 = v47;
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      v22 = v15;
      v23 = sqlite3_column_int(v19, a2);
      v24 = *(v21 + 16);
      v25 = a3;
      if (a3 == MEMORY[0x277D849A8])
      {
        v36 = *(v24 + 8);
        goto LABEL_17;
      }

      LODWORD(v47) = v23;
      v26 = v22;
      sub_21AF49B00();
      v27 = *(v24 + 8);
      v28 = sub_21AF499F0();
      v29 = sub_21AF499E0();
      if (v28)
      {
        v31 = v45;
        v30 = v46;
        if (v29 > 32)
        {
          v32 = v47;
          v49 = v47;
          sub_21AF3E5AC();
          sub_21AF499C0();
          v33 = *(*(v27 + 32) + 8);
          v34 = sub_21AF496B0();
          v35 = *(v31 + 8);
          v35(v30, v25);
          v35(v26, v25);
          v23 = v32;
          if (v34)
          {
            goto LABEL_19;
          }

LABEL_17:
          v50 = v23;
          sub_21AF3E5AC();
          return sub_21AF49A00();
        }

        v39 = sub_21AF499D0();
        (*(v31 + 8))(v26, v25);
      }

      else
      {
        v37 = v45;
        v38 = v46;
        if (v29 > 31)
        {
          if ((v47 & 0x80000000) != 0)
          {
            (*(v45 + 8))(v26, v25);
          }

          else
          {
            v51 = v47;
            sub_21AF3E5AC();
            sub_21AF499C0();
            v40 = *(*(v27 + 32) + 8);
            v41 = sub_21AF496B0();
            v42 = *(v37 + 8);
            v42(v38, v25);
            v42(v26, v25);
            v23 = v47;
            if ((v41 & 1) == 0)
            {
              goto LABEL_17;
            }
          }

LABEL_19:
          sub_21AF23A54();
          swift_allocError();
          *(v43 + 8) = 0;
          *(v43 + 16) = 0;
          *v43 = 8;
          *(v43 + 24) = 9;
          return swift_willThrow();
        }

        v39 = sub_21AF499D0();
        (*(v37 + 8))(v26, v25);
      }

      v23 = v47;
      if (v47 < v39)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_21AF3E5AC()
{
  result = qword_27CD3F040;
  if (!qword_27CD3F040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3F040);
  }

  return result;
}

uint64_t sub_21AF3E600(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  return sub_21AF3E640(v5, a2, *v2);
}

uint64_t sub_21AF3E640(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = *a1;
  v7 = a1[1];
  ObjectType = swift_getObjectType();
  result = (*(v7 + 24))(ObjectType, v7);
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      result = sqlite3_bind_int(result, a2, a3);
      if (result)
      {
        v10 = result;
        sub_21AF23A54();
        swift_allocError();
        *v11 = v10;
        *(v11 + 8) = 0xD000000000000012;
        *(v11 + 16) = 0x800000021AF4A690;
        *(v11 + 24) = 0;
        return swift_willThrow();
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21AF3E730(uint64_t *a1, uint64_t a2, __int16 a3)
{
  v6 = *a1;
  v7 = a1[1];
  ObjectType = swift_getObjectType();
  result = (*(v7 + 24))(ObjectType, v7);
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      result = sqlite3_bind_int(result, a2, a3);
      if (result)
      {
        v10 = result;
        sub_21AF23A54();
        swift_allocError();
        *v11 = v10;
        *(v11 + 8) = 0xD000000000000012;
        *(v11 + 16) = 0x800000021AF4A690;
        *(v11 + 24) = 0;
        return swift_willThrow();
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21AF3E820(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = *a1;
  v7 = a1[1];
  ObjectType = swift_getObjectType();
  result = (*(v7 + 24))(ObjectType, v7);
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      result = sqlite3_bind_int(result, a2, a3);
      if (result)
      {
        v10 = result;
        sub_21AF23A54();
        swift_allocError();
        *v11 = v10;
        *(v11 + 8) = 0xD000000000000012;
        *(v11 + 16) = 0x800000021AF4A690;
        *(v11 + 24) = 0;
        return swift_willThrow();
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21AF3E910(uint64_t *a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = *a1;
  v7 = a1[1];
  ObjectType = swift_getObjectType();
  result = (*(v7 + 24))(ObjectType, v7);
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      result = sqlite3_bind_int(result, a2, a3);
      if (result)
      {
        v10 = result;
        sub_21AF23A54();
        swift_allocError();
        *v11 = v10;
        *(v11 + 8) = 0xD000000000000012;
        *(v11 + 16) = 0x800000021AF4A690;
        *(v11 + 24) = 0;
        return swift_willThrow();
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21AF3EA00(uint64_t *a1, uint64_t a2, unsigned __int16 a3)
{
  v6 = *a1;
  v7 = a1[1];
  ObjectType = swift_getObjectType();
  result = (*(v7 + 24))(ObjectType, v7);
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      result = sqlite3_bind_int(result, a2, a3);
      if (result)
      {
        v10 = result;
        sub_21AF23A54();
        swift_allocError();
        *v11 = v10;
        *(v11 + 8) = 0xD000000000000012;
        *(v11 + 16) = 0x800000021AF4A690;
        *(v11 + 24) = 0;
        return swift_willThrow();
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21AF3EAF0(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = *a1;
  v7 = a1[1];
  ObjectType = swift_getObjectType();
  result = (*(v7 + 24))(ObjectType, v7);
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      if ((a3 & 0x80000000) == 0)
      {
        result = sqlite3_bind_int(result, a2, a3);
        if (result)
        {
          v10 = result;
          sub_21AF23A54();
          swift_allocError();
          *v11 = v10;
          *(v11 + 8) = 0xD000000000000012;
          *(v11 + 16) = 0x800000021AF4A690;
          *(v11 + 24) = 0;
          return swift_willThrow();
        }

        return result;
      }

LABEL_10:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t SQLiteInteger32.bind(to:at:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a2;
  v6 = *(*(a4 + 16) + 8);
  v7 = *(*(v6 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = v52 - v11;
  v55 = *(a3 - 8);
  v13 = *(v55 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v52 - v17;
  v19 = *a1;
  v20 = a1[1];
  ObjectType = swift_getObjectType();
  v22 = v58;
  result = (*(v20 + 24))(ObjectType, v20);
  if (!v22)
  {
    v52[0] = v12;
    v52[1] = AssociatedTypeWitness;
    v53 = v16;
    v24 = v55;
    v25 = v57;
    if (v57 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v57 <= 0x7FFFFFFF)
    {
      v26 = a3;
      v58 = result;
      v54 = 0;
      v27 = v18;
      v28 = v18;
      v29 = a3;
      (*(v55 + 16))(v28, v56, a3);
      v30 = v6;
      v31 = v27;
      if ((sub_21AF499F0() & 1) == 0 || sub_21AF499E0() <= 32)
      {
        goto LABEL_17;
      }

      v59 = 0x80000000;
      if (sub_21AF499F0())
      {
        if (sub_21AF499E0() < 32)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v32 = sub_21AF499F0();
        v33 = sub_21AF499E0();
        if ((v32 & 1) == 0)
        {
          if (v33 >= 32)
          {
LABEL_17:
            if (sub_21AF499E0() <= 32 && (sub_21AF499E0() != 32 || (sub_21AF499F0() & 1) != 0))
            {
              goto LABEL_26;
            }

            v43 = v25;
            v60 = 0x7FFFFFFF;
            v44 = sub_21AF499F0();
            v45 = sub_21AF499E0();
            if (v44)
            {
              v46 = v53;
              if (v45 < 33)
              {
LABEL_20:
                sub_21AF499D0();
                v25 = v43;
                goto LABEL_26;
              }
            }

            else
            {
              v46 = v53;
              if (v45 < 32)
              {
                goto LABEL_20;
              }
            }

            sub_21AF3E5AC();
            sub_21AF499C0();
            v47 = *(*(v30 + 32) + 8);
            v48 = sub_21AF496B0();
            result = (*(v24 + 8))(v46, v29);
            v25 = v43;
            if ((v48 & 1) == 0)
            {
LABEL_26:
              v49 = sub_21AF499D0();
              (*(v24 + 8))(v31, v29);
              result = sqlite3_bind_int(v58, v25, v49);
              if (result)
              {
                v50 = result;
                sub_21AF23A54();
                swift_allocError();
                *v51 = v50;
                *(v51 + 8) = 0xD000000000000012;
                *(v51 + 16) = 0x800000021AF4A690;
                *(v51 + 24) = 0;
                return swift_willThrow();
              }

              return result;
            }

            goto LABEL_31;
          }

LABEL_16:
          sub_21AF499D0();
          goto LABEL_17;
        }

        if (v33 <= 32)
        {
          swift_getAssociatedConformanceWitness();
          sub_21AF49BB0();
          v39 = v53;
          sub_21AF49B90();
          v40 = *(*(v30 + 32) + 8);
          v41 = sub_21AF496B0();
          v42 = v39;
          v29 = v26;
          result = (*(v24 + 8))(v42, v26);
          if (v41)
          {
LABEL_32:
            __break(1u);
            return result;
          }

          goto LABEL_16;
        }
      }

      sub_21AF3E5AC();
      v34 = v25;
      v35 = v53;
      sub_21AF499C0();
      v36 = *(*(v30 + 32) + 8);
      v37 = sub_21AF496B0();
      v38 = v35;
      v25 = v34;
      result = (*(v24 + 8))(v38, v29);
      if (v37)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  return result;
}

uint64_t sub_21AF3F158@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21AF43D84(*a1, a1[1], a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_21AF3F190(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  return sub_21AF3E910(v5, a2, *v2);
}

uint64_t sub_21AF3F1E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  result = sub_21AF43C90(*a1, a1[1], a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_21AF3F220(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  return sub_21AF3E730(v5, a2, *v2);
}

uint64_t sub_21AF3F278@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  result = sub_21AF43E7C(*a1, a1[1], a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_21AF3F2B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  return sub_21AF3EA00(v5, a2, *v2);
}

uint64_t sub_21AF3F308@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  ObjectType = swift_getObjectType();
  v9 = (*(v7 + 24))(ObjectType, v7);
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      result = sqlite3_column_int(v9, a2);
      *a3 = result;
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21AF3F3B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  return sub_21AF3E820(v5, a2, *v2);
}

uint64_t sub_21AF3F40C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  result = sub_21AF43F74(*a1, a1[1], a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_21AF3F444(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  return sub_21AF3EAF0(v5, a2, *v2);
}

uint64_t sub_21AF3F49C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  ObjectType = swift_getObjectType();
  v9 = (*(v7 + 24))(ObjectType, v7);
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      result = sqlite3_column_int64(v9, a2);
      *a3 = result;
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t SQLiteInteger64.init(with:column:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a4;
  v47 = a5;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v44 - v14;
  v17 = *v13;
  v16 = v13[1];
  ObjectType = swift_getObjectType();
  v19 = (*(v16 + 24))(ObjectType, v16);
  result = swift_unknownObjectRelease();
  if (!v5)
  {
    v44 = v8;
    v45 = v12;
    v21 = v46;
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      v22 = v15;
      v23 = sqlite3_column_int64(v19, a2);
      v24 = *(v21 + 16);
      v25 = a3;
      if (a3 == MEMORY[0x277D84A28])
      {
        v36 = *(v24 + 8);
        goto LABEL_17;
      }

      v46 = v23;
      v26 = v22;
      sub_21AF49B00();
      v27 = *(v24 + 8);
      v28 = sub_21AF499F0();
      v29 = sub_21AF499E0();
      if (v28)
      {
        v31 = v44;
        v30 = v45;
        if (v29 > 64)
        {
          v32 = v46;
          v48 = v46;
          sub_21AF3F91C();
          sub_21AF499C0();
          v33 = *(*(v27 + 32) + 8);
          v34 = sub_21AF496B0();
          v35 = *(v31 + 8);
          v35(v30, v25);
          v35(v26, v25);
          v23 = v32;
          if (v34)
          {
            goto LABEL_19;
          }

LABEL_17:
          v48 = v23;
          sub_21AF3F91C();
          return sub_21AF49A00();
        }

        v39 = sub_21AF499D0();
        (*(v31 + 8))(v26, v25);
      }

      else
      {
        v37 = v44;
        v38 = v45;
        if (v29 > 63)
        {
          if (v46 < 0)
          {
            (*(v44 + 8))(v26, v25);
          }

          else
          {
            v48 = v46;
            sub_21AF3F91C();
            sub_21AF499C0();
            v40 = *(*(v27 + 32) + 8);
            v41 = sub_21AF496B0();
            v42 = *(v37 + 8);
            v42(v38, v25);
            v42(v26, v25);
            v23 = v46;
            if ((v41 & 1) == 0)
            {
              goto LABEL_17;
            }
          }

LABEL_19:
          sub_21AF23A54();
          swift_allocError();
          *(v43 + 8) = 0;
          *(v43 + 16) = 0;
          *v43 = 8;
          *(v43 + 24) = 9;
          return swift_willThrow();
        }

        v39 = sub_21AF499D0();
        (*(v37 + 8))(v26, v25);
      }

      v23 = v46;
      if (v46 < v39)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_21AF3F91C()
{
  result = qword_27CD3F048;
  if (!qword_27CD3F048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3F048);
  }

  return result;
}

uint64_t sub_21AF3F970(uint64_t *a1, uint64_t a2, sqlite3_int64 a3)
{
  v6 = *a1;
  v7 = a1[1];
  ObjectType = swift_getObjectType();
  result = (*(v7 + 24))(ObjectType, v7);
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      result = sqlite3_bind_int64(result, a2, a3);
      if (result)
      {
        v10 = result;
        sub_21AF23A54();
        swift_allocError();
        *v11 = v10;
        *(v11 + 8) = 0xD000000000000012;
        *(v11 + 16) = 0x800000021AF4A690;
        *(v11 + 24) = 0;
        return swift_willThrow();
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21AF3FA60(uint64_t *a1, uint64_t a2, sqlite3_int64 a3)
{
  v6 = *a1;
  v7 = a1[1];
  ObjectType = swift_getObjectType();
  result = (*(v7 + 24))(ObjectType, v7);
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        result = sqlite3_bind_int64(result, a2, a3);
        if (result)
        {
          v10 = result;
          sub_21AF23A54();
          swift_allocError();
          *v11 = v10;
          *(v11 + 8) = 0xD000000000000012;
          *(v11 + 16) = 0x800000021AF4A690;
          *(v11 + 24) = 0;
          return swift_willThrow();
        }

        return result;
      }

LABEL_10:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t SQLiteInteger64.bind(to:at:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a2;
  v6 = *(*(a4 + 16) + 8);
  v7 = *(*(v6 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = v52 - v11;
  v55 = *(a3 - 8);
  v13 = *(v55 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v52 - v17;
  v19 = *a1;
  v20 = a1[1];
  ObjectType = swift_getObjectType();
  v22 = v58;
  result = (*(v20 + 24))(ObjectType, v20);
  if (!v22)
  {
    v52[0] = v12;
    v52[1] = AssociatedTypeWitness;
    v53 = v16;
    v24 = v55;
    v25 = v57;
    if (v57 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v57 <= 0x7FFFFFFF)
    {
      v26 = a3;
      v58 = result;
      v54 = 0;
      v27 = v18;
      v28 = v18;
      v29 = a3;
      (*(v55 + 16))(v28, v56, a3);
      v30 = v6;
      v31 = v27;
      if ((sub_21AF499F0() & 1) == 0 || sub_21AF499E0() <= 64)
      {
        goto LABEL_17;
      }

      v59 = 0x8000000000000000;
      if (sub_21AF499F0())
      {
        if (sub_21AF499E0() < 64)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v32 = sub_21AF499F0();
        v33 = sub_21AF499E0();
        if ((v32 & 1) == 0)
        {
          if (v33 >= 64)
          {
LABEL_17:
            if (sub_21AF499E0() <= 64 && (sub_21AF499E0() != 64 || (sub_21AF499F0() & 1) != 0))
            {
              goto LABEL_26;
            }

            v43 = v25;
            v59 = 0x7FFFFFFFFFFFFFFFLL;
            v44 = sub_21AF499F0();
            v45 = sub_21AF499E0();
            if (v44)
            {
              v46 = v53;
              if (v45 < 65)
              {
LABEL_20:
                sub_21AF499D0();
                v25 = v43;
                goto LABEL_26;
              }
            }

            else
            {
              v46 = v53;
              if (v45 < 64)
              {
                goto LABEL_20;
              }
            }

            sub_21AF3F91C();
            sub_21AF499C0();
            v47 = *(*(v30 + 32) + 8);
            v48 = sub_21AF496B0();
            result = (*(v24 + 8))(v46, v29);
            v25 = v43;
            if ((v48 & 1) == 0)
            {
LABEL_26:
              v49 = sub_21AF499D0();
              (*(v24 + 8))(v31, v29);
              result = sqlite3_bind_int64(v58, v25, v49);
              if (result)
              {
                v50 = result;
                sub_21AF23A54();
                swift_allocError();
                *v51 = v50;
                *(v51 + 8) = 0xD000000000000012;
                *(v51 + 16) = 0x800000021AF4A690;
                *(v51 + 24) = 0;
                return swift_willThrow();
              }

              return result;
            }

            goto LABEL_31;
          }

LABEL_16:
          sub_21AF499D0();
          goto LABEL_17;
        }

        if (v33 <= 64)
        {
          swift_getAssociatedConformanceWitness();
          sub_21AF49BB0();
          v39 = v53;
          sub_21AF49B90();
          v40 = *(*(v30 + 32) + 8);
          v41 = sub_21AF496B0();
          v42 = v39;
          v29 = v26;
          result = (*(v24 + 8))(v42, v26);
          if (v41)
          {
LABEL_32:
            __break(1u);
            return result;
          }

          goto LABEL_16;
        }
      }

      sub_21AF3F91C();
      v34 = v25;
      v35 = v53;
      sub_21AF499C0();
      v36 = *(*(v30 + 32) + 8);
      v37 = sub_21AF496B0();
      v38 = v35;
      v25 = v34;
      result = (*(v24 + 8))(v38, v29);
      if (v37)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  return result;
}

unint64_t sub_21AF400B0(uint64_t a1)
{
  result = sub_21AF400D8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21AF400D8()
{
  result = qword_27CD3F050;
  if (!qword_27CD3F050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3F050);
  }

  return result;
}

unint64_t sub_21AF4012C(uint64_t a1)
{
  result = sub_21AF40154();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21AF40154()
{
  result = qword_27CD3F058;
  if (!qword_27CD3F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3F058);
  }

  return result;
}

unint64_t sub_21AF401A8(uint64_t a1)
{
  result = sub_21AF401D0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21AF401D0()
{
  result = qword_27CD3F060;
  if (!qword_27CD3F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3F060);
  }

  return result;
}

unint64_t sub_21AF40224(uint64_t a1)
{
  result = sub_21AF4024C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21AF4024C()
{
  result = qword_27CD3F068;
  if (!qword_27CD3F068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3F068);
  }

  return result;
}

unint64_t sub_21AF402A0(uint64_t a1)
{
  result = sub_21AF402C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21AF402C8()
{
  result = qword_27CD3F070;
  if (!qword_27CD3F070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3F070);
  }

  return result;
}

unint64_t sub_21AF4031C(uint64_t a1)
{
  result = sub_21AF40344();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21AF40344()
{
  result = qword_27CD3F078;
  if (!qword_27CD3F078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3F078);
  }

  return result;
}

unint64_t sub_21AF40398(uint64_t a1)
{
  result = sub_21AF403C0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21AF403C0()
{
  result = qword_27CD3F080;
  if (!qword_27CD3F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3F080);
  }

  return result;
}

unint64_t sub_21AF4044C(uint64_t a1)
{
  result = sub_21AF40474();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21AF40474()
{
  result = qword_27CD3F088;
  if (!qword_27CD3F088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3F088);
  }

  return result;
}

uint64_t sub_21AF404C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_21AF4769C(*a1, a1[1], a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_21AF40538(uint64_t a1)
{
  result = sub_21AF40560();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21AF40560()
{
  result = qword_27CD3F090;
  if (!qword_27CD3F090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3F090);
  }

  return result;
}

sqlite3_int64 sub_21AF405B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, sqlite3_int64 *a3@<X8>)
{
  result = sub_21AF4487C(*a1, a1[1], a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_21AF40624(uint64_t a1)
{
  result = sub_21AF4064C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21AF4064C()
{
  result = qword_27CD3F098;
  if (!qword_27CD3F098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3F098);
  }

  return result;
}

void *sub_21AF406D8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F030, &unk_21AF4BDC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_21AF4074C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_21AF49820();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x21CEE5D70](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_21AF407C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = a1;
  v75 = a2;

  result = sub_21AF49850();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_21AF40DA8();
    v42 = v41;

    v5 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_21AF49A80();
      v7 = v73;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOBYTE(v13) = 0;
            v26 = result + 1;
            v27 = a3;
            v16 = 1;
            do
            {
              v28 = *v26;
              if (v28 < 0x30 || v28 >= v23)
              {
                if (v28 < 0x41 || v28 >= v24)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v25)
                  {
                    goto LABEL_126;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v13 * v27;
              v31 = (v13 * v27);
              if (v31 != v30)
              {
                goto LABEL_125;
              }

              v13 = v31 + (v28 + v29);
              if (v13 != v13)
              {
                goto LABEL_125;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v16 = 0;
            v19 = v13;
            goto LABEL_126;
          }

          goto LABEL_65;
        }

LABEL_125:
        v19 = 0;
        v16 = 1;
        goto LABEL_126;
      }

      goto LABEL_130;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        LOBYTE(v32) = 0;
        v33 = a3 + 48;
        v34 = a3 + 55;
        v35 = a3 + 87;
        if (a3 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        v36 = a3;
        v16 = 1;
        while (1)
        {
          v37 = *result;
          if (v37 < 0x30 || v37 >= v33)
          {
            if (v37 < 0x41 || v37 >= v34)
            {
              v19 = 0;
              if (v37 < 0x61 || v37 >= v35)
              {
                goto LABEL_126;
              }

              v38 = -87;
            }

            else
            {
              v38 = -55;
            }
          }

          else
          {
            v38 = -48;
          }

          v39 = v32 * v36;
          v40 = (v32 * v36);
          if (v40 != v39)
          {
            goto LABEL_125;
          }

          v32 = v40 + (v37 + v38);
          if (v32 != v32)
          {
            goto LABEL_125;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = a3;
          v16 = 1;
          while (1)
          {
            v17 = *v14;
            if (v17 < 0x30 || v17 >= v10)
            {
              if (v17 < 0x41 || v17 >= v11)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v12)
                {
                  goto LABEL_126;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v13 * v15;
            v21 = (v13 * v15);
            if (v21 != v20)
            {
              goto LABEL_125;
            }

            v13 = v21 - (v17 + v18);
            if (v13 != v13)
            {
              goto LABEL_125;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_65:
        v19 = 0;
        v16 = 0;
LABEL_126:

        return (v19 | (v16 << 8));
      }

      goto LABEL_125;
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v43 = HIBYTE(v5) & 0xF;
  v74 = v6;
  v75 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v43)
      {
        LOBYTE(v32) = 0;
        v64 = a3 + 55;
        v65 = a3 + 87;
        v66 = a3 + 48;
        if (a3 > 10)
        {
          v66 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v67 = &v74;
        v68 = a3;
        v16 = 1;
        while (1)
        {
          v69 = *v67;
          if (v69 < 0x30 || v69 >= v66)
          {
            if (v69 < 0x41 || v69 >= v64)
            {
              v19 = 0;
              if (v69 < 0x61 || v69 >= v65)
              {
                goto LABEL_126;
              }

              v70 = -87;
            }

            else
            {
              v70 = -55;
            }
          }

          else
          {
            v70 = -48;
          }

          v71 = v32 * v68;
          v72 = (v32 * v68);
          if (v72 != v71)
          {
            goto LABEL_125;
          }

          v32 = v72 + (v69 + v70);
          if (v32 != v32)
          {
            goto LABEL_125;
          }

          v67 = (v67 + 1);
          if (!--v43)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        LOBYTE(v32) = 0;
        v45 = a3 + 48;
        v46 = a3 + 55;
        v47 = a3 + 87;
        if (a3 > 10)
        {
          v45 = 58;
        }

        else
        {
          v47 = 97;
          v46 = 65;
        }

        v48 = &v74 + 1;
        v49 = a3;
        v16 = 1;
        while (1)
        {
          v50 = *v48;
          if (v50 < 0x30 || v50 >= v45)
          {
            if (v50 < 0x41 || v50 >= v46)
            {
              v19 = 0;
              if (v50 < 0x61 || v50 >= v47)
              {
                goto LABEL_126;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * v49;
          v53 = (v32 * v49);
          if (v53 != v52)
          {
            goto LABEL_125;
          }

          v32 = v53 - (v50 + v51);
          if (v32 != v32)
          {
            goto LABEL_125;
          }

          ++v48;
          if (!--v44)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    goto LABEL_129;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      LOBYTE(v32) = 0;
      v55 = a3 + 48;
      v56 = a3 + 55;
      v57 = a3 + 87;
      if (a3 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v74 + 1;
      v59 = a3;
      v16 = 1;
      do
      {
        v60 = *v58;
        if (v60 < 0x30 || v60 >= v55)
        {
          if (v60 < 0x41 || v60 >= v56)
          {
            v19 = 0;
            if (v60 < 0x61 || v60 >= v57)
            {
              goto LABEL_126;
            }

            v61 = -87;
          }

          else
          {
            v61 = -55;
          }
        }

        else
        {
          v61 = -48;
        }

        v62 = v32 * v59;
        v63 = (v32 * v59);
        if (v63 != v62)
        {
          goto LABEL_125;
        }

        v32 = v63 + (v60 + v61);
        if (v32 != v32)
        {
          goto LABEL_125;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_124:
      v16 = 0;
      v19 = v32;
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_131:
  __break(1u);
  return result;
}

uint64_t sub_21AF40DA8()
{
  v0 = sub_21AF49860();
  v4 = sub_21AF40E28(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_21AF40E28(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_21AF49740();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_21AF499A0();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_21AF406D8(v9, 0);
  v12 = sub_21AF40F80(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_21AF49740();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_21AF49A80();
LABEL_4:

  return sub_21AF49740();
}

unint64_t sub_21AF40F80(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    v11 = 0;
    result = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = result;
    return v11;
  }

  if (!a3)
  {
    result = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v28 = result;
  v29 = a5;
  v11 = 0;
  v12 = a5 >> 14;
  v13 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a4 >> 14;
  v30 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v31 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v32 = v16;
  result = a4;
  v27 = a4;
  v17 = a3 - 1;
  while (1)
  {
    v18 = result >> 14;
    if (result >> 14 == v12)
    {
      goto LABEL_35;
    }

    v19 = result & 0xC;
    v20 = result;
    if (v19 == v14)
    {
      break;
    }

    if (v18 < v15)
    {
      goto LABEL_37;
    }

LABEL_12:
    if (v18 >= v12)
    {
      goto LABEL_37;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      v24 = result;
      v22 = sub_21AF49810();
      result = v24;
      if (v19 != v14)
      {
        goto LABEL_20;
      }
    }

    else if ((a7 & 0x2000000000000000) != 0)
    {
      v33[0] = a6;
      v33[1] = v31;
      v22 = *(v33 + (v20 >> 16));
      if (v19 != v14)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v21 = v30;
      if ((a6 & 0x1000000000000000) == 0)
      {
        v25 = result;
        v21 = sub_21AF49A80();
        result = v25;
      }

      v22 = *(v21 + (v20 >> 16));
      if (v19 != v14)
      {
LABEL_20:
        if ((a7 & 0x1000000000000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_26;
      }
    }

    result = sub_21AF4074C(result, a6, a7);
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_21:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_28;
    }

LABEL_26:
    if (v32 <= result >> 16)
    {
      goto LABEL_39;
    }

    result = sub_21AF497D0();
LABEL_28:
    *(a2 + v11) = v22;
    if (v17 == v11)
    {
      v11 = a3;
LABEL_35:
      v9 = v28;
      a5 = v29;
      a4 = v27;
      goto LABEL_36;
    }

    if (__OFADD__(++v11, 1))
    {
      goto LABEL_38;
    }
  }

  v23 = result;
  v20 = sub_21AF4074C(result, a6, a7);
  result = v23;
  v18 = v20 >> 14;
  if (v20 >> 14 >= v15)
  {
    goto LABEL_12;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unsigned __int8 *sub_21AF411AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_21AF49850();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_21AF40DA8();
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_21AF49A80();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOBYTE(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_126;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFF00) != 0)
              {
                goto LABEL_125;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 >> 8))
              {
                goto LABEL_125;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_126;
          }

          goto LABEL_65;
        }

LABEL_125:
        v18 = 0;
        v15 = 1;
        goto LABEL_126;
      }

      goto LABEL_130;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        LOBYTE(v28) = 0;
        v29 = a3 + 48;
        v30 = a3 + 55;
        v31 = a3 + 87;
        if (a3 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        v15 = 1;
        while (1)
        {
          v32 = *result;
          if (v32 < 0x30 || v32 >= v29)
          {
            if (v32 < 0x41 || v32 >= v30)
            {
              v18 = 0;
              if (v32 < 0x61 || v32 >= v31)
              {
                goto LABEL_126;
              }

              v33 = -87;
            }

            else
            {
              v33 = -55;
            }
          }

          else
          {
            v33 = -48;
          }

          v34 = v28 * a3;
          if ((v34 & 0xFF00) != 0)
          {
            goto LABEL_125;
          }

          v28 = v34 + (v32 + v33);
          if ((v28 >> 8))
          {
            goto LABEL_125;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_126;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFF00) != 0)
            {
              goto LABEL_125;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFFFF00) != 0)
            {
              goto LABEL_125;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_65:
        v18 = 0;
        v15 = 0;
LABEL_126:

        return (v18 | (v15 << 8));
      }

      goto LABEL_125;
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v37 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOBYTE(v28) = 0;
        v54 = a3 + 55;
        v55 = a3 + 87;
        v56 = a3 + 48;
        if (a3 > 10)
        {
          v56 = 58;
        }

        else
        {
          v55 = 97;
          v54 = 65;
        }

        v57 = &v62;
        v15 = 1;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v56)
          {
            if (v58 < 0x41 || v58 >= v54)
            {
              v18 = 0;
              if (v58 < 0x61 || v58 >= v55)
              {
                goto LABEL_126;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v28 * a3;
          if ((v60 & 0xFF00) != 0)
          {
            goto LABEL_125;
          }

          v28 = v60 + (v58 + v59);
          if ((v28 >> 8))
          {
            goto LABEL_125;
          }

          v57 = (v57 + 1);
          if (!--v37)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOBYTE(v28) = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        v15 = 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v18 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_126;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v28 * a3;
          if ((v45 & 0xFF00) != 0)
          {
            goto LABEL_125;
          }

          v28 = v45 - (v43 + v44);
          if ((v28 & 0xFFFFFF00) != 0)
          {
            goto LABEL_125;
          }

          ++v42;
          if (!--v38)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    goto LABEL_129;
  }

  if (v37)
  {
    v46 = v37 - 1;
    if (v46)
    {
      LOBYTE(v28) = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      v15 = 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v18 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_126;
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

        v53 = v28 * a3;
        if ((v53 & 0xFF00) != 0)
        {
          goto LABEL_125;
        }

        v28 = v53 + (v51 + v52);
        if ((v28 >> 8))
        {
          goto LABEL_125;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_124:
      v15 = 0;
      v18 = v28;
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_131:
  __break(1u);
  return result;
}

unsigned __int8 *sub_21AF41774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = a1;
  v75 = a2;

  result = sub_21AF49850();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_21AF40DA8();
    v42 = v41;

    v5 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_21AF49A80();
      v7 = v73;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOWORD(v13) = 0;
            v26 = result + 1;
            v27 = a3;
            v16 = 1;
            do
            {
              v28 = *v26;
              if (v28 < 0x30 || v28 >= v23)
              {
                if (v28 < 0x41 || v28 >= v24)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v25)
                  {
                    goto LABEL_126;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v13 * v27;
              v31 = (v13 * v27);
              if (v31 != v30)
              {
                goto LABEL_125;
              }

              v13 = v31 + (v28 + v29);
              if (v13 != v13)
              {
                goto LABEL_125;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v16 = 0;
            v19 = v13;
            goto LABEL_126;
          }

          goto LABEL_65;
        }

LABEL_125:
        v19 = 0;
        v16 = 1;
        goto LABEL_126;
      }

      goto LABEL_130;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        LOWORD(v32) = 0;
        v33 = a3 + 48;
        v34 = a3 + 55;
        v35 = a3 + 87;
        if (a3 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        v36 = a3;
        v16 = 1;
        while (1)
        {
          v37 = *result;
          if (v37 < 0x30 || v37 >= v33)
          {
            if (v37 < 0x41 || v37 >= v34)
            {
              v19 = 0;
              if (v37 < 0x61 || v37 >= v35)
              {
                goto LABEL_126;
              }

              v38 = -87;
            }

            else
            {
              v38 = -55;
            }
          }

          else
          {
            v38 = -48;
          }

          v39 = v32 * v36;
          v40 = (v32 * v36);
          if (v40 != v39)
          {
            goto LABEL_125;
          }

          v32 = v40 + (v37 + v38);
          if (v32 != v32)
          {
            goto LABEL_125;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOWORD(v13) = 0;
          v14 = result + 1;
          v15 = a3;
          v16 = 1;
          while (1)
          {
            v17 = *v14;
            if (v17 < 0x30 || v17 >= v10)
            {
              if (v17 < 0x41 || v17 >= v11)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v12)
                {
                  goto LABEL_126;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v13 * v15;
            v21 = (v13 * v15);
            if (v21 != v20)
            {
              goto LABEL_125;
            }

            v13 = v21 - (v17 + v18);
            if (v13 != v13)
            {
              goto LABEL_125;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_65:
        v19 = 0;
        v16 = 0;
LABEL_126:

        return (v19 | (v16 << 16));
      }

      goto LABEL_125;
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v43 = HIBYTE(v5) & 0xF;
  v74 = v6;
  v75 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v43)
      {
        LOWORD(v32) = 0;
        v64 = a3 + 55;
        v65 = a3 + 87;
        v66 = a3 + 48;
        if (a3 > 10)
        {
          v66 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v67 = &v74;
        v68 = a3;
        v16 = 1;
        while (1)
        {
          v69 = *v67;
          if (v69 < 0x30 || v69 >= v66)
          {
            if (v69 < 0x41 || v69 >= v64)
            {
              v19 = 0;
              if (v69 < 0x61 || v69 >= v65)
              {
                goto LABEL_126;
              }

              v70 = -87;
            }

            else
            {
              v70 = -55;
            }
          }

          else
          {
            v70 = -48;
          }

          v71 = v32 * v68;
          v72 = (v32 * v68);
          if (v72 != v71)
          {
            goto LABEL_125;
          }

          v32 = v72 + (v69 + v70);
          if (v32 != v32)
          {
            goto LABEL_125;
          }

          v67 = (v67 + 1);
          if (!--v43)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        LOWORD(v32) = 0;
        v45 = a3 + 48;
        v46 = a3 + 55;
        v47 = a3 + 87;
        if (a3 > 10)
        {
          v45 = 58;
        }

        else
        {
          v47 = 97;
          v46 = 65;
        }

        v48 = &v74 + 1;
        v49 = a3;
        v16 = 1;
        while (1)
        {
          v50 = *v48;
          if (v50 < 0x30 || v50 >= v45)
          {
            if (v50 < 0x41 || v50 >= v46)
            {
              v19 = 0;
              if (v50 < 0x61 || v50 >= v47)
              {
                goto LABEL_126;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * v49;
          v53 = (v32 * v49);
          if (v53 != v52)
          {
            goto LABEL_125;
          }

          v32 = v53 - (v50 + v51);
          if (v32 != v32)
          {
            goto LABEL_125;
          }

          ++v48;
          if (!--v44)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    goto LABEL_129;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      LOWORD(v32) = 0;
      v55 = a3 + 48;
      v56 = a3 + 55;
      v57 = a3 + 87;
      if (a3 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v74 + 1;
      v59 = a3;
      v16 = 1;
      do
      {
        v60 = *v58;
        if (v60 < 0x30 || v60 >= v55)
        {
          if (v60 < 0x41 || v60 >= v56)
          {
            v19 = 0;
            if (v60 < 0x61 || v60 >= v57)
            {
              goto LABEL_126;
            }

            v61 = -87;
          }

          else
          {
            v61 = -55;
          }
        }

        else
        {
          v61 = -48;
        }

        v62 = v32 * v59;
        v63 = (v32 * v59);
        if (v63 != v62)
        {
          goto LABEL_125;
        }

        v32 = v63 + (v60 + v61);
        if (v32 != v32)
        {
          goto LABEL_125;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_124:
      v16 = 0;
      v19 = v32;
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_131:
  __break(1u);
  return result;
}