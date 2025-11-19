void AsyncThrowingFlatMapSequence.Iterator.next()()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;
  v3;
  if (v0)
  {
    (*(v2[32] + 8))(v2[34], v2[27]);
    v4 = AsyncThrowingFlatMapSequence.Iterator.next();
  }

  else
  {
    v4 = AsyncThrowingFlatMapSequence.Iterator.next();
  }

  swift_task_switch(v4, 0, 0);
}

{
  v2 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;
  v2;
  if (v0)
  {
    v3 = AsyncThrowingFlatMapSequence.Iterator.next();
  }

  else
  {
    v3 = AsyncThrowingFlatMapSequence.Iterator.next();
  }

  swift_task_switch(v3, 0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;
  v3;
  v5 = v2[41];
  (*(v2[16] + 8))(v2[17], v2[12]);

  if (v0)
  {
    v6 = AsyncThrowingFlatMapSequence.Iterator.next();
  }

  else
  {
    v6 = AsyncThrowingFlatMapSequence.Iterator.next();
  }

  swift_task_switch(v6, 0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;
  v3;
  if (v0)
  {
    (*(v2[32] + 8))(v2[33], v2[27]);
    v4 = AsyncThrowingFlatMapSequence.Iterator.next();
  }

  else
  {
    (*(v2[6] + 8))(v2[9], v2[5]);
    v4 = AsyncThrowingFlatMapSequence.Iterator.next();
  }

  swift_task_switch(v4, 0, 0);
}

void AsyncThrowingFlatMapSequence.Iterator.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v9 = a4[3];
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc(v11 & 0xFFFFFFFFFFFFFFF0);
  v5[10] = swift_task_alloc(v11 & 0xFFFFFFFFFFFFFFF0);
  v5[11] = swift_task_alloc(v11 & 0xFFFFFFFFFFFFFFF0);
  v5[12] = a4[4];
  v5[13] = a4[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[14] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v5[15] = v13;
  v5[16] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_getAssociatedTypeWitness();
  v5[17] = v14;
  v15 = type metadata accessor for Optional();
  v5[18] = v15;
  v16 = *(v15 - 8);
  v5[19] = v16;
  v5[20] = swift_task_alloc((*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 - 8);
  v5[21] = v17;
  v5[22] = swift_task_alloc((*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[23] = a4[5];
  v18 = swift_getAssociatedTypeWitness();
  v5[24] = v18;
  v19 = type metadata accessor for Optional();
  v5[25] = v19;
  v20 = *(v19 - 8);
  v5[26] = v20;
  v21 = *(v20 + 64) + 15;
  v5[27] = swift_task_alloc(v21 & 0xFFFFFFFFFFFFFFF0);
  v5[28] = swift_task_alloc(v21 & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v18 - 8);
  v5[29] = v22;
  v23 = *(v22 + 64) + 15;
  v5[30] = swift_task_alloc(v23 & 0xFFFFFFFFFFFFFFF0);
  v5[31] = swift_task_alloc(v23 & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_getAssociatedTypeWitness();
  v5[32] = v24;
  v25 = *(v24 - 8);
  v5[33] = v25;
  v26 = *(v25 + 64) + 15;
  v5[34] = swift_task_alloc(v26 & 0xFFFFFFFFFFFFFFF0);
  v5[35] = swift_task_alloc(v26 & 0xFFFFFFFFFFFFFFF0);
  v5[36] = swift_task_alloc(v26 & 0xFFFFFFFFFFFFFFF0);
  v5[37] = swift_task_alloc(v26 & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_getAssociatedTypeWitness();
  v5[38] = v27;
  v28 = type metadata accessor for Optional();
  v5[39] = v28;
  v29 = *(v28 - 8);
  v5[40] = v29;
  v30 = *(v29 + 64) + 15;
  v5[41] = swift_task_alloc(v30 & 0xFFFFFFFFFFFFFFF0);
  v5[42] = swift_task_alloc(v30 & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v27 - 8);
  v5[43] = v31;
  v32 = *(v31 + 64) + 15;
  v5[44] = swift_task_alloc(v32 & 0xFFFFFFFFFFFFFFF0);
  v5[45] = swift_task_alloc(v32 & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v34 = (*(a3 + 8))(ObjectType, a3);
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v5[46] = v34;
  v5[47] = v36;

  swift_task_switch(AsyncThrowingFlatMapSequence.Iterator.next(isolation:), v34, v36);
}

uint64_t AsyncThrowingFlatMapSequence.Iterator.next(isolation:)()
{
  if (*(v0[6] + *(v0[5] + 60)))
  {
    v1 = v0[44];
    v2 = v0[45];
    v4 = v0[41];
    v3 = v0[42];
    v6 = v0[36];
    v5 = v0[37];
    v8 = v0[34];
    v7 = v0[35];
    v9 = v0[31];
    v39 = v0[30];
    v40 = v0[28];
    v41 = v0[27];
    v42 = v0[22];
    v43 = v0[20];
    v44 = v0[16];
    v45 = v0[11];
    v46 = v0[10];
    v48 = v0[9];
    (*(v0[29] + 56))(v0[2], 1, 1, v0[24]);
    v2;
    v1;
    v3;
    v4;
    v5;
    v6;
    v7;
    v8;
    v9;
    v39;
    v40;
    v41;
    v42;
    v43;
    v44;
    v45;
    v46;
    v48;
    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[42];
    v13 = v0[43];
    v14 = v0[38];
    AsyncFlatMapSequence.Iterator.currentIterator.getter();
    if ((*(v13 + 48))(v12, 1, v14) == 1)
    {
      v15 = v0[12];
      v16 = v0[13];
      (*(v0[40] + 8))(v0[42], v0[39]);
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v0[52] = AssociatedConformanceWitness;
      v18 = *(AssociatedConformanceWitness + 40);
      v19 = swift_checkMetadataState();
      v0[53] = v19;
      v47 = (v18 + *v18);
      v20 = swift_task_alloc(v18[1]);
      v0[54] = v20;
      *v20 = v0;
      v20[1] = AsyncThrowingFlatMapSequence.Iterator.next(isolation:);
      v21 = v0[20];
      v22 = v0[16];
      v23 = v0[6];
      v24 = v0[3];
      v25 = v0[4];
      v26 = v19;
      v27 = AssociatedConformanceWitness;
      v28 = v47;
    }

    else
    {
      v29 = v0[45];
      v30 = v0[42];
      v31 = v0[43];
      v32 = v0[38];
      v33 = v0[23];
      v34 = v0[7];
      v35 = *(v31 + 32);
      v0[48] = v35;
      v0[49] = (v31 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v35(v29, v30, v32);
      v36 = swift_getAssociatedConformanceWitness();
      v0[50] = v36;
      v49 = (*(v36 + 40) + **(v36 + 40));
      v37 = swift_task_alloc(*(*(v36 + 40) + 4));
      v0[51] = v37;
      *v37 = v0;
      v37[1] = AsyncThrowingFlatMapSequence.Iterator.next(isolation:);
      v38 = v0[45];
      v26 = v0[38];
      v22 = v0[36];
      v21 = v0[28];
      v24 = v0[3];
      v25 = v0[4];
      v27 = v36;
      v28 = v49;
    }

    return v28(v21, v24, v25, v22, v26, v27);
  }
}

{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[24];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[43];
    v5 = v0[41];
    v6 = v0[38];
    v7 = v0[25];
    v8 = v0[26];
    v10 = v0[5];
    v9 = v0[6];
    (*(v4 + 8))(v0[45], v6);
    (*(v8 + 8))(v1, v7);
    v11 = 1;
    (*(v4 + 56))(v5, 1, 1, v6);
    AsyncFlatMapSequence.Iterator.currentIterator.setter(v5, v10);
    if ((*(v0[6] + *(v0[5] + 60)) & 1) == 0)
    {
      v12 = v0[42];
      v13 = v0[43];
      v14 = v0[38];
      AsyncFlatMapSequence.Iterator.currentIterator.getter();
      if ((*(v13 + 48))(v12, 1, v14) == 1)
      {
        v15 = v0[12];
        v16 = v0[13];
        (*(v0[40] + 8))(v0[42], v0[39]);
        swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v0[52] = AssociatedConformanceWitness;
        v18 = *(AssociatedConformanceWitness + 40);
        v19 = swift_checkMetadataState();
        v0[53] = v19;
        v67 = (v18 + *v18);
        v20 = swift_task_alloc(v18[1]);
        v0[54] = v20;
        *v20 = v0;
        v20[1] = AsyncThrowingFlatMapSequence.Iterator.next(isolation:);
        v21 = v0[20];
        v22 = v0[16];
        v23 = v0[6];
        v24 = v0[3];
        v25 = v0[4];
        v26 = v19;
        v27 = AssociatedConformanceWitness;
        v28 = v67;
      }

      else
      {
        v46 = v0[45];
        v47 = v0[42];
        v48 = v0[43];
        v49 = v0[38];
        v50 = v0[23];
        v51 = v0[7];
        v52 = *(v48 + 32);
        v0[48] = v52;
        v0[49] = (v48 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v52(v46, v47, v49);
        v53 = swift_getAssociatedConformanceWitness();
        v0[50] = v53;
        v72 = (*(v53 + 40) + **(v53 + 40));
        v54 = swift_task_alloc(*(*(v53 + 40) + 4));
        v0[51] = v54;
        *v54 = v0;
        v54[1] = AsyncThrowingFlatMapSequence.Iterator.next(isolation:);
        v55 = v0[45];
        v26 = v0[38];
        v22 = v0[36];
        v21 = v0[28];
        v24 = v0[3];
        v25 = v0[4];
        v27 = v53;
        v28 = v72;
      }

      return v28(v21, v24, v25, v22, v26, v27);
    }
  }

  else
  {
    v61 = v0[48];
    v63 = v0[49];
    v29 = v0[45];
    v30 = v0[43];
    v31 = v0[41];
    v32 = v0[38];
    v33 = v0[31];
    v65 = v0[5];
    v68 = v0[6];
    v70 = v0[2];
    v34 = *(v2 + 32);
    v34(v33, v1, v3);
    v61(v31, v29, v32);
    (*(v30 + 56))(v31, 0, 1, v32);
    AsyncFlatMapSequence.Iterator.currentIterator.setter(v31, v65);
    v34(v70, v33, v3);
    v11 = 0;
  }

  v35 = v0[44];
  v36 = v0[45];
  v38 = v0[41];
  v37 = v0[42];
  v40 = v0[36];
  v39 = v0[37];
  v42 = v0[34];
  v41 = v0[35];
  v56 = v0[31];
  v57 = v0[30];
  v58 = v0[28];
  v59 = v0[27];
  v60 = v0[22];
  v62 = v0[20];
  v43 = v0[16];
  v64 = v43;
  v66 = v0[11];
  v69 = v0[10];
  v71 = v0[9];
  (*(v0[29] + 56))(v0[2], v11, 1, v0[24]);
  v36;
  v35;
  v37;
  v38;
  v39;
  v40;
  v41;
  v42;
  v56;
  v57;
  v58;
  v59;
  v60;
  v62;
  v64;
  v66;
  v69;
  v71;
  v44 = v0[1];

  return v44();
}

{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[17];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[19] + 8))(v1, v0[18]);
    v4 = v0[44];
    v5 = v0[45];
    v7 = v0[41];
    v6 = v0[42];
    v9 = v0[36];
    v8 = v0[37];
    v11 = v0[34];
    v10 = v0[35];
    v12 = v0[31];
    v22 = v0[30];
    v23 = v0[28];
    v24 = v0[27];
    v25 = v0[22];
    v26 = v0[20];
    v27 = v0[16];
    v28 = v0[11];
    v29 = v0[10];
    v30 = v0[9];
    (*(v0[29] + 56))(v0[2], 1, 1, v0[24]);
    v5;
    v4;
    v6;
    v7;
    v8;
    v9;
    v10;
    v11;
    v12;
    v22;
    v23;
    v24;
    v25;
    v26;
    v27;
    v28;
    v29;
    v30;
    v13 = v0[1];

    return v13();
  }

  else
  {
    v16 = v0[5];
    v15 = v0[6];
    (*(v2 + 32))(v0[22], v1, v3);
    v17 = (v15 + *(v16 + 52));
    v18 = *v17;
    v0[55] = v17[1];

    v31 = (v18 + *v18);
    v19 = swift_task_alloc(v18[1]);
    v0[56] = v19;
    *v19 = v0;
    v19[1] = AsyncThrowingFlatMapSequence.Iterator.next(isolation:);
    v20 = v0[22];
    v21 = v0[10];

    return v31(v21, v20);
  }
}

{
  v1 = v0[44];
  v2 = v0[38];
  v3 = v0[23];
  v4 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  (*(v6 + 32))(v4, v0[10], v7);
  (*(v6 + 16))(v5, v4, v7);
  (*(v3 + 40))(v7, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[58] = AssociatedConformanceWitness;
  v17 = (*(AssociatedConformanceWitness + 40) + **(AssociatedConformanceWitness + 40));
  v9 = swift_task_alloc(*(*(AssociatedConformanceWitness + 40) + 4));
  v0[59] = v9;
  *v9 = v0;
  v9[1] = AsyncThrowingFlatMapSequence.Iterator.next(isolation:);
  v10 = v0[44];
  v11 = v0[38];
  v12 = v0[35];
  v13 = v0[27];
  v14 = v0[3];
  v15 = v0[4];

  return v17(v13, v14, v15, v12, v11, AssociatedConformanceWitness);
}

{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[24];
  v4 = (*(v1 + 48))(v2, 1, v3);
  v6 = v0[43];
  v5 = v0[44];
  v7 = v0[41];
  v8 = v0[38];
  if (v4 == 1)
  {
    v9 = v0[25];
    v10 = v0[26];
    v12 = v0[5];
    v11 = v0[6];
    (*(v6 + 8))(v0[44], v0[38]);
    (*(v10 + 8))(v2, v9);
    v13 = 1;
    (*(v6 + 56))(v7, 1, 1, v8);
    AsyncFlatMapSequence.Iterator.currentIterator.setter(v7, v12);
    if (*(v0[6] + *(v0[5] + 60)) != 1)
    {
      v14 = v0[42];
      v15 = v0[43];
      v16 = v0[38];
      AsyncFlatMapSequence.Iterator.currentIterator.getter();
      if ((*(v15 + 48))(v14, 1, v16) == 1)
      {
        v17 = v0[12];
        v18 = v0[13];
        (*(v0[40] + 8))(v0[42], v0[39]);
        swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v0[52] = AssociatedConformanceWitness;
        v20 = *(AssociatedConformanceWitness + 40);
        v21 = swift_checkMetadataState();
        v0[53] = v21;
        v64 = (v20 + *v20);
        v22 = swift_task_alloc(v20[1]);
        v0[54] = v22;
        *v22 = v0;
        v22[1] = AsyncThrowingFlatMapSequence.Iterator.next(isolation:);
        v23 = v0[20];
        v24 = v0[16];
        v25 = v0[6];
        v26 = v0[3];
        v27 = v0[4];
        v28 = v21;
        v29 = AssociatedConformanceWitness;
        v30 = v64;
      }

      else
      {
        v45 = v0[45];
        v46 = v0[42];
        v47 = v0[43];
        v48 = v0[38];
        v49 = v0[23];
        v50 = v0[7];
        v51 = *(v47 + 32);
        v0[48] = v51;
        v0[49] = (v47 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v51(v45, v46, v48);
        v52 = swift_getAssociatedConformanceWitness();
        v0[50] = v52;
        v69 = (*(v52 + 40) + **(v52 + 40));
        v53 = swift_task_alloc(*(*(v52 + 40) + 4));
        v0[51] = v53;
        *v53 = v0;
        v53[1] = AsyncThrowingFlatMapSequence.Iterator.next(isolation:);
        v54 = v0[45];
        v28 = v0[38];
        v24 = v0[36];
        v23 = v0[28];
        v26 = v0[3];
        v27 = v0[4];
        v29 = v52;
        v30 = v69;
      }

      return v30(v23, v26, v27, v24, v28, v29);
    }
  }

  else
  {
    v31 = v0[30];
    v32 = v0[5];
    v62 = v31;
    v65 = v0[6];
    v67 = v0[2];
    v33 = *(v1 + 32);
    v33();
    (*(v6 + 32))(v7, v5, v8);
    (*(v6 + 56))(v7, 0, 1, v8);
    AsyncFlatMapSequence.Iterator.currentIterator.setter(v7, v32);
    (v33)(v67, v62, v3);
    v13 = 0;
  }

  v34 = v0[44];
  v35 = v0[45];
  v37 = v0[41];
  v36 = v0[42];
  v39 = v0[36];
  v38 = v0[37];
  v41 = v0[34];
  v40 = v0[35];
  v55 = v0[31];
  v56 = v0[30];
  v57 = v0[28];
  v58 = v0[27];
  v59 = v0[22];
  v60 = v0[20];
  v42 = v0[16];
  v61 = v42;
  v63 = v0[11];
  v66 = v0[10];
  v68 = v0[9];
  (*(v0[29] + 56))(v0[2], v13, 1, v0[24]);
  v35;
  v34;
  v36;
  v37;
  v38;
  v39;
  v40;
  v41;
  v55;
  v56;
  v57;
  v58;
  v59;
  v60;
  v61;
  v63;
  v66;
  v68;
  v43 = v0[1];

  return v43();
}

{
  v1 = v0[50];
  v2 = v0[37];
  v3 = v0[34];
  v4 = v0[32];
  v6 = v0[5];
  v5 = v0[6];
  v7 = *(v0[33] + 32);
  v7(v2, v0[36], v4);
  v7(v3, v2, v4);
  *(v5 + *(v6 + 60)) = 1;
  swift_getAssociatedConformanceWitness();
  swift_allocError();
  v7(v8, v3, v4);
  swift_willThrow();
  v9 = v0[44];
  v11 = v0[41];
  v10 = v0[42];
  v12 = v0[36];
  v13 = v0[37];
  v15 = v0[34];
  v14 = v0[35];
  v17 = v0[30];
  v16 = v0[31];
  v20 = v0[28];
  v21 = v0[27];
  v22 = v0[22];
  v23 = v0[20];
  v24 = v0[16];
  v25 = v0[11];
  v26 = v0[10];
  v27 = v0[9];
  v0[45];
  v9;
  v10;
  v11;
  v13;
  v12;
  v14;
  v15;
  v16;
  v17;
  v20;
  v21;
  v22;
  v23;
  v24;
  v25;
  v26;
  v27;
  v18 = v0[1];

  return v18();
}

{
  v1 = v0[52];
  v2 = v0[53];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  swift_getAssociatedConformanceWitness();
  swift_allocError();
  (*(v4 + 32))(v6, v3, v5);
  v7 = v0[44];
  v9 = v0[41];
  v8 = v0[42];
  v10 = v0[36];
  v11 = v0[37];
  v13 = v0[34];
  v12 = v0[35];
  v15 = v0[30];
  v14 = v0[31];
  v18 = v0[28];
  v19 = v0[27];
  v20 = v0[22];
  v21 = v0[20];
  v22 = v0[16];
  v23 = v0[11];
  v24 = v0[10];
  v25 = v0[9];
  v0[45];
  v7;
  v8;
  v9;
  v11;
  v10;
  v12;
  v13;
  v14;
  v15;
  v18;
  v19;
  v20;
  v21;
  v22;
  v23;
  v24;
  v25;
  v16 = v0[1];

  return v16();
}

{
  v1 = v0[57];
  v2 = v0[43];
  v3 = v0[41];
  v4 = v0[38];
  v5 = v0[5];
  *(v0[6] + *(v5 + 60)) = 1;
  (*(v2 + 56))(v3, 1, 1, v4);
  AsyncFlatMapSequence.Iterator.currentIterator.setter(v3, v5);
  swift_willThrow();
  if (!v1)
  {
    (*(v0[8] + 8))(v0[11], v0[7]);
  }

  v6 = v0[44];
  v8 = v0[41];
  v7 = v0[42];
  v9 = v0[36];
  v10 = v0[37];
  v12 = v0[34];
  v11 = v0[35];
  v13 = v0[30];
  v14 = v0[31];
  v17 = v0[28];
  v18 = v0[27];
  v19 = v0[22];
  v20 = v0[20];
  v21 = v0[16];
  v22 = v0[11];
  v23 = v0[10];
  v24 = v0[9];
  v0[45];
  v6;
  v7;
  v8;
  v10;
  v9;
  v11;
  v12;
  v14;
  v13;
  v17;
  v18;
  v19;
  v20;
  v21;
  v22;
  v23;
  v24;
  v15 = v0[1];

  return v15();
}

{
  v1 = v0[58];
  v2 = v0[38];
  v3 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  swift_getAssociatedConformanceWitness();
  swift_allocError();
  (*(v4 + 32))(v6, v3, v5);
  v7 = v0[57];
  v8 = v0[43];
  v9 = v0[41];
  v10 = v0[38];
  v11 = v0[5];
  *(v0[6] + *(v11 + 60)) = 1;
  (*(v8 + 56))(v9, 1, 1, v10);
  AsyncFlatMapSequence.Iterator.currentIterator.setter(v9, v11);
  swift_willThrow();
  if (!v7)
  {
    (*(v0[8] + 8))(v0[11], v0[7]);
  }

  v12 = v0[44];
  v14 = v0[41];
  v13 = v0[42];
  v15 = v0[36];
  v16 = v0[37];
  v18 = v0[34];
  v17 = v0[35];
  v20 = v0[30];
  v19 = v0[31];
  v23 = v0[28];
  v24 = v0[27];
  v25 = v0[22];
  v26 = v0[20];
  v27 = v0[16];
  v28 = v0[11];
  v29 = v0[10];
  v30 = v0[9];
  v0[45];
  v12;
  v13;
  v14;
  v16;
  v15;
  v17;
  v18;
  v19;
  v20;
  v23;
  v24;
  v25;
  v26;
  v27;
  v28;
  v29;
  v30;
  v21 = v0[1];

  return v21();
}

void AsyncThrowingFlatMapSequence.Iterator.next(isolation:)()
{
  v2 = *v1;
  v6 = *v1;
  *(*v1 + 408);
  if (v0)
  {
    (*(v2[43] + 8))(v2[45], v2[38]);
    v3 = v2[46];
    v4 = v2[47];
    v5 = AsyncThrowingFlatMapSequence.Iterator.next(isolation:);
  }

  else
  {
    v3 = v2[46];
    v4 = v2[47];
    v5 = AsyncThrowingFlatMapSequence.Iterator.next(isolation:);
  }

  swift_task_switch(v5, v3, v4);
}

{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 432);
  v4 = *(v2 + 376);
  v5 = *(v2 + 368);
  if (v0)
  {
    v6 = AsyncThrowingFlatMapSequence.Iterator.next(isolation:);
  }

  else
  {
    v6 = AsyncThrowingFlatMapSequence.Iterator.next(isolation:);
  }

  swift_task_switch(v6, v5, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *v1;
  *(*v1 + 456) = v0;
  v3;
  v5 = v2[55];
  (*(v2[21] + 8))(v2[22], v2[17]);

  v6 = v2[47];
  v7 = v2[46];
  if (v0)
  {
    v8 = AsyncThrowingFlatMapSequence.Iterator.next(isolation:);
  }

  else
  {
    v8 = AsyncThrowingFlatMapSequence.Iterator.next(isolation:);
  }

  swift_task_switch(v8, v7, v6);
}

{
  v2 = *v1;
  v6 = *v1;
  *(*v1 + 472);
  if (v0)
  {
    (*(v2[43] + 8))(v2[44], v2[38]);
    v3 = v2[46];
    v4 = v2[47];
    v5 = AsyncThrowingFlatMapSequence.Iterator.next(isolation:);
  }

  else
  {
    (*(v2[8] + 8))(v2[11], v2[7]);
    v3 = v2[46];
    v4 = v2[47];
    v5 = AsyncThrowingFlatMapSequence.Iterator.next(isolation:);
  }

  swift_task_switch(v5, v3, v4);
}

void protocol witness for AsyncIteratorProtocol.next() in conformance AsyncThrowingFlatMapSequence<A, B>.Iterator(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc(368);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  AsyncThrowingFlatMapSequence.Iterator.next()(a1, a2);
}

void _ss28AsyncThrowingFlatMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(v5 + 16) = a4;
  v10 = swift_task_alloc(480);
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = _ss31AsyncThrowingCompactMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  AsyncThrowingFlatMapSequence.Iterator.next(isolation:)(a1, a2, a3, a5);
}

uint64_t AsyncFlatMapSequence.makeAsyncIterator()(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t, void, uint64_t, void))
{
  v22 = a2;
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v15 = &v21 - v14;
  (*(v6 + 16))(v10, v3, v5);
  (*(v11 + 40))(v5, v11);
  v16 = (v3 + *(a1 + 52));
  v17 = *v16;
  v18 = v16[1];
  v19 = *(*(a1 - 8) + 8);

  v19(v3, a1);
  return v22(v15, v17, v18, v5, *(a1 + 24), v11, *(a1 + 40));
}

uint64_t AsyncSequence.compactMap<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, v7);
  v15 = (a7 + *(a6(0, a3, a4, a5) + 44));
  *v15 = a1;
  v15[1] = a2;
}

uint64_t AsyncCompactMapSequence.init(_:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t)@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  result = a7(0, a4, a5, a6);
  v16 = (a8 + *(result + 44));
  *v16 = a2;
  v16[1] = a3;
  return result;
}

uint64_t AsyncCompactMapSequence.Iterator.baseIterator.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(a2, v2, AssociatedTypeWitness);
}

uint64_t AsyncCompactMapSequence.Iterator.baseIterator.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 40);

  return v7(v2, a1, AssociatedTypeWitness);
}

uint64_t (*AsyncThrowingMapSequence.Iterator.finished.modify(uint64_t a1, uint64_t a2))()
{
  result = UnownedSerialExecutor.executor.modify;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t AsyncThrowingCompactMapSequence.Iterator.init(_:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t)@<X6>, uint64_t a8@<X8>)
{
  v12 = a7(0, a4, a5, a6);
  *(a8 + *(v12 + 48)) = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a8, a1, AssociatedTypeWitness);
  v15 = (a8 + *(v12 + 44));
  *v15 = a2;
  v15[1] = a3;
  return result;
}

void AsyncThrowingMapSequence.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a2 + 32);
  v3[6] = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[7] = AssociatedTypeWitness;
  v5 = type metadata accessor for Optional();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v3[10] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(AssociatedTypeWitness - 8);
  v3[11] = v7;
  v3[12] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(AsyncThrowingMapSequence.Iterator.next(), 0, 0);
}

