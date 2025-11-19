uint64_t ImageGlyphRecency.init()()
{
  swift_defaultActor_initialize();
  type metadata accessor for RecencyServiceClient();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v0 + 112) = v1;
  return v0;
}

uint64_t ImageGlyphRecency.lastUsedDateTime(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1B8A239A4();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E3234, v3, 0);
}

uint64_t sub_1B89E3234()
{
  v20 = v0;
  if (qword_1EBA91528 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_1B8A23BC4();
  __swift_project_value_buffer(v2, qword_1EBA91530);

  v3 = sub_1B8A23BA4();
  v4 = sub_1B8A24224();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1B89A907C(v6, v5, &v19);
    _os_log_impl(&dword_1B89A7000, v3, v4, "Local client initiated request last used time for emoji: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CC5170](v8, -1, -1);
    MEMORY[0x1B8CC5170](v7, -1, -1);
  }

  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];
  v12 = v0[4];
  v13 = *(v0[5] + 112);
  *v9 = v0[3];
  v9[1] = v12;
  v14 = *MEMORY[0x1E69D4770];
  (*(v10 + 104))();

  v15 = swift_task_alloc();
  v0[9] = v15;
  *v15 = v0;
  v15[1] = sub_1B89E3434;
  v16 = v0[8];
  v17 = v0[2];

  return sub_1B89E7E98(v17, v16);
}

uint64_t sub_1B89E3434()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *v1;
  v6[10] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = v6[5];

    return MEMORY[0x1EEE6DFA0](sub_1B89E35DC, v7, 0);
  }

  else
  {
    v8 = v6[8];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_1B89E35DC()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t ImageGlyphRecency.lastUsedDateTime(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1B8A239A4();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1B8A23904();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E3760, v2, 0);
}

uint64_t sub_1B89E3760()
{
  v31 = v0;
  if (qword_1EBA91528 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[3];
  v5 = sub_1B8A23BC4();
  __swift_project_value_buffer(v5, qword_1EBA91530);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = sub_1B8A23BA4();
  v8 = sub_1B8A24224();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v13 = 136315138;
    sub_1B89ECA60(&qword_1ED82DE78, MEMORY[0x1E69695A8]);
    v28 = v8;
    v14 = v6;
    v15 = sub_1B8A24934();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = sub_1B89A907C(v18, v17, &v30);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1B89A7000, v7, v28, "Local client initiated request last used time for emoji: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B8CC5170](v29, -1, -1);
    MEMORY[0x1B8CC5170](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[7];
  v21 = v0[5];
  v22 = v0[6];
  v23 = *(v0[4] + 112);
  v6(v20, v0[3], v0[8]);
  (*(v22 + 104))(v20, *MEMORY[0x1E69D4778], v21);
  v24 = swift_task_alloc();
  v0[11] = v24;
  *v24 = v0;
  v24[1] = sub_1B89E3A28;
  v25 = v0[7];
  v26 = v0[2];

  return sub_1B89E7E98(v26, v25);
}

uint64_t sub_1B89E3A28()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *v1;
  v6[12] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = v6[4];

    return MEMORY[0x1EEE6DFA0](sub_1B89E3BE0, v7, 0);
  }

  else
  {
    v8 = v6[10];
    v9 = v6[7];

    v10 = v6[1];

    return v10();
  }
}

uint64_t sub_1B89E3BE0()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t ImageGlyphRecency.recordEngagement(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1B8A239A4();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E3D14, v2, 0);
}

uint64_t sub_1B89E3D14()
{
  v19 = v0;
  if (qword_1EBA91528 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1B8A23BC4();
  __swift_project_value_buffer(v2, qword_1EBA91530);

  v3 = sub_1B8A23BA4();
  v4 = sub_1B8A24224();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1B89A907C(v6, v5, &v18);
    _os_log_impl(&dword_1B89A7000, v3, v4, "Local client initiated record engagement for emoji: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CC5170](v8, -1, -1);
    MEMORY[0x1B8CC5170](v7, -1, -1);
  }

  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  v12 = v0[3];
  v13 = *(v0[4] + 112);
  *v9 = v0[2];
  v9[1] = v12;
  v14 = *MEMORY[0x1E69D4770];
  (*(v10 + 104))();

  v15 = swift_task_alloc();
  v0[8] = v15;
  *v15 = v0;
  v15[1] = sub_1B89E3F10;
  v16 = v0[7];

  return sub_1B89E84BC(v16);
}

uint64_t sub_1B89E3F10(double a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  v4[9] = v1;

  v7 = v4[6];
  if (v1)
  {
    v8 = v4[4];
    (*(v7 + 8))(v4[7], v4[5]);

    return MEMORY[0x1EEE6DFA0](sub_1B89ECC60, v8, 0);
  }

  else
  {
    v9 = v4[7];
    (*(v7 + 8))();

    v10 = *(v6 + 8);
    v11.n128_f64[0] = a1;

    return v10(v11);
  }
}

uint64_t ImageGlyphRecency.recordEngagement(forCharacter:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1B8A239A4();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E419C, v2, 0);
}

uint64_t sub_1B89E419C()
{
  v19 = v0;
  if (qword_1EBA91528 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1B8A23BC4();
  __swift_project_value_buffer(v2, qword_1EBA91530);

  v3 = sub_1B8A23BA4();
  v4 = sub_1B8A24224();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1B89A907C(v6, v5, &v18);
    _os_log_impl(&dword_1B89A7000, v3, v4, "Local client initiated record engagement for character: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CC5170](v8, -1, -1);
    MEMORY[0x1B8CC5170](v7, -1, -1);
  }

  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  v12 = v0[3];
  v13 = *(v0[4] + 112);
  *v9 = v0[2];
  v9[1] = v12;
  v14 = *MEMORY[0x1E69D4788];
  (*(v10 + 104))();

  v15 = swift_task_alloc();
  v0[8] = v15;
  *v15 = v0;
  v15[1] = sub_1B89E4398;
  v16 = v0[7];

  return sub_1B89E84BC(v16);
}

uint64_t sub_1B89E4398(double a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  v4[9] = v1;

  v7 = v4[6];
  if (v1)
  {
    v8 = v4[4];
    (*(v7 + 8))(v4[7], v4[5]);

    return MEMORY[0x1EEE6DFA0](sub_1B89E4560, v8, 0);
  }

  else
  {
    v9 = v4[7];
    (*(v7 + 8))();

    v10 = *(v6 + 8);
    v11.n128_f64[0] = a1;

    return v10(v11);
  }
}

uint64_t sub_1B89E4560()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t ImageGlyphRecency.recentRecords(limit:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1B89E4678;

  return ImageGlyphRecency.recentRecords(for:limit:)(a1, &unk_1F373EE40, a2);
}

uint64_t sub_1B89E4678()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  v3[4] = v0;

  if (v0)
  {
    v4 = v3[2];

    return MEMORY[0x1EEE6DFA0](sub_1B89E47AC, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t ImageGlyphRecency.recentRecords(for:limit:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[101] = v3;
  v4[100] = a3;
  v4[99] = a2;
  v4[93] = a1;
  v5 = sub_1B8A239A4();
  v4[102] = v5;
  v6 = *(v5 - 8);
  v4[103] = v6;
  v7 = *(v6 + 64) + 15;
  v4[104] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E4890, v3, 0);
}

uint64_t sub_1B89E4890()
{
  if (qword_1EBA91528 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8A23BC4();
  __swift_project_value_buffer(v1, qword_1EBA91530);
  v2 = sub_1B8A23BA4();
  v3 = sub_1B8A24224();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 800);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1B89A7000, v2, v3, "Local client initiated request recent records with limit: %ld", v5, 0xCu);
    MEMORY[0x1B8CC5170](v5, -1, -1);
  }

  v6 = *(v0 + 808);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91D28, &qword_1B8A272F0);
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEC0](v0 + 16, v0 + 696, sub_1B89E4A0C, v0 + 656);
}

uint64_t sub_1B89E4A0C()
{
  *(v1 + 840) = v0;
  if (v0)
  {
    return MEMORY[0x1EEE6DEB0](v1 + 16, v1 + 696, sub_1B89E4E84, v1 + 704);
  }

  else
  {
    return MEMORY[0x1EEE6DFA0](sub_1B89E4A50, *(v1 + 808), 0);
  }
}

uint64_t sub_1B89E4A50()
{
  v40 = v0;
  v1 = v0[87];
  v2 = *(v1 + 16);

  v36 = v2;
  if (v2)
  {
    v7 = 0;
    v33 = v0[103];
    v8 = v0[105];
    v9 = MEMORY[0x1E69E7CC0];
    v34 = (v33 + 8);
    while (1)
    {
      v35 = v9;
      if (v7 >= *(v1 + 16))
      {
        goto LABEL_32;
      }

      v10 = v0[104];
      v11 = v0[99];
      v12 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v13 = *(v33 + 72);
      v14 = *(v33 + 16);
      v14(v10, v1 + v12 + v13 * v7, v0[102]);
      sub_1B89E52CC(v10, v11, &v37);
      if (v8)
      {
        break;
      }

      ++v7;
      v15 = *v34;
      (*v34)(v0[104], v0[102]);
      v16 = v39;
      if (v39 == 255)
      {
        sub_1B89EBA74(v37, v38, 255);
        if (v7 == v36)
        {
LABEL_19:
          v9 = v35;
          goto LABEL_20;
        }

        v17 = v1 + v12 + v13 * v7;
        while (v7 < *(v1 + 16))
        {
          v18 = v0[104];
          v19 = v0[99];
          v14(v18, v17, v0[102]);
          sub_1B89E52CC(v18, v19, &v37);
          v15(v0[104], v0[102]);
          v16 = v39;
          ++v7;
          if (v39 != 255)
          {
            goto LABEL_12;
          }

          sub_1B89EBA74(v37, v38, 255);
          v17 += v13;
          if (v36 == v7)
          {
            goto LABEL_19;
          }
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_12:
      v20 = v37;
      v21 = v38;
      v9 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1B89DD1F8(0, *(v35 + 16) + 1, 1, v35);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v23 = *(v9 + 16);
      v22 = *(v9 + 24);
      if (v23 >= v22 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1B89DD1F8((v22 > 1), v23 + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v8 = 0;
      *(v9 + 16) = v23 + 1;
      v24 = v9 + 24 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      *(v24 + 48) = v16;
      if (v7 == v36)
      {
        goto LABEL_20;
      }
    }

    v30 = v0[104];
    v31 = v0[102];

    (*v34)(v30, v31);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v25 = v0[100];
    v26 = v0[93];

    v26[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91D30, &qword_1B8A272F8);
    v26[4] = sub_1B89CCD90(&qword_1EBA91D38, &qword_1EBA91D30, &qword_1B8A272F8);
    isUniquelyReferenced_nonNull_native = swift_allocObject();
    *v26 = isUniquelyReferenced_nonNull_native;
    if ((v25 & 0x8000000000000000) != 0)
    {
LABEL_33:
      __break(1u);
    }

    else
    {
      v27 = *(v9 + 16);
      if (v27 >= v25)
      {
        v27 = v25;
      }

      v28 = 2 * v27;
      if (v25)
      {
        v29 = v28 + 1;
      }

      else
      {
        v29 = 1;
      }

      *(isUniquelyReferenced_nonNull_native + 16) = v9;
      *(isUniquelyReferenced_nonNull_native + 24) = v9 + 32;
      *(isUniquelyReferenced_nonNull_native + 32) = 0;
      *(isUniquelyReferenced_nonNull_native + 40) = v29;
      v5 = sub_1B89E4DF8;
      isUniquelyReferenced_nonNull_native = (v0 + 2);
      v4 = v0 + 87;
      v6 = v0 + 94;
    }

    return MEMORY[0x1EEE6DEB0](isUniquelyReferenced_nonNull_native, v4, v5, v6);
  }
}

uint64_t sub_1B89E4E14()
{
  v1 = v0[104];
  v2 = v0[101];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B89E4EA0()
{
  v1 = v0[104];
  v2 = v0[101];

  v3 = v0[1];
  v4 = v0[105];

  return v3();
}

uint64_t sub_1B89E4F10(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91E48, &qword_1B8A28018) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E4FAC, 0, 0);
}

uint64_t sub_1B89E4FAC()
{
  v1 = v0[4];
  v2 = *(v0[3] + 112);
  v3 = sub_1B8A239B4();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1B89E5090;
  v5 = v0[4];

  return sub_1B89E9ED8(v5, 0, 0);
}

uint64_t sub_1B89E5090(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  v4[6] = v1;

  v7 = v4[4];
  if (v1)
  {
    sub_1B89A8A78(v7, &qword_1EBA91E48, &qword_1B8A28018);
    v8 = sub_1B89E5268;
  }

  else
  {
    v4[7] = a1;
    sub_1B89A8A78(v7, &qword_1EBA91E48, &qword_1B8A28018);
    v8 = sub_1B89E51F8;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1B89E51F8()
{
  v1 = *(v0 + 32);
  **(v0 + 16) = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B89E5268()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_1B89E52CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1B8A23904();
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v60 = &v58[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v58[-v10];
  v11 = sub_1B8A239A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v58[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v58[-v17];
  v19 = *(a2 + 16);
  v20 = *(v12 + 16);
  v65 = a1;
  if (!v19)
  {
    v22 = *MEMORY[0x1E69D4780];
LABEL_15:
    v20(v16, v65, v11);
    v28 = (*(v12 + 88))(v16, v11);
    if (v28 == v22)
    {
      goto LABEL_16;
    }

    if (v28 == *MEMORY[0x1E69D4770])
    {
      result = (*(v12 + 96))(v16, v11);
      v29 = v16[1];
      *a3 = *v16;
      a3[1] = v29;
      v30 = 1;
    }

    else
    {
      if (v28 == *MEMORY[0x1E69D4778])
      {
        (*(v12 + 96))(v16, v11);
        v32 = v61;
        v33 = v62;
        v34 = v63;
        (*(v61 + 32))(v63, v16, v62);
        if (qword_1EBA916C0 != -1)
        {
          swift_once();
        }

        v67 = 0;
        v35 = v66;
        v36 = sub_1B89D3BB0(v34, &v67);
        v37 = v60;
        if (v35)
        {
          sub_1B89AADD4(v67);
          if (qword_1EBA91528 != -1)
          {
            swift_once();
          }

          v38 = sub_1B8A23BC4();
          __swift_project_value_buffer(v38, qword_1EBA91530);
          (*(v32 + 16))(v37, v34, v33);
          v39 = v35;
          v40 = sub_1B8A23BA4();
          v41 = sub_1B8A24234();

          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v43 = v32;
            v64 = a3;
            v44 = v42;
            v65 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v67 = v66;
            *v44 = 136315394;
            sub_1B89ECA60(&qword_1ED82DE78, MEMORY[0x1E69695A8]);
            v59 = v41;
            v45 = sub_1B8A24934();
            v47 = v46;
            v48 = *(v43 + 8);
            v48(v37, v33);
            v49 = sub_1B89A907C(v45, v47, &v67);

            *(v44 + 4) = v49;
            *(v44 + 12) = 2112;
            v50 = v35;
            v51 = _swift_stdlib_bridgeErrorToNSError();
            *(v44 + 14) = v51;
            v52 = v65;
            *v65 = v51;
            _os_log_impl(&dword_1B89A7000, v40, v59, "Failed to fetch sticker w/ identifier %s: %@", v44, 0x16u);
            sub_1B89A8A78(v52, &qword_1EBA919E0, &qword_1B8A262D0);
            MEMORY[0x1B8CC5170](v52, -1, -1);
            v53 = v66;
            __swift_destroy_boxed_opaque_existential_0(v66);
            MEMORY[0x1B8CC5170](v53, -1, -1);
            v54 = v44;
            a3 = v64;
            MEMORY[0x1B8CC5170](v54, -1, -1);

            result = (v48)(v63, v33);
          }

          else
          {

            v57 = *(v32 + 8);
            v57(v37, v33);
            result = v57(v34, v33);
          }
        }

        else
        {
          v56 = v36;
          sub_1B89AADD4(v67);
          result = (*(v32 + 8))(v34, v33);
          if (v56)
          {
            *a3 = v56;
            a3[1] = 0;
            *(a3 + 16) = 0;
            return result;
          }
        }

LABEL_17:
        *a3 = 0;
        a3[1] = 0;
        *(a3 + 16) = -1;
        return result;
      }

      if (v28 != *MEMORY[0x1E69D4788])
      {
LABEL_16:
        result = (*(v12 + 8))(v16, v11);
        goto LABEL_17;
      }

      result = (*(v12 + 96))(v16, v11);
      v55 = v16[1];
      *a3 = *v16;
      a3[1] = v55;
      v30 = 2;
    }

    *(a3 + 16) = v30;
    return result;
  }

  v20(&v58[-v17], a1, v11);
  v21 = (*(v12 + 88))(v18, v11);
  v22 = *MEMORY[0x1E69D4780];
  v64 = a3;
  if (v21 == v22)
  {
    v23 = 0;
  }

  else if (v21 == *MEMORY[0x1E69D4770])
  {
    v23 = 1;
  }

  else if (v21 == *MEMORY[0x1E69D4778])
  {
    v23 = 2;
  }

  else
  {
    if (v21 != *MEMORY[0x1E69D4788])
    {
      result = sub_1B8A24714();
      __break(1u);
      return result;
    }

    v23 = 3;
  }

  result = (*(v12 + 8))(v18, v11);
  v25 = *(a2 + 16);
  v26 = (a2 + 32);
  while (v25)
  {
    v27 = *v26++;
    --v25;
    if (v27 == v23)
    {
      a3 = v64;
      goto LABEL_15;
    }
  }

  v31 = v64;
  *v64 = 0;
  v31[1] = 0;
  *(v31 + 16) = -1;
  return result;
}

uint64_t ImageGlyphRecency.recentEmojis(limit:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B89E5A38, v2, 0);
}

uint64_t sub_1B89E5A38()
{
  if (qword_1EBA91528 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8A23BC4();
  __swift_project_value_buffer(v1, qword_1EBA91530);
  v2 = sub_1B8A23BA4();
  v3 = sub_1B8A24224();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1B89A7000, v2, v3, "Local client initiated request recent emojis with limit: %ld", v5, 0xCu);
    MEMORY[0x1B8CC5170](v5, -1, -1);
  }

  v6 = v0[4];

  v7 = *(v6 + 112);
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_1B89E5BA4;
  v9 = v0[3];

  return sub_1B89E8AAC(v9, 0);
}

uint64_t sub_1B89E5BA4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v4 + 32);
    *(v4 + 48) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B89E5CF0, v9, 0);
  }
}

