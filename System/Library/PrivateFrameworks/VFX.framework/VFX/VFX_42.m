uint64_t sub_1AF457B9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF459810();
  *a1 = result;
  return result;
}

void sub_1AF457BCC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x676E696E726177;
  if (v2 != 1)
  {
    v5 = 1702129518;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x726F727265;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1AF457C20()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF457CB8()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF457D3C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF457DD0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v1);
  MEMORY[0x1B271ACB0](v2);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF457E2C()
{
  v1 = v0[1];
  MEMORY[0x1B271ACB0](*v0);
  return MEMORY[0x1B271ACB0](v1);
}

uint64_t sub_1AF457E68()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v1);
  MEMORY[0x1B271ACB0](v2);
  return sub_1AFDFF2F8();
}

double sub_1AF457EEC()
{
  sub_1AF458ABC();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C680;
  v1 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v2 = sub_1AF45812C(0xD00000000000003ALL, 0x80000001AFF28B70, 16);
  *(v0 + 32) = 0xD00000000000003ALL;
  *(v0 + 40) = 0x80000001AFF28B70;
  *(v0 + 48) = 3;
  *(v0 + 56) = 0;
  *(v0 + 64) = xmmword_1AFE505C0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 2;
  *(v0 + 96) = 0;
  *(v0 + 104) = 4;
  *(v0 + 112) = 0;
  *(v0 + 120) = v2;
  v3 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v4 = sub_1AF45812C(0xD00000000000001FLL, 0x80000001AFF28BD0, 16);
  *(v0 + 128) = 0xD00000000000001FLL;
  *(v0 + 136) = 0x80000001AFF28BD0;
  *(v0 + 144) = 3;
  *(v0 + 152) = 0;
  *(v0 + 160) = xmmword_1AFE42AF0;
  *(v0 + 176) = 0;
  *(v0 + 184) = 2;
  *(v0 + 192) = 0;
  *(v0 + 200) = 0;
  *(v0 + 208) = 1;
  *(v0 + 216) = v4;
  v5 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v6 = sub_1AF45812C(0xD000000000000013, 0x80000001AFF28BF0, 16);
  *(v0 + 224) = 0xD000000000000013;
  *(v0 + 232) = 0x80000001AFF28BF0;
  *(v0 + 240) = 1;
  *(v0 + 248) = 0;
  *&result = 2;
  *(v0 + 256) = xmmword_1AFE505D0;
  *(v0 + 272) = 1;
  *(v0 + 280) = 0;
  *(v0 + 288) = 1;
  *(v0 + 296) = 0;
  *(v0 + 304) = 1;
  *(v0 + 312) = v6;
  off_1EB638F90 = v0;
  return result;
}

id sub_1AF45812C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1AFDFCEC8();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1AFDFBF58();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1AF458208()
{
  sub_1AF4486E4();
  v0 = sub_1AFDFDE98();
  v1 = (v0 + 40);
  v2 = -*(v0 + 16);
  v3 = 2;
  while (v2 + v3 != 2)
  {
    v4 = v3;
    if (*(v1 - 1) != 0xD000000000000020 || 0x80000001AFF25E80 != *v1)
    {
      v6 = sub_1AFDFEE28();
      v3 = v4 + 1;
      v1 += 2;
      if ((v6 & 1) == 0)
      {
        continue;
      }
    }

    return v4;
  }

  return 0;
}

char *sub_1AF458308(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  sub_1AF4486E4();
  v5 = sub_1AFDFDE98();
  v73 = *(v5 + 16);
  if (v73)
  {
    v6 = 0;
    v66 = v5;
    v69 = (a4 & 1) == 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = qword_1EB636C40;

      if (v8 != -1)
      {
        swift_once();
      }

      v9 = *(off_1EB638F90 + 2);
      if (v9)
      {
        break;
      }

LABEL_4:
      if (++v6 == v73)
      {

        goto LABEL_48;
      }
    }

    v74 = v6;
    v75 = v7;
    v10 = off_1EB638F90 + 64;
    while (1)
    {
      v84 = *(v10 - 2);
      v83 = *(v10 - 8);
      v78 = *(v10 + 1);
      v79 = *v10;
      v81 = v10[16];
      v77 = *(v10 + 3);
      v76 = v10[32];
      v11 = *(v10 + 5);
      v12 = v10[48];
      v13 = *(v10 + 7);

      v14 = v13;
      v15 = sub_1AFDFCEC8();
      sub_1AF458A0C();
      sub_1AF458A64();

      v16 = sub_1AFDFDC78();
      v18 = [v14 firstMatchInString:v15 options:0 range:{v16, v17}];

      if (v18)
      {
        break;
      }

      v10 += 96;
      if (!--v9)
      {

        v6 = v74;
        goto LABEL_4;
      }
    }

    v70 = v12;
    [v18 rangeAtIndex_];
    sub_1AFDFD988();
    v19 = sub_1AFDFD1F8();
    v80 = MEMORY[0x1B27189E0](v19);
    v71 = v20;

    v72 = v14;
    if (v81)
    {
      v85 = 1;
      if ((v76 & 1) == 0)
      {
LABEL_14:
        [v18 rangeAtIndex_];
        sub_1AFDFD988();
        v21 = sub_1AFDFD1F8();
        v22 = MEMORY[0x1B27189E0](v21);
        v24 = v23;

        v25 = sub_1AF878D44(v22, v24);
        if (v26)
        {
          v27 = 1;
        }

        else
        {
          v27 = v25;
        }

        goto LABEL_22;
      }
    }

    else
    {
      [v18 rangeAtIndex_];
      sub_1AFDFD988();
      v28 = sub_1AFDFD1F8();
      v29 = MEMORY[0x1B27189E0](v28);
      v31 = v30;

      v32 = sub_1AF878D44(v29, v31);
      if (v33)
      {
        v34 = 1;
      }

      else
      {
        v34 = v32;
      }

      v85 = v34;
      if ((v76 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v27 = 1;
LABEL_22:
    v82 = v27;
    if (v70)
    {
      v35 = 0;
      v36 = 1;
    }

    else
    {
      [v18 rangeAtIndex_];
      sub_1AFDFD988();
      v37 = sub_1AFDFD1F8();
      v38 = MEMORY[0x1B27189E0](v37);
      v40 = v39;

      v35 = sub_1AF878D44(v38, v40);
      v36 = v41;
    }

    v42 = v85;
    if (v83)
    {

      v43 = 0;
      v7 = v75;
      v44 = v82;
    }

    else
    {
      [v18 rangeAtIndex_];
      sub_1AFDFD988();
      v45 = sub_1AFDFD1F8();
      v47 = v46;
      v49 = v48;
      v51 = v50;

      v52 = MEMORY[0x1B27189E0](v45, v47, v49, v51);
      v54 = v53;

      if (v52 == 0x676E696E726177 && v54 == 0xE700000000000000)
      {

        v43 = 1;
        v7 = v75;
        v42 = v85;
        v44 = v82;
      }

      else
      {
        v7 = v75;
        v42 = v85;
        if ((sub_1AFDFEE28() & 1) == 0)
        {
          v44 = v82;
          if (v52 == 1702129518 && v54 == 0xE400000000000000)
          {
          }

          else
          {
            v55 = sub_1AFDFEE28();

            v43 = 0;
            if ((v55 & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          v43 = 2;
          goto LABEL_37;
        }

        v43 = 1;
        v44 = v82;
      }
    }

LABEL_37:
    v56 = v69 + v42;
    if (v69 + v42 <= 1)
    {
      v56 = 1;
    }

    if (v36)
    {
      v35 = v56;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1AF421C6C(0, *(v7 + 2) + 1, 1, v7);
    }

    v6 = v74;
    v58 = *(v7 + 2);
    v57 = *(v7 + 3);
    if (v58 >= v57 >> 1)
    {
      v7 = sub_1AF421C6C(v57 > 1, v58 + 1, 1, v7);
    }

    *(v7 + 2) = v58 + 1;
    v59 = &v7[56 * v58];
    *(v59 + 4) = v35;
    *(v59 + 5) = v44;
    *(v59 + 6) = v42;
    *(v59 + 7) = v44;
    v59[64] = v43;
    *(v59 + 9) = v80;
    *(v59 + 10) = v71;
    goto LABEL_4;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_48:
  v60 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v60 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v60 && !*(v7 + 2))
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1AF421C6C(0, 1, 1, v7);
    }

    v62 = *(v7 + 2);
    v61 = *(v7 + 3);
    if (v62 >= v61 >> 1)
    {
      v7 = sub_1AF421C6C(v61 > 1, v62 + 1, 1, v7);
    }

    *(v7 + 2) = v62 + 1;
    v63 = vdupq_n_s64(1uLL);
    v64 = &v7[56 * v62];
    v64[2] = v63;
    v64[3] = v63;
    v64[4].i8[0] = 0;
    v64[4].i64[1] = a1;
    v64[5].i64[0] = a2;
  }

  return v7;
}

void sub_1AF458A0C()
{
  if (!qword_1EB638F98)
  {
    v0 = sub_1AFDFD998();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638F98);
    }
  }
}

unint64_t sub_1AF458A64()
{
  result = qword_1EB638FA0;
  if (!qword_1EB638FA0)
  {
    sub_1AF458A0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB638FA0);
  }

  return result;
}

void sub_1AF458ABC()
{
  if (!qword_1EB638FA8)
  {
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638FA8);
    }
  }
}

char *sub_1AF458B0C(uint64_t a1, uint64_t a2)
{
  sub_1AF458FD8(0, &qword_1EB638FB0, sub_1AF458F48, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v30 - v6;
  sub_1AF458F48(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v38 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF458FD8(0, &qword_1EB638FC8, sub_1AF458F7C, MEMORY[0x1E69E9288]);
  v36 = v13;
  v31 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v30 - v15;
  sub_1AF458F7C();
  v39 = v16;
  sub_1AFDFC408();
  v40 = a1;
  v41 = a2;
  v46 = 10;
  v47 = 0xE100000000000000;
  sub_1AF4486E4();
  v17 = sub_1AFDFDE98();
  v37 = *(v17 + 16);
  v30 = v17;
  if (v37)
  {
    v18 = 0;
    v19 = (v10 + 48);
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v20 = v17 + 40;
    v21 = MEMORY[0x1E69E7CC0];
    v22 = v36;
    v34 = v7;
    v35 = v9;
    do
    {

      sub_1AFDFC418();

      if ((*v19)(v7, 1, v9) == 1)
      {
        sub_1AF45903C(v7);
      }

      else
      {
        (*v33)(v38, v7, v9);
        sub_1AFDFC498();

        v23 = MEMORY[0x1B27189E0](v42, v43, v44, v45);
        v25 = v24;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1AF421D94(0, *(v21 + 2) + 1, 1, v21);
        }

        v27 = *(v21 + 2);
        v26 = *(v21 + 3);
        if (v27 >= v26 >> 1)
        {
          v21 = sub_1AF421D94(v26 > 1, v27 + 1, 1, v21);
        }

        v9 = v35;
        (*v32)(v38, v35);
        *(v21 + 2) = v27 + 1;
        v28 = &v21[24 * v27];
        *(v28 + 4) = v18;
        *(v28 + 5) = v23;
        *(v28 + 6) = v25;
        v7 = v34;
        v22 = v36;
      }

      ++v18;
      v20 += 16;
    }

    while (v37 != v18);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
    v22 = v36;
  }

  (*(v31 + 8))(v39, v22);

  return v21;
}

void sub_1AF458F7C()
{
  if (!qword_1EB638FC0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB638FC0);
    }
  }
}

