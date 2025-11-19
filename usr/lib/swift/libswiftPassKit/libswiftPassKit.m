uint64_t JPKIPassContents.init(_:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_299B21EE4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_299B21EC4();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A14CB0A0, &qword_299B225F8);
  v2[10] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v11 = sub_299B21E84();
  v2[12] = v11;
  v12 = *(v11 - 8);
  v2[13] = v12;
  v13 = *(v12 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_299B16850, 0, 0);
}

uint64_t sub_299B16850()
{
  sub_299B1C560(*(v0 + 24));
  if (v1)
  {
    v2 = sub_299B21F84();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    *(v0 + 128) = sub_299B21F24();
    v5 = *(MEMORY[0x29EDC6608] + 4);

    v6 = swift_task_alloc();
    *(v0 + 136) = v6;
    *v6 = v0;
    v6[1] = sub_299B169F0;
    v7 = *(v0 + 88);

    return MEMORY[0x2A1C68F98](v7);
  }

  else
  {
    v8 = *(v0 + 24);
    sub_299B1C63C();
    swift_allocError();
    *v9 = 4;
    *(v9 + 8) = 2;
    swift_willThrow();

    v11 = *(v0 + 112);
    v10 = *(v0 + 120);
    v12 = *(v0 + 88);
    v13 = *(v0 + 72);
    v14 = *(v0 + 48);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_299B169F0()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2A1C73D48](sub_299B16B08, 0, 0);
}

uint64_t sub_299B16B08()
{
  v1 = v0[10];
  v2 = v0[11];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = v0[15];
    v5 = v0[13];
    v4 = v0[14];
    v6 = v0[12];
    v7 = v0[3];
    v8 = *(v5 + 32);
    v8(v3, v2, v6);
    sub_299B1D434(&qword_2A14CB0B0, MEMORY[0x29EDC65D0]);
    swift_willThrowTypedImpl();
    v8(v4, v3, v6);
    sub_299B1C63C();
    swift_allocError();
    sub_299B16F74(v4, v9);
    swift_willThrow();

    (*(v5 + 8))(v4, v6);

    v11 = v0[14];
    v10 = v0[15];
    v12 = v0[11];
    v13 = v0[9];
    v14 = v0[6];

    v15 = v0[1];
    goto LABEL_22;
  }

  v16 = *v2;
  v17 = *(*v2 + 16);
  if (!v17)
  {
    v30 = v0[3];
    v31 = *v2;

    v41 = 0;
    v29 = 0;
    goto LABEL_21;
  }

  v44 = 0;
  v46 = 0;
  v18 = v0[8];
  v19 = v0[5];
  v51 = v16 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v20 = (v19 + 88);
  v50 = *MEMORY[0x29EDC65E0];
  v49 = *MEMORY[0x29EDC65E8];
  v47 = (v19 + 8);
  v48 = *(*v2 + 16);
  v45 = v17 - 1;
  v21 = 0;
  do
  {
    while (1)
    {
      if (v21 >= *(v16 + 16))
      {
        __break(1u);
LABEL_28:
        v41 = 0;
        goto LABEL_20;
      }

      v22 = v0[9];
      v24 = v0[6];
      v23 = v0[7];
      v25 = v0[4];
      (*(v18 + 16))(v22, v51 + *(v18 + 72) * v21, v23);
      v26 = v21 + 1;
      sub_299B21EB4();
      (*(v18 + 8))(v22, v23);
      v27 = (*v20)(v24, v25);
      if (v27 != v50)
      {
        break;
      }

      v46 = 1;
      if (v45 == v21)
      {
        v41 = v0[16];
        v42 = v0[3];

        goto LABEL_16;
      }

LABEL_13:
      v21 = v26;
    }

    if (v27 == v49)
    {
      v26 = v21 + 1;
      v44 = 1;
      if (v45 == v21)
      {
        v43 = v0[3];

        if (v46)
        {
          v41 = v0[16];

          goto LABEL_20;
        }

        goto LABEL_28;
      }

      goto LABEL_13;
    }

    (*v47)(v0[6], v0[4]);
    ++v21;
  }

  while (v48 != v26);
  v28 = v0[3];

  if (v46)
  {
    v41 = v0[16];
LABEL_16:

    if ((v44 & 1) == 0)
    {
      v29 = 0;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v41 = 0;
  v29 = 0;
  if ((v44 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_20:
  v32 = v0[16];

LABEL_21:
  v33 = v0[15];
  v34 = v0[16];
  v35 = v0[14];
  v36 = v0[11];
  v37 = v0[9];
  v38 = v0[6];
  v39 = v0[2];
  *v39 = v41;
  v39[1] = v29;
  v39[2] = v34;

  v15 = v0[1];
LABEL_22:

  return v15();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_299B16F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_299B21E84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8]();
  v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v8, a1, v4);
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x29EDC6568] || result == *MEMORY[0x29EDC6540])
  {
    goto LABEL_6;
  }

  if (result != *MEMORY[0x29EDC6578])
  {
    if (result != *MEMORY[0x29EDC6550] && result != *MEMORY[0x29EDC6580] && result != *MEMORY[0x29EDC6588] && result != *MEMORY[0x29EDC6558] && result != *MEMORY[0x29EDC6560] && result != *MEMORY[0x29EDC65A8])
    {
      if (result == *MEMORY[0x29EDC6598])
      {
        result = (*(v5 + 8))(v8, v4);
        v11 = 1;
        goto LABEL_8;
      }

      if (result == *MEMORY[0x29EDC65C0])
      {
        result = (*(v5 + 96))(v8, v4);
        *a2 = *v8;
        v12 = 1;
        goto LABEL_10;
      }

      if (result != *MEMORY[0x29EDC6570] && result != *MEMORY[0x29EDC65B8])
      {
        if (result == *MEMORY[0x29EDC65A0])
        {
          result = (*(v5 + 8))(v8, v4);
          *a2 = 0;
          goto LABEL_9;
        }

        if (result != *MEMORY[0x29EDC65B0] && result != *MEMORY[0x29EDC6590])
        {
          if (result == *MEMORY[0x29EDC65C8])
          {
            *a2 = 0;
            v12 = 1;
            goto LABEL_10;
          }

          if (result != *MEMORY[0x29EDC6548])
          {
            *a2 = 4;
            *(a2 + 8) = 2;
            return (*(v5 + 8))(v8, v4);
          }
        }

        goto LABEL_7;
      }
    }

LABEL_6:
    result = (*(v5 + 8))(v8, v4);
LABEL_7:
    v11 = 5;
LABEL_8:
    *a2 = v11;
LABEL_9:
    v12 = 2;
LABEL_10:
    *(a2 + 8) = v12;
    return result;
  }

  (*(v5 + 96))(v8, v4);
  v13 = *v8;
  type metadata accessor for LAError(0);
  v19[0] = v13;
  sub_299B1D850(MEMORY[0x29EDCA190]);
  sub_299B1D434(&qword_2A14CB2C8, type metadata accessor for LAError);
  result = sub_299B21E14();
  *a2 = v19[1];
  *(a2 + 8) = 0;
  return result;
}

uint64_t JPKIPassContents.UserIdentity.authenticationTriesRemaining.getter()
{
  v2 = sub_299B21EE4();
  v1[2] = v2;
  v3 = *(v2 - 8);
  v1[3] = v3;
  v4 = *(v3 + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v5 = sub_299B21EC4();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = sub_299B21E84();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A14CB0A0, &qword_299B225F8);
  v1[12] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v13 = swift_task_alloc();
  v1[13] = v13;
  v14 = *v0;
  v15 = *(MEMORY[0x29EDC6608] + 4);
  v16 = swift_task_alloc();
  v1[14] = v16;
  *v16 = v1;
  v16[1] = sub_299B17510;

  return MEMORY[0x2A1C68F98](v13);
}

uint64_t sub_299B17510()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2A1C73D48](sub_299B1760C, 0, 0);
}

uint64_t sub_299B1760C()
{
  v1 = v0[12];
  v2 = v0[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = v0[11];
    v4 = v0[9];
    v5 = *(v0[10] + 32);
    v5(v3, v2, v4);
    sub_299B1D434(&qword_2A14CB0B0, MEMORY[0x29EDC65D0]);
    swift_willThrowTypedImpl();
    swift_allocError();
    v5(v6, v3, v4);
LABEL_9:
    v19 = v0[13];
    v20 = v0[11];
    v21 = v0[8];
    v23 = v0[4];
    v22 = v0[5];

    v24 = v0[1];

    return v24();
  }

  result = *v2;
  v36 = *(*v2 + 16);
  if (!v36)
  {
LABEL_8:

    sub_299B1C63C();
    swift_allocError();
    *v18 = 5;
    *(v18 + 8) = 2;
    swift_willThrow();
    goto LABEL_9;
  }

  v8 = 0;
  v9 = v0[7];
  v10 = v0[3];
  v34 = *MEMORY[0x29EDC65E0];
  v33 = (v10 + 104);
  v11 = (v10 + 8);
  v35 = (v9 + 8);
  while (1)
  {
    if (v8 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v12 = v0[5];
    v13 = v0[4];
    v14 = v0[2];
    v15 = result;
    (*(v9 + 16))(v0[8], result + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8, v0[6]);
    sub_299B21EB4();
    (*v33)(v13, v34, v14);
    v16 = sub_299B21ED4();
    v17 = *v11;
    (*v11)(v13, v14);
    v17(v12, v14);
    if (v16)
    {
      break;
    }

    ++v8;
    (*v35)(v0[8], v0[6]);
    result = v15;
    if (v36 == v8)
    {
      goto LABEL_8;
    }
  }

  v25 = v0[13];
  v26 = v0[11];
  v27 = v0[8];
  v29 = v0[5];
  v28 = v0[6];
  v30 = v0[4];

  v31 = sub_299B21EA4();
  (*v35)(v27, v28);

  v32 = v0[1];

  return v32(v31);
}

uint64_t JPKIPassContents.UserIdentity.certificate(using:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = sub_299B21F14();
  *(v3 + 24) = v5;
  v6 = *(v5 - 8);
  *(v3 + 32) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v8 = sub_299B21EE4();
  *(v3 + 48) = v8;
  v9 = *(v8 - 8);
  *(v3 + 56) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A14CB0B8, &qword_299B22610);
  *(v3 + 72) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  v13 = sub_299B21E84();
  *(v3 + 88) = v13;
  v14 = *(v13 - 8);
  *(v3 + 96) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  v16 = swift_task_alloc();
  *(v3 + 152) = *a2;
  v17 = *(a2 + 8);
  v18 = *(a2 + 16);
  *(v3 + 112) = v16;
  *(v3 + 120) = v17;
  v19 = *v2;
  *(v3 + 128) = v18;
  *(v3 + 136) = v19;

  return MEMORY[0x2A1C73D48](sub_299B17B6C, 0, 0);
}

