char *sub_1DAC8FD3C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1DAC8FF70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746C75736572 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64657461657263 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DAC90074(char a1)
{
  sub_1DACBA284();
  MEMORY[0x1E1277D70](a1 & 1);
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC900BC(char a1)
{
  if (a1)
  {
    return 0x64657461657263;
  }

  else
  {
    return 0x73746C75736572;
  }
}

uint64_t sub_1DAC900EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  Results = type metadata accessor for YahooBaseResponse.QueryResults();
  v34 = *(Results - 8);
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](Results);
  v37 = &v30 - v4;
  type metadata accessor for YahooBaseResponse.Query.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1DACBA004();
  v6 = *(v5 - 8);
  v35 = v5;
  v36 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = type metadata accessor for YahooBaseResponse.Query();
  v32 = *(v10 - 8);
  v11 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v39;
  sub_1DACBA2F4();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v13;
  v39 = v10;
  v17 = v34;
  v41 = 0;
  v18 = Results;
  swift_getWitnessTable();
  v19 = v37;
  v20 = v35;
  sub_1DACB9FE4();
  v21 = *(v17 + 32);
  v31 = v16;
  v21(v16, v19, v18);
  v40 = 1;
  v22 = sub_1DACB9F34();
  v24 = v23;
  (*(v36 + 8))(v9, v20);
  v25 = v39;
  v26 = v31;
  v27 = &v31[*(v39 + 36)];
  *v27 = v22;
  v27[1] = v24;
  v28 = v32;
  (*(v32 + 16))(v33, v26, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v28 + 8))(v26, v25);
}

BOOL sub_1DAC904B0()
{
  v0 = sub_1DACB9F04();

  return v0 != 0;
}

BOOL sub_1DAC904F8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_1DAC9003C(*a1, *a2);
}

uint64_t sub_1DAC9050C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1DAC90074(*v1);
}

uint64_t sub_1DAC9051C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_1DAC9004C(a1, *v2);
}

uint64_t sub_1DAC9052C(uint64_t a1, uint64_t a2)
{
  sub_1DACBA284();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_1DAC9004C(v7, *v2);
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC90574(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1DAC900BC(*v1);
}

uint64_t sub_1DAC90584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1DAC8FF70(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1DAC905B4@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1DAB6D1D0();
  *a2 = result;
  return result;
}

uint64_t sub_1DAC905E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DAC90634(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DAC90688@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return sub_1DAC900EC(a1, a3);
}

uint64_t sub_1DAC906A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DAC9071C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1DAC90788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DAC907F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_1DAC90868@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAC904B0();
  *a2 = result;
  return result;
}

BOOL sub_1DAC908C0@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1DAC904B0();
  *a1 = result;
  return result;
}

uint64_t sub_1DAC908EC@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1DAA71418();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DAC9091C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DAC90970(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DAC909C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a4;
  v7 = type metadata accessor for YahooBaseResponse.Item();
  v8 = sub_1DACB9AF4();
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = *(v45 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v48 = &v38 - v11;
  v51 = v7;
  v50 = *(v7 - 8);
  v12 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v38 - v13;
  type metadata accessor for YahooBaseResponse.QueryResults.CodingKeys();
  swift_getWitnessTable();
  v14 = sub_1DACBA004();
  v52 = *(v14 - 8);
  v53 = v14;
  v15 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - v16;
  v47 = a3;
  Results = type metadata accessor for YahooBaseResponse.QueryResults();
  v43 = *(Results - 8);
  v19 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](Results);
  v21 = &v38 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23 = v54;
  sub_1DACBA2F4();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v54 = v21;
  v41 = Results;
  v42 = a2;
  v25 = v50;
  v26 = v51;
  sub_1DACB9724();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1DACB9FE4();
  v40 = v17;
  v27 = v56;
  *v54 = v56;
  v39 = a1;
  v29 = v52;
  v28 = v53;
  v56 = v27;
  v53 = v27;
  sub_1DACB71E4();
  swift_getWitnessTable();
  v30 = v48;
  sub_1DACB98A4();
  v31 = (*(v25 + 48))(v30, 1, v26);
  v32 = v49;
  if (v31 == 1)
  {
    (*(v45 + 8))(v30, v46);

    type metadata accessor for YahooBaseResponse.Errors();
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    (*(v29 + 8))(v40, v28);
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {
    (*(v29 + 8))(v40, v28);
    v33 = *(v25 + 32);
    v34 = v44;
    v33(v44, v30, v26);

    v35 = v41;
    v36 = v54;
    v33(v54 + *(v41 + 36), v34, v26);
    v37 = v43;
    (*(v43 + 16))(v32, v36, v35);
    __swift_destroy_boxed_opaque_existential_1(v39);
    return (*(v37 + 8))(v36, v35);
  }
}

uint64_t sub_1DAC90FB8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DACBA174();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DAC91030@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v26 = *(a2 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v27 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for YahooBaseResponse.Item.CodingKeys();
  swift_getWitnessTable();
  v28 = sub_1DACBA004();
  v24 = *(v28 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v11 = &v21 - v10;
  v25 = a3;
  v12 = type metadata accessor for YahooBaseResponse.Item();
  v22 = *(v12 - 8);
  v13 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v29;
  sub_1DACBA2F4();
  if (!v17)
  {
    v29 = v12;
    v18 = v24;
    v19 = v26;
    sub_1DACB9FE4();
    (*(v18 + 8))(v11, v28);
    (*(v19 + 32))(v15, v27, a2);
    (*(v22 + 32))(v23, v15, v29);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DAC91304(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DACBA174();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DAC91378@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for YahooBaseResponse.Query();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v22 - v5;
  type metadata accessor for YahooBaseResponse.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1DACBA004();
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for YahooBaseResponse();
  v23 = *(v10 - 8);
  v11 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v30;
  sub_1DACBA2F4();
  if (!v15)
  {
    v22 = v13;
    v30 = v10;
    v16 = v25;
    v18 = v27;
    v17 = v28;
    swift_getWitnessTable();
    v19 = v26;
    sub_1DACB9FE4();
    (*(v16 + 8))(v9, v19);
    v20 = v22;
    (*(v18 + 32))(v22, v29, v17);
    (*(v23 + 32))(v24, v20, v30);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DAC9169C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1DAC90FB8(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1DAC916D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DAC91724(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DAC917AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1DAC91304(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1DAC917E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DAC91834(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DAC91888@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return sub_1DAC91378(a1, a3);
}

uint64_t sub_1DAC91AA0(uint64_t a1)
{
  v43 = a1;
  sub_1DAA82998();
  v42 = v1;
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v38 - v6;
  sub_1DAA49610();
  v41 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v40 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DACB7CC4();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v38 - v17;
  v19 = sub_1DACB81A4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v23, v44, v19);
  v24 = (*(v20 + 88))(v23, v19);
  if (v24 != *MEMORY[0x1E69D63A8])
  {
    if (v24 == *MEMORY[0x1E69D63B0])
    {
      v36 = 1;
    }

    else if (v24 == *MEMORY[0x1E69D63B8])
    {
      v37 = *(type metadata accessor for CurrencyResponse() + 24);
      v36 = sub_1DACB7C14();
    }

    else
    {
      (*(v20 + 8))(v23, v19);
      v36 = 0;
    }

    return v36 & 1;
  }

  (*(v20 + 96))(v23, v19);
  v25 = *v23;
  sub_1DACB7BF4();
  sub_1DACB7BF4();
  v26 = sub_1DAA49674();
  result = sub_1DACB9244();
  if (result)
  {
    v28 = v12[2];
    v39 = v18;
    v28(v7, v18, v11);
    v29 = v42;
    v30 = &v7[*(v42 + 48)];
    v44 = v16;
    v28(v30, v16, v11);
    sub_1DAC92170(v7, v5, sub_1DAA82998);
    v31 = *(v29 + 48);
    v32 = v40;
    v38[1] = v26;
    v33 = v12[4];
    v33(v40, v5, v11);
    v34 = v12[1];
    v34(&v5[v31], v11);
    sub_1DAA836CC(v7, v5, sub_1DAA82998);
    v33((v32 + *(v41 + 36)), &v5[*(v29 + 48)], v11);
    v34(v5, v11);
    v35 = *(type metadata accessor for CurrencyResponse() + 20);
    if (sub_1DACB9234())
    {
      v36 = sub_1DACB9244();
    }

    else
    {
      v36 = 0;
    }

    sub_1DAC921D8(v32, sub_1DAA49610);
    v34(v44, v11);
    v34(v39, v11);
    return v36 & 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1DAC91F88()
{
  result = qword_1EE11E118;
  if (!qword_1EE11E118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E118);
  }

  return result;
}

uint64_t sub_1DAC91FDC(uint64_t a1)
{
  v2 = type metadata accessor for CurrencyResponse();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  result = sub_1DACB71E4();
  for (i = 0; v9; result = sub_1DAC921D8(v6, type metadata accessor for CurrencyResponse))
  {
    v13 = i;
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    sub_1DAC92170(*(a1 + 56) + *(v3 + 72) * (v14 | (v13 << 6)), v6, type metadata accessor for CurrencyResponse);
    sub_1DACB8544();
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return sub_1DACB71E4();
    }

    v9 = *(a1 + 64 + 8 * v13);
    ++i;
    if (v9)
    {
      i = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAC92170(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAC921D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DAC92238()
{
  sub_1DAC92540(0, qword_1EE11EB90, type metadata accessor for CurrencyResponse, MEMORY[0x1E69E6720]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for CurrencyResponse();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8524();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1DAB87680(v3);
    return sub_1DAB68D7C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DAA836CC(v3, v8, type metadata accessor for CurrencyResponse);
    if (sub_1DAC91AA0(v8))
    {
      sub_1DAC92540(0, &qword_1EE11CED8, sub_1DAB87AA8, MEMORY[0x1E69E6F90]);
      sub_1DAB87AA8();
      v11 = *(*(v10 - 8) + 72);
      v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1DACC1D20;
      sub_1DAC92170(v8, v13 + v12, type metadata accessor for CurrencyResponse);
      v14 = sub_1DAB68D7C(v13);
      swift_setDeallocating();
      sub_1DAC921D8(v13 + v12, sub_1DAB87AA8);
      swift_deallocClassInstance();
      sub_1DAC921D8(v8, type metadata accessor for CurrencyResponse);
      return v14;
    }

    else
    {
      v15 = sub_1DAB68D7C(MEMORY[0x1E69E7CC0]);
      sub_1DAC921D8(v8, type metadata accessor for CurrencyResponse);
      return v15;
    }
  }
}

void sub_1DAC92540(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAC925C8(uint64_t a1, void (*a2)(void *))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v5 = MEMORY[0x1E69E7CC8];
LABEL_32:
    a2(v5);
  }

  sub_1DAA614EC(0, &qword_1EE123B50, MEMORY[0x1E69E6F90]);
  v4 = (a1 + 40);
  v5 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v9 = *(v4 - 1);
    v8 = *v4;
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1DACC1D20;
    *(v10 + 32) = v9;
    *(v10 + 40) = v8;
    v11 = v5[2];
    swift_bridgeObjectRetain_n();
    if (!v11)
    {
      goto LABEL_8;
    }

    v12 = sub_1DAA4BF3C(v9, v8);
    if (v13)
    {
      v14 = *(v5[7] + 8 * v12);
      sub_1DACB71E4();
    }

    else
    {
LABEL_8:
      v14 = MEMORY[0x1E69E7CC0];
    }

    v15 = *(v14 + 16);
    v16 = *(v10 + 16);
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      break;
    }

    if (v17 > *(v10 + 24) >> 1)
    {
      if (v16 <= v17)
      {
        v22 = v16 + v15;
      }

      else
      {
        v22 = *(v10 + 16);
      }

      v10 = sub_1DAA9A3B0(1, v22, 1, v10);
      v16 = *(v10 + 16);
      if (*(v14 + 16))
      {
LABEL_12:
        if (((*(v10 + 24) >> 1) - v16) < v15)
        {
          goto LABEL_38;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v19 = *(v10 + 16);
          v20 = __OFADD__(v19, v15);
          v21 = v19 + v15;
          if (v20)
          {
            goto LABEL_40;
          }

          *(v10 + 16) = v21;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v18 = *(v14 + 16);
      if (v15)
      {
        goto LABEL_12;
      }
    }

    if (v15)
    {
      goto LABEL_36;
    }

LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = sub_1DAA4BF3C(v9, v8);
    v26 = v5[2];
    v27 = (v25 & 1) == 0;
    v20 = __OFADD__(v26, v27);
    v28 = v26 + v27;
    if (v20)
    {
      goto LABEL_37;
    }

    v29 = v25;
    if (v5[3] < v28)
    {
      sub_1DAB609F8(v28, isUniquelyReferenced_nonNull_native);
      v24 = sub_1DAA4BF3C(v9, v8);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_41;
      }

LABEL_26:
      if (v29)
      {
        goto LABEL_3;
      }

      goto LABEL_27;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_26;
    }

    v34 = v24;
    sub_1DAB65A84();
    v24 = v34;
    if (v29)
    {
LABEL_3:
      v6 = v5[7];
      v7 = *(v6 + 8 * v24);
      *(v6 + 8 * v24) = v10;

      goto LABEL_4;
    }

LABEL_27:
    v5[(v24 >> 6) + 8] |= 1 << v24;
    v31 = (v5[6] + 16 * v24);
    *v31 = v9;
    v31[1] = v8;
    *(v5[7] + 8 * v24) = v10;
    v32 = v5[2];
    v20 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v20)
    {
      goto LABEL_39;
    }

    v5[2] = v33;
LABEL_4:
    v4 += 2;
    if (!--v2)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

uint64_t sub_1DAC928DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1DACB8204();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  sub_1DACB82E4();
  sub_1DAA4D678(v12 + 16, v24);
  (*(v8 + 16))(v11, a3, v7);
  v13 = v25;
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v24[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  sub_1DACB71E4();
  v20 = sub_1DAC92AB0(a1, a2, v19, v11);
  __swift_destroy_boxed_opaque_existential_1(v24);
  v21 = sub_1DACB82B4();

  return v21;
}

id sub_1DAC92AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SDSBaseOperationFactory();
  v25[3] = v8;
  v25[4] = &off_1F5690858;
  v25[0] = a3;
  v9 = type metadata accessor for SDSSearchOperation();
  v10 = objc_allocWithZone(v9);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v25, v8);
  v12 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v24[3] = v8;
  v24[4] = &off_1F5690858;
  v24[0] = v16;
  v17 = &v10[qword_1ECBE95F8];
  *v17 = a1;
  *(v17 + 1) = a2;
  sub_1DAA4D678(v24, &v10[qword_1ECBE9600]);
  v18 = qword_1ECBE9608;
  v19 = sub_1DACB8204();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v10[v18], a4, v19);
  v23.receiver = v10;
  v23.super_class = v9;
  v21 = objc_msgSendSuper2(&v23, sel_init);
  (*(v20 + 8))(a4, v19);
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v21;
}

uint64_t sub_1DAC92CC8(uint64_t a1)
{
  v3 = *v1;
  sub_1DACB82E4();
  v4 = *__swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v5 = sub_1DAB39164(a1);
  v6 = sub_1DACB82B4();

  return v6;
}

uint64_t sub_1DAC92D38()
{
  if (!*v0)
  {
    if (qword_1EE123DD8 == -1)
    {
      return sub_1DACB7824();
    }

    goto LABEL_9;
  }

  if (*v0 == 1)
  {
    if (qword_1EE123DD8 == -1)
    {
      return sub_1DACB7824();
    }

    goto LABEL_9;
  }

  if (qword_1EE123DD8 != -1)
  {
LABEL_9:
    swift_once();
  }

  return sub_1DACB7824();
}

unint64_t sub_1DAC92F0C@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DAC92F38()
{
  result = qword_1ECBE99D0;
  if (!qword_1ECBE99D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE99D0);
  }

  return result;
}

unint64_t sub_1DAC93040()
{
  result = qword_1ECBE99D8;
  if (!qword_1ECBE99D8)
  {
    sub_1DAC93098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE99D8);
  }

  return result;
}

void sub_1DAC93098()
{
  if (!qword_1ECBE99E0)
  {
    v0 = sub_1DACB9724();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE99E0);
    }
  }
}

unint64_t sub_1DAC930F8()
{
  result = qword_1ECBE99E8;
  if (!qword_1ECBE99E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE99E8);
  }

  return result;
}

double sub_1DAC931B4(uint32_t a1, char a2)
{
  v4 = arc4random_uniform(a1);
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;
  v7 = arc4random_uniform(a1);
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = v6 / v8;
  if ((a2 & 1) != 0 && (arc4random_uniform(2u) & 1) == 0)
  {
    return -v9;
  }

  return v9;
}

uint64_t sub_1DAC93224(uint32_t a1)
{
  LODWORD(result) = arc4random_uniform(a1);
  if (result <= 1)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1DAC93260()
{
  v0 = sub_1DACB9364();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA58424(0x3200000019);
  sub_1DACB9354();
  v5 = sub_1DACB9334();
  v7 = v6;

  result = (*(v1 + 8))(v4, v0);
  if (v7 >> 60 != 15)
  {
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAC93464()
{
  sub_1DAB4D534(v0[2], v0[3]);
  v1 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC9356C(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1DAA4E4E0(a1, v2 + 16);
  return v2;
}

uint64_t sub_1DAC935F0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

id sub_1DAC93628()
{
  v1 = type metadata accessor for AppConfiguration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  (*(v6 + 8))(v5, v6);
  v7 = *(v4 + 117);
  LODWORD(v5) = v4[944];
  sub_1DAA640AC(v4);
  if (v5)
  {
    v8 = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = v7;
  }

  return [objc_opt_self() enabledForCurrentLevel_];
}

id sub_1DAC93700()
{
  v1 = type metadata accessor for AppConfiguration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v5);
  (*(v6 + 8))(v5, v6);
  v7 = *(v4 + 117);
  LODWORD(v5) = v4[944];
  sub_1DAA640AC(v4);
  if (v5)
  {
    v8 = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = v7;
  }

  return [objc_opt_self() enabledForCurrentLevel_];
}

uint64_t sub_1DAC93840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DACB7CC4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA4D678(v3 + 16, v28);
  (*(v12 + 16))(v15, a2, v11);
  (*(v7 + 16))(v10, a3, v6);
  v16 = v29;
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v28[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v23 = sub_1DACB71E4();
  v24 = sub_1DAC93AD8(v23, v22, v15, v10);
  __swift_destroy_boxed_opaque_existential_1(v28);
  sub_1DACB82E4();
  sub_1DACB8294();
  v25 = sub_1DACB82A4();

  return v25;
}

id sub_1DAC93AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SDSBaseOperationFactory();
  v27[3] = v8;
  v27[4] = &off_1F5690858;
  v27[0] = a2;
  v9 = type metadata accessor for SDSQuoteDetailOperation();
  v10 = objc_allocWithZone(v9);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v27, v8);
  v12 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v26[3] = v8;
  v26[4] = &off_1F5690858;
  v26[0] = v16;
  *&v10[qword_1EE121108] = a1;
  sub_1DAA4D678(v26, &v10[qword_1EE121120]);
  v17 = qword_1EE121110;
  v18 = sub_1DACB7CC4();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v10[v17], a3, v18);
  v20 = qword_1EE121118;
  v21 = sub_1DACB8204();
  v22 = *(v21 - 8);
  (*(v22 + 16))(&v10[v20], a4, v21);
  v25.receiver = v10;
  v25.super_class = v9;
  v23 = objc_msgSendSuper2(&v25, sel_init);
  (*(v22 + 8))(a4, v21);
  (*(v19 + 8))(a3, v18);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v23;
}

unint64_t sub_1DAC93D30@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, unint64_t *a9@<X8>, unint64_t a10)
{
  v10 = a10;
  v11 = 0x80000001DACEDC10;
  if (a2)
  {
    v12 = result;
  }

  else
  {
    v12 = 0xD00000000000002FLL;
  }

  if (a2)
  {
    v11 = a2;
  }

  v13 = 0x80000001DACEDC40;
  v14 = 0xD00000000000005ELL;
  if (a5)
  {
    v14 = a4;
    v13 = a5;
  }

  v15 = 23899;
  v16 = MEMORY[0x1E69E7CC0];
  if (a7)
  {
    v15 = a6;
  }

  v17 = 0xE200000000000000;
  if (a7)
  {
    v17 = a7;
  }

  if (a10)
  {
    v18 = a8;
  }

  else
  {
    v18 = 0;
  }

  *a9 = v12;
  a9[1] = v11;
  if (!a10)
  {
    v10 = 0xE000000000000000;
  }

  if (a3)
  {
    v19 = a3;
  }

  else
  {
    v19 = v16;
  }

  a9[2] = v19;
  a9[3] = v14;
  a9[4] = v13;
  a9[5] = v15;
  a9[6] = v17;
  a9[7] = v18;
  a9[8] = v10;
  return result;
}

uint64_t sub_1DAC93DD4()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC93EA8()
{
  *v0;
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAC93F68()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC94038@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAC94F58();
  *a2 = result;
  return result;
}

void sub_1DAC94068(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "klistedChannelIds";
  v4 = "webEmbedContentBlockers";
  v5 = 0xD00000000000001FLL;
  if (v2 != 3)
  {
    v5 = 0xD000000000000019;
    v4 = "webEmbedContentBlockerOverrides";
  }

  if (v2 == 2)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v3 = v4;
  }

  v6 = 0xD000000000000021;
  if (*v1)
  {
    v7 = "anfEmbedConfigurationAsset";
  }

  else
  {
    v6 = 0xD00000000000001ALL;
    v7 = "icleString";
  }

  if (*v1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v6 = v5;
    v8 = v3;
  }

  *a1 = v6;
  a1[1] = v8 | 0x8000000000000000;
}

unint64_t sub_1DAC940FC()
{
  v1 = *v0;
  v2 = 0xD00000000000001FLL;
  if (v1 != 3)
  {
    v2 = 0xD000000000000019;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000017;
  }

  v3 = 0xD000000000000021;
  if (!*v0)
  {
    v3 = 0xD00000000000001ALL;
  }

  if (*v0 <= 1u)
  {
    result = v3;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_1DAC9418C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAC94F58();
  *a1 = result;
  return result;
}

uint64_t sub_1DAC941B4(uint64_t a1)
{
  v2 = sub_1DAC94D78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC941F0(uint64_t a1)
{
  v2 = sub_1DAC94D78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC9422C@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  sub_1DAC94DCC(0, &qword_1EE123CB8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v52 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC94D78();
  sub_1DACBA2F4();
  if (!v2)
  {
    v67 = MEMORY[0x1E69E7CC0];
    v66 = 0;
    sub_1DACB9F84();
    v61 = a2;
    v12 = v65;
    v60 = v64;
    v13 = MEMORY[0x1E69E7CC0];
    if (!v65)
    {
      swift_beginAccess();
      v13 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = sub_1DAA9A3B0((v14 > 1), v15 + 1, 1, v13);
      }

      *(v13 + 2) = v15 + 1;
      v16 = &v13[16 * v15];
      *(v16 + 4) = 0xD00000000000001ALL;
      *(v16 + 5) = 0x80000001DACE2F40;
      v67 = v13;
      swift_endAccess();
    }

    v66 = 1;
    sub_1DAA613E8();
    v18 = v17;
    sub_1DAA962D8(&qword_1EE123E88);
    v19 = 0;
    sub_1DACB9F84();
    v59 = v64;
    if (!v64)
    {
      v58 = 0;
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v21 = *(v13 + 2);
      v20 = *(v13 + 3);
      if (v21 >= v20 >> 1)
      {
        v13 = sub_1DAA9A3B0((v20 > 1), v21 + 1, 1, v13);
      }

      *(v13 + 2) = v21 + 1;
      v22 = &v13[16 * v21];
      *(v22 + 4) = 0xD000000000000021;
      *(v22 + 5) = 0x80000001DACE2F60;
      v67 = v13;
      swift_endAccess();
      v19 = v58;
    }

    v66 = 2;
    sub_1DACB9F84();
    if (v19)
    {
      (*(v7 + 8))(v10, v6);
LABEL_31:

      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v56 = v64;
    v57 = v65;
    if (!v65)
    {
      v58 = 0;
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v24 = *(v13 + 2);
      v23 = *(v13 + 3);
      if (v24 >= v23 >> 1)
      {
        v13 = sub_1DAA9A3B0((v23 > 1), v24 + 1, 1, v13);
      }

      *(v13 + 2) = v24 + 1;
      v25 = &v13[16 * v24];
      *(v25 + 4) = 0xD000000000000017;
      *(v25 + 5) = 0x80000001DACE2F90;
      v67 = v13;
      swift_endAccess();
      v19 = v58;
    }

    v66 = 3;
    sub_1DACB9F84();
    if (v19)
    {
      (*(v7 + 8))(v10, v6);
LABEL_30:

      goto LABEL_31;
    }

    v54 = v64;
    v55 = v65;
    if (!v65)
    {
      v58 = 0;
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v27 = *(v13 + 2);
      v26 = *(v13 + 3);
      if (v27 >= v26 >> 1)
      {
        v13 = sub_1DAA9A3B0((v26 > 1), v27 + 1, 1, v13);
      }

      *(v13 + 2) = v27 + 1;
      v28 = &v13[16 * v27];
      *(v28 + 4) = 0xD00000000000001FLL;
      *(v28 + 5) = 0x80000001DACE2FB0;
      v67 = v13;
      swift_endAccess();
      v19 = v58;
    }

    LOBYTE(v64) = 4;
    sub_1DACB9F84();
    if (v19)
    {
      (*(v7 + 8))(v10, v6);

      goto LABEL_30;
    }

    v30 = v63;
    if (v63)
    {
      v58 = v62;
      v31 = *(v13 + 2) == 0;
    }

    else
    {
      v58 = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v33 = *(v13 + 2);
      v32 = *(v13 + 3);
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v53 = v33 + 1;
        v51 = sub_1DAA9A3B0((v32 > 1), v33 + 1, 1, v13);
        v34 = v53;
        v13 = v51;
      }

      v31 = 0;
      v58 = 0;
      *(v13 + 2) = v34;
      v35 = &v13[16 * v33];
      *(v35 + 4) = 0xD000000000000019;
      *(v35 + 5) = 0x80000001DACE2FD0;
    }

    v36 = 0xD00000000000002FLL;
    if (v12)
    {
      v36 = v60;
    }

    v60 = v36;
    if (!v12)
    {
      v12 = 0x80000001DACEDC10;
    }

    v37 = MEMORY[0x1E69E7CC0];
    if (v59)
    {
      v37 = v59;
    }

    v59 = v37;
    v38 = 0x80000001DACEDC40;
    v39 = 0xD00000000000005ELL;
    if (v57)
    {
      v39 = v56;
      v38 = v57;
    }

    v56 = v39;
    v57 = v38;
    v40 = 23899;
    if (v55)
    {
      v40 = v54;
    }

    v54 = v40;
    v41 = 0xE200000000000000;
    if (v55)
    {
      v41 = v55;
    }

    v55 = v41;
    v42 = 0xE000000000000000;
    if (v30)
    {
      v42 = v30;
    }

    v53 = v42;
    if (v31)
    {
      sub_1DAA41DCC();
      v43 = sub_1DACB9AD4();
      sub_1DACB9914();
      sub_1DACB8C64();
    }

    else
    {
      sub_1DAA41D64();
      v44 = swift_allocObject();
      v52 = v12;
      v45 = v44;
      *(v44 + 16) = xmmword_1DACC1D20;
      *(v44 + 56) = v18;
      *(v44 + 64) = sub_1DAAF691C();
      *(v45 + 32) = v13;
      sub_1DAA41DCC();
      sub_1DACB71E4();
      v43 = sub_1DACB9AD4();
      sub_1DACB9914();
      sub_1DACB8C64();
      v12 = v52;
    }

    (*(v7 + 8))(v10, v6);

    v46 = v61;
    *v61 = v60;
    v46[1] = v12;
    v48 = v56;
    v47 = v57;
    v46[2] = v59;
    v46[3] = v48;
    v46[4] = v47;
    v49 = v55;
    v46[5] = v54;
    v46[6] = v49;
    v50 = v53;
    v46[7] = v58;
    v46[8] = v50;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DAC94AD4(void *a1)
{
  sub_1DAC94DCC(0, &qword_1EE123C00, MEMORY[0x1E69E6F58]);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v20 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v20[5] = v1[3];
  v21 = v11;
  v12 = v1[4];
  v20[3] = v1[5];
  v20[4] = v12;
  v13 = v1[6];
  v20[0] = v1[7];
  v20[1] = v1[8];
  v20[2] = v13;
  v14 = a1[3];
  v15 = a1[4];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v14);
  sub_1DAC94D78();
  sub_1DACBA304();
  v27 = 0;
  sub_1DACBA094();
  if (!v2)
  {
    v22 = v21;
    v26 = 1;
    sub_1DAA613E8();
    sub_1DAA962D8(&qword_1EE123E98);
    sub_1DACBA0E4();
    v25 = 2;
    sub_1DACBA094();
    v24 = 3;
    sub_1DACBA094();
    v23 = 4;
    sub_1DACBA094();
  }

  return (*(v5 + 8))(v8, v18);
}

unint64_t sub_1DAC94D78()
{
  result = qword_1EE124CC0;
  if (!qword_1EE124CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124CC0);
  }

  return result;
}

void sub_1DAC94DCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAC94D78();
    v7 = a3(a1, &type metadata for NewsUIConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1DAC94E54()
{
  result = qword_1ECBE9A58;
  if (!qword_1ECBE9A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9A58);
  }

  return result;
}

unint64_t sub_1DAC94EAC()
{
  result = qword_1EE124CB0;
  if (!qword_1EE124CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124CB0);
  }

  return result;
}

unint64_t sub_1DAC94F04()
{
  result = qword_1EE124CB8;
  if (!qword_1EE124CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124CB8);
  }

  return result;
}

uint64_t sub_1DAC94F58()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DAC95048()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v1 = sub_1DACB9644();
  if (!v1[2])
  {
    goto LABEL_7;
  }

  if (!v1[2])
  {
    __break(1u);
LABEL_7:

    __break(1u);
    return result;
  }

  v2 = v1[4];
  v3 = v1[5];
  sub_1DACB71E4();

  sub_1DACB79D4();
}

uint64_t sub_1DAC950FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_1DACB79B4();
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA4A0F8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DACB7AB4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - v17;
  v19 = [objc_opt_self() defaultManager];
  v20 = sub_1DACB92F4();
  v21 = [v19 containerURLForSecurityApplicationGroupIdentifier_];

  if (v21)
  {
    sub_1DACB7A44();

    (*(v12 + 32))(v18, v16, v11);
    strcpy(v31, "Library/Caches");
    v31[15] = -18;
    v23 = v28;
    v22 = v29;
    (*(v28 + 104))(v6, *MEMORY[0x1E6968F58], v29);
    sub_1DAA642D8();
    sub_1DACB7AA4();
    (*(v23 + 8))(v6, v22);
    return (*(v12 + 8))(v18, v11);
  }

  else
  {
    v25 = v30;
    v26 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DACB8234();
    result = (*(v12 + 48))(v10, 1, v11);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      return (*(v12 + 32))(v25, v10, v11);
    }
  }

  return result;
}

