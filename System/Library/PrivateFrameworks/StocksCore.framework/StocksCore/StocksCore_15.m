unint64_t sub_1DABA6A70()
{
  result = qword_1EE1229C8;
  if (!qword_1EE1229C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1229C8);
  }

  return result;
}

unint64_t sub_1DABA6AC4()
{
  result = qword_1EE11FB30;
  if (!qword_1EE11FB30)
  {
    sub_1DABABE00(255, &qword_1EE11FB38, &type metadata for SDSQuoteResponse.SDSQuoteResponseItem, MEMORY[0x1E69E62F8]);
    sub_1DABA6B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FB30);
  }

  return result;
}

unint64_t sub_1DABA6B60()
{
  result = qword_1EE122A38;
  if (!qword_1EE122A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A38);
  }

  return result;
}

uint64_t sub_1DABA6BB4()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DABA6C00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  sub_1DABAC418(0, &qword_1EE11CFC0, sub_1DABA6F74, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABA6F74();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  v12 = v34;
  LOBYTE(v37) = 0;
  sub_1DABA6FC8();
  v13 = v5;
  sub_1DACB9FE4();
  v14 = v41;
  v15 = v42;
  sub_1DABABE00(0, &qword_1EE11D188, &type metadata for SDSQuoteResponse.SDSQuoteResponseEntryItem, MEMORY[0x1E69E62F8]);
  LOBYTE(v37) = 1;
  sub_1DABA701C();
  sub_1DACB9FE4();
  v33 = v15;
  v16 = v43;
  v35[0] = 2;
  sub_1DABA710C();
  sub_1DACB9F84();
  v29 = v37;
  v30 = v38;
  v31 = v39;
  v32 = v16;
  LOBYTE(v16) = v40;
  v36 = 3;
  v17 = sub_1DACB9F54();
  v19 = v18;
  v20 = *(v11 + 8);
  v28 = v17;
  v20(v9, v13);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v23 = v32;
  v22 = v33;
  *v12 = v14;
  *(v12 + 8) = v22;
  v24 = v29;
  v25 = v30;
  *(v12 + 16) = v23;
  *(v12 + 24) = v24;
  v26 = v31;
  *(v12 + 32) = v25;
  *(v12 + 40) = v26;
  *(v12 + 48) = v16;
  *(v12 + 49) = *v35;
  *(v12 + 52) = *&v35[3];
  *(v12 + 56) = v28;
  *(v12 + 64) = v19 & 1;
  return result;
}

unint64_t sub_1DABA6F74()
{
  result = qword_1EE11EB28;
  if (!qword_1EE11EB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EB28);
  }

  return result;
}

unint64_t sub_1DABA6FC8()
{
  result = qword_1EE11EAD0;
  if (!qword_1EE11EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EAD0);
  }

  return result;
}

unint64_t sub_1DABA701C()
{
  result = qword_1EE11D180;
  if (!qword_1EE11D180)
  {
    sub_1DABABE00(255, &qword_1EE11D188, &type metadata for SDSQuoteResponse.SDSQuoteResponseEntryItem, MEMORY[0x1E69E62F8]);
    sub_1DABA70B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D180);
  }

  return result;
}

unint64_t sub_1DABA70B8()
{
  result = qword_1EE11EAB0;
  if (!qword_1EE11EAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EAB0);
  }

  return result;
}

unint64_t sub_1DABA710C()
{
  result = qword_1EE11EAF8;
  if (!qword_1EE11EAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EAF8);
  }

  return result;
}

unint64_t sub_1DABA7160()
{
  result = qword_1ECBE82F0;
  if (!qword_1ECBE82F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE82F0);
  }

  return result;
}

unint64_t sub_1DABA71B4()
{
  result = qword_1ECBE82F8;
  if (!qword_1ECBE82F8)
  {
    sub_1DABABE00(255, &qword_1EE11D188, &type metadata for SDSQuoteResponse.SDSQuoteResponseEntryItem, MEMORY[0x1E69E62F8]);
    sub_1DABA7250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE82F8);
  }

  return result;
}

unint64_t sub_1DABA7250()
{
  result = qword_1ECBE8300;
  if (!qword_1ECBE8300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8300);
  }

  return result;
}

unint64_t sub_1DABA72A4()
{
  result = qword_1ECBE8310;
  if (!qword_1ECBE8310)
  {
    sub_1DABABE00(255, &qword_1ECBE8308, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem.TimeZoneOffset, MEMORY[0x1E69E6720]);
    sub_1DABA7340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8310);
  }

  return result;
}

unint64_t sub_1DABA7340()
{
  result = qword_1ECBE8318;
  if (!qword_1ECBE8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8318);
  }

  return result;
}

uint64_t sub_1DABA7394(uint64_t *a1)
{
  sub_1DABAC418(0, &qword_1EE11CFB8, sub_1DABA9064, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem.TimeZoneOffset.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABA9064();
  sub_1DACBA2F4();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_1DACB9F34();
    v12 = 1;
    sub_1DACB9F64();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1DABA75A0(uint64_t *a1)
{
  sub_1DABAC418(0, &qword_1EE11CFB0, sub_1DABA8FBC, &type metadata for SDSQuoteResponse.SDSQuoteResponseDateRange.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v11 - v7;
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DABA8FBC();
  sub_1DACBA2F4();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_1DACB9FD4();
    v12 = 1;
    sub_1DACB9FD4();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1DABA7778()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DABA77C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  sub_1DABAC418(0, &qword_1EE11CFA8, sub_1DABA9010, &type metadata for SDSQuoteResponse.SDSQuoteResponseEntryItem.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v31 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABA9010();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  v12 = v40;
  v48[0] = 0;
  v13 = v5;
  v14 = sub_1DACB9F54();
  v16 = v15;
  v17 = v14;
  v48[0] = 1;
  v18 = sub_1DACB9F54();
  v38 = v19;
  v39 = v18;
  v48[0] = 2;
  v20 = sub_1DACB9F54();
  v36 = v21;
  v37 = v20;
  v48[0] = 3;
  v22 = sub_1DACB9F54();
  v34 = v23;
  v35 = v22;
  v48[0] = 4;
  v33 = sub_1DACB9FD4();
  v50 = 5;
  v24 = sub_1DACB9F54();
  v26 = v25;
  v27 = *(v11 + 8);
  v32 = v24;
  v27(v9, v13);
  v49 = v16 & 1;
  v47 = v38 & 1;
  v45 = v36 & 1;
  v43 = v34 & 1;
  v41 = v26 & 1;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v12 = v17;
  *(v12 + 8) = v49;
  *(v12 + 9) = *v48;
  *(v12 + 12) = *&v48[3];
  *(v12 + 16) = v39;
  *(v12 + 24) = v47;
  *(v12 + 25) = *v46;
  *(v12 + 28) = *&v46[3];
  *(v12 + 32) = v37;
  *(v12 + 40) = v45;
  v29 = *v44;
  *(v12 + 44) = *&v44[3];
  *(v12 + 41) = v29;
  *(v12 + 48) = v35;
  *(v12 + 56) = v43;
  *(v12 + 60) = *&v42[3];
  *(v12 + 57) = *v42;
  v30 = v32;
  *(v12 + 64) = v33;
  *(v12 + 72) = v30;
  *(v12 + 80) = v41;
  return result;
}

uint64_t sub_1DABA7B3C()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

void *sub_1DABA7B88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DABAC418(0, &qword_1EE11F620, sub_1DABA82A4, &type metadata for SDSQuoteResponse.SDSQuoteResponseItem.CodingKeys, MEMORY[0x1E69E6F48]);
  v46 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1DABA82A4();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v69);
  }

  v12 = v6;
  v63 = 0;
  sub_1DABA82F8();
  sub_1DACB9F84();
  v59 = v65;
  v60 = v66;
  v61 = v67;
  v62 = v68;
  v58 = v64;
  v57[0] = 1;
  v13 = sub_1DACB9F34();
  v15 = v14;
  v57[0] = 2;
  v44 = sub_1DACB9F34();
  v45 = v16;
  v56[591] = 3;
  sub_1DABA834C();
  sub_1DACB9F84();
  memcpy(v56, v57, 0x248uLL);
  v48[0] = 4;
  v42 = sub_1DACB9F34();
  v43 = v17;
  v48[0] = 5;
  v40 = sub_1DACB9F34();
  v41 = v18;
  v48[0] = 6;
  v38 = sub_1DACB9FA4();
  v39 = v19;
  v48[0] = 7;
  sub_1DABA8410();
  sub_1DACB9F84();
  v36 = v55;
  v48[0] = 8;
  v35 = sub_1DACB9F34();
  v37 = v20;
  v54 = 9;
  v21 = sub_1DACB9F34();
  v34 = v22;
  v23 = v21;
  (*(v12 + 8))(v9, v46);
  v51 = v60;
  v52 = v61;
  LOBYTE(v53) = v62;
  v49 = v58;
  v50 = v59;
  memcpy(v48, v56, sizeof(v48));
  __swift_destroy_boxed_opaque_existential_1(v69);
  v24 = v52;
  *(a2 + 32) = v51;
  *(a2 + 48) = v24;
  v25 = v53;
  v26 = v50;
  *a2 = v49;
  *(a2 + 16) = v26;
  *(a2 + 64) = v25;
  *(a2 + 72) = v13;
  v28 = v44;
  v27 = v45;
  *(a2 + 80) = v15;
  *(a2 + 88) = v28;
  *(a2 + 96) = v27;
  result = memcpy((a2 + 104), v48, 0x248uLL);
  v30 = v43;
  *(a2 + 688) = v42;
  *(a2 + 696) = v30;
  v31 = v41;
  *(a2 + 704) = v40;
  *(a2 + 712) = v31;
  v32 = v39;
  *(a2 + 720) = v38;
  *(a2 + 728) = v32;
  *(a2 + 736) = v36;
  *(a2 + 737) = *v47;
  *(a2 + 740) = *&v47[3];
  *(a2 + 744) = v35;
  *(a2 + 752) = v37;
  *(a2 + 760) = v23;
  *(a2 + 768) = v34;
  return result;
}

unint64_t sub_1DABA82A4()
{
  result = qword_1EE122A50;
  if (!qword_1EE122A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A50);
  }

  return result;
}

unint64_t sub_1DABA82F8()
{
  result = qword_1EE122A28;
  if (!qword_1EE122A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A28);
  }

  return result;
}

unint64_t sub_1DABA834C()
{
  result = qword_1EE1229D8;
  if (!qword_1EE1229D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1229D8);
  }

  return result;
}

uint64_t sub_1DABA83A0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1DABABE00(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1DABA8410()
{
  result = qword_1EE122A30;
  if (!qword_1EE122A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A30);
  }

  return result;
}

unint64_t sub_1DABA8464()
{
  result = qword_1ECBE8328;
  if (!qword_1ECBE8328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8328);
  }

  return result;
}

uint64_t sub_1DABA84B8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1DABABE00(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1DABA8538()
{
  result = qword_1ECBE8338;
  if (!qword_1ECBE8338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8338);
  }

  return result;
}

unint64_t sub_1DABA858C()
{
  result = qword_1ECBE8340;
  if (!qword_1ECBE8340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8340);
  }

  return result;
}

uint64_t sub_1DABA85E0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1DABA863C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1DABA863C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1DABABE00(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1DABA86B4()
{
  result = qword_1ECBE8360;
  if (!qword_1ECBE8360)
  {
    sub_1DABABE00(255, &qword_1EE11FB38, &type metadata for SDSQuoteResponse.SDSQuoteResponseItem, MEMORY[0x1E69E62F8]);
    sub_1DABA8750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8360);
  }

  return result;
}

unint64_t sub_1DABA8750()
{
  result = qword_1ECBE8368;
  if (!qword_1ECBE8368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8368);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SDSQuoteResponse.SDSQuoteResponseItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SDSQuoteResponse.SDSQuoteResponseItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1DABA8928(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1DABA8984(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1DABA8A10(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 81))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DABA8A30(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
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

  *(result + 81) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SDSQuoteResponse.SDSQuoteResponseDateRange(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SDSQuoteResponse.SDSQuoteResponseDateRange(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1DABA8AF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 584))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 104);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1DABA8B50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 568) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 584) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 584) = 0;
    }

    if (a2)
    {
      *(result + 104) = a2;
    }
  }

  return result;
}

unint64_t sub_1DABA8C50()
{
  result = qword_1ECBE8370;
  if (!qword_1ECBE8370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8370);
  }

  return result;
}

unint64_t sub_1DABA8CA8()
{
  result = qword_1ECBE8378;
  if (!qword_1ECBE8378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8378);
  }

  return result;
}

unint64_t sub_1DABA8D00()
{
  result = qword_1ECBE8380;
  if (!qword_1ECBE8380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8380);
  }

  return result;
}

unint64_t sub_1DABA8D58()
{
  result = qword_1ECBE8388;
  if (!qword_1ECBE8388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8388);
  }

  return result;
}

unint64_t sub_1DABA8DB0()
{
  result = qword_1EE122A40;
  if (!qword_1EE122A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A40);
  }

  return result;
}

unint64_t sub_1DABA8E08()
{
  result = qword_1EE122A48;
  if (!qword_1EE122A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A48);
  }

  return result;
}

unint64_t sub_1DABA8E60()
{
  result = qword_1EE11EB18;
  if (!qword_1EE11EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EB18);
  }

  return result;
}

unint64_t sub_1DABA8EB8()
{
  result = qword_1EE11EB20;
  if (!qword_1EE11EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EB20);
  }

  return result;
}

unint64_t sub_1DABA8F10()
{
  result = qword_1EE1229B8;
  if (!qword_1EE1229B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1229B8);
  }

  return result;
}

unint64_t sub_1DABA8F68()
{
  result = qword_1EE1229C0;
  if (!qword_1EE1229C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1229C0);
  }

  return result;
}

unint64_t sub_1DABA8FBC()
{
  result = qword_1EE11EAE8;
  if (!qword_1EE11EAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EAE8);
  }

  return result;
}

unint64_t sub_1DABA9010()
{
  result = qword_1EE11EAC8;
  if (!qword_1EE11EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EAC8);
  }

  return result;
}

unint64_t sub_1DABA9064()
{
  result = qword_1EE11EB10;
  if (!qword_1EE11EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EB10);
  }

  return result;
}

