uint64_t sub_1A4395AFC(uint64_t a1)
{
  v2 = sub_1A43971B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4395B38(uint64_t a1)
{
  v2 = sub_1A43971B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A4395B74()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1A4395B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A524EAB4();

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

uint64_t sub_1A4395C5C(uint64_t a1)
{
  v2 = sub_1A4397110();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4395C98(uint64_t a1)
{
  v2 = sub_1A4397110();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A4395CD4(uint64_t a1)
{
  v2 = sub_1A4397164();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4395D10(uint64_t a1)
{
  v2 = sub_1A4397164();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PhotosAppShelvesOverride.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1A439720C(0, &qword_1EB138DA8, sub_1A4397110, &type metadata for PhotosAppShelvesOverride.RepeatedShelfCodingKeys, MEMORY[0x1E69E6F58]);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v20 - v5;
  sub_1A439720C(0, &qword_1EB138DB0, sub_1A4397164, &type metadata for PhotosAppShelvesOverride.SingleShelfCodingKeys, v3);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  sub_1A439720C(0, &qword_1EB138DB8, sub_1A43971B8, &type metadata for PhotosAppShelvesOverride.CodingKeys, v3);
  v10 = v9;
  v29 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = *v1;
  v26 = v1[1];
  v27 = v13;
  v20 = v1[2];
  v14 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A43971B8();
  sub_1A524ED34();
  if (v14)
  {
    v33 = 1;
    sub_1A4397110();
    v15 = v23;
    sub_1A524E944();
    v32 = 0;
    v16 = v25;
    v17 = v28;
    sub_1A524E994();
    if (!v17)
    {
      v31 = 1;
      sub_1A524E9C4();
    }

    (*(v24 + 8))(v15, v16);
  }

  else
  {
    v30 = 0;
    sub_1A4397164();
    sub_1A524E944();
    v18 = v22;
    sub_1A524E994();
    (*(v21 + 8))(v8, v18);
  }

  return (*(v29 + 8))(v12, v10);
}

uint64_t PhotosAppShelvesOverride.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1A439720C(0, &qword_1EB138DC0, sub_1A4397110, &type metadata for PhotosAppShelvesOverride.RepeatedShelfCodingKeys, MEMORY[0x1E69E6F48]);
  v41 = v4;
  v39 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v36 - v5;
  sub_1A439720C(0, &qword_1EB138DC8, sub_1A4397164, &type metadata for PhotosAppShelvesOverride.SingleShelfCodingKeys, v3);
  v7 = v6;
  v38 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - v8;
  sub_1A439720C(0, &qword_1EB138DD0, sub_1A43971B8, &type metadata for PhotosAppShelvesOverride.CodingKeys, v3);
  v11 = v10;
  v43 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - v12;
  v14 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1A43971B8();
  v15 = v44;
  sub_1A524ED14();
  if (!v15)
  {
    v17 = v40;
    v16 = v41;
    v18 = v42;
    v19 = sub_1A524E924();
    if (*(v19 + 16) == 1)
    {
      v44 = v19;
      v46 = *(v19 + 32);
      if (v46)
      {
        v50 = 1;
        sub_1A4397110();
        v20 = v17;
        sub_1A524E844();
        v21 = v43;
        v49 = 0;
        v22 = sub_1A524E8A4();
        v37 = v23;
        v38 = v22;
        v48 = 1;
        v34 = sub_1A524E8D4();
        (*(v39 + 8))(v20, v16);
        (*(v21 + 8))(v13, v11);
        swift_unknownObjectRelease();
        v35 = v37;
      }

      else
      {
        v47 = 0;
        sub_1A4397164();
        v27 = v9;
        sub_1A524E844();
        v28 = v43;
        v30 = v7;
        v31 = sub_1A524E8A4();
        v32 = (v38 + 8);
        v35 = v33;
        v38 = v31;
        (*v32)(v27, v30);
        (*(v28 + 8))(v13, v11);
        swift_unknownObjectRelease();
        v34 = 0;
      }

      *v18 = v38;
      *(v18 + 8) = v35;
      *(v18 + 16) = v34;
      *(v18 + 24) = v46;
    }

    else
    {
      v24 = sub_1A524E4C4();
      swift_allocError();
      v26 = v25;
      sub_1A3FA0828();
      *v26 = &type metadata for PhotosAppShelvesOverride;
      sub_1A524E854();
      sub_1A524E4A4();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v43 + 8))(v13, v11);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v45);
}

uint64_t sub_1A439690C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1A4396924();
  }

  return result;
}

unint64_t sub_1A439692C()
{
  result = qword_1EB138D98;
  if (!qword_1EB138D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138D98);
  }

  return result;
}

void sub_1A4396980(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    sub_1A4396998();
  }
}

unint64_t sub_1A43969A0()
{
  result = qword_1EB138DA0;
  if (!qword_1EB138DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138DA0);
  }

  return result;
}

void _s12PhotosUICore0A18AppShelvesOverrideO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if (a1[3])
  {
    if (a2[3])
    {
      if (v3 != v5 || v2 != v4)
      {
        sub_1A524EAB4();
        sub_1A4396998();
      }

      sub_1A4396998();
    }
  }

  else if ((a2[3] & 1) == 0)
  {
    if (v3 != v5 || v2 != v4)
    {
      sub_1A524EAB4();
      sub_1A4396998();
    }

    sub_1A4396998();
  }

  sub_1A4396998();
}

uint64_t _s12PhotosUICore0A26AppTestLaunchConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5240E64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6968FB0];
  sub_1A3C4D23C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v32 - v10;
  sub_1A406C37C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 56);
  sub_1A439768C(a1, v14, &unk_1EB12B250, v8);
  sub_1A439768C(a2, &v14[v16], &unk_1EB12B250, v8);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) != 1)
  {
    sub_1A439768C(v14, v11, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    if (v17(&v14[v16], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v16], v4);
      sub_1A4397634();
      v18 = sub_1A524C594();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v11, v4);
      sub_1A3C688C0(v14, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
      if ((v18 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v5 + 8))(v11, v4);
LABEL_6:
    sub_1A43975D8(v14);
    return 0;
  }

  if (v17(&v14[v16], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1A3C688C0(v14, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
LABEL_8:
  v20 = *(type metadata accessor for PhotosAppTestLaunchConfiguration() + 20);
  v21 = a1 + v20;
  v23 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v24 = *(v21 + 16);
  v25 = *(v21 + 24);
  v26 = a2 + v20;
  v28 = *v26;
  v27 = *(v26 + 8);
  v29 = *(v26 + 16);
  v30 = *(v26 + 24);
  if (v25 == 255)
  {
    sub_1A4396980(v23, v22, *(v21 + 16), 255);
    if (v30 == 255)
    {
      sub_1A4396980(v28, v27, v29, 255);
      sub_1A439690C(v23, v22, v24, 255);
      return 1;
    }

    sub_1A4396980(v28, v27, v29, v30);
  }

  else
  {
    v34[0] = v23;
    v34[1] = v22;
    v34[2] = v24;
    v35 = v25;
    if (v30 != 255)
    {
      v32[0] = v28;
      v32[1] = v27;
      v32[2] = v29;
      v33 = v30 & 1;
      sub_1A4396980(v23, v22, v24, v25);
      sub_1A4396980(v28, v27, v29, v30);
      sub_1A4396980(v23, v22, v24, v25);
      _s12PhotosUICore0A18AppShelvesOverrideO2eeoiySbAC_ACtFZ_0(v34, v32);
    }

    sub_1A4396980(v23, v22, v24, v25);
    sub_1A4396980(v28, v27, v29, 255);
    sub_1A4396980(v23, v22, v24, v25);
    sub_1A4396924();
  }

  sub_1A439690C(v23, v22, v24, v25);
  sub_1A439690C(v28, v27, v29, v30);
  return 0;
}

unint64_t sub_1A4397110()
{
  result = qword_1EB1BB900;
  if (!qword_1EB1BB900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1BB900);
  }

  return result;
}

unint64_t sub_1A4397164()
{
  result = qword_1EB1BB908;
  if (!qword_1EB1BB908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1BB908);
  }

  return result;
}

unint64_t sub_1A43971B8()
{
  result = qword_1EB1BB910[0];
  if (!qword_1EB1BB910[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BB910);
  }

  return result;
}

void sub_1A439720C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1A43972C4()
{
  result = qword_1EB1BBC20[0];
  if (!qword_1EB1BBC20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BBC20);
  }

  return result;
}

unint64_t sub_1A439731C()
{
  result = qword_1EB1BBE30[0];
  if (!qword_1EB1BBE30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BBE30);
  }

  return result;
}

unint64_t sub_1A4397374()
{
  result = qword_1EB1BC040[0];
  if (!qword_1EB1BC040[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BC040);
  }

  return result;
}

unint64_t sub_1A43973CC()
{
  result = qword_1EB1BC150;
  if (!qword_1EB1BC150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1BC150);
  }

  return result;
}

unint64_t sub_1A4397424()
{
  result = qword_1EB1BC158[0];
  if (!qword_1EB1BC158[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BC158);
  }

  return result;
}

unint64_t sub_1A439747C()
{
  result = qword_1EB1BC1E0;
  if (!qword_1EB1BC1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1BC1E0);
  }

  return result;
}

unint64_t sub_1A43974D4()
{
  result = qword_1EB1BC1E8[0];
  if (!qword_1EB1BC1E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BC1E8);
  }

  return result;
}

unint64_t sub_1A439752C()
{
  result = qword_1EB1BC270;
  if (!qword_1EB1BC270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1BC270);
  }

  return result;
}

unint64_t sub_1A4397584()
{
  result = qword_1EB1BC278;
  if (!qword_1EB1BC278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1BC278);
  }

  return result;
}

uint64_t sub_1A43975D8(uint64_t a1)
{
  sub_1A406C37C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A4397634()
{
  result = qword_1EB126050;
  if (!qword_1EB126050)
  {
    sub_1A5240E64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126050);
  }

  return result;
}

uint64_t sub_1A439768C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1A3C4D23C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A43976F8(uint64_t a1, uint64_t a2)
{
  sub_1A3C4D23C(0, &qword_1EB12AA68, type metadata accessor for PhotosAppTestLaunchConfiguration);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A439777C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v11 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a3;
  *(v12 + 3) = a4;
  *(v12 + 4) = a2;
  (*(v8 + 32))(&v12[v11], &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5242104();
  return (*(v8 + 8))(a1, a3);
}

uint64_t sub_1A43979D0()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v0 = sub_1A5242114();
  return MEMORY[0x1A58FD460](v0);
}

uint64_t sub_1A4397AC4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1A5242114();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A4397C1C(void *a1)
{
  swift_allocObject();
  v2 = sub_1A4398ED4(a1);

  return v2;
}

void sub_1A4397C64()
{
  v1 = v0;
  v2 = sub_1A524BFF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3C52C70(0, &qword_1EB12B180);
  *v5 = sub_1A524D474();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8018], v2);
  v6 = sub_1A524C024();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = [*(v1 + 112) librarySpecificFetchOptions];
    sub_1A3C4D548(0, &qword_1EB126180);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1A52F9DE0;
    v9 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v10 = sub_1A524C634();
    v11 = [v9 initWithKey:v10 ascending:1];

    *(v8 + 32) = v11;
    v12 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v13 = sub_1A524C634();
    v14 = [v12 initWithKey:v13 ascending:1];

    *(v8 + 40) = v14;
    sub_1A3C52C70(0, &qword_1EB126B60);
    v15 = sub_1A524CA14();

    [v7 setSortDescriptors_];

    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1A52F9790;
    sub_1A3C52C70(0, &qword_1EB126D20);
    sub_1A3E072BC();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1A52F8E10;
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1A3D710E8();
    *(v17 + 32) = 0xD00000000000001CLL;
    *(v17 + 40) = 0x80000001A53D3C30;
    *(v16 + 32) = sub_1A524D134();
    v18 = sub_1A524CA14();

    v19 = [objc_opt_self() andPredicateWithSubpredicates_];

    [v7 setInternalPredicate_];
    v20 = objc_opt_self();
    v21 = sub_1A524CA14();
    v22 = [v20 fetchAssetsWithUUIDs:v21 options:v7];

    if (v22)
    {

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1A4398034(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  sub_1A43991EC(0, &qword_1EB126090, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  v3[11] = v4;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = sub_1A5240664();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v6 = sub_1A524BFF4();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A43981C0, v2, 0);
}

uint64_t sub_1A43981C0()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  sub_1A3C52C70(0, &qword_1EB12B180);
  *v1 = sub_1A524D474();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8018], v3);
  v4 = sub_1A524C024();
  v5 = (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v8 = sub_1A52451B4();
    v9 = sub_1A52469D4();
    v10 = MEMORY[0x1E69C1888];
    v0[5] = v9;
    v0[6] = v10;
    v0[2] = v8;
    v11 = swift_task_alloc();
    v0[20] = v11;
    *v11 = v0;
    v11[1] = sub_1A4398324;
    v6 = v0[9];
    v5 = v0[8];
    v7 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2A438](v5, v6, v7);
}

uint64_t sub_1A4398324(uint64_t a1)
{
  v3 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v4 = v3[10];
    v5 = sub_1A439869C;
  }

  else
  {
    v6 = v3[10];
    __swift_destroy_boxed_opaque_existential_0((v3 + 2));
    v5 = sub_1A439844C;
    v4 = v6;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

void sub_1A439844C()
{
  v7 = v0;
  v1 = *(v0 + 168);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_1A3C51BF0(*(v1 + 16), 0);
    sub_1A3C423E8(&v6, v3 + 4, v2, v1);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v4 = (*(**(v0 + 80) + 128))(MEMORY[0x1E69E7CC0]);

  v5 = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A439869C()
{
  v1 = v0[22];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[9];
  v7 = v0[8];
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  (*(v3 + 16))(v2, v7, v4);
  sub_1A4399250(v6, v5);
  v8 = v1;
  v9 = sub_1A5246F04();
  LOBYTE(v2) = sub_1A524D244();

  if (os_log_type_enabled(v9, v2))
  {
    v11 = v0[15];
    v10 = v0[16];
    v12 = v0[14];
    v13 = swift_slowAlloc();
    swift_slowAlloc();
    *v13 = 136315650;
    sub_1A43994B4(&qword_1EB138DD8, MEMORY[0x1E6968278]);
    sub_1A524EA44();
    (*(v11 + 8))(v10, v12);
    sub_1A3C2EF94();
  }

  v15 = v0[15];
  v14 = v0[16];
  v17 = v0[13];
  v16 = v0[14];

  sub_1A43992E4(v17);
  (*(v15 + 8))(v14, v16);
  v18 = v0[22];
  v19 = [objc_allocWithZone(MEMORY[0x1E6978840]) init];

  v20 = v0[1];

  return v20(v19);
}

uint64_t sub_1A43989EC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1A524BFF4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4398AB0, v2, 0);
}

uint64_t sub_1A4398AB0()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  sub_1A3C52C70(0, &qword_1EB12B180);
  *v1 = sub_1A524D474();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8018], v3);
  v4 = sub_1A524C024();
  result = (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v9 = (*(**(v0 + 32) + 136) + **(**(v0 + 32) + 136));
    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_1A4398C60;
    v7 = *(v0 + 24);
    v8 = *(v0 + 16);

    return v9(v8, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4398C60(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A4398D78, v2, 0);
}

uint64_t sub_1A4398D78()
{
  v1 = *(v0 + 72);
  v2 = [v1 count];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1A4398E04()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore41GenerativeStoryEventAmbiguityAssetFetcher_queryDisambiguationAssetFetcher;
  v2 = sub_1A5245424();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12PhotosUICore41GenerativeStoryEventAmbiguityAssetFetcher_logger;
  v4 = sub_1A5246F24();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1A4398ED4(void *a1)
{
  v3 = sub_1A52469C4();
  v16[1] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v16[2] = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5245424();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v9 = OBJC_IVAR____TtC12PhotosUICore41GenerativeStoryEventAmbiguityAssetFetcher_logger;
  v10 = sub_1A3C4A780();
  v11 = sub_1A5246F24();
  (*(*(v11 - 8) + 16))(v1 + v9, v10, v11);
  *(v1 + 112) = a1;
  v12 = a1;
  sub_1A5245414();
  (*(v6 + 32))(v1 + OBJC_IVAR____TtC12PhotosUICore41GenerativeStoryEventAmbiguityAssetFetcher_queryDisambiguationAssetFetcher, v8, v5);
  v13 = MEMORY[0x1E69C1878];
  sub_1A43991EC(0, &qword_1EB1202E0, MEMORY[0x1E69C1878], MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1A52FC9F0;
  sub_1A52469B4();
  sub_1A52469A4();
  v16[3] = v14;
  sub_1A43994B4(&qword_1EB124A50, MEMORY[0x1E69C1878]);
  sub_1A43991EC(0, &qword_1EB120C98, v13, MEMORY[0x1E69E62F8]);
  sub_1A4000BE0();
  sub_1A524E224();
  sub_1A5245214();
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC12PhotosUICore41GenerativeStoryEventAmbiguityAssetFetcher_storyGenerationEventRecorder) = sub_1A52451F4();
  return v1;
}

void sub_1A43991EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4399250(uint64_t a1, uint64_t a2)
{
  sub_1A43991EC(0, &qword_1EB126090, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A43992E4(uint64_t a1)
{
  sub_1A43991EC(0, &qword_1EB126090, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for GenerativeStoryEventAmbiguityAssetFetcher()
{
  result = qword_1EB1BC3A0;
  if (!qword_1EB1BC3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A43993C4()
{
  result = sub_1A5245424();
  if (v1 <= 0x3F)
  {
    result = sub_1A5246F24();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A43994B4(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_1A43994FC()
{
  v1 = sub_1A42C0D2C(*(v0 + 16));
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t sub_1A439953C()
{
  sub_1A524CC54();
  *(v0 + 16) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A43995D0, v2, v1);
}

uint64_t sub_1A43995D0()
{

  v1 = *(v0 + 8);

  return v1(2);
}

void sub_1A4399638(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v4 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v4);
  v5 = &v3 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5245BA4();
}

uint64_t sub_1A439A150()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A439A1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3FBB594;

  return sub_1A4402AC0(a1, a2, a3, a4);
}

uint64_t sub_1A439A26C(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 104) + **(*v2 + 104));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A3FBBB04;

  return v8(a1, a2);
}

uint64_t sub_1A439A3B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A439A41C(uint64_t a1)
{
  v2 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A439A478@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PersonActionBanner(0);
  v7 = a3 + *(v6 + 20);
  sub_1A524B694();
  *v7 = v10;
  *(v7 + 8) = v11;
  type metadata accessor for PhotosViewPersonBannerModel();
  sub_1A439BDBC(&qword_1EB138888, type metadata accessor for PhotosViewPersonBannerModel);
  result = sub_1A524BAC4();
  v9 = (a3 + *(v6 + 24));
  *v9 = a1;
  v9[1] = a2;
  return result;
}

uint64_t sub_1A439A578@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = type metadata accessor for PersonActionBanner(0);
  v3 = v2 - 8;
  v44 = *(v2 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1A439AB5C();
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A439AD7C();
  v9 = *(v8 - 1);
  v39 = v8;
  v40 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v36 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A439AE30();
  v45 = v11;
  v42 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = sub_1A5249314();
  *(v7 + 1) = 0;
  v7[16] = 1;
  sub_1A439B51C();
  sub_1A439B0E8(v1, &v7[*(v14 + 44)]);
  v15 = sub_1A439BDBC(&qword_1EB138E18, sub_1A439AB5C);
  sub_1A524A754();
  sub_1A3CF6E04(v7);
  v16 = v1 + *(v3 + 28);
  v17 = v1;
  v18 = *v16;
  v19 = *(v16 + 8);
  v51 = v18;
  v52 = v19;
  sub_1A439B5B4(0, &qword_1EB1274B0, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v35[1] = v49;
  sub_1A439C1B0(v1, v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PersonActionBanner);
  v20 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v43 = v4;
  v21 = swift_allocObject();
  v44 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A439B66C(v44, v21 + v20);
  sub_1A439BCB4(0, &qword_1EB143BC0, type metadata accessor for LemonadePeopleNamingView, sub_1A439AF64);
  v23 = v22;
  v47 = v41;
  v48 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_1A439AFD8();
  v37 = OpaqueTypeConformance2;
  v38 = v23;
  v41 = v13;
  v26 = v39;
  v27 = v36;
  sub_1A524AFF4();

  (*(v40 + 8))(v27, v26);
  sub_1A439B608(0, &qword_1EB138E38, type metadata accessor for PhotosViewPersonBannerModel, MEMORY[0x1E6981AA0]);
  sub_1A524BAA4();
  v28 = *(v47 + 7);

  if (v28)
  {
    v29 = sub_1A428825C();

    v51 = v29 & 1;
    v30 = v44;
    sub_1A439C1B0(v17, v44, type metadata accessor for PersonActionBanner);
    v31 = swift_allocObject();
    sub_1A439B66C(v30, v31 + v20);
    v47 = v26;
    v48 = v38;
    v49 = v37;
    v50 = v25;
    swift_getOpaqueTypeConformance2();
    v32 = v45;
    v33 = v41;
    sub_1A524B144();

    return (*(v42 + 8))(v33, v32);
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

void sub_1A439AB5C()
{
  if (!qword_1EB138DE0)
  {
    sub_1A439B608(255, &qword_1EB138DE8, sub_1A439AC10, MEMORY[0x1E6981F40]);
    sub_1A439C8F4(&qword_1EB138E08, &qword_1EB138DE8, sub_1A439AC10);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138DE0);
    }
  }
}

void sub_1A439AC10()
{
  if (!qword_1EB138DF0)
  {
    sub_1A439AC78();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB138DF0);
    }
  }
}

void sub_1A439AC78()
{
  if (!qword_1EB138DF8)
  {
    sub_1A3D93850();
    sub_1A5243C64();
    sub_1A439BDBC(&qword_1EB127490, sub_1A3D93850);
    sub_1A439BDBC(&qword_1EB138E00, MEMORY[0x1E69C2868]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138DF8);
    }
  }
}

void sub_1A439AD7C()
{
  if (!qword_1EB138E10)
  {
    sub_1A439AB5C();
    sub_1A439BDBC(&qword_1EB138E18, sub_1A439AB5C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138E10);
    }
  }
}

void sub_1A439AE30()
{
  if (!qword_1EB138E20)
  {
    sub_1A439AD7C();
    sub_1A439BCB4(255, &qword_1EB143BC0, type metadata accessor for LemonadePeopleNamingView, sub_1A439AF64);
    sub_1A439AB5C();
    sub_1A439BDBC(&qword_1EB138E18, sub_1A439AB5C);
    swift_getOpaqueTypeConformance2();
    sub_1A439AFD8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138E20);
    }
  }
}

void sub_1A439AF64()
{
  if (!qword_1EB141B50)
  {
    sub_1A439B5B4(255, &qword_1EB126DF0, MEMORY[0x1E69E6720]);
    v0 = sub_1A5249F44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141B50);
    }
  }
}

unint64_t sub_1A439AFD8()
{
  result = qword_1EB138E28;
  if (!qword_1EB138E28)
  {
    sub_1A439BCB4(255, &qword_1EB143BC0, type metadata accessor for LemonadePeopleNamingView, sub_1A439AF64);
    sub_1A439BDBC(&unk_1EB130C10, type metadata accessor for LemonadePeopleNamingView);
    sub_1A439BDBC(&qword_1EB141B60, sub_1A439AF64);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138E28);
  }

  return result;
}

uint64_t sub_1A439B0E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v3 = sub_1A5243C64();
  v4 = *(v3 - 8);
  v34 = v3;
  v35 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PersonActionBanner(0);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1A3D93850();
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A439AC78();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  sub_1A439C1B0(a1, &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PersonActionBanner);
  v20 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v21 = swift_allocObject();
  sub_1A439B66C(&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v37 = a1;
  sub_1A524B704();
  sub_1A5247DD4();
  sub_1A439BDBC(&qword_1EB127490, sub_1A3D93850);
  sub_1A439BDBC(&qword_1EB138E00, MEMORY[0x1E69C2868]);
  v23 = v33;
  v22 = v34;
  sub_1A524A944();
  (*(v35 + 8))(v6, v22);
  (*(v32 + 8))(v11, v23);
  v24 = *(v14 + 16);
  v24(v16, v19, v13);
  v38 = 1;
  v25 = v36;
  v24(v36, v16, v13);
  sub_1A439AC10();
  v27 = &v25[*(v26 + 48)];
  v28 = v38;
  *v27 = 0;
  v27[8] = v28;
  v29 = *(v14 + 8);
  v29(v19, v13);
  return (v29)(v16, v13);
}

void sub_1A439B51C()
{
  if (!qword_1EB138E30)
  {
    sub_1A439B608(255, &qword_1EB138DE8, sub_1A439AC10, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138E30);
    }
  }
}

