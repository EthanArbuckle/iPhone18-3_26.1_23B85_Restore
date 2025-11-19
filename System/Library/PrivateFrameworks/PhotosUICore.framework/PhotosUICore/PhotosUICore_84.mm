uint64_t OneUpSharePlaySessionCoordinator.Role.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A46E9B50()
{
  sub_1A524EC94();
  OneUpSharePlaySessionCoordinator.Role.hash(into:)();
  return sub_1A524ECE4();
}

uint64_t sub_1A46E9B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = v3;
  v4[2] = a1;
  swift_allocObject();
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1A46E9C6C;

  return (sub_1A46EE9D0)(a1, a2, a3);
}

uint64_t sub_1A46E9C6C(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v7 = *v1;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v3, AssociatedTypeWitness);
  swift_unknownObjectRelease();
  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t sub_1A46E9E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = *v3;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1A46E9C6C;

  return (sub_1A46EE9D0)(a1, a2, a3);
}

uint64_t sub_1A46E9EF0(char a1)
{
  v2 = a1 & 1;
  result = sub_1A524C594();
  if (result)
  {
    *(v1 + *(*v1 + 192)) = v2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 824))(v5);
  }

  return result;
}

uint64_t sub_1A46EA098()
{
  v1 = v0;
  v2 = sub_1A46E837C(0);
  (*(*v0 + 592))(v17, v2);
  if (v17[3])
  {
    sub_1A3C341C8(v17, v14);
    sub_1A46EF8F4(v17, &unk_1EB1407C0, sub_1A3E8814C);
    v3 = v15;
    v4 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    (*(v4 + 8))(v3, v4);
    v5 = __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v5 = sub_1A46EF8F4(v17, &unk_1EB1407C0, sub_1A3E8814C);
  }

  MEMORY[0x1EEE9AC00](v5);
  KeyPath = swift_getKeyPath();
  v7 = *(*v0 + 816);
  (v7)(KeyPath);

  v17[0] = v0;
  MEMORY[0x1EEE9AC00](v8);
  swift_getKeyPath();
  type metadata accessor for OneUpSharePlaySessionCoordinator();
  swift_getWitnessTable();
  sub_1A52415F4();

  v9 = *(*v0 + 152);
  swift_beginAccess();
  *(v1 + v9) = MEMORY[0x1E69E7CC0];

  v10 = sub_1A46E8D98();
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  v7();

  v14[0] = v1;
  MEMORY[0x1EEE9AC00](v11);
  swift_getKeyPath();
  sub_1A52415F4();

  v12 = *(*v1 + 160);
  swift_beginAccess();
  *(v1 + v12) = MEMORY[0x1E69E7CC0];

  return sub_1A46E8D98();
}

uint64_t sub_1A46EA43C()
{
  v1 = *v0;
  v2 = sub_1A5241BE4();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A52411C4();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v1 + 88);
  v31 = *(v1 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v27 - v8;
  swift_getAssociatedConformanceWitness();
  v10 = sub_1A5247804();
  v11 = *(v10 - 8);
  v29 = v10;
  v30 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v34 = v0[2];
  v14 = *(AssociatedConformanceWitness + 96);
  v33 = swift_checkMetadataState();
  v15 = AssociatedConformanceWitness;
  v14(v33, AssociatedConformanceWitness);
  sub_1A5247A74();
  (*(v28 + 8))(v9, AssociatedTypeWitness);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v19 = v31;
  v18 = v32;
  v17[2] = v31;
  v17[3] = v18;
  v17[4] = v16;

  v20 = v29;
  swift_getWitnessTable();
  sub_1A5247A94();

  (*(v30 + 8))(v13, v20);

  v43 = v19;
  v44 = v18;
  KeyPath = swift_getKeyPath();
  (*(*v0 + 816))(KeyPath);

  v45 = v0;
  v41 = v19;
  v42 = v18;
  swift_getKeyPath();
  type metadata accessor for OneUpSharePlaySessionCoordinator();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  sub_1A46EF014(0, &qword_1EB12D788, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
  sub_1A3E91220();
  sub_1A5247874();
  swift_endAccess();

  sub_1A46E8D98();
  v22 = [objc_opt_self() standardUserDefaults];
  v23 = sub_1A524C634();
  [v22 BOOLForKey_];

  v24 = v36;
  (*(v15 + 128))(v33, v15);
  v25 = v35;
  sub_1A5241BD4();
  (*(v39 + 8))(v24, v40);
  return (*(v37 + 8))(v25, v38);
}

uint64_t sub_1A46EAAC8(NSObject *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = v22 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = v3;
    v7 = *(*result + 296);
    v24 = *result + 296;
    v25 = v7;
    v8 = v7() & 1;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = *(AssociatedConformanceWitness + 120);
    if (v8 != (v10(AssociatedTypeWitness, AssociatedConformanceWitness) & 1))
    {
      v11 = sub_1A524D264();
      v12 = *sub_1A486DB9C();
      v13 = v23;
      (*(v23 + 16))(v5, a1, AssociatedTypeWitness);
      if (os_log_type_enabled(v12, v11))
      {
        v22[0] = v12;
        v14 = swift_slowAlloc();
        v22[1] = a1;
        v15 = v11;
        v16 = v14;
        *v14 = 67109120;
        v17 = v10(AssociatedTypeWitness, AssociatedConformanceWitness) & 1;
        (*(v13 + 8))(v5, AssociatedTypeWitness);
        *(v16 + 1) = v17;
        v18 = v22[0];
        _os_log_impl(&dword_1A3C1C000, v22[0], v15, "Updating isPaused=%{BOOL}d", v16, 8u);
        MEMORY[0x1A590EEC0](v16, -1, -1);
      }

      else
      {
        (*(v13 + 8))(v5, AssociatedTypeWitness);
      }

      v19 = v10(AssociatedTypeWitness, AssociatedConformanceWitness);
      v20 = sub_1A46E837C(v19 & 1);
      v21 = (v25)(v20);
      sub_1A46ECD90(v21 & 1);
    }
  }

  return result;
}

uint64_t sub_1A46EAE24()
{
  v1 = v0;
  v2 = *v0;
  sub_1A46EFB70();
  v35 = v3;
  v34 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46EFCDC();
  v7 = v6;
  v39 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46E9158(*off_1E7721F68);
  v43 = *(v2 + 80);
  v10 = v43;
  v11 = *(v2 + 88);
  v44 = v11;
  KeyPath = swift_getKeyPath();
  v13 = *v0;
  v37 = *(*v0 + 816);
  v38 = v13 + 816;
  (v37)(KeyPath);

  v14 = *(*v0 + 216);
  v47[0] = v1;
  v41 = v10;
  v42 = v11;
  swift_getKeyPath();
  type metadata accessor for OneUpSharePlaySessionCoordinator();
  WitnessTable = swift_getWitnessTable();
  v40 = v14;
  v36 = WitnessTable;
  sub_1A52415F4();

  v16 = *(*v1 + 152);
  swift_beginAccess();
  *(v1 + v16) = MEMORY[0x1E69E7CC0];

  v17 = sub_1A46E8D98();
  (*(*v1 + 592))(&v45, v17);
  if (!v46)
  {
    return sub_1A46EF8F4(&v45, &unk_1EB1407C0, sub_1A3E8814C);
  }

  v33 = v7;
  sub_1A3C34460(&v45, v47);
  v18 = v48;
  v19 = v49;
  __swift_project_boxed_opaque_existential_1(v47, v48);
  v20 = (*(v19 + 24))(v18, v19);
  v21 = [v20 identifier];

  sub_1A46E9158(v21);
  v22 = v48;
  v23 = v49;
  __swift_project_boxed_opaque_existential_1(v47, v48);
  *&v45 = (*(v23 + 88))(v22, v23);
  sub_1A46EFBF8(0, &qword_1EB1408E0, &type metadata for OneUpSharePlayTileTransform, MEMORY[0x1E695BED0]);
  sub_1A46EFC60();
  sub_1A46EFDA8();
  sub_1A5247A84();

  if (qword_1EB1CEE40 != -1)
  {
    swift_once();
  }

  v24 = sub_1A524D454();
  __swift_project_value_buffer(v24, qword_1EB1CEE48);
  sub_1A3C52C70(0, &qword_1EB12B180);
  v25 = sub_1A524D474();
  *&v45 = v25;
  sub_1A46EFF60(&qword_1EB1408F8, sub_1A46EFB70);
  sub_1A45EC164();
  v26 = v35;
  sub_1A5247A64();

  (*(v34 + 8))(v5, v26);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  v28[2] = v10;
  v28[3] = v11;
  v28[4] = v27;
  sub_1A46EFF60(&qword_1EB140908, sub_1A46EFCDC);
  v29 = v33;
  sub_1A5247A94();

  v30 = (*(v39 + 8))(v9, v29);
  MEMORY[0x1EEE9AC00](v30);
  *(&v33 - 2) = v10;
  *(&v33 - 1) = v11;
  swift_getKeyPath();
  v37();

  *&v45 = v1;
  MEMORY[0x1EEE9AC00](v31);
  *(&v33 - 2) = v10;
  *(&v33 - 1) = v11;
  swift_getKeyPath();
  sub_1A52415F4();

  swift_beginAccess();
  sub_1A46EF014(0, &qword_1EB12D788, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
  sub_1A3E91220();
  sub_1A5247874();
  swift_endAccess();

  sub_1A46E8D98();
  return __swift_destroy_boxed_opaque_existential_0(v47);
}

uint64_t sub_1A46EB550(uint64_t *a1)
{
  sub_1A46EF014(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v17 - v7;
  v10 = *a1;
  v9 = a1[1];
  v11 = *(a1 + 1);
  v22 = *(a1 + 2);
  v21 = v11;
  v12 = a1[6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = v10;
    v19 = v9;
    v20 = v4;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    v14 = *(swift_getAssociatedConformanceWitness() + 72);
    swift_checkMetadataState();
    v14();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v16 = (*(AssociatedConformanceWitness + 120))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v6 + 8))(v8, AssociatedTypeWitness);
    if ((v16 & 1) == 0 && (sub_1A46EDA20() & 1) == 0)
    {
      v23 = v18;
      v24 = v19;
      v25 = v21;
      v26 = v22;
      v27 = v12;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  return result;
}

uint64_t sub_1A46EB948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = sub_1A524CC54();
  *(v5 + 80) = sub_1A524CC44();
  v7 = *(a5 + 16);
  *(v5 + 16) = *a5;
  *(v5 + 32) = v7;
  *(v5 + 48) = *(a5 + 32);
  *(v5 + 64) = *(a5 + 48);
  v8 = swift_task_alloc();
  *(v5 + 88) = v8;
  *v8 = v5;
  v8[1] = sub_1A46EBA20;

  return sub_1A46ED108(v5 + 16);
}

uint64_t sub_1A46EBA20()
{

  v1 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A46EBB5C, v1, v0);
}

uint64_t sub_1A46EBB5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A46EBBBC()
{
  v1 = v0;
  v2 = *v0;
  v27 = *(*v0 + 88);
  v3 = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = AssociatedTypeWitness;
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v24 - v7;
  v25 = &v24 - v7;
  sub_1A46EF014(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - v10;
  v12 = sub_1A524CCB4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v8, v1 + *(*v1 + 144), AssociatedTypeWitness);
  sub_1A524CC54();

  v14 = sub_1A524CC44();
  v15 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  *(v17 + 2) = v14;
  *(v17 + 3) = v18;
  v19 = v26;
  v20 = v27;
  *(v17 + 4) = v3;
  *(v17 + 5) = v20;
  (*(v5 + 32))(&v17[v15], v25, v19);
  *&v17[v16] = v13;

  v21 = sub_1A3D4D930(0, 0, v11, &unk_1A5359210, v17);
  sub_1A3EE1368(v21, MEMORY[0x1E69E7CA8] + 8);

  v30 = v3;
  v31 = v20;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 816))(KeyPath);

  v32 = v1;
  v28 = v3;
  v29 = v20;
  swift_getKeyPath();
  type metadata accessor for OneUpSharePlaySessionCoordinator();
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  sub_1A46EF014(0, &qword_1EB12D788, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
  sub_1A3E91220();
  sub_1A5247874();
  swift_endAccess();

  return sub_1A46E8D98();
}

uint64_t sub_1A46EC00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[35] = a6;
  v7[36] = a7;
  v7[33] = a4;
  v7[34] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[37] = AssociatedTypeWitness;
  v7[38] = *(AssociatedTypeWitness - 8);
  v7[39] = swift_task_alloc();
  sub_1A46EF014(0, &qword_1EB1408B8, sub_1A46EF964, MEMORY[0x1E69E6720]);
  v7[40] = swift_task_alloc();
  sub_1A46EF014(0, &qword_1EB1408C8, sub_1A46EF964, MEMORY[0x1E69E8698]);
  v7[41] = v9;
  v7[42] = *(v9 - 8);
  v7[43] = swift_task_alloc();
  sub_1A46EF014(0, &qword_1EB1408D0, sub_1A46EF964, MEMORY[0x1E69E8688]);
  v7[44] = v10;
  v7[45] = *(v10 - 8);
  v7[46] = swift_task_alloc();
  v7[47] = sub_1A524CC54();
  v7[48] = sub_1A524CC44();
  v12 = sub_1A524CBC4();
  v7[49] = v12;
  v7[50] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1A46EC278, v12, v11);
}

uint64_t sub_1A46EC278()
{
  v2 = v0[42];
  v1 = v0[43];
  v16 = v0[41];
  sub_1A46EF5EC();
  v4 = v3;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = *(AssociatedConformanceWitness + 56);
  v6 = swift_checkMetadataState();
  v7 = sub_1A46EFF60(&qword_1EB140890, sub_1A46EF5EC);
  v8 = sub_1A46EFF60(&qword_1EB140898, sub_1A46EF5EC);
  v15(v4, v4, v7, v8, v6, AssociatedConformanceWitness);
  sub_1A524CD24();
  (*(v2 + 8))(v1, v16);
  swift_beginAccess();
  v9 = sub_1A524CC44();
  v0[51] = v9;
  v10 = swift_task_alloc();
  v0[52] = v10;
  *v10 = v0;
  v10[1] = sub_1A46EC4AC;
  v11 = v0[44];
  v12 = v0[40];
  v13 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v12, v9, v13, v11);
}

uint64_t sub_1A46EC4AC()
{
  v1 = *v0;

  v2 = *(v1 + 400);
  v3 = *(v1 + 392);

  return MEMORY[0x1EEE6DFA0](sub_1A46EC5F0, v3, v2);
}