void sub_1AF458FD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AF45903C(uint64_t a1)
{
  sub_1AF458FD8(0, &qword_1EB638FB0, sub_1AF458F48, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void destroy for DiagnosticsFormat(uint64_t a1)
{

  v2 = *(a1 + 88);
}

uint64_t initializeWithCopy for DiagnosticsFormat(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  v5 = *(a2 + 88);
  *(a1 + 88) = v5;

  v6 = v5;
  return a1;
}

uint64_t assignWithCopy for DiagnosticsFormat(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v5;
  v6 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v6;
  v7 = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = v7;
  v8 = *(a2 + 88);
  v9 = *(a1 + 88);
  *(a1 + 88) = v8;
  v10 = v8;

  return a1;
}

__n128 initializeWithCopy for RenderVariantDescriptor(uint64_t a1, uint64_t a2)
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

uint64_t assignWithTake for DiagnosticsFormat(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  v6 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t getEnumTagSinglePayload for DiagnosticsFormat(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DiagnosticsFormat(uint64_t result, int a2, int a3)
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

void *assignWithCopy for ScriptMarker(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];

  return a1;
}

uint64_t getEnumTagSinglePayload for ScriptMarker(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ScriptMarker(uint64_t result, int a2, int a3)
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

uint64_t initializeWithCopy for ScriptDiagnostic(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;

  return a1;
}

uint64_t assignWithCopy for ScriptDiagnostic(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithTake for ScriptDiagnostic(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for ScriptDiagnostic(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ScriptDiagnostic(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DirtyReadPolicy(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DirtyReadPolicy(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1AF459764()
{
  result = qword_1EB638FD0;
  if (!qword_1EB638FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB638FD0);
  }

  return result;
}

unint64_t sub_1AF4597BC()
{
  result = qword_1EB638FD8;
  if (!qword_1EB638FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB638FD8);
  }

  return result;
}

uint64_t sub_1AF459810()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF459860(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7070636A626FLL;
    }

    else
    {
      v3 = 99;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE100000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x6C6174656DLL;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x7466697773;
    }

    else
    {
      v3 = 29546;
    }

    if (v2 == 3)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x7070636A626FLL;
    }

    else
    {
      v6 = 99;
    }

    if (a2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE100000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE500000000000000;
    if (v3 != 0x6C6174656DLL)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE500000000000000;
    if (v3 != 0x7466697773)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE200000000000000;
    if (v3 != 29546)
    {
LABEL_34:
      v7 = sub_1AFDFEE28();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_1AF4599C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 5459817;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x534F6863746177;
    }

    else
    {
      v4 = 1397716596;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x534F63616DLL;
    }

    else
    {
      v4 = 5459817;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x534F6863746177;
  if (a2 != 2)
  {
    v8 = 1397716596;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x534F63616DLL;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF459AE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x34365F363878;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6534366D7261;
    }

    else
    {
      v4 = 0x32335F34366D7261;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x34366D7261;
    }

    else
    {
      v4 = 0x34365F363878;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x6534366D7261;
  if (a2 != 2)
  {
    v8 = 0x32335F34366D7261;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x34366D7261;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF459C18(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000072;
  v3 = 0x6579616C50584656;
  v4 = a1;
  v5 = 0xE800000000000000;
  v6 = 0x6C74635846565345;
  if (a1 != 4)
  {
    v6 = 0x726568744FLL;
    v5 = 0xE500000000000000;
  }

  if (a1 == 3)
  {
    v6 = 0x6579616C50584656;
    v5 = 0xEB00000000565472;
  }

  v7 = 0xEC00000063614D72;
  v8 = 0xD000000000000012;
  if (a1 == 1)
  {
    v8 = 0x6579616C50584656;
  }

  else
  {
    v7 = 0x80000001AFF26120;
  }

  if (!a1)
  {
    v8 = 0x6579616C50584656;
    v7 = 0xE900000000000072;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v4 <= 2)
  {
    v10 = v7;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEB00000000565472;
      if (v9 != 0x6579616C50584656)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE800000000000000;
      if (v9 != 0x6C74635846565345)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0xE500000000000000;
      if (v9 != 0x726568744FLL)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEC00000063614D72;
        if (v9 != 0x6579616C50584656)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v3 = 0xD000000000000012;
      v2 = 0x80000001AFF26120;
    }

    if (v9 != v3)
    {
LABEL_32:
      v11 = sub_1AFDFEE28();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v10 != v2)
  {
    goto LABEL_32;
  }

  v11 = 1;
LABEL_33:

  return v11 & 1;
}

uint64_t sub_1AF459DC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x656C636974726150;
  v5 = 0xEE00657461647055;
  if (a1 != 5)
  {
    v4 = 0x7265646E6552;
    v5 = 0xE600000000000000;
  }

  v6 = 0x656C636974726150;
  v7 = 0xEC00000074696E49;
  if (a1 != 3)
  {
    v6 = 0x657461647055;
    v7 = 0xE600000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE500000000000000;
  v9 = 0x6E77617053;
  if (a1 != 1)
  {
    v9 = 1953066569;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1852399949;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE500000000000000;
        if (v10 != 0x6E77617053)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE400000000000000;
        if (v10 != 1953066569)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1852399949)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEE00657461647055;
      if (v10 != 0x656C636974726150)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x7265646E6552)
      {
LABEL_39:
        v13 = sub_1AFDFEE28();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEC00000074696E49;
    if (v10 != 0x656C636974726150)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x657461647055)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_1AF459FEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E6F697469736F70;
  v3 = a1;
  v4 = 0xE800000000000000;
  v5 = 0x646E49746E696F6ALL;
  v6 = 0xEC00000073656369;
  if (a1 != 6)
  {
    v5 = 0x696557746E696F6ALL;
    v6 = 0xEC00000073746867;
  }

  v7 = 0xE500000000000000;
  v8 = 0x726F6C6F63;
  if (a1 != 4)
  {
    v8 = 1702521203;
    v7 = 0xE400000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6C616D726F6ELL;
  if (a1 != 2)
  {
    v10 = 0x7461746E6569726FLL;
    v9 = 0xEB000000006E6F69;
  }

  v11 = 0x797469636F6C6576;
  if (a1)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v11 = 0x6E6F697469736F70;
  }

  if (a1 > 1u)
  {
    v4 = v9;
  }

  else
  {
    v10 = v11;
  }

  if (a1 <= 3u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (v3 <= 3)
  {
    v13 = v4;
  }

  else
  {
    v13 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v15 = 0x646E49746E696F6ALL;
        v16 = 1936024425;
      }

      else
      {
        v15 = 0x696557746E696F6ALL;
        v16 = 1937008743;
      }

      v14 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      if (v12 != v15)
      {
        goto LABEL_43;
      }
    }

    else if (a2 == 4)
    {
      v14 = 0xE500000000000000;
      if (v12 != 0x726F6C6F63)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v14 = 0xE400000000000000;
      if (v12 != 1702521203)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_39;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v14 = 0xE600000000000000;
      if (v12 != 0x6C616D726F6ELL)
      {
        goto LABEL_43;
      }

      goto LABEL_39;
    }

    v2 = 0x7461746E6569726FLL;
    v14 = 0xEB000000006E6F69;
  }

  else
  {
    v14 = 0xE800000000000000;
    if (a2)
    {
      if (v12 != 0x797469636F6C6576)
      {
        goto LABEL_43;
      }

      goto LABEL_39;
    }
  }

  if (v12 != v2)
  {
LABEL_43:
    v17 = sub_1AFDFEE28();
    goto LABEL_44;
  }

LABEL_39:
  if (v13 != v14)
  {
    goto LABEL_43;
  }

  v17 = 1;
LABEL_44:

  return v17 & 1;
}

uint64_t sub_1AF45A260@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF45BEFC();
  *a1 = result;
  return result;
}

void sub_1AF45A290(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x34365F363878;
  v4 = 0xE600000000000000;
  v5 = 0x6534366D7261;
  if (*v1 != 2)
  {
    v5 = 0x32335F34366D7261;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x34366D7261;
    v2 = 0xE500000000000000;
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

uint64_t sub_1AF45A3B4()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF45A46C()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF45A510()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF45A5E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF45BF48();
  *a1 = result;
  return result;
}

void sub_1AF45A610(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 5459817;
  v4 = 0xE700000000000000;
  v5 = 0x534F6863746177;
  if (*v1 != 2)
  {
    v5 = 1397716596;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x534F63616DLL;
    v2 = 0xE500000000000000;
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

uint64_t sub_1AF45A72C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF45A7DC()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF45A878()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t static Target.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 5459817;
  v3 = *a1;
  v4 = a1[1];
  v5 = a2[1];
  v6 = 0xE300000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x534F6863746177;
  if (v3 != 2)
  {
    v8 = 1397716596;
    v7 = 0xE400000000000000;
  }

  v9 = 0x534F63616DLL;
  if (*a1)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v9 = 5459817;
  }

  if (*a1 <= 1u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if (v3 <= 1)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  v12 = 0xE300000000000000;
  v13 = 0xE700000000000000;
  v14 = 0x534F6863746177;
  if (*a2 != 2)
  {
    v14 = 1397716596;
    v13 = 0xE400000000000000;
  }

  if (*a2)
  {
    v2 = 0x534F63616DLL;
    v12 = 0xE500000000000000;
  }

  if (*a2 <= 1u)
  {
    v15 = v2;
  }

  else
  {
    v15 = v14;
  }

  if (*a2 <= 1u)
  {
    v16 = v12;
  }

  else
  {
    v16 = v13;
  }

  if (v10 == v15 && v11 == v16)
  {
  }

  else
  {
    v17 = sub_1AFDFEE28();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_1AF459AE8(v4, v5);
}

uint64_t sub_1AF45AAA4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6365746968637261;
  }

  else
  {
    v3 = 0x6D726F6674616C70;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEC00000065727574;
  }

  if (*a2)
  {
    v5 = 0x6365746968637261;
  }

  else
  {
    v5 = 0x6D726F6674616C70;
  }

  if (*a2)
  {
    v6 = 0xEC00000065727574;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF45AB54()
{
  v1 = *v0;
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v1);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF45AB9C()
{
  v1 = *v0;
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v1);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF45ABE0()
{
  if (*v0)
  {
    return 0x6365746968637261;
  }

  else
  {
    return 0x6D726F6674616C70;
  }
}

uint64_t sub_1AF45AC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000;
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6365746968637261 && a2 == 0xEC00000065727574)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

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

uint64_t sub_1AF45AD10(uint64_t a1)
{
  v2 = sub_1AF45AF34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF45AD4C(uint64_t a1)
{
  v2 = sub_1AF45AF34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Target.encode(to:)(void *a1)
{
  sub_1AF45B5A0(0, &qword_1EB638FE0, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  v10 = *v1;
  v13 = v1[1];
  sub_1AF441150(a1, a1[3]);
  sub_1AF45AF34();
  sub_1AFDFF3F8();
  v17 = v10;
  v16 = 0;
  sub_1AF45AF88();
  sub_1AFDFE918();
  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_1AF45AFDC();
    sub_1AFDFE918();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1AF45AF34()
{
  result = qword_1EB638FE8;
  if (!qword_1EB638FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB638FE8);
  }

  return result;
}

unint64_t sub_1AF45AF88()
{
  result = qword_1EB638FF0;
  if (!qword_1EB638FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB638FF0);
  }

  return result;
}

unint64_t sub_1AF45AFDC()
{
  result = qword_1EB638FF8;
  if (!qword_1EB638FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB638FF8);
  }

  return result;
}

uint64_t Target.hash(into:)()
{
  sub_1AFDFD038();

  sub_1AFDFD038();
}

uint64_t Target.hashValue.getter()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t Target.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1AF45B5A0(0, &qword_1EB639000, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF45AF34();
  sub_1AFDFF3B8();
  if (!v2)
  {
    v17 = 0;
    sub_1AF45B604();
    sub_1AFDFE768();
    v11 = v18;
    v15 = 1;
    sub_1AF45B658();
    sub_1AFDFE768();
    (*(v7 + 8))(v10, v6);
    v13 = v16;
    *a2 = v11;
    a2[1] = v13;
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

uint64_t sub_1AF45B474()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

void sub_1AF45B5A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF45AF34();
    v7 = a3(a1, &type metadata for Target.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AF45B604()
{
  result = qword_1EB639008;
  if (!qword_1EB639008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639008);
  }

  return result;
}

unint64_t sub_1AF45B658()
{
  result = qword_1EB639010;
  if (!qword_1EB639010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639010);
  }

  return result;
}

unint64_t sub_1AF45B6B0()
{
  result = qword_1EB639018;
  if (!qword_1EB639018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639018);
  }

  return result;
}

uint64_t sub_1AF45B734(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1AF4599C4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1AF459AE8(v2, v3);
}

uint64_t getEnumTagSinglePayload for Target(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65283 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65283;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65283;
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

_WORD *storeEnumTagSinglePayload for Target(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
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
    v5 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t getEnumTagSinglePayload for ScriptFunction.Kind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ScriptFunction.Kind(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ScriptLocation.BuiltinProperty(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScriptLocation.BuiltinProperty(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AF45BBA4()
{
  result = qword_1EB639020;
  if (!qword_1EB639020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639020);
  }

  return result;
}

unint64_t sub_1AF45BC2C()
{
  result = qword_1EB639038;
  if (!qword_1EB639038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639038);
  }

  return result;
}

uint64_t sub_1AF45BCB0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1AF45BD00(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AF45BD00(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1AFDFD538();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1AF45BD50()
{
  result = qword_1EB639050;
  if (!qword_1EB639050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639050);
  }

  return result;
}

unint64_t sub_1AF45BDA8()
{
  result = qword_1EB639058;
  if (!qword_1EB639058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639058);
  }

  return result;
}

unint64_t sub_1AF45BE00()
{
  result = qword_1EB639060;
  if (!qword_1EB639060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639060);
  }

  return result;
}

unint64_t sub_1AF45BE54()
{
  result = qword_1EB639068;
  if (!qword_1EB639068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639068);
  }

  return result;
}

unint64_t sub_1AF45BEA8()
{
  result = qword_1EB639070;
  if (!qword_1EB639070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639070);
  }

  return result;
}

uint64_t sub_1AF45BEFC()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF45BF48()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF45BFA4()
{
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      return 0x736F6863746177;
    }

    else
    {
      return 0x6F7674656C707061;
    }
  }

  else
  {
    if (!*(v0 + 16))
    {
      return 0x736F656E6F687069;
    }

    if (*(v0 + 64))
    {
      v2 = *(v0 + 56);
LABEL_11:

      return v2;
    }

    if (*(v0 + 104))
    {
      v2 = *(v0 + 96);
      goto LABEL_11;
    }

    return 0x746C7561666564;
  }
}

uint64_t sub_1AF45C068()
{
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      v1 = 0x736F6863746177;
    }

    else
    {
      v1 = 0x6F7674656C707061;
    }

LABEL_9:
    v3 = v1;
    if (sub_1AF45C9E0())
    {
      return v1;
    }

    goto LABEL_13;
  }

  if (!*(v0 + 16))
  {
    v1 = 0x736F656E6F687069;
    goto LABEL_9;
  }

  if (*(v0 + 120))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v1 = 0x78736F63616DLL;
  }

  v3 = v1;

  if ((sub_1AF45C9E0() & 1) == 0)
  {
LABEL_13:
    sub_1AF4486E4();
    if ((sub_1AFDFDF18() & 1) == 0)
    {
      MEMORY[0x1B2718AE0](0x616E7265746E692ELL, 0xE90000000000006CLL);
      return v3;
    }
  }

  return v1;
}

uint64_t sub_1AF45C1A4()
{
  v1 = *(v0 + 16);
  if (v1 <= 2 && v1 != 1 && v1 != 2)
  {

    goto LABEL_13;
  }

  v2 = sub_1AFDFEE28();

  if (v2)
  {
LABEL_13:
    result = sub_1AFDFE518();
    __break(1u);
    return result;
  }

  v3 = 56;
  if (v1 != 2)
  {
    v3 = 14385;
  }

  if (v1 == 1)
  {
    return 12849;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AF45C2D8()
{
  v1 = 0xE600000000000000;
  v2 = 0x78736F63616DLL;
  v3 = 0xE700000000000000;
  v4 = 0x736F6863746177;
  if (*(v0 + 16) != 2)
  {
    v4 = 1936684660;
    v3 = 0xE400000000000000;
  }

  if (!*(v0 + 16))
  {
    v2 = 7565161;
    v1 = 0xE300000000000000;
  }

  if (*(v0 + 16) <= 1u)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*(v0 + 16) <= 1u)
  {
    v6 = v1;
  }

  else
  {
    v6 = v3;
  }

  v7 = 0xE600000000000000;
  v8 = 0x34365F363878;
  v9 = 0xE600000000000000;
  v10 = 0x6534366D7261;
  if (*(v0 + 17) != 2)
  {
    v10 = 0x32335F34366D7261;
    v9 = 0xE800000000000000;
  }

  if (*(v0 + 17))
  {
    v8 = 0x34366D7261;
    v7 = 0xE500000000000000;
  }

  if (*(v0 + 17) <= 1u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v10;
  }

  if (*(v0 + 17) <= 1u)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  MEMORY[0x1B2718AE0](v11, v12);

  MEMORY[0x1B2718AE0](0x2D656C7070612DLL, 0xE700000000000000);
  MEMORY[0x1B2718AE0](v5, v6);

  v13 = sub_1AF45C1A4();
  MEMORY[0x1B2718AE0](v13);

  return 0;
}

uint64_t sub_1AF45C450()
{
  v1 = v0;
  os_unfair_recursive_lock_lock_with_options();
  if (!*(v0 + 88))
  {
    sub_1AF432980(MEMORY[0x1E69E7CC0]);
    sub_1AF45D904();

    swift_arrayDestroy();
    sub_1AF75D094();
    sub_1AF4486E4();
    if (sub_1AFDFDF18())
    {
      v3 = sub_1AFDFDF18();

      if ((v3 & 1) == 0)
      {
        v4 = xmmword_1AFE50C40;
        v5 = 0xEF6C616E7265746ELL;
        v6 = 0x692E78736F63616DLL;
LABEL_10:
        *(v1 + 96) = v4;

        *(v1 + 112) = v6;
        *(v1 + 120) = v5;

        sub_1AF45F8F0();
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1AFE4C6A0;
        *(inited + 32) = 0x69756265646F6378;
        *(inited + 40) = 0xEA0000000000646CLL;
        *(inited + 48) = 0x6E6F69737265762DLL;
        *(inited + 56) = 0xE800000000000000;
        *(inited + 64) = 1801745197;
        *(inited + 72) = 0xE400000000000000;
        *(inited + 80) = sub_1AF45C068();
        *(inited + 88) = v8;
        *(inited + 96) = 1752457552;
        *(inited + 104) = 0xE400000000000000;
        sub_1AF432980(MEMORY[0x1E69E7CC0]);
        sub_1AF45D904();

        swift_setDeallocating();
        swift_arrayDestroy();
        *(v1 + 80) = sub_1AF75D094();
        *(v1 + 88) = v9;

        return os_unfair_recursive_lock_unlock();
      }
    }

    else
    {
    }

    v4 = xmmword_1AFE50C50;
    v5 = 0xE600000000000000;
    v6 = 0x78736F63616DLL;
    goto LABEL_10;
  }

  return os_unfair_recursive_lock_unlock();
}

uint64_t sub_1AF45C774()
{
  v1 = *(v0 + 128);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_1AF45C7A8(v0);
    *(v0 + 128) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_1AF45C7A8(uint64_t a1)
{
  v2 = sub_1AFDFC128();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) <= 1u && *(a1 + 16))
  {
  }

  else
  {
    v7 = sub_1AFDFEE28();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1AF45F940();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = [v9 bundleURL];

  sub_1AFDFC0B8();
  sub_1AFDFC0D8();
  (*(v3 + 8))(v6, v2);
  v11 = sub_1AFDFCEC8();

  v12 = sub_1AFDFCEC8();
  v13 = [v11 stringByAppendingPathComponent_];

  sub_1AF432980(MEMORY[0x1E69E7CC0]);

  return 0;
}

uint64_t sub_1AF45C9E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  if (v1 > 1 || *(v0 + 16))
  {
    v3 = sub_1AFDFEE28();

    if ((v3 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  if (v2 == 2)
  {

    return 1;
  }

  v4 = sub_1AFDFEE28();

  if (v4)
  {
    return 1;
  }

LABEL_9:
  if (v1)
  {
    v6 = sub_1AFDFEE28();

    result = 0;
    if ((v6 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
  }

  return sub_1AF45C774();
}

char *sub_1AF45CBCC()
{
  v1 = sub_1AFDFC128();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v48 - v8;
  if ((sub_1AF45C9E0() & 1) == 0)
  {
    v48 = MEMORY[0x1E69E7CC0];
    if (*(v0 + 16) > 1u || *(v0 + 16))
    {
      v34 = sub_1AFDFEE28();

      if ((v34 & 1) == 0)
      {
LABEL_12:
        sub_1AF45F8F0();
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1AFE4C620;

        v36 = sub_1AFDFCEC8();

        v37 = sub_1AFDFCEC8();
        v38 = [v36 stringByAppendingPathComponent_];

        v39 = sub_1AFDFCEF8();
        v41 = v40;

        *(inited + 32) = v39;
        *(inited + 40) = v41;

        v42 = sub_1AFDFCEC8();

        v43 = sub_1AFDFCEC8();
        v44 = [v42 stringByAppendingPathComponent_];

        v45 = sub_1AFDFCEF8();
        v47 = v46;

        *(inited + 48) = v45;
        *(inited + 56) = v47;
        sub_1AF48FAF8(inited);
        return v48;
      }
    }

    else
    {
    }

    sub_1AF48FAF8(&unk_1F24FDA00);
    goto LABEL_12;
  }

  sub_1AF45F940();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  v12 = [v11 bundleForClass_];
  v13 = [v12 bundleURL];

  sub_1AFDFC0B8();
  sub_1AFDFC098();
  v14 = *(v2 + 8);
  v14(v5, v1);
  v15 = sub_1AFDFC0D8();
  v17 = v16;
  v14(v9, v1);
  v18 = sub_1AF420554(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  if (v20 >= v19 >> 1)
  {
    v18 = sub_1AF420554(v19 > 1, v20 + 1, 1, v18);
  }

  *(v18 + 2) = v20 + 1;
  v21 = &v18[16 * v20];
  *(v21 + 4) = v15;
  *(v21 + 5) = v17;
  v22 = v18;
  v23 = [v11 mainBundle];
  v24 = [v23 bundlePath];

  v25 = sub_1AFDFCEF8();
  v27 = v26;

  v48 = v25;
  v49 = v27;

  MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF28D80);

  result = v22;
  v29 = v48;
  v30 = v49;
  v31 = *(v22 + 2);
  v32 = *(result + 3);
  if (v31 >= v32 >> 1)
  {
    result = sub_1AF420554(v32 > 1, v31 + 1, 1, result);
  }

  *(result + 2) = v31 + 1;
  v33 = &result[16 * v31];
  *(v33 + 4) = v29;
  *(v33 + 5) = v30;
  return result;
}

char *sub_1AF45D064(uint64_t a1)
{
  v2 = sub_1AF45CBCC();
  v3 = *(v2 + 2);
  if (v3)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1AFC07174(0, v3, 0);
    v4 = v13;
    sub_1AF45F8F0();
    v5 = (v2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1AFE4C620;
      *(v8 + 32) = a1;
      *(v8 + 40) = 0xE200000000000000;
      *(v8 + 48) = v6;
      *(v8 + 56) = v7;
      v9 = *(v13 + 16);
      v10 = *(v13 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_1AFC07174(v10 > 1, v9 + 1, 1);
      }

      *(v13 + 16) = v9 + 1;
      *(v13 + 8 * v9 + 32) = v8;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1AF429F04(v4);

  return v11;
}

uint64_t sub_1AF45D1B8(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_slowAlloc();
  *v4 = 0;
  *(v1 + 24) = "xcodeinfo";
  *(v1 + 32) = 9;
  *(v1 + 40) = 2;
  *(v1 + 48) = v4;
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = sub_1AFDFCEC8();
  v7 = [v5 stringForKey_];

  if (v7)
  {
    v8 = sub_1AFDFCEF8();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *(v1 + 56) = v8;
  *(v1 + 64) = v10;
  v11 = sub_1AFDFCEC8();
  v12 = [objc_opt_self() bundleWithIdentifier_];

  *(v1 + 72) = v12;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 2;
  *(v1 + 16) = v2;
  *(v1 + 17) = v3;
  return v1;
}

uint64_t sub_1AF45D330()
{
  MEMORY[0x1B271DEA0](*(v0 + 48), -1, -1);

  return swift_deallocClassInstance();
}

void *sub_1AF45D3BC()
{
  result = sub_1AF43B1CC(MEMORY[0x1E69E7CC0]);
  off_1EB639078 = result;
  return result;
}

id sub_1AF45D3E4()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  qword_1EB639080 = result;
  return result;
}

uint64_t sub_1AF45D418(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  *(v1 + 40) = v5;
  *(v1 + 48) = v5;
  *(v1 + 56) = v5;
  *(v1 + 26) = 0;
  *(v1 + 64) = &unk_1F24FDE20;
  *(v1 + 24) = v3;
  *(v1 + 25) = v4;
  LOBYTE(v20) = v3;
  BYTE1(v20) = v4;
  *(v1 + 16) = sub_1AF45F584(&v20);

  sub_1AF45C450();

  if (*(*(v1 + 16) + 88))
  {
    if (v3 <= 1 && v3)
    {
    }

    else
    {
      v6 = sub_1AFDFEE28();

      if ((v6 & 1) == 0)
      {
        return v2;
      }
    }

    v7 = [objc_opt_self() mainBundle];
    v8 = [v7 bundlePath];

    v9 = sub_1AFDFCEF8();
    v11 = v10;

    v20 = v9;
    v21 = v11;

    MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF28D80);

    v12 = v20;
    v13 = v21;
    v14 = *(v2 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 48) = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_1AF420554(0, *(v14 + 2) + 1, 1, v14);
      *(v2 + 48) = v14;
    }

    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    if (v17 >= v16 >> 1)
    {
      v14 = sub_1AF420554(v16 > 1, v17 + 1, 1, v14);
    }

    *(v14 + 2) = v17 + 1;
    v18 = &v14[16 * v17];
    *(v18 + 4) = v12;
    *(v18 + 5) = v13;
    *(v2 + 48) = v14;
  }

  else
  {

    return 0;
  }

  return v2;
}

char *sub_1AF45D650()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v12 = MEMORY[0x1E69E7CC0];

    sub_1AFC07174(0, v2, 0);
    v3 = v12;
    sub_1AF45F8F0();
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1AFE4C620;
      *(v7 + 32) = 0x6F77656D6172662DLL;
      *(v7 + 40) = 0xEA00000000006B72;
      *(v7 + 48) = v5;
      *(v7 + 56) = v6;
      v8 = *(v12 + 16);
      v9 = *(v12 + 24);

      if (v8 >= v9 >> 1)
      {
        sub_1AFC07174(v9 > 1, v8 + 1, 1);
      }

      *(v12 + 16) = v8 + 1;
      *(v12 + 8 * v8 + 32) = v7;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  v10 = sub_1AF429F04(v3);

  return v10;
}

char *sub_1AF45D7A4()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v12 = MEMORY[0x1E69E7CC0];

    sub_1AFC07174(0, v2, 0);
    v3 = v12;
    sub_1AF45F8F0();
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1AFE431C0;

      MEMORY[0x1B2718AE0](v5, v6);
      *(v7 + 32) = 27693;
      *(v7 + 40) = 0xE200000000000000;

      v9 = *(v12 + 16);
      v8 = *(v12 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1AFC07174(v8 > 1, v9 + 1, 1);
      }

      *(v12 + 16) = v9 + 1;
      *(v12 + 8 * v9 + 32) = v7;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  v10 = sub_1AF429F04(v3);

  return v10;
}

uint64_t sub_1AF45D904()
{
  sub_1AF45F8F0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C6B0;
  *(v0 + 32) = 0x6B64732D2DLL;
  *(v0 + 40) = 0xE500000000000000;
  *(v0 + 48) = sub_1AF45C068();
  *(v0 + 56) = v1;
  *(v0 + 64) = 0x68636C6F6F742D2DLL;
  *(v0 + 72) = 0xEB000000006E6961;
  *(v0 + 80) = sub_1AF45BFA4();
  *(v0 + 88) = v2;

  sub_1AF48FAF8(v3);

  return 0x6E69622F7273752FLL;
}

uint64_t sub_1AF45D9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_1AF420554(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  v15 = v13 >> 1;
  v16 = v14 + 1;
  if (v13 >> 1 <= v14)
  {
    v12 = sub_1AF420554(v13 > 1, v14 + 1, 1, v12);
    v13 = *(v12 + 3);
    v15 = v13 >> 1;
  }

  *(v12 + 2) = v16;
  v17 = &v12[16 * v14];
  *(v17 + 4) = 0x676E616C63;
  *(v17 + 5) = 0xE500000000000000;
  v18 = v14 + 2;
  if (v15 < (v14 + 2))
  {
    v12 = sub_1AF420554(v13 > 1, v14 + 2, 1, v12);
  }

  *(v12 + 2) = v18;
  v19 = &v12[16 * v16];
  *(v19 + 4) = 25389;
  *(v19 + 5) = 0xE200000000000000;
  v20 = *(v12 + 3);
  if ((v14 + 3) > (v20 >> 1))
  {
    v12 = sub_1AF420554(v20 > 1, v14 + 3, 1, v12);
  }

  *(v12 + 2) = v14 + 3;
  v21 = &v12[16 * v18];
  *(v21 + 4) = 0x7465677261742DLL;
  *(v21 + 5) = 0xE700000000000000;
  v22 = sub_1AF45C2D8();
  v25 = *(v12 + 2);
  v24 = *(v12 + 3);
  if (v25 >= v24 >> 1)
  {
    v45 = v23;
    v46 = v22;
    v12 = sub_1AF420554(v24 > 1, v25 + 1, 1, v12);
    v23 = v45;
    v22 = v46;
  }

  *(v12 + 2) = v25 + 1;
  v26 = &v12[16 * v25];
  *(v26 + 4) = v22;
  *(v26 + 5) = v23;
  v27 = sub_1AF4515E4(a5);
  v28 = *(v12 + 2);
  if (v27)
  {
    v29 = *(v12 + 3);
    v30 = v28 + 1;
    if (v28 >= v29 >> 1)
    {
      v12 = sub_1AF420554(v29 > 1, v28 + 1, 1, v12);
    }

    *(v12 + 2) = v30;
    v31 = &v12[16 * v28];
    strcpy(v31 + 32, "-fno-objc-arc");
    *(v31 + 23) = -4864;
  }

  else
  {
    v30 = *(v12 + 2);
  }

  v32 = *(v12 + 3);
  if (v30 >= v32 >> 1)
  {
    v12 = sub_1AF420554(v32 > 1, v30 + 1, 1, v12);
  }

  *(v12 + 2) = v30 + 1;
  v33 = &v12[16 * v30];
  *(v33 + 4) = 0x636970662DLL;
  *(v33 + 5) = 0xE500000000000000;

  sub_1AF48FAF8(v34);
  if (*(v6 + 26))
  {
    v35 = &unk_1F24FD980;
  }

  else
  {
    v35 = &unk_1F24FD9C0;
  }

  sub_1AF48FAF8(v35);
  v36 = sub_1AF45D054();
  sub_1AF48FAF8(v36);
  MEMORY[0x1B2718AE0](a3, a4);
  v37 = v12;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = sub_1AF420554(0, *(v12 + 2) + 1, 1, v12);
  }

  v39 = *(v37 + 2);
  v38 = *(v37 + 3);
  v40 = v39 + 1;
  if (v39 >= v38 >> 1)
  {
    v37 = sub_1AF420554(v38 > 1, v39 + 1, 1, v37);
  }

  *(v37 + 2) = v40;
  v41 = &v37[16 * v39];
  *(v41 + 4) = 28461;
  *(v41 + 5) = 0xE200000000000000;
  v42 = *(v37 + 3);

  if ((v39 + 2) > (v42 >> 1))
  {
    v37 = sub_1AF420554(v42 > 1, v39 + 2, 1, v37);
  }

  *(v37 + 2) = v39 + 2;
  v43 = &v37[16 * v40];
  *(v43 + 4) = a1;
  *(v43 + 5) = a2;
  sub_1AF432980(MEMORY[0x1E69E7CC0]);
  sub_1AF45D904();

  return 0x6E69622F7273752FLL;
}

uint64_t sub_1AF45DDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v10 = sub_1AF420554(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  v13 = v11 >> 1;
  v14 = v12 + 1;
  if (v11 >> 1 <= v12)
  {
    v10 = sub_1AF420554(v11 > 1, v12 + 1, 1, v10);
    v11 = *(v10 + 3);
    v13 = v11 >> 1;
  }

  *(v10 + 2) = v14;
  v15 = &v10[16 * v12];
  *(v15 + 4) = 0x676E616C63;
  *(v15 + 5) = 0xE500000000000000;
  v16 = v12 + 2;
  if (v13 < (v12 + 2))
  {
    v10 = sub_1AF420554(v11 > 1, v12 + 2, 1, v10);
  }

  *(v10 + 2) = v16;
  v17 = &v10[16 * v14];
  *(v17 + 4) = 0x6465726168732DLL;
  *(v17 + 5) = 0xE700000000000000;
  v18 = *(v10 + 3);
  if ((v12 + 3) > (v18 >> 1))
  {
    v10 = sub_1AF420554(v18 > 1, v12 + 3, 1, v10);
  }

  *(v10 + 2) = v12 + 3;
  v19 = &v10[16 * v16];
  *(v19 + 4) = 0x7465677261742DLL;
  *(v19 + 5) = 0xE700000000000000;
  v20 = sub_1AF45C2D8();
  v23 = *(v10 + 2);
  v22 = *(v10 + 3);
  if (v23 >= v22 >> 1)
  {
    v54 = v20;
    v55 = v21;
    v56 = sub_1AF420554(v22 > 1, v23 + 1, 1, v10);
    v21 = v55;
    v10 = v56;
    v20 = v54;
  }

  *(v10 + 2) = v23 + 1;
  v24 = &v10[16 * v23];
  *(v24 + 4) = v20;
  *(v24 + 5) = v21;
  v25 = sub_1AF4515E4(a5);
  v26 = *(v10 + 2);
  if (v25)
  {
    v27 = *(v10 + 3);
    v28 = v26 + 1;
    if (v26 >= v27 >> 1)
    {
      v10 = sub_1AF420554(v27 > 1, v26 + 1, 1, v10);
    }

    *(v10 + 2) = v28;
    v29 = &v10[16 * v26];
    strcpy(v29 + 32, "-fno-objc-arc");
    *(v29 + 23) = -4864;
  }

  else
  {
    v28 = *(v10 + 2);
  }

  v30 = *(v10 + 3);
  if (v28 >= v30 >> 1)
  {
    v10 = sub_1AF420554(v30 > 1, v28 + 1, 1, v10);
  }

  *(v10 + 2) = v28 + 1;
  v31 = &v10[16 * v28];
  *(v31 + 4) = 0x636970662DLL;
  *(v31 + 5) = 0xE500000000000000;

  sub_1AF48FAF8(v32);
  v33 = v10;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_1AF420554(0, *(v10 + 2) + 1, 1, v10);
  }

  v35 = *(v33 + 2);
  v34 = *(v33 + 3);
  v36 = v34 >> 1;
  v37 = v35 + 1;
  if (v34 >> 1 <= v35)
  {
    v33 = sub_1AF420554(v34 > 1, v35 + 1, 1, v33);
    v34 = *(v33 + 3);
    v36 = v34 >> 1;
  }

  *(v33 + 2) = v37;
  v38 = &v33[16 * v35];
  *(v38 + 4) = 7171117;
  *(v38 + 5) = 0xE300000000000000;
  v39 = v35 + 2;
  if (v36 < (v35 + 2))
  {
    v33 = sub_1AF420554(v34 > 1, v35 + 2, 1, v33);
  }

  *(v33 + 2) = v39;
  v40 = &v33[16 * v37];
  *(v40 + 4) = 6515757;
  *(v40 + 5) = 0xE300000000000000;
  v41 = *(v33 + 3);
  if ((v35 + 3) > (v41 >> 1))
  {
    v33 = sub_1AF420554(v41 > 1, v35 + 3, 1, v33);
  }

  *(v33 + 2) = v35 + 3;
  v42 = &v33[16 * v39];
  *(v42 + 4) = 0x636A626F6C2DLL;
  *(v42 + 5) = 0xE600000000000000;
  if (*(v6 + 26))
  {
    v43 = &unk_1F24FD980;
  }

  else
  {
    v43 = &unk_1F24FD9C0;
  }

  sub_1AF48FAF8(v43);
  v44 = sub_1AF45D054();
  sub_1AF48FAF8(v44);
  v45 = sub_1AF45D650();
  sub_1AF48FAF8(v45);
  MEMORY[0x1B2718AE0](a3, a4);
  v46 = v33;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v46 = sub_1AF420554(0, *(v33 + 2) + 1, 1, v33);
  }

  v48 = *(v46 + 2);
  v47 = *(v46 + 3);
  v49 = v48 + 1;
  if (v48 >= v47 >> 1)
  {
    v46 = sub_1AF420554(v47 > 1, v48 + 1, 1, v46);
  }

  *(v46 + 2) = v49;
  v50 = &v46[16 * v48];
  *(v50 + 4) = 28461;
  *(v50 + 5) = 0xE200000000000000;
  v51 = *(v46 + 3);

  if ((v48 + 2) > (v51 >> 1))
  {
    v46 = sub_1AF420554(v51 > 1, v48 + 2, 1, v46);
  }

  *(v46 + 2) = v48 + 2;
  v52 = &v46[16 * v49];
  *(v52 + 4) = a1;
  *(v52 + 5) = a2;
  sub_1AF432980(MEMORY[0x1E69E7CC0]);
  sub_1AF45D904();

  return 0x6E69622F7273752FLL;
}

uint64_t sub_1AF45E2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_1AF420554(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  v14 = v12 >> 1;
  v15 = v13 + 1;
  if (v12 >> 1 <= v13)
  {
    v11 = sub_1AF420554(v12 > 1, v13 + 1, 1, v11);
    v12 = *(v11 + 3);
    v14 = v12 >> 1;
  }

  *(v11 + 2) = v15;
  v16 = &v11[16 * v13];
  *(v16 + 4) = 0x637466697773;
  *(v16 + 5) = 0xE600000000000000;
  v17 = v13 + 2;
  if (v14 < (v13 + 2))
  {
    v11 = sub_1AF420554(v12 > 1, v13 + 2, 1, v11);
  }

  *(v11 + 2) = v17;
  v18 = &v11[16 * v15];
  *(v18 + 4) = 0x6E65746E6F72662DLL;
  *(v18 + 5) = 0xE900000000000064;
  v19 = *(v11 + 3);
  v20 = v13 + 3;
  if ((v13 + 3) > (v19 >> 1))
  {
    v11 = sub_1AF420554(v19 > 1, v13 + 3, 1, v11);
  }

  *(v11 + 2) = v20;
  v21 = &v11[16 * v17];
  *(v21 + 4) = 25389;
  *(v21 + 5) = 0xE200000000000000;
  v22 = *(v11 + 3);
  v23 = v13 + 4;
  if ((v13 + 4) > (v22 >> 1))
  {
    v11 = sub_1AF420554(v22 > 1, v13 + 4, 1, v11);
  }

  *(v11 + 2) = v23;
  v24 = &v11[16 * v20];
  strcpy(v24 + 32, "-primary-file");
  *(v24 + 23) = -4864;
  v25 = *(v11 + 3);
  v26 = v13 + 5;

  if ((v13 + 5) > (v25 >> 1))
  {
    v11 = sub_1AF420554(v25 > 1, v13 + 5, 1, v11);
  }

  *(v11 + 2) = v26;
  v27 = &v11[16 * v23];
  *(v27 + 4) = a1;
  *(v27 + 5) = a2;
  v28 = *(v11 + 3);
  if ((v13 + 6) > (v28 >> 1))
  {
    v11 = sub_1AF420554(v28 > 1, v13 + 6, 1, v11);
  }

  *(v11 + 2) = v13 + 6;
  v29 = &v11[16 * v26];
  *(v29 + 4) = 0x7465677261742DLL;
  *(v29 + 5) = 0xE700000000000000;
  v30 = *(v7 + 16);
  v31 = sub_1AF45C2D8();
  v34 = *(v11 + 2);
  v33 = *(v11 + 3);
  v35 = v33 >> 1;
  v36 = v34 + 1;
  if (v33 >> 1 <= v34)
  {
    v65 = v31;
    v66 = v32;
    v67 = sub_1AF420554(v33 > 1, v34 + 1, 1, v11);
    v32 = v66;
    v11 = v67;
    v31 = v65;
    v33 = *(v11 + 3);
    v35 = v33 >> 1;
  }

  *(v11 + 2) = v36;
  v37 = &v11[16 * v34];
  *(v37 + 4) = v31;
  *(v37 + 5) = v32;
  v38 = v34 + 2;
  if (v35 < (v34 + 2))
  {
    v11 = sub_1AF420554(v33 > 1, v34 + 2, 1, v11);
  }

  *(v11 + 2) = v38;
  v39 = &v11[16 * v36];
  *(v39 + 4) = 1801745197;
  *(v39 + 5) = 0xE400000000000000;
  v41 = *(v30 + 80);
  v40 = *(v30 + 88);
  v42 = *(v11 + 3);
  v43 = v34 + 3;

  if ((v34 + 3) > (v42 >> 1))
  {
    v11 = sub_1AF420554(v42 > 1, v34 + 3, 1, v11);
  }

  *(v11 + 2) = v43;
  v44 = &v11[16 * v38];
  *(v44 + 4) = v41;
  *(v44 + 5) = v40;
  v45 = *(v11 + 3);
  v46 = v34 + 4;
  if ((v34 + 4) > (v45 >> 1))
  {
    v11 = sub_1AF420554(v45 > 1, v34 + 4, 1, v11);
  }

  *(v11 + 2) = v46;
  v47 = &v11[16 * v43];
  strcpy(v47 + 32, "-swift-version");
  v47[47] = -18;
  v48 = *(v11 + 3);
  v49 = v34 + 5;
  if ((v34 + 5) > (v48 >> 1))
  {
    v11 = sub_1AF420554(v48 > 1, v34 + 5, 1, v11);
  }

  *(v11 + 2) = v49;
  v50 = &v11[16 * v46];
  *(v50 + 4) = 53;
  *(v50 + 5) = 0xE100000000000000;
  v51 = *(v11 + 3);
  v52 = v34 + 6;
  if ((v34 + 6) > (v51 >> 1))
  {
    v11 = sub_1AF420554(v51 > 1, v34 + 6, 1, v11);
  }

  *(v11 + 2) = v52;
  v53 = &v11[16 * v49];
  strcpy(v53 + 32, "-module-name");
  v53[45] = 0;
  *(v53 + 23) = -5120;
  v54 = *(v11 + 3);

  if ((v34 + 7) > (v54 >> 1))
  {
    v11 = sub_1AF420554(v54 > 1, v34 + 7, 1, v11);
  }

  *(v11 + 2) = v34 + 7;
  v55 = &v11[16 * v52];
  *(v55 + 4) = a3;
  *(v55 + 5) = a4;
  if (*(v7 + 26))
  {
    v56 = &unk_1F24FDA40;
  }

  else
  {
    v56 = &unk_1F24FDA80;
  }

  sub_1AF48FAF8(v56);
  v57 = sub_1AF45D054();
  sub_1AF48FAF8(v57);
  v58 = sub_1AF45ECC8();
  sub_1AF48FAF8(v58);

  sub_1AF48FAF8(v59);
  MEMORY[0x1B2718AE0](a5, a6);
  v60 = v11;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v60 = sub_1AF420554(0, *(v11 + 2) + 1, 1, v11);
  }

  v62 = *(v60 + 2);
  v61 = *(v60 + 3);
  if (v62 >= v61 >> 1)
  {
    v60 = sub_1AF420554(v61 > 1, v62 + 1, 1, v60);
  }

  *(v60 + 2) = v62 + 1;
  v63 = &v60[16 * v62];
  *(v63 + 4) = 28461;
  *(v63 + 5) = 0xE200000000000000;
  sub_1AF432980(MEMORY[0x1E69E7CC0]);
  sub_1AF45D904();

  return 0x6E69622F7273752FLL;
}

uint64_t sub_1AF45E8B8(uint64_t a1)
{
  v42 = sub_1AFDFC128();
  v3 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v4);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AF420554(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  v10 = v8 >> 1;
  v11 = v9 + 1;
  if (v8 >> 1 <= v9)
  {
    v7 = sub_1AF420554(v8 > 1, v9 + 1, 1, v7);
    v8 = *(v7 + 3);
    v10 = v8 >> 1;
  }

  *(v7 + 2) = v11;
  v12 = &v7[16 * v9];
  *(v12 + 4) = 1869637996;
  *(v12 + 5) = 0xE400000000000000;
  v13 = v9 + 2;
  if (v10 < (v9 + 2))
  {
    v7 = sub_1AF420554(v8 > 1, v9 + 2, 1, v7);
  }

  *(v7 + 2) = v13;
  v14 = &v7[16 * v11];
  *(v14 + 4) = 0x6574616572632DLL;
  *(v14 + 5) = 0xE700000000000000;
  v15 = *(v7 + 3);
  if ((v9 + 3) > (v15 >> 1))
  {
    v7 = sub_1AF420554(v15 > 1, v9 + 3, 1, v7);
  }

  *(v7 + 2) = v9 + 3;
  v16 = &v7[16 * v13];
  *(v16 + 4) = 0x74757074756F2DLL;
  *(v16 + 5) = 0xE700000000000000;
  v17 = sub_1AFDFC0D8();
  v20 = *(v7 + 2);
  v19 = *(v7 + 3);
  if (v20 >= v19 >> 1)
  {
    v35 = v17;
    v36 = v18;
    v37 = sub_1AF420554(v19 > 1, v20 + 1, 1, v7);
    v18 = v36;
    v7 = v37;
    v17 = v35;
  }

  *(v7 + 2) = v20 + 1;
  v21 = &v7[16 * v20];
  *(v21 + 4) = v17;
  *(v21 + 5) = v18;
  v44 = v7;
  v22 = *(a1 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  if (v22)
  {
    v38[1] = v1;
    v43 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v22, 0);
    v23 = v43;
    v25 = *(v3 + 16);
    v24 = v3 + 16;
    v26 = a1 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v39 = *(v24 + 56);
    v40 = v25;
    v41 = v24;
    do
    {
      v27 = v42;
      v40(v6, v26, v42);
      v28 = sub_1AFDFC0D8();
      v30 = v29;
      (*(v24 - 8))(v6, v27);
      v43 = v23;
      v32 = *(v23 + 16);
      v31 = *(v23 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1AFC05CE4(v31 > 1, v32 + 1, 1);
        v23 = v43;
      }

      *(v23 + 16) = v32 + 1;
      v33 = v23 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
      v26 += v39;
      --v22;
    }

    while (v22);
  }

  sub_1AF48FAF8(v23);
  sub_1AF432980(MEMORY[0x1E69E7CC0]);
  sub_1AF45D904();

  return 0x6E69622F7273752FLL;
}

uint64_t sub_1AF45EC44()
{

  return swift_deallocClassInstance();
}

char *sub_1AF45ECC8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundlePath];

  v2 = sub_1AFDFCEF8();
  v4 = v3;

  v14 = v4;

  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF28DE0);

  v5 = v2;
  v13 = MEMORY[0x1E69E7CC0];
  sub_1AFC07174(0, 1, 0);
  v6 = v13;
  sub_1AF45F8F0();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C620;
  *(v7 + 32) = 18733;
  *(v7 + 40) = 0xE200000000000000;
  *(v7 + 48) = v5;
  *(v7 + 56) = v14;
  v9 = *(v13 + 16);
  v8 = *(v13 + 24);
  if (v9 >= v8 >> 1)
  {
    v12 = v7;
    sub_1AFC07174(v8 > 1, v9 + 1, 1);
    v7 = v12;
    v6 = v13;
  }

  *(v6 + 16) = v9 + 1;
  *(v6 + 8 * v9 + 32) = v7;
  v10 = sub_1AF429F04(v6);

  return v10;
}

uint64_t sub_1AF45EE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1AF420554(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  v10 = v8 >> 1;
  v11 = v9 + 1;
  if (v8 >> 1 <= v9)
  {
    v7 = sub_1AF420554(v8 > 1, v9 + 1, 1, v7);
    v8 = *(v7 + 3);
    v10 = v8 >> 1;
  }

  *(v7 + 2) = v11;
  v12 = &v7[16 * v9];
  v13 = 0xE500000000000000;
  *(v12 + 4) = 0x676E616C63;
  *(v12 + 5) = 0xE500000000000000;
  v14 = v9 + 2;
  if (v10 < (v9 + 2))
  {
    v7 = sub_1AF420554(v8 > 1, v9 + 2, 1, v7);
  }

  *(v7 + 2) = v14;
  v15 = &v7[16 * v11];
  *(v15 + 4) = 0x686372612DLL;
  *(v15 + 5) = 0xE500000000000000;
  v16 = *(*(v4 + 16) + 17);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v13 = 0xE600000000000000;
      v17 = 0x6534366D7261;
    }

    else
    {
      v13 = 0xE800000000000000;
      v17 = 0x32335F34366D7261;
    }
  }

  else if (*(*(v4 + 16) + 17))
  {
    v17 = 0x34366D7261;
  }

  else
  {
    v13 = 0xE600000000000000;
    v17 = 0x34365F363878;
  }

  v18 = *(v7 + 3);
  v19 = v9 + 3;
  if ((v9 + 3) > (v18 >> 1))
  {
    v7 = sub_1AF420554(v18 > 1, v9 + 3, 1, v7);
  }

  *(v7 + 2) = v19;
  v20 = &v7[16 * v14];
  *(v20 + 4) = v17;
  *(v20 + 5) = v13;
  v21 = *(v7 + 3);
  if ((v9 + 4) > (v21 >> 1))
  {
    v7 = sub_1AF420554(v21 > 1, v9 + 4, 1, v7);
  }

  *(v7 + 2) = v9 + 4;
  v22 = &v7[16 * v19];
  *(v22 + 4) = 0x656C646E75622DLL;
  *(v22 + 5) = 0xE700000000000000;
  v51 = v7;
  v23 = sub_1AF45D054();
  sub_1AF48FAF8(v23);
  v24 = sub_1AF45D650();
  sub_1AF48FAF8(v24);
  v25 = sub_1AF45D05C();
  sub_1AF48FAF8(v25);
  v26 = sub_1AF45D7A4();
  sub_1AF48FAF8(v26);
  v27 = v51;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_1AF420554(0, *(v51 + 2) + 1, 1, v51);
  }

  v29 = *(v27 + 2);
  v28 = *(v27 + 3);
  v30 = v28 >> 1;
  v31 = v29 + 1;
  if (v28 >> 1 <= v29)
  {
    v27 = sub_1AF420554(v28 > 1, v29 + 1, 1, v27);
    v28 = *(v27 + 3);
    v30 = v28 >> 1;
  }

  *(v27 + 2) = v31;
  v32 = &v27[16 * v29];
  *(v32 + 4) = 0xD000000000000010;
  *(v32 + 5) = 0x80000001AFF28E70;
  v33 = v29 + 2;
  if (v30 < (v29 + 2))
  {
    v27 = sub_1AF420554(v28 > 1, v29 + 2, 1, v27);
  }

  *(v27 + 2) = v33;
  v34 = &v27[16 * v31];
  *(v34 + 4) = 0x636A626F6C2DLL;
  *(v34 + 5) = 0xE600000000000000;
  v35 = *(v27 + 3);
  v36 = v29 + 3;
  if ((v29 + 3) > (v35 >> 1))
  {
    v27 = sub_1AF420554(v35 > 1, v29 + 3, 1, v27);
  }

  *(v27 + 2) = v36;
  v37 = &v27[16 * v33];
  *(v37 + 4) = 0x72656B6E696C582DLL;
  *(v37 + 5) = 0xE800000000000000;
  v38 = *(v27 + 3);
  v39 = v29 + 4;
  if ((v29 + 4) > (v38 >> 1))
  {
    v27 = sub_1AF420554(v38 > 1, v29 + 4, 1, v27);
  }

  *(v27 + 2) = v39;
  v40 = &v27[16 * v36];
  *(v40 + 4) = 0x5F74726F7078652DLL;
  *(v40 + 5) = 0xEF63696D616E7964;
  v41 = *(v27 + 3);
  v42 = v29 + 5;
  if ((v29 + 5) > (v41 >> 1))
  {
    v27 = sub_1AF420554(v41 > 1, v29 + 5, 1, v27);
  }

  *(v27 + 2) = v42;
  v43 = &v27[16 * v39];
  *(v43 + 4) = 0x72656B6E696C582DLL;
  *(v43 + 5) = 0xE800000000000000;
  v44 = *(v27 + 3);
  if ((v29 + 6) > (v44 >> 1))
  {
    v27 = sub_1AF420554(v44 > 1, v29 + 6, 1, v27);
  }

  *(v27 + 2) = v29 + 6;
  v45 = &v27[16 * v42];
  *(v45 + 4) = 0x756465645F6F6E2DLL;
  *(v45 + 5) = 0xEF65746163696C70;
  MEMORY[0x1B2718AE0](a2, a3);
  v47 = *(v27 + 2);
  v46 = *(v27 + 3);
  if (v47 >= v46 >> 1)
  {
    v27 = sub_1AF420554(v46 > 1, v47 + 1, 1, v27);
  }

  *(v27 + 2) = v47 + 1;
  v48 = &v27[16 * v47];
  *(v48 + 4) = 28461;
  *(v48 + 5) = 0xE200000000000000;

  sub_1AF48FAF8(v49);
  sub_1AF432980(MEMORY[0x1E69E7CC0]);
  sub_1AF45D904();

  return 0x6E69622F7273752FLL;
}