uint64_t sub_1DAC95478(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = type metadata accessor for NetworkEvent();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_1DAB25BB8(0, v11, 0);
  v12 = v22;
  v13 = *(sub_1DACB8754() - 8);
  v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v19 = *(v13 + 72);
  while (1)
  {
    v20(v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1DAB25BB8(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v16 + 1;
    sub_1DAA7C62C(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, type metadata accessor for NetworkEvent);
    v14 += v19;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAC9568C(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v47 = MEMORY[0x1E69E7CC0];
    sub_1DACB9D64();
    v9 = a3 + 32;
    for (i = v6 - 1; ; --i)
    {
      v11 = *(v9 + 80);
      v12 = *(v9 + 112);
      v44 = *(v9 + 96);
      v45 = v12;
      v13 = *(v9 + 16);
      v14 = *(v9 + 48);
      v40 = *(v9 + 32);
      v41 = v14;
      v15 = *(v9 + 48);
      v16 = *(v9 + 80);
      v42 = *(v9 + 64);
      v43 = v16;
      v17 = *(v9 + 16);
      v39[0] = *v9;
      v39[1] = v17;
      v18 = *(v9 + 112);
      v35 = v44;
      v36 = v18;
      v31 = v40;
      v32 = v15;
      v33 = v42;
      v34 = v11;
      v46 = *(v9 + 128);
      v37 = *(v9 + 128);
      v29 = v39[0];
      v30 = v13;
      sub_1DAA806E4(v39, &v20);
      a1(&v38, &v29);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v26 = v35;
      v27 = v36;
      v28 = v37;
      v22 = v31;
      v23 = v32;
      v24 = v33;
      v25 = v34;
      v20 = v29;
      v21 = v30;
      sub_1DAA9B1C8(&v20);
      sub_1DACB9D34();
      v19 = *(v47 + 16);
      sub_1DACB9D74();
      sub_1DACB9D84();
      sub_1DACB9D44();
      if (!i)
      {
        return v47;
      }

      v9 += 136;
    }

    v26 = v35;
    v27 = v36;
    v28 = v37;
    v22 = v31;
    v23 = v32;
    v24 = v33;
    v25 = v34;
    v20 = v29;
    v21 = v30;
    sub_1DAA9B1C8(&v20);

    __break(1u);
  }

  return result;
}

uint64_t sub_1DAC95838(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v30 = MEMORY[0x1E69E7CC0];
  sub_1DAA5859C(0, v1, 0);
  v2 = v30;
  v4 = -1 << *(a1 + 32);
  v29 = a1 + 64;
  result = sub_1DACB9BC4();
  v6 = result;
  v7 = 0;
  v28 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v29 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v12 = (*(a1 + 56) + 48 * v6);
    v13 = *v12;
    v14 = v12[1];
    result = sub_1DACB93A4();
    v17 = *(v30 + 16);
    v16 = *(v30 + 24);
    if (v17 >= v16 >> 1)
    {
      v26 = v15;
      v27 = result;
      sub_1DAA5859C((v16 > 1), v17 + 1, 1);
      v15 = v26;
      result = v27;
    }

    *(v30 + 16) = v17 + 1;
    v18 = v30 + 16 * v17;
    *(v18 + 32) = result;
    *(v18 + 40) = v15;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v19 = *(v29 + 8 * v10);
    if ((v19 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v20 = v19 & (-2 << (v6 & 0x3F));
    if (v20)
    {
      v8 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v28;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v9 = v28;
      v23 = (a1 + 72 + 8 * v10);
      while (v22 < (v8 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_1DAAA2C74(v6, v11, 0);
          v8 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_1DAAA2C74(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
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

uint64_t sub_1DAC95A64(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v49 = MEMORY[0x1E69E7CC0];
  sub_1DAA57914(0, v1, 0);
  v2 = v49;
  v4 = -1 << *(v3 + 32);
  v50 = v3 + 64;
  result = sub_1DACB9BC4();
  if (result < 0 || (v6 = result, result >= 1 << *(v3 + 32)))
  {
LABEL_23:
    __break(1u);
  }

  else
  {
    v36 = v3 + 72;
    v37 = v1;
    v7 = *(v3 + 36);
    v8 = 1;
    while (1)
    {
      v9 = v6 >> 6;
      if ((*(v50 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        break;
      }

      v38 = v7;
      v10 = *(v3 + 56) + 136 * v6;
      v40 = *v10;
      v11 = *(v10 + 64);
      v13 = *(v10 + 16);
      v12 = *(v10 + 32);
      v43 = *(v10 + 48);
      v44 = v11;
      v41 = v13;
      v42 = v12;
      v15 = *(v10 + 96);
      v14 = *(v10 + 112);
      v16 = *(v10 + 80);
      v48 = *(v10 + 128);
      v46 = v15;
      v47 = v14;
      v45 = v16;
      result = sub_1DAA806E4(&v40, v39);
      v49 = v2;
      v17 = v3;
      v19 = *(v2 + 16);
      v18 = *(v2 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_1DAA57914((v18 > 1), v19 + 1, 1);
        v2 = v49;
      }

      *(v2 + 16) = v19 + 1;
      v20 = v2 + 136 * v19;
      *(v20 + 32) = v40;
      v21 = v41;
      v22 = v42;
      v23 = v44;
      *(v20 + 80) = v43;
      *(v20 + 96) = v23;
      *(v20 + 48) = v21;
      *(v20 + 64) = v22;
      v24 = v45;
      v25 = v46;
      v26 = v47;
      *(v20 + 160) = v48;
      *(v20 + 128) = v25;
      *(v20 + 144) = v26;
      *(v20 + 112) = v24;
      v27 = 1 << *(v17 + 32);
      if (v6 >= v27)
      {
        goto LABEL_25;
      }

      v28 = *(v50 + 8 * v9);
      if ((v28 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      v3 = v17;
      if (v38 != *(v17 + 36))
      {
        goto LABEL_27;
      }

      v29 = v28 & (-2 << (v6 & 0x3F));
      if (v29)
      {
        v6 = __clz(__rbit64(v29)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v30 = v37;
      }

      else
      {
        v31 = v9 << 6;
        v32 = v9 + 1;
        v30 = v37;
        v33 = (v36 + 8 * v9);
        while (v32 < (v27 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            result = sub_1DAAA2C74(v6, v38, 0);
            v6 = __clz(__rbit64(v34)) + v31;
            goto LABEL_18;
          }
        }

        result = sub_1DAAA2C74(v6, v38, 0);
        v6 = v27;
      }

LABEL_18:
      if (v8 == v30)
      {
        return v2;
      }

      if ((v6 & 0x8000000000000000) == 0)
      {
        v7 = *(v3 + 36);
        ++v8;
        if (v6 < 1 << *(v3 + 32))
        {
          continue;
        }
      }

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

uint64_t sub_1DAC95D1C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAC95D40, 0, 0);
}

uint64_t sub_1DAC95D40()
{
  v1 = v0[5];
  v0[6] = (*(v0[4] + 136))(v0[3]);
  v2 = *(MEMORY[0x1E69D6B08] + 4);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1DAC95DFC;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1DAC95DFC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1DABEF238;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1DACA844C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAC95F3C()
{
  v0 = sub_1DACB7E44();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1DACB92E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  sub_1DACB9284();
  (*(v3 + 16))(v7, v9, v2);
  if (qword_1EE123DD8 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE13E470;
  sub_1DACB7DF4();
  v11 = sub_1DACB9384();
  (*(v3 + 8))(v9, v2);
  return v11;
}

uint64_t sub_1DAC96120@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DACA66E0(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 48 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 24);
    v12 = *(v9 + 32);
    v13 = *(v9 + 40);
    *a2 = v10;
    *(a2 + 8) = *(v9 + 8);
    *(a2 + 24) = v11;
    *(a2 + 32) = v12;
    *(a2 + 40) = v13;
    result = memmove(v9, (v9 + 48), 48 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DAC961CC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DACA66F4(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    sub_1DAB1BC70();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DAC962D4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DACA6708(v3);
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

uint64_t sub_1DAC96360@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DACA671C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v5 + 136 * a1;
    v9 = *(v8 + 144);
    v10 = v7 - 1;
    *(a2 + 96) = *(v8 + 128);
    *(a2 + 112) = v9;
    *(a2 + 128) = *(v8 + 160);
    v11 = *(v8 + 80);
    *(a2 + 32) = *(v8 + 64);
    *(a2 + 48) = v11;
    v12 = *(v8 + 112);
    *(a2 + 64) = *(v8 + 96);
    *(a2 + 80) = v12;
    v13 = *(v8 + 48);
    *a2 = *(v8 + 32);
    *(a2 + 16) = v13;
    result = memmove((v8 + 32), (v8 + 168), 136 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DAC96418(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 8))(&v11);
  v6 = v11;
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v4 = (*(a2 + 112))(&v6, a1, a2);

  return v4;
}

uint64_t sub_1DAC964CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *v4;
  (*(a4 + 136))(a3, a4);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_1DACB71E4();
  v8 = sub_1DACB89D4();
  sub_1DAA5A8BC(0, &qword_1EE120130, &type metadata for Watchlist, MEMORY[0x1E69E6720]);
  v9 = sub_1DACB8A64();

  return v9;
}

uint64_t sub_1DAC965C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 136))(a3, a4);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1DACB71E4();
  v7 = sub_1DACB89D4();
  sub_1DAA5A8BC(0, &qword_1EE120130, &type metadata for Watchlist, MEMORY[0x1E69E6720]);
  v8 = sub_1DACB8A64();

  return v8;
}

uint64_t sub_1DAC966D0(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  sub_1DACB8F34();
}

uint64_t sub_1DAC96724(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[1];
  v13 = *a2;
  v14[0] = v4;
  *(v14 + 10) = *(a2 + 26);
  v11[2] = a3;
  v11[3] = a4;
  sub_1DAC9568C(sub_1DAC98934, v11, a1);
  v5 = sub_1DACB89D4();
  sub_1DACB8934();

  v6 = swift_allocObject();
  v7 = v14[0];
  v6[1] = v13;
  v6[2] = v7;
  *(v6 + 42) = *(v14 + 10);
  sub_1DAA8DB84(&v13, v12);
  v8 = sub_1DACB89D4();
  v9 = sub_1DACB8A64();

  return v9;
}

uint64_t sub_1DAC96874(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAC96898, 0, 0);
}

uint64_t sub_1DAC96898()
{
  v1 = v0[4];
  v0[5] = (*(v0[3] + 48))(v0[2]);
  v2 = *(MEMORY[0x1E69D6B08] + 4);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1DAC9694C;

  return MEMORY[0x1EEE44EE0](v3);
}

uint64_t sub_1DAC9694C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_1DAC96A68;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1DAC614E8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAC96A68()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_1DAC96ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DAC96AF4, 0, 0);
}

uint64_t sub_1DAC96AF4()
{
  v1 = v0[7];
  v0[8] = (*(v0[6] + 72))(v0[3], v0[4], v0[5]);
  v2 = *(MEMORY[0x1E69D6B08] + 4);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1DAC96BB4;
  v4 = v0[2];

  return MEMORY[0x1EEE44EE0](v4);
}

uint64_t sub_1DAC96BB4()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAC96CF0, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1DAC96CF0()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1DAC96D54(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;
  v5 = *a1;
  *(v4 + 80) = v3;
  *(v4 + 88) = v5;
  *(v4 + 96) = *(a1 + 1);
  v6 = a1[4];
  *(v4 + 112) = a1[3];
  *(v4 + 120) = v6;
  *(v4 + 58) = *(a1 + 20);
  return MEMORY[0x1EEE6DFA0](sub_1DAC96D94, 0, 0);
}

uint64_t sub_1DAC96D94()
{
  v15 = v0;
  v1 = *(v0 + 58);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v10 = *(v0 + 88);
  v11 = *(v0 + 96);
  v12 = v3;
  v13 = v2;
  v14 = v1;
  *(v0 + 128) = (*(v6 + 80))(&v10, v5);
  v7 = *(MEMORY[0x1E69D6B08] + 4);
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *v8 = v0;
  v8[1] = sub_1DAC96E70;

  return MEMORY[0x1EEE44EE0](v0 + 16);
}

uint64_t sub_1DAC96E70()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v10 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1DAC96FB4;
  }

  else
  {
    v5 = v2[16];
    v6 = v2[3];
    v7 = v2[4];
    v8 = v2[6];

    v4 = sub_1DACA8448;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAC96FB4()
{
  v1 = v0[16];

  v2 = v0[1];
  v3 = v0[18];

  return v2();
}

uint64_t sub_1DAC97018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 56) = *(a2 + 8);
  v7 = *(a3 + 16);
  *(v6 + 88) = *a3;
  *(v6 + 32) = a5;
  *(v6 + 40) = v5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a4;
  *(v6 + 48) = *a2;
  v8 = *(a2 + 32);
  *(v6 + 72) = *(a2 + 24);
  *(v6 + 80) = v8;
  *(v6 + 154) = *(a2 + 40);
  *(v6 + 104) = v7;
  *(v6 + 120) = *(a3 + 32);
  *(v6 + 152) = *(a3 + 40);
  return MEMORY[0x1EEE6DFA0](sub_1DAC97078, 0, 0);
}

uint64_t sub_1DAC97078()
{
  v22 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 120);
  v3 = *(v0 + 154);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 40);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v14 = *(v0 + 48);
  v15 = *(v0 + 56);
  v16 = v5;
  v17 = v4;
  v18 = v3;
  v9 = *(v0 + 104);
  v19[0] = *(v0 + 88);
  v19[1] = v9;
  v20 = v2;
  v21 = v1;
  *(v0 + 128) = (*(v8 + 152))(&v14, v19, v7);
  v10 = *(MEMORY[0x1E69D6B08] + 4);
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_1DAC97174;
  v12 = *(v0 + 16);

  return MEMORY[0x1EEE44EE0](v12);
}

uint64_t sub_1DAC97174()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAC96FB4, 0, 0);
  }

  else
  {
    v4 = v3[16];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1DAC972B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 160) = a4;
  *(v6 + 168) = a5;
  v7 = *(a2 + 112);
  *(v6 + 112) = *(a2 + 96);
  *(v6 + 128) = v7;
  *(v6 + 144) = *(a2 + 128);
  *(v6 + 152) = a1;
  v8 = *(a2 + 48);
  *(v6 + 48) = *(a2 + 32);
  *(v6 + 64) = v8;
  v9 = *(a2 + 80);
  *(v6 + 80) = *(a2 + 64);
  *(v6 + 96) = v9;
  v10 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v10;
  v11 = *a3;
  *(v6 + 176) = v5;
  *(v6 + 184) = v11;
  *(v6 + 192) = *(a3 + 1);
  v12 = a3[4];
  *(v6 + 208) = a3[3];
  *(v6 + 216) = v12;
  *(v6 + 248) = *(a3 + 20);
  return MEMORY[0x1EEE6DFA0](sub_1DAC97318, 0, 0);
}

uint64_t sub_1DAC97318()
{
  v16 = v0;
  v1 = *(v0 + 248);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v11 = *(v0 + 184);
  v12 = *(v0 + 192);
  v13 = v3;
  v14 = v2;
  v15 = v1;
  *(v0 + 224) = (*(v6 + 160))(v0 + 16, &v11, v5);
  v7 = *(MEMORY[0x1E69D6B08] + 4);
  v8 = swift_task_alloc();
  *(v0 + 232) = v8;
  *v8 = v0;
  v8[1] = sub_1DAC973F8;
  v9 = *(v0 + 152);

  return MEMORY[0x1EEE44EE0](v9);
}

uint64_t sub_1DAC973F8()
{
  v2 = *(*v1 + 232);
  v3 = *v1;
  v3[30] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAC97534, 0, 0);
  }

  else
  {
    v4 = v3[28];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1DAC97534()
{
  v1 = v0[28];

  v2 = v0[1];
  v3 = v0[30];

  return v2();
}

uint64_t sub_1DAC97598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = v4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a3;
  *(v5 + 96) = *a2;
  *(v5 + 104) = *(a2 + 8);
  v6 = *(a2 + 32);
  *(v5 + 120) = *(a2 + 24);
  *(v5 + 128) = v6;
  *(v5 + 58) = *(a2 + 40);
  return MEMORY[0x1EEE6DFA0](sub_1DAC975DC, 0, 0);
}

uint64_t sub_1DAC975DC()
{
  v16 = v0;
  v1 = *(v0 + 58);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 64);
  v11 = *(v0 + 96);
  v12 = *(v0 + 104);
  v13 = v3;
  v14 = v2;
  v15 = v1;
  *(v0 + 136) = sub_1DAC96724(v7, &v11, v5, v6);
  v8 = *(MEMORY[0x1E69D6B08] + 4);
  v9 = swift_task_alloc();
  *(v0 + 144) = v9;
  *v9 = v0;
  v9[1] = sub_1DAC976AC;

  return MEMORY[0x1EEE44EE0](v0 + 16);
}

uint64_t sub_1DAC976AC()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v10 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_1DAC977F0;
  }

  else
  {
    v5 = v2[17];
    v6 = v2[3];
    v7 = v2[4];
    v8 = v2[6];

    v4 = sub_1DAC614E8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAC977F0()
{
  v1 = v0[17];

  v2 = v0[1];
  v3 = v0[19];

  return v2();
}

uint64_t sub_1DAC97854(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v7 = *a3;
  *(v6 + 64) = v5;
  *(v6 + 72) = v7;
  *(v6 + 80) = *(a3 + 1);
  v8 = a3[4];
  *(v6 + 96) = a3[3];
  *(v6 + 104) = v8;
  *(v6 + 136) = *(a3 + 20);
  return MEMORY[0x1EEE6DFA0](sub_1DAC97898, 0, 0);
}

uint64_t sub_1DAC97898()
{
  v17 = v0;
  v1 = *(v0 + 136);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);
  v14 = v3;
  v15 = v2;
  v16 = v1;
  *(v0 + 112) = (*(v6 + 168))(v7, v8, &v12, v5);
  v9 = *(MEMORY[0x1E69D6B08] + 4);
  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  *v10 = v0;
  v10[1] = sub_1DAC97978;

  return MEMORY[0x1EEE44EE0](v0 + 16);
}

uint64_t sub_1DAC97978()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1DAC97AB0;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_1DAC97A94;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAC97AB0()
{
  v1 = v0[14];

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_1DAC97B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  *(v7 + 64) = *a2;
  *(v7 + 72) = *(a2 + 8);
  v8 = *(a2 + 32);
  *(v7 + 88) = *(a2 + 24);
  *(v7 + 96) = v8;
  *(v7 + 128) = *(a2 + 40);
  return MEMORY[0x1EEE6DFA0](sub_1DAC97B5C, 0, 0);
}

uint64_t sub_1DAC97B5C()
{
  v18 = v0;
  v1 = *(v0 + 128);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v13 = *(v0 + 64);
  v14 = *(v0 + 72);
  v15 = v3;
  v16 = v2;
  v17 = v1;
  *(v0 + 104) = (*(v6 + 88))(&v13, v7, v8, v5);
  v9 = *(MEMORY[0x1E69D6B08] + 4);
  v10 = swift_task_alloc();
  *(v0 + 112) = v10;
  *v10 = v0;
  v10[1] = sub_1DAC97C3C;
  v11 = *(v0 + 16);

  return MEMORY[0x1EEE44EE0](v11);
}

uint64_t sub_1DAC97C3C()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAC97D78, 0, 0);
  }

  else
  {
    v4 = v3[13];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1DAC97D78()
{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_1DAC97DDC(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = v5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a4;
  *(v6 + 48) = *a2;
  *(v6 + 56) = *(a2 + 8);
  v7 = *(a2 + 32);
  *(v6 + 72) = *(a2 + 24);
  *(v6 + 80) = v7;
  *(v6 + 112) = *(a2 + 40);
  *(v6 + 114) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1DAC97E28, 0, 0);
}

uint64_t sub_1DAC97E28()
{
  v18 = v0;
  v1 = *(v0 + 114);
  v2 = *(v0 + 112);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v12 = *(v0 + 48);
  v13 = *(v0 + 56);
  v14 = v4;
  v15 = v3;
  v16 = v2;
  v17 = v1;
  *(v0 + 88) = (*(v7 + 96))(&v12, &v17, v6);
  v8 = *(MEMORY[0x1E69D6B08] + 4);
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *v9 = v0;
  v9[1] = sub_1DAC97F10;
  v10 = *(v0 + 16);

  return MEMORY[0x1EEE44EE0](v10);
}

uint64_t sub_1DAC97F10()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DACA842C, 0, 0);
  }

  else
  {
    v4 = v3[11];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1DAC9804C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = v5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a4;
  *(v6 + 48) = *a2;
  *(v6 + 56) = *(a2 + 8);
  v7 = *(a2 + 32);
  *(v6 + 72) = *(a2 + 24);
  *(v6 + 80) = v7;
  *(v6 + 112) = *(a2 + 40);
  *(v6 + 114) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1DAC98098, 0, 0);
}

uint64_t sub_1DAC98098()
{
  v18 = v0;
  v1 = *(v0 + 114);
  v2 = *(v0 + 112);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v12 = *(v0 + 48);
  v13 = *(v0 + 56);
  v14 = v4;
  v15 = v3;
  v16 = v2;
  v17 = v1;
  *(v0 + 88) = (*(v7 + 104))(&v12, &v17, v6);
  v8 = *(MEMORY[0x1E69D6B08] + 4);
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *v9 = v0;
  v9[1] = sub_1DAC70CD4;
  v10 = *(v0 + 16);

  return MEMORY[0x1EEE44EE0](v10);
}

uint64_t sub_1DAC98180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 64) = a6;
  *(v8 + 72) = a7;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = *a5;
  *(v8 + 80) = v7;
  *(v8 + 88) = v9;
  *(v8 + 96) = *(a5 + 1);
  v10 = a5[4];
  *(v8 + 112) = a5[3];
  *(v8 + 120) = v10;
  *(v8 + 152) = *(a5 + 20);
  return MEMORY[0x1EEE6DFA0](sub_1DAC981C8, 0, 0);
}

uint64_t sub_1DAC981C8()
{
  v19 = v0;
  v1 = *(v0 + 152);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  v14 = *(v0 + 88);
  v15 = *(v0 + 96);
  v16 = v3;
  v17 = v2;
  v18 = v1;
  *(v0 + 128) = (*(v6 + 192))(v9, v10, v7, v8, &v14, v5);
  v11 = *(MEMORY[0x1E69D6B08] + 4);
  v12 = swift_task_alloc();
  *(v0 + 136) = v12;
  *v12 = v0;
  v12[1] = sub_1DAC982AC;

  return MEMORY[0x1EEE44EE0](v0 + 16);
}

uint64_t sub_1DAC982AC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1DAC96FB4;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_1DACA83E8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAC983C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  *(v5 + 56) = *a2;
  *(v5 + 64) = *(a2 + 8);
  v6 = *(a2 + 32);
  *(v5 + 80) = *(a2 + 24);
  *(v5 + 88) = v6;
  *(v5 + 120) = *(a2 + 40);
  return MEMORY[0x1EEE6DFA0](sub_1DAC9840C, 0, 0);
}

uint64_t sub_1DAC9840C()
{
  v16 = v0;
  v1 = *(v0 + 120);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 24);
  v11 = *(v0 + 56);
  v12 = *(v0 + 64);
  v13 = v3;
  v14 = v2;
  v15 = v1;
  *(v0 + 96) = (*(v6 + 184))(v7, &v11, v5);
  v8 = *(MEMORY[0x1E69D6B08] + 4);
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *v9 = v0;
  v9[1] = sub_1DAC984EC;

  return MEMORY[0x1EEE44EE0](v0 + 16);
}

uint64_t sub_1DAC984EC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1DAC98608;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_1DACA844C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAC98608()
{
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t sub_1DAC9866C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(*a1 + 16);
  if (v3)
  {
    v4 = *a1 + 48 * v3;
    v6 = *(v4 - 16);
    v5 = *(v4 - 8);
    v8 = *v4;
    v7 = *(v4 + 8);
    v9 = *(v4 + 16);
    LOWORD(v4) = *(v4 + 24);
    *a3 = v6;
    *(a3 + 8) = v5;
    *(a3 + 16) = v8;
    *(a3 + 24) = v7;
    *(a3 + 32) = v9;
    *(a3 + 40) = v4;
    sub_1DACB71E4();
    sub_1DACB71E4();
    return sub_1DACB71E4();
  }

  else
  {
    v11 = a2[1];
    *a3 = *a2;
    *(a3 + 16) = v11;
    *(a3 + 26) = *(a2 + 26);
    return sub_1DAA8DB84(a2, &v12);
  }
}

uint64_t sub_1DAC98700(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  v5 = *a1;
  *(v4 + 40) = v3;
  *(v4 + 48) = v5;
  *(v4 + 56) = *(a1 + 1);
  v6 = a1[4];
  *(v4 + 72) = a1[3];
  *(v4 + 80) = v6;
  *(v4 + 112) = *(a1 + 20);
  return MEMORY[0x1EEE6DFA0](sub_1DAC98740, 0, 0);
}

uint64_t sub_1DAC98740()
{
  v15 = v0;
  v1 = *(v0 + 112);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v10 = *(v0 + 48);
  v11 = *(v0 + 56);
  v12 = v3;
  v13 = v2;
  v14 = v1;
  *(v0 + 88) = (*(v6 + 112))(&v10, v5);
  v7 = *(MEMORY[0x1E69D6B08] + 4);
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = sub_1DAB87F78;

  return MEMORY[0x1EEE44EE0](v0 + 16);
}

uint64_t sub_1DAC9881C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = (*result + 73);
  v5 = *(*result + 16) + 1;
  while (1)
  {
    if (!--v5)
    {
      *(a4 + 26) = 0u;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }

    v6 = *(v4 - 41);
    v7 = *(v4 - 33);
    v8 = *(v4 - 25);
    v9 = *(v4 - 17);
    v10 = *(v4 - 9);
    v11 = *(v4 - 1);
    v12 = *v4;
    if (v9 == a2 && v10 == a3)
    {
      break;
    }

    v4 += 48;
    result = sub_1DACBA174();
    if (result)
    {
      goto LABEL_11;
    }
  }

  v9 = a2;
LABEL_11:
  *a4 = v6;
  *(a4 + 8) = v7;
  *(a4 + 16) = v8;
  *(a4 + 24) = v9;
  *(a4 + 32) = v10;
  *(a4 + 40) = v11 | (v12 << 8);
  sub_1DACB71E4();
  sub_1DACB71E4();
  return sub_1DACB71E4();
}

uint64_t sub_1DAC98934@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = *(a1 + 112);
  v16[6] = *(a1 + 96);
  v16[7] = v8;
  v17 = *(a1 + 128);
  v9 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v16[3] = v9;
  v10 = *(a1 + 80);
  v16[4] = *(a1 + 64);
  v16[5] = v10;
  v11 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v11;
  v12 = v7[1];
  v14 = *v7;
  v15[0] = v12;
  *(v15 + 10) = *(v7 + 26);
  result = (*(v5 + 160))(v16, &v14, v4);
  *a2 = result;
  return result;
}

uint64_t WatchlistError.errorDescription.getter()
{
  v1 = sub_1DACB7E44();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = sub_1DACB92E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16[-v9];
  v11 = *v0;
  v12 = (v4 + 16);
  if (!v11)
  {
    sub_1DACB9284();
    (*v12)(v8, v10, v3);
    if (qword_1EE123DD8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (v11 == 1)
  {
    sub_1DACB9284();
    (*v12)(v8, v10, v3);
    if (qword_1EE123DD8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  sub_1DACB9284();
  (*v12)(v8, v10, v3);
  if (qword_1EE123DD8 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  v13 = qword_1EE13E470;
  sub_1DACB7DF4();
  v14 = sub_1DACB9384();
  (*(v4 + 8))(v10, v3);
  return v14;
}

uint64_t WatchlistError.localizedStringResource.getter()
{
  v1 = sub_1DACB78E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7E44();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1DACB92E4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  *v0;
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v2 + 104))(v5, *MEMORY[0x1E6968DF0], v1);
  return sub_1DACB7914();
}

uint64_t WatchlistError.hashValue.getter()
{
  v1 = *v0;
  sub_1DACBA284();
  MEMORY[0x1E1277D70](v1);
  return sub_1DACBA2C4();
}

unint64_t sub_1DAC9907C()
{
  result = qword_1ECBE9A60;
  if (!qword_1ECBE9A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9A60);
  }

  return result;
}

unint64_t sub_1DAC990D4()
{
  result = qword_1ECBE9A68;
  if (!qword_1ECBE9A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9A68);
  }

  return result;
}

uint64_t sub_1DAC99304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DACB7E44();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33 = sub_1DACB92E4();
  v6 = *(v33 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v33);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v32 - v11;
  v32[1] = @"watchlist";
  v13 = sub_1DACB9324();
  v15 = *(a1 + 8);
  if (*(v15 + 16))
  {
    v16 = sub_1DAA4BF3C(v13, v14);
    v18 = v17;

    if (v18)
    {
      v19 = *(v15 + 56) + 48 * v16;
      v21 = *v19;
      v20 = *(v19 + 8);
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      v24 = *(v19 + 32);
      LOWORD(v19) = *(v19 + 40);
      *a2 = v21;
      *(a2 + 8) = v20;
      *(a2 + 16) = v23;
      *(a2 + 24) = v22;
      *(a2 + 32) = v24;
      *(a2 + 40) = v19;
      sub_1DACB71E4();
      sub_1DACB71E4();
      return sub_1DACB71E4();
    }
  }

  else
  {
  }

  sub_1DACB9284();
  v26 = v33;
  (*(v6 + 16))(v10, v12, v33);
  if (qword_1EE123DD8 != -1)
  {
    swift_once();
  }

  v27 = qword_1EE13E470;
  sub_1DACB7DF4();
  v28 = sub_1DACB9384();
  v30 = v29;
  (*(v6 + 8))(v12, v26);
  result = sub_1DACB9324();
  *a2 = v28;
  *(a2 + 8) = v30;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = result;
  *(a2 + 32) = v31;
  *(a2 + 40) = 160;
  return result;
}

void sub_1DAC995B0(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(v1 + 38);
  v3 = *&v1[40]._os_unfair_lock_opaque;
  v13 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
LABEL_17:
    v4 = sub_1DACB9E14();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v12 = v1;
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E12777A0](v5, v3);
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:
            v1 = v12;
            v10 = v13;
            goto LABEL_19;
          }
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          v7 = *(v3 + 8 * v5 + 32);
          sub_1DACB71F4();
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_14;
          }
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong && (v1 = Strong, swift_unknownObjectRelease(), v1 == a1))
        {
        }

        else
        {
          sub_1DACB9D34();
          v6 = *(v13 + 16);
          sub_1DACB9D74();
          sub_1DACB9D84();
          v1 = &v13;
          sub_1DACB9D44();
        }

        ++v5;
        if (v8 == v4)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v11 = *&v1[40]._os_unfair_lock_opaque;

  *&v1[40]._os_unfair_lock_opaque = v10;

  os_unfair_lock_unlock(v1 + 38);
}

uint64_t sub_1DAC99730(uint64_t a1, void *a2)
{
  v2 = a2[12];
  v3 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v2);
  return (*(v3 + 120))(v2, v3);
}

void sub_1DAC9978C(uint64_t *a1@<X0>, os_unfair_lock_s *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  os_unfair_lock_lock(a2 + 12);
  sub_1DAC997FC(&a2[14], v6, a3);
  os_unfair_lock_unlock(a2 + 12);
  if (v3)
  {
    __break(1u);
  }
}

uint64_t sub_1DAC997FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *result;
  v25 = *(*result + 16);
  if (!v25)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_23:
    *a3 = v5;
    return result;
  }

  v4 = 0;
  v21 = (a2 + 73);
  v22 = v3 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v23 = *result;
  v24 = a2;
  while (2)
  {
    v26 = v5;
LABEL_4:
    if (v4 < *(v3 + 16))
    {
      v6 = v21;
      v7 = (v22 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v27 = v4 + 1;
      v10 = *(a2 + 16) + 1;
      while (1)
      {
        if (!--v10)
        {
          a2 = v24;
          v5 = v26;
          v4 = v27;
          v3 = v23;
          if (v27 != v25)
          {
            goto LABEL_4;
          }

          goto LABEL_23;
        }

        v29 = *(v6 - 41);
        v11 = *(v6 - 33);
        v12 = *(v6 - 25);
        v13 = *(v6 - 17);
        v14 = *(v6 - 9);
        v15 = *(v6 - 1);
        v28 = *v6;
        if (v13 == v9 && v14 == v8)
        {
          break;
        }

        v6 += 48;
        result = sub_1DACBA174();
        if (result)
        {
          goto LABEL_16;
        }
      }

      v13 = v9;
LABEL_16:
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v5 = v26;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1DAA929C8(0, *(v26 + 16) + 1, 1, v26);
        v5 = result;
      }

      v3 = v23;
      a2 = v24;
      v18 = *(v5 + 16);
      v17 = *(v5 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_1DAA929C8((v17 > 1), v18 + 1, 1, v5);
        a2 = v24;
        v5 = result;
      }

      *(v5 + 16) = v18 + 1;
      v19 = v5 + 48 * v18;
      *(v19 + 32) = v29;
      *(v19 + 40) = v11;
      *(v19 + 48) = v12;
      *(v19 + 56) = v13;
      *(v19 + 64) = v14;
      *(v19 + 72) = v15;
      *(v19 + 73) = v28;
      v4 = v27;
      if (v27 != v25)
      {
        continue;
      }

      goto LABEL_23;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAC999E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a2 + 48));
  v7 = *(a2 + 64);
  if (*(v7 + 16))
  {
    v8 = sub_1DAA4BF3C(a3, a4);
    if (v9)
    {
      v10 = *(v7 + 56) + 48 * v8;
      v12 = *v10;
      v11 = *(v10 + 8);
      v13 = *(v10 + 16);
      v14 = *(v10 + 24);
      v15 = *(v10 + 32);
      v16 = *(v10 + 40);
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
    }
  }

  os_unfair_lock_unlock((a2 + 48));
  sub_1DAA763B0(0, &qword_1EE11FE88, &qword_1EE120130, &type metadata for Watchlist, MEMORY[0x1E69E6720]);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAC99B10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  sub_1DACB8BB4();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_1DACB71E4();
  v8 = sub_1DACB89D4();
  sub_1DACB8A74();

  v9 = sub_1DACB89D4();
  sub_1DACB8A74();

  v10 = sub_1DACB89D4();
  sub_1DACB8A74();

  v11 = sub_1DACB89D4();
  v12 = sub_1DACB8A74();

  return v12;
}

uint64_t sub_1DAC99CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1DACB7664();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a3;
  v34 = a4;
  sub_1DACB75B4();
  sub_1DAA642D8();
  v12 = sub_1DACB9B34();
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

    sub_1DAC990D4();
    swift_allocError();
    *v25 = 1;
    goto LABEL_7;
  }

  os_unfair_lock_lock((a2 + 48));
  v16 = *(a2 + 64);
  v17 = sub_1DACB71E4();
  v18 = sub_1DAC95838(v17);

  os_unfair_lock_unlock((a2 + 48));
  v19 = sub_1DACB93A4();
  v21 = v20;

  v33 = v19;
  v34 = v21;
  MEMORY[0x1EEE9AC00](v22);
  *(&v33 - 2) = &v33;
  v23 = sub_1DAC78448(sub_1DAC49E88, (&v33 - 4), v18);

  if (v23)
  {
    sub_1DAC990D4();
    swift_allocError();
    *v24 = 0;
LABEL_7:
    sub_1DAA5A8BC(0, &qword_1EE11D3F0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    return sub_1DACB8AD4();
  }

  v33 = a3;
  v34 = a4;
  sub_1DAA5A8BC(0, &qword_1EE11D3F0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAC99FC0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[12];
  v5 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v4);
  return (*(v5 + 80))(v2, v3, v4, v5);
}

uint64_t sub_1DAC9A034(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 20);
  v7 = a2[12];
  v8 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v7);
  v10 = v3;
  v11 = *(a1 + 1);
  v12 = v4;
  v13 = v5;
  v14 = v6;
  return (*(v8 + 184))(&v10, v7, v8);
}

uint64_t sub_1DAC9A0D4(__int128 *a1, uint64_t a2)
{
  v3 = a1[1];
  v20 = *a1;
  *v21 = v3;
  *&v21[10] = *(a1 + 26);
  os_unfair_lock_lock((a2 + 48));
  v5 = *&v21[8];
  v4 = *&v21[16];
  v6 = *(a2 + 56);
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 56) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1DAA9A3B0(0, *(v6 + 2) + 1, 1, v6);
    *(a2 + 56) = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1DAA9A3B0((v8 > 1), v9 + 1, 1, v6);
    *(a2 + 56) = v6;
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[16 * v9];
  *(v10 + 4) = v5;
  *(v10 + 5) = v4;
  sub_1DAA8DB84(&v20, &v18);
  v11 = *(a2 + 64);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  *&v18 = *(a2 + 64);
  *(a2 + 64) = 0x8000000000000000;
  sub_1DACA56F8(&v20, v5, v4, v12);

  *(a2 + 64) = v18;
  os_unfair_lock_unlock((a2 + 48));
  v18 = v20;
  v19[0] = *v21;
  *(v19 + 10) = *&v21[10];
  sub_1DAA5A8BC(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_1DAA8DB84(&v20, &v17);
  return sub_1DACB8AE4();
}

uint64_t sub_1DAC9A270(__int128 *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = a1[1];
  v14 = *a1;
  v15[0] = v5;
  *(v15 + 10) = *(a1 + 26);
  sub_1DACB8BB4();
  v6 = swift_allocObject();
  v7 = a1[1];
  v6[1] = *a1;
  v6[2] = v7;
  *(v6 + 42) = *(a1 + 26);
  sub_1DAA8DB84(&v14, &v13);
  v8 = sub_1DACB89D4();
  sub_1DACB8A74();

  v9 = sub_1DACB89D4();
  sub_1DACB8A74();

  v10 = sub_1DACB89D4();
  v11 = sub_1DACB8A74();

  return v11;
}

uint64_t sub_1DAC9A428(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 20);
  v7 = a2[12];
  v8 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v7);
  v10 = v3;
  v11 = *(a1 + 1);
  v12 = v4;
  v13 = v5;
  v14 = v6;
  return (*(v8 + 192))(&v10, v7, v8);
}