uint64_t AsyncThrowingMapSequence.Iterator.next()()
{
  v1 = v0[3];
  if (*(v0[4] + *(v1 + 48)))
  {
    v2 = v0[12];
    v3 = v0[10];
    (*(*(*(v1 + 24) - 8) + 56))(v0[2], 1, 1);
    v2;
    v3;
    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[5];
    v7 = v0[6];
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v9 = *(AssociatedConformanceWitness + 32);
    v10 = swift_checkMetadataState();
    v14 = (v9 + *v9);
    v11 = swift_task_alloc(v9[1]);
    v0[13] = v11;
    *v11 = v0;
    v11[1] = AsyncThrowingMapSequence.Iterator.next();
    v12 = v0[10];
    v13 = v0[4];

    return v14(v12, v10, AssociatedConformanceWitness);
  }
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[9] + 8))(v1, v0[8]);
    v4 = v0[12];
    v5 = v0[10];
    (*(*(*(v0[3] + 24) - 8) + 56))(v0[2], 1, 1);
    v4;
    v5;
    v6 = v0[1];

    return v6();
  }

  else
  {
    v9 = v0[3];
    v8 = v0[4];
    (*(v2 + 32))(v0[12], v1, v3);
    v10 = (v8 + *(v9 + 44));
    v11 = *v10;
    v0[15] = v10[1];

    v15 = (v11 + *v11);
    v12 = swift_task_alloc(v11[1]);
    v0[16] = v12;
    *v12 = v0;
    v12[1] = AsyncThrowingMapSequence.Iterator.next();
    v13 = v0[12];
    v14 = v0[2];

    return v15(v14, v13);
  }
}

{
  v1 = v0[12];
  v2 = v0[10];
  (*(*(*(v0[3] + 24) - 8) + 56))(v0[2], 0, 1);
  v1;
  v2;
  v3 = v0[1];

  return v3();
}

{
  v1 = v0[14];
  v2 = v0[10];
  v0[12];
  v2;
  v3 = v0[1];

  return v3();
}

{
  v1 = v0[17];
  *(v0[4] + *(v0[3] + 48)) = 1;
  swift_willThrow();
  v2 = v0[17];
  v3 = v0[10];
  v0[12];
  v3;
  v4 = v0[1];

  return v4();
}

void AsyncThrowingMapSequence.Iterator.next()()
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = AsyncThrowingMapSequence.Iterator.next();
  }

  else
  {
    v3 = AsyncThrowingMapSequence.Iterator.next();
  }

  swift_task_switch(v3, 0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;
  v3;
  v5 = v2[15];
  v6 = v2[12];
  v7 = v2[11];
  v8 = v2[7];
  if (v0)
  {
    v9 = v2[15];

    (*(v7 + 8))(v6, v8);
    v10 = AsyncThrowingMapSequence.Iterator.next();
  }

  else
  {
    (*(v7 + 8))(v2[12], v2[7]);

    v10 = AsyncThrowingMapSequence.Iterator.next();
  }

  swift_task_switch(v10, 0, 0);
}

void AsyncThrowingMapSequence.Iterator.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *(a4 + 32);
  v5[8] = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[9] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v5[10] = v9;
  v5[11] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v5[12] = v10;
  v11 = type metadata accessor for Optional();
  v5[13] = v11;
  v12 = *(v11 - 8);
  v5[14] = v12;
  v5[15] = swift_task_alloc((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 - 8);
  v5[16] = v13;
  v5[17] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v15 = (*(a3 + 8))(ObjectType, a3);
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v5[18] = v15;
  v5[19] = v17;

  swift_task_switch(AsyncThrowingMapSequence.Iterator.next(isolation:), v15, v17);
}

uint64_t AsyncThrowingMapSequence.Iterator.next(isolation:)()
{
  v1 = v0[5];
  if (*(v0[6] + *(v1 + 48)))
  {
    v2 = v0[17];
    v3 = v0[15];
    v4 = v0[11];
    (*(*(*(v1 + 24) - 8) + 56))(v0[2], 1, 1);
    v2;
    v3;
    v4;
    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[7];
    v8 = v0[8];
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v0[20] = AssociatedConformanceWitness;
    v10 = *(AssociatedConformanceWitness + 40);
    v11 = swift_checkMetadataState();
    v0[21] = v11;
    v18 = (v10 + *v10);
    v12 = swift_task_alloc(v10[1]);
    v0[22] = v12;
    *v12 = v0;
    v12[1] = AsyncThrowingMapSequence.Iterator.next(isolation:);
    v13 = v0[15];
    v14 = v0[11];
    v15 = v0[6];
    v16 = v0[3];
    v17 = v0[4];

    return v18(v13, v16, v17, v14, v11, AssociatedConformanceWitness);
  }
}

{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[12];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[14] + 8))(v1, v0[13]);
    v4 = v0[17];
    v5 = v0[15];
    v6 = v0[11];
    (*(*(*(v0[5] + 24) - 8) + 56))(v0[2], 1, 1);
    v4;
    v5;
    v6;
    v7 = v0[1];

    return v7();
  }

  else
  {
    v10 = v0[5];
    v9 = v0[6];
    (*(v2 + 32))(v0[17], v1, v3);
    v11 = (v9 + *(v10 + 44));
    v12 = *v11;
    v0[23] = v11[1];

    v16 = (v12 + *v12);
    v13 = swift_task_alloc(v12[1]);
    v0[24] = v13;
    *v13 = v0;
    v13[1] = AsyncThrowingMapSequence.Iterator.next(isolation:);
    v14 = v0[17];
    v15 = v0[2];

    return v16(v15, v14);
  }
}

{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[11];
  (*(*(*(v0[5] + 24) - 8) + 56))(v0[2], 0, 1);
  v1;
  v2;
  v3;
  v4 = v0[1];

  return v4();
}

{
  v1 = v0[25];
  *(v0[6] + *(v0[5] + 48)) = 1;
  swift_willThrow();
  v2 = v0[25];
  v3 = v0[15];
  v4 = v0[11];
  v0[17];
  v3;
  v4;
  v5 = v0[1];

  return v5();
}

void AsyncThrowingMapSequence.Iterator.next(isolation:)()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 176);
  v4 = *(v2 + 152);
  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = AsyncThrowingFilterSequence.Iterator.next(isolation:);
  }

  else
  {
    v6 = AsyncThrowingMapSequence.Iterator.next(isolation:);
  }

  swift_task_switch(v6, v5, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  v2[25] = v0;
  v3;
  v5 = v2[23];
  v6 = v2[17];
  v7 = v2[16];
  v8 = v2[12];
  if (v0)
  {
    v9 = v2[23];

    (*(v7 + 8))(v6, v8);
    v10 = v2[18];
    v11 = v2[19];
    v12 = AsyncThrowingMapSequence.Iterator.next(isolation:);
  }

  else
  {
    (*(v7 + 8))(v2[17], v2[12]);

    v10 = v2[18];
    v11 = v2[19];
    v12 = AsyncThrowingMapSequence.Iterator.next(isolation:);
  }

  swift_task_switch(v12, v10, v11);
}

void protocol witness for AsyncIteratorProtocol.next() in conformance AsyncThrowingMapSequence<A, B>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc(144);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  AsyncThrowingMapSequence.Iterator.next()(a1, a2);
}

void _ss24AsyncThrowingMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v10 = swift_task_alloc(208);
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = _ss24AsyncThrowingMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  AsyncThrowingMapSequence.Iterator.next(isolation:)(a1, a2, a3, a5);
}

uint64_t _ss24AsyncThrowingMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 24);
  if (v0)
  {
    **(v2 + 16) = v0;
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t AsyncSequence.prefix(while:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  (*(*(a3 - 8) + 32))(a6, v6);
  v13 = (a6 + *(a5(0, a3, a4) + 36));
  *v13 = a1;
  v13[1] = a2;
}

uint64_t AsyncDropWhileSequence.init(_:predicate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  result = a6(0, a4, a5);
  v14 = (a7 + *(result + 36));
  *v14 = a2;
  v14[1] = a3;
  return result;
}

uint64_t AsyncPrefixWhileSequence.Iterator.baseIterator.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 16);

  return v8(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t AsyncPrefixWhileSequence.Iterator.baseIterator.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 40);

  return v8(v2 + v4, a1, AssociatedTypeWitness);
}

uint64_t (*AsyncThrowingPrefixWhileSequence.Iterator.baseIterator.modify(uint64_t a1, uint64_t a2))()
{
  result = UnownedSerialExecutor.executor.modify;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t AsyncPrefixWhileSequence.Iterator.init(_:predicate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, uint64_t, uint64_t)@<X5>, _BYTE *a7@<X8>)
{
  *a7 = 0;
  v11 = a6(0, a4, a5);
  v12 = *(v11 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(&a7[v12], a1, AssociatedTypeWitness);
  v15 = &a7[*(v11 + 40)];
  *v15 = a2;
  v15[1] = a3;
  return result;
}

void AsyncThrowingPrefixWhileSequence.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a2 + 24);
  v3[6] = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[7] = AssociatedTypeWitness;
  v5 = type metadata accessor for Optional();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v3[10] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(AssociatedTypeWitness - 8);
  v3[11] = v7;
  v3[12] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(AsyncThrowingPrefixWhileSequence.Iterator.next(), 0, 0);
}

uint64_t AsyncThrowingPrefixWhileSequence.Iterator.next()()
{
  if (**(v0 + 32))
  {
    v1 = *(v0 + 96);
    v2 = *(v0 + 80);
    (*(*(v0 + 88) + 56))(*(v0 + 16), 1, 1, *(v0 + 56));
    v1;
    v2;
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    v7 = *(*(v0 + 24) + 36);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v9 = *(AssociatedConformanceWitness + 32);
    v10 = swift_checkMetadataState();
    v13 = (v9 + *v9);
    v11 = swift_task_alloc(v9[1]);
    *(v0 + 104) = v11;
    *v11 = v0;
    v11[1] = AsyncThrowingPrefixWhileSequence.Iterator.next();
    v12 = *(v0 + 80);

    return v13(v12, v10, AssociatedConformanceWitness);
  }
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[9] + 8))(v1, v0[8]);
    v4 = v0[12];
    v5 = v0[10];
    (*(v0[11] + 56))(v0[2], 1, 1, v0[7]);
    v4;
    v5;
    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[12];
    v10 = v0[3];
    v9 = v0[4];
    v11 = *(v2 + 32);
    v0[15] = v11;
    v0[16] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v11(v8, v1, v3);
    v12 = (v9 + *(v10 + 40));
    v13 = *v12;
    v0[17] = v12[1];

    v16 = (v13 + *v13);
    v14 = swift_task_alloc(v13[1]);
    v0[18] = v14;
    *v14 = v0;
    v14[1] = AsyncThrowingPrefixWhileSequence.Iterator.next();
    v15 = v0[12];

    return v16(v15);
  }
}

{
  if (*(v0 + 160) == 1)
  {
    v1 = *(v0 + 128);
    (*(v0 + 120))(*(v0 + 16), *(v0 + 96), *(v0 + 56));
    v2 = 0;
  }

  else
  {
    v3 = *(v0 + 32);
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 56));
    v2 = 1;
    *v3 = 1;
  }

  v4 = *(v0 + 96);
  v5 = *(v0 + 80);
  (*(*(v0 + 88) + 56))(*(v0 + 16), v2, 1, *(v0 + 56));
  v4;
  v5;
  v6 = *(v0 + 8);

  return v6();
}

{
  v1 = *(v0 + 152);
  **(v0 + 32) = 1;
  swift_willThrow();
  v2 = *(v0 + 152);
  v3 = *(v0 + 80);
  *(v0 + 96);
  v3;
  v4 = *(v0 + 8);

  return v4();
}

void AsyncThrowingPrefixWhileSequence.Iterator.next()()
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = AsyncThrowingDropWhileSequence.Iterator.next();
  }

  else
  {
    v3 = AsyncThrowingPrefixWhileSequence.Iterator.next();
  }

  swift_task_switch(v3, 0, 0);
}

void AsyncThrowingPrefixWhileSequence.Iterator.next()(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *(*v2 + 136);
  v7 = *v2;
  *(*v2 + 152) = v1;
  v5;

  if (v1)
  {
    (*(*(v4 + 88) + 8))(*(v4 + 96), *(v4 + 56));
    v8 = AsyncThrowingPrefixWhileSequence.Iterator.next();
  }

  else
  {
    *(v4 + 160) = a1 & 1;
    v8 = AsyncThrowingPrefixWhileSequence.Iterator.next();
  }

  swift_task_switch(v8, 0, 0);
}

void AsyncThrowingPrefixWhileSequence.Iterator.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *(a4 + 24);
  v5[8] = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[9] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v5[10] = v9;
  v5[11] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v5[12] = v10;
  v11 = type metadata accessor for Optional();
  v5[13] = v11;
  v12 = *(v11 - 8);
  v5[14] = v12;
  v5[15] = swift_task_alloc((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 - 8);
  v5[16] = v13;
  v5[17] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v15 = (*(a3 + 8))(ObjectType, a3);
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v5[18] = v15;
  v5[19] = v17;

  swift_task_switch(AsyncThrowingPrefixWhileSequence.Iterator.next(isolation:), v15, v17);
}

uint64_t AsyncThrowingPrefixWhileSequence.Iterator.next(isolation:)()
{
  if (**(v0 + 48))
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 120);
    v3 = *(v0 + 88);
    (*(*(v0 + 128) + 56))(*(v0 + 16), 1, 1, *(v0 + 96));
    v1;
    v2;
    v3;
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);
    v8 = *(*(v0 + 40) + 36);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *(v0 + 160) = AssociatedConformanceWitness;
    v10 = *(AssociatedConformanceWitness + 40);
    v11 = swift_checkMetadataState();
    *(v0 + 168) = v11;
    v17 = (v10 + *v10);
    v12 = swift_task_alloc(v10[1]);
    *(v0 + 176) = v12;
    *v12 = v0;
    v12[1] = AsyncThrowingPrefixWhileSequence.Iterator.next(isolation:);
    v13 = *(v0 + 120);
    v14 = *(v0 + 88);
    v15 = *(v0 + 24);
    v16 = *(v0 + 32);

    return v17(v13, v15, v16, v14, v11, AssociatedConformanceWitness);
  }
}

{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[12];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[14] + 8))(v1, v0[13]);
    v4 = v0[17];
    v5 = v0[15];
    v6 = v0[11];
    (*(v0[16] + 56))(v0[2], 1, 1, v0[12]);
    v4;
    v5;
    v6;
    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[17];
    v11 = v0[5];
    v10 = v0[6];
    v12 = *(v2 + 32);
    v0[23] = v12;
    v0[24] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v12(v9, v1, v3);
    v13 = (v10 + *(v11 + 40));
    v14 = *v13;
    v0[25] = v13[1];

    v17 = (v14 + *v14);
    v15 = swift_task_alloc(v14[1]);
    v0[26] = v15;
    *v15 = v0;
    v15[1] = AsyncThrowingPrefixWhileSequence.Iterator.next(isolation:);
    v16 = v0[17];

    return v17(v16);
  }
}

{
  if (*(v0 + 224) == 1)
  {
    v1 = *(v0 + 192);
    (*(v0 + 184))(*(v0 + 16), *(v0 + 136), *(v0 + 96));
    v2 = 0;
  }

  else
  {
    v3 = *(v0 + 48);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 96));
    v2 = 1;
    *v3 = 1;
  }

  v4 = *(v0 + 136);
  v5 = *(v0 + 120);
  v6 = *(v0 + 88);
  (*(*(v0 + 128) + 56))(*(v0 + 16), v2, 1, *(v0 + 96));
  v4;
  v5;
  v6;
  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = *(v0 + 216);
  **(v0 + 48) = 1;
  swift_willThrow();
  v2 = *(v0 + 216);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);
  *(v0 + 136);
  v3;
  v4;
  v5 = *(v0 + 8);

  return v5();
}

void AsyncThrowingPrefixWhileSequence.Iterator.next(isolation:)()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 176);
  v4 = *(v2 + 152);
  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = AsyncThrowingPrefixWhileSequence.Iterator.next(isolation:);
  }

  else
  {
    v6 = AsyncThrowingPrefixWhileSequence.Iterator.next(isolation:);
  }

  swift_task_switch(v6, v5, v4);
}

void AsyncThrowingPrefixWhileSequence.Iterator.next(isolation:)(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *(*v2 + 200);
  v10 = *v2;
  *(*v2 + 216) = v1;
  v5;

  if (v1)
  {
    (*(*(v4 + 128) + 8))(*(v4 + 136), *(v4 + 96));
    v7 = *(v4 + 144);
    v8 = *(v4 + 152);
    v9 = AsyncThrowingPrefixWhileSequence.Iterator.next(isolation:);
  }

  else
  {
    *(v4 + 224) = a1 & 1;
    v7 = *(v4 + 144);
    v8 = *(v4 + 152);
    v9 = AsyncThrowingPrefixWhileSequence.Iterator.next(isolation:);
  }

  swift_task_switch(v9, v7, v8);
}

void protocol witness for AsyncIteratorProtocol.next() in conformance AsyncThrowingPrefixWhileSequence<A>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc(176);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  AsyncThrowingPrefixWhileSequence.Iterator.next()(a1, a2);
}

void _ss32AsyncThrowingPrefixWhileSequenceV8IteratorVyx_GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v10 = swift_task_alloc(240);
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = _ss31AsyncThrowingCompactMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  AsyncThrowingPrefixWhileSequence.Iterator.next(isolation:)(a1, a2, a3, a5);
}

uint64_t UnownedJob.description.getter(uint64_t a1)
{
  if (!swift_task_getJobTaskId(a1))
  {
    return 0xD000000000000013;
  }

  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865D3D30](v1);

  MEMORY[0x1865D3D30](41, 0xE100000000000000);
  return 0x4A64656E776F6E55;
}

uint64_t Job.description.getter(uint64_t a1)
{
  if (swift_task_getJobTaskId(a1))
  {
    v1 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865D3D30](v1);

    MEMORY[0x1865D3D30](41, 0xE100000000000000);
  }

  return 0x203A646928626F4ALL;
}

uint64_t _ss11ExecutorJobV010withUnsafeA11PrivateData4bodyxxSwq_YKXE_tq_YKs5ErrorR_r0_lF(uint64_t (*a1)(uint64_t, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  ExecutorPrivateData = swift_job_getExecutorPrivateData(v15);
  result = a1(ExecutorPrivateData, ExecutorPrivateData + 16, v14);
  if (v7)
  {
    return (*(v11 + 32))(a7, v14, a5);
  }

  return result;
}

unint64_t ExecutorJob.description.getter(uint64_t a1)
{
  if (!swift_task_getJobTaskId(a1))
  {
    return 0xD000000000000014;
  }

  _StringGuts.grow(_:)(19);

  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865D3D30](v1);

  MEMORY[0x1865D3D30](41, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t ExecutorJob.allocator.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = swift_job_getKind(a1);
  if (result)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1;
  }

  *a2 = v5;
  return result;
}

