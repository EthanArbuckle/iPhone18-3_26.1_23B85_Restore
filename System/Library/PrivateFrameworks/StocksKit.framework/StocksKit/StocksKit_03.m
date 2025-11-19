uint64_t sub_26BB67C60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BB67CC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_26BB67D28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Currency();
    sub_26BB67BBC(255, &qword_28158BBB8, MEMORY[0x277D834F8]);
    v8 = v7;
    v9 = sub_26BB680AC(qword_28158BC38, type metadata accessor for Currency);
    v10 = a3(a1, v6, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_26BB67DF8()
{
  if (!qword_28158B238)
  {
    type metadata accessor for Currency();
    sub_26BB680AC(qword_28158BC38, type metadata accessor for Currency);
    v0 = sub_26BB7D078();
    if (!v1)
    {
      atomic_store(v0, &qword_28158B238);
    }
  }
}

unint64_t sub_26BB67E8C()
{
  result = qword_28043A3D0;
  if (!qword_28043A3D0)
  {
    sub_26BB681B0(255, &qword_28043A3C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A3D0);
  }

  return result;
}

void sub_26BB67F08()
{
  if (!qword_28043A3E0)
  {
    type metadata accessor for Currency();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28043A3E0);
    }
  }
}

uint64_t sub_26BB67F74(uint64_t a1)
{
  sub_26BB680F4(0, &qword_28043A3D8, sub_26BB67F08, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26BB68000()
{
  if (!qword_28158B1F8)
  {
    sub_26BB7BE78();
    sub_26BB5F5BC();
    sub_26BB680AC(&qword_28158BB10, MEMORY[0x277CC95F0]);
    v0 = sub_26BB7D1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_28158B1F8);
    }
  }
}

uint64_t sub_26BB680AC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_26BB680F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26BB68158()
{
  if (!qword_28043A410)
  {
    v0 = sub_26BB7D078();
    if (!v1)
    {
      atomic_store(v0, &qword_28043A410);
    }
  }
}

void sub_26BB681B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for CurrencyConversions.ConversionStep(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for CurrencyConversions.ConversionStep(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_26BB682B0()
{
  sub_26BB7CD88();
}

uint64_t sub_26BB683E0()
{
  sub_26BB7CD88();
}

uint64_t Stock.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Stock.symbol.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Stock.name.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Stock.exchange.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t Stock.symbolDisplayName.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t Stock.shortName.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t Stock.compactName.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t sub_26BB686D8()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6D614E74726F6873;
  if (v1 != 6)
  {
    v3 = 0x4E746361706D6F63;
  }

  v4 = 1701869940;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1701667182;
  if (v1 != 2)
  {
    v5 = 0x65676E6168637865;
  }

  if (*v0)
  {
    v2 = 0x6C6F626D7973;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26BB687C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BB69B98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BB687F8(uint64_t a1)
{
  v2 = sub_26BB69640();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB68834(uint64_t a1)
{
  v2 = sub_26BB69640();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Stock.encode(to:)(void *a1)
{
  sub_26BB696E8(0, &qword_28043A420, MEMORY[0x277D84538]);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v23 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v30 = v1[3];
  v31 = v10;
  v11 = v1[4];
  v28 = v1[5];
  v29 = v11;
  v12 = v1[6];
  v26 = v1[7];
  v27 = v12;
  v24 = *(v1 + 64);
  v13 = v1[10];
  v23[2] = v1[9];
  v23[3] = v13;
  v14 = v1[12];
  v23[0] = v1[11];
  v23[1] = v14;
  v15 = v1[14];
  v25 = v1[13];
  v16 = a1[3];
  v17 = a1[4];
  v18 = a1;
  v20 = v19;
  __swift_project_boxed_opaque_existential_1(v18, v16);
  sub_26BB69640();
  sub_26BB7D488();
  v41 = 0;
  v21 = v32;
  sub_26BB7D308();
  if (v21)
  {
    return (*(v4 + 8))(v7, v20);
  }

  v32 = v15;
  v40 = 1;
  sub_26BB7D308();
  v39 = 2;
  v31 = v7;
  sub_26BB7D308();
  v38 = 3;
  sub_26BB7D308();
  v37 = v24;
  v36 = 4;
  sub_26BB69694();
  sub_26BB7D328();
  v35 = 5;
  sub_26BB7D308();
  v34 = 6;
  sub_26BB7D308();
  v33 = 7;
  sub_26BB7D308();
  return (*(v4 + 8))(v31, v20);
}

uint64_t Stock.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = *(v0 + 64);
  v10 = v0[10];
  v11 = v0[11];
  v15 = v0[9];
  v16 = v0[12];
  v12 = v0[13];
  v13 = v0[14];
  sub_26BB7CD88();
  sub_26BB7CD88();
  sub_26BB7CD88();
  sub_26BB7CD88();
  sub_26BB7CD88();

  sub_26BB7CD88();
  sub_26BB7CD88();

  return sub_26BB7CD88();
}

uint64_t Stock.hashValue.getter()
{
  sub_26BB7D418();
  Stock.hash(into:)();
  return sub_26BB7D458();
}

uint64_t Stock.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_26BB696E8(0, &qword_28043A438, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v35 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB69640();
  sub_26BB7D478();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v54[0]) = 0;
  v12 = sub_26BB7D268();
  v65 = v13;
  LOBYTE(v54[0]) = 1;
  v14 = sub_26BB7D268();
  v45 = v15;
  v43 = v14;
  LOBYTE(v54[0]) = 2;
  v42 = sub_26BB7D268();
  v44 = v16;
  LOBYTE(v54[0]) = 3;
  *&v41 = sub_26BB7D268();
  *(&v41 + 1) = v17;
  LOBYTE(v46) = 4;
  sub_26BB6974C();
  sub_26BB7D288();
  v18 = LOBYTE(v54[0]);
  LOBYTE(v54[0]) = 5;
  v37 = sub_26BB7D268();
  v38 = v18;
  v40 = v19;
  LOBYTE(v54[0]) = 6;
  v20 = sub_26BB7D268();
  v39 = v21;
  v63 = 7;
  v22 = sub_26BB7D268();
  v36 = v23;
  v24 = v22;
  (*(v7 + 8))(v10, v6);
  *&v46 = v12;
  v25 = v65;
  *(&v46 + 1) = v65;
  *&v47 = v43;
  v26 = v45;
  *(&v47 + 1) = v45;
  *&v48 = v42;
  *(&v48 + 1) = v44;
  v49 = v41;
  v27 = v20;
  v35 = v20;
  v28 = *(&v41 + 1);
  LOBYTE(v50) = v38;
  *(&v50 + 1) = *v64;
  DWORD1(v50) = *&v64[3];
  *(&v50 + 1) = v37;
  *&v51 = v40;
  *(&v51 + 1) = v27;
  *&v52 = v39;
  *(&v52 + 1) = v24;
  v29 = v36;
  v53 = v36;
  v30 = v52;
  *(a2 + 112) = v36;
  v31 = v47;
  *a2 = v46;
  *(a2 + 16) = v31;
  v32 = v49;
  *(a2 + 32) = v48;
  *(a2 + 48) = v32;
  v33 = v50;
  *(a2 + 80) = v51;
  *(a2 + 96) = v30;
  *(a2 + 64) = v33;
  sub_26BB697A0(&v46, v54);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v54[0] = v12;
  v54[1] = v25;
  v54[2] = v43;
  v54[3] = v26;
  v54[4] = v42;
  v54[5] = v44;
  v54[6] = v41;
  v54[7] = v28;
  v55 = v38;
  *v56 = *v64;
  *&v56[3] = *&v64[3];
  v57 = v37;
  v58 = v40;
  v59 = v35;
  v60 = v39;
  v61 = v24;
  v62 = v29;
  return sub_26BB697D8(v54);
}

uint64_t sub_26BB69380@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_26BB6938C()
{
  sub_26BB7D418();
  Stock.hash(into:)();
  return sub_26BB7D458();
}

uint64_t sub_26BB693D0()
{
  sub_26BB7D418();
  Stock.hash(into:)();
  return sub_26BB7D458();
}

uint64_t _s9StocksKit5StockV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v27 = *(a1 + 56);
  v28 = *(a1 + 48);
  v26 = *(a1 + 64);
  v23 = *(a1 + 80);
  v24 = *(a1 + 72);
  v19 = *(a1 + 96);
  v20 = *(a1 + 88);
  v15 = *(a1 + 112);
  v16 = *(a1 + 104);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v10 = *(a2 + 56);
  v25 = *(a2 + 64);
  v21 = *(a2 + 80);
  v22 = *(a2 + 72);
  v17 = *(a2 + 96);
  v18 = *(a2 + 88);
  v13 = *(a2 + 112);
  v14 = *(a2 + 104);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_26BB7D378() & 1) == 0 || (v2 != v7 || v3 != v6) && (sub_26BB7D378() & 1) == 0 || (v4 != v8 || v5 != v9) && (sub_26BB7D378() & 1) == 0 || (v28 != v11 || v27 != v10) && (sub_26BB7D378() & 1) == 0 || (sub_26BB77CCC(v26, v25) & 1) == 0 || (v24 != v22 || v23 != v21) && (sub_26BB7D378() & 1) == 0 || (v20 != v18 || v19 != v17) && (sub_26BB7D378() & 1) == 0)
  {
    return 0;
  }

  if (v16 == v14 && v15 == v13)
  {
    return 1;
  }

  return sub_26BB7D378();
}

unint64_t sub_26BB69640()
{
  result = qword_28043A428;
  if (!qword_28043A428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A428);
  }

  return result;
}

unint64_t sub_26BB69694()
{
  result = qword_28043A430;
  if (!qword_28043A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A430);
  }

  return result;
}

void sub_26BB696E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_26BB69640();
    v7 = a3(a1, &type metadata for Stock.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_26BB6974C()
{
  result = qword_28043A440;
  if (!qword_28043A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A440);
  }

  return result;
}

unint64_t sub_26BB6980C()
{
  result = qword_28043A448;
  if (!qword_28043A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A448);
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_26BB6988C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_26BB698D4(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StockType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StockType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26BB69A94()
{
  result = qword_28043A450;
  if (!qword_28043A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A450);
  }

  return result;
}

unint64_t sub_26BB69AEC()
{
  result = qword_28043A458;
  if (!qword_28043A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A458);
  }

  return result;
}

unint64_t sub_26BB69B44()
{
  result = qword_28043A460;
  if (!qword_28043A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A460);
  }

  return result;
}

