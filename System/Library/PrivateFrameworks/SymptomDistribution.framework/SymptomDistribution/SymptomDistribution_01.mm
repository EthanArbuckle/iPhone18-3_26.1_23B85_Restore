uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_2329BCEDC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = sub_2329BFFD4();
  v5 = *v4;
  v6 = *(v4 + 1);
  v7 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v8 = sub_2329D3384();

  v37 = [v7 initWithEntityName_];

  [v37 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE68, &unk_2329D4920);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2329D46C0;
  v10 = sub_2329C01E0();
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = objc_allocWithZone(MEMORY[0x277CCAC98]);

  v14 = sub_2329D3384();

  v15 = [v13 initWithKey:v14 ascending:0];

  *(v9 + 32) = v15;
  sub_2329BFB44(0, &qword_2814D9E68, 0x277CCAC98);
  v16 = sub_2329D3474();

  [v37 setSortDescriptors_];

  sub_2329BFB44(0, &qword_2814D9E70, 0x277CBEAC0);
  v17 = sub_2329D36E4();

  v18 = sub_2329D2DF4();
  v19 = sub_2329D35F4();
  v20 = v17 >> 62;
  if (!os_log_type_enabled(v18, v19))
  {

    goto LABEL_6;
  }

  v16 = swift_slowAlloc();
  *v16 = 134217984;
  if (v20)
  {
    goto LABEL_26;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2329D3864())
  {
    *(v16 + 1) = i;

    _os_log_impl(&dword_2329A4000, v18, v19, "Fetched %ld results", v16, 0xCu);
    MEMORY[0x23838B4F0](v16, -1, -1);
LABEL_6:

    if (v20)
    {
      v19 = sub_2329D3864();
      if (!v19)
      {
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
        goto LABEL_21;
      }
    }

    if (v19 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_26:
    ;
  }

  v35 = v3;
  v36 = v1;
  if ((v17 & 0xC000000000000001) != 0)
  {
    for (j = 0; j != v19; ++j)
    {
      v25 = MEMORY[0x23838AD30](j, v17);
      swift_unknownObjectRetain();
      v26 = sub_2329D2DF4();
      v27 = sub_2329D3634();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v26, v27))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        *(v23 + 4) = v25;
        *v24 = v25;
        swift_unknownObjectRetain();
        _os_log_impl(&dword_2329A4000, v26, v27, "  %@", v23, 0xCu);
        sub_2329BFB8C(v24, &qword_27DDBE070, &unk_2329D4750);
        MEMORY[0x23838B4F0](v24, -1, -1);
        MEMORY[0x23838B4F0](v23, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v28 = 32;
    do
    {
      v29 = *(v17 + v28);
      v30 = sub_2329D2DF4();
      v31 = sub_2329D3634();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        *(v32 + 4) = v29;
        *v33 = v29;
        v34 = v29;
        _os_log_impl(&dword_2329A4000, v30, v31, "  %@", v32, 0xCu);
        sub_2329BFB8C(v33, &qword_27DDBE070, &unk_2329D4750);
        MEMORY[0x23838B4F0](v33, -1, -1);
        MEMORY[0x23838B4F0](v32, -1, -1);
        v29 = v30;
        v30 = v34;
      }

      v28 += 8;
      --v19;
    }

    while (v19);
  }

  v3 = v35;
  v1 = v36;
LABEL_22:
  *v3 = 1;
  [v1 reset];
}

void sub_2329BD500()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = sub_2329BFFD4();
  v5 = *v4;
  v6 = *(v4 + 1);
  v7 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v8 = sub_2329D3384();

  v9 = [v7 initWithEntityName_];

  [v9 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE68, &unk_2329D4920);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2329D46C0;
  v11 = sub_2329C01E0();
  v12 = *v11;
  v13 = *(v11 + 1);
  v14 = objc_allocWithZone(MEMORY[0x277CCAC98]);

  v15 = sub_2329D3384();

  v16 = [v14 initWithKey:v15 ascending:0];

  *(v10 + 32) = v16;
  sub_2329BFB44(0, &qword_2814D9E68, 0x277CCAC98);
  v17 = sub_2329D3474();

  [v9 setSortDescriptors_];

  v31 = 0;
  v18 = [v1 countForFetchRequest:v9 error:&v31];
  v19 = v31;
  if (v31)
  {
    swift_willThrow();
    v20 = v19;
    v21 = sub_2329D2DF4();
    v22 = sub_2329D3614();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v20;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_2329A4000, v21, v22, "Failed to fetch %@", v23, 0xCu);
      sub_2329BFB8C(v24, &qword_27DDBE070, &unk_2329D4750);
      MEMORY[0x23838B4F0](v24, -1, -1);
      MEMORY[0x23838B4F0](v23, -1, -1);
    }

    else
    {
      v25 = v21;
      v21 = v20;
    }

    swift_beginAccess();
    *(v2 + 16) = 0;
  }

  else
  {
    v27 = v18;
    swift_beginAccess();
    *(v2 + 16) = v27;

    v28 = sub_2329D2DF4();
    v29 = sub_2329D3634();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      swift_beginAccess();
      *(v30 + 4) = *(v2 + 16);

      _os_log_impl(&dword_2329A4000, v28, v29, "The count is %ld", v30, 0xCu);
      MEMORY[0x23838B4F0](v30, -1, -1);
    }

    else
    {
    }
  }

  [v1 reset];
}

void sub_2329BD8A4()
{
  v39 = v0[3];
  v37 = v0[2];
  v38 = v0[4];
  v1 = sub_2329BFFD4();
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v5 = sub_2329D3384();

  v6 = [v4 initWithEntityName_];

  [v6 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDBE100, &qword_2329D48D8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2329D4530;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2329D4530;
  v9 = sub_2329C002C();
  v10 = *v9;
  v11 = v9[1];

  v12 = sub_2329D3384();

  v13 = objc_opt_self();
  v14 = [v13 expressionForKeyPath_];

  v15 = sub_2329BFB44(0, &qword_27DDBDE08, 0x277CCA9C0);
  *(v8 + 56) = v15;
  *(v8 + 32) = v14;
  v16 = sub_2329D3384();
  v17 = sub_2329D3474();

  v18 = [v13 expressionForFunction:v16 arguments:v17];

  *(v7 + 56) = v15;
  *(v7 + 32) = v18;
  v19 = sub_2329D3384();
  v20 = sub_2329D3474();

  v21 = [v13 expressionForFunction:v19 arguments:v20];

  v22 = [objc_allocWithZone(MEMORY[0x277CBE410]) init];
  v23 = sub_2329D3384();
  [v22 setName_];

  [v22 setExpression_];
  [v22 setExpressionResultType_];
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2329D4530;
  *(v24 + 56) = sub_2329BFB44(0, &qword_27DDBDE10, 0x277CBE410);
  *(v24 + 32) = v22;
  v25 = v22;
  v26 = sub_2329D3474();

  [v6 setPropertiesToFetch_];

  sub_2329BFB44(0, &qword_2814D9E70, 0x277CBEAC0);
  v27 = sub_2329D36E4();
  if (v27 >> 62)
  {
    v36 = v27;
    v28 = sub_2329D3864();
    v27 = v36;
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v28)
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x23838AD30](0);
    }

    else
    {
      if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v29 = *(v27 + 32);
    }

    v30 = v29;

    *&v41 = 0xD000000000000011;
    *(&v41 + 1) = 0x80000002329D8580;
    v31 = [v30 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v31)
    {
      sub_2329D3734();
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
    }

    v43[0] = v41;
    v43[1] = v42;
    if (*(&v42 + 1))
    {
      sub_2329BFB44(0, &qword_2814DA820, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v32 = [v40 integerValue];

        swift_beginAccess();
        *(v39 + 16) = v32;
      }

      else
      {
      }
    }

    else
    {

      sub_2329BFB8C(v43, &unk_27DDBE0F0, &qword_2329D4890);
    }
  }

  else
  {
  }

  v33 = sub_2329D2DF4();
  v34 = sub_2329D3604();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    swift_beginAccess();
    *(v35 + 4) = *(v39 + 16);

    _os_log_impl(&dword_2329A4000, v33, v34, "The unique count of devices is %ld", v35, 0xCu);
    MEMORY[0x23838B4F0](v35, -1, -1);
  }

  else
  {
  }

  [v37 reset];
}

xpc_object_t sub_2329BDFCC(_xpc_activity_s *a1)
{
  v2 = sub_2329A65F4();
  v3 = *(**v2 + 232);

  v5 = v3(v4);

  if (v5 < 1)
  {
    v8 = 0;
  }

  else
  {
    v6 = *(**v2 + 232);

    v8 = v6(v7);
  }

  v9 = *(**v2 + 256);

  v11 = v9(v10);

  if (v11 > 0)
  {
    v12 = *(**v2 + 256);

    v14 = v12(v13);

    result = xpc_activity_copy_criteria(a1);
    if (!result)
    {
      return result;
    }

    v16 = result;
    if (v5 <= 0)
    {
      swift_unknownObjectRetain();
      goto LABEL_12;
    }

LABEL_11:
    v17 = swift_unknownObjectRetain();
    xpc_dictionary_set_int64(v17, "com.apple.activity.interval", v8);
    if (v11 < 1)
    {
LABEL_13:
      swift_unknownObjectRelease();
      return v16;
    }

LABEL_12:
    xpc_dictionary_set_int64(v16, "com.apple.activity.delay", v14);
    goto LABEL_13;
  }

  if (v5 > 0)
  {
    v16 = xpc_activity_copy_criteria(a1);
    result = 0;
    if (!v16)
    {
      return result;
    }

    v14 = 0;
    goto LABEL_11;
  }

  return 0;
}

unint64_t sub_2329BE1B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE00, &qword_2329D48D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDDE0, &qword_2329D48C0);
    v8 = sub_2329D3894();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2329BF474(v10, v6, &qword_27DDBDE00, &qword_2329D48D0);
      result = sub_2329BB528(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2329D2DD4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2329BE39C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDDF0, &qword_2329D48C8);
    v3 = sub_2329D3894();
    v4 = a1 + 32;

    while (1)
    {
      sub_2329BF474(v4, &v13, &qword_27DDBDD88, &qword_2329D4790);
      v5 = v13;
      v6 = v14;
      result = sub_2329BB4B0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2329BF464(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2329BE4CC(uint64_t a1, unint64_t a2)
{
  v4 = a1 == 0xD000000000000042 && 0x80000002329D84B0 == a2;
  if (v4 || (sub_2329D38D4() & 1) != 0)
  {

    sub_2329B5C10();
  }

  else if (a1 == 0xD000000000000031 && 0x80000002329D8500 == a2 || (sub_2329D38D4() & 1) != 0)
  {

    sub_2329B5E9C();
  }

  else
  {

    oslog = sub_2329D2DF4();
    v5 = sub_2329D3614();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_2329A8630(a1, a2, &v9);
      _os_log_impl(&dword_2329A4000, oslog, v5, "Cannot perform work for unknown XPC activity identifier: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x23838B4F0](v7, -1, -1);
      MEMORY[0x23838B4F0](v6, -1, -1);
    }
  }
}

uint64_t type metadata accessor for NDFDaemonPersistenceController()
{
  result = qword_2814DA8E0;
  if (!qword_2814DA8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2329BE718()
{
  result = sub_2329D2E14();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_2329D2DD4();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_2329BE814(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2329BE828(a1, a2);
  }

  return a1;
}

uint64_t sub_2329BE828(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t objectdestroy_65Tm(uint64_t a1)
{
  v3 = *(v1 + 16);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

void sub_2329BE8C8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = [objc_opt_self() fetchHistoryAfterToken_];
    *&v61[0] = 0;
    v6 = [v2 executeRequest:v5 error:v61];
    v7 = *&v61[0];
    if (v6)
    {
      v8 = v6;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        v11 = v7;
        if ([v10 result])
        {
          sub_2329D3734();
          swift_unknownObjectRelease();
        }

        else
        {
          v59 = 0u;
          v60 = 0u;
        }

        v61[0] = v59;
        v61[1] = v60;
        if (!*(&v60 + 1))
        {

          sub_2329BFB8C(v61, &unk_27DDBE0F0, &qword_2329D4890);
          goto LABEL_17;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDDA8, &qword_2329D4898);
        if (swift_dynamicCast())
        {
          v56 = v5;
          v15 = v58;

          v16 = sub_2329D2DF4();
          v17 = sub_2329D35F4();
          v18 = v58 >> 62;
          if (os_log_type_enabled(v16, v17))
          {
            v19 = swift_slowAlloc();
            *v19 = 134217984;
            if (v18)
            {
              v20 = sub_2329D3864();
            }

            else
            {
              v20 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v19 + 4) = v20;

            _os_log_impl(&dword_2329A4000, v16, v17, "Transaction history: %ld transactions", v19, 0xCu);
            MEMORY[0x23838B4F0](v19, -1, -1);
          }

          else
          {
          }

          v24 = v56;
          if (v18)
          {
            goto LABEL_75;
          }

          v25 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v25)
          {
            goto LABEL_25;
          }

LABEL_31:
          if (v18)
          {
            if (sub_2329D3864())
            {
LABEL_33:

              v30 = sub_2329D2DF4();
              v31 = sub_2329D3634();
              if (os_log_type_enabled(v30, v31))
              {
                v32 = swift_slowAlloc();
                *v32 = 134217984;
                if (v18)
                {
                  v33 = sub_2329D3864();
                }

                else
                {
                  v33 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                *(v32 + 4) = v33;

                _os_log_impl(&dword_2329A4000, v30, v31, "Ready to process %ld transactions", v32, 0xCu);
                MEMORY[0x23838B4F0](v32, -1, -1);
              }

              else
              {
              }

              v39 = MEMORY[0x277D84F90];
              *&v61[0] = MEMORY[0x277D84F90];
              if (v25)
              {
                v55 = v8;
                v57 = v25;
                v40 = v15 & 0xC000000000000001;
                v24 = (v15 & 0xFFFFFFFFFFFFFF8);
                v41 = 4;
                while (1)
                {
                  v42 = v41 - 4;
                  if (v40)
                  {
                    v8 = v15;
                    v43 = MEMORY[0x23838AD30](v41 - 4, v15);
                  }

                  else
                  {
                    if (v42 >= v24[2])
                    {
                      goto LABEL_74;
                    }

                    v8 = v15;
                    v43 = *(v15 + 8 * v41);
                  }

                  v44 = v43;
                  v15 = v41 - 3;
                  if (__OFADD__(v42, 1))
                  {
                    __break(1u);
LABEL_74:
                    __break(1u);
LABEL_75:
                    v25 = sub_2329D3864();
                    if (!v25)
                    {
                      goto LABEL_31;
                    }

LABEL_25:
                    v26 = v25 - 1;
                    if (__OFSUB__(v25, 1))
                    {
                      __break(1u);
                    }

                    else if ((v15 & 0xC000000000000001) == 0)
                    {
                      if ((v26 & 0x8000000000000000) != 0)
                      {
                        __break(1u);
                      }

                      else if (v26 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        v27 = *(v15 + 8 * v26 + 32);
LABEL_30:
                        v28 = v27;
                        v29 = [v27 token];
                        sub_2329AFBF0(v29);

                        goto LABEL_31;
                      }

                      __break(1u);
LABEL_81:
                      v53 = sub_2329D3864();
                      goto LABEL_67;
                    }

                    v27 = MEMORY[0x23838AD30](v26, v15);
                    goto LABEL_30;
                  }

                  v45 = [v43 author];
                  if (!v45)
                  {
                    break;
                  }

                  v46 = v45;
                  v18 = sub_2329D33B4();
                  v48 = v47;

                  v49 = sub_2329D2D94();
                  if (!v48)
                  {
                    goto LABEL_60;
                  }

                  v51 = v18 == v49 && v48 == v50;
                  if (v51)
                  {
                  }

                  else
                  {
                    v18 = sub_2329D38D4();

                    if ((v18 & 1) == 0)
                    {
                      goto LABEL_61;
                    }
                  }

LABEL_46:
                  ++v41;
                  v51 = v15 == v57;
                  v15 = v8;
                  if (v51)
                  {
                    v39 = *&v61[0];
                    v8 = v55;
                    v24 = v56;
                    goto LABEL_64;
                  }
                }

                sub_2329D2D94();
LABEL_60:

LABEL_61:
                sub_2329D3814();
                v52 = *(*&v61[0] + 16);
                sub_2329D3844();
                sub_2329D3854();
                sub_2329D3824();
                goto LABEL_46;
              }

LABEL_64:

              if (v39 < 0 || (v39 & 0x4000000000000000) != 0)
              {
                goto LABEL_81;
              }

              v53 = *(v39 + 16);
LABEL_67:

              if (v53)
              {
                v54 = sub_2329B104C();
                sub_2329B080C(v54);

LABEL_20:

                return;
              }

              v34 = v8;
              v35 = sub_2329D2DF4();
              v36 = sub_2329D3634();
              if (os_log_type_enabled(v35, v36))
              {
                v37 = swift_slowAlloc();
                *v37 = 0;
                v38 = "No remote transactions, skipping";
                goto LABEL_71;
              }

              goto LABEL_72;
            }
          }

          else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v34 = v8;

          v35 = sub_2329D2DF4();
          v36 = sub_2329D35F4();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            *v37 = 0;
            v38 = "Skipping since there are no transactions to process";
LABEL_71:
            _os_log_impl(&dword_2329A4000, v35, v36, v38, v37, 2u);
            MEMORY[0x23838B4F0](v37, -1, -1);
          }

LABEL_72:

          return;
        }
      }

      else
      {
        v14 = v7;
      }
    }

    else
    {
      v12 = *&v61[0];
      v13 = sub_2329D2C84();

      swift_willThrow();
    }

LABEL_17:
    v21 = sub_2329D2DF4();
    v22 = sub_2329D3614();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2329A4000, v21, v22, "Failed to fetch history from persistent store", v23, 2u);
      MEMORY[0x23838B4F0](v23, -1, -1);
    }

    sub_2329AFFCC();
    goto LABEL_20;
  }
}

