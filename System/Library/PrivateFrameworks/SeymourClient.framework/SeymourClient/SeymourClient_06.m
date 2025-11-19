uint64_t sub_1B4E6548C(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v6 = *(sub_1B4F682C4() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = *(v1 + 2);
  v9 = *(v1 + 3);
  v10 = *(v1 + 5);
  v11 = *(v1 + 6);
  v12 = v1[7];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1B4DE13F0;

  return sub_1B4E65214(a1, v12, v8, v9, v10, v11, v1 + v7, v5);
}

uint64_t sub_1B4E655D0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 48) = a1;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 24) = a3;
  v9 = sub_1B4F687D4();
  *(v7 + 72) = v9;
  v10 = *(v9 - 8);
  *(v7 + 80) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 88) = swift_task_alloc();
  v12 = *(a7 - 8);
  *(v7 + 96) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150) - 8) + 64) + 15;
  *(v7 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4E65738, 0, 0);
}

uint64_t sub_1B4E65738()
{
  v1 = v0[15];
  v2 = v0[8];
  v3 = v0[6];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  v7 = sub_1B4F68324();
  v8 = *(*(v7 - 8) + 56);
  v8(v1, 1, 1, v7);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = v5;
  v9[6] = v4;

  v0[16] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v10 = sub_1B4F68444();
  sub_1B4E663D0(v1, &unk_1B4F73728, v9, v10);
  sub_1B4E6341C(v1);
  v8(v1, 1, 1, v7);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v2;
  v11[5] = v3;
  sub_1B4E663D0(v1, &unk_1B4F73738, v11, v10);
  sub_1B4E6341C(v1);
  v12 = *(MEMORY[0x1E69E8708] + 4);
  v13 = swift_task_alloc();
  v0[17] = v13;
  *v13 = v0;
  v13[1] = sub_1B4E6594C;
  v14 = v0[11];
  v15 = v0[3];

  return MEMORY[0x1EEE6DAC8](v14, 0, 0, v10);
}

uint64_t sub_1B4E6594C()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1B4E65C6C;
  }

  else
  {
    v3 = sub_1B4E65A60;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4E65A60()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(*(v0 + 80) + 8))(v1, *(v0 + 72));
    return sub_1B4F68B24();
  }

  else
  {
    v5 = *(v0 + 128);
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v8 = *(v0 + 56);
    (*(v2 + 32))(v6, v1, v3);
    (*(v2 + 16))(v7, v6, v3);
    sub_1B4F682C4();
    sub_1B4F682B4();
    (*(v2 + 8))(v6, v3);
    v9 = *(v0 + 112);
    v10 = *(v0 + 120);
    v11 = *(v0 + 104);
    v12 = *(v0 + 88);
    v13 = *(v0 + 64);
    v14 = **(v0 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
    sub_1B4F68434();

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1B4E65C6C()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 144);
  sub_1B4F682C4();
  sub_1B4F682A4();
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = *(v0 + 88);
  v8 = *(v0 + 64);
  v9 = **(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F68434();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1B4E65D74(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  v9 = v2[5];
  v10 = *(v2 + 6);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B4DE13F0;

  return sub_1B4E655D0(v9, a1, a2, v7, v8, v10, v6);
}

uint64_t sub_1B4E65E50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B4DE0D94;

  return sub_1B4E52034(a1, v4, v5, v7);
}

uint64_t sub_1B4E65F18()
{
  v3 = *(v0 + 3);
  v2 = *(v0 + 4);
  v4 = *(v0 + 2);
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B4DE0D94;

  return sub_1B4E5212C(v5);
}

uint64_t AssetBundleProgressUpdated.bundleProgress.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66124();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AssetBundleProgressUpdated.init(bundleProgress:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66124();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for AssetBundleProgressUpdated()
{
  result = qword_1EDB71868;
  if (!qword_1EDB71868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E6616C()
{
  result = sub_1B4F66124();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t NetworkEvaluator.__allocating_init(eventHub:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1B4DC9830(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t NetworkEvaluator.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return v0;
}

uint64_t NetworkEvaluator.queryNetworkConditions()()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(v1 + 16);
  v3 = *(v0 + 64);
  os_unfair_lock_unlock(v2);
  return v3;
}

uint64_t sub_1B4E662D4()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  os_unfair_lock_lock(*(v2 + 16));
  v3 = *(v1 + 64);
  os_unfair_lock_unlock(*(v2 + 16));
  return v3;
}

uint64_t sub_1B4E6638C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = v3;
  v6[3] = v4;
  return sub_1B4DDA8A0(v6, a2);
}

uint64_t sub_1B4E663D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = v24 - v12;
  sub_1B4E6B5DC(a1, v24 - v12);
  v14 = sub_1B4F68324();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1B4DD2BC4(v13, &unk_1EB8F7040, &qword_1B4F71150);
    if (*(a3 + 16))
    {
LABEL_3:
      v16 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v17 = sub_1B4F68274();
      v19 = v18;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B4F68314();
    (*(v15 + 8))(v13, v14);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
  v19 = 0;
LABEL_6:
  v20 = *v5;
  v21 = *(a4 + 16);
  v22 = (v19 | v17);
  if (v19 | v17)
  {
    v25[0] = 0;
    v25[1] = 0;
    v22 = v25;
    v25[2] = v17;
    v25[3] = v19;
  }

  v24[1] = 1;
  v24[2] = v22;
  v24[3] = v20;
  swift_task_create();
}

uint64_t static Promise.parallel(queue:maxConcurrent:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = a3;
  sub_1B4F67674();
  v9 = sub_1B4F68254();
  WitnessTable = swift_getWitnessTable();
  return sub_1B4E66654(a1, a2, &v12, a4, v9, WitnessTable, a5);
}

uint64_t sub_1B4E66654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25 = a6;
  v26 = a7;
  v27 = a1;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B4F68254();
  v14 = sub_1B4F67674();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v24 - v19;
  (*(v10 + 16))(v12, a3, a5, v18);
  v21 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a4;
  *(v22 + 3) = a5;
  *(v22 + 4) = v25;
  (*(v10 + 32))(&v22[v21], v12, a5);
  Promise.init(_:file:line:)(&unk_1B4F738F0, v22, "SeymourClient/PromiseConcurrency.swift", 38, 2, 36, v13);
  sub_1B4F67634();
  return (*(v15 + 8))(v20, v14);
}

uint64_t sub_1B4E66874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4E6689C, 0, 0);
}

uint64_t sub_1B4E6689C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v9 = *(v0 + 32);
  sub_1B4F68254();
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v9;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x1E69E88A0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_1B4E64E3C;
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v7, v6);
}

uint64_t sub_1B4E669B4(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54F8, &qword_1B4F738C0);
  v2[14] = v4;
  v5 = *(v4 - 8);
  v2[15] = v5;
  v6 = *(v5 + 64) + 15;
  v2[16] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v2[17] = v7;
  v8 = *(v7 - 8);
  v2[18] = v8;
  v2[19] = *(v8 + 64);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4E66B40, 0, 0);
}

uint64_t sub_1B4E66B40()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 144);
    v37 = *(v0 + 152);
    v36 = *(v3 + 16);
    v35 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v4 = v1 + v35;
    v33 = *(v3 + 72);
    v34 = (v3 + 32);
    v32 = (v3 + 8);
    do
    {
      v38 = v4;
      v39 = v2;
      v9 = *(v0 + 160);
      v8 = *(v0 + 168);
      v10 = *(v0 + 136);
      v11 = *(v0 + 96);
      v12 = *(v0 + 104);
      v36(v8);
      v13 = sub_1B4F68324();
      v14 = *(v13 - 8);
      (*(v14 + 56))(v12, 1, 1, v13);
      (v36)(v9, v8, v10);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v16 = (v15 + 16);
      *(v15 + 24) = 0;
      (*v34)(v15 + v35, v9, v10);
      sub_1B4E6B5DC(v12, v11);
      v17 = (*(v14 + 48))(v11, 1, v13);
      v18 = *(v0 + 96);
      if (v17 == 1)
      {
        sub_1B4DD2BC4(*(v0 + 96), &unk_1EB8F7040, &qword_1B4F71150);
        if (*v16)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1B4F68314();
        (*(v14 + 8))(v18, v13);
        if (*v16)
        {
LABEL_8:
          v21 = *(v15 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v19 = sub_1B4F68274();
          v20 = v22;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v19 = 0;
      v20 = 0;
LABEL_9:
      v23 = **(v0 + 80);
      v24 = v20 | v19;
      if (v20 | v19)
      {
        v24 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v19;
        *(v0 + 40) = v20;
      }

      v5 = *(v0 + 168);
      v6 = *(v0 + 136);
      v7 = *(v0 + 104);
      *(v0 + 48) = 1;
      *(v0 + 56) = v24;
      *(v0 + 64) = v23;
      swift_task_create();

      sub_1B4DD2BC4(v7, &unk_1EB8F7040, &qword_1B4F71150);
      (*v32)(v5, v6);
      v4 = v38 + v33;
      v2 = v39 - 1;
    }

    while (v39 != 1);
  }

  v25 = *(v0 + 128);
  v26 = **(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F683F4();
  *(v0 + 176) = MEMORY[0x1E69E7CC0];
  v27 = *(MEMORY[0x1E69E8710] + 4);
  v28 = swift_task_alloc();
  *(v0 + 184) = v28;
  *v28 = v0;
  v28[1] = sub_1B4E66F18;
  v29 = *(v0 + 128);
  v30 = *(v0 + 112);

  return MEMORY[0x1EEE6DAD8](v0 + 192, 0, 0, v30, v0 + 72);
}

uint64_t sub_1B4E66F18()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 176);

    v5 = sub_1B4E671E0;
  }

  else
  {
    v5 = sub_1B4E67030;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B4E67030()
{
  if (*(v0 + 192))
  {
    v1 = *(v0 + 160);
    v2 = *(v0 + 168);
    v3 = *(v0 + 104);
    v4 = *(v0 + 96);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    v5 = *(v0 + 8);
    v6 = *(v0 + 176);

    return v5(v6);
  }

  else
  {
    v8 = *(v0 + 176);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v0 + 176);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1B4DE28D8(0, *(v10 + 2) + 1, 1, v10);
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    v13 = v12 + 1;
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1B4DE28D8((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v13;
    *(v0 + 176) = v10;
    v14 = *(MEMORY[0x1E69E8710] + 4);
    v15 = swift_task_alloc();
    *(v0 + 184) = v15;
    *v15 = v0;
    v15[1] = sub_1B4E66F18;
    v16 = *(v0 + 128);
    v17 = *(v0 + 112);

    return MEMORY[0x1EEE6DAD8](v0 + 192, 0, 0, v17, v0 + 72);
  }
}

uint64_t sub_1B4E671E0()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[13];
  v4 = v0[12];
  (*(v0[15] + 8))(v0[16], v0[14]);
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B4E67298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = *(a4 - 8);
  v6[10] = v7;
  v8 = *(v7 + 64) + 15;
  v6[11] = swift_task_alloc();
  v9 = *(*(sub_1B4F687D4() - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v10 = sub_1B4F68424();
  v6[14] = v10;
  v11 = *(v10 - 8);
  v6[15] = v11;
  v12 = *(v11 + 64) + 15;
  v6[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4E67410, 0, 0);
}

uint64_t sub_1B4E67410()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];
  v8 = swift_task_alloc();
  v8[2] = v6;
  v8[3] = v3;
  v8[4] = v4;
  v8[5] = v7;
  sub_1B4F68114();

  v0[2] = sub_1B4F67EB4();
  v9 = *v7;
  sub_1B4F683F4();
  v10 = *(MEMORY[0x1E69E8710] + 4);
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_1B4E6755C;
  v12 = v0[16];
  v13 = v0[14];
  v14 = v0[12];

  return MEMORY[0x1EEE6DAD8](v14, 0, 0, v13, v0 + 3);
}

uint64_t sub_1B4E6755C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 16);

    v5 = sub_1B4E67814;
  }

  else
  {
    v5 = sub_1B4E67674;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B4E67674()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[7];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[11];
    v5 = v0[4];
    (*(v0[15] + 8))(v0[16], v0[14]);
    *v5 = v0[2];

    v6 = v0[1];

    return v6();
  }

  else
  {
    (*(v2 + 32))(v0[11], v1, v3);
    sub_1B4F68254();
    sub_1B4F68244();
    v8 = *(MEMORY[0x1E69E8710] + 4);
    v9 = swift_task_alloc();
    v0[17] = v9;
    *v9 = v0;
    v9[1] = sub_1B4E6755C;
    v10 = v0[16];
    v11 = v0[14];
    v12 = v0[12];

    return MEMORY[0x1EEE6DAD8](v12, 0, 0, v11, v0 + 3);
  }
}

uint64_t sub_1B4E67814()
{
  v2 = v0[11];
  v1 = v0[12];
  (*(v0[15] + 8))(v0[16], v0[14]);
  v3 = v0[3];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B4E678B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[1] = a2;
  v9 = sub_1B4F67674();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = v25 - v18;
  v20 = sub_1B4F68324();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v10 + 16))(v14, a1, v9);
  v21 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = a3;
  *(v22 + 5) = a4;
  *(v22 + 6) = a5;
  (*(v10 + 32))(&v22[v21], v14, v9);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v23 = sub_1B4F68444();
  sub_1B4E663D0(v19, &unk_1B4F73910, v22, v23);
  return sub_1B4DD2BC4(v19, &unk_1EB8F7040, &qword_1B4F71150);
}

uint64_t sub_1B4E67AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B4E67B10, 0, 0);
}

uint64_t sub_1B4E67B10()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = "SeymourClient/PromiseConcurrency.swift";
  *(v2 + 24) = 38;
  *(v2 + 32) = 2;
  *(v2 + 40) = 40;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1B4E67C28;
  v5 = v0[2];
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001B4F808E0, sub_1B4E6BB10, v2, v6);
}

uint64_t sub_1B4E67C28()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1B4E67D38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_1B4F67674();
  *v3 = v1;
  v3[1] = sub_1B4DE13F0;

  return Promise.resolve(file:line:)(a1, "SeymourClient/PromiseConcurrency.swift", 38, 2, 40, v4);
}

uint64_t sub_1B4E67E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a5;
  v25 = a6;
  v26 = a1;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B4F68254();
  v13 = sub_1B4F67674();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v23 - v18;
  (*(v9 + 16))(v11, a2, a4, v17);
  v20 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = a3;
  *(v21 + 3) = a4;
  *(v21 + 4) = v24;
  (*(v9 + 32))(&v21[v20], v11, a4);
  Promise.init(_:file:line:)(&unk_1B4F738E0, v21, "SeymourClient/PromiseConcurrency.swift", 38, 2, 64, v12);
  sub_1B4F67634();
  return (*(v14 + 8))(v19, v13);
}

uint64_t sub_1B4E68028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a3;
  v5[6] = a4;
  v5[3] = a1;
  v5[4] = a2;
  v8 = *(a3 - 8);
  v5[7] = v8;
  v9 = *(v8 + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v10 = sub_1B4F67674();
  v5[10] = v10;
  v11 = *(v10 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  v13 = *(*(sub_1B4F687D4() - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v14 = *(a4 - 8);
  v5[14] = v14;
  v15 = *(v14 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[17] = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  v5[18] = v17;
  v18 = *(v17 + 64) + 15;
  v5[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4E68268, 0, 0);
}

uint64_t sub_1B4E68268()
{
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];
  v0[2] = sub_1B4F67EB4();
  (*(v4 + 16))(v3, v7, v6);
  sub_1B4F680C4();
  v8 = v0[19];
  v9 = v0[17];
  v10 = v0[16];
  v11 = v0[13];
  v12 = v0[10];
  v13 = v0[11];
  v14 = v0[6];
  swift_getAssociatedConformanceWitness();
  sub_1B4F68834();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v15 = v0[15];
    v17 = v0[12];
    v16 = v0[13];
    v19 = v0[8];
    v18 = v0[9];
    v20 = v0[3];
    (*(v0[18] + 8))(v0[19], v0[17]);
    *v20 = v0[2];

    v21 = v0[1];

    return v21();
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v23 = swift_task_alloc();
    v0[20] = v23;
    *v23 = v0;
    v23[1] = sub_1B4E684A0;
    v24 = v0[12];
    v25 = v0[9];
    v26 = v0[10];

    return Promise.resolve(file:line:)(v25, "SeymourClient/PromiseConcurrency.swift", 38, 2, 67, v26);
  }
}

uint64_t sub_1B4E684A0()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);

    v5 = sub_1B4E6881C;
  }

  else
  {
    v5 = sub_1B4E685BC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B4E685BC()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[5];
  (*(v5 + 16))(v0[8], v4, v6);
  sub_1B4F68254();
  sub_1B4F68244();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[19];
  v8 = v0[16];
  v9 = v0[17];
  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[6];
  swift_getAssociatedConformanceWitness();
  sub_1B4F68834();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v14 = v0[15];
    v16 = v0[12];
    v15 = v0[13];
    v18 = v0[8];
    v17 = v0[9];
    v19 = v0[3];
    (*(v0[18] + 8))(v0[19], v0[17]);
    *v19 = v0[2];

    v20 = v0[1];

    return v20();
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v22 = swift_task_alloc();
    v0[20] = v22;
    *v22 = v0;
    v22[1] = sub_1B4E684A0;
    v23 = v0[12];
    v24 = v0[9];
    v25 = v0[10];

    return Promise.resolve(file:line:)(v24, "SeymourClient/PromiseConcurrency.swift", 38, 2, 67, v25);
  }
}

uint64_t sub_1B4E6881C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[13];
  v7 = v0[8];
  v6 = v0[9];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];
  v9 = v0[21];

  return v8();
}

uint64_t static Promise<>.parallel<A>(queue:maxConcurrent:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26[1] = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4570, &qword_1B4F6CE20);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v15 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v26 - v18;
  sub_1B4E66654(a1, a2, a3, MEMORY[0x1E69E7CA8] + 8, a4, *(a5 + 8), v26 - v18);
  v20 = swift_allocObject();
  *(v20 + 16) = nullsub_1;
  *(v20 + 24) = 0;
  (*(v12 + 16))(v15, v19, v11);
  v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v12 + 32))(v23 + v21, v15, v11);
  v24 = (v23 + v22);
  *v24 = sub_1B4E6BF78;
  v24[1] = v20;
  sub_1B4F675F4();
  return (*(v12 + 8))(v19, v11);
}

uint64_t static Promise<>.serial<A>(queue:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24[1] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4570, &qword_1B4F6CE20);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v13 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v24 - v16;
  sub_1B4E67E10(a1, a2, MEMORY[0x1E69E7CA8] + 8, a3, a4, v24 - v16);
  v18 = swift_allocObject();
  *(v18 + 16) = nullsub_1;
  *(v18 + 24) = 0;
  (*(v10 + 16))(v13, v17, v9);
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v10 + 32))(v21 + v19, v13, v9);
  v22 = (v21 + v20);
  *v22 = sub_1B4E6BF78;
  v22[1] = v18;
  sub_1B4F675F4();
  return (*(v10 + 8))(v17, v9);
}

uint64_t Promise<>.all<A>(queue:maxConcurrent:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = *(a5 + 16);
  v14[3] = a6;
  v14[4] = a7;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = a4;
  sub_1B4F68254();
  v15 = a1;

  sub_1B4F67624();
}

uint64_t sub_1B4E68E14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, unsigned int (*a5)(char *, uint64_t, uint64_t)@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = a7;
  v19[5] = a3;
  v19[6] = a4;
  v14 = sub_1B4F67674();
  v20 = sub_1B4EF8E20(sub_1B4E6B760, v19, a5, v14, MEMORY[0x1E69E73E0], a7, MEMORY[0x1E69E7410], v15);
  v16 = sub_1B4F68254();
  WitnessTable = swift_getWitnessTable();
  sub_1B4E66654(a1, a2, &v20, a6, v16, *(WitnessTable + 8), a8);
}

uint64_t sub_1B4E68F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v41 = a6;
  v42 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v40 = &v36 - v16;
  v17 = sub_1B4DE34F0(0x65uLL);
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v18 = sub_1B4F67C54();
  __swift_project_value_buffer(v18, qword_1EDB71F48);
  v19 = sub_1B4F67C34();
  v20 = sub_1B4F685E4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v37 = a7;
    v22 = v21;
    v23 = swift_slowAlloc();
    v38 = a1;
    v24 = v23;
    v43 = v23;
    *v22 = 134218498;
    *(v22 + 4) = v17;
    *(v22 + 12) = 2080;
    v25 = sub_1B4F689D4();
    v36 = a3;
    v27 = sub_1B4DC4F88(v25, v26, &v43);
    v28 = v41;
    a3 = v36;

    *(v22 + 14) = v27;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v28;
    _os_log_impl(&dword_1B4DC2000, v19, v20, "Converting from Async-Await to Promise: %ld:%s:%lu", v22, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    a1 = v38;
    MEMORY[0x1B8C831D0](v24, -1, -1);
    v29 = v22;
    a7 = v37;
    MEMORY[0x1B8C831D0](v29, -1, -1);
  }

  v30 = sub_1B4F68324();
  v31 = v40;
  (*(*(v30 - 8) + 56))(v40, 1, 1, v30);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = a7;
  *(v32 + 40) = v39;
  *(v32 + 48) = v17;
  v33 = v41;
  v34 = v42;
  *(v32 + 56) = a3;
  *(v32 + 64) = v34;
  *(v32 + 72) = a5;
  *(v32 + 80) = v33;
  *(v32 + 88) = a1;
  *(v32 + 96) = a2;

  sub_1B4E4E620(0, 0, v31, &unk_1B4F738A0, v32);
}

