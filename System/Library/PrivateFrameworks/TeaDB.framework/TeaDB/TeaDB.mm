unint64_t sub_21799A0EC()
{
  result = qword_280B1DBA8;
  if (!qword_280B1DBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1DBA8);
  }

  return result;
}

unint64_t sub_21799A140()
{
  result = qword_280B1DB90;
  if (!qword_280B1DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1DB90);
  }

  return result;
}

uint64_t sub_21799A194(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_21799A1EC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21799A22C()
{
  v11 = sub_2179E9960();
  v0 = *(v11 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v11);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2179E9950();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_2179E9480();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10[1] = sub_21799A4A0();
  sub_2179E9470();
  v12 = MEMORY[0x277D84F90];
  sub_21799A4E4(&unk_280B1DCA8, MEMORY[0x277D85230]);
  v8 = MEMORY[0x277D85230];
  sub_21799A52C(0, &qword_280B1DCF0, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_21799A590(&qword_280B1DCE8, &qword_280B1DCF0, v8);
  sub_2179E9AA0();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v11);
  result = sub_2179E99B0();
  qword_280B1DB28 = result;
  return result;
}

unint64_t sub_21799A4A0()
{
  result = qword_280B1DCA0;
  if (!qword_280B1DCA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280B1DCA0);
  }

  return result;
}

