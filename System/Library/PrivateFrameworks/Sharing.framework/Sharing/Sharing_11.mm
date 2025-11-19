uint64_t sub_1A985CB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 296) = a4;
  *(v5 + 304) = a5;
  v6 = *a5;
  v7 = *(*a5 + 104);
  *(v5 + 312) = v7;
  v33 = v7;
  v32 = v6[10];
  *(v5 + 320) = v32;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v5 + 328) = AssociatedTypeWitness;
  v9 = v6[14];
  *(v5 + 336) = v9;
  v10 = v6[11];
  *(v5 + 344) = v10;
  swift_getAssociatedTypeWitness();
  v11 = v6[15];
  *(v5 + 352) = v11;
  v12 = v6[12];
  *(v5 + 360) = v12;
  swift_getAssociatedTypeWitness();
  sub_1A99770A0();
  *(v5 + 368) = swift_getTupleTypeMetadata3();
  sub_1A99770A0();
  *(v5 + 376) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v13 = sub_1A9977A20();
  *(v5 + 384) = v13;
  v14 = *(v13 - 8);
  *(v5 + 392) = v14;
  *(v5 + 400) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  *&v16 = v32;
  *(&v16 + 1) = v10;
  *&v17 = v12;
  *(&v17 + 1) = v33;
  *(v5 + 96) = v17;
  *(v5 + 80) = v16;
  *(v5 + 112) = v9;
  *(v5 + 120) = v11;
  *(v5 + 424) = type metadata accessor for CombineLatestStateMachine.ElementProducedAction();
  v18 = sub_1A99770A0();
  *(v5 + 432) = v18;
  v19 = *(v18 - 8);
  *(v5 + 440) = v19;
  v20 = *(v19 + 64) + 15;
  *(v5 + 448) = swift_task_alloc();
  *(v5 + 456) = swift_task_alloc();
  v21 = sub_1A99770A0();
  *(v5 + 464) = v21;
  v22 = *(v21 - 8);
  *(v5 + 472) = v22;
  v23 = *(v22 + 64) + 15;
  *(v5 + 480) = swift_task_alloc();
  v24 = *(AssociatedTypeWitness - 8);
  *(v5 + 488) = v24;
  v25 = *(v24 + 64) + 15;
  *(v5 + 496) = swift_task_alloc();
  v26 = *(v32 - 8);
  *(v5 + 504) = v26;
  v27 = *(v26 + 64) + 15;
  *(v5 + 512) = swift_task_alloc();
  v28 = swift_getAssociatedTypeWitness();
  *(v5 + 520) = v28;
  v29 = *(v28 - 8);
  *(v5 + 528) = v29;
  v30 = *(v29 + 64) + 15;
  *(v5 + 536) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A985CFD8, 0, 0);
}

uint64_t sub_1A985CFD8()
{
  v1 = v0[67];
  v2 = v0[39];
  (*(v0[63] + 16))(v0[64], v0[37], v0[40]);
  sub_1A9976D30();

  return MEMORY[0x1EEE6DFA0](sub_1A985D07C, 0, 0);
}

uint64_t sub_1A985D07C()
{
  v1 = v0[38];
  v0[2] = v0;
  v0[3] = sub_1A985D128;
  v2 = swift_continuation_init();
  sub_1A9860434(v2, v1, sub_1A986163C);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A985D128()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 544) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1A9861A9C, 0, 0);
  }

  else
  {
    v4 = v1[65];
    v5 = v1[39];
    v6 = v1[40];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = *(MEMORY[0x1E69E85A8] + 4);
    v9 = swift_task_alloc();
    v1[69] = v9;
    *v9 = v2;
    v9[1] = sub_1A985D2DC;
    v10 = v1[67];
    v11 = v1[65];
    v12 = v1[60];

    return MEMORY[0x1EEE6D8C8](v12, v11, AssociatedConformanceWitness);
  }
}

uint64_t sub_1A985D2DC()
{
  v2 = *(*v1 + 552);
  v5 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v3 = sub_1A9861AA0;
  }

  else
  {
    v3 = sub_1A985D3F0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A985D3F0()
{
  v2 = v0[60];
  v1 = v0[61];
  if ((*(v1 + 48))(v2, 1, v0[41]) == 1)
  {
    v65 = v0[70];
    v4 = v0[44];
    v3 = v0[45];
    v5 = v0[42];
    v6 = v0[43];
    v7 = v0[39];
    v8 = v0[40];
    v9 = v0[38];
    (*(v0[59] + 8))(v2, v0[58]);
    v63 = *(v9 + 16);
    v10 = swift_task_alloc();
    v10[2] = v8;
    v10[3] = v6;
    v10[4] = v3;
    v10[5] = v7;
    v10[6] = v5;
    v10[7] = v4;
    v0[16] = v8;
    v0[17] = v6;
    v0[18] = v3;
    v0[19] = v7;
    v0[20] = v5;
    v0[21] = v4;
    type metadata accessor for CombineLatestStateMachine();
    v0[22] = v8;
    v0[23] = v6;
    v0[24] = v3;
    v0[25] = v7;
    v0[26] = v5;
    v0[27] = v4;
    type metadata accessor for CombineLatestStateMachine.UpstreamFinishedAction();
    sub_1A99770A0();
    sub_1A9862D90(sub_1A9861548, v10, v63);

    v11 = v0[34];
    if ((~v11 & 0xF000000000000007) != 0)
    {
      if (v11 < 0)
      {
        v38 = *(v0[36] + 16);
        if (v38)
        {
          v39 = (v0[36] + 32);
          sub_1A9976BC0();
          sub_1A97FC63C();
          do
          {
            v40 = v0[47];
            v41 = *v39++;
            v42 = swift_allocError();
            sub_1A99766C0();
            swift_allocError();
            *v43 = v42;
            swift_continuation_throwingResumeWithError();
            --v38;
          }

          while (v38);
        }

        v44 = v0[52];
        v46 = v0[48];
        v45 = v0[49];
        v47 = v0[46];
        sub_1A9976CB0();
        (*(*(v47 - 8) + 56))(v44, 1, 1, v47);
        swift_storeEnumTagMultiPayload();
        (*(v45 + 32))(*(*((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x40) + 40), v44, v46);
        swift_continuation_resume();
      }

      else
      {
        v12 = *(v0[35] + 16);
        if (v12)
        {
          v13 = (v0[35] + 32);
          sub_1A9976BC0();
          sub_1A97FC63C();
          do
          {
            v14 = v0[47];
            v15 = *v13++;
            v16 = swift_allocError();
            sub_1A99766C0();
            swift_allocError();
            *v17 = v16;
            swift_continuation_throwingResumeWithError();
            --v12;
          }

          while (v12);
        }

        sub_1A9976CB0();
      }

      sub_1A98613A4(v11);
    }

    v48 = v0[64];
    v49 = v0[62];
    v50 = v0[60];
    v52 = v0[56];
    v51 = v0[57];
    v54 = v0[51];
    v53 = v0[52];
    (*(v0[66] + 8))(v0[67], v0[65]);

    v55 = v0[1];

    return v55();
  }

  else
  {
    v18 = v0[62];
    v61 = v0[70];
    v62 = v0[55];
    v59 = v0[57];
    v60 = v0[54];
    v64 = v0[56];
    v66 = v0[53];
    v19 = v0[45];
    v57 = v18;
    v58 = v0[44];
    v21 = v0[42];
    v20 = v0[43];
    v22 = v0[39];
    v23 = v0[40];
    v24 = v0[38];
    (*(v1 + 32))();
    v25 = *(v24 + 16);
    v26 = swift_task_alloc();
    v26[2] = v23;
    v26[3] = v20;
    v26[4] = v19;
    v26[5] = v22;
    v26[6] = v21;
    v26[7] = v58;
    v26[8] = v57;
    v0[28] = v23;
    v0[29] = v20;
    v0[30] = v19;
    v0[31] = v22;
    v0[32] = v21;
    v0[33] = v58;
    type metadata accessor for CombineLatestStateMachine();
    sub_1A9862D90(sub_1A98615E0, v26, v25);

    (*(v62 + 16))(v64, v59, v60);
    if ((*(*(v66 - 8) + 48))(v64, 1) != 1)
    {
      v27 = v0[56];
      v29 = v0[51];
      v28 = v0[52];
      v30 = v0[49];
      v31 = v0[50];
      v32 = v0[48];
      v33 = *v27;
      sub_1A9976CE0();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(v31 + 32))(v28, &v27[*(TupleTypeMetadata2 + 48)], v32);
      (*(v31 + 16))(v29, v28, v32);
      (*(v30 + 32))(*(*(v33 + 64) + 40), v29, v32);
      swift_continuation_resume();
      (*(v31 + 8))(v28, v32);
    }

    v36 = v0[61];
    v35 = v0[62];
    v37 = v0[41];
    (*(v0[55] + 8))(v0[57], v0[54]);
    (*(v36 + 8))(v35, v37);

    return MEMORY[0x1EEE6DFA0](sub_1A985D07C, 0, 0);
  }
}

uint64_t sub_1A985DAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v36 = a8;
  v31 = a2;
  v32 = a7;
  v27 = a3;
  v28 = a6;
  v34 = a5;
  v30 = a4;
  v38 = a9;
  v39 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = sub_1A99770A0();
  v35 = *(v37 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v12 = (&v26 - v11);
  v13 = swift_getAssociatedTypeWitness();
  v33 = sub_1A99770A0();
  v14 = *(v33 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v17 = &v26 - v16;
  v18 = swift_getAssociatedTypeWitness();
  v29 = sub_1A99770A0();
  v19 = *(v29 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v22 = &v26 - v21;
  v23 = *(v18 - 8);
  (*(v23 + 16))(&v26 - v21, v31, v18);
  (*(v23 + 56))(v22, 0, 1, v18);
  (*(*(v13 - 8) + 56))(v17, 1, 1, v13);
  (*(*(AssociatedTypeWitness - 8) + 56))(v12, 1, 1, AssociatedTypeWitness);
  v40 = v27;
  v41 = v30;
  v42 = v34;
  v43 = v28;
  v44 = v32;
  v45 = v36;
  v24 = type metadata accessor for CombineLatestStateMachine();
  sub_1A97F5A20(v22, v17, v12, v24, v38);
  (*(v35 + 8))(v12, v37);
  (*(v14 + 8))(v17, v33);
  return (*(v19 + 8))(v22, v29);
}

uint64_t sub_1A985DE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 296) = a4;
  *(v5 + 304) = a5;
  v6 = *a5;
  v7 = *(*a5 + 104);
  *(v5 + 312) = v7;
  v8 = v6[10];
  *(v5 + 320) = v8;
  swift_getAssociatedTypeWitness();
  v32 = v6[14];
  *(v5 + 328) = v32;
  v31 = v6[11];
  *(v5 + 336) = v31;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v5 + 344) = AssociatedTypeWitness;
  v10 = v6[15];
  *(v5 + 352) = v10;
  v11 = v6[12];
  *(v5 + 360) = v11;
  swift_getAssociatedTypeWitness();
  sub_1A99770A0();
  *(v5 + 368) = swift_getTupleTypeMetadata3();
  sub_1A99770A0();
  *(v5 + 376) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v12 = sub_1A9977A20();
  *(v5 + 384) = v12;
  v13 = *(v12 - 8);
  *(v5 + 392) = v13;
  *(v5 + 400) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  *&v15 = v8;
  *(&v15 + 1) = v31;
  *&v16 = v11;
  *(&v16 + 1) = v7;
  *(v5 + 96) = v16;
  *(v5 + 80) = v15;
  *(v5 + 112) = v32;
  *(v5 + 120) = v10;
  *(v5 + 424) = type metadata accessor for CombineLatestStateMachine.ElementProducedAction();
  v17 = sub_1A99770A0();
  *(v5 + 432) = v17;
  v18 = *(v17 - 8);
  *(v5 + 440) = v18;
  v19 = *(v18 + 64) + 15;
  *(v5 + 448) = swift_task_alloc();
  *(v5 + 456) = swift_task_alloc();
  v20 = sub_1A99770A0();
  *(v5 + 464) = v20;
  v21 = *(v20 - 8);
  *(v5 + 472) = v21;
  v22 = *(v21 + 64) + 15;
  *(v5 + 480) = swift_task_alloc();
  v23 = *(AssociatedTypeWitness - 8);
  *(v5 + 488) = v23;
  v24 = *(v23 + 64) + 15;
  *(v5 + 496) = swift_task_alloc();
  v25 = *(v31 - 8);
  *(v5 + 504) = v25;
  v26 = *(v25 + 64) + 15;
  *(v5 + 512) = swift_task_alloc();
  v27 = swift_getAssociatedTypeWitness();
  *(v5 + 520) = v27;
  v28 = *(v27 - 8);
  *(v5 + 528) = v28;
  v29 = *(v28 + 64) + 15;
  *(v5 + 536) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A985E2BC, 0, 0);
}

uint64_t sub_1A985E2BC()
{
  v1 = v0[67];
  v2 = v0[41];
  (*(v0[63] + 16))(v0[64], v0[37], v0[42]);
  sub_1A9976D30();

  return MEMORY[0x1EEE6DFA0](sub_1A985E360, 0, 0);
}

uint64_t sub_1A985E360()
{
  v1 = v0[38];
  v0[2] = v0;
  v0[3] = sub_1A985E40C;
  v2 = swift_continuation_init();
  sub_1A9860434(v2, v1, sub_1A98614BC);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A985E40C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 544) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1A985E6D4, 0, 0);
  }

  else
  {
    v4 = v1[65];
    v5 = v1[41];
    v6 = v1[42];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = *(MEMORY[0x1E69E85A8] + 4);
    v9 = swift_task_alloc();
    v1[69] = v9;
    *v9 = v2;
    v9[1] = sub_1A985E5C0;
    v10 = v1[67];
    v11 = v1[65];
    v12 = v1[60];

    return MEMORY[0x1EEE6D8C8](v12, v11, AssociatedConformanceWitness);
  }
}

uint64_t sub_1A985E5C0()
{
  v2 = *(*v1 + 552);
  v5 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v3 = sub_1A985EE80;
  }

  else
  {
    v3 = sub_1A985E7C4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A985E6D4()
{
  v1 = v0[68];
  v2 = v0[64];
  v3 = v0[62];
  v4 = v0[60];
  v6 = v0[56];
  v5 = v0[57];
  v8 = v0[51];
  v7 = v0[52];
  (*(v0[66] + 8))(v0[67], v0[65]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1A985E7C4()
{
  v2 = v0[60];
  v1 = v0[61];
  if ((*(v1 + 48))(v2, 1, v0[43]) == 1)
  {
    v65 = v0[70];
    v4 = v0[44];
    v3 = v0[45];
    v5 = v0[41];
    v6 = v0[42];
    v7 = v0[39];
    v8 = v0[40];
    v9 = v0[38];
    (*(v0[59] + 8))(v2, v0[58]);
    v63 = *(v9 + 16);
    v10 = swift_task_alloc();
    v10[2] = v8;
    v10[3] = v6;
    v10[4] = v3;
    v10[5] = v7;
    v10[6] = v5;
    v10[7] = v4;
    v0[16] = v8;
    v0[17] = v6;
    v0[18] = v3;
    v0[19] = v7;
    v0[20] = v5;
    v0[21] = v4;
    type metadata accessor for CombineLatestStateMachine();
    v0[22] = v8;
    v0[23] = v6;
    v0[24] = v3;
    v0[25] = v7;
    v0[26] = v5;
    v0[27] = v4;
    type metadata accessor for CombineLatestStateMachine.UpstreamFinishedAction();
    sub_1A99770A0();
    sub_1A9862D90(sub_1A9861474, v10, v63);

    v11 = v0[34];
    if ((~v11 & 0xF000000000000007) != 0)
    {
      if (v11 < 0)
      {
        v38 = *(v0[36] + 16);
        if (v38)
        {
          v39 = (v0[36] + 32);
          sub_1A9976BC0();
          sub_1A97FC63C();
          do
          {
            v40 = v0[47];
            v41 = *v39++;
            v42 = swift_allocError();
            sub_1A99766C0();
            swift_allocError();
            *v43 = v42;
            swift_continuation_throwingResumeWithError();
            --v38;
          }

          while (v38);
        }

        v44 = v0[52];
        v46 = v0[48];
        v45 = v0[49];
        v47 = v0[46];
        sub_1A9976CB0();
        (*(*(v47 - 8) + 56))(v44, 1, 1, v47);
        swift_storeEnumTagMultiPayload();
        (*(v45 + 32))(*(*((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x40) + 40), v44, v46);
        swift_continuation_resume();
      }

      else
      {
        v12 = *(v0[35] + 16);
        if (v12)
        {
          v13 = (v0[35] + 32);
          sub_1A9976BC0();
          sub_1A97FC63C();
          do
          {
            v14 = v0[47];
            v15 = *v13++;
            v16 = swift_allocError();
            sub_1A99766C0();
            swift_allocError();
            *v17 = v16;
            swift_continuation_throwingResumeWithError();
            --v12;
          }

          while (v12);
        }

        sub_1A9976CB0();
      }

      sub_1A98613A4(v11);
    }

    v48 = v0[64];
    v49 = v0[62];
    v50 = v0[60];
    v52 = v0[56];
    v51 = v0[57];
    v54 = v0[51];
    v53 = v0[52];
    (*(v0[66] + 8))(v0[67], v0[65]);

    v55 = v0[1];

    return v55();
  }

  else
  {
    v18 = v0[62];
    v61 = v0[70];
    v62 = v0[55];
    v59 = v0[57];
    v60 = v0[54];
    v64 = v0[56];
    v66 = v0[53];
    v19 = v0[45];
    v57 = v18;
    v58 = v0[44];
    v21 = v0[41];
    v20 = v0[42];
    v22 = v0[39];
    v23 = v0[40];
    v24 = v0[38];
    (*(v1 + 32))();
    v25 = *(v24 + 16);
    v26 = swift_task_alloc();
    v26[2] = v23;
    v26[3] = v20;
    v26[4] = v19;
    v26[5] = v22;
    v26[6] = v21;
    v26[7] = v58;
    v26[8] = v57;
    v0[28] = v23;
    v0[29] = v20;
    v0[30] = v19;
    v0[31] = v22;
    v0[32] = v21;
    v0[33] = v58;
    type metadata accessor for CombineLatestStateMachine();
    sub_1A9862D90(sub_1A9861490, v26, v25);

    (*(v62 + 16))(v64, v59, v60);
    if ((*(*(v66 - 8) + 48))(v64, 1) != 1)
    {
      v27 = v0[56];
      v29 = v0[51];
      v28 = v0[52];
      v30 = v0[49];
      v31 = v0[50];
      v32 = v0[48];
      v33 = *v27;
      sub_1A9976CE0();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(v31 + 32))(v28, &v27[*(TupleTypeMetadata2 + 48)], v32);
      (*(v31 + 16))(v29, v28, v32);
      (*(v30 + 32))(*(*(v33 + 64) + 40), v29, v32);
      swift_continuation_resume();
      (*(v31 + 8))(v28, v32);
    }

    v36 = v0[61];
    v35 = v0[62];
    v37 = v0[43];
    (*(v0[55] + 8))(v0[57], v0[54]);
    (*(v36 + 8))(v35, v37);

    return MEMORY[0x1EEE6DFA0](sub_1A985E360, 0, 0);
  }
}

uint64_t sub_1A985EE80()
{
  v1 = v0[70];
  v2 = v0[64];
  v3 = v0[62];
  v4 = v0[60];
  v6 = v0[56];
  v5 = v0[57];
  v8 = v0[51];
  v7 = v0[52];
  (*(v0[66] + 8))(v0[67], v0[65]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1A985EF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v35 = a8;
  v29 = a4;
  v30 = a7;
  v27 = a3;
  v28 = a6;
  v33 = a5;
  v31 = a2;
  v37 = a9;
  v38 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = sub_1A99770A0();
  v34 = *(v36 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v12 = (&v27 - v11);
  v13 = swift_getAssociatedTypeWitness();
  v32 = sub_1A99770A0();
  v14 = *(v32 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v17 = &v27 - v16;
  v18 = swift_getAssociatedTypeWitness();
  v19 = sub_1A99770A0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v27 - v22;
  (*(*(v18 - 8) + 56))(&v27 - v22, 1, 1, v18);
  v24 = *(v13 - 8);
  (*(v24 + 16))(v17, v31, v13);
  (*(v24 + 56))(v17, 0, 1, v13);
  (*(*(AssociatedTypeWitness - 8) + 56))(v12, 1, 1, AssociatedTypeWitness);
  v39 = v27;
  v40 = v29;
  v41 = v33;
  v42 = v28;
  v43 = v30;
  v44 = v35;
  v25 = type metadata accessor for CombineLatestStateMachine();
  sub_1A97F5A20(v23, v17, v12, v25, v37);
  (*(v34 + 8))(v12, v36);
  (*(v14 + 8))(v17, v32);
  return (*(v20 + 8))(v23, v19);
}

uint64_t sub_1A985F320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 296) = a4;
  *(v5 + 304) = a5;
  v6 = *a5;
  v7 = *(*a5 + 104);
  *(v5 + 312) = v7;
  v33 = v7;
  v8 = v6[10];
  *(v5 + 320) = v8;
  swift_getAssociatedTypeWitness();
  v9 = v6[14];
  *(v5 + 328) = v9;
  v10 = v6[11];
  *(v5 + 336) = v10;
  swift_getAssociatedTypeWitness();
  v32 = v6[15];
  *(v5 + 344) = v32;
  v11 = v6[12];
  *(v5 + 352) = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v5 + 360) = AssociatedTypeWitness;
  v13 = sub_1A99770A0();
  *(v5 + 368) = v13;
  *(v5 + 376) = swift_getTupleTypeMetadata3();
  sub_1A99770A0();
  *(v5 + 384) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v14 = sub_1A9977A20();
  *(v5 + 392) = v14;
  v15 = *(v14 - 8);
  *(v5 + 400) = v15;
  *(v5 + 408) = v15;
  v16 = *(v15 + 64) + 15;
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = swift_task_alloc();
  *&v17 = v8;
  *(&v17 + 1) = v10;
  *&v18 = v11;
  *(&v18 + 1) = v33;
  *(v5 + 96) = v18;
  *(v5 + 80) = v17;
  *(v5 + 112) = v9;
  *(v5 + 120) = v32;
  *(v5 + 432) = type metadata accessor for CombineLatestStateMachine.ElementProducedAction();
  v19 = sub_1A99770A0();
  *(v5 + 440) = v19;
  v20 = *(v19 - 8);
  *(v5 + 448) = v20;
  v21 = *(v20 + 64) + 15;
  *(v5 + 456) = swift_task_alloc();
  *(v5 + 464) = swift_task_alloc();
  v22 = *(v13 - 8);
  *(v5 + 472) = v22;
  v23 = *(v22 + 64) + 15;
  *(v5 + 480) = swift_task_alloc();
  v24 = *(AssociatedTypeWitness - 8);
  *(v5 + 488) = v24;
  v25 = *(v24 + 64) + 15;
  *(v5 + 496) = swift_task_alloc();
  v26 = *(v11 - 8);
  *(v5 + 504) = v26;
  v27 = *(v26 + 64) + 15;
  *(v5 + 512) = swift_task_alloc();
  v28 = swift_getAssociatedTypeWitness();
  *(v5 + 520) = v28;
  v29 = *(v28 - 8);
  *(v5 + 528) = v29;
  v30 = *(v29 + 64) + 15;
  *(v5 + 536) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A985F77C, 0, 0);
}

uint64_t sub_1A985F77C()
{
  v1 = v0[67];
  v2 = v0[43];
  (*(v0[63] + 16))(v0[64], v0[37], v0[44]);
  sub_1A9976D30();

  return MEMORY[0x1EEE6DFA0](sub_1A985F820, 0, 0);
}

uint64_t sub_1A985F820()
{
  v1 = v0[38];
  v0[2] = v0;
  v0[3] = sub_1A985F8CC;
  v2 = swift_continuation_init();
  sub_1A9860434(v2, v1, sub_1A9861424);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A985F8CC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 544) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1A985FB94, 0, 0);
  }

  else
  {
    v4 = v1[65];
    v5 = v1[43];
    v6 = v1[44];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = *(MEMORY[0x1E69E85A8] + 4);
    v9 = swift_task_alloc();
    v1[69] = v9;
    *v9 = v2;
    v9[1] = sub_1A985FA80;
    v10 = v1[67];
    v11 = v1[65];
    v12 = v1[60];

    return MEMORY[0x1EEE6D8C8](v12, v11, AssociatedConformanceWitness);
  }
}