uint64_t sub_299B17B6C()
{
  v1 = *(v0 + 152);
  (*(*(v0 + 56) + 104))(*(v0 + 64), *MEMORY[0x29EDC65E0], *(v0 + 48));
  if (v1 == 1)
  {
    (*(*(v0 + 32) + 104))(*(v0 + 40), *MEMORY[0x29EDC65F0], *(v0 + 24));
  }

  else
  {
    v2 = *(v0 + 128);
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v5 = *(v0 + 24);
    *v3 = *(v0 + 120);
    v3[1] = v2;
    v6 = *MEMORY[0x29EDC65F8];
    (*(v4 + 104))();
  }

  v7 = *(MEMORY[0x29EDC6610] + 4);
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *v8 = v0;
  v8[1] = sub_299B17C9C;
  v9 = *(v0 + 136);
  v10 = *(v0 + 80);
  v11 = *(v0 + 64);
  v12 = *(v0 + 40);

  return MEMORY[0x2A1C68FA0](v10, v11, v12);
}

uint64_t sub_299B17C9C()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 32);
  v7 = *(*v0 + 24);
  v9 = *v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2A1C73D48](sub_299B17E50, 0, 0);
}

uint64_t sub_299B17E50()
{
  v1 = v0[9];
  v2 = v0[10];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = v0[13];
    v4 = v0[14];
    v5 = v0[11];
    v6 = v0[12];
    v7 = v0[8];
    v8 = v0[5];
    v9 = *(v6 + 32);
    v9(v4, v2, v5);
    sub_299B1D434(&qword_2A14CB0B0, MEMORY[0x29EDC65D0]);
    swift_willThrowTypedImpl();
    v9(v3, v4, v5);
    sub_299B1C63C();
    swift_allocError();
    sub_299B16F74(v3, v10);
    swift_willThrow();
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    v13 = v0[13];
    v12 = v0[14];
    v14 = v0[8];
    v15 = v0[5];
    v16 = v0[2];
    v17 = *v2;
    v18 = sub_299B21E94();
    v20 = v19;

    *v16 = v18;
    v16[1] = v20;
  }

  v11 = v0[1];

  return v11();
}

uint64_t JPKIPassContents.UserIdentity.signature(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  v7 = sub_299B21F14();
  *(v5 + 40) = v7;
  v8 = *(v7 - 8);
  *(v5 + 48) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  v10 = sub_299B21EE4();
  *(v5 + 64) = v10;
  v11 = *(v10 - 8);
  *(v5 + 72) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A14CB0C0, &qword_299B22620);
  *(v5 + 88) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v15 = sub_299B21E84();
  *(v5 + 104) = v15;
  v16 = *(v15 - 8);
  *(v5 + 112) = v16;
  v17 = *(v16 + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  v18 = swift_task_alloc();
  *(v5 + 168) = *a4;
  v19 = *(a4 + 8);
  v20 = *(a4 + 16);
  *(v5 + 128) = v18;
  *(v5 + 136) = v19;
  v21 = *v4;
  *(v5 + 144) = v20;
  *(v5 + 152) = v21;

  return MEMORY[0x2A1C73D48](sub_299B18228, 0, 0);
}

uint64_t sub_299B18228()
{
  v1 = *(v0 + 168);
  (*(*(v0 + 72) + 104))(*(v0 + 80), *MEMORY[0x29EDC65E0], *(v0 + 64));
  if (v1 == 1)
  {
    (*(*(v0 + 48) + 104))(*(v0 + 56), *MEMORY[0x29EDC65F0], *(v0 + 40));
  }

  else
  {
    v2 = *(v0 + 144);
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = *(v0 + 40);
    *v3 = *(v0 + 136);
    v3[1] = v2;
    v6 = *MEMORY[0x29EDC65F8];
    (*(v4 + 104))();
  }

  v7 = *(MEMORY[0x29EDC6618] + 4);
  v8 = swift_task_alloc();
  *(v0 + 160) = v8;
  *v8 = v0;
  v8[1] = sub_299B1835C;
  v9 = *(v0 + 152);
  v10 = *(v0 + 96);
  v11 = *(v0 + 80);
  v12 = *(v0 + 56);
  v13 = *(v0 + 24);
  v14 = *(v0 + 32);

  return MEMORY[0x2A1C68FA8](v10, v13, v14, v11, v12);
}

uint64_t sub_299B1835C()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 56);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 40);
  v9 = *v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2A1C73D48](sub_299B18510, 0, 0);
}

uint64_t sub_299B18510()
{
  v1 = v0[11];
  v2 = v0[12];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = v0[15];
    v4 = v0[16];
    v5 = v0[13];
    v6 = v0[14];
    v7 = v0[10];
    v8 = v0[7];
    v9 = *(v6 + 32);
    v9(v4, v2, v5);
    sub_299B1D434(&qword_2A14CB0B0, MEMORY[0x29EDC65D0]);
    swift_willThrowTypedImpl();
    v9(v3, v4, v5);
    sub_299B1C63C();
    swift_allocError();
    sub_299B16F74(v3, v10);
    swift_willThrow();
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    v12 = v0[16];
    v22 = v0[15];
    v23 = v0[10];
    v24 = v0[7];
    v13 = v0[2];
    v14 = *v2;
    v15 = sub_299B21F04();
    v17 = v16;
    sub_299B21EF4();
    v18 = sub_299B21E94();
    v20 = v19;

    *v13 = v15;
    v13[1] = v17;
    v13[2] = v18;
    v13[3] = v20;
  }

  v11 = v0[1];

  return v11();
}

uint64_t JPKIPassContents.UserIdentity.signature(for:using:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = sub_299B21F14();
  *(v3 + 24) = v5;
  v6 = *(v5 - 8);
  *(v3 + 32) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v8 = sub_299B21EE4();
  *(v3 + 48) = v8;
  v9 = *(v8 - 8);
  *(v3 + 56) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A14CB0C8, &qword_299B22630);
  *(v3 + 72) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  v13 = sub_299B21E84();
  *(v3 + 88) = v13;
  v14 = *(v13 - 8);
  *(v3 + 96) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  v16 = swift_task_alloc();
  *(v3 + 152) = *a2;
  v17 = *(a2 + 8);
  v18 = *(a2 + 16);
  *(v3 + 112) = v16;
  *(v3 + 120) = v17;
  v19 = *v2;
  *(v3 + 128) = v18;
  *(v3 + 136) = v19;

  return MEMORY[0x2A1C73D48](sub_299B18910, 0, 0);
}

uint64_t sub_299B18910()
{
  v1 = *(v0 + 152);
  (*(*(v0 + 56) + 104))(*(v0 + 64), *MEMORY[0x29EDC65E0], *(v0 + 48));
  if (v1 == 1)
  {
    (*(*(v0 + 32) + 104))(*(v0 + 40), *MEMORY[0x29EDC65F0], *(v0 + 24));
  }

  else
  {
    v2 = *(v0 + 128);
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v5 = *(v0 + 24);
    *v3 = *(v0 + 120);
    v3[1] = v2;
    v6 = *MEMORY[0x29EDC65F8];
    (*(v4 + 104))();
  }

  v7 = *(MEMORY[0x29EDC6620] + 4);
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *v8 = v0;
  v8[1] = sub_299B18A44;
  v9 = *(v0 + 136);
  v10 = *(v0 + 80);
  v11 = *(v0 + 64);
  v12 = *(v0 + 40);
  v13 = *(v0 + 16);

  return MEMORY[0x2A1C68FB0](v10, v13, v11, v12);
}

uint64_t sub_299B18A44()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 32);
  v7 = *(*v0 + 24);
  v9 = *v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2A1C73D48](sub_299B18BF8, 0, 0);
}