uint64_t sub_1DAC9A4C8(__int128 *a1, uint64_t a2)
{
  v3 = a1[1];
  v13 = *a1;
  *v14 = v3;
  *&v14[10] = *(a1 + 26);
  os_unfair_lock_lock((a2 + 48));
  sub_1DAA8DB84(&v13, &v11);
  v4 = sub_1DACA7B20((a2 + 56), &v13);
  result = sub_1DAA934A8(&v13);
  v6 = *(*(a2 + 56) + 16);
  if (v6 < v4)
  {
    __break(1u);
  }

  else
  {
    sub_1DACA6FFC(v4, v6);
    sub_1DAB5FC68(*&v14[8], *&v14[16], &v11);
    sub_1DAA75E60(v11, *(&v11 + 1));
    os_unfair_lock_unlock((a2 + 48));
    v11 = v13;
    *v12 = *v14;
    *&v12[10] = *&v14[10];
    sub_1DAA5A8BC(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_1DAA8DB84(&v13, &v10);
    return sub_1DACB8AE4();
  }

  return result;
}

uint64_t sub_1DAC9A5F0(__int128 *a1, __int128 *a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = a1[7];
  v38 = a1[6];
  v39 = v7;
  v40 = *(a1 + 16);
  v8 = a1[3];
  v34 = a1[2];
  v35 = v8;
  v9 = a1[5];
  v36 = a1[4];
  v37 = v9;
  v10 = a1[1];
  v32 = *a1;
  v33 = v10;
  v11 = a2[1];
  v30 = *a2;
  v31[0] = v11;
  *(v31 + 10) = *(a2 + 26);
  sub_1DACB8BB4();
  v12 = swift_allocObject();
  v13 = a1[7];
  *(v12 + 112) = a1[6];
  *(v12 + 128) = v13;
  v14 = a1[3];
  *(v12 + 48) = a1[2];
  *(v12 + 64) = v14;
  v15 = a1[5];
  *(v12 + 80) = a1[4];
  *(v12 + 96) = v15;
  v16 = a1[1];
  *(v12 + 16) = *a1;
  *(v12 + 32) = v16;
  v17 = a2[1];
  *(v12 + 152) = *a2;
  *(v12 + 144) = *(a1 + 16);
  *(v12 + 168) = v17;
  *(v12 + 178) = *(a2 + 26);
  sub_1DAA806E4(&v32, v29);
  sub_1DAA8DB84(&v30, v29);
  v18 = sub_1DACB89D4();
  sub_1DACB8A74();

  v19 = swift_allocObject();
  v20 = v31[0];
  *(v19 + 16) = v30;
  *(v19 + 32) = v20;
  *(v19 + 42) = *(v31 + 10);
  v21 = v39;
  *(v19 + 160) = v38;
  *(v19 + 176) = v21;
  v22 = v40;
  v23 = v35;
  *(v19 + 96) = v34;
  *(v19 + 112) = v23;
  v24 = v37;
  *(v19 + 128) = v36;
  *(v19 + 144) = v24;
  v25 = v33;
  *(v19 + 64) = v32;
  *(v19 + 80) = v25;
  *(v19 + 192) = v22;
  *(v19 + 200) = v3;
  sub_1DAA806E4(&v32, v29);
  sub_1DAA8DB84(&v30, v29);
  sub_1DACB71F4();
  v26 = sub_1DACB89D4();
  v27 = sub_1DACB8A74();

  return v27;
}

void sub_1DAC9A848(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, os_unfair_lock_s *a5)
{
  v65 = a4;
  v51[4] = *&a5->_os_unfair_lock_opaque;
  os_unfair_lock_lock((a2 + 48));
  v8 = *(a3 + 24);
  v9 = *(a3 + 32);
  v10 = *(a2 + 64);
  v11 = *(v10 + 16);
  v52 = a5;
  v56 = v9;
  if (v11 && (v12 = sub_1DAA4BF3C(v8, v9), (v13 & 1) != 0))
  {
    v14 = *(v10 + 56) + 48 * v12;
    v15 = *(v14 + 8);
    v55 = *v14;
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    v9 = *(v14 + 32);
    v18 = *(v14 + 40);
    LODWORD(v14) = *(v14 + 41);
    v53 = v18;
    v54 = v14;
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
  }

  else
  {
    v19 = *(a3 + 41);
    v53 = *(a3 + 40);
    v54 = v19;
    v15 = *(a3 + 8);
    v16 = *(a3 + 16);
    v55 = *a3;
    sub_1DAA8DB84(a3, &v58);
    v17 = v8;
  }

  sub_1DAA5A8BC(0, &qword_1EE123B50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC1D20;
  v60 = v65[1];
  *(inited + 32) = v60;
  *&v63 = v16;
  sub_1DACB71E4();
  sub_1DAAA1344(&v60, &v58);
  sub_1DACB71E4();
  sub_1DAC28658(inited);
  *&v61 = v55;
  *(&v61 + 1) = v15;
  *v62 = v63;
  *&v62[8] = v17;
  *&v62[16] = v9;
  v62[24] = v53;
  v62[25] = v54;
  swift_bridgeObjectRetain_n();
  sub_1DAA8DB84(&v61, &v58);
  v21 = *(a2 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v58 = *(a2 + 64);
  *(a2 + 64) = 0x8000000000000000;
  sub_1DACA56F8(&v61, v17, v9, isUniquelyReferenced_nonNull_native);

  *(a2 + 64) = v58;

  os_unfair_lock_unlock((a2 + 48));
  if (v8 == sub_1DACB9324() && v56 == v23)
  {

LABEL_11:
    v58 = v61;
    v59[0] = *v62;
    *(v59 + 10) = *&v62[10];
    sub_1DAA5A8BC(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    sub_1DACB8AE4();
    return;
  }

  v24 = sub_1DACBA174();

  if (v24)
  {
    goto LABEL_11;
  }

  v25 = v52;
  os_unfair_lock_lock(v52 + 12);
  sub_1DAC99304(&v52[14], &v58);
  if (v57)
  {
    os_unfair_lock_unlock(v52 + 12);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v52 + 12);
  v26 = *&v59[0];

  v63 = v60;
  MEMORY[0x1EEE9AC00](v27);
  v51[2] = &v63;
  v28 = sub_1DAC78448(sub_1DAA88710, v51, v26);

  if (v28)
  {
    goto LABEL_11;
  }

  os_unfair_lock_lock(v25 + 12);
  sub_1DAC99304(&v25[14], &v58);
  os_unfair_lock_unlock(v25 + 12);
  v63 = v58;
  v64[0] = v59[0];
  *(v64 + 10) = *(v59 + 10);
  sub_1DACB8BB4();
  v32 = swift_allocObject();
  v33 = v65;
  v34 = v65[7];
  *(v32 + 112) = v65[6];
  *(v32 + 128) = v34;
  v35 = *(v33 + 48);
  *(v32 + 48) = *(v33 + 32);
  *(v32 + 64) = v35;
  v36 = *(v33 + 80);
  *(v32 + 80) = *(v33 + 64);
  *(v32 + 96) = v36;
  v37 = *(v33 + 16);
  *(v32 + 16) = *v33;
  *(v32 + 32) = v37;
  v38 = v64[0];
  *(v32 + 152) = v63;
  *(v32 + 144) = *(v33 + 128);
  *(v32 + 168) = v38;
  *(v32 + 178) = *(v64 + 10);
  sub_1DAA806E4(v33, &v58);
  sub_1DAA8DB84(&v63, &v58);
  v39 = sub_1DACB89D4();
  sub_1DACB8A74();

  v40 = swift_allocObject();
  v41 = v64[0];
  *(v40 + 16) = v63;
  *(v40 + 32) = v41;
  *(v40 + 42) = *(v64 + 10);
  v42 = *(v33 + 112);
  *(v40 + 160) = *(v33 + 96);
  *(v40 + 176) = v42;
  v43 = *(v33 + 128);
  v44 = *(v33 + 48);
  *(v40 + 96) = *(v33 + 32);
  *(v40 + 112) = v44;
  v45 = *(v33 + 80);
  *(v40 + 128) = *(v33 + 64);
  *(v40 + 144) = v45;
  v46 = *(v33 + 16);
  *(v40 + 64) = *v33;
  *(v40 + 80) = v46;
  *(v40 + 192) = v43;
  *(v40 + 200) = v25;
  sub_1DAA806E4(v33, &v58);
  sub_1DAA8DB84(&v63, &v58);
  sub_1DACB71F4();
  v47 = sub_1DACB89D4();
  sub_1DACB8A74();

  sub_1DAA934A8(&v63);
  v48 = swift_allocObject();
  v49 = *v62;
  v48[1] = v61;
  v48[2] = v49;
  *(v48 + 42) = *&v62[10];
  v50 = sub_1DACB89D4();
  sub_1DACB8A64();
}

uint64_t sub_1DAC9AE64(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = a3[1];
  v21 = *a3;
  v22[0] = v9;
  *(v22 + 10) = *(a3 + 26);
  sub_1DACB8BB4();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = a3[1];
  *(v10 + 32) = *a3;
  *(v10 + 48) = v11;
  *(v10 + 58) = *(a3 + 26);
  sub_1DACB71E4();
  sub_1DAA8DB84(&v21, v20);
  v12 = sub_1DACB89D4();
  sub_1DACB8A74();

  v13 = swift_allocObject();
  v14 = v22[0];
  v13[1] = v21;
  v13[2] = v14;
  *(v13 + 42) = *(v22 + 10);
  sub_1DAA8DB84(&v21, v20);
  v15 = sub_1DACB89D4();
  sub_1DACB8A84();

  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  sub_1DACB71E4();
  v17 = sub_1DACB89D4();
  v18 = sub_1DACB8A64();

  return v18;
}

void sub_1DAC9B098(uint64_t *a1, os_unfair_lock_s *a2, uint64_t a3)
{
  v4 = a2;
  v5 = *a1;
  v6 = a1[1];
  os_unfair_lock_lock(a2 + 12);
  v7 = *&v4[16]._os_unfair_lock_opaque;
  if (*(v7 + 16))
  {
    v8 = sub_1DAA4BF3C(*(a3 + 24), *(a3 + 32));
    if (v9)
    {
      v37 = v4;
      v10 = *(v7 + 56) + 48 * v8;
      v11 = *v10;
      v12 = *(v10 + 16);
      v41 = *(v10 + 24);
      v13 = *(v10 + 32);
      v38 = *(v10 + 41);
      v39 = *(v10 + 40);
      v14 = *(v12 + 16);
      v40 = *(v10 + 8);
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      if (v14)
      {
        v15 = 0;
        v16 = v12 + 40;
        v42 = MEMORY[0x1E69E7CC0];
        v35 = v13;
        v36 = v11;
        do
        {
          v17 = (v16 + 16 * v15);
          v18 = v15;
          while (1)
          {
            if (v18 >= *(v12 + 16))
            {
              __break(1u);
              return;
            }

            v19 = *(v17 - 1);
            v20 = *v17;
            v21 = v19 == v5 && v20 == v6;
            if (!v21)
            {
              v22 = *(v17 - 1);
              v23 = *v17;
              v24 = v16;
              v25 = sub_1DACBA174();
              v16 = v24;
              if ((v25 & 1) == 0)
              {
                break;
              }
            }

            ++v18;
            v17 += 2;
            if (v14 == v18)
            {
              v13 = v35;
              v11 = v36;
              goto LABEL_22;
            }
          }

          sub_1DACB71E4();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v27 = v42;
          *&v44 = v42;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1DAA5859C(0, *(v42 + 16) + 1, 1);
            v27 = v44;
          }

          v11 = v36;
          v29 = *(v27 + 16);
          v28 = *(v27 + 24);
          v30 = v29 + 1;
          if (v29 >= v28 >> 1)
          {
            v43 = v29 + 1;
            v34 = *(v27 + 16);
            sub_1DAA5859C((v28 > 1), v29 + 1, 1);
            v30 = v43;
            v27 = v44;
            v29 = v34;
            v11 = v36;
          }

          v15 = v18 + 1;
          *(v27 + 16) = v30;
          v42 = v27;
          v31 = v27 + 16 * v29;
          *(v31 + 32) = v19;
          *(v31 + 40) = v20;
          v21 = v14 - 1 == v18;
          v13 = v35;
          v16 = v24;
        }

        while (!v21);
      }

      else
      {
        v42 = MEMORY[0x1E69E7CC0];
      }

LABEL_22:

      *&v44 = v11;
      *(&v44 + 1) = v40;
      v45 = v42;
      v46 = v41;
      v47 = v13;
      v48 = v39;
      v49 = v38;
      sub_1DACB71E4();
      v4 = v37;
      v32 = *&v37[16]._os_unfair_lock_opaque;
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v50 = *&v37[16]._os_unfair_lock_opaque;
      *&v37[16]._os_unfair_lock_opaque = 0x8000000000000000;
      sub_1DACA56F8(&v44, v41, v13, v33);

      *&v37[16]._os_unfair_lock_opaque = v50;
    }
  }

  os_unfair_lock_unlock(v4 + 12);
}

uint64_t sub_1DAC9B31C(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = a1[7];
  v55 = a1[6];
  v56 = v9;
  v57 = *(a1 + 16);
  v10 = a1[3];
  v51 = a1[2];
  v52 = v10;
  v11 = a1[5];
  v53 = a1[4];
  v54 = v11;
  v12 = a1[1];
  v49 = *a1;
  v50 = v12;
  v13 = a2[7];
  v64 = a2[6];
  v65 = v13;
  v66 = *(a2 + 16);
  v14 = a2[3];
  v60 = a2[2];
  v61 = v14;
  v15 = a2[5];
  v62 = a2[4];
  v63 = v15;
  v16 = a2[1];
  v58 = *a2;
  v59 = v16;
  v17 = a3[1];
  v47 = *a3;
  v48[0] = v17;
  *(v48 + 10) = *(a3 + 26);
  sub_1DACB8BB4();
  v18 = swift_allocObject();
  v19 = a1[7];
  *(v18 + 112) = a1[6];
  *(v18 + 128) = v19;
  v20 = a1[3];
  *(v18 + 48) = a1[2];
  *(v18 + 64) = v20;
  v21 = a1[5];
  *(v18 + 80) = a1[4];
  *(v18 + 96) = v21;
  v22 = a1[1];
  *(v18 + 16) = *a1;
  *(v18 + 32) = v22;
  v23 = a2[4];
  *(v18 + 232) = a2[5];
  v24 = a2[7];
  *(v18 + 248) = a2[6];
  *(v18 + 264) = v24;
  v25 = *a2;
  *(v18 + 168) = a2[1];
  v26 = a2[3];
  *(v18 + 184) = a2[2];
  *(v18 + 200) = v26;
  *(v18 + 144) = *(a1 + 16);
  *(v18 + 280) = *(a2 + 16);
  *(v18 + 216) = v23;
  *(v18 + 152) = v25;
  v27 = a3[1];
  *(v18 + 288) = *a3;
  *(v18 + 304) = v27;
  *(v18 + 314) = *(a3 + 26);
  sub_1DAA806E4(&v49, v46);
  v28 = MEMORY[0x1E69E6720];
  sub_1DACA73E4(&v58, v46, &qword_1EE1201A8, &type metadata for Stock, MEMORY[0x1E69E6720]);
  sub_1DAA8DB84(&v47, v46);
  v29 = sub_1DACB89D4();
  sub_1DACB8A74();

  v30 = swift_allocObject();
  v31 = v48[0];
  v30[1] = v47;
  v30[2] = v31;
  *(v30 + 42) = *(v48 + 10);
  sub_1DAA8DB84(&v47, v46);
  v32 = sub_1DACB89D4();
  sub_1DACB8A74();

  v33 = swift_allocObject();
  v34 = v48[0];
  *(v33 + 16) = v47;
  *(v33 + 32) = v34;
  *(v33 + 42) = *(v48 + 10);
  v35 = v56;
  *(v33 + 160) = v55;
  *(v33 + 176) = v35;
  v36 = v52;
  *(v33 + 96) = v51;
  *(v33 + 112) = v36;
  v37 = v54;
  *(v33 + 128) = v53;
  *(v33 + 144) = v37;
  v38 = v50;
  *(v33 + 64) = v49;
  *(v33 + 80) = v38;
  v39 = v65;
  *(v33 + 296) = v64;
  *(v33 + 312) = v39;
  v40 = v58;
  *(v33 + 216) = v59;
  v41 = v61;
  *(v33 + 232) = v60;
  *(v33 + 248) = v41;
  v42 = v63;
  *(v33 + 264) = v62;
  *(v33 + 280) = v42;
  *(v33 + 192) = v57;
  *(v33 + 328) = v66;
  *(v33 + 200) = v40;
  sub_1DAA806E4(&v49, v46);
  sub_1DACA73E4(&v58, v46, &qword_1EE1201A8, &type metadata for Stock, v28);
  sub_1DAA8DB84(&v47, v46);
  v43 = sub_1DACB89D4();
  v44 = sub_1DACB8A74();

  return v44;
}

uint64_t sub_1DAC9B6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  os_unfair_lock_lock((a2 + 48));
  v9 = *(a2 + 64);
  if (!*(v9 + 16) || (v10 = sub_1DAA4BF3C(*(a3 + 24), *(a3 + 32)), (v11 & 1) == 0))
  {
    os_unfair_lock_unlock((a2 + 48));
    goto LABEL_54;
  }

  v12 = *(v9 + 56) + 48 * v10;
  v69 = *v12;
  v13 = *(v12 + 16);
  v67 = *(v12 + 24);
  v14 = *(v12 + 32);
  v68 = *(v12 + 41);
  v15 = *(v13 + 16);
  sub_1DACB71E4();
  sub_1DACB71E4();
  result = sub_1DACB71E4();
  if (v15)
  {
    v17 = 0;
    v18 = v13 + 40;
    v19 = MEMORY[0x1E69E7CC0];
    do
    {
      v95 = v19;
      v20 = (v18 + 16 * v17);
      v21 = v17;
      while (1)
      {
        if (v21 >= *(v13 + 16))
        {
          __break(1u);
          goto LABEL_56;
        }

        v23 = *(v20 - 1);
        v22 = *v20;
        if (v23 != *(a4 + 16) || v22 != *(a4 + 24))
        {
          v25 = *(v20 - 1);
          v26 = *v20;
          result = sub_1DACBA174();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        ++v21;
        v20 += 2;
        if (v15 == v21)
        {
          v19 = v95;
          goto LABEL_22;
        }
      }

      sub_1DACB71E4();
      v19 = v95;
      result = swift_isUniquelyReferenced_nonNull_native();
      *&v80 = v95;
      if ((result & 1) == 0)
      {
        result = sub_1DAA5859C(0, *(v95 + 2) + 1, 1);
        v19 = v80;
      }

      v28 = *(v19 + 2);
      v27 = *(v19 + 3);
      v29 = (v28 + 1);
      if (v28 >= v27 >> 1)
      {
        v95 = (v28 + 1);
        v65 = v28;
        result = sub_1DAA5859C((v27 > 1), v28 + 1, 1);
        v29 = v95;
        v28 = v65;
        v19 = v80;
      }

      v17 = v21 + 1;
      *(v19 + 2) = v29;
      v30 = &v19[16 * v28];
      *(v30 + 4) = v23;
      *(v30 + 5) = v22;
      v18 = v13 + 40;
    }

    while (v15 - 1 != v21);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

LABEL_22:

  v31 = a5[7];
  v86 = a5[6];
  v87 = v31;
  v88 = *(a5 + 16);
  v32 = a5[3];
  v82 = a5[2];
  v83 = v32;
  v33 = a5[5];
  v84 = a5[4];
  v85 = v33;
  v34 = a5[1];
  v80 = *a5;
  v81 = v34;
  result = get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(&v80);
  v35 = *(v19 + 2);
  if (result == 1)
  {
    v36 = *(a4 + 16);
    v37 = *(a4 + 24);
    sub_1DACB71E4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v19;
    v39 = v14;
    if (isUniquelyReferenced_nonNull_native && v35 < *(v19 + 3) >> 1)
    {
      v95 = v19;
    }

    else
    {
      v95 = sub_1DAA9A3B0(isUniquelyReferenced_nonNull_native, v35 + 1, 1, v19);
      v70 = v95;
    }

    v47 = 0;
    v48 = 0;
    v49 = v36;
    goto LABEL_46;
  }

  v39 = v14;
  v95 = v19;
  v40 = 0;
  if (v35)
  {
    v41 = v81;
    v42 = v19 + 40;
    while (1)
    {
      result = *(v42 - 1);
      if (result == v41 && *v42 == *(&v41 + 1))
      {
        break;
      }

      result = sub_1DACBA174();
      if (result)
      {
        break;
      }

      ++v40;
      v42 += 2;
      if (v35 == v40)
      {
        v40 = 0;
        break;
      }
    }

    v19 = v95;
  }

  v44 = v40 + 1;
  if (__OFADD__(v40, 1))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v35 < v44)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if ((v44 & 0x8000000000000000) != 0)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v45 = *(v19 + 2);
  if (v45 >= v44)
  {
    v37 = *(a4 + 24);
    v66 = *(a4 + 16);
    sub_1DACB71E4();
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v19;
    if (!v46 || v45 >= *(v19 + 3) >> 1)
    {
      v95 = sub_1DAA9A3B0(v46, v45 + 1, 1, v19);
      v70 = v95;
    }

    v47 = v44;
    v48 = v44;
    v49 = v66;
LABEL_46:
    sub_1DACA69B8(v47, v48, 1, v49, v37);

    v89 = v69;
    v90 = v95;
    v91 = v67;
    v92 = v39;
    v93 = -96;
    v94 = v68;
    sub_1DACB71E4();
    sub_1DAA8DB84(&v89, &v71);
    v50 = *(a2 + 64);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    *&v71 = *(a2 + 64);
    *(a2 + 64) = 0x8000000000000000;
    sub_1DACA56F8(&v89, v67, v39, v51);

    *(a2 + 64) = v71;
    os_unfair_lock_unlock((a2 + 48));
    if (*(&v69 + 1))
    {
      v52 = *(a2 + 16);
      sub_1DACB8F34();
      v54 = *(&v72 + 1);
      v53 = v73;

      if (v54 == v67 && v14 == v53)
      {
      }

      else
      {
        v55 = sub_1DACBA174();

        if ((v55 & 1) == 0)
        {
          v57 = *(&v69 + 1);
          v56 = v69;
          goto LABEL_53;
        }
      }

      v71 = v69;
      *&v72 = v95;
      *(&v72 + 1) = v67;
      *&v73 = v14;
      BYTE8(v73) = -96;
      BYTE9(v73) = v68;
      sub_1DACB8F24();
      v57 = *(&v69 + 1);
      v56 = v69;
LABEL_53:
      sub_1DAA75E60(v56, v57);
    }

LABEL_54:
    v58 = *(a4 + 112);
    v77 = *(a4 + 96);
    v78 = v58;
    v79 = *(a4 + 128);
    v59 = *(a4 + 48);
    v73 = *(a4 + 32);
    v74 = v59;
    v60 = *(a4 + 80);
    v75 = *(a4 + 64);
    v76 = v60;
    v61 = *(a4 + 16);
    v71 = *a4;
    v72 = v61;
    sub_1DAA5A8BC(0, &qword_1ECBE9AC0, &type metadata for Stock, MEMORY[0x1E69D6B18]);
    v63 = *(v62 + 48);
    v64 = *(v62 + 52);
    swift_allocObject();
    sub_1DAA806E4(a4, &v70);
    return sub_1DACB8AE4();
  }

LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1DAC9BC3C(uint64_t a1, __int128 *a2)
{
  v5 = *v2;
  v6 = a2[1];
  v23 = *a2;
  v24[0] = v6;
  *(v24 + 10) = *(a2 + 26);
  sub_1DACB8BB4();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = a2[1];
  *(v7 + 24) = *a2;
  *(v7 + 40) = v8;
  *(v7 + 50) = *(a2 + 26);
  sub_1DACB71E4();
  sub_1DAA8DB84(&v23, v22);
  v9 = sub_1DACB89D4();
  sub_1DAA5A8BC(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DACB8A74();

  v10 = swift_allocObject();
  v11 = v24[0];
  v10[1] = v23;
  v10[2] = v11;
  *(v10 + 42) = *(v24 + 10);
  sub_1DAA8DB84(&v23, v22);
  v12 = sub_1DACB89D4();
  sub_1DACB8A74();

  v13 = swift_allocObject();
  v14 = v24[0];
  *(v13 + 16) = v23;
  *(v13 + 32) = v14;
  *(v13 + 42) = *(v24 + 10);
  *(v13 + 64) = a1;
  sub_1DACB71E4();
  sub_1DAA8DB84(&v23, v22);
  v15 = sub_1DACB89D4();
  sub_1DACB8A84();

  v16 = swift_allocObject();
  v17 = v24[0];
  v16[1] = v23;
  v16[2] = v17;
  *(v16 + 42) = *(v24 + 10);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1DACA72A0;
  *(v18 + 24) = v16;
  sub_1DAA8DB84(&v23, v22);
  v19 = sub_1DACB89D4();
  v20 = sub_1DACB8A64();

  return v20;
}

void sub_1DAC9BF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a2 + 48));
  v7 = *(a2 + 64);
  if (!*(v7 + 16) || (v8 = sub_1DAA4BF3C(*(a3 + 24), *(a3 + 32)), (v9 & 1) == 0))
  {
    os_unfair_lock_unlock((a2 + 48));
    return;
  }

  v10 = *(v7 + 56) + 48 * v8;
  v12 = *v10;
  v11 = *(v10 + 8);
  v14 = *(v10 + 24);
  v13 = *(v10 + 32);
  v15 = *(v10 + 41);
  *&v31 = *v10;
  *(&v31 + 1) = v11;
  v32 = a4;
  v33 = v14;
  v34 = v13;
  v35 = -96;
  v36 = v15;
  swift_bridgeObjectRetain_n();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DAA8DB84(&v31, v26);
  v16 = *(a2 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26[0] = *(a2 + 64);
  *(a2 + 64) = 0x8000000000000000;
  sub_1DACA56F8(&v31, v14, v13, isUniquelyReferenced_nonNull_native);

  *(a2 + 64) = v26[0];
  os_unfair_lock_unlock((a2 + 48));
  if (!v11)
  {
    return;
  }

  v37 = v12;
  v25 = v15;
  v18 = *(a2 + 16);
  sub_1DACB8F34();
  v20 = v27;
  v19 = v28;

  if (v20 == v14 && v13 == v19)
  {

    goto LABEL_12;
  }

  v22 = sub_1DACBA174();

  if (v22)
  {
LABEL_12:
    v24 = v37;
    v26[0] = v37;
    v26[1] = v11;
    v26[2] = a4;
    v27 = v14;
    v28 = v13;
    v29 = -96;
    v30 = v25;
    sub_1DACB8F24();
    v23 = v24;
    goto LABEL_13;
  }

  v23 = v37;
LABEL_13:
  sub_1DAA75E60(v23, v11);
}

uint64_t sub_1DAC9C144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v6 = v5;
  v12 = *v6;
  v13 = a5[1];
  v26 = *a5;
  v27[0] = v13;
  *(v27 + 10) = *(a5 + 26);
  sub_1DACB8BB4();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  v15 = a5[1];
  *(v14 + 48) = *a5;
  *(v14 + 64) = v15;
  *(v14 + 74) = *(a5 + 26);
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DAA8DB84(&v26, v25);
  v16 = sub_1DACB89D4();
  sub_1DACB8A74();

  v17 = swift_allocObject();
  v18 = v27[0];
  *(v17 + 16) = v26;
  *(v17 + 32) = v18;
  *(v17 + 42) = *(v27 + 10);
  *(v17 + 64) = a3;
  *(v17 + 72) = a4;
  sub_1DACB71E4();
  sub_1DAA8DB84(&v26, v25);
  v19 = sub_1DACB89D4();
  sub_1DACB8A84();

  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1DACA7180;
  *(v21 + 24) = v20;
  sub_1DACB71E4();
  v22 = sub_1DACB89D4();
  v23 = sub_1DACB8A64();

  return v23;
}

void sub_1DAC9C3C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v9 = a1[1];
  os_unfair_lock_lock((a2 + 48));
  v11 = *(a2 + 64);
  if (!*(v11 + 16) || (v12 = sub_1DAA4BF3C(*(a3 + 24), *(a3 + 32)), (v13 & 1) == 0))
  {
    os_unfair_lock_unlock((a2 + 48));
    return;
  }

  v14 = *(v11 + 56) + 48 * v12;
  v53 = *v14;
  v54 = *(v14 + 8);
  v15 = *(v14 + 16);
  v49 = *(v14 + 24);
  v50 = *(v14 + 32);
  v51 = *(v14 + 41);
  v52 = *(v14 + 40);
  v16 = *(v15 + 2);
  if (v16)
  {
    v17 = 0;
    v18 = v15 + 40;
    while (1)
    {
      v19 = *(v18 - 1) == v10 && *v18 == v9;
      if (v19 || (sub_1DACBA174() & 1) != 0)
      {
        break;
      }

      ++v17;
      v18 += 2;
      if (v16 == v17)
      {
        goto LABEL_11;
      }
    }

    v22 = *(v15 + 2);
    if (v22 < v17)
    {
LABEL_47:
      __break(1u);
      return;
    }

    sub_1DACB71E4();
    sub_1DACB71E4();
    v21 = v50;
    sub_1DACB71E4();
    sub_1DACB71E4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v15;
    if (!isUniquelyReferenced_nonNull_native || v22 >= *(v15 + 3) >> 1)
    {
      v15 = sub_1DAA9A3B0(isUniquelyReferenced_nonNull_native, v22 + 1, 1, v15);
      v66 = v15;
    }

    sub_1DACA69B8(v17, v17, 1, a4, a5);

    v24 = *(v15 + 2);
    if (v24)
    {
      v25 = 0;
      v26 = v15 + 40;
      v48 = MEMORY[0x1E69E7CC0];
      do
      {
        v27 = &v26[16 * v25];
        v28 = v25;
        while (1)
        {
          if (v28 >= *(v15 + 2))
          {
            __break(1u);
            goto LABEL_47;
          }

          v29 = *(v27 - 1);
          v30 = *v27;
          if (v29 != v10 || v30 != v9)
          {
            v32 = *(v27 - 1);
            v33 = *v27;
            if ((sub_1DACBA174() & 1) == 0)
            {
              break;
            }
          }

          ++v28;
          v27 += 16;
          if (v24 == v28)
          {
            v21 = v50;
            goto LABEL_36;
          }
        }

        sub_1DACB71E4();
        *&v60 = v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DAA5859C(0, *(v48 + 16) + 1, 1);
          v48 = v60;
        }

        v26 = v15 + 40;
        v35 = *(v48 + 16);
        v34 = *(v48 + 24);
        v36 = v35 + 1;
        if (v35 >= v34 >> 1)
        {
          v46 = *(v48 + 16);
          v47 = v35 + 1;
          sub_1DAA5859C((v34 > 1), v35 + 1, 1);
          v35 = v46;
          v36 = v47;
          v26 = v15 + 40;
          v48 = v60;
        }

        v25 = v28 + 1;
        *(v48 + 16) = v36;
        v37 = v48 + 16 * v35;
        *(v37 + 32) = v29;
        *(v37 + 40) = v30;
        v19 = v24 - 1 == v28;
        v21 = v50;
      }

      while (!v19);
    }

    else
    {
      v48 = MEMORY[0x1E69E7CC0];
    }

LABEL_36:

    v15 = v48;
    v20 = v54;
  }

  else
  {
LABEL_11:
    sub_1DACB71E4();
    v20 = v54;
    sub_1DACB71E4();
    v21 = v50;
    sub_1DACB71E4();
  }

  *&v60 = v53;
  *(&v60 + 1) = v20;
  v61 = v15;
  v62 = v49;
  v63 = v21;
  v64 = v52;
  v65 = v51;
  sub_1DACB71E4();
  sub_1DAA8DB84(&v60, v55);
  v38 = *(a2 + 64);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v55[0] = *(a2 + 64);
  *(a2 + 64) = 0x8000000000000000;
  sub_1DACA56F8(&v60, v49, v21, v39);

  *(a2 + 64) = v55[0];
  os_unfair_lock_unlock((a2 + 48));
  if (v20)
  {
    v40 = *(a2 + 16);
    sub_1DACB8F34();
    v42 = v56;
    v41 = v57;

    if (v42 == v49 && v21 == v41)
    {
    }

    else
    {
      v43 = sub_1DACBA174();

      if ((v43 & 1) == 0)
      {
        v44 = v53;
        v45 = v54;
        goto LABEL_44;
      }
    }

    v55[0] = v53;
    v55[1] = v54;
    v55[2] = v15;
    v56 = v49;
    v57 = v21;
    v58 = v52;
    v59 = v51;
    sub_1DACB8F24();
    v44 = v53;
    v45 = v54;
LABEL_44:
    sub_1DAA75E60(v44, v45);
  }
}

uint64_t sub_1DAC9C7F4(__int128 *a1, __int128 *a2)
{
  v5 = *v2;
  v6 = a1[1];
  v23 = *a1;
  v24[0] = v6;
  *(v24 + 10) = *(a1 + 26);
  v7 = a2[1];
  v25 = *a2;
  v26[0] = v7;
  *(v26 + 10) = *(a2 + 26);
  sub_1DACB8BB4();
  v8 = swift_allocObject();
  v9 = a1[1];
  v8[1] = *a1;
  v8[2] = v9;
  *(v8 + 42) = *(a1 + 26);
  v10 = a2[1];
  v8[4] = *a2;
  v8[5] = v10;
  *(v8 + 90) = *(a2 + 26);
  sub_1DAA8DB84(&v23, v22);
  v11 = MEMORY[0x1E69E6720];
  sub_1DACA73E4(&v25, v22, &qword_1EE120130, &type metadata for Watchlist, MEMORY[0x1E69E6720]);
  v12 = sub_1DACB89D4();
  sub_1DACB8A74();

  v13 = swift_allocObject();
  v14 = v26[0];
  v13[1] = v25;
  v13[2] = v14;
  *(v13 + 42) = *(v26 + 10);
  sub_1DACA73E4(&v25, v22, &qword_1EE120130, &type metadata for Watchlist, v11);
  v15 = sub_1DACB89D4();
  sub_1DACB8A84();

  v16 = swift_allocObject();
  v17 = v24[0];
  v16[1] = v23;
  v16[2] = v17;
  *(v16 + 42) = *(v24 + 10);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1DACA7860;
  *(v18 + 24) = v16;
  sub_1DAA8DB84(&v23, v22);
  v19 = sub_1DACB89D4();
  v20 = sub_1DACB8A64();

  return v20;
}

void sub_1DAC9CAB0(__int128 *a1, uint64_t a2, void *a3)
{
  v6 = a1[1];
  v7 = *a1;
  v8[0] = v6;
  *(v8 + 10) = *(a1 + 26);
  os_unfair_lock_lock((a2 + 48));
  sub_1DAC9CB34((a2 + 56), &v7, a3);
  os_unfair_lock_unlock((a2 + 48));
  if (v3)
  {
    __break(1u);
  }
}

uint64_t sub_1DAC9CB34(char **a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v6 = *(*a1 + 2);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 40;
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      v10 = &v8[16 * v7];
      v11 = v7;
      while (1)
      {
        if (v11 >= *(v5 + 2))
        {
          __break(1u);
          goto LABEL_47;
        }

        v12 = *(v10 - 1);
        v13 = *v10;
        if (v12 != *(a2 + 24) || v13 != *(a2 + 32))
        {
          v15 = *(v10 - 1);
          v16 = *v10;
          if ((sub_1DACBA174() & 1) == 0)
          {
            break;
          }
        }

        ++v11;
        v10 += 2;
        if (v6 == v11)
        {
          goto LABEL_18;
        }
      }

      sub_1DACB71E4();
      v37 = a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DAA5859C(0, *(v9 + 2) + 1, 1);
      }

      v18 = *(v9 + 2);
      v17 = *(v9 + 3);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        sub_1DAA5859C((v17 > 1), v18 + 1, 1);
        v19 = v18 + 1;
      }

      v7 = v11 + 1;
      *(v9 + 2) = v19;
      v20 = &v9[16 * v18];
      *(v20 + 4) = v12;
      *(v20 + 5) = v13;
      a3 = v37;
      v8 = v5 + 40;
    }

    while (v6 - 1 != v11);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

LABEL_18:
  if (!a3[1] || (v11 = *(v9 + 2)) == 0)
  {
LABEL_27:
    a3 = *(a2 + 24);
    a2 = *(a2 + 32);
    v27 = *(v9 + 2);
    sub_1DACB71E4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v27 >= *(v9 + 3) >> 1)
    {
      v9 = sub_1DAA9A3B0(isUniquelyReferenced_nonNull_native, v27 + 1, 1, v9);
    }

    v29 = 0;
    v30 = 0;
