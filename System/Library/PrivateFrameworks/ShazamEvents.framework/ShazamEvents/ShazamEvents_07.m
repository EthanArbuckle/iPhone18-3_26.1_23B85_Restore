unint64_t sub_1E10733A0()
{
  result = qword_1ECE8AF18;
  if (!qword_1ECE8AF18)
  {
    sub_1E10ADA5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AF18);
  }

  return result;
}

unint64_t sub_1E10733F8()
{
  result = qword_1ECE8AF28;
  if (!qword_1ECE8AF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8AF20, &qword_1E10B90C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AF28);
  }

  return result;
}

uint64_t sub_1E107346C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AF98, &qword_1E10B9338);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1074188();
  sub_1E10AEA5C();
  v12 = *(v2 + 48);
  v19 = *(v2 + 32);
  v20 = v12;
  v21 = *(v2 + 64);
  v13 = *(v2 + 16);
  v17 = *v2;
  v18 = v13;
  sub_1E10741DC(v2, v15);
  sub_1E1028D50();
  sub_1E10AE8AC();
  v15[2] = v19;
  v15[3] = v20;
  v16 = v21;
  v15[0] = v17;
  v15[1] = v18;
  sub_1E1063C48(v15);
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_1E10735F8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AF60, &qword_1E10B9190);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1073F34();
  sub_1E10AEA5C();
  v12 = *(v2 + 48);
  v19 = *(v2 + 32);
  v20 = v12;
  v21 = *(v2 + 64);
  v13 = *(v2 + 16);
  v17 = *v2;
  v18 = v13;
  sub_1E10484F8(v2, v15);
  sub_1E1073FDC();
  sub_1E10AE8AC();
  v15[2] = v19;
  v15[3] = v20;
  v16 = v21;
  v15[0] = v17;
  v15[1] = v18;
  sub_1E1074030(v15);
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_1E1073794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 6648432 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E107381C(uint64_t a1)
{
  v2 = sub_1E1074188();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1073858(uint64_t a1)
{
  v2 = sub_1E1074188();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1E1073894@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E1073BAC(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1E10738E8(void *a1)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 8);
  v3 = *v1;
  v4 = v1[1];
  return sub_1E107346C(a1);
}

uint64_t sub_1E1073940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736567616D69 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E10739C4(uint64_t a1)
{
  v2 = sub_1E1073F34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1073A00(uint64_t a1)
{
  v2 = sub_1E1073F34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1E1073A3C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E1073D70(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1E1073A90(void *a1)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 8);
  v3 = *v1;
  v4 = v1[1];
  return sub_1E10735F8(a1);
}

unint64_t sub_1E1073AD4(uint64_t a1)
{
  *(a1 + 8) = sub_1E1073B04();
  result = sub_1E1073B58();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E1073B04()
{
  result = qword_1ECE8AF38;
  if (!qword_1ECE8AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AF38);
  }

  return result;
}

unint64_t sub_1E1073B58()
{
  result = qword_1ECE8AF40;
  if (!qword_1ECE8AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AF40);
  }

  return result;
}

uint64_t sub_1E1073BAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AF88, &qword_1E10B9330);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1074188();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1E1028C24();
  sub_1E10AE7FC();
  (*(v6 + 8))(v11, v5);
  v18 = v23;
  v19 = v24;
  v20 = v25;
  v16 = v21;
  v17 = v22;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v19;
  *(a2 + 32) = v18;
  *(a2 + 48) = v14;
  *(a2 + 64) = v20;
  v15 = v17;
  *a2 = v16;
  *(a2 + 16) = v15;
  return result;
}

uint64_t sub_1E1073D70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AF48, &qword_1E10B9188);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1073F34();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1E1073F88();
  sub_1E10AE7FC();
  (*(v6 + 8))(v11, v5);
  v18 = v23;
  v19 = v24;
  v20 = v25;
  v16 = v21;
  v17 = v22;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v19;
  *(a2 + 32) = v18;
  *(a2 + 48) = v14;
  *(a2 + 64) = v20;
  v15 = v17;
  *a2 = v16;
  *(a2 + 16) = v15;
  return result;
}

unint64_t sub_1E1073F34()
{
  result = qword_1ECE8AF50;
  if (!qword_1ECE8AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AF50);
  }

  return result;
}

unint64_t sub_1E1073F88()
{
  result = qword_1ECE8AF58;
  if (!qword_1ECE8AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AF58);
  }

  return result;
}

unint64_t sub_1E1073FDC()
{
  result = qword_1ECE8AF68;
  if (!qword_1ECE8AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AF68);
  }

  return result;
}

unint64_t sub_1E1074084()
{
  result = qword_1ECE8AF70;
  if (!qword_1ECE8AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AF70);
  }

  return result;
}

unint64_t sub_1E10740DC()
{
  result = qword_1ECE8AF78;
  if (!qword_1ECE8AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AF78);
  }

  return result;
}

unint64_t sub_1E1074134()
{
  result = qword_1ECE8AF80;
  if (!qword_1ECE8AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AF80);
  }

  return result;
}

unint64_t sub_1E1074188()
{
  result = qword_1ECE8AF90;
  if (!qword_1ECE8AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AF90);
  }

  return result;
}

unint64_t sub_1E1074228()
{
  result = qword_1ECE8AFA0;
  if (!qword_1ECE8AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AFA0);
  }

  return result;
}

unint64_t sub_1E1074280()
{
  result = qword_1ECE8AFA8;
  if (!qword_1ECE8AFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AFA8);
  }

  return result;
}

unint64_t sub_1E10742D8()
{
  result = qword_1ECE8AFB0;
  if (!qword_1ECE8AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AFB0);
  }

  return result;
}

uint64_t sub_1E1074334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_1E1079ABC(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_1E10181E8(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_1E1016AA4();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_1E10795C4(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_1E107443C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE88C00, &unk_1E10B94F0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v25 - v11;
  sub_1E0FE62DC(a3, v25 - v11);
  v13 = sub_1E10AE29C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1E0FF0440(v12, &unk_1ECE88C00, &unk_1E10B94F0);
  }

  else
  {
    sub_1E10AE28C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1E10AE23C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a2;
      v21 = sub_1E10AE08C() + 32;
      type metadata accessor for PartialEventConfiguration(0);

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_1E0FF0440(a3, &unk_1ECE88C00, &unk_1E10B94F0);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E0FF0440(a3, &unk_1ECE88C00, &unk_1E10B94F0);
  type metadata accessor for PartialEventConfiguration(0);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1E10746E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE88C00, &unk_1E10B94F0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v25 - v11;
  sub_1E0FE62DC(a3, v25 - v11);
  v13 = sub_1E10AE29C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1E0FF0440(v12, &unk_1ECE88C00, &unk_1E10B94F0);
  }

  else
  {
    sub_1E10AE28C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1E10AE23C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1E10AE08C() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AFD0, &unk_1E10B9520);
      v22 = (v20 | v18);
      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_1E0FF0440(a3, &unk_1ECE88C00, &unk_1E10B94F0);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E0FF0440(a3, &unk_1ECE88C00, &unk_1E10B94F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AFD0, &unk_1E10B9520);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1E1074990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a1;
  v8[8] = a4;
  v9 = sub_1E10AE69C();
  v8[13] = v9;
  v10 = *(v9 - 8);
  v8[14] = v10;
  v11 = *(v10 + 64) + 15;
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v12 = sub_1E10AE6BC();
  v8[17] = v12;
  v13 = *(v12 - 8);
  v8[18] = v13;
  v14 = *(v13 + 64) + 15;
  v8[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E1074AC0, 0, 0);
}

uint64_t sub_1E1074AC0()
{
  if (v0[8] < 1)
  {
    sub_1E10AE2EC();
    v8 = (v0[9] + *v0[9]);
    v1 = *(v0[9] + 4);
    v3 = swift_task_alloc();
    v0[28] = v3;
    *v3 = v0;
    v4 = sub_1E1075830;
  }

  else
  {
    v0[20] = 0;
    sub_1E10AE2EC();
    v8 = (v0[9] + *v0[9]);
    v2 = *(v0[9] + 4);
    v3 = swift_task_alloc();
    v0[21] = v3;
    *v3 = v0;
    v4 = sub_1E1074EA0;
  }

  v3[1] = v4;
  v5 = v0[10];
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E1074EA0()
{
  v2 = *(*v1 + 168);
  v3 = *v1;
  v3[22] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E1074FF4, 0, 0);
  }

  else
  {
    v4 = v3[19];
    v5 = v3[15];
    v6 = v3[16];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1E1074FF4()
{
  v1 = *(v0 + 176);
  *(v0 + 184) = v1;
  v2 = *(v0 + 96);
  if ((*(v0 + 88))(v1))
  {
    v5 = v3;
    v6 = v4;
    v7 = *(v0 + 152);
    v8 = *(v0 + 136);
    v24 = *(v0 + 128);
    v10 = *(v0 + 112);
    v9 = *(v0 + 120);
    v11 = *(v0 + 104);
    sub_1E10AE97C();
    *(v0 + 40) = v5;
    *(v0 + 48) = v6;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v12 = sub_1E107A364(&qword_1ECE898B0, MEMORY[0x1E69E8820]);
    sub_1E10AE95C();
    sub_1E107A364(&qword_1ECE898B8, MEMORY[0x1E69E87E8]);
    sub_1E10AE6CC();
    v13 = *(v10 + 8);
    *(v0 + 192) = v13;
    *(v0 + 200) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v9, v11);
    v14 = *(MEMORY[0x1E69E8938] + 4);
    v15 = swift_task_alloc();
    *(v0 + 208) = v15;
    *v15 = v0;
    v15[1] = sub_1E107523C;
    v16 = *(v0 + 152);
    v18 = *(v0 + 128);
    v17 = *(v0 + 136);

    return MEMORY[0x1EEE6DE58](v18, v0 + 16, v17, v12);
  }

  else
  {
    swift_willThrow();
    v19 = *(v0 + 152);
    v21 = *(v0 + 120);
    v20 = *(v0 + 128);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1E107523C()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v10 = *v1;
  *(*v1 + 216) = v0;

  v4 = *(v2 + 200);
  if (v0)
  {
    (*(v2 + 192))(*(v2 + 128), *(v2 + 104));
    v5 = sub_1E107578C;
  }

  else
  {
    v7 = *(v2 + 144);
    v6 = *(v2 + 152);
    v8 = *(v2 + 136);
    (*(v2 + 192))(*(v2 + 128), *(v2 + 104));
    (*(v7 + 8))(v6, v8);
    v5 = sub_1E1075394;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E1075394()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 160) + 1;

  v3 = *(v0 + 216);
  if (v2 == v1)
  {
    sub_1E10AE2EC();
    if (!v3)
    {
      v32 = (*(v0 + 72) + **(v0 + 72));
      v4 = *(*(v0 + 72) + 4);
      v5 = swift_task_alloc();
      *(v0 + 224) = v5;
      *v5 = v0;
      v6 = sub_1E1075830;
LABEL_10:
      v5[1] = v6;
      v25 = *(v0 + 80);
      v26 = *(v0 + 56);

      return v32(v26);
    }

    goto LABEL_14;
  }

  ++*(v0 + 160);
  sub_1E10AE2EC();
  if (!v3)
  {
    v32 = (*(v0 + 72) + **(v0 + 72));
    v24 = *(*(v0 + 72) + 4);
    v5 = swift_task_alloc();
    *(v0 + 168) = v5;
    *v5 = v0;
    v6 = sub_1E1074EA0;
    goto LABEL_10;
  }

  *(v0 + 184) = v3;
  v7 = *(v0 + 96);
  if (((*(v0 + 88))(v3) & 1) == 0)
  {
    swift_willThrow();
LABEL_14:
    v27 = *(v0 + 152);
    v28 = *(v0 + 120);
    v29 = *(v0 + 128);

    v30 = *(v0 + 8);

    return v30();
  }

  v10 = v8;
  v11 = v9;
  v12 = *(v0 + 152);
  v13 = *(v0 + 136);
  v33 = *(v0 + 128);
  v15 = *(v0 + 112);
  v14 = *(v0 + 120);
  v16 = *(v0 + 104);
  sub_1E10AE97C();
  *(v0 + 40) = v10;
  *(v0 + 48) = v11;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v17 = sub_1E107A364(&qword_1ECE898B0, MEMORY[0x1E69E8820]);
  sub_1E10AE95C();
  sub_1E107A364(&qword_1ECE898B8, MEMORY[0x1E69E87E8]);
  sub_1E10AE6CC();
  v18 = *(v15 + 8);
  *(v0 + 192) = v18;
  *(v0 + 200) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v14, v16);
  v19 = *(MEMORY[0x1E69E8938] + 4);
  v20 = swift_task_alloc();
  *(v0 + 208) = v20;
  *v20 = v0;
  v20[1] = sub_1E107523C;
  v21 = *(v0 + 152);
  v23 = *(v0 + 128);
  v22 = *(v0 + 136);

  return MEMORY[0x1EEE6DE58](v23, v0 + 16, v22, v17);
}

uint64_t sub_1E107578C()
{
  v1 = v0[23];
  (*(v0[18] + 8))(v0[19], v0[17]);

  v2 = v0[27];
  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E1075830()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v8 = *v0;

  v3 = v1[19];
  v4 = v1[16];
  v5 = v1[15];

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1E1075980(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 32);
  if (*(a1 + 32))
  {
    v9 = a2[2];
    v10 = a2[3];
    if (*(a1 + 32) == 1)
    {
      if (v8 == 1)
      {
        v11 = a1[2];
        v12 = a1[3];
        v13 = v4 == v6 && v5 == v7;
        if (v13 || (sub_1E10AE8FC() & 1) != 0)
        {

          return MEMORY[0x1EEE6BA08](v11, v12, v9, v10);
        }
      }

      return 0;
    }

    return v8 == 2 && (v7 | v6 | v9 | v10) == 0;
  }

  else
  {
    if (*(a2 + 32))
    {
      return 0;
    }

    if (v4 == v6 && v5 == v7)
    {
      return 1;
    }

    else
    {

      return sub_1E10AE8FC();
    }
  }
}

uint64_t sub_1E1075A84()
{
  sub_1E10484A4();
  result = sub_1E10AEA8C();
  qword_1ECE8AFB8 = result;
  unk_1ECE8AFC0 = v1;
  return result;
}

uint64_t sub_1E1075ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v4[22] = *v3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE88C00, &unk_1E10B94F0) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v6 = type metadata accessor for PartialEventConfiguration(0);
  v4[24] = v6;
  v7 = *(v6 - 8);
  v4[25] = v7;
  v4[26] = *(v7 + 64);
  v4[27] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB40, &unk_1E10B7850) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v9 = sub_1E10ADB2C();
  v4[29] = v9;
  v10 = *(v9 - 8);
  v4[30] = v10;
  v11 = *(v10 + 64) + 15;
  v4[31] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50) - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v13 = sub_1E10ADBBC();
  v4[34] = v13;
  v14 = *(v13 - 8);
  v4[35] = v14;
  v4[36] = *(v14 + 64);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E1075D5C, v3, 0);
}

uint64_t sub_1E1075D5C()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = v3[1];
  v96 = *v3;
  v99 = *(v0 + 272);
  v6 = v3[3];
  v93 = v3[2];
  v7 = v3[4];
  v9 = v4[2];
  v8 = v4[3];
  v11 = v4[4];
  v10 = v4[5];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1E1079ABC(v9, v8, 0x687361686F6567, 0xE700000000000000, isUniquelyReferenced_nonNull_native);

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E1079ABC(v11, v10, 1702125924, 0xE400000000000000, v13);
  *(v0 + 72) = v96;
  *(v0 + 80) = v5;
  *(v0 + 88) = v93;
  *(v0 + 96) = v6;
  *(v0 + 104) = v7;
  sub_1E1081D8C(v2);

  v14 = *(v1 + 48);
  if (v14(v2, 1, v99) == 1)
  {
    v15 = *(v0 + 264);
    v16 = &qword_1ECE88C78;
    v17 = &qword_1E10B5E50;
LABEL_5:
    sub_1E0FF0440(v15, v16, v17);
    if (qword_1EE180170 != -1)
    {
      swift_once();
    }

    v23 = sub_1E10ADF9C();
    __swift_project_value_buffer(v23, qword_1EE185540);
    v24 = sub_1E10ADF7C();
    v25 = sub_1E10AE44C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1E0FDF000, v24, v25, "Request failed, url is not valid", v26, 2u);
      MEMORY[0x1E12EE9E0](v26, -1, -1);
    }

    v27 = *(v0 + 152);

    v29 = *v27;
    v28 = v27[1];
    sub_1E1079C44();
    swift_allocError();
    *v30 = v29;
    *(v30 + 8) = v28;
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0;
    swift_willThrow();

LABEL_10:
    v32 = *(v0 + 304);
    v31 = *(v0 + 312);
    v33 = *(v0 + 296);
    v35 = *(v0 + 256);
    v34 = *(v0 + 264);
    v36 = *(v0 + 248);
    v38 = *(v0 + 216);
    v37 = *(v0 + 224);
    v39 = *(v0 + 184);

    v40 = *(v0 + 8);

    return v40();
  }

  v19 = *(v0 + 232);
  v18 = *(v0 + 240);
  v20 = *(v0 + 224);
  v21 = *(*(v0 + 280) + 32);
  v21(*(v0 + 312), *(v0 + 264), *(v0 + 272));
  sub_1E10ADB0C();
  if ((*(v18 + 48))(v20, 1, v19) == 1)
  {
    v22 = *(v0 + 224);
    (*(*(v0 + 280) + 8))(*(v0 + 312), *(v0 + 272));
    v16 = &unk_1ECE8AB40;
    v17 = &unk_1E10B7850;
    v15 = v22;
    goto LABEL_5;
  }

  v97 = *(v0 + 272);
  v100 = v21;
  v42 = *(v0 + 256);
  v94 = *(v0 + 192);
  v43 = *(v0 + 160);
  (*(*(v0 + 240) + 32))(*(v0 + 248), *(v0 + 224), *(v0 + 232));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB48, &qword_1E10B7870);
  v44 = *(sub_1E10ADAEC() - 8);
  v45 = *(v44 + 72);
  v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  *(swift_allocObject() + 16) = xmmword_1E10B2E70;
  v47 = (v43 + *(v94 + 20));
  v48 = *v47;
  v49 = v47[1];
  sub_1E10ADADC();
  sub_1E10ADAFC();
  sub_1E10ADB1C();
  if (v14(v42, 1, v97) == 1)
  {
    sub_1E0FF0440(*(v0 + 256), &qword_1ECE88C78, &qword_1E10B5E50);
    if (qword_1EE180170 != -1)
    {
      swift_once();
    }

    v50 = sub_1E10ADF9C();
    __swift_project_value_buffer(v50, qword_1EE185540);
    v51 = sub_1E10ADF7C();
    v52 = sub_1E10AE44C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1E0FDF000, v51, v52, "Request failed, access token is missing from the request", v53, 2u);
      MEMORY[0x1E12EE9E0](v53, -1, -1);
    }

    v101 = *(v0 + 312);
    v54 = *(v0 + 272);
    v55 = *(v0 + 280);
    v57 = *(v0 + 240);
    v56 = *(v0 + 248);
    v58 = *(v0 + 232);
    v59 = *(v0 + 152);

    v60 = *v59;
    v61 = v59[1];
    sub_1E1079C44();
    swift_allocError();
    *v62 = v60;
    *(v62 + 8) = v61;
    *(v62 + 16) = 0;
    *(v62 + 24) = 0;
    *(v62 + 32) = 0;
    swift_willThrow();
    v63 = *(v57 + 8);

    v63(v56, v58);
    (*(v55 + 8))(v101, v54);
    goto LABEL_10;
  }

  v64 = *(v0 + 296);
  v65 = *(v0 + 304);
  v67 = *(v0 + 280);
  v66 = *(v0 + 288);
  v68 = *(v0 + 272);
  v88 = *(v0 + 208);
  v87 = *(v0 + 200);
  v69 = *(v0 + 184);
  v90 = v69;
  v91 = *(v0 + 192);
  v89 = *(v0 + 176);
  v70 = *(v0 + 160);
  v95 = *(v0 + 216);
  v98 = *(v0 + 168);
  v71 = *(v0 + 152);
  v100(v65, *(v0 + 256), v68);
  v92 = *(v70 + *(v91 + 24));
  (*(v67 + 16))(v64, v65, v68);
  *(v0 + 112) = *v71;
  sub_1E1079C98(v70, v95);
  v72 = (*(v67 + 80) + 24) & ~*(v67 + 80);
  v73 = (v66 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = (*(v87 + 80) + v73 + 48) & ~*(v87 + 80);
  v75 = swift_allocObject();
  *(v75 + 16) = v98;
  v100(v75 + v72, v64, v68);
  v76 = (v75 + v73);
  v78 = v71[1];
  v77 = v71[2];
  *v76 = *v71;
  v76[1] = v78;
  v76[2] = v77;
  sub_1E1079CFC(v95, v75 + v74);
  *(v75 + ((v88 + v74 + 7) & 0xFFFFFFFFFFFFFFF8)) = v89;
  v79 = sub_1E10AE29C();
  (*(*(v79 - 8) + 56))(v90, 1, 1, v79);
  v80 = swift_allocObject();
  v80[2] = 0;
  v80[3] = 0;
  v80[4] = v92;
  v80[5] = &unk_1E10B9508;
  v80[6] = v75;
  v80[7] = sub_1E1076A14;
  v80[8] = 0;

  sub_1E1027C5C(v0 + 112, v0 + 128);
  v81 = sub_1E10746E4(0, 0, v90, &unk_1E10B9518, v80);
  *(v0 + 320) = v81;
  v82 = *(MEMORY[0x1E69E86A8] + 4);
  v83 = swift_task_alloc();
  *(v0 + 328) = v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AFD0, &unk_1E10B9520);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
  *v83 = v0;
  v83[1] = sub_1E1076640;
  v86 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 16, v81, v84, v85, v86);
}

uint64_t sub_1E1076640()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = *(v2 + 320);
  v6 = *(v2 + 168);

  if (v0)
  {
    v7 = sub_1E10768EC;
  }

  else
  {
    v7 = sub_1E1076788;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1E1076788()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 296);
  v3 = *(v0 + 272);
  v15 = *(v0 + 264);
  v4 = *(v0 + 240);
  v5 = *(v0 + 248);
  v6 = *(v0 + 232);
  v16 = *(v0 + 256);
  v17 = *(v0 + 224);
  v18 = *(v0 + 216);
  v19 = *(v0 + 184);
  v7 = *(v0 + 144);
  v8 = *(*(v0 + 280) + 8);
  v8(*(v0 + 304), v3);
  (*(v4 + 8))(v5, v6);
  v8(v1, v3);
  v13 = *(v0 + 32);
  v14 = *(v0 + 16);
  v9 = *(v0 + 48);
  v12 = *(v0 + 56);

  *v7 = v14;
  *(v7 + 16) = v13;
  *(v7 + 32) = v9;
  *(v7 + 40) = v12;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1E10768EC()
{
  v1 = v0[39];
  v2 = v0[34];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];
  v6 = *(v0[35] + 8);
  v6(v0[38], v2);
  (*(v4 + 8))(v3, v5);
  v6(v1, v2);
  v7 = v0[42];
  v9 = v0[38];
  v8 = v0[39];
  v10 = v0[37];
  v12 = v0[32];
  v11 = v0[33];
  v13 = v0[31];
  v15 = v0[27];
  v14 = v0[28];
  v16 = v0[23];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1E1076A14(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
  if (swift_dynamicCast())
  {
    if (v7 == 1)
    {
      sub_1E10279CC(v3, v4, v5, v6, v7);
      return 1;
    }

    sub_1E10279CC(v3, v4, v5, v6, v7);
  }

  sub_1E10AEAAC();
  return 0;
}