void *sub_299B18BF8()
{
  v1 = v0[9];
  v2 = v0[10];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = v0[13];
    v4 = v0[14];
    v5 = v0[11];
    v6 = v0[12];
    v7 = v0[8];
    v8 = v0[5];
    v9 = *(v6 + 32);
    v9(v4, v2, v5);
    sub_299B1D434(&qword_2A14CB0B0, MEMORY[0x29EDC65D0]);
    swift_willThrowTypedImpl();
    v9(v3, v4, v5);
    sub_299B1C63C();
    swift_allocError();
    sub_299B16F74(v3, v10);
    swift_willThrow();
    (*(v6 + 8))(v3, v5);

    v11 = v0[1];

    return v11();
  }

  v13 = *v2;
  if (*v2 >> 62)
  {
    v30 = *v2;
    v14 = sub_299B22144();
    v13 = v30;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
LABEL_7:
      v15 = v13;
      v40 = MEMORY[0x29EDCA190];
      result = sub_299B1C088(0, v14 & ~(v14 >> 63), 0);
      if (v14 < 0)
      {
        __break(1u);
        return result;
      }

      v16 = 0;
      v17 = v40;
      v18 = v15;
      v37 = v0;
      v38 = v15 & 0xC000000000000001;
      v39 = v15;
      v19 = v14;
      do
      {
        if (v38)
        {
          MEMORY[0x29C2AC530](v16, v18);
        }

        else
        {
          v20 = *(v18 + 8 * v16 + 32);
        }

        v21 = sub_299B21F04();
        v23 = v22;
        sub_299B21EF4();
        v24 = sub_299B21E94();
        v26 = v25;

        v28 = *(v40 + 16);
        v27 = *(v40 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_299B1C088((v27 > 1), v28 + 1, 1);
        }

        ++v16;
        *(v40 + 16) = v28 + 1;
        v29 = (v40 + 32 * v28);
        v29[4] = v21;
        v29[5] = v23;
        v29[6] = v24;
        v29[7] = v26;
        v18 = v39;
      }

      while (v19 != v16);

      v0 = v37;
      goto LABEL_18;
    }
  }

  v17 = MEMORY[0x29EDCA190];
LABEL_18:
  v32 = v0[13];
  v31 = v0[14];
  v33 = v0[10];
  v34 = v0[8];
  v35 = v0[5];

  v36 = v0[1];

  return v36(v17);
}

uint64_t JPKIPassContents.UserIdentity.changePIN(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = sub_299B21EE4();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2A14CB0D0, &qword_299B22640);
  v5[9] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v11 = sub_299B21E84();
  v5[11] = v11;
  v12 = *(v11 - 8);
  v5[12] = v12;
  v13 = *(v12 + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v14 = sub_299B21F14();
  v5[15] = v14;
  v15 = *(v14 - 8);
  v5[16] = v15;
  v16 = *(v15 + 64) + 15;
  v5[17] = swift_task_alloc();
  v17 = swift_task_alloc();
  v18 = *v4;
  v5[18] = v17;
  v5[19] = v18;

  return MEMORY[0x2A1C73D48](sub_299B19128, 0, 0);
}

uint64_t sub_299B19128()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[7];
  v6 = v0[5];
  v19 = v0[6];
  v20 = v0[8];
  v8 = v0[3];
  v7 = v0[4];
  *v1 = v0[2];
  v1[1] = v8;
  v9 = *MEMORY[0x29EDC65F8];
  v10 = *(v4 + 104);
  v10();
  *v2 = v7;
  v2[1] = v6;
  (v10)(v2, v9, v3);
  (*(v5 + 104))(v20, *MEMORY[0x29EDC65E0], v19);
  v11 = *(MEMORY[0x29EDC6600] + 4);

  v12 = swift_task_alloc();
  v0[20] = v12;
  *v12 = v0;
  v12[1] = sub_299B19280;
  v13 = v0[18];
  v14 = v0[19];
  v15 = v0[17];
  v16 = v0[10];
  v17 = v0[8];

  return MEMORY[0x2A1C68F90](v16, v17, v13, v15);
}

uint64_t sub_299B19280()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2A1C73D48](sub_299B193D8, 0, 0);
}

uint64_t sub_299B193D8()
{
  v1 = v0[9];
  v2 = v0[10];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[13];
  v9 = v0[14];
  if (EnumCaseMultiPayload == 1)
  {
    v20 = v0[17];
    v11 = v0[11];
    v10 = v0[12];
    v21 = v0[8];
    v12 = v2;
    v13 = *(v10 + 32);
    v13(v9, v12, v11);
    sub_299B1D434(&qword_2A14CB0B0, MEMORY[0x29EDC65D0]);
    swift_willThrowTypedImpl();
    v13(v8, v9, v11);
    sub_299B1C63C();
    swift_allocError();
    sub_299B16F74(v8, v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v11);
    v15 = *(v6 + 8);
    v15(v20, v7);
    v15(v4, v7);
  }

  else
  {
    v17 = v0[8];
    v18 = *(v6 + 8);
    v18(v0[17], v0[15]);
    v18(v4, v7);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_299B1961C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_299B196A8;

  return JPKIPassContents.UserIdentity.authenticationTriesRemaining.getter();
}

uint64_t sub_299B196A8(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_299B197A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_299B19850;

  return JPKIPassContents.UserIdentity.certificate(using:)(a1, a2);
}

uint64_t sub_299B19850()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_299B19944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_299B1DA10;

  return JPKIPassContents.UserIdentity.signature(for:using:)(a1, a2, a3, a4);
}

uint64_t sub_299B19A04(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_299B1DA34;

  return JPKIPassContents.UserIdentity.signature(for:using:)(a1, a2);
}

uint64_t JPKIPassContents.SigningIdentity.authenticationTriesRemaining.getter()
{
  v2 = sub_299B21EE4();
  v1[2] = v2;
  v3 = *(v2 - 8);
  v1[3] = v3;
  v4 = *(v3 + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v5 = sub_299B21EC4();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = sub_299B21E84();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A14CB0A0, &qword_299B225F8);
  v1[12] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v13 = swift_task_alloc();
  v1[13] = v13;
  v14 = *v0;
  v15 = *(MEMORY[0x29EDC6608] + 4);
  v16 = swift_task_alloc();
  v1[14] = v16;
  *v16 = v1;
  v16[1] = sub_299B19CA4;

  return MEMORY[0x2A1C68F98](v13);
}

uint64_t sub_299B19CA4()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2A1C73D48](sub_299B19DA0, 0, 0);
}

uint64_t sub_299B19DA0()
{
  v1 = v0[12];
  v2 = v0[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = v0[11];
    v4 = v0[9];
    v5 = *(v0[10] + 32);
    v5(v3, v2, v4);
    sub_299B1D434(&qword_2A14CB0B0, MEMORY[0x29EDC65D0]);
    swift_willThrowTypedImpl();
    swift_allocError();
    v5(v6, v3, v4);
LABEL_9:
    v19 = v0[13];
    v20 = v0[11];
    v21 = v0[8];
    v23 = v0[4];
    v22 = v0[5];

    v24 = v0[1];

    return v24();
  }

  result = *v2;
  v36 = *(*v2 + 16);
  if (!v36)
  {
LABEL_8:

    sub_299B1C63C();
    swift_allocError();
    *v18 = 5;
    *(v18 + 8) = 2;
    swift_willThrow();
    goto LABEL_9;
  }

  v8 = 0;
  v9 = v0[7];
  v10 = v0[3];
  v34 = *MEMORY[0x29EDC65E8];
  v33 = (v10 + 104);
  v11 = (v10 + 8);
  v35 = (v9 + 8);
  while (1)
  {
    if (v8 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v12 = v0[5];
    v13 = v0[4];
    v14 = v0[2];
    v15 = result;
    (*(v9 + 16))(v0[8], result + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8, v0[6]);
    sub_299B21EB4();
    (*v33)(v13, v34, v14);
    v16 = sub_299B21ED4();
    v17 = *v11;
    (*v11)(v13, v14);
    v17(v12, v14);
    if (v16)
    {
      break;
    }

    ++v8;
    (*v35)(v0[8], v0[6]);
    result = v15;
    if (v36 == v8)
    {
      goto LABEL_8;
    }
  }

  v25 = v0[13];
  v26 = v0[11];
  v27 = v0[8];
  v29 = v0[5];
  v28 = v0[6];
  v30 = v0[4];

  v31 = sub_299B21EA4();
  (*v35)(v27, v28);

  v32 = v0[1];

  return v32(v31);
}

uint64_t JPKIPassContents.SigningIdentity.certificate(using:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v5 = sub_299B21F14();
  v3[3] = v5;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v3[5] = swift_task_alloc();
  v8 = sub_299B21EE4();
  v3[6] = v8;
  v9 = *(v8 - 8);
  v3[7] = v9;
  v10 = *(v9 + 64) + 15;
  v3[8] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A14CB0B8, &qword_299B22610);
  v3[9] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v13 = sub_299B21E84();
  v3[11] = v13;
  v14 = *(v13 - 8);
  v3[12] = v14;
  v15 = *(v14 + 64) + 15;
  v3[13] = swift_task_alloc();
  v16 = swift_task_alloc();
  v17 = *(a2 + 8);
  v18 = *(a2 + 16);
  v3[14] = v16;
  v3[15] = v17;
  v19 = *v2;
  v3[16] = v18;
  v3[17] = v19;

  return MEMORY[0x2A1C73D48](sub_299B1A2F8, 0, 0);
}

uint64_t sub_299B1A2F8()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[5];
  v4 = v0[3];
  v5 = v0[4];
  (*(v0[7] + 104))(v0[8], *MEMORY[0x29EDC65E8], v0[6]);
  *v3 = v2;
  v3[1] = v1;
  (*(v5 + 104))(v3, *MEMORY[0x29EDC65F8], v4);
  v6 = *(MEMORY[0x29EDC6610] + 4);

  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_299B17C9C;
  v8 = v0[17];
  v9 = v0[10];
  v10 = v0[8];
  v11 = v0[5];

  return MEMORY[0x2A1C68FA0](v9, v10, v11);
}

uint64_t JPKIPassContents.SigningIdentity.signature(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_299B21F14();
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = sub_299B21EE4();
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A14CB0C0, &qword_299B22620);
  v5[11] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v15 = sub_299B21E84();
  v5[13] = v15;
  v16 = *(v15 - 8);
  v5[14] = v16;
  v17 = *(v16 + 64) + 15;
  v5[15] = swift_task_alloc();
  v18 = swift_task_alloc();
  v19 = *(a4 + 8);
  v20 = *(a4 + 16);
  v5[16] = v18;
  v5[17] = v19;
  v21 = *v4;
  v5[18] = v20;
  v5[19] = v21;

  return MEMORY[0x2A1C73D48](sub_299B1A5E8, 0, 0);
}