uint64_t sub_1A46EC5F0()
{
  v1 = v0[40];
  sub_1A46EF964();
  v3 = v2;
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[45] + 8))(v0[46], v0[44]);
  }

  else
  {
    v4 = *v1;
    v5 = *(v3 + 48);
    if (swift_weakLoadStrong())
    {
      log = v4;
      v18 = v1;
      v6 = v0[38];
      v7 = v0[39];
      v8 = v0[37];
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      v9 = *(swift_getAssociatedConformanceWitness() + 72);
      swift_checkMetadataState();
      v9();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v11 = (*(AssociatedConformanceWitness + 120))(v8, AssociatedConformanceWitness);
      (*(v6 + 8))(v7, v8);
      if ((v11 & 1) == 0)
      {
        v16 = sub_1A46EF598();
        sub_1A3DC0EC0(log, &type metadata for OneUpSharePlayTileTransformMessageSchema, v16, (v0 + 9));
      }

      (*(v0[45] + 8))(v0[46], v0[44]);

      v12 = sub_1A5241BE4();
      (*(*(v12 - 8) + 8))(&v18[v5], v12);
    }

    else
    {
      (*(v0[45] + 8))(v0[46], v0[44]);

      v13 = sub_1A5241BE4();
      (*(*(v13 - 8) + 8))(v1 + v5, v13);
    }
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1A46ECD90(char a1)
{
  (*(*v1 + 592))(v9);
  if (v9[3])
  {
    sub_1A3C341C8(v9, v6);
    sub_1A46EF8F4(v9, &unk_1EB1407C0, sub_1A3E8814C);
    v3 = v7;
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v4 + 144))(a1 & 1, v3, v4);
    result = __swift_destroy_boxed_opaque_existential_0(v6);
    if ((a1 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = sub_1A46EF8F4(v9, &unk_1EB1407C0, sub_1A3E8814C);
    if ((a1 & 1) == 0)
    {
      return result;
    }
  }

  if (v1[24] == 1)
  {
    return (*(*v1 + 800))(sub_1A46EF69C, v1);
  }

  return result;
}

void sub_1A46ECEF4(void *a1, void *a2)
{
  sub_1A4377480(0);
  if (swift_dynamicCastClass())
  {
    type metadata accessor for OneUpSharePlayVideoPlaybackDelegate();
    swift_unknownObjectRetain();
    v4 = swift_unknownObjectRetain();
    v5 = sub_1A4834328(v4);
    v11 = v5;
    sub_1A46E8F2C(v5);
    v6 = sub_1A524D264();
    v7 = *sub_1A486DB9C();
    if (os_log_type_enabled(v7, v6))
    {
      swift_unknownObjectRetain();
      v8 = v7;
      v9 = swift_slowAlloc();
      swift_slowAlloc();
      *v9 = 136446210;
      v10 = [a1 uuid];
      swift_unknownObjectRelease();
      if (v10)
      {
        sub_1A524C674();

        sub_1A3C2EF94();
      }

      __break(1u);
    }

    else
    {
      [a2 setDelegate_];
      sub_1A524D6E4();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1A46ED108(uint64_t a1)
{
  *(v2 + 192) = v1;
  *(v2 + 200) = *v1;
  v3 = *(a1 + 16);
  *(v2 + 208) = *a1;
  *(v2 + 224) = v3;
  *(v2 + 240) = *(a1 + 32);
  *(v2 + 256) = *(a1 + 48);
  sub_1A524CC54();
  *(v2 + 264) = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  *(v2 + 272) = v5;
  *(v2 + 280) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A46ED1E0, v5, v4);
}

void sub_1A46ED1E0()
{
  v1 = sub_1A524D264();
  v2 = sub_1A486DB9C();
  *(v0 + 288) = v2;
  v3 = *v2;
  if (os_log_type_enabled(*v2, v1))
  {
    v5 = *(v0 + 248);
    v4 = *(v0 + 256);
    v7 = *(v0 + 232);
    v6 = *(v0 + 240);
    v8 = *(v0 + 224);
    v10 = *(v0 + 208);
    v9 = *(v0 + 216);
    v11 = v3;
    v12 = swift_slowAlloc();
    swift_slowAlloc();
    *v12 = 136446466;
    *(v0 + 72) = v10;
    *(v0 + 80) = v9;
    *(v0 + 88) = v8;
    *(v0 + 96) = v7;
    *(v0 + 104) = v6;
    *(v0 + 112) = v5;
    *(v0 + 120) = v4;
    v13 = sub_1A3E57EB4();
    sub_1A3DC2858(&type metadata for OneUpSharePlayTileTransformMessagePayload, v13);
    sub_1A3C2EF94();
  }

  v14 = *(v0 + 216);
  v15 = *(v0 + 256);
  *(v0 + 16) = *(v0 + 208);
  *(v0 + 24) = v14;
  v16 = *(v0 + 240);
  *(v0 + 32) = *(v0 + 224);
  *(v0 + 48) = v16;
  *(v0 + 64) = v15;
  sub_1A46EF598();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A46ED71C()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = *(v2 + 272);
    v4 = *(v2 + 280);
    v5 = sub_1A46ED898;
  }

  else
  {

    v3 = *(v2 + 272);
    v4 = *(v2 + 280);
    v5 = sub_1A46ED838;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A46ED838()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A46ED898()
{

  v1 = v0[39];
  v2 = v0[36];
  v3 = sub_1A524D244();
  v4 = *v2;
  if (os_log_type_enabled(v4, v3))
  {
    v5 = v4;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1A3C1C000, v5, v3, "Error sending tile transform message: %@", v6, 0xCu);
    sub_1A3CB65E4(v7);
    MEMORY[0x1A590EEC0](v7, -1, -1);
    MEMORY[0x1A590EEC0](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A46EDA20()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 816))(KeyPath);

  return *(v0 + *(*v0 + 192));
}

uint64_t sub_1A46EDADC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A46EDA20();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A46EDB58()
{
  sub_1A46EF4DC();
}

uint64_t sub_1A46EDB80@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A46EF4DC();
}

uint64_t sub_1A46EDBE8(uint64_t a1)
{
  v3 = MEMORY[0x1E69E6720];
  sub_1A46EF014(0, &qword_1EB140920, MEMORY[0x1E695BF10], MEMORY[0x1E69E6720]);
  sub_1A46F0074(&qword_1EB13E870, &qword_1EB140920, v3);
  v4 = sub_1A524C594();
  if (v4)
  {
    *(v1 + *(*v1 + 208)) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v4);
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 824))(v7);
  }
}

uint64_t sub_1A46EDDFC()
{
  v1 = v0;
  v2 = *v0;
  v21 = v2;
  sub_1A46EF014(0, &qword_1EB13E840, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  sub_1A46EF078();
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v1 + *(v2 + 200));
  v9 = qword_1EB1CEE60;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = sub_1A524D454();
  __swift_project_value_buffer(v10, qword_1EB1CEE68);
  sub_1A3C52C70(0, &qword_1EB12B180);
  v11 = sub_1A524D474();
  v24 = v11;
  v12 = sub_1A524D434();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  sub_1A46EFBF8(0, &unk_1EB1407D0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E695BF70]);
  sub_1A46EF1B4(&unk_1EB140800);
  sub_1A45EC164();
  sub_1A5247A54();
  sub_1A46EF8F4(v5, &qword_1EB13E840, MEMORY[0x1E69E8050]);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v21;
  v14[2] = *(v21 + 80);
  v14[3] = *(v15 + 88);
  v14[4] = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1A46EF158;
  *(v16 + 24) = v14;
  sub_1A46EFF60(&qword_1EB140810, sub_1A46EF078);
  v17 = v23;
  v18 = sub_1A5247A94();

  (*(v22 + 8))(v8, v17);
  return sub_1A46EDBE8(v18);
}

uint64_t sub_1A46EE1F0(void (*a1)(uint64_t))
{
  v2 = sub_1A46E9EF0(1);
  a1(v2);
  sub_1A46EFBF8(0, &unk_1EB1407D0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E695BF70]);
  sub_1A46EF1B4(&qword_1EB140818);
  return sub_1A5247994();
}

uint64_t OneUpSharePlaySessionCoordinator.deinit()
{
  swift_unknownObjectRelease();
  v1 = *(*v0 + 144);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);

  swift_unknownObjectRelease();
  sub_1A46EF8F4(v0 + *(*v0 + 184), &unk_1EB1407C0, sub_1A3E8814C);

  v3 = *(*v0 + 216);
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t OneUpSharePlaySessionCoordinator.__deallocating_deinit()
{
  OneUpSharePlaySessionCoordinator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A46EE67C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1A524D454();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1A524D444();
}

uint64_t sub_1A46EE774()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 816))(KeyPath);

  v2 = *(*v0 + 152);
  swift_beginAccess();
  return *(v0 + v2);
}

uint64_t sub_1A46EE844()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 816))(KeyPath);

  v2 = *(*v0 + 160);
  swift_beginAccess();
  return *(v0 + v2);
}

uint64_t sub_1A46EE914()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 816))(KeyPath);

  return *(v0 + *(*v0 + 168));
}

uint64_t sub_1A46EE9D0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  v6 = *v3;
  *(v4 + 40) = *(*v3 + 88);
  *(v4 + 48) = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v4 + 56) = AssociatedTypeWitness;
  *(v4 + 64) = *(AssociatedTypeWitness - 8);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 120) = *a3;
  *(v4 + 80) = sub_1A524CC54();
  *(v4 + 88) = sub_1A524CC44();
  v9 = sub_1A524CBC4();
  *(v4 + 96) = v9;
  *(v4 + 104) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A46EEB1C, v9, v8);
}

uint64_t sub_1A46EEB1C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 120);
  v3 = *(v0 + 56);
  v20 = *(v0 + 64);
  v4 = *(v0 + 32);
  v19 = *(v0 + 24);
  v5 = *(v0 + 16);
  v6 = *v4;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0x4091300000000000;
  v7 = MEMORY[0x1E69E7CC0];
  *&v4[*(v6 + 152)] = MEMORY[0x1E69E7CC0];
  *&v4[*(*v4 + 160)] = v7;
  *&v4[*(*v4 + 168)] = 0;
  *&v4[*(*v4 + 176)] = *off_1E7721F68;
  v8 = &v4[*(*v4 + 184)];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v4[*(*v4 + 192)] = 0;
  v9 = *(*v4 + 200);
  sub_1A46EFBF8(0, &unk_1EB1407D0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E695BF70]);
  swift_allocObject();
  *&v4[v9] = sub_1A5247904();
  *&v4[*(*v4 + 208)] = 0;
  sub_1A5241604();
  *(v4 + 2) = v5;
  v4[24] = v2;
  v10 = *(*v4 + 144);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(&v4[v10], v19, AssociatedTypeWitness);
  v12 = *(*v4 + 168);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v4[v12] = 0;
  v4[25] = 0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v13 = *(swift_getAssociatedConformanceWitness() + 72);
  swift_checkMetadataState();
  v13();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = (*(AssociatedConformanceWitness + 120))(v3, AssociatedConformanceWitness);
  (*(v20 + 8))(v1, v3);
  v4[26] = v15 & 1;
  sub_1A46EA43C();
  *(v0 + 112) = sub_1A524CC44();
  v17 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A46EEF00, v17, v16);
}

uint64_t sub_1A46EEF00()
{

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1A46EEF64, v1, v2);
}

uint64_t sub_1A46EEF64()
{
  v1 = *(v0 + 32);

  v2 = sub_1A46EBBBC();
  (*(*v1 + 792))(v2);

  v3 = *(v0 + 8);
  v4 = *(v0 + 32);

  return v3(v4);
}

void sub_1A46EF014(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A46EF078()
{
  if (!qword_1EB1407F0)
  {
    sub_1A46EFBF8(255, &unk_1EB1407D0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E695BF70]);
    sub_1A3C52C70(255, &qword_1EB12B180);
    sub_1A46EF1B4(&unk_1EB140800);
    sub_1A45EC164();
    v0 = sub_1A5247824();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1407F0);
    }
  }
}

uint64_t sub_1A46EF158()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A46E9EF0(0);
  }

  return result;
}

uint64_t sub_1A46EF1B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A46EFBF8(255, &unk_1EB1407D0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E695BF70]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A46EF23C()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1A46EF4DC()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 816))(KeyPath);

  return *(v0 + *(*v0 + 208));
}

unint64_t sub_1A46EF598()
{
  result = qword_1EB140880;
  if (!qword_1EB140880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140880);
  }

  return result;
}

void sub_1A46EF5EC()
{
  if (!qword_1EB140888)
  {
    sub_1A46EF598();
    v0 = type metadata accessor for OneUpSharePlayMessage();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140888);
    }
  }
}

unint64_t sub_1A46EF648()
{
  result = qword_1EB1408A8;
  if (!qword_1EB1408A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1408A8);
  }

  return result;
}

uint64_t sub_1A46EF69C()
{
  (*(*v0 + 592))(v4);
  if (v4[3])
  {
    sub_1A3C341C8(v4, v3);
    sub_1A46EF8F4(v4, &unk_1EB1407C0, sub_1A3E8814C);
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    static OneUpSharePlayTileTransform.identity(for:)(0, 0, &v2);
  }

  return sub_1A46EF8F4(v4, &unk_1EB1407C0, sub_1A3E8814C);
}

uint64_t sub_1A46EF7C8()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3D60150;

  return sub_1A46EC00C(v7, v8, v9, v0 + v5, v6, v3, v2);
}

uint64_t sub_1A46EF8F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A46EF014(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A46EF964()
{
  if (!qword_1EB1408C0)
  {
    sub_1A46EF5EC();
    sub_1A5241BE4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1408C0);
    }
  }
}

uint64_t sub_1A46EF9D4()
{
  v1 = *(v0 + 24);
  (*(**(v0 + 16) + 592))(v13);
  if (!v13[3])
  {
    return sub_1A46EF8F4(v13, &unk_1EB1407C0, sub_1A3E8814C);
  }

  sub_1A3C341C8(v13, v10);
  sub_1A46EF8F4(v13, &unk_1EB1407C0, sub_1A3E8814C);
  v2 = v11;
  v3 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  v8[2] = *(v1 + 32);
  v9 = *(v1 + 48);
  v5 = *(v3 + 128);
  sub_1A46EFB14(v1, v7);
  v5(v8, 1, v2, v3);

  return __swift_destroy_boxed_opaque_existential_0(v10);
}

void sub_1A46EFB70()
{
  if (!qword_1EB1408D8)
  {
    sub_1A46EFBF8(255, &qword_1EB1408E0, &type metadata for OneUpSharePlayTileTransform, MEMORY[0x1E695BED0]);
    sub_1A46EFC60();
    v0 = sub_1A52477E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1408D8);
    }
  }
}

void sub_1A46EFBF8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void, void))
{
  if (!*a2)
  {
    v5 = a4(0, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A46EFC60()
{
  result = qword_1EB1408E8;
  if (!qword_1EB1408E8)
  {
    sub_1A46EFBF8(255, &qword_1EB1408E0, &type metadata for OneUpSharePlayTileTransform, MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1408E8);
  }

  return result;
}

void sub_1A46EFCDC()
{
  if (!qword_1EB1408F0)
  {
    sub_1A46EFB70();
    sub_1A3C52C70(255, &qword_1EB12B180);
    sub_1A46EFF60(&qword_1EB1408F8, sub_1A46EFB70);
    sub_1A45EC164();
    v0 = sub_1A5247834();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1408F0);
    }
  }
}

unint64_t sub_1A46EFDA8()
{
  result = qword_1EB140900;
  if (!qword_1EB140900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140900);
  }

  return result;
}

uint64_t sub_1A46EFE08()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A46EB948(v3, v4, v5, v2, v0 + 40);
}

uint64_t sub_1A46EFEAC(uint64_t a1, uint64_t a2)
{
  sub_1A46EF014(0, &unk_1EB1407C0, sub_1A3E8814C, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A46EFF60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A46F0074(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A46EF014(255, a2, MEMORY[0x1E695BF10], a3);
    sub_1A46EFF60(&qword_1EB13E878, MEMORY[0x1E695BF10]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A46F0120()
{
  *(*(v0 + 16) + *(**(v0 + 16) + 208)) = *(v0 + 24);
}

uint64_t sub_1A46F0170()
{
  *(*(v0 + 16) + *(**(v0 + 16) + 168)) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A46F01C0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A46EF014(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A46F02C0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1B0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1A46F03E0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F0260();
  return sub_1A46F0598;
}

uint64_t sub_1A46F05A4()
{
  v1 = qword_1EB140940;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A46F05E8(char a1)
{
  v3 = qword_1EB140940;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A46F0698@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1E0))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A46F079C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F0638();
  return sub_1A46F0954;
}

uint64_t sub_1A46F09E0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x210))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1A46F0B00(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F0980();
  return sub_1A46F0CB8;
}

uint64_t sub_1A46F0CC4()
{
  v1 = qword_1EB140950;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A46F0D08(char a1)
{
  v3 = qword_1EB140950;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A46F0DB8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x240))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A46F0EBC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F0D58();
  return sub_1A46F1074;
}

uint64_t sub_1A46F1100@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x270))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1A46F1220(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F10A0();
  return sub_1A46F13D8;
}

uint64_t sub_1A46F13E4@<X0>(_BYTE *a1@<X8>)
{
  v3 = qword_1EB140960;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1A46F1438(char *a1)
{
  v2 = *a1;
  v3 = qword_1EB140960;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void *sub_1A46F14E8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2A0))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A46F155C(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2A8))(&v4);
}

uint64_t sub_1A46F15E0(char *a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *a1;
  swift_beginAccess();
  sub_1A3EBA3F8();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB140960;
    result = swift_beginAccess();
    *(v2 + v6) = v4;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v3 & *v1) + 0x8E8))(v9);
  }

  return result;
}

void (*sub_1A46F1790(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F1488();
  return sub_1A46F1948;
}

uint64_t sub_1A46F19C0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2D0))();
  *a2 = result;
  return result;
}

void (*sub_1A46F1ACC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F1960();
  return sub_1A46F1C84;
}

uint64_t sub_1A46F1CFC@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x300))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3DDBE10;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A46F1DA4(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3E30F88;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x308);
  sub_1A3C66EE8(v3);
  return v7(v6, v5);
}

uint64_t sub_1A46F1E88(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB140970);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (!v6)
  {
    v9 = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = sub_1A3DDBE10;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_1A3C7146C;
LABEL_6:
  sub_1A3C66EE8(v6);
  sub_1A3C66EE8(a1);
  sub_1A3C33378(v11);
  v12 = sub_1A3C33378(v9);
  MEMORY[0x1EEE9AC00](v12);
  KeyPath = swift_getKeyPath();
  v14 = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x8E8))(v14);
  sub_1A3C33378(a1);
}

void (*sub_1A46F20C8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F1C9C();
  return sub_1A46F2280;
}

void sub_1A46F228C(uint64_t a1)
{
  v3 = qword_1EB140978;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A46F2344@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x330))();
  *a2 = result;
  return result;
}

uint64_t sub_1A46F23A8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x338);
  v4 = *a1;
  return v3(v2);
}

void (*sub_1A46F2454(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F22E4();
  return sub_1A46F260C;
}

uint64_t sub_1A46F2630()
{
  sub_1A4702348();
}

uint64_t sub_1A46F2658@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A4702348();
}

uint64_t sub_1A46F26C0(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  KeyPath = swift_getKeyPath();
  v7 = v1;
  v8 = a1;
  (*((*v3 & *v1) + 0x8E8))(KeyPath, sub_1A47048A4, &v6, MEMORY[0x1E69E7CA8] + 8);
}

void sub_1A46F27A8(uint64_t a1)
{
  v3 = qword_1EB140988;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A46F2860@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x390))();
  *a2 = result;
  return result;
}

uint64_t sub_1A46F28C4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x398);
  v4 = *a1;
  return v3(v2);
}

void sub_1A46F2948(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A4702404(0, &unk_1EB120A60, &qword_1EB120A70, 0x1E6978760, MEMORY[0x1E69E6720]);
  sub_1A4444E20();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB140988;
    swift_beginAccess();
    v7 = *(v2 + v6);
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x8E8))(v9);
  }
}

void (*sub_1A46F2B30(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F2800();
  return sub_1A46F2CE8;
}

uint64_t (*sub_1A46F2CF4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A46F2D58;
}

uint64_t sub_1A46F2D70@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3C0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A46F2DD4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3C8);
  v4 = *a1;
  return v3(v2);
}

void sub_1A46F2E58(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A524DF24();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v4 = sub_1A524C594();
  if (v4)
  {
    sub_1A470248C(a1);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v4);
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v3 & *v1) + 0x8E8))(v6);
  }
}