uint64_t sub_1E1076AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v6 = sub_1E10ADE9C();
  v5[31] = v6;
  v7 = *(v6 - 8);
  v5[32] = v7;
  v8 = *(v7 + 64) + 15;
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v9 = sub_1E10ADEBC();
  v5[35] = v9;
  v10 = *(v9 - 8);
  v5[36] = v10;
  v11 = *(v10 + 64) + 15;
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v12 = sub_1E10AD9CC();
  v5[40] = v12;
  v13 = *(v12 - 8);
  v5[41] = v13;
  v14 = *(v13 + 64) + 15;
  v5[42] = swift_task_alloc();
  v15 = type metadata accessor for PartialEventConfiguration(0);
  v5[43] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v17 = sub_1E10ADBBC();
  v5[47] = v17;
  v18 = *(v17 - 8);
  v5[48] = v18;
  v19 = *(v18 + 64) + 15;
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v20 = sub_1E10AD9AC();
  v5[52] = v20;
  v21 = *(v20 - 8);
  v5[53] = v21;
  v22 = *(v21 + 64) + 15;
  v5[54] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E1076D7C, 0, 0);
}

uint64_t sub_1E1076D7C()
{
  v1 = v0[54];
  v2 = v0[51];
  v3 = v0[47];
  v4 = v0[48];
  v5 = v0[28];
  v6 = *(v0[27] + 112);
  v7 = *(v4 + 16);
  v0[55] = v7;
  v0[56] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v5, v3);
  sub_1E10AD97C();
  v8 = swift_task_alloc();
  v0[57] = v8;
  *v8 = v0;
  v8[1] = sub_1E1076E64;
  v9 = v0[54];

  return sub_1E107A5C4(v9);
}

uint64_t sub_1E1076E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 456);
  v8 = *v4;
  v6[58] = a1;
  v6[59] = a2;
  v6[60] = a3;
  v6[61] = v3;

  (*(v5[53] + 8))(v5[54], v5[52]);
  if (v3)
  {
    v9 = sub_1E1078220;
  }

  else
  {
    v9 = sub_1E1076FD8;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E1076FD8()
{
  v202 = v0;
  v1 = v0;
  v2 = *(v0 + 480);
  v3 = *(v1 + 464);
  v4 = *(v1 + 472);
  sub_1E1079FD0(v3, v4);
  v5 = v2;
  sub_1E1079FD0(v3, v4);
  v6 = v5;
  sub_1E0FFDAC0(v3, v4);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  v8 = *(v1 + 472);
  v9 = *(v1 + 480);
  v10 = *(v1 + 464);
  if (!v7)
  {

    sub_1E0FFDAC0(v10, v8);
    if (qword_1EE180170 != -1)
    {
      swift_once();
    }

    v21 = sub_1E10ADF9C();
    __swift_project_value_buffer(v21, qword_1EE185540);
    v22 = sub_1E10ADF7C();
    v23 = sub_1E10AE44C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1E0FDF000, v22, v23, "Invalid HTTP response", v24, 2u);
      MEMORY[0x1E12EE9E0](v24, -1, -1);
    }

    v25 = *(v1 + 472);
    v26 = *(v1 + 480);
    v27 = *(v1 + 464);
    v28 = *(v1 + 232);

    v29 = *v28;
    v30 = v28[1];
    sub_1E1079C44();
    swift_allocError();
    *v31 = v29;
    *(v31 + 8) = v30;
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0;
    swift_willThrow();

    goto LABEL_14;
  }

  v11 = v7;
  sub_1E0FFDAC0(*(v1 + 464), *(v1 + 472));

  sub_1E0FF4648([v11 statusCode], 1);
  v12 = [v11 statusCode];
  if ((v12 - 600) < 0xFFFFFFFFFFFFFF9CLL)
  {
    if (v12 == 200)
    {
      v87 = *(v1 + 488);
      v89 = *(v1 + 464);
      v88 = *(v1 + 472);
      v91 = *(v1 + 328);
      v90 = *(v1 + 336);
      v92 = *(v1 + 320);
      v93 = *(v1 + 232);
      v94 = *(v1 + 208);
      v95 = sub_1E10ADA0C();
      v96 = *(v95 + 48);
      v97 = *(v95 + 52);
      swift_allocObject();
      sub_1E10AD9FC();
      (*(v91 + 104))(v90, *MEMORY[0x1E6967F30], v92);
      sub_1E10AD9DC();
      v99 = *v93;
      v98 = v93[1];
      *(v1 + 16) = *(v93 + 1);
      *(v1 + 32) = *(v93 + 2);
      v100 = *v93;
      v101 = *(v93 + 2);
      v94[1] = *(v93 + 1);
      v94[2] = v101;
      *v94 = v100;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89460, &qword_1E10B9540);

      sub_1E1027CB8(v1 + 16, v1 + 96);
      sub_1E1027CB8(v1 + 32, v1 + 112);
      sub_1E107A230();
      sub_1E10AD9EC();
      if (v87)
      {
        v102 = v87;

        sub_1E1027D68(v1 + 16);
        sub_1E1027D68(v1 + 32);
        if (qword_1EE180170 != -1)
        {
          swift_once();
        }

        v103 = sub_1E10ADF9C();
        __swift_project_value_buffer(v103, qword_1EE185540);
        v104 = v87;
        v105 = sub_1E10ADF7C();
        v106 = sub_1E10AE44C();

        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          *v107 = 138412290;
          v109 = v102;
          v110 = _swift_stdlib_bridgeErrorToNSError();
          *(v107 + 4) = v110;
          *v108 = v110;
          _os_log_impl(&dword_1E0FDF000, v105, v106, "Request failed because of JSON decoding: %@", v107, 0xCu);
          sub_1E0FF0440(v108, &qword_1ECE89170, &qword_1E10B15D0);
          MEMORY[0x1E12EE9E0](v108, -1, -1);
          MEMORY[0x1E12EE9E0](v107, -1, -1);
        }

        v111 = *(v1 + 472);
        v26 = *(v1 + 480);
        v112 = *(v1 + 464);

        sub_1E1079C44();
        swift_allocError();
        *v113 = v99;
        *(v113 + 8) = v98;
        *(v113 + 16) = 0;
        *(v113 + 24) = 0;
        *(v113 + 32) = 0;
        swift_willThrow();

        v32 = v112;
        v33 = v111;
        goto LABEL_15;
      }

      v165 = *(v1 + 472);
      v166 = *(v1 + 480);
      v167 = *(v1 + 464);

      sub_1E0FFDAC0(v167, v165);
    }

    else
    {
      if (v12 != 404)
      {
        if (v12 != 429)
        {
          if (qword_1EE180170 != -1)
          {
            swift_once();
          }

          v114 = *(v1 + 480);
          v115 = sub_1E10ADF9C();
          __swift_project_value_buffer(v115, qword_1EE185540);
          v116 = v114;
          v117 = sub_1E10ADF7C();
          v118 = sub_1E10AE44C();
          v119 = os_log_type_enabled(v117, v118);
          v120 = *(v1 + 472);
          v26 = *(v1 + 480);
          v121 = *(v1 + 464);
          v122 = *(v1 + 232);
          if (v119)
          {
            v123 = swift_slowAlloc();
            v194 = v121;
            v124 = swift_slowAlloc();
            v201[0] = v124;
            *v123 = 134218242;
            *(v123 + 4) = [v11 statusCode];

            *(v123 + 12) = 2080;
            v125 = [v11 description];
            v126 = sub_1E10AE05C();
            v189 = v120;
            v127 = v1;
            v129 = v128;

            v130 = sub_1E1078CFC(v126, v129, v201);
            v1 = v127;

            *(v123 + 14) = v130;
            _os_log_impl(&dword_1E0FDF000, v117, v118, "Request failed with %ld, not retrying, response %s", v123, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v124);
            MEMORY[0x1E12EE9E0](v124, -1, -1);
            MEMORY[0x1E12EE9E0](v123, -1, -1);

            v132 = *v122;
            v131 = v122[1];
            sub_1E1079C44();
            swift_allocError();
            *v133 = v132;
            *(v133 + 8) = v131;
            *(v133 + 16) = 0;
            *(v133 + 24) = 0;
            *(v133 + 32) = 0;
            swift_willThrow();

            v33 = v189;
            v32 = v194;
          }

          else
          {

            v157 = *v122;
            v156 = v122[1];
            sub_1E1079C44();
            swift_allocError();
            *v158 = v157;
            *(v158 + 8) = v156;
            *(v158 + 16) = 0;
            *(v158 + 24) = 0;
            *(v158 + 32) = 0;
            swift_willThrow();

            v32 = v121;
            v33 = v120;
          }

          goto LABEL_15;
        }

        v13 = sub_1E10AE04C();
        v14 = [v11 valueForHTTPHeaderField_];

        if (v14 && (v15 = *(v1 + 488), v16 = sub_1E10AE05C(), v18 = v17, v14, *(v1 + 200) = 0, v19 = sub_1E107A0DC(v16, v18), , v19))
        {
          v20 = *(v1 + 200);
        }

        else
        {
          v20 = *(*(v1 + 240) + *(*(v1 + 344) + 28));
        }

        sub_1E10AEABC();
        if (qword_1ECE88B88 != -1)
        {
          swift_once();
        }

        if (sub_1E10AEA7C())
        {
          if (qword_1EE180170 != -1)
          {
            swift_once();
          }

          v135 = *(v1 + 440);
          v134 = *(v1 + 448);
          v136 = *(v1 + 392);
          v137 = *(v1 + 376);
          v138 = *(v1 + 352);
          v139 = *(v1 + 240);
          v140 = *(v1 + 224);
          v141 = sub_1E10ADF9C();
          __swift_project_value_buffer(v141, qword_1EE185540);
          v135(v136, v140, v137);
          sub_1E1079C98(v139, v138);
          v142 = sub_1E10ADF7C();
          v143 = sub_1E10AE44C();
          v144 = os_log_type_enabled(v142, v143);
          v146 = *(v1 + 384);
          v145 = *(v1 + 392);
          v147 = *(v1 + 376);
          v148 = *(v1 + 352);
          if (v144)
          {
            v195 = *(v1 + 344);
            v149 = swift_slowAlloc();
            v199 = swift_slowAlloc();
            v201[0] = v199;
            *v149 = 136315650;
            sub_1E107A364(&qword_1ECE8AFE0, MEMORY[0x1E6968FB0]);
            v150 = sub_1E10AE8DC();
            v151 = v1;
            v153 = v152;
            (*(v146 + 8))(v145, v147);
            v154 = sub_1E1078CFC(v150, v153, v201);
            v1 = v151;

            *(v149 + 4) = v154;
            *(v149 + 12) = 2048;
            *(v149 + 14) = v20;
            *(v149 + 22) = 2048;
            v155 = *(v148 + v195[6]);
            sub_1E107A1D4(v148);
            *(v149 + 24) = v155;
            _os_log_impl(&dword_1E0FDF000, v142, v143, "Request failed with a 429, rate limit for %s, retry after %f for a total of %ld times", v149, 0x20u);
            __swift_destroy_boxed_opaque_existential_1(v199);
            MEMORY[0x1E12EE9E0](v199, -1, -1);
            MEMORY[0x1E12EE9E0](v149, -1, -1);
          }

          else
          {
            sub_1E107A1D4(*(v1 + 352));

            (*(v146 + 8))(v145, v147);
          }

          v25 = *(v1 + 472);
          v26 = *(v1 + 480);
          v27 = *(v1 + 464);
          v180 = *(v1 + 232);
          v181 = *v180;
          v182 = v180[1];

          v183 = sub_1E10AEABC();
          v185 = v184;
          sub_1E1079C44();
          swift_allocError();
          *v163 = v181;
          *(v163 + 8) = v182;
          *(v163 + 16) = v183;
          *(v163 + 24) = v185;
          v164 = 1;
        }

        else
        {
          if (qword_1EE180170 != -1)
          {
            swift_once();
          }

          v159 = sub_1E10ADF9C();
          __swift_project_value_buffer(v159, qword_1EE185540);
          v160 = sub_1E10ADF7C();
          v161 = sub_1E10AE44C();
          if (os_log_type_enabled(v160, v161))
          {
            v162 = swift_slowAlloc();
            *v162 = 134217984;
            *(v162 + 4) = v20;
            _os_log_impl(&dword_1E0FDF000, v160, v161, "Request failed with a 429, retry after %f indicating limit reach", v162, 0xCu);
            MEMORY[0x1E12EE9E0](v162, -1, -1);
          }

          v25 = *(v1 + 472);
          v26 = *(v1 + 480);
          v27 = *(v1 + 464);

          sub_1E1079C44();
          swift_allocError();
          *v163 = 0u;
          *(v163 + 16) = 0u;
          v164 = 2;
        }

        *(v163 + 32) = v164;
        swift_willThrow();

LABEL_14:
        v32 = v27;
        v33 = v25;
LABEL_15:
        sub_1E0FFDAC0(v32, v33);

        v34 = *(v1 + 432);
        v36 = *(v1 + 400);
        v35 = *(v1 + 408);
        v37 = *(v1 + 392);
        v39 = *(v1 + 360);
        v38 = *(v1 + 368);
        v40 = *(v1 + 352);
        v41 = *(v1 + 336);
        v42 = v1;
        v43 = *(v1 + 312);
        v44 = v42[38];
        v186 = v42[37];
        v187 = v42[34];
        v191 = v42[33];

        v45 = v42[1];
LABEL_16:

        return v45();
      }

      v80 = *(v1 + 472);
      v81 = *(v1 + 480);
      v82 = *(v1 + 464);
      v83 = *(v1 + 232);
      v84 = *(v1 + 208);
      *(v1 + 48) = *v83;
      *(v1 + 64) = v83[1];
      *(v1 + 80) = v83[2];
      v85 = *v83;
      v86 = v83[2];
      *(v84 + 16) = v83[1];
      *(v84 + 32) = v86;
      *v84 = v85;
      sub_1E1027C5C(v1 + 48, v1 + 128);
      sub_1E1027CB8(v1 + 64, v1 + 144);
      sub_1E1027CB8(v1 + 80, v1 + 160);

      sub_1E0FFDAC0(v82, v80);
      *(v84 + 48) = MEMORY[0x1E69E7CC0];
    }

    v168 = *(v1 + 432);
    v169 = *(v1 + 400);
    v170 = *(v1 + 408);
    v171 = *(v1 + 392);
    v173 = *(v1 + 360);
    v172 = *(v1 + 368);
    v174 = *(v1 + 352);
    v175 = *(v1 + 336);
    v176 = v1;
    v179 = v1 + 304;
    v178 = *(v1 + 304);
    v177 = *(v179 + 8);
    v190 = v176[37];
    v196 = v176[34];
    v200 = v176[33];

    v45 = v176[1];
    goto LABEL_16;
  }

  v192 = v11;
  if (qword_1EE180170 != -1)
  {
    swift_once();
  }

  v197 = *(v1 + 480);
  v47 = v1;
  v48 = *(v1 + 448);
  v49 = v47[55];
  v50 = v47[50];
  v52 = v47[46];
  v51 = v47[47];
  v53 = v47[45];
  v54 = v47[30];
  v55 = v47[28];
  v56 = sub_1E10ADF9C();
  __swift_project_value_buffer(v56, qword_1EE185540);
  v49(v50, v55, v51);
  sub_1E1079C98(v54, v52);
  sub_1E1079C98(v54, v53);
  v57 = v197;
  v58 = sub_1E10ADF7C();
  v59 = sub_1E10AE44C();
  v60 = os_log_type_enabled(v58, v59);
  v61 = v47[60];
  v62 = v47[50];
  v64 = v47[47];
  v63 = v47[48];
  v66 = v47[45];
  v65 = v47[46];
  if (v60)
  {
    v188 = v47[43];
    v67 = swift_slowAlloc();
    v198 = swift_slowAlloc();
    v201[0] = v198;
    *v67 = 134218754;
    *(v67 + 4) = [v192 statusCode];

    *(v67 + 12) = 2080;
    sub_1E107A364(&qword_1ECE8AFE0, MEMORY[0x1E6968FB0]);
    v193 = v59;
    v68 = sub_1E10AE8DC();
    v70 = v69;
    (*(v63 + 8))(v62, v64);
    v71 = sub_1E1078CFC(v68, v70, v201);

    *(v67 + 14) = v71;
    *(v67 + 22) = 2048;
    v72 = *(v65 + *(v188 + 28));
    sub_1E107A1D4(v65);
    *(v67 + 24) = v72;
    *(v67 + 32) = 2048;
    v73 = *(v66 + *(v188 + 24));
    sub_1E107A1D4(v66);
    *(v67 + 34) = v73;
    _os_log_impl(&dword_1E0FDF000, v58, v193, "Request failed with a %ld, rate limit for %s, retry after %f for a total of %ld times", v67, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1(v198);
    MEMORY[0x1E12EE9E0](v198, -1, -1);
    MEMORY[0x1E12EE9E0](v67, -1, -1);
  }

  else
  {
    sub_1E107A1D4(v47[45]);

    sub_1E107A1D4(v65);
    (*(v63 + 8))(v62, v64);
  }

  v74 = v47[43];
  v76 = v47[29];
  v75 = v47[30];
  v77 = v47[27];
  v47[62] = *v76;
  v47[63] = v76[1];
  v78 = *(v75 + *(v74 + 28));
  v47[64] = sub_1E10AEABC();
  v47[65] = v79;

  return MEMORY[0x1EEE6DFA0](sub_1E1078000, v77, 0);
}

uint64_t sub_1E1078000(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 216);
  v6 = *(v5 + 120);
  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 120) = v8;
    if (v8 < 1)
    {
      v12 = 0;
      v10 = 0;
      v11 = 0uLL;
      v13 = 2;
    }

    else
    {
      v9 = *(v3 + 504);

      v11 = *(v3 + 512);
      v12 = *(v3 + 496);
      v13 = 1;
    }

    *(v3 + 560) = v13;
    *(v3 + 544) = v11;
    *(v3 + 536) = v10;
    *(v3 + 528) = v12;
    a1 = sub_1E10780B8;
    a2 = 0;
    a3 = 0;
  }

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1E10780B8()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 472);
  v3 = *(v0 + 480);
  v4 = *(v0 + 464);
  sub_1E1079C44();
  v19 = *(v0 + 544);
  v20 = *(v0 + 528);
  swift_allocError();
  *v5 = v20;
  *(v5 + 16) = v19;
  *(v5 + 32) = v1;
  swift_willThrow();

  sub_1E0FFDAC0(v4, v2);
  v6 = *(v0 + 432);
  v8 = *(v0 + 400);
  v7 = *(v0 + 408);
  v9 = *(v0 + 392);
  v11 = *(v0 + 360);
  v10 = *(v0 + 368);
  v12 = *(v0 + 352);
  v13 = *(v0 + 336);
  v14 = *(v0 + 304);
  v15 = *(v0 + 312);
  v18 = *(v0 + 296);
  *&v19 = *(v0 + 272);
  *&v20 = *(v0 + 264);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1E1078220()
{
  v1 = *(v0 + 488);
  *(v0 + 176) = v1;
  v2 = *(v0 + 296);
  v3 = *(v0 + 280);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
  if (!swift_dynamicCast())
  {
    goto LABEL_8;
  }

  v5 = *(v0 + 272);
  v7 = *(v0 + 256);
  v6 = *(v0 + 264);
  v8 = *(v0 + 248);
  (*(*(v0 + 288) + 32))(*(v0 + 312), *(v0 + 296), *(v0 + 280));
  sub_1E107A364(&qword_1ECE8B240, MEMORY[0x1E6969C20]);
  sub_1E10ADB5C();
  sub_1E10ADE8C();
  sub_1E107A364(&qword_1ECE8AFD8, MEMORY[0x1E6969BF8]);
  sub_1E10AE14C();
  sub_1E10AE14C();
  v9 = *(v7 + 8);
  v9(v6, v8);
  v9(v5, v8);
  if (*(v0 + 184) != *(v0 + 192))
  {
    (*(*(v0 + 288) + 8))(*(v0 + 312), *(v0 + 280));
LABEL_8:
    v25 = *(v0 + 488);
    v26 = *(v0 + 232);

    v27 = *v26;
    v28 = v26[1];
    sub_1E1079C44();
    swift_allocError();
    *v29 = v27;
    *(v29 + 8) = v28;
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0;
    swift_willThrow();

    v30 = v25;
    goto LABEL_11;
  }

  if (qword_1EE180170 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 304);
  v11 = *(v0 + 312);
  v12 = *(v0 + 280);
  v13 = *(v0 + 288);
  v14 = sub_1E10ADF9C();
  __swift_project_value_buffer(v14, qword_1EE185540);
  (*(v13 + 16))(v10, v11, v12);
  v15 = sub_1E10ADF7C();
  v16 = sub_1E10AE44C();
  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 304);
  v19 = *(v0 + 280);
  v20 = *(v0 + 288);
  if (v17)
  {
    v56 = *(v0 + 280);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    sub_1E10ADEAC();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    v24 = *(v20 + 8);
    v24(v18, v56);
    *(v21 + 4) = v23;
    *v22 = v23;
    _os_log_impl(&dword_1E0FDF000, v15, v16, "Request timed out %@", v21, 0xCu);
    sub_1E0FF0440(v22, &qword_1ECE89170, &qword_1E10B15D0);
    MEMORY[0x1E12EE9E0](v22, -1, -1);
    MEMORY[0x1E12EE9E0](v21, -1, -1);
  }

  else
  {

    v24 = *(v20 + 8);
    v24(v18, v19);
  }

  v31 = *(v0 + 312);
  v32 = *(v0 + 280);
  v33 = *(v0 + 232);
  v34 = *v33;
  v35 = v33[1];
  v36 = *(*(v0 + 240) + *(*(v0 + 344) + 28));

  v37 = sub_1E10AEABC();
  v39 = v38;
  sub_1E1079C44();
  swift_allocError();
  *v40 = v34;
  *(v40 + 8) = v35;
  *(v40 + 16) = v37;
  *(v40 + 24) = v39;
  *(v40 + 32) = 1;
  swift_willThrow();
  v24(v31, v32);
  v30 = *(v0 + 176);
LABEL_11:

  v41 = *(v0 + 432);
  v43 = *(v0 + 400);
  v42 = *(v0 + 408);
  v44 = *(v0 + 392);
  v46 = *(v0 + 360);
  v45 = *(v0 + 368);
  v47 = *(v0 + 352);
  v48 = *(v0 + 336);
  v49 = *(v0 + 304);
  v50 = *(v0 + 312);
  v53 = *(v0 + 296);
  v54 = *(v0 + 272);
  v55 = *(v0 + 264);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_1E1078708()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E1078764()
{
  swift_defaultActor_initialize();
  type metadata accessor for NetworkRunner();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v2 = [objc_opt_self() defaultSessionConfiguration];
  [v2 setUsesClassicLoadingMode_];
  v3 = [objc_opt_self() sessionWithConfiguration_];
  v6 = &type metadata for DefaultNetworkSession;
  v7 = &off_1F5BF3208;

  *&v5 = v3;
  sub_1E100C5C4(&v5, v1 + 112);
  *(v0 + 112) = v1;
  *(v0 + 120) = 10;
  return v0;
}

uint64_t sub_1E1078844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1E10AE69C();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1E1078944, 0, 0);
}

uint64_t sub_1E1078944()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1E10AE6BC();
  v7 = sub_1E107A364(&qword_1ECE898B0, MEMORY[0x1E69E8820]);
  sub_1E10AE95C();
  sub_1E107A364(&qword_1ECE898B8, MEMORY[0x1E69E87E8]);
  sub_1E10AE6CC();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1E1078AD4;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

uint64_t sub_1E1078AD4()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E1078C90, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1E1078C90()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_1E1078CFC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E1078DC8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1E0FFB50C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1E1078DC8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1E1078ED4(a5, a6);
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
    result = sub_1E10AE63C();
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