uint64_t sub_21799A4E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21799A52C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21799A590(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_21799A52C(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21799A5F4()
{
  v2 = sub_2179E9180();
  v3 = OUTLINED_FUNCTION_27(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = *v1;
  v14 = *(v1 + 8);
  if (!*(v1 + 16))
  {
    v20 = *(v1 + 8);

    return v13;
  }

  if (*(v1 + 16) != 1)
  {
    return 0x3A79726F6D656D3ALL;
  }

  v15 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v16 = sub_2179E97B0();
  if (v16[2])
  {

    if (v16[2])
    {
      v17 = v16[4];
      v18 = v16[5];

      sub_2179E9150();

      sub_2179E9160();
      v13 = sub_2179E9170();
      v19 = *(v5 + 8);
      v19(v10, v0);
      v19(v12, v0);
      return v13;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21799A7D4()
{
  v0 = [objc_opt_self() mainBundle];
  sub_21799AF70(v0);
  sub_21799A86C();
  OUTLINED_FUNCTION_0_2();
  result = sub_2179E9A50();
  qword_280B1FEE8 = result;
  return result;
}

unint64_t sub_21799A86C()
{
  result = qword_280B1DB38;
  if (!qword_280B1DB38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280B1DB38);
  }

  return result;
}

uint64_t Database.__allocating_init(safeLocation:assertions:recoveryMode:)(uint64_t a1, uint64_t *a2, unsigned __int8 *a3)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *a2;
  v7 = *a3;
  if (qword_280B1DB60 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v8 = qword_280B1FEE8;
  sub_21799ABE4();
  v60 = v9;
  v10 = swift_allocObject();
  v11 = OUTLINED_FUNCTION_18_0(v10, xmmword_2179EA830);
  v13 = v12;
  v10[3].n128_u64[1] = MEMORY[0x277D837D0];
  v62 = sub_21799C634();
  v10[4].n128_u64[0] = v62;
  v10[2].n128_u64[0] = v11;
  v10[2].n128_u64[1] = v13;
  sub_2179E9940();
  sub_2179E93F0();

  LOBYTE(v66) = 1;
  OUTLINED_FUNCTION_8_3();
  v14 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_3_4();
  v18 = sub_2179A5DEC(v15, v16, v17);
  OUTLINED_FUNCTION_16_0(v18, v19, v20, v21, v22, v23, v24, v25, v53, v55, v56, v58, v60, v62, v8, 0, v66, *v67, v67[4], v69, *v71, v71[4], 0, v7, 0, v6, v4);
  if (v13)
  {
    v26 = v13;
    v27 = sub_2179E9920();
    OUTLINED_FUNCTION_26();
    v28 = swift_allocObject();
    v29 = OUTLINED_FUNCTION_18_0(v28, xmmword_2179EA820);
    v30 = MEMORY[0x277D837D0];
    v28[3].n128_u64[1] = MEMORY[0x277D837D0];
    v28[4].n128_u64[0] = v63;
    v28[2].n128_u64[0] = v29;
    v28[2].n128_u64[1] = v31;
    v59 = sub_21799AC4C(0, &qword_280B1DBF8);
    sub_2179E9C10();
    v28[6].n128_u64[0] = v30;
    v28[6].n128_u64[1] = v63;
    v28[4].n128_u64[1] = 0;
    v28[5].n128_u64[0] = 0xE000000000000000;
    sub_2179E93F0();

    OUTLINED_FUNCTION_8_3();
    v14 = swift_allocObject();
    OUTLINED_FUNCTION_16_0(v14, v32, v33, v34, v35, v36, v37, v38, 2, 4, v57, v59, v61, v63, v65, 0, 0xE000000000000001, *v68, v68[4], v70, *v72, v72[4], 0, 0, 2u, 0, 0);
    if (v27)
    {
      sub_2179E9920();
      OUTLINED_FUNCTION_26();
      v39 = swift_allocObject();
      v40 = OUTLINED_FUNCTION_18_0(v39, v54);
      v39[3].n128_u64[1] = v30;
      v39[4].n128_u64[0] = v64;
      v39[2].n128_u64[0] = v40;
      v39[2].n128_u64[1] = v41;
      v42 = OUTLINED_FUNCTION_3_4();
      sub_2179A1578(v42, v43, v44);
      sub_2179E9C10();
      v39[6].n128_u64[0] = v30;
      v39[6].n128_u64[1] = v64;
      v39[4].n128_u64[1] = 0;
      v39[5].n128_u64[0] = 0xE000000000000000;
      sub_2179E93F0();

      OUTLINED_FUNCTION_8_3();
      swift_allocObject();
      v14 = sub_2179C59E0();

      v45 = v27;
    }

    else
    {
      v49 = OUTLINED_FUNCTION_3_4();
      sub_2179A1578(v49, v50, v51);
      v45 = v26;
    }
  }

  else
  {
    v46 = OUTLINED_FUNCTION_3_4();
    sub_2179A1578(v46, v47, v48);
  }

  return v14;
}

void sub_21799ABE4()
{
  if (!qword_280B1DAE0)
  {
    sub_21799AC4C(255, &qword_280B1DAD8);
    v0 = sub_2179E9D50();
    if (!v1)
    {
      atomic_store(v0, &qword_280B1DAE0);
    }
  }
}

uint64_t sub_21799AC4C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_21799ACA0(char *a1)
{
  v2 = *a1;
  type metadata accessor for Assertion();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  sub_21799AD84();
  if (v1)
  {
  }

  return v3;
}

uint64_t assertion<A>(_:invoking:)(char *a1, void (*a2)(void))
{
  v5 = *a1;
  sub_21799ACA0(&v5);
  if (v2)
  {
  }

  a2();
}

void sub_21799AD84()
{
  if (qword_280B1DEF8 != -1)
  {
    swift_once();
  }

  v0 = qword_280B1DF00;
  os_unfair_lock_lock((qword_280B1DF00 + 24));
  sub_21799DC24((v0 + 16));
  os_unfair_lock_unlock((v0 + 24));
}

void sub_21799AE34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21799AE84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21799AED8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_21799AF24(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  a2(0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x277D84F98];
  *a3 = result;
  return result;
}

uint64_t sub_21799AF70(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2179E9650();

  return v3;
}

uint64_t OUTLINED_FUNCTION_6_0()
{

  return sub_2179E9A60();
}

uint64_t *OUTLINED_FUNCTION_6_2(uint64_t *result, uint64_t *a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t *a5, unsigned __int8 *a6)
{
  v8 = *result;
  v7 = result[1];
  v9 = *(result + 16);
  v10 = *a2;
  v15 = *a3;
  v11 = *a5;
  v13 = *(a5 + 8);
  v14 = *a4;
  v12 = *a6;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_8(uint64_t a1, uint64_t a2)
{
  *(v2 + 592) = a1;
  *(v2 + 600) = a2;
  return v2 + 664;
}

uint64_t OUTLINED_FUNCTION_6_9()
{

  return sub_2179E9D20();
}

void OUTLINED_FUNCTION_6_13()
{
  v2 = (*(v0 + 16) + 64);

  os_unfair_lock_lock(v2);
}

void OUTLINED_FUNCTION_6_15()
{

  JUMPOUT(0x21CEA9600);
}

void OUTLINED_FUNCTION_6_16(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{

  sub_2179A4AE0(0, a2, a3, a4, type metadata accessor for Statement);
}

uint64_t OUTLINED_FUNCTION_0_8()
{
}

void OUTLINED_FUNCTION_0_14()
{
  *(v0 + 16) = v1;
  v5 = v0 + 16 * v3;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;
  v6 = *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_0_19()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_0_21()
{

  sub_2179A7E4C();
}

uint64_t OUTLINED_FUNCTION_0_22()
{

  return swift_getWitnessTable();
}

void *OUTLINED_FUNCTION_0_24()
{
  sub_2179A0D5C((v0 - 144), v0 - 304);
  v1 = *(v0 - 272);
  return __swift_project_boxed_opaque_existential_1((v0 - 304), *(v0 - 280));
}

uint64_t OUTLINED_FUNCTION_0_27()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_30()
{

  return sub_2179E79CC(v2, v1, v0);
}

void sub_21799B5B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21799B6A8();
    v7 = a3(a1, &type metadata for Assertion.Name, &type metadata for Assertion.RunningAssertion, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_21799B624(uint64_t a1, unint64_t *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    a4(255, a3, MEMORY[0x277D834F8]);
    type metadata accessor for os_unfair_lock_s();
    v5 = sub_2179E9B40();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_21799B6A8()
{
  result = qword_280B1DEA0;
  if (!qword_280B1DEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1DEA0);
  }

  return result;
}

unint64_t sub_21799B700()
{
  result = qword_280B1DE98;
  if (!qword_280B1DE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1DE98);
  }

  return result;
}

BOOL sub_21799B7A8(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t OUTLINED_FUNCTION_2_5@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFFFLL;
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);

  return sub_2179A70AC(v3 + 32, &a2);
}

uint64_t OUTLINED_FUNCTION_2_6()
{
}

uint64_t OUTLINED_FUNCTION_1_2(uint64_t a1)
{

  return sub_2179AC7D4(a1);
}

void OUTLINED_FUNCTION_2_11()
{

  JUMPOUT(0x21CEA9600);
}

void OUTLINED_FUNCTION_2_12()
{

  sub_2179A7E4C();
}

uint64_t OUTLINED_FUNCTION_2_14@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(a1 - 256) + 8);
  result = *(v1 - 264);
  v4 = *(v1 - 256);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_16(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 4);
  v7 = *(a3 + 16);
  v8 = *(*(*(a3 + 24) + 8) + 24);

  return type metadata accessor for Statement();
}

uint64_t OUTLINED_FUNCTION_2_17(uint64_t result)
{
  v3[8] = result;
  v3[4] = v1;
  v3[5] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_19()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_17()
{

  return sub_2179E9D70();
}

uint64_t OUTLINED_FUNCTION_3_19(uint64_t a1, uint64_t a2, char a3)
{

  return sub_2179A03E4(a1, a2, a3, 0, 0, 29);
}

uint64_t Database.init(location:assertions:journalingMode:recoveryMode:cacheSize:vacuumMode:busyTimeout:)(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t *a5, unsigned __int8 *a6)
{
  OUTLINED_FUNCTION_6_2(a1, a2, a3, a4, a5, a6);
  if (qword_280B1DB20 != -1)
  {
    OUTLINED_FUNCTION_2_4();
    swift_once();
  }

  v12 = qword_280B1DB28;
  *(v11 + 32) = qword_280B1DB28;
  if ((v6 & 2) != 0)
  {
    v37 = v6;
    v14 = v12;
    sub_21799C868();
  }

  else
  {
    v13 = v12;
  }

  sub_21799A5F4();
  v15 = sub_2179E9670();

  OUTLINED_FUNCTION_33();
  v16 = OUTLINED_FUNCTION_19_0((v15 + 32));
  swift_endAccess();

  if (v16)
  {
    if (sqlite3_errmsg(*v8))
    {
      v17 = sub_2179E9700();
      v19 = v18;
      sub_2179ABC30();
      OUTLINED_FUNCTION_20_0();
      *v20 = v17;
      *(v20 + 8) = v19;
    }

    else
    {
      sub_2179ABC30();
      v26 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_13_2(v26, v27);
    }

    *(v20 + 16) = v10;
    *(v20 + 24) = v9;
    *(v20 + 32) = v7;
    swift_willThrow();
    if (*v8)
    {
      sqlite3_close(*v8);
    }

    goto LABEL_29;
  }

  sub_2179A1578(v10, v9, v7);
  v21 = *v8;
  if (!*v8)
  {
    goto LABEL_29;
  }

  type metadata accessor for Connection();
  OUTLINED_FUNCTION_12();
  v22 = swift_allocObject();
  *(v22 + 16) = v6;
  *(v22 + 24) = v21;
  OUTLINED_FUNCTION_30_0(v22);
  *v8 = v21;
  if ((*ms & 0x100000000) == 0)
  {
    sqlite3_busy_timeout(v21, *ms);
  }

  OUTLINED_FUNCTION_5_2();
  sub_21799F990(v23, v24);
  if (v36)
  {
    if (v34)
    {
      v25 = v36;
      sub_21799AC4C(0, &qword_280B1DBF8);
      if (swift_dynamicCast())
      {
        if (v39 == 10)
        {
          sub_21799C320(v37, v38, v39);
          if (qword_280B1DB60 != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          sub_2179E9930();
          OUTLINED_FUNCTION_32();
          sub_2179C4E1C(v21);
          OUTLINED_FUNCTION_5_2();
          sub_21799F990(v28, v29);

          goto LABEL_26;
        }

        sub_21799C320(v37, v38, v39);
      }
    }

    swift_willThrow();

    goto LABEL_29;
  }

LABEL_26:
  if ((v33 & 1) == 0)
  {
    OUTLINED_FUNCTION_14_0();
    sub_2179E9B10();

    OUTLINED_FUNCTION_28();
    v30 = sub_2179E9D40();
    MEMORY[0x21CEA9600](v30);

    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_11_0();
  }

  OUTLINED_FUNCTION_14_0();
  sub_2179E9B10();
  v31 = OUTLINED_FUNCTION_24();
  MEMORY[0x21CEA9600](v31);
  sub_2179E9C10();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_0();

LABEL_29:

  return v11;
}

uint64_t sub_21799C020(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_0(const char *a1)
{

  return sqlite3_open_v2(a1, v1, 65542, 0);
}

uint64_t OUTLINED_FUNCTION_19_3(uint64_t a1, uint64_t a2)
{
  *(v2 + 312) = a1;
  *(v2 + 320) = a2;
  return v2 + 384;
}

uint64_t OUTLINED_FUNCTION_19_5()
{

  return sub_2179E95F0();
}

uint64_t OUTLINED_FUNCTION_19_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_2179D2150(a16);

  return sub_2179ABC9C();
}

uint64_t OUTLINED_FUNCTION_19_7()
{

  return sub_2179E9D70();
}

uint64_t sub_21799C154(sqlite3 *a1)
{
  v2 = sub_2179E9670();
  v3 = sqlite3_exec(a1, (v2 + 32), 0, 0, 0);

  sub_21799FD18(v3, a1);
  if (OUTLINED_FUNCTION_3_19(v4, v5, v6))
  {
    return sub_21799C320(v3, v2, a1);
  }

  if (a1 != 29 || __PAIR128__(v2, v3) >= 3)
  {
    if (qword_280B1DB60 != -1)
    {
      OUTLINED_FUNCTION_0_27();
    }

    sub_2179E9920();
    sub_21799ABE4();
    v8 = swift_allocObject();
    OUTLINED_FUNCTION_4_19(v8, xmmword_2179EA820);
    sub_2179E9C10();
    v8[3].n128_u64[1] = MEMORY[0x277D837D0];
    v9 = sub_21799C634();
    v8[4].n128_u64[0] = v9;
    v8[2].n128_u64[0] = v14;
    v8[2].n128_u64[1] = v15;
    OUTLINED_FUNCTION_6_15();
    v8[6].n128_u64[0] = MEMORY[0x277D837D0];
    v8[6].n128_u64[1] = v9;
    v8[4].n128_u64[1] = v12;
    v8[5].n128_u64[0] = v13;
    OUTLINED_FUNCTION_5_15();
  }

  sub_2179A2D18();
  v10 = swift_allocError();
  return OUTLINED_FUNCTION_7_14(v10, v11);
}

uint64_t sub_21799C320(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0x1Cu)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18_0(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_21799A5F4();
}

uint64_t OUTLINED_FUNCTION_18_1(uint64_t result, uint64_t a2)
{
  *(v2 - 288) = result;
  *(v2 - 264) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_5()
{
}

uint64_t OUTLINED_FUNCTION_18_6(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_2179A70AC(v2, va);
}

__n128 OUTLINED_FUNCTION_8()
{
  v2 = v0[1].n128_u64[0];
  result = v0[2];
  v3 = v0[3].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_8_1(uint64_t a1)
{

  return EntityType.init(valueType:connection:)(v3, v2, v1, a1, v4);
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_8_4()
{

  return sub_2179A920C(0, v0, 0);
}

void OUTLINED_FUNCTION_15()
{

  sub_2179A7E4C();
}

void OUTLINED_FUNCTION_8_7()
{
  *(v5 - 120) = v0;
  *(v5 - 112) = v2;
  *(v5 - 104) = v3;
  *(v5 - 96) = v4;
  *(v5 - 88) = v1;
}

uint64_t OUTLINED_FUNCTION_8_10(uint64_t a1, uint64_t a2)
{
  *(v2 + 312) = a1;
  *(v2 + 320) = a2;
  return v2 + 384;
}

uint64_t OUTLINED_FUNCTION_8_13(uint64_t result)
{
  v3[8] = result;
  v3[4] = v1;
  v3[5] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, uint64_t a20, int a21, char a22, unsigned __int8 a23, unsigned __int8 a24, unsigned __int8 a25, uint64_t a26, uint64_t a27)
{
  a19 = v27;

  return Database.init(location:assertions:journalingMode:recoveryMode:cacheSize:vacuumMode:busyTimeout:)(&a27, &a26, &a25, &a24, &a16, &a23);
}

uint64_t OUTLINED_FUNCTION_16_1()
{

  return sub_2179E95F0();
}

uint64_t OUTLINED_FUNCTION_16_2(uint64_t a1, uint64_t a2)
{
  *(v2 + 424) = a1;
  *(v2 + 432) = a2;
  return v2 + 496;
}

unint64_t sub_21799C634()
{
  result = qword_280B1DAF0;
  if (!qword_280B1DAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1DAF0);
  }

  return result;
}

id sub_21799C688@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + 2);
  v6 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = *v1;
    v2 = *(v1 + 1);
    if (qword_280B1E6F0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v7 = sub_2179E9420();
  __swift_project_value_buffer(v7, qword_280B1FF00);
  v16 = v2;
  v8 = sub_2179E9400();
  v9 = sub_2179E9910();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446466;
    if (v3)
    {
      v12 = 0x61546873696E6946;
    }

    else
    {
      v12 = 0xD000000000000019;
    }

    if (v3)
    {
      v13 = 0xED0000776F4E6B73;
    }

    else
    {
      v13 = 0x80000002179F02F0;
    }

    v14 = sub_2179ABB6C(v12, v13, &v17);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2050;
    *(v10 + 14) = v6;
    _os_log_impl(&dword_217998000, v8, v9, "Increasing interest in assertion. Name=%{public}s, New Interest Count=%{public}ld", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x21CEAA530](v11, -1, -1);
    MEMORY[0x21CEAA530](v10, -1, -1);
  }

  *a1 = v3;
  *(a1 + 8) = v16;
  *(a1 + 16) = v6;

  return v16;
}

uint64_t sub_21799C868()
{
  v1 = *v0;
  type metadata accessor for Assertion();
  v2 = swift_allocObject();
  *(v2 + 16) = (v1 & 0x20) != 0;
  sub_21799AD84();
  return v2;
}

unint64_t sub_21799CA2C(unint64_t result, char a2, char a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + result) = a2 & 1;
  v6 = a6[7] + 24 * result;
  *v6 = a3 & 1;
  *(v6 + 8) = a4;
  *(v6 + 16) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

uint64_t sub_21799CA84(unsigned __int8 *a1)
{
  v2 = sub_2179E9430();
  v68 = *(v2 - 8);
  v69 = v2;
  v3 = *(v68 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v67 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v66 = &v52[-v6];
  v7 = sub_2179E94A0();
  v64 = *(v7 - 8);
  v65 = v7;
  v8 = *(v64 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v62 = &v52[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v63 = &v52[-v11];
  v12 = sub_2179E9460();
  v59 = *(v12 - 8);
  v60 = v12;
  v13 = *(v59 + 64);
  MEMORY[0x28223BE20](v12);
  v57 = &v52[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = sub_2179E9480();
  v56 = *(v58 - 8);
  v15 = *(v56 + 64);
  MEMORY[0x28223BE20](v58);
  v55 = &v52[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_2179E99C0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v52[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_2179E92A0();
  v71 = *(v22 - 8);
  v72 = v22;
  v23 = *(v71 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v54 = &v52[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v53 = *a1;
  v70 = &v52[-v25];
  sub_2179E9290();
  sub_21799AED8(0, &unk_280B1DC80, 0x277D85CA0);
  if (qword_280B1DB48 != -1)
  {
    swift_once();
  }

  aBlock[0] = MEMORY[0x277D84F90];
  sub_2179A1608(&unk_280B1DC90, MEMORY[0x277D85278]);
  v26 = MEMORY[0x277D85278];
  sub_2179A1650(0, &unk_280B1DCD8, MEMORY[0x277D85278]);
  sub_2179A16A4(&qword_280B1DCD0, &unk_280B1DCD8, v26);
  sub_2179E9AA0();
  v27 = sub_2179E99D0();
  v28 = (*(v18 + 8))(v21, v17);
  if (qword_280B1DEE0 != -1)
  {
    v28 = swift_once();
  }

  v29 = qword_280B1DEE8;
  MEMORY[0x28223BE20](v28);
  v30 = v70;
  *&v52[-16] = v70;
  *&v52[-8] = v27;
  os_unfair_lock_lock((v29 + 24));
  sub_2179A1DCC((v29 + 16));
  os_unfair_lock_unlock((v29 + 24));
  ObjectType = swift_getObjectType();
  v32 = v71;
  v33 = v54;
  v34 = v30;
  v35 = v72;
  (*(v71 + 16))(v54, v34, v72);
  v36 = (*(v32 + 80) + 24) & ~*(v32 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = v61;
  v38 = v33;
  v39 = ObjectType;
  (*(v32 + 32))(v37 + v36, v38, v35);
  *(v37 + v36 + v23) = v53;
  aBlock[4] = sub_2179B8338;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2179A230C;
  aBlock[3] = &block_descriptor_1;
  v40 = _Block_copy(aBlock);
  v41 = v55;
  sub_2179A1F14();
  v42 = v57;
  sub_21799F3E4();
  sub_2179E9A10();
  _Block_release(v40);
  (*(v59 + 8))(v42, v60);
  (*(v56 + 8))(v41, v58);

  v43 = v62;
  sub_2179E9490();
  if (qword_280B1DEB0 != -1)
  {
    swift_once();
  }

  v44 = v69;
  v45 = __swift_project_value_buffer(v69, qword_280B1DEC0);
  v46 = v63;
  MEMORY[0x21CEA9400](v43, v45);
  v47 = v65;
  v64 = *(v64 + 8);
  (v64)(v43, v65);
  v48 = v66;
  sub_2179A1F90(v66);
  v49 = v67;
  sub_2179A1F18(v67);
  MEMORY[0x21CEA9950](v46, v48, v49, v39);
  v50 = *(v68 + 8);
  v50(v49, v44);
  v50(v48, v44);
  (v64)(v46, v47);
  sub_2179E9A30();
  swift_unknownObjectRelease();
  return (*(v71 + 8))(v70, v72);
}

uint64_t sub_21799D2A4()
{
  v1 = sub_2179E92A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_21799D330()
{
  v11 = sub_2179E9960();
  v0 = *(v11 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v11);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2179E9950();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_2179E9480();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10[1] = sub_21799AED8(0, &qword_280B1DCA0, 0x277D85C78);
  sub_2179E9470();
  v12 = MEMORY[0x277D84F90];
  sub_2179A1608(&unk_280B1DCA8, MEMORY[0x277D85230]);
  v8 = MEMORY[0x277D85230];
  sub_2179A1650(0, &qword_280B1DCF0, MEMORY[0x277D85230]);
  sub_2179A16A4(&qword_280B1DCE8, &qword_280B1DCF0, v8);
  sub_2179E9AA0();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v11);
  result = sub_2179E99B0();
  qword_280B1FEE0 = result;
  return result;
}

void sub_21799D5C8(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  sub_21799DC40(0, &unk_280B1DC10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2179EE720;
  v36 = v2;
  if (v2)
  {
    v4 = 0x61546873696E6946;
  }

  else
  {
    v4 = 0xD000000000000019;
  }

  if (v2)
  {
    v5 = 0xED0000776F4E6B73;
  }

  else
  {
    v5 = 0x80000002179F02F0;
  }

  sub_21799AED8(0, &qword_280B1DC78, 0x277D46E38);
  v39 = v4;
  *(v3 + 32) = sub_21799DC8C();
  *(v3 + 40) = [objc_opt_self() attributeWithCompletionPolicy_];
  v6 = [objc_opt_self() currentProcess];
  v7 = objc_allocWithZone(MEMORY[0x277D46DB8]);
  v8 = sub_21799DD20(0xD000000000000020, 0x80000002179F0360, v6);
  if (qword_280B1E6F0 != -1)
  {
    swift_once();
  }

  v9 = sub_2179E9420();
  __swift_project_value_buffer(v9, qword_280B1FF00);
  v10 = sub_2179E9400();
  v11 = sub_2179E9910();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = v8;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40[0] = v14;
    *v13 = 136446210;
    v15 = sub_2179ABB6C(v39, v5, v40);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_217998000, v10, v11, "Acquiring RBSAssertion. Name=%{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x21CEAA530](v14, -1, -1);
    v16 = v13;
    v8 = v12;
    MEMORY[0x21CEAA530](v16, -1, -1);
  }

  v40[0] = 0;
  if ([v8 acquireWithError_])
  {
    v17 = v40[0];
    v18 = sub_2179E9400();
    v19 = sub_2179E9910();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v40[0] = v21;
      *v20 = 136446210;
      v22 = sub_2179ABB6C(v39, v5, v40);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_217998000, v18, v19, "Acquired RBSAssertion. Name=%{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x21CEAA530](v21, -1, -1);
      MEMORY[0x21CEAA530](v20, -1, -1);
    }

    *a2 = v36;
    *(a2 + 8) = v8;
    *(a2 + 16) = 1;
  }

  else
  {
    v23 = v40[0];
    v24 = sub_2179E9140();

    swift_willThrow();
    v25 = v24;
    v26 = sub_2179E9400();
    v27 = sub_2179E9920();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v38 = v8;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v40[0] = v30;
      *v28 = 136446466;
      v31 = sub_2179ABB6C(v39, v5, v40);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2114;
      v32 = v24;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v33;
      *v29 = v33;
      _os_log_impl(&dword_217998000, v26, v27, "Error acquiring RBSAssertion. Name=%{public}s, Error=%{public}@", v28, 0x16u);
      sub_2179E1324(v29);
      v34 = v29;
      v8 = v38;
      MEMORY[0x21CEAA530](v34, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x21CEAA530](v30, -1, -1);
      MEMORY[0x21CEAA530](v28, -1, -1);
    }

    swift_willThrow();
  }

  v35 = *MEMORY[0x277D85DE8];
}

void sub_21799DAF4(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_21799E0E0(*(a2 + 16)), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 24 * v6;
    v9 = *v8;
    v11 = *(v8 + 8);
    v10 = *(v8 + 16);
    v12 = *(a2 + 16);
    LOBYTE(v23[0]) = v9;
    v23[1] = v11;
    v23[2] = v10;
    v13 = v11;
    sub_21799C688(v24);
    v14 = v24[0];
    v15 = v25;
    v16 = v26;
    v17 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v23[0] = *a1;
    sub_21799DF80(v14, v15, v16, v12);
  }

  else
  {
    v18 = *(a2 + 16);
    LOBYTE(v23[0]) = v18;
    sub_21799D5C8(v23, v24);
    if (v2)
    {
      return;
    }

    v19 = v24[0];
    v20 = v25;
    v21 = v26;
    v22 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v23[0] = *a1;
    sub_21799DF80(v19, v20, v21, v18);
  }

  *a1 = v23[0];
}

void sub_21799DC40(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2179E9D50();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

id sub_21799DC8C()
{
  v0 = sub_2179E9640();

  v1 = sub_2179E9640();

  v2 = [swift_getObjCClassFromMetadata() attributeWithDomain:v0 name:v1];

  return v2;
}

id sub_21799DD20(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2179E9640();

  sub_21799AED8(0, &unk_280B1DCC0, 0x277D46DD8);
  v6 = sub_2179E97A0();

  v7 = [v3 initWithExplanation:v5 target:a3 attributes:v6];

  return v7;
}

uint64_t sub_21799DDC8()
{
  v0 = sub_2179E9420();
  __swift_allocate_value_buffer(v0, qword_280B1FF00);
  __swift_project_value_buffer(v0, qword_280B1FF00);
  if (qword_280B1E6E8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_2();
  return sub_2179E9410();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21799DF10()
{
  v0 = [objc_opt_self() mainBundle];
  result = sub_21799AF70(v0);
  v3 = 0x6C7070612E6D6F63;
  if (v2)
  {
    v3 = result;
  }

  v4 = 0xEF62646165742E65;
  if (v2)
  {
    v4 = v2;
  }

  qword_280B1FEF0 = v3;
  *algn_280B1FEF8 = v4;
  return result;
}

void sub_21799DF80(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21799E0E0(a4 & 1);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v11;
  v14 = v12;
  sub_21799B5B8(0, &qword_280B1DC38, MEMORY[0x277D843B8]);
  if ((sub_2179E9C20() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v5;
  v16 = sub_21799E0E0(a4 & 1);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_13:
    sub_2179E9DD0();
    __break(1u);
    return;
  }

  v13 = v16;
LABEL_5:
  v18 = *v5;
  if (v14)
  {
    v19 = v18[7] + 24 * v13;
    v20 = *(v19 + 8);
    *v19 = a1 & 1;
    *(v19 + 8) = a2;
    *(v19 + 16) = a3;
  }

  else
  {

    sub_21799CA2C(v13, a4 & 1, a1 & 1, a2, a3, v18);
  }
}

unint64_t sub_21799E0E0(char a1)
{
  v3 = *(v1 + 40);
  sub_2179E9E20();
  MEMORY[0x21CEA9D40](a1 & 1);
  v4 = sub_2179E9E40();

  return sub_21799E14C(a1 & 1, v4);
}

unint64_t sub_21799E14C(char a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  result = a2 & v4;
  v6 = a1 & 1;
  while (((1 << result) & *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0 && *(*(v2 + 48) + result) != v6)
  {
    result = (result + 1) & v4;
  }

  return result;
}

void *KeyValueStore.init(database:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v79 = v4;
  v5 = sub_2179E9460();
  v76 = OUTLINED_FUNCTION_0_0(v5);
  v77 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_2_0();
  v78 = v9;
  OUTLINED_FUNCTION_18();
  v73 = sub_2179E99F0();
  v10 = OUTLINED_FUNCTION_0_0(v73);
  v72 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v71 = v14;
  OUTLINED_FUNCTION_18();
  v70 = sub_2179E9960();
  v15 = OUTLINED_FUNCTION_0_0(v70);
  v69 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v68 = v19;
  OUTLINED_FUNCTION_18();
  v20 = sub_2179E9950();
  v21 = OUTLINED_FUNCTION_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = sub_2179E9480();
  v25 = OUTLINED_FUNCTION_0_0(v24);
  v74 = v26;
  v75 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_0();
  v80 = v29;
  v2[4] = sub_2179AEC64;
  v2[5] = 0;
  v31 = v4[11];
  v32 = v4[12];
  v33 = v4[13];
  v34 = v4[14];
  aBlock = v4[10];
  v30 = aBlock;
  v85 = v31;
  v91 = v31;
  v86 = v32;
  v87 = v33;
  v82 = v34;
  v83 = v33;
  v88 = v34;
  type metadata accessor for KVSEntry();
  v35 = sub_2179E9500();
  v2[9] = 0;
  v2[6] = v35;
  *(v2 + 80) = 1;
  v2[2] = a1;
  v36 = v30;
  v37 = v32;
  type metadata accessor for KVSEntity();
  swift_getWitnessTable();
  v38 = Database.table<A>(_:)();
  if (v81)
  {
    v39 = v2[2];

    v40 = v2[5];

    v41 = v2[6];

    aBlock = v36;
    v85 = v91;
    v86 = v32;
    v87 = v83;
    v88 = v82;
    type metadata accessor for KeyValueStore.Promises();
    OUTLINED_FUNCTION_9();
    v42 = sub_2179E9A60();
    OUTLINED_FUNCTION_1(v42);
    (*(v43 + 8))(v2 + 9);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v2[3] = v38;
    v65[3] = sub_21799AED8(0, &qword_280B1DCA0, 0x277D85C78);
    v44 = *(v32 + 8);

    v81 = 0;
    v67 = v36;
    v65[2] = v44(v36, v37);
    v65[1] = v45;
    sub_2179E9470();
    aBlock = MEMORY[0x277D84F90];
    sub_21799F39C(&unk_280B1DCA8, MEMORY[0x277D85230]);
    v66 = v37;
    v46 = MEMORY[0x277D85230];
    sub_21799F4E0(0, &qword_280B1DCF0, MEMORY[0x277D85230], MEMORY[0x277D83940]);
    v79 = a1;
    sub_21799F544(&qword_280B1DCE8, &qword_280B1DCF0, v46);
    sub_2179E9AA0();
    (*(v69 + 104))(v68, *MEMORY[0x277D85260], v70);
    v2[7] = sub_2179E99B0();
    sub_21799AED8(0, &unk_280B1DC80, 0x277D85CA0);
    sub_2179E99E0();
    v47 = v2[7];
    v48 = sub_2179E9A00();

    (*(v72 + 8))(v71, v73);
    v2[8] = v48;

    sub_2179AA534();
    v90[8] = 0;
    swift_beginAccess();
    v49 = v91;
    aBlock = v67;
    v85 = v91;
    v50 = v66;
    v51 = v82;
    v86 = v66;
    v87 = v83;
    v88 = v82;
    type metadata accessor for KeyValueStore.Promises();
    OUTLINED_FUNCTION_9();
    v52 = sub_2179E9A60();
    OUTLINED_FUNCTION_1(v52);
    (*(v53 + 40))(v2 + 9, v90);
    swift_endAccess();
    v54 = v2[8];
    swift_getObjectType();
    OUTLINED_FUNCTION_15_0();
    v55 = swift_allocObject();
    swift_weakInit();
    v56 = swift_allocObject();
    v56[2] = v67;
    v56[3] = v49;
    v57 = v83;
    v56[4] = v50;
    v56[5] = v57;
    v56[6] = v51;
    v56[7] = v55;
    v88 = sub_2179BA660;
    v89 = v56;
    aBlock = MEMORY[0x277D85DD0];
    v85 = 1107296256;
    v86 = sub_2179A230C;
    v87 = &block_descriptor;
    v58 = _Block_copy(&aBlock);

    sub_2179E9470();
    sub_21799F3E4();
    sub_2179E9A10();
    _Block_release(v58);
    (*(v77 + 8))(v78, v76);
    (*(v74 + 8))(v80, v75);

    v59 = v2[8];
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_2179E9A30();
    v60 = swift_unknownObjectRelease();
    MEMORY[0x28223BE20](v60);
    v65[-2] = v79;
    v65[-1] = v2;
    sub_2179E93D0();
    v61 = swift_allocObject();
    v62 = v91;
    v61[2] = v67;
    v61[3] = v62;
    v61[4] = v66;
    v61[5] = v57;
    v61[6] = v82;
    v63 = sub_2179E9380();
    sub_2179E9390();
  }

  return v2;
}

uint64_t sub_21799EAA8()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_15_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_21799EADC()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t Database.asyncWrite(_:block:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  sub_21799A52C(0, qword_280B1D6D8, MEMORY[0x277D851D8], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17[-v9];
  LOBYTE(a1) = *a1;
  v11 = sub_2179E9480();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v18 = v3;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = v10;
  sub_21799EC44();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_2179E93B0();
  sub_2179AA948(v10);
  return v15;
}

void sub_21799EC44()
{
  if (!qword_280B1D888)
  {
    v0 = sub_2179E93C0();
    if (!v1)
    {
      atomic_store(v0, &qword_280B1D888);
    }
  }
}

uint64_t sub_21799EC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v5 = sub_2179E9460();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_21799A52C(0, qword_280B1D6D8, MEMORY[0x277D851D8], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v36 - v10;
  v12 = sub_2179E9480();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_2179AA88C(a1, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_2179AA948(v11);
    v20 = MEMORY[0x277D85198];
    sub_21799A52C(0, &qword_280B1D6C0, MEMORY[0x277D85198], MEMORY[0x277D84560]);
    v21 = *(v6 + 72);
    v22 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_2179EA830;
    sub_2179E9450();
    aBlock = v23;
    sub_21799A4E4(&qword_280B1DD50, MEMORY[0x277D85198]);
    sub_21799A52C(0, &qword_280B1DD18, v20, MEMORY[0x277D83940]);
    sub_21799A590(&qword_280B1DD10, &qword_280B1DD18, v20);
    sub_2179E9AA0();
    v42 = v37;
    v43 = a3;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_2179A230C;
    v41 = &block_descriptor_73;
    _Block_copy(&aBlock);
    v24 = sub_2179E94E0();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();

    v27 = sub_2179E94C0();
  }

  else
  {
    (*(v13 + 32))(v19, v11, v12);
    (*(v13 + 16))(v17, v19, v12);
    v28 = MEMORY[0x277D85198];
    sub_21799A52C(0, &qword_280B1D6C0, MEMORY[0x277D85198], MEMORY[0x277D84560]);
    v36 = a3;
    v29 = *(v6 + 72);
    v30 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_2179EA820;
    sub_2179E9450();
    sub_2179E9440();
    aBlock = v31;
    sub_21799A4E4(&qword_280B1DD50, MEMORY[0x277D85198]);
    sub_21799A52C(0, &qword_280B1DD18, v28, MEMORY[0x277D83940]);
    sub_21799A590(&qword_280B1DD10, &qword_280B1DD18, v28);
    sub_2179E9AA0();
    v42 = v37;
    v43 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_2179A230C;
    v41 = &block_descriptor_76;
    _Block_copy(&aBlock);
    v32 = sub_2179E94E0();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();

    v27 = sub_2179E94B0();
    (*(v13 + 8))(v19, v12);
  }

  return v27;
}

void sub_21799F244()
{
  if (!qword_280B1D8C8[0])
  {
    v0 = type metadata accessor for Statement();
    if (!v1)
    {
      atomic_store(v0, qword_280B1D8C8);
    }
  }
}

uint64_t getEnumTagSinglePayload for AssertionOptions(uint64_t a1, int a2)
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

uint64_t KeyValueStore.Promises.allKeys()(uint64_t a1)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  sub_21799F320();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_14();
  return sub_2179E93B0();
}

void sub_21799F320()
{
  if (!qword_280B1D6A8)
  {
    sub_21799AE34(255, &qword_280B1DD00, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v0 = sub_2179E93C0();
    if (!v1)
    {
      atomic_store(v0, &qword_280B1D6A8);
    }
  }
}

uint64_t sub_21799F39C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21799F3E4()
{
  sub_2179E9460();
  sub_21799F39C(&qword_280B1DD50, MEMORY[0x277D85198]);
  v0 = MEMORY[0x277D85198];
  sub_21799F4E0(0, &qword_280B1DD18, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21799F544(&qword_280B1DD10, &qword_280B1DD18, v0);
  return sub_2179E9AA0();
}

void sub_21799F4E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21799F544(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_21799F4E0(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_4(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return v2 + 104;
}

uint64_t OUTLINED_FUNCTION_5_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a8 & 0xFFFFFFFFFFFFFFFLL;
  v10 = *(v9 + 24);
  v12 = *(v9 + 16);

  return sub_2179A9A0C(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t OUTLINED_FUNCTION_5_6()
{
}

uint64_t OUTLINED_FUNCTION_5_8(uint64_t a1, uint64_t a2)
{
  *(v2 + 536) = a1;
  *(v2 + 544) = a2;
  return v2 + 608;
}

uint64_t OUTLINED_FUNCTION_5_9()
{
  v2 = *(v0 + 16);

  return sub_2179E9CC0();
}

void OUTLINED_FUNCTION_5_10(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x277D84560];

  sub_21799AE84(0, a2, v3);
}

uint64_t OUTLINED_FUNCTION_5_11@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  return 0;
}

uint64_t OUTLINED_FUNCTION_5_15()
{

  return sub_2179E93F0();
}

uint64_t OUTLINED_FUNCTION_5_16(uint64_t a1)
{

  return sub_2179A54D4(a1, 0, 29);
}

uint64_t OUTLINED_FUNCTION_9_2@<X0>(unint64_t a1@<X8>)
{

  return sub_2179A920C(a1 > 1, v1, 1);
}

void OUTLINED_FUNCTION_9_4()
{

  JUMPOUT(0x21CEA9600);
}

void OUTLINED_FUNCTION_9_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  Database.write(_:block:)(v21 - 1, v20, &a9, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void OUTLINED_FUNCTION_9_7()
{
  v3 = v0[6];
  v2 = v0[5];
  v1 = v0[4];
}

uint64_t OUTLINED_FUNCTION_9_8()
{
  result = *v3;
  v6 = *(v1 + 80);
  *v3 = v2;
  *(v1 + 80) = v0;
  v7 = *(v1 + 88);
  *(v1 + 88) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_9(uint64_t result)
{
  *v1 = result;
  v1[1] = 0xE200000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_10()
{
  *(v1 - 72) = 3;

  return sub_2179B4374(v0);
}

void OUTLINED_FUNCTION_9_12()
{
  v2 = *(v0 - 1);
  v3 = *v0;
  *(v1 - 176) = *(v0 - 2);
  *(v1 - 168) = v2;
  *(v1 - 160) = v3;
}

uint64_t sub_21799F990(_BYTE *a1, sqlite3 *a2)
{
  v4 = *a1;
  v5 = *(v2 + 16);
  if (v5 && (*(v5 + 16) & 0x10) != 0)
  {
    sub_21799C868();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_6:
    v6 = a2;
    goto LABEL_7;
  }

  if (!*a1)
  {
    goto LABEL_6;
  }

LABEL_4:
  v6 = a2;
LABEL_7:
  sub_21799C154(v6);
}

uint64_t OUTLINED_FUNCTION_12_2@<X0>(uint64_t a1@<X8>)
{
  v2 = (a1 & 0xFFFFFFFFFFFFFFFLL);
  v3 = v2[4];
  v5 = v2[2];
  v6 = v2[3];
}

uint64_t OUTLINED_FUNCTION_12_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_7(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return v2 + 216;
}

uint64_t OUTLINED_FUNCTION_12_10(uint64_t *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{

  return sub_2179AC76C(a1, v4, v5, a4);
}

uint64_t OUTLINED_FUNCTION_12_11()
{

  return sub_2179E9C10();
}

uint64_t OUTLINED_FUNCTION_30_0(uint64_t a1)
{
  v3 = *v1;
  *v1 = a1;
}

uint64_t OUTLINED_FUNCTION_11()
{
  v1 = *(*(v0 - 384) + 8);
  result = *(v0 - 272);
  v3 = *(v0 - 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return sub_21799C154(v0);
}

uint64_t OUTLINED_FUNCTION_11_2()
{
}

uint64_t OUTLINED_FUNCTION_11_5()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_11_6(uint64_t a1, uint64_t a2)
{
  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return v2 + 272;
}

uint64_t OUTLINED_FUNCTION_11_7()
{
  result = *v4;
  v6 = *(v0 + 56);
  *v4 = v3;
  *(v0 + 56) = v2;
  v7 = *(v0 + 64);
  *(v0 + 64) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_10()
{
}

void OUTLINED_FUNCTION_11_11()
{

  sub_21799ABE4();
}

uint64_t OUTLINED_FUNCTION_11_12()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_21_0()
{

  JUMPOUT(0x21CEA9600);
}

uint64_t OUTLINED_FUNCTION_21_2(uint64_t a1, uint64_t a2)
{
  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return v2 + 272;
}

void sub_21799FD18(int a1, sqlite3 *a2)
{
  switch(a1)
  {
    case 0:
      return;
    case 1:
      if (!a2 || !sqlite3_errmsg(a2))
      {
        goto LABEL_91;
      }

      goto LABEL_90;
    case 2:
      if (a2 && sqlite3_errmsg(a2))
      {
        goto LABEL_90;
      }

      goto LABEL_91;
    case 3:
      if (a2 && sqlite3_errmsg(a2))
      {
        goto LABEL_90;
      }

      goto LABEL_91;
    case 4:
      if (a2 && sqlite3_errmsg(a2))
      {
        goto LABEL_90;
      }

      goto LABEL_91;
    case 5:
      if (a2 && sqlite3_errmsg(a2))
      {
        goto LABEL_90;
      }

      goto LABEL_91;
    case 6:
      if (a2 && sqlite3_errmsg(a2))
      {
        goto LABEL_90;
      }

      goto LABEL_91;
    case 7:
      if (a2 && sqlite3_errmsg(a2))
      {
        goto LABEL_90;
      }

      goto LABEL_91;
    case 8:
      if (a2 && sqlite3_errmsg(a2))
      {
        goto LABEL_90;
      }

      goto LABEL_91;
    case 9:
      if (a2 && sqlite3_errmsg(a2))
      {
        goto LABEL_90;
      }

      goto LABEL_91;
    case 10:
      if (a2 && sqlite3_errmsg(a2))
      {
        goto LABEL_90;
      }

      goto LABEL_91;
    case 11:
      if (a2 && sqlite3_errmsg(a2))
      {
        goto LABEL_90;
      }

      goto LABEL_91;
    case 12:
      if (a2 && sqlite3_errmsg(a2))
      {
        goto LABEL_90;
      }

      goto LABEL_91;
    case 13:
      if (a2 && sqlite3_errmsg(a2))
      {
        goto LABEL_90;
      }

      goto LABEL_91;
    case 14:
      if (a2 && sqlite3_errmsg(a2))
      {
        goto LABEL_90;
      }

      goto LABEL_91;
    case 15:
      if (a2 && sqlite3_errmsg(a2))
      {
        goto LABEL_90;
      }

      goto LABEL_91;
    case 16:
      if (a2 && sqlite3_errmsg(a2))
      {
        goto LABEL_90;
      }

      goto LABEL_91;
    case 17:
      if (a2 && sqlite3_errmsg(a2))
      {
        goto LABEL_90;
      }

      goto LABEL_91;
    case 18:
      if (a2 && sqlite3_errmsg(a2))
      {
        goto LABEL_90;
      }

      goto LABEL_91;
    case 19:
      if (a2 && sqlite3_errmsg(a2))
      {
        goto LABEL_90;
      }

      goto LABEL_91;
    case 20:
      if (a2 && sqlite3_errmsg(a2))
      {
        goto LABEL_90;
      }

      goto LABEL_91;
    case 21:
      if (a2 && sqlite3_errmsg(a2))
      {
        goto LABEL_90;
      }

      goto LABEL_91;
    case 22:
      if (a2 && sqlite3_errmsg(a2))
      {
        goto LABEL_90;
      }

      goto LABEL_91;
    case 23:
      if (a2 && sqlite3_errmsg(a2))
      {
        goto LABEL_90;
      }

      goto LABEL_91;
    case 24:
      if (a2 && sqlite3_errmsg(a2))
      {
        goto LABEL_90;
      }

      goto LABEL_91;
    case 25:
      if (a2 && sqlite3_errmsg(a2))
      {
        goto LABEL_90;
      }

      goto LABEL_91;
    case 26:
      if (a2 && sqlite3_errmsg(a2))
      {
        goto LABEL_90;
      }

      goto LABEL_91;
    case 27:
      if (a2 && sqlite3_errmsg(a2))
      {
        goto LABEL_90;
      }

      goto LABEL_91;
    case 28:
      if (a2 && sqlite3_errmsg(a2))
      {
LABEL_90:
        sub_2179E9700();
      }

      else
      {
LABEL_91:
        OUTLINED_FUNCTION_0_28();
        OUTLINED_FUNCTION_1_27();
      }

      break;
    default:
      if (a1 != 100 && a1 != 101)
      {
        sub_2179E9B10();

        v2 = sub_2179E9D40();
        MEMORY[0x21CEA9600](v2);
      }

      break;
  }
}

uint64_t sub_2179A03E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 == 1)
      {
        goto LABEL_67;
      }

      return 0;
    case 2:
      if (a6 != 2)
      {
        return 0;
      }

      goto LABEL_67;
    case 3:
      if (a6 != 3)
      {
        return 0;
      }

      goto LABEL_67;
    case 4:
      if (a6 != 4)
      {
        return 0;
      }

      goto LABEL_67;
    case 5:
      if (a6 != 5)
      {
        return 0;
      }

      goto LABEL_67;
    case 6:
      if (a6 != 6)
      {
        return 0;
      }

      goto LABEL_67;
    case 7:
      if (a6 != 7)
      {
        return 0;
      }

      goto LABEL_67;
    case 8:
      if (a6 != 8)
      {
        return 0;
      }

      goto LABEL_67;
    case 9:
      if (a6 != 9)
      {
        return 0;
      }

      goto LABEL_67;
    case 10:
      if (a6 != 10)
      {
        return 0;
      }

      goto LABEL_67;
    case 11:
      if (a6 != 11)
      {
        return 0;
      }

      goto LABEL_67;
    case 12:
      if (a6 != 12)
      {
        return 0;
      }

      goto LABEL_67;
    case 13:
      if (a6 != 13)
      {
        return 0;
      }

      goto LABEL_67;
    case 14:
      if (a6 != 14)
      {
        return 0;
      }

      goto LABEL_67;
    case 15:
      if (a6 != 15)
      {
        return 0;
      }

      goto LABEL_67;
    case 16:
      if (a6 != 16)
      {
        return 0;
      }

      goto LABEL_67;
    case 17:
      if (a6 != 17)
      {
        return 0;
      }

      goto LABEL_67;
    case 18:
      if (a6 != 18)
      {
        return 0;
      }

      goto LABEL_67;
    case 19:
      if (a6 != 19)
      {
        return 0;
      }

      goto LABEL_67;
    case 20:
      if (a6 != 20)
      {
        return 0;
      }

      goto LABEL_67;
    case 21:
      if (a6 != 21)
      {
        return 0;
      }

      goto LABEL_67;
    case 22:
      if (a6 != 22)
      {
        return 0;
      }

      goto LABEL_67;
    case 23:
      if (a6 != 23)
      {
        return 0;
      }

      goto LABEL_67;
    case 24:
      if (a6 != 24)
      {
        return 0;
      }

      goto LABEL_67;
    case 25:
      if (a6 != 25)
      {
        return 0;
      }

      goto LABEL_67;
    case 26:
      if (a6 == 26)
      {
        goto LABEL_67;
      }

      return 0;
    case 27:
      if (a6 != 27)
      {
        return 0;
      }

      goto LABEL_67;
    case 28:
      if (a6 != 28)
      {
        return 0;
      }

      goto LABEL_67;
    case 29:
      if (a1 | a2)
      {
        if (a1 ^ 1 | a2)
        {
          if (a6 != 29 || a4 != 2)
          {
            return 0;
          }
        }

        else if (a6 != 29 || a4 != 1)
        {
          return 0;
        }

        if (!a5)
        {
          return 1;
        }
      }

      else if (a6 == 29 && !(a5 | a4))
      {
        return 1;
      }

      return 0;
    default:
      if (a6)
      {
        return 0;
      }

LABEL_67:
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_2179E9D70();
  }
}

void sub_2179A06C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_2179A0730()
{
  result = qword_280B1DF08;
  if (!qword_280B1DF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1DF08);
  }

  return result;
}

uint64_t sub_2179A079C(unsigned __int8 *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t))
{
  v6 = *(a2 + 16);
  if (v6)
  {
    v8 = *a1;
    if ((*(v6 + 16) & 0x10) != 0)
    {

      sub_21799C868();
    }

    else
    {
    }

    sub_2179E9B10();

    v10 = 0x54414944454D4D49;
    if (v8 != 1)
    {
      v10 = 0x564953554C435845;
    }

    if (v8)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x4445525245464544;
    }

    if (v8)
    {
      v12 = 0xE900000000000045;
    }

    else
    {
      v12 = 0xE800000000000000;
    }

    MEMORY[0x21CEA9600](v11, v12);

    MEMORY[0x21CEA9600](0x4341534E41525420, 0xED00003B4E4F4954);
    sub_21799F244();
    inited = swift_initStackObject();
    v14 = type metadata accessor for Connection();
    inited[8] = v14;
    inited[9] = &off_2829965F0;
    inited[10] = MEMORY[0x277D84F90];
    inited[4] = 4;
    inited[5] = v6;
    inited[2] = 0x204E49474542;
    inited[3] = 0xE600000000000000;

    sub_2179A6520();
    if (!v5)
    {

      swift_setDeallocating();
      sub_2179A6B8C();
      v16 = swift_deallocClassInstance();
      v17 = a3(v16);
      a5(v17);
      v18 = swift_initStackObject();
      v18[8] = v14;
      v18[9] = &off_2829965F0;
      v18[10] = MEMORY[0x277D84F90];
      v18[4] = 4;
      v18[5] = v6;
      v18[2] = 0xD000000000000013;
      v18[3] = 0x80000002179EFE70;

      sub_2179A6520();

      swift_setDeallocating();
      sub_2179A6B8C();
      swift_deallocClassInstance();
    }

    swift_setDeallocating();
    sub_2179A6B8C();
    swift_deallocClassInstance();
  }

  else
  {
    sub_2179ABC30();
    swift_allocError();
    *v9 = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0;
    swift_willThrow();
  }
}

void *sub_2179A0BF8(__int128 *a1)
{
  sub_2179A70AC(a1, v6);
  sub_2179A06C8(0, qword_280B1DF38, sub_2179A0730, &type metadata for Versions.Entity, type metadata accessor for Create);
  v2 = swift_allocObject();
  sub_2179A0D5C(v6, (v2 + 2));
  v2[8] = 0;
  v2[9] = 0;
  v2[7] = 0;
  sub_2179A70AC(a1, v6);
  sub_2179A06C8(0, qword_280B1E1D8, sub_2179A0E88, &type metadata for Versions.Entity, type metadata accessor for Save);
  v3 = swift_allocObject();
  sub_2179A0D5C(v6, v3 + 16);
  sub_2179A06C8(0, qword_280B1E150, sub_2179A0730, &type metadata for Versions.Entity, type metadata accessor for Query);
  v4 = swift_allocObject();
  sub_2179A0D5C(a1, v4 + 16);
  return v2;
}

uint64_t sub_2179A0D5C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2179A0D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2179A0DE0()
{
  result = qword_280B1DF20;
  if (!qword_280B1DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1DF20);
  }

  return result;
}

unint64_t sub_2179A0E34()
{
  result = qword_280B1DF28;
  if (!qword_280B1DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1DF28);
  }

  return result;
}

unint64_t sub_2179A0E88()
{
  result = qword_280B1DF18;
  if (!qword_280B1DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1DF18);
  }

  return result;
}

unint64_t sub_2179A0F08()
{
  result = qword_280B1DF10;
  if (!qword_280B1DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1DF10);
  }

  return result;
}

uint64_t sub_2179A0F8C()
{
  v0 = OUTLINED_FUNCTION_2_13();
  sub_2179A105C(v0, v1, v2);
  OUTLINED_FUNCTION_10_9();
  OUTLINED_FUNCTION_1_17();
  sub_2179A7DE0();
  v4 = v3;
  OUTLINED_FUNCTION_0_16();
  sub_2179A105C(0, v5, v6);
  OUTLINED_FUNCTION_8_3();
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_7_9(v7);
  *(v8 + 24) = v9;
  *(v8 + 32) = v4;
  OUTLINED_FUNCTION_10_9();
  OUTLINED_FUNCTION_1_17();
  sub_2179A7DE0();
  v11 = v10;
  OUTLINED_FUNCTION_8_3();
  v12 = swift_allocObject();
  v13 = OUTLINED_FUNCTION_3_13(v12);
  *(v13 + 24) = v14;
  *(v13 + 32) = v11;
  return v7;
}

void sub_2179A105C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, _UNKNOWN **))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0], &protocol witness table for String);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2179A10DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2179A117C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_22_0(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_5TeaDB8DatabaseC8LocationO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void Database.__allocating_init(location:assertions:journalingMode:recoveryMode:cacheSize:vacuumMode:busyTimeout:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_4();
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_9_1();
  Database.init(location:assertions:journalingMode:recoveryMode:cacheSize:vacuumMode:busyTimeout:)(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_37();
}

uint64_t Database.table<A>(_:)()
{
  v2 = *(v0 + 16);
  if (v2)
  {
    type metadata accessor for Table();
    v7 = type metadata accessor for Connection();
    v8 = &off_2829965F0;
    *&v6 = v2;
    v1 = sub_2179A8074(&v6);
  }

  else
  {
    sub_2179ABC30();
    v3 = OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_7_4(v3, v4);
  }

  return v1;
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

uint64_t OUTLINED_FUNCTION_4_0()
{

  return type metadata accessor for KeyValueStore.Promises();
}

uint64_t OUTLINED_FUNCTION_4_3@<X0>(uint64_t a1@<X8>)
{
  v3 = a1 & 0x3FFFFFFFFFFFFFFFLL;
  v4 = *(v3 + 24);
  v6 = *(v3 + 16);

  return sub_2179C10B8(v1);
}

uint64_t OUTLINED_FUNCTION_4_4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8 * a1);

  return sub_2179E96C0();
}

uint64_t OUTLINED_FUNCTION_4_7@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(a1 + 8) + 24);

  return type metadata accessor for Statement();
}

__n128 OUTLINED_FUNCTION_4_10()
{
  v1 = v0[1].n128_u64[0];
  v2 = v0[1].n128_u64[1];
  result = v0[2];
  v4 = v0[3].n128_u64[1];
  v5 = v0[4].n128_u64[0];
  v6 = v0[3].n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_4_12(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_4_15(char a1, char a2, char a3)
{
  *(v3 + 56) = 0;
  *(v3 + 48) = 0;
  *(v3 + 64) = -1;
  *(v3 + 80) = 0;
  *(v3 + 72) = 0;
  *(v3 + 88) = -1;
  *(v3 + 40) = a1;
  *(v3 + 41) = a2;
  *(v3 + 42) = a3;

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_4_16()
{
  v2 = *(v0 + 16) + 1;

  sub_2179A7E4C();
}

uint64_t OUTLINED_FUNCTION_33()
{

  return swift_beginAccess();
}

uint64_t sub_2179A1578(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_24_0(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return v2 + 104;
}

uint64_t sub_2179A1608(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2179A1650(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2179E9840();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2179A16A4(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2179A1650(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2179A1714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_2179E92A0();
    v7 = sub_2179A17C8();
    v8 = sub_2179A1608(&qword_280B1E700, MEMORY[0x277CC95F0]);
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_2179A17C8()
{
  result = qword_280B1DC68;
  if (!qword_280B1DC68)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280B1DC68);
  }

  return result;
}

uint64_t sub_2179A1824(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2179E92A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = sub_2179A1C40(a2);
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  sub_2179A1714(0, &unk_280B1DC40, MEMORY[0x277D843B8]);
  if ((sub_2179E9C20() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v3;
  v17 = sub_2179A1C40(a2);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    result = sub_2179E9DD0();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v3;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v7 + 16))(v10, a2, v6);
    return sub_2179A1E5C(v14, v10, a1, v19);
  }
}

uint64_t sub_2179A19F4()
{
  v0 = sub_2179E9430();
  __swift_allocate_value_buffer(v0, qword_280B1DEC0);
  *__swift_project_value_buffer(v0, qword_280B1DEC0) = 500;
  v1 = *MEMORY[0x277D85178];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

unint64_t sub_2179A1A84(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_2179E92A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_2179A1608(&qword_280B1E6F8, MEMORY[0x277CC95F0]);
    v10 = sub_2179E9630();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2179A1C40(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2179E92A0();
  sub_2179A1608(&qword_280B1E700, MEMORY[0x277CC95F0]);
  v5 = sub_2179E95E0();

  return sub_2179A1A84(a1, v5);
}

uint64_t *Assertion.deinit()
{
  v1 = *v0;
  v3 = *(v0 + 16);
  sub_21799CA84(&v3);
  return v0;
}

uint64_t Assertion.__deallocating_deinit()
{
  Assertion.deinit();
  OUTLINED_FUNCTION_0_23();

  return swift_deallocClassInstance();
}

uint64_t sub_2179A1DE8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v6 = *a1;
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *a1;
  result = sub_2179A1824(a3, a2);
  *a1 = v8;
  return result;
}

uint64_t sub_2179A1E5C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2179E92A0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_2179A1F18@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x277D85168];
  v3 = sub_2179E9430();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2179A1F90@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85180];
  v3 = sub_2179E9430();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2179A201C(void (*a1)(uint64_t *))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[7];
  v7 = v1[5];
  v8 = v1[6];
  return sub_2179A204C(a1);
}

uint64_t sub_2179A204C(void (*a1)(uint64_t *))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = KeyValueStore.allKeys()();

    v4 = v3;
    a1(&v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t KeyValueStore.allKeys()()
{
  v4 = MEMORY[0x277D84F90];
  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_14();
  sub_2179E9980();
  if (v1)
  {
  }

  return v4;
}

void sub_2179A21AC(void (*a1)(void))
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = v2;
    OUTLINED_FUNCTION_14();
    sub_2179E9980();
  }

  else
  {
    a1();
  }
}

uint64_t sub_2179A22DC(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_2179A230C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_2179A2350(uint64_t a1, void (*a2)(void *), uint64_t a3, char a4, uint64_t (*a5)(uint64_t), uint64_t a6, void (*a7)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    LOBYTE(v17) = a4;

    sub_2179A079C(&v17, v13, a5, a6, a7);
  }

  else
  {
    v14 = sub_2179E9340();
    sub_21799A4E4(qword_27CB97FA8, MEMORY[0x277D6CAF0]);
    v15 = swift_allocError();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D6CAE0], v14);
    a2(v15);
  }
}

uint64_t sub_2179A25D8(void *a1)
{
  v2 = a1[2];
  v3 = a1[4];
  result = type metadata accessor for KVSEntity();
  if (v5 <= 0x3F)
  {
    v6 = a1[3];
    result = swift_checkMetadataState();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2179A2668()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_22_2(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return v2 + 216;
}

uint64_t OUTLINED_FUNCTION_1_6@<X0>(uint64_t a1@<X8>)
{
  v4 = a1 & 0x1FFFFFFFFFFFFFFFLL;
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  *(v2 - 96) = 40;
  *(v2 - 88) = 0xE100000000000000;
  *(v2 - 104) = v5;

  return sub_2179C1274(v1);
}

uint64_t OUTLINED_FUNCTION_1_8@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  result = *(v2 + 8 * a2);
  v4 = *(v2 + 8 * a1);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_9(uint64_t a1)
{
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;

  return sub_2179A70AC(v1, a1 + 32);
}

void OUTLINED_FUNCTION_1_12(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84560];

  sub_2179A4B8C(0, a2, a3, v4);
}

void OUTLINED_FUNCTION_1_13()
{

  sub_2179A7E4C();
}

uint64_t OUTLINED_FUNCTION_1_14()
{
}

void OUTLINED_FUNCTION_1_15()
{

  sub_2179A7E4C();
}

uint64_t OUTLINED_FUNCTION_1_20()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_22(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);

  return sub_2179D1E78(0, va1, va, 1, 0, 0, 1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_1_26(uint64_t a1, uint64_t a2, char a3)
{

  return sub_2179A03E4(a1, a2, a3, 0, 0, 29);
}

void OUTLINED_FUNCTION_1_29(uint64_t *a1)
{
  v2 = *a1;

  sub_2179E797C();
}

uint64_t sub_2179A2A1C(uint64_t a1)
{
  v2 = *(a1 + 80);
  result = sub_2179E9A60();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 88);
    type metadata accessor for Column.Func();
    result = sub_2179E9A60();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2179A2B54(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_2179A2BCC();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2179A2BCC()
{
  result = qword_280B1DBD8;
  if (!qword_280B1DBD8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280B1DBD8);
  }

  return result;
}

void sub_2179A2C2C()
{
  if (!qword_280B1DC28)
  {
    sub_2179A4BDC();
    v0 = sub_2179E9D50();
    if (!v1)
    {
      atomic_store(v0, &qword_280B1DC28);
    }
  }
}

uint64_t sub_2179A2C84()
{
  sub_2179A2C2C();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2179EA820;
  *(v1 + 32) = sub_2179A488C((v1 + 48));
  *(v1 + 40) = v2;
  *(v1 + 88) = sub_2179A488C((v1 + 104));
  *(v1 + 96) = v3;

  *(v0 + 16) = v1;
  return v0;
}

unint64_t sub_2179A2D18()
{
  result = qword_280B1DF30;
  if (!qword_280B1DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1DF30);
  }

  return result;
}

unint64_t sub_2179A2D6C(uint64_t a1)
{
  *(a1 + 8) = sub_2179A2D9C();
  result = sub_2179A2DF0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2179A2D9C()
{
  result = qword_280B1DBC0;
  if (!qword_280B1DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1DBC0);
  }

  return result;
}

unint64_t sub_2179A2DF0()
{
  result = qword_280B1DBC8;
  if (!qword_280B1DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1DBC8);
  }

  return result;
}

uint64_t sub_2179A2E44(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v54 = a1;
  v55 = a2;
  OUTLINED_FUNCTION_2();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v56 = v16;
  v18 = *(v17 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v58 = v19;
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v43 - v24;
  v26 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_0();
  v52 = v27;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v46 = v29;
  v47 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  v33 = &v43 - v32;
  v34 = sub_2179E98A0();
  if (!v34)
  {
    return sub_2179E97F0();
  }

  v57 = v34;
  v61 = sub_2179E9BE0();
  v48 = sub_2179E9BF0();
  sub_2179E9B90();
  result = sub_2179E9890();
  if ((v57 & 0x8000000000000000) == 0)
  {
    v43 = v12;
    v44 = a5;
    v36 = 0;
    v49 = (v58 + 16);
    v50 = v58 + 8;
    v51 = v8;
    while (!__OFADD__(v36, 1))
    {
      v58 = v36 + 1;
      v37 = sub_2179E98E0();
      (*v49)(v25);
      v37(v60, 0);
      v38 = v59;
      v54(v25, v56);
      if (v38)
      {
        v41 = OUTLINED_FUNCTION_17_7();
        v42(v41);
        (*(v46 + 8))(v33, v47);

        return (*(v43 + 32))(v45, v56, v44);
      }

      v59 = 0;
      v39 = OUTLINED_FUNCTION_17_7();
      v40(v39);
      sub_2179E9BD0();
      result = sub_2179E98B0();
      ++v36;
      if (v58 == v57)
      {
        (*(v46 + 8))(v33, v47);
        return v61;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2179A3218(uint64_t a1)
{
  *(a1 + 8) = sub_2179A3280(&qword_280B1E708);
  result = sub_2179A3280(qword_280B1E710);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2179A3280(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2179E9270();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2179A32C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2179E9E70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = *(v10 + 16);
  v15 = v10 + 16;
  v16 = v17;
  v17(&v34 - v18, v2, a1);
  sub_21799AC4C(0, qword_280B1E260);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_0_24();
    v20 = *((*(v19 + 8))(v15, v9) + 16);

LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(&v36);
    return v20;
  }

  *&v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_2179ADC44(&v43, &qword_280B1DB88, qword_280B1E260);
  v16(v14, v2, a1);
  sub_21799AC4C(0, &qword_280B1DBB8);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_0_24();
    v20 = (*(v21 + 32))(v15, v9);
    goto LABEL_5;
  }

  v34 = v5;
  v35 = v4;
  *&v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_2179ADC44(&v43, &qword_280B1DBB0, &qword_280B1DBB8);
  *(&v37 + 1) = a1;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v36);
  v16(boxed_opaque_existential_0, v2, a1);
  sub_2179E9E50();
  sub_2179E9E60();
  sub_2179E9C00();

  v23 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_2179E9C60();
    v43 = v36;
    v44 = v37;
    v45 = v38;
    if (!*(&v38 + 1))
    {
      break;
    }

    v24 = v43;
    sub_2179AD670(&v44, v42);
    if (*(&v24 + 1))
    {
      sub_2179AD43C(v42, v40);
      sub_21799AC4C(0, qword_280B1E498);
      if (swift_dynamicCast())
      {
        sub_2179A0D5C(&v36, v41);
        v36 = v24;
        sub_2179A70AC(v41, &v37);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2179ADDC4(0, v23[2] + 1, 1, v23);
          v23 = v31;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          sub_2179ADDC4(v25 > 1, v26 + 1, 1, v23);
          v23 = v32;
        }

        __swift_destroy_boxed_opaque_existential_1(v41);
        __swift_destroy_boxed_opaque_existential_1(v42);
        v23[2] = v26 + 1;
        v27 = &v23[7 * v26];
        v28 = v36;
        v29 = v37;
        v30 = v38;
        v27[10] = v39;
        *(v27 + 3) = v29;
        *(v27 + 4) = v30;
        *(v27 + 2) = v28;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v42);

        *&v38 = 0;
        v37 = 0u;
        v36 = 0u;
        sub_2179ADC44(&v36, &qword_27CB98588, qword_280B1E498);
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v42);
    }
  }

  v20 = sub_2179AAA9C(v23);

  (*(v34 + 8))(v9, v35);
  return v20;
}

uint64_t sub_2179A37DC(uint64_t a1, uint64_t a2)
{
  v50 = *(a2 - 8);
  v3 = *(v50 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v6 + 24) + 8))(v7, *(v6 + 24));
  v51 = a2;
  v49 = v5;
  v8 = sub_2179A32C4(a2);
  v9 = 0;
  v10 = *(v8 + 16);
  v52 = v8 + 32;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v9 == v10)
    {
      v57 = 0;
      v55 = 0u;
      v56 = 0u;
      v9 = v10;
      v54 = 0u;
    }

    else
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_36:
        __break(1u);
        JUMPOUT(0x2179A3CA0);
      }

      if (v9 >= *(v8 + 16))
      {
        goto LABEL_36;
      }

      sub_2179A9940(v52 + 56 * v9++, &v54);
    }

    v58 = v54;
    v59[0] = v55;
    v59[1] = v56;
    v60 = v57;
    v12 = *(&v54 + 1);
    if (!*(&v54 + 1))
    {
      break;
    }

    v13 = v58;
    sub_2179A0D5C(v59, &v54);
    sub_2179A7E4C();
    v15 = v14;
    v16 = *(v14 + 16);
    if (v16 >= *(v14 + 24) >> 1)
    {
      sub_2179A7E4C();
      v15 = v40;
    }

    *(v15 + 16) = v16 + 1;
    v17 = v15 + 16 * v16;
    *(v17 + 32) = v13;
    *(v17 + 40) = v12;
    v18 = *(&v55 + 1);
    v19 = v56;
    __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
    (*(v19 + 8))(&v53, v18, v19);
    v20 = 0xE400000000000000;
    v21 = 1415071060;
    switch(v53)
    {
      case 1:
        v20 = 0xE700000000000000;
        v21 = 0x52454745544E49;
        break;
      case 2:
        v20 = 0xE700000000000000;
        v21 = 0x4E41454C4F4F42;
        break;
      case 3:
        v20 = 0xE600000000000000;
        v21 = 0x454C42554F44;
        break;
      case 4:
        v21 = 1112493122;
        break;
      default:
        break;
    }

    v22 = *(v15 + 16);
    if (v22 >= *(v15 + 24) >> 1)
    {
      sub_2179A7E4C();
      v15 = v41;
    }

    *(v15 + 16) = v22 + 1;
    v23 = v15 + 16 * v22;
    *(v23 + 32) = v21;
    *(v23 + 40) = v20;
    v24 = *(&v55 + 1);
    v25 = v56;
    __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
    v26 = (*(v25 + 72))(v24, v25);
    v27 = *(v15 + 16);
    if (v26)
    {
      v28 = 0x4C4C554E20544F4ELL;
    }

    else
    {
      v28 = 1280070990;
    }

    if (v26)
    {
      v29 = 0xE800000000000000;
    }

    else
    {
      v29 = 0xE400000000000000;
    }

    if (v27 >= *(v15 + 24) >> 1)
    {
      sub_2179A7E4C();
      v15 = v42;
    }

    *(v15 + 16) = v27 + 1;
    v30 = v15 + 16 * v27;
    *(v30 + 32) = v28;
    *(v30 + 40) = v29;
    v31 = *(&v55 + 1);
    v32 = v56;
    __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
    if ((*(v32 + 56))(v31, v32))
    {
      v33 = *(v15 + 16);
      if (v33 >= *(v15 + 24) >> 1)
      {
        sub_2179A7E4C();
        v15 = v46;
      }

      *(v15 + 16) = v33 + 1;
      v34 = v15 + 16 * v33;
      *(v34 + 32) = 0x455551494E55;
      *(v34 + 40) = 0xE600000000000000;
    }

    v53 = v15;
    sub_2179A5088();
    sub_2179A4B34();
    v35 = sub_2179E95F0();
    v37 = v36;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = *(v11 + 16);
      sub_2179A7E4C();
      v11 = v44;
    }

    v38 = *(v11 + 16);
    if (v38 >= *(v11 + 24) >> 1)
    {
      sub_2179A7E4C();
      v11 = v45;
    }

    *(v11 + 16) = v38 + 1;
    v39 = v11 + 16 * v38;
    *(v39 + 32) = v35;
    *(v39 + 40) = v37;
    __swift_destroy_boxed_opaque_existential_1(&v54);
  }

  (*(v50 + 8))(v49, v51);
  return v11;
}

uint64_t sub_2179A3CB4(uint64_t a1, uint64_t a2)
{
  v60 = *(a2 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v6 + 24) + 8))(v7, *(v6 + 24));
  v61 = a2;
  v8 = a2;
  v59 = v5;
  v9 = v5;
  v10 = sub_2179A32C4(v8);
  v11 = 0;
  v12 = *(v10 + 16);
  v13 = v10 + 32;
  v14 = MEMORY[0x277D84F90];
  v15 = 56;
  while (v12 != v11)
  {
    v16 = *(v10 + 16);
    if (v11 >= v16)
    {
      __break(1u);
      goto LABEL_32;
    }

    sub_2179A9940(v13, &v66);
    v17 = *(&v68 + 1);
    v18 = v69;
    v9 = __swift_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
    if ((*(v18 + 40))(v17, v18))
    {
      v62 = v66;
      v63 = v67;
      v64 = v68;
      v65 = v69;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70[0] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = v70;
        sub_2179A90BC(0, v14[2] + 1, 1);
        v14 = v70[0];
      }

      v21 = v14[2];
      v20 = v14[3];
      if (v21 >= v20 >> 1)
      {
        v26 = OUTLINED_FUNCTION_10(v20);
        v9 = v70;
        sub_2179A90BC(v26, v21 + 1, 1);
        v14 = v70[0];
      }

      v14[2] = v21 + 1;
      v22 = &v14[7 * v21];
      v23 = v62;
      v24 = v63;
      v25 = v64;
      v22[10] = v65;
      *(v22 + 3) = v24;
      *(v22 + 4) = v25;
      *(v22 + 2) = v23;
    }

    else
    {
      sub_2179AE2FC(&v66);
    }

    v13 += 56;
    ++v11;
  }

  v27 = v14[2];
  if (v27)
  {
    *&v66 = MEMORY[0x277D84F90];
    v9 = &v66;
    sub_2179A920C(0, v27, 0);
    v15 = 0;
    v10 = v66;
    v28 = v14 + 5;
    while (1)
    {
      v16 = v14[2];
      if (v15 >= v16)
      {
        break;
      }

      v30 = *(v28 - 1);
      v29 = *v28;
      *&v66 = v10;
      v31 = *(v10 + 16);
      v9 = *(v10 + 24);

      if (v31 >= v9 >> 1)
      {
        v33 = v9 > 1;
        v9 = &v66;
        sub_2179A920C(v33, v31 + 1, 1);
        v10 = v66;
      }

      ++v15;
      *(v10 + 16) = v31 + 1;
      v32 = v10 + 16 * v31;
      *(v32 + 32) = v30;
      *(v32 + 40) = v29;
      v28 += 7;
      if (v27 == v15)
      {

        goto LABEL_20;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    OUTLINED_FUNCTION_10(v16);
    OUTLINED_FUNCTION_1_13();
    v35 = v54;
    v16 = *(v54 + 24);
    v36 = v16 >> 1;
    goto LABEL_22;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_20:
  if (!*(v10 + 16))
  {

    (*(v60 + 8))(v59, v61);
    return MEMORY[0x277D84F90];
  }

  sub_2179A7E4C();
  v35 = v34;
  v15 = *(v34 + 16);
  v16 = *(v34 + 24);
  v36 = v16 >> 1;
  v9 = v15 + 1;
  if (v16 >> 1 <= v15)
  {
    goto LABEL_33;
  }

LABEL_22:
  *(v35 + 16) = v9;
  v37 = v35 + 16 * v15;
  *(v37 + 32) = 0x5952414D495250;
  *(v37 + 40) = 0xE700000000000000;
  if (v36 < (v15 + 2))
  {
    OUTLINED_FUNCTION_10(v16);
    OUTLINED_FUNCTION_1_13();
    v35 = v55;
  }

  *(v35 + 16) = v15 + 2;
  v38 = v35 + 16 * v9;
  *(v38 + 32) = 5850443;
  *(v38 + 40) = 0xE300000000000000;
  *&v66 = 40;
  *(&v66 + 1) = 0xE100000000000000;
  *&v62 = v10;
  sub_2179A5088();
  sub_2179A4B34();
  v39 = sub_2179E95F0();
  v41 = v40;

  MEMORY[0x21CEA9600](v39, v41);

  MEMORY[0x21CEA9600](41, 0xE100000000000000);
  v42 = v66;
  v44 = *(v35 + 16);
  v43 = *(v35 + 24);
  if (v44 >= v43 >> 1)
  {
    OUTLINED_FUNCTION_10(v43);
    OUTLINED_FUNCTION_1_13();
    v35 = v56;
  }

  *(v35 + 16) = v44 + 1;
  *(v35 + 16 * v44 + 32) = v42;
  *&v66 = v35;
  v45 = sub_2179E95F0();
  v47 = v46;

  sub_2179A7E4C();
  v49 = v48;
  v51 = *(v48 + 16);
  v50 = *(v48 + 24);
  if (v51 >= v50 >> 1)
  {
    OUTLINED_FUNCTION_10(v50);
    OUTLINED_FUNCTION_1_13();
    v49 = v57;
  }

  (*(v60 + 8))(v59, v61);
  *(v49 + 16) = v51 + 1;
  v52 = v49 + 16 * v51;
  *(v52 + 32) = v45;
  *(v52 + 40) = v47;
  return v49;
}

uint64_t sub_2179A41A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v18 = *(a2 - 8);
  v5 = *(v18 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexCommand = type metadata accessor for CreateIndexCommand();
  v30 = sub_2179E9510();
  v21 = a3;
  (*(*(a3 + 24) + 8))(a2, *(a3 + 24));
  v17 = v7;
  result = sub_2179A32C4(a2);
  v9 = result;
  v10 = 0;
  v11 = *(result + 16);
  v12 = result + 32;
  while (1)
  {
    if (v10 == v11)
    {
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      v10 = v11;
      v23 = 0u;
      goto LABEL_7;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *(v9 + 16))
    {
      goto LABEL_14;
    }

    sub_2179A9940(v12 + 56 * v10++, &v23);
LABEL_7:
    v27 = v23;
    v28[0] = v24;
    v28[1] = v25;
    v29 = v26;
    v13 = *(&v23 + 1);
    if (!*(&v23 + 1))
    {
      (*(v18 + 8))(v17, a2);

      return v30;
    }

    v14 = v27;
    sub_2179A0D5C(v28, &v23);
    v16 = *(&v24 + 1);
    v15 = v25;
    __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
    if ((*(v15 + 48))(v16, v15))
    {
      sub_2179A70AC(&v23, v22);
      v22[0] = sub_2179AD040(v14, v13, v22, v20 & 1, a2, v21);
      sub_2179E9840();
      sub_2179E9810();
    }

    else
    {
    }

    result = __swift_destroy_boxed_opaque_existential_1(&v23);
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t String.queryValue.getter()
{
  sub_2179A4934();
  v0 = sub_2179E9A80();
  MEMORY[0x21CEA9600](v0);

  MEMORY[0x21CEA9600](39, 0xE100000000000000);
  return 39;
}

void sub_2179A44CC(uint64_t a1, int a2)
{
  v46 = a2;
  v4 = *(*v2 + 80);
  v44 = *(v4 - 8);
  v5 = *(v44 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = v42 - v6;
  v45 = v2;
  v9 = *(v8 + 88);
  (*(*(v9 + 24) + 8))(v4, *(v9 + 24));
  type metadata accessor for Statement();
  v49 = 0;
  v10 = a1;
  sub_2179AD8BC(0, a1, v4, v9);
  v11 = sub_2179AE358();
  v13 = v12;

  sub_2179A70AC(v2 + 16, &v47);
  v42[1] = sub_2179AC76C(&v49, v11, v13, &v47);
  v43 = v7;
  v14 = sub_2179A32C4(v4);
  v15 = *(v14 + 16);
  if (v15)
  {
    v42[0] = v4;
    v49 = MEMORY[0x277D84F90];
    sub_2179A9394(0, v15, 0);
    v16 = 0;
    v17 = v49;
    v18 = v14 + 32;
    while (v16 < *(v14 + 16))
    {
      sub_2179A9940(v18, &v47);
      v20 = sub_2179AE3F4(v47, *(&v47 + 1), v48, v45, v10 & 1, v46 & 1);
      if (v20)
      {
        v21 = v19;
        v22 = swift_allocObject();
        *(v22 + 16) = v20;
        *(v22 + 24) = v21;
        v20 = sub_2179D006C;
      }

      else
      {
        v22 = 0;
      }

      v23 = OUTLINED_FUNCTION_0_29();
      sub_2179A87AC(v23, v24);
      v49 = v17;
      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        v28 = OUTLINED_FUNCTION_10(v25);
        sub_2179A9394(v28, v26 + 1, 1);
        v17 = v49;
      }

      ++v16;
      *(v17 + 16) = v26 + 1;
      v27 = v17 + 16 * v26;
      *(v27 + 32) = v20;
      *(v27 + 40) = v22;
      v18 += 56;
      if (v15 == v16)
      {

        v4 = v42[0];
        goto LABEL_12;
      }
    }
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
LABEL_12:
    v29 = 0;
    v30 = *(v17 + 16);
    v31 = MEMORY[0x277D84F90];
LABEL_13:
    v32 = (v17 + 32 + 16 * v29);
    while (1)
    {
      if (v30 == v29)
      {

        sub_2179A9E30();

        (*(v44 + 8))(v43, v4);
        return;
      }

      if (v29 >= *(v17 + 16))
      {
        break;
      }

      ++v29;
      v33 = v32 + 2;
      v34 = *v32;
      v32 += 2;
      if (v34)
      {
        v35 = *(v33 - 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = *(v31 + 16);
          OUTLINED_FUNCTION_4_20();
          sub_2179A94A4();
          v31 = v40;
        }

        v37 = *(v31 + 16);
        v36 = *(v31 + 24);
        if (v37 >= v36 >> 1)
        {
          OUTLINED_FUNCTION_10(v36);
          sub_2179A94A4();
          v31 = v41;
        }

        *(v31 + 16) = v37 + 1;
        v38 = v31 + 16 * v37;
        *(v38 + 32) = v34;
        *(v38 + 40) = v35;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2179A488C(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  swift_beginAccess();
  v5 = v1[4];
  sub_2179A4AE0(0, qword_280B1DFC8, MEMORY[0x277D837D0], &protocol witness table for String, type metadata accessor for Column);
  a1[3] = v6;
  a1[4] = &off_282995E18;
  *a1 = v5;

  return v3;
}

unint64_t sub_2179A4934()
{
  result = qword_280B1DD40;
  if (!qword_280B1DD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1DD40);
  }

  return result;
}

uint64_t sub_2179A4988(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_2179A56B4(0, &unk_280B1DC00, sub_2179A50D8, MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_2179CF30C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_2179A56B4(0, &qword_280B1DBD0, sub_2179A2BCC, MEMORY[0x277D83D88]);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_2179A4AE0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2179A4B34()
{
  result = qword_280B1DCF8;
  if (!qword_280B1DCF8)
  {
    sub_2179A5088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1DCF8);
  }

  return result;
}

void sub_2179A4B8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2179A4BDC()
{
  if (!qword_280B1DD20)
  {
    sub_21799AC4C(255, qword_280B1E498);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280B1DD20);
    }
  }
}

uint64_t sub_2179A4C58()
{
  v0 = sub_2179A0F8C();
  v2 = sub_2179A9878(v0, v1);
  v3 = 0;
  v4 = *(v2 + 16);
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v3 == v4)
    {
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
      v3 = v4;
      v43 = 0u;
    }

    else
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_36:
        __break(1u);
        JUMPOUT(0x2179A5074);
      }

      if (v3 >= *(v2 + 16))
      {
        goto LABEL_36;
      }

      sub_2179A9940(v2 + 32 + 56 * v3++, &v43);
    }

    v47 = v43;
    v48[0] = v44;
    v48[1] = v45;
    v49 = v46;
    v6 = *(&v43 + 1);
    if (!*(&v43 + 1))
    {
      break;
    }

    v7 = v47;
    sub_2179A0D5C(v48, &v43);
    sub_2179A7E4C();
    v9 = v8;
    v10 = *(v8 + 16);
    if (v10 >= *(v8 + 24) >> 1)
    {
      sub_2179A7E4C();
      v9 = v34;
    }

    *(v9 + 16) = v10 + 1;
    v11 = v9 + 16 * v10;
    *(v11 + 32) = v7;
    *(v11 + 40) = v6;
    v12 = *(&v44 + 1);
    v13 = v45;
    __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
    (*(v13 + 8))(&v42, v12, v13);
    v14 = 0xE400000000000000;
    v15 = 1415071060;
    switch(v42)
    {
      case 1:
        v14 = 0xE700000000000000;
        v15 = 0x52454745544E49;
        break;
      case 2:
        v14 = 0xE700000000000000;
        v15 = 0x4E41454C4F4F42;
        break;
      case 3:
        v14 = 0xE600000000000000;
        v15 = 0x454C42554F44;
        break;
      case 4:
        v15 = 1112493122;
        break;
      default:
        break;
    }

    v16 = *(v9 + 16);
    if (v16 >= *(v9 + 24) >> 1)
    {
      sub_2179A7E4C();
      v9 = v35;
    }

    *(v9 + 16) = v16 + 1;
    v17 = v9 + 16 * v16;
    *(v17 + 32) = v15;
    *(v17 + 40) = v14;
    v18 = *(&v44 + 1);
    v19 = v45;
    __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
    v20 = (*(v19 + 72))(v18, v19);
    v21 = *(v9 + 16);
    if (v20)
    {
      v22 = 0x4C4C554E20544F4ELL;
    }

    else
    {
      v22 = 1280070990;
    }

    if (v20)
    {
      v23 = 0xE800000000000000;
    }

    else
    {
      v23 = 0xE400000000000000;
    }

    if (v21 >= *(v9 + 24) >> 1)
    {
      sub_2179A7E4C();
      v9 = v36;
    }

    *(v9 + 16) = v21 + 1;
    v24 = v9 + 16 * v21;
    *(v24 + 32) = v22;
    *(v24 + 40) = v23;
    v25 = *(&v44 + 1);
    v26 = v45;
    __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
    if ((*(v26 + 56))(v25, v26))
    {
      v27 = *(v9 + 16);
      if (v27 >= *(v9 + 24) >> 1)
      {
        sub_2179A7E4C();
        v9 = v40;
      }

      *(v9 + 16) = v27 + 1;
      v28 = v9 + 16 * v27;
      *(v28 + 32) = 0x455551494E55;
      *(v28 + 40) = 0xE600000000000000;
    }

    v42 = v9;
    sub_2179A5088();
    sub_2179A4B34();
    v29 = sub_2179E95F0();
    v31 = v30;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = *(v5 + 16);
      sub_2179A7E4C();
      v5 = v38;
    }

    v32 = *(v5 + 16);
    if (v32 >= *(v5 + 24) >> 1)
    {
      sub_2179A7E4C();
      v5 = v39;
    }

    *(v5 + 16) = v32 + 1;
    v33 = v5 + 16 * v32;
    *(v33 + 32) = v29;
    *(v33 + 40) = v31;
    __swift_destroy_boxed_opaque_existential_1(&v43);
  }

  return v5;
}

void sub_2179A5088()
{
  if (!qword_280B1DD00)
  {
    v0 = sub_2179E9840();
    if (!v1)
    {
      atomic_store(v0, &qword_280B1DD00);
    }
  }
}

void sub_2179A510C(char a1, char a2)
{
  v3 = v2;
  v5 = sub_2179A0F8C();
  v7 = v6;
  v36 = a1;
  sub_2179A8D00(0, a1);
  sub_2179A5088();
  sub_2179A4B34();
  *&v38 = sub_2179E95F0();
  *(&v38 + 1) = v8;

  MEMORY[0x21CEA9600](59, 0xE100000000000000);

  v9 = v38;
  sub_2179A70AC(v2 + 16, &v38);
  sub_2179A4AE0(0, qword_280B1DD58, &type metadata for Versions.Entity, &off_282996810, type metadata accessor for Statement);
  swift_allocObject();
  sub_2179A935C(0, v9, *(&v9 + 1), &v38);
  v10 = sub_2179A9878(v5, v7);
  v11 = *(v10 + 16);
  if (v11)
  {
    v40 = MEMORY[0x277D84F90];
    sub_2179A9394(0, v11, 0);
    v12 = 0;
    v13 = v40;
    v14 = v10 + 32;
    while (v12 < *(v10 + 16))
    {
      sub_2179A9940(v14, &v38);
      __swift_project_boxed_opaque_existential_1(v39, v39[3]);
      swift_getDynamicType();
      v15 = (*(v39[4] + 104))(v3 + 16, v36 & 1, a2 & 1);
      if (v15)
      {
        v17 = v15;
        v18 = v16;
        v19 = swift_allocObject();
        *(v19 + 16) = v17;
        *(v19 + 24) = v18;
        v20 = sub_2179E769C;
      }

      else
      {
        v20 = 0;
        v19 = 0;
      }

      sub_2179A87AC(&v38, sub_2179A4BDC);
      v40 = v13;
      v22 = *(v13 + 16);
      v21 = *(v13 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_2179A9394(v21 > 1, v22 + 1, 1);
        v13 = v40;
      }

      ++v12;
      *(v13 + 16) = v22 + 1;
      v23 = v13 + 16 * v22;
      *(v23 + 32) = v20;
      *(v23 + 40) = v19;
      v14 += 56;
      if (v11 == v12)
      {

        goto LABEL_12;
      }
    }
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
LABEL_12:
    v24 = 0;
    v25 = *(v13 + 16);
    v26 = MEMORY[0x277D84F90];
LABEL_13:
    v27 = (v13 + 32 + 16 * v24);
    while (1)
    {
      if (v25 == v24)
      {

        sub_2179A9E30();

        return;
      }

      if (v24 >= *(v13 + 16))
      {
        break;
      }

      ++v24;
      v28 = v27 + 2;
      v29 = *v27;
      v27 += 2;
      if (v29)
      {
        v30 = *(v28 - 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = *(v26 + 16);
          sub_2179A94A4();
          v26 = v34;
        }

        v31 = *(v26 + 16);
        if (v31 >= *(v26 + 24) >> 1)
        {
          sub_2179A94A4();
          v26 = v35;
        }

        *(v26 + 16) = v31 + 1;
        v32 = v26 + 16 * v31;
        *(v32 + 32) = v29;
        *(v32 + 40) = v30;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2179A54D4(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sqlite3_step(*(v3 + 24));
  sub_21799FD18(v7, *(v3 + 16));
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (sub_2179A03E4(v8, v10, v12, a1, a2, a3))
  {
    return sub_21799C320(v9, v11, v13);
  }

  if (v13 != 29 || __PAIR128__(v11, v9) >= 3)
  {
    if (qword_280B1DB60 != -1)
    {
      OUTLINED_FUNCTION_0_27();
    }

    sub_2179E9920();
    OUTLINED_FUNCTION_11_11();
    v15 = OUTLINED_FUNCTION_10_14();
    *(v15 + 16) = xmmword_2179EA820;
    sub_2179E9C10();
    v16 = MEMORY[0x277D837D0];
    *(v15 + 56) = MEMORY[0x277D837D0];
    v17 = sub_21799C634();
    *(v15 + 64) = v17;
    *(v15 + 32) = 0;
    *(v15 + 40) = 0xE000000000000000;
    MEMORY[0x21CEA9600](*(v3 + 32), *(v3 + 40));
    *(v15 + 96) = v16;
    *(v15 + 104) = v17;
    *(v15 + 72) = 0x203A70657473;
    *(v15 + 80) = 0xE600000000000000;
    sub_2179E93F0();
  }

  sub_2179A2D18();
  swift_allocError();
  *v18 = v9;
  *(v18 + 8) = v11;
  *(v18 + 16) = v13;
  return swift_willThrow();
}

void sub_2179A56B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_2179A5718()
{
  result = qword_280B1DBE8;
  if (!qword_280B1DBE8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280B1DBE8);
  }

  return result;
}

uint64_t sub_2179A5760()
{
  v2 = v1;
  v3 = v0;
  OUTLINED_FUNCTION_11_12();
  v4 = v0[10];
  v5 = *(v4 + 16);

  v6 = 0;
  v7 = (v4 + 40);
  while (v5 != v6)
  {
    if (v6 >= *(v4 + 16))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v9 = *(v7 - 1);
    v8 = *v7;

    v1 = v2;
    v9(v10);
    if (v2)
    {

      return v4;
    }

    ++v6;
    v7 += 2;
  }

  v11 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
  v12 = OUTLINED_FUNCTION_10_15();
  v13(v12);
  v14 = v3[4];
  if (v14 != 4)
  {
    if (v14 == 3)
    {
      if ((v66 & 8) == 0)
      {
        goto LABEL_13;
      }
    }

    else if ((v66 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    v62[0] = v66;
    sub_21799C868();
  }

LABEL_13:
  v4 = v3[8];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v4);
  v15 = v3[2];
  v16 = v3[3];
  OUTLINED_FUNCTION_15_6();
  v17();
  v2 = v1;
  if (v1)
  {

    return v4;
  }

  v18 = v3[4];
  switch(v18)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 4uLL:
      OUTLINED_FUNCTION_5_16(2);
      sub_2179A6F48();

      goto LABEL_37;
    case 3uLL:
      v20 = MEMORY[0x277D84F90];
      while (2)
      {
        OUTLINED_FUNCTION_5_16(1);
        v2 = 0;
        v54 = v20;
        v21 = sub_2179A0F8C();
        v52 = v22;
        v53 = v21;
        v23 = sub_2179A9878(v21, v22);
        v68 = *(v23 + 16);
        v55 = v23 + 32;
        v56 = v23;
LABEL_20:
        *&v25 = OUTLINED_FUNCTION_14_7();
        if (v29)
        {
          goto LABEL_23;
        }

        if (v24 >= *(v56 + 16))
        {
          __break(1u);
          goto LABEL_46;
        }

        v62[0] = v24;
        sub_2179A9940(v55 + 56 * v24, &v62[1]);
        v28 = *v62;
        v25 = v63;
        v26 = v64;
        v27 = v65;
LABEL_23:
        v66 = v28;
        v67[0] = v25;
        v67[1] = v26;
        v67[2] = v27;
        if (!v25)
        {

          v20 = v54;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = *(v54 + 16);
            OUTLINED_FUNCTION_4_20();
            sub_2179AA240();
            v20 = v41;
          }

          v38 = *(v20 + 16);
          v37 = *(v20 + 24);
          if (v38 >= v37 >> 1)
          {
            OUTLINED_FUNCTION_1_28(v37);
            sub_2179AA240();
            v20 = v42;
          }

          *(v20 + 16) = v38 + 1;
          v39 = v20 + 16 * v38;
          *(v39 + 32) = v53;
          *(v39 + 40) = v52;
          continue;
        }

        break;
      }

      v57 = v28;
      sub_2179A0D5C((v67 + 8), &v63);

      v30 = *(&v64 + 1);
      v31 = v65;
      __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
      v33 = *(&v64 + 1);
      v32 = v65;
      __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
      (*(v32 + 8))(&v58, v33, v32);
      if (v57 < 0xFFFFFFFF80000000)
      {
        goto LABEL_41;
      }

      if (v57 <= 0x7FFFFFFF)
      {
        v34 = *(&v64 + 1);
        v35 = v65;
        v2 = v62;
        __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
        v36 = (*(v35 + 64))(v34, v35);
        sub_2179AA0CC(v57, &v58, v36 & 1, &v60);
        v58 = v60;
        v59 = v61;
        (*(v31 + 80))(&v58, v3 + 5, v30, v31);
        sub_2179AA22C(v58, *(&v58 + 1), v59);
        __swift_destroy_boxed_opaque_existential_1(&v63);
        goto LABEL_20;
      }

      goto LABEL_42;
    default:
      v43 = *(v18 + 16);

      v44 = 0;
      v45 = v18 + 48;
      break;
  }

  while (v43 != v44)
  {
    if (v44 >= *(v18 + 16))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      JUMPOUT(0x2179A5DD8);
    }

    OUTLINED_FUNCTION_9_12();
    if (v29)
    {
      goto LABEL_48;
    }

    v46 = OUTLINED_FUNCTION_2_18();
    sub_2179AC430(v46, v47, v48);
    sub_2179B1C1C(&v66, (v44 + 1));
    v49 = OUTLINED_FUNCTION_2_18();
    sub_2179AC53C(v49, v50, v51);
    v45 += 24;
    ++v44;
  }

  sub_2179A74FC(v18);
  sub_2179A54D4(2, 0, 29);
LABEL_43:
  sub_2179A6F48();
  if (v2)
  {
  }

  else
  {
LABEL_46:

LABEL_37:
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2179A5DEC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

void Database.write(_:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_38();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = sub_2179E9460();
  v31 = OUTLINED_FUNCTION_27(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  v37 = &v45 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *v29;
  v39 = *(v21 + 32);
  v46 = v21;
  v47 = v38;
  v48 = v27;
  v49 = v25;
  if (v39)
  {
    v40 = MEMORY[0x277D85198];
    sub_21799A52C(0, &qword_280B1D6C0, MEMORY[0x277D85198], MEMORY[0x277D84560]);
    v41 = *(v33 + 72);
    v42 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_2179EA830;
    v44 = v39;
    sub_2179E9450();
    a10 = v43;
    sub_21799A4E4(&qword_280B1DD50, MEMORY[0x277D85198]);
    sub_21799A52C(0, &qword_280B1DD18, v40, MEMORY[0x277D83940]);
    sub_21799A590(&qword_280B1DD10, &qword_280B1DD18, v40);
    sub_2179E9AA0();
    sub_2179E9970();

    (*(v33 + 8))(v37, v20);
  }

  else
  {
    LOBYTE(a10) = v38;
    sub_2179A6130(&a10, v21, v27);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_2179A6130(unsigned __int8 *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = *a1;
    if ((*(v4 + 16) & 0x10) != 0)
    {

      sub_21799C868();
    }

    else
    {
    }

    sub_2179E9B10();

    v8 = 0x54414944454D4D49;
    if (v5 != 1)
    {
      v8 = 0x564953554C435845;
    }

    if (v5)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x4445525245464544;
    }

    if (v5)
    {
      v10 = 0xE900000000000045;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    MEMORY[0x21CEA9600](v9, v10);

    MEMORY[0x21CEA9600](0x4341534E41525420, 0xED00003B4E4F4954);
    sub_21799F244();
    inited = swift_initStackObject();
    v12 = type metadata accessor for Connection();
    inited[8] = v12;
    inited[9] = &off_2829965F0;
    inited[10] = MEMORY[0x277D84F90];
    inited[4] = 4;
    inited[5] = v4;
    inited[2] = 0x204E49474542;
    inited[3] = 0xE600000000000000;

    sub_2179A6520();
    if (v3)
    {
    }

    else
    {

      swift_setDeallocating();
      sub_2179A6B8C();
      v13 = swift_deallocClassInstance();
      a3(v13);
      v14 = swift_initStackObject();
      v14[8] = v12;
      v14[9] = &off_2829965F0;
      v14[10] = MEMORY[0x277D84F90];
      v14[4] = 4;
      v14[5] = v4;
      v14[2] = 0xD000000000000013;
      v14[3] = 0x80000002179EFE70;

      sub_2179A6520();
    }

    swift_setDeallocating();
    sub_2179A6B8C();
    return swift_deallocClassInstance();
  }

  else
  {
    sub_2179ABC30();
    swift_allocError();
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_2179A6520()
{
  v2 = v1;
  OUTLINED_FUNCTION_11_12();
  v66 = v0;
  v3 = v0[10];
  v4 = *(v3 + 16);

  v5 = 0;
  v6 = (v3 + 40);
  while (v4 != v5)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v8 = *(v6 - 1);
    v7 = *v6;

    v1 = v2;
    v8(v9);
    if (v2)
    {
    }

    ++v5;
    v6 += 2;
  }

  v10 = v66[9];
  __swift_project_boxed_opaque_existential_1(v66 + 5, v66[8]);
  v11 = OUTLINED_FUNCTION_10_15();
  v12(v11);
  v13 = v66[4];
  if (v13 == 3)
  {
    if ((v64 & 8) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v13 == 4 || (v64 & 0x10) == 0)
  {
    goto LABEL_12;
  }

  v60[0] = v64;
  sub_21799C868();
LABEL_12:
  v15 = v66[9];
  __swift_project_boxed_opaque_existential_1(v66 + 5, v66[8]);
  v16 = v66[2];
  v17 = v66[3];
  OUTLINED_FUNCTION_15_6();
  v18();
  v2 = v1;
  if (v1)
  {
  }

  v19 = v66[4];
  switch(v19)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 4uLL:
      OUTLINED_FUNCTION_5_16(2);
      sub_2179A6F48();
      goto LABEL_36;
    case 3uLL:
      v51 = MEMORY[0x277D84F90];
      while (2)
      {
        OUTLINED_FUNCTION_5_16(1);
        v20 = 0;
        v21 = sub_2179E56FC();
        v54 = *(v21 + 16);
        v52 = v21 + 32;
        v53 = v21;
LABEL_18:
        *&v23 = OUTLINED_FUNCTION_14_7();
        if (v27)
        {
          goto LABEL_21;
        }

        if (v22 >= *(v53 + 16))
        {
          __break(1u);
          goto LABEL_36;
        }

        v60[0] = v22;
        sub_2179A9940(v52 + 56 * v22, &v60[1]);
        v26 = *v60;
        v23 = v61;
        v24 = v62;
        v25 = v63;
LABEL_21:
        v64 = v26;
        v65[0] = v23;
        v65[1] = v24;
        v65[2] = v25;
        if (!v23)
        {

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v35 = v51;
          }

          else
          {
            v39 = *(v51 + 16);
            OUTLINED_FUNCTION_4_20();
            sub_2179CF1E8();
            v35 = v40;
          }

          v37 = *(v35 + 16);
          v36 = *(v35 + 24);
          v38 = v37 + 1;
          if (v37 >= v36 >> 1)
          {
            OUTLINED_FUNCTION_1_28(v36);
            sub_2179CF1E8();
            v35 = v41;
          }

          v51 = v35;
          *(v35 + 16) = v38;
          continue;
        }

        break;
      }

      v28 = v20;
      v55 = v26;
      sub_2179A0D5C((v65 + 8), &v61);

      v29 = *(&v62 + 1);
      v2 = v63;
      __swift_project_boxed_opaque_existential_1(&v61, *(&v62 + 1));
      v31 = *(&v62 + 1);
      v30 = v63;
      __swift_project_boxed_opaque_existential_1(&v61, *(&v62 + 1));
      (*(v30 + 8))(&v56, v31, v30);
      if (v55 < 0xFFFFFFFF80000000)
      {
        goto LABEL_40;
      }

      if (v55 <= 0x7FFFFFFF)
      {
        v32 = *(&v62 + 1);
        v33 = v63;
        __swift_project_boxed_opaque_existential_1(&v61, *(&v62 + 1));
        v34 = (*(v33 + 64))(v32, v33);
        sub_2179AA0CC(v55, &v56, v34 & 1, &v58);
        v56 = v58;
        v57 = v59;
        (v2)[10](&v56, v66 + 5, v29, v2);
        sub_2179AA22C(v56, *(&v56 + 1), v57);
        __swift_destroy_boxed_opaque_existential_1(&v61);
        v20 = v28;
        goto LABEL_18;
      }

      goto LABEL_41;
    default:
      v42 = *(v19 + 16);

      v43 = 0;
      v44 = v19 + 48;
      break;
  }

  while (v42 != v43)
  {
    if (v43 >= *(v19 + 16))
    {
      __break(1u);
LABEL_47:
      __break(1u);
      JUMPOUT(0x2179A6B78);
    }

    OUTLINED_FUNCTION_9_12();
    if (v27)
    {
      goto LABEL_47;
    }

    v45 = OUTLINED_FUNCTION_2_18();
    sub_2179AC430(v45, v46, v47);
    sub_2179B1C1C(&v64, (v43 + 1));
    v48 = OUTLINED_FUNCTION_2_18();
    sub_2179AC53C(v48, v49, v50);
    v44 += 24;
    ++v43;
  }

  sub_2179A74FC(v19);
  sub_2179A54D4(2, 0, 29);
LABEL_42:
  sub_2179A6F48();
  if (v2)
  {
  }

  else
  {
LABEL_36:
  }

  return MEMORY[0x277D84F90];
}

void *sub_2179A6B8C()
{
  v1 = v0[3];

  sub_2179A74FC(v0[4]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  v2 = v0[10];

  return v0;
}

void *sub_2179A6BC4()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0_7();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_0_7();
  v5 = *(*(v4 + 88) + 8);
  type metadata accessor for Create();
  sub_2179A70AC((v0 + 2), v11);
  sub_2179A70AC((v0 + 2), v10);
  v6 = sub_2179A0BF8(v10);
  return sub_2179A7790(v11, v6, v7, v8);
}

void *sub_2179A6CA4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2179A7BC0(1, 1);
  if (!v6)
  {
    v11 = (*(a6 + 32))(a5, a6);
    v28 = MEMORY[0x277D837D0];
    v29 = &protocol witness table for String;
    *&v27 = v11;
    *(&v27 + 1) = v12;
    v13 = swift_allocObject();
    *(v13 + 16) = 25705;
    *(v13 + 24) = 0xE200000000000000;
    sub_2179A0D5C(&v27, v13 + 32);
    a3 = sub_2179A95E0(v13, 0, 0, 255, v14, v15, v16);
    v18 = v17;

    if (a3)
    {
      swift_beginAccess();
      v20 = *(v18 + 32);
      swift_beginAccess();
      v21 = *(v20 + 32);
      v26 = *(v20 + 24);
      v30 = *(a6 + 40);
      sub_2179AA30C(a3);

      v22 = v30(a5, a6);
      if (v21)
      {
        if (v26 == v22 && v21 == v23)
        {

LABEL_15:

          return a3;
        }

        v25 = sub_2179E9D70();

        if (v25)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }

      type metadata accessor for Drop();
      sub_2179A70AC(a4, &v27);
      sub_2179A8074(&v27);
      sub_2179E4E08(1);
    }
  }

  return a3;
}

uint64_t sub_2179A6F08()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2179A6F48()
{
  v1 = sqlite3_finalize(*(v0 + 24));
  sub_21799FD18(v1, *(v0 + 16));
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (sub_2179A03E4(v2, v4, v6, 0, 0, 29))
  {
    return sub_21799C320(v3, v5, v7);
  }

  sub_2179A2D18();
  swift_allocError();
  *v9 = v3;
  *(v9 + 8) = v5;
  *(v9 + 16) = v7;
  return swift_willThrow();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2179A70AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2179A7198(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v6 = *(v2 + 24);
  result = sub_2179A7274(v6, a1, a2, v10);
  if (v3)
  {
    goto LABEL_4;
  }

  v8 = v10[0];
  if (v10[0])
  {
    type metadata accessor for PreparedStatement();
    swift_allocObject();
    v3 = sub_2179A7470(v8, v6, a1, a2);

LABEL_4:
    v9 = *MEMORY[0x277D85DE8];
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2179A7274(sqlite3 *a1, uint64_t a2, uint64_t a3, sqlite3_stmt **a4)
{
  v6 = sub_2179E9670();
  v7 = sqlite3_prepare_v2(a1, (v6 + 32), -1, a4, 0);

  sub_21799FD18(v7, a1);
  if (OUTLINED_FUNCTION_3_19(v8, v9, v10))
  {
    return sub_21799C320(v6, a1, v7);
  }

  if (v7 != 29 || __PAIR128__(a1, v6) >= 3)
  {
    if (qword_280B1DB60 != -1)
    {
      OUTLINED_FUNCTION_0_27();
    }

    sub_2179E9920();
    sub_21799ABE4();
    v12 = swift_allocObject();
    OUTLINED_FUNCTION_4_19(v12, xmmword_2179EA820);
    sub_2179E9C10();
    v12[3].n128_u64[1] = MEMORY[0x277D837D0];
    v13 = sub_21799C634();
    v12[4].n128_u64[0] = v13;
    v12[2].n128_u64[0] = v18;
    v12[2].n128_u64[1] = v19;
    OUTLINED_FUNCTION_6_15();
    v12[6].n128_u64[0] = MEMORY[0x277D837D0];
    v12[6].n128_u64[1] = v13;
    v12[4].n128_u64[1] = v16;
    v12[5].n128_u64[0] = v17;
    OUTLINED_FUNCTION_5_15();
  }

  sub_2179A2D18();
  v14 = swift_allocError();
  return OUTLINED_FUNCTION_7_14(v14, v15);
}

void *sub_2179A7470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a1;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t PreparedStatement.__deallocating_deinit()
{
  v1 = *(v0 + 40);

  return swift_deallocClassInstance();
}

unint64_t sub_2179A74FC(unint64_t result)
{
  if (result >= 5)
  {
  }

  return result;
}

uint64_t sub_2179A7528(uint64_t a1, char a2, char a3)
{
  sub_2179A510C(a2, a3);
  sub_2179A5760();

  if (!v3)
  {

    v6 = sub_2179A880C(a2 & 1);
    v7 = sub_2179A95BC(v6);
    v8 = 0;
    v9 = v6 & 0xC000000000000001;
    while (1)
    {
      if (v7 == v8)
      {
      }

      sub_2179E75B4(v8, v9 == 0, v6);
      if (v9)
      {
        result = MEMORY[0x21CEA9A40](v8, v6);
      }

      else
      {
        v10 = *(v6 + 8 * v8 + 32);
      }

      if (__OFADD__(v8, 1))
      {
        break;
      }

      sub_2179A5760();

      ++v8;
    }

    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_4()
{

  return sub_2179E9D70();
}

uint64_t OUTLINED_FUNCTION_10_5()
{
}

uint64_t OUTLINED_FUNCTION_10_8(uint64_t a1, uint64_t a2)
{
  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  return v2 + 328;
}

uint64_t OUTLINED_FUNCTION_10_9()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_10_12()
{

  return type metadata accessor for Statement();
}

uint64_t OUTLINED_FUNCTION_10_13()
{
}

uint64_t OUTLINED_FUNCTION_10_14()
{

  return swift_allocObject();
}

void *sub_2179A7790(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_2179A0D5C(a1, (v8 + 2));
  v8[7] = a2;
  v8[8] = a3;
  v8[9] = a4;
  return v8;
}

uint64_t sub_2179A77F8(uint64_t a1, char a2)
{
  v3 = v2[7];
  if (!v3 || (a2 & 1) == 0)
  {
    return sub_2179AA34C(v2, a1 & 1, a2 & 1);
  }

  v5 = v2[8];
  v4 = v2[9];
  v6 = *(*v2 + 80);
  v10[2] = v2;
  v11 = MEMORY[0x28223BE20](a1) & 1;
  v12 = 1;
  v8 = *(v7 + 88);

  sub_2179A793C(v6, (v2 + 2), sub_2179AD898, v10, v3, v5, v4, v6, v8);
}

void *sub_2179A793C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  result = sub_2179A6CA4(a5, a6, a7, a2, a8, a9);
  if (!v9)
  {
    v14 = result;
    v15 = v13;
    a3();
    if (v14)
    {
      swift_beginAccess();
      v16 = *(v15 + 32);
      sub_2179AA30C(v14);

      swift_beginAccess();
      v17 = *(v16 + 32);
      v28 = *(v16 + 24);
    }

    else
    {
      v28 = 0;
      v17 = 0;
    }

    v27 = *(a9 + 40);
    v18 = v27(a8, a9);
    if (!v17)
    {

LABEL_16:
      v21 = (*(a9 + 32))(a8, a9);
      v30 = v22;
      v23 = v27(a8, a9);
      v25 = sub_2179AC0B8(v21, v30, v23, v24);
      sub_2179AFCA4(v25, v26);
      sub_2179AE6E4(v14);
    }

    if (v28 == v18 && v17 == v19)
    {
    }

    else
    {
      v29 = sub_2179E9D70();

      if ((v29 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    return sub_2179AE6E4(v14);
  }

  return result;
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

uint64_t sub_2179A7BC0(char a1, char a2)
{
  v5 = v2[7];
  if (!v5 || (a2 & 1) == 0)
  {
    return sub_2179A7528(v2, a1 & 1, a2 & 1);
  }

  v7 = v2[8];
  v6 = v2[9];
  v8 = v2[7];

  v9 = sub_2179E60DC(v5, v7, v6, (v2 + 2));
  if (v3)
  {
  }

  v12 = v9;
  v13 = v10;
  sub_2179A7528(v2, a1 & 1, 1);
  OUTLINED_FUNCTION_12_12();
  if (!v12)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_11_12();
  v16 = *(v13 + 32);

  v17 = OUTLINED_FUNCTION_16_6();
  sub_2179AA30C(v17);

  OUTLINED_FUNCTION_11_12();
  v19 = *(v16 + 24);
  v18 = *(v16 + 32);

  OUTLINED_FUNCTION_12_12();
  if (!v18)
  {
LABEL_16:
    v22 = sub_2179AC0B8(0x65765F656C626174, 0xEE00736E6F697372, v15, 0xE500000000000000);
    sub_2179AFCA4(v22, v23);

    v24 = OUTLINED_FUNCTION_16_6();
    sub_2179AE6E4(v24);
  }

  if (v19 == v15 && v18 == 0xE500000000000000)
  {
  }

  else
  {
    v21 = sub_2179E9D70();

    OUTLINED_FUNCTION_12_12();
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v14 = OUTLINED_FUNCTION_16_6();
  return sub_2179AE6E4(v14);
}

void sub_2179A7DE0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_13_6();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  OUTLINED_FUNCTION_4_15(v1, v2, v3);
  v4 = OUTLINED_FUNCTION_11_7();
  sub_2179A7E34(v4, v5, v6);
  OUTLINED_FUNCTION_23_3();
  v7 = OUTLINED_FUNCTION_9_8();
  sub_2179A7E34(v7, v8, v9);
  OUTLINED_FUNCTION_30();
}

uint64_t sub_2179A7E34(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2179CA2E8(result, a2, a3 & 1);
  }

  return result;
}

void sub_2179A7E4C()
{
  OUTLINED_FUNCTION_8_9();
  if (v5)
  {
    OUTLINED_FUNCTION_3_11();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_7_7();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_10();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_12(v6);
  if (v3)
  {
    OUTLINED_FUNCTION_1_12(v9, &qword_280B1DC20, MEMORY[0x277D837D0]);
    v10 = OUTLINED_FUNCTION_11_5();
    OUTLINED_FUNCTION_6_7(v10);
    OUTLINED_FUNCTION_5_7(v11);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v12 = OUTLINED_FUNCTION_9_6();
  if (v1)
  {
    if (v3 != v0 || &v13[16 * v2] <= v12)
    {
      memmove(v12, v13, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void OUTLINED_FUNCTION_7_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84560];

  sub_21799AE34(0, a2, a3, v4);
}

uint64_t (*OUTLINED_FUNCTION_7_2(uint64_t a1))()
{

  return static EntityType.createTableChain(for:ifNotExists:shouldVersion:)(v4, v3, v2, v1, a1);
}

uint64_t OUTLINED_FUNCTION_7_4(uint64_t a1, uint64_t a2)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_7_5()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

void OUTLINED_FUNCTION_7_11()
{
  *(v0 + 16) = v1;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_7_14(uint64_t a1, uint64_t a2)
{
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_7_15()
{
  *(v0 + 16) = v1;
  v3 = v0 + 16 * v2;
  *(v3 + 32) = 0x54494D494CLL;
  *(v3 + 40) = 0xE500000000000000;
}

uint64_t sub_2179A8074(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_2179A80B8(a1, v2 + 16);
  return v2;
}

uint64_t sub_2179A80BC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2179AEC5C();
  }

  return result;
}

uint64_t sub_2179A8124(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_2179A823C(0, &qword_280B1DC20, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_2179CF30C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_2179A823C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t OUTLINED_FUNCTION_15_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, uint64_t a18, int a19, char a20, unsigned __int8 a21, unsigned __int8 a22, unsigned __int8 a23, uint64_t a24, uint64_t a25)
{
  a17 = v25;

  return Database.init(location:assertions:journalingMode:recoveryMode:cacheSize:vacuumMode:busyTimeout:)(&a25, &a24, &a23, &a22, &a14, &a21);
}

uint64_t OUTLINED_FUNCTION_15_4(uint64_t a1, uint64_t a2)
{
  *(v2 + 480) = a1;
  *(v2 + 488) = a2;
  return v2 + 552;
}

uint64_t OUTLINED_FUNCTION_15_5()
{
}

uint64_t sub_2179A8328()
{
  v1 = sub_2179A0F8C();
  v3 = sub_2179A9878(v1, v2);
  v4 = 0;
  v5 = *(v3 + 16);
  v6 = v3 + 32;
  v7 = MEMORY[0x277D84F90];
  while (v5 != v4)
  {
    if (v4 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_32;
    }

    sub_2179A9940(v6, &v48);
    v8 = *(&v50 + 1);
    v9 = v51;
    v0 = __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
    if ((*(v9 + 40))(v8, v9))
    {
      v44 = v48;
      v45 = v49;
      v46 = v50;
      v47 = v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v0 = &v52;
        sub_2179A90BC(0, v7[2] + 1, 1);
        v7 = v52;
      }

      v12 = v7[2];
      v11 = v7[3];
      if (v12 >= v11 >> 1)
      {
        v0 = &v52;
        sub_2179A90BC(v11 > 1, v12 + 1, 1);
        v7 = v52;
      }

      v7[2] = v12 + 1;
      v13 = &v7[7 * v12];
      v13[10] = v47;
      *(v13 + 3) = v45;
      *(v13 + 4) = v46;
      *(v13 + 2) = v44;
    }

    else
    {
      sub_2179A87AC(&v48, sub_2179A4BDC);
    }

    v6 += 56;
    ++v4;
  }

  v14 = v7[2];
  if (v14)
  {
    *&v48 = MEMORY[0x277D84F90];
    v0 = &v48;
    sub_2179A920C(0, v14, 0);
    v5 = 0;
    v15 = v48;
    v16 = v7 + 5;
    while (v5 < v7[2])
    {
      v18 = *(v16 - 1);
      v17 = *v16;
      *&v48 = v15;
      v19 = *(v15 + 16);
      v0 = *(v15 + 24);

      if (v19 >= v0 >> 1)
      {
        v21 = v0 > 1;
        v0 = &v48;
        sub_2179A920C(v21, v19 + 1, 1);
        v15 = v48;
      }

      ++v5;
      *(v15 + 16) = v19 + 1;
      v20 = v15 + 16 * v19;
      *(v20 + 32) = v18;
      *(v20 + 40) = v17;
      v16 += 7;
      if (v14 == v5)
      {

        goto LABEL_20;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    sub_2179A7E4C();
    v23 = v40;
    v24 = *(v40 + 24) >> 1;
    goto LABEL_22;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_20:
  if (!*(v15 + 16))
  {

    return MEMORY[0x277D84F90];
  }

  sub_2179A7E4C();
  v23 = v22;
  v5 = *(v22 + 16);
  v24 = *(v22 + 24) >> 1;
  v0 = v5 + 1;
  if (v24 <= v5)
  {
    goto LABEL_33;
  }

LABEL_22:
  *(v23 + 16) = v0;
  v25 = v23 + 16 * v5;
  *(v25 + 32) = 0x5952414D495250;
  *(v25 + 40) = 0xE700000000000000;
  if (v24 < (v5 + 2))
  {
    sub_2179A7E4C();
    v23 = v41;
  }

  *(v23 + 16) = v5 + 2;
  v26 = v23 + 16 * v0;
  *(v26 + 32) = 5850443;
  *(v26 + 40) = 0xE300000000000000;
  *&v48 = 40;
  *(&v48 + 1) = 0xE100000000000000;
  sub_2179A5088();
  sub_2179A4B34();
  v27 = sub_2179E95F0();
  v29 = v28;

  MEMORY[0x21CEA9600](v27, v29);

  MEMORY[0x21CEA9600](41, 0xE100000000000000);
  v30 = v48;
  v31 = *(v23 + 16);
  if (v31 >= *(v23 + 24) >> 1)
  {
    sub_2179A7E4C();
    v23 = v42;
  }

  *(v23 + 16) = v31 + 1;
  *(v23 + 16 * v31 + 32) = v30;
  *&v48 = v23;
  v32 = sub_2179E95F0();
  v34 = v33;

  sub_2179A7E4C();
  v36 = v35;
  v37 = *(v35 + 16);
  if (v37 >= *(v35 + 24) >> 1)
  {
    sub_2179A7E4C();
    v36 = v43;
  }

  *(v36 + 16) = v37 + 1;
  v38 = v36 + 16 * v37;
  *(v38 + 32) = v32;
  *(v38 + 40) = v34;
  return v36;
}

uint64_t sub_2179A87AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2179A880C(char a1)
{
  v2 = sub_2179A9E98(a1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v11 = MEMORY[0x277D84F90];
    result = sub_2179E9BA0();
    v5 = 0;
    while (v5 < *(v2 + 16))
    {
      v6 = v5 + 1;
      *&v10[0] = *(v2 + 8 * v5 + 32);
      sub_2179A5088();
      sub_2179A4B34();

      *&v10[0] = sub_2179E95F0();
      *(&v10[0] + 1) = v7;

      MEMORY[0x21CEA9600](59, 0xE100000000000000);

      v8 = v10[0];
      sub_2179A70AC(v1 + 16, v10);
      sub_2179A4AE0(0, qword_280B1DD58, &type metadata for Versions.Entity, &off_282996810, type metadata accessor for Statement);
      swift_allocObject();
      sub_2179A935C(0, v8, *(&v8 + 1), v10);

      sub_2179E9B70();
      v9 = *(v11 + 16);
      sub_2179E9BB0();
      sub_2179E9BC0();
      result = sub_2179E9B80();
      v5 = v6;
      if (v3 == v6)
      {

        return v11;
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

uint64_t FastEntity.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_1_4();

  return swift_deallocClassInstance();
}

uint64_t FastColumn.__deallocating_deinit()
{
  FastColumn.deinit();
  OUTLINED_FUNCTION_4();

  return swift_deallocClassInstance();
}

uint64_t FastColumn.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t Column.__deallocating_deinit()
{
  Column.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char *Column.deinit()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 80);
  v4 = sub_2179E9A60();
  OUTLINED_FUNCTION_1(v4);
  (*(v5 + 8))(&v0[v2]);
  OUTLINED_FUNCTION_21();
  v7 = *(v6 + 136);
  v8 = *(v1 + 88);
  type metadata accessor for Column.Func();
  v9 = sub_2179E9A60();
  OUTLINED_FUNCTION_1(v9);
  v11 = *(v10 + 8);
  v11(&v0[v7], v9);
  OUTLINED_FUNCTION_21();
  v11(&v0[*(v12 + 144)], v9);
  return v0;
}

uint64_t sub_2179A8C18()
{
  sub_2179A6B8C();

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_5TeaDB8SQLErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 0x1Fu) <= 0x1C)
  {
    return *(a1 + 16) & 0x1F;
  }

  else
  {
    return (*a1 + 29);
  }
}

uint64_t OUTLINED_FUNCTION_23()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_23_1@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v3 = &a2 - a1;

  return sub_2179B03D8(v3);
}

uint64_t OUTLINED_FUNCTION_23_2(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return v2 + 160;
}

uint64_t OUTLINED_FUNCTION_23_3()
{

  return swift_beginAccess();
}

uint64_t sub_2179A8D00(char a1, char a2)
{
  sub_2179A7E4C();
  v5 = v4;
  v6 = *(v4 + 16);
  v7 = v6 + 1;
  if (v6 >= *(v4 + 24) >> 1)
  {
    sub_2179A7E4C();
    v5 = v22;
  }

  *(v5 + 16) = v7;
  v8 = v5 + 16 * v6;
  *(v8 + 32) = 0x455441455243;
  *(v8 + 40) = 0xE600000000000000;
  if (a1)
  {
    if ((v6 + 2) > *(v5 + 24) >> 1)
    {
      sub_2179A7E4C();
      v5 = v28;
    }

    *(v5 + 16) = v6 + 2;
    v9 = v5 + 16 * v7;
    *(v9 + 32) = 1347241300;
    *(v9 + 40) = 0xE400000000000000;
    v7 = *(v5 + 16);
  }

  v10 = v7 + 1;
  if (v7 >= *(v5 + 24) >> 1)
  {
    sub_2179A7E4C();
    v5 = v23;
  }

  *(v5 + 16) = v10;
  v11 = v5 + 16 * v7;
  *(v11 + 32) = 0x454C424154;
  *(v11 + 40) = 0xE500000000000000;
  if (a2)
  {
    if ((v7 + 2) > *(v5 + 24) >> 1)
    {
      sub_2179A7E4C();
      v5 = v29;
    }

    *(v5 + 16) = v7 + 2;
    v12 = v5 + 16 * v10;
    strcpy((v12 + 32), "IF NOT EXISTS");
    *(v12 + 46) = -4864;
  }

  v13 = *(v5 + 16);
  if (v13 >= *(v5 + 24) >> 1)
  {
    sub_2179A7E4C();
    v5 = v24;
  }

  *(v5 + 16) = v13 + 1;
  v14 = v5 + 16 * v13;
  strcpy((v14 + 32), "table_versions");
  *(v14 + 47) = -18;
  sub_2179A4C58();
  v15 = sub_2179A8328();
  sub_2179A922C(v15);
  sub_2179A5088();
  sub_2179A4B34();
  v16 = sub_2179E95F0();
  v18 = v17;

  MEMORY[0x21CEA9600](v16, v18);

  MEMORY[0x21CEA9600](41, 0xE100000000000000);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = *(v5 + 16);
    sub_2179A7E4C();
    v5 = v26;
  }

  v19 = *(v5 + 16);
  if (v19 >= *(v5 + 24) >> 1)
  {
    sub_2179A7E4C();
    v5 = v27;
  }

  *(v5 + 16) = v19 + 1;
  v20 = v5 + 16 * v19;
  *(v20 + 32) = 40;
  *(v20 + 40) = 0xE100000000000000;
  return v5;
}

uint64_t sub_2179A90BC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2179A90DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2179A90DC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_2179A56B4(0, &qword_280B1DC28, sub_2179A4BDC, MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 56);
      if (v5)
      {
LABEL_13:
        sub_2179B9018((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_2179A4BDC();
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2179A920C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2179A8124(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_2179A922C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_2(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2179A92E4(v4, 1, sub_2179A7E4C);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3_2();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_2179A92E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

void *sub_2179A935C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4[4] = a1;
  v4[10] = MEMORY[0x277D84F90];
  v4[2] = a2;
  v4[3] = a3;
  sub_2179A0D5C(a4, (v4 + 5));
  return v4;
}

uint64_t sub_2179A9394(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2179A4988(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_2179A93F0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_2(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2179A92E4(v4, 1, sub_2179A94A4);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3_2();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_2179A2BCC();
  OUTLINED_FUNCTION_8_2();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_2179A94A4()
{
  OUTLINED_FUNCTION_8_9();
  if (v5)
  {
    OUTLINED_FUNCTION_3_11();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_7_7();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_10();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_12(v6);
  if (v3)
  {
    sub_2179AB038(0, qword_280B1D5A0, sub_2179A5718);
    v9 = OUTLINED_FUNCTION_11_5();
    OUTLINED_FUNCTION_6_7(v9);
    OUTLINED_FUNCTION_5_7(v10);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v3 != v0 || v0 + 32 + 16 * v2 <= (v3 + 32))
    {
      v12 = OUTLINED_FUNCTION_12_6();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_2179A2BCC();
    OUTLINED_FUNCTION_12_6();
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_2179A95BC(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

void *sub_2179A95E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a4;
  v12 = ~a4;
  *&v26 = a1;
  v13 = sub_2179A9A0C(a1, a2, a3, a4, a5, a6, a7);
  v15 = v14;
  if (v12)
  {
    *&v26 = a2;
    *(&v26 + 1) = a3;
    v27 = v9 & 1;
    v16 = sub_2179AF97C();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  sub_2179E5D00(42, 0xE100000000000000, v13, v15, v16, v18, 1, 0, 0, 1);
  sub_2179A5088();
  sub_2179A4B34();
  *&v26 = sub_2179E95F0();
  *(&v26 + 1) = v19;

  MEMORY[0x21CEA9600](59, 0xE100000000000000);

  v20 = v26;
  v21 = sub_2179A70AC(v7 + 16, &v26);
  OUTLINED_FUNCTION_6_16(v21, qword_280B1DD58, &type metadata for Versions.Entity, &off_282996810);
  swift_initStackObject();
  v22 = sub_2179A935C(3, v20, *(&v20 + 1), &v26);
  v23 = sub_2179A5760();

  if (!v8)
  {
    if (v23[2])
    {
      v22 = v23[4];
      v24 = v23[5];
    }

    else
    {
      v22 = 0;
    }
  }

  return v22;
}

uint64_t (*OUTLINED_FUNCTION_13_1(uint64_t a1))()
{

  return EntityType.saveChain(for:)(v2, v1, a1);
}

uint64_t OUTLINED_FUNCTION_13_5(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return v2 + 160;
}

uint64_t OUTLINED_FUNCTION_13_8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, __int128);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);

  return sub_2179AC76C(va1, v2, v3, va);
}

uint64_t sub_2179A9878(uint64_t a1, uint64_t a2)
{
  v7[3] = &type metadata for Versions.Entity;
  v7[4] = &off_282996800;
  v7[0] = a1;
  v7[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v7, &type metadata for Versions.Entity);
  v3 = *v2;
  v4 = v2[1];
  type metadata accessor for FastEntity();
  swift_initStackObject();

  v5 = *(sub_2179A2C84() + 16);

  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

uint64_t sub_2179A9940(uint64_t a1, uint64_t a2)
{
  sub_2179A4BDC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2179A9A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *v7;
  switch(*v7 >> 60)
  {
    case 1uLL:
      OUTLINED_FUNCTION_2_5(v10, v46);
      OUTLINED_FUNCTION_10_5();
      v13 = 540949536;
      goto LABEL_18;
    case 2uLL:
      OUTLINED_FUNCTION_2_5(v10, v46);
      OUTLINED_FUNCTION_10_5();
      v13 = 2113056;
      goto LABEL_12;
    case 3uLL:
      OUTLINED_FUNCTION_2_5(v10, v46);
      OUTLINED_FUNCTION_10_5();
      v13 = 540884512;
      goto LABEL_18;
    case 4uLL:
      OUTLINED_FUNCTION_2_5(v10, v46);
      OUTLINED_FUNCTION_10_5();
      v13 = 2112544;
      goto LABEL_12;
    case 5uLL:
      OUTLINED_FUNCTION_2_5(v10, v46);
      OUTLINED_FUNCTION_10_5();
      v13 = 540884000;
LABEL_18:
      v21 = 0xE400000000000000;
      goto LABEL_19;
    case 6uLL:
      v29 = OUTLINED_FUNCTION_5_3(a1, a2, a3, a4, a5, a6, a7, v10);
      MEMORY[0x21CEA9600](v29);

      v23 = 0x20444E4120;
      v24 = 0xE500000000000000;
      goto LABEL_21;
    case 7uLL:
      v22 = OUTLINED_FUNCTION_5_3(a1, a2, a3, a4, a5, a6, a7, v10);
      MEMORY[0x21CEA9600](v22);

      v23 = 542265120;
      v24 = 0xE400000000000000;
LABEL_21:
      v30 = MEMORY[0x21CEA9600](v23, v24);
      v50 = v8;
      v37 = sub_2179A9A0C(v30, v31, v32, v33, v34, v35, v36);
      MEMORY[0x21CEA9600](v37);

      MEMORY[0x21CEA9600](41, 0xE100000000000000);
      return v46;
    case 8uLL:
      OUTLINED_FUNCTION_12_2(v10);
      MEMORY[0x21CEA9600](0x28204E4920, 0xE500000000000000);
      v14 = MEMORY[0x277D84F90];
      if (*(v9 + 16))
      {
        OUTLINED_FUNCTION_8_4();
        v14 = v49;
        v38 = v9 + 32;
        do
        {
          sub_2179A70AC(v38, &v46);
          __swift_project_boxed_opaque_existential_1(&v46, v47);
          v39 = OUTLINED_FUNCTION_6_3();
          v40(v39);
          __swift_destroy_boxed_opaque_existential_1(&v46);
          OUTLINED_FUNCTION_11_1();
          if (v19)
          {
            OUTLINED_FUNCTION_9_2(v41);
            v14 = v49;
          }

          OUTLINED_FUNCTION_7_5();
        }

        while (!v20);
      }

      goto LABEL_28;
    case 9uLL:
      OUTLINED_FUNCTION_12_2(v10);
      MEMORY[0x21CEA9600](0x204E4920544F4E20, 0xE900000000000028);
      v14 = MEMORY[0x277D84F90];
      if (*(v9 + 16))
      {
        OUTLINED_FUNCTION_8_4();
        v14 = v49;
        v15 = v9 + 32;
        do
        {
          sub_2179A70AC(v15, &v46);
          __swift_project_boxed_opaque_existential_1(&v46, v47);
          v16 = OUTLINED_FUNCTION_6_3();
          v17(v16);
          __swift_destroy_boxed_opaque_existential_1(&v46);
          OUTLINED_FUNCTION_11_1();
          if (v19)
          {
            OUTLINED_FUNCTION_9_2(v18);
            v14 = v49;
          }

          OUTLINED_FUNCTION_7_5();
        }

        while (!v20);
      }

LABEL_28:
      v46 = v14;
      sub_2179A5088();
      sub_2179A4B34();
      v42 = sub_2179E95F0();
      v44 = v43;

      MEMORY[0x21CEA9600](v42, v44);

      MEMORY[0x21CEA9600](41, 0xE100000000000000);
      v28 = v50;
      break;
    default:
      v12 = *(v10 + 16);
      v11 = *(v10 + 24);
      sub_2179A70AC(v10 + 32, &v46);
      OUTLINED_FUNCTION_10_5();
      v13 = 2112800;
LABEL_12:
      v21 = 0xE300000000000000;
LABEL_19:
      MEMORY[0x21CEA9600](v13, v21);
      v25 = v47;
      v26 = v48;
      __swift_project_boxed_opaque_existential_1(&v46, v47);
      v27 = (*(v26 + 8))(v25, v26);
      MEMORY[0x21CEA9600](v27);

      v28 = v50;
      __swift_destroy_boxed_opaque_existential_1(&v46);
      break;
  }

  return v28;
}

uint64_t sub_2179A9E30()
{
  swift_beginAccess();

  sub_2179A93F0(v0);
  swift_endAccess();
}

uint64_t sub_2179A9E98(char a1)
{
  v1 = sub_2179A0F8C();
  result = sub_2179A9878(v1, v2);
  v4 = result;
  v5 = 0;
  v6 = *(result + 16);
  v7 = result + 32;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v5 == v6)
    {
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
      v5 = v6;
      v20 = 0u;
      goto LABEL_7;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v5 >= *(v4 + 16))
    {
      goto LABEL_18;
    }

    sub_2179A9940(v7 + 56 * v5++, &v20);
LABEL_7:
    v24 = v20;
    v25[0] = v21;
    v25[1] = v22;
    v26 = v23;
    v9 = *(&v20 + 1);
    if (!*(&v20 + 1))
    {

      return v8;
    }

    v10 = v24;
    sub_2179A0D5C(v25, &v20);
    v11 = *(&v21 + 1);
    v12 = v22;
    __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
    if ((*(v12 + 48))(v11, v12))
    {
      sub_2179A70AC(&v20, v19);
      v13 = sub_2179E5A0C(v10, v9, v19, a1 & 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = *(v8 + 16);
        sub_2179CF028();
        v8 = v16;
      }

      v14 = *(v8 + 16);
      if (v14 >= *(v8 + 24) >> 1)
      {
        sub_2179CF028();
        v8 = v17;
      }

      *(v8 + 16) = v14 + 1;
      *(v8 + 8 * v14 + 32) = v13;
    }

    else
    {
    }

    result = __swift_destroy_boxed_opaque_existential_1(&v20);
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_2179AA0CC(int iCol@<W1>, unsigned __int8 *a2@<X0>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  if ((a3 & 1) != 0 && sqlite3_column_type(*(v4 + 24), iCol) == 5)
  {
LABEL_3:
    *a4 = 0;
    *(a4 + 8) = 0;
    v7 = 5;
LABEL_14:
    *(a4 + 16) = v7;
  }

  else
  {
    v8 = *(v4 + 24);
    switch(v6)
    {
      case 1:
        v24 = OUTLINED_FUNCTION_5_5();
        *a4 = sqlite3_column_int64(v24, v25);
        *(a4 + 8) = 0;
        v7 = 1;
        goto LABEL_14;
      case 2:
        v20 = OUTLINED_FUNCTION_5_5();
        *a4 = sqlite3_column_int64(v20, v21) == 1;
        *(a4 + 8) = 0;
        v7 = 2;
        goto LABEL_14;
      case 3:
        v22 = OUTLINED_FUNCTION_5_5();
        *a4 = sqlite3_column_double(v22, v23);
        *(a4 + 8) = 0;
        v7 = 3;
        goto LABEL_14;
      case 4:
        v12 = OUTLINED_FUNCTION_5_5();
        v14 = sqlite3_column_blob(v12, v13);
        if (v14)
        {
          v15 = v14;
          v16 = OUTLINED_FUNCTION_5_5();
          v18 = sqlite3_column_bytes(v16, v17);
          *a4 = MEMORY[0x21CEA90F0](v15, v18);
          *(a4 + 8) = v19;
        }

        else
        {
          *a4 = xmmword_2179EF020;
        }

        v7 = 4;
        goto LABEL_14;
      default:
        v9 = OUTLINED_FUNCTION_5_5();
        if (!sqlite3_column_text(v9, v10))
        {
          goto LABEL_3;
        }

        *a4 = sub_2179E9710();
        *(a4 + 8) = v11;
        *(a4 + 16) = 0;
        break;
    }
  }
}

uint64_t sub_2179AA22C(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2179AC53C(result, a2, a3);
  }

  return result;
}

void sub_2179AA240()
{
  OUTLINED_FUNCTION_8_9();
  if (v5)
  {
    OUTLINED_FUNCTION_3_11();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_7_7();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_10();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_12(v6);
  if (v3)
  {
    OUTLINED_FUNCTION_1_12(v9, &unk_280B1DB10, &type metadata for Versions.Entity);
    v10 = OUTLINED_FUNCTION_11_5();
    OUTLINED_FUNCTION_6_7(v10);
    OUTLINED_FUNCTION_5_7(v11);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v12 = OUTLINED_FUNCTION_9_6();
  if (v1)
  {
    if (v3 != v0 || &v13[16 * v2] <= v12)
    {
      memmove(v12, v13, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_2179AA30C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2179AA34C(uint64_t *a1, uint64_t a2, int a3)
{
  v4 = a2;
  v5 = *a1;
  sub_2179A44CC(a2, a3);
  sub_2179AC7D4(v6);

  if (!v3)
  {

    v8 = sub_2179AE478(v4 & 1);
    v9 = *(v5 + 80);
    v10 = *(*(v5 + 88) + 24);
    type metadata accessor for Statement();
    v11 = sub_2179E97C0();
    v15 = v11;
    while (v11 != sub_2179E9820())
    {
      v12 = sub_2179E9800();
      sub_2179E97E0();
      if (v12)
      {
        v13 = *(v8 + 32 + 8 * v11);
      }

      else
      {
        sub_2179E9B20();
      }

      v14 = sub_2179E9830();
      sub_2179AC7D4(v14);

      v11 = v15;
    }
  }

  return result;
}

uint64_t sub_2179AA4E8(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2179AA534()
{
  swift_weakInit();
  swift_weakAssign();
}

uint64_t storeEnumTagSinglePayload for AssertionOptions(uint64_t result, int a2, int a3)
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

uint64_t sub_2179AA5C0(uint64_t a1, uint64_t a2)
{
  v5 = 0;

  v3 = Database.asyncWrite(_:block:)(&v5, sub_2179ABD98, a2);

  return v3;
}

uint64_t sub_2179AA668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a3;
  *(v19 + 32) = a4;
  *(v19 + 40) = a6;
  *(v19 + 48) = a7;
  *(v19 + 56) = a8;
  *(v19 + 64) = sub_2179B27D0;
  *(v19 + 72) = v17;

  sub_21799EC98(a9, sub_2179A22F4, v19);
  v20 = *(a5 + 32);
  if (v20)
  {
    v21 = v20;
    sub_2179E99A0();
  }

  else
  {
    sub_2179E94D0();
  }
}

uint64_t sub_2179AA7D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2179AA808()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_12();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2179AA83C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2179AA88C(uint64_t a1, uint64_t a2)
{
  sub_21799A52C(0, qword_280B1D6D8, MEMORY[0x277D851D8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2179AA948(uint64_t a1)
{
  sub_21799A52C(0, qword_280B1D6D8, MEMORY[0x277D851D8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t KeyValueStore.promises.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_22();
  v5 = v4;
  swift_beginAccess();
  OUTLINED_FUNCTION_22();
  v7 = *(v6 + 112);
  v8 = *(v5 + 80);
  v9 = *(v5 + 96);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_9();
  v10 = sub_2179E9A60();
  OUTLINED_FUNCTION_1(v10);
  return (*(v11 + 16))(a1, v1 + 9);
}

uint64_t sub_2179AAA9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2179A90BC(0, v1, 0);
    v2 = v17;
    v4 = a1 + 32;
    do
    {
      sub_2179AABA8(v4, v12);
      sub_2179AB08C();
      sub_2179A4BDC();
      swift_dynamicCast();
      v17 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2179A90BC(v5 > 1, v6 + 1, 1);
        v2 = v17;
      }

      *(v2 + 16) = v6 + 1;
      v7 = v2 + 56 * v6;
      v8 = v13;
      v9 = v14;
      v10 = v15;
      *(v7 + 80) = v16;
      *(v7 + 48) = v9;
      *(v7 + 64) = v10;
      *(v7 + 32) = v8;
      v4 += 56;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2179AABA8(uint64_t a1, uint64_t a2)
{
  sub_2179AB08C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2179AAC0C()
{
  OUTLINED_FUNCTION_0_26();
  v4(0, *(v2 + 80), *(*(v3 + 88) + 8));
  sub_2179A70AC(v1, v6);
  return v0(v6);
}

uint64_t sub_2179AAC88()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *sub_2179AACC4(uint64_t *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = *a1;
  v4[10] = MEMORY[0x277D84F90];
  v4[3] = a3;
  v4[4] = v5;
  v4[2] = a2;
  sub_2179A0D5C(a4, (v4 + 5));
  return v4;
}

uint64_t sub_2179AAD00()
{
  sub_21799F4E0(0, &qword_280B1D7F0, sub_2179AAEF8, MEMORY[0x277D83D88]);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  sub_2179AD4A0();
  swift_allocObject();
  sub_2179A7DE0();
  v8 = v7;
  sub_2179AAEF8(0);
  v10 = v9;
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v10);
  sub_2179AAF2C(0, &qword_280B1D7E0, sub_2179AAFA8, type metadata accessor for Column);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_2179AD6B4();
  sub_2179AAFDC();
  swift_allocObject();
  sub_2179ADBE4();
  return v8;
}

void sub_2179AAF2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2179E9270();
    v9 = a3();
    v10 = a4(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_2179AAFDC()
{
  if (!qword_280B1D7E8)
  {
    sub_2179AD54C();
    v0 = type metadata accessor for Column();
    if (!v1)
    {
      atomic_store(v0, &qword_280B1D7E8);
    }
  }
}

void sub_2179AB038(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2179E9D50();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2179AB08C()
{
  if (!qword_280B1DB80)
  {
    sub_2179ADDF8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280B1DB80);
    }
  }
}

uint64_t sub_2179AB178(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[3];
  sub_2179AB328();
  v6 = sub_2179AB354();

  if (!v2)
  {
    v16 = v6;
    MEMORY[0x28223BE20](result);
    v8 = *(v4 + 96);
    v14[1] = *(v4 + 80);
    v14[2] = v8;
    v15 = *(v4 + 112);
    type metadata accessor for KVSEntity();
    v9 = sub_2179E9840();
    WitnessTable = swift_getWitnessTable();
    v12 = sub_2179A2E44(sub_2179BD374, v14, v9, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);

    v13 = *a1;
    *a1 = v12;
  }

  return result;
}

uint64_t sub_2179AB300()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2179AB354()
{
  v2 = (v0 + 2);
  v1 = *v0;
  OUTLINED_FUNCTION_0_7();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_0_7();
  v6 = *(v5 + 88);
  OUTLINED_FUNCTION_5_4();
  type metadata accessor for Statement();
  OUTLINED_FUNCTION_12_3();
  v18 = 0uLL;
  v19 = -1;
  OUTLINED_FUNCTION_6_4();
  sub_2179D1704(v7, v8, v9, v10, v11, v12, v4, v6);
  v13 = sub_2179ABC9C();
  v15 = v14;

  sub_2179A70AC(v2, &v18);
  v16 = sub_2179AC76C(&v20, v13, v15, &v18);
  sub_2179AC7D4(v16);
  OUTLINED_FUNCTION_2_6();
  return OUTLINED_FUNCTION_7();
}

uint64_t KeyValueStore.read(_:maxAge:)(uint64_t a1)
{
  v85 = a1;
  v2 = v1;
  OUTLINED_FUNCTION_21();
  v84 = v3;
  sub_2179ABAD0();
  v83 = v4;
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v10 = v8 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_20(v12, v13, v14, v15, v16, v17, v18, v19, v73);
  sub_2179AAF2C(0, &qword_280B1D6D0, sub_2179ABB38, MEMORY[0x277D83638]);
  v81 = v20;
  OUTLINED_FUNCTION_1(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v23);
  v25 = &v73 - v24;
  v26 = sub_2179E9270();
  v27 = OUTLINED_FUNCTION_0_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  v34 = (v32 - v33);
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v73 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v73 - v39;
  v42 = *(v1 + 32);
  v41 = *(v1 + 40);

  v42(v43);

  sub_2179E9230();
  sub_2179E9230();
  sub_2179ABB38();
  result = sub_2179E9620();
  if (result)
  {
    v80 = v40;
    v87 = v25;
    v45 = v29[2];
    v46 = v82;
    v45(v82, v38, v26);
    v77 = v2;
    v78 = v34;
    v47 = v83;
    v45(v46 + v83[12], v34, v26);
    sub_2179AEC80(v46, v10);
    v48 = v47[12];
    v79 = v38;
    v49 = v29[4];
    v49(v87, v10, v26);
    v51 = v29[1];
    v50 = (v29 + 1);
    v51(v10 + v48, v26);
    sub_2179AED08(v46, v10);
    v49(&v87[*(v81 + 36)], v10 + v47[12], v26);
    v52 = v77;
    v83 = v51;
    v51(v10, v26);
    v54 = v84[10];
    v53 = v84[11];
    v56 = v84[12];
    v55 = v84[13];
    v57 = v84[14];
    v88[0] = v54;
    v88[1] = v53;
    v81 = v55;
    v82 = v53;
    v88[2] = v56;
    v88[3] = v55;
    v76 = v57;
    v88[4] = v57;
    v75 = type metadata accessor for KVSEntry();
    v89 = sub_2179E9500();
    OUTLINED_FUNCTION_15_0();
    v58 = swift_allocObject();
    type metadata accessor for KVSEntity();
    v59 = sub_2179E9510();
    v84 = v58;
    *(v58 + 16) = v59;
    v60 = (v58 + 16);
    v61 = *(v52 + 56);
    MEMORY[0x28223BE20](v59);
    *(&v73 - 6) = &v89;
    *(&v73 - 5) = v52;
    v62 = v86;
    v63 = v87;
    *(&v73 - 4) = v85;
    *(&v73 - 3) = v63;
    *(&v73 - 2) = v60;
    sub_2179E9980();
    if (v62)
    {
      v64 = v83;
      (v83)(v78, v26);
      v64(v79, v26);
      v64(v80, v26);

      sub_2179AF774(v87);
    }

    else
    {
      v73 = v50;
      v74 = v56;
      v85 = 0;
      v86 = v26;
      v65 = v83;
      v88[0] = *v60;
      sub_2179E9840();
      swift_getWitnessTable();
      v66 = sub_2179E98D0();
      v67 = v84;
      if ((v66 & 1) == 0)
      {
        v68 = *(v52 + 16);
        OUTLINED_FUNCTION_12();
        v69 = swift_allocObject();
        *(v69 + 16) = v67;
        *(v69 + 24) = v52;
        LOBYTE(v88[0]) = 0;

        Database.asyncWrite(_:block:)(v88, sub_2179BB130, v69);
      }

      MEMORY[0x28223BE20](v66);
      v70 = v82;
      *(&v73 - 6) = v54;
      *(&v73 - 5) = v70;
      v71 = v81;
      *(&v73 - 4) = v74;
      *(&v73 - 3) = v71;
      *(&v73 - 2) = v76;
      v64 = sub_2179E9590();
      v72 = v86;
      v65(v78, v86);
      v65(v79, v72);
      v65(v80, v72);

      sub_2179AF774(v87);
    }

    return v64;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2179ABA70()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_15_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

void sub_2179ABAD0()
{
  if (!qword_280B1D8B8)
  {
    sub_2179E9270();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280B1D8B8);
    }
  }
}

uint64_t sub_2179ABB6C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2179ABDE8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2179AD43C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2179ABC30()
{
  result = qword_280B1CAC0[0];
  if (!qword_280B1CAC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B1CAC0);
  }

  return result;
}

uint64_t sub_2179ABCE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[3];
  sub_2179A6BC4();
  v3 = *(v1 + 80);
  v4 = *(v1 + 96);
  type metadata accessor for KVSEntity();
  swift_getWitnessTable();
  v5 = sub_2179ABDB4();
  sub_2179A750C(v5 & 1);
}

unint64_t sub_2179ABDE8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2179E0F70(a5, a6);
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
    result = sub_2179E9B50();
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

uint64_t OUTLINED_FUNCTION_20_0()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_20_1(uint64_t a1, uint64_t a2)
{
  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  return v2 + 328;
}

void OUTLINED_FUNCTION_20_3()
{

  JUMPOUT(0x21CEA9600);
}

uint64_t Database.__deallocating_deinit()
{
  Database.deinit();
  OUTLINED_FUNCTION_4();

  return swift_deallocClassInstance();
}

uint64_t Database.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t get_enum_tag_for_layout_string_5TeaDB8DatabaseC6ErrorsO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2179AC000(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v8 = *(*a3 + 8);
  a1[1] = swift_getWitnessTable();
  v7 = *(v4 + 16);
  a1[2] = swift_getWitnessTable();
  v6 = *(v4 + 24);
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_2179AC0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_2_13();
  sub_2179A105C(v8, v9, v10);
  OUTLINED_FUNCTION_10_9();
  OUTLINED_FUNCTION_1_17();
  sub_2179A7DE0();
  v12 = v11;
  OUTLINED_FUNCTION_0_16();
  sub_2179A105C(0, v13, v14);
  OUTLINED_FUNCTION_8_3();
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_7_9(v15);
  *(v16 + 24) = v17;
  *(v16 + 32) = v12;
  OUTLINED_FUNCTION_10_9();
  OUTLINED_FUNCTION_1_17();
  sub_2179A7DE0();
  v19 = v18;
  OUTLINED_FUNCTION_8_3();
  v20 = swift_allocObject();
  v21 = OUTLINED_FUNCTION_3_13(v20);
  *(v21 + 24) = v22;
  *(v21 + 32) = v19;
  swift_beginAccess();
  v23 = *(v12 + 32);
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;

  swift_beginAccess();
  v24 = *(v19 + 32);
  *(v19 + 24) = a3;
  *(v19 + 32) = a4;

  return v15;
}

uint64_t Column.init(primaryKey:index:unique:default:onUpdate:)(char a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  OUTLINED_FUNCTION_3_8();
  (*(*(v11 + 88) + 32))(*(v10 + 80), *(v11 + 88));
  OUTLINED_FUNCTION_8_8();
  v13 = *(v12 + 104);
  OUTLINED_FUNCTION_6_6();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  OUTLINED_FUNCTION_8_8();
  v19 = *(v18 + 112);
  *(v5 + v19) = 0;
  OUTLINED_FUNCTION_8_8();
  v21 = *(v20 + 120);
  *(v5 + v21) = 0;
  OUTLINED_FUNCTION_8_8();
  v23 = *(v22 + 128);
  *(v5 + v23) = 0;
  OUTLINED_FUNCTION_8_8();
  v25 = *(v24 + 136);
  type metadata accessor for Column.Func();
  OUTLINED_FUNCTION_6_6();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  OUTLINED_FUNCTION_8_8();
  v31 = *(v30 + 144);
  OUTLINED_FUNCTION_6_6();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  *(v5 + v19) = a1;
  *(v5 + v21) = a2;
  *(v5 + v23) = a3;
  OUTLINED_FUNCTION_14_3();
  swift_beginAccess();
  v36 = sub_2179E9A60();
  OUTLINED_FUNCTION_1(v36);
  v38 = *(v37 + 40);
  v38(v6 + v25, a4, v36);
  swift_endAccess();
  OUTLINED_FUNCTION_14_3();
  swift_beginAccess();
  v38(v6 + v31, a5, v36);
  swift_endAccess();
  return v6;
}

uint64_t sub_2179AC430(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 4)
  {
    return sub_2179B2DDC(result, a2);
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t sub_2179AC450@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = String.init(valueType:connection:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t String.init(valueType:connection:)(uint64_t *a1, uint64_t *a2)
{
  if (*(a1 + 16))
  {
    result = sub_2179E9C40();
    __break(1u);
  }

  else
  {
    v5 = *a1;
    v6 = a1[1];
    v3 = sub_2179E9770();
    __swift_destroy_boxed_opaque_existential_1(a2);
    return v3;
  }

  return result;
}

uint64_t sub_2179AC53C(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 4)
  {
    return sub_2179B314C(result, a2);
  }

  if (!a3)
  {
  }

  return result;
}

void sub_2179AC55C()
{
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_3_8();
  v5 = v4;
  v7 = *(v6 + 80);
  v8 = *(*(sub_2179E9A60() - 8) + 64);
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v9);
  v11 = &v26[-v10];
  v12 = *(v3 + 16);
  if (v12 == 255)
  {
    v18 = &v26[-v10];
    v19 = 1;
  }

  else
  {
    v14 = *v3;
    v13 = *(v3 + 8);
    if (v12 == 5 && (v13 | v14) == 0)
    {
      OUTLINED_FUNCTION_6_6();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
      v24 = OUTLINED_FUNCTION_0();
      sub_2179AC430(v24, v25, 5);
      goto LABEL_9;
    }

    v27[0] = v14;
    v27[1] = v13;
    v28 = v12;
    sub_2179A70AC(v1, v26);
    v16 = *(v5 + 88);
    v17 = *(v16 + 48);
    sub_2179AC430(v14, v13, v12);
    v17(v27, v26, v7, v16);
    v18 = v11;
    v19 = 0;
  }

  __swift_storeEnumTagSinglePayload(v18, v19, 1, v7);
LABEL_9:
  sub_2179AC6CC(v11);
  OUTLINED_FUNCTION_22_1();
}

uint64_t sub_2179AC6CC(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_10_6();
  v5 = *(v4 + 104);
  OUTLINED_FUNCTION_14_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_10_6();
  v7 = *(v6 + 80);
  v8 = sub_2179E9A60();
  OUTLINED_FUNCTION_1(v8);
  (*(v9 + 40))(&v1[v5], a1);
  return swift_endAccess();
}

uint64_t sub_2179AC76C(uint64_t *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = swift_allocObject();
  sub_2179AACC4(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_2179AC7D4(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v69 = *v1;
  v71 = *(v69 + 80);
  v5 = *(v71 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v68 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v70 = &v65 - v9;
  swift_beginAccess();
  v10 = v1[10];
  v11 = *(v10 + 16);

  v12 = 0;
  v13 = (v10 + 40);
  while (v11 != v12)
  {
    if (v12 >= *(v10 + 16))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v15 = *(v13 - 1);
    v14 = *v13;

    v2 = v3;
    v15(v16);
    if (v3)
    {

      return v5;
    }

    ++v12;
    v13 += 2;
  }

  v17 = v4[8];
  v18 = v4[9];
  __swift_project_boxed_opaque_existential_1(v4 + 5, v17);
  (*(v18 + 8))(&v86, v17, v18);
  v19 = v4[4];
  if (v19 == 4)
  {
    goto LABEL_9;
  }

  if (v19 != 3)
  {
    if ((v86 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    *&v82 = v86;
    v20 = sub_21799C868();
    goto LABEL_13;
  }

  if ((v86 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v20 = 0;
LABEL_13:
  v21 = v4[8];
  v22 = v4[9];
  __swift_project_boxed_opaque_existential_1(v4 + 5, v21);
  v2 = v3;
  v23 = (*(v22 + 16))(v4[2], v4[3], v21, v22);
  if (v3)
  {

    return v5;
  }

  v24 = v23;
  v25 = v4[4];
  v67 = v20;
  switch(v25)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 4uLL:
      OUTLINED_FUNCTION_1_19();
      sub_2179A54D4(v26, v27, v28);
      v5 = sub_2179E97F0();
      OUTLINED_FUNCTION_1_19();
      goto LABEL_18;
    case 3uLL:
      v88 = sub_2179E9510();
      v66 = (v5 + 16);
      v65 = (v5 + 8);
      while (2)
      {
        OUTLINED_FUNCTION_1_19();
        sub_2179A54D4(v30, v31, v32);
        v33 = 0;
        v34 = v71;
        (*(*(v69 + 88) + 8))(v71, *(v69 + 88));
        v35 = sub_2179A32C4(v34);
        v36 = 0;
        v75 = *(v35 + 16);
        v73 = v35;
        v72 = v35 + 32;
        v74 = 0;
LABEL_23:
        v37 = 0uLL;
        v38 = v75;
        v39 = 0uLL;
        v40 = 0uLL;
        v41 = 0uLL;
        if (v36 == v75)
        {
          goto LABEL_26;
        }

        if (v36 >= *(v73 + 16))
        {
          __break(1u);

          v5 = v88;
LABEL_18:
          sub_2179A6F48();
          goto LABEL_20;
        }

        v38 = v36 + 1;
        *&v82 = v36;
        sub_2179A9940(v72 + 56 * v36, &v82 + 8);
        v37 = v82;
        v39 = v83;
        v40 = v84;
        v41 = v85;
LABEL_26:
        v86 = v37;
        v87[0] = v39;
        v87[1] = v40;
        v87[2] = v41;
        if (!v39)
        {

          v52 = v70;
          v53 = v71;
          (*v66)(v68, v70, v71);
          sub_2179E9840();
          sub_2179E9810();
          (*v65)(v52, v53);
          continue;
        }

        break;
      }

      v76 = v38;
      v42 = v4;
      v43 = v24;
      v77 = v37;
      sub_2179A0D5C((v87 + 8), &v83);

      v44 = *(&v84 + 1);
      v45 = v85;
      __swift_project_boxed_opaque_existential_1(&v83, *(&v84 + 1));
      v47 = *(&v84 + 1);
      v46 = v85;
      __swift_project_boxed_opaque_existential_1(&v83, *(&v84 + 1));
      (*(v46 + 8))(&v78, v47, v46);
      v48 = v77;
      if (v77 < 0xFFFFFFFF80000000)
      {
        goto LABEL_38;
      }

      if (v77 <= 0x7FFFFFFF)
      {
        v50 = *(&v84 + 1);
        v49 = v85;
        __swift_project_boxed_opaque_existential_1(&v83, *(&v84 + 1));
        v51 = (*(v49 + 64))(v50, v49);
        v24 = v43;
        sub_2179AA0CC(v48, &v78, v51 & 1, &v80);
        v78 = v80;
        v79 = v81;
        v4 = v42;
        (*(v45 + 80))(&v78, v42 + 5, v44, v45);
        sub_2179AA22C(v78, *(&v78 + 1), v79);
        __swift_destroy_boxed_opaque_existential_1(&v83);
        v36 = v76;
        v33 = v74;
        goto LABEL_23;
      }

      goto LABEL_39;
    default:
      v54 = *(v25 + 16);

      v55 = 0;
      v56 = (v25 + 48);
      break;
  }

  while (v54 != v55)
  {
    if (v55 >= *(v25 + 16))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      JUMPOUT(0x2179AD02CLL);
    }

    v57 = *(v56 - 1);
    v58 = *v56;
    *&v86 = *(v56 - 2);
    *(&v86 + 1) = v57;
    LOBYTE(v87[0]) = v58;
    if (v55 == 0x7FFFFFFF)
    {
      goto LABEL_44;
    }

    v59 = OUTLINED_FUNCTION_0_17();
    sub_2179AC430(v59, v60, v61);
    sub_2179B1C1C(&v86, (v55 + 1));
    v62 = OUTLINED_FUNCTION_0_17();
    sub_2179AC53C(v62, v63, v64);
    v56 += 24;
    ++v55;
  }

  sub_2179A74FC(v25);
  v2 = 0;
  sub_2179A54D4(2, 0, 29);
LABEL_40:
  v5 = sub_2179E97F0();
  OUTLINED_FUNCTION_1_19();
  sub_2179A6F48();
  if (v2)
  {
  }

LABEL_20:

  return v5;
}

uint64_t sub_2179AD040(uint64_t a1, uint64_t a2, uint64_t *a3, char a4, uint64_t a5, uint64_t a6)
{
  sub_2179A7E4C();
  v13 = v12;
  v14 = *(v12 + 16);
  if (v14 >= *(v12 + 24) >> 1)
  {
    sub_2179A7E4C();
    v13 = v32;
  }

  *(v13 + 16) = v14 + 1;
  v15 = v13 + 16 * v14;
  *(v15 + 32) = 0x455441455243;
  *(v15 + 40) = 0xE600000000000000;
  v16 = a3[3];
  v17 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v16);
  v18 = (*(v17 + 56))(v16, v17);
  v19 = *(v13 + 16);
  if (v18)
  {
    v20 = v19 + 1;
    if (v19 >= *(v13 + 24) >> 1)
    {
      sub_2179A7E4C();
      v13 = v35;
    }

    *(v13 + 16) = v20;
    v21 = v13 + 16 * v19;
    *(v21 + 32) = 0x455551494E55;
    *(v21 + 40) = 0xE600000000000000;
  }

  else
  {
    v20 = *(v13 + 16);
  }

  v22 = v20 + 1;
  if (v20 >= *(v13 + 24) >> 1)
  {
    sub_2179A7E4C();
    v13 = v33;
  }

  *(v13 + 16) = v22;
  v23 = v13 + 16 * v20;
  *(v23 + 32) = 0x5845444E49;
  *(v23 + 40) = 0xE500000000000000;
  if (a4)
  {
    v24 = v20 + 2;
    if (v24 > *(v13 + 24) >> 1)
    {
      sub_2179A7E4C();
      v13 = v36;
    }

    *(v13 + 16) = v24;
    v25 = v13 + 16 * v22;
    strcpy((v25 + 32), "IF NOT EXISTS");
    *(v25 + 46) = -4864;
  }

  sub_2179E9B10();

  v26 = *(a6 + 32);
  v27 = v26(a5, a6);
  MEMORY[0x21CEA9600](v27);

  MEMORY[0x21CEA9600](95, 0xE100000000000000);
  MEMORY[0x21CEA9600](a1, a2);
  MEMORY[0x21CEA9600](542002976, 0xE400000000000000);
  v28 = v26(a5, a6);
  MEMORY[0x21CEA9600](v28);

  MEMORY[0x21CEA9600](10272, 0xE200000000000000);
  MEMORY[0x21CEA9600](a1, a2);

  MEMORY[0x21CEA9600](15145, 0xE200000000000000);
  v29 = *(v13 + 16);
  if (v29 >= *(v13 + 24) >> 1)
  {
    sub_2179A7E4C();
    v13 = v34;
  }

  *(v13 + 16) = v29 + 1;
  v30 = v13 + 16 * v29;
  *(v30 + 32) = 0x5F7865646E69;
  *(v30 + 40) = 0xE600000000000000;
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v13;
}

uint64_t sub_2179AD384()
{
  sub_2179A5088();
  sub_2179A4B34();
  v1 = sub_2179E95F0();

  MEMORY[0x21CEA9600](59, 0xE100000000000000);

  return v1;
}

uint64_t sub_2179AD400()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2179AD43C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2179AD498()
{
  v1 = *v0;
  v2 = v0[1];
  return String.queryValue.getter();
}

void sub_2179AD4A0()
{
  if (!qword_280B1DFC8[0])
  {
    v0 = type metadata accessor for Column();
    if (!v1)
    {
      atomic_store(v0, qword_280B1DFC8);
    }
  }
}

void sub_2179AD4F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2179E9A60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2179AD54C()
{
  result = qword_280B1D8C0;
  if (!qword_280B1D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1D8C0);
  }

  return result;
}

uint64_t sub_2179AD5A0(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2179DA464(result, a2, a3 & 1);
  }

  return result;
}

void sub_2179AD5B8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_21799AC4C(255, a3);
    v4 = sub_2179E9A60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

_OWORD *sub_2179AD670(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2179AD680@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = sub_2179AAD00();
  *a2 = result;
  a2[1] = v6;
  a2[2] = v7;
  return result;
}

void sub_2179AD6B4()
{
  OUTLINED_FUNCTION_31();
  v33 = v1;
  v34 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  *(v0 + 16) = 3;
  OUTLINED_FUNCTION_21();
  v10 = *(v9 + 104);
  sub_2179E9270();
  OUTLINED_FUNCTION_16_3();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_21();
  v16 = *(v15 + 112);
  *(v0 + v16) = 0;
  OUTLINED_FUNCTION_21();
  v18 = *(v17 + 120);
  *(v0 + v18) = 0;
  OUTLINED_FUNCTION_21();
  v20 = *(v19 + 128);
  *(v0 + v20) = 0;
  OUTLINED_FUNCTION_21();
  v22 = *(v21 + 136);
  sub_2179AAEF8(0);
  v24 = v23;
  OUTLINED_FUNCTION_16_3();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);
  OUTLINED_FUNCTION_21();
  v29 = *(v28 + 144);
  OUTLINED_FUNCTION_16_3();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v24);
  *(v0 + v16) = v8;
  *(v0 + v18) = v6;
  *(v0 + v20) = v4;
  swift_beginAccess();
  sub_2179AD834(v33, v0 + v22, &qword_280B1D7F0, sub_2179AAEF8);
  swift_endAccess();
  swift_beginAccess();
  sub_2179AD834(v34, v0 + v29, &qword_280B1D7F0, sub_2179AAEF8);
  swift_endAccess();
  OUTLINED_FUNCTION_30();
}

uint64_t sub_2179AD834(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2179AD4F8(0, a3, a4);
  OUTLINED_FUNCTION_1(v6);
  (*(v7 + 40))(a2, a1);
  return a2;
}

uint64_t sub_2179AD8C0(char a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_2179A7E4C();
  v9 = v8;
  v10 = *(v8 + 16);
  v11 = v10 + 1;
  if (v10 >= *(v8 + 24) >> 1)
  {
    sub_2179A7E4C();
    v9 = v29;
  }

  *(v9 + 16) = v11;
  v12 = v9 + 16 * v10;
  *(v12 + 32) = 0x455441455243;
  *(v12 + 40) = 0xE600000000000000;
  if (a1)
  {
    if ((v10 + 2) > *(v9 + 24) >> 1)
    {
      sub_2179A7E4C();
      v9 = v35;
    }

    *(v9 + 16) = v10 + 2;
    v13 = v9 + 16 * v11;
    *(v13 + 32) = 1347241300;
    *(v13 + 40) = 0xE400000000000000;
    v11 = *(v9 + 16);
  }

  v14 = v11 + 1;
  if (v11 >= *(v9 + 24) >> 1)
  {
    sub_2179A7E4C();
    v9 = v30;
  }

  *(v9 + 16) = v14;
  v15 = v9 + 16 * v11;
  *(v15 + 32) = 0x454C424154;
  *(v15 + 40) = 0xE500000000000000;
  if (a2)
  {
    if ((v11 + 2) > *(v9 + 24) >> 1)
    {
      sub_2179A7E4C();
      v9 = v36;
    }

    *(v9 + 16) = v11 + 2;
    v16 = v9 + 16 * v14;
    strcpy((v16 + 32), "IF NOT EXISTS");
    *(v16 + 46) = -4864;
  }

  v17 = (*(a4 + 32))(a3, a4);
  v19 = v18;
  v20 = *(v9 + 16);
  if (v20 >= *(v9 + 24) >> 1)
  {
    sub_2179A7E4C();
    v9 = v31;
  }

  *(v9 + 16) = v20 + 1;
  v21 = v9 + 16 * v20;
  *(v21 + 32) = v17;
  *(v21 + 40) = v19;
  sub_2179A37DC(v9, a3);
  v22 = sub_2179A3CB4(v9, a3);
  sub_2179A922C(v22);
  sub_2179A5088();
  sub_2179A4B34();
  v23 = sub_2179E95F0();
  v25 = v24;

  MEMORY[0x21CEA9600](v23, v25);

  MEMORY[0x21CEA9600](41, 0xE100000000000000);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = *(v9 + 16);
    sub_2179A7E4C();
    v9 = v33;
  }

  v26 = *(v9 + 16);
  if (v26 >= *(v9 + 24) >> 1)
  {
    sub_2179A7E4C();
    v9 = v34;
  }

  *(v9 + 16) = v26 + 1;
  v27 = v9 + 16 * v26;
  *(v27 + 32) = 40;
  *(v27 + 40) = 0xE100000000000000;
  return v9;
}

void sub_2179ADBE4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_13_6();
  *(v0 + 16) = 4;
  *(v0 + 24) = xmmword_2179ED210;
  OUTLINED_FUNCTION_4_15(v1, v2, v3);
  v4 = OUTLINED_FUNCTION_11_7();
  sub_2179AD5A0(v4, v5, v6);
  OUTLINED_FUNCTION_23_3();
  v7 = OUTLINED_FUNCTION_9_8();
  sub_2179AD5A0(v7, v8, v9);
  OUTLINED_FUNCTION_30();
}

uint64_t sub_2179ADC44(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_2179AD5B8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2179ADCA0(char a1, uint64_t a2, char a3, void *a4, unint64_t *a5, void (*a6)(uint64_t), void (*a7)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_11();
    if (v11 != v12)
    {
      OUTLINED_FUNCTION_7_7();
      if (v11)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_10();
    }
  }

  else
  {
    v10 = a2;
  }

  v13 = a4[2];
  if (v10 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v10;
  }

  if (v14)
  {
    sub_2179AB038(0, a5, a6);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 56);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    if (v15 != a4 || &a4[7 * v13 + 4] <= v15 + 4)
    {
      memmove(v15 + 4, a4 + 4, 56 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }
}

unint64_t sub_2179ADDF8()
{
  result = qword_280B1E498[0];
  if (!qword_280B1E498[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280B1E498);
  }

  return result;
}

uint64_t Query.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t FastEntity.init<A, B, C>(_:_:_:)()
{
  sub_2179A2C2C();
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_3_12(v1, xmmword_2179ECE30);
  v1[2].n128_u64[0] = sub_2179AE120(v2);
  v1[2].n128_u64[1] = v3;
  v1[5].n128_u64[1] = sub_2179AE120(&v1[6].n128_u64[1]);
  v1[6].n128_u64[0] = v4;
  v1[9].n128_u64[0] = sub_2179AE120(v1[10].n128_u64);
  v1[9].n128_u64[1] = v5;

  *(v0 + 16) = v1;
  return v0;
}

uint64_t FastEntity.init<A, B, C, D, E>(_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_25_0();
  sub_2179A2C2C();
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_3_12(v1, xmmword_2179ECE50);
  v1[2].n128_u64[0] = sub_2179AE120(v2);
  v1[2].n128_u64[1] = v3;
  v1[5].n128_u64[1] = sub_2179AE120(&v1[6].n128_u64[1]);
  v1[6].n128_u64[0] = v4;
  v1[9].n128_u64[0] = sub_2179AE120(v1[10].n128_u64);
  v1[9].n128_u64[1] = v5;
  v1[12].n128_u64[1] = sub_2179AE120(&v1[13].n128_u64[1]);
  v1[13].n128_u64[0] = v6;
  v1[16].n128_u64[0] = sub_2179AE120(v1[17].n128_u64);
  v1[16].n128_u64[1] = v7;

  *(v0 + 16) = v1;
  return v0;
}

uint64_t FastEntity.init<A, B, C, D>(_:_:_:_:)()
{
  OUTLINED_FUNCTION_7_8();
  sub_2179A2C2C();
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_3_12(v1, xmmword_2179ECE40);
  v1[2].n128_u64[0] = sub_2179AE120(v2);
  v1[2].n128_u64[1] = v3;
  v1[5].n128_u64[1] = sub_2179AE120(&v1[6].n128_u64[1]);
  v1[6].n128_u64[0] = v4;
  v1[9].n128_u64[0] = sub_2179AE120(v1[10].n128_u64);
  v1[9].n128_u64[1] = v5;
  v1[12].n128_u64[1] = sub_2179AE120(&v1[13].n128_u64[1]);
  v1[13].n128_u64[0] = v6;

  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_2179AE120(void *a1)
{
  v3 = *v1;
  v4 = v1[2];
  v5 = v1[3];
  OUTLINED_FUNCTION_1_20();
  v6 = v1[4];
  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  a1[3] = type metadata accessor for Column();
  a1[4] = &off_282995E18;
  *a1 = v6;

  return v4;
}

uint64_t Save.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_2179AE270(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *FastColumn.__allocating_init(wrappedValue:name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4();
  result = swift_allocObject();
  result[3] = a3;
  result[4] = a1;
  result[2] = a2;
  return result;
}

uint64_t sub_2179AE2FC(uint64_t a1)
{
  sub_2179A4BDC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2179AE3B8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2179AE3F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  swift_getDynamicType();
  return (*(a3[4] + 104))(a4 + 16, a5, a6);
}

uint64_t sub_2179AE478(uint64_t a1)
{
  v2 = *(*v1 + 88);
  sub_2179A41A0(a1, *(*v1 + 80), v2);
  type metadata accessor for CreateIndexCommand();
  v3 = sub_2179E9840();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Statement();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_2179A2E44(sub_2179AE67C, v1, v3, v5, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);

  return v8;
}

uint64_t sub_2179AE5A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 + 16;
  v5 = *a1;
  v6 = *(*a2 + 80);
  v7 = *(*(*a2 + 88) + 24);
  type metadata accessor for Statement();
  v13 = 0;
  v8 = sub_2179AE69C();
  v10 = v9;
  sub_2179A70AC(v4, v12);
  result = sub_2179AC76C(&v13, v8, v10, v12);
  *a3 = result;
  return result;
}

uint64_t sub_2179AE6E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t *Create.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[8];
  v2 = v0[9];
  sub_2179AE270(v0[7]);
  return v0;
}

uint64_t Create.__deallocating_deinit()
{
  Create.deinit();

  return swift_deallocClassInstance();
}

uint64_t OUTLINED_FUNCTION_25()
{

  return swift_beginAccess();
}

uint64_t KeyValueStore.Promises.read(_:maxAge:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  sub_2179E95B0();
  OUTLINED_FUNCTION_9();
  sub_2179E93C0();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_14();
  return sub_2179E93A0();
}

void Database.read<A>(block:)(void *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = OUTLINED_FUNCTION_14();
  sub_2179AE8E4(v4, a1);
}

void sub_2179AE8E4(void (*a1)(void *__return_ptr)@<X0>, void *a2@<X8>)
{
  if (*v2)
  {
    v3 = *v2;
    sub_2179E9980();
  }

  else
  {
    a1(a2);
  }
}

uint64_t sub_2179AE974(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = KeyValueStore.read(_:maxAge:)(a6);

    v10 = v9;
    a1(&v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2179AEA70()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_2179AEA98(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 72);
  v10 = *(v4 + 48);
  v9 = *(v4 + 32);
  return sub_2179AE974(a1, a2, a3, a4, *(v4 + 56), *(v4 + 64));
}

uint64_t sub_2179AEC68(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2179AFC68();
  }

  return result;
}

uint64_t sub_2179AEC80(uint64_t a1, uint64_t a2)
{
  sub_2179ABAD0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2179AED08(uint64_t a1, uint64_t a2)
{
  sub_2179ABAD0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2179AED6C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v73 = a5;
  v80 = a4;
  v81 = a1;
  v6 = *a2;
  v83 = *(*a2 + 80);
  v7 = v6[11];
  v82 = v6[12];
  v8 = v6[13];
  v9 = v6[14];
  v100 = v83;
  v101 = v7;
  v102 = v82;
  v103 = v8;
  v104 = v9;
  v10 = type metadata accessor for KVSEntry();
  v11 = sub_2179E9A60();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v69 = v60 - v14;
  v77 = *(v10 - 8);
  v15 = *(v77 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v87 = v60 - v17;
  v62 = *(v7 - 8);
  v18 = *(v62 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v70 = v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v84 = v60 - v21;
  v75 = sub_2179E9A60();
  v61 = *(v75 - 8);
  v22 = *(v61 + 64);
  v23 = MEMORY[0x28223BE20](v75);
  v85 = v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v74 = v60 - v25;
  swift_beginAccess();
  v88 = a2;
  v26 = a2[6];

  sub_2179E9530();

  v89 = v83;
  v90 = v7;
  v76 = v7;
  v91 = v82;
  v92 = v8;
  v72 = v8;
  v71 = v9;
  v93 = v9;
  v94 = v80;
  v27 = v86;
  sub_2179E9570();
  v28 = v81;
  sub_2179E9360();

  v29 = *v28;

  v68 = v10;
  v30 = sub_2179E9350();

  if (!*(v30 + 16))
  {
  }

  v31 = sub_2179B455C(v88);
  if (v27)
  {
  }

  v32 = v31;
  v33 = type metadata accessor for KVSEntity();

  v34 = sub_2179E97C0();

  v105 = v34;
  v67 = v33;
  if (v34 == sub_2179E9820())
  {
  }

  v60[0] = v30;
  v60[1] = 0;
  v80 = v32 + 32;
  v79 = (v61 + 16);
  v66 = (v62 + 32);
  v65 = (v62 + 16);
  v36 = (v77 + 16);
  v63 = (v77 + 8);
  v62 += 8;
  v77 = v61 + 8;
  v37 = v76;
  v38 = v87;
  v39 = v75;
  v40 = v74;
  v78 = v32;
  v64 = v36;
  while (1)
  {
    v41 = sub_2179E9800();
    sub_2179E97E0();
    if ((v41 & 1) == 0)
    {
      break;
    }

    v42 = (v80 + 24 * v34);
    v43 = *v42;
    v44 = v42[1];
    v45 = v40;
    v46 = v42[2];

    sub_2179E9830();
    sub_2179BAC64(v88, v46, v45);
    v47 = v85;
    (*v79)(v85, v45, v39);
    if (__swift_getEnumTagSinglePayload(v47, 1, v37) == 1)
    {
      v86 = v46;
      v48 = *v77;
      (*v77)(v47, v39);
      v97 = v43;
      v98 = v44;
      v99 = v86;
      sub_2179E9840();
      sub_2179E9810();
      v48(v45, v39);
      v38 = v87;
      v40 = v45;
    }

    else
    {
      v49 = v84;
      (*v66)(v84, v47, v37);
      v50 = v70;
      (*v65)(v70, v49, v37);
      v86 = v44;
      sub_2179B6450(v43, v44, v46, v50, v37, v38);
      result = swift_beginAccess();
      v51 = *(v43 + 32);
      if (!v51)
      {
        goto LABEL_17;
      }

      v52 = v38;
      v53 = *(v43 + 24);
      v54 = *v64;
      v55 = v69;
      v56 = v68;
      (*v64)(v69, v52, v68);
      __swift_storeEnumTagSinglePayload(v55, 0, 1, v56);
      v95 = v53;
      v96 = v51;
      swift_beginAccess();
      sub_2179E95B0();

      sub_2179E95D0();
      result = swift_endAccess();
      v57 = *(v43 + 32);
      if (!v57)
      {
        goto LABEL_18;
      }

      v58 = *(v43 + 24);
      v54(v55, v87, v56);
      __swift_storeEnumTagSinglePayload(v55, 0, 1, v56);
      v97 = v58;
      v98 = v57;

      sub_2179E95D0();

      v38 = v87;
      (*v63)(v87, v56);
      v37 = v76;
      (*v62)(v84, v76);
      v40 = v74;
      v39 = v75;
      (*v77)(v74, v75);
    }

    v59 = sub_2179E9820();
    v34 = v105;
    if (v105 == v59)
    {
    }
  }

  result = sub_2179E9B20();
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}