uint64_t sub_1B4E69258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v48 = a3;
  v49 = a7;
  v16 = a10;
  v46 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v47 = &v41 - v20;
  v21 = sub_1B4DE34F0(0x65uLL);
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v22 = sub_1B4F67C54();
  __swift_project_value_buffer(v22, qword_1EDB71F48);
  v23 = sub_1B4F67C34();
  v24 = sub_1B4F685E4();
  v25 = os_log_type_enabled(v23, v24);
  v45 = v21;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v42 = a1;
    v27 = v26;
    v28 = swift_slowAlloc();
    v43 = a8;
    v44 = a2;
    v41 = a10;
    v29 = v28;
    v50 = v28;
    *v27 = 134218498;
    *(v27 + 4) = v21;
    *(v27 + 12) = 2080;
    v30 = v48;
    v31 = sub_1B4F689D4();
    v33 = a4;
    v34 = sub_1B4DC4F88(v31, v32, &v50);

    *(v27 + 14) = v34;
    a4 = v33;
    *(v27 + 22) = 2048;
    *(v27 + 24) = a6;
    _os_log_impl(&dword_1B4DC2000, v23, v24, "Converting from Async-Await to Promise: %ld:%s:%lu", v27, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    v35 = v29;
    v16 = v41;
    a8 = v43;
    a2 = v44;
    MEMORY[0x1B8C831D0](v35, -1, -1);
    v36 = v27;
    a1 = v42;
    MEMORY[0x1B8C831D0](v36, -1, -1);
  }

  else
  {

    v30 = v48;
  }

  v37 = sub_1B4F68324();
  v38 = v47;
  (*(*(v37 - 8) + 56))(v47, 1, 1, v37);
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v39 + 32) = v49;
  *(v39 + 40) = a8;
  *(v39 + 48) = v45;
  *(v39 + 56) = v30;
  *(v39 + 64) = a4;
  *(v39 + 72) = a5;
  *(v39 + 80) = a6;
  *(v39 + 88) = a1;
  *(v39 + 96) = a2;

  sub_1B4E6B2F0(0, 0, v38, v16, v39);
}

uint64_t sub_1B4E69534(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v16;
  *(v8 + 48) = v15;
  *(v8 + 88) = v14;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 24) = a6;
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v8 + 72) = v10;
  *v10 = v8;
  v10[1] = sub_1B4E69648;

  return v12(v8 + 16);
}

uint64_t sub_1B4E69648()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1B4E6993C;
  }

  else
  {
    v3 = sub_1B4E6975C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4E6975C()
{
  v20 = v0;
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB71F48);
  v2 = sub_1B4F67C34();
  v3 = sub_1B4F685E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    v7 = *(v0 + 24);
    v6 = *(v0 + 32);
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v7;
    *(v9 + 12) = 2080;
    v11 = sub_1B4F689D4();
    v13 = sub_1B4DC4F88(v11, v12, &v18);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v5;
    _os_log_impl(&dword_1B4DC2000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B8C831D0](v10, -1, -1);
    MEMORY[0x1B8C831D0](v9, -1, -1);
  }

  v15 = *(v0 + 56);
  v14 = *(v0 + 64);
  v18 = *(v0 + 16);
  v19 = 0;

  v15(&v18);
  swift_bridgeObjectRelease_n();
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1B4E6993C()
{
  v22 = v0;
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB71F48);
  v2 = sub_1B4F67C34();
  v3 = sub_1B4F685E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    v7 = *(v0 + 24);
    v6 = *(v0 + 32);
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v7;
    *(v9 + 12) = 2080;
    v11 = sub_1B4F689D4();
    v13 = sub_1B4DC4F88(v11, v12, &v20);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v5;
    _os_log_impl(&dword_1B4DC2000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B8C831D0](v10, -1, -1);
    MEMORY[0x1B8C831D0](v9, -1, -1);
  }

  v14 = *(v0 + 80);
  v16 = *(v0 + 56);
  v15 = *(v0 + 64);
  v20 = v14;
  v21 = 1;
  v17 = v14;
  v16(&v20);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1B4E69B24(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v23;
  *(v8 + 40) = v22;
  *(v8 + 120) = v21;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45B8, &qword_1B4F6CE70);
  *(v8 + 64) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  v12 = sub_1B4F64ED4();
  *(v8 + 80) = v12;
  v13 = *(v12 - 8);
  *(v8 + 88) = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  *(v8 + 96) = v15;
  v19 = (a4 + *a4);
  v16 = a4[1];
  v17 = swift_task_alloc();
  *(v8 + 104) = v17;
  *v17 = v8;
  v17[1] = sub_1B4E69CE0;

  return v19(v15);
}

uint64_t sub_1B4E69CE0()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1B4E6A034;
  }

  else
  {
    v3 = sub_1B4E69DF4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4E69DF4()
{
  v26 = v0;
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB71F48);
  v2 = sub_1B4F67C34();
  v3 = sub_1B4F685E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = *(v0 + 120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v7;
    *(v9 + 12) = 2080;
    v11 = sub_1B4F689D4();
    v13 = sub_1B4DC4F88(v11, v12, &v25);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v5;
    _os_log_impl(&dword_1B4DC2000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B8C831D0](v10, -1, -1);
    MEMORY[0x1B8C831D0](v9, -1, -1);
  }

  v15 = *(v0 + 88);
  v14 = *(v0 + 96);
  v17 = *(v0 + 72);
  v16 = *(v0 + 80);
  v18 = *(v0 + 56);
  v19 = *(v0 + 64);
  v20 = *(v0 + 48);
  (*(v15 + 16))(v17, v14, v16);
  swift_storeEnumTagMultiPayload();
  v20(v17);
  sub_1B4DD2BC4(v17, &qword_1EB8F45B8, &qword_1B4F6CE70);
  (*(v15 + 8))(v14, v16);
  v21 = *(v0 + 96);
  v22 = *(v0 + 72);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1B4E6A034()
{
  v25 = v0;
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB71F48);
  v2 = sub_1B4F67C34();
  v3 = sub_1B4F685E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = *(v0 + 120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v7;
    *(v9 + 12) = 2080;
    v11 = sub_1B4F689D4();
    v13 = sub_1B4DC4F88(v11, v12, &v24);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v5;
    _os_log_impl(&dword_1B4DC2000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B8C831D0](v10, -1, -1);
    MEMORY[0x1B8C831D0](v9, -1, -1);
  }

  v14 = *(v0 + 112);
  v15 = *(v0 + 64);
  v16 = *(v0 + 72);
  v18 = *(v0 + 48);
  v17 = *(v0 + 56);
  *v16 = v14;
  swift_storeEnumTagMultiPayload();
  v19 = v14;
  v18(v16);

  sub_1B4DD2BC4(v16, &qword_1EB8F45B8, &qword_1B4F6CE70);
  v20 = *(v0 + 96);
  v21 = *(v0 + 72);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1B4E6A248(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v16;
  *(v8 + 40) = v15;
  *(v8 + 80) = v14;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v8 + 64) = v10;
  *v10 = v8;
  v10[1] = sub_1B4E6A354;

  return v12();
}

uint64_t sub_1B4E6A354()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1B4E6A630;
  }

  else
  {
    v3 = sub_1B4E6A468;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4E6A468()
{
  v20 = v0;
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB71F48);
  v2 = sub_1B4F67C34();
  v3 = sub_1B4F685E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = *(v0 + 80);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v7;
    *(v9 + 12) = 2080;
    v11 = sub_1B4F689D4();
    v13 = sub_1B4DC4F88(v11, v12, &v18);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v5;
    _os_log_impl(&dword_1B4DC2000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B8C831D0](v10, -1, -1);
    MEMORY[0x1B8C831D0](v9, -1, -1);
  }

  v14 = *(v0 + 48);
  v15 = *(v0 + 56);
  v18 = 0;
  v19 = 0;
  v14(&v18);
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1B4E6A630()
{
  v22 = v0;
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB71F48);
  v2 = sub_1B4F67C34();
  v3 = sub_1B4F685E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = *(v0 + 80);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v7;
    *(v9 + 12) = 2080;
    v11 = sub_1B4F689D4();
    v13 = sub_1B4DC4F88(v11, v12, &v20);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v5;
    _os_log_impl(&dword_1B4DC2000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B8C831D0](v10, -1, -1);
    MEMORY[0x1B8C831D0](v9, -1, -1);
  }

  v14 = *(v0 + 72);
  v16 = *(v0 + 48);
  v15 = *(v0 + 56);
  v20 = v14;
  v21 = 1;
  v17 = v14;
  v16(&v20);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1B4E6A818(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4570, &qword_1B4F6CE20);
  v7 = sub_1B4F67654();
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v9 = a4;

  v7(sub_1B4E6B790, v8);
}

uint64_t sub_1B4E6A8DC(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24[1] = a3;
  v9 = sub_1B4F67D54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B4F67D74();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2 &= 1u;
  v26 = a2;
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  *(v21 + 32) = a1;
  *(v21 + 40) = v26;
  aBlock[4] = sub_1B4E6B7B4;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B4DCA7B0;
  aBlock[3] = &block_descriptor_3;
  v22 = _Block_copy(aBlock);

  sub_1B4E219A8(a1, a2);
  sub_1B4F67D64();
  v24[2] = MEMORY[0x1E69E7CC0];
  sub_1B4DCD900();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
  sub_1B4DCBA40();
  sub_1B4F688A4();
  MEMORY[0x1B8C81F10](0, v20, v14, v22);
  _Block_release(v22);
  (*(v10 + 8))(v14, v9);
  (*(v16 + 8))(v20, v15);
}

uint64_t sub_1B4E6AB78(uint64_t a1, void *a2)
{
  *(v2 + 24) = *a2;
  *(v2 + 32) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4E6AB9C, 0, 0);
}

uint64_t sub_1B4E6AB9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54F0, &qword_1B4F73858);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = v0 + 24;
  v2 = *(MEMORY[0x1E69E88A0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1B4E6ACA8;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v0 + 16, v4);
}

uint64_t sub_1B4E6ACA8()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4E4D35C, 0, 0);
  }

  else
  {
    v5 = v3[4];
    v4 = v3[5];

    *v5 = v3[2];
    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1B4E6ADF0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B4DE0D94;

  return sub_1B4E6AB78(a1, (v1 + 16));
}

uint64_t sub_1B4E6AEB4(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4570, &qword_1B4F6CE20) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B4E6A818(a1, a2, v2 + v6, v7);
}

uint64_t objectdestroy_12Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4570, &qword_1B4F6CE20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

void sub_1B4E6B02C()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1B4DE0D94;

  JUMPOUT(0x1B4E6A248);
}

uint64_t sub_1B4E6B140(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(v3 + 16) = a1;
  v5 = *a3;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1B4E6B1E0;

  return sub_1B4E669B4(a2, v5);
}

uint64_t sub_1B4E6B1E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_1B4E6B2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = v26 - v12;
  sub_1B4E6B5DC(a3, v26 - v12);
  v14 = sub_1B4F68324();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1B4DD2BC4(v13, &unk_1EB8F7040, &qword_1B4F71150);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1B4F68314();
  (*(v15 + 8))(v13, v14);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v16 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v17 = sub_1B4F68274();
  v19 = v18;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v20 = sub_1B4F67FB4() + 32;
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;

    if (v19 | v17)
    {
      v27[0] = 0;
      v27[1] = 0;
      v22 = v27;
      v27[2] = v17;
      v27[3] = v19;
    }

    else
    {
      v22 = 0;
    }

    v26[1] = 7;
    v26[2] = v22;
    v26[3] = v20;
    v24 = swift_task_create();

    sub_1B4DD2BC4(a3, &unk_1EB8F7040, &qword_1B4F71150);

    return v24;
  }

LABEL_8:
  sub_1B4DD2BC4(a3, &unk_1EB8F7040, &qword_1B4F71150);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1B4E6B5DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B4E6B64C()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1B4DE13F0;

  JUMPOUT(0x1B4E69B24);
}

uint64_t sub_1B4E6B760()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

void sub_1B4E6B7A8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1B4E6B7B4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 40);
  v5 = *(v0 + 32);
  v6 = v3;
  return v2(&v5);
}

uint64_t objectdestroy_34Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

void sub_1B4E6B844()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1B4DE0D94;

  JUMPOUT(0x1B4E69534);
}

uint64_t sub_1B4E6B958(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return sub_1B4E6B140(a1, a2, v6);
}

uint64_t sub_1B4E6BA14(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B4DE0D94;

  return sub_1B4E67AF0(a1, v6, v7, v1 + v5);
}

uint64_t sub_1B4E6BB20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = (*(*(v5 - 8) + 80) + 40) & ~*(*(v5 - 8) + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B4DE13F0;

  return sub_1B4E68028(a1, v1 + v7, v4, v5, v6);
}

uint64_t objectdestroy_81Tm()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B4E6BC90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = (*(*(v5 - 8) + 80) + 40) & ~*(*(v5 - 8) + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B4DE0D94;

  return sub_1B4E66874(a1, v1 + v7, v4, v5, v6);
}

uint64_t sub_1B4E6BD80(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1B4DE0D94;

  return sub_1B4E67298(a1, a2, v8, v6, v7, v9);
}

uint64_t sub_1B4E6BE68(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = *(sub_1B4F67674() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B4DE0D94;

  return sub_1B4E67D38(a1);
}

void *SessionPreferenceClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = &protocol witness table for XPCClient;
  v12[4] = &protocol witness table for XPCClient;
  ObjectType = swift_getObjectType();
  v18 = v10;
  v17 = 35;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = sub_1B4F66754();

  swift_unknownObjectRetain();
  TransportDispatching.register<A>(event:handler:)(&v17, sub_1B4E6CC44, v14, ObjectType, v15, &protocol witness table for XPCClient, MEMORY[0x1E69CC648], MEMORY[0x1E69CC650]);

  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_1B4E6C1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v14 = a6(a1, a4, a5, v6, ObjectType, a2, a3);
  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_1B4E6C224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AudioLanguagePreferenceUpdated();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v11 = sub_1B4F66754();
  (*(*(v11 - 8) + 16))(v9, a1, v11);
  (*(a3 + 8))(v9, v5, &protocol witness table for AudioLanguagePreferenceUpdated, ObjectType, a3);
  return sub_1B4E6CE14(v9);
}

uint64_t SessionPreferenceClient.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SessionPreferenceClient.queryAudioFocusSelection()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v5 = 253;
  return (*(v2 + 24))(&v5, MEMORY[0x1E69CBEA0], MEMORY[0x1E69CBE90], MEMORY[0x1E69CBE98], ObjectType, v2);
}

uint64_t SessionPreferenceClient.queryAudioLanguagePreference()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 255;
  v4 = *(v2 + 24);
  v5 = sub_1B4F66754();
  return v4(&v7, v5, MEMORY[0x1E69CC648], MEMORY[0x1E69CC650], ObjectType, v2);
}

uint64_t sub_1B4E6C4EC(uint64_t a1, __int16 a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v18 = a2;
  v17[0] = sub_1B4F674D4();
  v17[1] = v12;
  v13 = *(v10 + 32);
  v14 = a3(0);
  v13(&v18, v17, MEMORY[0x1E69E6158], v14, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], a4, a5, ObjectType, v10);
}

uint64_t SessionPreferenceClient.updateAudioFocusSelection(_:)(char a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 254;
  v7 = a1 & 1;
  return (*(v4 + 16))(&v8, &v7, MEMORY[0x1E69CBEA0], MEMORY[0x1E69CBE90], MEMORY[0x1E69CBE98], ObjectType, v4);
}

uint64_t sub_1B4E6C718(uint64_t a1, __int16 a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v17 = a2;
  v13 = *(v11 + 16);
  v14 = a3(0);
  return v13(&v17, a1, v14, a4, a5, ObjectType, v11);
}

uint64_t sub_1B4E6C7CC()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  ObjectType = swift_getObjectType();
  v5 = 253;
  return (*(v1 + 24))(&v5, MEMORY[0x1E69CBEA0], MEMORY[0x1E69CBE90], MEMORY[0x1E69CBE98], ObjectType, v1);
}

uint64_t sub_1B4E6C850()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  ObjectType = swift_getObjectType();
  v7 = 255;
  v4 = *(v1 + 24);
  v5 = sub_1B4F66754();
  return v4(&v7, v5, MEMORY[0x1E69CC648], MEMORY[0x1E69CC650], ObjectType, v1);
}

uint64_t sub_1B4E6C968(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v11 = *(*v7 + 16);
  v12 = *(*v7 + 24);
  ObjectType = swift_getObjectType();
  v20 = a4;
  v19[0] = sub_1B4F674D4();
  v19[1] = v14;
  v15 = *(v12 + 32);
  v16 = a5(0);
  v15(&v20, v19, MEMORY[0x1E69E6158], v16, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], a6, a7, ObjectType, v12);
}

uint64_t sub_1B4E6CA4C(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  ObjectType = swift_getObjectType();
  v8 = 254;
  v7 = a1 & 1;
  return (*(v3 + 16))(&v8, &v7, MEMORY[0x1E69CBEA0], MEMORY[0x1E69CBE90], MEMORY[0x1E69CBE98], ObjectType, v3);
}

uint64_t sub_1B4E6CB90(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v13 = *(*v7 + 24);
  v14 = *(*v7 + 16);
  ObjectType = swift_getObjectType();
  v19 = a4;
  v16 = *(v13 + 16);
  v17 = a5(0);
  return v16(&v19, a1, v17, a6, a7, ObjectType, v13);
}

void *sub_1B4E6CC4C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a4[2] = a1;
  a4[3] = a6;
  a4[4] = a7;
  ObjectType = swift_getObjectType();
  v17 = a1;
  v16 = 35;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = sub_1B4F66754();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  TransportDispatching.register<A>(event:handler:)(&v16, sub_1B4E6CE70, v13, ObjectType, v14, a7, MEMORY[0x1E69CC648], MEMORY[0x1E69CC650]);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4E6CD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4E6CC4C(a1, a2, a3, v13, a5, a6, a7);
}