uint64_t ExecutorJob.LocalAllocator.allocate(capacity:)(uint64_t a1)
{
  result = swift_job_allocate(*v1, a1);
  if (a1 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ExecutorJob.LocalAllocator.allocate<A>(capacity:as:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 72);
  if ((v5 * result) >> 64 == (v5 * result) >> 63)
  {
    swift_job_allocate(*v3, v5 * result);

    return UnsafeMutableBufferPointer.init(start:count:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ExecutorJob.LocalAllocator.deallocate(_:)(uint64_t *a1, uint64_t a2, const char *a3, char *a4)
{
  if (a1)
  {
    v6 = *v4;

    return swift_job_deallocate(v6, a1, a3, a4);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ExecutorJob.LocalAllocator.deallocate<A>(_:)()
{
  v1 = *v0;
  v2 = UnsafeMutableBufferPointer.baseAddress.getter();
  if (v2)
  {

    return swift_job_deallocate(v1, v2, v3, v4);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t TaskPriority.init(_:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = result;
  a2[1] = result == 0;
  return result;
}

void withUnsafeContinuation<A>(isolation:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v8 = (*(a3 + 8))(ObjectType, a3);
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  swift_task_switch(withUnsafeContinuation<A>(isolation:_:), v8, v10);
}

void withUnsafeContinuation<A>(isolation:_:)()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = _unsafeInheritExecutor_withUnsafeContinuation<A>(_:);
  v4 = swift_continuation_init(v0 + 2, 0);
  v2(v4);

  swift_continuation_await((v0 + 2));
}

void withUnsafeThrowingContinuation<A>(isolation:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v8 = (*(a3 + 8))(ObjectType, a3);
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  swift_task_switch(withUnsafeThrowingContinuation<A>(isolation:_:), v8, v10);
}

void withUnsafeThrowingContinuation<A>(isolation:_:)()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = withUnsafeThrowingContinuation<A>(isolation:_:);
  v4 = swift_continuation_init(v0 + 2, 1uLL);
  v2(v4);

  swift_continuation_await((v0 + 2));
}

uint64_t withUnsafeThrowingContinuation<A>(isolation:_:)()
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

uint64_t static GlobalActor.sharedUnownedExecutor.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 8);
  v4 = swift_checkMetadataState();
  v5 = v3(v4, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t _ss24globalConcurrentExecutorSch_pvg()
{
  swift_createDefaultExecutorsOnce();
  if (_sScTss5NeverORszABRs_rlE16_defaultExecutorSch_pSgvpZ)
  {
    return swift_unknownObjectRetain();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for MainActor();
  result = swift_initStaticObject();
  static MainActor.shared = result;
  return result;
}

void static MainActor.run<A>(resultType:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  swift_initStaticObject();
  MainExecutor = swift_task_getMainExecutor();

  swift_task_switch(static MainActor.run<A>(resultType:body:), MainExecutor, v5);
}

uint64_t static MainActor.run<A>(resultType:body:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  (*(v0 + 24))();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t static MainActor.assumeIsolated<A>(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  MainExecutor = swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor(MainExecutor, v12) & 1) == 0)
  {
    goto LABEL_10;
  }

  v13 = swift_allocObject();
  v13[2] = a7;
  v13[3] = a1;
  v13[4] = a2;
  partial apply for thunk for @callee_guaranteed () -> (@out A, @error @owned Error)();
  if (v7)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v16 = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
LABEL_10:
    _StringGuts.grow(_:)(66);
    MEMORY[0x1865D3D30](0xD00000000000003FLL, 0x800000018161DC90);
    v17 = _typeName(_:qualified:)();
    MEMORY[0x1865D3D30](v17);

    MEMORY[0x1865D3D30](46, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  return static MainActor.assumeIsolated<A>(_:file:line:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t specialized PriorityQueue.upHeap(ndx:)(unint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if (a1 >= 1)
    {
      goto LABEL_3;
    }

LABEL_8:
    *v2 = v4;
    return result;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  v4 = result;
  if (a1 < 1)
  {
    goto LABEL_8;
  }

LABEL_3:
  v6 = v4 + 32;
  while (a1 < *(v4 + 16))
  {
    v7 = a1 >> 1;
    v8 = v2[1];
    v9 = v2[2];
    v10 = *(v6 + 8 * a1);
    v13 = *(v6 + 8 * (a1 >> 1));
    v14 = v10;
    result = v8(&v14, &v13);
    if ((result & 1) == 0)
    {
      goto LABEL_8;
    }

    if (a1 >= *(v4 + 16))
    {
      break;
    }

    v11 = *(v6 + 8 * a1);
    *(v6 + 8 * a1) = *(v6 + 8 * v7);
    *(v6 + 8 * v7) = v11;
    v12 = a1 > 1;
    a1 >>= 1;
    if (!v12)
    {
      goto LABEL_8;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t specialized MutableCollection.swapAt(_:_:)(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    v4 = result;
    v5 = *v2;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(result, 1, *v2);
    v6 = *(v5 + 32 + 8 * v4);
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(a2, 1, v5);
    v7 = *(v5 + 32 + 8 * a2);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      v5 = result;
    }

    *(v5 + 32 + 8 * v4) = v7;
    *(v5 + 32 + 8 * a2) = v6;
    *v2 = v5;
  }

  return result;
}

uint64_t specialized RangeReplaceableCollection<>.removeLast()()
{
  if (*(*v0 + 16))
  {
    result = specialized Array._customRemoveLast()();
    if (!result)
    {
      v2 = *(*v0 + 16) - 1;

      return specialized Array.remove(at:)(v2);
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void specialized PriorityQueue.downHeap(ndx:)()
{
  v1 = *v0;
  if (*(*v0 + 16))
  {
    v2 = v0;
    v3 = *v0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    }

    v4 = 0;
    v5 = 0;
    v7 = v2[1];
    v6 = v2[2];
    v8 = v1 + 32;
    v9 = *(v1 + 16);
    while (v5 < v9)
    {
      v16 = *(v8 + 8 * v5);
      if (v4 >= v9)
      {
        break;
      }

      v10 = v5 | 1;
      v15 = *(v8 + 8 * v4);
      if (v7(&v16, &v15))
      {
        v11 = v5;
      }

      else
      {
        v11 = v4;
      }

      v12 = *(v1 + 16);
      if (v10 < v12)
      {
        v16 = *(v8 + 8 * v10);
        if (v11 >= v12)
        {
          break;
        }

        v15 = *(v8 + 8 * v11);
        if (v7(&v16, &v15))
        {
          v11 = v5 | 1;
        }
      }

      if (v11 == v4)
      {
LABEL_18:
        *v2 = v1;
        return;
      }

      v13 = *(v1 + 16);
      if (v4 >= v13 || v11 >= v13)
      {
        break;
      }

      v14 = *(v8 + 8 * v4);
      *(v8 + 8 * v4) = *(v8 + 8 * v11);
      *(v8 + 8 * v11) = v14;
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        goto LABEL_21;
      }

      v5 = 2 * v11;
      v9 = *(v1 + 16);
      v4 = v11;
      if (2 * v11 >= v9)
      {
        goto LABEL_18;
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void static Task<>.yield()()
{
  swift_task_switch(static Task<>.yield(), 0, 0);
}

{
  v7 = v0;
  *(v0 + 16) = v0;
  *(v0 + 24) = _unsafeInheritExecutor_withUnsafeContinuation<A>(_:);
  v1 = swift_continuation_init((v0 + 16), 0);
  static Task<>.currentPriority.getter(&v6);
  NullaryContinuationJob = swift_task_createNullaryContinuationJob(v6, v1);
  specialized static Task<>.currentExecutor.getter();
  v4 = v3;
  ObjectType = swift_getObjectType();
  (*(v4 + 24))(NullaryContinuationJob, ObjectType, v4);
  swift_unknownObjectRelease();

  swift_continuation_await(v0 + 16);
}

uint64_t withTaskCancellationHandler<A>(operation:onCancel:)(uint64_t a1, int *a2, uint64_t a3, swift *a4, uint64_t a5)
{
  *(v5 + 16) = swift_task_addCancellationHandler(a4, a5);
  v10 = (a2 + *a2);
  v8 = swift_task_alloc(a2[1]);
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = withTaskCancellationHandler<A>(operation:onCancel:);

  return v10(a1);
}

uint64_t withTaskCancellationHandler<A>(operation:onCancel:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;
  *(*v0 + 24);
  swift_task_removeCancellationHandler(v1);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t Task.result.getter(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a1;
  v5[4] = a3;
  v8 = swift_task_alloc(64);
  v5[7] = v8;
  *v8 = v5;
  v8[1] = Task.result.getter;

  return Task.value.getter(a1, a2);
}

void Task.result.getter()
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;
  v2;
  if (v0)
  {
    v3 = Task.result.getter;
  }

  else
  {
    v3 = Task.result.getter;
  }

  swift_task_switch(v3, 0, 0);
}

uint64_t Task.result.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  type metadata accessor for Result();
  swift_storeEnumTagMultiPayload();
  v5 = v0[1];

  return v5();
}

{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v0[2] = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();
  type metadata accessor for Result();
  swift_storeEnumTagMultiPayload();
  v5 = v0[1];

  return v5();
}

Swift::Int Task.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1865D4230](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Task<A, B>()
{
  Hasher.init(_seed:)();
  Task.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

unint64_t TaskPriority.description.getter()
{
  v1 = *v0;
  v2 = (((v1 - 9) >> 2) | ((v1 - 9) << 6));
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        return 0xD000000000000011;
      }

      goto LABEL_8;
    }

    return 0xD000000000000013;
  }

  else
  {
    if (((v1 - 9) >> 2) | ((v1 - 9) << 6))
    {
      if (v2 == 2)
      {
        return 0xD000000000000010;
      }

LABEL_8:
      _StringGuts.grow(_:)(16);

      v4 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865D3D30](v4);

      MEMORY[0x1865D3D30](41, 0xE100000000000000);
      return 0xD000000000000017;
    }

    return 0xD000000000000017;
  }
}

unint64_t static Task<>.currentPriority.getter@<X0>(_BYTE *a1@<X8>)
{
  if (swift_task_getCurrent())
  {

    v2 = swift_task_currentPriority();

LABEL_5:
    *a1 = v2;
    return result;
  }

  result = swift_task_getCurrentThreadPriority();
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = result;
    if (result < 0x100)
    {
      goto LABEL_5;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t UnsafeCurrentTask.priority.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = swift_task_currentPriority();
  *a1 = result;
  return result;
}

uint64_t withUnsafeCurrentTask<A>(body:)(void (*a1)(uint64_t *))
{
  Current = swift_task_getCurrent();
  if (Current)
  {
    v4 = Current;

    a1(&v4);
  }

  else
  {
    v4 = 0;
    return (a1)(&v4);
  }
}

uint64_t static Task<>.basePriority.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_task_getCurrent();
  v3 = result;
  if (result)
  {

    v5 = swift_task_basePriority(v4);
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  a1[1] = v3 == 0;
  return result;
}

swift::AsyncTask *static Task<>.name.getter()
{
  result = swift_task_getCurrentTaskName();
  if (result)
  {
    return String.init(cString:)();
  }

  return result;
}

void withUnsafeCurrentTask<A>(body:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  swift_task_switch(withUnsafeCurrentTask<A>(body:), 0, 0);
}

uint64_t withUnsafeCurrentTask<A>(body:)()
{
  Current = swift_task_getCurrent();
  v2 = v0[5];
  if (Current)
  {
    v0[3] = Current;
    v3 = v0 + 3;

    v9 = (v2 + *v2);
    v4 = swift_task_alloc(v2[1]);
    v0[7] = v4;
    *v4 = v0;
    v5 = withUnsafeCurrentTask<A>(body:);
  }

  else
  {
    v0[2] = 0;
    v3 = v0 + 2;
    v9 = (v2 + *v2);
    v4 = swift_task_alloc(v2[1]);
    v0[9] = v4;
    *v4 = v0;
    v5 = withUnsafeCurrentTask<A>(body:);
  }

  v4[1] = v5;
  v6 = v0[6];
  v7 = v0[4];

  return (v9)(v7, v3);
}

{
  v1 = *(v0 + 80);
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 64);
  return (*(v0 + 8))();
}

void withUnsafeCurrentTask<A>(body:)()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;
  v2;
  v4 = v3[3];

  if (v0)
  {

    swift_task_switch(withUnsafeCurrentTask<A>(body:), 0, 0);
  }

  else
  {
    v5 = v3[1];

    v5();
  }
}

{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;
  v2;
  if (v0)
  {

    swift_task_switch(withUnsafeCurrentTask<A>(body:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    v4();
  }
}

uint64_t UnsafeCurrentTask.basePriority.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_task_basePriority(*v1);
  *a1 = result;
  return result;
}

Swift::Int UnsafeCurrentTask.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865D4230](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UnsafeCurrentTask()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865D4230](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnsafeCurrentTask()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865D4230](v1);
  return Hasher._finalize()();
}

void _runAsyncMain(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = swift_task_create(0, 0, MEMORY[0x1E69E7CA8] + 8, &async function pointer to partial apply for closure #1 in _runAsyncMain(_:), v4);
  swift_createDefaultExecutorsOnce();
  if (static MainActor._executor)
  {
    v6 = qword_1ED42D448;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);
    v9 = *(v8 + 32);
    swift_unknownObjectRetain();
    v9(v5, ObjectType, v8);
    swift_unknownObjectRelease();
    swift_task_asyncMainDrainQueue();
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t closure #1 in _runAsyncMain(_:)(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc(a2[1]);
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = closure #1 in _runAsyncMain(_:);

  return v5();
}

void closure #1 in _runAsyncMain(_:)()
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = v0;
  v2;
  if (v0)
  {
    v3 = closure #1 in _runAsyncMain(_:);
  }

  else
  {
    v3 = closure #1 in _runAsyncMain(_:);
  }

  swift_task_switch(v3, 0, 0);
}

{
  exit(0);
}

uint64_t closure #1 in _runAsyncMain(_:)()
{
  v1 = *(v0 + 24);
  swift_errorInMain();
  MEMORY[0x1865D4950](v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t _swift_task_isCurrentGlobalActor(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))();

  return swift_task_isCurrentExecutorWithFlags(v2, v3, 0);
}

void _ss33withTaskPriorityEscalationHandler9operation02onC9Escalated9isolationxxyYaq_YKXE_yScP_ScPtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = v18;
  v8[12] = v19;
  v8[9] = a8;
  v8[10] = v17;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v11 = *(v17 - 8);
  v8[13] = v11;
  v8[14] = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a6)
  {
    ObjectType = swift_getObjectType();
    v13 = (*(a7 + 8))(ObjectType, a7);
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v8[15] = v13;
  v8[16] = v15;

  swift_task_switch(_ss33withTaskPriorityEscalationHandler9operation02onC9Escalated9isolationxxyYaq_YKXE_yScP_ScPtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFTY0_, v13, v15);
}

void _ss33withTaskPriorityEscalationHandler9operation02onC9Escalated9isolationxxyYaq_YKXE_yScP_ScPtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFTY0_()
{
  v1 = swift_task_alloc(32);
  *(v0 + 136) = v1;
  *(v1 + 16) = *(v0 + 40);
  v2 = swift_task_alloc(128);
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = _ss33withTaskPriorityEscalationHandler9operation02onC9Escalated9isolationxxyYaq_YKXE_yScP_ScPtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFTQ1_;
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);
  v11 = *(v0 + 112);
  v10 = *(v0 + 80);

  JUMPOUT(0x1815CFDA4);
}

void _ss33withTaskPriorityEscalationHandler9operation02onC9Escalated9isolationxxyYaq_YKXE_yScP_ScPtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFTQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  v3;
  if (v0)
  {
    v5 = v2[15];
    v6 = v2[16];

    swift_task_switch(_ss33withTaskPriorityEscalationHandler9operation02onC9Escalated9isolationxxyYaq_YKXE_yScP_ScPtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFTY2_, v5, v6);
  }

  else
  {
    v7 = v2[14];
    v2[17];
    v7;
    v8 = *(v4 + 8);

    v8();
  }
}

uint64_t _ss33withTaskPriorityEscalationHandler9operation02onC9Escalated9isolationxxyYaq_YKXE_yScP_ScPtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFTY2_()
{
  v1 = v0[17];
  v2 = v0[14];
  (*(v0[13] + 32))(v0[12], v2, v0[10]);
  v1;
  v2;
  v3 = v0[1];

  return v3();
}

void _ss36__withTaskPriorityEscalationHandler09operation02onC9Escalated9isolationxxyYaq_YKXE_ys5UInt8V_AFtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = v16;
  v7[8] = v17;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v10 = *(v16 - 8);
  v7[9] = v10;
  v7[10] = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a6)
  {
    ObjectType = swift_getObjectType();
    v12 = (*(a7 + 8))(ObjectType, a7);
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v7[11] = v12;
  v7[12] = v14;

  swift_task_switch(_ss36__withTaskPriorityEscalationHandler09operation02onC9Escalated9isolationxxyYaq_YKXE_ys5UInt8V_AFtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFTY0_, v12, v14);
}

uint64_t _ss36__withTaskPriorityEscalationHandler09operation02onC9Escalated9isolationxxyYaq_YKXE_ys5UInt8V_AFtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFTY0_()
{
  v1 = *(v0 + 24);
  *(v0 + 104) = swift_task_addPriorityEscalationHandler(*(v0 + 40), *(v0 + 48));
  v7 = (v1 + *v1);
  v2 = swift_task_alloc(v1[1]);
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = _ss36__withTaskPriorityEscalationHandler09operation02onC9Escalated9isolationxxyYaq_YKXE_ys5UInt8V_AFtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFTQ1_;
  v3 = *(v0 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);

  return v7(v5, v3);
}

void _ss36__withTaskPriorityEscalationHandler09operation02onC9Escalated9isolationxxyYaq_YKXE_ys5UInt8V_AFtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFTQ1_()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 112);
  v4 = *(v2 + 96);
  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = _ss36__withTaskPriorityEscalationHandler09operation02onC9Escalated9isolationxxyYaq_YKXE_ys5UInt8V_AFtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFTY3_;
  }

  else
  {
    v6 = _ss36__withTaskPriorityEscalationHandler09operation02onC9Escalated9isolationxxyYaq_YKXE_ys5UInt8V_AFtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFTY2_;
  }

  swift_task_switch(v6, v5, v4);
}

uint64_t _ss36__withTaskPriorityEscalationHandler09operation02onC9Escalated9isolationxxyYaq_YKXE_ys5UInt8V_AFtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFTY2_()
{
  v1 = *(v0 + 80);
  swift_task_removePriorityEscalationHandler(*(v0 + 104));
  v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t _ss36__withTaskPriorityEscalationHandler09operation02onC9Escalated9isolationxxyYaq_YKXE_ys5UInt8V_AFtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFTY3_()
{
  v1 = v0[13];
  v2 = v0[10];
  (*(v0[9] + 32))(v0[8], v2, v0[7]);
  swift_task_removePriorityEscalationHandler(v1);
  v2;
  v3 = v0[1];

  return v3();
}

void _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = v17;
  v7[8] = v18;
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v10 = *(v17 - 8);
  v7[9] = v10;
  v11 = *(v10 + 64) + 15;
  v7[10] = swift_task_alloc(v11 & 0xFFFFFFFFFFFFFFF0);
  v7[11] = swift_task_alloc(v11 & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    ObjectType = swift_getObjectType();
    v13 = (*(a5 + 8))(ObjectType, a5);
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v7[12] = v13;
  v7[13] = v15;

  swift_task_switch(_ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTY0_, v13, v15);
}

uint64_t _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTY0_()
{
  v1 = v0[5];
  if (v0[3])
  {
    v2 = v0[4];
    v3 = v0[3];
    ObjectType = swift_getObjectType();
    v5 = (*(v2 + 40))(ObjectType, v2);
    v0[14] = swift_task_pushTaskExecutorPreference(v5, v6);
    v14 = (v1 + *v1);
    v7 = swift_task_alloc(v1[1]);
    v0[15] = v7;
    *v7 = v0;
    v7[1] = _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTQ1_;
    v8 = v0[11];
  }

  else
  {
    v9 = v0[5];
    v14 = (v1 + *v1);
    v10 = swift_task_alloc(v1[1]);
    v0[16] = v10;
    *v10 = v0;
    v10[1] = _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTQ3_;
    v8 = v0[10];
  }

  v11 = v0[6];
  v12 = v0[2];

  return v14(v12, v8);
}

void _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTQ1_()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 120);
  v4 = *(v2 + 104);
  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTY5_;
  }

  else
  {
    v6 = _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTY2_;
  }

  swift_task_switch(v6, v5, v4);
}

uint64_t _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTY2_()
{
  swift_task_popTaskExecutorPreference(v0[14]);
  v1 = v0[10];
  v0[11];
  v1;
  v2 = v0[1];

  return v2();
}

void _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTQ3_()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  v3;
  if (v0)
  {
    v5 = v2[12];
    v6 = v2[13];

    swift_task_switch(_ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTY4_, v5, v6);
  }

  else
  {
    v7 = v2[10];
    v2[11];
    v7;
    v8 = *(v4 + 8);

    v8();
  }
}

uint64_t _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTY4_()
{
  (*(v0[9] + 32))(v0[8], v0[10], v0[7]);
  v1 = v0[10];
  v0[11];
  v1;
  v2 = v0[1];

  return v2();
}

uint64_t _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTY5_()
{
  v1 = v0[14];
  (*(v0[9] + 32))(v0[8], v0[11], v0[7]);
  swift_task_popTaskExecutorPreference(v1);
  v2 = v0[10];
  v0[11];
  v2;
  v3 = v0[1];

  return v3();
}

uint64_t _ss26withTaskExecutorPreference_9operationxSch_pSg_xyYaYbKXEtYaKs8SendableRzlF(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v6 = v4;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v10 = (*(a3 + 40))(ObjectType, a3);
    v6[2] = swift_task_pushTaskExecutorPreference(v10, v11);
    v15 = (a4 + *a4);
    v12 = swift_task_alloc(a4[1]);
    v6[3] = v12;
    *v12 = v6;
    v13 = _ss26withTaskExecutorPreference_9operationxSch_pSg_xyYaYbKXEtYaKs8SendableRzlFTQ0_;
  }

  else
  {
    v15 = (a4 + *a4);
    v12 = swift_task_alloc(a4[1]);
    v6[4] = v12;
    *v12 = v6;
    v13 = _ss26withTaskExecutorPreference_9operationxSch_pSg_xyYaYbKXEtYaKs8SendableRzlFTQ1_;
  }

  v12[1] = v13;

  return v15(a1);
}

uint64_t _ss26withTaskExecutorPreference_9operationxSch_pSg_xyYaYbKXEtYaKs8SendableRzlFTQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;
  *(*v0 + 24);
  swift_task_popTaskExecutorPreference(v1);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t _ss26withTaskExecutorPreference_9operationxSch_pSg_xyYaYbKXEtYaKs8SendableRzlFTQ1_()
{
  v3 = *v0;
  *(*v0 + 32);
  v1 = *(v3 + 8);

  return v1();
}

void withTaskCancellationHandler<A>(operation:onCancel:isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  if (a6)
  {
    ObjectType = swift_getObjectType();
    v10 = (*(a7 + 8))(ObjectType, a7);
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v7[7] = v10;
  v7[8] = v12;

  swift_task_switch(withTaskCancellationHandler<A>(operation:onCancel:isolation:), v10, v12);
}

uint64_t withTaskCancellationHandler<A>(operation:onCancel:isolation:)()
{
  v1 = *(v0 + 24);
  *(v0 + 72) = swift_task_addCancellationHandler(*(v0 + 40), *(v0 + 48));
  v6 = (v1 + *v1);
  v2 = swift_task_alloc(v1[1]);
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = withTaskCancellationHandler<A>(operation:onCancel:isolation:);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);

  return v6(v4);
}

{
  swift_task_removeCancellationHandler(*(v0 + 72));
  v1 = *(v0 + 8);

  return v1();
}

{
  swift_task_removeCancellationHandler(*(v0 + 72));
  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1();
}

void withTaskCancellationHandler<A>(operation:onCancel:isolation:)()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;
  v3;
  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = withTaskCancellationHandler<A>(operation:onCancel:isolation:);
  }

  else
  {
    v7 = withTaskCancellationHandler<A>(operation:onCancel:isolation:);
  }

  swift_task_switch(v7, v6, v5);
}

uint64_t static Task<>.isCancelled.getter()
{
  result = swift_task_getCurrent();
  if (result)
  {

    isCancelled = swift_task_isCancelled();

    return isCancelled & 1;
  }

  return result;
}

uint64_t static Task<>.checkCancellation()()
{
  result = swift_task_getCurrent();
  if (result)
  {

    isCancelled = swift_task_isCancelled();

    if (isCancelled)
    {
      lazy protocol witness table accessor for type CancellationError and conformance CancellationError();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

void TaskGroup.awaitAllRemainingTasks()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *(a1 + 16);
  v3 = type metadata accessor for Optional();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = swift_task_alloc((*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_task_alloc(96);
  v2[8] = v5;
  *v5 = v2;
  v5[1] = TaskGroup.awaitAllRemainingTasks();
  v6 = v2[7];
  v7 = v2[3];

  TaskGroup.next(isolation:)(v6, 0, 0);
}

void TaskGroup.awaitAllRemainingTasks()()
{
  v1 = *v0;
  *(*v0 + 64);

  swift_task_switch(TaskGroup.awaitAllRemainingTasks(), 0, 0);
}

{
  v1 = v0[7];
  v2 = (*(*(v0[4] - 8) + 48))(v1, 1);
  (*(v0[6] + 8))(v1, v0[5]);
  if (v2 == 1)
  {
    v1;
    v3 = v0[1];

    v3();
  }

  else
  {
    v4 = swift_task_alloc(96);
    v0[8] = v4;
    *v4 = v0;
    v4[1] = TaskGroup.awaitAllRemainingTasks();
    v5 = v0[7];
    v6 = v0[3];

    TaskGroup.next(isolation:)(v5, 0, 0);
  }
}

void withTaskGroup<A, B>(of:returning:isolation:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[37] = a7;
  v8[38] = a8;
  v8[35] = a1;
  v8[36] = a6;
  if (a4)
  {
    ObjectType = swift_getObjectType();
    v11 = (*(a5 + 8))(ObjectType, a5);
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v8[39] = v11;
  v8[40] = v13;

  swift_task_switch(withTaskGroup<A, B>(of:returning:isolation:body:), v11, v13);
}

uint64_t withTaskGroup<A, B>(of:returning:isolation:body:)()
{
  v1 = v0[36];
  swift_taskGroup_initialize((v0 + 2), v0[38]);
  v0[34] = v0 + 2;
  v6 = (v1 + *v1);
  v2 = swift_task_alloc(v1[1]);
  v0[41] = v2;
  *v2 = v0;
  v2[1] = withTaskGroup<A, B>(of:returning:isolation:body:);
  v3 = v0[37];
  v4 = v0[35];

  return (v6)(v4, v0 + 34);
}

{
  swift_taskGroup_destroy((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

void withTaskGroup<A, B>(of:returning:isolation:body:)()
{
  v1 = *v0;
  v2 = *(*v0 + 304);
  v5 = *v0;
  *(*v0 + 328);
  v3 = swift_task_alloc(80);
  *(v1 + 336) = v3;
  v4 = type metadata accessor for TaskGroup();
  *v3 = v5;
  v3[1] = withTaskGroup<A, B>(of:returning:isolation:body:);

  TaskGroup.awaitAllRemainingTasks()(v4);
}

{
  v1 = *v0;
  v4 = *v0;
  *(*v0 + 336);
  v2 = *(v1 + 320);
  v3 = *(v1 + 312);

  swift_task_switch(withTaskGroup<A, B>(of:returning:isolation:body:), v3, v2);
}

uint64_t withTaskGroup<A, B>(of:returning:body:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[35] = a6;
  swift_taskGroup_initialize((v6 + 2), a6);
  v6[34] = v6 + 2;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc(a4[1]);
  v6[36] = v9;
  *v9 = v6;
  v9[1] = withTaskGroup<A, B>(of:returning:body:);

  return (v11)(a1, v6 + 34);
}

void withTaskGroup<A, B>(of:returning:body:)()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v5 = *v0;
  *(*v0 + 288);
  v3 = swift_task_alloc(80);
  *(v1 + 296) = v3;
  v4 = type metadata accessor for TaskGroup();
  *v3 = v5;
  v3[1] = withTaskGroup<A, B>(of:returning:body:);

  TaskGroup.awaitAllRemainingTasks()(v4);
}

uint64_t withTaskGroup<A, B>(of:returning:body:)()
{
  v1 = *v0;
  v4 = *v0;
  *(*v0 + 296);
  swift_taskGroup_destroy((v1 + 16));
  v2 = *(v4 + 8);

  return v2();
}

void ThrowingTaskGroup.awaitAllRemainingTasks()(uint64_t a1)
{
  v3 = swift_task_alloc(96);
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  ThrowingTaskGroup.awaitAllRemainingTasks(isolation:)(0, 0, a1);
}

void withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[37] = a7;
  v8[38] = a8;
  v8[35] = a1;
  v8[36] = a6;
  if (a4)
  {
    ObjectType = swift_getObjectType();
    v11 = (*(a5 + 8))(ObjectType, a5);
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v8[39] = v11;
  v8[40] = v13;

  swift_task_switch(withThrowingTaskGroup<A, B>(of:returning:isolation:body:), v11, v13);
}

uint64_t withThrowingTaskGroup<A, B>(of:returning:isolation:body:)()
{
  v1 = v0[36];
  swift_taskGroup_initialize((v0 + 2), v0[38]);
  v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v0[34] = v0 + 2;
  v6 = (v1 + *v1);
  v2 = swift_task_alloc(v1[1]);
  v0[42] = v2;
  *v2 = v0;
  v2[1] = withThrowingTaskGroup<A, B>(of:returning:isolation:body:);
  v3 = v0[37];
  v4 = v0[35];

  return (v6)(v4, v0 + 34);
}

{
  swift_taskGroup_destroy((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[43];
  swift_taskGroup_destroy((v0 + 2));
  swift_willThrow();
  v2 = v0[1];
  v3 = v0[43];

  return v2();
}

void withThrowingTaskGroup<A, B>(of:returning:isolation:body:)()
{
  v2 = *(*v1 + 336);
  v3 = *v1;
  v3[43] = v0;
  v2;
  if (v0)
  {
    v4 = v3[39];
    v5 = v3[40];

    swift_task_switch(withThrowingTaskGroup<A, B>(of:returning:isolation:body:), v4, v5);
  }

  else
  {
    v6 = v3[41];
    v7 = v3[38];
    v8 = swift_task_alloc(32);
    v3[44] = v8;
    v9 = type metadata accessor for ThrowingTaskGroup();
    *v8 = v3;
    v8[1] = withThrowingTaskGroup<A, B>(of:returning:isolation:body:);

    ThrowingTaskGroup.awaitAllRemainingTasks()(v9);
  }
}

{
  v1 = *v0;
  v4 = *v0;
  *(*v0 + 352);
  v2 = *(v1 + 320);
  v3 = *(v1 + 312);

  swift_task_switch(withThrowingTaskGroup<A, B>(of:returning:isolation:body:), v3, v2);
}

{
  v1 = *(v0 + 328);
  v2 = *(v0 + 304);
  swift_taskGroup_cancelAll(*(v0 + 272));
  v3 = swift_task_alloc(32);
  *(v0 + 360) = v3;
  v4 = type metadata accessor for ThrowingTaskGroup();
  *v3 = v0;
  v3[1] = withThrowingTaskGroup<A, B>(of:returning:isolation:body:);

  ThrowingTaskGroup.awaitAllRemainingTasks()(v4);
}

{
  v1 = *v0;
  v4 = *v0;
  *(*v0 + 360);
  v2 = *(v1 + 320);
  v3 = *(v1 + 312);

  swift_task_switch(withThrowingTaskGroup<A, B>(of:returning:isolation:body:), v3, v2);
}

uint64_t withThrowingTaskGroup<A, B>(of:returning:body:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[35] = a6;
  swift_taskGroup_initialize((v6 + 2), a6);
  v6[36] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v6[34] = v6 + 2;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc(a4[1]);
  v6[37] = v9;
  *v9 = v6;
  v9[1] = withThrowingTaskGroup<A, B>(of:returning:body:);

  return (v11)(a1, v6 + 34);
}

void withThrowingTaskGroup<A, B>(of:returning:body:)()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(v2 + 304) = v0;
  v3;
  v5 = *(v2 + 288);
  v6 = *(v2 + 280);
  if (v0)
  {
    swift_taskGroup_cancelAll(*(v2 + 272));
    v7 = swift_task_alloc(32);
    *(v2 + 320) = v7;
    v8 = type metadata accessor for ThrowingTaskGroup();
    *v7 = v4;
    v9 = withThrowingTaskGroup<A, B>(of:returning:body:);
  }

  else
  {
    v7 = swift_task_alloc(32);
    *(v2 + 312) = v7;
    v8 = type metadata accessor for ThrowingTaskGroup();
    *v7 = v4;
    v9 = withThrowingTaskGroup<A, B>(of:returning:body:);
  }

  v7[1] = v9;

  ThrowingTaskGroup.awaitAllRemainingTasks()(v8);
}

uint64_t withThrowingTaskGroup<A, B>(of:returning:body:)()
{
  v1 = *v0;
  v4 = *v0;
  *(*v0 + 312);
  swift_taskGroup_destroy((v1 + 16));
  v2 = *(v4 + 8);

  return v2();
}

{
  v1 = *v0;
  v2 = *(*v0 + 304);
  v6 = *v0;
  *(*v0 + 320);
  swift_taskGroup_destroy((v1 + 16));
  swift_willThrow();
  v3 = *(v6 + 8);
  v4 = *(v1 + 304);

  return v3();
}

void TaskGroup.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a1;
  v4[8] = v3;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v7 = (*(a3 + 8))(ObjectType, a3);
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[9] = v7;
  v4[10] = v9;

  swift_task_switch(TaskGroup.next(isolation:), v7, v9);
}

uint64_t TaskGroup.next(isolation:)()
{
  return swift_taskGroup_wait_next_throwing(*(v0 + 56), **(v0 + 64), TaskGroup.next(isolation:), (v0 + 16));
}

{
  v1 = *(v0 + 88);
  return swift_unexpectedError();
}

void TaskGroup.next(isolation:)()
{
  *(v1 + 88) = v0;
  if (v0)
  {
    swift_task_switch(TaskGroup.next(isolation:), *(v1 + 72), *(v1 + 80));
  }

  else
  {
    (*(v1 + 8))();
  }
}

void TaskGroup.next()(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  swift_task_switch(TaskGroup.next(), 0, 0);
}

uint64_t TaskGroup.next()()
{
  return swift_taskGroup_wait_next_throwing(*(v0 + 56), **(v0 + 64), TaskGroup.next(), (v0 + 16));
}

{
  v1 = *(v0 + 72);
  return swift_unexpectedError();
}

void TaskGroup.next()()
{
  *(v1 + 72) = v0;
  if (v0)
  {
    swift_task_switch(TaskGroup.next(), 0, 0);
  }

  else
  {
    (*(v1 + 8))();
  }
}

void TaskGroup.awaitAllRemainingTasks(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *(a3 + 16);
  v5 = type metadata accessor for Optional();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_task_alloc(96);
  v4[10] = v7;
  *v7 = v4;
  v7[1] = TaskGroup.awaitAllRemainingTasks(isolation:);
  v8 = v4[9];
  v9 = v4[5];
  v10 = v4[2];
  v11 = v4[3];

  TaskGroup.next(isolation:)(v8, v10, v11);
}

void TaskGroup.awaitAllRemainingTasks(isolation:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v10 = *v0;
  *(*v0 + 80);
  if (v2)
  {
    v5 = v1 + 16;
    v4 = *(v1 + 16);
    v3 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v7 = (*(v3 + 8))(ObjectType, v3);
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  swift_task_switch(TaskGroup.awaitAllRemainingTasks(isolation:), v7, v9);
}

{
  v1 = v0[9];
  if ((*(*(v0[6] - 8) + 48))(v1, 1) == 1)
  {
    (*(v0[8] + 8))(v1, v0[7]);
    v1;
    v2 = v0[1];

    v2();
  }

  else
  {
    (*(v0[8] + 8))(v1, v0[7]);
    v3 = swift_task_alloc(96);
    v0[10] = v3;
    *v3 = v0;
    v3[1] = TaskGroup.awaitAllRemainingTasks(isolation:);
    v4 = v0[9];
    v5 = v0[5];
    v6 = v0[2];
    v7 = v0[3];

    TaskGroup.next(isolation:)(v4, v6, v7);
  }
}

void ThrowingTaskGroup.awaitAllRemainingTasks(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *(a3 + 16);
  v5 = type metadata accessor for Optional();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_task_alloc(80);
  v4[10] = v7;
  *v7 = v4;
  v7[1] = ThrowingTaskGroup.awaitAllRemainingTasks(isolation:);
  v8 = v4[9];
  v9 = v4[5];
  v10 = v4[2];
  v11 = v4[3];

  ThrowingTaskGroup.next(isolation:)(v8, v10, v11);
}

void ThrowingTaskGroup.awaitAllRemainingTasks(isolation:)()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *v1;
  *(*v1 + 80);
  v5 = *(v2 + 16);
  if (v0)
  {
    MEMORY[0x1865D4950](v0);
    if (v5)
    {
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      v9 = (*(v7 + 8))(ObjectType, v7);
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v12 = ThrowingTaskGroup.awaitAllRemainingTasks(isolation:);
  }

  else
  {
    if (v5)
    {
      v13 = *(v3 + 24);
      v14 = swift_getObjectType();
      v9 = (*(v13 + 8))(v14, v13);
      v11 = v15;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v12 = ThrowingTaskGroup.awaitAllRemainingTasks(isolation:);
  }

  swift_task_switch(v12, v9, v11);
}

{
  v1 = v0[9];
  if ((*(*(v0[6] - 8) + 48))(v1, 1) == 1)
  {
    (*(v0[8] + 8))(v1, v0[7]);
    v1;
    v2 = v0[1];

    v2();
  }

  else
  {
    (*(v0[8] + 8))(v1, v0[7]);
    v3 = swift_task_alloc(80);
    v0[10] = v3;
    *v3 = v0;
    v3[1] = ThrowingTaskGroup.awaitAllRemainingTasks(isolation:);
    v4 = v0[9];
    v5 = v0[5];
    v6 = v0[2];
    v7 = v0[3];

    ThrowingTaskGroup.next(isolation:)(v4, v6, v7);
  }
}

{
  v1 = swift_task_alloc(80);
  v0[10] = v1;
  *v1 = v0;
  v1[1] = ThrowingTaskGroup.awaitAllRemainingTasks(isolation:);
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  ThrowingTaskGroup.next(isolation:)(v2, v4, v5);
}

void ThrowingTaskGroup.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 56) = a1;
  *(v4 + 64) = v3;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v7 = (*(a3 + 8))(ObjectType, a3);
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  swift_task_switch(ThrowingTaskGroup.next(isolation:), v7, v9);
}

void ThrowingTaskGroup._waitForAll()(uint64_t a1)
{
  v3 = swift_task_alloc(32);
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = ThrowingTaskGroup._waitForAll();

  ThrowingTaskGroup.awaitAllRemainingTasks()(a1);
}

void ThrowingTaskGroup.next()(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  swift_task_switch(ThrowingTaskGroup.next(isolation:), 0, 0);
}

void ThrowingTaskGroup.nextResult()(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(a2 + 16);
  v3[11] = v4;
  v5 = type metadata accessor for Optional();
  v3[12] = v5;
  v6 = *(v5 - 8);
  v3[13] = v6;
  v3[14] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 - 8);
  v3[15] = v7;
  v3[16] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(ThrowingTaskGroup.nextResult(), 0, 0);
}

uint64_t ThrowingTaskGroup.nextResult()()
{
  return swift_taskGroup_wait_next_throwing(*(v0 + 112), **(v0 + 80), ThrowingTaskGroup.nextResult(), (v0 + 16));
}

{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[11];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[8];
    v5 = v0[9];
    (*(v0[13] + 8))(v1, v0[12]);
    v6 = *(v5 + 24);
    v7 = *(v5 + 32);
    v8 = type metadata accessor for Result();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  }

  else
  {
    v9 = v0[16];
    v10 = v0[8];
    v11 = v0[9];
    v12 = *(v2 + 32);
    v12(v9, v1, v3);
    v12(v10, v9, v3);
    v13 = *(v11 + 24);
    v14 = *(v11 + 32);
    v15 = type metadata accessor for Result();
    swift_storeEnumTagMultiPayload();
    (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  }

  v16 = v0[14];
  v0[16];
  v16;
  v17 = v0[1];

  return v17();
}

{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v0[7] = v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = *(v3 + 24);
  swift_dynamicCast();
  v5 = *(v3 + 32);
  v6 = type metadata accessor for Result();
  swift_storeEnumTagMultiPayload();
  (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
  v7 = v0[14];
  v0[16];
  v7;
  v8 = v0[1];

  return v8();
}

void ThrowingTaskGroup.nextResult()()
{
  *(v1 + 136) = v0;
  if (v0)
  {
    v2 = ThrowingTaskGroup.nextResult();
  }

  else
  {
    v2 = ThrowingTaskGroup.nextResult();
  }

  swift_task_switch(v2, 0, 0);
}

uint64_t TaskGroup.makeAsyncIterator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

void TaskGroup.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *(a2 + 16);
  v4 = type metadata accessor for Optional();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = swift_task_alloc((*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(TaskGroup.Iterator.next(), 0, 0);
}

void TaskGroup.Iterator.next()()
{
  if (*(v0[3] + 8))
  {
    (*(*(v0[4] - 8) + 56))(v0[2], 1, 1);
    v0[7];
    v1 = v0[1];

    v1();
  }

  else
  {
    v2 = swift_task_alloc(96);
    v0[8] = v2;
    *v2 = v0;
    v2[1] = TaskGroup.Iterator.next();
    v3 = v0[7];
    v4 = v0[3];

    TaskGroup.next(isolation:)(v3, 0, 0);
  }
}

{
  v1 = *v0;
  *(*v0 + 64);

  swift_task_switch(TaskGroup.Iterator.next(), 0, 0);
}

uint64_t TaskGroup.Iterator.next()()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[2];
    v5 = v0[3];
    (*(v0[6] + 8))(v1, v0[5]);
    *(v5 + 8) = 1;
    (*(v3 + 56))(v4, 1, 1, v2);
  }

  else
  {
    v6 = v0[2];
    (*(v3 + 32))(v6, v1, v2);
    (*(v3 + 56))(v6, 0, 1, v2);
  }

  v0[7];
  v7 = v0[1];

  return v7();
}

void TaskGroup.Iterator.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = *(a4 + 16);
  v8 = type metadata accessor for Optional();
  v5[7] = v8;
  v9 = *(v8 - 8);
  v5[8] = v9;
  v5[9] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v11 = (*(a3 + 8))(ObjectType, a3);
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v5[10] = v11;
  v5[11] = v13;

  swift_task_switch(TaskGroup.Iterator.next(isolation:), v11, v13);
}

void TaskGroup.Iterator.next(isolation:)()
{
  if (*(v0[5] + 8))
  {
    (*(*(v0[6] - 8) + 56))(v0[2], 1, 1);
    v0[9];
    v1 = v0[1];

    v1();
  }

  else
  {
    v2 = swift_task_alloc(96);
    v0[12] = v2;
    *v2 = v0;
    v2[1] = TaskGroup.Iterator.next(isolation:);
    v3 = v0[9];
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[3];

    TaskGroup.next(isolation:)(v3, v6, v4);
  }
}

{
  v1 = *v0;
  v4 = *v0;
  *(*v0 + 96);
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  swift_task_switch(TaskGroup.Iterator.next(isolation:), v3, v2);
}

uint64_t TaskGroup.Iterator.next(isolation:)()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[5];
    v5 = v0[2];
    (*(v0[8] + 8))(v1, v0[7]);
    *(v4 + 8) = 1;
    (*(v3 + 56))(v5, 1, 1, v2);
  }

  else
  {
    v6 = v0[2];
    (*(v3 + 32))(v6, v1, v2);
    (*(v3 + 56))(v6, 0, 1, v2);
  }

  v0[9];
  v7 = v0[1];

  return v7();
}

void protocol witness for AsyncIteratorProtocol.next() in conformance TaskGroup<A>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc(80);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance TaskGroup<A>.Iterator;

  TaskGroup.Iterator.next()(a1, a2);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance TaskGroup<A>.Iterator()
{
  v3 = *v0;
  *(*v0 + 16);
  v1 = *(v3 + 8);

  return v1();
}

void _sScG8IteratorVyx_GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc(112);
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = ThrowingTaskGroup._waitForAll();

  TaskGroup.Iterator.next(isolation:)(a1, a2, a3, a5);
}

uint64_t ThrowingTaskGroup.makeAsyncIterator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

void ThrowingTaskGroup.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a2 + 16);
  v4 = type metadata accessor for Optional();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v3[8] = swift_task_alloc((*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(ThrowingTaskGroup.Iterator.next(), 0, 0);
}

void ThrowingTaskGroup.Iterator.next()()
{
  if (*(v0[4] + 8))
  {
    (*(*(v0[5] - 8) + 56))(v0[2], 1, 1);
    v0[8];
    v1 = v0[1];

    v1();
  }

  else
  {
    v2 = swift_task_alloc(80);
    v0[9] = v2;
    *v2 = v0;
    v2[1] = ThrowingTaskGroup.Iterator.next();
    v3 = v0[8];
    v4 = v0[4];

    ThrowingTaskGroup.next(isolation:)(v3, 0, 0);
  }
}

{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = ThrowingTaskGroup.Iterator.next();
  }

  else
  {
    v3 = ThrowingTaskGroup.Iterator.next();
  }

  swift_task_switch(v3, 0, 0);
}

uint64_t ThrowingTaskGroup.Iterator.next()()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[4];
    v5 = v0[2];
    (*(v0[7] + 8))(v1, v0[6]);
    *(v4 + 8) = 1;
    (*(v3 + 56))(v5, 1, 1, v2);
  }

  else
  {
    v6 = v0[2];
    (*(v3 + 32))(v6, v1, v2);
    (*(v3 + 56))(v6, 0, 1, v2);
  }

  v0[8];
  v7 = v0[1];

  return v7();
}