void sub_1A439B5B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A439B608(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A439B66C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonActionBanner(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A439B6D0(uint64_t a1@<X8>)
{
  type metadata accessor for PersonActionBanner(0);
  sub_1A439B608(0, &qword_1EB138E38, type metadata accessor for PhotosViewPersonBannerModel, MEMORY[0x1E6981AA0]);
  sub_1A524BAA4();
  v2 = *(v10 + 56);

  if (v2)
  {
    v3 = *(v2 + 24);

    v4 = [v3 person];

    type metadata accessor for PeopleNamingItem();
    v5 = v4;
    v6 = PeopleNamingItem.__allocating_init(person:searchString:)(v5);
    sub_1A3D8D2BC();
    LemonadePeopleNamingView.init(person:initialResultItem:keyAssetOverride:initialString:namePickerBlock:)(v5, v6, 0, 0, 0, a1);
    KeyPath = swift_getKeyPath();
    sub_1A439BCB4(0, &qword_1EB143BC0, type metadata accessor for LemonadePeopleNamingView, sub_1A439AF64);
    v9 = a1 + *(v8 + 36);
    *v9 = KeyPath;
    *(v9 + 8) = 1;
  }

  else
  {
    sub_1A524E6E4();
    __break(1u);
  }
}

uint64_t sub_1A439B8C4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.lemonadeSheetIsSwiftUI.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1A439B918(uint64_t a1, _BYTE *a2)
{
  result = type metadata accessor for PersonActionBanner(0);
  if (*a2 == 1)
  {
    v5 = *(v2 + *(result + 24) + ((*(*(result - 8) + 80) + 16) & ~*(*(result - 8) + 80)));
    v6 = 1;
    return v5(&v6);
  }

  return result;
}

void sub_1A439B9AC()
{
  sub_1A439BCB4(0, &qword_1EB138E40, type metadata accessor for PersonActionBanner, sub_1A4005524);
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A439BD28();
  MEMORY[0x1EEE9AC00](v2 - 8);
  MEMORY[0x1EEE9AC00](v3);
  type metadata accessor for PersonActionBanner(0);
  sub_1A439BDBC(&qword_1EB12F5A8, type metadata accessor for PersonActionBanner);
  sub_1A3F96E7C();
}

void sub_1A439BCB4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A439BD28()
{
  if (!qword_1EB138E48)
  {
    type metadata accessor for PersonActionBanner(255);
    sub_1A439BDBC(&qword_1EB12F5A8, type metadata accessor for PersonActionBanner);
    v0 = type metadata accessor for PersonBannerPreview();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138E48);
    }
  }
}

uint64_t sub_1A439BDBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A439BE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for PersonActionBannerMockModel(0);
  swift_allocObject();
  sub_1A439BFD8(0x656D614E20646441, 0xE800000000000000);
  v6 = type metadata accessor for PersonActionBanner(0);
  v7 = a3 + *(v6 + 20);
  sub_1A524B694();
  *v7 = v10;
  *(v7 + 8) = v11;
  type metadata accessor for PhotosViewPersonBannerModel();
  sub_1A439BDBC(&qword_1EB138888, type metadata accessor for PhotosViewPersonBannerModel);
  sub_1A524BAC4();
  v8 = (a3 + *(v6 + 24));
  *v8 = a1;
  v8[1] = a2;
}

uint64_t sub_1A439BF40(uint64_t a1)
{
  v2 = sub_1A439C958();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A439BF8C(uint64_t a1)
{
  v2 = sub_1A439C958();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void *sub_1A439BFD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + OBJC_IVAR____TtC12PhotosUICoreP33_4D003409D0997DCBFFB2FCDAB8B2D88E27PersonActionBannerMockModel__viewControllerToPresent) = 0;
  *(v3 + OBJC_IVAR____TtC12PhotosUICoreP33_4D003409D0997DCBFFB2FCDAB8B2D88E27PersonActionBannerMockModel_completed) = 0;
  sub_1A5241604();
  v6 = (v3 + OBJC_IVAR____TtC12PhotosUICoreP33_4D003409D0997DCBFFB2FCDAB8B2D88E27PersonActionBannerMockModel_primaryButtonTitle);
  *v6 = a1;
  v6[1] = a2;
  v7 = [objc_allocWithZone(PXPeopleCandidateBannerView) init];
  type metadata accessor for LegacyPersonSuggestionBannerModel(0);
  if (qword_1EB1BC3B0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EB1BC3B8;
  v9 = v7;
  v10 = sub_1A3F28848(v8, v9);
  sub_1A524CC54();

  v11 = sub_1A524CC44();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  v14 = sub_1A524CC44();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  sub_1A524B944();

  return sub_1A4368FA0(v17, v18, v19, PXDisplayCollectionDetailedCountsMake, 0);
}

uint64_t sub_1A439C1B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A439C218(uint64_t a1, uint64_t a2)
{
  sub_1A439BCB4(0, &qword_1EB138E40, type metadata accessor for PersonActionBanner, sub_1A4005524);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A439C2AC()
{
  if (!qword_1EB138E50)
  {
    sub_1A439BD28();
    sub_1A439BCB4(255, &qword_1EB138E40, type metadata accessor for PersonActionBanner, sub_1A4005524);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB138E50);
    }
  }
}

uint64_t sub_1A439C34C(uint64_t a1)
{
  sub_1A439BCB4(0, &qword_1EB138E40, type metadata accessor for PersonActionBanner, sub_1A4005524);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A439C3D8(uint64_t a1)
{
  sub_1A439BD28();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A439C454()
{
  result = qword_1EB138E58;
  if (!qword_1EB138E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138E58);
  }

  return result;
}

void sub_1A439C4EC()
{
  sub_1A439B608(319, &qword_1EB138E38, type metadata accessor for PhotosViewPersonBannerModel, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    sub_1A439B5B4(319, &qword_1EB1274B0, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1A3C3637C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A439C5E4()
{
  v0 = [objc_allocWithZone(type metadata accessor for PersonActionBannerMockModel.MockActionPerson()) init];
  v1 = [objc_allocWithZone(PXPhotosGridPeopleBannerProvider) initWithPerson_];

  qword_1EB1BC3B8 = v1;
}

uint64_t sub_1A439C6B4()
{

  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_4D003409D0997DCBFFB2FCDAB8B2D88E27PersonActionBannerMockModel___observationRegistrar;
  v2 = sub_1A5241614();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_1A439C740()
{
  v0 = sub_1A43691B4();

  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_4D003409D0997DCBFFB2FCDAB8B2D88E27PersonActionBannerMockModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A439C820()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A439C8F4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A439B608(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A439C958()
{
  result = qword_1EB138E70;
  if (!qword_1EB138E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138E70);
  }

  return result;
}

uint64_t objectdestroyTm_48()
{
  v1 = *(type metadata accessor for PersonActionBanner(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_1A439B608(0, &qword_1EB138E38, type metadata accessor for PhotosViewPersonBannerModel, MEMORY[0x1E6981AA0]);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1A439CAD8()
{
  type metadata accessor for PersonActionBanner(0);
  sub_1A439B5B4(0, &qword_1EB1274B0, MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A439CB8C()
{
  sub_1A439B608(0, &qword_1EB138E38, type metadata accessor for PhotosViewPersonBannerModel, MEMORY[0x1E6981AA0]);
  sub_1A524BAA4();
  v0 = *(v2 + 56);

  if (v0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A439CCA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_1A5243834();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A43A1788(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v43 - v5;
  v45 = sub_1A5243EC4();
  v7 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41EC744(0);
  v44 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A439D384(0);
  v43 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - v19;
  v46 = a1;
  v21 = sub_1A5242704();
  v22 = v21;
  if (v21 >> 62)
  {
    result = sub_1A524E2B4();
    if (!result)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_7:

      v58 = 0u;
      v59 = 0u;
      v60 = 1;
      v25 = sub_1A52429A4();
      (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
      sub_1A5243824();
      sub_1A5243ED4();
      sub_1A524BC74();
      sub_1A52481F4();
      (*(v7 + 32))(v12, v9, v45);
      v26 = &v12[*(v44 + 36)];
      v27 = v56;
      *v26 = v55;
      *(v26 + 1) = v27;
      *(v26 + 2) = v57;
      v28 = &v17[*(v43 + 36)];
      v29 = *(sub_1A5248A14() + 20);
      v30 = *MEMORY[0x1E697F468];
      v31 = sub_1A52494A4();
      (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
      __asm { FMOV            V0.2D, #8.0 }

      *v28 = _Q0;
      sub_1A3E42C88();
      *&v28[*(v37 + 36)] = 256;
      sub_1A43A1720(v12, v17, sub_1A41EC744);
      sub_1A43A1720(v17, v20, sub_1A439D384);
      v38 = sub_1A5249584();
      v50 = 0;
      sub_1A439D804(v54);
      memcpy(v51, v54, sizeof(v51));
      memcpy(v52, v54, sizeof(v52));
      sub_1A43A13AC(v51, v53, sub_1A439D460);
      sub_1A43A18FC(v52, sub_1A439D460);
      memcpy(&v49[7], v51, 0x180uLL);
      LOBYTE(v29) = v50;
      v39 = v47;
      sub_1A43A13AC(v20, v47, sub_1A439D384);
      v40 = v48;
      sub_1A43A13AC(v39, v48, sub_1A439D384);
      sub_1A439F0C4(0, &qword_1EB138E88, sub_1A439D384, sub_1A439D3CC);
      v42 = *(v41 + 48);
      v53[0] = v38;
      v53[1] = 0x4000000000000000;
      LOBYTE(v53[2]) = v29;
      memcpy(&v53[2] + 1, v49, 0x187uLL);
      memcpy((v40 + v42), v53, 0x198uLL);
      sub_1A43A13AC(v53, v54, sub_1A439D3CC);
      sub_1A43A18FC(v20, sub_1A439D384);
      v54[0] = v38;
      v54[1] = 0x4000000000000000;
      LOBYTE(v54[2]) = v29;
      memcpy(&v54[2] + 1, v49, 0x187uLL);
      sub_1A43A18FC(v54, sub_1A439D3CC);
      return sub_1A43A18FC(v39, sub_1A439D384);
    }
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1A59097F0](0, v22);
    goto LABEL_7;
  }

  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v22 + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_1A439D328(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A439F0C4(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A439D3CC()
{
  if (!qword_1EB138E98)
  {
    sub_1A439D460(255);
    sub_1A43A1890(&qword_1EB138EE8, sub_1A439D460);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138E98);
    }
  }
}

void sub_1A439D4C4(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A439D780(255, a3, a4);
    sub_1A439F1C4(255, &qword_1EB127AE0, MEMORY[0x1E697FE80], MEMORY[0x1E697FE70], MEMORY[0x1E6980480]);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A439D560()
{
  if (!qword_1EB138EC0)
  {
    sub_1A439D5EC();
    sub_1A439F8D0(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138EC0);
    }
  }
}

void sub_1A439D5EC()
{
  if (!qword_1EB138EC8)
  {
    sub_1A439F1C4(255, &unk_1EB124040, MEMORY[0x1E6981148], MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1A439D698(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138EC8);
    }
  }
}

void sub_1A439D698(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A439F8D0(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A439D704()
{
  if (!qword_1EB138ED0)
  {
    sub_1A439D4C4(255, &qword_1EB138ED8, &qword_1EB138EE0, sub_1A439D5EC);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138ED0);
    }
  }
}

void sub_1A439D780(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A439D698(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A439D804@<X0>(void *a1@<X8>)
{
  v77 = a1;
  v1 = sub_1A5249424();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v65 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524A204();
  v4 = *(v3 - 8);
  v78 = v3;
  v79 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A524A274();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A52426E4();
  v71 = v15;
  v72 = v14;
  _s12PhotosUICore0A17SearchBarPositionO03TabD0C30initialSuggestionViewAlignment7SwiftUI0J0Vvg_0();
  sub_1A5248AD4();
  v142 = 0;
  v16 = *MEMORY[0x1E6980EF8];
  v63 = *(v11 + 104);
  v64 = v11 + 104;
  v63(v13, v16, v10);
  v17 = *MEMORY[0x1E6980E20];
  v18 = sub_1A524A154();
  v19 = *(v18 - 8);
  v20 = *(v19 + 104);
  v61 = v17;
  v58 = v20;
  v59 = v19 + 104;
  v20(v9, v17, v18);
  v57 = *(v19 + 56);
  v62 = v18;
  v60 = v19 + 56;
  v57(v9, 0, 1, v18);
  sub_1A524A194();
  sub_1A524A1C4();
  v66 = v9;
  sub_1A43A18FC(v9, sub_1A3E75D84);
  v21 = *(v11 + 8);
  v67 = v13;
  v68 = v11 + 8;
  v69 = v10;
  v21(v13, v10);
  v22 = *MEMORY[0x1E6980EA8];
  v24 = v78;
  v23 = v79;
  v25 = *(v79 + 104);
  v25(v6, v22, v78);
  *(&v76 + 1) = sub_1A524A234();

  v26 = v23 + 8;
  v27 = *(v23 + 8);
  v70 = v6;
  v79 = v26;
  v27(v6, v24);
  *&v76 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v73 = swift_getKeyPath();
  v143 = 0;
  v74 = sub_1A52499F4();
  sub_1A43A17EC(&qword_1EB12A810, sub_1A3FDAC34, sub_1A43A185C);
  v28 = sub_1A5242724();
  if (v29)
  {
    sub_1A43A18D8(&v122);
  }

  else
  {
    v30 = v28;
    sub_1A5249414();
    sub_1A5249404();
    *&v105 = v30;
    sub_1A52493B4();
    sub_1A5249404();
    sub_1A5249444();
    v65 = sub_1A524A444();
    v55 = v32;
    v56 = v31;
    LOBYTE(v30) = v33;
    _s12PhotosUICore0A17SearchBarPositionO03TabD0C30initialSuggestionViewAlignment7SwiftUI0J0Vvg_0();
    v54 = v21;
    sub_1A5248AD4();
    LOBYTE(v30) = v30 & 1;
    LOBYTE(v103[0]) = v30;
    v34 = v67;
    v35 = v27;
    v36 = v25;
    v37 = v69;
    v63(v67, *MEMORY[0x1E6980EF0], v69);
    v38 = v22;
    v39 = v66;
    v40 = v62;
    v58(v66, v61, v62);
    v57(v39, 0, 1, v40);
    sub_1A524A194();
    sub_1A524A1C4();
    sub_1A43A18FC(v39, sub_1A3E75D84);
    v54(v34, v37);
    v41 = v70;
    v42 = v78;
    v36(v70, v38, v78);
    v43 = sub_1A524A234();

    v35(v41, v42);
    v44 = swift_getKeyPath();
    v45 = swift_getKeyPath();
    LOBYTE(v88) = 0;
    v46 = sub_1A5249A14();
    *&v105 = v65;
    *(&v105 + 1) = v56;
    LOBYTE(v106) = v30;
    *(&v106 + 1) = v55;
    v111 = v84;
    v112 = v85;
    v113 = v86;
    v107 = v80;
    v108 = v81;
    v110 = v83;
    v109 = v82;
    *&v114 = v44;
    *(&v114 + 1) = v43;
    *&v115 = v45;
    *(&v115 + 1) = 1;
    LOBYTE(v116) = 0;
    HIDWORD(v116) = v46;
    PXDisplayCollectionDetailedCountsMake(&v105);
    v130 = v113;
    v131 = v114;
    v132 = v115;
    v133 = v116;
    v126 = v109;
    v127 = v110;
    v128 = v111;
    v129 = v112;
    v122 = v105;
    v123 = v106;
    v124 = v107;
    v125 = v108;
  }

  if (v71)
  {
    v47 = v71;
  }

  else
  {
    v47 = 0xE000000000000000;
  }

  if (v71)
  {
    v48 = v72;
  }

  else
  {
    v48 = 0;
  }

  v103[8] = v130;
  v103[9] = v131;
  v103[10] = v132;
  v103[4] = v126;
  v103[5] = v127;
  v103[6] = v128;
  v103[7] = v129;
  v103[0] = v122;
  v103[1] = v123;
  v103[2] = v124;
  v103[3] = v125;
  *&v88 = v48;
  *(&v88 + 1) = v47;
  LOBYTE(v89) = 0;
  *(&v89 + 1) = *v141;
  DWORD1(v89) = *&v141[3];
  *(&v89 + 1) = MEMORY[0x1E69E7CC0];
  v94 = v138;
  v95 = v139;
  v96 = v140;
  v90 = v134;
  v91 = v135;
  v93 = v137;
  v92 = v136;
  v49 = v76;
  v97 = v76;
  v87[0] = v88;
  v87[3] = v135;
  v87[4] = v136;
  v87[1] = v89;
  v87[2] = v134;
  v87[7] = v139;
  v87[8] = v140;
  v50 = KeyPath;
  *&v98 = KeyPath;
  BYTE8(v98) = 0;
  *(&v98 + 9) = *v144;
  HIDWORD(v98) = *&v144[3];
  v51 = v73;
  *&v99 = v73;
  *(&v99 + 1) = 2;
  v87[5] = v137;
  v87[6] = v138;
  v87[10] = v98;
  v87[11] = v99;
  v87[9] = v76;
  v101[8] = v130;
  v101[9] = v131;
  v101[10] = v132;
  v101[4] = v126;
  v101[5] = v127;
  v101[6] = v128;
  v101[7] = v129;
  v101[0] = v122;
  v101[1] = v123;
  v101[2] = v124;
  v101[3] = v125;
  *(&v87[20] + 8) = v130;
  *(&v87[21] + 8) = v131;
  *(&v87[22] + 8) = v132;
  *(&v87[16] + 8) = v126;
  *(&v87[17] + 8) = v127;
  *(&v87[18] + 8) = v128;
  *(&v87[19] + 8) = v129;
  v104 = v133;
  LOBYTE(v100) = 0;
  *(&v100 + 1) = v145;
  BYTE3(v100) = v146;
  v52 = v74;
  HIDWORD(v100) = v74;
  v102 = v133;
  *&v87[12] = v100;
  *(&v87[23] + 1) = v133;
  *(&v87[12] + 8) = v122;
  *(&v87[13] + 8) = v123;
  *(&v87[14] + 8) = v124;
  *(&v87[15] + 8) = v125;
  memcpy(v77, v87, 0x180uLL);
  sub_1A43A13AC(&v88, &v105, sub_1A439D49C);
  sub_1A43A13AC(v101, &v105, sub_1A439D704);
  sub_1A43A18FC(v103, sub_1A439D704);
  *&v105 = v48;
  *(&v105 + 1) = v47;
  LOBYTE(v106) = 0;
  *(&v106 + 1) = *v141;
  DWORD1(v106) = *&v141[3];
  *(&v106 + 1) = MEMORY[0x1E69E7CC0];
  v111 = v138;
  v112 = v139;
  v113 = v140;
  v107 = v134;
  v108 = v135;
  v110 = v137;
  v109 = v136;
  v114 = v49;
  *&v115 = v50;
  BYTE8(v115) = 0;
  *(&v115 + 9) = *v144;
  HIDWORD(v115) = *&v144[3];
  v116 = v51;
  v117 = 2;
  v118 = 0;
  v119 = v145;
  v120 = v146;
  v121 = v52;
  return sub_1A43A18FC(&v105, sub_1A439D49C);
}

uint64_t sub_1A439E30C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_1A5249314();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  sub_1A439F01C(0, &qword_1EB138E78, sub_1A439D2EC);
  return sub_1A439CCA8(v3, a1 + *(v4 + 44));
}

uint64_t type metadata accessor for PhotosDetailsAlbumAttributionListView()
{
  result = qword_1EB171A40;
  if (!qword_1EB171A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A439E3D0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v118 = a2;
  v115 = sub_1A5249284();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v112 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A52484F4();
  v100 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v99 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A439F754();
  v7 = v6;
  v98 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v97 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A439F680();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v101 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A439F568();
  v107 = v13;
  v106 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v105 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A439F418();
  v110 = v15;
  v109 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v108 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A439F218();
  v117 = v17;
  v116 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v113 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v111 = &v92 - v20;
  v21 = sub_1A52407E4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PhotosDetailsAlbumAttributionListView();
  v26 = a1;
  if (*(a1 + *(v25 + 24)) == 1)
  {
    (*(v22 + 16))(v24, a1 + *(v25 + 20), v21);
    v27 = sub_1A524A454();
    v29 = v28;
    v31 = v30;
    sub_1A524B4A4();
    v32 = sub_1A524A364();
    v94 = v4;
    v33 = v32;
    v93 = v11;
    v35 = v34;
    v92 = v7;
    v37 = v36;
    v95 = v10;

    sub_1A3E04DF4(v27, v29, v31 & 1);
    v26 = a1;

    sub_1A524A264();
    v104 = sub_1A524A3C4();
    v103 = v38;
    v40 = v39;
    v102 = v41;

    v42 = v37 & 1;
    v7 = v92;
    v43 = v33;
    v4 = v94;
    v44 = v35;
    v11 = v93;
    sub_1A3E04DF4(v43, v44, v42);
    v10 = v95;

    LOBYTE(v27) = sub_1A524A054();
    v25 = sub_1A5247BC4();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    LOBYTE(v125) = v40 & 1;
    LOBYTE(v121) = 0;
    v120 = v40 & 1;
    v119 = v27;
  }

  else
  {
    v104 = 0;
    v103 = 0;
    v102 = 0;
    v119 = 0;
    v120 = 0;
    v46 = 0;
    v48 = 0;
    v50 = 0;
    v52 = 0;
  }

  MEMORY[0x1EEE9AC00](v25);
  v96 = v26;
  *(&v92 - 2) = v26;
  sub_1A43A147C(0, &qword_1EB138F38, sub_1A439F818, sub_1A439FA80, MEMORY[0x1E697F960]);
  sub_1A439FAE8();
  v53 = v97;
  sub_1A524A2C4();
  v54 = v99;
  sub_1A52484E4();
  v55 = sub_1A43A1890(&qword_1EB138F98, sub_1A439F754);
  v56 = MEMORY[0x1E697C0D8];
  v57 = v101;
  sub_1A524B1E4();
  (*(v100 + 8))(v54, v4);
  (*(v98 + 8))(v53, v7);
  v58 = sub_1A524C634();
  v59 = PXLocalizedString(v58);

  v60 = sub_1A524C674();
  v62 = v61;

  *&v121 = v60;
  *(&v121 + 1) = v62;
  v125 = v7;
  v126 = v4;
  v127 = v55;
  v128 = v56;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = sub_1A3D5F9DC();
  v65 = MEMORY[0x1E69E6158];
  v66 = v105;
  sub_1A524ABB4();

  (*(v11 + 8))(v57, v10);
  v67 = v114;
  v68 = v112;
  v69 = v115;
  (*(v114 + 104))(v112, *MEMORY[0x1E697C438], v115);
  v125 = v10;
  v126 = v65;
  v127 = OpaqueTypeConformance2;
  v128 = v64;
  v70 = swift_getOpaqueTypeConformance2();
  v71 = v108;
  v72 = v107;
  sub_1A524AF34();
  (*(v67 + 8))(v68, v69);
  v73 = (*(v106 + 8))(v66, v72);
  MEMORY[0x1EEE9AC00](v73);
  *(&v92 - 2) = v96;
  sub_1A439FD3C();
  v125 = v72;
  v126 = v70;
  swift_getOpaqueTypeConformance2();
  sub_1A3F1E8D8();
  v75 = v74;
  v76 = sub_1A43A1890(&qword_1EB124628, sub_1A3F1E8D8);
  v125 = v75;
  v126 = v76;
  swift_getOpaqueTypeConformance2();
  v77 = v111;
  v78 = v110;
  sub_1A524B0E4();
  (*(v109 + 8))(v71, v78);
  v79 = v116;
  v80 = *(v116 + 16);
  v81 = v113;
  v82 = v117;
  v80(v113, v77, v117);
  v83 = v104;
  *&v121 = v104;
  v84 = v103;
  *(&v121 + 1) = v103;
  *&v122 = v120;
  v85 = v102;
  *(&v122 + 1) = v102;
  *&v123 = v119;
  *(&v123 + 1) = v46;
  *v124 = v48;
  *&v124[8] = v50;
  *&v124[16] = v52;
  v124[24] = 0;
  v86 = *v124;
  v87 = v118;
  v118[2] = v123;
  v87[3] = v86;
  *(v87 + 57) = *&v124[9];
  v88 = v122;
  *v87 = v121;
  v87[1] = v88;
  sub_1A439F0C4(0, &qword_1EB138F00, sub_1A439F140, sub_1A439F218);
  v80(v87 + *(v89 + 48), v81, v82);
  sub_1A43A13AC(&v121, &v125, sub_1A439F140);
  v90 = *(v79 + 8);
  v90(v77, v82);
  v90(v81, v82);
  v125 = v83;
  v126 = v84;
  v127 = v120;
  v128 = v85;
  v129 = v119;
  v130 = v46;
  v131 = v48;
  v132 = v50;
  v133 = v52;
  v134 = 0;
  return sub_1A43A18FC(&v125, sub_1A439F140);
}

void sub_1A439F01C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A439F0C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A439F140()
{
  if (!qword_1EB138F08)
  {
    sub_1A439F1C4(255, &qword_1EB128720, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138F08);
    }
  }
}

void sub_1A439F1C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_1A439F218()
{
  if (!qword_1EB138F10)
  {
    sub_1A439F418();
    sub_1A439FD3C();
    sub_1A439F568();
    sub_1A439F680();
    sub_1A439F754();
    sub_1A52484F4();
    sub_1A43A1890(&qword_1EB138F98, sub_1A439F754);
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3F1E8D8();
    sub_1A43A1890(&qword_1EB124628, sub_1A3F1E8D8);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138F10);
    }
  }
}

void sub_1A439F418()
{
  if (!qword_1EB138F18)
  {
    sub_1A439F568();
    sub_1A439F680();
    sub_1A439F754();
    sub_1A52484F4();
    sub_1A43A1890(&qword_1EB138F98, sub_1A439F754);
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138F18);
    }
  }
}

void sub_1A439F568()
{
  if (!qword_1EB138F20)
  {
    sub_1A439F680();
    sub_1A439F754();
    sub_1A52484F4();
    sub_1A43A1890(&qword_1EB138F98, sub_1A439F754);
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138F20);
    }
  }
}

void sub_1A439F680()
{
  if (!qword_1EB138F28)
  {
    sub_1A439F754();
    sub_1A52484F4();
    sub_1A43A1890(&qword_1EB138F98, sub_1A439F754);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138F28);
    }
  }
}

void sub_1A439F754()
{
  if (!qword_1EB138F30)
  {
    sub_1A43A147C(255, &qword_1EB138F38, sub_1A439F818, sub_1A439FA80, MEMORY[0x1E697F960]);
    sub_1A439FAE8();
    v0 = sub_1A524A2D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138F30);
    }
  }
}

void sub_1A439F818()
{
  if (!qword_1EB138F40)
  {
    sub_1A439F8D0(255, &qword_1EB120C88, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E62F8]);
    sub_1A439F920(255);
    sub_1A439FA04();
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138F40);
    }
  }
}

void sub_1A439F8D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A439F954()
{
  if (!qword_1EB138F50)
  {
    sub_1A439F9B0();
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138F50);
    }
  }
}

unint64_t sub_1A439F9B0()
{
  result = qword_1EB138F58;
  if (!qword_1EB138F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138F58);
  }

  return result;
}

