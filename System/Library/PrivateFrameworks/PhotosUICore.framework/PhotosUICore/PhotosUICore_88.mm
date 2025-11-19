uint64_t sub_1A47771C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Movie(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Photo(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Attachment.Status(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v34 - v16);
  sub_1A477CE3C(0, &qword_1EB141268, type metadata accessor for Attachment.Status);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v34 - v19;
  v22 = *(v21 + 56);
  sub_1A4778688(a1, &v34 - v19, type metadata accessor for Attachment.Status);
  sub_1A4778688(a2, &v20[v22], type metadata accessor for Attachment.Status);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1A4778688(v20, v17, type metadata accessor for Attachment.Status);
      v24 = *v17;
      if (swift_getEnumCaseMultiPayload())
      {

LABEL_16:
        sub_1A47788D8(v20, &qword_1EB141268, type metadata accessor for Attachment.Status);
        v27 = 0;
        return v27 & 1;
      }

      v32 = *&v20[v22];
      sub_1A3C52C70(0, &qword_1EB12B160);
      v27 = sub_1A524DBF4();

LABEL_18:
      sub_1A47786F0(v20, type metadata accessor for Attachment.Status);
      return v27 & 1;
    }

    sub_1A4778688(v20, v14, type metadata accessor for Attachment.Status);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1A477E6A0(&v20[v22], v8, type metadata accessor for Photo);
      v27 = sub_1A5240DB4();
      sub_1A47786F0(v8, type metadata accessor for Photo);
      v28 = v14;
      v29 = type metadata accessor for Photo;
      goto LABEL_10;
    }

    v30 = type metadata accessor for Photo;
    v31 = v14;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1A4778688(v20, v11, type metadata accessor for Attachment.Status);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v25 = &v20[v22];
      v26 = v35;
      sub_1A477E6A0(v25, v35, type metadata accessor for Movie);
      v27 = sub_1A5240DB4();
      sub_1A47786F0(v26, type metadata accessor for Movie);
      v28 = v11;
      v29 = type metadata accessor for Movie;
LABEL_10:
      sub_1A47786F0(v28, v29);
      goto LABEL_18;
    }

    v30 = type metadata accessor for Movie;
    v31 = v11;
LABEL_15:
    sub_1A47786F0(v31, v30);
    goto LABEL_16;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_16;
  }

  sub_1A47786F0(v20, type metadata accessor for Attachment.Status);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_1A4777638(uint64_t a1, uint64_t a2)
{
  sub_1A477E5D8(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v21 - v4;
  sub_1A47760A0(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A523FB64();
  if (v10 && (v11 = v9, v12 = v10, swift_getKeyPath(), swift_getKeyPath(), sub_1A52479E4(), , , swift_getKeyPath(), swift_getKeyPath(), v21[1] = a2, v13 = sub_1A52479D4(), sub_1A47613C8(v8, v11, v12), v13(v22, 0), , , v14 = sub_1A523FB64(), v15))
  {
    v16 = v14;
    v17 = v15;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A52479E4();

    v18 = sub_1A5240E64();
    (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = sub_1A52479D4();
    sub_1A4761588(v5, v16, v17);
    v19(v22, 0);
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4777978()
{
  sub_1A477E5D8(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v17[-v1];
  sub_1A47760A0(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1A523FB64();
  if (v7 && (v8 = v6, v9 = v7, swift_getKeyPath(), swift_getKeyPath(), v10 = sub_1A52479D4(), sub_1A47730BC(v8, v9, v5), , sub_1A47786F0(v5, sub_1A47760A0), v10(v17, 0), , , v11 = sub_1A523FB64(), v12))
  {
    v13 = v11;
    v14 = v12;
    swift_getKeyPath();
    swift_getKeyPath();
    v15 = sub_1A52479D4();
    sub_1A4772F38(v13, v14, v2);

    sub_1A4778828(v2, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v15(v17, 0);
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

void sub_1A4777C50(uint64_t a1)
{
  v2 = sub_1A5246F44();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 != *MEMORY[0x1E69995D8] && v7 != *MEMORY[0x1E69995E0] && v7 != *MEMORY[0x1E69995E8])
  {
    (*(v3 + 8))(v6, v2);
  }

  sub_1A4778568(0, &qword_1EB141210, &unk_1EB141218, &unk_1EB1265F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v9;
  sub_1A3C52C70(0, &unk_1EB1265F0);
  *(inited + 48) = sub_1A524DC24();
  v10 = sub_1A452D80C(inited, &unk_1EB141228, &unk_1EB1265F0);
  swift_setDeallocating();
  sub_1A477862C(inited + 32, &unk_1EB141218, &unk_1EB1265F0);
  objc_opt_self();
  sub_1A524C634();

  sub_1A4771328(v10);
}

uint64_t sub_1A4777F50()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A4770494(v3, v4, v5, v2);
}

uint64_t objectdestroyTm_76(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1A47780B8()
{
  v2 = *(sub_1A5240E64() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A4770AF8(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_1A4778190()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A4771A20(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1A4778238(uint64_t (*a1)(void), const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  sub_1A477E5D8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  if (qword_1EB1D14B0 != -1)
  {
    swift_once();
  }

  v12 = sub_1A5246F24();
  __swift_project_value_buffer(v12, qword_1EB1D14B8);
  v13 = sub_1A5246F04();
  v14 = a1();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1A3C1C000, v13, v14, a2, v15, 2u);
    MEMORY[0x1A590EEC0](v15, -1, -1);
  }

  v16 = sub_1A524CCB4();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  sub_1A524CC54();

  v17 = sub_1A524CC44();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v8;
  sub_1A3D4D930(0, 0, v11, a4, v18);
}

uint64_t sub_1A4778440()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A47716B8(v3, v4, v5, v2);
}

uint64_t sub_1A47784D4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A4771514(v3, v4, v5, v2);
}

void sub_1A4778568(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  if (!*a2)
  {
    sub_1A47785C4(255, a3, a4);
    v5 = sub_1A524EA54();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A47785C4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1A3C52C70(255, a3);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A477862C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1A47785C4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A4778688(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A47786F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4778750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Attachment.Status(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A47787B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A4778828(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1A477E5D8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_1A4778884()
{
  result = qword_1EB1D2080;
  if (!qword_1EB1D2080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D2080);
  }

  return result;
}

uint64_t sub_1A47788D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A477CE3C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A4778954(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A477E5D8(255, &qword_1EB127880, MEMORY[0x1E697DC30], MEMORY[0x1E6980A08]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A47789F0()
{
  if (!qword_1EB141278)
  {
    sub_1A47750F8();
    sub_1A477E8CC(&qword_1EB141280, sub_1A47750F8, sub_1A4778A8C);
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141278);
    }
  }
}

unint64_t sub_1A4778A8C()
{
  result = qword_1EB141288;
  if (!qword_1EB141288)
  {
    sub_1A477C598(255, &qword_1EB140F90, MEMORY[0x1E6981148], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141288);
  }

  return result;
}

unint64_t sub_1A4778C48()
{
  result = qword_1EB141298;
  if (!qword_1EB141298)
  {
    sub_1A4778934(255);
    sub_1A4775218(&unk_1EB1412A0, sub_1A47789F0);
    sub_1A419AAE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141298);
  }

  return result;
}

unint64_t sub_1A4778CF8()
{
  result = qword_1EB1D2090[0];
  if (!qword_1EB1D2090[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D2090);
  }

  return result;
}

void sub_1A4778D4C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A477E5D8(255, a3, a4, MEMORY[0x1E6981F40]);
    v5 = sub_1A52483B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A4778DF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v7 = *(v0 + 24);
  v3 = sub_1A524C634();
  v4 = PXLocalizedString(v3);

  sub_1A524C674();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v7;
  *(v5 + 40) = v2;
  sub_1A3D5F9DC();

  return sub_1A524B754();
}

void sub_1A4778EFC()
{
  if (!qword_1EB1412B8)
  {
    sub_1A477E5D8(255, &qword_1EB140F48, sub_1A4774E6C, MEMORY[0x1E6981F40]);
    sub_1A449A6BC();
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1412B8);
    }
  }
}

uint64_t objectdestroy_154Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1A4778FD8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A52479F4();
}

void sub_1A477904C()
{
  sub_1A5249574();
  __src[472] = 1;
  sub_1A4765328(__src);
}

double sub_1A4779164(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void sub_1A4779184()
{
  if (!qword_1EB1412C8)
  {
    sub_1A4778CF8();
    v0 = sub_1A5249654();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1412C8);
    }
  }
}

void sub_1A47791FC()
{
  if (!qword_1EB1412E0)
  {
    type metadata accessor for Movie(255);
    sub_1A4779290(&qword_1EB1D20B0, type metadata accessor for Movie);
    v0 = sub_1A5241CB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1412E0);
    }
  }
}

uint64_t sub_1A4779290(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A47792D8()
{
  if (!qword_1EB1412F0)
  {
    type metadata accessor for Photo(255);
    sub_1A4779290(qword_1EB1D20B8, type metadata accessor for Photo);
    v0 = sub_1A5241CB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1412F0);
    }
  }
}

void sub_1A477936C()
{
  if (!qword_1EB141300)
  {
    sub_1A477C598(255, &qword_1EB141308, &type metadata for VideoPlayerVCRepresentable, MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    sub_1A47793FC();
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141300);
    }
  }
}

unint64_t sub_1A47793FC()
{
  result = qword_1EB141310;
  if (!qword_1EB141310)
  {
    sub_1A477C598(255, &qword_1EB141308, &type metadata for VideoPlayerVCRepresentable, MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    sub_1A4776AD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141310);
  }

  return result;
}

void sub_1A47794E4()
{
  if (!qword_1EB141318)
  {
    sub_1A477C300(255, &qword_1EB141320, type metadata accessor for PhotosPickerView, &type metadata for PXRetailExperienceFullscreenCardView, MEMORY[0x1E697F960]);
    v0 = sub_1A5249734();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141318);
    }
  }
}

unint64_t sub_1A477957C()
{
  result = qword_1EB141330;
  if (!qword_1EB141330)
  {
    sub_1A477C300(255, &qword_1EB141320, type metadata accessor for PhotosPickerView, &type metadata for PXRetailExperienceFullscreenCardView, MEMORY[0x1E697F960]);
    sub_1A4779664();
    sub_1A4779290(&qword_1EB1D2140, type metadata accessor for PhotosPickerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141330);
  }

  return result;
}

unint64_t sub_1A4779664()
{
  result = qword_1EB141338;
  if (!qword_1EB141338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141338);
  }

  return result;
}

unint64_t sub_1A47796B8()
{
  result = qword_1EB1D2148;
  if (!qword_1EB1D2148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D2148);
  }

  return result;
}

uint64_t sub_1A477970C(uint64_t a1, uint64_t a2)
{
  sub_1A477C300(0, &qword_1EB141320, type metadata accessor for PhotosPickerView, &type metadata for PXRetailExperienceFullscreenCardView, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A47797A8(uint64_t a1)
{
  sub_1A477C300(0, &qword_1EB141320, type metadata accessor for PhotosPickerView, &type metadata for PXRetailExperienceFullscreenCardView, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A4779874()
{
  sub_1A4779940();
  if (v0 <= 0x3F)
  {
    sub_1A477E5D8(319, &qword_1EB141350, sub_1A47765A4, MEMORY[0x1E6981948]);
    if (v1 <= 0x3F)
    {
      sub_1A524BB74();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A4779940()
{
  if (!qword_1EB141348)
  {
    type metadata accessor for PickerViewModel(255);
    sub_1A4779290(qword_1EB1D1510, type metadata accessor for PickerViewModel);
    v0 = sub_1A52484C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141348);
    }
  }
}

unint64_t sub_1A47799D4()
{
  result = qword_1EB141358;
  if (!qword_1EB141358)
  {
    sub_1A4779A54();
    sub_1A477957C();
    sub_1A47796B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141358);
  }

  return result;
}

void sub_1A4779A54()
{
  if (!qword_1EB141360)
  {
    sub_1A477C300(255, &qword_1EB141320, type metadata accessor for PhotosPickerView, &type metadata for PXRetailExperienceFullscreenCardView, MEMORY[0x1E697F960]);
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141360);
    }
  }
}

void sub_1A4779BA4()
{
  if (!qword_1EB141378)
  {
    sub_1A4779E00();
    sub_1A477660C(255);
    sub_1A4779FE8();
    sub_1A477A18C();
    sub_1A477A2F8();
    sub_1A477A434();
    sub_1A477A538();
    sub_1A477E5D8(255, &qword_1EB1413E8, sub_1A477A764, MEMORY[0x1E697C5D8]);
    sub_1A4775218(&qword_1EB141428, sub_1A477A538);
    sub_1A477AA7C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A477DF6C(&qword_1EB141438, sub_1A477660C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB141378);
    }
  }
}

void sub_1A4779E00()
{
  if (!qword_1EB141380)
  {
    sub_1A4779FE8();
    sub_1A477A18C();
    sub_1A477A2F8();
    sub_1A477A434();
    sub_1A477A538();
    sub_1A477E5D8(255, &qword_1EB1413E8, sub_1A477A764, MEMORY[0x1E697C5D8]);
    sub_1A4775218(&qword_1EB141428, sub_1A477A538);
    sub_1A477AA7C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB141380);
    }
  }
}

void sub_1A4779FE8()
{
  if (!qword_1EB141388)
  {
    sub_1A477A18C();
    sub_1A477A2F8();
    sub_1A477A434();
    sub_1A477A538();
    sub_1A477E5D8(255, &qword_1EB1413E8, sub_1A477A764, MEMORY[0x1E697C5D8]);
    sub_1A4775218(&qword_1EB141428, sub_1A477A538);
    sub_1A477AA7C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB141388);
    }
  }
}

void sub_1A477A18C()
{
  if (!qword_1EB141390)
  {
    sub_1A477A2F8();
    sub_1A477A434();
    sub_1A477A538();
    sub_1A477E5D8(255, &qword_1EB1413E8, sub_1A477A764, MEMORY[0x1E697C5D8]);
    sub_1A4775218(&qword_1EB141428, sub_1A477A538);
    sub_1A477AA7C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB141390);
    }
  }
}

void sub_1A477A2F8()
{
  if (!qword_1EB141398)
  {
    sub_1A477A434();
    sub_1A477A538();
    sub_1A477E5D8(255, &qword_1EB1413E8, sub_1A477A764, MEMORY[0x1E697C5D8]);
    sub_1A4775218(&qword_1EB141428, sub_1A477A538);
    sub_1A477AA7C();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB141398);
    }
  }
}

void sub_1A477A434()
{
  if (!qword_1EB1413A0)
  {
    sub_1A477A538();
    sub_1A477E5D8(255, &qword_1EB1413E8, sub_1A477A764, MEMORY[0x1E697C5D8]);
    sub_1A4775218(&qword_1EB141428, sub_1A477A538);
    sub_1A477AA7C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1413A0);
    }
  }
}

void sub_1A477A538()
{
  if (!qword_1EB1413A8)
  {
    sub_1A477A5CC();
    sub_1A4775218(&qword_1EB1413E0, sub_1A477A5CC);
    v0 = sub_1A5247D04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1413A8);
    }
  }
}

void sub_1A477A5CC()
{
  if (!qword_1EB1413B0)
  {
    sub_1A477E5D8(255, &qword_1EB1413B8, sub_1A477A680, MEMORY[0x1E6981F40]);
    sub_1A4775260(&qword_1EB1413D8, &qword_1EB1413B8, sub_1A477A680);
    v0 = sub_1A524BDA4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1413B0);
    }
  }
}

void sub_1A477A6A8()
{
  if (!qword_1EB1413C8)
  {
    sub_1A47765D8(255);
    sub_1A4775218(&qword_1EB1413D0, sub_1A47765D8);
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1413C8);
    }
  }
}

void sub_1A477A764()
{
  if (!qword_1EB1413F0)
  {
    sub_1A477E5D8(255, &qword_1EB1413F8, sub_1A477A804, MEMORY[0x1E69E6720]);
    sub_1A47752C4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1413F0);
    }
  }
}

void sub_1A477A84C()
{
  if (!qword_1EB141408)
  {
    sub_1A477A8D8(255, &qword_1EB141410, MEMORY[0x1E697F960]);
    sub_1A477A974();
    v0 = sub_1A5247F34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141408);
    }
  }
}

void sub_1A477A8D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A411848C();
    v7 = v6;
    sub_1A477C598(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1A477A974()
{
  result = qword_1EB141418;
  if (!qword_1EB141418)
  {
    sub_1A477A8D8(255, &qword_1EB141410, MEMORY[0x1E697F960]);
    sub_1A4775C00();
    sub_1A4775394(&qword_1EB127490, &qword_1EB127480, MEMORY[0x1E697D670]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141418);
  }

  return result;
}

unint64_t sub_1A477AA7C()
{
  result = qword_1EB141430;
  if (!qword_1EB141430)
  {
    sub_1A477E5D8(255, &qword_1EB1413E8, sub_1A477A764, MEMORY[0x1E697C5D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141430);
  }

  return result;
}

unint64_t sub_1A477AB04()
{
  result = qword_1EB141448;
  if (!qword_1EB141448)
  {
    sub_1A4779B68(255);
    sub_1A4779E00();
    sub_1A477660C(255);
    sub_1A4779FE8();
    sub_1A477A18C();
    sub_1A477A2F8();
    sub_1A477A434();
    sub_1A477A538();
    sub_1A477E5D8(255, &qword_1EB1413E8, sub_1A477A764, MEMORY[0x1E697C5D8]);
    sub_1A4775218(&qword_1EB141428, sub_1A477A538);
    sub_1A477AA7C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A477DF6C(&qword_1EB141438, sub_1A477660C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141448);
  }

  return result;
}

uint64_t objectdestroy_198Tm()
{
  v1 = (type metadata accessor for PhotosPickerView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = sub_1A524BB74();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

void sub_1A477AF90()
{
  if (!qword_1EB141460)
  {
    sub_1A5240E64();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB141460);
    }
  }
}

uint64_t sub_1A477B00C()
{
  type metadata accessor for PhotosPickerView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  v0 = sub_1A52479D4();
  *v1 = !*v1;
  v0(&v3, 0);
}

uint64_t sub_1A477B0E8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  v2 = *(v23 + 16);

  if (v2)
  {
    v3 = sub_1A524C634();
    v4 = PXLocalizedString(v3);

    sub_1A524C674();
    sub_1A3E072BC();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1A52F8E10;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A52479E4();

    v6 = *(v23 + 16);

    v7 = MEMORY[0x1E69E65A8];
    *(v5 + 56) = MEMORY[0x1E69E6530];
    *(v5 + 64) = v7;
    *(v5 + 32) = v6;
    sub_1A524C644();
  }

  else
  {
    v8 = sub_1A524C634();
    v9 = PXLocalizedString(v8);

    sub_1A524C674();
  }

  sub_1A3D5F9DC();
  v10 = sub_1A524A464();
  v12 = v11;
  v14 = v13;
  sub_1A524A1A4();
  v15 = sub_1A524A344();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1A3E04DF4(v10, v12, v14 & 1);

  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v21;
  return result;
}

uint64_t sub_1A477B35C()
{
  type metadata accessor for PhotosPickerView(0);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A52479F4();
}

uint64_t sub_1A477B414@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosPickerView(0);
  v2 = objc_allocWithZone(MEMORY[0x1E69DCE48]);

  v3 = [v2 init];
  type metadata accessor for Attachment(0);
  sub_1A4779290(&qword_1EB1D2288, type metadata accessor for Attachment);
  v4 = sub_1A5248494();
  v6 = v5;
  type metadata accessor for PickerViewModel(0);
  sub_1A4779290(qword_1EB1D1510, type metadata accessor for PickerViewModel);
  result = sub_1A5248494();
  *a1 = v4;
  a1[1] = v6;
  a1[2] = result;
  a1[3] = v8;
  a1[4] = v3;
  return result;
}

unint64_t sub_1A477B574()
{
  result = qword_1EB1D2280;
  if (!qword_1EB1D2280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D2280);
  }

  return result;
}

void sub_1A477B648()
{
  if (!qword_1EB141480)
  {
    sub_1A477B76C(255);
    sub_1A477E5D8(255, &qword_1EB1415E8, sub_1A477C36C, MEMORY[0x1E6981F40]);
    sub_1A477C5EC();
    sub_1A3D5F9DC();
    sub_1A4775260(&qword_1EB141620, &qword_1EB1415E8, sub_1A477C36C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB141480);
    }
  }
}

void sub_1A477B7A8()
{
  if (!qword_1EB141490)
  {
    sub_1A477B8AC();
    sub_1A3EE1D04();
    sub_1A4775218(&unk_1EB1415D8, sub_1A477B8AC);
    sub_1A4775218(&unk_1EB1263B0, sub_1A3EE1D04);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB141490);
    }
  }
}

void sub_1A477B8AC()
{
  if (!qword_1EB141498)
  {
    sub_1A477E5D8(255, &qword_1EB1414A0, sub_1A477B960, MEMORY[0x1E6981F40]);
    sub_1A4775260(&qword_1EB1415D0, &qword_1EB1414A0, sub_1A477B960);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141498);
    }
  }
}

void sub_1A477B960()
{
  if (!qword_1EB1414A8)
  {
    sub_1A477B9E8();
    sub_1A477BE24();
    sub_1A477C0DC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB1414A8);
    }
  }
}

void sub_1A477B9E8()
{
  if (!qword_1EB1414B0)
  {
    sub_1A477E5D8(255, &qword_1EB1414B8, sub_1A477BA9C, MEMORY[0x1E6981F40]);
    sub_1A4775260(&qword_1EB141538, &qword_1EB1414B8, sub_1A477BA9C);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1414B0);
    }
  }
}

void sub_1A477BAC4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A477BB78()
{
  if (!qword_1EB1414D0)
  {
    sub_1A477BC18(255);
    sub_1A477C300(255, &qword_1EB141528, sub_1A400F5B4, &type metadata for TransferProgressView, MEMORY[0x1E697E830]);
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1414D0);
    }
  }
}

void sub_1A477BCD8()
{
  if (!qword_1EB1414F0)
  {
    sub_1A477E5D8(255, &qword_1EB1414F8, sub_1A477BD8C, MEMORY[0x1E6981F40]);
    sub_1A4775260(&unk_1EB141518, &qword_1EB1414F8, sub_1A477BD8C);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1414F0);
    }
  }
}

void sub_1A477BDC8()
{
  if (!qword_1EB141530)
  {
    sub_1A477BC18(255);
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141530);
    }
  }
}

void sub_1A477BE24()
{
  if (!qword_1EB141540)
  {
    sub_1A477E5D8(255, &qword_1EB141548, sub_1A477BED8, MEMORY[0x1E6981F40]);
    sub_1A4775260(&qword_1EB141590, &qword_1EB141548, sub_1A477BED8);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141540);
    }
  }
}

void sub_1A477BED8()
{
  if (!qword_1EB141550)
  {
    v0 = MEMORY[0x1E69E6720];
    sub_1A477E5D8(255, &qword_1EB141558, sub_1A477BFBC, MEMORY[0x1E69E6720]);
    sub_1A477E5D8(255, &qword_1EB141570, sub_1A477C038, v0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB141550);
    }
  }
}

void sub_1A477C0DC()
{
  if (!qword_1EB141598)
  {
    sub_1A477E5D8(255, &qword_1EB1415A0, sub_1A477C190, MEMORY[0x1E6981F40]);
    sub_1A4775260(&qword_1EB1415C8, &qword_1EB1415A0, sub_1A477C190);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141598);
    }
  }
}

void sub_1A477C1B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A477C224()
{
  if (!qword_1EB1415B0)
  {
    sub_1A477C300(255, &qword_1EB1415B8, sub_1A477C2C4, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A477C2C4(255);
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1415B0);
    }
  }
}

void sub_1A477C300(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A477C36C()
{
  if (!qword_1EB1415F0)
  {
    sub_1A477C424(255, &qword_1EB1415F8, sub_1A477C4B4);
    sub_1A477C598(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1415F0);
    }
  }
}

void sub_1A477C424(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A477CDEC(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A477C4B4()
{
  if (!qword_1EB141600)
  {
    v0 = MEMORY[0x1E697D7D0];
    sub_1A477C598(255, &unk_1EB143960, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D7D0]);
    sub_1A4775394(&qword_1EB141610, &unk_1EB143960, v0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB141600);
    }
  }
}

void sub_1A477C598(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1A477C5EC()
{
  result = qword_1EB141618;
  if (!qword_1EB141618)
  {
    sub_1A477B76C(255);
    sub_1A477B8AC();
    sub_1A3EE1D04();
    sub_1A4775218(&unk_1EB1415D8, sub_1A477B8AC);
    sub_1A4775218(&unk_1EB1263B0, sub_1A3EE1D04);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141618);
  }

  return result;
}

