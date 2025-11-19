uint64_t sub_22FD82894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = *a5;
  v5[6] = *(*a5 + 88);
  v7 = *(v6 + 80);
  v5[7] = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[8] = AssociatedTypeWitness;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v9 = sub_22FE43E14();
  v5[9] = v9;
  v10 = sub_22FE43744();
  v5[10] = v10;
  v11 = *(v10 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  v13 = *(v9 - 8);
  v5[13] = v13;
  v14 = *(v13 + 64) + 15;
  v5[14] = swift_task_alloc();
  v15 = type metadata accessor for UnboundedBufferStateMachine.ElementProducedAction();
  v5[15] = v15;
  v16 = *(v15 - 8);
  v5[16] = v16;
  v17 = *(v16 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v18 = *(AssociatedTypeWitness - 8);
  v5[19] = v18;
  v19 = *(v18 + 64) + 15;
  v5[20] = swift_task_alloc();
  v20 = swift_getAssociatedTypeWitness();
  v5[21] = v20;
  v21 = *(v20 - 8);
  v5[22] = v21;
  v22 = *(v21 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v23 = *(*(sub_22FE43744() - 8) + 64) + 15;
  v5[25] = swift_task_alloc();
  v24 = *(v7 - 8);
  v5[26] = v24;
  v25 = *(v24 + 64) + 15;
  v5[27] = swift_task_alloc();
  v26 = swift_getAssociatedTypeWitness();
  v5[28] = v26;
  v27 = *(v26 - 8);
  v5[29] = v27;
  v28 = *(v27 + 64) + 15;
  v5[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FD82C58);
}

uint64_t sub_22FD82C58()
{
  v1 = v0[30];
  v2 = v0[6];
  (*(v0[26] + 16))(v0[27], v0[4], v0[7]);
  sub_22FE43464();
  v3 = v0[28];
  v4 = v0[6];
  v5 = v0[7];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[31] = AssociatedConformanceWitness;
  v7 = *(MEMORY[0x277D856D8] + 4);
  v8 = swift_task_alloc();
  v0[32] = v8;
  *v8 = v0;
  v8[1] = sub_22FD82D6C;
  v9 = v0[30];
  v10 = v0[28];
  v12 = v0[24];
  v11 = v0[25];

  return MEMORY[0x282200310](v11, 0, 0, v12, v10, AssociatedConformanceWitness);
}

uint64_t sub_22FD82D6C()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_22FD833C0;
  }

  else
  {
    v3 = sub_22FD82E80;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_22FD82E80()
{
  v1 = v0[25];
  v2 = v0[19];
  v3 = v0[8];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[33];
    v5 = v0[6];
    v6 = v0[7];
    v7 = v0[5];
    (*(v0[29] + 8))(v0[30], v0[28]);
    v8 = *(v7 + 16);
    v9 = swift_task_alloc();
    *(v9 + 16) = v6;
    *(v9 + 24) = v5;
    type metadata accessor for UnboundedBufferStateMachine();
    type metadata accessor for UnboundedBufferStateMachine.FinishAction();
    sub_22FD8C780(sub_22FD839CC, v9, v8);

    v10 = v0[3];
    if (v10 >= 2)
    {
      v11 = v0[12];
      v13 = v0[10];
      v12 = v0[11];
      (*(v0[13] + 56))(v11, 1, 1, v0[9]);
      (*(v12 + 32))(*(*(v10 + 64) + 40), v11, v13);
      swift_continuation_resume();
    }

    v14 = v0[30];
    v15 = v0[27];
    v17 = v0[24];
    v16 = v0[25];
    v18 = v0[23];
    v19 = v0[20];
    v21 = v0[17];
    v20 = v0[18];
    v22 = v0[14];
    v23 = v0[12];

    v24 = v0[1];

    return v24();
  }

  else
  {
    v26 = v0[20];
    v27 = v0[18];
    v57 = v0[33];
    v58 = v0[17];
    v28 = v0[16];
    v56 = v0[15];
    v59 = v0[10];
    v60 = v0[9];
    v30 = v0[6];
    v29 = v0[7];
    v31 = v0[5];
    (*(v2 + 32))(v26, v1, v3);
    v32 = *(v31 + 16);
    v33 = swift_task_alloc();
    v33[2] = v29;
    v33[3] = v30;
    v33[4] = v26;
    type metadata accessor for UnboundedBufferStateMachine();
    sub_22FD8C780(sub_22FD83A20, v33, v32);

    (*(v28 + 16))(v58, v27, v56);
    sub_22FE43434();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v58, 1, TupleTypeMetadata2) != 1)
    {
      v35 = v0[17];
      v37 = v0[13];
      v36 = v0[14];
      v39 = v0[11];
      v38 = v0[12];
      v41 = v0[9];
      v40 = v0[10];
      v42 = *v35;
      (*(v37 + 32))(v36, &v35[*(TupleTypeMetadata2 + 48)], v41);
      (*(v37 + 16))(v38, v36, v41);
      (*(v37 + 56))(v38, 0, 1, v41);
      (*(v39 + 32))(*(*(v42 + 64) + 40), v38, v40);
      swift_continuation_resume();
      (*(v37 + 8))(v36, v41);
    }

    v44 = v0[19];
    v43 = v0[20];
    v45 = v0[8];
    (*(v0[16] + 8))(v0[18], v0[15]);
    (*(v44 + 8))(v43, v45);
    v46 = v0[28];
    v47 = v0[6];
    v48 = v0[7];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v0[31] = AssociatedConformanceWitness;
    v50 = *(MEMORY[0x277D856D8] + 4);
    v51 = swift_task_alloc();
    v0[32] = v51;
    *v51 = v0;
    v51[1] = sub_22FD82D6C;
    v52 = v0[30];
    v53 = v0[28];
    v55 = v0[24];
    v54 = v0[25];

    return MEMORY[0x282200310](v54, 0, 0, v55, v53, AssociatedConformanceWitness);
  }
}

uint64_t sub_22FD833C0()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = *(v0[22] + 32);
  v3(v0[23], v0[24], v0[21]);
  swift_getAssociatedConformanceWitness();
  v4 = sub_22FE43C64();
  v5 = v0[23];
  if (v4)
  {
    v6 = v4;
    (*(v0[22] + 8))(v0[23], v0[21]);
  }

  else
  {
    v7 = v0[21];
    v6 = swift_allocError();
    v3(v8, v5, v7);
  }

  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  (*(v0[29] + 8))(v0[30], v0[28]);
  v12 = *(v11 + 16);
  v13 = swift_task_alloc();
  v13[2] = v9;
  v13[3] = v10;
  v13[4] = v6;
  type metadata accessor for UnboundedBufferStateMachine();
  type metadata accessor for UnboundedBufferStateMachine.FinishAction();
  sub_22FD8C780(sub_22FD83974, v13, v12);

  v14 = v0[2];
  if (v14 > 1)
  {
    v15 = v0[12];
    v16 = v0[13];
    v18 = v0[10];
    v17 = v0[11];
    v19 = v0[9];
    *v15 = v6;
    swift_storeEnumTagMultiPayload();
    (*(v16 + 56))(v15, 0, 1, v19);
    (*(v17 + 32))(*(*(v14 + 64) + 40), v15, v18);
    swift_continuation_resume();
  }

  else
  {
  }

  v20 = v0[30];
  v21 = v0[27];
  v23 = v0[24];
  v22 = v0[25];
  v24 = v0[23];
  v25 = v0[20];
  v27 = v0[17];
  v26 = v0[18];
  v28 = v0[14];
  v29 = v0[12];

  v30 = v0[1];

  return v30();
}

uint64_t sub_22FD8369C()
{
  sub_22FD82658();
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22FD836F0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for UnboundedBufferStateMachine();
  result = sub_22FD7FEF4(v5);
  *a1 = result;
  a1[1] = v7;
  return result;
}

uint64_t sub_22FD8373C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22FD73F54;

  return sub_22FD817D8(a1, v1);
}

uint64_t sub_22FD83800@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = type metadata accessor for UnboundedBufferStateMachine();
  return sub_22FD7F71C(v5, v6, a1);
}

uint64_t sub_22FD83858(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[4] - 8) + 80) + 48) & ~*(*(v1[4] - 8) + 80);
  v6 = v1[2];
  v7 = *(v1 + ((*(*(v1[4] - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22FD73F54;

  return sub_22FD82894(a1, v6, v4, v1 + v5, v7);
}

uint64_t sub_22FD83974@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = type metadata accessor for UnboundedBufferStateMachine();
  result = sub_22FD7EC00(v5, v6);
  *a1 = result;
  return result;
}

uint64_t sub_22FD839CC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for UnboundedBufferStateMachine();
  result = sub_22FD7EC00(0, v5);
  *a1 = result;
  return result;
}

uint64_t sub_22FD83A20@<X0>(char *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = type metadata accessor for UnboundedBufferStateMachine();
  return sub_22FD7E538(v5, v6, a1);
}

void *sub_22FD83A78(uint64_t a1, uint64_t a2, int a3)
{
  v21 = a3;
  v6 = *(*v3 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v20[-v9];
  v12 = *(v11 + 88);
  v13 = type metadata accessor for UnboundedBufferStateMachine();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v20[-v16];
  (*(v7 + 16))(v10, a1, v6);
  sub_22FD7E220(v10, a2, v21, v6, v17);
  v18 = sub_22FD8C8F8();
  (*(v14 + 8))(v17, v13);
  v3[2] = v18;
  return v3;
}

void *AsyncChannel.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = *(*v0 + 80);
  v0[2] = sub_22FD89CCC();
  v0[3] = v2;
  return v0;
}

void *AsyncChannel.init()()
{
  v1 = *(*v0 + 80);
  v0[2] = sub_22FD89CCC();
  v0[3] = v2;
  return v0;
}

uint64_t AsyncChannel.send(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_22FD83D80);
}

uint64_t sub_22FD83D80()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = *(v2 + 80);
  *v5 = v0;
  v5[1] = sub_22FD83E40;
  v7 = v0[2];
  v8 = MEMORY[0x277D84A98];
  v9 = MEMORY[0x277D84AC0];

  return sub_22FD89DB4(v7, v4, v3, v6, v8, v9);
}

uint64_t sub_22FD83E40()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

Swift::Void __swiftcall AsyncChannel.finish()()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = 1;
  sub_22FD8A30C(&v4, v2, v3, *(v1 + 80), MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
}

uint64_t AsyncChannel.makeAsyncIterator()@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t AsyncChannel.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22FD83FE8);
}

uint64_t sub_22FD83FE8()
{
  v2 = v0[3];
  v1 = v0[4];
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = *(v2 + 16);
  *v5 = v0;
  v5[1] = sub_22FD840A8;
  v7 = v0[2];
  v8 = MEMORY[0x277D84A98];
  v9 = MEMORY[0x277D84AC0];

  return sub_22FD8A778(v7, v4, v3, v6, v8, v9);
}

uint64_t sub_22FD840A8()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FD841DC);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_22FD841F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FD842A0;

  return AsyncChannel.Iterator.next()(a1, a2);
}

uint64_t sub_22FD842A0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22FD84398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D856F8] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_22FD84464;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v13);
}

uint64_t sub_22FD84464()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t AsyncChannel.deinit()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  return v0;
}

uint64_t AsyncChannel.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_22FD84600@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  AsyncChannel.makeAsyncIterator()(a1);
}

uint64_t sub_22FD846C0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22FD846FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22FD84744(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t Sequence.async.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  return (*(v4 + 32))(a2, v7, a1);
}

uint64_t AsyncSyncSequence.Iterator.iterator.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v6 = sub_22FE43744();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2, v6);
}

uint64_t AsyncSyncSequence.Iterator.iterator.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  v6 = sub_22FE43744();
  v7 = *(*(v6 - 8) + 40);

  return v7(v2, a1, v6);
}

uint64_t AsyncSyncSequence.Iterator.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v8 = *(v5 + 56);
  v8(a2, 1, 1, AssociatedTypeWitness);
  v6 = sub_22FE43744();
  (*(*(v6 - 8) + 8))(a2, v6);
  (*(v5 + 32))(a2, a1, AssociatedTypeWitness);

  return (v8)(a2, 0, 1, AssociatedTypeWitness);
}

uint64_t AsyncSyncSequence.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *(a2 + 24);
  v3[5] = *(a2 + 16);
  v3[6] = swift_getAssociatedTypeWitness();
  v4 = sub_22FE43744();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FD84C04);
}

uint64_t sub_22FD84C04()
{
  if (sub_22FE43424())
  {
    goto LABEL_6;
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = (*(*(AssociatedTypeWitness - 8) + 48))(v3, 1, AssociatedTypeWitness);
  v6 = v0[9];
  v7 = v0[6];
  if (v5)
  {
    (*(*(v7 - 8) + 56))(v0[9], 1, 1, v0[6]);
LABEL_5:
    (*(v0[8] + 8))(v0[9], v0[7]);
LABEL_6:
    v9 = v0[5];
    v10 = v0[6];
    v12 = v0[3];
    v11 = v0[4];
    v13 = v0[2];
    v14 = swift_getAssociatedTypeWitness();
    v15 = sub_22FE43744();
    (*(*(v15 - 8) + 8))(v12, v15);
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
    (*(*(v10 - 8) + 56))(v13, 1, 1, v10);
    goto LABEL_7;
  }

  swift_getAssociatedConformanceWitness();
  sub_22FE437A4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    goto LABEL_5;
  }

  v19 = v0[6];
  v20 = v0[2];
  (*(v8 + 32))(v20, v0[9], v19);
  (*(v8 + 56))(v20, 0, 1, v19);
LABEL_7:
  v16 = v0[9];

  v17 = v0[1];

  return v17();
}

uint64_t sub_22FD84EDC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FD842A0;

  return AsyncSyncSequence.Iterator.next()(a1, a2);
}

uint64_t AsyncSyncSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v14 = &v16 - v13;
  (*(v5 + 16))(v9, v2, v4);
  sub_22FE43184();
  return AsyncSyncSequence.Iterator.init(_:)(v14, a2);
}

uint64_t sub_22FD85120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AsyncSyncSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_22FD85180(uint64_t a1)
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

uint64_t sub_22FD851F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_22FD85330(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_22FD85550(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  result = sub_22FE43744();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FD855DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v10)
  {
    ++v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v11)
  {
    v13 = 8 * v12;
    if (v12 > 3)
    {
      goto LABEL_8;
    }

    v15 = ((a2 - v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v15))
    {
      v14 = *(a1 + v12);
      if (v14)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v15 <= 0xFF)
      {
        if (v15 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v14 = *(a1 + v12);
        if (!*(a1 + v12))
        {
          goto LABEL_26;
        }

LABEL_15:
        v16 = (v14 - 1) << v13;
        if (v12 > 3)
        {
          v16 = 0;
        }

        if (v12)
        {
          if (v12 > 3)
          {
            LODWORD(v12) = 4;
          }

          if (v12 > 2)
          {
            if (v12 == 3)
            {
              LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v12) = *a1;
            }
          }

          else if (v12 == 1)
          {
            LODWORD(v12) = *a1;
          }

          else
          {
            LODWORD(v12) = *a1;
          }
        }

        return v11 + (v12 | v16) + 1;
      }

      v14 = *(a1 + v12);
      if (*(a1 + v12))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v10 < 2)
  {
    return 0;
  }

  v18 = (*(v9 + 48))(a1);
  if (v18 >= 2)
  {
    return v18 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_22FD8577C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = 0;
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (v11)
  {
    v13 = *(v10 + 64);
  }

  else
  {
    v12 = 0;
    v13 = *(v10 + 64) + 1;
  }

  if (a3 <= v12)
  {
    goto LABEL_15;
  }

  if (v13 <= 3)
  {
    v14 = ((a3 - v12 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
    if (HIWORD(v14))
    {
      v9 = 4;
      if (v12 >= a2)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 >= 2)
    {
      v9 = v15;
    }

    else
    {
      v9 = 0;
    }

LABEL_15:
    if (v12 >= a2)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v9 = 1;
  if (v12 >= a2)
  {
LABEL_25:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      *&a1[v13] = 0;
    }

    else if (v9)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    }

    if (!a2)
    {
      return;
    }

LABEL_32:
    if (v11 >= 2)
    {
      v19 = *(v10 + 56);

      v19(a1, a2 + 1);
    }

    return;
  }

LABEL_16:
  v16 = ~v12 + a2;
  if (v13 >= 4)
  {
    bzero(a1, v13);
    *a1 = v16;
    v17 = 1;
    if (v9 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v17 = (v16 >> (8 * v13)) + 1;
  if (!v13)
  {
LABEL_39:
    if (v9 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v18 = v16 & ~(-1 << (8 * v13));
  bzero(a1, v13);
  if (v13 == 3)
  {
    *a1 = v18;
    a1[2] = BYTE2(v18);
    goto LABEL_39;
  }

  if (v13 == 2)
  {
    *a1 = v18;
    if (v9 > 1)
    {
LABEL_43:
      if (v9 == 2)
      {
        *&a1[v13] = v17;
      }

      else
      {
        *&a1[v13] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v9 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v9)
  {
    a1[v13] = v17;
  }
}

void *AsyncThrowingChannel.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 96);
  v0[2] = sub_22FD89CCC();
  v0[3] = v4;
  return v0;
}

void *AsyncThrowingChannel.init()()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 96);
  v0[2] = sub_22FD89CCC();
  v0[3] = v4;
  return v0;
}

uint64_t AsyncThrowingChannel.send(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_22FD85B04);
}

uint64_t sub_22FD85B04()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = v2[10];
  v7 = v2[11];
  v8 = v2[12];
  *v5 = v0;
  v5[1] = sub_22FD83E40;
  v9 = v0[2];

  return sub_22FD89DB4(v9, v4, v3, v6, v7, v8);
}

void AsyncThrowingChannel.fail<>(_:)(void *a1)
{
  v3 = *v1;
  v4 = v1[2];
  v5 = v1[3];
  v7 = a1;
  v6 = a1;
  sub_22FD8A30C(&v7, v4, v5, *(v3 + 80), *(v3 + 88), MEMORY[0x277D84950]);
}

Swift::Void __swiftcall AsyncThrowingChannel.finish()()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = sub_22FE43744();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v11 - v7;
  v9 = v0[2];
  v10 = v0[3];
  (*(*(v2 - 8) + 56))(&v11 - v7, 1, 1, v2, v6);
  sub_22FD8A30C(v8, v9, v10, *(v1 + 80), v2, *(v1 + 96));
  (*(v4 + 8))(v8, v3);
}

uint64_t AsyncThrowingChannel.makeAsyncIterator()@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t AsyncThrowingChannel.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22FD85E00);
}