uint64_t sub_1A985FA80()
{
  v2 = *(*v1 + 552);
  v5 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v3 = sub_1A9860344;
  }

  else
  {
    v3 = sub_1A985FC84;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A985FB94()
{
  v1 = v0[68];
  v2 = v0[64];
  v3 = v0[62];
  v4 = v0[60];
  v6 = v0[57];
  v5 = v0[58];
  v8 = v0[52];
  v7 = v0[53];
  (*(v0[66] + 8))(v0[67], v0[65]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1A985FC84()
{
  v2 = v0[60];
  v1 = v0[61];
  if ((*(v1 + 48))(v2, 1, v0[45]) == 1)
  {
    v65 = v0[70];
    v4 = v0[43];
    v3 = v0[44];
    v5 = v0[41];
    v6 = v0[42];
    v7 = v0[39];
    v8 = v0[40];
    v9 = v0[38];
    (*(v0[59] + 8))(v2, v0[46]);
    v63 = *(v9 + 16);
    v10 = swift_task_alloc();
    v10[2] = v8;
    v10[3] = v6;
    v10[4] = v3;
    v10[5] = v7;
    v10[6] = v5;
    v10[7] = v4;
    v0[16] = v8;
    v0[17] = v6;
    v0[18] = v3;
    v0[19] = v7;
    v0[20] = v5;
    v0[21] = v4;
    type metadata accessor for CombineLatestStateMachine();
    v0[22] = v8;
    v0[23] = v6;
    v0[24] = v3;
    v0[25] = v7;
    v0[26] = v5;
    v0[27] = v4;
    type metadata accessor for CombineLatestStateMachine.UpstreamFinishedAction();
    sub_1A99770A0();
    sub_1A9862D90(sub_1A9861388, v10, v63);

    v11 = v0[34];
    if ((~v11 & 0xF000000000000007) != 0)
    {
      if (v11 < 0)
      {
        v38 = *(v0[36] + 16);
        if (v38)
        {
          v39 = (v0[36] + 32);
          sub_1A9976BC0();
          sub_1A97FC63C();
          do
          {
            v40 = v0[48];
            v41 = *v39++;
            v42 = swift_allocError();
            sub_1A99766C0();
            swift_allocError();
            *v43 = v42;
            swift_continuation_throwingResumeWithError();
            --v38;
          }

          while (v38);
        }

        v44 = v0[53];
        v46 = v0[49];
        v45 = v0[50];
        v47 = v0[47];
        sub_1A9976CB0();
        (*(*(v47 - 8) + 56))(v44, 1, 1, v47);
        swift_storeEnumTagMultiPayload();
        (*(v45 + 32))(*(*((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x40) + 40), v44, v46);
        swift_continuation_resume();
      }

      else
      {
        v12 = *(v0[35] + 16);
        if (v12)
        {
          v13 = (v0[35] + 32);
          sub_1A9976BC0();
          sub_1A97FC63C();
          do
          {
            v14 = v0[48];
            v15 = *v13++;
            v16 = swift_allocError();
            sub_1A99766C0();
            swift_allocError();
            *v17 = v16;
            swift_continuation_throwingResumeWithError();
            --v12;
          }

          while (v12);
        }

        sub_1A9976CB0();
      }

      sub_1A98613A4(v11);
    }

    v48 = v0[64];
    v49 = v0[62];
    v50 = v0[60];
    v52 = v0[57];
    v51 = v0[58];
    v54 = v0[52];
    v53 = v0[53];
    (*(v0[66] + 8))(v0[67], v0[65]);

    v55 = v0[1];

    return v55();
  }

  else
  {
    v18 = v0[62];
    v61 = v0[70];
    v62 = v0[56];
    v59 = v0[58];
    v60 = v0[55];
    v64 = v0[57];
    v66 = v0[54];
    v19 = v0[44];
    v57 = v18;
    v58 = v0[43];
    v21 = v0[41];
    v20 = v0[42];
    v22 = v0[39];
    v23 = v0[40];
    v24 = v0[38];
    (*(v1 + 32))();
    v25 = *(v24 + 16);
    v26 = swift_task_alloc();
    v26[2] = v23;
    v26[3] = v20;
    v26[4] = v19;
    v26[5] = v22;
    v26[6] = v21;
    v26[7] = v58;
    v26[8] = v57;
    v0[28] = v23;
    v0[29] = v20;
    v0[30] = v19;
    v0[31] = v22;
    v0[32] = v21;
    v0[33] = v58;
    type metadata accessor for CombineLatestStateMachine();
    sub_1A9862D90(sub_1A98613F8, v26, v25);

    (*(v62 + 16))(v64, v59, v60);
    if ((*(*(v66 - 8) + 48))(v64, 1) != 1)
    {
      v27 = v0[57];
      v29 = v0[52];
      v28 = v0[53];
      v30 = v0[50];
      v31 = v0[51];
      v32 = v0[49];
      v33 = *v27;
      sub_1A9976CE0();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(v31 + 32))(v28, &v27[*(TupleTypeMetadata2 + 48)], v32);
      (*(v31 + 16))(v29, v28, v32);
      (*(v30 + 32))(*(*(v33 + 64) + 40), v29, v32);
      swift_continuation_resume();
      (*(v31 + 8))(v28, v32);
    }

    v36 = v0[61];
    v35 = v0[62];
    v37 = v0[45];
    (*(v0[56] + 8))(v0[58], v0[55]);
    (*(v36 + 8))(v35, v37);

    return MEMORY[0x1EEE6DFA0](sub_1A985F820, 0, 0);
  }
}

uint64_t sub_1A9860344()
{
  v1 = v0[70];
  v2 = v0[64];
  v3 = v0[62];
  v4 = v0[60];
  v6 = v0[57];
  v5 = v0[58];
  v8 = v0[52];
  v7 = v0[53];
  (*(v0[66] + 8))(v0[67], v0[65]);

  v9 = v0[1];

  return v9();
}

void sub_1A9860434(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  v4 = *a2;
  v5 = a2[2];
  v10 = *(*a2 + 80);
  v11 = v4[11];
  v12 = v4[12];
  v13 = v4[13];
  v14 = v4[14];
  v15 = v4[15];
  v16 = a1;
  type metadata accessor for CombineLatestStateMachine();
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  type metadata accessor for CombineLatestStateMachine.ChildTaskSuspendedAction();
  sub_1A99770A0();
  sub_1A9862D90(a3, &v9, v5);
  v6 = v17;
  v7 = v18;
  if ((~v17 & 0xF00000000000000FLL) != 0 || (v18 & 0xF000000000000007) != 0xF000000000000007)
  {
    if (v18 < 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
      swift_allocError();
      *v8 = v7 & 0x7FFFFFFFFFFFFFFFLL;
      swift_continuation_throwingResumeWithError();
    }

    else
    {
      swift_continuation_throwingResume();
      sub_1A9861440(v6, v7);
    }
  }
}

uint64_t sub_1A98605F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v35 = a8;
  v29 = a4;
  v30 = a7;
  v27 = a3;
  v28 = a6;
  v32 = a2;
  v33 = a5;
  v37 = a9;
  v38 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = sub_1A99770A0();
  v34 = *(v36 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v12 = (&v27 - v11);
  v13 = swift_getAssociatedTypeWitness();
  v31 = sub_1A99770A0();
  v14 = *(v31 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v17 = &v27 - v16;
  v18 = swift_getAssociatedTypeWitness();
  v19 = sub_1A99770A0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v27 - v22;
  (*(*(v18 - 8) + 56))(&v27 - v22, 1, 1, v18);
  (*(*(v13 - 8) + 56))(v17, 1, 1, v13);
  v24 = *(AssociatedTypeWitness - 8);
  (*(v24 + 16))(v12, v32, AssociatedTypeWitness);
  (*(v24 + 56))(v12, 0, 1, AssociatedTypeWitness);
  v39 = v27;
  v40 = v29;
  v41 = v33;
  v42 = v28;
  v43 = v30;
  v44 = v35;
  v25 = type metadata accessor for CombineLatestStateMachine();
  sub_1A97F5A20(v23, v17, v12, v25, v37);
  (*(v34 + 8))(v12, v36);
  (*(v14 + 8))(v17, v31);
  return (*(v20 + 8))(v23, v19);
}

uint64_t sub_1A986099C()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_1A98609BC()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1A9860A0C@<X0>(uint64_t *a1@<X8>)
{
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v3 = type metadata accessor for CombineLatestStateMachine();
  result = sub_1A97F3F28(v3);
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1A9860A70(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A9860AB0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A97B2638;

  return sub_1A9859C44(a1, v1);
}

unint64_t sub_1A9860B54@<X0>(unint64_t *a1@<X8>)
{
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v3 = type metadata accessor for CombineLatestStateMachine();
  result = sub_1A97FA764(v3);
  *a1 = result;
  a1[1] = v5;
  a1[2] = v6;
  return result;
}

uint64_t sub_1A9860BBC(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1A9860BD0();
  }

  return result;
}

uint64_t sub_1A9860BD0()
{
}

uint64_t sub_1A9860C38(uint64_t a1)
{
  v3 = v2;
  v5 = v1[6];
  v6 = (*(*(v1[4] - 8) + 80) + 80) & ~*(*(v1[4] - 8) + 80);
  v7 = (*(*(v1[4] - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1[5] - 8);
  v9 = *(v8 + 64);
  v10 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v11 = *(sub_1A99770A0() - 8);
  v12 = (v10 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = *(v1 + v7);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1A97B2638;

  return sub_1A985B880(a1, v13, v14, v1 + v6, v15, v1 + v10, v1 + v12);
}

uint64_t sub_1A9860DF0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1A97B2988;

  return sub_1A985BACC(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1A9860EB8(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[4] - 8) + 80) + 80) & ~*(*(v1[4] - 8) + 80);
  v6 = v1[2];
  v7 = *(v1 + ((*(*(v1[4] - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A97B2988;

  return sub_1A985CB74(a1, v6, v4, v1 + v5, v7);
}

uint64_t sub_1A9860FD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A986103C(uint64_t a1)
{
  v4 = (*(*(v1[5] - 8) + 80) + 80) & ~*(*(v1[5] - 8) + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + ((*(*(v1[5] - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A97B2988;

  return sub_1A985DE5C(a1, v5, v6, v1 + v4, v7);
}

uint64_t sub_1A9861158@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 64);
  v9 = *(v1 + 16);
  v10 = *(v1 + 32);
  v11 = *(v1 + 48);
  v4 = type metadata accessor for CombineLatestStateMachine();
  result = sub_1A97F9A20(v3, v4);
  *a1 = result;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  return result;
}

uint64_t sub_1A98611D4(uint64_t a1, id a2, uint64_t a3)
{
  if ((~(a1 & a3) & 0xF000000000000007) != 0)
  {
    return sub_1A98611EC(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1A98611EC(int a1, id a2, uint64_t a3)
{
  if (a3 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_1A986126C(uint64_t a1)
{
  v4 = (*(*(v1[6] - 8) + 80) + 80) & ~*(*(v1[6] - 8) + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + ((*(*(v1[6] - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A97B2988;

  return sub_1A985F320(a1, v5, v6, v1 + v4, v7);
}

uint64_t sub_1A98613A4(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1A98613B8();
  }

  return result;
}

uint64_t sub_1A98613B8()
{
}

void sub_1A9861440(uint64_t a1, uint64_t a2)
{
  if ((~a1 & 0xF00000000000000FLL) != 0 || (a2 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1A9861464(a1, a2);
  }
}

void sub_1A9861464(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }
}

uint64_t sub_1A98614D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A9861564@<X0>(unint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v9 = v2[1];
  v10 = v2[2];
  v11 = v2[3];
  v5 = type metadata accessor for CombineLatestStateMachine();
  result = sub_1A97F868C(a1, v5);
  *a2 = result;
  a2[1] = v7;
  a2[2] = v8;
  return result;
}

uint64_t sub_1A9861658@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 64);
  v9 = *(v2 + 16);
  v10 = *(v2 + 32);
  v11 = *(v2 + 48);
  v6 = type metadata accessor for CombineLatestStateMachine();
  result = sub_1A97F5454(a1, v5, v6);
  *a2 = result;
  a2[1] = v8;
  return result;
}

void *sub_1A98616D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v41 = a3;
  v38 = a1;
  v4 = *v3;
  v34 = *(*v3 + 96);
  v5 = v34;
  v39 = sub_1A99770A0();
  v37 = *(v39 - 8);
  v6 = *(v37 + 64);
  v7 = MEMORY[0x1EEE9AC00](v39);
  v36 = &v32 - v8;
  v9 = v4[11];
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v35 = &v32 - v13;
  v14 = v4[10];
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v18 = &v32 - v17;
  v33 = v4[13];
  v32 = v4[14];
  *&v19 = v14;
  *(&v19 + 1) = v9;
  *&v20 = v5;
  *(&v20 + 1) = v33;
  v21 = v4[15];
  v42 = v19;
  v43 = v20;
  v44 = v32;
  v45 = v21;
  v22 = type metadata accessor for CombineLatestStateMachine();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v32 - v25;
  (*(v15 + 16))(v18, v38, v14);
  v27 = *(v10 + 16);
  v28 = v35;
  v27(v35, v40, v9);
  v29 = v36;
  (*(v37 + 16))(v36, v41, v39);
  sub_1A97F3D00(v18, v28, v29, v14, v9, v34, v26);
  v30 = sub_1A9862F08();
  (*(v23 + 8))(v26, v22);
  v3[2] = v30;
  return v3;
}

uint64_t _arrayDescription<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v34 = *(AssociatedTypeWitness - 8);
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v32 - v8;
  v10 = sub_1A99770A0();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v32 - v13;
  v15 = *(a2 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_getAssociatedTypeWitness();
  v33 = *(v19 - 8);
  v20 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v32 - v21;
  v38 = 91;
  v39 = 0xE100000000000000;
  (*(v15 + 16))(v18, a1, a2);
  sub_1A99769E0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36 = v22;
  v37 = v19;
  v35 = AssociatedConformanceWitness;
  sub_1A9977160();
  v24 = v34;
  v25 = *(v34 + 48);
  if (v25(v14, 1, AssociatedTypeWitness) != 1)
  {
    v29 = *(v24 + 32);
    v27 = v24 + 32;
    v28 = v29;
    v29(v9, v14, AssociatedTypeWitness);
    v34 = xmmword_1A9996D60;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5FC0, &qword_1A999A498);
      v30 = swift_allocObject();
      *(v30 + 16) = v34;
      *(v30 + 56) = AssociatedTypeWitness;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v30 + 32));
      (*(v27 - 16))(boxed_opaque_existential_0, v9, AssociatedTypeWitness);
      sub_1A9977220();

      (*(v27 - 24))(v9, AssociatedTypeWitness);
      sub_1A9977160();
      if (v25(v14, 1, AssociatedTypeWitness) == 1)
      {
        break;
      }

      v28(v9, v14, AssociatedTypeWitness);
      MEMORY[0x1AC5895B0](8236, 0xE200000000000000);
    }
  }

  (*(v33 + 8))(v36, v37);
  MEMORY[0x1AC5895B0](93, 0xE100000000000000);
  return v38;
}

uint64_t sub_1A9861EBC()
{
  sub_1A9861F94();
  v0 = sub_1A99769A0();
  MEMORY[0x1AC5895B0](v0);

  return 30768;
}

uint64_t _addressString<A>(for:)()
{
  sub_1A9861F94();
  v0 = sub_1A99769A0();
  MEMORY[0x1AC5895B0](v0);

  return 30768;
}

unint64_t sub_1A9861F94()
{
  result = qword_1EB3B31E8;
  if (!qword_1EB3B31E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B31E8);
  }

  return result;
}

uint64_t _dictionaryDescription<A, B, C>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v60 = *(a3 - 8);
  v10 = *(v60 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v62 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v59 = sub_1A99770A0();
  v54 = *(v59 - 8);
  v16 = *(v54 + 64);
  v17 = MEMORY[0x1EEE9AC00](v59);
  v58 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v44 - v20;
  v56 = *(a4 - 8);
  v22 = *(v56 + 8);
  MEMORY[0x1EEE9AC00](v19);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v29 = &v44 - v28;
  v57 = a4;
  if (sub_1A9976E80())
  {
    return 6109787;
  }

  v45 = v26;
  v63 = 91;
  v64 = 0xE100000000000000;
  (*(v56 + 2))(v24, a1, v57);
  v56 = v29;
  sub_1A99769E0();
  v57 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v54 += 32;
  v55 = AssociatedConformanceWitness;
  v32 = TupleTypeMetadata2;
  v52 = (v47 + 32);
  v53 = TupleTypeMetadata2 - 8;
  v50 = (v47 + 16);
  v51 = (v60 + 32);
  v48 = (v60 + 8);
  v49 = (v60 + 16);
  v33 = (v47 + 8);
  v34 = 1;
  v60 = xmmword_1A9996D60;
  while (1)
  {
    v41 = v58;
    sub_1A9977160();
    (*v54)(v21, v41, v59);
    if ((*(*(v32 - 8) + 48))(v21, 1, v32) == 1)
    {
      break;
    }

    v42 = v32;
    v43 = *(v32 + 48);
    (*v52)(v61, v21, a2);
    (*v51)(v62, &v21[v43], a3);
    if ((v34 & 1) == 0)
    {
      MEMORY[0x1AC5895B0](8236, 0xE200000000000000);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5FC0, &qword_1A999A498);
    v35 = swift_allocObject();
    *(v35 + 16) = v60;
    *(v35 + 56) = a2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v35 + 32));
    v37 = v61;
    (*v50)(boxed_opaque_existential_0, v61, a2);
    sub_1A9977220();

    MEMORY[0x1AC5895B0](8250, 0xE200000000000000);
    v38 = swift_allocObject();
    *(v38 + 16) = v60;
    *(v38 + 56) = a3;
    v39 = __swift_allocate_boxed_opaque_existential_0((v38 + 32));
    v40 = v62;
    (*v49)(v39, v62, a3);
    sub_1A9977220();

    (*v48)(v40, a3);
    (*v33)(v37, a2);
    v34 = 0;
    v32 = v42;
  }

  (*(v45 + 8))(v56, v57);
  MEMORY[0x1AC5895B0](93, 0xE100000000000000);
  return v63;
}

uint64_t SFAirDrop.EndpointMetadata.imageData.getter()
{
  v1 = *v0;
  sub_1A97C1554(*v0, *(v0 + 8));
  return v1;
}

uint64_t SFAirDrop.EndpointMetadata.init(imageData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t SFAirDrop.EndpointMetadata.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A99772B0();

  if (v2 >> 60 == 15)
  {
    v3 = 0xE300000000000000;
    v4 = 7104878;
  }

  else
  {
    v4 = sub_1A9976040();
    v3 = v5;
  }

  MEMORY[0x1AC5895B0](v4, v3);

  return 0xD00000000000002CLL;
}

uint64_t sub_1A9862718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A99777E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A98627A8(uint64_t a1)
{
  v2 = sub_1A9862984();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98627E4(uint64_t a1)
{
  v2 = sub_1A9862984();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.EndpointMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B31F0, &qword_1A999A4A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97C1554(v8, v9);
  sub_1A9862984();
  sub_1A9977AA0();
  v12 = v8;
  v13 = v9;
  sub_1A97B4370();
  sub_1A9977680();
  sub_1A97D8688(v12, v13);
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1A9862984()
{
  result = qword_1EB3B31F8;
  if (!qword_1EB3B31F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B31F8);
  }

  return result;
}

uint64_t SFAirDrop.EndpointMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3200, &qword_1A999A4A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9862984();
  sub_1A9977A70();
  if (!v2)
  {
    sub_1A97B446C();
    sub_1A9977590();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1A9862B7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A9862BD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

unint64_t sub_1A9862C48()
{
  result = qword_1EB3B3208;
  if (!qword_1EB3B3208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3208);
  }

  return result;
}

unint64_t sub_1A9862CA0()
{
  result = qword_1EB3B3210;
  if (!qword_1EB3B3210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3210);
  }

  return result;
}

unint64_t sub_1A9862CF8()
{
  result = qword_1EB3B3218[0];
  if (!qword_1EB3B3218[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3B3218);
  }

  return result;
}

void sub_1A9862D90(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t sub_1A9862E48()
{
  v0 = *MEMORY[0x1AC589FD0]();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1A9862EB4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A9862F6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

uint64_t sub_1A9863018()
{
  v1 = 1852141679;
  v2 = 0x6572616873;
  if (*v0 != 2)
  {
    v2 = 0x726566736E617274;
  }

  if (*v0)
  {
    v1 = 1684956531;
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

uint64_t sub_1A9863080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A986760C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A98630A8(uint64_t a1)
{
  v2 = sub_1A9863738();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98630E4(uint64_t a1)
{
  v2 = sub_1A9863738();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9863120(uint64_t a1)
{
  v2 = sub_1A9863888();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A986315C(uint64_t a1)
{
  v2 = sub_1A9863888();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9863198(uint64_t a1)
{
  v2 = sub_1A9863834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98631D4(uint64_t a1)
{
  v2 = sub_1A9863834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9863210(uint64_t a1)
{
  v2 = sub_1A98637E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A986324C(uint64_t a1)
{
  v2 = sub_1A98637E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9863288(uint64_t a1)
{
  v2 = sub_1A986378C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98632C4(uint64_t a1)
{
  v2 = sub_1A986378C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFProximityHandoff.Content.Action.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B32A0, &qword_1A999A7B0);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B32A8, &qword_1A999A7B8);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B32B0, &qword_1A999A7C0);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B32B8, &qword_1A999A7C8);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B32C0, &qword_1A999A7D0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9863738();
  sub_1A9977AA0();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_1A98637E0();
      v24 = v33;
      sub_1A9977640();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_1A986378C();
      v24 = v36;
      sub_1A9977640();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_1A9863834();
    v24 = v30;
    sub_1A9977640();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_1A9863888();
  sub_1A9977640();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

unint64_t sub_1A9863738()
{
  result = qword_1EB3B32C8;
  if (!qword_1EB3B32C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B32C8);
  }

  return result;
}

unint64_t sub_1A986378C()
{
  result = qword_1EB3B32D0;
  if (!qword_1EB3B32D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B32D0);
  }

  return result;
}

unint64_t sub_1A98637E0()
{
  result = qword_1EB3B32D8;
  if (!qword_1EB3B32D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B32D8);
  }

  return result;
}

unint64_t sub_1A9863834()
{
  result = qword_1EB3B32E0;
  if (!qword_1EB3B32E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B32E0);
  }

  return result;
}

unint64_t sub_1A9863888()
{
  result = qword_1EB3B32E8;
  if (!qword_1EB3B32E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B32E8);
  }

  return result;
}

uint64_t SFProximityHandoff.Content.Action.hashValue.getter()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1);
  return sub_1A99779B0();
}

uint64_t SFProximityHandoff.Content.Action.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B32F0, &qword_1A999A7D8);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B32F8, &qword_1A999A7E0);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3300, &qword_1A999A7E8);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3308, &qword_1A999A7F0);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3310, &unk_1A999A7F8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1A9863738();
  v21 = v53;
  sub_1A9977A70();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_1A9977620();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_1A97B2974();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_1A9977300();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
      *v34 = &type metadata for SFProximityHandoff.Content.Action;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0Tm(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_1A9863834();
        v39 = v42;
        sub_1A9977530();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_1A9863888();
        v31 = v42;
        sub_1A9977530();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_0Tm(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_1A98637E0();
      v38 = v42;
      sub_1A9977530();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_1A986378C();
      v40 = v42;
      sub_1A9977530();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v54);
}

uint64_t sub_1A9863FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A99777E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A9864084(uint64_t a1)
{
  v2 = sub_1A986446C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98640C0(uint64_t a1)
{
  v2 = sub_1A986446C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98640FC(uint64_t a1)
{
  v2 = sub_1A98644C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9864138(uint64_t a1)
{
  v2 = sub_1A98644C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFProximityHandoff.Content.Item.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3318, &qword_1A999A808);
  v20 = *(v2 - 8);
  v3 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = type metadata accessor for SFProximityHandoff.Content.Item(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3320, &qword_1A999A810);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A986446C();
  v16 = v2;
  sub_1A9977AA0();
  sub_1A9865680(v19, v9, type metadata accessor for SFProximityHandoff.Content.Item);
  sub_1A98644C0();
  sub_1A9977640();
  v17 = sub_1A9976020();
  sub_1A9864928(&qword_1EB3B1918, MEMORY[0x1E6968FB0]);
  sub_1A99776E0();
  (*(*(v17 - 8) + 8))(v9, v17);
  (*(v20 + 8))(v5, v16);
  return (*(v11 + 8))(v14, v10);
}

unint64_t sub_1A986446C()
{
  result = qword_1EB3B3328;
  if (!qword_1EB3B3328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3328);
  }

  return result;
}

unint64_t sub_1A98644C0()
{
  result = qword_1EB3B3330;
  if (!qword_1EB3B3330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3330);
  }

  return result;
}

uint64_t SFProximityHandoff.Content.Item.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v27 = type metadata accessor for SFProximityHandoff.Content.Item(0);
  v3 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3338, &qword_1A999A818);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3340, &qword_1A999A820);
  v30 = *(v10 - 8);
  v11 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A986446C();
  v15 = v35;
  sub_1A9977A70();
  if (v15)
  {
    goto LABEL_10;
  }

  v35 = a1;
  v17 = v28;
  v16 = v29;
  v18 = sub_1A9977620();
  v19 = (2 * *(v18 + 16)) | 1;
  v31 = v18;
  v32 = v18 + 32;
  v33 = 0;
  v34 = v19;
  v20 = v13;
  if (sub_1A97AB800() || v33 != v34 >> 1)
  {
    v22 = sub_1A9977300();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
    *v24 = v27;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v30 + 8))(v20, v10);
    swift_unknownObjectRelease();
    a1 = v35;
LABEL_10:
    v21 = a1;
    return __swift_destroy_boxed_opaque_existential_0Tm(v21);
  }

  sub_1A98644C0();
  sub_1A9977530();
  sub_1A9976020();
  sub_1A9864928(&qword_1EB3B1AB0, MEMORY[0x1E6968FB0]);
  v27 = v13;
  sub_1A99775F0();
  (*(v17 + 8))(v9, v6);
  (*(v30 + 8))(v27, v10);
  swift_unknownObjectRelease();
  sub_1A9865BC0(v5, v16, type metadata accessor for SFProximityHandoff.Content.Item);
  v21 = v35;
  return __swift_destroy_boxed_opaque_existential_0Tm(v21);
}

uint64_t sub_1A9864928(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SFProximityHandoff.Content.bundleIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SFProximityHandoff.Content(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SFProximityHandoff.Content.items.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFProximityHandoff.Content(0) + 24));
}

uint64_t SFProximityHandoff.Content.supportedActions.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFProximityHandoff.Content(0) + 28));
}

uint64_t SFProximityHandoff.Content.title.getter()
{
  v1 = (v0 + *(type metadata accessor for SFProximityHandoff.Content(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

int *SFProximityHandoff.Content.init(interactionID:bundleIdentifier:items:supportedActions:title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = sub_1A99762C0();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  result = type metadata accessor for SFProximityHandoff.Content(0);
  v18 = (a8 + result[5]);
  *v18 = a2;
  v18[1] = a3;
  *(a8 + result[6]) = a4;
  *(a8 + result[7]) = a5;
  v19 = (a8 + result[8]);
  *v19 = a6;
  v19[1] = a7;
  return result;
}

unint64_t sub_1A9864B68()
{
  v1 = *v0;
  v2 = 0x7463617265746E69;
  v3 = 0x736D657469;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x656C746974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A9864C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A986776C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9864C38(uint64_t a1)
{
  v2 = sub_1A9864FB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9864C74(uint64_t a1)
{
  v2 = sub_1A9864FB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFProximityHandoff.Content.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3348, &qword_1A999A828);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9864FB8();
  sub_1A9977AA0();
  LOBYTE(v20) = 0;
  sub_1A99762C0();
  sub_1A9864928(&unk_1EB3ACFC0, MEMORY[0x1E69695A8]);
  sub_1A99776E0();
  if (!v2)
  {
    v11 = type metadata accessor for SFProximityHandoff.Content(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v20) = 1;
    sub_1A9977690();
    v20 = *(v3 + v11[6]);
    HIBYTE(v19) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3358, &qword_1A999A830);
    sub_1A986556C(&qword_1EB3B3360, &qword_1EB3B3368);
    sub_1A99776E0();
    v20 = *(v3 + v11[7]);
    HIBYTE(v19) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3370, &qword_1A999A838);
    sub_1A9865608(&qword_1EB3B3378, sub_1A984ADCC);
    sub_1A99776E0();
    v15 = (v3 + v11[8]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v20) = 4;
    sub_1A9977650();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1A9864FB8()
{
  result = qword_1EB3B3350;
  if (!qword_1EB3B3350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3350);
  }

  return result;
}

uint64_t SFProximityHandoff.Content.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1A99762C0();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3380, &qword_1A999A840);
  v30 = *(v32 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v9 = &v26 - v8;
  v10 = type metadata accessor for SFProximityHandoff.Content(0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9864FB8();
  v31 = v9;
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v15 = v28;
  LOBYTE(v34) = 0;
  sub_1A9864928(&qword_1EB3AD060, MEMORY[0x1E69695A8]);
  v16 = v29;
  sub_1A99775F0();
  (*(v15 + 32))(v13, v16, v4);
  LOBYTE(v34) = 1;
  v17 = sub_1A99775A0();
  v18 = &v13[v10[5]];
  *v18 = v17;
  v18[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3358, &qword_1A999A830);
  v33 = 2;
  sub_1A986556C(&qword_1EB3B3388, &qword_1EB3B3390);
  sub_1A99775F0();
  v20 = v30;
  *&v13[v10[6]] = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3370, &qword_1A999A838);
  v33 = 3;
  sub_1A9865608(&qword_1EB3B3398, sub_1A984AE20);
  sub_1A99775F0();
  v29 = 0;
  *&v13[v10[7]] = v34;
  LOBYTE(v34) = 4;
  v21 = sub_1A9977550();
  v23 = v22;
  (*(v20 + 8))(v31, v32);
  v24 = &v13[v10[8]];
  *v24 = v21;
  v24[1] = v23;
  sub_1A9865680(v13, v27, type metadata accessor for SFProximityHandoff.Content);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1A9866774(v13, type metadata accessor for SFProximityHandoff.Content);
}

uint64_t sub_1A986556C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B3358, &qword_1A999A830);
    sub_1A9864928(a2, type metadata accessor for SFProximityHandoff.Content.Item);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A9865608(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B3370, &qword_1A999A838);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A9865680(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7Sharing9SFAirDropO17PermissionRequestV13TelemetryDataV2id10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A99762C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SFProximityHandoff.Interaction.state.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SFProximityHandoff.Interaction(0) + 20);

  return sub_1A9865834(a1, v3);
}

uint64_t sub_1A9865834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SFProximityHandoff.Interaction.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SFProximityHandoff.Interaction(0) + 24);

  return sub_1A9865924(v3, a1);
}

uint64_t sub_1A9865924(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B33A0, &qword_1A999A848);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SFProximityHandoff.Interaction.content.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SFProximityHandoff.Interaction(0) + 24);

  return sub_1A98659D8(a1, v3);
}