uint64_t sub_2329BF014()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2329BF0BC;

  return sub_2329B0924(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_2329BF0BC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2329BF1B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2329BF1F8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2329BFCFC;

  return sub_2329BAD1C(a1, v5);
}

uint64_t sub_2329BF2B0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2329BF0BC;

  return sub_2329BAD1C(a1, v5);
}

unint64_t sub_2329BF368()
{
  result = qword_27DDBDDB8;
  if (!qword_27DDBDDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDBDDB0, &qword_2329D48A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDBDDB8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void type metadata accessor for URLResourceKey()
{
  if (!qword_2814D9E60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2814D9E60);
    }
  }
}

_OWORD *sub_2329BF464(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2329BF474(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_2329BF4DC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE30, &qword_2329D48F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2329D46D0;
  strcpy((inited + 32), "totalRecords");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0xD000000000000015;
  *(inited + 64) = 0x80000002329D8450;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v4 = sub_2329BF5F8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE38, &qword_2329D48F8);
  swift_arrayDestroy();
  return v4;
}

unint64_t sub_2329BF5F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE40, &unk_2329D4900);
    v3 = sub_2329D3894();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2329BB4B0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2329BF6FC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE30, &qword_2329D48F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2329D46B0;
  strcpy((inited + 32), "totalRecords");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0xD000000000000015;
  *(inited + 64) = 0x80000002329D8450;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 80) = 0x6D6F486C61746F74;
  *(inited + 88) = 0xEA00000000007365;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v5 = sub_2329BF5F8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE38, &qword_2329D48F8);
  swift_arrayDestroy();
  return v5;
}

uint64_t sub_2329BF858(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2329BFB44(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2329BF8B4()
{
  result = qword_2814D9EB8;
  if (!qword_2814D9EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814D9EB8);
  }

  return result;
}

uint64_t sub_2329BF908(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_2329BF95C()
{
  v1 = *(v0 + 16);
  sub_2329D37B4();

  sub_2329D2C34();
  sub_2329BF1B0(&qword_27DDBDDA0, MEMORY[0x277CC8900]);
  v2 = sub_2329D38B4();
  MEMORY[0x23838A970](v2);

  return 0xD000000000000022;
}

uint64_t sub_2329BFA80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2329BFB44(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2329BFB8C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_2329BFD3C(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id sub_2329BFD94(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for NDFNetworkDevice();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id sub_2329BFE74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDFNetworkDevice();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2329BFEA8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_2329D3384();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_2329BFF28@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for NDFNetworkDevice();
  result = sub_2329D37C4();
  *a1 = result;
  return result;
}

uint64_t sub_2329C0210()
{
  sub_2329D3934();
  sub_2329D3944();
  return sub_2329D3954();
}

uint64_t sub_2329C0254()
{
  sub_2329D3934();
  sub_2329D3944();
  return sub_2329D3954();
}

SymptomDistribution::NDFNetworkLQM_optional __swiftcall NDFNetworkLQM.init(rawValue:)(Swift::Int16 rawValue)
{
  if (rawValue > 0x63u)
  {
    if (rawValue == 100)
    {
      *v1 = 5;
      return rawValue;
    }

    if (rawValue == 65534)
    {
      *v1 = 0;
      return rawValue;
    }

    if (rawValue == 0xFFFF)
    {
      *v1 = 1;
      return rawValue;
    }

LABEL_12:
    *v1 = 6;
    return rawValue;
  }

  if (rawValue == 10)
  {
    *v1 = 2;
    return rawValue;
  }

  if (rawValue == 20)
  {
    *v1 = 3;
    return rawValue;
  }

  if (rawValue != 50)
  {
    goto LABEL_12;
  }

  *v1 = 4;
  return rawValue;
}

unint64_t sub_2329C0340()
{
  result = qword_27DDBDE90;
  if (!qword_27DDBDE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDBDE90);
  }

  return result;
}

unint64_t sub_2329C0398()
{
  result = qword_27DDBDE98;
  if (!qword_27DDBDE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDBDE98);
  }

  return result;
}

unint64_t sub_2329C0414()
{
  result = qword_27DDBDEA0;
  if (!qword_27DDBDEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDBDEA0);
  }

  return result;
}

uint64_t sub_2329C0468()
{
  v1 = *v0;
  sub_2329D3934();
  v2 = word_2329D4E86[v1];
  sub_2329D3944();
  return sub_2329D3954();
}

uint64_t sub_2329C04F0()
{
  v1 = *v0;
  sub_2329D3934();
  v2 = word_2329D4E86[v1];
  sub_2329D3944();
  return sub_2329D3954();
}

uint64_t _s19SymptomDistribution22NDFDeviceRecordVersionOwet_0(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s19SymptomDistribution22NDFDeviceRecordVersionOwst_0(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NDFNetworkLQM(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NDFNetworkLQM(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_2329C07F4(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for NDFNetworkRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id sub_2329C08D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDFNetworkRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2329C0908()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_2329D3384();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_2329C097C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2329A8E14();
  v3 = sub_2329D2E14();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_2329C0A00()
{
  v0 = sub_2329D3654();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_2329D3674();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2329D32F4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_2329BFB44(0, &qword_2814D9E50, 0x277D85C78);
  sub_2329D32E4();
  (*(v3 + 104))(v6, *MEMORY[0x277D85268], v2);
  v10[1] = MEMORY[0x277D84F90];
  sub_2329C3144(&qword_2814D9E58, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDEB0, qword_2329D4EE0);
  sub_2329C318C(&qword_2814D9E98, &qword_27DDBDEB0, qword_2329D4EE0);
  sub_2329D3744();
  return sub_2329D3684();
}

id sub_2329C0C58()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___listener;
  v2 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___listener);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___listener);
  }

  else
  {
    sub_2329D3404();
    v4 = objc_allocWithZone(MEMORY[0x277CCAE98]);
    v5 = sub_2329D3384();

    v6 = [v4 initWithMachServiceName_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_2329C0D0C()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___symptomsRelay;
  if (*(v0 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___symptomsRelay))
  {
    v2 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___symptomsRelay);
  }

  else
  {
    v3 = v0;
    type metadata accessor for NDFSymptomsRelay();
    v2 = sub_2329CB560();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_2329C0D7C()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___persistenceController;
  if (*(v0 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___persistenceController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___persistenceController);
  }

  else
  {
    type metadata accessor for NDFDaemonPersistenceController();
    v3 = v0;
    v4 = sub_2329C0D0C();
    v2 = sub_2329ACFA0(v4);
    v5 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_2329C0DF4()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___serviceListenerDelegate;
  v2 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___serviceListenerDelegate);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___serviceListenerDelegate);
  }

  else
  {
    v4 = v0;
    type metadata accessor for NDFDaemonService();
    v5 = sub_2329C3BEC();
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_2329C0E64()
{
  v1 = v0;
  v2 = sub_2329D2E14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___xpcActivityManager;
  if (*(v1 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___xpcActivityManager))
  {
    v8 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___xpcActivityManager);
  }

  else
  {
    v9 = sub_2329A910C();
    (*(v3 + 16))(v6, v9, v2);
    v10 = sub_2329D2FE4();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v8 = sub_2329D2FC4();
    v13 = *(v1 + v7);
    *(v1 + v7) = v8;
  }

  return v8;
}

uint64_t NDFDaemon.__allocating_init(isAgent:)(int a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  NDFDaemon.init(isAgent:)(a1);
  return v5;
}

uint64_t NDFDaemon.init(isAgent:)(int a1)
{
  v2 = v1;
  v20 = a1;
  v3 = sub_2329D3654();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = sub_2329D3674();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2329D32F4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_logger;
  v13 = sub_2329A8E14();
  v14 = sub_2329D2E14();
  (*(*(v14 - 8) + 16))(v1 + v12, v13, v14);
  *(v1 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_firstUnlockNotifyToken) = -1;
  *(v1 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_lockStatusNotifyToken) = -1;
  v15 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_signalSources) = MEMORY[0x277D84F90];
  v19 = OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_utilitySerialQueue;
  v18 = sub_2329BFB44(0, &qword_2814D9E50, 0x277D85C78);
  sub_2329D32E4();
  (*(v6 + 104))(v9, *MEMORY[0x277D85268], v5);
  v21 = v15;
  sub_2329C3144(&qword_2814D9E58, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDEB0, qword_2329D4EE0);
  sub_2329C318C(&qword_2814D9E98, &qword_27DDBDEB0, qword_2329D4EE0);
  sub_2329D3744();
  v16 = sub_2329D3684();
  *(v2 + v19) = v16;
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___listener) = 0;
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___symptomsRelay) = 0;
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___persistenceController) = 0;
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___serviceListenerDelegate) = 0;
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___xpcActivityManager) = 0;
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_runningAsAgent) = v20;
  type metadata accessor for NDFDaemonTaskManager();
  *(v2 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_taskManager) = sub_2329C932C(v16);
  return v2;
}

uint64_t sub_2329C1330()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_runningAsAgent);
  v3 = sub_2329D2DF4();
  v4 = sub_2329D3634();
  v5 = os_log_type_enabled(v3, v4);
  if (v2)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2329A4000, v3, v4, "Begin LaunchAgent startup sequence", v6, 2u);
      MEMORY[0x23838B4F0](v6, -1, -1);
    }

    v7 = swift_allocObject();
    swift_weakInit();
    v23[4] = sub_2329C2E2C;
    v23[5] = v7;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 1107296256;
    v23[2] = sub_2329C1944;
    v23[3] = &block_descriptor_0;
    v8 = _Block_copy(v23);

    xpc_set_event_stream_handler("com.apple.notifyd.matching", 0, v8);
    _Block_release(v8);
    v9 = 0xE500000000000000;
    v10 = 0x746E656761;
  }

  else
  {
    if (v5)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2329A4000, v3, v4, "Begin daemon startup sequence", v11, 2u);
      MEMORY[0x23838B4F0](v11, -1, -1);
    }

    v12 = sub_2329C0C58();
    v13 = sub_2329C0DF4();
    [v12 setDelegate_];

    sub_2329C1E34();
    [*(v1 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___listener) activate];
    v14 = sub_2329D2DF4();
    v15 = sub_2329D3634();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2329A4000, v14, v15, "Finished activating XPC Listener", v16, 2u);
      MEMORY[0x23838B4F0](v16, -1, -1);
    }

    (*(**(v1 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_taskManager) + 176))();
    v9 = 0xE600000000000000;
    v10 = 0x6E6F6D656164;
  }

  v17 = sub_2329D2DF4();
  v18 = sub_2329D3634();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v23[0] = v20;
    *v19 = 136315394;
    v21 = sub_2329A8630(v10, v9, v23);

    *(v19 + 4) = v21;
    *(v19 + 12) = 1024;
    *(v19 + 14) = getuid();
    _os_log_impl(&dword_2329A4000, v17, v18, "symptomsd-distributed is up and running [mode: %s, uid: %u]", v19, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x23838B4F0](v20, -1, -1);
    MEMORY[0x23838B4F0](v19, -1, -1);
  }

  else
  {
  }

  return sub_2329C19A4();
}

const char *sub_2329C1704(void *a1)
{
  v2 = sub_2329D2E14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = xpc_dictionary_get_string(a1, *MEMORY[0x277D86430]);
  if (result)
  {
    v8 = sub_2329D3434();
    v10 = v9;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(v3 + 16))(v6, Strong + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_logger, v2);

      v12 = sub_2329D2DF4();
      v13 = sub_2329D3634();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v17 = v15;
        *v14 = 136315138;
        v16 = sub_2329A8630(v8, v10, &v17);

        *(v14 + 4) = v16;
        _os_log_impl(&dword_2329A4000, v12, v13, "Woken up by notifyd event [%s]", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x23838B4F0](v15, -1, -1);
        MEMORY[0x23838B4F0](v14, -1, -1);
      }

      else
      {
      }

      return (*(v3 + 8))(v6, v2);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2329C1944(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_2329C19A4()
{
  v1 = v0;
  v22 = sub_2329D32B4();
  v2 = *(v22 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2329D32F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2329D2DF4();
  v12 = sub_2329D3634();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2329A4000, v11, v12, "Installing SIGTERM handler", v13, 2u);
    MEMORY[0x23838B4F0](v13, -1, -1);
  }

  v14 = sub_2329D3054();
  signal(15, v14);
  sub_2329BFB44(0, &qword_2814D9E40, 0x277D85CA0);
  v15 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_utilitySerialQueue);
  sub_2329D36B4();

  swift_getObjectType();
  aBlock[4] = sub_2329C2FD8;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2329C1D18;
  aBlock[3] = &block_descriptor_27;
  v16 = _Block_copy(aBlock);

  sub_2329D32C4();
  sub_2329C1D5C();
  sub_2329D36C4();
  _Block_release(v16);
  (*(v2 + 8))(v5, v22);
  (*(v7 + 8))(v10, v6);

  sub_2329D36D4();
  v17 = OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_signalSources;
  swift_beginAccess();
  v18 = swift_unknownObjectRetain();
  MEMORY[0x23838A9B0](v18);
  if (*((*(v1 + v17) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v17) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v20 = *((*(v1 + v17) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2329D34A4();
  }

  sub_2329D34B4();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_2329C1D18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2329C1D5C()
{
  sub_2329D32B4();
  sub_2329C3144(&unk_2814D9EC0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE180, &unk_2329D4F60);
  sub_2329C318C(&unk_2814D9EA0, &qword_27DDBE180, &unk_2329D4F60);
  return sub_2329D3744();
}

void sub_2329C1E34()
{
  v1 = v0;
  if (MKBGetDeviceLockState() == 3)
  {
    v2 = sub_2329D2DF4();
    v3 = sub_2329D3634();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2329A4000, v2, v3, "Key bag disabled, proceeding as if the device was unlocked since boot", v4, 2u);
      MEMORY[0x23838B4F0](v4, -1, -1);
    }

    goto LABEL_6;
  }

  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
LABEL_6:
    v5 = sub_2329D2DF4();
    v6 = sub_2329D3634();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2329A4000, v5, v6, "Device was unlocked since boot, continuing initialization", v7, 2u);
      MEMORY[0x23838B4F0](v7, -1, -1);
    }

    sub_2329C2700();

    sub_2329C287C();
    return;
  }

  v8 = sub_2329D2DF4();
  v9 = sub_2329D3634();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2329A4000, v8, v9, "Device still locked since boot, waiting for first unlock", v10, 2u);
    MEMORY[0x23838B4F0](v10, -1, -1);
  }

  v11 = sub_2329D2DF4();
  v12 = sub_2329D35F4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2329A4000, v11, v12, "Registering for first unlock notification", v13, 2u);
    MEMORY[0x23838B4F0](v13, -1, -1);
  }

  v14 = OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_utilitySerialQueue;
  v15 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_utilitySerialQueue);
  v36 = sub_2329C31E0;
  v37 = v1;
  v32 = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_2329C23B8;
  v35 = &block_descriptor_30;
  v16 = _Block_copy(&v32);
  v17 = v15;

  v18 = OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_firstUnlockNotifyToken;
  swift_beginAccess();
  v19 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", (v1 + v18), v17, v16);
  swift_endAccess();
  _Block_release(v16);

  if (v19 || *(v1 + v18) == -1)
  {
    v20 = sub_2329D2DF4();
    v21 = sub_2329D3624();
    if (!os_log_type_enabled(v20, v21))
    {
LABEL_19:

      return;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Failed to register for first unlock notification! Bailing out...";
LABEL_18:
    _os_log_impl(&dword_2329A4000, v20, v21, v23, v22, 2u);
    MEMORY[0x23838B4F0](v22, -1, -1);
    goto LABEL_19;
  }

  v24 = sub_2329D2DF4();
  v25 = sub_2329D3634();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2329A4000, v24, v25, "Registering for lock status notification", v26, 2u);
    MEMORY[0x23838B4F0](v26, -1, -1);
  }

  v27 = *(v1 + v14);
  v36 = sub_2329C329C;
  v37 = v1;
  v32 = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_2329C23B8;
  v35 = &block_descriptor_33;
  v28 = _Block_copy(&v32);

  v29 = v27;

  v30 = OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_lockStatusNotifyToken;
  swift_beginAccess();
  v31 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", (v1 + v30), v29, v28);
  swift_endAccess();
  _Block_release(v28);

  if (v31 || *(v1 + v30) == -1)
  {
    v20 = sub_2329D2DF4();
    v21 = sub_2329D3624();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_19;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Failed to register for lock status notification! Bailing out...";
    goto LABEL_18;
  }

  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
    sub_2329C2700();
    sub_2329C287C();
    sub_2329C240C();
  }
}