uint64_t sub_22FD85E00()
{
  v2 = v0[3];
  v1 = v0[4];
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  *v5 = v0;
  v5[1] = sub_22FD83E40;
  v9 = v0[2];

  return sub_22FD8A778(v9, v4, v3, v6, v7, v8);
}

uint64_t sub_22FD85EB4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FD73F54;

  return AsyncThrowingChannel.Iterator.next()(a1, a2);
}

uint64_t sub_22FD85F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x277D856F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_22FD86030;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_22FD86030()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t AsyncThrowingChannel.deinit()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  return v0;
}

uint64_t AsyncThrowingChannel.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_22FD861E0@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  AsyncThrowingChannel.makeAsyncIterator()(a1);
}

uint64_t sub_22FD862A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22FD86320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_22FE43744();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v11 - v8;
  (*(*(a2 - 8) + 56))(&v11 - v8, 1, 1, a2);
  return sub_22FD863FC(a1, 0, v9, a3);
}

uint64_t sub_22FD863FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for ChannelStateMachine.SuspendedProducer() + 48);
  v7 = sub_22FE43744();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_22FD86494()
{
  sub_22FE43DB4();
  MEMORY[0x23190B9F0](*v0);
  return sub_22FE43E04();
}

uint64_t sub_22FD864E0()
{
  sub_22FE43DB4();
  sub_22FD862F4();
  return sub_22FE43E04();
}

BOOL sub_22FD86524(void *a1, void *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_22FD75038(a1, a2);
}

uint64_t sub_22FD86568(uint64_t a1)
{
  sub_22FE43DB4();
  MEMORY[0x23190B9F0](a1);
  return sub_22FE43E04();
}

uint64_t sub_22FD865B0(void *a1)
{
  v2 = v1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  return sub_22FD86568(*v1);
}

uint64_t sub_22FD865C4(uint64_t a1, void *a2)
{
  v3 = v2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  return sub_22FD86534(a1, *v2);
}

uint64_t sub_22FD865D8(uint64_t a1, void *a2)
{
  sub_22FE43DB4();
  v4 = v2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  sub_22FD86534(v9, *v2);
  return sub_22FE43E04();
}

BOOL sub_22FD86624(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v4 = a3[2];
  v5 = a3[3];
  v6 = a3[4];
  return sub_22FD8655C(*a1, a1[1], *a2);
}

uint64_t sub_22FD86644(void *a1)
{
  v2 = *(v1 + 32);
  if (v2 < 0)
  {
    return 0;
  }

  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 40);
  v13 = *(v1 + 32);
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  type metadata accessor for ChannelStateMachine.SuspendedConsumer();
  sub_22FE439D4();

  swift_getWitnessTable();
  if (sub_22FE43644())
  {

    return 1;
  }

  else
  {
    sub_22FD88228(v3, v4, v5, v6, v2);
    swift_getWitnessTable();
    sub_22FE42914();
    sub_22FE428D4();
    result = v12;
    *v1 = v3;
    *(v1 + 8) = v4;
    *(v1 + 16) = v5;
    *(v1 + 24) = v6;
    *(v1 + 32) = v2;
    *(v1 + 40) = v7;
  }

  return result;
}

uint64_t sub_22FD867D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v49 = a2;
  v50 = a1;
  v8 = a4[2];
  v7 = a4[3];
  v51 = a4[4];
  v52 = v7;
  v9 = type metadata accessor for ChannelStateMachine.SuspendedProducer();
  v10 = sub_22FE43744();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - v13;
  v15 = sub_22FE43744();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v42 - v18;
  v20 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v23 = &v42 - v22;
  v24 = v5[4];
  if (v24 < 0)
  {
    return 1;
  }

  v45 = v11;
  v46 = v10;
  v26 = *v5;
  v25 = v5[1];
  v47 = v5[5];
  v48 = v21;
  v27 = v5[2];
  v28 = v5[3];
  v43 = v25;
  v44 = v26;
  v58 = v26;
  v59 = v25;
  v56 = v24;
  v57 = v27;
  v55 = v28;
  v29 = *(v8 - 8);
  (*(v29 + 16))(v19, v49, v8);
  (*(v29 + 56))(v19, 0, 1, v8);
  sub_22FD863FC(a3, v50, v19, v23);
  swift_getWitnessTable();
  sub_22FE43554();
  sub_22FE43524();
  v30 = v48;
  if ((*(v48 + 48))(v14, 1, v9) == 1)
  {
    v50 = v28;
    (*(v45 + 8))(v14, v46);
    v53 = v24;
    type metadata accessor for ChannelStateMachine.SuspendedConsumer();
    sub_22FE439D4();
    swift_getWitnessTable();
    if (sub_22FE43644())
    {
      sub_22FE42914();
      sub_22FE42904();
      (*(v48 + 8))(v23, v9);
      v31 = v59;
      v32 = v57;
      *v5 = v58;
      v5[1] = v31;
      v33 = v50;
      v5[2] = v32;
      v5[3] = v33;
      v34 = v47;
      v5[4] = v24;
      v5[5] = v34;
      return 2;
    }

    else
    {
      swift_getWitnessTable();
      sub_22FE42914();
      sub_22FE428D4();
      (*(v48 + 8))(v23, v9);
      result = v54;
      v39 = v55;
      v41 = v56;
      v40 = v57;
      *v5 = v44;
      v5[1] = v43;
      v5[2] = v40;
      v5[3] = v39;
      v5[4] = v41;
      v5[5] = v47;
    }
  }

  else
  {
    (*(v30 + 8))(v23, v9);
    (*(v45 + 8))(v14, v46);
    v36 = v57;
    v37 = v43;
    *v5 = v44;
    v5[1] = v37;
    v5[2] = v36;
    v5[3] = v28;
    v38 = v47;
    v5[4] = v24;
    v5[5] = v38;
    return 1;
  }

  return result;
}

uint64_t sub_22FD86C28(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = type metadata accessor for ChannelStateMachine.SuspendedProducer();
  v9 = sub_22FE43744();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v51 - v13;
  v15 = *(*(v8 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v17 = MEMORY[0x28223BE20](v16);
  v18 = MEMORY[0x28223BE20](v17);
  v25 = &v51 - v21;
  v63 = *(v3 + 32);
  if (v63 < 0)
  {
    return 1;
  }

  v52 = v20;
  v53 = v19;
  v54 = v23;
  v55 = v22;
  v56 = v18;
  v26 = a1;
  v28 = *v3;
  v27 = *(v3 + 8);
  v59 = v24;
  v29 = *(v3 + 16);
  v30 = *(v3 + 24);
  v31 = v5;
  v32 = *(v3 + 40);
  v65 = v28;
  v66 = v27;
  v64 = v29;
  sub_22FD86320(v26, v31, &v51 - v21);
  v61 = v30;

  v62 = v32;

  v57 = v28;

  v58 = v27;

  v60 = v29;
  v33 = v59;

  swift_getWitnessTable();
  sub_22FE42914();
  sub_22FE428F4();
  if ((*(v33 + 48))(v14, 1, v8) == 1)
  {
    v55 = *(v55 + 8);
    v34 = v14;
    v35 = v56;
    (v55)(v34, v56);
    (*(v33 + 16))(v53, v25, v8);
    sub_22FE43554();
    v36 = v54;
    sub_22FE43534();
    (v55)(v36, v35);
    (*(v33 + 8))(v25, v8);
    v37 = v61;
    v38 = v62;
    v39 = v63;
    sub_22FD88228(v57, v58, v60, v61, v63);
    v40 = v66;
    v41 = v64;
    *v3 = v65;
    *(v3 + 8) = v40;
    *(v3 + 16) = v41;
    *(v3 + 24) = v37;
    *(v3 + 32) = v39;
    *(v3 + 40) = v38;
    return 1;
  }

  v43 = *(v33 + 8);
  v43(v25, v8);
  v44 = v52;
  (*(v33 + 32))(v52, v14, v8);
  v46 = v60;
  v45 = v61;
  v47 = v62;
  v48 = v63;
  sub_22FD88228(v57, v58, v60, v61, v63);
  v49 = v66;
  *v3 = v65;
  *(v3 + 8) = v49;
  *(v3 + 16) = v46;
  *(v3 + 24) = v45;
  *(v3 + 32) = v48;
  *(v3 + 40) = v47;
  v50 = *(v44 + 8);
  v43(v44, v8);
  return v50;
}

uint64_t sub_22FD87034(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = sub_22FE43744();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v43 - v10;
  v12 = *(v5 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  if ((v2[4] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v47 = v2[4];
  v18 = v2[5];
  v19 = v2[2];
  v20 = v2[3];
  v45 = &v43 - v17;
  v46 = v20;
  v21 = *v2;
  v48 = v2[1];
  v49 = v21;

  (*(v7 + 16))(v11, a1, v6);
  if ((*(v12 + 48))(v11, 1, v5) == 1)
  {
    v22 = (*(v7 + 8))(v11, v6);
    *v2 = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 2) = xmmword_22FE49940;
    v23 = a2[2];
    v24 = a2[4];
  }

  else
  {
    v44 = v2;
    v26 = v45;
    v27 = v11;
    v28 = *(v12 + 32);
    v28(v45, v27, v5);
    v50 = v47;
    v23 = a2[2];
    v24 = a2[4];
    type metadata accessor for ChannelStateMachine.SuspendedConsumer();
    sub_22FE439D4();
    swift_getWitnessTable();
    if (sub_22FE43644())
    {
      (*(v12 + 16))(v16, v26, v5);
      v29 = sub_22FE43C64();
      v30 = v44;
      if (v29)
      {
        v31 = v29;
        v32 = *(v12 + 8);
        v32(v16, v5);
      }

      else
      {
        v31 = swift_allocError();
        v28(v33, v16, v5);
        v32 = *(v12 + 8);
      }

      v22 = (v32)(v45, v5);
      *v30 = v31;
      *(v30 + 1) = 0;
      *(v30 + 2) = 0;
      *(v30 + 3) = 0;
    }

    else
    {
      v22 = (*(v12 + 8))(v26, v5);
      v30 = v44;
      *v44 = 0u;
      v30[1] = 0u;
    }

    v30[2] = xmmword_22FE49940;
  }

  v50 = v49;
  v51 = v48;
  MEMORY[0x28223BE20](v22);
  *(&v43 - 4) = v23;
  *(&v43 - 3) = v5;
  *(&v43 - 2) = v24;
  type metadata accessor for ChannelStateMachine.SuspendedProducer();
  swift_getWitnessTable();
  v34 = sub_22FE42914();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2E00, &unk_22FE49950);
  WitnessTable = swift_getWitnessTable();
  v25 = sub_22FDA5834(sub_22FD797DC, (&v43 - 6), v34, v35, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v37);
  v45 = &v43;
  v50 = v46;
  v51 = v47;
  MEMORY[0x28223BE20](v25);
  *(&v43 - 4) = v23;
  *(&v43 - 3) = v5;
  *(&v43 - 2) = v24;
  type metadata accessor for ChannelStateMachine.SuspendedConsumer();
  swift_getWitnessTable();
  v38 = sub_22FE42914();
  sub_22FE43744();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  sub_22FE43434();
  v39 = sub_22FE43744();
  v40 = swift_getWitnessTable();
  sub_22FDA5834(sub_22FD797DC, (&v43 - 6), v38, v39, MEMORY[0x277D84A98], v40, MEMORY[0x277D84AC0], v41);

  return v25;
}

uint64_t sub_22FD87628@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = type metadata accessor for ChannelStateMachine.SuspendedProducer();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = *v2;
  v12 = *(v2 + 32);
  if (v12 < 0)
  {
    if (v11)
    {
      *v2 = 0u;
      *(v2 + 16) = 0u;
      *(v2 + 32) = xmmword_22FE49940;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
      sub_22FE43744();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
      sub_22FE43E14();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v20 = *(TupleTypeMetadata2 + 48);
      *a2 = 0;
      *&a2[v20] = v11;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
      sub_22FE43744();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
      sub_22FE43E14();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v29 = *(TupleTypeMetadata2 + 48);
      *a2 = 0;
      (*(*(v5 - 8) + 56))(&a2[v29], 1, 1, v5);
    }

    swift_storeEnumTagMultiPayload();
    v30 = *(*(TupleTypeMetadata2 - 8) + 56);

    return v30(a2, 0, 1, TupleTypeMetadata2);
  }

  else
  {
    v32 = v10;
    v33 = v5;
    v14 = *(v2 + 8);
    v13 = *(v2 + 16);
    v15 = *(v2 + 24);
    v16 = *(v2 + 40);
    v34 = a2;
    v35 = v14;
    sub_22FE439D4();

    swift_getWitnessTable();
    if (sub_22FE43644())
    {

      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
      sub_22FE43744();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
      sub_22FE43E14();
      v17 = swift_getTupleTypeMetadata2();
      return (*(*(v17 - 8) + 56))(v34, 1, 1, v17);
    }

    else
    {
      sub_22FD88228(v11, v14, v13, v15, v12);
      v35 = v11;
      v36 = v14;
      swift_getWitnessTable();
      sub_22FE42914();
      v21 = v32;
      sub_22FE428D4();
      v22 = v36;
      *v2 = v35;
      *(v2 + 8) = v22;
      *(v2 + 16) = v13;
      *(v2 + 24) = v15;
      *(v2 + 32) = v12;
      *(v2 + 40) = v16;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
      v23 = sub_22FE43744();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
      sub_22FE43E14();
      v24 = swift_getTupleTypeMetadata2();
      v25 = *(v24 + 48);
      v26 = v21;
      v27 = *(v21 + 1);
      v28 = v34;
      *v34 = v27;
      (*(*(v23 - 8) + 32))(&v28[v25], &v26[*(v7 + 48)], v23);
      swift_storeEnumTagMultiPayload();
      return (*(*(v24 - 8) + 56))(v28, 0, 1, v24);
    }
  }
}

uint64_t sub_22FD87B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v10 = a3[2];
  v9 = a3[3];
  v11 = a3[4];
  v12 = type metadata accessor for ChannelStateMachine.SuspendedProducer();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v43 - v15;
  v17 = *v5;
  v18 = v5[4];
  if (v18 < 0)
  {
    if (v17)
    {
      *v5 = 0u;
      *(v5 + 1) = 0u;
      *(v5 + 2) = xmmword_22FE49940;
      *a4 = v17;
    }

    else
    {
      (*(*(v10 - 8) + 56))(a4, 1, 1, v10);
    }

    SuspendedAction = type metadata accessor for ChannelStateMachine.NextSuspendedAction();
    swift_storeEnumTagMultiPayload();
    v42 = *(*(SuspendedAction - 8) + 56);

    return v42(a4, 0, 1, SuspendedAction);
  }

  else
  {
    v50 = a4;
    v51 = a2;
    v46 = v16;
    v47 = v14;
    v19 = v5[1];
    v48 = v5[2];
    v20 = v5[3];
    v21 = v5[5];
    v58 = v17;
    v59 = v19;
    v22 = v19;
    v56 = v20;
    v57 = v18;
    v55 = v21;
    v44 = a2;
    v45 = a1;
    v52 = a1;
    type metadata accessor for ChannelStateMachine.SuspendedConsumer();
    v49 = v11;
    swift_getWitnessTable();
    sub_22FE43554();
    sub_22FE43524();
    if (v54 == 1)
    {
      v43[0] = v20;
      v43[1] = v10;
      v43[2] = v9;
      v53 = v22;
      v23 = v47;
      sub_22FE439D4();
      swift_getWitnessTable();
      if (sub_22FE43644())
      {
        v53 = v44;
        v54 = v45;
        sub_22FE42914();
        sub_22FE42904();
        v24 = v56;
        v25 = v57;
        v26 = v55;
        *v5 = v17;
        v5[1] = v22;
        v5[2] = v48;
        v5[3] = v24;
        v5[4] = v25;
        v5[5] = v26;
        v27 = type metadata accessor for ChannelStateMachine.NextSuspendedAction();
        return (*(*(v27 - 8) + 56))(v50, 1, 1, v27);
      }

      swift_getWitnessTable();
      sub_22FE42914();
      v35 = v46;
      sub_22FE428D4();
      v36 = v59;
      v37 = v55;
      *v5 = v58;
      v5[1] = v36;
      v38 = v43[0];
      v5[2] = v48;
      v5[3] = v38;
      v5[4] = v18;
      v5[5] = v37;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
      v39 = sub_22FE43744();
      v40 = *(swift_getTupleTypeMetadata2() + 48);
      v41 = v50;
      *v50 = *(v35 + 1);
      (*(*(v39 - 8) + 32))(&v41[v40], &v35[*(v23 + 48)], v39);
      v32 = type metadata accessor for ChannelStateMachine.NextSuspendedAction();
      swift_storeEnumTagMultiPayload();
      v33 = *(*(v32 - 8) + 56);
      v34 = v41;
    }

    else
    {
      v30 = v55;
      *v5 = v17;
      v5[1] = v22;
      v5[2] = v48;
      v5[3] = v20;
      v5[4] = v18;
      v5[5] = v30;
      v31 = v50;
      (*(*(v10 - 8) + 56))(v50, 1, 1, v10);
      v32 = type metadata accessor for ChannelStateMachine.NextSuspendedAction();
      swift_storeEnumTagMultiPayload();
      v33 = *(*(v32 - 8) + 56);
      v34 = v31;
    }

    return v33(v34, 0, 1, v32);
  }
}

uint64_t sub_22FD88084(uint64_t a1, void *a2)
{
  v3 = v2[4];
  if (v3 < 0)
  {
    return 1;
  }

  v4 = v2;
  v6 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v8 = v4[3];
  v9 = v4[5];
  v11 = a2[2];
  v10 = a2[3];
  v12 = a2[4];
  type metadata accessor for ChannelStateMachine.SuspendedConsumer();

  swift_getWitnessTable();
  sub_22FE42914();
  sub_22FE428F4();
  if (v14 == 1)
  {
    sub_22FE43554();
    sub_22FE43534();
    sub_22FD88228(v6, v5, v7, v8, v3);
    *v4 = v6;
    v4[1] = v5;
    v4[2] = v7;
    v4[3] = v8;
    v4[4] = v3;
    v4[5] = v9;
    return 1;
  }

  sub_22FD88228(v6, v5, v7, v8, v3);
  result = v14;
  *v4 = v6;
  v4[1] = v5;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v3;
  v4[5] = v9;
  return result;
}

void sub_22FD88228(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_22FD882D0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ChannelStateMachine.SuspendedProducer();
  sub_22FE432D4();
  WitnessTable = swift_getWitnessTable();
  v4 = sub_22FE428E4();
  v6 = v5;
  v7 = sub_22FE432D4();
  if (sub_22FE43304())
  {
    v8 = sub_22FD88470(v7, v2, WitnessTable);
  }

  else
  {
    v8 = MEMORY[0x277D84FA0];
  }

  v9 = type metadata accessor for ChannelStateMachine.SuspendedConsumer();
  sub_22FE432D4();
  v10 = swift_getWitnessTable();
  v11 = sub_22FE428E4();
  v13 = v12;
  v14 = sub_22FE432D4();
  if (sub_22FE43304())
  {
    v15 = sub_22FD88470(v14, v9, v10);
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v8;
  a1[3] = v11;
  a1[4] = v13;
  a1[5] = v15;
  return result;
}

uint64_t sub_22FD88470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v53 = &v41 - v12;
  v42 = v13;
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  if (sub_22FE43304())
  {
    sub_22FE438C4();
    v16 = sub_22FE438B4();
  }

  else
  {
    v16 = MEMORY[0x277D84FA0];
  }

  v46 = sub_22FE43304();
  if (!v46)
  {
    return v16;
  }

  v17 = 0;
  v51 = (v6 + 16);
  v52 = v16 + 56;
  v48 = v6 + 32;
  v50 = (v6 + 8);
  v43 = v6;
  v44 = v5;
  v45 = v15;
  while (1)
  {
    v18 = sub_22FE432F4();
    sub_22FE432B4();
    if (v18)
    {
      v19 = *(v6 + 16);
      v19(v15, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17), a2);
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_22FE43924();
      if (v42 != 8)
      {
        goto LABEL_23;
      }

      v54 = result;
      v19 = *v51;
      (*v51)(v15, &v54, a2);
      swift_unknownObjectRelease();
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
LABEL_20:
        __break(1u);
        return v16;
      }
    }

    v49 = v21;
    v47 = *(v6 + 32);
    v47(v53, v15, a2);
    v22 = *(v16 + 40);
    v23 = sub_22FE42FD4();
    v24 = v16;
    v25 = -1 << *(v16 + 32);
    v26 = v23 & ~v25;
    v27 = v26 >> 6;
    v28 = *(v52 + 8 * (v26 >> 6));
    v29 = 1 << v26;
    v30 = *(v6 + 72);
    if (((1 << v26) & v28) != 0)
    {
      v31 = ~v25;
      do
      {
        v19(v10, (*(v24 + 48) + v30 * v26), a2);
        v32 = a3;
        v33 = *(a3 + 8);
        v34 = sub_22FE43024();
        v35 = *v50;
        (*v50)(v10, a2);
        if (v34)
        {
          v35(v53, a2);
          a3 = v32;
          v6 = v43;
          v5 = v44;
          v16 = v24;
          goto LABEL_7;
        }

        v26 = (v26 + 1) & v31;
        v27 = v26 >> 6;
        v28 = *(v52 + 8 * (v26 >> 6));
        v29 = 1 << v26;
        a3 = v32;
      }

      while (((1 << v26) & v28) != 0);
      v6 = v43;
      v5 = v44;
    }

    v36 = v53;
    *(v52 + 8 * v27) = v29 | v28;
    v37 = *(v24 + 48) + v30 * v26;
    v16 = v24;
    result = (v47)(v37, v36, a2);
    v39 = *(v24 + 16);
    v20 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v20)
    {
      break;
    }

    *(v24 + 16) = v40;
