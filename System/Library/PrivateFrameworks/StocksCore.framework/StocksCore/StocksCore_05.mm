uint64_t sub_1DAAD72E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  v29 = a5;
  v30 = a3;
  sub_1DAA7BCA8(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  v15 = sub_1DACB7F54();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v29 - v21;
  if (a2 == 1)
  {
    goto LABEL_2;
  }

  if (a4)
  {
    if (!a2)
    {
LABEL_2:
      (*(v16 + 56))(v29, 1, 1, v15);
      return sub_1DAAD8834(a1, a2);
    }

    sub_1DACB71E4();
    sub_1DACB7EF4();
    v24 = 1;
    if ((*(v16 + 48))(v12, 1, v15) == 1)
    {
      v14 = v12;
LABEL_9:
      sub_1DAAD8234(v14, &qword_1EE1239E8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720], sub_1DAA7BCA8);
      sub_1DAAD82F4();
      swift_allocError();
      *v25 = a1;
      *(v25 + 8) = a2;
      *(v25 + 16) = v24;
      return swift_willThrow();
    }

    sub_1DAAD8848(a1, a2);
    v28 = *(v16 + 32);
    v28(v20, v12, v15);
    v27 = v29;
    v28(v29, v20, v15);
  }

  else
  {
    a1 = v30;
    sub_1DACB7F24();
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      a2 = 0;
      v24 = 2;
      goto LABEL_9;
    }

    v26 = *(v16 + 32);
    v26(v22, v14, v15);
    v27 = v29;
    v26(v29, v22, v15);
  }

  return (*(v16 + 56))(v27, 0, 1, v15);
}

uint64_t sub_1DAAD7674@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v31 = a1;
  v32 = a2;
  v2 = MEMORY[0x1E69E6720];
  sub_1DAA7BCA8(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v27 - v5;
  v28 = sub_1DACB7F54();
  v6 = *(v28 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1DACB77D4();
  v27 = *(v29 - 8);
  v10 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA7BCA8(0, &qword_1EE125280, MEMORY[0x1E6969530], v2);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v27 - v15;
  v17 = sub_1DACB7CC4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB7C44();
  if (qword_1EE11F0E0 != -1)
  {
    swift_once();
  }

  v22 = sub_1DACB7EE4();
  __swift_project_value_buffer(v22, qword_1EE11F0E8);
  sub_1DACB7EB4();
  sub_1DACB7E74();
  v23 = v9;
  v24 = v28;
  (*(v6 + 8))(v23, v28);
  v25 = v30;
  (*(v6 + 16))(v30, v31, v24);
  (*(v6 + 56))(v25, 0, 1, v24);
  sub_1DACB77C4();
  sub_1DACB7E94();
  (*(v27 + 8))(v12, v29);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1DAAD8234(v16, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1DAA7BCA8);
  }

  else
  {
    (*(v18 + 8))(v21, v17);
    v21 = v16;
  }

  return (*(v18 + 32))(v32, v21, v17);
}

uint64_t sub_1DAAD7AF8()
{
  v1 = *(v0 + qword_1EE11E9F8 + 8);

  v2 = qword_1EE11EA08;
  v3 = sub_1DACB7CC4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = qword_1EE11EA10;
  v5 = sub_1DACB8204();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = (v0 + qword_1EE11EA18);

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

id sub_1DAAD7BC4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DAAD7BFC(uint64_t a1)
{
  v2 = *(a1 + qword_1EE11E9F8 + 8);

  v3 = qword_1EE11EA08;
  v4 = sub_1DACB7CC4();
  (*(*(v4 - 8) + 8))(a1 + v3, v4);
  v5 = qword_1EE11EA10;
  v6 = sub_1DACB8204();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = (a1 + qword_1EE11EA18);

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_1DAAD7CD8()
{
  sub_1DAA7BCA8(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1DACB7F54();
  __swift_allocate_value_buffer(v4, qword_1EE13E2A0);
  v5 = __swift_project_value_buffer(v4, qword_1EE13E2A0);
  sub_1DACB7F24();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAAD7E18()
{
  v0 = sub_1DACB7F54();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = sub_1DACB7E54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DACB7EE4();
  __swift_allocate_value_buffer(v13, qword_1EE11F0E8);
  __swift_project_value_buffer(v13, qword_1EE11F0E8);
  (*(v9 + 104))(v12, *MEMORY[0x1E6969868], v8);
  if (qword_1EE11F0D0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v0, qword_1EE13E2A0);
  v15 = *(v1 + 16);
  v15(v7, v14, v0);
  sub_1DACB7E64();
  v15(v5, v7, v0);
  sub_1DACB7EC4();
  (*(v1 + 8))(v7, v0);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1DAAD807C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        return a1 == a4;
      }
    }

    else if (a1 | a2)
    {
      if (a1 ^ 1 | a2)
      {
        if (a6 == 3 && a4 == 2 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 3 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 3 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (a3)
  {
    if (a6 == 1)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_1DACBA174();
    }
  }

  else if (!a6)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return sub_1DACBA174();
  }

  return 0;
}

void sub_1DAAD8184()
{
  if (!qword_1EE120B40)
  {
    sub_1DAAD81E0();
    v0 = type metadata accessor for SDSBaseOperationResponse();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE120B40);
    }
  }
}

unint64_t sub_1DAAD81E0()
{
  result = qword_1EE1229A8;
  if (!qword_1EE1229A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1229A8);
  }

  return result;
}

uint64_t sub_1DAAD8234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1DAAD8294(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DAAD82F4()
{
  result = qword_1ECBE6960;
  if (!qword_1ECBE6960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6960);
  }

  return result;
}

uint64_t sub_1DAAD8348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1DAAD83BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1DAAD8488(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v39 = a2;
  v40 = a3;
  v38 = sub_1DACB7CC4();
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Chart.Entry(0);
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v48 = v3;
    v49 = MEMORY[0x1E69E7CC0];
    v34 = v8;
    sub_1DAA83020(0, v13, 0);
    v15 = v34;
    v14 = v49;
    v35 = (v5 + 32);
    v16 = (a1 + 112);
    while (1)
    {
      v46 = v13;
      v47 = v14;
      v17 = *(v16 - 10);
      v18 = *(v16 - 72);
      v19 = *(v16 - 8);
      v20 = *(v16 - 56);
      v45 = *(v16 - 6);
      v44 = *(v16 - 40);
      v14 = *(v16 - 4);
      v21 = *(v16 - 24);
      v22 = *(v16 - 2);
      v43 = *(v16 - 1);
      v23 = *v16;
      v41 = v20;
      v42 = v23;
      v24 = v48;
      v39(v22);
      if (v24)
      {
        break;
      }

      v48 = 0;
      (*v35)(v12, v15, v38);
      v25 = v37;
      v26 = &v12[v37[5]];
      *v26 = v14;
      v26[8] = v21;
      v27 = &v12[v25[6]];
      *v27 = v17;
      v27[8] = v18;
      v28 = &v12[v25[7]];
      *v28 = v19;
      v28[8] = v41;
      v29 = &v12[v25[8]];
      *v29 = v45;
      v29[8] = v44;
      v30 = &v12[v25[9]];
      *v30 = v43;
      v30[8] = v42;
      v14 = v47;
      v49 = v47;
      v32 = *(v47 + 16);
      v31 = *(v47 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1DAA83020(v31 > 1, v32 + 1, 1);
        v15 = v34;
        v14 = v49;
      }

      v16 += 88;
      *(v14 + 16) = v32 + 1;
      sub_1DAAD87CC(v12, v14 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v32, type metadata accessor for Chart.Entry);
      v13 = v46 - 1;
      if (v46 == 1)
      {
        return v14;
      }
    }
  }

  return v14;
}

uint64_t sub_1DAAD87CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAAD8834(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_1DACB71E4();
  }

  return result;
}

uint64_t sub_1DAAD8848(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10StocksCore22SDSChartOperationErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DAAD88AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DAAD88F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1DAAD8938(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

__n128 ScoredArticle.score.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 36);
  v4 = *(v3 + 80);
  *(a2 + 64) = *(v3 + 64);
  *(a2 + 80) = v4;
  *(a2 + 96) = *(v3 + 96);
  *(a2 + 112) = *(v3 + 112);
  v5 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v5;
  result = *(v3 + 32);
  v7 = *(v3 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_1DAAD89C8(uint64_t a1)
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

uint64_t sub_1DAAD8A40(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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
    goto LABEL_27;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 120;
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
      if (v14)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

  if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_27:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 56);
    if (v17 >= 2)
    {
      return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_20:
  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v15) + 1;
}

double sub_1DAAD8B80(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 120;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFF88)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFF88)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFF88)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 120);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0xFE)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0xFE)
    {
      result = 0.0;
      *(v19 + 104) = 0u;
      *(v19 + 88) = 0u;
      *(v19 + 72) = 0u;
      *(v19 + 56) = 0u;
      *(v19 + 40) = 0u;
      *(v19 + 24) = 0u;
      *(v19 + 8) = 0u;
      *v19 = a2 - 255;
    }

    else
    {
      *(v19 + 56) = a2 + 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

__n128 sub_1DAAD8D70@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = a4 + *(type metadata accessor for ScoredArticle() + 36);
  v7 = *(a2 + 80);
  *(v6 + 64) = *(a2 + 64);
  *(v6 + 80) = v7;
  *(v6 + 96) = *(a2 + 96);
  *(v6 + 112) = *(a2 + 112);
  v8 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v8;
  result = *(a2 + 32);
  v10 = *(a2 + 48);
  *(v6 + 32) = result;
  *(v6 + 48) = v10;
  return result;
}

uint64_t sub_1DAAD8E44()
{
  v1 = sub_1DACB78E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7E44();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1DACB92E4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1DACB92C4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = *(v0 + 16);
  sub_1DACB92B4();
  sub_1DACB92A4();
  sub_1DACB6ED4();
  sub_1DACB9294();

  sub_1DACB92A4();
  sub_1DACB92D4();
  sub_1DACB7DF4();
  (*(v2 + 104))(v5, *MEMORY[0x1E6968DF0], v1);
  return sub_1DACB7914();
}

uint64_t sub_1DAAD90A8()
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
  __swift_allocate_value_buffer(v9, qword_1ECBE6968);
  __swift_project_value_buffer(v9, qword_1ECBE6968);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v4, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t sub_1DAAD92C0()
{
  sub_1DAA6A9E0(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
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
  __swift_allocate_value_buffer(v15, qword_1ECBE6980);
  __swift_project_value_buffer(v15, qword_1ECBE6980);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v4 + 104))(v7, *MEMORY[0x1E6968DF0], v17[0]);
  sub_1DACB7914();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_1DACB7094();
}

uint64_t sub_1DAAD9600@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1DAAD96A4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E695A590];
  v3 = sub_1DACB7374();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1DAAD9718()
{
  sub_1DAADD1F4(0, &qword_1ECBE6998, sub_1DAAD98EC, &type metadata for DeleteWatchlistsIntent, MEMORY[0x1E695A4A8]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1DAADD1F4(0, &qword_1ECBE69A8, sub_1DAAD98EC, &type metadata for DeleteWatchlistsIntent, MEMORY[0x1E695A4A0]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1DAAD98EC();
  sub_1DACB7254();
  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DAAD9964();
  sub_1DACB7234();

  sub_1DACB7244();
  sub_1DACB7264();
  return sub_1DACB7204();
}

unint64_t sub_1DAAD98EC()
{
  result = qword_1ECBE69A0;
  if (!qword_1ECBE69A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE69A0);
  }

  return result;
}

void sub_1DAAD9964()
{
  if (!qword_1ECBE69B0)
  {
    sub_1DAAD99C4();
    v0 = sub_1DACBA314();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE69B0);
    }
  }
}

void sub_1DAAD99C4()
{
  if (!qword_1ECBE69B8)
  {
    sub_1DAA58C60(255, &qword_1ECBE69C0, &type metadata for WatchlistEntity, MEMORY[0x1E69E62F8]);
    sub_1DAAD9A4C();
    v0 = sub_1DACB7044();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE69B8);
    }
  }
}

unint64_t sub_1DAAD9A4C()
{
  result = qword_1ECBE69C8;
  if (!qword_1ECBE69C8)
  {
    sub_1DAA58C60(255, &qword_1ECBE69C0, &type metadata for WatchlistEntity, MEMORY[0x1E69E62F8]);
    sub_1DAA8E020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE69C8);
  }

  return result;
}

uint64_t sub_1DAAD9AE8()
{
  v1 = *v0;
  sub_1DACB6FB4();
  return v3;
}

uint64_t sub_1DAAD9B1C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v5 = *a1;
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
}

uint64_t (*sub_1DAAD9BAC(uint64_t *a1))()
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

uint64_t sub_1DAAD9C44(uint64_t a1, uint64_t *a2)
{
  sub_1DAA4D678(a1, v7);
  v4 = *a2;
  v3 = a2[1];
  sub_1DAA4D678(v7, &v6);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6D34();
  __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_1DAAD9CBC(uint64_t *a1)
{
  v3 = *(v1 + 8);
  sub_1DAA4D678(a1, v5);
  sub_1DACB6D34();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_1DAAD9D00(uint64_t *a1))()
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
  *(v3 + 32) = sub_1DACB6D14();
  return sub_1DAAD9D74;
}

void sub_1DAAD9D78(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1DAAD9DE8@<X0>(uint64_t *a1@<X8>)
{
  v40 = a1;
  v1 = sub_1DACB7274();
  v38 = *(v1 - 8);
  v39 = v1;
  v2 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v37 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E69E6720];
  sub_1DAA6A9E0(0, &qword_1EE123AA0, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v36 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v35 = v34 - v9;
  sub_1DAA6A9E0(0, &qword_1EE123A80, MEMORY[0x1E6968E10], v4);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v34[0] = v34 - v12;
  v13 = sub_1DACB78E4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DACB7E44();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = sub_1DACB92E4();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = sub_1DACB7904();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1DAAD99C4();
  v34[1] = v25;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v26 = *MEMORY[0x1E6968DF0];
  v27 = *(v14 + 104);
  v27(v17, v26, v13);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v27(v17, v26, v13);
  v28 = v34[0];
  sub_1DACB7914();
  (*(v23 + 56))(v28, 0, 1, v22);
  v44 = 0;
  v29 = sub_1DACB6E84();
  v30 = *(*(v29 - 8) + 56);
  v30(v35, 1, 1, v29);
  v30(v36, 1, 1, v29);
  sub_1DAA6A9E0(0, &qword_1EE123AB0, sub_1DAADA3B0, MEMORY[0x1E6959D18]);
  sub_1DACB6D94();
  v41 = 0u;
  v42 = 0u;
  v43 = 0;
  sub_1DACB6D84();
  *&v41 = sub_1DACB6D54();
  (*(v38 + 104))(v37, *MEMORY[0x1E695A500], v39);
  sub_1DAADA414();
  sub_1DAADA468();
  v31 = sub_1DACB6FF4();
  v32 = v40;
  *v40 = v31;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  v32[1] = result;
  return result;
}

unint64_t sub_1DAADA3B0()
{
  result = qword_1EE125E40;
  if (!qword_1EE125E40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE125E40);
  }

  return result;
}

unint64_t sub_1DAADA414()
{
  result = qword_1ECBE69D0;
  if (!qword_1ECBE69D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE69D0);
  }

  return result;
}

unint64_t sub_1DAADA468()
{
  result = qword_1EE11EC00;
  if (!qword_1EE11EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EC00);
  }

  return result;
}

uint64_t sub_1DAADA4BC(uint64_t a1)
{
  *(v2 + 216) = a1;
  *(v2 + 224) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DAADA4E4, 0, 0);
}

uint64_t sub_1DAADA4E4()
{
  v37 = v0;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v2 = v0[28];
  v1 = v0[29];
  v3 = sub_1DACB8C94();
  v0[30] = __swift_project_value_buffer(v3, qword_1EE11D390);
  sub_1DACB71F4();
  sub_1DACB71F4();
  v4 = sub_1DACB8C74();
  v5 = sub_1DACB9914();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[28];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v35 = v8;
    *v7 = 136315138;
    sub_1DACB6FB4();
    v9 = v0[25];
    v10 = *(v9 + 16);
    if (v10)
    {
      v30 = v8;
      v31 = v7;
      v32 = v5;
      v33 = v4;
      v34 = v0;
      v36 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v10, 0);
      v11 = 0;
      v12 = v36;
      v13 = *(v36 + 16);
      v14 = 16 * v13;
      do
      {
        v15 = *(v9 + v11 + 32);
        v16 = *(v9 + v11 + 40);
        v36 = v12;
        v17 = *(v12 + 24);
        v18 = v13 + 1;
        sub_1DACB71E4();
        if (v13 >= v17 >> 1)
        {
          sub_1DAA5859C((v17 > 1), v18, 1);
          v12 = v36;
        }

        *(v12 + 16) = v18;
        v19 = v12 + v14;
        *(v19 + 32) = v15;
        *(v19 + 40) = v16;
        v14 += 16;
        v11 += 24;
        ++v13;
        --v10;
      }

      while (v10);

      v4 = v33;
      v0 = v34;
      v5 = v32;
      v8 = v30;
      v7 = v31;
    }

    else
    {
      v20 = v0[25];

      v12 = MEMORY[0x1E69E7CC0];
    }

    v0[26] = v12;
    sub_1DAA58C60(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v21 = sub_1DACB9214();
    v23 = v22;

    v24 = sub_1DAA7ABE4(v21, v23, &v35);

    *(v7 + 4) = v24;
    _os_log_impl(&dword_1DAA3F000, v4, v5, "Deleting watchlists, ids=[%s]", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E1278C00](v8, -1, -1);
    MEMORY[0x1E1278C00](v7, -1, -1);
  }

  v25 = v0[29];
  sub_1DACB6D24();
  v27 = v0[17];
  v26 = v0[18];
  __swift_project_boxed_opaque_existential_1(v0 + 14, v27);
  v28 = swift_task_alloc();
  v0[31] = v28;
  *v28 = v0;
  v28[1] = sub_1DAADA834;

  return sub_1DAC95D1C(v27, v26);
}