unint64_t sub_1A477C71C()
{
  result = qword_1EB141630;
  if (!qword_1EB141630)
  {
    sub_1A477B60C(255);
    sub_1A477B76C(255);
    sub_1A477E5D8(255, &qword_1EB1415E8, sub_1A477C36C, MEMORY[0x1E6981F40]);
    sub_1A477C5EC();
    sub_1A3D5F9DC();
    sub_1A4775260(&qword_1EB141620, &qword_1EB1415E8, sub_1A477C36C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141630);
  }

  return result;
}

uint64_t sub_1A477C86C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A477C8CC()
{
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_transferHost;
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_transferHost))
  {
    if (qword_1EB1D14B0 != -1)
    {
      swift_once();
    }

    v3 = sub_1A5246F24();
    __swift_project_value_buffer(v3, qword_1EB1D14B8);
    v4 = sub_1A5246F04();
    v5 = sub_1A524D244();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1A3C1C000, v4, v5, "[Host] Transfer host is not nil. Session is already running.", v6, 2u);
      MEMORY[0x1A590EEC0](v6, -1, -1);
    }
  }

  else
  {
    sub_1A5246FC4();
    sub_1A4779290(qword_1EB1D2290, type metadata accessor for PickerViewModel);
    swift_unknownObjectRetain();
    *(v1 + v2) = sub_1A5246FB4();

    if (qword_1EB1D14B0 != -1)
    {
      swift_once();
    }

    v7 = sub_1A5246F24();
    __swift_project_value_buffer(v7, qword_1EB1D14B8);
    v8 = sub_1A5246F04();
    v9 = sub_1A524D244();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1A3C1C000, v8, v9, "[Host] Starting to listen for an attestation-channel.", v10, 2u);
      MEMORY[0x1A590EEC0](v10, -1, -1);
    }

    if (*(v1 + v2))
    {
      swift_allocObject();
      swift_weakInit();

      sub_1A5246FA4();
    }
  }

  sub_1A47650F0();
}

void sub_1A477CB54()
{
  if (!qword_1EB134678)
  {
    sub_1A477CDEC(255, &unk_1EB134680, MEMORY[0x1E69E6158], MEMORY[0x1E697DB98]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134678);
    }
  }
}

void sub_1A477CBD8()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_displaySleepToken);
  *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_4205AE50DB34A253AEBD659A3667797215PickerViewModel_displaySleepToken) = 0;
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 sharedState];
    [v5 endDisablingIdleTimer_];
  }
}

void sub_1A477CC94()
{
  if (!qword_1EB141640)
  {
    sub_1A5246F74();
    sub_1A3C34400(255, &qword_1EB126160);
    v0 = sub_1A524ECF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141640);
    }
  }
}

uint64_t sub_1A477CD14()
{
  sub_1A477CC94();
  v3 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A47626A8(v5, v6, v7, v4, v0 + v3);
}

void sub_1A477CDEC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A477CE3C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A477CE9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_226Tm()
{

  return swift_deallocObject();
}

unint64_t sub_1A477CFBC()
{
  result = qword_1EB141668;
  if (!qword_1EB141668)
  {
    sub_1A477C300(255, &qword_1EB1415B8, sub_1A477C2C4, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A477D074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141668);
  }

  return result;
}

unint64_t sub_1A477D074()
{
  result = qword_1EB141670;
  if (!qword_1EB141670)
  {
    sub_1A477C2C4(255);
    sub_1A477D124();
    sub_1A4775218(&qword_1EB127C68, sub_1A400F5B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141670);
  }

  return result;
}

unint64_t sub_1A477D124()
{
  result = qword_1EB1D22C8;
  if (!qword_1EB1D22C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D22C8);
  }

  return result;
}

void sub_1A477D178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  if (a7)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v8 = a6 & 1;

  sub_1A477D1D8(a1, a2, a3, a4, a5, v8);
}

void sub_1A477D1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

uint64_t sub_1A477D228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  if (a7)
  {
  }

  else
  {
    v9 = a6 & 1;

    return sub_1A477D288(a1, a2, a3, a4, a5, v9);
  }
}

uint64_t sub_1A477D288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  return result;
}

uint64_t sub_1A477D2DC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A477E5D8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A477D35C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A477E5D8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1A477D430()
{
  result = qword_1EB141680;
  if (!qword_1EB141680)
  {
    sub_1A477BC18(255);
    sub_1A477E8CC(&qword_1EB141688, sub_1A477BC60, sub_1A477D518);
    sub_1A4775218(&qword_1EB127C68, sub_1A400F5B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141680);
  }

  return result;
}

unint64_t sub_1A477D594()
{
  result = qword_1EB1416A0;
  if (!qword_1EB1416A0)
  {
    sub_1A477BB78();
    sub_1A477D430();
    sub_1A477D614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1416A0);
  }

  return result;
}

unint64_t sub_1A477D614()
{
  result = qword_1EB1416A8;
  if (!qword_1EB1416A8)
  {
    sub_1A477C300(255, &qword_1EB141528, sub_1A400F5B4, &type metadata for TransferProgressView, MEMORY[0x1E697E830]);
    sub_1A477D6FC();
    sub_1A4775218(&qword_1EB127C68, sub_1A400F5B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1416A8);
  }

  return result;
}

unint64_t sub_1A477D6FC()
{
  result = qword_1EB1D22D0[0];
  if (!qword_1EB1D22D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D22D0);
  }

  return result;
}

unint64_t sub_1A477D750()
{
  result = qword_1EB1416B0;
  if (!qword_1EB1416B0)
  {
    sub_1A477BDC8();
    sub_1A477D430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1416B0);
  }

  return result;
}

uint64_t sub_1A477D7D0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A477D840(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1A477D9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1A477DA60()
{
  if (!qword_1EB1416C0)
  {
    sub_1A5248464();
    sub_1A4779B2C(255);
    sub_1A477E8CC(&qword_1EB141440, sub_1A4779B2C, sub_1A477AB04);
    v0 = sub_1A5248834();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1416C0);
    }
  }
}

void sub_1A477DB14()
{
  if (!qword_1EB1416D0)
  {
    sub_1A5248464();
    sub_1A477B5D0(255);
    sub_1A477E8CC(&qword_1EB141628, sub_1A477B5D0, sub_1A477C71C);
    v0 = sub_1A5248834();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1416D0);
    }
  }
}

void sub_1A477DC84()
{
  if (!qword_1EB1416E0)
  {
    sub_1A477DD58();
    sub_1A47760A0(255);
    sub_1A477DEBC();
    sub_1A477DF6C(&qword_1EB141708, sub_1A47760A0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1416E0);
    }
  }
}

void sub_1A477DD58()
{
  if (!qword_1EB1416E8)
  {
    sub_1A477DDFC(255, &qword_1EB1416F0, sub_1A47755AC, sub_1A477DE88);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1416E8);
    }
  }
}

void sub_1A477DDFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1A477DEBC()
{
  result = qword_1EB141700;
  if (!qword_1EB141700)
  {
    sub_1A477DD58();
    sub_1A47755AC();
    sub_1A477DE88();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141700);
  }

  return result;
}

uint64_t sub_1A477DF6C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1A4779290(qword_1EB1D2260, type metadata accessor for Attachment.Status);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A477E004(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A477E5D8(255, a3, a4, MEMORY[0x1E6981F40]);
    v5 = sub_1A52483B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A477E080()
{
  if (!qword_1EB141718)
  {
    type metadata accessor for Attachment(255);
    sub_1A4779290(&qword_1EB1D2288, type metadata accessor for Attachment);
    v0 = sub_1A52484C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141718);
    }
  }
}

uint64_t sub_1A477E114()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A476AD3C();
}

uint64_t objectdestroy_293Tm()
{

  return swift_deallocObject();
}

unint64_t sub_1A477E214()
{
  result = qword_1EB1D2510;
  if (!qword_1EB1D2510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D2510);
  }

  return result;
}

unint64_t sub_1A477E268()
{
  result = qword_1EB141750;
  if (!qword_1EB141750)
  {
    sub_1A4775778(255);
    sub_1A477E2E8();
    sub_1A477E3D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141750);
  }

  return result;
}

unint64_t sub_1A477E2E8()
{
  result = qword_1EB141758;
  if (!qword_1EB141758)
  {
    sub_1A4775844(255);
    sub_1A477E8CC(&qword_1EB141760, sub_1A4118464, sub_1A4775C00);
    sub_1A4775218(&qword_1EB141768, sub_1A477588C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141758);
  }

  return result;
}

unint64_t sub_1A477E3D0()
{
  result = qword_1EB141770;
  if (!qword_1EB141770)
  {
    sub_1A4775C34(255);
    sub_1A4779290(&qword_1EB1D2518, type metadata accessor for VideoView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141770);
  }

  return result;
}

uint64_t sub_1A477E480(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A477E524()
{
  if (!qword_1EB141790)
  {
    sub_1A477E5D8(255, &qword_1EB141798, sub_1A477E63C, MEMORY[0x1E6981F40]);
    sub_1A4775260(&qword_1EB1417A8, &qword_1EB141798, sub_1A477E63C);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141790);
    }
  }
}

void sub_1A477E5D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A477E6A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A477E754()
{
  result = qword_1EB1417D0;
  if (!qword_1EB1417D0)
  {
    sub_1A477DC48(255);
    sub_1A477DD58();
    sub_1A47760A0(255);
    sub_1A477DEBC();
    sub_1A477DF6C(&qword_1EB141708, sub_1A47760A0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1417D0);
  }

  return result;
}

uint64_t sub_1A477E8CC(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A477E984()
{
  result = qword_1EB1D2528[0];
  if (!qword_1EB1D2528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D2528);
  }

  return result;
}

uint64_t sub_1A477E9E4()
{

  return sub_1A475DDD8();
}

void sub_1A477EAB4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12PhotosUICore50BasicInteractiveScreenEdgeSwipeDismissalTransition_interactiveTransition;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCD60]) init];
  v3 = v1 + OBJC_IVAR____TtC12PhotosUICore50BasicInteractiveScreenEdgeSwipeDismissalTransition_containerWidth;
  *v3 = 0;
  *(v3 + 8) = 1;
  if (qword_1EB1D26B0 != -1)
  {
    swift_once();
  }

  [qword_1EB15B190 screenEdgeSwipeForegroundInset];
  sub_1A5246214();
}

void *sub_1A477EBF0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore50BasicInteractiveScreenEdgeSwipeDismissalTransition_interactiveTransition);
  v2 = v1;
  return v1;
}

void sub_1A477EC20(void *a1)
{
  v3 = [a1 view];
  v17 = [v3 window];

  if (!v17 || (v4 = -1.0, ([v17 px_hasRightToLeftLayoutDirection] & 1) == 0))
  {
    v4 = 1.0;
  }

  v5 = [a1 state];
  if (v5 > 2)
  {
    if ((v5 - 4) >= 2)
    {
      v6 = v17;
      if (v5 == 3)
      {
        [a1 velocityInView_];
        v15 = *(v1 + OBJC_IVAR____TtC12PhotosUICore50BasicInteractiveScreenEdgeSwipeDismissalTransition_foregroundView);
        if (v15 && (*(v1 + OBJC_IVAR____TtC12PhotosUICore50BasicInteractiveScreenEdgeSwipeDismissalTransition_foregroundViewInitialCenter + 16) & 1) == 0)
        {
          [v15 frame];
          CGRectGetHeight(v19);
          sub_1A524DB64();
        }

        v16 = *(v1 + OBJC_IVAR____TtC12PhotosUICore50BasicInteractiveScreenEdgeSwipeDismissalTransition_interactiveTransition);
        if (v4 * v14 < 0.0)
        {
          [v16 cancelInteractiveTransition];
        }

        else
        {
          [v16 finishInteractiveTransition];
        }

        goto LABEL_27;
      }

      goto LABEL_23;
    }

    [*(v1 + OBJC_IVAR____TtC12PhotosUICore50BasicInteractiveScreenEdgeSwipeDismissalTransition_interactiveTransition) cancelInteractiveTransition];
LABEL_14:

LABEL_27:

    return;
  }

  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v17;
  if (v5 == 2 && (*(v1 + OBJC_IVAR____TtC12PhotosUICore50BasicInteractiveScreenEdgeSwipeDismissalTransition_containerWidth + 8) & 1) == 0)
  {
    if (!v17)
    {
      return;
    }

    v7 = *(v1 + OBJC_IVAR____TtC12PhotosUICore50BasicInteractiveScreenEdgeSwipeDismissalTransition_containerWidth);
    [a1 translationInView_];
    v9 = v4 * v8 / v7;
    if (qword_1EB1D26B0 != -1)
    {
      swift_once();
    }

    v10 = qword_1EB15B190;
    [qword_1EB15B190 screenEdgeSwipeInteractionRelativeDistance];
    v12 = tanh(v9 / v11 + v9 / v11);
    [v10 screenEdgeSwipeInteractiveFraction];
    [*(v1 + OBJC_IVAR____TtC12PhotosUICore50BasicInteractiveScreenEdgeSwipeDismissalTransition_interactiveTransition) updateInteractiveTransition_];
    goto LABEL_14;
  }

LABEL_23:
}

void sub_1A477F124(void *a1)
{
  v3 = [a1 containerView];
  [v3 bounds];
  Width = CGRectGetWidth(v21);
  if (Width <= 1.0)
  {
    Width = 1.0;
  }

  v5 = (v1 + OBJC_IVAR____TtC12PhotosUICore50BasicInteractiveScreenEdgeSwipeDismissalTransition_containerWidth);
  *v5 = Width;
  *(v5 + 8) = 0;
  v6 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v3 addSubview_];
  v7 = objc_opt_self();
  v8 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE0))(a1);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  v19 = sub_1A477F6A4;
  v20 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1A3C2E0D0;
  v18 = &block_descriptor_9_10;
  v10 = _Block_copy(&aBlock);
  v11 = v6;

  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = v1;
  v19 = sub_1A477F6F8;
  v20 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1A3E01E70;
  v18 = &block_descriptor_15_6;
  v13 = _Block_copy(&aBlock);
  v14 = v11;
  swift_unknownObjectRetain();
  v1;

  [v7 animateWithDuration:196608 delay:v10 options:v13 animations:v8 completion:0.0];
  _Block_release(v13);
  _Block_release(v10);
  sub_1A52461E4();
}

id sub_1A477F500()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BasicInteractiveScreenEdgeSwipeDismissalTransition();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A477F60C()
{
  sub_1A477F754();
  result = [swift_getObjCClassFromMetadata() sharedInstance];
  qword_1EB15B190 = result;
  return result;
}

id sub_1A477F66C()
{
  if (*(v0 + 24))
  {
    v1 = (v0 + 32);
  }

  else
  {
    v1 = (v0 + 48);
  }

  v2 = *v1;
  if (*(v0 + 24))
  {
    v3 = (v0 + 40);
  }

  else
  {
    v3 = (v0 + 56);
  }

  return [*(v0 + 16) setCenter_];
}

id sub_1A477F6A4()
{
  v1 = *(v0 + 16);
  [v1 alpha];
  v3 = v2 + -1.0;

  return [v1 setAlpha_];
}

uint64_t sub_1A477F6F8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  [v1 removeFromSuperview];
  v4 = [v2 transitionWasCancelled];
  return (*(v3 + OBJC_IVAR____TtC12PhotosUICore50BasicInteractiveScreenEdgeSwipeDismissalTransition_completionHandler))(v4 ^ 1);
}

unint64_t sub_1A477F754()
{
  result = qword_1EB126740;
  if (!qword_1EB126740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126740);
  }

  return result;
}

uint64_t sub_1A477F7B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeICloudLinksShelfProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A477F81C(void *a1@<X0>, uint64_t a2@<X8>)
{
  strcpy(a2, "icloud-links");
  *(a2 + 13) = 0;
  *(a2 + 14) = -5120;
  v4 = type metadata accessor for LemonadeICloudLinksFeature();
  *(a2 + v4[7]) = a1;
  v5 = v4[5];
  v6 = a1;
  sub_1A465E568(v6, a2 + v5);
  v7 = PXCMMCapabilitiesForPhotoLibrary(v6);

  *(a2 + v4[6]) = v7 != 0;
}

id sub_1A477F8C4(uint64_t a1)
{
  v2 = [*(v1 + *(a1 + 28)) px_virtualCollections];
  v3 = [v2 completeMyMomentCollection];

  return v3;
}

uint64_t sub_1A477F968(uint64_t a1)
{
  result = sub_1A477F9C0(&unk_1EB129C78, type metadata accessor for LemonadeICloudLinksFeature);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A477F9C0(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1A477FA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LemonadeDetailsContext();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  sub_1A486B6E8(&v34 - v12);
  sub_1A47800D8(a2, v7, type metadata accessor for LemonadeNavigationDestination);
  v14 = sub_1A477FE10();
  v36 = v7;
  if (v14)
  {
    v15 = v14;
    v16 = [objc_allocWithZone(PXProgrammaticNavigationDestination) initWithObject:v14 revealMode:1];
    result = [v15 photoLibrary];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v18 = result;
    type metadata accessor for LemonadeFeedNavigationParticipant();
    v35 = sub_1A3DC4DE4(v16, v18);
  }

  else
  {
    v35 = 0;
  }

  v37 = *(a3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
  sub_1A47800D8(v13, v10, type metadata accessor for LemonadeDetailsContext);
  v19 = *(a3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);
  v20 = *(v19 + 16);
  v21 = *(v19 + 40);
  if (v21)
  {
    v22 = *((*MEMORY[0x1E69E7D40] & *v21) + 0x2E8);
    v23 = v20;
    v24 = v21;
    v25 = v22();
    v27 = v26;
  }

  else
  {
    v28 = v20;
    v25 = 0;
    v27 = 0;
  }

  type metadata accessor for LemonadeDestinationRootViewController();
  v29 = *(v19 + 40);
  v30 = v29;
  v31 = sub_1A477FD10(a3, a2);
  v32 = sub_1A4655B34();
  v33 = sub_1A44D648C(v36, v35, &v37, v10, v20, v25, v27, v29, v31, v32 & 1);
  sub_1A4784080(v13, type metadata accessor for LemonadeDetailsContext);
  return v33;
}

uint64_t sub_1A477FD10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!*(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 40))
  {
    return 0;
  }

  sub_1A47800D8(a2, v6, type metadata accessor for LemonadeNavigationDestination);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1A4784080(v6, type metadata accessor for LemonadeNavigationDestination);
    return 0;
  }

  v8 = *v6;

  return v8;
}

id sub_1A477FE10()
{
  v1 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47800D8(v0, v3, type metadata accessor for LemonadeNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 35:
      v6 = *v3;
      goto LABEL_17;
    case 2:
      v13 = *(v3 + 1);
      v14 = *(v3 + 2);
      v15 = v3[24];
      *&v24 = *v3;
      *(&v24 + 1) = v13;
      *&v25 = v14;
      BYTE8(v25) = v15;
      sub_1A3C3682C();
      goto LABEL_14;
    case 3:
      v16 = *(v3 + 1);
      v17 = *(v3 + 2);
      v18 = v3[24];
      *&v24 = *v3;
      *(&v24 + 1) = v16;
      *&v25 = v17;
      BYTE8(v25) = v18;
      sub_1A3C47924();
LABEL_14:
      v19 = sub_1A414D034();

      return v19;
    case 4:
      v11 = *(v3 + 1);
      v24 = *v3;
      v25 = v11;
      v26 = *(v3 + 2);
      *&v27[0] = *(v3 + 6);
      v12 = sub_1A47D6C94();
      sub_1A4192D00(&v24);
      return v12;
    case 5:
      v20 = *(v3 + 1);
      v24 = *v3;
      v25 = v20;
      v26 = *(v3 + 2);
      *&v27[0] = *(v3 + 6);
      v21 = sub_1A4333A78();
      sub_1A4192CAC(&v24);
      return v21;
    case 6:
      v8 = *(v3 + 3);
      v26 = *(v3 + 2);
      v27[0] = v8;
      *(v27 + 9) = *(v3 + 57);
      v9 = *(v3 + 1);
      v24 = *v3;
      v25 = v9;
      v10 = sub_1A45A4030();
      sub_1A419294C(&v24);
      return v10;
    case 7:
      v7 = sub_1A41CF01C(*v3);
      goto LABEL_16;
    case 8:
      v7 = sub_1A3D6609C(*v3);
      goto LABEL_16;
    case 9:
      v7 = sub_1A4617FAC(*v3);
      goto LABEL_16;
    case 10:
      v7 = sub_1A44ED12C(*v3);
LABEL_16:
      v6 = v7;
      goto LABEL_17;
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 36:
    case 37:
    case 38:
      sub_1A4784080(v3, type metadata accessor for LemonadeNavigationDestination);
      return 0;
    case 39:
    case 40:
      return result;
    default:
      if (*v3)
      {
        v6 = *v3;
LABEL_17:

        return v6;
      }

      else
      {
        v22 = *(*(v3 + 1) + 16);
        v23 = [v22 px_rootAlbumCollectionList];

        return v23;
      }
  }
}

uint64_t sub_1A47800D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A4780174()
{
  result = qword_1EB1256C0;
  if (!qword_1EB1256C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB1256C0);
  }

  return result;
}

uint64_t sub_1A47801D8()
{
  swift_getAssociatedTypeWitness();
  sub_1A524DF24();
  sub_1A524B694();
  return v1;
}