LABEL_7:
    v15 = v45;
    v17 = v49;
    if (v49 == v46)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_22FD88874()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_10PhotosFace19ChannelStateMachineV12FinishActionOyxq__G(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_22FD888E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_22FE43744();
  if (v2 <= 0x3F)
  {
    sub_22FD88D10();
    if (v3 <= 0x3F)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
      swift_getTupleTypeMetadata2();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_22FD889A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 84))
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v4 = *(v3 + 64) + 1;
  }

  v5 = ((*(v3 + 80) + 8) & ~*(v3 + 80)) + v4;
  if (v4 > v5)
  {
    v5 = v4;
  }

  v6 = 8;
  if (v5 > 8)
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_30;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v11 < 2)
    {
LABEL_30:
      v13 = *(a1 + v6);
      if (v13 >= 3)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_30;
  }

LABEL_19:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return (v7 | v12) + 254;
}

void sub_22FD88B08(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  v7 = ((*(v5 + 80) + 8) & ~*(v5 + 80)) + v6;
  if (v6 > v7)
  {
    v7 = v6;
  }

  if (v7 <= 8)
  {
    v7 = 8;
  }

  v8 = v7 + 1;
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 253) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v8 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v7 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_44:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_44;
          }
        }

LABEL_41:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_30:
      a1[v7] = -a2;
      return;
    }

LABEL_29:
    if (!a2)
    {
      return;
    }

    goto LABEL_30;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_29;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_30;
  }
}

void sub_22FD88D10()
{
  if (!qword_27DAE3A90)
  {
    v0 = sub_22FD88D58();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAE3A90);
    }
  }
}

unint64_t sub_22FD88D58()
{
  result = qword_27DAE3A98[0];
  if (!qword_27DAE3A98[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_27DAE3A98);
  }

  return result;
}

uint64_t sub_22FD88DD4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
  v2 = *(a1 + 16);
  sub_22FE43744();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  sub_22FE43E14();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return TupleTypeMetadata2;
}

uint64_t sub_22FD88E9C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 84))
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v4 = *(v3 + 64) + 1;
  }

  if (v4 <= 8)
  {
    v4 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FFFFFFE)
  {
    goto LABEL_28;
  }

  v5 = v4 + (((*(v3 + 80) & 0xF8) + 15) & ~(*(v3 + 80) & 0xF8) & 0x1F8) + 1;
  v6 = 8 * v5;
  if (v5 > 3)
  {
    goto LABEL_9;
  }

  v9 = (a2 - 2147483645 + ~(-1 << v6)) >> v6;
  if (v9 > 0xFFFE)
  {
    v7 = *(a1 + v5);
    if (v7)
    {
      goto LABEL_17;
    }

LABEL_28:
    v11 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v11) = -1;
    }

    if ((v11 + 1) < 2)
    {
      LODWORD(v11) = 0;
    }

    if (v11 >= 2)
    {
      return (v11 - 1);
    }

    else
    {
      return 0;
    }
  }

  if (v9 > 0xFE)
  {
    v7 = *(a1 + v5);
    if (*(a1 + v5))
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  if (!v9)
  {
    goto LABEL_28;
  }

LABEL_9:
  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_28;
  }

LABEL_17:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 2147483646;
}

void sub_22FD89024(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = ((*(v5 + 80) & 0xF8) + 15) & ~(*(v5 + 80) & 0xF8) & 0x1F8;
  if (!*(v5 + 84))
  {
    ++v6;
  }

  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = v6 + v7 + 1;
  if (a3 <= 0x7FFFFFFD)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = (a3 - 2147483645 + ~(-1 << (8 * v8))) >> (8 * v8);
    if (v12 > 0xFFFE)
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0xFF)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0x7FFFFFFD)
  {
    v10 = a2 - 2147483646;
    if (v8 >= 4)
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v8)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_41:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      *a1 = a2 + 1;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_26;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

void sub_22FD89254(uint64_t a1)
{
  sub_22FD897CC();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_22FE43744();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22FD892EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 16) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v6 > 0x7FFFFFFE)
      {
        v19 = (*(v4 + 48))((v17 + v8 + 8) & ~v8);
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *v17;
        if (v18 >= 0xFFFFFFFF)
        {
          LODWORD(v18) = -1;
        }

        if ((v18 + 1) >= 2)
        {
          return v18;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_22FD894BC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 16) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v9 > 0x7FFFFFFE)
  {
    v22 = ((v21 + v11 + 8) & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;

      v26((v21 + v11 + 8) & ~v11, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *v21 = 0;
    *v21 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *v21 = a2;
  }
}

void sub_22FD897CC()
{
  if (!qword_27DAE3C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE3C28, qword_22FE49AD8);
    v0 = sub_22FE43744();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAE3C20);
    }
  }
}

uint64_t sub_22FD89830()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22FD8986C(uint64_t a1, unsigned int a2)
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

uint64_t sub_22FD898C8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22FD89918()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22FD899C4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22FD89A00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 48))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (((*(a1 + 32) >> 50) >> 13) | (2 * ((*(a1 + 32) >> 50) & 0x1C00 | ((*(a1 + 32) & 7) << 7) | (*(a1 + 8) >> 57) & 0x78 | *(a1 + 8) & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22FD89A7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x3FFF;
    if (a3 >= 0x3FFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
      *(result + 40) = 0;
    }
  }

  return result;
}

uint64_t sub_22FD89B10(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32) & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *(result + 8) &= 0xFFFFFFFFFFFFFF8uLL;
  *(result + 32) = v2;
  return result;
}

uint64_t sub_22FD89B48()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22FD89B84(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_22FD89BD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_22FD89C28(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_22FD89C78()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22FD89CCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE3EB0, &unk_22FE4FB70);
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  sub_22FD882D0(&v4);
  v1 = type metadata accessor for ChannelStateMachine();
  v2 = sub_22FD8C8F8();
  (*(*(v1 - 8) + 8))(&v4, v1);
  return v2;
}

uint64_t sub_22FD89DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_22FE43744();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FD89E58);
}

uint64_t sub_22FD89E58()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = v1;
  v5[4] = v2;
  type metadata accessor for ChannelStateMachine();
  type metadata accessor for ChannelStateMachine.SendAction();
  sub_22FD8C780(sub_22FD8C4DC, v5, v4);

  v6 = v0[2];
  if (v6)
  {
    if (v6 == 1)
    {
      v8 = v0[7];
      v7 = v0[8];
      v10 = v0[5];
      v9 = v0[6];
      v11 = v0[3];
      v12 = v0[4];
      os_unfair_lock_lock((v10 + 24));
      v13 = *(v10 + 16);
      *(v10 + 16) = v13 + 1;
      os_unfair_lock_unlock((v10 + 24));
      v14 = swift_task_alloc();
      v0[12] = v14;
      v14[2] = v9;
      v14[3] = v8;
      v14[4] = v7;
      v14[5] = v12;
      v14[6] = v10;
      v14[7] = v11;
      v14[8] = v13;
      v15 = swift_task_alloc();
      v0[13] = v15;
      v15[2] = v9;
      v15[3] = v8;
      v15[4] = v7;
      v15[5] = v12;
      v15[6] = v10;
      v15[7] = v13;
      v16 = *(MEMORY[0x277D85A10] + 4);
      v17 = swift_task_alloc();
      v0[14] = v17;
      *v17 = v0;
      v17[1] = sub_22FD8A168;

      return MEMORY[0x282200830](v17, &unk_22FE49E60);
    }

    v19 = v0[10];
    v18 = v0[11];
    v20 = v0[9];
    v21 = v0[6];
    v22 = *(v21 - 8);
    (*(v22 + 16))(v18, v0[3], v21);
    (*(v22 + 56))(v18, 0, 1, v21);
    (*(v19 + 32))(*(*(v6 + 64) + 40), v18, v20);
    swift_continuation_throwingResume();
  }

  v23 = v0[11];

  v24 = v0[1];

  return v24();
}

void sub_22FD8A168()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 96);
    v5 = *(v2 + 104);

    MEMORY[0x2822009F8](sub_22FD8A2AC);
  }
}

uint64_t sub_22FD8A2AC()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

void sub_22FD8A30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_22FE43744();
  v30 = *(v11 - 8);
  v12 = *(v30 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v28 - v14;
  v16 = *(a5 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = a1;
  type metadata accessor for ChannelStateMachine();
  type metadata accessor for ChannelStateMachine.FinishAction();
  sub_22FD8C780(sub_22FD8C404, v31, a2);
  if (v36)
  {
    v28[0] = v19;
    v28[1] = 0;
    v20 = *(v36 + 16);
    v29 = v36;
    if (v20)
    {
      v21 = (v36 + 32);
      v22 = v37;

      do
      {
        if (*v21++)
        {
          swift_continuation_throwingResume();
        }

        --v20;
      }

      while (v20);
    }

    else
    {
      v22 = v37;
    }

    v24 = v30;
    (*(v30 + 16))(v15, a1, v11);
    if ((*(v16 + 48))(v15, 1, a5) == 1)
    {
      v25 = (*(v24 + 8))(v15, v11);
      v36 = v22;
      MEMORY[0x28223BE20](v25);
      v28[-4] = a4;
      v28[-3] = a5;
      v28[-2] = a6;
      sub_22FE43744();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
      sub_22FE43434();
      sub_22FE43744();
      sub_22FE43354();
      swift_getWitnessTable();
      sub_22FE43224();
      sub_22FD8C47C(v29);
    }

    else
    {
      v26 = v28[0];
      v27 = (*(v16 + 32))(v28[0], v15, a5);
      v36 = v22;
      MEMORY[0x28223BE20](v27);
      v28[-4] = a4;
      v28[-3] = a5;
      v28[-2] = a6;
      v28[-1] = v26;
      sub_22FE43744();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
      sub_22FE43434();
      sub_22FE43744();
      sub_22FE43354();
      swift_getWitnessTable();
      sub_22FE43224();
      sub_22FD8C47C(v29);

      (*(v16 + 8))(v26, a5);
    }
  }
}

uint64_t sub_22FD8A778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = sub_22FE43744();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v7 = sub_22FE43E14();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();
  Action = type metadata accessor for ChannelStateMachine.NextAction();
  v6[12] = Action;
  v11 = *(Action - 8);
  v6[13] = v11;
  v12 = *(v11 + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FD8A900);
}

uint64_t sub_22FD8A900()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v38 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  v8 = v0[3];
  v9 = swift_task_alloc();
  v9[2] = v7;
  v9[3] = v6;
  v9[4] = v5;
  type metadata accessor for ChannelStateMachine();
  sub_22FD8C780(sub_22FD8B6EC, v9, v8);

  (*(v3 + 16))(v1, v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v1, 1, TupleTypeMetadata2) == 1)
  {
    v12 = v0[6];
    v11 = v0[7];
    v14 = v0[4];
    v13 = v0[5];
    v15 = v0[3];
    os_unfair_lock_lock((v14 + 24));
    v16 = *(v14 + 16);
    *(v14 + 16) = v16 + 1;
    os_unfair_lock_unlock((v14 + 24));
    v17 = swift_task_alloc();
    v0[16] = v17;
    v17[2] = v13;
    v17[3] = v12;
    v17[4] = v11;
    v17[5] = v15;
    v17[6] = v14;
    v17[7] = v16;
    v18 = swift_task_alloc();
    v0[17] = v18;
    v18[2] = v13;
    v18[3] = v12;
    v18[4] = v11;
    v18[5] = v15;
    v18[6] = v14;
    v18[7] = v16;
    v19 = *(MEMORY[0x277D85A10] + 4);
    v20 = swift_task_alloc();
    v0[18] = v20;
    *v20 = v0;
    v20[1] = sub_22FD8AC6C;
    v21 = v0[8];
    v22 = v0[2];

    return MEMORY[0x282200830](v22, &unk_22FE49E40);
  }

  else
  {
    v23 = v0[14];
    v24 = *v23;
    (*(v0[10] + 32))(v0[11], &v23[*(TupleTypeMetadata2 + 48)], v0[9]);
    if (v24)
    {
      swift_continuation_throwingResume();
    }

    v25 = v0[15];
    v26 = v0[12];
    v27 = v0[13];
    v29 = v0[10];
    v28 = v0[11];
    v30 = v0[9];
    v31 = v0[2];
    WitnessTable = swift_getWitnessTable();
    sub_22FD8C9F4(v30, WitnessTable);
    (*(v29 + 8))(v28, v30);
    (*(v27 + 8))(v25, v26);
    v34 = v0[14];
    v33 = v0[15];
    v35 = v0[11];

    v36 = v0[1];

    return v36();
  }
}