uint64_t sub_1DAADA834(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 248);
  v7 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
    v5 = sub_1DAADB310;
  }

  else
  {
    v5 = sub_1DAADA948;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DAADA948()
{
  v61 = v0;
  v1 = v0[28];
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  sub_1DACB6FB4();
  v2 = v0[24];
  v3 = v0[32];
  v48 = *(v2 + 16);
  if (v48)
  {
    v4 = 0;
    v52 = v2 + 32;
    v53 = *(v3 + 16);
    v57 = v0[32];
    v51 = (v3 + 73);
    v5 = MEMORY[0x1E69E7CC0];
    v49 = v0[24];
    v50 = v0;
    while (v4 < *(v2 + 16))
    {
      v6 = v53;
      v7 = (v52 + 24 * v4);
      v8 = *v7;
      v59 = v7[1];
      v55 = v5;
      v56 = v7[2];
      v54 = v4 + 1;
      v9 = -1;
      v10 = v51;
      while (1)
      {
        if (!v6)
        {
          v22 = v8;
          v23 = v50[32];
          v24 = v50[30];
          swift_bridgeObjectRetain_n();
          v25 = v56;
          swift_retain_n();

          v26 = sub_1DACB8C74();
          v27 = sub_1DACB9904();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v60 = v29;
            *v28 = 136315138;
            sub_1DACB71E4();
            v30 = sub_1DAA7ABE4(v22, v59, &v60);

            *(v28 + 4) = v30;
            _os_log_impl(&dword_1DAA3F000, v26, v27, "No watchlist found matching id=%s", v28, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v29);
            v25 = v56;
            MEMORY[0x1E1278C00](v29, -1, -1);
            MEMORY[0x1E1278C00](v28, -1, -1);
          }

          sub_1DAADCB1C();
          swift_allocError();
          *v31 = v22;
          v31[1] = v59;
          v31[2] = v25;
          swift_willThrow();
          v32 = v50[1];
          goto LABEL_30;
        }

        if (++v9 >= *(v57 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v58 = *(v10 - 41);
        v11 = *(v10 - 33);
        v12 = *(v10 - 25);
        v13 = *(v10 - 17);
        v14 = *(v10 - 9);
        v15 = *(v10 - 1);
        v16 = *v10;
        if (v13 == v8 && v14 == v59)
        {
          break;
        }

        v10 += 48;
        --v6;
        v3 = sub_1DACBA174();
        if (v3)
        {
          goto LABEL_14;
        }
      }

      v13 = v8;
LABEL_14:
      sub_1DACB71E4();
      sub_1DACB71F4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v18 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1DAA929C8(0, *(v55 + 2) + 1, 1, v55);
      }

      v20 = *(v18 + 2);
      v19 = *(v18 + 3);
      v5 = v18;
      if (v20 >= v19 >> 1)
      {
        v5 = sub_1DAA929C8((v19 > 1), v20 + 1, 1, v18);
      }

      *(v5 + 2) = v20 + 1;
      v21 = &v5[48 * v20];
      *(v21 + 4) = v58;
      *(v21 + 5) = v11;
      *(v21 + 6) = v12;
      *(v21 + 7) = v13;
      *(v21 + 8) = v14;
      v21[72] = v15;
      v21[73] = v16;
      v2 = v49;
      v4 = v54;
      v0 = v50;
      if (v54 == v48)
      {
        v47 = v50[32];

        v3 = v5;
        goto LABEL_24;
      }
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_24:
  v0[34] = v3;
  v33 = *(v3 + 16);
  v0[35] = v33;
  if (v33)
  {
    v0[36] = 0;
    if (*(v3 + 16))
    {
      v34 = v0[29];
      v35 = *(v3 + 40);
      v0[37] = v35;
      v36 = *(v3 + 48);
      v0[38] = v36;
      v37 = *(v3 + 56);
      v0[39] = v37;
      v38 = *(v3 + 64);
      v0[40] = v38;
      v39 = *(v3 + 72);
      v40 = *(v3 + 32);
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB6D24();
      v41 = v0[22];
      v42 = v0[23];
      __swift_project_boxed_opaque_existential_1(v0 + 19, v41);
      v0[8] = v40;
      v0[9] = v35;
      v0[10] = v36;
      v0[11] = v37;
      v0[12] = v38;
      *(v0 + 52) = v39;
      v0[41] = (*(v42 + 80))(v0 + 8, v41, v42);
      v43 = *(MEMORY[0x1E69D6B08] + 4);
      v44 = swift_task_alloc();
      v0[42] = v44;
      *v44 = v0;
      v44[1] = sub_1DAADAE78;
      v3 = (v0 + 2);

      return MEMORY[0x1EEE44EE0](v3);
    }

LABEL_35:
    __break(1u);
    return MEMORY[0x1EEE44EE0](v3);
  }

  v45 = v0[27];

  sub_1DACB6EB4();
  v32 = v0[1];
LABEL_30:

  return v32();
}

uint64_t sub_1DAADAE78()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v15 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v5 = v2[40];
    v4 = v2[41];
    v7 = v2[37];
    v6 = v2[38];
    v8 = v2[34];

    v9 = sub_1DAADB374;
  }

  else
  {
    v10 = v2[41];
    v11 = v2[3];
    v12 = v2[4];
    v13 = v2[6];

    __swift_destroy_boxed_opaque_existential_1(v2 + 19);
    v9 = sub_1DAADAFFC;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DAADAFFC()
{
  v37 = v0;
  v1 = *(v0 + 320);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 240);
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  v5 = sub_1DACB8C74();
  v6 = sub_1DACB9914();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 320);
  if (v7)
  {
    v10 = *(v0 + 304);
    v9 = *(v0 + 312);
    v11 = *(v0 + 296);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v36 = v13;
    *v12 = 136315138;

    v14 = sub_1DAA7ABE4(v9, v8, &v36);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_1DAA3F000, v5, v6, "Successfully deleted watchlist id=%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E1278C00](v13, -1, -1);
    MEMORY[0x1E1278C00](v12, -1, -1);
  }

  else
  {
    v17 = *(v0 + 296);
    v16 = *(v0 + 304);
  }

  v18 = *(v0 + 288) + 1;
  if (v18 == *(v0 + 280))
  {
    v19 = *(v0 + 272);
    v20 = *(v0 + 216);

    sub_1DACB6EB4();
    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    *(v0 + 288) = v18;
    v23 = *(v0 + 272);
    if (v18 >= *(v23 + 16))
    {
      __break(1u);
    }

    else
    {
      v24 = *(v0 + 232);
      v25 = v23 + 48 * v18;
      v26 = *(v25 + 40);
      *(v0 + 296) = v26;
      v27 = *(v25 + 48);
      *(v0 + 304) = v27;
      v28 = *(v25 + 56);
      *(v0 + 312) = v28;
      v29 = *(v25 + 64);
      *(v0 + 320) = v29;
      v30 = *(v25 + 72);
      v31 = *(v25 + 32);
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB6D24();
      v32 = *(v0 + 176);
      v33 = *(v0 + 184);
      __swift_project_boxed_opaque_existential_1((v0 + 152), v32);
      *(v0 + 64) = v31;
      *(v0 + 72) = v26;
      *(v0 + 80) = v27;
      *(v0 + 88) = v28;
      *(v0 + 96) = v29;
      *(v0 + 104) = v30;
      *(v0 + 328) = (*(v33 + 80))(v0 + 64, v32, v33);
      v34 = *(MEMORY[0x1E69D6B08] + 4);
      v35 = swift_task_alloc();
      *(v0 + 336) = v35;
      *v35 = v0;
      v35[1] = sub_1DAADAE78;
      v15 = v0 + 16;
    }

    return MEMORY[0x1EEE44EE0](v15);
  }
}

uint64_t sub_1DAADB310()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v1 = v0[33];
  v2 = v0[1];

  return v2();
}

uint64_t sub_1DAADB374()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  v1 = v0[43];
  v2 = v0[1];

  return v2();
}

uint64_t sub_1DAADB3D8()
{
  v1 = *v0;
  sub_1DACB6FB4();
  return v3;
}

uint64_t sub_1DAADB40C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE59B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7904();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE6968);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAADB4BC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E695A590];
  v3 = sub_1DACB7374();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1DAADB534()
{
  sub_1DAADD1F4(0, &qword_1ECBE6998, sub_1DAAD98EC, &type metadata for DeleteWatchlistsIntent, MEMORY[0x1E695A4A8]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1DAADD1F4(0, &qword_1ECBE69A8, sub_1DAAD98EC, &type metadata for DeleteWatchlistsIntent, MEMORY[0x1E695A4A0]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1DACB7254();
  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DAAD9964();
  sub_1DACB7234();

  sub_1DACB7244();
  sub_1DACB7264();
  return sub_1DACB7204();
}

uint64_t sub_1DAADB70C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return sub_1DAADA4BC(a1);
}

uint64_t sub_1DAADB7A8(uint64_t a1)
{
  v2 = sub_1DAAD98EC();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

char *sub_1DAADB818(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAADCE90();
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1DAADB910(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA58C60(0, &qword_1EE11CF00, &type metadata for WatchlistEntity, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1DAADBA48(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1DAADCFEC();
  sub_1DAADD1F4(0, &qword_1EE11FFF0, sub_1DAADD07C, &type metadata for Stock, MEMORY[0x1E69D65A0]);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
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
  sub_1DAADD1F4(0, &qword_1EE11FFF0, sub_1DAADD07C, &type metadata for Stock, MEMORY[0x1E69D65A0]);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
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

size_t sub_1DAADBC84(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1DAADCF14();
  sub_1DAADCF98(0, &qword_1EE11FFE0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6C20], MEMORY[0x1E69D65A0]);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
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
  sub_1DAADCF98(0, &qword_1EE11FFE0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6C20], MEMORY[0x1E69D65A0]);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
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

char *sub_1DAADBEDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA58C60(0, &qword_1EE11F528, &type metadata for StockNewsFeed, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[160 * v8])
    {
      memmove(v12, v13, 160 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DAADC048(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA58C60(0, &qword_1EE11CEF0, &type metadata for SymbolWidgetEntity, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1DAADC16C(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1DAADD164();
  sub_1DAADD1F4(0, &qword_1ECBE6A50, sub_1DAADD25C, &type metadata for SymbolWidgetEntity, MEMORY[0x1E695A208]);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
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
  sub_1DAADD1F4(0, &qword_1ECBE6A50, sub_1DAADD25C, &type metadata for SymbolWidgetEntity, MEMORY[0x1E695A208]);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
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

char *sub_1DAADC3A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA58C60(0, &qword_1EE11CEE0, &type metadata for WatchlistWidgetEntity, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1DAADC4CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA58C60(0, &qword_1EE11F538, &type metadata for StockRecord, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DAADC60C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA58C60(0, &qword_1EE11F4E8, &type metadata for Headline, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1DAADC81C(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1DAA6A9E0(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1DAADCA10(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA58C60(0, &qword_1EE11F498, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1DAADCB1C()
{
  result = qword_1ECBE69D8;
  if (!qword_1ECBE69D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE69D8);
  }

  return result;
}

unint64_t sub_1DAADCB74()
{
  result = qword_1ECBE69E0;
  if (!qword_1ECBE69E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE69E0);
  }

  return result;
}

unint64_t sub_1DAADCBD4()
{
  result = qword_1ECBE69E8;
  if (!qword_1ECBE69E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE69E8);
  }

  return result;
}

unint64_t sub_1DAADCC2C()
{
  result = qword_1ECBE69F0;
  if (!qword_1ECBE69F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE69F0);
  }

  return result;
}

unint64_t sub_1DAADCCC8()
{
  result = qword_1ECBE69F8;
  if (!qword_1ECBE69F8)
  {
    sub_1DAADD1F4(255, &qword_1ECBE6A00, sub_1DAAD98EC, &type metadata for DeleteWatchlistsIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE69F8);
  }

  return result;
}

void sub_1DAADCD58()
{
  if (!qword_1ECBE6A10)
  {
    sub_1DAADCDD0();
    sub_1DAADCE24();
    v0 = sub_1DACB71B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE6A10);
    }
  }
}

unint64_t sub_1DAADCDD0()
{
  result = qword_1ECBE6A18;
  if (!qword_1ECBE6A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6A18);
  }

  return result;
}

unint64_t sub_1DAADCE24()
{
  result = qword_1ECBE6A20;
  if (!qword_1ECBE6A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6A20);
  }

  return result;
}

void sub_1DAADCE90()
{
  if (!qword_1EE11CEA8)
  {
    sub_1DAADCF98(255, &qword_1EE11D0E0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v0 = sub_1DACBA124();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11CEA8);
    }
  }
}

void sub_1DAADCF14()
{
  if (!qword_1EE11F4C0)
  {
    sub_1DAADCF98(255, &qword_1EE11FFE0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6C20], MEMORY[0x1E69D65A0]);
    v0 = sub_1DACBA124();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F4C0);
    }
  }
}

void sub_1DAADCF98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_1DAADCFEC()
{
  if (!qword_1EE11F4C8)
  {
    sub_1DAADD1F4(255, &qword_1EE11FFF0, sub_1DAADD07C, &type metadata for Stock, MEMORY[0x1E69D65A0]);
    v0 = sub_1DACBA124();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F4C8);
    }
  }
}

unint64_t sub_1DAADD07C()
{
  result = qword_1EE1201C8;
  if (!qword_1EE1201C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1201C8);
  }

  return result;
}

void sub_1DAADD0D0()
{
  if (!qword_1ECBE6A38)
  {
    type metadata accessor for SymbolEntity();
    sub_1DAAA14B8(&qword_1EE123548, type metadata accessor for SymbolEntity);
    v0 = sub_1DACB70A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE6A38);
    }
  }
}

void sub_1DAADD164()
{
  if (!qword_1ECBE6A48)
  {
    sub_1DAADD1F4(255, &qword_1ECBE6A50, sub_1DAADD25C, &type metadata for SymbolWidgetEntity, MEMORY[0x1E695A208]);
    v0 = sub_1DACBA124();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE6A48);
    }
  }
}

void sub_1DAADD1F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1DAADD25C()
{
  result = qword_1EE11E710;
  if (!qword_1EE11E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E710);
  }

  return result;
}

uint64_t sub_1DAADD2B4()
{
  v0 = sub_1DACB8C94();
  __swift_allocate_value_buffer(v0, qword_1ECBE6A58);
  __swift_project_value_buffer(v0, qword_1ECBE6A58);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1DACB9324();
  }

  return sub_1DACB8C84();
}

uint64_t sub_1DAADD39C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE59C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB8C94();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE6A58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAADD444()
{
  v1 = *v0;
  sub_1DACBA284();
  MEMORY[0x1E1277D70](v1);
  return sub_1DACBA2C4();
}

uint64_t sub_1DAADD48C()
{
  v1 = *v0;
  sub_1DACBA284();
  MEMORY[0x1E1277D70](v1);
  return sub_1DACBA2C4();
}

void sub_1DAADD4D0()
{
  if (*(v0 + 16) <= 1u)
  {
    if (*(v0 + 16))
    {
      v1 = MEMORY[0x1E69B4FF8];
    }

    else
    {
      v1 = MEMORY[0x1E69B4FE8];
    }

    v3 = *v1;
    sub_1DACB9324();
  }

  else if (*(v0 + 16) == 2)
  {
    v2 = *MEMORY[0x1E69B4FF0];
    sub_1DACB9324();
  }

  v4 = sub_1DACB92F4();
  v5 = sub_1DACB92F4();
  v6 = FCPermanentURLForRecordID();

  if (v6)
  {

    sub_1DACB7A44();
  }

  else
  {
    __break(1u);
  }
}