uint64_t sub_1A98659D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B33A0, &qword_1A999A848);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SFProximityHandoff.Interaction.init(id:state:content:showDeviceDetails:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for SFProximityHandoff.Interaction(0);
  v11 = v10[6];
  v12 = type metadata accessor for SFProximityHandoff.Content(0);
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  v13 = sub_1A99762C0();
  (*(*(v13 - 8) + 32))(a5, a1, v13);
  sub_1A9865BC0(a2, a5 + v10[5], type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
  result = sub_1A98659D8(a3, a5 + v11);
  *(a5 + v10[7]) = a4;
  return result;
}

uint64_t sub_1A9865BC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SFProximityHandoff.Interaction.init(id:state:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SFProximityHandoff.Interaction(0);
  v9 = v8[6];
  v10 = type metadata accessor for SFProximityHandoff.Content(0);
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = sub_1A99762C0();
  (*(*(v11 - 8) + 32))(a4, a1, v11);
  sub_1A9865BC0(a2, a4 + v8[5], type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
  result = sub_1A98659D8(a3, a4 + v9);
  *(a4 + v8[7]) = 0;
  return result;
}

unint64_t sub_1A9865D28()
{
  v1 = 25705;
  v2 = 0x746E65746E6F63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x6574617473;
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

uint64_t sub_1A9865D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A986792C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9865DC0(uint64_t a1)
{
  v2 = sub_1A98660DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9865DFC(uint64_t a1)
{
  v2 = sub_1A98660DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFProximityHandoff.Interaction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B33A8, &qword_1A999A850);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98660DC();
  sub_1A9977AA0();
  v16[15] = 0;
  sub_1A99762C0();
  sub_1A9864928(&unk_1EB3ACFC0, MEMORY[0x1E69695A8]);
  sub_1A99776E0();
  if (!v2)
  {
    v11 = type metadata accessor for SFProximityHandoff.Interaction(0);
    v12 = v11[5];
    v16[14] = 1;
    type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
    sub_1A9864928(&qword_1EB3B33B8, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
    sub_1A99776E0();
    v13 = v11[6];
    v16[13] = 2;
    type metadata accessor for SFProximityHandoff.Content(0);
    sub_1A9864928(&qword_1EB3B2E20, type metadata accessor for SFProximityHandoff.Content);
    sub_1A9977680();
    v14 = *(v3 + v11[7]);
    v16[12] = 3;
    sub_1A99776A0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1A98660DC()
{
  result = qword_1EB3B33B0;
  if (!qword_1EB3B33B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B33B0);
  }

  return result;
}

uint64_t SFProximityHandoff.Interaction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B33A0, &qword_1A999A848);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = &v33 - v5;
  v38 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
  v6 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A99762C0();
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B33C0, &qword_1A999A858);
  v37 = *(v40 - 8);
  v12 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v14 = &v33 - v13;
  v15 = type metadata accessor for SFProximityHandoff.Interaction(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v17 + 24);
  v21 = type metadata accessor for SFProximityHandoff.Content(0);
  v22 = *(*(v21 - 8) + 56);
  v43 = v20;
  v44 = v19;
  v22(&v19[v20], 1, 1, v21);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98660DC();
  v41 = v14;
  v24 = v42;
  sub_1A9977A70();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return sub_1A986670C(&v44[v43]);
  }

  else
  {
    v25 = v37;
    v42 = v15;
    v48 = 0;
    sub_1A9864928(&qword_1EB3AD060, MEMORY[0x1E69695A8]);
    sub_1A99775F0();
    v26 = v9;
    v27 = *(v36 + 32);
    v28 = v44;
    v29 = v39;
    v39 = v26;
    v27(v44, v29, v26);
    v47 = 1;
    sub_1A9864928(&qword_1EB3B33C8, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
    sub_1A99775F0();
    sub_1A9865BC0(v8, v28 + *(v42 + 20), type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
    v46 = 2;
    sub_1A9864928(&qword_1EB3B2E38, type metadata accessor for SFProximityHandoff.Content);
    v30 = v35;
    sub_1A9977590();
    sub_1A98659D8(v30, v28 + v43);
    v45 = 3;
    v31 = sub_1A99775B0();
    (*(v25 + 8))(v41, v40);
    *(v28 + *(v42 + 28)) = v31 & 1;
    sub_1A9865680(v28, v34, type metadata accessor for SFProximityHandoff.Interaction);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return sub_1A9866774(v28, type metadata accessor for SFProximityHandoff.Interaction);
  }
}

uint64_t sub_1A986670C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B33A0, &qword_1A999A848);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A9866774(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A98667D8()
{
  result = qword_1EB3B33D0;
  if (!qword_1EB3B33D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B33D0);
  }

  return result;
}

void sub_1A98668DC()
{
  sub_1A99762C0();
  if (v0 <= 0x3F)
  {
    sub_1A9866CF8(319, &qword_1EB3B33E8, type metadata accessor for SFProximityHandoff.Content.Item, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1A9866A10(319, &qword_1EB3B33F0, &type metadata for SFProximityHandoff.Content.Action, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1A9866A10(319, &qword_1EB3AB718, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A9866A10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A9866A70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A9976020();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A9866ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A9976020();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_1A9866B58(uint64_t a1)
{
  result = sub_1A9976020();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_1A9866C24()
{
  sub_1A99762C0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SFAirDrop.NearbySharingInteraction.State(319);
    if (v1 <= 0x3F)
    {
      sub_1A9866CF8(319, &qword_1EB3B3418, type metadata accessor for SFProximityHandoff.Content, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A9866CF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A9866DF0()
{
  result = qword_1EB3B3420;
  if (!qword_1EB3B3420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3420);
  }

  return result;
}

unint64_t sub_1A9866E48()
{
  result = qword_1EB3B3428;
  if (!qword_1EB3B3428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3428);
  }

  return result;
}

unint64_t sub_1A9866EA0()
{
  result = qword_1EB3B3430;
  if (!qword_1EB3B3430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3430);
  }

  return result;
}

unint64_t sub_1A9866EF8()
{
  result = qword_1EB3B3438;
  if (!qword_1EB3B3438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3438);
  }

  return result;
}

unint64_t sub_1A9866F50()
{
  result = qword_1EB3B3440;
  if (!qword_1EB3B3440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3440);
  }

  return result;
}

unint64_t sub_1A9866FA8()
{
  result = qword_1EB3B3448;
  if (!qword_1EB3B3448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3448);
  }

  return result;
}

unint64_t sub_1A9867000()
{
  result = qword_1EB3B3450;
  if (!qword_1EB3B3450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3450);
  }

  return result;
}

unint64_t sub_1A9867058()
{
  result = qword_1EB3B3458;
  if (!qword_1EB3B3458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3458);
  }

  return result;
}

unint64_t sub_1A98670B0()
{
  result = qword_1EB3B3460;
  if (!qword_1EB3B3460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3460);
  }

  return result;
}

unint64_t sub_1A9867108()
{
  result = qword_1EB3B3468;
  if (!qword_1EB3B3468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3468);
  }

  return result;
}

unint64_t sub_1A9867160()
{
  result = qword_1EB3B3470;
  if (!qword_1EB3B3470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3470);
  }

  return result;
}