uint64_t sub_22FD8AC6C()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v5 = sub_22FD8AE50;
  }

  else
  {
    v5 = sub_22FD8ADC0;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_22FD8ADC0()
{
  (*(v0[13] + 8))(v0[15], v0[12]);
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FD8AE50()
{
  (*(v0[13] + 8))(v0[15], v0[12]);
  v1 = v0[19];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_22FD8AEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[11] = a3;
  v8[12] = a4;
  v8[10] = a2;
  return MEMORY[0x2822009F8](sub_22FD8AF14);
}

uint64_t sub_22FD8AF14()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  v0[2] = v0;
  v0[3] = sub_22FD8AFE8;
  v8 = swift_continuation_init();
  sub_22FD8B0C4(v8, v7, v6, v5, v4, v3, v2, v1);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22FD8AFE8()
{
  v3 = *v0;
  v1 = *(*v0 + 8);

  return v1();
}

void sub_22FD8B0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = sub_22FE43744();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v22[-v18];
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a1;
  v27 = a4;
  v28 = a5;
  type metadata accessor for ChannelStateMachine();
  type metadata accessor for ChannelStateMachine.SendSuspendedAction();
  sub_22FE43744();
  sub_22FD8C780(sub_22FD8C6CC, v22, a2);
  v20 = v29;
  if (v29 != 2)
  {
    if (v29 != 1)
    {
      swift_continuation_throwingResume();
      if (!v20)
      {
        return;
      }

      v21 = *(a6 - 8);
      (*(v21 + 16))(v19, a4, a6);
      (*(v21 + 56))(v19, 0, 1, a6);
      (*(v16 + 32))(*(*(v20 + 64) + 40), v19, v15);
    }

    swift_continuation_throwingResume();
  }
}

uint64_t sub_22FD8B2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a3;
  type metadata accessor for ChannelStateMachine();
  type metadata accessor for ChannelStateMachine.SendCancelledAction();
  sub_22FD8C780(sub_22FD8C638, v8, a1);
  result = v9;
  if (v9 >= 2)
  {
    return swift_continuation_throwingResume();
  }

  return result;
}

uint64_t *sub_22FD8B3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *result;
  if (*result)
  {
    (*(v5 + 16))(v9);
    v11 = sub_22FE43C64();
    if (v11)
    {
      v12 = v11;
      (*(v5 + 8))(v9, a4);
    }

    else
    {
      v12 = swift_allocError();
      (*(v5 + 32))(v13, v9, a4);
    }

    v17 = v12;
    v14 = sub_22FE43744();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
    return sub_22FD8B52C(&v17, v10, v14, v15);
  }

  return result;
}

uint64_t sub_22FD8B52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v6, a1, a4);

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_22FD8B5C0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_22FE43744();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v11 - v8;
  v10 = *a1;
  if (v10)
  {
    (*(*(a2 - 8) + 56))(v9, 1, 1, a2);
    (*(v5 + 32))(*(*(v10 + 64) + 40), v9, v4);
    return swift_continuation_throwingResume();
  }

  return result;
}

uint64_t sub_22FD8B6EC@<X0>(char *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = type metadata accessor for ChannelStateMachine();
  return sub_22FD87628(v6, a1);
}

uint64_t sub_22FD8B73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_22FD8B768);
}

uint64_t sub_22FD8B768()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = *(v0 + 48);
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  *(v3 + 56) = v2;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  sub_22FE43744();
  *v5 = v0;
  v5[1] = sub_22FD8B880;
  v6 = *(v0 + 16);

  return sub_22FD8BF5C(v6, 0, 0, sub_22FD8C38C, v3);
}

uint64_t sub_22FD8B880()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FD8B9BC);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_22FD8B9BC()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_22FD8BA20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FD73F54;

  return sub_22FD8B73C(a1, v7, v9, v8, v4, v5, v6);
}

uint64_t sub_22FD8BAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = a2;
  v48 = sub_22FE43744();
  v46 = *(v48 - 8);
  v12 = *(v46 + 64);
  v13 = MEMORY[0x28223BE20](v48);
  v44 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v43 = &v42 - v16;
  MEMORY[0x28223BE20](v15);
  v45 = &v42 - v17;
  SuspendedAction = type metadata accessor for ChannelStateMachine.NextSuspendedAction();
  v19 = sub_22FE43744();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = (&v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v26 = &v42 - v25;
  v51 = a5;
  v52 = a6;
  v53 = a7;
  v54 = a1;
  v47 = a1;
  v55 = a4;
  type metadata accessor for ChannelStateMachine();
  sub_22FD8C780(sub_22FD8C39C, v50, v49);
  (*(v20 + 16))(v24, v26, v19);
  if ((*(*(SuspendedAction - 8) + 48))(v24, 1, SuspendedAction) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v28 = v48;
      if (EnumCaseMultiPayload == 1)
      {
        v56 = *v24;
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
        sub_22FD8B52C(&v56, v47, v28, v29);
      }

      else
      {
        v35 = *v24;
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v37 = *(v46 + 32);
        v38 = v44;
        v37(v44, v24 + *(TupleTypeMetadata2 + 48), v28);
        if (v35)
        {
          swift_continuation_throwingResume();
        }

        v40 = v45;
        v39 = v46;
        (*(v46 + 16))(v45, v38, v28);
        v37(*(*(v47 + 64) + 40), v40, v28);
        swift_continuation_throwingResume();
        (*(v39 + 8))(v38, v28);
      }
    }

    else
    {
      v31 = v45;
      v30 = v46;
      v32 = *(v46 + 32);
      v33 = v48;
      v32(v45, v24, v48);
      v34 = v43;
      (*(v30 + 16))(v43, v31, v33);
      v32(*(*(v47 + 64) + 40), v34, v33);
      swift_continuation_throwingResume();
      (*(v30 + 8))(v31, v33);
    }
  }

  return (*(v20 + 8))(v26, v19);
}

uint64_t sub_22FD8BF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    sub_22FE43374();
  }

  return MEMORY[0x2822009F8](sub_22FD8BFF0);
}

uint64_t sub_22FD8BFF0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_22FD8C098;
  v4 = swift_continuation_init();
  v2(v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22FD8C098()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
  }

  v3 = *(v1 + 8);

  return v3();
}

void sub_22FD8C1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_22FE43744();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v17[-v14];
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a3;
  type metadata accessor for ChannelStateMachine();
  type metadata accessor for ChannelStateMachine.NextCancelledAction();
  sub_22FD8C780(sub_22FD8C360, v17, a1);
  v16 = v22;
  if (v22 >= 2)
  {
    (*(*(a4 - 8) + 56))(v15, 1, 1, a4);
    (*(v12 + 32))(*(*(v16 + 64) + 40), v15, v11);
    swift_continuation_throwingResume();
  }
}

uint64_t sub_22FD8C39C@<X0>(char *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = type metadata accessor for ChannelStateMachine();
  return sub_22FD87B74(v6, v7, v8, a1);
}

uint64_t sub_22FD8C404@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = type metadata accessor for ChannelStateMachine();
  result = sub_22FD87034(v6, v7);
  *a1 = result;
  a1[1] = v9;
  return result;
}

uint64_t sub_22FD8C45C(uint64_t *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_22FD8B5C0(a1, v1[2]);
}

uint64_t sub_22FD8C47C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22FD8C4DC@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = type metadata accessor for ChannelStateMachine();
  result = sub_22FD86644(v6);
  *a1 = result;
  return result;
}

uint64_t sub_22FD8C52C(uint64_t a1)
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
  v11[1] = sub_22FD8C738;

  return sub_22FD8AEE8(a1, v7, v8, v9, v10, v4, v5, v6);
}

uint64_t sub_22FD8C664@<X0>(uint64_t (*a1)(uint64_t, uint64_t)@<X1>, uint64_t *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = type metadata accessor for ChannelStateMachine();
  result = a1(v8, v9);
  *a2 = result;
  return result;
}

uint64_t sub_22FD8C6CC@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  v7 = v1[7];
  v9 = type metadata accessor for ChannelStateMachine();
  result = sub_22FD867D4(v6, v8, v7, v9);
  *a1 = result;
  return result;
}

void sub_22FD8C780(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t sub_22FD8C838()
{
  v0 = *MEMORY[0x23190B580]();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22FD8C8A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22FD8C95C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x277D841D0]) - 8) + 16))(a2, v3);
}

uint64_t sub_22FD8CA1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[3];
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v21 - v12;
  v14 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  (*(v16 + 16))(&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_22FD8CC28(a1, v13, a2);
  if (v2)
  {
    v18 = *(v6 + 32);
    v18(v10, v13, v5);
    v19 = a1[4];
    if (sub_22FE43C64())
    {
      return (*(v6 + 8))(v10, v5);
    }

    else
    {
      swift_allocError();
      return (v18)(v20, v10, v5);
    }
  }

  return result;
}

uint64_t sub_22FD8CC28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  v7 = a1[4];
  return swift_willThrowTypedImpl();
}

uint64_t sub_22FD8CCF8(uint64_t a1)
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

uint64_t AlbumDatabase.__allocating_init(database:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t AlbumDatabase.insert(id:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FD8CE20);
}

uint64_t sub_22FD8CE20()
{
  v1 = v0[2];
  v0[4] = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD8CE9C);
}

uint64_t sub_22FD8CE9C()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_22FD914F4(1, sub_22FD8D134);
  v0[6] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FD8CF4C(uint64_t *a1, uint64_t a2)
{
  v15 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4188, &qword_22FE4A188);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FE49F60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v4 = *(type metadata accessor for DatabaseBinding() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22FE49F70;
  v8 = v7 + v6;
  v9 = sub_22FE428C4();
  (*(*(v9 - 8) + 16))(v8, a2, v9);
  swift_storeEnumTagMultiPayload();
  v10 = (v8 + v5);
  v11 = (a2 + *(type metadata accessor for AlbumID() + 20));
  v12 = v11[1];
  *v10 = *v11;
  v10[1] = v12;
  swift_storeEnumTagMultiPayload();
  *(inited + 32) = v7;

  v13._object = 0x800000022FE45460;
  v13._countAndFlagsBits = 0xD00000000000005ELL;
  DatabaseConnection.insert(sql:bindings:)(v13, inited);
  swift_setDeallocating();
  return sub_22FD93E6C(inited + 32, &qword_27DAE4190, &qword_22FE4A190);
}

uint64_t AlbumDatabase.queryList()()
{
  v10 = *MEMORY[0x277D85DE8];
  v1[2] = v0;
  v2 = sub_22FE428C4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for AlbumID();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22FD8D2A4);
}

uint64_t sub_22FD8D2A4()
{
  v3 = *MEMORY[0x277D85DE8];
  *(v0 + 80) = *(*(v0 + 16) + 16);
  v1 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22FD8D338);
}

uint64_t sub_22FD8D338()
{
  v95 = v0;
  v94 = *MEMORY[0x277D85DE8];
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v3 = *(v1 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection);
  if (!v3)
  {
    sub_22FD9E790();
    v3 = *(v1 + v2);
    if (!v3)
    {
      sub_22FD91684();
      swift_allocError();
      *v58 = 0;
      goto LABEL_49;
    }
  }

  *__dst = v3;
  v4._countAndFlagsBits = 0x6E69676562;
  v4._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v4);
  v6 = v5;
  if (v5)
  {
LABEL_47:
    *__dst = v3;
    v73._countAndFlagsBits = 0x6B6361626C6C6F72;
    v73._object = 0xE800000000000000;
    DatabaseConnection.execute(sql:)(v73);
    if (v74)
    {

LABEL_50:
      v76 = v0[8];
      v75 = v0[9];
      v77 = v0[5];

      v78 = v0[1];
      v79 = *MEMORY[0x277D85DE8];

      return v78();
    }

LABEL_49:
    swift_willThrow();
    goto LABEL_50;
  }

  *__dst = v3;
  v7 = sub_22FDB08B0();
  sub_22FDB31B8(MEMORY[0x277D84F90], v7);
  v89 = v0[6];
  v90 = v0[7];
  v8 = v0[4];
  sub_22FDB33A0(v7);
  v9 = MEMORY[0x277D84F90];
  v88 = (v8 + 32);
  while (1)
  {
    v10 = sqlite3_step(v7);
    if (v10 != 100)
    {
      break;
    }

    if (sqlite3_column_type(v7, 0) == 5 || (v11 = sqlite3_column_blob(v7, 0)) == 0)
    {
      sub_22FD9172C();
      v6 = swift_allocError();
      *v61 = 0;
      *(v61 + 4) = 0;
      swift_willThrow();
      goto LABEL_45;
    }

    v12 = v11;
    v13 = sqlite3_column_bytes(v7, 0);
    if (!v13)
    {
      v18 = 0;
      v19 = 0xC000000000000000;
      goto LABEL_44;
    }

    v91 = v9;
    v14 = v13;
    if (v13 < 15)
    {
      memset(__dst, 0, sizeof(__dst));
      v93 = v13;
      memcpy(__dst, v12, v13);
      v18 = *__dst;
      v14 = v93;
      v19 = v87 & 0xF00000000000000 | *&__dst[8] | (*&__dst[12] << 32) | (v93 << 48);
      v87 = v19;
    }

    else
    {
      v15 = sub_22FE42694();
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      if (v14 == 0x7FFFFFFF)
      {
        v71 = sub_22FE42644();
        sub_22FE427A4();
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_22FE49F80;
        v19 = v71 | 0x8000000000000000;
LABEL_44:
        sub_22FD91780();
        v6 = swift_allocError();
        *v72 = 1;
        swift_willThrow();
        sub_22FD917D4(v18, v19);
LABEL_45:

LABEL_46:
        sub_22FDB35E0(v7);
        goto LABEL_47;
      }

      v18 = v14 << 32;
      v19 = sub_22FE42644() | 0x4000000000000000;
    }

    if (v14 != 16)
    {
      goto LABEL_44;
    }

    v20 = v19 >> 62;
    if ((v19 >> 62) <= 1)
    {
      if (!v20)
      {
        goto LABEL_26;
      }

      if (v18 > v18 >> 32)
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
      }

      v26 = sub_22FE42654();
      if (!v26)
      {
        goto LABEL_63;
      }

      v27 = v26;
      v28 = sub_22FE42684();
      if (__OFSUB__(v18, v28))
      {
        goto LABEL_60;
      }

      v25 = (v18 - v28 + v27);
      result = sub_22FE42674();
      if (!v25)
      {
        goto LABEL_64;
      }

      goto LABEL_25;
    }

    if (v20 == 2)
    {
      v21 = *(v18 + 16);
      v22 = sub_22FE42654();
      if (!v22)
      {
        sub_22FE42674();
LABEL_62:
        __break(1u);
LABEL_63:
        result = sub_22FE42674();
        __break(1u);
LABEL_64:
        __break(1u);
        return result;
      }

      v23 = v22;
      v24 = sub_22FE42684();
      if (__OFSUB__(v21, v24))
      {
        goto LABEL_59;
      }

      v25 = (v21 - v24 + v23);
      sub_22FE42674();
      if (!v25)
      {
        goto LABEL_62;
      }

LABEL_25:
      v30 = *v25;
      v31 = v25[1];
      v32 = v25[2];
      v33 = v25[3];
      v34 = v25[4];
      v35 = v25[5];
      v36 = v25[6];
      v37 = v25[7];
      v38 = v25[8];
      v39 = v25[9];
      v40 = v25[10];
      v41 = v25[11];
      v42 = v25[12];
      v43 = v25[13];
      v44 = v25[14];
      v45 = v25[15];
    }

LABEL_26:
    v46 = v0[5];
    sub_22FE42894();
    sub_22FD917D4(v18, v19);
    if (sqlite3_column_type(v7, 1) == 5 || !sqlite3_column_text(v7, 1))
    {
      v63 = v0[4];
      v62 = v0[5];
      v64 = v0[3];
      sub_22FD9172C();
      v6 = swift_allocError();
      *v65 = 1;
      *(v65 + 4) = 0;
      swift_willThrow();
      (*(v63 + 8))(v62, v64);
      goto LABEL_45;
    }

    v48 = v0[8];
    v47 = v0[9];
    v49 = v0[5];
    v50 = v0[3];
    v51 = sub_22FE43114();
    v53 = v52;
    (*v88)(v47, v49, v50);
    v54 = (v47 + *(v89 + 20));
    *v54 = v51;
    v54[1] = v53;
    sub_22FD93B00(v47, v48, type metadata accessor for AlbumID);
    v9 = v91;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_22FD920E8(0, v91[2] + 1, 1, v91, &qword_27DAE4118, &qword_22FE4A130, type metadata accessor for AlbumID);
    }

    v56 = v9[2];
    v55 = v9[3];
    if (v56 >= v55 >> 1)
    {
      v9 = sub_22FD920E8(v55 > 1, v56 + 1, 1, v9, &qword_27DAE4118, &qword_22FE4A130, type metadata accessor for AlbumID);
    }

    v57 = v0[8];
    sub_22FD93D84(v0[9], type metadata accessor for AlbumID);
    v9[2] = v56 + 1;
    sub_22FD93B68(v57, v9 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v56, type metadata accessor for AlbumID);
  }

  if (v10 != 101)
  {
    v66 = v10;

    v67 = v66;
    if (sqlite3_errstr(v66))
    {
      v68 = sub_22FE43104();
      v70 = v69;
    }

    else
    {
      v70 = 0xE300000000000000;
      v68 = 4271950;
    }

    v85 = v67 | 0xA000000000000000;
    sub_22FD916D8();
    v6 = swift_allocError();
    *v86 = v85;
    v86[1] = v68;
    v86[2] = v70;
    swift_willThrow();
    goto LABEL_46;
  }

  sub_22FDB35E0(v7);
  *__dst = v3;
  v59._countAndFlagsBits = 0x74696D6D6F63;
  v59._object = 0xE600000000000000;
  DatabaseConnection.execute(sql:)(v59);
  if (v60)
  {
    v6 = v60;

    goto LABEL_47;
  }

  v81 = v0[8];
  v80 = v0[9];
  v82 = v0[5];

  v83 = v0[1];
  v84 = *MEMORY[0x277D85DE8];

  return v83(v9);
}