uint64_t sub_26BB69B98(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26BB7D378() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65676E6168637865 && a2 == 0xE800000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026BB83730 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D614E74726F6873 && a2 == 0xE900000000000065 || (sub_26BB7D378() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4E746361706D6F63 && a2 == 0xEB00000000656D61)
  {

    return 7;
  }

  else
  {
    v6 = sub_26BB7D378();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_26BB69E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26BB7C048();
  v5 = *(v4 - 8);
  v155 = v4;
  v156 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v154 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v153 = &v105 - v9;
  v152 = sub_26BB7C078();
  v10 = *(v152 - 1);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v152);
  v151 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v150 = &v105 - v14;
  sub_26BB6AC08(0, &qword_28043A468, MEMORY[0x277CC9A70]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v105 - v17;
  sub_26BB6AC08(0, &qword_28158C328, MEMORY[0x277CC9260]);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v105 - v24;
  sub_26BB6AC08(0, &qword_28043A128, MEMORY[0x277CC9578]);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v105 - v31;
  v135 = sub_26BB7C0E8();
  v132 = v33;
  v131 = sub_26BB7C0A8();
  v130 = v34;
  v127 = sub_26BB7C0D8();
  v126 = v35;
  v123 = sub_26BB7C108();
  v122 = v36;
  v121 = sub_26BB7C138();
  v118 = v37;
  v117 = sub_26BB7C128();
  v116 = v38;
  v115 = sub_26BB7C1D8();
  v114 = v39;
  v113 = sub_26BB7C118();
  v112 = v40;
  v111 = sub_26BB7C1B8();
  v110 = v41;
  v109 = sub_26BB7C1C8();
  v108 = v42;
  v107 = sub_26BB7C188();
  v106 = v43;
  v140 = v32;
  sub_26BB7C1A8();
  v141 = v30;
  sub_26BB7C168();
  v120 = sub_26BB7C0C8();
  v119 = v44;
  v142 = v25;
  sub_26BB7C088();
  v143 = v23;
  sub_26BB7C198();
  v144 = v18;
  sub_26BB7C158();
  v139 = sub_26BB7C148();
  v138 = v45;
  v137 = sub_26BB7C0F8();
  v136 = v46;
  v134 = sub_26BB7C1E8();
  v133 = v47;
  v129 = sub_26BB7C1F8();
  v128 = v48;
  v125 = sub_26BB7C098();
  v124 = v49;
  v50 = sub_26BB7C178();
  v51 = *(v50 + 16);
  v52 = MEMORY[0x277D84F90];
  v145 = a1;
  v146 = a2;
  if (v51)
  {
    v157 = MEMORY[0x277D84F90];
    sub_26BB63DC4(0, v51, 0);
    v53 = v157;
    v148 = *(v10 + 16);
    v54 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v105 = v50;
    v55 = v50 + v54;
    v147 = *(v10 + 72);
    v149 = v10 + 16;
    v56 = (v10 + 8);
    v57 = v150;
    do
    {
      v58 = v152;
      v59 = v148;
      v148(v57, v55, v152);
      v60 = v151;
      v59(v151, v57, v58);
      v61 = sub_26BB7C038();
      v63 = v62;
      sub_26BB7C028();
      v65 = v64;
      v66 = *v56;
      (*v56)(v60, v58);
      v66(v57, v58);
      v157 = v53;
      v68 = *(v53 + 2);
      v67 = *(v53 + 3);
      v69 = v53;
      if (v68 >= v67 >> 1)
      {
        sub_26BB63DC4((v67 > 1), v68 + 1, 1);
        v69 = v157;
      }

      *(v69 + 2) = v68 + 1;
      v70 = &v69[24 * v68];
      *(v70 + 4) = v61;
      *(v70 + 5) = v63;
      *(v70 + 6) = v65;
      v55 += v147;
      --v51;
      v53 = v69;
    }

    while (v51);

    a1 = v145;
    a2 = v146;
    v52 = MEMORY[0x277D84F90];
  }

  else
  {

    v53 = MEMORY[0x277D84F90];
  }

  v71 = sub_26BB7C0B8();
  v72 = *(v71 + 16);
  if (v72)
  {
    v150 = v53;
    v157 = v52;
    sub_26BB63D94(0, v72, 0);
    v73 = v157;
    v74 = *(v156 + 16);
    v75 = *(v156 + 80);
    v149 = v71;
    v76 = v71 + ((v75 + 32) & ~v75);
    v151 = *(v156 + 72);
    v152 = v74;
    v156 += 16;
    v77 = (v156 - 8);
    v78 = v153;
    do
    {
      v79 = v155;
      v80 = v152;
      (v152)(v78, v76, v155);
      v81 = v154;
      v80(v154, v78, v79);
      v82 = sub_26BB7C038();
      v84 = v83;
      sub_26BB7C028();
      v86 = v85;
      v87 = *v77;
      (*v77)(v81, v79);
      v87(v78, v79);
      v157 = v73;
      v89 = *(v73 + 16);
      v88 = *(v73 + 24);
      if (v89 >= v88 >> 1)
      {
        sub_26BB63D94((v88 > 1), v89 + 1, 1);
        v73 = v157;
      }

      *(v73 + 16) = v89 + 1;
      v90 = (v73 + 24 * v89);
      v90[4] = v82;
      v90[5] = v84;
      v90[6] = v86;
      v76 += v151;
      --v72;
    }

    while (v72);
    v91 = sub_26BB7C208();
    (*(*(v91 - 8) + 8))(v145, v91);

    a2 = v146;
    v53 = v150;
  }

  else
  {

    v92 = sub_26BB7C208();
    (*(*(v92 - 8) + 8))(a1, v92);
    v73 = MEMORY[0x277D84F90];
  }

  *a2 = v135;
  *(a2 + 8) = v132 & 1;
  *(a2 + 16) = v131;
  *(a2 + 24) = v130 & 1;
  *(a2 + 32) = v127;
  *(a2 + 40) = v126 & 1;
  *(a2 + 48) = v123;
  *(a2 + 56) = v122 & 1;
  *(a2 + 64) = v121;
  *(a2 + 72) = v118 & 1;
  *(a2 + 80) = v117;
  *(a2 + 88) = v116 & 1;
  *(a2 + 96) = v115;
  *(a2 + 104) = v114 & 1;
  *(a2 + 112) = v113;
  *(a2 + 120) = v112 & 1;
  *(a2 + 128) = v111;
  *(a2 + 136) = v110 & 1;
  *(a2 + 144) = v109;
  *(a2 + 152) = v108 & 1;
  *(a2 + 160) = v107;
  *(a2 + 168) = v106 & 1;
  v93 = type metadata accessor for QuoteDetail();
  v94 = MEMORY[0x277CC9578];
  sub_26BB6DABC(v140, a2 + v93[15], &qword_28043A128, MEMORY[0x277CC9578]);
  sub_26BB6DABC(v141, a2 + v93[16], &qword_28043A128, v94);
  v95 = (a2 + v93[17]);
  v96 = v119;
  *v95 = v120;
  v95[1] = v96;
  v97 = MEMORY[0x277CC9260];
  sub_26BB6DABC(v142, a2 + v93[18], &qword_28158C328, MEMORY[0x277CC9260]);
  sub_26BB6DABC(v143, a2 + v93[19], &qword_28158C328, v97);
  result = sub_26BB6DABC(v144, a2 + v93[20], &qword_28043A468, MEMORY[0x277CC9A70]);
  v99 = (a2 + v93[21]);
  v100 = v138;
  *v99 = v139;
  v99[1] = v100;
  v101 = v136;
  v99[2] = v137;
  v99[3] = v101;
  v102 = v133;
  v99[4] = v134;
  v99[5] = v102;
  v103 = v128;
  v99[6] = v129;
  v99[7] = v103;
  v104 = v124;
  v99[8] = v125;
  v99[9] = v104;
  v99[10] = v53;
  v99[11] = v73;
  return result;
}

uint64_t QuoteDetail.dayOpenPrice.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t QuoteDetail.dayLowPrice.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t QuoteDetail.dayHighPrice.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t QuoteDetail.yearLowPrice.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t QuoteDetail.yearHighPrice.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t QuoteDetail.dividendYield.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t QuoteDetail.volume.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t QuoteDetail.averageVolume.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t QuoteDetail.priceEarningsRatio.getter()
{
  result = *(v0 + 128);
  v2 = *(v0 + 136);
  return result;
}

uint64_t QuoteDetail.beta.getter()
{
  result = *(v0 + 144);
  v2 = *(v0 + 152);
  return result;
}

uint64_t QuoteDetail.earningsPerShare.getter()
{
  result = *(v0 + 160);
  v2 = *(v0 + 168);
  return result;
}

uint64_t type metadata accessor for QuoteDetail()
{
  result = qword_28043A4A0;
  if (!qword_28043A4A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t QuoteDetail.currencyCode.getter()
{
  v1 = (v0 + *(type metadata accessor for QuoteDetail() + 68));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_26BB6AAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_26BB6AC08(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26BB7CFE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t QuoteDetail.fundMetadata.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for QuoteDetail() + 84));
  v4 = v3[3];
  v12 = v3[2];
  v13 = v4;
  v5 = v3[5];
  v14 = v3[4];
  v6 = v14;
  v15 = v5;
  v8 = v3[1];
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  a1[2] = v12;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v5;
  *a1 = v7;
  a1[1] = v8;
  return sub_26BB6AAC8(v11, &v10, &unk_28043A470, &type metadata for FundMetadata, sub_26BB49994);
}

unint64_t sub_26BB6ACEC(char a1)
{
  result = 0x506E65704F796164;
  switch(a1)
  {
    case 1:
      result = 0x7250776F4C796164;
      break;
    case 2:
      result = 0x5068676948796164;
      break;
    case 3:
      result = 0x50776F4C72616579;
      break;
    case 4:
      result = 0x6867694872616579;
      break;
    case 5:
      result = 0x646E656469766964;
      break;
    case 6:
      result = 0x656D756C6F76;
      break;
    case 7:
      result = 0x5665676172657661;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 1635018082;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x73676E696E726165;
      break;
    case 13:
      result = 0x79636E6572727563;
      break;
    case 14:
      result = 0x55736C6961746564;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0x695474656B72616DLL;
      break;
    case 17:
      result = 0x6174654D646E7566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26BB6AF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BB6E06C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BB6AF58(uint64_t a1)
{
  v2 = sub_26BB6D950();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB6AF94(uint64_t a1)
{
  v2 = sub_26BB6D950();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t QuoteDetail.encode(to:)(void *a1)
{
  v3 = v1;
  sub_26BB6D9F8(0, &qword_28043A478, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v50 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB6D950();
  sub_26BB7D488();
  v12 = *v3;
  v13 = *(v3 + 8);
  LOBYTE(v59[0]) = 0;
  sub_26BB7D2D8();
  if (!v2)
  {
    v14 = v3[2];
    v15 = *(v3 + 24);
    LOBYTE(v59[0]) = 1;
    sub_26BB7D2D8();
    v16 = v3[4];
    v17 = *(v3 + 40);
    LOBYTE(v59[0]) = 2;
    sub_26BB7D2D8();
    v18 = v3[6];
    v19 = *(v3 + 56);
    LOBYTE(v59[0]) = 3;
    sub_26BB7D2D8();
    v20 = v3[8];
    v21 = *(v3 + 72);
    LOBYTE(v59[0]) = 4;
    sub_26BB7D2D8();
    v22 = v3[10];
    v23 = *(v3 + 88);
    LOBYTE(v59[0]) = 5;
    sub_26BB7D2D8();
    v24 = v3[12];
    v25 = *(v3 + 104);
    LOBYTE(v59[0]) = 6;
    sub_26BB7D2E8();
    v26 = v3[14];
    v27 = *(v3 + 120);
    LOBYTE(v59[0]) = 7;
    sub_26BB7D2E8();
    v28 = v3[16];
    v29 = *(v3 + 136);
    LOBYTE(v59[0]) = 8;
    sub_26BB7D2D8();
    v31 = v3[18];
    v32 = *(v3 + 152);
    LOBYTE(v59[0]) = 9;
    sub_26BB7D2D8();
    v33 = v3[20];
    v34 = *(v3 + 168);
    LOBYTE(v59[0]) = 10;
    sub_26BB7D2D8();
    v51 = type metadata accessor for QuoteDetail();
    v35 = v51[15];
    LOBYTE(v59[0]) = 11;
    sub_26BB7BE48();
    sub_26BB6E754(&qword_28158BB28, MEMORY[0x277CC9578]);
    sub_26BB7D2F8();
    v36 = v51[16];
    LOBYTE(v59[0]) = 12;
    sub_26BB7D2F8();
    v37 = (v3 + v51[17]);
    v38 = *v37;
    v39 = v37[1];
    LOBYTE(v59[0]) = 13;
    sub_26BB7D2C8();
    v40 = v51[18];
    LOBYTE(v59[0]) = 14;
    sub_26BB7BDB8();
    sub_26BB6E754(&qword_28158BB38, MEMORY[0x277CC9260]);
    sub_26BB7D2F8();
    v41 = v51[19];
    LOBYTE(v59[0]) = 15;
    sub_26BB7D2F8();
    v42 = v51[20];
    v65 = 16;
    sub_26BB7BFC8();
    sub_26BB6E754(&qword_28043A150, MEMORY[0x277CC9A70]);
    sub_26BB7D2F8();
    v43 = (v3 + v51[21]);
    v44 = v43[3];
    v45 = v43[1];
    v60 = v43[2];
    v61 = v44;
    v46 = v43[3];
    v47 = v43[5];
    v62 = v43[4];
    v63 = v47;
    v48 = v43[1];
    v59[0] = *v43;
    v59[1] = v48;
    v55 = v60;
    v56 = v46;
    v49 = v43[5];
    v57 = v62;
    v58 = v49;
    v53 = v59[0];
    v54 = v45;
    v64 = 17;
    sub_26BB6AAC8(v59, v52, &unk_28043A470, &type metadata for FundMetadata, sub_26BB49994);
    sub_26BB6D9A4();
    sub_26BB7D2F8();
    v52[2] = v55;
    v52[3] = v56;
    v52[4] = v57;
    v52[5] = v58;
    v52[0] = v53;
    v52[1] = v54;
    sub_26BB6DA5C(v52, &unk_28043A470, &type metadata for FundMetadata, sub_26BB49994);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t QuoteDetail.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  sub_26BB6AC08(0, &qword_28043A468, MEMORY[0x277CC9A70]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v50 - v5;
  sub_26BB6AC08(0, &qword_28158C328, MEMORY[0x277CC9260]);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v55 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - v10;
  sub_26BB6AC08(0, &qword_28043A128, MEMORY[0x277CC9578]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v50 - v17;
  sub_26BB6D9F8(0, &qword_28043A490, MEMORY[0x277D844C8]);
  v58 = v19;
  v56 = *(v19 - 8);
  v20 = *(v56 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v50 - v21;
  v23 = type metadata accessor for QuoteDetail();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1[3];
  v27 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_26BB6D950();
  v57 = v22;
  v29 = v59;
  sub_26BB7D478();
  if (v29)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v60);
  }

  v59 = v23;
  LOBYTE(v61) = 0;
  *v26 = sub_26BB7D238();
  v26[8] = v30 & 1;
  LOBYTE(v61) = 1;
  *(v26 + 2) = sub_26BB7D238();
  v26[24] = v31 & 1;
  LOBYTE(v61) = 2;
  *(v26 + 4) = sub_26BB7D238();
  v26[40] = v32 & 1;
  LOBYTE(v61) = 3;
  *(v26 + 6) = sub_26BB7D238();
  v26[56] = v33 & 1;
  LOBYTE(v61) = 4;
  *(v26 + 8) = sub_26BB7D238();
  v26[72] = v34 & 1;
  LOBYTE(v61) = 5;
  *(v26 + 10) = sub_26BB7D238();
  v26[88] = v35 & 1;
  LOBYTE(v61) = 6;
  *(v26 + 12) = sub_26BB7D248();
  v26[104] = v36 & 1;
  LOBYTE(v61) = 7;
  v37 = sub_26BB7D248();
  v52 = v18;
  v51 = v16;
  v50 = v11;
  *(v26 + 14) = v37;
  v26[120] = v38 & 1;
  LOBYTE(v61) = 8;
  *(v26 + 16) = sub_26BB7D238();
  v26[136] = v39 & 1;
  LOBYTE(v61) = 9;
  *(v26 + 18) = sub_26BB7D238();
  v26[152] = v40 & 1;
  LOBYTE(v61) = 10;
  *(v26 + 20) = sub_26BB7D238();
  v26[168] = v41 & 1;
  sub_26BB7BE48();
  LOBYTE(v61) = 11;
  sub_26BB6E754(&qword_28158BB20, MEMORY[0x277CC9578]);
  sub_26BB7D258();
  sub_26BB6DABC(v52, &v26[v59[15]], &qword_28043A128, MEMORY[0x277CC9578]);
  LOBYTE(v61) = 12;
  sub_26BB7D258();
  sub_26BB6DABC(v51, &v26[v59[16]], &qword_28043A128, MEMORY[0x277CC9578]);
  LOBYTE(v61) = 13;
  v42 = sub_26BB7D228();
  v43 = &v26[v59[17]];
  *v43 = v42;
  v43[1] = v44;
  sub_26BB7BDB8();
  LOBYTE(v61) = 14;
  sub_26BB6E754(&qword_28158BB30, MEMORY[0x277CC9260]);
  sub_26BB7D258();
  sub_26BB6DABC(v50, &v26[v59[18]], &qword_28158C328, MEMORY[0x277CC9260]);
  LOBYTE(v61) = 15;
  sub_26BB7D258();
  sub_26BB6DABC(v55, &v26[v59[19]], &qword_28158C328, MEMORY[0x277CC9260]);
  sub_26BB7BFC8();
  LOBYTE(v61) = 16;
  sub_26BB6E754(&qword_28043A170, MEMORY[0x277CC9A70]);
  sub_26BB7D258();
  sub_26BB6DABC(v54, &v26[v59[20]], &qword_28043A468, MEMORY[0x277CC9A70]);
  v67 = 17;
  sub_26BB6DB28();
  sub_26BB7D258();
  (*(v56 + 8))(v57, v58);
  v45 = &v26[v59[21]];
  v46 = v64;
  *(v45 + 2) = v63;
  *(v45 + 3) = v46;
  v47 = v66;
  *(v45 + 4) = v65;
  *(v45 + 5) = v47;
  v48 = v62;
  *v45 = v61;
  *(v45 + 1) = v48;
  sub_26BB6DB7C(v26, v53);
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  return sub_26BB6DBE0(v26);
}

BOOL _s9StocksKit11QuoteDetailV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v152 = sub_26BB7BFC8();
  v150 = *(v152 - 8);
  v4 = *(v150 + 64);
  MEMORY[0x28223BE20](v152);
  v147 = &v140[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x277CC9A70];
  sub_26BB6AC08(0, &qword_28043A468, MEMORY[0x277CC9A70]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v149 = &v140[-v9];
  sub_26BB6E63C(0, &qword_28043A4D0, &qword_28043A468, v6, sub_26BB6AC08);
  v148 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v154 = &v140[-v12];
  v160 = sub_26BB7BDB8();
  v158 = *(v160 - 8);
  v13 = *(v158 + 64);
  MEMORY[0x28223BE20](v160);
  v151 = &v140[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x277CC9260];
  sub_26BB6AC08(0, &qword_28158C328, MEMORY[0x277CC9260]);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v153 = &v140[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v155 = &v140[-v20];
  sub_26BB6E63C(0, &qword_28043A0F8, &qword_28158C328, v15, sub_26BB6AC08);
  v157 = v21;
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v156 = &v140[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v159 = &v140[-v25];
  v26 = sub_26BB7BE48();
  v161 = *(v26 - 8);
  v27 = *(v161 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v140[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = MEMORY[0x277CC9578];
  sub_26BB6AC08(0, &qword_28043A128, MEMORY[0x277CC9578]);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v35 = &v140[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v33);
  v37 = &v140[-v36];
  sub_26BB6E63C(0, &qword_28043A1D0, &qword_28043A128, v30, sub_26BB6AC08);
  v39 = v38;
  v40 = *(*(v38 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v140[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v41);
  v45 = &v140[-v44];
  v46 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v46 = 1;
    }

    if (v46)
    {
      return 0;
    }
  }

  v47 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v47 = 1;
    }

    if (v47)
    {
      return 0;
    }
  }

  v48 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v48 = 1;
    }

    if (v48)
    {
      return 0;
    }
  }

  v49 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v49 = 1;
    }

    if (v49)
    {
      return 0;
    }
  }

  v50 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 64) != *(a2 + 64))
    {
      v50 = 1;
    }

    if (v50)
    {
      return 0;
    }
  }

  v51 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 80) != *(a2 + 80))
    {
      v51 = 1;
    }

    if (v51)
    {
      return 0;
    }
  }

  v52 = *(a2 + 104);
  if (*(a1 + 104))
  {
    if (!*(a2 + 104))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 96) != *(a2 + 96))
    {
      v52 = 1;
    }

    if (v52)
    {
      return 0;
    }
  }

  v53 = *(a2 + 120);
  if (*(a1 + 120))
  {
    if (!*(a2 + 120))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 112) != *(a2 + 112))
    {
      v53 = 1;
    }

    if (v53)
    {
      return 0;
    }
  }

  v54 = *(a2 + 136);
  if (*(a1 + 136))
  {
    if (!*(a2 + 136))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 128) != *(a2 + 128))
    {
      v54 = 1;
    }

    if (v54)
    {
      return 0;
    }
  }

  v55 = *(a2 + 152);
  if (*(a1 + 152))
  {
    if (!*(a2 + 152))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 144) != *(a2 + 144))
    {
      v55 = 1;
    }

    if (v55)
    {
      return 0;
    }
  }

  v56 = *(a2 + 168);
  if (*(a1 + 168))
  {
    if (!*(a2 + 168))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 160) != *(a2 + 160))
    {
      v56 = 1;
    }

    if (v56)
    {
      return 0;
    }
  }

  v57 = type metadata accessor for QuoteDetail();
  v58 = *(v39 + 48);
  v145 = *(v57 + 60);
  v146 = v58;
  v144 = MEMORY[0x277CC9578];
  v142 = v57;
  v143 = sub_26BB6AC08;
  sub_26BB6AAC8(a1 + v145, v45, &qword_28043A128, MEMORY[0x277CC9578], sub_26BB6AC08);
  sub_26BB6AAC8(a2 + v145, &v146[v45], &qword_28043A128, v144, v143);
  v144 = *(v161 + 48);
  v145 = v161 + 48;
  if (v144(v45, 1, v26) == 1)
  {
    if (v144(&v146[v45], 1, v26) == 1)
    {
      sub_26BB6DA5C(v45, &qword_28043A128, MEMORY[0x277CC9578], sub_26BB6AC08);
      goto LABEL_74;
    }

LABEL_72:
    v59 = &qword_28043A1D0;
    v60 = &qword_28043A128;
    v61 = MEMORY[0x277CC9578];
    v62 = sub_26BB6AC08;
    v63 = v45;
LABEL_80:
    sub_26BB6E6A4(v63, v59, v60, v61, v62);
    return 0;
  }

  sub_26BB6AAC8(v45, v37, &qword_28043A128, MEMORY[0x277CC9578], sub_26BB6AC08);
  if (v144(&v146[v45], 1, v26) == 1)
  {
    (*(v161 + 8))(v37, v26);
    goto LABEL_72;
  }

  (*(v161 + 32))(v29, &v146[v45], v26);
  sub_26BB6E754(&qword_28043A1D8, MEMORY[0x277CC9578]);
  v141 = sub_26BB7CD28();
  v64 = *(v161 + 8);
  v143 = (v161 + 8);
  v146 = v64;
  (v64)(v29, v26);
  (v146)(v37, v26);
  sub_26BB6DA5C(v45, &qword_28043A128, MEMORY[0x277CC9578], sub_26BB6AC08);
  if ((v141 & 1) == 0)
  {
    return 0;
  }