unint64_t sub_1A98671B8()
{
  result = qword_1EB3B3478;
  if (!qword_1EB3B3478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3478);
  }

  return result;
}

unint64_t sub_1A9867210()
{
  result = qword_1EB3B3480;
  if (!qword_1EB3B3480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3480);
  }

  return result;
}

unint64_t sub_1A9867268()
{
  result = qword_1EB3B3488;
  if (!qword_1EB3B3488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3488);
  }

  return result;
}

unint64_t sub_1A98672C0()
{
  result = qword_1EB3B3490;
  if (!qword_1EB3B3490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3490);
  }

  return result;
}

unint64_t sub_1A9867318()
{
  result = qword_1EB3B3498;
  if (!qword_1EB3B3498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3498);
  }

  return result;
}

unint64_t sub_1A9867370()
{
  result = qword_1EB3B34A0;
  if (!qword_1EB3B34A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B34A0);
  }

  return result;
}

unint64_t sub_1A98673C8()
{
  result = qword_1EB3B34A8;
  if (!qword_1EB3B34A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B34A8);
  }

  return result;
}

unint64_t sub_1A9867420()
{
  result = qword_1EB3B34B0;
  if (!qword_1EB3B34B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B34B0);
  }

  return result;
}

unint64_t sub_1A9867478()
{
  result = qword_1EB3B34B8;
  if (!qword_1EB3B34B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B34B8);
  }

  return result;
}

unint64_t sub_1A98674D0()
{
  result = qword_1EB3B34C0;
  if (!qword_1EB3B34C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B34C0);
  }

  return result;
}

unint64_t sub_1A9867528()
{
  result = qword_1EB3B34C8;
  if (!qword_1EB3B34C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B34C8);
  }

  return result;
}

unint64_t sub_1A9867580()
{
  result = qword_1EB3B34D0;
  if (!qword_1EB3B34D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B34D0);
  }

  return result;
}

uint64_t sub_1A986760C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852141679 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684956531 && a2 == 0xE400000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6572616873 && a2 == 0xE500000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A986776C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463617265746E69 && a2 == 0xED000044496E6F69;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A99E4F10 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A99E53D0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A986792C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A99E53F0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t SFAirDropReceive.AskRequest.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_1A9867B38(v4, v5, v6);
}

uint64_t sub_1A9867B38(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t SFAirDropReceive.AskRequest.contactIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SFAirDropReceive.AskRequest.senderBundleID.getter()
{
  v1 = (v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SFAirDropReceive.AskRequest.senderComputerName.getter()
{
  v1 = (v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SFAirDropReceive.AskRequest.senderModelName.getter()
{
  v1 = (v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SFAirDropReceive.AskRequest.senderEmail.getter()
{
  v1 = (v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 56));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SFAirDropReceive.AskRequest.senderEmailHash.getter()
{
  v1 = (v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 60));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SFAirDropReceive.AskRequest.senderCompositeName.getter()
{
  v1 = (v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 64));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SFAirDropReceive.AskRequest.senderFirstName.getter()
{
  v1 = (v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 68));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SFAirDropReceive.AskRequest.senderLastName.getter()
{
  v1 = (v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 72));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SFAirDropReceive.AskRequest.senderID.getter()
{
  v1 = (v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 76));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

void *SFAirDropReceive.AskRequest.senderIcon.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 80));
  v2 = v1;
  return v1;
}

void sub_1A9867E94(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 80);
  v5 = *(a2 + v4);
  v6 = v3;

  *(a2 + v4) = v3;
}

void SFAirDropReceive.AskRequest.senderIcon.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 80);

  *(v1 + v3) = a1;
}

void *SFAirDropReceive.AskRequest.smallPreviewImage.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 84));
  v2 = v1;
  return v1;
}

void sub_1A9867F98(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 84);
  v5 = *(a2 + v4);
  v6 = v3;

  *(a2 + v4) = v3;
}

void SFAirDropReceive.AskRequest.smallPreviewImage.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 84);

  *(v1 + v3) = a1;
}

void *SFAirDropReceive.AskRequest.previewImage.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 88));
  v2 = v1;
  return v1;
}

void sub_1A986809C(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 88);
  v5 = *(a2 + v4);
  v6 = v3;

  *(a2 + v4) = v3;
}

void SFAirDropReceive.AskRequest.previewImage.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 88);

  *(v1 + v3) = a1;
}

uint64_t SFAirDropReceive.AskRequest.itemsDescription.getter()
{
  v1 = (v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 92));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SFAirDropReceive.AskRequest.itemsDescriptionAdvanced.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 96);

  return sub_1A98681F0(v3, a1);
}

uint64_t sub_1A98681F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B34D8, &qword_1A999B320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SFAirDropReceive.AskRequest.urlItems.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 100));
}

uint64_t SFAirDropReceive.AskRequest.items.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 104));
}

uint64_t SFAirDropReceive.AskRequest.customPayload.getter()
{
  v1 = v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 108);
  v2 = *v1;
  sub_1A97C1554(*v1, *(v1 + 8));
  return v2;
}

char *SFAirDropReceive.AskRequest.files.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 104));
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1A986C0A0(*(v1 + 16), 0);
  v4 = sub_1A986C52C(&v6, v3 + 32, v2, v1);

  sub_1A982B3C0();
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t SFAirDropReceive.AskRequest.init(id:type:transferTypes:canAutoAccept:verifiableIdentity:senderIsMe:contactIdentifier:senderBundleID:senderComputerName:senderModelName:senderEmail:senderEmailHash:senderCompositeName:senderFirstName:senderLastName:senderID:senderIcon:smallPreviewImage:previewImage:itemsDescription:itemsDescriptionAdvanced:urlItems:items:customPayload:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v38 = *a2;
  v39 = a2[1];
  v40 = *(a2 + 16);
  v41 = type metadata accessor for SFAirDropReceive.AskRequest(0);
  v42 = v41[20];
  *(a9 + v42) = 0;
  v43 = v41[21];
  *(a9 + v43) = 0;
  v44 = v41[22];
  *(a9 + v44) = 0;
  sub_1A986E044(a1, a9, type metadata accessor for SFAirDrop.TransferIdentifier);
  v45 = a9 + v41[5];
  *v45 = v38;
  *(v45 + 8) = v39;
  *(v45 + 16) = v40;
  *(a9 + v41[6]) = a3;
  *(a9 + v41[7]) = a4;
  *(a9 + v41[8]) = a5;
  *(a9 + v41[9]) = a6;
  v46 = (a9 + v41[10]);
  *v46 = a7;
  v46[1] = a8;
  v47 = (a9 + v41[11]);
  *v47 = a10;
  v47[1] = a11;
  v48 = (a9 + v41[12]);
  *v48 = a12;
  v48[1] = a13;
  v49 = (a9 + v41[13]);
  *v49 = a14;
  v49[1] = a15;
  v50 = (a9 + v41[14]);
  *v50 = a16;
  v50[1] = a17;
  v51 = (a9 + v41[15]);
  *v51 = a18;
  v51[1] = a19;
  v52 = (a9 + v41[16]);
  *v52 = a20;
  v52[1] = a21;
  v53 = (a9 + v41[17]);
  *v53 = a22;
  v53[1] = a23;
  v54 = (a9 + v41[18]);
  *v54 = a24;
  v54[1] = a25;
  v55 = (a9 + v41[19]);
  *v55 = a26;
  v55[1] = a27;

  *(a9 + v42) = a28;
  *(a9 + v43) = a29;

  *(a9 + v44) = a30;
  v56 = (a9 + v41[23]);
  *v56 = a31;
  v56[1] = a32;
  result = sub_1A986C6B8(a33, a9 + v41[24]);
  *(a9 + v41[25]) = a34;
  *(a9 + v41[26]) = a35;
  v58 = (a9 + v41[27]);
  *v58 = a36;
  v58[1] = a37;
  return result;
}

uint64_t SFAirDropReceive.AskRequest.senderDisplayName.getter()
{
  v1 = type metadata accessor for SFAirDropReceive.AskRequest(0);
  v2 = (v0 + *(v1 + 64));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v5 = (v0 + *(v1 + 48));
    v3 = *v5;
    v6 = v5[1];
  }

  return v3;
}

uint64_t SFAirDropReceive.AskRequest.description.getter()
{
  sub_1A99772B0();
  MEMORY[0x1AC5895B0](0xD000000000000023, 0x80000001A99E5410);
  v1 = type metadata accessor for SFAirDropReceive.AskRequest(0);
  MEMORY[0x1AC5895B0](*(v0 + v1[19]), *(v0 + v1[19] + 8));
  MEMORY[0x1AC5895B0](0x7665725073614820, 0xEC00000020776569);
  if (*(v0 + v1[22]))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + v1[22]))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1AC5895B0](v2, v3);

  MEMORY[0x1AC5895B0](0x20736D65744920, 0xE700000000000000);
  v6 = *(*(v0 + v1[26]) + 16);
  v4 = sub_1A9977730();
  MEMORY[0x1AC5895B0](v4);

  return 0;
}

unint64_t sub_1A9868844(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x726566736E617274;
      break;
    case 3:
      result = 0x416F7475416E6163;
      break;
    case 4:
    case 8:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x73497265646E6573;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x75427265646E6573;
      break;
    case 9:
      result = 0x6F4D7265646E6573;
      break;
    case 10:
    case 11:
      result = 0x6D457265646E6573;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x69467265646E6573;
      break;
    case 14:
      result = 0x614C7265646E6573;
      break;
    case 15:
      result = 0x44497265646E6573;
      break;
    case 16:
      result = 0x63497265646E6573;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0x4977656976657270;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 20:
      result = 0xD000000000000018;
      break;
    case 21:
      result = 0x736D6574496C7275;
      break;
    case 22:
      result = 0x736D657469;
      break;
    case 23:
      result = 0x61506D6F74737563;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A9868B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A986ED1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9868B4C(uint64_t a1)
{
  v2 = sub_1A986DAA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9868B88(uint64_t a1)
{
  v2 = sub_1A986DAA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropReceive.AskRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B34E0, &qword_1A999B328);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v60 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A986DAA4();
  sub_1A9977AA0();
  LOBYTE(v61) = 0;
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_1A986DBC0(&qword_1EB3B34F0, type metadata accessor for SFAirDrop.TransferIdentifier);
  sub_1A99776E0();
  if (!v2)
  {
    v11 = type metadata accessor for SFAirDropReceive.AskRequest(0);
    v12 = v3 + v11[5];
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v61 = *v12;
    v62 = v13;
    v63 = v14;
    HIBYTE(v60) = 1;
    sub_1A9867B38(v61, v13, v14);
    sub_1A986DAF8();
    sub_1A99776E0();
    sub_1A984D578(v61, v62, v63);
    v15 = *(v3 + v11[6]);
    LOBYTE(v61) = 2;
    sub_1A99776F0();
    v16 = *(v3 + v11[7]);
    LOBYTE(v61) = 3;
    sub_1A99776A0();
    v17 = *(v3 + v11[8]);
    LOBYTE(v61) = 4;
    sub_1A99776A0();
    v18 = *(v3 + v11[9]);
    LOBYTE(v61) = 5;
    sub_1A99776A0();
    v19 = (v3 + v11[10]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v61) = 6;
    sub_1A9977650();
    v22 = (v3 + v11[11]);
    v23 = *v22;
    v24 = v22[1];
    LOBYTE(v61) = 7;
    sub_1A9977690();
    v25 = (v3 + v11[12]);
    v26 = *v25;
    v27 = v25[1];
    LOBYTE(v61) = 8;
    sub_1A9977690();
    v28 = (v3 + v11[13]);
    v29 = *v28;
    v30 = v28[1];
    LOBYTE(v61) = 9;
    sub_1A9977690();
    v31 = (v3 + v11[14]);
    v32 = *v31;
    v33 = v31[1];
    LOBYTE(v61) = 10;
    sub_1A9977650();
    v34 = (v3 + v11[15]);
    v35 = *v34;
    v36 = v34[1];
    LOBYTE(v61) = 11;
    sub_1A9977650();
    v37 = (v3 + v11[16]);
    v38 = *v37;
    v39 = v37[1];
    LOBYTE(v61) = 12;
    sub_1A9977650();
    v40 = (v3 + v11[17]);
    v41 = *v40;
    v42 = v40[1];
    LOBYTE(v61) = 13;
    sub_1A9977650();
    v43 = (v3 + v11[18]);
    v44 = *v43;
    v45 = v43[1];
    LOBYTE(v61) = 14;
    sub_1A9977650();
    v46 = (v3 + v11[19]);
    v47 = *v46;
    v48 = v46[1];
    LOBYTE(v61) = 15;
    sub_1A9977690();
    v61 = *(v3 + v11[20]);
    v49 = v61;
    HIBYTE(v60) = 16;
    sub_1A986DB4C();
    v50 = v49;
    sub_1A99776E0();

    v61 = *(v3 + v11[21]);
    HIBYTE(v60) = 17;
    v51 = v61;
    sub_1A99776E0();

    v61 = *(v3 + v11[22]);
    HIBYTE(v60) = 18;
    v52 = v61;
    sub_1A99776E0();

    v54 = (v3 + v11[23]);
    v55 = *v54;
    v56 = v54[1];
    LOBYTE(v61) = 19;
    sub_1A9977650();
    v57 = v11[24];
    LOBYTE(v61) = 20;
    type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription(0);
    sub_1A986DBC0(&qword_1EB3B3508, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
    sub_1A9977680();
    v61 = *(v3 + v11[25]);
    HIBYTE(v60) = 21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3510, &unk_1A999B330);
    sub_1A986DD04(&qword_1EB3B3518, &qword_1EB3B1918);
    sub_1A99776E0();
    v61 = *(v3 + v11[26]);
    HIBYTE(v60) = 22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3520, &qword_1A99A18D0);
    sub_1A986DDA0(&qword_1EB3B3528, sub_1A986DC08);
    sub_1A99776E0();
    v58 = v3 + v11[27];
    v59 = *(v58 + 8);
    v61 = *v58;
    v62 = v59;
    HIBYTE(v60) = 23;
    sub_1A97C1554(v61, v59);
    sub_1A97B4370();
    sub_1A9977680();
    sub_1A97D8688(v61, v62);
  }

  return (*(v6 + 8))(v9, v5);
}