uint64_t sub_1B89E5CF0()
{
  v1 = v0[6];
  v2 = v0[2];
  v2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F40, &unk_1B8A27050);
  v2[4] = sub_1B89CCD90(&qword_1EBA91D40, &unk_1EBA91F40, &unk_1B8A27050);
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t ImageGlyphRecency.recentStickers(limit:)(uint64_t a1, uint64_t a2)
{
  v3[95] = v2;
  v3[94] = a2;
  v3[93] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B89E5DD4, v2, 0);
}

uint64_t sub_1B89E5DD4()
{
  if (qword_1EBA91528 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8A23BC4();
  __swift_project_value_buffer(v1, qword_1EBA91530);
  v2 = sub_1B8A23BA4();
  v3 = sub_1B8A24224();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[94];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1B89A7000, v2, v3, "Local client initiated request recent stickers with limit: %ld", v5, 0xCu);
    MEMORY[0x1B8CC5170](v5, -1, -1);
  }

  v6 = v0[95];
  v7 = v0[94];

  v8 = swift_allocObject();
  v0[96] = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;

  v0[97] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AB8, &unk_1B8A265F0);
  swift_asyncLet_begin();
  if (qword_1EBA916C0 != -1)
  {
    swift_once();
  }

  v0[98] = qword_1EBA91C28;

  return MEMORY[0x1EEE6DEC0](v0 + 2, v0 + 92, sub_1B89E5FB4, v0 + 82);
}

uint64_t sub_1B89E5FB4()
{
  *(v1 + 792) = v0;
  if (v0)
  {
    v2 = sub_1B89E6170;
  }

  else
  {
    v2 = sub_1B89E5FE8;
  }

  return MEMORY[0x1EEE6DFA0](v2, *(v1 + 760), 0);
}

uint64_t sub_1B89E5FE8()
{
  v8 = v0;
  v1 = v0[99];
  v2 = v0[98];
  v3 = v0[93];
  v4 = v0[92];
  v0[90] = v0[97];
  v0[91] = sub_1B89CCD90(&qword_1EBA91D48, &qword_1EBA91AB8, &unk_1B8A265F0);
  v0[87] = v4;
  v7 = 0;

  sub_1B89D3F20(v0 + 87, &v7, v3);
  v0[100] = v1;
  sub_1B89AADD4(v7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 87);
  if (v1)
  {
    v5 = sub_1B89E6210;
  }

  else
  {
    v5 = sub_1B89E60F0;
  }

  return MEMORY[0x1EEE6DEB0](v0 + 2, v0 + 92, v5, v0 + 82);
}

uint64_t sub_1B89E610C()
{
  v1 = *(v0 + 768);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B89E61AC()
{
  v1 = v0[99];
  v2 = v0[96];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B89E622C()
{
  v1 = v0[100];
  v2 = v0[96];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B89E6290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B89E62B4, 0, 0);
}

uint64_t sub_1B89E62B4()
{
  v1 = *(v0[3] + 112);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1B89E6354;
  v3 = v0[4];

  return sub_1B89E9118(v3, 0);
}

uint64_t sub_1B89E6354(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B89E64A0, 0, 0);
  }
}

uint64_t ImageGlyphRecency.recentGenmoji(limit:)(uint64_t a1, uint64_t a2)
{
  v3[104] = v2;
  v3[103] = a2;
  v3[97] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B89E64EC, v2, 0);
}

uint64_t sub_1B89E64EC()
{
  if (qword_1EBA91528 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8A23BC4();
  __swift_project_value_buffer(v1, qword_1EBA91530);
  v2 = sub_1B8A23BA4();
  v3 = sub_1B8A24224();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 824);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1B89A7000, v2, v3, "Local client initiated request recent genmoji with limit: %ld", v5, 0xCu);
    MEMORY[0x1B8CC5170](v5, -1, -1);
  }

  v6 = *(v0 + 832);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91D50, &qword_1B8A27388);
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEC0](v0 + 16, v0 + 696, sub_1B89E6668, v0 + 656);
}

uint64_t sub_1B89E6668()
{
  *(v1 + 840) = v0;
  if (v0)
  {
    return MEMORY[0x1EEE6DEB0](v1 + 16, v1 + 696, sub_1B89E6A00, v1 + 736);
  }

  else
  {
    return MEMORY[0x1EEE6DFA0](sub_1B89E66AC, *(v1 + 832), 0);
  }
}

uint64_t sub_1B89E66AC()
{
  v1 = v0[105];
  v2 = v0[103];
  v3 = v0[97];
  v4 = v0[90];
  v5 = v0[91];
  v6 = __swift_project_boxed_opaque_existential_0(v0 + 87, v4);
  v7 = *(v4 - 8);
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  (*(v7 + 16))(v9, v6, v4);
  v10 = sub_1B8A24084();

  v11 = &qword_1EBA91D58;
  v12 = &qword_1B8A27390;
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91D58, &qword_1B8A27390);
  v3[4] = sub_1B89CCD90(&qword_1EBA91D60, &qword_1EBA91D58, &qword_1B8A27390);
  v13 = swift_allocObject();
  *v3 = v13;
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v11 = v13;
  v12 = (v10 & 0xFFFFFFFFFFFFFF8);
  v2 = v10 >> 62;
  if (v10 >> 62)
  {
LABEL_23:
    v29 = sub_1B8A24554();
    v18 = sub_1B8A24554();
    if (v18 < 0)
    {
LABEL_34:
      __break(1u);
      return MEMORY[0x1EEE6DEB0](v18, v14, v15, v16);
    }

    v30 = v0[103];
    if (v29 >= v30)
    {
      v31 = v0[103];
    }

    else
    {
      v31 = v29;
    }

    if (v29 < 0)
    {
      v31 = v0[103];
    }

    if (v30)
    {
      v20 = v31;
    }

    else
    {
      v20 = 0;
    }

    v18 = sub_1B8A24554();
    if (v18 >= v20)
    {
      goto LABEL_10;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v17 = v0[103];
  v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v18 >= v17)
  {
    v19 = v0[103];
  }

  else
  {
    v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v17)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v18 < v20)
  {
    goto LABEL_33;
  }

LABEL_10:
  if ((v10 & 0xC000000000000001) != 0)
  {

    if (v20)
    {
      type metadata accessor for Sticker(0);
      v21 = 0;
      do
      {
        v22 = v21 + 1;
        sub_1B8A24654();
        v21 = v22;
      }

      while (v20 != v22);
    }
  }

  else
  {
  }

  if (v2)
  {
    v12 = sub_1B8A24734();
    v24 = v26;
    v23 = v27;
    v25 = v28;
  }

  else
  {
    v23 = 0;
    v24 = v12 + 32;
    v25 = (2 * v20) | 1;
  }

  v11[2] = v12;
  v11[3] = v24;
  v11[4] = v23;
  v11[5] = v25;
  v15 = sub_1B89E6980;
  v18 = (v0 + 2);
  v14 = v0 + 87;
  v16 = v0 + 98;

  return MEMORY[0x1EEE6DEB0](v18, v14, v15, v16);
}

uint64_t sub_1B89E699C()
{
  v1 = *(v0 + 832);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B89E6A1C()
{
  v1 = v0[104];

  v2 = v0[1];
  v3 = v0[105];

  return v2();
}

uint64_t sub_1B89E6A80(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B89BBE18;

  return ImageGlyphRecency.recentStickers(limit:)(a1, 32);
}

BOOL sub_1B89E6B20(void *a1)
{
  v1 = *a1 + OBJC_IVAR___STKSticker_searchText;
  swift_beginAccess();
  return *(v1 + 8) != 0;
}

uint64_t ImageGlyphRecency.recentCharacters(limit:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B89E6BA4, v2, 0);
}

uint64_t sub_1B89E6BA4()
{
  if (qword_1EBA91528 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8A23BC4();
  __swift_project_value_buffer(v1, qword_1EBA91530);
  v2 = sub_1B8A23BA4();
  v3 = sub_1B8A24224();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1B89A7000, v2, v3, "Local client initiated request recent characters with limit: %ld", v5, 0xCu);
    MEMORY[0x1B8CC5170](v5, -1, -1);
  }

  v6 = v0[4];

  v7 = *(v6 + 112);
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_1B89E6D10;
  v9 = v0[3];

  return sub_1B89E98E4(v9, 0);
}

uint64_t sub_1B89E6D10(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v4 + 32);
    *(v4 + 48) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B89ECC84, v9, 0);
  }
}

uint64_t ImageGlyphRecency.resetDatabase()()
{
  v1[2] = v0;
  v2 = sub_1B8A239C4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_1B8A23A24();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E6F78, v0, 0);
}

uint64_t sub_1B89E6F78()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B89E6F9C, v1, 0);
}

uint64_t sub_1B89E6F9C()
{
  v1 = v0[8];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E69D47A0], v0[3]);
  sub_1B8A239E4();
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1B89E706C;
  v3 = v0[8];
  v4 = v0[9];

  return sub_1B89EAD90(v3);
}

uint64_t sub_1B89E706C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_1B89E7220;
  }

  else
  {
    v6 = sub_1B89E7198;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1B89E7198()
{
  v1 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B89E7220()
{
  v1 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t ImageGlyphRecency.performInitialMigration()()
{
  v1[2] = v0;
  v2 = sub_1B8A239C4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_1B8A23A24();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E73C4, v0, 0);
}

uint64_t sub_1B89E73C4()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B89E73E8, v1, 0);
}

uint64_t sub_1B89E73E8()
{
  v1 = v0[8];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E69D47A8], v0[3]);
  sub_1B8A239E4();
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1B89E74B8;
  v3 = v0[8];
  v4 = v0[9];

  return sub_1B89EAD90(v3);
}

uint64_t sub_1B89E74B8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_1B89ECC58;
  }

  else
  {
    v6 = sub_1B89ECC78;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t ImageGlyphRecency.saveDatabase(destination:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B8A239C4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_1B8A23A24();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E7700, v1, 0);
}

uint64_t sub_1B89E7700()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 80) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B89E7724, v1, 0);
}

uint64_t sub_1B89E7724()
{
  v1 = v0[9];
  v2 = v0[2];
  (*(v0[5] + 104))(v0[6], *MEMORY[0x1E69D47D0], v0[4]);
  sub_1B8A239E4();
  sub_1B8A23734();
  sub_1B8A23A04();
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1B89E7810;
  v4 = v0[9];
  v5 = v0[10];

  return sub_1B89EAD90(v4);
}

uint64_t sub_1B89E7810()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_1B89ECC5C;
  }

  else
  {
    v6 = sub_1B89ECC7C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t ImageGlyphRecency.loadDatabase(source:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B8A239C4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_1B8A23A24();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E7A58, v1, 0);
}

uint64_t sub_1B89E7A58()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 80) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B89E7A7C, v1, 0);
}

uint64_t sub_1B89E7A7C()
{
  v1 = v0[9];
  v2 = v0[2];
  (*(v0[5] + 104))(v0[6], *MEMORY[0x1E69D47C8], v0[4]);
  sub_1B8A239E4();
  sub_1B8A23734();
  sub_1B8A23A04();
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1B89E7B68;
  v4 = v0[9];
  v5 = v0[10];

  return sub_1B89EAD90(v4);
}

uint64_t sub_1B89E7B68()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_1B89E7D1C;
  }

  else
  {
    v6 = sub_1B89E7C94;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1B89E7C94()
{
  v1 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B89E7D1C()
{
  v1 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t ImageGlyphRecency.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ImageGlyphRecency.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B89E7E10()
{
  if (*(v0 + 112))
  {

    sub_1B8A23C14();

    v1 = *(v0 + 112);
  }

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B89E7E98(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1B8A23A64();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91E58, &unk_1B8A28020) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = sub_1B8A239C4();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = sub_1B8A23A24();
  v3[12] = v11;
  v12 = *(v11 - 8);
  v3[13] = v12;
  v13 = *(v12 + 64) + 15;
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E804C, v2, 0);
}

uint64_t sub_1B89E804C()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[3];
  (*(v0[10] + 104))(v0[11], *MEMORY[0x1E69D47B8], v0[9]);
  sub_1B8A239E4();
  v4 = sub_1B8A239A4();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2, v3, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  sub_1B8A239D4();
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_1B89E81B4;
  v7 = v0[14];
  v8 = v0[7];
  v9 = v0[4];

  return sub_1B89EA8B8(v8, v7);
}

uint64_t sub_1B89E81B4()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1B89E8418;
  }

  else
  {
    v6 = sub_1B89E82E0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1B89E82E0()
{
  v1 = v0[7];
  sub_1B8A23A34();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = v0[2];
    sub_1B8A23854();
    v3 = 0;
  }

  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[8];
  v10 = v0[2];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v6 + 8))(v5, v7);
  v11 = sub_1B8A23884();
  (*(*(v11 - 8) + 56))(v10, v3, 1, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B89E8418()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v4 = v0[1];
  v5 = v0[16];

  return v4();
}

uint64_t sub_1B89E84BC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B8A23A64();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91E58, &unk_1B8A28020) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_1B8A239C4();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = sub_1B8A23A24();
  v2[11] = v10;
  v11 = *(v10 - 8);
  v2[12] = v11;
  v12 = *(v11 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E866C, v1, 0);
}

uint64_t sub_1B89E866C()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = v0[2];
  (*(v0[9] + 104))(v0[10], *MEMORY[0x1E69D47C0], v0[8]);
  sub_1B8A239E4();
  v4 = sub_1B8A239A4();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2, v3, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  sub_1B8A239D4();
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1B89E87D4;
  v7 = v0[13];
  v8 = v0[6];
  v9 = v0[3];

  return sub_1B89EA8B8(v8, v7);
}

uint64_t sub_1B89E87D4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1B89E8A08;
  }

  else
  {
    v6 = sub_1B89E8900;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1B89E8900()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[6];
  v15 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  v8 = COERCE_DOUBLE(sub_1B8A23A54());
  v10 = v9;
  (*(v6 + 8))(v5, v7);
  (*(v2 + 8))(v1, v3);
  if (v10)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v8;
  }

  v12 = v0[1];
  v13.n128_f64[0] = v11;

  return v12(v13);
}

uint64_t sub_1B89E8A08()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  (*(v0[12] + 8))(v0[13], v0[11]);

  v4 = v0[1];
  v5 = v0[15];

  return v4();
}

uint64_t sub_1B89E8AAC(uint64_t a1, char a2)
{
  *(v3 + 96) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_1B8A239A4();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91E48, &qword_1B8A28018) - 8) + 64) + 15;
  *(v3 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E8BB4, v2, 0);
}

uint64_t sub_1B89E8BB4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 96);
  v3 = *MEMORY[0x1E69D4790];
  v4 = sub_1B8A239B4();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1B89E8D00;
  v7 = *(v0 + 64);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);

  return sub_1B89E9ED8(v7, v8, v2 & 1);
}

uint64_t sub_1B89E8D00(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v7 = *v2;
  *(v4 + 80) = a1;
  *(v4 + 88) = v1;

  sub_1B89A8A78(v6, &qword_1EBA91E48, &qword_1B8A28018);
  v8 = *(v3 + 24);
  if (v1)
  {
    v9 = sub_1B89E90A0;
  }

  else
  {
    v9 = sub_1B89E8E60;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1B89E8E60()
{
  v1 = v0[10];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[5];
    v28 = v0[6];
    v4 = *(v3 + 16);
    v3 += 16;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v30 = *(v3 + 56);
    v31 = v4;
    v6 = (v3 + 16);
    v7 = (v3 + 72);
    v29 = *MEMORY[0x1E69D4770];
    v26 = (v3 + 80);
    v27 = (v3 - 8);
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v10 = v0[6];
      v9 = v0[7];
      v11 = v0[4];
      v31(v9, v5, v11);
      (*v6)(v10, v9, v11);
      v12 = (*v7)(v10, v11);
      v13 = v0[6];
      v14 = v0[4];
      if (v12 == v29)
      {
        (*v26)(v0[6], v14);
        v15 = *v13;
        v16 = *(v28 + 8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B89DD314(0, *(v8 + 2) + 1, 1, v8);
        }

        v18 = *(v8 + 2);
        v17 = *(v8 + 3);
        if (v18 >= v17 >> 1)
        {
          v8 = sub_1B89DD314((v17 > 1), v18 + 1, 1, v8);
        }

        *(v8 + 2) = v18 + 1;
        v19 = &v8[16 * v18];
        *(v19 + 4) = v15;
        *(v19 + 5) = v16;
      }

      else
      {
        (*v27)(v0[6], v14);
      }

      v5 += v30;
      --v2;
    }

    while (v2);
    v20 = v0[10];
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v22 = v0[7];
  v21 = v0[8];
  v23 = v0[6];

  v24 = v0[1];

  return v24(v8);
}

uint64_t sub_1B89E90A0()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

uint64_t sub_1B89E9118(uint64_t a1, char a2)
{
  *(v3 + 136) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_1B8A23904();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  v7 = sub_1B8A239A4();
  *(v3 + 72) = v7;
  v8 = *(v7 - 8);
  *(v3 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91E48, &qword_1B8A28018) - 8) + 64) + 15;
  *(v3 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E9294, v2, 0);
}

uint64_t sub_1B89E9294()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 136);
  v3 = *MEMORY[0x1E69D4790];
  v4 = sub_1B8A239B4();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_1B89E93E0;
  v7 = *(v0 + 104);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);

  return sub_1B89E9ED8(v7, v8, v2 & 1);
}

uint64_t sub_1B89E93E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *(*v2 + 104);
  v7 = *v2;
  *(v4 + 120) = a1;
  *(v4 + 128) = v1;

  sub_1B89A8A78(v6, &qword_1EBA91E48, &qword_1B8A28018);
  v8 = *(v3 + 24);
  if (v1)
  {
    v9 = sub_1B89E983C;
  }

  else
  {
    v9 = sub_1B89E9540;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1B89E9540()
{
  v1 = v0[15];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[10];
    v5 = *(v3 + 16);
    v3 += 16;
    v4 = v5;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v7 = *(v3 + 56);
    v42 = (v3 + 72);
    v43 = (v3 + 16);
    v41 = *MEMORY[0x1E69D4778];
    v34 = (v3 + 80);
    v35 = (v3 - 8);
    v38 = v0[5];
    v40 = (v38 + 32);
    v8 = MEMORY[0x1E69E7CC0];
    v36 = v7;
    v37 = v5;
    do
    {
      v10 = v0[11];
      v9 = v0[12];
      v11 = v0[9];
      v4(v9, v6, v11);
      (*v43)(v10, v9, v11);
      v12 = (*v42)(v10, v11);
      v13 = v0[11];
      v14 = v0[9];
      if (v12 == v41)
      {
        v15 = v0[7];
        v39 = v0[8];
        v16 = v0[6];
        v17 = v8;
        v18 = v0[4];
        (*v34)(v13, v14);
        v19 = *v40;
        (*v40)(v16, v13, v18);
        v19(v15, v16, v18);
        v20 = v18;
        v8 = v17;
        v19(v39, v15, v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B89DCEF0(0, v17[2] + 1, 1, v17);
        }

        v22 = v8[2];
        v21 = v8[3];
        v7 = v36;
        v4 = v37;
        if (v22 >= v21 >> 1)
        {
          v8 = sub_1B89DCEF0(v21 > 1, v22 + 1, 1, v8);
        }

        v23 = v0[8];
        v24 = v0[4];
        v8[2] = v22 + 1;
        v19(v8 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v22, v23, v24);
      }

      else
      {
        (*v35)(v0[11], v14);
      }

      v6 += v7;
      --v2;
    }

    while (v2);
    v25 = v0[15];
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v27 = v0[12];
  v26 = v0[13];
  v28 = v0[11];
  v30 = v0[7];
  v29 = v0[8];
  v31 = v0[6];

  v32 = v0[1];

  return v32(v8);
}

uint64_t sub_1B89E983C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];

  v7 = v0[1];
  v8 = v0[16];

  return v7();
}