LABEL_74:
  v146 = v142[16];
  v65 = *(v39 + 48);
  v66 = MEMORY[0x277CC9578];
  sub_26BB6AAC8(&v146[a1], v43, &qword_28043A128, MEMORY[0x277CC9578], sub_26BB6AC08);
  v67 = &v146[a2];
  v146 = v65;
  sub_26BB6AAC8(v67, &v65[v43], &qword_28043A128, v66, sub_26BB6AC08);
  v68 = v144;
  if (v144(v43, 1, v26) == 1)
  {
    if (v68(&v146[v43], 1, v26) == 1)
    {
      sub_26BB6DA5C(v43, &qword_28043A128, MEMORY[0x277CC9578], sub_26BB6AC08);
      goto LABEL_83;
    }

    goto LABEL_79;
  }

  sub_26BB6AAC8(v43, v35, &qword_28043A128, MEMORY[0x277CC9578], sub_26BB6AC08);
  if (v68(&v146[v43], 1, v26) == 1)
  {
    (*(v161 + 8))(v35, v26);
LABEL_79:
    v59 = &qword_28043A1D0;
    v60 = &qword_28043A128;
    v61 = MEMORY[0x277CC9578];
    v62 = sub_26BB6AC08;
    v63 = v43;
    goto LABEL_80;
  }

  v70 = v161;
  (*(v161 + 32))(v29, &v146[v43], v26);
  sub_26BB6E754(&qword_28043A1D8, MEMORY[0x277CC9578]);
  v71 = sub_26BB7CD28();
  v72 = *(v70 + 8);
  v72(v29, v26);
  v72(v35, v26);
  sub_26BB6DA5C(v43, &qword_28043A128, MEMORY[0x277CC9578], sub_26BB6AC08);
  if ((v71 & 1) == 0)
  {
    return 0;
  }

LABEL_83:
  v73 = v142[17];
  v74 = (a1 + v73);
  v75 = *(a1 + v73 + 8);
  v76 = (a2 + v73);
  v77 = v76[1];
  if (v75)
  {
    if (!v77 || (*v74 != *v76 || v75 != v77) && (sub_26BB7D378() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v77)
  {
    return 0;
  }

  v78 = v142[18];
  v79 = *(v157 + 48);
  v80 = MEMORY[0x277CC9260];
  v81 = v159;
  sub_26BB6AAC8(a1 + v78, v159, &qword_28158C328, MEMORY[0x277CC9260], sub_26BB6AC08);
  sub_26BB6AAC8(a2 + v78, &v81[v79], &qword_28158C328, v80, sub_26BB6AC08);
  v161 = *(v158 + 48);
  if ((v161)(v81, 1, v160) == 1)
  {
    if ((v161)(&v159[v79], 1, v160) == 1)
    {
      sub_26BB6DA5C(v159, &qword_28158C328, MEMORY[0x277CC9260], sub_26BB6AC08);
      goto LABEL_97;
    }

    goto LABEL_95;
  }

  v82 = v159;
  sub_26BB6AAC8(v159, v155, &qword_28158C328, MEMORY[0x277CC9260], sub_26BB6AC08);
  if ((v161)(&v82[v79], 1, v160) == 1)
  {
    (*(v158 + 8))(v155, v160);
LABEL_95:
    v59 = &qword_28043A0F8;
    v60 = &qword_28158C328;
    v61 = MEMORY[0x277CC9260];
    v62 = sub_26BB6AC08;
    v63 = v159;
    goto LABEL_80;
  }

  v83 = v158;
  v84 = &v159[v79];
  v85 = v151;
  v86 = v160;
  (*(v158 + 32))(v151, v84, v160);
  sub_26BB6E754(&qword_28043A108, MEMORY[0x277CC9260]);
  v87 = v155;
  v88 = sub_26BB7CD28();
  v89 = *(v83 + 8);
  v89(v85, v86);
  v89(v87, v86);
  sub_26BB6DA5C(v159, &qword_28158C328, MEMORY[0x277CC9260], sub_26BB6AC08);
  if ((v88 & 1) == 0)
  {
    return 0;
  }

LABEL_97:
  v90 = v142[19];
  v91 = v156;
  v92 = *(v157 + 48);
  v93 = MEMORY[0x277CC9260];
  sub_26BB6AAC8(a1 + v90, v156, &qword_28158C328, MEMORY[0x277CC9260], sub_26BB6AC08);
  v94 = a2 + v90;
  v95 = v92;
  sub_26BB6AAC8(v94, &v91[v92], &qword_28158C328, v93, sub_26BB6AC08);
  if ((v161)(v91, 1, v160) == 1)
  {
    if ((v161)(&v156[v92], 1, v160) == 1)
    {
      sub_26BB6DA5C(v156, &qword_28158C328, MEMORY[0x277CC9260], sub_26BB6AC08);
      goto LABEL_104;
    }

    goto LABEL_102;
  }

  v96 = v156;
  sub_26BB6AAC8(v156, v153, &qword_28158C328, MEMORY[0x277CC9260], sub_26BB6AC08);
  if ((v161)(&v96[v92], 1, v160) == 1)
  {
    (*(v158 + 8))(v153, v160);
LABEL_102:
    v59 = &qword_28043A0F8;
    v60 = &qword_28158C328;
    v61 = MEMORY[0x277CC9260];
    v62 = sub_26BB6AC08;
    v63 = v156;
    goto LABEL_80;
  }

  v97 = v158;
  v98 = v156;
  v99 = v151;
  v100 = v160;
  (*(v158 + 32))(v151, &v156[v95], v160);
  sub_26BB6E754(&qword_28043A108, MEMORY[0x277CC9260]);
  v101 = v153;
  v102 = sub_26BB7CD28();
  v103 = *(v97 + 8);
  v103(v99, v100);
  v103(v101, v100);
  sub_26BB6DA5C(v98, &qword_28158C328, MEMORY[0x277CC9260], sub_26BB6AC08);
  if ((v102 & 1) == 0)
  {
    return 0;
  }

LABEL_104:
  v104 = v142[20];
  v105 = *(v148 + 48);
  v106 = MEMORY[0x277CC9A70];
  v107 = v154;
  sub_26BB6AAC8(a1 + v104, v154, &qword_28043A468, MEMORY[0x277CC9A70], sub_26BB6AC08);
  sub_26BB6AAC8(a2 + v104, &v107[v105], &qword_28043A468, v106, sub_26BB6AC08);
  v108 = *(v150 + 48);
  if (v108(v107, 1, v152) == 1)
  {
    if (v108(&v154[v105], 1, v152) == 1)
    {
      sub_26BB6DA5C(v154, &qword_28043A468, MEMORY[0x277CC9A70], sub_26BB6AC08);
      goto LABEL_111;
    }

    goto LABEL_109;
  }

  v109 = v154;
  sub_26BB6AAC8(v154, v149, &qword_28043A468, MEMORY[0x277CC9A70], sub_26BB6AC08);
  if (v108(&v109[v105], 1, v152) == 1)
  {
    (*(v150 + 8))(v149, v152);
LABEL_109:
    v59 = &qword_28043A4D0;
    v60 = &qword_28043A468;
    v61 = MEMORY[0x277CC9A70];
    v62 = sub_26BB6AC08;
    v63 = v154;
    goto LABEL_80;
  }

  v110 = v150;
  v111 = v154;
  v112 = &v154[v105];
  v113 = v147;
  v114 = v152;
  (*(v150 + 32))(v147, v112, v152);
  sub_26BB6E754(&qword_28043A4E0, MEMORY[0x277CC9A70]);
  v115 = v149;
  v116 = sub_26BB7CD28();
  v117 = *(v110 + 8);
  v117(v113, v114);
  v117(v115, v114);
  sub_26BB6DA5C(v111, &qword_28043A468, MEMORY[0x277CC9A70], sub_26BB6AC08);
  if ((v116 & 1) == 0)
  {
    return 0;
  }

LABEL_111:
  v118 = (a1 + v142[21]);
  v119 = v118[1];
  v120 = v118[3];
  v199 = v118[2];
  v200 = v120;
  v121 = v118[3];
  v122 = v118[5];
  v201 = v118[4];
  v202 = v122;
  v123 = v118[1];
  v198[0] = *v118;
  v198[1] = v123;
  v124 = (a2 + v142[21]);
  v125 = v124[1];
  v203[0] = *v124;
  v203[1] = v125;
  v126 = v124[3];
  v127 = v124[5];
  v206 = v124[4];
  v207 = v127;
  v128 = v124[3];
  v129 = *v124;
  v130 = v124[1];
  v204 = v124[2];
  v205 = v128;
  v195 = v199;
  v196 = v121;
  v197 = v201;
  v193 = v198[0];
  v194 = v119;
  v190 = v204;
  v191 = v126;
  v131 = v202;
  v192 = v206;
  v188 = v129;
  v189 = v130;
  v132 = v207;
  if (v202)
  {
    v133 = v118[3];
    v178 = v118[2];
    v179 = v133;
    v180 = v118[4];
    v134 = v118[1];
    v176 = *v118;
    v177 = v134;
    v181 = v202;
    v172 = v178;
    v173 = v133;
    v174 = v180;
    v175 = v202;
    v170 = v176;
    v171 = v134;
    if (v207)
    {
      v135 = v124[3];
      v166 = v124[2];
      v167 = v135;
      v168 = v124[4];
      v136 = v124[1];
      v164 = *v124;
      v165 = v136;
      v169 = v207;
      v137 = _s9StocksKit12FundMetadataV2eeoiySbAC_ACtFZ_0(&v170, &v164);
      v162[2] = v166;
      v162[3] = v167;
      v162[4] = v168;
      v162[5] = v169;
      v162[0] = v164;
      v162[1] = v165;
      sub_26BB6AAC8(v198, v163, &unk_28043A470, &type metadata for FundMetadata, sub_26BB49994);
      sub_26BB6AAC8(v203, v163, &unk_28043A470, &type metadata for FundMetadata, sub_26BB49994);
      sub_26BB6AAC8(&v176, v163, &unk_28043A470, &type metadata for FundMetadata, sub_26BB49994);
      sub_26BB6E700(v162);
      v163[2] = v172;
      v163[3] = v173;
      v163[4] = v174;
      v163[5] = v175;
      v163[0] = v170;
      v163[1] = v171;
      sub_26BB6E700(v163);
      v166 = v195;
      v167 = v196;
      v168 = v197;
      v164 = v193;
      v165 = v194;
      v169 = v131;
      sub_26BB6DA5C(&v164, &unk_28043A470, &type metadata for FundMetadata, sub_26BB49994);
      return (v137 & 1) != 0;
    }

    v166 = v178;
    v167 = v179;
    v168 = v180;
    v169 = v181;
    v164 = v176;
    v165 = v177;
    sub_26BB6AAC8(v198, v163, &unk_28043A470, &type metadata for FundMetadata, sub_26BB49994);
    sub_26BB6AAC8(v203, v163, &unk_28043A470, &type metadata for FundMetadata, sub_26BB49994);
    sub_26BB6AAC8(&v176, v163, &unk_28043A470, &type metadata for FundMetadata, sub_26BB49994);
    sub_26BB6E700(&v164);
    goto LABEL_118;
  }

  if (v207)
  {
    sub_26BB6AAC8(v198, &v176, &unk_28043A470, &type metadata for FundMetadata, sub_26BB49994);
    sub_26BB6AAC8(v203, &v176, &unk_28043A470, &type metadata for FundMetadata, sub_26BB49994);
LABEL_118:
    v178 = v195;
    v179 = v196;
    v180 = v197;
    v176 = v193;
    v177 = v194;
    v181 = v131;
    v184 = v190;
    v185 = v191;
    v186 = v192;
    v182 = v188;
    v183 = v189;
    v187 = v132;
    v59 = &unk_28043A4D8;
    v60 = &unk_28043A470;
    v61 = &type metadata for FundMetadata;
    v62 = sub_26BB49994;
    v63 = &v176;
    goto LABEL_80;
  }

  v138 = v118[3];
  v178 = v118[2];
  v179 = v138;
  v180 = v118[4];
  v139 = v118[1];
  v176 = *v118;
  v177 = v139;
  *&v181 = 0;
  *(&v181 + 1) = *(&v202 + 1);
  sub_26BB6AAC8(v198, &v170, &unk_28043A470, &type metadata for FundMetadata, sub_26BB49994);
  sub_26BB6AAC8(v203, &v170, &unk_28043A470, &type metadata for FundMetadata, sub_26BB49994);
  sub_26BB6DA5C(&v176, &unk_28043A470, &type metadata for FundMetadata, sub_26BB49994);
  return 1;
}

unint64_t sub_26BB6D950()
{
  result = qword_28043A480;
  if (!qword_28043A480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A480);
  }

  return result;
}

unint64_t sub_26BB6D9A4()
{
  result = qword_28043A488;
  if (!qword_28043A488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A488);
  }

  return result;
}