uint64_t AlbumDatabase.queryByDay(id:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4068, &qword_22FE49FD8);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = *(type metadata accessor for StoredPhoto(0) - 8);
  v2[9] = v6;
  v7 = *(v6 + 64) + 15;
  v2[10] = swift_task_alloc();
  v8 = type metadata accessor for DatabaseBinding();
  v2[11] = v8;
  v9 = *(v8 - 8);
  v2[12] = v9;
  v10 = *(v9 + 64) + 15;
  v2[13] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4070, &qword_22FE4A740);
  v2[14] = v11;
  v12 = *(v11 - 8);
  v2[15] = v12;
  v13 = *(v12 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FD8DDAC);
}

uint64_t sub_22FD8DDAC()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[2];
  v0[18] = *(v0[3] + 16);
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD00000000000030DLL, 0x800000022FE44B30);
  MEMORY[0x23190ACF0](0x7372657620444E41, 0xEF3F203D206E6F69);
  v0[19] = 0;
  v0[20] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4078, &qword_22FE4A750);
  v7 = *(v3 + 72);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject() + v8;
  v10 = sub_22FE428C4();
  (*(*(v10 - 8) + 16))(v9, v6, v10);
  swift_storeEnumTagMultiPayload();
  v11 = *(v5 + 56);
  v11(v9, 0, 1, v4);
  *(v9 + v7) = 17;
  swift_storeEnumTagMultiPayload();
  v11(v9 + v7, 0, 1, v4);
  sub_22FD764B4(v9, v2, &qword_27DAE4070, &qword_22FE4A740);
  sub_22FD93E04(v2, v1, &qword_27DAE4070, &qword_22FE4A740);
  v28 = *(v5 + 48);
  v12 = v28(v1, 1, v4);
  v13 = v0[16];
  if (v12 == 1)
  {
    sub_22FD93E6C(v13, &qword_27DAE4070, &qword_22FE4A740);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_22FD93B68(v13, v0[13], type metadata accessor for DatabaseBinding);
    v14 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_22FD920E8(0, v14[2] + 1, 1, v14, &qword_27DAE4180, &qword_22FE4A760, type metadata accessor for DatabaseBinding);
    }

    v16 = v14[2];
    v15 = v14[3];
    if (v16 >= v15 >> 1)
    {
      v14 = sub_22FD920E8(v15 > 1, v16 + 1, 1, v14, &qword_27DAE4180, &qword_22FE4A760, type metadata accessor for DatabaseBinding);
    }

    v17 = v0[13];
    v14[2] = v16 + 1;
    sub_22FD93B68(v17, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, type metadata accessor for DatabaseBinding);
  }

  v19 = v0[16];
  v18 = v0[17];
  v20 = v0[11];
  sub_22FD764B4(v9 + v7, v18, &qword_27DAE4070, &qword_22FE4A740);
  sub_22FD93E04(v18, v19, &qword_27DAE4070, &qword_22FE4A740);
  v21 = v28(v19, 1, v20);
  v22 = v0[16];
  if (v21 == 1)
  {
    sub_22FD93E6C(v22, &qword_27DAE4070, &qword_22FE4A740);
  }

  else
  {
    sub_22FD93B68(v22, v0[13], type metadata accessor for DatabaseBinding);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_22FD920E8(0, v14[2] + 1, 1, v14, &qword_27DAE4180, &qword_22FE4A760, type metadata accessor for DatabaseBinding);
    }

    v24 = v14[2];
    v23 = v14[3];
    if (v24 >= v23 >> 1)
    {
      v14 = sub_22FD920E8(v23 > 1, v24 + 1, 1, v14, &qword_27DAE4180, &qword_22FE4A760, type metadata accessor for DatabaseBinding);
    }

    v25 = v0[13];
    v14[2] = v24 + 1;
    sub_22FD93B68(v25, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24, type metadata accessor for DatabaseBinding);
  }

  v0[21] = v14;
  v26 = v0[14];
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_22FD8E2D4);
}

uint64_t sub_22FD8E2D4()
{
  *(v0 + 176) = sub_22FDA5C54(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 144));
  *(v0 + 184) = 0;
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);

  return MEMORY[0x2822009F8](sub_22FD8E374);
}

uint64_t sub_22FD8E374()
{
  v1 = v0[23];
  v43 = v0[5];
  v50 = v0[4];
  v51 = v0[9];
  v2 = sub_22FD936E4(v0[22]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4080, &qword_22FE4BEC0);
  v3 = sub_22FE43AE4();
  result = v2;
  v5 = 0;
  v6 = *(v2 + 64);
  v40 = v2 + 64;
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  v44 = v3;
  v45 = v3 + 8;
  v41 = v10;
  v42 = v2;
  if ((v8 & v6) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v5 << 6);
      v15 = *(result + 48);
      v16 = *(v15 + 8 * v14);
      v17 = *(*(result + 56) + 8 * v14);
      v18 = *(v17 + 16);
      if (v18)
      {
        v46 = *(v15 + 8 * v14);
        v47 = v14;
        v48 = v9;
        v49 = v5;
        v54 = MEMORY[0x277D84F90];

        sub_22FD92408(0, v18, 0);
        v19 = v54;
        v20 = v17 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
        v52 = *(v43 + 72);
        do
        {
          v53 = v0[10];
          v21 = v0[7];
          v22 = v0[8];
          v23 = v0[6];
          sub_22FD764B4(v20, v22, &qword_27DAE4068, &qword_22FE49FD8);
          sub_22FD764B4(v22, v21, &qword_27DAE4068, &qword_22FE49FD8);
          v24 = *(v50 + 48);
          v25 = *(v21 + v24);
          sub_22FD93B68(v21, v23, type metadata accessor for StoredPhoto);
          *(v23 + v24) = v25;
          sub_22FD93B00(v23, v53, type metadata accessor for StoredPhoto);
          sub_22FD93E6C(v23, &qword_27DAE4068, &qword_22FE49FD8);
          sub_22FD93E6C(v22, &qword_27DAE4068, &qword_22FE49FD8);
          v27 = *(v54 + 16);
          v26 = *(v54 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_22FD92408(v26 > 1, v27 + 1, 1);
          }

          v28 = v0[10];
          *(v54 + 16) = v27 + 1;
          sub_22FD93B68(v28, v54 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v27, type metadata accessor for StoredPhoto);
          v20 += v52;
          --v18;
        }

        while (v18);

        v3 = v44;
        v10 = v41;
        result = v42;
        v9 = v48;
        v5 = v49;
        v16 = v46;
        v14 = v47;
      }

      else
      {
        v19 = MEMORY[0x277D84F90];
      }

      *(v45 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(v3[6] + 8 * v14) = v16;
      *(v3[7] + 8 * v14) = v19;
      v29 = v3[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      v3[2] = v31;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_5:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v5 >= v10)
      {
        break;
      }

      v13 = *(v40 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    v33 = v0[16];
    v32 = v0[17];
    v34 = v0[13];
    v35 = v0[10];
    v37 = v0[7];
    v36 = v0[8];
    v38 = v0[6];

    v39 = v0[1];

    return v39(v3);
  }

  return result;
}

uint64_t sub_22FD8E744()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[13];
  v6 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];

  v10 = v0[1];
  v11 = v0[23];

  return v10();
}

uint64_t AlbumDatabase.query(id:day:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DatabaseBinding();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4070, &qword_22FE4A740);
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FD8E94C);
}

uint64_t sub_22FD8E94C()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[2];
  v0[12] = *(v0[4] + 16);
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD000000000000321, 0x800000022FE44E40);
  MEMORY[0x23190ACF0](0x7372657620444E41, 0xEF3F203D206E6F69);
  v0[13] = 0;
  v0[14] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4078, &qword_22FE4A750);
  v6 = *(v1 + 72);
  v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v8 = swift_allocObject() + v7;
  v9 = sub_22FE428C4();
  (*(*(v9 - 8) + 16))(v8, v5, v9);
  swift_storeEnumTagMultiPayload();
  v10 = *(v3 + 56);
  v10(v8, 0, 1, v2);
  *(v8 + v6) = v4;
  swift_storeEnumTagMultiPayload();
  v26 = v6;
  v10(v8 + v6, 0, 1, v2);
  *(v8 + 2 * v6) = 17;
  swift_storeEnumTagMultiPayload();
  v10(v8 + 2 * v6, 0, 1, v2);
  v25 = v3;
  v11 = (v3 + 48);
  v12 = MEMORY[0x277D84F90];
  v13 = 3;
  v14 = v8;
  do
  {
    v16 = v0[10];
    v15 = v0[11];
    v17 = v0[5];
    sub_22FD764B4(v14, v15, &qword_27DAE4070, &qword_22FE4A740);
    sub_22FD93E04(v15, v16, &qword_27DAE4070, &qword_22FE4A740);
    v18 = (*v11)(v16, 1, v17);
    v19 = v0[10];
    if (v18 == 1)
    {
      sub_22FD93E6C(v19, &qword_27DAE4070, &qword_22FE4A740);
    }

    else
    {
      sub_22FD93B68(v19, v0[7], type metadata accessor for DatabaseBinding);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_22FD920E8(0, v12[2] + 1, 1, v12, &qword_27DAE4180, &qword_22FE4A760, type metadata accessor for DatabaseBinding);
      }

      v21 = v12[2];
      v20 = v12[3];
      if (v21 >= v20 >> 1)
      {
        v12 = sub_22FD920E8(v20 > 1, v21 + 1, 1, v12, &qword_27DAE4180, &qword_22FE4A760, type metadata accessor for DatabaseBinding);
      }

      v22 = v0[7];
      v12[2] = v21 + 1;
      sub_22FD93B68(v22, v12 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, type metadata accessor for DatabaseBinding);
    }

    v0[16] = v12;
    v14 += v26;
    --v13;
  }

  while (v13);
  v23 = v0[8];
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_22FD8ED48);
}

uint64_t sub_22FD8ED48()
{
  v1 = v0[12];
  v2 = PhotosFaceDatabase.queryPhotos(sql:bindings:)(v0[13], v0[14], v0[16]);
  v0[15] = 0;
  v3 = v0[16];
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[7];
  v8 = v2;

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_22FD8EE50()
{
  v1 = v0[16];
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[7];

  v6 = v0[1];
  v7 = v0[15];

  return v6();
}

uint64_t AlbumDatabase.queryPhotosForDays(from:to:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22FD8EF0C);
}

uint64_t sub_22FD8EF30()
{
  v20 = v0;
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v3 = *(v1 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection);
  if (!v3)
  {
    sub_22FD9E790();
    v3 = *(v1 + v2);
    if (!v3)
    {
      sub_22FD91684();
      swift_allocError();
      *v13 = 0;
      goto LABEL_9;
    }
  }

  v19 = v3;
  v4._countAndFlagsBits = 0x6E69676562;
  v4._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v4);
  v6 = v5;
  if (v5)
  {
LABEL_5:
    v19 = v3;
    v11._countAndFlagsBits = 0x6B6361626C6C6F72;
    v11._object = 0xE800000000000000;
    DatabaseConnection.execute(sql:)(v11);
    if (v12)
    {

LABEL_10:
      v14 = v0[1];

      return v14();
    }

LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  v7 = v0[2];
  v8 = v0[3];
  v19 = v3;
  sub_22FD8F0EC(&v19, v7, v8, &v18);
  v19 = v3;
  v9._countAndFlagsBits = 0x74696D6D6F63;
  v9._object = 0xE600000000000000;
  DatabaseConnection.execute(sql:)(v9);
  if (v10)
  {
    v6 = v10;

    goto LABEL_5;
  }

  v16 = v18;
  v17 = v0[1];

  return v17(v16);
}

void sub_22FD8F0EC(void *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v117 = a3;
  v116 = a2;
  v108 = a4;
  v5 = sub_22FE428C4();
  v6 = *(v5 - 8);
  v109 = v5;
  v110 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v111 = v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v122 = v105 - v10;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41A0, &qword_22FE4A1A0);
  v112 = *(v119 - 8);
  v11 = *(v112 + 64);
  v12 = MEMORY[0x28223BE20](v119);
  v114 = (v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v113 = v105 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = v105 - v16;
  v115 = *a1;
  v120 = 0;
  v121 = 0xE000000000000000;
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD000000000000111, 0x800000022FE45340);
  MEMORY[0x23190ACF0](0x7372657620444E41, 0xEF3F203D206E6F69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v18 = *(type metadata accessor for DatabaseBinding() - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22FE49F90;
  v22 = (v21 + v20);
  *v22 = 200000;
  swift_storeEnumTagMultiPayload();
  *(v22 + v19) = 24;
  swift_storeEnumTagMultiPayload();
  *(v22 + 2 * v19) = v116;
  swift_storeEnumTagMultiPayload();
  *(v22 + 3 * v19) = v117;
  swift_storeEnumTagMultiPayload();
  *(v22 + 4 * v19) = 17;
  swift_storeEnumTagMultiPayload();
  v120 = v115;
  v23 = v118;
  v24 = sub_22FDB08B0();
  if (v23)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    return;
  }

  v25 = v24;

  sub_22FDB31B8(v21, v25);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22FDB33A0(v25);
  v26 = MEMORY[0x277D84F90];
  v27 = v114;
  while (1)
  {
    v28 = sqlite3_step(v25);
    v29 = v119;
    if (v28 != 100)
    {
      break;
    }

    if (sqlite3_column_type(v25, 0) == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v102 = 0;
LABEL_50:
      *(v102 + 4) = 0;
      swift_willThrow();
      goto LABEL_52;
    }

    *v17 = sqlite3_column_int(v25, 0);
    if (sqlite3_column_type(v25, 1) == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v102 = 1;
      goto LABEL_50;
    }

    v30 = v26;
    v31 = sqlite3_column_blob(v25, 1);
    if (!v31)
    {
      sub_22FD9172C();
      swift_allocError();
      *v103 = 1;
      *(v103 + 4) = 0;
      swift_willThrow();
LABEL_52:

LABEL_53:
      sub_22FDB35E0(v25);
      return;
    }

    v32 = v31;
    v33 = *(v29 + 48);
    v34 = sqlite3_column_bytes(v25, 1);
    v35 = sub_22FDB285C(v32, v34);
    LOBYTE(v120) = 2;
    UUID.init(serialized:version:)(v35, v36);
    if (sqlite3_column_type(v25, 2) == 5 || (v37 = sqlite3_column_blob(v25, 2)) == 0)
    {
      sub_22FD9172C();
      swift_allocError();
      *v96 = 2;
      *(v96 + 4) = 0;
      swift_willThrow();
      (*(v110 + 8))(&v17[v33], v109);
      goto LABEL_52;
    }

    v38 = v37;
    v39 = *(v119 + 64);
    v40 = sqlite3_column_bytes(v25, 2);
    v41 = sub_22FDB285C(v38, v40);
    LOBYTE(v120) = 2;
    UUID.init(serialized:version:)(v41, v42);
    sub_22FD764B4(v17, v113, &qword_27DAE41A0, &qword_22FE4A1A0);
    v43 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_22FD91BBC(0, v30[2] + 1, 1, v30, &qword_27DAE4198, &qword_22FE4A198, &qword_27DAE41A0, &qword_22FE4A1A0);
    }

    v27 = v114;
    v45 = v43[2];
    v44 = v43[3];
    v46 = v43;
    if (v45 >= v44 >> 1)
    {
      v46 = sub_22FD91BBC(v44 > 1, v45 + 1, 1, v43, &qword_27DAE4198, &qword_22FE4A198, &qword_27DAE41A0, &qword_22FE4A1A0);
    }

    sub_22FD93E6C(v17, &qword_27DAE41A0, &qword_22FE4A1A0);
    *(v46 + 16) = v45 + 1;
    v26 = v46;
    sub_22FD93E04(v113, v46 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v45, &qword_27DAE41A0, &qword_22FE4A1A0);
  }

  if (v28 != 101)
  {
    v97 = v28;

    v98 = v97;
    if (sqlite3_errstr(v97))
    {
      v99 = sub_22FE43104();
      v101 = v100;
    }

    else
    {
      v101 = 0xE300000000000000;
      v99 = 4271950;
    }

    sub_22FD916D8();
    swift_allocError();
    *v104 = v98 | 0xA000000000000000;
    v104[1] = v99;
    v104[2] = v101;
    swift_willThrow();
    goto LABEL_53;
  }

  sub_22FDB35E0(v25);
  v47 = sub_22FD75328(MEMORY[0x277D84F90]);
  v115 = v26[2];
  v116 = v26;
  if (!v115)
  {
    v49 = 0;
    v51 = 0;
    v95 = v108;
LABEL_55:

    sub_22FD6EBD8(v49);
    sub_22FD6EBD8(v51);
    *v95 = v47;
    return;
  }

  v48 = v26;
  v49 = 0;
  v50 = v29;
  v51 = 0;
  v52 = 0;
  v113 = *(v50 + 48);
  v107 = v48 + ((*(v112 + 80) + 32) & ~*(v112 + 80));
  v53 = *(v50 + 64);
  v54 = v109;
  v119 = v110 + 32;
  v105[0] = v110 + 16;
  v105[1] = v110 + 8;
  v106 = v53;
  while (v52 < v116[2])
  {
    v55 = *(v112 + 72);
    v117 = v52;
    sub_22FD764B4(v107 + v55 * v52, v27, &qword_27DAE41A0, &qword_22FE4A1A0);
    v56 = v27;
    v57 = *v27;
    v58 = *v119;
    (*v119)(v122, v56 + v113, v54);
    v118 = v58;
    v58(v111, v56 + v106, v54);
    sub_22FD6EBD8(v49);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v120 = v47;
    v61 = sub_22FD74718(v57);
    v62 = v47[2];
    v63 = (v60 & 1) == 0;
    v64 = v62 + v63;
    if (__OFADD__(v62, v63))
    {
      goto LABEL_59;
    }

    v65 = v60;
    if (v47[3] >= v64)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v60)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_22FDDED7C();
        v47 = v120;
        if (v65)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      sub_22FDDD908(v64, isUniquelyReferenced_nonNull_native);
      v47 = v120;
      v66 = sub_22FD74718(v57);
      if ((v65 & 1) != (v67 & 1))
      {
        goto LABEL_64;
      }

      v61 = v66;
      if (v65)
      {
        goto LABEL_28;
      }
    }

    v68 = sub_22FD75430(MEMORY[0x277D84F90]);
    v47[(v61 >> 6) + 8] |= 1 << v61;
    *(v47[6] + 8 * v61) = v57;
    *(v47[7] + 8 * v61) = v68;
    v69 = v47[2];
    v70 = __OFADD__(v69, 1);
    v71 = v69 + 1;
    if (v70)
    {
      goto LABEL_61;
    }

    v47[2] = v71;