uint64_t sub_1A4780238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v45 = a7;
  v46 = a6;
  v42 = a4;
  v43 = a5;
  v47 = a3;
  v39 = a12;
  v16 = *(a8 - 8);
  v44 = *(v16 + 64);
  v38 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4785874(0, &qword_1EB138CA8, sub_1A4780140, MEMORY[0x1E697DA80]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v41 = &v36 - v19;
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  *(a9 + 16) = swift_getKeyPath();
  *(a9 + 24) = 0;
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  *(a9 + 48) = 0;
  *(a9 + 56) = swift_getKeyPath();
  *(a9 + 64) = 0;
  *(a9 + 72) = swift_getKeyPath();
  *(a9 + 80) = 0;
  v48 = a8;
  v49 = a10;
  v50 = a11;
  v51 = a12;
  v36 = a11;
  v20 = type metadata accessor for LemonadeFeed();
  v21 = v20[16];
  *(a9 + v21) = swift_getKeyPath();
  sub_1A4785874(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v22 = a9 + v20[17];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  v37 = v20[18];
  sub_1A4780140(0);
  sub_1A5247C74();
  v23 = (a9 + v20[19]);
  *v23 = sub_1A47801D8();
  v23[1] = v24;
  v25 = *(v16 + 16);
  v25(a9 + v20[20], a1, a8);
  *(a9 + v20[21]) = a2;
  *(a9 + v20[24]) = v47;
  v26 = (a9 + v20[22]);
  v27 = v43;
  *v26 = v42;
  v26[1] = v27;

  v46(v28);
  v29 = v40;
  v25(v40, a1, a8);
  v30 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v31 = swift_allocObject();
  v32 = v38;
  *(v31 + 2) = a8;
  *(v31 + 3) = v32;
  v33 = v39;
  *(v31 + 4) = v36;
  *(v31 + 5) = v33;
  (*(v16 + 32))(&v31[v30], v29, a8);
  v34 = v41;
  sub_1A5247C74();

  (*(v16 + 8))(a1, a8);
  return sub_1A437E5D0(v34, a9 + v37);
}

uint64_t sub_1A4780694@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = a1;
  v159 = a2;
  v165 = *(a1 + 32);
  v3 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v158 = AssociatedTypeWitness;
  v131 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v131);
  v129 = &v125 - v5;
  v169 = v2;
  v6 = *(v2 - 8);
  v2 -= 8;
  *&v172 = v2 + 48;
  v128 = v7;
  v166 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v173 = v9;
  v167 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1A5249234();
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v125 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v168 = sub_1A5248804();
  type metadata accessor for LemonadeFeedContents();
  *&v171 = *(v2 + 32);
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  v11 = sub_1A524B894();
  v163 = MEMORY[0x1E6981870];
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1A3D5F9DC();
  *&v179 = v11;
  *(&v179 + 1) = MEMORY[0x1E69E6158];
  v14 = MEMORY[0x1E69E6158];
  v180 = WitnessTable;
  v181 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v179 = v11;
  *(&v179 + 1) = v14;
  v180 = WitnessTable;
  v181 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v179 = OpaqueTypeMetadata2;
  *(&v179 + 1) = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeMetadata2();
  *&v179 = OpaqueTypeMetadata2;
  *(&v179 + 1) = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  *&v179 = v17;
  *(&v179 + 1) = v18;
  swift_getOpaqueTypeMetadata2();
  *&v179 = v17;
  *(&v179 + 1) = v18;
  swift_getOpaqueTypeConformance2();
  v19 = sub_1A5242CE4();
  swift_getAssociatedTypeWitness();
  v164 = v3;
  swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedTypeWitness();
  v21 = swift_getWitnessTable();
  v22 = swift_getAssociatedConformanceWitness();
  *&v179 = v19;
  *(&v179 + 1) = v20;
  v180 = v21;
  v181 = v22;
  swift_getOpaqueTypeMetadata2();
  v23 = sub_1A5249754();
  v185 = swift_getAssociatedConformanceWitness();
  v186 = MEMORY[0x1E697EBF8];
  v24 = swift_getWitnessTable();
  *&v179 = v19;
  *(&v179 + 1) = v20;
  v180 = v21;
  v181 = v22;
  v25 = swift_getOpaqueTypeConformance2();
  v183 = v24;
  v184 = v25;
  v170 = v23;
  v168 = swift_getWitnessTable();
  v26 = sub_1A524B894();
  v137 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v132 = &v125 - v27;
  v28 = sub_1A5243204();
  v29 = swift_getWitnessTable();
  v30 = sub_1A3C36CA4(&unk_1EB129110, MEMORY[0x1E69C23C0]);
  *&v179 = v26;
  *(&v179 + 1) = v28;
  v180 = v29;
  v181 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v138 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v160 = &v125 - v32;
  v143 = v26;
  *&v179 = v26;
  *(&v179 + 1) = v28;
  v134 = v28;
  v135 = v29;
  v180 = v29;
  v181 = v30;
  v133 = v30;
  v33 = swift_getOpaqueTypeConformance2();
  *&v179 = v31;
  v34 = MEMORY[0x1E69E6158];
  *(&v179 + 1) = MEMORY[0x1E69E6158];
  v35 = MEMORY[0x1E69E6180];
  v180 = v33;
  v181 = MEMORY[0x1E69E6180];
  v36 = swift_getOpaqueTypeMetadata2();
  v144 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v161 = &v125 - v37;
  v38 = MEMORY[0x1E69E6720];
  sub_1A3C399DC(255, &qword_1EB126FA0, v34, MEMORY[0x1E69E6720]);
  v40 = v39;
  v139 = v31;
  *&v179 = v31;
  *(&v179 + 1) = v34;
  v136 = v33;
  v180 = v33;
  v181 = v35;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = sub_1A4781D3C(&qword_1EB126F90, &qword_1EB126FA0, v34);
  *&v179 = v36;
  *(&v179 + 1) = v40;
  v180 = v41;
  v181 = v42;
  v43 = swift_getOpaqueTypeMetadata2();
  v149 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v148 = &v125 - v44;
  v45 = MEMORY[0x1E69E6370];
  sub_1A3C399DC(255, &qword_1EB126DF0, MEMORY[0x1E69E6370], v38);
  v47 = v46;
  v145 = v36;
  *&v179 = v36;
  *(&v179 + 1) = v40;
  v141 = v40;
  v142 = v41;
  v180 = v41;
  v181 = v42;
  v140 = v42;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = sub_1A4781D3C(&qword_1EB126DE8, &qword_1EB126DF0, v45);
  *&v179 = v43;
  *(&v179 + 1) = v47;
  v180 = v48;
  v181 = v49;
  v50 = swift_getOpaqueTypeMetadata2();
  v156 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v162 = &v125 - v51;
  v150 = v43;
  *&v179 = v43;
  *(&v179 + 1) = v47;
  v147 = v48;
  v180 = v48;
  v181 = v49;
  v52 = swift_getOpaqueTypeConformance2();
  v157 = v50;
  *&v179 = v50;
  *(&v179 + 1) = v47;
  v146 = v47;
  v152 = v52;
  v180 = v52;
  v181 = v49;
  v163 = v49;
  v155 = swift_getOpaqueTypeMetadata2();
  v154 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v151 = &v125 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v153 = &v125 - v55;
  *&v56 = v165;
  *(&v56 + 1) = *v172;
  *&v57 = v164;
  *(&v57 + 1) = v171;
  v171 = v57;
  v175 = v57;
  v176 = v56;
  v172 = v56;
  v58 = v174;
  v177 = v174;
  sub_1A5249574();
  v59 = v132;
  sub_1A524B884();
  v60 = *v58;
  LOBYTE(v50) = *(v58 + 8);

  if ((v50 & 1) == 0)
  {
    sub_1A524D254();
    v61 = sub_1A524A014();
    sub_1A5246DF4();

    v62 = v125;
    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v126 + 8))(v62, v127);
    v60 = v179;
  }

  *&v179 = v60;
  v63 = v166;
  v64 = v166 + 16;
  v170 = *(v166 + 16);
  v65 = v167;
  v66 = v169;
  v170(v167, v174, v169);
  v67 = *(v63 + 80);
  v68 = (v67 + 48) & ~v67;
  v69 = swift_allocObject();
  v70 = v172;
  *(v69 + 16) = v171;
  *(v69 + 32) = v70;
  v72 = *(v63 + 32);
  v71 = v63 + 32;
  v168 = v72;
  v72(v69 + v68, v65, v66);
  swift_checkMetadataState();
  v73 = v143;
  sub_1A524B144();

  (*(v137 + 8))(v59, v73);
  v74 = v174;
  *&v179 = (*(v165 + 72))(v164);
  *(&v179 + 1) = v75;
  v165 = v64;
  v170(v65, v74, v66);
  v164 = v67;
  v76 = swift_allocObject();
  v77 = v172;
  *(v76 + 16) = v171;
  *(v76 + 32) = v77;
  v143 = v68;
  v168(v76 + v68, v65, v66);
  v78 = v139;
  v79 = v160;
  sub_1A524B144();

  (*(v138 + 8))(v79, v78);
  v80 = *(v66 + 72);
  sub_1A4785874(0, &qword_1EB138CA8, sub_1A4780140, MEMORY[0x1E697DA80]);
  v160 = v80;
  v139 = v81;
  sub_1A5247C84();
  v82 = v181;
  if (v181)
  {
    v83 = v182;
    v84 = __swift_project_boxed_opaque_existential_1(&v179, v181);
    v85 = *(v82 - 8);
    v86 = MEMORY[0x1EEE9AC00](v84);
    v88 = &v125 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v85 + 16))(v88, v86);
    sub_1A4784080(&v179, sub_1A4780140);
    v89 = (*(v83 + 16))(v82, v83);
    v91 = v90;
    (*(v85 + 8))(v88, v82);
    v65 = v167;
  }

  else
  {
    sub_1A4784080(&v179, sub_1A4780140);
    v89 = 0;
    v91 = 0;
  }

  *&v179 = v89;
  *(&v179 + 1) = v91;
  v92 = v174;
  v93 = v169;
  v170(v65, v174, v169);
  v94 = v143;
  v95 = swift_allocObject();
  v96 = v172;
  *(v95 + 16) = v171;
  *(v95 + 32) = v96;
  v166 = v71;
  v168(v95 + v94, v65, v93);
  swift_checkMetadataState();
  v97 = v148;
  v98 = v145;
  v99 = v161;
  sub_1A524B144();

  (*(v144 + 8))(v99, v98);
  v179 = *(v92 + *(v93 + 76));
  sub_1A524DF24();
  sub_1A524B6D4();
  sub_1A524B6A4();
  if (v178)
  {
    sub_1A5245904();
  }

  LOBYTE(v179) = 2;
  v100 = v167;
  v101 = v169;
  v170(v167, v174, v169);
  v102 = swift_allocObject();
  v103 = v172;
  *(v102 + 16) = v171;
  *(v102 + 32) = v103;
  v168(v102 + v94, v100, v101);
  swift_checkMetadataState();
  v104 = v150;
  sub_1A524B144();

  (*(v149 + 8))(v97, v104);
  sub_1A5247C84();
  v105 = v181;
  if (v181)
  {
    v106 = v182;
    v107 = __swift_project_boxed_opaque_existential_1(&v179, v181);
    v108 = *(v105 - 8);
    v109 = MEMORY[0x1EEE9AC00](v107);
    v111 = &v125 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v108 + 16))(v111, v109);
    sub_1A4784080(&v179, sub_1A4780140);
    LOBYTE(v106) = (*(v106 + 24))(v105, v106);
    (*(v108 + 8))(v111, v105);
    v100 = v167;
    v112 = v106 & 1;
  }

  else
  {
    sub_1A4784080(&v179, sub_1A4780140);
    v112 = 2;
  }

  LOBYTE(v179) = v112;
  v113 = v169;
  v170(v100, v174, v169);
  v114 = swift_allocObject();
  v115 = v172;
  *(v114 + 16) = v171;
  *(v114 + 32) = v115;
  v168(v114 + v94, v100, v113);
  v116 = v151;
  v117 = v157;
  v118 = v162;
  sub_1A524B144();

  (*(v156 + 8))(v118, v117);
  v119 = v154;
  v120 = *(v154 + 16);
  v121 = v153;
  v122 = v155;
  v120(v153, v116, v155);
  v123 = *(v119 + 8);
  v123(v116, v122);
  v120(v159, v121, v122);
  return (v123)(v121, v122);
}

uint64_t sub_1A4781D3C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A3C399DC(255, a2, a3, MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4781DB4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v54 = a1;
  v63 = a6;
  *&v68 = a2;
  *(&v68 + 1) = a3;
  v69 = a4;
  v70 = a5;
  v51 = a5;
  v52 = type metadata accessor for LemonadeFeed();
  v49 = *(v52 - 8);
  v47[13] = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v48 = v47 - v9;
  type metadata accessor for LemonadeFeedContents();
  v50 = a3;
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  v10 = sub_1A524B894();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1A3D5F9DC();
  v13 = MEMORY[0x1E69E6158];
  *&v68 = v10;
  *(&v68 + 1) = MEMORY[0x1E69E6158];
  v69 = WitnessTable;
  v70 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v68 = v10;
  *(&v68 + 1) = v13;
  v69 = WitnessTable;
  v70 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v68 = OpaqueTypeMetadata2;
  *(&v68 + 1) = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeMetadata2();
  *&v68 = OpaqueTypeMetadata2;
  *(&v68 + 1) = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeConformance2();
  *&v68 = v16;
  *(&v68 + 1) = v17;
  v18 = swift_getOpaqueTypeMetadata2();
  *&v68 = v16;
  *(&v68 + 1) = v17;
  v19 = swift_getOpaqueTypeConformance2();
  v47[11] = v18;
  v47[9] = v19;
  v20 = sub_1A5242CE4();
  v47[12] = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v47[10] = v47 - v21;
  v64 = a4;
  v22 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v61 = v24;
  v62 = v20;
  *&v68 = v20;
  *(&v68 + 1) = AssociatedTypeWitness;
  v65 = AssociatedConformanceWitness;
  v66 = AssociatedTypeWitness;
  v69 = v24;
  v70 = AssociatedConformanceWitness;
  v26 = swift_getOpaqueTypeMetadata2();
  v47[8] = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v27);
  v47[7] = v47 - v28;
  v29 = swift_getAssociatedTypeWitness();
  v47[2] = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v47[1] = v47 - v30;
  v53 = v31;
  v32 = sub_1A5248804();
  v47[4] = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v47[3] = v47 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v47[6] = v47 - v35;
  swift_getAssociatedTypeWitness();
  v56 = v22;
  swift_getAssociatedConformanceWitness();
  v36 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v36);
  v59 = v32;
  v60 = v26;
  v58 = sub_1A5249754();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v55 = v47 - v37;
  v38 = v52;
  v39 = v54;
  v68 = *(v54 + *(v52 + 76));
  sub_1A524DF24();
  sub_1A524B6D4();
  sub_1A524B6A4();
  if (v67)
  {
    v47[5] = v67;
    sub_1A5245904();
  }

  v40 = v39;
  v41 = v49;
  v42 = v48;
  (*(v49 + 16))(v48, v40, v38);
  v43 = (*(v41 + 80) + 48) & ~*(v41 + 80);
  v44 = swift_allocObject();
  v45 = v50;
  *(v44 + 2) = a2;
  *(v44 + 3) = v45;
  v46 = v51;
  *(v44 + 4) = v64;
  *(v44 + 5) = v46;
  (*(v41 + 32))(&v44[v43], v42, v38);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4782BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v76 = a6;
  v75 = a7;
  v72 = sub_1A5249234();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = a3;
  type metadata accessor for LemonadeFeedContents();
  v13 = a4;
  swift_getTupleTypeMetadata2();
  v14 = sub_1A524BE24();
  WitnessTable = swift_getWitnessTable();
  v74 = v14;
  v73 = WitnessTable;
  v16 = sub_1A524B894();
  v91 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v94 = &v69 - v17;
  v18 = swift_getWitnessTable();
  v19 = sub_1A3D5F9DC();
  v20 = MEMORY[0x1E69E6158];
  v99 = v16;
  v100 = MEMORY[0x1E69E6158];
  v101 = v18;
  v102 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v87 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v83 = &v69 - v22;
  v92 = v16;
  v99 = v16;
  v100 = v20;
  v88 = v18;
  v101 = v18;
  v102 = v19;
  v85 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v99 = OpaqueTypeMetadata2;
  v100 = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeMetadata2();
  v86 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v82 = &v69 - v25;
  v90 = OpaqueTypeMetadata2;
  v99 = OpaqueTypeMetadata2;
  v100 = OpaqueTypeConformance2;
  v78 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v89 = v24;
  v99 = v24;
  v100 = v26;
  v80 = v26;
  v84 = swift_getOpaqueTypeMetadata2();
  v81 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v77 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v79 = &v69 - v30;
  v31 = *(a2 + 24);
  if ((*(a2 + 48) & 1) == 0)
  {
    v32 = *(a2 + 16);
    v34 = *(a2 + 32);
    v33 = *(a2 + 40);

    sub_1A524D254();
    v35 = a5;
    v36 = sub_1A524A014();
    sub_1A5246DF4();

    a5 = v35;
    v37 = v70;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3F1D444(v32, v31, v34, v33, 0);
    v29 = (*(v71 + 8))(v37, v72);
  }

  MEMORY[0x1EEE9AC00](v29);
  v38 = v93;
  *(&v69 - 6) = v93;
  *(&v69 - 5) = v13;
  v39 = v76;
  *(&v69 - 4) = a5;
  *(&v69 - 3) = v39;
  *(&v69 - 2) = a2;
  sub_1A5249574();
  sub_1A524B884();
  v95 = v38;
  v96 = v13;
  v97 = a5;
  v98 = v39;
  v40 = type metadata accessor for LemonadeFeed();
  sub_1A4785874(0, &qword_1EB138CA8, sub_1A4780140, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v41 = v102;
  if (!v102)
  {
    sub_1A4784080(&v99, sub_1A4780140);
LABEL_7:
    v50 = (*(a5 + 72))(v93, a5);
    v52 = v54;

    goto LABEL_8;
  }

  v42 = v103;
  v43 = __swift_project_boxed_opaque_existential_1(&v99, v102);
  v74 = &v69;
  v44 = *(v41 - 8);
  v76 = a2;
  v45 = v44;
  v46 = MEMORY[0x1EEE9AC00](v43);
  v48 = a5;
  v49 = &v69 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v45 + 16))(v49, v46);
  sub_1A4784080(&v99, sub_1A4780140);
  v50 = (*(v42 + 16))(v41, v42);
  v52 = v51;
  v53 = v49;
  a5 = v48;
  (*(v45 + 8))(v53, v41);
  a2 = v76;
  if (!v52)
  {
    goto LABEL_7;
  }

LABEL_8:
  v99 = v50;
  v100 = v52;
  v55 = v83;
  v56 = v92;
  v57 = v94;
  sub_1A524ABB4();

  (*(v91 + 8))(v57, v56);
  v58 = v82;
  v59 = v90;
  sub_1A524A5E4();
  (*(v87 + 8))(v55, v59);
  v60 = *(a2 + *(v40 + 84));
  v102 = type metadata accessor for LemonadeNavigationContext(0);
  v103 = sub_1A3C36CA4(&qword_1EB125720, type metadata accessor for LemonadeNavigationContext);
  v99 = v60;

  v61 = v77;
  v62 = v89;
  sub_1A458C30C(a1, &v99, v89, v80);
  (*(v86 + 8))(v58, v62);
  __swift_destroy_boxed_opaque_existential_0(&v99);
  v63 = v81;
  v64 = *(v81 + 16);
  v65 = v79;
  v66 = v84;
  v64(v79, v61, v84);
  v67 = *(v63 + 8);
  v67(v61, v66);
  v64(v75, v65, v66);
  return (v67)(v65, v66);
}

uint64_t sub_1A47834F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v49 = a3;
  v50 = a5;
  v54 = a6;
  v52 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v53 = &WitnessTable - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v51 = &WitnessTable - v13;
  sub_1A4785874(0, &qword_1EB128FB0, MEMORY[0x1E69C2E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &WitnessTable - v15;
  v17 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &WitnessTable - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v20;
  v48 = type metadata accessor for LemonadeFeedContents();
  v55 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &WitnessTable - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v47 = &WitnessTable - v23;
  v59 = a2;
  v60 = a3;
  v61 = a4;
  v62 = a5;
  v24 = type metadata accessor for LemonadeFeed();
  (*(v17 + 16))(v20, a1 + v24[20], a2);
  v25 = *(a1 + v24[21]);
  v26 = sub_1A52442E4();
  (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
  v27 = *(a1 + v24[24]);
  sub_1A4785874(0, &qword_1EB138CA8, sub_1A4780140, MEMORY[0x1E697DA80]);

  sub_1A5247C84();
  LOBYTE(v17) = sub_1A3C30368();
  v28 = sub_1A3C5A374();
  v29 = v46;
  sub_1A437CBD4(v45, v25, v16, v27, v17 & 1, &v59, 0, 0, v46, v28 & 1, a2, a4);
  v30 = v48;
  WitnessTable = swift_getWitnessTable();
  v31 = v55;
  v32 = *(v55 + 16);
  v33 = v47;
  v32(v47, v29, v30);
  v34 = *(v31 + 8);
  v55 = v31 + 8;
  v45 = v34;
  (v34)(v29, v30);
  v35 = v51;
  v36 = v52;
  v37 = *(v52 + 16);
  v38 = a1 + v24[23];
  v39 = v49;
  v37(v51, v38, v49);
  v32(v29, v33, v30);
  v59 = v29;
  v40 = v53;
  v37(v53, v35, v39);
  v60 = v40;
  v58[0] = v30;
  v58[1] = v39;
  v56 = WitnessTable;
  v57 = v50;
  sub_1A3DF4988(&v59, 2uLL, v58);
  v41 = *(v36 + 8);
  v41(v35, v39);
  v42 = v45;
  (v45)(v33, v30);
  v41(v40, v39);
  return (v42)(v29, v30);
}

uint64_t sub_1A4783A0C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_1A5249234();
  v31 = *(v14 - 8);
  v32 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = *a2;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v19 = type metadata accessor for LemonadeFeed();
  v20 = (a3 + v19[19]);
  v21 = *v20;
  v33 = v20[1];
  v34 = v21;
  v36 = v21;
  v37 = v33;
  v22 = *(a6 + 8);
  swift_getAssociatedTypeWitness();
  sub_1A524DF24();
  sub_1A524B6D4();
  sub_1A524B6A4();
  if (!v35 || (result = swift_unknownObjectRelease(), v17 != v18))
  {
    v24 = v19[20];

    v25 = sub_1A3C66934(a3 + v24, a4, v22);

    v26 = a3 + v19[17];
    v27 = *v26;
    v28 = *(v26 + 8);
    if (*(v26 + 9) == 1)
    {
      if ((v28 & 1) == 0)
      {
LABEL_7:
        swift_getAssociatedConformanceWitness();
        sub_1A5245914();
      }
    }

    else
    {

      sub_1A524D254();
      v29 = sub_1A524A014();
      sub_1A5246DF4();

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3F1B4C4(v27, v28, 0);
      (*(v31 + 8))(v16, v32);
      if ((v37 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v36 = v34;
    v37 = v33;
    v35 = v25;
    return sub_1A524B6B4();
  }

  return result;
}

uint64_t sub_1A4783CC8(uint64_t *a1, uint64_t *a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for LemonadeFeed() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1A4783A0C(a1, a2, v10, v5, v6, v7, v8);
}

uint64_t objectdestroy_12Tm_0()
{
  v1 = *(v0 + 16);
  v9 = *(v0 + 24);
  v2 = type metadata accessor for LemonadeFeed();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80));

  sub_1A3F1D444(*(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48));

  v4 = v2[16];
  sub_1A4785874(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A5248284();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_1A3F1B4C4(*(v3 + v2[17]), *(v3 + v2[17] + 8), *(v3 + v2[17] + 9));
  v6 = v3 + v2[18];
  sub_1A4785874(0, &qword_1EB121430, sub_1A4780140, MEMORY[0x1E6981E90]);
  (*(*(v7 - 8) + 8))(v6, v7);
  sub_1A4785874(0, &qword_1EB1213F0, sub_1A4780140, MEMORY[0x1E6981E98]);

  swift_unknownObjectRelease();

  (*(*(v1 - 8) + 8))(v3 + v2[20], v1);

  (*(*(v9 - 8) + 8))(v3 + v2[23]);

  return swift_deallocObject();
}

uint64_t sub_1A4784080(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A47840E0(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = v5;
  v31[2] = swift_getAssociatedConformanceWitness();
  v35 = AssociatedTypeWitness;
  v7 = swift_getAssociatedTypeWitness();
  v31[3] = *(v7 - 8);
  v31[4] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v31[1] = v31 - v8;
  v9 = sub_1A5249234();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 80);

  v36 = v13;
  if ((v13 & 1) == 0)
  {
    sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v9);
  }

  v32 = v12;
  v33 = v10;
  v34 = v9;
  sub_1A4785874(0, &qword_1EB138CA8, sub_1A4780140, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v15 = v40;
  if (v40)
  {
    v16 = v41;
    v17 = __swift_project_boxed_opaque_existential_1(&v39, v40);
    v31[0] = v31;
    v18 = v4;
    v19 = v3;
    v20 = v2;
    v21 = *(v15 - 8);
    v22 = MEMORY[0x1EEE9AC00](v17);
    v24 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24, v22);
    sub_1A4784080(&v39, sub_1A4780140);
    (*(v16 + 16))(v15, v16);
    v26 = v25;
    (*(v21 + 8))(v24, v15);
    v2 = v20;
    v3 = v19;
    v4 = v18;
    if (v26)
    {
      v27 = v37;
      goto LABEL_8;
    }
  }

  else
  {
    sub_1A4784080(&v39, sub_1A4780140);
  }

  v27 = v37;
  (*(v4 + 72))(v37, v4);

LABEL_8:
  sub_1A5243DE4();

  if ((v36 & 1) == 0)
  {
    sub_1A524D254();
    v28 = sub_1A524A014();
    sub_1A5246DF4();

    v29 = v32;
    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v33 + 8))(v29, v34);
  }

  if ((*(v4 + 80))(v27, v4))
  {
    v39 = *(v2 + *(v3 + 76));
    sub_1A524DF24();
    sub_1A524B6D4();
    sub_1A524B6A4();
    if (v38)
    {
      sub_1A5245904();
    }
  }

  sub_1A5243DF4();
}

uint64_t sub_1A4784698()
{
  type metadata accessor for LemonadeFeed();
  v0 = type metadata accessor for LemonadeFeed();
  return sub_1A47840E0(v0);
}

void sub_1A4784734(_BYTE *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1A5248284();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v18 = *a2;
    if (v18 != 2 && (v18 & 1) == 0)
    {
      v20[0] = a4;
      v20[1] = a5;
      v20[2] = a6;
      v20[3] = a7;
      v19 = v15;
      type metadata accessor for LemonadeFeed();
      sub_1A3E86EA0(v17);
      sub_1A5248274();
      (*(v14 + 8))(v17, v19);
    }
  }
}

void sub_1A4784868(_BYTE *a1, unsigned __int8 *a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for LemonadeFeed() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  sub_1A4784734(a1, a2, v10, v5, v6, v7, v8);
}

uint64_t sub_1A4784928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(a5 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v18, v15);
  sub_1A4780238(v17, a2, 0, a3, a4, PXDisplayCollectionDetailedCountsMake, 0, a5, a7, MEMORY[0x1E6981E70], a6, MEMORY[0x1E6981E60]);
  return (*(v14 + 8))(a1, a5);
}