unint64_t sub_1A439FA04()
{
  result = qword_1EB138F60;
  if (!qword_1EB138F60)
  {
    sub_1A439F8D0(255, &qword_1EB120C88, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138F60);
  }

  return result;
}

void sub_1A439FA80()
{
  if (!qword_1EB138F68)
  {
    sub_1A439F818();
    v0 = sub_1A524BA74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138F68);
    }
  }
}

unint64_t sub_1A439FAE8()
{
  result = qword_1EB138F70;
  if (!qword_1EB138F70)
  {
    sub_1A43A147C(255, &qword_1EB138F38, sub_1A439F818, sub_1A439FA80, MEMORY[0x1E697F960]);
    sub_1A43A17EC(&qword_1EB138F78, sub_1A439F818, sub_1A439FBF0);
    sub_1A439FC6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138F70);
  }

  return result;
}

unint64_t sub_1A439FC6C()
{
  result = qword_1EB138F90;
  if (!qword_1EB138F90)
  {
    sub_1A439FA80();
    sub_1A43A17EC(&qword_1EB138F78, sub_1A439F818, sub_1A439FBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138F90);
  }

  return result;
}

void sub_1A439FD3C()
{
  if (!qword_1EB122320)
  {
    sub_1A3F1E8D8();
    sub_1A43A1890(&qword_1EB124628, sub_1A3F1E8D8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB122320);
    }
  }
}

uint64_t sub_1A439FDF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_1A52407E4();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A439FA80();
  v35 = v6;
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43A147C(0, &qword_1EB138FD8, sub_1A439F818, sub_1A439FA80, MEMORY[0x1E697F948]);
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for PhotosDetailsAlbumAttributionListView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1A439F818();
  v34 = v15;
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(v12 + 24)) == 1)
  {
    v37 = sub_1A5243164();
    swift_getKeyPath();
    sub_1A43A13AC(a1, &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsAlbumAttributionListView);
    v20 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v21 = swift_allocObject();
    sub_1A43A1720(&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for PhotosDetailsAlbumAttributionListView);
    sub_1A439F8D0(0, &qword_1EB120C88, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E62F8]);
    sub_1A439F920(0);
    sub_1A439FA04();
    sub_1A439FBF0();
    sub_1A524B9B4();
    v22 = v34;
    (*(v16 + 16))(v11, v19, v34);
    swift_storeEnumTagMultiPayload();
    sub_1A43A17EC(&qword_1EB138F78, sub_1A439F818, sub_1A439FBF0);
    sub_1A439FC6C();
    sub_1A5249744();
    return (*(v16 + 8))(v19, v22);
  }

  else
  {
    (*(v30 + 16))(v5, a1 + *(v12 + 20), v31, v17);
    v37 = sub_1A524A454();
    v38 = v24;
    v39 = v25 & 1;
    v40 = v26;
    MEMORY[0x1EEE9AC00](v37);
    sub_1A43A17EC(&qword_1EB138F78, sub_1A439F818, sub_1A439FBF0);
    sub_1A524BA34();
    v27 = v32;
    v28 = v35;
    (*(v32 + 16))(v11, v8, v35);
    swift_storeEnumTagMultiPayload();
    sub_1A439FC6C();
    sub_1A5249744();
    return (*(v27 + 8))(v8, v28);
  }
}

uint64_t sub_1A43A03D0(uint64_t a1)
{
  v2 = type metadata accessor for PhotosDetailsAlbumAttributionListView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v8[1] = sub_1A5243164();
  swift_getKeyPath();
  sub_1A43A13AC(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsAlbumAttributionListView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1A43A1720(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for PhotosDetailsAlbumAttributionListView);
  sub_1A439F8D0(0, &qword_1EB120C88, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E62F8]);
  sub_1A439F920(0);
  sub_1A439FA04();
  sub_1A439FBF0();
  return sub_1A524B9B4();
}