uint64_t sub_1DABA90B8(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DABABE00(255, a2, a3, MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DABA9130()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1DABA917C(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DACBA2D4();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_1DACBA184();
    LODWORD(v4) = sub_1DABA9130();
    __swift_destroy_boxed_opaque_existential_1(v6);
    if (v4 == 8)
    {
      v4 = 0;
    }

    else
    {
      v4 = v4;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_1DABA9250()
{
  v0 = sub_1DACBA1B4();

  if (v0 >= 0x28)
  {
    return 40;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DABA92A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DABAC418(0, &qword_1EE11F618, sub_1DABAABBC, &type metadata for SDSQuoteResponse.SDSQuoteResponseQuoteItem.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v80 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v196 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1DABAABBC();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v196);
  }

  v13 = v7;
  LOBYTE(v187) = 0;
  v14 = sub_1DACB9F54();
  v16 = v15;
  LOBYTE(v187) = 1;
  v17 = sub_1DACB9F54();
  v159 = v18;
  v160 = v17;
  LOBYTE(v187) = 2;
  v19 = sub_1DABAAC10();
  sub_1DACB9F84();
  v158 = v19;
  v20 = v195;
  LOBYTE(v187) = 37;
  v21 = sub_1DACB9F54();
  v156 = v22;
  v157 = v21;
  LOBYTE(v187) = 38;
  v23 = sub_1DACB9F54();
  v154 = v24;
  v155 = v23;
  LOBYTE(v187) = 39;
  sub_1DACB9F84();
  v25 = v194;
  v26 = sub_1DABA3358();
  v151 = v27;
  v152 = v26;
  v153 = v25;
  LOBYTE(v187) = 4;
  v28 = sub_1DACB9F54();
  v147 = v29;
  v149 = v28;
  v150 = v20;
  v30 = v160;
  LOBYTE(v187) = 5;
  v148 = sub_1DACB9F34();
  v144 = v31;
  LOBYTE(v187) = 6;
  v146 = v6;
  v145 = v10;
  v143 = sub_1DACB9F54();
  v142 = v32;
  LOBYTE(v187) = 7;
  v141 = sub_1DACB9F54();
  v140 = v33;
  LOBYTE(v187) = 8;
  v139 = sub_1DACB9F54();
  v138 = v34;
  LOBYTE(v187) = 9;
  v136 = sub_1DACB9F34();
  v137 = v35;
  LOBYTE(v187) = 10;
  v135 = sub_1DACB9F54();
  v134 = v36;
  LOBYTE(v187) = 11;
  v133 = sub_1DACB9F54();
  v132 = v37;
  LOBYTE(v187) = 12;
  v130 = sub_1DACB9F34();
  v131 = v38;
  LOBYTE(v187) = 13;
  v128 = sub_1DACB9F34();
  v129 = v39;
  LOBYTE(v187) = 14;
  v126 = sub_1DACB9F34();
  v127 = v40;
  LOBYTE(v187) = 15;
  sub_1DABAAC64();
  sub_1DACB9F84();
  v41 = v193;
  LOBYTE(v187) = 16;
  v125 = sub_1DACB9F54();
  v124 = v42;
  LOBYTE(v187) = 17;
  v122 = sub_1DACB9F34();
  v123 = v43;
  LOBYTE(v187) = 18;
  v121 = sub_1DACB9F54();
  v120 = v44;
  LOBYTE(v187) = 19;
  v119 = sub_1DACB9F54();
  v118 = v45;
  LOBYTE(v187) = 20;
  v117 = sub_1DACB9F54();
  v116 = v46;
  LOBYTE(v187) = 21;
  v115 = sub_1DACB9F54();
  v114 = v47;
  LOBYTE(v187) = 22;
  sub_1DACB9F84();
  v113 = v192;
  v158 = sub_1DABA34E4();
  v49 = v48;
  LOBYTE(v187) = 24;
  v112 = sub_1DACB9F54();
  v111 = v50;
  LOBYTE(v187) = 25;
  v110 = sub_1DACB9F54();
  v109 = v51;
  LOBYTE(v187) = 26;
  v107 = sub_1DACB9F34();
  v108 = v52;
  LOBYTE(v187) = 27;
  v105 = sub_1DACB9F34();
  v106 = v53;
  LOBYTE(v187) = 28;
  sub_1DABAACB8();
  sub_1DACB9F84();
  v103 = v189;
  v102 = v190;
  v101 = v191;
  LOBYTE(v187) = 29;
  v100 = sub_1DACB9F34();
  v104 = v54;
  LOBYTE(v187) = 30;
  v98 = sub_1DACB9F34();
  v99 = v55;
  LOBYTE(v187) = 31;
  v96 = sub_1DACB9F34();
  v97 = v56;
  LOBYTE(v187) = 32;
  v94 = sub_1DACB9F34();
  v95 = v57;
  LOBYTE(v187) = 33;
  v90 = sub_1DACB9F34();
  v93 = v58;
  v185[0] = 34;
  sub_1DABAAD0C();
  sub_1DACB9F84();
  v91 = v187;
  v92 = v188;
  v185[0] = 35;
  v88 = sub_1DACB9F34();
  v89 = v59;
  v186 = 36;
  v87 = sub_1DACB9F34();
  v86 = v60;
  (*(v13 + 8))(v145, v146);
  v185[0] = v16 & 1;
  LOBYTE(v25) = v159 & 1;
  LOBYTE(v182[0]) = v159 & 1;
  v80 = v156 & 1;
  LOBYTE(v179[0]) = v156 & 1;
  v61 = v154 & 1;
  v178[0] = v154 & 1;
  v82 = v151 & 1;
  LOBYTE(v177[0]) = v151 & 1;
  v81 = v147 & 1;
  v176[0] = v147 & 1;
  v85 = v142 & 1;
  LOBYTE(v175[0]) = v142 & 1;
  v84 = v140 & 1;
  v174[0] = v140 & 1;
  v83 = v138 & 1;
  LOBYTE(v173[0]) = v138 & 1;
  v140 = v134 & 1;
  LOBYTE(v172[0]) = v134 & 1;
  v138 = v132 & 1;
  LOBYTE(v171[0]) = v132 & 1;
  v142 = v124 & 1;
  v170[0] = v124 & 1;
  v151 = v120 & 1;
  LOBYTE(v169[0]) = v120 & 1;
  v147 = v118 & 1;
  v168[0] = v118 & 1;
  LODWORD(v146) = v116 & 1;
  LOBYTE(v165[0]) = v116 & 1;
  LODWORD(v145) = v114 & 1;
  LOBYTE(v164[0]) = v114 & 1;
  v154 = v49 & 1;
  LOBYTE(v163[0]) = v49 & 1;
  v156 = v111 & 1;
  LOBYTE(v183) = v111 & 1;
  v159 = v109 & 1;
  LOBYTE(v180) = v109 & 1;
  v62 = v101;
  LOBYTE(v166) = v101;
  LOBYTE(v13) = v185[0];
  result = __swift_destroy_boxed_opaque_existential_1(v196);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v30;
  *(a2 + 24) = v25;
  *(a2 + 25) = v150;
  *(a2 + 32) = v157;
  *(a2 + 40) = v80;
  *(a2 + 48) = v155;
  *(a2 + 56) = v61;
  *(a2 + 57) = v153;
  *(a2 + 64) = v152;
  *(a2 + 72) = v82;
  *(a2 + 80) = v149;
  *(a2 + 88) = v81;
  v64 = v144;
  *(a2 + 96) = v148;
  *(a2 + 104) = v64;
  *(a2 + 112) = v143;
  *(a2 + 120) = v85;
  *(a2 + 128) = v141;
  *(a2 + 136) = v84;
  *(a2 + 144) = v139;
  *(a2 + 152) = v83;
  v65 = v137;
  *(a2 + 160) = v136;
  *(a2 + 168) = v65;
  *(a2 + 176) = v135;
  *(a2 + 184) = v140;
  *(a2 + 192) = v133;
  *(a2 + 200) = v138;
  v66 = v131;
  *(a2 + 208) = v130;
  *(a2 + 216) = v66;
  v67 = v129;
  *(a2 + 224) = v128;
  *(a2 + 232) = v67;
  v68 = v127;
  *(a2 + 240) = v126;
  *(a2 + 248) = v68;
  *(a2 + 256) = v41;
  *(a2 + 264) = v125;
  *(a2 + 272) = v142;
  v69 = v123;
  *(a2 + 280) = v122;
  *(a2 + 288) = v69;
  *(a2 + 296) = v121;
  *(a2 + 304) = v151;
  *(a2 + 312) = v119;
  *(a2 + 320) = v147;
  *(a2 + 328) = v117;
  *(a2 + 336) = v146;
  *(a2 + 344) = v115;
  *(a2 + 352) = v145;
  *(a2 + 353) = v113;
  *(a2 + 260) = *(v172 + 3);
  *(a2 + 257) = v172[0];
  *(a2 + 276) = *(v171 + 3);
  *(a2 + 273) = v171[0];
  *(a2 + 305) = *v170;
  *(a2 + 324) = *(v169 + 3);
  *(a2 + 321) = v169[0];
  *(a2 + 340) = *&v168[3];
  *(a2 + 337) = *v168;
  *(a2 + 354) = v166;
  *(a2 + 9) = *v185;
  *(a2 + 12) = *&v185[3];
  *(a2 + 26) = v183;
  *(a2 + 30) = v184;
  *(a2 + 44) = *(v182 + 3);
  *(a2 + 41) = v182[0];
  *(a2 + 62) = v181;
  *(a2 + 58) = v180;
  *(a2 + 76) = *(v179 + 3);
  *(a2 + 73) = v179[0];
  *(a2 + 89) = *v178;
  *(a2 + 92) = *&v178[3];
  *(a2 + 121) = v177[0];
  *(a2 + 124) = *(v177 + 3);
  *(a2 + 137) = *v176;
  *(a2 + 140) = *&v176[3];
  *(a2 + 156) = *(v175 + 3);
  *(a2 + 153) = v175[0];
  *(a2 + 188) = *&v174[3];
  *(a2 + 185) = *v174;
  *(a2 + 201) = v173[0];
  *(a2 + 204) = *(v173 + 3);
  *(a2 + 308) = *&v170[3];
  *(a2 + 358) = v167;
  *(a2 + 360) = v158;
  *(a2 + 368) = v154;
  v70 = v165[0];
  *(a2 + 372) = *(v165 + 3);
  *(a2 + 369) = v70;
  *(a2 + 376) = v112;
  *(a2 + 384) = v156;
  v71 = v164[0];
  *(a2 + 388) = *(v164 + 3);
  *(a2 + 385) = v71;
  *(a2 + 392) = v110;
  *(a2 + 400) = v159;
  v72 = v163[0];
  *(a2 + 404) = *(v163 + 3);
  *(a2 + 401) = v72;
  v73 = v108;
  *(a2 + 408) = v107;
  *(a2 + 416) = v73;
  v74 = v106;
  *(a2 + 424) = v105;
  *(a2 + 432) = v74;
  *(a2 + 440) = v103;
  *(a2 + 448) = v102;
  *(a2 + 449) = v62;
  v75 = v161;
  *(a2 + 454) = v162;
  *(a2 + 450) = v75;
  v76 = v104;
  *(a2 + 456) = v100;
  *(a2 + 464) = v76;
  v77 = v99;
  *(a2 + 472) = v98;
  *(a2 + 480) = v77;
  v78 = v97;
  *(a2 + 488) = v96;
  *(a2 + 496) = v78;
  v79 = v95;
  *(a2 + 504) = v94;
  *(a2 + 512) = v79;
  *(a2 + 520) = v90;
  *(a2 + 528) = v93;
  *(a2 + 536) = v91;
  *(a2 + 544) = v92;
  *(a2 + 552) = v88;
  *(a2 + 560) = v89;
  *(a2 + 568) = v87;
  *(a2 + 576) = v86;
  return result;
}

unint64_t sub_1DABAABBC()
{
  result = qword_1EE122A10;
  if (!qword_1EE122A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A10);
  }

  return result;
}

unint64_t sub_1DABAAC10()
{
  result = qword_1EE122A58;
  if (!qword_1EE122A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A58);
  }

  return result;
}

unint64_t sub_1DABAAC64()
{
  result = qword_1EE122A18;
  if (!qword_1EE122A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A18);
  }

  return result;
}

unint64_t sub_1DABAACB8()
{
  result = qword_1EE1229E0;
  if (!qword_1EE1229E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1229E0);
  }

  return result;
}

unint64_t sub_1DABAAD0C()
{
  result = qword_1EE1229B0;
  if (!qword_1EE1229B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1229B0);
  }

  return result;
}

uint64_t sub_1DABAAD60(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1DABAADA0()
{
  result = qword_1ECBE83B0;
  if (!qword_1ECBE83B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE83B0);
  }

  return result;
}

unint64_t sub_1DABAADF4()
{
  result = qword_1ECBE83C0;
  if (!qword_1ECBE83C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE83C0);
  }

  return result;
}

unint64_t sub_1DABAAE48()
{
  result = qword_1ECBE83C8;
  if (!qword_1ECBE83C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE83C8);
  }

  return result;
}

unint64_t sub_1DABAAE9C()
{
  result = qword_1ECBE83D0;
  if (!qword_1ECBE83D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE83D0);
  }

  return result;
}

unint64_t sub_1DABAAEF0()
{
  result = qword_1ECBE83D8;
  if (!qword_1ECBE83D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE83D8);
  }

  return result;
}

unint64_t sub_1DABAAF44()
{
  result = qword_1ECBE83E0;
  if (!qword_1ECBE83E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE83E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SDSQuoteResponse.SDSQuoteResponseQuoteItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD9)
  {
    goto LABEL_17;
  }

  if (a2 + 39 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 39) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 39;
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

      return (*a1 | (v4 << 8)) - 39;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 39;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v8 = v6 - 40;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SDSQuoteResponse.SDSQuoteResponseQuoteItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD9)
  {
    v4 = 0;
  }

  if (a2 > 0xD8)
  {
    v5 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
    *result = a2 + 39;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
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

uint64_t getEnumTagSinglePayload for SDSQuoteResponse.SDSQuoteResponseQuoteItem.TimeZoneOffset(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SDSQuoteResponse.SDSQuoteResponseQuoteItem.TimeZoneOffset(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

unint64_t sub_1DABAB1CC()
{
  result = qword_1ECBE83E8;
  if (!qword_1ECBE83E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE83E8);
  }

  return result;
}

unint64_t sub_1DABAB224()
{
  result = qword_1ECBE83F0;
  if (!qword_1ECBE83F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE83F0);
  }

  return result;
}

unint64_t sub_1DABAB27C()
{
  result = qword_1ECBE83F8;
  if (!qword_1ECBE83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE83F8);
  }

  return result;
}

unint64_t sub_1DABAB2D4()
{
  result = qword_1ECBE8400;
  if (!qword_1ECBE8400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8400);
  }

  return result;
}

unint64_t sub_1DABAB32C()
{
  result = qword_1ECBE8408;
  if (!qword_1ECBE8408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8408);
  }

  return result;
}

unint64_t sub_1DABAB384()
{
  result = qword_1ECBE8410;
  if (!qword_1ECBE8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8410);
  }

  return result;
}

unint64_t sub_1DABAB3DC()
{
  result = qword_1EE122A00;
  if (!qword_1EE122A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A00);
  }

  return result;
}

unint64_t sub_1DABAB434()
{
  result = qword_1EE122A08;
  if (!qword_1EE122A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A08);
  }

  return result;
}

unint64_t sub_1DABAB48C()
{
  result = qword_1EE11EB00;
  if (!qword_1EE11EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EB00);
  }

  return result;
}

unint64_t sub_1DABAB4E4()
{
  result = qword_1EE11EB08;
  if (!qword_1EE11EB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EB08);
  }

  return result;
}

unint64_t sub_1DABAB53C()
{
  result = qword_1EE11EAB8;
  if (!qword_1EE11EAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EAB8);
  }

  return result;
}

unint64_t sub_1DABAB594()
{
  result = qword_1EE11EAC0;
  if (!qword_1EE11EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EAC0);
  }

  return result;
}

unint64_t sub_1DABAB5EC()
{
  result = qword_1EE11EAD8;
  if (!qword_1EE11EAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EAD8);
  }

  return result;
}

unint64_t sub_1DABAB644()
{
  result = qword_1EE11EAE0;
  if (!qword_1EE11EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EAE0);
  }

  return result;
}

unint64_t sub_1DABAB698()
{
  result = qword_1EE122A60;
  if (!qword_1EE122A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A60);
  }

  return result;
}

unint64_t sub_1DABAB6EC()
{
  result = qword_1EE122A20;
  if (!qword_1EE122A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A20);
  }

  return result;
}

unint64_t sub_1DABAB740()
{
  result = qword_1EE1229F8;
  if (!qword_1EE1229F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1229F8);
  }

  return result;
}

uint64_t sub_1DABAB794()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DABAB7E0()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

double sub_1DABAB82C(uint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void))
{
  sub_1DABAC418(0, a2, a3, a4, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v18 = *(v9 - 8);
  v11 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a5();
  sub_1DACBA2F4();
  if (!v5)
  {
    v15 = v18;
    v20 = 0;
    sub_1DACB9FA4();
    v19 = 1;
    sub_1DACB9FC4();
    v6 = v17;
    (*(v15 + 8))(v13, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t sub_1DABABA2C(uint64_t *a1)
{
  sub_1DABAC418(0, &qword_1ECBE8418, sub_1DABABCBC, &type metadata for SDSQuoteResponse.SDSFundComposition.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v11 - v7;
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DABABCBC();
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DABABE00(0, &qword_1ECBE8428, &type metadata for SDSQuoteResponse.SDSFundComposition.Holding, MEMORY[0x1E69E62F8]);
    v12 = 0;
    sub_1DABABD10();
    sub_1DACB9FE4();
    v9 = v13;
    sub_1DABABE00(0, &qword_1ECBE8440, &type metadata for SDSQuoteResponse.SDSFundComposition.Sector, MEMORY[0x1E69E62F8]);
    v12 = 1;
    sub_1DABABE50();
    sub_1DACB9FE4();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1DABABCBC()
{
  result = qword_1ECBE8420;
  if (!qword_1ECBE8420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8420);
  }

  return result;
}

unint64_t sub_1DABABD10()
{
  result = qword_1ECBE8430;
  if (!qword_1ECBE8430)
  {
    sub_1DABABE00(255, &qword_1ECBE8428, &type metadata for SDSQuoteResponse.SDSFundComposition.Holding, MEMORY[0x1E69E62F8]);
    sub_1DABABDAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8430);
  }

  return result;
}

unint64_t sub_1DABABDAC()
{
  result = qword_1ECBE8438;
  if (!qword_1ECBE8438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8438);
  }

  return result;
}

void sub_1DABABE00(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1DABABE50()
{
  result = qword_1ECBE8448;
  if (!qword_1ECBE8448)
  {
    sub_1DABABE00(255, &qword_1ECBE8440, &type metadata for SDSQuoteResponse.SDSFundComposition.Sector, MEMORY[0x1E69E62F8]);
    sub_1DABABEEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8448);
  }

  return result;
}

unint64_t sub_1DABABEEC()
{
  result = qword_1ECBE8450;
  if (!qword_1ECBE8450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8450);
  }

  return result;
}

unint64_t sub_1DABABF40()
{
  result = qword_1ECBE8468;
  if (!qword_1ECBE8468)
  {
    sub_1DABABE00(255, &qword_1ECBE8428, &type metadata for SDSQuoteResponse.SDSFundComposition.Holding, MEMORY[0x1E69E62F8]);
    sub_1DABABFDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8468);
  }

  return result;
}

unint64_t sub_1DABABFDC()
{
  result = qword_1ECBE8470;
  if (!qword_1ECBE8470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8470);
  }

  return result;
}

unint64_t sub_1DABAC030()
{
  result = qword_1ECBE8478;
  if (!qword_1ECBE8478)
  {
    sub_1DABABE00(255, &qword_1ECBE8440, &type metadata for SDSQuoteResponse.SDSFundComposition.Sector, MEMORY[0x1E69E62F8]);
    sub_1DABAC0CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8478);
  }

  return result;
}

unint64_t sub_1DABAC0CC()
{
  result = qword_1ECBE8480;
  if (!qword_1ECBE8480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8480);
  }

  return result;
}

unint64_t sub_1DABAC164()
{
  result = qword_1ECBE8488;
  if (!qword_1ECBE8488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8488);
  }

  return result;
}

unint64_t sub_1DABAC1BC()
{
  result = qword_1ECBE8490;
  if (!qword_1ECBE8490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8490);
  }

  return result;
}

unint64_t sub_1DABAC214()
{
  result = qword_1ECBE8498;
  if (!qword_1ECBE8498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8498);
  }

  return result;
}

unint64_t sub_1DABAC26C()
{
  result = qword_1ECBE84A0;
  if (!qword_1ECBE84A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE84A0);
  }

  return result;
}

unint64_t sub_1DABAC2C4()
{
  result = qword_1EE1229E8;
  if (!qword_1EE1229E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1229E8);
  }

  return result;
}

unint64_t sub_1DABAC31C()
{
  result = qword_1EE1229F0;
  if (!qword_1EE1229F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1229F0);
  }

  return result;
}

unint64_t sub_1DABAC370()
{
  result = qword_1ECBE84B0;
  if (!qword_1ECBE84B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE84B0);
  }

  return result;
}

unint64_t sub_1DABAC3C4()
{
  result = qword_1ECBE84C0;
  if (!qword_1ECBE84C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE84C0);
  }

  return result;
}

void sub_1DABAC418(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1DABAC4A4()
{
  result = qword_1ECBE84D8;
  if (!qword_1ECBE84D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE84D8);
  }

  return result;
}

unint64_t sub_1DABAC4FC()
{
  result = qword_1ECBE84E0;
  if (!qword_1ECBE84E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE84E0);
  }

  return result;
}

unint64_t sub_1DABAC554()
{
  result = qword_1ECBE84E8;
  if (!qword_1ECBE84E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE84E8);
  }

  return result;
}

unint64_t sub_1DABAC5AC()
{
  result = qword_1ECBE84F0;
  if (!qword_1ECBE84F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE84F0);
  }

  return result;
}

unint64_t sub_1DABAC604()
{
  result = qword_1ECBE84F8;
  if (!qword_1ECBE84F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE84F8);
  }

  return result;
}

unint64_t sub_1DABAC65C()
{
  result = qword_1ECBE8500;
  if (!qword_1ECBE8500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8500);
  }

  return result;
}

uint64_t sub_1DABAC6CC()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABAC7C0()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABAC8F8()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABACA14()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABACB20@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  v14 = a13;
  v16 = a11;
  if (a2)
  {
    v17 = a1;
  }

  else
  {
    v17 = 0;
  }

  v18 = 0xE000000000000000;
  if (a2)
  {
    v19 = a2;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  if (a4)
  {
    v20 = a3;
  }

  else
  {
    v20 = 0;
  }

  if (a4)
  {
    v18 = a4;
  }

  if (a6)
  {
    result = a5;
  }

  else
  {
    result = 0x464646464646;
  }

  *a9 = v17;
  a9[1] = v19;
  if (a6)
  {
    v22 = a6;
  }

  else
  {
    v22 = 0xE600000000000000;
  }

  a9[2] = v20;
  a9[3] = v18;
  if (a8)
  {
    v23 = a7;
  }

  else
  {
    v23 = 0x303030303030;
  }

  if (a8)
  {
    v24 = a8;
  }

  else
  {
    v24 = 0xE600000000000000;
  }

  a9[4] = result;
  a9[5] = v22;
  if (!a11)
  {
    a10 = 0x464646464646;
    v16 = 0xE600000000000000;
  }

  a9[6] = v23;
  a9[7] = v24;
  if (!a13)
  {
    a12 = 0x303030303030;
  }

  a9[8] = a10;
  a9[9] = v16;
  if (!a13)
  {
    v14 = 0xE600000000000000;
  }

  a9[10] = a12;
  a9[11] = v14;
  return result;
}

uint64_t sub_1DABACBBC()
{
  *v0;
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DABACCC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DABAE018();
  *a2 = result;
  return result;
}