uint64_t sub_2329C23B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_2329C240C()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_firstUnlockNotifyToken;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 != -1)
  {
    v3 = notify_cancel(v2);
    if (v3)
    {
      v4 = v3;
      v5 = sub_2329D2DF4();
      v6 = sub_2329D3614();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v23 = v8;
        *v7 = 136446466;
        v9 = 0xD000000000000025;
        v10 = 0x80000002329D8B70;
        v11 = &v23;
LABEL_12:
        *(v7 + 4) = sub_2329A8630(v9, v10, v11);
        *(v7 + 12) = 1024;
        *(v7 + 14) = v4;
        _os_log_impl(&dword_2329A4000, v5, v6, "Failed to cancel %{public}s notification. Received error code %u from notify_cancel", v7, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x23838B4F0](v8, -1, -1);
        v19 = v7;
LABEL_13:
        MEMORY[0x23838B4F0](v19, -1, -1);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    *(v0 + v1) = -1;
    v12 = v0;
    v13 = sub_2329D2DF4();
    v14 = sub_2329D3634();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2329A4000, v13, v14, "No longer registered for first unlock notification", v15, 2u);
      MEMORY[0x23838B4F0](v15, -1, -1);
    }

    v0 = v12;
  }

  v16 = OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_lockStatusNotifyToken;
  swift_beginAccess();
  v17 = *(v0 + v16);
  if (v17 == -1)
  {
    return;
  }

  v18 = notify_cancel(v17);
  if (!v18)
  {
    *(v0 + v16) = -1;
    v5 = sub_2329D2DF4();
    v20 = sub_2329D3634();
    if (!os_log_type_enabled(v5, v20))
    {
      goto LABEL_14;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2329A4000, v5, v20, "No longer registered for lock status notification", v21, 2u);
    v19 = v21;
    goto LABEL_13;
  }

  v4 = v18;
  v5 = sub_2329D2DF4();
  v6 = sub_2329D3614();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136446466;
    v10 = 0x80000002329D8BA0;
    v11 = &v22;
    v9 = 0xD000000000000024;
    goto LABEL_12;
  }

LABEL_14:
}

void sub_2329C2700()
{
  v0 = sub_2329D2DF4();
  v1 = sub_2329D3634();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2329A4000, v0, v1, "Initializing persistent storage", v2, 2u);
    MEMORY[0x23838B4F0](v2, -1, -1);
  }

  v3 = sub_2329C0DF4();
  v4 = sub_2329C0D7C();
  (*((*MEMORY[0x277D85000] & *v3) + 0x78))(v4);

  oslog = sub_2329D2DF4();
  v5 = sub_2329D3604();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2329A4000, oslog, v5, "Finished configuring persistent storage onto XPC delegate", v6, 2u);
    MEMORY[0x23838B4F0](v6, -1, -1);
  }
}

void sub_2329C287C()
{
  v1 = v0;
  v2 = sub_2329D2DF4();
  v3 = sub_2329D3634();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2329A4000, v2, v3, "Initializing background task manager", v4, 2u);
    MEMORY[0x23838B4F0](v4, -1, -1);
  }

  v5 = sub_2329A65F4();
  v6 = *(**v5 + 160);

  v8 = v6(v7);

  v9 = sub_2329D2DF4();
  v10 = sub_2329D3634();
  v11 = os_log_type_enabled(v9, v10);
  if (v8)
  {
    if (v11)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2329A4000, v9, v10, "Registering delegate and network device records cleanup task", v12, 2u);
      MEMORY[0x23838B4F0](v12, -1, -1);
    }

    sub_2329C0E64();
    sub_2329C0D7C();
    sub_2329C3144(&qword_27DDBDF18, type metadata accessor for NDFDaemonPersistenceController);
    sub_2329D2FD4();

    v13 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___xpcActivityManager);

    sub_2329D2FB4();
  }

  else
  {
    if (v11)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2329A4000, v9, v10, "Background tasks to clean up records are not required on this platform", v14, 2u);
      MEMORY[0x23838B4F0](v14, -1, -1);
    }
  }

  v15 = *(**v5 + 184);

  v17 = v15(v16);

  v18 = sub_2329D2DF4();
  v19 = sub_2329D3634();
  v20 = os_log_type_enabled(v18, v19);
  if (v17)
  {
    if (v20)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2329A4000, v18, v19, "Registering delegate to submit NDF DB Telemetry Stats", v21, 2u);
      MEMORY[0x23838B4F0](v21, -1, -1);
    }

    sub_2329C0E64();
    sub_2329C0D7C();
    sub_2329C3144(&qword_27DDBDF18, type metadata accessor for NDFDaemonPersistenceController);
    sub_2329D2FD4();

    v22 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___xpcActivityManager);

    sub_2329D2FB4();
  }

  else
  {
    if (v20)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2329A4000, v18, v19, "Background tasks to submit NDF DB stats are not required on this platform", v23, 2u);
      MEMORY[0x23838B4F0](v23, -1, -1);
    }
  }

  oslog = sub_2329D2DF4();
  v24 = sub_2329D3604();
  if (os_log_type_enabled(oslog, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2329A4000, oslog, v24, "Finished configuring background task manager with persistence controller", v25, 2u);
    MEMORY[0x23838B4F0](v25, -1, -1);
  }
}

uint64_t NDFDaemon.deinit()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_logger;
  v2 = sub_2329D2E14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_signalSources);

  v4 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon_taskManager);

  v5 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___symptomsRelay);

  v6 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___persistenceController);

  v7 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution9NDFDaemon____lazy_storage___xpcActivityManager);

  return v0;
}

uint64_t NDFDaemon.__deallocating_deinit()
{
  NDFDaemon.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for NDFDaemon()
{
  result = qword_2814DA878;
  if (!qword_2814DA878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2329C2EA0()
{
  result = sub_2329D2E14();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_2329C2FD8()
{
  v0 = sub_2329D2DF4();
  v1 = sub_2329D3634();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2329A4000, v0, v1, "Received SIGTERM, preparing for shutdown; will invalidate XPC listener", v2, 2u);
    MEMORY[0x23838B4F0](v2, -1, -1);
  }

  v3 = sub_2329C0C58();
  [v3 invalidate];

  v4 = sub_2329C0DF4();
  (*((*MEMORY[0x277D85000] & *v4) + 0xA8))();

  v5 = sub_2329D2DF4();
  v6 = sub_2329D3634();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2329A4000, v5, v6, "Terminating process", v7, 2u);
    MEMORY[0x23838B4F0](v7, -1, -1);
  }

  exit(0);
}

uint64_t sub_2329C3144(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2329C318C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_2329C31E0()
{
  v0 = sub_2329D2DF4();
  v1 = sub_2329D3634();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2329A4000, v0, v1, "Received first unlock notification, continuing initialization", v2, 2u);
    MEMORY[0x23838B4F0](v2, -1, -1);
  }

  sub_2329C2700();
  sub_2329C287C();

  sub_2329C240C();
}

void sub_2329C329C()
{
  v0 = MKBDeviceUnlockedSinceBoot();
  oslog = sub_2329D2DF4();
  v1 = sub_2329D3634();
  v2 = os_log_type_enabled(oslog, v1);
  if (v0 == 1)
  {
    if (v2)
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_2329A4000, oslog, v1, "Received lock status notification: device was unlocked, continuing initialization", v3, 2u);
      MEMORY[0x23838B4F0](v3, -1, -1);
    }

    sub_2329C2700();
    sub_2329C287C();

    sub_2329C240C();
  }

  else
  {
    if (v2)
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2329A4000, oslog, v1, "Received lock status notification: device still remains locked since boot...", v4, 2u);
      MEMORY[0x23838B4F0](v4, -1, -1);
    }
  }
}

uint64_t sub_2329C342C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2329A8DAC();
  v3 = sub_2329D2E14();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

void sub_2329C349C()
{
  v0 = objc_opt_self();
  v1 = &unk_284804868;
  v2 = [v0 interfaceWithProtocol_];

  qword_2814DAA50 = v2;
}

uint64_t sub_2329C3504()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE68, &unk_2329D4920);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2329D4F70;
  *(v0 + 32) = sub_2329D2FA4();
  result = objc_opt_self();
  *(v0 + 40) = result;
  qword_2814DAA60 = v0;
  return result;
}

uint64_t sub_2329C3574()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_persistenceController;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2329C35BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_persistenceController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *sub_2329C3680(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2329D3864();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_2329C7E00(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x23838AD30](i, a1);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2329C7E00((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_2329BF464(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      do
      {
        v11 = *v8;
        swift_unknownObjectRetain();
        swift_dynamicCast();
        v13 = v3;
        v10 = *(v3 + 16);
        v9 = *(v3 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_2329C7E00((v9 > 1), v10 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v10 + 1;
        sub_2329BF464(v12, (v3 + 32 * v10 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2329C38A8()
{
  v1 = v0;
  v2 = sub_2329D2DF4();
  v3 = sub_2329D35F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2329A4000, v2, v3, "Cancelling device discovery operations", v4, 2u);
    MEMORY[0x23838B4F0](v4, -1, -1);
  }

  v5 = OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_discoveryTask;
  if (*(v1 + OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_discoveryTask))
  {
    v6 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_discoveryTask);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDBE050, &qword_2329D4F88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD48, &qword_2329D4F90);
    sub_2329D3524();

    v7 = *(v1 + v5);
  }

  *(v1 + v5) = 0;
}

uint64_t sub_2329C39CC(void *a1)
{
  v2 = [a1 processIdentifier];
  v3 = sub_2329D2DF4();
  v4 = sub_2329D3604();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_2329A4000, v3, v4, "Checking entitlement for %d", v5, 8u);
    MEMORY[0x23838B4F0](v5, -1, -1);
  }

  v6 = sub_2329A94A8();
  v7 = *v6;
  v8 = v6[1];

  v9 = sub_2329D3384();

  v10 = [a1 valueForEntitlement_];

  if (v10)
  {
    sub_2329D3734();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    if (swift_dynamicCast())
    {
      return v15;
    }
  }

  else
  {
    sub_2329BFB8C(v18, &unk_27DDBE0F0, &qword_2329D4890);
  }

  v12 = sub_2329D2DF4();
  v13 = sub_2329D3614();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = v2;
    _os_log_impl(&dword_2329A4000, v12, v13, "Error: pid %d not entitled", v14, 8u);
    MEMORY[0x23838B4F0](v14, -1, -1);
  }

  return 0;
}

id sub_2329C3BEC()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2329C3C20()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_endpointBrowser;
  type metadata accessor for NDFBrowser();
  *&v0[v2] = NDFBrowser.__allocating_init()();
  v3 = OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_logger;
  v4 = sub_2329A8DAC();
  v5 = sub_2329D2E14();
  (*(*(v5 - 8) + 16))(&v1[v3], v4, v5);
  *&v1[OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_persistenceController] = 0;
  *&v1[OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_discoveryTask] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for NDFDaemonService();
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_2329C3DB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDFDaemonService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2329C3E8C(uint64_t a1, uint64_t a2, char a3, double a4)
{
  *(v5 + 56) = v4;
  *(v5 + 136) = a3;
  *(v5 + 48) = a4;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  v6 = sub_2329D34E4();
  *(v5 + 64) = v6;
  v7 = *(v6 - 8);
  *(v5 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860) - 8) + 64) + 15;
  *(v5 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2329C3F90, 0, 0);
}

uint64_t sub_2329C3F90()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 136);
  v4 = *(v0 + 48);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  (*((*MEMORY[0x277D85000] & *v2) + 0xA8))();
  v7 = sub_2329D3504();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v8;
  *(v9 + 40) = v6;
  *(v9 + 48) = v5;
  *(v9 + 56) = v4;
  *(v9 + 64) = v3;

  v10 = sub_2329C4F88(0, 0, v1, &unk_2329D4FB0, v9);
  v11 = OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_discoveryTask;
  *(v0 + 96) = v10;
  *(v0 + 104) = v11;
  v12 = *(v2 + v11);
  *(v2 + v11) = v10;

  v13 = *(MEMORY[0x277D857C8] + 4);
  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDBE050, &qword_2329D4F88);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD48, &qword_2329D4F90);
  *(v0 + 120) = v16;
  *v14 = v0;
  v14[1] = sub_2329C41B0;
  v17 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 16, v10, v15, v16, v17);
}

uint64_t sub_2329C41B0()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_2329C4358;
  }

  else
  {
    v3 = sub_2329C42C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2329C42C4()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[7];

  v4 = v0[2];
  v5 = *(v3 + v2);
  *(v3 + v2) = 0;

  v7 = v0[10];
  v6 = v0[11];

  v8 = v0[1];

  return v8(v4);
}

uint64_t sub_2329C4358()
{
  v1 = *(v0 + 128);
  *(v0 + 24) = v1;
  v2 = *(v0 + 120);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = v1;
  v6 = swift_dynamicCast();
  v7 = *(v0 + 128);
  v8 = *(v0 + 56);
  if (v6)
  {

    v9 = sub_2329D2DF4();
    v10 = sub_2329D3634();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2329A4000, v9, v10, "Discovery operation was cancelled", v11, 2u);
      MEMORY[0x23838B4F0](v11, -1, -1);
    }

    v12 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = *(v0 + 72);
    v14 = *(v0 + 80);
    v17 = *(v0 + 56);
    v16 = *(v0 + 64);

    v18 = *(v17 + v13);
    *(v17 + v13) = 0;

    empty = xpc_array_create_empty();

    (*(v15 + 8))(v14, v16);

    v21 = *(v0 + 80);
    v20 = *(v0 + 88);

    v22 = *(v0 + 8);

    return v22(empty);
  }

  else
  {

    v24 = v7;
    v25 = sub_2329D2DF4();
    v26 = sub_2329D3614();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 128);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = v27;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_2329A4000, v25, v26, "Discovery operation failed with error: %@", v28, 0xCu);
      sub_2329BFB8C(v29, &qword_27DDBE070, &unk_2329D4750);
      MEMORY[0x23838B4F0](v29, -1, -1);
      MEMORY[0x23838B4F0](v28, -1, -1);
    }

    v32 = *(v0 + 128);
    v33 = *(v0 + 96);
    v34 = *(v0 + 104);
    v36 = *(v0 + 80);
    v35 = *(v0 + 88);
    v37 = *(v0 + 56);

    v38 = *(v37 + v34);
    *(v37 + v34) = 0;

    swift_willThrow();

    v39 = *(v0 + 8);
    v40 = *(v0 + 128);

    return v39();
  }
}