uint64_t sub_1A43A058C(uint64_t a1)
{
  v2 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A3F1E8D8();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5249814();
  v11 = a1;
  sub_1A3D6DF58();
  sub_1A43A1890(&qword_1EB121B60, sub_1A3D6DF58);
  sub_1A5247F24();
  v8 = sub_1A43A1890(&qword_1EB124628, sub_1A3F1E8D8);
  MEMORY[0x1A5904CD0](v7, v4, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A43A075C(uint64_t a1)
{
  v2 = type metadata accessor for PhotosDetailsAlbumAttributionListView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247B34();
  sub_1A43A13AC(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsAlbumAttributionListView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1A43A1720(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for PhotosDetailsAlbumAttributionListView);
  return MEMORY[0x1A5906A80](v7, sub_1A43A141C, v9);
}

uint64_t sub_1A43A08D8(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43A1788(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = sub_1A5248284();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E87388(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A5248274();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1A43A0B64@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PhotosDetailsAlbumAttributionListView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1A439F954();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *a1;
  v14 = sub_1A52431A4();
  if (v14)
  {
    v15 = v14;
    sub_1A43A13AC(a2, v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsAlbumAttributionListView);
    v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v17 = swift_allocObject();
    sub_1A43A1720(v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PhotosDetailsAlbumAttributionListView);
    *(v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
    sub_1A439F9B0();

    sub_1A524B704();

    (*(v11 + 32))(a3, v13, v10);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v11 + 56))(a3, v18, 1, v10);
}

uint64_t sub_1A43A0DDC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  *a6 = swift_getKeyPath();
  sub_1A43A1788(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for PhotosDetailsAlbumAttributionListView();
  v13 = v12[5];
  v14 = sub_1A52407E4();
  result = (*(*(v14 - 8) + 32))(a6 + v13, a1, v14);
  *(a6 + v12[6]) = a2;
  *(a6 + v12[7]) = a3;
  v16 = (a6 + v12[8]);
  *v16 = a4;
  v16[1] = a5;
  return result;
}

uint64_t sub_1A43A0F20@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1A5249584();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A439F01C(0, &qword_1EB138EF0, sub_1A439F088);
  return sub_1A439E3D0(v1, (a1 + *(v3 + 44)));
}

void sub_1A43A0FBC()
{
  sub_1A43A1788(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A52407E4();
    if (v1 <= 0x3F)
    {
      sub_1A43A10A8();
      if (v2 <= 0x3F)
      {
        sub_1A3C3637C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A43A10A8()
{
  if (!qword_1EB138FA0)
  {
    sub_1A43A1194(255);
    sub_1A40F2AD0();
    sub_1A43A1890(&qword_1EB129FB8, sub_1A43A1194);
    sub_1A43A1890(&qword_1EB129200, sub_1A40F2AD0);
    v0 = sub_1A52431C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138FA0);
    }
  }
}

void sub_1A43A11D8()
{
  if (!qword_1EB138FB0)
  {
    sub_1A439D2EC(255);
    sub_1A43A1890(&qword_1EB138FB8, sub_1A439D2EC);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138FB0);
    }
  }
}

void sub_1A43A126C()
{
  if (!qword_1EB138FC8)
  {
    sub_1A439F088(255);
    sub_1A43A1890(&qword_1EB138FD0, sub_1A439F088);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138FC8);
    }
  }
}

uint64_t sub_1A43A1300()
{
  v1 = type metadata accessor for PhotosDetailsAlbumAttributionListView();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  return (*(v0 + *(v1 + 32) + v3))(*(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1A43A13AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A43A141C()
{
  v1 = *(type metadata accessor for PhotosDetailsAlbumAttributionListView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A43A08D8(v2);
}

void sub_1A43A147C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t objectdestroyTm_49()
{
  v1 = type metadata accessor for PhotosDetailsAlbumAttributionListView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_1A43A1788(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A5248284();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = *(v1 + 20);
  v5 = sub_1A52407E4();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1A43A16A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PhotosDetailsAlbumAttributionListView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A43A0B64(a1, v6, a2);
}

uint64_t sub_1A43A1720(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A43A1788(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A43A17EC(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A43A1890(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1A43A18D8(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1A43A18FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1A43A19D8(uint64_t a1)
{
  if (a1 != 2)
  {
    return 1.2;
  }

  *&v6[33] = v1;
  *&v6[41] = v2;
  v3 = *(**sub_1A44E6630() + 160);

  v3(v6, v4);

  result = 0.5;
  if (v6[0])
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_1A43A1A74()
{
  v0 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  __swift_allocate_value_buffer(v0, qword_1EB1EBD28);
  v1 = __swift_project_value_buffer(v0, qword_1EB1EBD28);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4028000000000000;
  v3 = swift_allocObject();
  *(v3 + 16) = 0x4040000000000000;
  v4 = sub_1A524A054();
  *v1 = sub_1A43A1B94;
  *(v1 + 8) = 0;
  *(v1 + 16) = 2;
  *(v1 + 24) = 1;
  *(v1 + 32) = 1;
  *(v1 + 40) = sub_1A43A4350;
  *(v1 + 48) = v2;
  *(v1 + 56) = sub_1A43A4350;
  *(v1 + 64) = v3;
  *(v1 + 72) = xmmword_1A5317AF0;
  *(v1 + 88) = 0;
  *(v1 + 89) = v4;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A43A1BC4(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_1A43A1C18()
{
  v0 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  __swift_allocate_value_buffer(v0, qword_1EB1EBD40);
  v1 = __swift_project_value_buffer(v0, qword_1EB1EBD40);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4028000000000000;
  v3 = swift_allocObject();
  *(v3 + 16) = 0x4040000000000000;
  v4 = sub_1A524A054();
  *v1 = sub_1A43A1D38;
  *(v1 + 8) = 0;
  *(v1 + 16) = 2;
  *(v1 + 24) = 2;
  *(v1 + 32) = 1;
  *(v1 + 40) = sub_1A43A4350;
  *(v1 + 48) = v2;
  *(v1 + 56) = sub_1A43A4350;
  *(v1 + 64) = v3;
  *(v1 + 72) = xmmword_1A5317AF0;
  *(v1 + 88) = 0;
  *(v1 + 89) = v4;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A43A1D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1A3C47A98();
  v9 = *(v8 + 64);
  *a4 = sub_1A43A1E70;
  *(a4 + 8) = 0;
  *(a4 + 16) = 2;
  *(a4 + 24) = a1;
  *(a4 + 32) = a2;
  *(a4 + 40) = a3;
  v10 = *MEMORY[0x1E69C21A0];
  v11 = sub_1A5242C84();
  (*(*(v11 - 8) + 104))(a4 + v9, v10, v11);
  type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  swift_storeEnumTagMultiPayload();

  return sub_1A3C56D48(a1, a2, a3);
}

uint64_t sub_1A43A1E70(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  if ((*(v3 + 88))(v6, v2) == *MEMORY[0x1E69C2210])
  {
    return 4;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_1A43A1F98@<X0>(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = *(type metadata accessor for LemonadeItemsLayoutSpec(0) + 20);
  v9 = sub_1A5242D14();
  result = (*(*(v9 - 8) + 32))(a2 + v8, a1, v9);
  *a2 = a3;
  a2[1] = a4;
  return result;
}

uint64_t sub_1A43A2020()
{
  v0 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  __swift_allocate_value_buffer(v0, qword_1EB181D40);
  v1 = __swift_project_value_buffer(v0, qword_1EB181D40);
  v2 = *(v0 + 20);
  v3 = *MEMORY[0x1E69C21E0];
  v4 = sub_1A5242D14();
  result = (*(*(v4 - 8) + 104))(&v1[v2], v3, v4);
  *v1 = 0;
  *(v1 + 1) = 0;
  return result;
}

uint64_t sub_1A43A20C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB181D38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  v3 = __swift_project_value_buffer(v2, qword_1EB181D40);
  return sub_1A3CA6034(v3, a1, type metadata accessor for LemonadeItemsLayoutSpec);
}

uint64_t sub_1A43A2140()
{
  sub_1A43A3578();

  return sub_1A5249244();
}

uint64_t sub_1A43A2188(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A3CA6034(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeItemsLayoutSpec);
  sub_1A43A3578();
  sub_1A5249254();
  return sub_1A43A35CC(a1);
}

void sub_1A43A223C()
{
  v0 = [objc_opt_self() px_mainScreen];
  [v0 bounds];

  sub_1A524D984();
}

uint64_t sub_1A43A22CC@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, unsigned __int8 *a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v42 = a7;
  v41 = a8;
  v15 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v16) = *a4;
  v39 = *a2;
  v40 = v16;
  v18 = *a6;
  v19 = *(type metadata accessor for LemonadeItemsLayoutSpec(0) + 20);
  sub_1A3CA6034(a1, v17, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v21 = *v17;
  v22 = *(v17 + 1);
  v23 = v17[16];
  v43 = a5;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1A3C4208C(*(v17 + 3), *(v17 + 4), v17[40]);
    v24 = a3;
    if (v23)
    {
      if (v23 == 1)
      {
        v25 = v21;
        v26 = v22;
      }

      else
      {
        v49 = v18;
        v25 = v21(v8 + v19, &v49);
        v26 = v31;
      }
    }

    else
    {
      v26 = 0;
      v25 = v21;
    }

    sub_1A3C47A98();
    v33 = *(v32 + 64);
    v48 = v39;
    v47 = v40;
    sub_1A3F2A638(v8 + v19, &v48, &v47, v24, v43, v42 & 1, v25, v26 & 1, v41);
    sub_1A3D6D890(v21, v22, v23);
    v34 = sub_1A5242C84();
    return (*(*(v34 - 8) + 8))(&v17[v33], v34);
  }

  else
  {
    v37 = v18;
    v38 = a3;
    v27 = *(v17 + 5);
    v28 = *(v17 + 7);
    sub_1A3C4208C(*(v17 + 9), *(v17 + 10), v17[88]);
    sub_1A3F1BD68(v28);
    sub_1A3F1BD68(v27);
    if (v23)
    {
      if (v23 == 1)
      {
        v29 = v21;
        v30 = v22;
      }

      else
      {
        v46 = v37;
        v29 = v21(v8 + v19, &v46);
        v30 = v36;
      }
    }

    else
    {
      v30 = 0;
      v29 = v21;
    }

    v45 = v39;
    v44 = v40;
    sub_1A3F2A638(v8 + v19, &v45, &v44, v38, v43, v42 & 1, v29, v30 & 1, v41);
    return sub_1A3D6D890(v21, v22, v23);
  }
}

uint64_t sub_1A43A2588(uint64_t a1, char *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, int a8)
{
  v38 = a3;
  v39 = a8;
  v40 = a4;
  v13 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a2;
  v17 = *a7;
  sub_1A3CA6034(a1, v15, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = *v15;
  v20 = *(v15 + 1);
  v21 = v15[16];
  if (EnumCaseMultiPayload == 1)
  {
    sub_1A3D6D890(*v15, *(v15 + 1), v15[16]);
    v22 = *(v15 + 3);
    if (v15[40])
    {
      if (v15[40] == 1)
      {
        v23 = a5;
        v24 = *(v15 + 4);
        v44 = v16;
        v43 = v17;
        v25 = (v22)(&v44, v38, v40, v23, a6, &v43, v39 & 1);
        sub_1A3C4208C(v22, v24, 1);
        v22 = v25;
      }

      else
      {
        v22 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    sub_1A3C47A98();
    v32 = *(v31 + 64);
    v33 = sub_1A5242C84();
    (*(*(v33 - 8) + 8))(&v15[v32], v33);
  }

  else
  {
    v36 = a5;
    v37 = a6;
    v26 = *(v15 + 5);
    v27 = *(v15 + 7);
    v22 = *(v15 + 9);
    v28 = *(v15 + 10);
    v29 = v15[88];
    sub_1A3F1BD68(v27);
    sub_1A3F1BD68(v26);
    sub_1A3D6D890(v19, v20, v21);
    if (v29)
    {
      if (v29 == 1)
      {
        v42 = v16;
        v41 = v17;
        v30 = (v22)(&v42, v38, v40, v36, v37, &v41, v39 & 1);
        sub_1A3C4208C(v22, v28, 1);
        return v30;
      }

      else
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  return v22;
}

double sub_1A43A27C4(uint64_t a1, char *a2)
{
  v5 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  sub_1A3CA6034(a1, v7, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *v7;
  v11 = *(v7 + 1);
  v12 = v7[16];
  if (EnumCaseMultiPayload == 1)
  {
    sub_1A3D6D890(*v7, *(v7 + 1), v7[16]);
    sub_1A3C4208C(*(v7 + 3), *(v7 + 4), v7[40]);
    sub_1A3C47A98();
    v14 = *(v13 + 64);
    v15 = *v2;
    v16 = sub_1A5242C84();
    (*(*(v16 - 8) + 8))(&v7[v14], v16);
  }

  else
  {
    v17 = *(v7 + 5);
    v18 = *(v7 + 7);
    sub_1A3C4208C(*(v7 + 9), *(v7 + 10), v7[88]);
    sub_1A3F1BD68(v18);
    sub_1A3D6D890(v10, v11, v12);
    if (v17 >= 3)
    {
      v19 = *(type metadata accessor for LemonadeItemsLayoutSpec(0) + 20);
      v22 = v8;
      v15 = v17(&v2[v19], &v22);
      sub_1A3F1BD68(v17);
    }

    else
    {
      return *v2;
    }
  }

  return v15;
}

unint64_t sub_1A43A2984(uint64_t a1, char *a2)
{
  v5 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  sub_1A3CA6034(a1, v7, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *v7;
  v11 = *(v7 + 1);
  v12 = v7[16];
  if (EnumCaseMultiPayload == 1)
  {
    sub_1A3D6D890(*v7, *(v7 + 1), v7[16]);
    sub_1A3C4208C(*(v7 + 3), *(v7 + 4), v7[40]);
    sub_1A3C47A98();
    v14 = *(v13 + 64);
    v15 = sub_1A5242C84();
    return (*(*(v15 - 8) + 8))(&v7[v14], v15);
  }

  else
  {
    v17 = *(v7 + 5);
    v18 = *(v7 + 7);
    sub_1A3C4208C(*(v7 + 9), *(v7 + 10), v7[88]);
    sub_1A3F1BD68(v17);
    result = sub_1A3D6D890(v10, v11, v12);
    if (v18 > 2)
    {
      v19 = *(type metadata accessor for LemonadeItemsLayoutSpec(0) + 20);
      v21 = v8;
      v18(v2 + v19, &v21);
      return sub_1A3F1BD68(v18);
    }
  }

  return result;
}

uint64_t sub_1A43A2BB4(unsigned __int8 *a1, char a2, uint64_t a3)
{
  v6 = sub_1A5242D14();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  (*(v7 + 16))(v10, a3, v6, v8);
  if ((*(v7 + 88))(v10, v6) == *MEMORY[0x1E69C2210])
  {
    return sub_1A5247B94();
  }

  if ((v11 - 1) > 1 || (a2 & 1) == 0)
  {
    sub_1A5247B94();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1A43A2D70(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1A5242D14();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  (*(v9 + 16))(v11, a5, v8);
  if ((*(v9 + 88))(v11, v8) == *MEMORY[0x1E69C2200])
  {
    v13 = *(**sub_1A44E6630() + 160);

    v13(&v22, v14);

    v15 = 2;
    if (a4 >= 6)
    {
      v15 = 3;
    }

    if (v22 & 1 | (a4 < 4))
    {
      return 1;
    }

    else
    {
      return v15;
    }
  }

  else
  {
    if ((v12 - 4) <= 2)
    {
      v17 = *(**sub_1A44E6630() + 160);

      v17((&v22 + 1), v18);

      v19 = [objc_opt_self() px_mainScreen];
      [v19 bounds];

      sub_1A524D984();
    }

    v16 = 2;
    (*(v9 + 8))(v11, v8);
  }

  return v16;
}

uint64_t sub_1A43A3038(unsigned __int8 *a1)
{
  v2 = sub_1A52486A4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if ((v7 - 4) < 3)
  {
    v8 = [objc_opt_self() px_mainScreen];
    [v8 bounds];

    sub_1A524D984();
  }

  if ((v7 - 2) > 1)
  {
    return 4;
  }

  v9 = v4;
  (*(v3 + 104))(v6, *MEMORY[0x1E697E6C8], v4);
  sub_1A43A42F8();
  v10 = sub_1A524C534();
  (*(v3 + 8))(v6, v9);
  if (v10)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_1A43A3224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, char a7)
{
  v9 = sub_1A52486A4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a6;
  (*(v10 + 104))(v13, *MEMORY[0x1E697E6C8], v9, v11);
  sub_1A43A42F8();
  v15 = sub_1A524C534();
  (*(v10 + 8))(v13, v9);
  if (a7)
  {
    if (v15)
    {
      return 2;
    }

    else
    {
      return 5;
    }
  }

  else
  {
    if (v15)
    {
      v27 = v14;
      v26 = 0;
      sub_1A40A51C0();
      sub_1A524C9C4();
      sub_1A524C9C4();
      if (v24 == v22 && v25 == v23)
      {

        return 2;
      }

      v17 = sub_1A524EAB4();

      v18 = (v17 & 1) == 0;
      v19 = 1;
    }

    else
    {
      v27 = v14;
      v26 = 0;
      sub_1A40A51C0();
      sub_1A524C9C4();
      sub_1A524C9C4();
      if (v24 == v22 && v25 == v23)
      {

        return 4;
      }

      v20 = sub_1A524EAB4();

      v18 = (v20 & 1) == 0;
      v19 = 3;
    }

    if (v18)
    {
      return v19;
    }

    else
    {
      return v19 + 1;
    }
  }
}

uint64_t sub_1A43A34A4(unsigned __int8 *a1)
{
  if (*a1 - 4 <= 2)
  {
    v9 = [objc_opt_self() px_mainScreen];
    [v9 bounds];

    sub_1A524D984();
  }

  return 4;
}

unint64_t sub_1A43A3578()
{
  result = qword_1EB181CA8[0];
  if (!qword_1EB181CA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB181CA8);
  }

  return result;
}

uint64_t sub_1A43A35CC(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A43A3628(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t, char *), uint64_t a4, unsigned __int8 a5)
{
  if (a5 >= 2u)
  {
    v9 = v5;
    v10 = v6;
    v8 = *a2;
    return a3(a1, &v8);
  }

  return a3;
}

uint64_t sub_1A43A3690@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_1A43A3700(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v38 = a1;
  v8 = sub_1A5242D14();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v37 - v24;
  if (a5)
  {
    if (a4 <= 4)
    {
      if (a4 <= 1)
      {
        if (!a4)
        {
          return a4;
        }

        v34 = v25;
        (*(v25 + 16))(&v37 - v24, v38, v8, v26);
        if ((*(v34 + 88))(v27, v8) == *MEMORY[0x1E69C2210])
        {
          return 0x3FF0000000000000;
        }

        (*(v34 + 8))(v27, v8);
      }

      else
      {
        if (a4 == 2)
        {
          return 0x3FF0000000000000;
        }

        if (a4 == 3)
        {
          v30 = v25;
          (*(v25 + 16))(v22, v38, v8, v26);
          if ((*(v30 + 88))(v22, v8) == *MEMORY[0x1E69C2210])
          {
            return 0x3FE8000000000000;
          }

          (*(v30 + 8))(v22, v8);
        }

        else
        {
          v33 = v25;
          (*(v25 + 16))(v19, v38, v8, v26);
          if ((*(v33 + 88))(v19, v8) == *MEMORY[0x1E69C2210])
          {
            return 0x3FF0000000000000;
          }

          (*(v33 + 8))(v19, v8);
        }
      }
    }

    else if (a4 > 7)
    {
      if (a4 == 8)
      {
        return 0x3FF4000000000000;
      }

      if (a4 != 9)
      {
        v35 = *a2;
        if (v35 > 4)
        {
          if (v35 == 5 || v35 == 6)
          {
            return 0x4008CCCCCCCCCCCDLL;
          }
        }

        else
        {
          if (v35 - 2 < 2)
          {
            return 0x3FF0000000000000;
          }

          if (v35 == 4)
          {
            return 0x4003333333333333;
          }
        }

        return 0x3FF8000000000000;
      }

      v31 = v25;
      (*(v25 + 16))(v10, v38, v8, v26);
      if ((*(v31 + 88))(v10, v8) == *MEMORY[0x1E69C2210])
      {
        return 0x3FF0000000000000;
      }

      (*(v31 + 8))(v10, v8);
    }

    else
    {
      if (a4 != 5)
      {
        if (a4 == 6)
        {
          v28 = v25;
          (*(v25 + 16))(v13, v38, v8, v26);
          v29 = (*(v28 + 88))(v13, v8);
          if (v29 != *MEMORY[0x1E69C21F8])
          {
            if (v29 == *MEMORY[0x1E69C21E8])
            {
              return 0x3FF999999999999ALL;
            }

            if (v29 == *MEMORY[0x1E69C2210])
            {
              return 0x3FF4000000000000;
            }

            (*(v28 + 8))(v13, v8);
          }

          return 0x3FF0000000000000;
        }

        return 0x3FE8000000000000;
      }

      v32 = v25;
      (*(v25 + 16))(v16, v38, v8, v26);
      if ((*(v32 + 88))(v16, v8) == *MEMORY[0x1E69C2210])
      {
        return 0x3FF599999999999ALL;
      }

      (*(v32 + 8))(v16, v8);
    }

    return 0;
  }

  return a4;
}

uint64_t sub_1A43A3C04@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v38 = a3;
  v41 = a7;
  v42 = a6;
  v35 = a4;
  v36 = a2;
  v37 = a1;
  v8 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v14 = sub_1A5248804();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  v21 = sub_1A5249754();
  v40 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v34 - v22;
  v51 = *v35;
  sub_1A43A3700(v38, &v51, v24, v37, v36 & 1);
  if (v25)
  {
    v26 = *(v8 + 16);
    v26(v13, WitnessTable, a5);
    v26(v10, v13, a5);
    v49 = v42;
    v50 = MEMORY[0x1E697F568];
    swift_getWitnessTable();
    sub_1A3DF4890(v10, v14, a5);
    v27 = *(v8 + 8);
    v27(v10, a5);
    v27(v13, a5);
  }

  else
  {
    v38 = v21;
    v28 = v42;
    sub_1A524A924();
    v43 = v28;
    v44 = MEMORY[0x1E697F568];
    WitnessTable = swift_getWitnessTable();
    v29 = *(v15 + 16);
    v29(v20, v17, v14);
    v30 = *(v15 + 8);
    v30(v17, v14);
    v29(v17, v20, v14);
    v21 = v38;
    sub_1A3DF4798(v17, v14);
    v30(v17, v14);
    v30(v20, v14);
  }

  v31 = v42;
  v47 = v42;
  v48 = MEMORY[0x1E697F568];
  v45 = swift_getWitnessTable();
  v46 = v31;
  swift_getWitnessTable();
  v32 = v40;
  (*(v40 + 16))(v41, v23, v21);
  return (*(v32 + 8))(v23, v21);
}

uint64_t sub_1A43A4088(uint64_t a1, unsigned int a2)
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

uint64_t sub_1A43A40D4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1A43A4118(uint64_t result, unsigned int a2)
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

void sub_1A43A4168()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_1A5242D14();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A43A41FC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A43A4258(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1A43A42A8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_1A43A42F8()
{
  result = qword_1EB1288D0;
  if (!qword_1EB1288D0)
  {
    sub_1A52486A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1288D0);
  }

  return result;
}

double sub_1A43A43B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  *a3 = swift_getKeyPath();
  sub_1A43A58F0(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for SurveyContentView(0);
  v9 = a3 + *(v8 + 20);
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  *(a3 + *(v8 + 24)) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a4;
  *(v10 + 32) = a2;
  sub_1A43A5150();
  v12 = (a3 + *(v11 + 36));
  *v12 = sub_1A410AEF4;
  v12[1] = 0;
  v12[2] = sub_1A43A5068;
  v12[3] = v10;
  *&v16 = a4;
  *(&v16 + 1) = a2;
  sub_1A3C48A9C(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  swift_retain_n();

  sub_1A524B6A4();
  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A43A51B8();
  v14 = (a3 + *(v13 + 36));
  *v14 = v16;
  v14[1] = v17;
  result = *&v18;
  v14[2] = v18;
  return result;
}

id sub_1A43A459C()
{
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SurveyContentView(0);
  sub_1A48AD5C8(&v16);
  if (v16)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 contentView];
      if (v5)
      {
LABEL_4:
        v6 = v5;
LABEL_9:
        swift_unknownObjectRelease();
        return v6;
      }

      v6 = [objc_allocWithZone(PXSurveyQuestionsGadgetContentView) init];
      [v4 prepareCollectionViewItem_];
      sub_1A43A5870();
      sub_1A5249DA4();
      v10 = v15;
      [v4 setLemonadeUIDelegate_];
LABEL_8:

      goto LABEL_9;
    }

    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = [v7 contentView];
      swift_unknownObjectRelease();
      return v8;
    }

    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v5 = [v11 contentView];
      if (v5)
      {
        goto LABEL_4;
      }

      v6 = [objc_allocWithZone(PXSurveyQuestionPlaceholderGadgetView) init];
      [v12 prepareCollectionViewItem_];
      if (![v12 respondsToSelector_])
      {
        goto LABEL_9;
      }

      sub_1A3FF29A0(v2);
      sub_1A3D63A8C(0);
      if ((*(*(v13 - 8) + 48))(v2, 1, v13) != 1)
      {
        sub_1A5245C94();
      }

      sub_1A43A5954(v2, sub_1A3D63A58);
      v10 = 0;
      [v12 setOverrideContainerViewController_];
      goto LABEL_8;
    }

    swift_unknownObjectRelease();
  }

  v14 = objc_allocWithZone(MEMORY[0x1E69DD250]);

  return [v14 init];
}

void sub_1A43A48C0(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  sub_1A3EC2B6C(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5249234();
  v33 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v2 + *(type metadata accessor for SurveyContentView(0) + 20);
  v18 = *v17;
  v19 = *(v17 + 8);

  if ((v19 & 1) == 0)
  {
    sub_1A524D254();
    v32 = v14;
    v20 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    j__swift_release(v18, 0);
    (*(v33 + 8))(v16, v32);
    v18 = v34;
  }

  if (v18)
  {
    v21 = sub_1A52434D4();
    (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
    v22 = sub_1A3C30368();
    v23 = sub_1A4657324(a1, a2, v22 & 1, 0, 0, v13, 0, 0);
    sub_1A43A5954(v13, sub_1A3EC2B6C);
    v24 = a1;
    v25 = sub_1A3E78D28(v23);
    sub_1A3E00630(v23);
    if (v25)
    {
    }

    else
    {
      v26 = sub_1A524D244();
      v27 = *sub_1A3CAA3FC();
      sub_1A43A59B4(v24, v10, type metadata accessor for LemonadeNavigationDestination);
      if (os_log_type_enabled(v27, v26))
      {
        v28 = v27;
        v29 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v29 = 136315138;
        sub_1A43A59B4(v10, v7, type metadata accessor for LemonadeNavigationDestination);
        sub_1A524C714();
        sub_1A43A5954(v10, type metadata accessor for LemonadeNavigationDestination);
        sub_1A3C2EF94();
      }

      sub_1A43A5954(v10, type metadata accessor for LemonadeNavigationDestination);
    }
  }

  else
  {
    sub_1A524D244();
    v30 = *sub_1A3CAA3FC();
    sub_1A5246DF4();
  }
}

id sub_1A43A4FD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SurveyContentView.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A43A5068(double *a1)
{
  [objc_opt_self() sizeThatFits_];
  v2 = v1;
  sub_1A3C48A9C(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);

  sub_1A524B6A4();
  if (v2 != v4)
  {
    sub_1A524B6B4();
  }
}

void sub_1A43A5150()
{
  if (!qword_1EB1288A0)
  {
    type metadata accessor for SurveyContentView(255);
    sub_1A410AB24();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1288A0);
    }
  }
}

void sub_1A43A51B8()
{
  if (!qword_1EB128498)
  {
    sub_1A43A5150();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128498);
    }
  }
}

uint64_t sub_1A43A526C()
{
  result = type metadata accessor for SurveyContentView(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A43A52FC()
{
  result = qword_1EB1284A0;
  if (!qword_1EB1284A0)
  {
    sub_1A43A51B8();
    sub_1A43A537C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1284A0);
  }

  return result;
}

unint64_t sub_1A43A537C()
{
  result = qword_1EB1288A8;
  if (!qword_1EB1288A8)
  {
    sub_1A43A5150();
    sub_1A43A582C(qword_1EB189EA8);
    sub_1A43A5448(&unk_1EB127B30, sub_1A410AB24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1288A8);
  }

  return result;
}

uint64_t sub_1A43A5448(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A43A54B8()
{
  sub_1A43A58F0(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A43A58F0(319, &unk_1EB1247C0, sub_1A3D639F0, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for LemonadePhotosChallengeModel();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A43A55EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43A59B4(v2, v5, type metadata accessor for SurveyContentView);
  v6 = type metadata accessor for SurveyContentView.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_1A43A59B4(v5, v7 + OBJC_IVAR____TtCV12PhotosUICoreP33_AFC00BCA01978D7A3A12D1D9F0B75D8117SurveyContentView11Coordinator_representable, type metadata accessor for SurveyContentView);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = sub_1A43A5954(v5, type metadata accessor for SurveyContentView);
  *a2 = v8;
  return result;
}

uint64_t sub_1A43A56E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A43A582C(&qword_1EB189EA0);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A43A5768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A43A582C(&qword_1EB189EA0);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A43A57E8()
{
  sub_1A43A582C(&qword_1EB189EA0);
  sub_1A52496F4();
  __break(1u);
}

uint64_t sub_1A43A582C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SurveyContentView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A43A5870()
{
  if (!qword_1EB127A88)
  {
    type metadata accessor for SurveyContentView(255);
    sub_1A43A582C(&qword_1EB189EA0);
    v0 = sub_1A5249DB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127A88);
    }
  }
}

void sub_1A43A58F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A43A5954(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A43A59B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A43A5A1C(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2;
  v17 = 0;
  v9 = a1;
  v10 = a2;
  LOBYTE(a2) = sub_1A3C5A374();
  v11 = sub_1A3C5A374();
  v12 = sub_1A3C5A374();
  sub_1A41DF298(v9, &v16, a2 & 1, v11 & 1, v12 & 1, 0, 0, v18);
  v13 = v18[1];
  *v8 = v18[0];
  *(v8 + 1) = v13;
  *(v8 + 4) = v19;
  swift_storeEnumTagMultiPayload();
  sub_1A43A48C0(v8, a3);
  return sub_1A43A5954(v8, type metadata accessor for LemonadeNavigationDestination);
}

uint64_t sub_1A43A5B54(void *a1, void *a2)
{
  v4 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v13[15] = 3;
    *&v14[0] = 0;
    v9 = a1;
    sub_1A3C6E9EC();
    LemonadePhotosPagingMemoryGridConfiguration.init(memory:initialPositionDetent:disallowedBehaviors:navigationSourceInfo:)(v8);
  }

  else
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v11 = a1;
      LemonadePhotosPagingAssetCollectionGridConfiguration.init(collection:defaultSectionBodyStyle:viewConfiguration:assetsFetchResultProvider:selectionCoordinator:)(v6);
    }

    sub_1A42EAB60(a1, v14);
    v10 = v14[1];
    *v6 = v14[0];
    *(v6 + 1) = v10;
  }

  swift_storeEnumTagMultiPayload();
  sub_1A43A48C0(v6, a2);
  return sub_1A43A5954(v6, type metadata accessor for LemonadeNavigationDestination);
}

id SectionedDataSourceManager.__allocating_init(itemListManager:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC12PhotosUICore26SectionedDataSourceManager_itemListManager];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id SectionedDataSourceManager.init(itemListManager:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC12PhotosUICore26SectionedDataSourceManager_itemListManager];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

void __swiftcall SectionedDataSourceManager.createInitialDataSource()(PXSectionedDataSource *__return_ptr retstr)
{
  type metadata accessor for SectionedDataSource();
  swift_getObjectType();
  v1[3] = swift_getAssociatedTypeWitness();
  v1[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1A5245904();
}

id SectionedDataSourceManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SectionedDataSourceManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A43A60BC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3FBB594;

  return (sub_1A43A6824)(a2);
}

uint64_t sub_1A43A6168(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1A3DBD9A0();
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1A43A6228(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  sub_1A524CC54();
  v3[22] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[23] = v5;
  v3[24] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A43A62C4, v5, v4);
}

uint64_t sub_1A43A62C4()
{
  v1 = sub_1A46E0BEC();
  *(v0 + 200) = v1;
  v2 = sub_1A46E0BEC();

  if (v1 == v2)
  {
    sub_1A46E162C([*(v0 + 152) type] != 6);
  }

  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1A43A6428;
  v5 = swift_continuation_init();
  sub_1A43A6C50();
  *(v0 + 136) = v6;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1A43A6168;
  *(v0 + 104) = &block_descriptor_164;
  *(v0 + 112) = v5;
  [v1 navigateToDestination:v4 options:v3 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1A43A6428()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_1A43A65CC;
  }

  else
  {
    v5 = sub_1A43A6558;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A43A6558()
{
  v1 = v0[25];

  v2 = v0[18];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1A43A65CC()
{
  v1 = *(v0 + 200);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A43A6644(uint64_t a1)
{
  v2 = sub_1A46E0BEC();
  LOBYTE(a1) = [v2 routingOptionsForDestination_];

  return a1 & 1;
}

id sub_1A43A6688(uint64_t a1)
{
  v2 = sub_1A46E0BEC();
  v3 = [v2 nextExistingParticipantOnRouteToDestination_];

  return v3;
}

uint64_t sub_1A43A66D4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3FBBB04;

  return (sub_1A43A6824)(a2);
}

uint64_t sub_1A43A6780(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3FBBB04;

  return sub_1A43A6228(a1, a2);
}

uint64_t sub_1A43A6824(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  sub_1A524CC54();
  v2[21] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[22] = v4;
  v2[23] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A43A68BC, v4, v3);
}

uint64_t sub_1A43A68BC()
{
  if (sub_1A46E59CC())
  {
    v1 = v0[19];
    v2 = sub_1A46E0BEC();
    v0[24] = v2;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1A43A6A34;
    v3 = swift_continuation_init();
    sub_1A43A6C50();
    v0[17] = v4;
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1A43A6168;
    v0[13] = &block_descriptor_10_7;
    v0[14] = v3;
    [v2 px:v1 dismissPresentedViewControllerWithOptions:v0 + 10 completionHandler:?];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v5 = v0[1];

    return v5(3);
  }
}

uint64_t sub_1A43A6A34()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);
  if (v2)
  {
    v5 = sub_1A43A6BD8;
  }

  else
  {
    v5 = sub_1A43A6B64;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A43A6B64()
{
  v1 = v0[24];

  v2 = v0[18];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1A43A6BD8()
{
  v1 = *(v0 + 192);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

void sub_1A43A6C50()
{
  if (!qword_1EB120B70)
  {
    type metadata accessor for PXProgrammaticNavigationResult(255);
    sub_1A3DBD9A0();
    v0 = sub_1A524CDF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120B70);
    }
  }
}

void sub_1A43A6CC8()
{
  if (!qword_1EB139050)
  {
    sub_1A43A6D24();
    v0 = sub_1A5249FF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB139050);
    }
  }
}

unint64_t sub_1A43A6D24()
{
  result = qword_1EB139058;
  if (!qword_1EB139058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139058);
  }

  return result;
}

id sub_1A43A6D78(void *a1)
{
  v2 = sub_1A524BB24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D6D85C(0);
  MEMORY[0x1A5906C60]();
  v6 = sub_1A524BB14();
  (*(v3 + 8))(v5, v2);
  return [a1 setIsInSelectMode_];
}

id sub_1A43A6EB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosGridView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A43A6EE4()
{
  v1 = *v0;
  sub_1A43A6CC8();
  sub_1A5249FD4();
  [v1 setDelegate_];

  return [objc_allocWithZone(PXPhotosUIViewController) initWithConfiguration_];
}

id sub_1A43A6F68@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for PhotosGridView.Coordinator()) init];
  *a1 = result;
  return result;
}

uint64_t sub_1A43A6FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A43A6D24();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A43A7004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A43A6D24();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A43A7068()
{
  sub_1A43A6D24();
  sub_1A5249ED4();
  __break(1u);
}

uint64_t sub_1A43A7090(void *a1)
{
  v24 = a1;
  sub_1A3D6D828(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D6D85C(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  sub_1A43A6CC8();
  sub_1A5249FE4();
  sub_1A5249174();
  (*(v5 + 8))(v7, v4);
  if ((*(v10 + 48))(v3, 1, v9) == 1)
  {
    v16 = sub_1A3D6D828;
    v17 = v3;
  }

  else
  {
    sub_1A43A73EC(v3, v15);
    v18 = [v24 viewModel];
    sub_1A43A7450(v15, v12);
    v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v20 = swift_allocObject();
    sub_1A43A73EC(v12, v20 + v19);
    aBlock[4] = sub_1A43A74B4;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D7692C;
    aBlock[3] = &block_descriptor_165;
    v21 = _Block_copy(aBlock);

    [v18 performChanges_];
    _Block_release(v21);

    v16 = sub_1A3D6D85C;
    v17 = v15;
  }

  return sub_1A43A7524(v17, v16);
}

uint64_t sub_1A43A73EC(uint64_t a1, uint64_t a2)
{
  sub_1A3D6D85C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A43A7450(uint64_t a1, uint64_t a2)
{
  sub_1A3D6D85C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1A43A74B4(void *a1)
{
  sub_1A3D6D85C(0);

  return sub_1A43A6D78(a1);
}

uint64_t sub_1A43A7524(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static AssetEntity.transferRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  sub_1A43A8078();
  v68 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v59 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43AC05C(0, &unk_1ED741F20, MEMORY[0x1E69E8450]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v53 - v4;
  v57 = sub_1A5246D14();
  v6 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  sub_1A43A818C();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43A80F8();
  v13 = v12;
  v58 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v53 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v64 = &v53 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v63 = &v53 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v69 = &v53 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v70 = &v53 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v71 = &v53 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v61 = &v53 - v30;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v62 = &v53 - v33;
  (*(v6 + 56))(v5, 1, 1, v57, v32);
  sub_1A5246BE4();
  v34 = sub_1A43A81E8();
  sub_1A5241CA4();
  sub_1A43AC83C(&qword_1EB1390F0, sub_1A43A818C);
  sub_1A5241CF4();
  v35 = *(v9 + 8);
  v35(v11, v8);
  sub_1A5246CD4();
  sub_1A5241CA4();
  sub_1A5241CF4();
  v35(v11, v8);
  sub_1A5246C84();
  sub_1A5241CA4();
  sub_1A5241CF4();
  v35(v11, v8);
  sub_1A5246C04();
  sub_1A5241CA4();
  sub_1A5241CF4();
  v35(v11, v8);
  sub_1A5246C24();
  sub_1A5241CA4();
  sub_1A5241CF4();
  v35(v11, v8);
  sub_1A5246CC4();
  sub_1A5241CA4();
  sub_1A5241CF4();
  v35(v11, v8);
  sub_1A5246C54();
  sub_1A5241CA4();
  sub_1A5241CF4();
  v35(v11, v8);
  sub_1A5246C64();
  sub_1A5241CA4();
  sub_1A5241CF4();
  v35(v11, v8);
  sub_1A5246C94();
  v57 = v34;
  sub_1A5241CA4();
  sub_1A5241CF4();
  v35(v11, v8);
  sub_1A5246CA4();
  sub_1A5241CA4();
  sub_1A5241CF4();
  v35(v11, v8);
  v36 = v68[12];
  v37 = v68[16];
  v38 = v68[20];
  v39 = v68[24];
  v40 = v68[28];
  v41 = v68[36];
  v53 = v68[32];
  v54 = v41;
  v42 = v68[44];
  v55 = v68[40];
  v56 = v42;
  v44 = v58;
  v43 = v59;
  v45 = *(v58 + 16);
  v45(v59, v62, v13);
  v45(&v43[v36], v61, v13);
  v45(&v43[v37], v71, v13);
  v45(&v43[v38], v70, v13);
  v45(&v43[v39], v69, v13);
  v46 = v63;
  v45(&v43[v40], v63, v13);
  v47 = v64;
  v45(&v43[v53], v64, v13);
  v48 = v65;
  v45(&v43[v54], v65, v13);
  v49 = v66;
  v45(&v43[v55], v66, v13);
  v50 = v67;
  v45(&v43[v56], v67, v13);
  sub_1A5241D24();
  v51 = *(v44 + 8);
  v51(v50, v13);
  v51(v49, v13);
  v51(v48, v13);
  v51(v47, v13);
  v51(v46, v13);
  v51(v69, v13);
  v51(v70, v13);
  v51(v71, v13);
  v51(v61, v13);
  return (v51)(v62, v13);
}

void sub_1A43A8078()
{
  if (!qword_1EB1390D0)
  {
    sub_1A43A80F8();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB1390D0);
    }
  }
}

void sub_1A43A80F8()
{
  if (!qword_1EB1390D8)
  {
    sub_1A43A818C();
    sub_1A43AC83C(&qword_1EB1390F0, sub_1A43A818C);
    v0 = sub_1A5241D44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1390D8);
    }
  }
}

void sub_1A43A818C()
{
  if (!qword_1EB1390E0)
  {
    sub_1A43A81E8();
    v0 = sub_1A5241CB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1390E0);
    }
  }
}

unint64_t sub_1A43A81E8()
{
  result = qword_1EB1390E8;
  if (!qword_1EB1390E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1390E8);
  }

  return result;
}

uint64_t sub_1A43A823C(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  v4 = sub_1A5246D14();
  *(v2 + 152) = v4;
  *(v2 + 160) = *(v4 - 8);
  *(v2 + 168) = swift_task_alloc();
  sub_1A43AC05C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v2 + 176) = swift_task_alloc();
  v5 = sub_1A5240E64();
  *(v2 + 184) = v5;
  *(v2 + 192) = *(v5 - 8);
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  v6 = *(a2 + 80);
  *(v2 + 80) = *(a2 + 64);
  *(v2 + 96) = v6;
  *(v2 + 112) = *(a2 + 96);
  v7 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v7;
  v8 = *(a2 + 48);
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 64) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A43A83D0, 0, 0);
}

uint64_t sub_1A43A83D0()
{
  if (qword_1EB1BC6C0 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = __swift_project_value_buffer(v3, qword_1EB1BC6C8);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = swift_task_alloc();
  v0[27] = v5;
  *v5 = v0;
  v5[1] = sub_1A43A84E8;
  v7 = v0[21];
  v6 = v0[22];

  return sub_1A43A88BC(v6, (v0 + 2), v7);
}

uint64_t sub_1A43A84E8()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  *(*v1 + 224) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1A43A8794;
  }

  else
  {
    v5 = sub_1A43A8658;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A43A8658()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  result = (*(v2 + 48))(v3, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[25];
    v5 = v0[26];
    (*(v2 + 32))(v5, v3, v1);
    (*(v2 + 16))(v6, v5, v1);
    sub_1A5241CC4();
    (*(v2 + 8))(v5, v1);

    v7 = v0[1];

    return v7();
  }

  return result;
}

uint64_t sub_1A43A8794()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A43A881C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3D60150;

  return sub_1A43A823C(a1, a2);
}

uint64_t sub_1A43A88BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 576) = a3;
  *(v3 + 568) = a1;
  v5 = sub_1A5240E64();
  *(v3 + 584) = v5;
  *(v3 + 592) = *(v5 - 8);
  *(v3 + 600) = swift_task_alloc();
  *(v3 + 608) = swift_task_alloc();
  sub_1A43AC05C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v3 + 616) = swift_task_alloc();
  *(v3 + 624) = swift_task_alloc();
  v6 = sub_1A5246D14();
  *(v3 + 632) = v6;
  *(v3 + 640) = *(v6 - 8);
  *(v3 + 648) = swift_task_alloc();
  *(v3 + 656) = swift_task_alloc();
  *(v3 + 664) = swift_task_alloc();
  v7 = sub_1A5246F24();
  *(v3 + 672) = v7;
  *(v3 + 680) = *(v7 - 8);
  *(v3 + 688) = swift_task_alloc();
  *(v3 + 696) = swift_task_alloc();
  *(v3 + 704) = swift_task_alloc();
  *(v3 + 712) = swift_task_alloc();
  *(v3 + 720) = swift_task_alloc();
  *(v3 + 728) = swift_task_alloc();
  v8 = *(a2 + 80);
  *(v3 + 144) = *(a2 + 64);
  *(v3 + 160) = v8;
  *(v3 + 176) = *(a2 + 96);
  v9 = *(a2 + 16);
  *(v3 + 80) = *a2;
  *(v3 + 96) = v9;
  v10 = *(a2 + 48);
  *(v3 + 112) = *(a2 + 32);
  *(v3 + 128) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1A43A8B44, 0, 0);
}

uint64_t sub_1A43A8B44()
{
  v1 = v0[91];
  v2 = v0[85];
  v3 = v0[83];
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[72];
  v7 = sub_1A3CB648C();
  v0[92] = v7;
  v8 = *(v2 + 16);
  v0[93] = v8;
  v0[94] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v51 = v7;
  v52 = v8;
  v8(v1);
  v9 = *(v4 + 16);
  v0[95] = v9;
  v0[96] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v3, v6, v5);
  sub_1A3F67450((v0 + 10), (v0 + 23));
  v10 = sub_1A5246F04();
  v11 = sub_1A524D264();
  sub_1A3F678A8((v0 + 10));
  v12 = os_log_type_enabled(v10, v11);
  v53 = v0[91];
  v13 = v0[85];
  v14 = v0[84];
  v15 = v0[83];
  v16 = v0[80];
  v17 = v0[79];
  if (v12)
  {
    v18 = swift_slowAlloc();
    swift_slowAlloc();
    *v18 = 136446466;
    sub_1A43AC83C(&qword_1EB1390F8, MEMORY[0x1E69E8450]);
    sub_1A524EA44();
    (*(v16 + 8))(v15, v17);
    sub_1A3C2EF94();
  }

  v19 = *(v16 + 8);
  v19(v15, v17);
  v20 = *(v13 + 8);
  v20(v53, v14);
  v0[98] = v20;
  v0[97] = v19;
  v21 = PXPhotosFileProviderManager();
  v0[99] = v21;
  if (v21)
  {
    v22 = v21;
    v23 = sub_1A524C634();
    v0[100] = v23;
    v24 = v23;
    v25 = sub_1A524C634();
    v26 = PXLocalizedString(v25);

    if (!v26)
    {
      sub_1A524C674();
      v26 = sub_1A524C634();
    }

    v27 = [objc_allocWithZone(MEMORY[0x1E69674D8]) initWithIdentifier:v24 displayName:v26 pathRelativeToDocumentStorage:v24 hidden:1];
    v0[101] = v27;

    v0[70] = 0;
    v28 = PXCreateDirectoryForFileProviderDomain(v27, v0 + 70);
    v29 = v0[70];
    v0[102] = v29;
    if (v28)
    {
      v0[2] = v0;
      v0[3] = sub_1A43A9340;
      v30 = swift_continuation_init();
      sub_1A43AC0B0();
      v0[69] = v31;
      v0[66] = v30;
      v0[62] = MEMORY[0x1E69E9820];
      v0[63] = 1107296256;
      v0[64] = sub_1A4078F5C;
      v0[65] = &block_descriptor_166;
      v32 = v29;
      [v22 addDomain:v27 completionHandler:v0 + 62];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }

    v52(v0[88], v51, v0[84]);
    v39 = v29;
    v40 = sub_1A5246F04();
    v41 = sub_1A524D244();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v54 = v27;
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      *(v42 + 4) = v39;
      *v43 = v29;
      v44 = v39;
      _os_log_impl(&dword_1A3C1C000, v40, v41, "Failed to create directory for domain: %@", v42, 0xCu);
      sub_1A3C590A0(v43, &qword_1EB12B150, sub_1A3C7B6A4);
      v45 = v43;
      v27 = v54;
      MEMORY[0x1A590EEC0](v45, -1, -1);
      MEMORY[0x1A590EEC0](v42, -1, -1);
    }

    v46 = v0[88];
    v47 = v0[84];

    v20(v46, v47);
    sub_1A40DCE64();
    swift_allocError();
    *v48 = 4;
    swift_willThrow();
  }

  else
  {
    v52(v0[87], v51, v0[84]);
    v33 = sub_1A5246F04();
    v34 = sub_1A524D244();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1A3C1C000, v33, v34, "Failed to acquire file provider manager", v35, 2u);
      MEMORY[0x1A590EEC0](v35, -1, -1);
    }

    v36 = v0[87];
    v37 = v0[84];

    v20(v36, v37);
    sub_1A40DCE64();
    swift_allocError();
    *v38 = 4;
    swift_willThrow();
  }

  v49 = v0[1];

  return v49();
}