LABEL_31:
    sub_1DACA69B8(v29, v30, 1, a3, a2);

LABEL_32:

    *a1 = v9;
    return result;
  }

  v21 = 0;
  v22 = a3[3];
  v23 = a3[4];
  v24 = v9 + 40;
  while (1)
  {
    result = *(v24 - 1);
    if (result == v22 && *v24 == v23)
    {
      break;
    }

    result = sub_1DACBA174();
    if (result)
    {
      break;
    }

    ++v21;
    v24 += 2;
    if (v11 == v21)
    {
      goto LABEL_27;
    }
  }

  a3 = *(a2 + 24);
  a2 = *(a2 + 32);
  if (v11 - 1 == v21)
  {
    sub_1DACB71E4();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_47:
      v9 = sub_1DAA9A3B0(0, v11 + 1, 1, v9);
    }

    v32 = *(v9 + 2);
    v31 = *(v9 + 3);
    if (v32 >= v31 >> 1)
    {
      v9 = sub_1DAA9A3B0((v31 > 1), v32 + 1, 1, v9);
    }

    *(v9 + 2) = v32 + 1;
    v33 = &v9[16 * v32];
    *(v33 + 4) = a3;
    *(v33 + 5) = a2;
    goto LABEL_32;
  }

  v34 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
    __break(1u);
    goto LABEL_49;
  }

  if (v11 < v34)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if ((v34 & 0x8000000000000000) != 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v35 = *(v9 + 2);
  if (v35 >= v34)
  {
    sub_1DACB71E4();
    v36 = swift_isUniquelyReferenced_nonNull_native();
    if (!v36 || v35 >= *(v9 + 3) >> 1)
    {
      v9 = sub_1DAA9A3B0(v36, v35 + 1, 1, v9);
    }

    v29 = v21 + 1;
    v30 = v21 + 1;
    goto LABEL_31;
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_1DAC9CE74(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = a1[1];
  v21 = *a1;
  v22[0] = v9;
  *(v22 + 10) = *(a1 + 26);
  sub_1DACB8BB4();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = a1[1];
  *(v10 + 32) = *a1;
  *(v10 + 48) = v11;
  *(v10 + 58) = *(a1 + 26);
  sub_1DACB71E4();
  sub_1DAA8DB84(&v21, v20);
  v12 = sub_1DACB89D4();
  sub_1DACB8A74();

  v13 = swift_allocObject();
  v14 = v22[0];
  v13[1] = v21;
  v13[2] = v14;
  *(v13 + 42) = *(v22 + 10);
  sub_1DAA8DB84(&v21, v20);
  v15 = sub_1DACB89D4();
  sub_1DACB8A74();

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  sub_1DACB71E4();
  v17 = sub_1DACB89D4();
  v18 = sub_1DACB8A74();

  return v18;
}

void sub_1DAC9D0B4(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_1DACB7664();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a3;
  v37 = a4;
  sub_1DACB75B4();
  sub_1DAA642D8();
  v14 = sub_1DACB9B34();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    os_unfair_lock_lock(a2 + 12);
    v18 = v38;
    sub_1DAC9D3EC(&a2[14], a5, &v36);
    if (v18)
    {
      os_unfair_lock_unlock(a2 + 12);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(a2 + 12);
      v19 = v36;
      v20 = sub_1DACB93A4();
      v22 = v21;

      v36 = v20;
      v37 = v22;
      MEMORY[0x1EEE9AC00](v23);
      *(&v36 - 2) = &v36;
      v24 = sub_1DAC78448(sub_1DAC49E88, (&v36 - 4), v19);

      if (v24)
      {
        sub_1DAC990D4();
        swift_allocError();
        *v25 = 0;
        sub_1DAA5A8BC(0, &qword_1EE11D3F0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
        v27 = *(v26 + 48);
        v28 = *(v26 + 52);
        swift_allocObject();
        sub_1DACB8AD4();
      }

      else
      {
        v36 = a3;
        v37 = a4;
        sub_1DAA5A8BC(0, &qword_1EE11D3F0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
        v34 = *(v33 + 48);
        v35 = *(v33 + 52);
        swift_allocObject();
        sub_1DACB71E4();
        sub_1DACB8AE4();
      }
    }
  }

  else
  {

    sub_1DAC990D4();
    swift_allocError();
    *v29 = 1;
    sub_1DAA5A8BC(0, &qword_1EE11D3F0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    sub_1DACB8AD4();
  }
}

uint64_t sub_1DAC9D3EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = *(a1 + 8);
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  while (v7)
  {
LABEL_9:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = (*(v4 + 56) + 48 * (v13 | (v11 << 6)));
    if (*v14 != *a2 || v14[1] != a2[1])
    {
      v16 = *v14;
      v17 = v14[1];
      result = sub_1DACBA174();
      if ((result & 1) == 0)
      {
        v18 = sub_1DACB93A4();
        v24 = v19;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1DAA9A3B0(0, *(v26 + 16) + 1, 1, v26);
          v26 = result;
        }

        v21 = *(v26 + 16);
        v20 = *(v26 + 24);
        v22 = v21 + 1;
        if (v21 >= v20 >> 1)
        {
          result = sub_1DAA9A3B0((v20 > 1), v21 + 1, 1, v26);
          v22 = v21 + 1;
          v26 = result;
        }

        *(v26 + 16) = v22;
        v23 = v26 + 16 * v21;
        *(v23 + 32) = v18;
        *(v23 + 40) = v24;
      }
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      *a3 = v26;
      return result;
    }

    v7 = *(v4 + 64 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAC9D5A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a1[1];
  v21 = *a1;
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 40);
  v9 = *(a1 + 41);
  *&v24 = a3;
  *(&v24 + 1) = a4;
  *v25 = v5;
  *&v25[8] = v6;
  *&v25[16] = v7;
  v25[24] = v8;
  v25[25] = v9;
  swift_bridgeObjectRetain_n();
  sub_1DACB71E4();
  sub_1DACB71E4();
  os_unfair_lock_lock((a2 + 48));
  sub_1DAA8DB84(&v24, &v22);
  v10 = *(a2 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v22 = *(a2 + 64);
  *(a2 + 64) = 0x8000000000000000;
  sub_1DACA56F8(&v24, v6, v7, isUniquelyReferenced_nonNull_native);

  *(a2 + 64) = v22;
  os_unfair_lock_unlock((a2 + 48));
  v12 = *(a2 + 16);
  sub_1DACB8F34();
  v14 = *&v23[8];
  v13 = *&v23[16];

  if (v14 == v6 && v13 == v7)
  {

LABEL_5:
    *&v22 = v21;
    *(&v22 + 1) = v20;
    *v23 = v5;
    *&v23[8] = v6;
    *&v23[16] = v7;
    v23[24] = v8;
    v23[25] = v9;
    sub_1DACB8F24();
    goto LABEL_6;
  }

  v15 = sub_1DACBA174();

  if (v15)
  {
    goto LABEL_5;
  }

LABEL_6:
  v22 = v24;
  *v23 = *v25;
  *&v23[10] = *&v25[10];
  sub_1DAA5A8BC(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAC9D774(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 41);
  *&v21 = *a1;
  *(&v21 + 1) = v4;
  *v22 = v5;
  *&v22[8] = v6;
  *&v22[16] = v7;
  v22[24] = a3;
  v22[25] = v8;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  os_unfair_lock_lock((a2 + 48));
  sub_1DACB71E4();
  sub_1DAA8DB84(&v21, &v19);
  v9 = *(a2 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v19 = *(a2 + 64);
  *(a2 + 64) = 0x8000000000000000;
  sub_1DACA56F8(&v21, v6, v7, isUniquelyReferenced_nonNull_native);

  *(a2 + 64) = v19;
  os_unfair_lock_unlock((a2 + 48));
  v11 = *(a2 + 16);
  sub_1DACB8F34();
  v13 = *&v20[8];
  v12 = *&v20[16];

  if (__PAIR128__(v12, v13) == *&v22[8])
  {

LABEL_4:
    v19 = v21;
    *v20 = *v22;
    *&v20[10] = *&v22[10];
    sub_1DACB8F24();
    goto LABEL_5;
  }

  v14 = sub_1DACBA174();

  if (v14)
  {
    goto LABEL_4;
  }

LABEL_5:
  v19 = v21;
  *v20 = *v22;
  *&v20[10] = *&v22[10];
  sub_1DAA5A8BC(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAC9D920(__int128 *a1, char *a2)
{
  v3 = v2;
  v5 = *v3;
  v6 = a1[1];
  v17 = *a1;
  v18[0] = v6;
  *(v18 + 10) = *(a1 + 26);
  v7 = *a2;
  sub_1DACB8BB4();
  v8 = swift_allocObject();
  v9 = a1[1];
  *(v8 + 16) = *a1;
  *(v8 + 32) = v9;
  *(v8 + 42) = *(a1 + 26);
  *(v8 + 58) = v7;
  sub_1DAA8DB84(&v17, v16);
  v10 = sub_1DACB89D4();
  sub_1DACB8A74();

  v11 = swift_allocObject();
  v12 = v18[0];
  v11[1] = v17;
  v11[2] = v12;
  *(v11 + 42) = *(v18 + 10);
  sub_1DAA8DB84(&v17, v16);
  v13 = sub_1DACB89D4();
  v14 = sub_1DACB8A74();

  return v14;
}

uint64_t sub_1DAC9DAD8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  v21 = *a1;
  v22[0] = v5;
  *(v22 + 10) = *(a1 + 26);
  os_unfair_lock_lock((a2 + 48));
  v6 = *(a3 + 24);
  v7 = *(a3 + 32);
  sub_1DACB71E4();
  sub_1DAA8DB84(&v21, &v19);
  v8 = *(a2 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v19 = *(a2 + 64);
  *(a2 + 64) = 0x8000000000000000;
  sub_1DACA56F8(&v21, v6, v7, isUniquelyReferenced_nonNull_native);

  *(a2 + 64) = v19;
  os_unfair_lock_unlock((a2 + 48));
  v10 = *(a2 + 16);
  sub_1DACB8F34();
  v12 = *&v20[8];
  v11 = *&v20[16];

  if (__PAIR128__(v11, v12) == *(v22 + 8))
  {

LABEL_4:
    v19 = v21;
    *v20 = v22[0];
    *&v20[10] = *(v22 + 10);
    sub_1DACB8F24();
    goto LABEL_5;
  }

  v13 = sub_1DACBA174();

  if (v13)
  {
    goto LABEL_4;
  }

LABEL_5:
  v19 = v21;
  *v20 = v22[0];
  *&v20[10] = *(v22 + 10);
  sub_1DAA5A8BC(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_1DAA8DB84(&v21, &v18);
  return sub_1DACB8AE4();
}

void sub_1DAC9DC6C(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 48));
  v2 = sub_1DACB9324();
  v4 = *(a1 + 64);
  if (*(v4 + 16))
  {
    v5 = sub_1DAA4BF3C(v2, v3);
    v7 = v6;

    if (v7)
    {
      v8 = *(v4 + 56) + 48 * v5;
      v10 = *v8;
      v9 = *(v8 + 8);
      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
      v13 = *(v8 + 32);
      v14 = *(v8 + 40);
      v15 = *(v8 + 41);
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      os_unfair_lock_unlock((a1 + 48));
      if (v9)
      {
        v16 = *(a1 + 16);
        sub_1DACB8F24();
        if (qword_1EE121840 != -1)
        {
          swift_once();
        }

        sub_1DAA41D64();
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1DACC1D20;
        sub_1DACB9DD4();
        sub_1DAA75E60(v10, v9);
        *(v17 + 56) = MEMORY[0x1E69E6158];
        *(v17 + 64) = sub_1DAA443C8();
        *(v17 + 32) = 0;
        *(v17 + 40) = 0xE000000000000000;
        sub_1DACB9914();
        sub_1DACB8C64();
      }

      return;
    }
  }

  else
  {
  }

  os_unfair_lock_unlock((a1 + 48));
}

uint64_t sub_1DAC9DEB0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = a1[3];
  v10 = a1[4];
  v11 = *(a1 + 20);
  sub_1DACB8F24();
  sub_1DAA5A8BC(0, &qword_1EE11FDF0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

void sub_1DAC9DF4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v7 = *v2;
  v6 = (v2 + 6);
  v8 = v7;
  os_unfair_lock_lock(v6);
  v9 = v3[7];
  v10 = sub_1DACB71E4();
  v11 = sub_1DAA6BD48(v10, (v3 + 7));

  os_unfair_lock_unlock(v6);
  v12 = *(v11 + 16);
  v54 = a1;
  if (v12)
  {
    v13 = 0;
    v14 = v11 + 73;
    v53 = MEMORY[0x1E69E7CC0];
    v51 = a2;
    v52 = v11;
    v46 = v11 + 73;
    v47 = *(v11 + 16);
    while (1)
    {
      v15 = (v14 + 48 * v13);
      v16 = v12 - v13;
      while (1)
      {
        if (v13 >= *(v11 + 16))
        {
          __break(1u);
          return;
        }

        v17 = v8;
        v50 = *(v15 - 41);
        v18 = *(v15 - 33);
        v19 = *(v15 - 25);
        v20 = *(v15 - 17);
        v21 = *(v15 - 9);
        v48 = *v15;
        v49 = *(v15 - 1);
        if (v20 != sub_1DACB9324() || v21 != v22)
        {
          break;
        }

LABEL_4:

        v15 += 48;
        ++v13;
        --v16;
        v8 = v17;
        a2 = v51;
        v11 = v52;
        if (!v16)
        {
          goto LABEL_19;
        }
      }

      v24 = sub_1DACBA174();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();

      if (v24)
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v53;
      *&v57 = v53;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DAB25C88(0, *(v53 + 16) + 1, 1);
        v26 = v57;
      }

      a1 = v54;
      v28 = *(v26 + 16);
      v27 = *(v26 + 24);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        sub_1DAB25C88((v27 > 1), v28 + 1, 1);
        v29 = v28 + 1;
        v26 = v57;
      }

      ++v13;
      *(v26 + 16) = v29;
      v53 = v26;
      v30 = v26 + 48 * v28;
      *(v30 + 32) = v50;
      *(v30 + 40) = v18;
      *(v30 + 48) = v19;
      *(v30 + 56) = v20;
      *(v30 + 64) = v21;
      *(v30 + 72) = v49;
      *(v30 + 73) = v48;
      v8 = v17;
      a2 = v51;
      v11 = v52;
      v14 = v46;
      v12 = v47;
      if (v16 == 1)
      {
        goto LABEL_19;
      }
    }

    a1 = v54;
    goto LABEL_4;
  }

  v53 = MEMORY[0x1E69E7CC0];
LABEL_19:

  v31 = *(v53 + 16);
  if (v31)
  {
    v56 = MEMORY[0x1E69E7CC0];
    sub_1DACB9D64();
    v32 = 32;
    do
    {
      v33 = *(v53 + v32);
      v34 = *(v53 + v32 + 16);
      *&v58[10] = *(v53 + v32 + 26);
      v57 = v33;
      *v58 = v34;
      sub_1DAA8DB84(&v57, v55);
      sub_1DACB8BB4();
      v35 = swift_allocObject();
      *(v35 + 16) = a1;
      *(v35 + 24) = a2;
      v36 = *v58;
      *(v35 + 32) = v57;
      *(v35 + 48) = v36;
      *(v35 + 58) = *&v58[10];
      sub_1DAA8DB84(&v57, v55);
      sub_1DACB71E4();
      v37 = sub_1DACB89D4();
      sub_1DACB8A74();

      v38 = swift_allocObject();
      v39 = *v58;
      v38[1] = v57;
      v38[2] = v39;
      *(v38 + 42) = *&v58[10];
      sub_1DAA8DB84(&v57, v55);
      v40 = sub_1DACB89D4();
      sub_1DACB8A84();

      v41 = swift_allocObject();
      *(v41 + 16) = v54;
      *(v41 + 24) = a2;
      sub_1DACB71E4();
      v42 = sub_1DACB89D4();
      sub_1DACB8A64();

      sub_1DAA934A8(&v57);
      sub_1DACB9D34();
      v43 = *(v56 + 16);
      sub_1DACB9D74();
      a1 = v54;
      sub_1DACB9D84();
      sub_1DACB9D44();
      v32 += 48;
      --v31;
    }

    while (v31);
  }

  else
  {
  }

  v44 = sub_1DACB89D4();
  sub_1DACB8934();

  v45 = sub_1DACB89D4();
  sub_1DACB8A64();
}

uint64_t sub_1DAC9E4CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_1DACA82B8(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  sub_1DACA82E8(v0 + 160, sub_1DAC9E590);
  sub_1DACA82E8(v0 + 176, sub_1DAC9E5C4);
  v3 = *(v0 + 184);

  return v0;
}

uint64_t sub_1DAC9E55C()
{
  sub_1DAC9E4CC();

  return swift_deallocClassInstance();
}

unint64_t sub_1DAC9E5F8()
{
  result = qword_1ECBE9AA0;
  if (!qword_1ECBE9AA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECBE9AA0);
  }

  return result;
}

void sub_1DAC9E65C(uint64_t a1@<X8>)
{
  v3 = *v1;
  os_unfair_lock_lock(v3 + 12);
  sub_1DAC99304(&v3[14], a1);

  os_unfair_lock_unlock(v3 + 12);
}

uint64_t sub_1DAC9E6E0()
{
  if (*(*v0 + 24))
  {
    sub_1DACB71F4();
    sub_1DACB88F4();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAC9E7C0(__int128 *a1, char *a2)
{
  v4 = *v2;
  v5 = a1[1];
  v14 = *a1;
  v15[0] = v5;
  *(v15 + 10) = *(a1 + 26);
  v6 = *a2;
  sub_1DACB8BB4();
  v7 = swift_allocObject();
  v8 = a1[1];
  *(v7 + 16) = *a1;
  *(v7 + 32) = v8;
  *(v7 + 42) = *(a1 + 26);
  *(v7 + 58) = v6;
  sub_1DAA8DB84(&v14, &v13);
  v9 = sub_1DACB89D4();
  sub_1DACB8A74();

  *(swift_allocObject() + 16) = v6;
  v10 = sub_1DACB89D4();
  v11 = sub_1DACB8A74();

  return v11;
}

uint64_t sub_1DAC9E960(uint64_t a1, uint64_t a2)
{
  v17 = *v2;
  sub_1DAC9ED14();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v11 = v16;
  v5 = (*(a2 + 112))(&v7, a1, a2);

  return v5;
}

uint64_t sub_1DAC9EA14()
{
  v1 = *v0;
  sub_1DACB8BB4();
  v2 = sub_1DACB89D4();
  sub_1DAA5A8BC(0, &qword_1EE11FA98, &type metadata for Watchlist, MEMORY[0x1E69E62F8]);
  sub_1DACB8A74();

  v3 = sub_1DACB89D4();
  v4 = sub_1DACB8A84();

  return v4;
}

uint64_t sub_1DAC9EB30(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1DACB8BB4();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1DACB71E4();
  v7 = sub_1DACB89D4();
  sub_1DAA5A8BC(0, &qword_1EE120130, &type metadata for Watchlist, MEMORY[0x1E69E6720]);
  v8 = sub_1DACB8A74();

  return v8;
}

uint64_t sub_1DAC9ED3C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v118 = *v3;
  v126 = sub_1DACB8FB4();
  v149 = *(v126 - 8);
  v5 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v125 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1DACB9004();
  v7 = *(v124 - 8);
  v8 = *(v7 + 8);
  MEMORY[0x1EEE9AC00](v124);
  v123 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DACB7E44();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v131 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DACB92E4();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v130 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v129 = &v118 - v18;
  v19 = *a2;
  if (qword_1EE121840 != -1)
  {
LABEL_81:
    swift_once();
  }

  sub_1DAA41D64();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1DACC1D20;
  aBlock = v19;
  v21 = sub_1DAC61F20();
  v23 = v22;
  *(v20 + 56) = MEMORY[0x1E69E6158];
  *(v20 + 64) = sub_1DAA443C8();
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  sub_1DACB9914();
  sub_1DACB8C64();

  v24 = v19 + 64;
  v25 = 1 << *(v19 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v19 + 64);
  v142 = @"watchlist";
  v128 = (v14 + 2);
  v127 = (v14 + 1);
  v122 = &v154;
  v28 = (v25 + 63) >> 6;
  v121 = (v149 + 8);
  v120 = (v7 + 8);
  sub_1DACB71E4();
  v29 = 0;
  v149 = v3;
  v141 = v19;
  v140 = v19 + 64;
  v139 = v28;
  while (v27)
  {
    v3 = v13;
LABEL_11:
    v31 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v32 = v31 | (v29 << 6);
    v33 = (*(v19 + 48) + 16 * v32);
    v34 = *v33;
    v7 = v33[1];
    v35 = *(*(v19 + 56) + 8 * v32);
    sub_1DACB71E4();
    v14 = v35;
    v36 = v149;
    os_unfair_lock_lock((v149 + 48));
    v37 = *(v36 + 64);
    if (!*(v37 + 16) || (v38 = sub_1DAA4BF3C(v34, v7), (v39 & 1) == 0))
    {
      os_unfair_lock_unlock((v149 + 48));
      v13 = v3;
      goto LABEL_17;
    }

    v146 = v34;
    v40 = (*(v37 + 56) + 48 * v38);
    v41 = *(v40 + 26);
    v42 = v40[1];
    v158 = *v40;
    *v159 = v42;
    *&v159[10] = v41;
    sub_1DAA8DB84(&v158, &aBlock);
    v43 = [v14 symbolsPostDiff];
    v145 = sub_1DACB9644();

    v44 = *&v159[8];
    v45 = *&v159[16];
    v46 = sub_1DACB9324();
    v148 = v14;
    if (v44 == v46 && v45 == v47)
    {

      v48 = &selRef_initWithWatchlistIdentifier_updatedName_;
      v13 = v3;
LABEL_19:
      v50 = v129;
      sub_1DACB9284();
      (*v128)(v130, v50, v13);
      v3 = v149;
      if (qword_1EE123DD8 != -1)
      {
        swift_once();
      }

      v51 = qword_1EE13E470;
      sub_1DACB7DF4();
      v52 = sub_1DACB9384();
      v147 = v53;
      (*v127)(v50, v13);
      v14 = v148;
      goto LABEL_22;
    }

    v49 = sub_1DACBA174();

    v48 = &selRef_initWithWatchlistIdentifier_updatedName_;
    v13 = v3;
    if (v49)
    {
      goto LABEL_19;
    }

    v101 = [v14 updatedName];
    v3 = v149;
    if (v101)
    {
      v102 = v101;
      v52 = sub_1DACB9324();
      v147 = v103;
    }

    else
    {
      v147 = *(&v158 + 1);
      v52 = v158;
      sub_1DACB71E4();
    }

LABEL_22:
    sub_1DAC9FE7C(v14, &v158, &aBlock);
    if (aBlock <= 0xFDu)
    {
      v54 = aBlock;
    }

    else
    {
      v54 = v159[24];
    }

    v55 = [v14 v48[244]];
    if (!v55 || (v56 = v55, v57 = [v55 integerValue], v56, v57 >= 3))
    {
      v57 = v159[25];
    }

    v133 = v52;
    *&v160 = v52;
    *(&v160 + 1) = v147;
    v58 = v146;
    v161 = v145;
    v162 = v146;
    v163 = v7;
    v132 = v54;
    v164 = v54;
    v135 = v57;
    v165 = v57;
    swift_bridgeObjectRetain_n();
    sub_1DAA8DB84(&v160, &aBlock);
    v59 = *(v3 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = *(v3 + 64);
    *(v3 + 64) = 0x8000000000000000;
    sub_1DACA56F8(&v160, v58, v7, isUniquelyReferenced_nonNull_native);

    *(v3 + 64) = aBlock;
    v61 = [v14 updatedName];
    if (v61)
    {
      v62 = v61;
      v63 = sub_1DACB9324();
      v65 = v64;
    }

    else
    {
      v63 = 0;
      v65 = 0;
    }

    sub_1DAC9FE7C(v14, &v158, &v151);
    sub_1DAA934A8(&v158);
    v66 = [v14 updatedDisplayState];
    if (v66)
    {
      v67 = v66;
      v68 = v13;
      v69 = [v66 integerValue];

      v70 = 3;
      if (v69 < 3)
      {
        v70 = v69;
      }

      v13 = v68;
      v14 = v148;
    }

    else
    {
      v70 = 3;
    }

    v24 = v140;
    v150 = v70;
    sub_1DAC9FFC4(MEMORY[0x1E69E7CC0], v14, v63, v65, &v151, &v150, &aBlock);

    v144 = aBlock;
    v138 = v153;
    v134 = v154;
    v143 = v155;
    v136 = v156;
    v137 = BYTE1(v156);
    os_unfair_lock_unlock((v3 + 48));
    v19 = v141;
    v28 = v139;
    if (v147)
    {
      v119 = v13;
      v71 = *(v3 + 16);
      sub_1DACB8F34();
      v73 = v155;
      v72 = v156;

      v19 = v146;
      if (v146 == v73 && v7 == v72)
      {

        v74 = v133;
        v75 = v132;
LABEL_41:
        aBlock = v74;
        v153 = v147;
        v154 = v145;
        v155 = v19;
        v156 = v7;
        LOBYTE(v157) = v75;
        BYTE1(v157) = v135;
        sub_1DACB8F24();
        goto LABEL_42;
      }

      v76 = sub_1DACBA174();

      v74 = v133;
      v75 = v132;
      if (v76)
      {
        goto LABEL_41;
      }

LABEL_42:
      if (*(v144 + 16) || *(v138 + 16) || v143 || v136 < 0xFE || v137 != 3)
      {
        sub_1DAA420F4(0, &qword_1EE123DE8, 0x1E69E9610);
        v133 = sub_1DACB9954();
        v77 = swift_allocObject();
        v78 = v144;
        *(v77 + 16) = v3;
        *(v77 + 24) = v78;
        v79 = v134;
        *(v77 + 32) = v138;
        *(v77 + 40) = v79;
        *(v77 + 48) = v143;
        *(v77 + 56) = v136;
        *(v77 + 57) = v137;
        v80 = v147;
        *(v77 + 64) = v74;
        *(v77 + 72) = v80;
        *(v77 + 80) = v145;
        *(v77 + 88) = v19;
        *(v77 + 96) = v7;
        *(v77 + 104) = v75;
        *(v77 + 105) = v135;
        v156 = sub_1DACA8120;
        v157 = v77;
        aBlock = MEMORY[0x1E69E9820];
        v153 = 1107296256;
        v154 = sub_1DAA5796C;
        v155 = &block_descriptor_208;
        v81 = _Block_copy(&aBlock);
        sub_1DACB71E4();
        sub_1DACB71F4();
        sub_1DACB71E4();
        sub_1DACB71E4();

        v82 = v123;
        sub_1DACB8FD4();
        aBlock = MEMORY[0x1E69E7CC0];
        sub_1DAA59D78(&qword_1EE124040, MEMORY[0x1E69E7F60]);
        sub_1DAA59DC0(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        sub_1DAA6F790();
        v83 = v125;
        v84 = v126;
        sub_1DACB9BB4();
        v85 = v133;
        MEMORY[0x1E1277440](0, v82, v83, v81);
        v86 = v81;
        v19 = v146;
        _Block_release(v86);

        v87 = v84;
        v14 = v148;
        (*v121)(v83, v87);
        (*v120)(v82, v124);
      }

      else
      {

        v143 = 0;
        v137 = 3;
      }

      if (v19 == sub_1DACB9324() && v7 == v88)
      {
      }

      else
      {
        v89 = sub_1DACBA174();

        if ((v89 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      v90 = [v14 removedSymbols];
      v91 = sub_1DACB9644();

      v92 = *(v91 + 16);
      if (v92)
      {
        v93 = (v91 + 40);
        do
        {
          v94 = *(v93 - 1);
          v95 = *v93;
          sub_1DACB71E4();
          sub_1DAC9DF4C(v94, v95);

          v93 += 2;
          --v92;
        }

        while (v92);
      }

      v14 = v148;
LABEL_52:
      v96 = [v14 symbolsPostDiff];
      v97 = sub_1DACB9644();

      v98 = [v148 symbolsPreDiff];
      v14 = v148;
      v99 = sub_1DACB9644();

      v13 = *(v97 + 16);
      if (v13 == *(v99 + 16))
      {
        if (v13)
        {
          v100 = v97 == v99;
        }

        else
        {
          v100 = 1;
        }

        if (!v100)
        {
          v104 = 0;
          while (v13)
          {
            v105 = *(v97 + v104 + 32) == *(v99 + v104 + 32) && *(v97 + v104 + 40) == *(v99 + v104 + 40);
            if (!v105 && (sub_1DACBA174() & 1) == 0)
            {
              goto LABEL_73;
            }

            v104 += 16;
            if (!--v13)
            {

              goto LABEL_76;
            }
          }

LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

LABEL_76:
      }

      else
      {
LABEL_73:

        v106 = [v14 symbolsPostDiff];
        v107 = sub_1DACB9644();

        v108 = [v14 symbolsPreDiff];
        v109 = sub_1DACB9644();

        aBlock = v107;
        sub_1DAC28658(v109);
        v110 = sub_1DAA5518C(aBlock);

        v111 = *(v3 + 40);
        *(swift_allocObject() + 16) = v110;
        sub_1DAA7F334();
        sub_1DACB8BA4();

        v112 = swift_allocObject();
        v113 = v144;
        *(v112 + 16) = v14;
        *(v112 + 24) = v113;
        v114 = v134;
        *(v112 + 32) = v138;
        *(v112 + 40) = v114;
        *(v112 + 48) = v143;
        *(v112 + 56) = v136;
        *(v112 + 57) = v137;
        *(v112 + 64) = v19;
        *(v112 + 72) = v7;
        *(v112 + 80) = v3;
        v115 = v14;
        sub_1DACB71F4();
        v116 = sub_1DACB89D4();
        v14 = sub_1DACB8A84();

        v7 = sub_1DACB89D4();
        sub_1DACB8AA4();
      }

      v13 = v119;
      v19 = v141;
      v24 = v140;
      v28 = v139;
    }

    else
    {
LABEL_17:
    }
  }

  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_80;
    }

    if (v30 >= v28)
    {
    }

    v27 = *(v24 + 8 * v30);
    ++v29;
    if (v27)
    {
      v3 = v13;
      v29 = v30;
      goto LABEL_11;
    }
  }
}

id sub_1DAC9FE7C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = [a1 updatedSortState];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 integerValue];
    v9 = [a1 updatedSortOrderState];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 integerValue];
    }

    else
    {
      v11 = 0;
    }

    v16 = a3;
    v17 = v8;
    v18 = v11;
    v19 = v10 == 0;
  }

  else
  {
    result = [a1 updatedSortOrderState];
    if (!result)
    {
      *a3 = -2;
      return result;
    }

    v13 = *(&unk_1DACDE7B0 + ((*(a2 + 40) >> 2) & 0x38));
    v14 = result;
    v15 = [result integerValue];

    v16 = a3;
    v17 = v13;
    v18 = v15;
    v19 = 0;
  }

  return sub_1DABF7EBC(v17, v18, v19, v16);
}

uint64_t sub_1DAC9FFC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, unsigned __int8 *a6@<X5>, void *a7@<X8>)
{
  v200 = a4;
  v201 = a2;
  v198 = a3;
  v199 = a7;
  sub_1DAC62ADC();
  v207 = *(v10 - 8);
  v208 = v10;
  v11 = *(v207 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v203 = &v195 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v202 = &v195 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v206 = &v195 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v205 = (&v195 - v18);
  v19 = *a5;
  v20 = *(a1 + 16);
  v196 = *a6;
  v197 = v19;
  if (v20)
  {
    v21 = (a1 + 32);
    v22 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v36 = v21[7];
      v218 = v21[6];
      v219 = v36;
      v220 = *(v21 + 16);
      v37 = v21[3];
      v214 = v21[2];
      v215 = v37;
      v38 = v21[5];
      v216 = v21[4];
      v217 = v38;
      v39 = v21[1];
      v212 = *v21;
      v213 = v39;
      v40 = v39;
      sub_1DAA806E4(&v212, v210);
      sub_1DAA806E4(&v212, v210);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v209 = v22;
      v43 = sub_1DAA4BF3C(v40, *(&v40 + 1));
      v44 = v22[2];
      v45 = (v42 & 1) == 0;
      v46 = v44 + v45;
      if (__OFADD__(v44, v45))
      {
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        result = sub_1DACBA1F4();
        __break(1u);
        return result;
      }

      v47 = v42;
      if (v22[3] >= v46)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v42)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_1DAB656FC();
          if (v47)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_1DAA80804(v46, isUniquelyReferenced_nonNull_native);
        v48 = sub_1DAA4BF3C(v40, *(&v40 + 1));
        if ((v47 & 1) != (v49 & 1))
        {
          goto LABEL_88;
        }

        v43 = v48;
        if (v47)
        {
LABEL_3:
          v22 = v209;
          v23 = v209[7] + 136 * v43;
          v210[0] = *v23;
          v24 = *(v23 + 64);
          v26 = *(v23 + 16);
          v25 = *(v23 + 32);
          v210[3] = *(v23 + 48);
          v210[4] = v24;
          v210[1] = v26;
          v210[2] = v25;
          v28 = *(v23 + 96);
          v27 = *(v23 + 112);
          v29 = *(v23 + 80);
          v211 = *(v23 + 128);
          v210[6] = v28;
          v210[7] = v27;
          v210[5] = v29;
          *v23 = v212;
          v30 = v213;
          v31 = v214;
          v32 = v216;
          *(v23 + 48) = v215;
          *(v23 + 64) = v32;
          *(v23 + 16) = v30;
          *(v23 + 32) = v31;
          v33 = v217;
          v34 = v218;
          v35 = v219;
          *(v23 + 128) = v220;
          *(v23 + 96) = v34;
          *(v23 + 112) = v35;
          *(v23 + 80) = v33;
          sub_1DAA9B1C8(v210);
          sub_1DAA9B1C8(&v212);
          goto LABEL_4;
        }
      }

      v22 = v209;
      v209[(v43 >> 6) + 8] |= 1 << v43;
      *(v22[6] + 16 * v43) = v40;
      v50 = v22[7] + 136 * v43;
      v51 = v220;
      v53 = v218;
      v52 = v219;
      *(v50 + 80) = v217;
      *(v50 + 96) = v53;
      *(v50 + 112) = v52;
      *(v50 + 128) = v51;
      v55 = v215;
      v54 = v216;
      v56 = v214;
      *(v50 + 16) = v213;
      *(v50 + 32) = v56;
      *(v50 + 48) = v55;
      *(v50 + 64) = v54;
      *v50 = v212;
      sub_1DACB71E4();
      sub_1DAA9B1C8(&v212);
      v57 = v22[2];
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        goto LABEL_87;
      }

      v22[2] = v59;
LABEL_4:
      v21 = (v21 + 136);
      if (!--v20)
      {
        goto LABEL_17;
      }
    }
  }

  v22 = MEMORY[0x1E69E7CC8];
LABEL_17:
  v60 = v201;
  v61 = [v201 addedSymbols];
  v62 = sub_1DACB9644();

  v63 = *(v62 + 16);
  if (v63)
  {
    LODWORD(v204) = *MEMORY[0x1E69D6590];
    v64 = (v207 + 104);
    v195 = v62;
    v65 = (v62 + 40);
    v66 = MEMORY[0x1E69E7CC0];
    do
    {
      if (v22[2])
      {
        v67 = *(v65 - 1);
        v68 = *v65;
        sub_1DACB71E4();
        v69 = sub_1DAA4BF3C(v67, v68);
        v71 = v70;

        if (v71)
        {
          v72 = (v22[7] + 136 * v69);
          v212 = *v72;
          v73 = v72[3];
          v74 = v72[4];
          v75 = v72[2];
          v213 = v72[1];
          v214 = v75;
          v215 = v73;
          v216 = v74;
          v76 = v72[5];
          v77 = v72[6];
          v78 = v72[7];
          v220 = *(v72 + 16);
          v218 = v77;
          v219 = v78;
          v217 = v76;
          v79 = v205;
          memmove(v205, v72, 0x88uLL);
          (*v64)(v79, v204, v208);
          sub_1DAA806E4(&v212, v210);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = sub_1DAADBA48(0, v66[2] + 1, 1, v66);
          }

          v81 = v66[2];
          v80 = v66[3];
          if (v81 >= v80 >> 1)
          {
            v66 = sub_1DAADBA48(v80 > 1, v81 + 1, 1, v66);
          }

          v66[2] = v81 + 1;
          (*(v207 + 32))(v66 + ((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v81, v205, v208);
        }
      }

      v65 += 2;
      --v63;
    }

    while (v63);

    v60 = v201;
  }

  else
  {

    v66 = MEMORY[0x1E69E7CC0];
  }

  v82 = [v60 removedSymbols];
  v83 = sub_1DACB9644();

  v84 = *(v83 + 16);
  if (v84)
  {
    LODWORD(v205) = *MEMORY[0x1E69D6598];
    v85 = (v207 + 104);
    v204 = v83;
    v86 = (v83 + 40);
    do
    {
      if (v22[2])
      {
        v87 = *(v86 - 1);
        v88 = *v86;
        sub_1DACB71E4();
        v89 = sub_1DAA4BF3C(v87, v88);
        v91 = v90;

        if (v91)
        {
          v92 = (v22[7] + 136 * v89);
          v212 = *v92;
          v93 = v92[3];
          v94 = v92[4];
          v95 = v92[2];
          v213 = v92[1];
          v214 = v95;
          v215 = v93;
          v216 = v94;
          v96 = v92[5];
          v97 = v92[6];
          v98 = v92[7];
          v220 = *(v92 + 16);
          v218 = v97;
          v219 = v98;
          v217 = v96;
          v99 = v206;
          memmove(v206, v92, 0x88uLL);
          (*v85)(v99, v205, v208);
          sub_1DAA806E4(&v212, v210);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = sub_1DAADBA48(0, v66[2] + 1, 1, v66);
          }

          v101 = v66[2];
          v100 = v66[3];
          if (v101 >= v100 >> 1)
          {
            v66 = sub_1DAADBA48(v100 > 1, v101 + 1, 1, v66);
          }

          v66[2] = v101 + 1;
          (*(v207 + 32))(v66 + ((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v101, v206, v208);
        }
      }

      v86 += 2;
      --v84;
    }

    while (v84);
  }

  v102 = v201;
  v103 = [v201 addedSymbols];
  v104 = sub_1DACB9644();

  v105 = *(v104 + 16);
  v195 = v104;
  if (v105)
  {
    LODWORD(v206) = *MEMORY[0x1E69D6588];
    v204 = v207 + 32;
    v205 = (v207 + 104);
    v106 = (v104 + 40);
    do
    {
      if (v22[2])
      {
        v107 = *(v106 - 1);
        v108 = *v106;
        sub_1DACB71E4();
        v109 = sub_1DAA4BF3C(v107, v108);
        if (v110)
        {
          v111 = v22[7] + 136 * v109;
          v212 = *v111;
          v112 = *(v111 + 48);
          v113 = *(v111 + 64);
          v114 = *(v111 + 32);
          v213 = *(v111 + 16);
          v214 = v114;
          v215 = v112;
          v216 = v113;
          v115 = *(v111 + 80);
          v116 = *(v111 + 96);
          v117 = *(v111 + 112);
          v220 = *(v111 + 128);
          v218 = v116;
          v219 = v117;
          v217 = v115;
          sub_1DAA806E4(&v212, v210);
          v118 = [v102 indexesOfAddedSymbols];
          sub_1DAA420F4(0, qword_1EE123DC0, 0x1E696AD98);
          v119 = sub_1DACB9124();

          if (*(v119 + 16))
          {
            v120 = sub_1DAA4BF3C(v107, v108);
            v122 = v121;

            if (v122)
            {
              v123 = *(*(v119 + 56) + 8 * v120);

              v124 = [v123 integerValue];

              v125 = v219;
              v126 = v202;
              *(v202 + 6) = v218;
              *(v126 + 7) = v125;
              v127 = v220;
              v128 = v215;
              *(v126 + 2) = v214;
              *(v126 + 3) = v128;
              v129 = v217;
              *(v126 + 4) = v216;
              *(v126 + 5) = v129;
              v130 = v213;
              *v126 = v212;
              *(v126 + 1) = v130;
              *(v126 + 16) = v127;
              *(v126 + 17) = v124;
              (*v205)();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v66 = sub_1DAADBA48(0, v66[2] + 1, 1, v66);
              }

              v132 = v66[2];
              v131 = v66[3];
              if (v132 >= v131 >> 1)
              {
                v66 = sub_1DAADBA48(v131 > 1, v132 + 1, 1, v66);
              }

              v66[2] = v132 + 1;
              (*(v207 + 32))(v66 + ((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v132, v202, v208);
              goto LABEL_42;
            }

            sub_1DAA9B1C8(&v212);
          }

          else
          {
            sub_1DAA9B1C8(&v212);
          }
        }
      }

LABEL_42:
      v106 += 2;
      --v105;
    }

    while (v105);
  }

  v133 = [v102 reorderedSymbols];
  v134 = sub_1DACB9644();

  v135 = *(v134 + 16);
  v202 = v134;
  if (v135)
  {
    LODWORD(v206) = *MEMORY[0x1E69D6588];
    v204 = v207 + 32;
    v205 = (v207 + 104);
    v136 = (v134 + 40);
    do
    {
      if (v22[2])
      {
        v137 = *(v136 - 1);
        v138 = *v136;
        sub_1DACB71E4();
        v139 = sub_1DAA4BF3C(v137, v138);
        if (v140)
        {
          v141 = v22[7] + 136 * v139;
          v212 = *v141;
          v142 = *(v141 + 48);
          v143 = *(v141 + 64);
          v144 = *(v141 + 32);
          v213 = *(v141 + 16);
          v214 = v144;
          v215 = v142;
          v216 = v143;
          v145 = *(v141 + 80);
          v146 = *(v141 + 96);
          v147 = *(v141 + 112);
          v220 = *(v141 + 128);
          v218 = v146;
          v219 = v147;
          v217 = v145;
          sub_1DAA806E4(&v212, v210);
          v148 = [v102 indexesOfReorderedSymbols];
          sub_1DAA420F4(0, qword_1EE123DC0, 0x1E696AD98);
          v149 = sub_1DACB9124();

          if (*(v149 + 16))
          {
            v150 = sub_1DAA4BF3C(v137, v138);
            v152 = v151;

            if (v152)
            {
              v153 = *(*(v149 + 56) + 8 * v150);

              v154 = [v153 integerValue];

              v155 = v219;
              v156 = v203;
              *(v203 + 6) = v218;
              *(v156 + 7) = v155;
              v157 = v220;
              v158 = v215;
              *(v156 + 2) = v214;
              *(v156 + 3) = v158;
              v159 = v217;
              *(v156 + 4) = v216;
              *(v156 + 5) = v159;
              v160 = v213;
              *v156 = v212;
              *(v156 + 1) = v160;
              *(v156 + 16) = v157;
              *(v156 + 17) = v154;
              (*v205)();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v66 = sub_1DAADBA48(0, v66[2] + 1, 1, v66);
              }

              v162 = v66[2];
              v161 = v66[3];
              if (v162 >= v161 >> 1)
              {
                v66 = sub_1DAADBA48(v161 > 1, v162 + 1, 1, v66);
              }

              v66[2] = v162 + 1;
              (*(v207 + 32))(v66 + ((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v162, v203, v208);
              goto LABEL_57;
            }

            sub_1DAA9B1C8(&v212);
          }

          else
          {
            sub_1DAA9B1C8(&v212);
          }
        }
      }

LABEL_57:
      v136 += 2;
      --v135;
    }

    while (v135);
  }

  v163 = [v102 symbolsPostDiff];
  v164 = sub_1DACB9644();

  v165 = *(v164 + 16);
  if (v165)
  {
    v166 = 0;
    v167 = v164 + 40;
    v208 = v165 - 1;
    v168 = MEMORY[0x1E69E7CC0];
    v207 = v164 + 40;
LABEL_71:
    v169 = (v167 + 16 * v166);
    v170 = v166;
    while (v170 < *(v164 + 16))
    {
      if (v22[2])
      {
        v171 = *(v169 - 1);
        v172 = *v169;
        sub_1DACB71E4();
        v173 = sub_1DAA4BF3C(v171, v172);
        if (v174)
        {
          v175 = v22[7] + 136 * v173;
          v212 = *v175;
          v176 = *(v175 + 48);
          v177 = *(v175 + 64);
          v178 = *(v175 + 32);
          v213 = *(v175 + 16);
          v214 = v178;
          v215 = v176;
          v216 = v177;
          v179 = *(v175 + 80);
          v180 = *(v175 + 96);
          v181 = *(v175 + 112);
          v220 = *(v175 + 128);
          v218 = v180;
          v219 = v181;
          v217 = v179;
          sub_1DAA806E4(&v212, v210);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v168 = sub_1DAA5A0A8(0, *(v168 + 2) + 1, 1, v168);
          }

          v167 = v207;
          v183 = *(v168 + 2);
          v182 = *(v168 + 3);
          if (v183 >= v182 >> 1)
          {
            v168 = sub_1DAA5A0A8((v182 > 1), v183 + 1, 1, v168);
          }

          v166 = v170 + 1;
          *(v168 + 2) = v183 + 1;
          v184 = &v168[136 * v183];
          *(v184 + 2) = v212;
          v185 = v213;
          v186 = v214;
          v187 = v216;
          *(v184 + 5) = v215;
          *(v184 + 6) = v187;
          *(v184 + 3) = v185;
          *(v184 + 4) = v186;
          v188 = v217;
          v189 = v218;
          v190 = v219;
          *(v184 + 20) = v220;
          *(v184 + 8) = v189;
          *(v184 + 9) = v190;
          *(v184 + 7) = v188;
          if (v208 != v170)
          {
            goto LABEL_71;
          }

          goto LABEL_84;
        }
      }

      ++v170;
      v169 += 2;
      if (v165 == v170)
      {
        goto LABEL_84;
      }
    }

    goto LABEL_86;
  }

  v168 = MEMORY[0x1E69E7CC0];
LABEL_84:

  v192 = v198;
  v191 = v199;
  *v199 = v66;
  v191[1] = v168;
  v193 = v200;
  v191[2] = v192;
  v191[3] = v193;
  LOBYTE(v192) = v196;
  *(v191 + 32) = v197;
  *(v191 + 33) = v192;
  return sub_1DACB71E4();
}

void sub_1DACA0E28(uint64_t a1, uint64_t a2, __int128 *a3)
{
  os_unfair_lock_lock((a1 + 152));
  v4 = *(a1 + 160);
  sub_1DACB71E4();
  os_unfair_lock_unlock((a1 + 152));
  if (v4 >> 62)
  {
    v5 = sub_1DACB9E14();
    if (v5)
    {
LABEL_3:
      if (v5 < 1)
      {
        __break(1u);
      }

      else
      {
        v6 = 0;
        v16 = v4 & 0xC000000000000001;
        do
        {
          if (v16)
          {
            v13 = MEMORY[0x1E12777A0](v6, v4);
          }

          else
          {
            v13 = *(v4 + 8 * v6 + 32);
            sub_1DACB71F4();
          }

          v21[3] = type metadata accessor for WatchlistManager();
          v21[4] = &off_1F5692AD8;
          v21[0] = a1;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v7 = *(v13 + 24);
            ObjectType = swift_getObjectType();
            v9 = *(a2 + 16);
            v19[0] = *a2;
            v19[1] = v9;
            v20 = *(a2 + 32);
            v10 = a3[1];
            v17 = *a3;
            v18[0] = v10;
            *(v18 + 10) = *(a3 + 26);
            v11 = v4;
            v12 = *(v7 + 8);
            sub_1DACB71F4();
            v12(v21, v19, &v17, ObjectType, v7);
            v4 = v11;
            swift_unknownObjectRelease();
          }

          else
          {
            sub_1DACB71F4();
          }

          ++v6;
          __swift_destroy_boxed_opaque_existential_1(v21);
        }

        while (v5 != v6);
      }

      return;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_1DACA1000(void *a1, uint64_t a2)
{
  v4 = sub_1DACB8204();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1DACB7CC4();
  v46 = *(v48 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v44 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1DACB8344();
  v43 = *(v45 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v42 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1DACB81B4();
  v41 = *(v52 - 8);
  v11 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v40 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE121840 != -1)
  {
    swift_once();
  }

  sub_1DAA41D64();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DACC1D40;
  v14 = *(a2 + 16);
  v15 = MEMORY[0x1E69E65A8];
  *(v13 + 56) = MEMORY[0x1E69E6530];
  *(v13 + 64) = v15;
  *(v13 + 32) = v14;
  v16 = MEMORY[0x1E69E6158];
  v17 = sub_1DACB9814();
  v19 = v18;
  *(v13 + 96) = v16;
  *(v13 + 104) = sub_1DAA443C8();
  *(v13 + 72) = v17;
  *(v13 + 80) = v19;
  sub_1DACB9914();
  sub_1DACB8C64();

  v20 = a1[17];
  v21 = a1[18];
  v22 = __swift_project_boxed_opaque_existential_1(a1 + 14, v20);
  v23 = *(a2 + 16);
  v38 = v22;
  v39 = v20;
  if (!v23)
  {
    v26 = v21;
    v27 = MEMORY[0x1E69E7CC0];
    goto LABEL_7;
  }

  v37 = sub_1DAA7D2EC(v23, 0);
  v24 = sub_1DAB05C50(&v51, v37 + 4, v23, a2);
  sub_1DACB71E4();
  result = sub_1DAA54B38();
  if (v24 == v23)
  {
    v26 = v21;
    v27 = v37;
LABEL_7:
    v28 = v40;
    v29 = v41;
    (*(v41 + 104))(v40, *MEMORY[0x1E69D63C8], v52);
    v30 = v42;
    sub_1DACB8334();
    v31 = v44;
    sub_1DACB7CB4();
    v33 = v49;
    v32 = v50;
    v34 = v47;
    (*(v49 + 104))(v47, *MEMORY[0x1E69D6490], v50);
    v35 = (*(v26 + 8))(v27, v28, v30, v31, v34, v39, v26);

    (*(v33 + 8))(v34, v32);
    (*(v46 + 8))(v31, v48);
    (*(v43 + 8))(v30, v45);
    (*(v29 + 8))(v28, v52);
    return v35;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DACA14D4(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v58 = a6;
  v50 = a7;
  v57 = a5;
  v11 = sub_1DACB8FB4();
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1DACB9004();
  v52 = *(v54 - 8);
  v14 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  if (qword_1EE121840 != -1)
  {
    swift_once();
  }

  sub_1DAA41D64();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DACC1D40;
  v18 = *(v16 + 16);
  v19 = MEMORY[0x1E69E65A8];
  *(v17 + 56) = MEMORY[0x1E69E6530];
  *(v17 + 64) = v19;
  *(v17 + 32) = v18;
  v20 = MEMORY[0x1E69E6158];
  v21 = sub_1DACB9184();
  v23 = v22;
  *(v17 + 96) = v20;
  *(v17 + 104) = sub_1DAA443C8();
  *(v17 + 72) = v21;
  *(v17 + 80) = v23;
  sub_1DACB9914();
  sub_1DACB8C64();

  v24 = v59;
  v25 = sub_1DAC95A64(v16);
  v59 = v24;
  v26 = [a3 updatedName];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1DACB9324();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  LOBYTE(aBlock[0]) = *(a4 + 32);
  v63 = *(a4 + 33);
  sub_1DAC9FFC4(v25, a3, v28, v30, aBlock, &v63, v61);

  os_unfair_lock_lock((a2 + 48));
  v31 = *(a2 + 64);
  if (*(v31 + 16) && (v32 = sub_1DAA4BF3C(v57, v58), (v33 & 1) != 0))
  {
    v34 = *(v31 + 56) + 48 * v32;
    v36 = *v34;
    v35 = *(v34 + 8);
    v38 = *(v34 + 16);
    v37 = *(v34 + 24);
    v39 = *(v34 + 32);
    v40 = *(v34 + 40);
    v41 = *(v34 + 41);
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    os_unfair_lock_unlock((a2 + 48));
    if (v35)
    {
      sub_1DAA420F4(0, &qword_1EE123DE8, 0x1E69E9610);
      v58 = sub_1DACB9954();
      v42 = swift_allocObject();
      *(v42 + 16) = v50;
      *(v42 + 24) = a2;
      v43 = v61[1];
      *(v42 + 32) = v61[0];
      *(v42 + 48) = v43;
      *(v42 + 64) = v62;
      *(v42 + 72) = v36;
      *(v42 + 80) = v35;
      *(v42 + 88) = v38;
      *(v42 + 96) = v37;
      *(v42 + 104) = v39;
      *(v42 + 112) = v40;
      *(v42 + 113) = v41;
      aBlock[4] = sub_1DACA82A8;
      aBlock[5] = v42;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DAA5796C;
      aBlock[3] = &block_descriptor_233;
      v44 = _Block_copy(aBlock);
      sub_1DACB71F4();
      sub_1DACB71F4();

      v45 = v51;
      sub_1DACB8FD4();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1DAA59D78(&qword_1EE124040, MEMORY[0x1E69E7F60]);
      sub_1DAA59DC0(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1DAA6F790();
      v46 = v53;
      v47 = v56;
      sub_1DACB9BB4();
      v48 = v58;
      MEMORY[0x1E1277440](0, v45, v46, v44);
      _Block_release(v44);

      (*(v55 + 8))(v46, v47);
      return (*(v52 + 8))(v45, v54);
    }
  }

  else
  {
    os_unfair_lock_unlock((a2 + 48));
  }

  return sub_1DACA8254(v61);
}

void sub_1DACA1A1C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  os_unfair_lock_lock((a1 + 152));
  v6 = *(a1 + 160);
  sub_1DACB71E4();
  os_unfair_lock_unlock((a1 + 152));
  if (v6 >> 62)
  {
    v7 = sub_1DACB9E14();
    if (v7)
    {
LABEL_3:
      if (v7 < 1)
      {
        __break(1u);
      }

      else
      {
        v8 = 0;
        v18 = v6 & 0xC000000000000001;
        do
        {
          if (v18)
          {
            v15 = MEMORY[0x1E12777A0](v8, v6);
          }

          else
          {
            v15 = *(v6 + 8 * v8 + 32);
            sub_1DACB71F4();
          }

          v23[3] = type metadata accessor for WatchlistManager();
          v23[4] = &off_1F5692AD8;
          v23[0] = a2;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v9 = *(v15 + 24);
            ObjectType = swift_getObjectType();
            v11 = *(a3 + 16);
            v21[0] = *a3;
            v21[1] = v11;
            v22 = *(a3 + 32);
            v12 = a4[1];
            v19 = *a4;
            v20[0] = v12;
            *(v20 + 10) = *(a4 + 26);
            v13 = v6;
            v14 = *(v9 + 8);
            sub_1DACB71F4();
            v14(v23, v21, &v19, ObjectType, v9);
            v6 = v13;
            swift_unknownObjectRelease();
          }

          else
          {
            sub_1DACB71F4();
          }

          ++v8;
          __swift_destroy_boxed_opaque_existential_1(v23);
        }

        while (v7 != v8);
      }

      return;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_1DACA1C08()
{
  if (qword_1EE121840 != -1)
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

void sub_1DACA1D40(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  sub_1DAB1BC70();
  v6 = v5;
  v113 = *(v5 - 8);
  v7 = *(v113 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v92 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v91 - v10);
  sub_1DACA7CB0();
  v112 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v109 = (&v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DAA59DC0(0, &qword_1EE11F980, sub_1DACA7CB0, MEMORY[0x1E69E6720]);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v111 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v91 - v20);
  v22 = *a2;
  sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
  sub_1DACB71E4();
  v23 = sub_1DACB9AD4();
  v24 = sub_1DACB9914();

  v25 = os_log_type_enabled(v23, v24);
  v114 = v3;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v121 = v13;
    v122 = v27;
    v28 = v27;
    *v26 = 136315138;
    v129 = v22;
    sub_1DACB71E4();
    v29 = sub_1DAC62418();
    v31 = v30;

    v32 = sub_1DAA7ABE4(v29, v31, &v122);
    v3 = v114;

    *(v26 + 4) = v32;
    _os_log_impl(&dword_1DAA3F000, v23, v24, "WatchlistManager received watchlist order changes with %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v33 = v28;
    v13 = v121;
    MEMORY[0x1E1278C00](v33, -1, -1);
    MEMORY[0x1E1278C00](v26, -1, -1);
  }

  v129 = v22;
  v34 = *(v22 + 16);
  v108 = v113 + 16;
  v120 = (v13 + 56);
  v121 = v34;
  v118 = (v113 + 32);
  v119 = (v13 + 48);
  v117 = (v113 + 88);
  v116 = *MEMORY[0x1E69D6590];
  v115 = *MEMORY[0x1E69D6598];
  v106 = (v113 + 8);
  v107 = (v113 + 96);
  v105 = @"watchlist";
  v110 = v22;
  sub_1DACB71E4();
  v93 = 0;
  v35 = 0;
  v94 = 0;
  v37 = v111;
  v36 = v112;
  v102 = v11;
  v104 = v21;
  v103 = v6;
  while (1)
  {
    if (v35 == v121)
    {
      v38 = 1;
      v35 = v121;
    }

    else
    {
      if ((v35 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_39:
        __break(1u);
        return;
      }

      if (v35 >= *(v110 + 16))
      {
        goto LABEL_39;
      }

      v39 = v113;
      v40 = v110 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v35;
      v41 = *(v36 + 48);
      v42 = v109;
      *v109 = v35;
      (*(v39 + 16))(v42 + v41, v40, v6);
      sub_1DAA7C62C(v42, v37, sub_1DACA7CB0);
      v38 = 0;
      ++v35;
    }

    (*v120)(v37, v38, 1, v36);
    sub_1DACA7D1C(v37, v21);
    if ((*v119)(v21, 1, v36) == 1)
    {
      break;
    }

    v43 = *v21;
    (*v118)(v11, v21 + *(v36 + 48), v6);
    v44 = (*v117)(v11, v6);
    if (v44 == v116)
    {
      (*v107)(v11, v6);
      v82 = *v11;
      v81 = v11[1];
      os_unfair_lock_lock(v3 + 12);
      v83 = *&v3[14]._os_unfair_lock_opaque;
      v122 = v82;
      v123 = v81;
      MEMORY[0x1EEE9AC00](v84);
      *(&v91 - 2) = &v122;
      v85 = v94;
      LOBYTE(v82) = sub_1DAC78448(sub_1DAC49E88, (&v91 - 4), v86);
      v94 = v85;

      if (v82)
      {
        v87 = v92;
        sub_1DAC961CC(v43, v92);
        (*v106)(v87, v6);
      }

      os_unfair_lock_unlock(v3 + 12);
      v93 = 1;
      v37 = v111;
      v36 = v112;
    }

    else if (v44 == v115)
    {
      (*v107)(v11, v6);
      v45 = *v11;
      v46 = v11[1];
      os_unfair_lock_lock(v3 + 12);
      v47 = *&v3[16]._os_unfair_lock_opaque;
      v48 = sub_1DAA4BF3C(v45, v46);
      if (v49)
      {
        v50 = v48;
        v51 = *&v3[16]._os_unfair_lock_opaque;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = *&v3[16]._os_unfair_lock_opaque;
        v122 = v53;
        *&v3[16]._os_unfair_lock_opaque = 0x8000000000000000;
        v54 = v3;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1DAB658E0();
          v53 = v122;
        }

        v55 = *(*(v53 + 48) + 16 * v50 + 8);

        v56 = (*(v53 + 56) + 48 * v50);
        v57 = v56[1];
        v58 = v56[2];
        v59 = v56[4];

        sub_1DAB6493C(v50, v53);
        v60 = *&v54[16]._os_unfair_lock_opaque;
        *&v54[16]._os_unfair_lock_opaque = v53;

        v3 = v54;
        v11 = v102;
      }

      v61 = sub_1DACB9324();
      v63 = *&v3[16]._os_unfair_lock_opaque;
      if (!*(v63 + 16))
      {

LABEL_24:
        v3 = v114;
        os_unfair_lock_unlock(v114 + 12);
LABEL_25:

        v37 = v111;
        v36 = v112;
        v6 = v103;
        goto LABEL_26;
      }

      v64 = sub_1DAA4BF3C(v61, v62);
      v66 = v65;

      if ((v66 & 1) == 0)
      {
        goto LABEL_24;
      }

      v67 = *(v63 + 56) + 48 * v64;
      v68 = *(v67 + 8);
      v98 = *v67;
      v69 = *(v67 + 16);
      v101 = *(v67 + 24);
      v70 = *(v67 + 32);
      v71 = *(v67 + 40);
      v72 = *(v67 + 41);
      sub_1DACB71E4();
      v100 = v69;
      sub_1DACB71E4();
      sub_1DACB71E4();
      v3 = v114;
      os_unfair_lock_unlock(v114 + 12);
      v99 = v68;
      if (!v68)
      {
        goto LABEL_25;
      }

      v97 = v70;
      v96 = v71;
      v95 = v72;
      v73 = *&v3[4]._os_unfair_lock_opaque;
      sub_1DACB8F34();
      v74 = v125;
      v75 = v126;

      if (v74 == v45 && v75 == v46)
      {

        v6 = v103;
      }

      else
      {
        v76 = sub_1DACBA174();

        v6 = v103;
        if ((v76 & 1) == 0)
        {
          v79 = v98;
          v80 = v99;
          goto LABEL_33;
        }
      }

      v77 = v98;
      v78 = v99;
      v122 = v98;
      v123 = v99;
      v124 = v100;
      v125 = v101;
      v126 = v97;
      v127 = v96;
      v128 = v95;
      sub_1DACB8F24();
      v79 = v77;
      v80 = v78;
LABEL_33:
      sub_1DAA75E60(v79, v80);
      v3 = v114;
      v37 = v111;
      v36 = v112;
LABEL_26:
      v21 = v104;
    }

    else
    {
      (*v106)(v11, v6);
    }
  }

  os_unfair_lock_lock(v3 + 12);
  sub_1DACA2740(&v3[14], &v129);
  os_unfair_lock_unlock(v3 + 12);
  if (v93)
  {
    v88 = *&v3[24]._os_unfair_lock_opaque;
    v89 = *&v3[26]._os_unfair_lock_opaque;
    __swift_project_boxed_opaque_existential_1(&v3[18]._os_unfair_lock_opaque, v88);
    (*(v89 + 120))(v88, v89);
    sub_1DACB71F4();
    v90 = sub_1DACB89D4();
    sub_1DACB8A64();
  }

  else
  {
    sub_1DAA75EB0();
  }

  sub_1DACA3274();
}

void sub_1DACA2740(uint64_t *a1, uint64_t *a2)
{
  v36 = *a1;
  sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
  sub_1DACB71E4();
  v4 = sub_1DACB9AD4();
  v5 = sub_1DACB9914();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v35[0] = v7;
    *v6 = 136315138;
    v8 = sub_1DACB71E4();
    v9 = MEMORY[0x1E1277130](v8, MEMORY[0x1E69E6158]);
    v11 = v10;

    v12 = sub_1DAA7ABE4(v9, v11, v35);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_1DAA3F000, v4, v5, "WatchlistManager watchlist order before applying changes: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E1278C00](v7, -1, -1);
    MEMORY[0x1E1278C00](v6, -1, -1);
  }

  v35[3] = *a2;
  swift_beginAccess();
  sub_1DAA5A8BC(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DAA59DC0(0, &qword_1EE11FA78, sub_1DAB1BC70, MEMORY[0x1E69E62F8]);
  sub_1DACA801C();
  sub_1DACA8098();
  sub_1DACB71E4();
  sub_1DACB98C4();
  swift_endAccess();

  v13 = v36;
  v14 = sub_1DACB9324();
  v16 = v15;
  v17 = *(v13 + 16);
  if (!v17)
  {
    goto LABEL_14;
  }

  v18 = v14;
  v19 = 0;
  v20 = (v13 + 40);
  while (1)
  {
    v21 = *(v20 - 1) == v18 && *v20 == v16;
    if (v21 || (sub_1DACBA174() & 1) != 0)
    {
      break;
    }

    ++v19;
    v20 += 2;
    if (v17 == v19)
    {
      goto LABEL_14;
    }
  }

  if (v19)
  {
    swift_beginAccess();
    sub_1DAC962D4(v19);
    swift_endAccess();

    v22 = sub_1DACB9324();
    v24 = v23;
    swift_beginAccess();
    sub_1DACA6A9C(0, 0, v22, v24);
    swift_endAccess();
LABEL_14:
  }

  v25 = v36;
  sub_1DACB71E4();

  *a1 = v25;
  v26 = sub_1DACB9AD4();
  v27 = sub_1DACB9914();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35[0] = v29;
    *v28 = 136315138;
    v30 = sub_1DACB71E4();
    v31 = MEMORY[0x1E1277130](v30, MEMORY[0x1E69E6158]);
    v33 = v32;

    v34 = sub_1DAA7ABE4(v31, v33, v35);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_1DAA3F000, v26, v27, "WatchlistManager watchlist order after applying changes: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1E1278C00](v29, -1, -1);
    MEMORY[0x1E1278C00](v28, -1, -1);
  }
}

void sub_1DACA2B98(uint64_t *a1, os_unfair_lock_s *a2)
{
  v4 = *a1;
  os_unfair_lock_lock(a2 + 12);
  sub_1DACA2C04(&a2[14], v4);
  os_unfair_lock_unlock(a2 + 12);
  if (v2)
  {
    __break(1u);
  }

  else
  {
    sub_1DAA75EB0();
  }
}

uint64_t sub_1DACA2C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB7E44();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v91 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB92E4();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v87 - v12;
  v15 = *(a2 + 16);
  if (!v15)
  {
    return result;
  }

  v88 = (v11 + 8);
  v89 = (v11 + 16);
  v16 = (a2 + 73);
  v93 = a1;
  v94 = @"watchlist";
  v92 = &v87 - v12;
  v90 = v13;
  while (1)
  {
    v22 = v7;
    v95 = *(v16 - 41);
    v96 = v15;
    v23 = *(v16 - 33);
    v24 = *(v16 - 25);
    v25 = *(v16 - 17);
    v26 = *(v16 - 9);
    v27 = *v16;
    v97 = *(v16 - 1);
    v98 = v27;
    v29 = v25 == sub_1DACB9324() && v26 == v28;
    v99 = v23;
    v100 = v24;
    v101 = v25;
    if (v29)
    {
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
    }

    else
    {
      v30 = sub_1DACBA174();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();

      if ((v30 & 1) == 0)
      {
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        v31 = *(a1 + 8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v102 = *(a1 + 8);
        v33 = v102;
        v34 = v101;
        v35 = sub_1DAA4BF3C(v101, v26);
        v37 = v33[2];
        v38 = (v36 & 1) == 0;
        v39 = __OFADD__(v37, v38);
        v40 = v37 + v38;
        if (v39)
        {
          goto LABEL_39;
        }

        v41 = v36;
        v7 = v22;
        if (v33[3] >= v40)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v78 = v35;
            sub_1DAB658E0();
            v35 = v78;
            v69 = v102;
            if (v41)
            {
              goto LABEL_29;
            }

            goto LABEL_33;
          }
        }

        else
        {
          sub_1DAA74978(v40, isUniquelyReferenced_nonNull_native);
          v35 = sub_1DAA4BF3C(v34, v26);
          if ((v41 & 1) != (v42 & 1))
          {
            goto LABEL_41;
          }
        }

        v69 = v102;
        if (v41)
        {
LABEL_29:
          v70 = v69[7] + 48 * v35;
          v72 = *(v70 + 8);
          v71 = *(v70 + 16);
          v73 = *(v70 + 32);
          v74 = v34;
          v76 = v99;
          v75 = v100;
          *v70 = v95;
          *(v70 + 8) = v76;
          *(v70 + 16) = v75;
          *(v70 + 24) = v74;
          *(v70 + 32) = v26;
          LOBYTE(v74) = v98;
          *(v70 + 40) = v97;
          *(v70 + 41) = v74;

LABEL_35:
          v86 = v93;
          *(v93 + 8) = v69;
          a1 = v86;
          goto LABEL_5;
        }

LABEL_33:
        v69[(v35 >> 6) + 8] |= 1 << v35;
        v79 = (v69[6] + 16 * v35);
        *v79 = v34;
        v79[1] = v26;
        v80 = v69[7] + 48 * v35;
        v82 = v99;
        v81 = v100;
        *v80 = v95;
        *(v80 + 8) = v82;
        *(v80 + 16) = v81;
        *(v80 + 24) = v34;
        *(v80 + 32) = v26;
        v83 = v98;
        *(v80 + 40) = v97;
        *(v80 + 41) = v83;

        v84 = v69[2];
        v39 = __OFADD__(v84, 1);
        v85 = v84 + 1;
        if (v39)
        {
          goto LABEL_40;
        }

        v69[2] = v85;
        goto LABEL_35;
      }
    }

    sub_1DACB9284();
    v43 = v22;
    (*v89)(v90, v14, v22);
    if (qword_1EE123DD8 != -1)
    {
      swift_once();
    }

    v44 = qword_1EE13E470;
    sub_1DACB7DF4();
    v45 = sub_1DACB9384();
    v47 = v46;
    v48 = v14;
    v49 = v43;
    (*v88)(v48, v43);
    sub_1DACB71E4();
    sub_1DACB71E4();
    v50 = *(a1 + 8);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v102 = *(a1 + 8);
    v52 = v102;
    v54 = sub_1DAA4BF3C(v101, v26);
    v55 = v52[2];
    v56 = (v53 & 1) == 0;
    v57 = v55 + v56;
    if (__OFADD__(v55, v56))
    {
      break;
    }

    v58 = v53;
    if (v52[3] >= v57)
    {
      v61 = v100;
      if (v51)
      {
        v62 = v102;
        if ((v53 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v77 = v100;
        sub_1DAB658E0();
        v61 = v77;
        v62 = v102;
        if ((v58 & 1) == 0)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      sub_1DAA74978(v57, v51);
      v59 = sub_1DAA4BF3C(v101, v26);
      if ((v58 & 1) != (v60 & 1))
      {
        goto LABEL_41;
      }

      v54 = v59;
      v61 = v100;
      v62 = v102;
      if ((v58 & 1) == 0)
      {
LABEL_25:
        v62[(v54 >> 6) + 8] |= 1 << v54;
        v63 = (v62[6] + 16 * v54);
        v64 = v101;
        *v63 = v101;
        v63[1] = v26;
        v65 = v62[7] + 48 * v54;
        *v65 = v45;
        *(v65 + 8) = v47;
        *(v65 + 16) = v61;
        *(v65 + 24) = v64;
        *(v65 + 32) = v26;
        v66 = v98;
        *(v65 + 40) = v97;
        *(v65 + 41) = v66;

        v67 = v62[2];
        v39 = __OFADD__(v67, 1);
        v68 = v67 + 1;
        if (v39)
        {
          goto LABEL_38;
        }

        v62[2] = v68;
        goto LABEL_4;
      }
    }

    v17 = v62[7] + 48 * v54;
    v18 = *(v17 + 8);
    v19 = *(v17 + 16);
    v20 = *(v17 + 32);
    *v17 = v45;
    *(v17 + 8) = v47;
    v21 = v101;
    *(v17 + 16) = v61;
    *(v17 + 24) = v21;
    *(v17 + 32) = v26;
    LOBYTE(v21) = v98;
    *(v17 + 40) = v97;
    *(v17 + 41) = v21;

LABEL_4:
    a1 = v93;
    *(v93 + 8) = v62;
    v7 = v49;
LABEL_5:
    v14 = v92;
    v16 += 48;
    v15 = v96 - 1;
    if (v96 == 1)
    {
      return result;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

uint64_t sub_1DACA3274()
{
  v1 = v0;
  v2 = sub_1DACB8FB4();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v43 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB9004();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB8FA4();
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1DACB9024();
  v36 = *(v12 - 8);
  v37 = v12;
  v13 = *(v36 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  v19 = sub_1DACB9994();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock((v0 + 168));
  v24 = *(v0 + 176);
  *(v1 + 176) = 0;
  os_unfair_lock_unlock((v1 + 168));
  if (v24)
  {
    swift_getObjectType();
    sub_1DACB99F4();
    swift_unknownObjectRelease();
  }

  sub_1DAA420F4(0, &qword_1EE11F8A0, 0x1E69E9630);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA59D78(&qword_1EE11F8A8, MEMORY[0x1E69E80B0]);
  sub_1DAA59DC0(0, &qword_1EE11F9D0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E62F8]);
  sub_1DACA7DCC();
  sub_1DACB9BB4();
  v25 = sub_1DACB99A4();
  (*(v20 + 8))(v23, v19);
  ObjectType = swift_getObjectType();
  sub_1DACB9014();
  sub_1DACB9034();
  v27 = v37;
  v28 = *(v36 + 8);
  v28(v16, v37);
  *v11 = 0;
  v30 = v38;
  v29 = v39;
  (*(v38 + 104))(v11, *MEMORY[0x1E69E7F28], v39);
  MEMORY[0x1E1277530](v18, v11, ObjectType, INFINITY);
  (*(v30 + 8))(v11, v29);
  v28(v18, v27);
  aBlock[4] = sub_1DACA7E54;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_181;
  v31 = _Block_copy(aBlock);
  sub_1DACB71F4();
  v32 = v40;
  sub_1DAC4A7BC();
  v33 = v43;
  sub_1DAA67C60();
  sub_1DACB99E4();
  _Block_release(v31);
  (*(v44 + 8))(v33, v45);
  (*(v41 + 8))(v32, v42);

  os_unfair_lock_lock((v1 + 168));
  v34 = *(v1 + 176);
  swift_unknownObjectRelease();
  *(v1 + 176) = v25;
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 168));
  sub_1DACB9A04();
  return swift_unknownObjectRelease();
}

void sub_1DACA3810(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 168));
  v2 = *(a1 + 176);
  *(a1 + 176) = 0;
  os_unfair_lock_unlock((a1 + 168));
  if (v2)
  {
    swift_getObjectType();
    sub_1DACB99F4();
    swift_unknownObjectRelease();
  }

  sub_1DACA3868();
}

void sub_1DACA3868()
{
  if (qword_1EE121840 != -1)
  {
    swift_once();
  }

  sub_1DACB9914();
  sub_1DACB8C64();
  sub_1DAA5A8BC(0, &qword_1EE11FA98, &type metadata for Watchlist, MEMORY[0x1E69E62F8]);
  sub_1DACB8BB4();
  sub_1DACB71F4();
  v0 = sub_1DACB89D4();
  sub_1DACB8A54();

  sub_1DACB71F4();
  v1 = sub_1DACB89D4();
  sub_1DACB8A64();
}

uint64_t sub_1DACA3A00(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (qword_1EE121840 != -1)
  {
LABEL_23:
    swift_once();
  }

  sub_1DAA41D64();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DACC1D20;
  v4 = MEMORY[0x1E1277130](v2, &type metadata for Watchlist);
  v6 = v5;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1DAA443C8();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  sub_1DACB9914();
  sub_1DACB8C64();

  v38 = *(v2 + 16);
  if (v38)
  {
    v7 = 0;
    v8 = (v2 + 73);
    v9 = MEMORY[0x1E69E7CC8];
    v37 = v2;
    while (1)
    {
      if (v7 >= *(v2 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v39 = v7;
      v40 = *(v8 - 41);
      v2 = *(v8 - 25);
      v14 = *(v8 - 17);
      v15 = *(v8 - 9);
      v41 = *(v8 - 1);
      v42 = *v8;
      v43 = *(v8 - 33);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = sub_1DAA4BF3C(v14, v15);
      v19 = v9[2];
      v20 = (v17 & 1) == 0;
      v21 = v19 + v20;
      if (__OFADD__(v19, v20))
      {
        goto LABEL_21;
      }

      v22 = v17;
      if (v9[3] >= v21)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v17)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_1DAB658E0();
          if (v22)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_1DAA74978(v21, isUniquelyReferenced_nonNull_native);
        v23 = sub_1DAA4BF3C(v14, v15);
        if ((v22 & 1) != (v24 & 1))
        {
          result = sub_1DACBA1F4();
          __break(1u);
          return result;
        }

        v18 = v23;
        if (v22)
        {
LABEL_4:
          v10 = v9[7] + 48 * v18;
          v11 = *(v10 + 8);
          v12 = *(v10 + 16);
          v13 = *(v10 + 32);
          *v10 = v40;
          *(v10 + 8) = v43;
          *(v10 + 16) = v2;
          *(v10 + 24) = v14;
          *(v10 + 32) = v15;
          *(v10 + 40) = v41;
          *(v10 + 41) = v42;

          goto LABEL_5;
        }
      }

      v9[(v18 >> 6) + 8] |= 1 << v18;
      v25 = (v9[6] + 16 * v18);
      *v25 = v14;
      v25[1] = v15;
      v26 = v9[7] + 48 * v18;
      *v26 = v40;
      *(v26 + 8) = v43;
      *(v26 + 16) = v2;
      *(v26 + 24) = v14;
      *(v26 + 32) = v15;
      *(v26 + 40) = v41;
      *(v26 + 41) = v42;

      v27 = v9[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_22;
      }

      v9[2] = v29;
LABEL_5:
      v7 = v39 + 1;
      v8 += 48;
      v2 = v37;
      if (v38 == v39 + 1)
      {
        goto LABEL_19;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC8];
LABEL_19:
  v30 = a2[12];
  v31 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v30);
  (*(v31 + 176))(v30, v31);
  *(swift_allocObject() + 16) = v9;
  v32 = sub_1DACB89D4();
  sub_1DAA5A8BC(0, &qword_1EE11FA98, &type metadata for Watchlist, MEMORY[0x1E69E62F8]);
  sub_1DACB8A54();

  *(swift_allocObject() + 16) = v2;
  sub_1DACB71E4();
  v33 = sub_1DACB89D4();
  v34 = sub_1DACB8B04();

  return v34;
}

uint64_t sub_1DACA3E70(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  if (qword_1EE121840 != -1)
  {
LABEL_18:
    swift_once();
  }

  sub_1DAA41D64();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DACC1D20;
  v7 = MEMORY[0x1E69E6158];
  v8 = MEMORY[0x1E1277130](v5, MEMORY[0x1E69E6158]);
  v10 = v9;
  *(v6 + 56) = v7;
  *(v6 + 64) = sub_1DAA443C8();
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  sub_1DACB9914();
  sub_1DACB8C64();

  v11 = *(v5 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v5 + 40;
    v14 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v15 = v3;
      v16 = (v13 + 16 * v12);
      v3 = v12;
      while (1)
      {
        if (v3 >= *(v5 + 16))
        {
          __break(1u);
          goto LABEL_18;
        }

        if (*(a2 + 16))
        {
          break;
        }

LABEL_5:
        ++v3;
        v16 += 2;
        if (v11 == v3)
        {
          goto LABEL_16;
        }
      }

      v17 = *(v16 - 1);
      v18 = *v16;
      sub_1DACB71E4();
      v19 = sub_1DAA4BF3C(v17, v18);
      if ((v20 & 1) == 0)
      {
        break;
      }

      v38 = v13;
      v21 = *(a2 + 56) + 48 * v19;
      v22 = *v21;
      v23 = *(v21 + 16);
      v35 = *(v21 + 24);
      v24 = *(v21 + 32);
      v33 = *(v21 + 41);
      v34 = *(v21 + 40);
      v36 = *(v21 + 8);
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();

      v37 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1DAA929C8(0, *(v14 + 2) + 1, 1, v14);
      }

      v26 = *(v14 + 2);
      v25 = *(v14 + 3);
      if (v26 >= v25 >> 1)
      {
        v14 = sub_1DAA929C8((v25 > 1), v26 + 1, 1, v14);
      }

      v12 = v3 + 1;
      *(v14 + 2) = v26 + 1;
      v27 = &v14[48 * v26];
      *(v27 + 4) = v37;
      *(v27 + 5) = v36;
      *(v27 + 6) = v23;
      *(v27 + 7) = v35;
      *(v27 + 8) = v24;
      v27[72] = v34;
      v27[73] = v33;
      v13 = v38;
      v28 = v11 - 1 == v3;
      v3 = v15;
      if (v28)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_5;
  }

LABEL_16:
  sub_1DAA763B0(0, &unk_1EE11FE30, &qword_1EE11FA98, &type metadata for Watchlist, MEMORY[0x1E69E62F8]);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DACA4154()
{
  sub_1DAA763B0(0, &unk_1EE11FE30, &qword_1EE11FA98, &type metadata for Watchlist, MEMORY[0x1E69E62F8]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DACA41E0(uint64_t *a1, void *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (qword_1EE121840 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v103 = a2;
    sub_1DAA41D64();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1DACC1D20;
    v5 = MEMORY[0x1E1277130](v3, &type metadata for Watchlist);
    v7 = v6;
    *(v4 + 56) = MEMORY[0x1E69E6158];
    v111 = sub_1DAA443C8();
    *(v4 + 64) = v111;
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    sub_1DACB9914();
    sub_1DACB8C64();

    v8 = MEMORY[0x1E69E7CC0];
    v9 = sub_1DAB69444(MEMORY[0x1E69E7CC0]);
    v110 = *(v3 + 16);
    if (!v110)
    {
      break;
    }

    v10 = 0;
    v11 = (v3 + 73);
    v104 = v8;
    v109 = v3;
    while (v10 < *(v3 + 16))
    {
      v112 = v10;
      v13 = *(v11 - 41);
      v14 = *(v11 - 33);
      v15 = *(v11 - 25);
      v114 = *(v11 - 17);
      v16 = *(v11 - 9);
      v17 = *v11;
      v121 = *(v11 - 1);
      v122 = v17;
      v18 = v9[2];
      sub_1DACB71E4();
      sub_1DACB71E4();
      v113 = v16;
      sub_1DACB71E4();
      if (!v18 || (sub_1DACB71E4(), v19 = sub_1DAA4BF3C(v13, v14), v21 = v20, , (v21 & 1) == 0))
      {
        v41 = v8;
        v3 = v15;
        sub_1DACB71E4();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v119 = v9;
        v43 = v13;
        v44 = sub_1DAA4BF3C(v13, v14);
        v45 = v9[2];
        v46 = (a2 & 1) == 0;
        v47 = __OFADD__(v45, v46);
        v48 = v45 + v46;
        if (v47)
        {
          goto LABEL_52;
        }

        v49 = a2;
        if (v9[3] >= v48)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_19;
          }

          v57 = v44;
          sub_1DAB65A84();
          v44 = v57;
          v8 = v41;
          v50 = v113;
          v9 = v119;
          if ((v49 & 1) == 0)
          {
            goto LABEL_28;
          }

LABEL_20:
          v51 = v9[7];
          v52 = *(v51 + 8 * v44);
          *(v51 + 8 * v44) = v3;
        }

        else
        {
          sub_1DAB609F8(v48, isUniquelyReferenced_nonNull_native);
          v44 = sub_1DAA4BF3C(v13, v14);
          if ((v49 & 1) != (a2 & 1))
          {
            result = sub_1DACBA1F4();
            __break(1u);
            return result;
          }

LABEL_19:
          v50 = v113;
          v8 = v41;
          v9 = v119;
          if (v49)
          {
            goto LABEL_20;
          }

LABEL_28:
          v9[(v44 >> 6) + 8] |= 1 << v44;
          v58 = (v9[6] + 16 * v44);
          *v58 = v43;
          v58[1] = v14;
          *(v9[7] + 8 * v44) = v3;
          v59 = v9[2];
          v47 = __OFADD__(v59, 1);
          v60 = v59 + 1;
          if (v47)
          {
            goto LABEL_53;
          }

          v9[2] = v60;
          sub_1DACB71E4();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1DAA929C8(0, *(v8 + 2) + 1, 1, v8);
        }

        v62 = *(v8 + 2);
        v61 = *(v8 + 3);
        if (v62 >= v61 >> 1)
        {
          v66 = sub_1DAA929C8((v61 > 1), v62 + 1, 1, v8);
          v63 = v43;
          v8 = v66;
        }

        else
        {
          v63 = v43;
        }

        *(v8 + 2) = v62 + 1;
        v64 = &v8[48 * v62];
        *(v64 + 4) = v63;
        *(v64 + 5) = v14;
        *(v64 + 6) = v3;
        *(v64 + 7) = v114;
        *(v64 + 8) = v50;
        v65 = v122;
        v64[72] = v121;
        v64[73] = v65;
        v3 = v109;
        v12 = v112;
        goto LABEL_6;
      }

      v105 = v8;
      *&v115 = *(v9[7] + 8 * v19);
      v22 = v9;
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1DACC1D40;
      v24 = MEMORY[0x1E69E6158];
      *(v23 + 56) = MEMORY[0x1E69E6158];
      *(v23 + 64) = v111;
      *(v23 + 32) = v13;
      *(v23 + 40) = v14;
      *&v117 = 0;
      *(&v117 + 1) = 0xE000000000000000;
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB9DD4();
      v25 = v117;
      *(v23 + 96) = v24;
      *(v23 + 104) = v111;
      *(v23 + 72) = v25;
      sub_1DACB9914();
      sub_1DACB8C64();

      v26 = sub_1DACB71E4();
      sub_1DAC28658(v26);
      v27 = v115;
      sub_1DACB71E4();
      sub_1DACB71E4();
      v28 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DACA60F4(v115, v13, v14, v28, sub_1DAB65A84, sub_1DAB609F8);

      v107 = v22;
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1DACC1D40;
      v30 = MEMORY[0x1E69E6158];
      v31 = MEMORY[0x1E1277130](v15, MEMORY[0x1E69E6158]);
      *(v29 + 56) = v30;
      *(v29 + 64) = v111;
      *(v29 + 32) = v31;
      *(v29 + 40) = v32;
      *&v117 = 0;
      *(&v117 + 1) = 0xE000000000000000;
      *&v119 = v13;
      *(&v119 + 1) = v14;
      *v120 = v15;
      *&v120[8] = v114;
      *&v120[16] = v113;
      v120[24] = v121;
      v120[25] = v122;
      sub_1DACB9DD4();
      v33 = v117;
      *(v29 + 96) = v30;
      *(v29 + 104) = v111;
      *(v29 + 72) = v33;
      sub_1DACB9914();
      sub_1DACB8C64();

      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1DACC1D40;
      v35 = MEMORY[0x1E1277130](v27, v30);
      v37 = v36;

      v38 = MEMORY[0x1E69E6158];
      *(v34 + 56) = MEMORY[0x1E69E6158];
      *(v34 + 64) = v111;
      *(v34 + 32) = v35;
      *(v34 + 40) = v37;
      *(v34 + 96) = v38;
      *(v34 + 104) = v111;
      *(v34 + 72) = v13;
      *(v34 + 80) = v14;
      sub_1DACB71E4();
      sub_1DACB9914();
      sub_1DACB8C64();

      if (v114 == sub_1DACB9324() && v113 == v39)
      {

        v8 = v105;
        v9 = v107;
      }

      else
      {
        v40 = sub_1DACBA174();

        if (v40)
        {

          v9 = v107;
        }

        else
        {
          v9 = v107;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v104 = sub_1DAA929C8(0, *(v104 + 2) + 1, 1, v104);
          }

          v54 = *(v104 + 2);
          v53 = *(v104 + 3);
          if (v54 >= v53 >> 1)
          {
            v104 = sub_1DAA929C8((v53 > 1), v54 + 1, 1, v104);
          }

          *(v104 + 2) = v54 + 1;
          v55 = &v104[48 * v54];
          *(v55 + 4) = v13;
          *(v55 + 5) = v14;
          *(v55 + 6) = v15;
          *(v55 + 7) = v114;
          *(v55 + 8) = v113;
          v56 = v122;
          v55[72] = v121;
          v55[73] = v56;
        }

        v8 = v105;
      }

      v12 = v112;
      v3 = v109;
LABEL_6:
      v10 = v12 + 1;
      v11 += 48;
      if (v110 == v10)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    v101 = a2;
    swift_once();
    a2 = v101;
  }

  v104 = v8;
LABEL_37:
  v106 = v8;
  v108 = v9;
  v67 = MEMORY[0x1E69E7CA8];
  if (*(v104 + 2))
  {
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1DACC1D20;
    v69 = MEMORY[0x1E1277130](v104, &type metadata for Watchlist);
    *(v68 + 56) = MEMORY[0x1E69E6158];
    *(v68 + 64) = v111;
    *(v68 + 32) = v69;
    *(v68 + 40) = v70;
    sub_1DACB9914();
    sub_1DACB8C64();

    v71 = *(v104 + 2);
    if (v71)
    {
      v72 = (v104 + 32);
      do
      {
        v73 = *v72;
        v74 = v72[1];
        *&v120[10] = *(v72 + 26);
        v119 = v73;
        *v120 = v74;
        sub_1DAA8DB84(&v119, &v117);
        sub_1DACB8BB4();
        v75 = swift_allocObject();
        v76 = *v120;
        v75[1] = v119;
        v75[2] = v76;
        *(v75 + 42) = *&v120[10];
        sub_1DAA8DB84(&v119, &v117);
        v77 = v67;
        v78 = sub_1DACB89D4();
        sub_1DACB8A74();

        v67 = v77;
        v79 = sub_1DACB89D4();
        sub_1DACB8A74();

        v80 = sub_1DACB89D4();
        sub_1DACB8A74();

        sub_1DAA934A8(&v119);
        v72 += 3;
        --v71;
      }

      while (v71);
    }
  }

  v81 = *(v106 + 2);
  v82 = v108;
  if (v81)
  {
    v83 = (v106 + 32);
    do
    {
      v84 = *v83;
      v85 = v83[1];
      *(v118 + 10) = *(v83 + 26);
      v117 = v84;
      v118[0] = v85;
      if (v82[2])
      {
        v86 = v117;
        sub_1DAA8DB84(&v117, &v115);
        sub_1DACB71E4();
        v87 = sub_1DAA4BF3C(v86, *(&v86 + 1));
        v89 = v88;

        if (v89)
        {
          v90 = *(v82[7] + 8 * v87);
          v91 = *(v90 + 16);
          if (v91)
          {
            if (*(*&v118[0] + 16) != v91)
            {
              v92 = swift_allocObject();
              *(v92 + 16) = xmmword_1DACC1D40;
              v93 = sub_1DACB71E4();
              v94 = MEMORY[0x1E69E6158];
              v95 = MEMORY[0x1E1277130](v93, MEMORY[0x1E69E6158]);
              *(v92 + 56) = v94;
              *(v92 + 64) = v111;
              *(v92 + 32) = v95;
              *(v92 + 40) = v96;
              v115 = v117;
              v116[0] = v118[0];
              *(v116 + 10) = *(v118 + 10);
              sub_1DACB9DD4();
              *(v92 + 96) = v94;
              *(v92 + 104) = v111;
              *(v92 + 72) = 0;
              *(v92 + 80) = 0xE000000000000000;
              sub_1DACB9914();
              sub_1DACB8C64();

              v97 = v103[5];
              *(swift_allocObject() + 16) = v90;
              sub_1DAA7F334();
              sub_1DACB8BA4();

              v98 = swift_allocObject();
              v99 = v118[0];
              v98[1] = v117;
              v98[2] = v99;
              *(v98 + 42) = *(v118 + 10);
              sub_1DAA8DB84(&v117, &v115);
              v100 = sub_1DACB89D4();
              v82 = v108;
              sub_1DACB8A84();
            }
          }
        }

        sub_1DAA934A8(&v117);
      }

      v83 += 3;
      --v81;
    }

    while (v81);
  }
}

uint64_t sub_1DACA4E90(void *a1, uint64_t a2)
{
  v34 = a2;
  v29 = sub_1DACB8204();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v28 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7CC4();
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DACB8344();
  v30 = *(v10 - 8);
  v31 = v10;
  v11 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DACB81B4();
  v27 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[17];
  v19 = a1[18];
  v26[1] = __swift_project_boxed_opaque_existential_1(a1 + 14, v20);
  (*(v15 + 104))(v18, *MEMORY[0x1E69D63C8], v14);
  v21 = v13;
  v26[0] = v13;
  sub_1DACB8334();
  sub_1DACB7CB4();
  v23 = v28;
  v22 = v29;
  (*(v3 + 104))(v28, *MEMORY[0x1E69D6490], v29);
  v24 = (*(v19 + 8))(v34, v18, v21, v9, v23, v20, v19);
  (*(v3 + 8))(v23, v22);
  (*(v32 + 8))(v9, v33);
  (*(v30 + 8))(v26[0], v31);
  (*(v15 + 8))(v18, v27);
  return v24;
}

uint64_t sub_1DACA51E0(uint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v5 = sub_1DAC95A64(*a1);
  v13 = a2;
  v11[2] = &v13;
  v11[3] = a3;
  sub_1DAC9568C(sub_1DACA7FA4, v11, v5);

  v6 = sub_1DACB89D4();
  sub_1DACB8934();

  v7 = swift_allocObject();
  v8 = a3[1];
  v7[1] = *a3;
  v7[2] = v8;
  *(v7 + 42) = *(a3 + 26);
  sub_1DAA8DB84(a3, v12);
  v9 = sub_1DACB89D4();
  sub_1DACB8A64();
}

uint64_t sub_1DACA532C(void *a1, __int128 *a2, uint64_t *a3)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);

  return sub_1DACA6850(v8, a2, a3, v3, v6, v7);
}

uint64_t sub_1DACA5390(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1DACA6794(v4, v1, v2, v3);
}

uint64_t sub_1DACA53DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1DAA4BF3C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1DAAA2514(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1DAA4BF3C(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1DACBA1F4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1DAB65314();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;

  return sub_1DACB71E4();
}

uint64_t sub_1DACA5564(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DAA4BF3C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for QuoteDetail();
      return sub_1DACA6ED4(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for QuoteDetail);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1DAB65480();
    goto LABEL_7;
  }

  sub_1DAB6065C(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_1DAA4BF3C(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_1DACBA1F4();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1DACA64D4(v12, a2, a3, a1, v18, type metadata accessor for QuoteDetail, sub_1DAC2FF24);

  return sub_1DACB71E4();
}

uint64_t sub_1DACA56F8(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DAA4BF3C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DAA74978(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1DAA4BF3C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1DACBA1F4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1DAB658E0();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 48 * v11;

    return sub_1DACA6B78(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v22[7] + 48 * v11);
  v27 = *a1;
  v28 = a1[1];
  *(v26 + 26) = *(a1 + 26);
  *v26 = v27;
  v26[1] = v28;
  v29 = v22[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v30;

  return sub_1DACB71E4();
}

uint64_t sub_1DACA58B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DAA4BF3C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DAB61390(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1DAA4BF3C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1DACBA1F4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1DAB66138();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 104 * v11;

    return sub_1DACA6C08(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 104 * v11;
  v27 = *a1;
  v28 = *(a1 + 32);
  *(v26 + 16) = *(a1 + 16);
  *(v26 + 32) = v28;
  *v26 = v27;
  v29 = *(a1 + 48);
  v30 = *(a1 + 64);
  v31 = *(a1 + 80);
  *(v26 + 96) = *(a1 + 96);
  *(v26 + 64) = v30;
  *(v26 + 80) = v31;
  *(v26 + 48) = v29;
  v32 = v22[2];
  v15 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v33;

  return sub_1DACB71E4();
}

uint64_t sub_1DACA5A5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DAA4BF3C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for EarningsCalendarEventModel();
      return sub_1DACA6ED4(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for EarningsCalendarEventModel);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1DAB664AC();
    goto LABEL_7;
  }

  sub_1DAB619FC(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_1DAA4BF3C(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_1DACBA1F4();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1DACA64D4(v12, a2, a3, a1, v18, type metadata accessor for EarningsCalendarEventModel, sub_1DACA6BF0);

  return sub_1DACB71E4();
}

uint64_t sub_1DACA5BF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DAA4BF3C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for Chart(0);
      return sub_1DACA6ED4(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for Chart);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1DAB66744();
    goto LABEL_7;
  }

  sub_1DAA860FC(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_1DAA4BF3C(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_1DACBA1F4();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1DACA64D4(v12, a2, a3, a1, v18, type metadata accessor for Chart, sub_1DAA86044);

  return sub_1DACB71E4();
}

uint64_t sub_1DACA5D84(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1DAB095DC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1DAB61DB4(v14, a3 & 1);
      v18 = *v4;
      v9 = sub_1DAB095DC(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_1DACBA1F4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_1DAB669C0();
      v9 = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(v9 >> 6) + 8] |= 1 << v9;
    v24 = v20[6] + 136 * v9;
    v26 = *(a2 + 48);
    v25 = *(a2 + 64);
    v27 = *(a2 + 32);
    *(v24 + 16) = *(a2 + 16);
    *(v24 + 32) = v27;
    *(v24 + 48) = v26;
    *(v24 + 64) = v25;
    *v24 = *a2;
    v28 = *(a2 + 80);
    v29 = *(a2 + 96);
    v30 = *(a2 + 112);
    *(v24 + 128) = *(a2 + 128);
    *(v24 + 96) = v29;
    *(v24 + 112) = v30;
    *(v24 + 80) = v28;
    *(v20[7] + 8 * v9) = a1;
    v31 = v20[2];
    v13 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (!v13)
    {
      v20[2] = v32;
      return sub_1DAA806E4(a2, v33);
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * v9);
  *(v21 + 8 * v9) = a1;
}

uint64_t sub_1DACA5F1C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1DAA4BF3C(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1DAB624E0(v20, a6 & 1);
      v24 = *v7;
      v15 = sub_1DAA4BF3C(a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_1DACBA1F4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_1DAB66D30();
      v15 = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    v27 = v26[7] + 24 * v15;
    v28 = *(v27 + 8);
    *v27 = a1;
    *(v27 + 8) = a2;
    *(v27 + 16) = a3 & 1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a4;
  v30[1] = a5;
  v31 = v26[7] + 24 * v15;
  *v31 = a1;
  *(v31 + 8) = a2;
  *(v31 + 16) = a3 & 1;
  v32 = v26[2];
  v19 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v33;

  return sub_1DACB71E4();
}

uint64_t sub_1DACA60F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1DAA4BF3C(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v24 = *v9;
      v15 = sub_1DAA4BF3C(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_1DACBA1F4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;

  return sub_1DACB71E4();
}

_OWORD *sub_1DACA628C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1DACB9DF4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1DAB09820(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1DAB67A90();
      goto LABEL_7;
    }

    sub_1DAB63CC0(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_1DAB09820(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1DACA6580(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1DACBA1F4();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 32 * v15);
  __swift_destroy_boxed_opaque_existential_1(v22);

  return sub_1DAB6A61C(a1, v22);
}

unint64_t sub_1DACA6464(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 136 * result;
  v5 = *(a2 + 112);
  *(v4 + 96) = *(a2 + 96);
  *(v4 + 112) = v5;
  *(v4 + 128) = *(a2 + 128);
  v6 = *(a2 + 48);
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = v6;
  v7 = *(a2 + 80);
  *(v4 + 64) = *(a2 + 64);
  *(v4 + 80) = v7;
  v8 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v8;
  *(a4[7] + 8 * result) = a3;
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

uint64_t sub_1DACA64D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, unint64_t))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = a7(a4, v12 + *(*(v13 - 8) + 72) * a1);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

_OWORD *sub_1DACA6580(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1DACB9DF4();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_1DAB6A61C(a3, (a4[7] + 32 * a1));
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

uint64_t sub_1DACA6640(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1DACB9E14();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1DACB9CD4();
  *v1 = result;
  return result;
}

uint64_t sub_1DACA6730(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1DACB9E14();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1DACB9CD4();
}

uint64_t sub_1DACA6794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[3] = a3;
  v11[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(v11, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_1DACA6850(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38[3] = a5;
  v38[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  v12 = *a2;
  v13 = *(a2 + 2);
  v14 = *(a2 + 3);
  v15 = *(a2 + 32);
  v16 = *(a2 + 33);
  v17 = *a3;
  v25 = *(a3 + 1);
  v26 = v12;
  v18 = a3[3];
  v19 = a3[4];
  v24 = *(a3 + 40);
  v20 = *(a3 + 41);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v21 = *(a4 + 24);
    ObjectType = swift_getObjectType();
    v33 = v26;
    v34 = v13;
    v35 = v14;
    v36 = v15;
    v37 = v16;
    v27 = v17;
    v28 = v25;
    v29 = v18;
    v30 = v19;
    v31 = v24;
    v32 = v20;
    (*(v21 + 8))(v38, &v33, &v27, ObjectType, v21);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v38);
}

unint64_t sub_1DACA69B8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;
    result = sub_1DACB71E4();
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1DACA6A9C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v15 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = v7;
    }

    v6 = sub_1DAA9A3B0(isUniquelyReferenced_nonNull_native, v17, 1, v6);
    *v4 = v6;
  }

  result = sub_1DACA69B8(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

char *sub_1DACA6CC0(uint64_t a1, uint64_t a2, unint64_t *a3, ValueMetadata *a4)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = a4;
  v7 = a3;
  v9 = *v5;
  v10 = (v9 + 32 + 136 * a1);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v7, v6);
  v13 = v7 - v6;
  if (v12)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = *(v9 + 16);
  v12 = __OFSUB__(v14, a2);
  v15 = v14 - a2;
  if (v12)
  {
    goto LABEL_19;
  }

  result = &v10[136 * v7];
  v16 = (v9 + 32 + 136 * a2);
  if (result != v16 || result >= &v16[136 * v15])
  {
    result = memmove(result, v16, 136 * v15);
  }

  v18 = *(v9 + 16);
  v12 = __OFADD__(v18, v13);
  v19 = v18 + v13;
  if (v12)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v19;
LABEL_13:
  if (v7 <= 0)
  {
    return result;
  }

  memmove(v10, v4, 0x88uLL);
  a3 = &unk_1ECBE9AB0;
  a4 = &type metadata for Stock;
  if (v7 != 1)
  {
LABEL_21:
    result = sub_1DACA73E4(v4, v20, a3, a4, MEMORY[0x1E69E6BC0]);
    __break(1u);
    return result;
  }

  return sub_1DACA73E4(v4, v20, &unk_1ECBE9AB0, &type metadata for Stock, MEMORY[0x1E69E6BC0]);
}

uint64_t sub_1DACA6E0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = 0;
  if (v2)
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *(i - 1) == v4 && *i == v5;
      if (v7 || (sub_1DACBA174() & 1) != 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t sub_1DACA6ED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DACA6F3C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
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

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1DACA6FFC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1DAA9A3B0(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1DACA6F3C(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1DACA70BC(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = a2[12];
  v8 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v7);
  v9 = *(v2 + 64);
  v11 = *(v2 + 48);
  v12[0] = v9;
  *(v12 + 10) = *(v2 + 74);
  return (*(v8 + 168))(v3, v4, v5, v6, &v11, v7, v8);
}

uint64_t sub_1DACA7180()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DACA71B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_1DACA71F0(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = a2[12];
  v5 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v4);
  v6 = *(v2 + 40);
  v8 = *(v2 + 24);
  v9[0] = v6;
  *(v9 + 10) = *(v2 + 50);
  return (*(v5 + 32))(v3, &v8, v4, v5);
}

uint64_t sub_1DACA72A8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_1DACA72E8(uint64_t a1, void *a2)
{
  v3 = a2[12];
  v4 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v3);
  v5 = *(v2 + 128);
  v19[6] = *(v2 + 112);
  v19[7] = v5;
  v20 = *(v2 + 144);
  v6 = *(v2 + 64);
  v19[2] = *(v2 + 48);
  v19[3] = v6;
  v7 = *(v2 + 96);
  v19[4] = *(v2 + 80);
  v19[5] = v7;
  v8 = *(v2 + 32);
  v19[0] = *(v2 + 16);
  v19[1] = v8;
  v9 = *(v2 + 232);
  v10 = *(v2 + 264);
  v17[6] = *(v2 + 248);
  v17[7] = v10;
  v18 = *(v2 + 280);
  v11 = *(v2 + 168);
  v12 = *(v2 + 200);
  v17[2] = *(v2 + 184);
  v17[3] = v12;
  v17[4] = *(v2 + 216);
  v17[5] = v9;
  v17[0] = *(v2 + 152);
  v17[1] = v11;
  v13 = *(v2 + 304);
  v15 = *(v2 + 288);
  v16[0] = v13;
  *(v16 + 10) = *(v2 + 314);
  return (*(v4 + 160))(v19, v17, &v15, v3, v4);
}

uint64_t sub_1DACA73E4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1DAA5A8BC(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1DACA746C(uint64_t a1, void *a2)
{
  v3 = a2[12];
  v4 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v3);
  v5 = v2[2];
  v8 = v2[1];
  v9[0] = v5;
  *(v9 + 10) = *(v2 + 42);
  v7 = -96;
  return (*(v4 + 104))(&v8, &v7, v3, v4);
}

uint64_t sub_1DACA754C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
  return sub_1DACB71E4();
}

uint64_t objectdestroy_109Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[16];

  v8 = v0[18];

  v9 = v0[20];

  v10 = v0[21];

  v11 = v0[23];

  return MEMORY[0x1EEE6BDD0](v0, 194, 7);
}

uint64_t sub_1DACA7630(uint64_t a1, void *a2)
{
  v3 = a2[12];
  v4 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v3);
  v5 = *(v2 + 128);
  v13[6] = *(v2 + 112);
  v13[7] = v5;
  v14 = *(v2 + 144);
  v6 = *(v2 + 64);
  v13[2] = *(v2 + 48);
  v13[3] = v6;
  v7 = *(v2 + 96);
  v13[4] = *(v2 + 80);
  v13[5] = v7;
  v8 = *(v2 + 32);
  v13[0] = *(v2 + 16);
  v13[1] = v8;
  v9 = *(v2 + 168);
  v11 = *(v2 + 152);
  v12[0] = v9;
  *(v12 + 10) = *(v2 + 178);
  return (*(v4 + 144))(v13, &v11, v3, v4);
}

uint64_t objectdestroy_112Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[18];

  v9 = v0[20];

  v10 = v0[22];

  v11 = v0[24];

  v12 = v0[25];

  return MEMORY[0x1EEE6BDD0](v0, 208, 7);
}

uint64_t sub_1DACA776C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  *a1 = v1[1];
  a1[1] = v2;
  *(a1 + 26) = *(v1 + 42);
  return sub_1DAA8DB84((v1 + 1), &v4);
}

uint64_t sub_1DACA77B4(uint64_t a1, void *a2)
{
  v3 = a2[12];
  v4 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v3);
  v5 = v2[2];
  v10 = v2[1];
  v11[0] = v5;
  *(v11 + 10) = *(v2 + 42);
  v6 = v2[5];
  v8 = v2[4];
  v9[0] = v6;
  *(v9 + 10) = *(v2 + 90);
  return (*(v4 + 200))(&v10, &v8, v3, v4);
}

uint64_t sub_1DACA7860@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  *a1 = v1[1];
  a1[1] = v2;
  *(a1 + 26) = *(v1 + 42);
  return sub_1DAA8DB84((v1 + 1), &v4);
}

uint64_t sub_1DACA7898()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1DACA78E4(uint64_t a1, void *a2)
{
  v3 = *(v2 + 58);
  v4 = a2[12];
  v5 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v4);
  v6 = *(v2 + 32);
  v8 = *(v2 + 16);
  v9[0] = v6;
  *(v9 + 10) = *(v2 + 42);
  v10 = v3;
  return (*(v5 + 112))(&v8, &v10, v4, v5);
}

uint64_t sub_1DACA7990(uint64_t a1, void *a2)
{
  v3 = *(v2 + 58);
  v4 = a2[12];
  v5 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v4);
  v6 = *(v2 + 32);
  v8 = *(v2 + 16);
  v9[0] = v6;
  *(v9 + 10) = *(v2 + 42);
  v10 = v3;
  return (*(v5 + 104))(&v8, &v10, v4, v5);
}

uint64_t sub_1DACA7A5C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a2[12];
  v6 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v5);
  v7 = v2[2];
  v9 = v2[1];
  v10[0] = v7;
  *(v10 + 10) = *(v2 + 42);
  return (*(v6 + 96))(&v9, v3, v4, v5, v6);
}

uint64_t sub_1DACA7B20(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  result = sub_1DACA6E0C(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    return *(v4 + 16);
  }

  v8 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v9 = *(v4 + 16);
    if (v8 == v9)
    {
      return v7;
    }

    v10 = 16 * result;
    while (v8 < v9)
    {
      v13 = *(v4 + v10 + 48);
      v14 = *(v4 + v10 + 56);
      if (v13 != *(a2 + 24) || v14 != *(a2 + 32))
      {
        v16 = *(v4 + v10 + 48);
        v17 = *(v4 + v10 + 56);
        result = sub_1DACBA174();
        if ((result & 1) == 0)
        {
          if (v8 != v7)
          {
            if (v7 >= v9)
            {
              goto LABEL_24;
            }

            v18 = (v4 + 32 + 16 * v7);
            v19 = v18[1];
            v22 = *v18;
            sub_1DACB71E4();
            sub_1DACB71E4();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_1DACA6708(v4);
            }

            v20 = v4 + 16 * v7;
            v21 = *(v20 + 40);
            *(v20 + 32) = v13;
            *(v20 + 40) = v14;

            if (v8 >= *(v4 + 16))
            {
              goto LABEL_25;
            }

            v11 = v4 + v10;
            v12 = *(v4 + v10 + 56);
            *(v11 + 48) = v22;
            *(v11 + 56) = v19;

            *a1 = v4;
          }

          ++v7;
        }
      }

      ++v8;
      v9 = *(v4 + 16);
      v10 += 16;
      if (v8 == v9)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DACA7CB0()
{
  if (!qword_1EE11F988)
  {
    sub_1DAB1BC70();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11F988);
    }
  }
}

uint64_t sub_1DACA7D1C(uint64_t a1, uint64_t a2)
{
  sub_1DAA59DC0(0, &qword_1EE11F980, sub_1DACA7CB0, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DACA7DCC()
{
  result = qword_1EE11F9C8;
  if (!qword_1EE11F9C8)
  {
    sub_1DAA59DC0(255, &qword_1EE11F9D0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F9C8);
  }

  return result;
}

uint64_t sub_1DACA7E5C()
{
  v1 = v0[12];
  v2 = v0[13];
  __swift_project_boxed_opaque_existential_1(v0 + 9, v1);
  return (*(v2 + 120))(v1, v2);
}

uint64_t sub_1DACA7EF0(uint64_t a1, void *a2)
{
  v3 = a2[12];
  v4 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v3);
  v5 = v2[2];
  v7 = v2[1];
  v8[0] = v5;
  *(v8 + 10) = *(v2 + 42);
  return (*(v4 + 88))(&v7, v3, v4);
}

uint64_t sub_1DACA7FA4@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = **(v2 + 16);
  result = sub_1DAC9A5F0(a1, v4);
  *a2 = result;
  return result;
}

unint64_t sub_1DACA801C()
{
  result = qword_1EE11FA30;
  if (!qword_1EE11FA30)
  {
    sub_1DAA5A8BC(255, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FA30);
  }

  return result;
}

unint64_t sub_1DACA8098()
{
  result = qword_1EE11FA68;
  if (!qword_1EE11FA68)
  {
    sub_1DAA59DC0(255, &qword_1EE11FA78, sub_1DAB1BC70, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FA68);
  }

  return result;
}

uint64_t objectdestroy_100Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 74, 7);
}

uint64_t sub_1DACA81C4(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = a2[12];
  v6 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v5);
  v7 = *(v2 + 48);
  v9 = *(v2 + 32);
  v10[0] = v7;
  *(v10 + 10) = *(v2 + 58);
  return (*(v6 + 152))(v3, v4, &v9, v5, v6);
}

uint64_t sub_1DACA82E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1DACA8450(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_1DACBA134();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, a1);
  }

  v10 = sub_1DACB78B4();

  v11 = [v10 domain];
  v12 = sub_1DACB9324();
  v14 = v13;

  v15 = *MEMORY[0x1E69B5040];
  if (v12 == sub_1DACB9324() && v14 == v16)
  {
  }

  else
  {
    v18 = sub_1DACBA174();

    if ((v18 & 1) == 0)
    {

      return 0;
    }
  }

  v20 = [v10 code];

  return v20 == 2;
}