void sub_1A4784AC4()
{
  sub_1A4785874(319, &qword_1EB124860, MEMORY[0x1E69C23C0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A3C399DC(319, &qword_1EB124800, &type metadata for LemonadeStackSpecs, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A4785874(319, &qword_1EB124838, MEMORY[0x1E69C29F0], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A4785874(319, &qword_1EB124848, MEMORY[0x1E69C28E8], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A4785874(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1A478570C();
            if (v5 <= 0x3F)
            {
              sub_1A4785874(319, &qword_1EB138CA8, sub_1A4780140, MEMORY[0x1E697DA80]);
              if (v6 <= 0x3F)
              {
                swift_getAssociatedTypeWitness();
                sub_1A524DF24();
                sub_1A524B6D4();
                if (v7 <= 0x3F)
                {
                  swift_checkMetadataState();
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for LemonadeNavigationContext(319);
                    if (v9 <= 0x3F)
                    {
                      swift_checkMetadataState();
                      if (v10 <= 0x3F)
                      {
                        swift_getAssociatedTypeWitness();
                        swift_getAssociatedConformanceWitness();
                        swift_getAssociatedTypeWitness();
                        swift_getAssociatedConformanceWitness();
                        sub_1A5242854();
                        sub_1A524DF24();
                        if (v11 <= 0x3F)
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
        }
      }
    }
  }
}

uint64_t sub_1A4784E4C(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1A5248284() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  sub_1A4785874(0, &qword_1EB121430, sub_1A4780140, MEMORY[0x1E6981E90]);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(a3 + 24);
  v12 = *(*(a3 + 16) - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v10 <= v14)
  {
    v15 = *(v12 + 84);
  }

  else
  {
    v15 = *(v9 + 84);
  }

  v16 = *(v11 - 8);
  v17 = *(v16 + 84);
  v18 = *(v12 + 80);
  v19 = *(v12 + 64);
  v20 = *(v16 + 80);
  if (v15 <= v17)
  {
    v21 = *(v16 + 84);
  }

  else
  {
    v21 = v15;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v21;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = *(v6 + 80) & 0xF8;
  v24 = v23 | 7;
  v25 = v7 + 8;
  v26 = *(v9 + 80) & 0xF8;
  v27 = ~v26 & 0xFFFFFFFFFFFFFFF8;
  v28 = v26 + 17;
  v29 = ((*(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v18 + 24;
  v30 = v19 + 7;
  v31 = v20 + 16;
  if (v22 >= a2)
  {
    goto LABEL_36;
  }

  v32 = ((*(*(v11 - 8) + 64) + ((v31 + ((((v30 + ((v29 + ((v28 + ((v25 + ((v23 + 88) & ~v24)) & 0xFFFFFFFFFFFFFFF8)) & v27)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v20) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v33 = a2 - v22;
  v34 = v32 & 0xFFFFFFF8;
  if ((v32 & 0xFFFFFFF8) != 0)
  {
    v35 = 2;
  }

  else
  {
    v35 = v33 + 1;
  }

  if (v35 >= 0x10000)
  {
    v36 = 4;
  }

  else
  {
    v36 = 2;
  }

  if (v35 < 0x100)
  {
    v36 = 1;
  }

  if (v35 >= 2)
  {
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  if (v37 > 1)
  {
    if (v37 == 2)
    {
      v38 = *(a1 + v32);
      if (!v38)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v38 = *(a1 + v32);
      if (!v38)
      {
        goto LABEL_36;
      }
    }

LABEL_33:
    v40 = v38 - 1;
    if (v34)
    {
      v40 = 0;
      v41 = *a1;
    }

    else
    {
      v41 = 0;
    }

    return v22 + (v41 | v40) + 1;
  }

  if (v37)
  {
    v38 = *(a1 + v32);
    if (v38)
    {
      goto LABEL_33;
    }
  }

LABEL_36:
  v42 = (v28 + ((v25 + (((a1 & 0xFFFFFFFFFFFFFFF8) + v24 + 81) & ~v24)) & 0xFFFFFFFFFFFFFFF8)) & v27;
  if (v10 == v22)
  {
    v43 = *(v9 + 48);

    return v43(v42);
  }

  else
  {
    v44 = (v29 + v42) & ~v18;
    if (v14 == v22)
    {
      v45 = *(v13 + 48);

      return v45(v44, v14);
    }

    else
    {
      v46 = ((v30 + v44) & 0xFFFFFFFFFFFFFFF8);
      if ((v21 & 0x80000000) != 0)
      {
        v48 = *(v16 + 48);

        return v48((v31 + ((v46 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v20, v17, v11);
      }

      else
      {
        v47 = *v46;
        if (*v46 >= 0xFFFFFFFF)
        {
          LODWORD(v47) = -1;
        }

        return (v47 + 1);
      }
    }
  }
}

void sub_1A4785270(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1A5248284() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  sub_1A4785874(0, &qword_1EB121430, sub_1A4780140, MEMORY[0x1E6981E90]);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(a4 + 24);
  v15 = *(*(a4 + 16) - 8);
  v16 = v15;
  v17 = *(v15 + 84);
  if (v17 <= v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = *(v15 + 84);
  }

  v19 = *(v14 - 8);
  v20 = *(v19 + 84);
  v21 = *(v8 + 80);
  v22 = *(v11 + 80);
  v23 = *(v15 + 80);
  v24 = *(v15 + 64);
  v25 = *(v19 + 80);
  if (v18 <= v20)
  {
    v26 = *(v19 + 84);
  }

  else
  {
    v26 = v18;
  }

  if (v26 <= 0x7FFFFFFF)
  {
    v27 = 0x7FFFFFFF;
  }

  else
  {
    v27 = v26;
  }

  v28 = v21 & 0xF8 | 7;
  v29 = v9 + 8;
  v30 = (v9 + 8 + (((v21 & 0xF8) + 88) & ~v28)) & 0xFFFFFFFFFFFFFFF8;
  v31 = ~(v22 & 0xF8) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v22 & 0xF8) + 17;
  v33 = (*(*(v10 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = v33 + v23 + 24;
  v35 = ((*(*(v14 - 8) + 64) + ((v25 + 16 + ((((v24 + 7 + ((v34 + ((v32 + v30) & v31)) & ~v23)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v25) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v27 >= a3)
  {
    v37 = 0;
    v38 = a2 - v27;
    if (a2 <= v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (((*(*(v14 - 8) + 64) + ((v25 + 16 + ((((v24 + 7 + ((v34 + ((v32 + v30) & v31)) & ~v23)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v25) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v36 = a3 - v27 + 1;
    }

    else
    {
      v36 = 2;
    }

    if (v36 >= 0x10000)
    {
      v37 = 4;
    }

    else
    {
      v37 = 2;
    }

    if (v36 < 0x100)
    {
      v37 = 1;
    }

    if (v36 < 2)
    {
      v37 = 0;
    }

    v38 = a2 - v27;
    if (a2 <= v27)
    {
LABEL_28:
      if (v37 > 1)
      {
        if (v37 != 2)
        {
          *(a1 + v35) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_44;
        }

        *(a1 + v35) = 0;
      }

      else if (v37)
      {
        *(a1 + v35) = 0;
        if (!a2)
        {
          return;
        }

LABEL_44:
        v41 = v32 + ((v29 + (((a1 & 0xFFFFFFFFFFFFFFF8) + v28 + 81) & ~v28)) & 0xFFFFFFFFFFFFFFF8);
        v42 = (v41 & v31);
        if (v12 == v27)
        {
          if (v13 >= a2)
          {
            v46 = *(v11 + 56);

            v46(v41 & v31, a2);
          }

          else if (v33 != -8)
          {
            v43 = ~v13 + a2;
            bzero(v42, (v33 + 8));
            *v42 = v43;
          }
        }

        else
        {
          v44 = (v42 + v34) & ~v23;
          if (v17 == v27)
          {
            v45 = *(v16 + 56);

            v45(v44, a2, v17);
          }

          else
          {
            v47 = ((v24 + 7 + v44) & 0xFFFFFFFFFFFFFFF8);
            if ((v26 & 0x80000000) != 0)
            {
              v49 = *(v19 + 56);

              v49((v25 + 16 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v25, a2, v20, v14);
            }

            else
            {
              if ((a2 & 0x80000000) != 0)
              {
                v48 = a2 & 0x7FFFFFFF;
              }

              else
              {
                v48 = (a2 - 1);
              }

              *v47 = v48;
            }
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }
  }

  if (((*(*(v14 - 8) + 64) + ((v25 + 16 + ((((v24 + 7 + ((v34 + ((v32 + v30) & v31)) & ~v23)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v25) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v39 = v38;
  }

  else
  {
    v39 = 1;
  }

  if (((*(*(v14 - 8) + 64) + ((v25 + 16 + ((((v24 + 7 + ((v34 + ((v32 + v30) & v31)) & ~v23)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v25) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v40 = ~v27 + a2;
    bzero(a1, v35);
    *a1 = v40;
  }

  if (v37 > 1)
  {
    if (v37 == 2)
    {
      *(a1 + v35) = v39;
    }

    else
    {
      *(a1 + v35) = v39;
    }
  }

  else if (v37)
  {
    *(a1 + v35) = v39;
  }
}

void sub_1A478570C()
{
  if (!qword_1EB1246C8)
  {
    sub_1A3C399DC(255, &qword_1EB126D90, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    v0 = sub_1A5247E54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1246C8);
    }
  }
}

uint64_t sub_1A4785788@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for LemonadeFeed() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1A4782BA0(a1, v10, v5, v6, v7, v8, a2);
}

void sub_1A4785874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A47858DC(__int128 *a1)
{
  v2 = swift_allocObject();
  v6 = *a1;
  v4 = *(a1 + 2);
  v3 = *(a1 + 3);
  sub_1A5241604();
  *(v2 + 16) = v6;
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;
  return v2;
}

void sub_1A478594C(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getKeyPath();
  v6 = v1;
  v7 = v3;
  v8 = v2;
  v9 = v4;
  v10 = v5;
  (*(*v1 + 176))();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

uint64_t sub_1A4785A18@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 168))();

  swift_beginAccess();
  v4 = v1[2];
  v3 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v6;
  a1[3] = v5;
  v7 = v5;
  v8 = v4;
  swift_unknownObjectRetain();
  return swift_unknownObjectRetain();
}

double sub_1A4785AC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 128))(&v6);
  result = *&v6;
  v4 = v7;
  v5 = v8;
  *a2 = v6;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  return result;
}

uint64_t sub_1A4785B2C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *a2;
  v10[0] = *a1;
  v10[1] = v2;
  v10[2] = v4;
  v10[3] = v3;
  v6 = *(*v5 + 136);
  v7 = v3;
  v8 = v10[0];
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return v6(v10);
}

void sub_1A4785BB4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  swift_beginAccess();
  v6 = v1[2];
  v7 = v1[5];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v8 = v5;
  v9 = v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void (*sub_1A4785C58(uint64_t *a1))(void *a1)
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
  swift_getKeyPath();
  (*(*v1 + 168))();

  v4[5] = OBJC_IVAR____TtC12PhotosUICore26LemonadeSharedWithYouModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A47862D8(&qword_1EB141830);
  sub_1A52415F4();

  v4[7] = sub_1A3E65F84();
  return sub_1A4785D80;
}

void sub_1A4785D80(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

uint64_t type metadata accessor for LemonadeSharedWithYouModel()
{
  result = qword_1EB1D2980;
  if (!qword_1EB1D2980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4785E90(uint64_t (*a1)(void *))
{
  v3 = (*(*v1 + 128))(v8);
  v4 = v8[0];
  v5 = v8[3];
  v6 = a1(v3);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1A478604C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC12PhotosUICore26LemonadeSharedWithYouModel___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void (*sub_1A478619C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*(*v1 + 144))();
  return sub_1A3D3D728;
}

uint64_t sub_1A47862D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LemonadeSharedWithYouModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4786320@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 152))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A4786374()
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

id sub_1A4786418(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[qword_1EB141848] = a1;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for LemonadePhotosChallengeFeature.ScrollViewModelController();

  v4 = objc_msgSendSuper2(&v9, sel_init);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 defaultCenter];
  [v7 addObserver:v6 selector:sel_navigateToGadget_ name:*sub_1A4997B84() object:0];

  return v6;
}

uint64_t sub_1A4786538(void *a1)
{
  v3 = type metadata accessor for LemonadeNavigationDestination();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([a1 type] != 24)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider(0);
  v9 = sub_1A3C53D20(&qword_1EB12ADA8, type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider);
  v10 = sub_1A3C66934(v1, v8, v9);
  sub_1A49986A0();
  v12 = v11;

  *v7 = v12;
  swift_storeEnumTagMultiPayload();
  sub_1A3C4BFD0(0, &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6F90]);
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1A52F8E10;
  sub_1A40B671C(v7, v14 + v13);
  return v14;
}

uint64_t sub_1A47867C0@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X3>, uint64_t *a3@<X8>)
{
  v7 = sub_1A3C53D20(&qword_1EB12ADA8, type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider);
  v8 = sub_1A3C66934(v3, a1, v7);
  v9 = a2();

  *a3 = v9;
  v10 = type metadata accessor for LemonadeNavigationDestination();
  swift_storeEnumTagMultiPayload();
  v11 = *(*(v10 - 8) + 56);

  return v11(a3, 0, 1, v10);
}

void sub_1A47868BC(void **a1)
{
  v1 = *a1;
  type metadata accessor for LemonadePhotosChallengeItemListManager();
  v2 = v1;
  sub_1A4997BD4();
}

uint64_t sub_1A47868F0@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1A43A436C(v2);
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

unint64_t sub_1A4786924@<X0>(void *a1@<X8>)
{
  sub_1A4787098();
  v3 = v2;
  v4 = objc_allocWithZone(v2);

  v6 = sub_1A47869F0(v5);
  a1[3] = v3;
  result = sub_1A4787108();
  a1[4] = result;
  *a1 = v6;
  return result;
}

unint64_t sub_1A4786984(uint64_t a1)
{
  v2 = sub_1A3C53D20(&qword_1EB12ADA0, type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider);

  return sub_1A42E6E80(a1, v2);
}

id sub_1A47869F0(uint64_t a1)
{
  *&v1[qword_1EB141848] = a1;
  sub_1A4787098();
  v8.receiver = v1;
  v8.super_class = v2;

  v3 = objc_msgSendSuper2(&v8, sel_init);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 defaultCenter];
  [v6 addObserver:v5 selector:sel_navigateToGadget_ name:*sub_1A4997B84() object:0];

  return v5;
}

uint64_t sub_1A4786ACC()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = sub_1A524DF24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - v4;
  v6 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  sub_1A5240544();
  if (!v19[3])
  {
    return sub_1A3C35B00(v19);
  }

  sub_1A41B7928();
  result = swift_dynamicCast();
  if (result)
  {
    v17 = v3;
    v11 = [v18 uniqueGadgetIdentifier];
    v12 = sub_1A524C674();
    v14 = v13;

    v19[0] = v12;
    v19[1] = v14;
    if (swift_dynamicCast())
    {
      (*(v6 + 56))(v5, 0, 1, v1);
      (*(v6 + 32))(v9, v5, v1);
      v15 = MEMORY[0x1A5907080](0.5, 1.0, 0.0);
      MEMORY[0x1EEE9AC00](v15);
      *(&v16 - 2) = v0;
      *(&v16 - 1) = v9;
      sub_1A52483D4();

      swift_unknownObjectRelease();
      return (*(v6 + 8))(v9, v1);
    }

    else
    {
      swift_unknownObjectRelease();
      (*(v6 + 56))(v5, 1, 1, v1);
      return (*(v17 + 8))(v5, v2);
    }
  }

  return result;
}

uint64_t sub_1A4786DD8(void *a1, uint64_t a2)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v4 = sub_1A524DF24();
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  v8 = *(v3 - 8);
  (*(v8 + 16))(&v10 - v6, a2, v3, v5);
  (*(v8 + 56))(v7, 0, 1, v3);
  return sub_1A5242814();
}

uint64_t sub_1A4786EF8(void *a1)
{
  v2 = sub_1A5240564();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5240534();
  v6 = a1;
  sub_1A4786ACC();

  return (*(v3 + 8))(v5, v2);
}

id sub_1A4786FF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadePhotosChallengeFeature.ScrollViewModelController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A4787070@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1A4786418(a1);
  *a2 = result;
  return result;
}

void sub_1A4787098()
{
  if (!qword_1EB12AD90)
  {
    v0 = type metadata accessor for LemonadePhotosChallengeFeature.ScrollViewModelController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12AD90);
    }
  }
}

unint64_t sub_1A4787108()
{
  result = qword_1EB192C30[0];
  if (!qword_1EB192C30[0])
  {
    sub_1A4787098();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB192C30);
  }

  return result;
}

unint64_t sub_1A47872DC()
{
  result = qword_1EB12AE18;
  if (!qword_1EB12AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AE18);
  }

  return result;
}

Swift::String __swiftcall CVReturnDescription(_:)(Swift::Int32 a1)
{
  v1 = a1 + 6699;
  v2 = 0xE500000000000000;
  v3 = 0x7473726946;
  switch(v1)
  {
    case 0:
      v2 = 0xE400000000000000;
      v3 = 1953718604;
      break;
    case 7:
      v2 = 0x80000001A53EA1C0;
      v3 = 0xD000000000000080;
      break;
    case 8:
      v2 = 0x80000001A53EA250;
      v3 = 0xD00000000000005ALL;
      break;
    case 10:
      v2 = 0x80000001A53EA2B0;
      v4 = 160;
      goto LABEL_10;
    case 15:
      v2 = 0x80000001A53EA370;
      v4 = 129;
      goto LABEL_10;
    case 16:
      v2 = 0x80000001A53EA410;
      v3 = 0xD00000000000009ALL;
      break;
    case 17:
      v2 = 0x80000001A53EA4B0;
      v4 = 72;
      goto LABEL_10;
    case 18:
      v2 = 0x80000001A53EA510;
      v3 = 0xD000000000000066;
      break;
    case 19:
      v2 = 0x80000001A53EA580;
      v4 = 73;
      goto LABEL_10;
    case 26:
      v2 = 0x80000001A53EA5E0;
      v3 = 0xD000000000000044;
      break;
    case 27:
      v2 = 0x80000001A53EA630;
      v3 = 0xD000000000000047;
      break;
    case 28:
      v2 = 0x80000001A53EA680;
      v3 = 0xD000000000000055;
      break;
    case 29:
      v2 = 0x80000001A53EA6E0;
      v3 = 0xD000000000000054;
      break;
    case 37:
      v2 = 0x80000001A53EA740;
      v4 = 97;
LABEL_10:
      v3 = v4 | 0xD000000000000016;
      break;
    case 38:
      v2 = 0x80000001A53EA7C0;
      v3 = 0xD000000000000076;
      break;
    case 39:
      break;
    default:
      v3 = 0xD000000000000016;
      v2 = 0x80000001A53EA1A0;
      break;
  }

  result._object = v2;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_1A47875F0()
{
  v1 = v0[19];
  v2 = *MEMORY[0x1E6987608];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1A4787718;
  v3 = swift_continuation_init();
  sub_1A4787D30();
  v0[17] = v4;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A4787E44;
  v0[13] = &block_descriptor_269;
  v0[14] = v3;
  [v1 loadTracksWithMediaType:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A4787718()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_1A4787C60;
  }

  else
  {
    v2 = sub_1A4787828;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4787828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[18];
  v4[21] = v5;
  if (v5 >> 62)
  {
    v6 = sub_1A524E2B4();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4[22] = v6;
  v7 = v4[21];
  if (v6)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1A59097F0](0);
    }

    else
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return MEMORY[0x1EEE68140](v6, v7, a3, a4);
      }

      v8 = *(v7 + 32);
    }

    v4[23] = v8;
    v4[24] = 1;
    sub_1A4787F14();
    v9 = sub_1A5241664();
    v4[25] = v9;
    v10 = swift_task_alloc();
    v4[26] = v10;
    *v10 = v4;
    v10[1] = sub_1A4787998;
    v6 = (v4 + 28);
    v7 = v9;
    a3 = 0;
    a4 = 0;

    return MEMORY[0x1EEE68140](v6, v7, a3, a4);
  }

  v11 = v4[1];

  return v11(0);
}

uint64_t sub_1A4787998()
{
  *(*v1 + 216) = v0;

  if (v0)
  {

    v2 = sub_1A4787CCC;
  }

  else
  {

    v2 = sub_1A4787AE0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4787AE0()
{
  if ((*(v0 + 224) & 1) == 0)
  {
    v2 = *(v0 + 192);
    v3 = *(v0 + 176);

    if (v2 == v3)
    {

      v1 = 0;
      goto LABEL_5;
    }

    v9 = *(v0 + 192);
    v10 = *(v0 + 168);
    if ((v10 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1A59097F0](*(v0 + 192));
    }

    else
    {
      if (v9 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v4 = *(v10 + 8 * v9 + 32);
    }

    *(v0 + 184) = v4;
    *(v0 + 192) = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      sub_1A4787F14();
      v11 = sub_1A5241664();
      *(v0 + 200) = v11;
      v12 = swift_task_alloc();
      *(v0 + 208) = v12;
      *v12 = v0;
      v12[1] = sub_1A4787998;
      v4 = (v0 + 224);
      v10 = v11;
      v5 = 0;
      v6 = 0;

      return MEMORY[0x1EEE68140](v4, v10, v5, v6);
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return MEMORY[0x1EEE68140](v4, v10, v5, v6);
  }

  v1 = *(v0 + 184);

LABEL_5:
  v7 = *(v0 + 8);

  return v7(v1);
}

uint64_t sub_1A4787C60()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4787CCC()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_1A4787D30()
{
  if (!qword_1EB141850)
  {
    sub_1A4787DA0();
    sub_1A3DBD9A0();
    v0 = sub_1A524CDF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141850);
    }
  }
}

void sub_1A4787DA0()
{
  if (!qword_1EB141858)
  {
    sub_1A4787DF8();
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141858);
    }
  }
}

unint64_t sub_1A4787DF8()
{
  result = qword_1EB141860;
  if (!qword_1EB141860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB141860);
  }

  return result;
}

uint64_t sub_1A4787E44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1A3DBD9A0();
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    sub_1A4787DF8();
    **(*(v4 + 64) + 40) = sub_1A524CA34();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

void sub_1A4787F14()
{
  if (!qword_1EB141868)
  {
    sub_1A4787DF8();
    v0 = sub_1A5241654();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141868);
    }
  }
}

id sub_1A4787F74()
{
  result = [objc_allocWithZone(type metadata accessor for FakePhotoKitAssetsFetcher()) init];
  qword_1EB1EBF70 = result;
  return result;
}

uint64_t sub_1A4788000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A52414C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - v20;
  if (a1 > 2)
  {
    if ((a1 - 4) >= 2)
    {
      if (a1 == 3)
      {
        sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50]);
        sub_1A524E214();
        if (a2 >= 2)
        {
          v29 = 1;
          do
          {
            if (__OFADD__(v29, 6))
            {
              v30 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v30 = v29 + 6;
            }

            v34 = v29;
            sub_1A524E154();
            v29 = v30;
          }

          while (v30 < a2);
        }

        v9 = v18;
        return (*(v7 + 32))(a3, v9, v6);
      }
    }

    else
    {
      if (a2)
      {
        sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50]);
        sub_1A524E214();
        if (a2 != 1)
        {
          v24 = 1;
          do
          {
            if (__OFADD__(v24, a2))
            {
              v25 = ((v24 + a2) >> 63) ^ 0x8000000000000000;
            }

            else
            {
              v25 = v24 + a2;
            }

            v34 = v24;
            sub_1A524E154();
            v26 = v25 >= a2;
            if (a2 <= 0)
            {
              v26 = v25 <= a2;
            }

            v24 = v25;
          }

          while (!v26);
        }

        v9 = v21;
        return (*(v7 + 32))(a3, v9, v6);
      }

      __break(1u);
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50]);
        sub_1A524E214();
        if (a2 >= 1)
        {
          v27 = 0;
          do
          {
            v28 = v27 + 1;
            v34 = v27;
            sub_1A524E154();
            v27 = v28;
          }

          while (a2 != v28);
        }

        return (*(v7 + 32))(a3, v9, v6);
      case 1:
        sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50]);
        sub_1A524E214();
        if (a2 >= 2)
        {
          v22 = 1;
          do
          {
            if (__OFADD__(v22, 2))
            {
              v23 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v23 = v22 + 2;
            }

            v34 = v22;
            sub_1A524E154();
            v22 = v23;
          }

          while (v23 < a2);
        }

        v9 = v12;
        return (*(v7 + 32))(a3, v9, v6);
      case 2:
        sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50]);
        sub_1A524E214();
        if (a2 >= 2)
        {
          v31 = 1;
          do
          {
            if (__OFADD__(v31, 3))
            {
              v32 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v32 = v31 + 3;
            }

            v34 = v31;
            sub_1A524E154();
            v31 = v32;
          }

          while (v32 < a2);
        }

        v9 = v15;
        return (*(v7 + 32))(a3, v9, v6);
    }
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A4788530(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = vdupq_n_s64(0x4069000000000000uLL);
  v15 = sub_1A4789B2C;
  v16 = v7;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1A3C2E0D0;
  v14 = &block_descriptor_270;
  v8 = _Block_copy(&v11);

  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v15 = sub_1A4789B34;
  v16 = v9;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_1A3D6084C;
  v14 = &block_descriptor_6_11;
  v10 = _Block_copy(&v11);
  sub_1A3D607F0(a2);

  [a1 performChanges:v8 completionHandler:v10];
  _Block_release(v10);
  _Block_release(v8);
}

uint64_t sub_1A47886B4(double a1, double a2)
{
  v4 = type metadata accessor for FakePhotoKitAssetsFetcher.FakeAsset();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A4789D8C();
  if (v8[2])
  {
    v9 = *(v4 + 24);
    v24 = &v7[*(v4 + 20)];
    v25 = v9;
    v10 = objc_opt_self();
    v11 = *(v5 + 80);
    v20 = v8;
    v21 = *(v5 + 72);
    v22 = v10;
    v23 = v27;
    sub_1A478B64C(v8 + ((v11 + 32) & ~v11), v7, type metadata accessor for FakePhotoKitAssetsFetcher.FakeAsset);
    v12 = *&v7[v25];
    v13 = *v24;
    v14 = *(v24 + 1);
    v15 = objc_allocWithZone(MEMORY[0x1E69DCA78]);
    [v15 initWithSize_];
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;
    *(v16 + 32) = v12;
    *(v16 + 40) = v13;
    *(v16 + 48) = v14;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1A478B248;
    *(v17 + 24) = v16;
    v27[2] = sub_1A3D78DD0;
    v27[3] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v27[0] = sub_1A3D35A90;
    v27[1] = &block_descriptor_29_8;
    _Block_copy(aBlock);
    v18 = v12;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

uint64_t sub_1A4788A28(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A524BEE4();
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A524BF64();
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB12B180);
  v14 = sub_1A524D474();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  aBlock[4] = sub_1A3D5FDCC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_20_4;
  v16 = _Block_copy(aBlock);
  sub_1A3D607F0(a3);
  v17 = a2;

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3C29E4C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C2A4D0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v13, v10, v16);
  _Block_release(v16);

  (*(v20 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v19);
}

id sub_1A4788E38()
{
  sub_1A3C48C2C(0, &qword_1EB141890, &type metadata for FakeIndexedAssetCollection, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A52FF950;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 redColor];
  *(v0 + 40) = 30;
  *(v0 + 48) = [v1 greenColor];
  *(v0 + 56) = 20;
  result = [v1 blueColor];
  *(v0 + 64) = result;
  *(v0 + 72) = 40;
  qword_1EB1D2AA0 = v0;
  return result;
}

void sub_1A4788F10()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1D2AB0);
  __swift_project_value_buffer(v0, qword_1EB1D2AB0);
  sub_1A5246EF4();
}

size_t sub_1A4788F74(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1A3C2A4D0(0, &qword_1EB141880, type metadata accessor for FakePhotoKitAssetsFetcher.FakeAsset, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for FakePhotoKitAssetsFetcher.FakeAsset() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
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
  v15 = *(type metadata accessor for FakePhotoKitAssetsFetcher.FakeAsset() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
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

char *sub_1A4789170(char *a1, int64_t a2, char a3)
{
  result = sub_1A4789190(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A4789190(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C2A4D0(0, &qword_1EB141888, type metadata accessor for PXDisplayAssetCollectionCurationKind, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

id sub_1A47892B8(char *a1, uint64_t a2)
{
  v56 = a2;
  v4 = sub_1A52414C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB1268C8);
  v8 = [swift_getObjCClassFromMetadata() sharedInstance];
  if (qword_1EB1D2A98 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v9 = qword_1EB1D2AA0;
    v55 = a1;
    v10 = [a1 localIdentifier];
    v11 = sub_1A524C674();
    v13 = v12;

    v60 = v11;
    v61 = v13;
    sub_1A3D5F9DC();
    v14 = sub_1A524E004();

    if (v14 < 0)
    {
      v16 = __OFSUB__(0, v14);
      v14 = -v14;
      if (v16)
      {
        __break(1u);
        goto LABEL_44;
      }
    }

    v57 = v8;
    v8 = *(v9 + 16);
    if (!v8)
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v17 = v14 % v8;
    if (v17 < 0)
    {
      goto LABEL_41;
    }

    v53 = v5;
    v54 = v4;
    v18 = v9 + 16 * v17;
    v19 = *(v18 + 32);
    v20 = *(v18 + 40);
    v2 = MEMORY[0x1E69E7CC0];
    v58 = v7;
    v52 = v19;
    if (!v17)
    {
      break;
    }

    v60 = MEMORY[0x1E69E7CC0];
    v21 = v19;
    sub_1A3FD1D1C(0, v17, 0);
    v22 = v60;
    v5 = *(v60 + 16);
    v23 = (v9 + 40);
    do
    {
      v25 = *v23;
      v23 += 2;
      v24 = v25;
      v60 = v22;
      v26 = v22[3];
      v27 = v5 + 1;
      if (v5 >= v26 >> 1)
      {
        sub_1A3FD1D1C((v26 > 1), v5 + 1, 1);
        v22 = v60;
      }

      v22[2] = v27;
      v22[v5++ + 4] = v24;
      --v17;
    }

    while (v17);
    v7 = v58;
    v4 = v56;
LABEL_14:
    a1 = 0;
    v29 = 4;
    while (1)
    {
      v30 = v22[v29];
      v16 = __OFADD__(a1, v30);
      a1 += v30;
      if (v16)
      {
        break;
      }

      ++v29;
      if (!--v27)
      {
        goto LABEL_17;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

  v27 = *(MEMORY[0x1E69E7CC0] + 16);
  v28 = v19;
  v4 = v56;
  if (v27)
  {
    v22 = v2;
    goto LABEL_14;
  }

LABEL_17:

  sub_1A4788000(v4, v20, v7);
  sub_1A5241474();
  v60 = v2;
  sub_1A3FD1D1C(0, v8, 0);
  v31 = v60;
  v5 = *(v60 + 16);
  v32 = (v9 + 40);
  do
  {
    v34 = *v32;
    v32 += 2;
    v33 = v34;
    v60 = v31;
    v35 = *(v31 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      sub_1A3FD1D1C((v35 > 1), v5 + 1, 1);
      v31 = v60;
    }

    *(v31 + 16) = v36;
    *(v31 + 8 * v5++ + 32) = v33;
    --v8;
  }

  while (v8);
  v37 = 0;
  a1 = 0;
  do
  {
    v38 = *(v31 + 8 * v37 + 32);
    v16 = __OFADD__(a1, v38);
    a1 += v38;
    if (v16)
    {
      __break(1u);
      goto LABEL_38;
    }

    ++v37;
  }

  while (v36 != v37);

  result = [v55 photoLibrary];
  if (result)
  {
    v39 = result;
    v40 = [result librarySpecificFetchOptions];

    [v40 setFetchLimit_];
    sub_1A3C48C2C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1A52F9790;
    v42 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v43 = sub_1A524C634();
    v44 = [v42 initWithKey:v43 ascending:1];

    *(v41 + 32) = v44;
    sub_1A3C52C70(0, &qword_1EB126B60);
    v45 = sub_1A524CA14();

    [v40 setSortDescriptors_];

    v46 = [objc_opt_self() fetchAssetsWithOptions_];
    v47 = objc_opt_self();
    [v57 fakeFetchDelay];
    [v47 sleepForTimeInterval_];
    v48 = sub_1A5241414();
    sub_1A3C52C70(0, &qword_1EB126660);
    v2 = [v46 px:v48 subfetchResultWithObjectsAtIndexes:swift_getObjCClassFromMetadata() objectClass:?];

    if (v4 <= 2)
    {
      if (v4 <= 2)
      {
        goto LABEL_35;
      }

LABEL_34:
      v60 = 0x206E776F6E6B6E75;
      v61 = 0xE800000000000000;
      v59 = v4;
      type metadata accessor for PXDisplayAssetCollectionCurationKind(0);
      v49 = sub_1A524C714();
      MEMORY[0x1A5907B60](v49);

      goto LABEL_35;
    }

    if (v4 != 3 && v4 != 4 && v4 != 5)
    {
      goto LABEL_34;
    }

LABEL_35:
    if (qword_1EB1D2AA8 == -1)
    {
LABEL_36:
      v50 = sub_1A5246F24();
      __swift_project_value_buffer(v50, qword_1EB1D2AB0);
      v51 = v2;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

LABEL_42:
    swift_once();
    goto LABEL_36;
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for FakePhotoKitAssetsFetcher.FakeAsset()
{
  result = qword_1EB1D2AC8;
  if (!qword_1EB1D2AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4789BAC()
{
  v0 = PXDisplayAssetCollectionCurationKindPossibleValues();
  sub_1A3C52C70(0, &qword_1EB126610);
  v1 = sub_1A524CA34();

  v2 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v15 = MEMORY[0x1E69E7CC0];
      result = sub_1A4789170(0, v3 & ~(v3 >> 63), 0);
      v5 = v15;
      if (v2)
      {
        result = sub_1A524E2B4();
        v2 = result;
      }

      else
      {
        v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v3 < 0)
      {
        break;
      }

      v6 = 0;
      v14 = v1 & 0xFFFFFFFFFFFFFF8;
      v7 = v2 + 3;
      while ((v2 ^ v6) != 0x8000000000000000)
      {
        v8 = v7 - 4;
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1A59097F0](v8, v1);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_19;
          }

          if (v8 >= *(v14 + 16))
          {
            goto LABEL_20;
          }

          v9 = *(v1 + 8 * v7);
        }

        v10 = v9;
        v11 = [v9 integerValue];

        v13 = *(v15 + 16);
        v12 = *(v15 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1A4789170((v12 > 1), v13 + 1, 1);
        }

        ++v6;
        *(v15 + 16) = v13 + 1;
        *(v15 + 8 * v13 + 32) = v11;
        --v7;
        if (v3 == v6)
        {

          return v5;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v3 = sub_1A524E2B4();
      if (!v3)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void *sub_1A4789D8C()
{
  v167 = sub_1A52413E4();
  v0 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v2 = &v124 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1E6969B78];
  sub_1A478B6B4(0, &qword_1EB141870, &qword_1EB12AF68, MEMORY[0x1E6969B78], MEMORY[0x1E69E6E48]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v152 = &v124 - v5;
  sub_1A478B6B4(0, &qword_1EB141878, &qword_1EB12AF68, v3, MEMORY[0x1E69E6E40]);
  v151 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v124 - v7;
  v132 = type metadata accessor for FakePhotoKitAssetsFetcher.FakeAsset();
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v137 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_1A5241144();
  v10 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v138 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A52414C4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v150 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v124 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v141 = &v124 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v148 = &v124 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v147 = &v124 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v146 = &v124 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v159 = &v124 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v165 = &v124 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v142 = &v124 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v145 = &v124 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v144 = &v124 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v143 = &v124 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v153 = &v124 - v39;
  if (qword_1EB1D2A98 != -1)
  {
    goto LABEL_128;
  }

  while (1)
  {
    v40 = qword_1EB1D2AA0;
    v41 = *(qword_1EB1D2AA0 + 16);
    if (!v41)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v140 = 0;
    v42 = 0;
    v43 = qword_1EB1D2AA0 + 32;
    v161 = (v13 + 32);
    v160 = (v13 + 8);
    v149 = (v13 + 16);
    v166 = (v0 + 8);
    v129 = (v10 + 16);
    v128 = (v10 + 8);
    v139 = MEMORY[0x1E69E7CC0];
    v158 = v17;
    v10 = v142;
    v126 = qword_1EB1D2AA0;
    v125 = v41;
    v124 = qword_1EB1D2AA0 + 32;
LABEL_7:
    if (v42 >= *(v40 + 16))
    {
      goto LABEL_126;
    }

    v45 = v43 + 16 * v42;
    v13 = *(v45 + 8);
    if ((v13 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_127:
    __break(1u);
LABEL_128:
    swift_once();
  }

  if (!v13)
  {
    goto LABEL_6;
  }

  v127 = v42;
  v46 = *v45;
  v130 = v140 ^ 0x7FFFFFFFFFFFFFFFLL;
  v133 = v46;
  v47 = 0;
LABEL_11:
  v168 = v47;
  v135 = v47 + 1;
  v48 = sub_1A4789BAC();
  v49 = 0;
  v163 = *(v48 + 16);
  v164 = v48;
  v162 = v48 + 32;
  while (1)
  {
    if (v49 == v163)
    {

      v67 = 0.5;
LABEL_60:
      v134 = [v133 colorWithAlphaComponent_];
      v68 = sub_1A4789BAC();
      v10 = *(v68 + 16);
      if (v10)
      {
        var80[0] = MEMORY[0x1E69E7CC0];
        v0 = var80;
        v69 = v68;
        sub_1A3C57108(0, v10, 0);
        v70 = v69;
        v71 = 0;
        v72 = var80[0];
        v157 = v70 + 32;
        v156 = v70;
        v155 = v10;
        while (1)
        {
          if (v71 >= *(v70 + 16))
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            goto LABEL_127;
          }

          v73 = *(v157 + 8 * v71);
          v163 = v71;
          v164 = v72;
          v162 = v73;
          if (v73 > 2)
          {
            if ((v73 - 4) >= 2)
            {
              if (v73 != 3)
              {
                goto LABEL_129;
              }

              sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50]);
              v84 = v146;
              sub_1A524E214();
              v75 = v84;
              if (v13 != 1)
              {
                v85 = 1;
                v77 = v146;
                do
                {
                  if (__OFADD__(v85, 6))
                  {
                    v86 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v86 = v85 + 6;
                  }

                  v169 = v85;
                  sub_1A524E154();
                  v85 = v86;
                }

                while (v86 < v13);
                goto LABEL_100;
              }
            }

            else
            {
              sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50]);
              sub_1A524E214();
              v75 = v17;
              if (v13 != 1)
              {
                v79 = 1;
                do
                {
                  v80 = __OFADD__(v79, v13);
                  v169 = v79;
                  sub_1A524E154();
                  if (v79 + v13 >= v13)
                  {
                    break;
                  }

                  v79 += v13;
                }

                while (!v80);
                v75 = v17;
              }
            }
          }

          else if (v73)
          {
            if (v73 == 1)
            {
              sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50]);
              v74 = v148;
              sub_1A524E214();
              v75 = v74;
              if (v13 == 1)
              {
                goto LABEL_101;
              }

              v76 = 1;
              v77 = v148;
              do
              {
                if (__OFADD__(v76, 2))
                {
                  v78 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v78 = v76 + 2;
                }

                v169 = v76;
                sub_1A524E154();
                v76 = v78;
              }

              while (v78 < v13);
              goto LABEL_100;
            }

            if (v73 != 2)
            {
              goto LABEL_129;
            }

            sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50]);
            v87 = v147;
            sub_1A524E214();
            v75 = v87;
            if (v13 != 1)
            {
              v88 = 1;
              v77 = v147;
              do
              {
                if (__OFADD__(v88, 3))
                {
                  v89 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v89 = v88 + 3;
                }

                v169 = v88;
                sub_1A524E154();
                v88 = v89;
              }

              while (v89 < v13);
LABEL_100:
              v75 = v77;
            }
          }

          else
          {
            sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50]);
            v81 = v141;
            sub_1A524E214();
            v82 = 0;
            do
            {
              v83 = v82 + 1;
              v169 = v82;
              sub_1A524E154();
              v82 = v83;
            }

            while (v13 != v83);
            v75 = v81;
          }

LABEL_101:
          v90 = *v161;
          v91 = v159;
          (*v161)(v159, v75, v12);
          if (sub_1A52414A4())
          {
            v92 = v152;
            (*v149)(v152, v91, v12);
            v90(v150, v92, v12);
            v93 = MEMORY[0x1E6969B50];
            sub_1A3C29E4C(&qword_1EB12AF68, MEMORY[0x1E6969B50]);
            sub_1A524C914();
            v154 = *(v151 + 36);
            sub_1A478B6B4(0, &qword_1EB1264B0, &qword_1EB12AF60, MEMORY[0x1E6969B88], MEMORY[0x1E69E6CF0]);
            v17 = *(v94 + 36);
            sub_1A3C29E4C(&qword_1EB12AF60, v93);
            v95 = 0;
            while (1)
            {
              sub_1A524D034();
              sub_1A3C29E4C(&qword_1EB12AF80, MEMORY[0x1E6969B18]);
              v96 = v167;
              v97 = sub_1A524C594();
              (*v166)(v2, v96);
              if (v97)
              {
                *&v8[v154] = v95;
                sub_1A478B7B0(v8);
                (*v160)(v159, v12);
                goto LABEL_109;
              }

              v0 = v8;
              v98 = sub_1A524D0C4();
              v100 = *v99;
              v98(&v170, 0);
              sub_1A524D044();
              v10 = v95 + 1;
              if (__OFADD__(v95, 1))
              {
                break;
              }

              ++v95;
              if (v168 == v100)
              {
                *&v8[v154] = v10;
                sub_1A478B7B0(v8);
                v101 = v159;
                v102 = sub_1A5241454();
                (*v160)(v101, v12);
                v170 = sub_1A524EA44();
                v171 = v103;
                MEMORY[0x1A5907B60](543584032, 0xE400000000000000);
                v169 = v102;
                v104 = sub_1A524EA44();
                MEMORY[0x1A5907B60](v104);

                v105 = v170;
                v106 = v171;
                goto LABEL_110;
              }
            }

            __break(1u);
            goto LABEL_123;
          }

          (*v160)(v91, v12);
LABEL_109:
          v106 = 0xE100000000000000;
          v105 = 45;
LABEL_110:
          v107 = PXDisplayAssetCollectionCurationKindDescription(v162);
          v108 = sub_1A524C674();
          v110 = v109;

          v170 = v108;
          v171 = v110;
          v0 = &v170;
          MEMORY[0x1A5907B60](32, 0xE100000000000000);
          MEMORY[0x1A5907B60](v105, v106);

          v111 = v170;
          v112 = v171;
          v72 = v164;
          var80[0] = v164;
          v114 = *(v164 + 16);
          v113 = *(v164 + 24);
          v10 = v114 + 1;
          if (v114 >= v113 >> 1)
          {
            v0 = var80;
            sub_1A3C57108((v113 > 1), v114 + 1, 1);
            v72 = var80[0];
          }

          v71 = v163 + 1;
          *(v72 + 16) = v10;
          v115 = v72 + 16 * v114;
          *(v115 + 32) = v111;
          *(v115 + 40) = v112;
          v17 = v158;
          v70 = v156;
          if (v71 == v155)
          {

            goto LABEL_115;
          }
        }
      }

      v72 = MEMORY[0x1E69E7CC0];
LABEL_115:
      v170 = v72;
      sub_1A3C48C2C(0, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1A3CAD85C();
      v0 = sub_1A524C514();
      v10 = v116;

      v117 = v138;
      sub_1A52410C4();
      if (v168 == v130)
      {
        goto LABEL_125;
      }

      v118 = v137;
      (*v129)(v137, v117, v136);
      v119 = v132;
      v120 = (v118 + *(v132 + 20));
      *v120 = v0;
      v120[1] = v10;
      *(v118 + *(v119 + 24)) = v134;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v139 = sub_1A4788F74(0, v139[2] + 1, 1, v139);
      }

      v122 = v139[2];
      v121 = v139[3];
      v0 = v122 + 1;
      if (v122 >= v121 >> 1)
      {
        v139 = sub_1A4788F74(v121 > 1, v122 + 1, 1, v139);
      }

      ++v140;
      (*v128)();
      v123 = v139;
      v139[2] = v0;
      sub_1A478B74C(v137, v123 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v122);
      v47 = v135;
      v10 = v142;
      if (v135 == v13)
      {

        v40 = v126;
        v41 = v125;
        v42 = v127;
        v43 = v124;
LABEL_6:
        if (++v42 == v41)
        {
          return v139;
        }

        goto LABEL_7;
      }

      goto LABEL_11;
    }

    if (v49 >= *(v164 + 16))
    {
      goto LABEL_124;
    }

    v157 = *(v162 + 8 * v49);
    if (v157 > 2)
    {
      if ((v157 - 4) < 2)
      {
        sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50]);
        v56 = v165;
        sub_1A524E214();
        v50 = v56;
        if (v13 != 1)
        {
          v57 = 1;
          do
          {
            v58 = __OFADD__(v57, v13);
            var80[0] = v57;
            sub_1A524E154();
            if (v57 + v13 >= v13)
            {
              break;
            }

            v57 += v13;
          }

          while (!v58);
          v50 = v165;
          v17 = v158;
          v10 = v142;
        }

        goto LABEL_13;
      }

      if (v157 != 3)
      {
        goto LABEL_129;
      }

      sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50]);
      v61 = v143;
      sub_1A524E214();
      v50 = v61;
      if (v13 == 1)
      {
        goto LABEL_13;
      }

      v62 = 1;
      v54 = v143;
      do
      {
        if (__OFADD__(v62, 6))
        {
          v63 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v63 = v62 + 6;
        }

        var80[0] = v62;
        sub_1A524E154();
        v62 = v63;
      }

      while (v63 < v13);
      goto LABEL_12;
    }

    if (!v157)
    {
      sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50]);
      sub_1A524E214();
      v59 = 0;
      do
      {
        v60 = v59 + 1;
        var80[0] = v59;
        sub_1A524E154();
        v59 = v60;
      }

      while (v13 != v60);
      v50 = v10;
      goto LABEL_13;
    }

    if (v157 != 1)
    {
      break;
    }

    sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50]);
    v52 = v145;
    sub_1A524E214();
    v50 = v52;
    if (v13 == 1)
    {
      goto LABEL_13;
    }

    v53 = 1;
    v54 = v145;
    do
    {
      if (__OFADD__(v53, 2))
      {
        v55 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v55 = v53 + 2;
      }

      var80[0] = v53;
      sub_1A524E154();
      v53 = v55;
    }

    while (v55 < v13);
LABEL_12:
    v50 = v54;
    v17 = v158;
LABEL_13:
    ++v49;
    v51 = v153;
    (*v161)(v153, v50, v12);
    v0 = sub_1A52414A4();
    (*v160)(v51, v12);
    if (v0)
    {

      if (v157)
      {
        v67 = 0.75;
      }

      else
      {
        v67 = 0.5;
      }

      if (v157 == 4)
      {
        v67 = 1.0;
      }

      goto LABEL_60;
    }
  }

  if (v157 == 2)
  {
    sub_1A3C29E4C(&qword_1EB12AF50, MEMORY[0x1E6969B50]);
    v64 = v144;
    sub_1A524E214();
    v50 = v64;
    if (v13 == 1)
    {
      goto LABEL_13;
    }

    v65 = 1;
    v54 = v144;
    do
    {
      if (__OFADD__(v65, 3))
      {
        v66 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v66 = v65 + 3;
      }

      var80[0] = v65;
      sub_1A524E154();
      v65 = v66;
    }

    while (v66 < v13);
    goto LABEL_12;
  }

LABEL_129:
  LODWORD(vars8) = 0;
  var80[16] = 212;
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A478B248(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(v1 + 4);
  v6 = objc_opt_self();
  v7 = [v6 blackColor];
  [v7 setFill];

  [a1 fillRect_];
  [v5 setFill];
  [a1 fillRect_];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v8 setAlignment_];
  [v8 setLineBreakMode_];
  sub_1A3C2A4D0(0, &qword_1EB120260, sub_1A3C8BC40, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FF950;
  v10 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 systemFontOfSize_];
  v14 = sub_1A3C52C70(0, &qword_1EB120610);
  *(inited + 40) = v13;
  v15 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v14;
  *(inited + 72) = v15;
  v16 = v15;
  v17 = [v6 whiteColor];
  v18 = sub_1A3C52C70(0, &qword_1EB1205C0);
  *(inited + 80) = v17;
  v19 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v18;
  *(inited + 112) = v19;
  *(inited + 144) = sub_1A3C52C70(0, &qword_1EB12FEF0);
  *(inited + 120) = v8;
  v20 = v19;
  v21 = v8;
  sub_1A3C8BCC0(inited);
  swift_setDeallocating();
  sub_1A3C8BC40();
  swift_arrayDestroy();
  v22 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v23 = sub_1A524C634();
  type metadata accessor for Key(0);
  sub_1A3C29E4C(&unk_1EB1208B0, type metadata accessor for Key);
  v24 = sub_1A524C3D4();

  v25 = [v22 initWithString:v23 attributes:v24];

  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = v3;
  v26.size.height = v4;
  [v25 boundingRectWithSize:33 options:0 context:{CGRectGetWidth(v26), INFINITY}];
  PXRectWithSizeAlignedToRectEdges();
}

uint64_t sub_1A478B5F0(uint64_t a1)
{
  v2 = type metadata accessor for FakePhotoKitAssetsFetcher.FakeAsset();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A478B64C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A478B6B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = sub_1A52414C4();
    v10 = sub_1A3C29E4C(a3, MEMORY[0x1E6969B50]);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1A478B74C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FakePhotoKitAssetsFetcher.FakeAsset();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A478B7B0(uint64_t a1)
{
  sub_1A478B6B4(0, &qword_1EB141878, &qword_1EB12AF68, MEMORY[0x1E6969B78], MEMORY[0x1E69E6E40]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A478B87C()
{
  result = sub_1A5241144();
  if (v1 <= 0x3F)
  {
    result = sub_1A3C52C70(319, &qword_1EB1205C0);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id PhotosDetailsDateTimeEditViewFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosDetailsDateTimeEditViewFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsDateTimeEditViewFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PhotosDetailsDateTimeEditViewFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsDateTimeEditViewFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s12PhotosUICore0A30DetailsDateTimeEditViewFactoryC04dateeG10Controller6assets10completionSo06UIViewJ0CSo13PHFetchResultCySo7PHAssetCG_ySbctFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v37 = a3;
  v4 = type metadata accessor for PhotosDetailsTimeEditView();
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1A5241534();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v32 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5241144();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v31 = &v30 - v18;
  v19 = [a1 count];
  v34 = a1;
  if (v19 < 2)
  {
    v20 = [a1 objectAtIndexedSubscript_];
  }

  else
  {
    v20 = a1;
  }

  v21 = v20;
  v22 = sub_1A4954E30(v20, v19 > 1);
  [v22 fetchPropertySetsIfNeeded];
  v33 = v22;
  v23 = [v22 px_creationDate];
  if (v23)
  {
    v24 = v23;
    sub_1A52410F4();

    v25 = *(v13 + 32);
    v25(v11, v15, v12);
    (*(v13 + 56))(v11, 0, 1, v12);
    v26 = v31;
    v25(v31, v11, v12);
  }

  else
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    v26 = v31;
    sub_1A5241134();
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      sub_1A3C42E70(v11, sub_1A3C41108);
    }
  }

  type metadata accessor for PhotosDetailsTimeEditViewModel();
  v27 = [v33 px_timeZone];
  v28 = v32;
  sub_1A5241524();

  v29 = v21;
  sub_1A4916BD4(v21, v19 > 1, v26, v28);
}

void sub_1A478BFAC(uint64_t a1, double a2)
{
  v5 = *(v2 + 16);
  v6 = objc_allocWithZone(PXChangeAssetDateAction);
  v7 = sub_1A5241514();
  v8 = [v6 initWithAssets:v5 dateOffset:v7 timeZone:a2];

  if (v8)
  {
    v10[4] = PXDisplayCollectionDetailedCountsMake;
    v10[5] = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1A3D6084C;
    v10[3] = &block_descriptor_13_9;
    v9 = _Block_copy(v10);
    [v8 executeWithUndoManager:a1 completionHandler:v9];
    _Block_release(v9);
  }
}

uint64_t sub_1A478C0C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosDetailsTimeEditView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A478C128()
{
  if (!qword_1EB141898)
  {
    type metadata accessor for PhotosDetailsTimeEditView();
    sub_1A46475D4();
    v0 = sub_1A5249654();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141898);
    }
  }
}

void sub_1A478C18C(char a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = [v3 presentingViewController];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = v5;
    *(v8 + 32) = a1 & 1;
    v10[4] = sub_1A478C2A0;
    v10[5] = v8;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1A3C2E0D0;
    v10[3] = &block_descriptor_271;
    v9 = _Block_copy(v10);

    [v7 dismissViewControllerAnimated:1 completion:v9];
    _Block_release(v9);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A478C2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A478C4E0(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47A23D4(v2 + *(a1 + 40), v11, sub_1A478C4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5248714();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

void sub_1A478C514(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A478C578@<X0>(uint64_t (*a1)(void, __n128)@<X0>, void (*a2)(uint64_t, char *, __n128)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1(0, v12);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - v17;
  a2(v8, &v22 - v17, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    sub_1A524D254();
    v21 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_1A478C774(uint64_t a1, unsigned int *a2)
{
  v3 = sub_1A5242D14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  sub_1A478C578(sub_1A3E71AC8, sub_1A3D61D44, MEMORY[0x1E69C2218], &v13 - v8);
  (*(v4 + 104))(v6, *a2, v3);
  v10 = sub_1A5242D04();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v11(v9, v3);
  return v10 & 1;
}

void sub_1A478C8F8(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v36 - v7;
  *a2 = swift_getKeyPath();
  sub_1A4137EE8(0);
  swift_storeEnumTagMultiPayload();
  v8 = *((v5 & v4) + 0x58);
  v9 = type metadata accessor for LemonadeCollectionCustomizationView();
  v10 = a2 + v9[9];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = v9[10];
  *(a2 + v11) = swift_getKeyPath();
  sub_1A478C4E0(0);
  swift_storeEnumTagMultiPayload();
  v12 = v9[11];
  *(a2 + v12) = swift_getKeyPath();
  sub_1A3E71AC8(0);
  swift_storeEnumTagMultiPayload();
  v13 = (a2 + v9[14]);
  v37 = 0;
  sub_1A524B694();
  v14 = v40;
  *v13 = v39;
  v13[1] = v14;
  v15 = (a2 + v9[15]);
  v37 = 0;
  sub_1A524B694();
  v16 = v40;
  *v15 = v39;
  v15[1] = v16;
  v17 = (a2 + v9[16]);
  v18 = sub_1A478CCB4();
  v20 = v19;
  v22 = v21;
  v23 = v18;
  *v17 = v19;
  v17[1] = v21;
  v17[2] = v18;
  v24 = a2 + v9[17];

  *v24 = sub_1A5247C34() & 1;
  *(v24 + 1) = v25;
  v24[16] = v26 & 1;
  *(a2 + v9[12]) = a1;
  sub_1A524CC54();
  v27 = a1;
  v28 = sub_1A524CC44();
  v29 = swift_allocObject();
  v30 = MEMORY[0x1E69E85E0];
  v29[2] = v28;
  v29[3] = v30;
  v29[4] = v27;
  v31 = v27;
  v32 = sub_1A524CC44();
  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = v30;
  v33[4] = v31;
  sub_1A524B944();
  v39 = v20;
  v40 = v22;
  v41 = v23;
  sub_1A478C514(0, &unk_1EB121B78, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
  sub_1A524B6A4();

  v34 = v37;
  v35 = v38;
  sub_1A524B974();
  MEMORY[0x1A5906C60]();
  (*(v8 + 400))(v34, v35, 0, v6, v8);
  sub_1A524B904();
}

uint64_t sub_1A478CCB4()
{
  type metadata accessor for CGSize(0);
  sub_1A524B694();
  return v1;
}

uint64_t sub_1A478CD18(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_1A4407CE4(v3);
}

void sub_1A478CDF0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v173 = a2;
  v182 = type metadata accessor for LemonadeAnalyticsViewTimeTracker();
  MEMORY[0x1EEE9AC00](v182);
  v172 = (&v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v186 = a1;
  v178 = type metadata accessor for LemonadeCollectionCustomizationPhotosPickerModifier();
  v171 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v170 = &v124 - v6;
  v7 = sub_1A5249E44();
  v168 = *(v7 - 8);
  v169 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v167 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = *(a1 - 8);
  v193 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v165 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v164 = &v124 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v192 = &v124 - v14;
  v191 = sub_1A524B974();
  v189 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v188 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v187 = &v124 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v175 = &v124 - v19;
  v190 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v185 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A478E5A8();
  sub_1A3C48C7C(255, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
  *&v242 = v22;
  sub_1A478FBCC();
  *(&v242 + 1) = v23;
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  *&v243 = sub_1A524DF24();
  sub_1A4790094(255);
  *(&v243 + 1) = v24;
  swift_getTupleTypeMetadata();
  sub_1A524BE24();
  sub_1A524DF24();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A5247D04();
  sub_1A479D500(255, &qword_1EB127B40, sub_1A3E75420, MEMORY[0x1E69E7DE0], MEMORY[0x1E69802D8]);
  sub_1A5248804();
  sub_1A479012C();
  sub_1A5248804();
  WitnessTable = swift_getWitnessTable();
  v26 = sub_1A3E754D0();
  v236 = WitnessTable;
  v237 = v26;
  v27 = MEMORY[0x1E697E858];
  v28 = swift_getWitnessTable();
  v29 = sub_1A478EE38(&qword_1EB141B48, sub_1A479012C);
  v234 = v28;
  v235 = v29;
  v183 = v27;
  swift_getWitnessTable();
  v142 = type metadata accessor for LemonadeCollectionCustomizationNavigationView();
  v30 = sub_1A5248804();
  v143 = swift_getWitnessTable();
  v232 = v143;
  v233 = MEMORY[0x1E69805D0];
  v31 = swift_getWitnessTable();
  *&v242 = v30;
  v148 = v30;
  *(&v242 + 1) = v31;
  v32 = v31;
  v150 = v31;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v157 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v149 = &v124 - v34;
  *&v242 = v30;
  *(&v242 + 1) = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v242 = OpaqueTypeMetadata2;
  v146 = OpaqueTypeMetadata2;
  v147 = OpaqueTypeConformance2;
  *(&v242 + 1) = OpaqueTypeConformance2;
  v177 = swift_getOpaqueTypeMetadata2();
  v163 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v180 = &v124 - v36;
  v195 = v5;
  v184 = v4;
  swift_getAssociatedTypeWitness();
  sub_1A439AF64();
  sub_1A5248804();
  v37 = sub_1A524DF24();
  *&v242 = OpaqueTypeMetadata2;
  *(&v242 + 1) = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeConformance2();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40 = sub_1A478EE38(&qword_1EB141B60, sub_1A439AF64);
  v230 = AssociatedConformanceWitness;
  v231 = v40;
  v229 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v42 = v177;
  *&v242 = v177;
  *(&v242 + 1) = v37;
  v43 = v37;
  v139 = v37;
  v140 = v41;
  *&v243 = v38;
  v141 = v38;
  *(&v243 + 1) = v41;
  v44 = v41;
  v152 = swift_getOpaqueTypeMetadata2();
  v155 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v145 = &v124 - v45;
  v46 = sub_1A5248804();
  v162 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v179 = &v124 - v47;
  v153 = v46;
  v48 = sub_1A5248804();
  v166 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v181 = &v124 - v49;
  *&v242 = v42;
  *(&v242 + 1) = v43;
  *&v243 = v38;
  *(&v243 + 1) = v44;
  v50 = swift_getOpaqueTypeConformance2();
  v144 = v50;
  v51 = swift_getWitnessTable();
  v227 = v50;
  v228 = v51;
  v52 = swift_getWitnessTable();
  v151 = v52;
  v53 = sub_1A478EE38(&qword_1EB1296B0, type metadata accessor for LemonadeAnalyticsViewTimeTracker);
  v225 = v52;
  v226 = v53;
  v160 = v48;
  v159 = swift_getWitnessTable();
  *&v242 = v48;
  *(&v242 + 1) = MEMORY[0x1E69E6370];
  *&v243 = v159;
  *(&v243 + 1) = MEMORY[0x1E69E6388];
  v161 = swift_getOpaqueTypeMetadata2();
  v158 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v154 = &v124 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v55);
  v156 = &v124 - v57;
  v58 = v185;
  v59 = v191;
  MEMORY[0x1A5906C60](v191, v56);
  v60 = v184;
  v61 = v195;
  v62 = (*(v195 + 96))(v184);
  v137 = v63;
  v138 = v62;
  v64 = *(v190 + 8);
  v190 += 8;
  v176 = v64;
  v64(v58, v60);
  v65 = v175;
  sub_1A524B924();
  v201 = v60;
  v202 = v61;
  swift_getKeyPath();
  sub_1A524B914();

  v189 = *(v189 + 8);
  (v189)(v65, v59);
  v135 = *(&v242 + 1);
  v136 = v242;
  v133 = *(&v243 + 1);
  v134 = v243;
  v66 = v196;
  v67 = v187;
  sub_1A524B924();
  v199 = v60;
  v68 = v195;
  v200 = v195;
  swift_getKeyPath();
  sub_1A524B914();

  (v189)(v67, v59);
  v131 = *(&v214 + 1);
  v132 = v214;
  v130 = v215;
  v69 = v66;
  v70 = v188;
  sub_1A524B924();
  v197 = v60;
  v198 = v68;
  v71 = v68;
  swift_getKeyPath();
  sub_1A524B914();

  (v189)(v70, v59);
  v128 = *(&v203 + 1);
  v129 = v203;
  v127 = v204;
  v72 = v186;
  sub_1A4407780(v241);
  v240[0] = v241[0];
  LOBYTE(v238) = 0;
  v73 = v60;
  v74 = v71;
  v126 = static LemonadeCollectionCustomizationViewModel.CustomizationType.== infix(_:_:)(v240, &v238);
  v75 = v194;
  v189 = *(v194 + 16);
  v187 = (v194 + 16);
  v76 = v192;
  (v189)(v192, v69, v72);
  v188 = *(v75 + 80);
  v77 = (v188 + 32) & ~v188;
  v183 = v77;
  v78 = swift_allocObject();
  v125 = v78;
  *(v78 + 16) = v73;
  *(v78 + 24) = v74;
  v79 = *(v75 + 32);
  v194 = v75 + 32;
  v79(v78 + v77, v76, v72);
  v80 = v79;
  v81 = v164;
  v82 = v196;
  v83 = v189;
  (v189)(v164, v196, v72);
  v84 = swift_allocObject();
  v124 = v84;
  *(v84 + 16) = v73;
  v85 = v195;
  *(v84 + 24) = v195;
  v80(v84 + v77, v81, v72);
  v86 = v165;
  v87 = v82;
  v88 = v72;
  v83(v165, v87, v72);
  v89 = v183;
  v90 = swift_allocObject();
  *(v90 + 16) = v184;
  *(v90 + 24) = v85;
  v80(v90 + v89, v86, v72);
  v174 = v80;
  *&v242 = v138;
  *(&v242 + 1) = v137;
  *&v243 = v136;
  *(&v243 + 1) = v135;
  *&v244 = v134;
  *(&v244 + 1) = v133;
  *&v245 = v132;
  *(&v245 + 1) = v131;
  LOBYTE(v246) = v130;
  *(&v246 + 1) = *v240;
  DWORD1(v246) = *&v240[3];
  *(&v246 + 1) = v129;
  *&v247 = v128;
  BYTE8(v247) = v127;
  BYTE9(v247) = v126;
  *(&v247 + 10) = v238;
  HIWORD(v247) = v239;
  *&v248 = sub_1A4790994;
  *(&v248 + 1) = v125;
  *&v249 = sub_1A4796D90;
  *(&v249 + 1) = v124;
  *&v250 = sub_1A4796EE0;
  *(&v250 + 1) = v90;
  v91 = v192;
  (v189)(v192, v196, v72);
  v92 = v89;
  v93 = swift_allocObject();
  v94 = v184;
  v95 = v195;
  *(v93 + 16) = v184;
  *(v93 + 24) = v95;
  v96 = v93 + v92;
  v97 = v88;
  v80(v96, v91, v88);
  v98 = swift_checkMetadataState();
  sub_1A524B134();

  v241[6] = v248;
  v241[7] = v249;
  v241[8] = v250;
  v241[2] = v244;
  v241[3] = v245;
  v241[5] = v247;
  v241[4] = v246;
  v241[1] = v243;
  v241[0] = v242;
  (*(*(v98 - 8) + 8))(v241, v98);
  v211 = v222;
  v212 = v223;
  v213 = v224;
  v207 = v218;
  v208 = v219;
  v209 = v220;
  v210 = v221;
  v203 = v214;
  v204 = v215;
  v205 = v216;
  v206 = v217;
  v99 = v167;
  sub_1A52497D4();
  v100 = swift_checkMetadataState();
  v101 = v149;
  sub_1A524AEC4();
  (*(v168 + 8))(v99, v169);
  v250 = v211;
  v251 = v212;
  v252 = v213;
  v246 = v207;
  v247 = v208;
  v249 = v210;
  v248 = v209;
  v242 = v203;
  v243 = v204;
  v245 = v206;
  v244 = v205;
  (*(*(v100 - 8) + 8))(&v242, v100);
  v102 = v146;
  sub_1A524AEF4();
  (*(v157 + 8))(v101, v102);
  v103 = v196;
  v104 = v185;
  MEMORY[0x1A5906C60](v191);
  v105 = v95;
  (*(v95 + 344))(v94, v95);
  v176(v104, v94);
  v106 = v192;
  (v189)(v192, v103, v97);
  v107 = v183;
  v108 = swift_allocObject();
  *(v108 + 16) = v94;
  *(v108 + 24) = v105;
  v174(v108 + v107, v106, v97);
  swift_checkMetadataState();
  v109 = v145;
  v110 = v177;
  v111 = v180;
  sub_1A524AFF4();

  (*(v163 + 8))(v111, v110);
  v112 = v175;
  v113 = v191;
  sub_1A524B924();
  v114 = sub_1A3EFB548(v94, v195);
  v116 = v170;
  sub_1A3EFB57C(v114, v117, v115 & 0x1FF, v112, v170);
  v118 = v178;
  v119 = v152;
  MEMORY[0x1A5906490](v116, v152, v178, v144);
  (*(v171 + 8))(v116, v118);
  (*(v155 + 8))(v109, v119);
  *&v214 = 0;
  *(&v214 + 1) = 0xE000000000000000;
  sub_1A524E404();

  *&v214 = 0xD000000000000018;
  *(&v214 + 1) = 0x80000001A53EA970;
  v120 = v185;
  MEMORY[0x1A5906C60](v113);
  v121 = (*(v195 + 88))(v94, v195);
  v123 = v122;
  v176(v120, v94);
  MEMORY[0x1A5907B60](v121, v123);

  sub_1A47E2D44(v214, *(&v214 + 1), v172);
}

void sub_1A478E5A8()
{
  if (!qword_1EB1418A0)
  {
    sub_1A478E650(255);
    sub_1A478FB28(&qword_1EB141AA8, sub_1A478E650, sub_1A478FB98);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1418A0);
    }
  }
}

void sub_1A478E6FC()
{
  if (!qword_1EB1418C8)
  {
    sub_1A478E790();
    sub_1A478EE38(&qword_1EB141A80, sub_1A478E790);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1418C8);
    }
  }
}

void sub_1A478E790()
{
  if (!qword_1EB1418D0)
  {
    sub_1A478E824(255);
    sub_1A478EE38(&qword_1EB141A78, sub_1A478E824);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1418D0);
    }
  }
}

void sub_1A478E860(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1A478E98C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A478EA58()
{
  if (!qword_1EB141908)
  {
    sub_1A478E98C(255, &qword_1EB141910, sub_1A478EB00, sub_1A478EE80, MEMORY[0x1E697F960]);
    sub_1A478EF38();
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141908);
    }
  }
}

void sub_1A478EB3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A478EBA8()
{
  if (!qword_1EB141920)
  {
    sub_1A478EC48(255);
    sub_1A479D500(255, &qword_1EB127B40, sub_1A3E75420, MEMORY[0x1E69E7DE0], MEMORY[0x1E69802D8]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141920);
    }
  }
}

unint64_t sub_1A478ECD8()
{
  result = qword_1EB141940;
  if (!qword_1EB141940)
  {
    sub_1A478EC90(255);
    sub_1A478ED88();
    sub_1A478EE38(&qword_1EB127830, sub_1A3EC18C4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141940);
  }

  return result;
}

unint64_t sub_1A478ED88()
{
  result = qword_1EB1281E0;
  if (!qword_1EB1281E0)
  {
    sub_1A3E33E34();
    sub_1A3E44BC8();
    sub_1A478EE38(&qword_1EB127800, sub_1A3D6D248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1281E0);
  }

  return result;
}

uint64_t sub_1A478EE38(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A478EEB4()
{
  if (!qword_1EB141958)
  {
    sub_1A479A5DC(255, &qword_1EB141960, sub_1A3E42C88);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141958);
    }
  }
}

unint64_t sub_1A478EF38()
{
  result = qword_1EB141968;
  if (!qword_1EB141968)
  {
    sub_1A478E98C(255, &qword_1EB141910, sub_1A478EB00, sub_1A478EE80, MEMORY[0x1E697F960]);
    sub_1A478F164(&qword_1EB141970, sub_1A478EB00, sub_1A478F078);
    sub_1A478FB28(&qword_1EB141990, sub_1A478EE80, sub_1A478F128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141968);
  }

  return result;
}

unint64_t sub_1A478F078()
{
  result = qword_1EB141978;
  if (!qword_1EB141978)
  {
    sub_1A478EBA8();
    sub_1A478EE38(&unk_1EB141980, sub_1A478EC48);
    sub_1A3E754D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141978);
  }

  return result;
}

uint64_t sub_1A478F164(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A478F1E4()
{
  result = qword_1EB1419A0;
  if (!qword_1EB1419A0)
  {
    sub_1A479A5DC(255, &qword_1EB141960, sub_1A3E42C88);
    sub_1A478EE38(&qword_1EB128A00, sub_1A3E42C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1419A0);
  }

  return result;
}

void sub_1A478F2EC()
{
  if (!qword_1EB1419B8)
  {
    sub_1A478F380(255);
    sub_1A478EE38(&qword_1EB141A70, sub_1A478F380);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1419B8);
    }
  }
}

void sub_1A478F3D4()
{
  if (!qword_1EB1419D0)
  {
    sub_1A478F468(255);
    sub_1A478EE38(&qword_1EB141A68, sub_1A478F468);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1419D0);
    }
  }
}

void sub_1A478F4F8()
{
  if (!qword_1EB1419F0)
  {
    sub_1A478E98C(255, &qword_1EB1419F8, sub_1A478F5A0, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1A478F7B8();
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1419F0);
    }
  }
}

void sub_1A478F618(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A47A166C(255, a3, MEMORY[0x1E6981748], a4, MEMORY[0x1E697E830]);
    a5(255);
    v7 = sub_1A5248804();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A478F6AC()
{
  if (!qword_1EB141A18)
  {
    sub_1A478F728();
    v0 = sub_1A5249FC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141A18);
    }
  }
}

unint64_t sub_1A478F728()
{
  result = qword_1EB141A20;
  if (!qword_1EB141A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141A20);
  }

  return result;
}

unint64_t sub_1A478F7B8()
{
  result = qword_1EB141A30;
  if (!qword_1EB141A30)
  {
    sub_1A478E98C(255, &qword_1EB1419F8, sub_1A478F5A0, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1A478F8AC();
    sub_1A478EE38(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141A30);
  }

  return result;
}

unint64_t sub_1A478F8AC()
{
  result = qword_1EB141A38;
  if (!qword_1EB141A38)
  {
    sub_1A478F5A0(255);
    sub_1A478F95C();
    sub_1A478EE38(&unk_1EB141A58, sub_1A478F77C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141A38);
  }

  return result;
}

unint64_t sub_1A478F95C()
{
  result = qword_1EB141A40;
  if (!qword_1EB141A40)
  {
    sub_1A478F5E8(255);
    sub_1A478FA2C(&qword_1EB1285B8, &qword_1EB1285B0, MEMORY[0x1E697E048]);
    sub_1A478EE38(&qword_1EB141A50, sub_1A478F6AC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141A40);
  }

  return result;
}

uint64_t sub_1A478FA2C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A47A166C(255, a2, MEMORY[0x1E6981748], a3, MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A478FB28(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

void sub_1A478FBCC()
{
  if (!qword_1EB141AC0)
  {
    sub_1A478FC88(255);
    sub_1A478F164(&qword_1EB141B00, sub_1A478FC88, sub_1A478FF34);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB141AC0);
    }
  }
}

void sub_1A478FCC4()
{
  if (!qword_1EB141AD0)
  {
    sub_1A478E98C(255, &qword_1EB141AD8, sub_1A478FD68, sub_1A3EBB1B4, MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141AD0);
    }
  }
}

void sub_1A478FD68()
{
  if (!qword_1EB141AE0)
  {
    sub_1A478FDEC(255);
    sub_1A478FE54();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB141AE0);
    }
  }
}

unint64_t sub_1A478FE54()
{
  result = qword_1EB141AF0;
  if (!qword_1EB141AF0)
  {
    sub_1A478FDEC(255);
    sub_1A478EE38(&qword_1EB12DBA0, type metadata accessor for LemonadeCollectionCustomizationTitleField);
    sub_1A478EE38(&qword_1EB127830, sub_1A3EC18C4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141AF0);
  }

  return result;
}

unint64_t sub_1A478FF70()
{
  result = qword_1EB141B10;
  if (!qword_1EB141B10)
  {
    sub_1A478E98C(255, &qword_1EB141AD8, sub_1A478FD68, sub_1A3EBB1B4, MEMORY[0x1E697E830]);
    sub_1A478FDEC(255);
    sub_1A478FE54();
    swift_getOpaqueTypeConformance2();
    sub_1A478EE38(&qword_1EB1277A0, sub_1A3EBB1B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141B10);
  }

  return result;
}

void sub_1A479012C()
{
  if (!qword_1EB141B30)
  {
    sub_1A47A166C(255, &qword_1EB123D58, MEMORY[0x1E69815C0], MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    sub_1A47901BC();
    v0 = sub_1A5249724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141B30);
    }
  }
}

unint64_t sub_1A47901BC()
{
  result = qword_1EB141B40;
  if (!qword_1EB141B40)
  {
    sub_1A47A166C(255, &qword_1EB123D58, MEMORY[0x1E69815C0], MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141B40);
  }

  return result;
}

uint64_t sub_1A4790278@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 224))(*(a1 + a2 - 16));
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1A4790330@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 120))(*(a1 + a2 - 16));
  *a3 = result & 1;
  return result;
}

uint64_t sub_1A47903C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 728))(*(a1 + a2 - 16));
  *a3 = result & 1;
  return result;
}

