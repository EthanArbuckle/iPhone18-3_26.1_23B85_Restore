uint64_t sub_22706DC8C(uint64_t a1)
{
  v2 = type metadata accessor for ServerConnectionType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22706DCE8()
{
  v1 = OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink__shrinkJsFootprintEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService));
  v3 = *(v0 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_lock);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_fileStore));
  sub_226EA4FC0(v0 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_state);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OfflineScriptLink()
{
  result = qword_2813A28B8;
  if (!qword_2813A28B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22706DE24()
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for ScriptLinkState();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_22706DF0C()
{
  result = qword_27D7B9FA8;
  if (!qword_27D7B9FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9FA8);
  }

  return result;
}

BOOL sub_22706DF60()
{
  v0 = sub_22766D280();
  v2 = v1;
  v3 = *MEMORY[0x277CEC2F8];
  if (v0 == sub_22766C000() && v2 == v4)
  {
  }

  else
  {
    v6 = sub_22766D190();

    if ((v6 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if (sub_22706E044())
  {
    return 1;
  }

LABEL_10:

  return sub_22706E098();
}

BOOL sub_22706E098()
{
  v0 = sub_22766D280();
  v2 = v1;
  v3 = *MEMORY[0x277CEC308];
  if (v0 == sub_22766C000() && v2 == v4)
  {

    return sub_22766D270() == 3027;
  }

  v6 = sub_22766D190();

  result = 0;
  if (v6)
  {
    return sub_22766D270() == 3027;
  }

  return result;
}

uint64_t sub_22706E154@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53CB0];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22706E1C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2276633E0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22706E1F0(uint64_t a1)
{
  *(a1 + 24) = sub_22706E258(&qword_2813A5810);
  result = sub_22706E258(&unk_2813A5800);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_22706E258(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227663480();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22706E300()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22706E35C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22766D370();
  if (v2)
  {
    MEMORY[0x22AA996B0](1);
    sub_22766C100();
  }

  else
  {
    MEMORY[0x22AA996B0](0);
  }

  return sub_22766D3F0();
}

uint64_t sub_22706E3CC()
{
  if (!v0[1])
  {
    return MEMORY[0x22AA996B0](0);
  }

  v1 = *v0;
  MEMORY[0x22AA996B0](1);

  return sub_22766C100();
}

uint64_t sub_22706E444()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22766D370();
  if (v2)
  {
    MEMORY[0x22AA996B0](1);
    sub_22766C100();
  }

  else
  {
    MEMORY[0x22AA996B0](0);
  }

  return sub_22766D3F0();
}

uint64_t sub_22706E4B0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_22766D190();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

unint64_t sub_22706E4F8()
{
  result = qword_27D7B9FC8;
  if (!qword_27D7B9FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9FC8);
  }

  return result;
}

uint64_t sub_22706E54C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22706E59C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22706E5F0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_22706E608(void *result, int a2)
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

void sub_22706E638(void *a1)
{
  v3 = sub_227662190();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = [a1 identifier];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  sub_22766C000();

  v7 = [a1 dateReleased];
  if (!v7)
  {

LABEL_6:
    v9 = sub_227664DD0();
    sub_22706F008(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D51028], v9);
    swift_willThrow();
    goto LABEL_7;
  }

  v8 = v7;
  sub_22766C000();

  sub_226ED4548([a1 categoryIdentifiers]);
  if (v1)
  {
  }

  else
  {
    sub_227662100();
    sub_227665870();
  }

LABEL_7:
}

void sub_22706E864(void *a1, uint64_t a2)
{
  v5 = sub_227662190();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227665880();
  v10 = sub_22766BFD0();

  [a1 setIdentifier_];

  v11 = sub_2276658A0();
  v12 = sub_2275335E8(v11);
  if (!v2)
  {
    v13 = sub_227533858(a2, v12);

    [a1 setCategoryIdentifiers_];

    sub_227665890();
    sub_2276620E0();
    (*(v6 + 8))(v9, v5);
    v14 = sub_22766BFD0();

    [a1 setDateReleased_];
  }
}

size_t static CatalogTipReference.representativeSamples()()
{
  v32 = sub_227662190();
  v25 = *(v32 - 8);
  v0 = *(v25 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9FD0, &qword_2276772D0);
  v2 = *(v30 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v30);
  v5 = v24 - v4;
  v29 = sub_2276658B0();
  v6 = *(v29 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v29);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766C090();
  v11 = sub_22766C2D0();
  v12 = MEMORY[0x22AA8E410]();
  v41 = v11;
  v42[0] = v10;
  v42[1] = v42;
  v42[2] = &v41;
  v40 = v12;
  v42[3] = &v40;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E30, &unk_227672460);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9FD8, &qword_2276772D8);
  v34 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v35 = sub_226F5BF60(&qword_27D7B9FE0, &qword_27D7B8E30, &unk_227672460);
  v36 = sub_226F5BF60(&qword_27D7B9FE8, &qword_27D7B9FD8, &qword_2276772D8);
  v13 = sub_2276638E0();

  v14 = *(v13 + 16);
  if (v14)
  {
    v33 = MEMORY[0x277D84F90];
    result = sub_226F1FF28(0, v14, 0);
    v16 = 0;
    v17 = v33;
    v26 = v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v25 += 16;
    v24[1] = v6 + 32;
    v27 = v2;
    v28 = v13;
    while (v16 < *(v13 + 16))
    {
      v18 = v6;
      sub_22706EED8(v26 + *(v2 + 72) * v16, v5);
      v19 = *v5;
      v20 = *(v5 + 1);
      v21 = *(v5 + 2);
      (*v25)(v31, &v5[*(v30 + 64)], v32);

      sub_227665870();
      sub_22706EF48(v5);
      v33 = v17;
      v23 = *(v17 + 16);
      v22 = *(v17 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_226F1FF28(v22 > 1, v23 + 1, 1);
        v17 = v33;
      }

      ++v16;
      *(v17 + 16) = v23 + 1;
      v6 = v18;
      result = (*(v18 + 32))(v17 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v23, v9, v29);
      v2 = v27;
      v13 = v28;
      if (v14 == v16)
      {

        return v17;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_22706EED8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9FD0, &qword_2276772D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22706EF48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9FD0, &qword_2276772D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22706EFB0(uint64_t a1)
{
  result = sub_22706F008(&qword_27D7B9FF0, MEMORY[0x277D519E0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22706F008(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22706F064()
{
  result = qword_27D7B9FF8;
  if (!qword_27D7B9FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9FF8);
  }

  return result;
}

unint64_t sub_22706F0B8(uint64_t a1)
{
  result = sub_22706F0E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22706F0E0()
{
  result = qword_27D7BA000;
  if (!qword_27D7BA000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA000);
  }

  return result;
}

uint64_t sub_22706F134()
{
  v0 = sub_22766C090();
  v1 = *(v0 + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_226F1EE70(0, v1, 0);
    v2 = v10;
    v3 = (v0 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = *(v10 + 16);
      v7 = *(v10 + 24);

      if (v6 >= v7 >> 1)
      {
        sub_226F1EE70((v7 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      v8 = v10 + 16 * v6;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_22706F27C(sqlite3_stmt *a1, int a2, uint64_t a3, unint64_t a4, unsigned __int8 a5)
{
  v52 = *MEMORY[0x277D85DE8];
  if (a5 <= 2u)
  {
    if (!a5)
    {
      result = sqlite3_bind_double(a1, a2, *&a3);
      if (result)
      {
        goto LABEL_13;
      }

      goto LABEL_67;
    }

    if (a5 == 1)
    {
      result = sqlite3_bind_int(a1, a2, a3);
      if (!result)
      {
        goto LABEL_67;
      }

LABEL_13:
      if (result != 100)
      {
        if (result == 101)
        {
          goto LABEL_30;
        }

        goto LABEL_24;
      }

      goto LABEL_29;
    }

    goto LABEL_21;
  }

  if (a5 == 3)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      v5 = a1;
      v38 = a2;
      v39 = a3;
      a1 = sub_22766C160();
      if (a1 < 0xFFFFFFFF80000000)
      {
        __break(1u);
        goto LABEL_70;
      }

      v11 = a1;
      a2 = v38;
      a1 = v5;
      a3 = v39;
    }

    else
    {
      if ((a4 & 0x2000000000000000) != 0)
      {
        goto LABEL_42;
      }

      v11 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v11 > 0x7FFFFFFF)
    {
      __break(1u);
LABEL_21:
      result = sqlite3_bind_int64(a1, a2, a3);
      if (result)
      {
        if (result != 101)
        {
          if (result != 100)
          {
LABEL_24:
            v12 = result;
            v13 = _s15SeymourServices19SQLiteDatabaseErrorO8rawValueACSgs5Int32V_tcfC_0(result);
            if (v13 != 28)
            {
              v25 = v13;
              sub_22706F9EC();
              swift_allocError();
              *v26 = v25;
LABEL_66:
              result = swift_willThrow();
              goto LABEL_67;
            }

            sub_22706F95C();
            swift_allocError();
            *v14 = v12;
            *(v14 + 8) = 0;
            v15 = 1;
LABEL_65:
            *(v14 + 16) = v15;
            goto LABEL_66;
          }

LABEL_29:
          result = 1;
          goto LABEL_67;
        }

        goto LABEL_30;
      }

      goto LABEL_67;
    }

LABEL_42:
    v50 = MEMORY[0x28223BE20](a1);
    a1 = MEMORY[0x28223BE20](v50);
    if ((v28 & 0x1000000000000000) == 0)
    {
      if ((v28 & 0x2000000000000000) != 0)
      {
        *&v51 = v27;
        *(&v51 + 1) = v28 & 0xFFFFFFFFFFFFFFLL;
        if (qword_27D7B7EF0 == -1)
        {
LABEL_60:
          v31 = qword_27D7CE2C0;
          v32 = &v51;
LABEL_61:
          v33 = sqlite3_bind_text(a1, a2, v32, v29, v31);
          goto LABEL_62;
        }

LABEL_77:
        v44 = a1;
        v45 = a2;
        v46 = v29;
        swift_once();
        LODWORD(v29) = v46;
        a1 = v44;
        a2 = v45;
        goto LABEL_60;
      }

      if ((v27 & 0x1000000000000000) != 0)
      {
        v30 = v28 & 0xFFFFFFFFFFFFFFFLL;
        if (qword_27D7B7EF0 != -1)
        {
          v47 = a1;
          v48 = a2;
          v49 = v29;
          swift_once();
          LODWORD(v29) = v49;
          a1 = v47;
          a2 = v48;
        }

        v31 = qword_27D7CE2C0;
        v32 = (v30 + 32);
        goto LABEL_61;
      }
    }

    sub_22766CE10();
    v33 = v51;
LABEL_62:
    result = sub_2273946A4(v33);
    goto LABEL_67;
  }

  if (a5 == 4)
  {
    v7 = a4 >> 62;
    if ((a4 >> 62) <= 1)
    {
      if (!v7)
      {
        *&v51 = a3;
        LODWORD(v5) = BYTE6(a4);
        WORD4(v51) = a4;
        BYTE10(v51) = BYTE2(a4);
        BYTE11(v51) = BYTE3(a4);
        BYTE12(v51) = BYTE4(a4);
        BYTE13(v51) = BYTE5(a4);
        if (qword_27D7B7EF0 == -1)
        {
LABEL_11:
          v8 = qword_27D7CE2C0;
          v9 = &v51;
          v10 = v5;
LABEL_58:
          v33 = sqlite3_bind_blob(a1, a2, v9, v10, v8);
          goto LABEL_62;
        }

LABEL_72:
        v40 = a1;
        v41 = a2;
        swift_once();
        a1 = v40;
        a2 = v41;
        goto LABEL_11;
      }

      v29 = HIDWORD(a3);
      LODWORD(v18) = HIDWORD(a3) - a3;
      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        v34 = a3;
        if (a3 <= a3 >> 32)
        {
          v19 = a1;
          v20 = a2;
          v35 = sub_227662060();
          if (v35)
          {
            v22 = v35;
            v36 = sub_227662090();
            if (!__OFSUB__(v34, v36))
            {
              v22 = (v22 + v34 - v36);
              sub_227662080();
              if (v22)
              {
                if (qword_27D7B7EF0 == -1)
                {
LABEL_55:
                  v8 = qword_27D7CE2C0;
                  a1 = v19;
                  a2 = v20;
                  v9 = v22;
                  v10 = v18;
                  goto LABEL_58;
                }

LABEL_80:
                swift_once();
                goto LABEL_55;
              }

LABEL_64:
              sub_22706F95C();
              swift_allocError();
              *v14 = 0;
              *(v14 + 8) = 0;
              v15 = 2;
              goto LABEL_65;
            }

            __break(1u);
            goto LABEL_79;
          }

          goto LABEL_63;
        }

        __break(1u);
        goto LABEL_77;
      }

      goto LABEL_74;
    }

    if (v7 != 2)
    {
      *(&v51 + 6) = 0;
      *&v51 = 0;
      if (qword_27D7B7EF0 == -1)
      {
LABEL_57:
        v8 = qword_27D7CE2C0;
        v9 = &v51;
        v10 = 0;
        goto LABEL_58;
      }

LABEL_75:
      v42 = a1;
      v43 = a2;
      swift_once();
      a1 = v42;
      a2 = v43;
      goto LABEL_57;
    }

    v17 = *(a3 + 16);
    v16 = *(a3 + 24);
    v18 = v16 - v17;
    if (__OFSUB__(v16, v17))
    {
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (v18 >= 0xFFFFFFFF80000000)
    {
      if (v18 <= 0x7FFFFFFF)
      {
        v19 = a1;
        v20 = a2;
        v21 = sub_227662060();
        if (v21)
        {
          v22 = v21;
          v23 = sub_227662090();
          if (!__OFSUB__(v17, v23))
          {
            v24 = (v22 + v17 - v23);
            sub_227662080();
            if (v24)
            {
              if (qword_27D7B7EF0 != -1)
              {
                swift_once();
              }

              v8 = qword_27D7CE2C0;
              a1 = v19;
              a2 = v20;
              v9 = v24;
              v10 = v18;
              goto LABEL_58;
            }

            goto LABEL_64;
          }

LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

LABEL_63:
        sub_227662080();
        goto LABEL_64;
      }

LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  result = sqlite3_bind_null(a1, a2);
  if (result)
  {
    if (result != 101)
    {
      if (result != 100)
      {
        goto LABEL_24;
      }

      goto LABEL_29;
    }

LABEL_30:
    result = 2;
  }

LABEL_67:
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22706F8C4@<X0>(char *a1@<X0>, sqlite3_stmt *a2@<X1>, int a3@<W2>, int a4@<W3>, _DWORD *a5@<X8>)
{
  if (qword_27D7B7EF0 != -1)
  {
    v10 = a4;
    swift_once();
    a4 = v10;
  }

  result = sqlite3_bind_text(a2, a3, a1, a4, qword_27D7CE2C0);
  *a5 = result;
  return result;
}

unint64_t sub_22706F95C()
{
  result = qword_27D7BA008;
  if (!qword_27D7BA008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA008);
  }

  return result;
}

unint64_t sub_22706F9EC()
{
  result = qword_27D7BA010;
  if (!qword_27D7BA010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA010);
  }

  return result;
}

uint64_t sub_22706FA40()
{
  v1 = [v0 options];
  sub_226E99364(0, &qword_28139D210, 0x277D82BB8);
  v2 = sub_22766BEB0();

  v3 = *MEMORY[0x277CBE240];
  v4 = sub_22766C000();
  if (!*(v2 + 16))
  {

    goto LABEL_7;
  }

  v6 = sub_226E92000(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v9 = *(*(v2 + 56) + 8 * v6);

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_22766BFF0();
  }

LABEL_8:
  result = sub_22766CFB0();
  __break(1u);
  return result;
}

uint64_t sub_22706FBD8()
{
  [v0 copy];
  sub_22766CC20();
  swift_unknownObjectRelease();
  sub_226E99364(0, &qword_28139D238, 0x277CBE4E0);
  if (swift_dynamicCast())
  {
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v1 = sub_22766CB10();
    [v4 setOption:v1 forKey:*MEMORY[0x277CBE1D8]];

    v2 = sub_22766CB10();
    [v4 setOption:v2 forKey:*MEMORY[0x277CBE178]];

    return v4;
  }

  else
  {
    result = sub_22766CFB0();
    __break(1u);
  }

  return result;
}

void sub_22706FD30(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v29 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v29 - v13;
  v15 = [a1 identifier];
  if (!v15)
  {
    goto LABEL_9;
  }

  v29[3] = a2;
  v16 = v15;
  v29[2] = sub_22766C000();
  v18 = v17;

  v19 = [a1 completingSessionIdentifier];
  if (!v19)
  {
    goto LABEL_8;
  }

  v29[5] = v18;
  v20 = v19;
  v29[1] = sub_22766C000();
  v22 = v21;

  v23 = [a1 completionDate];
  if (!v23)
  {

LABEL_8:

    goto LABEL_9;
  }

  v24 = v23;
  v29[0] = v22;
  sub_227662710();

  (*(v5 + 32))(v14, v12, v4);
  v25 = [a1 programIdentifier];
  if (v25)
  {
    v26 = v25;
    sub_22766C000();

    (*(v5 + 16))(v9, v14, v4);
    sub_227665280();

    (*(v5 + 8))(v14, v4);
    return;
  }

  (*(v5 + 8))(v14, v4);
LABEL_9:
  v27 = sub_227664DD0();
  sub_227070810(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51028], v27);
  swift_willThrow();
}

size_t static ProgramCompletion.representativeSamples()()
{
  v42 = sub_227662750();
  v0 = *(v42 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA018, &qword_227677428);
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v40);
  v38 = v31 - v5;
  v39 = sub_2276652D0();
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v39);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766C090();
  v11 = sub_22766C090();
  v12 = sub_22766C090();
  v13 = sub_227662630();
  v55 = v11;
  v56[0] = v10;
  v56[1] = v56;
  v56[2] = &v55;
  v53 = v13;
  v54 = v12;
  v56[3] = &v54;
  v56[4] = &v53;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v50 = v49;
  v51 = v49;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v45 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v46 = v45;
  v47 = v45;
  v48 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v14 = sub_2276638E0();

  v15 = *(v14 + 16);
  if (v15)
  {
    v44 = MEMORY[0x277D84F90];
    result = sub_226F1FA68(0, v15, 0);
    v17 = 0;
    v18 = v44;
    v33 = v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v32 = (v0 + 16);
    v31[1] = v6 + 32;
    v37 = v3;
    v36 = v6;
    v35 = v14;
    v34 = v15;
    v19 = v41;
    while (v17 < *(v14 + 16))
    {
      v20 = v33 + *(v3 + 72) * v17;
      v43 = v18;
      v21 = v38;
      sub_227070550(v20, v38);
      v22 = *v21;
      v23 = *(v21 + 1);
      v24 = *(v21 + 2);
      v25 = *(v21 + 3);
      v27 = *(v21 + 4);
      v26 = *(v21 + 5);
      (*v32)(v19, &v21[*(v40 + 80)], v42);

      sub_227665280();
      v28 = v21;
      v18 = v43;
      sub_2270705C0(v28);
      v44 = v18;
      v30 = *(v18 + 16);
      v29 = *(v18 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_226F1FA68(v29 > 1, v30 + 1, 1);
        v18 = v44;
      }

      ++v17;
      *(v18 + 16) = v30 + 1;
      result = (*(v36 + 32))(v18 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v30, v9, v39);
      v3 = v37;
      v14 = v35;
      if (v34 == v17)
      {

        return v18;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_227070550(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA018, &qword_227677428);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2270705C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA018, &qword_227677428);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227070628(uint64_t a1)
{
  result = sub_227070810(&qword_2813A5700, MEMORY[0x277D515B0]);
  *(a1 + 8) = result;
  return result;
}

void sub_227070680(void *a1)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227665290();
  v7 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_2276652B0();
  v8 = sub_22766BFD0();

  [a1 setProgramIdentifier_];

  sub_2276652C0();
  v9 = sub_22766BFD0();

  [a1 setCompletingSessionIdentifier_];

  sub_2276652A0();
  v10 = sub_2276626A0();
  (*(v3 + 8))(v6, v2);
  [a1 setCompletionDate_];
}

uint64_t sub_227070810(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_227070868(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CC8, &unk_227689B50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v29 = &v28 - v5;
  v6 = sub_227662750();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v8);
  v9 = sub_2276627D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  v15 = [v14 metadata];
  if (v15)
  {
    v16 = v15;
    v17 = sub_22766BEB0();

    v18 = *MEMORY[0x277CCDFD0];
    v19 = sub_22766C000();
    if (*(v17 + 16))
    {
      v21 = sub_226E92000(v19, v20);
      v23 = v22;

      if (v23)
      {
        sub_226E97CC0(*(v17 + 56) + 32 * v21, v31);

        swift_dynamicCast();
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

LABEL_7:
  v24 = [v14 UUID];

  sub_2276627B0();
  sub_227662770();
  (*(v10 + 8))(v13, v9);
  v25 = [v14 startDate];
  sub_227662710();

  v26 = [v14 endDate];
  sub_227662710();

  v27 = sub_227664950();
  (*(*(v27 - 8) + 56))(v29, 1, 1, v27);
  sub_227666B90();
}

void sub_227070BE8(void *a1)
{
  v2 = [a1 feature];
  if (v2)
  {
    v3 = v2;
    sub_22766C000();

    sub_227071084();
    sub_227663AE0();
    sub_2276666F0();
  }

  else
  {
    v4 = sub_227664DD0();
    sub_2270712C0(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D51028], v4);
    swift_willThrow();
  }
}

size_t static PrivacyAcknowledgement.representativeSamples()()
{
  v20 = sub_227666710();
  v0 = *(v20 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v20);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227071030();
  sub_227071084();
  v4 = sub_227663B50();
  sub_2270710D8();
  sub_22707112C();
  v26 = sub_227663B50();
  v27[0] = v4;
  v27[1] = v27;
  v27[2] = &v26;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA040, &qword_2276774E0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA048, &qword_2276774E8);
  v22 = sub_226F5BF60(&qword_27D7BA050, &qword_27D7BA040, &qword_2276774E0);
  v23 = sub_226F5BF60(&qword_27D7BA058, &qword_27D7BA048, &qword_2276774E8);
  v5 = sub_2276638E0();

  v6 = *(v5 + 16);
  if (v6)
  {
    v21 = MEMORY[0x277D84F90];
    result = sub_226F1FF48(0, v6, 0);
    v8 = 0;
    v9 = v21;
    v16 = v0 + 32;
    v17 = v6;
    v10 = (v5 + 72);
    v18 = v5;
    v19 = v0;
    while (v8 < *(v5 + 16))
    {
      v12 = *(v10 - 2);
      v11 = *(v10 - 1);
      v13 = *v10;
      sub_226EB396C(*(v10 - 5), *(v10 - 4), *(v10 - 24));
      sub_226EB396C(v12, v11, v13);
      sub_2276666F0();
      v21 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_226F1FF48(v14 > 1, v15 + 1, 1);
        v9 = v21;
      }

      ++v8;
      *(v9 + 16) = v15 + 1;
      result = (*(v19 + 32))(v9 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v15, v3, v20);
      v10 += 48;
      v5 = v18;
      if (v17 == v8)
      {

        return v9;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_227071030()
{
  result = qword_27D7BA020;
  if (!qword_27D7BA020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA020);
  }

  return result;
}

unint64_t sub_227071084()
{
  result = qword_27D7BA028;
  if (!qword_27D7BA028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA028);
  }

  return result;
}

unint64_t sub_2270710D8()
{
  result = qword_27D7BA030;
  if (!qword_27D7BA030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA030);
  }

  return result;
}

unint64_t sub_22707112C()
{
  result = qword_27D7BA038;
  if (!qword_27D7BA038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA038);
  }

  return result;
}

void sub_2270711A4(void *a1)
{
  v2 = sub_227666700();
  v4 = v3;
  v6 = v5 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA060, qword_227677538);
  sub_227663AD0();
  v7 = sub_22766BFD0();
  sub_226EB2DFC(v2, v4, v6);

  [a1 setFeature_];
}

uint64_t sub_227071268(uint64_t a1)
{
  result = sub_2270712C0(&qword_2813A5688, MEMORY[0x277D52578]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2270712C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227071308@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D00];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_227071388@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2276668E0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2270713B0(uint64_t a1)
{
  *(a1 + 24) = sub_227071418(&qword_2813A5680);
  result = sub_227071418(&qword_2813A5678);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_227071418(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2276668F0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22707145C()
{
  v1 = v0;
  v2 = sub_227669A70();
  v28 = v2;
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v8 + 8))(v11, v7);
  v12 = *(v1 + 16);
  v13 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v32 = v12;
  v14 = *MEMORY[0x277D4E830];
  v15 = v3 + 13;
  v29 = v3[13];
  v29(v6, v14, v2);
  swift_allocObject();
  v30 = v1;
  swift_weakInit();
  sub_227666130();
  swift_unknownObjectRetain_n();
  sub_227669E90();

  v26 = v3[1];
  v31 = v3 + 1;
  v16 = v28;
  v26(v6, v28);
  swift_unknownObjectRelease();
  v32 = v12;
  v17 = v29;
  v29(v6, *MEMORY[0x277D4E418], v16);
  swift_allocObject();
  swift_weakInit();
  v25[0] = sub_227666230();
  v25[1] = sub_2276631F0();
  swift_unknownObjectRetain();
  sub_227669E80();

  v18 = v28;
  v19 = v26;
  v26(v6, v28);
  swift_unknownObjectRelease();
  v32 = v12;
  v17(v6, *MEMORY[0x277D4E650], v18);
  v25[2] = v15;
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E80();

  v19(v6, v18);
  swift_unknownObjectRelease();
  v32 = v12;
  v20 = v29;
  v29(v6, *MEMORY[0x277D4E448], v18);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E80();

  v21 = v28;
  v19(v6, v28);
  swift_unknownObjectRelease();
  v32 = v12;
  v20(v6, *MEMORY[0x277D4E4C8], v21);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v22 = v28;
  v23 = v26;
  v26(v6, v28);
  swift_unknownObjectRelease();
  v32 = v12;
  v29(v6, *MEMORY[0x277D4E580], v22);
  swift_allocObject();
  swift_weakInit();
  sub_2276666C0();
  sub_227664900();
  sub_227669E80();

  v23(v6, v22);
  swift_unknownObjectRelease();
  v32 = v12;
  v29(v6, *MEMORY[0x277D4E5B8], v22);
  swift_allocObject();
  swift_weakInit();
  sub_227669E90();

  v23(v6, v22);
  return swift_unknownObjectRelease();
}

uint64_t sub_227071C1C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v13);

    v8 = *__swift_project_boxed_opaque_existential_0(v13, v13[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = *__swift_project_boxed_opaque_existential_0((v8 + 32), *(v8 + 56));
    sub_227345AA0(a1);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C0, &unk_227684560);
    (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
    return __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C0, &unk_227684560);
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }
}

uint64_t sub_227071E2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v15);

    v10 = *__swift_project_boxed_opaque_existential_0(v15, v15[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v11 = *__swift_project_boxed_opaque_existential_0((v10 + 32), *(v10 + 56));
    sub_227350054(a1, a2);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9670, qword_2276748A0);
    (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9670, qword_2276748A0);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }
}

uint64_t sub_227072044@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v17);

    v12 = *__swift_project_boxed_opaque_existential_0(v17, v17[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v13 = *__swift_project_boxed_opaque_existential_0((v12 + 32), *(v12 + 56));
    sub_22734AE4C(v9, v10, a2);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B0, &unk_2276775B0);
    (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
    return __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B0, &unk_2276775B0);
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

uint64_t sub_22707226C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v15);

    v10 = *__swift_project_boxed_opaque_existential_0(v15, v15[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v11 = *__swift_project_boxed_opaque_existential_0((v10 + 32), *(v10 + 56));
    sub_227351318(a1, a2);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9670, qword_2276748A0);
    (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9670, qword_2276748A0);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }
}

uint64_t sub_227072484@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v15);

    v10 = *__swift_project_boxed_opaque_existential_0(v15, v15[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v11 = *__swift_project_boxed_opaque_existential_0((v10 + 32), *(v10 + 56));
    sub_227352674(a1, a2);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }
}

uint64_t sub_22707269C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v16);

    v10 = *__swift_project_boxed_opaque_existential_0(v16, v16[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v11 = v10[18];
    v12 = v10[19];
    __swift_project_boxed_opaque_existential_0(v10 + 15, v11);
    (*(v12 + 16))(a1, v11, v12);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA068, &qword_2276775A8);
    (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA068, &qword_2276775A8);
    return (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  }
}

uint64_t sub_2270728D8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v14);

    v8 = *__swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = v8[18];
    v10 = v8[19];
    __swift_project_boxed_opaque_existential_0(v8 + 15, v9);
    (*(v10 + 24))(v9, v10);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA068, &qword_2276775A8);
    (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA068, &qword_2276775A8);
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }
}

