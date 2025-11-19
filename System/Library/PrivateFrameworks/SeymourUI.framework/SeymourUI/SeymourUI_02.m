uint64_t sub_20B554150()
{
  v1 = sub_20C138B94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_20C138894();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_20B5542A0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5542D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55433C()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_20B55439C()
{
  v1 = sub_20C135AE4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B554474()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B55453C()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v0;
    v27 = v2;
    v28 = (v2 + 24) & ~v2;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v2 = v27;
    v0 = v45;
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_20B554D68()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B554DB4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B554DEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B554E64(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20B554EF0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B554F28()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v0;
    v27 = v2;
    v28 = (v2 + 40) & ~v2;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v2 = v27;
    v0 = v45;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B555748()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55580C()
{

  sub_20B583F4C(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_20B55588C()
{
  v1 = sub_20C136354();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B555990()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B5559DC()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B555A14()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B555A50()
{
  v1 = sub_20C1344C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_20C137254();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_20B555BA0()
{
  v1 = sub_20C13BA24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B555C64()
{
  v1 = sub_20C13B764();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_20C13BA24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_20B555E10()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B555E48()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B555E94()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B555ED4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B555F0C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B555F44()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20B555FA4()
{
  sub_20B9E75BC(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_20B555FF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769DF8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B556070(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769DF8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20B5560FC()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B556134()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B556268()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B556328()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B556408()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B556468()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_20B5564BC()
{
  sub_20B81F8C0();
  sub_20C132A24();
  __break(1u);
}

void sub_20B556558()
{
  sub_20B81F86C();
  sub_20C132A24();
  __break(1u);
}

uint64_t sub_20B5565CC()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B556614()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55664C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B556684()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B556730()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B556770()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5567A8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B5567F0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B556828()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5568AC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5568E4()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55691C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B556954()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55698C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B5569CC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B556A50()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B556A88()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B556AD0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B556B10()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B556B84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764350);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B556C30()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B556C68()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B556CA0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B556CF0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B556D28()
{
  v1 = sub_20C133954();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B556E00()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B556E38()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_20B556E78()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B556EDC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B556F30()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B556FA0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B556FEC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B557038()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B557070()
{
  sub_20B7197A0(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5570A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5570E8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B557140()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B557178()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B5571B0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5571F8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_20B557238()
{
  v1 = [v0 stackImage];

  return v1;
}

uint64_t sub_20B557280()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5572B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_20C132C14();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_20B5573E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_20C132C14();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20B557518()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B557550()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B557594()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B557624()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55765C()
{
  v1 = sub_20C135174();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_20C136C64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_20B5577DC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B557814()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55784C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B557884()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B5578D0()
{
  v1 = sub_20C135174();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B5579BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B557B20()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_20B557B78()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B557BB8()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20B557C04()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B557CF0()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B557D28()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B557D60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B557DA0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B557DD8()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B557E10()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B557E48()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B557F14()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_20B557F54()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B557F8C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B557FCC()
{
  v1 = sub_20C136C64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20B558068()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5580B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9SeymourUI20TVRootViewController_resignActiveObserver;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_20B558130()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5581CC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20B558228()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B558260()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5582B4()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5582EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55833C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5583C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20C133784();
  *a1 = result;
  return result;
}

void sub_20B5583F0(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_20B5584A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5584D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B558528()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55857C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5585D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C1341A4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20B558644(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C1341A4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20B5586B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B558708()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v0;
    v27 = v2;
    v28 = (v2 + 24) & ~v2;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v2 = v27;
    v0 = v45;
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_20B558F34()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B558FF0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B559028(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B5590A0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20B55912C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B559164()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v0;
    v27 = v2;
    v28 = (v2 + 40) & ~v2;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v2 = v27;
    v0 = v45;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B5599C8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B559A04()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B559A3C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B559A7C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B559B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B88);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20B559BC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B88);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20B559C84()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B559CBC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B559CF8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B559D44()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B559D88()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B559DD4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B559E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C134EC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_20C133E24();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_20C135524();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_20B559F7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_20C134EC4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_20C133E24();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_20C135524();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_20B55A0C8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55A100()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55A150()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55A18C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

id sub_20B55A1D0()
{
  v0 = objc_allocWithZone(MEMORY[0x277D752C0]);

  return [v0 init];
}

uint64_t sub_20B55A21C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55A258()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55A29C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55A2D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55A31C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55A474()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55A51C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55A5BC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55A61C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55A65C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55A6A8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55A714(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C134EC4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20B55A780(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C134EC4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20B55A7F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55A83C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B55A87C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55A8B4()
{
  v1 = sub_20C138204();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B55A978()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B55A9B0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55AA20()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B55AA60@<X0>(void *a1@<X8>)
{
  result = sub_20C134194();
  *a1 = v3;
  return result;
}

uint64_t sub_20B55AA8C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55AAC4()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B55ABF8()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B55ACB8()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B55AD98()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55ADF8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55AE38()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55AE7C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55AEB4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55AEF0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B55AF28()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55AFA4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55AFDC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55B068()
{
  v1 = sub_20C135814();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B55B134()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55B174()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_20B55B1D0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B55B22C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55B264@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20C133B44();
  *a1 = result;
  return result;
}

uint64_t sub_20B55B290()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55B2C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55B328()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55B360()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B55B3C4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B55B424()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55B45C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55B4C8()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55B500()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20B55B550()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55B588()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B55B5D4()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55B60C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55B678()
{
  v1 = sub_20C135174();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B55B73C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55B77C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B55B7C4()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20B55B874()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55B8B4()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55B8EC()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B55BA20()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B55BAE0()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B55BBC0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55BC20()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55BC84()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55BCBC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55BD1C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55BD68()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55BDA0()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B55BED4()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B55BF94()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B55C074()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55C0D4()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55C11C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55C154()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B55C288()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B55C348()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B55C428()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55C488()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55C4C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55C50C()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_20B55C598()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55C5D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55C620()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55C670()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55C6D8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20B55C720()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B55C76C()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_20B55C7B8()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B55C808()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B55C89C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B55C984()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55CBA8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55CC20()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55CC58()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55CC90()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B55CCD0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B55CD14()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B55CD4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55CD9C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55CE6C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55CEA4()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B55CFD8()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B55D098()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B55D178()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55D1D8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55D220()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55D258()
{
  v1 = (type metadata accessor for MetadataEntry() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  sub_20BC1B034(*(v0 + v3 + 8));

  v5 = v1[9];
  v6 = sub_20C132EE4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B55D35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_20C132E94();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20B55D408(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_20C132E94();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20B55D4AC()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_20B55D4F4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B55D544()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55D580()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55D5C8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B55D610()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B55D650()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55D688()
{

  return MEMORY[0x2821FE8E8](v0, 34, 7);
}

uint64_t sub_20B55D6C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55D700()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B55D748()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55D780()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55D7BC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B55D7F4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55D82C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B55D8C0()
{
  v1 = type metadata accessor for NavigationSharingURLInfo();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v9 = *(*(v1 - 8) + 64);

  v4 = sub_20C132C14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v3, v4);
  v7 = *(v1 + 20);
  if (!(*(v5 + 48))(v0 + v3 + v7, 1, v4))
  {
    v6(v0 + v3 + v7, v4);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v9, v2 | 7);
}

uint64_t sub_20B55DA6C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55DAA4()
{
  v1 = sub_20C138B94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_20C138894();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_20B55DC08()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55DC40()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55DCA0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55DD40()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55DD90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55DE90()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55DEC8()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B55DFFC()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B55E0BC()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B55E19C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55E1FC()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55E23C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55E274()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55E300()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B55E344()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B55E37C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55E3B8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B55E400()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55E438()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55E478()
{

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_20B55E4C4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B55E504()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B55E558()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76E940);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B55E5EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55E624()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C590);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B55E6D0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55E7B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55E7F4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B55E834()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55E86C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55E8CC()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55E910()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55E948()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_20B55E980@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_20B55EEF0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55EF28()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B55EFEC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55F02C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55F064()
{
  v1 = sub_20C1377C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B55F140()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55F1C4()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20B55F20C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B55F24C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55F28C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B55F2C4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55F370()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B55F3E8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55F420()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55F458()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B55F4A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55F4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorkoutPlanScheduledItemUpdate.Operation(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 7)
    {
      return v12 - 6;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_20B55F5A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WorkoutPlanScheduledItemUpdate.Operation(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 6;
  }

  return result;
}

uint64_t sub_20B55F664()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B55F6A4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B55F6DC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B55F714()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B55F758()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55F7D0()
{
  v1 = sub_20C134DC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B55F8BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B55F908()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55F940()
{
  v1 = type metadata accessor for WorkoutSessionConfiguration();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_20C1344C4();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[5];
  v8 = sub_20C137254();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[7];
  sub_20C13A484();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_20C137EA4();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v1[9];
  v12 = sub_20C13BA24();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v5 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  v14 = v1[10];
  v15 = sub_20C134A44();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v5 + v14, 1, v15))
  {
    (*(v16 + 8))(v5 + v14, v15);
  }

  if (*(v5 + v1[11] + 8) >= 0xCuLL)
  {
  }

  v17 = v1[12];
  v18 = sub_20C135C54();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v5 + v17, 1, v18))
  {
    (*(v19 + 8))(v5 + v17, v18);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B55FD54()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B55FE74()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B55FEAC()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B55FFE0()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B5600A0()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B560180()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5601E0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B560220()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B560284()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5602BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5602F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764208);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B5603A0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5603F0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B560428()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B560488()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5604D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B560520()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B560558()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B560590()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5605C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B560600()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B5606AC()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5606EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B560738()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B560778()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5607B0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B5607E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B560828()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_20B560894()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764170);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20B56093C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B560974()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5609D8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B560A10()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_20B560A4C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B560A88()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B560AC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76D1B8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B560B3C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76D1B8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20B560BC8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B560C44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B560CD8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B560D10()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B560D5C()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v2;
    v27 = v0;
    v28 = v3;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v0 = v27;
    v2 = v45;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B561574()
{
  v1 = sub_20C135024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B561618()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B561658()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B561690()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B5616C8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B561714()
{
  v1 = sub_20C1388F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B5617EC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5618BC()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_20B5618F4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B56197C@<X0>(uint64_t *a1@<X8>)
{
  sub_20C132874();
  result = sub_20C132864();
  *a1 = result;
  return result;
}

uint64_t sub_20B5619DC()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B561A14()
{

  sub_20B786774(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20B561A78()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B561AB8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B561B38()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B561B74()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B561BB4()
{

  v1 = *(v0 + 64);
  if (v1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 137, 7);
}

uint64_t sub_20B561C20()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B561C90()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B561CCC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B561D0C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B561D44()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B561D84()
{
  v1 = sub_20C133954();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_20C135814();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x2821FE8E8](v0, ((((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

uint64_t sub_20B561F60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B561FD4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B56201C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B562074()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5620AC()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B5621E0()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B5622A0()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B562380()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5623E0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B562428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_20C134A74();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_20B5624A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_20C134A74();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_20B562538()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B562570()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5625A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B562654()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5627CC()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B562808()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B562844()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5628D8()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B562910()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B562A44()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B562B04()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B562BE4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B562C44()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B562C8C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B562CC4()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B562DF8()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B562EB8()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B562F98()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B562FF8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B563044()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B563120()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B56317C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5631BC()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B56323C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_20C132EE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_20B5632E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_20C132EE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20B56338C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C132EE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20B563448(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C132EE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20B563548()
{
  v1 = sub_20C13C1F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B5635F0()
{
  v1 = sub_20C13C1F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B5636BC()
{
  v1 = *(type metadata accessor for WorkoutPlanArtworkV2.Day(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_20C13C1F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7 + 16) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = sub_20C132EE4();
  (*(*(v11 - 8) + 8))(v0 + v3, v11);

  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_20B563850()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B56388C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5638C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B563924()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B563990()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5639C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B563AA0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B563AE0()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B563B18()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B563C4C()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B563D0C()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B563DEC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B563E4C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B563E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C1365F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_20B563F64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C1365F4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t sub_20B56401C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20C1362C4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_20B564060(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_20B5640CC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5641BC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B5641F4()
{
  v1 = *(type metadata accessor for MarketingUserInterfaceResource() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_11;
      }

      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C764260;
    }

    else
    {
      v9 = sub_20C132C14();
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      v7 = &unk_27C764258;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v10 = sub_20C132C14();
    (*(*(v10 - 8) + 8))(v0 + v3, v10);
    v7 = &unk_27C767A30;
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(v7);
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v8 = sub_20C132C14();
    (*(*(v8 - 8) + 8))(v0 + v3, v8);
  }

LABEL_11:

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B5643F4()
{
  v1 = type metadata accessor for NavigationRequest();
  v53 = *(*(v1 - 8) + 80);
  v2 = (v53 + 16) & ~v53;
  v50 = *(*(v1 - 8) + 64);
  v3 = sub_20C1388F4();
  v4 = *(v3 - 8);
  v48 = *(v4 + 80);
  v47 = *(v4 + 64);
  v52 = sub_20C139354();
  v49 = *(v52 - 8);
  v46 = *(v49 + 80);
  v45 = *(v49 + 64);
  v51 = v2;
  v5 = (v0 + v2);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v2, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v2, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v2, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v7);
      (*(v4 + 8))(v5 + *(v17 + 48), v3);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v2, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v2, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v18 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v22 = sub_20C1344C4();
      v23 = *(v22 - 8);
      if (!(*(v23 + 48))(&v18[v21], 1, v22))
      {
        (*(v23 + 8))(&v18[v21], v22);
      }

      break;
    case 4:

      break;
    case 3:
      v20 = sub_20C139144();
      (*(*(v20 - 8) + 8))(v18, v20);
      break;
  }

  v24 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v25 = swift_getEnumCaseMultiPayload();
  v26 = v3;
  if (v25 == 1)
  {
    v31 = sub_20C135024();
    (*(*(v31 - 8) + 8))(v24, v31);
  }

  else if (!v25)
  {
    v27 = sub_20C132C14();
    v28 = *(v27 - 8);
    v29 = *(v28 + 8);
    v29(v24, v27);
    v30 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v28 + 48))(&v24[v30], 1, v27))
    {
      v29(&v24[v30], v27);
    }
  }

  v32 = (v51 + v50 + v48) & ~v48;
  v33 = (v47 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + v46 + 41) & ~v46;
  (*(v4 + 8))(v0 + v32, v26);
  __swift_destroy_boxed_opaque_existential_1(v0 + v33);
  (*(v49 + 8))(v0 + v34, v52);

  return MEMORY[0x2821FE8E8](v0, v45 + v34 + 1, v53 | v48 | v46 | 7);
}

uint64_t sub_20B564D1C()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v36 = v11[9];
        v37 = sub_20C13BA24();
        v38 = *(v37 - 8);
        if (!(*(v38 + 48))(v5 + v36, 1, v37))
        {
          (*(v38 + 8))(v5 + v36, v37);
        }

        v39 = v11[10];
        v40 = sub_20C134A44();
        v41 = *(v40 - 8);
        if (!(*(v41 + 48))(v5 + v39, 1, v40))
        {
          (*(v41 + 8))(v5 + v39, v40);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v42 = v11[12];
        v43 = sub_20C135C54();
        v44 = *(v43 - 8);
        if (!(*(v44 + 48))(v5 + v42, 1, v43))
        {
          (*(v44 + 8))(v5 + v42, v43);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v46 = v2;
    v27 = v0;
    v28 = v3;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v0 = v27;
    v2 = v46;
  }

  v35 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v0 + v35);

  return MEMORY[0x2821FE8E8](v0, v35 + 40, v2 | 7);
}

uint64_t sub_20B565554()
{
  v1 = sub_20C136354();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B565604()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B565640()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5656B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B565704()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_20B56573C()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v36 = v11[9];
        v37 = sub_20C13BA24();
        v38 = *(v37 - 8);
        if (!(*(v38 + 48))(v5 + v36, 1, v37))
        {
          (*(v38 + 8))(v5 + v36, v37);
        }

        v39 = v11[10];
        v40 = sub_20C134A44();
        v41 = *(v40 - 8);
        if (!(*(v41 + 48))(v5 + v39, 1, v40))
        {
          (*(v41 + 8))(v5 + v39, v40);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v42 = v11[12];
        v43 = sub_20C135C54();
        v44 = *(v43 - 8);
        if (!(*(v44 + 48))(v5 + v42, 1, v43))
        {
          (*(v44 + 8))(v5 + v42, v43);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v46 = v0;
    v27 = v2;
    v28 = (v2 + 24) & ~v2;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v2 = v27;
    v0 = v46;
  }

  v35 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_1(v0 + v35);

  return MEMORY[0x2821FE8E8](v0, v35 + 40, v2 | 7);
}

uint64_t sub_20B565F78()
{
  v1 = *(sub_20C13A484() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_20C137EA4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_20B566090()
{
  v1 = sub_20C1344C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B5661C8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B566200()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_20B566240()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B566280()
{

  return MEMORY[0x2821FE8E8](v0, 37, 7);
}

uint64_t sub_20B5662B8()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_20B5662F0()
{
  v1 = sub_20C135AE4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B5663D0()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B566408()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B56653C()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B5665FC()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B5666DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B56673C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B566788()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5667C0()
{
  v1 = (type metadata accessor for PageAlertAction() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_20C132EE4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  if (*(v0 + v3 + v1[9]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B5668CC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B566914()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B566960()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5669B0()
{

  sub_20B7197A0(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B566A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_20C137C24();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20B566AC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_20C137C24();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20B566B68()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_20B566BA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E728);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B566C20(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E728);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20B566CB4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B566CEC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B566D2C()
{
  v1 = *(type metadata accessor for WorkoutPlanScheduleUpdated() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_20C1357B4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B566E08()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B566E48()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B566E88()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B566EF4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B566F2C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B566F64()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B566FA4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B566FE4()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_20B56703C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76E940);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B5670D0()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B567108()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B567148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C132E94();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20B567208(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C132E94();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20B5672C4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5672FC()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20B567334()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B56736C()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_20B5673A4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B5673DC()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B56742C()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_20B567600()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B567638()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B567678()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5676F0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B567744@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20C137B84();
  *a1 = result;
  return result;
}

uint64_t sub_20B567798()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5677D0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B567808()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B567840()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_20B567884()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5678BC()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B5679F0()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B567AB0()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B567B90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B567BF0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B567C38()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B567C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C132EE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_20B567D44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C132EE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_20B567E00()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B567E38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20B567EE0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B567F1C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B567F60()
{
  v1 = sub_20C138204();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B568024()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B568060()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B568098()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B5681CC()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B56828C()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B56836C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5683CC()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B568414()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B568454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NavigationRequest();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_20B56856C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NavigationRequest();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20B5686CC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B56872C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B56876C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5687A4()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B5687F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ButtonAction.ActionType(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_20B5688B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for ButtonAction.ActionType(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20B568A10()
{
  v1 = sub_20C134014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v10 | 7);
}

uint64_t sub_20B568B84()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B568C50()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B568C88()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B568CC0()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B568DB4()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_20B568DEC()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B568E24()
{
  v1 = sub_20C134014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B568F00()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B568F60()
{
  v1 = sub_20C134014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20B569038()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B569084()
{
  v17 = sub_20C134014();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v16 = sub_20C137254();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_20C134D54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v15 = *(v10 + 64);
  v13 = v2 | v6 | v11;
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return MEMORY[0x2821FE8E8](v0, v12 + v15, v13 | 7);
}

uint64_t sub_20B569260()
{
  v1 = sub_20C134014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_20C137254();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_20B56940C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B569688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C134EC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_20B569754(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C134EC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_20B569840()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5698D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B569924()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B56995C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5699C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C135814();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B569A34(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_20C135814();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20B569AB4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B569AF0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B569B30()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B569B68()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B569C9C()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B569D5C()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B569E3C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B569E9C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B569EDC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B569F20()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B569F58()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B569FF8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B56A030()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI8ShelfRowV18ImpressionBehaviorO_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20B56A088()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B56A0C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B56A11C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B56A174()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B56A1AC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B56A1F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_display;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20B56A24C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_display;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_20B56A2B0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B56A2EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B56A334()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B56A36C()
{
  v1 = sub_20C1344C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 26) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B56A430()
{
  v1 = sub_20C1344C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B56A4F8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B56A548()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_20B56A598()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B56A5E0()
{
  v1 = sub_20C138954();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B56A668()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B56A6A0()
{
  v1 = sub_20C138894();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B56A764()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B56A7B0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B56A7FC()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B56A83C()
{
  v1 = sub_20C138894();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20B56A968()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B56A9A0()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20B56A9D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B56AA14()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B56AA4C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B56AA84()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B56AAF4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20C1344C4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  v11 = sub_20C137254();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  v14 = sub_20C13A484();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BBB0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[10];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[12];
    goto LABEL_13;
  }

  v19 = *(a1 + a3[13] + 8);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  v20 = v19 - 1;
  if (v20 < 0)
  {
    v20 = -1;
  }

  return (v20 + 1);
}

uint64_t sub_20B56AD54(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_20C1344C4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_20C137254();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_20C13A484();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[7];
      }

      else
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[9];
        }

        else
        {
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BBB0);
          if (*(*(v18 - 8) + 84) == a3)
          {
            v10 = v18;
            v14 = *(v18 - 8);
            v15 = a4[10];
          }

          else
          {
            result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
            if (*(*(result - 8) + 84) != a3)
            {
              *(a1 + a4[13] + 8) = a2;
              return result;
            }

            v10 = result;
            v14 = *(result - 8);
            v15 = a4[12];
          }
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20B56AFA4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B56AFDC()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B56B018()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B56B058()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B56B0A4()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B56B0E4()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B56B11C()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B56B250()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B56B310()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B56B3F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B56B450()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B56B498()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B56B4E8()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B56B520()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B56B558()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B56B594()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v0;
    v27 = v2;
    v28 = (v2 + 24) & ~v2;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v2 = v27;
    v0 = v45;
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_20B56BDC0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B56BE0C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B56BE44()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v2;
    v27 = (v2 + 16) & ~v2;
    v28 = v0;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v0 = v28;
    v3 = v27;
    v2 = v45;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B56C654()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20B56C6B0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B56C6F0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B56C764()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B56C7B8()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B56C7F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B56C894()
{
  v1 = type metadata accessor for WorkoutPlanSwappableItem();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 40);
  if (v6 != 255)
  {
    sub_20B583F4C(*(v5 + 24), *(v5 + 32), v6 & 1);
  }

  v7 = *(v1 + 28);
  v8 = sub_20C135C54();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B56CFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C134EC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_20B56D0B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C134EC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_20B56D174()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B56D1AC()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B56D2E0()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B56D3A0()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B56D480()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B56D4E0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B56D5AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B56D5EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B56D64C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B56D690()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20B56D6D8()
{
  v1 = sub_20C133474();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B56D79C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B56D7D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B56D880()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B56D8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_20C135C54();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20B56D984(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_20C135C54();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20B56DA28(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C135174();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20B56DA94(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C135174();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20B56DB04()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B56DF7C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B56DFB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F968);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B56E02C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F968);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20B56E0B8()
{
  v1 = v0;
  v2 = type metadata accessor for NavigationRouterRequest();
  v3 = *(*(v2 - 8) + 80);
  v47 = *(*(v2 - 8) + 64);
  v48 = (v3 + 16) & ~v3;
  v4 = (v0 + v48);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v7 = sub_20C132C14();
      (*(*(v7 - 8) + 8))(v4, v7);
      v6 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v8 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v15 = sub_20C1387E4();
      (*(*(v15 - 8) + 8))(v4, v15);
      v6 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v5 = sub_20C138894();
      (*(*(v5 - 8) + 8))(v4, v5);
      v6 = &unk_27C763FD0;
LABEL_17:
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v6) + 48);
      v17 = sub_20C1388F4();
      (*(*(v17 - 8) + 8))(v4 + v16, v17);
      break;
    case 9u:
      v8 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v8 = sub_20C138204();
LABEL_11:
      (*(*(v8 - 8) + 8))(v4, v8);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v9 = sub_20C1344C4();
        (*(*(v9 - 8) + 8))(v4, v9);
        v10 = type metadata accessor for WorkoutSessionConfiguration();
        v11 = v10[5];
        v12 = sub_20C137254();
        (*(*(v12 - 8) + 8))(v4 + v11, v12);
        v13 = v10[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v14 = sub_20C137EA4();
          (*(*(v14 - 8) + 8))(v4 + v13, v14);
        }

        else
        {
        }

        v36 = v10[9];
        v37 = sub_20C13BA24();
        v38 = *(v37 - 8);
        if (!(*(v38 + 48))(v4 + v36, 1, v37))
        {
          (*(v38 + 8))(v4 + v36, v37);
        }

        v39 = v10[10];
        v40 = sub_20C134A44();
        v41 = *(v40 - 8);
        if (!(*(v41 + 48))(v4 + v39, 1, v40))
        {
          (*(v41 + 8))(v4 + v39, v40);
        }

        if (*(v4 + v10[11] + 8) >= 0xC)
        {
        }

        v42 = v10[12];
        v43 = sub_20C135C54();
        v44 = *(v43 - 8);
        if (!(*(v44 + 48))(v4 + v42, 1, v43))
        {
          (*(v44 + 8))(v4 + v42, v43);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v18 = type metadata accessor for NavigationRequest();
  v19 = v4 + *(v18 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v4 + *(v18 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v33 = sub_20C135024();
    (*(*(v33 - 8) + 8))(v25, v33);
  }

  else if (!v26)
  {
    v46 = v2;
    v27 = v3;
    v28 = v1;
    v29 = sub_20C132C14();
    v30 = *(v29 - 8);
    v31 = *(v30 + 8);
    v31(v25, v29);
    v32 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v30 + 48))(&v25[v32], 1, v29))
    {
      v31(&v25[v32], v29);
    }

    v1 = v28;
    v3 = v27;
    v2 = v46;
  }

  v34 = *(v2 + 20);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  (*(*(v35 - 8) + 8))(v4 + v34, v35);

  return MEMORY[0x2821FE8E8](v1, v48 + v47, v3 | 7);
}

uint64_t sub_20B56E930()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B56E968()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v2;
    v27 = (v2 + 16) & ~v2;
    v28 = v0;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v0 = v28;
    v3 = v27;
    v2 = v45;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B56F1B4()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v2;
    v27 = v0;
    v28 = v3;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v0 = v27;
    v2 = v45;
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_20B56F9D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B56FA10()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B56FB28()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B56FB60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FA58);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B56FC38()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B56FC70()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B56FCA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B56FD54()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B56FD94()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B56FDD0()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v0;
    v27 = v2;
    v28 = (v2 + 16) & ~v2;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v2 = v27;
    v0 = v45;
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_20B570674()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v0;
    v27 = v2;
    v28 = (v2 + 56) & ~v2;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v2 = v27;
    v0 = v45;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B570E9C()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v0;
    v27 = v2;
    v28 = (v2 + 48) & ~v2;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v2 = v27;
    v0 = v45;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B5716BC()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B571708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769748);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_20B5717DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769748);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_20B5718EC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B571924()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B571AB8()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_20B571AF8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B571B38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9SeymourUI18RootViewController_resignActiveObserver;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_20B571B98()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B571BE0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_20B571C34()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B571C74()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B571CB0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B571D24()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_20B571D5C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 videoBounds];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_20B571D94()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B571DCC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B571E0C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B571E44()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B571E84()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B571EC4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B571F04()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B571F5C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B571F94()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B5720C8()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B572188()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B572268()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5722C8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B572308()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B572348()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B572380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20B57243C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20B5724EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_20C132C14();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20B572598(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_20C132C14();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20B57263C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B5726A8()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5726E0()
{
  v1 = sub_20C134014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_20C137254();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (((*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_20B572844()
{
  v1 = sub_20C134014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20B5728E0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57291C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B572984()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B572A58()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B572AB8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B572AF8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B572B40()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B572B78()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B572BF0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B572C28()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}