void sub_26BB6D9F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_26BB6D950();
    v7 = a3(a1, &type metadata for QuoteDetail.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_26BB6DA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_26BB6DABC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_26BB6AC08(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_26BB6DB28()
{
  result = qword_28043A498;
  if (!qword_28043A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A498);
  }

  return result;
}

uint64_t sub_26BB6DB7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuoteDetail();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BB6DBE0(uint64_t a1)
{
  v2 = type metadata accessor for QuoteDetail();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26BB6DC64()
{
  sub_26BB49994(319, &qword_28043A198);
  if (v0 <= 0x3F)
  {
    sub_26BB49994(319, &qword_28043A4B0);
    if (v1 <= 0x3F)
    {
      sub_26BB6AC08(319, &qword_28043A128, MEMORY[0x277CC9578]);
      if (v2 <= 0x3F)
      {
        sub_26BB49994(319, &qword_28043A1A0);
        if (v3 <= 0x3F)
        {
          sub_26BB6AC08(319, &qword_28158C328, MEMORY[0x277CC9260]);
          if (v4 <= 0x3F)
          {
            sub_26BB6AC08(319, &qword_28043A468, MEMORY[0x277CC9A70]);
            if (v5 <= 0x3F)
            {
              sub_26BB49994(319, &qword_28043A470);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for QuoteDetail.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for QuoteDetail.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26BB6DF68()
{
  result = qword_28043A4B8;
  if (!qword_28043A4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A4B8);
  }

  return result;
}

unint64_t sub_26BB6DFC0()
{
  result = qword_28043A4C0;
  if (!qword_28043A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A4C0);
  }

  return result;
}

unint64_t sub_26BB6E018()
{
  result = qword_28043A4C8;
  if (!qword_28043A4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A4C8);
  }

  return result;
}

uint64_t sub_26BB6E06C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x506E65704F796164 && a2 == 0xEC00000065636972;
  if (v4 || (sub_26BB7D378() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7250776F4C796164 && a2 == 0xEB00000000656369 || (sub_26BB7D378() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5068676948796164 && a2 == 0xEC00000065636972 || (sub_26BB7D378() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x50776F4C72616579 && a2 == 0xEC00000065636972 || (sub_26BB7D378() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6867694872616579 && a2 == 0xED00006563697250 || (sub_26BB7D378() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646E656469766964 && a2 == 0xED0000646C656959 || (sub_26BB7D378() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D756C6F76 && a2 == 0xE600000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5665676172657661 && a2 == 0xED0000656D756C6FLL || (sub_26BB7D378() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026BB83750 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1635018082 && a2 == 0xE400000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026BB83770 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026BB833E0 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x73676E696E726165 && a2 == 0xEF65746144646E45 || (sub_26BB7D378() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (sub_26BB7D378() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x55736C6961746564 && a2 == 0xEA00000000004C52 || (sub_26BB7D378() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026BB83790 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x695474656B72616DLL && a2 == 0xEE00656E6F5A656DLL || (sub_26BB7D378() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6174654D646E7566 && a2 == 0xEC00000061746164)
  {

    return 17;
  }

  else
  {
    v6 = sub_26BB7D378();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

void sub_26BB6E63C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_26BB6E6A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_26BB6E63C(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_26BB6E754(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BB6E79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v78 = a1;
  v77 = sub_26BB7BE48();
  v7 = *(v77 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v77);
  v76 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_26BB7C598();
  v10 = *(v75 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v75);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v74 = &v63 - v15;
  v16 = type metadata accessor for StockChart.Entry(0);
  v72 = *(v16 - 8);
  v73 = v16;
  v17 = *(v72 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_26BB7C5A8();
  v21 = *(v20 + 16);
  if (v21)
  {
    v64 = a4;
    v65 = a3;
    v83 = MEMORY[0x277D84F90];
    sub_26BB63DF4(0, v21, 0);
    v22 = v83;
    v24 = *(v10 + 16);
    v23 = v10 + 16;
    v25 = (*(v23 + 64) + 32) & ~*(v23 + 64);
    v63 = v20;
    v26 = v20 + v25;
    v68 = *(v23 + 56);
    v69 = v24;
    v66 = (v23 - 8);
    v67 = (v7 + 8);
    v70 = v23;
    v71 = a2;
    do
    {
      v79 = v21;
      v80 = v22;
      v27 = v74;
      v28 = v75;
      v29 = v69;
      v69(v74, v26, v75);
      v29(v14, v27, v28);
      v81 = v78;
      v82 = a2;

      MEMORY[0x26D68DCA0](14906, 0xE200000000000000);
      v30 = v76;
      sub_26BB7C538();
      sub_26BB70704(&qword_28158C320, MEMORY[0x277CC9578]);
      v31 = v77;
      v32 = sub_26BB7D348();
      MEMORY[0x26D68DCA0](v32);

      (*v67)(v30, v31);
      v33 = v82;
      *v19 = v81;
      v19[1] = v33;
      v34 = v73;
      v35 = v19 + v73[5];
      sub_26BB7C538();
      v36 = sub_26BB7C568();
      v37 = v19 + v34[6];
      *v37 = v36;
      v37[8] = v38 & 1;
      v39 = sub_26BB7C578();
      v40 = v19 + v34[7];
      *v40 = v39;
      v40[8] = v41 & 1;
      v42 = sub_26BB7C558();
      v43 = v19 + v34[8];
      *v43 = v42;
      v43[8] = v44 & 1;
      v45 = sub_26BB7C548();
      v46 = v19 + v34[9];
      *v46 = v45;
      v46[8] = v47 & 1;
      v48 = sub_26BB7C588();
      LOBYTE(v29) = v49;
      v50 = *v66;
      (*v66)(v14, v28);
      v51 = v19 + v34[10];
      *v51 = v48;
      v51[8] = v29 & 1;
      v52 = v28;
      v22 = v80;
      v50(v27, v52);
      v83 = v22;
      v54 = *(v22 + 16);
      v53 = *(v22 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_26BB63DF4(v53 > 1, v54 + 1, 1);
        v22 = v83;
      }

      *(v22 + 16) = v54 + 1;
      sub_26BB715D0(v19, v22 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v54, type metadata accessor for StockChart.Entry);
      v26 += v68;
      v21 = v79 - 1;
      a2 = v71;
    }

    while (v79 != 1);

    a4 = v64;
    a3 = v65;
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  *a4 = v22;
  v55 = type metadata accessor for StockChart(0);
  v56 = a4 + v55[5];
  sub_26BB7C5B8();
  v57 = sub_26BB7C518();
  v58 = a4 + v55[6];
  *v58 = v57;
  v58[8] = v59 & 1;
  v60 = a4 + v55[7];
  sub_26BB7C528();
  v61 = sub_26BB7C5C8();
  return (*(*(v61 - 8) + 8))(a3, v61);
}

uint64_t StockChart.Entry.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t StockChart.Entry.referenceDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StockChart.Entry(0) + 20);
  v4 = sub_26BB7BE48();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StockChart.Entry.close.getter()
{
  v1 = (v0 + *(type metadata accessor for StockChart.Entry(0) + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t StockChart.Entry.high.getter()
{
  v1 = (v0 + *(type metadata accessor for StockChart.Entry(0) + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t StockChart.Entry.low.getter()
{
  v1 = (v0 + *(type metadata accessor for StockChart.Entry(0) + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t StockChart.Entry.volume.getter()
{
  v1 = (v0 + *(type metadata accessor for StockChart.Entry(0) + 40));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_26BB6EE64()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 7827308;
  if (v1 != 5)
  {
    v3 = 0x656D756C6F76;
  }

  v4 = 0x65736F6C63;
  if (v1 != 3)
  {
    v4 = 1751607656;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x636E657265666572;
  if (v1 != 1)
  {
    v5 = 1852141679;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26BB6EF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BB71214(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BB6EF50(uint64_t a1)
{
  v2 = sub_26BB706B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB6EF8C(uint64_t a1)
{
  v2 = sub_26BB706B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StockChart.Entry.encode(to:)(void *a1)
{
  v3 = v1;
  sub_26BB70AF0(0, &qword_28043A4E8, sub_26BB706B0, &type metadata for StockChart.Entry.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v32 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB706B0();
  sub_26BB7D488();
  v12 = *v3;
  v13 = v3[1];
  v39 = 0;
  sub_26BB7D308();
  if (!v2)
  {
    v14 = type metadata accessor for StockChart.Entry(0);
    v15 = v14[5];
    v38 = 1;
    sub_26BB7BE48();
    sub_26BB70704(&qword_28158BB28, MEMORY[0x277CC9578]);
    sub_26BB7D328();
    v16 = v3 + v14[6];
    v17 = *v16;
    v18 = v16[8];
    v37 = 2;
    sub_26BB7D2D8();
    v19 = v3 + v14[7];
    v20 = *v19;
    v21 = v19[8];
    v36 = 3;
    sub_26BB7D2D8();
    v22 = v3 + v14[8];
    v23 = *v22;
    v24 = v22[8];
    v35 = 4;
    sub_26BB7D2D8();
    v25 = v3 + v14[9];
    v26 = *v25;
    v27 = v25[8];
    v34 = 5;
    sub_26BB7D2D8();
    v28 = v3 + v14[10];
    v29 = *v28;
    v30 = v28[8];
    v33 = 6;
    sub_26BB7D2D8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t StockChart.Entry.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_26BB7BE48();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB70AF0(0, &qword_28043A4F8, sub_26BB706B0, &type metadata for StockChart.Entry.CodingKeys, MEMORY[0x277D844C8]);
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - v9;
  v11 = type metadata accessor for StockChart.Entry(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB706B0();
  v49 = v10;
  v16 = v50;
  sub_26BB7D478();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v17 = v6;
  v50 = v11;
  v18 = v45;
  v19 = v46;
  v57 = 0;
  v20 = v14;
  *v14 = sub_26BB7D268();
  v14[1] = v21;
  v56 = 1;
  sub_26BB70704(&qword_28158BB20, MEMORY[0x277CC9578]);
  sub_26BB7D288();
  v22 = v50;
  (*(v18 + 32))(v14 + *(v50 + 20), v17, v19);
  v55 = 2;
  v23 = sub_26BB7D238();
  v24 = a1;
  v25 = v20 + *(v22 + 24);
  *v25 = v23;
  *(v25 + 8) = v26 & 1;
  v54 = 3;
  v27 = sub_26BB7D238();
  v28 = v22;
  v29 = v20 + *(v22 + 28);
  *v29 = v27;
  *(v29 + 8) = v30 & 1;
  v53 = 4;
  v31 = v48;
  v32 = sub_26BB7D238();
  v33 = v20 + *(v28 + 32);
  *v33 = v32;
  *(v33 + 8) = v34 & 1;
  v52 = 5;
  v35 = sub_26BB7D238();
  v36 = v20 + *(v28 + 36);
  *v36 = v35;
  *(v36 + 8) = v37 & 1;
  v51 = 6;
  v38 = sub_26BB7D238();
  v39 = v28;
  LOBYTE(v28) = v40;
  (*(v47 + 8))(v49, v31);
  v41 = v20 + *(v39 + 40);
  *v41 = v38;
  *(v41 + 8) = v28 & 1;
  sub_26BB7076C(v20, v44, type metadata accessor for StockChart.Entry);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  return sub_26BB70BE8(v20, type metadata accessor for StockChart.Entry);
}

uint64_t StockChart.Feature.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26BB7D1F8();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_26BB6F89C()
{
  sub_26BB7D418();
  sub_26BB7CD88();
  return sub_26BB7D458();
}

uint64_t sub_26BB6F900()
{
  sub_26BB7D418();
  sub_26BB7CD88();
  return sub_26BB7D458();
}

uint64_t sub_26BB6F94C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26BB7D1F8();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_26BB6FA24(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t StockChart.marketTimeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StockChart(0) + 28);
  v4 = sub_26BB7BFC8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *StockChart.features.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v2 - 1;
  v4 = type metadata accessor for StockChart.Entry(0);
  v5 = v1 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)) + *(*(v4 - 8) + 72) * v3 + *(v4 + 40);
  if ((*(v5 + 8) & 1) != 0 || *v5 <= 0.0)
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
    return &unk_287C831D0;
  }
}

uint64_t sub_26BB6FB90()
{
  v1 = 0x73656972746E65;
  v2 = 0x73756F6976657270;
  if (*v0 != 2)
  {
    v2 = 0x695474656B72616DLL;
  }

  if (*v0)
  {
    v1 = 0x676E615265746164;
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

uint64_t sub_26BB6FC28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BB71454(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BB6FC5C(uint64_t a1)
{
  v2 = sub_26BB709B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB6FC98(uint64_t a1)
{
  v2 = sub_26BB709B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StockChart.encode(to:)(void *a1)
{
  v3 = v1;
  sub_26BB70AF0(0, &qword_28043A510, sub_26BB709B4, &type metadata for StockChart.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v19[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB709B4();
  sub_26BB7D488();
  v20 = *v3;
  v19[15] = 0;
  sub_26BB70A08();
  sub_26BB70B58(&qword_28043A528, &qword_28043A530);
  sub_26BB7D328();
  if (!v2)
  {
    v12 = type metadata accessor for StockChart(0);
    v13 = v12[5];
    v19[14] = 1;
    sub_26BB707D4();
    sub_26BB70A60(&qword_28043A538, &qword_28158BB28);
    sub_26BB7D328();
    v14 = v3 + v12[6];
    v15 = *v14;
    v16 = v14[8];
    v19[13] = 2;
    sub_26BB7D2D8();
    v17 = v12[7];
    v19[12] = 3;
    sub_26BB7BFC8();
    sub_26BB70704(&qword_28043A150, MEMORY[0x277CC9A70]);
    sub_26BB7D328();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t StockChart.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = sub_26BB7BFC8();
  v32 = *(v34 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB707D4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB70AF0(0, &qword_28043A540, sub_26BB709B4, &type metadata for StockChart.CodingKeys, MEMORY[0x277D844C8]);
  v37 = v9;
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  v13 = type metadata accessor for StockChart(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_26BB709B4();
  v38 = v12;
  v19 = v39;
  sub_26BB7D478();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v40);
  }

  v20 = v35;
  v21 = v36;
  sub_26BB70A08();
  v44 = 0;
  sub_26BB70B58(&qword_28043A548, &qword_28043A550);
  sub_26BB7D288();
  v39 = v45;
  v31 = v16;
  *v16 = v45;
  v43 = 1;
  sub_26BB70A60(&qword_28043A558, &qword_28158BB20);
  sub_26BB7D288();
  v22 = v13;
  sub_26BB715D0(v8, &v31[*(v13 + 20)], sub_26BB707D4);
  v42 = 2;
  v23 = sub_26BB7D238();
  v24 = &v31[*(v13 + 24)];
  *v24 = v23;
  v24[8] = v25 & 1;
  v41 = 3;
  sub_26BB70704(&qword_28043A170, MEMORY[0x277CC9A70]);
  v26 = v34;
  sub_26BB7D288();
  (*(v20 + 8))(v38, v37);
  v28 = *(v22 + 28);
  v29 = v31;
  (*(v32 + 32))(&v31[v28], v21, v26);
  sub_26BB7076C(v29, v33, type metadata accessor for StockChart);
  __swift_destroy_boxed_opaque_existential_1Tm(v40);
  return sub_26BB70BE8(v29, type metadata accessor for StockChart);
}

BOOL _s9StocksKit10StockChartV5EntryV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_26BB7D378() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for StockChart.Entry(0);
  v6 = v5[5];
  if ((sub_26BB7BE08() & 1) == 0)
  {
    return 0;
  }

  v7 = v5[6];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = *(a2 + v7 + 8);
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (*v8 != *v10)
    {
      LOBYTE(v11) = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v12 = v5[7];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = *(a2 + v12 + 8);
  if (v14)
  {
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    if (*v13 != *v15)
    {
      LOBYTE(v16) = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  v17 = v5[8];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = *(a2 + v17 + 8);
  if (v19)
  {
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    if (*v18 != *v20)
    {
      LOBYTE(v21) = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  v22 = v5[9];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = *(a2 + v22 + 8);
  if (v24)
  {
    if (!v26)
    {
      return 0;
    }
  }

  else
  {
    if (*v23 != *v25)
    {
      LOBYTE(v26) = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  v27 = v5[10];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = *(a2 + v27 + 8);
  if ((v29 & 1) == 0)
  {
    if (*v28 != *v30)
    {
      v31 = 1;
    }

    return (v31 & 1) == 0;
  }

  return (v31 & 1) != 0;
}

unint64_t sub_26BB706B0()
{
  result = qword_28043A4F0;
  if (!qword_28043A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A4F0);
  }

  return result;
}

uint64_t sub_26BB70704(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BB7076C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_26BB707D4()
{
  if (!qword_28043A500)
  {
    sub_26BB7BE48();
    sub_26BB70704(&qword_28043A508, MEMORY[0x277CC9578]);
    v0 = sub_26BB7CD18();
    if (!v1)
    {
      atomic_store(v0, &qword_28043A500);
    }
  }
}

uint64_t _s9StocksKit10StockChartV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if (sub_26BB74104(*a1, *a2))
  {
    v4 = type metadata accessor for StockChart(0);
    v5 = v4[5];
    sub_26BB7BE48();
    sub_26BB70704(&qword_28043A1D8, MEMORY[0x277CC9578]);
    if (sub_26BB7CD28())
    {
      sub_26BB707D4();
      v7 = *(v6 + 36);
      if (sub_26BB7CD28())
      {
        v8 = v4[6];
        v9 = (a1 + v8);
        v10 = *(a1 + v8 + 8);
        v11 = (a2 + v8);
        v12 = *(a2 + v8 + 8);
        if (v10)
        {
          if (!v12)
          {
            return 0;
          }

LABEL_10:
          v14 = v4[7];

          JUMPOUT(0x26D68CEC0);
        }

        if (*v9 != *v11)
        {
          LOBYTE(v12) = 1;
        }

        if ((v12 & 1) == 0)
        {
          goto LABEL_10;
        }
      }
    }
  }

  return 0;
}

unint64_t sub_26BB709B4()
{
  result = qword_28043A518;
  if (!qword_28043A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A518);
  }

  return result;
}

void sub_26BB70A08()
{
  if (!qword_28043A520)
  {
    type metadata accessor for StockChart.Entry(255);
    v0 = sub_26BB7CE38();
    if (!v1)
    {
      atomic_store(v0, &qword_28043A520);
    }
  }
}

uint64_t sub_26BB70A60(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_26BB707D4();
    sub_26BB70704(a2, MEMORY[0x277CC9578]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_26BB70AF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_26BB70B58(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_26BB70A08();
    sub_26BB70704(a2, type metadata accessor for StockChart.Entry);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26BB70BE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26BB70C4C()
{
  result = qword_28043A560;
  if (!qword_28043A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A560);
  }

  return result;
}

void sub_26BB70CC8()
{
  sub_26BB70A08();
  if (v0 <= 0x3F)
  {
    sub_26BB707D4();
    if (v1 <= 0x3F)
    {
      sub_26BB70D7C();
      if (v2 <= 0x3F)
      {
        sub_26BB7BFC8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26BB70D7C()
{
  if (!qword_28043A198)
  {
    v0 = sub_26BB7CFE8();
    if (!v1)
    {
      atomic_store(v0, &qword_28043A198);
    }
  }
}

void sub_26BB70DF4()
{
  sub_26BB7BE48();
  if (v0 <= 0x3F)
  {
    sub_26BB70D7C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for StockChart.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StockChart.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26BB71008()
{
  result = qword_28043A588;
  if (!qword_28043A588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A588);
  }

  return result;
}

unint64_t sub_26BB71060()
{
  result = qword_28043A590;
  if (!qword_28043A590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A590);
  }

  return result;
}

unint64_t sub_26BB710B8()
{
  result = qword_28043A598;
  if (!qword_28043A598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A598);
  }

  return result;
}

unint64_t sub_26BB71110()
{
  result = qword_28043A5A0;
  if (!qword_28043A5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A5A0);
  }

  return result;
}

unint64_t sub_26BB71168()
{
  result = qword_28043A5A8;
  if (!qword_28043A5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A5A8);
  }

  return result;
}

unint64_t sub_26BB711C0()
{
  result = qword_28043A5B0;
  if (!qword_28043A5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A5B0);
  }

  return result;
}

uint64_t sub_26BB71214(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26BB7D378() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xED00006574614465 || (sub_26BB7D378() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1852141679 && a2 == 0xE400000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65736F6C63 && a2 == 0xE500000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1751607656 && a2 == 0xE400000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7827308 && a2 == 0xE300000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D756C6F76 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_26BB7D378();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_26BB71454(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656972746E65 && a2 == 0xE700000000000000;
  if (v4 || (sub_26BB7D378() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E615265746164 && a2 == 0xE900000000000065 || (sub_26BB7D378() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73756F6976657270 && a2 == 0xED000065736F6C43 || (sub_26BB7D378() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x695474656B72616DLL && a2 == 0xEE00656E6F5A656DLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_26BB7D378();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_26BB715D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BB71638()
{
  v1 = *v0;
  v2 = sub_26BB7C268();
  v53 = *(v2 - 8);
  v3 = *(v53 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v52 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - v6;
  sub_26BB71E54();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_26BB7BFF8();
  v11 = *(v55 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v55);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v50 = &v48 - v16;
  v17 = sub_26BB7C008();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB7C798();
  sub_26BB71EAC();
  sub_26BB7C7D8();

  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == *MEMORY[0x277D690E8])
  {
    v23 = [objc_opt_self() mainBundle];
    v24 = [v23 bundleIdentifier];

    if (v24)
    {
      v25 = sub_26BB7CD48();
      v27 = v26;

      v29 = v0[13];
      v28 = v0[14];
      v49 = v0;
      __swift_project_boxed_opaque_existential_1(v0 + 10, v29);
      sub_26BB7C4A8();
      v30 = sub_26BB7C248();
      v31 = *(v53 + 8);
      v48 = v2;
      v31(v7, v2);
      v32 = *(v30 + 16);
      v33 = v55;
      if (v32)
      {
        v34 = 0;
        v54 = v11 + 16;
        while (v34 < *(v30 + 16))
        {
          (*(v11 + 16))(v15, v30 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v34, v33);
          if (sub_26BB7BFD8() == v25 && v35 == v27)
          {

LABEL_17:
            v38 = v51;
            (*(v11 + 32))(v51, v15, v33);
            v37 = 0;
            v0 = v49;
            goto LABEL_18;
          }

          v36 = sub_26BB7D378();

          if (v36)
          {

            v33 = v55;
            goto LABEL_17;
          }

          ++v34;
          v33 = v55;
          (*(v11 + 8))(v15, v55);
          if (v32 == v34)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_24;
      }

LABEL_10:

      v37 = 1;
      v0 = v49;
      v38 = v51;
LABEL_18:
      (*(v11 + 56))(v38, v37, 1, v33);
      if ((*(v11 + 48))(v38, 1, v33) != 1)
      {
        v45 = v50;
        (*(v11 + 32))(v50, v38, v33);
        v46 = sub_26BB7BFE8();
        (*(v11 + 8))(v45, v33);
        v39 = v46;
        return v39 & 1;
      }

      sub_26BB71F00(v38);
      v2 = v48;
    }

    v40 = objc_opt_self();
    v41 = v2;
    v42 = v0[14];
    __swift_project_boxed_opaque_existential_1(v0 + 10, v0[13]);
    v43 = v52;
    sub_26BB7C4A8();
    v44 = sub_26BB7C258();
    (*(v53 + 8))(v43, v41);
    v39 = [v40 enabledForCurrentLevel_];
    return v39 & 1;
  }

  if (v22 == *MEMORY[0x277D690F0])
  {
    v39 = 1;
    return v39 & 1;
  }

  if (v22 == *MEMORY[0x277D690F8])
  {
    v39 = 0;
    return v39 & 1;
  }

LABEL_24:
  result = sub_26BB7D368();
  __break(1u);
  return result;
}

uint64_t sub_26BB71C44(uint64_t *a1)
{
  *(v1 + 72) = 0;
  *(v1 + 16) = 0;
  *(v1 + 23) = 0;
  sub_26BB282D8(a1, v1 + 80);
  sub_26BB282D8(a1, &v8);
  v3 = sub_26BB7C508();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_26BB7C4F8();
  v9 = v3;
  v10 = MEMORY[0x277D69798];
  *&v8 = v6;
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  sub_26BB22F94(&v8, v1 + 32);
  return v1;
}

uint64_t sub_26BB71CE4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));

  return swift_deallocClassInstance();
}

void sub_26BB71E54()
{
  if (!qword_28043A5B8)
  {
    sub_26BB7BFF8();
    v0 = sub_26BB7CFE8();
    if (!v1)
    {
      atomic_store(v0, &qword_28043A5B8);
    }
  }
}

unint64_t sub_26BB71EAC()
{
  result = qword_28043A5C0;
  if (!qword_28043A5C0)
  {
    type metadata accessor for FeatureAvailability();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A5C0);
  }

  return result;
}

uint64_t sub_26BB71F00(uint64_t a1)
{
  sub_26BB71E54();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *InProcessStockService.__allocating_init(appConfigurationManager:attributionAssetManager:currencyManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_26BB2845C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_26BB7CAF8();
  sub_26BB285E4();
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  *(v11 + 16) = v10;
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = v11;
  return v6;
}

void *InProcessStockService.init(appConfigurationManager:attributionAssetManager:currencyManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_26BB2845C();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_26BB7CAF8();
  sub_26BB285E4();
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = v11;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v12;
  return v4;
}

uint64_t sub_26BB7207C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 40);
  if (qword_28158B800 != -1)
  {
    swift_once();
  }

  sub_26BB7D5D8();
  a1[3] = &type metadata for LazyURLSession;
  a1[4] = sub_26BB73FF4();
  os_unfair_lock_lock((v3 + 24));
  sub_26BB4456C((v3 + 16), v8, &v7);
  os_unfair_lock_unlock((v3 + 24));
  *a1 = v7;
  v4 = *MEMORY[0x277D6CAC0];
  v5 = sub_26BB7C888();
  return (*(*(v5 - 8) + 104))(a1, v4, v5);
}

uint64_t InProcessStockService.fetch(_:for:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4[8] = a2;
  v4[9] = v3;
  v4[7] = a1;
  v6 = sub_26BB7C888();
  v4[10] = v6;
  v7 = *(v6 - 8);
  v4[11] = v7;
  v8 = *(v7 + 64) + 15;
  v4[12] = swift_task_alloc();
  v9 = *(*(type metadata accessor for DataSource.Logo(0) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v10 = sub_26BB7C3D8();
  v4[14] = v10;
  v11 = *(v10 - 8);
  v4[15] = v11;
  v12 = *(v11 + 64) + 15;
  v4[16] = swift_task_alloc();
  v13 = sub_26BB7C468();
  v4[17] = v13;
  v14 = *(v13 - 8);
  v4[18] = v14;
  v15 = *(v14 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = *a3;

  return MEMORY[0x2822009F8](sub_26BB72338, 0, 0);
}

uint64_t sub_26BB72338()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = v0[8];
  v7 = *(v0[9] + 24);
  sub_26BB7C9E8();
  v8 = v0[5];
  v16 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  sub_26BB727E4(v6, v4);
  (*(v1 + 32))(v2, v4, v3);
  sub_26BB7207C(v5);
  v9 = *(MEMORY[0x277D69778] + 4);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_26BB7246C;
  v11.n128_u64[0] = v0[21];
  v12 = v0[20];
  v13 = v0[16];
  v14 = v0[12];

  return MEMORY[0x2821CF188](v12, v13, v14, v8, v16, v11);
}

uint64_t sub_26BB7246C()
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 96);
  v7 = *(*v1 + 88);
  v8 = *(*v1 + 80);
  v11 = *v1;
  *(*v1 + 184) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v9 = sub_26BB7273C;
  }

  else
  {
    v9 = sub_26BB72640;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26BB72640()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[7];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  (*(v4 + 16))(v1, v2, v3);
  sub_26BB42184(v1, v8);
  (*(v4 + 8))(v2, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_26BB7273C()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];
  v5 = v0[12];
  v4 = v0[13];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v6 = v0[1];
  v7 = v0[23];

  return v6();
}

uint64_t sub_26BB727E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSource.Logo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t InProcessStockService.fetchCurrencyConversions(cachePolicy:deadline:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  v5 = *(*(sub_26BB7C378() - 8) + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  v6 = sub_26BB7C888();
  *(v3 + 80) = v6;
  v7 = *(v6 - 8);
  *(v3 + 88) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  v9 = sub_26BB7C2C8();
  *(v3 + 104) = v9;
  v10 = *(v9 - 8);
  *(v3 + 112) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  v12 = sub_26BB7BE48();
  *(v3 + 160) = v12;
  v13 = *(v12 - 8);
  *(v3 + 168) = v13;
  v14 = *(v13 + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  v15 = sub_26BB7C868();
  *(v3 + 192) = v15;
  v16 = *(v15 - 8);
  *(v3 + 200) = v16;
  v17 = *(v16 + 64) + 15;
  *(v3 + 208) = swift_task_alloc();
  v18 = sub_26BB7C268();
  *(v3 + 216) = v18;
  v19 = *(v18 - 8);
  *(v3 + 224) = v19;
  v20 = *(v19 + 64) + 15;
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = *a2;
  *(v3 + 304) = *(a2 + 16);

  return MEMORY[0x2822009F8](sub_26BB72AF4, 0, 0);
}

uint64_t sub_26BB72AF4()
{
  v39 = v0;
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v1 = sub_26BB7CB88();
  *(v0 + 256) = __swift_project_value_buffer(v1, qword_28158F140);
  v2 = sub_26BB7CB68();
  v3 = sub_26BB7CF78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 304);
    v6 = *(v0 + 240);
    v5 = *(v0 + 248);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v36 = v8;
    *&v37 = v6;
    *v7 = 136315138;
    *(&v37 + 1) = v5;
    v38 = v4;
    v9 = StockService.CachePolicy.description.getter();
    v11 = sub_26BB38238(v9, v10, &v36);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_26BB21000, v2, v3, "Currencies fetch started, cachePolicy: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D68EA90](v8, -1, -1);
    MEMORY[0x26D68EA90](v7, -1, -1);
  }

  sub_26BB7CEF8();
  v12 = *(v0 + 304);
  if (v12 == 2)
  {
    if (!*(v0 + 248) && *(v0 + 240) == 1)
    {
      v13 = xmmword_26BB7E000;
      goto LABEL_11;
    }
  }

  else if (!*(v0 + 304))
  {
    v13 = *(v0 + 240);
LABEL_11:
    v14 = *(v0 + 256);
    v15 = *(v0 + 208);
    v16 = *(v0 + 184);
    v37 = v13;
    v38 = v12;
    sub_26BB297D0(4u, 0, v15);
    sub_26BB7BE18();
    v17 = sub_26BB7CB68();
    v18 = sub_26BB7CF78();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_26BB21000, v17, v18, "Firing currencies fetch", v19, 2u);
      MEMORY[0x26D68EA90](v19, -1, -1);
    }

    sub_26BB7CEF8();
    v25 = *(v0 + 96);
    v26 = *(*(v0 + 64) + 32);
    sub_26BB7C9E8();
    v27 = *(v0 + 40);
    v28 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v27);
    sub_26BB7207C(v25);
    v29 = *(MEMORY[0x277D69508] + 4);
    v30 = swift_task_alloc();
    *(v0 + 288) = v30;
    *v30 = v0;
    v30[1] = sub_26BB73378;
    v31 = *(v0 + 208);
    v32 = *(v0 + 184);
    v33 = *(v0 + 152);
    v34 = *(v0 + 96);

    return MEMORY[0x2821CECB0](v33, v31, v32, v34, v27, v28);
  }

  v20 = *(v0 + 216);
  v21 = *(v0 + 64);
  *(v0 + 264) = sub_26BB7CAD8();
  v22 = *(MEMORY[0x277D6CF28] + 4);
  v23 = swift_task_alloc();
  *(v0 + 272) = v23;
  *v23 = v0;
  v23[1] = sub_26BB72F9C;
  v24 = *(v0 + 232);

  return MEMORY[0x2821D23D8](v24);
}

uint64_t sub_26BB72F9C()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v7 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = sub_26BB739E0;
  }

  else
  {
    v5 = v2[33];
    (*(v2[28] + 8))(v2[29], v2[27]);

    v4 = sub_26BB730D4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BB730D4()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 256);
  v3 = *(v0 + 184);
  v33 = *(v0 + 240);
  v34 = *(v0 + 304);
  sub_26BB297D0(4u, 0, *(v0 + 208));
  sub_26BB7BE18();
  v4 = sub_26BB7CB68();
  v5 = sub_26BB7CF78();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_26BB21000, v4, v5, "Firing currencies fetch", v6, 2u);
    MEMORY[0x26D68EA90](v6, -1, -1);
  }

  sub_26BB7CEF8();
  if (v1)
  {
    v8 = *(v0 + 200);
    v7 = *(v0 + 208);
    v9 = *(v0 + 192);
    (*(*(v0 + 168) + 8))(*(v0 + 184), *(v0 + 160));
    (*(v8 + 8))(v7, v9);
    v10 = *(v0 + 232);
    v11 = *(v0 + 208);
    v13 = *(v0 + 176);
    v12 = *(v0 + 184);
    v15 = *(v0 + 144);
    v14 = *(v0 + 152);
    v17 = *(v0 + 128);
    v16 = *(v0 + 136);
    v18 = *(v0 + 120);
    v31 = *(v0 + 96);
    v32 = *(v0 + 72);

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v21 = *(v0 + 96);
    v22 = *(*(v0 + 64) + 32);
    sub_26BB7C9E8();
    v23 = *(v0 + 40);
    v24 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v23);
    sub_26BB7207C(v21);
    v25 = *(MEMORY[0x277D69508] + 4);
    v26 = swift_task_alloc();
    *(v0 + 288) = v26;
    *v26 = v0;
    v26[1] = sub_26BB73378;
    v27 = *(v0 + 208);
    v28 = *(v0 + 184);
    v29 = *(v0 + 152);
    v30 = *(v0 + 96);

    return MEMORY[0x2821CECB0](v29, v27, v28, v30, v23, v24);
  }
}

uint64_t sub_26BB73378()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);
  if (v0)
  {
    v5 = sub_26BB73AE0;
  }

  else
  {
    v5 = sub_26BB734E0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BB734E0()
{
  v69 = v0;
  v1 = v0[32];
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[13];
  v7 = v0[14];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v8 = *(v7 + 16);
  v8(v3, v2, v6);
  v8(v4, v2, v6);
  v67 = v8;
  v8(v5, v2, v6);
  v9 = sub_26BB7CB68();
  v10 = sub_26BB7CF78();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[21];
    v12 = v0[22];
    log = v9;
    v13 = v0[20];
    v14 = v0[18];
    v65 = v0[16];
    v15 = v0[14];
    v58 = v0[13];
    v60 = v0[17];
    v16 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v68 = v63;
    *v16 = 136315650;
    v62 = v10;
    sub_26BB7C2B8();
    sub_26BB73F4C();
    v17 = sub_26BB7D348();
    v19 = v18;
    v56 = *(v11 + 8);
    v56(v12, v13);
    v20 = *(v15 + 8);
    v20(v14, v58);
    v21 = sub_26BB38238(v17, v19, &v68);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    sub_26BB7C2A8();
    v22 = sub_26BB7D348();
    v24 = v23;
    v56(v12, v13);
    v20(v60, v58);
    v25 = sub_26BB38238(v22, v24, &v68);

    *(v16 + 14) = v25;
    *(v16 + 22) = 2080;
    v26 = v65;
    v27 = sub_26BB7C288();
    v28 = sub_26BB7C328();
    v29 = MEMORY[0x26D68DD10](v27, v28);
    v31 = v30;

    v66 = v20;
    v20(v26, v58);
    v32 = sub_26BB38238(v29, v31, &v68);

    *(v16 + 24) = v32;
    _os_log_impl(&dword_26BB21000, log, v62, "Currencies fetch success, createdAt: %s, staleAt: %s, result: %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v63, -1, -1);
    MEMORY[0x26D68EA90](v16, -1, -1);
  }

  else
  {
    v34 = v0[17];
    v33 = v0[18];
    v35 = v0[16];
    v37 = v0[13];
    v36 = v0[14];

    v38 = *(v36 + 8);
    v38(v35, v37);
    v38(v34, v37);
    v66 = v38;
    v38(v33, v37);
  }

  v40 = v0[25];
  v39 = v0[26];
  v55 = v0[24];
  v57 = v0[29];
  v41 = v0[21];
  v42 = v0[19];
  v53 = v0[20];
  v54 = v0[23];
  v59 = v0[22];
  v61 = v0[18];
  v43 = v0[15];
  v44 = v0[13];
  v45 = v0[9];
  v46 = v0[7];
  v67(v43, v42, v44);
  v47 = sub_26BB7C288();
  sub_26BB62D54(v47, &v68);
  *v46 = v68;
  sub_26BB7C298();
  v48 = type metadata accessor for CurrencyConversionsResult();
  sub_26BB3EBA4(v45, (v46 + v48[5]));
  v49 = v46 + v48[6];
  sub_26BB7C2B8();
  v50 = v46 + v48[7];
  sub_26BB7C2A8();
  v66(v43, v44);
  v66(v42, v44);
  (*(v41 + 8))(v54, v53);
  (*(v40 + 8))(v39, v55);

  v51 = v0[1];

  return v51();
}

uint64_t sub_26BB739E0()
{
  v1 = v0[33];

  v2 = v0[29];
  v3 = v0[26];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[18];
  v6 = v0[19];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[15];
  v11 = v0[12];
  v14 = v0[9];
  v15 = v0[35];

  v12 = v0[1];

  return v12();
}

uint64_t sub_26BB73AE0()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  (*(v0[21] + 8))(v0[23], v0[20]);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v4 = v0[29];
  v5 = v0[26];
  v7 = v0[22];
  v6 = v0[23];
  v9 = v0[18];
  v8 = v0[19];
  v11 = v0[16];
  v10 = v0[17];
  v12 = v0[15];
  v13 = v0[12];
  v16 = v0[9];
  v17 = v0[37];

  v14 = v0[1];

  return v14();
}

uint64_t sub_26BB73C14(uint64_t a1)
{
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v2 = sub_26BB7CB88();
  __swift_project_value_buffer(v2, qword_28158F140);
  v3 = sub_26BB7CB68();
  v4 = sub_26BB7CF78();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26BB21000, v3, v4, "Fetching app config for currencies fetch", v5, 2u);
    MEMORY[0x26D68EA90](v5, -1, -1);
  }

  v6 = *(a1 + 16);
  sub_26BB7C9E8();
  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v9 = sub_26BB4A684(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v9;
}

void *InProcessStockService.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return v0;
}

uint64_t InProcessStockService.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_26BB73DD0(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26BB3BF24;

  return InProcessStockService.fetch(_:for:)(a1, a2, a3);
}

uint64_t sub_26BB73E84(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26BB3BA30;

  return InProcessStockService.fetchCurrencyConversions(cachePolicy:deadline:)(a1, a2);
}

unint64_t sub_26BB73F4C()
{
  result = qword_28158C320;
  if (!qword_28158C320)
  {
    sub_26BB7BE48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158C320);
  }

  return result;
}

unint64_t sub_26BB73FF4()
{
  result = qword_28158B5B0;
  if (!qword_28158B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B5B0);
  }

  return result;
}

uint64_t sub_26BB74048(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (*(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_26BB7D378();
        result = 0;
        if ((v8 & 1) == 0 || v5 != v6)
        {
          return result;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_26BB74104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockChart.Entry(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v45 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_26BB76688(v14, v11);
      sub_26BB76688(v15, v8);
      v17 = *v11 == *v8 && v11[1] == v8[1];
      if (!v17 && (sub_26BB7D378() & 1) == 0)
      {
        break;
      }

      v18 = v4[5];
      if ((sub_26BB7BE08() & 1) == 0)
      {
        break;
      }

      v19 = v4[6];
      v20 = (v11 + v19);
      v21 = *(v11 + v19 + 8);
      v22 = (v8 + v19);
      v23 = *(v8 + v19 + 8);
      if (v21)
      {
        if (!v23)
        {
          break;
        }
      }

      else
      {
        if (*v20 != *v22)
        {
          LOBYTE(v23) = 1;
        }

        if (v23)
        {
          break;
        }
      }

      v24 = v4[7];
      v25 = (v11 + v24);
      v26 = *(v11 + v24 + 8);
      v27 = (v8 + v24);
      v28 = *(v8 + v24 + 8);
      if (v26)
      {
        if (!v28)
        {
          break;
        }
      }

      else
      {
        if (*v25 != *v27)
        {
          LOBYTE(v28) = 1;
        }

        if (v28)
        {
          break;
        }
      }

      v29 = v4[8];
      v30 = (v11 + v29);
      v31 = *(v11 + v29 + 8);
      v32 = (v8 + v29);
      v33 = *(v8 + v29 + 8);
      if (v31)
      {
        if (!v33)
        {
          break;
        }
      }

      else
      {
        if (*v30 != *v32)
        {
          LOBYTE(v33) = 1;
        }

        if (v33)
        {
          break;
        }
      }

      v34 = v4[9];
      v35 = (v11 + v34);
      v36 = *(v11 + v34 + 8);
      v37 = (v8 + v34);
      v38 = *(v8 + v34 + 8);
      if (v36)
      {
        if (!v38)
        {
          break;
        }
      }

      else
      {
        if (*v35 != *v37)
        {
          LOBYTE(v38) = 1;
        }

        if (v38)
        {
          break;
        }
      }

      v39 = v4[10];
      v40 = (v11 + v39);
      v41 = *(v11 + v39 + 8);
      v42 = (v8 + v39);
      v43 = *(v42 + 8);
      if ((v41 & 1) == 0)
      {
        if (v43)
        {
          break;
        }

        v43 = *v40 == *v42;
      }

      sub_26BB766EC(v8);
      sub_26BB766EC(v11);
      if (v43)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v43;
    }

    sub_26BB766EC(v8);
    sub_26BB766EC(v11);
    return 0;
  }

  return 1;
}

unint64_t sub_26BB743B0()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x6C6F626D7973;
  }

  *v0;
  return result;
}

uint64_t sub_26BB743EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000;
  if (v6 || (sub_26BB7D378() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026BB83B00 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26BB7D378();

    if (v9)
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

uint64_t sub_26BB744CC(uint64_t a1)
{
  v2 = sub_26BB74594();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB74508(uint64_t a1)
{
  v2 = sub_26BB74594();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_26BB74594()
{
  result = qword_28043A5D0;
  if (!qword_28043A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A5D0);
  }

  return result;
}

uint64_t FundMetadata.Sector.sector.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

BOOL sub_26BB746A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_26BB7D378();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

unint64_t sub_26BB74704()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x726F74636573;
  }

  *v0;
  return result;
}

uint64_t sub_26BB74740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F74636573 && a2 == 0xE600000000000000;
  if (v6 || (sub_26BB7D378() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026BB83B00 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26BB7D378();

    if (v9)
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

uint64_t sub_26BB74820(uint64_t a1)
{
  v2 = sub_26BB74A70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB7485C(uint64_t a1)
{
  v2 = sub_26BB74A70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BB748E8(void *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void))
{
  v19 = a5;
  sub_26BB75D54(0, a2, a3, a4, MEMORY[0x277D84538]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v18 - v11;
  v13 = v5[1];
  v18 = *v5;
  v14 = v5[2];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19();
  sub_26BB7D488();
  v22 = 0;
  v16 = v20;
  sub_26BB7D308();
  if (!v16)
  {
    v21 = 1;
    sub_26BB7D318();
  }

  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_26BB74A70()
{
  result = qword_28043A5E8;
  if (!qword_28043A5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A5E8);
  }

  return result;
}

uint64_t sub_26BB74B14@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, uint64_t *a6@<X8>)
{
  v26 = a6;
  sub_26BB75D54(0, a2, a3, a4, MEMORY[0x277D844C8]);
  v10 = v9;
  v25 = *(v9 - 8);
  v11 = *(v25 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a5();
  sub_26BB7D478();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16 = v25;
  v15 = v26;
  v28 = 0;
  v17 = sub_26BB7D268();
  v19 = v18;
  v20 = v17;
  v27 = 1;
  sub_26BB7D278();
  v22 = v21;
  (*(v16 + 8))(v13, v10);
  *v15 = v20;
  v15[1] = v19;
  v15[2] = v22;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t FundMetadata.assetClass.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FundMetadata.category.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FundMetadata.focus.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t FundMetadata.niche.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t FundMetadata.region.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t sub_26BB74E44()
{
  v1 = *v0;
  v2 = 0x616C437465737361;
  v3 = 0x69646C6F48706F74;
  if (v1 != 5)
  {
    v3 = 0x6F74636553706F74;
  }

  v4 = 0x656863696ELL;
  if (v1 != 3)
  {
    v4 = 0x6E6F69676572;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x79726F6765746163;
  if (v1 != 1)
  {
    v5 = 0x7375636F66;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26BB74F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BB76434(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BB74F48(uint64_t a1)
{
  v2 = sub_26BB75C0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB74F84(uint64_t a1)
{
  v2 = sub_26BB75C0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FundMetadata.encode(to:)(void *a1)
{
  sub_26BB75D54(0, &qword_28043A5F8, sub_26BB75C0C, &type metadata for FundMetadata.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v19 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v27 = v1[3];
  v28 = v11;
  v12 = v1[4];
  v25 = v1[5];
  v26 = v12;
  v13 = v1[6];
  v23 = v1[7];
  v24 = v13;
  v14 = v1[8];
  v21 = v1[9];
  v22 = v14;
  v15 = v1[10];
  v19 = v1[11];
  v20 = v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB75C0C();
  sub_26BB7D488();
  LOBYTE(v31) = 0;
  v17 = v29;
  sub_26BB7D2C8();
  if (!v17)
  {
    LOBYTE(v31) = 1;
    sub_26BB7D2C8();
    LOBYTE(v31) = 2;
    sub_26BB7D2C8();
    LOBYTE(v31) = 3;
    sub_26BB7D2C8();
    LOBYTE(v31) = 4;
    sub_26BB7D2C8();
    v31 = v20;
    v30 = 5;
    sub_26BB75CB4(0, &qword_28043A608);
    sub_26BB75DBC(&qword_28043A610, sub_26BB75C60);
    sub_26BB7D328();
    v31 = v19;
    v30 = 6;
    sub_26BB75CB4(0, &qword_28043A620);
    sub_26BB75E8C(&qword_28043A628, sub_26BB75D00);
    sub_26BB7D328();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t FundMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_26BB75D54(0, &qword_28043A638, sub_26BB75C0C, &type metadata for FundMetadata.CodingKeys, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v43 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_26BB75C0C();
  sub_26BB7D478();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v54);
  }

  v13 = v7;
  LOBYTE(v61[0]) = 0;
  v14 = v6;
  v16 = sub_26BB7D228();
  v18 = v17;
  LOBYTE(v61[0]) = 1;
  v19 = sub_26BB7D228();
  v53 = v20;
  v21 = v19;
  LOBYTE(v61[0]) = 2;
  v48 = sub_26BB7D228();
  v49 = v21;
  v51 = v22;
  LOBYTE(v61[0]) = 3;
  v23 = sub_26BB7D228();
  v50 = v24;
  v46 = v23;
  LOBYTE(v61[0]) = 4;
  v47 = 0;
  v25 = sub_26BB7D228();
  v52 = 0;
  v26 = v13;
  v27 = v25;
  v29 = v28;
  sub_26BB75CB4(0, &qword_28043A608);
  LOBYTE(v55) = 5;
  sub_26BB75DBC(&qword_28043A640, sub_26BB75E38);
  v30 = v52;
  sub_26BB7D288();
  v52 = v30;
  if (v30)
  {
    (*(v26 + 8))(v10, v14);
    v31 = 0;
    v32 = v47;
  }

  else
  {
    v45 = v61[0];
    sub_26BB75CB4(0, &qword_28043A620);
    v62 = 6;
    sub_26BB75E8C(&qword_28043A650, sub_26BB75F08);
    v33 = v52;
    sub_26BB7D288();
    v52 = v33;
    if (!v33)
    {
      (*(v26 + 8))(v10, v14);
      v47 = v63;
      *&v55 = v16;
      *(&v55 + 1) = v18;
      v34 = v49;
      *&v56 = v49;
      v35 = v53;
      *(&v56 + 1) = v53;
      v36 = v48;
      v37 = v27;
      v44 = v27;
      v38 = v51;
      *&v57 = v48;
      *(&v57 + 1) = v51;
      v39 = v50;
      *&v58 = v46;
      *(&v58 + 1) = v50;
      *&v59 = v37;
      *(&v59 + 1) = v29;
      *&v60 = v45;
      *(&v60 + 1) = v63;
      v40 = v58;
      a2[2] = v57;
      a2[3] = v40;
      v41 = v56;
      *a2 = v55;
      a2[1] = v41;
      v42 = v60;
      a2[4] = v59;
      a2[5] = v42;
      sub_26BB75F5C(&v55, v61);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      v61[0] = v16;
      v61[1] = v18;
      v61[2] = v34;
      v61[3] = v35;
      v61[4] = v36;
      v61[5] = v38;
      v61[6] = v46;
      v61[7] = v39;
      v61[8] = v44;
      v61[9] = v29;
      v61[10] = v45;
      v61[11] = v47;
      return sub_26BB6E700(v61);
    }

    (*(v26 + 8))(v10, v14);
    v31 = 1;
    v32 = v47;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v54);

  if (!v32)
  {
  }

  if (v31)
  {
  }

  return result;
}

uint64_t _s9StocksKit12FundMetadataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v11 = a1[9];
  v12 = a1[10];
  v13 = a1[11];
  v14 = a2[1];
  v15 = a2[2];
  v17 = a2[3];
  v16 = a2[4];
  v19 = a2[5];
  v18 = a2[6];
  v21 = a2[7];
  v20 = a2[8];
  v23 = a2[9];
  v22 = a2[10];
  v24 = a2[11];
  if (v3)
  {
    if (!v14)
    {
      goto LABEL_38;
    }

    if (*a1 != *a2 || v3 != v14)
    {
      v49 = a1[2];
      v50 = a1[10];
      v58 = a1[9];
      v61 = a2[9];
      v54 = a2[10];
      v56 = a1[8];
      v51 = a1[6];
      v52 = a2[11];
      v25 = a1[11];
      v26 = a2[8];
      v27 = a1[7];
      v28 = a2[7];
      v29 = a2[6];
      v30 = a1[5];
      v31 = a1[4];
      v64 = a2[5];
      v32 = a2[4];
      v48 = a2[2];
      v33 = sub_26BB7D378();
      v15 = v48;
      v4 = v49;
      v16 = v32;
      v5 = v31;
      v7 = v30;
      v18 = v29;
      v21 = v28;
      v9 = v27;
      v20 = v26;
      v13 = v25;
      v12 = v50;
      v8 = v51;
      v24 = v52;
      v22 = v54;
      v10 = v56;
      v11 = v58;
      v23 = v61;
      v19 = v64;
      if ((v33 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  else if (v14)
  {
    goto LABEL_38;
  }

  if (v6)
  {
    if (!v17)
    {
      goto LABEL_38;
    }

    if (v4 != v15 || v6 != v17)
    {
      v59 = v18;
      v62 = v13;
      v34 = v20;
      v55 = v5;
      v57 = v9;
      v35 = v7;
      v65 = v19;
      v53 = v16;
      v36 = sub_26BB7D378();
      v16 = v53;
      v5 = v55;
      v13 = v62;
      v19 = v65;
      v7 = v35;
      v9 = v57;
      v18 = v59;
      v20 = v34;
      if ((v36 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  else if (v17)
  {
    goto LABEL_38;
  }

  if (v7)
  {
    if (!v19)
    {
      goto LABEL_38;
    }

    if (v5 != v16 || v7 != v19)
    {
      v60 = v18;
      v63 = v13;
      v37 = v20;
      v38 = v9;
      v39 = sub_26BB7D378();
      v18 = v60;
      v13 = v63;
      v9 = v38;
      v20 = v37;
      if ((v39 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  else if (v19)
  {
    goto LABEL_38;
  }

  if (v9)
  {
    if (!v21)
    {
      goto LABEL_38;
    }

    if (v8 != v18 || v9 != v21)
    {
      v40 = v24;
      v41 = v13;
      v42 = v20;
      v43 = sub_26BB7D378();
      v20 = v42;
      v13 = v41;
      v24 = v40;
      if ((v43 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  else if (v21)
  {
    goto LABEL_38;
  }

  if (!v11)
  {
    v44 = v24;
    v45 = v13;
    if (!v23)
    {
      goto LABEL_36;
    }

LABEL_38:
    v46 = 0;
    return v46 & 1;
  }

  if (!v23)
  {
    goto LABEL_38;
  }

  v44 = v24;
  v45 = v13;
  if ((v10 != v20 || v11 != v23) && (sub_26BB7D378() & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_36:
  if ((sub_26BB74048(v12, v22) & 1) == 0)
  {
    goto LABEL_38;
  }

  v46 = sub_26BB74048(v45, v44);
  return v46 & 1;
}

unint64_t sub_26BB75C0C()
{
  result = qword_28043A600;
  if (!qword_28043A600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A600);
  }

  return result;
}

unint64_t sub_26BB75C60()
{
  result = qword_28043A618;
  if (!qword_28043A618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A618);
  }

  return result;
}

void sub_26BB75CB4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_26BB7CE38();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_26BB75D00()
{
  result = qword_28043A630;
  if (!qword_28043A630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A630);
  }

  return result;
}

void sub_26BB75D54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_26BB75DBC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_26BB75CB4(255, &qword_28043A608);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26BB75E38()
{
  result = qword_28043A648;
  if (!qword_28043A648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A648);
  }

  return result;
}

uint64_t sub_26BB75E8C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_26BB75CB4(255, &qword_28043A620);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26BB75F08()
{
  result = qword_28043A658;
  if (!qword_28043A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A658);
  }

  return result;
}

uint64_t sub_26BB75F94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BB75FDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BB76054(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26BB7609C(uint64_t result, int a2, int a3)
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

unint64_t sub_26BB76120()
{
  result = qword_28043A660;
  if (!qword_28043A660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A660);
  }

  return result;
}

unint64_t sub_26BB76178()
{
  result = qword_28043A668;
  if (!qword_28043A668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A668);
  }

  return result;
}

unint64_t sub_26BB761D0()
{
  result = qword_28043A670;
  if (!qword_28043A670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A670);
  }

  return result;
}

unint64_t sub_26BB76228()
{
  result = qword_28043A678;
  if (!qword_28043A678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A678);
  }

  return result;
}

unint64_t sub_26BB76280()
{
  result = qword_28043A680;
  if (!qword_28043A680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A680);
  }

  return result;
}

unint64_t sub_26BB762D8()
{
  result = qword_28043A688;
  if (!qword_28043A688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A688);
  }

  return result;
}

unint64_t sub_26BB76330()
{
  result = qword_28043A690;
  if (!qword_28043A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A690);
  }

  return result;
}

unint64_t sub_26BB76388()
{
  result = qword_28043A698;
  if (!qword_28043A698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A698);
  }

  return result;
}

unint64_t sub_26BB763E0()
{
  result = qword_28043A6A0;
  if (!qword_28043A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A6A0);
  }

  return result;
}

uint64_t sub_26BB76434(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616C437465737361 && a2 == 0xEA00000000007373 || (sub_26BB7D378() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7375636F66 && a2 == 0xE500000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656863696ELL && a2 == 0xE500000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F69676572 && a2 == 0xE600000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69646C6F48706F74 && a2 == 0xEB0000000073676ELL || (sub_26BB7D378() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F74636553706F74 && a2 == 0xEA00000000007372)
  {

    return 6;
  }

  else
  {
    v5 = sub_26BB7D378();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_26BB76688(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockChart.Entry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BB766EC(uint64_t a1)
{
  v2 = type metadata accessor for StockChart.Entry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CurrencyConversionsResult()
{
  result = qword_28158BCC8;
  if (!qword_28158BCC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CurrencyConversionsResult.source.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CurrencyConversionsResult() + 20);

  return sub_26BB76848(a1, v3);
}

uint64_t sub_26BB76848(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSource(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CurrencyConversionsResult.createdAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CurrencyConversionsResult() + 24);
  v4 = sub_26BB7BE48();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CurrencyConversionsResult.staleAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CurrencyConversionsResult() + 28);
  v4 = sub_26BB7BE48();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CurrencyConversionsResult.init(conversions:source:createdAt:staleAt:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = *a1;
  v9 = type metadata accessor for CurrencyConversionsResult();
  sub_26BB76ACC(a2, &a5[v9[5]]);
  v10 = v9[6];
  v11 = sub_26BB7BE48();
  v14 = *(*(v11 - 8) + 32);
  (v14)((v11 - 8), &a5[v10], a3, v11);
  v12 = &a5[v9[7]];

  return v14(v12, a4, v11);
}

uint64_t sub_26BB76ACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BB76B30()
{
  v1 = 0x69737265766E6F63;
  v2 = 0x4164657461657263;
  if (*v0 != 2)
  {
    v2 = 0x7441656C617473;
  }

  if (*v0)
  {
    v1 = 0x656372756F73;
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

uint64_t sub_26BB76BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BB778D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BB76BDC(uint64_t a1)
{
  v2 = sub_26BB76F0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BB76C18(uint64_t a1)
{
  v2 = sub_26BB76F0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CurrencyConversionsResult.encode(to:)(void *a1)
{
  v3 = v1;
  sub_26BB7750C(0, &qword_28158B0E8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v17[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB76F0C();
  sub_26BB7D488();
  v18 = *v3;
  v17[15] = 0;
  sub_26BB76F60();

  sub_26BB7D328();
  if (v2)
  {
  }

  else
  {

    v12 = type metadata accessor for CurrencyConversionsResult();
    v13 = v12[5];
    v17[14] = 1;
    type metadata accessor for DataSource(0);
    sub_26BB775C4(&qword_28158B7E0, type metadata accessor for DataSource);
    sub_26BB7D328();
    v14 = v12[6];
    v17[13] = 2;
    sub_26BB7BE48();
    sub_26BB775C4(&qword_28158BB28, MEMORY[0x277CC9578]);
    sub_26BB7D328();
    v15 = v12[7];
    v17[12] = 3;
    sub_26BB7D328();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_26BB76F0C()
{
  result = qword_28158BCF8;
  if (!qword_28158BCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BCF8);
  }

  return result;
}

unint64_t sub_26BB76F60()
{
  result = qword_28158B3A8[0];
  if (!qword_28158B3A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28158B3A8);
  }

  return result;
}

uint64_t CurrencyConversionsResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v34 = sub_26BB7BE48();
  v32 = *(v34 - 8);
  v3 = *(v32 + 64);
  v4 = MEMORY[0x28223BE20](v34);
  v30 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v31 = &v27 - v6;
  v7 = type metadata accessor for DataSource(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB7750C(0, &qword_28158B168, MEMORY[0x277D844C8]);
  v36 = v11;
  v33 = *(v11 - 8);
  v12 = *(v33 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - v13;
  v15 = type metadata accessor for CurrencyConversionsResult();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB76F0C();
  v35 = v14;
  v20 = v37;
  sub_26BB7D478();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v37 = v15;
  v21 = v33;
  v22 = v34;
  v41 = 0;
  sub_26BB77570();
  sub_26BB7D288();
  v28 = v18;
  *v18 = v42;
  v40 = 1;
  sub_26BB775C4(&qword_28158B7D8, type metadata accessor for DataSource);
  sub_26BB7D288();
  sub_26BB76ACC(v10, v28 + v37[5]);
  v39 = 2;
  sub_26BB775C4(&qword_28158BB20, MEMORY[0x277CC9578]);
  sub_26BB7D288();
  v23 = v31;
  v24 = v28 + v37[6];
  v31 = *(v32 + 32);
  (v31)(v24, v23, v22);
  v38 = 3;
  sub_26BB7D288();
  (*(v21 + 8))(v35, v36);
  v25 = v28;
  (v31)(v28 + v37[7], v30, v22);
  sub_26BB7760C(v25, v29, type metadata accessor for CurrencyConversionsResult);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_26BB77674(v25, type metadata accessor for CurrencyConversionsResult);
}

void sub_26BB7750C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_26BB76F0C();
    v7 = a3(a1, &type metadata for CurrencyConversionsResult.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_26BB77570()
{
  result = qword_28158B3A0;
  if (!qword_28158B3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B3A0);
  }

  return result;
}

uint64_t sub_26BB775C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BB7760C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BB77674(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BB7772C()
{
  result = type metadata accessor for DataSource(319);
  if (v1 <= 0x3F)
  {
    result = sub_26BB7BE48();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_26BB777D4()
{
  result = qword_28043A6A8;
  if (!qword_28043A6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A6A8);
  }

  return result;
}

unint64_t sub_26BB7782C()
{
  result = qword_28158BCE8;
  if (!qword_28158BCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BCE8);
  }

  return result;
}

unint64_t sub_26BB77884()
{
  result = qword_28158BCF0;
  if (!qword_28158BCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BCF0);
  }

  return result;
}

uint64_t sub_26BB778D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69737265766E6F63 && a2 == 0xEB00000000736E6FLL;
  if (v4 || (sub_26BB7D378() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (sub_26BB7D378() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7441656C617473 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_26BB7D378();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t dispatch thunk of StockServiceType.fetch(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_26BB3BF24;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of StockServiceType.fetchCurrencyConversions(cachePolicy:deadline:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_26BB3BA30;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_26BB77CCC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7865646E69;
  if (a1 != 6)
  {
    v5 = 0x75466C617574756DLL;
    v4 = 0xEA0000000000646ELL;
  }

  v6 = 0xE300000000000000;
  v7 = 6714469;
  if (a1 != 4)
  {
    v7 = 0x73657275747566;
    v6 = 0xE700000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x75636F7470797263;
  v9 = 0xEE0079636E657272;
  if (a1 != 2)
  {
    v8 = 0x797469757165;
    v9 = 0xE600000000000000;
  }

  v10 = 0x79636E6572727563;
  if (a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v10 = 0x6E776F6E6B6E75;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x7865646E69)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xEA0000000000646ELL;
        if (v11 != 0x75466C617574756DLL)
        {
LABEL_45:
          v14 = sub_26BB7D378();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE300000000000000;
      if (v11 != 6714469)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x73657275747566)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEE0079636E657272;
      if (v11 != 0x75636F7470797263)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x797469757165)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE800000000000000;
    if (v11 != 0x79636E6572727563)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v11 != 0x6E776F6E6B6E75)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_26BB77F44(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 1852141679;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x6465736F6C63;
  }

  else if (a1 == 3)
  {
    v3 = 0x656B72614D657270;
    v4 = 0xE900000000000074;
  }

  else
  {
    v3 = 0x756F487265746661;
    v4 = 0xEA00000000007372;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1852141679;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x656B72614D657270;
    v6 = 0xE900000000000074;
    if (a2 != 3)
    {
      v5 = 0x756F487265746661;
      v6 = 0xEA00000000007372;
    }

    if (a2 == 2)
    {
      v7 = 0x6465736F6C63;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_26BB7D378();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_26BB780C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00646579616C65;
  v3 = 0x44636972656E6567;
  v4 = a1;
  v5 = 0xEF656D69746C6165;
  v6 = 0x6E776F6E6B6E75;
  if (a1 == 5)
  {
    v6 = 0x52636972656E6567;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v7 = 0xD000000000000010;
  v8 = 0x800000026BB82CB0;
  if (a1 != 3)
  {
    v7 = 0x52544B4D6573796ELL;
    v8 = 0xEF656D69746C6165;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
  }

  else
  {
    v7 = v6;
  }

  v9 = 0x655271616473616ELL;
  v10 = 0xEE00656D69746C61;
  if (a1 != 1)
  {
    v9 = 0x6C6165526573796ELL;
    v10 = 0xEC000000656D6974;
  }

  if (!a1)
  {
    v9 = 0x44636972656E6567;
    v10 = 0xEE00646579616C65;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEE00656D69746C61;
        if (v11 != 0x655271616473616ELL)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0xEC000000656D6974;
        if (v11 != 0x6C6165526573796ELL)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEF656D69746C6165;
        if (v11 != 0x52636972656E6567)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x6E776F6E6B6E75)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }

    if (a2 == 3)
    {
      v2 = 0x800000026BB82CB0;
      if (v11 != 0xD000000000000010)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v3 = 0x52544B4D6573796ELL;
    v2 = 0xEF656D69746C6165;
  }

  if (v11 != v3)
  {
LABEL_38:
    v13 = sub_26BB7D378();
    goto LABEL_39;
  }

LABEL_35:
  if (v12 != v2)
  {
    goto LABEL_38;
  }

  v13 = 1;
LABEL_39:

  return v13 & 1;
}

uint64_t sub_26BB78344(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 4u)
  {
    v13 = 0xE600000000000000;
    v14 = 0xE800000000000000;
    v15 = 0x68746E6F4D656E6FLL;
    v16 = 0x6E6F4D6565726874;
    v17 = 0xEB00000000736874;
    if (a1 != 3)
    {
      v16 = 0x68746E6F4D786973;
      v17 = 0xE900000000000073;
    }

    if (a1 != 2)
    {
      v15 = v16;
      v14 = v17;
    }

    v18 = 0x6B656557656E6FLL;
    if (a1)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v18 = 0x796144656E6FLL;
    }

    if (a1 <= 1u)
    {
      v11 = v18;
    }

    else
    {
      v11 = v15;
    }

    if (v2 <= 1)
    {
      v12 = v13;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v3 = 0x7261655965766966;
    v4 = 0xE900000000000073;
    v5 = 0xE800000000000000;
    v6 = 0x73726165596E6574;
    if (a1 != 9)
    {
      v6 = 7105633;
      v5 = 0xE300000000000000;
    }

    if (a1 != 8)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0x61446F5472616579;
    v8 = 0xEA00000000006574;
    v9 = 0xE700000000000000;
    v10 = 0x72616559656E6FLL;
    if (a1 != 6)
    {
      v10 = 0x73726165596F7774;
      v9 = 0xE800000000000000;
    }

    if (a1 != 5)
    {
      v7 = v10;
      v8 = v9;
    }

    if (a1 <= 7u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }

    if (v2 <= 7)
    {
      v12 = v8;
    }

    else
    {
      v12 = v4;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v19 = 0xE700000000000000;
        if (v11 != 0x6B656557656E6FLL)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v19 = 0xE600000000000000;
        if (v11 != 0x796144656E6FLL)
        {
          goto LABEL_62;
        }
      }

      goto LABEL_60;
    }

    if (a2 == 2)
    {
      v19 = 0xE800000000000000;
      if (v11 != 0x68746E6F4D656E6FLL)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    if (a2 == 3)
    {
      v19 = 0xEB00000000736874;
      if (v11 != 0x6E6F4D6565726874)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    v21 = 0x68746E6F4D786973;
LABEL_52:
    v19 = 0xE900000000000073;
    if (v11 != v21)
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (a2 <= 7u)
  {
    if (a2 == 5)
    {
      v19 = 0xEA00000000006574;
      if (v11 != 0x61446F5472616579)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    if (a2 == 6)
    {
      v19 = 0xE700000000000000;
      if (v11 != 0x72616559656E6FLL)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    v19 = 0xE800000000000000;
    v20 = 1500477300;
LABEL_57:
    if (v11 != (v20 | 0x7372616500000000))
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (a2 == 8)
  {
    v21 = 0x7261655965766966;
    goto LABEL_52;
  }

  if (a2 == 9)
  {
    v19 = 0xE800000000000000;
    v20 = 1500407156;
    goto LABEL_57;
  }

  v19 = 0xE300000000000000;
  if (v11 != 7105633)
  {
LABEL_62:
    v22 = sub_26BB7D378();
    goto LABEL_63;
  }

LABEL_60:
  if (v12 != v19)
  {
    goto LABEL_62;
  }

  v22 = 1;
LABEL_63:

  return v22 & 1;
}

uint64_t sub_26BB78688()
{
  sub_26BB7D418();
  sub_26BB7CD88();

  return sub_26BB7D458();
}

uint64_t sub_26BB787E8()
{
  sub_26BB7D418();
  sub_26BB7CD88();

  return sub_26BB7D458();
}

StocksKit::StockType_optional __swiftcall StockType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26BB7D1F8();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StockType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x7865646E69;
  if (v1 != 6)
  {
    v3 = 0x75466C617574756DLL;
  }

  v4 = 6714469;
  if (v1 != 4)
  {
    v4 = 0x73657275747566;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x75636F7470797263;
  if (v1 != 2)
  {
    v5 = 0x797469757165;
  }

  if (*v0)
  {
    v2 = 0x79636E6572727563;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_26BB78A88()
{
  result = qword_28043A6B0;
  if (!qword_28043A6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A6B0);
  }

  return result;
}

void sub_26BB78B04(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE500000000000000;
  v6 = 0x7865646E69;
  if (v2 != 6)
  {
    v6 = 0x75466C617574756DLL;
    v5 = 0xEA0000000000646ELL;
  }

  v7 = 0xE300000000000000;
  v8 = 6714469;
  if (v2 != 4)
  {
    v8 = 0x73657275747566;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE0079636E657272;
  v10 = 0x75636F7470797263;
  if (v2 != 2)
  {
    v10 = 0x797469757165;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x79636E6572727563;
    v3 = 0xE800000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_26BB78CD0()
{
  result = qword_28043A6B8;
  if (!qword_28043A6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A6B8);
  }

  return result;
}

uint64_t QuoteDetailResult.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for QuoteDetailResult() + 20);

  return sub_26BB3BFE0(v3, a1);
}

uint64_t type metadata accessor for QuoteDetailResult()
{
  result = qword_28043A6C0;
  if (!qword_28043A6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BB78DE4()
{
  sub_26BB78E68();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DataSource(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BB78E68()
{
  if (!qword_28043A6D0)
  {
    type metadata accessor for QuoteDetail();
    v0 = sub_26BB7CCD8();
    if (!v1)
    {
      atomic_store(v0, &qword_28043A6D0);
    }
  }
}

__n128 sub_26BB78EEC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = 0;
  return result;
}

__n128 sub_26BB78EFC@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

uint64_t sub_26BB78F08()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26BB7D418();
  sub_26BB7D448();
  sub_26BB7D448();
  return sub_26BB7D458();
}

uint64_t sub_26BB78F64()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26BB7D448();
  return sub_26BB7D448();
}

uint64_t sub_26BB78FA0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26BB7D418();
  sub_26BB7D448();
  sub_26BB7D448();
  return sub_26BB7D458();
}

unint64_t sub_26BB79028()
{
  result = qword_28158B5D0;
  if (!qword_28158B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158B5D0);
  }

  return result;
}

uint64_t StockResult.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StockResult() + 20);

  return sub_26BB3BFE0(v3, a1);
}

uint64_t type metadata accessor for StockResult()
{
  result = qword_28043A6D8;
  if (!qword_28043A6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BB7914C()
{
  sub_26BB791D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DataSource(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BB791D0()
{
  if (!qword_28043A6E8)
  {
    v0 = sub_26BB7CCD8();
    if (!v1)
    {
      atomic_store(v0, &qword_28043A6E8);
    }
  }
}

uint64_t StockService.searchStocks(for:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26BB79254, 0, 0);
}

uint64_t sub_26BB79254()
{
  if (qword_28158B710 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = off_28158B718;
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  v7 = type metadata accessor for StockSearchResult();
  *v6 = v0;
  v6[1] = sub_26BB2C0D0;
  v8 = v0[2];

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD00000000000001ELL, 0x800000026BB83B20, sub_26BB79504, v4, v7);
}

uint64_t sub_26BB79394(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_26BB7BBDC(0, &qword_28043A718, type metadata accessor for StockSearchResult);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  StockService.searchStocks(for:completion:)(a3, a4, sub_26BB7BC50, v14);
}

uint64_t StockService.fetchStocks(for:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *a3;
  *(v3 + 72) = *(a3 + 16);
  return MEMORY[0x2822009F8](sub_26BB79540, 0, 0);
}

uint64_t sub_26BB79540()
{
  if (qword_28158B710 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v10 = *(v0 + 24);
  v3 = off_28158B718;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v10;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v7 = type metadata accessor for StockResult();
  *v6 = v0;
  v6[1] = sub_26BB2C388;
  v8 = *(v0 + 16);

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD00000000000001DLL, 0x800000026BB83B40, sub_26BB798B0, v4, v7);
}

uint64_t sub_26BB79698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v25 = a2;
  sub_26BB7BBDC(0, &qword_28043A710, type metadata accessor for StockResult);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v26[-1] - v15;
  v17 = type metadata accessor for StockService.NetworkSession(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v26[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[0] = a4;
  v26[1] = a5;
  v27 = a6;
  sub_26BB28EE8();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v13 + 16))(v16, a1, v12);
  v22 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v23 = swift_allocObject();
  (*(v13 + 32))(v23 + v22, v16, v12);
  StockService.fetchStocks(for:cachePolicy:networkSession:completion:)(a3, v26, v20, sub_26BB7BD6C, v23);

  return sub_26BB7B900(v20);
}

uint64_t StockService.fetchStocks(for:cachePolicy:networkSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  *(v4 + 40) = *a3;
  *(v4 + 80) = *(a3 + 16);
  return MEMORY[0x2822009F8](sub_26BB798FC, 0, 0);
}

uint64_t sub_26BB798FC()
{
  if (qword_28158B710 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = off_28158B718;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v7 + 32) = v3;
  *(v7 + 40) = v2;
  *(v7 + 48) = v1;
  *(v7 + 56) = v4;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  v10 = type metadata accessor for StockResult();
  *v9 = v0;
  v9[1] = sub_26BB51AA8;
  v11 = *(v0 + 16);

  return MEMORY[0x2822008A0](v11, 0, 0, 0xD00000000000002CLL, 0x800000026BB83B60, sub_26BB79BE0, v7, v10);
}

uint64_t sub_26BB79A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v21 = a7;
  sub_26BB7BBDC(0, &qword_28043A710, type metadata accessor for StockResult);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v22[-1] - v16;
  v22[0] = a4;
  v22[1] = a5;
  v23 = a6;
  (*(v14 + 16))(&v22[-1] - v16, a1, v13);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = swift_allocObject();
  (*(v14 + 32))(v19 + v18, v17, v13);
  StockService.fetchStocks(for:cachePolicy:networkSession:completion:)(a3, v22, v21, sub_26BB7BBA0, v19);
}

uint64_t StockService.fetchQuotes(for:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *a3;
  *(v3 + 72) = *(a3 + 16);
  return MEMORY[0x2822009F8](sub_26BB79C28, 0, 0);
}

uint64_t sub_26BB79C28()
{
  if (qword_28158B710 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v10 = *(v0 + 24);
  v3 = off_28158B718;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v10;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v7 = type metadata accessor for QuoteResult();
  *v6 = v0;
  v6[1] = sub_26BB79D80;
  v8 = *(v0 + 16);

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD00000000000001DLL, 0x800000026BB83B90, sub_26BB7A0D4, v4, v7);
}

uint64_t sub_26BB79D80()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BB7BD70, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_26BB79EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v25 = a2;
  sub_26BB7BBDC(0, &qword_28043A708, type metadata accessor for QuoteResult);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v26[-1] - v15;
  v17 = type metadata accessor for StockService.NetworkSession(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v26[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[0] = a4;
  v26[1] = a5;
  v27 = a6;
  sub_26BB28EE8();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v13 + 16))(v16, a1, v12);
  v22 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v23 = swift_allocObject();
  (*(v13 + 32))(v23 + v22, v16, v12);
  StockService.fetchQuotes(for:cachePolicy:networkSession:completion:)(a3, v26, v20, sub_26BB7BD68, v23);

  return sub_26BB7B900(v20);
}

uint64_t StockService.fetchQuotes(for:cachePolicy:networkSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  *(v4 + 40) = *a3;
  *(v4 + 80) = *(a3 + 16);
  return MEMORY[0x2822009F8](sub_26BB7A138, 0, 0);
}

uint64_t sub_26BB7A138()
{
  if (qword_28158B710 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = off_28158B718;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v7 + 32) = v3;
  *(v7 + 40) = v2;
  *(v7 + 48) = v1;
  *(v7 + 56) = v4;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  v10 = type metadata accessor for QuoteResult();
  *v9 = v0;
  v9[1] = sub_26BB51D68;
  v11 = *(v0 + 16);

  return MEMORY[0x2822008A0](v11, 0, 0, 0xD00000000000002CLL, 0x800000026BB83BB0, sub_26BB7A41C, v7, v10);
}

uint64_t sub_26BB7A290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v21 = a7;
  sub_26BB7BBDC(0, &qword_28043A708, type metadata accessor for QuoteResult);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v22[-1] - v16;
  v22[0] = a4;
  v22[1] = a5;
  v23 = a6;
  (*(v14 + 16))(&v22[-1] - v16, a1, v13);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = swift_allocObject();
  (*(v14 + 32))(v19 + v18, v17, v13);
  StockService.fetchQuotes(for:cachePolicy:networkSession:completion:)(a3, v22, v21, sub_26BB7BB64, v19);
}

uint64_t StockService.fetchQuoteDetails(for:cachePolicy:networkSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  *(v4 + 40) = *a3;
  *(v4 + 80) = *(a3 + 16);
  return MEMORY[0x2822009F8](sub_26BB7A484, 0, 0);
}

uint64_t sub_26BB7A484()
{
  if (qword_28158B710 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = off_28158B718;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v7 + 32) = v3;
  *(v7 + 40) = v2;
  *(v7 + 48) = v1;
  *(v7 + 56) = v4;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  v10 = type metadata accessor for QuoteDetailResult();
  *v9 = v0;
  v9[1] = sub_26BB51D68;
  v11 = *(v0 + 16);

  return MEMORY[0x2822008A0](v11, 0, 0, 0xD000000000000032, 0x800000026BB83BE0, sub_26BB7A768, v7, v10);
}

uint64_t sub_26BB7A5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v21 = a7;
  sub_26BB7BBDC(0, &qword_28043A700, type metadata accessor for QuoteDetailResult);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v22[-1] - v16;
  v22[0] = a4;
  v22[1] = a5;
  v23 = a6;
  (*(v14 + 16))(&v22[-1] - v16, a1, v13);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = swift_allocObject();
  (*(v14 + 32))(v19 + v18, v17, v13);
  StockService.fetchQuoteDetails(for:cachePolicy:networkSession:completion:)(a3, v22, v21, sub_26BB7BABC, v19);
}

uint64_t StockService.fetchStockChart(for:range:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  *(v5 + 80) = *a4;
  *(v5 + 40) = *a5;
  *(v5 + 81) = *(a5 + 16);
  return MEMORY[0x2822009F8](sub_26BB7A7BC, 0, 0);
}

uint64_t sub_26BB7A7BC()
{
  if (qword_28158B710 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 81);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 80);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = off_28158B718;
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  *(v8 + 32) = v5;
  *(v8 + 40) = v4;
  *(v8 + 48) = v3;
  *(v8 + 56) = v2;
  *(v8 + 64) = v1;
  v9 = *(MEMORY[0x277D85A40] + 4);
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  v11 = type metadata accessor for StockChartResult();
  *v10 = v0;
  v10[1] = sub_26BB51D68;
  v12 = *(v0 + 16);

  return MEMORY[0x2822008A0](v12, 0, 0, 0xD000000000000027, 0x800000026BB83C20, sub_26BB7AB48, v8, v11);
}

uint64_t sub_26BB7A924(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, char a8)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  sub_26BB7BBDC(0, &qword_28043A6F8, type metadata accessor for StockChartResult);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v27 - v17;
  v19 = type metadata accessor for StockService.NetworkSession(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a5;
  v30[0] = a6;
  v30[1] = a7;
  v31 = a8;
  sub_26BB28EE8();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  (*(v15 + 16))(v18, a1, v14);
  v24 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v25 = swift_allocObject();
  (*(v15 + 32))(v25 + v24, v18, v14);
  StockService.fetchStockChart(for:range:cachePolicy:networkSession:completion:)(v27, v28, &v32, v30, v22, sub_26BB7BD64, v25);

  return sub_26BB7B900(v22);
}

uint64_t StockService.fetchStockChart(for:range:cachePolicy:networkSession:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a3;
  *(v6 + 40) = a6;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 88) = *a4;
  *(v6 + 48) = *a5;
  *(v6 + 89) = *(a5 + 16);
  return MEMORY[0x2822009F8](sub_26BB7AB9C, 0, 0);
}

uint64_t sub_26BB7AB9C()
{
  if (qword_28158B710 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 89);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 88);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 24);
  v8 = off_28158B718;
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v9 + 32) = v6;
  *(v9 + 40) = v4;
  *(v9 + 48) = v3;
  *(v9 + 56) = v2;
  *(v9 + 64) = v1;
  *(v9 + 72) = v5;
  v10 = *(MEMORY[0x277D85A40] + 4);
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  v12 = type metadata accessor for StockChartResult();
  *v11 = v0;
  v11[1] = sub_26BB7AD14;
  v13 = *(v0 + 16);

  return MEMORY[0x2822008A0](v13, 0, 0, 0xD000000000000036, 0x800000026BB83C50, sub_26BB7B050, v9, v12);
}

uint64_t sub_26BB7AD14()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BB7AE50, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_26BB7AE50()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_26BB7AEB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  v23 = a3;
  v24 = a4;
  v25 = a2;
  sub_26BB7BBDC(0, &qword_28043A6F8, type metadata accessor for StockChartResult);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v23 - v18;
  v28 = a5;
  v26[0] = a6;
  v26[1] = a7;
  v27 = a8;
  (*(v16 + 16))(&v23 - v18, a1, v15);
  v20 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v21 = swift_allocObject();
  (*(v16 + 32))(v21 + v20, v19, v15);
  StockService.fetchStockChart(for:range:cachePolicy:networkSession:completion:)(v23, v24, &v28, v26, a9, sub_26BB7B9EC, v21);
}

uint64_t sub_26BB7B08C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), unint64_t *a6)
{
  v10 = a3(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v24 - v12;
  sub_26BB7BC8C(0, a4, a5);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v24 - v16;
  sub_26BB7BAF8(a1, v24 - v16, a4, a5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    v19 = *(v17 + 1);
    v20 = v17[16];
    sub_26BB3B148();
    v21 = swift_allocError();
    *v22 = v18;
    *(v22 + 8) = v19;
    *(v22 + 16) = v20;
    v24[1] = v21;
    sub_26BB7BBDC(0, a6, a5);
    return sub_26BB7CE58();
  }

  else
  {
    sub_26BB7BCFC(v17, v13, a5);
    sub_26BB7BBDC(0, a6, a5);
    return sub_26BB7CE68();
  }
}

uint64_t StockService.fetchDefaultWatchlist(cachePolicy:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  *(v2 + 64) = *(a2 + 16);
  return MEMORY[0x2822009F8](sub_26BB7B244, 0, 0);
}

uint64_t sub_26BB7B244()
{
  if (qword_28158B710 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = off_28158B718;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_26BB7B388;
  v8 = *(v0 + 16);

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000023, 0x800000026BB83C90, sub_26BB7B758, v5, &type metadata for WatchlistResult);
}

uint64_t sub_26BB7B388()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BB7BD74, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_26BB7B4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v25 = a2;
  sub_26BB7B768();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = type metadata accessor for StockService.NetworkSession(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB28EE8();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v11 + 16))(&v26[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = swift_allocObject();
  (*(v11 + 32))(v19 + v18, &v26[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v20 = [objc_opt_self() defaultsForCurrentCountry];
  v21 = [v20 defaultSymbols];

  v22 = sub_26BB7CDF8();
  v26[0] = a3;
  v26[1] = a4;
  v27 = a5;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26BB7B888;
  *(v23 + 24) = v19;

  StockService.fetchStocks(for:cachePolicy:networkSession:completion:)(v22, v26, v16, sub_26BB7B8F8, v23);

  return sub_26BB7B900(v16);
}

void sub_26BB7B768()
{
  if (!qword_28043A6F0)
  {
    sub_26BB55504();
    v0 = sub_26BB7CE78();
    if (!v1)
    {
      atomic_store(v0, &qword_28043A6F0);
    }
  }
}

uint64_t sub_26BB7B7D0(uint64_t a1)
{
  v1 = *a1;
  if (*(a1 + 17))
  {
    v2 = *(a1 + 8);
    v3 = *(a1 + 16);
    sub_26BB3B148();
    swift_allocError();
    *v4 = v1;
    *(v4 + 8) = v2;
    *(v4 + 16) = v3;
    sub_26BB3B21C(v1, v2, v3);
    sub_26BB7B768();
    return sub_26BB7CE58();
  }

  else
  {
    v6 = *a1;
    sub_26BB7B768();

    return sub_26BB7CE68();
  }
}

uint64_t sub_26BB7B888(uint64_t a1)
{
  sub_26BB7B768();
  v3 = *(*(v2 - 8) + 80);

  return sub_26BB7B7D0(a1);
}

uint64_t sub_26BB7B900(uint64_t a1)
{
  v2 = type metadata accessor for StockService.NetworkSession(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_44Tm(unint64_t *a1, void (*a2)(uint64_t))
{
  sub_26BB7BBDC(0, a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_26BB7BAF8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_26BB7BC8C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_26BB7BBDC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_26BB55504();
    v4 = sub_26BB7CE78();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26BB7BC8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_26BB3B148();
    v4 = sub_26BB7D468();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26BB7BCFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}