{
  v1 = v0[10];
  v2 = v0[8];
  *(v0[4] + 8) = 1;
  swift_willThrow();
  v2;
  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

void _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = v5;
  v6[8] = a5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v6[9] = *(a4 + 16);
  v9 = type metadata accessor for Optional();
  v6[10] = v9;
  v10 = *(v9 - 8);
  v6[11] = v10;
  v6[12] = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v12 = (*(a3 + 8))(ObjectType, a3);
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v6[13] = v12;
  v6[14] = v14;

  swift_task_switch(_sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY0_, v12, v14);
}

void _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY0_()
{
  if (*(v0[7] + 8))
  {
    (*(*(v0[9] - 8) + 56))(v0[3], 1, 1);
    v0[12];
    v1 = v0[1];

    v1();
  }

  else
  {
    v2 = v0[6];
    v3 = swift_task_alloc(80);
    v0[15] = v3;
    v0[16] = *(v2 + 24);
    v0[17] = *(v2 + 32);
    *v3 = v0;
    v3[1] = _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTQ1_;
    v4 = v0[12];
    v5 = v0[7];
    v6 = v0[4];
    v7 = v0[5];

    ThrowingTaskGroup.next(isolation:)(v4, v6, v7);
  }
}

void _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 144) = v0;
  v3;
  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY3_;
  }

  else
  {
    v7 = _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY2_;
  }

  swift_task_switch(v7, v6, v5);
}

uint64_t _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY2_()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[7];
    v5 = v0[3];
    (*(v0[11] + 8))(v1, v0[10]);
    *(v4 + 8) = 1;
    (*(v3 + 56))(v5, 1, 1, v2);
  }

  else
  {
    v6 = v0[3];
    (*(v3 + 32))(v6, v1, v2);
    (*(v3 + 56))(v6, 0, 1, v2);
  }

  v0[12];
  v7 = v0[1];

  return v7();
}

uint64_t _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY3_()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[12];
  v5 = v0[8];
  *(v0[7] + 8) = 1;
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v4;
  v6 = v0[1];

  return v6();
}

void protocol witness for AsyncIteratorProtocol.next() in conformance ThrowingTaskGroup<A, B>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc(96);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  ThrowingTaskGroup.Iterator.next()(a1, a2);
}

void _sScg8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v10 = *(a5 + 24);
  v5[3] = v10;
  v11 = *(v10 - 8);
  v5[4] = v11;
  v12 = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[5] = v12;
  v13 = swift_task_alloc(160);
  v5[6] = v13;
  *v13 = v5;
  v13[1] = _ss23AsyncCompactMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(a1, a2, a3, a5, v12);
}

void DiscardingTaskGroup.awaitAllRemainingTasks()()
{
  *(v1 + 56) = v0;
  swift_task_switch(DiscardingTaskGroup.awaitAllRemainingTasks(), 0, 0);
}

{
  swift_taskGroup_waitAll(v0 + 72, **(v0 + 56), 0, DiscardingTaskGroup.awaitAllRemainingTasks(), (v0 + 16));
}

{
  *(v1 + 64) = v0;
  if (v0)
  {
    v2 = DiscardingTaskGroup.awaitAllRemainingTasks();
  }

  else
  {
    v2 = DiscardingTaskGroup.awaitAllRemainingTasks();
  }

  swift_task_switch(v2, 0, 0);
}

uint64_t DiscardingTaskGroup.awaitAllRemainingTasks()()
{
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 64);
  return (*(v0 + 8))();
}

void withDiscardingTaskGroup<A>(returning:isolation:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[42] = a6;
  v7[43] = a7;
  v7[40] = a1;
  v7[41] = a5;
  v10 = *(a7 - 8);
  v7[44] = v10;
  v7[45] = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    v12 = (*(a4 + 8))(ObjectType, a4);
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v7[46] = v12;
  v7[47] = v14;

  swift_task_switch(withDiscardingTaskGroup<A>(returning:isolation:body:), v12, v14);
}

uint64_t withDiscardingTaskGroup<A>(returning:isolation:body:)()
{
  v1 = v0[41];
  swift_taskGroup_initializeWithFlags(0x100, (v0 + 2), MEMORY[0x1E69E7CA8] + 8);
  v0[39] = v0 + 2;
  v6 = (v1 + *v1);
  v2 = swift_task_alloc(v1[1]);
  v0[48] = v2;
  *v2 = v0;
  v2[1] = withDiscardingTaskGroup<A>(returning:isolation:body:);
  v3 = v0[45];
  v4 = v0[42];

  return (v6)(v3, v0 + 39);
}

{
  v1 = v0[45];
  (*(v0[44] + 32))(v0[40], v1, v0[43]);
  swift_taskGroup_destroy((v0 + 2));
  v1;
  v2 = v0[1];

  return v2();
}

{
  v1 = *(v0 + 392);
  return swift_unexpectedError();
}

void withDiscardingTaskGroup<A>(returning:isolation:body:)()
{
  v1 = *v0;
  v3 = *v0;
  *(*v0 + 384);
  v2 = *(v1 + 312);

  swift_taskGroup_waitAll(v1 + 400, v2, 0, withDiscardingTaskGroup<A>(returning:isolation:body:), (v1 + 272));
}

{
  *(v1 + 392) = v0;
  if (v0)
  {
    v2 = withDiscardingTaskGroup<A>(returning:isolation:body:);
  }

  else
  {
    v2 = withDiscardingTaskGroup<A>(returning:isolation:body:);
  }

  swift_task_switch(v2, 0, 0);
}

{
  swift_task_switch(withDiscardingTaskGroup<A>(returning:isolation:body:), *(v0 + 368), *(v0 + 376));
}

{
  swift_task_switch(withDiscardingTaskGroup<A>(returning:isolation:body:), *(v0 + 368), *(v0 + 376));
}

uint64_t withDiscardingTaskGroup<A>(returning:body:)(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v5[40] = a1;
  v5[41] = a5;
  v7 = *(a5 - 8);
  v5[42] = v7;
  v8 = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[43] = v8;
  swift_taskGroup_initializeWithFlags(0x100, (v5 + 2), MEMORY[0x1E69E7CA8] + 8);
  v5[39] = v5 + 2;
  v11 = (a3 + *a3);
  v9 = swift_task_alloc(a3[1]);
  v5[44] = v9;
  *v9 = v5;
  v9[1] = withDiscardingTaskGroup<A>(returning:body:);

  return (v11)(v8, v5 + 39);
}

void withDiscardingTaskGroup<A>(returning:body:)()
{
  v1 = *v0;
  v3 = *v0;
  *(*v0 + 352);
  v2 = *(v1 + 312);

  swift_taskGroup_waitAll(v1 + 368, v2, 0, withDiscardingTaskGroup<A>(returning:body:), (v1 + 272));
}

{
  *(v1 + 360) = v0;
  if (v0)
  {
    v2 = withDiscardingTaskGroup<A>(returning:body:);
  }

  else
  {
    v2 = withDiscardingTaskGroup<A>(returning:body:);
  }

  swift_task_switch(v2, 0, 0);
}

uint64_t withDiscardingTaskGroup<A>(returning:body:)()
{
  v1 = v0[43];
  (*(v0[42] + 32))(v0[40], v1, v0[41]);
  swift_taskGroup_destroy((v0 + 2));
  v1;
  v2 = v0[1];

  return v2();
}

{
  v1 = *(v0 + 360);
  return swift_unexpectedError();
}

void ThrowingDiscardingTaskGroup.awaitAllRemainingTasks(bodyError:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  swift_task_switch(ThrowingDiscardingTaskGroup.awaitAllRemainingTasks(bodyError:), 0, 0);
}

void ThrowingDiscardingTaskGroup.awaitAllRemainingTasks(bodyError:)()
{
  swift_taskGroup_waitAll(v0 + 80, **(v0 + 64), *(v0 + 56), ThrowingDiscardingTaskGroup.awaitAllRemainingTasks(bodyError:), (v0 + 16));
}

{
  *(v1 + 72) = v0;
  if (v0)
  {
    v2 = ThrowingDiscardingTaskGroup.awaitAllRemainingTasks(bodyError:);
  }

  else
  {
    v2 = DiscardingTaskGroup.awaitAllRemainingTasks();
  }

  swift_task_switch(v2, 0, 0);
}

void withThrowingDiscardingTaskGroup<A>(returning:isolation:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[47] = a6;
  v7[48] = a7;
  v7[45] = a1;
  v7[46] = a5;
  v10 = *(a7 - 8);
  v7[49] = v10;
  v11 = *(v10 + 64) + 15;
  v7[50] = swift_task_alloc(v11 & 0xFFFFFFFFFFFFFFF0);
  v7[51] = swift_task_alloc(v11 & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    v13 = (*(a4 + 8))(ObjectType, a4);
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v7[52] = v13;
  v7[53] = v15;

  swift_task_switch(withThrowingDiscardingTaskGroup<A>(returning:isolation:body:), v13, v15);
}

uint64_t withThrowingDiscardingTaskGroup<A>(returning:isolation:body:)()
{
  v1 = v0[46];
  swift_taskGroup_initializeWithFlags(0x100, (v0 + 2), MEMORY[0x1E69E7CA8] + 8);
  v0[39] = v0 + 2;
  v6 = (v1 + *v1);
  v2 = swift_task_alloc(v1[1]);
  v0[54] = v2;
  *v2 = v0;
  v2[1] = withThrowingDiscardingTaskGroup<A>(returning:isolation:body:);
  v3 = v0[50];
  v4 = v0[47];

  return (v6)(v3, v0 + 39);
}

{
  v1 = *(v0 + 456);
  v2 = *(v0 + 400);
  v3 = *(v0 + 408);
  (*(v0 + 448))(*(v0 + 360), v3, *(v0 + 384));
  swift_taskGroup_destroy((v0 + 16));
  v3;
  v2;
  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = v0[58];
  v3 = v0[50];
  v2 = v0[51];
  swift_taskGroup_destroy((v0 + 2));
  v2;
  v3;
  v4 = v0[1];

  return v4();
}

{
  v1 = v0[55];
  swift_willThrow();
  v2 = v0[55];
  v4 = v0[50];
  v3 = v0[51];
  swift_taskGroup_destroy((v0 + 2));
  v3;
  v4;
  v5 = v0[1];

  return v5();
}

{
  v1 = v0[59];
  v3 = v0[50];
  v2 = v0[51];
  swift_taskGroup_destroy((v0 + 2));
  v2;
  v3;
  v4 = v0[1];

  return v4();
}

void withThrowingDiscardingTaskGroup<A>(returning:isolation:body:)()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v4 = *v1;
  *(*v1 + 440) = v0;
  v3;
  v5 = *(v2 + 424);
  v6 = *(v2 + 416);
  if (v0)
  {
    v7 = withThrowingDiscardingTaskGroup<A>(returning:isolation:body:);
  }

  else
  {
    v7 = withThrowingDiscardingTaskGroup<A>(returning:isolation:body:);
  }

  swift_task_switch(v7, v6, v5);
}

{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[48];
  v4 = v0[49];
  v5 = *(v4 + 32);
  v0[56] = v5;
  v0[57] = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v5(v1, v2, v3);
  v6 = v0[39];

  swift_taskGroup_waitAll(v0 + 481, v6, 0, withThrowingDiscardingTaskGroup<A>(returning:isolation:body:), v0 + 40);
}

{
  v1[58] = v0;
  if (v0)
  {
    (*(v1[49] + 8))(v1[51], v1[48]);
    v2 = withThrowingDiscardingTaskGroup<A>(returning:isolation:body:);
  }

  else
  {
    v2 = withThrowingDiscardingTaskGroup<A>(returning:isolation:body:);
  }

  swift_task_switch(v2, 0, 0);
}

{
  swift_task_switch(withThrowingDiscardingTaskGroup<A>(returning:isolation:body:), *(v0 + 416), *(v0 + 424));
}

{
  swift_task_switch(withThrowingDiscardingTaskGroup<A>(returning:isolation:body:), *(v0 + 416), *(v0 + 424));
}

{
  v1 = v0[55];
  v2 = v0[39];
  swift_taskGroup_cancelAll(v2);
  MEMORY[0x1865D4960](v1);

  swift_taskGroup_waitAll((v0 + 60), v2, v1, withThrowingDiscardingTaskGroup<A>(returning:isolation:body:), v0 + 34);
}

{
  *(v1 + 472) = v0;
  v2 = *(v1 + 440);
  MEMORY[0x1865D4950](v2);
  if (v0)
  {
    MEMORY[0x1865D4950](v2);
    v3 = withThrowingDiscardingTaskGroup<A>(returning:isolation:body:);
  }

  else
  {
    v3 = withThrowingDiscardingTaskGroup<A>(returning:isolation:body:);
  }

  swift_task_switch(v3, 0, 0);
}

{
  swift_task_switch(withThrowingDiscardingTaskGroup<A>(returning:isolation:body:), *(v0 + 416), *(v0 + 424));
}

{
  swift_task_switch(withThrowingDiscardingTaskGroup<A>(returning:isolation:body:), *(v0 + 416), *(v0 + 424));
}

uint64_t withThrowingDiscardingTaskGroup<A>(returning:body:)(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v5[45] = a1;
  v5[46] = a5;
  v7 = *(a5 - 8);
  v5[47] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc(v8 & 0xFFFFFFFFFFFFFFF0);
  v5[48] = v9;
  v5[49] = swift_task_alloc(v8 & 0xFFFFFFFFFFFFFFF0);
  swift_taskGroup_initializeWithFlags(0x100, (v5 + 2), MEMORY[0x1E69E7CA8] + 8);
  v5[39] = v5 + 2;
  v12 = (a3 + *a3);
  v10 = swift_task_alloc(a3[1]);
  v5[50] = v10;
  *v10 = v5;
  v10[1] = withThrowingDiscardingTaskGroup<A>(returning:body:);

  return (v12)(v9, v5 + 39);
}

void withThrowingDiscardingTaskGroup<A>(returning:body:)()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v15 = *v1;
  *(*v1 + 408) = v0;
  v3;
  if (v0)
  {
    v4 = v2[39];
    swift_taskGroup_cancelAll(v4);
    MEMORY[0x1865D4960](v0);
    v5 = withThrowingDiscardingTaskGroup<A>(returning:body:);
    v6 = (v2 + 56);
    v7 = v2 + 34;
    v8 = v4;
    v9 = v0;
  }

  else
  {
    v11 = v2[48];
    v10 = v2[49];
    v12 = v2[46];
    v13 = v2[47];
    v14 = *(v13 + 32);
    v2[52] = v14;
    v2[53] = (v13 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v14(v10, v11, v12);
    v8 = v2[39];
    v5 = withThrowingDiscardingTaskGroup<A>(returning:body:);
    v6 = v2 + 449;
    v7 = v2 + 40;
    v9 = 0;
  }

  swift_taskGroup_waitAll(v6, v8, v9, v5, v7);
}

{
  v1[54] = v0;
  if (v0)
  {
    (*(v1[47] + 8))(v1[49], v1[46]);
    v2 = withThrowingDiscardingTaskGroup<A>(returning:body:);
  }

  else
  {
    v2 = withThrowingDiscardingTaskGroup<A>(returning:body:);
  }

  swift_task_switch(v2, 0, 0);
}

{
  *(v1 + 440) = v0;
  v2 = *(v1 + 408);
  MEMORY[0x1865D4950](v2);
  if (v0)
  {
    MEMORY[0x1865D4950](v2);
    v3 = withThrowingDiscardingTaskGroup<A>(returning:body:);
  }

  else
  {
    v3 = withThrowingDiscardingTaskGroup<A>(returning:body:);
  }

  swift_task_switch(v3, 0, 0);
}

uint64_t withThrowingDiscardingTaskGroup<A>(returning:body:)()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 384);
  v3 = *(v0 + 392);
  (*(v0 + 416))(*(v0 + 360), v3, *(v0 + 368));
  swift_taskGroup_destroy((v0 + 16));
  v3;
  v2;
  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = v0[54];
  v3 = v0[48];
  v2 = v0[49];
  swift_taskGroup_destroy((v0 + 2));
  v2;
  v3;
  v4 = v0[1];

  return v4();
}

{
  v1 = v0[51];
  swift_willThrow();
  v2 = v0[51];
  v4 = v0[48];
  v3 = v0[49];
  swift_taskGroup_destroy((v0 + 2));
  v3;
  v4;
  v5 = v0[1];

  return v5();
}

{
  v1 = v0[55];
  v3 = v0[48];
  v2 = v0[49];
  swift_taskGroup_destroy((v0 + 2));
  v2;
  v3;
  v4 = v0[1];

  return v4();
}