LABEL_28:
    v72 = v47[7];
    sub_22FD6EBD8(v51);
    v73 = *(v72 + 8 * v61);
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v120 = *(v72 + 8 * v61);
    v75 = v120;
    *(v72 + 8 * v61) = 0x8000000000000000;
    v77 = sub_22FD747EC(v122);
    v78 = v75[2];
    v79 = (v76 & 1) == 0;
    v80 = v78 + v79;
    if (__OFADD__(v78, v79))
    {
      goto LABEL_60;
    }

    v81 = v76;
    if (v75[3] >= v80)
    {
      if ((v74 & 1) == 0)
      {
        sub_22FDDEAFC();
        v75 = v120;
      }
    }

    else
    {
      sub_22FDDD8F4(v80, v74);
      v75 = v120;
      v82 = sub_22FD747EC(v122);
      if ((v81 & 1) != (v83 & 1))
      {
        goto LABEL_63;
      }

      v77 = v82;
    }

    v54 = v109;
    v84 = *(v72 + 8 * v61);
    *(v72 + 8 * v61) = v75;

    v85 = *(v72 + 8 * v61);
    v86 = v122;
    if ((v81 & 1) == 0)
    {
      v85[(v77 >> 6) + 8] |= 1 << v77;
      (*(v110 + 16))(v85[6] + *(v110 + 72) * v77, v86, v54);
      *(v85[7] + 8 * v77) = MEMORY[0x277D84F90];
      v87 = v85[2];
      v70 = __OFADD__(v87, 1);
      v88 = v87 + 1;
      if (v70)
      {
        goto LABEL_62;
      }

      v85[2] = v88;
    }

    v89 = v85[7];
    v90 = *(v89 + 8 * v77);
    v91 = swift_isUniquelyReferenced_nonNull_native();
    *(v89 + 8 * v77) = v90;
    if ((v91 & 1) == 0)
    {
      v90 = sub_22FD920E8(0, v90[2] + 1, 1, v90, &qword_27DAE4158, &qword_22FE4A168, MEMORY[0x277CC95F0]);
      *(v89 + 8 * v77) = v90;
    }

    v93 = v90[2];
    v92 = v90[3];
    if (v93 >= v92 >> 1)
    {
      v90 = sub_22FD920E8(v92 > 1, v93 + 1, 1, v90, &qword_27DAE4158, &qword_22FE4A168, MEMORY[0x277CC95F0]);
      *(v89 + 8 * v77) = v90;
    }

    v27 = v114;
    v52 = v117 + 1;
    v90[2] = v93 + 1;
    v94 = v110;
    v118(v90 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v93, v111, v54);
    (*(v94 + 8))(v122, v54);
    v51 = sub_22FD8FDB0;
    v49 = sub_22FD8FD80;
    v95 = v108;
    if (v115 == v52)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  sub_22FE43D14();
  __break(1u);
LABEL_64:
  sub_22FE43D14();
  __break(1u);
}

unint64_t sub_22FD8FD80@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22FD75430(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t AlbumDatabase.delete(id:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FD8FDE0);
}

uint64_t sub_22FD8FDE0()
{
  v1 = v0[2];
  v0[4] = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD8FE5C);
}

uint64_t sub_22FD8FE5C()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_22FD914F4(0, sub_22FD93BD0);
  v0[6] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FD8FF0C(uint64_t *a1, uint64_t a2)
{
  v10 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v3 = *(type metadata accessor for DatabaseBinding() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22FE49F60;
  v7 = sub_22FE428C4();
  (*(*(v7 - 8) + 16))(v6 + v5, a2, v7);
  swift_storeEnumTagMultiPayload();
  v8._object = 0x800000022FE45300;
  v8._countAndFlagsBits = 0xD000000000000030;
  DatabaseConnection.delete(sql:bindings:)(v8, v6);
  swift_setDeallocating();
  sub_22FD93D84(v6 + v5, type metadata accessor for DatabaseBinding);
  return swift_deallocClassInstance();
}

uint64_t AlbumDatabase.relate(photos:to:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22FD900B8);
}

uint64_t sub_22FD900B8()
{
  v1 = *(v0 + 32);
  *(v0 + 48) = *(*(v0 + 40) + 16);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;

  return MEMORY[0x2822009F8](sub_22FD9013C);
}

uint64_t sub_22FD9013C()
{
  v2 = v0[6];
  v1 = v0[7];
  sub_22FD914F4(0, sub_22FD93BEC);
  v0[8] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FD90204(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[5] = *a1;
  v7[2] = a3;
  v7[3] = a4;
  v4 = sub_22FDD4678(sub_22FD93DE4, v7, a2);
  v5._object = 0x800000022FE45280;
  v5._countAndFlagsBits = 0xD000000000000078;
  DatabaseConnection.insert(sql:bindings:)(v5, v4);
}

uint64_t sub_22FD90290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v5 = *(type metadata accessor for DatabaseBinding() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22FE49FA0;
  v9 = v8 + v7;
  v10 = sub_22FE428C4();
  v11 = *(*(v10 - 8) + 16);
  v11(v9, a2, v10);
  swift_storeEnumTagMultiPayload();
  v11(v9 + v6, a1, v10);
  swift_storeEnumTagMultiPayload();
  *(v9 + 2 * v6) = a3;
  result = swift_storeEnumTagMultiPayload();
  *a4 = v8;
  return result;
}

uint64_t AlbumDatabase.unrelatePhotos(for:before:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22FD9043C);
}

uint64_t sub_22FD9043C()
{
  v1 = v0[3];
  v2 = v0[2];
  v0[5] = *(v0[4] + 16);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  return MEMORY[0x2822009F8](sub_22FD904C4);
}

uint64_t sub_22FD904C4()
{
  v2 = v0[5];
  v1 = v0[6];
  sub_22FD914F4(0, sub_22FD93C0C);
  v0[7] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FD9058C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v13 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v5 = *(type metadata accessor for DatabaseBinding() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22FE49FB0;
  v9 = (v8 + v7);
  *v9 = 200000;
  swift_storeEnumTagMultiPayload();
  *(v9 + v6) = 24;
  swift_storeEnumTagMultiPayload();
  *(v9 + 2 * v6) = a2;
  swift_storeEnumTagMultiPayload();
  v10 = sub_22FE428C4();
  (*(*(v10 - 8) + 16))(v9 + 3 * v6, a3, v10);
  swift_storeEnumTagMultiPayload();
  v11._object = 0x800000022FE451E0;
  v11._countAndFlagsBits = 0xD000000000000092;
  DatabaseConnection.delete(sql:bindings:)(v11, v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  return swift_deallocClassInstance();
}

uint64_t AlbumDatabase.clearPhotos(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FD90788);
}

uint64_t sub_22FD90788()
{
  v1 = v0[2];
  v0[4] = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD90804);
}

uint64_t sub_22FD90804()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_22FD914F4(0, sub_22FD93C28);
  v0[6] = 0;

  return MEMORY[0x2822009F8](sub_22FD908B4);
}

uint64_t sub_22FD908E4(uint64_t *a1, uint64_t a2)
{
  v10 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v3 = *(type metadata accessor for DatabaseBinding() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22FE49F60;
  v7 = sub_22FE428C4();
  (*(*(v7 - 8) + 16))(v6 + v5, a2, v7);
  swift_storeEnumTagMultiPayload();
  v8._object = 0x800000022FE451A0;
  v8._countAndFlagsBits = 0xD000000000000037;
  DatabaseConnection.delete(sql:bindings:)(v8, v6);
  swift_setDeallocating();
  sub_22FD93D84(v6 + v5, type metadata accessor for DatabaseBinding);
  return swift_deallocClassInstance();
}

uint64_t AlbumDatabase.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AlbumDatabase.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22FD90AC4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22FD90AE8);
}

uint64_t sub_22FD90AE8()
{
  v1 = v0[2];
  v0[4] = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD90B64);
}

uint64_t sub_22FD90B64()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_22FD914F4(1, sub_22FD93EFC);
  v0[6] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FD90C14(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22FD90C38);
}

uint64_t sub_22FD90C38()
{
  v1 = v0[2];
  v0[4] = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD90CB4);
}

uint64_t sub_22FD90CB4()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_22FD914F4(0, sub_22FD93EE4);
  v0[6] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FD90D64(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22FD90D88);
}

uint64_t sub_22FD90D88()
{
  v1 = v0[2];
  v0[4] = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD90E04);
}

uint64_t sub_22FD90E04()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_22FD914F4(0, sub_22FD93ECC);
  v0[6] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FD90EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_22FD90EDC);
}

uint64_t sub_22FD90EDC()
{
  v1 = *(v0 + 32);
  *(v0 + 48) = *(*(v0 + 40) + 16);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;

  return MEMORY[0x2822009F8](sub_22FD90F60);
}

uint64_t sub_22FD90F60()
{
  v2 = v0[6];
  v1 = v0[7];
  sub_22FD914F4(0, sub_22FD93F18);
  v0[8] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FD91010(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_22FD91038);
}

uint64_t sub_22FD91038()
{
  v1 = v0[3];
  v2 = v0[2];
  v0[5] = *(v0[4] + 16);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  return MEMORY[0x2822009F8](sub_22FD910C0);
}

uint64_t sub_22FD910C0()
{
  v2 = v0[5];
  v1 = v0[6];
  sub_22FD914F4(0, sub_22FD93F3C);
  v0[7] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FD9117C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FD93F54;

  return AlbumDatabase.queryList()();
}

uint64_t sub_22FD9120C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FD93F54;

  return AlbumDatabase.query(id:day:)(a1, a2);
}

uint64_t sub_22FD912B4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FD93F54;

  return AlbumDatabase.queryByDay(id:)(a1);
}

uint64_t sub_22FD9134C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FD913F4;

  return AlbumDatabase.queryPhotosForDays(from:to:)(a1, a2);
}

uint64_t sub_22FD913F4(uint64_t a1)
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

void sub_22FD914F4(char a1, void (*a2)(uint64_t *))
{
  v6 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v7 = *(v2 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection);
  if (!v7)
  {
    sub_22FD9E790();
    if (v3)
    {
      return;
    }

    v7 = *(v2 + v6);
    if (!v7)
    {
      sub_22FD91684();
      swift_allocError();
      *v14 = 0;
      swift_willThrow();
      return;
    }
  }

  if ((a1 & 1) == 0 || (v15 = v7, sub_22FD9F438(&v15, 0), !v3))
  {
    v15 = v7;
    v8._countAndFlagsBits = 0x6E69676562;
    v8._object = 0xE500000000000000;
    DatabaseConnection.execute(sql:)(v8);
    if (v9 || (v15 = v7, a2(&v15), v15 = v7, v10._countAndFlagsBits = 0x74696D6D6F63, v10._object = 0xE600000000000000, DatabaseConnection.execute(sql:)(v10), v9))
    {
      v11 = v9;
      v15 = v7;
      v12._countAndFlagsBits = 0x6B6361626C6C6F72;
      v12._object = 0xE800000000000000;
      DatabaseConnection.execute(sql:)(v12);
      if (v13)
      {
      }

      else
      {
        if (a1)
        {
          v15 = v7;
          sub_22FD9F438(&v15, 1);
        }

        swift_willThrow();
      }
    }

    else if (a1)
    {
      v15 = v7;
      sub_22FD9F438(&v15, 1);
    }
  }
}

unint64_t sub_22FD91684()
{
  result = qword_27DAE4048;
  if (!qword_27DAE4048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4048);
  }

  return result;
}

unint64_t sub_22FD916D8()
{
  result = qword_27DAE4050;
  if (!qword_27DAE4050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4050);
  }

  return result;
}

unint64_t sub_22FD9172C()
{
  result = qword_27DAE4058;
  if (!qword_27DAE4058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4058);
  }

  return result;
}

unint64_t sub_22FD91780()
{
  result = qword_27DAE4060;
  if (!qword_27DAE4060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4060);
  }

  return result;
}

uint64_t sub_22FD917D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

char *sub_22FD91850(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40E0, &qword_22FE4A100);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_22FD91A64(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4188, &qword_22FE4A188);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4190, &qword_22FE4A190);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_22FD91BBC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_22FD91DA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4148, &qword_22FE4A158);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_22FD91EA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40A0, &qword_22FE4A0D0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_22FD91FB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4110, &qword_22FE4A128);
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
    v10 = MEMORY[0x277D84F90];
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

size_t sub_22FD920E8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