void (*sub_1A46F3034(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F2CF4(v4);
  return sub_1A46F31EC;
}

uint64_t sub_1A46F31F8(uint64_t a1)
{
  v3 = qword_1EB140998;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1A46F32B0()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x8E0))(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A46F3384@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3F0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A46F3454(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A3DC9268();
  sub_1A3DC92EC();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB140998;
    swift_beginAccess();
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x8E8))(v9);
  }
}

void (*sub_1A46F3614(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F3250();
  return sub_1A46F37CC;
}

uint64_t sub_1A46F37D8()
{
  v1 = qword_1EB1409A0;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A46F381C(char a1)
{
  v3 = qword_1EB1409A0;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A46F38CC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x420))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A46F39D0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F386C();
  return sub_1A46F3B88;
}

uint64_t sub_1A46F3C14@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x450))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = sub_1A3DDBE10;
  a2[1] = result;
  return result;
}

uint64_t sub_1A46F3CB0(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x458);

  return v6(sub_1A3E30F88, v5);
}

uint64_t sub_1A46F3D70()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x8E0))(KeyPath);

  v3 = (v0 + qword_1EB1409A8);
  swift_beginAccess();
  v4 = *v3;

  return v4;
}

uint64_t sub_1A46F3E54(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v14 = *((v7 & v5) + 0x50);
  KeyPath = swift_getKeyPath();
  v11 = v2;
  v12 = a1;
  v13 = a2;
  (*((*v6 & *v2) + 0x8E8))(KeyPath, sub_1A47025BC, &v10, MEMORY[0x1E69E7CA8] + 8);
}

void (*sub_1A46F3F68(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F3BB4();
  return sub_1A46F4120;
}

uint64_t sub_1A46F412C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB1409B0);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1A46F41EC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x480))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1A46F42D0()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x8E0))(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A46F43B4(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A3C398E8(0, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1A4444FB4();
  v6 = sub_1A524C594();
  if (v6)
  {
    v7 = (v2 + qword_1EB1409B0);
    swift_beginAccess();
    *v7 = a1;
    v7[1] = a2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v6);
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v5 & *v2) + 0x8E8))(v10);
  }
}

void (*sub_1A46F45A4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F418C();
  return sub_1A46F475C;
}

uint64_t sub_1A46F47E8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4B0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1A46F4908(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F4788();
  return sub_1A46F4AC0;
}

uint64_t sub_1A46F4ACC()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x3C0))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 localIdentifier];

  v4 = sub_1A524C674();
  return v4;
}

uint64_t sub_1A46F4B8C()
{
  v1 = qword_1EB1409C0;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A46F4BD0(char a1)
{
  v3 = qword_1EB1409C0;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A46F4C80@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4F8))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A46F4D84(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F4C20();
  return sub_1A46F4F3C;
}

void sub_1A46F4F48(uint64_t a1)
{
  v3 = qword_1EB1409C8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A46F5000@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x528))();
  *a2 = result;
  return result;
}

uint64_t sub_1A46F5064(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x530);
  v4 = *a1;
  return v3(v2);
}

void *sub_1A46F50E8(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x8E0))(KeyPath);

  v6 = *a2;
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = v7;
  return v7;
}

void sub_1A46F51E0(void *a1, uint64_t *a2)
{
  v4 = v2;
  v6 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A4702404(0, &qword_1EB126620, &qword_1EB126630, 0x1E69DCAB8, MEMORY[0x1E69E6720]);
  sub_1A3EBA4B8();
  v7 = sub_1A524C594();
  if (v7)
  {
    v8 = *a2;
    swift_beginAccess();
    v9 = *(v4 + v8);
    *(v4 + v8) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    KeyPath = swift_getKeyPath();
    v11 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v6 & *v2) + 0x8E8))(v11);
  }
}

void (*sub_1A46F53C4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F4FA0();
  return sub_1A46F557C;
}

uint64_t sub_1A46F5588()
{
  v1 = v0 + qword_1EB1409D0;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1A46F55D4(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + qword_1EB1409D0;
  result = swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
  return result;
}

uint64_t sub_1A46F5698@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x558))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t sub_1A46F5770()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x8E0))(KeyPath);

  v3 = v0 + qword_1EB1409D0;
  swift_beginAccess();
  return *v3;
}

uint64_t sub_1A46F5848(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A4704BB8(0, &unk_1EB1266F0, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
  sub_1A3EBA740();
  v9 = sub_1A524C594();
  if (v9)
  {
    v10 = v4 + qword_1EB1409D0;
    result = swift_beginAccess();
    *v10 = a1;
    *(v10 + 1) = a2;
    v10[16] = a3 & 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    KeyPath = swift_getKeyPath();
    v13 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v8 & *v4) + 0x8E8))(v13);
  }

  return result;
}

void (*sub_1A46F5A5C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F5638();
  return sub_1A46F5C14;
}

uint64_t sub_1A46F5C20()
{
  result = sub_1A4702348();
  if (result)
  {
    v1 = *(*result + 280);

    v3 = v1(v2);

    v4 = *(v3 + 24);
    v5 = v4;

    if (v4 && (v6 = [v5 fetchedObjects], v5, v6))
    {
      sub_1A3C52C70(0, &qword_1EB126660);
      v7 = sub_1A524CA34();

      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A46F5D00@<X0>(_BYTE *a1@<X8>)
{
  v3 = qword_1EB1409E0;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1A46F5D54(char *a1)
{
  v2 = *a1;
  v3 = qword_1EB1409E0;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void *sub_1A46F5E04@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x590))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A46F5E78(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x598))(&v4);
}

uint64_t sub_1A46F5EFC@<X0>(uint64_t *a1@<X1>, _BYTE *a2@<X8>)
{
  v5 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v2) + 0x8E0))(KeyPath);

  v7 = *a1;
  result = swift_beginAccess();
  *a2 = *(v2 + v7);
  return result;
}

uint64_t sub_1A46F5FD4(char *a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *a1;
  swift_beginAccess();
  sub_1A3EBA5E8();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB1409E0;
    result = swift_beginAccess();
    *(v2 + v6) = v4;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v3 & *v1) + 0x8E8))(v9);
  }

  return result;
}

void (*sub_1A46F6184(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F5DA4();
  return sub_1A46F633C;
}

uint64_t sub_1A46F6348()
{
  v1 = qword_1EB1409E8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A46F638C(char a1)
{
  v3 = qword_1EB1409E8;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A46F643C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5C0))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A46F6540(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F63DC();
  return sub_1A46F66F8;
}

uint64_t sub_1A46F6704()
{
  v1 = qword_1EB1409F0;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A46F6748(char a1)
{
  v3 = qword_1EB1409F0;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A46F67F8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5F0))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A46F68FC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F6798();
  return sub_1A46F6AB4;
}

uint64_t sub_1A46F6AC0()
{
  v1 = qword_1EB1409F8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A46F6B04(char a1)
{
  v3 = qword_1EB1409F8;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A46F6BB4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x620))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A46F6CB8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F6B54();
  return sub_1A46F6E70;
}

uint64_t sub_1A46F6E7C()
{
  v1 = qword_1EB140A00;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A46F6EC0(char a1)
{
  v3 = qword_1EB140A00;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A46F6F70@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x650))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A46F7074(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F6F10();
  return sub_1A46F722C;
}

uint64_t sub_1A46F72A4@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x680))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3DDBE10;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A46F734C(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3E30F88;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x688);
  sub_1A3C66EE8(v3);
  return v7(v6, v5);
}

uint64_t sub_1A46F7430(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB140A08);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (!v6)
  {
    v9 = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = sub_1A3DDBE10;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_1A3DDBE10;
LABEL_6:
  sub_1A3C66EE8(v6);
  sub_1A3C66EE8(a1);
  sub_1A3C33378(v11);
  v12 = sub_1A3C33378(v9);
  MEMORY[0x1EEE9AC00](v12);
  KeyPath = swift_getKeyPath();
  v14 = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x8E8))(v14);
  sub_1A3C33378(a1);
}

void (*sub_1A46F7670(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F7244();
  return sub_1A46F7828;
}

uint64_t sub_1A46F7834@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x698))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A46F78FC()
{
  v1 = qword_1EB140930;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A46F7940(char a1)
{
  v3 = qword_1EB140930;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A46F79F0()
{
  v1 = qword_1EB140A10;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A46F7A34(uint64_t a1)
{
  v3 = qword_1EB140A10;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A46F7AE4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x6C8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A46F7BBC(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  type metadata accessor for _PHPickerSourceType(0);
  sub_1A3C29E04(&qword_1EB12DB98, type metadata accessor for _PHPickerSourceType);
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB140A10;
    result = swift_beginAccess();
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x8E8))(v9);
  }

  return result;
}

void (*sub_1A46F7D9C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F7A84();
  return sub_1A46F7F54;
}

uint64_t sub_1A46F7F60()
{
  v1 = qword_1EB140A18;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A46F7FA4(char a1)
{
  v3 = qword_1EB140A18;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A46F8068@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x6F8))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A46F8158(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F7FF4();
  return sub_1A46F8310;
}

void sub_1A46F831C()
{
  v1 = sub_1A523FBB4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v74 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v66 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v66 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v66 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v66 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v77 = &v66 - v17;
  v18 = MEMORY[0x1E69E7D40];
  v19 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0))(v16);
  if (v19)
  {
  }

  v20 = (*((*v18 & *v0) + 0x700))(v19 == 0);
  v21 = (*v18 & *v0) + 1832;
  v22 = *((*v18 & *v0) + 0x728);
  v23 = *((v22)(v20) + 16);

  v24 = (*((*v18 & *v0) + 0x880))(v23);
  v25 = (*v18 & *v0) + 1928;
  v76 = *((*v18 & *v0) + 0x788);
  v26 = (v76)(v24);
  if (!*(v26 + 16))
  {

LABEL_7:
    v34 = (*((*v18 & *v0) + 0x3C0))(v33);
    if (v34)
    {

      v35 = 0;
    }

    else
    {
      v47 = v18;
      v48 = *(v76() + 16);

      if (v48)
      {
        v35 = 0;
        v18 = v47;
      }

      else
      {
        v18 = v47;
        if ((*((*v47 & *v0) + 0x878))(v49) < 1)
        {
          v35 = 0;
        }

        else
        {
          v55 = v22();
          if (*(v55 + 16))
          {
            v73 = v6;
            v56 = *(v2 + 80);
            v66 = v1;
            v57 = v2;
            v58 = *(v2 + 16);
            v76 = ((v56 + 32) & ~v56);
            v77 = v58;
            v59 = v74;
            (v58)(v74, v76 + v55, v1);

            v60 = v57;
            v61 = v73;
            v62 = v59;
            v63 = v66;
            (*(v57 + 32))(v73, v62, v66);
            sub_1A4704BB8(0, &qword_1EB12E380, MEMORY[0x1E6985D18], MEMORY[0x1E69E6F90]);
            v64 = v76;
            v65 = swift_allocObject();
            *(v65 + 16) = xmmword_1A52F8E10;
            (v77)(v64 + v65, v61, v63);
            v18 = v47;
            (*((*v47 & *v0) + 0x790))(v65);
            (*(v60 + 8))(v61, v63);
            v35 = 1;
          }

          else
          {

            v35 = 0;
          }
        }
      }
    }

    goto LABEL_15;
  }

  v71 = v11;
  v72 = v25;
  v73 = v6;
  v68 = *(v2 + 80);
  v27 = *(v2 + 16);
  v69 = (v68 + 32) & ~v68;
  v70 = v27;
  v27(v14, (v26 + v69), v1);

  v28 = v77;
  v67 = *(v2 + 32);
  v29 = v67(v77, v14, v1);
  v30 = (v22)(v29);
  v31 = sub_1A46F8B90(v28, v30);

  if (v31)
  {
    v33 = (*(v2 + 8))(v28, v1);
    v18 = MEMORY[0x1E69E7D40];
    v6 = v73;
    goto LABEL_7;
  }

  v36 = v2;
  v74 = v21;
  v76 = v22;
  v37 = (v22)(v32);
  if (*(v37 + 16))
  {
    v38 = v69;
    v39 = v75;
    v40 = v1;
    v41 = v1;
    v42 = v70;
    v70(v75, (v37 + v69), v41);

    v43 = v71;
    v67(v71, v39, v40);
    sub_1A4704BB8(0, &qword_1EB12E380, MEMORY[0x1E6985D18], MEMORY[0x1E69E6F90]);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1A52F8E10;
    v42(v44 + v38, v43, v40);
    v45 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x790))(v44);
    v46 = *(v36 + 8);
    v46(v43, v40);
    v46(v77, v40);
    v18 = v45;
  }

  else
  {

    v18 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x790))(MEMORY[0x1E69E7CC0]);
    (*(v2 + 8))(v77, v1);
  }

  v35 = 1;
  v22 = v76;
LABEL_15:
  v50 = (*((*v18 & *v0) + 0x570))();
  if (v50)
  {
    if (v50 >> 62)
    {
      v51 = sub_1A524E2B4();

      if (v35)
      {
        return;
      }
    }

    else
    {
      v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v35)
      {
        return;
      }
    }
  }

  else
  {
    if (v35)
    {
      return;
    }

    v51 = 0;
  }

  v52 = *((v22)(v50) + 16);

  if (v51 <= 4 && v51 < v52 || (v54 = *((v22)(v53) + 16), , v54 < v51))
  {
    sub_1A46FCE80();
  }
}

BOOL sub_1A46F8B90(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_1A523FBB4();
    ++v2;
    sub_1A3C29E04(&qword_1EB1260F0, MEMORY[0x1E6985D18]);
  }

  while ((sub_1A524C594() & 1) == 0);
  return v3 != v4;
}

void sub_1A46F8C9C(uint64_t a1)
{
  v3 = qword_1EB140A20;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_1A46F831C();
}

uint64_t (*sub_1A46F8CF8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A46F8D5C;
}

uint64_t sub_1A46F8D74(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_1A46F8DB8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x728))();
  *a2 = result;
  return result;
}

void (*sub_1A46F8ED8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F8CF8(v4);
  return sub_1A46F9090;
}

uint64_t sub_1A46F909C()
{
  v1 = qword_1EB140A28;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A46F90E0(char a1)
{
  v3 = qword_1EB140A28;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A46F91A4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x758))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A46F9294(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F9130();
  return sub_1A46F944C;
}

void sub_1A46F9458(uint64_t a1)
{
  v3 = qword_1EB140A30;
  swift_beginAccess();
  *(v1 + v3) = a1;

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x760))(1);
  sub_1A46FCE80();
}

void (*sub_1A46F9500(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A46F9564;
}

void sub_1A46F9564(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x760))(1);
    sub_1A46FCE80();
  }
}

uint64_t sub_1A46F95D8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x788))();
  *a2 = result;
  return result;
}

uint64_t sub_1A46F96F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A4704BB8(0, &qword_1EB120D40, MEMORY[0x1E6985D18], MEMORY[0x1E69E62F8]);
  sub_1A3EBA9E0();
  v9 = sub_1A524C594();
  if (v9)
  {
    return a5(a1);
  }

  MEMORY[0x1EEE9AC00](v9);
  KeyPath = swift_getKeyPath();
  v12 = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*v8 & *v5) + 0x8E8))(v12);
}

void (*sub_1A46F98CC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F9500(v4);
  return sub_1A46F9A84;
}

uint64_t sub_1A46F9A90()
{
  v1 = qword_1EB140A38;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A46F9AD4(char a1)
{
  v3 = qword_1EB140A38;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A46F9B84@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x7B8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A46F9C60(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x8E0))(KeyPath);

  v6 = *a2;
  swift_beginAccess();
  return *(v2 + v6);
}

uint64_t sub_1A46F9D50(char a1, uint64_t *a2)
{
  v4 = v2;
  v6 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v7 = a1 & 1;
  v8 = sub_1A524C594();
  if (v8)
  {
    v9 = *a2;
    result = swift_beginAccess();
    *(v4 + v9) = v7;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    KeyPath = swift_getKeyPath();
    v12 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v6 & *v4) + 0x8E8))(v12);
  }

  return result;
}

void (*sub_1A46F9F00(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46F9B24();
  return sub_1A46FA0B8;
}

uint64_t sub_1A46FA130@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x7E8))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3DDBE10;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A46FA1D8(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3D6069C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x7F0);
  sub_1A3C66EE8(v3);
  return v7(v6, v5);
}

uint64_t sub_1A46FA2BC(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x8E0))(KeyPath);

  v6 = (v2 + *a2);
  swift_beginAccess();
  v7 = *v6;
  sub_1A3C66EE8(*v6);
  return v7;
}

uint64_t sub_1A46FA39C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB140A40);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (!v6)
  {
    v9 = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = sub_1A3DDBE10;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_1A3DDBE10;
LABEL_6:
  sub_1A3C66EE8(v6);
  sub_1A3C66EE8(a1);
  sub_1A3C33378(v11);
  v12 = sub_1A3C33378(v9);
  MEMORY[0x1EEE9AC00](v12);
  KeyPath = swift_getKeyPath();
  v14 = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x8E8))(v14);
  sub_1A3C33378(a1);
}

void (*sub_1A46FA5DC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46FA0D0();
  return sub_1A46FA794;
}

uint64_t sub_1A46FA820@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x818))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1A46FA918()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x8E0))(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A46FAA1C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v8 = sub_1A524C594();
  if (v8)
  {
    v9 = (v3 + *a3);
    swift_beginAccess();
    *v9 = a1;
    v9[1] = a2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    KeyPath = swift_getKeyPath();
    v12 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v7 & *v3) + 0x8E8))(v12);
  }
}