uint64_t TaskLocal.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 80) - 8) + 32))(v5 + *(*v5 + 88), a1);
  return v5;
}

uint64_t TaskLocal.get()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = swift_task_localValueGet(v2);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = (v2 + *(*v2 + 88));
  }

  v7 = *(*(*(v4 + 80) - 8) + 16);

  return v7(a1, v6);
}

void TaskLocal.withValue<A>(_:operation:isolation:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[11] = v20;
  v9[12] = v8;
  v9[9] = a8;
  v9[10] = v19;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  v12 = *(*v8 + 80);
  v9[13] = v12;
  v13 = *(v12 - 8);
  v9[14] = v13;
  v9[15] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    ObjectType = swift_getObjectType();
    v15 = (*(a6 + 8))(ObjectType, a6);
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v9[16] = v15;
  v9[17] = v17;

  swift_task_switch(TaskLocal.withValue<A>(_:operation:isolation:file:line:), v15, v17);
}

void TaskLocal.withValue<A>(_:operation:isolation:file:line:)()
{
  (*(v0[14] + 16))(v0[15], v0[3], v0[13]);
  v1 = swift_task_alloc(96);
  v0[18] = v1;
  *v1 = v0;
  v1[1] = TaskLocal.withValue<A>(_:operation:isolation:file:line:);
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];

  TaskLocal.withValueImpl<A>(_:operation:isolation:file:line:)(v8, v2, v6, v7, v4, v5);
}

{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;
  v2;
  if (v0)
  {
    v4 = v3[16];
    v5 = v3[17];

    swift_task_switch(TaskLocal.withValue<A>(_:operation:isolation:file:line:), v4, v5);
  }

  else
  {
    v3[15];
    v6 = v3[1];

    v6();
  }
}

uint64_t TaskLocal.withValue<A>(_:operation:isolation:file:line:)()
{
  v0[15];
  v1 = v0[1];
  v2 = v0[19];

  return v1();
}

void TaskLocal.withValueImpl<A>(_:operation:isolation:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[5] = a4;
  v7[6] = v6;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[7] = *v6;
  if (a5)
  {
    ObjectType = swift_getObjectType();
    v10 = (*(a6 + 8))(ObjectType, a6);
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v7[8] = v10;
  v7[9] = v12;

  swift_task_switch(TaskLocal.withValueImpl<A>(_:operation:isolation:file:line:), v10, v12);
}

uint64_t TaskLocal.withValueImpl<A>(_:operation:isolation:file:line:)()
{
  v1 = v0[4];
  swift_task_localValuePush(v0[6], v0[3], *(v0[7] + 80));
  v6 = (v1 + *v1);
  v2 = swift_task_alloc(v1[1]);
  v0[10] = v2;
  *v2 = v0;
  v2[1] = TaskLocal.withValueImpl<A>(_:operation:isolation:file:line:);
  v3 = v0[5];
  v4 = v0[2];

  return v6(v4);
}

void TaskLocal.withValueImpl<A>(_:operation:isolation:file:line:)()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;
  v3;
  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = TaskLocal.withValueImpl<A>(_:operation:isolation:file:line:);
  }

  else
  {
    v7 = TaskLocal.withValueImpl<A>(_:operation:isolation:file:line:);
  }

  swift_task_switch(v7, v6, v5);
}

uint64_t TaskLocal.withValueImpl<A>(_:operation:isolation:file:line:)(swift *a1)
{
  swift_task_localValuePop(a1);
  v2 = *(v1 + 8);

  return v2();
}

{
  swift_task_localValuePop(a1);
  v2 = *(v1 + 8);
  v3 = *(v1 + 88);

  return v2();
}

uint64_t TaskLocal.withValue<A>(_:operation:file:line:)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = *(*(*v3 + 80) - 8);
  v8 = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 16) = v8;
  (*(v7 + 16))();
  v9 = swift_task_alloc(32);
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = withCheckedThrowingContinuation<A>(function:_:);

  return TaskLocal.withValueImpl<A>(_:operation:file:line:)(a1, v8, a3);
}

uint64_t TaskLocal.withValueImpl<A>(_:operation:file:line:)(uint64_t a1, uint64_t a2, int *a3)
{
  swift_task_localValuePush(v3, a2, *(*v3 + 80));
  v9 = (a3 + *a3);
  v7 = swift_task_alloc(a3[1]);
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = TaskLocal.withValueImpl<A>(_:operation:file:line:);

  return v9(a1);
}

uint64_t TaskLocal.withValueImpl<A>(_:operation:file:line:)()
{
  v4 = *v0;
  *(*v0 + 16);
  swift_task_localValuePop(v1);
  v2 = *(v4 + 8);

  return v2();
}

void TaskLocal.withValue<A>(_:operation:file:line:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(*v2 + 80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v11 - v6;
  (*(v8 + 16))(v11 - v6);
  v9 = swift_task_localValuePush(v2, v7, v4);
  v10 = a2(v9);
  swift_task_localValuePop(v10);
}

uint64_t TaskLocal.projectedValue.getter()
{
  protocol witness for SerialExecutor.asUnownedSerialExecutor() in conformance DispatchQueueShim();
}

uint64_t key path getter for TaskLocal.projectedValue : <A>TaskLocal<A>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = protocol witness for SerialExecutor.asUnownedSerialExecutor() in conformance DispatchQueueShim();
}

void (*TaskLocal.projectedValue.modify(void *a1))()
{
  *a1 = v1;

  return key path setter for TaskLocal.projectedValue : <A>TaskLocal<A>;
}

uint64_t TaskLocal.description.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(20);
  v2 = _typeName(_:qualified:)();
  MEMORY[0x1865D3D30](v2);

  MEMORY[0x1865D3D30](0x746C756166656428, 0xEF203A65756C6156);
  v3 = *(*v0 + 88);
  v4 = *(v1 + 80);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x1865D3D30](41, 0xE100000000000000);
  return 0;
}

Swift::Void __swiftcall _checkIllegalTaskLocalBindingWithinWithTaskGroup(file:line:)(Swift::String file, Swift::UInt line)
{
  object = file._object;
  countAndFlagsBits = file._countAndFlagsBits;
  hasTaskGroupStatusRecord = swift_task_hasTaskGroupStatusRecord(file._countAndFlagsBits);
  if (hasTaskGroupStatusRecord)
  {
    MEMORY[0x1EEE9AC00](hasTaskGroupStatusRecord);
    v6[2] = countAndFlagsBits;
    v6[3] = object;
    v6[4] = line;
    specialized String.withCString<A>(_:)(partial apply for closure #1 in _checkIllegalTaskLocalBindingWithinWithTaskGroup(file:line:), v6, countAndFlagsBits, object);
  }
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0 || !(a4 & 0x2000000000000000 | a3 & 0x1000000000000000))
  {
    return _StringGuts._slowWithCString<A>(_:)();
  }

  MEMORY[0x1EEE9AC00](a1);
  if ((v5 & 0x2000000000000000) != 0)
  {
    v10[0] = v4;
    v10[1] = v5 & 0xFFFFFFFFFFFFFFLL;
    return v6(v10);
  }

  else
  {
    if ((v4 & 0x1000000000000000) != 0)
    {
      v7 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v8 = v4 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = _StringObject.sharedUTF8.getter();
    }

    return _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5yt_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRyt_TG5SRyAGGytsAD_pIgyrzo_Tf1ncn_n(v7, v8, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
  }
}

void static Task<>.sleep(_:)()
{
  v15 = v0;
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v1[10];
  v1[2] = v2;
  v1[3] = static Task<>.sleep(_:);
  v5 = swift_continuation_init(v3, 0);
  static Task<>.currentPriority.getter(v12);
  NullaryContinuationJob = swift_task_createNullaryContinuationJob(LOBYTE(v12[0]), v5);
  if (specialized static Task<>.currentSchedulableExecutor.getter())
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    v14 = v4 * 0x3B9ACA00uLL;
    v12[0] = 0;
    v12[1] = 0;
    v13 = 1;
    v10 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock();
    SchedulableExecutor.enqueue<A>(_:after:tolerance:clock:)(NullaryContinuationJob, &v14, v12, v11, ObjectType, &type metadata for ContinuousClock, v8, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_task_enqueueGlobalWithDelay(v4, NullaryContinuationJob);
  }

  swift_continuation_await(v3);
}

uint64_t static Task<>.sleep(_:)()
{
  v3 = *v0;
  v1 = *(*v0 + 8);

  return v1();
}

void static Task<>.sleep(nanoseconds:)()
{
  v1 = swift_slowAlloc();
  *(v0 + 128) = v1;
  atomic_store(0, v1);
  v2 = swift_task_alloc(32);
  *(v0 + 136) = v2;
  *(v2 + 16) = v1;

  swift_task_switch(static Task<>.sleep(nanoseconds:), 0, 0);
}

{
  *(v0 + 144) = swift_task_addCancellationHandler(partial apply for closure #2 in static Task<>.sleep(nanoseconds:), *(v0 + 136));

  swift_task_switch(static Task<>.sleep(nanoseconds:), 0, 0);
}

{
  v1 = v0;
  v2 = v0;
  v3 = (v0 + 16);
  *(v1 + 16) = v2;
  *(v1 + 24) = static Task<>.sleep(nanoseconds:);
  v4 = swift_continuation_init(v3, 1uLL);
  while (1)
  {
    v6 = atomic_load(*(v1 + 128));
    if ((v6 & 3) != 0)
    {
      break;
    }

    if (v6 >= 4)
    {
      goto LABEL_13;
    }

    v7 = 0;
    atomic_compare_exchange_strong(*(v1 + 128), &v7, v4);
    if (!v7)
    {
      v8 = *(v1 + 128);
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      v10 = swift_task_create(0, 0, MEMORY[0x1E69E7CA8] + 8, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in static Task<>.sleep(nanoseconds:), v9);
      v11 = specialized static Task<>.currentSchedulableExecutor.getter();
      v13 = *(v1 + 120);
      if (v11)
      {
        v14 = v12;
        v15 = 1000000000 * v13;
        v16 = (v13 * 0x3B9ACA00uLL) >> 64;
        ObjectType = swift_getObjectType();
        *(v1 + 104) = v15;
        *(v1 + 112) = v16;
        *(v1 + 80) = 0;
        *(v1 + 88) = 0;
        *(v1 + 96) = 1;
        v18 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock();
        SchedulableExecutor.enqueue<A>(_:after:tolerance:clock:)(v10, v1 + 104, v1 + 80, v19, ObjectType, &type metadata for ContinuousClock, v14, v18);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_task_enqueueGlobalWithDelay(*(v1 + 120), v10);
      }

      goto LABEL_10;
    }
  }

  if ((v6 & 3) != 3)
  {
    while (1)
    {
LABEL_13:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  swift_continuation_throwingResume(v4, v5);
LABEL_10:

  swift_continuation_await(v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 152) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = static Task<>.sleep(nanoseconds:);
  }

  else
  {
    v3 = static Task<>.sleep(nanoseconds:);
  }

  swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 136);
  swift_task_removeCancellationHandler(*(v0 + 144));
  v1;

  swift_task_switch(static Task<>.sleep(nanoseconds:), 0, 0);
}

{
  v1 = *(v0 + 136);
  swift_task_removeCancellationHandler(*(v0 + 144));
  v1;

  swift_task_switch(static Task<>.sleep(nanoseconds:), 0, 0);
}

uint64_t static Task<>.sleep(nanoseconds:)()
{
  v1 = atomic_load(*(v0 + 128));
  v2 = v1 & 3;
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      MEMORY[0x1865D4B40](*(v0 + 128), -1, -1);
      lazy protocol witness table accessor for type CancellationError and conformance CancellationError();
      swift_allocError();
      swift_willThrow();
      swift_willThrow();
      v3 = *(v0 + 8);
      goto LABEL_7;
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  if (!v2)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  MEMORY[0x1865D4B40](*(v0 + 128), -1, -1);
  v3 = *(v0 + 8);
LABEL_7:

  return v3();
}

{
  v1 = *(v0 + 152);
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in closure #1 in closure #1 in static Task<>.sleep(nanoseconds:)(uint64_t a1, swift::AsyncTask *a2)
{
  specialized static Task<>.onSleepWake(_:)(*(v2 + 16), a2);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t AsyncStream._Storage.State.init(limit:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  type metadata accessor for Optional();
  type metadata accessor for UnsafeContinuation();
  *a2 = Array.init()();
  result = _Deque._Storage.init()();
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 8) = result;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return result;
}

void *AsyncStream._Storage.deinit()
{
  v1 = v0;
  v2 = v0[6];
  if (v2)
  {
    v3 = v0[7];
    v9 = 1;

    v2(&v9);
    _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v2);
    v4 = v1[6];
  }

  else
  {
    v4 = 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[7];

  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v4);
  return v1;
}

uint64_t AsyncStream._Storage.__deallocating_deinit()
{
  AsyncStream._Storage.deinit();

  return swift_deallocClassInstance();
}

uint64_t AsyncStream._Storage.getOnTermination()()
{
  _swift_async_stream_lock_lock((v0 + 72));
  v1 = *(v0 + 48);
  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOy_0(v1);
  _swift_async_stream_lock_unlock((v0 + 72));
  return v1;
}

uint64_t AsyncStream._Storage.setOnTermination(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&v2->_os_unfair_lock_opaque;
  _swift_async_stream_lock_lock(v2 + 18);
  v8 = *&v2[12]._os_unfair_lock_opaque;
  v9 = *&v2[14]._os_unfair_lock_opaque;
  if (v8)
  {
    v7 = swift_allocObject();
    v10 = v7;
    v7[2] = *(v6 + 80);
    v7[3] = v8;
    v7[4] = v9;
    v11 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed AsyncStream<A>.Continuation.Termination) -> ()partial apply;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v18[0] = v11;
  v18[1] = v10;
  MEMORY[0x1EEE9AC00](v7);
  v17[2] = v3;
  v17[3] = a1;
  v17[4] = a2;
  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOy_0(v8);
  v12 = *(v6 + 80);
  type metadata accessor for AsyncStream.Continuation.Termination();
  v13 = MEMORY[0x1E69E7CA8];
  swift_getFunctionTypeMetadata1();
  v14 = type metadata accessor for Optional();
  _ss20withExtendedLifetimeyq0_x_q0_yq_YKXEtq_YKs5ErrorR_Ri_zRi0_zRi_0_r1_lF(v18, partial apply for closure #1 in AsyncStream._Storage.setOnTermination(_:), v17, v14, MEMORY[0x1E69E73E0], v13 + 8, MEMORY[0x1E69E7410], v15);
  return _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v11);
}

uint64_t _ss20withExtendedLifetimeyq0_x_q0_yq_YKXEtq_YKs5ErrorR_Ri_zRi0_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00]();
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

void AsyncStream._Storage.cancel@Sendable ()()
{
  _swift_async_stream_lock_lock((v0 + 72));
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  _swift_async_stream_lock_unlock((v0 + 72));
  if (v1)
  {
    v3 = 1;
    v1(&v3);
    _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v1);
  }

  AsyncStream._Storage.finish()();
}

Swift::Void __swiftcall AsyncStream._Storage.finish()()
{
  v1 = (v0 + 72);
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v20 - v6;
  _swift_async_stream_lock_lock((v0 + 72));
  v8 = *(v0 + 16);
  v9 = *(v0 + 48);
  v20[1] = *(v0 + 56);
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  v23 = v8;
  v10 = type metadata accessor for UnsafeContinuation();
  type metadata accessor for Array();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    _swift_async_stream_lock_unlock(v1);
    if (v9)
    {
      v21 = 0;
      v9(&v21);
      _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v9);
    }
  }

  else
  {
    v20[0] = v4;
    v11 = *(v0 + 16);

    Array.removeAll(keepingCapacity:)(0);
    _swift_async_stream_lock_unlock(v1);
    if (v9)
    {
      v22 = 0;
      v9(&v22);
      _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v9);
    }

    if (MEMORY[0x1865D3E00](v11, v10))
    {
      v12 = (v20[0] + 32);
      v13 = 4;
      do
      {
        v14 = v13 - 4;
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          v16 = *(v11 + 8 * v13);
          v17 = __OFADD__(v14, 1);
          v18 = v13 - 3;
          if (v17)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v16 = _ArrayBuffer._getElementSlowPath(_:)();
          swift_unknownObjectRelease();
          v17 = __OFADD__(v14, 1);
          v18 = v13 - 3;
          if (v17)
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        (*(*(v2 - 8) + 56))(v7, 1, 1, v2);
        (*v12)(*(*(v16 + 8) + 40), v7, v3);
        swift_continuation_resume(v16, v19);
        ++v13;
      }

      while (v18 != MEMORY[0x1865D3E00](v11, v10));
    }
  }
}

void specialized AsyncStream._Storage.yield(_:)(uint64_t a1@<X8>)
{
  v2 = v1;
  _swift_async_stream_lock_lock((v1 + 72));
  v4 = (v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(*(v1 + 24) + 24);
  if (*(*(v1 + 16) + 16))
  {
    v8 = specialized RangeReplaceableCollection.removeFirst()();
    v9 = *(v1 + 64);
    if (v7 <= 0)
    {
      if (*(v1 + 64))
      {
        v37 = 0;
        _swift_async_stream_lock_unlock((v1 + 72));
        **(*(v8 + 8) + 40) = 1;
        swift_continuation_resume(v8, v11);
        v10 = 2;
      }

      else
      {
        if (v6 > 1)
        {
          v37 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v5;
        }

        _swift_async_stream_lock_unlock((v1 + 72));
        **(*(v8 + 8) + 40) = 0;
        swift_continuation_resume(v8, v27);
        v10 = 0;
      }

      goto LABEL_64;
    }

    if (*(v1 + 64))
    {
      v37 = 0;
      v10 = 2;
LABEL_54:
      specialized _Deque.removeFirst()();
      _swift_async_stream_lock_unlock(v2 + 18);
      **(*(v8 + 8) + 40) = 0;
      swift_continuation_resume(v8, v32);
LABEL_64:
      *a1 = v37;
      *(a1 + 8) = v10;
      return;
    }

    if (v6)
    {
      if (v6 != 1)
      {
        v20 = *(*v4 + 24);
        v21 = v20 + 1;
        if (!__OFADD__(v20, 1))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v23 = *v4;
          if (*(*v4 + 16) < v21 || (isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized _Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v21, 0);
            v23 = *v4;
          }

          specialized _Deque._UnsafeHandle.uncheckedAppend(_:)((v23 + 16));
          v10 = 0;
          v37 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_54;
        }

        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      if (v7 < v5)
      {
        v12 = *(*v4 + 24);
        v13 = v12 + 1;
        if (!__OFADD__(v12, 1))
        {
LABEL_27:
          v18 = swift_isUniquelyReferenced_nonNull_native();
          v19 = *v4;
          if (*(*v4 + 16) < v13 || (v18 & 1) == 0)
          {
            specialized _Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v13, 0);
            v19 = *v4;
          }

          specialized _Deque._UnsafeHandle.uncheckedAppend(_:)((v19 + 16));
          v10 = 0;
          v37 = v5 + ~v7;
          goto LABEL_54;
        }

        __break(1u);
        goto LABEL_15;
      }

      specialized _Deque.removeFirst()();
      v28 = *(*v4 + 24);
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v30 = swift_isUniquelyReferenced_nonNull_native();
      v31 = *v4;
      if (*(*v4 + 16) < v29 || (v30 & 1) == 0)
      {
        specialized _Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v29, 0);
        v31 = *v4;
      }

      specialized _Deque._UnsafeHandle.uncheckedAppend(_:)((v31 + 16));
    }

    else
    {
      if (v7 < v5)
      {
        v17 = *(*v4 + 24);
        v13 = v17 + 1;
        if (!__OFADD__(v17, 1))
        {
          goto LABEL_27;
        }

        goto LABEL_68;
      }

      v37 = 0;
    }

    v10 = 1;
    goto LABEL_54;
  }

  if (*(v1 + 64))
  {
    v37 = 0;
    v10 = 2;
LABEL_63:
    _swift_async_stream_lock_unlock(v2 + 18);
    goto LABEL_64;
  }

LABEL_15:
  if (!v6)
  {
    if (v7 >= v5)
    {
LABEL_61:
      v37 = 0;
LABEL_62:
      v10 = 1;
      goto LABEL_63;
    }

    v24 = v7 + 1;
    if (__OFSUB__(v5, v7 + 1))
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v37 = v5 - (v7 + 1);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v4;
    if (*(*v4 + 16) <= v7)
    {
      goto LABEL_43;
    }

LABEL_42:
    if (v25)
    {
LABEL_44:
      specialized _Deque._UnsafeHandle.uncheckedAppend(_:)((v26 + 16));
      v10 = 0;
      goto LABEL_63;
    }

LABEL_43:
    specialized _Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v24, 0);
    v26 = *v4;
    goto LABEL_44;
  }

  if (v6 != 1)
  {
    v37 = 0x7FFFFFFFFFFFFFFFLL;
    v24 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v26 = *v4;
      if (*(*v4 + 16) < v24)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    goto LABEL_66;
  }

  if (v7 < v5)
  {
    v14 = v7 + 1;
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    if (*(*v4 + 16) <= v7 || (v15 & 1) == 0)
    {
      specialized _Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v7 + 1, 0);
      v16 = *v4;
    }

    specialized _Deque._UnsafeHandle.uncheckedAppend(_:)((v16 + 16));
    if (!__OFSUB__(v5, v14))
    {
      v10 = 0;
      v37 = v5 - v14;
      goto LABEL_63;
    }

    goto LABEL_69;
  }

  if (v7 < 1)
  {
    goto LABEL_61;
  }

  specialized _Deque.removeFirst()();
  v33 = *(*v4 + 24);
  v34 = v33 + 1;
  if (!__OFADD__(v33, 1))
  {
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v36 = *v4;
    if (*(*v4 + 16) < v34 || (v35 & 1) == 0)
    {
      specialized _Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(v34, 0);
      v36 = *v4;
    }

    specialized _Deque._UnsafeHandle.uncheckedAppend(_:)((v36 + 16));
    goto LABEL_62;
  }

LABEL_71:
  __break(1u);
}

void AsyncStream._Storage.yield(_:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v55 = a1;
  v53 = a2;
  v4 = *(*v2 + 80);
  v5 = type metadata accessor for Optional();
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v50 = &v48 - v8;
  v54 = *(v4 - 8);
  v9 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v48 - v10;
  _swift_async_stream_lock_lock((v2 + 72));
  v49 = *(v2 + 32);
  v11 = *(v2 + 40);
  v12 = *(v2 + 24);

  _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, v12, &type metadata for _DequeBufferHeader, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v47);
  v13 = v56;

  v56 = *(v3 + 16);
  v52 = v5;
  type metadata accessor for UnsafeContinuation();
  type metadata accessor for Array();
  swift_getWitnessTable();
  if ((Collection.isEmpty.getter() & 1) == 0)
  {
    swift_getWitnessTable();
    RangeReplaceableCollection.removeFirst()();
    v14 = v56;
    if (v13 < 1)
    {
      if (*(v3 + 64))
      {
        v20 = v54;
        (*(v54 + 8))(v55, v4);
        type metadata accessor for AsyncStream.Continuation.YieldResult();
        swift_storeEnumTagMultiPayload();
        _swift_async_stream_lock_unlock((v3 + 72));
        v21 = v50;
        (*(v20 + 56))(v50, 1, 1, v4);
        (*(v51 + 32))(*(*(v14 + 8) + 40), v21, v52);
      }

      else
      {
        if (v11 > 1)
        {
          v30 = 0x7FFFFFFFFFFFFFFFLL;
          v28 = v51;
          v27 = v52;
          v29 = v54;
        }

        else
        {
          v28 = v51;
          v27 = v52;
          v29 = v54;
          v30 = v49;
        }

        *v53 = v30;
        type metadata accessor for AsyncStream.Continuation.YieldResult();
        swift_storeEnumTagMultiPayload();
        _swift_async_stream_lock_unlock((v3 + 72));
        v44 = v50;
        (*(v29 + 32))(v50, v55, v4);
        (*(v29 + 56))(v44, 0, 1, v4);
        (*(v28 + 32))(*(*(v14 + 8) + 40), v44, v27);
      }

      goto LABEL_37;
    }

    if (*(v3 + 64))
    {
      v15 = v54;
      (*(v54 + 8))(v55, v4);
      type metadata accessor for AsyncStream.Continuation.YieldResult();
LABEL_30:
      swift_storeEnumTagMultiPayload();
      v26 = v51;
      v25 = v52;
      goto LABEL_31;
    }

    if (v11)
    {
      if (v11 != 1)
      {
        v37 = type metadata accessor for _Deque();
        v38 = v55;
        _Deque.append(_:)(v55, v37);
        v15 = v54;
        (*(v54 + 8))(v38, v4);
        *v53 = 0x7FFFFFFFFFFFFFFFLL;
        type metadata accessor for AsyncStream.Continuation.YieldResult();
        goto LABEL_30;
      }

      v23 = type metadata accessor for _Deque();
      v24 = v49;
      v26 = v51;
      v25 = v52;
      v15 = v54;
      if (v13 >= v49)
      {
        v45 = v23;
        _Deque.removeFirst()(v23);
        type metadata accessor for AsyncStream.Continuation.YieldResult();
        swift_storeEnumTagMultiPayload();
        v46 = v55;
        _Deque.append(_:)(v55, v45);
        (*(v15 + 8))(v46, v4);
        goto LABEL_31;
      }

      _Deque.append(_:)(v55, v23);
    }

    else
    {
      v24 = v49;
      v26 = v51;
      v25 = v52;
      if (v13 >= v49)
      {
        v15 = v54;
        (*(v54 + 32))(v53, v55, v4);
        type metadata accessor for AsyncStream.Continuation.YieldResult();
        swift_storeEnumTagMultiPayload();
        goto LABEL_31;
      }

      v36 = type metadata accessor for _Deque();
      _Deque.append(_:)(v55, v36);
      v15 = v54;
    }

    (*(v15 + 8))(v55, v4);
    *v53 = v24 + ~v13;
    type metadata accessor for AsyncStream.Continuation.YieldResult();
    swift_storeEnumTagMultiPayload();
LABEL_31:
    v39 = type metadata accessor for _Deque();
    v40 = v48;
    _Deque.removeFirst()(v39);
    _swift_async_stream_lock_unlock((v3 + 72));
    v41 = v50;
    (*(v15 + 32))(v50, v40, v4);
    (*(v15 + 56))(v41, 0, 1, v4);
    (*(v26 + 32))(*(*(v14 + 8) + 40), v41, v25);
LABEL_37:
    swift_continuation_resume(v14, v22);
    return;
  }

  if (*(v3 + 64))
  {
    (*(v54 + 8))(v55, v4);
    type metadata accessor for AsyncStream.Continuation.YieldResult();
LABEL_4:
    swift_storeEnumTagMultiPayload();
LABEL_5:
    _swift_async_stream_lock_unlock((v3 + 72));
    return;
  }

  if (v11)
  {
    if (v11 != 1)
    {
      *v53 = 0x7FFFFFFFFFFFFFFFLL;
      type metadata accessor for AsyncStream.Continuation.YieldResult();
      swift_storeEnumTagMultiPayload();
      v34 = type metadata accessor for _Deque();
      v35 = v55;
      _Deque.append(_:)(v55, v34);
      (*(v54 + 8))(v35, v4);
      goto LABEL_5;
    }

    v16 = v49;
    v17 = v54;
    if (v13 < v49)
    {
      v18 = type metadata accessor for _Deque();
      v19 = v55;
      _Deque.append(_:)(v55, v18);
      (*(v17 + 8))(v19, v4);
      if (!__OFSUB__(v16, v13 + 1))
      {
        *v53 = v16 - (v13 + 1);
        type metadata accessor for AsyncStream.Continuation.YieldResult();
        goto LABEL_4;
      }

      __break(1u);
      goto LABEL_42;
    }

    if (v13 >= 1)
    {
      v42 = type metadata accessor for _Deque();
      _Deque.removeFirst()(v42);
      type metadata accessor for AsyncStream.Continuation.YieldResult();
      swift_storeEnumTagMultiPayload();
      v43 = v55;
      _Deque.append(_:)(v55, v42);
      (*(v17 + 8))(v43, v4);
      goto LABEL_5;
    }

LABEL_40:
    (*(v54 + 32))(v53, v55, v4);
    type metadata accessor for AsyncStream.Continuation.YieldResult();
    goto LABEL_4;
  }

  if (v13 >= v49)
  {
    goto LABEL_40;
  }

  v31 = v54;
  if (!__OFSUB__(v49, v13 + 1))
  {
    *v53 = v49 - (v13 + 1);
    type metadata accessor for AsyncStream.Continuation.YieldResult();
    swift_storeEnumTagMultiPayload();
    v32 = type metadata accessor for _Deque();
    v33 = v55;
    _Deque.append(_:)(v55, v32);
    (*(v31 + 8))(v33, v4);
    goto LABEL_5;
  }