uint64_t sub_1A43A9340()
{
  v1 = *(*v0 + 48);
  *(*v0 + 824) = v1;
  if (v1)
  {
    v2 = sub_1A43A9E88;
  }

  else
  {
    v2 = sub_1A43A947C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A43A947C()
{
  v1 = v0[101];
  v2 = v0[99];
  v3 = v0[72];
  type metadata accessor for PhotosFileProviderRegister.Configuration(0);
  v4 = PhotosFileProviderRegister.Configuration.__allocating_init(usage:)(0);
  type metadata accessor for PhotosFileProviderRegister();
  v66 = v4;
  v64 = PhotosFileProviderRegister.__allocating_init(configuration:fileProviderManager:domain:)(v66, v2, v1);
  v5 = (*((*MEMORY[0x1E69E7D40] & *v64) + 0x88))(v0[10]);
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  v7 = sub_1A3FE8BAC(sub_1A43AC11C, v6, v5);

  v65 = v7;
  if (v7)
  {
    (*(v0[74] + 16))(v0[78], v7 + OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_fileProviderURL, v0[73]);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v0[78];
  v10 = v0[77];
  v11 = v0[74];
  v12 = v0[73];
  (*(v11 + 56))(v9, v8, 1, v12);
  sub_1A426E444(v9, v10);
  v13 = (*(v11 + 48))(v10, 1, v12);
  v61 = v0[95];
  v14 = v0[93];
  v15 = v0[92];
  v16 = v0[84];
  v17 = v0[79];
  if (v13 == 1)
  {
    v18 = v0[89];
    v19 = v0[81];
    v20 = v0[72];
    sub_1A3C590A0(v0[77], &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    v14(v18, v15, v16);
    v61(v19, v20, v17);
    sub_1A3F67450((v0 + 10), (v0 + 36));
    v21 = sub_1A5246F04();
    v22 = sub_1A524D244();
    sub_1A3F678A8((v0 + 10));
    v23 = os_log_type_enabled(v21, v22);
    v57 = v0[101];
    v60 = v0[99];
    v24 = v0[98];
    v25 = v0[97];
    v26 = v0[89];
    v62 = v0[100];
    v27 = v0[84];
    v28 = v0[81];
    v29 = v0[79];
    if (v23)
    {
      v30 = swift_slowAlloc();
      swift_slowAlloc();
      *v30 = 136446466;
      sub_1A43AC83C(&qword_1EB1390F8, MEMORY[0x1E69E8450]);
      sub_1A524EA44();
      v25(v28, v29);
      sub_1A3C2EF94();
    }

    v25(v28, v29);
    v24(v26, v27);
  }

  else
  {
    v31 = v0[90];
    v58 = v0[82];
    v32 = v0[76];
    v33 = v0[74];
    v34 = v0[73];
    v53 = v0[75];
    loga = v0[72];
    (*(v33 + 32))(v32, v0[77], v34);
    v14(v31, v15, v16);
    (*(v33 + 16))(v53, v32, v34);
    v61(v58, loga, v17);
    sub_1A3F67450((v0 + 10), (v0 + 49));
    v35 = sub_1A5246F04();
    v36 = sub_1A524D264();
    sub_1A3F678A8((v0 + 10));
    log = v35;
    v37 = os_log_type_enabled(v35, v36);
    v59 = v0[100];
    v52 = v0[101];
    v54 = v0[99];
    v38 = v0[98];
    v39 = v0[97];
    v40 = v0[90];
    v63 = v0[84];
    v51 = v0[82];
    v41 = v0[79];
    v42 = v0[76];
    v43 = v0[75];
    v44 = v0[74];
    v45 = v0[73];
    if (v37)
    {
      v46 = swift_slowAlloc();
      swift_slowAlloc();
      *v46 = 136315650;
      sub_1A43AC83C(&qword_1EB12B000, MEMORY[0x1E6968FB0]);
      sub_1A524EA44();
      (*(v44 + 8))(v43, v45);
      sub_1A3C2EF94();
    }

    v39(v51, v41);
    v47 = *(v44 + 8);
    v47(v43, v45);
    v38(v40, v63);
    v47(v42, v45);
  }

  v48 = v0[102];
  sub_1A408A03C(v0[78], v0[71]);

  v49 = v0[1];

  return v49();
}

uint64_t sub_1A43A9E88()
{
  v1 = v0[103];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[86];
  v5 = v0[84];
  swift_willThrow();
  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_1A5246F04();
  v8 = sub_1A524D244();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[103];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1A3C1C000, v7, v8, "Failed to add domain: %@", v10, 0xCu);
    sub_1A3C590A0(v11, &qword_1EB12B150, sub_1A3C7B6A4);
    MEMORY[0x1A590EEC0](v11, -1, -1);
    MEMORY[0x1A590EEC0](v10, -1, -1);
  }

  v14 = v0[102];
  v15 = v0[101];
  v16 = v0[100];
  v17 = v0[99];
  v18 = v0[98];
  v19 = v0[86];
  v20 = v0[84];

  v18(v19, v20);
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_1A43AA140(uint64_t a1)
{
  v2 = sub_1A5246D14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v6;
  v13 = *(a1 + 96);
  v7 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v7;
  v8 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v8;
  if (qword_1EB1BC6C0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, qword_1EB1BC6C8);
  swift_beginAccess();
  (*(v3 + 16))(v5, v9, v2);
  LOBYTE(v9) = sub_1A43AC164(v12, v5);
  (*(v3 + 8))(v5, v2);
  return v9 & 1;
}

uint64_t sub_1A43AA2AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  v4 = sub_1A5246D14();
  *(v2 + 128) = v4;
  *(v2 + 136) = *(v4 - 8);
  *(v2 + 144) = swift_task_alloc();
  sub_1A43AC05C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v2 + 152) = swift_task_alloc();
  v5 = sub_1A5240E64();
  *(v2 + 160) = v5;
  *(v2 + 168) = *(v5 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v6 = *(a2 + 80);
  *(v2 + 80) = *(a2 + 64);
  *(v2 + 96) = v6;
  *(v2 + 112) = *(a2 + 96);
  v7 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v7;
  v8 = *(a2 + 48);
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 64) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A43AA440, 0, 0);
}

uint64_t sub_1A43AA440()
{
  sub_1A5246CD4();
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_1A43AA4E0;
  v3 = v0[18];
  v2 = v0[19];

  return sub_1A43A88BC(v2, (v0 + 2), v3);
}

uint64_t sub_1A43AA4E0()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  *(*v1 + 200) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1A43AC8F0;
  }

  else
  {
    v5 = sub_1A43AC8F4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A43AA668(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  v4 = sub_1A5246D14();
  *(v2 + 128) = v4;
  *(v2 + 136) = *(v4 - 8);
  *(v2 + 144) = swift_task_alloc();
  sub_1A43AC05C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v2 + 152) = swift_task_alloc();
  v5 = sub_1A5240E64();
  *(v2 + 160) = v5;
  *(v2 + 168) = *(v5 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v6 = *(a2 + 80);
  *(v2 + 80) = *(a2 + 64);
  *(v2 + 96) = v6;
  *(v2 + 112) = *(a2 + 96);
  v7 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v7;
  v8 = *(a2 + 48);
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 64) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A43AA7FC, 0, 0);
}

uint64_t sub_1A43AA7FC()
{
  sub_1A5246C84();
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_1A43AA4E0;
  v3 = v0[18];
  v2 = v0[19];

  return sub_1A43A88BC(v2, (v0 + 2), v3);
}

uint64_t sub_1A43AA8B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  v4 = sub_1A5246D14();
  *(v2 + 128) = v4;
  *(v2 + 136) = *(v4 - 8);
  *(v2 + 144) = swift_task_alloc();
  sub_1A43AC05C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v2 + 152) = swift_task_alloc();
  v5 = sub_1A5240E64();
  *(v2 + 160) = v5;
  *(v2 + 168) = *(v5 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v6 = *(a2 + 80);
  *(v2 + 80) = *(a2 + 64);
  *(v2 + 96) = v6;
  *(v2 + 112) = *(a2 + 96);
  v7 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v7;
  v8 = *(a2 + 48);
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 64) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A43AAA48, 0, 0);
}

uint64_t sub_1A43AAA48()
{
  sub_1A5246C04();
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_1A43AA4E0;
  v3 = v0[18];
  v2 = v0[19];

  return sub_1A43A88BC(v2, (v0 + 2), v3);
}

uint64_t sub_1A43AAB00(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  v4 = sub_1A5246D14();
  *(v2 + 128) = v4;
  *(v2 + 136) = *(v4 - 8);
  *(v2 + 144) = swift_task_alloc();
  sub_1A43AC05C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v2 + 152) = swift_task_alloc();
  v5 = sub_1A5240E64();
  *(v2 + 160) = v5;
  *(v2 + 168) = *(v5 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v6 = *(a2 + 80);
  *(v2 + 80) = *(a2 + 64);
  *(v2 + 96) = v6;
  *(v2 + 112) = *(a2 + 96);
  v7 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v7;
  v8 = *(a2 + 48);
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 64) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A43AAC94, 0, 0);
}

uint64_t sub_1A43AAC94()
{
  sub_1A5246C24();
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_1A43AA4E0;
  v3 = v0[18];
  v2 = v0[19];

  return sub_1A43A88BC(v2, (v0 + 2), v3);
}

uint64_t sub_1A43AAD4C(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  v4 = sub_1A5246D14();
  *(v2 + 128) = v4;
  *(v2 + 136) = *(v4 - 8);
  *(v2 + 144) = swift_task_alloc();
  sub_1A43AC05C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v2 + 152) = swift_task_alloc();
  v5 = sub_1A5240E64();
  *(v2 + 160) = v5;
  *(v2 + 168) = *(v5 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v6 = *(a2 + 80);
  *(v2 + 80) = *(a2 + 64);
  *(v2 + 96) = v6;
  *(v2 + 112) = *(a2 + 96);
  v7 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v7;
  v8 = *(a2 + 48);
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 64) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A43AAEE0, 0, 0);
}

uint64_t sub_1A43AAEE0()
{
  sub_1A5246CC4();
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_1A43AA4E0;
  v3 = v0[18];
  v2 = v0[19];

  return sub_1A43A88BC(v2, (v0 + 2), v3);
}

uint64_t sub_1A43AAF98(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  v4 = sub_1A5246D14();
  *(v2 + 128) = v4;
  *(v2 + 136) = *(v4 - 8);
  *(v2 + 144) = swift_task_alloc();
  sub_1A43AC05C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v2 + 152) = swift_task_alloc();
  v5 = sub_1A5240E64();
  *(v2 + 160) = v5;
  *(v2 + 168) = *(v5 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v6 = *(a2 + 80);
  *(v2 + 80) = *(a2 + 64);
  *(v2 + 96) = v6;
  *(v2 + 112) = *(a2 + 96);
  v7 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v7;
  v8 = *(a2 + 48);
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 64) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A43AB12C, 0, 0);
}

uint64_t sub_1A43AB12C()
{
  sub_1A5246C54();
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_1A43AB1CC;
  v3 = v0[18];
  v2 = v0[19];

  return sub_1A43A88BC(v2, (v0 + 2), v3);
}

uint64_t sub_1A43AB1CC()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  *(*v1 + 200) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1A43AB478;
  }

  else
  {
    v5 = sub_1A43AB33C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A43AB33C()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  result = (*(v2 + 48))(v3, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[22];
    v5 = v0[23];
    (*(v2 + 32))(v5, v3, v1);
    (*(v2 + 16))(v6, v5, v1);
    sub_1A5241CC4();
    (*(v2 + 8))(v5, v1);

    v7 = v0[1];

    return v7();
  }

  return result;
}

uint64_t sub_1A43AB478()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A43AB518(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  v4 = sub_1A5246D14();
  *(v2 + 128) = v4;
  *(v2 + 136) = *(v4 - 8);
  *(v2 + 144) = swift_task_alloc();
  sub_1A43AC05C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v2 + 152) = swift_task_alloc();
  v5 = sub_1A5240E64();
  *(v2 + 160) = v5;
  *(v2 + 168) = *(v5 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v6 = *(a2 + 80);
  *(v2 + 80) = *(a2 + 64);
  *(v2 + 96) = v6;
  *(v2 + 112) = *(a2 + 96);
  v7 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v7;
  v8 = *(a2 + 48);
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 64) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A43AB6AC, 0, 0);
}

uint64_t sub_1A43AB6AC()
{
  sub_1A5246C64();
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_1A43AA4E0;
  v3 = v0[18];
  v2 = v0[19];

  return sub_1A43A88BC(v2, (v0 + 2), v3);
}

uint64_t sub_1A43AB764(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  v4 = sub_1A5246D14();
  *(v2 + 128) = v4;
  *(v2 + 136) = *(v4 - 8);
  *(v2 + 144) = swift_task_alloc();
  sub_1A43AC05C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v2 + 152) = swift_task_alloc();
  v5 = sub_1A5240E64();
  *(v2 + 160) = v5;
  *(v2 + 168) = *(v5 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v6 = *(a2 + 80);
  *(v2 + 80) = *(a2 + 64);
  *(v2 + 96) = v6;
  *(v2 + 112) = *(a2 + 96);
  v7 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v7;
  v8 = *(a2 + 48);
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 64) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A43AB8F8, 0, 0);
}

uint64_t sub_1A43AB8F8()
{
  sub_1A5246C94();
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_1A43AA4E0;
  v3 = v0[18];
  v2 = v0[19];

  return sub_1A43A88BC(v2, (v0 + 2), v3);
}

uint64_t sub_1A43AB9B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  v4 = sub_1A5246D14();
  *(v2 + 128) = v4;
  *(v2 + 136) = *(v4 - 8);
  *(v2 + 144) = swift_task_alloc();
  sub_1A43AC05C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v2 + 152) = swift_task_alloc();
  v5 = sub_1A5240E64();
  *(v2 + 160) = v5;
  *(v2 + 168) = *(v5 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v6 = *(a2 + 80);
  *(v2 + 80) = *(a2 + 64);
  *(v2 + 96) = v6;
  *(v2 + 112) = *(a2 + 96);
  v7 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v7;
  v8 = *(a2 + 48);
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 64) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A43ABB44, 0, 0);
}

uint64_t sub_1A43ABB44()
{
  sub_1A5246CA4();
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_1A43AA4E0;
  v3 = v0[18];
  v2 = v0[19];

  return sub_1A43A88BC(v2, (v0 + 2), v3);
}

uint64_t sub_1A43ABBFC(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, void, void, void, void))
{
  v4 = sub_1A5246D14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 80);
  v23 = *(a1 + 64);
  v24 = v8;
  v25 = *(a1 + 96);
  v9 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v9;
  v10 = *(a1 + 48);
  v21 = *(a1 + 32);
  v22 = v10;
  a2(v11, v12, v13, v14, v15, v16, v17, v18, *&v20[0], *(&v20[0] + 1), v9, *(&v9 + 1), v21);
  LOBYTE(a2) = sub_1A43AC164(v20, v7);
  (*(v5 + 8))(v7, v4);
  return a2 & 1;
}

id sub_1A43ABD08()
{
  v0 = sub_1A5246D14();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, qword_1EB1BC6C8);
  v5 = __swift_project_value_buffer(v0, qword_1EB1BC6C8);
  result = PFCurrentPlatformLivePhotoBundleType();
  if (result)
  {
    v7 = result;
    sub_1A5246C44();

    return (*(v1 + 32))(v5, v3, v0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static AssetEntity.livePhotoType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1BC6C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5246D14();
  v3 = __swift_project_value_buffer(v2, qword_1EB1BC6C8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static AssetEntity.livePhotoType.setter(uint64_t a1)
{
  if (qword_1EB1BC6C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5246D14();
  v3 = __swift_project_value_buffer(v2, qword_1EB1BC6C8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static AssetEntity.livePhotoType.modify())()
{
  if (qword_1EB1BC6C0 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5246D14();
  __swift_project_value_buffer(v0, qword_1EB1BC6C8);
  swift_beginAccess();
  return j__swift_endAccess;
}

void sub_1A43AC05C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A43AC0B0()
{
  if (!qword_1EB147950)
  {
    sub_1A3DBD9A0();
    v0 = sub_1A524CDF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147950);
    }
  }
}

uint64_t sub_1A43AC164(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5246D14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v38 = sub_1A5246F24();
  v11 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  v17 = *(a1 + 64);
  v18 = *(a1 + 80);
  v19 = *(a1 + 32);
  v41[3] = *(a1 + 48);
  v41[4] = v17;
  v41[5] = v18;
  v42 = *(a1 + 96);
  v20 = *(a1 + 16);
  v41[0] = *a1;
  v41[1] = v20;
  v41[2] = v19;
  type metadata accessor for PhotosFileProviderRegister.Configuration(0);
  v21 = PhotosFileProviderRegister.Configuration.__allocating_init(usage:)(0);
  type metadata accessor for PhotosFileProviderRegister();
  v36 = v21;
  LOBYTE(a1) = static PhotosFileProviderRegister.canRegisterFileRepresentations(for:contentType:configuration:)(*&v41[0], a2, v21);
  v22 = sub_1A3CB648C();
  v37 = v11;
  v23 = v11;
  v24 = a1;
  v25 = *(v23 + 16);
  v26 = (v5 + 16);
  if (v24)
  {
    v25(v16, v22, v38);
    (*v26)(v10, a2, v4);
    sub_1A3F67450(v41, v40);
    v27 = sub_1A5246F04();
    v28 = sub_1A524D264();
    sub_1A3F678A8(v41);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39 = v35;
      *v29 = 136446466;
      sub_1A43AC83C(&qword_1EB1390F8, MEMORY[0x1E69E8450]);
      sub_1A524EA44();
      (*(v5 + 8))(v10, v4);
      sub_1A3C2EF94();
    }

    (*(v5 + 8))(v10, v4);
    (*(v37 + 8))(v16, v38);
  }

  else
  {
    v25(v13, v22, v38);
    (*v26)(v7, a2, v4);
    sub_1A3F67450(v41, v40);
    v30 = sub_1A5246F04();
    v31 = sub_1A524D264();
    sub_1A3F678A8(v41);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39 = v35;
      *v32 = 136446466;
      sub_1A43AC83C(&qword_1EB1390F8, MEMORY[0x1E69E8450]);
      sub_1A524EA44();
      (*(v5 + 8))(v7, v4);
      sub_1A3C2EF94();
    }

    (*(v5 + 8))(v7, v4);
    (*(v37 + 8))(v13, v38);
  }

  return v24 & 1;
}

uint64_t sub_1A43AC83C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A43AC884()
{
  if (!qword_1EB139108)
  {
    sub_1A43A8078();
    sub_1A43A81E8();
    v0 = sub_1A5241D14();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB139108);
    }
  }
}

double sub_1A43AC8F8()
{
  v0 = sub_1A52436D4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C7E8B0();
  v4 = [swift_getObjCClassFromMetadata() sharedInstance];
  if ([v4 enableSolariumDetailsView])
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 80.0;
  }

  sub_1A52436A4();
  sub_1A52436C4();
  v7 = v6;

  (*(v1 + 8))(v3, v0);
  result = v7 + 64.0 + 40.0;
  *&xmmword_1EB191410 = v5;
  *(&xmmword_1EB191410 + 1) = result;
  qword_1EB191420 = 0x4061800000000000;
  return result;
}

__int128 *sub_1A43ACA40()
{
  if (qword_1EB191400 != -1)
  {
    swift_once();
  }

  return &xmmword_1EB191410;
}

double static PhotosDynamicHeaderSpec.lemonade.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB191400 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&qword_1EB191420;
  *a1 = xmmword_1EB191410;
  *(a1 + 16) = result;
  return result;
}

void PhotosDynamicHeaderSpec.headerHeight(for:)(double a1, double a2)
{
  v3 = a1;
  if (a1 == 0.0 || a2 == 0.0 || (*MEMORY[0x1E69BDDB0] == a1 ? (v4 = *(MEMORY[0x1E69BDDB0] + 8) == a2) : (v4 = 0), v4))
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(v12, *&v3, *&a2, 0x3FF0000000000000);
      _os_log_fault_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", v12, 0x20u);
    }

    if (a2 >= v3)
    {
      a1 = v3;
    }

    else
    {
      a1 = a2;
    }

    v8 = 0.6;
    v7 = 0.565;
  }

  else
  {
    v5 = fabs(a1 / a2);
    if (a2 < a1)
    {
      a1 = a2;
    }

    v6 = v5 <= 1.0;
    v7 = 0.565;
    if (!v6)
    {
      v7 = 0.7;
    }

    v8 = 0.6;
    if (!v6)
    {
      v8 = 0.55;
    }
  }

  if (a1 <= 460.0)
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  CGRound(v11 * a2);
}