uint64_t sub_1B89E98E4(uint64_t a1, char a2)
{
  *(v3 + 96) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_1B8A239A4();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91E48, &qword_1B8A28018) - 8) + 64) + 15;
  *(v3 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E99EC, v2, 0);
}

uint64_t sub_1B89E99EC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 96);
  v3 = *MEMORY[0x1E69D4798];
  v4 = sub_1B8A239B4();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1B89E9B38;
  v7 = *(v0 + 64);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);

  return sub_1B89E9ED8(v7, v8, v2 & 1);
}

uint64_t sub_1B89E9B38(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v7 = *v2;
  *(v4 + 80) = a1;
  *(v4 + 88) = v1;

  sub_1B89A8A78(v6, &qword_1EBA91E48, &qword_1B8A28018);
  v8 = *(v3 + 24);
  if (v1)
  {
    v9 = sub_1B89ECC80;
  }

  else
  {
    v9 = sub_1B89E9C98;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1B89E9C98()
{
  v1 = v0[10];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[5];
    v28 = v0[6];
    v4 = *(v3 + 16);
    v3 += 16;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v30 = *(v3 + 56);
    v31 = v4;
    v6 = (v3 + 16);
    v7 = (v3 + 72);
    v29 = *MEMORY[0x1E69D4788];
    v26 = (v3 + 80);
    v27 = (v3 - 8);
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v10 = v0[6];
      v9 = v0[7];
      v11 = v0[4];
      v31(v9, v5, v11);
      (*v6)(v10, v9, v11);
      v12 = (*v7)(v10, v11);
      v13 = v0[6];
      v14 = v0[4];
      if (v12 == v29)
      {
        (*v26)(v0[6], v14);
        v15 = *v13;
        v16 = *(v28 + 8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B89DD314(0, *(v8 + 2) + 1, 1, v8);
        }

        v18 = *(v8 + 2);
        v17 = *(v8 + 3);
        if (v18 >= v17 >> 1)
        {
          v8 = sub_1B89DD314((v17 > 1), v18 + 1, 1, v8);
        }

        *(v8 + 2) = v18 + 1;
        v19 = &v8[16 * v18];
        *(v19 + 4) = v15;
        *(v19 + 5) = v16;
      }

      else
      {
        (*v27)(v0[6], v14);
      }

      v5 += v30;
      --v2;
    }

    while (v2);
    v20 = v0[10];
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v22 = v0[7];
  v21 = v0[8];
  v23 = v0[6];

  v24 = v0[1];

  return v24(v8);
}

uint64_t sub_1B89E9ED8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 136) = a3;
  *(v4 + 16) = a1;
  v5 = sub_1B8A23A64();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91E48, &qword_1B8A28018) - 8) + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  v9 = sub_1B8A239C4();
  *(v4 + 72) = v9;
  v10 = *(v9 - 8);
  *(v4 + 80) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  v12 = sub_1B8A23A24();
  *(v4 + 96) = v12;
  v13 = *(v12 - 8);
  *(v4 + 104) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89EA090, v3, 0);
}

uint64_t sub_1B89EA090()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 64);
  v3 = *(v0 + 136);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  (*(*(v0 + 80) + 104))(*(v0 + 88), *MEMORY[0x1E69D47B0], *(v0 + 72));
  sub_1B89F4C24(MEMORY[0x1E69E7CC0]);
  sub_1B8A239E4();
  sub_1B89ECBA8(v5, v2);
  sub_1B8A239F4();
  sub_1B8A23A14();
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_1B89EA1AC;
  v7 = *(v0 + 112);
  v8 = *(v0 + 56);
  v9 = *(v0 + 32);

  return sub_1B89EA8B8(v8, v7);
}

uint64_t sub_1B89EA1AC()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1B89E8418;
  }

  else
  {
    v6 = sub_1B89EA2D8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1B89EA2D8()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = sub_1B8A23A44();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  (*(v8 + 8))(v5, v7);
  (*(v2 + 8))(v1, v3);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_1B89EA3CC()
{
  v1 = sub_1B8A23BF4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  if (!*(v0 + 112) || *(v0 + 120) == 1)
  {
    sub_1B8A23C34();
    sub_1B8A23A84();
    sub_1B8A23A74();
    sub_1B8A23BE4();
    swift_allocObject();
    swift_weakInit();
    v3 = sub_1B8A23BD4();
    v4 = *(v0 + 112);
    *(v0 + 112) = v3;

    *(v0 + 120) = 0;
  }

  return 1;
}

uint64_t sub_1B89EA638(uint64_t a1)
{
  v2 = sub_1B8A23C44();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_1B8A24184();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    (*(v3 + 16))(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
    v12 = (*(v3 + 80) + 40) & ~*(v3 + 80);
    v13 = swift_allocObject();
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    *(v13 + 4) = v10;
    (*(v3 + 32))(&v13[v12], &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    sub_1B8A0B3B4(0, 0, v8, &unk_1B8A28010, v13);
  }

  return result;
}

uint64_t sub_1B89EA838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B89EA858, a4, 0);
}

uint64_t sub_1B89EA858()
{
  v1 = v0[2];
  sub_1B89EB160(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1B89EA8B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1B8A23C64();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1B8A23A24();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89EA9E4, v2, 0);
}

uint64_t sub_1B89EA9E4()
{
  v40 = v0;
  v1 = v0[4];
  sub_1B89EA3CC();
  if (*(v1 + 112))
  {
    v2 = qword_1EBA91528;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = v0[11];
    v4 = v0[8];
    v5 = v0[9];
    v6 = v0[3];
    v7 = sub_1B8A23BC4();
    __swift_project_value_buffer(v7, qword_1EBA91530);
    v8 = *(v5 + 16);
    v8(v3, v6, v4);
    v9 = sub_1B8A23BA4();
    v10 = sub_1B8A24224();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[11];
    if (v11)
    {
      v13 = v0[9];
      v14 = v0[10];
      v15 = v0[8];
      v16 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = v38;
      *v16 = 136315138;
      v8(v14, v12, v15);
      v17 = sub_1B8A23F44();
      v19 = v18;
      (*(v13 + 8))(v12, v15);
      v20 = sub_1B89A907C(v17, v19, &v39);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1B89A7000, v9, v10, "Local client sending request to recency service endpoint: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x1B8CC5170](v38, -1, -1);
      MEMORY[0x1B8CC5170](v16, -1, -1);
    }

    else
    {
      v22 = v0[8];
      v21 = v0[9];

      (*(v21 + 8))(v12, v22);
    }

    v24 = v0[7];
    v23 = v0[8];
    v25 = v0[3];
    sub_1B89ECA60(&qword_1EBA91628, MEMORY[0x1E69D47D8]);
    sub_1B8A23C24();
    v26 = v0[6];
    v27 = v0[7];
    v28 = v0[5];
    v29 = v0[2];
    sub_1B8A23A64();
    sub_1B89ECA60(&qword_1EBA91620, MEMORY[0x1E69D47E8]);
    sub_1B8A23C54();
    (*(v26 + 8))(v27, v28);

    v36 = v0[10];
    v35 = v0[11];
    v37 = v0[7];

    v33 = v0[1];
  }

  else
  {
    sub_1B89ECA0C();
    swift_allocError();
    swift_willThrow();
    v31 = v0[10];
    v30 = v0[11];
    v32 = v0[7];

    v33 = v0[1];
  }

  return v33();
}

uint64_t sub_1B89EAD90(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B8A23A24();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89EAE5C, v1, 0);
}

uint64_t sub_1B89EAE5C()
{
  v33 = v0;
  v1 = v0[3];
  sub_1B89EA3CC();
  if (*(v1 + 112))
  {
    v2 = qword_1EBA91528;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = v0[7];
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[2];
    v7 = sub_1B8A23BC4();
    __swift_project_value_buffer(v7, qword_1EBA91530);
    v8 = *(v5 + 16);
    v8(v3, v6, v4);
    v9 = sub_1B8A23BA4();
    v10 = sub_1B8A24224();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[7];
    if (v11)
    {
      v13 = v0[5];
      v14 = v0[6];
      v15 = v0[4];
      v16 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v16 = 136315138;
      v8(v14, v12, v15);
      v17 = sub_1B8A23F44();
      v19 = v18;
      (*(v13 + 8))(v12, v15);
      v20 = sub_1B89A907C(v17, v19, &v32);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1B89A7000, v9, v10, "Local client sending request to recency service endpoint: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x1B8CC5170](v31, -1, -1);
      MEMORY[0x1B8CC5170](v16, -1, -1);
    }

    else
    {
      v22 = v0[4];
      v21 = v0[5];

      (*(v21 + 8))(v12, v22);
    }

    v23 = v0[4];
    v24 = v0[2];
    sub_1B89ECA60(&qword_1EBA91628, MEMORY[0x1E69D47D8]);
    sub_1B8A23C04();

    v29 = v0[6];
    v28 = v0[7];

    v27 = v0[1];
  }

  else
  {
    sub_1B89ECA0C();
    swift_allocError();
    swift_willThrow();
    v26 = v0[6];
    v25 = v0[7];

    v27 = v0[1];
  }

  return v27();
}

void sub_1B89EB160(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B8A23C44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBA91528 != -1)
  {
    swift_once();
  }

  v9 = sub_1B8A23BC4();
  __swift_project_value_buffer(v9, qword_1EBA91530);
  v10 = *(v5 + 16);
  v10(v8, a1, v4);
  v11 = sub_1B8A23BA4();
  v12 = sub_1B8A24234();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v2;
    v15 = v14;
    *v13 = 138412290;
    sub_1B89ECA60(&qword_1EBA91608, MEMORY[0x1E69E84C0]);
    swift_allocError();
    v10(v16, v8, v4);
    v17 = _swift_stdlib_bridgeErrorToNSError();
    (*(v5 + 8))(v8, v4);
    *(v13 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_1B89A7000, v11, v12, "XPC connection to the recency service was cancelled with the following error: '%@'", v13, 0xCu);
    sub_1B89A8A78(v15, &qword_1EBA919E0, &qword_1B8A262D0);
    v18 = v15;
    v2 = v20;
    MEMORY[0x1B8CC5170](v18, -1, -1);
    MEMORY[0x1B8CC5170](v13, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  *(v2 + 120) = 1;
}

uint64_t _s8Stickers20RecencyRecordWrapperO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 1)
  {
    if (!*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        sub_1B89AB538(0, &qword_1EBA91AE8, 0x1E69E58C0);
        sub_1B89ECC18(v6, v5, 0);
        sub_1B89ECC18(v3, v2, 0);
        v8 = sub_1B8A24404();
        sub_1B89EBA88(v3, v2, 0);
        v9 = v6;
        v10 = v5;
        v11 = 0;
LABEL_18:
        sub_1B89EBA88(v9, v10, v11);
        return v8 & 1;
      }

      goto LABEL_23;
    }

    if (v7 == 1)
    {
      v14 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        LOBYTE(v8) = sub_1B8A24954();
        sub_1B89ECC18(v6, v5, 1);
        sub_1B89ECC18(v3, v2, 1);
        sub_1B89EBA88(v3, v2, 1);
        v9 = v6;
        v10 = v5;
        v11 = 1;
        goto LABEL_18;
      }

      sub_1B89ECC18(v14, v2, 1);
      sub_1B89ECC18(v3, v2, 1);
      sub_1B89EBA88(v3, v2, 1);
      v18 = v3;
      v19 = v2;
      v20 = 1;
      goto LABEL_27;
    }

LABEL_23:
    sub_1B89ECC18(*a2, *(a2 + 8), v7);
    sub_1B89ECC18(v3, v2, v4);
    sub_1B89EBA88(v3, v2, v4);
    sub_1B89EBA88(v6, v5, v7);
    return 0;
  }

  if (v4 == 2)
  {
    if (v7 == 2)
    {
      v12 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        LOBYTE(v8) = sub_1B8A24954();
        sub_1B89ECC18(v6, v5, 2);
        sub_1B89ECC18(v3, v2, 2);
        sub_1B89EBA88(v3, v2, 2);
        v9 = v6;
        v10 = v5;
        v11 = 2;
        goto LABEL_18;
      }

      sub_1B89ECC18(v12, v2, 2);
      sub_1B89ECC18(v3, v2, 2);
      sub_1B89EBA88(v3, v2, 2);
      v18 = v3;
      v19 = v2;
      v20 = 2;
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  if (v7 != 3 || (v5 | v6) != 0)
  {
    goto LABEL_23;
  }

  sub_1B89EBA88(*a1, v2, 3);
  v18 = 0;
  v19 = 0;
  v20 = 3;
LABEL_27:
  sub_1B89EBA88(v18, v19, v20);
  return 1;
}

unint64_t sub_1B89EB690()
{
  result = qword_1EBA91C58;
  if (!qword_1EBA91C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91C58);
  }

  return result;
}

unint64_t sub_1B89EB6E4()
{
  result = qword_1EBA91C60;
  if (!qword_1EBA91C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91C60);
  }

  return result;
}

unint64_t sub_1B89EB738()
{
  result = qword_1EBA91C68;
  if (!qword_1EBA91C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91C68);
  }

  return result;
}

unint64_t sub_1B89EB78C()
{
  result = qword_1EBA91C70;
  if (!qword_1EBA91C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91C70);
  }

  return result;
}

unint64_t sub_1B89EB7E0()
{
  result = qword_1EBA91C78;
  if (!qword_1EBA91C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91C78);
  }

  return result;
}

unint64_t sub_1B89EB834()
{
  result = qword_1EBA91CD8;
  if (!qword_1EBA91CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91CD8);
  }

  return result;
}

unint64_t sub_1B89EB888()
{
  result = qword_1EBA91CE0;
  if (!qword_1EBA91CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91CE0);
  }

  return result;
}

unint64_t sub_1B89EB8DC()
{
  result = qword_1EBA91CE8;
  if (!qword_1EBA91CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91CE8);
  }

  return result;
}

unint64_t sub_1B89EB930()
{
  result = qword_1EBA91CF0;
  if (!qword_1EBA91CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91CF0);
  }

  return result;
}

unint64_t sub_1B89EB984()
{
  result = qword_1EBA91CF8;
  if (!qword_1EBA91CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91CF8);
  }

  return result;
}

uint64_t sub_1B89EB9D8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B89C3E20;

  return sub_1B89E4F10(a1, v1);
}

void sub_1B89EBA74(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1B89EBA88(a1, a2, a3);
  }
}

void sub_1B89EBA88(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_1B89EBAB0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B89BBE18;

  return sub_1B89E6290(a1, v5, v4);
}

uint64_t sub_1B89EBB5C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B89C3E20;

  return sub_1B89E6A80(a1);
}

unint64_t sub_1B89EBBFC()
{
  result = qword_1EBA91D68;
  if (!qword_1EBA91D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91D68);
  }

  return result;
}

unint64_t sub_1B89EBC54()
{
  result = qword_1EBA91D70;
  if (!qword_1EBA91D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91D70);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8Stickers20RecencyRecordWrapperO(uint64_t a1)
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

uint64_t sub_1B89EBCD8(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B89EBD20(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B89EBD64(uint64_t result, unsigned int a2)
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

unint64_t sub_1B89EBEA8()
{
  result = qword_1EBA91D78;
  if (!qword_1EBA91D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91D78);
  }

  return result;
}

unint64_t sub_1B89EBF00()
{
  result = qword_1EBA91D80;
  if (!qword_1EBA91D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91D80);
  }

  return result;
}

unint64_t sub_1B89EBF58()
{
  result = qword_1EBA91D88;
  if (!qword_1EBA91D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91D88);
  }

  return result;
}

unint64_t sub_1B89EBFB0()
{
  result = qword_1EBA91D90;
  if (!qword_1EBA91D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91D90);
  }

  return result;
}

unint64_t sub_1B89EC008()
{
  result = qword_1EBA91D98;
  if (!qword_1EBA91D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91D98);
  }

  return result;
}

unint64_t sub_1B89EC060()
{
  result = qword_1EBA91DA0;
  if (!qword_1EBA91DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91DA0);
  }

  return result;
}

unint64_t sub_1B89EC0B8()
{
  result = qword_1EBA91DA8;
  if (!qword_1EBA91DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91DA8);
  }

  return result;
}

unint64_t sub_1B89EC110()
{
  result = qword_1EBA91DB0;
  if (!qword_1EBA91DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91DB0);
  }

  return result;
}

unint64_t sub_1B89EC168()
{
  result = qword_1EBA91DB8;
  if (!qword_1EBA91DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91DB8);
  }

  return result;
}

unint64_t sub_1B89EC1C0()
{
  result = qword_1EBA91DC0;
  if (!qword_1EBA91DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91DC0);
  }

  return result;
}

unint64_t sub_1B89EC218()
{
  result = qword_1EBA91DC8;
  if (!qword_1EBA91DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91DC8);
  }

  return result;
}

unint64_t sub_1B89EC270()
{
  result = qword_1EBA91DD0;
  if (!qword_1EBA91DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91DD0);
  }

  return result;
}

unint64_t sub_1B89EC2C8()
{
  result = qword_1EBA91DD8;
  if (!qword_1EBA91DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91DD8);
  }

  return result;
}

unint64_t sub_1B89EC320()
{
  result = qword_1EBA91DE0;
  if (!qword_1EBA91DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91DE0);
  }

  return result;
}

unint64_t sub_1B89EC378()
{
  result = qword_1EBA91DE8;
  if (!qword_1EBA91DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91DE8);
  }

  return result;
}

unint64_t sub_1B89EC3D0()
{
  result = qword_1EBA91DF0;
  if (!qword_1EBA91DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91DF0);
  }

  return result;
}

unint64_t sub_1B89EC428()
{
  result = qword_1EBA91DF8;
  if (!qword_1EBA91DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91DF8);
  }

  return result;
}