uint64_t sub_1E1078ED4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1E1078F20(a1, a2);
  sub_1E1079050(&unk_1F5BED110);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1E1078F20(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E107913C(v5, 0);
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

  result = sub_1E10AE63C();
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
        v10 = sub_1E10AE0DC();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E107913C(v10, 0);
        result = sub_1E10AE5CC();
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

uint64_t sub_1E1079050(uint64_t result)
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

  result = sub_1E10791B0(result, v12, 1, v3);
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

void *sub_1E107913C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AFE8, &qword_1E10B9548);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1E10791B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AFE8, &qword_1E10B9548);
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

unint64_t sub_1E10792A4(int64_t a1, uint64_t a2)
{
  v45 = sub_1E10ADCFC();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v6, v7);
  v44 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v46 = v9;
    v15 = sub_1E10AE58C();
    v16 = v45;
    v9 = v46;
    v17 = v14;
    v43 = (v15 + 1) & v14;
    v19 = *(v4 + 16);
    v18 = v4 + 16;
    v41 = a2 + 64;
    v42 = v19;
    v20 = *(v18 + 56);
    v40 = (v18 - 8);
    do
    {
      v21 = v20;
      v22 = v20 * v13;
      v23 = v44;
      v24 = v17;
      v25 = v18;
      v26 = v9;
      v42(v44, *(v9 + 48) + v20 * v13, v16);
      v27 = *(v26 + 40);
      sub_1E107A364(&qword_1EE17FF60, MEMORY[0x1E69695A8]);
      v28 = sub_1E10ADFEC();
      result = (*v40)(v23, v16);
      v17 = v24;
      v29 = v28 & v24;
      if (a1 >= v43)
      {
        if (v29 >= v43 && a1 >= v29)
        {
LABEL_15:
          v9 = v46;
          v32 = *(v46 + 48);
          result = v32 + v21 * a1;
          v18 = v25;
          if (v21 * a1 < v22 || (v20 = v21, result >= v32 + v22 + v21))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v9 = v46;
            v20 = v21;
            v17 = v24;
            v11 = v41;
          }

          else
          {
            v11 = v41;
            if (v21 * a1 != v22)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v9 = v46;
              v20 = v21;
              v17 = v24;
            }
          }

          v33 = *(v9 + 56);
          v34 = (v33 + 8 * a1);
          v35 = (v33 + 8 * v13);
          if (a1 != v13 || v34 >= v35 + 1)
          {
            *v34 = *v35;
            a1 = v13;
          }

          goto LABEL_4;
        }
      }

      else if (v29 >= v43 || a1 >= v29)
      {
        goto LABEL_15;
      }

      v18 = v25;
      v11 = v41;
      v20 = v21;
      v9 = v46;
LABEL_4:
      v13 = (v13 + 1) & v17;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(v9 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v38;
    ++*(v9 + 36);
  }

  return result;
}

uint64_t sub_1E10795C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E10AE58C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1E10AE9CC();

      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      v13 = sub_1E10AEA0C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1E1079774(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1E10ADCFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v3;
  v17 = sub_1E1014068(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      sub_1E10160CC();
      goto LABEL_7;
    }

    sub_1E10145F0(v20, a3 & 1);
    v27 = *v4;
    v28 = sub_1E1014068(a2);
    if ((v21 & 1) == (v29 & 1))
    {
      v17 = v28;
      v23 = *v4;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v14, a2, v8);
      return sub_1E107A024(v17, v14, a1, v23);
    }

LABEL_15:
    result = sub_1E10AE94C();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v4;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7];
  v25 = *(v24 + 8 * v17);
  *(v24 + 8 * v17) = a1;
}

uint64_t sub_1E1079940(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1E10181E8(a2, a3);
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
      sub_1E10154D4(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1E10181E8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1E10AE94C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1E1016934();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_1E1079ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1E10181E8(a3, a4);
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
      sub_1E101577C(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1E10181E8(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1E10AE94C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1E1016AA4();
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
}

unint64_t sub_1E1079C44()
{
  result = qword_1ECE8AFC8;
  if (!qword_1ECE8AFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AFC8);
  }

  return result;
}

uint64_t sub_1E1079C98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PartialEventConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1079CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PartialEventConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1079D60(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E10ADBBC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for PartialEventConfiguration(0) - 8);
  v9 = (v7 + *(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E0FE5FDC;

  return sub_1E1076AC0(a1, v10, v1 + v6, v1 + v7, v1 + v9);
}

uint64_t sub_1E1079EF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E0FE6540;

  return sub_1E1074990(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1E1079FD0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1E107A024(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1E10ADCFC();
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

BOOL sub_1E107A0DC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_1E10AE5DC();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_1E107A1D4(uint64_t a1)
{
  v2 = type metadata accessor for PartialEventConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E107A230()
{
  result = qword_1ECE89458;
  if (!qword_1ECE89458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89460, &qword_1E10B9540);
    sub_1E107A364(&qword_1ECE89468, type metadata accessor for PartialEventResource);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89458);
  }

  return result;
}

_BYTE *sub_1E107A2E4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1E107A364(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_12ShazamEvents26PartialEventNetworkHandlerC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E107A3DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E107A424(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E107A46C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1E107A498(char a1)
{
  swift_defaultActor_initialize();
  v3 = [objc_opt_self() defaultSessionConfiguration];
  v4 = v3;
  if (!a1)
  {
    goto LABEL_5;
  }

  if (a1 != 2)
  {
    [v3 setUsesClassicLoadingMode_];
LABEL_5:
    v7 = [objc_opt_self() sessionWithConfiguration_];
    v10 = &type metadata for DefaultNetworkSession;
    v11 = &off_1F5BF3208;

    *&v9 = v7;
    goto LABEL_6;
  }

  v5 = type metadata accessor for AMSNetworkSession();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = [objc_allocWithZone(MEMORY[0x1E698CBA8]) initWithConfiguration_];
  v10 = v5;
  v11 = &off_1F5BF3168;

  *&v9 = v6;
LABEL_6:
  sub_1E100C5C4(&v9, v1 + 112);
  return v1;
}

uint64_t sub_1E107A5C4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E107A5E4, v1, 0);
}

uint64_t sub_1E107A5E4()
{
  v1 = v0[3];
  v2 = sub_1E10AE2DC();
  v3 = v1[17];
  v4 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v3);
  if (v2)
  {
    (*(v4 + 32))(v3, v4);
    sub_1E10AE26C();
    sub_1E107AA1C();
    swift_allocError();
    sub_1E10ADFBC();
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = *(v4 + 24);
    v11 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[4] = v9;
    *v9 = v0;
    v9[1] = sub_1E107A7B4;
    v10 = v0[2];

    return v11(v10, v3, v4);
  }
}

uint64_t sub_1E107A7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 32);
  v7 = *v4;
  v5[5] = a1;
  v5[6] = a2;
  v5[7] = a3;
  v5[8] = v3;

  if (v3)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    v10 = v5[3];

    return MEMORY[0x1EEE6DFA0](sub_1E107A900, v10, 0);
  }
}

uint64_t sub_1E107A900()
{
  v1 = v0[8];
  sub_1E10AE2EC();
  if (v1)
  {
    v2 = v0[7];
    sub_1E0FFDAC0(v0[5], v0[6]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[1];
    v6 = v0[6];
    v7 = v0[7];
    v8 = v0[5];

    return v5(v8, v6, v7);
  }
}

uint64_t sub_1E107A9C0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1E107AA1C()
{
  result = qword_1ECE8AFF0;
  if (!qword_1ECE8AFF0)
  {
    sub_1E10AE26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AFF0);
  }

  return result;
}

uint64_t type metadata accessor for AccessTokenResource()
{
  result = qword_1EE17F520;
  if (!qword_1EE17F520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E107AAE8()
{
  result = sub_1E10ADCBC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E107AB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E107AC04(uint64_t a1)
{
  v2 = sub_1E107B428();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E107AC40(uint64_t a1)
{
  v2 = sub_1E107B428();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E107AC7C()
{
  if (*v0)
  {
    result = 0x6974617269707865;
  }

  else
  {
    result = 0x654B737365636361;
  }

  *v0;
  return result;
}

uint64_t sub_1E107ACC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x654B737365636361 && a2 == 0xE900000000000079;
  if (v6 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEE00656D69546E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

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

uint64_t sub_1E107ADB4(uint64_t a1)
{
  v2 = sub_1E107B47C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E107ADF0(uint64_t a1)
{
  v2 = sub_1E107B47C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E107AE2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AFF8, &qword_1E10B96E8);
  v31 = *(v33 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v34 = &v27 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B000, &qword_1E10B96F0);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for AccessTokenResource();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E107B428();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v14;
  v29 = a1;
  v22 = v32;
  v21 = v33;
  sub_1E107B47C();
  sub_1E10AE76C();
  v36 = 0;
  *v19 = sub_1E10AE7BC();
  v19[1] = v23;
  v35 = 1;
  sub_1E10AE7DC();
  v24 = v31;
  v25 = v19 + *(v28 + 20);
  sub_1E10ADC5C();
  (*(v24 + 8))(v34, v21);
  (*(v22 + 8))(v13, v8);
  sub_1E0FF3CC8(v19, v30);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_1E0FFDB78(v19);
}

uint64_t sub_1E107B1B8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B008, &qword_1E10B96F8);
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B010, &qword_1E10B9700);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v23 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E107B428();
  sub_1E10AEA5C();
  sub_1E107B47C();
  sub_1E10AE82C();
  v18 = *v2;
  v19 = v2[1];
  v26 = 0;
  v20 = v23;
  sub_1E10AE86C();
  if (!v20)
  {
    v21 = v2 + *(type metadata accessor for AccessTokenResource() + 20);
    sub_1E10ADC6C();
    v25 = 1;
    sub_1E10AE88C();
  }

  (*(v24 + 8))(v9, v4);
  return (*(v11 + 8))(v16, v10);
}

unint64_t sub_1E107B428()
{
  result = qword_1EE17F568[0];
  if (!qword_1EE17F568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE17F568);
  }

  return result;
}

unint64_t sub_1E107B47C()
{
  result = qword_1EE17F550;
  if (!qword_1EE17F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17F550);
  }

  return result;
}

unint64_t sub_1E107B4F4()
{
  result = qword_1ECE8B018;
  if (!qword_1ECE8B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B018);
  }

  return result;
}

unint64_t sub_1E107B54C()
{
  result = qword_1ECE8B020;
  if (!qword_1ECE8B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B020);
  }

  return result;
}

unint64_t sub_1E107B5A4()
{
  result = qword_1EE17F540;
  if (!qword_1EE17F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17F540);
  }

  return result;
}

unint64_t sub_1E107B5FC()
{
  result = qword_1EE17F548;
  if (!qword_1EE17F548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17F548);
  }

  return result;
}

unint64_t sub_1E107B654()
{
  result = qword_1EE17F558;
  if (!qword_1EE17F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17F558);
  }

  return result;
}

unint64_t sub_1E107B6AC()
{
  result = qword_1EE17F560;
  if (!qword_1EE17F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17F560);
  }

  return result;
}

uint64_t sub_1E107B700@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B2B0, &qword_1E10B6B60) + 44);
  v6 = *(v5 + 1);
  if (v6)
  {
    v7 = *v5;
    v8 = *(v5 + 5);
    if (v8)
    {
      v12 = *(v5 + 88);
      v9 = *(v5 + 4);

      v10 = v12;
    }

    else
    {
      v9 = 0;
      v10 = 0uLL;
    }

    *a1 = v4;
    *(a1 + 8) = v3;
    *(a1 + 16) = v7;
    *(a1 + 24) = v6;
    *(a1 + 32) = v10;
    *(a1 + 48) = v9;
    *(a1 + 56) = v8;
  }

  else
  {
    result = sub_1E10AE6FC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E107B814(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B048, &unk_1E10B9A30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E107C0C8();
  sub_1E10AEA5C();
  v20 = *v3;
  LOBYTE(v18[0]) = 0;
  sub_1E0FF4F38();
  sub_1E10AE8AC();
  if (!v2)
  {
    v20 = v3[1];
    LOBYTE(v18[0]) = 1;
    sub_1E10AE8AC();
    v13 = v3[3];
    v14 = v3[5];
    v26 = v3[4];
    v27 = v14;
    v15 = v3[3];
    v25[0] = v3[2];
    v25[1] = v15;
    v16 = v3[5];
    v22 = v26;
    v23 = v16;
    v28 = *(v3 + 12);
    v24 = *(v3 + 12);
    v20 = v25[0];
    v21 = v13;
    v29 = 2;
    sub_1E1028CE0(v25, v18);
    sub_1E1028D50();
    sub_1E10AE85C();
    v18[2] = v22;
    v18[3] = v23;
    v19 = v24;
    v18[1] = v21;
    v18[0] = v20;
    sub_1E1028DA4(v18);
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_1E107BAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E107BC90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E107BAC8(uint64_t a1)
{
  v2 = sub_1E107C0C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E107BB04(uint64_t a1)
{
  v2 = sub_1E107C0C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1E107BB40@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E107BDA8(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

unint64_t sub_1E107BBB8(uint64_t a1)
{
  *(a1 + 8) = sub_1E107BBE8();
  result = sub_1E107BC3C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E107BBE8()
{
  result = qword_1ECE8B028;
  if (!qword_1ECE8B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B028);
  }

  return result;
}

unint64_t sub_1E107BC3C()
{
  result = qword_1ECE8B030;
  if (!qword_1ECE8B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B030);
  }

  return result;
}

uint64_t sub_1E107BC90(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1869049708 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E10AE8FC();

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

uint64_t sub_1E107BDA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B038, &qword_1E10B9A28);
  v5 = *(v52 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E107C0C8();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v5;
  v25 = a2;
  LOBYTE(v26) = 0;
  sub_1E0FF4EE4();
  v13 = v52;
  sub_1E10AE7FC();
  *(&v24 + 1) = *(&v33 + 1);
  v14 = v33;
  LOBYTE(v26) = 1;
  sub_1E10AE7FC();
  v23 = v33;
  *&v24 = v14;
  v15 = *(&v33 + 1);
  v41 = 2;
  sub_1E1028C24();
  sub_1E10AE7AC();
  (*(v12 + 8))(v10, v13);
  v49 = v44;
  v50 = v45;
  v51 = v46;
  v47 = v42;
  v48 = v43;
  v16 = v24;
  v26 = v24;
  v17 = v23;
  *&v27 = v23;
  *(&v27 + 1) = v15;
  v32 = v46;
  v30 = v44;
  v31 = v45;
  v28 = v42;
  v29 = v43;
  sub_1E107C11C(&v26, &v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v33 = v16;
  v34 = v17;
  v35 = v15;
  v38 = v49;
  v39 = v50;
  v40 = v51;
  v36 = v47;
  v37 = v48;
  result = sub_1E107C154(&v33);
  v19 = v31;
  v20 = v25;
  *(v25 + 64) = v30;
  *(v20 + 80) = v19;
  *(v20 + 96) = v32;
  v21 = v27;
  *v20 = v26;
  *(v20 + 16) = v21;
  v22 = v29;
  *(v20 + 32) = v28;
  *(v20 + 48) = v22;
  return result;
}

unint64_t sub_1E107C0C8()
{
  result = qword_1ECE8B040;
  if (!qword_1ECE8B040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B040);
  }

  return result;
}

unint64_t sub_1E107C198()
{
  result = qword_1ECE8B050;
  if (!qword_1ECE8B050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B050);
  }

  return result;
}

unint64_t sub_1E107C1F0()
{
  result = qword_1ECE8B058;
  if (!qword_1ECE8B058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B058);
  }

  return result;
}

unint64_t sub_1E107C248()
{
  result = qword_1ECE8B060;
  if (!qword_1ECE8B060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B060);
  }

  return result;
}

uint64_t Dance.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Dance.category.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];

  return v1;
}

uint64_t Dance.name.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t type metadata accessor for Dance()
{
  result = qword_1EE17ECD0;
  if (!qword_1EE17ECD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Dance.venue.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Dance() + 32));
  v4 = v3[7];
  v5 = v3[5];
  v25 = v3[6];
  v26 = v4;
  v6 = v3[7];
  v7 = v3[9];
  v27 = v3[8];
  v8 = v27;
  v28 = v7;
  v9 = v3[3];
  v11 = v3[1];
  v21 = v3[2];
  v10 = v21;
  v22 = v9;
  v12 = v3[3];
  v13 = v3[5];
  v23 = v3[4];
  v14 = v23;
  v24 = v13;
  v15 = v3[1];
  v20[0] = *v3;
  v16 = v20[0];
  v20[1] = v15;
  a1[6] = v25;
  a1[7] = v6;
  v17 = v3[9];
  a1[8] = v8;
  a1[9] = v17;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v14;
  a1[5] = v5;
  *a1 = v16;
  a1[1] = v11;
  return sub_1E0FE6720(v20, &v19);
}

uint64_t Dance.tickets.getter()
{
  v1 = *(v0 + *(type metadata accessor for Dance() + 44));
}