uint64_t sub_1A4790450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a1;
  v38 = a4;
  v37 = type metadata accessor for LemonadeCollectionCustomizationView();
  v6 = *(v37 - 8);
  v36 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v31 - v7;
  sub_1A478E5A8();
  sub_1A3C48C7C(255, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
  v44 = v8;
  sub_1A478FBCC();
  v45 = v9;
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  v46 = sub_1A524DF24();
  sub_1A4790094(255);
  v47 = v10;
  swift_getTupleTypeMetadata();
  sub_1A524BE24();
  sub_1A524DF24();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  v11 = sub_1A5247D04();
  v31 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  sub_1A479D500(255, &qword_1EB127B40, sub_1A3E75420, MEMORY[0x1E69E7DE0], MEMORY[0x1E69802D8]);
  v14 = sub_1A5248804();
  v15 = *(v14 - 8);
  v32 = v14;
  v33 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - v16;
  v39 = a2;
  v40 = a3;
  v18 = v34;
  v41 = v34;
  sub_1A524A044();
  sub_1A5247D14();
  v19 = v35;
  v20 = v18;
  v21 = v37;
  (*(v6 + 16))(v35, v20, v37);
  v22 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  (*(v6 + 32))(v23 + v22, v19, v21);
  WitnessTable = swift_getWitnessTable();
  sub_1A3E75420();
  sub_1A3E707DC(MEMORY[0x1E69E7DE0], sub_1A3F8D060, 0, sub_1A47A1D9C, v23, v11, MEMORY[0x1E69E7DE0], WitnessTable);

  (*(v31 + 8))(v13, v11);
  v25 = sub_1A524B344();
  v26 = sub_1A5248874();
  v27 = sub_1A524A064();
  v44 = v25;
  v45 = v26;
  LOBYTE(v46) = v27;
  sub_1A524BC74();
  sub_1A47A166C(0, &qword_1EB123D58, MEMORY[0x1E69815C0], MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
  v28 = sub_1A3E754D0();
  v42 = WitnessTable;
  v43 = v28;
  v29 = v32;
  swift_getWitnessTable();
  sub_1A47901BC();
  sub_1A524A8E4();

  return (*(v33 + 8))(v17, v29);
}

uint64_t sub_1A47909AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v261 = a4;
  sub_1A3C48C7C(255, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
  *v290 = v7;
  sub_1A478FBCC();
  *&v290[8] = v8;
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  *&v290[16] = sub_1A524DF24();
  sub_1A4790094(255);
  v291 = v9;
  swift_getTupleTypeMetadata();
  v10 = sub_1A524BE24();
  v259 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v246 = &v204 - v11;
  sub_1A47900D0(0);
  v239 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v240 = (&v204 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4790094(0);
  v241 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v245 = &v204 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v238 = &v204 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v244 = &v204 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v220 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v218 = &v204 - v21;
  v233 = v22;
  v23 = sub_1A5248804();
  v234 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v221 = &v204 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v219 = &v204 - v26;
  v254 = v27;
  v243 = sub_1A524DF24();
  v242 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v257 = &v204 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v255 = &v204 - v30;
  v250 = sub_1A524B974();
  v264 = *(v250 - 8);
  MEMORY[0x1EEE9AC00](v250);
  *&v225 = &v204 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  *&v224 = &v204 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v222 = &v204 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v249 = &v204 - v37;
  sub_1A478FDEC(0);
  v228 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v227 = &v204 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A478FCC4();
  v229 = v40;
  MEMORY[0x1EEE9AC00](v40);
  v230 = &v204 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A478FC88(0);
  v251 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v231 = &v204 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A478FBCC();
  v237 = v44;
  v236 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v235 = &v204 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v265 = &v204 - v47;
  v48 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v223 = &v204 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v247 = &v204 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v204 - v54;
  v260 = v10;
  v258 = sub_1A524DF24();
  v252 = *(v258 - 8);
  MEMORY[0x1EEE9AC00](v258);
  v57 = &v204 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v269 = &v204 - v59;
  sub_1A478E5A8();
  v253 = v60;
  MEMORY[0x1EEE9AC00](v60);
  v256 = &v204 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v204 - v63;
  v65 = a3;
  v66 = type metadata accessor for LemonadeCollectionCustomizationView();
  v67 = sub_1A47928A0(v66);
  v69 = v68;
  *v64 = sub_1A5249574();
  *(v64 + 1) = v67;
  v64[16] = v69 & 1;
  sub_1A47A22B8(0, &qword_1EB141F80, sub_1A478E650);
  v71 = *(v70 + 44);
  v268 = v64;
  v72 = a1;
  sub_1A4792908(a1, a2, v65, &v64[v71]);
  v270 = v66;
  v73 = v65;
  v74 = sub_1A524B974();
  v266 = v72;
  MEMORY[0x1A5906C60]();
  v75 = v65 + 592;
  v76 = *(v73 + 592);
  v267 = v73;
  LOBYTE(v67) = v76(a2, v73);
  v79 = *(v48 + 8);
  v78 = v48 + 8;
  v77 = v79;
  v80 = a2;
  v79(v55, a2);
  if (v67)
  {
    v232 = v75;
    v217 = v57;
    v81 = v270;
    v263 = v74;
    MEMORY[0x1A5906C60](v74);
    v82 = (*(v267 + 360))(a2);
    v83 = v55;
    v262 = v80;
    v248 = v78;
    v226 = v77;
    v77(v55, v80);
    if (v82)
    {
      v84 = v266;
      v85 = sub_1A478C774(v81, MEMORY[0x1E69C2210]);
      v86 = 0x4040000000000000;
      if (v85)
      {
        v86 = 0x4044000000000000;
      }

      v216 = v86;
      v87 = v84;
    }

    else
    {
      v216 = 0;
      v87 = v266;
    }

    v215 = v82 ^ 1;
    v92 = v263;
    MEMORY[0x1A5906C60](v263);
    v93 = v262;
    v94 = v267;
    LODWORD(v232) = v76(v262, v267);
    v213 = v83;
    v95 = v226;
    v226(v83, v93);
    MEMORY[0x1A5906C60](v92);
    v96 = (*(v94 + 664))(v93, v94);
    v95(v83, v93);
    v214 = *(v96 + 16);

    MEMORY[0x1A5906C60](v92);
    (*(v94 + 248))(&v279, v93, v94);
    v95(v83, v93);
    v212 = v279;
    v97 = v247;
    MEMORY[0x1A5906C60](v92);
    v211 = (*(v94 + 216))(v93, v94);
    v210 = v98;
    v95(v97, v93);
    v99 = v249;
    v100 = sub_1A524B924();
    MEMORY[0x1EEE9AC00](v100);
    *(&v204 - 2) = v93;
    *(&v204 - 1) = v94;
    swift_getKeyPath();
    v101 = v87;
    v102 = v250;
    sub_1A524B914();

    v104 = v264 + 8;
    v103 = *(v264 + 8);
    v103(v99, v102);
    v247 = v103;
    v209 = *v290;
    v208 = *&v290[16];
    v207 = v291;
    v105 = v222;
    v106 = sub_1A524B924();
    MEMORY[0x1EEE9AC00](v106);
    *(&v204 - 2) = v93;
    *(&v204 - 1) = v94;
    swift_getKeyPath();
    sub_1A524B914();

    v103(v105, v102);
    v222 = v276;
    v206 = v277;
    v107 = v224;
    v108 = v263;
    v109 = sub_1A524B924();
    MEMORY[0x1EEE9AC00](v109);
    *(&v204 - 2) = v93;
    *(&v204 - 1) = v94;
    swift_getKeyPath();
    sub_1A524B914();

    (v247)(v107, v102);
    v224 = v286;
    v205 = v287;
    v204 = v288;
    v110 = v225;
    v111 = sub_1A524B924();
    MEMORY[0x1EEE9AC00](v111);
    *(&v204 - 2) = v93;
    *(&v204 - 1) = v94;
    swift_getKeyPath();
    sub_1A524B914();

    v264 = v104;
    (v247)(v110, v102);
    v225 = v284;
    v112 = v285;
    v113 = v101;
    v114 = v223;
    MEMORY[0x1A5906C60](v108);
    v115 = v262;
    LOBYTE(v103) = (*(v94 + 192))(v262, v94);
    v116 = v226;
    v226(v114, v115);
    v117 = v227;
    *v227 = v212;
    v118 = v210;
    *(v117 + 8) = v211;
    *(v117 + 16) = v118;
    *(v117 + 24) = v209;
    v119 = v207;
    *(v117 + 40) = v208;
    *(v117 + 48) = v119;
    *(v117 + 56) = v222;
    v120 = v224;
    *(v117 + 64) = v206;
    *(v117 + 80) = v120;
    v121 = v204;
    *(v117 + 96) = v205;
    *(v117 + 104) = v121;
    *(v117 + 112) = v225;
    *(v117 + 128) = v112;
    *(v117 + 136) = (v103 & 1) == 0;
    v122 = *(type metadata accessor for LemonadeCollectionCustomizationTitleField(0) + 44);
    *(v117 + v122) = swift_getKeyPath();
    sub_1A3F31578(0);
    *&v225 = v123;
    swift_storeEnumTagMultiPayload();
    v124 = sub_1A524A0F4();
    KeyPath = swift_getKeyPath();
    v126 = (v117 + *(v228 + 36));
    *v126 = KeyPath;
    v126[1] = v124;
    sub_1A478FE54();
    v127 = v230;
    sub_1A524AF64();
    sub_1A479AE68(v117, sub_1A478FDEC);
    v128 = swift_getKeyPath();
    sub_1A478E98C(0, &qword_1EB141AD8, sub_1A478FD68, sub_1A3EBB1B4, MEMORY[0x1E697E830]);
    v130 = &v127[*(v129 + 36)];
    *v130 = v128;
    *(v130 + 1) = 1;
    v130[16] = 0;
    LOBYTE(v117) = sub_1A524A054();
    v131 = v270;
    sub_1A478C774(v270, MEMORY[0x1E69C21F8]);
    sub_1A5247BC4();
    v132 = &v127[*(v229 + 36)];
    *v132 = v117;
    v133 = v116;
    v134 = v213;
    *(v132 + 1) = v135;
    *(v132 + 2) = v136;
    *(v132 + 3) = v137;
    *(v132 + 4) = v138;
    v132[40] = 0;
    if (v232)
    {
      v139 = 1.0;
    }

    else
    {
      v139 = 0.0;
    }

    v140 = v127;
    v141 = v231;
    sub_1A479DC1C(v140, v231, sub_1A478FCC4);
    *(v141 + *(v251 + 36)) = v139;
    v142 = (v113 + *(v131 + 68));
    v143 = *v142;
    v144 = *(v142 + 1);
    LOBYTE(v142) = v142[16];
    v290[0] = v143;
    *&v290[8] = v144;
    v290[16] = v142;
    sub_1A47A166C(0, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
    sub_1A5247C24();
    v230 = sub_1A478F164(&qword_1EB141B00, sub_1A478FC88, sub_1A478FF34);
    sub_1A524B074();

    sub_1A47A0FA8(v141, sub_1A478FC88);
    v145 = v263;
    MEMORY[0x1A5906C60](v263);
    v146 = v262;
    v147 = (*(v94 + 696))(v262, v94);
    v148 = v146;
    v133(v134, v146);
    v149 = MEMORY[0x1E697E5D8];
    if (v147)
    {
      v150 = v270;
      MEMORY[0x1A5906C60](v145);
      v151 = v218;
      (*(v267 + 688))(v148, v267);
      v133(v134, v148);
      sub_1A524A054();
      sub_1A478C774(v150, MEMORY[0x1E69C21F8]);
      v152 = v233;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v154 = v221;
      sub_1A524B0D4();
      (*(v220 + 8))(v151, v152);
      v248 = AssociatedConformanceWitness;
      v271 = AssociatedConformanceWitness;
      v272 = MEMORY[0x1E697E5D8];
      v155 = v254;
      swift_getWitnessTable();
      v156 = v234;
      v157 = *(v234 + 16);
      v158 = v219;
      v157(v219, v154, v155);
      v159 = *(v156 + 8);
      v159(v154, v155);
      v157(v154, v158, v155);
      v159(v158, v155);
      v160 = v257;
      (*(v156 + 32))(v257, v154, v155);
      (*(v156 + 56))(v160, 0, 1, v155);
      v148 = v262;
    }

    else
    {
      v160 = v257;
      (*(v234 + 56))(v257, 1, 1, v254);
      v248 = swift_getAssociatedConformanceWitness();
      v282 = v248;
      v283 = v149;
      swift_getWitnessTable();
    }

    v161 = v242;
    v234 = *(v242 + 16);
    v162 = v243;
    (v234)(v255, v160, v243);
    v242 = *(v161 + 8);
    (v242)(v160, v162);
    v163 = v270;
    v164 = v249;
    v165 = sub_1A524B924();
    MEMORY[0x1EEE9AC00](v165);
    v166 = v267;
    *(&v204 - 2) = v148;
    *(&v204 - 1) = v166;
    swift_getKeyPath();
    v167 = v250;
    sub_1A524B914();

    (v247)(v164, v167);
    v168 = v240;
    *v240 = *v290;
    *(v168 + 8) = *&v290[8];
    v169 = type metadata accessor for LemonadeCollectionCustomizationAction(0);
    *(v168 + 24) = 0u;
    *(v168 + 40) = 0u;
    *(v168 + 56) = 0u;
    *(v168 + 72) = 0;
    v170 = *(v169 + 28);
    *(v168 + v170) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v171 = *(v169 + 32);
    *(v168 + v171) = swift_getKeyPath();
    sub_1A3E71AC8(0);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v171) = sub_1A524A054();
    sub_1A478C774(v163, MEMORY[0x1E69C21F8]);
    sub_1A5247BC4();
    v172 = v168 + *(v239 + 36);
    *v172 = v171;
    *(v172 + 8) = v173;
    *(v172 + 16) = v174;
    *(v172 + 24) = v175;
    *(v172 + 32) = v176;
    *(v172 + 40) = 0;
    if ((v232 & (v214 != 0)) != 0)
    {
      v177 = 1.0;
    }

    else
    {
      v177 = 0.0;
    }

    v178 = v238;
    sub_1A47A1AD8(v168, v238, sub_1A47900D0);
    v179 = v241;
    *(v178 + *(v241 + 36)) = v177;
    v180 = v178;
    v181 = v244;
    sub_1A47A1AD8(v180, v244, sub_1A4790094);
    v279 = v216;
    v280 = 0;
    v281 = v215 & 1;
    *v290 = &v279;
    v182 = v236;
    v183 = v235;
    v184 = v237;
    (*(v236 + 16))(v235, v265, v237);
    *&v290[8] = v183;
    v185 = v160;
    v186 = v160;
    v187 = v255;
    (v234)(v186, v255, v162);
    *&v290[16] = v185;
    v188 = v245;
    sub_1A47A23D4(v181, v245, sub_1A4790094);
    v291 = v188;
    sub_1A3C48C7C(0, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
    *&v286 = v189;
    *(&v286 + 1) = v184;
    v287 = v162;
    v288 = v179;
    v276 = sub_1A45D5530();
    *&v284 = v251;
    *(&v284 + 1) = v230;
    *&v277 = swift_getOpaqueTypeConformance2();
    v274 = v248;
    v275 = MEMORY[0x1E697E5D8];
    WitnessTable = swift_getWitnessTable();
    *(&v277 + 1) = swift_getWitnessTable();
    v278 = sub_1A478F164(&qword_1EB141F98, sub_1A4790094, sub_1A47A1E28);
    v190 = v246;
    sub_1A3DF4988(v290, 4uLL, &v286);
    sub_1A479AE68(v181, sub_1A4790094);
    v191 = v187;
    v192 = v242;
    (v242)(v191, v162);
    v193 = *(v182 + 8);
    v193(v265, v184);
    sub_1A479AE68(v188, sub_1A4790094);
    v192(v257, v162);
    v193(v183, v184);
    v194 = v259;
    v91 = v217;
    v195 = v260;
    (*(v259 + 32))(v217, v190, v260);
    (*(v194 + 56))(v91, 0, 1, v195);
    swift_getWitnessTable();
    v196 = v252;
    v89 = *(v252 + 16);
    v90 = v258;
    v89(v269, v91, v258);
    v267 = *(v196 + 8);
    (v267)(v91, v90);
  }

  else
  {
    (*(v259 + 56))(v57, 1, 1, v260);
    swift_getWitnessTable();
    v88 = v252;
    v89 = *(v252 + 16);
    v90 = v258;
    v89(v269, v57, v258);
    v267 = *(v88 + 8);
    (v267)(v57, v90);
    v91 = v57;
  }

  v197 = sub_1A47928A0(v270);
  v199 = v198;
  v200 = v256;
  sub_1A47A1014(v268, v256, sub_1A478E5A8);
  *v290 = v200;
  v201 = v269;
  v89(v91, v269, v90);
  *&v284 = v197;
  BYTE8(v284) = v199 & 1;
  *&v290[8] = v91;
  *&v290[16] = &v284;
  *&v286 = v253;
  *(&v286 + 1) = v90;
  v287 = MEMORY[0x1E6981840];
  v276 = sub_1A478EE38(&qword_1EB141F88, sub_1A478E5A8);
  v289 = swift_getWitnessTable();
  *&v277 = swift_getWitnessTable();
  *(&v277 + 1) = MEMORY[0x1E6981838];
  sub_1A3DF4988(v290, 3uLL, &v286);
  v202 = v267;
  (v267)(v201, v90);
  sub_1A47A0FA8(v268, sub_1A478E5A8);
  v202(v91, v90);
  return sub_1A47A0FA8(v200, sub_1A478E5A8);
}

uint64_t sub_1A47928A0(uint64_t a1)
{
  if (sub_1A478C774(a1, MEMORY[0x1E69C2210]))
  {
    return 0;
  }

  if (sub_1A478C774(a1, MEMORY[0x1E69C21F8]))
  {
    return 0x4030000000000000;
  }

  return 0x4020000000000000;
}

uint64_t sub_1A4792908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v146 = a4;
  sub_1A478E684(0);
  v145 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v141 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v128 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1A5249544();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v122 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A47A166C(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v14 = v13;
  v121 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v120 = &v117 - v15;
  sub_1A478E98C(0, &unk_1EB141A90, sub_1A45AC794, sub_1A3EC18C4, MEMORY[0x1E697E830]);
  v125 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v127 = &v117 - v17;
  sub_1A45AC870(0);
  v126 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v131 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A478FAEC(0);
  v137 = v20;
  v136 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v130 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v129 = &v117 - v23;
  sub_1A478FAB8(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v140 = &v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v139 = &v117 - v27;
  sub_1A478E6C0(0);
  v134 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v138 = &v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v117 - v31;
  v33 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v132 = &v117 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v117 - v37;
  v39 = type metadata accessor for LemonadeCollectionCustomizationView();
  v133 = sub_1A524B974();
  MEMORY[0x1A5906C60]();
  v40 = *(a3 + 360);
  v143 = a3;
  v41 = a3;
  v42 = v145;
  v43 = v40(a2, v41);
  v44 = *(v33 + 8);
  v144 = a2;
  v135 = v33 + 8;
  v142 = v44;
  v44(v38, a2);
  v45 = v146;
  v46 = 1;
  if (v43)
  {
    v118 = v14;
    v119 = v8;
    *v32 = sub_1A5249574();
    *(v32 + 1) = 0;
    v32[16] = 1;
    sub_1A47A22B8(0, &unk_1EB141FB0, sub_1A478E790);
    v48 = &v32[*(v47 + 44)];
    *v48 = sub_1A524BC74();
    v48[1] = v49;
    sub_1A47A22B8(0, &qword_1EB141FC0, sub_1A478E824);
    v51 = v48 + *(v50 + 44);
    v52 = a1;
    v53 = a1;
    v54 = v143;
    sub_1A4793804(v52, v144, v143, v51);
    v55 = (v53 + *(v39 + 64));
    v57 = v55[1];
    v58 = v55[2];
    *&v150 = *v55;
    v56 = v150;
    *(&v150 + 1) = v57;
    *&v151 = v58;
    sub_1A478C514(0, &unk_1EB121B78, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    *&v150 = v56;
    *(&v150 + 1) = v57;
    *&v151 = v58;
    sub_1A524B6A4();
    sub_1A524BC74();
    sub_1A52481F4();
    v59 = *(v134 + 9);
    v134 = v32;
    v60 = &v32[v59];
    v61 = v148;
    *v60 = v147;
    *(v60 + 1) = v61;
    *(v60 + 2) = v149;
    v117 = v53;
    v62 = v132;
    v63 = v133;
    MEMORY[0x1A5906C60](v133);
    v64 = v144;
    v65 = (*(v54 + 616))(v144, v54);
    v67 = v66;
    v142(v62, v64);
    if (v65)
    {
      MEMORY[0x1A5906C60](v63);
      v68 = v144;
      v69 = (*(v143 + 640))(v144);
      v71 = v70;
      v142(v38, v68);
      *&v150 = v69;
      *(&v150 + 1) = v71;
      v72 = swift_allocObject();
      v73 = v65;
      *(v72 + 16) = v65;
      *(v72 + 24) = v67;
      sub_1A3D5F9DC();
      v144 = v67;

      v74 = v120;
      sub_1A524B754();
      v75 = v122;
      sub_1A5249534();
      sub_1A3D6E520();
      sub_1A478EE38(&unk_1EB122DF0, MEMORY[0x1E697C540]);
      v76 = v127;
      v77 = v118;
      v78 = v124;
      sub_1A524A934();
      (*(v123 + 8))(v75, v78);
      (*(v121 + 8))(v74, v77);
      sub_1A478E98C(0, &qword_1EB141AA0, sub_1A419A5C4, sub_1A3E744F4, MEMORY[0x1E697E830]);
      v80 = (v76 + *(v79 + 36));
      sub_1A3E744F4(0);
      sub_1A5248B14();
      *v80 = swift_getKeyPath();
      LODWORD(v80) = sub_1A5249A04();
      sub_1A45AC794();
      *(v76 + *(v81 + 36)) = v80;
      v82 = sub_1A524A154();
      v83 = v128;
      (*(*(v82 - 8) + 56))(v128, 1, 1, v82);
      v84 = sub_1A524A1B4();
      sub_1A479AE68(v83, sub_1A3E75D84);
      KeyPath = swift_getKeyPath();
      v86 = (v76 + *(v125 + 36));
      *v86 = KeyPath;
      v86[1] = v84;
      sub_1A524BC74();
      sub_1A5248AD4();
      v87 = v131;
      sub_1A3D1FDDC(v76, v131);
      v88 = (v87 + *(v126 + 36));
      v89 = v153;
      v90 = v155;
      v91 = v156;
      v88[4] = v154;
      v88[5] = v90;
      v88[6] = v91;
      v92 = v151;
      *v88 = v150;
      v88[1] = v92;
      v88[2] = v152;
      v88[3] = v89;
      sub_1A3C48C7C(0, &unk_1EB1202B0, MEMORY[0x1E6980D50], MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A52FC9F0;
      LOBYTE(v76) = sub_1A524A094();
      *(inited + 32) = v76;
      v94 = sub_1A524A0B4();
      *(inited + 33) = v94;
      v95 = sub_1A524A0A4();
      sub_1A524A0A4();
      if (sub_1A524A0A4() != v76)
      {
        v95 = sub_1A524A0A4();
      }

      sub_1A524A0A4();
      v96 = sub_1A524A0A4();
      v42 = v145;
      v8 = v119;
      v97 = v139;
      v98 = v134;
      if (v96 != v94)
      {
        v95 = sub_1A524A0A4();
      }

      sub_1A5247BC4();
      v100 = v99;
      v102 = v101;
      v104 = v103;
      v106 = v105;
      sub_1A3C784D4(v73, v144);
      v107 = v130;
      sub_1A479DC1C(v87, v130, sub_1A45AC870);
      v108 = v137;
      v109 = v107 + *(v137 + 36);
      *v109 = v95;
      *(v109 + 8) = v100;
      *(v109 + 16) = v102;
      *(v109 + 24) = v104;
      *(v109 + 32) = v106;
      *(v109 + 40) = 0;
      v110 = v107;
      v111 = v129;
      sub_1A479DC1C(v110, v129, sub_1A478FAEC);
      sub_1A479DC1C(v111, v97, sub_1A478FAEC);
      v46 = 0;
    }

    else
    {
      v42 = v145;
      v8 = v119;
      v97 = v139;
      v108 = v137;
      v98 = v134;
    }

    (*(v136 + 56))(v97, v46, 1, v108);
    v112 = v138;
    sub_1A47A23D4(v98, v138, sub_1A478E6C0);
    v113 = v140;
    sub_1A47A1014(v97, v140, sub_1A478FAB8);
    v114 = v141;
    sub_1A47A23D4(v112, v141, sub_1A478E6C0);
    sub_1A478E860(0, &qword_1EB1418B8, sub_1A478E6C0, sub_1A478FAB8);
    sub_1A47A1014(v113, v114 + *(v115 + 48), sub_1A478FAB8);
    sub_1A47A0FA8(v97, sub_1A478FAB8);
    sub_1A479AE68(v98, sub_1A478E6C0);
    sub_1A47A0FA8(v113, sub_1A478FAB8);
    sub_1A479AE68(v112, sub_1A478E6C0);
    v45 = v146;
    sub_1A479DC1C(v114, v146, sub_1A478E684);
    v46 = 0;
  }

  return (*(v8 + 56))(v45, v46, 1, v42);
}

uint64_t sub_1A4793804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v163 = a4;
  sub_1A478F2EC();
  v159 = *(v7 - 8);
  v160 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v152 = (v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A478F2B8(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v162 = v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v161 = v132 - v12;
  v157 = sub_1A5242DD4();
  v151 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v150 = v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E697F948];
  sub_1A478E98C(0, &unk_1EB141FC8, sub_1A478EA10, MEMORY[0x1E69C2288], MEMORY[0x1E697F948]);
  v156 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v153 = v132 - v16;
  v139 = sub_1A5243834();
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v148 = v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A478C514(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v149 = v132 - v19;
  v144 = sub_1A5243EC4();
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v141 = v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4574000(0);
  v137 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v142 = v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A478EA10(0);
  v155 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v140 = v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v145 = v132 - v26;
  sub_1A478E98C(0, &qword_1EB141FD8, type metadata accessor for LemonadeCollectionCustomizationKeyAsset, sub_1A478E944, v14);
  v170 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v167 = v132 - v28;
  v166 = type metadata accessor for LemonadeCollectionCustomizationKeyAsset(0);
  MEMORY[0x1EEE9AC00](v166);
  v30 = v132 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A478E944(0);
  v164 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v154 = v132 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v158 = v132 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v165 = v132 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v147 = v132 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v146 = v132 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v44 = v132 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = v132 - v46;
  sub_1A478E8DC(0);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v168 = v132 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v52 = v132 - v51;
  v53 = a3;
  v54 = type metadata accessor for LemonadeCollectionCustomizationView();
  v171 = sub_1A524B974();
  MEMORY[0x1A5906C60]();
  v55 = *(v53 + 368);
  v169 = v53;
  v56 = v55(a2, v53);
  v58 = *(v33 + 8);
  v57 = v33 + 8;
  v59 = v47;
  v60 = a2;
  v61 = a2;
  v62 = v58;
  v58(v59, v61);
  v172 = a1;
  if (v56)
  {
    v63 = a1 + *(v54 + 64);
    v64 = *(v63 + 16);
    v174 = *v63;
    *&v175 = v64;
    sub_1A478C514(0, &unk_1EB121B78, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    v65 = v173;
    *v30 = v56;
    *(v30 + 8) = v65;
    v66 = *(v166 + 24);
    *&v30[v66] = swift_getKeyPath();
    sub_1A3F31578(0);
    swift_storeEnumTagMultiPayload();
    sub_1A47A23D4(v30, v167, type metadata accessor for LemonadeCollectionCustomizationKeyAsset);
    swift_storeEnumTagMultiPayload();
    sub_1A47A2068();
    sub_1A47A20C0();
    sub_1A5249744();
    sub_1A479AE68(v30, type metadata accessor for LemonadeCollectionCustomizationKeyAsset);
    v67 = v52;
    v68 = v171;
    v69 = v62;
    v70 = v169;
    goto LABEL_23;
  }

  v133 = v52;
  v71 = v171;
  MEMORY[0x1A5906C60](v171);
  v72 = v169;
  (*(v169 + 416))(&v173, v60, v169);
  v62(v44, v60);
  v136 = v54;
  v73 = v71;
  v74 = v62;
  v134 = v62;
  v132[1] = v57;
  v135 = v60;
  if (v173)
  {
    v75 = v147;
    MEMORY[0x1A5906C60](v73);
    v70 = v72;
    v76 = (*(v72 + 440))(v60, v72);
    v74(v75, v60);
    v77 = v157;
    if (v76)
    {
      if (!(v76 >> 62))
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A3D435C4();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v84 = v153;
    v85 = v151;
    v86 = v150;
    sub_1A524B344();
    sub_1A5242DE4();
    (*(v85 + 16))(v84, v86, v77);
    swift_storeEnumTagMultiPayload();
    sub_1A47A1ED8();
    sub_1A478EE38(&qword_1EB129130, MEMORY[0x1E69C2288]);
    v87 = v154;
    sub_1A5249744();
    (*(v85 + 8))(v86, v77);
    v88 = v167;
    goto LABEL_22;
  }

  v78 = v146;
  MEMORY[0x1A5906C60](v73);
  v79 = (*(v72 + 440))(v60, v72);
  v62(v78, v60);
  v70 = v72;
  if (!v79)
  {
    v80 = v148;
    v81 = v149;
LABEL_18:
    if (sub_1A478C774(v136, MEMORY[0x1E69C2210]))
    {
      v89 = sub_1A52429A4();
      (*(*(v89 - 8) + 56))(v81, 1, 1, v89);
    }

    else
    {
      v90 = *MEMORY[0x1E69C2058];
      v91 = sub_1A52429A4();
      v92 = *(v91 - 8);
      (*(v92 + 104))(v81, v90, v91);
      (*(v92 + 56))(v81, 0, 1, v91);
    }

    v93 = v145;
    v94 = v144;
    v95 = v143;
    v96 = v142;
    v97 = v141;
    v174 = 0u;
    v175 = 0u;
    v176 = 1;
    (*(v138 + 104))(v80, *MEMORY[0x1E69C2678], v139);
    sub_1A5243ED4();
    v98 = (v96 + *(v137 + 36));
    v99 = v97;
    v100 = *(sub_1A5248A14() + 20);
    v101 = *MEMORY[0x1E697F468];
    v102 = sub_1A52494A4();
    (*(*(v102 - 8) + 104))(&v98[v100], v101, v102);
    __asm { FMOV            V0.2D, #18.0 }

    *v98 = _Q0;
    sub_1A3E42C88();
    *&v98[*(v108 + 36)] = 256;
    (*(v95 + 32))(v96, v99, v94);
    v109 = sub_1A524BC74();
    v111 = v110;
    v112 = v140;
    v113 = &v140[*(v155 + 36)];
    sub_1A4794B44(v172, v135, v70, v113);
    sub_1A478EA58();
    v115 = (v113 + *(v114 + 36));
    *v115 = v109;
    v115[1] = v111;
    sub_1A47A1AD8(v96, v112, sub_1A4574000);
    sub_1A47A1AD8(v112, v93, sub_1A478EA10);
    sub_1A47A23D4(v93, v153, sub_1A478EA10);
    swift_storeEnumTagMultiPayload();
    sub_1A47A1ED8();
    sub_1A478EE38(&qword_1EB129130, MEMORY[0x1E69C2288]);
    v116 = v93;
    v87 = v154;
    sub_1A5249744();
    sub_1A479AE68(v116, sub_1A478EA10);
    v88 = v167;
LABEL_22:
    sub_1A47A23D4(v87, v88, sub_1A478E944);
    swift_storeEnumTagMultiPayload();
    sub_1A47A2068();
    sub_1A47A20C0();
    v117 = v133;
    sub_1A5249744();
    v118 = v87;
    v67 = v117;
    sub_1A479AE68(v118, sub_1A478E944);
    v68 = v171;
    v69 = v134;
    v60 = v135;
LABEL_23:
    v119 = v165;
    MEMORY[0x1A5906C60](v68);
    v120 = (*(v70 + 496))(v60, v70);
    v69(v119, v60);
    if (v120)
    {
      v121 = v158;
      MEMORY[0x1A5906C60](v68);
      v122 = (*(v70 + 704))(v60, v70);
      v69(v121, v60);
      v123 = 1;
      if (v122 >= 1)
      {
        v124 = sub_1A5249574();
        v125 = v152;
        *v152 = v124;
        *(v125 + 8) = 0;
        *(v125 + 16) = 1;
        sub_1A47A22B8(0, &unk_1EB142010, sub_1A478F380);
        sub_1A47957FC(v172, v60, v70, v125 + *(v126 + 44));
        v127 = v161;
        sub_1A47A1AD8(v125, v161, sub_1A478F2EC);
        v123 = 0;
        v129 = v162;
        v128 = v163;
LABEL_28:
        (*(v159 + 56))(v127, v123, 1, v160);
        v130 = v168;
        sub_1A47A23D4(v67, v168, sub_1A478E8DC);
        sub_1A47A23D4(v127, v129, sub_1A478F2B8);
        sub_1A47A23D4(v130, v128, sub_1A478E8DC);
        sub_1A478E860(0, &qword_1EB1418E0, sub_1A478E8DC, sub_1A478F2B8);
        sub_1A47A23D4(v129, v128 + *(v131 + 48), sub_1A478F2B8);
        sub_1A479AE68(v127, sub_1A478F2B8);
        sub_1A479AE68(v67, sub_1A478E8DC);
        sub_1A479AE68(v129, sub_1A478F2B8);
        return sub_1A479AE68(v130, sub_1A478E8DC);
      }
    }

    else
    {
      v123 = 1;
    }

    v129 = v162;
    v128 = v163;
    v127 = v161;
    goto LABEL_28;
  }

  v80 = v148;
  v81 = v149;
  if (v79 >> 62)
  {
    result = sub_1A524E2B4();
    if (!result)
    {
      goto LABEL_17;
    }
  }

  else
  {
    result = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_17:

      goto LABEL_18;
    }
  }

  if ((v79 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1A59097F0](0, v79);
    goto LABEL_17;
  }

  if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v83 = *(v79 + 32);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4794B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v120 = a4;
  v7 = sub_1A5248714();
  v109 = *(v7 - 8);
  v110 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v108 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v107 = &v100 - v10;
  v11 = sub_1A524B554();
  v102 = *(v11 - 8);
  v103 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v101 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A479A5DC(0, &qword_1EB141960, sub_1A3E42C88);
  v100 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v106 = (&v100 - v14);
  sub_1A478EEB4();
  v111 = *(v15 - 8);
  v112 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v105 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v104 = &v100 - v18;
  sub_1A478E98C(0, &qword_1EB142020, sub_1A478EB00, sub_1A478EE80, MEMORY[0x1E697F948]);
  v118 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v100 - v20;
  v22 = type metadata accessor for LemonadeCollectionCustomizationView();
  v115 = *(v22 - 8);
  v113 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v114 = &v100 - v23;
  sub_1A478EE80(0);
  v119 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1A524B974();
  v121 = a1;
  MEMORY[0x1A5906C60](v31);
  v32 = a3[55];
  v117 = a3;
  v33 = v32(a2, a3);
  v34 = *(v27 + 8);
  v116 = a2;
  v34(v30, a2);
  if (!v33)
  {
LABEL_15:
    v76 = sub_1A524BC74();
    v111 = v77;
    v112 = v76;
    v78 = sub_1A524B544();
    v79 = (v121 + *(v22 + 60));
    v80 = *v79;
    v81 = v79[1];
    *&v122 = v80;
    *(&v122 + 1) = v81;
    sub_1A3C48C7C(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    sub_1A524BC74();
    sub_1A52481F4();
    LOBYTE(v133[0]) = 1;
    *(v150 + 6) = v122;
    *(&v150[1] + 6) = v123;
    *(&v150[2] + 6) = v124;
    v82 = sub_1A524B2B4();
    KeyPath = swift_getKeyPath();
    if (sub_1A478C774(v22, MEMORY[0x1E69C21F8]))
    {
      v84 = sub_1A524A0D4();
    }

    else
    {
      v84 = sub_1A524A134();
    }

    v85 = v84;
    v86 = swift_getKeyPath();
    *(v130 + 2) = v150[0];
    *(&v130[1] + 2) = v150[1];
    *(&v130[2] + 2) = v150[2];
    v136 = v150[0];
    v129 = v78;
    LOWORD(v130[0]) = 1;
    *&v130[3] = *(&v150[2] + 14);
    *(&v130[3] + 1) = KeyPath;
    *&v131 = v82;
    *(&v131 + 1) = v86;
    v132 = v85;
    v133[0] = v78;
    v133[1] = 0;
    v134 = 1;
    v135 = 0;
    v137 = v150[1];
    *v138 = v150[2];
    *&v138[14] = *(&v150[2] + 14);
    v139 = KeyPath;
    v140 = v82;
    v141 = v86;
    v142 = v85;
    sub_1A47A23D4(&v129, &v122, sub_1A478EC90);
    sub_1A479AE68(v133, sub_1A478EC90);
    v147 = v130[3];
    v148 = v131;
    v149 = v132;
    v143 = v129;
    v144 = v130[0];
    v145 = v130[1];
    v146 = v130[2];
    v88 = v114;
    v87 = v115;
    (*(v115 + 16))(v114, v121, v22);
    v89 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v90 = swift_allocObject();
    v91 = v117;
    *(v90 + 16) = v116;
    *(v90 + 24) = v91;
    (*(v87 + 32))(v90 + v89, v88, v22);
    sub_1A524BC74();
    sub_1A5248AD4();
    v92 = v111;
    *v21 = v112;
    *(v21 + 1) = v92;
    v93 = v148;
    *(v21 + 5) = v147;
    *(v21 + 6) = v93;
    v94 = v149;
    v95 = v144;
    *(v21 + 1) = v143;
    *(v21 + 2) = v95;
    v96 = v146;
    *(v21 + 3) = v145;
    *(v21 + 4) = v96;
    *(v21 + 14) = v94;
    *(v21 + 15) = sub_1A3F8D060;
    v97 = v124;
    *(v21 + 200) = v125;
    v98 = v127;
    *(v21 + 216) = v126;
    *(v21 + 232) = v98;
    *(v21 + 248) = v128;
    v99 = v123;
    *(v21 + 152) = v122;
    *(v21 + 168) = v99;
    *(v21 + 16) = 0;
    *(v21 + 17) = sub_1A47A2170;
    *(v21 + 18) = v90;
    *(v21 + 184) = v97;
    swift_storeEnumTagMultiPayload();
    sub_1A478EB00(0);
    sub_1A478F164(&qword_1EB141970, sub_1A478EB00, sub_1A478F078);
    sub_1A478FB28(&qword_1EB141990, sub_1A478EE80, sub_1A478F128);
    return sub_1A5249744();
  }

  v35 = v33;
  v36 = v33 & 0xFFFFFFFFFFFFFF8;
  if (v35 >> 62)
  {
    v74 = v35;
    v75 = sub_1A524E2B4();
    v35 = v74;
    if (v75)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  if (!*(v36 + 16))
  {
LABEL_14:

    goto LABEL_15;
  }

LABEL_4:
  if ((v35 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1A59097F0](0, v35);
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = *(v36 + 16);

    if (!v37)
    {
      __break(1u);
      return result;
    }
  }

  v39 = *sub_1A4758698();
  v40 = sub_1A524C634();
  v41 = [objc_opt_self() imageNamed:v40 inBundle:v39 compatibleWithTraitCollection:0];

  if (v41)
  {
    v117 = v41;
    sub_1A524B524();
    v43 = v101;
    v42 = v102;
    v44 = v103;
    (*(v102 + 104))(v101, *MEMORY[0x1E6981630], v103);
    v45 = sub_1A524B5C4();

    (*(v42 + 8))(v43, v44);
    v46 = v106;
    v47 = v106 + *(v100 + 36);
    v48 = *(sub_1A5248A14() + 20);
    v49 = *MEMORY[0x1E697F468];
    v50 = sub_1A52494A4();
    (*(*(v50 - 8) + 104))(&v47[v48], v49, v50);
    __asm { FMOV            V0.2D, #18.0 }

    *v47 = _Q0;
    sub_1A3E42C88();
    *&v47[*(v56 + 36)] = 256;
    *v46 = v45;
    v57 = v107;
    sub_1A478C2E8(v22, v107);
    v59 = v108;
    v58 = v109;
    v60 = v110;
    (*(v109 + 104))(v108, *MEMORY[0x1E697E7D8], v110);
    LOBYTE(v49) = sub_1A5248704();
    v61 = *(v58 + 8);
    v61(v59, v60);
    v61(v57, v60);
    if (v49)
    {
      v62 = -1.0;
    }

    else
    {
      v62 = 1.0;
    }

    sub_1A524BE94();
    v64 = v63;
    v66 = v65;

    v67 = v46;
    v68 = v105;
    sub_1A47A2230(v67, v105);
    v69 = v112;
    v70 = v68 + *(v112 + 36);
    *v70 = v62;
    *(v70 + 8) = 0x3FF0000000000000;
    *(v70 + 16) = v64;
    *(v70 + 24) = v66;
    v71 = v68;
    v72 = v104;
    sub_1A47A1AD8(v71, v104, sub_1A478EEB4);
    sub_1A47A1AD8(v72, v26, sub_1A478EEB4);
    v73 = 0;
  }

  else
  {
    v73 = 1;
    v69 = v112;
  }

  (*(v111 + 56))(v26, v73, 1, v69);
  sub_1A47A23D4(v26, v21, sub_1A478EE80);
  swift_storeEnumTagMultiPayload();
  sub_1A478EB00(0);
  sub_1A478F164(&qword_1EB141970, sub_1A478EB00, sub_1A478F078);
  sub_1A478FB28(&qword_1EB141990, sub_1A478EE80, sub_1A478F128);
  sub_1A5249744();
  return sub_1A479AE68(v26, sub_1A478EE80);
}

uint64_t sub_1A47957FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1A478F3D4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  *v13 = sub_1A5249314();
  *(v13 + 1) = 0;
  v13[16] = 1;
  sub_1A47A22B8(0, &qword_1EB142028, sub_1A478F468);
  sub_1A4795978(a1, a2, a3, &v13[*(v14 + 44)]);
  sub_1A47A23D4(v13, v10, sub_1A478F3D4);
  *a4 = 0;
  *(a4 + 8) = 1;
  sub_1A478F3B4(0);
  sub_1A47A23D4(v10, a4 + *(v15 + 48), sub_1A478F3D4);
  sub_1A479AE68(v13, sub_1A478F3D4);
  return sub_1A479AE68(v10, sub_1A478F3D4);
}

uint64_t sub_1A4795978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v30 = a3;
  v31 = a4;
  v6 = type metadata accessor for LemonadeCollectionCustomizationView();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - v8;
  sub_1A478F4BC(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - v16;
  (*(v7 + 16))(v9, a1, v6, v15);
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v19 = swift_allocObject();
  v20 = v30;
  *(v19 + 16) = a2;
  *(v19 + 24) = v20;
  (*(v7 + 32))(v19 + v18, v9, v6);
  sub_1A478E98C(0, &qword_1EB1419F8, sub_1A478F5A0, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  sub_1A478F7B8();
  sub_1A524B704();
  LOBYTE(v18) = sub_1A524A064();
  sub_1A5247BC4();
  v21 = &v17[*(v11 + 44)];
  *v21 = v18;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  sub_1A47A23D4(v17, v13, sub_1A478F4BC);
  v26 = v31;
  *v31 = 0;
  *(v26 + 8) = 1;
  v27 = v26;
  sub_1A478F49C(0);
  sub_1A47A23D4(v13, v27 + *(v28 + 48), sub_1A478F4BC);
  sub_1A479AE68(v17, sub_1A478F4BC);
  return sub_1A479AE68(v13, sub_1A478F4BC);
}

uint64_t sub_1A4795C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeCollectionCustomizationView();
  v8 = sub_1A524B974();
  MEMORY[0x1A5906C60](v8);
  v9 = (*(a3 + 168))(a2, a3);
  v10 = (*(v5 + 8))(v7, a2);
  v9(v10);
}

uint64_t sub_1A4795D68@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_1A524B554();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A478F5A0(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524B544();
  (*(v2 + 104))(v4, *MEMORY[0x1E6981630], v1);
  v8 = sub_1A524B5C4();

  (*(v2 + 8))(v4, v1);
  sub_1A524BC74();
  sub_1A52481F4();
  v9 = v22;
  v10 = v23;
  v11 = v24;
  v12 = v25;
  v14 = v26;
  v13 = v27;
  v15 = sub_1A524B434();
  LOBYTE(v19) = v10;
  v21 = v12;
  sub_1A5248554();
  *v7 = v8;
  *(v7 + 1) = v9;
  v7[16] = v10;
  *(v7 + 3) = v11;
  v7[32] = v12;
  *(v7 + 5) = v14;
  *(v7 + 6) = v13;
  *(v7 + 7) = v15;
  *(v7 + 8) = 0x3FF0000000000000;
  *(v7 + 36) = 256;
  v19 = sub_1A3C38BD4();
  v20 = v16;
  sub_1A478F8AC();
  sub_1A3D5F9DC();
  sub_1A524AC94();

  return sub_1A479AE68(v7, sub_1A478F5A0);
}

uint64_t sub_1A4795FEC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 272))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_1A4796090@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 296))(*(a1 + a2 - 16));
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1A3C7146C;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  a3[1] = result;
  return result;
}

uint64_t sub_1A479611C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  v7 = a1[1];
  if (*a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = sub_1A3E30F88;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *(v5 + 304);
  sub_1A3D607F0(v6);
  return v10(v9, v8, v4, v5);
}

uint64_t sub_1A47961D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 320))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_1A4796220(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  v7 = *(v5 + 328);
  v8 = *a1;
  return v7(v6, v4, v5);
}

uint64_t sub_1A4796280@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14, char a15)
{
  *a9 = *a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 136) = a15;
  v16 = *(type metadata accessor for LemonadeCollectionCustomizationTitleField(0) + 44);
  *(a9 + v16) = swift_getKeyPath();
  sub_1A3F31578(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A4796318@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 664))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_1A47963BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1);
  v7 = *v6;
  type metadata accessor for LemonadeCollectionCustomizationView();
  sub_1A3C48C7C(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  sub_1A478C514(0, &unk_1EB121B78, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  sub_1A524B6A4();
  sub_1A524B974();
  MEMORY[0x1A5906C60]();
  (*(a4 + 400))(v7 * 0.5, v7 * 0.5, 0, a3, a4);
  return sub_1A524B904();
}

void sub_1A47965A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5248284();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5249234();
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadeCollectionCustomizationView();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - v12;
  v14 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A524B974();
  MEMORY[0x1A5906C60](v18);
  v19 = (*(a3 + 752))(a2, a3);
  (*(v14 + 8))(v17, a2);
  if (v19)
  {
    (*(v11 + 16))(v13, a1, v10);
    v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    (*(v11 + 32))(v21 + v20, v13, v10);
    sub_1A524B974();
    MEMORY[0x1A5906C60]();
    (*(a3 + 784))(sub_1A4797A38, v21, a2, a3);
    sub_1A524B904();
    v22 = a1 + *(v10 + 36);
    v23 = *v22;
    if (*(v22 + 8) == 1)
    {
      v25 = v23;
    }

    else
    {

      sub_1A524D254();
      v30 = sub_1A524A014();
      sub_1A5246DF4();

      v31 = v39;
      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3D35BAC(v23, 0);
      (*(v40 + 8))(v31, v41);
      v25 = v42;
      v23 = v42;
    }

    v24.value.super.isa = v23;
    LemonadeCollectionCustomizationViewModel.didComplete(undoManager:)(v24);
  }

  else
  {
    v26 = a1 + *(v10 + 36);
    v27 = *v26;
    if (*(v26 + 8) == 1)
    {
      v29 = v27;
    }

    else
    {

      sub_1A524D254();
      v32 = sub_1A524A014();
      sub_1A5246DF4();

      v33 = v39;
      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3D35BAC(v27, 0);
      (*(v40 + 8))(v33, v41);
      v29 = v42;
      v27 = v42;
    }

    v28.value.super.isa = v27;
    LemonadeCollectionCustomizationViewModel.didComplete(undoManager:)(v28);

    v34 = v36;
    sub_1A478C578(sub_1A4137EE8, sub_1A3E87388, MEMORY[0x1E697BF90], v36);
    sub_1A5248274();
    (*(v37 + 8))(v34, v38);
  }
}