uint64_t sub_2329C464C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 144) = a8;
  *(v8 + 72) = a2;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 40) = a1;
  *(v8 + 48) = a5;
  v9 = sub_2329D3174();
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2329C4718, 0, 0);
}

uint64_t sub_2329C4718()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 96);
    v4 = OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_endpointBrowser;
    *(v0 + 112) = OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_endpointBrowser;
    v5 = *(Strong + v4);
    sub_2329C4D44(*(v0 + 144));
    v6 = *(*v5 + 200);
    v17 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 120) = v8;
    *v8 = v0;
    v8[1] = sub_2329C48C8;
    v9 = *(v0 + 96);
    v10.n128_u64[0] = *(v0 + 72);
    v12 = *(v0 + 56);
    v11 = *(v0 + 64);

    return v17(v12, v11, v9, v10);
  }

  else
  {
    empty = xpc_array_create_empty();
    v15 = *(v0 + 96);
    **(v0 + 40) = empty;

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_2329C48C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  v4[16] = a1;
  v4[17] = v1;

  (*(v3[11] + 8))(v3[12], v3[10]);
  if (v1)
  {
    v7 = sub_2329C4CD8;
  }

  else
  {
    v7 = sub_2329C4A38;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2329C4A38()
{
  v29 = v0;
  v1 = *(v0 + 104);
  if (*(*(v0 + 128) + 16))
  {
    v2 = *(v0 + 128);

    v3 = sub_2329D2DF4();
    v4 = sub_2329D3604();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 128);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v28 = v7;
      *v6 = 136315138;
      v8 = sub_2329D3084();
      v9 = MEMORY[0x23838A9E0](v5, v8);
      v11 = sub_2329A8630(v9, v10, &v28);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_2329A4000, v3, v4, "About to send %s to symptomsd", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x23838B4F0](v7, -1, -1);
      MEMORY[0x23838B4F0](v6, -1, -1);
    }

    v12 = *(v0 + 128);
    v13 = *(v0 + 136);
    v14 = *(**(*(v0 + 104) + *(v0 + 112)) + 208);

    v15 = v14(v12);
    v16 = *(v0 + 128);
    v17 = *(v0 + 104);
    if (v13)
    {

      v18 = *(v0 + 96);

      v19 = *(v0 + 8);
      goto LABEL_11;
    }

    empty = v15;
    v25 = *(v0 + 128);
  }

  else
  {
    v20 = *(v0 + 128);

    v21 = sub_2329D2DF4();
    v22 = sub_2329D3614();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2329A4000, v21, v22, "No endpoints were discovered", v23, 2u);
      MEMORY[0x23838B4F0](v23, -1, -1);
    }

    v17 = *(v0 + 104);

    empty = xpc_array_create_empty();
  }

  v26 = *(v0 + 96);
  **(v0 + 40) = empty;

  v19 = *(v0 + 8);
LABEL_11:

  return v19();
}

uint64_t sub_2329C4CD8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2329C4D44(unsigned __int8 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDBE078, &qword_2329D4FC0);
  v2 = *(sub_2329D3174() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  if (a1 <= 2u)
  {
    if (a1 == 1)
    {
      *(swift_allocObject() + 16) = xmmword_2329D46D0;
      sub_2329D3124();
      sub_2329D3144();
      goto LABEL_13;
    }

    if (a1 == 2)
    {
      *(swift_allocObject() + 16) = xmmword_2329D4530;
      sub_2329D3114();
      goto LABEL_13;
    }

LABEL_12:
    *(swift_allocObject() + 16) = xmmword_2329D4530;
    sub_2329D3104();
    goto LABEL_13;
  }

  if (a1 == 3)
  {
    *(swift_allocObject() + 16) = xmmword_2329D4530;
    sub_2329D3134();
    goto LABEL_13;
  }

  if (a1 == 4)
  {
    *(swift_allocObject() + 16) = xmmword_2329D4530;
    sub_2329D3154();
    goto LABEL_13;
  }

  if (a1 != 5)
  {
    goto LABEL_12;
  }

  *(swift_allocObject() + 16) = xmmword_2329D46D0;
  sub_2329D3164();
  sub_2329D30F4();
LABEL_13:
  sub_2329C85E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE088, &qword_2329D4FC8);
  sub_2329C8638();
  return sub_2329D3744();
}

uint64_t sub_2329C4F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2329C8988(a3, v24 - v10);
  v12 = sub_2329D3504();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2329BFB8C(v11, &qword_27DDBDD98, &qword_2329D4860);
  }

  else
  {
    sub_2329D34F4();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2329D34D4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2329D33E4() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDBE050, &qword_2329D4F88);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_2329BFB8C(a3, &qword_27DDBDD98, &qword_2329D4860);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2329BFB8C(a3, &qword_27DDBDD98, &qword_2329D4860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDBE050, &qword_2329D4F88);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2329C53D4(int a1, char a2, void *aBlock, double a4, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v9 = sub_2329D33B4();
  v11 = v10;
  v5[4] = v10;
  a5;
  v12 = swift_task_alloc();
  v5[5] = v12;
  *v12 = v5;
  v12[1] = sub_2329C54C0;

  return sub_2329C3E8C(v9, v11, a2, a4);
}

uint64_t sub_2329C54C0(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_2329D2C74();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    v10[2](*(v5 + 24), a1, 0);
    _Block_release(v10);
    swift_unknownObjectRelease();
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_2329C5680(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2329C56A0, 0, 0);
}

uint64_t sub_2329C56A0()
{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x70))();
  v2 = *(v0 + 24);
  if (v1)
  {
    v3 = v1;
    v4 = *(v0 + 16);
    v5 = sub_2329D2DF4();
    v6 = sub_2329D3634();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 16);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v7;
      *v9 = v7;
      v10 = v7;
      _os_log_impl(&dword_2329A4000, v5, v6, "Received NDF payload: %@", v8, 0xCu);
      sub_2329BFB8C(v9, &qword_27DDBE070, &unk_2329D4750);
      MEMORY[0x23838B4F0](v9, -1, -1);
      MEMORY[0x23838B4F0](v8, -1, -1);
    }

    v11 = *(v0 + 16);

    v12 = (*(*v3 + 472))(v11);
  }

  else
  {
    v13 = sub_2329D2DF4();
    v14 = sub_2329D3614();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2329A4000, v13, v14, "Persistence controller is not ready. Cannot deliver payload to daemon", v15, 2u);
      MEMORY[0x23838B4F0](v15, -1, -1);
    }

    v12 = 0;
  }

  v16 = *(v0 + 8);

  return v16(v12 & 1);
}

uint64_t sub_2329C5A74(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2329C5B38;

  return sub_2329C5680(v6);
}

uint64_t sub_2329C5B38(char a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_2329C5C98(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2329C5CB8, 0, 0);
}

uint64_t sub_2329C5CB8()
{
  v27 = v0;
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x70))();
  v2 = *(v0 + 24);
  if (v1)
  {
    v3 = v1;
    v4 = *(v0 + 16);

    v5 = sub_2329D2DF4();
    v6 = sub_2329D3634();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 16);
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v26 = v10;
      *v9 = 134218242;
      if (v8 >> 62)
      {
        if (*(v0 + 16) < 0)
        {
          v25 = *(v0 + 16);
        }

        v11 = sub_2329D3864();
      }

      else
      {
        v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = *(v0 + 16);
      *(v9 + 4) = v11;

      *(v9 + 12) = 2080;
      v13 = sub_2329D2FA4();
      v14 = MEMORY[0x23838A9E0](v12, v13);
      v16 = sub_2329A8630(v14, v15, &v26);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_2329A4000, v5, v6, "Received %ld NDF payloads: %s", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x23838B4F0](v10, -1, -1);
      MEMORY[0x23838B4F0](v9, -1, -1);
    }

    else
    {
      v21 = *(v0 + 16);
    }

    v22 = (*(*v3 + 480))(*(v0 + 16));

    v20 = v22 != 0;
  }

  else
  {
    v17 = sub_2329D2DF4();
    v18 = sub_2329D3614();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2329A4000, v17, v18, "Persistence controller is not ready. Cannot deliver CloudKit payloads to daemon", v19, 2u);
      MEMORY[0x23838B4F0](v19, -1, -1);
    }

    v20 = 0;
  }

  v23 = *(v0 + 8);

  return v23(v20);
}

uint64_t sub_2329C60F0(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_2329D2FA4();
  v5 = sub_2329D3484();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_2329C61C8;

  return sub_2329C5C98(v5);
}

uint64_t sub_2329C61C8(char a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  v5[2](v5, a1 & 1);
  _Block_release(v5);
  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_2329C634C()
{
  if ((*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x70))())
  {
    v1 = sub_2329B4C58();
  }

  else
  {
    v2 = *(v0 + 16) + OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_logger;
    v3 = sub_2329D2DF4();
    v4 = sub_2329D3614();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2329A4000, v3, v4, "Persistence controller is not ready. Cannot publish CoreData entry", v5, 2u);
      MEMORY[0x23838B4F0](v5, -1, -1);
    }

    v1 = 0;
  }

  v6 = *(v0 + 8);

  return v6(v1 & 1);
}

uint64_t sub_2329C65FC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2329C92B4;

  return sub_2329C632C();
}

uint64_t sub_2329C66C4()
{
  if ((*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x70))())
  {
    v1 = sub_2329B52E8();
  }

  else
  {
    v2 = *(v0 + 16) + OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_logger;
    v3 = sub_2329D2DF4();
    v4 = sub_2329D3614();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2329A4000, v3, v4, "Persistence controller is not ready. Cannot fetch all CoreData entries", v5, 2u);
      MEMORY[0x23838B4F0](v5, -1, -1);
    }

    v1 = 0;
  }

  v6 = *(v0 + 8);

  return v6(v1 & 1);
}

uint64_t sub_2329C6974(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2329C92B4;

  return sub_2329C66A4();
}

uint64_t sub_2329C6A3C()
{
  if ((*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x70))())
  {
    v1 = sub_2329B59E8();
  }

  else
  {
    v2 = *(v0 + 16) + OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_logger;
    v3 = sub_2329D2DF4();
    v4 = sub_2329D3614();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2329A4000, v3, v4, "Persistence controller is not ready. Cannot fetch latest CoreData entries", v5, 2u);
      MEMORY[0x23838B4F0](v5, -1, -1);
    }

    v1 = 0;
  }

  v6 = *(v0 + 8);

  return v6(v1 & 1);
}

uint64_t sub_2329C6CEC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2329C92B4;

  return sub_2329C6A1C();
}

uint64_t sub_2329C6DB4()
{
  if ((*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x70))())
  {
    v1 = sub_2329B497C();
  }

  else
  {
    v2 = *(v0 + 16) + OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_logger;
    v3 = sub_2329D2DF4();
    v4 = sub_2329D3614();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2329A4000, v3, v4, "Persistence controller is not ready. Cannot initialize schema", v5, 2u);
      MEMORY[0x23838B4F0](v5, -1, -1);
    }

    v1 = 0;
  }

  v6 = *(v0 + 8);

  return v6(v1 & 1);
}

uint64_t sub_2329C7064(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2329C710C;

  return sub_2329C6D94();
}

uint64_t sub_2329C710C(char a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_2329C7274()
{
  if ((*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x70))())
  {
    v1 = sub_2329B5C10();
  }

  else
  {
    v2 = *(v0 + 16) + OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_logger;
    v3 = sub_2329D2DF4();
    v4 = sub_2329D3614();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2329A4000, v3, v4, "Persistence controller is not ready. Cannot clean up stale network device records", v5, 2u);
      MEMORY[0x23838B4F0](v5, -1, -1);
    }

    v1 = 0;
  }

  v6 = *(v0 + 8);

  return v6(v1);
}

uint64_t sub_2329C7524(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2329C92B4;

  return sub_2329C7254();
}

uint64_t sub_2329C75EC()
{
  if ((*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x70))())
  {
    sub_2329B9674();
    v2 = v1;
  }

  else
  {
    v3 = *(v0 + 16) + OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_logger;
    v4 = sub_2329D2DF4();
    v5 = sub_2329D3614();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2329A4000, v4, v5, "Persistence controller is not ready. Cannot print telemetry stats", v6, 2u);
      MEMORY[0x23838B4F0](v6, -1, -1);
    }

    v2 = 0;
  }

  v7 = *(v0 + 8);

  return v7(v2 & 1);
}

uint64_t sub_2329C789C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2329C92B4;

  return sub_2329C75CC();
}

uint64_t sub_2329C7944(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2329BFCFC;

  return v7();
}

uint64_t sub_2329C7A2C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2329BF0BC;

  return v8();
}

uint64_t sub_2329C7B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_2329C8988(a3, v25 - v11);
  v13 = sub_2329D3504();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2329BFB8C(v12, &qword_27DDBDD98, &qword_2329D4860);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2329D34F4();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_2329D34D4();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_2329D33E4() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_2329BFB8C(a3, &qword_27DDBDD98, &qword_2329D4860);

    return v23;
  }

LABEL_8:
  sub_2329BFB8C(a3, &qword_27DDBDD98, &qword_2329D4860);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

char *sub_2329C7E00(char *a1, int64_t a2, char a3)
{
  result = sub_2329C7E20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2329C7E20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDBE100, &qword_2329D48D8);
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

uint64_t sub_2329C7F30(void *a1)
{
  if (sub_2329C39CC(a1))
  {
    if (qword_2814DAA58 != -1)
    {
      swift_once();
    }

    sub_2329C3680(v2);

    v3 = objc_allocWithZone(MEMORY[0x277CBEB98]);
    v4 = sub_2329D3474();

    v5 = [v3 initWithArray_];

    v14 = 0;
    sub_2329D35B4();

    v7 = sub_2329D2DF4();
    v11 = sub_2329D3614();
    if (!os_log_type_enabled(v7, v11))
    {
      goto LABEL_11;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2329A4000, v7, v11, "Cannot convert supported classes to Set<AnyHashable>", v12, 2u);
    v10 = v12;
LABEL_10:
    MEMORY[0x23838B4F0](v10, -1, -1);
LABEL_11:

    return 0;
  }

  v6 = a1;
  v7 = sub_2329D2DF4();
  v8 = sub_2329D3614();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = [v6 processIdentifier];

    _os_log_impl(&dword_2329A4000, v7, v8, "Rejecting connection: PID %d not entitled", v9, 8u);
    v10 = v9;
    goto LABEL_10;
  }

  return 0;
}

uint64_t type metadata accessor for NDFDaemonService()
{
  result = qword_2814DAA30;
  if (!qword_2814DAA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2329C8514(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2329BF0BC;

  return sub_2329C464C(a1, v7, v9, v10, v4, v5, v6, v8);
}

unint64_t sub_2329C85E0()
{
  result = qword_2814D9ED0;
  if (!qword_2814D9ED0)
  {
    sub_2329D3174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814D9ED0);
  }

  return result;
}

unint64_t sub_2329C8638()
{
  result = qword_2814D9EB0;
  if (!qword_2814D9EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDBE088, &qword_2329D4FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814D9EB0);
  }

  return result;
}

uint64_t sub_2329C86A4()
{
  result = sub_2329D2E14();
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

uint64_t sub_2329C8750()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2329BFCFC;

  return sub_2329C789C(v2, v3);
}

uint64_t sub_2329C87FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2329BFCFC;

  return sub_2329C7944(v2, v3, v5);
}

uint64_t sub_2329C88BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2329BFCFC;

  return sub_2329C7A2C(a1, v4, v5, v7);
}

uint64_t sub_2329C8988(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2329C89F8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2329BFCFC;

  return sub_2329BAD1C(a1, v5);
}

uint64_t sub_2329C8AB0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2329BFCFC;

  return sub_2329C7524(v2, v3);
}

uint64_t sub_2329C8B5C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2329BF0BC;

  return sub_2329C7064(v2, v3);
}

uint64_t sub_2329C8C08()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2329BFCFC;

  return sub_2329C6CEC(v2, v3);
}