unint64_t sub_1B89EC480()
{
  result = qword_1EBA91E00;
  if (!qword_1EBA91E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91E00);
  }

  return result;
}

unint64_t sub_1B89EC4D8()
{
  result = qword_1EBA91E08;
  if (!qword_1EBA91E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91E08);
  }

  return result;
}

unint64_t sub_1B89EC530()
{
  result = qword_1EBA91E10;
  if (!qword_1EBA91E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91E10);
  }

  return result;
}

unint64_t sub_1B89EC588()
{
  result = qword_1EBA91E18;
  if (!qword_1EBA91E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91E18);
  }

  return result;
}

unint64_t sub_1B89EC5E0()
{
  result = qword_1EBA91E20;
  if (!qword_1EBA91E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91E20);
  }

  return result;
}

unint64_t sub_1B89EC638()
{
  result = qword_1EBA91E28;
  if (!qword_1EBA91E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91E28);
  }

  return result;
}

unint64_t sub_1B89EC690()
{
  result = qword_1EBA91E30;
  if (!qword_1EBA91E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91E30);
  }

  return result;
}

unint64_t sub_1B89EC6E8()
{
  result = qword_1EBA91E38;
  if (!qword_1EBA91E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91E38);
  }

  return result;
}

uint64_t sub_1B89EC73C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B8A24954() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656B63697473 && a2 == 0xE700000000000000 || (sub_1B8A24954() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000 || (sub_1B8A24954() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574636172616863 && a2 == 0xE900000000000072)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B8A24954();

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

uint64_t sub_1B89EC8A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B8A24954() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000 || (sub_1B8A24954() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72656B63697473 && a2 == 0xE700000000000000 || (sub_1B8A24954() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574636172616863 && a2 == 0xE900000000000072)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B8A24954();

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

unint64_t sub_1B89ECA0C()
{
  result = qword_1EBA91E40;
  if (!qword_1EBA91E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91E40);
  }

  return result;
}

uint64_t sub_1B89ECA60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B89ECAB0(uint64_t a1)
{
  v4 = *(sub_1B8A23C44() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B89BBE18;

  return sub_1B89EA838(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1B89ECBA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91E48, &qword_1B8A28018);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1B89ECC18(id result, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  if (!a3)
  {
    return result;
  }

  return result;
}

uint64_t sub_1B89ECC8C()
{
  v0 = sub_1B8A23BC4();
  __swift_allocate_value_buffer(v0, qword_1EBA91E60);
  __swift_project_value_buffer(v0, qword_1EBA91E60);
  return sub_1B8A23BB4();
}

id _STKMessagesObjCStoreFacade.init()()
{
  v1 = v0;
  v2 = type metadata accessor for StickerStore.PersistenceType();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B8A23784();
  (*(*(v6 - 8) + 56))(v5, 1, 3, v6);
  v7 = type metadata accessor for StickerStore();
  swift_allocObject();
  v8 = StickerStore.init(persistence:)(v5);
  v9 = &v1[OBJC_IVAR____STKMessagesObjCStoreFacade_store];
  v9[3] = v7;
  v9[4] = &protocol witness table for StickerStore;
  *v9 = v8;
  v10 = type metadata accessor for _STKMessagesObjCStoreFacade();
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_init);
}

id _STKMessagesObjCStoreFacade.__allocating_init(store:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1B89AA114(a1, v3 + OBJC_IVAR____STKMessagesObjCStoreFacade_store);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

id _STKMessagesObjCStoreFacade.init(store:)(uint64_t *a1)
{
  sub_1B89AA114(a1, v1 + OBJC_IVAR____STKMessagesObjCStoreFacade_store);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _STKMessagesObjCStoreFacade();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

void sub_1B89ED028(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v46 = MEMORY[0x1E69E7CC0];
  v14 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_20:
    v15 = sub_1B8A24554();
  }

  else
  {
    v15 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = 0;
  v47 = MEMORY[0x1E69E7CC0];
  while (v15 != v16)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1B8CC44E0](v16, a3);
    }

    else
    {
      if (v16 >= *(v14 + 16))
      {
        goto LABEL_19;
      }

      v17 = *(a3 + 8 * v16 + 32);
    }

    v18 = v17;
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v20 = sub_1B89ED310(v16, v17);

    ++v16;
    if (v20)
    {
      MEMORY[0x1B8CC3F50]();
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v21 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1B8A24114();
      }

      sub_1B8A24134();
      v47 = v46;
      v16 = v19;
    }
  }

  if (a13)
  {
    v22 = *(a13 + OBJC_IVAR____STKStickerAttributionInfo_adamID);
    v24 = *(a13 + OBJC_IVAR____STKStickerAttributionInfo_bundleIdentifier);
    v23 = *(a13 + OBJC_IVAR____STKStickerAttributionInfo_bundleIdentifier + 8);
    v25 = *(a13 + OBJC_IVAR____STKStickerAttributionInfo_name);
    v26 = *(a13 + OBJC_IVAR____STKStickerAttributionInfo_name + 8);
    v27 = type metadata accessor for Sticker.AttributionInfo();
    v28 = objc_allocWithZone(v27);
    v29 = &v28[OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier];
    *v29 = 0;
    *(v29 + 1) = 0;
    *&v28[OBJC_IVAR___STKStickerAttributionInfo_adamID] = v22;
    swift_beginAccess();
    *v29 = v24;
    *(v29 + 1) = v23;
    v30 = &v28[OBJC_IVAR___STKStickerAttributionInfo_name];
    *v30 = v25;
    *(v30 + 1) = v26;
    v45.receiver = v28;
    v45.super_class = v27;
    v31 = v22;

    v32 = objc_msgSendSuper2(&v45, sel_init);
  }

  else
  {
    v32 = 0;
  }

  v33 = *(v37 + OBJC_IVAR____STKMessagesObjCStoreFacade_store + 24);
  v34 = *(v37 + OBJC_IVAR____STKMessagesObjCStoreFacade_store + 32);
  __swift_project_boxed_opaque_existential_0((v37 + OBJC_IVAR____STKMessagesObjCStoreFacade_store), v33);
  v35 = sub_1B8A052DC(a4);
  (*(v34 + 96))(a1, a2, v47, v35, v36 & 1, a5, a6, a7, a8, a9, a10, a11, a12, v32, v33, v34);
}

uint64_t sub_1B89ED310(uint64_t a1, char *a2)
{
  v56 = a1;
  v57 = sub_1B8A23904();
  v3 = *(v57 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91EB8, &unk_1B8A28100);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v50 - v9;
  v11 = sub_1B8A23AD4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v50 - v17;
  v19 = *&a2[OBJC_IVAR____STKStickerUIStickerRepresentation_type];
  v20 = *&a2[OBJC_IVAR____STKStickerUIStickerRepresentation_type + 8];

  sub_1B8A23AE4();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B89EE8E4(v10);
    if (qword_1EBA916C8 != -1)
    {
      swift_once();
    }

    v21 = sub_1B8A23BC4();
    __swift_project_value_buffer(v21, qword_1EBA91E60);
    v22 = a2;
    v23 = sub_1B8A23BA4();
    v24 = sub_1B8A24234();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v59 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1B89A907C(v19, v20, &v59);
      _os_log_impl(&dword_1B89A7000, v23, v24, "Skipping unsupported type %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1B8CC5170](v26, -1, -1);
      MEMORY[0x1B8CC5170](v25, -1, -1);
    }

    return 0;
  }

  (*(v12 + 32))(v18, v10, v11);
  v28 = *&a2[OBJC_IVAR____STKStickerUIStickerRepresentation_data + 8];
  v54 = *&a2[OBJC_IVAR____STKStickerUIStickerRepresentation_data];
  v55 = v16;
  v29 = *(v12 + 16);
  v53 = v18;
  v29(v16);
  v52 = *&a2[OBJC_IVAR____STKStickerUIStickerRepresentation_size];
  v30 = *&a2[OBJC_IVAR____STKStickerUIStickerRepresentation_role];
  v31 = *&a2[OBJC_IVAR____STKStickerUIStickerRepresentation_role + 8];
  if (v31)
  {
    v32 = *&a2[OBJC_IVAR____STKStickerUIStickerRepresentation_role];
  }

  else
  {
    v32 = 0;
  }

  v33 = 0xE000000000000000;
  if (v31)
  {
    v33 = *&a2[OBJC_IVAR____STKStickerUIStickerRepresentation_role + 8];
  }

  v50 = v33;
  v51 = v32;
  v34 = v31 && (v30 == 0xD000000000000020 && v31 == 0x80000001B8A2A290 || (sub_1B8A24954() & 1) != 0) || v56 == 0;
  LODWORD(v56) = v34;
  v35 = type metadata accessor for Sticker.Representation();
  v36 = objc_allocWithZone(v35);

  sub_1B8A238F4();
  (*(v3 + 32))(&v36[OBJC_IVAR___STKStickerRepresentation_identifier], v6, v57);
  v37 = &v36[OBJC_IVAR___STKStickerRepresentation_data];
  v38 = v54;
  v39 = v55;
  *v37 = v54;
  v37[1] = v28;
  result = (v29)(&v36[OBJC_IVAR___STKStickerRepresentation_uti], v39, v11);
  v40 = v28 >> 62;
  if ((v28 >> 62) > 1)
  {
    v41 = 0;
    if (v40 != 2)
    {
      goto LABEL_28;
    }

    v43 = *(v38 + 16);
    v42 = *(v38 + 24);
    v41 = v42 - v43;
    if (!__OFSUB__(v42, v43))
    {
LABEL_27:
      sub_1B89B4A18(v38, v28);
      goto LABEL_28;
    }

    __break(1u);
LABEL_25:
    if (__OFSUB__(HIDWORD(v38), v38))
    {
      __break(1u);
      return result;
    }

    v41 = HIDWORD(v38) - v38;
    goto LABEL_27;
  }

  if (v40)
  {
    goto LABEL_25;
  }

  v41 = BYTE6(v28);
LABEL_28:
  *&v36[OBJC_IVAR___STKStickerRepresentation_byteCount] = v41;
  *&v36[OBJC_IVAR___STKStickerRepresentation_size] = v52;
  v44 = &v36[OBJC_IVAR___STKStickerRepresentation_role];
  v45 = v50;
  *v44 = v51;
  v44[1] = v45;
  v36[OBJC_IVAR___STKStickerRepresentation_isPreferred] = v56;
  if (qword_1EBA91590 != -1)
  {
    swift_once();
  }

  v46 = qword_1EBA91598 + OBJC_IVAR____TtC8Stickers10Versioning_currentStickerRepresentationVersionOverride;
  swift_beginAccess();
  v47 = *v46;
  if (*(v46 + 8))
  {
    v47 = 1;
  }

  *&v36[OBJC_IVAR___STKStickerRepresentation_version] = v47;
  v58.receiver = v36;
  v58.super_class = v35;
  v48 = objc_msgSendSuper2(&v58, sel_init, v50, v51);
  v49 = *(v12 + 8);
  v49(v39, v11);
  v49(v53, v11);
  return v48;
}

uint64_t _STKStickerUIStickerRepresentation.data.getter()
{
  v1 = *(v0 + OBJC_IVAR____STKStickerUIStickerRepresentation_data);
  sub_1B89B4A18(v1, *(v0 + OBJC_IVAR____STKStickerUIStickerRepresentation_data + 8));
  return v1;
}

uint64_t _STKStickerUIStickerRepresentation.type.getter()
{
  v1 = *(v0 + OBJC_IVAR____STKStickerUIStickerRepresentation_type);
  v2 = *(v0 + OBJC_IVAR____STKStickerUIStickerRepresentation_type + 8);

  return v1;
}

double _STKStickerUIStickerRepresentation.size.getter()
{
  result = *(v0 + OBJC_IVAR____STKStickerUIStickerRepresentation_size);
  v2 = *(v0 + OBJC_IVAR____STKStickerUIStickerRepresentation_size + 8);
  return result;
}

uint64_t _STKStickerUIStickerRepresentation.role.getter()
{
  v1 = *(v0 + OBJC_IVAR____STKStickerUIStickerRepresentation_role);
  v2 = *(v0 + OBJC_IVAR____STKStickerUIStickerRepresentation_role + 8);

  return v1;
}

uint64_t sub_1B89EDDF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F30, &qword_1B8A26600);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B8A28030;
  v2 = *(v0 + OBJC_IVAR____STKStickerUIStickerRepresentation_role + 8);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____STKStickerUIStickerRepresentation_role);
  }

  else
  {
    v3 = 0x3E6C696E3CLL;
  }

  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR____STKStickerUIStickerRepresentation_role + 8);
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1B8CC3E20](v3, v4);

  *(v1 + 32) = 0x3D656C6F72;
  *(v1 + 40) = 0xE500000000000000;
  MEMORY[0x1B8CC3E20](*(v0 + OBJC_IVAR____STKStickerUIStickerRepresentation_type), *(v0 + OBJC_IVAR____STKStickerUIStickerRepresentation_type + 8));
  *(v1 + 48) = 0x3D65707974;
  *(v1 + 56) = 0xE500000000000000;
  v5 = *(v0 + OBJC_IVAR____STKStickerUIStickerRepresentation_size);
  v6 = *(v0 + OBJC_IVAR____STKStickerUIStickerRepresentation_size + 8);
  v7 = sub_1B8A243A4();
  MEMORY[0x1B8CC3E20](v7);

  *(v1 + 64) = 0x3D657A6973;
  *(v1 + 72) = 0xE500000000000000;
  v9 = *(v0 + OBJC_IVAR____STKStickerUIStickerRepresentation_data);
  v10 = *(v0 + OBJC_IVAR____STKStickerUIStickerRepresentation_data + 8);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      v12 = 0;
      goto LABEL_17;
    }

    v14 = v9 + 16;
    v9 = *(v9 + 16);
    v13 = *(v14 + 8);
    v12 = v13 - v9;
    if (!__OFSUB__(v13, v9))
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v12 = BYTE6(v10);
LABEL_17:
    v17 = [objc_opt_self() stringFromByteCount:v12 countStyle:0];
    v18 = sub_1B8A23F24();
    v20 = v19;

    MEMORY[0x1B8CC3E20](v18, v20);

    *(v1 + 80) = 0x3D61746164;
    *(v1 + 88) = 0xE500000000000000;
    swift_getObjectType();
    v21 = sub_1B8A24A94();
    MEMORY[0x1B8CC3E20](v21);

    MEMORY[0x1B8CC3E20](8250, 0xE200000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F40, &unk_1B8A27050);
    sub_1B89EE77C();
    v22 = sub_1B8A23EB4();
    v24 = v23;

    MEMORY[0x1B8CC3E20](v22, v24);

    MEMORY[0x1B8CC3E20](62, 0xE100000000000000);
    return 60;
  }

  v15 = __OFSUB__(HIDWORD(v9), v9);
  v16 = HIDWORD(v9) - v9;
  if (!v15)
  {
    v12 = v16;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void *_STKStickerAttributionInfo.adamID.getter()
{
  v1 = *(v0 + OBJC_IVAR____STKStickerAttributionInfo_adamID);
  v2 = v1;
  return v1;
}

uint64_t _STKStickerAttributionInfo.bundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____STKStickerAttributionInfo_bundleIdentifier);
  v2 = *(v0 + OBJC_IVAR____STKStickerAttributionInfo_bundleIdentifier + 8);

  return v1;
}

uint64_t _STKStickerAttributionInfo.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____STKStickerAttributionInfo_name);
  v2 = *(v0 + OBJC_IVAR____STKStickerAttributionInfo_name + 8);

  return v1;
}

id sub_1B89EE340(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B8A23EF4();

  return v5;
}

uint64_t sub_1B89EE3B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F30, &qword_1B8A26600);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B8A28040;
  v3 = *(v0 + OBJC_IVAR____STKStickerAttributionInfo_adamID);
  if (v3)
  {
    v4 = [v3 description];
    v5 = sub_1B8A23F24();
    v7 = v6;
  }

  else
  {
    v7 = 0xE500000000000000;
    v5 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1B8CC3E20](v5, v7);

  *(v2 + 32) = 0x3D44496D616461;
  *(v2 + 40) = 0xE700000000000000;
  sub_1B8A24634();

  if (*(v1 + OBJC_IVAR____STKStickerAttributionInfo_bundleIdentifier + 8))
  {
    v8 = *(v1 + OBJC_IVAR____STKStickerAttributionInfo_bundleIdentifier);
    v9 = *(v1 + OBJC_IVAR____STKStickerAttributionInfo_bundleIdentifier + 8);
  }

  else
  {
    v9 = 0xE500000000000000;
    v8 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1B8CC3E20](v8, v9);

  *(v2 + 48) = 0xD000000000000011;
  *(v2 + 56) = 0x80000001B8A2AE10;
  v10 = *(v1 + OBJC_IVAR____STKStickerAttributionInfo_name + 8);
  if (v10)
  {
    v11 = *(v1 + OBJC_IVAR____STKStickerAttributionInfo_name);
  }

  else
  {
    v11 = 0x3E6C696E3CLL;
  }

  if (v10)
  {
    v12 = *(v1 + OBJC_IVAR____STKStickerAttributionInfo_name + 8);
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1B8CC3E20](v11, v12);

  *(v2 + 64) = 0x3D656D616ELL;
  *(v2 + 72) = 0xE500000000000000;
  swift_getObjectType();
  v13 = sub_1B8A24A94();
  MEMORY[0x1B8CC3E20](v13);

  MEMORY[0x1B8CC3E20](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F40, &unk_1B8A27050);
  sub_1B89EE77C();
  v14 = sub_1B8A23EB4();
  v16 = v15;

  MEMORY[0x1B8CC3E20](v14, v16);

  MEMORY[0x1B8CC3E20](62, 0xE100000000000000);
  return 60;
}

id _STKStickerAttributionInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1B89EE6E0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1B89EE77C()
{
  result = qword_1EBA911A0;
  if (!qword_1EBA911A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBA91F40, &unk_1B8A27050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA911A0);
  }

  return result;
}

uint64_t sub_1B89EE8E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91EB8, &unk_1B8A28100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1B89EE954()
{
  v1 = [v0 domain];
  v2 = sub_1B8A23F24();
  v4 = v3;

  v5 = *MEMORY[0x1E696A250];
  if (sub_1B8A23F24() == v2 && v6 == v4)
  {

LABEL_8:

    if ([v0 code] == 259)
    {
      return 1;
    }

    v10 = 256;
    return [v0 code] == v10;
  }

  v8 = sub_1B8A24954();

  if (v8)
  {
    goto LABEL_8;
  }

  v11 = *MEMORY[0x1E695D488];
  if (sub_1B8A23F24() == v2 && v12 == v4)
  {

    goto LABEL_20;
  }

  v14 = sub_1B8A24954();

  result = 0;
  if (v14)
  {
LABEL_20:
    if ([v0 code] == 11 || objc_msgSend(v0, sel_code) == 26 || objc_msgSend(v0, sel_code) == 20)
    {
      return 1;
    }

    v10 = 17;
    return [v0 code] == v10;
  }

  return result;
}