uint64_t sub_1E107C540(uint64_t a1)
{
  v2 = sub_1E107E438();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E107C57C(uint64_t a1)
{
  v2 = sub_1E107E438();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Dance.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B068, &qword_1E10B9B70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v33[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E107E438();
  sub_1E10AEA5C();
  v13 = *(v3 + 8);
  *&v47 = *v3;
  *(&v47 + 1) = v13;
  LOBYTE(v37) = 0;
  sub_1E0FED9C8();
  sub_1E10AE8AC();
  if (!v2)
  {
    v14 = *(v3 + 24);
    *&v47 = *(v3 + 16);
    *(&v47 + 1) = v14;
    v48 = *(v3 + 32);
    LOBYTE(v37) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B078, &qword_1E10B9B78);
    sub_1E107E48C(&qword_1ECE8B080);
    sub_1E10AE8AC();
    v15 = *(v3 + 48);
    v16 = *(v3 + 56);
    LOBYTE(v47) = 2;
    sub_1E10AE86C();
    v17 = type metadata accessor for Dance();
    v18 = v17[7];
    v57 = 3;
    type metadata accessor for Time();
    sub_1E107E7FC(&qword_1ECE88CB0, type metadata accessor for Time);
    sub_1E10AE8AC();
    v19 = (v3 + v17[8]);
    v20 = v19[7];
    v21 = v19[5];
    v53 = v19[6];
    v54 = v20;
    v22 = v19[7];
    v23 = v19[9];
    v55 = v19[8];
    v56 = v23;
    v24 = v19[3];
    v25 = v19[1];
    v49 = v19[2];
    v50 = v24;
    v26 = v19[3];
    v27 = v19[5];
    v51 = v19[4];
    v52 = v27;
    v28 = v19[1];
    v47 = *v19;
    v48 = v28;
    v43 = v53;
    v44 = v22;
    v29 = v19[9];
    v45 = v55;
    v46 = v29;
    v39 = v49;
    v40 = v26;
    v41 = v51;
    v42 = v21;
    v37 = v47;
    v38 = v25;
    v36 = 4;
    sub_1E0FE6720(&v47, v35);
    sub_1E0FEDA64();
    sub_1E10AE8AC();
    v35[6] = v43;
    v35[7] = v44;
    v35[8] = v45;
    v35[9] = v46;
    v35[2] = v39;
    v35[3] = v40;
    v35[4] = v41;
    v35[5] = v42;
    v35[0] = v37;
    v35[1] = v38;
    sub_1E0FEDAB8(v35);
    v30 = v17[9];
    LOBYTE(v34) = 5;
    type metadata accessor for EventAttribution();
    sub_1E107E7FC(&qword_1ECE88CB8, type metadata accessor for EventAttribution);
    sub_1E10AE85C();
    v31 = v17[10];
    LOBYTE(v34) = 6;
    type metadata accessor for TicketAttribution();
    sub_1E107E7FC(&qword_1ECE88CE8, type metadata accessor for TicketAttribution);
    sub_1E10AE85C();
    v34 = *(v3 + v17[11]);
    v33[7] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
    sub_1E107E4DC(&qword_1ECE88CF8, &qword_1ECE88D00);
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t Dance.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v52 = type metadata accessor for TicketAttribution();
  v51 = *(v52 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v49 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  v50 = &v49 - v11;
  v12 = type metadata accessor for EventAttribution();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8) - 8) + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v49 - v22;
  v24 = *v1;
  v25 = v1[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v26 = v1[2];
  v27 = v1[3];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v28 = v1[6];
  v29 = v1[7];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v30 = type metadata accessor for Dance();
  v31 = v1 + v30[7];
  sub_1E10ADACC();
  sub_1E107E7FC(&qword_1EE17FF80, MEMORY[0x1E6968130]);
  sub_1E10ADFFC();
  v32 = *(type metadata accessor for Time() + 20);
  sub_1E10ADE6C();
  sub_1E107E7FC(&unk_1EE17FF40, MEMORY[0x1E6969BC0]);
  sub_1E10ADFFC();
  v33 = (v2 + v30[8]);
  v34 = v33[7];
  v59 = v33[6];
  v60 = v34;
  v35 = v33[9];
  v61 = v33[8];
  v62 = v35;
  v36 = v33[3];
  v55 = v33[2];
  v56 = v36;
  v37 = v33[5];
  v57 = v33[4];
  v58 = v37;
  v38 = v33[1];
  v53 = *v33;
  v54 = v38;
  Venue.hash(into:)();
  sub_1E0FEDC50(v2 + v30[9], v23, &qword_1ECE88C70, &qword_1E10AF9C8);
  if ((*(v13 + 48))(v23, 1, v12) == 1)
  {
    sub_1E10AE9EC();
  }

  else
  {
    sub_1E0FEDD58(v23, v18, type metadata accessor for EventAttribution);
    sub_1E10AE9EC();
    v39 = *v18;
    v40 = v18[1];
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
    v41 = *(v12 + 20);
    sub_1E10ADBBC();
    sub_1E107E7FC(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
    sub_1E10ADFFC();
    sub_1E107E5E0(v18, type metadata accessor for EventAttribution);
  }

  v42 = v50;
  sub_1E0FEDC50(v2 + v30[10], v50, &qword_1ECE88C80, &qword_1E10AF9D0);
  v43 = v52;
  if ((*(v51 + 48))(v42, 1, v52) == 1)
  {
    sub_1E10AE9EC();
  }

  else
  {
    v44 = v49;
    sub_1E0FEDD58(v42, v49, type metadata accessor for TicketAttribution);
    sub_1E10AE9EC();
    v45 = *v44;
    v46 = v44[1];
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
    v47 = *(v43 + 20);
    sub_1E10ADBBC();
    sub_1E107E7FC(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
    sub_1E10ADFFC();
    sub_1E107E5E0(v44, type metadata accessor for TicketAttribution);
  }

  return sub_1E0FEBCA4(a1, *(v2 + v30[11]));
}

uint64_t Dance.hashValue.getter()
{
  sub_1E10AE9CC();
  Dance.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t Dance.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v5);
  v54 = v51 - v6;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8) - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v51 - v10;
  v12 = type metadata accessor for Time();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B088, &qword_1E10B9B80);
  v55 = *(v56 - 8);
  v18 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v51 - v21;
  v23 = type metadata accessor for Dance();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = (v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = a1[3];
  v29 = a1[4];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_1E107E438();
  v57 = v22;
  v31 = v58;
  sub_1E10AEA3C();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1(v72);
  }

  v51[1] = v12;
  v52 = v17;
  v32 = v55;
  v58 = v23;
  LOBYTE(v60) = 0;
  sub_1E0FEDD04();
  v33 = v56;
  sub_1E10AE7FC();
  v34 = *(&v62 + 1);
  v35 = v28;
  *v28 = v62;
  v28[1] = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B078, &qword_1E10B9B78);
  LOBYTE(v60) = 1;
  sub_1E107E48C(&qword_1ECE8B090);
  sub_1E10AE7FC();
  v36 = v32;
  v37 = *(&v62 + 1);
  *(v35 + 16) = v62;
  *(v35 + 24) = v37;
  *(v35 + 32) = v63;
  LOBYTE(v62) = 2;
  *(v35 + 48) = sub_1E10AE7BC();
  *(v35 + 56) = v38;
  LOBYTE(v62) = 3;
  sub_1E107E7FC(&qword_1EE17EE88, type metadata accessor for Time);
  v39 = v52;
  sub_1E10AE7FC();
  v40 = v58;
  sub_1E0FEDD58(v39, v35 + v58[7], type metadata accessor for Time);
  v61 = 4;
  sub_1E0FEDDC0();
  sub_1E10AE7FC();
  LODWORD(v52) = 1;
  v41 = (v35 + v40[8]);
  v42 = v69;
  v43 = v70;
  v41[6] = v68;
  v41[7] = v42;
  v44 = v71;
  v41[8] = v43;
  v41[9] = v44;
  v45 = v65;
  v41[2] = v64;
  v41[3] = v45;
  v46 = v67;
  v41[4] = v66;
  v41[5] = v46;
  v47 = v63;
  *v41 = v62;
  v41[1] = v47;
  type metadata accessor for EventAttribution();
  LOBYTE(v60) = 5;
  sub_1E107E7FC(&qword_1ECE88D30, type metadata accessor for EventAttribution);
  sub_1E10AE7AC();
  sub_1E0FEDEF4(v11, v35 + v40[9], &qword_1ECE88C70, &qword_1E10AF9C8);
  type metadata accessor for TicketAttribution();
  LOBYTE(v60) = 6;
  sub_1E107E7FC(&qword_1ECE88D50, type metadata accessor for TicketAttribution);
  v48 = v54;
  sub_1E10AE7AC();
  sub_1E0FEDEF4(v48, v35 + v40[10], &qword_1ECE88C80, &qword_1E10AF9D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
  v59 = 7;
  sub_1E107E4DC(&qword_1ECE88D58, &qword_1ECE88D60);
  v49 = v57;
  sub_1E10AE7FC();
  (*(v36 + 8))(v49, v33);
  *(v35 + v40[11]) = v60;
  sub_1E107E578(v35, v53, type metadata accessor for Dance);
  __swift_destroy_boxed_opaque_existential_1(v72);
  return sub_1E107E5E0(v35, type metadata accessor for Dance);
}

uint64_t sub_1E107D998()
{
  sub_1E10AE9CC();
  Dance.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t sub_1E107D9DC()
{
  sub_1E10AE9CC();
  Dance.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t _s12ShazamEvents5DanceV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TicketAttribution();
  v93 = *(v4 - 8);
  v5 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v90 = (&v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v91 = (&v87 - v12);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F40, &qword_1E10B0600);
  v13 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v87 - v16;
  v18 = type metadata accessor for EventAttribution();
  v94 = *(v18 - 8);
  v19 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8) - 8) + 64);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = (&v87 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F50, &qword_1E10B0610);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v87 - v33;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E10AE8FC() & 1) == 0)
  {
    goto LABEL_32;
  }

  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1E10AE8FC() & 1) == 0)
  {
    goto LABEL_32;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1E10AE8FC() & 1) == 0)
  {
    goto LABEL_32;
  }

  v87 = v4;
  v88 = v17;
  v89 = type metadata accessor for Dance();
  v35 = v89[7];
  v36 = a1 + v35;
  v37 = a2 + v35;
  if ((sub_1E10ADA7C() & 1) == 0)
  {
    goto LABEL_32;
  }

  v38 = type metadata accessor for Time();
  if ((MEMORY[0x1E12ED5E0](&v36[*(v38 + 20)], &v37[*(v38 + 20)]) & 1) == 0)
  {
    goto LABEL_32;
  }

  v39 = v89;
  v40 = (a1 + v89[8]);
  v41 = v40[5];
  v42 = v40[7];
  v121 = v40[6];
  v122 = v42;
  v43 = v40[9];
  v44 = v40[7];
  v123 = v40[8];
  v124 = v43;
  v45 = v40[3];
  v46 = v40[1];
  v117 = v40[2];
  v118 = v45;
  v47 = v40[5];
  v48 = v40[3];
  v119 = v40[4];
  v120 = v47;
  v49 = v40[1];
  v116[0] = *v40;
  v116[1] = v49;
  v110 = v119;
  v111 = v41;
  v108 = v117;
  v109 = v48;
  v50 = v40[9];
  v114 = v123;
  v115 = v50;
  v112 = v121;
  v113 = v44;
  v106 = v116[0];
  v107 = v46;
  v51 = (a2 + v89[8]);
  v52 = v51[7];
  v53 = v51[5];
  v130 = v51[6];
  v131 = v52;
  v54 = v51[7];
  v55 = v51[9];
  v132 = v51[8];
  v133 = v55;
  v56 = v51[3];
  v57 = v51[1];
  v126 = v51[2];
  v127 = v56;
  v58 = v51[3];
  v59 = v51[5];
  v128 = v51[4];
  v129 = v59;
  v60 = v51[1];
  v125[0] = *v51;
  v125[1] = v60;
  v102 = v130;
  v103 = v54;
  v61 = v51[9];
  v104 = v132;
  v105 = v61;
  v98 = v126;
  v99 = v58;
  v100 = v128;
  v101 = v53;
  v96 = v125[0];
  v97 = v57;
  sub_1E0FE6720(v116, v95);
  sub_1E0FE6720(v125, v95);
  v62 = _s12ShazamEvents5VenueV2eeoiySbAC_ACtFZ_0(&v106, &v96);
  v134[6] = v102;
  v134[7] = v103;
  v134[8] = v104;
  v134[9] = v105;
  v134[2] = v98;
  v134[3] = v99;
  v134[4] = v100;
  v134[5] = v101;
  v134[0] = v96;
  v134[1] = v97;
  sub_1E0FEDAB8(v134);
  v135[6] = v112;
  v135[7] = v113;
  v135[8] = v114;
  v135[9] = v115;
  v135[2] = v108;
  v135[3] = v109;
  v135[4] = v110;
  v135[5] = v111;
  v135[0] = v106;
  v135[1] = v107;
  sub_1E0FEDAB8(v135);
  if (!v62)
  {
    goto LABEL_32;
  }

  v63 = v39[9];
  v64 = *(v29 + 48);
  sub_1E0FEDC50(a1 + v63, v34, &qword_1ECE88C70, &qword_1E10AF9C8);
  v65 = a2 + v63;
  v66 = v64;
  sub_1E0FEDC50(v65, &v34[v64], &qword_1ECE88C70, &qword_1E10AF9C8);
  v67 = *(v94 + 48);
  if (v67(v34, 1, v18) != 1)
  {
    sub_1E0FEDC50(v34, v28, &qword_1ECE88C70, &qword_1E10AF9C8);
    v94 = v66;
    v70 = v67(&v34[v66], 1, v18);
    v69 = v88;
    if (v70 != 1)
    {
      sub_1E0FEDD58(&v34[v94], v23, type metadata accessor for EventAttribution);
      if (*v28 == *v23 && v28[1] == v23[1] || (sub_1E10AE8FC() & 1) != 0)
      {
        v74 = *(v18 + 20);
        v75 = sub_1E10ADB8C();
        sub_1E107E5E0(v23, type metadata accessor for EventAttribution);
        sub_1E107E5E0(v28, type metadata accessor for EventAttribution);
        sub_1E0FF0440(v34, &qword_1ECE88C70, &qword_1E10AF9C8);
        if ((v75 & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_24;
      }

      sub_1E107E5E0(v23, type metadata accessor for EventAttribution);
      sub_1E107E5E0(v28, type metadata accessor for EventAttribution);
      v71 = &qword_1ECE88C70;
      v72 = &qword_1E10AF9C8;
LABEL_19:
      v73 = v34;
LABEL_31:
      sub_1E0FF0440(v73, v71, v72);
      goto LABEL_32;
    }

    sub_1E107E5E0(v28, type metadata accessor for EventAttribution);
LABEL_18:
    v71 = &qword_1ECE88F50;
    v72 = &qword_1E10B0610;
    goto LABEL_19;
  }

  v68 = v67(&v34[v66], 1, v18);
  v69 = v88;
  if (v68 != 1)
  {
    goto LABEL_18;
  }

  sub_1E0FF0440(v34, &qword_1ECE88C70, &qword_1E10AF9C8);
LABEL_24:
  v76 = v89[10];
  v77 = *(v92 + 48);
  sub_1E0FEDC50(a1 + v76, v69, &qword_1ECE88C80, &qword_1E10AF9D0);
  sub_1E0FEDC50(a2 + v76, v69 + v77, &qword_1ECE88C80, &qword_1E10AF9D0);
  v78 = *(v93 + 48);
  v79 = v87;
  if (v78(v69, 1, v87) == 1)
  {
    if (v78(v69 + v77, 1, v79) == 1)
    {
      sub_1E0FF0440(v69, &qword_1ECE88C80, &qword_1E10AF9D0);
LABEL_38:
      v81 = sub_1E0FFE0A4(*(a1 + v89[11]), *(a2 + v89[11]));
      return v81 & 1;
    }

    goto LABEL_29;
  }

  v80 = v91;
  sub_1E0FEDC50(v69, v91, &qword_1ECE88C80, &qword_1E10AF9D0);
  if (v78(v69 + v77, 1, v79) == 1)
  {
    sub_1E107E5E0(v80, type metadata accessor for TicketAttribution);
LABEL_29:
    v71 = &qword_1ECE88F40;
    v72 = &qword_1E10B0600;
LABEL_30:
    v73 = v69;
    goto LABEL_31;
  }

  v83 = v69 + v77;
  v84 = v90;
  sub_1E0FEDD58(v83, v90, type metadata accessor for TicketAttribution);
  if ((*v80 != *v84 || v80[1] != v84[1]) && (sub_1E10AE8FC() & 1) == 0)
  {
    sub_1E107E5E0(v84, type metadata accessor for TicketAttribution);
    sub_1E107E5E0(v80, type metadata accessor for TicketAttribution);
    v71 = &qword_1ECE88C80;
    v72 = &qword_1E10AF9D0;
    goto LABEL_30;
  }

  v85 = *(v87 + 20);
  v86 = sub_1E10ADB8C();
  sub_1E107E5E0(v84, type metadata accessor for TicketAttribution);
  sub_1E107E5E0(v80, type metadata accessor for TicketAttribution);
  sub_1E0FF0440(v69, &qword_1ECE88C80, &qword_1E10AF9D0);
  if (v86)
  {
    goto LABEL_38;
  }

LABEL_32:
  v81 = 0;
  return v81 & 1;
}

unint64_t sub_1E107E438()
{
  result = qword_1ECE8B070;
  if (!qword_1ECE8B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B070);
  }

  return result;
}

uint64_t sub_1E107E48C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B078, &qword_1E10B9B78);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E107E4DC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
    sub_1E107E7FC(a2, type metadata accessor for Ticket);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E107E578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E107E5E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E107E640(uint64_t a1)
{
  result = sub_1E107E7FC(&qword_1EE17ECE0, type metadata accessor for Dance);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E107E6E0(void *a1)
{
  a1[1] = sub_1E107E7FC(&qword_1EE17ECF8, type metadata accessor for Dance);
  a1[2] = sub_1E107E7FC(&qword_1EE17ED10, type metadata accessor for Dance);
  a1[3] = sub_1E107E7FC(&qword_1EE17ED08, type metadata accessor for Dance);
  result = sub_1E107E7FC(&qword_1EE17ECF0, type metadata accessor for Dance);
  a1[4] = result;
  return result;
}

uint64_t sub_1E107E7FC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E107E86C()
{
  sub_1E107E9E8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Time();
    if (v1 <= 0x3F)
    {
      sub_1E100EF28(319, &qword_1ECE88DE0, type metadata accessor for EventAttribution, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1E100EF28(319, qword_1ECE88DE8, type metadata accessor for TicketAttribution, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1E100EF28(319, &qword_1EE17E428, type metadata accessor for Ticket, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E107E9E8()
{
  if (!qword_1ECE8B098)
  {
    type metadata accessor for Dance();
    sub_1E107E7FC(&qword_1EE17ECE8, type metadata accessor for Dance);
    v0 = type metadata accessor for EventCategory();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE8B098);
    }
  }
}

unint64_t sub_1E107EA90()
{
  result = qword_1ECE8B0A0;
  if (!qword_1ECE8B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B0A0);
  }

  return result;
}

unint64_t sub_1E107EAE8()
{
  result = qword_1ECE8B0A8;
  if (!qword_1ECE8B0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B0A8);
  }

  return result;
}

unint64_t sub_1E107EB40()
{
  result = qword_1ECE8B0B0;
  if (!qword_1ECE8B0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B0B0);
  }

  return result;
}

uint64_t PartialEvent.id.getter()
{
  v0 = sub_1E0FEE5D0();

  return v0;
}

uint64_t PartialEvent.localizedEventTypeName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PartialEvent.category.getter()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];

  return v1;
}

uint64_t PartialEvent.name.getter()
{
  v0 = sub_1E10806D0();

  return v0;
}

uint64_t PartialEvent.venue.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (v2 + *(a1 + 52));
  v4 = v3[7];
  v5 = v3[5];
  v25 = v3[6];
  v26 = v4;
  v6 = v3[7];
  v7 = v3[9];
  v27 = v3[8];
  v8 = v27;
  v28 = v7;
  v9 = v3[3];
  v11 = v3[1];
  v21 = v3[2];
  v10 = v21;
  v22 = v9;
  v12 = v3[3];
  v13 = v3[5];
  v23 = v3[4];
  v14 = v23;
  v24 = v13;
  v15 = v3[1];
  v20[0] = *v3;
  v16 = v20[0];
  v20[1] = v15;
  a2[6] = v25;
  a2[7] = v6;
  v17 = v3[9];
  a2[8] = v8;
  a2[9] = v17;
  a2[2] = v10;
  a2[3] = v12;
  a2[4] = v14;
  a2[5] = v5;
  *a2 = v16;
  a2[1] = v11;
  return sub_1E0FE6720(v20, &v19);
}

uint64_t static PartialEvent.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  v6 = a2[6];
  v7 = a2[7];
  if ((static EventCategory.== infix<A, B>(_:_:)(a1[4], a1[5], a1[6], a1[7], a2[4], a2[5]) & 1) == 0 || (a1[8] != a2[8] || a1[9] != a2[9]) && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for PartialEvent();
  v9 = v8[12];
  v10 = a1 + v9;
  v11 = a2 + v9;
  if ((sub_1E10ADA7C() & 1) == 0)
  {
    return 0;
  }

  v12 = type metadata accessor for Time();
  if ((MEMORY[0x1E12ED5E0](&v10[*(v12 + 20)], &v11[*(v12 + 20)]) & 1) == 0)
  {
    return 0;
  }

  v13 = (a1 + v8[13]);
  v14 = v13[5];
  v15 = v13[7];
  v72 = v13[6];
  v73 = v15;
  v16 = v13[9];
  v17 = v13[7];
  v74 = v13[8];
  v75 = v16;
  v18 = v13[3];
  v19 = v13[1];
  v68 = v13[2];
  v69 = v18;
  v20 = v13[5];
  v21 = v13[3];
  v70 = v13[4];
  v71 = v20;
  v22 = v13[1];
  v67[0] = *v13;
  v67[1] = v22;
  v61 = v70;
  v62 = v14;
  v23 = v13[9];
  v65 = v74;
  v66 = v23;
  v63 = v72;
  v64 = v17;
  v59 = v68;
  v60 = v21;
  v57 = v67[0];
  v58 = v19;
  v24 = (a2 + v8[13]);
  v25 = v24[7];
  v26 = v24[5];
  v81 = v24[6];
  v82 = v25;
  v27 = v24[7];
  v28 = v24[9];
  v83 = v24[8];
  v84 = v28;
  v29 = v24[3];
  v30 = v24[1];
  v77 = v24[2];
  v78 = v29;
  v31 = v24[3];
  v32 = v24[5];
  v79 = v24[4];
  v80 = v32;
  v33 = v24[1];
  v76[0] = *v24;
  v76[1] = v33;
  v53 = v81;
  v54 = v27;
  v34 = v24[9];
  v55 = v83;
  v56 = v34;
  v49 = v77;
  v50 = v31;
  v51 = v79;
  v52 = v26;
  v47 = v76[0];
  v48 = v30;
  sub_1E0FE6720(v67, v46);
  sub_1E0FE6720(v76, v46);
  v35 = _s12ShazamEvents5VenueV2eeoiySbAC_ACtFZ_0(&v57, &v47);
  v85[6] = v53;
  v85[7] = v54;
  v85[8] = v55;
  v85[9] = v56;
  v85[2] = v49;
  v85[3] = v50;
  v85[4] = v51;
  v85[5] = v52;
  v85[0] = v47;
  v85[1] = v48;
  sub_1E0FEDAB8(v85);
  v86[6] = v63;
  v86[7] = v64;
  v86[8] = v65;
  v86[9] = v66;
  v86[2] = v59;
  v86[3] = v60;
  v86[4] = v61;
  v86[5] = v62;
  v86[0] = v57;
  v86[1] = v58;
  sub_1E0FEDAB8(v86);
  if (!v35 || *(a1 + v8[14]) != *(a2 + v8[14]))
  {
    return 0;
  }

  v37 = v8[15];
  v38 = *(a1 + v37);
  v39 = *(a2 + v37);
  if (v38)
  {
    if (!v39)
    {
      return 0;
    }

    v40 = *(a2 + v37);

    v41 = sub_1E0FFE58C(v38, v39);

    if ((v41 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  v42 = v8[16];
  v43 = *(a1 + v42);
  v44 = *(a2 + v42);
  if (v43)
  {
    if (v44)
    {

      v45 = sub_1E0FFEBF0(v43, v44);

      if (v45)
      {
        return 1;
      }
    }
  }

  else if (!v44)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1E107F028(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E10C0BF0 == a2 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65756E6576 && a2 == 0xE500000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E10C00F0 == a2 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x747241636973756DLL && a2 == 0xEC00000073747369 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E10C0C10 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_1E107F300(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x79726F6765746163;
    if (a1 != 2)
    {
      v6 = 1701667182;
    }

    if (a1)
    {
      v5 = 0xD000000000000016;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000017;
    v2 = 0x747241636973756DLL;
    if (a1 != 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 1701669236;
    if (a1 != 4)
    {
      v3 = 0x65756E6576;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_1E107F41C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E107F300(*v1);
}

uint64_t sub_1E107F428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1E107F028(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E107F458@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1E1080B50();
  *a2 = result;
  return result;
}

uint64_t sub_1E107F484(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E107F4D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t PartialEvent.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  v43[0] = a2;
  v43[1] = v3;
  v43[2] = v4;
  type metadata accessor for PartialEvent.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1E10AE8BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v43 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v5;
  v14 = v43[3];
  sub_1E10AEA5C();
  v15 = *(v14 + 8);
  *&v67 = *v14;
  *(&v67 + 1) = v15;
  LOBYTE(v57) = 0;
  sub_1E0FED9C8();
  v16 = v78;
  sub_1E10AE8AC();
  if (!v16)
  {
    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
    LOBYTE(v67) = 1;
    sub_1E10AE86C();
    v78 = 0;
    v20 = *(v14 + 40);
    *&v67 = *(v14 + 32);
    *(&v67 + 1) = v20;
    v68 = *(v14 + 48);
    LOBYTE(v57) = 2;
    type metadata accessor for EventCategory();
    swift_getWitnessTable();
    v21 = v78;
    sub_1E10AE8AC();
    v22 = v6;
    if (!v21)
    {
      v23 = *(v14 + 64);
      v24 = *(v14 + 72);
      LOBYTE(v67) = 3;
      sub_1E10AE86C();
      v78 = 0;
      v25 = v43[0];
      v26 = *(v43[0] + 48);
      v77 = 4;
      type metadata accessor for Time();
      sub_1E1080780(&qword_1ECE88CB0, type metadata accessor for Time);
      v27 = v78;
      sub_1E10AE8AC();
      v78 = v27;
      if (v27)
      {
        return (*(v22 + 8))(v11, v13);
      }

      v28 = (v14 + v25[13]);
      v29 = v28[7];
      v30 = v28[5];
      v73 = v28[6];
      v74 = v29;
      v31 = v28[7];
      v32 = v28[9];
      v75 = v28[8];
      v76 = v32;
      v33 = v28[3];
      v34 = v28[1];
      v69 = v28[2];
      v70 = v33;
      v35 = v28[3];
      v36 = v28[5];
      v71 = v28[4];
      v72 = v36;
      v37 = v28[1];
      v67 = *v28;
      v68 = v37;
      v63 = v73;
      v64 = v31;
      v38 = v28[9];
      v65 = v75;
      v66 = v38;
      v59 = v69;
      v60 = v35;
      v61 = v71;
      v62 = v30;
      v57 = v67;
      v58 = v34;
      v56 = 5;
      sub_1E0FE6720(&v67, &v46);
      sub_1E0FEDA64();
      v39 = v78;
      sub_1E10AE8AC();
      v78 = v39;
      if (v39)
      {
        v52 = v63;
        v53 = v64;
        v54 = v65;
        v55 = v66;
        v48 = v59;
        v49 = v60;
        v50 = v61;
        v51 = v62;
        v46 = v57;
        v47 = v58;
        sub_1E0FEDAB8(&v46);
        return (*(v22 + 8))(v11, v13);
      }

      v52 = v63;
      v53 = v64;
      v54 = v65;
      v55 = v66;
      v48 = v59;
      v49 = v60;
      v50 = v61;
      v51 = v62;
      v46 = v57;
      v47 = v58;
      sub_1E0FEDAB8(&v46);
      v40 = *(v14 + v25[14]);
      LOBYTE(v45) = 6;
      v41 = v78;
      sub_1E10AE87C();
      v78 = v41;
      if (v41)
      {
        return (*(v22 + 8))(v11, v13);
      }

      v45 = *(v14 + v25[15]);
      v44 = 7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B0B8, &qword_1E10B9E08);
      sub_1E108082C(&qword_1ECE8B0C0, sub_1E1005408);
      v42 = v78;
      sub_1E10AE85C();
      v78 = v42;
      if (v42)
      {
        return (*(v22 + 8))(v11, v13);
      }

      v45 = *(v14 + v25[16]);
      v44 = 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B0C8, &qword_1E10B9E10);
      sub_1E1080708(&qword_1ECE8B0D0, sub_1E0FEEB48);
      v21 = v78;
      sub_1E10AE85C();
    }

    v78 = v21;
    return (*(v22 + 8))(v11, v13);
  }

  v78 = v16;
  return (*(v6 + 8))(v11, v13);
}

uint64_t PartialEvent.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = v2[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v8 = v2[2];
  v9 = v2[3];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v10 = v2[6];
  v11 = v2[7];
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  EventCategory.hash(into:)(a1, v2[4], v2[5]);
  v14 = v2[8];
  v15 = v2[9];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v16 = v2 + *(a2 + 48);
  sub_1E10ADACC();
  sub_1E1080780(&qword_1EE17FF80, MEMORY[0x1E6968130]);
  sub_1E10ADFFC();
  v17 = *(type metadata accessor for Time() + 20);
  sub_1E10ADE6C();
  sub_1E1080780(&unk_1EE17FF40, MEMORY[0x1E6969BC0]);
  sub_1E10ADFFC();
  v18 = (v3 + *(a2 + 52));
  v29 = v18[6];
  v30 = v18[7];
  v31 = v18[8];
  v32 = v18[9];
  v25 = v18[2];
  v26 = v18[3];
  v27 = v18[4];
  v28 = v18[5];
  v23 = *v18;
  v24 = v18[1];
  Venue.hash(into:)();
  v19 = *(v3 + *(a2 + 56));
  sub_1E10AE9EC();
  v20 = *(v3 + *(a2 + 60));
  sub_1E10AE9EC();
  if (v20)
  {
    sub_1E0FEBE48(a1, v20);
  }

  v21 = *(v3 + *(a2 + 64));
  if (!v21)
  {
    return sub_1E10AE9EC();
  }

  sub_1E10AE9EC();

  return sub_1E0FEC244(a1, v21);
}

uint64_t PartialEvent.hashValue.getter(uint64_t a1)
{
  sub_1E10AE9CC();
  PartialEvent.hash(into:)(v3, a1);
  return sub_1E10AEA0C();
}

uint64_t PartialEvent.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v47 = a3;
  v49 = type metadata accessor for Time();
  v5 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PartialEvent.CodingKeys();
  swift_getWitnessTable();
  v52 = sub_1E10AE81C();
  v50 = *(v52 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v45 - v12;
  v51 = a2;
  v14 = type metadata accessor for PartialEvent();
  v46 = *(v14 - 8);
  v15 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v45 - v18;
  v21 = a1[3];
  v20 = a1[4];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v22 = v67;
  sub_1E10AEA3C();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v53);
  }

  else
  {
    v23 = v50;
    v24 = v19;
    v67 = v14;
    LOBYTE(v55) = 0;
    sub_1E0FEDD04();
    v25 = v52;
    sub_1E10AE7FC();
    v26 = *(&v57 + 1);
    *v24 = v57;
    *(v24 + 1) = v26;
    LOBYTE(v57) = 1;
    v27 = v23;
    *(v24 + 2) = sub_1E10AE7BC();
    *(v24 + 3) = v28;
    type metadata accessor for EventCategory();
    v51 = v13;
    LOBYTE(v55) = 2;
    swift_getWitnessTable();
    sub_1E10AE7FC();
    v29 = *(&v57 + 1);
    *(v24 + 4) = v57;
    *(v24 + 5) = v29;
    *(v24 + 3) = v58;
    LOBYTE(v57) = 3;
    v30 = sub_1E10AE7BC();
    v45 = 0;
    *(v24 + 8) = v30;
    *(v24 + 9) = v31;
    LOBYTE(v57) = 4;
    sub_1E1080780(&qword_1EE17EE88, type metadata accessor for Time);
    v32 = v48;
    sub_1E10AE7FC();
    v33 = v67;
    sub_1E10807C8(v32, &v24[v67[12]]);
    v56 = 5;
    sub_1E0FEDDC0();
    sub_1E10AE7FC();
    v34 = &v24[v33[13]];
    v35 = v64;
    v36 = v65;
    *(v34 + 6) = v63;
    *(v34 + 7) = v35;
    v37 = v66;
    *(v34 + 8) = v36;
    *(v34 + 9) = v37;
    v38 = v60;
    *(v34 + 2) = v59;
    *(v34 + 3) = v38;
    v39 = v62;
    *(v34 + 4) = v61;
    *(v34 + 5) = v39;
    v40 = v58;
    *v34 = v57;
    *(v34 + 1) = v40;
    LOBYTE(v55) = 6;
    v24[v33[14]] = sub_1E10AE7CC() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B0B8, &qword_1E10B9E08);
    v54 = 7;
    sub_1E108082C(&qword_1EE17E450, sub_1E10053B4);
    sub_1E10AE7AC();
    *&v24[v67[15]] = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B0C8, &qword_1E10B9E10);
    v54 = 8;
    sub_1E1080708(&qword_1EE17E440, sub_1E0FEEAF4);
    sub_1E10AE7AC();
    v41 = v67;
    v42 = v67[16];
    (*(v27 + 8))(v51, v25);
    *&v24[v42] = v55;
    v43 = v46;
    (*(v46 + 16))(v47, v24, v41);
    __swift_destroy_boxed_opaque_existential_1(v53);
    return (*(v43 + 8))(v24, v41);
  }
}

uint64_t sub_1E1080524()
{
  v0 = sub_1E0FEE5D0();

  return v0;
}

uint64_t sub_1E1080560()
{
  v0 = sub_1E10806D0();

  return v0;
}

uint64_t sub_1E10805A8(uint64_t a1, uint64_t a2)
{
  sub_1E10AE9CC();
  PartialEvent.hash(into:)(v4, a2);
  return sub_1E10AEA0C();
}

uint64_t sub_1E1080624(void *a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static PartialEvent.== infix(_:_:)(a1, a2);
}

uint64_t PartialEvent<>.participants.getter()
{
  v1 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A9A8, &qword_1E10BCC70) + 60));
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  return v2;
}