uint64_t sub_2329C8CB4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2329BFCFC;

  return sub_2329C6974(v2, v3);
}

uint64_t sub_2329C8D60()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2329BFCFC;

  return sub_2329C65FC(v2, v3);
}

uint64_t sub_2329C8E0C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2329BFCFC;

  return sub_2329C60F0(v2, v3, v4);
}

uint64_t objectdestroy_113Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2329C8F08()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2329BFCFC;

  return sub_2329C5A74(v2, v3, v4);
}

uint64_t sub_2329C8FBC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2329BFCFC;

  return sub_2329C53D4(v2, v6, v4, v3, v5);
}

uint64_t objectdestroy_17Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_13Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

void sub_2329C9140(const char *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = v4;
    v8 = sub_2329D2DF4();
    v9 = sub_2329D3634();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v7;
      v12 = v7;
      _os_log_impl(&dword_2329A4000, v8, v9, a1, v10, 0xCu);
      sub_2329BFB8C(v11, &qword_27DDBE070, &unk_2329D4750);
      MEMORY[0x23838B4F0](v11, -1, -1);
      MEMORY[0x23838B4F0](v10, -1, -1);
    }

    (*((*MEMORY[0x277D85000] & *v6) + 0xA8))();
  }
}

uint64_t sub_2329C92BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2329A8E7C();
  v3 = sub_2329D2E14();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_2329C932C(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_2329C936C(a1);
  return v5;
}

uint64_t sub_2329C936C(void *a1)
{
  v3 = sub_2329D32A4();
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_2329D3694();
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_logger;
  v11 = sub_2329A8E7C();
  v12 = sub_2329D2E14();
  (*(*(v12 - 8) + 16))(v1 + v10, v11, v12);
  v33 = v1;
  *(v1 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_iteration) = 0;
  *(v1 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_timerQueue) = a1;
  sub_2329C97DC();
  v39 = MEMORY[0x277D84F90];
  sub_2329CA6E0(&qword_2814D9E48, MEMORY[0x277D85278]);
  v13 = a1;
  v32 = a1;
  v35 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE110, qword_2329D51C0);
  sub_2329C318C(&unk_2814D9E88, &qword_27DDBE110, qword_2329D51C0);
  sub_2329D3744();
  v14 = sub_2329D36A4();
  v15 = *(v34 + 8);
  v15(v9, v6);
  v16 = v33;
  *(v33 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_beginCleanExitTimer) = v14;
  v39 = MEMORY[0x277D84F90];
  sub_2329D3744();
  v17 = sub_2329D36A4();
  v15(v9, v6);
  *(v16 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_periodicCleanExitTimer) = v17;
  v18 = sub_2329A65F4();
  v19 = *(**v18 + 280);

  v21 = v19(v20);

  *(v16 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_timeToLive) = v21;
  v22 = *(**v18 + 304);

  v24 = v22(v23);

  *(v16 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_cleanExitInterval) = v24;
  v25 = *(**v18 + 328);

  v27 = v25(v26);

  v28 = v36;
  *v36 = v27;
  v30 = v37;
  v29 = v38;
  (*(v37 + 104))(v28, *MEMORY[0x277D85188], v38);
  (*(v30 + 32))(v16 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_timerLeeway, v28, v29);
  return v16;
}

unint64_t sub_2329C97DC()
{
  result = qword_2814D9E40;
  if (!qword_2814D9E40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814D9E40);
  }

  return result;
}

uint64_t sub_2329C9828()
{
  v1 = v0;
  v2 = sub_2329D32B4();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2329D32F4();
  v37 = *(v5 - 8);
  v38 = v5;
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v5);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2329D32A4();
  v8 = *(v35 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v35);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2329D3314();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;

  v20 = sub_2329D2DF4();
  v21 = sub_2329D3634();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = *(v1 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_timeToLive);
    _os_log_impl(&dword_2329A4000, v20, v21, "Process startup completed. Starting time to live timer (TTL: %fs)", v22, 0xCu);
    MEMORY[0x23838B4F0](v22, -1, -1);
  }

  v23 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_beginCleanExitTimer);
  v24 = v1;
  ObjectType = swift_getObjectType();
  sub_2329D3304();
  v26 = *(v24 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_timeToLive);
  sub_2329D3324();
  v34 = *(v13 + 8);
  v34(v17, v12);
  v27 = OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_timerLeeway;
  v28 = v35;
  (*(v8 + 104))(v11, *MEMORY[0x277D85180], v35);
  MEMORY[0x23838AC40](v19, v11, v24 + v27, ObjectType);
  (*(v8 + 8))(v11, v28);
  v34(v19, v12);
  v29 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_2329C9CF8;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2329C1D18;
  aBlock[3] = &block_descriptor_2;
  v30 = _Block_copy(aBlock);

  v31 = v36;
  sub_2329D32C4();
  v32 = v39;
  sub_2329C1D5C();
  sub_2329D36C4();
  _Block_release(v30);
  (*(v40 + 8))(v32, v41);
  (*(v37 + 8))(v31, v38);

  return sub_2329D36D4();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2329C9D44()
{
  v1 = v0;
  v2 = sub_2329D32B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2329D32F4();
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2329D3314();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2329D2DF4();
  v17 = sub_2329D3634();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31 = v10;
    v19 = v11;
    v20 = v6;
    v21 = v3;
    v22 = v2;
    v23 = v18;
    *v18 = 0;
    _os_log_impl(&dword_2329A4000, v16, v17, "Starting periodic clean exit attempts", v18, 2u);
    v24 = v23;
    v2 = v22;
    v3 = v21;
    v6 = v20;
    v11 = v19;
    v10 = v31;
    MEMORY[0x23838B4F0](v24, -1, -1);
  }

  v25 = *(v1 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_periodicCleanExitTimer);
  ObjectType = swift_getObjectType();
  sub_2329D3304();
  MEMORY[0x23838AC50](v15, v1 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_timerLeeway, ObjectType, *(v1 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_cleanExitInterval));
  (*(v12 + 8))(v15, v11);
  v27 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_2329CA5BC;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2329C1D18;
  aBlock[3] = &block_descriptor_8;
  v28 = _Block_copy(aBlock);

  sub_2329D32C4();
  sub_2329C1D5C();
  sub_2329D36C4();
  _Block_release(v28);
  (*(v3 + 8))(v6, v2);
  (*(v32 + 8))(v10, v33);

  return sub_2329D36D4();
}

void sub_2329CA0F8()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_iteration;
  v2 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_iteration);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
    return;
  }

  v5 = v0;
  *(v0 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_iteration) = v4;

  v6 = sub_2329D2DF4();
  v7 = sub_2329D3634();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v5 + v1);

    _os_log_impl(&dword_2329A4000, v6, v7, "Attempting clean exit... (%ld)", v8, 0xCu);
    MEMORY[0x23838B4F0](v8, -1, -1);

    if (xpc_transaction_try_exit_clean())
    {
      return;
    }
  }

  else
  {

    if (xpc_transaction_try_exit_clean())
    {
      return;
    }
  }

  oslog = sub_2329D2DF4();
  v9 = sub_2329D35F4();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2329A4000, oslog, v9, "Cannot eager exit yet, there are still outstanding transactions", v10, 2u);
    MEMORY[0x23838B4F0](v10, -1, -1);
  }
}

uint64_t sub_2329CA298()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_logger;
  v2 = sub_2329D2E14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_timerLeeway;
  v4 = sub_2329D32A4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_beginCleanExitTimer);
  swift_unknownObjectRelease();
  v6 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_periodicCleanExitTimer);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_2329CA368()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_logger;
  v2 = sub_2329D2E14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_timerLeeway;
  v4 = sub_2329D32A4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_beginCleanExitTimer);
  swift_unknownObjectRelease();
  v6 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution20NDFDaemonTaskManager_periodicCleanExitTimer);
  swift_unknownObjectRelease();
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NDFDaemonTaskManager()
{
  result = qword_2814DA9B8;
  if (!qword_2814DA9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2329CA4C8()
{
  result = sub_2329D2E14();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_2329D32A4();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_2329CA5F0(uint64_t (*a1)(void), const char *a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = sub_2329D2DF4();
    v8 = a1();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2329A4000, v7, v8, a2, v9, 2u);
      MEMORY[0x23838B4F0](v9, -1, -1);
    }

    a3();
  }

  return result;
}

uint64_t sub_2329CA6E0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2329CA730()
{
  v0 = objc_opt_self();
  v1 = &unk_284805F30;
  v2 = [v0 interfaceWithProtocol_];

  qword_2814DAA28 = v2;
}

uint64_t sub_2329CA798@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2329A9010();
  v3 = sub_2329D2E14();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_2329CA808(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](sub_2329CA828, 0, 0);
}

uint64_t sub_2329CA828()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithMachServiceName:*MEMORY[0x277D6B6A0] options:4096];
  v0[21] = v1;
  if (qword_2814DAA20 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  [v1 setRemoteObjectInterface_];
  [v1 activate];
  v3 = swift_allocObject();
  v0[22] = v3;
  swift_weakInit();
  v0[14] = sub_2329CB330;
  v0[15] = v3;
  v4 = MEMORY[0x277D85DD0];
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2329CB338;
  v0[13] = &block_descriptor_3;
  v5 = _Block_copy(v0 + 10);
  v6 = v0[15];

  v7 = [v1 remoteObjectProxyWithErrorHandler_];
  _Block_release(v5);
  sub_2329D3734();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE1E8, &qword_2329D5240);
  v8 = swift_dynamicCast();
  if (v8)
  {
    v10 = v0[18];
    v9 = v0[19];
    v0[23] = v10;
    if (v9 >> 62)
    {
      v8 = sub_2329D3864();
      v11 = v8;
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v36 = v4;
    v37 = v10;
    if (v11)
    {
      if (v11 < 1)
      {
        __break(1u);
        return MEMORY[0x282200938](v8);
      }

      v12 = 0;
      v13 = v0[20];
      v39 = v9 & 0xC000000000000001;
      v38 = v0[19] + 32;
      v14 = MEMORY[0x277D84F90];
      do
      {
        if (v39)
        {
          v15 = MEMORY[0x23838AD30](v12, v0[19]);
        }

        else
        {
          v15 = *(v38 + 8 * v12);
        }

        v16 = v15;
        v17 = sub_2329D2E84();
        v19 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_2329CB674(0, *(v14 + 2) + 1, 1, v14);
        }

        v21 = *(v14 + 2);
        v20 = *(v14 + 3);
        if (v21 >= v20 >> 1)
        {
          v14 = sub_2329CB674((v20 > 1), v21 + 1, 1, v14);
        }

        *(v14 + 2) = v21 + 1;
        v22 = &v14[16 * v21];
        *(v22 + 4) = v17;
        *(v22 + 5) = v19;
        ++v12;
      }

      while (v11 != v12);
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }

    if (*(v14 + 2))
    {
      v27 = v0[20];

      v28 = sub_2329D2DF4();
      v29 = sub_2329D3634();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 134217984;
        *(v30 + 4) = *(v14 + 2);
        _os_log_impl(&dword_2329A4000, v28, v29, "Sending %ld device updates to symptomsd", v30, 0xCu);
        MEMORY[0x23838B4F0](v30, -1, -1);
      }

      v31 = sub_2329D3474();
      v0[24] = v31;

      v0[2] = v0;
      v0[3] = sub_2329CAF04;
      v32 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE1F0, qword_2329D5248);
      v0[10] = v36;
      v0[11] = 1107296256;
      v0[12] = sub_2329CB3B8;
      v0[13] = &block_descriptor_3_0;
      v0[14] = v32;
      [v37 updatedNDFDeviceRecords:v31 reply:v0 + 10];
      v8 = (v0 + 2);

      return MEMORY[0x282200938](v8);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v23 = v0[20] + OBJC_IVAR____TtC19SymptomDistribution16NDFSymptomsRelay_logger;
    v24 = sub_2329D2DF4();
    v25 = sub_2329D3614();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2329A4000, v24, v25, "Failed to obtain remote object proxy, not sending updates", v26, 2u);
      MEMORY[0x23838B4F0](v26, -1, -1);
    }
  }

  v33 = v0[21];
  [v33 invalidate];

  v34 = v0[1];

  return v34();
}

uint64_t sub_2329CAF04()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_2329CB0A0;
  }

  else
  {
    v3 = sub_2329CB014;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2329CB014()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];

  swift_unknownObjectRelease();

  v4 = v0[21];
  [v4 invalidate];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2329CB0A0()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[21];
  swift_willThrow();

  swift_unknownObjectRelease();

  [v5 invalidate];
  v6 = v0[1];
  v7 = v0[25];

  return v6();
}

uint64_t sub_2329CB144(void *a1)
{
  v2 = sub_2329D2E14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v3 + 16))(v6, result + OBJC_IVAR____TtC19SymptomDistribution16NDFSymptomsRelay_logger, v2);

    v8 = a1;
    v9 = sub_2329D2DF4();
    v10 = sub_2329D3614();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = a1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_2329A4000, v9, v10, "Error sending device updates: %@", v11, 0xCu);
      sub_2329CB780(v12);
      MEMORY[0x23838B4F0](v12, -1, -1);
      MEMORY[0x23838B4F0](v11, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

void sub_2329CB338(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2329CB3B8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD48, &qword_2329D4F90);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_2329CB464()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution16NDFSymptomsRelay_logger;
  v2 = sub_2329D2E14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_2329CB4C4()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution16NDFSymptomsRelay_logger;
  v2 = sub_2329D2E14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2329CB560()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC19SymptomDistribution16NDFSymptomsRelay_logger;
  v5 = sub_2329A9010();
  v6 = sub_2329D2E14();
  (*(*(v6 - 8) + 16))(v3 + v4, v5, v6);
  return v3;
}

uint64_t sub_2329CB5E8()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution16NDFSymptomsRelay_logger;
  v2 = sub_2329A9010();
  v3 = sub_2329D2E14();
  (*(*(v3 - 8) + 16))(v0 + v1, v2, v3);
  return v0;
}

char *sub_2329CB674(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE1F8, "FD");
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

uint64_t sub_2329CB780(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE070, &unk_2329D4750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for NDFSymptomsRelay()
{
  result = qword_2814DAA08;
  if (!qword_2814DAA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2329CB83C()
{
  result = sub_2329D2E14();
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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2329CB910@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2329A8D44();
  v3 = sub_2329D2E14();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_2329CB980()
{
  v10 = sub_2329D3674();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2329D3654();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_2329D32F4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_2329CBBDC();
  sub_2329D32D4();
  v11 = MEMORY[0x277D84F90];
  sub_2329D2BC8(&qword_2814D9E58, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDEB0, qword_2329D4EE0);
  sub_2329D2B80(&qword_2814D9E98, &qword_27DDBDEB0, qword_2329D4EE0);
  sub_2329D3744();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  return sub_2329D3684();
}

unint64_t sub_2329CBBDC()
{
  result = qword_2814D9E50;
  if (!qword_2814D9E50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814D9E50);
  }

  return result;
}

uint64_t sub_2329CBC28@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE200, &unk_2329D5298);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t NDFBrowser.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  NDFBrowser.init()();
  return v3;
}

uint64_t NDFBrowser.init()()
{
  v1 = v0;
  v2 = sub_2329D3674();
  v18 = *(v2 - 8);
  v19 = v2;
  v3 = *(v18 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2329D3654();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_2329D32F4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_logger;
  v11 = sub_2329A8D44();
  v12 = sub_2329D2E14();
  (*(*(v12 - 8) + 16))(v0 + v10, v11, v12);
  v17 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browserQueue;
  v16[1] = sub_2329CBBDC();
  sub_2329D32D4();
  v20 = MEMORY[0x277D84F90];
  sub_2329D2BC8(&qword_2814D9E58, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDEB0, qword_2329D4EE0);
  sub_2329D2B80(&qword_2814D9E98, &qword_27DDBDEB0, qword_2329D4EE0);
  sub_2329D3744();
  (*(v18 + 104))(v5, *MEMORY[0x277D85260], v19);
  *(v0 + v17) = sub_2329D3684();
  *(v0 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browser) = 0;
  *(v0 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browsingInProgress) = 0;
  v13 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_discoveryContinuation;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE200, &unk_2329D5298);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  return v1;
}

uint64_t sub_2329CC004(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v5 + 120) = a3;
  *(v5 + 128) = v4;
  *(v5 + 112) = a4;
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE200, &unk_2329D5298);
  *(v5 + 136) = v6;
  v7 = *(v6 - 8);
  *(v5 + 144) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE208, &qword_2329D52A8) - 8) + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  v10 = sub_2329D34E4();
  *(v5 + 176) = v10;
  v11 = *(v10 - 8);
  *(v5 + 184) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  v13 = sub_2329D3084();
  *(v5 + 200) = v13;
  v14 = *(v13 - 8);
  *(v5 + 208) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 240) = swift_task_alloc();
  *(v5 + 248) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE210, &qword_2329D52B0) - 8) + 64) + 15;
  *(v5 + 256) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE218, &qword_2329D52B8);
  *(v5 + 264) = v17;
  v18 = *(v17 - 8);
  *(v5 + 272) = v18;
  v19 = *(v18 + 64) + 15;
  *(v5 + 280) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE220, &qword_2329D52C0) - 8) + 64) + 15;
  *(v5 + 288) = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE228, &unk_2329D52C8);
  *(v5 + 296) = v21;
  v22 = *(v21 - 8);
  *(v5 + 304) = v22;
  v23 = *(v22 + 64) + 15;
  *(v5 + 312) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2329CC344, 0, 0);
}