void sub_1B89EEAE8(void *a1, void *a2)
{
  v5 = v2;
  v153 = a2;
  v151 = sub_1B8A23904();
  v148 = *(v151 - 8);
  v7 = *(v148 + 64);
  v8 = MEMORY[0x1EEE9AC00](v151);
  v152 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v150 = &v143 - v10;
  if ([a1 isInserted])
  {
    [a1 setType_];
    v11 = sub_1B8A238B4();
    [a1 setIdentifier_];
  }

  v12 = OBJC_IVAR___STKSticker_byteCount;
  swift_beginAccess();
  v13 = *(v5 + v12);
  if (v13 < 0xFFFFFFFF80000000)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v13 > 0x7FFFFFFF)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  [a1 setByteCount_];
  v14 = (v5 + OBJC_IVAR___STKSticker_name);
  swift_beginAccess();
  v16 = *v14;
  v15 = v14[1];

  v17 = sub_1B8A23EF4();

  [a1 setName_];

  v18 = OBJC_IVAR___STKSticker_effect;
  swift_beginAccess();
  v19 = *(v5 + v18);
  if (v19 < 0xFFFFFFFF80000000)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (v19 > 0x7FFFFFFF)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
    goto LABEL_26;
  }

  [a1 setEffect_];
  v20 = (v5 + OBJC_IVAR___STKSticker_metadata);
  swift_beginAccess();
  v21 = 0;
  v22 = v20[1];
  if (v22 >> 60 != 15)
  {
    v23 = *v20;
    sub_1B89B4A18(v23, v22);
    v21 = sub_1B8A237A4();
    sub_1B89B4A04(v23, v22);
  }

  [a1 setMetadata_];

  v24 = (v5 + OBJC_IVAR___STKSticker_externalURI);
  swift_beginAccess();
  if (v24[1])
  {
    v25 = *v24;
    v26 = v24[1];
  }

  v27 = sub_1B8A23EF4();

  [a1 setExternalURI_];

  v28 = (v5 + OBJC_IVAR___STKSticker_accessibilityName);
  swift_beginAccess();
  if (v28[1])
  {
    v29 = *v28;

    v30 = sub_1B8A23EF4();
  }

  else
  {
    v30 = 0;
  }

  [a1 setAccessibilityName_];

  v31 = OBJC_IVAR___STKSticker_attributionInfo;
  swift_beginAccess();
  v32 = *(v5 + v31);
  if (v32)
  {
    v33 = *(v32 + OBJC_IVAR___STKStickerAttributionInfo_adamID);
  }

  else
  {
    v33 = 0;
  }

  [a1 setAttributionAdamID_];

  v34 = *(v5 + v31);
  if (v34 && (v35 = (v34 + OBJC_IVAR___STKStickerAttributionInfo_name), v35[1]))
  {
    v36 = *v35;
    v37 = v35[1];

    v38 = sub_1B8A23EF4();
  }

  else
  {
    v38 = 0;
  }

  [a1 setAttributionName_];

  v39 = *(v5 + v31);
  if (v39 && (v40 = (v39 + OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier), swift_beginAccess(), v40[1]))
  {
    v41 = *v40;

    v42 = sub_1B8A23EF4();
  }

  else
  {
    v42 = 0;
  }

  [a1 setAttributionBundleIdentifier_];

  v43 = OBJC_IVAR___STKSticker_creationDate;
  swift_beginAccess();
  [a1 setCreationDate_];
  v44 = OBJC_IVAR___STKSticker_lastUsedDate;
  swift_beginAccess();
  [a1 setLastUsedDate_];
  v45 = OBJC_IVAR___STKSticker_libraryIndex;
  swift_beginAccess();
  [a1 setLibraryIndex_];
  if (qword_1EBA91590 != -1)
  {
    goto LABEL_74;
  }

LABEL_26:
  v46 = qword_1EBA91598 + OBJC_IVAR____TtC8Stickers10Versioning_currentStickerVersionOverride;
  swift_beginAccess();
  if (*(v46 + 8))
  {
    v47 = 1;
  }

  else
  {
    v47 = *v46;
  }

  if (v47 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_76;
  }

  if (v47 > 0x7FFFFFFF)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  [a1 setVersion_];
  v48 = (v5 + OBJC_IVAR___STKSticker_searchText);
  swift_beginAccess();
  if (v48[1])
  {
    v49 = *v48;

    v50 = sub_1B8A23EF4();
  }

  else
  {
    v50 = 0;
  }

  [a1 setSearchText_];

  v51 = (v5 + OBJC_IVAR___STKSticker_sanitizedPrompt);
  swift_beginAccess();
  if (v51[1])
  {
    v52 = *v51;

    v53 = sub_1B8A23EF4();
  }

  else
  {
    v53 = 0;
  }

  [a1 setSanitizedPrompt_];

  v54 = (v5 + OBJC_IVAR___STKSticker_rewrittenPrompt);
  swift_beginAccess();
  if (v54[1])
  {
    v55 = *v54;

    v56 = sub_1B8A23EF4();
  }

  else
  {
    v56 = 0;
  }

  [a1 setRewrittenPrompt_];

  v57 = (v5 + OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier);
  swift_beginAccess();
  if (v57[1])
  {
    v58 = *v57;

    v59 = sub_1B8A23EF4();
  }

  else
  {
    v59 = 0;
  }

  [a1 setPromptPrimaryLanguageIdentifier_];

  v149 = a1;
  v60 = [a1 representations];
  v61 = [v60 allObjects];

  v62 = sub_1B8A240F4();
  v3 = sub_1B89F2600(v62);

  v4 = sub_1B89F4A3C(MEMORY[0x1E69E7CC0]);
  a1 = (v3 & 0xFFFFFFFFFFFFFF8);
  if (v3 >> 62)
  {
LABEL_77:
    v63 = sub_1B8A24554();
    if (!v63)
    {
      goto LABEL_78;
    }

    goto LABEL_45;
  }

  v63 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v63)
  {
    goto LABEL_78;
  }

LABEL_45:
  v64 = 0;
  v146 = (v148 + 8);
  v147 = (v148 + 16);
  do
  {
    v65 = v64;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v66 = MEMORY[0x1B8CC44E0](v65, v3);
      }

      else
      {
        if (v65 >= a1[2])
        {
          goto LABEL_69;
        }

        v66 = *(v3 + 8 * v65 + 32);
      }

      v67 = v66;
      v64 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v68 = [v66 identifier];
      if (v68)
      {
        break;
      }

      ++v65;
      if (v64 == v63)
      {
        goto LABEL_78;
      }
    }

    v144 = v5;
    v69 = v150;
    v70 = v68;
    sub_1B8A238D4();

    v71 = v152;
    v143 = *v147;
    v143(v152, v69, v151);
    v145 = v67;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v158 = v4;
    v74 = sub_1B8A0DF10(v71);
    v75 = v4[2];
    v76 = (v73 & 1) == 0;
    v77 = v75 + v76;
    if (__OFADD__(v75, v76))
    {
      goto LABEL_145;
    }

    if (v4[3] >= v77)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v4 = v158;
        if (v73)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v94 = v73;
        sub_1B89F4108();
        v4 = v158;
        if (v94)
        {
          goto LABEL_63;
        }
      }

LABEL_59:
      v4[(v74 >> 6) + 8] |= 1 << v74;
      v82 = v148;
      v83 = v151;
      v143(v4[6] + *(v148 + 72) * v74, v152, v151);
      v84 = v145;
      *(v4[7] + 8 * v74) = v145;

      v85 = *(v82 + 8);
      v85(v152, v83);
      v85(v150, v83);
      v86 = v4[2];
      v87 = __OFADD__(v86, 1);
      v88 = v86 + 1;
      if (!v87)
      {
        v4[2] = v88;
        goto LABEL_64;
      }

      goto LABEL_146;
    }

    v78 = v73;
    sub_1B89F3D2C(v77, isUniquelyReferenced_nonNull_native);
    v79 = sub_1B8A0DF10(v152);
    if ((v78 & 1) != (v80 & 1))
    {
      goto LABEL_147;
    }

    v74 = v79;
    v81 = v78;
    v4 = v158;
    if ((v81 & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_63:
    v89 = v4[7];
    v90 = *(v89 + 8 * v74);
    v91 = v145;
    *(v89 + 8 * v74) = v145;

    v92 = *v146;
    v93 = v151;
    (*v146)(v152, v151);
    v92(v150, v93);
LABEL_64:
    v5 = v144;
  }

  while (v64 != v63);
LABEL_78:

  sub_1B89F28A4(v95);
  v157 = v96;
  v156 = MEMORY[0x1E69E7CC0];
  v97 = OBJC_IVAR___STKSticker_representations;
  swift_beginAccess();
  v98 = *(v5 + v97);
  if (!(v98 >> 62))
  {
    v99 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v99)
    {
      goto LABEL_80;
    }

LABEL_96:
    v110 = MEMORY[0x1E69E7CC0];
LABEL_97:

    v112 = v157;
    v151 = v157;
    if ((v157 & 0xC000000000000001) != 0)
    {
      v113 = v153;

      sub_1B8A24514();
      type metadata accessor for ManagedRepresentation();
      sub_1B89F6794(&qword_1EBA91300, type metadata accessor for ManagedRepresentation);
      sub_1B8A241F4();
      v112 = v158;
      v114 = v159;
      v115 = v160;
      v116 = v161;
      v117 = v162;
    }

    else
    {
      v118 = -1 << *(v157 + 32);
      v114 = v157 + 56;
      v115 = ~v118;
      v119 = -v118;
      if (v119 < 64)
      {
        v120 = ~(-1 << v119);
      }

      else
      {
        v120 = -1;
      }

      v117 = v120 & *(v157 + 56);
      v121 = v153;

      v116 = 0;
    }

    v152 = v115;
    v122 = (v115 + 64) >> 6;
    if ((v112 & 0x8000000000000000) == 0)
    {
      goto LABEL_107;
    }

LABEL_104:
    v123 = sub_1B8A24584();
    if (v123)
    {
      v154 = v123;
      type metadata accessor for ManagedRepresentation();
      swift_dynamicCast();
      v124 = v155;
      v125 = v116;
      v126 = v117;
      if (v155)
      {
        while (1)
        {
          [v153 deleteObject_];

          v116 = v125;
          v117 = v126;
          if (v112 < 0)
          {
            goto LABEL_104;
          }

LABEL_107:
          v127 = v116;
          v128 = v117;
          v125 = v116;
          if (!v117)
          {
            break;
          }

LABEL_111:
          v126 = (v128 - 1) & v128;
          v124 = *(*(v112 + 48) + ((v125 << 9) | (8 * __clz(__rbit64(v128)))));
          if (!v124)
          {
            goto LABEL_114;
          }
        }

        while (1)
        {
          v125 = v127 + 1;
          if (__OFADD__(v127, 1))
          {
            __break(1u);
            goto LABEL_139;
          }

          if (v125 >= v122)
          {
            break;
          }

          v128 = *(v114 + 8 * v125);
          ++v127;
          if (v128)
          {
            goto LABEL_111;
          }
        }
      }
    }

LABEL_114:
    v129 = v153;

    sub_1B89F678C();
    v153 = (v110 >> 62);
    if (v110 >> 62)
    {
      goto LABEL_143;
    }

    for (i = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
    {
      swift_bridgeObjectRetain_n();
      if (i)
      {
        v131 = 0;
        while (1)
        {
          if ((v110 & 0xC000000000000001) != 0)
          {
            v132 = MEMORY[0x1B8CC44E0](v131, v110);
          }

          else
          {
            if (v131 >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_140;
            }

            v132 = *(v110 + 8 * v131 + 32);
          }

          v133 = v132;
          if (v131 == 0x80000000)
          {
            break;
          }

          [v132 setIndex_];

          if (i == ++v131)
          {
            goto LABEL_125;
          }
        }

LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
      }

      else
      {
LABEL_125:

        if (v153)
        {
          v134 = sub_1B8A24554();
          v135 = v149;
          if (!v134)
          {
LABEL_137:

            sub_1B89F26D8(v110);

            v140 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
            v141 = sub_1B8A240E4();

            v142 = [v140 initWithArray_];

            [v135 setRepresentations_];
            return;
          }
        }

        else
        {
          v134 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v135 = v149;
          if (!v134)
          {
            goto LABEL_137;
          }
        }

        v136 = 0;
        while (1)
        {
          if ((v110 & 0xC000000000000001) != 0)
          {
            v137 = MEMORY[0x1B8CC44E0](v136, v110);
          }

          else
          {
            if (v136 >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_142;
            }

            v137 = *(v110 + 8 * v136 + 32);
          }

          v138 = v137;
          v139 = v136 + 1;
          if (__OFADD__(v136, 1))
          {
            break;
          }

          [v137 setSticker_];

          ++v136;
          if (v139 == v134)
          {
            goto LABEL_137;
          }
        }
      }

      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      ;
    }
  }

  if (v98 < 0)
  {
    v111 = *(v5 + v97);
  }

  v99 = sub_1B8A24554();
  if (!v99)
  {
    goto LABEL_96;
  }

LABEL_80:
  if (v99 >= 1)
  {

    for (j = 0; j != v99; ++j)
    {
      if ((v98 & 0xC000000000000001) != 0)
      {
        v101 = MEMORY[0x1B8CC44E0](j, v98);
      }

      else
      {
        v101 = *(v98 + 8 * j + 32);
      }

      v102 = v101;
      if (v4[2] && (v103 = sub_1B8A0DF10(v101 + OBJC_IVAR___STKStickerRepresentation_identifier), (v104 & 1) != 0))
      {
        v105 = *(v4[7] + 8 * v103);

        v106 = v105;
      }

      else
      {
        type metadata accessor for ManagedRepresentation();
        v107 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v106 = [v107 initWithContext_];
        v105 = v106;
      }

      sub_1B89F29E8(v106);
      v108 = v105;
      MEMORY[0x1B8CC3F50]();
      if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v109 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1B8A24114();
      }

      sub_1B8A24134();
    }

    v110 = v156;

    goto LABEL_97;
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  sub_1B8A249A4();
  __break(1u);
}

uint64_t sub_1B89EFB98(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B89B5D00(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1B89F2CBC(v6);
  return sub_1B8A246C4();
}

uint64_t sub_1B89EFC14()
{
  v0 = sub_1B8A23BC4();
  __swift_allocate_value_buffer(v0, qword_1EBA95F20);
  __swift_project_value_buffer(v0, qword_1EBA95F20);
  return sub_1B8A23BB4();
}

uint64_t sub_1B89EFC8C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for CoreDataDataMapper.StoreType(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StickerContainer(0);
  v11 = (v10 - 8);
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B89AD0CC(a1, v3 + OBJC_IVAR____TtC8Stickers18CoreDataDataMapper_storeType, type metadata accessor for CoreDataDataMapper.StoreType);
  sub_1B89AD0CC(a1, v9, type metadata accessor for CoreDataDataMapper.StoreType);
  sub_1B89B8174(v9, a2, v14);
  v15 = v3 + OBJC_IVAR____TtC8Stickers18CoreDataDataMapper_container;
  sub_1B89ACED0(v14, v3 + OBJC_IVAR____TtC8Stickers18CoreDataDataMapper_container);
  swift_beginAccess();
  v16 = *(v15 + v11[7]);
  [v16 lock];
  type metadata accessor for StickerContainer.LoadMethod();
  swift_initStackObject();
  sub_1B89BD1D8(v15, *(v15 + v11[8]), &v23);
  v17 = v24;
  v18 = v15 + v11[9];
  v19 = *v18;
  v20 = *(v18 + 8);
  v21 = *(v18 + 16);
  *v18 = v23;
  *(v18 + 16) = v17;
  sub_1B89AF128(v19, v20, v21);
  [v16 unlock];
  swift_endAccess();
  sub_1B89AF208(a1, type metadata accessor for CoreDataDataMapper.StoreType);
  return v3;
}

uint64_t sub_1B89EFE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v7 = a6();
  sub_1B89A9028(a4);

  return v7;
}

void sub_1B89EFEC8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;

  v12 = a4;
  v13 = v6;
  sub_1B89F0F94(a3, v12, a5);
  if (!v6)
  {
    goto LABEL_13;
  }

  v40 = v6;
  v14 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
  sub_1B89F66BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v15 = v39;
  if (!sub_1B89EE954())
  {

LABEL_11:
    swift_willThrow();
LABEL_13:

    goto LABEL_14;
  }

  if (a1 <= 0)
  {
    sub_1B89C353C();
    swift_allocError();
    *v25 = 6;
    swift_willThrow();

    goto LABEL_13;
  }

  if (qword_1EBA913F0 != -1)
  {
    swift_once();
  }

  v16 = sub_1B8A23BC4();
  __swift_project_value_buffer(v16, qword_1EBA95F20);
  v17 = v39;
  v18 = sub_1B8A23BA4();
  v19 = sub_1B8A24234();
  v34 = v17;

  log = v18;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v34;
    *v21 = v34;
    v22 = v34;
    _os_log_impl(&dword_1B89A7000, log, v19, "Database is corrupted, attempting recovery after %@", v20, 0xCu);
    sub_1B89A8A78(v21, &qword_1EBA919E0, &qword_1B8A262D0);
    MEMORY[0x1B8CC5170](v21, -1, -1);
    MEMORY[0x1B8CC5170](v20, -1, -1);
  }

  v23 = a2 + OBJC_IVAR____TtC8Stickers18CoreDataDataMapper_container;
  swift_beginAccess();
  v24 = sub_1B89BBFAC();
  if (v24)
  {
    v33 = type metadata accessor for StickerContainer(0);
    loga = *(v23 + v33[5]);
    [loga lock];
    type metadata accessor for StickerContainer.LoadMethod();
    swift_initStackObject();
    sub_1B89BD1D8(v23, *(v23 + v33[6]), &v37);
    v26 = v38;
    v27 = v23 + v33[7];
    v28 = *v27;
    v29 = *(v27 + 8);
    v30 = *(v27 + 16);
    *v27 = v37;
    *(v27 + 16) = v26;
    sub_1B89AF128(v28, v29, v30);
    [loga unlock];
  }

  swift_endAccess();
  v31 = a1 - 1;

  v32 = v12;
  sub_1B89EFEC8(v31, a2, a3, v32, a5);

LABEL_14:
}