uint64_t sub_1AF45F35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AF420554(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  v11 = v9 >> 1;
  v12 = v10 + 1;
  if (v9 >> 1 <= v10)
  {
    v8 = sub_1AF420554(v9 > 1, v10 + 1, 1, v8);
    v9 = *(v8 + 3);
    v11 = v9 >> 1;
  }

  *(v8 + 2) = v12;
  v13 = &v8[16 * v10];
  *(v13 + 4) = 0x6C6174656DLL;
  *(v13 + 5) = 0xE500000000000000;
  v14 = v10 + 2;
  if (v11 < (v10 + 2))
  {
    v8 = sub_1AF420554(v9 > 1, v10 + 2, 1, v8);
  }

  *(v8 + 2) = v14;
  v15 = &v8[16 * v12];
  *(v15 + 4) = 25389;
  *(v15 + 5) = 0xE200000000000000;
  v16 = *(v8 + 3);
  v17 = v10 + 3;

  if ((v10 + 3) > (v16 >> 1))
  {
    v8 = sub_1AF420554(v16 > 1, v10 + 3, 1, v8);
  }

  *(v8 + 2) = v17;
  v18 = &v8[16 * v14];
  *(v18 + 4) = a1;
  *(v18 + 5) = a2;
  v19 = *(v8 + 3);
  v20 = v10 + 4;
  if ((v10 + 4) > (v19 >> 1))
  {
    v8 = sub_1AF420554(v19 > 1, v10 + 4, 1, v8);
  }

  *(v8 + 2) = v20;
  v21 = &v8[16 * v17];
  *(v21 + 4) = 28461;
  *(v21 + 5) = 0xE200000000000000;
  v22 = *(v8 + 3);

  if ((v10 + 5) > (v22 >> 1))
  {
    v8 = sub_1AF420554(v22 > 1, v10 + 5, 1, v8);
  }

  *(v8 + 2) = v10 + 5;
  v23 = &v8[16 * v20];
  *(v23 + 4) = a3;
  *(v23 + 5) = a4;
  sub_1AF432980(MEMORY[0x1E69E7CC0]);
  sub_1AF45D904();

  return 0x6E69622F7273752FLL;
}