uint64_t sub_227072B70(uint64_t a1)
{
  v37 = sub_227663480();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_226F1EF90(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_227663410();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_226F1EF90(v19 > 1, v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_226EB526C(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_227072E78(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_226F1FF68(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v25 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_226F1FF68((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 24 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    *(v15 + 48) = 2;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_226EB526C(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
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
  __break(1u);
  return result;
}

uint64_t sub_2270730AC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v40 = a3;
  v39 = a2(0);
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v39);
  v38 = v32 - v7;
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v32[1] = v3;
    v45 = MEMORY[0x277D84F90];
    sub_226F1EFF0(0, v8, 0);
    v10 = -1 << *(a1 + 32);
    v43 = a1 + 56;
    v44 = v45;
    result = sub_22766CC90();
    v11 = result;
    v12 = 0;
    v36 = v5 + 8;
    v37 = v5 + 16;
    v33 = a1 + 64;
    v34 = v8;
    v35 = v5;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v43 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v41 = *(a1 + 36);
      v16 = v38;
      v17 = v39;
      v18 = (*(v5 + 16))(v38, *(a1 + 48) + *(v5 + 72) * v11, v39);
      v42 = v40(v18);
      v20 = v19;
      result = (*(v5 + 8))(v16, v17);
      v21 = v44;
      v45 = v44;
      v23 = *(v44 + 16);
      v22 = *(v44 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_226F1EFF0((v22 > 1), v23 + 1, 1);
        v21 = v45;
      }

      *(v21 + 16) = v23 + 1;
      v24 = v21 + 16 * v23;
      *(v24 + 32) = v42;
      *(v24 + 40) = v20;
      v13 = 1 << *(a1 + 32);
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      v25 = *(v43 + 8 * v15);
      if ((v25 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v44 = v21;
      if (v41 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v26 = v25 & (-2 << (v11 & 0x3F));
      if (v26)
      {
        v13 = __clz(__rbit64(v26)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v14 = v34;
        v5 = v35;
      }

      else
      {
        v27 = v15 << 6;
        v28 = v15 + 1;
        v14 = v34;
        v29 = (v33 + 8 * v15);
        v5 = v35;
        while (v28 < (v13 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_226EB526C(v11, v41, 0);
            v13 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v11, v41, 0);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      if (v12 == v14)
      {
        return v44;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2270733BC(uint64_t a1)
{
  v3 = sub_2276624A0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v53 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_227664AE0();
  v6 = *(*(v52 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v52);
  v55 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v51 = v41 - v9;
  v61 = sub_2276639B0();
  v10 = *(v61 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v61);
  v60 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_227666070();
  v13 = *(v50 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v50);
  v54 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v16)
  {
    v41[1] = v1;
    v63 = MEMORY[0x277D84F90];
    sub_226F1F4C8(0, v16, 0);
    v62 = v63;
    v18 = -1 << *(a1 + 32);
    v59 = a1 + 56;
    result = sub_22766CC90();
    v19 = result;
    v20 = 0;
    v46 = (v10 + 8);
    v47 = v10 + 16;
    v48 = v13;
    v45 = v13 + 32;
    v42 = a1 + 64;
    v43 = v16;
    v49 = a1;
    v44 = v10;
    while ((v19 & 0x8000000000000000) == 0 && v19 < 1 << *(a1 + 32))
    {
      v22 = v19 >> 6;
      if ((*(v59 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
      {
        goto LABEL_24;
      }

      v23 = *(a1 + 36);
      v56 = v20;
      v57 = v23;
      (*(v10 + 16))(v60, *(a1 + 48) + *(v10 + 72) * v19, v61);
      sub_227663910();
      v25 = v24;
      v26 = v51;
      sub_227663970();
      sub_226F322FC(v26, v55);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v58 = v25;
      if (EnumCaseMultiPayload <= 1)
      {
        sub_226F32360(v55);
      }

      v28 = v60;
      sub_2276639A0();
      sub_227663990();
      sub_227663930();
      sub_227663940();
      sub_227663960();
      v29 = v54;
      sub_227665FF0();
      (*v46)(v28, v61);
      v30 = v62;
      v63 = v62;
      v32 = *(v62 + 16);
      v31 = *(v62 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_226F1F4C8(v31 > 1, v32 + 1, 1);
        v29 = v54;
        v30 = v63;
      }

      *(v30 + 16) = v32 + 1;
      v33 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v62 = v30;
      result = (*(v48 + 32))(v30 + v33 + *(v48 + 72) * v32, v29, v50);
      a1 = v49;
      v21 = 1 << *(v49 + 32);
      if (v19 >= v21)
      {
        goto LABEL_25;
      }

      v34 = *(v59 + 8 * v22);
      if ((v34 & (1 << v19)) == 0)
      {
        goto LABEL_26;
      }

      if (v57 != *(v49 + 36))
      {
        goto LABEL_27;
      }

      v35 = v34 & (-2 << (v19 & 0x3F));
      if (v35)
      {
        v21 = __clz(__rbit64(v35)) | v19 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v36 = v22 << 6;
        v37 = v22 + 1;
        v38 = (v42 + 8 * v22);
        while (v37 < (v21 + 63) >> 6)
        {
          v40 = *v38++;
          v39 = v40;
          v36 += 64;
          ++v37;
          if (v40)
          {
            result = sub_226EB526C(v19, v57, 0);
            v21 = __clz(__rbit64(v39)) + v36;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v19, v57, 0);
      }

LABEL_4:
      v20 = v56 + 1;
      v19 = v21;
      v10 = v44;
      if (v56 + 1 == v43)
      {
        return v62;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_227073914(uint64_t a1)
{
  v1 = 0;
  v2 = MEMORY[0x277D84F98];
  v3 = a1 + 56;
  v46 = MEMORY[0x277D84F98];
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  v39 = v7;
  v40 = a1 + 56;
  while (v6)
  {
LABEL_9:
    v9 = *(a1 + 48) + 24 * (__clz(__rbit64(v6)) | (v1 << 6));
    v11 = *v9;
    v10 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = sub_226F491D4(v12);
    v15 = v2[2];
    v16 = (v14 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_24;
    }

    v18 = v13;
    v19 = v14;
    v42 = v2;
    v44 = v11;
    v20 = v2[3];
    v45 = v10;
    sub_226F04958(v11, v10, v12);
    if (v20 >= v17)
    {
      v7 = v39;
      v2 = v42;
      v23 = v18;
    }

    else
    {
      sub_226FE8EFC(v17, 1);
      v2 = v46;
      v21 = sub_226F491D4(v12);
      if ((v19 & 1) != (v22 & 1))
      {
        goto LABEL_26;
      }

      v23 = v21;
      v7 = v39;
    }

    v6 &= v6 - 1;
    v3 = v40;
    if (v19)
    {
      v24 = v2[7];
      v25 = *(v24 + 8 * v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v23) = v25;
      v43 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_2273A5594(0, *(v25 + 2) + 1, 1, v25);
        *(v24 + 8 * v23) = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      v29 = v28 + 1;
      v31 = v44;
      v30 = v45;
      if (v28 >= v27 >> 1)
      {
        v37 = sub_2273A5594((v27 > 1), v28 + 1, 1, v25);
        v29 = v28 + 1;
        v31 = v44;
        v30 = v45;
        v25 = v37;
        *(v43 + 8 * v23) = v37;
      }

      *(v25 + 2) = v29;
      v32 = &v25[24 * v28];
      *(v32 + 4) = v31;
      *(v32 + 5) = v30;
      v32[48] = v12;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0A0, qword_227677990);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_227670CD0;
      *(v33 + 32) = v44;
      *(v33 + 40) = v45;
      *(v33 + 48) = v12;
      v2[(v23 >> 6) + 8] |= 1 << v23;
      *(v2[6] + 8 * v23) = v12;
      *(v2[7] + 8 * v23) = v33;
      v34 = v2[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_25;
      }

      v2[2] = v36;
    }
  }

  while (1)
  {
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v8);
    ++v1;
    if (v6)
    {
      v1 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_22766D220();
  __break(1u);
  return result;
}

char *sub_227073D54(unint64_t a1, void (*a2)(void))
{
  if (a1 >> 62)
  {
    v4 = sub_22766CD20();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v15 = MEMORY[0x277D84F90];
  result = sub_226F1ED50(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        MEMORY[0x22AA991A0](i, a1);
        a2(0);
        swift_dynamicCast();
        v15 = v5;
        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_226F1ED50((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v9 + 1;
        sub_226F04970(v14, (v5 + 32 * v9 + 32));
      }
    }

    else
    {
      v10 = (a1 + 32);
      a2(0);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v15 = v5;
        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_226F1ED50((v12 > 1), v13 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v13 + 1;
        sub_226F04970(v14, (v5 + 32 * v13 + 32));
        ++v10;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_227073F2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_226F1EFF0(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 40);
    do
    {
      v9 = *(v4 - 1);
      v10 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      swift_dynamicCast();
      v5 = v11;
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_226F1EFF0((v6 > 1), v7 + 1, 1);
        v5 = v11;
      }

      *(v12 + 16) = v7 + 1;
      *(v12 + 16 * v7 + 32) = v5;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_227074044(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_226F1F5E8(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA098, &qword_227677738);
      swift_dynamicCast();
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_226F1F5E8((v6 > 1), v7 + 1, 1);
      }

      *(v12 + 16) = v7 + 1;
      v8 = v12 + 8 * v7;
      *(v8 + 32) = v10;
      *(v8 + 36) = v11;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_22707415C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_226F1ED50(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_226F1ED50((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_226F04970(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_22707425C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = MEMORY[0x277D84F98];
  v35 = MEMORY[0x277D84F98];
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  while (1)
  {
    if (!v9)
    {
      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v13 >= v10)
        {

          return v5;
        }

        v9 = *(v6 + 8 * v13);
        ++v12;
        if (v9)
        {
          v12 = v13;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_10:
    v14 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
    v15 = *(*(a1 + 48) + v14);
    v16 = *(*(a1 + 56) + v14);

    v18 = a4(v17, a2, a3);
    if (v4)
    {
      break;
    }

    v19 = v18;
    v9 &= v9 - 1;

    if (v19)
    {
      v20 = *(v5 + 16);
      if (*(v5 + 24) <= v20)
      {
        sub_226FE466C(v20 + 1, 1);
        v5 = v35;
      }

      v21 = *(v5 + 40);
      result = sub_22766D360();
      v22 = v5 + 64;
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v5 + 64 + 8 * (v24 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v23) >> 6;
        while (++v25 != v28 || (v27 & 1) == 0)
        {
          v29 = v25 == v28;
          if (v25 == v28)
          {
            v25 = 0;
          }

          v27 |= v29;
          v30 = *(v22 + 8 * v25);
          if (v30 != -1)
          {
            v26 = __clz(__rbit64(~v30)) + (v25 << 6);
            goto LABEL_24;
          }
        }

LABEL_29:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~*(v5 + 64 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
      *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      *(*(v5 + 48) + 8 * v26) = v15;
      *(*(v5 + 56) + 8 * v26) = v19;
      ++*(v5 + 16);
    }
  }

  return v5;
}

uint64_t sub_2270744C4()
{
  v0 = sub_227664F20();
  v1 = sub_2270361EC(v0);
  v2 = sub_22707425C(v1, 4, &selRef_orPredicateWithSubpredicates_, sub_227077428);

  v3 = sub_227664F10();
  v4 = sub_2270361EC(v3);
  v5 = sub_22707425C(v4, 5, &selRef_andPredicateWithSubpredicates_, sub_227077428);

  v6 = *(v2 + 16);
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = sub_226ECC830(*(v2 + 16), 0);
  v8 = sub_2274CF834(&v14, v7 + 32, v6, v2);
  result = sub_226EBB21C();
  if (v8 == v6)
  {
    v10 = *(v5 + 16);
    if (v10)
    {
      while (1)
      {
        v11 = sub_226ECC830(v10, 0);
        v5 = sub_2274CF834(&v14, v11 + 32, v10, v5);
        sub_226EBB21C();
        if (v5 == v10)
        {
          break;
        }

        __break(1u);
LABEL_6:

        v7 = MEMORY[0x277D84F90];
        v10 = *(v5 + 16);
        if (!v10)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:

      v11 = MEMORY[0x277D84F90];
    }

    v14 = v7;
    sub_22745F2F8(v11);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v12 = sub_22766C2B0();

    v13 = [objc_opt_self() andPredicateWithSubpredicates_];

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2270746A0(uint64_t a1, uint64_t a2)
{

  v3 = sub_227073914(a2);
  v4 = sub_22707425C(v3, 4, &selRef_orPredicateWithSubpredicates_, sub_2270779EC);

  v6 = sub_227073914(v5);
  v7 = sub_22707425C(v6, 5, &selRef_andPredicateWithSubpredicates_, sub_2270779EC);

  v8 = *(v4 + 16);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = sub_226ECC830(*(v4 + 16), 0);
  v10 = sub_2274CF834(&v16, v9 + 32, v8, v4);
  result = sub_226EBB21C();
  if (v10 == v8)
  {
    v12 = *(v7 + 16);
    if (v12)
    {
      while (1)
      {
        v13 = sub_226ECC830(v12, 0);
        v7 = sub_2274CF834(&v16, v13 + 32, v12, v7);
        sub_226EBB21C();
        if (v7 == v12)
        {
          break;
        }

        __break(1u);
LABEL_6:

        v9 = MEMORY[0x277D84F90];
        v12 = *(v7 + 16);
        if (!v12)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:

      v13 = MEMORY[0x277D84F90];
    }

    v16 = v9;
    sub_22745F2F8(v13);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v14 = sub_22766C2B0();

    v15 = [objc_opt_self() andPredicateWithSubpredicates_];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22707488C(uint64_t a1, char *a2)
{
  v5 = sub_2276624A0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v134 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9688, &qword_2276776E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v142 = &v121 - v10;
  v145 = sub_227664AE0();
  v130 = *(v145 - 8);
  v11 = *(v130 + 64);
  v12 = MEMORY[0x28223BE20](v145);
  v133 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v132 = &v121 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA070, &qword_2276776E8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v141 = &v121 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA078, &unk_2276776F0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v144 = &v121 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9680, &unk_227671520);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v143 = &v121 - v23;
  v146 = sub_2276639B0();
  v131 = *(v146 - 8);
  v24 = *(v131 + 64);
  MEMORY[0x28223BE20](v146);
  v129 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_227666070();
  v147 = *(v26 - 8);
  v148 = v26;
  v27 = v147[8];
  MEMORY[0x28223BE20](v26);
  v139 = a2;
  v140 = &v121 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_project_boxed_opaque_existential_0(a2, *(a2 + 3));
  v30 = *v29;
  v31 = v29[1];
  v32 = *(v29 + 16);
  v33 = v29[3];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9698, &qword_2276776A0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v37 = swift_allocObject();
  v38 = v30;
  v39 = v31;

  sub_22766A070();
  *(v37 + 16) = v38;
  *(v37 + 24) = v39;
  *(v37 + 32) = v32;
  *(v37 + 40) = v33;
  swift_getKeyPath();
  v153 = a1;
  v40 = sub_2270730AC(a1, MEMORY[0x277D52038], MEMORY[0x277D52030]);
  v41 = v2;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v152 = v138;
  v151 = v40;
  v42 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v137 = v42;
  v43 = sub_22766C820();
  sub_226E93170(&v151, v149, &unk_27D7BC990, &qword_227670A30);
  v44 = v150;
  if (v150)
  {
    v45 = __swift_project_boxed_opaque_existential_0(v149, v150);
    v46 = *(v44 - 8);
    v47 = *(v46 + 64);
    MEMORY[0x28223BE20](v45);
    v49 = &v121 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v46 + 16))(v49);
    v50 = sub_22766D170();
    (*(v46 + 8))(v49, v44);
    __swift_destroy_boxed_opaque_existential_0(v149);
  }

  else
  {
    v50 = 0;
  }

  v136 = objc_opt_self();
  v51 = [v136 expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B96A8 &unk_2276776D0))];

  sub_226E97D1C(&v151, &unk_27D7BC990, &qword_227670A30);
  v52 = &qword_2813B2078;
  swift_beginAccess();
  v53 = sub_22766A080();
  v55 = v54;
  MEMORY[0x22AA985C0]();
  if (*((*v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    sub_22766C3A0();
    v53(&v151, 0);
    swift_endAccess();

    v56 = sub_227231CB8(100);
    if (v41)
    {
      break;
    }

    v135 = v56;
    swift_setDeallocating();

    v60 = *(v37 + 40);

    v61 = *v52;
    v62 = sub_22766A100();
    v63 = *(v62 - 8);
    v128 = *(v63 + 8);
    v127 = (v63 + 8);
    (v128)(v37 + v61, v62);
    v64 = *(*v37 + 48);
    v65 = *(*v37 + 52);
    swift_deallocClassInstance();
    v66 = __swift_project_boxed_opaque_existential_0(v139, *(v139 + 3));
    v67 = *v66;
    v68 = v66[1];
    v69 = *(v66 + 16);
    v70 = v66[3];
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA080, &qword_227677700);
    v72 = *(v71 + 48);
    v73 = *(v71 + 52);
    v74 = swift_allocObject();
    v75 = *v52;
    v76 = v67;
    v77 = v68;

    sub_22766A070();
    *(v74 + 16) = v76;
    *(v74 + 24) = v77;
    *(v74 + 32) = v69;
    *(v74 + 40) = v70;
    KeyPath = swift_getKeyPath();
    v79 = sub_2270730AC(v153, MEMORY[0x277D52038], MEMORY[0x277D52030]);
    v53 = 0;
    v152 = v138;
    v151 = v79;

    v80 = sub_22766C820();
    sub_226E93170(&v151, v149, &unk_27D7BC990, &qword_227670A30);
    v81 = v150;
    if (v150)
    {
      v82 = __swift_project_boxed_opaque_existential_0(v149, v150);
      v139 = &v121;
      v83 = *(v81 - 8);
      v84 = *(v83 + 64);
      MEMORY[0x28223BE20](v82);
      v86 = &v121 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v83 + 16))(v86);
      v87 = sub_22766D170();
      v88 = v86;
      v53 = 0;
      (*(v83 + 8))(v88, v81);
      __swift_destroy_boxed_opaque_existential_0(v149);
    }

    else
    {
      v87 = 0;
    }

    v41 = v140;
    v89 = [v136 expressionForConstantValue_];
    swift_unknownObjectRelease();
    [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA088 &qword_227677730))];

    sub_226E97D1C(&v151, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v90 = sub_22766A080();
    v92 = v91;
    MEMORY[0x22AA985C0]();
    if (*((*v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v140 = KeyPath;
      sub_22766C360();
    }

    sub_22766C3A0();
    v90(&v151, 0);
    swift_endAccess();

    v139 = sub_227231FB8(100);
    swift_setDeallocating();

    v96 = *(v74 + 40);

    (v128)(v74 + qword_2813B2078, v62);
    v97 = *(*v74 + 48);
    v98 = *(*v74 + 52);
    swift_deallocClassInstance();
    v99 = v153 + 56;
    v100 = 1 << *(v153 + 32);
    v101 = -1;
    if (v100 < 64)
    {
      v101 = ~(-1 << v100);
    }

    v37 = v101 & *(v153 + 56);
    v102 = (v100 + 63) >> 6;
    v136 = v147 + 2;
    v130 += 56;
    v128 = (v131 + 56);
    v127 = (v147 + 1);
    v126 = (v131 + 48);
    v121 = (v131 + 32);

    v52 = 0;
    v122 = MEMORY[0x277D84F90];
    v138 = v99;
    v137 = v102;
LABEL_17:
    v103 = v52;
    v104 = v141;
    v105 = v142;
    if (!v37)
    {
      goto LABEL_19;
    }

    do
    {
      v52 = v103;
LABEL_22:
      v106 = (v147[2])(v41, *(v153 + 48) + v147[9] * (__clz(__rbit64(v37)) | (v52 << 6)), v148);
      MEMORY[0x28223BE20](v106);
      *(&v121 - 2) = v41;
      v107 = v144;
      v108 = sub_2275439B4(sub_227079780, v135, v144);
      MEMORY[0x28223BE20](v108);
      *(&v121 - 2) = v41;
      sub_2275439E0(sub_2270797B4, v139, v104);
      sub_227075AA8(v41, v107, v104, v105);
      if (v53)
      {

        v109 = 1;
        (*v130)(v105, 1, 1, v145);
        sub_226E97D1C(v104, &qword_27D7BA070, &qword_2276776E8);
        sub_226E97D1C(v107, &qword_27D7BA078, &unk_2276776F0);
        sub_226E97D1C(v105, &qword_27D7B9688, &qword_2276776E0);
        v140 = 0;
        v110 = v143;
      }

      else
      {
        v140 = 0;
        (*v130)(v105, 0, 1, v145);
        v111 = v132;
        sub_226F322FC(v105, v132);
        v125 = sub_227666000();
        v124 = v112;
        sub_2270797E8(v111, v133);
        sub_227666060();
        v123 = sub_227666050();
        sub_227666010();
        sub_227666020();
        sub_227666030();
        v110 = v143;
        v105 = v142;
        sub_227663900();
        v113 = v111;
        v104 = v141;
        sub_226F32360(v113);
        sub_226E97D1C(v104, &qword_27D7BA070, &qword_2276776E8);
        sub_226E97D1C(v107, &qword_27D7BA078, &unk_2276776F0);
        v109 = 0;
      }

      v37 &= v37 - 1;
      v114 = v109;
      v115 = v146;
      (*v128)(v110, v114, 1, v146);
      (*v127)(v41, v148);
      if ((*v126)(v110, 1, v115) != 1)
      {
        v116 = *v121;
        (*v121)(v129, v110, v146);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = v140;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v122 = sub_2273A4EA4(0, *(v122 + 2) + 1, 1, v122);
        }

        v119 = *(v122 + 2);
        v118 = *(v122 + 3);
        if (v119 >= v118 >> 1)
        {
          v122 = sub_2273A4EA4(v118 > 1, v119 + 1, 1, v122);
        }

        v120 = v122;
        *(v122 + 2) = v119 + 1;
        v116(&v120[((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v119], v129, v146);
        v99 = v138;
        v102 = v137;
        goto LABEL_17;
      }

      sub_226E97D1C(v110, &qword_27D7B9680, &unk_227671520);
      v103 = v52;
      v53 = v140;
      v99 = v138;
      v102 = v137;
    }

    while (v37);
LABEL_19:
    while (1)
    {
      v52 = (v103 + 1);
      if (__OFADD__(v103, 1))
      {
        break;
      }

      if (v52 >= v102)
      {

        v58 = sub_226F3FF8C(v122);

        return v58;
      }

      v37 = *(v99 + 8 * v52);
      v103 = (v103 + 1);
      if (v37)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_35:
    sub_22766C360();
  }

  swift_setDeallocating();

  v57 = *(v37 + 40);

  v58 = *v52;
  v59 = sub_22766A100();
  (*(*(v59 - 8) + 8))(v37 + v58, v59);
  v93 = *(*v37 + 48);
  v94 = *(*v37 + 52);
  swift_deallocClassInstance();
  return v58;
}

uint64_t sub_227075AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v68 = a4;
  v64 = a2;
  v65 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA078, &unk_2276776F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v58 - v7;
  v9 = sub_2276668A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227666070();
  v62 = *(v14 - 8);
  v63 = v14;
  v15 = *(v62 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v59 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v58 = &v58 - v18;
  v19 = sub_22766B390();
  v66 = *(v19 - 8);
  v67 = v19;
  v20 = *(v66 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v61 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v60 = &v58 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA070, &qword_2276776E8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v58 - v26;
  v28 = sub_2276687D0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v58 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_227666040();
  if (v33)
  {
    if (v33 == 1)
    {
      sub_226E93170(v65, v27, &qword_27D7BA070, &qword_2276776E8);
      if ((*(v29 + 48))(v27, 1, v28) == 1)
      {
        sub_226E97D1C(v27, &qword_27D7BA070, &qword_2276776E8);
        v34 = v60;
        sub_22766A6C0();
        v36 = v62;
        v35 = v63;
        v37 = v58;
        (*(v62 + 16))(v58, a1, v63);
        v38 = sub_22766B380();
        v39 = sub_22766C890();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v69 = v41;
          *v40 = 141558274;
          *(v40 + 4) = 1752392040;
          *(v40 + 12) = 2080;
          sub_22707FCA0(&qword_27D7BA090, MEMORY[0x277D52038]);
          v42 = sub_22766D140();
          v43 = v37;
          v45 = v44;
          (*(v36 + 8))(v43, v35);
          v46 = sub_226E97AE8(v42, v45, &v69);

          *(v40 + 14) = v46;
          v47 = "Missing mediaStreamMetadata for %{mask.hash}s";
LABEL_10:
          _os_log_impl(&dword_226E8E000, v38, v39, v47, v40, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v41);
          MEMORY[0x22AA9A450](v41, -1, -1);
          MEMORY[0x22AA9A450](v40, -1, -1);

LABEL_13:
          (*(v66 + 8))(v34, v67);
          v54 = sub_227663190();
          sub_22707FCA0(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
          swift_allocError();
          (*(*(v54 - 8) + 104))(v55, *MEMORY[0x277D4FD08], v54);
          return swift_willThrow();
        }

        goto LABEL_12;
      }

      v53 = *(v29 + 32);
      v53(v32, v27, v28);
      v53(v68, v32, v28);
      sub_227664AE0();
    }

    else
    {
      sub_226E93170(v64, v8, &qword_27D7BA078, &unk_2276776F0);
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {
        sub_226E97D1C(v8, &qword_27D7BA078, &unk_2276776F0);
        v34 = v61;
        sub_22766A6C0();
        v36 = v62;
        v35 = v63;
        v37 = v59;
        (*(v62 + 16))(v59, a1, v63);
        v38 = sub_22766B380();
        v39 = sub_22766C890();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v69 = v41;
          *v40 = 141558274;
          *(v40 + 4) = 1752392040;
          *(v40 + 12) = 2080;
          sub_22707FCA0(&qword_27D7BA090, MEMORY[0x277D52038]);
          v48 = sub_22766D140();
          v49 = v37;
          v51 = v50;
          (*(v36 + 8))(v49, v35);
          v52 = sub_226E97AE8(v48, v51, &v69);

          *(v40 + 14) = v52;
          v47 = "Missing keyMetadata for %{mask.hash}s";
          goto LABEL_10;
        }

LABEL_12:

        (*(v36 + 8))(v37, v35);
        goto LABEL_13;
      }

      v57 = *(v10 + 32);
      v57(v13, v8, v9);
      v57(v68, v13, v9);
      sub_227664AE0();
    }
  }

  else
  {
    sub_227664AE0();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2270762C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v5 = v4;
  if (v3 == sub_227666000() && v5 == v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22766D190();
  }

  return v7 & 1;
}

uint64_t sub_227076360(char *a1)
{
  v3 = __swift_project_boxed_opaque_existential_0(a1, *(a1 + 3));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v4;
  v13 = v5;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  v14 = sub_2272322B8(100);
  if (v1)
  {
    swift_setDeallocating();

    v15 = *(v11 + 40);

    v16 = qword_2813B2078;
    v17 = sub_22766A100();
    (*(*(v17 - 8) + 8))(v11 + v16, v17);
    v18 = *(*v11 + 48);
    v19 = *(*v11 + 52);
    swift_deallocClassInstance();
  }

  else
  {
    v20 = v14;
    swift_setDeallocating();

    v21 = *(v11 + 40);

    v22 = qword_2813B2078;
    v23 = sub_22766A100();
    (*(*(v23 - 8) + 8))(v11 + v22, v23);
    v24 = *(*v11 + 48);
    v25 = *(*v11 + 52);
    swift_deallocClassInstance();
    v11 = sub_22707488C(v20, a1);
  }

  return v11;
}

uint64_t sub_2270765A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v8;
  v17 = v9;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  swift_getKeyPath();
  v42[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v42[0] = a1;
  v42[1] = a2;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v18 = sub_22766C820();
  sub_226E93170(v42, v40, &unk_27D7BC990, &qword_227670A30);
  v19 = v41;
  if (v41)
  {
    v20 = __swift_project_boxed_opaque_existential_0(v40, v41);
    v21 = *(v19 - 8);
    v22 = *(v21 + 64);
    MEMORY[0x28223BE20](v20);
    v24 = v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24);
    v25 = sub_22766D170();
    (*(v21 + 8))(v24, v19);
    __swift_destroy_boxed_opaque_existential_0(v40);
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v27 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0 &unk_227671120))];

  sub_226E97D1C(v42, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v28 = v27;
  v29 = sub_22766A080();
  v31 = v30;
  MEMORY[0x22AA985C0]();
  if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v39 = *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v29(v42, 0);
  swift_endAccess();

  v32 = MEMORY[0x22AA99A00]();
  sub_2275444CC(v15, a4);
  objc_autoreleasePoolPop(v32);
  swift_setDeallocating();

  v33 = *(v15 + 40);

  v34 = qword_2813B2078;
  v35 = sub_22766A100();
  (*(*(v35 - 8) + 8))(v15 + v34, v35);
  v36 = *(*v15 + 48);
  v37 = *(*v15 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_2270769D4(char *a1, uint64_t a2)
{
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v87 - v8;
  v10 = *(a1 + 3);
  v90 = a1;
  v11 = __swift_project_boxed_opaque_existential_0(a1, v10);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 16);
  v15 = v11[3];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9698, &qword_2276776A0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v20 = v12;
  v21 = v13;

  sub_22766A070();
  *(v19 + 16) = v20;
  *(v19 + 24) = v21;
  *(v19 + 32) = v14;
  *(v19 + 40) = v15;
  swift_getKeyPath();
  v22 = sub_227662750();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v9, v91, v22);
  (*(v23 + 56))(v9, 0, 1, v22);
  sub_226E93170(v9, v7, &qword_27D7B9690, qword_227670B50);
  if ((*(v23 + 48))(v7, 1, v22) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B9690, qword_227670B50);
    v94 = 0u;
    v95 = 0u;
  }

  else
  {
    *(&v95 + 1) = v22;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v94);
    (*(v23 + 32))(boxed_opaque_existential_0, v7, v22);
  }

  v25 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v91 = v25;
  v26 = sub_22766C820();
  sub_226E93170(&v94, v92, &unk_27D7BC990, &qword_227670A30);
  v27 = v93;
  if (v93)
  {
    v28 = __swift_project_boxed_opaque_existential_0(v92, v93);
    v29 = *(v27 - 8);
    v30 = *(v29 + 64);
    MEMORY[0x28223BE20](v28);
    v32 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v32);
    v33 = sub_22766D170();
    (*(v29 + 8))(v32, v27);
    __swift_destroy_boxed_opaque_existential_0(v92);
  }

  else
  {
    v33 = 0;
  }

  v34 = objc_opt_self();
  v35 = [v34 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v36 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B96A8 &unk_2276776D0))];

  sub_226E97D1C(v9, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(&v94, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v37 = v36;
  v38 = sub_22766A080();
  v40 = v39;
  MEMORY[0x22AA985C0]();
  if (*((*v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v85 = *((*v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v38(&v94, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  v42 = v96;
  v43 = sub_2273FC970(KeyPath);
  if (v42)
  {

    swift_setDeallocating();

    v44 = *(v19 + 40);

    v45 = qword_2813B2078;
    v46 = sub_22766A100();
    (*(*(v46 - 8) + 8))(v19 + v45, v46);
    v78 = *(*v19 + 48);
    v79 = *(*v19 + 52);
    swift_deallocClassInstance();
  }

  else
  {
    v96 = v34;
    v47 = sub_226F3E6A8(v43);

    swift_setDeallocating();

    v48 = *(v19 + 40);

    v49 = qword_2813B2078;
    v50 = sub_22766A100();
    v51 = *(v50 - 8);
    v88 = *(v51 + 8);
    v89 = v50;
    v87 = v51 + 8;
    v88(v19 + v49);
    v52 = *(*v19 + 48);
    v53 = *(*v19 + 52);
    swift_deallocClassInstance();
    v54 = __swift_project_boxed_opaque_existential_0(v90, *(v90 + 3));
    v55 = *v54;
    v56 = v54[1];
    v57 = *(v54 + 16);
    v58 = v54[3];
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
    v60 = *(v59 + 48);
    v61 = *(v59 + 52);
    v62 = swift_allocObject();
    v63 = v55;
    v64 = v56;

    sub_22766A070();
    *(v62 + 16) = v63;
    *(v62 + 24) = v64;
    *(v62 + 32) = v57;
    *(v62 + 40) = v58;
    swift_getKeyPath();
    v65 = sub_227230638(v47);

    *(&v95 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
    *&v94 = v65;

    v66 = sub_22766C820();
    sub_226E93170(&v94, v92, &unk_27D7BC990, &qword_227670A30);
    v67 = v93;
    if (v93)
    {
      v68 = __swift_project_boxed_opaque_existential_0(v92, v93);
      v69 = *(v67 - 8);
      v70 = *(v69 + 64);
      MEMORY[0x28223BE20](v68);
      v72 = &v87 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v69 + 16))(v72);
      v73 = sub_22766D170();
      (*(v69 + 8))(v72, v67);
      __swift_destroy_boxed_opaque_existential_0(v92);
    }

    else
    {
      v73 = 0;
    }

    v74 = [v96 expressionForConstantValue_];
    swift_unknownObjectRelease();
    [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A0 &qword_22767FF20))];

    sub_226E97D1C(&v94, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v75 = sub_22766A080();
    v77 = v76;
    MEMORY[0x22AA985C0]();
    if (*((*v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v86 = *((*v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v75(&v94, 0);
    swift_endAccess();

    v81 = sub_2272322B8(100);
    swift_setDeallocating();

    v82 = *(v62 + 40);

    (v88)(v62 + qword_2813B2078, v89);
    v83 = *(*v62 + 48);
    v84 = *(*v62 + 52);
    swift_deallocClassInstance();
    v45 = sub_22707488C(v81, v90);
  }

  return v45;
}

id sub_227077428(uint64_t a1, uint64_t a2, SEL *a3)
{
  v43 = a3;
  v45 = a2;
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  v50 = MEMORY[0x277D84F90];
  v6 = a1 + 48;
  v44 = a1 + 48;
LABEL_2:
  v7 = (v6 + 24 * v3);
  while (v4 != v3)
  {
    if (v3 >= v4)
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      if (!sub_22766CD20())
      {
        goto LABEL_25;
      }

LABEL_21:
      sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
      v39 = sub_22766C2B0();

      v40 = [objc_opt_self() *v43];

      return v40;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_23;
    }

    v10 = *v7;
    v7 += 24;
    v9 = v10;
    ++v3;
    if (v10)
    {
      if (v9 == 1)
      {
        v11 = *(v7 - 40);
        swift_getKeyPath();
        v12 = sub_227664570();
        v49 = MEMORY[0x277D83B88];
        v48[0] = v12;
        sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

        v13 = sub_22766C820();
        sub_226E93170(v48, v46, &unk_27D7BC990, &qword_227670A30);
        v14 = v47;
        if (v47)
        {
          v15 = __swift_project_boxed_opaque_existential_0(v46, v47);
          v16 = *(v14 - 8);
          v17 = *(v16 + 64);
          MEMORY[0x28223BE20](v15);
          v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v16 + 16))(v19);
          v20 = sub_22766D170();
          (*(v16 + 8))(v19, v14);
          v6 = v44;
          __swift_destroy_boxed_opaque_existential_0(v46);
        }

        else
        {
          v20 = 0;
        }

        v33 = [objc_opt_self() expressionForConstantValue_];
        swift_unknownObjectRelease();
        v34 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120));
        [v34 initWithLeftExpression:v13 rightExpression:v33 modifier:0 type:v45 options:0];

        v35 = sub_226E97D1C(v48, &unk_27D7BC990, &qword_227670A30);
      }

      else
      {
        v21 = *(v7 - 5);
        v22 = *(v7 - 4);
        KeyPath = swift_getKeyPath();
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
        v48[0] = v21;
        v48[1] = v22;
        sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
        sub_226F04958(v21, v22, 2);
        sub_226F04958(v21, v22, 2);

        v24 = sub_22766C820();
        sub_226E93170(v48, v46, &unk_27D7BC990, &qword_227670A30);
        v25 = v47;
        if (v47)
        {
          v26 = __swift_project_boxed_opaque_existential_0(v46, v47);
          v42[0] = v42;
          v42[1] = KeyPath;
          v27 = v24;
          v28 = *(v25 - 8);
          v29 = *(v28 + 64);
          MEMORY[0x28223BE20](v26);
          v31 = v42 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v28 + 16))(v31);
          v32 = sub_22766D170();
          (*(v28 + 8))(v31, v25);
          v24 = v27;
          __swift_destroy_boxed_opaque_existential_0(v46);
        }

        else
        {
          v32 = 0;
        }

        v36 = [objc_opt_self() expressionForConstantValue_];
        swift_unknownObjectRelease();
        v37 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120));
        [v37 initWithLeftExpression:v24 rightExpression:v36 modifier:0 type:v45 options:0];
        sub_226EE28B0(v21, v22, 2);

        v35 = sub_226E97D1C(v48, &unk_27D7BC990, &qword_227670A30);
        v6 = v44;
      }

      MEMORY[0x22AA985C0](v35);
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v38 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      sub_22766C3A0();
      v5 = v50;
      v3 = v8;
      goto LABEL_2;
    }
  }

  if (v5 >> 62)
  {
    goto LABEL_24;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

LABEL_25:

  return 0;
}

id sub_2270779EC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v40 = a3;
  v43 = a2;
  v3 = MEMORY[0x277D84F90];
  v49 = MEMORY[0x277D84F90];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 48);
    while (1)
    {
      v6 = *(v5 - 2);
      if (!*v5)
      {
        break;
      }

      if (*v5 == 1)
      {
        swift_getKeyPath();
        v7 = sub_227664C10();
        v9 = v8;
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
        v46 = v7;
        v47 = v9;
        sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

        v10 = sub_22766C820();
        sub_226E93170(&v46, v44, &unk_27D7BC990, &qword_227670A30);
        v11 = v45;
        if (v45)
        {
LABEL_8:
          v15 = __swift_project_boxed_opaque_existential_0(v44, v45);
          v16 = *(v11 - 8);
          v17 = *(v16 + 64);
          MEMORY[0x28223BE20](v15);
          v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v16 + 16))(v19);
          v20 = sub_22766D170();
          (*(v16 + 8))(v19, v11);
          __swift_destroy_boxed_opaque_existential_0(v44);
        }

        else
        {
          v20 = 0;
        }

        goto LABEL_13;
      }

      v21 = *(v5 - 1);
      swift_getKeyPath();
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v46 = v6;
      v47 = v21;
      sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
      sub_226F04958(v6, v21, 2);
      sub_226F04958(v6, v21, 2);

      v22 = sub_22766C820();
      sub_226E93170(&v46, v44, &unk_27D7BC990, &qword_227670A30);
      v23 = v45;
      if (v45)
      {
        v24 = __swift_project_boxed_opaque_existential_0(v44, v45);
        v41 = &v39;
        v42 = v22;
        v25 = *(v23 - 8);
        v26 = *(v25 + 64);
        MEMORY[0x28223BE20](v24);
        v28 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v25 + 16))(v28);
        v29 = sub_22766D170();
        (*(v25 + 8))(v28, v23);
        v22 = v42;
        __swift_destroy_boxed_opaque_existential_0(v44);
      }

      else
      {
        v29 = 0;
      }

      v32 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();
      v33 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900, &unk_22767CDD0));
      [v33 initWithLeftExpression:v22 rightExpression:v32 modifier:0 type:v43 options:0];

      sub_226EE28B0(v6, v21, 2);

LABEL_16:
      v34 = sub_226E97D1C(&v46, &unk_27D7BC990, &qword_227670A30);
      MEMORY[0x22AA985C0](v34);
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v35 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      v5 += 24;
      sub_22766C3A0();
      if (!--v4)
      {
        v3 = v49;
        goto LABEL_20;
      }
    }

    swift_getKeyPath();
    v12 = sub_227663FB0();
    v14 = v13;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v46 = v12;
    v47 = v14;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v10 = sub_22766C820();
    sub_226E93170(&v46, v44, &unk_27D7BC990, &qword_227670A30);
    v11 = v45;
    if (v45)
    {
      goto LABEL_8;
    }

    v20 = 0;
LABEL_13:
    v30 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    v31 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900, &unk_22767CDD0));
    [v31 initWithLeftExpression:v10 rightExpression:v30 modifier:0 type:v43 options:0];

    goto LABEL_16;
  }

LABEL_20:
  if (v3 >> 62)
  {
    if (sub_22766CD20())
    {
      goto LABEL_22;
    }

LABEL_24:

    return 0;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

LABEL_22:
  sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
  v36 = sub_22766C2B0();

  v37 = [objc_opt_self() *v40];

  return v37;
}

unint64_t *sub_227078108(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_22707A4E0(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void sub_2270781A4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v7 + 8))(v10, v6);
  v11 = a3[3];
  v85 = a3;
  v12 = __swift_project_boxed_opaque_existential_0(a3, v11);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v12 + 16);
  v16 = v12[3];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = v13;
  v22 = v14;

  sub_22766A070();
  v80 = v22;
  v81 = v21;
  *(v20 + 16) = v21;
  *(v20 + 24) = v22;
  LODWORD(v94) = v15;
  *(v20 + 32) = v15;
  *(v20 + 40) = v16;
  swift_getKeyPath();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v93 = v83;
  v86 = a1;
  v91 = a1;
  v92 = a2;
  v23 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
  v87 = a2;

  v84 = v23;
  v24 = sub_22766C820();
  sub_226E93170(&v91, v89, &unk_27D7BC990, &qword_227670A30);
  v25 = v90;
  if (v90)
  {
    v26 = __swift_project_boxed_opaque_existential_0(v89, v90);
    v27 = *(v25 - 8);
    v28 = *(v27 + 64);
    MEMORY[0x28223BE20](v26);
    v30 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v27 + 16))(v30);
    v31 = sub_22766D170();
    (*(v27 + 8))(v30, v25);
    __swift_destroy_boxed_opaque_existential_0(v89);
  }

  else
  {
    v31 = 0;
  }

  v82 = objc_opt_self();
  v32 = [v82 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v33 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0 &unk_227671120))];

  sub_226E97D1C(&v91, &unk_27D7BC990, &qword_227670A30);
  v34 = qword_2813B2078;
  swift_beginAccess();
  v35 = v33;
  v36 = sub_22766A080();
  v38 = v37;
  MEMORY[0x22AA985C0]();
  if (*((*v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v36(&v91, 0);
  swift_endAccess();

  v39 = sub_227542468(v20 + v34, v94, v16);
  if (v39)
  {
    if (v39 != 1)
    {
      swift_willThrow();
      goto LABEL_24;
    }
  }

  else
  {
    v61 = v88;
    v62 = sub_227284664(0);
    if (v61)
    {
      goto LABEL_24;
    }

    v63 = v62;
    [v62 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v64 = sub_22766C9E0();
    v88 = 0;
    v77 = sub_226EDAB24(v64);

    sub_226EDAB78(v77, v80);
  }

  v40 = __swift_project_boxed_opaque_existential_0(v85, v85[3]);
  v41 = *v40;
  v42 = v40[1];
  v43 = *(v40 + 16);
  v44 = v40[3];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85D8, qword_227687220);
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  v48 = swift_allocObject();
  v49 = v41;
  v50 = v42;

  sub_22766A070();
  v85 = v49;
  *(v48 + 16) = v49;
  *(v48 + 24) = v50;
  v81 = v50;
  *(v48 + 32) = v43;
  *(v48 + 40) = v44;
  swift_getKeyPath();
  v93 = v83;
  v91 = v86;
  v92 = v87;

  v51 = sub_22766C820();
  sub_226E93170(&v91, v89, &unk_27D7BC990, &qword_227670A30);
  v52 = v90;
  if (v90)
  {
    v53 = __swift_project_boxed_opaque_existential_0(v89, v90);
    v94 = &v79;
    v54 = v44;
    v55 = v43;
    v56 = *(v52 - 8);
    v57 = *(v56 + 64);
    MEMORY[0x28223BE20](v53);
    v59 = &v79 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v56 + 16))(v59);
    v60 = sub_22766D170();
    (*(v56 + 8))(v59, v52);
    v43 = v55;
    v44 = v54;
    __swift_destroy_boxed_opaque_existential_0(v89);
  }

  else
  {
    v60 = 0;
  }

  v65 = [v82 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v66 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E0 qword_227677890))];

  sub_226E97D1C(&v91, &unk_27D7BC990, &qword_227670A30);
  v67 = qword_2813B2078;
  swift_beginAccess();
  v68 = v66;
  v69 = sub_22766A080();
  v71 = v70;
  MEMORY[0x22AA985C0]();
  if (*((*v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v94 = *((*v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v69(&v91, 0);
  swift_endAccess();

  v72 = sub_227542420(v48 + v67, v43, v44);
  if (v72)
  {
    if (v72 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v73 = v88;
    v74 = sub_227284A84(0);
    if (!v73)
    {
      v75 = v74;
      [v74 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v76 = sub_22766C9E0();
      v78 = sub_226EDAB24(v76);

      sub_226EDAB78(v78, v81);

      return;
    }
  }

LABEL_24:
}

void sub_227078AE0(uint64_t a1, void *a2)
{
  v93 = a2;
  v101 = sub_2276639B0();
  v3 = *(v101 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v101);
  v6 = v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v99[0] = MEMORY[0x277D84F90];
    sub_226F1EF90(0, v7, 0);
    v8 = v99[0];
    v10 = *(v3 + 16);
    v9 = v3 + 16;
    v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v95 = *(v9 + 56);
    v96 = v10;
    v94 = (v9 - 8);
    do
    {
      v12 = v101;
      v13 = v9;
      v96(v6, v11, v101);
      v14 = sub_227663910();
      v16 = v15;
      (*v94)(v6, v12);
      v99[0] = v8;
      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      v19 = v8;
      if (v18 >= v17 >> 1)
      {
        sub_226F1EF90(v17 > 1, v18 + 1, 1);
        v19 = v99[0];
      }

      *(v19 + 16) = v18 + 1;
      v20 = v19 + 16 * v18;
      *(v20 + 32) = v14;
      *(v20 + 40) = v16;
      v11 += v95;
      --v7;
      v8 = v19;
      v9 = v13;
    }

    while (v7);
  }

  v21 = __swift_project_boxed_opaque_existential_0(v93, v93[3]);
  v22 = *v21;
  v23 = v21[1];
  v24 = *(v21 + 16);
  v25 = v21[3];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = swift_allocObject();
  v30 = v22;
  v31 = v23;

  sub_22766A070();
  v96 = v30;
  *(v29 + 16) = v30;
  *(v29 + 24) = v31;
  v94 = v31;
  LODWORD(v95) = v24;
  *(v29 + 32) = v24;
  *(v29 + 40) = v25;
  swift_getKeyPath();
  v101 = v8;
  v32 = sub_227073F2C(v8);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v100 = v91;
  v99[0] = v32;
  v33 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v90[1] = v33;
  v34 = sub_22766C820();
  sub_226E93170(v99, v97, &unk_27D7BC990, &qword_227670A30);
  v35 = v98;
  if (v98)
  {
    v36 = __swift_project_boxed_opaque_existential_0(v97, v98);
    v37 = *(v35 - 8);
    v38 = *(v37 + 64);
    MEMORY[0x28223BE20](v36);
    v40 = v90 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v37 + 16))(v40);
    v41 = sub_22766D170();
    (*(v37 + 8))(v40, v35);
    __swift_destroy_boxed_opaque_existential_0(v97);
  }

  else
  {
    v41 = 0;
  }

  v90[0] = objc_opt_self();
  v42 = [v90[0] expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A0 &qword_22767FF20))];

  sub_226E97D1C(v99, &unk_27D7BC990, &qword_227670A30);
  v43 = qword_2813B2078;
  swift_beginAccess();
  v44 = sub_22766A080();
  v46 = v45;
  MEMORY[0x22AA985C0]();
  if (*((*v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v44(v99, 0);
  swift_endAccess();

  v47 = sub_2275424F8(v29 + v43, v95, v25);
  if (v47)
  {
    v48 = v101;
    v49 = v96;
    if (v47 == 1)
    {

      goto LABEL_14;
    }

    swift_willThrow();
LABEL_19:

    swift_setDeallocating();
    v74 = qword_2813B2078;
    v75 = sub_22766A100();
    (*(*(v75 - 8) + 8))(v29 + v74, v75);
    v76 = *(*v29 + 48);
    v77 = *(*v29 + 52);
    swift_deallocClassInstance();
    return;
  }

  v70 = v92;
  v71 = sub_227284694(0);
  v48 = v101;
  v49 = v96;
  if (v70)
  {
    goto LABEL_19;
  }

  v72 = v71;
  [v71 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v73 = sub_22766C9E0();
  v92 = 0;
  v88 = sub_226EDAB24(v73);

  sub_226EDAB78(v88, v94);

LABEL_14:
  v50 = __swift_project_boxed_opaque_existential_0(v93, v93[3]);
  v51 = *v50;
  v52 = v50[1];
  v53 = *(v50 + 16);
  v54 = v50[3];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9698, &qword_2276776A0);
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  v58 = swift_allocObject();
  v59 = v51;
  v60 = v52;

  sub_22766A070();
  v95 = v60;
  v96 = v59;
  *(v58 + 16) = v59;
  *(v58 + 24) = v60;
  LODWORD(v101) = v53;
  *(v58 + 32) = v53;
  *(v58 + 40) = v54;
  swift_getKeyPath();
  v61 = sub_227073F2C(v48);

  v100 = v91;
  v99[0] = v61;

  v62 = sub_22766C820();
  sub_226E93170(v99, v97, &unk_27D7BC990, &qword_227670A30);
  v63 = v98;
  if (v98)
  {
    v64 = __swift_project_boxed_opaque_existential_0(v97, v98);
    v65 = *(v63 - 8);
    v66 = *(v65 + 64);
    MEMORY[0x28223BE20](v64);
    v68 = v90 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v65 + 16))(v68);
    v69 = sub_22766D170();
    (*(v65 + 8))(v68, v63);
    __swift_destroy_boxed_opaque_existential_0(v97);
  }

  else
  {
    v69 = 0;
  }

  v78 = [v90[0] expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B96A8 &unk_2276776D0))];

  sub_226E97D1C(v99, &unk_27D7BC990, &qword_227670A30);
  v79 = qword_2813B2078;
  swift_beginAccess();
  v80 = sub_22766A080();
  v82 = v81;
  MEMORY[0x22AA985C0]();
  if (*((*v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v80(v99, 0);
  swift_endAccess();

  v83 = sub_2275424B0(v58 + v79, v101, v54);
  if (v83)
  {
    if (v83 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v84 = v92;
    v85 = sub_22728467C(0);
    if (!v84)
    {
      v86 = v85;
      [v85 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v87 = sub_22766C9E0();
      v89 = sub_226EDAB24(v87);

      sub_226EDAB78(v89, v95);

      return;
    }
  }
}

uint64_t sub_227079538(uint64_t a1, void *a2)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  result = sub_227556AA8(a1, v10[1], *(v10 + 16), v10[3]);
  if (!v2)
  {
    v19[1] = 0;
    sub_22766A6C0();

    v12 = sub_22766B380();
    v13 = sub_22766C8B0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 141558274;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2080;
      sub_227663180();
      sub_22707FCA0(&qword_28139BD58, MEMORY[0x277D4FCA8]);
      v16 = sub_22766C610();
      v18 = sub_226E97AE8(v16, v17, &v20);

      *(v14 + 14) = v18;
      _os_log_impl(&dword_226E8E000, v12, v13, "Inserted %{mask.hash}s", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AA9A450](v15, -1, -1);
      MEMORY[0x22AA9A450](v14, -1, -1);
    }

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_2270797E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_227664AE0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22707984C(uint64_t a1, void *a2)
{
  v3 = v2;
  v122 = a2;
  v123 = sub_2276624A0();
  v5 = *(v123 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v123);
  v126 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v114 = &v110 - v9;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v11 + 8))(v14, v10);
  v15 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 56);
  v19 = (v16 + 63) >> 6;
  v113 = v5 + 16;
  v112 = v5 + 32;
  v116 = v5;
  v115 = (v5 + 8);
  v117 = a1;

  v21 = 0;
  v111 = a1 + 56;
  v110 = v19;
  while (v18)
  {
    v124 = v3;
LABEL_12:
    v28 = v116;
    v29 = v114;
    v30 = v123;
    (*(v116 + 16))(v114, *(v117 + 48) + *(v116 + 72) * (__clz(__rbit64(v18)) | (v21 << 6)), v123);
    (*(v28 + 32))(v126, v29, v30);
    v31 = __swift_project_boxed_opaque_existential_0(v122, v122[3]);
    v32 = *v31;
    v33 = v31[1];
    v34 = *(v31 + 16);
    v35 = v31[3];
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8580, &qword_2276777B0);
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    v39 = swift_allocObject();
    v40 = v32;
    v41 = v33;

    sub_22766A070();
    v127 = v41;
    v128 = v40;
    *(v39 + 16) = v40;
    *(v39 + 24) = v41;
    v121 = v34;
    *(v39 + 32) = v34;
    v125 = v39;
    v134 = v35;
    *(v39 + 40) = v35;
    swift_getKeyPath();
    v42 = sub_227662390();
    v44 = v43;
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v133 = v120;
    v131 = v42;
    v132 = v44;
    v45 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v119 = v45;
    v46 = sub_22766C820();
    sub_226E93170(&v131, v129, &unk_27D7BC990, &qword_227670A30);
    v47 = v130;
    if (v130)
    {
      v48 = __swift_project_boxed_opaque_existential_0(v129, v130);
      v49 = *(v47 - 8);
      v50 = *(v49 + 64);
      MEMORY[0x28223BE20](v48);
      v52 = &v110 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v49 + 16))(v52);
      v53 = sub_22766D170();
      (*(v49 + 8))(v52, v47);
      __swift_destroy_boxed_opaque_existential_0(v129);
    }

    else
    {
      v53 = 0;
    }

    v118 = objc_opt_self();
    v54 = [v118 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v55 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8590 &unk_2276777E0))];

    sub_226E97D1C(&v131, &unk_27D7BC990, &qword_227670A30);
    v56 = qword_2813B2078;
    v57 = v125;
    swift_beginAccess();
    v58 = v55;
    v59 = sub_22766A080();
    v61 = v60;
    MEMORY[0x22AA985C0]();
    if (*((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v103 = *((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v59(&v131, 0);
    swift_endAccess();

    v62 = sub_2275425D0(v57 + v56, v121, v134);
    if (v62)
    {
      if (v62 != 1)
      {
LABEL_31:
        swift_willThrow();
LABEL_32:
        v105 = v128;
        (*v115)(v126, v123);

        swift_setDeallocating();
        v106 = qword_2813B2078;
        v107 = sub_22766A100();
        (*(*(v107 - 8) + 8))(v57 + v106, v107);
        v108 = *(*v57 + 48);
        v109 = *(*v57 + 52);
        return swift_deallocClassInstance();
      }
    }

    else
    {
      v63 = v124;
      v64 = sub_2272846AC(0);
      if (v63)
      {
        goto LABEL_32;
      }

      v65 = v64;
      [v64 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v66 = sub_22766C9E0();
      v124 = 0;
      v67 = sub_226EDAB24(v66);

      sub_226EDAB78(v67, v127);
    }

    v68 = __swift_project_boxed_opaque_existential_0(v122, v122[3]);
    v69 = *v68;
    v70 = v68[1];
    v71 = *(v68 + 16);
    v72 = v68[3];
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE600, &qword_2276711C8);
    v74 = *(v73 + 48);
    v75 = *(v73 + 52);
    v76 = swift_allocObject();
    v77 = v69;
    v78 = v70;
    v57 = v76;
    v79 = v78;

    sub_22766A070();
    v127 = v79;
    v128 = v77;
    *(v57 + 16) = v77;
    *(v57 + 24) = v79;
    v121 = v71;
    *(v57 + 32) = v71;
    v134 = v72;
    *(v57 + 40) = v72;
    swift_getKeyPath();
    v80 = sub_227662390();
    v133 = v120;
    v131 = v80;
    v132 = v81;

    v82 = sub_22766C820();
    sub_226E93170(&v131, v129, &unk_27D7BC990, &qword_227670A30);
    v83 = v130;
    if (v130)
    {
      v84 = __swift_project_boxed_opaque_existential_0(v129, v130);
      v125 = v57;
      v85 = *(v83 - 8);
      v86 = *(v85 + 64);
      MEMORY[0x28223BE20](v84);
      v88 = &v110 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v85 + 16))(v88);
      v89 = sub_22766D170();
      (*(v85 + 8))(v88, v83);
      v57 = v125;
      __swift_destroy_boxed_opaque_existential_0(v129);
    }

    else
    {
      v89 = 0;
    }

    v90 = [v118 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v91 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE610 &qword_2276711F8))];

    sub_226E97D1C(&v131, &unk_27D7BC990, &qword_227670A30);
    v92 = qword_2813B2078;
    swift_beginAccess();
    v93 = v91;
    v94 = sub_22766A080();
    v96 = v95;
    MEMORY[0x22AA985C0]();
    if (*((*v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v104 = *((*v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v94(&v131, 0);
    swift_endAccess();

    v97 = sub_227542588(v57 + v92, v121, v134);
    if (v97)
    {
      v3 = v124;
      v22 = v127;
      if (v97 != 1)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v98 = v124;
      v99 = sub_2272846C4(0);
      v3 = v98;
      if (v98)
      {
        goto LABEL_32;
      }

      v100 = v99;
      [v99 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v101 = sub_22766C9E0();
      v102 = sub_226EDAB24(v101);

      v22 = v127;
      sub_226EDAB78(v102, v127);
    }

    v18 &= v18 - 1;
    (*v115)(v126, v123);

    swift_setDeallocating();
    v23 = qword_2813B2078;
    v24 = sub_22766A100();
    (*(*(v24 - 8) + 8))(v57 + v23, v24);
    v25 = *(*v57 + 48);
    v26 = *(*v57 + 52);
    result = swift_deallocClassInstance();
    v15 = v111;
    v19 = v110;
  }

  while (1)
  {
    v27 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v27 >= v19)
    {
    }

    v18 = *(v15 + 8 * v27);
    ++v21;
    if (v18)
    {
      v124 = v3;
      v21 = v27;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22707A4E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a2;
  v41 = a1;
  v6 = sub_227663480();
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v49 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v42 = 0;
  v43 = v9 + 16;
  v50 = a4 + 56;
  v44 = v9;
  v45 = (v9 + 8);
  v46 = v11;
  v47 = result;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_13:
    v23 = v20 | (v12 << 6);
    v24 = *(v49 + 48);
    v25 = *(v44 + 72);
    v48 = v23;
    (*(v44 + 16))(v11, v24 + v25 * v23, v6);
    v26 = sub_227663410();
    v28 = v27;
    if (*(a4 + 16) && (v29 = v26, v30 = *(a4 + 40), sub_22766D370(), sub_22766C100(), v31 = sub_22766D3F0(), v32 = -1 << *(a4 + 32), v33 = v31 & ~v32, ((*(v50 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
    {
      v34 = ~v32;
      while (1)
      {
        v35 = (*(a4 + 48) + 16 * v33);
        v36 = *v35 == v29 && v35[1] == v28;
        if (v36 || (sub_22766D190() & 1) != 0)
        {
          break;
        }

        v33 = (v33 + 1) & v34;
        if (((*(v50 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v11 = v46;
      v6 = v47;
      result = (*v45)(v46, v47);
      *(v41 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      if (__OFADD__(v42++, 1))
      {
        __break(1u);
LABEL_26:
        v38 = v49;

        return sub_22726AD50(v41, v40, v42, v38);
      }
    }

    else
    {
LABEL_5:

      v11 = v46;
      v6 = v47;
      result = (*v45)(v46, v47);
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_26;
    }

    v22 = *(v14 + 8 * v12);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v18 = (v22 - 1) & v22;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22707A7E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v56 = *MEMORY[0x277D85DE8];
  v6 = sub_227663480();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v54 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;

  v55 = a2;
  if (v10 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v44 = v11;
    v45 = v3;
    v43 = &v43;
    MEMORY[0x28223BE20](v13);
    v46 = &v43 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v46, v12);
    v11 = 0;
    v14 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    v16 = v15 < 64 ? ~(-1 << v15) : -1;
    v17 = v16 & *(a1 + 56);
    v12 = (v15 + 63) >> 6;
    v18 = v7 + 16;
    v19 = v7;
    v7 = a2 + 56;
    v51 = v18;
    v52 = v19;
    v47 = 0;
    v48 = (v19 + 8);
    v49 = v6;
    v50 = a1;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v23 = v20 | (v11 << 6);
      v24 = *(a1 + 48);
      v25 = *(v52 + 72);
      v53 = v23;
      (*(v52 + 16))(v54, v24 + v25 * v23, v6);
      v26 = sub_227663410();
      v28 = v27;
      if (!*(v55 + 16))
      {
        goto LABEL_6;
      }

      v29 = v26;
      v30 = *(v55 + 40);
      sub_22766D370();
      sub_22766C100();
      v31 = sub_22766D3F0();
      v32 = v55;
      v33 = -1 << *(v55 + 32);
      v34 = v31 & ~v33;
      if ((*(v7 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v3 = ~v33;
        while (1)
        {
          v35 = (*(v32 + 48) + 16 * v34);
          v36 = *v35 == v29 && v35[1] == v28;
          if (v36 || (sub_22766D190() & 1) != 0)
          {
            break;
          }

          v34 = (v34 + 1) & v3;
          v32 = v55;
          if (((*(v7 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v6 = v49;
        (*v48)(v54, v49);
        *&v46[(v53 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v53;
        v37 = __OFADD__(v47++, 1);
        a1 = v50;
        if (v37)
        {
          __break(1u);
LABEL_27:
          v38 = sub_22726AD50(v46, v44, v47, a1);

          goto LABEL_28;
        }
      }

      else
      {
LABEL_6:

        v6 = v49;
        (*v48)(v54, v49);
        a1 = v50;
      }
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v11 >= v12)
      {
        goto LABEL_27;
      }

      v22 = *(v14 + 8 * v11);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    a2 = v55;
  }

  v41 = swift_slowAlloc();
  v42 = v55;

  v38 = sub_227078108(v41, v11, a1, v42);

  MEMORY[0x22AA9A450](v41, -1, -1);

LABEL_28:
  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

uint64_t sub_22707AC34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v99[5] = a3;
  v7 = sub_227664F30();
  v93 = *(v7 - 8);
  v94 = v7;
  v8 = *(v93 + 64);
  MEMORY[0x28223BE20](v7);
  v95 = v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a4[3];
  v92 = a4;
  v11 = __swift_project_boxed_opaque_existential_0(a4, v10);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 16);
  v15 = v11[3];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v20 = v12;
  v21 = v13;

  sub_22766A070();
  *(v19 + 16) = v20;
  *(v19 + 24) = v21;
  *(v19 + 32) = v14;
  *(v19 + 40) = v15;
  swift_getKeyPath();
  v99[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v99[0] = a1;
  v99[1] = a2;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v22 = sub_22766C820();
  sub_226E93170(v99, v97, &unk_27D7BC990, &qword_227670A30);
  v23 = v98;
  if (v98)
  {
    v24 = __swift_project_boxed_opaque_existential_0(v97, v98);
    v25 = *(v23 - 8);
    v26 = *(v25 + 64);
    MEMORY[0x28223BE20](v24);
    v28 = v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v28);
    v29 = sub_22766D170();
    (*(v25 + 8))(v28, v23);
    __swift_destroy_boxed_opaque_existential_0(v97);
  }

  else
  {
    v29 = 0;
  }

  v30 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v31 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0 &unk_227671120))];

  sub_226E97D1C(v99, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v32 = v31;
  v33 = sub_22766A080();
  v35 = v34;
  MEMORY[0x22AA985C0]();
  if (*((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v87 = *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v33(v99, 0);
  swift_endAccess();

  v36 = sub_2270744C4();
  swift_beginAccess();
  v37 = sub_22766A080();
  v39 = v38;
  v40 = v36;
  MEMORY[0x22AA985C0]();
  if (*((*v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v88 = *((*v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v37(v99, 0);
  swift_endAccess();

  v41 = v96;
  v42 = sub_2272328B8(100);
  if (v41)
  {
    swift_setDeallocating();

    v43 = *(v19 + 40);

    KeyPath = qword_2813B2078;
    v45 = sub_22766A100();
    (*(*(v45 - 8) + 8))(v19 + KeyPath, v45);
    v46 = *(*v19 + 48);
    v47 = *(*v19 + 52);
    swift_deallocClassInstance();
  }

  else
  {
    v48 = v42;
    swift_setDeallocating();

    v49 = *(v19 + 40);

    v50 = qword_2813B2078;
    v51 = sub_22766A100();
    v52 = *(v51 - 8);
    v53 = *(v52 + 8);
    v96 = v51;
    v90[1] = v52 + 8;
    v91 = v53;
    (v53)(v19 + v50);
    v54 = *(*v19 + 48);
    v55 = *(*v19 + 52);
    swift_deallocClassInstance();
    v56 = sub_227072B70(v48);
    v57 = sub_226F3E6A8(v56);

    v58 = sub_227072E78(v57);
    v90[0] = 0;

    sub_226F44598(v58);

    sub_227664F00();
    v59 = sub_2270364AC();
    v61 = sub_2270746A0(v59, v60);

    v62 = __swift_project_boxed_opaque_existential_0(v92, v92[3]);
    v63 = *v62;
    v64 = v62[1];
    v65 = *(v62 + 16);
    v66 = v62[3];
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
    v68 = *(v67 + 48);
    v69 = *(v67 + 52);
    v70 = swift_allocObject();
    v71 = v63;
    v72 = v64;

    sub_22766A070();
    *(v70 + 16) = v71;
    *(v70 + 24) = v72;
    *(v70 + 32) = v65;
    *(v70 + 40) = v66;
    swift_beginAccess();
    v73 = sub_22766A080();
    v75 = v74;
    v76 = v61;
    MEMORY[0x22AA985C0]();
    if (*((*v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v89 = *((*v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v73(v99, 0);
    swift_endAccess();
    KeyPath = swift_getKeyPath();
    v77 = v90[0];
    v78 = sub_2273FC91C(KeyPath);
    if (v77)
    {

      swift_setDeallocating();

      v79 = *(v70 + 40);

      v91(v70 + qword_2813B2078, v96);
      v80 = *(*v70 + 48);
      v81 = *(*v70 + 52);
      swift_deallocClassInstance();
    }

    else
    {
      v82 = sub_226F3E6A8(v78);

      swift_setDeallocating();

      v83 = *(v70 + 40);

      v91(v70 + qword_2813B2078, v96);
      v84 = *(*v70 + 48);
      v85 = *(*v70 + 52);
      swift_deallocClassInstance();
      KeyPath = sub_22707A7E4(v48, v82);
    }

    (*(v93 + 8))(v95, v94);
  }

  return KeyPath;
}

char *sub_22707B578(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v3 + 8))(v6, v2);
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8580, &qword_2276777B0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v8;
  v17 = v9;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  v18 = sub_2272325B8(100);
  swift_setDeallocating();

  v19 = *(v15 + 40);

  v20 = qword_2813B2078;
  v21 = sub_22766A100();
  (*(*(v21 - 8) + 8))(v15 + v20, v21);
  v22 = *(*v15 + 48);
  v23 = *(*v15 + 52);
  swift_deallocClassInstance();
  return v18;
}

char *sub_22707B7C4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8580, &qword_2276777B0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v4;
  v13 = v5;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  swift_getKeyPath();
  v14 = sub_2270730AC(a1, MEMORY[0x277CC9260], MEMORY[0x277CC9210]);
  v37[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v37[0] = v14;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v15 = sub_22766C820();
  sub_226E93170(v37, v35, &unk_27D7BC990, &qword_227670A30);
  v16 = v36;
  if (v36)
  {
    v17 = __swift_project_boxed_opaque_existential_0(v35, v36);
    v18 = *(v16 - 8);
    v19 = *(v18 + 64);
    MEMORY[0x28223BE20](v17);
    v21 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21);
    v22 = sub_22766D170();
    (*(v18 + 8))(v21, v16);
    __swift_destroy_boxed_opaque_existential_0(v35);
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8590 &unk_2276777E0))];

  sub_226E97D1C(v37, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v24 = sub_22766A080();
  v26 = v25;
  MEMORY[0x22AA985C0]();
  if (*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v34 = *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v24(v37, 0);
  swift_endAccess();

  v27 = sub_2272325B8(100);
  swift_setDeallocating();

  v28 = *(v11 + 40);

  v29 = qword_2813B2078;
  v30 = sub_22766A100();
  (*(*(v30 - 8) + 8))(v11 + v29, v30);
  v31 = *(*v11 + 48);
  v32 = *(*v11 + 52);
  swift_deallocClassInstance();
  return v27;
}

void sub_22707BC10(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v123 = a2;
  v6 = __swift_project_boxed_opaque_existential_0(a2, v5);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = v7;
  v16 = v8;

  sub_22766A070();
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  swift_getKeyPath();
  v17 = sub_2270730AC(a1, MEMORY[0x277CC9260], MEMORY[0x277CC9210]);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v122 = v118;
  v121[0] = v17;
  v18 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v117 = v18;
  v19 = sub_22766C820();
  sub_226E93170(v121, v119, &unk_27D7BC990, &qword_227670A30);
  v20 = v120;
  if (v120)
  {
    v21 = __swift_project_boxed_opaque_existential_0(v119, v120);
    v22 = *(v20 - 8);
    v23 = *(v22 + 64);
    MEMORY[0x28223BE20](v21);
    v25 = v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25);
    v26 = sub_22766D170();
    (*(v22 + 8))(v25, v20);
    __swift_destroy_boxed_opaque_existential_0(v119);
  }

  else
  {
    v26 = 0;
  }

  v116 = objc_opt_self();
  v27 = [v116 expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A0 &qword_22767FF20))];

  sub_226E97D1C(v121, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v28 = sub_22766A080();
  v30 = v29;
  MEMORY[0x22AA985C0]();
  if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v106 = *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v28(v121, 0);
  swift_endAccess();

  v31 = sub_2272F930C(0x64);
  if (v2)
  {
    swift_setDeallocating();

    v32 = *(v14 + 40);

    v33 = qword_2813B2078;
    v34 = sub_22766A100();
    (*(*(v34 - 8) + 8))(v14 + v33, v34);
LABEL_22:
    v93 = *(*v14 + 48);
    v94 = *(*v14 + 52);
    swift_deallocClassInstance();
    return;
  }

  v115 = v31;
  swift_setDeallocating();

  v35 = *(v14 + 40);

  v36 = qword_2813B2078;
  v37 = sub_22766A100();
  v38 = *(v37 - 8);
  v108 = *(v38 + 8);
  v109 = v37;
  v107[1] = v38 + 8;
  v108(v14 + v36);
  v39 = *(*v14 + 48);
  v40 = *(*v14 + 52);
  swift_deallocClassInstance();
  v41 = __swift_project_boxed_opaque_existential_0(v123, v123[3]);
  v42 = *v41;
  v43 = v41[1];
  v44 = *(v41 + 16);
  v45 = v41[3];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9698, &qword_2276776A0);
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  v14 = swift_allocObject();
  v49 = v42;
  v50 = v43;

  sub_22766A070();
  v113 = v49;
  v114 = v45;
  *(v14 + 16) = v49;
  *(v14 + 24) = v50;
  v110 = v50;
  v112 = v44;
  *(v14 + 32) = v44;
  *(v14 + 40) = v45;
  swift_getKeyPath();
  v51 = sub_2270730AC(v115, MEMORY[0x277D52038], MEMORY[0x277D52030]);
  v111 = 0;
  v122 = v118;
  v121[0] = v51;

  v52 = sub_22766C820();
  sub_226E93170(v121, v119, &unk_27D7BC990, &qword_227670A30);
  v53 = v120;
  if (v120)
  {
    v54 = __swift_project_boxed_opaque_existential_0(v119, v120);
    v55 = *(v53 - 8);
    v56 = *(v55 + 64);
    MEMORY[0x28223BE20](v54);
    v58 = v107 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v55 + 16))(v58);
    v59 = sub_22766D170();
    (*(v55 + 8))(v58, v53);
    __swift_destroy_boxed_opaque_existential_0(v119);
  }

  else
  {
    v59 = 0;
  }

  v60 = [v116 expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B96A8 &unk_2276776D0))];

  sub_226E97D1C(v121, &unk_27D7BC990, &qword_227670A30);
  v61 = qword_2813B2078;
  swift_beginAccess();
  v62 = sub_22766A080();
  v64 = v63;
  MEMORY[0x22AA985C0]();
  if (*((*v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v62(v121, 0);
  swift_endAccess();

  v65 = sub_2275424B0(v14 + v61, v112, v114);
  if (v65)
  {
    v66 = v115;
    v67 = v113;
    if (v65 == 1)
    {

      goto LABEL_16;
    }

    swift_willThrow();
LABEL_21:

    swift_setDeallocating();
    (v108)(v14 + qword_2813B2078, v109);
    goto LABEL_22;
  }

  v89 = v111;
  v90 = sub_22728467C(0);
  v66 = v115;
  v67 = v113;
  if (v89)
  {
    goto LABEL_21;
  }

  v91 = v90;
  [v90 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v92 = sub_22766C9E0();
  v104 = sub_226EDAB24(v92);

  sub_226EDAB78(v104, v110);

  v111 = 0;
LABEL_16:
  v68 = __swift_project_boxed_opaque_existential_0(v123, v123[3]);
  v69 = *v68;
  v70 = v68[1];
  v71 = *(v68 + 16);
  v72 = v68[3];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA080, &qword_227677700);
  v74 = *(v73 + 48);
  v75 = *(v73 + 52);
  v76 = swift_allocObject();
  v77 = v69;
  v78 = v70;

  sub_22766A070();
  v113 = v78;
  v114 = v77;
  *(v76 + 16) = v77;
  *(v76 + 24) = v78;
  LODWORD(v115) = v71;
  *(v76 + 32) = v71;
  v123 = v72;
  *(v76 + 40) = v72;
  swift_getKeyPath();
  v79 = v111;
  v80 = sub_2270730AC(v66, MEMORY[0x277D52038], MEMORY[0x277D52030]);

  v122 = v118;
  v121[0] = v80;

  v81 = sub_22766C820();
  sub_226E93170(v121, v119, &unk_27D7BC990, &qword_227670A30);
  v82 = v120;
  if (v120)
  {
    v83 = __swift_project_boxed_opaque_existential_0(v119, v120);
    v84 = *(v82 - 8);
    v85 = *(v84 + 64);
    MEMORY[0x28223BE20](v83);
    v87 = v107 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v84 + 16))(v87);
    v88 = sub_22766D170();
    (*(v84 + 8))(v87, v82);
    __swift_destroy_boxed_opaque_existential_0(v119);
  }

  else
  {
    v88 = 0;
  }

  v95 = [v116 expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA088 &qword_227677730))];

  sub_226E97D1C(v121, &unk_27D7BC990, &qword_227670A30);
  v96 = qword_2813B2078;
  swift_beginAccess();
  v97 = sub_22766A080();
  v99 = v98;
  MEMORY[0x22AA985C0]();
  if (*((*v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v118 = *((*v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v97(v121, 0);
  swift_endAccess();

  v100 = sub_227543098(v76 + v96, v115, v123);
  if (v100)
  {
    if (v100 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_30;
  }

  v101 = sub_227284994(0);
  if (v79)
  {
LABEL_30:

    return;
  }

  v102 = v101;
  [v101 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v103 = sub_22766C9E0();
  v105 = sub_226EDAB24(v103);

  sub_226EDAB78(v105, v113);
}

uint64_t sub_22707C950(uint64_t a1, void *a2)
{
  v83 = a2;
  v78 = sub_2276687D0();
  v85 = *(v78 - 8);
  v4 = *(v85 + 64);
  v5 = MEMORY[0x28223BE20](v78);
  v74 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v73 = &v68 - v8;
  MEMORY[0x28223BE20](v7);
  v72 = &v68 - v9;
  v90 = sub_227664AE0();
  v10 = *(*(v90 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v90);
  v84 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v68 - v13;
  v79 = sub_2276668A0();
  v86 = *(v79 - 1);
  v15 = v86[8];
  v16 = MEMORY[0x28223BE20](v79);
  v77 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v76 = &v68 - v19;
  MEMORY[0x28223BE20](v18);
  v75 = &v68 - v20;
  v21 = sub_2276639B0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v68 - v27;
  v29 = sub_2270733BC(a1);
  v81 = v2;
  v82 = v29;
  v30 = a1 + 56;
  v31 = 1 << *(a1 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(a1 + 56);
  v34 = (v31 + 63) >> 6;
  v88 = v22 + 8;
  v89 = v22 + 16;
  v80 = (v86 + 4);
  v91 = a1;

  v36 = 0;
  v87 = MEMORY[0x277D84F90];
  while (1)
  {
    v37 = v36;
    if (!v33)
    {
      break;
    }

LABEL_8:
    v38 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    (*(v22 + 16))(v28, *(v91 + 48) + *(v22 + 72) * (v38 | (v36 << 6)), v21);
    sub_227663970();
    (*(v22 + 8))(v28, v21);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v71 = *v80;
      v71(v77, v14, v79);
      v71(v76, v77, v79);
      v71(v75, v76, v79);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = sub_2273A65AC(0, v87[2] + 1, 1, v87);
      }

      v40 = v87[2];
      v39 = v87[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        v70 = v40 + 1;
        v69 = v40;
        v44 = sub_2273A65AC(v39 > 1, v40 + 1, 1, v87);
        v41 = v70;
        v40 = v69;
        v87 = v44;
      }

      v43 = v86;
      v42 = v87;
      v87[2] = v41;
      result = (v71)(v42 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + v43[9] * v40, v75, v79);
    }

    else
    {
      result = sub_226F32360(v14);
    }
  }

  while (1)
  {
    v36 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v36 >= v34)
    {
      break;
    }

    v33 = *(v30 + 8 * v36);
    ++v37;
    if (v33)
    {
      goto LABEL_8;
    }
  }

  v45 = v91;

  v46 = 1 << *(v45 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(v45 + 56);
  v49 = (v46 + 63) >> 6;
  v80 = (v85 + 32);

  v50 = 0;
  v86 = MEMORY[0x277D84F90];
  v51 = v84;
  while (v48)
  {
    v52 = v50;
LABEL_23:
    v53 = __clz(__rbit64(v48));
    v48 &= v48 - 1;
    (*(v22 + 16))(v26, *(v91 + 48) + *(v22 + 72) * (v53 | (v52 << 6)), v21);
    sub_227663970();
    (*(v22 + 8))(v26, v21);
    if (swift_getEnumCaseMultiPayload())
    {
      result = sub_226F32360(v51);
      v50 = v52;
    }

    else
    {
      v54 = *v80;
      (*v80)(v74, v51, v78);
      v54(v73, v74, v78);
      v79 = v54;
      v54(v72, v73, v78);
      v55 = v86;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_2273A6584(0, v55[2] + 1, 1, v55);
      }

      v57 = v55[2];
      v56 = v55[3];
      v86 = v55;
      v58 = (v57 + 1);
      v51 = v84;
      if (v57 >= v56 >> 1)
      {
        v77 = (v57 + 1);
        v61 = sub_2273A6584(v56 > 1, v57 + 1, 1, v86);
        v58 = v77;
        v86 = v61;
      }

      v59 = v85;
      v60 = v86;
      v86[2] = v58;
      result = v79(&v60[((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v57], v72, v78);
      v50 = v52;
    }
  }

  while (1)
  {
    v52 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v52 >= v49)
    {

      v62 = v83;
      v63 = __swift_project_boxed_opaque_existential_0(v83, v83[3]);
      v64 = v81;
      sub_22756D81C(v82, v63[1], *(v63 + 16), v63[3]);

      if (v64)
      {
      }

      else
      {
        v65 = __swift_project_boxed_opaque_existential_0(v62, v62[3]);
        sub_2275616B4(v87, v65[1], *(v65 + 16), v65[3]);
        v66 = v86;

        v67 = __swift_project_boxed_opaque_existential_0(v62, v62[3]);
        sub_22756D164(v66, v67[1], *(v67 + 16), v67[3]);
      }
    }

    v48 = *(v30 + 8 * v52);
    ++v50;
    if (v48)
    {
      goto LABEL_23;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_22707D144(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v3 + 8))(v6, v2);
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[3];
  v11 = *(v7 + 16);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v8;
  v17 = v9;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v11;
  *(v15 + 40) = v10;
  v18 = qword_2813B2078;
  swift_beginAccess();
  v19 = sub_2275424F8(v15 + v18, v11, v10);
  if (v19)
  {
    if (v19 != 1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v46 = v62;
    v47 = sub_227284694(0);
    if (v46)
    {
      goto LABEL_9;
    }

    v48 = v47;
    [v47 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v49 = sub_22766C9E0();
    v62 = 0;
    v50 = sub_226EDAB24(v49);

    sub_226EDAB78(v50, v17);
  }

  v20 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v21 = *v20;
  v22 = v20[1];
  v23 = v20[3];
  v24 = *(v20 + 16);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9698, &qword_2276776A0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  v29 = v21;
  v30 = v22;

  sub_22766A070();
  *(v28 + 16) = v29;
  *(v28 + 24) = v30;
  *(v28 + 32) = v24;
  *(v28 + 40) = v23;
  v31 = qword_2813B2078;
  swift_beginAccess();
  v32 = sub_2275424B0(v28 + v31, v24, v23);
  if (v32)
  {
    if (v32 == 1)
    {

      goto LABEL_7;
    }

LABEL_10:
    swift_willThrow();
    goto LABEL_9;
  }

  v51 = v62;
  v52 = sub_22728467C(0);
  if (v51)
  {
    goto LABEL_9;
  }

  v57 = v52;
  [v52 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v58 = sub_22766C9E0();
  v62 = 0;
  v59 = sub_226EDAB24(v58);

  sub_226EDAB78(v59, v30);

LABEL_7:
  v33 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v34 = *v33;
  v35 = v33[1];
  v36 = v33[3];
  v37 = *(v33 + 16);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA080, &qword_227677700);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  v41 = swift_allocObject();
  v42 = v34;
  v43 = v35;

  sub_22766A070();
  *(v41 + 16) = v42;
  *(v41 + 24) = v43;
  *(v41 + 32) = v37;
  *(v41 + 40) = v36;
  v44 = qword_2813B2078;
  swift_beginAccess();
  v45 = sub_227543098(v41 + v44, v37, v36);
  if (v45)
  {
    if (v45 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_9;
  }

  v53 = v62;
  v54 = sub_227284994(0);
  if (v53)
  {
LABEL_9:

    return;
  }

  v55 = v54;
  [v54 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v56 = sub_22766C9E0();
  v60 = sub_226EDAB24(v56);

  sub_226EDAB78(v60, v43);
}

uint64_t sub_22707D6D4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v7 = sub_22744ECE8(a1, a2, *v6, v6[1], *(v6 + 16), v6[3]);
  v8 = v7;
  v9 = sub_227284664(0);
  if (v3)
  {
  }

  else
  {
    v10 = v9;
    [v9 setResultType_];
    [v10 setFetchLimit_];
    [v10 setFetchOffset_];
    [v10 setIncludesSubentities_];
    v11 = *(v7 + 16);
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v8 = sub_22766C9D0();
  }

  return v8;
}

char *sub_22707D7F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = v6;
  v15 = v7;

  sub_22766A070();
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  *(v13 + 32) = v8;
  *(v13 + 40) = v9;
  swift_getKeyPath();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v79[0] = a1;
  v79[1] = a2;
  v16 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v17 = sub_22766C820();
  sub_226E93170(v79, v77, &unk_27D7BC990, &qword_227670A30);
  v18 = v78;
  if (v78)
  {
    v19 = __swift_project_boxed_opaque_existential_0(v77, v78);
    v20 = *(v18 - 8);
    v21 = *(v20 + 64);
    MEMORY[0x28223BE20](v19);
    v23 = v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23);
    v24 = sub_22766D170();
    (*(v20 + 8))(v23, v18);
    __swift_destroy_boxed_opaque_existential_0(v77);
  }

  else
  {
    v24 = 0;
  }

  v76 = objc_opt_self();
  v25 = [v76 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
  v27 = &off_2785D6000;
  v28 = [objc_allocWithZone(v26) initWithLeftExpression:v17 rightExpression:v25 modifier:0 type:4 options:0];

  sub_226E97D1C(v79, &unk_27D7BC990, &qword_227670A30);
  v29 = qword_2813B2078;
  swift_beginAccess();
  v30 = v28;
  v81 = v29;
  v31 = sub_22766A080();
  v33 = v32;
  MEMORY[0x22AA985C0]();
  if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v72 = *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v31(v79, 0);
  swift_endAccess();

  swift_getKeyPath();
  v34 = sub_227664570();
  v80 = MEMORY[0x277D83B88];
  v79[0] = v34;

  v35 = sub_22766C820();
  sub_226E93170(v79, v77, &unk_27D7BC990, &qword_227670A30);
  v36 = v78;
  if (v78)
  {
    v37 = __swift_project_boxed_opaque_existential_0(v77, v78);
    v75[1] = v16;
    v38 = v26;
    v39 = *(v36 - 8);
    v40 = *(v39 + 64);
    MEMORY[0x28223BE20](v37);
    v42 = v75 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v42);
    v43 = sub_22766D170();
    (*(v39 + 8))(v42, v36);
    v26 = v38;
    v27 = &off_2785D6000;
    __swift_destroy_boxed_opaque_existential_0(v77);
  }

  else
  {
    v43 = 0;
  }

  v44 = [v76 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v45 = [objc_allocWithZone(v26) v27[298]];

  sub_226E97D1C(v79, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v46 = v45;
  v47 = sub_22766A080();
  v49 = v48;
  MEMORY[0x22AA985C0]();
  if (*((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v73 = *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v47(v79, 0);
  swift_endAccess();

  swift_getKeyPath();
  v50 = sub_227664570();
  v80 = MEMORY[0x277D83B88];
  v79[0] = v50;

  v51 = sub_22766C820();
  sub_226E93170(v79, v77, &unk_27D7BC990, &qword_227670A30);
  v52 = v78;
  if (v78)
  {
    v53 = __swift_project_boxed_opaque_existential_0(v77, v78);
    v54 = *(v52 - 8);
    v55 = *(v54 + 64);
    MEMORY[0x28223BE20](v53);
    v57 = v75 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v54 + 16))(v57);
    v58 = sub_22766D170();
    (*(v54 + 8))(v57, v52);
    v27 = &off_2785D6000;
    __swift_destroy_boxed_opaque_existential_0(v77);
  }

  else
  {
    v58 = 0;
  }

  v59 = [v76 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v60 = [objc_allocWithZone(v26) v27[298]];

  sub_226E97D1C(v79, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v61 = v60;
  v62 = sub_22766A080();
  v64 = v63;
  MEMORY[0x22AA985C0]();
  if (*((*v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v74 = *((*v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v62(v79, 0);
  swift_endAccess();

  v65 = sub_2272328B8(100);
  swift_setDeallocating();

  v66 = *(v13 + 40);

  v67 = qword_2813B2078;
  v68 = sub_22766A100();
  (*(*(v68 - 8) + 8))(v13 + v67, v68);
  v69 = *(*v13 + 48);
  v70 = *(*v13 + 52);
  swift_deallocClassInstance();
  return v65;
}

uint64_t sub_22707E0E4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v7 + 8))(v10, v6);
  v11 = a3[3];
  v144 = a3;
  v12 = __swift_project_boxed_opaque_existential_0(a3, v11);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v12 + 16);
  v16 = v12[3];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v143 = v17;
  v20 = swift_allocObject();
  v21 = v13;
  v22 = v14;

  sub_22766A070();
  *(v20 + 16) = v21;
  *(v20 + 24) = v22;
  *(v20 + 32) = v15;
  *(v20 + 40) = v16;
  swift_getKeyPath();
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v154 = v142;
  v145 = a1;
  v152 = a1;
  v153 = a2;
  v23 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
  v146 = a2;

  v155 = v23;
  v24 = sub_22766C820();
  sub_226E93170(&v152, v150, &unk_27D7BC990, &qword_227670A30);
  v25 = v151;
  if (v151)
  {
    v26 = __swift_project_boxed_opaque_existential_0(v150, v151);
    v27 = *(v25 - 8);
    v28 = *(v27 + 64);
    MEMORY[0x28223BE20](v26);
    v30 = v138 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v27 + 16))(v30);
    v31 = sub_22766D170();
    (*(v27 + 8))(v30, v25);
    __swift_destroy_boxed_opaque_existential_0(v150);
  }

  else
  {
    v31 = 0;
  }

  v32 = objc_opt_self();
  v33 = [v32 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
  v34 = [objc_allocWithZone(v149) initWithLeftExpression:v24 rightExpression:v33 modifier:0 type:4 options:0];

  sub_226E97D1C(&v152, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v35 = v34;
  v36 = sub_22766A080();
  v38 = v37;
  MEMORY[0x22AA985C0]();
  v39 = *((*v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v40 = *((*v38 & 0xFFFFFFFFFFFFFF8) + 0x18);
  v148 = v32;
  if (v39 >= v40 >> 1)
  {
    sub_22766C360();
    v32 = v148;
  }

  sub_22766C3A0();
  v36(&v152, 0);
  swift_endAccess();

  swift_getKeyPath();
  v41 = sub_227664570();
  v154 = MEMORY[0x277D83B88];
  v152 = v41;

  v42 = sub_22766C820();
  sub_226E93170(&v152, v150, &unk_27D7BC990, &qword_227670A30);
  v43 = v151;
  if (v151)
  {
    v44 = __swift_project_boxed_opaque_existential_0(v150, v151);
    v45 = *(v43 - 8);
    v46 = *(v45 + 64);
    MEMORY[0x28223BE20](v44);
    v48 = v138 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v45 + 16))(v48);
    v49 = sub_22766D170();
    v50 = v48;
    v32 = v148;
    (*(v45 + 8))(v50, v43);
    __swift_destroy_boxed_opaque_existential_0(v150);
  }

  else
  {
    v49 = 0;
  }

  v51 = [v32 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v52 = [objc_allocWithZone(v149) initWithLeftExpression:v42 rightExpression:v51 modifier:0 type:4 options:0];

  sub_226E97D1C(&v152, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v53 = v52;
  v54 = sub_22766A080();
  v56 = v55;
  MEMORY[0x22AA985C0]();
  if (*((*v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v134 = *((*v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v54(&v152, 0);
  swift_endAccess();

  v57 = v147;
  v58 = sub_2272328B8(100);
  if (v57)
  {
    swift_setDeallocating();

    v59 = *(v20 + 40);

    v60 = qword_2813B2078;
    v61 = sub_22766A100();
    (*(*(v61 - 8) + 8))(v20 + v60, v61);
LABEL_30:
    v127 = *(*v20 + 48);
    v128 = *(*v20 + 52);
    return swift_deallocClassInstance();
  }

  v141 = 0;
  v147 = v58;
  swift_setDeallocating();

  v62 = *(v20 + 40);

  v63 = qword_2813B2078;
  v64 = sub_22766A100();
  v65 = *(v64 - 8);
  v139 = *(v65 + 8);
  v140 = v64;
  v138[1] = v65 + 8;
  v139(v20 + v63);
  v66 = *(*v20 + 48);
  v67 = *(*v20 + 52);
  swift_deallocClassInstance();
  v68 = __swift_project_boxed_opaque_existential_0(v144, v144[3]);
  v69 = *v68;
  v70 = v68[1];
  v71 = *(v68 + 16);
  v72 = v68[3];
  v73 = *(v143 + 48);
  v74 = *(v143 + 52);
  v20 = swift_allocObject();
  v75 = v69;
  v76 = v70;

  sub_22766A070();
  *(v20 + 16) = v75;
  *(v20 + 24) = v76;
  *(v20 + 32) = v71;
  *(v20 + 40) = v72;
  swift_getKeyPath();
  v154 = v142;
  v152 = v145;
  v153 = v146;

  v77 = sub_22766C820();
  sub_226E93170(&v152, v150, &unk_27D7BC990, &qword_227670A30);
  v78 = v151;
  if (v151)
  {
    v79 = __swift_project_boxed_opaque_existential_0(v150, v151);
    v80 = *(v78 - 8);
    v81 = *(v80 + 64);
    MEMORY[0x28223BE20](v79);
    v83 = v138 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v80 + 16))(v83);
    v84 = sub_22766D170();
    (*(v80 + 8))(v83, v78);
    __swift_destroy_boxed_opaque_existential_0(v150);
  }

  else
  {
    v84 = 0;
  }

  v85 = v148;
  v86 = [v148 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v87 = [objc_allocWithZone(v149) initWithLeftExpression:v77 rightExpression:v86 modifier:0 type:4 options:0];

  sub_226E97D1C(&v152, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v88 = v87;
  v89 = sub_22766A080();
  v91 = v90;
  MEMORY[0x22AA985C0]();
  if (*((*v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v135 = *((*v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
    v85 = v148;
  }

  sub_22766C3A0();
  v89(&v152, 0);
  swift_endAccess();

  swift_getKeyPath();
  v92 = sub_227663450();
  v154 = MEMORY[0x277D83B88];
  v152 = v92;

  v93 = sub_22766C820();
  sub_226E93170(&v152, v150, &unk_27D7BC990, &qword_227670A30);
  v94 = v151;
  if (v151)
  {
    v95 = __swift_project_boxed_opaque_existential_0(v150, v151);
    v96 = *(v94 - 8);
    v97 = *(v96 + 64);
    MEMORY[0x28223BE20](v95);
    v99 = v138 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v96 + 16))(v99);
    v100 = sub_22766D170();
    v101 = v99;
    v85 = v148;
    (*(v96 + 8))(v101, v94);
    __swift_destroy_boxed_opaque_existential_0(v150);
  }

  else
  {
    v100 = 0;
  }

  v102 = [v85 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v103 = [objc_allocWithZone(v149) initWithLeftExpression:v93 rightExpression:v102 modifier:0 type:4 options:0];

  sub_226E97D1C(&v152, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v104 = v103;
  v105 = sub_22766A080();
  v107 = v106;
  MEMORY[0x22AA985C0]();
  if (*((*v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v136 = *((*v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
    v85 = v148;
  }

  sub_22766C3A0();
  v105(&v152, 0);
  swift_endAccess();

  swift_getKeyPath();
  v108 = sub_227664570();
  v154 = MEMORY[0x277D83B88];
  v152 = v108;

  v109 = sub_22766C820();
  sub_226E93170(&v152, v150, &unk_27D7BC990, &qword_227670A30);
  v110 = v151;
  if (v151)
  {
    v111 = __swift_project_boxed_opaque_existential_0(v150, v151);
    v112 = *(v110 - 8);
    v113 = *(v112 + 64);
    MEMORY[0x28223BE20](v111);
    v115 = v138 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v112 + 16))(v115);
    v116 = sub_22766D170();
    v117 = v115;
    v85 = v148;
    (*(v112 + 8))(v117, v110);
    __swift_destroy_boxed_opaque_existential_0(v150);
  }

  else
  {
    v116 = 0;
  }

  v118 = [v85 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v119 = [objc_allocWithZone(v149) initWithLeftExpression:v109 rightExpression:v118 modifier:0 type:4 options:0];

  sub_226E97D1C(&v152, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v120 = v119;
  v121 = sub_22766A080();
  v123 = v122;
  MEMORY[0x22AA985C0]();
  if (*((*v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v137 = *((*v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v121(&v152, 0);
  swift_endAccess();

  v124 = v141;
  v125 = sub_2272328B8(100);
  if (v124)
  {

    swift_setDeallocating();

    v126 = *(v20 + 40);

    (v139)(v20 + qword_2813B2078, v140);
    goto LABEL_30;
  }

  v130 = v125;
  swift_setDeallocating();

  v131 = *(v20 + 40);

  (v139)(v20 + qword_2813B2078, v140);
  v132 = *(*v20 + 48);
  v133 = *(*v20 + 52);
  swift_deallocClassInstance();
  return sub_2273FB5EC(v130, v147);
}

id *sub_22707F154(void *a1, double a2)
{
  v77 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v80 = &v68 - v5;
  v81 = sub_2276624A0();
  v73 = *(v81 - 8);
  v6 = *(v73 + 64);
  MEMORY[0x28223BE20](v81);
  v79 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v9 + 8))(v12, v8);
  v13 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
  swift_getKeyPath();
  v14 = sub_22766C820();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FE8, &qword_227672B80);
  v15 = swift_allocObject();
  v78 = xmmword_227670CD0;
  *(v15 + 16) = xmmword_227670CD0;
  *(v15 + 56) = v13;
  v75 = v13;
  *(v15 + 32) = v14;
  v70 = v14;
  v16 = sub_22766BFD0();
  v17 = sub_22766C2B0();

  v76 = objc_opt_self();
  v18 = [v76 expressionForFunction:v16 arguments:v17];

  v19 = [objc_allocWithZone(MEMORY[0x277CBE410]) init];
  v69 = v18;
  [v19 setExpression_];
  v20 = v19;
  v21 = sub_22766BFD0();
  [v20 setName_];

  [v20 setExpressionResultType_];
  v22 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v23 = sub_22766BFD0();
  v24 = [v22 initWithEntityName_];

  swift_getKeyPath();
  v25 = sub_22766C820();
  v26 = [v25 keyPath];

  v27 = sub_22766C000();
  v29 = v28;

  v30 = swift_allocObject();
  *(v30 + 16) = v78;
  v31 = MEMORY[0x277D837D0];
  *(v30 + 56) = MEMORY[0x277D837D0];
  *(v30 + 32) = v27;
  *(v30 + 40) = v29;

  v32 = sub_22766C2B0();

  [v24 setPropertiesToGroupBy_];

  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_2276728D0;
  *(v33 + 56) = v31;
  *&v78 = v27;
  *(v33 + 32) = v27;
  *(v33 + 40) = v29;
  *(v33 + 88) = sub_226E99364(0, &qword_281398A80, 0x277CBE410);
  *(v33 + 64) = v20;
  v68 = v20;

  v34 = sub_22766C2B0();

  [v24 setPropertiesToFetch_];

  v72 = v24;
  [v24 setResultType_];
  swift_getKeyPath();
  *(&v85 + 1) = MEMORY[0x277D839F8];
  *&v84 = a2;

  v35 = sub_22766C820();
  sub_226E93170(&v84, &v82, &unk_27D7BC990, &qword_227670A30);
  v36 = *(&v83 + 1);
  if (*(&v83 + 1))
  {
    v37 = __swift_project_boxed_opaque_existential_0(&v82, *(&v83 + 1));
    v31 = &v68;
    v38 = *(v36 - 8);
    v39 = *(v38 + 64);
    MEMORY[0x28223BE20](v37);
    v41 = &v68 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v38 + 16))(v41);
    v42 = sub_22766D170();
    (*(v38 + 8))(v41, v36);
    __swift_destroy_boxed_opaque_existential_0(&v82);
  }

  else
  {
    v42 = 0;
  }

  v43 = [v76 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v44 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A0 &qword_22767FF20))];

  sub_226E97D1C(&v84, &unk_27D7BC990, &qword_227670A30);
  v45 = v72;
  [v72 setHavingPredicate_];

  v46 = __swift_project_boxed_opaque_existential_0(v77, v77[3]);
  v47 = *v46;
  v48 = *(v46 + 16);
  if (sub_227669C10())
  {

    v31 = sub_227664DD0();
    sub_22707FCA0(&qword_28139B8D0, MEMORY[0x277D51040]);
    v49 = swift_allocError();
    (*(*(v31 - 1) + 13))(v50, *MEMORY[0x277D51010], v31);
    v71 = v49;
    swift_willThrow();

LABEL_8:
    return v31;
  }

  sub_226E99364(0, &qword_28139D2B0, 0x277CBEAC0);
  v51 = v74;
  v52 = sub_22766C9E0();
  v71 = v51;
  if (v51)
  {

    goto LABEL_8;
  }

  v54 = v52;
  if (v52 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22766CD20())
  {
    v56 = 0;
    v76 = (v54 & 0xFFFFFFFFFFFFFF8);
    v77 = (v54 & 0xC000000000000001);
    v57 = (v73 + 48);
    v74 = (v73 + 32);
    v58 = MEMORY[0x277D84F90];
    v75 = i;
    while (1)
    {
      if (v77)
      {
        v59 = MEMORY[0x22AA991A0](v56, v54);
      }

      else
      {
        if (v56 >= *(v76 + 2))
        {
          goto LABEL_33;
        }

        v59 = *(v54 + 8 * v56 + 32);
      }

      v60 = v59;
      v61 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      *&v84 = v78;
      *(&v84 + 1) = v29;

      v62 = [v60 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v62)
      {
        sub_22766CC20();
        swift_unknownObjectRelease();
      }

      else
      {
        v82 = 0u;
        v83 = 0u;
      }

      v63 = v80;
      v84 = v82;
      v85 = v83;
      if (*(&v83 + 1))
      {
        swift_dynamicCast();
      }

      else
      {
        sub_226E97D1C(&v84, &unk_27D7BC990, &qword_227670A30);
      }

      sub_227662310();

      v64 = v81;
      if ((*v57)(v63, 1, v81) == 1)
      {
        sub_226E97D1C(v63, &unk_27D7BB570, &unk_227670FC0);
      }

      else
      {
        v65 = *v74;
        (*v74)(v79, v63, v64);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = sub_2273A4ECC(0, *(v58 + 2) + 1, 1, v58);
        }

        v67 = *(v58 + 2);
        v66 = *(v58 + 3);
        if (v67 >= v66 >> 1)
        {
          v58 = sub_2273A4ECC(v66 > 1, v67 + 1, 1, v58);
        }

        *(v58 + 2) = v67 + 1;
        v65(&v58[((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v67], v79, v81);
      }

      ++v56;
      if (v61 == v75)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v58 = MEMORY[0x277D84F90];
LABEL_36:

  v31 = sub_226F40798(v58);

  return v31;
}

uint64_t sub_22707FCA0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22707FCE8(void *a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v4 + 8))(v7, v3);
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[3];
  v12 = *(v8 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8580, &qword_2276777B0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = v9;
  v18 = v10;

  sub_22766A070();
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  *(v16 + 32) = v12;
  *(v16 + 40) = v11;
  v19 = qword_2813B2078;
  swift_beginAccess();
  v20 = sub_2275425D0(v16 + v19, v12, v11);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v21 = sub_2272846AC(0);
    if (!v1)
    {
      v22 = v21;
      [v21 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v23 = sub_22766C9E0();
      v24 = sub_226EDAB24(v23);

      sub_226EDAB78(v24, v18);

      return;
    }
  }
}

char *sub_22707FF94(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v3 + 8))(v6, v2);
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v8;
  v17 = v9;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  v18 = sub_2272328B8(100);
  swift_setDeallocating();

  v19 = *(v15 + 40);

  v20 = qword_2813B2078;
  v21 = sub_22766A100();
  (*(*(v21 - 8) + 8))(v15 + v20, v21);
  v22 = *(*v15 + 48);
  v23 = *(*v15 + 52);
  swift_deallocClassInstance();
  return v18;
}

void sub_2270801E0(void *a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v4 + 8))(v7, v3);
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[3];
  v12 = *(v8 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = v9;
  v18 = v10;

  sub_22766A070();
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  *(v16 + 32) = v12;
  *(v16 + 40) = v11;
  v19 = qword_2813B2078;
  swift_beginAccess();
  v20 = sub_227542468(v16 + v19, v12, v11);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v21 = sub_227284664(0);
    if (!v1)
    {
      v22 = v21;
      [v21 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v23 = sub_22766C9E0();
      v24 = sub_226EDAB24(v23);

      sub_226EDAB78(v24, v18);

      return;
    }
  }
}

uint64_t sub_22708048C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21[2] = a2;
  v22 = a4;
  v21[0] = a1;
  v21[1] = a3;
  v4 = sub_227662750();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_2276624A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227664B30();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v21[0], v6);

  sub_227662740();
  sub_227664B20();
  v16 = __swift_project_boxed_opaque_existential_0(v22, v22[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0A8, &unk_227677A80);
  v17 = *(v12 + 72);
  v18 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_227670CD0;
  (*(v12 + 16))(v19 + v18, v15, v11);
  sub_22756286C(v19, v16[1], *(v16 + 16), v16[3]);

  return (*(v12 + 8))(v15, v11);
}

void sub_227080718(uint64_t a1, uint64_t a2, void **a3, void *a4)
{
  v63 = a2;
  v64 = a3;
  v4 = __swift_project_boxed_opaque_existential_0(a4, a4[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A8, &qword_227677A20);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = v5;
  v14 = v6;

  sub_22766A070();
  v59 = v14;
  v60 = v13;
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  v66 = v7;
  *(v12 + 32) = v7;
  v65 = v8;
  *(v12 + 40) = v8;
  swift_getKeyPath();
  v15 = sub_227662390();
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v71 = v18;
  v69 = v15;
  v70 = v17;
  v19 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v62 = v19;
  v20 = sub_22766C820();
  sub_226E93170(&v69, v67, &unk_27D7BC990, &qword_227670A30);
  v21 = v68;
  if (v68)
  {
    v22 = __swift_project_boxed_opaque_existential_0(v67, v68);
    v23 = *(v21 - 8);
    v24 = *(v23 + 64);
    MEMORY[0x28223BE20](v22);
    v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26);
    v27 = sub_22766D170();
    (*(v23 + 8))(v26, v21);
    __swift_destroy_boxed_opaque_existential_0(v67);
  }

  else
  {
    v27 = 0;
  }

  v28 = objc_opt_self();
  v29 = [v28 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B0, qword_227671000);
  v30 = [objc_allocWithZone(v61) initWithLeftExpression:v20 rightExpression:v29 modifier:0 type:4 options:0];

  sub_226E97D1C(&v69, &unk_27D7BC990, &qword_227670A30);
  v31 = qword_2813B2078;
  swift_beginAccess();
  v32 = v30;
  v33 = sub_22766A080();
  v35 = v34;
  MEMORY[0x22AA985C0]();
  if (*((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v33(&v69, 0);
  swift_endAccess();

  swift_getKeyPath();
  v71 = v18;
  v69 = v63;
  v70 = v64;

  v36 = sub_22766C820();
  sub_226E93170(&v69, v67, &unk_27D7BC990, &qword_227670A30);
  v37 = v68;
  if (v68)
  {
    v38 = __swift_project_boxed_opaque_existential_0(v67, v68);
    v64 = &v59;
    v39 = v31;
    v40 = v28;
    v41 = *(v37 - 8);
    v42 = *(v41 + 64);
    MEMORY[0x28223BE20](v38);
    v44 = &v59 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v41 + 16))(v44);
    v45 = sub_22766D170();
    (*(v41 + 8))(v44, v37);
    v28 = v40;
    v31 = v39;
    __swift_destroy_boxed_opaque_existential_0(v67);
  }

  else
  {
    v45 = 0;
  }

  v46 = [v28 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v47 = [objc_allocWithZone(v61) initWithLeftExpression:v36 rightExpression:v46 modifier:0 type:4 options:0];

  sub_226E97D1C(&v69, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v48 = v47;
  v49 = sub_22766A080();
  v51 = v50;
  MEMORY[0x22AA985C0]();
  if (*((*v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v58 = *((*v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v49(&v69, 0);
  swift_endAccess();

  v52 = sub_227542540(v12 + v31, v66, v65);
  if (v52)
  {
    if (v52 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_15;
  }

  v53 = v72;
  v54 = sub_22723D128(0);
  if (v53)
  {
LABEL_15:

    return;
  }

  v55 = v54;
  [v54 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v56 = sub_22766C9E0();
  v57 = sub_226EDAB24(v56);

  sub_226EDAB78(v57, v59);
}

unint64_t sub_227080DF0()
{
  result = qword_27D7BA0B0;
  if (!qword_27D7BA0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA0B0);
  }

  return result;
}

uint64_t sub_227080E44(uint64_t a1)
{
  v46 = sub_227663180();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2276624A0();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v44);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v42 = v9;
    v34 = v1;
    v50 = MEMORY[0x277D84F90];
    v36 = a1;
    sub_226F1F548(0, v10, 0);
    v12 = v6;
    v13 = v36;
    v14 = -1 << *(v36 + 32);
    v48 = v36 + 56;
    v49 = v50;
    result = sub_22766CC90();
    v15 = result;
    v16 = 0;
    v40 = v3 + 8;
    v41 = v3 + 16;
    v43 = v12;
    v38 = v3;
    v39 = v12 + 32;
    v35 = v13 + 64;
    v37 = v10;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v13 + 32))
    {
      v19 = v15 >> 6;
      if ((*(v48 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_23;
      }

      v47 = *(v13 + 36);
      v21 = v45;
      v20 = v46;
      (*(v3 + 16))(v45, *(v13 + 48) + *(v3 + 72) * v15, v46);
      v22 = v42;
      sub_227663170();
      (*(v3 + 8))(v21, v20);
      v23 = v49;
      v50 = v49;
      v25 = *(v49 + 16);
      v24 = *(v49 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_226F1F548(v24 > 1, v25 + 1, 1);
        v23 = v50;
      }

      *(v23 + 16) = v25 + 1;
      v26 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v49 = v23;
      result = (*(v43 + 32))(v23 + v26 + *(v43 + 72) * v25, v22, v44);
      v17 = 1 << *(v13 + 32);
      if (v15 >= v17)
      {
        goto LABEL_24;
      }

      v27 = *(v48 + 8 * v19);
      if ((v27 & (1 << v15)) == 0)
      {
        goto LABEL_25;
      }

      if (v47 != *(v13 + 36))
      {
        goto LABEL_26;
      }

      v28 = v27 & (-2 << (v15 & 0x3F));
      if (v28)
      {
        v17 = __clz(__rbit64(v28)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v18 = v37;
        v3 = v38;
      }

      else
      {
        v29 = v19 << 6;
        v30 = v19 + 1;
        v31 = (v35 + 8 * v19);
        v18 = v37;
        v3 = v38;
        while (v30 < (v17 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_226EB526C(v15, v47, 0);
            v17 = __clz(__rbit64(v32)) + v29;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v15, v47, 0);
LABEL_19:
        v13 = v36;
      }

      ++v16;
      v15 = v17;
      if (v16 == v18)
      {
        return v49;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_227081208(uint64_t a1)
{
  v37 = sub_2276624A0();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_226F1EFF0(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_227662390();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_226F1EFF0((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_226EB526C(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_227081510(uint64_t a1)
{
  v3 = sub_227663480();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v38 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v32 - v8;
  v10 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v32[1] = v1;
    v45 = MEMORY[0x277D84F90];
    v39 = v7;
    sub_226F1F568(0, v10, 0);
    v12 = v39;
    v13 = -1 << *(a1 + 32);
    v43 = a1 + 56;
    v44 = v45;
    result = sub_22766CC90();
    v14 = result;
    v15 = 0;
    v36 = v12 + 8;
    v37 = v12 + 16;
    v34 = v10;
    v35 = v12 + 32;
    v33 = a1 + 64;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      if ((*(v43 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_23;
      }

      v40 = v15;
      v41 = *(a1 + 36);
      v42 = v14 >> 6;
      v17 = *(v12 + 72);
      v18 = v38;
      (*(v12 + 16))(v38, *(a1 + 48) + v17 * v14, v3);
      sub_227663470();
      v12 = v39;
      (*(v39 + 8))(v18, v3);
      v19 = v44;
      v45 = v44;
      v20 = v9;
      v21 = a1;
      v23 = *(v44 + 16);
      v22 = *(v44 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_226F1F568(v22 > 1, v23 + 1, 1);
        v12 = v39;
        v19 = v45;
      }

      *(v19 + 16) = v23 + 1;
      v24 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v44 = v19;
      result = (*(v12 + 32))(v19 + v24 + v23 * v17, v20, v3);
      v16 = 1 << *(v21 + 32);
      if (v14 >= v16)
      {
        goto LABEL_24;
      }

      v25 = *(v43 + 8 * v42);
      if ((v25 & (1 << v14)) == 0)
      {
        goto LABEL_25;
      }

      a1 = v21;
      if (v41 != *(v21 + 36))
      {
        goto LABEL_26;
      }

      v26 = v25 & (-2 << (v14 & 0x3F));
      if (v26)
      {
        v16 = __clz(__rbit64(v26)) | v14 & 0x7FFFFFFFFFFFFFC0;
        v9 = v20;
      }

      else
      {
        v27 = v42 << 6;
        v28 = v42 + 1;
        v29 = (v33 + 8 * v42);
        v9 = v20;
        while (v28 < (v16 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_226EB526C(v14, v41, 0);
            v16 = __clz(__rbit64(v30)) + v27;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v14, v41, 0);
LABEL_19:
        v12 = v39;
      }

      v15 = v40 + 1;
      v14 = v16;
      if (v40 + 1 == v34)
      {
        return v44;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_2270818D0()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);

  return swift_deallocClassInstance();
}

uint64_t sub_22708193C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a1;
  v98 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD9D0, &qword_227677B68);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v88 = v6;
  v89 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v85 - v7;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9390, &unk_227677B70);
  v102 = *(v99 - 8);
  v9 = v102[8];
  v10 = MEMORY[0x28223BE20](v99);
  v90 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v100 = &v85 - v12;
  MEMORY[0x28223BE20](v11);
  v101 = &v85 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v96 = *(v14 - 8);
  v97 = v14;
  v15 = *(v96 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v92 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v93 = &v85 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v94 = &v85 - v21;
  v91 = v22;
  MEMORY[0x28223BE20](v20);
  v95 = &v85 - v23;
  v24 = sub_22766B390();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v29 = sub_22766B380();
  v30 = sub_22766C8B0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = v8;
    v32 = v2;
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_226E8E000, v29, v30, "Validation - Starting run", v33, 2u);
    v34 = v33;
    v2 = v32;
    v8 = v31;
    MEMORY[0x22AA9A450](v34, -1, -1);
  }

  (*(v25 + 8))(v28, v24);
  v35 = swift_allocObject();
  v36 = v103;
  v37 = v87;
  *(v35 + 16) = v103;
  *(v35 + 24) = v37;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0B8, &unk_227677B80);
  sub_227669270();
  v38 = swift_allocObject();
  *(v38 + 16) = sub_227082A58;
  *(v38 + 24) = v36;
  v39 = v89;
  (*(v3 + 16))(v89, v8, v2);
  v40 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v41 = (v88 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v3 + 32))(v42 + v40, v39, v2);
  v43 = (v42 + v41);
  *v43 = sub_227082A60;
  v43[1] = v38;

  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9370, qword_227685C90);
  v44 = v100;
  sub_227669270();
  (*(v3 + 8))(v8, v2);
  v45 = swift_allocObject();
  *(v45 + 16) = sub_22708680C;
  *(v45 + 24) = v36;
  v46 = v102;
  v47 = v102[2];
  v87 = (v102 + 2);
  v88 = v47;
  v48 = v90;
  v49 = v99;
  v47(v90, v44, v99);
  v50 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v86 = v50;
  v51 = (v9 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v85 = v46[4];
  v85(v52 + v50, v48, v49);
  v53 = (v52 + v51);
  *v53 = sub_227086814;
  v53[1] = v45;
  v54 = v103;

  v55 = v101;
  sub_227669270();
  v102 = v46[1];
  (v102)(v44, v49);
  v56 = swift_allocObject();
  *(v56 + 16) = sub_227086868;
  *(v56 + 24) = v54;
  v88(v44, v55, v49);
  v57 = v51;
  v58 = swift_allocObject();
  v85(v58 + v86, v44, v49);
  v59 = (v58 + v57);
  *v59 = sub_227087D64;
  v59[1] = v56;

  v60 = v93;
  sub_227669270();
  (v102)(v55, v49);
  v61 = swift_allocObject();
  v61[2] = 0xD000000000000024;
  v61[3] = 0x8000000227698670;
  v61[4] = 49;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_226F323BC;
  *(v62 + 24) = v61;
  v63 = v96;
  v64 = v97;
  v65 = *(v96 + 16);
  v101 = (v96 + 16);
  v102 = v65;
  v66 = v92;
  (v65)(v92, v60, v97);
  v67 = *(v63 + 80);
  v99 = v67;
  v100 = ((v67 + 16) & ~v67);
  v68 = v100;
  v69 = &v100[v91 + 7] & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  v71 = *(v63 + 32);
  v71(&v68[v70], v66, v64);
  v72 = (v70 + v69);
  *v72 = sub_226F323DC;
  v72[1] = v62;
  v73 = v94;
  sub_227669270();
  v96 = *(v63 + 8);
  (v96)(v60, v64);
  v74 = swift_allocObject();
  v75 = v102;
  v76 = v103;
  *(v74 + 16) = sub_22708695C;
  *(v74 + 24) = v76;
  v75(v60, v73, v64);
  v77 = swift_allocObject();
  v71(&v100[v77], v60, v64);
  v78 = (v77 + v69);
  *v78 = sub_227086964;
  v78[1] = v74;

  v79 = v95;
  sub_227669270();
  v80 = v96;
  (v96)(v73, v64);
  v81 = swift_allocObject();
  *(v81 + 16) = sub_227083210;
  *(v81 + 24) = 0;
  (v102)(v73, v79, v64);
  v82 = swift_allocObject();
  v71(&v100[v82], v73, v64);
  v83 = (v82 + v69);
  *v83 = sub_226F5AAF8;
  v83[1] = v81;
  sub_227669270();
  return v80(v79, v64);
}

uint64_t sub_2270823B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v7 = sub_22766B3B0();
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B3F0();
  v28 = *(v11 - 8);
  v29 = v11;
  v12 = *(v28 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22766B3C0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  (*(v16 + 104))(v19, *MEMORY[0x277D851D0], v15);

  v21 = sub_22766C980();
  (*(v16 + 8))(v19, v15);
  v22 = swift_allocObject();
  v23 = v27;
  v22[2] = a3;
  v22[3] = v23;
  v22[4] = sub_226ECCE74;
  v22[5] = v20;
  aBlock[4] = sub_227087D10;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_9;
  v24 = _Block_copy(aBlock);

  sub_22766B3D0();
  v31 = MEMORY[0x277D84F90];
  sub_227087D1C(&qword_2813A5870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9CFD0(&qword_2813A5860, &unk_27D7BA240, &unk_227674420);
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v14, v10, v24);
  _Block_release(v24);

  (*(v30 + 8))(v10, v7);
  (*(v28 + 8))(v14, v29);
}

uint64_t sub_2270827C0(uint64_t a1, uint64_t a2, void (*a3)(size_t, uint64_t, void))
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 24), *(a1 + 48));
  v6 = sub_2274B1728(a2);

  a3(v6, a2, 0);
}

uint64_t sub_2270828B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v9 + 8))(v12, v8);
  v13 = a3[11];
  v14 = a3[12];
  __swift_project_boxed_opaque_existential_0(a3 + 8, v13);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a1;

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9370, qword_227685C90);
  sub_226ECF5D8(sub_227087050, v15, v13, v16, v14, a4);
}

uint64_t sub_227082A60(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_227082A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v26[0] = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v26 - v9;
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v12 + 8))(v15, v11);

  v16 = sub_227086AEC(a1, a2);

  v26[2] = v16;
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v17 = sub_22766C950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0C8, qword_227677C60);
  sub_226E9CFD0(&qword_281398FB0, &qword_27D7BA0C8, qword_227677C60);
  sub_227669240();

  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_227086F08;
  *(v19 + 24) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_227086F10;
  *(v20 + 24) = v19;
  v21 = v26[0];
  (*(v6 + 16))(v26[0], v10, v5);
  v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v23 = swift_allocObject();
  (*(v6 + 32))(v23 + v22, v21, v5);
  v24 = (v23 + ((v7 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_227086F50;
  v24[1] = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9370, qword_227685C90);
  sub_227669270();
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_227082E6C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *a1@<X0>, uint64_t a2@<X8>)@<X1>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD9B0, &unk_227677C50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - v10;
  v12 = *(a2 + 11);
  v19[0] = *(a2 + 12);
  __swift_project_boxed_opaque_existential_0(a2 + 8, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEC90, &qword_2276873F0);
  sub_226ECF5D8(sub_227086AA0, v13, v12, v14, v19[0], v11);

  (*(v6 + 16))(v9, v11, v5);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + v15, v9, v5);
  v17 = (v16 + ((v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = sub_227086ABC;
  v17[1] = a2;

  sub_227669270();
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_2270830BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v5 + 8))(v8, v4);
  v9 = a1[11];
  v10 = a1[12];
  __swift_project_boxed_opaque_existential_0(a1 + 8, v9);
  return sub_226ECF5D8(sub_2270844C0, 0, v9, MEMORY[0x277D84F78] + 8, v10, a2);
}

uint64_t sub_227083210(void *a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v8 = a1;
  v9 = sub_22766B380();
  v10 = sub_22766C890();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18[1] = v1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136446210;
    swift_getErrorValue();
    v14 = MEMORY[0x22AA995D0](v18[3], v18[4]);
    v16 = sub_226E97AE8(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_226E8E000, v9, v10, "Validation - Failed with error: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AA9A450](v13, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2270833EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v111 = a3;
  v112 = a4;
  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = v7;
  v16 = v8;

  v17 = MEMORY[0x277D84F90];
  sub_22766A070();
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  swift_getKeyPath();
  v18 = *(a2 + 16);
  if (v18)
  {
    v117[0] = v17;
    sub_226F1EFF0(0, v18, 0);
    v19 = (a2 + 32);
    do
    {
      v20 = *v19++;
      v21 = sub_227665FE0();
      v117[0] = v17;
      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        v113 = v22;
        v114 = v21;
        sub_226F1EFF0((v23 > 1), v24 + 1, 1);
        v22 = v113;
        v21 = v114;
        v17 = v117[0];
      }

      *(v17 + 16) = v24 + 1;
      v25 = v17 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      --v18;
    }

    while (v18);
  }

  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v117[0] = v17;
  v26 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v114 = v26;
  v27 = sub_22766C820();
  sub_226ED25F8(v117, v115);
  v28 = v116;
  if (v116)
  {
    v29 = __swift_project_boxed_opaque_existential_0(v115, v116);
    v30 = *(v28 - 8);
    v31 = *(v30 + 64);
    MEMORY[0x28223BE20](v29);
    v33 = v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v33);
    v34 = sub_22766D170();
    (*(v30 + 8))(v33, v28);
    __swift_destroy_boxed_opaque_existential_0(v115);
  }

  else
  {
    v34 = 0;
  }

  v113 = objc_opt_self();
  v35 = [v113 expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A0 &qword_22767FF20))];

  sub_226E97D1C(v117, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v36 = sub_22766A080();
  v38 = v37;
  MEMORY[0x22AA985C0]();
  if (*((*v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v36(v117, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  v40 = v119;
  v41 = sub_2273FC724(KeyPath);
  if (v40)
  {

    swift_setDeallocating();

    v42 = *(v14 + 40);

    v43 = qword_2813B2078;
    v44 = sub_22766A100();
    (*(*(v44 - 8) + 8))(v14 + v43, v44);
LABEL_25:
    v96 = *(*v14 + 48);
    v97 = *(*v14 + 52);
    return swift_deallocClassInstance();
  }

  v119 = 0;
  v45 = sub_226F3E6A8(v41);

  swift_setDeallocating();

  v46 = *(v14 + 40);

  v47 = qword_2813B2078;
  v48 = sub_22766A100();
  v49 = *(v48 - 8);
  v109 = *(v49 + 8);
  v110 = v48;
  v108[1] = v49 + 8;
  v109(v14 + v47);
  v50 = *(*v14 + 48);
  v51 = *(*v14 + 52);
  swift_deallocClassInstance();
  v52 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v53 = *v52;
  v54 = v52[1];
  v55 = *(v52 + 16);
  v56 = v52[3];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8580, &qword_2276777B0);
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  v14 = swift_allocObject();
  v60 = v53;
  v61 = v54;

  sub_22766A070();
  *(v14 + 16) = v60;
  *(v14 + 24) = v61;
  *(v14 + 32) = v55;
  *(v14 + 40) = v56;
  swift_getKeyPath();
  v62 = sub_227664570();
  v118 = MEMORY[0x277D83B88];
  v117[0] = v62;

  v63 = sub_22766C820();
  sub_226ED25F8(v117, v115);
  v64 = v116;
  if (v116)
  {
    v65 = __swift_project_boxed_opaque_existential_0(v115, v116);
    v66 = v45;
    v67 = *(v64 - 8);
    v68 = *(v67 + 64);
    MEMORY[0x28223BE20](v65);
    v70 = v108 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v67 + 16))(v70);
    v71 = sub_22766D170();
    (*(v67 + 8))(v70, v64);
    v45 = v66;
    __swift_destroy_boxed_opaque_existential_0(v115);
  }

  else
  {
    v71 = 0;
  }

  v72 = [v113 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8590, &unk_2276777E0);
  v74 = [objc_allocWithZone(v73) initWithLeftExpression:v63 rightExpression:v72 modifier:0 type:4 options:0];

  sub_226E97D1C(v117, &unk_27D7BC990, &qword_227670A30);
  v75 = qword_2813B2078;
  swift_beginAccess();
  v76 = v74;
  v77 = sub_22766A080();
  v79 = v78;
  MEMORY[0x22AA985C0]();
  if (*((*v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v108[0] = v73;
    sub_22766C360();
    v73 = v108[0];
  }

  sub_22766C3A0();
  v77(v117, 0);
  swift_endAccess();

  swift_getKeyPath();
  v80 = sub_227230638(v45);

  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v117[0] = v80;

  v81 = sub_22766C820();
  sub_226ED25F8(v117, v115);
  v82 = v116;
  if (v116)
  {
    v83 = __swift_project_boxed_opaque_existential_0(v115, v116);
    v114 = v75;
    v84 = *(v82 - 8);
    v85 = *(v84 + 64);
    MEMORY[0x28223BE20](v83);
    v87 = v108 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v84 + 16))(v87);
    v88 = sub_22766D170();
    (*(v84 + 8))(v87, v82);
    __swift_destroy_boxed_opaque_existential_0(v115);
  }

  else
  {
    v88 = 0;
  }

  v89 = [v113 expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(v73) initWithLeftExpression:v81 rightExpression:v89 modifier:0 type:10 options:0];

  sub_226E97D1C(v117, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v90 = sub_22766A080();
  v92 = v91;
  MEMORY[0x22AA985C0]();
  if (*((*v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v107 = *((*v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v90(v117, 0);
  swift_endAccess();

  v93 = v119;
  v94 = sub_2272325B8(100);
  if (v93)
  {
    swift_setDeallocating();

    v95 = *(v14 + 40);

    (v109)(v14 + qword_2813B2078, v110);
    goto LABEL_25;
  }

  v99 = v94;
  swift_setDeallocating();

  v100 = *(v14 + 40);

  (v109)(v14 + qword_2813B2078, v110);
  v101 = *(*v14 + 48);
  v102 = *(*v14 + 52);
  swift_deallocClassInstance();
  v103 = v111;

  v104 = sub_22708760C(v99, v103);

  v105 = sub_227080E44(v104);

  v106 = sub_226F40798(v105);

  *v112 = v106;
  return result;
}

uint64_t sub_227083FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v50 = a3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v49 = *(v51 - 8);
  v5 = *(v49 + 64);
  v6 = MEMORY[0x28223BE20](v51);
  v46 = v7;
  v47 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v40 - v8;
  v9 = sub_2276624A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B390();
  v43 = *(v14 - 8);
  v44 = v14;
  v15 = *(v43 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  (*(v10 + 16))(v13, a1, v9);
  v18 = sub_22766B380();
  v19 = sub_22766C8B0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v41 = a1;
    v21 = v20;
    v40 = swift_slowAlloc();
    v52 = v40;
    *v21 = 141558274;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2080;
    sub_227087D1C(&qword_28139BDD0, MEMORY[0x277CC9260]);
    v22 = sub_22766D140();
    v42 = v3;
    v24 = v23;
    (*(v10 + 8))(v13, v9);
    v25 = sub_226E97AE8(v22, v24, &v52);

    *(v21 + 14) = v25;
    _os_log_impl(&dword_226E8E000, v18, v19, "Validating - failing entry because of missing local URL by remote URL %{mask.hash}s", v21, 0x16u);
    v26 = v40;
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x22AA9A450](v26, -1, -1);
    v27 = v21;
    a1 = v41;
    MEMORY[0x22AA9A450](v27, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  (*(v43 + 8))(v17, v44);
  v28 = *(v45 + 16);
  v29 = v48;
  sub_226F307BC(a1, v48);
  v30 = swift_allocObject();
  v30[2] = 0xD000000000000024;
  v30[3] = 0x8000000227698670;
  v30[4] = 84;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_226F33024;
  *(v31 + 24) = v30;
  v32 = v49;
  v33 = v47;
  v34 = v51;
  (*(v49 + 16))(v47, v29, v51);
  v35 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v36 = (v46 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  (*(v32 + 32))(v37 + v35, v33, v34);
  v38 = (v37 + v36);
  *v38 = sub_226F32FE8;
  v38[1] = v31;
  sub_227669270();
  return (*(v32 + 8))(v29, v34);
}

uint64_t sub_2270844C0(void *a1)
{
  v2 = v1;
  v4 = sub_22766B390();
  v135 = *(v4 - 8);
  v136 = v4;
  v5 = *(v135 + 64);
  MEMORY[0x28223BE20](v4);
  v134 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v142 = a1;
  v8 = __swift_project_boxed_opaque_existential_0(a1, v7);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  v12 = v8[3];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = v9;
  v18 = v10;

  sub_22766A070();
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  *(v16 + 32) = v11;
  *(v16 + 40) = v12;
  swift_getKeyPath();
  v19 = sub_227665FE0();
  v21 = v20;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v140[0] = v19;
  v140[1] = v21;
  v22 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v137 = v22;
  v23 = sub_22766C820();
  sub_226ED25F8(v140, v138);
  v24 = v139;
  if (v139)
  {
    v25 = __swift_project_boxed_opaque_existential_0(v138, v139);
    v26 = *(v24 - 8);
    v27 = *(v26 + 64);
    MEMORY[0x28223BE20](v25);
    v29 = &v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v29);
    v30 = sub_22766D170();
    (*(v26 + 8))(v29, v24);
    v2 = v1;
    __swift_destroy_boxed_opaque_existential_0(v138);
  }

  else
  {
    v30 = 0;
  }

  v31 = objc_opt_self();
  v32 = [v31 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v33 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A0 &qword_22767FF20))];

  sub_226E97D1C(v140, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v34 = v33;
  v35 = sub_22766A080();
  v37 = v36;
  MEMORY[0x22AA985C0]();
  if (*((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v125 = *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v35(v140, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  v39 = sub_2273FC724(KeyPath);
  if (v2)
  {

    swift_setDeallocating();

    v40 = *(v16 + 40);

    v41 = qword_2813B2078;
    v42 = sub_22766A100();
    (*(*(v42 - 8) + 8))(v16 + v41, v42);
LABEL_22:
    v110 = *(*v16 + 48);
    v111 = *(*v16 + 52);
    return swift_deallocClassInstance();
  }

  v129 = v31;
  v133 = 0;
  v43 = sub_226F3E6A8(v39);

  swift_setDeallocating();

  v44 = *(v16 + 40);

  v45 = qword_2813B2078;
  v46 = sub_22766A100();
  v47 = *(v46 - 8);
  v131 = *(v47 + 8);
  v132 = v46;
  v130 = v47 + 8;
  v131(v16 + v45);
  v48 = *(*v16 + 48);
  v49 = *(*v16 + 52);
  swift_deallocClassInstance();
  v50 = __swift_project_boxed_opaque_existential_0(v142, v142[3]);
  v51 = *v50;
  v52 = v50[1];
  v53 = *(v50 + 16);
  v54 = v50[3];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9698, &qword_2276776A0);
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  v16 = swift_allocObject();
  v58 = v51;
  v59 = v52;

  sub_22766A070();
  *(v16 + 16) = v58;
  *(v16 + 24) = v59;
  *(v16 + 32) = v53;
  *(v16 + 40) = v54;
  swift_getKeyPath();
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v140[0] = v43;

  v60 = sub_22766C820();
  sub_226ED25F8(v140, v138);
  v61 = v139;
  if (v139)
  {
    v62 = __swift_project_boxed_opaque_existential_0(v138, v139);
    v63 = *(v61 - 8);
    v64 = *(v63 + 64);
    MEMORY[0x28223BE20](v62);
    v66 = &v128 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v63 + 16))(v66);
    v67 = sub_22766D170();
    (*(v63 + 8))(v66, v61);
    __swift_destroy_boxed_opaque_existential_0(v138);
  }

  else
  {
    v67 = 0;
  }

  v68 = [v129 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B96A8, &unk_2276776D0);
  v69 = [objc_allocWithZone(v128) initWithLeftExpression:v60 rightExpression:v68 modifier:0 type:10 options:0];

  sub_226E97D1C(v140, &unk_27D7BC990, &qword_227670A30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_227670B30;
  *(v70 + 32) = v69;
  v71 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0C0, &unk_227677C40));
  sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
  v72 = v69;
  v73 = sub_22766C2B0();

  v74 = [v71 initWithType:0 subpredicates:v73];

  swift_beginAccess();
  v75 = v74;
  v76 = sub_22766A080();
  v78 = v77;
  MEMORY[0x22AA985C0]();
  v79 = v133;
  if (*((*v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v126 = *((*v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v76(v140, 0);
  swift_endAccess();

  v80 = swift_getKeyPath();
  v81 = sub_2273FC970(v80);
  if (v79)
  {

LABEL_21:
    swift_setDeallocating();

    v109 = *(v16 + 40);

    (v131)(v16 + qword_2813B2078, v132);
    goto LABEL_22;
  }

  v133 = 0;
  v82 = sub_226F3E6A8(v81);

  swift_setDeallocating();

  v83 = *(v16 + 40);

  (v131)(v16 + qword_2813B2078, v132);
  v84 = *(*v16 + 48);
  v85 = *(*v16 + 52);
  swift_deallocClassInstance();
  v86 = __swift_project_boxed_opaque_existential_0(v142, v142[3]);
  v87 = *v86;
  v88 = v86[1];
  v89 = *(v86 + 16);
  v90 = v86[3];
  v91 = *(v55 + 48);
  v92 = *(v55 + 52);
  v16 = swift_allocObject();
  v93 = v87;
  v94 = v88;

  sub_22766A070();
  *(v16 + 16) = v93;
  *(v16 + 24) = v94;
  *(v16 + 32) = v89;
  *(v16 + 40) = v90;
  swift_getKeyPath();
  v95 = sub_227230638(v82);

  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v140[0] = v95;

  v96 = sub_22766C820();
  sub_226ED25F8(v140, v138);
  v97 = v139;
  if (v139)
  {
    v98 = __swift_project_boxed_opaque_existential_0(v138, v139);
    v99 = *(v97 - 8);
    v100 = *(v99 + 64);
    MEMORY[0x28223BE20](v98);
    v102 = &v128 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v99 + 16))(v102);
    v103 = sub_22766D170();
    (*(v99 + 8))(v102, v97);
    __swift_destroy_boxed_opaque_existential_0(v138);
  }

  else
  {
    v103 = 0;
  }

  v104 = [v129 expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(v128) initWithLeftExpression:v96 rightExpression:v104 modifier:0 type:10 options:0];

  sub_226E97D1C(v140, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v105 = sub_22766A080();
  v107 = v106;
  MEMORY[0x22AA985C0]();
  if (*((*v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v127 = *((*v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v105(v140, 0);
  swift_endAccess();

  v108 = v133;
  sub_2272F9738(0x64);
  if (v108)
  {
    goto LABEL_21;
  }

  swift_setDeallocating();

  v113 = *(v16 + 40);

  (v131)(v16 + qword_2813B2078, v132);
  v114 = *(*v16 + 48);
  v115 = *(*v16 + 52);
  swift_deallocClassInstance();
  v116 = v134;
  sub_22766A6C0();

  v117 = sub_22766B380();
  v118 = sub_22766C8B0();

  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v140[0] = v120;
    *v119 = 141558274;
    *(v119 + 4) = 1752392040;
    *(v119 + 12) = 2080;
    sub_2276668A0();
    sub_227087D1C(&unk_28139B620, MEMORY[0x277D526D0]);
    v121 = sub_22766C610();
    v123 = v122;

    v124 = sub_226E97AE8(v121, v123, v140);

    *(v119 + 14) = v124;
    _os_log_impl(&dword_226E8E000, v117, v118, "Validator - Deleted metadata missing references %{mask.hash}s", v119, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v120);
    MEMORY[0x22AA9A450](v120, -1, -1);
    MEMORY[0x22AA9A450](v119, -1, -1);
  }

  else
  {
  }

  return (*(v135 + 8))(v116, v136);
}

uint64_t sub_2270853A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v118 = a3;
  v119 = a1;
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = v5;
  v14 = v6;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  swift_getKeyPath();
  v15 = sub_227665FE0();
  v17 = v16;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v125[0] = v15;
  v125[1] = v17;
  v18 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v127 = v18;
  v19 = sub_22766C820();
  sub_226ED25F8(v125, v123);
  v20 = v124;
  if (v124)
  {
    v21 = __swift_project_boxed_opaque_existential_0(v123, v124);
    v22 = *(v20 - 8);
    v23 = *(v22 + 64);
    MEMORY[0x28223BE20](v21);
    v25 = v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25);
    v26 = sub_22766D170();
    (*(v22 + 8))(v25, v20);
    __swift_destroy_boxed_opaque_existential_0(v123);
  }

  else
  {
    v26 = 0;
  }

  v122 = objc_opt_self();
  v27 = [v122 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A0, &qword_22767FF20);
  v28 = &off_2785D6000;
  v29 = [objc_allocWithZone(v120) initWithLeftExpression:v19 rightExpression:v27 modifier:0 type:4 options:0];

  sub_226E97D1C(v125, &unk_27D7BC990, &qword_227670A30);
  v30 = qword_2813B2078;
  swift_beginAccess();
  v31 = v29;
  v32 = sub_22766A080();
  v34 = v33;
  MEMORY[0x22AA985C0]();
  if (*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v32(v125, 0);
  swift_endAccess();

  swift_getKeyPath();
  v35 = v121;
  v36 = sub_227081208(a2);
  v37 = v35;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v125[0] = v36;

  v38 = sub_22766C820();
  sub_226ED25F8(v125, v123);
  v39 = v124;
  if (v124)
  {
    v40 = __swift_project_boxed_opaque_existential_0(v123, v124);
    v121 = v30;
    v41 = *(v39 - 8);
    v42 = *(v41 + 64);
    MEMORY[0x28223BE20](v40);
    v44 = v116 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v41 + 16))(v44);
    v45 = sub_22766D170();
    (*(v41 + 8))(v44, v39);
    v28 = &off_2785D6000;
    v37 = v35;
    __swift_destroy_boxed_opaque_existential_0(v123);
  }

  else
  {
    v45 = 0;
  }

  v46 = [v122 expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(v120) v28[298]];

  sub_226E97D1C(v125, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v47 = sub_22766A080();
  v49 = v48;
  MEMORY[0x22AA985C0]();
  if (*((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v114 = *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v47(v125, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  v51 = sub_2273FC724(KeyPath);
  if (v37)
  {

    swift_setDeallocating();

    v52 = *(v12 + 40);

    v53 = qword_2813B2078;
    v54 = sub_22766A100();
    (*(*(v54 - 8) + 8))(v12 + v53, v54);
LABEL_25:
    v106 = *(*v12 + 48);
    v107 = *(*v12 + 52);
    return swift_deallocClassInstance();
  }

  v121 = 0;
  v116[0] = sub_226F3E6A8(v51);

  swift_setDeallocating();

  v55 = *(v12 + 40);

  v56 = qword_2813B2078;
  v57 = sub_22766A100();
  v58 = *(v57 - 1);
  v59 = *(v58 + 8);
  v120 = v57;
  v116[1] = v58 + 8;
  v117 = v59;
  (v59)(v12 + v56);
  v60 = *(*v12 + 48);
  v61 = *(*v12 + 52);
  swift_deallocClassInstance();
  v62 = __swift_project_boxed_opaque_existential_0(v119, v119[3]);
  v63 = *v62;
  v64 = v62[1];
  v65 = *(v62 + 16);
  v66 = v62[3];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v68 = *(v67 + 48);
  v69 = *(v67 + 52);
  v12 = swift_allocObject();
  v70 = v63;
  v71 = v64;

  sub_22766A070();
  *(v12 + 16) = v70;
  *(v12 + 24) = v71;
  *(v12 + 32) = v65;
  *(v12 + 40) = v66;
  swift_getKeyPath();
  v72 = sub_227664570();
  v126 = MEMORY[0x277D83B88];
  v125[0] = v72;

  v73 = sub_22766C820();
  sub_226ED25F8(v125, v123);
  v74 = v124;
  if (v124)
  {
    v75 = __swift_project_boxed_opaque_existential_0(v123, v124);
    v76 = v28;
    v77 = *(v74 - 8);
    v78 = *(v77 + 64);
    MEMORY[0x28223BE20](v75);
    v80 = v116 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v77 + 16))(v80);
    v81 = sub_22766D170();
    (*(v77 + 8))(v80, v74);
    v28 = v76;
    __swift_destroy_boxed_opaque_existential_0(v123);
  }

  else
  {
    v81 = 0;
  }

  v82 = [v122 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
  v84 = [objc_allocWithZone(v83) v28[298]];

  sub_226E97D1C(v125, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v85 = v84;
  v86 = sub_22766A080();
  v88 = v87;
  MEMORY[0x22AA985C0]();
  if (*((*v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v119 = *((*v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v86(v125, 0);
  swift_endAccess();

  swift_getKeyPath();
  v89 = sub_227230638(v116[0]);

  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v125[0] = v89;

  v90 = sub_22766C820();
  sub_226ED25F8(v125, v123);
  v91 = v124;
  if (v124)
  {
    v92 = __swift_project_boxed_opaque_existential_0(v123, v124);
    v127 = v116;
    v93 = v83;
    v94 = *(v91 - 8);
    v95 = *(v94 + 64);
    MEMORY[0x28223BE20](v92);
    v97 = v116 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v94 + 16))(v97);
    v98 = sub_22766D170();
    (*(v94 + 8))(v97, v91);
    v83 = v93;
    __swift_destroy_boxed_opaque_existential_0(v123);
  }

  else
  {
    v98 = 0;
  }

  v99 = [v122 expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(v83) initWithLeftExpression:v90 rightExpression:v99 modifier:0 type:10 options:0];

  sub_226E97D1C(v125, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v100 = sub_22766A080();
  v102 = v101;
  MEMORY[0x22AA985C0]();
  if (*((*v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v115 = *((*v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v100(v125, 0);
  swift_endAccess();

  v103 = v121;
  v104 = sub_2272328B8(100);
  if (v103)
  {
    swift_setDeallocating();

    v105 = *(v12 + 40);

    v117(v12 + qword_2813B2078, v120);
    goto LABEL_25;
  }

  v109 = v104;
  swift_setDeallocating();

  v110 = *(v12 + 40);

  v117(v12 + qword_2813B2078, v120);
  v111 = *(*v12 + 48);
  v112 = *(*v12 + 52);
  swift_deallocClassInstance();
  v113 = sub_227081510(v109);

  *v118 = v113;
  return result;
}

void sub_227086148(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_227663480();
  v64 = *(v6 - 8);
  v7 = *(v64 + 64);
  MEMORY[0x28223BE20](v6);
  v63 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v67 = *(v70 - 8);
  v9 = *(v67 + 64);
  v10 = MEMORY[0x28223BE20](v70);
  v62 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v61 = v52 - v12;
  MEMORY[0x28223BE20](v11);
  v68 = v52 - v13;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  sub_22766A6C0();

  v20 = sub_22766B380();
  v21 = sub_22766C8B0();

  v22 = os_log_type_enabled(v20, v21);
  v69 = v6;
  v52[0] = a3;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v65 = v14;
    v66 = v19;
    v24 = v23;
    v25 = swift_slowAlloc();
    v71 = v25;
    *v24 = 141558274;
    *(v24 + 4) = 1752392040;
    *(v24 + 12) = 2080;
    v26 = MEMORY[0x22AA98660](v66, v6);
    v28 = sub_226E97AE8(v26, v27, &v71);

    *(v24 + 14) = v28;
    _os_log_impl(&dword_226E8E000, v20, v21, "Validation - cancelling bundles because they're missing stream assets: %{mask.hash}s", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x22AA9A450](v25, -1, -1);
    v29 = v24;
    v19 = v66;
    MEMORY[0x22AA9A450](v29, -1, -1);

    (*(v15 + 8))(v18, v65);
  }

  else
  {

    (*(v15 + 8))(v18, v14);
  }

  v30 = *(v19 + 16);
  v31 = MEMORY[0x277D84F90];
  v32 = v70;
  if (v30)
  {
    v71 = MEMORY[0x277D84F90];
    sub_226F1F4E8(0, v30, 0);
    v33 = *(v64 + 16);
    v34 = *(v64 + 80);
    v31 = v71;
    v59 = *(a2 + 16);
    v60 = v33;
    v35 = v19 + ((v34 + 32) & ~v34);
    v57 = *(v64 + 72);
    v58 = 0x8000000227698670;
    v37 = v67;
    v36 = v68;
    v55 = v9 + 7;
    v56 = v67 + 16;
    v64 += 16;
    v53 = (v64 - 8);
    v54 = v67 + 8;
    v52[1] = v67 + 32;
    do
    {
      v67 = v30;
      v68 = v31;
      v38 = v63;
      v66 = v35;
      v60(v63, v35, v69);
      v39 = v61;
      sub_226F25E48(v38, v61);
      v40 = swift_allocObject();
      v40[2] = 0xD000000000000024;
      v40[3] = v58;
      v40[4] = 128;
      v41 = swift_allocObject();
      *(v41 + 16) = sub_226F33024;
      *(v41 + 24) = v40;
      v42 = v62;
      (*(v37 + 16))(v62, v39, v32);
      v43 = *(v37 + 80);
      v44 = (v43 + 16) & ~v43;
      v45 = (v55 + v44) & 0xFFFFFFFFFFFFFFF8;
      v46 = swift_allocObject();
      v65 = *(v37 + 32);
      v65(v46 + v44, v42, v70);
      v47 = (v46 + v45);
      v32 = v70;
      *v47 = sub_226F32FE8;
      v47[1] = v41;
      sub_227669270();
      (*(v37 + 8))(v39, v32);
      v48 = v38;
      v31 = v68;
      (*v53)(v48, v69);
      v71 = v31;
      v50 = *(v31 + 16);
      v49 = *(v31 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_226F1F4E8(v49 > 1, v50 + 1, 1);
        v31 = v71;
      }

      *(v31 + 16) = v50 + 1;
      v65(v31 + ((v43 + 32) & ~v43) + *(v37 + 72) * v50, v36, v32);
      v35 = v66 + v57;
      v30 = v67 - 1;
    }

    while (v67 != 1);
  }

  v71 = v31;
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v51 = sub_22766C950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0C8, qword_227677C60);
  sub_226E9CFD0(&qword_281398FB0, &qword_27D7BA0C8, qword_227677C60);
  sub_227669240();
}

uint64_t sub_227086814(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t *sub_227086898(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_22708706C(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_227086978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9370, qword_227685C90);

  return sub_227669270();
}

void sub_227086A10(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr))
{
  a3(&v5);
  v4 = v5;
  v6 = 0;
  a1(&v5);

  sub_226F38F34(v4, 0);
}

uint64_t sub_227086AEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v43 = a2;
  v5 = sub_2276624A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v10 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v48 = &v33 - v13;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    return v15;
  }

  v41 = v9;
  v49 = MEMORY[0x277D84F90];
  v44 = v12;
  v45 = v11;
  sub_226F1F4E8(0, v14, 0);
  v15 = v49;
  v16 = -1 << *(v45 + 32);
  v47 = v45 + 56;
  v17 = sub_22766CC90();
  v18 = 0;
  v39 = v6 + 16;
  v40 = (v6 + 8);
  v19 = v45;
  v37 = v5;
  v38 = v44 + 32;
  v34 = v45 + 64;
  v35 = v14;
  v36 = v6;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(v19 + 32))
  {
    v20 = v17 >> 6;
    if ((*(v47 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_22;
    }

    v46 = v18;
    v21 = v15;
    v22 = *(v19 + 36);
    v15 = v41;
    (*(v6 + 16))(v41, *(v19 + 48) + *(v6 + 72) * v17, v5);
    sub_227083FC4(v15, v43, v48);
    if (v3)
    {
      goto LABEL_26;
    }

    v3 = 0;
    (*v40)(v15, v5);
    v15 = v21;
    v49 = v21;
    v23 = *(v21 + 16);
    v24 = *(v15 + 24);
    if (v23 >= v24 >> 1)
    {
      sub_226F1F4E8(v24 > 1, v23 + 1, 1);
      v15 = v49;
    }

    *(v15 + 16) = v23 + 1;
    (*(v44 + 32))(v15 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v23, v48, v42);
    v19 = v45;
    v5 = 1 << *(v45 + 32);
    if (v17 >= v5)
    {
      goto LABEL_23;
    }

    v25 = *(v47 + 8 * v20);
    if ((v25 & (1 << v17)) == 0)
    {
      goto LABEL_24;
    }

    if (v22 != *(v45 + 36))
    {
      goto LABEL_25;
    }

    v26 = v25 & (-2 << (v17 & 0x3F));
    if (v26)
    {
      v5 = __clz(__rbit64(v26)) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = v20 << 6;
      v28 = v20 + 1;
      v29 = (v34 + 8 * v20);
      while (v28 < (v5 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          sub_226EB526C(v17, v22, 0);
          v19 = v45;
          v5 = __clz(__rbit64(v30)) + v27;
          goto LABEL_4;
        }
      }

      sub_226EB526C(v17, v22, 0);
      v19 = v45;
    }

LABEL_4:
    v18 = v46 + 1;
    v17 = v5;
    v6 = v36;
    v5 = v37;
    if (v46 + 1 == v35)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  (*v40)(v15, v5);

  __break(1u);
  return result;
}

uint64_t sub_227086F10@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_227086F88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_22708706C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46[0] = a2;
  v51 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v46 - v8;
  v10 = sub_2276624A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v66 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v46 - v15;
  v17 = sub_227663180();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  result = MEMORY[0x28223BE20](v17);
  v63 = v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = 0;
  v22 = 0;
  v23 = *(a3 + 56);
  v47 = a3 + 56;
  v24 = 1 << *(a3 + 32);
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & v23;
  v27 = (v24 + 63) >> 6;
  v59 = (v11 + 48);
  v60 = v18 + 16;
  v52 = (v11 + 32);
  v67 = a4 + 56;
  v65 = v11 + 16;
  v48 = v11;
  v70 = (v11 + 8);
  v57 = (v18 + 8);
  v58 = v27;
  v49 = v9;
  v50 = a3;
  v68 = v10;
  v69 = a4;
  v53 = v18;
  v54 = result;
  while (v26)
  {
    v28 = __clz(__rbit64(v26));
    v62 = (v26 - 1) & v26;
LABEL_14:
    v31 = v28 | (v22 << 6);
    v32 = *(a3 + 48);
    v33 = *(v18 + 72);
    v61 = v31;
    (*(v18 + 16))(v63, v32 + v33 * v31, v17);
    sub_227663160();
    if ((*v59)(v9, 1, v10) == 1)
    {
      sub_226E97D1C(v9, &unk_27D7BB570, &unk_227670FC0);
      goto LABEL_6;
    }

    (*v52)(v16, v9, v10);
    v34 = *(a4 + 16);
    v55 = v70 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v34 && (v35 = *(a4 + 40), sub_227087D1C(&qword_28139BDE0, MEMORY[0x277CC9260]), v36 = sub_22766BF50(), v37 = -1 << *(a4 + 32), v38 = v36 & ~v37, ((*(v67 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) != 0))
    {
      v64 = ~v37;
      v39 = *(v48 + 72);
      v40 = *(v48 + 16);
      while (1)
      {
        v41 = v68;
        v42 = v66;
        v40(v66, *(v69 + 48) + v39 * v38, v68);
        sub_227087D1C(&qword_28139BDD8, MEMORY[0x277CC9260]);
        v43 = sub_22766BFB0();
        v44 = *v70;
        (*v70)(v42, v41);
        if (v43)
        {
          break;
        }

        v38 = (v38 + 1) & v64;
        if (((*(v67 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
        {
          v9 = v49;
          a3 = v50;
          v10 = v68;
          a4 = v69;
          v44(v16, v68);
          goto LABEL_21;
        }
      }

      v10 = v68;
      v44(v16, v68);
      v9 = v49;
      a3 = v50;
      a4 = v69;
      v18 = v53;
      v17 = v54;
LABEL_6:
      result = (*v57)(v63, v17);
      v27 = v58;
      v26 = v62;
    }

    else
    {
      (*v70)(v16, v10);
LABEL_21:
      v17 = v54;
      result = (*v57)(v63, v54);
      *(v51 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
      v45 = __OFADD__(v56++, 1);
      v18 = v53;
      v27 = v58;
      v26 = v62;
      if (v45)
      {
        goto LABEL_28;
      }
    }
  }

  v29 = v22;
  while (1)
  {
    v22 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v22 >= v27)
    {

      return sub_22726B078(v51, v46[0], v56, a3);
    }

    v30 = *(v47 + 8 * v22);
    ++v29;
    if (v30)
    {
      v28 = __clz(__rbit64(v30));
      v62 = (v30 - 1) & v30;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}