void sub_1DABACCF8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0x756F726765726F66;
  v6 = 0xEF726F6C6F43646ELL;
  v7 = 0x80000001DACE1850;
  if (v2 != 4)
  {
    v7 = 0x80000001DACE1D00;
  }

  if (v2 != 3)
  {
    v5 = 0xD000000000000018;
    v6 = v7;
  }

  v8 = 0xE500000000000000;
  v9 = 0x6C6562616CLL;
  if (v2 != 1)
  {
    v9 = 0x756F72676B636162;
    v8 = 0xEF726F6C6F43646ELL;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_1DABACDCC()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x756F726765726F66;
  if (v1 != 3)
  {
    v3 = 0xD000000000000018;
  }

  v4 = 0x6C6562616CLL;
  if (v1 != 1)
  {
    v4 = 0x756F72676B636162;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_1DABACE9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DABAE018();
  *a1 = result;
  return result;
}

uint64_t sub_1DABACEC4(uint64_t a1)
{
  v2 = sub_1DABAD960();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABACF00(uint64_t a1)
{
  v2 = sub_1DABAD960();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABACF3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DABADDD0(0, &qword_1EE123C60, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v66 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABAD960();
  sub_1DACBA2F4();
  if (!v2)
  {
    v85 = MEMORY[0x1E69E7CC0];
    v84 = 0;
    sub_1DACB9F84();
    v12 = v83;
    v79 = v82;
    if (v83)
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v78 = 0;
      v14 = a2;
      swift_beginAccess();
      v15 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v17 = *(v15 + 2);
      v16 = *(v15 + 3);
      v13 = v15;
      if (v17 >= v16 >> 1)
      {
        v13 = sub_1DAA9A3B0((v16 > 1), v17 + 1, 1, v15);
      }

      *(v13 + 2) = v17 + 1;
      v18 = &v13[16 * v17];
      *(v18 + 4) = 1701869940;
      *(v18 + 5) = 0xE400000000000000;
      v85 = v13;
      swift_endAccess();
      a2 = v14;
      v12 = v78;
    }

    v84 = 1;
    sub_1DACB9F84();
    v19 = v83;
    v76 = v82;
    if (!v83)
    {
      v78 = a2;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = 0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v22 = *(v13 + 2);
      v21 = *(v13 + 3);
      if (v22 >= v21 >> 1)
      {
        v13 = sub_1DAA9A3B0((v21 > 1), v22 + 1, 1, v13);
      }

      *(v13 + 2) = v22 + 1;
      v23 = &v13[16 * v22];
      *(v23 + 4) = 0x6C6562616CLL;
      *(v23 + 5) = 0xE500000000000000;
      v85 = v13;
      swift_endAccess();
      v19 = v77;
      a2 = v78;
    }

    v84 = 2;
    sub_1DACB9F84();
    v74 = v82;
    v75 = v83;
    if (!v83)
    {
      v78 = a2;
      swift_beginAccess();
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v77 = v19;
      if ((v24 & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v26 = *(v13 + 2);
      v25 = *(v13 + 3);
      if (v26 >= v25 >> 1)
      {
        v13 = sub_1DAA9A3B0((v25 > 1), v26 + 1, 1, v13);
      }

      *(v13 + 2) = v26 + 1;
      v27 = &v13[16 * v26];
      *(v27 + 4) = 0x756F72676B636162;
      *(v27 + 5) = 0xEF726F6C6F43646ELL;
      v85 = v13;
      swift_endAccess();
      v19 = v77;
      a2 = v78;
    }

    v84 = 3;
    sub_1DACB9F84();
    v72 = v82;
    v73 = v83;
    if (!v83)
    {
      v78 = a2;
      swift_beginAccess();
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v77 = v19;
      if ((v28 & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v30 = *(v13 + 2);
      v29 = *(v13 + 3);
      if (v30 >= v29 >> 1)
      {
        v13 = sub_1DAA9A3B0((v29 > 1), v30 + 1, 1, v13);
      }

      *(v13 + 2) = v30 + 1;
      v31 = &v13[16 * v30];
      *(v31 + 4) = 0x756F726765726F66;
      *(v31 + 5) = 0xEF726F6C6F43646ELL;
      v85 = v13;
      swift_endAccess();
      v19 = v77;
      a2 = v78;
    }

    v84 = 4;
    sub_1DACB9F84();
    v70 = v82;
    v71 = v83;
    if (!v83)
    {
      v77 = v19;
      v78 = 0;
      v32 = v12;
      swift_beginAccess();
      v33 = a2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v35 = *(v13 + 2);
      v34 = *(v13 + 3);
      if (v35 >= v34 >> 1)
      {
        v13 = sub_1DAA9A3B0((v34 > 1), v35 + 1, 1, v13);
      }

      *(v13 + 2) = v35 + 1;
      v36 = &v13[16 * v35];
      *(v36 + 4) = 0xD000000000000018;
      *(v36 + 5) = 0x80000001DACE1850;
      v85 = v13;
      swift_endAccess();
      a2 = v33;
      v12 = v32;
      v19 = v77;
      v2 = v78;
    }

    LOBYTE(v82) = 5;
    sub_1DACB9F84();
    if (v2)
    {
      (*(v7 + 8))(v10, v6);
    }

    else
    {
      v78 = a2;
      v38 = v81;
      if (v81)
      {
        v69 = v80;
        v67 = *(v13 + 2) == 0;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
        }

        v40 = *(v13 + 2);
        v39 = *(v13 + 3);
        v41 = v40 + 1;
        if (v40 >= v39 >> 1)
        {
          v69 = v40 + 1;
          v63 = v13;
          v64 = v40;
          v65 = sub_1DAA9A3B0((v39 > 1), v40 + 1, 1, v63);
          v41 = v69;
          v40 = v64;
          v13 = v65;
        }

        v67 = 0;
        *(v13 + 2) = v41;
        v42 = &v13[16 * v40];
        *(v42 + 4) = 0xD000000000000018;
        *(v42 + 5) = 0x80000001DACE1D00;
        v69 = 0x303030303030;
      }

      v43 = v79;
      if (!v12)
      {
        v43 = 0;
      }

      v79 = v43;
      v44 = 0xE000000000000000;
      if (!v12)
      {
        v12 = 0xE000000000000000;
      }

      v46 = v75;
      v45 = v76;
      if (v19)
      {
        v44 = v19;
      }

      else
      {
        v45 = 0;
      }

      v76 = v45;
      v77 = v44;
      v47 = 0x464646464646;
      if (v75)
      {
        v48 = v74;
      }

      else
      {
        v48 = 0x464646464646;
      }

      if (!v75)
      {
        v46 = 0xE600000000000000;
      }

      v74 = v48;
      v75 = v46;
      v50 = v72;
      v49 = v73;
      if (!v73)
      {
        v50 = 0x303030303030;
        v49 = 0xE600000000000000;
      }

      v72 = v50;
      v73 = v49;
      if (v71)
      {
        v47 = v70;
      }

      v70 = v47;
      if (v71)
      {
        v51 = v71;
      }

      else
      {
        v51 = 0xE600000000000000;
      }

      v71 = v51;
      if (v38)
      {
        v52 = v38;
      }

      else
      {
        v52 = 0xE600000000000000;
      }

      v68 = v52;
      sub_1DAA41D64();
      if (v67)
      {
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_1DACC1D20;
        *(v53 + 56) = MEMORY[0x1E69E6158];
        *(v53 + 64) = sub_1DAA443C8();
        *(v53 + 32) = v79;
        *(v53 + 40) = v12;
        sub_1DAA41DCC();
      }

      else
      {
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_1DACC1D40;
        *(v55 + 56) = MEMORY[0x1E69E6158];
        *(v55 + 64) = sub_1DAA443C8();
        *(v55 + 32) = v79;
        *(v55 + 40) = v12;
        sub_1DAA613E8();
        *(v55 + 96) = v56;
        *(v55 + 104) = sub_1DAAF691C();
        *(v55 + 72) = v13;
        sub_1DAA41DCC();
        sub_1DACB71E4();
      }

      sub_1DACB71E4();
      v54 = sub_1DACB9AD4();
      sub_1DACB9914();
      sub_1DACB8C64();

      (*(v7 + 8))(v10, v6);

      v57 = v78;
      *v78 = v79;
      v57[1] = v12;
      v58 = v77;
      v57[2] = v76;
      v57[3] = v58;
      v59 = v75;
      v57[4] = v74;
      v57[5] = v59;
      v60 = v73;
      v57[6] = v72;
      v57[7] = v60;
      v61 = v71;
      v57[8] = v70;
      v57[9] = v61;
      v62 = v68;
      v57[10] = v69;
      v57[11] = v62;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DABAD960()
{
  result = qword_1EE1244F0;
  if (!qword_1EE1244F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1244F0);
  }

  return result;
}

uint64_t sub_1DABAD9B8(void *a1)
{
  sub_1DABADDD0(0, &qword_1EE123BA8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v19 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v19[9] = v1[3];
  v19[10] = v11;
  v12 = v1[4];
  v19[7] = v1[5];
  v19[8] = v12;
  v13 = v1[6];
  v19[5] = v1[7];
  v19[6] = v13;
  v14 = v1[8];
  v19[3] = v1[9];
  v19[4] = v14;
  v15 = v1[11];
  v19[1] = v1[10];
  v19[2] = v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABAD960();
  sub_1DACBA304();
  v25 = 0;
  v17 = v19[11];
  sub_1DACBA094();
  if (!v17)
  {
    v24 = 1;
    sub_1DACBA094();
    v23 = 2;
    sub_1DACBA094();
    v22 = 3;
    sub_1DACBA094();
    v21 = 4;
    sub_1DACBA094();
    v20 = 5;
    sub_1DACBA094();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DABADC24(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v21 = a1[7];
  v22 = a1[6];
  v19 = a1[9];
  v20 = a1[8];
  v15 = a1[11];
  v16 = a1[10];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v11 = a2[6];
  v10 = a2[7];
  v17 = a2[9];
  v18 = a2[8];
  v13 = a2[11];
  v14 = a2[10];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1DACBA174() & 1) == 0 || (v2 != v7 || v4 != v6) && (sub_1DACBA174() & 1) == 0 || (v3 != v9 || v5 != v8) && (sub_1DACBA174() & 1) == 0 || (v22 != v11 || v21 != v10) && (sub_1DACBA174() & 1) == 0 || (v20 != v18 || v19 != v17) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if (v16 == v14 && v15 == v13)
  {
    return 1;
  }

  return sub_1DACBA174();
}

void sub_1DABADDD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DABAD960();
    v7 = a3(a1, &type metadata for TopStoriesStyleConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1DABADE50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1DABADE98(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1DABADF14()
{
  result = qword_1ECBE8508;
  if (!qword_1ECBE8508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8508);
  }

  return result;
}

unint64_t sub_1DABADF6C()
{
  result = qword_1EE1244E0;
  if (!qword_1EE1244E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1244E0);
  }

  return result;
}

unint64_t sub_1DABADFC4()
{
  result = qword_1EE1244E8;
  if (!qword_1EE1244E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1244E8);
  }

  return result;
}

uint64_t sub_1DABAE018()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

void sub_1DABAE064(uint64_t a1, void *a2, void (*a3)(), uint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    swift_getErrorValue();
    v12 = a2;
    sub_1DABDB680(v25);
    if (v13)
    {
      v14 = MEMORY[0x1E69E6158];
      swift_getTupleTypeMetadata2();
      v15 = sub_1DACB96B4();
      v16 = sub_1DABAF55C(v15, v14, a9, MEMORY[0x1E69E6168]);

      (a3)(v16);
    }

    else
    {
      sub_1DACB9904();
      sub_1DAA41D64();
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1DACC1D40;
      v19 = sub_1DACBA364();
      v21 = v20;
      v22 = MEMORY[0x1E69E6158];
      *(v18 + 56) = MEMORY[0x1E69E6158];
      v23 = sub_1DAA443C8();
      *(v18 + 64) = v23;
      *(v18 + 32) = v19;
      *(v18 + 40) = v21;
      sub_1DAA4436C(0, &qword_1EE123B10);
      sub_1DACB9DD4();
      *(v18 + 96) = v22;
      *(v18 + 104) = v23;
      *(v18 + 72) = 0;
      *(v18 + 80) = 0xE000000000000000;
      sub_1DAA41DCC();
      v24 = sub_1DACB9AD4();
      sub_1DACB8C64();

      a5(a2);
    }
  }

  else
  {
    v17 = MEMORY[0x1E69E6158];
    v26 = sub_1DACB90F4();
    MEMORY[0x1EEE9AC00](v26);
    sub_1DAA615E0(0, &qword_1EE123EA0, v17, MEMORY[0x1E69E62F8]);
    sub_1DACB91A4();
    sub_1DABAF4E0();
    sub_1DACB9534();
    a3();
  }
}

void sub_1DABAE378(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1DACB9AF4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v33 - v12;
  if (*(a3 + 16))
  {
    v14 = *a2;
    v15 = a2[1];
    v16 = sub_1DAA4BF3C(*a2, v15);
    if (v17)
    {
      v33 = a1;
      v18 = (*(a3 + 56) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      v21 = sub_1DACB7554();
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      swift_allocObject();
      sub_1DAB0B080(v19, v20);
      sub_1DACB71E4();
      sub_1DACB7544();
      v34 = v19;
      sub_1DACB7524();

      if (v5)
      {

        sub_1DACB9904();
        sub_1DAA41D64();
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1DACC1D40;
        v25 = sub_1DACBA364();
        v27 = v26;
        v28 = MEMORY[0x1E69E6158];
        *(v24 + 56) = MEMORY[0x1E69E6158];
        v29 = sub_1DAA443C8();
        *(v24 + 64) = v29;
        *(v24 + 32) = v25;
        *(v24 + 40) = v27;
        v35 = 0;
        v36 = 0xE000000000000000;
        v37 = v5;
        sub_1DAA4436C(0, &qword_1EE123B10);
        sub_1DACB9DD4();
        v30 = v35;
        v31 = v36;
        *(v24 + 96) = v28;
        *(v24 + 104) = v29;
        *(v24 + 72) = v30;
        *(v24 + 80) = v31;
        sub_1DAA41DCC();
        v32 = sub_1DACB9AD4();
        sub_1DACB8C64();
        sub_1DAA563C0(v34, v20);
      }

      else
      {
        (*(*(a5 - 8) + 56))(v13, 0, 1, a5);
        v35 = v14;
        v36 = v15;
        sub_1DACB91A4();
        sub_1DACB91C4();
        sub_1DAA563C0(v34, v20);
      }
    }
  }
}

void sub_1DABAE648(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_1DACB9124();
  sub_1DACB71F4();
  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_1DABAE6E8(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v5 = a2[5];
  v26 = a2[4];
  v27 = v5;
  v28 = a2[6];
  v29 = *(a2 + 14);
  v6 = a2[1];
  v22 = *a2;
  v23 = v6;
  v7 = a2[3];
  v24 = a2[2];
  v25 = v7;
  sub_1DAAA3874(&v22, v20, sub_1DABAF39C);

  v20[4] = v27;
  v20[5] = v28;
  v21 = v29;
  v20[0] = v23;
  v20[1] = v24;
  v20[2] = v25;
  v20[3] = v26;
  v8 = sub_1DACB93B4();
  if (*(a3 + 16))
  {
    v10 = sub_1DAA4BF3C(v8, v9);
    v12 = v11;

    if (v12)
    {
      v13 = (*(a3 + 56) + 16 * v10);
      v14 = *v13;
      v15 = v13[1];
      sub_1DACB71E4();
      v16 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *a1;
      sub_1DACA58B4(v20, v14, v15, isUniquelyReferenced_nonNull_native);

      *a1 = v19;
    }

    else
    {
      return sub_1DABAF400(&v23);
    }
  }

  else
  {
    sub_1DABAF400(&v23);
  }

  return result;
}

uint64_t sub_1DABAE848(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    v4 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v9 = *(v3 - 1);
      v8 = *v3;
      v10 = sub_1DACB93B4();
      v12 = v11;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = sub_1DAA4BF3C(v10, v12);
      v16 = *(v4 + 16);
      v17 = (v15 & 1) == 0;
      v18 = __OFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        goto LABEL_40;
      }

      v20 = v15;
      if (*(v4 + 24) < v19)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v26 = v14;
      sub_1DAB65314();
      v14 = v26;
      if (v20)
      {
LABEL_3:
        v5 = v14;

        v6 = (*(v4 + 56) + 16 * v5);
        v7 = v6[1];
        *v6 = v9;
        v6[1] = v8;

        goto LABEL_4;
      }

LABEL_11:
      *(v4 + 8 * (v14 >> 6) + 64) |= 1 << v14;
      v22 = (*(v4 + 48) + 16 * v14);
      *v22 = v10;
      v22[1] = v12;
      v23 = (*(v4 + 56) + 16 * v14);
      *v23 = v9;
      v23[1] = v8;

      v24 = *(v4 + 16);
      v18 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v18)
      {
        goto LABEL_41;
      }

      *(v4 + 16) = v25;
LABEL_4:
      v3 += 2;
      if (!--v2)
      {
        goto LABEL_16;
      }
    }

    sub_1DAAA2514(v19, isUniquelyReferenced_nonNull_native);
    v14 = sub_1DAA4BF3C(v10, v12);
    if ((v20 & 1) != (v21 & 1))
    {
      goto LABEL_42;
    }

LABEL_10:
    if (v20)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

  v4 = MEMORY[0x1E69E7CC8];
LABEL_16:
  v27 = v4 + 64;
  v28 = 1 << *(v4 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v4 + 64);
  v31 = (v28 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v32 = 0;
  v33 = a2;
  v34 = (a2 + 40);
  v35 = MEMORY[0x1E69E7CC0];
  while (v30)
  {
    v36 = v30;
LABEL_25:
    v30 = (v36 - 1) & v36;
    v38 = *(v33 + 16);
    if (v38)
    {
      v50 = (v36 - 1) & v36;
      v52 = v27;
      v39 = (*(v4 + 48) + ((v32 << 10) | (16 * __clz(__rbit64(v36)))));
      v54 = *v39;
      v55 = v39[1];
      sub_1DACB71E4();
      v51 = v34;
      do
      {
        v41 = *(v34 - 1);
        v40 = *v34;
        v42 = qword_1EE123758;
        sub_1DACB71E4();
        if (v42 != -1)
        {
          swift_once();
        }

        MEMORY[0x1E1276F20](qword_1EE13E3B8, unk_1EE13E3C0);
        sub_1DACB9204();
        if (v40)
        {
          MEMORY[0x1E1276F20](v41, v40);
          sub_1DACB9204();
          MEMORY[0x1E1276F20](v54, v55);
        }

        else
        {
          MEMORY[0x1E1276F20](v54, v55);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1DAA9A3B0(0, *(v35 + 2) + 1, 1, v35);
        }

        v44 = *(v35 + 2);
        v43 = *(v35 + 3);
        if (v44 >= v43 >> 1)
        {
          v35 = sub_1DAA9A3B0((v43 > 1), v44 + 1, 1, v35);
        }

        v34 += 2;
        *(v35 + 2) = v44 + 1;
        v45 = &v35[16 * v44];
        *(v45 + 4) = 0;
        *(v45 + 5) = 0xE000000000000000;
        --v38;
      }

      while (v38);

      v33 = a2;
      v27 = v52;
      v30 = v50;
      v34 = v51;
    }
  }

  while (1)
  {
    v37 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v37 >= v31)
    {

      MEMORY[0x1EEE9AC00](v46);
      sub_1DAAA167C();
      sub_1DACB8BB4();

      *(swift_allocObject() + 16) = v4;
      v47 = sub_1DACB89D4();
      sub_1DABAF8C4();
      v48 = sub_1DACB8A64();

      return v48;
    }

    v36 = *(v27 + 8 * v37);
    ++v32;
    if (v36)
    {
      v32 = v37;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

uint64_t sub_1DABAED64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a1 + 64;
  v6 = 1 << *(*a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(*a1 + 64);
  v9 = (v6 + 63) >> 6;
  sub_1DACB71E4();
  v64 = MEMORY[0x1E69E7CC8];
  v82 = v4;
  v10 = 0;
  if (v8)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      *a3 = v64;
      return result;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(v4 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(v4 + 56) + 104 * v13;
        v18 = *v17;
        v19 = *(v17 + 32);
        v68 = *(v17 + 16);
        v69 = v19;
        v67 = v18;
        v20 = *(v17 + 48);
        v21 = *(v17 + 64);
        v22 = *(v17 + 80);
        v73 = *(v17 + 96);
        v71 = v21;
        v72 = v22;
        v70 = v20;
        v74[0] = v16;
        v74[1] = v15;
        v75 = v67;
        v76 = v68;
        v79 = v21;
        v80 = v22;
        v81 = v73;
        v77 = v69;
        v78 = v20;
        v23 = sub_1DACB93B4();
        v25 = v24;
        if (*(a2 + 16))
        {
          v26 = v23;
          sub_1DAB69868(&v67, v66);
          sub_1DAAA3874(v74, v66, sub_1DABAF39C);
          v27 = a2;
          v28 = sub_1DAA4BF3C(v26, v25);
          LOBYTE(v26) = v29;

          if (v26)
          {
            v30 = (*(v27 + 56) + 16 * v28);
            v31 = v30[1];
            v62 = *v30;
            sub_1DAA615E0(0, &qword_1EE11F538, &type metadata for StockRecord, MEMORY[0x1E69E6F90]);
            v32 = swift_allocObject();
            v33 = v71;
            *(v32 + 80) = v70;
            *(v32 + 96) = v33;
            *(v32 + 112) = v72;
            *(v32 + 128) = v73;
            v34 = v67;
            *(v32 + 16) = xmmword_1DACC1D20;
            *(v32 + 32) = v34;
            v35 = v69;
            *(v32 + 48) = v68;
            *(v32 + 64) = v35;
            v36 = v64[2];
            sub_1DACB71E4();
            if (v36 && (v37 = sub_1DAA4BF3C(v62, v31), (v38 & 1) != 0))
            {
              v39 = *(v64[7] + 8 * v37);
              v40 = sub_1DACB71E4();
            }

            else
            {
              v40 = MEMORY[0x1E69E7CC0];
            }

            v66[0] = v32;
            sub_1DAC288A4(v40);
            v60 = v66[0];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v66[0] = v64;
            v61 = v31;
            v43 = sub_1DAA4BF3C(v62, v31);
            v44 = v64[2];
            v45 = (v42 & 1) == 0;
            v46 = v44 + v45;
            if (__OFADD__(v44, v45))
            {
              goto LABEL_33;
            }

            if (v64[3] >= v46)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v58 = v42;
                sub_1DAB6630C();
                v42 = v58;
              }

              v47 = v62;
            }

            else
            {
              v65 = v42;
              sub_1DAB61724(v46, isUniquelyReferenced_nonNull_native);
              v47 = v62;
              v48 = sub_1DAA4BF3C(v62, v61);
              v50 = v49 & 1;
              v42 = v65;
              if ((v65 & 1) != v50)
              {
                goto LABEL_35;
              }

              v43 = v48;
            }

            v51 = v66[0];
            v64 = v66[0];
            if (v42)
            {
              v52 = *(v66[0] + 56);
              v53 = *(v52 + 8 * v43);
              *(v52 + 8 * v43) = v60;
            }

            else
            {
              *(v66[0] + 8 * (v43 >> 6) + 64) |= 1 << v43;
              v54 = (v51[6] + 16 * v43);
              *v54 = v47;
              v54[1] = v61;
              *(v51[7] + 8 * v43) = v60;
              v55 = v51[2];
              v56 = __OFADD__(v55, 1);
              v57 = v55 + 1;
              if (v56)
              {
                goto LABEL_34;
              }

              v51[2] = v57;
            }

            a2 = v27;
            sub_1DAAA3938(v74, sub_1DABAF39C);
            v4 = v82;
            v10 = v11;
            if (!v8)
            {
              goto LABEL_7;
            }
          }

          else
          {
            sub_1DABAF400(&v67);
            sub_1DAAA3938(v74, sub_1DABAF39C);
            v10 = v11;
            a2 = v27;
            v4 = v82;
            if (!v8)
            {
              goto LABEL_7;
            }
          }
        }

        else
        {

          v10 = v11;
          if (!v8)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v11 = v10;
      }
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

unint64_t sub_1DABAF19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_1DACB91E4();

  return sub_1DABAF1F8(a1, v9, a2, a3);
}

unint64_t sub_1DABAF1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_1DACB9264();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

void sub_1DABAF39C()
{
  if (!qword_1EE11FC20)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11FC20);
    }
  }
}

uint64_t sub_1DABAF454(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v5 = a1;
  return v2(&v5);
}

unint64_t sub_1DABAF4E0()
{
  result = qword_1EE11FA40;
  if (!qword_1EE11FA40)
  {
    sub_1DAA615E0(255, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FA40);
  }

  return result;
}

uint64_t sub_1DABAF55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1DACB9704())
  {
    sub_1DACB9EB4();
    v13 = sub_1DACB9EA4();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  sub_1DACB71F4();
  result = sub_1DACB9704();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1DACB96D4())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1DACB9CB4();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1DABAF19C(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1DABAF848()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  sub_1DAAA2CE8();
  return sub_1DAAA2E2C();
}

void sub_1DABAF8C4()
{
  if (!qword_1EE11FC70)
  {
    sub_1DAA615E0(255, &qword_1EE11FB78, &type metadata for StockRecord, MEMORY[0x1E69E62F8]);
    v0 = sub_1DACB91A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FC70);
    }
  }
}

uint64_t sub_1DABAF950()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DABAF980()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DABAF9B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EarningsCalendarEventModel() + 24);
  v4 = sub_1DACB7CC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DABAFA2C()
{
  v1 = 0x656449746E657665;
  if (*v0 != 1)
  {
    v1 = 0x73676E696E726165;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D79536B636F7473;
  }
}

uint64_t sub_1DABAFAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DABB233C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DABAFACC(uint64_t a1)
{
  v2 = sub_1DABAFD38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABAFB08(uint64_t a1)
{
  v2 = sub_1DABAFD38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DABAFB44(void *a1)
{
  v3 = v1;
  sub_1DABB0150(0, &qword_1ECBE8510, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABAFD38();
  sub_1DACBA304();
  v12 = *v3;
  v13 = v3[1];
  v18[15] = 0;
  sub_1DACBA094();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v18[14] = 1;
    sub_1DACBA094();
    v16 = *(type metadata accessor for EarningsCalendarEventModel() + 24);
    v18[13] = 2;
    sub_1DACB7CC4();
    sub_1DAA5D564(&qword_1EE125288, 255, MEMORY[0x1E6969530]);
    sub_1DACBA0E4();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1DABAFD38()
{
  result = qword_1ECBE8518;
  if (!qword_1ECBE8518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8518);
  }

  return result;
}

uint64_t sub_1DABAFD8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v26 = sub_1DACB7CC4();
  v23 = *(v26 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DABB0150(0, &qword_1ECBE8520, MEMORY[0x1E69E6F48]);
  v27 = v7;
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - v9;
  v11 = type metadata accessor for EarningsCalendarEventModel();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABAFD38();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = a1;
  v17 = v25;
  v16 = v26;
  v30 = 0;
  *v14 = sub_1DACB9FA4();
  v14[1] = v18;
  v21[1] = v18;
  v29 = 1;
  v14[2] = sub_1DACB9FA4();
  v14[3] = v19;
  v28 = 2;
  sub_1DAA5D564(&qword_1EE123A38, 255, MEMORY[0x1E6969530]);
  sub_1DACB9FE4();
  (*(v17 + 8))(v10, v27);
  (*(v23 + 32))(v14 + *(v11 + 24), v6, v16);
  sub_1DABB2464(v14, v24, type metadata accessor for EarningsCalendarEventModel);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return sub_1DABB24CC(v14, type metadata accessor for EarningsCalendarEventModel);
}

void sub_1DABB0150(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DABAFD38();
    v7 = a3(a1, &type metadata for EarningsCalendarEventModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DABB026C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EarningsCalendarEventModel();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5D42C(0, qword_1EE11DCD0, type metadata accessor for EarningsCalendarEventModel, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(v2 + 32);
  sub_1DACB71F4();
  sub_1DACB8144();

  swift_beginAccess();
  v16 = *(v2 + 24);
  if (*(v16 + 16) && (v17 = sub_1DAA4BF3C(v13, v14), (v18 & 1) != 0))
  {
    sub_1DABB2464(*(v16 + 56) + *(v5 + 72) * v17, v12, type metadata accessor for EarningsCalendarEventModel);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  (*(v5 + 56))(v12, v19, 1, v4);
  if ((*(v5 + 48))(v12, 1, v4))
  {
    sub_1DAA633E8(v12, qword_1EE11DCD0, type metadata accessor for EarningsCalendarEventModel);
    swift_endAccess();
    v20 = 0;
  }

  else
  {
    sub_1DABB2464(v12, v8, type metadata accessor for EarningsCalendarEventModel);
    sub_1DAA633E8(v12, qword_1EE11DCD0, type metadata accessor for EarningsCalendarEventModel);
    swift_endAccess();
    v20 = *(v8 + 2);
    v21 = *(v8 + 3);
    sub_1DACB71E4();
    sub_1DABB24CC(v8, type metadata accessor for EarningsCalendarEventModel);
  }

  v22 = *(v2 + 32);
  sub_1DACB71F4();
  sub_1DACB8154();

  return v20;
}

uint64_t sub_1DABB0524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(v2 + 32);
  sub_1DACB71F4();
  sub_1DACB8144();

  swift_beginAccess();
  v8 = *(v3 + 24);
  if (*(v8 + 16) && (v9 = sub_1DAA4BF3C(v5, v6), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(v8 + 56);
    v13 = type metadata accessor for EarningsCalendarEventModel();
    v14 = *(v13 - 8);
    sub_1DABB2464(v12 + *(v14 + 72) * v11, a2, type metadata accessor for EarningsCalendarEventModel);
    (*(v14 + 56))(a2, 0, 1, v13);
  }

  else
  {
    v15 = type metadata accessor for EarningsCalendarEventModel();
    (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  }

  swift_endAccess();
  v16 = *(v3 + 32);
  sub_1DACB71F4();
  sub_1DACB8154();
}

uint64_t sub_1DABB06A8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v57 = a2;
  v58 = a3;
  v63 = sub_1DACB8FB4();
  v66 = *(v63 - 8);
  v8 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DACB9004();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1DACB8FC4();
  v56 = *(v59 - 8);
  v13 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v55 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5D42C(0, qword_1EE11DCD0, type metadata accessor for EarningsCalendarEventModel, MEMORY[0x1E69E6720]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v52 - v17;
  v19 = type metadata accessor for EarningsCalendarEventModel();
  v20 = *(v19 - 8);
  v54 = *(v20 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v53 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v52 - v23;
  v25 = a1[7];
  v75 = a1[6];
  v76 = v25;
  v77 = *(a1 + 16);
  v26 = a1[3];
  v71 = a1[2];
  v72 = v26;
  v27 = a1[5];
  v73 = a1[4];
  v74 = v27;
  v28 = a1[1];
  v69 = *a1;
  v70 = v28;
  v29 = *(v4 + 32);
  sub_1DACB71F4();
  sub_1DACB8144();

  v30 = v70;
  v31 = *(v19 + 24);
  v32 = sub_1DACB7CC4();
  (*(*(v32 - 8) + 16))(&v24[v31], v57, v32);
  *v24 = v30;
  *(v24 + 2) = v58;
  *(v24 + 3) = a4;
  sub_1DABB2464(v24, v18, type metadata accessor for EarningsCalendarEventModel);
  (*(v20 + 56))(v18, 0, 1, v19);
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  sub_1DACB71E4();
  v60 = v5;
  sub_1DAB596FC(v18, v30, *(&v30 + 1));
  swift_endAccess();
  sub_1DAA57C58();
  v34 = v55;
  v33 = v56;
  v35 = v59;
  (*(v56 + 104))(v55, *MEMORY[0x1E69E7F88], v59);
  v58 = sub_1DACB9984();
  (*(v33 + 8))(v34, v35);
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = v53;
  sub_1DABB2464(v24, v53, type metadata accessor for EarningsCalendarEventModel);
  v38 = (*(v20 + 80) + 160) & ~*(v20 + 80);
  v39 = swift_allocObject();
  v40 = v73;
  *(v39 + 104) = v74;
  v41 = v76;
  *(v39 + 120) = v75;
  *(v39 + 136) = v41;
  v42 = v69;
  *(v39 + 40) = v70;
  v43 = v72;
  *(v39 + 56) = v71;
  *(v39 + 72) = v43;
  *(v39 + 88) = v40;
  *(v39 + 16) = v36;
  *(v39 + 152) = v77;
  *(v39 + 24) = v42;
  sub_1DAA7C5C4(v37, v39 + v38, type metadata accessor for EarningsCalendarEventModel);
  v68[4] = sub_1DABB259C;
  v68[5] = v39;
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 1107296256;
  v68[2] = sub_1DAA5796C;
  v68[3] = &block_descriptor_17;
  v44 = _Block_copy(v68);
  sub_1DACB71F4();
  sub_1DAA806E4(&v69, v67);
  v45 = v61;
  sub_1DACB8FD4();
  v67[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA5D564(&qword_1EE124040, 255, MEMORY[0x1E69E7F60]);
  v46 = MEMORY[0x1E69E7F60];
  sub_1DAA5D42C(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA4F64C(&qword_1EE123EB0, &qword_1EE123EC0, v46);
  v48 = v62;
  v47 = v63;
  sub_1DACB9BB4();
  v49 = v58;
  MEMORY[0x1E1277440](0, v45, v48, v44);
  _Block_release(v44);

  (*(v66 + 8))(v48, v47);
  (*(v64 + 8))(v45, v65);
  sub_1DABB24CC(v24, type metadata accessor for EarningsCalendarEventModel);

  v50 = *(v60 + 32);
  sub_1DACB71F4();
  sub_1DACB8154();
}

void sub_1DABB0DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DAA5D42C(0, &qword_1EE11D340, sub_1DAA5DB88, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v23[-v7 - 8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + 16);
    sub_1DACB88F4();
    sub_1DACB8D84();

    sub_1DAA5DB88(0);
    v12 = v11;
    v13 = *(v11 - 8);
    if ((*(v13 + 48))(v8, 1, v11) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1DAA5D42C(0, &unk_1ECBE8540, sub_1DABB2604, MEMORY[0x1E69E6F90]);
      sub_1DABB2604();
      v15 = v14 - 8;
      v16 = *(*(v14 - 8) + 72);
      v17 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1DACC1D20;
      v19 = (v18 + v17);
      v20 = *(v15 + 56);
      v24 = *(a2 + 16);
      *v19 = v24;
      sub_1DABB2464(a3, v19 + v20, type metadata accessor for EarningsCalendarEventModel);
      sub_1DAAA1344(&v24, v23);
      sub_1DAB691F8(v18);
      swift_setDeallocating();
      sub_1DABB24CC(v19, sub_1DABB2604);
      swift_deallocClassInstance();
      sub_1DACB8D44();

      (*(v13 + 8))(v8, v12);
      v21 = sub_1DACB89D4();
      sub_1DACB8AA4();
    }
  }
}

uint64_t sub_1DABB10D4()
{
  if (qword_1EE11DF88 != -1)
  {
    swift_once();
  }

  sub_1DACB9904();
  sub_1DAA41D64();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DACC1D20;
  sub_1DAA4436C(0, &qword_1EE123B10);
  sub_1DACB9DD4();
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1DAA443C8();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_1DACB8C64();
}

uint64_t sub_1DABB120C(__int128 *a1)
{
  v2 = v1;
  v43 = sub_1DACB8FB4();
  v46 = *(v43 - 8);
  v4 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB9004();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1DACB8FC4();
  v9 = *(v39 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5D42C(0, qword_1EE11DCD0, type metadata accessor for EarningsCalendarEventModel, MEMORY[0x1E69E6720]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v38 - v15;
  v17 = a1[7];
  v55 = a1[6];
  v56 = v17;
  v57 = *(a1 + 16);
  v18 = a1[3];
  v51 = a1[2];
  v52 = v18;
  v19 = a1[5];
  v53 = a1[4];
  v54 = v19;
  v20 = a1[1];
  v49 = *a1;
  v50 = v20;
  v21 = *(v1 + 32);
  sub_1DACB71F4();
  sub_1DACB8144();

  v22 = v50;
  swift_beginAccess();
  sub_1DAB5FE78(v22, *(&v22 + 1), v16);
  swift_endAccess();
  sub_1DAA633E8(v16, qword_1EE11DCD0, type metadata accessor for EarningsCalendarEventModel);
  sub_1DAA57C58();
  v23 = v39;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E7F80], v39);
  v40 = sub_1DACB9984();
  (*(v9 + 8))(v12, v23);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v26 = v53;
  *(v25 + 104) = v54;
  v27 = v56;
  *(v25 + 120) = v55;
  *(v25 + 136) = v27;
  v28 = v49;
  *(v25 + 40) = v50;
  v29 = v52;
  *(v25 + 56) = v51;
  *(v25 + 72) = v29;
  *(v25 + 88) = v26;
  *(v25 + 16) = v24;
  *(v25 + 152) = v57;
  *(v25 + 24) = v28;
  v48[4] = sub_1DABB2590;
  v48[5] = v25;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 1107296256;
  v48[2] = sub_1DAA5796C;
  v48[3] = &block_descriptor_14;
  v30 = _Block_copy(v48);
  sub_1DACB71F4();
  sub_1DAA806E4(&v49, v47);
  v31 = v41;
  sub_1DACB8FD4();
  v47[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA5D564(&qword_1EE124040, 255, MEMORY[0x1E69E7F60]);
  v32 = MEMORY[0x1E69E7F60];
  sub_1DAA5D42C(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA4F64C(&qword_1EE123EB0, &qword_1EE123EC0, v32);
  v34 = v42;
  v33 = v43;
  sub_1DACB9BB4();
  v35 = v40;
  MEMORY[0x1E1277440](0, v31, v34, v30);
  _Block_release(v30);

  (*(v46 + 8))(v34, v33);
  (*(v44 + 8))(v31, v45);

  v36 = *(v2 + 32);
  sub_1DACB71F4();
  sub_1DACB8154();
}

void sub_1DABB1764(uint64_t a1, uint64_t a2)
{
  sub_1DAA5D42C(0, &qword_1EE11D340, sub_1DAA5DB88, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 16);
    sub_1DACB88F4();
    sub_1DACB8D84();

    sub_1DAA5DB88(0);
    v10 = v9;
    v11 = *(v9 - 8);
    if ((*(v11 + 48))(v6, 1, v9) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1DAA61630(0, &qword_1EE123B50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1DACC1D20;
      v13 = *(a2 + 24);
      *(v12 + 32) = *(a2 + 16);
      *(v12 + 40) = v13;
      sub_1DACB71E4();
      sub_1DACB8D54();

      (*(v11 + 8))(v6, v10);
      v14 = sub_1DACB89D4();
      sub_1DACB8AA4();
    }
  }
}

uint64_t sub_1DABB1988(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DACB8FB4();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB9004();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DACB8FC4();
  v51 = *(v10 - 8);
  v52 = v10;
  v11 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5D42C(0, qword_1EE11DCD0, type metadata accessor for EarningsCalendarEventModel, MEMORY[0x1E69E6720]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v49 - v15;
  v17 = *(v1 + 32);
  sub_1DACB71F4();
  sub_1DACB8144();

  v59 = a1;
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = (v59 + 40);
    do
    {
      v22 = *(v19 - 1);
      v21 = *v19;
      swift_beginAccess();
      v23 = *(v2 + 24);
      sub_1DACB71E4();
      v24 = sub_1DAA4BF3C(v22, v21);
      if (v25)
      {
        v26 = v24;
        v27 = *(v2 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = *(v2 + 24);
        v60 = v29;
        *(v2 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1DAB664AC();
          v29 = v60;
        }

        v30 = *(*(v29 + 48) + 16 * v26 + 8);

        v31 = *(v29 + 56);
        v32 = type metadata accessor for EarningsCalendarEventModel();
        v33 = *(v32 - 8);
        sub_1DAA7C5C4(v31 + *(v33 + 72) * v26, v16, type metadata accessor for EarningsCalendarEventModel);
        sub_1DAB64C98(v26, v29);
        v34 = *(v2 + 24);
        *(v2 + 24) = v29;

        (*(v33 + 56))(v16, 0, 1, v32);
      }

      else
      {
        v20 = type metadata accessor for EarningsCalendarEventModel();
        (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
      }

      swift_endAccess();

      sub_1DAA633E8(v16, qword_1EE11DCD0, type metadata accessor for EarningsCalendarEventModel);
      v19 += 2;
      --v18;
    }

    while (v18);
  }

  sub_1DAA57C58();
  v36 = v50;
  v35 = v51;
  v37 = v52;
  (*(v51 + 104))(v50, *MEMORY[0x1E69E7F80], v52);
  v38 = sub_1DACB9984();
  (*(v35 + 8))(v36, v37);
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = swift_allocObject();
  v41 = v59;
  *(v40 + 16) = v39;
  *(v40 + 24) = v41;
  aBlock[4] = sub_1DABB266C;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_24_0;
  v42 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71E4();
  v43 = v53;
  sub_1DACB8FD4();
  v60 = MEMORY[0x1E69E7CC0];
  sub_1DAA5D564(&qword_1EE124040, 255, MEMORY[0x1E69E7F60]);
  v44 = MEMORY[0x1E69E7F60];
  sub_1DAA5D42C(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA4F64C(&qword_1EE123EB0, &qword_1EE123EC0, v44);
  v45 = v56;
  v46 = v58;
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v43, v45, v42);
  _Block_release(v42);

  (*(v57 + 8))(v45, v46);
  (*(v54 + 8))(v43, v55);

  v47 = *(v2 + 32);
  sub_1DACB71F4();
  sub_1DACB8154();
}

void sub_1DABB1FF8()
{
  sub_1DAA5D42C(0, &qword_1EE11D340, sub_1DAA5DB88, MEMORY[0x1E69E6720]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v10 - v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 16);
    sub_1DACB88F4();
    sub_1DACB8D84();

    sub_1DAA5DB88(0);
    v7 = v6;
    v8 = *(v6 - 8);
    if ((*(v8 + 48))(v3, 1, v6) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1DACB8D54();
      (*(v8 + 8))(v3, v7);
      v9 = sub_1DACB89D4();
      sub_1DACB8AA4();
    }
  }
}

uint64_t sub_1DABB21B8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

unint64_t sub_1DABB2224()
{
  result = qword_1ECBE8528;
  if (!qword_1ECBE8528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8528);
  }

  return result;
}

unint64_t sub_1DABB2290()
{
  result = qword_1ECBE8530;
  if (!qword_1ECBE8530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8530);
  }

  return result;
}

unint64_t sub_1DABB22E8()
{
  result = qword_1ECBE8538;
  if (!qword_1ECBE8538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8538);
  }

  return result;
}

uint64_t sub_1DABB233C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D79536B636F7473 && a2 == 0xEB000000006C6F62;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656449746E657665 && a2 == 0xEF7265696669746ELL || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73676E696E726165 && a2 == 0xEC00000065746144)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1DABB2464(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DABB24CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DABB252C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EarningsCalendarEventModel();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1DABB259C()
{
  v1 = *(type metadata accessor for EarningsCalendarEventModel() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 160) & ~*(v1 + 80));

  sub_1DABB0DB4(v2, v0 + 24, v3);
}

void sub_1DABB2604()
{
  if (!qword_1ECBE7DF8)
  {
    type metadata accessor for EarningsCalendarEventModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECBE7DF8);
    }
  }
}

void sub_1DABB266C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DABB1FF8();
}

uint64_t sub_1DABB26E4(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

id sub_1DABB271C()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC10StocksCore21IdentificationService_lockedSource];
  *v2 = 0;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 5) = 0;
  v2[48] = 2;
  v3 = OBJC_IVAR____TtC10StocksCore21IdentificationService_sensitiveUserDefaults;
  if (qword_1EE123E10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_1EE123E18;
  *&v0[v3] = qword_1EE123E18;
  v5 = OBJC_IVAR____TtC10StocksCore21IdentificationService_stocksKitDefaults;
  v6 = qword_1EE123E00;
  v7 = v4;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE13E478;
  *&v0[v5] = qword_1EE13E478;
  v9 = &v0[OBJC_IVAR____TtC10StocksCore21IdentificationService_lockedObservers];
  v10 = MEMORY[0x1E69E7CC0];
  *v9 = 0;
  *(v9 + 1) = v10;
  v13.receiver = v0;
  v13.super_class = ObjectType;
  v11 = v8;
  return objc_msgSendSuper2(&v13, sel_init);
}

void sub_1DABB2914()
{
  if (!qword_1ECBE8578)
  {
    v0 = sub_1DACB8C24();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE8578);
    }
  }
}

void sub_1DABB2998(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DABB2A20(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC10StocksCore21IdentificationService_lockedSource];
  os_unfair_lock_lock(&v1[OBJC_IVAR____TtC10StocksCore21IdentificationService_lockedSource]);
  sub_1DAA65C58(&v3[2]);
  sub_1DABB3E74(a1, &v3[2]);
  os_unfair_lock_unlock(v3);
  sub_1DABB3E74(a1, v23);
  if (v24)
  {
    if (v24 == 1)
    {
      sub_1DAA4D460(v23, aBlock);
      v4 = v19;
      v5 = v20;
      __swift_project_boxed_opaque_existential_1(aBlock, v19);
      (*(v5 + 1))(v4, v5);
      sub_1DAA4D678(aBlock, v22);
      v6 = swift_allocObject();
      *(v6 + 16) = v1;
      sub_1DAA4D460(v22, v6 + 24);
      v7 = v1;
      v8 = sub_1DACB89D4();
      sub_1DACB8A64();

      v9 = v19;
      v10 = v20;
      __swift_project_boxed_opaque_existential_1(aBlock, v19);
      (*(v10 + 3))(v9, v10);
      *(swift_allocObject() + 16) = v7;
      v11 = v7;
      v12 = sub_1DACB89D4();
      sub_1DACB8A64();

      __swift_destroy_boxed_opaque_existential_1(aBlock);
    }
  }

  else
  {
    v13 = *&v23[0];
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    *(v14 + 24) = v13;
    v20 = sub_1DABB3F1C;
    v21 = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DABB2DB4;
    v19 = &block_descriptor_15;
    v15 = _Block_copy(aBlock);
    v16 = v1;
    v17 = v13;

    [v17 syncWithCompletion_];
    _Block_release(v15);
  }
}

id sub_1DABB2CC4(int a1, int a2, uint64_t a3, id a4)
{
  v6 = [a4 stocks_generateFeldsparIDIfNeeded];
  v7 = sub_1DACB9324();
  v9 = v8;

  sub_1DABB40D4(v7, v9);

  v10 = [a4 adsUserID];
  if (!v10)
  {
    v10 = [a4 stocks_resetAdsUserID];
  }

  v11 = v10;
  v12 = sub_1DACB9324();
  v14 = v13;

  sub_1DABB4384(v12, v14);

  return [a4 addObserver_];
}

void sub_1DABB2DB4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1DACB71F4();
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1DABB2E2C(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v6 = a1[1];
  sub_1DACB71E4();
  sub_1DABB40D4(v5, v6);

  v7 = a3[3];
  v8 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v7);
  return (*(v8 + 120))(a2, &off_1F5689168, v7, v8);
}

uint64_t sub_1DABB2EEC()
{
  v1 = v0;
  v2 = sub_1DACB7D04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC10StocksCore21IdentificationService_sensitiveUserDefaults);
  v8 = sub_1DACB92F4();
  v9 = [v7 stringForKey_];

  if (!v9)
  {
    sub_1DACB6D04();
    v10 = sub_1DACB7CE4();
    (*(v3 + 8))(v6, v2);
    v14 = sub_1DACB92F4();
    v15 = sub_1DACB92F4();
    [v7 setObject:v14 forKey:v15];

    v16 = *(v1 + OBJC_IVAR____TtC10StocksCore21IdentificationService_stocksKitDefaults);
    v17 = sub_1DACB92F4();
    v18 = sub_1DACB92F4();
    [v16 setObject:v17 forKey:v18];

LABEL_6:
    return v10;
  }

  v10 = sub_1DACB9324();
  v11 = *(v1 + OBJC_IVAR____TtC10StocksCore21IdentificationService_stocksKitDefaults);
  v12 = sub_1DACB92F4();
  v13 = [v11 stringForKey_];

  if (!v13)
  {
    v18 = sub_1DACB92F4();
    [v11 setObject:v9 forKey:v18];

    goto LABEL_6;
  }

  return v10;
}

uint64_t sub_1DABB3148(uint64_t a1)
{
  v2 = sub_1DACB7D04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + OBJC_IVAR____TtC10StocksCore21IdentificationService_lockedSource);
  os_unfair_lock_lock(v7);
  sub_1DABB3E74(&v7[2], v18);
  os_unfair_lock_unlock(v7);
  if (v19)
  {
    if (v19 == 1)
    {
      sub_1DAA4D460(v18, v15);
      v8 = v16;
      v9 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      v10 = (*(v9 + 16))(v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v15);
    }

    else
    {
      sub_1DACB6D04();
      v10 = sub_1DACB7CE4();
      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    v11 = *&v18[0];
    v12 = [*&v18[0] stocks_resetFeldsparID];
    v10 = sub_1DACB9324();
  }

  return v10;
}

uint64_t sub_1DABB32EC()
{
  v1 = sub_1DACB7D04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC10StocksCore21IdentificationService_sensitiveUserDefaults);
  v7 = sub_1DACB92F4();
  v8 = [v6 stringForKey_];

  if (v8)
  {
    v9 = sub_1DACB9324();

    return v9;
  }

  else
  {
    sub_1DACB6D04();
    v11 = sub_1DACB7CE4();
    (*(v2 + 8))(v5, v1);
    v12 = sub_1DACB92F4();
    v13 = sub_1DACB92F4();
    [v6 setObject:v12 forKey:v13];

    return v11;
  }
}