uint64_t sub_1AF45F584(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (qword_1EB636C50 != -1)
  {
    swift_once();
  }

  [qword_1EB639080 lock];
  if (qword_1EB636C48 != -1)
  {
    swift_once();
  }

  v3 = off_1EB639078;
  v4 = v1 | (v2 << 8);
  if (*(off_1EB639078 + 2) && (v5 = sub_1AF419FCC(v1 | (v2 << 8)), (v6 & 1) != 0))
  {
    v7 = *(v3[7] + 8 * v5);
    v8 = qword_1EB639080;

    v9 = v8;
  }

  else
  {
    v13[0] = v1;
    v13[1] = v2;
    type metadata accessor for XcodeInfo();
    swift_allocObject();
    v7 = sub_1AF45D1B8(v13);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = off_1EB639078;
    off_1EB639078 = 0x8000000000000000;
    sub_1AF852868(v7, v4, isUniquelyReferenced_nonNull_native);
    off_1EB639078 = v12;
    v9 = qword_1EB639080;
  }

  [v9 unlock];
  return v7;
}

unint64_t sub_1AF45F6E8()
{
  v0 = sub_1AF420554(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = sub_1AF420554(v1 > 1, v2 + 1, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0x6563726F662D2DLL;
  *(v5 + 5) = 0xE700000000000000;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v0 = sub_1AF420554(v1 > 1, v2 + 2, 1, v0);
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0x6E6769732D2DLL;
  *(v7 + 5) = 0xE600000000000000;
  v8 = *(v0 + 3);
  v9 = v2 + 3;
  if ((v2 + 3) > (v8 >> 1))
  {
    v0 = sub_1AF420554(v8 > 1, v2 + 3, 1, v0);
  }

  *(v0 + 2) = v9;
  v10 = &v0[16 * v6];
  *(v10 + 4) = 45;
  *(v10 + 5) = 0xE100000000000000;
  v11 = *(v0 + 3);
  if ((v2 + 4) > (v11 >> 1))
  {
    v0 = sub_1AF420554(v11 > 1, v2 + 4, 1, v0);
  }

  *(v0 + 2) = v2 + 4;
  v12 = &v0[16 * v9];
  *(v12 + 4) = 0xD000000000000010;
  *(v12 + 5) = 0x80000001AFF28DC0;
  v13 = sub_1AFDFC0D8();
  v16 = *(v0 + 2);
  v15 = *(v0 + 3);
  if (v16 >= v15 >> 1)
  {
    v19 = v13;
    v20 = v14;
    v21 = sub_1AF420554(v15 > 1, v16 + 1, 1, v0);
    v14 = v20;
    v0 = v21;
    v13 = v19;
  }

  *(v0 + 2) = v16 + 1;
  v17 = &v0[16 * v16];
  *(v17 + 4) = v13;
  *(v17 + 5) = v14;
  sub_1AF432980(MEMORY[0x1E69E7CC0]);
  return 0xD000000000000011;
}

void sub_1AF45F8F0()
{
  if (!qword_1ED72F7C0)
  {
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED72F7C0);
    }
  }
}

unint64_t sub_1AF45F940()
{
  result = qword_1ED7307E8;
  if (!qword_1ED7307E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED7307E8);
  }

  return result;
}

uint64_t sub_1AF45F98C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 88);
  v4 = type metadata accessor for FutureStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1AF45FA28(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = type metadata accessor for FutureStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1AF45FAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v30 = a4;
  v9 = sub_1AFDFDD58();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v27 - v16;
  v18 = *(a3 - 8);
  (*(v18 + 56))(&v27 - v16, 1, 1, a3, v15);
  v19 = *(v5 + *(*v5 + 96));
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = v5;
  v20[4] = v17;
  v20[5] = a1;
  v20[6] = a2;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1AF464144;
  *(v21 + 24) = v20;
  aBlock[4] = sub_1AF464154;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AF6F662C;
  aBlock[3] = &unk_1F24E5E98;
  v22 = _Block_copy(aBlock);
  v23 = v19;

  dispatch_sync(v23, v22);

  _Block_release(v22);
  swift_isEscapingClosureAtFileLocation();

  v25 = v28;
  v24 = v29;
  (*(v28 + 16))(v12, v17, v29);
  (*(v18 + 48))(v12, 1, a3);
  (*(v18 + 32))(v30, v12, a3);
  (*(v25 + 8))(v17, v24);
}

uint64_t sub_1AF45FDB4(char *a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v25 = a5;
  v26 = a3;
  v28 = a2;
  v6 = *a1;
  v27 = sub_1AFDFDD58();
  v7 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for FutureStorage();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v25 - v19;
  v21 = *(v12 + 16);
  v21(&v25 - v19, &a1[*(v6 + 88)], v11, v18);
  v26(v20);
  (*(*(v25 - 8) + 56))(v10, 0, 1);
  (*(v7 + 40))(v28, v10, v27);
  (v21)(v15, v20, v11);
  v22 = *(*a1 + 88);
  v23 = type metadata accessor for FutureStorage();
  (*(*(v23 - 8) + 40))(&a1[v22], v15, v23);
  return (*(v12 + 8))(v20, v11);
}

uint64_t sub_1AF460060@<X0>(uint64_t a1@<X8>)
{
  v5[2] = *(*v1 + 80);
  v3 = type metadata accessor for FutureState();
  return sub_1AF45FAC4(sub_1AF46413C, v5, v3, a1);
}