void (*sub_1A46FABE4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46FA7C0();
  return sub_1A46FAD9C;
}

uint64_t sub_1A46FAE14@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x848))();
  *a2 = result;
  return result;
}

void sub_1A46FAEF8()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x8E0))(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A46FAFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v15 = *((v9 & v7) + 0x50);
  KeyPath = swift_getKeyPath();
  v13 = v4;
  v14 = a1;
  (*((*v8 & *v4) + 0x8E8))(KeyPath, a4, &v12, MEMORY[0x1E69E7CA8] + 8);
}

void (*sub_1A46FB0F0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46FADB4();
  return sub_1A46FB2A8;
}

uint64_t sub_1A46FB2B4()
{
  v1 = qword_1EB140A58;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A46FB2F8(uint64_t a1)
{
  v3 = qword_1EB140A58;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A46FB3A8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x878))();
  *a2 = result;
  return result;
}

uint64_t sub_1A46FB480(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x8E0))(KeyPath);

  v6 = *a2;
  swift_beginAccess();
  return *(v2 + v6);
}

uint64_t sub_1A46FB548(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB140A58;
    result = swift_beginAccess();
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x8E8))(v9);
  }

  return result;
}

void (*sub_1A46FB6F4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8E0))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A46FB348();
  return sub_1A46FB8AC;
}

void sub_1A46FB8B8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  swift_getWitnessTable();
  sub_1A52415E4();

  free(v1);
}

id LemonadeCollectionCustomizationAlbumsModel.init(collection:)(void *a1)
{
  v3 = sub_1A3C38BD4();
  v4 = &v1[qword_1EB140938];
  *v4 = v3;
  v4[1] = v5;
  v1[qword_1EB140940] = 1;
  v6 = sub_1A3C38BD4();
  v7 = &v1[qword_1EB140948];
  *v7 = v6;
  v7[1] = v8;
  v1[qword_1EB140950] = 1;
  v9 = sub_1A3C38BD4();
  v10 = &v1[qword_1EB140958];
  *v10 = v9;
  v10[1] = v11;
  v1[qword_1EB140960] = 0;
  v12 = MEMORY[0x1E69E7CC0];
  *&v1[qword_1EB140968] = MEMORY[0x1E69E7CC0];
  v13 = &v1[qword_1EB140970];
  *v13 = 0;
  v13[1] = 0;
  *&v1[qword_1EB140978] = 0;
  *&v1[qword_1EB140980] = 0;
  v14 = qword_1EB140988;
  *&v1[qword_1EB140988] = 0;
  *&v1[qword_1EB140990] = 0;
  *&v1[qword_1EB140998] = 0;
  v1[qword_1EB1409A0] = 1;
  v15 = &v1[qword_1EB1409A8];
  *v15 = PXDisplayCollectionDetailedCountsMake;
  v15[1] = 0;
  v16 = &v1[qword_1EB1409B0];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v1[qword_1EB1409B8];
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v1[qword_1EB1409C0] = 1;
  *&v1[qword_1EB1409C8] = 0;
  v18 = &v1[qword_1EB1409D0];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = 1;
  *&v1[qword_1EB1409D8] = 5;
  v1[qword_1EB1409E0] = 0;
  v1[qword_1EB1409E8] = 0;
  v1[qword_1EB1409F0] = 0;
  v1[qword_1EB1409F8] = 1;
  v1[qword_1EB140A00] = 0;
  v19 = &v1[qword_1EB140A08];
  *v19 = 0;
  v19[1] = 0;
  v1[qword_1EB140930] = 0;
  *&v1[qword_1EB140A10] = 0;
  v1[qword_1EB140A18] = 0;
  *&v1[qword_1EB140A20] = v12;
  v1[qword_1EB140A28] = 0;
  *&v1[qword_1EB140A30] = v12;
  v1[qword_1EB140A38] = 1;
  v20 = &v1[qword_1EB140A40];
  *v20 = 0;
  v20[1] = 0;
  v21 = sub_1A3C38BD4();
  v22 = &v1[qword_1EB140A48];
  *v22 = v21;
  v22[1] = v23;
  *&v1[qword_1EB140A50] = v12;
  *&v1[qword_1EB140A58] = 0;
  sub_1A5241604();
  result = [a1 photoLibrary];
  if (result)
  {
    *&v1[qword_1EB140928] = result;

    *&v1[v14] = 0;
    v32.receiver = v1;
    v32.super_class = type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
    v25 = objc_msgSendSuper2(&v32, sel_init);
    v26 = a1;
    sub_1A46F2E58(a1);
    v27 = 0xE000000000000000;
    sub_1A46F03B8(0, 0xE000000000000000);
    v28 = [v26 localizedTitle];
    if (v28)
    {
      v29 = v28;
      v30 = sub_1A524C674();
      v27 = v31;
    }

    else
    {
      v30 = 0;
    }

    sub_1A46F48E0(v30, v27);
    sub_1A46FC184();

    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A46FBDF4(void *a1, uint64_t a2)
{
  v5 = sub_1A3C38BD4();
  v6 = &v2[qword_1EB140938];
  *v6 = v5;
  v6[1] = v7;
  v2[qword_1EB140940] = 1;
  v8 = sub_1A3C38BD4();
  v9 = &v2[qword_1EB140948];
  *v9 = v8;
  v9[1] = v10;
  v2[qword_1EB140950] = 1;
  v11 = sub_1A3C38BD4();
  v12 = &v2[qword_1EB140958];
  *v12 = v11;
  v12[1] = v13;
  v2[qword_1EB140960] = 0;
  v14 = MEMORY[0x1E69E7CC0];
  *&v2[qword_1EB140968] = MEMORY[0x1E69E7CC0];
  v15 = &v2[qword_1EB140970];
  *v15 = 0;
  v15[1] = 0;
  *&v2[qword_1EB140978] = 0;
  *&v2[qword_1EB140980] = 0;
  *&v2[qword_1EB140988] = 0;
  *&v2[qword_1EB140990] = 0;
  *&v2[qword_1EB140998] = 0;
  v2[qword_1EB1409A0] = 1;
  v16 = &v2[qword_1EB1409A8];
  *v16 = PXDisplayCollectionDetailedCountsMake;
  v16[1] = 0;
  v17 = &v2[qword_1EB1409B0];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v2[qword_1EB1409B8];
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v2[qword_1EB1409C0] = 1;
  *&v2[qword_1EB1409C8] = 0;
  v19 = &v2[qword_1EB1409D0];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  *&v2[qword_1EB1409D8] = 5;
  v2[qword_1EB1409E0] = 0;
  v2[qword_1EB1409E8] = 0;
  v2[qword_1EB1409F0] = 0;
  v2[qword_1EB1409F8] = 1;
  v2[qword_1EB140A00] = 0;
  v20 = &v2[qword_1EB140A08];
  *v20 = 0;
  v20[1] = 0;
  v2[qword_1EB140930] = 0;
  *&v2[qword_1EB140A10] = 0;
  v2[qword_1EB140A18] = 0;
  *&v2[qword_1EB140A20] = v14;
  v2[qword_1EB140A28] = 0;
  *&v2[qword_1EB140A30] = v14;
  v2[qword_1EB140A38] = 1;
  v21 = &v2[qword_1EB140A40];
  *v21 = 0;
  v21[1] = 0;
  v22 = sub_1A3C38BD4();
  v23 = &v2[qword_1EB140A48];
  *v23 = v22;
  v23[1] = v24;
  *&v2[qword_1EB140A50] = v14;
  *&v2[qword_1EB140A58] = 0;
  sub_1A5241604();
  result = [a1 photoLibrary];
  if (result)
  {
    *&v2[qword_1EB140928] = result;
    v28.receiver = v2;
    v28.super_class = type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
    v26 = objc_msgSendSuper2(&v28, sel_init);
    v27 = a1;
    sub_1A46F2948(a1);
    sub_1A46F3454(a2);
    sub_1A46FC184();

    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A46FC184()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *MEMORY[0x1E69E7D40] & *v0;
  v3 = sub_1A46FC524();
  (*((*v1 & *v0) + 0x730))(v3);
  (*((*v1 & *v0) + 0x700))(0);
  v4 = sub_1A46FCAA4();
  (*((*v1 & *v0) + 0x790))(v4);
  v5 = (*((*v1 & *v0) + 0x760))(0);
  v6 = *((*v1 & *v0) + 0x3F0);
  v7 = v6(v5);
  if (v7)
  {
  }

  (*((*v1 & *v0) + 0x428))(v7 == 0);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v10 = *(v2 + 80);
  *(v9 + 16) = v10;
  *(v9 + 24) = v8;
  v11 = *((*v1 & *v0) + 0x458);

  v11(sub_1A4704C1C, v9);

  if (v6(v12))
  {
  }

  else
  {
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v10;
    *(v15 + 24) = v14;
    v16 = *((*v1 & *v0) + 0x7F0);

    v16(sub_1A4704CD8, v15);
  }
}

uint64_t sub_1A46FC524()
{
  v25 = sub_1A523FBB4();
  MEMORY[0x1EEE9AC00](v25);
  v24[4] = v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1A5240E64();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7D40];
  v9 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0))(v5);
  if (v9)
  {
    if (v9 >> 62)
    {
      sub_1A524E2B4();
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v10 = (*((*v8 & *v0) + 0x3C0))();
  if (!v10)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = v10;
  v12 = [v10 photoLibrary];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 photoLibraryURL];

    sub_1A5240DE4();
    v15 = objc_allocWithZone(MEMORY[0x1E69789A8]);
    v16 = sub_1A5240D44();
    v17 = [v15 initWithPhotoLibraryURL_];

    (*(v4 + 8))(v7, v3);
    v18 = [v17 librarySpecificFetchOptions];
    v19 = [objc_opt_self() fetchAssetsInAssetCollection:v11 options:v18];
    v20 = [v19 fetchedObjects];

    if (v20)
    {
      v21 = v11;
      sub_1A3C52C70(0, &qword_1EB126660);
      sub_1A524CA34();

      v11 = v18;
      v18 = v21;
      v17 = v20;
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  v22 = MEMORY[0x1E69E7CC0];

  return v22;
}

id sub_1A46FCAA4()
{
  v1 = v0;
  v2 = sub_1A523FBB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524C2C4();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5240E64();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x3C0))(v11);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = v14;
  v28 = v2;
  result = [v14 photoLibrary];
  if (result)
  {
    v17 = result;
    v18 = [result photoLibraryURL];

    sub_1A5240DE4();
    v19 = objc_allocWithZone(MEMORY[0x1E69789A8]);
    v20 = sub_1A5240D44();
    v21 = [v19 initWithPhotoLibraryURL_];

    (*(v10 + 8))(v13, v9);
    v22 = v21;
    sub_1A524C2A4();
    sub_1A524C254();
    MEMORY[0x1A59075D0](20);
    v23 = sub_1A524C294();
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x480))(v23);
    if (v24)
    {
      sub_1A523FB54();
      sub_1A4704BB8(0, &qword_1EB12E380, MEMORY[0x1E6985D18], MEMORY[0x1E69E6F90]);
      v25 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1A52F8E10;
      (*(v3 + 32))(v26 + v25, v5, v28);
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC0];
    }

    (*(v29 + 8))(v8, v30);
    return v26;
  }

  __break(1u);
  return result;
}

void sub_1A46FCE80()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  v4 = sub_1A523FBB4();
  v77 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v76 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v71 - v8;
  v10 = (*(v3 + 960))(v7);
  if (v10)
  {
    v75 = v10;
    if ((*((*v2 & *v0) + 0x6F8))() & 1) != 0 || ((*((*v2 & *v0) + 0x758))())
    {

      goto LABEL_5;
    }

    v48 = [v75 photoLibrary];
    if (!v48)
    {
      v69 = &v86;
LABEL_59:
      v70 = *(v69 - 32);

      return;
    }

    v49 = v48;
    sub_1A4702404(0, &qword_1EB129F98, &qword_1EB126660, 0x1E6978630, type metadata accessor for PhotoKitItemListManager);
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v50 = swift_allocObject();
    v50[2] = *(v3 + 80);
    v50[3] = v49;
    v50[4] = v75;
    v51 = sub_1A3C52C70(0, &qword_1EB126660);
    v52 = v49;
    v77 = v75;
    sub_1A43FD8EC(v78, v51);
    v53 = PhotoKitItemListManager.__allocating_init(photoLibrary:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v52, 0, &v82);
    sub_1A46F26C0(v53);
    v54 = sub_1A4702348();
    if (v54)
    {
      v55 = *(*v54 + 440);

      v55(v56, INFINITY);
    }

    v57 = sub_1A4702348();
    if (v57)
    {
      v58 = *(*v57 + 280);

      v60 = v58(v59);

      v61 = *(v60 + 24);
      v62 = v61;

      if (v61)
      {
        v63 = [v62 firstObject];

        if (v63)
        {
          v64 = [v63 localIdentifier];

          v65 = sub_1A524C674();
          v67 = v66;

          v68 = v67;
          v57 = v65;
LABEL_58:
          (*((*v2 & *v1) + 0x488))(v57, v68);

          v69 = &v87;
          goto LABEL_59;
        }
      }

      v57 = 0;
    }

    v68 = 0;
    goto LABEL_58;
  }

LABEL_5:
  if (((*((*v2 & *v0) + 0x6F8))() & 1) == 0 && ((*((*v2 & *v0) + 0x758))() & 1) == 0)
  {
    return;
  }

  v11 = (*((*v2 & *v0) + 0x788))();
  v12 = *(v11 + 16);
  v72 = v0;
  if (v12)
  {
    v74 = *(v77 + 2);
    v13 = (v77[80] + 32) & ~v77[80];
    v71[1] = v11;
    v14 = v11 + v13;
    v73 = *(v77 + 9);
    v75 = v77 + 16;
    v15 = (v77 + 8);
    v16 = MEMORY[0x1E69E7CC0];
    v74(v9, v11 + v13, v4);
    while (1)
    {
      v18 = sub_1A523FB64();
      v20 = v19;
      (*v15)(v9, v4);
      if (v20)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1A3D3D914(0, *(v16 + 2) + 1, 1, v16);
        }

        v22 = *(v16 + 2);
        v21 = *(v16 + 3);
        if (v22 >= v21 >> 1)
        {
          v16 = sub_1A3D3D914((v21 > 1), v22 + 1, 1, v16);
        }

        *(v16 + 2) = v22 + 1;
        v17 = &v16[16 * v22];
        *(v17 + 4) = v18;
        *(v17 + 5) = v20;
      }

      v14 += v73;
      if (!--v12)
      {
        break;
      }

      v74(v9, v14, v4);
    }

    v1 = v72;
    v2 = MEMORY[0x1E69E7D40];
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v85 = v16;
  v24 = (*((*v2 & *v1) + 0x728))(v23);
  v25 = *(v24 + 16);
  if (!v25)
  {

    v29 = MEMORY[0x1E69E7CC0];
    v37 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v37)
    {
      goto LABEL_29;
    }

LABEL_41:
    v38 = MEMORY[0x1E69E7CC0];
LABEL_42:

    if (*(v38 + 16) >= 5uLL)
    {
      sub_1A3ECD684(v38, v38 + 32, 0, 9uLL);
      v44 = v43;

      v38 = v44;
    }

    v45 = v72;
    sub_1A3D3A048(v38);
    v46 = v85;
    if (*(v85 + 2))
    {
      sub_1A4702404(0, &qword_1EB129F98, &qword_1EB126660, 0x1E6978630, type metadata accessor for PhotoKitItemListManager);
      v84 = 0;
      v82 = 0u;
      v83 = 0u;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v47 = swift_allocObject();
      *(v47 + 16) = v45;
      *(v47 + 24) = v46;
      sub_1A3C52C70(0, &qword_1EB126660);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    return;
  }

  v75 = *(v77 + 2);
  v26 = (v77[80] + 32) & ~v77[80];
  v73 = v24;
  v27 = v24 + v26;
  v74 = *(v77 + 9);
  v77 += 16;
  v28 = (v77 - 8);
  v29 = MEMORY[0x1E69E7CC0];
  do
  {
    v31 = v76;
    (v75)(v76, v27, v4);
    v32 = sub_1A523FB64();
    v34 = v33;
    (*v28)(v31, v4);
    if (v34)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1A3D3D914(0, *(v29 + 2) + 1, 1, v29);
      }

      v36 = *(v29 + 2);
      v35 = *(v29 + 3);
      if (v36 >= v35 >> 1)
      {
        v29 = sub_1A3D3D914((v35 > 1), v36 + 1, 1, v29);
      }

      *(v29 + 2) = v36 + 1;
      v30 = &v29[16 * v36];
      *(v30 + 4) = v32;
      *(v30 + 5) = v34;
    }

    v27 += v74;
    --v25;
  }

  while (v25);

  v37 = *(v29 + 2);
  if (!v37)
  {
    goto LABEL_41;
  }

LABEL_29:
  v38 = MEMORY[0x1E69E7CC0];
  v77 = (v29 + 40);
  v39 = v29 + 40;
  v40 = 0;
  while (v40 < v37)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      goto LABEL_63;
    }

    if (!*(v16 + 2) || (*(v39 - 1) == *(v16 + 4) ? (v42 = *v39 == *(v16 + 5)) : (v42 = 0), !v42 && (sub_1A524EAB4() & 1) == 0))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    ++v40;
    v39 += 2;
    if (v41 == v37)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
}