{
  v1 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A998, &qword_1E10BCC60) + 64));
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1E10806D0()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t sub_1E1080708(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B0C8, &qword_1E10B9E10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1080780(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E10807C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Time();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E108082C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B0B8, &qword_1E10B9E08);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E10808AC(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  a1[3] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[4] = result;
  return result;
}

void sub_1E1080968(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for EventCategory();
  if (v3 <= 0x3F)
  {
    type metadata accessor for Time();
    if (v4 <= 0x3F)
    {
      sub_1E1080AA8(319, &qword_1EE17E448, &qword_1ECE8B0B8, &qword_1E10B9E08);
      if (v5 <= 0x3F)
      {
        sub_1E1080AA8(319, &qword_1EE17E438, &qword_1ECE8B0C8, &qword_1E10B9E10);
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E1080AA8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1E10AE4EC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12ShazamEvents24CompetitorInfoAttributesV5ScoreVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
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

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E1080B98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1E1080BF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_1E1080C68(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B100, &qword_1E10BA180);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1081818();
  sub_1E10AEA5C();
  v16[0] = *v3;
  v18 = 0;
  sub_1E108193C();
  sub_1E10AE85C();
  if (!v2)
  {
    v13 = *(v3 + 32);
    v16[0] = *(v3 + 16);
    v16[1] = v13;
    v17 = *(v3 + 48);
    v18 = 1;
    sub_1E0FEE620();
    sub_1E10AE85C();
    v14 = *(v3 + 56);
    LOBYTE(v16[0]) = 2;
    sub_1E10AE84C();
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_1E1080E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C616E6966 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E1080EB0(uint64_t a1)
{
  v2 = sub_1E1081B64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1080EEC(uint64_t a1)
{
  v2 = sub_1E1081B64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E1080F28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B128, &qword_1E10BA318);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v17 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1081B64();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = sub_1E10AE78C();
  v15 = v14;
  (*(v6 + 8))(v11, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v13;
  a2[1] = v15;
  return result;
}

uint64_t sub_1E10810A4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B138, &qword_1E10BA320);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v14 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1081B64();
  sub_1E10AEA5C();
  sub_1E10AE83C();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_1E10811E0()
{
  v1 = 0x4365727574786966;
  if (*v0 != 1)
  {
    v1 = 0x656D6F487369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65726F6373;
  }
}

uint64_t sub_1E108123C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E1081418(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E1081264(uint64_t a1)
{
  v2 = sub_1E1081818();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E10812A0(uint64_t a1)
{
  v2 = sub_1E1081818();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E10812DC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1E108152C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

unint64_t sub_1E1081340(uint64_t a1)
{
  *(a1 + 8) = sub_1E1081370();
  result = sub_1E10813C4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E1081370()
{
  result = qword_1ECE8B0D8;
  if (!qword_1ECE8B0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B0D8);
  }

  return result;
}

unint64_t sub_1E10813C4()
{
  result = qword_1ECE8B0E0;
  if (!qword_1ECE8B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B0E0);
  }

  return result;
}

uint64_t sub_1E1081418(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4365727574786966 && a2 == 0xEC000000726F6C6FLL || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D6F487369 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E10AE8FC();

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

uint64_t sub_1E108152C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B0E8, &qword_1E10BA178);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v23 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1081818();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v30) = 0;
  sub_1E108186C();
  sub_1E10AE7AC();
  v29 = a2;
  v14 = v33;
  v13 = v34;
  LOBYTE(v30) = 1;
  sub_1E0FEE674();
  sub_1E10AE7AC();
  v25 = v34;
  v26 = v33;
  v24 = v35;
  v27 = v36;
  v28 = v37;
  v41 = 2;
  v15 = sub_1E10AE79C();
  (*(v6 + 8))(v11, v5);
  *&v30 = v14;
  *(&v30 + 1) = v13;
  v17 = v25;
  v16 = v26;
  *&v31 = v26;
  *(&v31 + 1) = v25;
  v18 = v24;
  v19 = v28;
  *v32 = v24;
  *&v32[8] = v27;
  *&v32[16] = v28;
  v32[24] = v15;
  sub_1E10818D4(&v30, &v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v33 = v14;
  v34 = v13;
  v35 = v16;
  v36 = v17;
  v37 = v18;
  v38 = v27;
  v39 = v19;
  v40 = v15;
  result = sub_1E108190C(&v33);
  v21 = v31;
  v22 = v29;
  *v29 = v30;
  v22[1] = v21;
  v22[2] = *v32;
  *(v22 + 41) = *&v32[9];
  return result;
}

unint64_t sub_1E1081818()
{
  result = qword_1ECE8B0F0;
  if (!qword_1ECE8B0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B0F0);
  }

  return result;
}

unint64_t sub_1E108186C()
{
  result = qword_1ECE8B0F8;
  if (!qword_1ECE8B0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B0F8);
  }

  return result;
}

uint64_t sub_1E10818C0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_1E108193C()
{
  result = qword_1ECE8B108;
  if (!qword_1ECE8B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B108);
  }

  return result;
}

uint64_t sub_1E10819A0(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1E10819FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

unint64_t sub_1E1081A60()
{
  result = qword_1ECE8B110;
  if (!qword_1ECE8B110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B110);
  }

  return result;
}

unint64_t sub_1E1081AB8()
{
  result = qword_1ECE8B118;
  if (!qword_1ECE8B118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B118);
  }

  return result;
}

unint64_t sub_1E1081B10()
{
  result = qword_1ECE8B120;
  if (!qword_1ECE8B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B120);
  }

  return result;
}

unint64_t sub_1E1081B64()
{
  result = qword_1ECE8B130;
  if (!qword_1ECE8B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B130);
  }

  return result;
}

unint64_t sub_1E1081BCC()
{
  result = qword_1ECE8B140;
  if (!qword_1ECE8B140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B140);
  }

  return result;
}

unint64_t sub_1E1081C24()
{
  result = qword_1ECE8B148;
  if (!qword_1ECE8B148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B148);
  }

  return result;
}

unint64_t sub_1E1081C7C()
{
  result = qword_1ECE8B150;
  if (!qword_1ECE8B150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B150);
  }

  return result;
}

uint64_t sub_1E1081CD0(uint64_t a1, int a2)
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

uint64_t sub_1E1081D18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E1081D8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B188, &unk_1E10BA680) - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v62 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v62 - v13;
  if (sub_1E1082544())
  {
    v15 = sub_1E10ADBBC();
    v16 = *(*(v15 - 8) + 56);

    return v16(a1, 1, 1, v15);
  }

  else
  {
    v62 = v9;
    v63 = v8;
    v66 = v1;
    v67 = v14;
    v64 = v7;
    v65 = a1;
    v18 = v1[1];
    v19 = v1[4];
    v20 = *v1;
    v75 = v19;
    v22 = v19 + 64;
    v21 = *(v19 + 64);
    v68 = v19;
    v23 = 1 << *(v19 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & v21;
    sub_1E0FEDC50(&v75, &v73, &qword_1ECE8B180, &qword_1E10BA678);
    v26 = (v23 + 63) >> 6;

    v27 = 0;
    if (v25)
    {
      while (1)
      {
        v28 = v27;
LABEL_13:
        v29 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        v30 = (v28 << 10) | (16 * v29);
        v31 = (*(v68 + 48) + v30);
        v32 = *v31;
        v33 = v31[1];
        v34 = (*(v68 + 56) + v30);
        v36 = *v34;
        v35 = v34[1];
        v73 = v20;
        v74 = v18;
        v71 = 123;
        v72 = 0xE100000000000000;

        MEMORY[0x1E12ED840](v32, v33);
        MEMORY[0x1E12ED840](125, 0xE100000000000000);
        v69 = v36;
        v70 = v35;
        sub_1E106931C();
        v20 = sub_1E10AE50C();
        v38 = v37;

        v18 = v38;
        if (!v25)
        {
          goto LABEL_9;
        }
      }
    }

    while (1)
    {
LABEL_9:
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        return result;
      }

      if (v28 >= v26)
      {
        break;
      }

      v25 = *(v22 + 8 * v28);
      ++v27;
      if (v25)
      {
        v27 = v28;
        goto LABEL_13;
      }
    }

    v39 = v68;

    v40 = v67;
    sub_1E10ADBAC();

    v41 = v66[3];
    if (v41)
    {
      v42 = v66[2];
      v43 = 1 << *(v39 + 32);
      v44 = -1;
      if (v43 < 64)
      {
        v44 = ~(-1 << v43);
      }

      v45 = v44 & *(v39 + 64);
      sub_1E0FEDC50(&v75, &v73, &qword_1ECE8B180, &qword_1E10BA678);
      v46 = (v43 + 63) >> 6;

      for (i = 0; v45; v41 = v58)
      {
        v48 = i;
LABEL_24:
        v49 = __clz(__rbit64(v45));
        v45 &= v45 - 1;
        v50 = (v48 << 10) | (16 * v49);
        v51 = (*(v68 + 48) + v50);
        v52 = *v51;
        v53 = v51[1];
        v54 = (*(v68 + 56) + v50);
        v56 = *v54;
        v55 = v54[1];
        v73 = v42;
        v74 = v41;
        v71 = 123;
        v72 = 0xE100000000000000;

        MEMORY[0x1E12ED840](v52, v53);
        MEMORY[0x1E12ED840](125, 0xE100000000000000);
        v69 = v56;
        v70 = v55;
        sub_1E106931C();
        v42 = sub_1E10AE50C();
        v58 = v57;
      }

      while (1)
      {
        v48 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_33;
        }

        if (v48 >= v46)
        {

          v59 = v64;
          v40 = v67;
          sub_1E10ADB9C();
          v61 = v62;
          v60 = v63;
          (*(v62 + 56))(v59, 0, 1, v63);

          if ((*(v61 + 48))(v59, 1, v60) == 1)
          {
            goto LABEL_29;
          }

          sub_1E1069370(v59, v65);
          return sub_1E0FF0440(v40, &qword_1ECE88C78, &qword_1E10B5E50);
        }

        v45 = *(v22 + 8 * v48);
        ++i;
        if (v45)
        {
          i = v48;
          goto LABEL_24;
        }
      }
    }

    v61 = v62;
    v60 = v63;
    v59 = v64;
    (*(v62 + 56))(v64, 1, 1, v63);
LABEL_29:
    sub_1E0FEDC50(v40, v65, &qword_1ECE88C78, &qword_1E10B5E50);
    if ((*(v61 + 48))(v59, 1, v60) != 1)
    {
      sub_1E0FF0440(v59, &qword_1ECE8B188, &unk_1E10BA680);
    }

    return sub_1E0FF0440(v40, &qword_1ECE88C78, &qword_1E10B5E50);
  }
}

uint64_t sub_1E1082390()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t sub_1E10823DC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

unint64_t sub_1E1082428()
{
  result = qword_1ECE8B158;
  if (!qword_1ECE8B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B158);
  }

  return result;
}

unint64_t sub_1E108248C()
{
  result = qword_1ECE8B160;
  if (!qword_1ECE8B160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B160);
  }

  return result;
}

unint64_t sub_1E10824F0()
{
  result = qword_1ECE8B168;
  if (!qword_1ECE8B168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B168);
  }

  return result;
}

uint64_t sub_1E1082544()
{
  v2 = *v0;
  v1 = v0[1];
  v65 = v0[4];
  v3 = v65 + 64;
  v62 = v65;
  v4 = 1 << *(v65 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v65 + 64);
  sub_1E0FEDC50(&v65, &v63, &qword_1ECE8B180, &qword_1E10BA678);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v60 = v2;
  v10 = v2;
  v58 = v1;
  if (v6)
  {
    while (1)
    {
      v11 = v9;
LABEL_9:
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v13 = (v11 << 10) | (16 * v12);
      v14 = (*(v62 + 48) + v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = (*(v62 + 56) + v13);
      v18 = *v17;
      v19 = v17[1];
      v63 = v10;
      v64 = v1;

      MEMORY[0x1E12ED840](v16, v15);
      MEMORY[0x1E12ED840](125, 0xE100000000000000);
      sub_1E106931C();
      v10 = sub_1E10AE50C();
      v21 = v20;

      v1 = v21;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_9;
    }
  }

  v22 = v62;

  v63 = v10;
  v64 = v1;
  sub_1E106931C();
  v23 = sub_1E10AE51C();

  if (v23)
  {
    v24 = 1 << *(v62 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & *(v62 + 64);
    sub_1E0FEDC50(&v65, &v63, &qword_1ECE8B180, &qword_1E10BA678);
    v27 = (v24 + 63) >> 6;
    v28 = v58;

    for (i = 0; v26; result = )
    {
      v30 = i;
LABEL_20:
      v31 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v32 = (v30 << 10) | (16 * v31);
      v33 = (*(v62 + 48) + v32);
      v34 = *v33;
      v35 = v33[1];
      v36 = (*(v62 + 56) + v32);
      v38 = *v36;
      v37 = v36[1];
      v63 = v60;
      v64 = v28;

      MEMORY[0x1E12ED840](v34, v35);
      MEMORY[0x1E12ED840](125, 0xE100000000000000);
      v60 = sub_1E10AE50C();
      v28 = v39;
    }

    while (1)
    {
      v30 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v30 >= v27)
      {
        v22 = v62;

        v63 = v60;
        v64 = v28;
        v40 = sub_1E10AE51C();

        if ((v40 & 1) == 0)
        {
          goto LABEL_24;
        }

        v41 = 1;
        return v41 & 1;
      }

      v26 = *(v3 + 8 * v30);
      ++i;
      if (v26)
      {
        i = v30;
        goto LABEL_20;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    return result;
  }

LABEL_24:
  v42 = *(v59 + 24);
  if (v42)
  {
    v61 = *(v59 + 16);
    v43 = 1 << *(v22 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(v22 + 64);
    sub_1E0FEDC50(&v65, &v63, &qword_1ECE8B180, &qword_1E10BA678);

    for (j = 0; v45; result = )
    {
      v47 = v42;
      v48 = j;
LABEL_33:
      v49 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v50 = (v48 << 10) | (16 * v49);
      v51 = (*(v62 + 48) + v50);
      v53 = *v51;
      v52 = v51[1];
      v54 = (*(v62 + 56) + v50);
      v55 = *v54;
      v56 = v54[1];
      v63 = v61;
      v64 = v47;

      MEMORY[0x1E12ED840](v53, v52);
      MEMORY[0x1E12ED840](125, 0xE100000000000000);
      v61 = sub_1E10AE50C();
      v42 = v57;
    }

    while (1)
    {
      v48 = j + 1;
      if (__OFADD__(j, 1))
      {
        goto LABEL_42;
      }

      if (v48 >= ((v43 + 63) >> 6))
      {

        v63 = v61;
        v64 = v42;
        if (sub_1E10AE51C())
        {
          v63 = v61;
          v64 = v42;
          v41 = sub_1E10AE51C();

          return v41 & 1;
        }

        break;
      }

      v45 = *(v3 + 8 * v48);
      ++j;
      if (v45)
      {
        v47 = v42;
        j = v48;
        goto LABEL_33;
      }
    }
  }

  v41 = 0;
  return v41 & 1;
}

unint64_t sub_1E1082B74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_1E1017200(MEMORY[0x1E69E7CC0]);
  *a2 = v3;
  a2[1] = v4;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = result;
  return result;
}

unint64_t sub_1E1082BBC()
{
  result = qword_1ECE8B170;
  if (!qword_1ECE8B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B170);
  }

  return result;
}

unint64_t sub_1E1082C14()
{
  result = qword_1ECE8B178;
  if (!qword_1ECE8B178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B178);
  }

  return result;
}

uint64_t sub_1E1082CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89878, &unk_1E10B6A20);
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v19 - v8;
  v10 = -1 << *(a1 + 32);
  v11 = sub_1E10AE57C();
  if (v11 == 1 << *(a1 + 32))
  {
    v12 = *(v20 + 56);

    return v12(a2, 1, 1, v4);
  }

  else
  {
    v14 = sub_1E108D19C(v9, v11, *(a1 + 36), 0, a1);
    v16 = v15;
    v17 = sub_1E10ADCFC();
    (*(*(v17 - 8) + 32))(a2, v9, v17);
    v18 = (a2 + *(v4 + 48));
    *v18 = v14;
    v18[1] = v16;
    return (*(v20 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_1E1082E98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v23 = *(v10 - 8);
  v11 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v22 - v14;
  v16 = -1 << *(a1 + 32);
  v17 = sub_1E10AE57C();
  if (v17 == 1 << *(a1 + 32))
  {
    v18 = *(v23 + 56);

    return v18(a6, 1, 1, v10);
  }

  else
  {
    v20 = *(v10 + 48);
    *a6 = sub_1E108D0C4(&v15[v20], v17, *(a1 + 36), 0, a1, a4, a5);
    a6[1] = v21;
    sub_1E0FEDEF4(&v15[v20], a6 + *(v10 + 48), a4, a5);
    return (*(v23 + 56))(a6, 0, 1, v10);
  }
}

uint64_t ShazamEventsService.serviceDelegate.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12ShazamEvents19ShazamEventsService_underlyingServiceDelegate);
  *(v1 + OBJC_IVAR____TtC12ShazamEvents19ShazamEventsService_underlyingServiceDelegate) = a1;
  return swift_unknownObjectRelease();
}

uint64_t (*ShazamEventsService.serviceDelegate.modify(void *a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtC12ShazamEvents19ShazamEventsService_underlyingServiceDelegate;
  a1[2] = OBJC_IVAR____TtC12ShazamEvents19ShazamEventsService_underlyingServiceDelegate;
  *a1 = *(v1 + v2);
  a1[1] = v1;
  swift_unknownObjectRetain();
  return sub_1E1083150;
}

uint64_t sub_1E1083150(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *a1;
  v4 = *(v2 + v1);
  *(v2 + v1) = v3;
  return swift_unknownObjectRelease();
}

uint64_t ShazamEventsService.event(identifier:requestTypes:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + OBJC_IVAR____TtC12ShazamEvents19ShazamEventsService_serviceCoordinator);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;

  sub_1E0FE5278(&unk_1E10BA6A8, v12);
}

uint64_t sub_1E108326C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E1083294, 0, 0);
}

uint64_t sub_1E1083294()
{
  v1 = sub_1E1062474();
  type metadata accessor for EventFetcher();
  v2 = swift_allocObject();
  v0[14] = v2;
  swift_defaultActor_initialize();
  type metadata accessor for NetworkRunner();
  swift_allocObject();
  v2[19] = sub_1E107A498(2);
  v2[14] = v1;
  v2[17] = &type metadata for EventsRemoteConfiguration;
  v2[18] = &off_1F5BF1318;
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_1E108339C;
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];

  return sub_1E101B6FC(v6, v4, v5);
}

uint64_t sub_1E108339C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_1E1083588;
  }

  else
  {
    v8 = *(v4 + 112);

    *(v4 + 136) = a1;
    v7 = sub_1E10834CC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E10834CC()
{
  super_class = v0[8].super_class;
  receiver = v0[6].receiver;
  v2 = v0[6].super_class;
  v4 = type metadata accessor for EventXPCValueContainer();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC12ShazamEvents22EventXPCValueContainer_value];
  *v6 = super_class;
  *(v6 + 1) = 0;
  v6[16] = 0;
  v0[3].receiver = v5;
  v0[3].super_class = v4;
  v7 = objc_msgSendSuper2(v0 + 3, sel_init);
  receiver();

  v8 = v0->super_class;

  return v8();
}