uint64_t sub_1AF4600CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for FutureStorage() + 28);
  v5 = type metadata accessor for FutureState();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

uint64_t sub_1AF460154(uint64_t a1)
{
  v34 = a1;
  v2 = *v1;
  sub_1AF4640E4();
  v33 = *(v2 + 80);
  v3 = type metadata accessor for FutureResult();
  swift_getFunctionTypeMetadata1();
  swift_getTupleTypeMetadata2();
  sub_1AFDFD538();
  v32 = v3;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v5 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v31 - v11);
  v13 = sub_1AFDFDD58();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v31 - v21;
  (*(v5 + 56))(&v31 - v21, 1, 1, TupleTypeMetadata3, v20);
  v36 = v33;
  v37 = v22;
  v38 = v34;
  sub_1AF45FAC4(sub_1AF464130, v35, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8]);
  (*(v14 + 16))(v17, v22, v13);
  if ((*(v5 + 48))(v17, 1, TupleTypeMetadata3) == 1)
  {
    v23 = *(v14 + 8);
    v23(v17, v13);
    return (v23)(v22, v13);
  }

  (*(v5 + 32))(v12, v17, TupleTypeMetadata3);
  (*(v5 + 16))(v8, v12, TupleTypeMetadata3);

  v24 = *(v8 + 1);
  (*(*(v32 - 1) + 8))(&v8[*(TupleTypeMetadata3 + 64)]);
  if (!sub_1AFDFD4C8())
  {

LABEL_9:
    dispatch_group_leave(*v12);
    (*(v5 + 8))(v12, TupleTypeMetadata3);
    v23 = *(v14 + 8);
    return (v23)(v22, v13);
  }

  v32 = v22;
  v33 = v5;
  v34 = v13;
  v25 = 0;
  v26 = *(TupleTypeMetadata3 + 64);
  v27 = v24 + 48;
  while (1)
  {
    v28 = sub_1AFDFD4A8();
    sub_1AF75C3C8(v28 & 1);
    if ((v28 & 1) == 0)
    {
      break;
    }

    v29 = *(v27 - 8);
    ++v25;

    v29(v12 + v26);

    v27 += 24;
    if (v25 == sub_1AFDFD4C8())
    {

      v5 = v33;
      v13 = v34;
      v22 = v32;
      goto LABEL_9;
    }
  }

  result = sub_1AFDFE248();
  __break(1u);
  return result;
}

void sub_1AF460598(void **a1, void **a2, char *a3)
{
  v43 = a2;
  v44 = a3;
  v4 = type metadata accessor for FutureResult();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v39 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v39 - v18;
  v20 = type metadata accessor for FutureState();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v39 - v23;
  v25 = type metadata accessor for FutureStorage();
  v41 = *(v25 + 28);
  v42 = v21;
  (*(v21 + 16))(v24, a1 + v41, v20);
  if ((*(v5 + 48))(v24, 1, v4) == 1)
  {
    sub_1AF4640E4();
    swift_getFunctionTypeMetadata1();
    swift_getTupleTypeMetadata2();
    sub_1AFDFD538();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v27 = sub_1AFDFDD58();
    v28 = v43;
    (*(*(v27 - 8) + 8))(v43, v27);
    v29 = *(TupleTypeMetadata3 + 64);
    v30 = *a1;
    *v28 = *a1;
    v28[1] = *(a1 + *(v25 + 36));
    v31 = v44;
    v39 = v20;
    v40 = v25;
    v32 = *(v5 + 16);
    v32(v28 + v29, v44, v4);
    (*(*(TupleTypeMetadata3 - 8) + 56))(v28, 0, 1, TupleTypeMetadata3);
    v33 = *(v42 + 8);
    v34 = v30;

    v35 = v41;
    v33(a1 + v41, v39);
    v32(a1 + v35, v31, v4);
    (*(v5 + 56))(a1 + v35, 0, 1, v4);
    sub_1AF460B94();

    *a1 = 0;
    return;
  }

  (*(v5 + 32))(v19, v24, v4);
  v36 = *(v5 + 16);
  v36(v15, v19, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v38 = *(v5 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v38(v15, v4);
      v36(v11, v44, v4);
      if (swift_getEnumCaseMultiPayload() <= 1)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    v38(v19, v4);
    return;
  }

  v38(v15, v4);
  v11 = v40;
  v36(v40, v44, v4);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    goto LABEL_8;
  }

LABEL_9:
  v38(v11, v4);
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF28F10);
  sub_1AFDFEDD8();
  MEMORY[0x1B2718AE0](0x6E69206E65687720, 0xE900000000000020);
  sub_1AFDFEDD8();
  sub_1AFDFE518();
  __break(1u);
}

uint64_t sub_1AF460B94()
{
  type metadata accessor for FutureResult();
  swift_getFunctionTypeMetadata1();
  swift_getTupleTypeMetadata2();
  sub_1AFDFD538();
  return sub_1AFDFD528();
}

BOOL sub_1AF460C18()
{
  v0 = type metadata accessor for FutureState();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v17 - v3;
  v5 = type metadata accessor for FutureResult();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v17 - v12;
  sub_1AF460060(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    (*(v1 + 8))(v4, v0);
    return 0;
  }

  else
  {
    v15 = *(v6 + 32);
    v15(v13, v4, v5);
    v15(v9, v13, v5);
    v14 = swift_getEnumCaseMultiPayload() == 2;
    (*(v6 + 8))(v9, v5);
  }

  return v14;
}

uint64_t sub_1AF460E30()
{
  v0 = type metadata accessor for FutureResult();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - v3;
  swift_storeEnumTagMultiPayload();
  sub_1AF460154(v4);
  return (*(v1 + 8))(v4, v0);
}

uint64_t Future.deinit()
{
  v1 = *(*v0 + 88);
  v2 = type metadata accessor for FutureStorage();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t Future.__deallocating_deinit()
{
  Future.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1AF46106C()
{
  result = type metadata accessor for FutureStorage();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AF461184()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AF4611D4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *sub_1AF461268(char *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 8uLL)
  {
    v5 = 8;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (v5 + 1) > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = &v8[((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8];

    return v3;
  }

  v9 = a2[v5];
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v5 <= 3)
    {
      v11 = v5;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_24;
      }

      v12 = *a2;
    }

    else if (v11 == 2)
    {
      v12 = *a2;
    }

    else if (v11 == 3)
    {
      v12 = *a2 | (a2[2] << 16);
    }

    else
    {
      v12 = *a2;
    }

    v13 = (v12 | (v10 << (8 * v5))) + 2;
    v9 = v12 + 2;
    if (v5 < 4)
    {
      v9 = v13;
    }
  }

LABEL_24:
  if (v9 == 1)
  {
    v14 = *a2;
    v15 = *a2;
    *v3 = v14;
    v3[v5] = 1;
    return v3;
  }

  if (!v9)
  {
    (*(v4 + 16))(__dst);
    v3[v5] = 0;
    return v3;
  }

  return memcpy(__dst, a2, v5 + 1);
}

void sub_1AF461404(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 8)
  {
    v2 = 8;
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        goto LABEL_17;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 2;
    v3 = v6 + 2;
    if (v2 < 4)
    {
      v3 = v7;
    }
  }

LABEL_17:
  if (v3 == 1)
  {
  }

  else if (!v3)
  {
    (*(*(*(a2 + 16) - 8) + 8))();
  }
}

void *sub_1AF4614F4(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v3 = 8;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  v4 = a2[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        goto LABEL_18;
      }

      v7 = *a2;
    }

    else if (v6 == 2)
    {
      v7 = *a2;
    }

    else if (v6 == 3)
    {
      v7 = *a2 | (a2[2] << 16);
    }

    else
    {
      v7 = *a2;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 2;
    v4 = v7 + 2;
    if (v3 < 4)
    {
      v4 = v8;
    }
  }

LABEL_18:
  if (v4 == 1)
  {
    v11 = *a2;
    v13 = *a2;
    result = a1;
    *a1 = v11;
    *(a1 + v3) = 1;
  }

  else if (v4)
  {

    return memcpy(a1, a2, v3 + 1);
  }

  else
  {
    (*(*(*(a3 + 16) - 8) + 16))();
    result = a1;
    *(a1 + v3) = 0;
  }

  return result;
}

id *sub_1AF461650(id *__dst, unsigned __int8 *a2, uint64_t a3)
{
  if (__dst == a2)
  {
    return __dst;
  }

  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 8uLL)
  {
    v5 = 8;
  }

  else
  {
    v5 = *(v4 + 64);
  }

  v6 = *(__dst + v5);
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    if (v5 <= 3)
    {
      v8 = v5;
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_19;
      }

      v9 = *__dst;
    }

    else if (v8 == 2)
    {
      v9 = *__dst;
    }

    else if (v8 == 3)
    {
      v9 = *__dst | (*(__dst + 2) << 16);
    }

    else
    {
      v9 = *__dst;
    }

    v10 = (v9 | (v7 << (8 * v5))) + 2;
    v6 = v9 + 2;
    if (v5 < 4)
    {
      v6 = v10;
    }
  }

LABEL_19:
  if (v6 == 1)
  {
    v11 = a2;
  }

  else
  {
    if (v6)
    {
      goto LABEL_24;
    }

    v11 = a2;
    (*(v4 + 8))(__dst, *(a3 + 16));
  }

  a2 = v11;
LABEL_24:
  v12 = a2[v5];
  v13 = v12 - 2;
  if (v12 < 2)
  {
    goto LABEL_38;
  }

  if (v5 <= 3)
  {
    v14 = v5;
  }

  else
  {
    v14 = 4;
  }

  if (v14 <= 1)
  {
    if (!v14)
    {
      goto LABEL_38;
    }

    v15 = *a2;
  }

  else if (v14 == 2)
  {
    v15 = *a2;
  }

  else if (v14 == 3)
  {
    v15 = *a2 | (a2[2] << 16);
  }

  else
  {
    v15 = *a2;
  }

  v16 = (v15 | (v13 << (8 * v5))) + 2;
  v12 = v15 + 2;
  if (v5 < 4)
  {
    v12 = v16;
  }

LABEL_38:
  if (v12 == 1)
  {
    v17 = *a2;
    v18 = *a2;
    *__dst = v17;
    *(__dst + v5) = 1;
    return __dst;
  }

  if (!v12)
  {
    (*(v4 + 16))(__dst);
    *(__dst + v5) = 0;
    return __dst;
  }

  return memcpy(__dst, a2, v5 + 1);
}

void *sub_1AF461878(void *result, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v3 = 8;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  v4 = a2[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        goto LABEL_18;
      }

      v7 = *a2;
    }

    else if (v6 == 2)
    {
      v7 = *a2;
    }

    else if (v6 == 3)
    {
      v7 = *a2 | (a2[2] << 16);
    }

    else
    {
      v7 = *a2;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 2;
    v4 = v7 + 2;
    if (v3 < 4)
    {
      v4 = v8;
    }
  }

LABEL_18:
  if (v4 == 1)
  {
    *result = *a2;
    *(result + v3) = 1;
  }

  else if (v4)
  {

    return memcpy(result, a2, v3 + 1);
  }

  else
  {
    v9 = result;
    (*(*(*(a3 + 16) - 8) + 32))();
    result = v9;
    *(v9 + v3) = 0;
  }

  return result;
}

unsigned __int8 *sub_1AF4619B8(unsigned __int8 *result, unsigned __int16 *a2, uint64_t a3)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 8uLL)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  v5 = result[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_19;
      }

      v8 = *result;
    }

    else if (v7 == 2)
    {
      v8 = *result;
    }

    else if (v7 == 3)
    {
      v8 = *result | (result[2] << 16);
    }

    else
    {
      v8 = *result;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_19:
  if (v5 == 1)
  {
    v10 = result;
    v11 = a2;
  }

  else
  {
    if (v5)
    {
      goto LABEL_24;
    }

    v10 = result;
    v11 = a2;
    (*(v3 + 8))();
  }

  a2 = v11;
  result = v10;
LABEL_24:
  v12 = *(a2 + v4);
  v13 = v12 - 2;
  if (v12 >= 2)
  {
    if (v4 <= 3)
    {
      v14 = v4;
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v15 = *a2;
      }

      else if (v14 == 3)
      {
        v15 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v15 = *a2;
      }

LABEL_36:
      v16 = (v15 | (v13 << (8 * v4))) + 2;
      v12 = v15 + 2;
      if (v4 < 4)
      {
        v12 = v16;
      }

      goto LABEL_38;
    }

    if (v14)
    {
      v15 = *a2;
      goto LABEL_36;
    }
  }

LABEL_38:
  if (v12 == 1)
  {
    *result = *a2;
    result[v4] = 1;
  }

  else if (v12)
  {

    return memcpy(result, a2, v4 + 1);
  }

  else
  {
    v17 = result;
    (*(v3 + 32))();
    result = v17;
    v17[v4] = 0;
  }

  return result;
}

uint64_t sub_1AF461BDC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1AF461CF4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1AF461EAC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = 8;
  if (*(v2 + 64) > 8uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return v4;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (a1[2] << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 2;
    LODWORD(v4) = v7 + 2;
    if (v3 >= 4)
    {
      return v4;
    }

    else
    {
      return v8;
    }
  }

  return v4;
}