void SFAirDropReceive.AskRequest.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B34D8, &qword_1A999B320);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v104 - v6;
  v8 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3538, &qword_1A999B340);
  v12 = *(v109 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v15 = &v104 - v14;
  v16 = type metadata accessor for SFAirDropReceive.AskRequest(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v18[20];
  v110 = a1;
  v111 = v21;
  *&v20[v21] = 0;
  v112 = v18[21];
  *&v20[v112] = 0;
  v114 = v20;
  v115 = v18;
  v113 = v18[22];
  *&v20[v113] = 0;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A986DAA4();
  v108 = v15;
  sub_1A9977A70();
  if (v2)
  {
    v23 = v114;
    v24 = v115;
    __swift_destroy_boxed_opaque_existential_0Tm(v110);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v32 = 0;
    goto LABEL_4;
  }

  v106 = v7;
  LOBYTE(v116) = 0;
  sub_1A986DBC0(&qword_1EB3B3540, type metadata accessor for SFAirDrop.TransferIdentifier);
  sub_1A99775F0();
  v31 = v114;
  sub_1A986E044(v11, v114, type metadata accessor for SFAirDrop.TransferIdentifier);
  v119 = 1;
  sub_1A986DC5C();
  sub_1A99775F0();
  v32 = 0;
  v33 = v115;
  v34 = v117;
  v35 = v31 + v115[5];
  *v35 = v116;
  *(v35 + 16) = v34;
  LOBYTE(v116) = 2;
  *(v31 + v33[6]) = sub_1A9977600();
  LOBYTE(v116) = 3;
  *(v31 + v33[7]) = sub_1A99775B0() & 1;
  LOBYTE(v116) = 4;
  *(v31 + v33[8]) = sub_1A99775B0() & 1;
  LOBYTE(v116) = 5;
  *(v31 + v33[9]) = sub_1A99775B0() & 1;
  LOBYTE(v116) = 6;
  v36 = sub_1A9977550();
  v47 = (v31 + v33[10]);
  *v47 = v36;
  v47[1] = v48;
  LOBYTE(v116) = 7;
  v49 = sub_1A99775A0();
  v50 = (v31 + v33[11]);
  *v50 = v49;
  v50[1] = v51;
  LOBYTE(v116) = 8;
  v52 = sub_1A99775A0();
  v105 = 0;
  v53 = (v31 + v33[12]);
  *v53 = v52;
  v53[1] = v54;
  LOBYTE(v116) = 9;
  v55 = v105;
  v56 = sub_1A99775A0();
  v105 = v55;
  if (v55)
  {
    (*(v12 + 8))(v108, v109);
    v104 = 0;
    v118 = 0;
    LODWORD(v106) = 0;
    LODWORD(v107) = 0;
    LODWORD(v108) = 0;
    LODWORD(v109) = 0;
LABEL_47:
    v23 = v114;
    v24 = v115;
    __swift_destroy_boxed_opaque_existential_0Tm(v110);
    sub_1A986DED4(v23, type metadata accessor for SFAirDrop.TransferIdentifier);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    goto LABEL_22;
  }

  v58 = &v114[v115[13]];
  *v58 = v56;
  v58[1] = v57;
  LOBYTE(v116) = 10;
  v59 = v105;
  v60 = sub_1A9977550();
  v105 = v59;
  if (v59)
  {
    (*(v12 + 8))(v108, v109);
    v118 = 0;
    LODWORD(v106) = 0;
    LODWORD(v107) = 0;
    LODWORD(v108) = 0;
    LODWORD(v109) = 0;
    v104 = 1;
    goto LABEL_47;
  }

  v62 = &v114[v115[14]];
  *v62 = v60;
  v62[1] = v61;
  LOBYTE(v116) = 11;
  v63 = v105;
  v64 = sub_1A9977550();
  v105 = v63;
  if (v63)
  {
    (*(v12 + 8))(v108, v109);
    v118 = 0;
    LODWORD(v106) = 0;
    LODWORD(v107) = 0;
    LODWORD(v108) = 0;
    LODWORD(v109) = 0;
    v104 = 0x100000001;
    goto LABEL_47;
  }

  v66 = &v114[v115[15]];
  *v66 = v64;
  v66[1] = v65;
  LOBYTE(v116) = 12;
  v67 = v105;
  v68 = sub_1A9977550();
  v105 = v67;
  if (v67)
  {
    (*(v12 + 8))(v108, v109);
    LODWORD(v106) = 0;
    LODWORD(v107) = 0;
    LODWORD(v108) = 0;
    LODWORD(v109) = 0;
    v104 = 0x100000001;
    v118 = 1;
    goto LABEL_47;
  }

  v70 = &v114[v115[16]];
  *v70 = v68;
  v70[1] = v69;
  LOBYTE(v116) = 13;
  v71 = v105;
  v72 = sub_1A9977550();
  v105 = v71;
  if (v71)
  {
    (*(v12 + 8))(v108, v109);
    LODWORD(v107) = 0;
    LODWORD(v108) = 0;
    LODWORD(v109) = 0;
    v104 = 0x100000001;
    v118 = 1;
    LODWORD(v106) = 1;
    goto LABEL_47;
  }

  v74 = &v114[v115[17]];
  *v74 = v72;
  v74[1] = v73;
  LOBYTE(v116) = 14;
  v75 = v105;
  v76 = sub_1A9977550();
  v105 = v75;
  if (v75)
  {
    (*(v12 + 8))(v108, v109);
    LODWORD(v108) = 0;
    LODWORD(v109) = 0;
    v104 = 0x100000001;
    v118 = 1;
    LODWORD(v106) = 1;
    LODWORD(v107) = 1;
    goto LABEL_47;
  }

  v78 = &v114[v115[18]];
  *v78 = v76;
  v78[1] = v77;
  LOBYTE(v116) = 15;
  v79 = v105;
  v80 = sub_1A99775A0();
  v105 = v79;
  if (v79)
  {
    (*(v12 + 8))(v108, v109);
    LODWORD(v109) = 0;
    v104 = 0x100000001;
    v118 = 1;
    LODWORD(v106) = 1;
    LODWORD(v107) = 1;
    LODWORD(v108) = 1;
    goto LABEL_47;
  }

  v82 = &v114[v115[19]];
  *v82 = v80;
  v82[1] = v81;
  v119 = 16;
  sub_1A986DCB0();
  v83 = v105;
  sub_1A99775F0();
  v105 = v83;
  if (v83)
  {
    goto LABEL_46;
  }

  v84 = v116;
  v85 = v111;
  v86 = v114;

  *(v86 + v85) = v84;
  v119 = 17;
  v87 = v105;
  sub_1A99775F0();
  v105 = v87;
  if (v87)
  {
LABEL_46:
    (*(v12 + 8))(v108, v109);
    v104 = 0x100000001;
    v118 = 1;
    LODWORD(v106) = 1;
    LODWORD(v107) = 1;
    LODWORD(v108) = 1;
    LODWORD(v109) = 1;
    goto LABEL_47;
  }

  v88 = v116;
  v89 = v112;
  v90 = v114;

  *(v90 + v89) = v88;
  v119 = 18;
  v91 = v105;
  sub_1A99775F0();
  v105 = v91;
  if (v91)
  {
    goto LABEL_50;
  }

  v92 = v116;
  v94 = v113;
  v93 = v114;

  *(v93 + v94) = v92;
  LOBYTE(v116) = 19;
  v95 = v105;
  v96 = sub_1A9977550();
  v105 = v95;
  if (v95)
  {
LABEL_50:
    (*(v12 + 8))(v108, v109);
    v32 = 0;
    v27 = 0;
    v26 = 0;
    v25 = 0;
  }

  else
  {
    v98 = &v114[v115[23]];
    *v98 = v96;
    v98[1] = v97;
    type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription(0);
    LOBYTE(v116) = 20;
    sub_1A986DBC0(&qword_1EB3B3558, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
    v99 = v105;
    sub_1A9977590();
    v105 = v99;
    if (v99)
    {
      (*(v12 + 8))(v108, v109);
      v27 = 0;
      v26 = 0;
      v25 = 0;
      v32 = 1;
    }

    else
    {
      sub_1A986C6B8(v106, &v114[v115[24]]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3510, &unk_1A999B330);
      v119 = 21;
      sub_1A986DD04(&qword_1EB3B3560, &qword_1EB3B1AB0);
      v100 = v105;
      sub_1A99775F0();
      v105 = v100;
      if (v100)
      {
        (*(v12 + 8))(v108, v109);
        v26 = 0;
        v25 = 0;
        v32 = 1;
        v27 = 1;
      }

      else
      {
        *&v114[v115[25]] = v116;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3520, &qword_1A99A18D0);
        v119 = 22;
        sub_1A986DDA0(&qword_1EB3B3568, sub_1A986DE18);
        v101 = v105;
        sub_1A99775F0();
        v105 = v101;
        if (v101)
        {
          (*(v12 + 8))(v108, v109);
          v25 = 0;
          v32 = 1;
          v27 = 1;
          v26 = 1;
        }

        else
        {
          *&v114[v115[26]] = v116;
          v119 = 23;
          sub_1A97B446C();
          v102 = v105;
          sub_1A9977590();
          v105 = v102;
          if (!v102)
          {
            (*(v12 + 8))(v108, v109);
            v103 = v114;
            *&v114[v115[27]] = v116;
            sub_1A986DE6C(v103, v107, type metadata accessor for SFAirDropReceive.AskRequest);
            __swift_destroy_boxed_opaque_existential_0Tm(v110);
            sub_1A986DED4(v103, type metadata accessor for SFAirDropReceive.AskRequest);
            return;
          }

          (*(v12 + 8))(v108, v109);
          v32 = 1;
          v27 = 1;
          v26 = 1;
          v25 = 1;
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v110);
  v23 = v114;
  sub_1A986DED4(v114, type metadata accessor for SFAirDrop.TransferIdentifier);
  LODWORD(v109) = 1;
  LODWORD(v108) = 1;
  LODWORD(v107) = 1;
  LODWORD(v106) = 1;
  v118 = 1;
  v104 = 0x100000001;
  v24 = v115;
LABEL_22:
  sub_1A984D578(*(v23 + v24[5]), *(v23 + v24[5] + 8), *(v23 + v24[5] + 16));
  v37 = *(v23 + v24[10] + 8);

  v42 = *(v23 + v24[11] + 8);

  v38 = *(v23 + v24[12] + 8);

  if (v104)
  {
    v43 = *(v23 + v24[13] + 8);

    if ((v104 & 0x100000000) != 0)
    {
LABEL_16:
      v39 = *(v23 + v24[14] + 8);

      if ((v118 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }
  }

  else if (HIDWORD(v104))
  {
    goto LABEL_16;
  }

  if (!v118)
  {
LABEL_17:
    if (v106)
    {
      goto LABEL_18;
    }

    goto LABEL_26;
  }

LABEL_25:
  v44 = *(v23 + v24[15] + 8);

  if (v106)
  {
LABEL_18:
    v40 = *(v23 + v24[16] + 8);

    if ((v107 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

LABEL_26:
  if (!v107)
  {
LABEL_19:
    if (v108)
    {
      goto LABEL_20;
    }

LABEL_28:
    if (!v109)
    {
      goto LABEL_4;
    }

    goto LABEL_29;
  }

LABEL_27:
  v45 = *(v23 + v24[17] + 8);

  if ((v108 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_20:
  v41 = *(v23 + v24[18] + 8);

  if ((v109 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_29:
  v46 = *(v23 + v24[19] + 8);

LABEL_4:

  if (v32)
  {
    v28 = *(v23 + v24[23] + 8);

    if (!v27)
    {
      goto LABEL_6;
    }
  }

  else if (!v27)
  {
LABEL_6:
    if (v26)
    {
      goto LABEL_7;
    }

LABEL_11:
    if (!v25)
    {
      return;
    }

    goto LABEL_12;
  }

  sub_1A97B06FC(v23 + v24[24], &qword_1EB3B34D8, &qword_1A999B320);
  if (!v26)
  {
    goto LABEL_11;
  }

LABEL_7:
  v29 = *(v23 + v24[25]);

  if (!v25)
  {
    return;
  }

LABEL_12:
  v30 = *(v23 + v24[26]);
}

uint64_t SFAirDropReceive.AskRequest.ItemInfo.fileBomPath.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t SFAirDropReceive.AskRequest.ItemInfo.fileName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SFAirDropReceive.AskRequest.ItemInfo.fileSubType.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t SFAirDropReceive.AskRequest.ItemInfo.fileType.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t SFAirDropReceive.AskRequest.ItemInfo.init(convertMediaFormats:fileBomPath:fileIsDirectory:fileName:fileSubType:fileType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

unint64_t sub_1A986A3C0()
{
  v1 = *v0;
  v2 = 0x506D6F42656C6966;
  v3 = 0x656D614E656C6966;
  v4 = 0x54627553656C6966;
  if (v1 != 4)
  {
    v4 = 0x65707954656C6966;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x69447349656C6966;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A986A49C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A986F4B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A986A4C4(uint64_t a1)
{
  v2 = sub_1A986DF34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A986A500(uint64_t a1)
{
  v2 = sub_1A986DF34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropReceive.AskRequest.ItemInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3578, &qword_1A999B348);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v18 = *(v1 + 2);
  v19 = v9;
  v17 = v1[24];
  v10 = *(v1 + 4);
  v16[4] = *(v1 + 5);
  v16[5] = v10;
  v11 = *(v1 + 6);
  v16[1] = *(v1 + 7);
  v12 = *(v1 + 9);
  v16[2] = *(v1 + 8);
  v16[3] = v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A986DF34();
  sub_1A9977AA0();
  v26 = 0;
  v14 = v20;
  sub_1A99776A0();
  if (v14)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v20 = v12;
  v25 = 1;
  sub_1A9977690();
  v24 = 2;
  sub_1A99776A0();
  v23 = 3;
  sub_1A9977690();
  v22 = 4;
  sub_1A9977650();
  v21 = 5;
  sub_1A9977690();
  return (*(v4 + 8))(v7, v3);
}

uint64_t SFAirDropReceive.AskRequest.ItemInfo.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = v0[24];
  v6 = *(v0 + 4);
  v5 = *(v0 + 5);
  v7 = *(v0 + 7);
  v11 = *(v0 + 6);
  v8 = *(v0 + 8);
  v9 = *(v0 + 9);
  sub_1A99779A0();
  sub_1A99768D0();
  sub_1A99779A0();
  sub_1A99768D0();
  sub_1A99779A0();
  if (v7)
  {
    sub_1A99768D0();
  }

  return sub_1A99768D0();
}

uint64_t SFAirDropReceive.AskRequest.ItemInfo.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = v0[24];
  v6 = *(v0 + 4);
  v5 = *(v0 + 5);
  v7 = *(v0 + 7);
  v11 = *(v0 + 6);
  v8 = *(v0 + 8);
  v9 = *(v0 + 9);
  sub_1A9977980();
  sub_1A99779A0();
  sub_1A99768D0();
  sub_1A99779A0();
  sub_1A99768D0();
  sub_1A99779A0();
  if (v7)
  {
    sub_1A99768D0();
  }

  sub_1A99768D0();
  return sub_1A99779B0();
}

uint64_t SFAirDropReceive.AskRequest.ItemInfo.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3588, &qword_1A999B350);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A986DF34();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v39[0] = 0;
  v11 = sub_1A99775B0();
  v39[0] = 1;
  v12 = sub_1A99775A0();
  v14 = v13;
  v33 = v12;
  v39[0] = 2;
  v48 = sub_1A99775B0();
  v39[0] = 3;
  *&v32 = sub_1A99775A0();
  *(&v32 + 1) = v15;
  v39[0] = 4;
  *&v31 = sub_1A9977550();
  *(&v31 + 1) = v16;
  v49 = 5;
  v17 = sub_1A99775A0();
  v18 = v11 & 1;
  v30 = v18;
  v48 &= 1u;
  v19 = v17;
  v20 = v9;
  v22 = v21;
  (*(v6 + 8))(v20, v5);
  LOBYTE(v34) = v18;
  v23 = v33;
  *(&v34 + 1) = v33;
  *&v35 = v14;
  BYTE8(v35) = v48;
  v24 = v32;
  v36 = v32;
  v25 = *(&v31 + 1);
  v37 = v31;
  *&v38 = v19;
  *(&v38 + 1) = v22;
  v26 = v31;
  a2[2] = v32;
  a2[3] = v26;
  a2[4] = v38;
  v27 = v35;
  *a2 = v34;
  a2[1] = v27;
  sub_1A986DF88(&v34, v39);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v39[0] = v30;
  v40 = v23;
  v41 = v14;
  v42 = v48;
  v43 = __PAIR128__(*(&v32 + 1), v24);
  v44 = v31;
  v45 = v25;
  v46 = v19;
  v47 = v22;
  return sub_1A986DFC0(v39);
}

uint64_t sub_1A986AD48()
{
  sub_1A9977980();
  SFAirDropReceive.AskRequest.ItemInfo.hash(into:)();
  return sub_1A99779B0();
}

uint64_t sub_1A986AD8C()
{
  sub_1A9977980();
  SFAirDropReceive.AskRequest.ItemInfo.hash(into:)();
  return sub_1A99779B0();
}

uint64_t SFAirDropReceive.AskRequest.AdvancedItemsDescription.CodingKeys.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1A9977510();

  v4 = 9;
  if (v2 < 9)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t SFAirDropReceive.AskRequest.AdvancedItemsDescription.CodingKeys.init(stringValue:)@<X0>(_BYTE *a1@<X8>)
{
  result = SFAirDropReceive.AskRequest.AdvancedItemsDescription.CodingKeys.init(rawValue:)(&v3);
  *a1 = v3;
  return result;
}

unint64_t sub_1A986AE7C()
{
  v1 = 0xD00000000000001CLL;
  v2 = *v0;
  if (v2 <= 3)
  {
    v7 = 0xD000000000000022;
    if (v2 != 2)
    {
      v7 = 0xD000000000000026;
    }

    if (*v0)
    {
      v1 = 0xD00000000000002ALL;
    }

    if (*v0 <= 1u)
    {
      result = v1;
    }

    else
    {
      result = v7;
    }

    *v0;
  }

  else
  {
    v3 = 0xD000000000000024;
    v4 = 0xD000000000000028;
    if (v2 != 7)
    {
      v4 = 0xD000000000000020;
    }

    if (v2 != 6)
    {
      v3 = v4;
    }

    v5 = 0xD00000000000002BLL;
    if (v2 == 4)
    {
      v5 = 0xD000000000000025;
    }

    if (*v0 <= 5u)
    {
      result = v5;
    }

    else
    {
      result = v3;
    }

    *v0;
  }

  return result;
}

uint64_t sub_1A986AF8C()
{
  v1 = *v0;
  sub_1A9977980();
  sub_1A9928B8C();
  return sub_1A99779B0();
}

uint64_t sub_1A986AFDC()
{
  v1 = *v0;
  sub_1A9977980();
  sub_1A9928B8C();
  return sub_1A99779B0();
}

uint64_t sub_1A986B020@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return SFAirDropReceive.AskRequest.AdvancedItemsDescription.CodingKeys.init(rawValue:)(a1);
}

uint64_t sub_1A986B02C@<X0>(uint64_t *a1@<X8>)
{
  result = SFAirDropReceive.AskRequest.AdvancedItemsDescription.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A986B058@<X0>(_BYTE *a1@<X8>)
{
  result = SFAirDropReceive.AskRequest.AdvancedItemsDescription.CodingKeys.init(rawValue:)(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1A986B090(uint64_t a1)
{
  v2 = sub_1A986DFF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A986B0CC(uint64_t a1)
{
  v2 = sub_1A986DFF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropReceive.AskRequest.AdvancedItemsDescription.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = sub_1A9976230();
  v60 = *(v3 - 8);
  v4 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3590, &qword_1A999B358);
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v55 - v9;
  v11 = type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v16 = a1[4];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1A986DFF0();
  v17 = v63;
  sub_1A9977A70();
  if (!v17)
  {
    v58 = v6;
    v59 = v3;
    v63 = v14;
    v18 = v61;
    v19 = v62;
    LOBYTE(v65) = 0;
    v20 = v7;
    v21 = sub_1A99775A0();
    v23 = v22;
    LOBYTE(v65) = 1;
    v24 = sub_1A9977580();
    v25 = v18;
    if (v26)
    {
      LOBYTE(v65) = 2;
      v27 = sub_1A9977550();
      if (v28)
      {
        v56 = v27;
        v57 = v28;
        LOBYTE(v65) = 3;
        sub_1A986DBC0(&qword_1EB3B0CE0, MEMORY[0x1E6969530]);
        sub_1A99775F0();
        LOBYTE(v65) = 4;
        v36 = sub_1A9977560();
        (*(v18 + 8))(v10, v20);
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B35A0, &qword_1A999B360);
        v38 = *(v37 + 64);
        v39 = *(v37 + 80);
        v40 = v63;
        *v63 = v21;
        v40[1] = v23;
        v41 = v57;
        v40[2] = v56;
        v40[3] = v41;
        (*(v60 + 32))(v40 + v38, v58, v59);
        *(v40 + v39) = v36 & 1;
      }

      else
      {
        LOBYTE(v65) = 5;
        v32 = sub_1A9977580();
        if (v33)
        {
          LOBYTE(v65) = 6;
          v34 = sub_1A9977580();
          v59 = v10;
          v60 = v21;
          if ((v35 & 1) == 0)
          {
            v30 = v19;
            v65 = 0;
            v66 = 0xE000000000000000;
            v47 = v34;
            sub_1A99772B0();

            v65 = 0xD00000000000001BLL;
            v66 = 0x80000001A99E5460;
            v67 = v47;
            v48 = sub_1A9977730();
            MEMORY[0x1AC5895B0](v48);

            (*(v18 + 8))(v59, v20);
            v40 = v63;
            *v63 = v60;
            v40[1] = v23;
            v40[2] = v47;
            goto LABEL_7;
          }

          LOBYTE(v65) = 7;
          v45 = sub_1A9977580();
          if (v46)
          {
            LOBYTE(v65) = 8;
            v51 = sub_1A9977570();
            v53 = v52;
            (*(v18 + 8))(v59, v20);
            v54 = v63;
            *v63 = v60;
            v54[1] = v23;
            if (v53)
            {
              v30 = v19;
              v40 = v63;
              goto LABEL_7;
            }

            v40 = v63;
            v63[2] = v51;
          }

          else
          {
            v49 = v45;
            v65 = 0;
            v66 = 0xE000000000000000;
            sub_1A99772B0();

            v65 = 0xD00000000000001FLL;
            v66 = 0x80000001A99E5440;
            v67 = v49;
            v50 = sub_1A9977730();
            MEMORY[0x1AC5895B0](v50);

            (*(v18 + 8))(v59, v20);
            v40 = v63;
            *v63 = v60;
            v40[1] = v23;
            v40[2] = v49;
          }
        }

        else
        {
          v59 = v32;
          v60 = v21;
          v65 = 0;
          v66 = 0xE000000000000000;
          v42 = v32;
          sub_1A99772B0();

          v65 = 0xD000000000000022;
          v66 = 0x80000001A99E5480;
          v67 = v42;
          v43 = sub_1A9977730();
          MEMORY[0x1AC5895B0](v43);

          (*(v25 + 8))(v10, v20);
          v40 = v63;
          v44 = v59;
          *v63 = v60;
          v40[1] = v23;
          v40[2] = v44;
        }
      }
    }

    else
    {
      v29 = v24;
      (*(v18 + 8))(v10, v20);
      v40 = v63;
      *v63 = v21;
      v40[1] = v23;
      v40[2] = v29;
    }

    v30 = v19;
LABEL_7:
    swift_storeEnumTagMultiPayload();
    sub_1A986E044(v40, v30, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v64);
}

uint64_t SFAirDropReceive.AskRequest.AdvancedItemsDescription.encode(to:)(void *a1)
{
  v2 = sub_1A9976230();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B35A8, &qword_1A999B368);
  v42 = *(v40 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v12 = &v37 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A986DFF0();
  v14 = v12;
  sub_1A9977AA0();
  sub_1A986DE6C(v39, v9, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v16 = *v9;
  v17 = *(v9 + 1);
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v19 = v14;
      if (EnumCaseMultiPayload == 1)
      {
        v22 = *(v9 + 3);
        v37 = *(v9 + 2);
        v39 = v22;
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B35A0, &qword_1A999B360);
        v24 = v9[*(v23 + 80)];
        v25 = v38;
        (*(v38 + 32))(v5, &v9[*(v23 + 64)], v2);
        v48 = 0;
        v18 = v40;
        v26 = v41;
        sub_1A9977690();

        if (v26)
        {

          (*(v25 + 8))(v5, v2);
        }

        else
        {
          v47 = 2;
          sub_1A9977690();

          v46 = 3;
          sub_1A986DBC0(&qword_1EB3B0C58, MEMORY[0x1E6969530]);
          sub_1A99776E0();
          v36 = v38;
          v45 = 4;
          sub_1A99776A0();
          (*(v36 + 8))(v5, v2);
        }

        return (*(v42 + 8))(v19, v18);
      }

      v31 = *(v9 + 2);
      v50 = 0;
      v18 = v40;
      v32 = v41;
      sub_1A9977690();
      if (!v32)
      {

        v49 = 5;
        goto LABEL_19;
      }
    }

    else
    {
      v29 = *(v9 + 2);
      v44 = 0;
      v18 = v40;
      v30 = v41;
      v19 = v14;
      sub_1A9977690();
      if (!v30)
      {

        v43 = 1;
        goto LABEL_19;
      }
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    v18 = v40;
    v19 = v14;
    if (EnumCaseMultiPayload == 5)
    {
      v27 = *(v9 + 2);
      v56 = 0;
      v28 = v41;
      sub_1A9977690();
      if (!v28)
      {

        v55 = 8;
        sub_1A99776B0();
        return (*(v42 + 8))(v19, v18);
      }
    }

    else
    {
      v57 = 0;
      sub_1A9977690();
    }
  }

  else
  {
    v18 = v40;
    v19 = v14;
    if (EnumCaseMultiPayload == 3)
    {
      v20 = *(v9 + 2);
      v52 = 0;
      v21 = v41;
      sub_1A9977690();
      if (!v21)
      {

        v51 = 7;
LABEL_19:
        sub_1A99776C0();
        return (*(v42 + 8))(v19, v18);
      }
    }

    else
    {
      v33 = *(v9 + 2);
      v54 = 0;
      v34 = v41;
      sub_1A9977690();
      if (!v34)
      {

        v53 = 6;
        goto LABEL_19;
      }
    }
  }

  (*(v42 + 8))(v19, v18);
}

void *sub_1A986BE88(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1210, &qword_1A99919F8);
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

void *sub_1A986BF0C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3618, &unk_1A999BA70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0xE38E38E38E38E39) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

size_t sub_1A986BFA4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1688, &qword_1A999BA50);
  v4 = *(sub_1A99763B0() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1A986C0A0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3610, &qword_1A999BA68);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

uint64_t sub_1A986C130(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_1A99763B0();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x1EEE9AC00](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 56);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1A986C3D4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1A986C52C(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 80 * (v17 | (v12 << 6)));
      v25[0] = *v18;
      v19 = v18[4];
      v21 = v18[1];
      v20 = v18[2];
      v25[3] = v18[3];
      v25[4] = v19;
      v25[1] = v21;
      v25[2] = v20;
      memmove(v11, v18, 0x50uLL);
      if (v14 == v10)
      {
        sub_1A986DF88(v25, v24);
        goto LABEL_24;
      }

      v11 += 80;
      sub_1A986DF88(v25, v24);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1A986C6B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B34D8, &qword_1A999B320);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s7Sharing16SFAirDropReceiveO10AskRequestV24AdvancedItemsDescriptionO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v111 = a1;
  v112 = a2;
  v2 = sub_1A9976230();
  v109 = *(v2 - 8);
  v110 = v2;
  v3 = *(v109 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v108 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v107 = &v98 - v6;
  v7 = type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v106 = (&v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v98 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v98 - v15);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v98 - v18);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = (&v98 - v21);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v98 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = (&v98 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B35F8, &qword_1A999BA58);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v32 = &v98 - v31;
  v33 = &v98 + *(v30 + 56) - v31;
  sub_1A986DE6C(v111, &v98 - v31, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
  v111 = v33;
  sub_1A986DE6C(v112, v33, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
  v112 = v32;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v41 = v108;
    v40 = v109;
    v42 = v110;
    if (!EnumCaseMultiPayload)
    {
      v35 = v112;
      sub_1A986DE6C(v112, v27, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
      v36 = *v27;
      v37 = v27[1];
      v38 = v27[2];
      v39 = v111;
      if (!swift_getEnumCaseMultiPayload())
      {
        goto LABEL_30;
      }

      goto LABEL_45;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v35 = v112;
      sub_1A986DE6C(v112, v22, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
      v66 = *v22;
      v67 = v22[1];
      v38 = v22[2];
      v68 = v111;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v69 = *v68;
        v70 = v68[1];
        v71 = v68[2];
        if (v66 != v69 || v67 != v70)
        {
          v73 = sub_1A99777E0();

          if ((v73 & 1) == 0)
          {
            goto LABEL_42;
          }

LABEL_52:
          v65 = v38 == v71;
          goto LABEL_53;
        }

LABEL_51:

        goto LABEL_52;
      }

      goto LABEL_45;
    }

    sub_1A986DE6C(v112, v25, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
    v43 = *(v25 + 1);
    v105 = *v25;
    v106 = v43;
    v44 = *(v25 + 3);
    v104 = *(v25 + 2);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B35A0, &qword_1A999B360);
    v46 = *(v45 + 64);
    v47 = *(v45 + 80);
    v48 = v25[v47];
    v49 = v111;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v40 + 8))(&v25[v46], v42);

      v35 = v112;
      goto LABEL_45;
    }

    v50 = *v49;
    v51 = v49[1];
    v52 = v49[3];
    v101 = v49[2];
    v102 = v50;
    v103 = v52;
    LODWORD(v52) = *(v49 + v47);
    v99 = v48;
    v100 = v52;
    v53 = *(v40 + 32);
    v54 = &v25[v46];
    v55 = v42;
    v53(v107, v54, v42);
    v53(v41, v49 + v46, v42);
    if (v105 == v102 && v106 == v51)
    {

      v56 = v112;
    }

    else
    {
      v87 = sub_1A99777E0();

      v56 = v112;
      if ((v87 & 1) == 0)
      {

        v96 = *(v40 + 8);
        v96(v41, v55);
        v96(v107, v55);
        goto LABEL_65;
      }
    }

    v88 = v100;
    v89 = v107;
    if (v104 == v101 && v44 == v103)
    {
    }

    else
    {
      v92 = sub_1A99777E0();

      if ((v92 & 1) == 0)
      {
        v97 = *(v40 + 8);
        v97(v41, v55);
        v97(v89, v55);
        goto LABEL_65;
      }
    }

    v93 = sub_1A99761E0();
    v94 = *(v40 + 8);
    v94(v41, v55);
    v94(v89, v55);
    if (v93)
    {
      v95 = v99 ^ v88;
      sub_1A986DED4(v56, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
      return v95 ^ 1u;
    }

LABEL_65:
    sub_1A986DED4(v56, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
    return 0;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    v35 = v112;
    if (EnumCaseMultiPayload == 3)
    {
      sub_1A986DE6C(v112, v19, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
      v36 = *v19;
      v37 = v19[1];
      v38 = v19[2];
      v39 = v111;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_45;
      }

LABEL_30:
      v74 = *v39;
      v75 = v39[1];
      v71 = v39[2];
      if (v36 != v74 || v37 != v75)
      {
        v77 = sub_1A99777E0();

        if (v77)
        {
          goto LABEL_52;
        }

LABEL_42:
        sub_1A986DED4(v35, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
        return 0;
      }

      goto LABEL_51;
    }

    sub_1A986DE6C(v112, v16, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
    v36 = *v16;
    v37 = v16[1];
    v38 = v16[2];
    v39 = v111;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_30;
    }

LABEL_45:

    sub_1A97B06FC(v35, &qword_1EB3B35F8, &qword_1A999BA58);
    return 0;
  }

  v35 = v112;
  if (EnumCaseMultiPayload != 5)
  {
    v78 = v106;
    sub_1A986DE6C(v112, v106, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
    v79 = *v78;
    v80 = v78[1];
    v81 = v111;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v82 = *v81;
      v83 = v81[1];
      if (v79 == v82 && v80 == v83)
      {
      }

      else
      {
        v85 = sub_1A99777E0();

        if ((v85 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      sub_1A986DED4(v35, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
      return 1;
    }

    goto LABEL_45;
  }

  sub_1A986DE6C(v112, v13, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
  v57 = *v13;
  v58 = *(v13 + 1);
  v59 = *(v13 + 2);
  v60 = v111;
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    goto LABEL_45;
  }

  v61 = *(v60 + 16);
  if (v57 == *v60 && v58 == *(v60 + 8))
  {
    v91 = *(v60 + 8);

    v65 = v59 == v61;
    goto LABEL_53;
  }

  v63 = *(v60 + 8);
  v64 = sub_1A99777E0();

  if ((v64 & 1) == 0)
  {
    goto LABEL_42;
  }

  v65 = v59 == v61;
LABEL_53:
  v90 = v65;
  sub_1A986DED4(v35, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
  return v90;
}

uint64_t _s7Sharing16SFAirDropReceiveO10AskRequestV8ItemInfoV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[24];
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = *(a1 + 6);
  v7 = *(a1 + 7);
  v16 = *(a1 + 9);
  v17 = *(a1 + 8);
  v8 = a2[24];
  v10 = *(a2 + 4);
  v9 = *(a2 + 5);
  v12 = *(a2 + 6);
  v11 = *(a2 + 7);
  v14 = *(a2 + 9);
  v15 = *(a2 + 8);
  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    if (v3 != v8)
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_1A99777E0();
    result = 0;
    if (v13 & 1) == 0 || ((v3 ^ v8))
    {
      return result;
    }
  }

  if ((v4 != v10 || v5 != v9) && (sub_1A99777E0() & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (!v11 || (v6 != v12 || v7 != v11) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_20;
  }

  if (v11)
  {
    return 0;
  }

LABEL_20:
  if (v17 == v15 && v16 == v14)
  {
    return 1;
  }

  return sub_1A99777E0();
}

BOOL _s7Sharing16SFAirDropReceiveO10AskRequestV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B34D8, &qword_1A999B320);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v108 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3600, &qword_1A999BA60);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v108 - v15;
  if ((_s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0() & 1) == 0)
  {
    return 0;
  }

  v110 = v8;
  v111 = v5;
  v17 = type metadata accessor for SFAirDropReceive.AskRequest(0);
  v18 = v17[5];
  v19 = *(a1 + v18 + 8);
  v20 = *(a1 + v18 + 16);
  v115 = *(a1 + v18);
  v116 = v19;
  v117 = v20;
  v21 = a2 + v18;
  v23 = *(v21 + 8);
  v24 = *(v21 + 16);
  v112 = *v21;
  v22 = v112;
  v113 = v23;
  v114 = v24;
  sub_1A9867B38(v115, v19, v20);
  sub_1A9867B38(v22, v23, v24);
  LOBYTE(v22) = _s7Sharing9SFAirDropO12TransferTypeO2eeoiySbAE_AEtFZ_0(&v115, &v112);
  sub_1A984D578(v112, v113, v114);
  sub_1A984D578(v115, v116, v117);
  if ((v22 & 1) == 0 || *(a1 + v17[6]) != *(a2 + v17[6]) || *(a1 + v17[7]) != *(a2 + v17[7]) || *(a1 + v17[8]) != *(a2 + v17[8]) || *(a1 + v17[9]) != *(a2 + v17[9]))
  {
    return 0;
  }

  v26 = v17[10];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30 || (*v27 != *v29 || v28 != v30) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  v31 = v17[11];
  v32 = *(a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  if ((v32 != *v34 || v33 != v34[1]) && (sub_1A99777E0() & 1) == 0)
  {
    return 0;
  }

  v35 = v17[12];
  v36 = *(a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  if ((v36 != *v38 || v37 != v38[1]) && (sub_1A99777E0() & 1) == 0)
  {
    return 0;
  }

  v39 = v17[13];
  v40 = *(a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (a2 + v39);
  if ((v40 != *v42 || v41 != v42[1]) && (sub_1A99777E0() & 1) == 0)
  {
    return 0;
  }

  v43 = v17[14];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 8);
  v46 = (a2 + v43);
  v47 = v46[1];
  if (v45)
  {
    if (!v47 || (*v44 != *v46 || v45 != v47) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v47)
  {
    return 0;
  }

  v48 = v17[15];
  v49 = (a1 + v48);
  v50 = *(a1 + v48 + 8);
  v51 = (a2 + v48);
  v52 = v51[1];
  if (v50)
  {
    if (!v52 || (*v49 != *v51 || v50 != v52) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v52)
  {
    return 0;
  }

  v53 = v17[16];
  v54 = (a1 + v53);
  v55 = *(a1 + v53 + 8);
  v56 = (a2 + v53);
  v57 = v56[1];
  if (v55)
  {
    if (!v57 || (*v54 != *v56 || v55 != v57) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v57)
  {
    return 0;
  }

  v58 = v17[17];
  v59 = (a1 + v58);
  v60 = *(a1 + v58 + 8);
  v61 = (a2 + v58);
  v62 = v61[1];
  if (v60)
  {
    if (!v62 || (*v59 != *v61 || v60 != v62) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v62)
  {
    return 0;
  }

  v63 = v17[18];
  v64 = (a1 + v63);
  v65 = *(a1 + v63 + 8);
  v66 = (a2 + v63);
  v67 = v66[1];
  if (v65)
  {
    if (!v67 || (*v64 != *v66 || v65 != v67) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v67)
  {
    return 0;
  }

  v68 = v17[19];
  v69 = *(a1 + v68);
  v70 = *(a1 + v68 + 8);
  v71 = (a2 + v68);
  if ((v69 != *v71 || v70 != v71[1]) && (sub_1A99777E0() & 1) == 0)
  {
    return 0;
  }

  v72 = v17[20];
  v73 = *(a1 + v72);
  v74 = *(a2 + v72);
  if (v73)
  {
    if (!v74)
    {
      return 0;
    }

    type metadata accessor for CGImage(0);
    v109 = sub_1A986DBC0(&qword_1EB3B3608, type metadata accessor for CGImage);
    v75 = v74;
    v76 = v73;
    v77 = sub_1A9976320();

    if ((v77 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v74)
  {
    return 0;
  }

  v78 = v17[21];
  v79 = *(a1 + v78);
  v80 = *(a2 + v78);
  if (v79)
  {
    if (!v80)
    {
      return 0;
    }

    type metadata accessor for CGImage(0);
    v109 = sub_1A986DBC0(&qword_1EB3B3608, type metadata accessor for CGImage);
    v81 = v80;
    v82 = v79;
    v83 = sub_1A9976320();

    if ((v83 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v80)
  {
    return 0;
  }

  v84 = v17[22];
  v85 = *(a1 + v84);
  v86 = *(a2 + v84);
  if (v85)
  {
    if (!v86)
    {
      return 0;
    }

    type metadata accessor for CGImage(0);
    v109 = sub_1A986DBC0(&qword_1EB3B3608, type metadata accessor for CGImage);
    v87 = v86;
    v88 = v85;
    v89 = sub_1A9976320();

    if ((v89 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v86)
  {
    return 0;
  }

  v90 = v17[23];
  v91 = (a1 + v90);
  v92 = *(a1 + v90 + 8);
  v93 = (a2 + v90);
  v94 = v93[1];
  if (v92)
  {
    if (!v94 || (*v91 != *v93 || v92 != v94) && (sub_1A99777E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v94)
  {
    return 0;
  }

  v95 = v17[24];
  v96 = *(v13 + 48);
  sub_1A98681F0(a1 + v95, v16);
  sub_1A98681F0(a2 + v95, &v16[v96]);
  v97 = *(v111 + 48);
  if (v97(v16, 1, v4) != 1)
  {
    sub_1A98681F0(v16, v12);
    if (v97(&v16[v96], 1, v4) == 1)
    {
      sub_1A986DED4(v12, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
      goto LABEL_89;
    }

    v98 = v110;
    sub_1A986E044(&v16[v96], v110, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
    v99 = _s7Sharing16SFAirDropReceiveO10AskRequestV24AdvancedItemsDescriptionO2eeoiySbAG_AGtFZ_0(v12, v98);
    sub_1A986DED4(v98, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
    sub_1A986DED4(v12, type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
    sub_1A97B06FC(v16, &qword_1EB3B34D8, &qword_1A999B320);
    if (v99)
    {
      goto LABEL_91;
    }

    return 0;
  }

  if (v97(&v16[v96], 1, v4) != 1)
  {
LABEL_89:
    sub_1A97B06FC(v16, &qword_1EB3B3600, &qword_1A999BA60);
    return 0;
  }

  sub_1A97B06FC(v16, &qword_1EB3B34D8, &qword_1A999B320);
LABEL_91:
  if ((sub_1A98BB5EC(*(a1 + v17[25]), *(a2 + v17[25])) & 1) == 0 || (sub_1A98BB25C(*(a1 + v17[26]), *(a2 + v17[26])) & 1) == 0)
  {
    return 0;
  }

  v100 = v17[27];
  v101 = a1 + v100;
  v103 = *(a1 + v100);
  v102 = *(v101 + 8);
  v104 = (a2 + v100);
  v106 = *v104;
  v105 = v104[1];
  if (v102 >> 60 == 15)
  {
    if (v105 >> 60 == 15)
    {
      sub_1A97C1554(v103, *(v101 + 8));
      sub_1A97C1554(v106, v105);
      sub_1A97D8688(v103, v102);
      return 1;
    }

    goto LABEL_97;
  }

  if (v105 >> 60 == 15)
  {
LABEL_97:
    sub_1A97C1554(v103, *(v101 + 8));
    sub_1A97C1554(v106, v105);
    sub_1A97D8688(v103, v102);
    sub_1A97D8688(v106, v105);
    return 0;
  }

  sub_1A97C1554(v103, *(v101 + 8));
  sub_1A97C1554(v106, v105);
  v107 = sub_1A993184C(v103, v102, v106, v105);
  sub_1A97D8688(v106, v105);
  sub_1A97D8688(v103, v102);
  return (v107 & 1) != 0;
}

unint64_t sub_1A986DAA4()
{
  result = qword_1EB3B34E8;
  if (!qword_1EB3B34E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B34E8);
  }

  return result;
}

unint64_t sub_1A986DAF8()
{
  result = qword_1EB3B34F8;
  if (!qword_1EB3B34F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B34F8);
  }

  return result;
}

unint64_t sub_1A986DB4C()
{
  result = qword_1EB3B3500;
  if (!qword_1EB3B3500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3500);
  }

  return result;
}

uint64_t sub_1A986DBC0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A986DC08()
{
  result = qword_1EB3B3530;
  if (!qword_1EB3B3530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3530);
  }

  return result;
}

unint64_t sub_1A986DC5C()
{
  result = qword_1EB3B3548;
  if (!qword_1EB3B3548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3548);
  }

  return result;
}

unint64_t sub_1A986DCB0()
{
  result = qword_1EB3B3550;
  if (!qword_1EB3B3550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3550);
  }

  return result;
}

uint64_t sub_1A986DD04(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B3510, &unk_1A999B330);
    sub_1A986DBC0(a2, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A986DDA0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B3520, &qword_1A99A18D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A986DE18()
{
  result = qword_1EB3B3570;
  if (!qword_1EB3B3570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3570);
  }

  return result;
}

uint64_t sub_1A986DE6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A986DED4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A986DF34()
{
  result = qword_1EB3B3580;
  if (!qword_1EB3B3580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3580);
  }

  return result;
}

unint64_t sub_1A986DFF0()
{
  result = qword_1EB3B3598;
  if (!qword_1EB3B3598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3598);
  }

  return result;
}

uint64_t sub_1A986E044(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A986E0F8()
{
  result = qword_1EB3AC608;
  if (!qword_1EB3AC608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC608);
  }

  return result;
}

unint64_t sub_1A986E150()
{
  result = qword_1EB3B35B0;
  if (!qword_1EB3B35B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B35B0);
  }

  return result;
}

unint64_t sub_1A986E1A8()
{
  result = qword_1EB3B35B8;
  if (!qword_1EB3B35B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B35B8);
  }

  return result;
}

unint64_t sub_1A986E200()
{
  result = qword_1EB3B35C0;
  if (!qword_1EB3B35C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B35C0);
  }

  return result;
}

void sub_1A986E27C()
{
  type metadata accessor for SFAirDrop.TransferIdentifier();
  if (v0 <= 0x3F)
  {
    sub_1A97D8914(319, &qword_1EB3AB718);
    if (v1 <= 0x3F)
    {
      sub_1A986E3DC();
      if (v2 <= 0x3F)
      {
        sub_1A986E434();
        if (v3 <= 0x3F)
        {
          sub_1A986E4C8();
          if (v4 <= 0x3F)
          {
            sub_1A97D8914(319, &qword_1EB3AC8A8);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1A986E3DC()
{
  if (!qword_1EB3AC618)
  {
    type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription(255);
    v0 = sub_1A99770A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB3AC618);
    }
  }
}

void sub_1A986E434()
{
  if (!qword_1EB3AB688)
  {
    sub_1A9976020();
    sub_1A986DBC0(&qword_1EB3AC8C0, MEMORY[0x1E6968FB0]);
    v0 = sub_1A9976E30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB3AB688);
    }
  }
}

void sub_1A986E4C8()
{
  if (!qword_1EB3AB680)
  {
    sub_1A986E524();
    v0 = sub_1A9976E30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB3AB680);
    }
  }
}

unint64_t sub_1A986E524()
{
  result = qword_1EB3AC610;
  if (!qword_1EB3AC610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC610);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1A986E594(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1A986E5DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A986E640()
{
  sub_1A986E918(319, &qword_1EB3AB748);
  if (v0 <= 0x3F)
  {
    sub_1A986E79C(319);
    if (v1 <= 0x3F)
    {
      sub_1A986E8B0(319, &qword_1EB3AB730, type metadata accessor for SFAirDropiTunesStoreLinkType);
      if (v2 <= 0x3F)
      {
        sub_1A986E8B0(319, &qword_1EB3AB738, type metadata accessor for SFAirDropMusicAppLinkType);
        if (v3 <= 0x3F)
        {
          sub_1A986E8B0(319, &qword_1EB3AB740, type metadata accessor for SFAirDropMapsLinkType);
          if (v4 <= 0x3F)
          {
            sub_1A986E918(319, &qword_1EB3AB750);
            if (v5 <= 0x3F)
            {
              sub_1A986E96C();
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A986E79C(uint64_t a1)
{
  if (!qword_1EB3AB758)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1A9976230();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB3AB758);
    }
  }
}

void sub_1A986E8B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A986E918(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A986E96C()
{
  result = qword_1EB3AB728;
  if (!qword_1EB3AB728)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EB3AB728);
  }

  return result;
}

uint64_t _s10AskRequestV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10AskRequestV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A986EB10()
{
  result = qword_1EB3B35C8;
  if (!qword_1EB3B35C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B35C8);
  }

  return result;
}

unint64_t sub_1A986EB68()
{
  result = qword_1EB3B35D0;
  if (!qword_1EB3B35D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B35D0);
  }

  return result;
}

unint64_t sub_1A986EBC0()
{
  result = qword_1EB3B35D8;
  if (!qword_1EB3B35D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B35D8);
  }

  return result;
}

unint64_t sub_1A986EC18()
{
  result = qword_1EB3B35E0;
  if (!qword_1EB3B35E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B35E0);
  }

  return result;
}

unint64_t sub_1A986EC70()
{
  result = qword_1EB3B35E8;
  if (!qword_1EB3B35E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B35E8);
  }

  return result;
}

unint64_t sub_1A986ECC8()
{
  result = qword_1EB3B35F0;
  if (!qword_1EB3B35F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B35F0);
  }

  return result;
}

uint64_t sub_1A986ED1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xED00007365707954 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x416F7475416E6163 && a2 == 0xED00007470656363 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A99E5520 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73497265646E6573 && a2 == 0xEA0000000000654DLL || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A99E5540 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x75427265646E6573 && a2 == 0xEE004449656C646ELL || (sub_1A99777E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A99E5560 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F4D7265646E6573 && a2 == 0xEF656D614E6C6564 || (sub_1A99777E0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6D457265646E6573 && a2 == 0xEB000000006C6961 || (sub_1A99777E0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6D457265646E6573 && a2 == 0xEF687361486C6961 || (sub_1A99777E0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A99E5580 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x69467265646E6573 && a2 == 0xEF656D614E747372 || (sub_1A99777E0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x614C7265646E6573 && a2 == 0xEE00656D614E7473 || (sub_1A99777E0() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x44497265646E6573 && a2 == 0xE800000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x63497265646E6573 && a2 == 0xEA00000000006E6FLL || (sub_1A99777E0() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A99E55A0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x4977656976657270 && a2 == 0xEC0000006567616DLL || (sub_1A99777E0() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A99E55C0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A99E55E0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x736D6574496C7275 && a2 == 0xE800000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x61506D6F74737563 && a2 == 0xED000064616F6C79)
  {

    return 23;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 23;
    }

    else
    {
      return 24;
    }
  }
}

uint64_t sub_1A986F4B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001A99E5600 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x506D6F42656C6966 && a2 == 0xEB00000000687461 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69447349656C6966 && a2 == 0xEF79726F74636572 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x54627553656C6966 && a2 == 0xEB00000000657079 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65707954656C6966 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_1A99777E0();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1A986F6CC(unsigned __int8 a1)
{
  v1 = 0xD000000000000016;
  if (a1 <= 4u)
  {
    v6 = 0xD00000000000003ELL;
    v7 = 0xD000000000000034;
    if (a1 != 3)
    {
      v7 = 0xD000000000000043;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (!a1)
    {
      v1 = 0xD000000000000020;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD00000000000001BLL;
    v3 = 0xD000000000000027;
    if (a1 != 9)
    {
      v3 = 0xD00000000000001DLL;
    }

    if (a1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000038;
    if (a1 == 6)
    {
      v4 = 0xD000000000000042;
    }

    if (a1 == 5)
    {
      v4 = 0xD000000000000039;
    }

    if (a1 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1A986F808()
{
  v1 = sub_1A99767E0();
  v2 = [v0 cuValueForEntitlementNoCache_];

  if (v2)
  {
    sub_1A99771B0();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1A9812E28(v6);
    return 0;
  }
}

uint64_t sub_1A986FA94(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1A99764A0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1A9976490();
}

uint64_t sub_1A986FB30@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1A99764A0();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

unint64_t sub_1A986FC3C()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 1701669236;
  v4 = 0x69546F4E656D6974;
  if (v1 != 3)
  {
    v4 = 1819047270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A986FCD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9872EE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A986FCF8(uint64_t a1)
{
  v2 = sub_1A9870508();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A986FD34(uint64_t a1)
{
  v2 = sub_1A9870508();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A986FD70(uint64_t a1)
{
  v2 = sub_1A9870658();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A986FDAC(uint64_t a1)
{
  v2 = sub_1A9870658();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A986FDE8(uint64_t a1)
{
  v2 = sub_1A98706AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A986FE24(uint64_t a1)
{
  v2 = sub_1A98706AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A986FE60(uint64_t a1)
{
  v2 = sub_1A987055C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A986FE9C(uint64_t a1)
{
  v2 = sub_1A987055C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A986FED8(uint64_t a1)
{
  v2 = sub_1A9870604();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A986FF14(uint64_t a1)
{
  v2 = sub_1A9870604();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A986FF50(uint64_t a1)
{
  v2 = sub_1A98705B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A986FF8C(uint64_t a1)
{
  v2 = sub_1A98705B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OSLogDateFormatter.Style.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3660, &qword_1A999BA90);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3668, &qword_1A999BA98);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3670, &qword_1A999BAA0);
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3678, &qword_1A999BAA8);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3680, &qword_1A999BAB0);
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3688, &qword_1A999BAB8);
  v20 = *(v52 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v22 = *v1;
  v24 = a1[3];
  v23 = a1[4];
  v25 = a1;
  v27 = &v40 - v26;
  __swift_project_boxed_opaque_existential_1(v25, v24);
  sub_1A9870508();
  sub_1A9977AA0();
  v28 = (v20 + 8);
  if (v22 <= 1)
  {
    v33 = v27;
    v35 = v49;
    v34 = v50;
    v36 = v15;
    v37 = v51;
    if (v22)
    {
      v54 = 1;
      sub_1A9870658();
      v38 = v52;
      sub_1A9977640();
      (*(v34 + 8))(v36, v37);
    }

    else
    {
      v53 = 0;
      sub_1A98706AC();
      v38 = v52;
      sub_1A9977640();
      (*(v35 + 8))(v19, v16);
    }

    return (*v28)(v33, v38);
  }

  else
  {
    if (v22 == 2)
    {
      v55 = 2;
      sub_1A9870604();
      v29 = v40;
      v30 = v52;
      sub_1A9977640();
      v32 = v41;
      v31 = v42;
    }

    else if (v22 == 3)
    {
      v56 = 3;
      sub_1A98705B0();
      v29 = v43;
      v30 = v52;
      sub_1A9977640();
      v32 = v44;
      v31 = v45;
    }

    else
    {
      v57 = 4;
      sub_1A987055C();
      v29 = v46;
      v30 = v52;
      sub_1A9977640();
      v32 = v47;
      v31 = v48;
    }

    (*(v32 + 8))(v29, v31);
    return (*v28)(v27, v30);
  }
}

unint64_t sub_1A9870508()
{
  result = qword_1EB3B3690;
  if (!qword_1EB3B3690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3690);
  }

  return result;
}

unint64_t sub_1A987055C()
{
  result = qword_1EB3B3698;
  if (!qword_1EB3B3698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3698);
  }

  return result;
}

unint64_t sub_1A98705B0()
{
  result = qword_1EB3B36A0;
  if (!qword_1EB3B36A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B36A0);
  }

  return result;
}

unint64_t sub_1A9870604()
{
  result = qword_1EB3B36A8;
  if (!qword_1EB3B36A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B36A8);
  }

  return result;
}

unint64_t sub_1A9870658()
{
  result = qword_1EB3B36B0;
  if (!qword_1EB3B36B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B36B0);
  }

  return result;
}

unint64_t sub_1A98706AC()
{
  result = qword_1EB3B36B8;
  if (!qword_1EB3B36B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B36B8);
  }

  return result;
}

uint64_t OSLogDateFormatter.Style.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v67 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B36C0, &qword_1A999BAC0);
  v60 = *(v63 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B36C8, &qword_1A999BAC8);
  v6 = *(v5 - 8);
  v61 = v5;
  v62 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v53 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B36D0, &qword_1A999BAD0);
  v56 = *(v59 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v65 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B36D8, &qword_1A999BAD8);
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B36E0, &qword_1A999BAE0);
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B36E8, &unk_1A999BAE8);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v53 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1A9870508();
  v26 = v69;
  sub_1A9977A70();
  if (v26)
  {
    goto LABEL_11;
  }

  v27 = v18;
  v53 = v15;
  v54 = 0;
  v29 = v65;
  v28 = v66;
  v69 = v20;
  v30 = v67;
  v31 = v19;
  v32 = sub_1A9977620();
  v33 = (2 * *(v32 + 16)) | 1;
  v70 = v32;
  v71 = v32 + 32;
  v72 = 0;
  v73 = v33;
  v34 = sub_1A97B2978();
  if (v34 == 5 || v72 != v73 >> 1)
  {
    v39 = sub_1A9977300();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
    *v41 = &type metadata for OSLogDateFormatter.Style;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
    swift_willThrow();
    (*(v69 + 8))(v23, v19);
    goto LABEL_10;
  }

  v74 = v34;
  if (v34 <= 1u)
  {
    if (v34)
    {
      v75 = 1;
      sub_1A9870658();
      v51 = v14;
      v46 = v19;
      v52 = v54;
      sub_1A9977530();
      if (v52)
      {
        v48 = v69;
        goto LABEL_23;
      }

      (*(v57 + 8))(v51, v58);
      (*(v69 + 8))(v23, v19);
    }

    else
    {
      v75 = 0;
      sub_1A98706AC();
      v45 = v54;
      sub_1A9977530();
      if (v45)
      {
        (*(v69 + 8))(v23, v19);
        goto LABEL_10;
      }

      (*(v55 + 8))(v27, v53);
      (*(v69 + 8))(v23, v19);
    }

    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
    goto LABEL_30;
  }

  v35 = v30;
  if (v34 == 2)
  {
    v75 = 2;
    sub_1A9870604();
    v46 = v31;
    v47 = v54;
    sub_1A9977530();
    v48 = v69;
    if (!v47)
    {
      (*(v56 + 8))(v29, v59);
      (*(v48 + 8))(v23, v46);
LABEL_25:
      swift_unknownObjectRelease();
      v43 = v68;
      goto LABEL_30;
    }

LABEL_23:
    (*(v48 + 8))(v23, v46);
    goto LABEL_10;
  }

  v36 = v23;
  v37 = v69;
  if (v34 != 3)
  {
    v75 = 4;
    sub_1A987055C();
    v49 = v64;
    v50 = v54;
    sub_1A9977530();
    if (v50)
    {
      (*(v37 + 8))(v36, v31);
      goto LABEL_10;
    }

    (*(v60 + 8))(v49, v63);
    (*(v37 + 8))(v36, v31);
    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
LABEL_30:
    *v35 = v74;
    return __swift_destroy_boxed_opaque_existential_0Tm(v43);
  }

  v75 = 3;
  sub_1A98705B0();
  v38 = v54;
  sub_1A9977530();
  if (!v38)
  {
    (*(v62 + 8))(v28, v61);
    (*(v37 + 8))(v36, v31);
    goto LABEL_25;
  }

  (*(v37 + 8))(v36, v31);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v43 = v68;
  return __swift_destroy_boxed_opaque_existential_0Tm(v43);
}

id sub_1A9870F3C()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v3 = sub_1A99767E0();
  [v2 setDateFormat_];

  return v2;
}

uint64_t OSLogDateFormatter.format(_:)()
{
  v6 = *v0;
  v1 = sub_1A9870F3C();
  v2 = sub_1A99760F0();
  v3 = [v1 stringFromDate_];

  v4 = sub_1A9976820();
  return v4;
}

void OSLogDateFormatter.parse(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  LOBYTE(v16) = *v2;
  v6 = sub_1A9870F3C();
  v7 = sub_1A99767E0();
  v8 = [v6 dateFromString_];

  if (v8)
  {
    sub_1A99761F0();
  }

  else
  {
    v9 = 0xEF303038302D3232;
    v10 = 0x80000001A99E5940;
    v11 = 0xEC0000003530332ELL;
    v12 = 0x37333A39303A3631;
    if (v5 != 3)
    {
      v12 = 0xD00000000000001CLL;
      v11 = 0x80000001A99E5880;
    }

    if (v5 == 2)
    {
      v12 = 0xD000000000000011;
    }

    else
    {
      v10 = v11;
    }

    if (v5)
    {
      v9 = 0xEA00000000003232;
    }

    if (v5 <= 1)
    {
      v13 = 0x2D31302D32323032;
    }

    else
    {
      v13 = v12;
    }

    if (v5 <= 1)
    {
      v14 = v9;
    }

    else
    {
      v14 = v10;
    }

    sub_1A99772B0();
    MEMORY[0x1AC5895B0](0xD00000000000001BLL, 0x80000001A99E58A0);
    MEMORY[0x1AC5895B0](a1, a2);
    MEMORY[0x1AC5895B0](0xD000000000000023, 0x80000001A99E58C0);
    MEMORY[0x1AC5895B0](v13, v14);

    MEMORY[0x1AC5895B0](96, 0xE100000000000000);
    sub_1A97BCDE0();
    swift_allocError();
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0xD00000000000004CLL;
    v15[3] = 0x80000001A99E58F0;
    v15[4] = 110;
    v15[10] = 0;
    swift_willThrow();
  }
}

uint64_t sub_1A9871334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A99777E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A98713B8(uint64_t a1)
{
  v2 = sub_1A987157C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98713F4(uint64_t a1)
{
  v2 = sub_1A987157C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OSLogDateFormatter.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B36F0, &qword_1A999BAF8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A987157C();
  sub_1A9977AA0();
  v12 = v8;
  sub_1A98715D0();
  sub_1A99776E0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1A987157C()
{
  result = qword_1EB3B36F8;
  if (!qword_1EB3B36F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B36F8);
  }

  return result;
}

unint64_t sub_1A98715D0()
{
  result = qword_1EB3B3700;
  if (!qword_1EB3B3700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3700);
  }

  return result;
}

uint64_t OSLogDateFormatter.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3708, &qword_1A999BB00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A987157C();
  sub_1A9977A70();
  if (!v2)
  {
    sub_1A98718A0();
    sub_1A99775F0();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void sub_1A98717BC(uint64_t *a1@<X8>)
{
  v9 = *v1;
  v3 = sub_1A9870F3C();
  v4 = sub_1A99760F0();
  v5 = [v3 stringFromDate_];

  v6 = sub_1A9976820();
  v8 = v7;

  *a1 = v6;
  a1[1] = v8;
}

unint64_t sub_1A98718A0()
{
  result = qword_1EB3B3710;
  if (!qword_1EB3B3710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3710);
  }

  return result;
}

uint64_t TinyDateRangeFormatter.format(_:)()
{
  v0 = sub_1A9976300();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1A99762E0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1A9976130();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1A99761D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3650, &qword_1A999BA80) + 36);
  sub_1A99760D0();
  if (v12 >= 1.0)
  {
    sub_1A9976120();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3718, &qword_1A999BB08);
    v14 = *(sub_1A99761B0() - 8);
    v15 = *(v14 + 72);
    v16 = *(v14 + 80);
    v20 = v6;
    v21 = v7;
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1A9998180;
    sub_1A9976150();
    sub_1A9976190();
    sub_1A99761A0();
    sub_1A98730A8(v17);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1A99762D0();
    sub_1A99762F0();
    sub_1A99761C0();
    sub_1A98743B8(&qword_1EB3B3720, MEMORY[0x1E69694D0]);
    v18 = v20;
    sub_1A9976F40();
    (*(v21 + 8))(v10, v18);
    v24 = 32;
    v25 = 0xE100000000000000;
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_1A97F0528();
    v19 = sub_1A9977170();

    return v19;
  }

  else
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1A99760D0();
    sub_1A9976DF0();
    MEMORY[0x1AC5895B0](29549, 0xE200000000000000);
    return v26;
  }
}

uint64_t sub_1A9871D14(uint64_t a1)
{
  v2 = sub_1A98733C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9871D50(uint64_t a1)
{
  v2 = sub_1A98733C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9871E34@<X0>(uint64_t *a1@<X8>)
{
  result = TinyDateRangeFormatter.format(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t FuzzyTinyDateRangeFormatter.format(_:)(uint64_t a1)
{
  v2 = sub_1A9976300();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1A99762E0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1A9976130();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A99761D0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3650, &qword_1A999BA80) + 36);
  sub_1A99760D0();
  v17 = fabs(v16);
  if (v17 >= 36000.0)
  {
    if (v17 < 604800.0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3718, &qword_1A999BB08);
      v24 = sub_1A99761B0();
      v25 = *(v24 - 8);
      v54 = v11;
      v26 = v25;
      v27 = *(v25 + 72);
      v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1A9996D60;
      sub_1A9976120();
      v56 = sub_1A98730A8(v29);
      swift_setDeallocating();
      (*(v26 + 8))(v29 + v28, v24);
      v11 = v54;
      goto LABEL_17;
    }

    v55 = v9;
    v53 = v14;
    if (v17 >= 1814400.0)
    {
      if (v17 < 5184000.0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3718, &qword_1A999BB08);
        v34 = sub_1A99761B0();
        v35 = *(v34 - 8);
        v54 = v11;
        v36 = v35;
        v37 = *(v35 + 72);
        v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_1A9996D60;
        sub_1A9976160();
        v56 = sub_1A98730A8(v39);
        swift_setDeallocating();
        (*(v36 + 8))(v39 + v38, v34);
        v11 = v54;
        goto LABEL_16;
      }

      if (v17 >= 15552000.0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3718, &qword_1A999BB08);
        v43 = sub_1A99761B0();
        v44 = *(v43 - 8);
        v45 = *(v44 + 72);
        v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_1A9996D60;
        if (v17 >= 25920000.0)
        {
          sub_1A9976170();
        }

        else
        {
          sub_1A9976180();
        }

        v56 = sub_1A98730A8(v47);
        swift_setDeallocating();
        (*(v44 + 8))(v47 + v46, v43);
        goto LABEL_16;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3718, &qword_1A999BB08);
      v40 = *(sub_1A99761B0() - 8);
      v41 = *(v40 + 72);
      v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1A9998170;
      sub_1A9976180();
      sub_1A9976160();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3718, &qword_1A999BB08);
      v30 = *(sub_1A99761B0() - 8);
      v31 = *(v30 + 72);
      v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1A9998170;
      sub_1A9976160();
      sub_1A9976120();
    }

    v56 = sub_1A98730A8(v33);
    swift_setDeallocating();
    swift_arrayDestroy();
LABEL_16:
    v14 = v53;
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3718, &qword_1A999BB08);
  v18 = sub_1A99761B0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = *(v19 + 80);
  v55 = v9;
  v22 = (v21 + 32) & ~v21;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1A9996D60;
  sub_1A9976150();
  v56 = sub_1A98730A8(v23);
  swift_setDeallocating();
  (*(v19 + 8))(v23 + v22, v18);
LABEL_17:
  swift_deallocClassInstance();
  sub_1A9976120();
  sub_1A99762D0();
  sub_1A99762F0();
  sub_1A99761C0();
  sub_1A98743B8(&qword_1EB3B3720, MEMORY[0x1E69694D0]);
  sub_1A9976F40();
  (*(v11 + 8))(v14, v10);
  v59 = 32;
  v60 = 0xE100000000000000;
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_1A97F0528();
  v48 = sub_1A9977170();
  v50 = v49;

  v61 = v48;
  v62 = v50;
  v59 = 28525;
  v60 = 0xE200000000000000;
  v57 = 109;
  v58 = 0xE100000000000000;
  v51 = sub_1A9977170();

  return v51;
}

uint64_t sub_1A98727E8(uint64_t a1)
{
  v2 = sub_1A987341C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9872824(uint64_t a1)
{
  v2 = sub_1A987341C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98728A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = FuzzyTinyDateRangeFormatter.format(_:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t CompactDateRangeFormatter.format(_:)()
{
  sub_1A9873470();
  sub_1A9976210();
  LOBYTE(v2) = 0;
  sub_1A9976210();

  sub_1A9976210();
  MEMORY[0x1AC5895B0](32, 0xE100000000000000);
  sub_1A9976210();
  MEMORY[0x1AC5895B0](v2);

  MEMORY[0x1AC5895B0](2108704, 0xE300000000000000);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3650, &qword_1A999BA80) + 36);
  sub_1A9976210();
  MEMORY[0x1AC5895B0](v2);

  MEMORY[0x1AC5895B0](23328, 0xE200000000000000);
  sub_1A98734C4();
  sub_1A9976F40();
  MEMORY[0x1AC5895B0](v2);

  MEMORY[0x1AC5895B0](93, 0xE100000000000000);
  return v2;
}

uint64_t sub_1A9872B78(uint64_t a1)
{
  v2 = sub_1A9873518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9872BB4(uint64_t a1)
{
  v2 = sub_1A9873518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9872C34(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1A9977AA0();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1A9872D58@<X0>(uint64_t *a1@<X8>)
{
  result = CompactDateRangeFormatter.format(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A9872DC4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1A9977AA0();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1A9872EE4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001A99E5960 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69546F4E656D6974 && a2 == 0xEE00656E6F5A656DLL || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1819047270 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1A99777E0();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A98730A8(uint64_t a1)
{
  v2 = sub_1A99761B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B38A0, &qword_1A999C8B8);
    v10 = sub_1A9977280();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1A98743B8(&qword_1EB3B38A8, MEMORY[0x1E6969498]);
      v18 = sub_1A9976730();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1A98743B8(&qword_1EB3B38B0, MEMORY[0x1E6969498]);
          v25 = sub_1A99767A0();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1A98733C8()
{
  result = qword_1EB3B3730;
  if (!qword_1EB3B3730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3730);
  }

  return result;
}

unint64_t sub_1A987341C()
{
  result = qword_1EB3B3740;
  if (!qword_1EB3B3740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3740);
  }

  return result;
}

unint64_t sub_1A9873470()
{
  result = qword_1EB3B3748;
  if (!qword_1EB3B3748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3748);
  }

  return result;
}

unint64_t sub_1A98734C4()
{
  result = qword_1EB3B3750;
  if (!qword_1EB3B3750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3750);
  }

  return result;
}

unint64_t sub_1A9873518()
{
  result = qword_1EB3B3760;
  if (!qword_1EB3B3760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3760);
  }

  return result;
}

unint64_t sub_1A9873570()
{
  result = qword_1EB3B3768;
  if (!qword_1EB3B3768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3768);
  }

  return result;
}

unint64_t sub_1A98735C4()
{
  result = qword_1EB3B3770;
  if (!qword_1EB3B3770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3770);
  }

  return result;
}

unint64_t sub_1A9873618()
{
  result = qword_1EB3B3778;
  if (!qword_1EB3B3778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3778);
  }

  return result;
}

unint64_t sub_1A987366C()
{
  result = qword_1EB3B3780;
  if (!qword_1EB3B3780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3780);
  }

  return result;
}

unint64_t sub_1A98736C4()
{
  result = qword_1EB3B3788;
  if (!qword_1EB3B3788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3788);
  }

  return result;
}

unint64_t sub_1A987371C()
{
  result = qword_1EB3B3790;
  if (!qword_1EB3B3790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3790);
  }

  return result;
}

unint64_t sub_1A9873774()
{
  result = qword_1EB3B3798;
  if (!qword_1EB3B3798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3798);
  }

  return result;
}

unint64_t sub_1A98737CC()
{
  result = qword_1EB3B37A0;
  if (!qword_1EB3B37A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B37A0);
  }

  return result;
}

unint64_t sub_1A9873824()
{
  result = qword_1EB3B37A8;
  if (!qword_1EB3B37A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B37A8);
  }

  return result;
}

unint64_t sub_1A987387C()
{
  result = qword_1EB3B37B0;
  if (!qword_1EB3B37B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B37B0);
  }

  return result;
}

unint64_t sub_1A98738D4()
{
  result = qword_1EB3B37B8;
  if (!qword_1EB3B37B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B37B8);
  }

  return result;
}

unint64_t sub_1A987392C()
{
  result = qword_1EB3B37C0;
  if (!qword_1EB3B37C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B37C0);
  }

  return result;
}

unint64_t sub_1A9873984()
{
  result = qword_1EB3B37C8;
  if (!qword_1EB3B37C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B37C8);
  }

  return result;
}

unint64_t sub_1A98739DC()
{
  result = qword_1EB3B37D0;
  if (!qword_1EB3B37D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B37D0);
  }

  return result;
}

unint64_t sub_1A9873A34()
{
  result = qword_1EB3B37D8;
  if (!qword_1EB3B37D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B37D8);
  }

  return result;
}

unint64_t sub_1A9873A8C()
{
  result = qword_1EB3B37E0;
  if (!qword_1EB3B37E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B37E0);
  }

  return result;
}

unint64_t sub_1A9873AE4()
{
  result = qword_1EB3B37E8;
  if (!qword_1EB3B37E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B37E8);
  }

  return result;
}

unint64_t sub_1A9873C2C()
{
  result = qword_1EB3B37F0;
  if (!qword_1EB3B37F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B37F0);
  }

  return result;
}

unint64_t sub_1A9873C84()
{
  result = qword_1EB3B37F8;
  if (!qword_1EB3B37F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B37F8);
  }

  return result;
}

unint64_t sub_1A9873CDC()
{
  result = qword_1EB3B3800;
  if (!qword_1EB3B3800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3800);
  }

  return result;
}

unint64_t sub_1A9873D34()
{
  result = qword_1EB3B3808;
  if (!qword_1EB3B3808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3808);
  }

  return result;
}