uint64_t sub_1E1083588()
{
  receiver = v0[8].receiver;
  super_class = v0[6].super_class;
  v2 = v0[7].receiver;
  v4 = v0[6].receiver;

  v0[4].receiver = receiver;
  v5 = receiver;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v6 = swift_dynamicCast();
  v7 = v0[1].receiver;
  if (v6)
  {
    v8 = v0[1].receiver;
  }

  else
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v0[1].super_class;
  }

  else
  {
    v9 = 0;
  }

  v10 = type metadata accessor for EventXPCValueContainer();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtC12ShazamEvents22EventXPCValueContainer_value];
  *v12 = v8;
  *(v12 + 1) = v9;
  v12[16] = 1;
  v0[2].receiver = v11;
  v0[2].super_class = v10;
  v13 = objc_msgSendSuper2(v0 + 2, sel_init);
  v4();

  v14 = v0->super_class;

  return v14();
}

uint64_t sub_1E10836B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1E0FE6540;

  return sub_1E108326C(v2, v3, v4, v5, v6);
}

uint64_t sub_1E10838EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[114] = a6;
  v6[113] = a5;
  v6[112] = a4;
  v6[111] = a3;
  v6[110] = a2;
  v6[109] = a1;
  v7 = *(*(sub_1E10ADE9C() - 8) + 64) + 15;
  v6[115] = swift_task_alloc();
  v8 = sub_1E10ADEBC();
  v6[116] = v8;
  v9 = *(v8 - 8);
  v6[117] = v9;
  v10 = *(v9 + 64) + 15;
  v6[118] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50) - 8) + 64) + 15;
  v6[119] = swift_task_alloc();
  v6[120] = swift_task_alloc();
  v12 = sub_1E10ADC1C();
  v6[121] = v12;
  v13 = *(v12 - 8);
  v6[122] = v13;
  v14 = *(v13 + 64) + 15;
  v6[123] = swift_task_alloc();
  v6[124] = swift_task_alloc();
  v6[125] = swift_task_alloc();
  v6[126] = swift_task_alloc();
  v15 = sub_1E10ADCBC();
  v6[127] = v15;
  v16 = *(v15 - 8);
  v6[128] = v16;
  v17 = *(v16 + 64) + 15;
  v6[129] = swift_task_alloc();
  v18 = sub_1E10ADBBC();
  v6[130] = v18;
  v19 = *(v18 - 8);
  v6[131] = v19;
  v20 = *(v19 + 64) + 15;
  v6[132] = swift_task_alloc();
  v6[133] = swift_task_alloc();
  v6[134] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B210, &unk_1E10BA778) - 8) + 64) + 15;
  v6[135] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89878, &unk_1E10B6A20);
  v6[136] = v22;
  v23 = *(v22 - 8);
  v6[137] = v23;
  v24 = *(v23 + 64) + 15;
  v6[138] = swift_task_alloc();
  v6[139] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B220, &qword_1E10BA788) - 8) + 64) + 15;
  v6[140] = swift_task_alloc();
  v6[141] = swift_task_alloc();
  v6[142] = swift_task_alloc();
  v6[143] = swift_task_alloc();
  v6[144] = swift_task_alloc();
  v6[145] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E1083CA0, 0, 0);
}

uint64_t sub_1E1083CA0()
{
  v1 = v0[145];
  v2 = v0[144];
  v3 = v0[128];
  v4 = v0[127];
  v5 = v0[112];
  v6 = sub_1E1062474();
  type metadata accessor for EventFetcher();
  v7 = swift_allocObject();
  v0[146] = v7;
  swift_defaultActor_initialize();
  type metadata accessor for NetworkRunner();
  swift_allocObject();
  v7[19] = sub_1E107A498(2);
  v7[14] = v6;
  v7[17] = &type metadata for EventsRemoteConfiguration;
  v7[18] = &off_1F5BF1318;
  (*(v3 + 16))(v1, v5, v4);
  v8 = *(v3 + 56);
  v8(v1, 0, 1, v4);
  v8(v2, 1, 1, v4);

  return MEMORY[0x1EEE6DFA0](sub_1E1083DEC, v7, 0);
}

uint64_t sub_1E1083DEC()
{
  v1 = v0[137];
  v2 = v0[136];
  v3 = v0[135];
  sub_1E1082CB8(v0[111], v3);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = v0[135];
    v5 = &unk_1ECE8B210;
    v6 = &unk_1E10BA778;
    goto LABEL_3;
  }

  v11 = v0[139];
  v12 = v0[138];
  v13 = v0[136];
  sub_1E0FEDEF4(v0[135], v11, &qword_1ECE89878, &unk_1E10B6A20);
  sub_1E0FEDC50(v11, v12, &qword_1ECE89878, &unk_1E10B6A20);
  v14 = (v12 + *(v13 + 48));
  v15 = *v14;
  v16 = v14[1];
  v17 = sub_1E10A215C();
  v18 = sub_1E10ADCFC();
  v0[147] = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 8);
  v0[148] = v20;
  v0[149] = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v12, v18);
  if (v17)
  {
    if (v17 != 1)
    {
      if (v17 != 8)
      {
        v21 = v0[146];
        v8 = v0[145];
        v9 = v0[144];
        v22 = v0[139];

        sub_1E0FF0440(v22, &qword_1ECE89878, &unk_1E10B6A20);
        goto LABEL_4;
      }

      v4 = v0[139];
      v5 = &qword_1ECE89878;
      v6 = &unk_1E10B6A20;
LABEL_3:
      sub_1E0FF0440(v4, v5, v6);
      v7 = v0[146];
      v8 = v0[145];
      v9 = v0[144];

LABEL_4:
      sub_1E0FF0440(v9, &unk_1ECE8B220, &qword_1E10BA788);
      sub_1E0FF0440(v8, &unk_1ECE8B220, &qword_1E10BA788);
      v0[173] = MEMORY[0x1E69E7CC0];
      v10 = sub_1E10855D4;
      goto LABEL_5;
    }

    v10 = sub_1E10841FC;
  }

  else
  {
    v10 = sub_1E1084020;
  }

LABEL_5:

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1E1084020()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 1168) + 112), *(*(v0 + 1168) + 136));
  v2 = swift_task_alloc();
  *(v0 + 1200) = v2;
  *v2 = v0;
  v2[1] = sub_1E10840C4;

  return sub_1E1061774(v1);
}

uint64_t sub_1E10840C4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 1200);
  v6 = *v3;
  v4[151] = a1;
  v4[152] = a2;
  v4[153] = v2;

  if (v2)
  {
    v4[175] = v2;
    v7 = v4[146];
    v8 = sub_1E10859F8;
  }

  else
  {
    v8 = sub_1E10843D8;
    v7 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1E10841FC()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 1168) + 112), *(*(v0 + 1168) + 136));
  v2 = swift_task_alloc();
  *(v0 + 1232) = v2;
  *v2 = v0;
  v2[1] = sub_1E10842A0;

  return sub_1E1061AF8(v1);
}

uint64_t sub_1E10842A0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 1232);
  v6 = *v3;
  v4[155] = a1;
  v4[156] = a2;
  v4[157] = v2;

  if (v2)
  {
    v4[189] = v2;
    v7 = v4[146];
    v8 = sub_1E10867D4;
  }

  else
  {
    v8 = sub_1E1085AC4;
    v7 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1E10843D8()
{
  v1 = v0[145];
  v2 = v0[143];
  v3 = v0[128];
  v4 = v0[127];
  v5 = v0[110];
  v6 = v0[109];
  v0[158] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB58, &unk_1E10BA790);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E10B2E70;
  *(inited + 32) = 0x6469747369747261;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v6;
  *(inited + 56) = v5;

  v0[159] = sub_1E1017200(inited);
  swift_setDeallocating();
  sub_1E0FF0440(inited + 32, &unk_1ECE8B230, &qword_1E10B78A8);
  sub_1E0FEDC50(v1, v2, &unk_1ECE8B220, &qword_1E10BA788);
  v8 = *(v3 + 48);
  if (v8(v2, 1, v4) == 1)
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    v11 = v0[143];
    v12 = v0[129];
    v41 = v8;
    v13 = v0[128];
    v39 = v12;
    v40 = v0[127];
    v14 = v0[126];
    v15 = v0[125];
    v16 = v0[124];
    v17 = v0[123];
    v18 = v0[122];
    v19 = v0[121];
    v20 = (*(v13 + 32))();
    MEMORY[0x1E12ED140](v20);
    sub_1E10ADBFC();
    v21 = *(v18 + 8);
    v21(v17, v19);
    sub_1E10ADC0C();
    v21(v16, v19);
    sub_1E10ADBEC();
    v21(v15, v19);
    sub_1E108D780(&qword_1EE17FF70, MEMORY[0x1E69693A0]);
    sub_1E10ADCAC();
    v21(v14, v19);
    (*(v13 + 8))(v39, v40);
    v8 = v41;
    v9 = v0[104];
    v10 = v0[105];
  }

  v0[161] = v10;
  v0[160] = v9;
  v22 = v0[142];
  v23 = v0[127];
  sub_1E0FEDC50(v0[144], v22, &unk_1ECE8B220, &qword_1E10BA788);
  if (v8(v22, 1, v23) == 1)
  {
    v24 = 0;
    v25 = 0xE000000000000000;
  }

  else
  {
    v26 = v0[129];
    v27 = v0[128];
    v42 = v0[127];
    v28 = v0[126];
    v29 = v0[125];
    v30 = v0[124];
    v31 = v0[123];
    v32 = v0[122];
    v33 = v0[121];
    v34 = (*(v27 + 32))(v26, v0[142]);
    MEMORY[0x1E12ED140](v34);
    sub_1E10ADBFC();
    v35 = *(v32 + 8);
    v35(v31, v33);
    sub_1E10ADC0C();
    v35(v30, v33);
    sub_1E10ADBEC();
    v35(v29, v33);
    sub_1E108D780(&qword_1EE17FF70, MEMORY[0x1E69693A0]);
    sub_1E10ADCAC();
    v35(v28, v33);
    (*(v27 + 8))(v26, v42);
    v24 = v0[102];
    v25 = v0[103];
  }

  v0[163] = v25;
  v0[162] = v24;
  v36 = [objc_allocWithZone(MEMORY[0x1E69CDFE8]) init];
  v0[164] = v36;
  v0[10] = v0;
  v0[15] = v0 + 100;
  v0[11] = sub_1E10848D0;
  v37 = swift_continuation_init();
  v0[77] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB60, &qword_1E10B78A0);
  v0[74] = v37;
  v0[70] = MEMORY[0x1E69E9820];
  v0[71] = 1107296256;
  v0[72] = sub_1E105FFCC;
  v0[73] = &block_descriptor_92;
  [v36 storefrontCountryCode_];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1E10848D0()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E10849B0, 0, 0);
}

uint64_t sub_1E10849B0()
{
  v23 = v0;
  v1 = v0[164];
  v2 = v0[163];
  v3 = v0[162];
  v4 = v0[161];
  v5 = v0[160];
  v6 = v0[158];
  v20 = v0[159];
  v21 = v0[153];
  v7 = v0[100];
  v8 = v0[101];
  v9 = sub_1E10AE07C();
  v11 = v10;

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E10BA690;
  *(v12 + 32) = 0x6F726665726F7473;
  *(v12 + 40) = 0xEA0000000000746ELL;
  *(v12 + 48) = v9;
  *(v12 + 56) = v11;
  *(v12 + 64) = 0x657461646D6F7266;
  *(v12 + 72) = 0xE800000000000000;
  *(v12 + 80) = v5;
  *(v12 + 88) = v4;
  *(v12 + 96) = 0x657461646F74;
  *(v12 + 104) = 0xE600000000000000;
  *(v12 + 112) = v3;
  *(v12 + 120) = v2;
  *(v12 + 128) = 0x74696D696CLL;
  *(v12 + 136) = 0xE500000000000000;
  *(v12 + 144) = 0;
  *(v12 + 152) = 0xE000000000000000;
  *(v12 + 160) = 0x74657366666FLL;
  *(v12 + 168) = 0xE600000000000000;
  *(v12 + 176) = 0;
  *(v12 + 184) = 0xE000000000000000;
  v13 = sub_1E1017200(v12);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B230, &qword_1E10B78A8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v20;
  sub_1E108D4E0(v13, sub_1E108D07C, 0, isUniquelyReferenced_nonNull_native, &v22);

  if (v21)
  {
  }

  else
  {
    v0[108] = v22;
    v16 = sub_1E1062A58();
    if (v17)
    {
      sub_1E1074334(v16, v17, 1735287148, 0xE400000000000000);
    }

    v18 = *__swift_project_boxed_opaque_existential_1((v0[146] + 112), *(v0[146] + 136));
    v19 = swift_task_alloc();
    v0[165] = v19;
    *v19 = v0;
    v19[1] = sub_1E1084C48;

    return sub_1E1060034(v18);
  }
}

uint64_t sub_1E1084C48(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 1320);
  v9 = *v3;
  v4[166] = a1;
  v4[167] = a2;
  v4[168] = v2;

  if (v2)
  {
    v6 = v4[108];

    v7 = sub_1E1084FC0;
  }

  else
  {
    v7 = sub_1E1084D6C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E1084D6C()
{
  v1 = v0[108];
  if (v0[151])
  {
    v2 = 0;
  }

  else
  {
    v2 = v0[152] == 0xE000000000000000;
  }

  if (v2 || (sub_1E10AE8FC() & 1) != 0)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v4 = v0[152];

    v3 = v0[151];
  }

  v5 = v0[167];
  v6 = v0[131];
  v7 = v0[130];
  v8 = v0[120];
  v0[83] = v0[166];
  v0[84] = v5;
  v0[85] = v3;
  v0[86] = v4;
  v0[87] = v1;
  sub_1E1081D8C(v8);

  v9 = (*(v6 + 48))(v8, 1, v7);
  v10 = v0[152];
  if (v9 == 1)
  {
    v11 = v0[118];
    v12 = v0[117];
    v13 = v0[116];
    v14 = v0[115];
    sub_1E0FF0440(v0[120], &qword_1ECE88C78, &qword_1E10B5E50);
    sub_1E10ADE7C();
    sub_1E10693E0(MEMORY[0x1E69E7CC0]);
    sub_1E108D780(&qword_1ECE8B240, MEMORY[0x1E6969C20]);
    sub_1E10ADB6C();
    v15 = sub_1E10ADEAC();
    (*(v12 + 8))(v11, v13);
    swift_willThrow();

    v0[175] = v15;
    v16 = v0[146];
    v17 = sub_1E10859F8;
  }

  else
  {
    v18 = v0[146];
    v19 = v0[133];
    v20 = v0[131];
    v21 = v0[130];
    v22 = v0[120];
    v23 = *(v20 + 32);
    v0[169] = v23;
    v0[170] = (v20 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v23(v19, v22, v21);

    v17 = sub_1E1085030;
    v16 = v18;
  }

  return MEMORY[0x1EEE6DFA0](v17, v16, 0);
}

uint64_t sub_1E1084FC0()
{
  v1 = v0[152];

  v0[175] = v0[168];
  v2 = v0[146];

  return MEMORY[0x1EEE6DFA0](sub_1E10859F8, v2, 0);
}

uint64_t sub_1E1085030()
{
  v1 = *(v0 + 1360);
  (*(v0 + 1352))(*(v0 + 1072), *(v0 + 1064), *(v0 + 1040));
  v2 = swift_task_alloc();
  *(v0 + 1368) = v2;
  *v2 = v0;
  v2[1] = sub_1E10850E4;
  v3 = *(v0 + 1168);
  v4 = *(v0 + 1072);

  return sub_1E101C960(v0 + 256, v4);
}

uint64_t sub_1E10850E4()
{
  v2 = *v1;
  v3 = *(*v1 + 1368);
  v4 = *v1;
  *(*v1 + 1376) = v0;

  v5 = *(v2 + 1168);
  if (v0)
  {
    v6 = sub_1E10854DC;
  }

  else
  {
    v6 = sub_1E1085210;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E1085210()
{
  v36 = v0;
  v1 = *(v0 + 1376);
  v2 = *(v0 + 336);
  *(v0 + 208) = *(v0 + 320);
  *(v0 + 224) = v2;
  *(v0 + 240) = *(v0 + 352);
  v3 = *(v0 + 272);
  *(v0 + 144) = *(v0 + 256);
  *(v0 + 160) = v3;
  v4 = *(v0 + 304);
  *(v0 + 176) = *(v0 + 288);
  *(v0 + 192) = v4;
  sub_1E1035A94(v34);
  if (v1)
  {
    v5 = *(v0 + 1168);
    v6 = *(v0 + 1160);
    v7 = *(v0 + 1152);
    v8 = *(v0 + 1112);
    v9 = *(v0 + 1072);
    v10 = *(v0 + 1048);
    v11 = *(v0 + 1040);
    sub_1E0FF0440(v0 + 144, &qword_1ECE89880, &qword_1E10B39F8);

    (*(v10 + 8))(v9, v11);
    sub_1E0FF0440(v8, &qword_1ECE89878, &unk_1E10B6A20);
    sub_1E0FF0440(v7, &unk_1ECE8B220, &qword_1E10BA788);
    sub_1E0FF0440(v6, &unk_1ECE8B220, &qword_1E10BA788);
    *(v0 + 1392) = v1;
    v12 = sub_1E10857B8;
  }

  else
  {
    v13 = *(v0 + 1192);
    v14 = *(v0 + 1184);
    v15 = *(v0 + 1176);
    v33 = *(v0 + 1160);
    v31 = *(v0 + 1168);
    v32 = *(v0 + 1152);
    v16 = *(v0 + 1112);
    v17 = *(v0 + 1104);
    v18 = *(v0 + 1088);
    v19 = *(v0 + 1048);
    v29 = *(v0 + 1040);
    v30 = *(v0 + 1072);
    sub_1E0FF0440(v0 + 144, &qword_1ECE89880, &qword_1E10B39F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B290, &qword_1E10BA7C0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1E10B2E70;
    sub_1E0FEDC50(v16, v17, &qword_1ECE89878, &unk_1E10B6A20);
    v21 = *(v17 + *(v18 + 48) + 8);

    v22 = sub_1E10ADCDC();
    v24 = v23;
    v14(v17, v15);
    *(v20 + 32) = v22;
    *(v20 + 40) = v24;
    v25 = v34[5];
    *(v20 + 112) = v34[4];
    *(v20 + 128) = v25;
    *(v20 + 144) = v34[6];
    *(v20 + 160) = v35;
    v26 = v34[1];
    *(v20 + 48) = v34[0];
    *(v20 + 64) = v26;
    v27 = v34[3];
    *(v20 + 80) = v34[2];
    *(v20 + 96) = v27;

    (*(v19 + 8))(v30, v29);
    sub_1E0FF0440(v16, &qword_1ECE89878, &unk_1E10B6A20);
    sub_1E0FF0440(v32, &unk_1ECE8B220, &qword_1E10BA788);
    sub_1E0FF0440(v33, &unk_1ECE8B220, &qword_1E10BA788);
    *(v0 + 1384) = v20;
    v12 = sub_1E10855D4;
  }

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

uint64_t sub_1E10854DC()
{
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[144];
  v4 = v0[139];
  v5 = v0[134];
  v6 = v0[131];
  v7 = v0[130];

  (*(v6 + 8))(v5, v7);
  sub_1E0FF0440(v4, &qword_1ECE89878, &unk_1E10B6A20);
  sub_1E0FF0440(v3, &unk_1ECE8B220, &qword_1E10BA788);
  sub_1E0FF0440(v2, &unk_1ECE8B220, &qword_1E10BA788);
  v0[174] = v0[172];

  return MEMORY[0x1EEE6DFA0](sub_1E10857B8, 0, 0);
}

uint64_t sub_1E10855D4()
{
  super_class = v0[86].super_class;
  receiver = v0[57].receiver;
  v3 = v0[56].super_class;
  v4 = type metadata accessor for ParticipantScheduleXPCValueContainer();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC12ShazamEvents36ParticipantScheduleXPCValueContainer_value];
  *v6 = super_class;
  *(v6 + 1) = 0;
  v6[16] = 0;
  v0[44].receiver = v5;
  v0[44].super_class = v4;
  v7 = objc_msgSendSuper2(v0 + 44, sel_init);
  v3();

  v8 = v0[72].super_class;
  v9 = v0[72].receiver;
  v10 = v0[71].super_class;
  v11 = v0[71].receiver;
  v12 = v0[70].super_class;
  v13 = v0[70].receiver;
  v14 = v0[69].super_class;
  v15 = v0[69].receiver;
  v16 = v0[67].super_class;
  v17 = v0[67].receiver;
  v20 = v0[66].super_class;
  v21 = v0[66].receiver;
  v22 = v0[64].super_class;
  v23 = v0[63].receiver;
  v24 = v0[62].super_class;
  v25 = v0[62].receiver;
  v26 = v0[61].super_class;
  v27 = v0[60].receiver;
  v28 = v0[59].super_class;
  v29 = v0[59].receiver;
  v30 = v0[57].super_class;

  v18 = v0->super_class;

  return v18();
}

uint64_t sub_1E10857B8()
{
  receiver = v0[87].receiver;
  v2 = v0[57].receiver;
  super_class = v0[56].super_class;
  v0[53].receiver = receiver;
  v4 = receiver;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v5 = swift_dynamicCast();
  v6 = v0[45].receiver;
  if (v5)
  {
    v7 = v0[45].receiver;
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = v0[45].super_class;
  }

  else
  {
    v8 = 0;
  }

  v9 = type metadata accessor for ParticipantScheduleXPCValueContainer();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC12ShazamEvents36ParticipantScheduleXPCValueContainer_value];
  *v11 = v7;
  *(v11 + 1) = v8;
  v11[16] = 1;
  v0[46].receiver = v10;
  v0[46].super_class = v9;
  v12 = objc_msgSendSuper2(v0 + 46, sel_init);
  super_class();

  v13 = v0[72].super_class;
  v14 = v0[72].receiver;
  v15 = v0[71].super_class;
  v16 = v0[71].receiver;
  v17 = v0[70].super_class;
  v18 = v0[70].receiver;
  v19 = v0[69].super_class;
  v20 = v0[69].receiver;
  v21 = v0[67].super_class;
  v22 = v0[67].receiver;
  v25 = v0[66].super_class;
  v26 = v0[66].receiver;
  v27 = v0[64].super_class;
  v28 = v0[63].receiver;
  v29 = v0[62].super_class;
  v30 = v0[62].receiver;
  v31 = v0[61].super_class;
  v32 = v0[60].receiver;
  v33 = v0[59].super_class;
  v34 = v0[59].receiver;
  v35 = v0[57].super_class;

  v23 = v0->super_class;

  return v23();
}

uint64_t sub_1E10859F8()
{
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[144];
  v4 = v0[139];

  sub_1E0FF0440(v4, &qword_1ECE89878, &unk_1E10B6A20);
  sub_1E0FF0440(v3, &unk_1ECE8B220, &qword_1E10BA788);
  sub_1E0FF0440(v2, &unk_1ECE8B220, &qword_1E10BA788);
  v0[174] = v0[175];

  return MEMORY[0x1EEE6DFA0](sub_1E10857B8, 0, 0);
}

uint64_t sub_1E1085AC4()
{
  v1 = v0[145];
  v2 = v0[141];
  v3 = v0[128];
  v4 = v0[127];
  v5 = v0[110];
  v6 = v0[109];
  v0[176] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB58, &unk_1E10BA790);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E10B2E70;
  strcpy((inited + 32), "competitorid");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = v6;
  *(inited + 56) = v5;

  v0[177] = sub_1E1017200(inited);
  swift_setDeallocating();
  sub_1E0FF0440(inited + 32, &unk_1ECE8B230, &qword_1E10B78A8);
  sub_1E0FEDC50(v1, v2, &unk_1ECE8B220, &qword_1E10BA788);
  v8 = *(v3 + 48);
  if (v8(v2, 1, v4) == 1)
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    v11 = v0[141];
    v12 = v0[129];
    v41 = v8;
    v13 = v0[128];
    v39 = v12;
    v40 = v0[127];
    v14 = v0[126];
    v15 = v0[125];
    v16 = v0[124];
    v17 = v0[123];
    v18 = v0[122];
    v19 = v0[121];
    v20 = (*(v13 + 32))();
    MEMORY[0x1E12ED140](v20);
    sub_1E10ADBFC();
    v21 = *(v18 + 8);
    v21(v17, v19);
    sub_1E10ADC0C();
    v21(v16, v19);
    sub_1E10ADBEC();
    v21(v15, v19);
    sub_1E108D780(&qword_1EE17FF70, MEMORY[0x1E69693A0]);
    sub_1E10ADCAC();
    v21(v14, v19);
    (*(v13 + 8))(v39, v40);
    v8 = v41;
    v9 = v0[98];
    v10 = v0[99];
  }

  v0[179] = v10;
  v0[178] = v9;
  v22 = v0[140];
  v23 = v0[127];
  sub_1E0FEDC50(v0[144], v22, &unk_1ECE8B220, &qword_1E10BA788);
  if (v8(v22, 1, v23) == 1)
  {
    v24 = 0;
    v25 = 0xE000000000000000;
  }

  else
  {
    v26 = v0[129];
    v27 = v0[128];
    v42 = v0[127];
    v28 = v0[126];
    v29 = v0[125];
    v30 = v0[124];
    v31 = v0[123];
    v32 = v0[122];
    v33 = v0[121];
    v34 = (*(v27 + 32))(v26, v0[140]);
    MEMORY[0x1E12ED140](v34);
    sub_1E10ADBFC();
    v35 = *(v32 + 8);
    v35(v31, v33);
    sub_1E10ADC0C();
    v35(v30, v33);
    sub_1E10ADBEC();
    v35(v29, v33);
    sub_1E108D780(&qword_1EE17FF70, MEMORY[0x1E69693A0]);
    sub_1E10ADCAC();
    v35(v28, v33);
    (*(v27 + 8))(v26, v42);
    v24 = v0[96];
    v25 = v0[97];
  }

  v0[181] = v25;
  v0[180] = v24;
  v36 = [objc_allocWithZone(MEMORY[0x1E69CDFE8]) init];
  v0[182] = v36;
  v0[2] = v0;
  v0[7] = v0 + 94;
  v0[3] = sub_1E1085FC0;
  v37 = swift_continuation_init();
  v0[61] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB60, &qword_1E10B78A0);
  v0[54] = MEMORY[0x1E69E9820];
  v0[55] = 1107296256;
  v0[56] = sub_1E105FFCC;
  v0[57] = &block_descriptor_86;
  v0[58] = v37;
  [v36 storefrontCountryCode_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E1085FC0()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E10860A0, 0, 0);
}