LABEL_42:
  __break(1u);
}

uint64_t specialized RangeReplaceableCollection.removeFirst()()
{
  if (*(*v0 + 16))
  {
    v1 = *(*v0 + 32);
    specialized RangeReplaceableCollection.removeFirst(_:)(1uLL);
    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t _Deque.append(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v2, &type metadata for _DequeBufferHeader, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v10);
  if (__OFADD__(v12, 1))
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for _Deque._Storage();
    _Deque._Storage.ensureUnique(minimumCapacity:linearGrowth:)(v12 + 1, 0);
    v6 = *v2;
    MEMORY[0x1EEE9AC00](v7);
    v10 = v4;
    v11 = a1;
    return _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.append(_:), &v9, v8, v4, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
  }

  return result;
}

uint64_t specialized _Deque.removeFirst()()
{
  if (!*(*v0 + 24))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = *(v2 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_DequeBufferCyytGMd, &_ss12_DequeBufferCyytGMR);
    v3 = swift_allocObject();
    v5 = *(v2 + 24);
    *(v3 + 16) = v4;
    v6 = (v3 + 16);
    *(v3 + 24) = v5;
    swift_getObjectType();
    _swift_getObjCClassInstanceExtents();
    if ((v7 & 0x8000000000000000) == 0)
    {
      if (v7 == 16)
      {
LABEL_8:
        if (_swift_objcClassUsesNativeSwiftReferenceCounting())
        {
          if (*(v2 + 24) >= 1)
          {
            specialized _Deque._UnsafeHandle.segments()((v2 + 16), v2 + 40, v10);
            specialized _Deque._UnsafeHandle.initialize(at:from:)(*(v2 + 32), v10[0], v10[1], v6, v3 + 40, 201, specialized UnsafeMutablePointer.initialize(from:count:));
            if ((v11 & 1) == 0)
            {
              specialized _Deque._UnsafeHandle.initialize(at:from:)(0, v10[2], v10[3], v6, v3 + 40, 201, specialized UnsafeMutablePointer.initialize(from:count:));
            }
          }

          *v0 = v3;
          goto LABEL_13;
        }

LABEL_18:
        result = _fatalErrorMessage(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      _swift_getObjCClassInstanceExtents();
      if ((v8 & 0x8000000000000000) == 0)
      {
        if (v8 != 40)
        {
          goto LABEL_18;
        }

        goto LABEL_8;
      }
    }

LABEL_17:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_18;
  }

  v3 = *v0;
LABEL_13:

  return specialized _Deque._UnsafeHandle.uncheckedRemoveFirst()((v3 + 16));
}

uint64_t _Deque.removeFirst()(uint64_t a1)
{
  v8[4] = *v1;
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v3 = *(a1 + 16);
    type metadata accessor for _Deque._Storage();
    _Deque._Storage.ensureUnique()();
    v4 = *v1;
    MEMORY[0x1EEE9AC00](v5);
    v8[2] = v3;
    return _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.removeFirst(), v8, v6, v3, v3, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
  }

  return result;
}

void AsyncStream._Storage.next(_:)(continuationChecking *a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Optional();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  v9 = *(v3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v22 - v11;
  _swift_async_stream_lock_lock((v1 + 72));
  v24 = a1;
  v13 = MEMORY[0x1E69E73E0];
  v23 = v4;
  type metadata accessor for UnsafeContinuation();
  type metadata accessor for Array();
  Array.append(_:)();
  v14 = *(v1 + 24);

  _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, v14, &type metadata for _DequeBufferHeader, v3, v13, MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v21);
  v15 = v24;

  if (v15 < 1)
  {
    v20 = v22;
    v19 = v23;
    if (*(v1 + 64) != 1)
    {
      _swift_async_stream_lock_unlock((v1 + 72));
      return;
    }

    swift_getWitnessTable();
    RangeReplaceableCollection.removeFirst()();
    v16 = v24;
    _swift_async_stream_lock_unlock((v1 + 72));
    (*(v9 + 56))(v8, 1, 1, v3);
    (*(v20 + 32))(*(*(v16 + 8) + 40), v8, v19);
  }

  else
  {
    swift_getWitnessTable();
    RangeReplaceableCollection.removeFirst()();
    v16 = v24;
    v17 = type metadata accessor for _Deque();
    _Deque.removeFirst()(v17);
    _swift_async_stream_lock_unlock((v1 + 72));
    (*(v9 + 32))(v8, v12, v3);
    (*(v9 + 56))(v8, 0, 1, v3);
    (*(v22 + 32))(*(*(v16 + 8) + 40), v8, v23);
  }

  swift_continuation_resume(v16, v18);
}

void AsyncStream._Storage.next()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  swift_task_switch(AsyncStream._Storage.next(), 0, 0);
}

void AsyncStream._Storage.next()()
{
  v1 = v0[3];
  v2 = v0[4];

  v3 = swift_task_alloc(32);
  v0[5] = v3;
  *(v3 + 16) = partial apply for implicit closure #2 in implicit closure #1 in AsyncStream._Storage.next();
  *(v3 + 24) = v1;
  v4 = swift_task_alloc(96);
  v0[6] = v4;
  v5 = *(v2 + 80);
  type metadata accessor for Optional();
  *v4 = v0;
  v4[1] = AsyncStream._Storage.next();
  v6 = v0[2];
  v7 = v0[3];

  withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &async function pointer to partial apply for closure #1 in AsyncStream._Storage.next(), v7, partial apply for closure #2 in AsyncStream._Storage.next(), v3, 0, 0);
}

uint64_t AsyncStream._Storage.next()()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 48);
  if (v0)
  {

    JUMPOUT(0x1865D4950);
  }

  v4 = *(v2 + 40);
  v5 = *(v2 + 24);

  v4;
  v6 = *(v3 + 8);

  return v6();
}

void closure #1 in AsyncStream._Storage.next()(uint64_t a1, void *a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = *a2;
  swift_task_switch(closure #1 in AsyncStream._Storage.next(), 0, 0);
}

uint64_t closure #1 in AsyncStream._Storage.next()()
{
  v1 = v0[4];
  v2 = swift_task_alloc(112);
  v0[5] = v2;
  v3 = *(v1 + 80);
  v4 = type metadata accessor for Optional();
  *v2 = v0;
  v2[1] = closure #1 in AsyncStream._Storage.next();
  v5 = v0[2];
  v6 = v0[3];

  return (withUnsafeContinuation<A>(isolation:_:))(v5, 0, 0, partial apply for closure #1 in closure #1 in AsyncStream._Storage.next(), v6, v4);
}

{
  v3 = *v0;
  *(*v0 + 40);
  v1 = *(v3 + 8);

  return v1();
}

uint64_t static AsyncStream._Storage.create(limit:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  protocol witness for static Equatable.== infix(_:_:) in conformance ContinuousClock.Instant.CodingKeys();
  v4 = swift_allocObject();
  *&v8 = v2;
  BYTE8(v8) = v3;
  v5 = *(v1 + 80);
  AsyncStream._Storage.State.init(limit:)(&v8, &v13);
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v11 = v16;
  v12 = v17;
  v6 = type metadata accessor for AsyncStream._Storage.State();
  (*(*(v6 - 8) + 32))(v4 + 16, &v8, v6);
  _swift_async_stream_lock_init((v4 + 72));
  return v4;
}

uint64_t AsyncThrowingStream._Storage.State.init(limit:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  *a2 = 0;
  *(a2 + 8) = _Deque._Storage.init()();
  v5 = type metadata accessor for AsyncThrowingStream._Storage.State();
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v6 = *(v5 + 56);
  v7 = type metadata accessor for AsyncThrowingStream._Storage.Terminal();
  result = (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return result;
}

void *AsyncThrowingStream._Storage.deinit()
{
  v1 = v0;
  v2 = *v0;
  v3 = v2[10];
  v4 = v2[11];
  v5 = v2[12];
  v6 = type metadata accessor for AsyncThrowingStream.Continuation.Termination();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  v11 = v1 + v2[13];
  v12 = *(v11 + 4);
  if (v12)
  {
    v13 = *(v11 + 5);
    v14 = type metadata accessor for Optional();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);

    v12(v10);
    _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v12);
    (*(v7 + 8))(v10, v6);
  }

  v15 = type metadata accessor for AsyncThrowingStream._Storage.State();
  (*(*(v15 - 8) + 8))(v11, v15);
  return v1;
}

uint64_t AsyncThrowingStream._Storage.__deallocating_deinit()
{
  AsyncThrowingStream._Storage.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t AsyncThrowingStream._Storage.getOnTermination()()
{
  _swift_async_stream_lock_lock((v0 + ((*(*v0 + 48) + 7) & 0x1FFFFFFF8)));
  v1 = *(v0 + *(*v0 + 104) + 32);
  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOy_0(v1);
  _swift_async_stream_lock_unlock((v0 + ((*(*v0 + 48) + 7) & 0x1FFFFFFF8)));
  return v1;
}

uint64_t AsyncThrowingStream._Storage.setOnTermination(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  _swift_async_stream_lock_lock((v2 + ((*(*v2 + 48) + 7) & 0x1FFFFFFF8)));
  v7 = v2 + *(*v2 + 104);
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  if (v8)
  {
    v6 = swift_allocObject();
    v10 = v6;
    *(v6 + 16) = *(v5 + 80);
    *(v6 + 32) = *(v5 + 96);
    *(v6 + 40) = v8;
    *(v6 + 48) = v9;
    v11 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed AsyncThrowingStream<A, B>.Continuation.Termination) -> ()partial apply;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v20[0] = v11;
  v20[1] = v10;
  MEMORY[0x1EEE9AC00](v6);
  v19[2] = v2;
  v19[3] = a1;
  v19[4] = a2;
  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOy_0(v8);
  v12 = *(v5 + 80);
  v13 = *(v5 + 88);
  v14 = *(v5 + 96);
  type metadata accessor for AsyncThrowingStream.Continuation.Termination();
  v15 = MEMORY[0x1E69E7CA8];
  swift_getFunctionTypeMetadata1();
  v16 = type metadata accessor for Optional();
  _ss20withExtendedLifetimeyq0_x_q0_yq_YKXEtq_YKs5ErrorR_Ri_zRi0_zRi_0_r1_lF(v20, partial apply for closure #1 in AsyncThrowingStream._Storage.setOnTermination(_:), v19, v16, MEMORY[0x1E69E73E0], v15 + 8, MEMORY[0x1E69E7410], v17);
  return _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v11);
}

void AsyncThrowingStream._Storage.cancel@Sendable ()()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 88);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  v9 = *(v1 + 80);
  v10 = *(v1 + 96);
  v11 = type metadata accessor for AsyncThrowingStream.Continuation.Termination();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  _swift_async_stream_lock_lock((v0 + ((*(v2 + 48) + 7) & 0x1FFFFFFF8)));
  v16 = v0 + *(*v0 + 104);
  v17 = *(v16 + 32);
  v18 = *(v16 + 40);
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  _swift_async_stream_lock_unlock((v0 + ((*(*v0 + 48) + 7) & 0x1FFFFFFF8)));
  if (v17)
  {
    (*(v5 + 56))(v15, 1, 1, v4);
    v17(v15);
    _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v17);
    (*(v12 + 8))(v15, v11);
  }

  (*(*(v3 - 8) + 56))(v8, 1, 1, v3);
  AsyncThrowingStream._Storage.finish(throwing:)(v8);
}

void AsyncThrowingStream._Storage.finish(throwing:)(uint64_t a1)
{
  v2 = v1;
  v119 = a1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 96);
  v7 = type metadata accessor for AsyncThrowingStream._Storage.Terminal();
  v120 = *(v7 - 8);
  v8 = *(v120 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v96 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v95 = &v92 - v11;
  v12 = type metadata accessor for Optional();
  v104 = *(v12 - 8);
  v105 = v12;
  v13 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v103 = &v92 - v14;
  v15 = type metadata accessor for AsyncThrowingStream.Continuation.Termination();
  v110 = *(v15 - 8);
  v111 = v15;
  v16 = *(v110 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v109 = &v92 - v18;
  v102 = *(v4 - 8);
  v19 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v101 = &v92 - v20;
  v21 = type metadata accessor for Optional();
  v22 = *(v21 - 8);
  v117 = v21;
  v118 = v22;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v92 - v25;
  v107 = *(v5 - 8);
  v27 = *(v107 + 64);
  v28 = MEMORY[0x1EEE9AC00](v24);
  v93 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v100 = (&v92 - v30);
  v31 = type metadata accessor for Optional();
  v32 = *(v31 - 8);
  v33 = v32[8];
  v34 = MEMORY[0x1EEE9AC00](v31);
  v99 = &v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v92 - v36;
  _swift_async_stream_lock_lock((v2 + ((*(v3 + 48) + 7) & 0x1FFFFFFF8)));
  v38 = (v2 + *(*v2 + 104));
  v39 = v38[5];
  v115 = v38[4];
  v116 = v5;
  v108 = v39;
  v112 = v4;
  v94 = v6;
  v40 = type metadata accessor for AsyncThrowingStream._Storage.State();
  v38[4] = 0;
  v38[5] = 0;
  v41 = *(v40 + 56);
  v98 = v32[2];
  v98(v37, v38 + v41, v31);
  v42 = *(v120 + 48);
  v114 = v7;
  v97 = v42;
  LODWORD(v7) = v42(v37, 1, v7);
  v43 = v32[1];
  v113 = v31;
  v106 = v43;
  v43(v37, v31);
  if (v7 == 1)
  {
    v92 = v41;
    v44 = v118;
    v45 = v117;
    (*(v118 + 16))(v26, v119, v117);
    v46 = v107;
    v47 = v116;
    if ((*(v107 + 48))(v26, 1, v116) == 1)
    {
      (*(v44 + 8))(v26, v45);
      v41 = v92;
      v106(v38 + v92, v113);
      v48 = 1;
    }

    else
    {
      v49 = *(v46 + 32);
      v50 = v100;
      v49(v100, v26, v116);
      v51 = v49;
      v41 = v92;
      v106(v38 + v92, v113);
      v51(v38 + v41, v50, v116);
      v47 = v116;
      v48 = 0;
    }

    (*(v46 + 56))(v38 + v41, v48, 1, v47);
    (*(v120 + 56))(v38 + v41, 0, 1, v114);
  }

  if (!*v38)
  {
    _swift_async_stream_lock_unlock((v2 + ((*(*v2 + 48) + 7) & 0x1FFFFFFF8)));
    v62 = v115;
    if (!v115)
    {
      (*(v118 + 8))(v119, v117);
      return;
    }

    v63 = v118;
    v64 = v109;
    v65 = v117;
    (*(v118 + 32))(v109, v119, v117);
LABEL_15:
    (*(v63 + 56))(v64, 0, 1, v65);
    (v62)(v64);
    _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v62);
    (*(v110 + 8))(v64, v111);
    return;
  }

  v100 = *v38;
  v52 = v41;
  v53 = v38[1];

  v54 = v112;
  _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, v53, &type metadata for _DequeBufferHeader, v112, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v91);
  v55 = v121;

  if (v55 >= 1)
  {
    *v38 = 0;
    v56 = type metadata accessor for _Deque();
    v57 = v101;
    _Deque.removeFirst()(v56);
    _swift_async_stream_lock_unlock((v2 + ((*(*v2 + 48) + 7) & 0x1FFFFFFF8)));
    v58 = v115;
    if (v115)
    {
      v59 = v118;
      v60 = v109;
      v61 = v117;
      (*(v118 + 32))(v109, v119, v117);
      (*(v59 + 56))(v60, 0, 1, v61);
      (v58)(v60);
      _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v58);
      (*(v110 + 8))(v60, v111);
    }

    else
    {
      (*(v118 + 8))(v119, v117);
    }

    v70 = v102;
    v69 = v103;
    (*(v102 + 32))(v103, v57, v54);
    (*(v70 + 56))(v69, 0, 1, v54);
    v71 = v100;
    (*(v104 + 32))(*(*(v100 + 8) + 40), v69, v105);
    swift_continuation_throwingResume(v71, v72);
    return;
  }

  v66 = v99;
  v67 = v113;
  v98(v99, v38 + v52, v113);
  v68 = v114;
  if (v97(v66, 1, v114) == 1)
  {
    v106(v66, v67);
    _swift_async_stream_lock_unlock((v2 + ((*(*v2 + 48) + 7) & 0x1FFFFFFF8)));
    v65 = v117;
    v63 = v118;
    v62 = v115;
    if (!v115)
    {
      (*(v118 + 8))(v119, v117);
      return;
    }

    v64 = v109;
    (*(v118 + 32))(v109, v119, v117);
    goto LABEL_15;
  }

  v73 = *(v120 + 32);
  v74 = v95;
  v73(v95, v66, v68);
  *v38 = 0;
  _swift_async_stream_lock_unlock((v2 + ((*(*v2 + 48) + 7) & 0x1FFFFFFF8)));
  v75 = v115;
  if (v115)
  {
    v76 = v118;
    v77 = v109;
    v78 = v117;
    (*(v118 + 32))(v109, v119, v117);
    (*(v76 + 56))(v77, 0, 1, v78);
    (v75)(v77);
    _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v75);
    (*(v110 + 8))(v77, v111);
  }

  else
  {
    (*(v118 + 8))(v119, v117);
  }

  v79 = v104;
  v80 = v96;
  v73(v96, v74, v68);
  v81 = v107;
  v82 = v116;
  if ((*(v107 + 48))(v80, 1, v116) == 1)
  {
    v83 = v103;
    (*(v102 + 56))(v103, 1, 1, v112);
    v84 = v100;
    (*(v79 + 32))(*(*(v100 + 8) + 40), v83, v105);
    swift_continuation_throwingResume(v84, v85);
  }

  else
  {
    v86 = *(v81 + 32);
    v87 = v93;
    v86(v93, v80, v82);
    v88 = swift_allocError();
    v86(v89, v87, v82);
    v121 = v88;
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    UnsafeContinuation.resume(throwing:)(&v121, v100, v105, v90);
  }
}