unint64_t sub_1A9873D8C()
{
  result = qword_1EB3B3810;
  if (!qword_1EB3B3810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3810);
  }

  return result;
}

unint64_t sub_1A9873DE4()
{
  result = qword_1EB3B3818;
  if (!qword_1EB3B3818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3818);
  }

  return result;
}

unint64_t sub_1A9873E3C()
{
  result = qword_1EB3B3820;
  if (!qword_1EB3B3820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3820);
  }

  return result;
}

unint64_t sub_1A9873E94()
{
  result = qword_1EB3B3828;
  if (!qword_1EB3B3828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3828);
  }

  return result;
}

unint64_t sub_1A9873EEC()
{
  result = qword_1EB3B3830;
  if (!qword_1EB3B3830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3830);
  }

  return result;
}

unint64_t sub_1A9873F44()
{
  result = qword_1EB3B3838;
  if (!qword_1EB3B3838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3838);
  }

  return result;
}

unint64_t sub_1A9873F9C()
{
  result = qword_1EB3B3840;
  if (!qword_1EB3B3840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3840);
  }

  return result;
}

unint64_t sub_1A9873FF4()
{
  result = qword_1EB3B3848;
  if (!qword_1EB3B3848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3848);
  }

  return result;
}

unint64_t sub_1A987404C()
{
  result = qword_1EB3B3850;
  if (!qword_1EB3B3850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3850);
  }

  return result;
}

