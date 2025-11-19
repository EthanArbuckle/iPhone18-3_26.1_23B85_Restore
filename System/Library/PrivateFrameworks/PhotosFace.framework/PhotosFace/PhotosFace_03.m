void sub_22FDAE9D0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_22FE428C4() - 8);
  v9 = *(v8 + 84);
  v10 = sub_22FE42854();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(*(a4 + 16) - 8);
  v16 = *(v15 + 84);
  v17 = *(v8 + 64);
  v18 = *(v11 + 80);
  v19 = *(*(v10 - 8) + 64);
  v20 = *(v15 + 80);
  if (v16 <= v14)
  {
    v21 = v14;
  }

  else
  {
    v21 = *(v15 + 84);
  }

  v22 = v17 + v18;
  v23 = v19 + v18;
  v24 = v19 + 7;
  v25 = ((((((((((((v19 + 7 + ((v19 + v18 + ((v17 + v18) & ~v18)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v26 = ((v25 + v20) & ~v20) + *(v15 + 64);
  if (a3 <= v21)
  {
    v27 = 0;
  }

  else if (v26 <= 3)
  {
    v30 = ((a3 - v21 + ~(-1 << (8 * v26))) >> (8 * v26)) + 1;
    if (HIWORD(v30))
    {
      v27 = 4;
    }

    else
    {
      if (v30 < 0x100)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }

      if (v30 >= 2)
      {
        v27 = v31;
      }

      else
      {
        v27 = 0;
      }
    }
  }

  else
  {
    v27 = 1;
  }

  if (v21 < a2)
  {
    v28 = ~v21 + a2;
    if (v26 < 4)
    {
      v29 = (v28 >> (8 * v26)) + 1;
      if (v26)
      {
        v32 = v28 & ~(-1 << (8 * v26));
        bzero(a1, v26);
        if (v26 != 3)
        {
          if (v26 == 2)
          {
            *a1 = v32;
            if (v27 > 1)
            {
LABEL_55:
              if (v27 == 2)
              {
                *&a1[v26] = v29;
              }

              else
              {
                *&a1[v26] = v29;
              }

              return;
            }
          }

          else
          {
            *a1 = v28;
            if (v27 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v32;
        a1[2] = BYTE2(v32);
      }

      if (v27 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v26);
      *a1 = v28;
      v29 = 1;
      if (v27 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v27)
    {
      a1[v26] = v29;
    }

    return;
  }

  if (v27 > 1)
  {
    if (v27 != 2)
    {
      *&a1[v26] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v26] = 0;
  }

  else if (v27)
  {
    a1[v26] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v14 < v16)
  {
    v33 = *(v15 + 56);
    v34 = (&a1[v25 + v20] & ~v20);
    v35 = a2;
    v36 = v16;
LABEL_39:

    v33(v34, v35, v36);
    return;
  }

  if (v14 >= a2)
  {
    if (v9 == v14)
    {
      v33 = *(v8 + 56);
      v34 = a1;
      v35 = a2;
      v36 = v9;
      goto LABEL_39;
    }

    v38 = ~v18;
    if (v12 == v14)
    {
      v39 = *(v11 + 56);

      v39(&a1[v22] & v38, a2);
    }

    else
    {
      v40 = ((((((((((v24 + ((v23 + (&a1[v22] & v38)) & v38)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        v41 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v41 = (a2 - 1);
      }

      *v40 = v41;
    }
  }

  else if (v25)
  {
    v37 = ~v14 + a2;
    bzero(a1, v25);
    *a1 = v37;
  }
}

void sub_22FDAEE44()
{
  sub_22FE428C4();
  if (v0 <= 0x3F)
  {
    sub_22FE42854();
    if (v1 <= 0x3F)
    {
      sub_22FDAEF38();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22FDAEF38()
{
  if (!qword_28148AE78)
  {
    v0 = sub_22FE43744();
    if (!v1)
    {
      atomic_store(v0, &qword_28148AE78);
    }
  }
}

uint64_t sub_22FDAEFA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FDAF00C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoredPhotoLayout(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FDAF070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FDAF0D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FDAF148(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for DatabaseBinding()
{
  result = qword_28148BA00;
  if (!qword_28148BA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FDAF2A4()
{
  result = sub_22FE42854();
  if (v1 <= 0x3F)
  {
    result = sub_22FE42774();
    if (v2 <= 0x3F)
    {
      result = sub_22FE428C4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabaseConnection.insert(sql:bindings:)(Swift::String sql, Swift::OpaquePointer bindings)
{
  v21 = *v2;
  v5 = sub_22FDB08B0();
  if (!v3)
  {
    v6 = v5;
    v7 = *(bindings._rawValue + 2);
    v8 = (bindings._rawValue + 32);
    while (v7)
    {
      v9 = *v8;

      sub_22FDB31B8(v10, v6);

      sub_22FDB33A0(v6);
      v11 = sqlite3_step(v6);
      if (v11 != 101)
      {
        v17 = v11;
        if (sqlite3_errstr(v11))
        {
          v14 = sub_22FE43104();
          v16 = v18;
        }

        else
        {
          v14 = 4271950;
          v16 = 0xE300000000000000;
        }

        v19 = v17 | 0x4000000000000000;
        goto LABEL_14;
      }

      v12 = sqlite3_reset(v6);
      ++v8;
      --v7;
      if (v12)
      {
        v13 = v12;
        if (sqlite3_errstr(v12))
        {
          v14 = sub_22FE43104();
          v16 = v15;
        }

        else
        {
          v14 = 4271950;
          v16 = 0xE300000000000000;
        }

        v19 = v13 | 0x8000000000000000;
LABEL_14:
        sub_22FD916D8();
        swift_allocError();
        *v20 = v19;
        v20[1] = v14;
        v20[2] = v16;
        swift_willThrow();
        break;
      }
    }

    sub_22FDB35E0(v6);
  }
}

uint64_t DatabaseConnection.query<A>(sql:bindings:step:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(sqlite3_stmt **), uint64_t a5, uint64_t a6)
{
  v15 = *v6;
  v12 = sub_22FDB08B0();
  if (!v7)
  {
    v13 = v12;
    a6 = sub_22FDB2DEC(a3, a4, a5, v12, a6);
    sub_22FDB35E0(v13);
  }

  return a6;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabaseConnection.delete(sql:bindings:)(Swift::String sql, Swift::OpaquePointer bindings)
{
  v13 = *v2;
  v5 = sub_22FDB08B0();
  if (!v3)
  {
    v6 = v5;
    sub_22FDB31B8(bindings._rawValue, v5);
    sub_22FDB33A0(v6);
    v7 = sqlite3_step(v6);
    if (v7 != 101)
    {
      v8 = v7;
      if (sqlite3_errstr(v7))
      {
        v9 = sub_22FE43104();
        v11 = v10;
      }

      else
      {
        v11 = 0xE300000000000000;
        v9 = 4271950;
      }

      sub_22FD916D8();
      swift_allocError();
      *v12 = v8 | 0x6000000000000000;
      v12[1] = v9;
      v12[2] = v11;
      swift_willThrow();
    }

    sub_22FDB35E0(v6);
  }
}

uint64_t static DatabaseConnection.open(location:)@<X0>(uint64_t a1@<X0>, sqlite3 **a2@<X8>)
{
  ppDb[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22FE42774();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  v12 = type metadata accessor for DatabaseConnection.Location();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  ppDb[0] = 0;
  sub_22FD9F5B0(a1, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2B08, qword_22FE48DB0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
  {
    v17 = 0xE800000000000000;
    v18 = 0x3A79726F6D656D3ALL;
  }

  else
  {
    (*(v5 + 32))(v11, v15, v4);
    sub_22FE42714();
    v18 = sub_22FE426D4();
    v17 = v19;
    v20 = *(v5 + 8);
    v20(v9, v4);
    v20(v11, v4);
  }

  if (qword_28148B0A0 != -1)
  {
    swift_once();
  }

  v21 = sub_22FE42D34();
  __swift_project_value_buffer(v21, qword_28148B0A8);

  v22 = sub_22FE42D14();
  v23 = sub_22FE436C4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v37 = v25;
    *v24 = 136315138;
    v26 = sub_22FD98218(v18, v17, &v37);

    *(v24 + 4) = v26;
    _os_log_impl(&dword_22FD6D000, v22, v23, "Opening database connection: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x23190C380](v25, -1, -1);
    MEMORY[0x23190C380](v24, -1, -1);
  }

  else
  {
  }

  v27 = sub_22FE430C4();

  v28 = sqlite3_open_v2((v27 + 32), ppDb, 6, 0);

  if (v28)
  {
    if (sqlite3_errstr(v28))
    {
      v30 = sub_22FE43104();
      v32 = v31;
    }

    else
    {
      v32 = 0xE300000000000000;
      v30 = 4271950;
    }

    sub_22FDB1A38();
    swift_allocError();
    *v33 = v28;
    *(v33 + 8) = v30;
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    goto LABEL_16;
  }

  if (!ppDb[0])
  {
    sub_22FDB1A38();
    swift_allocError();
    *(v35 + 8) = 0;
    *(v35 + 16) = 0;
    *v35 = 0;
    *(v35 + 24) = 4;
LABEL_16:
    result = swift_willThrow();
    goto LABEL_17;
  }

  *a2 = ppDb[0];
LABEL_17:
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabaseConnection.migrate(bundle:migrations:)(NSBundle bundle, Swift::OpaquePointer migrations)
{
  rawValue = migrations._rawValue;
  v5 = sub_22FE430A4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22FE42774();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v89 - v15;
  v17 = *v2;
  v111._countAndFlagsBits = *v2;
  v18 = sub_22FDB08B0();
  if (v3)
  {
    return;
  }

  v19 = v18;
  isa = bundle.super.isa;
  v106 = v10;
  v20 = rawValue;
  v104 = v8;
  sub_22FDB31B8(MEMORY[0x277D84F90], v18);
  sub_22FDB33A0(v19);
  v21 = sqlite3_step(v19);
  if (v21 == 100)
  {
    if (sqlite3_column_type(v19, 0) != 5)
    {
      v103 = sqlite3_column_int(v19, 0);
      goto LABEL_10;
    }

    sub_22FD9172C();
    swift_allocError();
    *v22 = 0;
    *(v22 + 4) = 0;
LABEL_40:
    swift_willThrow();
    sub_22FDB35E0(v19);
    return;
  }

  if (v21 != 101)
  {
    v23 = v21;
    if (sqlite3_errstr(v21))
    {
      v24 = sub_22FE43104();
      v26 = v25;
    }

    else
    {
      v26 = 0xE300000000000000;
      v24 = 4271950;
    }

    sub_22FD916D8();
    swift_allocError();
    *v78 = v23 | 0xA000000000000000;
    v78[1] = v24;
    v78[2] = v26;
    goto LABEL_40;
  }

  v103 = 0;
LABEL_10:
  v98 = v14;
  sub_22FDB35E0(v19);
  if (qword_28148B0A0 != -1)
  {
    swift_once();
  }

  v27 = sub_22FE42D34();
  v100 = __swift_project_value_buffer(v27, qword_28148B0A8);
  v28 = sub_22FE42D14();
  v29 = sub_22FE436C4();
  v30 = os_log_type_enabled(v28, v29);
  v101 = v9;
  v99 = v17;
  if (v30)
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v103;
    _os_log_impl(&dword_22FD6D000, v28, v29, "Current version is %ld", v9, 0xCu);
    MEMORY[0x23190C380](v9, -1, -1);
  }

  v32 = v20[2];
  if (!v32)
  {
    return;
  }

  v102 = v16;
  v33 = 0;
  v97 = (v106 + 2);
  ++v106;
  v92._object = 0x800000022FE480D0;
  v34 = (v20 + 6);
  v35 = &_swift_FORCE_LOAD___swiftMLCompute___PhotosFace;
  *&v31 = 136315138;
  v94 = v31;
  v92._countAndFlagsBits = 0xD000000000000027;
  v36 = v103;
  while (2)
  {
    v37 = &v34[24 * v33];
    v38 = v33;
    while (1)
    {
      if (v38 >= v32)
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v33 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_48;
      }

      if (v36 + 1 == ++v38)
      {
        break;
      }

      v37 += 24;
      if (v33 == v32)
      {
        return;
      }
    }

    rawValue = v3;
    v40 = *(v37 - 2);
    v39 = *(v37 - 1);
    v91 = *v37;

    v90 = v40;
    v96 = v39;
    v41 = sub_22FE43054();
    v42 = sub_22FE43054();
    v43 = [isa v35[98]];

    if (!v43)
    {
      sub_22FDB1A38();
      swift_allocError();
      v79 = v96;
      *v80 = v90;
      *(v80 + 8) = v79;
      *(v80 + 16) = 0;
      *(v80 + 24) = 3;
      swift_willThrow();
      return;
    }

    v93 = v34;
    v44 = v102;
    sub_22FE42734();

    v45 = v98;
    v46 = v44;
    v47 = v101;
    (*v97)(v98, v46, v101);
    v48 = sub_22FE42D14();
    v49 = sub_22FE436C4();
    v50 = os_log_type_enabled(v48, v49);
    v103 = v36;
    if (v50)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v111._countAndFlagsBits = v52;
      *v51 = v94;
      sub_22FD9F614();
      v53 = sub_22FE43C24();
      v54 = v47;
      v56 = v55;
      v95 = *v106;
      v95(v45, v54);
      v57 = sub_22FD98218(v53, v56, &v111._countAndFlagsBits);

      *(v51 + 4) = v57;
      _os_log_impl(&dword_22FD6D000, v48, v49, "Running migration: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x23190C380](v52, -1, -1);
      MEMORY[0x23190C380](v51, -1, -1);
    }

    else
    {

      v95 = *v106;
      v95(v45, v47);
    }

    sub_22FE43094();
    v58 = rawValue;
    v59 = sub_22FE43044();
    rawValue = v58;
    if (v58)
    {
      v95(v102, v101);

      return;
    }

    v111._countAndFlagsBits = v59;
    v111._object = v60;
    v109 = 63;
    v110 = 0xE100000000000000;
    v107 = v33;
    v107 = sub_22FE43C24();
    v108 = v61;
    sub_22FD750CC();
    v62 = sub_22FE437B4();
    v64 = v63;

    v9 = v99;
    v111._countAndFlagsBits = v99;
    v65._countAndFlagsBits = v62;
    v65._object = v64;
    DatabaseConnection.execute(sql:)(v65);
    rawValue = v66;
    if (!v66)
    {
      v95(v102, v101);

      v36 = v103 + 1;
      if (!__OFADD__(v103, 1))
      {
        v3 = rawValue;
        v34 = v93;
        goto LABEL_36;
      }

LABEL_54:
      __break(1u);
      return;
    }

    v67 = v96;

    v35 = sub_22FE42D14();
    v68 = sub_22FE436A4();

    v69 = os_log_type_enabled(v35, v68);
    if (!v91)
    {
      if (v69)
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v111._countAndFlagsBits = v82;
        *v81 = v94;
        v83 = sub_22FD98218(v90, v67, &v111._countAndFlagsBits);

        *(v81 + 4) = v83;
        _os_log_impl(&dword_22FD6D000, v35, v68, "Error while executing migration: %s.", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v82);
        MEMORY[0x23190C380](v82, -1, -1);
        v84 = v81;
        v9 = v99;
        MEMORY[0x23190C380](v84, -1, -1);
        goto LABEL_50;
      }

LABEL_49:

LABEL_50:

      v85 = v101;
      v86 = v102;
      v111._countAndFlagsBits = v9;
      v87._countAndFlagsBits = 0x6B6361626C6C6F72;
      v87._object = 0xE800000000000000;
      DatabaseConnection.execute(sql:)(v87);
      if (v88)
      {
        v95(v86, v85);
      }

      else
      {
        swift_willThrow();
        v95(v86, v85);
      }

      return;
    }

    if (v69)
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v111._countAndFlagsBits = v71;
      *v70 = v94;
      v72 = sub_22FD98218(v90, v67, &v111._countAndFlagsBits);

      *(v70 + 4) = v72;
      _os_log_impl(&dword_22FD6D000, v35, v68, "Ignoring error while executing migration: %s.", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x23190C380](v71, -1, -1);
      v73 = v70;
      v9 = v99;
      MEMORY[0x23190C380](v73, -1, -1);
    }

    else
    {
    }

    v74 = v103;
    v34 = v93;
    v109 = v9;
    v111._countAndFlagsBits = 0;
    v111._object = 0xE000000000000000;
    sub_22FE438F4();

    v111 = v92;
    v107 = v33;
    v75 = sub_22FE43C24();
    v9 = v76;
    MEMORY[0x23190ACF0](v75);

    MEMORY[0x23190ACF0](0x54494D4D4F43203BLL, 0xE90000000000003BLL);
    DatabaseConnection.execute(sql:)(v111);
    if (v3)
    {
      v95(v102, v101);

      return;
    }

    v95(v102, v101);

    v77 = __OFADD__(v74, 1);
    v36 = v74 + 1;
    if (v77)
    {
      __break(1u);
      goto LABEL_54;
    }

LABEL_36:
    v35 = &_swift_FORCE_LOAD___swiftMLCompute___PhotosFace;
    if (v33 != v32)
    {
      continue;
    }

    break;
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabaseConnection.beginTransaction()()
{
  v2 = *v0;
  v1._countAndFlagsBits = 0x6E69676562;
  v1._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v1);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabaseConnection.commitTransaction()()
{
  v2 = *v0;
  v1._countAndFlagsBits = 0x74696D6D6F63;
  v1._object = 0xE600000000000000;
  DatabaseConnection.execute(sql:)(v1);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabaseConnection.rollbackTransaction()()
{
  v2 = *v0;
  v1._countAndFlagsBits = 0x6B6361626C6C6F72;
  v1._object = 0xE800000000000000;
  DatabaseConnection.execute(sql:)(v1);
}

void DatabaseConnection.queryUnique<A>(sql:bindings:step:)(uint64_t a1@<X2>, void (*a2)(sqlite3_stmt **)@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v12 = *v4;
  v10 = sub_22FDB08B0();
  if (!v5)
  {
    v11 = v10;
    sub_22FDB3024(a1, a2, v10, a3, a4);
    sub_22FDB35E0(v11);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabaseConnection.execute(sql:)(Swift::String sql)
{
  object = sql._object;
  countAndFlagsBits = sql._countAndFlagsBits;
  v4 = *v1;
  v5 = sub_22FE430C4();
  v6 = sqlite3_exec(v4, (v5 + 32), 0, 0, 0);

  if (sub_22FDB0F74(0x4C51536775626544, 0xE800000000000000, 0))
  {
    if (qword_28148B0A0 != -1)
    {
      swift_once();
    }

    v7 = sub_22FE42D34();
    __swift_project_value_buffer(v7, qword_28148B0A8);

    v8 = sub_22FE42D14();
    v9 = sub_22FE436C4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_22FD98218(countAndFlagsBits, object, &v16);
      _os_log_impl(&dword_22FD6D000, v8, v9, "%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23190C380](v11, -1, -1);
      MEMORY[0x23190C380](v10, -1, -1);
    }
  }

  if (v6)
  {
    if (sqlite3_errstr(v6))
    {
      v12 = sub_22FE43104();
      v14 = v13;
    }

    else
    {
      v14 = 0xE300000000000000;
      v12 = 4271950;
    }

    sub_22FDB1A38();
    swift_allocError();
    *v15 = v6;
    *(v15 + 8) = v12;
    *(v15 + 16) = v14;
    *(v15 + 24) = 1;
    swift_willThrow();
  }
}

sqlite3_stmt *sub_22FDB08B0()
{
  v11[1] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v11[0] = 0;
  v2 = sub_22FE430C4();
  v3 = sqlite3_prepare_v2(v1, (v2 + 32), -1, v11, 0);

  if (v3)
  {
    if (sqlite3_errstr(v3))
    {
      v4 = sub_22FE43104();
      v6 = v5;
    }

    else
    {
      v6 = 0xE300000000000000;
      v4 = 4271950;
    }

    sub_22FDB1A38();
    swift_allocError();
    *v8 = v3;
    *(v8 + 8) = v4;
    *(v8 + 16) = v6;
    v9 = 2;
    goto LABEL_8;
  }

  result = v11[0];
  if (!v11[0])
  {
    sub_22FDB1A38();
    swift_allocError();
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *v8 = 1;
    v9 = 4;
LABEL_8:
    *(v8 + 24) = v9;
    result = swift_willThrow();
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *DatabaseConnection.insert<A>(sql:bindings:step:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(sqlite3_stmt **), uint64_t a5, uint64_t a6)
{
  v26 = *v6;
  v12 = &v26;
  v13 = sub_22FDB08B0();
  if (!v7)
  {
    v14 = v13;
    v26 = sub_22FE42F34();
    v15 = *(a3 + 16);
    v16 = (a3 + 32);
    do
    {
      if (!v15)
      {
        v12 = v26;
        sub_22FDB35E0(v14);
        return v12;
      }

      v17 = *v16;

      sub_22FDB2DEC(v18, a4, a5, v14, a6);

      sub_22FE43354();
      swift_getWitnessTable();
      sub_22FE43314();
      v19 = sqlite3_reset(v14);
      ++v16;
      --v15;
    }

    while (!v19);
    v20 = v19;

    v21 = v20;
    if (sqlite3_errstr(v20))
    {
      v22 = sub_22FE43104();
      v12 = v23;
    }

    else
    {
      v12 = 0xE300000000000000;
      v22 = 4271950;
    }

    sub_22FD916D8();
    swift_allocError();
    *v24 = v21 | 0x8000000000000000;
    v24[1] = v22;
    v24[2] = v12;
    swift_willThrow();
    sub_22FDB35E0(v14);
  }

  return v12;
}

uint64_t DatabaseConnection.Location.description.getter()
{
  v1 = v0;
  v2 = sub_22FE42774();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DatabaseConnection.Location();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FD9F5B0(v1, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2B08, qword_22FE48DB0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    return 0x726F6D654D2D6E49;
  }

  (*(v3 + 32))(v6, v10, v2);
  sub_22FD9F614();
  v13 = sub_22FE43C24();
  (*(v3 + 8))(v6, v2);
  return v13;
}

uint64_t sub_22FDB0D6C(uint64_t a1)
{
  v3 = v1;
  v4 = sub_22FE42774();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FD9F5B0(v3, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2B08, qword_22FE48DB0);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    return 0x726F6D654D2D6E49;
  }

  (*(v5 + 32))(v9, v12, v4);
  sub_22FD9F614();
  v15 = sub_22FE43C24();
  (*(v5 + 8))(v9, v4);
  return v15;
}

uint64_t type metadata accessor for DatabaseConnection.Location()
{
  result = qword_28148B330;
  if (!qword_28148B330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FDB0F74(uint64_t a1, unint64_t a2, char a3)
{
  if (os_variant_has_internal_diagnostics())
  {
    if (qword_28148BBF8 != -1)
    {
      swift_once();
    }

    v6 = _sSb10PhotosFaceE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(qword_28148BC00);
    if (v6 != 2 && (v6 & 1) != (a3 & 1))
    {
      v8 = v6;
      if (qword_28148B100 != -1)
      {
        swift_once();
      }

      v9 = sub_22FE42D34();
      __swift_project_value_buffer(v9, qword_28148B108);

      v10 = sub_22FE42D14();
      v11 = sub_22FE436C4();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v18 = v13;
        *v12 = 136315394;
        *(v12 + 4) = sub_22FD98218(a1, a2, &v18);
        *(v12 + 12) = 2080;
        v14 = sub_22FE430B4();
        v16 = sub_22FD98218(v14, v15, &v18);

        *(v12 + 14) = v16;
        _os_log_impl(&dword_22FD6D000, v10, v11, "Non default value set for %s: %s", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190C380](v13, -1, -1);
        MEMORY[0x23190C380](v12, -1, -1);
      }

      a3 = v8;
    }
  }

  return a3 & 1;
}

uint64_t sub_22FDB1188(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (os_variant_has_internal_diagnostics())
  {
    if (qword_28148BBF8 != -1)
    {
      swift_once();
    }

    v8 = sub_22FE0FDC8(qword_28148BC00);
    v9 = v8;
    if (v10)
    {
      if (a4)
      {
        return a3;
      }
    }

    else if ((a4 & 1) == 0 && v8 == a3)
    {
      return a3;
    }

    if (qword_28148B100 != -1)
    {
      swift_once();
    }

    v11 = sub_22FE42D34();
    __swift_project_value_buffer(v11, qword_28148B108);

    v12 = sub_22FE42D14();
    v13 = sub_22FE436C4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_22FD98218(a1, a2, &v20);
      *(v14 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42F0, &qword_22FE4AA40);
      v16 = sub_22FE430B4();
      v18 = sub_22FD98218(v16, v17, &v20);

      *(v14 + 14) = v18;
      _os_log_impl(&dword_22FD6D000, v12, v13, "Non default value set for %s: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190C380](v15, -1, -1);
      MEMORY[0x23190C380](v14, -1, -1);
    }

    return v9;
  }

  return a3;
}

uint64_t sub_22FDB13CC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (os_variant_has_internal_diagnostics())
  {
    if (qword_28148BBF8 != -1)
    {
      swift_once();
    }

    v6 = static Duration.read(from:key:)(qword_28148BC00);
    if ((v7 & 1) == 0)
    {
      v8 = v6;
      if ((sub_22FE43E94() & 1) == 0)
      {
        if (qword_28148B100 != -1)
        {
          swift_once();
        }

        v9 = sub_22FE42D34();
        __swift_project_value_buffer(v9, qword_28148B108);

        v10 = sub_22FE42D14();
        v11 = sub_22FE436C4();

        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v18 = v13;
          *v12 = 136315394;
          *(v12 + 4) = sub_22FD98218(a1, a2, &v18);
          *(v12 + 12) = 2080;
          v14 = sub_22FE430B4();
          v16 = sub_22FD98218(v14, v15, &v18);

          *(v12 + 14) = v16;
          _os_log_impl(&dword_22FD6D000, v10, v11, "Non default value set for %s: %s", v12, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23190C380](v13, -1, -1);
          MEMORY[0x23190C380](v12, -1, -1);
        }

        return v8;
      }
    }
  }

  return a3;
}

uint64_t sub_22FDB15E8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (os_variant_has_internal_diagnostics())
  {
    if (qword_28148BBF8 != -1)
    {
      swift_once();
    }

    v6 = sub_22FE0FDC8(qword_28148BC00);
    if ((v7 & 1) == 0)
    {
      v8 = v6;
      if (v6 != a3)
      {
        if (qword_28148B100 != -1)
        {
          swift_once();
        }

        v9 = sub_22FE42D34();
        __swift_project_value_buffer(v9, qword_28148B108);

        v10 = sub_22FE42D14();
        v11 = sub_22FE436C4();

        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v18 = v13;
          *v12 = 136315394;
          *(v12 + 4) = sub_22FD98218(a1, a2, &v18);
          *(v12 + 12) = 2080;
          v14 = sub_22FE430B4();
          v16 = sub_22FD98218(v14, v15, &v18);

          *(v12 + 14) = v16;
          _os_log_impl(&dword_22FD6D000, v10, v11, "Non default value set for %s: %s", v12, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23190C380](v13, -1, -1);
          MEMORY[0x23190C380](v12, -1, -1);
        }

        return v8;
      }
    }
  }

  return a3;
}

uint64_t sub_22FDB17EC(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (os_variant_has_internal_diagnostics())
  {
    if (qword_28148BBF8 != -1)
    {
      swift_once();
    }

    v8 = COERCE_DOUBLE(sub_22FE0FF20(qword_28148BC00, a1, a2));
    v9 = v8;
    if (v10)
    {
      if (a4)
      {
        return a3;
      }
    }

    else if ((a4 & 1) == 0 && v8 == *&a3)
    {
      return a3;
    }

    if (qword_28148B100 != -1)
    {
      swift_once();
    }

    v11 = sub_22FE42D34();
    __swift_project_value_buffer(v11, qword_28148B108);

    v12 = sub_22FE42D14();
    v13 = sub_22FE436C4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_22FD98218(a1, a2, &v20);
      *(v14 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42F8, &qword_22FE4AA48);
      v16 = sub_22FE430B4();
      v18 = sub_22FD98218(v16, v17, &v20);

      *(v14 + 14) = v18;
      _os_log_impl(&dword_22FD6D000, v12, v13, "Non default value set for %s: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190C380](v15, -1, -1);
      MEMORY[0x23190C380](v14, -1, -1);
    }

    *&a3 = v9;
  }

  return a3;
}

unint64_t sub_22FDB1A38()
{
  result = qword_27DAE42E8;
  if (!qword_27DAE42E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE42E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseConnection(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for DatabaseConnection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_22FDB1B44()
{
  sub_22FDB1B9C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_22FDB1B9C()
{
  if (!qword_28148BE68)
  {
    v0 = sub_22FE42774();
    if (!v1)
    {
      atomic_store(v0, &qword_28148BE68);
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22FDB1BF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_22FDB1C40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10PhotosFace18DatabaseConnectionV7Failure33_20D109090B5EA4E2C93FF5ABBD7D171FLLO(uint64_t a1)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_22FDB1CC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22FDB1D08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_22FDB1D50(uint64_t result, unsigned int a2)
{
  v2 = a2 - 4;
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_22FDB1D7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22FDB1DC4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t DatabaseRow.readUUID(column:)(int iCol)
{
  v3 = *v1;
  if (sqlite3_column_type(*v1, iCol) == 5 || (v4 = sqlite3_column_blob(v3, iCol)) == 0)
  {
    sub_22FD9172C();
    swift_allocError();
    *v10 = iCol;
    *(v10 + 4) = 0;
    return swift_willThrow();
  }

  else
  {
    v5 = v4;
    v6 = sqlite3_column_bytes(v3, iCol);
    v7 = sub_22FDB285C(v5, v6);
    return UUID.init(serialized:version:)(v7, v8);
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabaseRow.readString(column:)(Swift::Int32 column)
{
  v3 = *v1;
  if (sqlite3_column_type(v3, column) == 5 || !sqlite3_column_text(v3, column))
  {
    sub_22FD9172C();
    swift_allocError();
    *v6 = column;
    *(v6 + 4) = 0;
    v4 = swift_willThrow();
  }

  else
  {
    v4 = sub_22FE43114();
  }

  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabaseRow.readInt(column:)(Swift::Int32 column)
{
  v3 = *v1;
  if (sqlite3_column_type(*v1, column) != 5)
  {
    return sqlite3_column_int(v3, column);
  }

  sub_22FD9172C();
  swift_allocError();
  *v4 = column;
  *(v4 + 4) = 0;
  return swift_willThrow();
}

Swift::String_optional __swiftcall DatabaseRow.readNullableString(column:)(Swift::Int32 column)
{
  v3 = *v1;
  if (sqlite3_column_type(v3, column) == 5)
  {
    v4 = 0;
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = sqlite3_column_text(v3, column);
  if (!v4)
  {
    goto LABEL_5;
  }

  v4 = sub_22FE43114();
LABEL_6:
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabaseRow.readBool(column:)(Swift::Int32 column)
{
  v3 = *v1;
  if (sqlite3_column_type(*v1, column) == 5)
  {
    sub_22FD9172C();
    swift_allocError();
    *v4 = column;
    *(v4 + 4) = 0;
    swift_willThrow();
  }

  else
  {
    return sqlite3_column_int(v3, column) == 1;
  }

  return v5;
}

uint64_t DatabaseRow.readDate(column:)(int iCol)
{
  v3 = *v1;
  if (sqlite3_column_type(*v1, iCol) == 5)
  {
    sub_22FD9172C();
    swift_allocError();
    *v4 = iCol;
    *(v4 + 4) = 0;
    return swift_willThrow();
  }

  else
  {
    sqlite3_column_double(v3, iCol);
    return sub_22FE42804();
  }
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabaseRow.readDouble(column:)(Swift::Int32 column)
{
  v3 = *v1;
  if (sqlite3_column_type(v3, column) != 5)
  {
    return sqlite3_column_double(v3, column);
  }

  sub_22FD9172C();
  swift_allocError();
  *v4 = column;
  *(v4 + 4) = 0;
  swift_willThrow();
  return result;
}

Swift::Int_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabaseRow.readNullableInt(column:)(Swift::Int32 column)
{
  v3 = *v1;
  v4 = sqlite3_column_type(*v1, column);
  if (v4 == 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = sqlite3_column_int(v3, column);
  }

  v6 = v4 == 5;
  result.value = v5;
  result.is_nil = v6;
  return result;
}

Swift::Double_optional __swiftcall DatabaseRow.readNullableDouble(column:)(Swift::Int32 column)
{
  v3 = *v1;
  if (sqlite3_column_type(*v1, column) == 5)
  {
    v5 = 0;
  }

  else
  {
    v4 = sqlite3_column_double(v3, column);
    v5 = LOBYTE(v4);
  }

  result.value = v4;
  result.is_nil = v5;
  return result;
}

uint64_t DatabaseRow.readData(column:)(int iCol)
{
  v3 = *v1;
  if (sqlite3_column_type(v3, iCol) == 5 || (v4 = sqlite3_column_blob(v3, iCol)) == 0)
  {
    sub_22FD9172C();
    swift_allocError();
    *v8 = iCol;
    *(v8 + 4) = 0;
    return swift_willThrow();
  }

  else
  {
    v5 = v4;
    v6 = sqlite3_column_bytes(v3, iCol);
    return sub_22FDB285C(v5, v6);
  }
}

uint64_t DatabaseRow.readNullableDate(column:)@<X0>(int iCol@<W0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if (sqlite3_column_type(*v2, iCol) == 5)
  {
    v6 = 1;
  }

  else
  {
    sqlite3_column_double(v5, iCol);
    sub_22FE42804();
    v6 = 0;
  }

  v7 = sub_22FE42854();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

Swift::Bool_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DatabaseRow.readNullableBool(column:)(Swift::Int32 column)
{
  v3 = *v1;
  if (sqlite3_column_type(*v1, column) == 5)
  {
    return 2;
  }

  else
  {
    return (sqlite3_column_int(v3, column) == 1);
  }
}

uint64_t DatabaseRow.readLink(column:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = *v2;
  if (sqlite3_column_type(*v2, a1) == 5 || !sqlite3_column_text(v9, a1))
  {
    sub_22FD9172C();
    swift_allocError();
    *v13 = a1;
    *(v13 + 4) = 0;
    return swift_willThrow();
  }

  sub_22FE43114();
  sub_22FE42744();

  v10 = sub_22FE42774();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_22FDB290C(v8);
    sub_22FD9172C();
    swift_allocError();
    *v12 = a1;
    *(v12 + 4) = 1;
    return swift_willThrow();
  }

  return (*(v11 + 32))(a2, v8, v10);
}

uint64_t DatabaseRow.readNullableLink(column:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = *v2;
  if (sqlite3_column_type(*v2, a1) == 5 || !sqlite3_column_text(v9, a1))
  {
    v14 = sub_22FE42774();
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }

  else
  {
    sub_22FE43114();
    sub_22FE42744();

    v10 = sub_22FE42774();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v8, 1, v10) == 1)
    {
      sub_22FDB290C(v8);
      sub_22FD9172C();
      swift_allocError();
      *v12 = a1;
      *(v12 + 4) = 1;
      return swift_willThrow();
    }

    else
    {
      (*(v11 + 32))(a2, v8, v10);
      return (*(v11 + 56))(a2, 0, 1, v10);
    }
  }
}

uint64_t sub_22FDB285C(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_22FE088C0(a1, &a1[a2]);
  }

  v3 = sub_22FE42694();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_22FE42644();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_22FE427A4();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_22FDB290C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseRow.Failure(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
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

uint64_t storeEnumTagSinglePayload for DatabaseRow.Failure(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_22FDB2A54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 4);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 29;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22FDB2AA4(uint64_t result, int a2, int a3)
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
      HIDWORD(v3) = -a2;
      LODWORD(v3) = -a2;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 >> 3) << 32;
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

void *sub_22FDB2B74(void *i, sqlite3_stmt *a2, void (*a3)(sqlite3_stmt *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41C8, &unk_22FE4A830);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v24 - v13;
  sub_22FDB31B8(i, a2);
  if (!v3)
  {
    sub_22FDB33A0(a2);
    for (i = MEMORY[0x277D84F90]; ; sub_22FDB3F34(v12, i + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v18))
    {
      v16 = sqlite3_step(a2);
      if (v16 != 100)
      {
        break;
      }

      a3(a2);
      sub_22FDB3570(v14, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        i = sub_22FD919A4(0, i[2] + 1, 1, i);
      }

      v18 = i[2];
      v17 = i[3];
      if (v18 >= v17 >> 1)
      {
        i = sub_22FD919A4(v17 > 1, v18 + 1, 1, i);
      }

      sub_22FD93E6C(v14, &qword_27DAE41C8, &unk_22FE4A830);
      i[2] = v18 + 1;
    }

    v19 = v16;
    if (v16 != 101)
    {

      if (sqlite3_errstr(v19))
      {
        v20 = sub_22FE43104();
        v22 = v21;
      }

      else
      {
        v22 = 0xE300000000000000;
        v20 = 4271950;
      }

      sub_22FD916D8();
      swift_allocError();
      *v23 = v19 | 0xA000000000000000;
      v23[1] = v20;
      v23[2] = v22;
      swift_willThrow();
    }
  }

  return i;
}

uint64_t sub_22FDB2DEC(uint64_t a1, void (*a2)(sqlite3_stmt **), uint64_t a3, sqlite3_stmt *a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v25 - v15;
  result = sub_22FDB31B8(v14, v17);
  if (!v5)
  {
    v25 = a2;
    sub_22FDB33A0(a4);
    v27 = sub_22FE42F34();
    while (1)
    {
      v19 = sqlite3_step(a4);
      if (v19 != 100)
      {
        break;
      }

      v26 = a4;
      v25(&v26);
      (*(v9 + 16))(v13, v16, a5);
      sub_22FE43354();
      sub_22FE43324();
      (*(v9 + 8))(v16, a5);
    }

    if (v19 == 101)
    {
      return v27;
    }

    else
    {
      v20 = v19;

      if (sqlite3_errstr(v20))
      {
        v21 = sub_22FE43104();
        v23 = v22;
      }

      else
      {
        v23 = 0xE300000000000000;
        v21 = 4271950;
      }

      sub_22FD916D8();
      swift_allocError();
      *v24 = v20 | 0xA000000000000000;
      v24[1] = v21;
      v24[2] = v23;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_22FDB3024@<X0>(uint64_t a1@<X0>, void (*a2)(sqlite3_stmt **)@<X1>, sqlite3_stmt *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  result = sub_22FDB31B8(a1, a3);
  if (!v5)
  {
    sub_22FDB33A0(a3);
    v11 = sqlite3_step(a3);
    if (v11 == 101)
    {
      return (*(*(a4 - 8) + 56))(a5, 1, 1, a4);
    }

    else if (v11 == 100)
    {
      v17 = a3;
      a2(&v17);
      return (*(*(a4 - 8) + 56))(a5, 0, 1, a4);
    }

    else
    {
      v12 = v11;
      if (sqlite3_errstr(v11))
      {
        v13 = sub_22FE43104();
        v15 = v14;
      }

      else
      {
        v15 = 0xE300000000000000;
        v13 = 4271950;
      }

      sub_22FD916D8();
      swift_allocError();
      *v16 = v12 | 0xA000000000000000;
      v16[1] = v13;
      v16[2] = v15;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_22FDB31B8(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4308, &qword_22FE4ACE8);
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4);
  v8 = (&v21 - v7);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = *(type metadata accessor for DatabaseBinding() - 8);
    v12 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    while (1)
    {
      v14 = *(v4 + 48);
      *v8 = v10;
      result = sub_22FDB3FA4(v12, v8 + v14);
      if (v10 == 0x7FFFFFFF)
      {
        __break(1u);
        return result;
      }

      v15 = sub_22FDB379C(v8 + v14, v10 + 1, a2);
      if (v15)
      {
        break;
      }

      ++v10;
      result = sub_22FD93E6C(v8, &qword_27DAE4308, &qword_22FE4ACE8);
      v12 += v13;
      if (v9 == v10)
      {
        return result;
      }
    }

    v16 = v15;
    if (sqlite3_errstr(v15))
    {
      v17 = sub_22FE43104();
      v19 = v18;
    }

    else
    {
      v19 = 0xE300000000000000;
      v17 = 4271950;
    }

    sub_22FD916D8();
    swift_allocError();
    *v20 = v16;
    v20[1] = v17;
    v20[2] = v19;
    swift_willThrow();
    return sub_22FD93E6C(v8, &qword_27DAE4308, &qword_22FE4ACE8);
  }

  return result;
}

void sub_22FDB33A0(sqlite3_stmt *a1)
{
  if (sub_22FDB0F74(0x4C51536775626544, 0xE800000000000000, 0))
  {
    v2 = sqlite3_expanded_sql(a1);
    if (v2)
    {
      v3 = v2;
      v4 = sub_22FE43104();
      v6 = v5;
      if (qword_28148B0A0 != -1)
      {
        swift_once();
      }

      v7 = sub_22FE42D34();
      __swift_project_value_buffer(v7, qword_28148B0A8);

      v8 = sub_22FE42D14();
      v9 = sub_22FE436C4();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v13 = v11;
        *v10 = 136315138;
        v12 = sub_22FD98218(v4, v6, &v13);

        *(v10 + 4) = v12;
        _os_log_impl(&dword_22FD6D000, v8, v9, "%s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v11);
        MEMORY[0x23190C380](v11, -1, -1);
        MEMORY[0x23190C380](v10, -1, -1);
      }

      else
      {
      }

      sqlite3_free(v3);
    }
  }
}

uint64_t sub_22FDB3570(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41C8, &unk_22FE4A830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22FDB35E0(sqlite3_stmt *a1)
{
  v1 = sqlite3_finalize(a1);
  if (v1)
  {
    v2 = v1;
    if (qword_28148B0A0 != -1)
    {
      swift_once();
    }

    v3 = sub_22FE42D34();
    __swift_project_value_buffer(v3, qword_28148B0A8);
    oslog = sub_22FE42D14();
    v4 = sub_22FE436A4();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      if (sqlite3_errstr(v2))
      {
        v7 = sub_22FE43104();
        v9 = v8;
      }

      else
      {
        v9 = 0xE300000000000000;
        v7 = 4271950;
      }

      sub_22FD916D8();
      swift_allocError();
      *v10 = v2 | 0x2000000000000000;
      v10[1] = v7;
      v10[2] = v9;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v11;
      *v6 = v11;
      _os_log_impl(&dword_22FD6D000, oslog, v4, "%@", v5, 0xCu);
      sub_22FD93E6C(v6, &qword_27DAE4208, &qword_22FE4ACE0);
      MEMORY[0x23190C380](v6, -1, -1);
      MEMORY[0x23190C380](v5, -1, -1);
    }
  }
}

uint64_t sub_22FDB379C(uint64_t a1, unsigned int a2, sqlite3_stmt *a3)
{
  v67 = a3;
  v68 = a2;
  v69[2] = *MEMORY[0x277D85DE8];
  v4 = sub_22FE428C4();
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = *(v64 + 64);
  MEMORY[0x28223BE20](v4);
  v63 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22FE42774();
  v66 = *(v7 - 8);
  v8 = *(v66 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22FE42854();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DatabaseBinding();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v62 - v22);
  MEMORY[0x28223BE20](v21);
  v25 = (&v62 - v24);
  sub_22FDB3FA4(a1, &v62 - v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v32 = v66;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        (*(v66 + 32))(v10, v25, v7);
        *v23 = sub_22FE426D4();
        v23[1] = v48;
        swift_storeEnumTagMultiPayload();
        v31 = sub_22FDB379C(v23, v68, v67);
        sub_22FDB4008(v23);
        (*(v32 + 8))(v10, v7);
        goto LABEL_24;
      }

      v34 = sqlite3_bind_int64(v67, v68, *v25);
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        (*(v12 + 32))(v15, v25, v11);
        sub_22FE42814();
        *v23 = v33;
        swift_storeEnumTagMultiPayload();
        v31 = sub_22FDB379C(v23, v68, v67);
        sub_22FDB4008(v23);
        (*(v12 + 8))(v15, v11);
        goto LABEL_24;
      }

      v34 = sqlite3_bind_double(v67, v68, *v25);
    }

LABEL_23:
    v31 = v34;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *v20 = *v25;
      swift_storeEnumTagMultiPayload();
      v31 = sub_22FDB379C(v20, v68, v67);
      sub_22FDB4008(v20);
      goto LABEL_24;
    }

    v35 = *v25;
    v36 = v25[1];
    v37 = sub_22FE43054();

    v38 = [v37 UTF8String];
    v39 = v37;
    if (qword_27DAE2A20 != -1)
    {
      swift_once();
    }

    v34 = sqlite3_bind_text(v67, v68, v38, -1, qword_27DAEDF70);
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v41 = *v25;
    v40 = v25[1];
    v42 = v40 >> 62;
    if ((v40 >> 62) <= 1)
    {
      if (!v42)
      {
        v69[0] = *v25;
        LOWORD(v69[1]) = v40;
        BYTE2(v69[1]) = BYTE2(v40);
        BYTE3(v69[1]) = BYTE3(v40);
        BYTE4(v69[1]) = BYTE4(v40);
        BYTE5(v69[1]) = BYTE5(v40);
        if (qword_27DAE2A20 != -1)
        {
          swift_once();
        }

        v43 = qword_27DAEDF70;
        v44 = v69;
        v45 = v67;
        v46 = v68;
        v47 = BYTE6(v40);
        goto LABEL_57;
      }

LABEL_40:
      if (v41 >> 32 < v41)
      {
        __break(1u);
        goto LABEL_59;
      }

      v53 = sub_22FE42654();
      if (!v53)
      {
LABEL_44:
        v61 = sub_22FE42674();
        if (v61 >= (v41 >> 32) - v41)
        {
          v59 = (v41 >> 32) - v41;
        }

        else
        {
          v59 = v61;
        }

        if (!v53)
        {
          LODWORD(v59) = 0;
          goto LABEL_54;
        }

        if (v59 < 0xFFFFFFFF80000000)
        {
          __break(1u);
LABEL_50:
          memset(v69, 0, 14);
          if (qword_27DAE2A20 == -1)
          {
LABEL_51:
            v43 = qword_27DAEDF70;
            v44 = v69;
            v45 = v67;
            v46 = v68;
            v47 = 0;
LABEL_57:
            v31 = sqlite3_bind_blob(v45, v46, v44, v47, v43);
            sub_22FD917D4(v41, v40);
            goto LABEL_24;
          }

LABEL_59:
          swift_once();
          goto LABEL_51;
        }

        if (v59 <= 0x7FFFFFFF)
        {
LABEL_54:
          if (qword_27DAE2A20 != -1)
          {
            swift_once();
          }

          v43 = qword_27DAEDF70;
          v45 = v67;
          v46 = v68;
          v44 = v53;
          v47 = v59;
          goto LABEL_57;
        }

LABEL_64:
        __break(1u);
      }

      v60 = sub_22FE42684();
      if (!__OFSUB__(v41, v60))
      {
        v53 += v41 - v60;
        goto LABEL_44;
      }

LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v42 != 2)
    {
      goto LABEL_50;
    }

    v51 = *(v41 + 16);
    v52 = *(v41 + 24);
    v53 = sub_22FE42654();
    if (v53)
    {
      v54 = sub_22FE42684();
      if (__OFSUB__(v51, v54))
      {
        goto LABEL_62;
      }

      v53 += v51 - v54;
    }

    v55 = __OFSUB__(v52, v51);
    v56 = v52 - v51;
    if (v55)
    {
      __break(1u);
    }

    else
    {
      v57 = sub_22FE42674();
      if (v57 >= v56)
      {
        v58 = v56;
      }

      else
      {
        v58 = v57;
      }

      if (v53)
      {
        v59 = v58;
      }

      else
      {
        v59 = 0;
      }

      if (v59 >= 0xFFFFFFFF80000000)
      {
        if (v59 <= 0x7FFFFFFF)
        {
          goto LABEL_54;
        }

        __break(1u);
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (EnumCaseMultiPayload != 7)
  {
    v34 = sqlite3_bind_null(v67, v68);
    goto LABEL_23;
  }

  v27 = v63;
  v28 = v64;
  v29 = v65;
  (*(v64 + 32))(v63, v25, v65);
  LOBYTE(v69[0]) = 2;
  *v23 = UUID.serialized(version:)();
  v23[1] = v30;
  swift_storeEnumTagMultiPayload();
  v31 = sub_22FDB379C(v23, v68, v67);
  sub_22FDB4008(v23);
  (*(v28 + 8))(v27, v29);
LABEL_24:
  v49 = *MEMORY[0x277D85DE8];
  return v31;
}

uint64_t sub_22FDB3F34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41C8, &unk_22FE4A830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FDB3FA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseBinding();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FDB4008(uint64_t a1)
{
  v2 = type metadata accessor for DatabaseBinding();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FetchFaceRequest.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22FE428C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FetchFaceRequest.day.getter()
{
  v1 = (v0 + *(type metadata accessor for FetchFaceRequest() + 20));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t type metadata accessor for FetchFaceRequest()
{
  result = qword_27DAE4320;
  if (!qword_27DAE4320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FetchFaceRequest.init(id:day:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_22FE428C4();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for FetchFaceRequest();
  v10 = a4 + *(result + 20);
  *v10 = a2;
  *(v10 + 8) = a3 & 1;
  return result;
}

uint64_t FetchFaceRequest.init(protobuf:version:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22FE428C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v10) = *a2;
  v12 = *a1;
  v13 = a1[1];
  v19[15] = v10;
  sub_22FDB4380(v12, v13);
  UUID.init(serialized:version:)(v12, v13);
  if (v3)
  {
    return sub_22FDB5158(a1, type metadata accessor for FetchFaceRequestProto);
  }

  v15 = (a1 + *(type metadata accessor for FetchFaceRequestProto(0) + 24));
  v16 = *(v15 + 4);
  if (v16)
  {
    sub_22FDB5158(a1, type metadata accessor for FetchFaceRequestProto);
    v17 = 0;
  }

  else
  {
    v17 = *v15;
    sub_22FDB5158(a1, type metadata accessor for FetchFaceRequestProto);
  }

  (*(v8 + 32))(a3, v11, v7);
  result = type metadata accessor for FetchFaceRequest();
  v18 = a3 + *(result + 20);
  *v18 = v17;
  *(v18 + 8) = v16;
  return result;
}

uint64_t sub_22FDB4380(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t FetchFaceRequest.protobuf(version:)(char *a1)
{
  v1 = *a1;
  type metadata accessor for FetchFaceRequestProto(0);
  sub_22FDB5110(&qword_27DAE4310, type metadata accessor for FetchFaceRequestProto);
  return sub_22FE42C14();
}

uint64_t sub_22FDB4480(uint64_t a1, uint64_t a2)
{
  v4 = UUID.serialized(version:)();
  v6 = v5;
  sub_22FD917D4(*a1, *(a1 + 8));
  *a1 = v4;
  *(a1 + 8) = v6;
  result = type metadata accessor for FetchFaceRequest();
  v8 = (a2 + *(result + 20));
  if ((v8[1] & 1) == 0)
  {
    v9 = *v8;
    if ((*v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v9))
    {
      result = type metadata accessor for FetchFaceRequestProto(0);
      v10 = a1 + *(result + 24);
      *v10 = v9;
      *(v10 + 4) = 0;
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22FDB4570(char *a1)
{
  v1 = *a1;
  type metadata accessor for FetchFaceRequestProto(0);
  sub_22FDB5110(&qword_27DAE4310, type metadata accessor for FetchFaceRequestProto);
  return sub_22FE42C14();
}

uint64_t FetchByDayResponse.init(protobuf:version:)@<X0>(unsigned int *a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for StoredPhotoProto(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v33 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v32 = *(type metadata accessor for StoredPhoto(0) - 8);
  v14 = *(v32 + 64);
  MEMORY[0x28223BE20](a1);
  v34 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  v17 = *(a1 + 1);
  v18 = *(v17 + 16);
  if (v18)
  {
    v27 = a3;
    v28 = v15;
    v31 = *a2;
    v36 = MEMORY[0x277D84F90];
    result = sub_22FD92408(0, v18, 0);
    v20 = 0;
    v21 = v36;
    v30 = v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    while (v20 < *(v17 + 16))
    {
      sub_22FDB5088(v30 + *(v8 + 72) * v20, v13, type metadata accessor for StoredPhotoProto);
      v22 = v33;
      sub_22FDB5088(v13, v33, type metadata accessor for StoredPhotoProto);
      v35 = v31;
      StoredPhoto.init(protobuf:version:)(v22, &v35, v34);
      if (v3)
      {
        sub_22FDB5158(v13, type metadata accessor for StoredPhotoProto);
        sub_22FDB5158(v28, type metadata accessor for FetchByDayResponseProto);
      }

      v23 = v8;
      sub_22FDB5158(v13, type metadata accessor for StoredPhotoProto);
      v36 = v21;
      v25 = *(v21 + 16);
      v24 = *(v21 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_22FD92408(v24 > 1, v25 + 1, 1);
        v21 = v36;
      }

      ++v20;
      *(v21 + 16) = v25 + 1;
      result = sub_22FDB51B8(v34, v21 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v25, type metadata accessor for StoredPhoto);
      v8 = v23;
      if (v18 == v20)
      {
        result = sub_22FDB5158(v28, type metadata accessor for FetchByDayResponseProto);
        a3 = v27;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_22FDB5158(v15, type metadata accessor for FetchByDayResponseProto);
    v21 = MEMORY[0x277D84F90];
LABEL_11:
    *a3 = v29;
    a3[1] = v21;
  }

  return result;
}

uint64_t FetchByDayResponse.protobuf(version:)(char *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = v1[1];
  type metadata accessor for FetchByDayResponseProto(0);
  sub_22FDB5110(&qword_27DAE4318, type metadata accessor for FetchByDayResponseProto);
  return sub_22FE42C14();
}

void sub_22FDB4A54(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v31 = a4;
  v9 = type metadata accessor for StoredPhoto(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StoredPhotoProto(0);
  v29 = *(v14 - 8);
  v30 = v14;
  v15 = *(v29 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(a2))
  {
LABEL_11:
    __break(1u);
    return;
  }

  *a1 = a2;
  v18 = *(a3 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v27 = a1;
    v32 = MEMORY[0x277D84F90];
    sub_22FD924F4(0, v18, 0);
    v19 = v32;
    v20 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v28 = *(v10 + 72);
    do
    {
      v21 = sub_22FDB5088(v20, v13, type metadata accessor for StoredPhoto);
      MEMORY[0x28223BE20](v21);
      *(&v26 - 2) = v13;
      *(&v26 - 8) = v31;
      sub_22FDB5110(&qword_27DAE4338, type metadata accessor for StoredPhotoProto);
      v22 = v5;
      sub_22FE42C14();
      sub_22FDB5158(v13, type metadata accessor for StoredPhoto);
      v32 = v19;
      v24 = *(v19 + 16);
      v23 = *(v19 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_22FD924F4(v23 > 1, v24 + 1, 1);
        v19 = v32;
      }

      *(v19 + 16) = v24 + 1;
      sub_22FDB51B8(v17, v19 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v24, type metadata accessor for StoredPhotoProto);
      v20 += v28;
      --v18;
      v5 = v22;
    }

    while (v18);
    a1 = v27;
  }

  v25 = *(a1 + 8);

  *(a1 + 8) = v19;
}

uint64_t sub_22FDB4D90(char *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = v1[1];
  type metadata accessor for FetchByDayResponseProto(0);
  sub_22FDB5110(&qword_27DAE4318, type metadata accessor for FetchByDayResponseProto);
  return sub_22FE42C14();
}

void sub_22FDB4F20()
{
  sub_22FE428C4();
  if (v0 <= 0x3F)
  {
    sub_22FDB4FA4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FDB4FA4()
{
  if (!qword_27DAE4330)
  {
    v0 = sub_22FE43744();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAE4330);
    }
  }
}

uint64_t sub_22FDB4FF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22FDB503C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22FDB5088(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FDB5110(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FDB5158(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FDB51B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t GeneratePhotoRequest.init(protobuf:version:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v55 = sub_22FE428C4();
  v5 = *(v55 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(v10 + 16);
  if (!v11)
  {
    result = sub_22FDB644C(v7, type metadata accessor for GeneratePhotoRequestProto);
    *a2 = MEMORY[0x277D84F90];
    return result;
  }

  v49[0] = a2;
  v49[1] = v2;
  v50 = v7;
  v56 = MEMORY[0x277D84F90];
  sub_22FD922C4(0, v11, 0);
  v12 = 0;
  v13 = v56;
  v51 = v9;
  v52 = v5 + 32;
  v14 = (v10 + 40);
  v53 = v11;
  v54 = v10;
  while (v12 < *(v10 + 16))
  {
    v15 = *(v14 - 1);
    v16 = *v14;
    v17 = *v14 >> 62;
    if (v17 > 1)
    {
      if (v17 != 2)
      {
        goto LABEL_31;
      }

      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      v20 = v18 - v19;
      if (__OFSUB__(v18, v19))
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (!v17)
      {
        if (BYTE6(v16) != 16)
        {
          goto LABEL_31;
        }

        goto LABEL_15;
      }

      if (__OFSUB__(HIDWORD(v15), v15))
      {
        goto LABEL_34;
      }

      v20 = HIDWORD(v15) - v15;
    }

    sub_22FDB4380(*(v14 - 1), *v14);
    if (v20 != 16)
    {
LABEL_31:
      sub_22FD91780();
      swift_allocError();
      *v48 = 1;
      swift_willThrow();
      sub_22FD917D4(v15, v16);
      sub_22FDB644C(v50, type metadata accessor for GeneratePhotoRequestProto);
    }

LABEL_15:
    if (v17 == 2)
    {
      v26 = *(v15 + 16);
      v27 = sub_22FE42654();
      if (!v27)
      {
        goto LABEL_38;
      }

      v28 = v27;
      v29 = sub_22FE42684();
      if (__OFSUB__(v26, v29))
      {
        goto LABEL_36;
      }

      v24 = (v26 - v29 + v28);
      sub_22FE42674();
      if (!v24)
      {
        goto LABEL_39;
      }

LABEL_25:
      v30 = *v24;
      v31 = v24[1];
      v32 = v24[2];
      v33 = v24[3];
      v34 = v24[4];
      v35 = v24[5];
      v36 = v24[6];
      v37 = v24[7];
      v38 = v24[8];
      v39 = v24[9];
      v40 = v24[10];
      v41 = v24[11];
      v42 = v24[12];
      v43 = v24[13];
      v44 = v24[14];
      v45 = v24[15];
      v9 = v51;
      goto LABEL_26;
    }

    if (v17 == 1)
    {
      if (v15 > v15 >> 32)
      {
        goto LABEL_35;
      }

      v21 = sub_22FE42654();
      if (!v21)
      {
        goto LABEL_40;
      }

      v22 = v21;
      v23 = sub_22FE42684();
      if (__OFSUB__(v15, v23))
      {
        goto LABEL_37;
      }

      v24 = (v15 - v23 + v22);
      result = sub_22FE42674();
      if (!v24)
      {
        goto LABEL_41;
      }

      goto LABEL_25;
    }

LABEL_26:
    sub_22FE42894();
    sub_22FD917D4(v15, v16);
    v56 = v13;
    v47 = *(v13 + 16);
    v46 = *(v13 + 24);
    if (v47 >= v46 >> 1)
    {
      sub_22FD922C4(v46 > 1, v47 + 1, 1);
      v13 = v56;
    }

    ++v12;
    *(v13 + 16) = v47 + 1;
    (*(v5 + 32))(v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v47, v9, v55);
    v14 += 2;
    v10 = v54;
    if (v53 == v12)
    {
      result = sub_22FDB644C(v50, type metadata accessor for GeneratePhotoRequestProto);
      *v49[0] = v13;
      return result;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  sub_22FE42674();
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_22FE42674();
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t GeneratePhotoRequest.protobuf(version:)(char *a1)
{
  v2 = *a1;
  v3 = *v1;
  type metadata accessor for GeneratePhotoRequestProto(0);
  sub_22FDB6404(&qword_27DAE4340, type metadata accessor for GeneratePhotoRequestProto);
  return sub_22FE42C14();
}

uint64_t sub_22FDB5734(uint64_t *a1, uint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v38 = sub_22FE428C4();
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v38);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v34[0] = a1;
    v34[1] = v2;
    v48 = MEMORY[0x277D84F90];
    sub_22FD92538(0, v9, 0);
    v10 = v48;
    v12 = *(v5 + 16);
    v11 = v5 + 16;
    v13 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v36 = *(v11 + 56);
    v37 = v12;
    v35 = (v11 - 8);
    do
    {
      v14 = v38;
      v15 = v11;
      v37(v8, v13, v38);
      v39 = sub_22FE428A4();
      v40 = v16;
      v41 = v17;
      v42 = v18;
      v43 = v19;
      v44 = v20;
      v45 = v21;
      v46 = v22;
      v47 = v23;
      sub_22FE428A4();
      v24 = sub_22FE42694();
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = sub_22FE42644();
      (*v35)(v8, v14);
      v48 = v10;
      v29 = *(v10 + 16);
      v28 = *(v10 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_22FD92538((v28 > 1), v29 + 1, 1);
        v10 = v48;
      }

      *(v10 + 16) = v29 + 1;
      v30 = v10 + 16 * v29;
      *(v30 + 32) = 0x1000000000;
      *(v30 + 40) = v27 | 0x4000000000000000;
      v13 += v36;
      --v9;
      v11 = v15;
    }

    while (v9);
    a1 = v34[0];
  }

  v31 = *a1;

  *a1 = v10;
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FDB59F0(char *a1)
{
  v2 = *a1;
  v3 = *v1;
  type metadata accessor for GeneratePhotoRequestProto(0);
  sub_22FDB6404(&qword_27DAE4340, type metadata accessor for GeneratePhotoRequestProto);
  return sub_22FE42C14();
}

uint64_t GeneratePhotoResponse.init(protobuf:version:)@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for StoredPhotoProto(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v31 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v30 = *(type metadata accessor for StoredPhoto(0) - 8);
  v14 = *(v30 + 64);
  MEMORY[0x28223BE20](a1);
  v32 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = *(*a1 + 16);
  if (v18)
  {
    v26 = a3;
    v27 = v15;
    v29 = *a2;
    v34 = MEMORY[0x277D84F90];
    result = sub_22FD92408(0, v18, 0);
    v20 = 0;
    v21 = v34;
    v28 = v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    while (v20 < *(v17 + 16))
    {
      sub_22FDB5088(v28 + *(v8 + 72) * v20, v13, type metadata accessor for StoredPhotoProto);
      v22 = v31;
      sub_22FDB5088(v13, v31, type metadata accessor for StoredPhotoProto);
      v33 = v29;
      StoredPhoto.init(protobuf:version:)(v22, &v33, v32);
      if (v3)
      {
        sub_22FDB644C(v13, type metadata accessor for StoredPhotoProto);
        sub_22FDB644C(v27, type metadata accessor for GeneratePhotoResponseProto);
      }

      v23 = v8;
      sub_22FDB644C(v13, type metadata accessor for StoredPhotoProto);
      v34 = v21;
      v25 = *(v21 + 16);
      v24 = *(v21 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_22FD92408(v24 > 1, v25 + 1, 1);
        v21 = v34;
      }

      ++v20;
      *(v21 + 16) = v25 + 1;
      result = sub_22FDB51B8(v32, v21 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v25, type metadata accessor for StoredPhoto);
      v8 = v23;
      if (v18 == v20)
      {
        result = sub_22FDB644C(v27, type metadata accessor for GeneratePhotoResponseProto);
        *v26 = v21;
        return result;
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_22FDB644C(v15, type metadata accessor for GeneratePhotoResponseProto);
    *a3 = MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t GeneratePhotoResponse.protobuf(version:)(char *a1)
{
  v2 = *a1;
  v3 = *v1;
  type metadata accessor for GeneratePhotoResponseProto(0);
  sub_22FDB6404(&qword_27DAE4348, type metadata accessor for GeneratePhotoResponseProto);
  return sub_22FE42C14();
}

uint64_t sub_22FDB5EBC(void *a1, uint64_t a2, int a3)
{
  v27 = a3;
  v5 = type metadata accessor for StoredPhoto(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StoredPhotoProto(0);
  v25 = *(v10 - 8);
  v26 = v10;
  v11 = *(v25 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v23 = a1;
    v28 = MEMORY[0x277D84F90];
    sub_22FD924F4(0, v14, 0);
    v15 = v28;
    v16 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v24 = *(v6 + 72);
    do
    {
      v17 = sub_22FDB5088(v16, v9, type metadata accessor for StoredPhoto);
      MEMORY[0x28223BE20](v17);
      *(&v22 - 2) = v9;
      *(&v22 - 8) = v27;
      sub_22FDB6404(&qword_27DAE4338, type metadata accessor for StoredPhotoProto);
      sub_22FE42C14();
      sub_22FDB644C(v9, type metadata accessor for StoredPhoto);
      v28 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_22FD924F4(v18 > 1, v19 + 1, 1);
        v15 = v28;
      }

      *(v15 + 16) = v19 + 1;
      sub_22FDB51B8(v13, v15 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v19, type metadata accessor for StoredPhotoProto);
      v16 += v24;
      --v14;
    }

    while (v14);
    a1 = v23;
  }

  v20 = *a1;

  *a1 = v15;
  return result;
}

uint64_t sub_22FDB61D8(char *a1)
{
  v2 = *a1;
  v3 = *v1;
  type metadata accessor for GeneratePhotoResponseProto(0);
  sub_22FDB6404(&qword_27DAE4348, type metadata accessor for GeneratePhotoResponseProto);
  return sub_22FE42C14();
}

uint64_t sub_22FDB6370(uint64_t *a1, int a2)
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

uint64_t sub_22FDB63B8(uint64_t result, int a2, int a3)
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

uint64_t sub_22FDB6404(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FDB644C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SyncFacesRequest.init(trackedFaces:cachedIdentifiers:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static SyncFacesRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_22FDB6B20(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_22FDB6B20(v2, v3);
}

uint64_t sub_22FDB655C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoredPhotoProto(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_22FDBC824(v14, v11, type metadata accessor for StoredPhotoProto);
        sub_22FDBC824(v15, v7, type metadata accessor for StoredPhotoProto);
        v17 = _s10PhotosFace16StoredPhotoProtoV2eeoiySbAC_ACtFZ_0(v11, v7);
        sub_22FDBC88C(v7, type metadata accessor for StoredPhotoProto);
        sub_22FDBC88C(v11, type metadata accessor for StoredPhotoProto);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_22FDB6714(uint64_t a1, uint64_t a2)
{
  v34[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = 0;
      v4 = (a1 + 40);
      v5 = (a2 + 40);
      while (1)
      {
        v7 = *(v4 - 1);
        v6 = *v4;
        v9 = *(v5 - 1);
        v8 = *v5;
        v10 = *v4 >> 62;
        v11 = *v5 >> 62;
        if (v10 == 3)
        {
          break;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v20 = *(v7 + 16);
            v19 = *(v7 + 24);
            v17 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v17)
            {
              goto LABEL_63;
            }

            goto LABEL_28;
          }

          v13 = 0;
          if (v11 <= 1)
          {
            goto LABEL_29;
          }
        }

        else if (v10)
        {
          LODWORD(v13) = HIDWORD(v7) - v7;
          if (__OFSUB__(HIDWORD(v7), v7))
          {
            goto LABEL_64;
          }

          v13 = v13;
          if (v11 <= 1)
          {
LABEL_29:
            if (v11)
            {
              LODWORD(v18) = HIDWORD(v9) - v9;
              if (__OFSUB__(HIDWORD(v9), v9))
              {
                __break(1u);
LABEL_62:
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
              }

              v18 = v18;
            }

            else
            {
              v18 = BYTE6(v8);
            }

            goto LABEL_33;
          }
        }

        else
        {
          v13 = BYTE6(v6);
          if (v11 <= 1)
          {
            goto LABEL_29;
          }
        }

LABEL_22:
        if (v11 != 2)
        {
          if (v13)
          {
            goto LABEL_58;
          }

          goto LABEL_6;
        }

        v16 = *(v9 + 16);
        v15 = *(v9 + 24);
        v17 = __OFSUB__(v15, v16);
        v18 = v15 - v16;
        if (v17)
        {
          goto LABEL_62;
        }

LABEL_33:
        if (v13 != v18)
        {
          goto LABEL_58;
        }

        if (v13 < 1)
        {
          goto LABEL_6;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v32 = v3;
            v21 = *(v7 + 16);
            v31 = *(v7 + 24);
            sub_22FDB4380(v7, v6);
            sub_22FDB4380(v9, v8);
            v22 = sub_22FE42654();
            if (v22)
            {
              v23 = sub_22FE42684();
              if (__OFSUB__(v21, v23))
              {
                goto LABEL_67;
              }

              v22 += v21 - v23;
            }

            if (__OFSUB__(v31, v21))
            {
              goto LABEL_66;
            }

            sub_22FE42674();
            v24 = v22;
            v25 = v9;
            v26 = v8;
            v3 = v32;
            goto LABEL_54;
          }

          memset(v34, 0, 14);
          sub_22FDB4380(v7, v6);
          sub_22FDB4380(v9, v8);
        }

        else
        {
          if (v10)
          {
            if (v7 >> 32 < v7)
            {
              goto LABEL_65;
            }

            sub_22FDB4380(v7, v6);
            sub_22FDB4380(v9, v8);
            v27 = sub_22FE42654();
            if (v27)
            {
              v28 = sub_22FE42684();
              if (__OFSUB__(v7, v28))
              {
                goto LABEL_68;
              }

              v27 += v7 - v28;
            }

            sub_22FE42674();
            v24 = v27;
            v25 = v9;
            v26 = v8;
LABEL_54:
            sub_22FDBBBC8(v24, v25, v26, v34);
            sub_22FD917D4(v9, v8);
            sub_22FD917D4(v7, v6);
            if ((v34[0] & 1) == 0)
            {
              goto LABEL_58;
            }

            goto LABEL_6;
          }

          v34[0] = *(v4 - 1);
          LOWORD(v34[1]) = v6;
          BYTE2(v34[1]) = BYTE2(v6);
          BYTE3(v34[1]) = BYTE3(v6);
          BYTE4(v34[1]) = BYTE4(v6);
          BYTE5(v34[1]) = BYTE5(v6);
          sub_22FDB4380(v7, v6);
          sub_22FDB4380(v9, v8);
        }

        sub_22FDBBBC8(v34, v9, v8, &v33);
        sub_22FD917D4(v9, v8);
        sub_22FD917D4(v7, v6);
        if (!v33)
        {
          goto LABEL_58;
        }

LABEL_6:
        v4 += 2;
        v5 += 2;
        if (!--v2)
        {
          goto LABEL_59;
        }
      }

      if (v7)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6 == 0xC000000000000000;
      }

      v13 = 0;
      v14 = v12 && *v5 >> 62 == 3;
      if (v14 && !v9 && v8 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (v11 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

LABEL_59:
    result = 1;
  }

  else
  {
LABEL_58:
    result = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FDB6B20(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE428C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    v23 = 0;
    return v23 & 1;
  }

  if (!v13 || a1 == a2)
  {
    v23 = 1;
    return v23 & 1;
  }

  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v18 = *(v5 + 16);
  v17 = v5 + 16;
  v19 = (v17 - 8);
  v26 = *(v17 + 56);
  v27 = v18;
  while (1)
  {
    v20 = v27;
    result = (v27)(v12, v15, v4, v10);
    if (!v13)
    {
      break;
    }

    v22 = v17;
    v20(v8, v16, v4);
    sub_22FDBC978(&qword_27DAE2CC0, MEMORY[0x277CC95F0]);
    v23 = sub_22FE43024();
    v24 = *v19;
    (*v19)(v8, v4);
    v24(v12, v4);
    if (v23)
    {
      v16 += v26;
      v15 += v26;
      v25 = v13-- == 1;
      v17 = v22;
      if (!v25)
      {
        continue;
      }
    }

    return v23 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_22FDB6D34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoredPhotoLayoutProto(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v22 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_22FDBC824(v14, v11, type metadata accessor for StoredPhotoLayoutProto);
        sub_22FDBC824(v15, v7, type metadata accessor for StoredPhotoLayoutProto);
        v17 = *(v4 + 20);
        v18 = *&v11[v17];
        v19 = *&v7[v17];
        if (v18 != v19)
        {
          v20 = *&v11[v17];

          v21 = sub_22FE01D04(v18, v19);

          if ((v21 & 1) == 0)
          {
            break;
          }
        }

        sub_22FE42A54();
        sub_22FDBC978(&qword_27DAE44A0, MEMORY[0x277D216C8]);
        v22 = sub_22FE43024();
        sub_22FDBC88C(v7, type metadata accessor for StoredPhotoLayoutProto);
        sub_22FDBC88C(v11, type metadata accessor for StoredPhotoLayoutProto);
        if (v22)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v22 & 1;
      }

      sub_22FDBC88C(v7, type metadata accessor for StoredPhotoLayoutProto);
      sub_22FDBC88C(v11, type metadata accessor for StoredPhotoLayoutProto);
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_22FDB6FC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_22FE43CB4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_22FDB7050(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoredPhoto(0);
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_22FDBC824(v14, v11, type metadata accessor for StoredPhoto);
      sub_22FDBC824(v15, v7, type metadata accessor for StoredPhoto);
      if ((_s10PhotosFace7DailyIDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
      {
        break;
      }

      v17 = v4[5];
      if ((sub_22FE42824() & 1) == 0)
      {
        break;
      }

      v18 = v4[6];
      if ((sub_22FE42824() & 1) == 0 || *&v11[v4[7]] != *&v7[v4[7]])
      {
        break;
      }

      v19 = v4[8];
      v20 = &v11[v19];
      v21 = *&v11[v19 + 8];
      v22 = &v7[v19];
      v23 = *(v22 + 1);
      if (v21)
      {
        if (!v23 || (*v20 != *v22 || v21 != v23) && (sub_22FE43CB4() & 1) == 0)
        {
          break;
        }
      }

      else if (v23)
      {
        break;
      }

      v24 = v4[9];
      v25 = &v11[v24];
      v26 = *&v11[v24 + 8];
      v27 = &v7[v24];
      v28 = *(v27 + 1);
      if (v26)
      {
        if (!v28 || (*v25 != *v27 || v26 != v28) && (sub_22FE43CB4() & 1) == 0)
        {
          break;
        }
      }

      else if (v28)
      {
        break;
      }

      if (*&v11[v4[10]] != *&v7[v4[10]] || (sub_22FDD7B90(*&v11[v4[11]], *&v7[v4[11]]) & 1) == 0)
      {
        break;
      }

      v29 = v4[12];
      v30 = &v11[v29];
      v31 = *&v11[v29 + 8];
      v32 = &v7[v29];
      v33 = *(v32 + 1);
      if (v31)
      {
        if (!v33)
        {
          break;
        }

        if (*v30 != *v32 || v31 != v33)
        {
          v34 = *(v32 + 1);
          if ((sub_22FE43CB4() & 1) == 0)
          {
            break;
          }
        }

        sub_22FDBC88C(v7, type metadata accessor for StoredPhoto);
        sub_22FDBC88C(v11, type metadata accessor for StoredPhoto);
      }

      else
      {
        sub_22FDBC88C(v7, type metadata accessor for StoredPhoto);
        sub_22FDBC88C(v11, type metadata accessor for StoredPhoto);
        if (v33)
        {
          return 0;
        }
      }

      v15 += v16;
      v14 += v16;
      result = 1;
      if (!--v12)
      {
        return result;
      }
    }

    sub_22FDBC88C(v7, type metadata accessor for StoredPhoto);
    sub_22FDBC88C(v11, type metadata accessor for StoredPhoto);
  }

  return 0;
}

uint64_t SyncFacesRequest.hash(into:)(uint64_t a1)
{
  v3 = sub_22FE428C4();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = *v1;
  v26 = v1[1];
  v12 = *(v11 + 16);
  v28 = a1;
  MEMORY[0x23190B9C0](v12, v8);
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = *(v27 + 16);
    v15 = v11 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v16 = *(v27 + 72);
    v17 = (v27 + 8);
    do
    {
      v14(v10, v15, v3);
      sub_22FDBC978(&qword_27DAE2CB8, MEMORY[0x277CC95F0]);
      sub_22FE42FE4();
      (*v17)(v10, v3);
      v15 += v16;
      --v13;
    }

    while (v13);
  }

  v18 = v26;
  result = MEMORY[0x23190B9C0](*(v26 + 16));
  v20 = *(v18 + 16);
  if (v20)
  {
    v21 = *(v27 + 16);
    v22 = v18 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v23 = *(v27 + 72);
    v24 = (v27 + 8);
    do
    {
      v21(v6, v22, v3);
      sub_22FDBC978(&qword_27DAE2CB8, MEMORY[0x277CC95F0]);
      sub_22FE42FE4();
      result = (*v24)(v6, v3);
      v22 += v23;
      --v20;
    }

    while (v20);
  }

  return result;
}

uint64_t SyncFacesRequest.hashValue.getter()
{
  v3 = *v0;
  sub_22FE43DB4();
  SyncFacesRequest.hash(into:)(v2);
  return sub_22FE43E04();
}

uint64_t sub_22FDB7654()
{
  v3 = *v0;
  sub_22FE43DB4();
  SyncFacesRequest.hash(into:)(v2);
  return sub_22FE43E04();
}

uint64_t sub_22FDB76A4()
{
  v3 = *v0;
  sub_22FE43DB4();
  SyncFacesRequest.hash(into:)(v2);
  return sub_22FE43E04();
}

uint64_t sub_22FDB76EC(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_22FDB6B20(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_22FDB6B20(v2, v3);
}

uint64_t SyncFacesRequest.description.getter()
{
  v32 = sub_22FE428C4();
  v1 = *(v32 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  strcpy(v35, "SyncRequest(");
  BYTE5(v35[1]) = 0;
  HIWORD(v35[1]) = -5120;
  v5 = *(v4 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v34 = MEMORY[0x277D84F90];
    sub_22FD92308(0, v5, 0);
    v6 = v34;
    v8 = *(v1 + 16);
    v7 = v1 + 16;
    v9 = v4 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v28 = *(v7 + 56);
    v29 = v8;
    v27 = (v7 - 8);
    v30 = v7;
    do
    {
      v33 = v6;
      v10 = v31;
      v11 = v32;
      v29(v31, v9, v32);
      sub_22FE42874();
      sub_22FE430E4();
      v12 = sub_22FE43174();
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v19 = v10;
      v6 = v33;
      (*v27)(v19, v11);
      v34 = v6;
      v21 = *(v6 + 16);
      v20 = *(v6 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_22FD92308((v20 > 1), v21 + 1, 1);
        v6 = v34;
      }

      *(v6 + 16) = v21 + 1;
      v22 = (v6 + 32 * v21);
      v22[4] = v12;
      v22[5] = v14;
      v22[6] = v16;
      v22[7] = v18;
      v9 += v28;
      --v5;
    }

    while (v5);
  }

  v34 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4350, "pi");
  sub_22FDBC930(&qword_27DAE4358, &qword_27DAE4350, "pi");
  sub_22FDBBDF8();
  v23 = sub_22FE43234();
  v25 = v24;

  MEMORY[0x23190ACF0](v23, v25);

  MEMORY[0x23190ACF0](41, 0xE100000000000000);
  return v35[0];
}

uint64_t SyncFacesRequest.init(protobuf:version:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v111 = a2;
  v4 = sub_22FE428C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v114 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v111 - v9;
  v11 = *a1;
  v12 = *(*a1 + 16);
  v13 = MEMORY[0x277D84F90];
  v115 = v14;
  v120 = v5;
  v112 = v2;
  v113 = a1;
  if (!v12)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_34:
    v70 = a1[1];
    v71 = *(v70 + 16);
    if (!v71)
    {
      result = sub_22FDBC88C(a1, type metadata accessor for SyncFacesRequestProto);
      v74 = MEMORY[0x277D84F90];
LABEL_66:
      v110 = v111;
      *v111 = v16;
      v110[1] = v74;
      return result;
    }

    v121 = v13;
    sub_22FD922C4(0, v71, 0);
    v72 = 0;
    v73 = v5;
    v74 = v121;
    v117 = v70;
    v118 = v73 + 32;
    v75 = (v70 + 40);
    v119 = v71;
    while (1)
    {
      if (v72 >= *(v70 + 16))
      {
        goto LABEL_68;
      }

      v77 = *(v75 - 1);
      v76 = *v75;
      v78 = *v75 >> 62;
      if (v78 > 1)
      {
        if (v78 != 2)
        {
          goto LABEL_65;
        }

        v80 = *(v77 + 16);
        v79 = *(v77 + 24);
        v81 = v79 - v80;
        if (__OFSUB__(v79, v80))
        {
          goto LABEL_74;
        }
      }

      else
      {
        if (!v78)
        {
          if (BYTE6(v76) != 16)
          {
            goto LABEL_65;
          }

          goto LABEL_48;
        }

        if (__OFSUB__(HIDWORD(v77), v77))
        {
          goto LABEL_75;
        }

        v81 = HIDWORD(v77) - v77;
      }

      sub_22FDB4380(*(v75 - 1), *v75);
      if (v81 != 16)
      {
LABEL_65:

        sub_22FD91780();
        swift_allocError();
        *v109 = 1;
        swift_willThrow();
        sub_22FD917D4(v77, v76);
        sub_22FDBC88C(v113, type metadata accessor for SyncFacesRequestProto);
      }

LABEL_48:
      if (v78 == 2)
      {
        v86 = *(v77 + 16);
        v87 = sub_22FE42654();
        if (!v87)
        {
          goto LABEL_83;
        }

        v88 = v87;
        v89 = sub_22FE42684();
        if (__OFSUB__(v86, v89))
        {
          goto LABEL_77;
        }

        v85 = (v86 - v89 + v88);
        sub_22FE42674();
        if (!v85)
        {
          goto LABEL_84;
        }
      }

      else
      {
        if (v78 != 1)
        {
          v106 = v114;
          v70 = v117;
          goto LABEL_60;
        }

        if (v77 > v77 >> 32)
        {
          goto LABEL_76;
        }

        v82 = sub_22FE42654();
        if (!v82)
        {
          goto LABEL_85;
        }

        v83 = v82;
        v84 = sub_22FE42684();
        if (__OFSUB__(v77, v84))
        {
          goto LABEL_78;
        }

        v85 = (v77 - v84 + v83);
        result = sub_22FE42674();
        if (!v85)
        {
          goto LABEL_86;
        }
      }

      v90 = *v85;
      v91 = v85[1];
      v92 = v85[2];
      v93 = v85[3];
      v94 = v85[4];
      v95 = v85[5];
      v96 = v85[6];
      v97 = v85[7];
      v98 = v85[8];
      v99 = v85[9];
      v100 = v85[10];
      v101 = v85[11];
      v102 = v85[12];
      v103 = v85[13];
      v104 = v85[14];
      v105 = v85[15];
      v106 = v114;
      v4 = v115;
      v70 = v117;
LABEL_60:
      sub_22FE42894();
      sub_22FD917D4(v77, v76);
      v121 = v74;
      v108 = *(v74 + 16);
      v107 = *(v74 + 24);
      if (v108 >= v107 >> 1)
      {
        sub_22FD922C4(v107 > 1, v108 + 1, 1);
        v106 = v114;
        v74 = v121;
      }

      ++v72;
      *(v74 + 16) = v108 + 1;
      (*(v120 + 32))(v74 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v108, v106, v4);
      v75 += 2;
      if (v119 == v72)
      {
        result = sub_22FDBC88C(v113, type metadata accessor for SyncFacesRequestProto);
        goto LABEL_66;
      }
    }
  }

  v121 = MEMORY[0x277D84F90];
  v117 = v12;
  sub_22FD922C4(0, v12, 0);
  v15 = 0;
  v16 = v121;
  v116 = v5 + 32;
  v17 = (v11 + 40);
  v118 = v11;
  v119 = v10;
  while (v15 < *(v11 + 16))
  {
    v19 = *(v17 - 1);
    v18 = *v17;
    v20 = *v17 >> 62;
    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_33;
      }

      v22 = *(v19 + 16);
      v21 = *(v19 + 24);
      v23 = v21 - v22;
      if (__OFSUB__(v21, v22))
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (!v20)
      {
        if (BYTE6(v18) != 16)
        {
          goto LABEL_33;
        }

        goto LABEL_15;
      }

      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_70;
      }

      v23 = HIDWORD(v19) - v19;
    }

    sub_22FDB4380(*(v17 - 1), *v17);
    if (v23 != 16)
    {
LABEL_33:
      sub_22FD91780();
      swift_allocError();
      *v68 = 1;
      swift_willThrow();
      sub_22FD917D4(v19, v18);
      sub_22FDBC88C(v113, type metadata accessor for SyncFacesRequestProto);
    }

LABEL_15:
    if (v20 == 2)
    {
      v44 = *(v19 + 16);
      v45 = sub_22FE42654();
      if (!v45)
      {
        goto LABEL_79;
      }

      v46 = v45;
      v47 = sub_22FE42684();
      if (__OFSUB__(v44, v47))
      {
        goto LABEL_72;
      }

      v48 = (v44 - v47 + v46);
      sub_22FE42674();
      if (!v48)
      {
        goto LABEL_80;
      }

      v49 = *v48;
      v50 = v48[1];
      v51 = v48[2];
      v52 = v48[3];
      v53 = v48[4];
      v54 = v48[5];
      v55 = v48[6];
      v56 = v48[7];
      v57 = v48[8];
      v58 = v48[9];
      v59 = v48[10];
      v60 = v48[11];
      v61 = v48[12];
      v62 = v48[13];
      v63 = v48[14];
      v64 = v48[15];
      v4 = v115;
    }

    else
    {
      if (v20 != 1)
      {
        v65 = v119;
        goto LABEL_28;
      }

      if (v19 > v19 >> 32)
      {
        goto LABEL_71;
      }

      v24 = sub_22FE42654();
      if (!v24)
      {
        goto LABEL_81;
      }

      v25 = v24;
      v26 = sub_22FE42684();
      if (__OFSUB__(v19, v26))
      {
        goto LABEL_73;
      }

      v27 = (v19 - v26 + v25);
      sub_22FE42674();
      if (!v27)
      {
        goto LABEL_82;
      }

      v28 = *v27;
      v29 = v27[1];
      v30 = v27[2];
      v31 = v27[3];
      v32 = v27[4];
      v33 = v27[5];
      v34 = v27[6];
      v35 = v27[7];
      v36 = v27[8];
      v37 = v27[9];
      v38 = v27[10];
      v39 = v27[11];
      v40 = v27[12];
      v41 = v27[13];
      v42 = v27[14];
      v43 = v27[15];
      v5 = v120;
    }

    v65 = v119;
LABEL_28:
    sub_22FE42894();
    sub_22FD917D4(v19, v18);
    v121 = v16;
    v67 = *(v16 + 16);
    v66 = *(v16 + 24);
    if (v67 >= v66 >> 1)
    {
      sub_22FD922C4(v66 > 1, v67 + 1, 1);
      v16 = v121;
    }

    ++v15;
    *(v16 + 16) = v67 + 1;
    (*(v5 + 32))(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v67, v65, v4);
    v17 += 2;
    v11 = v118;
    if (v117 == v15)
    {
      a1 = v113;
      v13 = MEMORY[0x277D84F90];
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  sub_22FE42674();
LABEL_80:
  __break(1u);
LABEL_81:
  sub_22FE42674();
LABEL_82:
  __break(1u);
LABEL_83:
  sub_22FE42674();
LABEL_84:
  __break(1u);
LABEL_85:
  result = sub_22FE42674();
  __break(1u);
LABEL_86:
  __break(1u);
  return result;
}

uint64_t SyncFacesRequest.protobuf(version:)(char *a1)
{
  v2 = *a1;
  type metadata accessor for SyncFacesRequestProto(0);
  v4 = *v1;
  sub_22FDBC978(&qword_27DAE4368, type metadata accessor for SyncFacesRequestProto);
  return sub_22FE42C14();
}

uint64_t sub_22FDB82E4(void *a1, uint64_t a2, uint64_t a3)
{
  v75 = *MEMORY[0x277D85DE8];
  v64 = sub_22FE428C4();
  v6 = *(v64 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v64);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  v11 = MEMORY[0x277D84F90];
  v60 = a1;
  if (v10)
  {
    v58 = a3;
    v74 = MEMORY[0x277D84F90];
    sub_22FD92538(0, v10, 0);
    v11 = v74;
    v59 = v6;
    v13 = *(v6 + 16);
    v12 = v6 + 16;
    v14 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v61 = *(v12 + 56);
    v62 = v13;
    v63 = v12;
    v15 = (v12 - 8);
    do
    {
      v16 = v64;
      v62(v9, v14, v64);
      v65 = sub_22FE428A4();
      v66 = v17;
      v67 = v18;
      v68 = v19;
      v69 = v20;
      v70 = v21;
      v71 = v22;
      v72 = v23;
      v73 = v24;
      sub_22FE428A4();
      v25 = sub_22FE42694();
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      v28 = sub_22FE42644();
      (*v15)(v9, v16);
      v74 = v11;
      v30 = *(v11 + 16);
      v29 = *(v11 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_22FD92538((v29 > 1), v30 + 1, 1);
        v11 = v74;
      }

      *(v11 + 16) = v30 + 1;
      v31 = v11 + 16 * v30;
      *(v31 + 32) = 0x1000000000;
      *(v31 + 40) = v28 | 0x4000000000000000;
      v14 += v61;
      --v10;
    }

    while (v10);
    a1 = v60;
    a3 = v58;
    v6 = v59;
  }

  v32 = *a1;

  *a1 = v11;
  v33 = *(a3 + 16);
  v34 = MEMORY[0x277D84F90];
  if (v33)
  {
    v74 = MEMORY[0x277D84F90];
    sub_22FD92538(0, v33, 0);
    v34 = v74;
    v36 = *(v6 + 16);
    v35 = v6 + 16;
    v37 = a3 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
    v62 = *(v35 + 56);
    v63 = v36;
    v61 = (v35 - 8);
    do
    {
      v38 = v64;
      v39 = v35;
      v63(v9, v37, v64);
      v65 = sub_22FE428A4();
      v66 = v40;
      v67 = v41;
      v68 = v42;
      v69 = v43;
      v70 = v44;
      v71 = v45;
      v72 = v46;
      v73 = v47;
      sub_22FE428A4();
      v48 = sub_22FE42694();
      v49 = *(v48 + 48);
      v50 = *(v48 + 52);
      swift_allocObject();
      v51 = sub_22FE42644();
      (*v61)(v9, v38);
      v74 = v34;
      v53 = *(v34 + 16);
      v52 = *(v34 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_22FD92538((v52 > 1), v53 + 1, 1);
        v34 = v74;
      }

      *(v34 + 16) = v53 + 1;
      v54 = v34 + 16 * v53;
      *(v54 + 32) = 0x1000000000;
      *(v54 + 40) = v51 | 0x4000000000000000;
      v37 += v62;
      --v33;
      v35 = v39;
    }

    while (v33);
    a1 = v60;
  }

  v55 = a1[1];

  a1[1] = v34;
  v57 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FDB8750(char *a1)
{
  v2 = *a1;
  type metadata accessor for SyncFacesRequestProto(0);
  v4 = *v1;
  sub_22FDBC978(&qword_27DAE4368, type metadata accessor for SyncFacesRequestProto);
  return sub_22FE42C14();
}

uint64_t SyncedPhotosFace.photos.getter(uint64_t a1)
{
  v3 = type metadata accessor for StoredPhoto(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22FE428C4();
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v25);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + *(a1 + 40));
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v23 = a1;
    v24 = v1;
    v28 = MEMORY[0x277D84F90];
    sub_22FD922C4(0, v13, 0);
    v14 = v28;
    v15 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = *(v4 + 72);
    v26 = v8 + 32;
    v27 = v16;
    v17 = v25;
    do
    {
      sub_22FDBC824(v15, v7, type metadata accessor for StoredPhoto);
      (*(v8 + 16))(v11, v7, v17);
      sub_22FDBC88C(v7, type metadata accessor for StoredPhoto);
      v28 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_22FD922C4(v18 > 1, v19 + 1, 1);
        v17 = v25;
        v14 = v28;
      }

      *(v14 + 16) = v19 + 1;
      (*(v8 + 32))(v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v19, v11, v17);
      v15 += v27;
      --v13;
    }

    while (v13);
    a1 = v23;
    v1 = v24;
  }

  v20 = *(v1 + *(a1 + 44));
  v28 = v14;

  sub_22FDAD76C(v21);
  return v28;
}

int *SyncedPhotosFace.init(id:day:uncached:cached:complete:checksum:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a7 - 8) + 32))(a8, a1, a7);
  result = type metadata accessor for SyncedPhotosFace();
  *(a8 + result[10]) = a3;
  *(a8 + result[9]) = a2;
  *(a8 + result[11]) = a4;
  *(a8 + result[12]) = a5;
  *(a8 + result[13]) = a6;
  return result;
}

uint64_t SyncedPhotosFace.description.getter(uint64_t a1)
{
  v2 = v1;
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD000000000000016, 0x800000022FE48100);
  v4 = *(a1 + 16);
  v5 = *(*(a1 + 24) + 16);
  sub_22FE43C84();
  MEMORY[0x23190ACF0](0x736F746F6870202CLL, 0xEC00000028203D20);
  v6 = *(SyncedPhotosFace.photos.getter(a1) + 16);

  v7 = sub_22FE43C24();
  MEMORY[0x23190ACF0](v7);

  MEMORY[0x23190ACF0](8236, 0xE200000000000000);
  v8 = *(v2 + *(a1 + 44));
  v19 = *(v8 + 16);
  v9 = sub_22FE43C24();
  MEMORY[0x23190ACF0](v9);

  MEMORY[0x23190ACF0](0x6B63656863202C29, 0xEE00203D206D7573);
  v20 = *(v2 + *(a1 + 52));
  v10 = sub_22FE43C24();
  MEMORY[0x23190ACF0](v10);

  MEMORY[0x23190ACF0](8236, 0xE200000000000000);
  v11 = sub_22FE428C4();
  v12 = MEMORY[0x23190AE90](v8, v11);
  MEMORY[0x23190ACF0](v12);

  MEMORY[0x23190ACF0](32, 0xE100000000000000);
  SyncedPhotosFace.photos.getter(a1);
  v13 = MEMORY[0x23190AE90]();
  v15 = v14;

  MEMORY[0x23190ACF0](v13, v15);

  MEMORY[0x23190ACF0](0x656C706D6F63202CLL, 0xED0000203D206574);
  if (*(v2 + *(a1 + 48)))
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (*(v2 + *(a1 + 48)))
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x23190ACF0](v16, v17);

  MEMORY[0x23190ACF0](41, 0xE100000000000000);
  return 0;
}

uint64_t SyncedPhotosFace.contentDescription.getter(uint64_t a1)
{
  v2 = v1;
  v42 = sub_22FE428C4();
  v4 = *(v42 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_22FE438F4();
  v43 = *(v1 + *(a1 + 36));
  v7 = sub_22FE43C24();
  v9 = v8;

  v44 = v7;
  v45 = v9;
  MEMORY[0x23190ACF0](8250, 0xE200000000000000);
  v10 = SyncedPhotosFace.photos.getter(a1);
  v11 = *(v10 + 16);
  if (v11)
  {
    v35 = a1;
    v36 = v2;
    v43 = MEMORY[0x277D84F90];
    sub_22FD92308(0, v11, 0);
    v12 = v43;
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v15 = *(v13 + 64);
    v34 = v10;
    v16 = v10 + ((v15 + 32) & ~v15);
    v38 = *(v13 + 56);
    v39 = v14;
    v37 = (v13 - 8);
    v40 = v13;
    do
    {
      v18 = v41;
      v17 = v42;
      v39(v41, v16, v42);
      sub_22FE42874();
      sub_22FE430E4();
      v19 = sub_22FE43174();
      v21 = v20;
      v23 = v22;
      v25 = v24;

      (*v37)(v18, v17);
      v43 = v12;
      v27 = *(v12 + 16);
      v26 = *(v12 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_22FD92308((v26 > 1), v27 + 1, 1);
        v12 = v43;
      }

      *(v12 + 16) = v27 + 1;
      v28 = (v12 + 32 * v27);
      v28[4] = v19;
      v28[5] = v21;
      v28[6] = v23;
      v28[7] = v25;
      v16 += v38;
      --v11;
    }

    while (v11);

    a1 = v35;
    v2 = v36;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v43 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4350, "pi");
  sub_22FDBC930(&qword_27DAE4358, &qword_27DAE4350, "pi");
  sub_22FDBBDF8();
  v29 = sub_22FE43234();
  v31 = v30;

  MEMORY[0x23190ACF0](v29, v31);

  MEMORY[0x23190ACF0](0x203A6B68632820, 0xE700000000000000);
  v43 = *(v2 + *(a1 + 52));
  v32 = sub_22FE43C24();
  MEMORY[0x23190ACF0](v32);

  MEMORY[0x23190ACF0](41, 0xE100000000000000);
  return v44;
}

BOOL static SyncedPhotosFace.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) + 8);
  if (sub_22FE43024() & 1) != 0 && (v7 = type metadata accessor for SyncedPhotosFace(), *(a1 + *(v7 + 36)) == *(a2 + *(v7 + 36))) && (v8 = v7, (sub_22FDB7050(*(a1 + *(v7 + 40)), *(a2 + *(v7 + 40)))) && (sub_22FDB6B20(*(a1 + v8[11]), *(a2 + v8[11])) & 1) != 0 && *(a1 + v8[12]) == *(a2 + v8[12]))
  {
    return *(a1 + v8[13]) == *(a2 + v8[13]);
  }

  else
  {
    return 0;
  }
}

uint64_t SyncedPhotosFace.hash(into:)(__int128 *a1, uint64_t a2)
{
  v5 = sub_22FE428C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  v11 = *(*(a2 + 24) + 24);
  sub_22FE42FE4();
  MEMORY[0x23190B9C0](*(v2 + *(a2 + 36)));
  sub_22FDBBE84(a1, *(v2 + *(a2 + 40)));
  v23 = a2;
  v24 = v2;
  v12 = *(v2 + *(a2 + 44));
  MEMORY[0x23190B9C0](*(v12 + 16));
  v13 = *(v12 + 16);
  if (v13)
  {
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v14 = v16;
    v17 = v12 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v18 = *(v15 + 56);
    do
    {
      v14(v9, v17, v5);
      sub_22FDBC978(&qword_27DAE2CB8, MEMORY[0x277CC95F0]);
      sub_22FE42FE4();
      (*(v15 - 8))(v9, v5);
      v17 += v18;
      --v13;
    }

    while (v13);
  }

  v20 = v23;
  v19 = v24;
  v21 = *(v24 + *(v23 + 48));
  sub_22FE43DD4();
  return MEMORY[0x23190B9C0](*(v19 + *(v20 + 52)));
}

uint64_t SyncedPhotosFace.hashValue.getter(uint64_t a1)
{
  sub_22FE43DB4();
  SyncedPhotosFace.hash(into:)(v3, a1);
  return sub_22FE43E04();
}

uint64_t sub_22FDB9520(uint64_t a1, uint64_t a2)
{
  sub_22FE43DB4();
  SyncedPhotosFace.hash(into:)(v4, a2);
  return sub_22FE43E04();
}

uint64_t SyncedPhotosFace.streamify()(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + *(v9 + 44));
  v11 = *(v10 + 16);
  v38 = v5;
  if (v11)
  {
    sub_22FE43C34();
    v12 = *(*(a1 - 8) + 72);
    v13 = *(*(a1 - 8) + 80);
    swift_allocObject();
    v39 = sub_22FE432A4();
    v15 = v14;
    (*(v5 + 16))(v8, v2, v4);
    v16 = *(v2 + *(a1 + 36));
    v17 = *(v2 + *(a1 + 52));
    v18 = *(a1 + 24);
    (*(v5 + 32))(v15, v8, v4);
    v40 = v18;
    v19 = type metadata accessor for SyncedPhotosFace();
    *(v15 + v19[10]) = MEMORY[0x277D84F90];
    *(v15 + v19[9]) = v16;
    *(v15 + v19[11]) = v10;
    *(v15 + v19[12]) = 0;
    *(v15 + v19[13]) = v17;
    sub_22FE43354();
  }

  else
  {
    v20 = sub_22FE432D4();
    v21 = *(a1 + 24);
    v39 = v20;
    v40 = v21;
  }

  v41 = *(v2 + *(a1 + 40));
  MEMORY[0x28223BE20](v20);
  v22 = v40;
  *(&v37 - 4) = v4;
  *(&v37 - 3) = v22;
  *(&v37 - 2) = v2;

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4370, &qword_22FE4AE88);
  v24 = sub_22FDBC930(&qword_27DAE4378, &qword_27DAE4370, &qword_22FE4AE88);
  sub_22FDA5834(sub_22FDBC1A8, (&v37 - 6), v23, a1, MEMORY[0x277D84A98], v24, MEMORY[0x277D84AC0], v25);

  if (*(v2 + *(a1 + 48)) == 1)
  {
    sub_22FE43C34();
    v26 = *(*(a1 - 8) + 72);
    v27 = *(*(a1 - 8) + 80);
    swift_allocObject();
    sub_22FE432A4();
    v29 = v28;
    v30 = v38;
    (*(v38 + 16))(v8, v2, v4);
    v31 = *(v2 + *(a1 + 36));
    v32 = *(v2 + *(a1 + 52));
    (*(v30 + 32))(v29, v8, v4);
    v33 = type metadata accessor for SyncedPhotosFace();
    v34 = MEMORY[0x277D84F90];
    *(v29 + v33[10]) = MEMORY[0x277D84F90];
    *(v29 + v33[9]) = v31;
    *(v29 + v33[11]) = v34;
    *(v29 + v33[12]) = 1;
    *(v29 + v33[13]) = v32;
    sub_22FE43354();
  }

  else
  {
    sub_22FE432D4();
  }

  sub_22FE432C4();

  v35 = sub_22FE432C4();

  return v35;
}

uint64_t sub_22FDB99E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a1;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, v9);
  v12 = type metadata accessor for SyncedPhotosFace();
  v13 = *(a2 + v12[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40F8, &qword_22FE4B1F0);
  v14 = *(type metadata accessor for StoredPhoto(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22FE49F60;
  sub_22FDBC824(v21, v17 + v16, type metadata accessor for StoredPhoto);
  v18 = *(a2 + v12[13]);
  result = (*(v7 + 32))(a4, v11, a3);
  *(a4 + v12[10]) = v17;
  *(a4 + v12[9]) = v13;
  *(a4 + v12[11]) = MEMORY[0x277D84F90];
  *(a4 + v12[12]) = 0;
  *(a4 + v12[13]) = v18;
  return result;
}

uint64_t static SyncedPhotosFace.destreamify(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  type metadata accessor for SyncedPhotosFace();
  sub_22FE43354();
  v4 = *(a3 + 24);

  swift_getWitnessTable();
  sub_22FE42F94();

  sub_22FE42FA4();
  swift_getWitnessTable();
  v5 = sub_22FE43214();

  return v5;
}

uint64_t sub_22FDB9D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v20 = a4;
  swift_getKeyPath();
  v7 = type metadata accessor for SyncedPhotosFace();
  sub_22FE43354();

  swift_getWitnessTable();
  v8 = sub_22FE42F94();

  v21 = v8;
  v16 = a3;
  v17 = a4;
  v18 = a1;
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = sub_22FDBC8EC;
  v14[5] = &v15;
  v9 = sub_22FE42FA4();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_22FDA5834(sub_22FDBC8F8, v14, v9, v7, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);

  return v12;
}

int *sub_22FDB9F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a3;
  v32 = a5;
  v33 = a1;
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v11;
  v12 = type metadata accessor for SyncedPhotosFace();
  v13 = sub_22FE43744();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  v35 = a2;
  sub_22FE43354();
  swift_getWitnessTable();
  sub_22FE43634();
  v18 = *(v12 - 8);
  if ((*(v18 + 48))(v17, 1, v12) == 1)
  {
    (*(v14 + 8))(v17, v13);
    v31 = -1;
  }

  else
  {
    v31 = *&v17[*(v12 + 52)];
    (*(v18 + 8))(v17, v12);
  }

  v19 = *(v7 + 16);
  v30 = v10;
  v20 = v19(v10, v29, a4);
  v35 = a2;
  MEMORY[0x28223BE20](v20);
  v21 = v34;
  *(&v27 - 2) = a4;
  *(&v27 - 1) = v21;
  v28 = a2;
  v22 = v21;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4370, &qword_22FE4AE88);
  swift_getWitnessTable();
  sub_22FDBC930(&qword_27DAE44A8, &qword_27DAE4370, &qword_22FE4AE88);
  v29 = sub_22FE43214();

  v35 = v28;
  MEMORY[0x28223BE20](v23);
  *(&v27 - 2) = a4;
  *(&v27 - 1) = v22;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE44B0, &qword_22FE4B8D0);
  sub_22FDBC930(&qword_27DAE44B8, &qword_27DAE44B0, &qword_22FE4B8D0);
  v24 = sub_22FE43214();

  v25 = v32;
  (*(v7 + 32))(v32, v30, a4);
  result = type metadata accessor for SyncedPhotosFace();
  *(v25 + result[10]) = v29;
  *(v25 + result[9]) = v33;
  *(v25 + result[11]) = v24;
  *(v25 + result[12]) = 1;
  *(v25 + result[13]) = v31;
  return result;
}

uint64_t sub_22FDBA374@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void)@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for SyncedPhotosFace();
  sub_22FE43354();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
  *a3 = result;
  return result;
}

int *SyncedPhotosFace.init(protobuf:version:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v95 = a5;
  v11 = sub_22FE428C4();
  v12 = *(v11 - 8);
  v102 = v11;
  v103 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v101 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StoredPhotoProto(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v107 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v94 - v20;
  v22 = type metadata accessor for StoredPhoto(0);
  v106 = *(v22 - 8);
  v23 = *(v106 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = a3;
  v96 = *(a3 - 8);
  v26 = *(v96 + 64);
  MEMORY[0x28223BE20](v27);
  v98 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v108) = *a2;
  v100 = a1;
  v29 = a1[2];
  v30 = *(v29 + 16);
  if (!v30)
  {
    v105 = MEMORY[0x277D84F90];
LABEL_11:
    v37 = v100;
    v38 = *v100;
    v39 = v100[1];
    LOBYTE(v110) = v108;
    v40 = *(a4 + 8);
    v41 = *(v40 + 8);
    sub_22FDB4380(v38, v39);
    v42 = v98;
    v43 = v39;
    v44 = a4;
    v45 = v99;
    v41(v38, v43, &v110, v99, v40);
    v106 = v6;
    if (v6)
    {
      sub_22FDBC88C(v37, type metadata accessor for SyncedPhotosFaceProto);
    }

    v97 = v44;
    v47 = type metadata accessor for SyncedPhotosFaceProto(0);
    v48 = v37 + *(v47 + 36);
    if (v48[8])
    {
      v49 = 0;
    }

    else
    {
      v49 = *v48;
    }

    if (v49 < 0)
    {
      goto LABEL_59;
    }

    v50 = v37[3];
    v51 = *(v50 + 16);
    v52 = MEMORY[0x277D84F90];
    if (!v51)
    {
LABEL_48:
      v90 = *(v37 + 32);
      v91 = v37 + *(v47 + 40);
      if (v91[8])
      {
        v92 = -1;
      }

      else
      {
        v92 = *v91;
      }

      sub_22FDBC88C(v37, type metadata accessor for SyncedPhotosFaceProto);
      v93 = v95;
      (*(v96 + 32))(v95, v42, v45);
      result = type metadata accessor for SyncedPhotosFace();
      *(v93 + result[10]) = v105;
      *(v93 + result[9]) = v49;
      *(v93 + result[11]) = v52;
      *(v93 + result[12]) = v90;
      *(v93 + result[13]) = v92;
      return result;
    }

    v94 = v47;
    v104 = v49;
    v110 = MEMORY[0x277D84F90];
    sub_22FD922C4(0, v51, 0);
    v53 = 0;
    v52 = v110;
    v107 = v103 + 32;
    v108 = v51;
    v54 = (v50 + 40);
    v55 = v101;
    while (1)
    {
      if (v53 >= *(v50 + 16))
      {
        goto LABEL_53;
      }

      v56 = *(v54 - 1);
      v57 = *v54;
      v58 = *v54 >> 62;
      if (v58 > 1)
      {
        if (v58 != 2)
        {
          goto LABEL_46;
        }

        v60 = *(v56 + 16);
        v59 = *(v56 + 24);
        v61 = v59 - v60;
        if (__OFSUB__(v59, v60))
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (!v58)
        {
          if (BYTE6(v57) != 16)
          {
            goto LABEL_46;
          }

          goto LABEL_31;
        }

        if (__OFSUB__(HIDWORD(v56), v56))
        {
          goto LABEL_55;
        }

        v61 = HIDWORD(v56) - v56;
      }

      sub_22FDB4380(*(v54 - 1), *v54);
      if (v61 != 16)
      {
LABEL_46:

        (*(v96 + 8))(v98, v99);
        sub_22FD91780();
        v88 = swift_allocError();
        *v89 = 1;
        v106 = v88;
        swift_willThrow();
        sub_22FD917D4(v56, v57);
        sub_22FDBC88C(v100, type metadata accessor for SyncedPhotosFaceProto);
      }

LABEL_31:
      if (v58 == 2)
      {
        v66 = *(v56 + 16);
        v67 = sub_22FE42654();
        if (!v67)
        {
          goto LABEL_60;
        }

        v68 = v67;
        v69 = sub_22FE42684();
        if (__OFSUB__(v66, v69))
        {
          goto LABEL_57;
        }

        v65 = (v66 - v69 + v68);
        sub_22FE42674();
        if (!v65)
        {
          goto LABEL_61;
        }

LABEL_41:
        v70 = *v65;
        v71 = v65[1];
        v72 = v65[2];
        v73 = v65[3];
        v74 = v65[4];
        v75 = v65[5];
        v76 = v65[6];
        v77 = v65[7];
        v78 = v65[8];
        v79 = v65[9];
        v80 = v65[10];
        v81 = v65[11];
        v82 = v65[12];
        v83 = v65[13];
        v84 = v65[14];
        v85 = v65[15];
        v55 = v101;
        goto LABEL_42;
      }

      if (v58 == 1)
      {
        if (v56 > v56 >> 32)
        {
          goto LABEL_56;
        }

        v62 = sub_22FE42654();
        if (!v62)
        {
          goto LABEL_62;
        }

        v63 = v62;
        v64 = sub_22FE42684();
        if (__OFSUB__(v56, v64))
        {
          goto LABEL_58;
        }

        v65 = (v56 - v64 + v63);
        result = sub_22FE42674();
        if (!v65)
        {
          goto LABEL_63;
        }

        goto LABEL_41;
      }

LABEL_42:
      sub_22FE42894();
      sub_22FD917D4(v56, v57);
      v110 = v52;
      v87 = *(v52 + 16);
      v86 = *(v52 + 24);
      if (v87 >= v86 >> 1)
      {
        sub_22FD922C4(v86 > 1, v87 + 1, 1);
        v52 = v110;
      }

      ++v53;
      *(v52 + 16) = v87 + 1;
      (*(v103 + 32))(v52 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v87, v55, v102);
      v54 += 2;
      if (v108 == v53)
      {
        v45 = v99;
        v37 = v100;
        v42 = v98;
        v49 = v104;
        v47 = v94;
        goto LABEL_48;
      }
    }
  }

  v97 = a4;
  v110 = MEMORY[0x277D84F90];
  v104 = v30;
  sub_22FD92408(0, v30, 0);
  v31 = 0;
  v32 = v110;
  v105 = v29 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  while (v31 < *(v29 + 16))
  {
    sub_22FDBC824(v105 + *(v16 + 72) * v31, v21, type metadata accessor for StoredPhotoProto);
    v33 = v107;
    sub_22FDBC824(v21, v107, type metadata accessor for StoredPhotoProto);
    v109 = v108;
    StoredPhoto.init(protobuf:version:)(v33, &v109, v25);
    if (v6)
    {
      v106 = v6;
      sub_22FDBC88C(v21, type metadata accessor for StoredPhotoProto);
      sub_22FDBC88C(v100, type metadata accessor for SyncedPhotosFaceProto);
    }

    sub_22FDBC88C(v21, type metadata accessor for StoredPhotoProto);
    v110 = v32;
    v35 = *(v32 + 16);
    v34 = *(v32 + 24);
    v36 = v32;
    if (v35 >= v34 >> 1)
    {
      sub_22FD92408(v34 > 1, v35 + 1, 1);
      v36 = v110;
    }

    ++v31;
    *(v36 + 16) = v35 + 1;
    sub_22FDB51B8(v25, v36 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v35, type metadata accessor for StoredPhoto);
    v6 = 0;
    v32 = v36;
    if (v104 == v31)
    {
      v105 = v36;
      a4 = v97;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_53:
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
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  sub_22FE42674();
LABEL_61:
  __break(1u);
LABEL_62:
  result = sub_22FE42674();
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t SyncedPhotosFace.protobuf(version:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for SyncedPhotosFaceProto(0);
  v5 = *(a2 + 16);
  sub_22FDBC978(&qword_27DAE4380, type metadata accessor for SyncedPhotosFaceProto);
  return sub_22FE42C14();
}

uint64_t sub_22FDBAD84(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v74) = a3;
  v86 = *MEMORY[0x277D85DE8];
  v71 = sub_22FE428C4();
  v64 = *(v71 - 8);
  v9 = *(v64 + 64);
  MEMORY[0x28223BE20](v71);
  v70 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StoredPhoto(0);
  v72 = *(v11 - 8);
  v12 = *(v72 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for StoredPhotoProto(0);
  v15 = *(v73 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v73);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a5;
  v67 = a4;
  v65 = type metadata accessor for SyncedPhotosFace();
  v19 = *(a2 + *(v65 + 40));
  v20 = *(v19 + 16);
  v21 = MEMORY[0x277D84F90];
  v68 = a2;
  v69 = a1;
  if (v20)
  {
    v76 = MEMORY[0x277D84F90];
    sub_22FD924F4(0, v20, 0);
    v21 = v76;
    v22 = v19 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
    v72 = *(v72 + 72);
    do
    {
      v23 = sub_22FDBC824(v22, v14, type metadata accessor for StoredPhoto);
      MEMORY[0x28223BE20](v23);
      *(&v64 - 2) = v14;
      *(&v64 - 8) = v74;
      sub_22FDBC978(&qword_27DAE4338, type metadata accessor for StoredPhotoProto);
      v24 = v75;
      sub_22FE42C14();
      v75 = v24;
      sub_22FDBC88C(v14, type metadata accessor for StoredPhoto);
      v76 = v21;
      v26 = *(v21 + 16);
      v25 = *(v21 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_22FD924F4(v25 > 1, v26 + 1, 1);
        v21 = v76;
      }

      *(v21 + 16) = v26 + 1;
      sub_22FDB51B8(v18, v21 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v26, type metadata accessor for StoredPhotoProto);
      v22 += v72;
      --v20;
    }

    while (v20);
    a2 = v68;
    a1 = v69;
  }

  v27 = a1[2];

  a1[2] = v21;
  LOBYTE(v76) = v74;
  v28 = v75;
  result = (*(*(v66 + 8) + 16))(&v76, v67);
  if (!v28)
  {
    v31 = result;
    v32 = v30;
    v73 = 0;
    sub_22FD917D4(*a1, a1[1]);
    *a1 = v31;
    a1[1] = v32;
    v33 = v65;
    v34 = *(a2 + *(v65 + 44));
    v35 = *(v34 + 16);
    v36 = MEMORY[0x277D84F90];
    if (v35)
    {
      v85 = MEMORY[0x277D84F90];
      sub_22FD92538(0, v35, 0);
      v36 = v85;
      v37 = *(v64 + 16);
      v38 = v34 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
      v74 = *(v64 + 72);
      v75 = v37;
      v39 = (v64 + 8);
      do
      {
        v41 = v70;
        v40 = v71;
        v75(v70, v38, v71);
        v76 = sub_22FE428A4();
        v77 = v42;
        v78 = v43;
        v79 = v44;
        v80 = v45;
        v81 = v46;
        v82 = v47;
        v83 = v48;
        v84 = v49;
        sub_22FE428A4();
        v50 = sub_22FE42694();
        v51 = *(v50 + 48);
        v52 = *(v50 + 52);
        swift_allocObject();
        v53 = sub_22FE42644();
        (*v39)(v41, v40);
        v85 = v36;
        v55 = *(v36 + 16);
        v54 = *(v36 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_22FD92538((v54 > 1), v55 + 1, 1);
          v36 = v85;
        }

        *(v36 + 16) = v55 + 1;
        v56 = v36 + 16 * v55;
        *(v56 + 32) = 0x1000000000;
        *(v56 + 40) = v53 | 0x4000000000000000;
        v38 += v74;
        --v35;
      }

      while (v35);
      v33 = v65;
    }

    v57 = v69;
    v58 = v69[3];

    v57[3] = v36;
    v59 = v68;
    *(v57 + 32) = *(v68 + v33[12]);
    v60 = *(v59 + v33[9]);
    if (v60 < 0)
    {
      __break(1u);
    }

    result = type metadata accessor for SyncedPhotosFaceProto(0);
    v61 = v57 + *(result + 36);
    *v61 = v60;
    *(v61 + 8) = 0;
    v62 = v57 + *(result + 40);
    *v62 = *(v59 + v33[13]);
    *(v62 + 8) = 0;
  }

  v63 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static SyncedPhotosFace.faceChecksum(for:)(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = sub_22FE428C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5.n128_f64[0] = MEMORY[0x28223BE20](v2);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v10 = *(v3 + 16);
    v9 = v3 + 16;
    v41 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v42 = v10;
    v11 = *(v9 + 56);
    v36 = v4 & 0xFFFFFFFFFFFFFFE0;
    v34 = v43 + (v4 & 0xFFFFFFFFFFFFFFE0);
    v33 = v4 & 0x18;
    v35 = &v44;
    v39 = v4 & 0xFFFFFFFFFFFFFFF8;
    v40 = v11;
    v37 = -(v4 & 0xFFFFFFFFFFFFFFF8);
    v38 = v43 + (v4 & 0xFFFFFFFFFFFFFFF8);
    while (1)
    {
      v42(&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v41 + v40 * v7, v2, v5);
      v43[0] = sub_22FE428A4();
      v43[1] = v12;
      if (v4)
      {
        break;
      }

      v15 = 0;
LABEL_18:
      (*(v9 - 8))(&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
      v29 = __OFADD__(v8, v15);
      v8 += v15;
      if (v29)
      {
        __break(1u);
      }

      if (++v7 == v6)
      {
        goto LABEL_22;
      }
    }

    if (v4 < 8)
    {
      v13 = 0;
      v14 = v43;
      do
      {
LABEL_16:
        v28 = *v14++;
        v13 ^= v28;
      }

      while (v14 != v43 + v4);
LABEL_17:
      v15 = v13;
      goto LABEL_18;
    }

    if (v4 >= 0x20)
    {
      v17 = 0uLL;
      v18 = v35;
      v16 = v36;
      v19 = v36;
      v20 = 0uLL;
      do
      {
        v17 = veorq_s8(v18[-1], v17);
        v20 = veorq_s8(*v18, v20);
        v18 += 2;
        v19 -= 32;
      }

      while (v19);
      v21 = veorq_s8(v20, v17);
      *v21.i8 = veor_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
      v22 = v21.i64[0] ^ HIDWORD(v21.i64[0]) ^ ((v21.i64[0] ^ HIDWORD(v21.i64[0])) >> 16);
      v13 = v22 ^ BYTE1(v22);
      if (v4 == v36)
      {
        goto LABEL_17;
      }

      v14 = v34;
      if (!v33)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v13 = 0;
      v16 = 0;
    }

    v23 = v13;
    v24 = (v43 + v16);
    v25 = v37 + v16;
    do
    {
      v26 = *v24++;
      v23 = veor_s8(v26, v23);
      v25 += 8;
    }

    while (v25);
    v27 = *&v23 ^ HIDWORD(*&v23) ^ ((*&v23 ^ HIDWORD(*&v23)) >> 16);
    v13 = v27 ^ BYTE1(v27);
    v14 = v38;
    if (v4 == v39)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v8 = 0;
LABEL_22:
  v30 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t SyncedPhotosFace.Failure.description.getter()
{
  v1 = *v0;
  sub_22FE438F4();

  v2 = sub_22FE428C4();
  v3 = MEMORY[0x23190AE90](v1, v2);
  MEMORY[0x23190ACF0](v3);

  MEMORY[0x23190ACF0](41, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

uint64_t sub_22FDBBBC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_22FE42654();
    if (v10)
    {
      v11 = sub_22FE42684();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_22FE42674();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_22FE42654();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_22FE42684();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_22FE42674();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_22FDBBDF8()
{
  result = qword_27DAE4360;
  if (!qword_27DAE4360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4360);
  }

  return result;
}

uint64_t sub_22FDBBE84(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for StoredPhoto(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  result = MEMORY[0x23190B9C0](v10, v7);
  if (v10)
  {
    v12 = v4[5];
    v28 = v4[6];
    v29 = v12;
    v13 = v4[8];
    v27 = v4[7];
    v14 = &v9[v13];
    v15 = v4[10];
    v16 = &v9[v4[9]];
    v17 = v4[12];
    v25 = v4[11];
    v26 = v15;
    v18 = &v9[v17];
    v19 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v24 = *(v5 + 72);
    do
    {
      sub_22FDBC824(v19, v9, type metadata accessor for StoredPhoto);
      sub_22FE428C4();
      sub_22FDBC978(&qword_27DAE2CB8, MEMORY[0x277CC95F0]);
      sub_22FE42FE4();
      sub_22FE42854();
      sub_22FDBC978(&qword_27DAE44C0, MEMORY[0x277CC9578]);
      sub_22FE42FE4();
      sub_22FE42FE4();
      v21 = *&v9[v27];
      if (v21 == 0.0)
      {
        v21 = 0.0;
      }

      MEMORY[0x23190B9F0](*&v21);
      if (*(v14 + 1))
      {
        v22 = *v14;
        sub_22FE43DD4();
        sub_22FE430D4();
        if (!*(v16 + 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_22FE43DD4();
        if (!*(v16 + 1))
        {
LABEL_11:
          sub_22FE43DD4();
          goto LABEL_12;
        }
      }

      v23 = *v16;
      sub_22FE43DD4();
      sub_22FE430D4();
LABEL_12:
      MEMORY[0x23190B9C0](*&v9[v26]);
      sub_22FDDFDF8(a1, *&v9[v25]);
      if (*(v18 + 1))
      {
        v20 = *v18;
        sub_22FE43DD4();
        sub_22FE430D4();
      }

      else
      {
        sub_22FE43DD4();
      }

      result = sub_22FDBC88C(v9, type metadata accessor for StoredPhoto);
      v19 += v24;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_22FDBC200@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  return sub_22FDBA374(a1, *(v2 + 32), a2);
}

unint64_t sub_22FDBC248()
{
  result = qword_27DAE4388[0];
  if (!qword_27DAE4388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DAE4388);
  }

  return result;
}

void sub_22FDBC358(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_22FDBC774(319, &qword_27DAE4410, type metadata accessor for StoredPhoto);
    if (v3 <= 0x3F)
    {
      sub_22FDBC774(319, qword_27DAE4418, MEMORY[0x277CC95F0]);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22FDBC448(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_22FDBC59C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_22FDBC774(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22FE43354();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22FDBC7C8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22FDBC824(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FDBC88C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FDBC8F8(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return v2(*a1, a1[1]);
}

uint64_t sub_22FDBC930(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_22FDBC978(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AlbumID.init(id:album:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_22FE428C4();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for AlbumID();
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t type metadata accessor for AlbumID()
{
  result = qword_28148B078;
  if (!qword_28148B078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AlbumID.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22FE428C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AlbumID.album.getter()
{
  v1 = (v0 + *(type metadata accessor for AlbumID() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t static AlbumID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s10PhotosFace7DailyIDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for AlbumID() + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_22FE43CB4();
}

uint64_t AlbumID.hash(into:)()
{
  sub_22FE428C4();
  sub_22FDBD504(&qword_27DAE2CB8, MEMORY[0x277CC95F0]);
  sub_22FE42FE4();
  v1 = (v0 + *(type metadata accessor for AlbumID() + 20));
  v2 = *v1;
  v3 = v1[1];

  return sub_22FE430D4();
}

uint64_t AlbumID.hashValue.getter()
{
  sub_22FE43DB4();
  sub_22FE428C4();
  sub_22FDBD504(&qword_27DAE2CB8, MEMORY[0x277CC95F0]);
  sub_22FE42FE4();
  v1 = (v0 + *(type metadata accessor for AlbumID() + 20));
  v2 = *v1;
  v3 = v1[1];
  sub_22FE430D4();
  return sub_22FE43E04();
}

uint64_t sub_22FDBCD2C(uint64_t a1)
{
  sub_22FE43DB4();
  sub_22FE428C4();
  sub_22FDBD504(&qword_27DAE2CB8, MEMORY[0x277CC95F0]);
  sub_22FE42FE4();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_22FE430D4();
  return sub_22FE43E04();
}

uint64_t sub_22FDBCDD4(uint64_t a1, uint64_t a2)
{
  sub_22FE428C4();
  sub_22FDBD504(&qword_27DAE2CB8, MEMORY[0x277CC95F0]);
  sub_22FE42FE4();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];

  return sub_22FE430D4();
}

uint64_t sub_22FDBCE70(uint64_t a1, uint64_t a2)
{
  sub_22FE43DB4();
  sub_22FE428C4();
  sub_22FDBD504(&qword_27DAE2CB8, MEMORY[0x277CC95F0]);
  sub_22FE42FE4();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_22FE430D4();
  return sub_22FE43E04();
}

uint64_t sub_22FDBCF14@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22FE428C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_22FDBCF7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s10PhotosFace7DailyIDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_22FE43CB4();
}

uint64_t AlbumID.description.getter()
{
  sub_22FE438F4();

  strcpy(v4, "AlbumID(id: ");
  BYTE5(v4[1]) = 0;
  HIWORD(v4[1]) = -5120;
  sub_22FE428C4();
  sub_22FDBD504(&qword_27DAE41D0, MEMORY[0x277CC95F0]);
  v1 = sub_22FE43C24();
  MEMORY[0x23190ACF0](v1);

  MEMORY[0x23190ACF0](0x3A6D75626C61202CLL, 0xE900000000000020);
  v2 = type metadata accessor for AlbumID();
  MEMORY[0x23190ACF0](*(v0 + *(v2 + 20)), *(v0 + *(v2 + 20) + 8));
  MEMORY[0x23190ACF0](41, 0xE100000000000000);
  return v4[0];
}

uint64_t AlbumID.init(protobuf:version:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22FE428C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v10) = *a2;
  v12 = a1[2];
  v13 = a1[3];
  v18[15] = v10;
  sub_22FDB4380(v12, v13);
  UUID.init(serialized:version:)(v12, v13);
  if (v3)
  {
    return sub_22FDBD278(a1);
  }

  v16 = *a1;
  v15 = a1[1];

  sub_22FDBD278(a1);
  (*(v8 + 32))(a3, v11, v7);
  result = type metadata accessor for AlbumID();
  v17 = (a3 + *(result + 20));
  *v17 = v16;
  v17[1] = v15;
  return result;
}

uint64_t sub_22FDBD278(uint64_t a1)
{
  v2 = type metadata accessor for AlbumIDProto();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AlbumID.protobuf(version:)(char *a1)
{
  v1 = *a1;
  type metadata accessor for AlbumIDProto();
  sub_22FDBD504(&qword_27DAE44C8, type metadata accessor for AlbumIDProto);
  return sub_22FE42C14();
}

uint64_t sub_22FDBD380(void *a1, uint64_t a2)
{
  v3 = (a2 + *(type metadata accessor for AlbumID() + 20));
  v5 = *v3;
  v4 = v3[1];
  v6 = a1[1];

  *a1 = v5;
  a1[1] = v4;
  v7 = UUID.serialized(version:)();
  v9 = v8;
  result = sub_22FD917D4(a1[2], a1[3]);
  a1[2] = v7;
  a1[3] = v9;
  return result;
}

uint64_t sub_22FDBD480(uint64_t a1)
{
  *(a1 + 16) = sub_22FDBD504(&qword_28148B088, type metadata accessor for AlbumID);
  result = sub_22FDBD504(&qword_28148B098, type metadata accessor for AlbumID);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_22FDBD504(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FDBD594@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_22FE428C4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v12) = *a2;
  v14 = a1[2];
  v15 = a1[3];
  v21 = v12;
  sub_22FDB4380(v14, v15);
  UUID.init(serialized:version:)(v14, v15);
  if (v4)
  {
    return sub_22FDBD278(a1);
  }

  v18 = *a1;
  v17 = a1[1];

  sub_22FDBD278(a1);
  result = (*(v10 + 32))(a4, v13, v9);
  v19 = (a4 + *(a3 + 20));
  *v19 = v18;
  v19[1] = v17;
  return result;
}

uint64_t sub_22FDBD6E4(char *a1)
{
  v1 = *a1;
  type metadata accessor for AlbumIDProto();
  sub_22FDBD504(&qword_27DAE44C8, type metadata accessor for AlbumIDProto);
  return sub_22FE42C14();
}

uint64_t sub_22FDBD7C4()
{
  result = sub_22FE428C4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t DailyID.init(id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22FE428C4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t DailyID.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22FE428C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DailyID.hash(into:)()
{
  sub_22FE428C4();
  sub_22FDBE094(&qword_27DAE2CB8, MEMORY[0x277CC95F0]);

  return sub_22FE42FE4();
}

uint64_t DailyID.hashValue.getter()
{
  sub_22FE43DB4();
  sub_22FE428C4();
  sub_22FDBE094(&qword_27DAE2CB8, MEMORY[0x277CC95F0]);
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDBDA34()
{
  sub_22FE43DB4();
  sub_22FE428C4();
  sub_22FDBE094(&qword_27DAE2CB8, MEMORY[0x277CC95F0]);
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDBDABC()
{
  sub_22FE428C4();
  sub_22FDBE094(&qword_27DAE2CB8, MEMORY[0x277CC95F0]);

  return sub_22FE42FE4();
}

uint64_t sub_22FDBDB40()
{
  sub_22FE43DB4();
  sub_22FE428C4();
  sub_22FDBE094(&qword_27DAE2CB8, MEMORY[0x277CC95F0]);
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t DailyID.description.getter()
{
  strcpy(v2, "DailyID(id: ");
  sub_22FE428C4();
  sub_22FDBE094(&qword_27DAE41D0, MEMORY[0x277CC95F0]);
  v0 = sub_22FE43C24();
  MEMORY[0x23190ACF0](v0);

  MEMORY[0x23190ACF0](41, 0xE100000000000000);
  return v2[0];
}

uint64_t sub_22FDBDC80()
{
  strcpy(v2, "DailyID(id: ");
  sub_22FE428C4();
  sub_22FDBE094(&qword_27DAE41D0, MEMORY[0x277CC95F0]);
  v0 = sub_22FE43C24();
  MEMORY[0x23190ACF0](v0);

  MEMORY[0x23190ACF0](41, 0xE100000000000000);
  return v2[0];
}

uint64_t DailyID.init(protobuf:version:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22FE428C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v10) = *a2;
  v12 = *a1;
  v13 = a1[1];
  v15[15] = v10;
  sub_22FDB4380(v12, v13);
  UUID.init(serialized:version:)(v12, v13);
  result = sub_22FDBDE5C(a1);
  if (!v3)
  {
    return (*(v8 + 32))(a3, v11, v7);
  }

  return result;
}

uint64_t sub_22FDBDE5C(uint64_t a1)
{
  v2 = type metadata accessor for DailyIDProto();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DailyID.protobuf(version:)(char *a1)
{
  v1 = *a1;
  type metadata accessor for DailyIDProto();
  sub_22FDBE094(&qword_27DAE44D0, type metadata accessor for DailyIDProto);
  return sub_22FE42C14();
}

uint64_t type metadata accessor for DailyID()
{
  result = qword_28148AFA8;
  if (!qword_28148AFA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FDBE010(uint64_t a1)
{
  *(a1 + 16) = sub_22FDBE094(&qword_28148AFE0, type metadata accessor for DailyID);
  result = sub_22FDBE094(qword_28148AFF0, type metadata accessor for DailyID);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_22FDBE094(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FDBE124@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22FE428C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v10) = *a2;
  v12 = *a1;
  v13 = a1[1];
  v15[15] = v10;
  sub_22FDB4380(v12, v13);
  UUID.init(serialized:version:)(v12, v13);
  result = sub_22FDBDE5C(a1);
  if (!v3)
  {
    return (*(v8 + 32))(a3, v11, v7);
  }

  return result;
}

uint64_t sub_22FDBE248(char *a1)
{
  v1 = *a1;
  type metadata accessor for DailyIDProto();
  sub_22FDBE094(&qword_27DAE44D0, type metadata accessor for DailyIDProto);
  return sub_22FE42C14();
}

uint64_t sub_22FDBE328()
{
  result = sub_22FE428C4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FDBE394(uint64_t a1)
{
  v3 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = UUID.serialized(version:)();
  v6 = v5;
  result = sub_22FD917D4(*a1, *(a1 + 8));
  *a1 = v4;
  *(a1 + 8) = v6;
  return result;
}

uint64_t PhotosFaceType.description.getter(unsigned __int8 a1)
{
  v1 = 0x6D75626C61;
  v2 = 0x7972656C6C6167;
  if (a1 != 2)
  {
    v2 = 0x796C696164;
  }

  if (a1)
  {
    v1 = 0x656C6666756873;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22FDBE494(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6D75626C61;
  v3 = *a1;
  v4 = 0xE500000000000000;
  v5 = 0xE700000000000000;
  v6 = 0x7972656C6C6167;
  if (v3 != 2)
  {
    v6 = 0x796C696164;
    v5 = 0xE500000000000000;
  }

  v7 = 0x656C6666756873;
  if (*a1)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v7 = 0x6D75626C61;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE500000000000000;
  v11 = 0xE700000000000000;
  v12 = 0x7972656C6C6167;
  if (*a2 != 2)
  {
    v12 = 0x796C696164;
    v11 = 0xE500000000000000;
  }

  if (*a2)
  {
    v2 = 0x656C6666756873;
    v10 = 0xE700000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_22FE43CB4();
  }

  return v15 & 1;
}

uint64_t sub_22FDBE5CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s10PhotosFace0aB4TypeO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_22FDBE5FC(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6D75626C61;
  v4 = 0xE700000000000000;
  v5 = 0x7972656C6C6167;
  if (*v1 != 2)
  {
    v5 = 0x796C696164;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x656C6666756873;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_22FDBE674()
{
  v1 = *v0;
  sub_22FE43DB4();
  sub_22FE430D4();

  return sub_22FE43E04();
}

uint64_t sub_22FDBE730()
{
  *v0;
  *v0;
  *v0;
  sub_22FE430D4();
}

uint64_t sub_22FDBE7D8()
{
  v1 = *v0;
  sub_22FE43DB4();
  sub_22FE430D4();

  return sub_22FE43E04();
}

uint64_t sub_22FDBE890()
{
  v1 = 0x6D75626C61;
  v2 = 0x7972656C6C6167;
  if (*v0 != 2)
  {
    v2 = 0x796C696164;
  }

  if (*v0)
  {
    v1 = 0x656C6666756873;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t _s10PhotosFace0aB4TypeO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_22FE43B34();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_22FDBE964()
{
  result = qword_27DAE44D8;
  if (!qword_27DAE44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE44D8);
  }

  return result;
}

unint64_t sub_22FDBE9BC()
{
  result = qword_27DAE44E0;
  if (!qword_27DAE44E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE44E8, &qword_22FE4B4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE44E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotosFaceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PhotosFaceType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

int *ShuffleID.init(id:people:pets:nature:cityscape:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = sub_22FE428C4();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for ShuffleID();
  *(a6 + result[5]) = a2;
  *(a6 + result[6]) = a3;
  *(a6 + result[7]) = a4;
  *(a6 + result[8]) = a5;
  return result;
}

uint64_t type metadata accessor for ShuffleID()
{
  result = qword_28148AF28;
  if (!qword_28148AF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShuffleID.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22FE428C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ShuffleID.people.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShuffleID() + 20));
}

int *ShuffleID.init(people:pets:nature:cityscape:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v49 = a4;
  v50 = a2;
  v51 = a3;
  v57[5] = *MEMORY[0x277D85DE8];
  v7 = sub_22FE42EF4();
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22FE430A4();
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_22FE42F24();
  v45 = *(v56 - 8);
  v14 = *(v45 + 64);
  MEMORY[0x28223BE20](v56);
  v55 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FE42F14();
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = sub_22FDC04C4(*(a1 + 16), 0);
    v52 = sub_22FDC1C54(v57, v17 + 4, v16, a1);

    sub_22FDAF1A8();
    if (v52 == v16)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v17 = MEMORY[0x277D84F90];
LABEL_5:
  v43 = a1;
  v44 = a5;
  v57[0] = v17;
  sub_22FDC117C(v57);
  v42 = 0;
  v18 = v57[0];
  v19 = *(v57[0] + 2);
  if (v19)
  {
    v20 = 0;
    v21 = (v53 + 8);
    v22 = v57[0] + 40;
    v52 = *(v57[0] + 2);
    v53 = v57[0];
    do
    {
      if (v20 >= *(v18 + 2))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
      }

      v24 = *(v22 - 1);
      v23 = *v22;

      sub_22FE43094();
      v25 = sub_22FE43074();
      v27 = v26;
      (*v21)(v13, v54);
      if (v27 >> 60 == 15)
      {
        goto LABEL_39;
      }

      v28 = v27 >> 62;
      if ((v27 >> 62) > 1)
      {
        if (v28 == 2)
        {
          v30 = *(v25 + 16);
          v29 = *(v25 + 24);

          if (sub_22FE42654() && __OFSUB__(v30, sub_22FE42684()))
          {
            goto LABEL_37;
          }

          if (__OFSUB__(v29, v30))
          {
            goto LABEL_36;
          }

LABEL_23:
          sub_22FE42674();
          sub_22FDC24A0(&qword_27DAE44F0, MEMORY[0x277CC5540]);
          sub_22FE42ED4();
          sub_22FD6F3DC(v25, v27);
          sub_22FD6F3DC(v25, v27);
          v19 = v52;
          v18 = v53;
          goto LABEL_9;
        }

        sub_22FDC24A0(&qword_27DAE44F0, MEMORY[0x277CC5540]);
        memset(v57, 0, 14);
      }

      else
      {
        if (v28)
        {
          if (v25 >> 32 < v25)
          {
            goto LABEL_35;
          }

          if (sub_22FE42654() && __OFSUB__(v25, sub_22FE42684()))
          {
            goto LABEL_38;
          }

          goto LABEL_23;
        }

        v57[0] = v25;
        LOWORD(v57[1]) = v27;
        BYTE2(v57[1]) = BYTE2(v27);
        BYTE3(v57[1]) = BYTE3(v27);
        BYTE4(v57[1]) = BYTE4(v27);
        BYTE5(v57[1]) = BYTE5(v27);
        sub_22FDC24A0(&qword_27DAE44F0, MEMORY[0x277CC5540]);
      }

      sub_22FE42ED4();
      sub_22FD6F3DC(v25, v27);
      sub_22FD6F3DC(v25, v27);
LABEL_9:
      v20 = (v20 + 1);
      v22 += 16;
    }

    while (v19 != v20);
  }

  if (v50)
  {
    v31 = v49;
    if (v49)
    {
      v32 = 3;
    }

    else
    {
      v32 = 1;
    }
  }

  else
  {
    v31 = v49;
    if (v49)
    {
      v32 = 2;
    }

    else
    {
      v32 = 0;
    }
  }

  if (v51)
  {
    v32 |= 4u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41E8, &qword_22FE4A2D8);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_22FE49F60;
  *(v33 + 32) = v32;
  v34 = sub_22FDC22A8(v33);
  v36 = v35;

  v37 = v55;
  sub_22FDC089C(v34, v36);
  sub_22FD917D4(v34, v36);
  v38 = v46;
  sub_22FE42F04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE44F8, &qword_22FE4B960);
  sub_22FE42EE4();
  v39 = v44;
  sub_22FE42894();
  (*(v47 + 8))(v38, v48);
  (*(v45 + 8))(v37, v56);
  result = type metadata accessor for ShuffleID();
  *(v39 + result[5]) = v43;
  *(v39 + result[6]) = v50 & 1;
  *(v39 + result[7]) = v51 & 1;
  *(v39 + result[8]) = v31 & 1;
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FDBF4C0(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4508, &qword_22FE4B638);
  if (swift_dynamicCast())
  {
    sub_22FD72C14(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_22FE426A4();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_0(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_22FDC2640(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_22FE43994();
  }

  sub_22FDC0B5C(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_22FDC2108(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_22FDC0C24(sub_22FDC26A8);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_22FE427B4();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_22FDC1F08(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_22FE43124();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_22FE43154();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_22FE43994();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_22FDC1F08(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_22FE43134();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_22FE427C4();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_22FE427C4();
    sub_22FD6F3DC(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_22FD6F3DC(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_22FDB4380(*&__src[0], *(&__src[0] + 1));

  sub_22FD917D4(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t sub_22FDBF9D4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_22FE43DB4();

    sub_22FE430D4();
    v17 = sub_22FE43E04();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_22FE43CB4() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t ShuffleID.hash(into:)(__int128 *a1)
{
  sub_22FE428C4();
  sub_22FDC24A0(&qword_27DAE2CB8, MEMORY[0x277CC95F0]);
  sub_22FE42FE4();
  v3 = type metadata accessor for ShuffleID();
  sub_22FDC1DAC(a1, *(v1 + v3[5]));
  v4 = *(v1 + v3[6]);
  sub_22FE43DD4();
  v5 = *(v1 + v3[7]);
  sub_22FE43DD4();
  v6 = *(v1 + v3[8]);
  return sub_22FE43DD4();
}

uint64_t ShuffleID.hashValue.getter()
{
  sub_22FE43DB4();
  sub_22FE428C4();
  sub_22FDC24A0(&qword_27DAE2CB8, MEMORY[0x277CC95F0]);
  sub_22FE42FE4();
  v1 = type metadata accessor for ShuffleID();
  sub_22FDC1DAC(v6, *(v0 + v1[5]));
  v2 = *(v0 + v1[6]);
  sub_22FE43DD4();
  v3 = *(v0 + v1[7]);
  sub_22FE43DD4();
  v4 = *(v0 + v1[8]);
  sub_22FE43DD4();
  return sub_22FE43E04();
}

uint64_t sub_22FDBFD34(uint64_t a1, int *a2)
{
  sub_22FE43DB4();
  sub_22FE428C4();
  sub_22FDC24A0(&qword_27DAE2CB8, MEMORY[0x277CC95F0]);
  sub_22FE42FE4();
  sub_22FDC1DAC(v8, *(v2 + a2[5]));
  v4 = *(v2 + a2[6]);
  sub_22FE43DD4();
  v5 = *(v2 + a2[7]);
  sub_22FE43DD4();
  v6 = *(v2 + a2[8]);
  sub_22FE43DD4();
  return sub_22FE43E04();
}

uint64_t ShuffleID.description.getter()
{
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0x49656C6666756853, 0xEE00203A64692844);
  sub_22FE428C4();
  sub_22FDC24A0(&qword_27DAE41D0, MEMORY[0x277CC95F0]);
  v1 = sub_22FE43C24();
  MEMORY[0x23190ACF0](v1);

  MEMORY[0x23190ACF0](0x3A656C706F657020, 0xE900000000000020);
  v2 = type metadata accessor for ShuffleID();
  v11 = *(*(v0 + v2[5]) + 16);
  v3 = sub_22FE43C24();
  MEMORY[0x23190ACF0](v3);

  MEMORY[0x23190ACF0](0x203A73746570202CLL, 0xE800000000000000);
  if (*(v0 + v2[6]))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + v2[6]))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x23190ACF0](v4, v5);

  MEMORY[0x23190ACF0](0x65727574616E202CLL, 0xEA0000000000203ALL);
  if (*(v0 + v2[7]))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + v2[7]))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x23190ACF0](v6, v7);

  MEMORY[0x23190ACF0](0x203A79746963202CLL, 0xE800000000000000);
  if (*(v0 + v2[8]))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v0 + v2[8]))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x23190ACF0](v8, v9);

  MEMORY[0x23190ACF0](41, 0xE100000000000000);
  return 0;
}

int *ShuffleID.init(protobuf:version:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22FE428C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v10) = *a2;
  v12 = *a1;
  v13 = *(a1 + 8);
  v21 = v10;
  sub_22FDB4380(v12, v13);
  UUID.init(serialized:version:)(v12, v13);
  if (v3)
  {
    return sub_22FDC2358(a1);
  }

  v15 = *(a1 + 16);

  v20 = sub_22FDC2070(v16);

  LOBYTE(v15) = *(a1 + 24);
  v17 = *(a1 + 25);
  v18 = *(a1 + 26);
  sub_22FDC2358(a1);
  (*(v8 + 32))(a3, v11, v7);
  result = type metadata accessor for ShuffleID();
  *(a3 + result[5]) = v20;
  *(a3 + result[6]) = v15;
  *(a3 + result[7]) = v17;
  *(a3 + result[8]) = v18;
  return result;
}

uint64_t ShuffleID.protobuf(version:)(char *a1)
{
  v1 = *a1;
  type metadata accessor for ShuffleIDProto();
  sub_22FDC24A0(&qword_27DAE4500, type metadata accessor for ShuffleIDProto);
  return sub_22FE42C14();
}

uint64_t sub_22FDC02A4(uint64_t a1, uint64_t a2, char a3)
{
  LOBYTE(v14) = a3;
  v5 = UUID.serialized(version:)();
  v7 = v6;
  sub_22FD917D4(*a1, *(a1 + 8));
  *a1 = v5;
  *(a1 + 8) = v7;
  v8 = type metadata accessor for ShuffleID();
  v9 = *(a2 + v8[5]);
  v10 = *(v9 + 16);
  if (!v10)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_5:
    v13 = *(a1 + 16);

    *(a1 + 16) = v11;
    *(a1 + 26) = *(a2 + v8[8]);
    *(a1 + 25) = *(a2 + v8[7]);
    *(a1 + 24) = *(a2 + v8[6]);
    return result;
  }

  v11 = sub_22FDC04C4(v10, 0);
  v15 = sub_22FDC1C54(&v14, v11 + 4, v10, v9);

  result = sub_22FDAF1A8();
  if (v15 == v10)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_22FDC040C(char *a1)
{
  v1 = *a1;
  type metadata accessor for ShuffleIDProto();
  sub_22FDC24A0(&qword_27DAE4500, type metadata accessor for ShuffleIDProto);
  return sub_22FE42C14();
}

void *sub_22FDC04C4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40E0, &qword_22FE4A100);
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

void *sub_22FDC0548(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4140, &qword_22FE4A150);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_22FDC05CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22FE43DB4();
  sub_22FE430D4();
  v9 = sub_22FE43E04();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_22FE43CB4() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_22FDC071C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22FDC071C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22FE3E344(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_22FE3D390();
      goto LABEL_16;
    }

    sub_22FE3D9BC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_22FE43DB4();
  sub_22FE430D4();
  result = sub_22FE43E04();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_22FE43CB4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_22FE43D04();
  __break(1u);
  return result;
}

uint64_t sub_22FDC089C(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_22FE42F24();
      sub_22FDC24A0(&qword_27DAE44F0, MEMORY[0x277CC5540]);
      result = sub_22FE42ED4();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_22FDC0A7C(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FDC0A7C(uint64_t a1, uint64_t a2)
{
  result = sub_22FE42654();
  if (!result || (result = sub_22FE42684(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22FE42674();
      sub_22FE42F24();
      sub_22FDC24A0(&qword_27DAE44F0, MEMORY[0x277CC5540]);
      return sub_22FE42ED4();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22FDC0B5C@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_22FE088C0(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_22FE42694();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_22FE42644();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_22FE427A4();
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

void *sub_22FDC0C24(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_22FD917D4(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_22FD917D4(v6, v5);
    *v3 = xmmword_22FE4B510;
    sub_22FD917D4(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_22FE42654() && __OFSUB__(v6, sub_22FE42684()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_22FE42694();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_22FE42634();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_22FDC10C8(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_22FD917D4(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_22FE4B510;
    sub_22FD917D4(0, 0xC000000000000000);
    sub_22FE42784();
    result = sub_22FDC10C8(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_22FDC0FC8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_22FE088C0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_22FDC21A8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_22FDC2224(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_22FDC105C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_22FDC10C8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_22FE42654();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_22FE42684();
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

  v12 = sub_22FE42674();
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

uint64_t sub_22FDC117C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22FE3CEC4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_22FDC11E8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22FDC11E8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22FE43C14();
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
        v5 = sub_22FE432E4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22FDC13B0(v7, v8, a1, v4);
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
    return sub_22FDC12E0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22FDC12E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_22FE43CB4(), (result & 1) == 0))
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

uint64_t sub_22FDC13B0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_22FDC1C40(v8);
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
        sub_22FDC198C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
        result = sub_22FE43CB4();
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
            result = sub_22FE43CB4();
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
      result = sub_22FD91DA4(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_22FD91DA4((v39 > 1), v40 + 1, 1, v8);
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
        sub_22FDC198C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22FDC1C40(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_22FDC1BB4(v44);
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
    if (v37 || (result = sub_22FE43CB4(), (result & 1) == 0))
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