size_t sub_22FD922C4(size_t a1, int64_t a2, char a3)
{
  result = sub_22FD9321C(a1, a2, a3, *v3, &qword_27DAE4158, &qword_22FE4A168, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

char *sub_22FD92308(char *a1, int64_t a2, char a3)
{
  result = sub_22FD92814(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22FD92328(char *a1, int64_t a2, char a3)
{
  result = sub_22FD92920(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22FD92348(size_t a1, int64_t a2, char a3)
{
  result = sub_22FD934FC(a1, a2, a3, *v3, &qword_27DAE41A8, &qword_22FE4A1A8, &qword_27DAE4068, &qword_22FE49FD8);
  *v3 = result;
  return result;
}

size_t sub_22FD92388(size_t a1, int64_t a2, char a3)
{
  result = sub_22FD934FC(a1, a2, a3, *v3, &qword_27DAE4168, &qword_22FE4A178, &qword_27DAE2CE8, &unk_22FE4A850);
  *v3 = result;
  return result;
}

size_t sub_22FD923C8(size_t a1, int64_t a2, char a3)
{
  result = sub_22FD934FC(a1, a2, a3, *v3, &qword_27DAE41B0, &unk_22FE4A860, &qword_27DAE41B8, &qword_22FE4A1B0);
  *v3 = result;
  return result;
}

size_t sub_22FD92408(size_t a1, int64_t a2, char a3)
{
  result = sub_22FD9321C(a1, a2, a3, *v3, &qword_27DAE40F8, &qword_22FE4B1F0, type metadata accessor for StoredPhoto);
  *v3 = result;
  return result;
}

void *sub_22FD9244C(void *a1, int64_t a2, char a3)
{
  result = sub_22FD92A2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22FD9246C(size_t a1, int64_t a2, char a3)
{
  result = sub_22FD9321C(a1, a2, a3, *v3, &qword_27DAE40F0, &qword_22FE4A110, type metadata accessor for ShuffleID);
  *v3 = result;
  return result;
}

size_t sub_22FD924B0(size_t a1, int64_t a2, char a3)
{
  result = sub_22FD9321C(a1, a2, a3, *v3, &qword_27DAE4180, &qword_22FE4A760, type metadata accessor for DatabaseBinding);
  *v3 = result;
  return result;
}

size_t sub_22FD924F4(size_t a1, int64_t a2, char a3)
{
  result = sub_22FD9321C(a1, a2, a3, *v3, &qword_27DAE4098, &qword_22FE4A0C8, type metadata accessor for StoredPhotoProto);
  *v3 = result;
  return result;
}

char *sub_22FD92538(char *a1, int64_t a2, char a3)
{
  result = sub_22FD92B60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22FD92558(char *a1, int64_t a2, char a3)
{
  result = sub_22FD92C6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22FD92578(char *a1, int64_t a2, char a3)
{
  result = sub_22FD92DA8(a1, a2, a3, *v3, &qword_27DAE4120, &qword_22FE4A138);
  *v3 = result;
  return result;
}

char *sub_22FD925A8(char *a1, int64_t a2, char a3)
{
  result = sub_22FD92DA8(a1, a2, a3, *v3, &qword_27DAE40C8, &qword_22FE4A0E8);
  *v3 = result;
  return result;
}

size_t sub_22FD925D8(size_t a1, int64_t a2, char a3)
{
  result = sub_22FD934FC(a1, a2, a3, *v3, &qword_27DAE4128, &unk_22FE4FC70, &qword_27DAE4130, &qword_22FE4A140);
  *v3 = result;
  return result;
}

char *sub_22FD92618(char *a1, int64_t a2, char a3)
{
  result = sub_22FD92FEC(a1, a2, a3, *v3, &qword_27DAE4138, &qword_22FE4A148);
  *v3 = result;
  return result;
}

char *sub_22FD92648(char *a1, int64_t a2, char a3)
{
  result = sub_22FD92DA8(a1, a2, a3, *v3, &qword_27DAE40C0, &qword_22FE4A0E0);
  *v3 = result;
  return result;
}

void *sub_22FD92678(void *a1, int64_t a2, char a3)
{
  result = sub_22FD92EA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22FD92698(char *a1, int64_t a2, char a3)
{
  result = sub_22FD92FEC(a1, a2, a3, *v3, &qword_27DAE40A8, &qword_22FE4A0D8);
  *v3 = result;
  return result;
}

size_t sub_22FD926C8(size_t a1, int64_t a2, char a3)
{
  result = sub_22FD9321C(a1, a2, a3, *v3, &qword_27DAE4118, &qword_22FE4A130, type metadata accessor for AlbumID);
  *v3 = result;
  return result;
}

void *sub_22FD9270C(void *a1, int64_t a2, char a3)
{
  result = sub_22FD930E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22FD9272C(size_t a1, int64_t a2, char a3)
{
  result = sub_22FD9321C(a1, a2, a3, *v3, &qword_27DAE40E8, &qword_22FE4A108, type metadata accessor for DailyID);
  *v3 = result;
  return result;
}

size_t sub_22FD92770(size_t a1, int64_t a2, char a3)
{
  result = sub_22FD9321C(a1, a2, a3, *v3, &qword_27DAE4160, &qword_22FE4A170, type metadata accessor for StoredPhotoLayoutProto);
  *v3 = result;
  return result;
}

char *sub_22FD927B4(char *a1, int64_t a2, char a3)
{
  result = sub_22FD933F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22FD927D4(size_t a1, int64_t a2, char a3)
{
  result = sub_22FD934FC(a1, a2, a3, *v3, &qword_27DAE40D8, &qword_22FE4A0F8, &qword_27DAE2CA8, &unk_22FE4BE90);
  *v3 = result;
  return result;
}

char *sub_22FD92814(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4150, &qword_22FE4A160);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22FD92920(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40E0, &qword_22FE4A100);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_22FD92A2C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4188, &qword_22FE4A188);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4190, &qword_22FE4A190);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22FD92B60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40A0, &qword_22FE4A0D0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_22FD92C6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4140, &qword_22FE4A150);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_22FD92DA8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_22FD92EA4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40B0, &qword_22FE4FC00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40B8, &qword_22FE4FBA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22FD92FEC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_22FD930E8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4100, &qword_22FE4A118);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4108, &qword_22FE4A120);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_22FD9321C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

char *sub_22FD933F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40D0, &qword_22FE4A0F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

size_t sub_22FD934FC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_22FD936E4(uint64_t a1)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4068, &qword_22FE49FD8);
  v2 = *(*(v47 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v47);
  v4 = MEMORY[0x28223BE20](v3);
  v49 = &v41 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v48 = &v41 - v7;
  MEMORY[0x28223BE20](v6);
  v50 = &v41 - v10;
  v11 = MEMORY[0x277D84F98];
  v51 = MEMORY[0x277D84F98];
  v12 = *(a1 + 16);
  if (!v12)
  {
    return v11;
  }

  v43 = *(v8 + 80);
  v13 = *(v8 + 72);
  v45 = (v43 + 32) & ~v43;
  v14 = a1 + v45;
  v42 = xmmword_22FE49F60;
  v46 = v9;
  v44 = v13;
  while (1)
  {
    v16 = v50;
    sub_22FD764B4(v14, v50, &qword_27DAE4068, &qword_22FE49FD8);
    v17 = v48;
    sub_22FD764B4(v16, v48, &qword_27DAE4068, &qword_22FE49FD8);
    v18 = *(v47 + 48);
    v19 = *(v17 + v18);
    v20 = v17;
    v21 = v49;
    sub_22FD93B68(v20, v49, type metadata accessor for StoredPhoto);
    *(v21 + v18) = v19;
    sub_22FD93E6C(v21, &qword_27DAE4068, &qword_22FE49FD8);
    v23 = sub_22FD74718(v19);
    v24 = v11[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (v11[3] < v26)
    {
      sub_22FDDD204(v26, 1);
      v11 = v51;
      v28 = sub_22FD74718(v19);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_19;
      }

      v23 = v28;
    }

    if (v27)
    {
      v30 = v11[7];
      sub_22FD93E04(v50, v46, &qword_27DAE4068, &qword_22FE49FD8);
      v31 = *(v30 + 8 * v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v30 + 8 * v23) = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_22FD91BBC(0, v31[2] + 1, 1, v31, &qword_27DAE41A8, &qword_22FE4A1A8, &qword_27DAE4068, &qword_22FE49FD8);
        *(v30 + 8 * v23) = v31;
      }

      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        v31 = sub_22FD91BBC(v33 > 1, v34 + 1, 1, v31, &qword_27DAE41A8, &qword_22FE4A1A8, &qword_27DAE4068, &qword_22FE49FD8);
        *(v30 + 8 * v23) = v31;
      }

      v31[2] = v34 + 1;
      v15 = v44;
      sub_22FD93E04(v46, v31 + v45 + v34 * v44, &qword_27DAE4068, &qword_22FE49FD8);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41A8, &qword_22FE4A1A8);
      v35 = v45;
      v36 = swift_allocObject();
      *(v36 + 16) = v42;
      sub_22FD93E04(v50, v36 + v35, &qword_27DAE4068, &qword_22FE49FD8);
      v11[(v23 >> 6) + 8] |= 1 << v23;
      *(v11[6] + 8 * v23) = v19;
      *(v11[7] + 8 * v23) = v36;
      v37 = v11[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_18;
      }

      v11[2] = v39;
      v15 = v44;
    }

    v14 += v15;
    if (!--v12)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_22FE43D14();
  __break(1u);
  return result;
}

uint64_t sub_22FD93B00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FD93B68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FD93C44(uint64_t a1, uint64_t a2)
{
  result = sub_22FD93D0C(&qword_27DAE4088, a2, type metadata accessor for AlbumDatabase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FD93D0C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FD93D84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FD93E04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22FD93E6C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t DailyDatabase.__allocating_init(database:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t DailyDatabase.insert(id:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FD93FC0);
}

uint64_t sub_22FD93FC0()
{
  v1 = v0[2];
  v0[4] = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22FD9403C);
}

uint64_t sub_22FD9403C()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_22FD914F4(1, sub_22FD9429C);
  v0[6] = 0;

  return MEMORY[0x2822009F8](sub_22FD93F14);
}

uint64_t sub_22FD940EC(uint64_t *a1, uint64_t a2)
{
  v11 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4188, &qword_22FE4A188);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FE49F60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v4 = *(type metadata accessor for DatabaseBinding() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22FE49F60;
  v8 = sub_22FE428C4();
  (*(*(v8 - 8) + 16))(v7 + v6, a2, v8);
  swift_storeEnumTagMultiPayload();
  *(inited + 32) = v7;
  v9._object = 0x800000022FE45E40;
  v9._countAndFlagsBits = 0xD00000000000004CLL;
  DatabaseConnection.insert(sql:bindings:)(v9, inited);
  swift_setDeallocating();
  return sub_22FD93E6C(inited + 32, &qword_27DAE4190, &qword_22FE4A190);
}

uint64_t DailyDatabase.queryList()()
{
  v9 = *MEMORY[0x277D85DE8];
  v1[2] = v0;
  v2 = sub_22FE428C4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(type metadata accessor for DailyID() - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22FD94408);
}

uint64_t sub_22FD94408()
{
  v3 = *MEMORY[0x277D85DE8];
  *(v0 + 72) = *(*(v0 + 16) + 16);
  v1 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22FD9449C);
}

uint64_t sub_22FD9449C()
{
  v86 = v0;
  v85 = *MEMORY[0x277D85DE8];
  v1 = v0[9];
  v2 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v3 = *(v1 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection);
  if (!v3)
  {
    sub_22FD9E790();
    v3 = *(v1 + v2);
    if (!v3)
    {
      sub_22FD91684();
      swift_allocError();
      *v54 = 0;
      goto LABEL_47;
    }
  }

  *__dst = v3;
  v4._countAndFlagsBits = 0x6E69676562;
  v4._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v4);
  v6 = v5;
  if (v5)
  {
LABEL_45:
    *__dst = v3;
    v65._countAndFlagsBits = 0x6B6361626C6C6F72;
    v65._object = 0xE800000000000000;
    DatabaseConnection.execute(sql:)(v65);
    if (v66)
    {

LABEL_48:
      v68 = v0[7];
      v67 = v0[8];
      v69 = v0[5];

      v70 = v0[1];
      v71 = *MEMORY[0x277D85DE8];

      return v70();
    }

LABEL_47:
    swift_willThrow();
    goto LABEL_48;
  }

  *__dst = v3;
  v7 = sub_22FDB08B0();
  sub_22FDB31B8(MEMORY[0x277D84F90], v7);
  v81 = v0[6];
  v8 = v0[4];
  sub_22FDB33A0(v7);
  v80 = (v8 + 32);
  v9 = MEMORY[0x277D84F90];
  v82 = v7;
  while (1)
  {
    v10 = sqlite3_step(v7);
    if (v10 != 100)
    {
      break;
    }

    if (sqlite3_column_type(v7, 0) == 5 || (v11 = sqlite3_column_blob(v7, 0)) == 0)
    {
      sub_22FD9172C();
      v6 = swift_allocError();
      *v57 = 0;
      *(v57 + 4) = 0;
      swift_willThrow();
      goto LABEL_43;
    }

    v12 = v11;
    v13 = sqlite3_column_bytes(v7, 0);
    if (!v13)
    {
      v18 = 0;
      v19 = 0xC000000000000000;
LABEL_42:
      sub_22FD91780();
      v6 = swift_allocError();
      *v64 = 1;
      swift_willThrow();
      sub_22FD917D4(v18, v19);
LABEL_43:

LABEL_44:
      sub_22FDB35E0(v7);
      goto LABEL_45;
    }

    v14 = v13;
    if (v13 < 15)
    {
      memset(__dst, 0, sizeof(__dst));
      v84 = v13;
      memcpy(__dst, v12, v13);
      v18 = *__dst;
      v14 = v84;
      v19 = v79 & 0xF00000000000000 | *&__dst[8] | (*&__dst[12] << 32) | (v84 << 48);
      v79 = v19;
    }

    else
    {
      v15 = sub_22FE42694();
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      if (v14 == 0x7FFFFFFF)
      {
        v63 = sub_22FE42644();
        sub_22FE427A4();
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_22FE49F80;
        v19 = v63 | 0x8000000000000000;
        goto LABEL_42;
      }

      v18 = v14 << 32;
      v19 = sub_22FE42644() | 0x4000000000000000;
    }

    if (v14 != 16)
    {
      goto LABEL_42;
    }

    v20 = v19 >> 62;
    if ((v19 >> 62) <= 1)
    {
      if (!v20)
      {
        v21 = v9;
        goto LABEL_27;
      }

      if (v18 > v18 >> 32)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
      }

      v27 = sub_22FE42654();
      if (!v27)
      {
        goto LABEL_61;
      }

      v28 = v27;
      v29 = sub_22FE42684();
      if (__OFSUB__(v18, v29))
      {
        goto LABEL_58;
      }

      v21 = v9;
      v26 = (v18 - v29 + v28);
      result = sub_22FE42674();
      if (!v26)
      {
        goto LABEL_62;
      }

      goto LABEL_25;
    }

    if (v20 == 2)
    {
      v22 = *(v18 + 16);
      v23 = sub_22FE42654();
      if (!v23)
      {
        sub_22FE42674();
LABEL_60:
        __break(1u);
LABEL_61:
        result = sub_22FE42674();
        __break(1u);
LABEL_62:
        __break(1u);
        return result;
      }

      v24 = v23;
      v25 = sub_22FE42684();
      if (__OFSUB__(v22, v25))
      {
        goto LABEL_57;
      }

      v21 = v9;
      v26 = (v22 - v25 + v24);
      sub_22FE42674();
      if (!v26)
      {
        goto LABEL_60;
      }

LABEL_25:
      v31 = *v26;
      v32 = v26[1];
      v33 = v26[2];
      v34 = v26[3];
      v35 = v26[4];
      v36 = v26[5];
      v37 = v26[6];
      v38 = v26[7];
      v39 = v26[8];
      v40 = v26[9];
      v41 = v26[10];
      v42 = v26[11];
      v43 = v26[12];
      v44 = v26[13];
      v45 = v26[14];
      v46 = v26[15];
      goto LABEL_27;
    }

    v21 = v9;
LABEL_27:
    v48 = v0[7];
    v47 = v0[8];
    v49 = v0[5];
    v50 = v0[3];
    sub_22FE42894();
    sub_22FD917D4(v18, v19);
    (*v80)(v47, v49, v50);
    sub_22FD98B9C(v47, v48, type metadata accessor for DailyID);
    v9 = v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_22FD91A14(0, v21[2] + 1, 1, v21);
    }

    v7 = v82;
    v52 = v9[2];
    v51 = v9[3];
    if (v52 >= v51 >> 1)
    {
      v9 = sub_22FD91A14(v51 > 1, v52 + 1, 1, v9);
    }

    v53 = v0[7];
    sub_22FD98EAC(v0[8], type metadata accessor for DailyID);
    v9[2] = v52 + 1;
    sub_22FD98C04(v53, v9 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v52, type metadata accessor for DailyID);
  }

  if (v10 != 101)
  {
    v58 = v10;

    v59 = v58;
    if (sqlite3_errstr(v58))
    {
      v60 = sub_22FE43104();
      v62 = v61;
    }

    else
    {
      v62 = 0xE300000000000000;
      v60 = 4271950;
    }

    v77 = v59 | 0xA000000000000000;
    sub_22FD916D8();
    v6 = swift_allocError();
    *v78 = v77;
    v78[1] = v60;
    v78[2] = v62;
    swift_willThrow();
    goto LABEL_44;
  }

  sub_22FDB35E0(v7);
  *__dst = v3;
  v55._countAndFlagsBits = 0x74696D6D6F63;
  v55._object = 0xE600000000000000;
  DatabaseConnection.execute(sql:)(v55);
  if (v56)
  {
    v6 = v56;

    goto LABEL_45;
  }

  v73 = v0[7];
  v72 = v0[8];
  v74 = v0[5];

  v75 = v0[1];
  v76 = *MEMORY[0x277D85DE8];

  return v75(v9);
}

uint64_t DailyDatabase.queryByDay(id:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4068, &qword_22FE49FD8);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = *(type metadata accessor for StoredPhoto(0) - 8);
  v2[9] = v6;
  v7 = *(v6 + 64) + 15;
  v2[10] = swift_task_alloc();
  v8 = type metadata accessor for DatabaseBinding();
  v2[11] = v8;
  v9 = *(v8 - 8);
  v2[12] = v9;
  v10 = *(v9 + 64) + 15;
  v2[13] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4070, &qword_22FE4A740);
  v2[14] = v11;
  v12 = *(v11 - 8);
  v2[15] = v12;
  v13 = *(v12 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FD94E3C);
}

uint64_t sub_22FD94E3C()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[2];
  v0[18] = *(v0[3] + 16);
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD00000000000030DLL, 0x800000022FE454F0);
  MEMORY[0x23190ACF0](0x7372657620444E41, 0xEF3F203D206E6F69);
  v0[19] = 0;
  v0[20] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4078, &qword_22FE4A750);
  v7 = *(v3 + 72);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject() + v8;
  v10 = sub_22FE428C4();
  (*(*(v10 - 8) + 16))(v9, v6, v10);
  swift_storeEnumTagMultiPayload();
  v11 = *(v5 + 56);
  v11(v9, 0, 1, v4);
  *(v9 + v7) = 17;
  swift_storeEnumTagMultiPayload();
  v11(v9 + v7, 0, 1, v4);
  sub_22FD764B4(v9, v2, &qword_27DAE4070, &qword_22FE4A740);
  sub_22FD93E04(v2, v1, &qword_27DAE4070, &qword_22FE4A740);
  v28 = *(v5 + 48);
  v12 = v28(v1, 1, v4);
  v13 = v0[16];
  if (v12 == 1)
  {
    sub_22FD93E6C(v13, &qword_27DAE4070, &qword_22FE4A740);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_22FD98C04(v13, v0[13], type metadata accessor for DatabaseBinding);
    v14 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_22FD919C8(0, v14[2] + 1, 1, v14);
    }

    v16 = v14[2];
    v15 = v14[3];
    if (v16 >= v15 >> 1)
    {
      v14 = sub_22FD919C8(v15 > 1, v16 + 1, 1, v14);
    }

    v17 = v0[13];
    v14[2] = v16 + 1;
    sub_22FD98C04(v17, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, type metadata accessor for DatabaseBinding);
  }

  v19 = v0[16];
  v18 = v0[17];
  v20 = v0[11];
  sub_22FD764B4(v9 + v7, v18, &qword_27DAE4070, &qword_22FE4A740);
  sub_22FD93E04(v18, v19, &qword_27DAE4070, &qword_22FE4A740);
  v21 = v28(v19, 1, v20);
  v22 = v0[16];
  if (v21 == 1)
  {
    sub_22FD93E6C(v22, &qword_27DAE4070, &qword_22FE4A740);
  }

  else
  {
    sub_22FD98C04(v22, v0[13], type metadata accessor for DatabaseBinding);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_22FD919C8(0, v14[2] + 1, 1, v14);
    }

    v24 = v14[2];
    v23 = v14[3];
    if (v24 >= v23 >> 1)
    {
      v14 = sub_22FD919C8(v23 > 1, v24 + 1, 1, v14);
    }

    v25 = v0[13];
    v14[2] = v24 + 1;
    sub_22FD98C04(v25, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24, type metadata accessor for DatabaseBinding);
  }

  v0[21] = v14;
  v26 = v0[14];
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_22FD952D4);
}