id sub_1A46FD8F0(uint64_t a1, void *a2)
{
  v13 = *(a1 + qword_1EB140928);
  v3 = [v13 librarySpecificFetchOptions];
  if (a2[2])
  {
    objc_opt_self();
    sub_1A3C398E8(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v4 = a2[4];
    v5 = a2[5];
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1A52F8E10;
    *(v6 + 32) = v4;
    *(v6 + 40) = v5;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v7 = sub_1A3D35BE4(MEMORY[0x1E69E7CC0]);
  sub_1A4440428(v7);

  sub_1A524C674();
  v8 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v9 = sub_1A524CA14();

  v10 = sub_1A524C634();

  v11 = [v8 initWithObjects:v9 photoLibrary:v13 fetchType:v10 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  return v11;
}

void sub_1A46FDBD8(void *a1, void *a2, void *a3, uint64_t a4, void (*a5)(uint64_t, void *), uint64_t a6)
{
  v7 = v6;
  v12 = MEMORY[0x1E69E7CC0];
  v46 = MEMORY[0x1E69E7CC0];
  v13 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x4B0);
  v14 = v13();
  v16 = v15;

  v18 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v18 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    (v13)(v17);
    v19 = objc_allocWithZone(PXRenameCollectionAction);
    v20 = sub_1A524C634();

    v21 = [v19 initWithCollection:a1 title:v20];

    if (!v21)
    {
      v12 = MEMORY[0x1E69E7CC0];
      if (!a2)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    v22 = v21;
    MEMORY[0x1A5907D70]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();

    v12 = v46;
  }

  if (!a2)
  {
    goto LABEL_16;
  }

LABEL_9:
  v23 = objc_allocWithZone(PXEditCollectionAssetsAction);
  v24 = a2;
  v25 = [v23 initWithAssetCollection:a1 assets:v24];
  if (v25)
  {
    v26 = v25;
    MEMORY[0x1A5907D70]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();

    v12 = v46;
  }

  else
  {
  }

LABEL_16:
  if (a3)
  {
    v27 = objc_allocWithZone(PXMakeKeyAssetAction);
    v28 = a3;
    [v27 initWithAssetCollection:a1 keyAsset:v28];
    MEMORY[0x1A5907D70]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();

    v12 = v46;
  }

  if (v12 >> 62)
  {
    if (sub_1A524E2B4() >= 1)
    {
      goto LABEL_22;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_22:
    v29 = objc_allocWithZone(PXActionGroup);
    sub_1A3C52C70(0, &qword_1EB12DBC0);
    v30 = sub_1A524CA14();

    v31 = [v29 initWithActions_];

    v32 = sub_1A524C634();
    v33 = PXLocalizedString(v32);

    if (!v33)
    {
      sub_1A524C674();
      v33 = sub_1A524C634();
    }

    [v31 setLocalizedActionName_];

    v34 = swift_allocObject();
    v34[2] = v7;
    v34[3] = a1;
    v34[4] = a5;
    v34[5] = a6;
    aBlock[4] = sub_1A47048E8;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D6084C;
    aBlock[3] = &block_descriptor_253;
    v35 = _Block_copy(aBlock);
    v36 = v7;
    v37 = a1;

    [v31 executeWithUndoManager:a4 completionHandler:v35];
    _Block_release(v35);

    return;
  }

  v38 = sub_1A524D224();
  v39 = *sub_1A3CAA3FC();
  if (os_log_type_enabled(v39, v38))
  {
    v40 = v39;
    v41 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v41 = 136446210;
    v42 = [a1 localIdentifier];
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  a5(1, a1);
}

void sub_1A46FE17C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v11 = MEMORY[0x1E69E7D40];
  v12 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x390))();
  if (v12)
  {
    v13 = v12;
    v33 = a3;
    v14 = *((*v11 & *v5) + 0x4B0);
    v15 = v14();
    v17 = v16;

    v19 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v19 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      (v14)(v18);
    }

    else
    {
      sub_1A3C38BD4();
    }

    v21 = objc_allocWithZone(PXCreateAssetCollectionAction);
    v22 = a1;
    v23 = v13;
    v24 = sub_1A524C634();

    v25 = [v21 initWithTitle:v24 parentCollectionList:v23 selectedAssets:v22 keyAsset:a2];

    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = a4;
    v26[4] = a5;
    aBlock[4] = sub_1A4702A40;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D6084C;
    aBlock[3] = &block_descriptor_259;
    v27 = _Block_copy(aBlock);
    v28 = v25;

    [v28 executeWithUndoManager:v33 completionHandler:v27];
    _Block_release(v27);
    v29 = sub_1A44E6630();
    v30 = *(**v29 + 264);

    v30(aBlock, v31);

    if (LemonadeAlbumsContentFilter.isFilterApplied.getter() && (aBlock[0] = *sub_1A44E7304(), sub_1A43FED2C(), (sub_1A524E114() & 1) != 0))
    {
      v32 = *v29;

      aBlock[0] = *sub_1A44E6F70();
      (*(*v32 + 272))(aBlock);
    }

    else
    {
    }
  }

  else
  {
    sub_1A524D234();
    v20 = *sub_1A3CAA3FC();
    sub_1A5246DF4();

    a4(0, 0);
  }
}

void sub_1A46FE530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v62 = a3;
  v66 = sub_1A523FBB4();
  v8 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v61 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = v56 - v12;
  v63 = [*(v4 + qword_1EB140928) librarySpecificFetchOptions];
  v14 = [v63 setWantsIncrementalChangeDetails_];
  v15 = MEMORY[0x1E69E7D40];
  v16 = 0;
  if ((*((*MEMORY[0x1E69E7D40] & *v4) + 0x6F8))(v14))
  {
    v60 = a2;
    v17 = (*((*v15 & *v4) + 0x728))();
    v18 = *(v17 + 16);
    if (v18)
    {
      v58 = a4;
      v59 = v4;
      v56[1] = v17;
      v57 = v8;
      v19 = *(v8 + 16);
      v20 = v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v64 = *(v8 + 72);
      v65 = v19;
      v21 = (v8 + 8);
      v22 = MEMORY[0x1E69E7CC0];
      do
      {
        v24 = v66;
        v65(v13, v20, v66);
        v25 = sub_1A523FB64();
        v27 = v26;
        (*v21)(v13, v24);
        if (v27)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_1A3D3D914(0, *(v22 + 2) + 1, 1, v22);
          }

          v29 = *(v22 + 2);
          v28 = *(v22 + 3);
          if (v29 >= v28 >> 1)
          {
            v22 = sub_1A3D3D914((v28 > 1), v29 + 1, 1, v22);
          }

          *(v22 + 2) = v29 + 1;
          v23 = &v22[16 * v29];
          *(v23 + 4) = v25;
          *(v23 + 5) = v27;
        }

        v20 += v64;
        --v18;
      }

      while (v18);

      a4 = v58;
      v5 = v59;
      v8 = v57;
    }

    else
    {
    }

    v30 = objc_opt_self();
    v31 = sub_1A524CA14();

    v16 = [v30 fetchAssetsWithLocalIdentifiers:v31 options:v63];

    a2 = v60;
    v15 = MEMORY[0x1E69E7D40];
  }

  if ((*((*v15 & *v5) + 0x758))())
  {
    v32 = (*((*v15 & *v5) + 0x788))();
    if (*(v32 + 16))
    {
      v33 = *(v8 + 16);
      v34 = v32 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v35 = v61;
      v36 = v8;
      v37 = v66;
      v33(v61, v34, v66);

      v38 = sub_1A523FB64();
      v40 = v39;
      (*(v36 + 8))(v35, v37);
      if (v40)
      {
        v41 = v15;
        v42 = objc_opt_self();
        sub_1A3C398E8(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1A52F8E10;
        *(v43 + 32) = v38;
        *(v43 + 40) = v40;
        v44 = sub_1A524CA14();

        v45 = v42;
        v15 = v41;
        v46 = [v45 fetchAssetsWithLocalIdentifiers:v44 options:v63];

        v47 = [v46 firstObject];
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  v47 = 0;
LABEL_20:
  v48 = (*((*v15 & *v5) + 0x3C0))();
  if (v48)
  {
    v49 = v48;
    v50 = swift_allocObject();
    v51 = v62;
    *(v50 + 16) = v62;
    *(v50 + 24) = a4;
    v52 = v49;
    sub_1A3C66EE8(v51);
    sub_1A46FDBD8(v52, v16, v47, a2, sub_1A4702D40, v50);
  }

  else
  {
    v53 = swift_allocObject();
    v54 = v62;
    *(v53 + 16) = v62;
    *(v53 + 24) = a4;
    v55 = *((*v15 & *v5) + 0x8C8);
    sub_1A3C66EE8(v54);
    v55(v16, v47, a2, sub_1A4702D38, v53);
  }
}

void sub_1A46FEB84(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A524BEE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A524BF64();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v22 = v14;
    sub_1A3C52C70(0, &qword_1EB12B180);

    v21 = sub_1A524D474();
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    *(v17 + 32) = a1 & 1;
    *(v17 + 40) = a2;
    aBlock[4] = sub_1A3EBB6C8;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_259_0;
    v18 = _Block_copy(aBlock);
    sub_1A3C66EE8(a3);
    v19 = a2;

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A3C29E04(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    sub_1A4704BB8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    v20 = v21;
    MEMORY[0x1A5908800](0, v16, v11, v18);
    _Block_release(v18);

    sub_1A3C33378(a3);
    (*(v9 + 8))(v11, v8);
    (*(v13 + 8))(v16, v22);
  }
}

void sub_1A46FEEA8(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A524BEE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A524BF64();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v22 = v14;
    sub_1A3C52C70(0, &qword_1EB12B180);

    v21 = sub_1A524D474();
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    *(v17 + 32) = a1 & 1;
    *(v17 + 40) = a2;
    aBlock[4] = sub_1A3EBB230;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_266;
    v18 = _Block_copy(aBlock);
    sub_1A3C66EE8(a3);
    v19 = a2;

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A3C29E04(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    sub_1A4704BB8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    v20 = v21;
    MEMORY[0x1A5908800](0, v16, v11, v18);
    _Block_release(v18);

    sub_1A3C33378(a3);
    (*(v9 + 8))(v11, v8);
    (*(v13 + 8))(v16, v22);
  }
}

id LemonadeCollectionCustomizationAlbumsModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LemonadeCollectionCustomizationAlbumsModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A46FF41C(uint64_t a1)
{

  sub_1A3C33378(*(a1 + qword_1EB140970));

  sub_1A3C33378(*(a1 + qword_1EB140A08));

  sub_1A3C33378(*(a1 + qword_1EB140A40));

  v2 = qword_1EB1CF100;
  v3 = sub_1A5241614();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t sub_1A46FF600@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x3C0))();
  *a1 = result;
  return result;
}

void (*sub_1A46FF6C4(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x3D0))();
  return sub_1A3E658B0;
}

void (*sub_1A46FF8E0(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x1C0))();
  return sub_1A3E658B0;
}

void (*sub_1A46FFA48(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x1F0))();
  return sub_1A3E658B0;
}

void (*sub_1A46FFBAC(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x220))();
  return sub_1A3E658B0;
}

void (*sub_1A46FFD10(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x460))();
  return sub_1A3E658B0;
}

void (*sub_1A46FFE78(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x250))();
  return sub_1A3E658B0;
}

void (*sub_1A4700038(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x4C0))();
  return sub_1A3E658B0;
}

void (*sub_1A47001B0(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x2B0))();
  return sub_1A3E658B0;
}

void (*sub_1A4700314(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x2E0))();
  return sub_1A3E658B0;
}

void (*sub_1A4700478(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x310))();
  return sub_1A3E658B0;
}

void (*sub_1A47005DC(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x340))();
  return sub_1A3E658B0;
}

void (*sub_1A47007A8(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x538))();
  return sub_1A3E658B0;
}

void (*sub_1A4700914(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x568))();
  return sub_1A3E658B0;
}

void (*sub_1A4700A8C(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x5A0))();
  return sub_1A3E658B0;
}

void (*sub_1A4700C50(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x5D0))();
  return sub_1A3E658B0;
}

void (*sub_1A4700DB8(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x600))();
  return sub_1A3E658B0;
}

void (*sub_1A4700F20(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x430))();
  return sub_1A3E658B0;
}

void (*sub_1A4701084(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x738))();
  return sub_1A3E658B0;
}

void (*sub_1A47011E8(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x798))();
  return sub_1A3E658B0;
}

void (*sub_1A470134C(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x6D8))();
  return sub_1A3E658B0;
}

void (*sub_1A47014B4(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x7C8))();
  return sub_1A3E62A10;
}

void (*sub_1A4701618(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x7F8))();
  return sub_1A3E658B0;
}

void (*sub_1A470177C(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x828))();
  return sub_1A3E658B0;
}

void (*sub_1A47018E0(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x858))();
  return sub_1A3E658B0;
}

void (*sub_1A4701A70(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x888))();
  return sub_1A3E658B0;
}

void (*sub_1A4701BD8(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x630))();
  return sub_1A3E658B0;
}

void (*sub_1A4701D40(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x660))();
  return sub_1A3E658B0;
}

void (*sub_1A4701EA4(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x690))();
  return sub_1A3E658B0;
}

void (*sub_1A470200C(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x6A8))();
  return sub_1A3E658B0;
}

uint64_t sub_1A47021A0@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x4C8))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A4702348()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x8E0))(KeyPath);

  return *(v0 + qword_1EB140980);
}

void sub_1A4702404(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A470248C(void *a1)
{
  v3 = qword_1EB140990;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1A46FCE80();
}

void sub_1A47024EC()
{
  v1 = *(v0 + 24);
  v2 = v1;
  sub_1A470248C(v1);
}

uint64_t sub_1A47025BC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + qword_1EB1409A8);

  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
}

uint64_t sub_1A47026FC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16) + qword_1EB1409D0;
  result = swift_beginAccess();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  return result;
}

uint64_t sub_1A4702838(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_1A3C66EE8(v3);
  return a1(v3, v4);
}

void sub_1A4702A40(char a1, void *a2)
{
  v5 = *(v2 + 24);
  v6 = [*(v2 + 16) createdAssetCollection];
  v7 = v6;
  if (a1)
  {
    if (v6)
    {
      v8 = v6;
      v9 = sub_1A524D224();
      v10 = *sub_1A3CAA3FC();
      if (os_log_type_enabled(v10, v9))
      {
        v10;
        v11 = swift_slowAlloc();
        swift_slowAlloc();
        *v11 = 136446210;
        v12 = [v8 localIdentifier];
        sub_1A524C674();

        sub_1A3C2EF94();
      }
    }

    else
    {
      sub_1A524D244();
      v18 = *sub_1A3CAA3FC();
      sub_1A5246DF4();
    }
  }

  else
  {
    v13 = sub_1A524D244();
    v14 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = v14;
      v16 = swift_slowAlloc();
      swift_slowAlloc();
      *v16 = 136315138;
      v17 = a2;
      sub_1A4704BB8(0, &qword_1EB139220, sub_1A3DBD9A0, MEMORY[0x1E69E6720]);
      sub_1A524C714();
      sub_1A3C2EF94();
    }
  }

  v5(a1 & 1, v7);
}

uint64_t sub_1A4702D78(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A4702DD0()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

id sub_1A4704838()
{
  v1 = *(v0 + 32);
  v2 = [*(v0 + 24) librarySpecificFetchOptions];
  v3 = [objc_opt_self() fetchKeyAssetsInAssetCollection:v1 options:v2];

  return v3;
}

uint64_t sub_1A47048A4()
{
  *(*(v0 + 16) + qword_1EB140980) = *(v0 + 24);
}

void sub_1A47048E8(char a1, void *a2)
{
  v4 = v2[3];
  v5 = v2[4];
  if (a1)
  {
    v6 = *(v2[2] + qword_1EB140928);
    v7 = [v4 localIdentifier];
    if (!v7)
    {
      sub_1A524C674();
      v7 = sub_1A524C634();
    }

    v8 = [v6 px:v7 assetCollectionWithLocalIdentifier:?];

    if (v8)
    {
      v9 = v8;
      v10 = v9;
      goto LABEL_14;
    }

    v20 = sub_1A524D244();
    v21 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v21, v20))
    {
      loga = v21;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 136446210;
      v24 = [v4 localIdentifier];
      sub_1A524C674();

      sub_1A3C2EF94();
    }
  }

  else
  {
    v12 = sub_1A524D244();
    v13 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = v13;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      if (a2)
      {
        v17 = a2;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        v19 = v18;
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      *(v15 + 4) = v18;
      *v16 = v19;
      _os_log_impl(&dword_1A3C1C000, v14, v12, "Unable to update asset collection: %@", v15, 0xCu);
      sub_1A3CB65E4(v16);
      MEMORY[0x1A590EEC0](v16, -1, -1);
      MEMORY[0x1A590EEC0](v15, -1, -1);
    }
  }

  v9 = v4;
  v10 = 0;
LABEL_14:
  log = v9;
  v5(a1 & 1);
}

void sub_1A4704BB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4704C1C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x600))(v4);
    *v3 = !*v3;
    v2(v4, 0);
  }
}

void sub_1A4704CD8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x5D0))(v4);
    *v3 = !*v3;
    v2(v4, 0);
  }
}

uint64_t sub_1A4704DB4(uint64_t a1)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);

  swift_getObjectType();
  v5 = off_1F17032E8[0];

  if (!v5(a1))
  {
    swift_unknownObjectRelease();
    swift_getObjectType();
    v6 = off_1F1709208[0];
    swift_unknownObjectRetain();
    if ((v6() & 1) == 0)
    {
      swift_unknownObjectRelease();
      sub_1A42CCA40();
      swift_arrayDestroy();
      type metadata accessor for LemonadeNullNavigationParticipant();
      return sub_1A3D76DF4();
    }

    v4 = v3;
  }

  sub_1A42CCA40();
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_1A4704F14(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  sub_1A524CC54();
  v3[13] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[14] = v5;
  v3[15] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A4704FB0, v5, v4);
}