uint64_t sub_1B89F0274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_1B89F0B28(a3, a4, a5);
  if (!v5)
  {
    goto LABEL_17;
  }

  v36 = v5;
  v11 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
  sub_1B89F66BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:

    swift_willThrow();
    goto LABEL_17;
  }

  v12 = v35;
  if (!sub_1B89EE954())
  {

    goto LABEL_11;
  }

  if (a1 <= 0)
  {
    sub_1B89C353C();
    swift_allocError();
    *v22 = 6;
    swift_willThrow();
  }

  else
  {
    if (qword_1EBA913F0 != -1)
    {
      swift_once();
    }

    v13 = sub_1B8A23BC4();
    __swift_project_value_buffer(v13, qword_1EBA95F20);
    v14 = v35;
    v15 = sub_1B8A23BA4();
    v16 = sub_1B8A24234();
    v30 = v14;

    log = v15;
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v30;
      *v18 = v30;
      v19 = v30;
      _os_log_impl(&dword_1B89A7000, log, v16, "Database is corrupted, attempting recovery after %@", v17, 0xCu);
      sub_1B89A8A78(v18, &qword_1EBA919E0, &qword_1B8A262D0);
      MEMORY[0x1B8CC5170](v18, -1, -1);
      MEMORY[0x1B8CC5170](v17, -1, -1);
    }

    v20 = a2 + OBJC_IVAR____TtC8Stickers18CoreDataDataMapper_container;
    swift_beginAccess();
    v21 = sub_1B89BBFAC();
    if (v21)
    {
      v29 = type metadata accessor for StickerContainer(0);
      loga = *(v20 + v29[5]);
      [loga lock];
      type metadata accessor for StickerContainer.LoadMethod();
      swift_initStackObject();
      sub_1B89BD1D8(v20, *(v20 + v29[6]), &v33);
      v23 = v34;
      v24 = v20 + v29[7];
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      *v24 = v33;
      *(v24 + 16) = v23;
      sub_1B89AF128(v25, v26, v27);
      [loga unlock];
    }

    swift_endAccess();

    sub_1B89F0274(a1 - 1, a2, a3, a4, a5);
  }

LABEL_17:
}

uint64_t sub_1B89F060C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_1B89F468C();

  return v5;
}

uint64_t sub_1B89F0658(void *a1)
{
  v3 = *v1;

  v4 = a1;
  v5 = sub_1B89F468C(1, v1, v1, v4, v3);

  return v5;
}

uint64_t sub_1B89F06F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for StickerContainer(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC8Stickers18CoreDataDataMapper_container;
  swift_beginAccess();
  sub_1B89AD0CC(a1 + v13, v12, type metadata accessor for StickerContainer);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = a2;
  v16 = sub_1B89B9D38(sub_1B89F67F8, v14);
  if (v4)
  {
    sub_1B89AF208(v12, type metadata accessor for StickerContainer);
  }

  else
  {
    v18 = v16;

    *a4 = v18;
    return sub_1B89AF208(v12, type metadata accessor for StickerContainer);
  }
}

uint64_t sub_1B89F0864@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B8A23BC4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBA913F0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, qword_1EBA95F20);
  (*(v8 + 16))(v11, v12, v7);
  v13 = _s14descr1F373DB19C3AddCMa();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v16[2] = a1;
  (*(v8 + 32))(v16 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper15ExtractedMethod_logger, v11, v7);
  v17 = a1;
  sub_1B89CCDE8();
  if (v3)
  {
  }

  v24 = a3;
  type metadata accessor for ManagedSticker();
  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  sub_1B89EEAE8(v18, v17);

  sub_1B89CD138();
  v19 = a2;

  swift_setDeallocating();
  (*(v8 + 8))(v16 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper15ExtractedMethod_logger, v7);
  v20 = *(*v16 + 48);
  v21 = *(*v16 + 52);
  result = swift_deallocClassInstance();
  *v24 = v19;
  return result;
}

uint64_t sub_1B89F0AB8(uint64_t a1)
{
  v3 = *v1;

  return sub_1B89F0274(1, v1, v1, a1, v3);
}

uint64_t sub_1B89F0B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StickerContainer(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8Stickers18CoreDataDataMapper_container;
  swift_beginAccess();
  sub_1B89AD0CC(a1 + v10, v9, type metadata accessor for StickerContainer);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;

  sub_1B89BA7B8(sub_1B89F67DC, v11);
  sub_1B89AF208(v9, type metadata accessor for StickerContainer);
}

uint64_t sub_1B89F0C70(void *a1, uint64_t a2)
{
  v29 = a1;
  v30 = a2;
  v2 = sub_1B8A23BC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v27 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - v11;
  if (qword_1EBA913F0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v2, qword_1EBA95F20);
  v14 = *(v3 + 16);
  v14(v12, v13, v2);
  v15 = _s14descr1F373DB19C6RemoveCMa();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v28 = v12;
  v19 = v18;
  v14(v10, v13, v2);
  v14(v7, v10, v2);
  sub_1B8A23B24();
  v20 = *(v3 + 8);
  v20(v10, v2);
  v21 = v28;
  v22 = v29;
  v19[2] = v29;
  (*(v3 + 32))(v19 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper15ExtractedMethod_logger, v21, v2);
  v23 = v22;
  sub_1B8A1ABC4(v30);
  swift_setDeallocating();

  v20(v19 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper15ExtractedMethod_logger, v2);
  sub_1B89AF208(v19 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper6Remove_signposter, type metadata accessor for StickerSignposter);
  v24 = *(*v19 + 12);
  v25 = *(*v19 + 26);
  return swift_deallocClassInstance();
}

void sub_1B89F0F20(void *a1)
{
  v3 = *v1;

  sub_1B89EFEC8(1, v1, v1, a1, v3);
}

uint64_t sub_1B89F0F94(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for StickerContainer(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8Stickers18CoreDataDataMapper_container;
  swift_beginAccess();
  sub_1B89AD0CC(a1 + v10, v9, type metadata accessor for StickerContainer);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = a2;
  sub_1B89BA7B8(sub_1B89F6770, v11);
  sub_1B89AF208(v9, type metadata accessor for StickerContainer);
}

void sub_1B89F10D8(void *a1, uint64_t a2)
{
  v5 = sub_1B8A23BC4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBA913F0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_1EBA95F20);
  (*(v6 + 16))(v9, v10, v5);
  updated = _s14descr1F373DB19C6UpdateCMa();
  v12 = *(updated + 48);
  v13 = *(updated + 52);
  v14 = swift_allocObject();
  v14[2] = a1;
  (*(v6 + 32))(v14 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper15ExtractedMethod_logger, v9, v5);
  v15 = OBJC_IVAR___STKSticker_identifier;
  v16 = a1;
  v17 = sub_1B8A1FA3C(a2 + v15);
  if (v2)
  {
  }

  else
  {
    v18 = v17;
    sub_1B89EEAE8(v17, v16);
    sub_1B8A1FFB4();

    swift_setDeallocating();
    (*(v6 + 8))(v14 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper15ExtractedMethod_logger, v5);
    v19 = *(*v14 + 48);
    v20 = *(*v14 + 52);
    swift_deallocClassInstance();
  }
}