void sub_1AF461F4C(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v3 = 8;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (a2 > 1)
  {
    v4 = a2 - 2;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 2;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 2;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

uint64_t sub_1AF46203C()
{
  result = type metadata accessor for FutureState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void **sub_1AF4620F4(void **a1, void **a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v6 & 0xF8 | 7;
  if (*(v5 + 64) <= 8uLL)
  {
    v8 = 8;
  }

  else
  {
    v8 = *(v5 + 64);
  }

  v9 = *a2;
  *a1 = *a2;
  if ((v6 & 0x1000F8) == 0 && ((((v8 + (((v6 & 0xF8) + 15) & ~v7) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 <= 0x18)
  {
    v11 = v8 + 1;
    v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v13 = a2 + 15;
    v14 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v15 = v14[v8];
    v16 = v9;
    if (v15 > 2)
    {
      goto LABEL_27;
    }

    if (v15 == 2)
    {
      if (v8 >= 4)
      {
        v17 = 4;
      }

      else
      {
        v17 = v8;
      }

      if (v17 <= 1)
      {
        if (!v17)
        {
          goto LABEL_27;
        }

        v18 = *v14;
      }

      else if (v17 == 2)
      {
        v18 = *v14;
      }

      else if (v17 == 3)
      {
        v18 = *v14 | (v14[2] << 16);
      }

      else
      {
        v18 = *v14;
      }

      v15 = v18 + 2;
    }

    if (v15 == 1)
    {
      v22 = *v14;
      v23 = *v14;
      *v12 = v22;
      *(v12 + v8) = 1;
      goto LABEL_28;
    }

    if (!v15)
    {
      (*(v5 + 16))((a1 + 15) & 0xFFFFFFFFFFFFFFF8, v14, v4);
      *(v12 + v8) = 0;
LABEL_28:
      v19 = ((((a1 + 15) | 7) + v11) & 0xFFFFFFFFFFFFFFF8);
      v20 = (((v13 | 7) + v11) & 0xFFFFFFFFFFFFFFF8);
      *v19 = *v20;
      *((v19 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v20 + 15) & 0xFFFFFFFFFFFFFFF8);

      return a1;
    }

LABEL_27:
    memcpy(((a1 + 15) & 0xFFFFFFFFFFFFFFF8), v14, v8 + 1);
    goto LABEL_28;
  }

  a1 = &v9[(v7 + 16) & ~v7];

  return a1;
}

uint64_t sub_1AF4622F4(id *a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 80) & 0xF8 | 7;
  v6 = ((a1 + v5 + 8) & ~v5);
  if (*(v4 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v4 + 64);
  }

  v8 = v6[v7];
  if (v8 <= 2)
  {
    if (v8 == 2)
    {
      if (v7 >= 4)
      {
        v9 = 4;
      }

      else
      {
        v9 = v7;
      }

      if (v9 <= 1)
      {
        if (!v9)
        {
          goto LABEL_22;
        }

        v10 = *v6;
      }

      else if (v9 == 2)
      {
        v10 = *v6;
      }

      else if (v9 == 3)
      {
        v10 = *v6 | (v6[2] << 16);
      }

      else
      {
        v10 = *v6;
      }

      v8 = v10 + 2;
    }

    if (v8 == 1)
    {
    }

    else if (!v8)
    {
      (*(v4 + 8))(v6);
    }
  }

LABEL_22:
}

void **sub_1AF462440(void **a1, void **a2, uint64_t a3)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80) & 0xF8;
  v8 = v7 + 15;
  v9 = a1 + v7 + 15;
  v10 = ~v7 & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 & v10);
  v12 = ((a2 + v8) & v10);
  if (*(v6 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v6 + 64);
  }

  v14 = *(v12 + v13);
  v15 = v4;
  if (v14 > 2)
  {
    goto LABEL_21;
  }

  if (v14 != 2)
  {
    goto LABEL_18;
  }

  if (v13 >= 4)
  {
    v16 = 4;
  }

  else
  {
    v16 = v13;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *v12;
    }

    else if (v16 == 3)
    {
      v17 = *v12 | (*(v12 + 2) << 16);
    }

    else
    {
      v17 = *v12;
    }

    goto LABEL_17;
  }

  if (!v16)
  {
LABEL_21:
    memcpy(v11, v12, v13 + 1);
    goto LABEL_22;
  }

  v17 = *v12;
LABEL_17:
  v14 = v17 + 2;
LABEL_18:
  if (v14 == 1)
  {
    v21 = *v12;
    v22 = *v12;
    *v11 = v21;
    *(v11 + v13) = 1;
    goto LABEL_22;
  }

  if (v14)
  {
    goto LABEL_21;
  }

  (*(v6 + 16))(v11, v12, v5);
  *(v11 + v13) = 0;
LABEL_22:
  v18 = ((v11 + v13 + 8) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v12 + v13 + 8) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  *((v18 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v19 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

void **sub_1AF4625EC(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80) & 0xF8;
  v12 = v11 + 15;
  v13 = a1 + v11 + 15;
  v14 = ~v11 & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 & v14);
  v16 = a2 + v12;
  v17 = (v16 & v14);
  if (*(v10 + 64) <= 8uLL)
  {
    v18 = 8;
  }

  else
  {
    v18 = *(v10 + 64);
  }

  v19 = *(v15 + v18);
  v20 = v17[v18];
  if (v19 > 2)
  {
    if (v20 > 2)
    {
      goto LABEL_49;
    }

    if (v20 == 2)
    {
      if (v18 <= 3)
      {
        v23 = v18;
      }

      else
      {
        v23 = 4;
      }

      if (v23 <= 1)
      {
        if (!v23)
        {
          goto LABEL_49;
        }

        v24 = *v17;
      }

      else if (v23 == 2)
      {
        v24 = *v17;
      }

      else if (v23 == 3)
      {
        v24 = *v17 | (*((v16 & v14) + 2) << 16);
      }

      else
      {
        v24 = *v17;
      }

      v20 = v24 + 2;
    }

    if (v20 == 1)
    {
LABEL_75:
      v34 = *v17;
      v35 = *v17;
      *v15 = v34;
      *(v15 + v18) = 1;
      goto LABEL_50;
    }

LABEL_41:
    if (!v20)
    {
      (*(v10 + 16))(v15, v17, v9);
      *(v15 + v18) = 0;
      goto LABEL_50;
    }

LABEL_49:
    memcpy(v15, v17, v18 + 1);
    goto LABEL_50;
  }

  if (v20 > 2)
  {
    if (v19 == 2)
    {
      if (v18 <= 3)
      {
        v25 = v18;
      }

      else
      {
        v25 = 4;
      }

      if (v25 <= 1)
      {
        if (!v25)
        {
          goto LABEL_49;
        }

        v26 = *v15;
      }

      else if (v25 == 2)
      {
        v26 = *v15;
      }

      else if (v25 == 3)
      {
        v26 = *v15 | (*((v13 & v14) + 2) << 16);
      }

      else
      {
        v26 = *v15;
      }

      v19 = v26 + 2;
    }

    if (v19 == 1)
    {
    }

    else if (!v19)
    {
      (*(v10 + 8))(v13 & v14, v9);
    }

    goto LABEL_49;
  }

  if (v15 != v17)
  {
    if (v19 == 2)
    {
      if (v18 <= 3)
      {
        v21 = v18;
      }

      else
      {
        v21 = 4;
      }

      if (v21 <= 1)
      {
        if (!v21)
        {
          goto LABEL_60;
        }

        v22 = *v15;
      }

      else if (v21 == 2)
      {
        v22 = *v15;
      }

      else if (v21 == 3)
      {
        v22 = *v15 | (*((v13 & v14) + 2) << 16);
      }

      else
      {
        v22 = *v15;
      }

      v19 = v22 + 2;
    }

    if (v19 == 1)
    {
    }

    else if (!v19)
    {
      (*(v10 + 8))(v13 & v14, v9);
    }

LABEL_60:
    v20 = v17[v18];
    v30 = v20 - 2;
    if (v20 < 2)
    {
      goto LABEL_74;
    }

    if (v18 <= 3)
    {
      v31 = v18;
    }

    else
    {
      v31 = 4;
    }

    if (v31 <= 1)
    {
      if (!v31)
      {
        goto LABEL_74;
      }

      v32 = *v17;
    }

    else if (v31 == 2)
    {
      v32 = *v17;
    }

    else if (v31 == 3)
    {
      v32 = *v17 | (v17[2] << 16);
    }

    else
    {
      v32 = *v17;
    }

    v33 = (v32 | (v30 << (8 * v18))) + 2;
    v20 = v32 + 2;
    if (v18 < 4)
    {
      v20 = v33;
    }

LABEL_74:
    if (v20 == 1)
    {
      goto LABEL_75;
    }

    goto LABEL_41;
  }

LABEL_50:
  v27 = ((v15 + v18 + 8) & 0xFFFFFFFFFFFFFFF8);
  v28 = (&v17[v18 + 8] & 0xFFFFFFFFFFFFFFF8);
  *v27 = *v28;
  *((v27 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v28 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

void *sub_1AF462958(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80) & 0xF8;
  v6 = v5 + 15;
  v7 = a1 + v5 + 15;
  v8 = ~v5 & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 & v8);
  v10 = a2 + v6;
  v11 = (v10 & v8);
  if (*(v4 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(*(*(a3 + 16) - 8) + 64);
  }

  v13 = *(v11 + v12);
  if (v13 > 2)
  {
    goto LABEL_21;
  }

  if (v13 != 2)
  {
    goto LABEL_18;
  }

  if (v12 >= 4)
  {
    v14 = 4;
  }

  else
  {
    v14 = v12;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *v11;
    }

    else if (v14 == 3)
    {
      v15 = *v11 | (*((v10 & v8) + 2) << 16);
    }

    else
    {
      v15 = *v11;
    }

    goto LABEL_17;
  }

  if (!v14)
  {
LABEL_21:
    memcpy((v7 & v8), (v10 & v8), v12 + 1);
    goto LABEL_22;
  }

  v15 = *v11;
LABEL_17:
  v13 = v15 + 2;
LABEL_18:
  if (v13 == 1)
  {
    *v9 = *v11;
    *(v9 + v12) = 1;
    goto LABEL_22;
  }

  if (v13)
  {
    goto LABEL_21;
  }

  (*(v4 + 32))(v7 & v8, v10 & v8);
  *(v9 + v12) = 0;
LABEL_22:
  v16 = ((v9 + v12 + 8) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v11 + v12 + 8) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void **sub_1AF462AE0(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80) & 0xF8;
  v10 = v9 + 15;
  v11 = a1 + v9 + 15;
  v12 = ~v9 & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 & v12);
  v14 = a2 + v10;
  v15 = (v14 & v12);
  if (*(v8 + 64) <= 8uLL)
  {
    v16 = 8;
  }

  else
  {
    v16 = *(v8 + 64);
  }

  v17 = *(v13 + v16);
  v18 = v15[v16];
  if (v17 > 2)
  {
    if (v18 > 2)
    {
      goto LABEL_49;
    }

    if (v18 == 2)
    {
      if (v16 <= 3)
      {
        v21 = v16;
      }

      else
      {
        v21 = 4;
      }

      if (v21 <= 1)
      {
        if (!v21)
        {
          goto LABEL_49;
        }

        v22 = *v15;
      }

      else if (v21 == 2)
      {
        v22 = *v15;
      }

      else if (v21 == 3)
      {
        v22 = *v15 | (*((v14 & v12) + 2) << 16);
      }

      else
      {
        v22 = *v15;
      }

      v18 = v22 + 2;
    }

    if (v18 == 1)
    {
LABEL_75:
      *v13 = *v15;
      *(v13 + v16) = 1;
      goto LABEL_50;
    }

LABEL_41:
    if (!v18)
    {
      (*(v8 + 32))(v13, v15, v7);
      *(v13 + v16) = 0;
      goto LABEL_50;
    }

LABEL_49:
    memcpy(v13, v15, v16 + 1);
    goto LABEL_50;
  }

  if (v18 > 2)
  {
    if (v17 == 2)
    {
      if (v16 <= 3)
      {
        v23 = v16;
      }

      else
      {
        v23 = 4;
      }

      if (v23 <= 1)
      {
        if (!v23)
        {
          goto LABEL_49;
        }

        v24 = *v13;
      }

      else if (v23 == 2)
      {
        v24 = *v13;
      }

      else if (v23 == 3)
      {
        v24 = *v13 | (*((v11 & v12) + 2) << 16);
      }

      else
      {
        v24 = *v13;
      }

      v17 = v24 + 2;
    }

    if (v17 == 1)
    {
    }

    else if (!v17)
    {
      (*(v8 + 8))(v11 & v12, v7);
    }

    goto LABEL_49;
  }

  if (v13 != v15)
  {
    if (v17 == 2)
    {
      if (v16 <= 3)
      {
        v19 = v16;
      }

      else
      {
        v19 = 4;
      }

      if (v19 <= 1)
      {
        if (!v19)
        {
          goto LABEL_60;
        }

        v20 = *v13;
      }

      else if (v19 == 2)
      {
        v20 = *v13;
      }

      else if (v19 == 3)
      {
        v20 = *v13 | (*((v11 & v12) + 2) << 16);
      }

      else
      {
        v20 = *v13;
      }

      v17 = v20 + 2;
    }

    if (v17 == 1)
    {
    }

    else if (!v17)
    {
      (*(v8 + 8))(v11 & v12, v7);
    }

LABEL_60:
    v18 = v15[v16];
    v28 = v18 - 2;
    if (v18 < 2)
    {
      goto LABEL_74;
    }

    if (v16 <= 3)
    {
      v29 = v16;
    }

    else
    {
      v29 = 4;
    }

    if (v29 <= 1)
    {
      if (!v29)
      {
        goto LABEL_74;
      }

      v30 = *v15;
    }

    else if (v29 == 2)
    {
      v30 = *v15;
    }

    else if (v29 == 3)
    {
      v30 = *v15 | (v15[2] << 16);
    }

    else
    {
      v30 = *v15;
    }

    v31 = (v30 | (v28 << (8 * v16))) + 2;
    v18 = v30 + 2;
    if (v16 < 4)
    {
      v18 = v31;
    }

LABEL_74:
    if (v18 == 1)
    {
      goto LABEL_75;
    }

    goto LABEL_41;
  }

LABEL_50:
  v25 = ((v13 + v16 + 8) & 0xFFFFFFFFFFFFFFF8);
  v26 = (&v15[v16 + 8] & 0xFFFFFFFFFFFFFFF8);
  *v25 = *v26;
  *((v25 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v26 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_1AF462E38(int *a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  v5 = *(v3 + 80) & 0xF8;
  v6 = v5 | 7;
  v7 = v4 + 8;
  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v10 = ((((v7 + ((v5 + 15) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = v10 & 0xFFFFFFF8;
  v12 = a2 - 2147483646;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  if (v14 == 4)
  {
    v15 = *(a1 + v10);
    if (!v15)
    {
      goto LABEL_5;
    }
  }

  else if (v14 == 2)
  {
    v15 = *(a1 + v10);
    if (!v15)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v15 = *(a1 + v10);
    if (!v15)
    {
LABEL_5:
      v8 = *((((v7 + ((a1 + v6 + 8) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v8 >= 0xFFFFFFFF)
      {
        LODWORD(v8) = -1;
      }

      return (v8 + 1);
    }
  }

  v16 = v15 - 1;
  if (v11)
  {
    v16 = 0;
    v17 = *a1;
  }

  else
  {
    v17 = 0;
  }

  return (v17 | v16) ^ 0x80000000;
}

int *sub_1AF462F80(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = 8;
  if (*(v4 + 64) > 8uLL)
  {
    v5 = *(v4 + 64);
  }

  v6 = *(v4 + 80) & 0xF8;
  v7 = v6 | 7;
  v8 = (v6 + 15) & ~(v6 | 7);
  v9 = v5 + 8;
  v10 = ((((v5 + 8 + v8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (a3 < 0)
  {
    v12 = a3 - 2147483646;
    if (v10)
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = v13;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v14 = a2 & 0x7FFFFFFF;
    if (v10)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14 + 1;
    }

    if (v10)
    {
      v16 = result;
      bzero(result, v10);
      result = v16;
      *v16 = v14;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        *(result + v10) = v15;
      }

      else
      {
        *(result + v10) = v15;
      }
    }

    else if (v11)
    {
      *(result + v10) = v15;
    }

    return result;
  }

  v11 = 0;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v11 <= 1)
  {
    if (v11)
    {
      *(result + v10) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!a2)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v11 == 2)
  {
    *(result + v10) = 0;
    goto LABEL_28;
  }

  *(result + v10) = 0;
  if (a2)
  {
LABEL_29:
    *((((v9 + ((result + v7 + 8) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AF463134()
{
  result = type metadata accessor for FutureResult();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

char *sub_1AF4631B0(char *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 8uLL)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = *(v3 + 80);
  if ((v5 & 0x1000F8) != 0 || (v4 + 1) > 0x18)
  {
    v7 = *a2;
    *a1 = *a2;
    v8 = &v7[((v5 & 0xF8) + 23) & ~(v5 & 0xF8) & 0x1F8];

    return v8;
  }

  v10 = a2[v4];
  if (v10 > 2)
  {
    goto LABEL_27;
  }

  if (v10 == 2)
  {
    if (v4 >= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = v4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_27;
      }

      v12 = *a2;
    }

    else if (v11 == 2)
    {
      v12 = *a2;
    }

    else if (v11 == 3)
    {
      v12 = *a2 | (a2[2] << 16);
    }

    else
    {
      v12 = *a2;
    }

    v10 = v12 + 2;
  }

  if (v10 == 1)
  {
    v14 = *a2;
    v16 = *a2;
    result = a1;
    *a1 = v14;
    a1[v4] = 1;
    return result;
  }

  if (!v10)
  {
    (*(v3 + 16))();
    result = a1;
    a1[v4] = 0;
    return result;
  }

LABEL_27:

  return memcpy(a1, a2, v4 + 1);
}

void sub_1AF463340(unsigned __int8 *a1, uint64_t a2)
{
  v2 = 8;
  if (*(*(*(a2 + 16) - 8) + 64) > 8uLL)
  {
    v2 = *(*(*(a2 + 16) - 8) + 64);
  }

  v3 = a1[v2];
  if (v3 <= 2)
  {
    if (v3 == 2)
    {
      if (v2 >= 4)
      {
        v4 = 4;
      }

      else
      {
        v4 = v2;
      }

      if (v4 <= 1)
      {
        if (!v4)
        {
          return;
        }

        v5 = *a1;
      }

      else if (v4 == 2)
      {
        v5 = *a1;
      }

      else if (v4 == 3)
      {
        v5 = *a1 | (a1[2] << 16);
      }

      else
      {
        v5 = *a1;
      }

      v3 = v5 + 2;
    }

    if (v3 == 1)
    {
    }

    else if (!v3)
    {
      (*(*(*(a2 + 16) - 8) + 8))();
    }
  }
}

void *sub_1AF46341C(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v3 = 8;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  v4 = a2[v3];
  if (v4 <= 2)
  {
    if (v4 == 2)
    {
      if (v3 >= 4)
      {
        v5 = 4;
      }

      else
      {
        v5 = v3;
      }

      if (v5 <= 1)
      {
        if (!v5)
        {
          goto LABEL_21;
        }

        v6 = *a2;
      }

      else if (v5 == 2)
      {
        v6 = *a2;
      }

      else if (v5 == 3)
      {
        v6 = *a2 | (a2[2] << 16);
      }

      else
      {
        v6 = *a2;
      }

      v4 = v6 + 2;
    }

    if (v4 == 1)
    {
      v9 = *a2;
      v11 = *a2;
      result = a1;
      *a1 = v9;
      *(a1 + v3) = 1;
      return result;
    }

    if (!v4)
    {
      (*(*(*(a3 + 16) - 8) + 16))();
      result = a1;
      *(a1 + v3) = 0;
      return result;
    }
  }

LABEL_21:

  return memcpy(a1, a2, v3 + 1);
}

unsigned __int8 *sub_1AF463564(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 8uLL)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  v5 = result[v4];
  v6 = a2[v4];
  if (v5 > 2)
  {
    if (v6 <= 2)
    {
      if (v6 == 2)
      {
        if (v4 <= 3)
        {
          v9 = v4;
        }

        else
        {
          v9 = 4;
        }

        if (v9 <= 1)
        {
          if (!v9)
          {
            goto LABEL_51;
          }

          v10 = *a2;
        }

        else if (v9 == 2)
        {
          v10 = *a2;
        }

        else if (v9 == 3)
        {
          v10 = *a2 | (a2[2] << 16);
        }

        else
        {
          v10 = *a2;
        }

        v6 = v10 + 2;
      }

      if (v6 == 1)
      {
LABEL_77:
        v24 = *a2;
        v25 = result;
        v26 = *a2;
        result = v25;
        *v25 = v24;
        v25[v4] = 1;
        return result;
      }

      goto LABEL_43;
    }
  }

  else
  {
    if (v6 <= 2)
    {
      if (result == a2)
      {
        return result;
      }

      if (v5 == 2)
      {
        if (v4 <= 3)
        {
          v7 = v4;
        }

        else
        {
          v7 = 4;
        }

        if (v7 <= 1)
        {
          if (!v7)
          {
            goto LABEL_62;
          }

          v8 = *result;
        }

        else if (v7 == 2)
        {
          v8 = *result;
        }

        else if (v7 == 3)
        {
          v8 = *result | (result[2] << 16);
        }

        else
        {
          v8 = *result;
        }

        v5 = v8 + 2;
      }

      if (v5 == 1)
      {
        v18 = result;
        v19 = a2;
      }

      else
      {
        if (v5)
        {
          goto LABEL_62;
        }

        v18 = result;
        v19 = a2;
        (*(v3 + 8))();
      }

      a2 = v19;
      result = v18;
LABEL_62:
      v6 = a2[v4];
      v20 = v6 - 2;
      if (v6 < 2)
      {
        goto LABEL_76;
      }

      if (v4 <= 3)
      {
        v21 = v4;
      }

      else
      {
        v21 = 4;
      }

      if (v21 <= 1)
      {
        if (!v21)
        {
          goto LABEL_76;
        }

        v22 = *a2;
      }

      else if (v21 == 2)
      {
        v22 = *a2;
      }

      else if (v21 == 3)
      {
        v22 = *a2 | (a2[2] << 16);
      }

      else
      {
        v22 = *a2;
      }

      v23 = (v22 | (v20 << (8 * v4))) + 2;
      v6 = v22 + 2;
      if (v4 < 4)
      {
        v6 = v23;
      }

LABEL_76:
      if (v6 == 1)
      {
        goto LABEL_77;
      }

LABEL_43:
      if (!v6)
      {
        v13 = result;
        (*(v3 + 16))();
        result = v13;
        v13[v4] = 0;
        return result;
      }

      goto LABEL_51;
    }

    if (v5 != 2)
    {
      goto LABEL_47;
    }

    if (v4 <= 3)
    {
      v11 = v4;
    }

    else
    {
      v11 = 4;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v12 = *result;
      }

      else if (v11 == 3)
      {
        v12 = *result | (result[2] << 16);
      }

      else
      {
        v12 = *result;
      }

      goto LABEL_46;
    }

    if (v11)
    {
      v12 = *result;
LABEL_46:
      v5 = v12 + 2;
LABEL_47:
      if (v5 == 1)
      {
        v16 = result;
        v17 = a2;

        a2 = v17;
        result = v16;
      }

      else if (!v5)
      {
        v14 = result;
        v15 = a2;
        (*(v3 + 8))();
        a2 = v15;
        result = v14;
      }
    }
  }

LABEL_51:

  return memcpy(result, a2, v4 + 1);
}

void *sub_1AF4638A0(void *result, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v3 = 8;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  v4 = a2[v3];
  if (v4 <= 2)
  {
    if (v4 == 2)
    {
      if (v3 >= 4)
      {
        v5 = 4;
      }

      else
      {
        v5 = v3;
      }

      if (v5 <= 1)
      {
        if (!v5)
        {
          goto LABEL_21;
        }

        v6 = *a2;
      }

      else if (v5 == 2)
      {
        v6 = *a2;
      }

      else if (v5 == 3)
      {
        v6 = *a2 | (a2[2] << 16);
      }

      else
      {
        v6 = *a2;
      }

      v4 = v6 + 2;
    }

    if (v4 == 1)
    {
      *result = *a2;
      *(result + v3) = 1;
      return result;
    }

    if (!v4)
    {
      v7 = result;
      (*(*(*(a3 + 16) - 8) + 32))();
      result = v7;
      *(v7 + v3) = 0;
      return result;
    }
  }

LABEL_21:

  return memcpy(result, a2, v3 + 1);
}

unsigned __int8 *sub_1AF4639CC(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 8uLL)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  v5 = result[v4];
  v6 = a2[v4];
  if (v5 > 2)
  {
    if (v6 <= 2)
    {
      if (v6 == 2)
      {
        if (v4 <= 3)
        {
          v9 = v4;
        }

        else
        {
          v9 = 4;
        }

        if (v9 <= 1)
        {
          if (!v9)
          {
            goto LABEL_51;
          }

          v10 = *a2;
        }

        else if (v9 == 2)
        {
          v10 = *a2;
        }

        else if (v9 == 3)
        {
          v10 = *a2 | (a2[2] << 16);
        }

        else
        {
          v10 = *a2;
        }

        v6 = v10 + 2;
      }

      if (v6 == 1)
      {
LABEL_77:
        *result = *a2;
        result[v4] = 1;
        return result;
      }

      goto LABEL_43;
    }
  }

  else
  {
    if (v6 <= 2)
    {
      if (result == a2)
      {
        return result;
      }

      if (v5 == 2)
      {
        if (v4 <= 3)
        {
          v7 = v4;
        }

        else
        {
          v7 = 4;
        }

        if (v7 <= 1)
        {
          if (!v7)
          {
            goto LABEL_62;
          }

          v8 = *result;
        }

        else if (v7 == 2)
        {
          v8 = *result;
        }

        else if (v7 == 3)
        {
          v8 = *result | (result[2] << 16);
        }

        else
        {
          v8 = *result;
        }

        v5 = v8 + 2;
      }

      if (v5 == 1)
      {
        v18 = result;
        v19 = a2;
      }

      else
      {
        if (v5)
        {
          goto LABEL_62;
        }

        v18 = result;
        v19 = a2;
        (*(v3 + 8))();
      }

      a2 = v19;
      result = v18;
LABEL_62:
      v6 = a2[v4];
      v20 = v6 - 2;
      if (v6 < 2)
      {
        goto LABEL_76;
      }

      if (v4 <= 3)
      {
        v21 = v4;
      }

      else
      {
        v21 = 4;
      }

      if (v21 <= 1)
      {
        if (!v21)
        {
          goto LABEL_76;
        }

        v22 = *a2;
      }

      else if (v21 == 2)
      {
        v22 = *a2;
      }

      else if (v21 == 3)
      {
        v22 = *a2 | (a2[2] << 16);
      }

      else
      {
        v22 = *a2;
      }

      v23 = (v22 | (v20 << (8 * v4))) + 2;
      v6 = v22 + 2;
      if (v4 < 4)
      {
        v6 = v23;
      }

LABEL_76:
      if (v6 == 1)
      {
        goto LABEL_77;
      }

LABEL_43:
      if (!v6)
      {
        v13 = result;
        (*(v3 + 32))();
        result = v13;
        v13[v4] = 0;
        return result;
      }

      goto LABEL_51;
    }

    if (v5 != 2)
    {
      goto LABEL_47;
    }

    if (v4 <= 3)
    {
      v11 = v4;
    }

    else
    {
      v11 = 4;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v12 = *result;
      }

      else if (v11 == 3)
      {
        v12 = *result | (result[2] << 16);
      }

      else
      {
        v12 = *result;
      }

      goto LABEL_46;
    }

    if (v11)
    {
      v12 = *result;
LABEL_46:
      v5 = v12 + 2;
LABEL_47:
      if (v5 == 1)
      {
        v16 = result;
        v17 = a2;

        a2 = v17;
        result = v16;
      }

      else if (!v5)
      {
        v14 = result;
        v15 = a2;
        (*(v3 + 8))();
        a2 = v15;
        result = v14;
      }
    }
  }

LABEL_51:

  return memcpy(result, a2, v4 + 1);
}

uint64_t sub_1AF463CF8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) > 3)
  {
    goto LABEL_6;
  }

  v9 = ((a2 + ~(-1 << v6) - 252) >> v6) + 1;
  if (HIWORD(v9))
  {
    v7 = *(a1 + v5);
    if (v7)
    {
      goto LABEL_14;
    }

LABEL_25:
    v11 = *(a1 + v4);
    if (v11 >= 3)
    {
      v12 = (v11 ^ 0xFF) + 1;
    }

    else
    {
      v12 = 0;
    }

    if (v12 >= 2)
    {
      return v12 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v9 > 0xFF)
  {
    v7 = *(a1 + v5);
    if (*(a1 + v5))
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

  if (v9 < 2)
  {
    goto LABEL_25;
  }

LABEL_6:
  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 253;
}

void sub_1AF463E1C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFD)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 252) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFC)
  {
    v8 = a2 - 253;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = ~a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1AF463FD4(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 8)
  {
    v2 = 8;
  }

  v3 = *(a1 + v2);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_1AF46400C(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 8)
  {
    v3 = 8;
  }

  if (a2 > 0xFD)
  {
    v4 = (v3 + 1);
    if (v4 <= 3)
    {
      v5 = ~(-1 << (8 * v4));
    }

    else
    {
      v5 = -1;
    }

    if (v4)
    {
      v6 = v5 & (a2 - 254);
      if (v4 <= 3)
      {
        v7 = v4;
      }

      else
      {
        v7 = 4;
      }

      bzero(a1, v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else
        {
          *a1 = v6;
        }
      }

      else if (v7 == 1)
      {
        *a1 = v6;
      }

      else
      {
        *a1 = v6;
      }
    }
  }

  else if (a2)
  {
    a1[v3] = -a2;
  }
}

unint64_t sub_1AF4640E4()
{
  result = qword_1ED721F90;
  if (!qword_1ED721F90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED721F90);
  }

  return result;
}

uint64_t sub_1AF46415C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AF4641CC()
{

  return swift_deallocClassInstance();
}

BOOL sub_1AF464270()
{
  sub_1AFDFC318();
  swift_getFunctionTypeMetadata1();
  sub_1AF4644D8();

  v0 = sub_1AFDFCC78();

  return v0 != 0;
}

uint64_t sub_1AF464310()
{
  sub_1AFDFC318();
  swift_getFunctionTypeMetadata1();
  sub_1AF4644D8();
  sub_1AFDFCCB8();
  return sub_1AFDFCCA8();
}

uint64_t sub_1AF4643A0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AF464488()
{
  sub_1AF0FB8EC(*(v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_1AF4644D8()
{
  result = qword_1EB633A20;
  if (!qword_1EB633A20)
  {
    sub_1AFDFC318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633A20);
  }

  return result;
}

void sub_1AF4645A4()
{
  v1 = *(v0 + 40);
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  sub_1AF0FB8EC(v1);
  [*(v0 + 64) invalidate];
  v2 = *(v0 + 64);
  *(v0 + 64) = 0;
}

uint64_t sub_1AF464624(char a1)
{
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](a1 & 1);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF464688()
{
  sub_1AFDFF288();
  sub_1AF4645FC(v2, *v0);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF4646C8()
{
  sub_1AF4645A4();
  sub_1AF0FB8EC(*(v0 + 40));

  return v0;
}

uint64_t sub_1AF4646FC()
{
  sub_1AF4646C8();

  return swift_deallocClassInstance();
}

id sub_1AF4647FC()
{
  v1 = *(v0 + 24);
  [v1 lock];
  if (*(v0 + 16) == 1)
  {
    sub_1AF464E0C(v0 + 32, &v11);
    if (v12)
    {
      sub_1AF0FBA54(&v11, v13);
      v2 = v14;
      v3 = v15;
      sub_1AF441150(v13, v14);
      if (((*(v3 + 8))(v2, v3) & 1) == 0)
      {
        v4 = v14;
        v5 = v15;
        sub_1AF448018(v13, v14);
        (*(v5 + 16))(v4, v5);
      }

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v13);
    }

    else
    {
      sub_1AF464F2C(&v11, sub_1AF464E70);
    }

    sub_1AF464E0C(v0 + 72, &v11);
    if (v12)
    {
      sub_1AF0FBA54(&v11, v13);
      v6 = v14;
      v7 = v15;
      sub_1AF441150(v13, v14);
      if (((*(v7 + 8))(v6, v7) & 1) == 0)
      {
        v8 = v14;
        v9 = v15;
        sub_1AF448018(v13, v14);
        (*(v9 + 16))(v8, v9);
      }

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v13);
    }

    else
    {
      sub_1AF464F2C(&v11, sub_1AF464E70);
    }
  }

  return [v1 unlock];
}

id sub_1AF4649E4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1AF4647FC();
  }

  return result;
}

id sub_1AF464A10()
{
  v1 = *(v0 + 24);
  [v1 lock];
  if ((*(v0 + 16) & 1) == 0)
  {
    v3 = sub_1AF4649C0(v11);
    v4 = *(v2 + 24);
    if (v4)
    {
      v5 = *(v2 + 32);
      sub_1AF448018(v2, *(v2 + 24));
      (*(v5 + 16))(v4, v5);
    }

    v3(v11, 0);
    v7 = sub_1AF4649C0(v11);
    v8 = *(v6 + 64);
    if (v8)
    {
      v9 = *(v6 + 72);
      sub_1AF448018(v6 + 40, *(v6 + 64));
      (*(v9 + 16))(v8, v9);
    }

    v7(v11, 0);
    *(v0 + 16) = 1;
  }

  return [v1 unlock];
}

uint64_t sub_1AF464B44()
{
  sub_1AF464F2C(v0 + 32, sub_1AF464F8C);

  return swift_deallocClassInstance();
}

id sub_1AF464BE0()
{
  v1 = v0;
  v2 = *(v0 + 24);
  [v2 lock];
  if ((*(v0 + 16) & 1) == 0)
  {
    v3 = *(*(v0 + 32) + 16);
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        v5 = *(v1 + 32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 32) = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v5 = sub_1AFC0DA08(v5);
          *(v1 + 32) = v5;
        }

        v7 = &v5[5 * i];
        v8 = v7[7];
        v9 = v7[8];
        sub_1AF448018((v7 + 4), v8);
        (*(v9 + 16))(v8, v9);
        [v2 lock];
        if (*(v1 + 16) == 1)
        {
          v10 = *(v1 + 32);
          v11 = v10[2];
          if (v11)
          {
            v12 = 0;
            do
            {
              v13 = swift_isUniquelyReferenced_nonNull_native();
              *(v1 + 32) = v10;
              if ((v13 & 1) == 0)
              {
                v10 = sub_1AFC0DA08(v10);
                *(v1 + 32) = v10;
              }

              v14 = v10[v12 + 7];
              v15 = v10[v12 + 8];
              sub_1AF448018(&v10[v12 + 4], v14);
              (*(v15 + 16))(v14, v15);
              v10 = *(v1 + 32);
              v12 += 5;
              --v11;
            }

            while (v11);
          }
        }

        [v2 unlock];
      }
    }

    *(v1 + 16) = 1;
  }

  return [v2 unlock];
}

uint64_t sub_1AF464D84()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AF464E0C(uint64_t a1, uint64_t a2)
{
  sub_1AF464E70();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AF464E70()
{
  if (!qword_1EB639588)
  {
    sub_1AF464EC8();
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB639588);
    }
  }
}

unint64_t sub_1AF464EC8()
{
  result = qword_1EB638148;
  if (!qword_1EB638148)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB638148);
  }

  return result;
}

uint64_t sub_1AF464F2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AF464F8C()
{
  if (!qword_1EB639590)
  {
    sub_1AF464E70();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB639590);
    }
  }
}

void sub_1AF464FF4()
{
  sub_1AF4656E4();
  v73 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v57 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1AFDFC318();
  v61 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v5);
  v60 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF465758();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v67 = &v56 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v56 - v16;
  if ((*(v0 + 33) & 1) == 0)
  {
    if (*(v0 + 32))
    {
      v18 = *(v0 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 24) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_1AF421FCC(0, *(v18 + 2) + 1, 1, v18);
        *(v0 + 24) = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v18 = sub_1AF421FCC(v20 > 1, v21 + 1, 1, v18);
      }

      *(v18 + 2) = v22;
      *(v0 + 24) = v18;
    }

    else
    {
      v23 = *(v0 + 16);
      v24 = 1 << *(v23 + 32);
      v25 = -1;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      v26 = v25 & *(v23 + 64);
      v27 = (v24 + 63) >> 6;
      v58 = v61 + 16;
      v66 = (v61 + 32);
      v69 = (v2 + 48);
      v70 = (v2 + 56);
      v64 = (v61 + 8);

      v29 = 0;
      v59 = v28;
      v30 = v28 + 72;
      v68 = v10;
      v65 = v17;
      if (!v26)
      {
        goto LABEL_12;
      }

LABEL_11:
      v31 = v29;
LABEL_18:
      v34 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v35 = v34 | (v31 << 6);
      v37 = v59;
      v36 = v60;
      v38 = v61;
      v39 = v71;
      (*(v61 + 16))(v60, *(v59 + 48) + *(v61 + 72) * v35, v71);
      v40 = *(v37 + 56);
      v41 = v73;
      v42 = *(v73 + 48);
      v43 = *(v38 + 32);
      v72 = *(v40 + 16 * v35);
      v10 = v68;
      v43(v68, v36, v39);
      *&v10[v42] = v72;
      v44 = *v70;
      (*v70)(v10, 0, 1, v41);

      v33 = v31;
      while (1)
      {
        v45 = *v69;
        v46 = 1;
        if ((*v69)(v10, 1, v73) != 1)
        {
          v63 = v44;
          v47 = v73;
          v62 = *(v73 + 48);
          *&v72 = v33;
          v48 = *v66;
          (*v66)(v57, v10, v71);
          v49 = swift_allocObject();
          *(v49 + 16) = *&v68[v62];
          v50 = &v67[*(v47 + 48)];
          v48();
          v33 = v72;
          v46 = 0;
          *v50 = sub_1AF465814;
          v50[1] = v49;
          v44 = v63;
          v10 = v68;
        }

        v51 = v67;
        v52 = v46;
        v53 = v73;
        v44(v67, v52, 1, v73);
        v54 = v51;
        v55 = v65;
        sub_1AF4657B0(v54, v65);
        if (v45(v55, 1, v53) == 1)
        {
          break;
        }

        (*(v55 + *(v73 + 48)))();

        (*v64)(v55, v71);
        v29 = v33;
        if (v26)
        {
          goto LABEL_11;
        }

LABEL_12:
        if (v27 <= v29 + 1)
        {
          v32 = v29 + 1;
        }

        else
        {
          v32 = v27;
        }

        v33 = v32 - 1;
        while (1)
        {
          v31 = v29 + 1;
          if (v29 + 1 >= v27)
          {
            break;
          }

          v26 = *(v30 + 8 * v29++);
          if (v26)
          {
            goto LABEL_18;
          }
        }

        v44 = *v70;
        (*v70)(v10, 1, 1, v73);
        v26 = 0;
      }
    }
  }
}

uint64_t sub_1AF465548()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = v2[2];
  if (v3)
  {
    v4 = 0;
    do
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 16) = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v2 = sub_1AFC0DA08(v2);
        *(v1 + 16) = v2;
      }

      v6 = v2[v4 + 7];
      v7 = v2[v4 + 8];
      sub_1AF448018(&v2[v4 + 4], v6);
      (*(v7 + 16))(v6, v7);
      v2 = *(v1 + 16);
      v4 += 5;
      --v3;
    }

    while (v3);
  }

  *(v1 + 16) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1AF465614()
{
  sub_1AF465548();

  sub_1AF464FF4();

  return swift_deallocClassInstance();
}