unint64_t sub_1A98740A4()
{
  result = qword_1EB3B3858;
  if (!qword_1EB3B3858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3858);
  }

  return result;
}

unint64_t sub_1A98740FC()
{
  result = qword_1EB3B3860;
  if (!qword_1EB3B3860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3860);
  }

  return result;
}

unint64_t sub_1A9874154()
{
  result = qword_1EB3B3868;
  if (!qword_1EB3B3868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3868);
  }

  return result;
}

unint64_t sub_1A98741AC()
{
  result = qword_1EB3B3870;
  if (!qword_1EB3B3870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3870);
  }

  return result;
}

unint64_t sub_1A9874204()
{
  result = qword_1EB3B3878;
  if (!qword_1EB3B3878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3878);
  }

  return result;
}

unint64_t sub_1A987425C()
{
  result = qword_1EB3B3880;
  if (!qword_1EB3B3880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3880);
  }

  return result;
}

unint64_t sub_1A98742B4()
{
  result = qword_1EB3B3888;
  if (!qword_1EB3B3888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3888);
  }

  return result;
}

unint64_t sub_1A987430C()
{
  result = qword_1EB3B3890;
  if (!qword_1EB3B3890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3890);
  }

  return result;
}

unint64_t sub_1A9874364()
{
  result = qword_1EB3B3898;
  if (!qword_1EB3B3898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3898);
  }

  return result;
}