uint64_t sub_2329CC344()
{
  v74 = v0;
  v1 = *(v0 + 128);
  if (*(v0 + 112) <= 0.0)
  {
    v11 = sub_2329D2DF4();
    v12 = sub_2329D3614();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2329A4000, v11, v12, "Cannot start discovery with negative time interval", v13, 2u);
      MEMORY[0x23838B4F0](v13, -1, -1);
    }

    v7 = sub_2329D2E44();
    sub_2329D2BC8(&qword_27DDBE230, MEMORY[0x277D6B2F0]);
    swift_allocError();
    v9 = v14;
    *v14 = 1;
    v10 = MEMORY[0x277D6B2D8];
    goto LABEL_9;
  }

  v2 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browsingInProgress;
  *(v0 + 320) = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browsingInProgress;
  v3 = *(v1 + v2);
  *(v0 + 328) = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_logger;
  v4 = sub_2329D2DF4();
  if (v3)
  {
    v5 = sub_2329D3614();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2329A4000, v4, v5, "Cannot start discovery while already running", v6, 2u);
      MEMORY[0x23838B4F0](v6, -1, -1);
    }

    v7 = sub_2329D2E44();
    sub_2329D2BC8(&qword_27DDBE230, MEMORY[0x277D6B2F0]);
    swift_allocError();
    v9 = v8;
    v10 = MEMORY[0x277D6B2E0];
LABEL_9:
    (*(*(v7 - 8) + 104))(v9, *v10, v7);
    swift_willThrow();
    v15 = *(v0 + 312);
    v17 = *(v0 + 280);
    v16 = *(v0 + 288);
    v19 = *(v0 + 248);
    v18 = *(v0 + 256);
    v21 = *(v0 + 232);
    v20 = *(v0 + 240);
    v23 = *(v0 + 216);
    v22 = *(v0 + 224);
    v24 = *(v0 + 192);
    v66 = *(v0 + 168);
    v68 = *(v0 + 160);
    v70 = *(v0 + 152);

    v25 = *(v0 + 8);

    return v25();
  }

  v27 = sub_2329D3634();
  if (os_log_type_enabled(v4, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2329A4000, v4, v27, "Starting endpoint discovery", v28, 2u);
    MEMORY[0x23838B4F0](v28, -1, -1);
  }

  *(v1 + v2) = 1;
  sub_2329D3534();
  v29 = *(v0 + 296);
  v30 = *(v0 + 304);
  v31 = *(v0 + 288);
  v32 = *(v0 + 120);
  v33 = *(v0 + 128);
  v34 = *(v0 + 112);
  sub_2329CDF4C(*(v0 + 96), *(v0 + 104), v31);
  if ((*(v30 + 48))(v31, 1, v29) == 1)
  {
    sub_2329BFB8C(*(v0 + 288), &qword_27DDBE220, &qword_2329D52C0);
    v35 = sub_2329D2DF4();
    v36 = sub_2329D3634();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2329A4000, v35, v36, "No endpoints discovered", v37, 2u);
      MEMORY[0x23838B4F0](v37, -1, -1);
    }

    sub_2329D3534();
    v44 = *(v0 + 328);
    v45 = *(v0 + 128);
    v46 = sub_2329D1D24(MEMORY[0x277D84F90]);

    v47 = sub_2329D2DF4();
    v48 = sub_2329D3634();

    v49 = os_log_type_enabled(v47, v48);
    v72 = v46;
    if (v49)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v73 = v51;
      *v50 = 136315138;
      *(v0 + 80) = v46;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE240, &qword_2329D52D8);
      v52 = sub_2329D33D4();
      v54 = sub_2329A8630(v52, v53, &v73);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_2329A4000, v47, v48, "Discovered endpoints (after deduplication): %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x23838B4F0](v51, -1, -1);
      MEMORY[0x23838B4F0](v50, -1, -1);
    }

    v55 = *(v0 + 312);
    v57 = *(v0 + 280);
    v56 = *(v0 + 288);
    v59 = *(v0 + 248);
    v58 = *(v0 + 256);
    v61 = *(v0 + 232);
    v60 = *(v0 + 240);
    v63 = *(v0 + 216);
    v62 = *(v0 + 224);
    v64 = *(v0 + 192);
    v67 = *(v0 + 168);
    v69 = *(v0 + 160);
    v71 = *(v0 + 152);

    v65 = *(v0 + 8);

    return v65(v72);
  }

  else
  {
    v38 = *(v0 + 280);
    (*(*(v0 + 304) + 32))(*(v0 + 312), *(v0 + 288), *(v0 + 296));
    sub_2329D3584();
    *(v0 + 336) = MEMORY[0x277D84F90];
    v39 = *(MEMORY[0x277D858B8] + 4);
    v40 = swift_task_alloc();
    *(v0 + 344) = v40;
    *v40 = v0;
    v40[1] = sub_2329CCDE0;
    v41 = *(v0 + 280);
    v42 = *(v0 + 256);
    v43 = *(v0 + 264);

    return MEMORY[0x2822005A8](v42, 0, 0, v43, v0 + 88);
  }
}

uint64_t sub_2329CCDE0()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v7 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = *(v2 + 336);

    v5 = sub_2329CDAC4;
  }

  else
  {
    v5 = sub_2329CCEFC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2329CCEFC()
{
  v153 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = *(v0 + 304);
    v4 = *(v0 + 312);
    v6 = *(v0 + 296);
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
    (*(v5 + 8))(v4, v6);
    v7 = *(v0 + 352);
    v8 = *(v0 + 336);
    sub_2329D3534();
    if (v7)
    {
      v9 = v7;
LABEL_6:

      v19 = *(v0 + 192);
      v20 = *(v0 + 176);
      *(v0 + 64) = v9;
      v21 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD48, &qword_2329D4F90);
      if (swift_dynamicCast())
      {
        v22 = *(v0 + 328);
        v23 = *(v0 + 128);

        v24 = sub_2329D2DF4();
        v25 = sub_2329D3634();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_2329A4000, v24, v25, "Discovery task cancelled, cancelling active discovery operation", v26, 2u);
          MEMORY[0x23838B4F0](v26, -1, -1);
        }

        v27 = *(v0 + 128);

        v28 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browser;
        if (*(v27 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browser))
        {
          v29 = *(v27 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browser);

          sub_2329D3284();

          v30 = *(v27 + v28);
        }

        v69 = *(v0 + 168);
        v70 = *(v0 + 136);
        v71 = *(v0 + 144);
        v72 = *(v0 + 128);
        *(v27 + v28) = 0;

        v73 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_discoveryContinuation;
        swift_beginAccess();
        sub_2329BF474(v72 + v73, v69, &qword_27DDBE208, &qword_2329D52A8);
        v74 = (*(v71 + 48))(v69, 1, v70);
        v75 = *(v0 + 168);
        if (v74)
        {
          sub_2329BFB8C(*(v0 + 168), &qword_27DDBE208, &qword_2329D52A8);
        }

        else
        {
          v77 = *(v0 + 144);
          v76 = *(v0 + 152);
          v78 = *(v0 + 136);
          (*(v77 + 16))(v76, *(v0 + 168), v78);
          sub_2329BFB8C(v75, &qword_27DDBE208, &qword_2329D52A8);
          *(v0 + 72) = 0;
          sub_2329D3574();
          (*(v77 + 8))(v76, v78);
        }

        v80 = *(v0 + 320);
        v79 = *(v0 + 328);
        v81 = *(v0 + 160);
        v82 = *(v0 + 128);
        (*(*(v0 + 144) + 56))(v81, 1, 1, *(v0 + 136));
        swift_beginAccess();
        sub_2329D0E50(v81, v72 + v73);
        swift_endAccess();
        *(v82 + v80) = 0;
        v83 = sub_2329D2DF4();
        v84 = sub_2329D3634();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          *v85 = 0;
          _os_log_impl(&dword_2329A4000, v83, v84, "Discovery operation cancelled successfully", v85, 2u);
          MEMORY[0x23838B4F0](v85, -1, -1);
        }

        v87 = *(v0 + 184);
        v86 = *(v0 + 192);
        v88 = *(v0 + 176);

        sub_2329D2BC8(&qword_27DDBE238, MEMORY[0x277D85678]);
        swift_allocError();
        sub_2329D3334();
        swift_willThrow();
        (*(v87 + 8))(v86, v88);
      }

      v89 = *(v0 + 312);
      v91 = *(v0 + 280);
      v90 = *(v0 + 288);
      v93 = *(v0 + 248);
      v92 = *(v0 + 256);
      v95 = *(v0 + 232);
      v94 = *(v0 + 240);
      v97 = *(v0 + 216);
      v96 = *(v0 + 224);
      v139 = *(v0 + 192);
      v143 = *(v0 + 168);
      v147 = *(v0 + 160);
      v150 = *(v0 + 152);

      v98 = *(v0 + 8);

      return v98();
    }

    v31 = *(v0 + 328);
    v32 = *(v0 + 128);
    v33 = sub_2329D1D24(v8);

    v34 = sub_2329D2DF4();
    v35 = sub_2329D3634();

    v148 = v33;
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v152[0] = v37;
      *v36 = 136315138;
      *(v0 + 80) = v33;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE240, &qword_2329D52D8);
      v38 = sub_2329D33D4();
      v40 = sub_2329A8630(v38, v39, v152);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_2329A4000, v34, v35, "Discovered endpoints (after deduplication): %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x23838B4F0](v37, -1, -1);
      MEMORY[0x23838B4F0](v36, -1, -1);
    }

    v41 = *(v0 + 312);
    v43 = *(v0 + 280);
    v42 = *(v0 + 288);
    v45 = *(v0 + 248);
    v44 = *(v0 + 256);
    v47 = *(v0 + 232);
    v46 = *(v0 + 240);
    v49 = *(v0 + 216);
    v48 = *(v0 + 224);
    v50 = *(v0 + 192);
    v138 = *(v0 + 168);
    v141 = *(v0 + 160);
    v145 = *(v0 + 152);

    v51 = *(v0 + 8);

    return v51(v148);
  }

  else
  {
    v10 = *(v0 + 352);
    v11 = *(v3 + 32);
    v11(*(v0 + 248), v1, v2);
    sub_2329D3534();
    v12 = *(v0 + 336);
    if (v10)
    {
      v9 = v10;
      v14 = *(v0 + 304);
      v13 = *(v0 + 312);
      v15 = *(v0 + 296);
      v17 = *(v0 + 272);
      v16 = *(v0 + 280);
      v18 = *(v0 + 264);
      (*(*(v0 + 208) + 8))(*(v0 + 248), *(v0 + 200));
      (*(v17 + 8))(v16, v18);
      (*(v14 + 8))(v13, v15);
      goto LABEL_6;
    }

    if (sub_2329CE904(*(v0 + 248), *(v0 + 336)))
    {
      v53 = *(v0 + 328);
      v54 = *(v0 + 128);
      v55 = *(*(v0 + 208) + 16);
      v55(*(v0 + 216), *(v0 + 248), *(v0 + 200));
      v56 = sub_2329D2DF4();
      v57 = sub_2329D35F4();
      v58 = os_log_type_enabled(v56, v57);
      v59 = *(v0 + 248);
      if (v58)
      {
        v60 = *(v0 + 216);
        v61 = *(v0 + 224);
        v62 = *(v0 + 200);
        v142 = *(v0 + 208);
        v149 = *(v0 + 248);
        v63 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        v152[0] = v146;
        *v63 = 136315138;
        v55(v61, v60, v62);
        v64 = sub_2329D33D4();
        v66 = v65;
        v67 = *(v142 + 8);
        v67(v60, v62);
        v68 = sub_2329A8630(v64, v66, v152);

        *(v63 + 4) = v68;
        _os_log_impl(&dword_2329A4000, v56, v57, "Skipping already discovered endpoint: %s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v146);
        MEMORY[0x23838B4F0](v146, -1, -1);
        MEMORY[0x23838B4F0](v63, -1, -1);

        v67(v149, v62);
      }

      else
      {
        v125 = *(v0 + 208);
        v126 = *(v0 + 216);
        v127 = *(v0 + 200);

        v128 = *(v125 + 8);
        v128(v126, v127);
        v128(v59, v127);
      }
    }

    else
    {
      v99 = *(v0 + 336);
      v100 = *(*(v0 + 208) + 16);
      v100(*(v0 + 240), *(v0 + 248), *(v0 + 200));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v102 = *(v0 + 336);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v102 = sub_2329D0AE4(0, v102[2] + 1, 1, v102);
      }

      v104 = v102[2];
      v103 = v102[3];
      v144 = v100;
      if (v104 >= v103 >> 1)
      {
        v102 = sub_2329D0AE4(v103 > 1, v104 + 1, 1, v102);
      }

      v105 = *(v0 + 328);
      v106 = *(v0 + 240);
      v107 = *(v0 + 248);
      v108 = *(v0 + 232);
      v110 = *(v0 + 200);
      v109 = *(v0 + 208);
      v111 = *(v0 + 128);
      v102[2] = v104 + 1;
      v151 = v102;
      v11(v102 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v104, v106, v110);
      v144(v108, v107, v110);
      v112 = sub_2329D2DF4();
      v113 = sub_2329D3604();
      v114 = os_log_type_enabled(v112, v113);
      v140 = *(v0 + 248);
      v115 = *(v0 + 232);
      if (v114)
      {
        v116 = *(v0 + 224);
        v118 = *(v0 + 200);
        v117 = *(v0 + 208);
        v119 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v152[0] = v137;
        *v119 = 136315138;
        v144(v116, v115, v118);
        v120 = sub_2329D33D4();
        v122 = v121;
        v123 = *(v117 + 8);
        v123(v115, v118);
        v124 = sub_2329A8630(v120, v122, v152);

        *(v119 + 4) = v124;
        _os_log_impl(&dword_2329A4000, v112, v113, "Discovered endpoint: %s", v119, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v137);
        MEMORY[0x23838B4F0](v137, -1, -1);
        MEMORY[0x23838B4F0](v119, -1, -1);

        v123(v140, v118);
      }

      else
      {
        v130 = *(v0 + 200);
        v129 = *(v0 + 208);

        v131 = *(v129 + 8);
        v131(v115, v130);
        v131(v140, v130);
      }

      *(v0 + 336) = v151;
    }

    v132 = *(MEMORY[0x277D858B8] + 4);
    v133 = swift_task_alloc();
    *(v0 + 344) = v133;
    *v133 = v0;
    v133[1] = sub_2329CCDE0;
    v134 = *(v0 + 280);
    v135 = *(v0 + 256);
    v136 = *(v0 + 264);

    return MEMORY[0x2822005A8](v135, 0, 0, v136, v0 + 88);
  }
}