uint64_t sub_1DACA866C()
{
  result = sub_1DACB7CC4();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1DACB8204();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1DACA8764(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DAC06960(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1DACAA698(v5);
  *a1 = v2;
  return result;
}

void sub_1DACA87D0(uint64_t a1, uint64_t a2)
{
  v19 = *(v2 + qword_1EE127038);
  sub_1DACB71E4();
  sub_1DACA8764(&v19);
  sub_1DACAA554(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DACAA630(&qword_1EE11FA38);
  v5 = sub_1DACB9864();

  v6 = *(v5 + 16);
  if (v6)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1DACB9D64();
    sub_1DAA53180(0, &qword_1EE126CD8, sub_1DACAA5AC, MEMORY[0x1E69D6B18]);
    v8 = v7;
    v9 = 32;
    do
    {
      v10 = *(v5 + v9);
      MEMORY[0x1EEE9AC00](v7);
      v11 = *(v8 + 48);
      v12 = *(v8 + 52);
      swift_allocObject();
      sub_1DACB71E4();
      sub_1DACB8B44();

      sub_1DACB9D34();
      v13 = *(v19 + 2);
      sub_1DACB9D74();
      sub_1DACB9D84();
      v7 = sub_1DACB9D44();
      v9 += 8;
      --v6;
    }

    while (v6);
  }

  v14 = sub_1DACB89D4();
  sub_1DACAA5AC();
  sub_1DACB8934();

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  sub_1DACB71F4();
  v16 = sub_1DACB89D4();
  sub_1DACB8A64();

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  sub_1DACB71F4();
  v18 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t sub_1DACA8B00(uint64_t result, void (*a2)(uint64_t, void))
{
  v3 = *result;
  v4 = MEMORY[0x1E69E7CC8];
  v9 = MEMORY[0x1E69E7CC8];
  v5 = *(*result + 16);
  if (v5)
  {
    v6 = 0;
    while (v6 < *(v3 + 16))
    {
      v7 = v6 + 1;
      v8 = *(v3 + 32 + 8 * v6);
      type metadata accessor for YahooQuoteDetailItem(0);
      sub_1DACB71E4();
      sub_1DACB88C4();

      v6 = v7;
      if (v5 == v7)
      {
        v4 = v9;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    a2(v4, 0);
  }

  return result;
}

void sub_1DACA8C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v66 = a4;
  v65 = a3;
  v10 = sub_1DACB8204();
  v71 = *(v10 - 8);
  v72 = v10;
  v11 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1DACB7CC4();
  v68 = *(v70 - 8);
  v13 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v64 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1DACB7AB4();
  v63 = *(v67 - 8);
  v15 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v62 = v18;
  v19 = __swift_project_boxed_opaque_existential_1(&a5[qword_1EE127040], *&a5[qword_1EE127040 + 24]);
  sub_1DAA53180(0, &qword_1EE123B40, sub_1DAA4BD7C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC1D40;
  *(inited + 32) = 0x7372656B636974;
  *(inited + 40) = 0xE700000000000000;
  v74[0] = a6;
  sub_1DACAA554(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DACAA630(&qword_1EE123E90);
  sub_1DACB71F4();
  *(inited + 48) = sub_1DACB9214();
  *(inited + 56) = v21;
  strcpy((inited + 64), "crossProduct");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = 0x657A696D6974706FLL;
  *(inited + 88) = 0xE900000000000064;
  v61 = sub_1DAA4BDD8(inited);
  swift_setDeallocating();
  sub_1DAA4BD7C();
  swift_arrayDestroy();
  v22 = a5;
  v23 = &a5[qword_1EE127048];
  v24 = *&a5[qword_1EE127048];
  v25 = *&a5[qword_1EE127048 + 8];
  v60 = v24;
  v26 = *(v23 + 3);
  v59 = *(v23 + 2);
  v27 = qword_1EE127050;
  v28 = *v19;
  v29 = [objc_opt_self() sharedPreferences];
  if (v29)
  {
    v30 = v29;
    v58 = a6;
    v31 = [v29 stocksYQLBaseURL];

    if (v31)
    {
      v52 = 0x80000001DACF2F40;
      v55 = v17;
      sub_1DACB7A44();

      sub_1DAA4D678(v28 + 16, v74);
      v53 = *(v68 + 16);
      v57 = v22;
      v32 = v64;
      v53();
      v56 = *(v71 + 16);
      v56(v69, &v22[v27], v72);
      sub_1DACAB064();
      v54 = v33;
      v34 = objc_allocWithZone(v33);
      v35 = MEMORY[0x1E69E7D40];
      *(v34 + *((*MEMORY[0x1E69E7D40] & *v34) + qword_1EE13E4B0 + 16)) = 4;
      v36 = v63;
      (*(v63 + 16))(v34 + *((*v35 & *v34) + qword_1EE13E4B0 + 24), v17, v67);
      v37 = (v34 + *((*v35 & *v34) + qword_1EE13E4B0 + 32));
      *v37 = 0xD000000000000014;
      v37[1] = v52;
      *(v34 + *((*v35 & *v34) + qword_1EE13E4B0 + 40)) = v61;
      v38 = (v34 + *((*v35 & *v34) + qword_1EE13E4B0 + 48));
      *v38 = v60;
      v38[1] = v25;
      v38[2] = v59;
      v38[3] = v26;
      sub_1DAA4D678(v74, v34 + *((*v35 & *v34) + qword_1EE13E4B0 + 56));
      v39 = v32;
      v40 = v32;
      v41 = v70;
      (v53)(v34 + *((*v35 & *v34) + qword_1EE13E4B0 + 64), v40, v70);
      v42 = v69;
      v43 = v72;
      v56(v34 + *((*v35 & *v34) + qword_1EE13E4B0 + 72), v69, v72);
      v73.receiver = v34;
      v73.super_class = v54;
      sub_1DACB71E4();
      sub_1DACB71E4();
      v44 = objc_msgSendSuper2(&v73, sel_init);
      (*(v71 + 8))(v42, v43);
      (*(v68 + 8))(v39, v41);
      __swift_destroy_boxed_opaque_existential_1(v74);
      (*(v36 + 8))(v55, v67);
      v45 = swift_allocObject();
      v46 = v57;
      v45[2] = v58;
      v45[3] = v46;
      v47 = v62;
      v45[4] = sub_1DAA73914;
      v45[5] = v47;
      v48 = v66;
      v45[6] = v65;
      v45[7] = v48;
      v49 = v44;
      sub_1DACB71E4();
      v50 = v46;
      sub_1DACB71F4();
      sub_1DACB8304();

      [v49 start];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1DACA94C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v142[1] = a5;
  v143 = a4;
  v154 = sub_1DACB7664();
  v9 = *(v154 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v154);
  v153 = v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA53180(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v185 = v142 - v17;
  v18 = type metadata accessor for YahooQuoteDetailItem(0);
  v149 = *(v18 - 8);
  v150 = v18;
  v19 = *(v149 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v142 - v22;
  v24 = *a1;
  if (*(a1 + 32))
  {
    return a6(v24);
  }

  v182 = v9;
  v183 = v24;
  v148 = v21;
  v184 = v16;
  v26 = *(a2 + 16);
  if (v26)
  {
    v27 = (a2 + 40);
    v155 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v30 = *(v27 - 1);
      v31 = *v27;
      v186 = v26;
      v187 = v30;
      v32 = sub_1DACB93B4();
      v34 = v33;
      swift_bridgeObjectRetain_n();
      v35 = v155;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v190[0] = v35;
      v38 = sub_1DAA4BF3C(v32, v34);
      v39 = v35[2];
      v40 = (v37 & 1) == 0;
      v41 = v39 + v40;
      if (__OFADD__(v39, v40))
      {
        goto LABEL_98;
      }

      v42 = v37;
      if (v35[3] >= v41)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v45 = v187;
          if ((v37 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          sub_1DAB65314();
          v45 = v187;
          if ((v42 & 1) == 0)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        sub_1DAAA2514(v41, isUniquelyReferenced_nonNull_native);
        v43 = sub_1DAA4BF3C(v32, v34);
        if ((v42 & 1) != (v44 & 1))
        {
          goto LABEL_101;
        }

        v38 = v43;
        v45 = v187;
        if ((v42 & 1) == 0)
        {
LABEL_14:
          v46 = v190[0];
          *(v190[0] + 8 * (v38 >> 6) + 64) |= 1 << v38;
          v47 = (v46[6] + 16 * v38);
          *v47 = v32;
          v47[1] = v34;
          v48 = (v46[7] + 16 * v38);
          *v48 = v45;
          v48[1] = v31;

          v49 = v46[2];
          v50 = __OFADD__(v49, 1);
          v51 = v49 + 1;
          if (v50)
          {
            goto LABEL_100;
          }

          v155 = v46;
          v46[2] = v51;
          goto LABEL_6;
        }
      }

      v155 = v190[0];
      v28 = (*(v190[0] + 56) + 16 * v38);
      v29 = v28[1];
      *v28 = v45;
      v28[1] = v31;

LABEL_6:
      v27 += 2;
      v26 = v186 - 1;
      if (v186 == 1)
      {
        goto LABEL_19;
      }
    }
  }

  v155 = MEMORY[0x1E69E7CC8];
LABEL_19:
  v52 = sub_1DACAB218(v183);
  v53 = v52;
  v146 = *(v52 + 16);
  if (!v146)
  {

    v55 = MEMORY[0x1E69E7CC8];
    goto LABEL_95;
  }

  v54 = 0;
  v145 = v52 + 32;
  v55 = MEMORY[0x1E69E7CC8];
  v152 = (v182 + 8);
  v56 = v155;
  v144 = v52;
  while (1)
  {
    if (v54 >= *(v53 + 16))
    {
      goto LABEL_99;
    }

    v57 = *(v145 + 8 * v54) ? *(v145 + 8 * v54) : MEMORY[0x1E69E7CC0];
    v58 = *(v57 + 16);
    if (v58)
    {
      break;
    }

    sub_1DACB71E4();

LABEL_22:
    if (++v54 == v146)
    {

LABEL_95:
      v143(v55);
    }
  }

  v147 = v54;
  sub_1DACB71E4();
  v59 = 0;
  v187 = v58 - 1;
  v60 = 32;
  v151 = v57;
  do
  {
    memcpy(v190, (v57 + v60), 0x2D0uLL);
    v61 = sub_1DACB93B4();
    v63 = v62;
    if (!v56[2])
    {

      goto LABEL_89;
    }

    v64 = v61;
    sub_1DABFDE7C(v190, &v188);
    v65 = sub_1DAA4BF3C(v64, v63);
    v67 = v66;

    if ((v67 & 1) == 0 || !v190[5])
    {
      sub_1DABFDEB4(v190);
      goto LABEL_89;
    }

    v68 = (v56[7] + 16 * v65);
    v69 = v68[1];
    v182 = *v68;
    v183 = v55;
    v70 = v190[18];
    v180 = v190[2];
    v181 = v190[4];
    v186 = v69;
    v179 = v190[3];
    v177 = v190[5];
    if (v190[18])
    {
      v176 = v190[19];
      v71 = v190[17];
      v72 = v190[16];
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v178 = v72;
      sub_1DACAB348(v72, v71, v70);
    }

    else
    {
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v178 = 0;
    }

    v73 = v190[21];
    if (!v190[23])
    {
      v73 = 0;
    }

    v175 = v190[23];
    v176 = v73;
    v171 = v190[28];
    if (v190[28])
    {
      v74 = v190[26];
    }

    else
    {
      v74 = 0;
    }

    v75 = v190[31];
    v162 = v190[33];
    if (!v190[33])
    {
      v75 = 0;
    }

    v173 = v75;
    v174 = v74;
    v76 = v190[36];
    v161 = v190[38];
    if (!v190[38])
    {
      v76 = 0;
    }

    v172 = v76;
    v160 = v190[43];
    if (v190[43])
    {
      v77 = v190[41];
    }

    else
    {
      v77 = 0;
    }

    v78 = v190[51];
    v159 = v190[53];
    if (!v190[53])
    {
      v78 = 0;
    }

    v169 = v78;
    v170 = v77;
    v158 = v190[58];
    if (v190[58])
    {
      v79 = v190[56];
    }

    else
    {
      v79 = 0;
    }

    v80 = v190[61];
    v157 = v190[63];
    if (!v190[63])
    {
      v80 = 0;
    }

    v165 = v80;
    v166 = v79;
    v156 = v190[68];
    if (v190[68])
    {
      v81 = v190[66];
    }

    else
    {
      v81 = 0;
    }

    v82 = v190[73];
    v83 = v190[71];
    if (!v190[73])
    {
      v83 = 0;
    }

    v163 = v83;
    v164 = v81;
    v167 = v190[76];
    v168 = v190[77];
    if (v190[79])
    {
      v84 = v70;
      v188 = v190[78];
      v189 = v190[79];
      sub_1DACB71E4();
      v85 = v153;
      sub_1DACB7604();
      sub_1DAA642D8();
      sub_1DACB9B44();
      v87 = v86;
      (*v152)(v85, v154);
      v88 = v177;
      if (v87)
      {
        sub_1DACB7A94();
      }

      else
      {
        v92 = sub_1DACB7AB4();
        (*(*(v92 - 8) + 56))(v185, 1, 1, v92);
      }

      v70 = v84;
      v90 = v190[85];
      if (!v190[85])
      {
LABEL_65:
        v91 = sub_1DACB7AB4();
        (*(*(v91 - 8) + 56))(v184, 1, 1, v91);
        goto LABEL_72;
      }
    }

    else
    {
      v89 = sub_1DACB7AB4();
      (*(*(v89 - 8) + 56))(v185, 1, 1, v89);
      sub_1DACB71E4();
      v88 = v177;
      v90 = v190[85];
      if (!v190[85])
      {
        goto LABEL_65;
      }
    }

    v93 = v70;
    v188 = v190[84];
    v189 = v90;
    v94 = v153;
    sub_1DACB7604();
    sub_1DAA642D8();
    sub_1DACB9B44();
    v96 = v95;
    (*v152)(v94, v154);
    if (v96)
    {
      sub_1DACB7A94();
    }

    else
    {
      v97 = sub_1DACB7AB4();
      (*(*(v97 - 8) + 56))(v184, 1, 1, v97);
    }

    v70 = v93;
LABEL_72:
    v98 = v82 == 0;
    v99 = v157;
    v100 = v156 == 0;
    v101 = v179;
    *v23 = v180;
    *(v23 + 1) = v101;
    v102 = v100;
    v103 = v99 == 0;
    v104 = v159;
    v100 = v158 == 0;
    *(v23 + 2) = v181;
    *(v23 + 3) = v88;
    v105 = v100;
    *(v23 + 4) = v178;
    v106 = v160 == 0;
    v107 = v161 == 0;
    v108 = v162 == 0;
    v109 = v171 == 0;
    v110 = v175 == 0;
    v23[40] = v70 == 0;
    *(v23 + 6) = v176;
    v23[56] = v110;
    *(v23 + 8) = v174;
    v23[72] = v109;
    *(v23 + 10) = v173;
    v23[88] = v108;
    *(v23 + 12) = v172;
    v23[104] = v107;
    *(v23 + 14) = v170;
    v23[120] = v106;
    *(v23 + 16) = v169;
    v23[136] = v104 == 0;
    *(v23 + 18) = v166;
    v23[152] = v105;
    v181 = v190[88];
    *(v23 + 20) = v165;
    v111 = v190[89];
    v23[168] = v103;
    v112 = v190[86];
    *(v23 + 22) = v164;
    v113 = v190[87];
    v23[184] = v102;
    v179 = v190[82];
    v180 = v112;
    *(v23 + 24) = v163;
    v114 = v190[83];
    v23[200] = v98;
    v115 = v190[80];
    v116 = v168;
    *(v23 + 26) = v167;
    *(v23 + 27) = v116;
    v117 = v190[81];
    v118 = v150;
    sub_1DAB4CCC4(v185, &v23[v150[18]]);
    sub_1DAB4CCC4(v184, &v23[v118[19]]);
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DABFDEB4(v190);
    v119 = &v23[v118[20]];
    *v119 = v115;
    *(v119 + 1) = v117;
    v120 = &v23[v118[21]];
    v121 = v180;
    *v120 = v179;
    *(v120 + 1) = v114;
    v122 = &v23[v118[22]];
    *v122 = v121;
    *(v122 + 1) = v113;
    v123 = &v23[v118[23]];
    *v123 = v181;
    *(v123 + 1) = v111;
    v124 = v148;
    sub_1DAB78ED4(v23, v148);
    v125 = v183;
    v126 = swift_isUniquelyReferenced_nonNull_native();
    v188 = v125;
    v127 = v182;
    v128 = sub_1DAA4BF3C(v182, v186);
    v130 = *(v125 + 16);
    v131 = (v129 & 1) == 0;
    v50 = __OFADD__(v130, v131);
    v132 = v130 + v131;
    if (v50)
    {
      goto LABEL_96;
    }

    v133 = v129;
    if (*(v125 + 24) >= v132)
    {
      v56 = v155;
      if ((v126 & 1) == 0)
      {
        v141 = v128;
        sub_1DAB67F80();
        v128 = v141;
      }

      v134 = v186;
      if ((v133 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      sub_1DAB643F0(v132, v126);
      v134 = v186;
      v128 = sub_1DAA4BF3C(v127, v186);
      v56 = v155;
      if ((v133 & 1) != (v135 & 1))
      {
        goto LABEL_101;
      }

      if ((v133 & 1) == 0)
      {
LABEL_86:
        v137 = v127;
        v55 = v188;
        v188[(v128 >> 6) + 8] |= 1 << v128;
        v138 = (v55[6] + 16 * v128);
        *v138 = v137;
        v138[1] = v134;
        sub_1DAB78ED4(v124, v55[7] + *(v149 + 72) * v128);
        v139 = v55[2];
        v50 = __OFADD__(v139, 1);
        v140 = v139 + 1;
        if (v50)
        {
          goto LABEL_97;
        }

        v55[2] = v140;
        goto LABEL_88;
      }
    }

    v136 = v128;

    v55 = v188;
    sub_1DACAB2E4(v124, v188[7] + *(v149 + 72) * v136);
LABEL_88:
    v57 = v151;
LABEL_89:
    if (v187 == v59)
    {

      v53 = v144;
      v54 = v147;
      goto LABEL_22;
    }

    ++v59;
    v60 += 720;
  }

  while (v59 < *(v57 + 16));
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

uint64_t sub_1DACAA118()
{
  v1 = *(v0 + qword_1EE127038);

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EE127040));
  v2 = *(v0 + qword_1EE127048 + 8);
  v3 = *(v0 + qword_1EE127048 + 24);

  v4 = qword_1ECBE9AC8;
  v5 = sub_1DACB7CC4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = qword_1EE127050;
  v7 = sub_1DACB8204();
  v8 = *(*(v7 - 8) + 8);

  return v8(v0 + v6, v7);
}

uint64_t sub_1DACAA200(uint64_t a1)
{
  v2 = *(a1 + qword_1EE127038);

  __swift_destroy_boxed_opaque_existential_1((a1 + qword_1EE127040));
  v3 = *(a1 + qword_1EE127048 + 8);
  v4 = *(a1 + qword_1EE127048 + 24);

  v5 = qword_1ECBE9AC8;
  v6 = sub_1DACB7CC4();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = qword_1EE127050;
  v8 = sub_1DACB8204();
  v9 = *(*(v8 - 8) + 8);

  return v9(a1 + v7, v8);
}

uint64_t sub_1DACAA2EC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DACB71F4();
  sub_1DACA87D0(sub_1DAADF554, v4);
}

void sub_1DACAA3BC()
{
  sub_1DACAA554(319, &qword_1EE123FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1DACAA554(319, &qword_1EE11F998, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1DACAA554(319, &qword_1EE11F780, MEMORY[0x1E69E6810], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1DAA53180(319, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DACAA554(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DACAA5AC()
{
  if (!qword_1EE126CE0)
  {
    type metadata accessor for YahooQuoteDetailItem(255);
    v0 = sub_1DACB91A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE126CE0);
    }
  }
}

uint64_t sub_1DACAA630(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DACAA554(255, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DACAA698(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DACBA104();
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
        v5 = sub_1DACB96C4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1DACAA860(v7, v8, a1, v4);
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
    return sub_1DACAA790(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DACAA790(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_1DACBA174(), (result & 1) == 0))
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

uint64_t sub_1DACAA860(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_1DAC0694C(v8);
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
        sub_1DACAAE3C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
        result = sub_1DACBA174();
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
            result = sub_1DACBA174();
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
      result = sub_1DAADB818(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1DAADB818((v39 > 1), v40 + 1, 1, v8);
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
        sub_1DACAAE3C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1DAC0694C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1DAC068C0(v44);
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
    if (v37 || (result = sub_1DACBA174(), (result & 1) == 0))
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

uint64_t sub_1DACAAE3C(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_1DACBA174() & 1) != 0)
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
      if (!v21 && (sub_1DACBA174() & 1) != 0)
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

void sub_1DACAB064()
{
  if (!qword_1EE127168)
  {
    sub_1DACAB0C0();
    v0 = type metadata accessor for YahooBaseOperation();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE127168);
    }
  }
}

unint64_t sub_1DACAB0C0()
{
  result = qword_1EE127170;
  if (!qword_1EE127170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE127170);
  }

  return result;
}

uint64_t sub_1DACAB124(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1DAB25E98(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = *(v12 + 16);
      v9 = *(v12 + 24);
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      if (v8 >= v9 >> 1)
      {
        sub_1DAB25E98((v9 > 1), v8 + 1, 1);
      }

      v4 += 3;
      *(v12 + 16) = v8 + 1;
      v10 = (v12 + 24 * v8);
      v10[4] = v5;
      v10[5] = v6;
      v10[6] = v7;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1DACAB218(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1DAB25F58(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      v7 = *(v10 + 16);
      v8 = *(v10 + 24);
      sub_1DACB71E4();
      if (v7 >= v8 >> 1)
      {
        sub_1DAB25F58((v8 > 1), v7 + 1, 1);
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 8 * v7 + 32) = v5;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1DACAB2E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YahooQuoteDetailItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DACAB348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1DACB71E4();

    return sub_1DACB71E4();
  }

  return result;
}

uint64_t sub_1DACAB38C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v6 = result;
    v7 = *(a3 + 16);
    v8 = *(type metadata accessor for NetworkEvent() - 8);
    v9 = v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    do
    {
      result = v7(v9, a2, a3);
      v9 += v10;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1DACAB494()
{
  v1 = *v0;
  sub_1DAA58220(0, &qword_1EE11D418, type metadata accessor for Chart, MEMORY[0x1E69D6B18]);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

unint64_t sub_1DACAB518()
{
  result = qword_1ECBE9AD0;
  if (!qword_1ECBE9AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9AD0);
  }

  return result;
}

unint64_t sub_1DACAB580()
{
  result = qword_1ECBE9AD8;
  if (!qword_1ECBE9AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9AD8);
  }

  return result;
}

uint64_t sub_1DACAB5D4()
{
  sub_1DACB8294();
  sub_1DACABC3C(0, &qword_1EE11D3D8, sub_1DAB44A98, MEMORY[0x1E69D6B18]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1DACB8B44();
  v3 = sub_1DACB89D4();
  sub_1DAB449A0();
  v4 = sub_1DACB8A54();

  return v4;
}

uint64_t sub_1DACAB6C8()
{
  sub_1DACABC3C(0, &qword_1EE11D3D8, sub_1DAB44A98, MEMORY[0x1E69D6B18]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DACAB754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = sub_1DAA73914;
  v11[3] = v10;
  v11[4] = a3;
  v11[5] = a4;
  v14[4] = sub_1DACABCF4;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1DAA74E58;
  v14[3] = &block_descriptor_42;
  v12 = _Block_copy(v14);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [a5 setFetchCompletionBlock_];
  _Block_release(v12);
  return sub_1DACB82C4();
}

void sub_1DACAB894(void *a1, void (*a2)(), uint64_t a3, void (*a4)(void))
{
  if ([a1 fetchedObject] && (sub_1DAB44A98(0), (swift_dynamicCast() & 1) != 0))
  {
    a2();
  }

  else
  {
    v7 = [a1 error];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      sub_1DACABCA0();
      v8 = swift_allocError();
    }

    a4();
  }
}

uint64_t sub_1DACAB9A4()
{
  sub_1DACABC3C(0, &qword_1EE11D3D8, sub_1DAB44A98, MEMORY[0x1E69D6B18]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1DACB8B44();
  v3 = sub_1DACB89D4();
  sub_1DAB449A0();
  v4 = sub_1DACB8A54();

  return v4;
}

uint64_t *sub_1DACABA84(uint64_t *result)
{
  v1 = *result;
  if (*result >> 62)
  {
    if (v1 < 0)
    {
      v6 = *result;
    }

    result = sub_1DACB9E14();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_1DACABCA0();
    swift_allocError();
    return swift_willThrow();
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12777A0](0, v1);
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v1 + 32);
LABEL_6:
    sub_1DACABC3C(0, &qword_1EE11D3D0, sub_1DAB449A0, MEMORY[0x1E69D6B18]);
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    return sub_1DACB8AE4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1DACABB8C()
{
  sub_1DACB8294();
  sub_1DACABC3C(0, &qword_1EE11D3D8, sub_1DAB44A98, MEMORY[0x1E69D6B18]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_1DACB8B44();

  return v3;
}

void sub_1DACABC3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1DACABCA0()
{
  result = qword_1ECBE9AE0;
  if (!qword_1ECBE9AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9AE0);
  }

  return result;
}

unint64_t sub_1DACABD14()
{
  result = qword_1ECBE9AE8;
  if (!qword_1ECBE9AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9AE8);
  }

  return result;
}

uint64_t sub_1DACABD7C()
{
  sub_1DACBA284();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DACABDF8()
{
  sub_1DACBA284();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DACABE50@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DACB9F04();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1DACABEE8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DACB9F04();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DACABF40(uint64_t a1)
{
  v2 = sub_1DACACBF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DACABF7C(uint64_t a1)
{
  v2 = sub_1DACACBF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DACABFB8(void *a1, uint64_t a2)
{
  sub_1DACAD424(0, &qword_1ECBE9B18, sub_1DACACBF8, &type metadata for SDSSearchResponse.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DACACBF8();
  sub_1DACBA304();
  v12[1] = a2;
  sub_1DACACC4C();
  sub_1DACACCF0(&qword_1ECBE9B20, sub_1DACACD5C);
  sub_1DACBA0E4();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DACAC17C()
{
  *v0;
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DACAC278@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DACACF78();
  *a2 = result;
  return result;
}

void sub_1DACAC2A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x65676E6168637865;
  v5 = 0xE900000000000065;
  v6 = 0x6D614E74726F6873;
  v7 = 0xEB00000000656D61;
  v8 = 0x4E746361706D6F63;
  if (v2 != 4)
  {
    v8 = 0x79546C6F626D7973;
    v7 = 0xEA00000000006570;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1701667182;
  if (v2 != 1)
  {
    v10 = 0x6C6F626D7973;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1DACAC36C()
{
  v1 = *v0;
  v2 = 0x65676E6168637865;
  v3 = 0x6D614E74726F6873;
  v4 = 0x4E746361706D6F63;
  if (v1 != 4)
  {
    v4 = 0x79546C6F626D7973;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701667182;
  if (v1 != 1)
  {
    v5 = 0x6C6F626D7973;
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

uint64_t sub_1DACAC42C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DACACF78();
  *a1 = result;
  return result;
}

uint64_t sub_1DACAC454(uint64_t a1)
{
  v2 = sub_1DACAD37C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DACAC490(uint64_t a1)
{
  v2 = sub_1DACAD37C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DACAC4CC(void *a1)
{
  v3 = v1;
  sub_1DACAD424(0, &qword_1ECBE9B60, sub_1DACAD37C, &type metadata for SDSSearchResponse.SDSSearchResponseItem.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DACAD37C();
  sub_1DACBA304();
  v12 = *v3;
  v13 = v3[1];
  v30 = 0;
  sub_1DACBA094();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v29 = 1;
    sub_1DACBA094();
    v16 = v3[4];
    v17 = v3[5];
    v28 = 2;
    sub_1DACBA094();
    v18 = v3[8];
    v19 = v3[9];
    v27 = 3;
    sub_1DACBA024();
    v21 = v3[6];
    v22 = v3[7];
    v26 = 4;
    sub_1DACBA024();
    v25 = *(v3 + 80);
    v24 = 5;
    sub_1DACAD48C();
    sub_1DACBA0E4();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DACAC6FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DACAD660();
  *a2 = result;
  return result;
}

unint64_t sub_1DACAC72C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DACAD6AC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

double sub_1DACAC7A8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DACACFC4(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1DACAC81C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1DACAC8DC(v7, v9) & 1;
}

void *sub_1DACAC888@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DACACA04(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DACAC8DC(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_1DACBA174() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 72);
  v7 = *(a2 + 72);
  if (v6)
  {
    if (!v7 || (*(a1 + 64) != *(a2 + 64) || v6 != v7) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a1 + 56);
  v9 = *(a2 + 56);
  if (v8)
  {
    if (v9 && (*(a1 + 48) == *(a2 + 48) && v8 == v9 || (sub_1DACBA174() & 1) != 0))
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_26:
  v10 = *(a2 + 80);
  v11 = *(a1 + 80);

  return sub_1DAC3D738(v11, v10);
}

void *sub_1DACACA04(uint64_t *a1)
{
  sub_1DACAD424(0, &qword_1ECBE9AF0, sub_1DACACBF8, &type metadata for SDSSearchResponse.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v13 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DACACBF8();
  v11 = v10;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DACACC4C();
    sub_1DACACCF0(&qword_1ECBE9B08, sub_1DACACC9C);
    sub_1DACB9FE4();
    (*(v5 + 8))(v8, v4);
    v11 = v13[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

unint64_t sub_1DACACBF8()
{
  result = qword_1ECBE9AF8;
  if (!qword_1ECBE9AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9AF8);
  }

  return result;
}

void sub_1DACACC4C()
{
  if (!qword_1ECBE9B00)
  {
    v0 = sub_1DACB9724();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE9B00);
    }
  }
}

unint64_t sub_1DACACC9C()
{
  result = qword_1ECBE9B10;
  if (!qword_1ECBE9B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9B10);
  }

  return result;
}

uint64_t sub_1DACACCF0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DACACC4C();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DACACD5C()
{
  result = qword_1ECBE9B28;
  if (!qword_1ECBE9B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9B28);
  }

  return result;
}

uint64_t sub_1DACACDC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1DACACE08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DACACE74()
{
  result = qword_1ECBE9B30;
  if (!qword_1ECBE9B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9B30);
  }

  return result;
}

unint64_t sub_1DACACECC()
{
  result = qword_1ECBE9B38;
  if (!qword_1ECBE9B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9B38);
  }

  return result;
}

unint64_t sub_1DACACF24()
{
  result = qword_1ECBE9B40;
  if (!qword_1ECBE9B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9B40);
  }

  return result;
}

uint64_t sub_1DACACF78()
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

uint64_t sub_1DACACFC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  sub_1DACAD424(0, &qword_1ECBE9B48, sub_1DACAD37C, &type metadata for SDSSearchResponse.SDSSearchResponseItem.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DACAD37C();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = a1;
  v12 = v6;
  v13 = v39;
  v46 = 0;
  v14 = v5;
  v15 = sub_1DACB9FA4();
  v17 = v16;
  v38 = v15;
  v45 = 1;
  v18 = sub_1DACB9FA4();
  v20 = v19;
  v37 = v18;
  v44 = 2;
  v35 = sub_1DACB9FA4();
  v36 = v21;
  v43 = 3;
  v33 = sub_1DACB9F34();
  v34 = v22;
  v42 = 4;
  v31 = sub_1DACB9F34();
  v32 = v23;
  v40 = 5;
  sub_1DACAD3D0();
  sub_1DACB9FE4();
  (*(v12 + 8))(v9, v14);
  v24 = v41;
  result = __swift_destroy_boxed_opaque_existential_1(v11);
  v26 = v37;
  *v13 = v38;
  *(v13 + 8) = v17;
  *(v13 + 16) = v26;
  *(v13 + 24) = v20;
  v27 = v36;
  *(v13 + 32) = v35;
  *(v13 + 40) = v27;
  v28 = v32;
  *(v13 + 48) = v31;
  *(v13 + 56) = v28;
  v29 = v34;
  *(v13 + 64) = v33;
  *(v13 + 72) = v29;
  *(v13 + 80) = v24;
  return result;
}

unint64_t sub_1DACAD37C()
{
  result = qword_1ECBE9B50;
  if (!qword_1ECBE9B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9B50);
  }

  return result;
}

unint64_t sub_1DACAD3D0()
{
  result = qword_1ECBE9B58;
  if (!qword_1ECBE9B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9B58);
  }

  return result;
}

void sub_1DACAD424(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1DACAD48C()
{
  result = qword_1ECBE9B68;
  if (!qword_1ECBE9B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9B68);
  }

  return result;
}

unint64_t sub_1DACAD504()
{
  result = qword_1ECBE9B70;
  if (!qword_1ECBE9B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9B70);
  }

  return result;
}

unint64_t sub_1DACAD55C()
{
  result = qword_1ECBE9B78;
  if (!qword_1ECBE9B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9B78);
  }

  return result;
}

unint64_t sub_1DACAD5B4()
{
  result = qword_1ECBE9B80;
  if (!qword_1ECBE9B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9B80);
  }

  return result;
}

unint64_t sub_1DACAD60C()
{
  result = qword_1ECBE9B88;
  if (!qword_1ECBE9B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9B88);
  }

  return result;
}

uint64_t sub_1DACAD660()
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

unint64_t sub_1DACAD6AC(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DACBA2D4();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_1DACBA184();
    LODWORD(v4) = sub_1DACAD660();
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

unint64_t sub_1DACAD780()
{
  result = qword_1ECBE9B90;
  if (!qword_1ECBE9B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9B90);
  }

  return result;
}

uint64_t sub_1DACAD7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v13 = *(a5 + 8);
  v18 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1DAA9A3AC;
  v16.n128_f64[0] = a6;

  return v18(a1, a2, a3, a4, a5, v16);
}

uint64_t sub_1DACAD958@<X0>(uint64_t *a1@<X8>)
{
  sub_1DACB88F4();
  sub_1DAA70078();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1DACB8D74();
  *a1 = result;
  return result;
}

uint64_t sub_1DACAD9D4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v5 + 2168) = v4;
  *(v5 + 2120) = a3;
  *(v5 + 2072) = a4;
  *(v5 + 2024) = a2;
  *(v5 + 1976) = a1;
  sub_1DACB17E4(0, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant, MEMORY[0x1E69E6720]);
  *(v5 + 2216) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 2264) = swift_task_alloc();
  *(v5 + 2312) = swift_task_alloc();
  *(v5 + 2360) = swift_task_alloc();
  *(v5 + 2368) = swift_task_alloc();
  v8 = sub_1DACB8204();
  *(v5 + 2376) = v8;
  v9 = *(v8 - 8);
  *(v5 + 2384) = v9;
  *(v5 + 2392) = *(v9 + 64);
  *(v5 + 2400) = swift_task_alloc();
  *(v5 + 2408) = swift_task_alloc();
  *(v5 + 2416) = swift_task_alloc();
  v10 = *(type metadata accessor for RawAttributionSourceLogo.Unresolved(0) - 8);
  *(v5 + 2424) = v10;
  *(v5 + 2432) = *(v10 + 64);
  *(v5 + 2440) = swift_task_alloc();
  *(v5 + 2448) = swift_task_alloc();
  *(v5 + 2456) = swift_task_alloc();
  v11 = type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0);
  *(v5 + 2464) = v11;
  v12 = *(v11 - 8);
  *(v5 + 2472) = v12;
  v13 = *(v12 + 64) + 15;
  *(v5 + 2480) = swift_task_alloc();
  *(v5 + 2488) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DACADC28, 0, 0);
}

uint64_t sub_1DACADC28()
{
  v23 = v0[308];
  v24 = v0[311];
  v32 = v0[307];
  v1 = v0[304];
  v2 = v0[303];
  v3 = v0[302];
  v21 = v3;
  v25 = v0[306];
  v26 = v0[301];
  v28 = v0[305];
  v29 = v0[300];
  v34 = v0[299];
  v4 = v0[298];
  v5 = v0[297];
  v27 = v0[296];
  v30 = v0[295];
  v38 = v0[277];
  v31 = v0[271];
  v6 = v0[265];
  v35 = v6;
  v7 = v0[259];
  v37 = v0[253];
  sub_1DACB1910(v37, v32, type metadata accessor for RawAttributionSourceLogo.Unresolved);
  v36 = *(v4 + 16);
  v36(v3, v6, v5);
  v8 = *(v2 + 80);
  v9 = (v8 + 24) & ~v8;
  v22 = v1 + 7;
  v10 = (v9 + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v4 + 80);
  v12 = swift_allocObject();
  v0[312] = v12;
  *(v12 + 16) = v31;
  sub_1DACB1848(v32, v12 + v9, type metadata accessor for RawAttributionSourceLogo.Unresolved);
  *(v12 + v10) = v7;
  v33 = *(v4 + 32);
  v33(v12 + ((v10 + v11 + 8) & ~v11), v21, v5);
  sub_1DACB71F4();
  swift_asyncLet_begin();
  sub_1DACB1910(v37, v25, type metadata accessor for RawAttributionSourceLogo.Unresolved);
  v36(v26, v6, v5);
  v13 = (v8 + 16) & ~v8;
  v14 = (v13 + v22) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + v11 + 8) & ~v11;
  v17 = swift_allocObject();
  v0[313] = v17;
  sub_1DACB1848(v25, v17 + v13, type metadata accessor for RawAttributionSourceLogo.Unresolved);
  *(v17 + v14) = v31;
  *(v17 + v15) = v7;
  v33(v17 + v16, v26, v5);
  sub_1DACB71F4();
  swift_asyncLet_begin();
  sub_1DACB1910(v37, v28, type metadata accessor for RawAttributionSourceLogo.Unresolved);
  v36(v29, v35, v5);
  v18 = swift_allocObject();
  v0[314] = v18;
  sub_1DACB1848(v28, v18 + v13, type metadata accessor for RawAttributionSourceLogo.Unresolved);
  *(v18 + v14) = v31;
  *(v18 + v15) = v7;
  v33(v18 + v16, v29, v5);
  sub_1DACB71F4();
  swift_asyncLet_begin();
  v19 = v0[311];

  return MEMORY[0x1EEE6DEC0](v0 + 2, v19, sub_1DACADFF0, v0 + 242);
}

uint64_t sub_1DACADFF0()
{
  v1[315] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DACAE4B4, 0, 0);
  }

  else
  {
    sub_1DACB1910(v1[311], v1[310], type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    v2 = v1[296];

    return MEMORY[0x1EEE6DEC0](v1 + 82, v2, sub_1DACAE0B4, v1 + 266);
  }
}

uint64_t sub_1DACAE0B4()
{
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DACAE6A0, 0, 0);
  }

  else
  {
    sub_1DACB171C(v1[296], v1[289]);
    v2 = v1[295];

    return MEMORY[0x1EEE6DEC0](v1 + 162, v2, sub_1DACAE168, v1 + 272);
  }
}

uint64_t sub_1DACAE168()
{
  if (v0)
  {

    v1 = sub_1DACAE728;
  }

  else
  {
    v1 = sub_1DACAE1E4;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1DACAE1E4()
{
  sub_1DACB171C(v0[295], v0[283]);
  v1 = v0[289];
  v2 = v0[283];
  v3 = v0[247];
  sub_1DACB1848(v0[310], v3, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v4 = type metadata accessor for RawAttributionSourceLogo.Resolved(0);
  sub_1DACB1C8C(v1, v3 + *(v4 + 20), qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  sub_1DACB1C8C(v2, v3 + *(v4 + 24), qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v5 = v0[295];

  return MEMORY[0x1EEE6DEB0](v0 + 162, v5, sub_1DACAE2E8, v0 + 278);
}

uint64_t sub_1DACAE37C()
{
  v1 = v0[314];
  v2 = v0[313];
  v3 = v0[312];
  v4 = v0[311];
  v5 = v0[310];
  v6 = v0[307];
  v7 = v0[306];
  v8 = v0[305];
  v9 = v0[302];
  v10 = v0[301];
  v13 = v0[300];
  v14 = v0[296];
  v15 = v0[295];
  v16 = v0[289];
  v17 = v0[283];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1DACAE568()
{
  v1 = v0[314];
  v2 = v0[313];
  v3 = v0[312];
  v4 = v0[311];
  v5 = v0[310];
  v6 = v0[307];
  v7 = v0[306];
  v8 = v0[305];
  v9 = v0[302];
  v10 = v0[301];
  v14 = v0[300];
  v15 = v0[296];
  v16 = v0[295];
  v17 = v0[289];
  v18 = v0[283];

  v11 = v0[1];
  v12 = v0[315];

  return v11();
}

uint64_t sub_1DACAE6A0()
{
  (*(v0[309] + 56))(v0[289], 1, 1, v0[308]);
  v1 = v0[295];

  return MEMORY[0x1EEE6DEC0](v0 + 162, v1, sub_1DACAE168, v0 + 272);
}

uint64_t sub_1DACAE728()
{
  (*(v0[309] + 56))(v0[283], 1, 1, v0[308]);
  v1 = v0[289];
  v2 = v0[283];
  v3 = v0[247];
  sub_1DACB1848(v0[310], v3, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v4 = type metadata accessor for RawAttributionSourceLogo.Resolved(0);
  sub_1DACB1C8C(v1, v3 + *(v4 + 20), qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  sub_1DACB1C8C(v2, v3 + *(v4 + 24), qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v5 = v0[295];

  return MEMORY[0x1EEE6DEB0](v0 + 162, v5, sub_1DACAE2E8, v0 + 278);
}

uint64_t sub_1DACAE844(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a4;
  v9 = swift_task_alloc();
  v5[4] = v9;
  *v9 = v5;
  v9[1] = sub_1DACAE8FC;

  return sub_1DACAF4E4(a4, a5, a2);
}

uint64_t sub_1DACAE8FC(uint64_t a1, uint64_t a2, double a3)
{
  v8 = *v4;
  v9 = *(*v4 + 32);
  v10 = *v4;

  if (v3)
  {
    v11 = *(v10 + 8);

    return v11();
  }

  else
  {
    *(v8 + 40) = a3;
    *(v8 + 48) = a2;
    *(v8 + 56) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DACAEA60, 0, 0);
  }
}

uint64_t sub_1DACAEA60()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v6 = *(v4 + *(type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0) + 20));
  v7 = type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0);
  sub_1DACB1910(v4, v5 + *(v7 + 28), type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  *v5 = v1;
  v5[1] = v2;
  v5[2] = v3;
  v5[3] = v6;
  v8 = v0[1];

  return v8();
}

uint64_t sub_1DACAEB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 48) = a4;
  *(v5 + 40) = a5;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  sub_1DACB17B0(0);
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  v8 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  *(v5 + 64) = v8;
  v9 = *(v8 - 8);
  *(v5 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DACAEC14, 0, 0);
}

uint64_t sub_1DACAEC14()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v3 = *(v0 + 7);
  v4 = *(v0 + 3);
  v5 = type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
  sub_1DACB1910(v4 + *(v5 + 20), v3, sub_1DACB17B0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 2);
    sub_1DACB18B0(*(v0 + 7), sub_1DACB17B0);
    v7 = type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = *(v0 + 10);
    v9 = *(v0 + 7);

    v10 = *(v0 + 1);

    return v10();
  }

  else
  {
    sub_1DACB1848(*(v0 + 7), *(v0 + 10), type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    v12 = swift_task_alloc();
    *(v0 + 11) = v12;
    *v12 = v0;
    v12[1] = sub_1DACAEDE4;
    v13 = *(v0 + 10);
    v14 = *(v0 + 6);
    v15 = v0[5];
    v16 = *(v0 + 4);

    return sub_1DACAF4E4(v13, v14, v15);
  }
}

uint64_t sub_1DACAEDE4(uint64_t a1, uint64_t a2, double a3)
{
  v8 = *v4;
  v9 = *(*v4 + 88);
  v10 = *v4;
  *(*v4 + 96) = v3;

  if (v3)
  {
    v11 = sub_1DACAF050;
  }

  else
  {
    *(v8 + 104) = a3;
    *(v8 + 112) = a2;
    *(v8 + 120) = a1;
    v11 = sub_1DACAEF20;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1DACAEF20()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[2];
  v6 = *(v4 + *(v0[8] + 20));
  v7 = type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0);
  sub_1DACB1910(v4, v5 + *(v7 + 28), type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  *v5 = v1;
  v5[1] = v2;
  v5[2] = v3;
  v5[3] = v6;
  sub_1DACB18B0(v4, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  v8 = v0[10];
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1DACAF050()
{
  v1 = v0[7];
  sub_1DACB18B0(v0[10], type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_1DACAF0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 48) = a4;
  *(v5 + 40) = a5;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  sub_1DACB17B0(0);
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  v8 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  *(v5 + 64) = v8;
  v9 = *(v8 - 8);
  *(v5 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DACAF1D8, 0, 0);
}

uint64_t sub_1DACAF1D8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v3 = *(v0 + 7);
  v4 = *(v0 + 3);
  v5 = type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
  sub_1DACB1910(v4 + *(v5 + 24), v3, sub_1DACB17B0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 2);
    sub_1DACB18B0(*(v0 + 7), sub_1DACB17B0);
    v7 = type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = *(v0 + 10);
    v9 = *(v0 + 7);

    v10 = *(v0 + 1);

    return v10();
  }

  else
  {
    sub_1DACB1848(*(v0 + 7), *(v0 + 10), type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    v12 = swift_task_alloc();
    *(v0 + 11) = v12;
    *v12 = v0;
    v12[1] = sub_1DACAF3A8;
    v13 = *(v0 + 10);
    v14 = *(v0 + 6);
    v15 = v0[5];
    v16 = *(v0 + 4);

    return sub_1DACAF4E4(v13, v14, v15);
  }
}

uint64_t sub_1DACAF3A8(uint64_t a1, uint64_t a2, double a3)
{
  v8 = *v4;
  v9 = *(*v4 + 88);
  v10 = *v4;
  *(*v4 + 96) = v3;

  if (v3)
  {
    v11 = sub_1DACB21A8;
  }

  else
  {
    *(v8 + 104) = a3;
    *(v8 + 112) = a2;
    *(v8 + 120) = a1;
    v11 = sub_1DACB21AC;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1DACAF4E4(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = v3;
  *(v4 + 80) = a3;
  *(v4 + 72) = a1;
  v5 = sub_1DACB8344();
  *(v4 + 104) = v5;
  v6 = *(v5 - 8);
  *(v4 + 112) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 120) = swift_task_alloc();
  v8 = sub_1DACB8204();
  *(v4 + 128) = v8;
  v9 = *(v8 - 8);
  *(v4 + 136) = v9;
  *(v4 + 144) = *(v9 + 64);
  *(v4 + 152) = swift_task_alloc();
  v10 = sub_1DACB7AB4();
  *(v4 + 160) = v10;
  v11 = *(v10 - 8);
  *(v4 + 168) = v11;
  *(v4 + 176) = *(v11 + 64);
  *(v4 + 184) = swift_task_alloc();
  v12 = sub_1DACB81B4();
  *(v4 + 192) = v12;
  v13 = *(v12 - 8);
  *(v4 + 200) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 208) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DACAF6D0, 0, 0);
}

uint64_t sub_1DACAF6D0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 72);
  sub_1DACB17E4(0, &qword_1EE1252D8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6F90]);
  v4 = *(v2 + 72);
  v5 = *(v2 + 80);
  v44 = ~v5;
  v6 = (v5 + 32) & ~v5;
  v41 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DACC1D20;
  v45 = *(v2 + 16);
  v45(v7 + v6, v3, v1);
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D648 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 200);
  v8 = *(v0 + 208);
  v34 = v8;
  v11 = *(v0 + 184);
  v10 = *(v0 + 192);
  v37 = v10;
  v38 = v9;
  v30 = *(v0 + 176);
  v32 = *(v0 + 168);
  v40 = *(v0 + 160);
  v43 = *(v0 + 152);
  v12 = *(v0 + 136);
  v33 = *(v0 + 144);
  v42 = *(v0 + 128);
  v39 = *(v0 + 112);
  v35 = *(v0 + 120);
  v36 = *(v0 + 104);
  v13 = *(v0 + 96);
  v14 = *(v0 + 80);
  v15 = *(v0 + 72);
  v28 = v15;
  v29 = *(v0 + 88);
  sub_1DACB7FE4();

  v16 = MEMORY[0x1E69D63C0];
  if (!*(v0 + 240))
  {
    v16 = MEMORY[0x1E69D63C8];
  }

  (*(v9 + 104))(v8, *v16, v10);
  sub_1DACB1B60(0, &qword_1EE11FED8, MEMORY[0x1E69D6B00]);
  sub_1DAA4D678(v13 + 24, v0 + 16);
  v45(v11, v15, v40);
  (*(v12 + 16))(v43, v29, v42);
  v17 = (v41 + 56) & v44;
  v31 = v30 + 7;
  v18 = (v31 + v17) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + *(v12 + 80) + 8) & ~*(v12 + 80);
  v20 = swift_allocObject();
  sub_1DAA4D460((v0 + 16), v20 + 16);
  v21 = *(v32 + 32);
  v21(v20 + v17, v11, v40);
  *(v20 + v18) = v14;
  (*(v12 + 32))(v20 + v19, v43, v42);
  v45(v11, v28, v40);
  v22 = (v41 + 24) & v44;
  v46 = swift_allocObject();
  *(v46 + 16) = v13;
  v21(v46 + v22, v11, v40);
  *(v46 + ((v31 + v22) & 0xFFFFFFFFFFFFFFF8)) = v14;
  v23 = *(v13 + 64);
  sub_1DACB1B18(&qword_1EE11F120, MEMORY[0x1E6968FB0]);
  swift_retain_n();
  v24 = sub_1DACBA114();
  MEMORY[0x1E1276F20](v24);

  *(v0 + 64) = MEMORY[0x1E69E7CC0];
  sub_1DACB1B18(&qword_1EE1255B0, MEMORY[0x1E69D6528]);
  sub_1DAA7A378(0);
  sub_1DACB1B18(&qword_1EE125518, sub_1DAA7A378);
  sub_1DACB9BB4();
  *(v0 + 216) = sub_1DACB89F4();

  (*(v39 + 8))(v35, v36);
  (*(v38 + 8))(v34, v37);
  v25 = *(MEMORY[0x1E69D6B08] + 4);
  v26 = swift_task_alloc();
  *(v0 + 224) = v26;
  *v26 = v0;
  v26[1] = sub_1DACAFCB0;

  return MEMORY[0x1EEE44EE0](v0 + 56);
}

uint64_t sub_1DACAFCB0()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_1DACAFECC;
  }

  else
  {
    v5 = *(v2 + 216);

    v4 = sub_1DACAFDCC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DACAFDCC()
{
  v1 = v0[7];
  if (*(v1 + 16) && (v2 = sub_1DAB0979C(v0[9]), (v3 & 1) != 0))
  {
    v4 = v0[26];
    v5 = v0[23];
    v6 = v0[19];
    v7 = v0[15];
    v8 = (*(v1 + 56) + 24 * v2);
    v9 = *v8;
    v10 = v8[1];
    v11 = v8[2];
    sub_1DAB0B080(*v8, v10);

    v12 = v0[1];
    v13.n128_u64[0] = v11;

    return v12(v9, v10, v13);
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_1DACAFECC()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[23];
  v4 = v0[19];
  v5 = v0[15];

  v6 = v0[1];
  v7 = v0[29];

  return v6();
}

uint64_t sub_1DACAFF64(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a3;
  v8 = sub_1DACB8204();
  v23[0] = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DACB7AB4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB17E4(0, &qword_1EE11FE80, sub_1DAA6FF74, MEMORY[0x1E69D6B18]);
  v23[1] = v16;
  (*(v13 + 16))(v15, a4, v12);
  sub_1DAA4D678(v24, v25);
  (*(v9 + 16))(v11, a5, v8);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 47) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v9 + 80) + v19 + 8) & ~*(v9 + 80);
  v21 = swift_allocObject();
  (*(v13 + 32))(v21 + v17, v15, v12);
  sub_1DAA4D460(v25, v21 + v18);
  *(v21 + v19) = a1;
  (*(v9 + 32))(v21 + v20, v11, v23[0]);
  return sub_1DACB8A44();
}

uint64_t sub_1DACB01F0(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a5;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DACB0218, 0, 0);
}

uint64_t sub_1DACB0218()
{
  v1 = *(v0 + 24);
  sub_1DACB17E4(0, &qword_1EE11F548, sub_1DACB1FD4, MEMORY[0x1E69E6F90]);
  sub_1DACB1FD4();
  *(v0 + 48) = v2;
  v3 = *(*(v2 - 8) + 72);
  v4 = *(*(v2 - 8) + 80);
  *(v0 + 120) = v4;
  v5 = (v4 + 32) & ~v4;
  v6 = swift_allocObject();
  *(v0 + 56) = v6;
  *(v6 + 16) = xmmword_1DACC1D20;
  v7 = sub_1DACB7AB4();
  *(v0 + 64) = v7;
  v8 = *(v7 - 8);
  *(v0 + 72) = v8;
  (*(v8 + 16))(v6 + v5, v1, v7);
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = sub_1DACB03E8;
  v10 = *(v0 + 40);
  v11 = *(v0 + 32);
  v12 = *(v0 + 24);

  return sub_1DAB0B90C(v12, v10, v11);
}

uint64_t sub_1DACB03E8(uint64_t a1, uint64_t a2, double a3)
{
  v8 = *v4;
  v9 = *(*v4 + 80);
  v10 = *v4;
  *(*v4 + 88) = v3;

  if (v3)
  {
    v11 = sub_1DACB060C;
  }

  else
  {
    v12 = *(v8 + 48);
    *(v8 + 96) = a3;
    *(v8 + 104) = a2;
    *(v8 + 112) = a1;
    *(v8 + 124) = *(v12 + 48);
    v11 = sub_1DACB0530;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1DACB0530()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);
  v4 = v2 + ((*(v0 + 120) + 32) & ~*(v0 + 120));
  v5 = (v4 + *(v0 + 124));
  *v5 = vextq_s8(*(v0 + 104), *(v0 + 104), 8uLL);
  v5[1].i64[0] = v1;
  v6 = sub_1DAB69C14(v2);
  swift_setDeallocating();
  sub_1DACB18B0(v4, sub_1DACB1FD4);
  swift_deallocClassInstance();
  *v3 = v6;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1DACB060C()
{
  v1 = *(v0 + 48);
  (*(*(v0 + 72) + 8))(*(v0 + 56) + ((*(v0 + 120) + 32) & ~*(v0 + 120)), *(v0 + 64));
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v2 = *(v0 + 8);
  v3 = *(v0 + 88);

  return v2();
}

uint64_t sub_1DACB06C0(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1DACB7AB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DACB17E4(0, &qword_1EE11FE80, sub_1DAA6FF74, MEMORY[0x1E69D6B18]);
  (*(v9 + 16))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v8);
  v11 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  (*(v9 + 32))(v12 + v11, &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v12 + ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  sub_1DACB71F4();
  return sub_1DACB8A94();
}

unint64_t sub_1DACB085C@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v4 = sub_1DACB1E78();
  if (v5 >> 60 == 15)
  {
    result = sub_1DAB69C14(MEMORY[0x1E69E7CC0]);
    v8 = result;
  }

  else
  {
    v9 = v4;
    v10 = v5;
    v11 = v6;
    sub_1DACB17E4(0, &qword_1EE11F548, sub_1DACB1FD4, MEMORY[0x1E69E6F90]);
    sub_1DACB1FD4();
    v13 = v12 - 8;
    v14 = *(*(v12 - 8) + 72);
    v15 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1DACC1D20;
    v17 = v16 + v15;
    v18 = (v17 + *(v13 + 56));
    v19 = sub_1DACB7AB4();
    (*(*(v19 - 8) + 16))(v17, a1, v19);
    *v18 = v9;
    v18[1] = v10;
    v18[2] = v11;
    v8 = sub_1DAB69C14(v16);
    swift_setDeallocating();
    sub_1DACB18B0(v17, sub_1DACB1FD4);
    result = swift_deallocClassInstance();
  }

  *a2 = v8;
  return result;
}

uint64_t sub_1DACB0A28(uint64_t a1, uint64_t a2)
{
  sub_1DACB17E4(0, &qword_1EE11FE80, sub_1DAA6FF74, MEMORY[0x1E69D6B18]);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DACB71E4();
  sub_1DACB71F4();
  return sub_1DACB8A94();
}

uint64_t sub_1DACB0ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v52 = a3;
  v62 = a2;
  v4 = sub_1DACB7AB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v51 - v10;
  sub_1DACB17E4(0, &qword_1EE11F128, sub_1DACB1C20, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v63 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v51 - v15;
  v17 = *(a1 + 64);
  v54 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v53 = (v18 + 63) >> 6;
  v55 = v5 + 16;
  v65 = (v5 + 32);
  v58 = v5;
  v59 = a1;
  v60 = (v5 + 8);
  result = sub_1DACB71E4();
  v22 = 0;
  v61 = v4;
  v56 = v16;
  v64 = v9;
  while (v20)
  {
    v23 = v22;
LABEL_14:
    v27 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v28 = v27 | (v23 << 6);
    v30 = v58;
    v29 = v59;
    v31 = v57;
    (*(v58 + 16))(v57, *(v59 + 48) + *(v58 + 72) * v28, v4);
    v32 = (*(v29 + 56) + 24 * v28);
    v33 = *v32;
    v66 = v32[1];
    v34 = v32[2];
    sub_1DACB1C20();
    v36 = v35;
    v37 = v63;
    v38 = &v63[*(v35 + 48)];
    (*(v30 + 32))(v63, v31, v4);
    v39 = v33;
    *v38 = v33;
    v40 = v66;
    *(v38 + 1) = v66;
    *(v38 + 2) = v34;
    v26 = v37;
    (*(*(v36 - 8) + 56))(v37, 0, 1, v36);
    sub_1DAB0B080(v39, v40);
    v25 = v23;
    v16 = v56;
LABEL_15:
    sub_1DACB1C8C(v26, v16, &qword_1EE11F128, sub_1DACB1C20);
    sub_1DACB1C20();
    v41 = (*(*(v36 - 8) + 48))(v16, 1, v36);
    v42 = v64;
    if (v41 == 1)
    {
      v50 = v59;

      *v52 = v50;
      return sub_1DACB71E4();
    }

    v66 = v25;
    v43 = &v16[*(v36 + 48)];
    v44 = *v43;
    v45 = v43[1];
    v46 = v43[2];
    v47 = v61;
    (*v65)(v64, v16, v61);
    v48 = *(v62 + 16);
    sub_1DACB88F4();
    if (v67)
    {
      sub_1DACB79C4();
      v67 = v44;
      v68 = v45;
      v69 = v46;
      sub_1DAB0B080(v44, v45);
      v42 = v64;
      sub_1DACB8DC4();
    }

    sub_1DAA563C0(v44, v45);
    result = (*v60)(v42, v47);
    v22 = v66;
    v4 = v47;
  }

  if (v53 <= (v22 + 1))
  {
    v24 = v22 + 1;
  }

  else
  {
    v24 = v53;
  }

  v25 = v24 - 1;
  v26 = v63;
  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v53)
    {
      sub_1DACB1C20();
      v36 = v49;
      (*(*(v49 - 8) + 56))(v26, 1, 1, v49);
      v20 = 0;
      goto LABEL_15;
    }

    v20 = *(v54 + 8 * v23);
    ++v22;
    if (v20)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DACB0FC8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DAA94754;

  return sub_1DACAD9D4(a1, a2, a3, a4);
}

uint64_t sub_1DACB108C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RawAttributionSourceLogo.Unresolved(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1DACB8204() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + v7);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1DAA9A3AC;

  return sub_1DACAE844(a1, v11, v10, v1 + v6, v1 + v9);
}

uint64_t sub_1DACB11F4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RawAttributionSourceLogo.Unresolved(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_1DACB8204() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1DAA9A3AC;

  return sub_1DACAEB1C(a1, v1 + v6, v11, v1 + v10, v12);
}

uint64_t objectdestroy_7Tm()
{
  v1 = type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
  v2 = *(*(v1 - 8) + 80);
  v16 = *(*(v1 - 8) + 64);
  v18 = sub_1DACB8204();
  v3 = *(v18 - 8);
  v4 = *(v3 + 80);
  v17 = *(v3 + 64);
  v19 = v0;
  v5 = v0 + ((v2 + 16) & ~v2);
  v6 = sub_1DACB7AB4();
  v15 = *(*(v6 - 8) + 8);
  v15(v5, v6);
  v7 = *(v1 + 20);
  v8 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  v9 = *(*(v8 - 8) + 48);
  if (!v9(v5 + v7, 1, v8))
  {
    v15(v5 + v7, v6);
  }

  v10 = *(v1 + 24);
  if (!v9(v5 + v10, 1, v8))
  {
    v15(v5 + v10, v6);
  }

  v11 = (v16 + ((v2 + 16) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + v4 + 8) & ~v4;
  v13 = *(v19 + v11);

  (*(v3 + 8))(v19 + v12, v18);

  return MEMORY[0x1EEE6BDD0](v19, v12 + v17, v2 | v4 | 7);
}

uint64_t sub_1DACB15AC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RawAttributionSourceLogo.Unresolved(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_1DACB8204() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1DAA9A3AC;

  return sub_1DACAF0E0(a1, v1 + v6, v11, v1 + v10, v12);
}

uint64_t sub_1DACB171C(uint64_t a1, uint64_t a2)
{
  sub_1DACB17E4(0, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DACB17E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DACB1848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DACB18B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DACB1910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DACB1978(uint64_t a1)
{
  v3 = *(sub_1DACB7AB4() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1DACB8204() - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_1DACAFF64(v7, a1, v1 + 16, v1 + v4, v8);
}

uint64_t sub_1DACB1A60(uint64_t a1, double a2)
{
  v5 = *(sub_1DACB7AB4() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_1DACB06C0(a2, v7, a1, v8, v2 + v6);
}

uint64_t sub_1DACB1B18(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DACB1B60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DACB7AB4();
    v7 = sub_1DACB1B18(&qword_1EE1263D8, MEMORY[0x1E6968FB0]);
    v8 = a3(a1, v6, &type metadata for DownloadedImage, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DACB1C20()
{
  if (!qword_1EE11F130)
  {
    sub_1DACB7AB4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11F130);
    }
  }
}

uint64_t sub_1DACB1C8C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1DACB17E4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_30Tm()
{
  v1 = sub_1DACB7AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

unint64_t sub_1DACB1DDC@<X0>(unint64_t *a1@<X8>)
{
  v3 = *(sub_1DACB7AB4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1DACB085C(v1 + v4, a1);
}

uint64_t sub_1DACB1E78()
{
  v1 = *(v0 + 16);
  sub_1DACB88F4();
  if (!v7)
  {
    return 0;
  }

  sub_1DACB79C4();
  sub_1DACB8DB4();

  if (v8 >> 60 == 15)
  {
    return 0;
  }

  if (qword_1EE11D360 != -1)
  {
    swift_once();
  }

  v3 = sub_1DACB8C94();
  __swift_project_value_buffer(v3, qword_1EE11D368);
  v4 = sub_1DACB8C74();
  v5 = sub_1DACB9914();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DAA3F000, v4, v5, "Using cached attribution source logo", v6, 2u);
    MEMORY[0x1E1278C00](v6, -1, -1);
  }

  return v7;
}

void sub_1DACB1FD4()
{
  if (!qword_1EE123A68)
  {
    sub_1DACB7AB4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE123A68);
    }
  }
}

uint64_t sub_1DACB203C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1DACB7AB4() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_1DACB8204() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + v8);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1DAA94754;

  return sub_1DACB01F0(a1, v1 + v6, v11, v1 + v7, v1 + v10);
}