void AsyncThrowingStream._Storage.yield(_:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v107 = a2;
  v108 = a1;
  v3 = *v2;
  v94 = *(*(*v2 + 88) - 8);
  v4 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v92 = &v91 - v5;
  v7 = *(v6 + 80);
  v112 = *(v6 + 96);
  v113 = v8;
  v9 = type metadata accessor for AsyncThrowingStream._Storage.Terminal();
  v110 = *(v9 - 8);
  v10 = *(v110 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v93 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v96 = &v91 - v13;
  v105 = type metadata accessor for Optional();
  v103 = *(v105 - 8);
  v14 = *(v103 + 64);
  v15 = MEMORY[0x1EEE9AC00](v105);
  v102 = &v91 - v16;
  v111 = *(v7 - 8);
  v17 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v99 = &v91 - v18;
  v109 = v9;
  v19 = type metadata accessor for Optional();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v95 = &v91 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v91 - v27;
  _swift_async_stream_lock_lock((v2 + ((*(v3 + 48) + 7) & 0x1FFFFFFF8)));
  v29 = *(*v2 + 104);
  v106 = v2;
  v101 = *(v2 + v29 + 16);
  v100 = *(v2 + v29 + 24);
  v30 = (v2 + v29);
  v31 = *(v2 + v29 + 8);
  v104 = (v2 + v29 + 8);

  _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, v31, &type metadata for _DequeBufferHeader, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v90);
  v32 = v114;

  v33 = *v30;
  if (*v30)
  {
    v34 = v19;
    v35 = v109;
    v97 = v7;
    v98 = v33;
    v36 = *(type metadata accessor for AsyncThrowingStream._Storage.State() + 56);
    v37 = *(v20 + 16);
    v38 = v110;
    v39 = (v110 + 48);
    if (v32 < 1)
    {
      v104 = v30;
      v54 = v95;
      v37(v95, v30 + v36, v19);
      if ((*v39)(v54, 1, v35) != 1)
      {
        v59 = *(v111 + 8);
        v60 = v108;
        v108 = v19;
        v61 = v38;
        v62 = v97;
        v59(v60, v97);
        v63 = v35;
        v64 = *(v38 + 32);
        v64(v96, v54, v35);
        v65 = v113;
        type metadata accessor for AsyncThrowingStream.Continuation.YieldResult();
        swift_storeEnumTagMultiPayload();
        v66 = v104;
        *v104 = 0;
        (*(v20 + 8))(v66 + v36, v108);
        v67 = v94;
        (*(v94 + 56))(v66 + v36, 1, 1, v65);
        (*(v61 + 56))(v66 + v36, 0, 1, v63);
        _swift_async_stream_lock_unlock((v106 + ((*(*v106 + 48) + 7) & 0x1FFFFFFF8)));
        v68 = v93;
        v64(v93, v96, v63);
        if ((*(v67 + 48))(v68, 1, v65) != 1)
        {
          v79 = *(v67 + 32);
          v80 = v92;
          v79(v92, v68, v65);
          v81 = swift_allocError();
          v79(v82, v80, v65);
          v114 = v81;
          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          UnsafeContinuation.resume(throwing:)(&v114, v98, v105, v83);
          return;
        }

        v69 = v102;
        (*(v111 + 56))(v102, 1, 1, v62);
        v70 = v98;
        (*(v103 + 32))(*(*(v98 + 8) + 40), v69, v105);
        v72 = v70;
        goto LABEL_44;
      }

      (*(v20 + 8))(v54, v19);
      v55 = v111;
      if (v100)
      {
        v56 = v97;
        v57 = v101;
        if (v100 != 1)
        {
          v57 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v58 = v103;
      }

      else
      {
        v56 = v97;
        v58 = v103;
        v57 = v101;
      }

      *v107 = v57;
      type metadata accessor for AsyncThrowingStream.Continuation.YieldResult();
      swift_storeEnumTagMultiPayload();
      *v30 = 0;
      _swift_async_stream_lock_unlock((v106 + ((*(*v106 + 48) + 7) & 0x1FFFFFFF8)));
      v84 = v102;
      (*(v55 + 32))(v102, v108, v56);
      (*(v55 + 56))(v84, 0, 1, v56);
LABEL_43:
      v87 = v98;
      (*(v58 + 32))(*(*(v98 + 8) + 40), v84, v105);
      v72 = v87;
LABEL_44:
      swift_continuation_throwingResume(v72, v71);
      return;
    }

    v40 = v32;
    v37(v28, v30 + v36, v34);
    v41 = (*v39)(v28, 1, v35);
    (*(v20 + 8))(v28, v34);
    if (v41 != 1)
    {
      v43 = v111;
      v42 = v97;
      (*(v111 + 8))(v108, v97);
      type metadata accessor for AsyncThrowingStream.Continuation.YieldResult();
      swift_storeEnumTagMultiPayload();
      v58 = v103;
LABEL_42:
      *v30 = 0;
      v85 = type metadata accessor for _Deque();
      v86 = v99;
      _Deque.removeFirst()(v85);
      _swift_async_stream_lock_unlock((v106 + ((*(*v106 + 48) + 7) & 0x1FFFFFFF8)));
      v84 = v102;
      (*(v43 + 32))(v102, v86, v42);
      (*(v43 + 56))(v84, 0, 1, v42);
      goto LABEL_43;
    }

    v42 = v97;
    v43 = v111;
    if (v100)
    {
      v44 = v101;
      if (v100 == 1)
      {
        v45 = type metadata accessor for _Deque();
        v46 = v45;
        if (v40 < v44)
        {
          v47 = v108;
          _Deque.append(_:)(v108, v45);
          (*(v43 + 8))(v47, v42);
          *v107 = v44 + ~v40;
          type metadata accessor for AsyncThrowingStream.Continuation.YieldResult();
LABEL_40:
          swift_storeEnumTagMultiPayload();
          goto LABEL_41;
        }

        _Deque.removeFirst()(v45);
        type metadata accessor for AsyncThrowingStream.Continuation.YieldResult();
        swift_storeEnumTagMultiPayload();
        v75 = v108;
        v76 = v108;
        v74 = v46;
LABEL_38:
        _Deque.append(_:)(v76, v74);
        (*(v43 + 8))(v75, v42);
LABEL_41:
        v58 = v103;
        goto LABEL_42;
      }

      v73 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      if (v32 >= v101)
      {
        (*(v111 + 32))(v107, v108, v97);
        type metadata accessor for AsyncThrowingStream.Continuation.YieldResult();
        goto LABEL_40;
      }

      v73 = v101 + ~v32;
    }

    *v107 = v73;
    type metadata accessor for AsyncThrowingStream.Continuation.YieldResult();
    swift_storeEnumTagMultiPayload();
    v74 = type metadata accessor for _Deque();
    v75 = v108;
    v76 = v108;
    goto LABEL_38;
  }

  v48 = type metadata accessor for AsyncThrowingStream._Storage.State();
  (*(v20 + 16))(v24, v30 + *(v48 + 56), v19);
  v49 = (*(v110 + 48))(v24, 1, v109);
  (*(v20 + 8))(v24, v19);
  if (v49 != 1)
  {
    (*(v111 + 8))(v108, v7);
    type metadata accessor for AsyncThrowingStream.Continuation.YieldResult();
    goto LABEL_21;
  }

  v50 = v111;
  if (!v100)
  {
    if (v32 >= v101)
    {
LABEL_47:
      (*(v111 + 32))(v107, v108, v7);
      type metadata accessor for AsyncThrowingStream.Continuation.YieldResult();
      goto LABEL_21;
    }

    if (__OFSUB__(v101, v32 + 1))
    {
      goto LABEL_49;
    }

    *v107 = v101 - (v32 + 1);
    type metadata accessor for AsyncThrowingStream.Continuation.YieldResult();
LABEL_32:
    swift_storeEnumTagMultiPayload();
    v77 = type metadata accessor for _Deque();
    v78 = v108;
    _Deque.append(_:)(v108, v77);
    (*(v50 + 8))(v78, v7);
    goto LABEL_33;
  }

  v51 = v101;
  if (v100 != 1)
  {
    *v107 = 0x7FFFFFFFFFFFFFFFLL;
    type metadata accessor for AsyncThrowingStream.Continuation.YieldResult();
    goto LABEL_32;
  }

  if (v32 >= v101)
  {
    if (v32 >= 1)
    {
      v88 = type metadata accessor for _Deque();
      _Deque.removeFirst()(v88);
      type metadata accessor for AsyncThrowingStream.Continuation.YieldResult();
      swift_storeEnumTagMultiPayload();
      v89 = v108;
      _Deque.append(_:)(v108, v88);
      (*(v50 + 8))(v89, v7);
      goto LABEL_33;
    }

    goto LABEL_47;
  }

  v52 = type metadata accessor for _Deque();
  v53 = v108;
  _Deque.append(_:)(v108, v52);
  (*(v50 + 8))(v53, v7);
  if (!__OFSUB__(v51, v32 + 1))
  {
    *v107 = v51 - (v32 + 1);
    type metadata accessor for AsyncThrowingStream.Continuation.YieldResult();
LABEL_21:
    swift_storeEnumTagMultiPayload();
LABEL_33:
    _swift_async_stream_lock_unlock((v106 + ((*(*v106 + 48) + 7) & 0x1FFFFFFF8)));
    return;
  }

  __break(1u);
LABEL_49:
  __break(1u);
}

void AsyncThrowingStream._Storage.next(_:)(continuationChecking *a1)
{
  v2 = v1;
  v64 = a1;
  v3 = *v1;
  v54 = *(*(*v1 + 88) - 8);
  v4 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v52 = &v51 - v5;
  v7 = *(v6 + 80);
  v8 = *(v6 + 96);
  v60 = v9;
  v58 = v8;
  v10 = type metadata accessor for AsyncThrowingStream._Storage.Terminal();
  v59 = type metadata accessor for Optional();
  v57 = *(v59 - 8);
  v11 = *(v57 + 64);
  v12 = MEMORY[0x1EEE9AC00](v59);
  v14 = &v51 - v13;
  v55 = *(v10 - 8);
  v15 = *(v55 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v53 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v56 = &v51 - v18;
  v19 = type metadata accessor for Optional();
  v62 = *(v19 - 8);
  v63 = v19;
  v20 = *(v62 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v61 = &v51 - v22;
  v23 = *(v7 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v26 = &v51 - v25;
  _swift_async_stream_lock_lock((v1 + ((*(v3 + 48) + 7) & 0x1FFFFFFF8)));
  v27 = v1 + *(*v1 + 104);
  if (*v27)
  {
    AsyncThrowingStream._Storage.unlock()();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v28 = *(v27 + 1);

    _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, v28, &type metadata for _DequeBufferHeader, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v50);
    v29 = v65;

    if (v29 >= 1)
    {
      v30 = type metadata accessor for _Deque();
      _Deque.removeFirst()(v30);
      _swift_async_stream_lock_unlock((v1 + ((*(*v1 + 48) + 7) & 0x1FFFFFFF8)));
      v31 = v61;
      (*(v23 + 32))(v61, v26, v7);
      (*(v23 + 56))(v31, 0, 1, v7);
LABEL_4:
      v32 = v64;
      (*(v62 + 32))(*(*(v64 + 8) + 40), v31, v63);
      swift_continuation_throwingResume(v32, v33);
      return;
    }

    v34 = *(type metadata accessor for AsyncThrowingStream._Storage.State() + 56);
    v35 = v57;
    v36 = v59;
    (*(v57 + 16))(v14, &v27[v34], v59);
    v37 = v55;
    if ((*(v55 + 48))(v14, 1, v10) == 1)
    {
      (*(v35 + 8))(v14, v36);
      *v27 = v64;
      _swift_async_stream_lock_unlock((v2 + ((*(*v2 + 48) + 7) & 0x1FFFFFFF8)));
    }

    else
    {
      v38 = *(v37 + 32);
      v51 = v10;
      v38(v56, v14, v10);
      (*(v35 + 8))(&v27[v34], v59);
      v39 = v54;
      v40 = v60;
      (*(v54 + 56))(&v27[v34], 1, 1, v60);
      v41 = &v27[v34];
      v42 = v51;
      (*(v37 + 56))(v41, 0, 1, v51);
      _swift_async_stream_lock_unlock((v2 + ((*(*v2 + 48) + 7) & 0x1FFFFFFF8)));
      v43 = v53;
      v38(v53, v56, v42);
      if ((*(v39 + 48))(v43, 1, v40) == 1)
      {
        v31 = v61;
        (*(v23 + 56))(v61, 1, 1, v7);
        goto LABEL_4;
      }

      v44 = *(v39 + 32);
      v45 = v52;
      v46 = v60;
      v44(v52, v43, v60);
      v47 = swift_allocError();
      v44(v48, v45, v46);
      v65 = v47;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      UnsafeContinuation.resume(throwing:)(&v65, v64, v63, v49);
    }
  }
}

void AsyncThrowingStream._Storage.next()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  swift_task_switch(AsyncThrowingStream._Storage.next(), 0, 0);
}

void AsyncThrowingStream._Storage.next()()
{
  v1 = v0[3];
  v2 = v0[4];

  v3 = swift_task_alloc(32);
  v0[5] = v3;
  *(v3 + 16) = partial apply for implicit closure #2 in implicit closure #1 in AsyncThrowingStream._Storage.next();
  *(v3 + 24) = v1;
  v4 = swift_task_alloc(96);
  v0[6] = v4;
  v5 = *(v2 + 80);
  type metadata accessor for Optional();
  *v4 = v0;
  v4[1] = AsyncThrowingStream._Storage.next();
  v6 = v0[2];
  v7 = v0[3];

  withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &async function pointer to partial apply for closure #1 in AsyncThrowingStream._Storage.next(), v7, partial apply for closure #2 in AsyncThrowingStream._Storage.next(), v3, 0, 0);
}

{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;
  v2;
  if (v0)
  {

    swift_task_switch(AsyncThrowingStream._Storage.next(), 0, 0);
  }

  else
  {
    v4 = v3[5];
    v5 = v3[3];

    v4;
    v6 = v3[1];

    v6();
  }
}

uint64_t AsyncThrowingStream._Storage.next()()
{
  v1 = v0[5];
  v2 = v0[3];

  v1;
  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

void closure #1 in AsyncThrowingStream._Storage.next()(uint64_t a1, void *a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = *a2;
  swift_task_switch(closure #1 in AsyncThrowingStream._Storage.next(), 0, 0);
}

uint64_t closure #1 in AsyncThrowingStream._Storage.next()()
{
  v1 = v0[4];
  v2 = swift_task_alloc(112);
  v0[5] = v2;
  v3 = *(v1 + 80);
  v4 = type metadata accessor for Optional();
  *v2 = v0;
  v2[1] = closure #1 in AsyncThrowingStream._Storage.next();
  v5 = v0[2];
  v6 = v0[3];

  return (withUnsafeThrowingContinuation<A>(isolation:_:))(v5, 0, 0, partial apply for closure #1 in closure #1 in AsyncThrowingStream._Storage.next(), v6, v4);
}

{
  v1 = *(v0 + 48);
  return (*(v0 + 8))();
}

void closure #1 in AsyncThrowingStream._Storage.next()()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;
  v2;
  if (v0)
  {

    swift_task_switch(closure #1 in AsyncThrowingStream._Storage.next(), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    v4();
  }
}

uint64_t static AsyncThrowingStream._Storage.create(limit:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = *(v2 + 96);
  v7 = type metadata accessor for AsyncThrowingStream._Storage.State();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  protocol witness for static Equatable.== infix(_:_:) in conformance ContinuousClock.Instant.CodingKeys();
  v13 = *(v2 + 52);
  v14 = (*(v2 + 48) + 7) & 0x1FFFFFFF8;
  v15 = swift_allocObject();
  v16 = *(*v15 + 104);
  v18 = v12;
  v19 = a1;
  AsyncThrowingStream._Storage.State.init(limit:)(&v18, v11);
  (*(v8 + 32))(v15 + v16, v11, v7);
  _swift_async_stream_lock_init((v15 + ((*(*v15 + 48) + 7) & 0x1FFFFFFF8)));
  return v15;
}

void _AsyncStreamCriticalStorage.value.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  _swift_async_stream_lock_lock((v1 + ((*(*v1 + 48) + 7) & 0x1FFFFFFF8)));
  (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + *(*v1 + 88));
  v4 = (v1 + ((*(*v1 + 48) + 7) & 0x1FFFFFFF8));

  _swift_async_stream_lock_unlock(v4);
}

uint64_t static _AsyncStreamCriticalStorage.create(_:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  protocol witness for static Equatable.== infix(_:_:) in conformance ContinuousClock.Instant.CodingKeys();
  v8 = *(v1 + 52);
  v9 = (*(v1 + 48) + 7) & 0x1FFFFFFF8;
  v10 = swift_allocObject();
  v11 = *(*v10 + 88);
  (*(v4 + 16))(v7, a1, v3);
  (*(v4 + 32))(v10 + v11, v7, v3);
  _swift_async_stream_lock_init((v10 + ((*(*v10 + 48) + 7) & 0x1FFFFFFF8)));
  return v10;
}

uint64_t TaskLocal.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Int AsyncStream.Continuation.Termination.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865D4230](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AsyncStream<A>.Continuation.Termination()
{
  Hasher.init(_seed:)();
  AsyncStream.Continuation.Termination.hash(into:)();
  return Hasher._finalize()();
}

void *key path getter for AsyncStream.Continuation.onTermination : <A>AsyncStream<A>.Continuation@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v11 = *a1;
  result = AsyncStream.Continuation.onTermination.getter();
  if (result)
  {
    v8 = result;
    v9 = v7;
    result = swift_allocObject();
    result[2] = v5;
    result[3] = v8;
    result[4] = v9;
    v10 = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed AsyncStream<A>.Continuation.Termination) -> ();
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
  a4[1] = result;
  return result;
}

uint64_t key path setter for AsyncStream.Continuation.onTermination : <A>AsyncStream<A>.Continuation(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  v7 = a1[1];
  if (*a1)
  {
    v8 = swift_allocObject();
    v8[2] = v5;
    v8[3] = v6;
    v8[4] = v7;
    v9 = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed AsyncStream<A>.Continuation.Termination) -> (@out ());
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v11 = *a2;
  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOy_0(v6);
  type metadata accessor for AsyncStream.Continuation();

  specialized AsyncStream.Continuation.onTermination.setter(v9, v8);
  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v9);
}

uint64_t AsyncStream.Continuation.onTermination.setter(uint64_t a1, uint64_t a2)
{
  specialized AsyncStream.Continuation.onTermination.setter(a1, a2);

  return _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(a1);
}

uint64_t (*AsyncStream.Continuation.onTermination.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = *v1;
  *a1 = AsyncStream._Storage.getOnTermination()();
  a1[1] = v3;
  return AsyncStream.Continuation.onTermination.modify;
}

void *AsyncStream._Context.__allocating_init(storage:produce:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t AsyncStream._Context.__deallocating_deinit()
{
  AsyncStream._Context.deinit(AsyncStream._Storage.cancel@Sendable ());

  return swift_deallocClassInstance();
}

uint64_t AsyncStream.init(_:bufferingPolicy:_:)@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t *)@<X2>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  type metadata accessor for AsyncStream._Storage();
  v10 = v5;
  v11 = v6;
  v7 = static AsyncStream._Storage.create(limit:)(&v10);
  type metadata accessor for AsyncStream._Context();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &async function pointer to partial apply for implicit closure #2 in implicit closure #1 in AsyncStream.init(_:bufferingPolicy:_:);
  v8[4] = v7;
  *a3 = v8;

  v10 = v7;

  a2(&v10);
}

void implicit closure #2 in implicit closure #1 in AsyncStream.init(_:bufferingPolicy:_:)(uint64_t a1)
{
  v3 = swift_task_alloc(64);
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = implicit closure #2 in implicit closure #1 in AsyncStream.init(_:bufferingPolicy:_:);

  AsyncStream._Storage.next()(a1);
}

uint64_t implicit closure #2 in implicit closure #1 in AsyncStream.init(_:bufferingPolicy:_:)()
{
  v3 = *v0;
  *(*v0 + 16);
  v1 = *(v3 + 8);

  return v1();
}

void *AsyncStream.init(unfolding:onCancel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  type metadata accessor for Optional();
  swift_getFunctionTypeMetadata0();
  type metadata accessor for Optional();
  type metadata accessor for _AsyncStreamCriticalStorage();
  v15[0] = a1;
  v15[1] = a2;
  v12 = static _AsyncStreamCriticalStorage.create(_:)(v15);

  type metadata accessor for AsyncStream._Context();
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = v12;
  v13[4] = a3;
  v13[5] = a4;
  result = swift_allocObject();
  result[2] = 0;
  result[3] = &async function pointer to partial apply for closure #1 in AsyncStream.init(unfolding:onCancel:);
  result[4] = v13;
  *a6 = result;
  return result;
}

void closure #1 in AsyncStream.init(unfolding:onCancel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  swift_task_switch(closure #1 in AsyncStream.init(unfolding:onCancel:), 0, 0);
}

void closure #1 in AsyncStream.init(unfolding:onCancel:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_task_alloc(32);
  v0[7] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;
  v6 = swift_task_alloc(48);
  v0[8] = v6;
  v6[2] = v1;
  v6[3] = v4;
  v6[4] = v3;
  v6[5] = v2;
  v7 = swift_task_alloc(96);
  v0[9] = v7;
  type metadata accessor for Optional();
  *v7 = v0;
  v7[1] = closure #1 in AsyncStream.init(unfolding:onCancel:);
  v8 = v0[2];

  withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v8, &async function pointer to partial apply for closure #1 in closure #1 in AsyncStream.init(unfolding:onCancel:), v5, partial apply for closure #2 in closure #1 in AsyncStream.init(unfolding:onCancel:), v6, 0, 0);
}

uint64_t closure #1 in AsyncStream.init(unfolding:onCancel:)()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 72);
  if (v0)
  {

    JUMPOUT(0x1865D4950);
  }

  v4 = *(v2 + 56);
  *(v2 + 64);
  v4;
  v5 = *(v3 + 8);

  return v5();
}

void closure #1 in closure #1 in AsyncStream.init(unfolding:onCancel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = type metadata accessor for Optional();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v3[11] = swift_task_alloc((*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(closure #1 in closure #1 in AsyncStream.init(unfolding:onCancel:), 0, 0);
}

uint64_t closure #1 in closure #1 in AsyncStream.init(unfolding:onCancel:)()
{
  v1 = v0[7];
  _AsyncStreamCriticalStorage.value.getter((v0 + 2));
  v2 = v0[2];
  v0[12] = v2;
  if (v2)
  {
    v0[13] = v0[3];
    v10 = (v2 + *v2);
    v3 = swift_task_alloc(v2[1]);
    v0[14] = v3;
    *v3 = v0;
    v3[1] = closure #1 in closure #1 in AsyncStream.init(unfolding:onCancel:);
    v4 = v0[11];

    return v10(v4);
  }

  else
  {
    v6 = *(*(v0[8] - 8) + 56);
    v6(v0[11], 1, 1);
    v7 = v0[7];
    (*(v0[10] + 8))(v0[11], v0[9]);
    v0[5] = 0;
    v0[4] = 0;
    specialized _AsyncStreamCriticalStorage.value.setter((v0 + 4));
    v8 = v0[11];
    (v6)(v0[6], 1, 1, v0[8]);
    v8;
    v9 = v0[1];

    return v9();
  }
}

{
  v1 = v0[11];
  v2 = v0[8];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[7];
    (*(v0[10] + 8))(v1, v0[9]);
    v0[4] = 0;
    v0[5] = 0;
    specialized _AsyncStreamCriticalStorage.value.setter((v0 + 4));
    v5 = 1;
  }

  else
  {
    (*(v3 + 32))(v0[6], v1, v2);
    v5 = 0;
  }

  v6 = v0[11];
  (*(v3 + 56))(v0[6], v5, 1, v0[8]);
  v6;
  v7 = v0[1];

  return v7();
}

void closure #1 in closure #1 in AsyncStream.init(unfolding:onCancel:)()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *v0;
  *(*v0 + 112);
  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v2);

  swift_task_switch(closure #1 in closure #1 in AsyncStream.init(unfolding:onCancel:), 0, 0);
}

void AsyncStream.Iterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  swift_task_switch(AsyncStream.Iterator.next(), 0, 0);
}

uint64_t AsyncStream.Iterator.next()()
{
  v1 = **(v0 + 24);
  v2 = *(v1 + 24);
  *(v0 + 32) = *(v1 + 32);

  v6 = (v2 + *v2);
  v3 = swift_task_alloc(v2[1]);
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = AsyncStream.Iterator.next();
  v4 = *(v0 + 16);

  return v6(v4);
}

void AsyncStream.Iterator.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v7 = (*(a3 + 8))(ObjectType, a3);
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  swift_task_switch(AsyncStream.Iterator.next(isolation:), v7, v9);
}

uint64_t AsyncStream.Iterator.next(isolation:)()
{
  v1 = **(v0 + 24);
  v2 = *(v1 + 24);
  *(v0 + 32) = *(v1 + 32);

  v6 = (v2 + *v2);
  v3 = swift_task_alloc(v2[1]);
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = AsyncStream.Iterator.next(isolation:);
  v4 = *(v0 + 16);

  return v6(v4);
}

{
  v1 = *(*v0 + 32);
  v4 = *v0;
  *(*v0 + 40);

  v2 = *(v4 + 8);

  return v2();
}

void protocol witness for AsyncIteratorProtocol.next() in conformance AsyncStream<A>.Iterator(uint64_t a1)
{
  v3 = swift_task_alloc(48);
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = ThrowingTaskGroup._waitForAll();

  AsyncStream.Iterator.next()(a1);
}

void _sScS8IteratorVyx_GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc(48);
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = ThrowingTaskGroup._waitForAll();

  AsyncStream.Iterator.next(isolation:)(a1, a2, a3);
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance AsyncStream<A>@<X0>(void *a1@<X8>)
{
  AsyncStream.makeAsyncIterator()(a1);
  v2 = *v1;
}

void AsyncStream.Continuation.yield(with:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Result();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - v13;
  v15 = *v3;
  (*(v16 + 16))(&v17 - v13, a1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    AsyncStream._Storage.yield(_:)(v10, a3);
  }
}

uint64_t static AsyncStream.makeStream(of:bufferingPolicy:)(void *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = *(a4 + 8);
  v13 = 0;
  v10 = v6;
  v11 = v7;
  result = AsyncStream.init(_:bufferingPolicy:_:)(&v10, partial apply for closure #1 in static AsyncStream.makeStream(of:bufferingPolicy:), &v12);
  v9 = v13;
  *a1 = v12;
  if (v9)
  {
    *a2 = v9;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t key path getter for AsyncThrowingStream.Continuation.onTermination : <A, B>AsyncThrowingStream<A, B>.Continuation@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v11 = *(a2 + a3 - 24);
  v5 = *(a2 + a3 - 8);
  v12 = *a1;
  result = AsyncThrowingStream.Continuation.onTermination.getter();
  if (result)
  {
    v8 = result;
    v9 = v7;
    result = swift_allocObject();
    *(result + 16) = v11;
    *(result + 32) = v5;
    *(result + 40) = v8;
    *(result + 48) = v9;
    v10 = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed AsyncThrowingStream<A, B>.Continuation.Termination) -> ();
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
  a4[1] = result;
  return result;
}

uint64_t key path setter for AsyncThrowingStream.Continuation.onTermination : <A, B>AsyncThrowingStream<A, B>.Continuation(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = *a1;
  v9 = a1[1];
  if (*a1)
  {
    v10 = swift_allocObject();
    v10[2] = v5;
    v10[3] = v6;
    v10[4] = v7;
    v10[5] = v8;
    v10[6] = v9;
    v11 = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed AsyncThrowingStream<A, B>.Continuation.Termination) -> (@out ());
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v13 = *a2;
  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOy_0(v8);
  type metadata accessor for AsyncThrowingStream.Continuation();

  specialized AsyncThrowingStream.Continuation.onTermination.setter(v11, v10);
  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v11);
}

uint64_t AsyncThrowingStream.Continuation.onTermination.setter(uint64_t a1, uint64_t a2)
{
  specialized AsyncThrowingStream.Continuation.onTermination.setter(a1, a2);

  return _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(a1);
}

uint64_t (*AsyncThrowingStream.Continuation.onTermination.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = *v1;
  *a1 = AsyncThrowingStream._Storage.getOnTermination()();
  a1[1] = v3;
  return AsyncThrowingStream.Continuation.onTermination.modify;
}

uint64_t AsyncStream.Continuation.onTermination.modify(uint64_t *a1, char a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t))
{
  v9 = a1[1];
  v8 = a1[2];
  v10 = *a1;

  if (a2)
  {
    a5(v10, v9);
    a3(v10, v9);
    a4(v10, v9);

    return (a4)(v10, v9);
  }

  else
  {
    a3(v10, v9);
    a4(v10, v9);
  }
}

uint64_t AsyncStream._Context.deinit(void (*a1)(uint64_t))
{
  if (*(v1 + 16))
  {

    a1(v3);

    v4 = *(v1 + 16);
  }

  v5 = *(v1 + 32);

  return v1;
}

uint64_t AsyncThrowingStream._Context.__deallocating_deinit()
{
  AsyncStream._Context.deinit(AsyncThrowingStream._Storage.cancel@Sendable ());

  return swift_deallocClassInstance();
}

uint64_t AsyncThrowingStream.init<>(_:bufferingPolicy:_:)@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t *)@<X2>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for AsyncThrowingStream._Storage();
  v13 = v7;
  v14 = v8;
  v9 = static AsyncThrowingStream._Storage.create(limit:)(&v13);
  type metadata accessor for AsyncThrowingStream._Context();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = &async function pointer to partial apply for implicit closure #2 in implicit closure #1 in AsyncThrowingStream.init<>(_:bufferingPolicy:_:);
  v10[4] = v9;
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @async () -> (@out A?, @error @owned Error);
  v11[4] = v10;
  *a4 = v11;

  v13 = v9;

  a2(&v13);
}

void implicit closure #2 in implicit closure #1 in AsyncThrowingStream.init<>(_:bufferingPolicy:_:)(uint64_t a1)
{
  v3 = swift_task_alloc(64);
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  AsyncThrowingStream._Storage.next()(a1);
}

uint64_t thunk for @escaping @callee_guaranteed @async () -> (@out A?, @error @owned Error)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc(a2[1]);
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = _ss31AsyncThrowingCompactMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return v9(a1);
}

void *AsyncThrowingStream.init<>(unfolding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for Optional();
  swift_getFunctionTypeMetadata0();
  type metadata accessor for Optional();
  type metadata accessor for _AsyncStreamCriticalStorage();
  v11[0] = a1;
  v11[1] = a2;
  v8 = static _AsyncStreamCriticalStorage.create(_:)(v11);

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for AsyncThrowingStream._Context();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = v8;
  result = swift_allocObject();
  result[2] = 0;
  result[3] = &async function pointer to partial apply for closure #1 in AsyncThrowingStream.init<>(unfolding:);
  result[4] = v9;
  *a4 = result;
  return result;
}

void closure #1 in AsyncThrowingStream.init<>(unfolding:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  swift_task_switch(closure #1 in AsyncThrowingStream.init<>(unfolding:), 0, 0);
}

void closure #1 in AsyncThrowingStream.init<>(unfolding:)()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc(32);
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc(32);
  v0[7] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc(96);
  v0[8] = v5;
  type metadata accessor for Optional();
  *v5 = v0;
  v5[1] = closure #1 in AsyncThrowingStream.init<>(unfolding:);
  v6 = v0[2];

  withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &async function pointer to partial apply for closure #1 in closure #1 in AsyncThrowingStream.init<>(unfolding:), v3, partial apply for closure #2 in closure #1 in AsyncThrowingStream.init<>(unfolding:), v4, 0, 0);
}

{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;
  v2;
  if (v0)
  {

    swift_task_switch(closure #1 in AsyncThrowingStream.init<>(unfolding:), 0, 0);
  }

  else
  {
    v4 = v3[6];
    v3[7];
    v4;
    v5 = v3[1];

    v5();
  }
}

uint64_t closure #1 in AsyncThrowingStream.init<>(unfolding:)()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[5];
  v0[7];
  v2;
  *v3 = v1;
  v4 = v0[1];

  return v4();
}

void closure #1 in closure #1 in AsyncThrowingStream.init<>(unfolding:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = type metadata accessor for Optional();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v3[11] = swift_task_alloc((*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(closure #1 in closure #1 in AsyncThrowingStream.init<>(unfolding:), 0, 0);
}

uint64_t closure #1 in closure #1 in AsyncThrowingStream.init<>(unfolding:)()
{
  v1 = v0[7];
  _AsyncStreamCriticalStorage.value.getter((v0 + 2));
  v2 = v0[2];
  v3 = v0[3];
  v0[12] = v2;
  v0[13] = v3;
  if (v2)
  {
    v11 = (v2 + *v2);
    v4 = swift_task_alloc(v2[1]);
    v0[14] = v4;
    *v4 = v0;
    v4[1] = closure #1 in closure #1 in AsyncThrowingStream.init<>(unfolding:);
    v5 = v0[11];

    return v11(v5);
  }

  else
  {
    v7 = *(*(v0[8] - 8) + 56);
    v7(v0[11], 1, 1);
    v8 = v0[7];
    (*(v0[10] + 8))(v0[11], v0[9]);
    v0[5] = 0;
    v0[4] = 0;
    specialized _AsyncStreamCriticalStorage.value.setter((v0 + 4));
    v9 = v0[11];
    (v7)(v0[6], 1, 1, v0[8]);
    v9;
    v10 = v0[1];

    return v10();
  }
}

{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v0[12]);
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = v0[7];
    (*(v0[10] + 8))(v0[11], v0[9]);
    v0[4] = 0;
    v0[5] = 0;
    specialized _AsyncStreamCriticalStorage.value.setter((v0 + 4));
    v6 = 1;
  }

  else
  {
    (*(v4 + 32))(v0[6], v0[11], v0[8]);
    v6 = 0;
  }

  v7 = v0[11];
  (*(v4 + 56))(v0[6], v6, 1, v0[8]);
  v7;
  v8 = v0[1];

  return v8();
}

{
  v1 = v0[13];
  v2 = v0[11];
  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v0[12]);
  v2;
  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