uint64_t sub_299B1A5E8()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[7];
  v4 = v0[5];
  v5 = v0[6];
  (*(v0[9] + 104))(v0[10], *MEMORY[0x29EDC65E8], v0[8]);
  *v3 = v2;
  v3[1] = v1;
  (*(v5 + 104))(v3, *MEMORY[0x29EDC65F8], v4);
  v6 = *(MEMORY[0x29EDC6618] + 4);

  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_299B1835C;
  v8 = v0[19];
  v9 = v0[12];
  v10 = v0[10];
  v11 = v0[7];
  v12 = v0[3];
  v13 = v0[4];

  return MEMORY[0x2A1C68FA8](v9, v12, v13, v10, v11);
}

uint64_t JPKIPassContents.SigningIdentity.signature(for:using:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v5 = sub_299B21F14();
  v3[3] = v5;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v3[5] = swift_task_alloc();
  v8 = sub_299B21EE4();
  v3[6] = v8;
  v9 = *(v8 - 8);
  v3[7] = v9;
  v10 = *(v9 + 64) + 15;
  v3[8] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A14CB0C8, &qword_299B22630);
  v3[9] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v13 = sub_299B21E84();
  v3[11] = v13;
  v14 = *(v13 - 8);
  v3[12] = v14;
  v15 = *(v14 + 64) + 15;
  v3[13] = swift_task_alloc();
  v16 = swift_task_alloc();
  v17 = *(a2 + 8);
  v18 = *(a2 + 16);
  v3[14] = v16;
  v3[15] = v17;
  v19 = *v2;
  v3[16] = v18;
  v3[17] = v19;

  return MEMORY[0x2A1C73D48](sub_299B1A8D8, 0, 0);
}

uint64_t sub_299B1A8D8()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[5];
  v4 = v0[3];
  v5 = v0[4];
  (*(v0[7] + 104))(v0[8], *MEMORY[0x29EDC65E8], v0[6]);
  *v3 = v2;
  v3[1] = v1;
  (*(v5 + 104))(v3, *MEMORY[0x29EDC65F8], v4);
  v6 = *(MEMORY[0x29EDC6620] + 4);

  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_299B1A9F0;
  v8 = v0[17];
  v9 = v0[10];
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[2];

  return MEMORY[0x2A1C68FB0](v9, v12, v10, v11);
}

uint64_t sub_299B1A9F0()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 32);
  v7 = *(*v0 + 24);
  v9 = *v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2A1C73D48](sub_299B1ABA4, 0, 0);
}

void *sub_299B1ABA4()
{
  v1 = v0[9];
  v2 = v0[10];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = v0[13];
    v4 = v0[14];
    v5 = v0[11];
    v6 = v0[12];
    v7 = v0[8];
    v8 = v0[5];
    v9 = *(v6 + 32);
    v9(v4, v2, v5);
    sub_299B1D434(&qword_2A14CB0B0, MEMORY[0x29EDC65D0]);
    swift_willThrowTypedImpl();
    v9(v3, v4, v5);
    sub_299B1C63C();
    swift_allocError();
    sub_299B16F74(v3, v10);
    swift_willThrow();
    (*(v6 + 8))(v3, v5);

    v11 = v0[1];

    return v11();
  }

  v13 = *v2;
  if (*v2 >> 62)
  {
    v30 = *v2;
    v14 = sub_299B22144();
    v13 = v30;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
LABEL_7:
      v15 = v13;
      v40 = MEMORY[0x29EDCA190];
      result = sub_299B1C0C8(0, v14 & ~(v14 >> 63), 0);
      if (v14 < 0)
      {
        __break(1u);
        return result;
      }

      v16 = 0;
      v17 = v40;
      v18 = v15;
      v37 = v0;
      v38 = v15 & 0xC000000000000001;
      v39 = v15;
      v19 = v14;
      do
      {
        if (v38)
        {
          MEMORY[0x29C2AC530](v16, v18);
        }

        else
        {
          v20 = *(v18 + 8 * v16 + 32);
        }

        v21 = sub_299B21F04();
        v23 = v22;
        sub_299B21EF4();
        v24 = sub_299B21E94();
        v26 = v25;

        v28 = *(v40 + 16);
        v27 = *(v40 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_299B1C0C8((v27 > 1), v28 + 1, 1);
        }

        ++v16;
        *(v40 + 16) = v28 + 1;
        v29 = (v40 + 32 * v28);
        v29[4] = v21;
        v29[5] = v23;
        v29[6] = v24;
        v29[7] = v26;
        v18 = v39;
      }

      while (v19 != v16);

      v0 = v37;
      goto LABEL_18;
    }
  }

  v17 = MEMORY[0x29EDCA190];
LABEL_18:
  v32 = v0[13];
  v31 = v0[14];
  v33 = v0[10];
  v34 = v0[8];
  v35 = v0[5];

  v36 = v0[1];

  return v36(v17);
}

uint64_t JPKIPassContents.SigningIdentity.changePassword(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = sub_299B21EE4();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2A14CB0D0, &qword_299B22640);
  v5[9] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v11 = sub_299B21E84();
  v5[11] = v11;
  v12 = *(v11 - 8);
  v5[12] = v12;
  v13 = *(v12 + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v14 = sub_299B21F14();
  v5[15] = v14;
  v15 = *(v14 - 8);
  v5[16] = v15;
  v16 = *(v15 + 64) + 15;
  v5[17] = swift_task_alloc();
  v17 = swift_task_alloc();
  v18 = *v4;
  v5[18] = v17;
  v5[19] = v18;

  return MEMORY[0x2A1C73D48](sub_299B1B0D4, 0, 0);
}

uint64_t sub_299B1B0D4()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[7];
  v6 = v0[5];
  v19 = v0[6];
  v20 = v0[8];
  v8 = v0[3];
  v7 = v0[4];
  *v1 = v0[2];
  v1[1] = v8;
  v9 = *MEMORY[0x29EDC65F8];
  v10 = *(v4 + 104);
  v10();
  *v2 = v7;
  v2[1] = v6;
  (v10)(v2, v9, v3);
  (*(v5 + 104))(v20, *MEMORY[0x29EDC65E8], v19);
  v11 = *(MEMORY[0x29EDC6600] + 4);

  v12 = swift_task_alloc();
  v0[20] = v12;
  *v12 = v0;
  v12[1] = sub_299B1B22C;
  v13 = v0[18];
  v14 = v0[19];
  v15 = v0[17];
  v16 = v0[10];
  v17 = v0[8];

  return MEMORY[0x2A1C68F90](v16, v17, v13, v15);
}

uint64_t sub_299B1B22C()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2A1C73D48](sub_299B1DA14, 0, 0);
}

uint64_t sub_299B1B384()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_299B1DA34;

  return JPKIPassContents.SigningIdentity.authenticationTriesRemaining.getter();
}

uint64_t sub_299B1B410(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_299B1DA10;

  return JPKIPassContents.SigningIdentity.certificate(using:)(a1, a2);
}

uint64_t sub_299B1B4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_299B1DA10;

  return JPKIPassContents.SigningIdentity.signature(for:using:)(a1, a2, a3, a4);
}

uint64_t sub_299B1B578(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_299B1DA34;

  return JPKIPassContents.SigningIdentity.signature(for:using:)(a1, a2);
}

uint64_t JPKIPassContents.Certificate.data.getter()
{
  v1 = *v0;
  sub_299B1C690(*v0, *(v0 + 8));
  return v1;
}

uint64_t JPKIPassContents.Signature.signatureData.getter()
{
  v1 = *v0;
  sub_299B1C690(*v0, *(v0 + 8));
  return v1;
}

uint64_t JPKIPassContents.Signature.certificate.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_299B1C690(v2, v3);
}