void sub_1AF4656E4()
{
  if (!qword_1EB639598)
  {
    sub_1AFDFC318();
    sub_1AF43FD98();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB639598);
    }
  }
}

void sub_1AF465758()
{
  if (!qword_1EB6395A0)
  {
    sub_1AF4656E4();
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6395A0);
    }
  }
}

uint64_t sub_1AF4657B0(uint64_t a1, uint64_t a2)
{
  sub_1AF465758();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF46583C(unsigned __int8 a1)
{
  if (a1 > 0x65u)
  {
    return 0;
  }

  else
  {
    return qword_1AFE51428[a1];
  }
}

uint64_t sub_1AF465864(unint64_t a1, unint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v7 = v6;
  v186 = *MEMORY[0x1E69E9840];
  sub_1AF455364();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v22 = &v148.i8[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v23 == 2 && (*(a1 + 24) - *(a1 + 16)) > 63)
    {
      goto LABEL_9;
    }

LABEL_8:
    v25 = 0x80000001AFF29160;
    sub_1AF466B88();
    swift_allocError();
    v27 = 0xD000000000000028;
LABEL_39:
    *v26 = v27;
    *(v26 + 8) = v25;
LABEL_40:
    *(v26 + 16) = 0;
    return swift_willThrow();
  }

  v24 = BYTE6(a2);
  if (v23)
  {
    v24 = (0xFFFFFFFF00000001 * a1) >> 32;
  }

  if (v24 <= 63)
  {
    goto LABEL_8;
  }

LABEL_9:
  v178 = v5;
  v176 = a2;
  v172 = v6;
  v174.i64[0] = a3;
  v175 = a5;
  if (v23 == 2)
  {
    v32 = *(a1 + 16);
    v33 = sub_1AFDFBDB8();
    if (v33)
    {
      v34 = v33;
      v30 = sub_1AFDFBDE8();
      v31 = v34 + v32;
      goto LABEL_15;
    }

LABEL_17:
    v35 = 0;
    goto LABEL_18;
  }

  if (v23 == 1)
  {
    v28 = sub_1AFDFBDB8();
    if (v28)
    {
      v29 = v28;
      v30 = sub_1AFDFBDE8();
      v31 = v29 + a1;
LABEL_15:
      v35 = (v31 - v30);
LABEL_18:
      sub_1AFDFBDD8();
      v46 = *v35;
      v49 = v35[1].i8[0];
      LOBYTE(v42) = v35[1].i8[1];
      LOBYTE(v43) = v35[1].i8[2];
      v44 = v35[1].u8[3];
      LODWORD(v45) = v35[1].i32[1];
      v19 = v35[2].i32[0];
      v20 = v35[2].i32[1];
      LODWORD(a5) = v35[3].i32[1];
      v18 = v35[4].i32[1];
      LODWORD(a2) = v35[5].i32[0];
      v16 = v35[5].u32[1];
      LODWORD(a3) = v35[6].i32[0];
      v15 = v35[6].i32[1];
      v17 = v35[7].i32[0];
      LODWORD(v47) = v45 >> 8;
      LODWORD(v48) = WORD1(v45);
      v36 = v45 & 0xFF000000;
      v7 = v35[7].i32[1];
      v5 = v178;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v36 = 0;
  v37 = vdupq_n_s64(a1);
  v38 = vshlq_u64(v37, xmmword_1AFE513B0);
  v39 = vmovn_s64(vshlq_u64(v37, xmmword_1AFE513A0));
  v39.i8[1] = v39.i8[4];
  v40 = vzip1_s16(a1, v39);
  *v37.i8 = vmovn_s64(vshlq_u64(v37, xmmword_1AFE513C0));
  v41 = vmovn_s64(v38);
  v41.i8[1] = v41.i8[4];
  v41.i8[2] = v37.i8[0];
  v42 = a2 >> 8;
  v43 = a2 >> 16;
  v41.i8[3] = v37.i8[4];
  v44 = BYTE3(a2);
  v45 = HIDWORD(a2);
  v46 = vzip1_s32(v40, v41);
  v47 = a2 >> 40;
  v48 = HIWORD(a2);
  v49 = a2;
LABEL_19:
  if (*&v46 != 0xBB31312058544BABLL || v49 != 13 || v42 != 10 || v43 != 26 || v44 != 10)
  {
    v25 = 0x80000001AFF29050;
    sub_1AF466B88();
    swift_allocError();
    v27 = 0xD000000000000011;
    goto LABEL_39;
  }

  if ((v36 | v45 | (v47 << 8) | (v48 << 16)) != 0x4030201)
  {
    v54 = "Only big endian ktx are supported";
    goto LABEL_38;
  }

  if (v19 && v20 == 1)
  {
    v54 = "Only compressed ktx are supported";
LABEL_38:
    v25 = (v54 - 32) | 0x8000000000000000;
    sub_1AF466B88();
    swift_allocError();
    v27 = 0xD000000000000021;
    goto LABEL_39;
  }

  LODWORD(v173) = v15;
  LODWORD(v177) = v16;
  LODWORD(v171) = v17;
  LODWORD(v170) = v18;
  if (a3 < 2)
  {
    if (v15 == 6)
    {
      i64 = v5[2].i64;
      v57 = 5;
    }

    else
    {
      i64 = v5[2].i64;
      if (v16 < 2)
      {
        if (a2 < 2)
        {
          v57 = 0;
        }

        else
        {
          v57 = 2;
        }
      }

      else
      {
        v57 = 7;
      }
    }
  }

  else if (v15 == 6)
  {
    i64 = v5[2].i64;
    v57 = 6;
  }

  else
  {
    i64 = v5[2].i64;
    if (a2 < 2)
    {
      v57 = 1;
    }

    else
    {
      v57 = 3;
    }
  }

  sub_1AF466BDC(v57, i64);
  v58 = sub_1AF466BEC(a5);
  if (v58 == 140)
  {
    v184.i64[0] = 0;
    v184.i64[1] = 0xE000000000000000;
    sub_1AFDFE218();

    v184.i64[0] = 0xD000000000000016;
    v184.i64[1] = 0x80000001AFF290A0;
    v182.i32[0] = a5;
    v59 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v59);

    v61 = v184.i64[1];
    v60 = v184.i64[0];
LABEL_165:
    sub_1AF466B88();
    swift_allocError();
    *v26 = v60;
    *(v26 + 8) = v61;
    goto LABEL_40;
  }

  v62 = sub_1AF46583C(v58);
  sub_1AF46748C(v62, v5[2].i64);
  v63 = *a4;
  LODWORD(v169) = v7;
  v184 = v5[2];
  v185 = v5[3].i64[0];
  if ((v63 & 4) != 0)
  {
    v66 = sub_1AF467494(&v184);
    v65 = sub_1AF470AB0(v66);
  }

  else
  {
    v64 = sub_1AF467494(&v184);
    v65 = sub_1AF470B6C(v64);
  }

  v67 = v175;
  sub_1AF46748C(v65, v5[2].i64);
  v68 = CFXGPUDeviceGetMTLDevice(v67);
  v69 = v5;
  swift_getObjectType();
  v184 = v5[2];
  v185 = v5[3].i64[0];
  v182 = v5[2];
  v183 = v5[3].i64[0];
  sub_1AF467494(&v182);
  v70 = sub_1AF470C28();
  swift_unknownObjectRelease();
  if ((v70 & 1) == 0)
  {
    v182.i64[0] = 0;
    v182.i64[1] = 0xE000000000000000;
    sub_1AFDFE218();
    v180 = v182;
    MEMORY[0x1B2718AE0](0x726F466C65786950, 0xEC0000002074616DLL);
    v182 = v184;
    v183 = v185;
    v79 = sub_1AF467494(&v182);
    v80 = sub_1AF4720E8(v79);
    MEMORY[0x1B2718AE0](v80);

    MEMORY[0x1B2718AE0](0xD000000000000021, 0x80000001AFF290C0);
    v81 = CFXGPUDeviceGetMTLDevice(v67);
    swift_getObjectType();
    v182.i64[0] = v81;
    sub_1AFDFEDD8();
    swift_unknownObjectRelease();
    v82 = v180;
    sub_1AF466B88();
    swift_allocError();
    *v83 = v82;
    v83[1].i8[0] = 1;
    return swift_willThrow();
  }

  v170 = v170;
  if (v170)
  {
    v71 = v170;
  }

  else
  {
    v71 = 1;
  }

  sub_1AF46749C(v71, v5[2].i64);
  v166 = a2;
  if (a2)
  {
    v72 = a2;
  }

  else
  {
    v72 = 1;
  }

  sub_1AF4674A4(v72, v5[2].i64);
  if (v177 <= 1)
  {
    v73 = 1;
  }

  else
  {
    v73 = v177;
  }

  v165 = v73;
  sub_1AF4674AC(v73, v5[2].i64);
  if (v171 <= 1)
  {
    v74 = 1;
  }

  else
  {
    v74 = v171;
  }

  v149 = v74;
  sub_1AF4674B4(v74, v5[2].i64);
  sub_1AF4674BC(v5[2].i64);
  if (a3 <= 1)
  {
    v75 = 1;
  }

  else
  {
    v75 = a3;
  }

  sub_1AF4674C8(v75, v5[2].i64);
  sub_1AF4674D0(v5[2].i64);
  sub_1AF4674E4(v5[2].i64);
  v182 = v5[2];
  v183 = v5[3].i64[0];
  v180 = v5[2];
  v181 = v5[3].i64[0];
  v76 = sub_1AF467494(&v180);
  v180 = v69[2];
  v181 = v69[3].i64[0];
  v77 = sub_1AF445CA8(&v180);
  if (v76 - 160 <= 0x3A && ((1 << (v76 + 96)) & 0x7FDF1FF7CFD54FFLL) != 0)
  {
    if ((v76 - 186) > 0x20u)
    {
      LODWORD(v78) = 1;
    }

    else
    {
      v78 = qword_1AFE51758[(v76 - 186)];
    }

    v84 = BYTE6(v176);
    v177 = 16 * ((v78 + v77 - 1) / v78);
  }

  else
  {
    v177 = sub_1AF47289C(v76) * v77;
    v84 = BYTE6(v176);
  }

  v85 = v84;
  v167 = v84;
  if (v23 == 2)
  {
    v85 = *(a1 + 24) - *(a1 + 16);
  }

  else if (v23 == 1)
  {
    v85 = (0xFFFFFFFF00000001 * a1) >> 32;
  }

  BufferWithLength = CFXGPUDeviceCreateBufferWithLength(v67, v85, 0);
  if (BufferWithLength)
  {
    v87 = BufferWithLength;
    v88 = sub_1AFDFCEC8();
    [v87 setLabel_];
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v180.i64[0] = 0;
    v180.i64[1] = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF290F0);
    MEMORY[0x1B2718AE0](4271950, 0xE300000000000000);
    MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
    v179 = v85;
    v89 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v89);

    MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
    v179 = 0;
    type metadata accessor for MTLResourceOptions(0);
    sub_1AFDFE458();
    v90 = v180;
    v91 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v147 = v91;
      swift_once();
      v91 = v147;
    }

    v180.i64[0] = 0;
    sub_1AF0D4F18(v91, v180.i64, v90.i64[0], v90.i64[1]);

    v87 = 0;
    v85 = 0;
  }

  v92 = v169;
  v93 = v178;
  swift_unknownObjectRelease();
  *v93 = v87;
  v93[1] = 0;
  v93[2] = v85;
  sub_1AF456C4C(v174.i64[0], v22);
  v94 = sub_1AFDFC128();
  v95 = *(v94 - 8);
  if ((*(v95 + 48))(v22, 1, v94) == 1)
  {
    sub_1AF456B8C(v22);
    sub_1AFDFC158();
  }

  else
  {
    sub_1AFDFC028();
    (*(v95 + 8))(v22, v94);
  }

  if (v87)
  {
    v96 = v178;
    v97 = v178->i64[0];
    v98 = sub_1AFDFCEC8();

    [v97 setLabel_];
  }

  else
  {

    v96 = v178;
  }

  v99 = v92 + 64;
  v101 = v96->i64[0];
  v100 = v96->i64[1];
  if ([swift_unknownObjectRetain() storageMode] == 2)
  {
    swift_unknownObjectRelease();
    v169 = 0;
  }

  else
  {
    v102 = [v101 contents];
    v103 = v101;
    v169 = &v102[v100];
  }

  if (v173 <= 1)
  {
    v104 = 1;
  }

  else
  {
    v104 = v173;
  }

  v168 = v104;
  sub_1AF4674F0(v170, v166, v165, &v180);
  v175 = 0;
  v105 = 0;
  v174 = v180;
  v173 = v181;
  v151 = a1;
  v160 = (0xFFFFFFFF00000001 * a1) >> 32;
  v159 = v176 >> 40;
  v158 = HIDWORD(v176);
  v157 = v176 >> 24;
  v156 = v176 >> 16;
  v155 = v176 >> 8;
  v154 = HIBYTE(a1);
  v153 = HIWORD(a1);
  v148 = vdupq_n_s64(1uLL);
  v152 = a1 >> 40;
  v166 = a1;
  v106 = v178;
  v165 = v23;
  do
  {
    v164 = HIDWORD(a1);
    v163 = a1 >> 24;
    v162 = a1 >> 16;
    v161 = a1 >> 8;
    if (v23 > 1)
    {
      if (v23 != 2)
      {
        *(v180.i64 + 6) = 0;
        v180.i64[0] = 0;
        goto LABEL_117;
      }

      v107 = *(a1 + 16);
      v108 = sub_1AFDFBDB8();
      if (v108)
      {
        v109 = v108;
        v110 = sub_1AFDFBDE8();
        v111 = v109 + v107;
LABEL_115:
        v114 = v111 - v110;
LABEL_119:
        sub_1AFDFBDD8();
        v115 = *(v114 + v99);
        v106 = v178;
        goto LABEL_120;
      }

LABEL_118:
      v114 = 0;
      goto LABEL_119;
    }

    if (v23)
    {
      v112 = sub_1AFDFBDB8();
      if (v112)
      {
        v113 = v112;
        v110 = sub_1AFDFBDE8();
        v111 = v113 + v151;
        goto LABEL_115;
      }

      goto LABEL_118;
    }

    v180.i8[0] = a1;
    v180.i8[1] = v161;
    v180.i8[2] = v162;
    v180.i8[3] = v163;
    v180.i8[4] = v164;
    v180.i8[5] = v152;
    v180.i8[6] = v153;
    v180.i8[7] = v154;
    v180.i8[8] = v176;
    v180.i8[9] = v155;
    v180.i8[10] = v156;
    v180.i8[11] = v157;
    v180.i8[12] = v158;
    v180.i8[13] = v159;
LABEL_117:
    v115 = *(v180.u32 + v99);
LABEL_120:
    v116 = 0;
    v150 = v175 + 1;
    v99 += 4;
    v170 = v174.i64[0] - 1;
    v171 = v115 + 3;
    do
    {
      v117 = v99 + v115;
      if (v23 <= 1)
      {
        v118 = v167;
        if (v23)
        {
          v118 = v160;
        }

LABEL_126:
        if (v118 < v117)
        {
          goto LABEL_159;
        }

        goto LABEL_129;
      }

      if (v23 == 2)
      {
        v118 = *(a1 + 24) - *(a1 + 16);
        goto LABEL_126;
      }

      if (v117 > 0)
      {
LABEL_159:
        v180.i64[0] = 0;
        v180.i64[1] = 0xE000000000000000;
        sub_1AFDFE218();

        v180.i64[0] = 0xD000000000000017;
        v180.i64[1] = 0x80000001AFF29110;
        v179 = v116;
        v142 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v142);

        MEMORY[0x1B2718AE0](0x5B70696D202F205DLL, 0xE800000000000000);
        v179 = v175;
        v143 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v143);

        MEMORY[0x1B2718AE0](2629725, 0xE300000000000000);
        v179 = v99 + v115;
        v144 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v144);

        MEMORY[0x1B2718AE0](2113056, 0xE300000000000000);
        if (v23 > 1)
        {
          v145 = 0;
          if (v23 == 2)
          {
            v145 = *(v166 + 24) - *(v166 + 16);
          }
        }

        else
        {
          v145 = v167;
          if (v23)
          {
            v145 = v160;
          }
        }

        v179 = v145;
        v146 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v146);

        v61 = v180.i64[1];
        v60 = v180.i64[0];
        goto LABEL_165;
      }