uint64_t sub_1DABB3490(uint64_t a1)
{
  v2 = sub_1DACB7D04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + OBJC_IVAR____TtC10StocksCore21IdentificationService_lockedSource);
  os_unfair_lock_lock(v7);
  sub_1DABB3E74(&v7[2], v18);
  os_unfair_lock_unlock(v7);
  if (v19)
  {
    if (v19 == 1)
    {
      sub_1DAA4D460(v18, v15);
      v8 = v16;
      v9 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      v10 = (*(v9 + 32))(v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v15);
    }

    else
    {
      sub_1DACB6D04();
      v10 = sub_1DACB7CE4();
      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    v11 = *&v18[0];
    v12 = [*&v18[0] stocks_resetAdsUserID];
    v10 = sub_1DACB9324();
  }

  return v10;
}

uint64_t sub_1DABB3634(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a1 & 0xFFFFFFFFFFFFFF8;
  v6 = *a1 >> 62;
  if (v6)
  {
    goto LABEL_65;
  }

  v7 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {
      if (v6)
      {
        v8 = sub_1DACB9E14();
      }

      else
      {
        v8 = *(v5 + 16);
      }

      goto LABEL_21;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12777A0](v8, v4);
    }

    else
    {
      if (v8 >= *(v5 + 16))
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        v7 = sub_1DACB9E14();
        goto LABEL_3;
      }

      v9 = *(v4 + 8 * v8 + 32);
      sub_1DACB71F4();
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      break;
    }

    swift_unknownObjectRelease();
    v12 = __OFADD__(v8++, 1);
    if (v12)
    {
      goto LABEL_59;
    }
  }

  v13 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    goto LABEL_72;
  }

  if (v6)
  {
    if (v13 != sub_1DACB9E14())
    {
      goto LABEL_25;
    }

LABEL_21:
    if (v4 >> 62)
    {
      v14 = sub_1DACB9E14();
      if (v14 >= v8)
      {
LABEL_23:
        sub_1DACA6EA8(v8, v14);
        _s10StocksCore13ObserverProxyCMa_0();
        v15 = swift_allocObject();
        *(v15 + 24) = 0;
        swift_unknownObjectWeakInit();
        *(v15 + 24) = a3;
        v16 = swift_unknownObjectWeakAssign();
        MEMORY[0x1E12770F0](v16);
        if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          return sub_1DACB96F4();
        }

LABEL_68:
        sub_1DACB9694();
        return sub_1DACB96F4();
      }
    }

    else
    {
      v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14 >= v8)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

  if (v13 == *(v5 + 16))
  {
    goto LABEL_21;
  }