double __os_log_helper_16_0_3_8_0_8_0_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&result = 134218496;
  *a1 = 134218496;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2048;
  *(a1 + 24) = a4;
  return result;
}

char *sub_1A43ACC88(void *a1, void *a2, void *a3)
{
  v4 = v3;
  sub_1A43ACE80(0, &qword_1EB139110, sub_1A43ACE4C, MEMORY[0x1E695C070]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - v11;
  v13 = objc_allocWithZone(v4);
  v14 = OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsPhototypeWidgetViewModel__phototypeSupport;
  v17[1] = 0;
  sub_1A43ACE4C(0);
  sub_1A52479A4();
  (*(v10 + 32))(&v13[v14], v12, v9);
  v15 = [a3 phototypeAccessoryViewSupport];
  swift_beginAccess();
  (*(v10 + 8))(&v13[v14], v9);
  v17[0] = v15;
  sub_1A52479A4();
  swift_endAccess();
  return sub_1A4467460(a1, a2, a3);
}

void sub_1A43ACE80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A43ACEE4()
{
  result = qword_1EB139180;
  if (!qword_1EB139180)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB139180);
  }

  return result;
}

uint64_t sub_1A43ACF48()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1A52479F4();
}

uint64_t sub_1A43ACFB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

uint64_t sub_1A43AD028@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  *a1 = v3;
  return result;
}

uint64_t sub_1A43AD0A8(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();
  v3 = v2;
  return sub_1A52479F4();
}

uint64_t sub_1A43AD150(uint64_t (*a1)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if (!v5)
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v3 = a1(ObjectType);
  swift_unknownObjectRelease();
  return v3;
}

BOOL sub_1A43AD204()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if (v1)
  {
    swift_unknownObjectRelease();
  }

  return v1 != 0;
}

void sub_1A43AD28C(void *a1)
{
  v2 = sub_1A4467CD8();
  v3 = [v2 presentViewController];

  if (v3)
  {
    v3[2](v3, a1);

    _Block_release(v3);
  }

  else
  {
    if (qword_1EB1BC760 != -1)
    {
      swift_once();
    }

    v4 = sub_1A5246F24();
    __swift_project_value_buffer(v4, qword_1EB1BC768);
    v5 = a1;
    oslog = sub_1A5246F04();
    v6 = sub_1A524D244();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      swift_slowAlloc();
      *v7 = 136315138;
      v8 = v5;
      v9 = [v8 description];
      sub_1A524C674();

      sub_1A3C2EF94();
    }
  }
}

uint64_t sub_1A43AD490()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsPhototypeWidgetViewModel__phototypeSupport;
  sub_1A43ACE80(0, &qword_1EB139110, sub_1A43ACE4C, MEMORY[0x1E695C070]);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

void sub_1A43AD5C4()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1BC768);
  __swift_project_value_buffer(v0, qword_1EB1BC768);
  sub_1A5246EF4();
}

uint64_t type metadata accessor for PhotosDetailsPhototypeWidgetViewModel()
{
  result = qword_1EB1BC798;
  if (!qword_1EB1BC798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A43AD67C()
{
  sub_1A43ACE80(319, &qword_1EB139110, sub_1A43ACE4C, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1A43AD73C(char a1)
{
  if (a1)
  {
    MEMORY[0x1A5907B60](0x73655220776F4C5BLL, 0xE90000000000005DLL);
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  MEMORY[0x1A5907B60](0x655220686769485BLL, 0xEA00000000005D73);
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  MEMORY[0x1A5907B60](0x6948206F6E61505BLL, 0xEF5D736552206867);
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  MEMORY[0x1A5907B60](0x6552206C6C75465BLL, 0xEA00000000005D73);
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    MEMORY[0x1A5907B60](0x5D6F656469565BLL, 0xE700000000000000);
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_14:
  MEMORY[0x1A5907B60](0xD000000000000019, 0x80000001A53D4200);
  if ((a1 & 0x20) != 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((a1 & 0x40) != 0)
  {
LABEL_8:
    MEMORY[0x1A5907B60](0x5D6576694C5BLL, 0xE600000000000000);
  }

LABEL_9:

  return 1701736270;
}

char *sub_1A43AD8B4(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v3 = sub_1A43B8EF4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1A43AD95C(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A43B8588(a1);
  return v2;
}

uint64_t sub_1A43AD99C()
{
  sub_1A3C56708(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_1A524CCB4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_1A3D4D930(0, 0, v3, &unk_1A5335818, v5);
}

uint64_t sub_1A43ADAE8()
{
  v1 = *(*(v0 + 16) + *(**(v0 + 16) + 104));
  *(v0 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A43ADB20, v1, 0);
}

uint64_t sub_1A43ADB20()
{
  sub_1A43ADB80();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A43ADB80()
{
  v1 = type metadata accessor for OneUpSharePlaySessionHostJournal.Library.AssetEntry();
  v2 = MEMORY[0x1E69E6158];
  swift_getTupleTypeMetadata2();
  v3 = sub_1A524CAB4();
  v4 = sub_1A3C3DFB4(v3, v2, v1, MEMORY[0x1E69E6168]);

  v5 = *(*v0 + 112);
  swift_beginAccess();
  *(v0 + v5) = v4;
}

uint64_t OneUpSharePlaySessionHostJournal.uploadAssetResourcesIfNeeded(_:)(_OWORD *a1)
{
  *(v2 + 96) = v1;
  *(v2 + 104) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1A43ADC90, 0, 0);
}

uint64_t sub_1A43ADC90()
{
  v1 = *(v0 + 104);
  v2 = *(*(v0 + 96) + *(**(v0 + 96) + 104));
  *(v0 + 120) = v2;
  *(v0 + 16) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A43ADCD0, v2, 0);
}

uint64_t sub_1A43ADCD0()
{
  *(v0 + 128) = sub_1A43AE500((v0 + 16));

  return MEMORY[0x1EEE6DFA0](sub_1A43ADD40, 0, 0);
}

uint64_t sub_1A43ADD40()
{
  v1 = sub_1A524D264();
  v2 = *sub_1A486DB9C();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = v2;
    v4 = swift_slowAlloc();
    swift_slowAlloc();
    *v4 = 136446466;
    KeyPath = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 80);

    sub_1A3C2EF94();
  }

  v6 = *(v0 + 128);
  if (!v6)
  {
    goto LABEL_10;
  }

  if ((v6 & 0x1F) != 0)
  {
    *(v0 + 32) = *(v0 + 104);
    v7 = swift_task_alloc();
    *(v0 + 136) = v7;
    *v7 = v0;
    v7[1] = sub_1A43AE094;
    v8 = *(v0 + 128);

    return sub_1A43AEB08((v0 + 32), v8);
  }

  if ((v6 & 0x20) != 0)
  {
    *(v0 + 64) = *(v0 + 104);
    v11 = swift_task_alloc();
    *(v0 + 144) = v11;
    *v11 = v0;
    v11[1] = sub_1A43AE29C;

    return sub_1A43B0538((v0 + 64));
  }

  else
  {
    if ((v6 & 0x40) == 0)
    {
LABEL_10:
      v10 = *(v0 + 8);

      return v10();
    }

    *(v0 + 48) = *(v0 + 104);
    v12 = swift_task_alloc();
    *(v0 + 152) = v12;
    *v12 = v0;
    v12[1] = sub_1A43AE40C;

    return sub_1A43B1E70((v0 + 48));
  }
}

uint64_t sub_1A43AE094()
{
  v2 = *v0;
  v1 = *v0;
  v3 = *v0;

  v4 = *(v1 + 16);
  if ((v4 & 0x20) != 0)
  {
    v2[4] = *(v2 + 104);
    v7 = v2 + 4;
    v8 = swift_task_alloc();
    *(v7 + 10) = v8;
    *v8 = v3;
    v8[1] = sub_1A43AE29C;

    return sub_1A43B0538(v7);
  }

  else if ((v4 & 0x40) != 0)
  {
    v2[3] = *(v2 + 104);
    v9 = v2 + 3;
    v10 = swift_task_alloc();
    *(v9 + 13) = v10;
    *v10 = v3;
    v10[1] = sub_1A43AE40C;

    return sub_1A43B1E70(v9);
  }

  else
  {
    v5 = *(v3 + 1);

    return v5();
  }
}

uint64_t sub_1A43AE29C()
{
  v1 = *v0;

  if ((*(v1 + 128) & 0x40) != 0)
  {
    *(v1 + 48) = *(v1 + 104);
    v4 = swift_task_alloc();
    *(v1 + 152) = v4;
    *v4 = v1;
    v4[1] = sub_1A43AE40C;

    return sub_1A43B1E70((v1 + 48));
  }

  else
  {
    v2 = *(v1 + 8);

    return v2();
  }
}

uint64_t sub_1A43AE40C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1A43AE500(uint64_t *a1)
{
  v2 = v1;
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v55 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v53 = &v50 - v7;
  v56 = v5;
  v57 = v4;
  v8 = type metadata accessor for OneUpSharePlaySessionHostJournal.Library.AssetEntry();
  v52 = sub_1A524DF24();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  v14 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v58 = &v50 - v16;
  v18 = a1[1];
  v62 = *a1;
  v17 = v62;
  v63 = v18;
  v59 = sub_1A43B8D30(&v62);
  KeyPath = swift_getKeyPath();
  v66 = v17;
  v67 = v18;
  OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, &v70);

  v21 = v70;
  v20 = v71;
  v22 = *(*v2 + 112);
  swift_beginAccess();
  v60 = v22;
  v68 = v21;
  v69 = v20;
  sub_1A524C484();

  v61 = v14;
  v23 = *(v14 + 48);
  if (v23(v13, 1, v8) == 1)
  {
    (*(v51 + 8))(v13, v52);
    swift_endAccess();
    v24 = swift_getKeyPath();
    v66 = v17;
    v67 = v18;
    OneUpSharePlayOverridableAsset.subscript.getter(v24, &v70);

    v25 = v70;
    v26 = v71;
    v27 = swift_getKeyPath();
    v62 = v17;
    v63 = v18;
    OneUpSharePlayOverridableAsset.subscript.getter(v27, &v68);

    v28 = v68;
    v29 = v69;
    v31 = v54;
    v30 = v55;
    v32 = v53;
    (*(v54 + 16))(v53, v2 + *(*v2 + 104), v55);
    v33 = MEMORY[0x1E69E7CC0];
    *(v10 + 1) = v29;
    *(v10 + 2) = v33;
    *v10 = v28;
    v34 = type metadata accessor for OneUpSharePlaySessionHostJournal.Library.AssetEntry();
    (*(v31 + 32))(&v10[*(v34 + 40)], v32, v30);
    v35 = v59;
    *&v10[*(v34 + 44)] = v59;
    (*(v61 + 56))(v10, 0, 1, v8);
    v68 = v25;
    v69 = v26;
    swift_beginAccess();
    sub_1A524C454();
    sub_1A524C494();
    swift_endAccess();
    return v35;
  }

  else
  {
    v37 = v61;
    v38 = v58;
    (*(v61 + 32))(v58, v13, v8);
    swift_endAccess();
    v39 = *&v38[*(v8 + 44)];
    if ((v39 & 0x10) != 0)
    {
      v40 = v59 & ~v39 & 0xFFFFFFFFFFFFFFF7;
    }

    else
    {
      v40 = v59 & ~v39;
    }

    v41 = swift_getKeyPath();
    v70 = v17;
    v71 = v18;
    OneUpSharePlayOverridableAsset.subscript.getter(v41, &v68);

    v42 = v68;
    v43 = v69;
    swift_beginAccess();
    v64 = v42;
    v65 = v43;
    sub_1A524C454();
    v44 = sub_1A524C474();
    v46 = v45;
    if (v23(v45, 1, v8))
    {
      v44(&v62, 0);

      swift_endAccess();
      (*(v37 + 8))(v58, v8);
    }

    else
    {
      v47 = v58;
      v48 = *(v8 + 44);
      v49 = *(v46 + v48);
      if ((v40 & ~v49) != 0)
      {
        *(v46 + v48) = v49 | v40;
      }

      v44(&v62, 0);
      swift_endAccess();

      (*(v37 + 8))(v47, v8);
    }

    return v40;
  }
}

uint64_t sub_1A43AEB08(_OWORD *a1, uint64_t a2)
{
  *(v3 + 192) = a2;
  *(v3 + 200) = v2;
  *(v3 + 208) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1A43AEB30, 0, 0);
}

id sub_1A43AEB30()
{
  v1 = *(v0 + 192);
  if (v1)
  {
    KeyPath = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 176);

    v18 = *(v0 + 176);
    v19 = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(v19, v0 + 184);

    v20 = v18;
    v21 = *(v0 + 184);
    if (v18 >= 2612)
    {
      v22 = 2611.0 / v20;
      v20 = 2611.0 / v20 * v20;
      v21 = v22 * v21;
    }

    if (v21 > 1469.0)
    {
      v20 = v20 * (1469.0 / v21);
      v21 = v21 * (1469.0 / v21);
    }

    v23 = sub_1A524D264();
    v24 = *sub_1A486DB9C();
    if (os_log_type_enabled(v24, v23))
    {
      v25 = v24;
      v26 = swift_slowAlloc();
      swift_slowAlloc();
      *v26 = 136446210;
      v27 = swift_getKeyPath();
      OneUpSharePlayOverridableAsset.subscript.getter(v27, v0 + 112);

      sub_1A3C2EF94();
    }

    *(v0 + 96) = *(v0 + 208);
    v28 = swift_task_alloc();
    *(v0 + 224) = v28;
    *v28 = v0;
    v28[1] = sub_1A43AF3C0;
    v13 = (v0 + 96);
    v14 = v20 * 0.05;
    v15 = v21 * 0.05;
    v16 = 1;
    goto LABEL_45;
  }

  if ((v1 & 2) != 0)
  {
    v29 = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(v29, v0 + 160);

    v30 = *(v0 + 160);
    v31 = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(v31, v0 + 168);

    v32 = v30;
    v33 = *(v0 + 168);
    if (v30 >= 2612)
    {
      v34 = 2611.0 / v32;
      v32 = 2611.0 / v32 * v32;
      v33 = v34 * v33;
    }

    if (v33 > 1469.0)
    {
      v32 = v32 * (1469.0 / v33);
      v33 = v33 * (1469.0 / v33);
    }

    v35 = sub_1A524D264();
    v36 = *sub_1A486DB9C();
    if (os_log_type_enabled(v36, v35))
    {
      v37 = v36;
      v38 = swift_slowAlloc();
      swift_slowAlloc();
      *v38 = 136446210;
      v39 = swift_getKeyPath();
      OneUpSharePlayOverridableAsset.subscript.getter(v39, v0 + 80);

      sub_1A3C2EF94();
    }

    *(v0 + 64) = *(v0 + 208);
    v40 = swift_task_alloc();
    *(v0 + 232) = v40;
    *v40 = v0;
    v40[1] = sub_1A43AFB2C;
    v13 = (v0 + 64);
    v14 = v32;
    v15 = v33;
    v16 = 2;
    goto LABEL_45;
  }

  if ((v1 & 4) != 0)
  {
    v41 = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(v41, v0 + 144);

    v42 = *(v0 + 144);
    v43 = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(v43, v0 + 152);

    v44 = *(v0 + 152);
    result = MTLCreateSystemDefaultDevice();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v46 = result;
    v47 = v42;
    v48 = v44;
    if ([result supportsFamily_])
    {
      swift_unknownObjectRelease();
      if (v42 > 0x4000)
      {
        v49 = 16384.0;
        goto LABEL_36;
      }

      if (v44 > 0x4000)
      {
        v52 = 0x40D0000000000000;
LABEL_42:
        v53 = *&v52;
LABEL_43:
        v55 = v53 / v48;
        v47 = v47 * v55;
        v48 = v48 * v55;
        goto LABEL_44;
      }

      goto LABEL_44;
    }

    v50 = [v46 supportsFamily_];
    swift_unknownObjectRelease();
    if (v50)
    {
      if (v42 <= 0x2000)
      {
        if (v44 > 0x2000)
        {
          v52 = 0x40C0000000000000;
          goto LABEL_42;
        }

LABEL_44:
        *(v0 + 48) = *(v0 + 208);
        v56 = swift_task_alloc();
        *(v0 + 240) = v56;
        *v56 = v0;
        v56[1] = sub_1A43B0088;
        v13 = (v0 + 48);
        v14 = v47;
        v15 = v48;
        v16 = 4;
LABEL_45:

        return sub_1A43B3F14(v13, v16, v14, v15);
      }

      v49 = 8192.0;
    }

    else
    {
      if (v42 <= 4096)
      {
        if (v44 > 4096)
        {
          v52 = 0x40B0000000000000;
          goto LABEL_42;
        }

        goto LABEL_44;
      }

      v49 = 4096.0;
    }

LABEL_36:
    v53 = v49;
    v54 = v49 / v47;
    v47 = v49 / v47 * v47;
    v48 = v54 * v48;
    if (v49 >= v48)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v2 = *(v0 + 192) & 0x18;
  if ((v1 & 0x18) != 0)
  {
    v3 = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(v3, v0 + 128);

    v4 = *(v0 + 128);
    v5 = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(v5, v0 + 136);

    v6 = *(v0 + 136);
    v7 = sub_1A524D264();
    v8 = *sub_1A486DB9C();
    if (os_log_type_enabled(v8, v7))
    {
      v9 = v8;
      v10 = swift_slowAlloc();
      swift_slowAlloc();
      *v10 = 136446466;
      v11 = swift_getKeyPath();
      OneUpSharePlayOverridableAsset.subscript.getter(v11, v0 + 32);

      sub_1A3C2EF94();
    }

    *(v0 + 16) = *(v0 + 208);
    v12 = swift_task_alloc();
    *(v0 + 248) = v12;
    *v12 = v0;
    v12[1] = sub_1A43B0444;
    v13 = (v0 + 16);
    v14 = v4;
    v15 = v6;
    v16 = v2;
    goto LABEL_45;
  }

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_1A43AF3C0()
{

  return MEMORY[0x1EEE6DFA0](sub_1A43AF4BC, 0, 0);
}

id sub_1A43AF4BC()
{
  v1 = *(v0 + 192);
  if ((v1 & 2) != 0)
  {
    KeyPath = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 160);

    v18 = *(v0 + 160);
    v19 = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(v19, v0 + 168);

    v20 = v18;
    v21 = *(v0 + 168);
    if (v18 >= 2612)
    {
      v22 = 2611.0 / v20;
      v20 = 2611.0 / v20 * v20;
      v21 = v22 * v21;
    }

    if (v21 > 1469.0)
    {
      v20 = v20 * (1469.0 / v21);
      v21 = v21 * (1469.0 / v21);
    }

    v23 = sub_1A524D264();
    v24 = *sub_1A486DB9C();
    if (os_log_type_enabled(v24, v23))
    {
      v25 = v24;
      v26 = swift_slowAlloc();
      swift_slowAlloc();
      *v26 = 136446210;
      v27 = swift_getKeyPath();
      OneUpSharePlayOverridableAsset.subscript.getter(v27, v0 + 80);

      sub_1A3C2EF94();
    }

    *(v0 + 64) = *(v0 + 208);
    v28 = swift_task_alloc();
    *(v0 + 232) = v28;
    *v28 = v0;
    v28[1] = sub_1A43AFB2C;
    v13 = (v0 + 64);
    v14 = v20;
    v15 = v21;
    v16 = 2;
    goto LABEL_37;
  }

  if ((v1 & 4) != 0)
  {
    v29 = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(v29, v0 + 144);

    v30 = *(v0 + 144);
    v31 = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(v31, v0 + 152);

    v32 = *(v0 + 152);
    result = MTLCreateSystemDefaultDevice();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v34 = result;
    v35 = v30;
    v36 = v32;
    if ([result supportsFamily_])
    {
      swift_unknownObjectRelease();
      if (v30 > 0x4000)
      {
        v37 = 16384.0;
        goto LABEL_28;
      }

      if (v32 > 0x4000)
      {
        v40 = 0x40D0000000000000;
LABEL_34:
        v41 = *&v40;
LABEL_35:
        v43 = v41 / v36;
        v35 = v35 * v43;
        v36 = v36 * v43;
        goto LABEL_36;
      }

      goto LABEL_36;
    }

    v38 = [v34 supportsFamily_];
    swift_unknownObjectRelease();
    if (v38)
    {
      if (v30 <= 0x2000)
      {
        if (v32 > 0x2000)
        {
          v40 = 0x40C0000000000000;
          goto LABEL_34;
        }

LABEL_36:
        *(v0 + 48) = *(v0 + 208);
        v44 = swift_task_alloc();
        *(v0 + 240) = v44;
        *v44 = v0;
        v44[1] = sub_1A43B0088;
        v13 = (v0 + 48);
        v14 = v35;
        v15 = v36;
        v16 = 4;
LABEL_37:

        return sub_1A43B3F14(v13, v16, v14, v15);
      }

      v37 = 8192.0;
    }

    else
    {
      if (v30 <= 4096)
      {
        if (v32 > 4096)
        {
          v40 = 0x40B0000000000000;
          goto LABEL_34;
        }

        goto LABEL_36;
      }

      v37 = 4096.0;
    }

LABEL_28:
    v41 = v37;
    v42 = v37 / v35;
    v35 = v37 / v35 * v35;
    v36 = v42 * v36;
    if (v37 >= v36)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v2 = *(v0 + 192) & 0x18;
  if ((v1 & 0x18) != 0)
  {
    v3 = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(v3, v0 + 128);

    v4 = *(v0 + 128);
    v5 = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(v5, v0 + 136);

    v6 = *(v0 + 136);
    v7 = sub_1A524D264();
    v8 = *sub_1A486DB9C();
    if (os_log_type_enabled(v8, v7))
    {
      v9 = v8;
      v10 = swift_slowAlloc();
      swift_slowAlloc();
      *v10 = 136446466;
      v11 = swift_getKeyPath();
      OneUpSharePlayOverridableAsset.subscript.getter(v11, v0 + 32);

      sub_1A3C2EF94();
    }

    *(v0 + 16) = *(v0 + 208);
    v12 = swift_task_alloc();
    *(v0 + 248) = v12;
    *v12 = v0;
    v12[1] = sub_1A43B0444;
    v13 = (v0 + 16);
    v14 = v4;
    v15 = v6;
    v16 = v2;
    goto LABEL_37;
  }

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1A43AFB2C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A43AFC28, 0, 0);
}

id sub_1A43AFC28()
{
  v1 = *(v0 + 192);
  if ((v1 & 4) != 0)
  {
    KeyPath = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 144);

    v18 = *(v0 + 144);
    v19 = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(v19, v0 + 152);

    v20 = *(v0 + 152);
    result = MTLCreateSystemDefaultDevice();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v22 = result;
    v23 = v18;
    v24 = v20;
    if ([result supportsFamily_])
    {
      swift_unknownObjectRelease();
      if (v18 > 0x4000)
      {
        v25 = 16384.0;
        goto LABEL_20;
      }

      if (v20 > 0x4000)
      {
        v28 = 0x40D0000000000000;
LABEL_26:
        v29 = *&v28;
LABEL_27:
        v31 = v29 / v24;
        v23 = v23 * v31;
        v24 = v24 * v31;
        goto LABEL_28;
      }

      goto LABEL_28;
    }

    v26 = [v22 supportsFamily_];
    swift_unknownObjectRelease();
    if (v26)
    {
      if (v18 <= 0x2000)
      {
        if (v20 > 0x2000)
        {
          v28 = 0x40C0000000000000;
          goto LABEL_26;
        }

LABEL_28:
        *(v0 + 48) = *(v0 + 208);
        v32 = swift_task_alloc();
        *(v0 + 240) = v32;
        *v32 = v0;
        v32[1] = sub_1A43B0088;
        v13 = (v0 + 48);
        v14 = v23;
        v15 = v24;
        v16 = 4;
LABEL_29:

        return sub_1A43B3F14(v13, v16, v14, v15);
      }

      v25 = 8192.0;
    }

    else
    {
      if (v18 <= 4096)
      {
        if (v20 > 4096)
        {
          v28 = 0x40B0000000000000;
          goto LABEL_26;
        }

        goto LABEL_28;
      }

      v25 = 4096.0;
    }

LABEL_20:
    v29 = v25;
    v30 = v25 / v23;
    v23 = v25 / v23 * v23;
    v24 = v30 * v24;
    if (v25 >= v24)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v2 = *(v0 + 192) & 0x18;
  if ((v1 & 0x18) != 0)
  {
    v3 = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(v3, v0 + 128);

    v4 = *(v0 + 128);
    v5 = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(v5, v0 + 136);

    v6 = *(v0 + 136);
    v7 = sub_1A524D264();
    v8 = *sub_1A486DB9C();
    if (os_log_type_enabled(v8, v7))
    {
      v9 = v8;
      v10 = swift_slowAlloc();
      swift_slowAlloc();
      *v10 = 136446466;
      v11 = swift_getKeyPath();
      OneUpSharePlayOverridableAsset.subscript.getter(v11, v0 + 32);

      sub_1A3C2EF94();
    }

    *(v0 + 16) = *(v0 + 208);
    v12 = swift_task_alloc();
    *(v0 + 248) = v12;
    *v12 = v0;
    v12[1] = sub_1A43B0444;
    v13 = (v0 + 16);
    v14 = v4;
    v15 = v6;
    v16 = v2;
    goto LABEL_29;
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1A43B0088()
{

  return MEMORY[0x1EEE6DFA0](sub_1A43B0184, 0, 0);
}

uint64_t sub_1A43B0184()
{
  v1 = *(v0 + 192) & 0x18;
  if (v1)
  {
    KeyPath = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 128);

    v3 = *(v0 + 128);
    v4 = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(v4, v0 + 136);

    v5 = *(v0 + 136);
    v6 = sub_1A524D264();
    v7 = *sub_1A486DB9C();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = v7;
      v9 = swift_slowAlloc();
      swift_slowAlloc();
      *v9 = 136446466;
      v10 = swift_getKeyPath();
      OneUpSharePlayOverridableAsset.subscript.getter(v10, v0 + 32);

      sub_1A3C2EF94();
    }

    *(v0 + 16) = *(v0 + 208);
    v11 = swift_task_alloc();
    *(v0 + 248) = v11;
    *v11 = v0;
    v11[1] = sub_1A43B0444;

    return sub_1A43B3F14((v0 + 16), v1, v3, v5);
  }

  else
  {
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1A43B0444()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A43B0538(_OWORD *a1)
{
  v3 = v1;
  *(v2 + 272) = v3;
  *(v2 + 280) = *v3;
  v5 = sub_1A52411C4();
  *(v2 + 288) = v5;
  *(v2 + 296) = *(v5 - 8);
  *(v2 + 304) = swift_task_alloc();
  v6 = sub_1A52418E4();
  *(v2 + 312) = v6;
  *(v2 + 320) = *(v6 - 8);
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();
  *(v2 + 344) = type metadata accessor for OneUpSharePlayStreamingVideoItem(0);
  *(v2 + 352) = swift_task_alloc();
  v7 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0);
  *(v2 + 360) = v7;
  *(v2 + 368) = *(v7 - 8);
  *(v2 + 376) = swift_task_alloc();
  *(v2 + 384) = swift_task_alloc();
  *(v2 + 392) = swift_task_alloc();
  sub_1A43B99E0();
  *(v2 + 400) = v8;
  *(v2 + 408) = swift_task_alloc();
  sub_1A3C56708(0, &unk_1EB1391B0, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format, MEMORY[0x1E69E6720]);
  *(v2 + 416) = swift_task_alloc();
  *(v2 + 424) = swift_task_alloc();
  *(v2 + 432) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1A43B07D0, 0, 0);
}

uint64_t sub_1A43B07D0()
{
  KeyPath = swift_getKeyPath();
  OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 504);

  v2 = *(v0 + 504);
  v3 = [objc_allocWithZone(PXVideoRequestOptions) init];
  *(v0 + 448) = v3;
  [v3 setDeliveryMode_];
  [v3 setAllowMediumHighQuality_];
  [v3 setStreamingAllowed_];
  [v3 setNetworkAccessAllowed_];
  [v3 setDownloadIntent_];
  [v3 setStreamingVideoIntent_];
  [v3 setRestrictToStreamable_];
  v4 = sub_1A524D264();
  v5 = sub_1A486DB9C();
  *(v0 + 456) = v5;
  v6 = *v5;
  if (os_log_type_enabled(*v5, v4))
  {
    v7 = v6;
    v8 = swift_slowAlloc();
    swift_slowAlloc();
    *v8 = 136446210;
    v9 = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(v9, v0 + 248);

    sub_1A3C2EF94();
  }

  v10 = *(v0 + 272);
  v11 = swift_task_alloc();
  *(v0 + 464) = v11;
  v12 = *(v0 + 432);
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 40) = v3;
  *(v11 + 48) = v2 & 1;
  v13 = swift_task_alloc();
  *(v0 + 472) = v13;
  *v13 = v0;
  v13[1] = sub_1A43B0AD0;
  v15 = *(v0 + 400);
  v14 = *(v0 + 408);

  return MEMORY[0x1EEE6DDE0](v14, 0, 0, 0xD000000000000014, 0x80000001A53D4230, sub_1A43B9AA4, v11, v15);
}

uint64_t sub_1A43B0AD0()
{

  return MEMORY[0x1EEE6DFA0](sub_1A43B0BE8, 0, 0);
}

uint64_t sub_1A43B0BE8()
{
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  v3 = *(v0 + 408);
  v4 = *(v0 + 360);
  v5 = *(v0 + 368);
  v6 = (v3 + *(*(v0 + 400) + 48));
  v8 = *v6;
  v7 = v6[1];
  sub_1A43B9AB4(v3, v1);
  sub_1A43BAA30(v1, v2, &unk_1EB1391B0, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
  v9 = (*(v5 + 48))(v2, 1, v4);
  v10 = *(v0 + 416);
  if (v9 != 1)
  {
    v18 = *(v0 + 384);
    v17 = *(v0 + 392);
    v19 = *(v0 + 376);
    v20 = *(v0 + 352);
    sub_1A43B9B48(v10, v17);
    sub_1A43BA748(v17, v18, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
    sub_1A48162B4(v18, v20);
    KeyPath = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 136);

    sub_1A4814A30(*(v0 + 136), *(v0 + 144), 2, v8, v7, v0 + 16);
    sub_1A43BA748(v17, v19, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v23 = *(v0 + 456);
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v24 = sub_1A524D264();
        v25 = *v23;
        if (os_log_type_enabled(v25, v24))
        {
          v26 = v25;
          v27 = swift_slowAlloc();
          swift_slowAlloc();
          *v27 = 136446210;
          v28 = swift_getKeyPath();
          OneUpSharePlayOverridableAsset.subscript.getter(v28, v0 + 216);

          sub_1A3C2EF94();
        }

        sub_1A43B9D0C(*(v0 + 376), type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
      }

      else
      {
        v37 = sub_1A524D264();
        v38 = *v23;
        if (os_log_type_enabled(v38, v37))
        {
          v39 = v38;
          v40 = swift_slowAlloc();
          swift_slowAlloc();
          *v40 = 136446210;
          v41 = swift_getKeyPath();
          OneUpSharePlayOverridableAsset.subscript.getter(v41, v0 + 200);

          sub_1A3C2EF94();
        }
      }
    }

    else
    {
      sub_1A43B9D0C(*(v0 + 376), type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
      v32 = sub_1A524D264();
      v33 = *v23;
      if (os_log_type_enabled(v33, v32))
      {
        v34 = v33;
        v35 = swift_slowAlloc();
        swift_slowAlloc();
        *v35 = 136446210;
        v36 = swift_getKeyPath();
        OneUpSharePlayOverridableAsset.subscript.getter(v36, v0 + 232);

        sub_1A3C2EF94();
      }
    }

    v42 = *(v0 + 32);
    *(v0 + 56) = *(v0 + 16);
    *(v0 + 72) = v42;
    *(v0 + 88) = *(v0 + 48);
    swift_getAssociatedTypeWitness();
    v43 = *(swift_getAssociatedConformanceWitness() + 64);
    swift_checkMetadataState();
    v45 = v43 + *v43;
    v44 = swift_task_alloc();
    *(v0 + 480) = v44;
    sub_1A43B9BAC(&unk_1EB1391C0, type metadata accessor for OneUpSharePlayStreamingVideoItem);
    sub_1A435C580();
    sub_1A435C5D4();
    *v44 = v0;
    v44[1] = sub_1A43B14C0;

    __asm { BRAA            X8, X16 }
  }

  v11 = *(v0 + 456);

  sub_1A3C2C848(v10, &unk_1EB1391B0, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format, MEMORY[0x1E69E6720], sub_1A3C56708);
  v12 = sub_1A524D244();
  v13 = *v11;
  if (os_log_type_enabled(*v11, v12))
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    swift_slowAlloc();
    *v15 = 136446210;
    v16 = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(v16, v0 + 120);

    sub_1A3C2EF94();
  }

  v29 = *(v0 + 424);

  sub_1A3C2C848(v29, &unk_1EB1391B0, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format, MEMORY[0x1E69E6720], sub_1A3C56708);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1A43B14C0()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v3 = sub_1A43B1AF0;
  }

  else
  {
    sub_1A435BFA0(v2 + 16);
    v3 = sub_1A43B15DC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A43B15DC()
{
  v1 = *(v0 + 432);
  v2 = *(*(v0 + 272) + *(**(v0 + 272) + 104));
  *(v0 + 496) = v2;
  *(v0 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A43B161C, v2, 0);
}

uint64_t sub_1A43B161C()
{
  sub_1A43B67F4(*(v0 + 336), (v0 + 168));

  return MEMORY[0x1EEE6DFA0](sub_1A43B168C, 0, 0);
}

uint64_t sub_1A43B168C()
{
  v1 = *(v0 + 456);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 312);
  v5 = *(v0 + 320);
  v6 = sub_1A524D264();
  v7 = *v1;
  (*(v5 + 16))(v3, v2, v4);
  if (os_log_type_enabled(v7, v6))
  {
    v8 = *(v0 + 328);
    v23 = *(v0 + 320);
    v24 = *(v0 + 312);
    v10 = *(v0 + 296);
    v9 = *(v0 + 304);
    v11 = *(v0 + 288);
    v7;
    v12 = swift_slowAlloc();
    swift_slowAlloc();
    *v12 = 136446466;
    sub_1A52418C4();
    sub_1A43B9BAC(&qword_1EB126020, MEMORY[0x1E69695A8]);
    sub_1A524EA44();
    (*(v10 + 8))(v9, v11);
    (*(v23 + 8))(v8, v24);
    sub_1A3C2EF94();
  }

  v13 = *(v0 + 424);
  v14 = *(v0 + 392);
  v15 = *(v0 + 352);
  v17 = *(v0 + 328);
  v16 = *(v0 + 336);
  v18 = *(v0 + 312);
  v19 = *(v0 + 320);

  v20 = *(v19 + 8);
  v20(v17, v18);
  v20(v16, v18);
  sub_1A43B9D0C(v15, type metadata accessor for OneUpSharePlayStreamingVideoItem);
  sub_1A43B9D0C(v14, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
  sub_1A3C2C848(v13, &unk_1EB1391B0, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format, MEMORY[0x1E69E6720], sub_1A3C56708);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1A43B1AF0()
{
  v1 = *(v0 + 456);
  sub_1A435BFA0(v0 + 16);
  v2 = sub_1A524D244();
  v3 = *v1;
  if (os_log_type_enabled(v3, v2))
  {
    v4 = v3;
    v5 = swift_slowAlloc();
    swift_slowAlloc();
    *v5 = 136446466;
    KeyPath = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 152);

    sub_1A3C2EF94();
  }

  v7 = *(v0 + 488);
  v8 = *(v0 + 424);
  v9 = *(v0 + 392);
  v10 = *(v0 + 352);

  sub_1A43B9D0C(v10, type metadata accessor for OneUpSharePlayStreamingVideoItem);
  sub_1A43B9D0C(v9, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
  sub_1A3C2C848(v8, &unk_1EB1391B0, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format, MEMORY[0x1E69E6720], sub_1A3C56708);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1A43B1E70(_OWORD *a1)
{
  v3 = v1;
  *(v2 + 480) = v3;
  *(v2 + 488) = *v3;
  v5 = sub_1A52411C4();
  *(v2 + 496) = v5;
  *(v2 + 504) = *(v5 - 8);
  *(v2 + 512) = swift_task_alloc();
  v6 = sub_1A52418E4();
  *(v2 + 520) = v6;
  *(v2 + 528) = *(v6 - 8);
  *(v2 + 536) = swift_task_alloc();
  *(v2 + 544) = swift_task_alloc();
  *(v2 + 552) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1A43B1FD0, 0, 0);
}

uint64_t sub_1A43B1FD0()
{
  v1 = [objc_allocWithZone(PXLivePhotoRequestOptions) init];
  *(v0 + 568) = v1;
  [v1 setDeliveryMode_];
  [v1 setNetworkAccessAllowed_];
  [v1 setDownloadIntent_];
  [v1 setPreferHDR_];
  KeyPath = swift_getKeyPath();
  OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 464);

  v3 = *(v0 + 464);
  v4 = swift_getKeyPath();
  OneUpSharePlayOverridableAsset.subscript.getter(v4, v0 + 472);

  v5 = v3;
  v6 = *(v0 + 472);
  if (v3 >= 2612)
  {
    v7 = 2611.0 / v5;
    v5 = 2611.0 / v5 * v5;
    v6 = v7 * v6;
  }

  if (v6 > 1469.0)
  {
    v8 = v6 * (1469.0 / v6);
  }

  else
  {
    v8 = v6;
  }

  if (v6 > 1469.0)
  {
    v9 = v5 * (1469.0 / v6);
  }

  else
  {
    v9 = v5;
  }

  v10 = sub_1A524D264();
  v11 = sub_1A486DB9C();
  *(v0 + 576) = v11;
  v12 = *v11;
  if (os_log_type_enabled(*v11, v10))
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    swift_slowAlloc();
    *v14 = 136446210;
    v15 = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(v15, v0 + 448);

    sub_1A3C2EF94();
  }

  v16 = *(v0 + 480);
  v17 = swift_task_alloc();
  *(v0 + 584) = v17;
  v18 = *(v0 + 552);
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 40) = v9;
  *(v17 + 48) = v8;
  *(v17 + 56) = v1;
  v19 = swift_task_alloc();
  *(v0 + 592) = v19;
  sub_1A43B9DEC();
  *v19 = v0;
  v19[1] = sub_1A43B2318;

  return MEMORY[0x1EEE6DDE0](v0 + 272, 0, 0, 0xD000000000000018, 0x80000001A53D4280, sub_1A43B9DD4, v17, v20);
}

uint64_t sub_1A43B2318()
{

  return MEMORY[0x1EEE6DFA0](sub_1A43B2430, 0, 0);
}

uint64_t sub_1A43B2430()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  *(v0 + 600) = v1;
  *(v0 + 608) = v2;
  if (v1)
  {
    if (v2)
    {
      v3 = *(v0 + 576);
      v4 = sub_1A524D264();
      v5 = *v3;
      if (os_log_type_enabled(v5, v4))
      {
        v6 = v5;
        v7 = swift_slowAlloc();
        swift_slowAlloc();
        *v7 = 136446210;
        KeyPath = swift_getKeyPath();
        OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 432);

        sub_1A3C2EF94();
      }

      v9 = [objc_opt_self() defaultManager];
      *(v0 + 616) = v9;
      v10 = [objc_allocWithZone(MEMORY[0x1E6978708]) init];
      *(v0 + 624) = v10;
      [v10 setNetworkAccessAllowed_];
      v11 = swift_task_alloc();
      *(v0 + 632) = v11;
      v11[2] = v9;
      v11[3] = v1;
      v11[4] = v10;
      v12 = swift_task_alloc();
      *(v0 + 640) = v12;
      sub_1A43B9E74();
      *(v0 + 648) = v13;
      *v12 = v0;
      v12[1] = sub_1A43B293C;

      return MEMORY[0x1EEE6DDE0](v0 + 224, 0, 0, 0xD00000000000001BLL, 0x80000001A53D42A0, sub_1A43B9E68, v11, v13);
    }

    goto LABEL_12;
  }

  v14 = *(v0 + 576);
  v15 = sub_1A524D244();
  v16 = *v14;
  if (os_log_type_enabled(v16, v15))
  {
    v17 = v16;
    v18 = swift_slowAlloc();
    swift_slowAlloc();
    *v18 = 136446210;
    v19 = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(v19, v0 + 304);

    sub_1A3C2EF94();
  }

  if (!v2)
  {
LABEL_12:
    v20 = *(v0 + 576);
    v21 = sub_1A524D244();
    v22 = *v20;
    if (os_log_type_enabled(v22, v21))
    {
      v23 = v22;
      v24 = swift_slowAlloc();
      swift_slowAlloc();
      *v24 = 136446210;
      v25 = swift_getKeyPath();
      OneUpSharePlayOverridableAsset.subscript.getter(v25, v0 + 288);

      sub_1A3C2EF94();
    }

    goto LABEL_15;
  }