LABEL_129:
      v180 = v182;
      v181 = v183;
      v119 = sub_1AF467494(&v180) - 160;
      if (v119 <= 0x3A && ((1 << v119) & 0x7FDF1FF7CFD54FFLL) != 0)
      {
        v180 = v182;
        v181 = v183;
        v120 = sub_1AF467494(&v180) - 186;
        if (v120 > 0x20u)
        {
          v121 = 1;
        }

        else
        {
          v121 = qword_1AFE51758[v120];
        }

        v177 = 16 * ((v170 + v121) / v121);
      }

      if (v23 > 1)
      {
        if (v23 != 2)
        {
          *(v180.i64 + 6) = 0;
          v180.i64[0] = 0;
          goto LABEL_145;
        }

        v122 = *(a1 + 16);
        v123 = sub_1AFDFBDB8();
        if (!v123)
        {
LABEL_146:
          v129 = 0;
          goto LABEL_147;
        }

        v124 = v123;
        v125 = sub_1AFDFBDE8();
        v126 = v124 + v122;
      }

      else
      {
        if (!v23)
        {
          v180.i8[0] = a1;
          v180.i8[1] = v161;
          v180.i8[2] = v162;
          v180.i8[3] = v163;
          v180.i8[4] = v164;
          v180.i8[5] = v152;
          v180.i8[6] = v153;
          v180.i8[7] = v154;
          v180.i8[8] = v176;
          v180.i8[9] = v155;
          v180.i8[10] = v156;
          v180.i8[11] = v157;
          v180.i8[12] = v158;
          v180.i8[13] = v159;
LABEL_145:
          memcpy(&v169[v105], &v180.i8[v99], v115);
          goto LABEL_148;
        }

        v127 = sub_1AFDFBDB8();
        if (!v127)
        {
          goto LABEL_146;
        }

        v128 = v127;
        v125 = sub_1AFDFBDE8();
        v126 = v128 + v151;
      }

      v129 = v126 - v125;
LABEL_147:
      sub_1AFDFBDD8();
      memcpy(&v169[v105], (v129 + v99), v115);
      a1 = v166;
      v106 = v178;
      LODWORD(v23) = v165;
LABEL_148:
      v130 = v106[3].i64[1];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1AF4220C4(0, *(v130 + 16) + 1, 1, v130);
        v130 = result;
      }

      v132 = *(v130 + 16);
      v131 = *(v130 + 24);
      if (v132 >= v131 >> 1)
      {
        result = sub_1AF4220C4(v131 > 1, v132 + 1, 1, v130);
        v130 = result;
      }

      v133 = v130 + (v132 << 6);
      *(v133 + 72) = v173;
      *(v133 + 80) = v116;
      v134 = v116 + 1;
      *(v130 + 16) = v132 + 1;
      v135 = v177;
      *(v133 + 32) = v105;
      *(v133 + 40) = v135;
      *(v133 + 48) = v115;
      *(v133 + 56) = v174;
      *(v133 + 88) = v175;
      v136 = v117 + 6;
      if (v117 + 3 >= 0)
      {
        v136 = v117 + 3;
      }

      v99 = v136 & 0xFFFFFFFFFFFFFFFCLL;
      v137 = v171 + v105;
      v138 = v178;
      v178[3].i64[1] = v130;
      v106 = v138;
      v105 = (v137 + (v137 < 0 ? 3uLL : 0)) & 0xFFFFFFFFFFFFFFFCLL;
      ++v116;
    }

    while (v168 != v134);
    v139 = vshrq_n_s64(v174, 1uLL);
    v140 = vcgtq_s64(v139, v148);
    v141 = v173 >> 1;
    v174 = vsubq_s64(vandq_s8(v139, v140), vmvnq_s8(v140));
    if (v173 >> 1 <= 1)
    {
      v141 = 1;
    }

    v173 = v141;
    v177 >>= 1;
    v175 = v150;
  }

  while (v150 != v149);
  return result;
}