LABEL_25:
  v5 = v8 + 5;
  while (2)
  {
    v17 = v5 - 4;
    v6 = v4 & 0xC000000000000001;
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12777A0](v5 - 4, v4);
    }

    else
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_60;
      }

      if (v17 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v18 = *(v4 + 8 * v5);
      sub_1DACB71F4();
    }

    v19 = swift_unknownObjectWeakLoadStrong();

    if (!v19)
    {
      goto LABEL_49;
    }

    result = swift_unknownObjectRelease();
    if (v17 == v8)
    {
      goto LABEL_48;
    }

    if (v6)
    {
      v20 = MEMORY[0x1E12777A0](v8, v4);
      v21 = MEMORY[0x1E12777A0](v5 - 4, v4);
      goto LABEL_38;
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
      v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 >= v22)
      {
        goto LABEL_70;
      }

      if (v17 >= v22)
      {
        goto LABEL_71;
      }

      v20 = *(v4 + 8 * v8 + 32);
      v21 = *(v4 + 8 * v5);
      sub_1DACB71F4();
      sub_1DACB71F4();
LABEL_38:
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
      {
        v4 = sub_1DACA83E4(v4);
        v23 = (v4 >> 62) & 1;
      }

      else
      {
        LODWORD(v23) = 0;
      }

      v6 = v4 & 0xFFFFFFFFFFFFFF8;
      v24 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
      *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v21;

      if ((v4 & 0x8000000000000000) != 0 || v23)
      {
        v4 = sub_1DACA83E4(v4);
        v6 = v4 & 0xFFFFFFFFFFFFFF8;
        if ((v17 & 0x8000000000000000) != 0)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }
      }

      else if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_57;
      }

      if (v17 >= *(v6 + 16))
      {
        goto LABEL_64;
      }

      v25 = *(v6 + 8 * v5);
      *(v6 + 8 * v5) = v20;

      *a1 = v4;
LABEL_48:
      v12 = __OFADD__(v8++, 1);
      if (v12)
      {
        goto LABEL_63;
      }

LABEL_49:
      v6 = v5 - 3;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_62;
      }

      if (v4 >> 62)
      {
        v26 = sub_1DACB9E14();
      }

      else
      {
        v26 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v5;
      if (v6 == v26)
      {
        goto LABEL_21;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1DABB3A84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v6 = a3(*v4);
  a4(v6);
}

void sub_1DABB3ADC(uint64_t a1, uint64_t a2)
{
  v5 = *v2 + OBJC_IVAR____TtC10StocksCore21IdentificationService_lockedObservers;
  os_unfair_lock_lock(v5);
  sub_1DABB3634((v5 + 8), a1, a2);

  os_unfair_lock_unlock(v5);
}

void sub_1DABB3B50(uint64_t a1)
{
  v3 = *v1 + OBJC_IVAR____TtC10StocksCore21IdentificationService_lockedObservers;
  os_unfair_lock_lock(v3);
  swift_unknownObjectRetain();
  v4 = sub_1DAAFB9C8((v3 + 8), a1);
  swift_unknownObjectRelease();
  v5 = *(v3 + 8);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v7 = *(v3 + 8);
    }

    v6 = sub_1DACB9E14();
    if (v6 >= v4)
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6 < v4)
  {
    goto LABEL_9;
  }

LABEL_3:
  sub_1DACA6EA8(v4, v6);

  os_unfair_lock_unlock(v3);
}

void sub_1DABB3C60(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = a3;
  v15 = a1;
  v10 = [v9 *a5];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1DACB9324();
    v14 = v13;

    a6(v12, v14);
  }

  else
  {
  }
}

uint64_t sub_1DABB3D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  sub_1DACB71E4();
  a6(a2, a3);
}

uint64_t sub_1DABB3DFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v9);

  return a6(v11, a2, a3, v6, v9, v10);
}

uint64_t sub_1DABB3ECC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = a1[1];
  sub_1DACB71E4();
  sub_1DABB4384(v3, v4);
}

uint64_t sub_1DABB3F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[3] = a5;
  v15[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(a4 + 24);
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(v15, a2, a3, ObjectType, v12);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_1DABB3FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[3] = a5;
  v15[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(a4 + 24);
    ObjectType = swift_getObjectType();
    (*(v12 + 16))(v15, a2, a3, ObjectType, v12);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

void sub_1DABB40D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (sub_1DABB2EEC() == a1 && v6 == a2)
  {
LABEL_3:

    return;
  }

  v7 = sub_1DACBA174();

  if (v7)
  {
    return;
  }

  v8 = *&v2[OBJC_IVAR____TtC10StocksCore21IdentificationService_sensitiveUserDefaults];
  v9 = sub_1DACB92F4();
  v10 = sub_1DACB92F4();
  [v8 setObject:v9 forKey:v10];

  v11 = *&v3[OBJC_IVAR____TtC10StocksCore21IdentificationService_stocksKitDefaults];
  v12 = sub_1DACB92F4();
  v13 = sub_1DACB92F4();
  [v11 setObject:v12 forKey:v13];

  v14 = &v3[OBJC_IVAR____TtC10StocksCore21IdentificationService_lockedObservers];
  os_unfair_lock_lock(&v3[OBJC_IVAR____TtC10StocksCore21IdentificationService_lockedObservers]);
  v15 = *(v14 + 1);
  sub_1DACB71E4();
  os_unfair_lock_unlock(v14);
  if (v15 >> 62)
  {
    v16 = sub_1DACB9E14();
    if (!v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_3;
    }
  }

  v25 = a1;
  v26 = a2;
  if (v16 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v16; ++i)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1E12777A0](i, v15);
      }

      else
      {
        v23 = *(v15 + 8 * i + 32);
        sub_1DACB71F4();
      }

      v28[3] = ObjectType;
      v28[4] = &off_1F5689180;
      v28[0] = v3;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = *(v23 + 24);
        v19 = swift_getObjectType();
        v20 = v16;
        v21 = *(v18 + 8);
        v22 = v3;
        v21(v28, v25, v26, v19, v18);
        v16 = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = v3;
      }

      __swift_destroy_boxed_opaque_existential_1(v28);
    }
  }
}

void sub_1DABB4384(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (sub_1DABB32EC() == a1 && v6 == a2)
  {
LABEL_3:

    return;
  }

  v7 = sub_1DACBA174();

  if (v7)
  {
    return;
  }

  v8 = *&v2[OBJC_IVAR____TtC10StocksCore21IdentificationService_sensitiveUserDefaults];
  v9 = sub_1DACB92F4();
  v10 = sub_1DACB92F4();
  [v8 setObject:v9 forKey:v10];

  v11 = &v3[OBJC_IVAR____TtC10StocksCore21IdentificationService_lockedObservers];
  os_unfair_lock_lock(&v3[OBJC_IVAR____TtC10StocksCore21IdentificationService_lockedObservers]);
  v12 = *(v11 + 1);
  sub_1DACB71E4();
  os_unfair_lock_unlock(v11);
  if (v12 >> 62)
  {
    v13 = sub_1DACB9E14();
    if (!v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_3;
    }
  }

  v22 = a1;
  v23 = a2;
  if (v13 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v13; ++i)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1E12777A0](i, v12);
      }

      else
      {
        v20 = *(v12 + 8 * i + 32);
        sub_1DACB71F4();
      }

      v25[3] = ObjectType;
      v25[4] = &off_1F5689180;
      v25[0] = v3;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v20 + 24);
        v16 = swift_getObjectType();
        v17 = v13;
        v18 = *(v15 + 16);
        v19 = v3;
        v18(v25, v22, v23, v16, v15);
        v13 = v17;
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = v3;
      }

      __swift_destroy_boxed_opaque_existential_1(v25);
    }
  }
}

uint64_t sub_1DABB45EC(uint64_t a1)
{
  sub_1DABB2964(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DABB4648()
{
  v1 = sub_1DACB9364();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 stocksFields];
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = [v6 stocksFeedConfigJSON];
  swift_unknownObjectRelease();
  if (!v7)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1DACB9324();

  v8 = sub_1DACB7554();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1DACB7544();
  sub_1DACB9354();
  v11 = sub_1DACB9334();
  v13 = v12;
  result = (*(v2 + 8))(v5, v1);
  if (v13 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    sub_1DABB4834();
    sub_1DACB7524();
    sub_1DAB4D534(v11, v13);

    return v15[1];
  }

  return result;
}

unint64_t sub_1DABB4834()
{
  result = qword_1EE11F0A8;
  if (!qword_1EE11F0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F0A8);
  }

  return result;
}

uint64_t sub_1DABB4888()
{
  v0 = sub_1DACB78E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7E44();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1DACB92E4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1DACB7904();
  __swift_allocate_value_buffer(v9, qword_1ECBE85F0);
  __swift_project_value_buffer(v9, qword_1ECBE85F0);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v4, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t sub_1DABB4AA0()
{
  sub_1DAA6AA98(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_1DACB78E4();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7E44();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1DACB92E4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1DACB7904();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = sub_1DACB7084();
  __swift_allocate_value_buffer(v15, qword_1ECBE8608);
  __swift_project_value_buffer(v15, qword_1ECBE8608);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v4 + 104))(v7, *MEMORY[0x1E6968DF0], v17[0]);
  sub_1DACB7914();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_1DACB7094();
}

uint64_t sub_1DABB4DE0()
{
  v0 = sub_1DACB6E84();
  __swift_allocate_value_buffer(v0, qword_1ECBE8620);
  __swift_project_value_buffer(v0, qword_1ECBE8620);
  return sub_1DACB6E74();
}