uint64_t sub_1A4704FB0()
{
  v1 = v0[12];
  v2 = *(v1 + 32);
  v0[16] = v2;
  v0[6] = v2;
  v0[7] = &off_1F17032D0;
  v3 = *(v1 + 40);
  v0[17] = v3;
  v0[8] = v3;
  v0[9] = &off_1F17091F0;

  ObjectType = swift_getObjectType();
  v5 = off_1F17032F8;

  v10 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_1A4705124;
  v8 = v0[10];
  v7 = v0[11];

  return (v10)(v8, v7, ObjectType, &off_1F17032D0);
}

uint64_t sub_1A4705124(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v4[22] = v4[16];
    v4[23] = v1;
    sub_1A42CCA40();
    swift_arrayDestroy();
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_1A47055F0;
  }

  else
  {
    v4[19] = a1;
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_1A4705264;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A4705264()
{
  v1 = v0[19];
  swift_unknownObjectRelease();
  if (v1 == 1)
  {
    ObjectType = swift_getObjectType();
    v3 = off_1F1709218;
    swift_unknownObjectRetain();
    v10 = (v3 + *v3);
    v4 = swift_task_alloc();
    v0[20] = v4;
    *v4 = v0;
    v4[1] = sub_1A4705424;
    v6 = v0[10];
    v5 = v0[11];

    return (v10)(v6, v5, ObjectType, &off_1F17091F0);
  }

  else
  {
    v8 = v0[19];

    sub_1A42CCA40();
    swift_arrayDestroy();
    v9 = v0[1];

    return v9(v8);
  }
}

uint64_t sub_1A4705424(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v4[22] = v4[17];
    v4[23] = v1;
    sub_1A42CCA40();
    swift_arrayDestroy();
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_1A47055F0;
  }

  else
  {
    v4[21] = a1;
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_1A4705564;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A4705564()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 168);

  sub_1A42CCA40();
  swift_arrayDestroy();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A47055F0()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4705660(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  sub_1A524CC54();
  v3[11] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[12] = v5;
  v3[13] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A47056FC, v5, v4);
}

uint64_t sub_1A47056FC()
{
  v13 = v0;
  v1 = *(v0 + 80);
  v2 = sub_1A4704DB4(*(v0 + 64));
  v4 = v3;
  *(v0 + 112) = v2;
  ObjectType = swift_getObjectType();
  if (v2 == *(v1 + 32))
  {
    sub_1A42C1E00(*(v0 + 64), &v12);
    if (v12 != 24)
    {
      v6 = *(v0 + 80);
      *(v0 + 16) = v12;
      *(v0 + 56) = 0;
      (*(*v6 + 640))(v0 + 16);
      sub_1A3F6857C(v0 + 16);
    }
  }

  v11 = (*(v4 + 48) + **(v4 + 48));
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  v7[1] = sub_1A47058A8;
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);

  return v11(v9, v8, ObjectType, v4);
}

uint64_t sub_1A47058A8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_1A4705A44;
  }

  else
  {
    v4[17] = a1;
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_1A47059D0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A47059D0()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);
  v2 = *(v0 + 136);

  return v1(v2);
}

uint64_t sub_1A4705A44()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4705AB4(uint64_t a1)
{
  v1 = a1;
  sub_1A4704DB4(a1);
  v3 = v2;
  ObjectType = swift_getObjectType();
  LOBYTE(v1) = (*(v3 + 24))(v1, ObjectType, v3);
  swift_unknownObjectRelease();
  return v1 & 1;
}

uint64_t sub_1A4705B1C(uint64_t a1)
{
  sub_1A4704DB4(a1);
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 32))(a1, ObjectType, v3);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1A4705B84(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3FBB594;

  return sub_1A4704F14(a1, a2);
}

uint64_t sub_1A4705C28(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3FBBB04;

  return sub_1A4705660(a1, a2);
}

uint64_t sub_1A4705CCC(uint64_t a1, uint64_t a2)
{
  sub_1A4704DB4(a1);
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 56))(a1, a2, ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_1A4705E3C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___PXSharedAlbumsActivityEntryItem_date;
  v4 = sub_1A5241144();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_1A4705FE8(void *a1, char a2, uint64_t a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_1A47066B8(a1, a2, a3, a4);

  return v10;
}

void sub_1A4706050()
{
  v1 = *(v0 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_contributorDisplayNames);
  if (*(v0 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_isFromMe) != 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v2 = *(v1 + 16);
  if (v2 >= 2)
  {

    sub_1A3ECD684(v1, v1 + 32, 1, (2 * v2) | 1);
  }
}

void sub_1A47060CC()
{
  if (*(v0 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_assetsForPreviews))
  {
    goto LABEL_9;
  }

  v1 = *(v0 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_activityEntry);
  v2 = [v1 keyAssets];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 fetchedObjects];

    if (v4)
    {
      sub_1A3D435C4();
      sub_1A524CA34();

      goto LABEL_9;
    }
  }

  v5 = [v1 keyAssetUUIDs];
  v6 = sub_1A524CA34();

  v7 = *(v6 + 16);

  if (!v7)
  {
LABEL_9:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v8 = [objc_msgSend(objc_opt_self() fetchKeyAssetsForActivity_];
  if (v8)
  {
    v9 = v8;
    sub_1A3C52C70(0, &qword_1EB126660);
    v10 = sub_1A524CA34();

    if (!(v10 >> 62))
    {
      goto LABEL_8;
    }
  }

  else if (!(MEMORY[0x1E69E7CC0] >> 62))
  {
LABEL_8:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3D435C4();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A47063AC()
{
  v1 = [*(v0 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_activityEntry) contributorDisplayName];
  v2 = sub_1A524C674();

  return v2;
}

id sub_1A47065D0@<X0>(void *a1@<X8>)
{
  v4 = *(*v1 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_activityEntry);
  a1[3] = sub_1A3C52C70(0, &qword_1EB126820);
  *a1 = v4;

  return v4;
}

void sub_1A4706640(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_uuid);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A47066B8(void *a1, char a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_1A5241144();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_activityEntry] = a1;
  v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_displayUseCase] = a2;
  v13 = a1;
  v14 = [v13 uuid];
  v15 = sub_1A524C674();
  v17 = v16;

  v18 = &v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_uuid];
  *v18 = v15;
  v18[1] = v17;
  v19 = [v13 date];
  sub_1A52410F4();

  (*(v10 + 32))(&v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_date], v12, v9);
  v20 = [v13 type];
  *&v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_type] = v20;
  v21 = [v13 isFromMe];
  v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_isFromMe] = v21;
  v22 = [v13 contributorDisplayNames];
  v23 = sub_1A524CA34();

  *&v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_contributorDisplayNames] = v23;
  v24 = [v13 avatarConfigurations];
  sub_1A3C52C70(0, &unk_1EB12CD80);
  v25 = sub_1A524CA34();

  *&v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_avatarInfos] = v25;
  v26 = [v13 albumName];
  v27 = sub_1A524C674();
  v29 = v28;

  v30 = &v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_albumName];
  *v30 = v27;
  v30[1] = v29;
  v31 = [v13 albumGUID];
  v32 = sub_1A524C674();
  v34 = v33;

  v35 = &v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_albumId];
  *v35 = v32;
  v35[1] = v34;
  v36 = [v13 message];
  if (v36)
  {
    v37 = v36;
    v38 = sub_1A524C674();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  v41 = &v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_message];
  *v41 = v38;
  v41[1] = v40;
  v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_isPlaceholder] = a4 & 1;
  v42 = [v13 relatedCommentUUID];
  if (v42)
  {
    v43 = v42;
    v44 = sub_1A524C674();
    v46 = v45;
  }

  else
  {
    v44 = 0;
    v46 = 0;
  }

  v47 = &v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_relatedCommentUUID];
  *v47 = v44;
  v47[1] = v46;
  if (a3)
  {
    v52 = a3;
    sub_1A43D2AD0(0);
    SendableTransfer.init(wrappedValue:)(&v52, v48, &v53);
    *&v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_assetsForPreviews] = v53;
  }

  else
  {
    *&v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_assetsForPreviews] = 0;
  }

  v54.receiver = v4;
  v54.super_class = ObjectType;
  return objc_msgSendSuper2(&v54, sel_init);
}

unint64_t sub_1A4706A78()
{
  result = qword_1EB140A88;
  if (!qword_1EB140A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140A88);
  }

  return result;
}