uint64_t *JPKIPassContents.AuthenticationRequest<>.init(type:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  if (v2)
  {
    v3 = *result;
    v4 = result[1];
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  *a2 = v2 == 0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

{
  v2 = *result;
  v3 = result[1];
  *a2 = 0;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_299B1B6F0(uint64_t a1, id *a2)
{
  result = sub_299B21FB4();
  *a2 = 0;
  return result;
}

uint64_t sub_299B1B768(uint64_t a1, id *a2)
{
  v3 = sub_299B21FC4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_299B1B7E8@<X0>(uint64_t *a1@<X8>)
{
  sub_299B21FD4();
  v2 = sub_299B21FA4();

  *a1 = v2;
  return result;
}

uint64_t sub_299B1B83C(uint64_t a1)
{
  v2 = sub_299B1D434(&qword_2A14CB2C8, type metadata accessor for LAError);

  return MEMORY[0x2A1C5A7F0](a1, v2);
}

uint64_t sub_299B1B8A8(uint64_t a1)
{
  v2 = sub_299B1D434(&qword_2A14CB2C8, type metadata accessor for LAError);

  return MEMORY[0x2A1C5A7D0](a1, v2);
}

uint64_t sub_299B1B914(void *a1, uint64_t a2)
{
  v4 = sub_299B1D434(&qword_2A14CB2C8, type metadata accessor for LAError);
  v5 = a1;

  return MEMORY[0x2A1C5A7C8](v5, a2, v4);
}

uint64_t sub_299B1B9C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_299B1D434(&qword_2A14CB2C8, type metadata accessor for LAError);

  return MEMORY[0x2A1C5A7E8](a1, a2, v4);
}

uint64_t sub_299B1BA44()
{
  v2 = *v0;
  sub_299B22214();
  sub_299B21F94();
  return sub_299B22244();
}

void *sub_299B1BAA4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_299B1BAC0(uint64_t a1)
{
  v2 = sub_299B1D434(&qword_2A14CB290, type metadata accessor for LAError);

  return MEMORY[0x2A1C5B390](a1, v2);
}

uint64_t sub_299B1BB2C(uint64_t a1)
{
  v2 = sub_299B1D434(&qword_2A14CB290, type metadata accessor for LAError);

  return MEMORY[0x2A1C5B388](a1, v2);
}

uint64_t sub_299B1BB98(uint64_t a1)
{
  v2 = sub_299B1D434(&qword_2A14CB2C8, type metadata accessor for LAError);

  return MEMORY[0x2A1C5A7C0](a1, v2);
}

uint64_t sub_299B1BC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_299B1D434(&qword_2A14CB2C8, type metadata accessor for LAError);

  return MEMORY[0x2A1C5A7D8](a1, a2, a3, v6);
}

uint64_t sub_299B1BC9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_299B21FA4();

  *a2 = v5;
  return result;
}

uint64_t sub_299B1BCE4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_299B21FD4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_299B1BD10(uint64_t a1)
{
  v2 = sub_299B1D434(&qword_2A14CB2D0, type metadata accessor for PKPaymentNetwork);
  v3 = sub_299B1D434(&qword_2A14CB2D8, type metadata accessor for PKPaymentNetwork);
  v4 = MEMORY[0x29EDC99C0];

  return MEMORY[0x2A1C72EC8](a1, v2, v3, v4);
}

uint64_t sub_299B1BDCC()
{
  v1 = *v0;
  v2 = sub_299B21FD4();
  v3 = MEMORY[0x29C2AC4A0](v2);

  return v3;
}

uint64_t sub_299B1BE08()
{
  v1 = *v0;
  sub_299B21FD4();
  sub_299B22004();
}

uint64_t sub_299B1BE5C()
{
  v1 = *v0;
  sub_299B21FD4();
  sub_299B22214();
  sub_299B22004();
  v2 = sub_299B22244();

  return v2;
}

uint64_t sub_299B1BED0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_299B21FD4();
  v6 = v5;
  if (v4 == sub_299B21FD4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_299B22184();
  }

  return v9 & 1;
}

unint64_t sub_299B1BF58(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_299B22214();
  sub_299B22004();
  v6 = sub_299B22244();

  return sub_299B1BFD0(a1, a2, v6);
}

unint64_t sub_299B1BFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_299B22184())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_299B1C088(void *a1, int64_t a2, char a3)
{
  result = sub_299B1C148(a1, a2, a3, *v3, &qword_2A14CB300, &qword_299B22F70, &qword_2A14CB308, &qword_299B22F78);
  *v3 = result;
  return result;
}

void *sub_299B1C0C8(void *a1, int64_t a2, char a3)
{
  result = sub_299B1C148(a1, a2, a3, *v3, &qword_2A14CB2F0, &qword_299B22F60, &qword_2A14CB2F8, &qword_299B22F68);
  *v3 = result;
  return result;
}