uint64_t sub_1DABB4E44()
{
  sub_1DABB7F38(0, &qword_1ECBE8638, sub_1DABB5034, &type metadata for NewWatchlistIntent, MEMORY[0x1E695A4A8]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1DABB7F38(0, &qword_1ECBE8640, sub_1DABB5034, &type metadata for NewWatchlistIntent, MEMORY[0x1E695A4A0]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1DABB5034();
  sub_1DACB7254();
  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DABB50AC();
  sub_1DACB7234();

  sub_1DACB7244();
  sub_1DACB7264();
  return sub_1DACB7214();
}

unint64_t sub_1DABB5034()
{
  result = qword_1EE11E7F8;
  if (!qword_1EE11E7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E7F8);
  }

  return result;
}

void sub_1DABB50AC()
{
  if (!qword_1ECBE8648)
  {
    sub_1DABB7F38(255, &qword_1ECBE8650, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A1A0]);
    v0 = sub_1DACBA314();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE8648);
    }
  }
}

uint64_t sub_1DABB5144()
{
  swift_getKeyPath();
  sub_1DABB5034();
  v0 = sub_1DACB71F4();

  sub_1DAA61540(0, &qword_1EE11F490, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DACC4A10;
  *(v1 + 32) = v0;
  sub_1DACB71F4();
  v2 = sub_1DACB71E4();

  return v2;
}

uint64_t sub_1DABB5240()
{
  v1 = *v0;
  sub_1DACB6FB4();
  return v3;
}

uint64_t sub_1DABB5274(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  v7 = a1[1];
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
}

uint64_t (*sub_1DABB5320(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DABB5394()
{
  v1 = *(v0 + 8);
  sub_1DACB6FB4();
  return v3;
}

uint64_t sub_1DABB53C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
}

uint64_t (*sub_1DABB5474(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DABB550C(uint64_t *a1)
{
  v3 = *(v1 + 16);
  sub_1DAA4D678(a1, v5);
  sub_1DACB6D34();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_1DABB5550(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_1DACB6D14();
  return sub_1DAAD9D74;
}

uint64_t sub_1DABB55E8@<X0>(uint64_t *a1@<X8>)
{
  v66 = a1;
  v65 = sub_1DACB7274();
  v67 = *(v65 - 8);
  v1 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DABB5EA0(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v62 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v48 - v7;
  v8 = MEMORY[0x1E69E6720];
  sub_1DAA6AA98(0, &qword_1ECBE8658, MEMORY[0x1E695A7D8], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v56 = &v48 - v11;
  sub_1DAA6AA98(0, &qword_1EE123A80, MEMORY[0x1E6968E10], v8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v68 = &v48 - v14;
  v15 = sub_1DACB78E4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DACB7E44();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = sub_1DACB92E4();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = sub_1DACB7904();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DABB7F38(0, &qword_1ECBE8650, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A1A0]);
  v53 = v29;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v30 = *MEMORY[0x1E6968DF0];
  v31 = *(v16 + 104);
  v31(v19, v30, v15);
  v59 = v28;
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v52 = v30;
  v60 = v16 + 104;
  v61 = v15;
  v55 = v31;
  v31(v19, v30, v15);
  v32 = v68;
  sub_1DACB7914();
  v33 = *(v25 + 56);
  v57 = v25 + 56;
  v58 = v24;
  v54 = v33;
  v33(v32, 0, 1, v24);
  v34 = sub_1DACB9274();
  v69 = 0uLL;
  (*(*(v34 - 8) + 56))();
  if (qword_1ECBE5B58 != -1)
  {
    swift_once();
  }

  v35 = sub_1DACB6E84();
  v36 = __swift_project_value_buffer(v35, qword_1ECBE8620);
  v37 = *(v35 - 8);
  v38 = v63;
  (*(v37 + 16))(v63, v36, v35);
  v49 = *(v37 + 56);
  v49(v38, 0, 1, v35);
  v51 = *MEMORY[0x1E695A500];
  v50 = *(v67 + 104);
  v67 += 104;
  v50(v64);
  *v66 = sub_1DACB7024();
  sub_1DABB5ED4();
  v56 = v39;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v40 = v52;
  v41 = v61;
  v42 = v55;
  v55(v19, v52, v61);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v42(v19, v40, v41);
  v43 = v68;
  sub_1DACB7914();
  v54(v43, 0, 1, v58);
  *&v69 = 0;
  v44 = v49;
  v49(v63, 1, 1, v35);
  v44(v62, 1, 1, v35);
  (v50)(v64, v51, v65);
  sub_1DAAA1548(&unk_1EE11EF70, type metadata accessor for SymbolEntity);
  v45 = sub_1DACB7014();
  v46 = v66;
  v66[1] = v45;
  sub_1DAA6AA98(0, &qword_1EE123AB0, sub_1DAADA3B0, MEMORY[0x1E6959D18]);
  sub_1DACB6D94();
  v69 = 0u;
  v70 = 0u;
  v71 = 0;
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  v46[2] = result;
  return result;
}

void sub_1DABB5ED4()
{
  if (!qword_1ECBE8660)
  {
    sub_1DAA6AA98(255, &qword_1ECBE8668, sub_1DAB1CA10, MEMORY[0x1E69E6720]);
    sub_1DABB5F68();
    v0 = sub_1DACB7044();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE8660);
    }
  }
}

unint64_t sub_1DABB5F68()
{
  result = qword_1ECBE8670;
  if (!qword_1ECBE8670)
  {
    sub_1DAA6AA98(255, &qword_1ECBE8668, sub_1DAB1CA10, MEMORY[0x1E69E6720]);
    sub_1DABB6010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8670);
  }

  return result;
}

unint64_t sub_1DABB6010()
{
  result = qword_1ECBE8678;
  if (!qword_1ECBE8678)
  {
    sub_1DAB1CA10();
    sub_1DAAA1548(&qword_1EE123548, type metadata accessor for SymbolEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8678);
  }

  return result;
}

uint64_t sub_1DABB60B8(uint64_t a1)
{
  *(v2 + 384) = a1;
  sub_1DAA6AA98(0, qword_1EE11EF28, type metadata accessor for SymbolEntity, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 392) = swift_task_alloc();
  v5 = type metadata accessor for SymbolEntity();
  *(v2 + 400) = v5;
  v6 = *(v5 - 8);
  *(v2 + 408) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 416) = swift_task_alloc();
  *(v2 + 424) = swift_task_alloc();
  sub_1DABB5EA0(0);
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v2 + 432) = swift_task_alloc();
  v10 = sub_1DACB7664();
  *(v2 + 440) = v10;
  v11 = *(v10 - 8);
  *(v2 + 448) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 456) = swift_task_alloc();
  *(v2 + 464) = *v1;
  *(v2 + 480) = *(v1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DABB6278, 0, 0);
}

uint64_t sub_1DABB6278()
{
  v36 = v0;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[58];
  v4 = sub_1DACB8C94();
  v0[61] = __swift_project_value_buffer(v4, qword_1EE11D390);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  v5 = sub_1DACB8C74();
  v6 = sub_1DACB9914();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[58];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 136315138;
    sub_1DACB6FB4();
    v10 = sub_1DAA7ABE4(v0[44], v0[45], &v35);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_1DAA3F000, v5, v6, "Creating watchlist name=%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E1278C00](v9, -1, -1);
    MEMORY[0x1E1278C00](v8, -1, -1);
  }

  v12 = v0[57];
  v11 = v0[58];
  v13 = v0[55];
  v14 = v0[56];
  sub_1DACB6FB4();
  v15 = v0[37];
  v0[38] = v0[36];
  v0[39] = v15;
  sub_1DACB7624();
  v0[62] = sub_1DAA642D8();
  v16 = sub_1DACB9B34();
  v18 = v17;
  v19 = *(v14 + 8);
  v0[63] = v19;
  v0[64] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v12, v13);

  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = v0[60];
    sub_1DACB6D24();
    v22 = v0[17];
    v23 = v0[18];
    __swift_project_boxed_opaque_existential_1(v0 + 14, v22);
    v0[68] = (*(v23 + 72))(v16, v18, v22, v23);

    v24 = *(MEMORY[0x1E69D6B08] + 4);
    v25 = swift_task_alloc();
    v0[69] = v25;
    *v25 = v0;
    v25[1] = sub_1DABB6ABC;

    return MEMORY[0x1EEE44EE0](v0 + 2);
  }

  else
  {
    v26 = v0[58];

    v0[65] = sub_1DACB6FD4();
    if (qword_1ECBE5B58 != -1)
    {
      swift_once();
    }

    v27 = v0[54];
    v28 = sub_1DACB6E84();
    v29 = __swift_project_value_buffer(v28, qword_1ECBE8620);
    v30 = *(v28 - 8);
    (*(v30 + 16))(v27, v29, v28);
    (*(v30 + 56))(v27, 0, 1, v28);
    v31 = *(MEMORY[0x1E695A170] + 4);
    v32 = swift_task_alloc();
    v0[66] = v32;
    *v32 = v0;
    v32[1] = sub_1DABB66A0;
    v33 = v0[54];

    return MEMORY[0x1EEDB33A8](v0 + 40, v33);
  }
}

uint64_t sub_1DABB66A0()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v4 = *v1;
  *(*v1 + 536) = v0;

  v5 = *(v2 + 520);
  sub_1DABB7D38(*(v2 + 432), sub_1DABB5EA0);

  if (v0)
  {
    v6 = sub_1DABB77B4;
  }

  else
  {
    v6 = sub_1DABB6804;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DABB6804()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[62];
  v4 = v0[57];
  v5 = v0[55];
  v6 = v0[41];
  v0[42] = v0[40];
  v0[43] = v6;
  sub_1DACB7624();
  v7 = sub_1DACB9B34();
  v9 = v8;
  v2(v4, v5);

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v11 = v0[60];
    sub_1DACB6D24();
    v12 = v0[17];
    v13 = v0[18];
    __swift_project_boxed_opaque_existential_1(v0 + 14, v12);
    v0[68] = (*(v13 + 72))(v7, v9, v12, v13);

    v14 = *(MEMORY[0x1E69D6B08] + 4);
    v15 = swift_task_alloc();
    v0[69] = v15;
    *v15 = v0;
    v15[1] = sub_1DABB6ABC;

    return MEMORY[0x1EEE44EE0](v0 + 2);
  }

  else
  {
    v16 = v0[58];

    v0[65] = sub_1DACB6FD4();
    if (qword_1ECBE5B58 != -1)
    {
      swift_once();
    }

    v17 = v0[54];
    v18 = sub_1DACB6E84();
    v19 = __swift_project_value_buffer(v18, qword_1ECBE8620);
    v20 = *(v18 - 8);
    (*(v20 + 16))(v17, v19, v18);
    (*(v20 + 56))(v17, 0, 1, v18);
    v21 = *(MEMORY[0x1E695A170] + 4);
    v22 = swift_task_alloc();
    v0[66] = v22;
    *v22 = v0;
    v22[1] = sub_1DABB66A0;
    v23 = v0[54];

    return MEMORY[0x1EEDB33A8](v0 + 40, v23);
  }
}

uint64_t sub_1DABB6ABC()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v4 = *(*v1 + 544);
  v7 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v5 = sub_1DABB7854;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 112));
    v5 = sub_1DABB6BFC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DABB6BFC()
{
  v100 = v0;
  v1 = *(v0 + 472);
  sub_1DACB6FB4();
  v2 = *(v0 + 368);
  v3 = *(v0 + 488);
  if (v2)
  {
    v4 = *(v0 + 368);
    sub_1DACB71E4();
    v5 = sub_1DACB8C74();
    v6 = sub_1DACB9914();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *&v89 = v8;
      *v7 = 136315138;
      v10 = *(v2 + 16);
      v11 = MEMORY[0x1E69E7CC0];
      if (v10)
      {
        v81 = v8;
        v82 = v7;
        v83 = v6;
        v84 = v5;
        v87 = *(v0 + 424);
        v12 = *(v0 + 408);
        *&v91 = MEMORY[0x1E69E7CC0];
        sub_1DAA5859C(0, v10, 0);
        v11 = v91;
        v85 = v2;
        v13 = v2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
        v14 = *(v12 + 72);
        do
        {
          v15 = *(v0 + 424);
          sub_1DAAA2C80(v13, v15);
          v16 = *v15;
          v17 = *(v87 + 8);
          sub_1DACB71E4();
          sub_1DABB7D38(v15, type metadata accessor for SymbolEntity);
          *&v91 = v11;
          v19 = *(v11 + 16);
          v18 = *(v11 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_1DAA5859C((v18 > 1), v19 + 1, 1);
            v11 = v91;
          }

          *(v11 + 16) = v19 + 1;
          v20 = v11 + 16 * v19;
          *(v20 + 32) = v16;
          *(v20 + 40) = v17;
          v13 += v14;
          --v10;
        }

        while (v10);
        v5 = v84;
        v2 = v85;
        v6 = v83;
        v9 = v81;
        v7 = v82;
      }

      *(v0 + 376) = v11;
      sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1DAA587CC();
      v50 = sub_1DACB9214();
      v52 = v51;

      v53 = sub_1DAA7ABE4(v50, v52, &v89);

      *(v7 + 4) = v53;
      _os_log_impl(&dword_1DAA3F000, v5, v6, "Adding symbols to new watchlist symbols=[%s]", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1E1278C00](v9, -1, -1);
      MEMORY[0x1E1278C00](v7, -1, -1);
    }

    v54 = *(v2 + 16);
    if (v54)
    {
      v55 = *(v0 + 408);
      *&v89 = MEMORY[0x1E69E7CC0];
      sub_1DAA57914(0, v54, 0);
      v56 = v89;
      v57 = v2 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
      v58 = *(v55 + 72);
      for (i = v54 - 1; ; --i)
      {
        v61 = *(v0 + 416);
        v60 = *(v0 + 424);
        sub_1DAAA2C80(v57, v60);
        sub_1DAAA2C80(v60, v61);
        sub_1DAB7A390(v61, &v91);
        sub_1DABB7D38(v60, type metadata accessor for SymbolEntity);
        *&v89 = v56;
        v63 = *(v56 + 16);
        v62 = *(v56 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_1DAA57914((v62 > 1), v63 + 1, 1);
          v56 = v89;
        }

        *(v56 + 16) = v63 + 1;
        v64 = v56 + 136 * v63;
        *(v64 + 32) = v91;
        v65 = v92;
        v66 = v93;
        v67 = v95;
        *(v64 + 80) = v94;
        *(v64 + 96) = v67;
        *(v64 + 48) = v65;
        *(v64 + 64) = v66;
        v68 = v96;
        v69 = v97;
        v70 = v98;
        *(v64 + 160) = v99;
        *(v64 + 128) = v69;
        *(v64 + 144) = v70;
        *(v64 + 112) = v68;
        if (!i)
        {
          break;
        }

        v57 += v58;
      }
    }

    else
    {

      v56 = MEMORY[0x1E69E7CC0];
    }

    v71 = *(v0 + 480);
    sub_1DACB6D24();
    v73 = *(v0 + 176);
    v72 = *(v0 + 184);
    __swift_project_boxed_opaque_existential_1((v0 + 152), v73);
    v74 = *(v0 + 24);
    v76 = *(v0 + 32);
    v75 = *(v0 + 40);
    v77 = *(v0 + 48);
    v78 = *(v0 + 56);
    *&v91 = *(v0 + 16);
    *(&v91 + 1) = v74;
    *&v92 = v76;
    *(&v92 + 1) = v75;
    *&v93 = v77;
    WORD4(v93) = v78;
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    *(v0 + 568) = sub_1DAC96724(v56, &v91, v73, v72);

    v79 = *(MEMORY[0x1E69D6B08] + 4);
    v80 = swift_task_alloc();
    *(v0 + 576) = v80;
    *v80 = v0;
    v80[1] = sub_1DABB7364;

    return MEMORY[0x1EEE44EE0](v0 + 64);
  }

  else
  {
    v21 = sub_1DACB8C74();
    v22 = sub_1DACB9914();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v91 = v24;
      *v23 = 136315138;
      swift_beginAccess();
      v25 = *(v0 + 40);
      v26 = *(v0 + 48);
      sub_1DACB71E4();
      v27 = sub_1DAA7ABE4(v25, v26, &v91);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_1DAA3F000, v21, v22, "Successfully created new watchlist id=%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1E1278C00](v24, -1, -1);
      MEMORY[0x1E1278C00](v23, -1, -1);
    }

    v28 = *(v0 + 456);
    v29 = *(v0 + 432);
    v30 = *(v0 + 408);
    v86 = *(v0 + 424);
    v88 = *(v0 + 416);
    v31 = *(v0 + 392);
    v32 = *(v0 + 400);
    v33 = *(v0 + 384);
    swift_beginAccess();
    v34 = *(v0 + 24);
    v36 = *(v0 + 32);
    v35 = *(v0 + 40);
    v37 = *(v0 + 48);
    v38 = *(v0 + 56);
    *&v91 = *(v0 + 16);
    *(&v91 + 1) = v34;
    *&v92 = v36;
    *(&v92 + 1) = v35;
    *&v93 = v37;
    WORD4(v93) = v38;
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    WatchlistEntity.init(from:)(&v91, &v89);
    v39 = v89;
    v40 = v90;
    *(v0 + 216) = v89;
    *(v0 + 232) = v40;
    v91 = v39;
    *&v92 = v40;
    (*(v30 + 56))(v31, 1, 1, v32);
    sub_1DACB71E4();
    sub_1DACB71F4();
    sub_1DAAF42EC(&v91, v31, &v89);
    v41 = v90;
    *(v0 + 240) = v89;
    *(v0 + 256) = v41;
    sub_1DAA8E020();
    sub_1DAAF3184();
    sub_1DACB6EA4();
    v42 = *(v0 + 240);
    v43 = *(v0 + 248);
    v44 = *(v0 + 256);

    v45 = *(v0 + 24);
    v46 = *(v0 + 32);
    v47 = *(v0 + 48);

    v48 = *(v0 + 8);

    return v48();
  }
}