uint64_t sub_1E10860A0()
{
  v23 = v0;
  v1 = v0[182];
  v2 = v0[181];
  v3 = v0[180];
  v4 = v0[179];
  v5 = v0[178];
  v6 = v0[176];
  v20 = v0[177];
  v21 = v0[157];
  v7 = v0[94];
  v8 = v0[95];
  v9 = sub_1E10AE07C();
  v11 = v10;

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E10BA690;
  *(v12 + 32) = 0x6F726665726F7473;
  *(v12 + 40) = 0xEA0000000000746ELL;
  *(v12 + 48) = v9;
  *(v12 + 56) = v11;
  *(v12 + 64) = 0x657461646D6F7266;
  *(v12 + 72) = 0xE800000000000000;
  *(v12 + 80) = v5;
  *(v12 + 88) = v4;
  *(v12 + 96) = 0x657461646F74;
  *(v12 + 104) = 0xE600000000000000;
  *(v12 + 112) = v3;
  *(v12 + 120) = v2;
  *(v12 + 128) = 0x74696D696CLL;
  *(v12 + 136) = 0xE500000000000000;
  *(v12 + 144) = 0;
  *(v12 + 152) = 0xE000000000000000;
  *(v12 + 160) = 0x74657366666FLL;
  *(v12 + 168) = 0xE600000000000000;
  *(v12 + 176) = 0;
  *(v12 + 184) = 0xE000000000000000;
  v13 = sub_1E1017200(v12);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B230, &qword_1E10B78A8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v20;
  sub_1E108D4E0(v13, sub_1E108D07C, 0, isUniquelyReferenced_nonNull_native, &v22);

  if (v21)
  {
  }

  else
  {
    v0[107] = v22;
    v16 = sub_1E1062A58();
    if (v17)
    {
      sub_1E1074334(v16, v17, 1735287148, 0xE400000000000000);
    }

    v18 = *__swift_project_boxed_opaque_existential_1((v0[146] + 112), *(v0[146] + 136));
    v19 = swift_task_alloc();
    v0[183] = v19;
    *v19 = v0;
    v19[1] = sub_1E1086338;

    return sub_1E1060034(v18);
  }
}

uint64_t sub_1E1086338(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 1464);
  v9 = *v3;
  v4[184] = a1;
  v4[185] = a2;
  v4[186] = v2;

  if (v2)
  {
    v6 = v4[107];

    v7 = sub_1E10866B0;
  }

  else
  {
    v7 = sub_1E108645C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E108645C()
{
  v1 = v0[107];
  if (v0[155])
  {
    v2 = 0;
  }

  else
  {
    v2 = v0[156] == 0xE000000000000000;
  }

  if (v2 || (sub_1E10AE8FC() & 1) != 0)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v4 = v0[156];

    v3 = v0[155];
  }

  v5 = v0[185];
  v6 = v0[131];
  v7 = v0[130];
  v8 = v0[119];
  v0[78] = v0[184];
  v0[79] = v5;
  v0[80] = v3;
  v0[81] = v4;
  v0[82] = v1;
  sub_1E1081D8C(v8);

  v9 = (*(v6 + 48))(v8, 1, v7);
  v10 = v0[156];
  if (v9 == 1)
  {
    v11 = v0[118];
    v12 = v0[117];
    v13 = v0[116];
    v14 = v0[115];
    sub_1E0FF0440(v0[119], &qword_1ECE88C78, &qword_1E10B5E50);
    sub_1E10ADE7C();
    sub_1E10693E0(MEMORY[0x1E69E7CC0]);
    sub_1E108D780(&qword_1ECE8B240, MEMORY[0x1E6969C20]);
    sub_1E10ADB6C();
    v15 = sub_1E10ADEAC();
    (*(v12 + 8))(v11, v13);
    swift_willThrow();

    v0[189] = v15;
    v16 = v0[146];
    v17 = sub_1E10867D4;
  }

  else
  {
    v18 = v0[146];
    v19 = v0[132];
    v20 = v0[131];
    v21 = v0[130];
    v22 = v0[119];
    v23 = *(v20 + 32);
    v0[187] = v23;
    v0[188] = (v20 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v23(v19, v22, v21);

    v17 = sub_1E1086720;
    v16 = v18;
  }

  return MEMORY[0x1EEE6DFA0](v17, v16, 0);
}

uint64_t sub_1E10866B0()
{
  v1 = v0[156];

  v0[189] = v0[186];
  v2 = v0[146];

  return MEMORY[0x1EEE6DFA0](sub_1E10867D4, v2, 0);
}

uint64_t sub_1E1086720()
{
  v1 = *(v0 + 1504);
  (*(v0 + 1496))(*(v0 + 1072), *(v0 + 1056), *(v0 + 1040));
  v2 = swift_task_alloc();
  *(v0 + 1368) = v2;
  *v2 = v0;
  v2[1] = sub_1E10850E4;
  v3 = *(v0 + 1168);
  v4 = *(v0 + 1072);

  return sub_1E101C960(v0 + 256, v4);
}

uint64_t sub_1E10867D4()
{
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[144];
  v4 = v0[139];

  sub_1E0FF0440(v4, &qword_1ECE89878, &unk_1E10B6A20);
  sub_1E0FF0440(v3, &unk_1ECE8B220, &qword_1E10BA788);
  sub_1E0FF0440(v2, &unk_1ECE8B220, &qword_1E10BA788);
  v0[174] = v0[189];

  return MEMORY[0x1EEE6DFA0](sub_1E10857B8, 0, 0);
}

uint64_t sub_1E10868A0()
{
  v2 = *(sub_1E10ADCBC() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1E0FE6540;

  return sub_1E10838EC(v4, v5, v6, v0 + v3, v8, v9);
}

uint64_t sub_1E1086A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[197] = a6;
  v6[196] = a5;
  v6[195] = a4;
  v6[194] = a3;
  v6[193] = a2;
  v6[192] = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89878, &unk_1E10B6A20);
  v6[198] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[199] = swift_task_alloc();
  v6[200] = swift_task_alloc();
  v6[201] = swift_task_alloc();
  v9 = *(*(sub_1E10ADE9C() - 8) + 64) + 15;
  v6[202] = swift_task_alloc();
  v10 = sub_1E10ADEBC();
  v6[203] = v10;
  v11 = *(v10 - 8);
  v6[204] = v11;
  v12 = *(v11 + 64) + 15;
  v6[205] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50) - 8) + 64) + 15;
  v6[206] = swift_task_alloc();
  v14 = sub_1E10ADC1C();
  v6[207] = v14;
  v15 = *(v14 - 8);
  v6[208] = v15;
  v16 = *(v15 + 64) + 15;
  v6[209] = swift_task_alloc();
  v6[210] = swift_task_alloc();
  v6[211] = swift_task_alloc();
  v6[212] = swift_task_alloc();
  v17 = sub_1E10ADCBC();
  v6[213] = v17;
  v18 = *(v17 - 8);
  v6[214] = v18;
  v19 = *(v18 + 64) + 15;
  v6[215] = swift_task_alloc();
  v20 = sub_1E10ADBBC();
  v6[216] = v20;
  v21 = *(v20 - 8);
  v6[217] = v21;
  v22 = *(v21 + 64) + 15;
  v6[218] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B220, &qword_1E10BA788) - 8) + 64) + 15;
  v6[219] = swift_task_alloc();
  v6[220] = swift_task_alloc();
  v6[221] = swift_task_alloc();
  v6[222] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E1086D64, 0, 0);
}

uint64_t sub_1E1086D64()
{
  v1 = v0[222];
  v2 = v0[221];
  v3 = v0[214];
  v4 = v0[213];
  v5 = v0[195];
  v6 = sub_1E1062474();
  type metadata accessor for EventFetcher();
  v7 = swift_allocObject();
  v0[223] = v7;
  swift_defaultActor_initialize();
  type metadata accessor for NetworkRunner();
  swift_allocObject();
  v7[19] = sub_1E107A498(2);
  v7[14] = v6;
  v7[17] = &type metadata for EventsRemoteConfiguration;
  v7[18] = &off_1F5BF1318;
  (*(v3 + 16))(v1, v5, v4);
  v8 = *(v3 + 56);
  v8(v1, 0, 1, v4);
  v8(v2, 1, 1, v4);

  return MEMORY[0x1EEE6DFA0](sub_1E1086EB0, v7, 0);
}

uint64_t sub_1E1086EB0()
{
  v7 = v0;
  v1 = *(v0 + 1552);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_1E1018D54(*(v1 + 16), 0);
    v4 = sub_1E10190FC(&v6, v3 + 4, v2, v1);

    sub_1E1019254();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v6 = v3;
  sub_1E108C644(&v6);
  *(v0 + 1792) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E1086FFC, 0, 0);
}

uint64_t sub_1E1086FFC()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 1784) + 112), *(*(v0 + 1784) + 136));
  v2 = swift_task_alloc();
  *(v0 + 1800) = v2;
  *v2 = v0;
  v2[1] = sub_1E10870A0;

  return sub_1E10615E4(v1);
}

uint64_t sub_1E10870A0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 1800);
  v6 = *v3;
  v4[226] = a1;
  v4[227] = a2;
  v4[228] = v2;

  if (v2)
  {
    v7 = v4[224];

    v4[245] = v2;
    v8 = v4[223];
    v9 = sub_1E1088C14;
  }

  else
  {
    v9 = sub_1E10871E0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1E10871E0()
{
  v1 = v0[224];
  v2 = v0[193];
  v3 = v0[192];
  v0[229] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB58, &unk_1E10BA790);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E10B0870;
  *(v4 + 32) = 0x64695F65756E6576;
  *(v4 + 40) = 0xE800000000000000;
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;
  *(v4 + 64) = 0x707974746E657665;
  *(v4 + 72) = 0xEA00000000007365;
  v5 = *(v1 + 16);
  if (v5)
  {
    v60 = MEMORY[0x1E69E7CC0];

    sub_1E1059D4C(0, v5, 0);
    v6 = v60;
    v7 = (v1 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = sub_1E10AE07C();
      v61 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        v15 = v10;
        v16 = v11;
        sub_1E1059D4C((v12 > 1), v13 + 1, 1);
        v11 = v16;
        v10 = v15;
        v6 = v61;
      }

      *(v6 + 16) = v13 + 1;
      v14 = v6 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      v7 += 2;
      --v5;
    }

    while (v5);
    v17 = v0[224];
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  v18 = v0[222];
  v19 = v0[220];
  v20 = v0[214];
  v21 = v0[213];
  v0[190] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B270, &qword_1E10B17E0);
  sub_1E108D7D4();
  v22 = sub_1E10AE01C();
  v24 = v23;

  *(v4 + 80) = v22;
  *(v4 + 88) = v24;
  v0[230] = sub_1E1017200(v4);
  swift_setDeallocating();
  v0[231] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B230, &qword_1E10B78A8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1E0FEDC50(v18, v19, &unk_1ECE8B220, &qword_1E10BA788);
  v25 = *(v20 + 48);
  if (v25(v19, 1, v21) == 1)
  {
    v26 = 0;
    v27 = 0xE000000000000000;
  }

  else
  {
    v28 = v0[220];
    v29 = v0[215];
    v58 = v25;
    v30 = v0[214];
    v56 = v29;
    v57 = v0[213];
    v31 = v0[212];
    v32 = v0[211];
    v33 = v0[210];
    v34 = v0[209];
    v35 = v0[208];
    v36 = v0[207];
    v37 = (*(v30 + 32))();
    MEMORY[0x1E12ED140](v37);
    sub_1E10ADBFC();
    v38 = *(v35 + 8);
    v38(v34, v36);
    sub_1E10ADC0C();
    v38(v33, v36);
    sub_1E10ADBEC();
    v38(v32, v36);
    sub_1E108D780(&qword_1EE17FF70, MEMORY[0x1E69693A0]);
    sub_1E10ADCAC();
    v38(v31, v36);
    (*(v30 + 8))(v56, v57);
    v25 = v58;
    v26 = v0[187];
    v27 = v0[188];
  }

  v0[233] = v27;
  v0[232] = v26;
  v39 = v0[219];
  v40 = v0[213];
  sub_1E0FEDC50(v0[221], v39, &unk_1ECE8B220, &qword_1E10BA788);
  if (v25(v39, 1, v40) == 1)
  {
    v41 = 0;
    v42 = 0xE000000000000000;
  }

  else
  {
    v43 = v0[215];
    v44 = v0[214];
    v59 = v0[213];
    v45 = v0[212];
    v46 = v0[211];
    v47 = v0[210];
    v48 = v0[209];
    v49 = v0[208];
    v50 = v0[207];
    v51 = (*(v44 + 32))(v43, v0[219]);
    MEMORY[0x1E12ED140](v51);
    sub_1E10ADBFC();
    v52 = *(v49 + 8);
    v52(v48, v50);
    sub_1E10ADC0C();
    v52(v47, v50);
    sub_1E10ADBEC();
    v52(v46, v50);
    sub_1E108D780(&qword_1EE17FF70, MEMORY[0x1E69693A0]);
    sub_1E10ADCAC();
    v52(v45, v50);
    (*(v44 + 8))(v43, v59);
    v41 = v0[185];
    v42 = v0[186];
  }

  v0[235] = v42;
  v0[234] = v41;
  v53 = [objc_allocWithZone(MEMORY[0x1E69CDFE8]) init];
  v0[236] = v53;
  v0[2] = v0;
  v0[7] = v0 + 181;
  v0[3] = sub_1E1087828;
  v54 = swift_continuation_init();
  v0[171] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB60, &qword_1E10B78A0);
  v0[168] = v54;
  v0[164] = MEMORY[0x1E69E9820];
  v0[165] = 1107296256;
  v0[166] = sub_1E105FFCC;
  v0[167] = &block_descriptor_80_0;
  [v53 storefrontCountryCode_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E1087828()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E1087908, 0, 0);
}