void closure #1 in closure #1 in AsyncThrowingStream.init<>(unfolding:)()
{
  v2 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;
  v2;
  if (v0)
  {
    v3 = closure #1 in closure #1 in AsyncThrowingStream.init<>(unfolding:);
  }

  else
  {
    v3 = closure #1 in closure #1 in AsyncThrowingStream.init<>(unfolding:);
  }

  swift_task_switch(v3, 0, 0);
}

void AsyncThrowingStream.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(a2 + 24);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = swift_task_alloc((*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(AsyncThrowingStream.Iterator.next(), 0, 0);
}

uint64_t AsyncThrowingStream.Iterator.next()()
{
  v1 = **(v0 + 32);
  v2 = *(v1 + 24);
  *(v0 + 64) = *(v1 + 32);

  v7 = (v2 + *v2);
  v3 = swift_task_alloc(v2[1]);
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = AsyncThrowingStream.Iterator.next();
  v4 = *(v0 + 56);
  v5 = *(v0 + 16);

  return v7(v5, v4);
}

{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = *(v0[3] + 32);
  swift_allocError();
  (*(v2 + 32))(v5, v1, v3);
  v1;
  v6 = v0[1];

  return v6();
}

void AsyncThrowingStream.Iterator.next()()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  v3;

  if (v0)
  {

    swift_task_switch(AsyncThrowingStream.Iterator.next(), 0, 0);
  }

  else
  {
    *(v2 + 56);
    v6 = *(v5 + 8);

    v6();
  }
}

void _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[3] = v5;
  v6[4] = a5;
  v6[2] = a1;
  v9 = *(a4 + 24);
  v6[5] = v9;
  v10 = *(v9 - 8);
  v6[6] = v10;
  v6[7] = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v12 = (*(a3 + 8))(ObjectType, a3);
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v6[8] = v12;
  v6[9] = v14;

  swift_task_switch(_sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY0_, v12, v14);
}

uint64_t _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY0_()
{
  v1 = **(v0 + 24);
  v2 = *(v1 + 24);
  *(v0 + 80) = *(v1 + 32);

  v7 = (v2 + *v2);
  v3 = swift_task_alloc(v2[1]);
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTQ1_;
  v4 = *(v0 + 56);
  v5 = *(v0 + 16);

  return v7(v5, v4);
}

void _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTQ1_()
{
  v2 = *v1;
  v3 = (*v1)[11];
  v4 = (*v1)[10];
  v5 = *v1;
  v3;

  if (v0)
  {
    v6 = v2[8];
    v7 = v2[9];

    swift_task_switch(_sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY2_, v6, v7);
  }

  else
  {
    v2[7];
    v8 = v5[1];

    v8();
  }
}

uint64_t _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTY2_()
{
  v1 = v0[7];
  (*(v0[6] + 32))(v0[4], v1, v0[5]);
  v1;
  v2 = v0[1];

  return v2();
}

void protocol witness for AsyncIteratorProtocol.next() in conformance AsyncThrowingStream<A, B>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc(80);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  AsyncThrowingStream.Iterator.next()(a1, a2);
}

void _sScs8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v10 = *(a5 + 24);
  v5[3] = v10;
  v11 = *(v10 - 8);
  v5[4] = v11;
  v12 = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[5] = v12;
  v13 = swift_task_alloc(96);
  v5[6] = v13;
  *v13 = v5;
  v13[1] = _ss23AsyncCompactMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(a1, a2, a3, a5, v12);
}

void AsyncThrowingStream.Continuation.yield<>(with:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 24);
  v13 = type metadata accessor for Result();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v19 - v15);
  v17 = *v3;
  (*(v18 + 16))(&v19 - v15, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v16;
    AsyncThrowingStream._Storage.finish(throwing:)(&v20);
    type metadata accessor for AsyncThrowingStream.Continuation.YieldResult();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v7 + 32))(v10, v16, v6);
    AsyncThrowingStream._Storage.yield(_:)(v10, a3);
  }
}

uint64_t static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a4;
  v8 = *(a4 + 8);
  v14 = 0;
  v11 = v7;
  v12 = v8;
  result = AsyncThrowingStream.init<>(_:bufferingPolicy:_:)(&v11, partial apply for closure #1 in static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:), a5, &v13);
  v10 = v14;
  *a1 = v13;
  if (v10)
  {
    *a2 = v10;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AsyncStream<A>.Continuation(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

void _DequeBuffer.deinit()
{
  v1 = *(*(*v0 + class metadata base offset for _DequeBuffer) - 8);
  v3 = v0[3];
  v2 = v0[4];
  if (__OFADD__(v2, v3))
  {
    __break(1u);
  }

  else
  {
    v4 = v0[2];
    if (v4 >= v2 + v3)
    {
      v7 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)) + *(v1 + 72) * v2;
      v8 = v0[3];
      goto LABEL_7;
    }

    v5 = v4 - v2;
    if (!__OFSUB__(v4, v2))
    {
      v6 = *(v1 + 72);
      UnsafeMutablePointer.deinitialize(count:)();
      if (!__OFSUB__(v3, v5))
      {
LABEL_7:
        UnsafeMutablePointer.deinitialize(count:)();

LABEL_13:
        JUMPOUT(0x1865D4020);
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
  goto LABEL_12;
}

uint64_t _DequeBuffer.__deallocating_deinit()
{
  _DequeBuffer.deinit();

  return swift_deallocClassInstance();
}

uint64_t _DequeBuffer.description.getter()
{
  v1 = *(*v0 + class metadata base offset for _DequeBuffer);
  _StringGuts.grow(_:)(19);

  strcpy(v8, "_DequeStorage<");
  HIBYTE(v8[1]) = -18;
  v2 = _typeName(_:qualified:)();
  MEMORY[0x1865D3D30](v2);

  MEMORY[0x1865D3D30](62, 0xE100000000000000);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = _DequeBufferHeader.description.getter();
  MEMORY[0x1865D3D30](v6);

  return v8[0];
}

void *one-time initialization function for _emptyDequeStorage()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_DequeBufferCyytGMd, &_ss12_DequeBufferCyytGMR);
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  _emptyDequeStorage = result;
  return result;
}

uint64_t _DequeBufferHeader.description.getter()
{
  _StringGuts.grow(_:)(40);
  MEMORY[0x1865D3D30](0x7469636170616328, 0xEB00000000203A79);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865D3D30](v0);

  MEMORY[0x1865D3D30](0x3A746E756F63202CLL, 0xE900000000000020);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865D3D30](v1);

  MEMORY[0x1865D3D30](0x537472617473202CLL, 0xED0000203A746F6CLL);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865D3D30](v2);

  MEMORY[0x1865D3D30](64, 0xE100000000000000);

  MEMORY[0x1865D3D30](41, 0xE100000000000000);
  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _DequeBufferHeader()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return _DequeBufferHeader.description.getter();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _DequeSlot()
{
  v3 = *v0;
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865D3D30](v1);

  return 64;
}

uint64_t _ss20_UnsafeWrappedBufferV5first5count6secondAdByxGSPyxG_SiAGSitcfCyt_Tt3g5@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2 < 0 || a4 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (a2)
  {
    *a5 = result;
    *(a5 + 8) = a2;
    *(a5 + 16) = a3;
    *(a5 + 24) = a4;
    *(a5 + 32) = 0;
    return result;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _UnsafeWrappedBuffer.init(first:count:second:count:)@<X0>(uint64_t a1@<X8>)
{
  v2 = UnsafeBufferPointer.init(start:count:)();
  v4 = v3;
  result = UnsafeBufferPointer.init(start:count:)();
  if (v4 <= 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a1 = v2;
    *(a1 + 8) = v4;
    *(a1 + 16) = result;
    *(a1 + 24) = v6;
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t _UnsafeMutableWrappedBuffer.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a2 > 0 || (a5 & 1) != 0)
  {
    if (a4)
    {
      v6 = a3;
    }

    else
    {
      v6 = 0;
    }

    if (a5)
    {
      v6 = a3;
    }

    *a6 = result;
    *(a6 + 8) = a2;
    *(a6 + 16) = v6;
    *(a6 + 24) = a4;
    *(a6 + 32) = a5 & 1 | (a4 == 0);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t _UnsafeMutableWrappedBuffer.init(first:count:second:count:)@<X0>(uint64_t a1@<X8>)
{
  v2 = UnsafeMutableBufferPointer.init(start:count:)();
  v4 = v3;
  result = UnsafeMutableBufferPointer.init(start:count:)();
  if (v4 <= 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    if (v6)
    {
      v7 = result;
    }

    else
    {
      v7 = 0;
    }

    *a1 = v2;
    *(a1 + 8) = v4;
    *(a1 + 16) = v7;
    *(a1 + 24) = v6;
    *(a1 + 32) = v6 == 0;
  }

  return result;
}

uint64_t _ss27_UnsafeMutableWrappedBufferV8mutatingAByxGs01_acD0VyxG_tcfCyt_Tt0g5@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  if (v2 <= 0 && *(result + 32) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4 = *(result + 16);
    if (*(result + 24))
    {
      v5 = *(result + 32);
    }

    else
    {
      v5 = 1;
    }

    if (*(result + 32))
    {
      v6 = 0;
    }

    else
    {
      v6 = *(result + 24);
    }

    if (v5)
    {
      v4 = 0;
    }

    *a2 = *result;
    *(a2 + 8) = v2;
    *(a2 + 16) = v4;
    *(a2 + 24) = v6;
    *(a2 + 32) = v5;
  }

  return result;
}

double _UnsafeMutableWrappedBuffer.init(mutating:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x1865D3F60](*a1, *(a1 + 8), a2);
  v8 = v7;
  v16 = *(a1 + 16);
  LOBYTE(v17) = *(a1 + 32);
  v13[2] = a2;
  type metadata accessor for UnsafeBufferPointer();
  type metadata accessor for Optional();
  v9 = type metadata accessor for UnsafeMutableBufferPointer();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in _UnsafeMutableWrappedBuffer.init(mutating:), v13, MEMORY[0x1E69E73E0], v9, v10, v14);
  _UnsafeMutableWrappedBuffer.init(_:_:)(v6, v8, v14[0], v14[1], v15, &v16);
  result = *&v16;
  v12 = v17;
  *a3 = v16;
  *(a3 + 16) = v12;
  *(a3 + 32) = v18;
  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x1EEE9AC00])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

Swift::Void __swiftcall _UnsafeMutableWrappedBuffer.deinitialize()()
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v0 + 16);
  UnsafeMutableBufferPointer._deinitializeAll()();
  if ((v1[4] & 1) == 0)
  {
    v5 = v1[2];
    v6 = v1[3];

    UnsafeMutableBufferPointer._deinitializeAll()();
  }
}

Swift::Void __swiftcall UnsafeMutableBufferPointer._deinitializeAll()()
{
  if (v0 >= 1)
  {
    if (UnsafeMutableBufferPointer.baseAddress.getter())
    {

      UnsafeMutablePointer.deinitialize(count:)();
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

uint64_t _UnsafeMutableWrappedBuffer.initialize<A>(fromPrefixOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v5 = *(a2 + 16);
  v6 = type metadata accessor for Optional();
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = *(v28 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = *(*(v5 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v31 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v28 - v14;
  v36 = 0;
  v15 = 0;
  v16 = v4[1];
  v38 = *v4;
  v39 = v16;
  v32 = v17;
  v33 = (v17 + 48);
  v18 = (v17 + 32);
  v30 = v16;
  do
  {
    if (v15 == v39)
    {
      v19 = v37;
      if (v36)
      {
        v15 = v39;
        goto LABEL_16;
      }

      if (v4[4])
      {
        return v39;
      }

      v20 = v4[3];
      if (v20 < 1)
      {
        return v39;
      }

      v15 = 0;
      v38 = v4[2];
      v39 = v20;
      v36 = 1;
    }

    else
    {
      v19 = v37;
    }

    dispatch thunk of IteratorProtocol.next()();
    if ((*v33)(v10, 1, v5) == 1)
    {
      goto LABEL_13;
    }

    v21 = *v18;
    (*v18)(v19, v10, v5);
    v22 = UnsafeMutableBufferPointer.baseAddress.getter();
    if (!v22)
    {
      goto LABEL_19;
    }

    v23 = v19;
    v24 = v31;
    v25 = v22 + *(v32 + 72) * v15;
    v21(v31, v23, v5);
    v21(v25, v24, v5);
  }

  while (!__OFADD__(v15++, 1));
  __break(1u);
LABEL_13:
  (*(v28 + 8))(v10, v29);
  v39 = v15;
  if ((v36 & 1) == 0)
  {
    return v39;
  }

LABEL_16:
  v39 = v30 + v15;
  if (!__OFADD__(v30, v15))
  {
    return v39;
  }

  __break(1u);
LABEL_19:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _UnsafeMutableWrappedBuffer.initialize<A>(fromSequencePrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v54 = a1;
  v52 = a3;
  v10 = *(a3 + 16);
  v11 = type metadata accessor for Optional();
  v49 = *(v11 - 8);
  v50 = v11;
  v12 = *(v49 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v48 - v14;
  v59 = *(v10 - 8);
  v16 = *(v59 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v58 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v48 - v20;
  v55 = *(a4 - 8);
  v22 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = *(AssociatedTypeWitness - 8);
  v25 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v61 = &v48 - v26;
  v27 = v6[3];
  v57 = v6[2];
  v28 = *(v6 + 32);
  if ((v28 & 1) == 0)
  {
    v29 = v6[1];
    if (v29 < dispatch thunk of Sequence.underestimatedCount.getter())
    {
      v30 = v54;
      dispatch thunk of Sequence.makeIterator()();
      v31 = v30;
      v32 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v34 = v52;

      return _UnsafeMutableWrappedBuffer.initialize<A>(fromPrefixOf:)(v31, v34, v32, AssociatedConformanceWitness);
    }
  }

  v36 = *(v55 + 16);
  v52 = a2;
  v36(v24, a2, a4);
  v37 = *v6;
  v38 = v6[1];
  v39 = dispatch thunk of Sequence._copyContents(initializing:)();
  v51 = v38;
  v40 = a4;
  if (v39 != v38 || (v28 & 1) != 0)
  {
    (*(v55 + 8))(v52, a4);
LABEL_19:
    (*(v53 + 32))(v54, v61, AssociatedTypeWitness);
    return v39;
  }

  if (v27 < 1)
  {
    v27 = 0;
LABEL_16:
    (*(v55 + 8))(v52, v40);
    v41 = v27;
  }

  else
  {
    v48 = a4;
    v56 = swift_getAssociatedConformanceWitness();
    v41 = 0;
    v42 = (v59 + 48);
    v43 = (v59 + 32);
    while (1)
    {
      dispatch thunk of IteratorProtocol.next()();
      if ((*v42)(v15, 1, v10) == 1)
      {
        break;
      }

      v44 = *v43;
      (*v43)(v21, v15, v10);
      v45 = UnsafeMutableBufferPointer.baseAddress.getter();
      if (!v45)
      {
        goto LABEL_21;
      }

      v46 = v58;
      v47 = v45 + *(v59 + 72) * v41;
      v44(v58, v21, v10);
      v44(v47, v46, v10);
      if (v27 == ++v41)
      {
        v40 = v48;
        goto LABEL_16;
      }
    }

    (*(v55 + 8))(v52, v48);
    (*(v49 + 8))(v15, v50);
  }

  v39 = v51 + v41;
  if (!__OFADD__(v51, v41))
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_21:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _UnsafeMutableWrappedBuffer.initialize<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a2;
  v67 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for PartialRangeFrom();
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v47 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v62 = *(v12 - 8);
  v13 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v61 = &v47 - v14;
  v59 = AssociatedConformanceWitness;
  v15 = type metadata accessor for PartialRangeUpTo();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v57 = AssociatedTypeWitness;
  v58 = &v47 - v18;
  v60 = *(AssociatedTypeWitness - 8);
  v19 = *(v60 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v56 = &v47 - v25;
  v26 = *(v4 + 24);
  v27 = *(v4 + 32);
  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(v4 + 24);
  }

  v29 = *(v4 + 8);
  if (__OFADD__(v29, v28))
  {
    __break(1u);
    goto LABEL_14;
  }

  v52 = v24;
  v53 = v23;
  v54 = v26;
  v55 = v12;
  v30 = v67;
  v31 = a3;
  if (v29 + v28 != dispatch thunk of Collection.count.getter())
  {
LABEL_14:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_15:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if ((v27 & 1) == 0)
  {
    v51 = *(v4 + 16);
    dispatch thunk of Collection.startIndex.getter();
    v34 = *v4;
    v48 = v29;
    v49 = v34;
    v35 = v56;
    dispatch thunk of Collection.index(_:offsetBy:)();
    v36 = v60;
    v37 = v57;
    (*(v60 + 8))(v22, v57);
    v50 = *(v59 + 8);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v38 = v58;
      (*(v36 + 16))(v58, v35, v37);
      v39 = v53;
      swift_getWitnessTable();
      v40 = v61;
      Collection.subscript.getter();
      (*(v52 + 8))(v38, v39);
      v41 = *(v66 + 16);
      v42 = v55;
      v43 = swift_getAssociatedConformanceWitness();
      v66 = v41;
      v59 = v43;
      UnsafeMutableBufferPointer._initialize<A>(from:)(v40, v49, v48, v41, v42, v43);
      v62 = *(v62 + 8);
      (v62)(v40, v42);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v44 = v63;
        (*(v36 + 32))(v63, v35, v37);
        v45 = v65;
        swift_getWitnessTable();
        v46 = v67;
        Collection.subscript.getter();
        (*(*(v31 - 8) + 8))(v46, v31);
        (*(v64 + 8))(v44, v45);
        UnsafeMutableBufferPointer._initialize<A>(from:)(v40, v51, v54, v66, v42, v59);
        return (v62)(v40, v42);
      }
    }

    goto LABEL_15;
  }

  UnsafeMutableBufferPointer._initialize<A>(from:)(v30, *v4, v29, *(v66 + 16), a3, a4);
  v32 = *(*(a3 - 8) + 8);

  return v32(v30, a3);
}

uint64_t UnsafeMutableBufferPointer._initialize<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a3;
  v28 = a2;
  v29 = a4;
  v9 = type metadata accessor for Optional();
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v23 = &v26 - v22;
  v24 = v27;
  if (dispatch thunk of Collection.count.getter() == v24)
  {
    (*(v14 + 16))(v17, a1, a5);
    if (dispatch thunk of Sequence._copyContents(initializing:)() == v24)
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of IteratorProtocol.next()();
      if ((*(*(v29 - 8) + 48))(v13, 1) == 1)
      {
        (*(v20 + 8))(v23, AssociatedTypeWitness);
        return (*(v30 + 8))(v13, v31);
      }

      (*(v30 + 8))(v13, v31);
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _UnsafeMutableWrappedBuffer.assign<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = dispatch thunk of Collection.count.getter();
  v14 = *(v4 + 24);
  if (*(v4 + 32))
  {
    v14 = 0;
  }

  v15 = *(v4 + 8);
  v16 = __OFADD__(v15, v14);
  v17 = v15 + v14;
  if (v16)
  {
    __break(1u);
  }

  else if (v13 == v17)
  {
    _UnsafeMutableWrappedBuffer.deinitialize()();
    (*(v9 + 16))(v12, a1, a3);
    return _UnsafeMutableWrappedBuffer.initialize<A>(from:)(v12, a2, a3, a4);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Sequence._withContiguousStorageIfAvailable_SR14663<A>(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  if (type metadata accessor for Array() == a1 && (_isBridgedVerbatimToObjectiveC<A>(_:)() & 1) != 0)
  {
    return (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  }

  else
  {
    return dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  }
}

uint64_t _Deque._Storage.description.getter(void *a1)
{
  _StringGuts.grow(_:)(20);

  v2 = _typeName(_:qualified:)();
  MEMORY[0x1865D3D30](v2);

  MEMORY[0x1865D3D30](0x61726F74535F2E3ELL, 0xEA00000000006567);
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = _DequeBufferHeader.description.getter();
  MEMORY[0x1865D3D30](v6);

  return 0x3C6575716544;
}

uint64_t _Deque._Storage.init()()
{
  if (one-time initialization token for _emptyDequeStorage != -1)
  {
    swift_once();
  }

  return ManagedBufferPointer.init(unsafeBufferObject:)();
}

uint64_t _Deque._Storage.init(minimumCapacity:)()
{
  type metadata accessor for _DequeBuffer();
  static ManagedBuffer.create(minimumCapacity:makingHeaderWith:)();

  return ManagedBufferPointer.init(unsafeBufferObject:)();
}

uint64_t _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v16 + ((*(*(v15 - 8) + 80) + 16) & ~*(*(v15 - 8) + 80)), v14);
  if (v9)
  {
    return (*(v11 + 32))(a9, v14, a6);
  }

  return result;
}

uint64_t _ss20ManagedBufferPointerVsRi__rlE25withUnsafeMutablePointersyqd_0_qd_0_SpyxG_Spyq_Gtqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  result = MEMORY[0x1EEE9AC00](a1);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v22 = *(v20 + 64);
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_7;
  }

  v25 = *(*(v15 - 8) + 80);
  v26 = __CFADD__(v24, v25 + 1);
  v27 = v24 + v25 + 1;
  if (v26)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = v16(v14 + v21, v14 + ((v27 - 1) & ~v25), v18);
  if (v9)
  {
    return (*(v11 + 32))(a9, v18, a6);
  }

  return result;
}

uint64_t _Deque._Storage.read<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a4;
  v14 = a5;
  v15 = a1;
  v16 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return _ss20ManagedBufferPointerVsRi__rlE25withUnsafeMutablePointersyqd_0_qd_0_SpyxG_Spyq_Gtqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(a6, v12, a3, &type metadata for _DequeBufferHeader, a4, v10, a5, MEMORY[0x1E69E7288], &v17);
}

Swift::Void __swiftcall _Deque._Storage.ensureUnique()()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for ManagedBufferPointer();
  if ((MEMORY[0x1865D40D0](v2) & 1) == 0)
  {

    _Deque._Storage._makeUniqueCopy()();
  }
}

Swift::Void __swiftcall _Deque._Storage._makeUniqueCopy()()
{
  v2 = *v1;
  v4 = *(v0 + 16);
  _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque._Storage._makeUniqueCopy(), &v3, v2, v4, v0, partial apply for closure #1 in _Deque._Storage.read<A>(_:));

  *v1 = v5;
}

uint64_t _Deque._UnsafeHandle.copyElements()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _DequeBuffer();
  v6 = *a1;
  v10[8] = a1;
  v10[9] = a2;
  static ManagedBuffer.create(minimumCapacity:makingHeaderWith:)();
  v7 = ManagedBufferPointer.init(unsafeBufferObject:)();
  v8 = v7;
  if (a1[1] >= 1)
  {
    MEMORY[0x1EEE9AC00](v7);
    v10[2] = a3;
    v10[3] = a1;
    v10[4] = a2;
    _Deque._Storage.read<A>(_:)(partial apply for closure #2 in _Deque._UnsafeHandle.copyElements(), v10, v8, a3, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
  }

  return v8;
}

Swift::Int __swiftcall _Deque._Storage._growCapacity(to:linearly:)(Swift::Int to, Swift::Bool linearly)
{
  if (linearly)
  {
    _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.capacity.getter, 0, v2, &type metadata for _DequeBufferHeader, v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v8);
    v5 = v9;
  }

  else
  {
    _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.capacity.getter, 0, v2, &type metadata for _DequeBufferHeader, v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v8);
    v6 = ceil(v9 * 1.5);
    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v6 <= -9.22337204e18 || v6 >= 9.22337204e18)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v5 = v6;
  }

  if (v5 <= to)
  {
    return to;
  }

  else
  {
    return v5;
  }
}

Swift::Void __swiftcall _Deque._Storage.ensureUnique(minimumCapacity:linearGrowth:)(Swift::Int minimumCapacity, Swift::Bool linearGrowth)
{
  v6 = *(v2 + 16);
  v7 = type metadata accessor for ManagedBufferPointer();
  v8 = MEMORY[0x1865D40D0](v7);
  _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.capacity.getter, 0, *v3, &type metadata for _DequeBufferHeader, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v9);
  if (v10 < minimumCapacity || (v8 & 1) == 0)
  {
    _Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(minimumCapacity, linearGrowth);
  }
}

uint64_t specialized _Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (v5 >= a1)
  {
    if (!isUniquelyReferenced_nonNull_native)
    {
      v13 = *v2;
      v14 = (*v2 + 16);
      v15 = *v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_DequeBufferCyytGMd, &_ss12_DequeBufferCyytGMR);
      v16 = swift_allocObject();
      v17 = *(v13 + 24);
      *(v16 + 16) = v15;
      v18 = (v16 + 16);
      *(v16 + 24) = v17;
      swift_getObjectType();
      _swift_getObjCClassInstanceExtents();
      if ((v19 & 0x8000000000000000) == 0)
      {
        if (v19 == 16)
        {
          goto LABEL_17;
        }

        _swift_getObjCClassInstanceExtents();
        if ((v20 & 0x8000000000000000) == 0)
        {
          if (v20 == 40)
          {
LABEL_17:
            if (_swift_objcClassUsesNativeSwiftReferenceCounting())
            {
              if (*(v13 + 24) >= 1)
              {
                specialized _Deque._UnsafeHandle.segments()(v14, v13 + 40, v24);
                specialized _Deque._UnsafeHandle.initialize(at:from:)(*(v13 + 32), v24[0], v24[1], v18, v16 + 40, 201, specialized UnsafeMutablePointer.initialize(from:count:));
                if ((v25 & 1) == 0)
                {
                  specialized _Deque._UnsafeHandle.initialize(at:from:)(0, v24[2], v24[3], v18, v16 + 40, 201, specialized UnsafeMutablePointer.initialize(from:count:));
                }
              }

              goto LABEL_31;
            }
          }

LABEL_37:
          _fatalErrorMessage(_:_:file:line:flags:)();
          __break(1u);
          goto LABEL_38;
        }
      }

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_37;
  }

  v7 = *v2;
  v8 = (*v2 + 16);
  v9 = *v8;
  if (!isUniquelyReferenced_nonNull_native)
  {
    if ((a2 & 1) == 0)
    {
      v21 = ceil(v9 * 1.5);
      if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v21 <= -9.22337204e18 || v21 >= 9.22337204e18)
      {
        goto LABEL_38;
      }

      v9 = v21;
    }

    if (v9 <= a1)
    {
      v22 = a1;
    }

    else
    {
      v22 = v9;
    }

    v12 = specialized _Deque._UnsafeHandle.copyElements(minimumCapacity:)(v22, v8, v7 + 40);
    goto LABEL_30;
  }

  if (a2)
  {
LABEL_8:
    if (v9 <= a1)
    {
      v11 = a1;
    }

    else
    {
      v11 = v9;
    }

    v12 = specialized _Deque._UnsafeHandle.moveElements(minimumCapacity:)(v11, v8, v7 + 40);
LABEL_30:
    v16 = v12;
LABEL_31:

    *v2 = v16;
    return result;
  }

  v10 = ceil(v9 * 1.5);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v10 > -9.22337204e18 && v10 < 9.22337204e18)
  {
    v9 = v10;
    goto LABEL_8;
  }

LABEL_38:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}