uint64_t sub_1DABB7364()
{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v7 = *v1;
  *(*v1 + 584) = v0;

  if (v0)
  {
    v4 = sub_1DABB78FC;
  }

  else
  {
    v5 = *(v2 + 568);

    __swift_destroy_boxed_opaque_existential_1((v2 + 152));
    v4 = sub_1DABB7488;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DABB7488()
{
  v48 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 48);
  v39 = *(v0 + 72);

  *(v0 + 16) = v1;
  *(v0 + 24) = v39;
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v8 = *(v0 + 488);
  v9 = sub_1DACB8C74();
  v10 = sub_1DACB9914();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v41 = v12;
    *v11 = 136315138;
    swift_beginAccess();
    v13 = *(v0 + 40);
    v14 = *(v0 + 48);
    sub_1DACB71E4();
    v15 = sub_1DAA7ABE4(v13, v14, &v41);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1DAA3F000, v9, v10, "Successfully created new watchlist id=%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E1278C00](v12, -1, -1);
    MEMORY[0x1E1278C00](v11, -1, -1);
  }

  v16 = *(v0 + 456);
  v17 = *(v0 + 432);
  v18 = *(v0 + 408);
  v38 = *(v0 + 424);
  v40 = *(v0 + 416);
  v19 = *(v0 + 392);
  v20 = *(v0 + 400);
  v21 = *(v0 + 384);
  swift_beginAccess();
  v22 = *(v0 + 24);
  v24 = *(v0 + 32);
  v23 = *(v0 + 40);
  v25 = *(v0 + 48);
  v26 = *(v0 + 56);
  *&v41 = *(v0 + 16);
  *(&v41 + 1) = v22;
  v42 = v24;
  v43 = v23;
  v44 = v25;
  v45 = v26;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  WatchlistEntity.init(from:)(&v41, &v46);
  v27 = v46;
  v28 = v47;
  *(v0 + 216) = v46;
  *(v0 + 232) = v28;
  v41 = v27;
  v42 = v28;
  (*(v18 + 56))(v19, 1, 1, v20);
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DAAF42EC(&v41, v19, &v46);
  v29 = v47;
  *(v0 + 240) = v46;
  *(v0 + 256) = v29;
  sub_1DAA8E020();
  sub_1DAAF3184();
  sub_1DACB6EA4();
  v30 = *(v0 + 240);
  v31 = *(v0 + 248);
  v32 = *(v0 + 256);

  v33 = *(v0 + 24);
  v34 = *(v0 + 32);
  v35 = *(v0 + 48);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1DABB77B4()
{
  v1 = v0[67];
  v2 = v0[57];
  v4 = v0[53];
  v3 = v0[54];
  v5 = v0[52];
  v6 = v0[49];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DABB7854()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v1 = v0[70];
  v2 = v0[57];
  v4 = v0[53];
  v3 = v0[54];
  v5 = v0[52];
  v6 = v0[49];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DABB78FC()
{
  v1 = v0[71];

  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[6];

  v5 = v0[73];
  v6 = v0[57];
  v8 = v0[53];
  v7 = v0[54];
  v9 = v0[52];
  v10 = v0[49];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1DABB79C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5B48 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7904();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE85F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DABB7A70()
{
  sub_1DABB7F38(0, &qword_1ECBE8638, sub_1DABB5034, &type metadata for NewWatchlistIntent, MEMORY[0x1E695A4A8]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1DABB7F38(0, &qword_1ECBE8640, sub_1DABB5034, &type metadata for NewWatchlistIntent, MEMORY[0x1E695A4A0]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1DACB7254();
  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DABB50AC();
  sub_1DACB7234();

  sub_1DACB7244();
  sub_1DACB7264();
  return sub_1DACB7214();
}

uint64_t sub_1DABB7C60(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return sub_1DABB60B8(a1);
}

uint64_t sub_1DABB7CFC(uint64_t a1)
{
  v2 = sub_1DABB5034();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1DABB7D38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DABB7D9C()
{
  result = qword_1EE11E7F0;
  if (!qword_1EE11E7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E7F0);
  }

  return result;
}

unint64_t sub_1DABB7DF4()
{
  result = qword_1EE11E800;
  if (!qword_1EE11E800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E800);
  }

  return result;
}

unint64_t sub_1DABB7EA8()
{
  result = qword_1ECBE8680;
  if (!qword_1ECBE8680)
  {
    sub_1DABB7F38(255, &qword_1ECBE8688, sub_1DABB5034, &type metadata for NewWatchlistIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8680);
  }

  return result;
}

void sub_1DABB7F38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1DABB7FA0()
{
  if (!qword_1ECBE8698)
  {
    sub_1DAA8E020();
    sub_1DAADCE24();
    v0 = sub_1DACB71B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE8698);
    }
  }
}

uint64_t SDSAuthToken.init(fetchDate:url:accessKey:expirationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1DACB7CC4();
  v19 = *(*(v12 - 8) + 32);
  (v19)((v12 - 8), a6, a1, v12);
  v13 = type metadata accessor for SDSAuthToken();
  v14 = v13[5];
  v15 = sub_1DACB7AB4();
  (*(*(v15 - 8) + 32))(a6 + v14, a2, v15);
  v16 = (a6 + v13[6]);
  *v16 = a3;
  v16[1] = a4;
  v17 = a6 + v13[7];

  return v19(v17, a5, v12);
}

uint64_t sub_1DABB8140()
{
  v1 = 0x7461446863746566;
  v2 = 0x654B737365636361;
  if (*v0 != 2)
  {
    v2 = 0x6974617269707865;
  }

  if (*v0)
  {
    v1 = 7107189;
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

uint64_t sub_1DABB81C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DABB8D4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DABB81EC(uint64_t a1)
{
  v2 = sub_1DABB84EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DABB8228(uint64_t a1)
{
  v2 = sub_1DABB84EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SDSAuthToken.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1DABB8AB8(0, &qword_1EE11F570, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABB84EC();
  sub_1DACBA304();
  v24 = 0;
  sub_1DACB7CC4();
  sub_1DAA5D5AC(&qword_1EE125288, MEMORY[0x1E6969530]);
  sub_1DACBA0E4();
  if (!v2)
  {
    v20 = type metadata accessor for SDSAuthToken();
    v12 = *(v20 + 20);
    v23 = 1;
    sub_1DACB7AB4();
    sub_1DAA5D5AC(&qword_1EE1252B8, MEMORY[0x1E6968FB0]);
    sub_1DACBA0E4();
    v13 = v20;
    v14 = (v3 + *(v20 + 24));
    v15 = *v14;
    v16 = v14[1];
    v22 = 2;
    sub_1DACBA094();
    v17 = *(v13 + 28);
    v21 = 3;
    sub_1DACBA0E4();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1DABB84EC()
{
  result = qword_1EE125090[0];
  if (!qword_1EE125090[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE125090);
  }

  return result;
}

uint64_t SDSAuthToken.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v42 = sub_1DACB7AB4();
  v40 = *(v42 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v41 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7CC4();
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v44 = v35 - v10;
  sub_1DABB8AB8(0, &qword_1EE11F660, MEMORY[0x1E69E6F48]);
  v45 = v11;
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v35 - v13;
  v15 = type metadata accessor for SDSAuthToken();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DABB84EC();
  v46 = v14;
  v20 = v47;
  sub_1DACBA2F4();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = v9;
  v37 = v15;
  v21 = a1;
  v47 = v18;
  v22 = v41;
  v23 = v42;
  v51 = 0;
  v24 = sub_1DAA5D5AC(&qword_1EE123A38, MEMORY[0x1E6969530]);
  sub_1DACB9FE4();
  v35[1] = v24;
  v25 = *(v39 + 32);
  v26 = v44;
  v44 = v5;
  v25(v47, v26);
  v50 = 1;
  sub_1DAA5D5AC(&qword_1EE1252A8, MEMORY[0x1E6968FB0]);
  sub_1DACB9FE4();
  v35[0] = v25;
  v27 = v37;
  (*(v40 + 32))(&v47[*(v37 + 20)], v22, v23);
  v49 = 2;
  v28 = sub_1DACB9FA4();
  v29 = &v47[*(v27 + 24)];
  *v29 = v28;
  v29[1] = v30;
  v48 = 3;
  v31 = v36;
  v32 = v44;
  sub_1DACB9FE4();
  (*(v43 + 8))(v46, v45);
  v33 = v47;
  (v35[0])(&v47[*(v27 + 28)], v31, v32);
  sub_1DABB8B1C(v33, v38);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_1DABB8B80(v33);
}

void sub_1DABB8AB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DABB84EC();
    v7 = a3(a1, &type metadata for SDSAuthToken.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DABB8B1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDSAuthToken();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DABB8B80(uint64_t a1)
{
  v2 = type metadata accessor for SDSAuthToken();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DABB8C48()
{
  result = qword_1ECBE86A8;
  if (!qword_1ECBE86A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE86A8);
  }

  return result;
}

unint64_t sub_1DABB8CA0()
{
  result = qword_1EE125080;
  if (!qword_1EE125080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125080);
  }

  return result;
}

unint64_t sub_1DABB8CF8()
{
  result = qword_1EE125088;
  if (!qword_1EE125088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125088);
  }

  return result;
}

uint64_t sub_1DABB8D4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461446863746566 && a2 == 0xE900000000000065;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654B737365636361 && a2 == 0xE900000000000079 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DACBA174();

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

uint64_t sub_1DABB8ECC()
{
  v0 = sub_1DACB78E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7E44();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1DACB92E4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1DACB7904();
  __swift_allocate_value_buffer(v9, qword_1ECBE86B0);
  __swift_project_value_buffer(v9, qword_1ECBE86B0);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v4, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t sub_1DABB90E4()
{
  sub_1DAA6AAFC(0, &qword_1EE123A80, MEMORY[0x1E6968E10]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_1DACB78E4();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7E44();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1DACB92E4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1DACB7904();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = sub_1DACB7084();
  __swift_allocate_value_buffer(v15, qword_1ECBE86C8);
  __swift_project_value_buffer(v15, qword_1ECBE86C8);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v4 + 104))(v7, *MEMORY[0x1E6968DF0], v17[0]);
  sub_1DACB7914();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_1DACB7094();
}

uint64_t sub_1DABB9410()
{
  sub_1DABBBA88(0, &qword_1ECBE86E0, MEMORY[0x1E695A4A8]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1DABBBA88(0, &qword_1ECBE86E8, MEMORY[0x1E695A4A0]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1DABB95C0();
  sub_1DACB7254();
  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DABB9638();
  sub_1DACB7234();

  sub_1DACB7244();
  sub_1DACB7264();
  return sub_1DACB7204();
}

unint64_t sub_1DABB95C0()
{
  result = qword_1EE11E660;
  if (!qword_1EE11E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E660);
  }

  return result;
}

void sub_1DABB9638()
{
  if (!qword_1ECBE86F0)
  {
    sub_1DAB2AF6C();
    v0 = sub_1DACBA314();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE86F0);
    }
  }
}

uint64_t sub_1DABB96BC(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for SymbolEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  sub_1DAAA2C80(a1, &v15 - v9);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  sub_1DAAA2C80(v10, v8);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
  sub_1DAAD5434(v10);
}

uint64_t sub_1DABB97B8(uint64_t a1)
{
  v3 = type metadata accessor for SymbolEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = *v1;
  sub_1DAAA2C80(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DACB6FC4();
  return sub_1DAAD5434(a1);
}

void (*sub_1DABB9848(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1DACB6FA4();
  return sub_1DAAD9D78;
}

uint64_t sub_1DABB98BC@<X0>(uint64_t *a1@<X8>)
{
  v46 = a1;
  v1 = sub_1DACB7274();
  v44 = *(v1 - 8);
  v45 = v1;
  v2 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v43 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA6AAFC(0, &qword_1EE123AA0, MEMORY[0x1E6959F70]);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v37 - v8;
  sub_1DAA6AAFC(0, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v40 = &v37 - v11;
  sub_1DAA6AAFC(0, &qword_1EE123A80, MEMORY[0x1E6968E10]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v38 = &v37 - v14;
  v15 = sub_1DACB78E4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DACB7E44();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = sub_1DACB92E4();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = sub_1DACB7904();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1DAB2AF6C();
  v39 = v27;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v28 = *MEMORY[0x1E6968DF0];
  v29 = *(v16 + 104);
  v29(v19, v28, v15);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v29(v19, v28, v15);
  v30 = v38;
  sub_1DACB7914();
  (*(v25 + 56))(v30, 0, 1, v24);
  v31 = type metadata accessor for SymbolEntity();
  (*(*(v31 - 8) + 56))(v40, 1, 1, v31);
  v32 = sub_1DACB6E84();
  v33 = *(*(v32 - 8) + 56);
  v33(v41, 1, 1, v32);
  v33(v42, 1, 1, v32);
  (*(v44 + 104))(v43, *MEMORY[0x1E695A500], v45);
  sub_1DAAA1590(&unk_1EE11EF70, type metadata accessor for SymbolEntity);
  v34 = sub_1DACB7014();
  v35 = v46;
  *v46 = v34;
  sub_1DAAF41C0(0, &qword_1ECBE86F8, &qword_1EE125FE0);
  sub_1DACB6D94();
  v47 = 0u;
  v48 = 0u;
  v49 = 0;
  sub_1DACB6D84();
  v35[1] = sub_1DACB6D54();
  sub_1DAAF41C0(0, &qword_1ECBE8700, &qword_1EE125CC8);
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  v35[2] = result;
  return result;
}

uint64_t sub_1DABB9F24(uint64_t a1)
{
  v2[54] = a1;
  v3 = *(*(type metadata accessor for SymbolEntity() - 8) + 64) + 15;
  v2[55] = swift_task_alloc();
  sub_1DAA6AAFC(0, qword_1EE123840, type metadata accessor for QuoteDetail);
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  sub_1DAA6AAFC(0, qword_1EE120250, type metadata accessor for Quote);
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[58] = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *v1;
  v10 = v1[1];
  v2[59] = v8;
  v2[60] = v9;
  v11 = v1[2];
  v2[61] = v10;
  v2[62] = v11;
  v2[46] = v9;
  v2[47] = v10;
  v2[48] = v11;
  v12 = swift_task_alloc();
  v2[63] = v12;
  *v12 = v2;
  v12[1] = sub_1DABBA0AC;

  return sub_1DABBA508(v8);
}

uint64_t sub_1DABBA0AC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 504);
  v4 = *(*v0 + 496);
  v9 = *(*v0 + 480);
  v5 = *v0;

  *(v2 + 392) = v9;
  *(v2 + 408) = v4;
  v6 = swift_task_alloc();
  *(v2 + 512) = v6;
  *v6 = v5;
  v6[1] = sub_1DABBA224;
  v7 = *(v1 + 456);

  return sub_1DABBAC14(v7);
}

uint64_t sub_1DABBA224()
{
  v1 = *(*v0 + 512);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DABBA320, 0, 0);
}

uint64_t sub_1DABBA320()
{
  v18 = v0;
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 456);
  v4 = *(v0 + 464);
  v5 = *(v0 + 440);
  v6 = *(v0 + 448);
  v7 = *(v0 + 432);
  sub_1DACB6FB4();
  sub_1DABBB4C0(v2, v4, qword_1EE120250, type metadata accessor for Quote);
  sub_1DABBB4C0(v3, v6, qword_1EE123840, type metadata accessor for QuoteDetail);
  sub_1DAA9CCDC(v5, v4, v6, (v0 + 16));
  v8 = *(v0 + 160);
  *(v0 + 320) = *(v0 + 144);
  *(v0 + 336) = v8;
  *(v0 + 352) = *(v0 + 176);
  v9 = *(v0 + 96);
  *(v0 + 256) = *(v0 + 80);
  *(v0 + 272) = v9;
  v10 = *(v0 + 128);
  *(v0 + 288) = *(v0 + 112);
  *(v0 + 304) = v10;
  v11 = *(v0 + 32);
  *(v0 + 192) = *(v0 + 16);
  *(v0 + 208) = v11;
  v12 = *(v0 + 64);
  *(v0 + 224) = *(v0 + 48);
  *(v0 + 240) = v12;
  sub_1DACB6FB4();
  sub_1DAC45D08(v5, v17);
  *(v0 + 416) = *v17;
  sub_1DAAA3D4C();
  sub_1DAB951C8();
  sub_1DACB6EA4();
  v13 = *(v0 + 416);
  v14 = *(v0 + 424);

  sub_1DABBB52C(v3, qword_1EE123840, type metadata accessor for QuoteDetail);
  sub_1DABBB52C(v2, qword_1EE120250, type metadata accessor for Quote);
  sub_1DABBB588(v0 + 16);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1DABBA508(uint64_t a1)
{
  *(v2 + 120) = a1;
  v3 = sub_1DACB81B4();
  *(v2 + 128) = v3;
  v4 = *(v3 - 8);
  *(v2 + 136) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 144) = swift_task_alloc();
  v6 = *(*(type metadata accessor for SymbolEntity() - 8) + 64) + 15;
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = *v1;
  *(v2 + 176) = *(v1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DABBA604, 0, 0);
}

uint64_t sub_1DABBA604()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[17];
  v15 = v0[16];
  sub_1DACB6D24();
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  sub_1DACB6FB4();
  v8 = *(v4 + 16);
  sub_1DACB6ED4();
  v9 = v0[10];
  v10 = v0[11];
  sub_1DAAD5434(v4);
  (*(v7 + 32))(v6, v7);
  v0[23] = sub_1DAAF9D34(v9, v10, v3, v6, v7);

  (*(v5 + 8))(v3, v15);
  v11 = *(MEMORY[0x1E69D6B08] + 4);
  v12 = swift_task_alloc();
  v0[24] = v12;
  *v12 = v0;
  v12[1] = sub_1DABBA774;
  v13 = v0[15];

  return MEMORY[0x1EEE44EE0](v13);
}

uint64_t sub_1DABBA774()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_1DABBA950;
  }

  else
  {
    v5 = *(v2 + 184);

    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v4 = sub_1DABBA898;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DABBA898()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[15];
  v4 = type metadata accessor for Quote();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DABBA950()
{
  v33 = v0;
  v1 = v0[23];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v6 = sub_1DACB8C94();
  __swift_project_value_buffer(v6, qword_1EE11D390);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  v7 = v2;
  v8 = sub_1DACB8C74();
  v9 = sub_1DACB9904();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[25];
  if (v10)
  {
    v13 = v0[19];
    v12 = v0[20];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136315394;
    sub_1DACB6FB4();
    v16 = *(v13 + 16);
    sub_1DACB6ED4();
    v17 = v0[12];
    v18 = v0[13];
    sub_1DAAD5434(v13);
    v19 = sub_1DAA7ABE4(v17, v18, &v32);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[7];
    v20 = v0[8];
    v22 = v0[9];
    v23 = sub_1DACBA224();
    v25 = sub_1DAA7ABE4(v23, v24, &v32);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1DAA3F000, v8, v9, "Failed to fetch quote for symbol=%s, error=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v15, -1, -1);
    MEMORY[0x1E1278C00](v14, -1, -1);
  }

  else
  {
  }

  v26 = v0[18];
  v27 = v0[19];
  v28 = v0[15];
  v29 = type metadata accessor for Quote();
  (*(*(v29 - 8) + 56))(v28, 1, 1, v29);

  v30 = v0[1];

  return v30();
}

uint64_t sub_1DABBAC14(uint64_t a1)
{
  *(v2 + 120) = a1;
  v3 = sub_1DACB8204();
  *(v2 + 128) = v3;
  v4 = *(v3 - 8);
  *(v2 + 136) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 144) = swift_task_alloc();
  v6 = sub_1DACB7CC4();
  *(v2 + 152) = v6;
  v7 = *(v6 - 8);
  *(v2 + 160) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  v9 = sub_1DACB81B4();
  *(v2 + 176) = v9;
  v10 = *(v9 - 8);
  *(v2 + 184) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 192) = swift_task_alloc();
  v12 = *(*(type metadata accessor for SymbolEntity() - 8) + 64) + 15;
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = *v1;
  *(v2 + 224) = *(v1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DABBADC8, 0, 0);
}

uint64_t sub_1DABBADC8()
{
  v1 = v0[28];
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  v19 = v0[21];
  v22 = v0[20];
  v23 = v0[19];
  v7 = v0[17];
  v8 = v0[18];
  v21 = v0[16];
  sub_1DACB6D24();
  v9 = v0[5];
  v20 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v9);
  sub_1DACB6FB4();
  v10 = *(v3 + 16);
  sub_1DACB6ED4();
  v11 = v0[10];
  v12 = v0[11];
  sub_1DAAD5434(v3);
  *v4 = 0x404E000000000000;
  (*(v5 + 104))(v4, *MEMORY[0x1E69D63E0], v6);
  sub_1DACB7CB4();
  v13 = *MEMORY[0x1E69D6490];
  v14 = sub_1DACB8204();
  (*(*(v14 - 8) + 104))(v8, v13, v14);
  v0[29] = sub_1DAC70874(v11, v12, v4, v19, v8, v9, v20);

  (*(v7 + 8))(v8, v21);
  (*(v22 + 8))(v19, v23);
  (*(v5 + 8))(v4, v6);
  v15 = *(MEMORY[0x1E69D6B08] + 4);
  v16 = swift_task_alloc();
  v0[30] = v16;
  *v16 = v0;
  v16[1] = sub_1DABBAFE8;
  v17 = v0[15];

  return MEMORY[0x1EEE44EE0](v17);
}

uint64_t sub_1DABBAFE8()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v7 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = sub_1DABBB1E4;
  }

  else
  {
    v5 = *(v2 + 232);

    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v4 = sub_1DABBB10C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DABBB10C()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[15];
  v6 = type metadata accessor for QuoteDetail();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DABBB1E4()
{
  v35 = v0;
  v1 = v0[29];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v2 = v0[31];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v6 = sub_1DACB8C94();
  __swift_project_value_buffer(v6, qword_1EE11D390);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  v7 = v2;
  v8 = sub_1DACB8C74();
  v9 = sub_1DACB9904();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[31];
  if (v10)
  {
    v13 = v0[25];
    v12 = v0[26];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34 = v15;
    *v14 = 136315394;
    sub_1DACB6FB4();
    v16 = *(v13 + 16);
    sub_1DACB6ED4();
    v17 = v0[12];
    v18 = v0[13];
    sub_1DAAD5434(v13);
    v19 = sub_1DAA7ABE4(v17, v18, &v34);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[7];
    v20 = v0[8];
    v22 = v0[9];
    v23 = sub_1DACBA224();
    v25 = sub_1DAA7ABE4(v23, v24, &v34);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_1DAA3F000, v8, v9, "Failed to fetch quote detail for symbol=%s, error=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v15, -1, -1);
    MEMORY[0x1E1278C00](v14, -1, -1);
  }

  else
  {
  }

  v26 = v0[24];
  v27 = v0[25];
  v28 = v0[21];
  v29 = v0[18];
  v30 = v0[15];
  v31 = type metadata accessor for QuoteDetail();
  (*(*(v31 - 8) + 56))(v30, 1, 1, v31);

  v32 = v0[1];

  return v32();
}

uint64_t sub_1DABBB4C0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1DAA6AAFC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DABBB52C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1DAA6AAFC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1DABBB5E0()
{
  result = qword_1EE11E658;
  if (!qword_1EE11E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E658);
  }

  return result;
}

unint64_t sub_1DABBB638()
{
  result = qword_1EE11E668;
  if (!qword_1EE11E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E668);
  }

  return result;
}