uint64_t sub_1E1087908()
{
  v24 = v0;
  v1 = v0[236];
  v2 = v0[234];
  v3 = v0[233];
  v4 = v0[232];
  v20 = v0[235];
  v21 = v0[231];
  v5 = v0[230];
  v6 = v0[229];
  v22 = v0[228];
  v7 = v0[181];
  v8 = v0[182];
  v9 = sub_1E10AE07C();
  v11 = v10;

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E10BA690;
  *(v12 + 32) = 0x6F726665726F7473;
  *(v12 + 40) = 0xEA0000000000746ELL;
  *(v12 + 48) = v9;
  *(v12 + 56) = v11;
  *(v12 + 64) = 0x657461646D6F7266;
  *(v12 + 72) = 0xE800000000000000;
  *(v12 + 80) = v4;
  *(v12 + 88) = v3;
  *(v12 + 96) = 0x657461646F74;
  *(v12 + 104) = 0xE600000000000000;
  *(v12 + 112) = v2;
  *(v12 + 120) = v20;
  *(v12 + 128) = 0x74696D696CLL;
  *(v12 + 136) = 0xE500000000000000;
  *(v12 + 144) = 0;
  *(v12 + 152) = 0xE000000000000000;
  *(v12 + 160) = 0x74657366666FLL;
  *(v12 + 168) = 0xE600000000000000;
  *(v12 + 176) = 0;
  *(v12 + 184) = 0xE000000000000000;
  v13 = sub_1E1017200(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v5;
  sub_1E108D4E0(v13, sub_1E108D07C, 0, isUniquelyReferenced_nonNull_native, &v23);

  if (v22)
  {
  }

  else
  {
    v0[191] = v23;
    v16 = sub_1E1062A58();
    if (v17)
    {
      sub_1E1074334(v16, v17, 1735287148, 0xE400000000000000);
    }

    v18 = *__swift_project_boxed_opaque_existential_1((v0[223] + 112), *(v0[223] + 136));
    v19 = swift_task_alloc();
    v0[237] = v19;
    *v19 = v0;
    v19[1] = sub_1E1087B94;

    return sub_1E1060034(v18);
  }
}

uint64_t sub_1E1087B94(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 1896);
  v9 = *v3;
  v4[238] = a1;
  v4[239] = a2;
  v4[240] = v2;

  if (v2)
  {
    v6 = v4[191];

    v7 = sub_1E1087F64;
  }

  else
  {
    v7 = sub_1E1087CB8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E1087CB8()
{
  v1 = v0[191];
  if (v0[226])
  {
    v2 = 0;
  }

  else
  {
    v2 = v0[227] == 0xE000000000000000;
  }

  if (v2 || (sub_1E10AE8FC() & 1) != 0)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v4 = v0[227];

    v3 = v0[226];
  }

  v5 = v0[239];
  v6 = v0[217];
  v7 = v0[216];
  v8 = v0[206];
  v0[172] = v0[238];
  v0[173] = v5;
  v0[174] = v3;
  v0[175] = v4;
  v0[176] = v1;
  sub_1E1081D8C(v8);

  if ((*(v6 + 48))(v8, 1, v7) == 1)
  {
    v9 = v0[227];
    v10 = v0[205];
    v11 = v0[204];
    v12 = v0[203];
    v13 = v0[202];
    sub_1E0FF0440(v0[206], &qword_1ECE88C78, &qword_1E10B5E50);
    sub_1E10ADE7C();
    sub_1E10693E0(MEMORY[0x1E69E7CC0]);
    sub_1E108D780(&qword_1ECE8B240, MEMORY[0x1E6969C20]);
    sub_1E10ADB6C();
    v14 = sub_1E10ADEAC();
    (*(v11 + 8))(v10, v12);
    swift_willThrow();

    v0[245] = v14;
    v15 = v0[223];

    return MEMORY[0x1EEE6DFA0](sub_1E1088C14, v15, 0);
  }

  else
  {
    v16 = v0[227];
    (*(v0[217] + 32))(v0[218], v0[206], v0[216]);

    v17 = swift_task_alloc();
    v0[241] = v17;
    *v17 = v0;
    v17[1] = sub_1E1087FD4;
    v18 = v0[223];
    v19 = v0[218];

    return sub_1E101CF18((v0 + 150), v19);
  }
}

uint64_t sub_1E1087F64()
{
  v1 = v0[227];

  v0[245] = v0[240];
  v2 = v0[223];

  return MEMORY[0x1EEE6DFA0](sub_1E1088C14, v2, 0);
}

uint64_t sub_1E1087FD4()
{
  v2 = *v1;
  v3 = *(*v1 + 1928);
  v4 = *v1;
  *(*v1 + 1936) = v0;

  v5 = *(v2 + 1784);
  if (v0)
  {
    v6 = sub_1E1088694;
  }

  else
  {
    v6 = sub_1E1088100;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E1088100()
{
  v1 = *(v0 + 1936);
  *(v0 + 1136) = *(v0 + 1248);
  *(v0 + 1152) = *(v0 + 1264);
  *(v0 + 1168) = *(v0 + 1280);
  *(v0 + 1184) = *(v0 + 1296);
  *(v0 + 1088) = *(v0 + 1200);
  *(v0 + 1104) = *(v0 + 1216);
  *(v0 + 1120) = *(v0 + 1232);
  v2 = sub_1E102F05C((v0 + 768));
  if (v1)
  {
    v3 = *(v0 + 1784);
    v4 = *(v0 + 1776);
    v5 = *(v0 + 1768);
    v6 = *(v0 + 1744);
    v7 = *(v0 + 1736);
    v8 = *(v0 + 1728);
    sub_1E0FF0440(v0 + 1088, &qword_1ECE8B280, &qword_1E10BA7B0);

    (*(v7 + 8))(v6, v8);
    sub_1E0FF0440(v5, &unk_1ECE8B220, &qword_1E10BA788);
    sub_1E0FF0440(v4, &unk_1ECE8B220, &qword_1E10BA788);
    *(v0 + 1952) = v1;
    v9 = sub_1E10889DC;
LABEL_27:
    isUniquelyReferenced_nonNull_native = v9;
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v10 = *(v0 + 1592);
    v75 = *(v0 + 1584);
    v11 = *(v0 + 1552);
    v12 = v2;
    sub_1E0FF0440(v0 + 1088, &qword_1ECE8B280, &qword_1E10BA7B0);
    v13 = *(v0 + 864);
    *(v0 + 1040) = *(v0 + 880);
    v14 = *(v0 + 912);
    *(v0 + 1056) = *(v0 + 896);
    *(v0 + 1072) = v14;
    v15 = *(v0 + 816);
    *(v0 + 960) = *(v0 + 800);
    *(v0 + 976) = v15;
    v16 = *(v0 + 848);
    *(v0 + 992) = *(v0 + 832);
    *(v0 + 1008) = v16;
    *(v0 + 1024) = v13;
    v17 = *(v0 + 784);
    *(v0 + 928) = *(v0 + 768);
    *(v0 + 944) = v17;
    v18 = v11 + 64;
    v19 = -1;
    v20 = -1 << *(v11 + 32);
    if (-v20 < 64)
    {
      v19 = ~(-1 << -v20);
    }

    v21 = v19 & *(v11 + 64);
    v22 = (63 - v20) >> 6;
    v67 = v10 + 8;
    v74 = v11;

    v26 = 0;
    v76 = v12;
    v68 = (v12 + 40);
    v71 = MEMORY[0x1E69E7CC0];
    v72 = v22;
    *(v0 + 1944) = MEMORY[0x1E69E7CC0];
    for (i = v11 + 64; v21; v18 = i)
    {
LABEL_13:
      v28 = *(v0 + 1608);
      v29 = *(v0 + 1600);
      v30 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v31 = v30 | (v26 << 6);
      v32 = *(v74 + 48);
      v33 = sub_1E10ADCFC();
      v34 = *(v33 - 8);
      v35 = v32 + *(v34 + 72) * v31;
      v36 = v33;
      (*(v34 + 16))(v28, v35, v33);
      v37 = (*(v74 + 56) + 16 * v31);
      v38 = *v37;
      v39 = v37[1];
      v40 = (v28 + *(v75 + 48));
      *v40 = v38;
      v40[1] = v39;
      sub_1E0FEDC50(v28, v29, &qword_1ECE89878, &unk_1E10B6A20);
      v41 = (v29 + *(v75 + 48));
      v42 = *v41;
      v43 = v41[1];

      v44 = sub_1E10AE74C();

      if (v44 >= 8)
      {
        (*(v34 + 8))(*(v0 + 1600), v36);
      }

      else
      {
        v69 = *(v34 + 8);
        v70 = v36;
        isUniquelyReferenced_nonNull_native = v69(*(v0 + 1600), v36);
        v45 = *(v76 + 16);
        if (v45)
        {
          v46 = 0;
          v47 = v68;
          while (v46 < *(v76 + 16))
          {
            v48 = *(v47 - 1);
            v49 = *v47;

            if (sub_1E109C394(v44, v48, v49))
            {
              v50 = *(v0 + 1608);
              v51 = *(v0 + 1592);
              sub_1E0FEDC50(v50, v51, &qword_1ECE89878, &unk_1E10B6A20);
              v52 = *(v67 + *(v75 + 48));

              v53 = sub_1E10ADCDC();
              v66 = v54;
              sub_1E0FF0440(v50, &qword_1ECE89878, &unk_1E10B6A20);
              v69(v51, v70);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                isUniquelyReferenced_nonNull_native = sub_1E1058CB8(0, *(v71 + 16) + 1, 1, v71);
                v71 = isUniquelyReferenced_nonNull_native;
              }

              v18 = i;
              v56 = *(v71 + 16);
              v55 = *(v71 + 24);
              if (v56 >= v55 >> 1)
              {
                isUniquelyReferenced_nonNull_native = sub_1E1058CB8((v55 > 1), v56 + 1, 1, v71);
                v71 = isUniquelyReferenced_nonNull_native;
              }

              *(v71 + 16) = v56 + 1;
              v57 = v71 + 32 * v56;
              *(v57 + 32) = v53;
              *(v57 + 40) = v66;
              *(v57 + 48) = v48;
              *(v57 + 56) = v49;
              *(v0 + 1944) = v71;
              v22 = v72;
              if (v21)
              {
                goto LABEL_13;
              }

              goto LABEL_9;
            }

            ++v46;
            v47 += 16;
            if (v45 == v46)
            {
              goto LABEL_8;
            }
          }

          goto LABEL_31;
        }
      }

LABEL_8:
      isUniquelyReferenced_nonNull_native = sub_1E0FF0440(*(v0 + 1608), &qword_1ECE89878, &unk_1E10B6A20);
      v22 = v72;
    }

LABEL_9:
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v22)
      {
        v58 = *(v0 + 1784);
        v59 = *(v0 + 1776);
        v60 = *(v0 + 1768);
        v61 = *(v0 + 1744);
        v62 = *(v0 + 1736);
        v63 = *(v0 + 1728);
        v64 = *(v0 + 1552);

        (*(v62 + 8))(v61, v63);
        sub_1E0FF0440(v60, &unk_1ECE8B220, &qword_1E10BA788);
        sub_1E0FF0440(v59, &unk_1ECE8B220, &qword_1E10BA788);

        v9 = sub_1E1088770;
        goto LABEL_27;
      }

      v21 = *(v18 + 8 * v27);
      ++v26;
      if (v21)
      {
        v26 = v27;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](isUniquelyReferenced_nonNull_native, v24, v25);
}

uint64_t sub_1E1088694()
{
  v1 = v0[223];
  v2 = v0[222];
  v3 = v0[221];
  v4 = v0[218];
  v5 = v0[217];
  v6 = v0[216];

  (*(v5 + 8))(v4, v6);
  sub_1E0FF0440(v3, &unk_1ECE8B220, &qword_1E10BA788);
  sub_1E0FF0440(v2, &unk_1ECE8B220, &qword_1E10BA788);
  v0[244] = v0[242];

  return MEMORY[0x1EEE6DFA0](sub_1E10889DC, 0, 0);
}

uint64_t sub_1E1088770()
{
  v1 = *(v0 + 1944);
  v2 = *(v0 + 1576);
  v3 = *(v0 + 1568);
  v4 = *(v0 + 1040);
  *(v0 + 528) = *(v0 + 1024);
  *(v0 + 544) = v4;
  v5 = *(v0 + 1072);
  *(v0 + 560) = *(v0 + 1056);
  *(v0 + 576) = v5;
  v6 = *(v0 + 976);
  *(v0 + 464) = *(v0 + 960);
  *(v0 + 480) = v6;
  v7 = *(v0 + 1008);
  *(v0 + 496) = *(v0 + 992);
  *(v0 + 512) = v7;
  v8 = *(v0 + 944);
  *(v0 + 432) = *(v0 + 928);
  *(v0 + 448) = v8;
  *(v0 + 592) = v1;
  sub_1E0FEDC50(v0 + 432, v0 + 600, &qword_1ECE8B288, &qword_1E10BA7B8);

  sub_1E0FEDAB8(v0 + 928);
  v9 = *(v0 + 1040);
  *(v0 + 352) = *(v0 + 1024);
  *(v0 + 368) = v9;
  v10 = *(v0 + 1072);
  *(v0 + 384) = *(v0 + 1056);
  *(v0 + 400) = v10;
  v11 = *(v0 + 976);
  *(v0 + 288) = *(v0 + 960);
  *(v0 + 304) = v11;
  v12 = *(v0 + 1008);
  *(v0 + 320) = *(v0 + 992);
  *(v0 + 336) = v12;
  v13 = *(v0 + 944);
  *(v0 + 256) = *(v0 + 928);
  *(v0 + 272) = v13;
  *(v0 + 416) = v1;
  sub_1E108D838(v0 + 256);
  v14 = type metadata accessor for VenueScheduleXPCValueContainer();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value];
  v18 = *(v0 + 272);
  v17 = *(v0 + 288);
  *v16 = *(v0 + 256);
  v19 = *(v0 + 368);
  v20 = *(v0 + 384);
  v21 = *(v0 + 400);
  *(v16 + 153) = *(v0 + 409);
  *(v16 + 8) = v20;
  *(v16 + 9) = v21;
  *(v16 + 7) = v19;
  v22 = *(v0 + 304);
  v23 = *(v0 + 320);
  v24 = *(v0 + 352);
  *(v16 + 5) = *(v0 + 336);
  *(v16 + 6) = v24;
  *(v16 + 3) = v22;
  *(v16 + 4) = v23;
  *(v16 + 1) = v18;
  *(v16 + 2) = v17;
  *(v0 + 1464) = v15;
  *(v0 + 1472) = v14;
  v25 = objc_msgSendSuper2((v0 + 1464), sel_init);
  v3();

  v26 = *(v0 + 1776);
  v27 = *(v0 + 1768);
  v28 = *(v0 + 1760);
  v29 = *(v0 + 1752);
  v30 = *(v0 + 1744);
  v31 = *(v0 + 1720);
  v32 = *(v0 + 1696);
  v33 = *(v0 + 1688);
  v34 = *(v0 + 1680);
  v35 = *(v0 + 1672);
  v38 = *(v0 + 1648);
  v39 = *(v0 + 1640);
  v40 = *(v0 + 1616);
  v41 = *(v0 + 1608);
  v42 = *(v0 + 1600);
  v43 = *(v0 + 1592);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1E10889DC()
{
  v1 = *(v0 + 1952);
  v2 = *(v0 + 1576);
  v3 = *(v0 + 1568);
  *(v0 + 1512) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 1416);
  v7 = *(v0 + 1424);
  if (!v5)
  {
    v6 = 0;
    v7 = 0;
  }

  *(v0 + 80) = v6;
  *(v0 + 88) = v7;
  sub_1E108D7C8(v0 + 80);
  v8 = type metadata accessor for VenueScheduleXPCValueContainer();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value];
  v11 = *(v0 + 233);
  v13 = *(v0 + 208);
  v12 = *(v0 + 224);
  *(v10 + 7) = *(v0 + 192);
  *(v10 + 8) = v13;
  *(v10 + 9) = v12;
  *(v10 + 153) = v11;
  v15 = *(v0 + 160);
  v14 = *(v0 + 176);
  v16 = *(v0 + 144);
  *(v10 + 3) = *(v0 + 128);
  *(v10 + 4) = v16;
  *(v10 + 5) = v15;
  *(v10 + 6) = v14;
  v18 = *(v0 + 96);
  v17 = *(v0 + 112);
  *v10 = *(v0 + 80);
  *(v10 + 1) = v18;
  *(v10 + 2) = v17;
  *(v0 + 1432) = v9;
  *(v0 + 1440) = v8;
  v19 = objc_msgSendSuper2((v0 + 1432), sel_init);
  v3();

  v20 = *(v0 + 1776);
  v21 = *(v0 + 1768);
  v22 = *(v0 + 1760);
  v23 = *(v0 + 1752);
  v24 = *(v0 + 1744);
  v25 = *(v0 + 1720);
  v26 = *(v0 + 1696);
  v27 = *(v0 + 1688);
  v28 = *(v0 + 1680);
  v29 = *(v0 + 1672);
  v32 = *(v0 + 1648);
  v33 = *(v0 + 1640);
  v34 = *(v0 + 1616);
  v35 = *(v0 + 1608);
  v36 = *(v0 + 1600);
  v37 = *(v0 + 1592);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1E1088C14()
{
  v1 = v0[223];
  v2 = v0[222];
  v3 = v0[221];

  sub_1E0FF0440(v3, &unk_1ECE8B220, &qword_1E10BA788);
  sub_1E0FF0440(v2, &unk_1ECE8B220, &qword_1E10BA788);
  v0[244] = v0[245];

  return MEMORY[0x1EEE6DFA0](sub_1E10889DC, 0, 0);
}

uint64_t sub_1E1088CC4()
{
  v2 = *(sub_1E10ADCBC() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1E0FE6540;

  return sub_1E1086A44(v4, v5, v6, v0 + v3, v8, v9);
}

void sub_1E1088E48(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v36 = a1;
  v37 = a8;
  v34 = a5;
  v35 = a7;
  v38 = a9;
  v39 = a10;
  v11 = sub_1E10ADCBC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v16 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v32 - v19;
  v21 = _Block_copy(a6);
  v22 = sub_1E10AE05C();
  v32 = v23;
  v33 = v22;
  sub_1E10ADCFC();
  sub_1E108D780(&qword_1EE17FF60, MEMORY[0x1E69695A8]);
  v24 = sub_1E10ADFDC();
  sub_1E10ADC8C();
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  v26 = v36;
  v35 = *&v36[OBJC_IVAR____TtC12ShazamEvents19ShazamEventsService_serviceCoordinator];
  (*(v12 + 16))(v16, v20, v11);
  v27 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v28 = swift_allocObject();
  v29 = v32;
  *(v28 + 2) = v33;
  *(v28 + 3) = v29;
  *(v28 + 4) = v24;
  (*(v12 + 32))(&v28[v27], v16, v11);
  v30 = &v28[(v13 + v27 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v30 = v38;
  *(v30 + 1) = v25;
  v31 = v26;

  sub_1E0FE5278(v39, v28);

  (*(v12 + 8))(v20, v11);
}

uint64_t sub_1E10890DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a5;
  v27 = a8;
  v25[0] = a1;
  v25[1] = a7;
  v13 = sub_1E10ADCBC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16, v17);
  v18 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v8 + OBJC_IVAR____TtC12ShazamEvents19ShazamEventsService_serviceCoordinator);
  (*(v14 + 16))(v18, a4, v13);
  v20 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v21 = (v15 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = v25[0];
  *(v22 + 3) = a2;
  *(v22 + 4) = a3;
  (*(v14 + 32))(&v22[v20], v18, v13);
  v23 = &v22[v21];
  *v23 = v26;
  *(v23 + 1) = a6;

  sub_1E0FE5278(v27, v22);
}

uint64_t sub_1E1089268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[131] = a6;
  v6[130] = a5;
  v6[129] = a4;
  v6[128] = a3;
  v6[127] = a2;
  v6[126] = a1;
  v7 = *(*(sub_1E10ADE9C() - 8) + 64) + 15;
  v6[132] = swift_task_alloc();
  v8 = sub_1E10ADEBC();
  v6[133] = v8;
  v9 = *(v8 - 8);
  v6[134] = v9;
  v10 = *(v9 + 64) + 15;
  v6[135] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50) - 8) + 64) + 15;
  v6[136] = swift_task_alloc();
  v12 = sub_1E10ADC1C();
  v6[137] = v12;
  v13 = *(v12 - 8);
  v6[138] = v13;
  v14 = *(v13 + 64) + 15;
  v6[139] = swift_task_alloc();
  v6[140] = swift_task_alloc();
  v6[141] = swift_task_alloc();
  v6[142] = swift_task_alloc();
  v15 = sub_1E10ADCBC();
  v6[143] = v15;
  v16 = *(v15 - 8);
  v6[144] = v16;
  v17 = *(v16 + 64) + 15;
  v6[145] = swift_task_alloc();
  v18 = sub_1E10ADBBC();
  v6[146] = v18;
  v19 = *(v18 - 8);
  v6[147] = v19;
  v20 = *(v19 + 64) + 15;
  v6[148] = swift_task_alloc();
  v6[149] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B210, &unk_1E10BA778) - 8) + 64) + 15;
  v6[150] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89878, &unk_1E10B6A20);
  v6[151] = v22;
  v23 = *(v22 - 8);
  v6[152] = v23;
  v24 = *(v23 + 64) + 15;
  v6[153] = swift_task_alloc();
  v6[154] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B220, &qword_1E10BA788) - 8) + 64) + 15;
  v6[155] = swift_task_alloc();
  v6[156] = swift_task_alloc();
  v6[157] = swift_task_alloc();
  v6[158] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E10895EC, 0, 0);
}

uint64_t sub_1E10895EC()
{
  v1 = v0[158];
  v2 = v0[157];
  v3 = v0[144];
  v4 = v0[143];
  v5 = v0[129];
  v6 = sub_1E1062474();
  type metadata accessor for EventFetcher();
  v7 = swift_allocObject();
  v0[159] = v7;
  swift_defaultActor_initialize();
  type metadata accessor for NetworkRunner();
  swift_allocObject();
  v7[19] = sub_1E107A498(2);
  v7[14] = v6;
  v7[17] = &type metadata for EventsRemoteConfiguration;
  v7[18] = &off_1F5BF1318;
  (*(v3 + 16))(v1, v5, v4);
  v8 = *(v3 + 56);
  v8(v1, 0, 1, v4);
  v8(v2, 1, 1, v4);

  return MEMORY[0x1EEE6DFA0](sub_1E1089738, v7, 0);
}

uint64_t sub_1E1089738()
{
  v1 = v0[152];
  v2 = v0[151];
  v3 = v0[150];
  sub_1E1082CB8(v0[128], v3);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = v0[150];
    v5 = &unk_1ECE8B210;
    v6 = &unk_1E10BA778;
    goto LABEL_6;
  }

  v7 = v0[154];
  v8 = v0[153];
  v9 = v0[151];
  sub_1E0FEDEF4(v0[150], v7, &qword_1ECE89878, &unk_1E10B6A20);
  sub_1E0FEDC50(v7, v8, &qword_1ECE89878, &unk_1E10B6A20);
  v10 = (v8 + *(v9 + 48));
  v11 = *v10;
  v12 = v10[1];
  v13 = sub_1E10A215C();
  v14 = sub_1E10ADCFC();
  v0[160] = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v0[161] = v16;
  v0[162] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v8, v14);
  if (v13 != 1)
  {
    if (v13 != 8)
    {
      v21 = v0[159];
      v18 = v0[158];
      v19 = v0[157];
      v22 = v0[154];

      sub_1E0FF0440(v22, &qword_1ECE89878, &unk_1E10B6A20);
      goto LABEL_7;
    }

    v4 = v0[154];
    v5 = &qword_1ECE89878;
    v6 = &unk_1E10B6A20;
LABEL_6:
    sub_1E0FF0440(v4, v5, v6);
    v17 = v0[159];
    v18 = v0[158];
    v19 = v0[157];

LABEL_7:
    sub_1E0FF0440(v19, &unk_1ECE8B220, &qword_1E10BA788);
    sub_1E0FF0440(v18, &unk_1ECE8B220, &qword_1E10BA788);
    v0[184] = MEMORY[0x1E69E7CC0];
    v20 = sub_1E108AD50;
    goto LABEL_8;
  }

  v20 = sub_1E1089958;
LABEL_8:

  return MEMORY[0x1EEE6DFA0](v20, 0, 0);
}

uint64_t sub_1E1089958()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 1272) + 112), *(*(v0 + 1272) + 136));
  v2 = swift_task_alloc();
  *(v0 + 1304) = v2;
  *v2 = v0;
  v2[1] = sub_1E10899FC;

  return sub_1E1061C90(v1);
}

uint64_t sub_1E10899FC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 1304);
  v6 = *v3;
  v4[164] = a1;
  v4[165] = a2;
  v4[166] = v2;

  if (v2)
  {
    v4[186] = v2;
    v7 = v4[159];
    v8 = sub_1E108B104;
  }

  else
  {
    v8 = sub_1E1089B34;
    v7 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1E1089B34()
{
  v1 = v0[158];
  v2 = v0[156];
  v3 = v0[144];
  v4 = v0[143];
  v5 = v0[127];
  v6 = v0[126];
  v0[167] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB58, &unk_1E10BA790);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E10B2E70;
  strcpy((inited + 32), "sportgroupid");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = v6;
  *(inited + 56) = v5;

  v0[168] = sub_1E1017200(inited);
  swift_setDeallocating();
  sub_1E0FF0440(inited + 32, &unk_1ECE8B230, &qword_1E10B78A8);
  sub_1E0FEDC50(v1, v2, &unk_1ECE8B220, &qword_1E10BA788);
  v8 = *(v3 + 48);
  if (v8(v2, 1, v4) == 1)
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    v11 = v0[156];
    v12 = v0[145];
    v42 = v8;
    v13 = v0[144];
    v40 = v12;
    v41 = v0[143];
    v14 = v0[142];
    v15 = v0[141];
    v16 = v0[140];
    v17 = v0[139];
    v18 = v0[138];
    v19 = v0[137];
    v20 = (*(v13 + 32))();
    MEMORY[0x1E12ED140](v20);
    sub_1E10ADBFC();
    v21 = *(v18 + 8);
    v21(v17, v19);
    sub_1E10ADC0C();
    v21(v16, v19);
    sub_1E10ADBEC();
    v21(v15, v19);
    sub_1E108D780(&qword_1EE17FF70, MEMORY[0x1E69693A0]);
    sub_1E10ADCAC();
    v21(v14, v19);
    (*(v13 + 8))(v40, v41);
    v8 = v42;
    v9 = v0[121];
    v10 = v0[122];
  }

  v0[170] = v10;
  v0[169] = v9;
  v22 = v0[155];
  v23 = v0[143];
  sub_1E0FEDC50(v0[157], v22, &unk_1ECE8B220, &qword_1E10BA788);
  if (v8(v22, 1, v23) == 1)
  {
    v24 = 0;
    v25 = 0xE000000000000000;
  }

  else
  {
    v26 = v0[145];
    v27 = v0[144];
    v43 = v0[143];
    v28 = v0[142];
    v29 = v0[141];
    v30 = v0[140];
    v31 = v0[139];
    v32 = v0[138];
    v33 = v0[137];
    v34 = (*(v27 + 32))(v26, v0[155]);
    MEMORY[0x1E12ED140](v34);
    sub_1E10ADBFC();
    v35 = *(v32 + 8);
    v35(v31, v33);
    sub_1E10ADC0C();
    v35(v30, v33);
    sub_1E10ADBEC();
    v35(v29, v33);
    sub_1E108D780(&qword_1EE17FF70, MEMORY[0x1E69693A0]);
    sub_1E10ADCAC();
    v35(v28, v33);
    (*(v27 + 8))(v26, v43);
    v24 = v0[119];
    v25 = v0[120];
  }

  v0[172] = v25;
  v0[171] = v24;
  v0[124] = 48;
  v0[173] = sub_1E10AE8DC();
  v0[174] = v36;
  v37 = [objc_allocWithZone(MEMORY[0x1E69CDFE8]) init];
  v0[175] = v37;
  v0[2] = v0;
  v0[7] = v0 + 117;
  v0[3] = sub_1E108A05C;
  v38 = swift_continuation_init();
  v0[105] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB60, &qword_1E10B78A0);
  v0[102] = v38;
  v0[98] = MEMORY[0x1E69E9820];
  v0[99] = 1107296256;
  v0[100] = sub_1E105FFCC;
  v0[101] = &block_descriptor_4;
  [v37 storefrontCountryCode_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E108A05C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E108A13C, 0, 0);
}

uint64_t sub_1E108A13C()
{
  v25 = v0;
  v1 = v0[175];
  v21 = v0[173];
  v22 = v0[174];
  v20 = v0[172];
  v2 = v0[171];
  v3 = v0[170];
  v4 = v0[169];
  v5 = v0[168];
  v6 = v0[167];
  v23 = v0[166];
  v7 = v0[117];
  v8 = v0[118];
  v9 = sub_1E10AE07C();
  v11 = v10;

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E10BA690;
  *(inited + 32) = 0x6F726665726F7473;
  *(inited + 40) = 0xEA0000000000746ELL;
  *(inited + 48) = v9;
  *(inited + 56) = v11;
  *(inited + 64) = 0x657461646D6F7266;
  *(inited + 72) = 0xE800000000000000;
  *(inited + 80) = v4;
  *(inited + 88) = v3;
  *(inited + 96) = 0x657461646F74;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 112) = v2;
  *(inited + 120) = v20;
  *(inited + 128) = 0x74696D696CLL;
  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = v21;
  *(inited + 152) = v22;
  *(inited + 160) = 0x74657366666FLL;
  *(inited + 168) = 0xE600000000000000;
  *(inited + 176) = 0;
  *(inited + 184) = 0xE000000000000000;
  v13 = sub_1E1017200(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B230, &qword_1E10B78A8);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v5;
  sub_1E108D4E0(v13, sub_1E108D07C, 0, isUniquelyReferenced_nonNull_native, &v24);

  if (v23)
  {
  }

  else
  {
    v0[125] = v24;
    v16 = sub_1E1062A58();
    if (v17)
    {
      sub_1E1074334(v16, v17, 1735287148, 0xE400000000000000);
    }

    v18 = *__swift_project_boxed_opaque_existential_1((v0[159] + 112), *(v0[159] + 136));
    v19 = swift_task_alloc();
    v0[176] = v19;
    *v19 = v0;
    v19[1] = sub_1E108A3D8;

    return sub_1E1060034(v18);
  }
}

uint64_t sub_1E108A3D8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 1408);
  v9 = *v3;
  v4[177] = a1;
  v4[178] = a2;
  v4[179] = v2;

  if (v2)
  {
    v6 = v4[125];

    v7 = sub_1E108A750;
  }

  else
  {
    v7 = sub_1E108A4FC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}