uint64_t sub_2329CDAC4()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 296);
  (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 88);
  *(v0 + 64) = v4;
  v5 = *(v0 + 192);
  v6 = *(v0 + 176);
  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD48, &qword_2329D4F90);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 328);
    v9 = *(v0 + 128);

    v10 = sub_2329D2DF4();
    v11 = sub_2329D3634();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2329A4000, v10, v11, "Discovery task cancelled, cancelling active discovery operation", v12, 2u);
      MEMORY[0x23838B4F0](v12, -1, -1);
    }

    v13 = *(v0 + 128);

    v14 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browser;
    if (*(v13 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browser))
    {
      v15 = *(v13 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browser);

      sub_2329D3284();

      v16 = *(v13 + v14);
    }

    v17 = *(v0 + 168);
    v18 = *(v0 + 136);
    v19 = *(v0 + 144);
    v20 = *(v0 + 128);
    *(v13 + v14) = 0;

    v21 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_discoveryContinuation;
    swift_beginAccess();
    sub_2329BF474(v20 + v21, v17, &qword_27DDBE208, &qword_2329D52A8);
    v22 = (*(v19 + 48))(v17, 1, v18);
    v23 = *(v0 + 168);
    if (v22)
    {
      sub_2329BFB8C(*(v0 + 168), &qword_27DDBE208, &qword_2329D52A8);
    }

    else
    {
      v25 = *(v0 + 144);
      v24 = *(v0 + 152);
      v26 = *(v0 + 136);
      (*(v25 + 16))(v24, *(v0 + 168), v26);
      sub_2329BFB8C(v23, &qword_27DDBE208, &qword_2329D52A8);
      *(v0 + 72) = 0;
      sub_2329D3574();
      (*(v25 + 8))(v24, v26);
    }

    v28 = *(v0 + 320);
    v27 = *(v0 + 328);
    v29 = *(v0 + 160);
    v30 = *(v0 + 128);
    (*(*(v0 + 144) + 56))(v29, 1, 1, *(v0 + 136));
    swift_beginAccess();
    sub_2329D0E50(v29, v20 + v21);
    swift_endAccess();
    *(v30 + v28) = 0;
    v31 = sub_2329D2DF4();
    v32 = sub_2329D3634();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2329A4000, v31, v32, "Discovery operation cancelled successfully", v33, 2u);
      MEMORY[0x23838B4F0](v33, -1, -1);
    }

    v35 = *(v0 + 184);
    v34 = *(v0 + 192);
    v36 = *(v0 + 176);

    sub_2329D2BC8(&qword_27DDBE238, MEMORY[0x277D85678]);
    swift_allocError();
    sub_2329D3334();
    swift_willThrow();
    (*(v35 + 8))(v34, v36);
  }

  v37 = *(v0 + 312);
  v39 = *(v0 + 280);
  v38 = *(v0 + 288);
  v41 = *(v0 + 248);
  v40 = *(v0 + 256);
  v43 = *(v0 + 232);
  v42 = *(v0 + 240);
  v45 = *(v0 + 216);
  v44 = *(v0 + 224);
  v48 = *(v0 + 192);
  v49 = *(v0 + 168);
  v50 = *(v0 + 160);
  v51 = *(v0 + 152);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_2329CDF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a3;
  v67 = sub_2329D32B4();
  v70 = *(v67 - 8);
  v6 = *(v70 + 64);
  MEMORY[0x28223BE20](v67);
  v66 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2329D32F4();
  v68 = *(v8 - 8);
  v69 = v8;
  v9 = *(v68 + 64);
  MEMORY[0x28223BE20](v8);
  v65 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_2329D3314();
  v77 = *(v75 - 8);
  v11 = *(v77 + 64);
  v12 = MEMORY[0x28223BE20](v75);
  v64 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v74 = v59 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE208, &qword_2329D52A8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v59 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE248, qword_2329D52E0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v59 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE200, &unk_2329D5298);
  v76 = *(v24 - 8);
  v61 = *(v76 + 64);
  v25 = MEMORY[0x28223BE20](v24);
  v60 = v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = v59 - v27;
  v29 = sub_2329D1820(a1, a2);
  v30 = *(v3 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browser);
  *(v3 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browser) = v29;
  v31 = v3;

  sub_2329D3084();
  (*(v20 + 104))(v23, *MEMORY[0x277D858A0], v19);
  sub_2329D3544();
  (*(v20 + 8))(v23, v19);
  v32 = v76;
  v33 = v76 + 16;
  v71 = *(v76 + 16);
  v71(v18, v28, v24);
  v59[1] = v33;
  (*(v32 + 56))(v18, 0, 1, v24);
  v34 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_discoveryContinuation;
  swift_beginAccess();
  v72 = v31;
  sub_2329D0E50(v18, v31 + v34);
  swift_endAccess();
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = v29;

  v37 = v28;
  sub_2329D3554();
  v38 = v60;
  v39 = v28;
  v63 = v28;
  v40 = v24;
  v71(v60, v39, v24);
  v41 = v76;
  v42 = *(v76 + 80);
  v43 = swift_allocObject();
  v44 = *(v41 + 32);
  v44(v43 + ((v42 + 16) & ~v42), v38, v40);
  sub_2329A5F3C(sub_2329D23BC);
  sub_2329D3214();

  v45 = swift_allocObject();
  swift_weakInit();
  v62 = v40;
  v71(v38, v37, v40);
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  *(v46 + 24) = v29;
  v44(v46 + ((v42 + 32) & ~v42), v38, v40);

  sub_2329A5F3C(sub_2329D2438);
  sub_2329D3204();

  v61 = *(v72 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browserQueue);
  sub_2329D3244();
  v47 = v64;
  sub_2329D3304();
  sub_2329D3324();
  v48 = *(v77 + 8);
  v77 += 8;
  v71 = v48;
  (v48)(v47, v75);
  v49 = swift_allocObject();
  swift_weakInit();
  v50 = swift_allocObject();
  swift_weakInit();
  v51 = swift_allocObject();
  v64 = v49;
  *(v51 + 16) = v49;
  *(v51 + 24) = v50;
  aBlock[4] = sub_2329D24F8;
  aBlock[5] = v51;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2329C1D18;
  aBlock[3] = &block_descriptor_4;
  v52 = _Block_copy(aBlock);

  v53 = v65;
  sub_2329D32C4();
  v78 = MEMORY[0x277D84F90];
  sub_2329D2BC8(&unk_2814D9EC0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE180, &unk_2329D4F60);
  sub_2329D2B80(&unk_2814D9EA0, &qword_27DDBE180, &unk_2329D4F60);
  v55 = v66;
  v54 = v67;
  sub_2329D3744();
  v56 = v74;
  MEMORY[0x23838ABB0](v74, v53, v55, v52);
  _Block_release(v52);

  (*(v70 + 8))(v55, v54);
  (*(v68 + 8))(v53, v69);
  (v71)(v56, v75);
  (*(v76 + 8))(v63, v62);

  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE228, &unk_2329D52C8);
  return (*(*(v57 - 8) + 56))(v73, 0, 1, v57);
}

BOOL sub_2329CE904(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_2329D3084() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_2329D2BC8(&qword_27DDBE2A8, MEMORY[0x277CD8B10]);
  }

  while ((sub_2329D3374() & 1) == 0);
  return v4 != v5;
}

xpc_object_t sub_2329CEA14(uint64_t a1)
{
  v2 = sub_2329D3084();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v55 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v53 - v7;
  MEMORY[0x28223BE20](v6);
  v12 = &v53 - v11;
  v67 = MEMORY[0x277D84F90];
  v13 = *(a1 + 16);
  if (v13)
  {
    v60 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_logger;
    v16 = *(v9 + 16);
    v14 = v9 + 16;
    v15 = v16;
    v17 = (a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64)));
    v64 = *(v14 + 56);
    v65 = v14;
    v63 = (v14 - 8);
    v62 = MEMORY[0x277D84F90];
    *&v10 = 136315138;
    v54 = v10;
    v61 = v16;
    v16(v12, v17, v2);
    while (1)
    {
      if (sub_2329D3064())
      {
        v19 = swift_unknownObjectRetain();
        MEMORY[0x23838A9B0](v19);
        if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v29 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2329D34A4();
          v15 = v61;
        }

        sub_2329D34B4();
        swift_unknownObjectRelease();
        (*v63)(v12, v2);
        v62 = v67;
      }

      else
      {
        v15(v8, v12, v2);
        v20 = sub_2329D2DF4();
        v21 = sub_2329D3614();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v57 = v22;
          v58 = swift_slowAlloc();
          v66 = v58;
          *v22 = v54;
          v61(v55, v8, v2);
          v23 = sub_2329D33D4();
          v56 = v21;
          v25 = v24;
          v59 = *v63;
          v59(v8, v2);
          v26 = sub_2329A8630(v23, v25, &v66);

          v27 = v57;
          *(v57 + 1) = v26;
          _os_log_impl(&dword_2329A4000, v20, v56, "Could not obtain the underlying C type of %s", v27, 0xCu);
          v28 = v58;
          __swift_destroy_boxed_opaque_existential_0(v58);
          MEMORY[0x23838B4F0](v28, -1, -1);
          MEMORY[0x23838B4F0](v27, -1, -1);

          v59(v12, v2);
        }

        else
        {

          v18 = *v63;
          (*v63)(v8, v2);
          v18(v12, v2);
        }

        v15 = v61;
      }

      v17 += v64;
      if (!--v13)
      {
        break;
      }

      v15(v12, v17, v2);
    }
  }

  else
  {
    v62 = MEMORY[0x277D84F90];
  }

  v30 = v62;

  v31 = sub_2329D2DF4();
  v32 = sub_2329D3604();
  v33 = v30 >> 62;
  if (os_log_type_enabled(v31, v32))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    if (v33)
    {
      v35 = sub_2329D3864();
    }

    else
    {
      v35 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v34 + 4) = v35;

    _os_log_impl(&dword_2329A4000, v31, v32, "Successfully converted %ld NWEndpoint instances to nw_endpoint_t objects", v34, 0xCu);
    MEMORY[0x23838B4F0](v34, -1, -1);
  }

  else
  {
  }

  if (!v33)
  {
    v36 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
      v66 = MEMORY[0x277D84F90];
      sub_2329D3834();
      goto LABEL_22;
    }

LABEL_34:

    return xpc_array_create_empty();
  }

  if (!sub_2329D3864())
  {
    goto LABEL_34;
  }

  v45 = sub_2329D3864();
  if (!v45)
  {

    v40 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_28;
    }

LABEL_37:
    if (sub_2329D3864())
    {
      v46 = sub_2329D3864();

      v41 = sub_2329D1784(v47);
      swift_bridgeObjectRelease_n();
      v42 = v46;
      goto LABEL_29;
    }

    goto LABEL_39;
  }

  v36 = v45;
  v66 = MEMORY[0x277D84F90];
  sub_2329D3834();
  if (v36 < 0)
  {
    __break(1u);
    goto LABEL_34;
  }

LABEL_22:
  v37 = 0;
  do
  {
    if ((v30 & 0xC000000000000001) != 0)
    {
      MEMORY[0x23838AD30](v37, v30);
    }

    else
    {
      v39 = *(v30 + 8 * v37 + 32);
      swift_unknownObjectRetain();
    }

    ++v37;
    nw_endpoint_copy_dictionary();
    swift_unknownObjectRelease();
    sub_2329D3814();
    v38 = *(v66 + 16);
    sub_2329D3844();
    sub_2329D3854();
    sub_2329D3824();
  }

  while (v36 != v37);

  v40 = v66;
  if (v66 >> 62)
  {
    goto LABEL_37;
  }

LABEL_28:
  v41 = v40 & 0xFFFFFFFFFFFFFF8;
  v42 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v42)
  {
LABEL_29:
    v43 = xpc_array_create((v41 + 32), v42);
    swift_unknownObjectRelease();
    return v43;
  }

LABEL_39:

  v48 = sub_2329D2DF4();
  v49 = sub_2329D3614();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_2329A4000, v48, v49, "Could not convert nw_endpoint_t objects to their XPC representation, returning", v50, 2u);
    MEMORY[0x23838B4F0](v50, -1, -1);
  }

  v51 = sub_2329D2E44();
  sub_2329D2BC8(&qword_27DDBE230, MEMORY[0x277D6B2F0]);
  swift_allocError();
  (*(*(v51 - 8) + 104))(v52, *MEMORY[0x277D6B2E8], v51);
  return swift_willThrow();
}

uint64_t NDFBrowser.deinit()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_logger;
  v2 = sub_2329D2E14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browser);

  sub_2329BFB8C(v0 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_discoveryContinuation, &qword_27DDBE208, &qword_2329D52A8);
  return v0;
}

uint64_t NDFBrowser.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_logger;
  v2 = sub_2329D2E14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browser);

  sub_2329BFB8C(v0 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_discoveryContinuation, &qword_27DDBE208, &qword_2329D52A8);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2329CF2F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE280, &qword_2329D5380);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE288, &qword_2329D5388);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE290, &qword_2329D5390);
  v14 = *(v13 - 8);
  v24 = v13;
  v25 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *a1;
  sub_2329D2B80(&qword_2814DA7E8, &qword_27DDBE280, &qword_2329D5380);
  sub_2329D2C64();
  swift_getKeyPath();
  sub_2329D2C44();

  (*(v4 + 8))(v7, v3);
  swift_getKeyPath();
  sub_2329D2B80(&qword_2814DA810, &qword_27DDBE288, &qword_2329D5388);
  sub_2329D2C44();

  (*(v9 + 8))(v12, v8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE298, &qword_2329D53F0);
  v20 = v26;
  v26[3] = v19;
  v20[4] = sub_2329D2964();
  __swift_allocate_boxed_opaque_existential_1(v20);
  sub_2329D2B80(&qword_2814DA800, &qword_27DDBE290, &qword_2329D5390);
  v21 = v24;
  sub_2329D2C54();
  return (*(v25 + 8))(v17, v21);
}

uint64_t sub_2329CF650@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  result = sub_2329D30D4();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void *sub_2329CF698@<X0>(void *result@<X0>, BOOL *a2@<X8>)
{
  v2 = result[1];
  v3 = *result & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  *a2 = v3 == 0;
  return result;
}

uint64_t sub_2329CF6BC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE260, &qword_2329D5360);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    (*(v7 + 16))(v10, a1, v6);
    if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277D85870])
    {
      (*(v7 + 8))(v10, v6);

      v13 = sub_2329D2DF4();
      v14 = sub_2329D35F4();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v20[1] = a3;
        v21 = v16;
        *v15 = 136315138;

        v17 = sub_2329D33D4();
        v19 = sub_2329A8630(v17, v18, &v21);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_2329A4000, v13, v14, "Cancelling browser %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x23838B4F0](v16, -1, -1);
        MEMORY[0x23838B4F0](v15, -1, -1);
      }

      sub_2329D3284();
      *(v12 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browsingInProgress) = 0;
    }

    else
    {

      return (*(v7 + 8))(v10, v6);
    }
  }

  return result;
}