LABEL_15:

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1A43B293C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A43B2A54, 0, 0);
}

uint64_t sub_1A43B2A54()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  *(v0 + 656) = v1;
  *(v0 + 664) = v2;
  v3 = *(v0 + 240);
  if (v3)
  {
    v4 = *(v0 + 576);
    v5 = sub_1A524D244();
    v6 = *v4;
    v7 = os_log_type_enabled(v6, v5);
    v8 = v6;
    v9 = v3;
    v10 = *(v0 + 624);
    v11 = *(v0 + 616);
    v12 = *(v0 + 608);
    v23 = *(v0 + 600);
    if (v7)
    {
      v13 = swift_slowAlloc();
      swift_slowAlloc();
      swift_slowAlloc();
      *v13 = 136446466;
      KeyPath = swift_getKeyPath();
      OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 416);

      sub_1A3C2EF94();
    }

    sub_1A3C59280(v1, v2);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v15 = *(v0 + 624);
    v16 = *(v0 + 616);
    v17 = *(v0 + 608);
    v18 = swift_task_alloc();
    *(v0 + 672) = v18;
    v18[2] = v16;
    v18[3] = v17;
    v18[4] = v15;
    v19 = swift_task_alloc();
    *(v0 + 680) = v19;
    *v19 = v0;
    v19[1] = sub_1A43B2E00;
    v20 = *(v0 + 648);

    return MEMORY[0x1EEE6DDE0](v0 + 248, 0, 0, 0xD00000000000001BLL, 0x80000001A53D42A0, sub_1A43BAB9C, v18, v20);
  }
}

uint64_t sub_1A43B2E00()
{

  return MEMORY[0x1EEE6DFA0](sub_1A43B2F18, 0, 0);
}

uint64_t sub_1A43B2F18()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  *(v0 + 688) = v2;
  *(v0 + 696) = v1;
  v3 = *(v0 + 264);
  if (!v3)
  {
    v16 = *(v0 + 656);
    v17 = *(v0 + 608);
    v18 = *(v0 + 600);
    sub_1A3D602A8(v16, *(v0 + 664));
    v19 = [v18 uniformTypeIdentifier];
    sub_1A524C674();

    PXDisplayCollectionDetailedCountsMake(v16);
    v21 = v20;
    v23 = v22;
    *(v0 + 704) = v20;
    *(v0 + 712) = v22;
    *(v0 + 720) = v24;
    sub_1A3D602A8(v2, v1);
    v25 = [v17 uniformTypeIdentifier];
    sub_1A524C674();

    PXDisplayCollectionDetailedCountsMake(v2);
    *(v0 + 728) = v26;
    *(v0 + 736) = v27;
    *(v0 + 744) = v28;
    sub_1A3D602A8(v21, v23);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v4 = *(v0 + 576);
  v5 = sub_1A524D244();
  v6 = *v4;
  v7 = os_log_type_enabled(v6, v5);
  v30 = v6;
  if (v7)
  {
    swift_slowAlloc();
    swift_slowAlloc();
    swift_slowAlloc();
    KeyPath = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 400);

    sub_1A3C2EF94();
  }

  v8 = *(v0 + 664);
  v9 = *(v0 + 656);
  v10 = *(v0 + 624);
  v11 = *(v0 + 616);
  v12 = *(v0 + 608);
  v13 = *(v0 + 600);

  sub_1A3C59280(v9, v8);
  sub_1A3C59280(v2, v1);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1A43B3518()
{
  v2 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v3 = sub_1A43B3B70;
  }

  else
  {
    sub_1A435BFA0(v2 + 144);
    v3 = sub_1A43B3634;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A43B3634()
{
  v1 = *(*(v0 + 480) + *(**(v0 + 480) + 104));
  *(v0 + 768) = v1;
  *(v0 + 352) = *(v0 + 552);
  return MEMORY[0x1EEE6DFA0](sub_1A43B3678, v1, 0);
}

uint64_t sub_1A43B3678()
{
  sub_1A43B67F4(*(v0 + 544), (v0 + 352));

  return MEMORY[0x1EEE6DFA0](sub_1A43B36E8, 0, 0);
}

uint64_t sub_1A43B36E8()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);
  v5 = *(v0 + 520);
  v6 = sub_1A524D264();
  v7 = *v1;
  (*(v4 + 16))(v3, v2, v5);
  LODWORD(v2) = os_log_type_enabled(v7, v6);
  v34 = v7;
  if (v2)
  {
    v8 = *(v0 + 536);
    v25 = *(v0 + 528);
    v26 = *(v0 + 520);
    v9 = *(v0 + 504);
    v10 = *(v0 + 512);
    v11 = *(v0 + 496);
    v12 = swift_slowAlloc();
    swift_slowAlloc();
    *v12 = 136446466;
    sub_1A52418C4();
    sub_1A43B9BAC(&qword_1EB126020, MEMORY[0x1E69695A8]);
    sub_1A524EA44();
    (*(v9 + 8))(v10, v11);
    (*(v25 + 8))(v8, v26);
    sub_1A3C2EF94();
  }

  v13 = *(v0 + 736);
  v14 = *(v0 + 728);
  v27 = *(v0 + 712);
  v15 = *(v0 + 704);
  v29 = *(v0 + 696);
  v28 = *(v0 + 688);
  v32 = *(v0 + 664);
  v31 = *(v0 + 656);
  v16 = *(v0 + 624);
  v17 = *(v0 + 616);
  v18 = *(v0 + 608);
  v19 = *(v0 + 600);
  v33 = *(v0 + 544);
  v30 = *(v0 + 536);
  v20 = *(v0 + 528);
  v21 = *(v0 + 520);

  sub_1A435CBA8(v0 + 16);
  sub_1A3C59280(v14, v13);

  sub_1A3C59280(v15, v27);

  sub_1A3C59280(v28, v29);
  sub_1A3C59280(v31, v32);
  v22 = *(v20 + 8);
  v22(v30, v21);
  v22(v33, v21);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1A43B3B70()
{
  v1 = *(v0 + 576);
  sub_1A435BFA0(v0 + 144);
  v2 = sub_1A524D244();
  v3 = *v1;
  v4 = os_log_type_enabled(v3, v2);
  v22 = v3;
  if (v4)
  {
    v5 = swift_slowAlloc();
    swift_slowAlloc();
    swift_slowAlloc();
    *v5 = 136446466;
    KeyPath = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 336);

    sub_1A3C2EF94();
  }

  v17 = *(v0 + 736);
  v7 = *(v0 + 728);
  v8 = *(v0 + 712);
  v9 = *(v0 + 704);
  v10 = *(v0 + 696);
  v11 = *(v0 + 688);
  v12 = *(v0 + 664);
  v13 = *(v0 + 656);
  v18 = *(v0 + 624);
  v19 = *(v0 + 616);
  v20 = *(v0 + 608);
  v21 = *(v0 + 760);
  v14 = *(v0 + 600);

  sub_1A3C59280(v13, v12);
  sub_1A3C59280(v11, v10);
  sub_1A3C59280(v9, v8);

  sub_1A3C59280(v7, v17);

  sub_1A435CBA8(v0 + 16);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1A43B3F14(_OWORD *a1, uint64_t a2, double a3, double a4)
{
  v6 = v4;
  *(v5 + 384) = a2;
  *(v5 + 392) = v6;
  *(v5 + 368) = a3;
  *(v5 + 376) = a4;
  *(v5 + 400) = *v6;
  v8 = sub_1A52411C4();
  *(v5 + 408) = v8;
  *(v5 + 416) = *(v8 - 8);
  *(v5 + 424) = swift_task_alloc();
  v9 = sub_1A52418E4();
  *(v5 + 432) = v9;
  *(v5 + 440) = *(v9 - 8);
  *(v5 + 448) = swift_task_alloc();
  *(v5 + 456) = swift_task_alloc();
  *(v5 + 464) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1A43B4074, 0, 0);
}

uint64_t sub_1A43B4074()
{
  v1 = *(v0 + 384);
  v30 = *(v0 + 464);
  v2 = [objc_allocWithZone(off_1E7721750) init];
  *(v0 + 480) = v2;
  [v2 setNetworkAccessAllowed_];
  [v2 setDeliveryMode_];
  [v2 setVersion_];
  KeyPath = swift_getKeyPath();
  OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 360);

  if (*(v0 + 360) == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [v2 setResizeMode_];
  [v2 setDownloadIntent_];
  [v2 setDownloadPriority_];
  v5 = sub_1A524D264();
  v6 = sub_1A486DB9C();
  *(v0 + 488) = v6;
  v7 = *v6;
  v8 = os_log_type_enabled(*v6, v5);
  if ((v1 & 0x18) != 0)
  {
    if (v8)
    {
      v9 = v7;
      v10 = swift_slowAlloc();
      swift_slowAlloc();
      *v10 = 136446466;
      v11 = swift_getKeyPath();
      OneUpSharePlayOverridableAsset.subscript.getter(v11, v0 + 344);

      sub_1A3C2EF94();
    }

    v12 = *(v0 + 392);
    v13 = swift_task_alloc();
    *(v0 + 496) = v13;
    v14 = *(v0 + 464);
    *(v13 + 16) = v12;
    *(v13 + 24) = v14;
    *(v13 + 40) = v2;
    v15 = swift_task_alloc();
    *(v0 + 504) = v15;
    sub_1A43BA494();
    v17 = v16;
    *v15 = v0;
    v15[1] = sub_1A43B455C;
    v18 = sub_1A43BA488;
    v19 = v0 + 96;
  }

  else
  {
    if (v8)
    {
      v20 = v7;
      v21 = swift_slowAlloc();
      swift_slowAlloc();
      *v21 = 136446722;
      v22 = swift_getKeyPath();
      OneUpSharePlayOverridableAsset.subscript.getter(v22, v0 + 312);

      sub_1A3C2EF94();
    }

    v23 = *(v0 + 392);
    v25 = *(v0 + 368);
    v24 = *(v0 + 376);
    v13 = swift_task_alloc();
    *(v0 + 512) = v13;
    v26 = *(v0 + 464);
    *(v13 + 16) = v23;
    *(v13 + 24) = v26;
    *(v13 + 40) = v25;
    *(v13 + 48) = v24;
    *(v13 + 56) = v2;
    v27 = swift_task_alloc();
    *(v0 + 520) = v27;
    sub_1A43BA2A4();
    v17 = v28;
    *v27 = v0;
    v27[1] = sub_1A43B4E40;
    v18 = sub_1A43BA274;
    v19 = v0 + 128;
  }

  return MEMORY[0x1EEE6DDE0](v19, 0, 0, 0xD000000000000032, 0x80000001A53D4310, v18, v13, v17);
}