uint64_t sub_1A98743B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t SFAirDrop.DeviceRelationship.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1A9874488()
{
  result = qword_1EB3B38B8;
  if (!qword_1EB3B38B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B38B8);
  }

  return result;
}

uint64_t sub_1A9874500@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_1A9875220(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_1A98751BC(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_1A9976050();
    v15 = v14;
    result = sub_1A97B43C4(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

Sharing::SFString_optional __swiftcall SFString.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A9977510();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SFString.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v2 = 0x4F435F454259414DLL;
    if (v1 == 6)
    {
      v2 = 0xD000000000000024;
    }

    v3 = 0xD000000000000023;
    if (v1 != 4)
    {
      v3 = 0xD000000000000023;
    }

    v4 = *v0 <= 5u;
  }

  else
  {
    v2 = 0xD000000000000017;
    if (v1 == 2)
    {
      v2 = 0xD000000000000025;
    }

    v3 = 0xD000000000000023;
    if (*v0)
    {
      v3 = 0xD000000000000022;
    }

    v4 = *v0 <= 1u;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

void sub_1A98747F0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v3 = 0xED0000544341544ELL;
    v4 = 0x4F435F454259414DLL;
    if (v2 == 6)
    {
      v4 = 0xD000000000000024;
      v3 = 0x80000001A99E2640;
    }

    v5 = 0xD000000000000023;
    v6 = 0x80000001A99E25E0;
    if (v2 != 4)
    {
      v5 = 0xD000000000000023;
      v6 = 0x80000001A99E2610;
    }

    v7 = *v1 <= 5u;
  }

  else
  {
    v3 = 0x80000001A99E2590;
    v4 = 0xD000000000000017;
    if (v2 == 2)
    {
      v4 = 0xD000000000000025;
    }

    else
    {
      v3 = 0x80000001A99E25C0;
    }

    v5 = 0xD000000000000023;
    v6 = 0x80000001A99E2530;
    if (*v1)
    {
      v5 = 0xD000000000000022;
      v6 = 0x80000001A99E2560;
    }

    v7 = *v1 <= 1u;
  }

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (v7)
  {
    v3 = v6;
  }

  *a1 = v8;
  a1[1] = v3;
}

void sub_1A987490C()
{
  v0 = sub_1A99767E0();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  qword_1EB3B38C0 = v1;
}

unint64_t SFString.localized.getter()
{
  v1 = *v0;
  if (qword_1EB3B0B28 != -1)
  {
    swift_once();
  }

  v2 = qword_1EB3B38C0;
  if (qword_1EB3B38C0)
  {
    v6 = sub_1A99767E0();

    v7 = sub_1A99767E0();

    v8 = sub_1A99767E0();
    v9 = [v2 localizedStringForKey:v6 value:v7 table:v8];

    v10 = sub_1A9976820();
  }

  else if (v1 > 3)
  {
    v5 = 0x4F435F454259414DLL;
    if (v1 == 6)
    {
      v5 = 0xD000000000000024;
    }

    if (v1 <= 5)
    {
      return 0xD000000000000023;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v3 = 0xD000000000000017;
    if (v1 == 2)
    {
      v3 = 0xD000000000000025;
    }

    v4 = 0xD000000000000023;
    if (v1)
    {
      v4 = 0xD000000000000022;
    }

    if (v1 <= 1)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  return v10;
}