uint64_t sub_22FD952D4()
{
  *(v0 + 176) = sub_22FDA5C54(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 144));
  *(v0 + 184) = 0;
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);

  return MEMORY[0x2822009F8](sub_22FD95374);
}

uint64_t sub_22FD95374()
{
  v1 = v0[23];
  v43 = v0[5];
  v50 = v0[4];
  v51 = v0[9];
  v2 = sub_22FD987C0(v0[22]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4080, &qword_22FE4BEC0);
  v3 = sub_22FE43AE4();
  result = v2;
  v5 = 0;
  v6 = *(v2 + 64);
  v40 = v2 + 64;
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  v44 = v3;
  v45 = v3 + 8;
  v41 = v10;
  v42 = v2;
  if ((v8 & v6) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v5 << 6);
      v15 = *(result + 48);
      v16 = *(v15 + 8 * v14);
      v17 = *(*(result + 56) + 8 * v14);
      v18 = *(v17 + 16);
      if (v18)
      {
        v46 = *(v15 + 8 * v14);
        v47 = v14;
        v48 = v9;
        v49 = v5;
        v54 = MEMORY[0x277D84F90];

        sub_22FD92408(0, v18, 0);
        v19 = v54;
        v20 = v17 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
        v52 = *(v43 + 72);
        do
        {
          v53 = v0[10];
          v21 = v0[7];
          v22 = v0[8];
          v23 = v0[6];
          sub_22FD764B4(v20, v22, &qword_27DAE4068, &qword_22FE49FD8);
          sub_22FD764B4(v22, v21, &qword_27DAE4068, &qword_22FE49FD8);
          v24 = *(v50 + 48);
          v25 = *(v21 + v24);
          sub_22FD98C04(v21, v23, type metadata accessor for StoredPhoto);
          *(v23 + v24) = v25;
          sub_22FD98B9C(v23, v53, type metadata accessor for StoredPhoto);
          sub_22FD93E6C(v23, &qword_27DAE4068, &qword_22FE49FD8);
          sub_22FD93E6C(v22, &qword_27DAE4068, &qword_22FE49FD8);
          v27 = *(v54 + 16);
          v26 = *(v54 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_22FD92408(v26 > 1, v27 + 1, 1);
          }

          v28 = v0[10];
          *(v54 + 16) = v27 + 1;
          sub_22FD98C04(v28, v54 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v27, type metadata accessor for StoredPhoto);
          v20 += v52;
          --v18;
        }

        while (v18);

        v3 = v44;
        v10 = v41;
        result = v42;
        v9 = v48;
        v5 = v49;
        v16 = v46;
        v14 = v47;
      }

      else
      {
        v19 = MEMORY[0x277D84F90];
      }

      *(v45 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(v3[6] + 8 * v14) = v16;
      *(v3[7] + 8 * v14) = v19;
      v29 = v3[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      v3[2] = v31;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_5:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v5 >= v10)
      {
        break;
      }

      v13 = *(v40 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    v33 = v0[16];
    v32 = v0[17];
    v34 = v0[13];
    v35 = v0[10];
    v37 = v0[7];
    v36 = v0[8];
    v38 = v0[6];

    v39 = v0[1];

    return v39(v3);
  }

  return result;
}

uint64_t DailyDatabase.query(id:day:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DatabaseBinding();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4070, &qword_22FE4A740);
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FD9587C);
}

uint64_t sub_22FD9587C()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[2];
  v0[12] = *(v0[4] + 16);
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD000000000000321, 0x800000022FE45800);
  MEMORY[0x23190ACF0](0x7372657620444E41, 0xEF3F203D206E6F69);
  v0[13] = 0;
  v0[14] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4078, &qword_22FE4A750);
  v6 = *(v1 + 72);
  v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v8 = swift_allocObject() + v7;
  v9 = sub_22FE428C4();
  (*(*(v9 - 8) + 16))(v8, v5, v9);
  swift_storeEnumTagMultiPayload();
  v10 = *(v3 + 56);
  v10(v8, 0, 1, v2);
  *(v8 + v6) = v4;
  swift_storeEnumTagMultiPayload();
  v10(v8 + v6, 0, 1, v2);
  *(v8 + 2 * v6) = 17;
  swift_storeEnumTagMultiPayload();
  v10(v8 + 2 * v6, 0, 1, v2);
  v25 = v3;
  v11 = (v3 + 48);
  v12 = MEMORY[0x277D84F90];
  v13 = 3;
  v14 = v8;
  do
  {
    v16 = v0[10];
    v15 = v0[11];
    v17 = v0[5];
    sub_22FD764B4(v14, v15, &qword_27DAE4070, &qword_22FE4A740);
    sub_22FD93E04(v15, v16, &qword_27DAE4070, &qword_22FE4A740);
    v18 = (*v11)(v16, 1, v17);
    v19 = v0[10];
    if (v18 == 1)
    {
      sub_22FD93E6C(v19, &qword_27DAE4070, &qword_22FE4A740);
    }

    else
    {
      sub_22FD98C04(v19, v0[7], type metadata accessor for DatabaseBinding);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_22FD919C8(0, v12[2] + 1, 1, v12);
      }

      v21 = v12[2];
      v20 = v12[3];
      if (v21 >= v20 >> 1)
      {
        v12 = sub_22FD919C8(v20 > 1, v21 + 1, 1, v12);
      }

      v22 = v0[7];
      v12[2] = v21 + 1;
      sub_22FD98C04(v22, v12 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, type metadata accessor for DatabaseBinding);
    }

    v0[16] = v12;
    v14 += v6;
    --v13;
  }

  while (v13);
  v23 = v0[8];
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_22FD8ED48);
}

uint64_t DailyDatabase.queryPhotosForDays(from:to:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22FD95C54);
}

uint64_t sub_22FD95C78()
{
  v20 = v0;
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection;
  v3 = *(v1 + OBJC_IVAR____TtC10PhotosFace18PhotosFaceDatabase_connection);
  if (!v3)
  {
    sub_22FD9E790();
    v3 = *(v1 + v2);
    if (!v3)
    {
      sub_22FD91684();
      swift_allocError();
      *v13 = 0;
      goto LABEL_9;
    }
  }

  v19 = v3;
  v4._countAndFlagsBits = 0x6E69676562;
  v4._object = 0xE500000000000000;
  DatabaseConnection.execute(sql:)(v4);
  v6 = v5;
  if (v5)
  {
LABEL_5:
    v19 = v3;
    v11._countAndFlagsBits = 0x6B6361626C6C6F72;
    v11._object = 0xE800000000000000;
    DatabaseConnection.execute(sql:)(v11);
    if (v12)
    {

LABEL_10:
      v14 = v0[1];

      return v14();
    }

LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  v7 = v0[2];
  v8 = v0[3];
  v19 = v3;
  sub_22FD95E34(&v19, v7, v8, &v18);
  v19 = v3;
  v9._countAndFlagsBits = 0x74696D6D6F63;
  v9._object = 0xE600000000000000;
  DatabaseConnection.execute(sql:)(v9);
  if (v10)
  {
    v6 = v10;

    goto LABEL_5;
  }

  v16 = v18;
  v17 = v0[1];

  return v17(v16);
}

void sub_22FD95E34(void *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v117 = a3;
  v116 = a2;
  v108 = a4;
  v5 = sub_22FE428C4();
  v6 = *(v5 - 8);
  v109 = v5;
  v110 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v111 = v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v122 = v105 - v10;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41A0, &qword_22FE4A1A0);
  v112 = *(v119 - 8);
  v11 = *(v112 + 64);
  v12 = MEMORY[0x28223BE20](v119);
  v114 = (v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v113 = v105 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = v105 - v16;
  v115 = *a1;
  v120 = 0;
  v121 = 0xE000000000000000;
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD000000000000111, 0x800000022FE45D20);
  MEMORY[0x23190ACF0](0x7372657620444E41, 0xEF3F203D206E6F69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4180, &qword_22FE4A760);
  v18 = *(type metadata accessor for DatabaseBinding() - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22FE49F90;
  v22 = (v21 + v20);
  *v22 = 200000;
  swift_storeEnumTagMultiPayload();
  *(v22 + v19) = 24;
  swift_storeEnumTagMultiPayload();
  *(v22 + 2 * v19) = v116;
  swift_storeEnumTagMultiPayload();
  *(v22 + 3 * v19) = v117;
  swift_storeEnumTagMultiPayload();
  *(v22 + 4 * v19) = 17;
  swift_storeEnumTagMultiPayload();
  v120 = v115;
  v23 = v118;
  v24 = sub_22FDB08B0();
  if (v23)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    return;
  }

  v25 = v24;

  sub_22FDB31B8(v21, v25);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22FDB33A0(v25);
  v26 = MEMORY[0x277D84F90];
  v27 = v114;
  while (1)
  {
    v28 = sqlite3_step(v25);
    v29 = v119;
    if (v28 != 100)
    {
      break;
    }

    if (sqlite3_column_type(v25, 0) == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v102 = 0;
LABEL_50:
      *(v102 + 4) = 0;
      swift_willThrow();
      goto LABEL_52;
    }

    *v17 = sqlite3_column_int(v25, 0);
    if (sqlite3_column_type(v25, 1) == 5)
    {
      sub_22FD9172C();
      swift_allocError();
      *v102 = 1;
      goto LABEL_50;
    }

    v30 = v26;
    v31 = sqlite3_column_blob(v25, 1);
    if (!v31)
    {
      sub_22FD9172C();
      swift_allocError();
      *v103 = 1;
      *(v103 + 4) = 0;
      swift_willThrow();
LABEL_52:

LABEL_53:
      sub_22FDB35E0(v25);
      return;
    }

    v32 = v31;
    v33 = *(v29 + 48);
    v34 = sqlite3_column_bytes(v25, 1);
    v35 = sub_22FDB285C(v32, v34);
    LOBYTE(v120) = 2;
    UUID.init(serialized:version:)(v35, v36);
    if (sqlite3_column_type(v25, 2) == 5 || (v37 = sqlite3_column_blob(v25, 2)) == 0)
    {
      sub_22FD9172C();
      swift_allocError();
      *v96 = 2;
      *(v96 + 4) = 0;
      swift_willThrow();
      (*(v110 + 8))(&v17[v33], v109);
      goto LABEL_52;
    }

    v38 = v37;
    v39 = *(v119 + 64);
    v40 = sqlite3_column_bytes(v25, 2);
    v41 = sub_22FDB285C(v38, v40);
    LOBYTE(v120) = 2;
    UUID.init(serialized:version:)(v41, v42);
    sub_22FD764B4(v17, v113, &qword_27DAE41A0, &qword_22FE4A1A0);
    v43 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_22FD919F0(0, v30[2] + 1, 1, v30);
    }

    v27 = v114;
    v45 = v43[2];
    v44 = v43[3];
    v46 = v43;
    if (v45 >= v44 >> 1)
    {
      v46 = sub_22FD919F0(v44 > 1, v45 + 1, 1, v43);
    }

    sub_22FD93E6C(v17, &qword_27DAE41A0, &qword_22FE4A1A0);
    *(v46 + 16) = v45 + 1;
    v26 = v46;
    sub_22FD93E04(v113, v46 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v45, &qword_27DAE41A0, &qword_22FE4A1A0);
  }

  if (v28 != 101)
  {
    v97 = v28;

    v98 = v97;
    if (sqlite3_errstr(v97))
    {
      v99 = sub_22FE43104();
      v101 = v100;
    }

    else
    {
      v101 = 0xE300000000000000;
      v99 = 4271950;
    }

    sub_22FD916D8();
    swift_allocError();
    *v104 = v98 | 0xA000000000000000;
    v104[1] = v99;
    v104[2] = v101;
    swift_willThrow();
    goto LABEL_53;
  }

  sub_22FDB35E0(v25);
  v47 = sub_22FD75328(MEMORY[0x277D84F90]);
  v115 = v26[2];
  v116 = v26;
  if (!v115)
  {
    v49 = 0;
    v51 = 0;
    v95 = v108;
LABEL_55:

    sub_22FD6EBD8(v49);
    sub_22FD6EBD8(v51);
    *v95 = v47;
    return;
  }

  v48 = v26;
  v49 = 0;
  v50 = v29;
  v51 = 0;
  v52 = 0;
  v113 = *(v50 + 48);
  v107 = v48 + ((*(v112 + 80) + 32) & ~*(v112 + 80));
  v53 = *(v50 + 64);
  v54 = v109;
  v119 = v110 + 32;
  v105[0] = v110 + 16;
  v105[1] = v110 + 8;
  v106 = v53;
  while (v52 < v116[2])
  {
    v55 = *(v112 + 72);
    v117 = v52;
    sub_22FD764B4(v107 + v55 * v52, v27, &qword_27DAE41A0, &qword_22FE4A1A0);
    v56 = v27;
    v57 = *v27;
    v58 = *v119;
    (*v119)(v122, v56 + v113, v54);
    v118 = v58;
    v58(v111, v56 + v106, v54);
    sub_22FD6EBD8(v49);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v120 = v47;
    v61 = sub_22FD74718(v57);
    v62 = v47[2];
    v63 = (v60 & 1) == 0;
    v64 = v62 + v63;
    if (__OFADD__(v62, v63))
    {
      goto LABEL_59;
    }

    v65 = v60;
    if (v47[3] >= v64)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v60)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_22FDDED7C();
        v47 = v120;
        if (v65)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      sub_22FDDD908(v64, isUniquelyReferenced_nonNull_native);
      v47 = v120;
      v66 = sub_22FD74718(v57);
      if ((v65 & 1) != (v67 & 1))
      {
        goto LABEL_64;
      }

      v61 = v66;
      if (v65)
      {
        goto LABEL_28;
      }
    }

    v68 = sub_22FD75430(MEMORY[0x277D84F90]);
    v47[(v61 >> 6) + 8] |= 1 << v61;
    *(v47[6] + 8 * v61) = v57;
    *(v47[7] + 8 * v61) = v68;
    v69 = v47[2];
    v70 = __OFADD__(v69, 1);
    v71 = v69 + 1;
    if (v70)
    {
      goto LABEL_61;
    }

    v47[2] = v71;
LABEL_28:
    v72 = v47[7];
    sub_22FD6EBD8(v51);
    v73 = *(v72 + 8 * v61);
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v120 = *(v72 + 8 * v61);
    v75 = v120;
    *(v72 + 8 * v61) = 0x8000000000000000;
    v77 = sub_22FD747EC(v122);
    v78 = v75[2];
    v79 = (v76 & 1) == 0;
    v80 = v78 + v79;
    if (__OFADD__(v78, v79))
    {
      goto LABEL_60;
    }

    v81 = v76;
    if (v75[3] >= v80)
    {
      if ((v74 & 1) == 0)
      {
        sub_22FDDEAFC();
        v75 = v120;
      }
    }

    else
    {
      sub_22FDDD8F4(v80, v74);
      v75 = v120;
      v82 = sub_22FD747EC(v122);
      if ((v81 & 1) != (v83 & 1))
      {
        goto LABEL_63;
      }

      v77 = v82;
    }

    v54 = v109;
    v84 = *(v72 + 8 * v61);
    *(v72 + 8 * v61) = v75;

    v85 = *(v72 + 8 * v61);
    v86 = v122;
    if ((v81 & 1) == 0)
    {
      v85[(v77 >> 6) + 8] |= 1 << v77;
      (*(v110 + 16))(v85[6] + *(v110 + 72) * v77, v86, v54);
      *(v85[7] + 8 * v77) = MEMORY[0x277D84F90];
      v87 = v85[2];
      v70 = __OFADD__(v87, 1);
      v88 = v87 + 1;
      if (v70)
      {
        goto LABEL_62;
      }

      v85[2] = v88;
    }

    v89 = v85[7];
    v90 = *(v89 + 8 * v77);
    v91 = swift_isUniquelyReferenced_nonNull_native();
    *(v89 + 8 * v77) = v90;
    if ((v91 & 1) == 0)
    {
      v90 = sub_22FD91828(0, v90[2] + 1, 1, v90);
      *(v89 + 8 * v77) = v90;
    }

    v93 = v90[2];
    v92 = v90[3];
    if (v93 >= v92 >> 1)
    {
      v90 = sub_22FD91828(v92 > 1, v93 + 1, 1, v90);
      *(v89 + 8 * v77) = v90;
    }

    v27 = v114;
    v52 = v117 + 1;
    v90[2] = v93 + 1;
    v94 = v110;
    v118(v90 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v93, v111, v54);
    (*(v94 + 8))(v122, v54);
    v51 = sub_22FD8FDB0;
    v49 = sub_22FD8FD80;
    v95 = v108;
    if (v115 == v52)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  sub_22FE43D14();
  __break(1u);
LABEL_64:
  sub_22FE43D14();
  __break(1u);
}