uint64_t sub_1B89F1310(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for StickerContainer(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8Stickers18CoreDataDataMapper_container;
  swift_beginAccess();
  sub_1B89AD0CC(v2 + v9, v8, type metadata accessor for StickerContainer);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1B89F6728;
  *(v11 + 24) = v10;
  v12 = a1;
  sub_1B89B92B8(sub_1B89F6730, v11);

  return sub_1B89AF208(v8, type metadata accessor for StickerContainer);
}

uint64_t sub_1B89F1490(void *a1, void *a2)
{
  v24 = a1;
  v25 = a2;
  v2 = sub_1B8A23BC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v24 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  if (qword_1EBA913F0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v2, qword_1EBA95F20);
  v14 = *(v3 + 16);
  v14(v12, v13, v2);
  v15 = _s14descr1F373DB19C5TouchCMa();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v14(v10, v13, v2);
  v14(v7, v10, v2);
  sub_1B8A23B24();
  v19 = *(v3 + 8);
  v19(v10, v2);
  (*(v3 + 32))(v18 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper15ExtractedMethod_logger, v12, v2);
  v20 = v24;
  sub_1B89C3E3C(v25);

  swift_setDeallocating();
  v19((v18 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper15ExtractedMethod_logger), v2);
  sub_1B89AF208(v18 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper5Touch_signposter, type metadata accessor for StickerSignposter);
  v21 = *(*v18 + 48);
  v22 = *(*v18 + 52);
  return swift_deallocClassInstance();
}

size_t sub_1B89F172C()
{
  v36 = *v0;
  v35 = sub_1B8A23904();
  v1 = *(v35 - 1);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v35);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v32 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1B8CC3470](KeyPath, 1);
  sub_1B89AADD4(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B8A26260;
  v13 = swift_getKeyPath();
  MEMORY[0x1B8CC3470](v13, 1);
  swift_setDeallocating();
  (*(v7 + 8))(v10 + v9, v6);
  swift_deallocClassInstance();
  LOBYTE(rawValue) = 1;
  v38 = 0;
  v39[0] = 1;
  v40 = xmmword_1B8A28110;
  v42 = 0;
  v43 = 0;
  v41 = v12;
  v44 = 1;
  v45 = 8;
  v46 = 0;

  sub_1B89A8FB4(v39, &rawValue);
  v14 = sub_1B89B1AD0(1, v0, v0, v39, v36);
  sub_1B89A9028(v39);

  v15 = v35;
  v16 = v34;
  if (v14 >> 62)
  {
    v17 = sub_1B8A24554();
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_16:

    v19._rawValue = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_16;
  }

LABEL_3:
  rawValue = MEMORY[0x1E69E7CC0];
  result = sub_1B8A0396C(0, v17 & ~(v17 >> 63), 0);
  if (v17 < 0)
  {
    __break(1u);
    return result;
  }

  v19._rawValue = rawValue;
  v20 = v14;
  v21 = v33;
  v36 = v14;
  if ((v14 & 0xC000000000000001) != 0)
  {
    v22 = 0;
    v35 = (v1 + 32);
    do
    {
      v23 = MEMORY[0x1B8CC44E0](v22, v20);
      (*(v1 + 16))(v16, v23 + OBJC_IVAR___STKSticker_identifier, v15);
      swift_unknownObjectRelease();
      rawValue = v19._rawValue;
      v24 = v15;
      v25 = v16;
      v27 = *(v19._rawValue + 2);
      v26 = *(v19._rawValue + 3);
      if (v27 >= v26 >> 1)
      {
        sub_1B8A0396C(v26 > 1, v27 + 1, 1);
        v19._rawValue = rawValue;
      }

      ++v22;
      *(v19._rawValue + 2) = v27 + 1;
      (*(v1 + 32))(v19._rawValue + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v27, v25, v24);
      v16 = v25;
      v15 = v24;
      v20 = v36;
    }

    while (v17 != v22);
  }

  else
  {
    v35 = *(v1 + 16);
    v28 = 32;
    do
    {
      (v35)(v21, *(v20 + v28) + OBJC_IVAR___STKSticker_identifier, v15);
      rawValue = v19._rawValue;
      v30 = *(v19._rawValue + 2);
      v29 = *(v19._rawValue + 3);
      if (v30 >= v29 >> 1)
      {
        sub_1B8A0396C(v29 > 1, v30 + 1, 1);
        v21 = v33;
        v19._rawValue = rawValue;
      }

      *(v19._rawValue + 2) = v30 + 1;
      (*(v1 + 32))(v19._rawValue + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v30, v21, v15);
      v28 += 8;
      --v17;
      v20 = v36;
    }

    while (v17);
  }

LABEL_17:
  if (qword_1EBA91388 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for StickerReindexer(0);
  __swift_project_value_buffer(v31, qword_1EBA91390);
  swift_beginAccess();
  StickerReindexer.reindexStickers(with:)(v19);
  swift_endAccess();
  sub_1B89A9028(v39);
}

uint64_t sub_1B89F1DE0()
{
  sub_1B89AF208(v0 + OBJC_IVAR____TtC8Stickers18CoreDataDataMapper_storeType, type metadata accessor for CoreDataDataMapper.StoreType);
  sub_1B89AF208(v0 + OBJC_IVAR____TtC8Stickers18CoreDataDataMapper_container, type metadata accessor for StickerContainer);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B89F1EA4()
{
  result = type metadata accessor for CoreDataDataMapper.StoreType(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for StickerContainer(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B89F2054()
{
  v1 = OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper15ExtractedMethod_logger;
  v2 = sub_1B8A23BC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_1B89F2120()
{
  result = sub_1B8A23BC4();
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

uint64_t sub_1B89F21E8()
{
  v0 = sub_1B8A23784();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1B89F2240(void **a1, unint64_t a2)
{
  v2 = a2;
  v3 = *a1;
  if (!*a1)
  {
    if (a2 >> 62)
    {
      goto LABEL_39;
    }

    v26 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_23;
    }

    return MEMORY[0x1E69E7CC0];
  }

  if (v3 == 1)
  {

    return v2;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    if (v3 != 2)
    {
      v42 = MEMORY[0x1E69E7CC0];
      if (a2 >> 62)
      {
        v5 = sub_1B8A24554();
      }

      else
      {
        v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v37 = v3;
      if (v5)
      {
        v33 = v3;
        v34 = v5;
        v6 = 0;
        v35 = v2 & 0xFFFFFFFFFFFFFF8;
        v36 = v2 & 0xC000000000000001;
        v7 = &unk_1EBA91F50;
        v8 = &unk_1B8A26500;
        while (1)
        {
          if (v36)
          {
            v9 = MEMORY[0x1B8CC44E0](v6, v2);
          }

          else
          {
            if (v6 >= *(v35 + 16))
            {
              goto LABEL_36;
            }

            v9 = *(v2 + 8 * v6 + 32);
          }

          v10 = v9;
          v11 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          v41[3] = type metadata accessor for ManagedRepresentation();
          v41[0] = v10;
          sub_1B89AF268(v41, v39, v7, v8);
          v12 = v40;
          if (v40)
          {
            v13 = __swift_project_boxed_opaque_existential_0(v39, v40);
            v38 = &v32;
            v14 = v8;
            v15 = v2;
            v16 = v7;
            v17 = *(v12 - 8);
            v18 = *(v17 + 64);
            MEMORY[0x1EEE9AC00](v13);
            v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v17 + 16))(v20);
            v21 = v10;
            v22 = sub_1B8A24944();
            (*(v17 + 8))(v20, v12);
            v7 = v16;
            v2 = v15;
            v8 = v14;
            v5 = v34;
            __swift_destroy_boxed_opaque_existential_0(v39);
          }

          else
          {
            v23 = v10;
            v22 = 0;
          }

          v24 = [v37 evaluateWithObject_];
          swift_unknownObjectRelease();
          sub_1B89A8A78(v41, v7, v8);
          if (v24)
          {
            sub_1B8A246B4();
            v25 = *(v42 + 16);
            sub_1B8A246E4();
            sub_1B8A246F4();
            sub_1B8A246C4();
          }

          else
          {
          }

          ++v6;
          if (v11 == v5)
          {
            v4 = v42;
            v3 = v33;
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
        while (1)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          v26 = sub_1B8A24554();
          if (!v26)
          {
            return MEMORY[0x1E69E7CC0];
          }

LABEL_23:
          v27 = 0;
          v4 = MEMORY[0x1E69E7CC0];
          while (1)
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              v28 = MEMORY[0x1B8CC44E0](v27, v2);
            }

            else
            {
              if (v27 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_38;
              }

              v28 = *(v2 + 8 * v27 + 32);
            }

            v29 = v28;
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if ([v28 isPreferred])
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA921D0, &unk_1B8A281C0);
              v4 = swift_allocObject();
              *(v4 + 16) = xmmword_1B8A26280;
              *(v4 + 32) = v29;
              return v4;
            }

            ++v27;
            if (v30 == v26)
            {
              return v4;
            }
          }
        }
      }

LABEL_33:
      sub_1B89AADD4(v3);
    }
  }

  return v4;
}

uint64_t sub_1B89F2600(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    sub_1B8A246D4();
    v4 = a1 + 32;
    do
    {
      sub_1B89A9360(v4, &v6);
      type metadata accessor for ManagedRepresentation();
      swift_dynamicCast();
      sub_1B8A246B4();
      v5 = *(v7 + 16);
      sub_1B8A246E4();
      sub_1B8A246F4();
      sub_1B8A246C4();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

char *sub_1B89F26D8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1B8A24554();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1B89AB690(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1B8CC44E0](i, a1);
        type metadata accessor for ManagedRepresentation();
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1B89AB690((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1B89AB7C0(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for ManagedRepresentation();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1B89AB690((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1B89AB7C0(v12, (v3 + 32 * v11 + 32));
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

void sub_1B89F28A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for ManagedRepresentation();
  v4 = sub_1B89F6794(&qword_1EBA91300, type metadata accessor for ManagedRepresentation);
  v5 = 0;
  v12[1] = MEMORY[0x1B8CC4050](v2, v3, v4);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_1B8A0DFEC(v12, *(*(a1 + 56) + ((v10 << 9) | (8 * v11))));
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

id sub_1B89F29E8(void *a1)
{
  v2 = v1;
  v4 = sub_1B8A238B4();
  [a1 setIdentifier_];

  v5 = (v2 + OBJC_IVAR___STKStickerRepresentation_data);
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];
  sub_1B89B4A18(v7, v6);
  v8 = sub_1B8A237A4();
  sub_1B89AFC38(v7, v6);
  [a1 setData_];

  sub_1B8A23AB4();
  v9 = sub_1B8A23EF4();

  [a1 setUti_];

  v10 = OBJC_IVAR___STKStickerRepresentation_byteCount;
  swift_beginAccess();
  v11 = *(v2 + v10);
  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v11 <= 0x7FFFFFFF)
  {
    [a1 setByteCount_];
    v12 = v2 + OBJC_IVAR___STKStickerRepresentation_size;
    [a1 setSize:*(v2 + OBJC_IVAR___STKStickerRepresentation_size) w:?];
    [a1 setSize:*(v12 + 8) h:?];
    v13 = (v2 + OBJC_IVAR___STKStickerRepresentation_role);
    swift_beginAccess();
    v15 = *v13;
    v14 = v13[1];

    v16 = sub_1B8A23EF4();

    [a1 setRole_];

    v17 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
    swift_beginAccess();
    [a1 setIsPreferred_];
    if (qword_1EBA91590 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  swift_once();
LABEL_4:
  v18 = qword_1EBA91598 + OBJC_IVAR____TtC8Stickers10Versioning_currentStickerRepresentationVersionOverride;
  result = swift_beginAccess();
  if (*(v18 + 8))
  {
    v20 = 1;
  }

  else
  {
    v20 = *v18;
  }

  if (v20 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v20 <= 0x7FFFFFFF)
  {
    return [a1 setVersion_];
  }

  __break(1u);
  return result;
}

void sub_1B89F2CBC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B8A24924();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ManagedRepresentation();
        v6 = sub_1B8A24124();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1B89F2EB8(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1B89F2DC0(0, v2, 1, a1);
  }
}

void sub_1B89F2DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 index];
      v13 = [v11 index];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1B89F2EB8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1B89F3898(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        sub_1B89F3528((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_1B89F3898(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_1B89F380C(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 index];
      v104 = [v14 index];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 index];
        v7 = [v18 index];

        v21 = v20 < v7;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v106 < v104) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v106 < v104)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1B89DCDEC(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = sub_1B89DCDEC((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        sub_1B89F3528((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B89F3898(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_1B89F380C(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 index];
    v41 = [v39 index];

    if (v40 >= v41)
    {
LABEL_31:
      v7 = v107 + 1;
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
    }
  }

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
}

uint64_t sub_1B89F3528(char *__dst, void **a2, id *a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *--v26;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 index];
          v35 = [v33 index];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 index];
          v20 = [v18 index];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

uint64_t sub_1B89F380C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B89F3898(v3);
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

uint64_t sub_1B89F38AC(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_1B8A24594();

    if (v7)
    {
      v8 = sub_1B89F3A34();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for ManagedRepresentation();
  v11 = *(v3 + 40);
  v12 = sub_1B8A243F4();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_1B8A24404();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B8A0E45C();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_1B89F3B8C(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_1B89F3A34()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_1B8A24554();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1B8A0E9DC(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_1B8A243F4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for ManagedRepresentation();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_1B8A24404();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_1B89F3B8C(v9);
  result = sub_1B8A24404();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B89F3B8C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1B8A244E4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_1B8A243F4();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1B89F3D2C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1B8A23904();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91ED8, &qword_1B8A28210);
  v43 = a2;
  result = sub_1B8A24754();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_1B89F6794(&qword_1EBA91460, MEMORY[0x1E69695A8]);
      result = sub_1B8A23E94();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

char *sub_1B89F4108()
{
  v1 = v0;
  v32 = sub_1B8A23904();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91ED8, &qword_1B8A28210);
  v4 = *v0;
  v5 = sub_1B8A24744();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1B89F437C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8A23784();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CoreDataDataMapper.StoreType(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91EC0, &qword_1B8A28198);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1B89AD0CC(a1, &v24 - v16, type metadata accessor for CoreDataDataMapper.StoreType);
  sub_1B89AD0CC(a2, &v17[v18], type metadata accessor for CoreDataDataMapper.StoreType);
  v19 = *(v5 + 48);
  v20 = v19(v17, 2, v4);
  if (!v20)
  {
    sub_1B89AD0CC(v17, v12, type metadata accessor for CoreDataDataMapper.StoreType);
    if (!v19(&v17[v18], 2, v4))
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v21 = sub_1B8A23714();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      sub_1B89AF208(v17, type metadata accessor for CoreDataDataMapper.StoreType);
      return v21 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_9;
  }

  if (v20 == 1)
  {
    if (v19(&v17[v18], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v19(&v17[v18], 2, v4) != 2)
  {
LABEL_9:
    sub_1B89A8A78(v17, &qword_1EBA91EC0, &qword_1B8A28198);
    v21 = 0;
    return v21 & 1;
  }

  sub_1B89AF208(v17, type metadata accessor for CoreDataDataMapper.StoreType);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_1B89F468C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;

  v12 = a4;
  v13 = v6;
  sub_1B89F06F4(a3, v12, a5, &v43);
  if (!v6)
  {

    return v43;
  }

  v42 = v6;
  v14 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
  sub_1B89F66BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = v41;
  if (!sub_1B89EE954())
  {

LABEL_12:
    swift_willThrow();
LABEL_14:
  }

  if (a1 <= 0)
  {
    sub_1B89C353C();
    swift_allocError();
    *v26 = 6;
    swift_willThrow();

    goto LABEL_14;
  }

  if (qword_1EBA913F0 != -1)
  {
    swift_once();
  }

  v16 = sub_1B8A23BC4();
  __swift_project_value_buffer(v16, qword_1EBA95F20);
  v17 = v41;
  v18 = sub_1B8A23BA4();
  v19 = sub_1B8A24234();

  log = v18;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v21 = v17;
    v22 = v17;
    _os_log_impl(&dword_1B89A7000, log, v19, "Database is corrupted, attempting recovery after %@", v20, 0xCu);
    sub_1B89A8A78(v21, &qword_1EBA919E0, &qword_1B8A262D0);
    MEMORY[0x1B8CC5170](v21, -1, -1);
    MEMORY[0x1B8CC5170](v20, -1, -1);
  }

  v23 = a2 + OBJC_IVAR____TtC8Stickers18CoreDataDataMapper_container;
  swift_beginAccess();
  v24 = sub_1B89BBFAC();
  if (v24)
  {
    loga = v17;
    v27 = type metadata accessor for StickerContainer(0);
    v36 = *(v23 + v27[5]);
    [v36 lock];
    type metadata accessor for StickerContainer.LoadMethod();
    swift_initStackObject();
    sub_1B89BD1D8(v23, *(v23 + v27[6]), &v39);
    v28 = v40;
    v29 = v27[7];
    v17 = loga;
    v30 = v23 + v29;
    v31 = *v30;
    v32 = *(v30 + 8);
    v33 = *(v30 + 16);
    *v30 = v39;
    *(v30 + 16) = v28;
    sub_1B89AF128(v31, v32, v33);
    [v36 unlock];
  }

  swift_endAccess();

  v34 = v12;
  v35 = sub_1B89F060C(a1 - 1, a2, a3, v34);

  return v35;
}

unint64_t sub_1B89F4A3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91EE0, &qword_1B8A28218);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91ED8, &qword_1B8A28210);
    v8 = sub_1B8A24764();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1B89AF268(v10, v6, &qword_1EBA91EE0, &qword_1B8A28218);
      result = sub_1B8A0DF10(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1B8A23904();
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B89F4C24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91EE8, &qword_1B8A28220);
    v3 = sub_1B8A24764();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1B8A0DE98(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1B89F4D38(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91EB8, &unk_1B8A28100);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v70 - v6;
  v8 = sub_1B8A23AD4();
  v84 = *(v8 - 8);
  v9 = *(v84 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v83 = &v70 - v13;
  v87 = sub_1B8A23904();
  v85 = *(v87 - 8);
  v14 = *(v85 + 64);
  v15 = MEMORY[0x1EEE9AC00](v87);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v70 - v18;
  v20 = a2[1];
  v21 = a2[2];
  v22 = a2[3];

  sub_1B89AADD4(v21);

  v23 = [a1 uti];
  if (!v23)
  {
    goto LABEL_10;
  }

  v24 = v23;
  v82 = sub_1B8A23F24();

  v25 = [a1 identifier];
  if (!v25)
  {
    goto LABEL_9;
  }

  v26 = v25;
  sub_1B8A238D4();

  v27 = [a1 data];
  if (!v27)
  {
    (*(v85 + 8))(v19, v87);
LABEL_9:

LABEL_10:
    sub_1B89F6668();
    swift_allocError();
    *v40 = 2;
    swift_willThrow();

    return;
  }

  v81 = v17;
  v28 = v8;
  v79 = v12;
  v29 = v27;
  v30 = sub_1B8A237C4();
  v32 = v31;

  v33 = [a1 role];
  if (!v33)
  {
    (*(v85 + 8))(v19, v87);

    sub_1B89AFC38(v30, v32);
    goto LABEL_10;
  }

  v80 = v30;
  v34 = v33;
  v76 = sub_1B8A23F24();
  v77 = v35;

  v36 = v32 >> 62;
  v78 = v32;
  if ((v32 >> 62) > 1)
  {
    v38 = v28;
    if (v36 != 2)
    {
      v39 = 0;
      goto LABEL_19;
    }

    v37 = *(v80 + 16);
    v41 = *(v80 + 24);
    v39 = v41 - v37;
    v42 = v81;
    if (!__OFSUB__(v41, v37))
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  else
  {
    v37 = v80;
    v38 = v28;
    if (!v36)
    {
      v39 = BYTE6(v32);
LABEL_19:
      v42 = v81;
      goto LABEL_20;
    }
  }

  v42 = v81;
  if (__OFSUB__(HIDWORD(v37), v37))
  {
    __break(1u);
    return;
  }

  v39 = HIDWORD(v37) - v37;
LABEL_20:
  v43 = [a1 byteCount];
  v44 = v79;
  if (v39 != v43)
  {

    sub_1B89F6668();
    swift_allocError();
    *v47 = 3;
    goto LABEL_24;
  }

  sub_1B8A23AE4();
  v45 = v84;
  if ((*(v84 + 48))(v7, 1, v38) == 1)
  {

    sub_1B89A8A78(v7, &qword_1EBA91EB8, &unk_1B8A28100);
    sub_1B89F6668();
    swift_allocError();
    *v46 = 1;
LABEL_24:
    swift_willThrow();

    sub_1B89AFC38(v80, v78);
    (*(v85 + 8))(v19, v87);
    return;
  }

  v48 = v38;
  v49 = v83;
  v50 = v48;
  (*(v45 + 32))();
  v51 = v45;
  v52 = *(v85 + 16);
  v75 = v85 + 16;
  v52(v42, v19, v87);
  v82 = *(v51 + 16);
  v72 = v51 + 16;
  v53 = v50;
  v82(v44, v49, v50);
  v74 = [a1 byteCount];
  [a1 size_w];
  v55 = v54;
  [a1 size_h];
  v57 = v56;
  v73 = [a1 isPreferred];
  v71 = [a1 version];
  v58 = type metadata accessor for Sticker.Representation();
  v59 = objc_allocWithZone(v58);
  v52(&v59[OBJC_IVAR___STKStickerRepresentation_identifier], v81, v87);
  v60 = &v59[OBJC_IVAR___STKStickerRepresentation_data];
  v61 = v80;
  v62 = v44;
  v63 = v78;
  *v60 = v80;
  v60[1] = v63;
  v82(&v59[OBJC_IVAR___STKStickerRepresentation_uti], v62, v53);
  *&v59[OBJC_IVAR___STKStickerRepresentation_byteCount] = v74;
  v64 = &v59[OBJC_IVAR___STKStickerRepresentation_size];
  *v64 = v55;
  v64[1] = v57;
  v65 = &v59[OBJC_IVAR___STKStickerRepresentation_role];
  v66 = v77;
  *v65 = v76;
  v65[1] = v66;
  v59[OBJC_IVAR___STKStickerRepresentation_isPreferred] = v73;
  *&v59[OBJC_IVAR___STKStickerRepresentation_version] = v71;
  sub_1B89B4A18(v61, v63);
  v86.receiver = v59;
  v86.super_class = v58;
  objc_msgSendSuper2(&v86, sel_init);

  sub_1B89AFC38(v61, v63);
  v67 = *(v84 + 8);
  v67(v62, v53);
  v68 = *(v85 + 8);
  v69 = v87;
  v68(v81, v87);
  v67(v83, v53);
  v68(v19, v69);
}

uint64_t sub_1B89F5480(void *a1, __int128 *a2)
{
  v4 = sub_1B8A23904();
  v227 = *(v4 - 8);
  v228 = v4;
  v5 = *(v227 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v195 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v195 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v195 - v13;
  v15 = a2[3];
  v243 = a2[2];
  v244 = v15;
  v245 = *(a2 + 64);
  v16 = a2[1];
  v241 = *a2;
  v242 = v16;
  v17 = [a1 type];
  v229 = v14;
  v226 = v7;
  if (v17)
  {
    if (v17 != 1)
    {
      sub_1B89A9028(&v241);
      sub_1B89F6668();
      v25 = swift_allocError();
      *v26 = 0;
      swift_willThrow();

      return v25;
    }

    v222 = 1;
  }

  else
  {
    v222 = 0;
  }

  v230 = a1;
  v18 = [a1 representations];
  v19 = [v18 allObjects];

  v20 = sub_1B8A240F4();
  v240 = MEMORY[0x1E69E7CC0];
  v21 = *(v20 + 16);
  v223 = v12;
  if (v21)
  {
    v22 = v20 + 32;
    v23 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B89A9360(v22, v238);
      sub_1B89AB7C0(v238, v237);
      type metadata accessor for ManagedRepresentation();
      if ((swift_dynamicCast() & 1) != 0 && v236)
      {
        MEMORY[0x1B8CC3F50]();
        if (*((v240 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v240 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v24 = *((v240 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1B8A24114();
        }

        sub_1B8A24134();
        v23 = v240;
      }

      v22 += 32;
      --v21;
    }

    while (v21);
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
  }

  *&v238[0] = MEMORY[0x1E69E7CC0];
  if (v23 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B8A24554())
  {
    v28 = 0;
    v232 = (v23 & 0xC000000000000001);
    v29 = v23 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v232)
      {
        v31 = MEMORY[0x1B8CC44E0](v28, v23);
      }

      else
      {
        if (v28 >= *(v29 + 16))
        {
          goto LABEL_34;
        }

        v31 = *(v23 + 8 * v28 + 32);
      }

      v32 = v31;
      v33 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v34 = v23;
      v35 = [v31 version];
      if (qword_1EBA91590 != -1)
      {
        swift_once();
      }

      v36 = qword_1EBA91598 + OBJC_IVAR____TtC8Stickers10Versioning_currentStickerRepresentationVersionOverride;
      swift_beginAccess();
      if (*(v36 + 8) == 1)
      {
        if (v35 >= 2)
        {
          goto LABEL_31;
        }
      }

      else if (*v36 < v35)
      {
LABEL_31:

        goto LABEL_20;
      }

      sub_1B8A246B4();
      v30 = *(*&v238[0] + 16);
      sub_1B8A246E4();
      sub_1B8A246F4();
      sub_1B8A246C4();
LABEL_20:
      v23 = v34;
      ++v28;
      if (v33 == i)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

LABEL_36:

  v37 = *&v238[0];
  if ((*&v238[0] & 0x8000000000000000) != 0 || (*&v238[0] & 0x4000000000000000) != 0)
  {
    goto LABEL_59;
  }

  v38 = *(*&v238[0] + 16);
  if (v38)
  {
LABEL_39:
    v39 = 0;
    v231 = v37;
    v232 = (v37 & 0xC000000000000001);
    v40 = 0x80000001B8A2A290;
    while (1)
    {
      if (v232)
      {
        v41 = MEMORY[0x1B8CC44E0](v39, v37);
      }

      else
      {
        if (v39 >= *(v37 + 16))
        {
          goto LABEL_58;
        }

        v41 = *(v37 + 8 * v39 + 32);
      }

      v42 = v41;
      v43 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        v38 = sub_1B8A24554();
        if (!v38)
        {
          goto LABEL_60;
        }

        goto LABEL_39;
      }

      v44 = [v41 role];
      if (!v44)
      {
        break;
      }

      v45 = v38;
      v46 = v40;
      v47 = v44;
      v48 = sub_1B8A23F24();
      v50 = v49;

      v40 = v46;
      if (v48 == 0xD000000000000020 && v46 == v50)
      {

        v38 = v45;
        v37 = v231;
      }

      else
      {
        v52 = sub_1B8A24954();

        v38 = v45;
        v37 = v231;
        if ((v52 & 1) == 0)
        {
          break;
        }
      }

      v53 = [v42 isPreferred];

      if (v53)
      {
        v221 = 1;
        goto LABEL_61;
      }

LABEL_41:
      ++v39;
      if (v43 == v38)
      {
        goto LABEL_60;
      }
    }

    goto LABEL_41;
  }

LABEL_60:
  v221 = 0;
LABEL_61:
  *&v238[0] = v242;
  sub_1B89A9148(v242);
  sub_1B89F2240(v238, v37);

  sub_1B89AADD4(*&v238[0]);

  *&v238[0] = sub_1B89CA00C(v54);
  v55 = v225;
  sub_1B89EFB98(v238);
  v232 = v55;
  if (!v55)
  {

    v56 = *&v238[0];
    if ((*&v238[0] & 0x8000000000000000) != 0 || (*&v238[0] & 0x4000000000000000) != 0)
    {
      goto LABEL_78;
    }

    v57 = *(*&v238[0] + 16);
    if (v57)
    {
      while (1)
      {
        v236 = MEMORY[0x1E69E7CC0];
        sub_1B8A246D4();
        if (v57 < 0)
        {
          break;
        }

        v58 = 0;
        while (1)
        {
          v59 = v58 + 1;
          if (__OFADD__(v58, 1))
          {
            break;
          }

          if ((v56 & 0xC000000000000001) != 0)
          {
            v60 = MEMORY[0x1B8CC44E0](v58, v56);
          }

          else
          {
            if (v58 >= *(v56 + 16))
            {
              goto LABEL_77;
            }

            v60 = *(v56 + 8 * v58 + 32);
          }

          v25 = v60;
          v238[2] = v243;
          v238[3] = v244;
          v239 = v245;
          v238[0] = v241;
          v238[1] = v242;
          sub_1B89A8FB4(&v241, v237);
          v61 = v232;
          sub_1B89F4D38(v25, v238);
          v232 = v61;
          if (v61)
          {

            sub_1B89A9028(&v241);

            return v25;
          }

          sub_1B8A246B4();
          v62 = v236[2];
          sub_1B8A246E4();
          sub_1B8A246F4();
          sub_1B8A246C4();
          ++v58;
          if (v59 == v57)
          {
            sub_1B89A9028(&v241);

            v63 = v236;
            goto LABEL_80;
          }
        }

        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        v57 = sub_1B8A24554();
        if (!v57)
        {
          goto LABEL_79;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_79:
      sub_1B89A9028(&v241);

      v63 = MEMORY[0x1E69E7CC0];
LABEL_80:
      v64 = v230;
      v65 = [v230 attributionName];
      if (v65 || (v65 = [v64 attributionAdamID]) != 0 || (v65 = objc_msgSend(v64, sel_attributionBundleIdentifier)) != 0)
      {

        v66 = v230;
        v67 = [v230 attributionAdamID];
        v68 = [v66 attributionBundleIdentifier];
        if (v68)
        {
          v69 = v68;
          v231 = sub_1B8A23F24();
          v71 = v70;
        }

        else
        {
          v231 = 0;
          v71 = 0;
        }

        v72 = [v66 attributionName];
        if (v72)
        {
          v73 = v72;
          v74 = sub_1B8A23F24();
          v76 = v75;
        }

        else
        {
          v74 = 0;
          v76 = 0;
        }

        v77 = type metadata accessor for Sticker.AttributionInfo();
        v78 = objc_allocWithZone(v77);
        v79 = &v78[OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier];
        *v79 = 0;
        v79[1] = 0;
        *&v78[OBJC_IVAR___STKStickerAttributionInfo_adamID] = v67;
        swift_beginAccess();
        *v79 = v231;
        v79[1] = v71;
        v80 = &v78[OBJC_IVAR___STKStickerAttributionInfo_name];
        *v80 = v74;
        v80[1] = v76;
        v233.receiver = v78;
        v233.super_class = v77;
        v220 = objc_msgSendSuper2(&v233, sel_init);
      }

      else
      {
        v220 = 0;
      }

      v81 = v230;
      v82 = [v230 identifier];
      v83 = v227;
      if (v82)
      {
        v84 = v229;
        v85 = v82;
        sub_1B8A238D4();

        v86 = 0;
      }

      else
      {
        v86 = 1;
        v84 = v229;
      }

      v87 = *(v83 + 56);
      v87(v84, v86, 1, v228);
      v88 = [v81 name];
      v89 = sub_1B8A23F24();
      v218 = v90;
      v219 = v89;

      v91 = sub_1B8A052DC([v81 effect]);
      if (v92)
      {
        v93 = 0;
      }

      else
      {
        v93 = v91;
      }

      v217 = v93;
      [v81 byteCount];
      v94 = [v81 metadata];
      if (v94)
      {
        v95 = v94;
        v231 = sub_1B8A237C4();
        v225 = v96;
      }

      else
      {
        v231 = 0;
        v225 = 0xF000000000000000;
      }

      v97 = [v81 externalURI];
      v98 = sub_1B8A23F24();
      v215 = v99;
      v216 = v98;

      v100 = [v81 accessibilityName];
      if (v100)
      {
        v101 = v100;
        v102 = sub_1B8A23F24();
        v213 = v103;
        v214 = v102;
      }

      else
      {
        v213 = 0;
        v214 = 0;
      }

      v104 = [v81 searchText];
      if (v104)
      {
        v105 = v104;
        v106 = sub_1B8A23F24();
        v209 = v107;
        v210 = v106;
      }

      else
      {
        v209 = 0;
        v210 = 0;
      }

      [v81 creationDate];
      v109 = v108;
      [v81 lastUsedDate];
      v111 = v110;
      [v81 libraryIndex];
      v113 = v112;
      v114 = [v81 sanitizedPrompt];
      if (v114)
      {
        v115 = v114;
        v116 = sub_1B8A23F24();
        v207 = v117;
        v208 = v116;
      }

      else
      {
        v207 = 0;
        v208 = 0;
      }

      v118 = [v81 rewrittenPrompt];
      if (v118)
      {
        v119 = v118;
        v120 = sub_1B8A23F24();
        v205 = v121;
        v206 = v120;
      }

      else
      {
        v205 = 0;
        v206 = 0;
      }

      v122 = [v81 promptPrimaryLanguageIdentifier];
      v123 = v63;
      if (v122)
      {
        v124 = v122;
        v125 = sub_1B8A23F24();
        v203 = v126;
        v204 = v125;
      }

      else
      {
        v203 = 0;
        v204 = 0;
      }

      v202 = type metadata accessor for Sticker(0);
      v127 = objc_allocWithZone(v202);
      v128 = &v127[OBJC_IVAR___STKSticker_accessibilityName];
      *v128 = 0;
      v128[1] = 0;
      v129 = &v127[OBJC_IVAR___STKSticker_searchText];
      *v129 = 0;
      v129[1] = 0;
      v197 = v129;
      v130 = &v127[OBJC_IVAR___STKSticker_sanitizedPrompt];
      *v130 = 0;
      v130[1] = 0;
      v199 = v130;
      v131 = &v127[OBJC_IVAR___STKSticker_rewrittenPrompt];
      *v131 = 0;
      v131[1] = 0;
      v200 = v131;
      v132 = &v127[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
      *v132 = 0;
      v132[1] = 0;
      v201 = v132;
      v133 = &v127[OBJC_IVAR___STKSticker_metadata];
      *&v127[OBJC_IVAR___STKSticker_metadata] = xmmword_1B8A26F80;
      v134 = &v127[OBJC_IVAR___STKSticker_externalURI];
      *v134 = 0;
      v134[1] = 0;
      v211 = v134;
      v212 = OBJC_IVAR___STKSticker_attributionInfo;
      *&v127[OBJC_IVAR___STKSticker_attributionInfo] = 0;
      v135 = v228;
      v87(&v127[OBJC_IVAR___STKSticker__companionRecentUUID], 1, 1, v228);
      v224 = v127;
      v198 = OBJC_IVAR___STKSticker_animatedVariantIsPreferred;
      v127[OBJC_IVAR___STKSticker_animatedVariantIsPreferred] = 2;
      v136 = v223;
      sub_1B89AF268(v229, v223, &unk_1EBA92220, &unk_1B8A281A0);
      v137 = v227;
      v138 = *(v227 + 48);
      if (v138(v136, 1, v135) == 1)
      {
        v196 = v133;
        v139 = v226;
        sub_1B8A238F4();
        v140 = v138(v136, 1, v135);
        v141 = v139;
        v133 = v196;
        if (v140 != 1)
        {
          sub_1B89A8A78(v136, &unk_1EBA92220, &unk_1B8A281A0);
        }
      }

      else
      {
        v141 = v226;
        (*(v137 + 32))(v226, v136, v135);
      }

      v142 = v224;
      v224[OBJC_IVAR___STKSticker_type] = v222;
      (*(v137 + 16))(&v142[OBJC_IVAR___STKSticker_identifier], v141, v135);
      v143 = v123;
      *&v142[OBJC_IVAR___STKSticker_representations] = v123;
      swift_beginAccess();
      v144 = v128[1];
      v145 = v213;
      *v128 = v214;
      v128[1] = v145;

      v146 = &v142[OBJC_IVAR___STKSticker_name];
      v147 = v218;
      *v146 = v219;
      v146[1] = v147;
      *&v142[OBJC_IVAR___STKSticker_effect] = v217;
      swift_beginAccess();
      v148 = v141;
      v149 = *v133;
      v150 = v133[1];
      v151 = v231;
      v152 = v225;
      *v133 = v231;
      v133[1] = v152;
      sub_1B89C3C44(v151, v152);
      sub_1B89B4A04(v149, v150);
      v153 = v211;
      swift_beginAccess();
      v154 = v153[1];
      v155 = v215;
      *v153 = v216;
      v153[1] = v155;

      v156 = v212;
      swift_beginAccess();
      v157 = *&v142[v156];
      v158 = v220;
      *&v142[v156] = v220;
      v159 = v158;

      v160 = v148;
      if (v123 >> 62)
      {
        goto LABEL_138;
      }

      v161 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v161)
      {
        goto LABEL_139;
      }

      while (1)
      {
        v235 = MEMORY[0x1E69E7CC0];
        sub_1B8A0394C(0, v161 & ~(v161 >> 63), 0);
        if (v161 < 0)
        {
          break;
        }

        v223 = v159;
        v162 = v235;
        v163 = v143;
        if ((v143 & 0xC000000000000001) != 0)
        {
          v164 = 0;
          v143 = &OBJC_IVAR___STKStickerRepresentation_byteCount;
          do
          {
            v165 = MEMORY[0x1B8CC44E0](v164, v163);
            v166 = OBJC_IVAR___STKStickerRepresentation_byteCount;
            swift_beginAccess();
            v167 = *(v165 + v166);
            swift_unknownObjectRelease();
            v235 = v162;
            v169 = v162[2];
            v168 = v162[3];
            if (v169 >= v168 >> 1)
            {
              sub_1B8A0394C((v168 > 1), v169 + 1, 1);
              v162 = v235;
            }

            ++v164;
            v162[2] = v169 + 1;
            v162[v169 + 4] = v167;
            v163 = v123;
          }

          while (v161 != v164);
        }

        else
        {
          v170 = 32;
          v143 = &OBJC_IVAR___STKStickerRepresentation_byteCount;
          do
          {
            v171 = *(v163 + v170);
            v172 = OBJC_IVAR___STKStickerRepresentation_byteCount;
            swift_beginAccess();
            v173 = *(v171 + v172);
            v235 = v162;
            v175 = v162[2];
            v174 = v162[3];
            if (v175 >= v174 >> 1)
            {
              sub_1B8A0394C((v174 > 1), v175 + 1, 1);
              v162 = v235;
            }

            v162[2] = v175 + 1;
            v162[v175 + 4] = v173;
            v170 += 8;
            --v161;
            v163 = v123;
          }

          while (v161);
        }

        v160 = v226;
        v159 = v223;
        v176 = v162[2];
        if (!v176)
        {
LABEL_140:
          v177 = 0;
LABEL_141:
          (*(v227 + 8))(v160, v228);

          v181 = v224;
          *&v224[OBJC_IVAR___STKSticker_byteCount] = v177;
          *&v181[OBJC_IVAR___STKSticker_creationDate] = v109;
          *&v181[OBJC_IVAR___STKSticker_lastUsedDate] = v111;
          *&v181[OBJC_IVAR___STKSticker_libraryIndex] = v113;
          v182 = v197;
          swift_beginAccess();
          v183 = v182[1];
          v184 = v209;
          *v182 = v210;
          v182[1] = v184;

          v185 = v199;
          swift_beginAccess();
          v186 = v185[1];
          v187 = v207;
          *v185 = v208;
          v185[1] = v187;

          v188 = v200;
          swift_beginAccess();
          v189 = v188[1];
          v190 = v205;
          *v188 = v206;
          v188[1] = v190;

          v191 = v201;
          swift_beginAccess();
          v192 = v191[1];
          v193 = v203;
          *v191 = v204;
          v191[1] = v193;

          v181[v198] = v221;
          v234.receiver = v181;
          v234.super_class = v202;
          v25 = objc_msgSendSuper2(&v234, sel_init);

          sub_1B89B4A04(v231, v225);
          sub_1B89A8A78(v229, &unk_1EBA92220, &unk_1B8A281A0);
          return v25;
        }

        while (1)
        {
          v177 = 0;
          v178 = v162 + 4;
          while (1)
          {
            v179 = *v178++;
            v180 = __OFADD__(v177, v179);
            v177 += v179;
            if (v180)
            {
              break;
            }

            if (!--v176)
            {
              goto LABEL_141;
            }
          }

          __break(1u);
LABEL_138:
          v161 = sub_1B8A24554();
          if (v161)
          {
            break;
          }

LABEL_139:

          v162 = MEMORY[0x1E69E7CC0];
          v176 = *(MEMORY[0x1E69E7CC0] + 16);
          if (!v176)
          {
            goto LABEL_140;
          }
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1B89F6668()
{
  result = qword_1EBA91EC8;
  if (!qword_1EBA91EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91EC8);
  }

  return result;
}

unint64_t sub_1B89F66BC()
{
  result = qword_1EBA91ED0;
  if (!qword_1EBA91ED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA91ED0);
  }

  return result;
}

uint64_t sub_1B89F6730@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = 0;
  return result;
}

uint64_t sub_1B89F6794(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s14descr1F373DB19C5FetchCMa()
{
  result = qword_1EBA915C8;
  if (!qword_1EBA915C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t XPCDataMapper.__allocating_init(proxier:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1B89D2F5C(a1, v2 + 16);
  return v2;
}

id sub_1B89F68D0(void *a1)
{
  v3 = v1;
  v30[0] = a1;
  v4 = sub_1B8A23654();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_1B8A23644();
  type metadata accessor for Sticker(0);
  sub_1B89B4E2C(&qword_1EBA911E0);
  v8 = sub_1B8A23634();
  if (v2)
  {

    sub_1B89F7804();
    swift_allocError();
    *v10 = xmmword_1B8A28250;
    *(v10 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v11 = v8;
    v12 = v9;
    v29 = 0;

    v14 = v3[5];
    v13 = v3[6];
    v7 = __swift_project_boxed_opaque_existential_0(v3 + 2, v14);
    v32 = &v29;
    MEMORY[0x1EEE9AC00](v7);
    v28[2] = v11;
    v28[3] = v12;
    v15 = *(v13 + 8);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91F08, &unk_1B8A28290);
    v17 = v29;
    v15(v30, sub_1B89F7864, v28, v16, v14, v13);
    if (v17)
    {
      sub_1B89AFC38(v11, v12);
    }

    else
    {
      v18 = v11;
      v19 = v30[0];
      v20 = v30[1];
      v21 = v31;
      if (v31)
      {
        v22 = v30[0];
        v30[0] = v19;
        v26 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
        swift_willThrowTypedImpl();
        sub_1B89AFC38(v18, v12);
        sub_1B89B4AA8(v19, v20, v21);
        sub_1B89F78A4(v19);
      }

      else
      {
        v23 = sub_1B8A23624();
        v24 = *(v23 + 48);
        v25 = *(v23 + 52);
        swift_allocObject();
        sub_1B8A23614();
        sub_1B89B4E2C(&qword_1EBA914E0);
        sub_1B8A23604();

        v7 = v30[0];
        sub_1B89AFC38(v18, v12);
        sub_1B89B4AA8(v19, v20, 0);
      }
    }
  }

  return v7;
}

void *sub_1B89F6BBC(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v4);
  v9[2] = a1;
  v6 = *(v5 + 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91F10, &qword_1B8A282A0);
  result = v6(&v10, sub_1B89F78B0, v9, v7, v4, v5);
  if (!v2 && (v11 & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_1B89F6CA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = -1;
  sub_1B8A23904();
  v5 = sub_1B8A240E4();
  v10[4] = sub_1B89F7C1C;
  v10[5] = v4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B89C4BE4;
  v10[3] = &block_descriptor_21;
  v6 = _Block_copy(v10);

  [a1 removeStickersWithIdentifiers:v5 withReply:v6];
  _Block_release(v6);

  swift_beginAccess();
  v7 = *(v4 + 16);
  *a2 = v7;
  v8 = *(v4 + 24);
  *(a2 + 8) = v8;
  sub_1B89ABE70(v7, v8);
}

void *sub_1B89F6E24()
{
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v2);
  v4 = *(v3 + 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91F10, &qword_1B8A282A0);
  result = v4(&v7, sub_1B89F6F04, 0, v5, v2, v3);
  if (!v1 && (v8 & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
    return swift_willThrowTypedImpl();
  }

  return result;
}

id sub_1B89F6F04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 reindexAllStickers];
  *a2 = 0;
  *(a2 + 8) = 0;
  return result;
}

void sub_1B89F6F64(void *a1, uint64_t a2)
{
  v24 = a1;
  v5 = sub_1B8A23654();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_1B8A23644();
  type metadata accessor for Sticker(0);
  sub_1B89B4E2C(&qword_1EBA911E0);
  v8 = sub_1B8A23634();
  if (v3)
  {

    sub_1B89F7804();
    swift_allocError();
    *v10 = xmmword_1B8A28250;
    *(v10 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v11 = v8;
    v12 = v9;
    v23 = 0;

    v13 = v2[5];
    v14 = v2[6];
    v15 = __swift_project_boxed_opaque_existential_0(v2 + 2, v13);
    v26 = &v22;
    MEMORY[0x1EEE9AC00](v15);
    v21[2] = v11;
    v21[3] = v12;
    v16 = *(v14 + 8);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91F10, &qword_1B8A282A0);
    v18 = v23;
    v16(&v24, a2, v21, v17, v13, v14);
    if (v18 || (v25 & 1) == 0)
    {
      sub_1B89AFC38(v11, v12);
    }

    else
    {
      v19 = v24;
      v20 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
      swift_willThrowTypedImpl();
      sub_1B89AFC38(v11, v12);
      sub_1B89AA414(v19, 1);
    }
  }
}

uint64_t sub_1B89F7194@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, SEL *a4@<X5>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = -1;
  v11 = sub_1B8A237A4();
  v16[4] = a2;
  v16[5] = v10;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1B89C4BE4;
  v16[3] = a3;
  v12 = _Block_copy(v16);

  [a1 *a4];
  _Block_release(v12);

  swift_beginAccess();
  v13 = *(v10 + 16);
  *a5 = v13;
  v14 = *(v10 + 24);
  *(a5 + 8) = v14;
  sub_1B89ABE70(v13, v14);
}

void sub_1B89F72DC(void *a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    v4 = *(a2 + 16);
    *(a2 + 16) = a1;
    v5 = *(a2 + 24);
    *(a2 + 24) = 1;
    v6 = a1;
    v7 = v4;
    v8 = v5;
  }

  else
  {
    swift_beginAccess();
    v7 = *(a2 + 16);
    *(a2 + 16) = 0;
    v8 = *(a2 + 24);
    *(a2 + 24) = 0;
  }

  sub_1B89AFC1C(v7, v8);
}

uint64_t XPCDataMapper.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

void *sub_1B89F748C()
{
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_0((*v0 + 16), v2);
  v4 = *(v3 + 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91F10, &qword_1B8A282A0);
  result = v4(&v7, sub_1B89F6F04, 0, v5, v2, v3);
  if (!v1 && (v8 & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t XPCDataMapperError.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (!*(v0 + 16))
  {
    sub_1B8A24634();

    MEMORY[0x1B8CC3E20](v1, v2);
    v3 = "' could not be encoded";
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    sub_1B8A24634();

    MEMORY[0x1B8CC3E20](v1, v2);
    v3 = "' could not be decoded";
LABEL_5:
    MEMORY[0x1B8CC3E20](0xD000000000000016, (v3 - 32) | 0x8000000000000000);
    return 0x6574656D61726150;
  }

  v5 = 0x2064696C61766E49;
  if (v1 ^ 2 | v2)
  {
    v6 = 0x6C706D6920746F4ELL;
  }

  else
  {
    v6 = 0xD000000000000019;
  }

  if (!(v1 | v2))
  {
    v5 = 0xD000000000000010;
  }

  if (v1 <= 1)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

id sub_1B89F7730(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

void sub_1B89F7784(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

unint64_t sub_1B89F7804()
{
  result = qword_1EBA91EF8;
  if (!qword_1EBA91EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91EF8);
  }

  return result;
}

void sub_1B89F7858(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1B89F7864@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1B89AFCCC(a1, sub_1B89B4910, &block_descriptor_27, &selRef_addSticker_withReply_, a2);
}

uint64_t sub_1B89F78B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1B89F7194(a1, sub_1B89F7C80, &block_descriptor_17, &selRef_updateSticker_withReply_, a2);
}

uint64_t sub_1B89F78F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1B89F7194(a1, sub_1B89F7C80, &block_descriptor_1, &selRef_touchStickerSpotlightItem_withReply_, a2);
}

uint64_t get_enum_tag_for_layout_string_8Stickers18XPCDataMapperErrorO(uint64_t a1)
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

uint64_t sub_1B89F7B40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1B89F7B88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1B89F7BCC(uint64_t result, unsigned int a2)
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

id ManagedRepresentation.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedRepresentation.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedRepresentation();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedRepresentation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedRepresentation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B89F7DF4(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for Sticker.Representation();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1B8CC44E0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1B8CC44E0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1B8A24404();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1B8A24404();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1B8A24554();
  }

  result = sub_1B8A24554();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}