size_t sub_299B1C108(size_t a1, int64_t a2, char a3)
{
  result = sub_299B1C27C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_299B1C128(char *a1, int64_t a2, char a3)
{
  result = sub_299B1C454(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_299B1C148(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 1;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 5);
  }

  else
  {
    v16 = MEMORY[0x29EDCA190];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[4 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 32 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_299B1C27C(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A14CB2E8, &qword_299B22F58);
  v10 = *(sub_299B21E34() - 8);
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
  v15 = *(sub_299B21E34() - 8);
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

char *sub_299B1C454(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A14CB2E0, &qword_299B22F50);
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
    v10 = MEMORY[0x29EDCA190];
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

id sub_299B1C560(void *a1)
{
  result = [a1 secureElementPass];
  if (result)
  {
    v3 = result;
    if ([result isDevicePrimaryPaymentApplicationPersonalized] && (v4 = objc_msgSend(v3, sel_devicePrimaryPaymentApplication)) != 0 && (v5 = v4, v6 = objc_msgSend(v4, sel_paymentNetworkIdentifier), v5, v6 == 138) && (v7 = objc_msgSend(a1, sel_uniqueID)) != 0)
    {
      v8 = v7;
      v9 = sub_299B21FD4();

      return v9;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

unint64_t sub_299B1C63C()
{
  result = qword_2A14CB0A8;
  if (!qword_2A14CB0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A14CB0A8);
  }

  return result;
}

uint64_t sub_299B1C690(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t dispatch thunk of JPKIPassContents.Identity.authenticationTriesRemaining.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_299B1C838;

  return v9(a1, a2);
}

uint64_t sub_299B1C838(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of JPKIPassContents.Identity.certificate(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_299B19850;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of JPKIPassContents.Identity.signature(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 40);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_299B1DA10;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of JPKIPassContents.Identity.signature(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_299B1DA20;

  return v13(a1, a2, a3, a4);
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_299B1CDBC(uint64_t a1, unsigned int a2)
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

uint64_t sub_299B1CE0C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_299B1CE60(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_299B1CE7C(void *result, int a2)
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

uint64_t sub_299B1CEAC(uint64_t *a1, int a2)
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

uint64_t sub_299B1CEF4(uint64_t result, int a2, int a3)
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

uint64_t sub_299B1CF40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_299B1CF88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_299B1CFDC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_299B1D040(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_299B1D094(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_299B1D0F8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_299B1D140(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_299B1D194(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_299B1D1FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_299B1D23C(uint64_t a1, int a2)
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

uint64_t sub_299B1D288(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_7PassKit16JPKIPassContentsV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_299B1D310(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_299B1D358(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_299B1D39C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_299B1D434(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_299B1D6D0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_299B1D768()
{
  result = qword_2A14CB2B8;
  if (!qword_2A14CB2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A14CB2B8);
  }

  return result;
}

unint64_t sub_299B1D850(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A14CB310, &qword_299B22F80);
    v3 = sub_299B22154();
    v4 = a1 + 32;

    while (1)
    {
      sub_299B1D960(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_299B1BF58(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_299B1D9D0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t sub_299B1D960(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A14CB318, &qword_299B22F88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_299B1D9D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t PKStoredValuePassBalance.amount.getter()
{
  v1 = [v0 amount];
  v2 = sub_299B220C4();

  return v2;
}

id sub_299B1DAE0(uint64_t a1, uint64_t a2, SEL *a3)
{
  if (a2)
  {
    v4 = sub_299B21FA4();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() *a3];

  return v5;
}

unint64_t PKPaymentRequest.applePayLaterAvailability.getter@<X0>(_BYTE *a1@<X8>)
{
  result = [v1 applePayLaterAvailability];
  if (result >= 3)
  {
    result = sub_299B22134();
    __break(1u);
  }

  else
  {
    *a1 = 0x10002u >> (8 * result);
  }

  return result;
}

unint64_t sub_299B1DBE4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 applePayLaterAvailability];
  if (result >= 3)
  {
    result = sub_299B22134();
    __break(1u);
  }

  else
  {
    *a2 = 0x10002u >> (8 * result);
  }

  return result;
}

id PKPaymentRequest.applePayLaterAvailability.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 2)
  {
    v3 = v1;
    v4 = 0;
  }

  else
  {
    v3 = v1;
    if (v2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return [v3 setApplePayLaterAvailability_];
}

id (*PKPaymentRequest.applePayLaterAvailability.modify(uint64_t a1))(uint64_t a1)
{
  v2 = v1;
  *a1 = v2;
  v4 = [v2 applePayLaterAvailability];
  if (v4 >= 3)
  {
    result = sub_299B22134();
    __break(1u);
  }

  else
  {
    *(a1 + 8) = 0x10002u >> (8 * v4);
    return sub_299B1DD8C;
  }

  return result;
}

id sub_299B1DD8C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = 1;
  if (v2)
  {
    v3 = 2;
  }

  if (v2 == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return [*a1 setApplePayLaterAvailability_];
}

uint64_t PKPaymentRequest.ApplePayLaterAvailability.Reason.hashValue.getter()
{
  v1 = *v0;
  sub_299B22214();
  MEMORY[0x29C2AC660](v1);
  return sub_299B22244();
}

uint64_t sub_299B1DE5C()
{
  v1 = *v0;
  sub_299B22214();
  MEMORY[0x29C2AC660](v1);
  return sub_299B22244();
}

uint64_t sub_299B1DED0()
{
  v1 = *v0;
  sub_299B22214();
  MEMORY[0x29C2AC660](v1);
  return sub_299B22244();
}

id PKPaymentRequest.merchantCategoryCode.getter@<X0>(uint64_t a1@<X8>)
{
  result = [v1 merchantCategoryCode];
  *a1 = result;
  *(a1 + 2) = 0;
  return result;
}

id PKPaymentRequest.merchantCategoryCode.setter(__int16 *a1)
{
  if (*(a1 + 2))
  {
    v2 = MEMORY[0x29EDC60E8];
  }

  else
  {
    v2 = a1;
  }

  return [v1 setMerchantCategoryCode_];
}

id (*PKPaymentRequest.merchantCategoryCode.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 merchantCategoryCode];
  *(a1 + 10) = 0;
  return sub_299B1DFD4;
}

id sub_299B1DFD4(uint64_t a1)
{
  v1 = (a1 + 8);
  v2 = *a1;
  if (*(a1 + 10))
  {
    v1 = MEMORY[0x29EDC60E8];
  }

  return [*a1 setMerchantCategoryCode_];
}

uint64_t PKPaymentRequest.MerchantCategoryCode.init(_:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    goto LABEL_63;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v8 = sub_299B20930(result, a2, 10);

    if ((v8 & 0x10000) != 0)
    {
      goto LABEL_63;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_299B22124();
      v5 = v28;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        if (--v5)
        {
          LOWORD(v8) = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = (10 * v8);
              if (v17 != 10 * v8)
              {
                goto LABEL_61;
              }

              v8 = v17 + v16;
              if ((v17 + v16) != v8)
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        LOWORD(v8) = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = (10 * v8);
            if (v22 != 10 * v8)
            {
              goto LABEL_61;
            }

            v8 = v22 + v21;
            if ((v22 + v21) != v8)
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LOWORD(v8) = 0;
      LOBYTE(v5) = 1;
LABEL_62:
      v30 = v5;
      v26 = v5;

      if (v26)
      {
LABEL_63:
        LOWORD(v8) = 0;
        v27 = 1;
LABEL_67:
        *a3 = v8;
        *(a3 + 2) = v27;
        return result;
      }

LABEL_66:
      v27 = 0;
      goto LABEL_67;
    }

    if (v5 >= 1)
    {
      if (--v5)
      {
        LOWORD(v8) = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = (10 * v8);
            if (v11 != 10 * v8)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if ((v11 - v10) != v8)
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v5) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v29[0] = result;
  v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        LOWORD(v8) = 0;
        v23 = v29;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = (10 * v8);
          if (v25 != 10 * v8)
          {
            break;
          }

          v8 = v25 + v24;
          if ((v25 + v24) != v8)
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      v5 = v4 - 1;
      if (v4 != 1)
      {
        LOWORD(v8) = 0;
        v12 = v29 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = (10 * v8);
          if (v14 != 10 * v8)
          {
            break;
          }

          v8 = v14 - v13;
          if ((v14 - v13) != v8)
          {
            break;
          }

          ++v12;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v4)
  {
    v5 = v4 - 1;
    if (v4 != 1)
    {
      LOWORD(v8) = 0;
      v18 = v29 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = (10 * v8);
        if (v20 != 10 * v8)
        {
          break;
        }

        v8 = v20 + v19;
        if ((v20 + v19) != v8)
        {
          break;
        }

        ++v18;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t PKPaymentRequest.MerchantCategoryCode.description.getter()
{
  v1 = *v0;
  if (v1 > 0x3E7)
  {
    return sub_299B22174();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A14CB328, &qword_299B22FD0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_299B22FB0;
  v4 = MEMORY[0x29EDC9F40];
  *(v3 + 56) = MEMORY[0x29EDC9F28];
  *(v3 + 64) = v4;
  *(v3 + 32) = v1;

  return sub_299B21FE4();
}

uint64_t PKPaymentRequest.MerchantCategoryCode.init(from:)@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_299B22254();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  result = sub_299B22194();
  v8 = HIBYTE(v7) & 0xF;
  v9 = result & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v10 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    goto LABEL_64;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    v40 = 0;
    v35 = result;
    v36 = v7;

    v13 = sub_299B20930(v35, v36, 10);

    result = v35;
    v7 = v36;
    if ((v13 & 0x10000) != 0)
    {
      goto LABEL_64;
    }

    goto LABEL_67;
  }

  if ((v7 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      v11 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v33 = result;
      v37 = v7;
      v11 = sub_299B22124();
      result = v33;
      v9 = v34;
      v7 = v37;
    }

    v12 = *v11;
    if (v12 == 43)
    {
      if (v9 >= 1)
      {
        if (--v9)
        {
          LOWORD(v13) = 0;
          if (v11)
          {
            v20 = v11 + 1;
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                goto LABEL_62;
              }

              v22 = (10 * v13);
              if (v22 != 10 * v13)
              {
                goto LABEL_62;
              }

              v13 = v22 + v21;
              if ((v22 + v21) != v13)
              {
                goto LABEL_62;
              }

              ++v20;
              if (!--v9)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_61;
        }

        goto LABEL_62;
      }

      goto LABEL_71;
    }

    if (v12 != 45)
    {
      if (v9)
      {
        LOWORD(v13) = 0;
        if (v11)
        {
          while (1)
          {
            v26 = *v11 - 48;
            if (v26 > 9)
            {
              goto LABEL_62;
            }

            v27 = (10 * v13);
            if (v27 != 10 * v13)
            {
              goto LABEL_62;
            }

            v13 = v27 + v26;
            if ((v27 + v26) != v13)
            {
              goto LABEL_62;
            }

            ++v11;
            if (!--v9)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_62:
      LOWORD(v13) = 0;
      LOBYTE(v9) = 1;
LABEL_63:
      v40 = v9;
      if (v9)
      {
LABEL_64:
        v38 = 0;
        v39 = 0xE000000000000000;
        v31 = result;
        v32 = v7;
        sub_299B220E4();

        v38 = 39;
        v39 = 0xE100000000000000;
        MEMORY[0x29C2AC450](v31, v32);

        MEMORY[0x29C2AC450](0xD000000000000026, 0x8000000299B23EF0);
        sub_299B22114();
        swift_allocError();
        sub_299B22104();

        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1(v41);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

LABEL_67:

      __swift_destroy_boxed_opaque_existential_1(v41);
      *a2 = v13;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    if (v9 >= 1)
    {
      if (--v9)
      {
        LOWORD(v13) = 0;
        if (v11)
        {
          v14 = v11 + 1;
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              goto LABEL_62;
            }

            v16 = (10 * v13);
            if (v16 != 10 * v13)
            {
              goto LABEL_62;
            }

            v13 = v16 - v15;
            if ((v16 - v15) != v13)
            {
              goto LABEL_62;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_63;
            }
          }
        }

LABEL_61:
        LOBYTE(v9) = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v38 = result;
  v39 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v8)
      {
        LOWORD(v13) = 0;
        v28 = &v38;
        while (1)
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            break;
          }

          v30 = (10 * v13);
          if (v30 != 10 * v13)
          {
            break;
          }

          v13 = v30 + v29;
          if ((v30 + v29) != v13)
          {
            break;
          }

          v28 = (v28 + 1);
          if (!--v8)
          {
            goto LABEL_61;
          }
        }
      }

      goto LABEL_62;
    }

    if (v8)
    {
      v9 = v8 - 1;
      if (v8 != 1)
      {
        LOWORD(v13) = 0;
        v17 = &v38 + 1;
        while (1)
        {
          v18 = *v17 - 48;
          if (v18 > 9)
          {
            break;
          }

          v19 = (10 * v13);
          if (v19 != 10 * v13)
          {
            break;
          }

          v13 = v19 - v18;
          if ((v19 - v18) != v13)
          {
            break;
          }

          ++v17;
          if (!--v9)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    goto LABEL_70;
  }

  if (v8)
  {
    v9 = v8 - 1;
    if (v8 != 1)
    {
      LOWORD(v13) = 0;
      v23 = &v38 + 1;
      while (1)
      {
        v24 = *v23 - 48;
        if (v24 > 9)
        {
          break;
        }

        v25 = (10 * v13);
        if (v25 != 10 * v13)
        {
          break;
        }

        v13 = v25 + v24;
        if ((v25 + v24) != v13)
        {
          break;
        }

        ++v23;
        if (!--v9)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_62;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t PKPaymentRequest.MerchantCategoryCode.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_299B22264();
  if (v2 <= 0x3E7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A14CB328, &qword_299B22FD0);
    v4 = swift_allocObject();
    v5 = MEMORY[0x29EDC9F28];
    *(v4 + 16) = xmmword_299B22FB0;
    v6 = MEMORY[0x29EDC9F40];
    *(v4 + 56) = v5;
    *(v4 + 64) = v6;
    *(v4 + 32) = v2;
    sub_299B21FE4();
  }

  else
  {
    v9 = v2;
    sub_299B22174();
  }

  __swift_mutable_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_299B221A4();

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_299B1E9D8()
{
  v1 = *v0;
  sub_299B22214();
  sub_299B22234();
  return sub_299B22244();
}

uint64_t sub_299B1EA4C()
{
  v1 = *v0;
  sub_299B22214();
  sub_299B22234();
  return sub_299B22244();
}

_WORD *sub_299B1EA90@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

void (*PKDisbursementRequest.region.modify(void *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x29EDCA1B0];
  if (MEMORY[0x29EDCA1B0])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_299B21E34();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  v10 = [v1 regionCode];
  sub_299B21FD4();

  sub_299B21E44();
  return sub_299B1EC78;
}

uint64_t (*PKDisbursementRequest.currency.modify(void *a1))()
{
  v3 = MEMORY[0x29EDCA1B0];
  if (MEMORY[0x29EDCA1B0])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_299B21E64();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  v10 = [v1 currencyCode];
  sub_299B21FD4();

  sub_299B21E74();
  return sub_299B21DB0;
}

uint64_t PKDisbursementRequest.supportedRegions.getter()
{
  v1 = sub_299B21E34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8]();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 supportedRegions];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = sub_299B220A4();

  v9 = *(v8 + 16);
  if (v9)
  {
    v18 = MEMORY[0x29EDCA190];
    sub_299B1C108(0, v9, 0);
    v10 = v18;
    v11 = (v8 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;

      sub_299B21E44();
      v18 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_299B1C108(v14 > 1, v15 + 1, 1);
        v10 = v18;
      }

      *(v10 + 16) = v15 + 1;
      (*(v2 + 32))(v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v15, v5, v1);
      v11 += 2;
      --v9;
    }

    while (v9);
  }

  else
  {

    return MEMORY[0x29EDCA190];
  }

  return v10;
}

void PKDisbursementRequest.supportedRegions.setter(void *a1)
{
  v26 = sub_299B21E34();
  v3 = *(v26 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8]();
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = a1[2];
    if (v7)
    {
      v22 = v1;
      v27 = MEMORY[0x29EDCA190];
      sub_299B1C128(0, v7, 0);
      v8 = v27;
      v10 = *(v3 + 16);
      v9 = v3 + 16;
      v11 = *(v9 + 64);
      v21[1] = a1;
      v12 = a1 + ((v11 + 32) & ~v11);
      v23 = *(v9 + 56);
      v24 = v10;
      v25 = v9;
      v13 = (v9 - 8);
      do
      {
        v14 = v26;
        v24(v6, v12, v26);
        v15 = sub_299B21E24();
        v17 = v16;
        (*v13)(v6, v14);
        v27 = v8;
        v19 = *(v8 + 16);
        v18 = *(v8 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_299B1C128((v18 > 1), v19 + 1, 1);
          v8 = v27;
        }

        *(v8 + 16) = v19 + 1;
        v20 = v8 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
        v12 += v23;
        --v7;
      }

      while (v7);

      v1 = v22;
    }

    else
    {
    }

    a1 = sub_299B22094();
  }

  [v1 setSupportedRegions_];
}

void (*PKDisbursementRequest.supportedRegions.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = PKDisbursementRequest.supportedRegions.getter();
  return sub_299B1F208;
}

void sub_299B1F208(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    PKDisbursementRequest.supportedRegions.setter(v5);
  }

  else
  {
    PKDisbursementRequest.supportedRegions.setter(*a1);
  }
}

id PKDisbursementRequest.init(merchantIdentifier:currency:region:supportedNetworks:merchantCapabilities:summaryItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = sub_299B21FA4();

  sub_299B21E24();
  v11 = sub_299B21FA4();

  sub_299B21E24();
  v12 = sub_299B21FA4();

  type metadata accessor for PKPaymentNetwork(0);
  v13 = sub_299B22094();

  sub_299B20FFC();
  v14 = sub_299B22094();

  v15 = [v9 initWithMerchantIdentifier:v10 currencyCode:v11 regionCode:v12 supportedNetworks:v13 merchantCapabilities:a6 summaryItems:v14];

  v16 = sub_299B21E34();
  (*(*(v16 - 8) + 8))(a4, v16);
  v17 = sub_299B21E64();
  (*(*(v17 - 8) + 8))(a3, v17);
  return v15;
}

id PKPayLaterView.init(amount:currency:)(unint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2;
  v6 = a1;
  v7 = HIDWORD(a1);
  v8 = HIWORD(a1);
  v9 = a2 >> 16;
  v10 = HIDWORD(a2);
  v11 = HIWORD(a2);
  v12 = HIWORD(a3);
  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v23 = v5;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = v4;
  v28 = v12;
  v14 = [objc_allocWithZone(MEMORY[0x29EDB9F90]) initWithDecimal_];
  sub_299B21E24();
  v15 = sub_299B21FA4();

  v16 = [v13 initWithAmount:v14 currencyCode:v15];

  v17 = sub_299B21E64();
  (*(*(v17 - 8) + 8))(a4, v17);
  return v16;
}

uint64_t PKPayLaterView.amount.getter()
{
  v1 = [v0 amount];
  [v1 decimalValue];

  return v3;
}

double sub_299B1F5C0@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 amount];
  [v3 decimalValue];

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

void sub_299B1F628(__int128 *a1, void **a2)
{
  v4 = *a1;
  LODWORD(v5) = *(a1 + 4);
  v2 = *a2;
  v3 = [objc_allocWithZone(MEMORY[0x29EDB9F90]) initWithDecimal_];
  [v2 setAmount_];
}

void PKPayLaterView.amount.setter(uint64_t a1, uint64_t a2, int a3)
{
  v5[0] = a1;
  v5[1] = a2;
  v6 = a3;
  v4 = [objc_allocWithZone(MEMORY[0x29EDB9F90]) initWithDecimal_];
  [v3 setAmount_];
}

void (*PKPayLaterView.amount.modify(void *a1))(void ***a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *v3 = v1;
  v4 = [v1 amount];
  [v4 decimalValue];

  return sub_299B1F800;
}

void sub_299B1F800(void ***a1)
{
  v1 = *a1;
  v3 = *a1 + 28;
  v2 = **a1;
  v6 = *(*a1 + 1);
  v7 = *(*a1 + 6);
  v4 = objc_allocWithZone(MEMORY[0x29EDB9F90]);
  *v3 = v6;
  *(v3 + 16) = v7;
  v5 = [v4 initWithDecimal_];
  [v2 setAmount_];

  free(v1);
}

uint64_t sub_299B1F8C4(SEL *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = [v2 *a1];
  v4 = sub_299B21FD4();
  v6 = v5;

  return a2(v4, v6);
}

uint64_t sub_299B1F944(id *a1, uint64_t a2, uint64_t a3, SEL *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = [*a1 *a4];
  v6 = sub_299B21FD4();
  v8 = v7;

  return a5(v6, v8);
}

uint64_t sub_299B1F9C4(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t), SEL *a7)
{
  v11 = a5(0);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v15 = &v20 - v14;
  v16 = (*(v12 + 16))(&v20 - v14, a1, v11);
  v17 = *a2;
  a6(v16);
  v18 = sub_299B21FA4();

  [v17 *a7];

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_299B1FB28(uint64_t a1, void (*a2)(void), SEL *a3, uint64_t (*a4)(void))
{
  v7 = v4;
  a2();
  v9 = sub_299B21FA4();

  [v7 *a3];

  v10 = a4(0);
  v11 = *(*(v10 - 8) + 8);

  return v11(a1, v10);
}

void (*PKPayLaterView.currency.modify(void *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x29EDCA1B0];
  if (MEMORY[0x29EDCA1B0])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_299B21E64();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  v10 = [v1 currencyCode];
  sub_299B21FD4();

  sub_299B21E74();
  return sub_299B1FD18;
}

void sub_299B1FD38(void ***a1, char a2, void (*a3)(void), SEL *a4)
{
  v6 = *a1;
  v7 = (*a1)[3];
  v8 = (*a1)[4];
  v9 = (*a1)[1];
  v10 = (*a1)[2];
  v11 = **a1;
  if (a2)
  {
    v12 = v10[2]((*a1)[3], v8, v9);
    (a3)(v12);
    v13 = sub_299B21FA4();

    [v11 *a4];

    v14 = v10[1];
    (v14)(v7, v9);
    (v14)(v8, v9);
  }

  else
  {
    v15 = (*a1)[4];
    a3();
    v16 = sub_299B21FA4();

    [v11 *a4];

    (v10[1])(v8, v9);
  }

  free(v8);
  free(v7);

  free(v6);
}

uint64_t static PKPayLater.validate(amount:currency:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = a4;
  *(v4 + 104) = a3;
  *(v4 + 80) = a1;
  return MEMORY[0x2A1C73D48](sub_299B1FEAC, 0, 0);
}

uint64_t sub_299B1FEAC()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 80);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 108;
  *(v0 + 24) = sub_299B1FF70;
  v5 = swift_continuation_init();
  sub_299B20048(v5, v4, v2, v3);

  return MEMORY[0x2A1C73CC0](v0 + 16);
}

uint64_t sub_299B1FF70()
{
  v1 = *(*v0 + 108);
  v2 = *(*v0 + 8);

  return v2(v1);
}

void sub_299B20048(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  aBlock = a2;
  v11 = a3;
  LODWORD(v12) = a4;
  v4 = [objc_allocWithZone(MEMORY[0x29EDB9F90]) initWithDecimal_];
  sub_299B21E24();
  v5 = v4;
  v6 = sub_299B21FA4();

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v14 = sub_299B2186C;
  v15 = v7;
  aBlock = MEMORY[0x29EDCA5F8];
  v11 = 1107296256;
  v12 = sub_299B201D4;
  v13 = &block_descriptor;
  v8 = _Block_copy(&aBlock);

  PKPayLaterValidateAmount(v5, v6, v8);
  _Block_release(v8);
}

uint64_t sub_299B201D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t PKIdentityNationalIDCardDescriptor.region.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 regionCode];
  if (v3)
  {
    v4 = v3;
    sub_299B21FD4();
  }

  sub_299B21E44();
  v5 = sub_299B21E34();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, 0, 1, v5);
}

uint64_t sub_299B202E8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 regionCode];
  if (v3)
  {
    v4 = v3;
    sub_299B21FD4();
  }

  sub_299B21E44();
  v5 = sub_299B21E34();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t sub_299B203A8(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A14CB338, &qword_299B22FE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v6 = &v9 - v5;
  sub_299B21048(a1, &v9 - v5);
  v7 = *a2;
  return PKIdentityNationalIDCardDescriptor.region.setter(v6);
}

uint64_t PKIdentityNationalIDCardDescriptor.region.setter(uint64_t a1)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A14CB338, &qword_299B22FE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v6 = &v11 - v5;
  sub_299B21048(a1, &v11 - v5);
  v7 = sub_299B21E34();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_299B210B8(v6);
    v9 = 0;
  }

  else
  {
    sub_299B21E24();
    (*(v8 + 8))(v6, v7);
    v9 = sub_299B21FA4();
  }

  [v2 setRegionCode_];

  return sub_299B210B8(a1);
}

void (*PKIdentityNationalIDCardDescriptor.region.modify(void *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x29EDCA1B0];
  if (MEMORY[0x29EDCA1B0])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A14CB338, &qword_299B22FE0) - 8) + 64);
  if (v4)
  {
    v6[1] = swift_coroFrameAlloc();
    v6[2] = swift_coroFrameAlloc();
    v6[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v6[1] = malloc(v7);
    v6[2] = malloc(v7);
    v6[3] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[4] = v8;
  v10 = [v2 regionCode];
  if (v10)
  {
    v11 = v10;
    sub_299B21FD4();
  }

  sub_299B21E44();
  v12 = sub_299B21E34();
  v6[5] = v12;
  v13 = *(v12 - 8);
  v6[6] = v13;
  (*(v13 + 56))(v9, 0, 1, v12);
  return sub_299B20758;
}

void sub_299B20758(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 32);
  if (a2)
  {
    v7 = *(v2 + 8);
    v6 = *(v2 + 16);
    sub_299B21048(v5, v6);
    sub_299B21048(v6, v7);
    if ((*(v4 + 48))(v7, 1, v3) == 1)
    {
      sub_299B210B8(*(v2 + 8));
      v8 = 0;
    }

    else
    {
      v11 = *(v2 + 40);
      v12 = *(v2 + 48);
      v13 = *(v2 + 8);
      sub_299B21E24();
      (*(v12 + 8))(v13, v11);
      v8 = sub_299B21FA4();
    }

    v15 = *(v2 + 24);
    v14 = *(v2 + 32);
    v17 = *(v2 + 8);
    v16 = *(v2 + 16);
    [*v2 setRegionCode_];

    sub_299B210B8(v16);
  }

  else
  {
    v9 = *(v2 + 24);
    sub_299B21048(v5, v9);
    if ((*(v4 + 48))(v9, 1, v3) == 1)
    {
      sub_299B210B8(*(v2 + 24));
      v10 = 0;
    }

    else
    {
      v18 = *(v2 + 40);
      v19 = *(v2 + 48);
      v20 = *(v2 + 24);
      sub_299B21E24();
      (*(v19 + 8))(v20, v18);
      v10 = sub_299B21FA4();
    }

    v15 = *(v2 + 24);
    v14 = *(v2 + 32);
    v17 = *(v2 + 8);
    v16 = *(v2 + 16);
    [*v2 setRegionCode_];
  }

  sub_299B210B8(v14);
  free(v14);
  free(v15);
  free(v16);
  free(v17);

  free(v2);
}

unsigned __int8 *sub_299B20930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a1;
  v76 = a2;

  result = sub_299B22074();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_299B218AC();
    v42 = v41;

    v5 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_299B22124();
      v7 = v74;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOWORD(v13) = 0;
            v26 = result + 1;
            v27 = a3;
            v16 = 1;
            do
            {
              v28 = *v26;
              if (v28 < 0x30 || v28 >= v23)
              {
                if (v28 < 0x41 || v28 >= v24)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v13 * v27;
              v31 = (v13 * v27);
              if (v31 != v30)
              {
                goto LABEL_126;
              }

              v13 = v31 + (v28 + v29);
              if (v13 != v13)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v16 = 0;
            v19 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        v16 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          LOWORD(v35) = 0;
          v36 = a3;
          v16 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v32)
            {
              if (v37 < 0x41 || v37 >= v33)
              {
                v19 = 0;
                if (v37 < 0x61 || v37 >= v34)
                {
                  goto LABEL_127;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v35 * v36;
            v40 = (v35 * v36);
            if (v40 != v39)
            {
              goto LABEL_126;
            }

            v35 = v40 + (v37 + v38);
            if (v35 != v35)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v16 = 0;
          v19 = v35;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOWORD(v13) = 0;
          v14 = result + 1;
          v15 = a3;
          v16 = 1;
          while (1)
          {
            v17 = *v14;
            if (v17 < 0x30 || v17 >= v10)
            {
              if (v17 < 0x41 || v17 >= v11)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v12)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v13 * v15;
            v21 = (v13 * v15);
            if (v21 != v20)
            {
              goto LABEL_126;
            }

            v13 = v21 - (v17 + v18);
            if (v13 != v13)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
        v16 = 0;
LABEL_127:

        return (v19 | (v16 << 16));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v43 = HIBYTE(v5) & 0xF;
  v75 = v6;
  v76 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v43)
      {
        LOWORD(v45) = 0;
        v65 = a3 + 48;
        v66 = a3 + 55;
        v67 = a3 + 87;
        if (a3 > 10)
        {
          v65 = 58;
        }

        else
        {
          v67 = 97;
          v66 = 65;
        }

        v68 = &v75;
        v69 = a3;
        v16 = 1;
        while (1)
        {
          v70 = *v68;
          if (v70 < 0x30 || v70 >= v65)
          {
            if (v70 < 0x41 || v70 >= v66)
            {
              v19 = 0;
              if (v70 < 0x61 || v70 >= v67)
              {
                goto LABEL_127;
              }

              v71 = -87;
            }

            else
            {
              v71 = -55;
            }
          }

          else
          {
            v71 = -48;
          }

          v72 = v45 * v69;
          v73 = (v45 * v69);
          if (v73 != v72)
          {
            goto LABEL_126;
          }

          v45 = v73 + (v70 + v71);
          if (v45 != v45)
          {
            goto LABEL_126;
          }

          v68 = (v68 + 1);
          if (!--v43)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        LOWORD(v45) = 0;
        v46 = a3 + 48;
        v47 = a3 + 55;
        v48 = a3 + 87;
        if (a3 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v75 + 1;
        v50 = a3;
        v16 = 1;
        while (1)
        {
          v51 = *v49;
          if (v51 < 0x30 || v51 >= v46)
          {
            if (v51 < 0x41 || v51 >= v47)
            {
              v19 = 0;
              if (v51 < 0x61 || v51 >= v48)
              {
                goto LABEL_127;
              }

              v52 = -87;
            }

            else
            {
              v52 = -55;
            }
          }

          else
          {
            v52 = -48;
          }

          v53 = v45 * v50;
          v54 = (v45 * v50);
          if (v54 != v53)
          {
            goto LABEL_126;
          }

          v45 = v54 - (v51 + v52);
          if (v45 != v45)
          {
            goto LABEL_126;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v43)
  {
    v55 = v43 - 1;
    if (v55)
    {
      LOWORD(v45) = 0;
      v56 = a3 + 48;
      v57 = a3 + 55;
      v58 = a3 + 87;
      if (a3 > 10)
      {
        v56 = 58;
      }

      else
      {
        v58 = 97;
        v57 = 65;
      }

      v59 = &v75 + 1;
      v60 = a3;
      v16 = 1;
      do
      {
        v61 = *v59;
        if (v61 < 0x30 || v61 >= v56)
        {
          if (v61 < 0x41 || v61 >= v57)
          {
            v19 = 0;
            if (v61 < 0x61 || v61 >= v58)
            {
              goto LABEL_127;
            }

            v62 = -87;
          }

          else
          {
            v62 = -55;
          }
        }

        else
        {
          v62 = -48;
        }

        v63 = v45 * v60;
        v64 = (v45 * v60);
        if (v64 != v63)
        {
          goto LABEL_126;
        }

        v45 = v64 + (v61 + v62);
        if (v45 != v45)
        {
          goto LABEL_126;
        }

        ++v59;
        --v55;
      }

      while (v55);
LABEL_125:
      v16 = 0;
      v19 = v45;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_299B20FFC()
{
  result = qword_2A14CB330;
  if (!qword_2A14CB330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A14CB330);
  }

  return result;
}

uint64_t sub_299B21048(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A14CB338, &qword_299B22FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_299B210B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A14CB338, &qword_299B22FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_299B21124()
{
  result = qword_2A14CB340;
  if (!qword_2A14CB340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A14CB340);
  }

  return result;
}

unint64_t sub_299B2117C()
{
  result = qword_2A14CB348;
  if (!qword_2A14CB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A14CB348);
  }

  return result;
}

unint64_t sub_299B211D4()
{
  result = qword_2A14CB350;
  if (!qword_2A14CB350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A14CB350);
  }

  return result;
}

id sub_299B2122C(unsigned __int8 *a1, id *a2)
{
  v2 = *a1;
  if (v2 == 2)
  {
    v3 = 0;
  }

  else if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return [*a2 setApplePayLaterAvailability_];
}

id sub_299B21268@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  result = [*a1 merchantCategoryCode];
  *a2 = result;
  *(a2 + 2) = 0;
  return result;
}

id sub_299B212A0(__int16 *a1, id *a2)
{
  if (*(a1 + 2))
  {
    v2 = MEMORY[0x29EDC60E8];
  }

  else
  {
    v2 = a1;
  }

  return [*a2 setMerchantCategoryCode_];
}

uint64_t sub_299B21348@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = PKDisbursementRequest.supportedRegions.getter();
  *a2 = result;
  return result;
}

void sub_299B21374(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  PKDisbursementRequest.supportedRegions.setter(v4);
}

uint64_t _s25ApplePayLaterAvailabilityOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t _s25ApplePayLaterAvailabilityOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_299B21590(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_299B215A4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t _s25ApplePayLaterAvailabilityO6ReasonOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s25ApplePayLaterAvailabilityO6ReasonOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s20MerchantCategoryCodeVwet(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *_s20MerchantCategoryCodeVwst(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_299B2186C(char a1)
{
  v2 = *(v1 + 16);
  **(*(v2 + 64) + 40) = a1;
  return MEMORY[0x2A1C73CD0](v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_299B218AC()
{
  v0 = sub_299B22084();
  v4 = sub_299B2192C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_299B2192C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_299B21FF4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_299B220D4();
  if (!v9)
  {
    v11 = MEMORY[0x29EDCA190];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_299B21A84(v9, 0);
  v12 = sub_299B21AF8(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_299B21FF4();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_299B22124();
LABEL_4:

  return sub_299B21FF4();
}

void *sub_299B21A84(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A14CB358, &qword_299B23220);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_299B21AF8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_299B21D18(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_299B22044();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_299B22124();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_299B21D18(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_299B22024();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_299B21D18(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_299B22054();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x29C2AC470](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}