uint64_t sub_1A43B455C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A43B4674, 0, 0);
}

uint64_t sub_1A43B4674()
{
  v46 = v0;
  v1 = *(v0 + 488);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 120);
  v43 = *(v0 + 112);
  v5 = sub_1A524D264();
  v6 = *v1;
  if (os_log_type_enabled(v6, v5))
  {
    v7 = v6;
    v39 = *(v0 + 464);
    v8 = swift_slowAlloc();
    swift_slowAlloc();
    *v8 = 136446466;
    KeyPath = swift_getKeyPath();
    *v45 = v39;
    OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 328);

    sub_1A3C2EF94();
  }

  if (v2 >> 60 != 15)
  {
    sub_1A3D602A8(v3, v2);
    *(v0 + 536) = v2;
    *(v0 + 528) = v3;
    v19 = sub_1A524D264();
    v20 = sub_1A486DB9C();
    *(v0 + 544) = v20;
    v21 = *v20;
    if (os_log_type_enabled(*v20, v19))
    {
      v40 = *(v0 + 464);
      sub_1A3D602A8(v3, v2);
      sub_1A3D602A8(v3, v2);
      v22 = v21;
      v23 = swift_slowAlloc();
      swift_slowAlloc();
      *v23 = 136446722;
      v24 = swift_getKeyPath();
      *v45 = v40;
      OneUpSharePlayOverridableAsset.subscript.getter(v24, v0 + 264);

      sub_1A3C2EF94();
    }

    v25 = *(v0 + 384);
    sub_1A3D602A8(v3, v2);
    PXDisplayCollectionDetailedCountsMake(v3);
    v27 = v26;
    v29 = v28;
    *(v0 + 552) = v26;
    *(v0 + 560) = v28;
    v30 = __ROR8__(v25 - 2, 1);
    v31 = 1;
    if (v30 > 2)
    {
      if (v30 != 7 && v30 != 3)
      {
LABEL_17:
        v31 = 0;
      }
    }

    else
    {
      if (v30)
      {
        if (v30 == 1)
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }

      *v45 = *(v0 + 464);
      v31 = (sub_1A43B8D30(v45) & 0x1C) == 0;
    }

LABEL_19:
    v41 = *(v0 + 464);
    v32 = sub_1A48143E8(v31, (*(v0 + 384) & 0x10) != 0, (v25 & 0x18) != 0);
    v33 = swift_getKeyPath();
    *v45 = v41;
    OneUpSharePlayOverridableAsset.subscript.getter(v33, v0 + 184);

    sub_1A4814A30(*(v0 + 184), *(v0 + 192), v32 & 0x10101, v43, v4, v0 + 16);
    *(v0 + 200) = v27;
    *(v0 + 208) = v29;
    v34 = *(v0 + 32);
    *(v0 + 56) = *(v0 + 16);
    *(v0 + 72) = v34;
    *(v0 + 88) = *(v0 + 48);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v36 = *(AssociatedConformanceWitness + 64);
    v37 = swift_checkMetadataState();
    v42 = v36 + *v36;
    v38 = swift_task_alloc();
    *(v0 + 568) = v38;
    sub_1A435C204();
    sub_1A435C580();
    sub_1A435C5D4();
    *v38 = v0;
    v38[1] = sub_1A43B5AD0;
    v48 = v37;
    v49 = AssociatedConformanceWitness;

    __asm { BRAA            X8, X16 }
  }

  v10 = sub_1A524D244();
  v11 = *sub_1A486DB9C();
  v12 = os_log_type_enabled(v11, v10);
  v13 = v11;
  v14 = *(v0 + 480);
  if (v12)
  {
    v44 = *(v0 + 464);
    v15 = swift_slowAlloc();
    swift_slowAlloc();
    *v15 = 136446210;
    v16 = swift_getKeyPath();
    *v45 = v44;
    OneUpSharePlayOverridableAsset.subscript.getter(v16, v0 + 168);

    sub_1A3C2EF94();
  }

  sub_1A3DB556C(v3, v2);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1A43B4E40()
{

  return MEMORY[0x1EEE6DFA0](sub_1A43B4F58, 0, 0);
}

id sub_1A43B4F58()
{
  v71 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 144);
  v3 = *(v0 + 488);
  if (!v1)
  {

    v15 = sub_1A524D244();
    v16 = *v3;
    if (os_log_type_enabled(v16, v15))
    {
      v17 = v16;
      v67 = *(v0 + 464);
      v18 = swift_slowAlloc();
      swift_slowAlloc();
      *v18 = 136446210;
      KeyPath = swift_getKeyPath();
      v70 = v67;
      OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 152);

      sub_1A3C2EF94();
    }

    goto LABEL_22;
  }

  v66 = *(v0 + 136);
  v4 = sub_1A524D264();
  v5 = *v3;
  if (os_log_type_enabled(v5, v4))
  {
    v6 = v5;
    v62 = *(v0 + 464);
    v7 = swift_slowAlloc();
    swift_slowAlloc();
    *v7 = 136446722;
    v8 = swift_getKeyPath();
    v70 = v62;
    OneUpSharePlayOverridableAsset.subscript.getter(v8, v0 + 296);

    sub_1A3C2EF94();
  }

  if ((*(v0 + 384) & 4) != 0)
  {
    v20 = [(UIImage *)v1 CGImage];
    if (!v20)
    {
      v34 = *(v0 + 488);

      v35 = sub_1A524D244();
      v36 = *v34;
      if (os_log_type_enabled(v36, v35))
      {
        v37 = v36;
        v68 = *(v0 + 464);
        v38 = swift_slowAlloc();
        swift_slowAlloc();
        *v38 = 136446210;
        v39 = swift_getKeyPath();
        v70 = v68;
        OneUpSharePlayOverridableAsset.subscript.getter(v39, v0 + 280);

        sub_1A3C2EF94();
      }

      goto LABEL_22;
    }

    v21 = v20;
    v14 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
    v22 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
    result = [v22 workingColorSpace];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v24 = result;
    v25 = *MEMORY[0x1E695F910];
    sub_1A43BA350(MEMORY[0x1E69E7CC0]);
    type metadata accessor for CIImageRepresentationOption(0);
    sub_1A43B9BAC(&qword_1EB139258, type metadata accessor for CIImageRepresentationOption);
    v26 = sub_1A524C3D4();

    v10 = [v22 HEIFRepresentationOfImage:v14 format:v25 colorSpace:v24 options:v26];

    if (v10)
    {
      v11 = sub_1A5240EA4();
      v13 = v27;

LABEL_13:
      sub_1A3D602A8(v11, v13);
      *(v0 + 536) = v13;
      *(v0 + 528) = v11;
      v28 = sub_1A524D264();
      v29 = sub_1A486DB9C();
      *(v0 + 544) = v29;
      v30 = *v29;
      if (os_log_type_enabled(*v29, v28))
      {
        v63 = *(v0 + 464);
        sub_1A3D602A8(v11, v13);
        sub_1A3D602A8(v11, v13);
        v31 = v30;
        v32 = swift_slowAlloc();
        swift_slowAlloc();
        *v32 = 136446722;
        v33 = swift_getKeyPath();
        v70 = v63;
        OneUpSharePlayOverridableAsset.subscript.getter(v33, v0 + 264);

        sub_1A3C2EF94();
      }

      v48 = *(v0 + 384);
      sub_1A3D602A8(v11, v13);
      PXDisplayCollectionDetailedCountsMake(v11);
      v50 = v49;
      v52 = v51;
      *(v0 + 552) = v49;
      *(v0 + 560) = v51;
      v53 = __ROR8__(v48 - 2, 1);
      v54 = 1;
      if (v53 > 2)
      {
        if (v53 == 7 || v53 == 3)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (!v53)
        {
          v70 = *(v0 + 464);
          v54 = (sub_1A43B8D30(&v70) & 0x1C) == 0;
LABEL_34:
          v64 = *(v0 + 464);
          v55 = sub_1A48143E8(v54, (*(v0 + 384) & 0x10) != 0, (v48 & 0x18) != 0);
          v56 = swift_getKeyPath();
          v70 = v64;
          OneUpSharePlayOverridableAsset.subscript.getter(v56, v0 + 184);

          sub_1A4814A30(*(v0 + 184), *(v0 + 192), v55 & 0x10101, v66, v2, v0 + 16);
          *(v0 + 200) = v50;
          *(v0 + 208) = v52;
          v57 = *(v0 + 32);
          *(v0 + 56) = *(v0 + 16);
          *(v0 + 72) = v57;
          *(v0 + 88) = *(v0 + 48);
          swift_getAssociatedTypeWitness();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v59 = *(AssociatedConformanceWitness + 64);
          v60 = swift_checkMetadataState();
          v65 = v59 + *v59;
          v61 = swift_task_alloc();
          *(v0 + 568) = v61;
          sub_1A435C204();
          sub_1A435C580();
          sub_1A435C5D4();
          *v61 = v0;
          v61[1] = sub_1A43B5AD0;
          v73 = v60;
          v74 = AssociatedConformanceWitness;

          __asm { BRAA            X8, X16 }
        }

        if (v53 == 1)
        {
          goto LABEL_34;
        }
      }

      v54 = 0;
      goto LABEL_34;
    }
  }

  else
  {
    v9 = UIImageJPEGRepresentation(v1, 0.899999976);
    if (v9)
    {
      v10 = v9;
      v11 = sub_1A5240EA4();
      v13 = v12;
      v14 = v1;
      goto LABEL_13;
    }
  }

  v40 = sub_1A524D244();
  v41 = *sub_1A486DB9C();
  v42 = os_log_type_enabled(v41, v40);
  v43 = v41;
  v44 = *(v0 + 480);
  if (v42)
  {
    v69 = *(v0 + 464);
    v45 = swift_slowAlloc();
    swift_slowAlloc();
    *v45 = 136446210;
    v46 = swift_getKeyPath();
    v70 = v69;
    OneUpSharePlayOverridableAsset.subscript.getter(v46, v0 + 168);

    sub_1A3C2EF94();
  }

  sub_1A3DB556C(0, 0xF000000000000000);

LABEL_22:

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_1A43B5AD0()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  if (v0)
  {
    sub_1A3DB556C(*(v2 + 528), *(v2 + 536));
    v3 = sub_1A43B6050;
  }

  else
  {
    sub_1A435BFA0(v2 + 16);
    v3 = sub_1A43B5BF8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A43B5BF8()
{
  v1 = *(v0 + 464);
  v2 = *(*(v0 + 392) + *(**(v0 + 392) + 104));
  *(v0 + 584) = v2;
  *(v0 + 232) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A43B5C38, v2, 0);
}

uint64_t sub_1A43B5C38()
{
  sub_1A43B67F4(*(v0 + 456), (v0 + 232));

  return MEMORY[0x1EEE6DFA0](sub_1A43B5CA8, 0, 0);
}

uint64_t sub_1A43B5CA8()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);
  v4 = *(v0 + 432);
  v5 = *(v0 + 440);
  v6 = sub_1A524D264();
  v7 = *v1;
  (*(v5 + 16))(v2, v3, v4);
  LODWORD(v3) = os_log_type_enabled(v7, v6);
  log = v7;
  if (v3)
  {
    v8 = *(v0 + 448);
    v9 = *(v0 + 432);
    v25 = *(v0 + 440);
    v10 = *(v0 + 416);
    v11 = *(v0 + 424);
    v12 = *(v0 + 408);
    v13 = swift_slowAlloc();
    swift_slowAlloc();
    *v13 = 136446722;
    sub_1A52418C4();
    sub_1A43B9BAC(&qword_1EB126020, MEMORY[0x1E69695A8]);
    sub_1A524EA44();
    (*(v10 + 8))(v11, v12);
    (*(v25 + 8))(v8, v9);
    sub_1A3C2EF94();
  }

  v14 = *(v0 + 560);
  v15 = *(v0 + 552);
  v16 = *(v0 + 536);
  v17 = *(v0 + 528);
  v19 = *(v0 + 448);
  v18 = *(v0 + 456);
  v21 = *(v0 + 432);
  v20 = *(v0 + 440);

  sub_1A3C59280(v15, v14);
  sub_1A3C59280(v17, v16);
  sub_1A3DB556C(v17, v16);
  v22 = *(v20 + 8);
  v22(v19, v21);
  v22(v18, v21);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1A43B6050()
{
  v1 = *(v0 + 544);
  sub_1A435BFA0(v0 + 16);
  v2 = sub_1A524D244();
  v3 = *v1;
  v4 = os_log_type_enabled(v3, v2);
  v5 = v3;
  if (v4)
  {
    v6 = swift_slowAlloc();
    swift_slowAlloc();
    swift_slowAlloc();
    *v6 = 136446466;
    KeyPath = swift_getKeyPath();
    OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 216);

    sub_1A3C2EF94();
  }

  v8 = *(v0 + 576);
  v9 = *(v0 + 560);
  v10 = *(v0 + 552);
  v11 = *(v0 + 536);
  v12 = *(v0 + 528);

  sub_1A3C59280(v12, v11);
  sub_1A3C59280(v10, v9);

  v13 = *(v0 + 8);

  return v13();
}

void sub_1A43B62E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A43BA81C(0, &qword_1EB139270, sub_1A43BA494);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = aBlock - v12;
  v14 = *(a2 + *(*a2 + 112));
  (*(v10 + 16))(aBlock - v12, a1, v9, v11);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, v13, v9);
  aBlock[4] = sub_1A43BA5D8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A43B64D0;
  aBlock[3] = &block_descriptor_54_0;
  v17 = _Block_copy(aBlock);

  [v14 requestImageDataForAsset:a3 options:a4 resultHandler:v17];
  _Block_release(v17);
}

uint64_t sub_1A43B64D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (a2)
  {

    v10 = v8;
    v8 = sub_1A5240EA4();
    v12 = v11;

    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {

    v12 = 0xF000000000000000;
    if (a3)
    {
LABEL_3:
      v13 = sub_1A524C674();
      a3 = v14;
      if (!a5)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v13 = 0;
  if (a5)
  {
LABEL_4:
    a5 = sub_1A524C3E4();
  }

LABEL_5:
  v9(v8, v12, v13, a3, a4, a5);

  sub_1A3DB556C(v8, v12);
}

void sub_1A43B65E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  sub_1A43BA81C(0, &qword_1EB139288, sub_1A43BA2A4);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = aBlock - v16;
  v18 = *(a2 + *(*a2 + 112));
  (*(v14 + 16))(aBlock - v16, a1, v13, v15);
  v19 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v20 = swift_allocObject();
  (*(v14 + 32))(v20 + v19, v17, v13);
  aBlock[4] = sub_1A43BA880;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3DD5B38;
  aBlock[3] = &block_descriptor_60_4;
  v21 = _Block_copy(aBlock);

  [v18 requestImageForAsset:a3 targetSize:0 contentMode:a4 options:v21 resultHandler:{a5, a6}];
  _Block_release(v21);
}

uint64_t sub_1A43B67F4(uint64_t a1, __int128 *a2)
{
  KeyPath = swift_getKeyPath();
  v15 = *a2;
  OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v14);

  v5 = v14[0];
  v6 = v14[1];
  swift_beginAccess();
  v12 = v5;
  v13 = v6;
  v7 = type metadata accessor for OneUpSharePlaySessionHostJournal.Library.AssetEntry();
  sub_1A524C454();
  v8 = sub_1A524C474();
  if ((*(*(v7 - 8) + 48))(v9, 1, v7))
  {
    v8(v11, 0);

    return swift_endAccess();
  }

  else
  {
    sub_1A43B86DC(a1);
    v8(v11, 0);
    swift_endAccess();
  }
}

void sub_1A43B6990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v18[1] = a5;
  sub_1A43BA81C(0, &unk_1EB1391E8, sub_1A43B99E0);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v18 - v14;
  (*(v12 + 16))(v18 - v14, a1, v11, v13);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a6;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  (*(v12 + 32))(v17 + v16, v15, v11);
  aBlock[4] = sub_1A43B9BF4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A43B7D94;
  aBlock[3] = &block_descriptor_167;
  _Block_copy(aBlock);
  swift_unknownObjectRetain();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A43B6BA4(uint64_t a1, NSObject *a2, unint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v86 = a8;
  *(&v83 + 1) = a7;
  *&v83 = a6;
  LODWORD(v81) = a5;
  v82 = a2;
  v80 = a1;
  sub_1A43B99E0();
  v84 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E6720];
  sub_1A3C56708(0, &unk_1EB1391B0, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v77 - v14;
  sub_1A3C56708(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], v12);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v77 - v17;
  v19 = sub_1A5240E64();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v77 - v24;
  v26 = MEMORY[0x1E69E7CA0];
  v27 = a3;
  v28 = a3 >> 60;
  if (!a4)
  {
    v90 = 0u;
    v91 = 0u;
    sub_1A3C2C848(&v90, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3C4EE18);
    if (v28 <= 0xE)
    {
      v90 = 0u;
      v91 = 0u;
      v38 = v82;
      v39 = v27;
      sub_1A3D602A8(v82, v27);
      sub_1A3C2C848(&v90, &qword_1EB126130, v26 + 8, MEMORY[0x1E69E6720], sub_1A3C4EE18);
      v44 = 0;
      v43 = 0;
      v79 = 0;
      v36 = 0;
      goto LABEL_44;
    }

    goto LABEL_25;
  }

  v87 = sub_1A524C674();
  v88 = v29;
  sub_1A524E384();
  if (!*(a4 + 16) || (v30 = sub_1A3D5C0BC(v92), (v31 & 1) == 0))
  {
    sub_1A3D5FAFC(v92);
    v90 = 0u;
    v91 = 0u;
LABEL_13:
    sub_1A3C2C848(&v90, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3C4EE18);
    if (v28 <= 0xE)
    {
      v36 = 0;
      v79 = 0;
      goto LABEL_15;
    }

LABEL_25:
    v35 = 0;
    v78 = 0;
LABEL_26:
    sub_1A43BAA30(v80, v18, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {

      sub_1A3C2C848(v18, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C56708);
      if (a4)
      {
        sub_1A43B7ABC(a4);
      }

      v70 = sub_1A524D244();
      v71 = *sub_1A486DB9C();
      if (os_log_type_enabled(v71, v70))
      {
        v72 = v71;
        v73 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *v73 = 136446466;
        KeyPath = swift_getKeyPath();
        v92[0] = v83;
        OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, &v90);

        sub_1A3C2EF94();
      }

      v75 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v75 - 8) + 56))(v15, 0, 1, v75);
      v76 = (v85 + *(v84 + 48));
      sub_1A43B9AB4(v15, v85);
      sub_1A43BA81C(0, &unk_1EB1391E8, sub_1A43B99E0);
      *v76 = 0;
      v76[1] = 0;
      sub_1A524CBE4();
    }

    else
    {
      (*(v20 + 32))(v25, v18, v19);
      v45 = sub_1A524D264();
      v46 = *sub_1A486DB9C();
      v47 = *(v20 + 16);
      v47(v22, v25, v19);
      if (os_log_type_enabled(v46, v45))
      {
        v82 = v46;
        v48 = swift_slowAlloc();
        v79 = v35;
        v49 = v48;
        v81 = swift_slowAlloc();
        v87 = v81;
        *v49 = 136446466;
        v50 = swift_getKeyPath();
        v92[0] = v83;
        *(&v83 + 1) = v47;
        OneUpSharePlayOverridableAsset.subscript.getter(v50, &v90);

        sub_1A3C2EF94();
      }

      v66 = v22;
      v67 = *(v20 + 8);
      v67(v66, v19);
      v47(v15, v25, v19);
      v68 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v68 - 8) + 56))(v15, 0, 1, v68);
      v69 = (v85 + *(v84 + 48));
      sub_1A43B9AB4(v15, v85);
      *v69 = v78;
      v69[1] = v35;
      sub_1A43BA81C(0, &unk_1EB1391E8, sub_1A43B99E0);
      sub_1A524CBE4();
      v67(v25, v19);
    }

    return;
  }

  sub_1A3C2F0BC(*(a4 + 56) + 32 * v30, &v90);
  sub_1A3D5FAFC(v92);
  if (!*(&v91 + 1))
  {
    goto LABEL_13;
  }

  v32 = swift_dynamicCast();
  v33 = *&v92[0];
  if (!v32)
  {
    v33 = 0;
  }

  v78 = v33;
  if (v32)
  {
    v34 = *(&v92[0] + 1);
  }

  else
  {
    v34 = 0;
  }

  v79 = v34;
  if (v28 > 0xE)
  {
    v35 = v79;
    goto LABEL_26;
  }

  v36 = v78;
LABEL_15:
  v87 = sub_1A524C674();
  v88 = v37;
  v38 = v82;
  v39 = v27;
  sub_1A3D602A8(v82, v27);
  sub_1A524E384();
  if (!*(a4 + 16) || (v40 = sub_1A3D5C0BC(v92), (v41 & 1) == 0))
  {
    sub_1A3D5FAFC(v92);
    v90 = 0u;
    v91 = 0u;
    goto LABEL_32;
  }

  sub_1A3C2F0BC(*(a4 + 56) + 32 * v40, &v90);
  sub_1A3D5FAFC(v92);
  if (!*(&v91 + 1))
  {
LABEL_32:
    sub_1A3C2C848(&v90, &qword_1EB126130, v26 + 8, MEMORY[0x1E69E6720], sub_1A3C4EE18);
    v44 = 0;
    v43 = 0;
    goto LABEL_33;
  }

  v42 = swift_dynamicCast();
  if (v42)
  {
    v43 = *&v92[0];
  }

  else
  {
    v43 = 0;
  }

  if (v42)
  {
    v44 = *(&v92[0] + 1);
  }

  else
  {
    v44 = 0;
  }

LABEL_33:
  v87 = sub_1A524C674();
  v88 = v51;
  sub_1A524E384();
  if (!*(a4 + 16) || (v52 = sub_1A3D5C0BC(v92), (v53 & 1) == 0))
  {
    sub_1A3D5FAFC(v92);
LABEL_44:
    v90 = 0u;
    v91 = 0u;
    goto LABEL_45;
  }

  sub_1A3C2F0BC(*(a4 + 56) + 32 * v52, &v90);
  sub_1A3D5FAFC(v92);
  if (*(&v91 + 1))
  {
    v54 = swift_dynamicCast();
    if (v54)
    {
      v55 = *&v92[0];
    }

    else
    {
      v55 = 0;
    }

    if (v54)
    {
      v56 = *(&v92[0] + 1);
    }

    else
    {
      v56 = 0;
    }

    goto LABEL_46;
  }

LABEL_45:
  sub_1A3C2C848(&v90, &qword_1EB126130, v26 + 8, MEMORY[0x1E69E6720], sub_1A3C4EE18);
  v55 = 0;
  v56 = 0;
LABEL_46:
  sub_1A3D602A8(v38, v39);
  sub_1A4814FC8(v38, v39, v43, v44, v55, v56, (v81 & 1) == 0, v92);
  v57 = sub_1A524D264();
  v58 = *sub_1A486DB9C();
  if (os_log_type_enabled(v58, v57))
  {
    v59 = v58;
    v60 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *v60 = 136446210;
    v61 = swift_getKeyPath();
    v90 = v83;
    OneUpSharePlayOverridableAsset.subscript.getter(v61, &v87);

    sub_1A3C2EF94();
  }

  v62 = v92[1];
  *v15 = v92[0];
  *(v15 + 1) = v62;
  *(v15 + 2) = v92[2];
  v15[48] = v93;
  v63 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v63 - 8) + 56))(v15, 0, 1, v63);
  v64 = (v85 + *(v84 + 48));
  sub_1A43B9AB4(v15, v85);
  v65 = v79;
  *v64 = v36;
  v64[1] = v65;
  sub_1A43B9CB0(v92, &v90);
  sub_1A43BA81C(0, &unk_1EB1391E8, sub_1A43B99E0);
  sub_1A524CBE4();
  sub_1A3DB556C(v38, v39);
  sub_1A435AE04(v92);
}