uint64_t sub_1B4E6CE14(uint64_t a1)
{
  v2 = type metadata accessor for AudioLanguagePreferenceUpdated();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4E6CE74(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v48 = a1;
  v49 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v50 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v16 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v17);
  v19 = &v37 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21, v22);
  v46 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_getAssociatedTypeWitness();
  v40 = *(v24 - 8);
  v41 = v24;
  v25 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v37 - v27;
  v29 = sub_1B4F68574();
  if (!v29)
  {
    return sub_1B4F68204();
  }

  v51 = v29;
  v55 = sub_1B4F68AB4();
  v42 = sub_1B4F68AC4();
  sub_1B4F68A64();
  result = sub_1B4F68564();
  if ((v51 & 0x8000000000000000) == 0)
  {
    v37 = v11;
    v38 = a5;
    v31 = 0;
    v43 = (v52 + 16);
    v44 = (v52 + 8);
    v45 = v8;
    while (!__OFADD__(v31, 1))
    {
      v52 = v31 + 1;
      v32 = sub_1B4F68594();
      v33 = v19;
      v34 = v19;
      v35 = AssociatedTypeWitness;
      (*v43)(v33);
      v32(v54, 0);
      v36 = v53;
      v48(v34, v50);
      if (v36)
      {
        (*v44)(v34, v35);
        (*(v40 + 8))(v28, v41);

        return (*(v37 + 32))(v39, v50, v38);
      }

      v53 = 0;
      (*v44)(v34, v35);
      sub_1B4F68AA4();
      result = sub_1B4F68584();
      ++v31;
      v19 = v34;
      if (v52 == v51)
      {
        (*(v40 + 8))(v28, v41);
        return v55;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.applyingRemoteBrowsingEnvironment(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[7] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v5 = sub_1B4F68254();
  WitnessTable = swift_getWitnessTable();
  return sub_1B4E6CE74(sub_1B4E6D374, v9, v5, a3, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);
}

uint64_t sub_1B4E6D3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Array<A>.applyingRemoteBrowsingEnvironment(_:)(a1, *v4, *(a2 + 16), *(a3 - 8));
  *a4 = result;
  return result;
}

uint64_t OptInPrivacyPreferenceUpdated.init(preference:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66624();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t OptInPrivacyPreferenceUpdated.preference.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66624();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for OptInPrivacyPreferenceUpdated()
{
  result = qword_1EDB71748;
  if (!qword_1EDB71748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CadenceMetricUpdated.cadenceMetric.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65274();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CadenceMetricUpdated.sessionIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for CadenceMetricUpdated() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for CadenceMetricUpdated()
{
  result = qword_1EB8F5500;
  if (!qword_1EB8F5500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CadenceMetricUpdated.init(cadenceMetric:sessionIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B4F65274();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for CadenceMetricUpdated();
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_1B4E6D724()
{
  result = sub_1B4F65274();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t NetworkMonitorError.hashValue.getter()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v1);
  return sub_1B4F68EC4();
}

unint64_t sub_1B4E6D848()
{
  result = qword_1EB8F5510;
  if (!qword_1EB8F5510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5510);
  }

  return result;
}

uint64_t RemoteParticipantDeviceType.init(modelString:)()
{
  v0 = sub_1B4F67F64();
  v1 = [v0 hasPrefix:@"iPhone"];

  if (v1)
  {

    return 0;
  }

  else
  {
    v3 = sub_1B4F67F64();
    v4 = [v3 hasPrefix:@"Watch"];

    if (v4)
    {

      return 1;
    }

    else
    {
      v5 = sub_1B4F67F64();
      v6 = [v5 hasPrefix:@"AppleTV"];

      if (v6)
      {

        return 3;
      }

      else
      {
        v7 = sub_1B4F67F64();

        v8 = v7;
        LODWORD(v7) = [v8 hasPrefix:@"iPad"];

        if (v7)
        {
          return 2;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t AchievementEnvironmentCacheUpdated.cache.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66F74();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AchievementEnvironmentCacheUpdated.init(cache:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66F74();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for AchievementEnvironmentCacheUpdated()
{
  result = qword_1EDB71628;
  if (!qword_1EDB71628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E6DB54()
{
  result = sub_1B4F66F74();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void static CurrentDevice.identifier()()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    v2 = MobileGestalt_copy_uniqueDeviceID_obj();

    if (v2)
    {
      sub_1B4F67F74();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id static CurrentDevice.hasExtendedColorDisplay()()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    hasExtendedColorDisplay = MobileGestalt_get_hasExtendedColorDisplay();

    return hasExtendedColorDisplay;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FitnessModeObserver.__allocating_init(eventHub:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 36) = 1;
  return result;
}

uint64_t FitnessModeObserver.init(eventHub:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = 0;
  *(v2 + 36) = 1;
  return v2;
}

uint64_t FitnessModeObserver.deinit()
{
  if ((*(v0 + 36) & 1) == 0)
  {
    [objc_opt_self() cancelToken_];
  }

  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1B4E6DD44()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v2 = sub_1B4F67C54();
    __swift_project_value_buffer(v2, qword_1EDB72490);
    v3._countAndFlagsBits = 0xD000000000000027;
    v3._object = 0x80000001B4F819D0;
    v4._object = 0x80000001B4F81A00;
    v4._countAndFlagsBits = 0xD00000000000001ALL;
    Logger.trace(file:function:)(v3, v4);
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, &type metadata for FitnessModeUpdated, &protocol witness table for FitnessModeUpdated, ObjectType, v6);
  }

  return result;
}

SeymourClient::FitnessMode __swiftcall FitnessModeObserver.queryMode()()
{
  v0 = [objc_opt_self() sharedBehavior];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 fitnessMode];

    LOBYTE(v0) = sub_1B4DE30B4(v2);
  }

  else
  {
    __break(1u);
  }

  return v0;
}

id sub_1B4E6DEF4()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v1 = result;
    v2 = [result fitnessMode];

    return sub_1B4DE30B4(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FitnessModeObserver.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FitnessModeObserver.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1B4E6E03C(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4E6E058(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t GatedResourceError.hashValue.getter()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v1);
  return sub_1B4F68EC4();
}

unint64_t sub_1B4E6E118()
{
  result = qword_1EB8F5518;
  if (!qword_1EB8F5518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5518);
  }

  return result;
}

uint64_t sub_1B4E6E390(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for ActivityTracer();
  __swift_allocate_value_buffer(v7, a2);
  v8 = __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for LogSystem();
  v10 = __swift_project_value_buffer(v9, a4) + *(v9 + 24);

  return sub_1B4DDD9BC(v10, v8);
}

uint64_t Meditation.applyingTimestampOffset(_:)()
{
  sub_1B4F64A84();

  return sub_1B4F64A94();
}

uint64_t sub_1B4E6E4C4()
{
  sub_1B4F64A84();

  return sub_1B4F64A94();
}

uint64_t DistanceMetricUpdated.distanceMetric.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65854();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DistanceMetricUpdated.sessionIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for DistanceMetricUpdated() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for DistanceMetricUpdated()
{
  result = qword_1EB8F5568;
  if (!qword_1EB8F5568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DistanceMetricUpdated.init(distanceMetric:sessionIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B4F65854();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for DistanceMetricUpdated();
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_1B4E6E73C()
{
  result = sub_1B4F65854();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B4E6E7B0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = sub_1B4F65B34();
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v27, v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 sources];
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    goto LABEL_15;
  }

  v12 = v10;
  sub_1B4E6EA2C();
  v13 = sub_1B4F681C4();

  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v14 = sub_1B4F688F4();
  if (!v14)
  {
LABEL_14:

LABEL_15:
    sub_1B4F661E4();

    return;
  }

LABEL_4:
  v28 = v11;
  sub_1B4E25808(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v23 = a2;
    v24 = a1;
    v15 = 0;
    v16 = v28;
    v17 = v13;
    v25 = v4 + 32;
    v26 = v13 & 0xC000000000000001;
    do
    {
      if (v26)
      {
        v18 = MEMORY[0x1B8C82290](v15, v17);
      }

      else
      {
        v18 = *(v17 + 8 * v15 + 32);
      }

      v19 = v18;
      v20 = [v18 bundleIdentifier];
      sub_1B4F67F74();

      sub_1B4F65B14();
      v28 = v16;
      v22 = *(v16 + 16);
      v21 = *(v16 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1B4E25808(v21 > 1, v22 + 1, 1);
        v16 = v28;
      }

      ++v15;
      *(v16 + 16) = v22 + 1;
      (*(v4 + 32))(v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v22, v9, v27);
      v17 = v13;
    }

    while (v14 != v15);

    a1 = v24;
    goto LABEL_15;
  }

  __break(1u);
}

unint64_t sub_1B4E6EA2C()
{
  result = qword_1EB8F5578;
  if (!qword_1EB8F5578)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB8F5578);
  }

  return result;
}

uint64_t AssetBundleUpdated.bundle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F64B34();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AssetBundleUpdated.init(bundle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F64B34();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for AssetBundleUpdated()
{
  result = qword_1EDB71998;
  if (!qword_1EDB71998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E6EBD0()
{
  result = sub_1B4F64B34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4E6EC3C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v41 = a3;
  v40 = a2(0);
  v5 = *(v40 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v40, v7);
  v39 = v33 - v8;
  v9 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v33[1] = v3;
    v46 = MEMORY[0x1E69E7CC0];
    sub_1B4E257A4(0, v9, 0);
    v11 = -1 << *(a1 + 32);
    v44 = a1 + 56;
    v45 = v46;
    result = sub_1B4F688B4();
    v12 = result;
    v13 = 0;
    v37 = v5 + 8;
    v38 = v5 + 16;
    v34 = a1 + 64;
    v35 = v9;
    v36 = v5;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v44 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_22;
      }

      v42 = *(a1 + 36);
      v17 = v39;
      v18 = v40;
      v19 = (*(v5 + 16))(v39, *(a1 + 48) + *(v5 + 72) * v12, v40);
      v43 = v41(v19);
      v21 = v20;
      result = (*(v5 + 8))(v17, v18);
      v22 = v45;
      v46 = v45;
      v24 = *(v45 + 16);
      v23 = *(v45 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_1B4E257A4((v23 > 1), v24 + 1, 1);
        v22 = v46;
      }

      *(v22 + 16) = v24 + 1;
      v25 = v22 + 16 * v24;
      *(v25 + 32) = v43;
      *(v25 + 40) = v21;
      v14 = 1 << *(a1 + 32);
      if (v12 >= v14)
      {
        goto LABEL_23;
      }

      v26 = *(v44 + 8 * v16);
      if ((v26 & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      v45 = v22;
      if (v42 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v27 = v26 & (-2 << (v12 & 0x3F));
      if (v27)
      {
        v14 = __clz(__rbit64(v27)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v15 = v35;
        v5 = v36;
      }

      else
      {
        v28 = v16 << 6;
        v29 = v16 + 1;
        v15 = v35;
        v30 = (v34 + 8 * v16);
        v5 = v36;
        while (v29 < (v14 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_1B4DF3104(v12, v42, 0);
            v14 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_1B4DF3104(v12, v42, 0);
      }

LABEL_4:
      ++v13;
      v12 = v14;
      if (v13 == v15)
      {
        return v45;
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

void sub_1B4E6EF4C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v41 = sub_1B4F65C64();
  v7 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41, v8);
  v38 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v10, v11);
  v40 = &v30 - v14;
  v37 = *(a3 + 16);
  if (v37)
  {
    v15 = 0;
    v34 = (v12 + 8);
    v35 = (v12 + 32);
    v36 = v12 + 16;
    v39 = MEMORY[0x1E69E7CC0];
    v32 = a2;
    v33 = a3;
    v31 = a1;
    while (v15 < *(a3 + 16))
    {
      v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v17 = *(v12 + 72);
      v18 = a3;
      v19 = a3 + v16 + v17 * v15;
      v20 = v12;
      v21 = a1;
      v22 = v40;
      (*(v12 + 16))(v40, v19, v41, v13);
      v23 = v22;
      a1 = v21;
      v24 = v21(v23);
      if (v3)
      {
        (*v34)(v40, v41);

        return;
      }

      if (v24)
      {
        v25 = *v35;
        (*v35)(v38, v40, v41);
        v26 = v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4E2584C(0, *(v26 + 16) + 1, 1);
          v26 = v42;
        }

        v29 = *(v26 + 16);
        v28 = *(v26 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1B4E2584C(v28 > 1, v29 + 1, 1);
          v26 = v42;
        }

        *(v26 + 16) = v29 + 1;
        v39 = v26;
        v25((v26 + v16 + v29 * v17), v38, v41);
        a3 = v33;
        a1 = v31;
      }

      else
      {
        (*v34)(v40, v41);
        a3 = v18;
      }

      ++v15;
      v12 = v20;
      if (v37 == v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC0];
LABEL_14:
  }
}

void sub_1B4E6F21C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for RemoteBrowsingJournalEntry();
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v26 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v23 - v13;
  v25 = *(a3 + 16);
  if (v25)
  {
    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    v23[1] = a2;
    v24 = a3;
    v23[0] = a1;
    while (v15 < *(a3 + 16))
    {
      v17 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v18 = *(v27 + 72);
      sub_1B4E95150(a3 + v17 + v18 * v15, v14, type metadata accessor for RemoteBrowsingJournalEntry);
      v19 = a1(v14);
      if (v3)
      {
        sub_1B4E951B8(v14, type metadata accessor for RemoteBrowsingJournalEntry);

        goto LABEL_15;
      }

      if (v19)
      {
        sub_1B4E95218(v14, v26, type metadata accessor for RemoteBrowsingJournalEntry);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4E25934(0, *(v16 + 16) + 1, 1);
          v16 = v28;
        }

        v22 = *(v16 + 16);
        v21 = *(v16 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1B4E25934(v21 > 1, v22 + 1, 1);
          v16 = v28;
        }

        *(v16 + 16) = v22 + 1;
        sub_1B4E95218(v26, v16 + v17 + v22 * v18, type metadata accessor for RemoteBrowsingJournalEntry);
        a3 = v24;
        a1 = v23[0];
      }

      else
      {
        sub_1B4E951B8(v14, type metadata accessor for RemoteBrowsingJournalEntry);
      }

      if (v25 == ++v15)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t RemoteBrowsingEnvironment.applyingJournal(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v1212 = a1;
  v1153 = a2;
  v1159 = sub_1B4F66BA4();
  v1164 = *(v1159 - 8);
  v3 = *(v1164 + 64);
  MEMORY[0x1EEE9AC00](v1159, v4);
  v1080 = &v971[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v1158 = sub_1B4F66A54();
  v1163 = *(v1158 - 8);
  v6 = *(v1163 + 64);
  MEMORY[0x1EEE9AC00](v1158, v7);
  v1079 = &v971[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v1157 = sub_1B4F669F4();
  v1215 = *(v1157 - 8);
  v9 = *(v1215 + 64);
  MEMORY[0x1EEE9AC00](v1157, v10);
  v1078 = &v971[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5580, &qword_1B4F73E08);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v1035 = &v971[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5588, &qword_1B4F7CFB0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v1034 = &v971[-v19];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5590, &qword_1B4F73E10);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v1077 = &v971[-v23];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5598, &qword_1B4F73E18);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8, v26);
  v1076 = &v971[-v27];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55A0, &qword_1B4F73E20);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8, v30);
  v1075 = &v971[-v31];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55A8, &qword_1B4F73E28);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8, v34);
  v1074 = &v971[-v35];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5140, &qword_1B4F70ED8);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8, v38);
  v1125 = &v971[-v39];
  v1124 = sub_1B4F66674();
  v1161 = *(v1124 - 8);
  v40 = *(v1161 + 64);
  MEMORY[0x1EEE9AC00](v1124, v41);
  v1123 = &v971[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v1138 = sub_1B4F66604();
  v1132 = *(v1138 - 8);
  v43 = *(v1132 + 64);
  MEMORY[0x1EEE9AC00](v1138, v44);
  v1026 = &v971[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v46, v47);
  v1098 = &v971[-v48];
  v1073 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55B0, &qword_1B4F78E30);
  v49 = *(*(v1073 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1073, v50);
  v1072 = &v971[-v51];
  v1137 = sub_1B4F66454();
  v1131 = *(v1137 - 8);
  v52 = v1131[8];
  MEMORY[0x1EEE9AC00](v1137, v53);
  v1011 = &v971[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v55, v56);
  v1105 = &v971[-v57];
  v1071 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55B8, &qword_1B4F73E30);
  v58 = *(*(v1071 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1071, v59);
  v1070 = &v971[-v60];
  v1136 = sub_1B4F65184();
  v1130 = *(v1136 - 8);
  v61 = *(v1130 + 64);
  MEMORY[0x1EEE9AC00](v1136, v62);
  v1010 = &v971[-((v63 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v64, v65);
  v1104 = &v971[-v66];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55C0, &qword_1B4F73E38);
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67 - 8, v69);
  v1122 = &v971[-v70];
  v1121 = sub_1B4F67154();
  v1160 = *(v1121 - 8);
  v71 = *(v1160 + 64);
  MEMORY[0x1EEE9AC00](v1121, v72);
  v1120 = &v971[-((v73 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v1119 = sub_1B4F666C4();
  v1145 = *(v1119 - 8);
  v74 = *(v1145 + 64);
  MEMORY[0x1EEE9AC00](v1119, v75);
  v1046 = &v971[-((v76 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v77, v78);
  v1033 = &v971[-v79];
  MEMORY[0x1EEE9AC00](v80, v81);
  v1045 = &v971[-v82];
  MEMORY[0x1EEE9AC00](v83, v84);
  v1032 = &v971[-v85];
  v1118 = sub_1B4F66484();
  v1146 = *(v1118 - 8);
  v86 = v1146[8];
  MEMORY[0x1EEE9AC00](v1118, v87);
  v1100 = &v971[-((v88 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v89, v90);
  v1082 = &v971[-v91];
  MEMORY[0x1EEE9AC00](v92, v93);
  v1099 = &v971[-v94];
  v1009 = sub_1B4F67244();
  v1135 = *(v1009 - 8);
  v95 = *(v1135 + 64);
  MEMORY[0x1EEE9AC00](v1009, v96);
  v1037 = &v971[-((v97 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v1144 = sub_1B4F670C4();
  v1141 = *(v1144 - 8);
  v98 = *(v1141 + 64);
  MEMORY[0x1EEE9AC00](v1144, v99);
  v1069 = &v971[-((v100 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v101, v102);
  v1068 = &v971[-v103];
  MEMORY[0x1EEE9AC00](v104, v105);
  v1067 = &v971[-v106];
  MEMORY[0x1EEE9AC00](v107, v108);
  v1116 = &v971[-v109];
  v1115 = sub_1B4F66AF4();
  v1129 = *(v1115 - 8);
  v110 = *(v1129 + 64);
  MEMORY[0x1EEE9AC00](v1115, v111);
  v1066 = &v971[-((v112 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v113, v114);
  v1065 = &v971[-v115];
  MEMORY[0x1EEE9AC00](v116, v117);
  v1114 = &v971[-v118];
  v1143 = sub_1B4F660C4();
  v1140 = *(v1143 - 8);
  v119 = *(v1140 + 64);
  MEMORY[0x1EEE9AC00](v1143, v120);
  v1064 = &v971[-((v121 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v122, v123);
  v1063 = &v971[-v124];
  MEMORY[0x1EEE9AC00](v125, v126);
  v1062 = &v971[-v127];
  MEMORY[0x1EEE9AC00](v128, v129);
  v1113 = &v971[-v130];
  v1147 = sub_1B4F67074();
  v1211 = *(v1147 - 8);
  v131 = *(v1211 + 64);
  MEMORY[0x1EEE9AC00](v1147, v132);
  v1044 = &v971[-((v133 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v134, v135);
  v1081 = &v971[-v136];
  MEMORY[0x1EEE9AC00](v137, v138);
  v1043 = &v971[-v139];
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4898, &qword_1B4F6E548);
  v141 = *(*(v140 - 8) + 64);
  MEMORY[0x1EEE9AC00](v140 - 8, v142);
  v1061 = &v971[-((v143 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v144, v145);
  v1101 = &v971[-v146];
  MEMORY[0x1EEE9AC00](v147, v148);
  v1060 = &v971[-v149];
  MEMORY[0x1EEE9AC00](v150, v151);
  v1083 = &v971[-v152];
  MEMORY[0x1EEE9AC00](v153, v154);
  v1059 = &v971[-v155];
  MEMORY[0x1EEE9AC00](v156, v157);
  v1110 = &v971[-v158];
  v1204 = sub_1B4F65C64();
  v1155 = *(v1204 - 8);
  v159 = *(v1155 + 64);
  MEMORY[0x1EEE9AC00](v1204, v160);
  v1134 = &v971[-((v161 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v162, v163);
  v1058 = &v971[-v164];
  MEMORY[0x1EEE9AC00](v165, v166);
  v1057 = &v971[-v167];
  v1133 = sub_1B4F65E04();
  v1173 = *(v1133 - 8);
  v168 = *(v1173 + 64);
  MEMORY[0x1EEE9AC00](v1133, v169);
  v1056 = &v971[-((v170 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v171, v172);
  v1055 = &v971[-v173];
  MEMORY[0x1EEE9AC00](v174, v175);
  v1054 = &v971[-v176];
  v1142 = sub_1B4F65DE4();
  v1139 = *(v1142 - 8);
  v177 = *(v1139 + 64);
  MEMORY[0x1EEE9AC00](v1142, v178);
  v1053 = &v971[-((v179 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v180, v181);
  v1052 = &v971[-v182];
  MEMORY[0x1EEE9AC00](v183, v184);
  v1051 = &v971[-v185];
  MEMORY[0x1EEE9AC00](v186, v187);
  v1112 = &v971[-v188];
  v1156 = sub_1B4F67A94();
  v1198 = *(v1156 - 8);
  v189 = *(v1198 + 64);
  MEMORY[0x1EEE9AC00](v1156, v190);
  v1050 = &v971[-((v191 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v192, v193);
  v1049 = &v971[-v194];
  MEMORY[0x1EEE9AC00](v195, v196);
  v1048 = &v971[-v197];
  v1109 = sub_1B4F65954();
  v1128 = *(v1109 - 8);
  v198 = *(v1128 + 64);
  MEMORY[0x1EEE9AC00](v1109, v199);
  v1025 = &v971[-((v200 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v201, v202);
  v1031 = &v971[-v203];
  MEMORY[0x1EEE9AC00](v204, v205);
  v1030 = &v971[-v206];
  MEMORY[0x1EEE9AC00](v207, v208);
  v1117 = &v971[-v209];
  v1111 = sub_1B4F64ED4();
  v1127 = *(v1111 - 8);
  v210 = *(v1127 + 64);
  MEMORY[0x1EEE9AC00](v1111, v211);
  v1047 = &v971[-((v212 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v1200 = type metadata accessor for RemoteBrowsingJournalProperty();
  v213 = *(*(v1200 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1200, v214);
  v1209 = &v971[-((v215 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v216, v217);
  v1208 = &v971[-v218];
  MEMORY[0x1EEE9AC00](v219, v220);
  v1206 = &v971[-v221];
  MEMORY[0x1EEE9AC00](v222, v223);
  v1199 = &v971[-v224];
  MEMORY[0x1EEE9AC00](v225, v226);
  v1205 = &v971[-v227];
  MEMORY[0x1EEE9AC00](v228, v229);
  v1207 = &v971[-v230];
  v1203 = type metadata accessor for RemoteBrowsingJournalEntry();
  v1126 = *(v1203 - 8);
  v231 = v1126[8];
  MEMORY[0x1EEE9AC00](v1203, v232);
  v1216 = &v971[-((v233 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55C8, &qword_1B4F73E40);
  v235 = *(*(v234 - 8) + 64);
  MEMORY[0x1EEE9AC00](v234 - 8, v236);
  v1152 = &v971[-v237];
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4100, &qword_1B4F6A618);
  v239 = *(*(v238 - 8) + 64);
  MEMORY[0x1EEE9AC00](v238 - 8, v240);
  v1151 = &v971[-v241];
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55D0, &qword_1B4F73E48);
  v243 = *(*(v242 - 8) + 64);
  MEMORY[0x1EEE9AC00](v242 - 8, v244);
  v1150 = &v971[-v245];
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55D8, &qword_1B4F73E50);
  v247 = *(*(v246 - 8) + 64);
  MEMORY[0x1EEE9AC00](v246 - 8, v248);
  v1149 = &v971[-v249];
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55E0, &qword_1B4F73E58);
  v251 = *(*(v250 - 8) + 64);
  MEMORY[0x1EEE9AC00](v250 - 8, v252);
  v1148 = &v971[-v253];
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55E8, &qword_1B4F73E60);
  v255 = *(*(v254 - 8) + 64);
  MEMORY[0x1EEE9AC00](v254 - 8, v256);
  v1170 = &v971[-v257];
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4108, &qword_1B4F6A620);
  v259 = *(*(v258 - 8) + 64);
  MEMORY[0x1EEE9AC00](v258 - 8, v260);
  v1169 = &v971[-v261];
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55F0, &qword_1B4F73E68);
  v263 = *(*(v262 - 8) + 64);
  MEMORY[0x1EEE9AC00](v262 - 8, v264);
  v1168 = &v971[-v265];
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4110, &qword_1B4F6A628);
  v267 = *(*(v266 - 8) + 64);
  MEMORY[0x1EEE9AC00](v266 - 8, v268);
  v1167 = &v971[-v269];
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55F8, &qword_1B4F73E70);
  v271 = *(*(v270 - 8) + 64);
  MEMORY[0x1EEE9AC00](v270 - 8, v272);
  v1166 = &v971[-v273];
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5600, &qword_1B4F73E78);
  v275 = *(*(v274 - 8) + 64);
  MEMORY[0x1EEE9AC00](v274 - 8, v276);
  v1165 = &v971[-v277];
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5608, &qword_1B4F79E90);
  v279 = *(*(v278 - 8) + 64);
  MEMORY[0x1EEE9AC00](v278 - 8, v280);
  v1197 = &v971[-v281];
  v1184 = sub_1B4F673D4();
  v1189 = *(v1184 - 8);
  v282 = *(v1189 + 64);
  MEMORY[0x1EEE9AC00](v1184, v283);
  v285 = &v971[-((v284 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v1182 = sub_1B4F66624();
  v1188 = *(v1182 - 8);
  v286 = *(v1188 + 64);
  MEMORY[0x1EEE9AC00](v1182, v287);
  v289 = &v971[-((v288 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5610, &qword_1B4F79E70);
  v291 = *(*(v290 - 8) + 64);
  MEMORY[0x1EEE9AC00](v290 - 8, v292);
  v294 = &v971[-v293];
  v1180 = sub_1B4F668C4();
  v1187 = *(v1180 - 8);
  v295 = *(v1187 + 64);
  MEMORY[0x1EEE9AC00](v1180, v296);
  v298 = &v971[-((v297 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D0, &unk_1B4F78940);
  v300 = *(*(v299 - 8) + 64);
  MEMORY[0x1EEE9AC00](v299 - 8, v301);
  v1029 = &v971[-((v302 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v303, v304);
  v1201 = &v971[-v305];
  MEMORY[0x1EEE9AC00](v306, v307);
  v309 = &v971[-v308];
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4138, &qword_1B4F6A640);
  v311 = *(*(v310 - 8) + 64);
  MEMORY[0x1EEE9AC00](v310 - 8, v312);
  v314 = &v971[-v313];
  v1172 = sub_1B4F67464();
  v1186 = *(v1172 - 8);
  v315 = *(v1186 + 64);
  MEMORY[0x1EEE9AC00](v1172, v316);
  v1008 = &v971[-((v317 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v318, v319);
  v1007 = &v971[-v320];
  MEMORY[0x1EEE9AC00](v321, v322);
  v324 = &v971[-v323];
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7050, &qword_1B4F71500);
  v326 = *(*(v325 - 8) + 64);
  MEMORY[0x1EEE9AC00](v325 - 8, v327);
  v1028 = &v971[-((v328 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v329, v330);
  v1103 = &v971[-v331];
  MEMORY[0x1EEE9AC00](v332, v333);
  v335 = &v971[-v334];
  v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5618, &qword_1B4F79E80);
  v337 = *(*(v336 - 8) + 64);
  MEMORY[0x1EEE9AC00](v336 - 8, v338);
  v340 = &v971[-v339];
  v1214 = sub_1B4F66F74();
  v1185 = *(v1214 - 8);
  v341 = *(v1185 + 64);
  MEMORY[0x1EEE9AC00](v1214, v342);
  v1027 = &v971[-((v343 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v344, v345);
  v1102 = &v971[-v346];
  MEMORY[0x1EEE9AC00](v347, v348);
  v1210 = &v971[-v349];
  sub_1B4F66BC4();
  v1232 = sub_1B4F66D74();
  v1178 = v340;
  sub_1B4F66C24();
  v1196 = sub_1B4F66D64();
  v1191 = v335;
  sub_1B4F66BD4();
  v1171 = v324;
  sub_1B4F66CA4();
  v1177 = sub_1B4F66C94();
  v1176 = v350;
  v1162 = v351;
  v1174 = v314;
  sub_1B4F66D24();
  v1231 = sub_1B4F66DB4();
  v1230 = sub_1B4F66C54();
  v1229 = sub_1B4F66D04();
  v1228 = sub_1B4F66C64();
  v1227 = sub_1B4F66D94();
  v1226 = sub_1B4F66C74();
  v1192 = v309;
  sub_1B4F66CD4();
  v1179 = v298;
  sub_1B4F66C04();
  v1190 = v294;
  sub_1B4F66D14();
  v1181 = v289;
  sub_1B4F66BE4();
  v1183 = v285;
  sub_1B4F66D84();
  v1195 = sub_1B4F66DC4();
  v1225 = sub_1B4F66D34();
  v1224 = sub_1B4F66CB4();
  v1223 = sub_1B4F66C34();
  v1175 = sub_1B4F66BF4();
  v1194 = sub_1B4F66C44();
  sub_1B4F66CC4();
  v1193 = sub_1B4F66C14();
  v1222 = sub_1B4F66CE4();
  v1221 = sub_1B4F66D44();
  v1154 = v2;
  v1220 = sub_1B4F66D54();
  v1213 = *(v1212 + 16);
  if (!v1213)
  {
    v359 = v1214;
    v361 = v1215;
LABEL_4:
    v362 = v1185;
    v363 = v1165;
    (*(v1185 + 16))(v1165, v1210, v359);
    (*(v362 + 56))(v363, 0, 1, v359);
    v1216 = v1232;
    v364 = sub_1B4F67594();
    (*(*(v364 - 8) + 56))(v1166, 1, 1, v364);
    v1208 = v1231;
    (*(v361 + 56))(v1167, 1, 1, v1157);
    v1215 = v1230;
    v365 = sub_1B4F66EC4();
    (*(*(v365 - 8) + 56))(v1168, 1, 1, v365);
    v1213 = v1227;
    v1212 = v1228;
    v1209 = v1229;
    (*(v1163 + 56))();
    v1211 = v1226;
    v366 = v1187;
    v367 = v1170;
    v368 = v1180;
    (*(v1187 + 16))(v1170, v1179, v1180);
    (*(v366 + 56))(v367, 0, 1, v368);
    v369 = v1188;
    v370 = v1148;
    v371 = v1182;
    (*(v1188 + 16))(v1148, v1181, v1182);
    (*(v369 + 56))(v370, 0, 1, v371);
    v372 = v1186;
    v373 = v1149;
    v374 = v1172;
    (*(v1186 + 16))(v1149, v1171, v1172);
    (*(v372 + 56))(v373, 0, 1, v374);
    v375 = v1189;
    v376 = v1150;
    v377 = v1184;
    (*(v1189 + 16))(v1150, v1183, v1184);
    (*(v375 + 56))(v376, 0, 1, v377);
    v1204 = v1225;
    v378 = v1151;
    (*(v1164 + 56))(v1151, 1, 1, v1159);
    v1205 = v1224;
    v1206 = v1223;
    v379 = sub_1B4F66044();
    v380 = v1152;
    (*(*(v379 - 8) + 56))(v1152, 1, 1, v379);
    v1201 = v1222;
    v1202 = v1221;
    v1203 = v1220;
    v381 = v1168;
    LODWORD(v1207) = v1162 & 1;
    v382 = v1167;
    v383 = v1166;
    v384 = v1165;
    sub_1B4F66DA4();
    sub_1B4DD2BC4(v380, &qword_1EB8F55C8, &qword_1B4F73E40);
    sub_1B4DD2BC4(v378, &qword_1EB8F4100, &qword_1B4F6A618);
    sub_1B4DD2BC4(v376, &qword_1EB8F55D0, &qword_1B4F73E48);
    sub_1B4DD2BC4(v373, &qword_1EB8F55D8, &qword_1B4F73E50);
    sub_1B4DD2BC4(v370, &qword_1EB8F55E0, &qword_1B4F73E58);
    sub_1B4DD2BC4(v1170, &qword_1EB8F55E8, &qword_1B4F73E60);
    sub_1B4DD2BC4(v1169, &qword_1EB8F4108, &qword_1B4F6A620);
    sub_1B4DD2BC4(v381, &qword_1EB8F55F0, &qword_1B4F73E68);
    sub_1B4DD2BC4(v382, &qword_1EB8F4110, &qword_1B4F6A628);
    sub_1B4DD2BC4(v383, &qword_1EB8F55F8, &qword_1B4F73E70);
    sub_1B4DD2BC4(v384, &qword_1EB8F5600, &qword_1B4F73E78);

    sub_1B4DD2BC4(v1197, &qword_1EB8F5608, &qword_1B4F79E90);

    (*(v1189 + 8))(v1183, v1184);
    (*(v1188 + 8))(v1181, v1182);
    sub_1B4DD2BC4(v1190, &qword_1EB8F5610, &qword_1B4F79E70);
    (*(v1187 + 8))(v1179, v1180);
    sub_1B4DD2BC4(v1192, &qword_1EB8F40D0, &unk_1B4F78940);

    sub_1B4DD2BC4(v1174, &qword_1EB8F4138, &qword_1B4F6A640);
    sub_1B4DE5390(v1177, v1176, v1207);
    (*(v1186 + 8))(v1171, v1172);
    sub_1B4DD2BC4(v1191, &qword_1EB8F7050, &qword_1B4F71500);

    sub_1B4DD2BC4(v1178, &qword_1EB8F5618, &qword_1B4F79E80);

    return (*(v1185 + 8))(v1210, v1214);
  }

  v352 = 0;
  v1202 = 0;
  v1038 = (v1185 + 40);
  v1097 = (v1211 + 48);
  v1005 = (v1211 + 32);
  v1006 = (v1145 + 32);
  v980 = v1146 + 2;
  v979 = v1145 + 40;
  v1004 = (v1146 + 1);
  v1003 = (v1211 + 8);
  v1096 = (v1141 + 32);
  v1024 = (v1141 + 16);
  v1095 = v1141 + 8;
  v1094 = (v1140 + 32);
  v1023 = (v1140 + 16);
  v1093 = v1140 + 8;
  v1022 = (v1127 + 32);
  v1021 = (v1127 + 56);
  v1092 = (v1155 + 32);
  v1020 = v1155 + 16;
  v1091 = (v1155 + 8);
  v353 = (*(v1126 + 80) + 32) & ~*(v1126 + 80);
  v1090 = (v1173 + 32);
  v1212 += v353;
  v1019 = v1173 + 16;
  v1211 = v1126[9];
  v1089 = (v1173 + 8);
  v1088 = (v1139 + 32);
  v1018 = (v1139 + 16);
  v1087 = (v1139 + 8);
  v999 = v1164 + 32;
  v998 = v1164 + 16;
  v997 = v1164 + 8;
  v354 = v1198;
  v1086 = (v1198 + 32);
  v1017 = v1198 + 16;
  v1085 = (v1198 + 8);
  v1016 = (v1189 + 40);
  v1015 = (v1188 + 40);
  v1084 = (v1132 + 32);
  v1036 = (v1132 + 56);
  v1014 = (v1187 + 40);
  v1107 = (v1131 + 4);
  v1126 = v1131 + 7;
  v996 = v1163 + 32;
  v995 = v1163 + 16;
  v994 = v1163 + 8;
  v993 = v1215 + 32;
  v992 = v1215 + 16;
  v991 = v1215 + 8;
  v1106 = (v1130 + 32);
  v1108 = (v1130 + 56);
  v990 = (v1185 + 32);
  v989 = (v1185 + 8);
  v1042 = v1160 + 16;
  v1041 = v1160 + 8;
  v981 = (v1145 + 56);
  v1013 = (v1129 + 32);
  v1012 = v1129 + 8;
  v1040 = v1161 + 16;
  v1039 = v1161 + 8;
  v988 = (v1132 + 48);
  v1002 = (v1132 + 8);
  v978 = (v1132 + 16);
  v987 = (v1131 + 2);
  v986 = v1131 + 6;
  v1001 = (v1131 + 1);
  v985 = (v1130 + 16);
  v984 = (v1130 + 48);
  v1000 = (v1130 + 8);
  v1129 += 16;
  v983 = (v1127 + 16);
  v1127 += 8;
  v982 = (v1128 + 32);
  v1132 = v1128 + 16;
  v1130 = v1128 + 8;
  v1128 = v1186 + 16;
  v977 = v1135 + 16;
  v976 = (v1186 + 8);
  v975 = v1135 + 8;
  v974 = (v1186 + 40);
  v355 = v1204;
  v356 = v1200;
  v357 = v1199;
  v358 = v1203;
  v359 = v1214;
  v360 = v1201;
  while (1)
  {
    sub_1B4E95150(v1212 + v1211 * v352, v1216, type metadata accessor for RemoteBrowsingJournalEntry);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v396 = v1207;
      sub_1B4E95218(v1216, v1207, type metadata accessor for RemoteBrowsingJournalProperty);
      sub_1B4E95150(v396, v1205, type metadata accessor for RemoteBrowsingJournalProperty);
      v397 = swift_getEnumCaseMultiPayload();
      v361 = v1215;
      switch(v397)
      {
        case 1:
          v568 = v1117;
          v569 = v1109;
          (*v982)(v1117, v1205, v1109);
          sub_1B4F65914();
          v571 = v570;
          sub_1B4F66A74();
          if (v572 > v571)
          {
            if (qword_1EDB70468 != -1)
            {
              swift_once();
            }

            v573 = sub_1B4F67C54();
            __swift_project_value_buffer(v573, qword_1EDB70470);
            v574 = v1031;
            v575 = v1117;
            v576 = v1109;
            (*v1132)(v1031, v1117, v1109);
            v577 = sub_1B4F67C34();
            v578 = sub_1B4F685E4();
            if (os_log_type_enabled(v577, v578))
            {
              v579 = swift_slowAlloc();
              v580 = swift_slowAlloc();
              v1218[0] = v580;
              *v579 = 136315138;
              sub_1B4E952A0(&qword_1EB8F5678, MEMORY[0x1E69CB538]);
              v581 = sub_1B4F68D04();
              v583 = v582;
              v584 = *v1130;
              (*v1130)(v574, v576);
              v585 = sub_1B4DC4F88(v581, v583, v1218);

              *(v579 + 4) = v585;
              _os_log_impl(&dword_1B4DC2000, v577, v578, "Archived session %s does not meet personalization inclusion requirements.", v579, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v580);
              v586 = v580;
              v361 = v1215;
              MEMORY[0x1B8C831D0](v586, -1, -1);
              v358 = v1203;
              MEMORY[0x1B8C831D0](v579, -1, -1);

              v584(v1117, v576);
            }

            else
            {

              v933 = *v1130;
              (*v1130)(v574, v576);
              v933(v575, v576);
            }

            sub_1B4E951B8(v1207, type metadata accessor for RemoteBrowsingJournalProperty);
            v355 = v1204;
            v356 = v1200;
            v357 = v1199;
            v359 = v1214;
            v360 = v1201;
            v354 = v1198;
            goto LABEL_9;
          }

          v901 = *v1132;
          v902 = v1030;
          (*v1132)(v1030, v568, v569);
          v903 = v1037;
          v904 = v1202;
          PersonalizationArchivedSession.init(_:isSampleContent:)(v902);
          v1202 = v904;
          if (v904)
          {
            if (qword_1EDB70468 != -1)
            {
              swift_once();
            }

            v905 = sub_1B4F67C54();
            __swift_project_value_buffer(v905, qword_1EDB70470);
            v906 = v1025;
            v907 = v1117;
            v908 = v1109;
            v901(v1025, v1117, v1109);
            v909 = v1202;
            v910 = v1202;
            v911 = sub_1B4F67C34();
            v912 = sub_1B4F685E4();

            if (os_log_type_enabled(v911, v912))
            {
              v913 = swift_slowAlloc();
              v1131 = swift_slowAlloc();
              v1218[0] = v1131;
              *v913 = 136315394;
              sub_1B4E952A0(&qword_1EB8F5678, MEMORY[0x1E69CB538]);
              v972 = v912;
              v914 = sub_1B4F68D04();
              v916 = v915;
              v973 = *v1130;
              v973(v906, v908);
              v917 = sub_1B4DC4F88(v914, v916, v1218);

              *(v913 + 4) = v917;
              *(v913 + 12) = 2080;
              swift_getErrorValue();
              v918 = sub_1B4F68DC4();
              v920 = sub_1B4DC4F88(v918, v919, v1218);

              *(v913 + 14) = v920;
              _os_log_impl(&dword_1B4DC2000, v911, v972, "Failed to transform %s for personalization with error: %s", v913, 0x16u);
              v921 = v1131;
              swift_arrayDestroy();
              MEMORY[0x1B8C831D0](v921, -1, -1);
              MEMORY[0x1B8C831D0](v913, -1, -1);

              v973(v1117, v908);
            }

            else
            {

              v968 = *v1130;
              (*v1130)(v906, v908);
              v968(v907, v908);
            }

            sub_1B4E951B8(v1207, type metadata accessor for RemoteBrowsingJournalProperty);
            v1202 = 0;
            v355 = v1204;
            v356 = v1200;
            v358 = v1203;
            v359 = v1214;
            v357 = v1199;
            goto LABEL_185;
          }

          v954 = v1008;
          (*v1128)(v1008, v1171, v1172);
          v955 = v903;
          v956 = sub_1B4F67444();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5680, &qword_1B4F73EC0);
          v957 = v1135;
          v958 = *(v1135 + 72);
          v959 = (*(v1135 + 80) + 32) & ~*(v1135 + 80);
          v960 = swift_allocObject();
          *(v960 + 16) = xmmword_1B4F6CF50;
          v961 = *(v957 + 16);
          v962 = v1009;
          v961(v960 + v959, v955, v1009);
          v963 = MEMORY[0x1E69CCF40];
          v1218[0] = sub_1B4E78BC8(0, *(v956 + 16) + 1, 0, MEMORY[0x1E69E7CC0], &qword_1EB8F5680, &qword_1B4F73EC0, MEMORY[0x1E69CCF40]);

          sub_1B4E8F0E8(v964);
          v965 = v963;
          v361 = v1215;
          sub_1B4E8D19C(v960, &qword_1EB8F5680, &qword_1B4F73EC0, v965, MEMORY[0x1E69CCF40]);

          sub_1B4DF22A0(v1218[0]);

          v966 = v1007;
          sub_1B4F67454();

          v967 = v1172;
          (*v976)(v954, v1172);
          (*(v1135 + 8))(v1037, v962);
          (*v1130)(v568, v569);
          sub_1B4E951B8(v1207, type metadata accessor for RemoteBrowsingJournalProperty);
          (*v974)(v1171, v966, v967);
          v355 = v1204;
LABEL_117:
          v354 = v1198;
          v356 = v1200;
          v357 = v1199;
          v358 = v1203;
          v359 = v1214;
          goto LABEL_186;
        case 2:
          goto LABEL_145;
        case 3:
        case 5:
        case 9:
        case 17:
        case 21:
          sub_1B4E951B8(v1207, type metadata accessor for RemoteBrowsingJournalProperty);
          v398 = v1205;
          goto LABEL_146;
        case 4:
          v455 = *v1205;
          v456 = MEMORY[0x1E69CD2D8];
          v457 = sub_1B4E7B5D0;
          goto LABEL_134;
        case 6:
          v455 = *v1205;
          v456 = MEMORY[0x1E69CCE28];
          v457 = sub_1B4E7B2F0;
          goto LABEL_134;
        case 7:
          v455 = *v1205;
          v456 = MEMORY[0x1E69CCE28];
          v457 = sub_1B4E7B2F0;
          goto LABEL_134;
        case 8:
          sub_1B4E951B8(v1207, type metadata accessor for RemoteBrowsingJournalProperty);
          v638 = *v1205;

          v1227 = v638;
          goto LABEL_147;
        case 10:
          sub_1B4E951B8(v1207, type metadata accessor for RemoteBrowsingJournalProperty);
          v500 = v1192;
          sub_1B4DD2BC4(v1192, &qword_1EB8F40D0, &unk_1B4F78940);
          v501 = v1137;
          (*v1107)(v500, v1205, v1137);
          v502 = &v1158;
          goto LABEL_63;
        case 11:
          sub_1B4E951B8(v1207, type metadata accessor for RemoteBrowsingJournalProperty);
          (*v1014)(v1179, v1205, v1180);
          goto LABEL_147;
        case 12:
          sub_1B4E951B8(v1207, type metadata accessor for RemoteBrowsingJournalProperty);
          v500 = v1190;
          sub_1B4DD2BC4(v1190, &qword_1EB8F5610, &qword_1B4F79E70);
          v501 = v1138;
          (*v1084)(v500, v1205, v1138);
          v502 = &v1068;
          goto LABEL_63;
        case 13:
          sub_1B4E951B8(v1207, type metadata accessor for RemoteBrowsingJournalProperty);
          (*v1015)(v1181, v1205, v1182);
          goto LABEL_147;
        case 14:
          sub_1B4E951B8(v1207, type metadata accessor for RemoteBrowsingJournalProperty);
          (*v1016)(v1183, v1205, v1184);
          goto LABEL_147;
        case 15:
          v470 = v1048;
          v471 = v1156;
          v472 = (*(v354 + 32))(v1048, v1205, v1156);
          MEMORY[0x1EEE9AC00](v472, v473);
          vars0 = v470;
          v474 = v354;
          v475 = v1195;

          v476 = v1202;
          v477 = sub_1B4E8F864(sub_1B4E95320, &v1235, v475, MEMORY[0x1E69CD370], sub_1B4EE8CD8, MEMORY[0x1E69CD370], sub_1B4EE8CD8);
          v1202 = v476;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5648, &qword_1B4F73EA8);
          v478 = *(v354 + 72);
          v479 = (*(v474 + 80) + 32) & ~*(v474 + 80);
          v480 = swift_allocObject();
          *(v480 + 16) = xmmword_1B4F6CF50;
          (*(v354 + 16))(v480 + v479, v470, v471);
          v481 = MEMORY[0x1E69CD370];
          v1218[0] = sub_1B4E78BC8(0, *(v477 + 16) + 1, 0, MEMORY[0x1E69E7CC0], &qword_1EB8F5648, &qword_1B4F73EA8, MEMORY[0x1E69CD370]);

          sub_1B4E8E96C(v482);
          v483 = v480;
          v361 = v1215;
          v484 = v1200;
          v485 = v481;
          v358 = v1203;
          sub_1B4E8D19C(v483, &qword_1EB8F5648, &qword_1B4F73EA8, v485, MEMORY[0x1E69CD370]);

          v486 = sub_1B4DF243C(v1218[0]);

          sub_1B4E951B8(v1207, type metadata accessor for RemoteBrowsingJournalProperty);
          v356 = v484;
          v354 = v474;
          v360 = v1201;

          v487 = v470;
          v357 = v1199;
          (*(v354 + 8))(v487, v1156);
          v488 = &v1221;
          goto LABEL_55;
        case 16:
          v455 = *v1205;
          v456 = MEMORY[0x1E69CC5E8];
          v457 = sub_1B4E7AD30;
          goto LABEL_134;
        case 18:
          v418 = v1112;
          v419 = v356;
          v420 = v1142;
          (*v1088)(v1112, v1205, v1142);
          v421 = v1052;
          (*v1018)(v1052, v418, v420);
          v422 = v1051;
          sub_1B4E79BF0(v1051, v421);
          v355 = v1204;
          v423 = *v1087;
          (*v1087)(v422, v420);
          v424 = v418;
          v360 = v1201;
          v357 = v1199;
          v425 = v420;
          v356 = v419;
          v354 = v1198;
          v423(v424, v425);
          goto LABEL_145;
        case 19:
          v538 = v1173;
          v539 = v1054;
          v540 = v1133;
          v541 = (*(v1173 + 32))(v1054, v1205, v1133);
          MEMORY[0x1EEE9AC00](v541, v542);
          vars0 = v539;
          v543 = v1194;

          v544 = v1202;
          v545 = sub_1B4E8F864(sub_1B4E9511C, &v1235, v543, MEMORY[0x1E69CB850], sub_1B4EE89B0, MEMORY[0x1E69CB850], sub_1B4EE89B0);
          v1202 = v544;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5630, &qword_1B4F73E90);
          v546 = *(v538 + 72);
          v547 = (*(v538 + 80) + 32) & ~*(v538 + 80);
          v548 = swift_allocObject();
          *(v548 + 16) = xmmword_1B4F6CF50;
          (*(v538 + 16))(v548 + v547, v539, v540);
          v549 = MEMORY[0x1E69CB850];
          v1218[0] = sub_1B4E78BC8(0, *(v545 + 16) + 1, 0, MEMORY[0x1E69E7CC0], &qword_1EB8F5630, &qword_1B4F73E90, MEMORY[0x1E69CB850]);

          sub_1B4E8E1F0(v550);
          v551 = v548;
          v358 = v1203;
          v552 = v1200;
          v553 = v549;
          v361 = v1215;
          sub_1B4E8D19C(v551, &qword_1EB8F5630, &qword_1B4F73E90, v553, MEMORY[0x1E69CB850]);

          v486 = sub_1B4DF25D8(v1218[0]);

          sub_1B4E951B8(v1207, type metadata accessor for RemoteBrowsingJournalProperty);

          v554 = v539;
          v360 = v1201;
          v357 = v1199;
          v555 = v540;
          v356 = v552;
          v354 = v1198;
          (*(v1173 + 8))(v554, v555);
          v488 = &v1220;
LABEL_55:
          *(v488 - 32) = v486;
          goto LABEL_56;
        case 20:
          sub_1B4E951B8(v1207, type metadata accessor for RemoteBrowsingJournalProperty);
          v409 = v354;
          v410 = v356;
          v411 = v1197;
          sub_1B4DD2BC4(v1197, &qword_1EB8F5608, &qword_1B4F79E90);
          v412 = sub_1B4F66354();
          v413 = *(v412 - 8);
          (*(v413 + 32))(v411, v1205, v412);
          v414 = v411;
          v356 = v410;
          v354 = v409;
          (*(v413 + 56))(v414, 0, 1, v412);
LABEL_56:
          v355 = v1204;
          goto LABEL_147;
        case 22:
          v750 = v1155;
          v751 = v1057;
          v752 = (*(v1155 + 32))(v1057, v1205, v355);
          v753 = v355;
          MEMORY[0x1EEE9AC00](v752, v754);
          vars0 = v751;
          v755 = v1193;

          v756 = v1202;
          sub_1B4E6EF4C(sub_1B4E952E8, &v1235, v755);
          v758 = v757;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46A8, &qword_1B4F6D080);
          v759 = *(v750 + 72);
          v760 = (*(v750 + 80) + 32) & ~*(v750 + 80);
          v761 = swift_allocObject();
          *(v761 + 16) = xmmword_1B4F6CF50;
          (*(v750 + 16))(v761 + v760, v751, v753);
          v1218[0] = v758;
          sub_1B4E8D19C(v761, &qword_1EB8F46A8, &qword_1B4F6D080, MEMORY[0x1E69CB6B0], MEMORY[0x1E69CB6B0]);

          sub_1B4E8FE78(v1218);
          v762 = &v1228;
          v1202 = v756;
          if (v756)
          {
            goto LABEL_234;
          }

          sub_1B4E951B8(v1207, type metadata accessor for RemoteBrowsingJournalProperty);

          v1193 = v1218[0];
          (*v1091)(v751, v753);
          v361 = v1215;
          v355 = v753;
          goto LABEL_117;
        case 23:
          v785 = v356;
          v786 = v1047;
          v787 = v1111;
          (*v1022)(v1047, v1205, v1111);
          v788 = v1178;
          sub_1B4DD2BC4(v1178, &qword_1EB8F5618, &qword_1B4F79E80);
          (*v983)(v788, v786, v787);
          v789 = v788;
          v361 = v1215;
          (*v1021)(v789, 0, 1, v787);
          v790 = v786;
          v356 = v785;
          (*v1127)(v790, v787);
          sub_1B4E951B8(v1207, type metadata accessor for RemoteBrowsingJournalProperty);

          v1196 = MEMORY[0x1E69E7CC8];
          goto LABEL_147;
        case 24:
          v489 = v1113;
          v490 = v1143;
          (*v1094)(v1113, v1205, v1143);
          v499 = v1063;
          (*v1023)(v1063, v489, v490);
          v492 = v1062;
          sub_1B4E79910(v1062, v499);
          v493 = v1204;
          v494 = &v1125;
          goto LABEL_144;
        case 25:
          v489 = v1114;
          v490 = v1115;
          (*v1013)(v1114, v1205, v1115);
          v491 = v1066;
          (*v1129)(v1066, v489, v490);
          v492 = v1065;
          sub_1B4E7A770(v1065, v491);
          v493 = v1204;
          v494 = &v1044;
          goto LABEL_144;
        case 26:
          v489 = v1116;
          v490 = v1144;
          (*v1096)(v1116, v1205, v1144);
          v816 = v1068;
          (*v1024)(v1068, v489, v490);
          v492 = v1067;
          sub_1B4E79630(v1067, v816);
          v493 = v1204;
          v494 = &v1127;
LABEL_144:
          v817 = *(v494 - 32);
          v818 = *v817;
          (*v817)(v492, v490);
          v819 = v489;
          v360 = v1201;
          v357 = v1199;
          v820 = v490;
          v355 = v493;
          v354 = v1198;
          v358 = v1203;
          v818(v819, v820);
          goto LABEL_145;
        case 27:
          v406 = v1110;
          sub_1B4E340C4(v1205, v1110);
          v407 = v1059;
          sub_1B4E21A90(v406, v1059, &qword_1EB8F4898, &qword_1B4F6E548);
          v408 = v1147;
          if ((*v1097)(v407, 1, v1147) == 1)
          {
            sub_1B4DD2BC4(v1110, &qword_1EB8F4898, &qword_1B4F6E548);
            sub_1B4E951B8(v1207, type metadata accessor for RemoteBrowsingJournalProperty);
            sub_1B4DD2BC4(v407, &qword_1EB8F4898, &qword_1B4F6E548);
            v355 = v1204;
            v359 = v1214;
LABEL_196:
            v356 = v1200;
            goto LABEL_9;
          }

          v870 = v357;
          (*v1005)(v1043, v407, v408);
          v871 = v1099;
          sub_1B4F67064();
          v872 = v1032;
          sub_1B4F67054();
          v873 = *v1006;
          (*v1006)(v1045, v872, v1119);
          v874 = v1196;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v1218[0] = v874;
          v876 = sub_1B4DF43BC(v871);
          v878 = v874[2];
          v879 = (v877 & 1) == 0;
          v880 = __OFADD__(v878, v879);
          v881 = v878 + v879;
          if (v880)
          {
            goto LABEL_230;
          }

          v882 = v877;
          if (v874[3] < v881)
          {
            sub_1B4E26A6C(v881, isUniquelyReferenced_nonNull_native);
            v876 = sub_1B4DF43BC(v1099);
            if ((v882 & 1) != (v883 & 1))
            {
              goto LABEL_233;
            }

            v357 = v870;
            v884 = v1118;
            v885 = v1146;
            v355 = v1204;
            goto LABEL_167;
          }

          v884 = v1118;
          v885 = v1146;
          v357 = v870;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v969 = v876;
            sub_1B4E28860();
            v885 = v1146;
            v884 = v1118;
            v876 = v969;
            v355 = v1204;
LABEL_167:
            v358 = v1203;
            goto LABEL_205;
          }

          v358 = v1203;
          v355 = v1204;
LABEL_205:
          v943 = v1218[0];
          v360 = v1201;
          v1196 = v1218[0];
          if (v882)
          {
            (*(v1145 + 40))(v1218[0][7] + *(v1145 + 72) * v876, v1045, v1119);
          }

          else
          {
            v1218[0][(v876 >> 6) + 8] |= 1 << v876;
            v944 = v876;
            (v885[2])(v943[6] + v885[9] * v876, v1099, v884);
            v873(v1196[7] + *(v1145 + 72) * v944, v1045, v1119);
            v945 = v1196[2];
            v880 = __OFADD__(v945, 1);
            v946 = v945 + 1;
            if (v880)
            {
              goto LABEL_232;
            }

            v1196[2] = v946;
          }

          v359 = v1214;
          v356 = v1200;
          (*v1004)(v1099, v1118);
          (*v1003)(v1043, v1147);
          sub_1B4DD2BC4(v1110, &qword_1EB8F4898, &qword_1B4F6E548);
          v947 = &v1233;
          break;
        case 28:
          v455 = *v1205;
          v456 = MEMORY[0x1E69CCEC8];
          v457 = sub_1B4E7BB90;
LABEL_134:
          sub_1B4E78238(v455, v456, v457);
          v355 = v1204;
LABEL_145:
          v398 = v1207;
          goto LABEL_146;
        case 29:
          sub_1B4E951B8(v1207, type metadata accessor for RemoteBrowsingJournalProperty);
          v359 = v1214;
          (*v1038)(v1210, v1205, v1214);
          goto LABEL_9;
        default:
          sub_1B4E951B8(v1207, type metadata accessor for RemoteBrowsingJournalProperty);
          v500 = v1191;
          sub_1B4DD2BC4(v1191, &qword_1EB8F7050, &qword_1B4F71500);
          v501 = v1136;
          (*v1106)(v500, v1205, v1136);
          v502 = &v1140;
LABEL_63:
          (**(v502 - 32))(v500, 0, 1, v501);
          goto LABEL_147;
      }

      goto LABEL_217;
    }

    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    v399 = v1208;
    sub_1B4E95218(v1216, v1208, type metadata accessor for RemoteBrowsingJournalProperty);
    sub_1B4E95150(v399, v1209, type metadata accessor for RemoteBrowsingJournalProperty);
    v400 = swift_getEnumCaseMultiPayload();
    v401 = v1210;
    switch(v400)
    {
      case 1:
      case 21:
      case 25:
        sub_1B4E951B8(v1208, type metadata accessor for RemoteBrowsingJournalProperty);
        v359 = v1214;
        sub_1B4E951B8(v1209, type metadata accessor for RemoteBrowsingJournalProperty);
        goto LABEL_8;
      case 2:
        v1217 = *v1209;
        sub_1B4E95094();
        sub_1B4F65084();
        sub_1B4E951B8(v1208, type metadata accessor for RemoteBrowsingJournalProperty);
        sub_1B4DE5390(v1177, v1176, v1162 & 1);
        v1177 = v1218[0];
        v1176 = v1218[1];
        v1162 = v1219;
        goto LABEL_8;
      case 3:
        sub_1B4E951B8(v1208, type metadata accessor for RemoteBrowsingJournalProperty);
        v724 = v1174;
        sub_1B4DD2BC4(v1174, &qword_1EB8F4138, &qword_1B4F6A640);
        v725 = sub_1B4F66754();
        v726 = *(v725 - 8);
        (*(v726 + 32))(v724, v1209, v725);
        v727 = *(v726 + 56);
        v728 = v724;
        v358 = v1203;
        goto LABEL_137;
      case 4:
        sub_1B4E951B8(v1208, type metadata accessor for RemoteBrowsingJournalProperty);
        v746 = *v1209;

        v1231 = v746;
        goto LABEL_7;
      case 5:
        v361 = v1215;
        v678 = v1078;
        v679 = v1157;
        v680 = (*(v1215 + 32))();
        v681 = v1230;
        MEMORY[0x1EEE9AC00](v680, v682);
        vars0 = v678;
        v683 = v678;

        v684 = v1202;
        v685 = sub_1B4E8F864(sub_1B4E95060, &v1235, v681, MEMORY[0x1E69CC830], sub_1B4EE7D10, MEMORY[0x1E69CC830], sub_1B4EE7D10);
        v1202 = v684;

        v1230 = v685;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5658, &qword_1B4F73EB8);
        v686 = *(v361 + 72);
        v687 = (*(v361 + 80) + 32) & ~*(v361 + 80);
        v688 = swift_allocObject();
        *(v688 + 16) = xmmword_1B4F6CF50;
        (*(v361 + 16))(v688 + v687, v683, v679);
        sub_1B4E94E9C(v688, MEMORY[0x1E69CC830], sub_1B4E7A490);
        swift_setDeallocating();
        v689 = *(v361 + 8);
        v689(v688 + v687, v679);
        v359 = v1214;
        swift_deallocClassInstance();
        sub_1B4E951B8(v1208, type metadata accessor for RemoteBrowsingJournalProperty);
        v356 = v1200;
        v689(v683, v679);
        v360 = v1201;
        v358 = v1203;
        goto LABEL_105;
      case 6:
        sub_1B4E951B8(v1208, type metadata accessor for RemoteBrowsingJournalProperty);
        v749 = *v1209;

        v1228 = v749;
        goto LABEL_7;
      case 7:
        sub_1B4E951B8(v1208, type metadata accessor for RemoteBrowsingJournalProperty);
        v598 = *v1209;

        v1229 = v598;
        goto LABEL_7;
      case 8:
        sub_1B4E951B8(v1208, type metadata accessor for RemoteBrowsingJournalProperty);
        v748 = *v1209;

        v1227 = v748;
        goto LABEL_7;
      case 9:
        v524 = v1163;
        v525 = v1079;
        v526 = v1158;
        v527 = (*(v1163 + 32))(v1079, v1209, v1158);
        v528 = v1226;
        MEMORY[0x1EEE9AC00](v527, v529);
        vars0 = v525;

        v530 = v1202;
        v531 = sub_1B4E8F864(sub_1B4E9502C, &v1235, v528, MEMORY[0x1E69CC938], sub_1B4EE79E8, MEMORY[0x1E69CC938], sub_1B4EE79E8);
        v1202 = v530;

        v1226 = v531;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5650, &qword_1B4F73EB0);
        v532 = *(v524 + 72);
        v533 = (*(v524 + 80) + 32) & ~*(v524 + 80);
        v534 = swift_allocObject();
        *(v534 + 16) = xmmword_1B4F6CF50;
        (*(v524 + 16))(v534 + v533, v525, v526);
        sub_1B4E94E9C(v534, MEMORY[0x1E69CC938], sub_1B4E7A1B0);
        swift_setDeallocating();
        v535 = *(v524 + 8);
        v358 = v1203;
        v535(v534 + v533, v526);
        v359 = v1214;
        swift_deallocClassInstance();
        sub_1B4E951B8(v1208, type metadata accessor for RemoteBrowsingJournalProperty);
        v536 = v525;
        v360 = v1201;
        v357 = v1199;
        v537 = v526;
        v354 = v1198;
        v356 = v1200;
        v535(v536, v537);
        goto LABEL_139;
      case 10:
        sub_1B4E951B8(v1208, type metadata accessor for RemoteBrowsingJournalProperty);
        v442 = v1192;
        sub_1B4DD2BC4(v1192, &qword_1EB8F40D0, &unk_1B4F78940);
        v443 = v1137;
        (*v1107)(v442, v1209, v1137);
        v444 = &v1158;
        goto LABEL_102;
      case 11:
        sub_1B4E951B8(v1208, type metadata accessor for RemoteBrowsingJournalProperty);
        (*v1014)(v1179, v1209, v1180);
        goto LABEL_8;
      case 12:
        sub_1B4E951B8(v1208, type metadata accessor for RemoteBrowsingJournalProperty);
        v442 = v1190;
        sub_1B4DD2BC4(v1190, &qword_1EB8F5610, &qword_1B4F79E70);
        v443 = v1138;
        (*v1084)(v442, v1209, v1138);
        v444 = &v1068;
        goto LABEL_102;
      case 13:
        sub_1B4E951B8(v1208, type metadata accessor for RemoteBrowsingJournalProperty);
        (*v1015)(v1181, v1209, v1182);
        goto LABEL_8;
      case 14:
        sub_1B4E951B8(v1208, type metadata accessor for RemoteBrowsingJournalProperty);
        (*v1016)(v1183, v1209, v1184);
        goto LABEL_8;
      case 15:
        v690 = v1050;
        v691 = v1156;
        v692 = (*(v354 + 32))(v1050, v1209, v1156);
        MEMORY[0x1EEE9AC00](v692, v693);
        vars0 = v690;
        v694 = v1195;

        v695 = v1202;
        v696 = sub_1B4E8F864(sub_1B4E94FF8, &v1235, v694, MEMORY[0x1E69CD370], sub_1B4EE8CD8, MEMORY[0x1E69CD370], sub_1B4EE8CD8);
        v1202 = v695;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5648, &qword_1B4F73EA8);
        v697 = *(v354 + 72);
        v698 = (*(v354 + 80) + 32) & ~*(v354 + 80);
        v699 = swift_allocObject();
        *(v699 + 16) = xmmword_1B4F6CF50;
        (*(v354 + 16))(v699 + v698, v690, v691);
        v700 = MEMORY[0x1E69CD370];
        v1218[0] = sub_1B4E78BC8(0, *(v696 + 16) + 1, 0, MEMORY[0x1E69E7CC0], &qword_1EB8F5648, &qword_1B4F73EA8, MEMORY[0x1E69CD370]);

        sub_1B4E8E96C(v701);
        v702 = v699;
        v358 = v1203;
        v703 = v1200;
        v704 = v700;
        v361 = v1215;
        sub_1B4E8D19C(v702, &qword_1EB8F5648, &qword_1B4F73EA8, v704, MEMORY[0x1E69CD370]);

        v705 = sub_1B4DF243C(v1218[0]);
        v359 = v1214;

        sub_1B4E951B8(v1208, type metadata accessor for RemoteBrowsingJournalProperty);
        v356 = v703;
        v360 = v1201;

        v706 = v690;
        v357 = v1199;
        (*(v354 + 8))(v706, v1156);
        v1195 = v705;
LABEL_105:
        v355 = v1204;
        goto LABEL_9;
      case 16:
        sub_1B4E951B8(v1208, type metadata accessor for RemoteBrowsingJournalProperty);
        v747 = *v1209;

        v1225 = v747;
        goto LABEL_7;
      case 17:
        v796 = v1164;
        v797 = v1080;
        v798 = v1159;
        v799 = (*(v1164 + 32))(v1080, v1209, v1159);
        v800 = v1224;
        MEMORY[0x1EEE9AC00](v799, v801);
        vars0 = v797;

        v802 = v1202;
        v803 = sub_1B4E8F864(sub_1B4E93DA8, &v1235, v800, MEMORY[0x1E69CCAC8], sub_1B4EE76C0, MEMORY[0x1E69CCAC8], sub_1B4EE76C0);
        v1202 = v802;

        v804 = v1208;
        v1224 = v803;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5640, &qword_1B4F73EA0);
        v805 = *(v796 + 72);
        v806 = (*(v796 + 80) + 32) & ~*(v796 + 80);
        v807 = swift_allocObject();
        *(v807 + 16) = xmmword_1B4F6CF50;
        (*(v796 + 16))(v807 + v806, v797, v798);
        sub_1B4E94E9C(v807, MEMORY[0x1E69CCAC8], sub_1B4E79ED0);
        swift_setDeallocating();
        v808 = *(v796 + 8);
        v356 = v1200;
        v809 = v1203;
        v808(v807 + v806, v798);
        v359 = v1214;
        swift_deallocClassInstance();
        sub_1B4E951B8(v804, type metadata accessor for RemoteBrowsingJournalProperty);
        v810 = v797;
        v358 = v809;
        v811 = v798;
        v360 = v1201;
        v357 = v1199;
        v354 = v1198;
        v808(v810, v811);
        goto LABEL_139;
      case 18:
        v707 = v1139;
        v708 = v1053;
        v709 = v1142;
        v710 = (*(v1139 + 32))(v1053, v1209, v1142);
        v711 = v1223;
        MEMORY[0x1EEE9AC00](v710, v712);
        vars0 = v708;

        v713 = v1202;
        v714 = sub_1B4E8F864(sub_1B4E93D74, &v1235, v711, MEMORY[0x1E69CB800], sub_1B4EE7398, MEMORY[0x1E69CB800], sub_1B4EE7398);
        v1202 = v713;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5638, &qword_1B4F73E98);
        v715 = *(v707 + 72);
        v716 = (*(v707 + 80) + 32) & ~*(v707 + 80);
        v717 = swift_allocObject();
        *(v717 + 16) = xmmword_1B4F6CF50;
        (*(v707 + 16))(v717 + v716, v708, v709);
        v718 = MEMORY[0x1E69CB800];
        v1218[0] = sub_1B4E78BC8(0, *(v714 + 16) + 1, 0, MEMORY[0x1E69E7CC0], &qword_1EB8F5638, &qword_1B4F73E98, MEMORY[0x1E69CB800]);

        sub_1B4E8DA74(v719);
        v361 = v1215;
        v720 = v1208;
        sub_1B4E8D19C(v717, &qword_1EB8F5638, &qword_1B4F73E98, v718, MEMORY[0x1E69CB800]);
        v721 = v720;
        v356 = v1200;

        v722 = sub_1B4DF2774(v1218[0]);
        v723 = v1204;

        sub_1B4E951B8(v721, type metadata accessor for RemoteBrowsingJournalProperty);
        v359 = v1214;

        v1223 = v722;
        v355 = v723;
        v358 = v1203;
        v617 = *(v707 + 8);
        v618 = v708;
        v360 = v1201;
        v619 = v1142;
        v357 = v1199;
        v354 = v1198;
        v620 = &v1119;
        goto LABEL_153;
      case 19:
        v729 = v1056;
        v730 = v1133;
        v731 = (*(v1173 + 32))(v1056, v1209, v1133);
        MEMORY[0x1EEE9AC00](v731, v732);
        vars0 = v729;
        v733 = v1194;

        v734 = v1202;
        v735 = sub_1B4E8F864(sub_1B4E95304, &v1235, v733, MEMORY[0x1E69CB850], sub_1B4EE89B0, MEMORY[0x1E69CB850], sub_1B4EE89B0);
        v1202 = v734;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5630, &qword_1B4F73E90);
        v736 = *(v1173 + 72);
        v737 = (*(v1173 + 80) + 32) & ~*(v1173 + 80);
        v738 = swift_allocObject();
        *(v738 + 16) = xmmword_1B4F6CF50;
        (*(v1173 + 16))(v738 + v737, v729, v730);
        v739 = MEMORY[0x1E69CB850];
        v1218[0] = sub_1B4E78BC8(0, *(v735 + 16) + 1, 0, MEMORY[0x1E69E7CC0], &qword_1EB8F5630, &qword_1B4F73E90, MEMORY[0x1E69CB850]);

        sub_1B4E8E1F0(v740);
        v741 = v738;
        v742 = v1208;
        v356 = v1200;
        v743 = v739;
        v358 = v1203;
        sub_1B4E8D19C(v741, &qword_1EB8F5630, &qword_1B4F73E90, v743, MEMORY[0x1E69CB850]);

        v744 = sub_1B4DF25D8(v1218[0]);
        v359 = v1214;

        sub_1B4E951B8(v742, type metadata accessor for RemoteBrowsingJournalProperty);

        v745 = v729;
        v360 = v1201;
        v357 = v1199;
        v354 = v1198;
        (*(v1173 + 8))(v745, v730);
        v1194 = v744;
        goto LABEL_139;
      case 20:
        sub_1B4E951B8(v1208, type metadata accessor for RemoteBrowsingJournalProperty);
        v791 = v354;
        v792 = v356;
        v793 = v1197;
        sub_1B4DD2BC4(v1197, &qword_1EB8F5608, &qword_1B4F79E90);
        v725 = sub_1B4F66354();
        v794 = *(v725 - 8);
        (*(v794 + 32))(v793, v1209, v725);
        v727 = *(v794 + 56);
        v728 = v793;
        v356 = v792;
        v354 = v791;
LABEL_137:
        v795 = v725;
        v359 = v1214;
        v727(v728, 0, 1, v795);
LABEL_139:
        v355 = v1204;
        goto LABEL_8;
      case 22:
        v821 = v1155;
        v822 = (*(v1155 + 32))(v1134, v1209, v355);
        v823 = v355;
        MEMORY[0x1EEE9AC00](v822, v824);
        vars0 = v1134;
        v825 = v1193;

        v826 = v1202;
        sub_1B4E6EF4C(sub_1B4E952E8, &v1235, v825);
        v828 = v827;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46A8, &qword_1B4F6D080);
        v829 = *(v821 + 72);
        v830 = (*(v821 + 80) + 32) & ~*(v821 + 80);
        v831 = swift_allocObject();
        *(v831 + 16) = xmmword_1B4F6CF50;
        v832 = *(v821 + 16);
        v833 = v1134;
        v832(v831 + v830, v1134, v823);
        v1218[0] = v828;
        sub_1B4E8D19C(v831, &qword_1EB8F46A8, &qword_1B4F6D080, MEMORY[0x1E69CB6B0], MEMORY[0x1E69CB6B0]);

        sub_1B4E8FE78(v1218);
        v762 = &v1228;
        v1202 = v826;
        if (v826)
        {
          goto LABEL_234;
        }

        sub_1B4E951B8(v1208, type metadata accessor for RemoteBrowsingJournalProperty);

        v1193 = v1218[0];
        (*v1091)(v833, v823);
        v355 = v823;
        v354 = v1198;
        v356 = v1200;
        v357 = v1199;
        v358 = v1203;
        v359 = v1214;
        v361 = v1215;
        goto LABEL_186;
      case 23:
        sub_1B4E951B8(v1208, type metadata accessor for RemoteBrowsingJournalProperty);
        v621 = v1178;
        sub_1B4DD2BC4(v1178, &qword_1EB8F5618, &qword_1B4F79E80);
        v622 = v1111;
        (*v1022)(v621, v1209, v1111);
        v623 = v622;
        v359 = v1214;
        (*v1021)(v621, 0, 1, v623);
        goto LABEL_8;
      case 24:
        v599 = v1140;
        v600 = v1064;
        v601 = v1143;
        v602 = (*(v1140 + 32))(v1064, v1209, v1143);
        v603 = v1222;
        MEMORY[0x1EEE9AC00](v602, v604);
        vars0 = v600;

        v605 = v1202;
        v606 = sub_1B4E8F864(sub_1B4E93D40, &v1235, v603, MEMORY[0x1E69CBE40], sub_1B4EE7070, MEMORY[0x1E69CBE40], sub_1B4EE7070);
        v1202 = v605;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5628, &qword_1B4F73E88);
        v607 = *(v599 + 72);
        v608 = (*(v599 + 80) + 32) & ~*(v599 + 80);
        v609 = swift_allocObject();
        *(v609 + 16) = xmmword_1B4F6CF50;
        (*(v599 + 16))(v609 + v608, v600, v601);
        v610 = MEMORY[0x1E69CBE40];
        v1218[0] = sub_1B4E78BC8(0, *(v606 + 16) + 1, 0, MEMORY[0x1E69E7CC0], &qword_1EB8F5628, &qword_1B4F73E88, MEMORY[0x1E69CBE40]);

        sub_1B4E8D2F8(v611);
        v612 = v609;
        v613 = v1208;
        v361 = v1215;
        sub_1B4E8D19C(v612, &qword_1EB8F5628, &qword_1B4F73E88, v610, MEMORY[0x1E69CBE40]);
        v614 = v613;
        v356 = v1200;

        v615 = sub_1B4DF2910(v1218[0]);
        v616 = v1204;

        sub_1B4E951B8(v614, type metadata accessor for RemoteBrowsingJournalProperty);
        v359 = v1214;

        v1222 = v615;
        v355 = v616;
        v358 = v1203;
        v617 = *(v599 + 8);
        v360 = v1201;
        v354 = v1198;
        v618 = v600;
        v357 = v1199;
        v619 = v1143;
        v620 = &v1125;
        goto LABEL_153;
      case 26:
        v835 = v1141;
        v836 = v1069;
        v837 = v1144;
        v838 = (*(v1141 + 32))(v1069, v1209, v1144);
        v839 = v1220;
        MEMORY[0x1EEE9AC00](v838, v840);
        vars0 = v836;

        v841 = v1202;
        v842 = sub_1B4E8F864(sub_1B4E78818, &v1235, v839, MEMORY[0x1E69CCDC8], sub_1B4EE6D48, MEMORY[0x1E69CCDC8], sub_1B4EE6D48);
        v1202 = v841;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5620, &qword_1B4F73E80);
        v843 = *(v835 + 72);
        v844 = (*(v835 + 80) + 32) & ~*(v835 + 80);
        v845 = swift_allocObject();
        *(v845 + 16) = xmmword_1B4F6CF50;
        (*(v835 + 16))(v845 + v844, v836, v837);
        v846 = MEMORY[0x1E69CCDC8];
        v1218[0] = sub_1B4E78BC8(0, *(v842 + 16) + 1, 0, MEMORY[0x1E69E7CC0], &qword_1EB8F5620, &qword_1B4F73E80, MEMORY[0x1E69CCDC8]);

        sub_1B4E8CA20(v847);
        v848 = v845;
        v849 = v1208;
        v361 = v1215;
        sub_1B4E8D19C(v848, &qword_1EB8F5620, &qword_1B4F73E80, v846, MEMORY[0x1E69CCDC8]);
        v850 = v849;
        v356 = v1200;

        v851 = sub_1B4DF2AAC(v1218[0]);
        v852 = v1204;

        sub_1B4E951B8(v850, type metadata accessor for RemoteBrowsingJournalProperty);
        v359 = v1214;

        v1220 = v851;
        v355 = v852;
        v358 = v1203;
        v617 = *(v835 + 8);
        v618 = v836;
        v360 = v1201;
        v619 = v1144;
        v357 = v1199;
        v354 = v1198;
        v620 = &v1127;
LABEL_153:
        v853 = *(v620 - 32) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v617(v618, v619);
        goto LABEL_9;
      case 27:
        v415 = v1101;
        sub_1B4E340C4(v1209, v1101);
        v416 = v1061;
        sub_1B4E21A90(v415, v1061, &qword_1EB8F4898, &qword_1B4F6E548);
        v417 = v1147;
        if ((*v1097)(v416, 1, v1147) == 1)
        {
          sub_1B4DD2BC4(v415, &qword_1EB8F4898, &qword_1B4F6E548);
          sub_1B4E951B8(v1208, type metadata accessor for RemoteBrowsingJournalProperty);
          sub_1B4DD2BC4(v416, &qword_1EB8F4898, &qword_1B4F6E548);
          v355 = v1204;
LABEL_184:
          v359 = v1214;
          v361 = v1215;
LABEL_185:
          v354 = v1198;
LABEL_186:
          v360 = v1201;
          goto LABEL_9;
        }

        v886 = v357;
        (*v1005)(v1044, v416, v417);
        v887 = v1100;
        sub_1B4F67064();
        v888 = v1033;
        sub_1B4F67054();
        v889 = *v1006;
        (*v1006)(v1046, v888, v1119);
        v890 = v1196;
        v891 = swift_isUniquelyReferenced_nonNull_native();
        v1218[0] = v890;
        v892 = sub_1B4DF43BC(v887);
        v894 = v890[2];
        v895 = (v893 & 1) == 0;
        v880 = __OFADD__(v894, v895);
        v896 = v894 + v895;
        if (v880)
        {
          goto LABEL_229;
        }

        v897 = v893;
        v354 = v1198;
        if (v890[3] < v896)
        {
          sub_1B4E26A6C(v896, v891);
          v892 = sub_1B4DF43BC(v1100);
          v361 = v1215;
          if ((v897 & 1) != (v898 & 1))
          {
            goto LABEL_233;
          }

          v357 = v886;
          v899 = v1118;
          v900 = v1146;
          v355 = v1204;
          goto LABEL_172;
        }

        v899 = v1118;
        v900 = v1146;
        v361 = v1215;
        v357 = v886;
        if ((v891 & 1) == 0)
        {
          v970 = v892;
          sub_1B4E28860();
          v900 = v1146;
          v899 = v1118;
          v892 = v970;
          v355 = v1204;
LABEL_172:
          v358 = v1203;
          goto LABEL_212;
        }

        v358 = v1203;
        v355 = v1204;
LABEL_212:
        v948 = v1218[0];
        v360 = v1201;
        v1196 = v1218[0];
        if (v897)
        {
          (*(v1145 + 40))(v1218[0][7] + *(v1145 + 72) * v892, v1046, v1119);
        }

        else
        {
          v1218[0][(v892 >> 6) + 8] |= 1 << v892;
          v949 = v892;
          (v900[2])(v948[6] + v900[9] * v892, v1100, v899);
          v889(v1196[7] + *(v1145 + 72) * v949, v1046, v1119);
          v950 = v1196[2];
          v880 = __OFADD__(v950, 1);
          v951 = v950 + 1;
          if (v880)
          {
            goto LABEL_231;
          }

          v1196[2] = v951;
        }

        v359 = v1214;
        v356 = v1200;
        (*v1004)(v1100, v1118);
        (*v1003)(v1044, v1147);
        sub_1B4DD2BC4(v1101, &qword_1EB8F4898, &qword_1B4F6E548);
        v947 = &v1234;
        break;
      case 28:
        sub_1B4E951B8(v1208, type metadata accessor for RemoteBrowsingJournalProperty);
        v834 = *v1209;

        v1232 = v834;
        goto LABEL_7;
      case 29:
        sub_1B4E951B8(v1208, type metadata accessor for RemoteBrowsingJournalProperty);
        (*v1038)(v401, v1209, v359);
        goto LABEL_8;
      default:
        sub_1B4E951B8(v1208, type metadata accessor for RemoteBrowsingJournalProperty);
        v442 = v1191;
        sub_1B4DD2BC4(v1191, &qword_1EB8F7050, &qword_1B4F71500);
        v443 = v1136;
        (*v1106)(v442, v1209, v1136);
        v444 = &v1140;
LABEL_102:
        v677 = v442;
        v359 = v1214;
        (**(v444 - 32))(v677, 0, 1, v443);
        goto LABEL_8;
    }

LABEL_217:
    sub_1B4E951B8(*(v947 - 32), type metadata accessor for RemoteBrowsingJournalProperty);
LABEL_9:
    if (++v352 == v1213)
    {
      goto LABEL_4;
    }
  }

  sub_1B4E95218(v1216, v357, type metadata accessor for RemoteBrowsingJournalProperty);
  sub_1B4E95150(v357, v1206, type metadata accessor for RemoteBrowsingJournalProperty);
  v394 = swift_getEnumCaseMultiPayload();
  v395 = v1210;
  switch(v394)
  {
    case 1:
    case 3:
    case 5:
    case 9:
    case 11:
    case 13:
    case 14:
    case 17:
    case 23:
      sub_1B4E951B8(v357, type metadata accessor for RemoteBrowsingJournalProperty);
      goto LABEL_14;
    case 2:
      goto LABEL_142;
    case 4:
      v518 = v360;
      v519 = v354;
      v520 = v1202;
      v521 = sub_1B4E6EC3C(*v1206, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2B8]);

      v523 = sub_1B4E93DDC(v522, v521);
      v1202 = v520;
      v392 = v519;
      v360 = v518;
      v358 = v1203;
      v355 = v1204;

      sub_1B4E951B8(v357, type metadata accessor for RemoteBrowsingJournalProperty);

      v1231 = v523;
      goto LABEL_6;
    case 6:
      v556 = v360;
      v557 = v354;
      v558 = v1202;
      v559 = sub_1B4E6EC3C(*v1206, MEMORY[0x1E69CCE28], MEMORY[0x1E69CCE20]);

      v561 = sub_1B4E941EC(v560, v559, sub_1B4E9533C, sub_1B4E9533C);
      v1202 = v558;
      v392 = v557;
      v360 = v556;
      v358 = v1203;
      v355 = v1204;

      sub_1B4E951B8(v357, type metadata accessor for RemoteBrowsingJournalProperty);

      v1228 = v561;
      goto LABEL_6;
    case 7:
      v386 = v360;
      v387 = v354;
      v388 = v1202;
      v389 = sub_1B4E6EC3C(*v1206, MEMORY[0x1E69CCE28], MEMORY[0x1E69CCE20]);

      v391 = sub_1B4E941EC(v390, v389, sub_1B4E9533C, sub_1B4E9533C);
      v1202 = v388;
      v392 = v387;
      v360 = v386;
      v358 = v1203;
      v355 = v1204;

      sub_1B4E951B8(v357, type metadata accessor for RemoteBrowsingJournalProperty);

      v1229 = v391;
LABEL_6:
      v354 = v392;
      v356 = v1200;
      goto LABEL_7;
    case 8:
      v624 = *v1206;
      if (*(v1227 + 16))
      {
        v625 = v358;
        v626 = v356;
        v627 = 1 << *(v624 + 32);
        v628 = -1;
        if (v627 < 64)
        {
          v628 = ~(-1 << v627);
        }

        v629 = v628 & *(v624 + 56);
        v630 = (v627 + 63) >> 6;
        v631 = *v1206;

        v632 = 0;
        if (v629)
        {
          while (1)
          {
            v633 = v632;
LABEL_88:
            v634 = __clz(__rbit64(v629));
            v629 &= v629 - 1;
            v635 = (*(v624 + 48) + ((v633 << 10) | (16 * v634)));
            v636 = *v635;
            v637 = v635[1];

            sub_1B4E90E70(v636, v637);

            v355 = v1204;
            v626 = v1200;
            v625 = v1203;
            if (!v629)
            {
              goto LABEL_84;
            }
          }
        }

        while (1)
        {
LABEL_84:
          v633 = v632 + 1;
          if (__OFADD__(v632, 1))
          {
            goto LABEL_227;
          }

          if (v633 >= v630)
          {
            break;
          }

          v629 = *(v624 + 56 + 8 * v633);
          ++v632;
          if (v629)
          {
            v632 = v633;
            goto LABEL_88;
          }
        }

        v361 = v1215;
        v357 = v1199;
        v360 = v1201;
        v356 = v626;
        v358 = v625;
        v354 = v1198;
      }

      else
      {
        v932 = *v1206;

        v361 = v1215;
      }

      v398 = v357;
LABEL_146:
      sub_1B4E951B8(v398, type metadata accessor for RemoteBrowsingJournalProperty);
      goto LABEL_147;
    case 10:
      v649 = *v1107;
      v650 = v1105;
      v651 = v1137;
      (*v1107)(v1105, v1206, v1137);
      (*v987)(v360, v650, v651);
      v1131 = *v1126;
      (v1131)(v360, 0, 1, v651);
      v652 = v986;
      v653 = *(v1073 + 48);
      v654 = v1072;
      sub_1B4E21A90(v1192, v1072, &qword_1EB8F40D0, &unk_1B4F78940);
      sub_1B4E21A90(v360, &v654[v653], &qword_1EB8F40D0, &unk_1B4F78940);
      v655 = *v652;
      if ((*v652)(v654, 1, v651) == 1)
      {
        sub_1B4DD2BC4(v360, &qword_1EB8F40D0, &unk_1B4F78940);
        (*v1001)(v650, v651);
        v357 = v1199;
        sub_1B4E951B8(v1199, type metadata accessor for RemoteBrowsingJournalProperty);
        v656 = v655(&v654[v653], 1, v651);
        v355 = v1204;
        v356 = v1200;
        v358 = v1203;
        if (v656 != 1)
        {
          goto LABEL_183;
        }

        sub_1B4DD2BC4(v654, &qword_1EB8F40D0, &unk_1B4F78940);
        v354 = v1198;
        v360 = v1201;
LABEL_202:
        v942 = v1192;
        sub_1B4DD2BC4(v1192, &qword_1EB8F40D0, &unk_1B4F78940);
        (v1131)(v942, 1, 1, v1137);
        goto LABEL_7;
      }

      v924 = v1029;
      sub_1B4E21A90(v654, v1029, &qword_1EB8F40D0, &unk_1B4F78940);
      if (v655(&v654[v653], 1, v651) == 1)
      {
        sub_1B4DD2BC4(v1201, &qword_1EB8F40D0, &unk_1B4F78940);
        v925 = *v1001;
        (*v1001)(v1105, v651);
        v357 = v1199;
        sub_1B4E951B8(v1199, type metadata accessor for RemoteBrowsingJournalProperty);
        v925(v924, v651);
        v355 = v1204;
        v356 = v1200;
        v358 = v1203;
LABEL_183:
        sub_1B4DD2BC4(v654, &qword_1EB8F55B0, &qword_1B4F78E30);
        goto LABEL_184;
      }

      v939 = v1011;
      v649(v1011, &v654[v653], v651);
      sub_1B4E952A0(&qword_1EB8F5668, MEMORY[0x1E69CC1F8]);
      v940 = sub_1B4F67F54();
      v941 = *v1001;
      (*v1001)(v939, v651);
      sub_1B4DD2BC4(v1201, &qword_1EB8F40D0, &unk_1B4F78940);
      v941(v1105, v651);
      sub_1B4E951B8(v1199, type metadata accessor for RemoteBrowsingJournalProperty);
      v941(v924, v651);
      v360 = v1201;
      v357 = v1199;
      v354 = v1198;
      sub_1B4DD2BC4(v654, &qword_1EB8F40D0, &unk_1B4F78940);
      v355 = v1204;
      v356 = v1200;
      v358 = v1203;
      if (v940)
      {
        goto LABEL_202;
      }

LABEL_7:
      v359 = v1214;
LABEL_8:
      v361 = v1215;
      goto LABEL_9;
    case 12:
      v562 = v1098;
      v563 = v1138;
      (*v1084)(v1098, v1206, v1138);
      v564 = sub_1B4F665C4();
      v566 = v565;
      v567 = v1190;
      if ((*v988)(v1190, 1, v563))
      {

        (*v1002)(v562, v563);
        v357 = v1199;
        sub_1B4E951B8(v1199, type metadata accessor for RemoteBrowsingJournalProperty);
        v355 = v1204;
        v358 = v1203;
        goto LABEL_184;
      }

      v926 = v1026;
      (*v978)(v1026, v567, v563);
      v927 = sub_1B4F665C4();
      v929 = v928;
      v930 = *v1002;
      (*v1002)(v926, v563);
      v361 = v1215;
      if (v564 == v927 && v566 == v929)
      {

        v931 = v1138;
        v930(v1098, v1138);
        v357 = v1199;
        sub_1B4E951B8(v1199, type metadata accessor for RemoteBrowsingJournalProperty);
        v354 = v1198;
        v360 = v1201;
      }

      else
      {
        v952 = sub_1B4F68D54();

        v931 = v1138;
        v930(v1098, v1138);
        v357 = v1199;
        sub_1B4E951B8(v1199, type metadata accessor for RemoteBrowsingJournalProperty);
        v354 = v1198;
        v360 = v1201;
        if ((v952 & 1) == 0)
        {
          goto LABEL_220;
        }
      }

      v953 = v1190;
      sub_1B4DD2BC4(v1190, &qword_1EB8F5610, &qword_1B4F79E70);
      (*v1036)(v953, 1, 1, v931);
LABEL_220:
      v355 = v1204;
      v356 = v1200;
      v358 = v1203;
      goto LABEL_147;
    case 15:
      v666 = v354;
      v667 = v357;
      v668 = v1049;
      v669 = v1156;
      v670 = (*v1086)(v1049, v1206, v1156);
      MEMORY[0x1EEE9AC00](v670, v671);
      vars0 = v668;
      v672 = v1195;

      v673 = v1202;
      v674 = sub_1B4E8F864(sub_1B4E95320, &v1235, v672, MEMORY[0x1E69CD370], sub_1B4EE8CD8, MEMORY[0x1E69CD370], sub_1B4EE8CD8);
      v1202 = v673;
      v358 = v1203;
      v355 = v1204;
      sub_1B4E951B8(v667, type metadata accessor for RemoteBrowsingJournalProperty);
      v360 = v1201;

      v675 = v668;
      v357 = v667;
      v354 = v666;
      v676 = v669;
      v356 = v1200;
      (*v1085)(v675, v676);
      v1195 = v674;
      goto LABEL_7;
    case 16:
      v503 = *v1206;
      if (!*(v1225 + 16))
      {
        goto LABEL_154;
      }

      v504 = v355;
      v505 = v503 + 56;
      v506 = 1 << *(v503 + 32);
      v507 = -1;
      if (v506 < 64)
      {
        v507 = ~(-1 << v506);
      }

      v508 = v507 & *(v503 + 56);
      v509 = (v506 + 63) >> 6;
      v1131 = *v1206;

      v510 = 0;
      if (v508)
      {
        goto LABEL_44;
      }

      while (2)
      {
        v512 = v1161;
        v359 = v1214;
        v361 = v1215;
LABEL_46:
        v511 = v510 + 1;
        if (__OFADD__(v510, 1))
        {
          goto LABEL_228;
        }

        if (v511 < v509)
        {
          v508 = *(v505 + 8 * v511);
          ++v510;
          if (v508)
          {
            v510 = v511;
            while (1)
            {
              v513 = __clz(__rbit64(v508));
              v508 &= v508 - 1;
              v514 = v1123;
              v515 = v1124;
              (*(v512 + 16))(v1123, v1131[6] + *(v512 + 72) * (v513 | (v511 << 6)), v1124);
              v516 = v512;
              v517 = v1125;
              sub_1B4E90B60(v514, v1125);
              (*(v516 + 8))(v514, v515);
              sub_1B4DD2BC4(v517, &qword_1EB8F5140, &qword_1B4F70ED8);
              v504 = v1204;
              if (!v508)
              {
                break;
              }

LABEL_44:
              v511 = v510;
              v512 = v1161;
            }

            continue;
          }

          goto LABEL_46;
        }

        break;
      }

      v354 = v1198;
      v356 = v1200;
      v357 = v1199;
      v358 = v1203;
      v360 = v1201;
      v355 = v504;
      goto LABEL_158;
    case 18:
      v657 = v358;
      v658 = v357;
      v659 = v1112;
      v660 = v354;
      v661 = v356;
      v662 = v1142;
      (*v1088)(v1112, v1206, v1142);
      v663 = v1074;
      sub_1B4E90850(v659, v1074);
      v355 = v1204;
      sub_1B4DD2BC4(v663, &qword_1EB8F55A8, &qword_1B4F73E28);
      v664 = v659;
      v357 = v658;
      v358 = v657;
      v360 = v1201;
      v665 = v662;
      v356 = v661;
      v354 = v660;
      (*v1087)(v664, v665);
      goto LABEL_142;
    case 19:
      v445 = v1055;
      v446 = v356;
      v447 = v1133;
      v448 = (*v1090)(v1055, v1206, v1133);
      MEMORY[0x1EEE9AC00](v448, v449);
      vars0 = v445;
      v450 = v1194;

      v451 = v1202;
      v452 = sub_1B4E8F864(sub_1B4E95304, &v1235, v450, MEMORY[0x1E69CB850], sub_1B4EE89B0, MEMORY[0x1E69CB850], sub_1B4EE89B0);
      v1202 = v451;
      v358 = v1203;
      v355 = v1204;
      sub_1B4E951B8(v1199, type metadata accessor for RemoteBrowsingJournalProperty);

      v453 = v445;
      v360 = v1201;
      v357 = v1199;
      v454 = v447;
      v356 = v446;
      v354 = v1198;
      (*v1089)(v453, v454);
      v1194 = v452;
      goto LABEL_7;
    case 20:
      sub_1B4E951B8(v357, type metadata accessor for RemoteBrowsingJournalProperty);
      v495 = v356;
      v496 = v1197;
      sub_1B4DD2BC4(v1197, &qword_1EB8F5608, &qword_1B4F79E90);
      v497 = sub_1B4F66354();
      v498 = v496;
      v356 = v495;
      (*(*(v497 - 8) + 56))(v498, 1, 1, v497);
LABEL_14:
      sub_1B4E951B8(v1206, type metadata accessor for RemoteBrowsingJournalProperty);
      goto LABEL_7;
    case 21:
      v639 = *v1206;
      v640 = v1206[1];

      v642 = v354;
      v643 = v357;
      v644 = v360;
      v645 = v642;
      v646 = v1202;
      v647 = sub_1B4E94AF0(v641, v639, v640);
      v1202 = v646;
      v648 = v645;
      v360 = v644;
      v357 = v643;
      v354 = v648;
      v358 = v1203;
      v355 = v1204;

      sub_1B4E951B8(v357, type metadata accessor for RemoteBrowsingJournalProperty);

      v1175 = v647;
      goto LABEL_7;
    case 22:
      v426 = v355;
      v427 = v354;
      v428 = v1058;
      v429 = (*v1092)(v1058, v1206, v426);
      MEMORY[0x1EEE9AC00](v429, v430);
      vars0 = v428;
      v431 = v360;
      v432 = v357;
      v433 = v1193;

      v434 = v427;
      v435 = v1202;
      sub_1B4E6EF4C(sub_1B4E950E8, &v1235, v433);
      v437 = v436;
      v1202 = v435;
      v438 = v434;
      v439 = v1203;
      v440 = v1204;
      sub_1B4E951B8(v432, type metadata accessor for RemoteBrowsingJournalProperty);
      v357 = v432;
      v358 = v439;
      v360 = v431;

      v441 = v428;
      v354 = v438;
      v355 = v440;
      v356 = v1200;
      (*v1091)(v441, v440);
      v1193 = v437;
      goto LABEL_7;
    case 24:
      v468 = v354;
      v459 = v356;
      v460 = v357;
      v461 = v1113;
      v462 = v360;
      v463 = v468;
      v464 = v1143;
      (*v1094)(v1113, v1206, v1143);
      v469 = v1075;
      sub_1B4E90540(v461, v1075);
      v466 = v1204;
      sub_1B4DD2BC4(v469, &qword_1EB8F55A0, &qword_1B4F73E20);
      v467 = &v1125;
      goto LABEL_141;
    case 25:
      v458 = v354;
      v459 = v356;
      v460 = v357;
      v461 = v1114;
      v462 = v360;
      v463 = v458;
      v464 = v1115;
      (*v1013)(v1114, v1206, v1115);
      v465 = v1076;
      sub_1B4E90230(v461, v1076);
      v466 = v1204;
      sub_1B4DD2BC4(v465, &qword_1EB8F5598, &qword_1B4F73E18);
      v467 = &v1044;
      goto LABEL_141;
    case 26:
      v812 = v354;
      v459 = v356;
      v460 = v357;
      v461 = v1116;
      v462 = v360;
      v463 = v812;
      v464 = v1144;
      (*v1096)(v1116, v1206, v1144);
      v813 = v1077;
      sub_1B4E8FF20(v461, v1077);
      v466 = v1204;
      sub_1B4DD2BC4(v813, &qword_1EB8F5590, &qword_1B4F73E10);
      v467 = &v1127;
LABEL_141:
      v814 = v461;
      v357 = v460;
      v356 = v459;
      v815 = v464;
      v355 = v466;
      v354 = v463;
      v360 = v462;
      v358 = v1203;
      (**(v467 - 32))(v814, v815);
LABEL_142:
      sub_1B4E951B8(v357, type metadata accessor for RemoteBrowsingJournalProperty);
      goto LABEL_7;
    case 27:
      v402 = v360;
      v403 = v1083;
      sub_1B4E340C4(v1206, v1083);
      v404 = v1060;
      sub_1B4E21A90(v403, v1060, &qword_1EB8F4898, &qword_1B4F6E548);
      v405 = v1147;
      if ((*v1097)(v404, 1, v1147) == 1)
      {
        sub_1B4DD2BC4(v404, &qword_1EB8F4898, &qword_1B4F6E548);
        sub_1B4DD2BC4(v403, &qword_1EB8F4898, &qword_1B4F6E548);
        sub_1B4E951B8(v357, type metadata accessor for RemoteBrowsingJournalProperty);

        v1196 = MEMORY[0x1E69E7CC8];
        v355 = v1204;
        v358 = v1203;
        v359 = v1214;
      }

      else
      {
        (*v1005)(v1081, v404, v405);
        v855 = v1082;
        sub_1B4F67064();
        v856 = v1196;
        v857 = sub_1B4DF43BC(v855);
        if (v858)
        {
          v859 = v857;
          v860 = v357;
          v861 = swift_isUniquelyReferenced_nonNull_native();
          v1218[0] = v856;
          if ((v861 & 1) == 0)
          {
            sub_1B4E28860();
            v856 = v1218[0];
          }

          v862 = v1146[1];
          v863 = v1118;
          v862(v856[6] + v1146[9] * v859, v1118);
          v864 = v859;
          v865 = v1145;
          v866 = v1035;
          v867 = v1119;
          (*(v1145 + 32))(v1035, v856[7] + *(v1145 + 72) * v864, v1119);
          v1196 = v856;
          v868 = v856;
          v869 = v866;
          sub_1B4E8BFD0(v864, v868);
          (*(v865 + 56))(v866, 0, 1, v867);
          v403 = v1083;
          v359 = v1214;
          v402 = v1201;
          v357 = v860;
        }

        else
        {
          v869 = v1035;
          (*v981)(v1035, 1, 1, v1119);
          v862 = *v1004;
          v863 = v1118;
          v359 = v1214;
        }

        v862(v1082, v863);
        sub_1B4DD2BC4(v869, &qword_1EB8F5580, &qword_1B4F73E08);
        (*v1003)(v1081, v1147);
        sub_1B4DD2BC4(v403, &qword_1EB8F4898, &qword_1B4F6E548);
        sub_1B4E951B8(v357, type metadata accessor for RemoteBrowsingJournalProperty);
        v355 = v1204;
        v358 = v1203;
      }

      v361 = v1215;
      v354 = v1198;
      v360 = v402;
      goto LABEL_196;
    case 28:
      v763 = *v1206;
      if (!*(v1232 + 2))
      {
LABEL_154:

        v359 = v1214;
        v361 = v1215;
        goto LABEL_158;
      }

      v764 = v360;
      v765 = v357;
      v766 = v764;
      v767 = v763 + 56;
      v768 = 1 << *(v763 + 32);
      v769 = -1;
      if (v768 < 64)
      {
        v769 = ~(-1 << v768);
      }

      v770 = v769 & *(v763 + 56);
      v771 = (v768 + 63) >> 6;
      v1131 = *v1206;

      v772 = 0;
      if (v770)
      {
LABEL_122:
        v773 = v772;
        v774 = v1160;
        goto LABEL_128;
      }

      while (2)
      {
        v774 = v1160;
        v359 = v1214;
        v361 = v1215;
LABEL_124:
        v773 = v772 + 1;
        if (!__OFADD__(v772, 1))
        {
          if (v773 < v771)
          {
            v770 = *(v767 + 8 * v773);
            ++v772;
            if (v770)
            {
              v772 = v773;
LABEL_128:
              v775 = __clz(__rbit64(v770));
              v770 &= v770 - 1;
              v776 = v1120;
              v777 = v774;
              v778 = v1121;
              (*(v774 + 16))(v1120, v1131[6] + *(v774 + 72) * (v775 | (v773 << 6)), v1121);
              v779 = v1122;
              sub_1B4E90FAC(v776, v1122);
              (*(v777 + 8))(v776, v778);
              sub_1B4DD2BC4(v779, &qword_1EB8F55C0, &qword_1B4F73E38);
              v765 = v1199;
              v766 = v1201;
              if (v770)
              {
                goto LABEL_122;
              }

              continue;
            }

            goto LABEL_124;
          }

          v356 = v1200;
          v358 = v1203;
          v354 = v1198;
          v854 = v766;
          v357 = v765;
          v360 = v854;
          v355 = v1204;
LABEL_158:
          sub_1B4E951B8(v357, type metadata accessor for RemoteBrowsingJournalProperty);
          goto LABEL_9;
        }

        break;
      }

      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      sub_1B4F68DB4();
      __break(1u);
LABEL_234:

      __break(1u);
      return result;
    case 29:
      v780 = v1102;
      v359 = v1214;
      (*v990)(v1102, v1206, v1214);
      if (MEMORY[0x1B8C807E0](v395, v780))
      {
        v781 = sub_1B4F666E4();
        (*(*(v781 - 8) + 56))(v1034, 1, 1, v781);
        vars0 = 0;
        vars8 = MEMORY[0x1E69E7CC8];
        v782 = v357;
        v783 = v1027;
        v359 = v1214;
        sub_1B4F66F54();
        (*v989)(v1102, v359);
        sub_1B4E951B8(v782, type metadata accessor for RemoteBrowsingJournalProperty);
        v784 = v783;
        v357 = v782;
        (*v1038)(v395, v784, v359);
      }

      else
      {
        (*v989)(v780, v359);
        sub_1B4E951B8(v357, type metadata accessor for RemoteBrowsingJournalProperty);
      }

      goto LABEL_8;
    default:
      v587 = *v1106;
      v588 = v1104;
      v589 = v1136;
      (*v1106)(v1104, v1206, v1136);
      v590 = v1103;
      (*v985)(v1103, v588, v589);
      v591 = *v1108;
      (*v1108)(v590, 0, 1, v589);
      v592 = *(v1071 + 48);
      v593 = v1070;
      sub_1B4E21A90(v1191, v1070, &qword_1EB8F7050, &qword_1B4F71500);
      sub_1B4E21A90(v590, &v593[v592], &qword_1EB8F7050, &qword_1B4F71500);
      v594 = *v984;
      if ((*v984)(v593, 1, v589) == 1)
      {
        v1131 = v591;
        sub_1B4DD2BC4(v590, &qword_1EB8F7050, &qword_1B4F71500);
        (*v1000)(v588, v589);
        v595 = v1199;
        sub_1B4E951B8(v1199, type metadata accessor for RemoteBrowsingJournalProperty);
        v596 = &v593[v592];
        v357 = v595;
        v597 = v594(v596, 1, v589);
        v355 = v1204;
        v354 = v1198;
        v358 = v1203;
        v361 = v1215;
        v360 = v1201;
        if (v597 != 1)
        {
          goto LABEL_180;
        }

        sub_1B4DD2BC4(v593, &qword_1EB8F7050, &qword_1B4F71500);
        v356 = v1200;
LABEL_200:
        v938 = v1191;
        sub_1B4DD2BC4(v1191, &qword_1EB8F7050, &qword_1B4F71500);
        (v1131)(v938, 1, 1, v1136);
        goto LABEL_147;
      }

      v922 = v1028;
      sub_1B4E21A90(v593, v1028, &qword_1EB8F7050, &qword_1B4F71500);
      if (v594(&v593[v592], 1, v589) == 1)
      {
        sub_1B4DD2BC4(v1103, &qword_1EB8F7050, &qword_1B4F71500);
        v923 = *v1000;
        (*v1000)(v1104, v589);
        v357 = v1199;
        sub_1B4E951B8(v1199, type metadata accessor for RemoteBrowsingJournalProperty);
        v923(v922, v589);
        v355 = v1204;
        v354 = v1198;
        v358 = v1203;
        v361 = v1215;
        v360 = v1201;
LABEL_180:
        sub_1B4DD2BC4(v593, &qword_1EB8F55B8, &qword_1B4F73E30);
        v356 = v1200;
        goto LABEL_147;
      }

      v1131 = v591;
      v934 = &v593[v592];
      v935 = v1010;
      v587(v1010, v934, v589);
      sub_1B4E952A0(&qword_1EB8F5670, MEMORY[0x1E69CB238]);
      v936 = sub_1B4F67F54();
      v937 = *v1000;
      (*v1000)(v935, v589);
      sub_1B4DD2BC4(v1103, &qword_1EB8F7050, &qword_1B4F71500);
      v937(v1104, v589);
      v357 = v1199;
      sub_1B4E951B8(v1199, type metadata accessor for RemoteBrowsingJournalProperty);
      v937(v922, v589);
      sub_1B4DD2BC4(v593, &qword_1EB8F7050, &qword_1B4F71500);
      v355 = v1204;
      v354 = v1198;
      v356 = v1200;
      v358 = v1203;
      v361 = v1215;
      v360 = v1201;
      if (v936)
      {
        goto LABEL_200;
      }

LABEL_147:
      v359 = v1214;
      goto LABEL_9;
  }
}

void sub_1B4E78238(uint64_t a1, uint64_t (*a2)(void), void (*a3)(char *, char *))
{
  v30 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v29 - v12;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = v29 - v17;
  v19 = 0;
  v31 = a1;
  v22 = *(a1 + 56);
  v21 = a1 + 56;
  v20 = v22;
  v23 = 1 << *(v21 - 24);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v26 = (v23 + 63) >> 6;
  v29[2] = v5 + 32;
  v29[3] = v5 + 16;
  v29[1] = v5 + 8;
  if ((v24 & v20) != 0)
  {
    do
    {
      v27 = v19;
LABEL_9:
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      (*(v5 + 16))(v18, *(v31 + 48) + *(v5 + 72) * (v28 | (v27 << 6)), v4, v16);
      (*(v5 + 32))(v9, v18, v4);
      v30(v13, v9);
      (*(v5 + 8))(v13, v4);
    }

    while (v25);
  }

  while (1)
  {
    v27 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v27 >= v26)
    {

      return;
    }

    v25 = *(v21 + 8 * v27);
    ++v19;
    if (v25)
    {
      v19 = v27;
      goto LABEL_9;
    }
  }

  __break(1u);
}

BOOL sub_1B4E78458(uint64_t a1, uint64_t a2, uint64_t (*a3)(double))
{
  v4 = sub_1B4F674E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v19 - v13;
  v15 = a3(v12);
  (a3)(v15);
  sub_1B4E952A0(&qword_1EB8F57B8, MEMORY[0x1E69CD1A0]);
  v16 = sub_1B4F67F54();
  v17 = *(v5 + 8);
  v17(v9, v4);
  v17(v14, v4);
  return (v16 & 1) == 0;
}

uint64_t sub_1B4E785DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {

    v10 = 0;
  }

  else
  {
    v9 = sub_1B4F68D54();

    v10 = v9 ^ 1;
  }

  return v10 & 1;
}

BOOL sub_1B4E78694(uint64_t a1, uint64_t a2, uint64_t (*a3)(double))
{
  v4 = sub_1B4F649A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v19 - v13;
  v15 = a3(v12);
  (a3)(v15);
  sub_1B4E952A0(&qword_1EB8F4650, MEMORY[0x1E69695A8]);
  v16 = sub_1B4F67F54();
  v17 = *(v5 + 8);
  v17(v9, v4);
  v17(v14, v4);
  return (v16 & 1) == 0;
}

char *sub_1B4E7884C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45E8, &qword_1B4F6CF90);
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

char *sub_1B4E78958(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5708, &qword_1B4F73F10);
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

char *sub_1B4E78A4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5770, &qword_1B4F73F40);
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

size_t sub_1B4E78BC8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

void *sub_1B4E78DA4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45E8, &qword_1B4F6CF90);
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

uint64_t sub_1B4E78E28(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F64E14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1B4E952A0(&qword_1EB8F41B0, MEMORY[0x1E69CB098]);
  v37 = a2;
  v14 = sub_1B4F67F14();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_1B4E952A0(&qword_1EB8F5718, MEMORY[0x1E69CB098]);
      v24 = sub_1B4F67F54();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_1B4E82488(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_1B4E79108(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1B4F68E84();
  sub_1B4F67FE4();
  v9 = sub_1B4F68EC4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1B4F68D54() & 1) != 0)
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

    sub_1B4E82750(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1B4E79258(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F66484();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1B4E952A0(&qword_1EB8F41A8, MEMORY[0x1E69CC278]);
  v37 = a2;
  v14 = sub_1B4F67F14();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_1B4E952A0(&qword_1EB8F41C8, MEMORY[0x1E69CC278]);
      v24 = sub_1B4F67F54();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_1B4E828D0(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_1B4E79538(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](a2);
  v7 = sub_1B4F68EC4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1B4E82B98(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B4E79630(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F670C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1B4E952A0(&qword_1EB8F41A0, MEMORY[0x1E69CCDC8]);
  v37 = a2;
  v14 = sub_1B4F67F14();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_1B4E952A0(&qword_1EB8F5798, MEMORY[0x1E69CCDC8]);
      v24 = sub_1B4F67F54();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_1B4E82CF8(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_1B4E79910(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F660C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1B4E952A0(&qword_1EB8F4198, MEMORY[0x1E69CBE40]);
  v37 = a2;
  v14 = sub_1B4F67F14();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_1B4E952A0(&qword_1EB8F5778, MEMORY[0x1E69CBE40]);
      v24 = sub_1B4F67F54();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_1B4E82FC0(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_1B4E79BF0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F65DE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1B4E952A0(&qword_1EB8F4188, MEMORY[0x1E69CB800]);
  v37 = a2;
  v14 = sub_1B4F67F14();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_1B4E952A0(&qword_1EB8F5760, MEMORY[0x1E69CB800]);
      v24 = sub_1B4F67F54();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_1B4E83288(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_1B4E79ED0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F66BA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1B4E952A0(&qword_1EB8F4DC0, MEMORY[0x1E69CCAC8]);
  v37 = a2;
  v14 = sub_1B4F67F14();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_1B4E952A0(&qword_1EB8F57D8, MEMORY[0x1E69CCAC8]);
      v24 = sub_1B4F67F54();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_1B4E83550(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_1B4E7A1B0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F66A54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1B4E952A0(&qword_1EB8F4DF0, MEMORY[0x1E69CC938]);
  v37 = a2;
  v14 = sub_1B4F67F14();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_1B4E952A0(&qword_1EB8F57C0, MEMORY[0x1E69CC938]);
      v24 = sub_1B4F67F54();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_1B4E83818(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_1B4E7A490(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F669F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1B4E952A0(&qword_1EB8F4DF8, MEMORY[0x1E69CC830]);
  v37 = a2;
  v14 = sub_1B4F67F14();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_1B4E952A0(&qword_1EB8F57A8, MEMORY[0x1E69CC830]);
      v24 = sub_1B4F67F54();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_1B4E83AE0(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_1B4E7A770(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F66AF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1B4E952A0(&qword_1EB8F4DA0, MEMORY[0x1E69CCA00]);
  v37 = a2;
  v14 = sub_1B4F67F14();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_1B4E952A0(&qword_1EB8F5788, MEMORY[0x1E69CCA00]);
      v24 = sub_1B4F67F54();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_1B4E83DA8(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_1B4E7AA50(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F65E04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1B4E952A0(&qword_1EB8F4190, MEMORY[0x1E69CB850]);
  v37 = a2;
  v14 = sub_1B4F67F14();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_1B4E952A0(&qword_1EB8F57E8, MEMORY[0x1E69CB850]);
      v24 = sub_1B4F67F54();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_1B4E84070(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_1B4E7AD30(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F66674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1B4E952A0(&qword_1EDB70088, MEMORY[0x1E69CC5E8]);
  v37 = a2;
  v14 = sub_1B4F67F14();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_1B4E952A0(&qword_1EB8F5750, MEMORY[0x1E69CC5E8]);
      v24 = sub_1B4F67F54();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_1B4E84338(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_1B4E7B010(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F67A94();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1B4E952A0(&qword_1EB8F4180, MEMORY[0x1E69CD370]);
  v37 = a2;
  v14 = sub_1B4F67F14();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_1B4E952A0(&qword_1EB8F56D8, MEMORY[0x1E69CD370]);
      v24 = sub_1B4F67F54();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_1B4E84600(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_1B4E7B2F0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F67124();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1B4E952A0(&qword_1EDB70038, MEMORY[0x1E69CCE28]);
  v37 = a2;
  v14 = sub_1B4F67F14();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_1B4E952A0(&qword_1EB8F56E8, MEMORY[0x1E69CCE28]);
      v24 = sub_1B4F67F54();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_1B4E848C8(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_1B4E7B5D0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F679C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1B4E952A0(&qword_1EDB70020, MEMORY[0x1E69CD2D8]);
  v37 = a2;
  v14 = sub_1B4F67F14();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_1B4E952A0(&qword_1EB8F56F8, MEMORY[0x1E69CD2D8]);
      v24 = sub_1B4F67F54();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_1B4E84B90(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_1B4E7B8B0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F67244();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1B4E952A0(&qword_1EB8F4178, MEMORY[0x1E69CCF40]);
  v37 = a2;
  v14 = sub_1B4F67F14();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_1B4E952A0(&qword_1EB8F5738, MEMORY[0x1E69CCF40]);
      v24 = sub_1B4F67F54();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_1B4E84E58(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_1B4E7BB90(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F67154();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1B4E952A0(&qword_1EDB70030, MEMORY[0x1E69CCEC8]);
  v37 = a2;
  v14 = sub_1B4F67F14();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_1B4E952A0(&qword_1EB8F5728, MEMORY[0x1E69CCEC8]);
      v24 = sub_1B4F67F54();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_1B4E85120(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_1B4E7BE70(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_1B4F68E84();
  sub_1B4F64D54();
  sub_1B4F67FE4();

  v8 = sub_1B4F68EC4();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + v10);
      v13 = sub_1B4F64D54();
      v15 = v14;
      if (v13 == sub_1B4F64D54() && v15 == v16)
      {
        break;
      }

      v18 = sub_1B4F68D54();

      if (v18)
      {
        goto LABEL_11;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOBYTE(a2) = *(*(v6 + 48) + v10);
  }

  else
  {
LABEL_9:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_1B4E853E8(a2, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B4E7BFF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = a1;
  v5 = sub_1B4F66E34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1B4F68E84();
  sub_1B4F66E24();
  v13 = sub_1B4F68EC4();
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = *(v6 + 72);
    while (1)
    {
      sub_1B4E95150(*(v11 + 48) + v17 * v15, v10, MEMORY[0x1E69CCB48]);
      v18 = MEMORY[0x1B8C806C0](v10, a2);
      sub_1B4E951B8(v10, MEMORY[0x1E69CCB48]);
      if (v18)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1B4E951B8(a2, MEMORY[0x1E69CCB48]);
    sub_1B4E95150(*(v11 + 48) + v17 * v15, v23, MEMORY[0x1E69CCB48]);
    return 0;
  }

  else
  {
LABEL_5:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1B4E95150(a2, v10, MEMORY[0x1E69CCB48]);
    v24 = *v3;
    sub_1B4E855C0(v10, v15, isUniquelyReferenced_nonNull_native);
    v21 = v23;
    *v3 = v24;
    sub_1B4E95218(a2, v21, MEMORY[0x1E69CCB48]);
    return 1;
  }
}

uint64_t sub_1B4E7C238(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F64F74();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1B4E952A0(&qword_1EB8F4170, MEMORY[0x1E69CB178]);
  v37 = a2;
  v14 = sub_1B4F67F14();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_1B4E952A0(&qword_1EB8F56C8, MEMORY[0x1E69CB178]);
      v24 = sub_1B4F67F54();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_1B4E85804(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_1B4E7C518(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = a1;
  v5 = sub_1B4F67184();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1B4F68E84();
  sub_1B4F67174();
  v13 = sub_1B4F68EC4();
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = *(v6 + 72);
    while (1)
    {
      sub_1B4E95150(*(v11 + 48) + v17 * v15, v10, MEMORY[0x1E69CCEF0]);
      v18 = MEMORY[0x1B8C80A10](v10, a2);
      sub_1B4E951B8(v10, MEMORY[0x1E69CCEF0]);
      if (v18)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1B4E951B8(a2, MEMORY[0x1E69CCEF0]);
    sub_1B4E95150(*(v11 + 48) + v17 * v15, v23, MEMORY[0x1E69CCEF0]);
    return 0;
  }

  else
  {
LABEL_5:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1B4E95150(a2, v10, MEMORY[0x1E69CCEF0]);
    v24 = *v3;
    sub_1B4E85ACC(v10, v15, isUniquelyReferenced_nonNull_native);
    v21 = v23;
    *v3 = v24;
    sub_1B4E95218(a2, v21, MEMORY[0x1E69CCEF0]);
    return 1;
  }
}

uint64_t sub_1B4E7C758(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F67004();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1B4E952A0(&qword_1EB8F4168, MEMORY[0x1E69CCCE0]);
  v37 = a2;
  v14 = sub_1B4F67F14();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_1B4E952A0(&qword_1EB8F56B8, MEMORY[0x1E69CCCE0]);
      v24 = sub_1B4F67F54();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_1B4E85D10(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_1B4E7CA38(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1B8C82710](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v10 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1B4E85FD8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B4E7CB20(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F66894();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1B4E952A0(&qword_1EB8F5688, MEMORY[0x1E69CC710]);
  v37 = a2;
  v14 = sub_1B4F67F14();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_1B4E952A0(&qword_1EB8F5690, MEMORY[0x1E69CC710]);
      v24 = sub_1B4F67F54();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_1B4E860FC(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_1B4E7CE00(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56A0, &qword_1B4F73ED0);
    v2 = sub_1B4F68984();
    v17 = v2;
    sub_1B4F688E4();
    if (sub_1B4F68914())
    {
      type metadata accessor for XPCClient();
      do
      {
        swift_dynamicCast();
        v11 = *(v2 + 16);
        if (*(v2 + 24) <= v11)
        {
          sub_1B4E81E38(v11 + 1);
        }

        v2 = v17;
        v3 = *(v17 + 40);
        sub_1B4F68E84();
        v4 = *(v16 + 24);
        sub_1B4F68774();
        result = sub_1B4F68EC4();
        v6 = v17 + 56;
        v7 = -1 << *(v17 + 32);
        v8 = result & ~v7;
        v9 = v8 >> 6;
        if (((-1 << v8) & ~*(v17 + 56 + 8 * (v8 >> 6))) != 0)
        {
          v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v12 = 0;
          v13 = (63 - v7) >> 6;
          do
          {
            if (++v9 == v13 && (v12 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v14 = v9 == v13;
            if (v9 == v13)
            {
              v9 = 0;
            }

            v12 |= v14;
            v15 = *(v6 + 8 * v9);
          }

          while (v15 == -1);
          v10 = __clz(__rbit64(~v15)) + (v9 << 6);
        }

        *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
        *(*(v17 + 48) + 8 * v10) = v16;
        ++*(v17 + 16);
      }

      while (sub_1B4F68914());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1B4E7D000(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46B0, &qword_1B4F6D088);
  result = sub_1B4F68974();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1B4F68E84();
      sub_1B4F652E4();
      sub_1B4F67FE4();

      result = sub_1B4F68EC4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B4E7D26C(uint64_t a1)
{
  v2 = v1;
  v42 = sub_1B4F64E14();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5720, &qword_1B4F73F20);
  result = sub_1B4F68974();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F41B0, MEMORY[0x1E69CB098]);
      result = sub_1B4F67F14();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1B4E7D5C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4738, &qword_1B4F6D110);
  result = sub_1B4F68974();
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
      sub_1B4F68E84();
      sub_1B4F67FE4();
      result = sub_1B4F68EC4();
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

uint64_t sub_1B4E7D828(uint64_t a1)
{
  v2 = v1;
  v42 = sub_1B4F66484();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5808, &qword_1B4F73F80);
  result = sub_1B4F68974();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F41A8, MEMORY[0x1E69CC278]);
      result = sub_1B4F67F14();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1B4E7DB84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46E8, &qword_1B4F6D0C0);
  result = sub_1B4F68974();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1B4F68E84();
      MEMORY[0x1B8C82740](v18);
      result = sub_1B4F68EC4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B4E7DDD4(uint64_t a1)
{
  v2 = v1;
  v42 = sub_1B4F670C4();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57A0, &qword_1B4F73F50);
  result = sub_1B4F68974();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F41A0, MEMORY[0x1E69CCDC8]);
      result = sub_1B4F67F14();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1B4E7E130(uint64_t a1)
{
  v2 = v1;
  v42 = sub_1B4F660C4();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5780, &unk_1B4F79F50);
  result = sub_1B4F68974();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F4198, MEMORY[0x1E69CBE40]);
      result = sub_1B4F67F14();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1B4E7E48C(uint64_t a1)
{
  v2 = v1;
  v42 = sub_1B4F65DE4();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5768, &unk_1B4F79F40);
  result = sub_1B4F68974();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F4188, MEMORY[0x1E69CB800]);
      result = sub_1B4F67F14();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1B4E7E7E8(uint64_t a1)
{
  v2 = v1;
  v42 = sub_1B4F66BA4();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57E0, &qword_1B4F73F60);
  result = sub_1B4F68974();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F4DC0, MEMORY[0x1E69CCAC8]);
      result = sub_1B4F67F14();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1B4E7EB44(uint64_t a1)
{
  v2 = v1;
  v42 = sub_1B4F66A54();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57C8, &unk_1B4F79F30);
  result = sub_1B4F68974();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F4DF0, MEMORY[0x1E69CC938]);
      result = sub_1B4F67F14();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1B4E7EEA0(uint64_t a1)
{
  v2 = v1;
  v42 = sub_1B4F669F4();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57B0, &qword_1B4F73F58);
  result = sub_1B4F68974();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F4DF8, MEMORY[0x1E69CC830]);
      result = sub_1B4F67F14();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1B4E7F1FC(uint64_t a1)
{
  v2 = v1;
  v42 = sub_1B4F66AF4();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5790, &qword_1B4F73F48);
  result = sub_1B4F68974();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F4DA0, MEMORY[0x1E69CCA00]);
      result = sub_1B4F67F14();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}