uint64_t getEnumTagSinglePayload for PermanentURLFactory.Container(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PermanentURLFactory.Container(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DAADD7A0()
{
  result = qword_1ECBE6A70;
  if (!qword_1ECBE6A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6A70);
  }

  return result;
}

uint64_t type metadata accessor for YahooNewsOperation()
{
  result = qword_1ECBE6AB0;
  if (!qword_1ECBE6AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAADD840()
{
  result = sub_1DACB8204();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1DAADD8F0(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  v69 = a1;
  v71 = 0x73752D6E65;
  v76 = sub_1DACB8204();
  v67 = *(v76 - 8);
  v3 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1DACB7AB4();
  v68 = *(v75 - 8);
  v5 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1DACB7CC4();
  v65 = *(v66 - 8);
  v7 = *(v65 + 64);
  v8 = MEMORY[0x1EEE9AC00](v66);
  v72 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v57 - v10;
  v12 = *(v2 + qword_1ECBE6AA0 + 32);
  v13 = __swift_project_boxed_opaque_existential_1((v2 + qword_1ECBE6AA0), *(v2 + qword_1ECBE6AA0 + 24));
  sub_1DAADF8F0(0, &qword_1EE123B40, sub_1DAA4BD7C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC1D20;
  *(inited + 32) = 0x7372656B636974;
  *(inited + 40) = 0xE700000000000000;
  v64 = v2;
  v78[0] = *(v2 + qword_1ECBE6A98);
  sub_1DAA613E8();
  sub_1DAADF844(&qword_1EE123E90, sub_1DAA613E8);
  sub_1DACB71E4();
  v15 = sub_1DACB9214();
  v17 = v16;

  *(inited + 48) = v15;
  *(inited + 56) = v17;
  v63 = sub_1DAA4BDD8(inited);
  swift_setDeallocating();
  sub_1DAADF594(inited + 32);
  v18 = qword_1ECBE6AA8;
  sub_1DAADF5F0();
  v19 = v11;
  sub_1DABDF744();
  v20 = *v13;
  v21 = objc_opt_self();
  v22 = [v21 sharedPreferences];
  v23 = v22;
  if (v22)
  {
    v24 = [v22 stocksLanguageCode];
    if (v24)
    {
      v25 = v24;
      v71 = sub_1DACB9324();
      v27 = v26;
    }

    else
    {
      v27 = 0xE500000000000000;
    }

    v28 = [v23 stocksCountryCode];
    if (v28)
    {
      v29 = v28;
      v30 = sub_1DACB9324();
      v32 = v31;

      goto LABEL_9;
    }
  }

  else
  {
    v27 = 0xE500000000000000;
  }

  v32 = 0xE200000000000000;
  v30 = 21333;
LABEL_9:
  v33 = [v21 sharedPreferences];
  if (v33)
  {
    v34 = v33;
    v60 = v30;
    v61 = v32;
    v62 = v27;
    v35 = [v33 stocksYQLBaseURL];

    if (v35)
    {
      v36 = v73;
      sub_1DACB7A44();

      sub_1DAA4D678(v20 + 16, v78);
      v37 = v65;
      v57 = *(v65 + 16);
      v59 = v19;
      v38 = v66;
      v57(v72, v19, v66);
      v39 = v67;
      v58 = *(v67 + 16);
      v58(v74, v64 + v18, v76);
      sub_1DAADF644();
      v64 = v40;
      v41 = objc_allocWithZone(v40);
      v42 = MEMORY[0x1E69E7D40];
      *(v41 + *((*MEMORY[0x1E69E7D40] & *v41) + qword_1EE13E4B0 + 16)) = 3;
      v43 = v68;
      (*(v68 + 16))(v41 + *((*v42 & *v41) + qword_1EE13E4B0 + 24), v36, v75);
      v44 = v41 + *((*v42 & *v41) + qword_1EE13E4B0 + 32);
      strcpy(v44, "/applewf/news");
      *(v44 + 7) = -4864;
      *(v41 + *((*v42 & *v41) + qword_1EE13E4B0 + 40)) = v63;
      v45 = (v41 + *((*v42 & *v41) + qword_1EE13E4B0 + 48));
      v46 = v62;
      *v45 = v71;
      v45[1] = v46;
      v47 = v61;
      v45[2] = v60;
      v45[3] = v47;
      sub_1DAA4D678(v78, v41 + *((*v42 & *v41) + qword_1EE13E4B0 + 56));
      v48 = v72;
      v57(v41 + *((*v42 & *v41) + qword_1EE13E4B0 + 64), v72, v38);
      v49 = *v42 & *v41;
      v50 = v74;
      v51 = v76;
      v58(v41 + *(v49 + qword_1EE13E4B0 + 72), v74, v76);
      v77.receiver = v41;
      v77.super_class = v64;
      v52 = objc_msgSendSuper2(&v77, sel_init);
      (*(v39 + 8))(v50, v51);
      v53 = *(v37 + 8);
      v53(v48, v38);
      __swift_destroy_boxed_opaque_existential_1(v78);
      (*(v43 + 8))(v73, v75);
      v53(v59, v38);
      v54 = swift_allocObject();
      v55 = v70;
      *(v54 + 16) = v69;
      *(v54 + 24) = v55;
      v56 = v52;
      sub_1DACB71F4();
      sub_1DACB8304();

      [v56 start];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1DAADE1D0(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  sub_1DAADF8F0(0, &qword_1ECBE6AD0, type metadata accessor for YahooHeadline, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v36 - v8;
  v10 = type metadata accessor for YahooHeadline();
  v41 = *(v10 - 8);
  v11 = *(v41 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v42 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v40 = v36 - v14;
  if (*(a1 + 32))
  {
    return (a2)(*a1, 1);
  }

  v36[1] = a3;
  v37 = a2;
  v16 = *(a1 + 8);
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = (v16 + 32);
    v20 = (v41 + 48);
    v43 = MEMORY[0x1E69E7CC0];
    v38 = (v41 + 48);
    v39 = v10;
    while (v18 < *(v16 + 16))
    {
      v21 = v19[1];
      v56[0] = *v19;
      v56[1] = v21;
      v22 = v19[2];
      v23 = v19[3];
      v24 = v19[5];
      v56[4] = v19[4];
      v56[5] = v24;
      v56[2] = v22;
      v56[3] = v23;
      v25 = v19[3];
      v52 = v19[2];
      v53 = v25;
      v26 = v19[5];
      v54 = v19[4];
      v55 = v26;
      v27 = v19[1];
      v50 = *v19;
      v51 = v27;
      sub_1DAADF6A8(v56, &v44);
      sub_1DAADE648(&v50, v9);
      v46 = v52;
      v47 = v53;
      v48 = v54;
      v49 = v55;
      v44 = v50;
      v45 = v51;
      sub_1DAADF704(&v44);
      if ((*v20)(v9, 1, v10) == 1)
      {
        sub_1DAA927D4(v9, &qword_1ECBE6AD0, type metadata accessor for YahooHeadline);
      }

      else
      {
        v28 = v17;
        v29 = v16;
        v30 = v40;
        sub_1DAADF758(v9, v40);
        sub_1DAADF758(v30, v42);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_1DAADB7E4(0, v43[2] + 1, 1, v43);
        }

        v32 = v43[2];
        v31 = v43[3];
        if (v32 >= v31 >> 1)
        {
          v43 = sub_1DAADB7E4(v31 > 1, v32 + 1, 1, v43);
        }

        v33 = v42;
        v34 = v43;
        v43[2] = v32 + 1;
        sub_1DAADF758(v33, v34 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v32);
        v16 = v29;
        v17 = v28;
        v20 = v38;
        v10 = v39;
      }

      ++v18;
      v19 += 6;
      if (v17 == v18)
      {
        goto LABEL_15;
      }
    }

    __break(1u);

    v46 = v52;
    v47 = v53;
    v48 = v54;
    v49 = v55;
    v44 = v50;
    v45 = v51;
    sub_1DAADF704(&v44);

    __break(1u);
  }

  else
  {
    v43 = MEMORY[0x1E69E7CC0];
LABEL_15:
    *&v56[0] = v43;
    sub_1DAADF8F0(0, &qword_1ECBE6AD8, type metadata accessor for YahooHeadline, MEMORY[0x1E69E62F8]);
    sub_1DACB7AB4();
    sub_1DAADF7BC();
    sub_1DAADF844(&qword_1EE1263D8, MEMORY[0x1E6968FB0]);
    v35 = sub_1DACB94F4();

    v37(v35, 0);
  }

  return result;
}

uint64_t sub_1DAADE648@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v77 = a2;
  v74 = sub_1DACB7CC4();
  v72 = *(v74 - 8);
  v3 = *(v72 + 64);
  v4 = MEMORY[0x1EEE9AC00](v74);
  v70 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v73 = &v59 - v6;
  sub_1DAADF8F0(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v59 - v9;
  v11 = sub_1DACB7AB4();
  v76 = *(v11 - 8);
  v12 = *(v76 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v62 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v75 = &v59 - v15;
  v16 = *a1;
  v67 = a1[1];
  v68 = v16;
  v18 = a1[2];
  v17 = a1[3];
  v19 = a1[4];
  v65 = a1[5];
  v66 = v19;
  v20 = a1[7];
  v63 = a1[6];
  v64 = v20;
  v21 = a1[9];
  v69 = a1[8];
  v71 = v21;
  v22 = a1[10];
  v23 = a1[11];
  v78 = v18;
  v79 = v17;
  v24 = qword_1ECBE59D8;
  sub_1DACB71E4();
  if (v24 != -1)
  {
    swift_once();
  }

  v25 = sub_1DACB7664();
  __swift_project_value_buffer(v25, qword_1ECBE6A80);
  sub_1DAA642D8();
  v26 = MEMORY[0x1E69E6158];
  sub_1DACB9B44();
  v28 = v27;

  if (!v28)
  {
    sub_1DAADF8F0(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1DACC1D20;
    *(v32 + 56) = v26;
    *(v32 + 64) = sub_1DAA443C8();
    *(v32 + 32) = v18;
    *(v32 + 40) = v17;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v31 = sub_1DACB9AD4();
    sub_1DACB9914();
    goto LABEL_7;
  }

  sub_1DACB7A94();

  v29 = v76;
  if ((*(v76 + 48))(v10, 1, v11) == 1)
  {
    sub_1DAA927D4(v10, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
    sub_1DAADF8F0(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1DACC1D20;
    *(v30 + 56) = v26;
    *(v30 + 64) = sub_1DAA443C8();
    *(v30 + 32) = v18;
    *(v30 + 40) = v17;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v31 = sub_1DACB9AD4();
    sub_1DACB9914();
LABEL_7:
    sub_1DACB8C64();

LABEL_8:
    v33 = type metadata accessor for YahooHeadline();
    return (*(*(v33 - 8) + 56))(v77, 1, 1, v33);
  }

  v61 = *(v29 + 32);
  v61(v75, v10, v11);
  if (qword_1ECBE59D0 != -1)
  {
    swift_once();
  }

  v35 = qword_1ECBE6A78;
  v36 = v22;
  v37 = sub_1DACB92F4();
  v38 = [v35 dateFromString_];

  if (!v38)
  {
    sub_1DAADF8F0(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1DACC1D20;
    *(v57 + 56) = v26;
    *(v57 + 64) = sub_1DAA443C8();
    *(v57 + 32) = v36;
    *(v57 + 40) = v23;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v58 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    (*(v76 + 8))(v75, v11);
    goto LABEL_8;
  }

  v39 = v70;
  sub_1DACB7C74();

  v60 = *(v72 + 32);
  v60(v73, v39, v74);
  v40 = v75;
  v41 = v76;
  v42 = v62;
  (*(v76 + 16))(v62, v75, v11);
  v43 = v63;
  if (!v64)
  {
    v43 = 0;
  }

  v72 = v43;
  v44 = 0xE000000000000000;
  if (v64)
  {
    v44 = v64;
  }

  v70 = v44;
  v45 = *(v41 + 8);
  v46 = v67;
  sub_1DACB71E4();
  v47 = v65;
  sub_1DACB71E4();
  sub_1DACB71E4();
  v45(v40, v11);
  v48 = type metadata accessor for YahooHeadline();
  v49 = v77;
  v60(&v77[v48[8]], v73, v74);
  v61(v49, v42, v11);
  v50 = &v49[v48[5]];
  *v50 = v68;
  *(v50 + 1) = v46;
  v51 = &v49[v48[6]];
  *v51 = v66;
  *(v51 + 1) = v47;
  v52 = &v49[v48[7]];
  v53 = v71;
  v54 = v69;
  v55 = v70;
  *v52 = v72;
  *(v52 + 1) = v55;
  v56 = &v49[v48[9]];
  *v56 = v54;
  *(v56 + 1) = v53;
  (*(*(v48 - 1) + 56))(v49, 0, 1, v48);
  return sub_1DACB71E4();
}

id sub_1DAADEE58()
{
  result = sub_1DAADEE78();
  qword_1ECBE6A78 = result;
  return result;
}

id sub_1DAADEE78()
{
  v0 = sub_1DACB7E44();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAADF8F0(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v10 = sub_1DACB92F4();
  [v9 setDateFormat_];

  sub_1DACB7F24();
  v11 = sub_1DACB7F54();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v8, 1, v11) != 1)
  {
    v13 = sub_1DACB7F34();
    (*(v12 + 8))(v8, v11);
  }

  [v9 setTimeZone_];

  sub_1DACB7D14();
  v14 = sub_1DACB7D74();
  (*(v1 + 8))(v4, v0);
  [v9 setLocale_];

  return v9;
}

uint64_t sub_1DAADF0F4()
{
  v0 = sub_1DACB7664();
  __swift_allocate_value_buffer(v0, qword_1ECBE6A80);
  __swift_project_value_buffer(v0, qword_1ECBE6A80);
  return sub_1DAADF140();
}

uint64_t sub_1DAADF140()
{
  v0 = sub_1DACB7664();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v14 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  sub_1DACB7654();
  sub_1DACB75D4();
  sub_1DACB7634();
  v11 = v1[1];
  v11(v5, v0);
  v11(v10, v0);
  v12 = v1[4];
  v12(v10, v8, v0);
  sub_1DACB75E4();
  sub_1DACB7634();
  v11(v5, v0);
  v11(v10, v0);
  v12(v10, v8, v0);
  sub_1DACB75F4();
  sub_1DACB7634();
  v11(v5, v0);
  v11(v10, v0);
  v12(v10, v8, v0);
  sub_1DACB7604();
  sub_1DACB7634();
  v11(v8, v0);
  return (v11)(v10, v0);
}

uint64_t sub_1DAADF3B8()
{
  v1 = *(v0 + qword_1ECBE6A98);

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1ECBE6AA0));
  v2 = qword_1ECBE6AA8;
  v3 = sub_1DACB8204();
  v4 = *(*(v3 - 8) + 8);

  return v4(v0 + v2, v3);
}

uint64_t sub_1DAADF440(uint64_t a1)
{
  v2 = *(a1 + qword_1ECBE6A98);

  __swift_destroy_boxed_opaque_existential_1((a1 + qword_1ECBE6AA0));
  v3 = qword_1ECBE6AA8;
  v4 = sub_1DACB8204();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

uint64_t sub_1DAADF4CC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DACB71F4();
  sub_1DAADD8F0(sub_1DAADF554, v4);
}

uint64_t sub_1DAADF554(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_1DAADF594(uint64_t a1)
{
  sub_1DAA4BD7C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAADF5F0()
{
  result = qword_1ECBE6AC0;
  if (!qword_1ECBE6AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6AC0);
  }

  return result;
}

void sub_1DAADF644()
{
  if (!qword_1ECBE6AC8)
  {
    sub_1DAADF5F0();
    v0 = type metadata accessor for YahooBaseOperation();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE6AC8);
    }
  }
}

uint64_t sub_1DAADF758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YahooHeadline();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DAADF7BC()
{
  result = qword_1ECBE6AE0;
  if (!qword_1ECBE6AE0)
  {
    sub_1DAADF8F0(255, &qword_1ECBE6AD8, type metadata accessor for YahooHeadline, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6AE0);
  }

  return result;
}

uint64_t sub_1DAADF844(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DAADF88C()
{
  result = qword_1EE123B00;
  if (!qword_1EE123B00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE123B00);
  }

  return result;
}

void sub_1DAADF8F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAADF954()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = OBJC_IVAR____TtC10StocksCore17UserLaunchHistory_startDate;
  v2 = sub_1DACB7CC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAADFA60(uint64_t a1)
{
  sub_1DAADFABC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DAADFABC()
{
  if (!qword_1EE11F460)
  {
    v0 = sub_1DACB9AF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F460);
    }
  }
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

uint64_t QuoteDetail.currencyCode.getter()
{
  v1 = (v0 + *(type metadata accessor for QuoteDetail() + 68));
  v2 = *v1;
  v3 = v1[1];
  sub_1DACB71E4();
  return v2;
}

uint64_t QuoteDetail.fundAssetClass.getter()
{
  v1 = (v0 + *(type metadata accessor for QuoteDetail() + 84));
  v2 = *v1;
  v3 = v1[1];
  sub_1DACB71E4();
  return v2;
}

uint64_t QuoteDetail.fundCategory.getter()
{
  v1 = (v0 + *(type metadata accessor for QuoteDetail() + 88));
  v2 = *v1;
  v3 = v1[1];
  sub_1DACB71E4();
  return v2;
}

uint64_t QuoteDetail.fundFocus.getter()
{
  v1 = (v0 + *(type metadata accessor for QuoteDetail() + 92));
  v2 = *v1;
  v3 = v1[1];
  sub_1DACB71E4();
  return v2;
}

uint64_t QuoteDetail.fundNiche.getter()
{
  v1 = (v0 + *(type metadata accessor for QuoteDetail() + 96));
  v2 = *v1;
  v3 = v1[1];
  sub_1DACB71E4();
  return v2;
}

uint64_t QuoteDetail.fundRegion.getter()
{
  v1 = (v0 + *(type metadata accessor for QuoteDetail() + 100));
  v2 = *v1;
  v3 = v1[1];
  sub_1DACB71E4();
  return v2;
}

uint64_t QuoteDetail.fundTopHoldings.getter()
{
  v1 = *(v0 + *(type metadata accessor for QuoteDetail() + 104));

  return sub_1DACB71E4();
}

uint64_t QuoteDetail.fundSectors.getter()
{
  v1 = *(v0 + *(type metadata accessor for QuoteDetail() + 108));

  return sub_1DACB71E4();
}

uint64_t QuoteDetail.dateLastRefreshed.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for QuoteDetail() + 112);
  v4 = sub_1DACB7CC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t QuoteDetail.init(dayOpenPrice:dayLowPrice:dayHighPrice:yearLowPrice:yearHighPrice:dividendYield:volume:averageVolume:priceEarningsRatio:beta:earningsPerShare:earningsStartDate:earningsEndDate:currencyCode:detailsURL:keyStatisticsURL:marketTimeZone:fundAssetClass:fundCategory:fundFocus:fundNiche:fundRegion:fundTopHoldings:fundSectors:dateLastRefreshed:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13 & 1;
  *(a9 + 96) = a14;
  *(a9 + 104) = a15 & 1;
  *(a9 + 112) = a16;
  *(a9 + 120) = a17 & 1;
  *(a9 + 128) = a18;
  *(a9 + 136) = a19 & 1;
  *(a9 + 144) = a20;
  *(a9 + 152) = a21 & 1;
  *(a9 + 160) = a22;
  *(a9 + 168) = a23 & 1;
  v44 = type metadata accessor for QuoteDetail();
  v45 = MEMORY[0x1E6969530];
  sub_1DAAE02A4(a24, a9 + v44[15], &qword_1EE125280, MEMORY[0x1E6969530]);
  sub_1DAAE02A4(a25, a9 + v44[16], &qword_1EE125280, v45);
  v46 = (a9 + v44[17]);
  *v46 = a26;
  v46[1] = a27;
  v47 = MEMORY[0x1E6968FB0];
  sub_1DAAE02A4(a28, a9 + v44[18], &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  sub_1DAAE02A4(a29, a9 + v44[19], &qword_1EE1263D0, v47);
  sub_1DAAE02A4(a30, a9 + v44[20], &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
  v48 = (a9 + v44[21]);
  *v48 = a31;
  v48[1] = a32;
  v49 = (a9 + v44[22]);
  *v49 = a33;
  v49[1] = a34;
  v50 = (a9 + v44[23]);
  *v50 = a35;
  v50[1] = a36;
  v51 = (a9 + v44[24]);
  *v51 = a37;
  v51[1] = a38;
  v52 = (a9 + v44[25]);
  *v52 = a39;
  v52[1] = a40;
  *(a9 + v44[26]) = a41;
  *(a9 + v44[27]) = a42;
  v53 = v44[28];
  v54 = sub_1DACB7CC4();
  v55 = *(*(v54 - 8) + 32);

  return v55(a9 + v53, a43, v54);
}

uint64_t sub_1DAAE02A4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1DAA49A38(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1DAAE0314(char a1)
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
    case 24:
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
      result = 0x65737341646E7566;
      break;
    case 18:
      result = 0x65746143646E7566;
      break;
    case 19:
      result = 0x75636F46646E7566;
      break;
    case 20:
      result = 0x6863694E646E7566;
      break;
    case 21:
      result = 0x69676552646E7566;
      break;
    case 22:
      result = 0x48706F54646E7566;
      break;
    case 23:
      result = 0x74636553646E7566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DAAE0618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAAE4710(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAAE0658(uint64_t a1)
{
  v2 = sub_1DAAE3C38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAAE0694(uint64_t a1)
{
  v2 = sub_1DAAE3C38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QuoteDetail.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1DAAE40C0(0, &qword_1EE11F590, sub_1DAAE3C38, &type metadata for QuoteDetail.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = v59 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAAE3C38();
  sub_1DACBA304();
  v12 = *v3;
  v13 = *(v3 + 8);
  LOBYTE(v62) = 0;
  sub_1DACBA044();
  if (!v2)
  {
    v14 = v3[2];
    v15 = *(v3 + 24);
    LOBYTE(v62) = 1;
    sub_1DACBA044();
    v16 = v3[4];
    v17 = *(v3 + 40);
    LOBYTE(v62) = 2;
    sub_1DACBA044();
    v18 = v3[6];
    v19 = *(v3 + 56);
    LOBYTE(v62) = 3;
    sub_1DACBA044();
    v20 = v3[8];
    v21 = *(v3 + 72);
    LOBYTE(v62) = 4;
    sub_1DACBA044();
    v22 = v3[10];
    v23 = *(v3 + 88);
    LOBYTE(v62) = 5;
    sub_1DACBA044();
    v24 = v3[12];
    v25 = *(v3 + 104);
    LOBYTE(v62) = 6;
    sub_1DACBA064();
    v26 = v3[14];
    v27 = *(v3 + 120);
    LOBYTE(v62) = 7;
    sub_1DACBA064();
    v28 = v3[16];
    v29 = *(v3 + 136);
    LOBYTE(v62) = 8;
    sub_1DACBA044();
    v31 = v3[18];
    v32 = *(v3 + 152);
    LOBYTE(v62) = 9;
    sub_1DACBA044();
    v33 = v3[20];
    v34 = *(v3 + 168);
    LOBYTE(v62) = 10;
    sub_1DACBA044();
    v35 = type metadata accessor for QuoteDetail();
    v36 = v35[15];
    LOBYTE(v62) = 11;
    sub_1DACB7CC4();
    sub_1DAA5D490(&qword_1EE125288, MEMORY[0x1E6969530]);
    sub_1DACBA074();
    v37 = v35[16];
    LOBYTE(v62) = 12;
    sub_1DACBA074();
    v38 = (v3 + v35[17]);
    v39 = *v38;
    v40 = v38[1];
    LOBYTE(v62) = 13;
    sub_1DACBA024();
    v60 = v35[18];
    LOBYTE(v62) = 14;
    v41 = sub_1DACB7AB4();
    v59[1] = sub_1DAA5D490(&qword_1EE1252B8, MEMORY[0x1E6968FB0]);
    v60 = v41;
    sub_1DACBA074();
    v42 = v35[19];
    LOBYTE(v62) = 15;
    sub_1DACBA074();
    v60 = v35[20];
    LOBYTE(v62) = 16;
    sub_1DACB7F54();
    sub_1DAA5D490(&qword_1EE123A00, MEMORY[0x1E6969BC0]);
    sub_1DACBA074();
    v43 = (v3 + v35[21]);
    v44 = *v43;
    v45 = v43[1];
    LOBYTE(v62) = 17;
    sub_1DACBA024();
    v46 = (v3 + v35[22]);
    v47 = *v46;
    v48 = v46[1];
    LOBYTE(v62) = 18;
    sub_1DACBA024();
    v49 = (v3 + v35[23]);
    v50 = *v49;
    v51 = v49[1];
    LOBYTE(v62) = 19;
    sub_1DACBA024();
    v52 = (v3 + v35[24]);
    v53 = *v52;
    v54 = v52[1];
    LOBYTE(v62) = 20;
    sub_1DACBA024();
    v55 = (v3 + v35[25]);
    v56 = *v55;
    v57 = v55[1];
    LOBYTE(v62) = 21;
    sub_1DACBA024();
    v62 = *(v3 + v35[26]);
    v61 = 22;
    sub_1DAA49984(0, &qword_1EE11FBA0, &type metadata for FundHolding, MEMORY[0x1E69E62F8]);
    sub_1DAAE3D90(&qword_1EE11FB98, sub_1DAAE3C8C);
    sub_1DACBA0E4();
    v62 = *(v3 + v35[27]);
    v61 = 23;
    sub_1DAA49984(0, &qword_1EE11FBB8, &type metadata for FundSector, MEMORY[0x1E69E62F8]);
    sub_1DAAE3E74(&qword_1EE11FBB0, sub_1DAAE3CE0);
    sub_1DACBA0E4();
    v58 = v35[28];
    LOBYTE(v62) = 24;
    sub_1DACBA0E4();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t QuoteDetail.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v116 = sub_1DACB7CC4();
  v111 = *(v116 - 8);
  v3 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v112 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA49A38(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v117 = &v108 - v7;
  sub_1DAA49A38(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v114 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v115 = &v108 - v12;
  sub_1DAA49A38(0, &qword_1EE125280, MEMORY[0x1E6969530]);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v108 - v18;
  sub_1DAAE40C0(0, &qword_1EE11F678, sub_1DAAE3C38, &type metadata for QuoteDetail.CodingKeys, MEMORY[0x1E69E6F48]);
  v120 = v20;
  v118 = *(v20 - 8);
  v21 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v108 - v22;
  v24 = type metadata accessor for QuoteDetail();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1[3];
  v29 = a1[4];
  v121 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1DAAE3C38();
  v119 = v23;
  v30 = v122;
  sub_1DACBA2F4();
  if (v30)
  {
    v122 = v30;
    return __swift_destroy_boxed_opaque_existential_1(v121);
  }

  v31 = v117;
  v108 = v17;
  v109 = v19;
  v110 = v24;
  v32 = v27;
  LOBYTE(v124) = 0;
  *v27 = sub_1DACB9F54();
  v27[8] = v33 & 1;
  LOBYTE(v124) = 1;
  *(v27 + 2) = sub_1DACB9F54();
  v27[24] = v34 & 1;
  LOBYTE(v124) = 2;
  *(v27 + 4) = sub_1DACB9F54();
  v27[40] = v35 & 1;
  LOBYTE(v124) = 3;
  *(v27 + 6) = sub_1DACB9F54();
  v27[56] = v36 & 1;
  LOBYTE(v124) = 4;
  *(v27 + 8) = sub_1DACB9F54();
  v27[72] = v37 & 1;
  LOBYTE(v124) = 5;
  *(v27 + 10) = sub_1DACB9F54();
  v27[88] = v38 & 1;
  LOBYTE(v124) = 6;
  *(v27 + 12) = sub_1DACB9F74();
  v27[104] = v39 & 1;
  LOBYTE(v124) = 7;
  *(v27 + 14) = sub_1DACB9F74();
  v27[120] = v41 & 1;
  LOBYTE(v124) = 8;
  v42 = sub_1DACB9F54();
  v122 = 0;
  *(v27 + 16) = v42;
  v27[136] = v43 & 1;
  LOBYTE(v124) = 9;
  v44 = v122;
  v45 = sub_1DACB9F54();
  v122 = v44;
  if (v44)
  {
    goto LABEL_9;
  }

  *(v27 + 18) = v45;
  v27[152] = v46 & 1;
  LOBYTE(v124) = 10;
  v47 = v122;
  v48 = sub_1DACB9F54();
  v122 = v47;
  if (v47 || (*(v27 + 20) = v48, v27[168] = v49 & 1, LOBYTE(v124) = 11, sub_1DAA5D490(&qword_1EE123A38, MEMORY[0x1E6969530]), v50 = v122, sub_1DACB9F84(), (v122 = v50) != 0))
  {
LABEL_9:
    (*(v118 + 8))(v119, v120);
    return __swift_destroy_boxed_opaque_existential_1(v121);
  }

  sub_1DAAE02A4(v109, &v27[v110[15]], &qword_1EE125280, MEMORY[0x1E6969530]);
  LOBYTE(v124) = 12;
  v51 = v122;
  sub_1DACB9F84();
  v109 = v51;
  if (v51)
  {
    (*(v118 + 8))(v119, v120);
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    LODWORD(v119) = 0;
    LODWORD(v120) = 0;
    v59 = 0;
    v122 = v109;
  }

  else
  {
    sub_1DAAE02A4(v108, &v27[v110[16]], &qword_1EE125280, MEMORY[0x1E6969530]);
    LOBYTE(v124) = 13;
    v60 = v109;
    v61 = sub_1DACB9F34();
    v122 = v60;
    if (v60)
    {
      (*(v118 + 8))(v119, v120);
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      LODWORD(v119) = 0;
      LODWORD(v120) = 0;
      v59 = 0;
    }

    else
    {
      v63 = &v27[v110[17]];
      *v63 = v61;
      v63[1] = v62;
      sub_1DACB7AB4();
      LOBYTE(v124) = 14;
      sub_1DAA5D490(&qword_1EE1252A8, MEMORY[0x1E6968FB0]);
      v64 = v122;
      sub_1DACB9F84();
      v122 = v64;
      if (v64)
      {
        (*(v118 + 8))(v119, v120);
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v57 = 0;
        v58 = 0;
        LODWORD(v119) = 0;
        LODWORD(v120) = 0;
        v59 = 0;
        v52 = 1;
      }

      else
      {
        sub_1DAAE02A4(v115, &v27[v110[18]], &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
        LOBYTE(v124) = 15;
        v65 = v122;
        sub_1DACB9F84();
        v122 = v65;
        if (v65)
        {
          (*(v118 + 8))(v119, v120);
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = 0;
          LODWORD(v119) = 0;
          LODWORD(v120) = 0;
          v59 = 0;
          v52 = 1;
          v53 = 1;
        }

        else
        {
          sub_1DAAE02A4(v114, &v27[v110[19]], &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
          sub_1DACB7F54();
          LOBYTE(v124) = 16;
          sub_1DAA5D490(&qword_1EE1239F8, MEMORY[0x1E6969BC0]);
          v66 = v122;
          sub_1DACB9F84();
          v122 = v66;
          if (v66)
          {
            (*(v118 + 8))(v119, v120);
            v55 = 0;
            v56 = 0;
            v57 = 0;
            v58 = 0;
            LODWORD(v119) = 0;
            LODWORD(v120) = 0;
            v59 = 0;
            v52 = 1;
            v53 = 1;
            v54 = 1;
          }

          else
          {
            sub_1DAAE02A4(v31, &v27[v110[20]], &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
            LOBYTE(v124) = 17;
            v67 = v122;
            v68 = sub_1DACB9F34();
            v122 = v67;
            if (v67)
            {
              (*(v118 + 8))(v119, v120);
              v56 = 0;
              v57 = 0;
              v58 = 0;
              LODWORD(v119) = 0;
              LODWORD(v120) = 0;
              v59 = 0;
              v52 = 1;
              v53 = 1;
              v54 = 1;
              v55 = 1;
            }

            else
            {
              v70 = &v27[v110[21]];
              *v70 = v68;
              v70[1] = v69;
              LOBYTE(v124) = 18;
              v71 = v122;
              v72 = sub_1DACB9F34();
              v122 = v71;
              if (v71)
              {
                (*(v118 + 8))(v119, v120);
                v57 = 0;
                v58 = 0;
                LODWORD(v119) = 0;
                LODWORD(v120) = 0;
                v59 = 0;
                v52 = 1;
                v53 = 1;
                v54 = 1;
                v55 = 1;
                v56 = 1;
              }

              else
              {
                v74 = &v27[v110[22]];
                *v74 = v72;
                v74[1] = v73;
                LOBYTE(v124) = 19;
                v75 = v122;
                v76 = sub_1DACB9F34();
                v122 = v75;
                if (v75)
                {
                  (*(v118 + 8))(v119, v120);
                  v58 = 0;
                  LODWORD(v119) = 0;
                  LODWORD(v120) = 0;
                  v59 = 0;
                  v52 = 1;
                  v53 = 1;
                  v54 = 1;
                  v55 = 1;
                  v56 = 1;
                  v57 = 1;
                }

                else
                {
                  v78 = &v27[v110[23]];
                  *v78 = v76;
                  v78[1] = v77;
                  LOBYTE(v124) = 20;
                  v79 = v122;
                  v80 = sub_1DACB9F34();
                  v122 = v79;
                  if (v79)
                  {
                    (*(v118 + 8))(v119, v120);
                    LODWORD(v119) = 0;
                    LODWORD(v120) = 0;
                    v59 = 0;
                    v52 = 1;
                    v53 = 1;
                    v54 = 1;
                    v55 = 1;
                    v56 = 1;
                    v57 = 1;
                    v58 = 1;
                  }

                  else
                  {
                    v82 = &v27[v110[24]];
                    *v82 = v80;
                    v82[1] = v81;
                    LOBYTE(v124) = 21;
                    v83 = v122;
                    v84 = sub_1DACB9F34();
                    v122 = v83;
                    if (v83)
                    {
                      (*(v118 + 8))(v119, v120);
                      LODWORD(v120) = 0;
                      v59 = 0;
                      v52 = 1;
                      v53 = 1;
                      v54 = 1;
                      v55 = 1;
                      v56 = 1;
                      v57 = 1;
                      v58 = 1;
                      LODWORD(v119) = 1;
                    }

                    else
                    {
                      v86 = &v27[v110[25]];
                      *v86 = v84;
                      v86[1] = v85;
                      sub_1DAA49984(0, &qword_1EE11FBA0, &type metadata for FundHolding, MEMORY[0x1E69E62F8]);
                      v123 = 22;
                      sub_1DAAE3D90(&qword_1EE11FB90, sub_1DAAE3E20);
                      v87 = v122;
                      sub_1DACB9FE4();
                      v122 = v87;
                      if (v87)
                      {
                        (*(v118 + 8))(v119, v120);
                        v59 = 0;
                        v52 = 1;
                        v53 = 1;
                        v54 = 1;
                        v55 = 1;
                        v56 = 1;
                        v57 = 1;
                        v58 = 1;
                        LODWORD(v119) = 1;
                        LODWORD(v120) = 1;
                      }

                      else
                      {
                        *&v27[v110[26]] = v124;
                        sub_1DAA49984(0, &qword_1EE11FBB8, &type metadata for FundSector, MEMORY[0x1E69E62F8]);
                        v123 = 23;
                        sub_1DAAE3E74(&qword_1EE11FBA8, sub_1DAAE3F04);
                        v88 = v122;
                        sub_1DACB9FE4();
                        v122 = v88;
                        if (!v88)
                        {
                          *&v27[v110[27]] = v124;
                          LOBYTE(v124) = 24;
                          v97 = v122;
                          sub_1DACB9FE4();
                          v122 = v97;
                          if (!v97)
                          {
                            (*(v118 + 8))(v119, v120);
                            (*(v111 + 32))(&v27[v110[28]], v112, v116);
                            sub_1DAAE3F58(v27, v113);
                            __swift_destroy_boxed_opaque_existential_1(v121);
                            return sub_1DAAE3FBC(v27);
                          }

                          (*(v118 + 8))(v119, v120);
                          __swift_destroy_boxed_opaque_existential_1(v121);
                          v98 = v110;
                          v99 = MEMORY[0x1E6969530];
                          sub_1DAAE3D34(&v32[v110[15]], &qword_1EE125280, MEMORY[0x1E6969530]);
                          sub_1DAAE3D34(&v32[v98[16]], &qword_1EE125280, v99);
                          v100 = *&v32[v98[17] + 8];

                          v101 = MEMORY[0x1E6968FB0];
                          sub_1DAAE3D34(&v32[v98[18]], &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
                          sub_1DAAE3D34(&v32[v98[19]], &qword_1EE1263D0, v101);
                          sub_1DAAE3D34(&v32[v98[20]], &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
                          v102 = *&v32[v98[21] + 8];

                          v103 = *&v32[v98[22] + 8];

                          v104 = *&v32[v98[23] + 8];

                          v105 = *&v32[v98[24] + 8];

                          v106 = *&v32[v98[25] + 8];

                          v107 = *&v32[v98[26]];

                          v95 = v98[27];
LABEL_57:
                          v96 = *&v32[v95];
                        }

                        (*(v118 + 8))(v119, v120);
                        v52 = 1;
                        v53 = 1;
                        v54 = 1;
                        v55 = 1;
                        v56 = 1;
                        v57 = 1;
                        v58 = 1;
                        LODWORD(v119) = 1;
                        LODWORD(v120) = 1;
                        v59 = 1;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v121);
  result = sub_1DAAE3D34(&v32[v110[15]], &qword_1EE125280, MEMORY[0x1E6969530]);
  if (v109)
  {
    if (v52)
    {
      goto LABEL_36;
    }
  }

  else
  {
    result = sub_1DAAE3D34(&v32[v110[16]], &qword_1EE125280, MEMORY[0x1E6969530]);
    if (v52)
    {
LABEL_36:
      v89 = *&v32[v110[17] + 8];

      if ((v53 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_48;
    }
  }

  if (!v53)
  {
LABEL_37:
    if (v54)
    {
      goto LABEL_38;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = sub_1DAAE3D34(&v32[v110[18]], &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  if (v54)
  {
LABEL_38:
    result = sub_1DAAE3D34(&v32[v110[19]], &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
    if ((v55 & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_50;
  }

LABEL_49:
  if (!v55)
  {
LABEL_39:
    if (v56)
    {
      goto LABEL_40;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = sub_1DAAE3D34(&v32[v110[20]], &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
  if (v56)
  {
LABEL_40:
    v90 = *&v32[v110[21] + 8];

    if ((v57 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_52;
  }

LABEL_51:
  if (!v57)
  {
LABEL_41:
    if (v58)
    {
      goto LABEL_42;
    }

    goto LABEL_53;
  }

LABEL_52:
  v93 = *&v32[v110[22] + 8];

  if (v58)
  {
LABEL_42:
    v91 = *&v32[v110[23] + 8];

    if ((v119 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_54;
  }

LABEL_53:
  if (!v119)
  {
LABEL_43:
    if (v120)
    {
      goto LABEL_44;
    }

    goto LABEL_55;
  }

LABEL_54:
  v94 = *&v32[v110[24] + 8];

  if (v120)
  {
LABEL_44:
    v92 = *&v32[v110[25] + 8];

    if (v59)
    {
      goto LABEL_56;
    }

    return result;
  }

LABEL_55:
  if (v59)
  {
LABEL_56:
    v95 = v110[26];
    goto LABEL_57;
  }

  return result;
}

unint64_t sub_1DAAE1FF0()
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

uint64_t sub_1DAAE202C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000;
  if (v6 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DACE3B10 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();

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

uint64_t sub_1DAAE210C(uint64_t a1)
{
  v2 = sub_1DAAE4018();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAAE2148(uint64_t a1)
{
  v2 = sub_1DAAE4018();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FundSector.sector.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DACB71E4();
  return v1;
}

BOOL sub_1DAAE2290(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1DACBA174();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

unint64_t sub_1DAAE22F0()
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

uint64_t sub_1DAAE232C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F74636573 && a2 == 0xE600000000000000;
  if (v6 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DACE3B10 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();

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

uint64_t sub_1DAAE240C(uint64_t a1)
{
  v2 = sub_1DAAE406C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAAE2448(uint64_t a1)
{
  v2 = sub_1DAAE406C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAAE24D4(void *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void))
{
  v19 = a5;
  sub_1DAAE40C0(0, a2, a3, a4, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v18 - v11;
  v13 = v5[1];
  v18 = *v5;
  v14 = v5[2];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19();
  sub_1DACBA304();
  v22 = 0;
  v16 = v20;
  sub_1DACBA094();
  if (!v16)
  {
    v21 = 1;
    sub_1DACBA0B4();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1DAAE26AC@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, uint64_t *a6@<X8>)
{
  v26 = a6;
  sub_1DAAE40C0(0, a2, a3, a4, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v25 = *(v9 - 8);
  v11 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a5();
  sub_1DACBA2F4();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v25;
  v15 = v26;
  v28 = 0;
  v17 = sub_1DACB9FA4();
  v19 = v18;
  v20 = v17;
  v27 = 1;
  sub_1DACB9FC4();
  v22 = v21;
  (*(v16 + 8))(v13, v10);
  *v15 = v20;
  v15[1] = v19;
  v15[2] = v22;
  sub_1DACB71E4();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s10StocksCore11QuoteDetailV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v155 = sub_1DACB7F54();
  v153 = *(v155 - 8);
  v4 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v150 = &v143[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x1E6969BC0];
  sub_1DAA49A38(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v152 = &v143[-v9];
  sub_1DAAE4F1C(0, &qword_1EE11F0C8, &qword_1EE1239E8, v6);
  v151 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v157 = &v143[-v12];
  v162 = sub_1DACB7AB4();
  v160 = *(v162 - 8);
  v13 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v162);
  v154 = &v143[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1E6968FB0];
  sub_1DAA49A38(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v156 = &v143[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v143[-v20];
  sub_1DAAE4F1C(0, &qword_1EE1252A0, &qword_1EE1263D0, v15);
  v159 = v22;
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v158 = &v143[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v161 = &v143[-v26];
  v27 = sub_1DACB7CC4();
  v163 = *(v27 - 8);
  v28 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v143[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x1E6969530];
  sub_1DAA49A38(0, &qword_1EE125280, MEMORY[0x1E6969530]);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v36 = &v143[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v143[-v37];
  sub_1DAAE4F1C(0, &qword_1EE123A28, &qword_1EE125280, v31);
  v40 = v39;
  v41 = *(*(v39 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = &v143[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v143[-v45];
  v47 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      goto LABEL_81;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v47 = 1;
    }

    if (v47)
    {
      goto LABEL_81;
    }
  }

  v48 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      goto LABEL_81;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_81;
    }
  }

  v49 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      goto LABEL_81;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v49 = 1;
    }

    if (v49)
    {
      goto LABEL_81;
    }
  }

  v50 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      goto LABEL_81;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v50 = 1;
    }

    if (v50)
    {
      goto LABEL_81;
    }
  }

  v51 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (!*(a2 + 72))
    {
      goto LABEL_81;
    }
  }

  else
  {
    if (*(a1 + 64) != *(a2 + 64))
    {
      v51 = 1;
    }

    if (v51)
    {
      goto LABEL_81;
    }
  }

  v52 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if (!*(a2 + 88))
    {
      goto LABEL_81;
    }
  }

  else
  {
    if (*(a1 + 80) != *(a2 + 80))
    {
      v52 = 1;
    }

    if (v52)
    {
      goto LABEL_81;
    }
  }

  v53 = *(a2 + 104);
  if (*(a1 + 104))
  {
    if (!*(a2 + 104))
    {
      goto LABEL_81;
    }
  }

  else
  {
    if (*(a1 + 96) != *(a2 + 96))
    {
      v53 = 1;
    }

    if (v53)
    {
      goto LABEL_81;
    }
  }

  v54 = *(a2 + 120);
  if (*(a1 + 120))
  {
    if (!*(a2 + 120))
    {
      goto LABEL_81;
    }
  }

  else
  {
    if (*(a1 + 112) != *(a2 + 112))
    {
      v54 = 1;
    }

    if (v54)
    {
      goto LABEL_81;
    }
  }

  v55 = *(a2 + 136);
  if (*(a1 + 136))
  {
    if (!*(a2 + 136))
    {
      goto LABEL_81;
    }
  }

  else
  {
    if (*(a1 + 128) != *(a2 + 128))
    {
      v55 = 1;
    }

    if (v55)
    {
      goto LABEL_81;
    }
  }

  v56 = *(a2 + 152);
  if (*(a1 + 152))
  {
    if (!*(a2 + 152))
    {
      goto LABEL_81;
    }
  }

  else
  {
    if (*(a1 + 144) != *(a2 + 144))
    {
      v56 = 1;
    }

    if (v56)
    {
      goto LABEL_81;
    }
  }

  v57 = *(a2 + 168);
  if (*(a1 + 168))
  {
    if (!*(a2 + 168))
    {
      goto LABEL_81;
    }
  }

  else
  {
    if (*(a1 + 160) != *(a2 + 160))
    {
      v57 = 1;
    }

    if (v57)
    {
      goto LABEL_81;
    }
  }

  v58 = type metadata accessor for QuoteDetail();
  v59 = *(v40 + 48);
  v148 = *(v58 + 60);
  v149 = v59;
  v146 = v58;
  v147 = MEMORY[0x1E6969530];
  sub_1DAA89AC0(a1 + v148, v46, &qword_1EE125280, MEMORY[0x1E6969530]);
  sub_1DAA89AC0(a2 + v148, &v149[v46], &qword_1EE125280, v147);
  v147 = *(v163 + 48);
  v148 = v163 + 48;
  if ((v147)(v46, 1, v27) == 1)
  {
    if ((v147)(&v149[v46], 1, v27) == 1)
    {
      sub_1DAAE3D34(v46, &qword_1EE125280, MEMORY[0x1E6969530]);
      goto LABEL_74;
    }

LABEL_72:
    v60 = &qword_1EE123A28;
    v61 = &qword_1EE125280;
    v62 = MEMORY[0x1E6969530];
    v63 = v46;
LABEL_80:
    sub_1DAAE4F80(v63, v60, v61, v62);
    goto LABEL_81;
  }

  sub_1DAA89AC0(v46, v38, &qword_1EE125280, MEMORY[0x1E6969530]);
  if ((v147)(&v149[v46], 1, v27) == 1)
  {
    (*(v163 + 8))(v38, v27);
    goto LABEL_72;
  }

  (*(v163 + 32))(v30, &v149[v46], v27);
  sub_1DAA5D490(&qword_1EE123A40, MEMORY[0x1E6969530]);
  v144 = sub_1DACB9264();
  v64 = *(v163 + 8);
  v145 = v163 + 8;
  v149 = v64;
  (v64)(v30, v27);
  (v149)(v38, v27);
  sub_1DAAE3D34(v46, &qword_1EE125280, MEMORY[0x1E6969530]);
  if ((v144 & 1) == 0)
  {
    goto LABEL_81;
  }

LABEL_74:
  v65 = v146[16];
  v66 = *(v40 + 48);
  v67 = MEMORY[0x1E6969530];
  sub_1DAA89AC0(a1 + v65, v44, &qword_1EE125280, MEMORY[0x1E6969530]);
  sub_1DAA89AC0(a2 + v65, &v66[v44], &qword_1EE125280, v67);
  v68 = v147;
  if ((v147)(v44, 1, v27) == 1)
  {
    if ((v68)(&v66[v44], 1, v27) == 1)
    {
      sub_1DAAE3D34(v44, &qword_1EE125280, MEMORY[0x1E6969530]);
      goto LABEL_84;
    }

    goto LABEL_79;
  }

  sub_1DAA89AC0(v44, v36, &qword_1EE125280, MEMORY[0x1E6969530]);
  v149 = v66;
  if ((v68)(&v66[v44], 1, v27) == 1)
  {
    (*(v163 + 8))(v36, v27);
LABEL_79:
    v60 = &qword_1EE123A28;
    v61 = &qword_1EE125280;
    v62 = MEMORY[0x1E6969530];
    v63 = v44;
    goto LABEL_80;
  }

  v71 = v163;
  (*(v163 + 32))(v30, &v149[v44], v27);
  sub_1DAA5D490(&qword_1EE123A40, MEMORY[0x1E6969530]);
  v72 = sub_1DACB9264();
  v73 = *(v71 + 8);
  v73(v30, v27);
  v73(v36, v27);
  sub_1DAAE3D34(v44, &qword_1EE125280, MEMORY[0x1E6969530]);
  if ((v72 & 1) == 0)
  {
    goto LABEL_81;
  }

LABEL_84:
  v74 = v146[17];
  v75 = (a1 + v74);
  v76 = *(a1 + v74 + 8);
  v77 = (a2 + v74);
  v78 = v77[1];
  if (v76)
  {
    if (!v78 || (*v75 != *v77 || v76 != v78) && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_81;
    }
  }

  else if (v78)
  {
    goto LABEL_81;
  }

  v79 = v146[18];
  v80 = *(v159 + 48);
  v81 = MEMORY[0x1E6968FB0];
  v82 = v161;
  sub_1DAA89AC0(a1 + v79, v161, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  sub_1DAA89AC0(a2 + v79, &v82[v80], &qword_1EE1263D0, v81);
  v83 = *(v160 + 48);
  if (v83(v82, 1, v162) == 1)
  {
    if (v83(&v161[v80], 1, v162) == 1)
    {
      sub_1DAAE3D34(v161, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
      goto LABEL_98;
    }

    goto LABEL_96;
  }

  v84 = v161;
  sub_1DAA89AC0(v161, v21, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  if (v83(&v84[v80], 1, v162) == 1)
  {
    (*(v160 + 8))(v21, v162);
LABEL_96:
    v60 = &qword_1EE1252A0;
    v61 = &qword_1EE1263D0;
    v62 = MEMORY[0x1E6968FB0];
    v63 = v161;
    goto LABEL_80;
  }

  v85 = v160;
  v86 = v154;
  v87 = v162;
  (*(v160 + 32))(v154, &v161[v80], v162);
  sub_1DAA5D490(&qword_1EE1252B0, MEMORY[0x1E6968FB0]);
  v88 = sub_1DACB9264();
  v89 = *(v85 + 8);
  v89(v86, v87);
  v89(v21, v87);
  sub_1DAAE3D34(v161, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  if ((v88 & 1) == 0)
  {
    goto LABEL_81;
  }

LABEL_98:
  v90 = v146[19];
  v91 = v158;
  v92 = *(v159 + 48);
  v93 = MEMORY[0x1E6968FB0];
  sub_1DAA89AC0(a1 + v90, v158, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  sub_1DAA89AC0(a2 + v90, &v91[v92], &qword_1EE1263D0, v93);
  if (v83(v91, 1, v162) == 1)
  {
    if (v83(&v158[v92], 1, v162) == 1)
    {
      sub_1DAAE3D34(v158, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
      goto LABEL_105;
    }

    goto LABEL_103;
  }

  v94 = v158;
  sub_1DAA89AC0(v158, v156, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  if (v83(&v94[v92], 1, v162) == 1)
  {
    (*(v160 + 8))(v156, v162);
LABEL_103:
    v60 = &qword_1EE1252A0;
    v61 = &qword_1EE1263D0;
    v62 = MEMORY[0x1E6968FB0];
    v63 = v158;
    goto LABEL_80;
  }

  v95 = v160;
  v96 = v158;
  v97 = &v158[v92];
  v98 = v154;
  v99 = v162;
  (*(v160 + 32))(v154, v97, v162);
  sub_1DAA5D490(&qword_1EE1252B0, MEMORY[0x1E6968FB0]);
  v100 = v156;
  v101 = sub_1DACB9264();
  v102 = *(v95 + 8);
  v102(v98, v99);
  v102(v100, v99);
  sub_1DAAE3D34(v96, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  if ((v101 & 1) == 0)
  {
    goto LABEL_81;
  }

LABEL_105:
  v103 = v146[20];
  v104 = *(v151 + 48);
  v105 = MEMORY[0x1E6969BC0];
  v106 = v157;
  sub_1DAA89AC0(a1 + v103, v157, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
  sub_1DAA89AC0(a2 + v103, &v106[v104], &qword_1EE1239E8, v105);
  v107 = *(v153 + 48);
  if (v107(v106, 1, v155) != 1)
  {
    v108 = v157;
    sub_1DAA89AC0(v157, v152, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
    if (v107(&v108[v104], 1, v155) != 1)
    {
      v109 = v153;
      v110 = v157;
      v111 = &v157[v104];
      v112 = v150;
      v113 = v155;
      (*(v153 + 32))(v150, v111, v155);
      sub_1DAA5D490(&qword_1ECBE6B50, MEMORY[0x1E6969BC0]);
      v114 = v152;
      v115 = sub_1DACB9264();
      v116 = *(v109 + 8);
      v116(v112, v113);
      v116(v114, v113);
      sub_1DAAE3D34(v110, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
      if ((v115 & 1) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_112;
    }

    (*(v153 + 8))(v152, v155);
    goto LABEL_110;
  }

  if (v107(&v157[v104], 1, v155) != 1)
  {
LABEL_110:
    v60 = &qword_1EE11F0C8;
    v61 = &qword_1EE1239E8;
    v62 = MEMORY[0x1E6969BC0];
    v63 = v157;
    goto LABEL_80;
  }

  sub_1DAAE3D34(v157, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
LABEL_112:
  v117 = v146[21];
  v118 = (a1 + v117);
  v119 = *(a1 + v117 + 8);
  v120 = (a2 + v117);
  v121 = v120[1];
  if (v119)
  {
    if (!v121 || (*v118 != *v120 || v119 != v121) && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_81;
    }
  }

  else if (v121)
  {
    goto LABEL_81;
  }

  v122 = v146[22];
  v123 = (a1 + v122);
  v124 = *(a1 + v122 + 8);
  v125 = (a2 + v122);
  v126 = v125[1];
  if (v124)
  {
    if (!v126 || (*v123 != *v125 || v124 != v126) && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_81;
    }
  }

  else if (v126)
  {
    goto LABEL_81;
  }

  v127 = v146[23];
  v128 = (a1 + v127);
  v129 = *(a1 + v127 + 8);
  v130 = (a2 + v127);
  v131 = v130[1];
  if (v129)
  {
    if (!v131 || (*v128 != *v130 || v129 != v131) && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_81;
    }
  }

  else if (v131)
  {
    goto LABEL_81;
  }

  v132 = v146[24];
  v133 = (a1 + v132);
  v134 = *(a1 + v132 + 8);
  v135 = (a2 + v132);
  v136 = v135[1];
  if (v134)
  {
    if (!v136 || (*v133 != *v135 || v134 != v136) && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_81;
    }
  }

  else if (v136)
  {
    goto LABEL_81;
  }

  v137 = v146[25];
  v138 = (a1 + v137);
  v139 = *(a1 + v137 + 8);
  v140 = (a2 + v137);
  v141 = v140[1];
  if (v139)
  {
    if (!v141 || (*v138 != *v140 || v139 != v141) && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_81;
    }
  }

  else if (v141)
  {
    goto LABEL_81;
  }

  if (sub_1DAC3D734(*(a1 + v146[26]), *(a2 + v146[26])) & 1) != 0 && (sub_1DAC3D734(*(a1 + v146[27]), *(a2 + v146[27])))
  {
    v142 = v146[28];
    v69 = sub_1DACB7C64();
    return v69 & 1;
  }

LABEL_81:
  v69 = 0;
  return v69 & 1;
}

unint64_t sub_1DAAE3C38()
{
  result = qword_1EE123900;
  if (!qword_1EE123900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123900);
  }

  return result;
}

unint64_t sub_1DAAE3C8C()
{
  result = qword_1EE123910;
  if (!qword_1EE123910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123910);
  }

  return result;
}

unint64_t sub_1DAAE3CE0()
{
  result = qword_1EE123920;
  if (!qword_1EE123920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123920);
  }

  return result;
}

uint64_t sub_1DAAE3D34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1DAA49A38(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAAE3D90(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA49984(255, &qword_1EE11FBA0, &type metadata for FundHolding, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAAE3E20()
{
  result = qword_1EE123908;
  if (!qword_1EE123908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123908);
  }

  return result;
}

uint64_t sub_1DAAE3E74(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA49984(255, &qword_1EE11FBB8, &type metadata for FundSector, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAAE3F04()
{
  result = qword_1EE123918;
  if (!qword_1EE123918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123918);
  }

  return result;
}

uint64_t sub_1DAAE3F58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuoteDetail();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAAE3FBC(uint64_t a1)
{
  v2 = type metadata accessor for QuoteDetail();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAAE4018()
{
  result = qword_1ECBE6AF0;
  if (!qword_1ECBE6AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6AF0);
  }

  return result;
}

unint64_t sub_1DAAE406C()
{
  result = qword_1ECBE6B08;
  if (!qword_1ECBE6B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6B08);
  }

  return result;
}

void sub_1DAAE40C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for SDSNewsResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SDSNewsResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for QuoteDetail.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for QuoteDetail.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DAAE43FC()
{
  result = qword_1ECBE6B18;
  if (!qword_1ECBE6B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6B18);
  }

  return result;
}

unint64_t sub_1DAAE4454()
{
  result = qword_1ECBE6B20;
  if (!qword_1ECBE6B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6B20);
  }

  return result;
}

unint64_t sub_1DAAE44AC()
{
  result = qword_1ECBE6B28;
  if (!qword_1ECBE6B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6B28);
  }

  return result;
}

unint64_t sub_1DAAE4504()
{
  result = qword_1ECBE6B30;
  if (!qword_1ECBE6B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6B30);
  }

  return result;
}

unint64_t sub_1DAAE455C()
{
  result = qword_1ECBE6B38;
  if (!qword_1ECBE6B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6B38);
  }

  return result;
}

unint64_t sub_1DAAE45B4()
{
  result = qword_1ECBE6B40;
  if (!qword_1ECBE6B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6B40);
  }

  return result;
}

unint64_t sub_1DAAE460C()
{
  result = qword_1ECBE6B48;
  if (!qword_1ECBE6B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6B48);
  }

  return result;
}

unint64_t sub_1DAAE4664()
{
  result = qword_1EE1238F0;
  if (!qword_1EE1238F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1238F0);
  }

  return result;
}

unint64_t sub_1DAAE46BC()
{
  result = qword_1EE1238F8;
  if (!qword_1EE1238F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1238F8);
  }

  return result;
}

uint64_t sub_1DAAE4710(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x506E65704F796164 && a2 == 0xEC00000065636972;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7250776F4C796164 && a2 == 0xEB00000000656369 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5068676948796164 && a2 == 0xEC00000065636972 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x50776F4C72616579 && a2 == 0xEC00000065636972 || (sub_1DACBA174() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6867694872616579 && a2 == 0xED00006563697250 || (sub_1DACBA174() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646E656469766964 && a2 == 0xED0000646C656959 || (sub_1DACBA174() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D756C6F76 && a2 == 0xE600000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5665676172657661 && a2 == 0xED0000656D756C6FLL || (sub_1DACBA174() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DACE1B20 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1635018082 && a2 == 0xE400000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DACE1A60 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DACE1B60 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x73676E696E726165 && a2 == 0xEF65746144646E45 || (sub_1DACBA174() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (sub_1DACBA174() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x55736C6961746564 && a2 == 0xEA00000000004C52 || (sub_1DACBA174() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DACE1AD0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x695474656B72616DLL && a2 == 0xEE00656E6F5A656DLL || (sub_1DACBA174() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x65737341646E7566 && a2 == 0xEE007373616C4374 || (sub_1DACBA174() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x65746143646E7566 && a2 == 0xEC00000079726F67 || (sub_1DACBA174() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x75636F46646E7566 && a2 == 0xE900000000000073 || (sub_1DACBA174() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6863694E646E7566 && a2 == 0xE900000000000065 || (sub_1DACBA174() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x69676552646E7566 && a2 == 0xEA00000000006E6FLL || (sub_1DACBA174() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x48706F54646E7566 && a2 == 0xEF73676E69646C6FLL || (sub_1DACBA174() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x74636553646E7566 && a2 == 0xEB0000000073726FLL || (sub_1DACBA174() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DACE3AF0 == a2)
  {

    return 24;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 24;
    }

    else
    {
      return 25;
    }
  }
}

void sub_1DAAE4F1C(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1DAA49A38(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1DAAE4F80(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1DAAE4F1C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t type metadata accessor for YahooChartOperation()
{
  result = qword_1EE126408;
  if (!qword_1EE126408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAAE5060()
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

uint64_t sub_1DAAE5154()
{
  sub_1DACBA284();
  MEMORY[0x1E1277D70](0);
  return sub_1DACBA2C4();
}

uint64_t sub_1DAAE5198()
{
  sub_1DACBA284();
  MEMORY[0x1E1277D70](0);
  return sub_1DACBA2C4();
}

void sub_1DAAE51D8(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v4 = sub_1DACB8204();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DACB7CC4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DACB7AB4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v74 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAAE6300(0, &qword_1EE123B40, sub_1DAA4BD7C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC2610;
  *(inited + 32) = 0x72656B636974;
  *(inited + 40) = 0xE600000000000000;
  v18 = *&v2[qword_1EE1263E0 + 8];
  *(inited + 48) = *&v2[qword_1EE1263E0];
  *(inited + 56) = v18;
  *(inited + 64) = 0x65676E6172;
  *(inited + 72) = 0xE500000000000000;
  v19 = v2[qword_1EE1263E8];
  v72 = a1;
  v79 = v4;
  v71 = v5;
  v78 = v8;
  v77 = v9;
  v76 = v13;
  v70 = v14;
  v69 = qword_1EE1263E8;
  if (v19 <= 4)
  {
    if (v19 <= 1)
    {
      if (v19)
      {
        v20 = 0xE200000000000000;
        v21 = 25653;
      }

      else
      {
        v20 = 0xE200000000000000;
        v21 = 25649;
      }
    }

    else if (v19 == 2)
    {
      v20 = 0xE200000000000000;
      v21 = 27953;
    }

    else if (v19 == 3)
    {
      v20 = 0xE200000000000000;
      v21 = 27955;
    }

    else
    {
      v20 = 0xE200000000000000;
      v21 = 27958;
    }
  }

  else if (v19 > 7)
  {
    if (v19 == 8)
    {
      v20 = 0xE200000000000000;
      v21 = 31029;
    }

    else if (v19 == 9)
    {
      v20 = 0xE300000000000000;
      v21 = 7942193;
    }

    else
    {
      v20 = 0xE300000000000000;
      v21 = 7889261;
    }
  }

  else if (v19 == 5)
  {
    v20 = 0xE300000000000000;
    v21 = 6583417;
  }

  else if (v19 == 6)
  {
    v20 = 0xE200000000000000;
    v21 = 31025;
  }

  else
  {
    v20 = 0xE200000000000000;
    v21 = 31026;
  }

  v22 = 0x73752D6E65;
  *(inited + 80) = v21;
  *(inited + 88) = v20;
  *(inited + 96) = 1701869940;
  *(inited + 104) = 0xE400000000000000;
  *(inited + 112) = 0x65746F7571;
  *(inited + 120) = 0xE500000000000000;
  v23 = inited;
  sub_1DACB71E4();
  v67 = sub_1DAA4BDD8(v23);
  swift_setDeallocating();
  sub_1DAA4BD7C();
  swift_arrayDestroy();
  v24 = __swift_project_boxed_opaque_existential_1(&v2[qword_1EE1263F8], *&v2[qword_1EE1263F8 + 24]);
  v25 = objc_opt_self();
  v26 = [v25 sharedPreferences];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 stocksLanguageCode];
    if (v28)
    {
      v29 = v28;
      v22 = sub_1DACB9324();
      v68 = v30;
    }

    else
    {
      v68 = 0xE500000000000000;
    }

    v31 = [v27 stocksCountryCode];
    if (v31)
    {
      v32 = v31;
      v65 = sub_1DACB9324();
      v66 = v33;

      goto LABEL_30;
    }
  }

  else
  {
    v68 = 0xE500000000000000;
  }

  v66 = 0xE200000000000000;
  v65 = 21333;
LABEL_30:
  v34 = qword_1ECBE6B58;
  v35 = qword_1EE126400;
  v36 = *v24;
  v37 = [v25 sharedPreferences];
  if (v37)
  {
    v38 = v37;
    v64 = v22;
    v39 = [v37 stocksYQLBaseURL];

    if (v39)
    {
      v40 = v74;
      sub_1DACB7A44();

      sub_1DAA4D678(v36 + 16, v81);
      v60 = *(v10 + 16);
      v60(v75, &v2[v34], v77);
      v41 = v71;
      v63 = v2;
      v62 = *(v71 + 16);
      v62(v78, &v2[v35], v79);
      sub_1DAAE6240();
      v61 = v42;
      v43 = objc_allocWithZone(v42);
      v44 = MEMORY[0x1E69E7D40];
      *(v43 + *((*MEMORY[0x1E69E7D40] & *v43) + qword_1EE13E4B0 + 16)) = 1;
      v45 = v70;
      (*(v70 + 16))(v43 + *((*v44 & *v43) + qword_1EE13E4B0 + 24), v40, v76);
      v46 = v43 + *((*v44 & *v43) + qword_1EE13E4B0 + 32);
      strcpy(v46, "/applewf/chart");
      v46[15] = -18;
      *(v43 + *((*v44 & *v43) + qword_1EE13E4B0 + 40)) = v67;
      v47 = (v43 + *((*v44 & *v43) + qword_1EE13E4B0 + 48));
      v48 = v68;
      *v47 = v64;
      v47[1] = v48;
      v49 = v66;
      v47[2] = v65;
      v47[3] = v49;
      sub_1DAA4D678(v81, v43 + *((*v44 & *v43) + qword_1EE13E4B0 + 56));
      v50 = v75;
      v51 = v77;
      v60(v43 + *((*v44 & *v43) + qword_1EE13E4B0 + 64), v75, v77);
      v52 = v78;
      v53 = v79;
      v62(v43 + *((*v44 & *v43) + qword_1EE13E4B0 + 72), v78, v79);
      v80.receiver = v43;
      v80.super_class = v61;
      v54 = objc_msgSendSuper2(&v80, sel_init);
      (*(v41 + 8))(v52, v53);
      (*(v10 + 8))(v50, v51);
      __swift_destroy_boxed_opaque_existential_1(v81);
      (*(v45 + 8))(v74, v76);
      v55 = v63;
      LOBYTE(v43) = *(v63 + v69);
      v56 = swift_allocObject();
      *(v56 + 16) = v55;
      *(v56 + 24) = v43;
      v57 = v73;
      *(v56 + 32) = v72;
      *(v56 + 40) = v57;
      v58 = v54;
      v59 = v55;
      sub_1DACB71F4();
      sub_1DACB8304();

      [v58 start];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1DAAE5BAC(uint64_t a1, uint64_t a2, int a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v36 = a4;
  sub_1DAAE6300(0, &qword_1EE11D458, type metadata accessor for Chart, MEMORY[0x1E69D6AF8]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v35 - v11);
  sub_1DAAE6300(0, qword_1EE120360, type metadata accessor for Chart, MEMORY[0x1E69E6720]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v35 - v15;
  v17 = type metadata accessor for Chart(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 32))
  {
    v22 = *a1;
    sub_1DACB9904();
    sub_1DAAE6300(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DACC1D20;
    swift_getErrorValue();
    v24 = sub_1DACBA224();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1DAA443C8();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1DAA41DCC();
    v27 = sub_1DACB9AD4();
    sub_1DACB8C64();

    *v12 = v22;
    swift_storeEnumTagMultiPayload();
    v28 = v22;
    v29 = v12;
LABEL_5:
    v36(v29);
    return sub_1DAAE6364(v12, &qword_1EE11D458, MEMORY[0x1E69D6AF8]);
  }

  v35 = a5;
  v30 = *(a1 + 8);
  v31 = *__swift_project_boxed_opaque_existential_1((a2 + qword_1EE1263F0), *(a2 + qword_1EE1263F0 + 24));
  v37 = sub_1DAB681FC(MEMORY[0x1E69E7CC0]);
  sub_1DACB71F4();
  sub_1DABD0578(v30, a3, &v37);

  v32 = sub_1DACB71E4();
  sub_1DAB859D4(v32, v16);
  swift_bridgeObjectRelease_n();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1DAAE6364(v16, qword_1EE120360, MEMORY[0x1E69E6720]);
    sub_1DACB9904();
    sub_1DAA41DCC();
    v33 = sub_1DACB9AD4();
    sub_1DACB8C64();

    sub_1DAAE63D8();
    *v12 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v29 = v12;
    goto LABEL_5;
  }

  sub_1DAA86044(v16, v21);
  sub_1DAAE642C(v21, v12);
  swift_storeEnumTagMultiPayload();
  v36(v12);
  sub_1DAAE6364(v12, &qword_1EE11D458, MEMORY[0x1E69D6AF8]);
  return sub_1DAAE6490(v21);
}

uint64_t sub_1DAAE6078()
{
  v1 = *(v0 + qword_1EE1263E0 + 8);

  v2 = qword_1ECBE6B58;
  v3 = sub_1DACB7CC4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EE1263F0));
  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EE1263F8));
  v4 = qword_1EE126400;
  v5 = sub_1DACB8204();
  v6 = *(*(v5 - 8) + 8);

  return v6(v0 + v4, v5);
}

uint64_t sub_1DAAE6154(uint64_t a1)
{
  v2 = *(a1 + qword_1EE1263E0 + 8);

  v3 = qword_1ECBE6B58;
  v4 = sub_1DACB7CC4();
  (*(*(v4 - 8) + 8))(a1 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1((a1 + qword_1EE1263F0));
  __swift_destroy_boxed_opaque_existential_1((a1 + qword_1EE1263F8));
  v5 = qword_1EE126400;
  v6 = sub_1DACB8204();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

void sub_1DAAE6240()
{
  if (!qword_1EE126440)
  {
    sub_1DAAE629C();
    v0 = type metadata accessor for YahooBaseOperation();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE126440);
    }
  }
}

unint64_t sub_1DAAE629C()
{
  result = qword_1EE121B10;
  if (!qword_1EE121B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B10);
  }

  return result;
}

void sub_1DAAE6300(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAAE6364(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_1DAAE6300(0, a2, type metadata accessor for Chart, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1DAAE63D8()
{
  result = qword_1ECBE6B60;
  if (!qword_1ECBE6B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6B60);
  }

  return result;
}

uint64_t sub_1DAAE642C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Chart(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAAE6490(uint64_t a1)
{
  v2 = type metadata accessor for Chart(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAAE6500()
{
  result = qword_1ECBE6B68;
  if (!qword_1ECBE6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6B68);
  }

  return result;
}

uint64_t type metadata accessor for SDSQuoteDetailOperation()
{
  result = qword_1EE1210F8;
  if (!qword_1EE1210F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAAE65A0()
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

void sub_1DAAE668C(uint64_t a1, uint64_t a2)
{
  v19 = *(v2 + qword_1EE121108);
  sub_1DACB71E4();
  sub_1DACA8764(&v19);
  sub_1DAA6144C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DAAE81E4(&qword_1EE11FA38);
  v5 = sub_1DACB9864();

  v6 = *(v5 + 16);
  if (v6)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1DACB9D64();
    sub_1DAAE85F8(0, &qword_1EE11FE78, sub_1DAAE8134, MEMORY[0x1E69D6B18]);
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
  sub_1DAAE8134();
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

uint64_t sub_1DAAE69BC(uint64_t result, void (*a2)(uint64_t, void))
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
      type metadata accessor for QuoteDetail();
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

void sub_1DAAE6ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = __swift_project_boxed_opaque_existential_1(&a5[qword_1EE121120], *&a5[qword_1EE121120 + 24]);
  sub_1DAAE85F8(0, &qword_1EE123B40, sub_1DAA4BD7C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 32) = 0x74655361746164;
  *(inited + 16) = xmmword_1DACC1D40;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = 0x65746F7571;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 64) = 0x6C6F626D7973;
  *(inited + 72) = 0xE600000000000000;
  sub_1DAA6144C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DAAE81E4(&qword_1EE123E90);
  sub_1DACB71F4();
  *(inited + 80) = sub_1DACB9214();
  *(inited + 88) = v14;
  v15 = sub_1DAA4BDD8(inited);
  swift_setDeallocating();
  sub_1DAA4BD7C();
  swift_arrayDestroy();
  v16 = *v12;
  v17 = sub_1DABF30CC(2, v15, &a5[qword_1EE121110], &a5[qword_1EE121118]);

  v18 = swift_allocObject();
  *(v18 + 16) = a6;
  v19 = (v17 + *((*MEMORY[0x1E69E7D40] & *v17) + qword_1EE13E480 + 16));
  v20 = *v19;
  v21 = v19[1];
  *v19 = sub_1DAAE824C;
  v19[1] = v18;
  sub_1DACB71E4();
  sub_1DAA4F910(v20);
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v22[4] = a5;
  v22[5] = sub_1DAA7390C;
  v22[6] = v11;
  v23 = v17;
  sub_1DACB71F4();
  v24 = a5;
  sub_1DACB8304();

  [v23 start];
}

uint64_t sub_1DAAE6DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a3;
  sub_1DAAD8184();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69D6AF8];
  sub_1DAAE85F8(0, &qword_1EE11FEE0, sub_1DAAD8184, MEMORY[0x1E69D6AF8]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  sub_1DAAE86D4(a2, &v30 - v14, &qword_1EE11FEE0, sub_1DAAD8184, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DAAE87C4(v15, &qword_1EE11FEE0, sub_1DAAD8184, MEMORY[0x1E69D6AF8]);
    sub_1DAA8C2EC();
    v17 = (a4 + *(v16 + 48));
    v18 = sub_1DACB8754();
    (*(*(v18 - 8) + 16))(a4, a1, v18);
    *v17 = *(v31 + 16);
    v17[1] = 0;
    v19 = MEMORY[0x1E69E7CC0];
    v17[2] = MEMORY[0x1E69E7CC0];
    v17[3] = v19;
    type metadata accessor for NetworkEvent();
    v17[4] = 0;
    v17[5] = 0;
  }

  else
  {
    sub_1DAAE82AC(v15, v10);
    v20 = sub_1DACB8754();
    (*(*(v20 - 8) + 16))(a4, a1, v20);
    v21 = *(v31 + 16);
    sub_1DAA6144C(0, &qword_1EE11FF88, &type metadata for SDSQuoteResponse, MEMORY[0x1E69D68E0]);
    sub_1DACB8794();
    v22 = v32;
    sub_1DAA75E60(v33, v34);
    v23 = *(v22 + 16);

    sub_1DACB8794();

    v24 = v34;
    if (v34)
    {
      v25 = v33;
    }

    else
    {
      v25 = 0;
    }

    sub_1DAA8C2EC();
    v27 = (a4 + *(v26 + 48));
    sub_1DAAE84EC(v10);
    *v27 = v21;
    v27[1] = v23;
    v28 = MEMORY[0x1E69E7CC0];
    v27[2] = MEMORY[0x1E69E7CC0];
    v27[3] = v28;
    v27[4] = v25;
    v27[5] = v24;
    type metadata accessor for NetworkEvent();
  }

  return swift_storeEnumTagMultiPayload();
}

void sub_1DAAE70F4(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v22[3] = a6;
  v23 = a5;
  sub_1DAAD8184();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E69D6AF8];
  sub_1DAAE85F8(0, &qword_1EE11FEE0, sub_1DAAD8184, MEMORY[0x1E69D6AF8]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (v22 - v16);
  sub_1DAAE86D4(a1, v22 - v16, &qword_1EE11FEE0, sub_1DAAD8184, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    a2(*v17);
  }

  else
  {
    v22[1] = a3;
    v22[2] = a2;
    sub_1DAAE82AC(v17, v12);
    sub_1DAA6144C(0, &qword_1EE11FF88, &type metadata for SDSQuoteResponse, MEMORY[0x1E69D68E0]);
    sub_1DACB8794();
    v19 = v25;
    v20 = v26;
    v21 = sub_1DAAE8414(v24);

    sub_1DAA75E60(v19, v20);
    v23(v21);

    sub_1DAAE84EC(v12);
  }
}

uint64_t sub_1DAAE7328(uint64_t a1, void *a2)
{
  v112 = a1;
  v3 = MEMORY[0x1E69E6720];
  sub_1DAAE85F8(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v75[-v6];
  sub_1DAAE85F8(0, &qword_1EE125280, MEMORY[0x1E6969530], v3);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v75[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v116 = &v75[-v13];
  sub_1DAAE85F8(0, qword_1EE123840, type metadata accessor for QuoteDetail, v3);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v75[-v16];
  sub_1DAAE85F8(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], v3);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v114 = &v75[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x1EEE9AC00](v20);
  v113 = &v75[-v23];
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v75[-v25];
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v75[-v27];
  memcpy(v115, a2 + 13, 0x248uLL);
  v29 = a2[90];
  v30 = a2[91];
  if (sub_1DAAE865C(v115) == 1)
  {
    sub_1DAAE8680();
    swift_allocError();
    *v31 = 0;
    v31[1] = 0;
    return swift_willThrow();
  }

  sub_1DAAE7B74(v115[20], v115[21], v28);
  result = sub_1DAAE7B74(v115[35], v115[36], v26);
  if (v115[46])
  {
    v33 = 0;
  }

  else
  {
    v33 = v115[45];
    if ((v115[45] & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  if ((v115[9] & 1) == 0)
  {
    v34 = v115[8];
    if ((v115[8] & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
    return result;
  }

  v34 = 0;
LABEL_9:
  v102 = v34;
  v103 = LOBYTE(v115[9]);
  v104 = v33;
  v105 = LOBYTE(v115[46]);
  v111 = v30;
  v106 = v29;
  v35 = sub_1DACB7CC4();
  v36 = v28;
  v37 = *(*(v35 - 8) + 56);
  v37(v116, 1, 1, v35);
  v107 = v12;
  v37(v12, 1, 1, v35);
  v38 = MEMORY[0x1E6968FB0];
  v39 = MEMORY[0x1E69E6720];
  v108 = v36;
  sub_1DAAE86D4(v36, v113, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v109 = v26;
  sub_1DAAE86D4(v26, v114, &qword_1EE1263D0, v38, v39);
  v40 = sub_1DACB7F54();
  v41 = *(*(v40 - 8) + 56);
  v110 = v7;
  v41(v7, 1, 1, v40);
  v42 = v115[67];
  v43 = v115[68];
  if (v115[67])
  {
    sub_1DACB71E4();
  }

  v44 = v115[13];
  v89 = v115[12];
  v92 = v115[57];
  v45 = v115[58];
  v94 = v115[59];
  v46 = v115[60];
  v96 = v115[61];
  v47 = v115[62];
  v98 = v115[63];
  v48 = v115[64];
  v100 = v115[65];
  v49 = v115[66];
  sub_1DACB71E4();
  sub_1DACB71E4();
  v90 = v44;
  sub_1DACB71E4();
  v93 = v45;
  sub_1DACB71E4();
  v95 = v46;
  sub_1DACB71E4();
  v97 = v47;
  sub_1DACB71E4();
  sub_1DACB71E4();
  v50 = sub_1DAAE8310(v42, sub_1DAB25C08);

  v101 = v49;
  v99 = v48;
  v91 = v50;
  if (v42)
  {
    sub_1DACB71E4();
  }

  else
  {
    v43 = 0;
  }

  v51 = v115[18];
  v52 = v115[19];
  v53 = v115[16];
  v54 = v115[17];
  v55 = v115[15];
  v80 = v115[49];
  v81 = v115[14];
  v78 = LOBYTE(v115[48]);
  v79 = LOBYTE(v115[50]);
  v77 = v115[22];
  v76 = LOBYTE(v115[23]);
  v56 = v115[47];
  v87 = v115[43];
  v86 = LOBYTE(v115[44]);
  v85 = v115[10];
  v84 = LOBYTE(v115[11]);
  v83 = v115[24];
  v82 = LOBYTE(v115[25]);
  v88 = sub_1DAAE8310(v43, sub_1DAB25C38);

  v57 = type metadata accessor for QuoteDetail();
  v58 = &v17[v57[28]];
  sub_1DACB7CB4();
  *v17 = v51;
  v17[8] = v52;
  *(v17 + 2) = v53;
  v17[24] = v54;
  v59 = v80;
  *(v17 + 4) = v81;
  v17[40] = v55;
  *(v17 + 6) = v59;
  LOBYTE(v59) = v78;
  v17[56] = v79;
  *(v17 + 8) = v56;
  v17[72] = v59;
  *(v17 + 10) = v77;
  v17[88] = v76;
  *(v17 + 12) = v104;
  v17[104] = v105;
  *(v17 + 14) = v102;
  v17[120] = v103;
  *(v17 + 16) = v87;
  v17[136] = v86;
  *(v17 + 18) = v85;
  v17[152] = v84;
  *(v17 + 20) = v83;
  v17[168] = v82;
  v60 = MEMORY[0x1E6969530];
  sub_1DAAE8744(v116, &v17[v57[15]], &qword_1EE125280, MEMORY[0x1E6969530]);
  sub_1DAAE8744(v107, &v17[v57[16]], &qword_1EE125280, v60);
  v61 = &v17[v57[17]];
  v62 = v90;
  *v61 = v89;
  v61[1] = v62;
  v63 = MEMORY[0x1E6968FB0];
  sub_1DAAE8744(v113, &v17[v57[18]], &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  sub_1DAAE8744(v114, &v17[v57[19]], &qword_1EE1263D0, v63);
  sub_1DAAE8744(v110, &v17[v57[20]], &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
  v64 = &v17[v57[21]];
  v65 = v93;
  *v64 = v92;
  v64[1] = v65;
  v66 = &v17[v57[22]];
  v67 = v95;
  *v66 = v94;
  v66[1] = v67;
  v68 = &v17[v57[23]];
  v69 = v97;
  *v68 = v96;
  v68[1] = v69;
  v70 = &v17[v57[24]];
  v71 = v99;
  *v70 = v98;
  v70[1] = v71;
  v72 = &v17[v57[25]];
  v73 = v101;
  *v72 = v100;
  v72[1] = v73;
  *&v17[v57[26]] = v91;
  *&v17[v57[27]] = v88;
  (*(*(v57 - 1) + 56))(v17, 0, 1, v57);
  sub_1DAB594A8(v17, v106, v111);
  v74 = MEMORY[0x1E69E6720];
  sub_1DAAE87C4(v109, &qword_1EE1263D0, v63, MEMORY[0x1E69E6720]);
  return sub_1DAAE87C4(v108, &qword_1EE1263D0, v63, v74);
}

uint64_t sub_1DAAE7B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DAAE85F8(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v23 - v8;
  v10 = sub_1DACB7664();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23[0] = a1;
    v23[1] = a2;
    sub_1DACB7604();
    sub_1DAA642D8();
    sub_1DACB9B44();
    v16 = v15;
    (*(v11 + 8))(v14, v10);
    if (v16)
    {
      sub_1DACB7A94();

      v17 = sub_1DACB7AB4();
      v18 = *(v17 - 8);
      if ((*(v18 + 48))(v9, 1, v17) == 1)
      {
        sub_1DAAE87C4(v9, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
        return (*(v18 + 56))(a3, 1, 1, v17);
      }

      else
      {
        (*(v18 + 32))(a3, v9, v17);
        return (*(v18 + 56))(a3, 0, 1, v17);
      }
    }

    else
    {
      v22 = sub_1DACB7AB4();
      return (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
    }
  }

  else
  {
    v20 = sub_1DACB7AB4();
    v21 = *(*(v20 - 8) + 56);

    return v21(a3, 1, 1, v20);
  }
}

uint64_t sub_1DAAE7ECC()
{
  v1 = *(v0 + qword_1EE121108);

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EE121120));
  v2 = qword_1EE121110;
  v3 = sub_1DACB7CC4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = qword_1EE121118;
  v5 = sub_1DACB8204();
  v6 = *(*(v5 - 8) + 8);

  return v6(v0 + v4, v5);
}

uint64_t sub_1DAAE7F94(uint64_t a1)
{
  v2 = *(a1 + qword_1EE121108);

  __swift_destroy_boxed_opaque_existential_1((a1 + qword_1EE121120));
  v3 = qword_1EE121110;
  v4 = sub_1DACB7CC4();
  (*(*(v4 - 8) + 8))(a1 + v3, v4);
  v5 = qword_1EE121118;
  v6 = sub_1DACB8204();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t sub_1DAAE8060(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DACB71F4();
  sub_1DAAE668C(sub_1DAADF554, v4);
}

uint64_t sub_1DAAE80E8(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_1DACBA174();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

void sub_1DAAE8134()
{
  if (!qword_1EE11FCE0)
  {
    type metadata accessor for QuoteDetail();
    v0 = sub_1DACB91A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FCE0);
    }
  }
}

uint64_t sub_1DAAE81B8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, 1);
}

uint64_t sub_1DAAE81E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA6144C(255, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAAE824C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[2] = a1;
  v5[3] = v3;
  return sub_1DAC95478(sub_1DAAE8820, v5, a2);
}

uint64_t sub_1DAAE82AC(uint64_t a1, uint64_t a2)
{
  sub_1DAAD8184();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAAE8310(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t))
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    a2(0, v3, 0);
    v4 = v14;
    v6 = (a1 + 48);
    do
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v9 = *v6;
      v10 = *(v14 + 16);
      v11 = *(v14 + 24);
      sub_1DACB71E4();
      if (v10 >= v11 >> 1)
      {
        a2(v11 > 1, v10 + 1, 1);
      }

      *(v14 + 16) = v10 + 1;
      v12 = (v14 + 24 * v10);
      v12[4] = v8;
      v12[5] = v7;
      v12[6] = v9;
      v6 += 3;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1DAAE8414(uint64_t a1)
{
  result = MEMORY[0x1E69E7CC8];
  v9 = MEMORY[0x1E69E7CC8];
  v4 = *(a1 + 16);
  if (v4)
  {
    for (i = (a1 + 32); ; i += 776)
    {
      memcpy(__dst, i, sizeof(__dst));
      memcpy(__src, i, sizeof(__src));
      sub_1DAAE8548(__dst, v6);
      sub_1DAAE7328(&v9, __src);
      if (v1)
      {
        break;
      }

      memcpy(v6, __src, sizeof(v6));
      sub_1DAAE85A4(v6);
      if (!--v4)
      {
        return v9;
      }
    }

    memcpy(v6, __src, sizeof(v6));
    sub_1DAAE85A4(v6);
  }

  return result;
}

uint64_t sub_1DAAE84EC(uint64_t a1)
{
  sub_1DAAD8184();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DAAE85F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAAE865C(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_1DAAE8680()
{
  result = qword_1ECBE6B70;
  if (!qword_1ECBE6B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6B70);
  }

  return result;
}

uint64_t sub_1DAAE86D4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1DAAE85F8(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1DAAE8744(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1DAAE85F8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAAE87C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1DAAE85F8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1DAAE8840(uint64_t a1, unsigned int a2)
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

uint64_t sub_1DAAE8890(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_1DAAE88E4(void *result, int a2)
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

uint64_t sub_1DAAE891C(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_1DAAE8968@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CurrencyResponse() + 20);
  v4 = sub_1DACB7CC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CurrencyResponse()
{
  result = qword_1EE11EBC8;
  if (!qword_1EE11EBC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAAE8A30(uint64_t a1)
{
  v3 = *(type metadata accessor for CurrencyResponse() + 20);
  v4 = sub_1DACB7CC4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1DAAE8AF4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CurrencyResponse() + 24);
  v4 = sub_1DACB7CC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DAAE8B70(uint64_t a1)
{
  v3 = *(type metadata accessor for CurrencyResponse() + 24);
  v4 = sub_1DACB7CC4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1DAAE8C80(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CurrencyResponse() + 28);

  return sub_1DAAE8CC4(a1, v3);
}

uint64_t sub_1DAAE8CC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawAttributionSource(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAAE8D70()
{
  v1 = 0x69737265766E6F63;
  v2 = 0x7441656C617473;
  if (*v0 != 2)
  {
    v2 = 0x656372756F73;
  }

  if (*v0)
  {
    v1 = 0x4164657461657263;
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

uint64_t sub_1DAAE8DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAAEA684(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAAE8E1C(uint64_t a1)
{
  v2 = sub_1DAAE9180();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAAE8E58(uint64_t a1)
{
  v2 = sub_1DAAE9180();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAAE8E94(void *a1)
{
  v3 = v1;
  sub_1DAAEA0A8(0, &qword_1EE11CF58, sub_1DAAE9180, &type metadata for CurrencyResponse.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v17[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAAE9180();
  sub_1DACBA304();
  v18 = *v3;
  v17[15] = 0;
  sub_1DAAE91D4();
  sub_1DAAE9838(&qword_1EE11D170, sub_1DAAE9224);
  sub_1DACBA0E4();
  if (!v2)
  {
    v12 = type metadata accessor for CurrencyResponse();
    v13 = v12[5];
    v17[14] = 1;
    sub_1DACB7CC4();
    sub_1DAA5D4D8(&qword_1EE125288, MEMORY[0x1E6969530]);
    sub_1DACBA0E4();
    v14 = v12[6];
    v17[13] = 2;
    sub_1DACBA0E4();
    v15 = v12[7];
    v17[12] = 3;
    type metadata accessor for RawAttributionSource(0);
    sub_1DAA5D4D8(&qword_1EE11E5F0, type metadata accessor for RawAttributionSource);
    sub_1DACBA0E4();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1DAAE9180()
{
  result = qword_1EE11EBF8;
  if (!qword_1EE11EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EBF8);
  }

  return result;
}

void sub_1DAAE91D4()
{
  if (!qword_1EE11D178)
  {
    v0 = sub_1DACB9724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D178);
    }
  }
}

unint64_t sub_1DAAE9224()
{
  result = qword_1EE11E8C0;
  if (!qword_1EE11E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E8C0);
  }

  return result;
}

uint64_t sub_1DAAE9278@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = type metadata accessor for RawAttributionSource(0);
  v3 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7CC4();
  v37 = *(v5 - 8);
  v38 = v5;
  v6 = *(v37 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - v9;
  sub_1DAAEA0A8(0, &qword_1ECBE6B78, sub_1DAAE9180, &type metadata for CurrencyResponse.CodingKeys, MEMORY[0x1E69E6F48]);
  v39 = *(v11 - 8);
  v40 = v11;
  v12 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  v15 = type metadata accessor for CurrencyResponse();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAAE9180();
  v41 = v14;
  v20 = v42;
  sub_1DACBA2F4();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v18;
  v22 = v38;
  sub_1DAAE91D4();
  v46 = 0;
  sub_1DAAE9838(&qword_1ECBE6B80, sub_1DAAE98A4);
  sub_1DACB9FE4();
  v42 = v47;
  *v21 = v47;
  v45 = 1;
  v32 = sub_1DAA5D4D8(&qword_1EE123A38, MEMORY[0x1E6969530]);
  sub_1DACB9FE4();
  v23 = &v21[*(v15 + 20)];
  v30 = *(v37 + 32);
  v31 = v15;
  v30(v23, v10, v22);
  v44 = 2;
  v24 = v36;
  v32 = 0;
  sub_1DACB9FE4();
  v25 = a1;
  v26 = v21;
  v30(&v21[*(v31 + 24)], v24, v22);
  v43 = 3;
  sub_1DAA5D4D8(&qword_1ECBE6B90, type metadata accessor for RawAttributionSource);
  v27 = v35;
  sub_1DACB9FE4();
  v28 = v31;
  (*(v39 + 8))(v41, v40);
  sub_1DAAE98F8(v27, v26 + *(v28 + 28));
  sub_1DAA91E74(v26, v33, type metadata accessor for CurrencyResponse);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_1DAAE995C(v26);
}

uint64_t sub_1DAAE9838(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DAAE91D4();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAAE98A4()
{
  result = qword_1ECBE6B88;
  if (!qword_1ECBE6B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6B88);
  }

  return result;
}

uint64_t sub_1DAAE98F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawAttributionSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAAE995C(uint64_t a1)
{
  v2 = type metadata accessor for CurrencyResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAAE99E8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAAE9A18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAAE9A50()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  MEMORY[0x1E1276F20](*v0, v0[1]);
  MEMORY[0x1E1276F20](540945696, 0xE400000000000000);
  MEMORY[0x1E1276F20](v1, v2);
  MEMORY[0x1E1276F20](8250, 0xE200000000000000);
  sub_1DACB97D4();
  return 0;
}

uint64_t sub_1DAAE9AF4()
{
  v1 = 0x6563697270;
  if (*v0 == 1)
  {
    v1 = 0x79636E6572727563;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79636E6572727563;
  }
}

uint64_t sub_1DAAE9B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAAEA7F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAAE9B70(uint64_t a1)
{
  v2 = sub_1DAAE9DB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAAE9BAC(uint64_t a1)
{
  v2 = sub_1DAAE9DB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAAE9BE8(void *a1)
{
  sub_1DAAEA0A8(0, &qword_1EE11CF50, sub_1DAAE9DB0, &type metadata for CurrencyConversion.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v16 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v16[0] = v1[3];
  v16[1] = v11;
  v12 = v1[4];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAAE9DB0();
  sub_1DACBA304();
  v19 = 0;
  v14 = v16[2];
  sub_1DACBA094();
  if (!v14)
  {
    v18 = 1;
    sub_1DACBA094();
    v17 = 2;
    sub_1DACBA0B4();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1DAAE9DB0()
{
  result = qword_1EE11E8D8[0];
  if (!qword_1EE11E8D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE11E8D8);
  }

  return result;
}

uint64_t sub_1DAAE9E04@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = a2;
  sub_1DAAEA0A8(0, &qword_1ECBE6B98, sub_1DAAE9DB0, &type metadata for CurrencyConversion.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAAE9DB0();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  v12 = v25;
  v28 = 0;
  v13 = sub_1DACB9FA4();
  v15 = v14;
  v24 = v13;
  v27 = 1;
  v22 = sub_1DACB9FA4();
  v23 = v16;
  v26 = 2;
  sub_1DACB9FC4();
  v18 = v17;
  (*(v11 + 8))(v9, v5);
  v19 = v23;
  *v12 = v24;
  v12[1] = v15;
  v12[2] = v22;
  v12[3] = v19;
  v12[4] = v18;
  sub_1DACB71E4();
  sub_1DACB71E4();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1DAAEA0A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1DAAEA140()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  MEMORY[0x1E1276F20](*v0, v0[1]);
  MEMORY[0x1E1276F20](540945696, 0xE400000000000000);
  MEMORY[0x1E1276F20](v1, v2);
  MEMORY[0x1E1276F20](8250, 0xE200000000000000);
  sub_1DACB97D4();
  return 0;
}

void sub_1DAAEA20C()
{
  sub_1DAAE91D4();
  if (v0 <= 0x3F)
  {
    sub_1DACB7CC4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for RawAttributionSource(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DAAEA2BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t getEnumTagSinglePayload for CurrencyResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CurrencyResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DAAEA478()
{
  result = qword_1ECBE6BA0;
  if (!qword_1ECBE6BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6BA0);
  }

  return result;
}

unint64_t sub_1DAAEA4D0()
{
  result = qword_1ECBE6BA8;
  if (!qword_1ECBE6BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6BA8);
  }

  return result;
}

unint64_t sub_1DAAEA528()
{
  result = qword_1EE11E8C8;
  if (!qword_1EE11E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E8C8);
  }

  return result;
}

unint64_t sub_1DAAEA580()
{
  result = qword_1EE11E8D0;
  if (!qword_1EE11E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E8D0);
  }

  return result;
}

unint64_t sub_1DAAEA5D8()
{
  result = qword_1EE11EBE8;
  if (!qword_1EE11EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EBE8);
  }

  return result;
}

unint64_t sub_1DAAEA630()
{
  result = qword_1EE11EBF0;
  if (!qword_1EE11EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EBF0);
  }

  return result;
}

uint64_t sub_1DAAEA684(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69737265766E6F63 && a2 == 0xEB00000000736E6FLL;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7441656C617473 && a2 == 0xE700000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
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

uint64_t sub_1DAAEA7F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x79636E6572727563 && a2 == 0xEC0000006D6F7246;
  if (v3 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEA00000000006F54 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6563697270 && a2 == 0xE500000000000000)
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

uint64_t sub_1DAAEA918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DACB8204();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x1E69D6490], v8);
  v13 = (*(a4 + 8))(a1, a2, v12, a3, a4);
  (*(v9 + 8))(v12, v8);
  return v13;
}

uint64_t sub_1DAAEAA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DAAEAA70, 0, 0);
}

uint64_t sub_1DAAEAA70()
{
  v1 = v0[8];
  v0[9] = (*(v0[7] + 8))(v0[3], v0[4], v0[5], v0[6]);
  v2 = *(MEMORY[0x1E69D6B08] + 4);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1DAAEAB30;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1DAAEAB30()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1DAAEAC68;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1DAAEAC4C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAAEAC68()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_1DAAEACF0(void *a1, uint64_t a2)
{
  sub_1DAAEB1EC(0, &qword_1ECBE6BB0, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAAEB198();
  sub_1DACBA304();
  v12[1] = a2;
  sub_1DAA613E8();
  sub_1DAA962D8(&qword_1EE123E98);
  sub_1DACBA0E4();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DAAEAE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73444964656566 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DAAEAF14(uint64_t a1)
{
  v2 = sub_1DAAEB198();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAAEAF50(uint64_t a1)
{
  v2 = sub_1DAAEB198();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DAAEAF8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DAAEAFD4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1DAAEAFD4(uint64_t *a1)
{
  sub_1DAAEB1EC(0, &unk_1EE11CFD0, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v12 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAAEB198();
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAA613E8();
    sub_1DAA962D8(&qword_1EE123E88);
    sub_1DACB9FE4();
    (*(v5 + 8))(v8, v4);
    v10 = v12[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

unint64_t sub_1DAAEB198()
{
  result = qword_1EE11F0C0;
  if (!qword_1EE11F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F0C0);
  }

  return result;
}

void sub_1DAAEB1EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAAEB198();
    v7 = a3(a1, &type metadata for TagStocksFeedConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1DAAEB264()
{
  result = qword_1ECBE6BB8;
  if (!qword_1ECBE6BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6BB8);
  }

  return result;
}

unint64_t sub_1DAAEB2BC()
{
  result = qword_1EE11F0B0;
  if (!qword_1EE11F0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F0B0);
  }

  return result;
}

unint64_t sub_1DAAEB314()
{
  result = qword_1EE11F0B8;
  if (!qword_1EE11F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F0B8);
  }

  return result;
}

uint64_t sub_1DAAEB368()
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
  __swift_allocate_value_buffer(v9, qword_1ECBE6BC0);
  __swift_project_value_buffer(v9, qword_1ECBE6BC0);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v4, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t sub_1DAAEB580()
{
  sub_1DAAEC3B0(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
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
  __swift_allocate_value_buffer(v15, qword_1ECBE6BD8);
  __swift_project_value_buffer(v15, qword_1ECBE6BD8);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v4 + 104))(v7, *MEMORY[0x1E6968DF0], v17[0]);
  sub_1DACB7914();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_1DACB7094();
}

uint64_t sub_1DAAEB8EC(uint64_t a1, uint64_t *a2)
{
  sub_1DAA4D678(a1, v6);
  v3 = *a2;
  sub_1DAA4D678(v6, &v5);
  sub_1DACB71F4();
  sub_1DACB6D34();
  __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1DAAEB94C(uint64_t *a1)
{
  v3 = *v1;
  sub_1DAA4D678(a1, v5);
  sub_1DACB6D34();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_1DAAEB990(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_1DACB6D14();
  return sub_1DAAD9D78;
}

uint64_t sub_1DAAEBA28@<X0>(uint64_t *a1@<X8>)
{
  sub_1DAAEC3B0(0, &unk_1EE123AC0, sub_1DAAEBAC4, MEMORY[0x1E6959D18]);
  sub_1DACB6D94();
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  *a1 = result;
  return result;
}

unint64_t sub_1DAAEBAC4()
{
  result = qword_1EE123948;
  if (!qword_1EE123948)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE123948);
  }

  return result;
}

uint64_t sub_1DAAEBB28(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 80) = a1;
  *(v2 + 88) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DAAEBB4C, 0, 0);
}

uint64_t sub_1DAAEBB4C()
{
  v1 = v0[11];
  sub_1DACB6D24();
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v0[7] = 0;
  v0[8] = 0;
  v0[9] = 0x8000000000000000;
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1DAAEBC98;

  return (v8)(v0 + 7, v2, v3);
}

uint64_t sub_1DAAEBC98()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1DAAEBE1C;
  }

  else
  {
    v3 = sub_1DAAEBDAC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAAEBDAC()
{
  v1 = v0[10];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_1DACB6EB4();
  v2 = v0[1];

  return v2();
}

uint64_t sub_1DAAEBE1C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[1];
  v2 = v0[13];

  return v1();
}

unint64_t sub_1DAAEBE84()
{
  result = qword_1EE11E1F8;
  if (!qword_1EE11E1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E1F8);
  }

  return result;
}

unint64_t sub_1DAAEBEDC()
{
  result = qword_1EE11E208[0];
  if (!qword_1EE11E208[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE11E208);
  }

  return result;
}

unint64_t sub_1DAAEBF9C()
{
  result = qword_1EE11E200;
  if (!qword_1EE11E200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E200);
  }

  return result;
}

uint64_t sub_1DAAEBFF0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE59E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7904();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE6BC0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAAEC0A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return sub_1DAAEBB28(a1);
}

uint64_t sub_1DAAEC138@<X0>(uint64_t *a1@<X8>)
{
  sub_1DAAEC3B0(0, &unk_1EE123AC0, sub_1DAAEBAC4, MEMORY[0x1E6959D18]);
  sub_1DACB6D94();
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  *a1 = result;
  return result;
}

uint64_t sub_1DAAEC1D4(uint64_t a1)
{
  v2 = sub_1DAAEBF9C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;
  sub_1DACB71F4();
  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  sub_1DACB71F4();

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for OpenBusinessNewsIntent(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for OpenBusinessNewsIntent(uint64_t result, int a2, int a3)
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

unint64_t sub_1DAAEC358()
{
  result = qword_1ECBE6A08;
  if (!qword_1ECBE6A08)
  {
    sub_1DAADCD58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6A08);
  }

  return result;
}

void sub_1DAAEC3B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAAEC414(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAA94754;

  return v9(a1, a2);
}

uint64_t sub_1DAAEC52C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAAEC5B8()
{
  if (qword_1EE11FD98 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  v0[10] = __swift_project_value_buffer(v1, qword_1EE13E2D0);
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Will check for deprecated stocks...", v4, 2u);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  v5 = v0[9];

  v6 = v5[5];
  v7 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v6);
  v0[11] = (*(v7 + 136))(v6, v7);
  v8 = *(MEMORY[0x1E69D6B08] + 4);
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_1DAAEC74C;

  return MEMORY[0x1EEE44EE0](v0 + 8);
}

uint64_t sub_1DAAEC74C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1DAAECD34;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1DAAEC868;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAAEC868()
{
  v22 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  *(v0 + 112) = v2;
  sub_1DACB71E4();
  v3 = sub_1DACB8C74();
  v4 = sub_1DACB9914();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315138;
    v7 = MEMORY[0x1E1277130](v2, &type metadata for Watchlist);
    v9 = sub_1DAA7ABE4(v7, v8, &v21);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DAA3F000, v3, v4, "Deprecating stocks from watchlists %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E1278C00](v6, -1, -1);
    MEMORY[0x1E1278C00](v5, -1, -1);
  }

  if (*(v2 + 16))
  {
    *(v0 + 120) = 0;
    v10 = *(v0 + 112);
    v11 = *(v10 + 40);
    *(v0 + 128) = v11;
    v12 = *(v10 + 48);
    *(v0 + 136) = v12;
    v13 = *(v10 + 64);
    *(v0 + 144) = v13;
    v14 = *(v10 + 72);
    v15 = *(v10 + 56);
    *(v0 + 16) = *(v10 + 32);
    *(v0 + 24) = v11;
    *(v0 + 32) = v12;
    *(v0 + 40) = v15;
    *(v0 + 48) = v13;
    *(v0 + 56) = v14;
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    v16 = swift_task_alloc();
    *(v0 + 152) = v16;
    *v16 = v0;
    v16[1] = sub_1DAAECAA4;
    v17 = *(v0 + 72);

    return sub_1DAAECE10((v0 + 16));
  }

  else
  {
    v19 = *(v0 + 112);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1DAAECAA4()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v10 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = v2[14];

    v5 = sub_1DAAECD98;
  }

  else
  {
    v7 = v2[17];
    v6 = v2[18];
    v8 = v2[16];

    v5 = sub_1DAAECBE4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DAAECBE4()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120) + 1;
  v3 = *(result + 16);
  if (v2 == v3)
  {

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    *(v0 + 120) = v2;
    if (v2 >= v3)
    {
      __break(1u);
    }

    else
    {
      v5 = result + 48 * v2;
      v6 = *(v5 + 40);
      *(v0 + 128) = v6;
      v7 = *(v5 + 48);
      *(v0 + 136) = v7;
      v8 = *(v5 + 64);
      *(v0 + 144) = v8;
      v9 = *(v5 + 72);
      v10 = *(v5 + 56);
      *(v0 + 16) = *(v5 + 32);
      *(v0 + 24) = v6;
      *(v0 + 32) = v7;
      *(v0 + 40) = v10;
      *(v0 + 48) = v8;
      *(v0 + 56) = v9;
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v11 = swift_task_alloc();
      *(v0 + 152) = v11;
      *v11 = v0;
      v11[1] = sub_1DAAECAA4;
      v12 = *(v0 + 72);

      return sub_1DAAECE10((v0 + 16));
    }
  }

  return result;
}

uint64_t sub_1DAAECD34()
{
  v1 = v0[11];

  v2 = v0[13];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DAAECD98()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];

  v4 = v0[20];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1DAAECE10(uint64_t *a1)
{
  *(v2 + 264) = v1;
  v4 = *(*(type metadata accessor for AppConfiguration(0) - 8) + 64) + 15;
  *(v2 + 272) = swift_task_alloc();
  sub_1DAAF0D90(0, &qword_1EE120028, MEMORY[0x1E69D63E8]);
  v6 = *(*(v5 - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *a1;
  *(v2 + 280) = v7;
  *(v2 + 288) = v8;
  *(v2 + 296) = *(a1 + 1);
  v9 = a1[4];
  *(v2 + 312) = a1[3];
  *(v2 + 320) = v9;
  *(v2 + 58) = *(a1 + 20);

  return MEMORY[0x1EEE6DFA0](sub_1DAAECF0C, 0, 0);
}

uint64_t sub_1DAAECF0C()
{
  v1 = v0[38];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  v5 = v4[7];
  swift_getObjectType();
  v6 = v4[11];
  v7 = v4[12];
  __swift_project_boxed_opaque_existential_1(v4 + 8, v6);
  (*(v7 + 8))(v6, v7);
  v8 = *(v3 + 352);
  sub_1DAA640AC(v3);
  *v2 = v8;
  v9 = *MEMORY[0x1E69D63E0];
  v10 = sub_1DACB81B4();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v2, v9, v10);
  (*(v11 + 56))(v2, 0, 1, v10);
  v0[41] = sub_1DAAA2240(v1);
  sub_1DAAF0D34(v2, &qword_1EE120028, MEMORY[0x1E69D63E8]);
  v12 = *(MEMORY[0x1E69D6B08] + 4);
  v13 = swift_task_alloc();
  v0[42] = v13;
  *v13 = v0;
  v13[1] = sub_1DAAED0E4;

  return MEMORY[0x1EEE44EE0](v0 + 32);
}