uint64_t type metadata accessor for SharedAlbumsActivityEntryItem()
{
  result = qword_1EB17DB80;
  if (!qword_1EB17DB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4706BB4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SharedAlbumsActivityEntryItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4706C10()
{
  result = sub_1A5241144();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t *sub_1A4706D38()
{
  result = sub_1A3F67960();
  v1 = *(result + 1);
  v2 = *(result + 1);
  LOWORD(dword_1EB1EBF20) = *result;
  HIWORD(dword_1EB1EBF20) = v1;
  dword_1EB1EBF24 = v2;
  return result;
}

uint64_t *sub_1A4706D70()
{
  result = sub_1A3F67A3C();
  v1 = *(result + 1);
  v2 = *(result + 1);
  LOWORD(dword_1EB1EBF28) = *result;
  HIWORD(dword_1EB1EBF28) = v1;
  dword_1EB1EBF2C = v2;
  return result;
}

uint64_t *sub_1A4706DA8()
{
  result = sub_1A3F67A3C();
  v1 = *(result + 1);
  v2 = *(result + 1);
  LOWORD(dword_1EB1EBF30) = *result;
  HIWORD(dword_1EB1EBF30) = v1;
  dword_1EB1EBF34 = v2;
  return result;
}

uint64_t type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload()
{
  result = qword_1EB1CF730;
  if (!qword_1EB1CF730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4706E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = a4 + *(type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload() + 20);

  return sub_1A42BF46C(a3, v5);
}

unint64_t sub_1A4706E78()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1A4706EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001A53C56A0 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A53D0460 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A524EAB4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1A4706F98(uint64_t a1)
{
  v2 = sub_1A47071D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4706FD4(uint64_t a1)
{
  v2 = sub_1A47071D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A4707010(void *a1)
{
  sub_1A4707530(0, &qword_1EB140A98, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A47071D8();
  sub_1A524ED34();
  v9[15] = 0;
  sub_1A524E994();
  if (!v1)
  {
    type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload();
    v9[14] = 1;
    type metadata accessor for OneUpSharePlayDataSourceMessagePayload(0);
    sub_1A4707898(&qword_1EB131BD0, type metadata accessor for OneUpSharePlayDataSourceMessagePayload);
    sub_1A524E9D4();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1A47071D8()
{
  result = qword_1EB1CF4A8[0];
  if (!qword_1EB1CF4A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CF4A8);
  }

  return result;
}

uint64_t sub_1A470722C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload(0);
  MEMORY[0x1EEE9AC00](v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4707530(0, &qword_1EB140AA0, MEMORY[0x1E69E6F48]);
  v20 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A47071D8();
  sub_1A524ED14();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v16 = v9;
  v12 = v18;
  v22 = 0;
  *v11 = sub_1A524E8A4();
  v11[1] = v13;
  v15 = v13;
  v21 = 1;
  sub_1A4707898(&qword_1EB131BC8, type metadata accessor for OneUpSharePlayDataSourceMessagePayload);
  sub_1A524E8E4();
  (*(v12 + 8))(v8, v20);
  sub_1A42BF46C(v5, v11 + *(v16 + 20));
  sub_1A4707594(v11, v17, type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1A47075FC(v11);
}

void sub_1A4707530(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A47071D8();
    v7 = a3(a1, &type metadata for OneUpSharePlayReplaceDataSourceMessagePayload.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A4707594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A47075FC(uint64_t a1)
{
  v2 = type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A47076A0@<X0>(_DWORD *a1@<X8>)
{
  if (qword_1EB1CF490 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = dword_1EB1EBF24;
  *a1 = dword_1EB1EBF20;
  a1[1] = v1;
  return result;
}

uint64_t sub_1A4707708@<X0>(_DWORD *a1@<X8>)
{
  if (qword_1EB1CF498 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = dword_1EB1EBF2C;
  *a1 = dword_1EB1EBF28;
  a1[1] = v1;
  return result;
}

uint64_t sub_1A4707770@<X0>(_DWORD *a1@<X8>)
{
  if (qword_1EB1CF4A0 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = dword_1EB1EBF34;
  *a1 = dword_1EB1EBF30;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A47077EC(void *a1)
{
  a1[1] = sub_1A4707898(&qword_1EB140AA8, type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload);
  a1[2] = sub_1A4707898(&qword_1EB140AB0, type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload);
  result = sub_1A4707898(&qword_1EB140AB8, type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload);
  a1[3] = result;
  return result;
}

uint64_t sub_1A4707898(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4707910(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1A524EAB4() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);

  return static OneUpSharePlayDataSourceMessagePayload.== infix(_:_:)((a1 + v7), (a2 + v7));
}

uint64_t sub_1A47079CC()
{
  result = type metadata accessor for OneUpSharePlayDataSourceMessagePayload(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1A4707A5C()
{
  result = qword_1EB1CF840[0];
  if (!qword_1EB1CF840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CF840);
  }

  return result;
}

unint64_t sub_1A4707AB4()
{
  result = qword_1EB1CF950;
  if (!qword_1EB1CF950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1CF950);
  }

  return result;
}

unint64_t sub_1A4707B0C()
{
  result = qword_1EB1CF958[0];
  if (!qword_1EB1CF958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CF958);
  }

  return result;
}

uint64_t sub_1A4707BD8@<X0>(uint64_t *a1@<X8>)
{
  v5 = 3;
  v6 = *v1;
  v3 = type metadata accessor for LemonadePickerRootViewModel();
  type metadata accessor for LemonadePeopleHomeView(0);
  sub_1A4708354(&unk_1EB12A120, type metadata accessor for LemonadePeopleHomeView);

  return LemonadeSpecsProviderView.init(model:presentationContext:content:)(&v6, &v5, sub_1A47082F4, v3, a1);
}

id LemonadePeopleHomeViewFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LemonadePeopleHomeViewFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LemonadePeopleHomeViewFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A4707DA8(void *a1, void *a2, void *a3)
{
  sub_1A47081C4(0, &qword_1EB128FD0, MEMORY[0x1E69C2948]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v32 = &v32 - v7;
  sub_1A47081C4(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  type metadata accessor for PickerConfiguration();
  v17 = PickerConfiguration.__allocating_init()();
  v18 = *((*MEMORY[0x1E69E7D40] & *v17) + 0x2D8);
  v19 = a2;
  v18(a2);
  type metadata accessor for LemonadePhotoLibraryContext();
  v20 = a1;
  v21 = v17;
  v22 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v20, v17, 0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for LemonadeNavigationContext(0);
  sub_1A418E1E0(v16, v13);
  v23 = type metadata accessor for LemonadeDetailsContext();
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  LOBYTE(v33) = 3;

  v24 = a3;
  sub_1A3C799F0(v13, 0, 0, a3, v10, &v33, v22, 2);
  v25 = [objc_opt_self() defaultManager];
  v26 = [objc_allocWithZone(PXPhotoKitUIMediaProvider) initWithImageManager:v25 library:v22[2]];

  type metadata accessor for LemonadePickerRootViewModel();
  v27 = v22[2];
  v28 = sub_1A5244084();
  (*(*(v28 - 8) + 56))(v32, 1, 1, v28);
  v29 = v21;
  v30 = v27;
  v31 = v26;
  sub_1A3C5A374();
  sub_1A49C7F18(v30, v31, v29);
}

void sub_1A47081C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A4708218()
{
  if (!qword_1EB140AC0)
  {
    sub_1A4708274();
    v0 = sub_1A5249654();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140AC0);
    }
  }
}

unint64_t sub_1A4708274()
{
  result = qword_1EB1CF9E0[0];
  if (!qword_1EB1CF9E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CF9E0);
  }

  return result;
}

uint64_t sub_1A47082F4@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);

  return sub_1A49A6DE4(v3, 0, 0xE000000000000000, v4, a1);
}

uint64_t sub_1A4708354(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A470839C()
{
  if (!qword_1EB140AD0)
  {
    type metadata accessor for LemonadePickerRootViewModel();
    type metadata accessor for LemonadePeopleHomeView(255);
    sub_1A4708354(&unk_1EB12A120, type metadata accessor for LemonadePeopleHomeView);
    v0 = type metadata accessor for LemonadeSpecsProviderView();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140AD0);
    }
  }
}

uint64_t PhotoStyleCollection.elements.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPhotoStyleCollection_elements;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void PhotoStyleCollection.selectedElement.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A470C3D0(&qword_1EB140AF0, type metadata accessor for PhotoStyleCollection);
  v1 = v0;
  sub_1A5245714();
}

void sub_1A470896C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A470C3D0(&qword_1EB140AF0, type metadata accessor for PhotoStyleCollection);
  v1 = v0;
  sub_1A5245714();
}

void sub_1A4708A2C(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A470C3D0(&qword_1EB140AF0, type metadata accessor for PhotoStyleCollection);
  v2 = v1;
  sub_1A5245714();
}

void sub_1A4708B00(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A470C3D0(&qword_1EB140AF0, type metadata accessor for PhotoStyleCollection);
  v3 = v2;
  sub_1A5245724();
}

void sub_1A4708BAC()
{
  v1 = sub_1A470B344();
  MEMORY[0x1EEE9AC00](v1);
  v2 = objc_allocWithZone(v0);
  sub_1A470C3D0(&qword_1EB140AF0, type metadata accessor for PhotoStyleCollection);
  sub_1A5245754();
}

void PhotoStyleCollection.createMutator()()
{
  type metadata accessor for PhotoStyleCollection.Mutator(0);
  swift_allocObject();
  swift_getKeyPath();
  sub_1A470C3D0(&qword_1EB140B00, type metadata accessor for PhotoStyleCollection.Mutator);
  sub_1A52456D4();
}

void sub_1A4708EAC()
{
  swift_allocObject();
  swift_getKeyPath();
  sub_1A470C3D0(&qword_1EB140B00, type metadata accessor for PhotoStyleCollection.Mutator);
  sub_1A52456D4();
}

void PhotoStyleCollection.Mutator.selectedIndex.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A4708FD4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A4709054()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void PhotoStyleCollection.Mutator.selectedIndex.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void PhotoStyleCollection.Mutator.selectedIndex.modify(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

uint64_t PhotoStyleCollection.Mutator.deinit()
{
  v1 = OBJC_IVAR____TtCC12PhotosUICore20PhotoStyleCollection7Mutator__selectedIndex;
  v2 = sub_1A470B400();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhotoStyleCollection.Mutator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC12PhotosUICore20PhotoStyleCollection7Mutator__selectedIndex;
  v2 = sub_1A470B400();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1A47092E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A470935C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void sub_1A47093CC(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

void PhotoStyleCollection.description.getter()
{
  v1 = v0;
  sub_1A524E404();

  MEMORY[0x1A5907B60](*&v1[OBJC_IVAR___PXPhotoStyleCollection_name], *&v1[OBJC_IVAR___PXPhotoStyleCollection_name + 8]);
  MEMORY[0x1A5907B60](539828256, 0xE400000000000000);
  v2 = OBJC_IVAR___PXPhotoStyleCollection_elements;
  swift_beginAccess();
  if (*&v1[v2] >> 62)
  {
    sub_1A524E2B4();
  }

  v3 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v3);

  MEMORY[0x1A5907B60](0x746E656D656C6520, 0xEC00000023282073);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A470C3D0(&qword_1EB140AF0, type metadata accessor for PhotoStyleCollection);
  v4 = v1;
  sub_1A5245714();
}

id PhotoStyleCollection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotoStyleCollection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A4709888(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR___PXPhotoStyleCollection_id);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A47098A4()
{
  type metadata accessor for PhotoStyleCollection.Mutator(0);
  swift_allocObject();
  swift_getKeyPath();
  sub_1A470C3D0(&qword_1EB140B00, type metadata accessor for PhotoStyleCollection.Mutator);
  sub_1A52456D4();
}

void sub_1A4709984()
{
  sub_1A470C3D0(&qword_1EB140B50, type metadata accessor for PhotoStyleCollection);

  sub_1A5245F44();
}

id sub_1A4709A08@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR___PXPhotoStyleCollection_observable);
  *a1 = v2;
  return v2;
}

void sub_1A4709A20()
{
  sub_1A470C3D0(&qword_1EB140AF0, type metadata accessor for PhotoStyleCollection);

  sub_1A5245C54();
}

uint64_t static PhotoStyleCollection.wantsUT6PreferredOrdering()()
{
  v0 = PLDeviceRegionCode();
  if (v0)
  {
    v1 = v0;
    v2 = sub_1A524C674();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v8[0] = v2;
  v8[1] = v4;
  MEMORY[0x1EEE9AC00](v0);
  v7[2] = v8;
  v5 = sub_1A46E7664(sub_1A46E7788, v7, &unk_1F1720C08);
  sub_1A3C69C5C(0, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  swift_arrayDestroy();

  return v5 & 1;
}

void sub_1A4709C54()
{
  v11 = sub_1A470B344();
  MEMORY[0x1EEE9AC00](v11);
  sub_1A3C69C5C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1A52F9790;
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E69BE128];
  v2 = [v0 semanticStyleCastDisplayName_];

  if (v2)
  {
    sub_1A524C674();
  }

  *(swift_allocObject() + 16) = xmmword_1A52F9790;
  v3 = v1;
  v4 = [v0 semanticStyleCastDisplayName_];

  if (v4)
  {
    v5 = sub_1A524C674();
    v7 = v6;
  }

  else
  {
    v5 = 0x6C616E696769724FLL;
    v7 = 0xE800000000000000;
  }

  type metadata accessor for PhotoStyleElement(0);
  v8 = v3;
  v9 = sub_1A40D35BC();
  sub_1A40D35C0(v9, v10, v5, v7, v8);
}

uint64_t (*static Array<A>.originalCollection.modify())()
{
  if (qword_1EB1CFA70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t static Array<A>.allSystemStylesAsCollections(customOrder:reversed:)(_BYTE *a1, char a2)
{
  v32 = sub_1A470B344();
  v4 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v37[0]) = *a1;
  v6 = sub_1A40D5844(v37);
  if (a2)
  {
    v6 = sub_1A470A544(v6);
  }

  if (v6 >> 62)
  {
    v23 = v6;
    v7 = sub_1A524E2B4();
    v6 = v23;
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_15:

    return MEMORY[0x1E69E7CC0];
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_5:
  v8 = v6;
  v37[4] = MEMORY[0x1E69E7CC0];
  result = sub_1A524E554();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = objc_opt_self();
    v27 = v8 & 0xC000000000000001;
    v28 = v10;
    v25 = v4 + 8;
    v26 = v4 + 32;
    v24 = xmmword_1A52F9790;
    v29 = v7;
    v30 = v8;
    if (v27)
    {
      v16 = MEMORY[0x1A59097F0](0, v8);
    }

    else
    {
      v16 = *(v8 + 32);
    }

    v17 = v16;
    v18 = sub_1A40D611C();
    v19 = sub_1A524C674();
    v35 = v20;
    v36 = v19;

    v21 = sub_1A40D611C();
    v22 = [v28 semanticStyleCastDisplayName_];

    if (v22)
    {
      v11 = sub_1A524C674();
      v33 = v12;
      v34 = v11;
    }

    else
    {
      v33 = 0xE000000000000000;
      v34 = 0;
    }

    sub_1A3C69C5C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = v24;
    *(v13 + 32) = v17;
    v14 = objc_allocWithZone(type metadata accessor for PhotoStyleCollection(0));
    v37[0] = 0;
    v37[3] = 1;
    sub_1A470C3D0(&qword_1EB140AF0, type metadata accessor for PhotoStyleCollection);
    v15 = v17;
    sub_1A5245754();
  }

  __break(1u);
  return result;
}

unint64_t sub_1A470A544(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_1A524E2B4();
    if (v19)
    {
      v20 = v19;
      v1 = sub_1A40C9D70(v19, 0);
      sub_1A470AFE4(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x1E69E7CC0];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_1A524E2B4();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1A59097F0]();
          v11 = MEMORY[0x1A59097F0](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_1A3E2AE98(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_1A3E2AE98(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t static Array<A>.allCreativeStylesAsCollections()()
{
  v0 = [objc_opt_self() allCreativeCasts];
  type metadata accessor for PISemanticStyleCast(0);
  v1 = sub_1A524CA34();

  v2 = *(v1 + 16);
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    result = sub_1A524E554();
    v4 = 0;
    while (v4 < *(v1 + 16))
    {
      v5 = v4 + 1;
      v7 = *(v1 + 8 * v4 + 32);
      v6 = v7;
      sub_1A470A88C(&v7);

      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      result = sub_1A524E524();
      v4 = v5;
      if (v2 == v5)
      {

        return v8;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void sub_1A470A88C(void *a1)
{
  v19 = sub_1A470B344();
  MEMORY[0x1EEE9AC00](v19);
  v2 = *a1;
  v3 = [objc_opt_self() defaultValuesForCast_];
  sub_1A3C52C70(0, &qword_1EB126610);
  v4 = sub_1A524CA34();

  sub_1A524C674();
  v5 = [objc_opt_self() semanticStyleCastDisplayName_];
  if (v5)
  {
    v6 = v5;
    sub_1A524C674();
  }

  sub_1A3C69C5C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1A52F9790;
  v7 = v4 & 0xC000000000000001;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1A59097F0](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    v8 = *(v4 + 32);
  }

  v9 = v8;
  [v8 doubleValue];

  if (!v7)
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v10 = *(v4 + 40);
      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = MEMORY[0x1A59097F0](1, v4);
LABEL_10:
  v11 = v10;
  [v10 doubleValue];

  if (v7)
  {
    v12 = MEMORY[0x1A59097F0](2, v4);
    goto LABEL_14;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
  {
    v12 = *(v4 + 48);
LABEL_14:
    v13 = v12;

    type metadata accessor for PhotoStyleElement(0);
    [v13 doubleValue];

    v14 = sub_1A40D35BC();
    v16 = v15;
    v17 = sub_1A3D8D2BC();
    sub_1A40D35C0(v14, v16, v17, v18, v2);
  }

LABEL_18:
  __break(1u);
}

void sub_1A470AD7C(void *a1)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A470ADFC(uint64_t a1, void *a2, void *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = a1;
}

uint64_t (*static Array<A>.sample.modify())()
{
  if (qword_1EB1CFA80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A470AEEC(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1A524E2B4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1A524E2B4();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A3D5C1C8(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1A470AFE4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A524E2B4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A524E2B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A470C468(0, &qword_1EB1400D8, type metadata accessor for PhotoStyleElement);
          sub_1A470C418(&qword_1EB1400E8, &qword_1EB1400D8, type metadata accessor for PhotoStyleElement);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1A3D5C268(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for PhotoStyleElement(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A470B184(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A524E2B4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A524E2B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A470C468(0, &qword_1EB140B58, type metadata accessor for PhotoStyleCollection);
          sub_1A470C418(&qword_1EB140B60, &qword_1EB140B58, type metadata accessor for PhotoStyleCollection);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1A414CAD4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for PhotoStyleCollection(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A470B344()
{
  result = qword_1EB140AF8;
  if (!qword_1EB140AF8)
  {
    type metadata accessor for PhotoStyleCollection(255);
    sub_1A470C3D0(&qword_1EB140AF0, type metadata accessor for PhotoStyleCollection);
    sub_1A5245764();
  }

  return result;
}

uint64_t sub_1A470B400()
{
  result = qword_1EB140B08;
  if (!qword_1EB140B08)
  {
    type metadata accessor for PhotoStyleCollection.Mutator(255);
    sub_1A470C3D0(&qword_1EB140B00, type metadata accessor for PhotoStyleCollection.Mutator);
    sub_1A52456C4();
  }

  return result;
}

void sub_1A470B49C()
{
  v0 = sub_1A470B344();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1A524C634();
  v2 = PELocalizedString();

  sub_1A524C674();
  sub_1A40D57A8();
}

void sub_1A470B754()
{
  v0 = sub_1A470B344();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1A524C634();
  v2 = PELocalizedString();

  sub_1A524C674();
  sub_1A40D5AA0();
  v3 = objc_allocWithZone(type metadata accessor for PhotoStyleCollection(0));
  v4 = 0;
  v5 = 1;
  sub_1A470C3D0(&qword_1EB140AF0, type metadata accessor for PhotoStyleCollection);
  sub_1A5245754();
}

void _sSa12PhotosUICoreAA20PhotoStyleCollectionCRszlE08standardD13AsCollectionsSayACGyFZ_0()
{
  v0 = sub_1A470B344();
  MEMORY[0x1EEE9AC00](v0);
  sub_1A3C69C5C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1A52F9790;
  v1 = objc_opt_self();
  v2 = *MEMORY[0x1E69BE130];
  v3 = [v1 semanticStyleCastDisplayName_];
  if (v3)
  {
    v4 = v3;
    sub_1A524C674();
  }

  *(swift_allocObject() + 16) = xmmword_1A52F9790;
  v5 = [v1 semanticStyleCastDisplayName_];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1A524C674();
    v9 = v8;
  }

  else
  {
    v7 = 0x647261646E617453;
    v9 = 0xE800000000000000;
  }

  type metadata accessor for PhotoStyleElement(0);
  v10 = sub_1A40D35BC();
  sub_1A40D35C0(v10, v11, v7, v9, v2);
}

unint64_t sub_1A470BF08()
{
  result = qword_1EB140B10;
  if (!qword_1EB140B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140B10);
  }

  return result;
}

unint64_t sub_1A470BF60()
{
  result = qword_1EB140B18;
  if (!qword_1EB140B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140B18);
  }

  return result;
}

unint64_t sub_1A470BFB8()
{
  result = qword_1EB140B20;
  if (!qword_1EB140B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140B20);
  }

  return result;
}

unint64_t sub_1A470C010()
{
  result = qword_1EB140B28;
  if (!qword_1EB140B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140B28);
  }

  return result;
}

unint64_t sub_1A470C068()
{
  result = qword_1EB140B30;
  if (!qword_1EB140B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140B30);
  }

  return result;
}

unint64_t sub_1A470C198()
{
  result = qword_1EB140B48;
  if (!qword_1EB140B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140B48);
  }

  return result;
}

uint64_t sub_1A470C204()
{
  result = sub_1A470B344();
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

uint64_t sub_1A470C2DC()
{
  result = sub_1A470B400();
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

uint64_t sub_1A470C3D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A470C418(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A470C468(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A470C468(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524CB74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A470C4C0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1A52444C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C56994(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_1A5244FE4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v29 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  sub_1A5244484();
  isEscapingClosureAtFileLocation = (*(v14 + 88))(v18, v13);
  if (isEscapingClosureAtFileLocation == *MEMORY[0x1E69C1320])
  {
    v14 = objc_opt_self();
    v34 = sub_1A470DA84;
    v35 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v31 = 1107296256;
    v32 = sub_1A3D35A90;
    v33 = &block_descriptor_260;
    a3 = _Block_copy(&aBlock);

    _Block_release(a3);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation == *MEMORY[0x1E69C1308])
  {
    v14 = objc_opt_self();
    v34 = sub_1A470DA80;
    v35 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v31 = 1107296256;
    v32 = sub_1A3D35A90;
    v33 = &block_descriptor_3_7;
    a3 = _Block_copy(&aBlock);

    _Block_release(a3);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation != *MEMORY[0x1E69C1378])
  {
    (*(v14 + 8))(v18, v13);
    return 0;
  }

  v20 = sub_1A524CCB4();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v21;
  v22[5] = a2;
  v22[6] = a3;

  sub_1A3D4D930(0, 0, v12, &unk_1A535A648, v22);

LABEL_9:
  (*(v7 + 16))(v9, a1, v6);
  v23 = sub_1A5246F04();
  v24 = sub_1A524D224();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v25 = 136315138;
    sub_1A5244484();
    sub_1A524C714();
    (*(v7 + 8))(v9, v6);
    sub_1A3C2EF94();
  }

  (*(v7 + 8))(v9, v6);
  if (sub_1A52455B4())
  {
    v26 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
    v27 = [v26 description];

    sub_1A524C674();
    sub_1A52455C4();
  }

  return 1;
}

uint64_t sub_1A470CB18()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore43GenerativeStoryAppleMusicUnavailableHandler____lazy_storage___tccStatusProvider;
  if (*(v0 + OBJC_IVAR____TtC12PhotosUICore43GenerativeStoryAppleMusicUnavailableHandler____lazy_storage___tccStatusProvider))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore43GenerativeStoryAppleMusicUnavailableHandler____lazy_storage___tccStatusProvider);
  }

  else
  {
    type metadata accessor for SystemTCCStatusProvider();
    v2 = SystemTCCStatusProvider.__allocating_init()();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1A470CB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = sub_1A524E5E4();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A470CC4C, 0, 0);
}

uint64_t sub_1A470CC4C()
{
  sub_1A524EBB4();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1A470CD18;

  return sub_1A3DCFAB0(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1A470CD18()
{
  v2 = *v1;

  v3 = v2[14];
  v4 = v2[13];
  v5 = v2[12];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1A470ECA4;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_1A470CEB0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1A470CEB0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v2 = sub_1A470CB18();
    v0[17] = v2;
    v6 = (*(*v2 + 88) + **(*v2 + 88));
    v3 = swift_task_alloc();
    v0[18] = v3;
    *v3 = v0;
    v3[1] = sub_1A470D03C;

    return v6(v0 + 20);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1A470D03C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A470D154, 0, 0);
}

uint64_t sub_1A470D154()
{
  v6 = v0;
  v4 = *(v0 + 160);
  v5 = 2;
  *(v0 + 161) = static TCCAuthorizationStatus.== infix(_:_:)(&v4, &v5);
  swift_weakInit();
  sub_1A524CC54();
  *(v0 + 152) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A470D224, v2, v1);
}

uint64_t sub_1A470D224()
{
  v1 = *(v0 + 161);

  if (v1 == 1)
  {
    (*(v0 + 80))(v2);
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1A470D348();
    }
  }

  swift_weakDestroy();

  return MEMORY[0x1EEE6DFA0](sub_1A470D2E0, 0, 0);
}

uint64_t sub_1A470D2E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A470D348()
{
  v1 = sub_1A5246F24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC12PhotosUICore43GenerativeStoryAppleMusicUnavailableHandler_log;
  v6 = objc_opt_self();
  (*(v2 + 16))(v4, v0 + v5, v1);
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = swift_allocObject();
  (*(v2 + 32))(v8 + v7, v4, v1);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1A470E420;
  *(v9 + 24) = v8;
  aBlock[4] = sub_1A3D78DD0;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D35A90;
  aBlock[3] = &block_descriptor_22_3;
  v10 = _Block_copy(aBlock);

  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

void sub_1A470D57C(void *a1, uint64_t a2)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = sub_1A524C634();
  v8 = PXMemoryCreationLocalizedString(v7);

  if (!v8)
  {
    sub_1A524C674();
    v8 = sub_1A524C634();
  }

  [a1 setTitle_];

  v9 = sub_1A524C634();
  v10 = PXMemoryCreationLocalizedString(v9);

  if (!v10)
  {
    sub_1A524C674();
    v10 = sub_1A524C634();
  }

  [a1 setMessage_];

  v11 = sub_1A524C634();
  v12 = PXMemoryCreationLocalizedString(v11);

  if (!v12)
  {
    sub_1A524C674();
    v12 = sub_1A524C634();
  }

  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v13, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  aBlock[4] = sub_1A470E490;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_28_4;
  v15 = _Block_copy(aBlock);

  [a1 addActionWithTitle:v12 style:0 action:v15];
  _Block_release(v15);

  v16 = sub_1A524C634();
  v17 = PXMemoryCreationLocalizedString(v16);

  if (!v17)
  {
    sub_1A524C674();
    v17 = sub_1A524C634();
  }

  [a1 addActionWithTitle:v17 style:0 action:0];
}

void sub_1A470D8CC(uint64_t a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = objc_opt_self();
  (*(v3 + 16))(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  aBlock[4] = sub_1A470E4F0;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D6084C;
  aBlock[3] = &block_descriptor_34_5;
  v8 = _Block_copy(aBlock);

  [v5 navigateToDestination:13 completion:v8];
  _Block_release(v8);
}

void sub_1A470DA88(void *a1)
{
  sub_1A3C56994(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = aBlock - v3;
  v5 = sub_1A5240E64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = aBlock - v10;
  v12 = sub_1A524C634();
  v13 = PXMemoryCreationLocalizedString(v12);

  if (!v13)
  {
    sub_1A524C674();
    v13 = sub_1A524C634();
  }

  [a1 setTitle_];

  v14 = sub_1A524C634();
  v15 = PXMemoryCreationLocalizedString(v14);

  if (!v15)
  {
    sub_1A524C674();
    v15 = sub_1A524C634();
  }

  [a1 setMessage_];

  sub_1A5240E34();
  v16 = &selRef_actionPerformerBottomPaddingForPresentingToast_;
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1A470E6E8(v4, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v17 = *(v6 + 32);
    v17(v11, v4, v5);
    v18 = sub_1A524C634();
    v19 = PXMemoryCreationLocalizedString(v18);

    if (!v19)
    {
      sub_1A524C674();
      v19 = sub_1A524C634();
    }

    (*(v6 + 16))(v8, v11, v5);
    v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v21 = swift_allocObject();
    v17((v21 + v20), v8, v5);
    aBlock[4] = sub_1A470E7D4;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_54_1;
    v22 = _Block_copy(aBlock);

    v16 = &selRef_actionPerformerBottomPaddingForPresentingToast_;
    [a1 addActionWithTitle:v19 style:0 action:v22];
    _Block_release(v22);

    (*(v6 + 8))(v11, v5);
  }

  v23 = sub_1A524C634();
  v24 = PXMemoryCreationLocalizedString(v23);

  if (!v24)
  {
    sub_1A524C674();
    v24 = sub_1A524C634();
  }

  [a1 v16[85]];
}

void sub_1A470DF04(void *a1)
{
  v2 = sub_1A524C634();
  v3 = PXMemoryCreationLocalizedString(v2);

  if (!v3)
  {
    sub_1A524C674();
    v3 = sub_1A524C634();
  }

  [a1 setTitle_];

  v4 = sub_1A524C634();
  v5 = PXMemoryCreationLocalizedString(v4);

  if (!v5)
  {
    sub_1A524C674();
    v5 = sub_1A524C634();
  }

  [a1 setMessage_];

  v6 = sub_1A524C634();
  v7 = PXMemoryCreationLocalizedString(v6);

  if (!v7)
  {
    sub_1A524C674();
    v7 = sub_1A524C634();
  }

  [a1 addActionWithTitle:v7 style:0 action:0];
}

uint64_t sub_1A470E090()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore43GenerativeStoryAppleMusicUnavailableHandler_log;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A470E13C()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC12PhotosUICore43GenerativeStoryAppleMusicUnavailableHandler_log;
  v2 = sub_1A3C4A780();
  v3 = sub_1A5246F24();
  (*(*(v3 - 8) + 16))(v0 + v1, v2, v3);
  *(v0 + OBJC_IVAR____TtC12PhotosUICore43GenerativeStoryAppleMusicUnavailableHandler____lazy_storage___tccStatusProvider) = 0;
  return v0;
}

uint64_t sub_1A470E1D0()
{
  sub_1A470E6A0(&qword_1EB140B68, type metadata accessor for OpenExternalURLOptionsKey);
  sub_1A470E6A0(&qword_1EB140BA0, type metadata accessor for OpenExternalURLOptionsKey);

  return sub_1A524E7E4();
}

uint64_t sub_1A470E28C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3D60150;

  return sub_1A470CB88(v5, v6, v7, v2, v3, v4);
}

uint64_t type metadata accessor for GenerativeStoryAppleMusicUnavailableHandler()
{
  result = qword_1EB1D00F0;
  if (!qword_1EB1D00F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A470E388()
{
  result = sub_1A5246F24();
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

void sub_1A470E420(void *a1)
{
  v3 = *(sub_1A5246F24() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1A470D57C(a1, v4);
}

void sub_1A470E490()
{
  v1 = *(sub_1A5246F24() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1A470D8CC(v2);
}

void sub_1A470E4F0(char a1, void *a2)
{
  sub_1A5246F24();
  if ((a1 & 1) == 0)
  {
    v4 = a2;
    oslog = sub_1A5246F04();
    v5 = sub_1A524D244();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      swift_slowAlloc();
      *v6 = 136315138;
      v7 = a2;
      sub_1A3C56994(0, &qword_1EB139220, sub_1A3DBD9A0);
      sub_1A524C714();
      sub_1A3C2EF94();
    }
  }
}

uint64_t sub_1A470E6A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A470E6E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A3C56994(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_15Tm_2(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

void sub_1A470E7D4()
{
  sub_1A5240E64();
  v2 = [objc_opt_self() px_sharedApplication];
  v0 = sub_1A5240D44();
  sub_1A470E918(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1A470E6A0(&qword_1EB140B68, type metadata accessor for OpenExternalURLOptionsKey);
  v1 = sub_1A524C3D4();

  [v2 openURL:v0 options:v1 completionHandler:0];
}

unint64_t sub_1A470E918(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A470EA3C();
    v3 = sub_1A524E794();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A470EADC(v4, &v11);
      v5 = v11;
      result = sub_1A3C8BF74(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1A3C57128(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

void sub_1A470EA3C()
{
  if (!qword_1EB140B70)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    sub_1A470E6A0(&qword_1EB140B68, type metadata accessor for OpenExternalURLOptionsKey);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140B70);
    }
  }
}

uint64_t sub_1A470EADC(uint64_t a1, uint64_t a2)
{
  sub_1A470EB40();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A470EB40()
{
  if (!qword_1EB140B78)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB140B78);
    }
  }
}

uint64_t sub_1A470ECA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  sub_1A470FAE0(0, &unk_1EB1276B0, MEMORY[0x1E6980E30]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v74 - v4;
  sub_1A470FFBC(0, &qword_1EB140BA8, MEMORY[0x1E697F948]);
  v89 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v74 - v7;
  sub_1A470F8D0(0, &qword_1EB140BD0, sub_1A470F894, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  v85 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v86 = &v74 - v10;
  v82 = sub_1A5248A14();
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1A5241F84();
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v77 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A5243834();
  v74 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A470FAE0(0, &unk_1EB129180, MEMORY[0x1E69C2060]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v74 - v17;
  v76 = sub_1A5243EC4();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A470F894(0);
  v83 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v78 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A470F858(0);
  v88 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v84 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v1[3];
  v26 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v25);
  if ((*(v26 + 48))(v25, v26))
  {
    v27 = v1[3];
    v28 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v27);
    *&v90 = (*(v28 + 40))(v27, v28);
    *(&v90 + 1) = v29;
    sub_1A3D5F9DC();
    v30 = sub_1A524A464();
    v32 = v31;
    v34 = v33;
    sub_1A524A174();
    v35 = *MEMORY[0x1E6980E28];
    v36 = sub_1A524A154();
    v37 = *(v36 - 8);
    (*(v37 + 104))(v5, v35, v36);
    (*(v37 + 56))(v5, 0, 1, v36);
    sub_1A524A1B4();
    sub_1A441183C(v5);
    v38 = sub_1A524A3C4();
    v40 = v39;
    LOBYTE(v36) = v41;

    sub_1A3E04DF4(v30, v32, v34 & 1);

    *&v90 = sub_1A524B434();
    v42 = sub_1A524A374();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    sub_1A3E04DF4(v38, v40, v36 & 1);

    v49 = sub_1A524B434();
    LOBYTE(v90) = v46 & 1;
    *v8 = v42;
    *(v8 + 1) = v44;
    v8[16] = v46 & 1;
    *(v8 + 3) = v48;
    *(v8 + 4) = 0x3FE4CCCCCCCCCCCDLL;
    *(v8 + 5) = v49;
    *(v8 + 6) = 0x402E000000000000;
    *(v8 + 7) = 0;
    *(v8 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1A470F8D0(0, &qword_1EB140BC8, sub_1A470FA88, MEMORY[0x1E697E288], MEMORY[0x1E697E830]);
    sub_1A470FB34();
    sub_1A470FCE4();
    return sub_1A5249744();
  }

  else
  {
    v51 = v1[3];
    v52 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v51);
    v53 = (*(v52 + 32))(v51, v52);
    if (v53)
    {
      v54 = v53;
      v93 = 0u;
      v94 = 0u;
      v95 = 1;
      v55 = sub_1A52429A4();
      (*(*(v55 - 8) + 56))(v18, 1, 1, v55);
      v74[13](v15, *MEMORY[0x1E69C2678], v13);
      v74 = v54;
      sub_1A5243ED4();
      sub_1A524B404();
      sub_1A524B474();

      v56 = v77;
      sub_1A5241F64();
      v57 = *(v82 + 20);
      v58 = *MEMORY[0x1E697F468];
      v59 = sub_1A52494A4();
      v60 = v81;
      (*(*(v59 - 8) + 104))(&v81[v57], v58, v59);
      __asm { FMOV            V0.2D, #16.0 }

      *v60 = _Q0;
      sub_1A470FA40(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
      sub_1A470FA40(&qword_1EB128080, MEMORY[0x1E697EAF0]);
      v66 = v78;
      v67 = v76;
      sub_1A524A4E4();
      sub_1A470FD9C(v60);
      (*(v79 + 8))(v56, v80);
      v68 = (*(v75 + 8))(v20, v67);
      v69 = v2[5];
      v70.n128_f64[0] = (*(*v69 + 1248))(v68);
      (*(*v69 + 1296))(v70);
      sub_1A524BC74();
      sub_1A52481F4();
      v71 = (v66 + *(v83 + 36));
      v72 = v91;
      *v71 = v90;
      v71[1] = v72;
      v71[2] = v92;
      sub_1A470FDF8(v66, v86, sub_1A470F894);
      swift_storeEnumTagMultiPayload();
      sub_1A470FBB4();
      v73 = v84;
      sub_1A5249744();

      sub_1A470FE60(v66, sub_1A470F894);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_1A470FBB4();
      v73 = v84;
      sub_1A5249744();
    }

    sub_1A470FDF8(v73, v8, sub_1A470F858);
    swift_storeEnumTagMultiPayload();
    sub_1A470F8D0(0, &qword_1EB140BC8, sub_1A470FA88, MEMORY[0x1E697E288], MEMORY[0x1E697E830]);
    sub_1A470FB34();
    sub_1A470FCE4();
    sub_1A5249744();
    return sub_1A470FE60(v73, sub_1A470F858);
  }
}

void sub_1A470F8D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A470F93C()
{
  if (!qword_1EB140BC0)
  {
    sub_1A5243EC4();
    sub_1A5248A14();
    sub_1A470FA40(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    sub_1A470FA40(&qword_1EB128080, MEMORY[0x1E697EAF0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB140BC0);
    }
  }
}

uint64_t sub_1A470FA40(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A470FA88()
{
  if (!qword_1EB124060)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124060);
    }
  }
}

void sub_1A470FAE0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1A470FB34()
{
  result = qword_1EB140BD8;
  if (!qword_1EB140BD8)
  {
    sub_1A470F858(255);
    sub_1A470FBB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140BD8);
  }

  return result;
}

unint64_t sub_1A470FBB4()
{
  result = qword_1EB140BE0;
  if (!qword_1EB140BE0)
  {
    sub_1A470F894(255);
    sub_1A5243EC4();
    sub_1A5248A14();
    sub_1A470FA40(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    sub_1A470FA40(&qword_1EB128080, MEMORY[0x1E697EAF0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140BE0);
  }

  return result;
}

unint64_t sub_1A470FCE4()
{
  result = qword_1EB140BE8;
  if (!qword_1EB140BE8)
  {
    sub_1A470F8D0(255, &qword_1EB140BC8, sub_1A470FA88, MEMORY[0x1E697E288], MEMORY[0x1E697E830]);
    sub_1A4234634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140BE8);
  }

  return result;
}

uint64_t sub_1A470FD9C(uint64_t a1)
{
  v2 = sub_1A5248A14();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A470FDF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A470FE60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A470FEC0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1A3C34460(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

unint64_t sub_1A470FF20()
{
  result = qword_1EB140BF0;
  if (!qword_1EB140BF0)
  {
    sub_1A470FFBC(255, &qword_1EB140BF8, MEMORY[0x1E697F960]);
    sub_1A470FB34();
    sub_1A470FCE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140BF0);
  }

  return result;
}

void sub_1A470FFBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A470F858(255);
    v7 = v6;
    sub_1A470F8D0(255, &qword_1EB140BC8, sub_1A470FA88, MEMORY[0x1E697E288], MEMORY[0x1E697E830]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A4710064(void *a1)
{
  v2 = v1;
  sub_1A3C569E8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_1A5246F24();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v1 + 288);
  v13 = v12(v9);
  if (v13)
  {
    v14 = v13;
    if (a1)
    {
      sub_1A3C52C70(0, &qword_1EB126C40);
      v15 = a1;
      v16 = sub_1A524DBF4();

      if (v16)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  v17 = sub_1A41CDD28();
  (*(v8 + 16))(v11, v17, v7);

  v18 = sub_1A5246F04();
  v19 = sub_1A524D264();
  if (os_log_type_enabled(v18, v19))
  {
    v29 = v6;
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    v21 = (v12)();
    if (v21)
    {
      v22 = v21;
      v23 = [v21 count];
    }

    else
    {
      v23 = 0;
    }

    *(v20 + 4) = v23;

    _os_log_impl(&dword_1A3C1C000, v18, v19, "ParallaxAssetViewModel: asset count changed to %ld", v20, 0xCu);
    MEMORY[0x1A590EEC0](v20, -1, -1);

    v6 = v29;
  }

  else
  {
  }

  (*(v8 + 8))(v11, v7);
  v24 = sub_1A524CCB4();
  (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
  sub_1A524CC54();

  v25 = sub_1A524CC44();
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E69E85E0];
  v26[2] = v25;
  v26[3] = v27;
  v26[4] = v2;
  sub_1A3D4D930(0, 0, v6, &unk_1A535AF90, v26);
}

uint64_t sub_1A47103EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1A524CC54();
  *(v4 + 24) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4710484, v6, v5);
}

uint64_t sub_1A4710484()
{

  sub_1A471AAB0();
  v1 = *(v0 + 8);

  return v1();
}

void (*sub_1A47104E8(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_1A4710534;
}

void sub_1A4710534(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v8 = *(v4 + 16);
  *(v4 + 16) = *a1;
  v5 = v3;
  v6 = v5;
  if (a2)
  {
    v7 = v5;
    sub_1A4710064(v8);
  }

  else
  {
    sub_1A4710064(v8);
  }
}

uint64_t sub_1A47105B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 288))();
  *a2 = result;
  return result;
}

uint64_t sub_1A471060C(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 296);
  v4 = *a1;
  return v3(v2);
}

void *sub_1A471066C()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  v1 = v0[2];
  v2 = v1;
  return v1;
}

void sub_1A47106D8(void *a1)
{
  v3 = v1[2];
  if (!v3)
  {
    if (!a1)
    {
      v10 = 0;
      v5 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1296))(v8);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &qword_1EB126C40);
  v4 = v3;
  v5 = a1;
  v6 = sub_1A524DBF4();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = v1[2];
LABEL_8:
  v1[2] = a1;
  v9 = v5;
  sub_1A4710064(v10);
}

void sub_1A4710870()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  v4 = v1;
  sub_1A4710064(v3);
}

void (*sub_1A47108BC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22ParallaxAssetViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A471E148(&qword_1EB140C00, type metadata accessor for ParallaxAssetViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A47104E8(v4);
  return sub_1A4710A0C;
}

uint64_t type metadata accessor for ParallaxAssetViewModel()
{
  result = qword_1EB169DC0;
  if (!qword_1EB169DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4710A64@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 336))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A4710B0C()
{
  swift_getKeyPath();
  (*(*v0 + 1288))();

  swift_beginAccess();
  return v0[24];
}