uint64_t sub_2329CF964(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = sub_2329D3084();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE258, &qword_2329D5358);
  v38 = *(v48 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v37 - v7;
  v54 = sub_2329D3274();
  v8 = *(v54 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v54);
  v45 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2329D3254();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  v19 = a1 + 56;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a1 + 56);
  v23 = (v20 + 63) >> 6;
  v24 = v12 + 16;
  v52 = v12 + 88;
  v53 = v12 + 32;
  v51 = *MEMORY[0x277CD9130];
  v40 = (v12 + 96);
  v41 = (v12 + 8);
  v38 += 8;
  v39 = (v8 + 32);
  v37 = (v8 + 8);
  v25 = a1;

  v27 = 0;
  v46 = a1;
  v43 = v16;
  v44 = v12;
  v42 = v18;
  while (v22)
  {
    v28 = v27;
LABEL_11:
    v29 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    (*(v12 + 16))(v18, *(v25 + 48) + *(v12 + 72) * (v29 | (v28 << 6)), v11);
    (*(v12 + 32))(v16, v18, v11);
    v30 = (*(v12 + 88))(v16, v11);
    if (v30 == v51)
    {
      (*v40)(v16, v11);
      v31 = v45;
      (*v39)(v45, v16, v54);
      sub_2329D3264();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE200, &unk_2329D5298);
      v32 = v24;
      v33 = v11;
      v34 = v47;
      v12 = v44;
      sub_2329D3564();
      v25 = v46;
      v35 = v34;
      v11 = v33;
      v24 = v32;
      (*v38)(v35, v48);
      v36 = v31;
      v18 = v42;
      v16 = v43;
      result = (*v37)(v36, v54);
    }

    else
    {
      result = (*v41)(v16, v11);
    }

    v27 = v28;
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v23)
    {
    }

    v22 = *(v19 + 8 * v28);
    ++v27;
    if (v22)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_2329CFDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v95 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE208, &qword_2329D52A8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v88 - v8;
  v10 = sub_2329D30E4();
  v96 = *(v10 - 8);
  v11 = *(v96 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v97 = (&v88 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v93 = &v88 - v18;
  MEMORY[0x28223BE20](v17);
  v94 = &v88 - v19;
  v20 = sub_2329D3234();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v92 = &v88 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v88 - v28;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v31 = Strong;
  v90 = a4;
  v91 = v9;
  v32 = *(v21 + 16);
  v89 = a1;
  v32(v29, a1, v20);
  v33 = (*(v21 + 88))(v29, v20);
  if (v33 == *MEMORY[0x277CD9108])
  {
    (*(v21 + 96))(v29, v20);
    v35 = v96;
    v34 = v97;
    (*(v96 + 32))(v97, v29, v10);
    v36 = *(v35 + 16);
    v36(v14, v34, v10);
    v89 = v31;
    v37 = sub_2329D2DF4();
    v38 = sub_2329D3614();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v39 = 138412290;
      sub_2329D2BC8(&qword_27DDBE250, MEMORY[0x277CD8FC0]);
      swift_allocError();
      v40 = v36;
      v36(v41, v14, v10);
      v42 = _swift_stdlib_bridgeErrorToNSError();
      v43 = *(v35 + 8);
      v43(v14, v10);
      *(v39 + 4) = v42;
      v44 = v94;
      *v94 = v42;
      v36 = v40;
      _os_log_impl(&dword_2329A4000, v37, v38, "Browser failed to browse for endpoints due to %@", v39, 0xCu);
      sub_2329BFB8C(v44, &qword_27DDBE070, &unk_2329D4750);
      MEMORY[0x23838B4F0](v44, -1, -1);
      MEMORY[0x23838B4F0](v39, -1, -1);
    }

    else
    {

      v43 = *(v35 + 8);
      v43(v14, v10);
    }

    sub_2329D3284();
    sub_2329D2BC8(&qword_27DDBE250, MEMORY[0x277CD8FC0]);
    v58 = swift_allocError();
    v59 = v97;
    v36(v60, v97, v10);
    v98 = v58;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE200, &unk_2329D5298);
    sub_2329D3574();
    v43(v59, v10);
    v62 = v89;
    *(v89 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browsingInProgress) = 0;
    v63 = v91;
    (*(*(v61 - 8) + 56))(v91, 1, 1, v61);
    v64 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_discoveryContinuation;
    swift_beginAccess();
    sub_2329D0E50(v63, v62 + v64);
    swift_endAccess();

    return;
  }

  if (v33 == *MEMORY[0x277CD9110])
  {
    (*(v21 + 96))(v29, v20);
    v45 = v96;
    v46 = v94;
    (*(v96 + 32))(v94, v29, v10);
    v47 = *(v45 + 16);
    v48 = v93;
    v47(v93, v46, v10);
    v49 = v31;
    v50 = sub_2329D2DF4();
    v51 = sub_2329D3604();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      sub_2329D2BC8(&qword_27DDBE250, MEMORY[0x277CD8FC0]);
      swift_allocError();
      v89 = v49;
      v54 = v10;
      v47(v55, v48, v10);
      v56 = _swift_stdlib_bridgeErrorToNSError();
      v57 = *(v45 + 8);
      v57(v48, v54);
      *(v52 + 4) = v56;
      *v53 = v56;
      _os_log_impl(&dword_2329A4000, v50, v51, "Browser waiting for connectivity due to %@", v52, 0xCu);
      sub_2329BFB8C(v53, &qword_27DDBE070, &unk_2329D4750);
      MEMORY[0x23838B4F0](v53, -1, -1);
      MEMORY[0x23838B4F0](v52, -1, -1);

      v57(v94, v54);
    }

    else
    {

      v69 = *(v45 + 8);
      v69(v48, v10);
      v69(v46, v10);
    }

    return;
  }

  if (v33 == *MEMORY[0x277CD9100])
  {
    v65 = sub_2329D2DF4();
    v66 = sub_2329D3604();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      v68 = "Browser in setup mode";
LABEL_17:
      _os_log_impl(&dword_2329A4000, v65, v66, v68, v67, 2u);
      MEMORY[0x23838B4F0](v67, -1, -1);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (v33 == *MEMORY[0x277CD90F8])
  {
    v65 = sub_2329D2DF4();
    v66 = sub_2329D3604();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      v68 = "Browser is ready";
      goto LABEL_17;
    }

LABEL_18:

    return;
  }

  v70 = v31;
  if (v33 == *MEMORY[0x277CD9118])
  {
    v71 = sub_2329D2DF4();
    v72 = sub_2329D3604();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_2329A4000, v71, v72, "Browser was cancelled", v73, 2u);
      MEMORY[0x23838B4F0](v73, -1, -1);
    }

    v98 = 0;
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE200, &unk_2329D5298);
    sub_2329D3574();
    *(v70 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browsingInProgress) = 0;
    v75 = v91;
    (*(*(v74 - 8) + 56))(v91, 1, 1, v74);
    v76 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_discoveryContinuation;
    swift_beginAccess();
    sub_2329D0E50(v75, v70 + v76);
    swift_endAccess();
  }

  else
  {
    v77 = v92;
    v32(v92, v89, v20);
    v78 = sub_2329D2DF4();
    v79 = sub_2329D3614();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v89 = v70;
      v81 = v80;
      v97 = swift_slowAlloc();
      v98 = v97;
      *v81 = 136315138;
      v32(v25, v77, v20);
      v82 = sub_2329D33D4();
      LODWORD(v96) = v79;
      v84 = v83;
      v85 = *(v21 + 8);
      v85(v77, v20);
      v86 = sub_2329A8630(v82, v84, &v98);

      *(v81 + 4) = v86;
      _os_log_impl(&dword_2329A4000, v78, v96, "Browser entered unknown state %s", v81, 0xCu);
      v87 = v97;
      __swift_destroy_boxed_opaque_existential_0(v97);
      MEMORY[0x23838B4F0](v87, -1, -1);
      MEMORY[0x23838B4F0](v81, -1, -1);
    }

    else
    {

      v85 = *(v21 + 8);
      v85(v77, v20);
    }

    v85(v29, v20);
  }
}

uint64_t sub_2329D0980()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE208, &qword_2329D52A8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_2329D3284();
    }

    *(v5 + OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_browsingInProgress) = 0;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE200, &unk_2329D5298);
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = OBJC_IVAR____TtC19SymptomDistribution10NDFBrowser_discoveryContinuation;
    swift_beginAccess();
    sub_2329D0E50(v3, v5 + v7);
    swift_endAccess();
  }

  return result;
}

size_t sub_2329D0AE4(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE2A0, &unk_2329D53F8);
  v10 = *(sub_2329D3084() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2329D3084() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2329D0CBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE2B0, &qword_2329D5408);
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

void *sub_2329D0DC8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDE68, &unk_2329D4920);
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
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_2329D0E50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE208, &qword_2329D52A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2329D0EC0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2329D3934();
  sub_2329D3414();
  v9 = sub_2329D3954();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2329D38D4() & 1) != 0)
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

    sub_2329D1270(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2329D1010(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE2B8, &unk_2329D5410);
  result = sub_2329D3794();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_2329D3934();
      sub_2329D3414();
      result = sub_2329D3954();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2329D1270(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_2329D1010(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2329D13F0();
      goto LABEL_16;
    }

    sub_2329D154C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2329D3934();
  sub_2329D3414();
  result = sub_2329D3954();
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

      result = sub_2329D38D4();
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
  result = sub_2329D38F4();
  __break(1u);
  return result;
}

void *sub_2329D13F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE2B8, &unk_2329D5410);
  v2 = *v0;
  v3 = sub_2329D3784();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_2329D154C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE2B8, &unk_2329D5410);
  result = sub_2329D3794();
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_2329D3934();

      sub_2329D3414();
      result = sub_2329D3954();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void *sub_2329D1784(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_2329D0DC8(v2, 0);

    MEMORY[0x23838AD20](v3 + 4, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_2329D3864();
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t sub_2329D1820(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v45 = a2;
  v46 = sub_2329D31F4();
  v43 = *(v46 - 8);
  v2 = *(v43 + 64);
  v3 = MEMORY[0x28223BE20](v46);
  v42 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE268, &qword_2329D5368);
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - v9;
  v11 = sub_2329D31B4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_2329D31E4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v40 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v40 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v40 - v25;
  sub_2329D3144();
  sub_2329D31C4();
  sub_2329D3184();
  v27 = *(v14 + 8);
  v27(v18, v13);
  sub_2329D3194();
  v27(v21, v13);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE270, &qword_2329D5370);
  sub_2329D2DE4();
  sub_2329D31D4();
  (*(v40 + 8))(v10, v41);
  v27(v24, v13);
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE278, &qword_2329D5378) + 48);
  v29 = v45;
  *v6 = v44;
  *(v6 + 1) = v29;
  (*(v14 + 16))(&v6[v28], v26, v13);
  v30 = v43;
  v31 = v46;
  (*(v43 + 104))(v6, *MEMORY[0x277CD90A8], v46);
  v32 = v30;
  v33 = *(v30 + 16);
  v34 = v31;
  v33(v42, v6, v31);
  sub_2329D30C4();

  sub_2329A9278();
  v35 = sub_2329D3294();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v38 = sub_2329D3224();
  (*(v32 + 8))(v6, v34);
  v27(v26, v13);
  return v38;
}

uint64_t sub_2329D1C8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x23838AB10](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2329D0EC0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void *sub_2329D1D24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE210, &qword_2329D52B0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v75 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v73 = &v65 - v6;
  v7 = sub_2329D3084();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v66 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v65 = &v65 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v81 = &v65 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v18 = &v65 - v17;
  v19 = *(a1 + 16);
  v82 = v15;
  v74 = v16;
  v78 = v19;
  v70 = a1;
  if (v19)
  {
    v20 = *(v16 + 16);
    v21 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v79 = *(v16 + 72);
    v80 = v20;
    v22 = (v16 + 8);
    v23 = MEMORY[0x277D84F90];
    (v20)(v18, v21, v7);
    while (1)
    {
      v25 = sub_2329D3074();
      v27 = v26;
      (*v22)(v18, v7);
      if (v27)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_2329D0CBC(0, *(v23 + 2) + 1, 1, v23);
        }

        v29 = *(v23 + 2);
        v28 = *(v23 + 3);
        if (v29 >= v28 >> 1)
        {
          v23 = sub_2329D0CBC((v28 > 1), v29 + 1, 1, v23);
        }

        *(v23 + 2) = v29 + 1;
        v24 = &v23[16 * v29];
        *(v24 + 4) = v25;
        *(v24 + 5) = v27;
        v7 = v82;
      }

      v21 += v79;
      if (!--v19)
      {
        break;
      }

      (v80)(v18, v21, v7);
    }
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  v30 = sub_2329D1C8C(v23);

  v32 = 0;
  v34 = v30 + 56;
  v33 = *(v30 + 56);
  v72 = v30;
  v35 = 1 << *(v30 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v33;
  v38 = (v35 + 63) >> 6;
  v39 = v73;
  v79 = (v74 + 8);
  v80 = (v74 + 16);
  v68 = (v74 + 32);
  v76 = (v74 + 48);
  v77 = (v74 + 56);
  v67 = MEMORY[0x277D84F90];
  v40 = v78;
  v71 = v30 + 56;
  v69 = v38;
LABEL_15:
  v41 = v32;
  v42 = v75;
  v43 = v81;
  if (!v37)
  {
    goto LABEL_17;
  }

  do
  {
    v32 = v41;
LABEL_20:
    if (v40)
    {
      v44 = (*(v72 + 48) + ((v32 << 10) | (16 * __clz(__rbit64(v37)))));
      v45 = v40;
      v47 = *v44;
      v46 = v44[1];
      v48 = v70 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
      v49 = *(v74 + 72);
      v50 = *(v74 + 16);

      do
      {
        v50(v43, v48, v7);
        v52 = sub_2329D3074();
        if (v53)
        {
          if (v52 == v47 && v53 == v46)
          {

LABEL_28:

            v39 = v73;
            v43 = v81;
            v7 = v82;
            (*v68)(v73, v81, v82);
            v54 = 0;
            v42 = v75;
            goto LABEL_31;
          }

          v51 = sub_2329D38D4();

          if (v51)
          {
            goto LABEL_28;
          }
        }

        v43 = v81;
        v7 = v82;
        (*v79)(v81, v82);
        v48 += v49;
        --v45;
      }

      while (v45);

      v54 = 1;
      v42 = v75;
      v39 = v73;
LABEL_31:
      v34 = v71;
      v38 = v69;
    }

    else
    {
      v54 = 1;
    }

    v37 &= v37 - 1;
    (*v77)(v39, v54, 1, v7);
    sub_2329BF474(v39, v42, &qword_27DDBE210, &qword_2329D52B0);
    if ((*v76)(v42, 1, v7) != 1)
    {
      v55 = *v68;
      v56 = v65;
      (*v68)(v65, v42, v7);
      (*v80)(v66, v56, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_2329D0AE4(0, v67[2] + 1, 1, v67);
      }

      v58 = v67[2];
      v57 = v67[3];
      v59 = v38;
      if (v58 >= v57 >> 1)
      {
        v67 = sub_2329D0AE4(v57 > 1, v58 + 1, 1, v67);
      }

      v60 = v74;
      v61 = v82;
      (*(v74 + 8))(v65, v82);
      sub_2329BFB8C(v39, &qword_27DDBE210, &qword_2329D52B0);
      v62 = v66;
      v63 = v67;
      v67[2] = v58 + 1;
      v64 = v63 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v58;
      v7 = v61;
      result = (v55)(v64, v62, v61);
      v34 = v71;
      v38 = v59;
      v40 = v78;
      goto LABEL_15;
    }

    sub_2329BFB8C(v39, &qword_27DDBE210, &qword_2329D52B0);
    result = sub_2329BFB8C(v42, &qword_27DDBE210, &qword_2329D52B0);
    v41 = v32;
    v40 = v78;
  }

  while (v37);
LABEL_17:
  while (1)
  {
    v32 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v32 >= v38)
    {

      return v67;
    }

    v37 = *(v34 + 8 * v32);
    ++v41;
    if (v37)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2329D23BC(uint64_t a1, uint64_t a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE200, &unk_2329D5298) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_2329CF964(a2, v5);
}

void sub_2329D2438(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBE200, &unk_2329D5298) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_2329CFDC0(a1, v4, v5, v6);
}

uint64_t objectdestroy_4Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2329D24F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2329D0980();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for NDFBrowser()
{
  result = qword_2814DAAF0;
  if (!qword_2814DAAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2329D256C()
{
  v0 = sub_2329D2E14();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2329D2900();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of NDFBrowser.startDiscovery(for:cancelAfter:deviceType:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v10 = *(*v4 + 200);
  v15 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2329D27CC;
  v13.n128_f64[0] = a4;

  return v15(a1, a2, a3, v13);
}

uint64_t sub_2329D27CC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void sub_2329D2900()
{
  if (!qword_2814D9E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDBE200, &unk_2329D5298);
    v0 = sub_2329D3724();
    if (!v1)
    {
      atomic_store(v0, &qword_2814D9E80);
    }
  }
}

unint64_t sub_2329D2964()
{
  result = qword_2814DA7F8;
  if (!qword_2814DA7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDBE298, &qword_2329D53F0);
    sub_2329D29E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DA7F8);
  }

  return result;
}

unint64_t sub_2329D29E8()
{
  result = qword_2814DA808;
  if (!qword_2814DA808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDBE290, &qword_2329D5390);
    sub_2329D2A6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DA808);
  }

  return result;
}

unint64_t sub_2329D2A6C()
{
  result = qword_2814DA818;
  if (!qword_2814DA818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDBE288, &qword_2329D5388);
    sub_2329D2B80(&qword_2814DA7F0, &qword_27DDBE280, &qword_2329D5380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DA818);
  }

  return result;
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

uint64_t sub_2329D2B80(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2329D2BC8(unint64_t *a1, void (*a2)(uint64_t))
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