uint64_t sub_1DABBB6DC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5B60 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7904();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE86B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DABBB784()
{
  sub_1DABBBA88(0, &qword_1ECBE86E0, MEMORY[0x1E695A4A8]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1DABBBA88(0, &qword_1ECBE86E8, MEMORY[0x1E695A4A0]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1DACB7254();
  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DABB9638();
  sub_1DACB7234();

  sub_1DACB7244();
  sub_1DACB7264();
  return sub_1DACB7204();
}

uint64_t sub_1DABBB92C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return sub_1DABB9F24(a1);
}

uint64_t sub_1DABBB9C8(uint64_t a1)
{
  v2 = sub_1DABB95C0();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1DABBBA14()
{
  result = qword_1ECBE8708;
  if (!qword_1ECBE8708)
  {
    sub_1DABBBA88(255, &qword_1ECBE8710, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8708);
  }

  return result;
}

void sub_1DABBBA88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DABB95C0();
    v7 = a3(a1, &type metadata for GetSymbolQuoteIntent, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1DABBBAEC()
{
  if (!qword_1ECBE8720)
  {
    sub_1DAAA3D4C();
    sub_1DAADCE24();
    v0 = sub_1DACB71B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE8720);
    }
  }
}

uint64_t sub_1DABBBBBC()
{
  sub_1DABBBD50();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DABBBC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1DACB9114();
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a1;
  v11[5] = a2;
  v13[4] = sub_1DABBBF60;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DAB10208;
  v13[3] = &block_descriptor_16;
  v12 = _Block_copy(v13);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [a5 handleRemoteNotification:v10 completion:v12];
  _Block_release(v12);
}

void sub_1DABBBD50()
{
  if (!qword_1ECBE8C80)
  {
    sub_1DACB88B4();
    v0 = sub_1DACB8B74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE8C80);
    }
  }
}

void sub_1DABBBDA8(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(char *))
{
  v7 = sub_1DACB88B4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = a1;
    a2(a1);
  }

  else
  {
    (*(v8 + 104))(v11, *MEMORY[0x1E69D6978], v7);
    a4(v11);
    (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_1DABBBF04()
{
  sub_1DABBBD50();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DABBBF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_1DACB82E4();
  sub_1DACB71F4();
  sub_1DACB8294();
  v13 = sub_1DACB8274();

  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = sub_1DABBC60C;
  v14[5] = v12;
  v16[4] = sub_1DABBC648;
  v16[5] = v14;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1DABBC444;
  v16[3] = &block_descriptor_17;
  v15 = _Block_copy(v16);
  sub_1DACB71F4();

  [a5 fetchSingleConfigurationWithSettings:a6 completionQueue:v13 completion:v15];
  _Block_release(v15);
}

void sub_1DABBC0E0(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, id a5, void (*a6)(void), int a7, void (*a8)(uint64_t, unint64_t, uint64_t, uint64_t), uint64_t a9)
{
  if (a5)
  {
    v11 = a5;
    (a6)(a5);
    v12 = a5;
LABEL_5:

    return;
  }

  if (a2 >> 60 == 15)
  {
    sub_1DABBC674();
    v13 = swift_allocError();
    a6();
    v12 = v13;
    goto LABEL_5;
  }

  v38 = a2;
  v39 = a1;
  if (a3)
  {
    if (a3 >> 62)
    {
      v16 = sub_1DACB9E14();
      a2 = v38;
      a1 = v39;
      if (v16)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v16 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
LABEL_11:
        sub_1DAB0B080(a1, a2);
        v40 = MEMORY[0x1E69E7CC0];
        sub_1DAB25DD8(0, v16 & ~(v16 >> 63), 0);
        if (v16 < 0)
        {
          __break(1u);
          goto LABEL_40;
        }

        v17 = 0;
        v18 = v40;
        do
        {
          if ((a3 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1E12777A0](v17, a3);
          }

          else
          {
            v19 = *(a3 + 8 * v17 + 32);
          }

          v20 = v19;
          v21 = [v19 longLongValue];

          v23 = *(v40 + 16);
          v22 = *(v40 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_1DAB25DD8((v22 > 1), v23 + 1, 1);
          }

          ++v17;
          *(v40 + 16) = v23 + 1;
          *(v40 + 8 * v23 + 32) = v21;
        }

        while (v16 != v17);
        if (!a4)
        {
          goto LABEL_20;
        }

LABEL_23:
        v25 = v38;
        v26 = v39;
        if (a4 >> 62)
        {
          v36 = sub_1DACB9E14();
          v25 = v38;
          v26 = v39;
          v27 = v36;
        }

        else
        {
          v27 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v24 = MEMORY[0x1E69E7CC0];
        if (!v27)
        {
          goto LABEL_35;
        }

        v41 = MEMORY[0x1E69E7CC0];
        sub_1DAB25DB8(0, v27 & ~(v27 >> 63), 0);
        if ((v27 & 0x8000000000000000) == 0)
        {
          v28 = 0;
          v24 = v41;
          do
          {
            if ((a4 & 0xC000000000000001) != 0)
            {
              v29 = MEMORY[0x1E12777A0](v28, a4);
            }

            else
            {
              v29 = *(a4 + 8 * v28 + 32);
            }

            v30 = v29;
            v31 = [v29 intValue];

            v33 = *(v41 + 16);
            v32 = *(v41 + 24);
            if (v33 >= v32 >> 1)
            {
              sub_1DAB25DB8((v32 > 1), v33 + 1, 1);
            }

            ++v28;
            *(v41 + 16) = v33 + 1;
            *(v41 + 4 * v33 + 32) = v31;
          }

          while (v27 != v28);
          v25 = v38;
          v26 = v39;
          goto LABEL_35;
        }

LABEL_40:
        __break(1u);
        return;
      }
    }
  }

  sub_1DAB0B080(a1, a2);
  v18 = MEMORY[0x1E69E7CC0];
  if (a4)
  {
    goto LABEL_23;
  }

LABEL_20:
  v24 = MEMORY[0x1E69E7CC0];
  v25 = v38;
  v26 = v39;
LABEL_35:
  v34 = v26;
  v35 = v25;
  sub_1DAB0EBC4(v26, v25);
  a8(v34, v35, v18, v24);
  sub_1DAA563C0(v34, v35);

  sub_1DAB4D534(v34, v35);
}

uint64_t sub_1DABBC444(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    sub_1DACB71F4();
    v11 = v8;
    v8 = sub_1DACB7B64();
    v13 = v12;

    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_1DACB71F4();
  v13 = 0xF000000000000000;
  if (a3)
  {
LABEL_3:
    sub_1DAB0AAC8();
    a3 = sub_1DACB9644();
  }

LABEL_4:
  if (a4)
  {
    sub_1DAB0AAC8();
    a4 = sub_1DACB9644();
  }

  v14 = a5;
  v10(v8, v13, a3, a4, a5);

  sub_1DAB4D534(v8, v13);
}

uint64_t sub_1DABBC554()
{
  v5 = *v0;
  sub_1DABBC5BC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DABBC5BC()
{
  if (!qword_1EE1240A8)
  {
    v0 = sub_1DACB8B74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1240A8);
    }
  }
}

uint64_t sub_1DABBC60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  return v5(v8);
}

unint64_t sub_1DABBC674()
{
  result = qword_1EE11D078;
  if (!qword_1EE11D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D078);
  }

  return result;
}

uint64_t sub_1DABBC6D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DABBC720(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DABBC774()
{
  result = qword_1ECBE8730;
  if (!qword_1ECBE8730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8730);
  }

  return result;
}

uint64_t sub_1DABBC7C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x746972777265766FLL;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x65646C4F7065656BLL;
    v4 = 0xEA00000000007473;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x694D6649796C6E6FLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xED0000676E697373;
  }

  v7 = 0x746972777265766FLL;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x65646C4F7065656BLL;
    v8 = 0xEA00000000007473;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x694D6649796C6E6FLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xED0000676E697373;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DABBC8E4()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABBC99C()
{
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DABBCA40()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DABBCAF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DABBCE70();
  *a2 = result;
  return result;
}

void sub_1DABBCB24(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000676E697373;
  v4 = 0xE900000000000065;
  v5 = 0x746972777265766FLL;
  if (v2 != 1)
  {
    v5 = 0x65646C4F7065656BLL;
    v4 = 0xEA00000000007473;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x694D6649796C6E6FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_1DABBCB98(void *a1)
{
  v3 = sub_1DACB7C04();
  v4 = sub_1DACB92F4();
  [a1 encodeObject:v3 forKey:v4];

  if (*(v1 + OBJC_IVAR___SCUpdateUserStartDateCommand_mergePolicy))
  {
    *(v1 + OBJC_IVAR___SCUpdateUserStartDateCommand_mergePolicy);
  }

  v5 = sub_1DACB92F4();

  v6 = sub_1DACB92F4();
  [a1 encodeObject:v5 forKey:v6];
}

unint64_t sub_1DABBCE1C()
{
  result = qword_1ECBE8738;
  if (!qword_1ECBE8738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8738);
  }

  return result;
}

uint64_t sub_1DABBCE70()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1DABBCEBC()
{
  result = qword_1EE11D0C0;
  if (!qword_1EE11D0C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE11D0C0);
  }

  return result;
}

id sub_1DABBCF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v54 = a3;
  v55 = a4;
  v52 = a1;
  v53 = a2;
  v9 = *v6;
  sub_1DAA4A0F8();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v48 - v15;
  if (a6)
  {
    v17 = v6[7];
    sub_1DAADD4D0();
    v18 = sub_1DACB7AB4();
    (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
  }

  else
  {
    v19 = sub_1DACB7AB4();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  }

  v57 = v14;
  v20 = qword_1DACCFA88[*(v7 + 64)];
  if (qword_1EE124188 != -1)
  {
    swift_once();
  }

  sub_1DABBDB30();
  sub_1DACB7F84();
  v21 = v58;
  if (qword_1EE1241A0 != -1)
  {
    swift_once();
  }

  v22 = sub_1DACB7FC4();
  v23 = sub_1DABBD54C(v7, v22 & 1, &qword_1EE1241D0, &qword_1EE1241D8);
  v24 = sub_1DABBD54C(v7, v22 & 1, &qword_1EE1241B8, &qword_1EE1241C0);
  v50 = sub_1DABBD9EC(v7, v22 & 1);
  v51 = v25;
  if (qword_1EE1241E8 != -1)
  {
    swift_once();
  }

  sub_1DACB7F84();
  v26 = v58;
  if (qword_1EE124210 != -1)
  {
    swift_once();
  }

  sub_1DACB7F84();
  v27 = v59;
  if (v23)
  {
    sub_1DAB0AAC8();
    v28 = sub_1DACB9634();

    if (v24)
    {
LABEL_14:
      sub_1DAB0AAC8();
      v29 = sub_1DACB9634();

      goto LABEL_17;
    }
  }

  else
  {
    v28 = 0;
    if (v24)
    {
      goto LABEL_14;
    }
  }

  v29 = 0;
LABEL_17:
  v49 = [objc_allocWithZone(MEMORY[0x1E69C6D68]) initWithDisableAbTesting:v26 overrideSegmentSetIDs:v28 additionalSegmentSetIDs:v29 configurationSource:v21 debugEnvironment:v20 ignoreCache:v27];

  sub_1DAA4DC58(v16, v57);
  if (qword_1EE1242B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v30 = objc_opt_self();
  sub_1DACB71E4();
  v31 = [v30 mainBundle];
  v32 = [v31 bundleIdentifier];

  v56 = v16;
  if (v32)
  {
    v48 = sub_1DACB9324();
  }

  else
  {
    v48 = 0;
  }

  v33 = [objc_opt_self() defaultDeviceInfo];
  v34 = sub_1DACB92F4();
  v35 = sub_1DACB92F4();
  v36 = sub_1DACB7AB4();
  v37 = *(v36 - 8);
  v38 = v57;
  v39 = 0;
  if ((*(v37 + 48))(v57, 1, v36) != 1)
  {
    v39 = sub_1DACB7A04();
    (*(v37 + 8))(v38, v36);
  }

  v40 = objc_allocWithZone(MEMORY[0x1E69C6D60]);
  v41 = sub_1DACB92F4();

  v42 = sub_1DACB92F4();

  v43 = sub_1DACB92F4();

  LOBYTE(v47) = 0;
  v44 = v49;
  v45 = [v40 initWithRequestKey:v34 responseKey:v35 fallbackURL:v39 userID:v41 storefrontID:v42 bundleID:v43 deviceInfo:15.0 debugOverrides:v33 useBackgroundRefreshRate:v49 requestMode:v47 endpointTimeoutDuration:1];

  sub_1DAA4DDD0(v56);
  return v45;
}

uint64_t sub_1DABBD54C(uint64_t a1, char a2, void *a3, void *a4)
{
  LOBYTE(v4) = a2;
  if (*a3 != -1)
  {
    goto LABEL_88;
  }

  while (1)
  {
    v5 = *a4;
    type metadata accessor for RemoteConfigurationSettingsFactory();
    sub_1DABBDB30();
    sub_1DACB7F84();
    v6 = HIBYTE(v45) & 0xF;
    if ((v45 & 0x2000000000000000) == 0)
    {
      v6 = v44 & 0xFFFFFFFFFFFFLL;
    }

    if (!v6 || (v4 & 1) == 0)
    {
      break;
    }

    sub_1DAA642D8();
    v4 = sub_1DACB9B24();

    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v43 = MEMORY[0x1E69E7CC0];
    v9 = *(v4 + 16);
    while (1)
    {
      if (v7 == v9)
      {

        return v8;
      }

      if (v7 >= *(v4 + 16))
      {
        break;
      }

      v10 = (v4 + 32 + 16 * v7);
      v12 = *v10;
      v11 = v10[1];
      v13 = HIBYTE(v11) & 0xF;
      v14 = v12 & 0xFFFFFFFFFFFFLL;
      if ((v11 & 0x2000000000000000) != 0)
      {
        v15 = HIBYTE(v11) & 0xF;
      }

      else
      {
        v15 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (!v15)
      {
        sub_1DACB71E4();
        v18 = 0;
        goto LABEL_73;
      }

      if ((v11 & 0x1000000000000000) == 0)
      {
        if ((v11 & 0x2000000000000000) != 0)
        {
          v44 = v12;
          v45 = v11 & 0xFFFFFFFFFFFFFFLL;
          if (v12 == 43)
          {
            if (!v13)
            {
              goto LABEL_85;
            }

            if (--v13)
            {
              v18 = 0;
              v28 = &v44 + 1;
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  break;
                }

                v30 = 10 * v18;
                if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                {
                  break;
                }

                v18 = v30 + v29;
                if (__OFADD__(v30, v29))
                {
                  break;
                }

                ++v28;
                if (!--v13)
                {
                  goto LABEL_70;
                }
              }
            }
          }

          else if (v12 == 45)
          {
            if (!v13)
            {
              goto LABEL_84;
            }

            if (--v13)
            {
              v18 = 0;
              v22 = &v44 + 1;
              while (1)
              {
                v23 = *v22 - 48;
                if (v23 > 9)
                {
                  break;
                }

                v24 = 10 * v18;
                if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                {
                  break;
                }

                v18 = v24 - v23;
                if (__OFSUB__(v24, v23))
                {
                  break;
                }

                ++v22;
                if (!--v13)
                {
                  goto LABEL_70;
                }
              }
            }
          }

          else if (v13)
          {
            v18 = 0;
            v33 = &v44;
            while (1)
            {
              v34 = *v33 - 48;
              if (v34 > 9)
              {
                break;
              }

              v35 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                break;
              }

              v33 = (v33 + 1);
              if (!--v13)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else
        {
          if ((v12 & 0x1000000000000000) != 0)
          {
            v16 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v16 = sub_1DACB9D24();
          }

          v17 = *v16;
          if (v17 == 43)
          {
            if (v14 < 1)
            {
              goto LABEL_87;
            }

            v13 = v14 - 1;
            if (v14 != 1)
            {
              v18 = 0;
              if (!v16)
              {
                goto LABEL_61;
              }

              v25 = v16 + 1;
              while (1)
              {
                v26 = *v25 - 48;
                if (v26 > 9)
                {
                  break;
                }

                v27 = 10 * v18;
                if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                {
                  break;
                }

                v18 = v27 + v26;
                if (__OFADD__(v27, v26))
                {
                  break;
                }

                ++v25;
                if (!--v13)
                {
                  goto LABEL_70;
                }
              }
            }
          }

          else if (v17 == 45)
          {
            if (v14 < 1)
            {
              goto LABEL_86;
            }

            v13 = v14 - 1;
            if (v14 != 1)
            {
              v18 = 0;
              if (v16)
              {
                v19 = v16 + 1;
                while (1)
                {
                  v20 = *v19 - 48;
                  if (v20 > 9)
                  {
                    goto LABEL_69;
                  }

                  v21 = 10 * v18;
                  if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                  {
                    goto LABEL_69;
                  }

                  v18 = v21 - v20;
                  if (__OFSUB__(v21, v20))
                  {
                    goto LABEL_69;
                  }

                  ++v19;
                  if (!--v13)
                  {
                    goto LABEL_70;
                  }
                }
              }

LABEL_61:
              LOBYTE(v13) = 0;
LABEL_70:
              v36 = v13;
              sub_1DACB71E4();
              goto LABEL_71;
            }
          }

          else
          {
            if (!v14)
            {
              goto LABEL_69;
            }

            v18 = 0;
            if (!v16)
            {
              goto LABEL_61;
            }

            while (1)
            {
              v31 = *v16 - 48;
              if (v31 > 9)
              {
                break;
              }

              v32 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v32 + v31;
              if (__OFADD__(v32, v31))
              {
                break;
              }

              ++v16;
              if (!--v14)
              {
                goto LABEL_61;
              }
            }
          }
        }

LABEL_69:
        v18 = 0;
        LOBYTE(v13) = 1;
        goto LABEL_70;
      }

      sub_1DACB71E4();
      v18 = sub_1DABBDB84(v12, v11, 10);
      v36 = v39;
LABEL_71:
      if (v36)
      {
        v18 = 0;
      }

LABEL_73:
      ++v7;
      v37 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];

      if (v37)
      {
        MEMORY[0x1E12770F0](v38);
        if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v40 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1DACB9694();
        }

        sub_1DACB96F4();
        v8 = v43;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    v42 = a4;
    swift_once();
    a4 = v42;
  }

  return 0;
}

uint64_t sub_1DABBD9EC(void *a1, char a2)
{
  if (qword_1EE1241F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for RemoteConfigurationSettingsFactory();
  sub_1DABBDB30();
  sub_1DACB7F84();
  result = v8;
  v5 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v5 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5 || (a2 & 1) == 0)
  {

    v6 = a1[5];
    v7 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v6);
    return (*(v7 + 8))(v6, v7);
  }

  return result;
}

uint64_t sub_1DABBDACC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

unint64_t sub_1DABBDB30()
{
  result = qword_1EE1243D0;
  if (!qword_1EE1243D0)
  {
    type metadata accessor for RemoteConfigurationSettingsFactory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1243D0);
  }

  return result;
}

unsigned __int8 *sub_1DABBDB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;
  sub_1DACB71E4();
  result = sub_1DACB94D4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1DABBE110();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
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
      result = sub_1DACB9D24();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
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
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
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

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
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
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
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

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
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
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
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

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}