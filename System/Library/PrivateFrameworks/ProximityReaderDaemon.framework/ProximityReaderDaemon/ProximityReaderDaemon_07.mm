void sub_2612DE35C()
{
  sub_2612DE3D0();
  if (v0 <= 0x3F)
  {
    sub_2612DE444();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2612DE3D0()
{
  if (!qword_27FE9FD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE9FD30, "HM");
    v0 = sub_2613A1CBC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FE9FD68);
    }
  }
}

void sub_2612DE444()
{
  if (!qword_27FE9FD70)
  {
    type metadata accessor for IdentityAnalyticsReporter(255);
    v0 = sub_2613A1F8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FE9FD70);
    }
  }
}

uint64_t sub_2612DE49C(uint64_t a1)
{
  type metadata accessor for IdentityAnalyticsTransaction(0);

  return sub_2612DA84C(a1);
}

uint64_t sub_2612DE4D8(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3)
{
  v46 = a2;
  v47 = a3;
  v45 = sub_26139FD9C();
  v5 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v37 = v3;
    v51 = MEMORY[0x277D84F90];
    v10 = v6;
    sub_261265DD4(0, v8, 0);
    v50 = v51;
    v11 = a1 + 64;
    v12 = -1 << *(a1 + 32);
    result = sub_2613A204C();
    v13 = v10;
    v14 = result;
    v15 = 0;
    v42 = v10 + 8;
    v43 = v10 + 16;
    v38 = a1 + 72;
    v39 = v8;
    v40 = v10;
    v41 = a1 + 64;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      v17 = v14 >> 6;
      if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_22;
      }

      v48 = *(a1 + 36);
      v19 = v44;
      v18 = v45;
      v20 = v13;
      (*(v13 + 16))(v44, *(a1 + 48) + *(v13 + 72) * v14, v45);
      v21 = v46(v19);
      v49 = v22;
      result = (*(v20 + 8))(v19, v18);
      v23 = v50;
      v51 = v50;
      v25 = *(v50 + 16);
      v24 = *(v50 + 24);
      if (v25 >= v24 >> 1)
      {
        result = sub_261265DD4((v24 > 1), v25 + 1, 1);
        v23 = v51;
      }

      *(v23 + 16) = v25 + 1;
      v26 = v23 + 16 * v25;
      v27 = v49;
      *(v26 + 32) = v21;
      *(v26 + 40) = v27;
      v16 = 1 << *(a1 + 32);
      if (v14 >= v16)
      {
        goto LABEL_23;
      }

      v11 = v41;
      v28 = *(v41 + 8 * v17);
      if ((v28 & (1 << v14)) == 0)
      {
        goto LABEL_24;
      }

      v50 = v23;
      if (v48 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v29 = v28 & (-2 << (v14 & 0x3F));
      if (v29)
      {
        v16 = __clz(__rbit64(v29)) | v14 & 0x7FFFFFFFFFFFFFC0;
        v13 = v40;
      }

      else
      {
        v30 = v17 << 6;
        v31 = v17 + 1;
        v32 = (v38 + 8 * v17);
        while (v31 < (v16 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            v35 = v40;
            result = sub_26124A218(v14, v48, 0);
            v13 = v35;
            v16 = __clz(__rbit64(v33)) + v30;
            goto LABEL_4;
          }
        }

        v36 = v40;
        result = sub_26124A218(v14, v48, 0);
        v13 = v36;
      }

LABEL_4:
      ++v15;
      v14 = v16;
      if (v15 == v39)
      {
        return v50;
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

unint64_t sub_2612DE814()
{
  result = qword_27FE9FD88;
  if (!qword_27FE9FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9FD88);
  }

  return result;
}

uint64_t sub_2612DE868(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2612DE8B0()
{
  v2 = *(type metadata accessor for IdentityAnalyticsReporter(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261262AA4;

  return sub_2612D8800(v5, v0 + v3, v4);
}

uint64_t sub_2612DE9B0(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for IdentityAnalyticsManager.LoadState(0);
  (*(*(State - 8) + 40))(a2, a1, State);
  return a2;
}

uint64_t sub_2612DEA14(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_261265144;

  return sub_261262E94(a1, v5);
}

__n128 sub_2612DEAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = *(a1 + 16);
  *(v14 + 48) = *a1;
  *(v14 + 64) = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  *(v14 + 80) = result;
  *(v14 + 96) = v17;
  *(v14 + 32) = a5;
  *(v14 + 40) = a2;
  *(v14 + 24) = a4;
  *(v14 + 112) = a3;
  *(v14 + 120) = a6;
  *(v14 + 128) = a7;
  return result;
}

void sub_2612DEB54()
{
  v1 = v0;
  v2 = sub_26139F64C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26139F3EC();
  sub_26139F5DC();
  (*(v3 + 8))(v6, v2);
  type metadata accessor for SPRUtils();
  v7 = v1[4];
  v25[0] = v1[3];
  v25[1] = v7;
  v8 = v1[6];
  v25[2] = v1[5];
  v25[3] = v8;
  v9 = sub_2612C70E4(v25);
  v11 = v10;
  v23 = v9;
  v12 = (v10 >> 8) & 1;
  v24 = v10 & 0x1FF;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FA00, &qword_2613A7AD0);
  sub_26124A238(sub_2612DED28, v1, v13, &v20);
  v14 = v20;
  v15 = v22;
  v16 = v21;
  v17[1] = v20;
  v18 = v21;
  v19 = v22;
  sub_26124A42C(sub_2612DEFA4, v1, v13, &v23);
  sub_2612B48CC(v9, v11, v12);
  sub_2612B48CC(v14, v16, v15);
  sub_2612B48CC(v23, v24, SHIBYTE(v24));
}

uint64_t sub_2612DED28(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 112);
  type metadata accessor for SPRReaderDelegate();
  v4 = swift_allocObject();
  *(v4 + 48) = 0;
  *(v4 + 56) = v3;
  *(v4 + 16) = sub_2612E2644;
  *(v4 + 24) = v1;
  *(v4 + 32) = sub_2612E2668;
  *(v4 + 40) = v1;
  v5 = *(**(v1 + 40) + 256);
  swift_retain_n();
  v6 = v3;
  v5(v2, v4);
}

uint64_t sub_2612DEE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  *(result + 48) = 0;
  *(result + 56) = a1;
  *(result + 16) = a2;
  *(result + 24) = a3;
  *(result + 32) = a4;
  *(result + 40) = a5;
  return result;
}

uint64_t sub_2612DEE70(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for ReaderEvent(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a2 + 32);
  (*(a2 + 24))(v6);
  v13 = *(a2 + 120);
  v12 = *(a2 + 128);
  *v8 = v9;
  v8[8] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC30, &unk_2613A9E80);
  swift_storeEnumTagMultiPayload();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBD0, &qword_2613AAAB0);
  (*(*(v14 - 8) + 56))(v8, 0, 10, v14);
  v13(v8);
  return sub_2612E25E4(v8, type metadata accessor for ReaderEvent);
}

uint64_t sub_2612DEFD0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ReaderEvent(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - v10;
  v12 = sub_26129B780();
  sub_26125A870(v12, v11, &qword_27FE9F560, &qword_2613A3CB0);
  v13 = sub_2613A124C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
    if ((*(v2 + 16) & 1) == 0)
    {
LABEL_3:
      v15 = *(v2 + 128);
      return (*(v2 + 120))(a1);
    }
  }

  else
  {
    v17 = sub_26125A798();
    v18 = sub_261291AA8();
    sub_26129BC3C(v17 & 1, v2, 0xD000000000000015, 0x80000002613BAF90, v18, v19);

    (*(v14 + 8))(v11, v13);
    if ((*(v2 + 16) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  sub_2612CD17C(a1, v7, type metadata accessor for ReaderEvent);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBD0, &qword_2613AAAB0);
  v21 = (*(*(v20 - 8) + 48))(v7, 10, v20);
  result = sub_2612E25E4(v7, type metadata accessor for ReaderEvent);
  if (v21 == 1)
  {
    *(v2 + 16) = 0;
    return (*(*v2 + 184))(2);
  }

  return result;
}

uint64_t sub_2612DF26C()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    v1 = *(v0 + 24);
    v2 = *(v0 + 32);
    return v1();
  }

  return result;
}

uint64_t sub_2612DF29C(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v3 = type metadata accessor for ReaderEvent(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v44 = &v39 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  v46 = sub_26129B780();
  sub_26125A870(v46, v15, &qword_27FE9F560, &qword_2613A3CB0);
  v16 = sub_2613A124C();
  v17 = *(v16 - 8);
  v45 = *(v17 + 48);
  if (v45(v15, 1, v16) == 1)
  {
    sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
    v18 = *(v2 + 16);
    if ((v18 & 1) == 0)
    {
LABEL_3:
      v41 = v18;
      v40 = v17;
      *(v2 + 16) = 1;
      v42 = v16;
      v20 = *(v2 + 120);
      v19 = *(v2 + 128);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBD0, &qword_2613AAAB0);
      v22 = *(*(v21 - 8) + 56);
      v22(v6, 3, 10, v21);
      v20(v6);
      v23 = sub_2612E25E4(v6, type metadata accessor for ReaderEvent);
      (*(**(v2 + 40) + 264))(v23);
      *v6 = v43;
      v6[8] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC30, &unk_2613A9E80);
      swift_storeEnumTagMultiPayload();
      v22(v6, 0, 10, v21);
      v20(v6);
      v24 = v42;
      v25 = sub_2612E25E4(v6, type metadata accessor for ReaderEvent);
      v26 = *(v2 + 32);
      (*(v2 + 24))(v25);
      v27 = v44;
      sub_26125A870(v46, v44, &qword_27FE9F560, &qword_2613A3CB0);
      if (v45(v27, 1, v24) == 1)
      {
        sub_26124C718(v27, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v31 = sub_2613A122C();
        v32 = sub_2613A1D9C();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_261243000, v31, v32, "readTask cancelled", v33, 2u);
          MEMORY[0x266701350](v33, -1, -1);
        }

        (*(v40 + 8))(v27, v24);
      }

      v18 = v41;
      return v18 ^ 1u;
    }
  }

  else
  {
    v28 = sub_26125A798();
    v29 = sub_261291AA8();
    sub_26129BC3C(v28 & 1, v2, 0xD000000000000014, 0x80000002613BAFB0, v29, v30);

    (*(v17 + 8))(v15, v16);
    v18 = *(v2 + 16);
    if ((v18 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  sub_26125A870(v46, v11, &qword_27FE9F560, &qword_2613A3CB0);
  if (v45(v11, 1, v16) == 1)
  {
    sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v34 = v17;
    v35 = sub_2613A122C();
    v36 = sub_2613A1D8C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_261243000, v35, v36, "readTask already cancelled", v37, 2u);
      MEMORY[0x266701350](v37, -1, -1);
    }

    (*(v34 + 8))(v11, v16);
  }

  return v18 ^ 1u;
}

uint64_t sub_2612DF7F4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);
  v4 = *(v0 + 72);
  v5 = *(v0 + 96);

  v6 = *(v0 + 128);

  return swift_deallocClassInstance();
}

uint64_t sub_2612DF87C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v18 - v7;
  if (*(v2 + 48) == 1)
  {
    v9 = sub_26129B780();
    sub_26125A870(v9, v8, &qword_27FE9F560, &qword_2613A3CB0);
    v10 = sub_2613A124C();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v8, 1, v10) == 1)
    {
      return sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v15 = sub_2613A122C();
      v16 = sub_2613A1D9C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_261243000, v15, v16, "Abort returning result, read has already completed", v17, 2u);
        MEMORY[0x266701350](v17, -1, -1);
      }

      return (*(v11 + 8))(v8, v10);
    }
  }

  else
  {
    *(v2 + 48) = 1;
    v13 = *(v2 + 40);
    (*(v2 + 32))(v6);
    v14 = *(v2 + 24);
    return (*(v2 + 16))(a1);
  }
}

void sub_2612DFA4C(void *a1)
{
  v2 = v1;
  v4 = sub_26139F64C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26139F63C();
  sub_26139F5BC();
  v9 = (*(v5 + 8))(v8, v4);
  v10 = MEMORY[0x266700BB0](v9);
  sub_2612DFB3C(a1, v2);
  objc_autoreleasePoolPop(v10);
}

uint64_t sub_2612DFB3C(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v30 = &v27 - v6;
  v7 = type metadata accessor for ReaderEvent(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TransactionData(0);
  v28 = *(v11 - 8);
  v29 = v11;
  v12 = *(v28 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SPRUtils();
  v15 = [a1 vasResponses];
  sub_261259BE0(0, &qword_27FE9FDB0, 0x277D64050);
  v16 = sub_2613A1B7C();

  v17 = a2[7];
  v18 = sub_26139FD3C();
  v19 = sub_2612C6448(v16, v18);

  sub_2612C6750(a1, v17, v19, v14);

  v20 = sub_2612DFEDC(a1);
  if (v21 < 0xFCu)
  {
    v23 = v20;
    v24 = v21;
    v25 = v30;
    sub_2612CD17C(v14, v30, type metadata accessor for TransactionData);
    (*(v28 + 56))(v25, 0, 1, v29);
    (*(*a2 + 192))(v23, v24, v25);
    sub_26124C718(v25, &qword_27FE9F340, &unk_2613A4B40);
  }

  else
  {
    sub_2612CD17C(v14, v10, type metadata accessor for TransactionData);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC30, &unk_2613A9E80);
    swift_storeEnumTagMultiPayload();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBD0, &qword_2613AAAB0);
    (*(*(v22 - 8) + 56))(v10, 0, 10, v22);
    (*(*a2 + 144))(v10);
    sub_2612E25E4(v10, type metadata accessor for ReaderEvent);
  }

  return sub_2612E25E4(v14, type metadata accessor for TransactionData);
}

uint64_t sub_2612DFEDC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v72 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v73 = &v71 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v71 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v74 = &v71 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v71 - v14;
  v16 = sub_26129B780();
  sub_26125A870(v16, v15, &qword_27FE9F560, &qword_2613A3CB0);
  v17 = sub_2613A124C();
  v18 = *(v17 - 8);
  v19 = v18 + 48;
  v75 = *(v18 + 48);
  v76 = v18;
  if (v75(v15, 1, v17) == 1)
  {
    sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v71 = v19;
    v20 = a1;
    v21 = v16;
    v22 = v11;
    v23 = v17;
    v24 = sub_2613A122C();
    v25 = sub_2613A1D7C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_261243000, v24, v25, "checkSuccessExceptions", v26, 2u);
      MEMORY[0x266701350](v26, -1, -1);
    }

    v17 = v23;
    (*(v76 + 8))(v15, v23);
    v11 = v22;
    v16 = v21;
    a1 = v20;
  }

  if ([a1 payAppletFinalStatus] == 7)
  {
    type metadata accessor for ReadError(0);
    v77 = [a1 readError];
    sub_261259E78(MEMORY[0x277D84F90]);
    sub_2612E2250(&qword_27FE9FDA8, type metadata accessor for ReadError);
    sub_26139EE5C();
    v27 = v78;
    v28 = v74;
    sub_26125A870(v16, v74, &qword_27FE9F560, &qword_2613A3CB0);
    if (v75(v28, 1, v17) == 1)
    {
      sub_26124C718(v28, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v47 = v27;
      v48 = sub_2613A122C();
      v49 = sub_2613A1D7C();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = 138412290;
        v52 = v47;
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v50 + 4) = v53;
        *v51 = v53;
        _os_log_impl(&dword_261243000, v48, v49, "Applet has error: %@", v50, 0xCu);
        sub_26124C718(v51, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v51, -1, -1);
        v54 = v50;
        v28 = v74;
        MEMORY[0x266701350](v54, -1, -1);
      }

      (*(v76 + 8))(v28, v17);
    }

    type metadata accessor for SPRErrorsUtils();
    v55 = sub_2613777E4([a1 readError]);

    return v55;
  }

  v74 = v17;
  v29 = *(v1 + 56);
  v30 = [a1 outcomeStatus];
  sub_26139FC8C();
  v31 = sub_26139FF5C();
  if (v31 == sub_26139FF5C())
  {
    v32 = sub_26139FD0C();
    sub_261259BE0(0, &qword_27FE9FE70, 0x277CCA980);
    v33 = sub_2613A1F2C();
    v34 = sub_2613A1F3C();

    if ((v34 & 1) == 0 && v30 == 32 && [a1 forFallback])
    {
      sub_26125A870(v16, v11, &qword_27FE9F560, &qword_2613A3CB0);
      v35 = v74;
      if (v75(v11, 1, v74) == 1)
      {
        sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v60 = sub_2613A122C();
        v61 = sub_2613A1D7C();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&dword_261243000, v60, v61, "Fallback and outcome is decline, ignore decline", v62, 2u);
          MEMORY[0x266701350](v62, -1, -1);
        }

        (*(v76 + 8))(v11, v35);
      }

      return 0;
    }
  }

  v36 = [a1 outcomeStatus];
  sub_26139FC8C();
  v37 = sub_26139FF5C();
  if (v37 == sub_26139FF5C() && (v38 = sub_26139FD0C(), sub_261259BE0(0, &qword_27FE9FE70, 0x277CCA980), v39 = sub_2613A1F2C(), v40 = sub_2613A1F3C(), v38, v39, (v40 & 1) == 0) && v36 == 32)
  {
    v41 = v16;
    v42 = v73;
    sub_26125A870(v41, v73, &qword_27FE9F560, &qword_2613A3CB0);
    v43 = v74;
    if (v75(v42, 1, v74) == 1)
    {
      sub_26124C718(v42, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v57 = sub_2613A122C();
      v58 = sub_2613A1D7C();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_261243000, v57, v58, "Outcome is declined for purchase", v59, 2u);
        MEMORY[0x266701350](v59, -1, -1);
      }

      (*(v76 + 8))(v42, v43);
    }

    return 11;
  }

  else
  {
    sub_26139FC8C();
    v44 = sub_26139FF5C();
    if (v44 != sub_26139FF5C())
    {
      return 0;
    }

    v45 = [a1 outcomeStatus];
    if (v45 <= 0x30 && ((1 << v45) & 0x1000000010001) != 0)
    {
      return 0;
    }

    v46 = v72;
    sub_26125A870(v16, v72, &qword_27FE9F560, &qword_2613A3CB0);
    if (v75(v46, 1, v74) == 1)
    {
      sub_26124C718(v46, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v63 = a1;
      v64 = sub_2613A122C();
      v65 = sub_2613A1D7C();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v78 = v67;
        *v66 = 136315138;
        [v63 outcomeStatus];
        v68 = sub_2613A1F0C();
        v70 = sub_26124C11C(v68, v69, &v78);

        *(v66 + 4) = v70;
        _os_log_impl(&dword_261243000, v64, v65, "Outcome has exceptions %s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v67);
        MEMORY[0x266701350](v67, -1, -1);
        MEMORY[0x266701350](v66, -1, -1);
      }

      (*(v76 + 8))(v46, v74);
    }

    return 10;
  }
}

uint64_t sub_2612E0834(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v63 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v63 - v18;
  v20 = sub_26139F64C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26139F63C();
  sub_26139F5BC();
  (*(v21 + 8))(v24, v20);
  _s3__C4CodeOMa_1(0);
  v71 = 14001;
  sub_2612E2250(&qword_27FE9F9C8, _s3__C4CodeOMa_1);
  if (sub_26139EDAC())
  {
    v25 = sub_26129B780();
    sub_26125A870(v25, v19, &qword_27FE9F560, &qword_2613A3CB0);
    v26 = sub_2613A124C();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v19, 1, v26) == 1)
    {
      sub_26124C718(v19, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v43 = sub_2613A122C();
      v44 = sub_2613A1D8C();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_261243000, v43, v44, "Read Error: [ service disconnected ]", v45, 2u);
        MEMORY[0x266701350](v45, -1, -1);
      }

      (*(v27 + 8))(v19, v26);
    }

    v46 = type metadata accessor for TransactionData(0);
    (*(*(v46 - 8) + 56))(v12, 1, 1, v46);
    (*(*v3 + 192))(0, 66, v12);
LABEL_23:
    v50 = v12;
    return sub_26124C718(v50, &qword_27FE9F340, &unk_2613A4B40);
  }

  v71 = a1;
  v28 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  type metadata accessor for ReadError(0);
  if (!swift_dynamicCast())
  {
    v47 = sub_26129B780();
    sub_26125A870(v47, v17, &qword_27FE9F560, &qword_2613A3CB0);
    v48 = sub_2613A124C();
    v49 = *(v48 - 8);
    if ((*(v49 + 48))(v17, 1, v48) == 1)
    {
      sub_26124C718(v17, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v51 = a1;
      v52 = sub_2613A122C();
      v53 = sub_2613A1D8C();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v70 = a1;
        v71 = v67;
        *v54 = 136315138;
        v55 = a1;
        v56 = sub_2613A195C();
        v58 = sub_26124C11C(v56, v57, &v71);

        *(v54 + 4) = v58;
        _os_log_impl(&dword_261243000, v52, v53, "Unknown readCard error. Error: [ %s ]", v54, 0xCu);
        v59 = v67;
        __swift_destroy_boxed_opaque_existential_0Tm(v67);
        MEMORY[0x266701350](v59, -1, -1);
        MEMORY[0x266701350](v54, -1, -1);
      }

      (*(v49 + 8))(v17, v48);
    }

    v60 = type metadata accessor for TransactionData(0);
    (*(*(v60 - 8) + 56))(v12, 1, 1, v60);
    (*(*v3 + 192))(3, 66, v12);
    goto LABEL_23;
  }

  v29 = v70;
  v30 = type metadata accessor for TransactionData(0);
  v31 = *(v30 - 1);
  v32 = *(v31 + 56);
  v33 = v31 + 56;
  v32(v10, 1, 1, v30);
  if (a2)
  {
    v63[1] = type metadata accessor for SPRUtils();
    v64 = a2;
    v34 = [v64 vasResponses];
    v65 = v33;
    v35 = v34;
    sub_261259BE0(0, &qword_27FE9FDB0, 0x277D64050);
    v36 = sub_2613A1B7C();

    v66 = v32;
    v37 = v3[7];
    v38 = sub_26139FD3C();
    v39 = sub_2612C6448(v36, v38);
    v67 = v30;
    v40 = v39;

    v41 = v64;
    v42 = v37;
    v32 = v66;
    sub_2612C6750(v64, v42, v40, v12);

    v30 = v67;

    sub_26124C718(v10, &qword_27FE9F340, &unk_2613A4B40);
    v32(v12, 0, 1, v30);
    sub_2612BCC94(v12, v10);
  }

  v71 = v29;
  sub_2612E2250(&qword_27FE9FDA8, type metadata accessor for ReadError);
  sub_26139EE1C();
  if (v70 == 4020 || v70 == 4042)
  {
    v32(v12, 1, 1, v30);
    (*(*v3 + 192))(2, 66, v12);
  }

  else
  {
    if (v70 != 4029)
    {
      type metadata accessor for SPRErrorsUtils();
      v69 = v29;
      sub_26139EE1C();
      v62 = sub_2613777E4(v68);
      (*(*v3 + 192))(v62);

      v50 = v10;
      return sub_26124C718(v50, &qword_27FE9F340, &unk_2613A4B40);
    }

    (*(*v3 + 208))(5, 1);
    v32(v12, 1, 1, v30);
    (*(*v3 + 192))(2, 66, v12);
  }

  sub_26124C718(v12, &qword_27FE9F340, &unk_2613A4B40);
  v50 = v10;
  return sub_26124C718(v50, &qword_27FE9F340, &unk_2613A4B40);
}

uint64_t sub_2612E11A4(uint64_t a1, char a2, uint64_t a3)
{
  v7 = type metadata accessor for ReaderEvent(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v28 - v13;
  v15 = sub_26129B780();
  sub_26125A870(v15, v14, &qword_27FE9F560, &qword_2613A3CB0);
  v16 = sub_2613A124C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v29 = v3;
    v18 = sub_2613A122C();
    v19 = sub_2613A1D8C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = a3;
      v22 = v21;
      *v20 = 138412290;
      sub_2612B48D8();
      swift_allocError();
      *v23 = a1;
      *(v23 + 8) = a2;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_261243000, v18, v19, "Read Error: [ %@ ]", v20, 0xCu);
      sub_26124C718(v22, &qword_27FEA0410, &qword_2613AA780);
      v25 = v22;
      a3 = v28;
      MEMORY[0x266701350](v25, -1, -1);
      MEMORY[0x266701350](v20, -1, -1);
    }

    (*(v17 + 8))(v14, v16);
    v3 = v29;
  }

  sub_2612E14C4(a1, a2, a3, v10);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBD0, &qword_2613AAAB0);
  (*(*(v26 - 8) + 56))(v10, 0, 10, v26);
  (*(*v3 + 144))(v10);
  return sub_2612E25E4(v10, type metadata accessor for ReaderEvent);
}

uint64_t sub_2612E14C4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for TransactionData(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26125A870(a3, v11, &qword_27FE9F340, &unk_2613A4B40);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_26124C718(v11, &qword_27FE9F340, &unk_2613A4B40);
    *a4 = a1;
    *(a4 + 8) = a2;
  }

  else
  {
    sub_2612E257C(v11, v16, type metadata accessor for TransactionData);
    v17 = &v16[*(v12 + 100)];
    *v17 = a1;
    v17[8] = a2;
    sub_2612E257C(v16, a4, type metadata accessor for TransactionData);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC30, &unk_2613A9E80);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2612E16C4(unint64_t a1)
{
  v3 = sub_26139F64C();
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v3);
  v54 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FDB8, &qword_2613AAAB8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v51 - v15;
  v17 = type metadata accessor for ReaderEvent(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v20);
  v25 = &v51 - v24;
  v57 = v1;
  if (*(v1 + 48))
  {
    return result;
  }

  type metadata accessor for SPRUtils();
  v53 = a1;
  sub_2612C7F8C(a1, v16);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    sub_2612E257C(v16, v25, type metadata accessor for ReaderEvent);
    v29 = sub_26129B780();
    sub_26125A870(v29, v12, &qword_27FE9F560, &qword_2613A3CB0);
    v30 = sub_2613A124C();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v12, 1, v30) == 1)
    {
      sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      sub_2612CD17C(v25, v22, type metadata accessor for ReaderEvent);
      v39 = sub_2613A122C();
      v40 = sub_2613A1D9C();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v58 = v52;
        *v41 = 136315138;
        sub_2612E2250(&qword_27FE9FDC0, type metadata accessor for ReaderEvent);
        v42 = sub_2613A23EC();
        v44 = v43;
        sub_2612E25E4(v22, type metadata accessor for ReaderEvent);
        v45 = sub_26124C11C(v42, v44, &v58);

        *(v41 + 4) = v45;
        _os_log_impl(&dword_261243000, v39, v40, "onUpdate: [ %s ]", v41, 0xCu);
        v46 = v52;
        __swift_destroy_boxed_opaque_existential_0Tm(v52);
        MEMORY[0x266701350](v46, -1, -1);
        MEMORY[0x266701350](v41, -1, -1);
      }

      else
      {

        sub_2612E25E4(v22, type metadata accessor for ReaderEvent);
      }

      (*(v31 + 8))(v12, v30);
    }

    if (v53 <= 4)
    {
      if (v53)
      {
        if (v53 != 1)
        {
LABEL_24:
          v50 = *(v57 + 24);
          (*(v57 + 16))(v25);
          return sub_2612E25E4(v25, type metadata accessor for ReaderEvent);
        }

        v47 = v54;
        sub_26139F62C();
        sub_26139F5BC();
        v48 = v56;
        v49 = *(v55 + 8);
        v49(v47, v56);
        sub_26139F63C();
LABEL_23:
        sub_26139F5DC();
        v49(v47, v48);
        goto LABEL_24;
      }

      v47 = v54;
      sub_26139F3EC();
    }

    else
    {
      if ((v53 - 5) >= 2 && v53 != 8)
      {
        goto LABEL_24;
      }

      v47 = v54;
      sub_26139F63C();
    }

    sub_26139F5BC();
    v48 = v56;
    v49 = *(v55 + 8);
    v49(v47, v56);
    sub_26139F62C();
    goto LABEL_23;
  }

  sub_26124C718(v16, &qword_27FE9FDB8, &qword_2613AAAB8);
  v26 = sub_26129B780();
  sub_26125A870(v26, v10, &qword_27FE9F560, &qword_2613A3CB0);
  v27 = sub_2613A124C();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v10, 1, v27) == 1)
  {
    return sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
  }

  v32 = sub_2613A122C();
  v33 = sub_2613A1D8C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v58 = v35;
    *v34 = 136315138;
    v36 = sub_2613A1D6C();
    v38 = sub_26124C11C(v36, v37, &v58);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_261243000, v32, v33, "onUpdate: failed to parse [ %s ]", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x266701350](v35, -1, -1);
    MEMORY[0x266701350](v34, -1, -1);
  }

  return (*(v28 + 8))(v10, v27);
}

uint64_t sub_2612E1E48()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_2612E1E90(uint64_t a1)
{
  v2 = sub_2612E2250(&qword_27FE9FE40, type metadata accessor for ReadError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2612E1EFC(uint64_t a1)
{
  v2 = sub_2612E2250(&qword_27FE9FE40, type metadata accessor for ReadError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2612E1F68(uint64_t a1)
{
  v2 = sub_2612E2250(&qword_27FE9FDA8, type metadata accessor for ReadError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2612E1FD4(uint64_t a1)
{
  v2 = sub_2612E2250(&qword_27FE9FDA8, type metadata accessor for ReadError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2612E2040(uint64_t a1)
{
  v2 = sub_2612E2250(&qword_27FE9FDA8, type metadata accessor for ReadError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2612E20AC(void *a1, uint64_t a2)
{
  v4 = sub_2612E2250(&qword_27FE9FDA8, type metadata accessor for ReadError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2612E213C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2612E2250(&qword_27FE9FDA8, type metadata accessor for ReadError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_2612E21B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2612E2250(&qword_27FE9FDA8, type metadata accessor for ReadError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_2612E2250(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2612E257C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2612E25E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2612E2690(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v5 = 0;
    goto LABEL_9;
  }

  v2 = sub_26124E5EC(0x6E656B6F74, 0xE500000000000000);
  if ((v3 & 1) == 0)
  {
    v5 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_7;
    }

LABEL_9:

    return v5;
  }

  v4 = (*(a1 + 56) + 16 * v2);
  v5 = *v4;
  v6 = v4[1];

  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

LABEL_7:
  v7 = sub_26124E5EC(0xD000000000000013, 0x80000002613BB0C0);
  if ((v8 & 1) == 0)
  {
    goto LABEL_9;
  }

  v9 = (*(a1 + 56) + 16 * v7);
  v10 = *v9;
  v11 = v9[1];
  swift_bridgeObjectRetain_n();

  type metadata accessor for SPRUtils();
  sub_2612C805C(v10, v11);
  swift_bridgeObjectRelease_n();
  return v5;
}

uint64_t sub_2612E27A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      sub_261265E5C();
      v5 = 0;
      do
      {
        v6 = *(a1 + v5 + 40);
        v14 = *(a1 + v5 + 32);
        v7 = *(a1 + v5 + 48);
        v15 = *(a1 + v5 + 64);
        v10 = *(a2 + v5 + 32);
        v11 = *(a2 + v5 + 40);
        v12 = *(a2 + v5 + 48);
        v13 = *(a2 + v5 + 64);

        v8 = sub_2613A188C();

        if ((v8 & 1) == 0)
        {
          break;
        }

        v5 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_2612E28E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_2613A258C();
    sub_2613A19DC();
  }

  else
  {
    sub_2613A258C();
  }

  v5 = *(a4 + 16);
  result = MEMORY[0x2667009F0](v5);
  if (v5)
  {
    sub_2612E2C0C();
    v7 = (a4 + 64);
    do
    {
      v8 = *(v7 - 4);
      v9 = *(v7 - 3);
      v10 = *(v7 - 1);
      v11 = *v7;

      sub_2613A183C();

      v7 += 5;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_2612E29DC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2613A256C();
  sub_2612E28E8(v5, v1, v2, v3);
  return sub_2613A25CC();
}

uint64_t sub_2612E2A44()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2613A256C();
  sub_2612E28E8(v5, v1, v2, v3);
  return sub_2613A25CC();
}

uint64_t sub_2612E2A9C(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (sub_2613A241C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:

  return sub_2612E27A4(v4, v6);
}

uint64_t sub_2612E2B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2613A211C();

  if (a2)
  {
    v5 = sub_2613A0F7C();
    v7 = v6;
  }

  else
  {
    v7 = 0xE500000000000000;
    v5 = 0x7974706D45;
  }

  MEMORY[0x2666FFEA0](v5, v7);

  MEMORY[0x2666FFEA0](0xD000000000000011, 0x80000002613BB0E0);
  v8 = Array<A>.description.getter(a3);
  MEMORY[0x2666FFEA0](v8);

  return 0x205B203A747441;
}

unint64_t sub_2612E2C0C()
{
  result = qword_27FE9FE80;
  if (!qword_27FE9FE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9FE80);
  }

  return result;
}

unint64_t sub_2612E2C64()
{
  result = qword_27FE9FE88;
  if (!qword_27FE9FE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9FE88);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2612E2CCC(uint64_t a1, int a2)
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

uint64_t sub_2612E2D14(uint64_t result, int a2, int a3)
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

uint64_t sub_2612E2D64(void (*a1)(uint64_t, uint64_t))
{
  v2 = swift_allocObject();
  sub_2612E2DB4(a1);
  return v2;
}

uint64_t sub_2612E2DB4(void (*a1)(uint64_t, uint64_t))
{
  v2 = v1;
  v53[1] = *MEMORY[0x277D85DE8];
  v48 = *v1;
  v4 = sub_26139EF7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v47 = &v45[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v10 = &v45[-v9];
  v11 = *(a1 + 3);
  v12 = *(a1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 40))(v11, v12);
  v13 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v14 = sub_26139EEFC();
  v15 = [v13 initWithContentsOfURL_];

  v51 = *(v5 + 8);
  v52 = v4;
  v51(v10, v4);
  if (v15)
  {
    sub_2612B5A20(a1, (v2 + 3));
    v16 = *(a1 + 3);
    v17 = *(a1 + 4);
    __swift_project_boxed_opaque_existential_1(a1, v16);
    (*(v17 + 16))(v16, v17);
    v18 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
    v19 = v15;
    v20 = sub_2613A189C();

    v21 = [v18 initWithName:v20 managedObjectModel:v19];

    v50 = v19;
    v2[2] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA00B0, "r0");
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_2613A4340;
    v23 = v21;
    *(v22 + 32) = sub_2612E443C(a1);
    sub_2612E4638();
    v24 = sub_2613A1B6C();

    [v23 setPersistentStoreDescriptions_];

    v25 = objc_opt_self();
    v26 = [v25 defaultManager];
    v27 = *(a1 + 3);
    v28 = *(a1 + 4);
    __swift_project_boxed_opaque_existential_1(a1, v27);
    (*(v28 + 24))(v27, v28);
    sub_26139EF4C();
    v51(v10, v52);
    v29 = sub_2613A189C();

    v30 = [v26 fileExistsAtPath_];

    if ((v30 & 1) == 0)
    {
      v46 = v30;
      v31 = [v25 defaultManager];
      v32 = *(a1 + 3);
      v33 = *(a1 + 4);
      __swift_project_boxed_opaque_existential_1(a1, v32);
      v34 = v47;
      (*(v33 + 24))(v32, v33);
      sub_26139EF2C();
      v35 = v34;
      v36 = v51;
      v37 = v52;
      v51(v35, v52);
      v38 = sub_26139EEFC();
      v36(v10, v37);
      v53[0] = 0;
      LODWORD(v37) = [v31 createDirectoryAtURL:v38 withIntermediateDirectories:1 attributes:0 error:v53];

      if (!v37)
      {
        v42 = v53[0];
        sub_26139EE7C();

        swift_willThrow();
        v40 = v50;
        goto LABEL_11;
      }

      v39 = v53[0];
      LOBYTE(v30) = v46;
    }

    v40 = v2[2];
    v41 = v49;
    sub_2612E4D70(v40, a1);
    if (!v41)
    {

      v2[8] = [v2[2] newBackgroundContext];
      if ((v30 & 1) == 0)
      {
        sub_2612E54CC(a1);
      }

      goto LABEL_12;
    }

LABEL_11:
    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 3);
    swift_deallocPartialClassInstance();
LABEL_12:
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v43 = *MEMORY[0x277D85DE8];
    return v2;
  }

  result = sub_2613A220C();
  __break(1u);
  return result;
}

uint64_t sub_2612E3358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_2612E3380);
}

uint64_t sub_2612E3380()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = *(v1 + 64);
  v0[8] = v5;
  v6 = swift_allocObject();
  v0[9] = v6;
  v6[2] = v2;
  v6[3] = v4;
  v6[4] = v3;
  v6[5] = v1;
  v7 = *(MEMORY[0x277CBE118] + 4);
  v5;

  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_2612E3498;
  v9 = v0[6];
  v10 = v0[2];
  v11 = v0[3];

  return MEMORY[0x28210EE50](v10, v11, sub_2612E5B28, v6, v9);
}

uint64_t sub_2612E3498()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2612E35DC);
  }

  else
  {
    v5 = v3[8];
    v4 = v3[9];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_2612E35DC()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

BOOL sub_2612E3644(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v3 setResultType_];
  *&v15 = 0;
  v4 = [a1 executeRequest:v3 error:&v15];
  v5 = v15;
  if (v4)
  {
    v6 = v4;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    v8 = v5;
    if (v7)
    {
      if ([v7 result])
      {
        sub_2613A202C();

        swift_unknownObjectRelease();
      }

      else
      {

        v13 = 0u;
        v14 = 0u;
      }

      v15 = v13;
      v16 = v14;
      if (*(&v14 + 1))
      {
        if (swift_dynamicCast())
        {
          v10 = v13 > 0;
          goto LABEL_13;
        }

LABEL_12:
        v10 = 0;
        goto LABEL_13;
      }
    }

    else
    {

      v15 = 0u;
      v16 = 0u;
    }

    sub_26124C718(&v15, &qword_27FEA00C0, &unk_2613A44B0);
    goto LABEL_12;
  }

  v9 = v15;
  sub_26139EE7C();

  swift_willThrow();
LABEL_13:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_2612E3828(void *a1, void *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = sub_2612E38D8(a1, a2, 0x277CBE388);
  v3 = *MEMORY[0x277D85DE8];
  return v2 & 1;
}

uint64_t sub_2612E3880(void *a1, void *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = sub_2612E38D8(a1, a2, 0x277CBE378);
  v3 = *MEMORY[0x277D85DE8];
  return v2 & 1;
}

uint64_t sub_2612E38D8(void *a1, id a2, uint64_t *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  [a2 setResultType_];
  *&v18 = 0;
  v6 = [a1 executeRequest:a2 error:&v18];
  v7 = v18;
  if (v6)
  {
    v8 = v6;
    v9 = *a3;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    v11 = v7;
    if (v10)
    {
      if ([v10 result])
      {
        sub_2613A202C();
        swift_unknownObjectRelease();
      }

      else
      {

        v16 = 0u;
        v17 = 0u;
      }

      v18 = v16;
      v19 = v17;
      if (*(&v17 + 1))
      {
        if (swift_dynamicCast())
        {
          v13 = v16;
          goto LABEL_13;
        }

LABEL_12:
        v13 = 0;
        goto LABEL_13;
      }
    }

    else
    {

      v18 = 0u;
      v19 = 0u;
    }

    sub_26124C718(&v18, &qword_27FEA00C0, &unk_2613A44B0);
    goto LABEL_12;
  }

  v12 = v18;
  sub_26139EE7C();

  swift_willThrow();
LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

void sub_2612E3A80()
{
  v24[1] = *MEMORY[0x277D85DE8];
  v23 = sub_2613A1DCC();
  v1 = *(v23 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v23);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_26139EF7C();
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v22);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = *(v0 + 16);
  v9 = [v21[0] persistentStoreCoordinator];
  v11 = *(v0 + 48);
  v10 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 24), v11);
  (*(v10 + 24))(v11, v10);
  sub_2613A1DBC();
  v12 = v21[1];
  sub_2613A1F1C();
  if (v12)
  {

    (*(v1 + 8))(v4, v23);
    (*(v5 + 8))(v8, v22);
  }

  else
  {

    (*(v1 + 8))(v4, v23);
    (*(v5 + 8))(v8, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA00B0, "r0");
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2613A4340;
    *(v13 + 32) = sub_2612E443C((v0 + 24));
    sub_2612E4638();
    v14 = sub_2613A1B6C();

    v15 = v21[0];
    [v21[0] setPersistentStoreDescriptions_];

    v24[0] = 0;
    if ([v15 load_])
    {
      v16 = v24[0];
      v17 = [v15 newBackgroundContext];
      v18 = *(v0 + 64);
      *(v0 + 64) = v17;
    }

    else
    {
      v19 = v24[0];
      sub_26139EE7C();

      swift_willThrow();
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2612E3DB0()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return swift_deallocClassInstance();
}

id sub_2612E3DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  v12 = type metadata accessor for LocalCoreDataConfiguration();
  v13 = v12[5];
  v14 = sub_26139EF7C();
  v15 = *(*(v14 - 8) + 32);
  v15(&a7[v13], a3, v14);
  v15(&a7[v12[6]], a4, v14);
  v16 = &a7[v12[7]];
  *v16 = a5;
  *(v16 + 1) = a6;
  v17 = *MEMORY[0x277CBE7E0];
  *&a7[v12[8]] = *MEMORY[0x277CBE7E0];

  return v17;
}

uint64_t sub_2612E3EE8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_2612E3F20()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2612E3F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_26139EF7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2612E3FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_26139EF7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2612E4044(uint64_t a1, id *a2)
{
  result = sub_2613A18AC();
  *a2 = 0;
  return result;
}

uint64_t sub_2612E40BC(uint64_t a1, id *a2)
{
  v3 = sub_2613A18BC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2612E413C@<X0>(uint64_t *a1@<X8>)
{
  sub_2613A18CC();
  v2 = sub_2613A189C();

  *a1 = v2;
  return result;
}

uint64_t sub_2612E4180@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2613A189C();

  *a2 = v5;
  return result;
}

uint64_t sub_2612E41C8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2613A18CC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2612E41F4(uint64_t a1)
{
  v2 = sub_2612E5A98(&qword_27FE9FEB8, type metadata accessor for URLFileProtection);
  v3 = sub_2612E5A98(&qword_27FE9FEC0, type metadata accessor for URLFileProtection);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2612E42B0()
{
  v1 = *v0;
  v2 = sub_2613A18CC();
  v3 = MEMORY[0x2666FFF30](v2);

  return v3;
}

uint64_t sub_2612E42EC()
{
  v1 = *v0;
  sub_2613A18CC();
  sub_2613A19DC();
}

uint64_t sub_2612E4340()
{
  v1 = *v0;
  sub_2613A18CC();
  sub_2613A256C();
  sub_2613A19DC();
  v2 = sub_2613A25CC();

  return v2;
}

uint64_t sub_2612E43B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2613A18CC();
  v6 = v5;
  if (v4 == sub_2613A18CC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2613A241C();
  }

  return v9 & 1;
}

id sub_2612E443C(void *a1)
{
  v2 = sub_26139EF7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 24))(v7, v8);
  v9 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
  v10 = sub_26139EEFC();
  v11 = [v9 initWithURL_];

  (*(v3 + 8))(v6, v2);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  (*(v13 + 8))(v12, v13);
  if (v14)
  {
    v15 = sub_2613A189C();
  }

  else
  {
    v15 = 0;
  }

  [v11 setConfiguration_];

  [v11 setType_];
  [v11 setShouldInferMappingModelAutomatically_];
  [v11 setShouldMigrateStoreAutomatically_];
  [v11 setTimeout_];
  return v11;
}

unint64_t sub_2612E4638()
{
  result = qword_27FE9FE90;
  if (!qword_27FE9FE90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE9FE90);
  }

  return result;
}

id sub_2612E4684(void *a1, void (*a2)(uint64_t, uint64_t))
{
  v63 = a2;
  v70[1] = *MEMORY[0x277D85DE8];
  v3 = sub_2613A1DCC();
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = *(v64 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26139EF7C();
  v66 = *(v7 - 8);
  v67 = v7;
  v8 = *(v66 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v62 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v58 - v18;
  v69 = sub_26129B934();
  sub_26124AA44(v69, v19);
  v20 = sub_2613A124C();
  v21 = *(v20 - 8);
  v68 = *(v21 + 48);
  if (v68(v19, 1, v20) == 1)
  {
    sub_26124C718(v19, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v22 = sub_2613A122C();
    v23 = sub_2613A1D9C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v61 = v12;
      v25 = v6;
      v26 = v21;
      v27 = v24;
      *v24 = 0;
      _os_log_impl(&dword_261243000, v22, v23, "Removing persistent store", v24, 2u);
      v28 = v27;
      v21 = v26;
      v6 = v25;
      v12 = v61;
      MEMORY[0x266701350](v28, -1, -1);
    }

    (*(v21 + 8))(v19, v20);
  }

  v29 = [a1 persistentStoreCoordinator];
  v70[0] = 0;
  v30 = [v29 _removeAllPersistentStores_];

  if (v30)
  {
    v59 = v21;
    v60 = v20;
    v61 = v17;
    v31 = v70[0];
    v32 = [a1 persistentStoreCoordinator];
    v33 = *(v63 + 3);
    v34 = *(v63 + 4);
    v35 = __swift_project_boxed_opaque_existential_1(v63, v33);
    v36 = *(v34 + 24);
    v58[1] = v35;
    v63 = v36;
    v36(v33, v34);
    sub_2613A1DBC();
    sub_2613A1F1C();

    (*(v64 + 8))(v6, v65);
    v39 = v67;
    v40 = *(v66 + 8);
    v40(v12, v67);
    v41 = v40;
    v42 = [objc_opt_self() defaultManager];
    v43 = v62;
    v63(v33, v34);
    v44 = sub_26139EEFC();
    v41(v43, v39);
    v70[0] = 0;
    v45 = [v42 removeItemAtURL:v44 error:v70];

    v46 = v70[0];
    if (v45)
    {
      v47 = *MEMORY[0x277D85DE8];

      return v46;
    }

    v67 = v70[0];
    v49 = v70[0];
    v38 = sub_26139EE7C();

    swift_willThrow();
    v20 = v60;
    v17 = v61;
    v21 = v59;
  }

  else
  {
    v37 = v70[0];
    v38 = sub_26139EE7C();

    swift_willThrow();
  }

  sub_26124AA44(v69, v17);
  if (v68(v17, 1, v20) == 1)
  {

    result = sub_26124C718(v17, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v50 = v38;
    v51 = sub_2613A122C();
    v52 = sub_2613A1D8C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      v55 = v38;
      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 4) = v56;
      *v54 = v56;
      _os_log_impl(&dword_261243000, v51, v52, "Error removing persistent store: %@", v53, 0xCu);
      sub_26124C718(v54, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v54, -1, -1);
      MEMORY[0x266701350](v53, -1, -1);
    }

    else
    {
    }

    result = (*(v21 + 8))(v17, v20);
  }

  v57 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2612E4D70(void *a1, void (*a2)(uint64_t, uint64_t))
{
  v58 = a2;
  v65[1] = *MEMORY[0x277D85DE8];
  v3 = sub_26139EBAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v62 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v60 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v53 - v11;
  v13 = sub_26139EB8C();
  v61 = *(v13 - 8);
  v14 = *(v61 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v59 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v57 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v53 - v23;
  type metadata accessor for Mock();
  if (sub_26129B0F4(32))
  {
    v55 = v4;
    v25 = sub_26129B934();
    sub_26124AA44(v25, v24);
    v26 = sub_2613A124C();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v24, 1, v26) == 1)
    {
      sub_26124C718(v24, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v56 = a1;
      v29 = sub_2613A122C();
      v30 = sub_2613A1D7C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v54 = v3;
        v32 = v31;
        *v31 = 0;
        _os_log_impl(&dword_261243000, v29, v30, "The error that simulates a corrupted DB file is enabled!", v31, 2u);
        v33 = v32;
        v3 = v54;
        MEMORY[0x266701350](v33, -1, -1);
      }

      (*(v27 + 8))(v24, v26);
      a1 = v56;
    }

    sub_26139EB7C();
    v34 = sub_26139EF7C();
    (*(*(v34 - 8) + 56))(v12, 1, 1, v34);
    v35 = sub_26139EB9C();
    sub_26124C718(v12, &qword_27FE9F220, qword_2613A5530);
    v36 = v61;
    (*(v61 + 8))(v18, v13);
    v4 = v55;
  }

  else
  {
    v65[0] = 0;
    if ([a1 load_])
    {
      v28 = v65[0];
      goto LABEL_22;
    }

    v37 = v65[0];
    v35 = sub_26139EE7C();

    v36 = v61;
  }

  v38 = v60;
  swift_willThrow();
  v65[0] = v35;
  v39 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  if (swift_dynamicCast())
  {
    v56 = a1;
    (*(v4 + 32))(v62, v38, v3);
    sub_2612E5A98(&qword_27FE9FEC8, MEMORY[0x277CC8620]);
    sub_26139EE1C();
    v40 = v59;
    sub_26139EB7C();
    sub_2612E5A98(&qword_27FE9FED0, MEMORY[0x277CC8608]);
    sub_2613A1B1C();
    sub_2613A1B1C();
    v41 = *(v36 + 8);
    v41(v40, v13);
    v41(v18, v13);
    if (v64 == v63)
    {

      v42 = sub_26129B934();
      v43 = v57;
      sub_26124AA44(v42, v57);
      v44 = sub_2613A124C();
      v45 = *(v44 - 8);
      if ((*(v45 + 48))(v43, 1, v44) == 1)
      {
        sub_26124C718(v43, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v47 = sub_2613A122C();
        v48 = sub_2613A1D8C();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = v4;
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_261243000, v47, v48, "DB file corrupted error received", v50, 2u);
          v51 = v50;
          v4 = v49;
          MEMORY[0x266701350](v51, -1, -1);
        }

        (*(v45 + 8))(v43, v44);
      }

      v46 = v62;
      sub_2612E4684(v56, v58);
      sub_26139EB6C();
      swift_willThrow();
    }

    else
    {
      v46 = v62;
    }

    (*(v4 + 8))(v46, v3);
  }

LABEL_22:
  v52 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2612E54CC(void *a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v29 = sub_26139ED9C();
  v2 = *(v29 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v29);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26139EF7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 24))(v11, v12);
  sub_26139ED8C();
  sub_26139ED7C();
  v13 = v28;
  sub_26139EEEC();
  v14 = v29;
  if (v13)
  {
    goto LABEL_5;
  }

  v27 = v7;
  v28 = v6;
  v15 = sub_26139EEFC();
  v17 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v18 = (*(v16 + 32))(v17, v16);
  v19 = *MEMORY[0x277CBE7F8];
  v30[0] = 0;
  v20 = [v15 setResourceValue:v18 forKey:v19 error:v30];

  if ((v20 & 1) == 0)
  {
    v24 = v30[0];
    sub_26139EE7C();

    swift_willThrow();
    v6 = v28;
    v14 = v29;
    v7 = v27;
LABEL_5:
    (*(v2 + 8))(v5, v14);
    result = (*(v7 + 8))(v10, v6);
    goto LABEL_6;
  }

  v21 = *(v2 + 8);
  v22 = v30[0];
  v21(v5, v29);
  result = (*(v27 + 8))(v10, v28);
LABEL_6:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2612E57C0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v0[5] + 64);
  v2();
}

uint64_t type metadata accessor for LocalCoreDataConfiguration()
{
  result = qword_27FEABD70;
  if (!qword_27FEABD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2612E58C0()
{
  sub_26139EF7C();
  if (v0 <= 0x3F)
  {
    sub_2612E59B8(319, &qword_27FE9F590, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for URLFileProtection(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2612E59B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2612E5A98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2612E5B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v36 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FED8, &unk_2613AB140);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v28 - v6;
  v31 = sub_26139F13C();
  v38 = *(v31 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v31);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A3CA0;
  *(inited + 32) = 7371124;
  v11 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = 5527370;
  *(inited + 56) = 0xE300000000000000;
  *(inited + 72) = v11;
  *(inited + 80) = 6580587;
  v32 = 0x80000002613BB1D0;
  *(inited + 88) = 0xE300000000000000;
  *(inited + 96) = 0xD000000000000024;
  *(inited + 104) = 0x80000002613BB1D0;
  *(inited + 120) = v11;
  *(inited + 128) = 6777953;
  *(inited + 168) = v11;
  *(inited + 136) = 0xE300000000000000;
  *(inited + 144) = 0x3635325345;
  *(inited + 152) = 0xE500000000000000;
  v34 = sub_261259E78(inited);
  swift_setDeallocating();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2F0, &qword_2613A4BD0);
  swift_arrayDestroy();
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_2613AB130;
  *(v12 + 32) = 7566185;
  v30 = v12 + 32;
  *(v12 + 40) = 0xE300000000000000;
  strcpy((v12 + 48), "authorization");
  *(v12 + 62) = -4864;
  *(v12 + 72) = v11;
  *(v12 + 80) = 6583649;
  *(v12 + 88) = 0xE300000000000000;
  *(v12 + 96) = 0x746361736E617274;
  *(v12 + 104) = 0xEB000000006E6F69;
  *(v12 + 120) = v11;
  *(v12 + 128) = 1684628851;
  *(v12 + 136) = 0xE400000000000000;
  v29 = a1;
  v13 = *(a1 + 56);
  *(v12 + 144) = *(a1 + 48);
  *(v12 + 152) = v13;
  *(v12 + 168) = v11;
  *(v12 + 176) = 6911082;
  *(v12 + 184) = 0xE300000000000000;

  sub_26139F12C();
  v14 = sub_26139F0FC();
  v16 = v15;
  v17 = *(v38 + 8);
  v38 += 8;
  v18 = v31;
  v17(v9, v31);
  *(v12 + 192) = v14;
  *(v12 + 200) = v16;
  *(v12 + 216) = v11;
  *(v12 + 224) = 7234157;
  *(v12 + 232) = 0xE300000000000000;
  *(v12 + 240) = 0xD000000000000010;
  *(v12 + 248) = 0x80000002613BB200;
  *(v12 + 264) = v11;
  *(v12 + 272) = 6513517;
  *(v12 + 280) = 0xE300000000000000;
  *(v12 + 288) = 825308213;
  *(v12 + 296) = 0xE400000000000000;
  *(v12 + 312) = v11;
  *(v12 + 320) = 6580589;
  *(v12 + 328) = 0xE300000000000000;
  *(v12 + 336) = 808464432;
  *(v12 + 344) = 0xE400000000000000;
  *(v12 + 360) = v11;
  *(v12 + 368) = 6580592;
  *(v12 + 376) = 0xE300000000000000;
  sub_26139F12C();
  v19 = sub_26139F0FC();
  v21 = v20;
  v17(v9, v18);
  *(v12 + 384) = v19;
  *(v12 + 392) = v21;
  *(v12 + 408) = v11;
  *(v12 + 416) = 1684631668;
  *(v12 + 424) = 0xE400000000000000;
  *(v12 + 432) = 0xD000000000000024;
  *(v12 + 440) = v32;
  *(v12 + 456) = v11;
  *(v12 + 464) = 1684632694;
  *(v12 + 472) = 0xE400000000000000;
  v22 = *(v29 + 72);
  *(v12 + 480) = *(v29 + 64);
  *(v12 + 488) = v22;
  *(v12 + 504) = v11;
  *(v12 + 512) = 1953526640;
  *(v12 + 520) = 0xE400000000000000;
  *(v12 + 552) = v11;
  v23 = v36;
  *(v12 + 528) = v35;
  *(v12 + 536) = v23;

  sub_261259E78(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  v24 = sub_2613A17DC();
  v25 = v37;
  (*(*(v24 - 8) + 56))(v37, 1, 1, v24);
  v26 = sub_2613A0FDC();

  sub_26124C718(v25, &qword_27FE9FED8, &unk_2613AB140);
  return v26;
}

uint64_t sub_2612E6008()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FED8, &unk_2613AB140);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A3CA0;
  *(inited + 32) = 7371124;
  v5 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = 5527370;
  *(inited + 56) = 0xE300000000000000;
  *(inited + 72) = v5;
  *(inited + 80) = 6580587;
  *(inited + 88) = 0xE300000000000000;
  *(inited + 96) = 0xD000000000000024;
  *(inited + 104) = 0x80000002613BB1D0;
  *(inited + 120) = v5;
  *(inited + 128) = 6777953;
  *(inited + 168) = v5;
  *(inited + 136) = 0xE300000000000000;
  *(inited + 144) = 0x3635325345;
  *(inited + 152) = 0xE500000000000000;
  sub_261259E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2F0, &qword_2613A4BD0);
  swift_arrayDestroy();
  v6 = swift_initStackObject();
  *(v6 + 32) = 1684631668;
  v7 = v6 + 32;
  *(v6 + 16) = xmmword_2613A4310;
  *(v6 + 72) = v5;
  *(v6 + 40) = 0xE400000000000000;
  *(v6 + 48) = 0xD000000000000024;
  *(v6 + 56) = 0x80000002613BB1D0;
  sub_261259E78(v6);
  swift_setDeallocating();
  sub_26124C718(v7, &qword_27FE9F2F0, &qword_2613A4BD0);
  v8 = sub_2613A17DC();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = sub_2613A0FDC();

  sub_26124C718(v3, &qword_27FE9FED8, &unk_2613AB140);
  return v9;
}

uint64_t sub_2612E62B0(uint64_t a1, unint64_t a2)
{

  v4 = sub_2612D1AC4(a1, a2);
  v6 = v5;
  v7 = sub_26139F00C();
  sub_26124C6C4(v4, v6);
  return v7;
}

uint64_t sub_2612E6324(uint64_t a1)
{
  v21[5] = *MEMORY[0x277D85DE8];
  *&v18 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9FEE0, &qword_2613AB170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBF8, "(N");
  if (!swift_dynamicCast())
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_26124C718(v19, &qword_27FE9FC00, &unk_2613A9DC0);
    *&v19[0] = sub_2612CA52C(*(a1 + 16));
    *(&v19[0] + 1) = v2;
    MEMORY[0x28223BE20](*&v19[0]);
    v5 = sub_2612E6CE4(sub_2612E76C8);
    v6 = v3;
    v7 = *(&v19[0] + 1) >> 62;
    if ((*(&v19[0] + 1) >> 62) > 1)
    {
      if (v7 != 2)
      {
        if (!v4)
        {
          goto LABEL_18;
        }

        v12 = 0;
LABEL_31:
        if (v12 < v4)
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        sub_26139EFDC();
LABEL_33:

        goto LABEL_34;
      }

      v9 = *(*&v19[0] + 16);
      v8 = *(*&v19[0] + 24);
      v10 = __OFSUB__(v8, v9);
      v11 = v8 - v9;
      if (v10)
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
      }

      if (v4 != v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (!v7)
      {
        if (v4 == BYTE14(v19[0]))
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

      if (__OFSUB__(DWORD1(v19[0]), v19[0]))
      {
        goto LABEL_42;
      }

      if (v4 != DWORD1(v19[0]) - LODWORD(v19[0]))
      {
LABEL_13:
        if (v7 == 2)
        {
          v12 = *(*&v19[0] + 24);
        }

        else if (v7 == 1)
        {
          v12 = *&v19[0] >> 32;
        }

        else
        {
          v12 = BYTE14(v19[0]);
        }

        goto LABEL_31;
      }
    }

LABEL_18:
    memset(v21, 0, 15);
    if (v3)
    {
      if (!__OFSUB__(v3, 1))
      {
        if (v3 - 1 < 0)
        {
LABEL_35:
          __break(1u);
        }

        else
        {
          LOBYTE(v13) = 0;
          while (1)
          {
            v14 = v6 - 1;
            if ((v6 - 1) >= v5[2])
            {
              break;
            }

            *(v21 + v13) = *(v5 + v6 + 31);
            v13 = v13 + 1;
            if ((v13 & 0x100) != 0)
            {
              goto LABEL_37;
            }

            if (v13 == 14)
            {
              sub_26139EFEC();
              if (v6 == 1)
              {
                goto LABEL_33;
              }

              LOBYTE(v13) = 0;
            }

            else if (v6 == 1)
            {
              goto LABEL_38;
            }

            --v6;
            if (v14 < 1)
            {
              goto LABEL_35;
            }
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        sub_26139EFEC();
        goto LABEL_33;
      }

      __break(1u);
      goto LABEL_40;
    }

    goto LABEL_33;
  }

  sub_26124A200(v19, v21);
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  sub_26139ED6C();
  v19[0] = v18;
  __swift_destroy_boxed_opaque_existential_0Tm(v21);
LABEL_34:
  v15 = v19[0];
  sub_26124C778(*&v19[0], *(&v19[0] + 1));

  sub_26124C6C4(v15, *(&v15 + 1));
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t sub_2612E6690(uint64_t result, uint64_t a2)
{
  if (result < 1)
  {
LABEL_17:
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = 1;
    result = sub_26124C5D0(0, 1, 1, MEMORY[0x277D84F90]);
    v5 = result;
    while (1)
    {
      v6 = (a2 % 10) | (16 * (a2 / 10 % 10));
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      if (v6 > 0xFF)
      {
        goto LABEL_15;
      }

      v8 = *(v5 + 16);
      v7 = *(v5 + 24);
      if (v8 >= v7 >> 1)
      {
        result = sub_26124C5D0((v7 > 1), v8 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v8 + 1;
      *(v5 + v8 + 32) = v6;
      if (v3 == v4)
      {
        break;
      }

      a2 /= 100;
      if (__OFADD__(v4++, 1))
      {
        goto LABEL_16;
      }
    }

    return sub_2612E6324(v5);
  }

  return result;
}

uint64_t sub_2612E67DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{

  sub_2612E71D8(a3, a4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3E0, "R7");
  sub_261265DF4();
  v6 = sub_2613A184C();

  return v6;
}

uint64_t sub_2612E6894(uint64_t a1, unint64_t a2)
{
  result = sub_2612C94BC(a1, a2);
  if (!v5)
  {
    v9 = a1;
    v10 = a2;
    sub_26124C778(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBB0, &qword_2613A9C18);
    if (swift_dynamicCast())
    {
      sub_26124A200(v7, v11);
      __swift_project_boxed_opaque_existential_1(v11, v12);
      if (sub_2613A226C())
      {
        __swift_project_boxed_opaque_existential_1(v11, v12);
        sub_2613A225C();
        v6 = *&v7[0];
        __swift_destroy_boxed_opaque_existential_0Tm(v11);
        return v6;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v11);
    }

    else
    {
      v8 = 0;
      memset(v7, 0, sizeof(v7));
      sub_26124C718(v7, &qword_27FE9FBB8, &unk_2613A9C20);
    }

    return sub_2612C8C38(a1, a2);
  }

  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_2612E69E8()
{
  sub_2613A181C();

  swift_getWitnessTable();
  sub_2613A1AFC();
}

uint64_t sub_2612E6AB8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v10 = result;
    v11 = v1;
    v12 = [v10 deviceIdentifierForVendor];
    if (v12)
    {
      v13 = v12;
      sub_26139F11C();

      v14 = sub_26139F13C();
      (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
    }

    else
    {
      v14 = sub_26139F13C();
      (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    }

    sub_2612E7658(v6, v8);
    sub_26139F13C();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v8, 1, v14) == 1)
    {

      sub_26124C718(v8, &qword_27FE9F280, &unk_2613A42B0);
      return 0;
    }

    else
    {
      v16 = sub_26139F0DC();

      (*(v15 + 8))(v8, v14);
      return v16;
    }
  }

  return result;
}

void *sub_2612E6CE4(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_26124C6C4(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_26124C6C4(v6, v5);
    *v3 = xmmword_2613A3C90;
    sub_26124C6C4(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_26139ED1C() && __OFSUB__(v6, sub_26139ED4C()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_26139ED5C();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_26139ECFC();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_2612E70E4(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_26124C6C4(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_2613A3C90;
    sub_26124C6C4(0, 0xC000000000000000);
    sub_26139EF9C();
    result = sub_2612E70E4(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2612E707C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_2612E70E4(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_26139ED1C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_26139ED4C();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_26139ED3C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

int8x16_t *sub_2612E7198@<X0>(int8x16_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, int8x16_t **a4@<X8>)
{
  result = sub_2612E7750(a1, a2, *a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_2612E71D8(uint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  v29 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      v4 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 2)
  {
    v7 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v4 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v7 = MEMORY[0x277D84F90];
  if (v4)
  {
    v46 = MEMORY[0x277D84F90];
    sub_261265DD4(0, v4 & ~(v4 >> 63), 0);
    v8 = a1;
    if (v3)
    {
      if (v3 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v33 = v9;
    if (v4 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v7 = v46;
    v28 = &v34 + v9;
    v31 = v4;
    v32 = v3;
    do
    {
      if (v10 >= v4)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v33 + v10;
      if (v3 == 2)
      {
        if (v12 < *(v8 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(v8 + 24))
        {
          goto LABEL_45;
        }

        v17 = sub_26139ED1C();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = sub_26139ED4C();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v3 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = v8;
          v35 = BYTE2(v8);
          v36 = BYTE3(v8);
          v37 = v29;
          v38 = BYTE5(v8);
          v39 = BYTE6(v8);
          v40 = HIBYTE(v8);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v19 = v28[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = sub_26139ED1C();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = sub_26139ED4C();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
      v8 = a1;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F208, &qword_2613A4370);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_2613A4310;
      *(v20 + 56) = MEMORY[0x277D84B78];
      *(v20 + 64) = MEMORY[0x277D84BC0];
      *(v20 + 32) = v19;
      v21 = sub_2613A18EC();
      v23 = v22;
      v46 = v7;
      v3 = *(v7 + 16);
      v24 = *(v7 + 24);
      if (v3 >= v24 >> 1)
      {
        sub_261265DD4((v24 > 1), v3 + 1, 1);
        v8 = a1;
        v7 = v46;
      }

      *(v7 + 16) = v3 + 1;
      v25 = v7 + 16 * v3;
      *(v25 + 32) = v21;
      *(v25 + 40) = v23;
      ++v10;
      v4 = v31;
      LODWORD(v3) = v32;
    }

    while (v11 != v31);
  }

LABEL_39:
  v26 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_2612E7544()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  MEMORY[0x2666FFEA0](10, 0xE100000000000000);
  sub_2613A240C();
  MEMORY[0x2666FFEA0](2112032, 0xE300000000000000);
  sub_2613A240C();
  MEMORY[0x2666FFEA0](0, 0xE000000000000000);
}

uint64_t sub_2612E75F8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[5];
  v5 = v1[6];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v6(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_2612E7658(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_2612E76C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = **(v3 + 16);
  v8[2] = &v9;
  result = sub_2612E707C(sub_2612E7730, v8, a1, a2);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  return result;
}

int8x16_t *sub_2612E7750(int8x16_t *result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!result || !a2)
  {
    return a3;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    if (v4)
    {
      v5 = v4 - 1;
      if (v4 - 1 >= (a2 - 1))
      {
        v6 = a2 - 1;
      }

      else
      {
        v6 = v4 - 1;
      }

      v7 = v6 + 1;
      if (v7 <= 0x10)
      {
        goto LABEL_22;
      }

      if (v5 >= a2 - 1)
      {
        v5 = a2 - 1;
      }

      if (a3 + v4 + 32 > result && v4 - v5 + a3 + 31 < result->u64 + v5 + 1)
      {
LABEL_22:
        v10 = 1;
        v11 = result;
        v12 = *(a3 + 16);
      }

      else
      {
        v8 = v7 & 0xF;
        if ((v7 & 0xF) == 0)
        {
          v8 = 16;
        }

        v9 = v7 - v8;
        v10 = v7 - v8 + 1;
        v11 = (result + v7 - v8);
        v12 = v4 - v9;
        v13 = (v4 + a3 + 16);
        do
        {
          v14 = *v13--;
          v15 = vrev64q_s8(v14);
          *result++ = vextq_s8(v15, v15, 8uLL);
          v9 -= 16;
        }

        while (v9);
      }

      v16 = a2 - v10;
      do
      {
        v17 = v12 - 1;
        v11->i8[0] = *(a3 + 31 + v12);
        if (!v16)
        {
          break;
        }

        v11 = (v11 + 1);
        --v16;
        --v12;
      }

      while (v17);
    }

    return a3;
  }

  __break(1u);
  return result;
}

id sub_2612E785C()
{
  result = [objc_allocWithZone(type metadata accessor for Daemon()) init];
  qword_281451F60 = result;
  return result;
}

uint64_t *sub_2612E788C()
{
  if (qword_281451F58 != -1)
  {
    swift_once();
  }

  return &qword_281451F60;
}

id static Daemon.shared.getter()
{
  if (qword_281451F58 != -1)
  {
    swift_once();
  }

  v1 = qword_281451F60;

  return v1;
}

uint64_t sub_2612E7938()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v30 - v2;
  type metadata accessor for CardReaderAdapterFactory();
  v4 = sub_2612B4F54();
  (*(*v5 + 112))(v33, v4);

  v6 = v34;
  v7 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v8 = (*(v7 + 8))(v6, v7);
  v10 = v9;
  v12 = v11;
  __swift_destroy_boxed_opaque_existential_0Tm(v33);
  v13 = sub_26129B4AC();
  sub_26124AA44(v13, v3);
  v14 = sub_2613A124C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v3, 1, v14) == 1)
  {
    sub_26124D0CC(v3);
  }

  else
  {

    v16 = sub_2613A122C();
    v17 = sub_2613A1D9C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v31 = v19;
      *v18 = 136315394;
      if (v10)
      {
        v20 = v8;
      }

      else
      {
        v20 = 0x7974706D65;
      }

      v32 = v8;
      v33[0] = v19;
      if (v10)
      {
        v21 = v10;
      }

      else
      {
        v21 = 0xE500000000000000;
      }

      v22 = sub_26124C11C(v20, v21, v33);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v23 = sub_2612914C8(v12 & 1, 1);
      v24 = !v23;
      if (v23)
      {
        v25 = 1685025392;
      }

      else
      {
        v25 = 7759204;
      }

      if (v24)
      {
        v26 = 0xE300000000000000;
      }

      else
      {
        v26 = 0xE400000000000000;
      }

      v27 = sub_26124C11C(v25, v26, v33);
      v8 = v32;

      *(v18 + 14) = v27;
      _os_log_impl(&dword_261243000, v16, v17, "Daemon device id: %s, %s", v18, 0x16u);
      v28 = v31;
      swift_arrayDestroy();
      MEMORY[0x266701350](v28, -1, -1);
      MEMORY[0x266701350](v18, -1, -1);
    }

    (*(v15 + 8))(v3, v14);
  }

  return v8;
}

id sub_2612E7C4C()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC21ProximityReaderDaemon6Daemon_sprVersionCache];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtC21ProximityReaderDaemon6Daemon_seInfoCache];
  *v3 = sub_2612E7938();
  *(v3 + 1) = v4;
  v3[16] = v5 & 1;
  *&v0[OBJC_IVAR____TtC21ProximityReaderDaemon6Daemon_temporaryListeners] = MEMORY[0x277D84F90];
  if (_set_user_dir_suffix())
  {

    v7.receiver = v0;
    v7.super_class = ObjectType;
    return objc_msgSendSuper2(&v7, sel_init);
  }

  else
  {
    result = sub_2613A220C();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall Daemon.registerServiceListeners()()
{
  v0 = sub_26139F78C();
  sub_2612E7DF4(v0, v1);

  v2 = sub_26139F77C();
  sub_2612E7DF4(v2, v3);

  v4 = sub_26139F75C();
  sub_2612E7DF4(v4, v5);

  v6 = sub_26139F76C();
  sub_2612E7DF4(v6, v7);

  v8 = sub_26139F74C();
  sub_2612E7DF4(v8, v9);
}

uint64_t sub_2612E7DF4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_26139F13C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v31 - v13;
  v15 = sub_26129B4AC();
  sub_26124AA44(v15, v14);
  v16 = sub_2613A124C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_26124D0CC(v14);
  }

  else
  {
    v33 = v3;

    v18 = sub_2613A122C();
    v19 = sub_2613A1D9C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v31 = v6;
      v21 = v20;
      v22 = swift_slowAlloc();
      v32 = a1;
      v23 = v22;
      v34 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_26124C11C(v32, a2, &v34);
      _os_log_impl(&dword_261243000, v18, v19, "Registering service: [ %s ]", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x266701350](v23, -1, -1);
      v24 = v21;
      v6 = v31;
      MEMORY[0x266701350](v24, -1, -1);
    }

    (*(v17 + 8))(v14, v16);
    v3 = v33;
  }

  v25 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v26 = sub_2613A189C();
  v27 = [v25 initWithMachServiceName_];

  [v27 setDelegate_];
  [v27 resume];
  v28 = *sub_2612EEA04();
  *(swift_allocObject() + 16) = v27;

  v29 = v27;
  sub_2612EEA54(v10);

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2612E81B8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  [a1 setDelegate_];
  [a1 resume];
  v8 = OBJC_IVAR____TtC21ProximityReaderDaemon6Daemon_temporaryListeners;
  swift_beginAccess();
  v9 = *(v4 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v8) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_2612EACF0(0, *(v9 + 2) + 1, 1, v9);
    *(v4 + v8) = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_2612EACF0((v11 > 1), v12 + 1, 1, v9);
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[24 * v12];
  *(v13 + 4) = a1;
  *(v13 + 5) = a2;
  *(v13 + 6) = a3;
  *(v4 + v8) = v9;
  swift_endAccess();
  v14 = a1;
}

Swift::Bool __swiftcall Daemon.listener(_:shouldAcceptNewConnection:)(NSXPCListener _, NSXPCConnection shouldAcceptNewConnection)
{
  v4 = [(objc_class *)shouldAcceptNewConnection.super.isa serviceName];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2613A18CC();
    v8 = v7;

    if (v8)
    {
      v24[0] = v6;
      v24[1] = v8;
      sub_2612E85EC(v24, &v25);
    }
  }

  v9 = [(objc_class *)shouldAcceptNewConnection.super.isa serviceName];
  if (!v9)
  {
    sub_26139F78C();
    goto LABEL_10;
  }

  v10 = v9;
  v11 = sub_2613A18CC();
  v13 = v12;

  v14 = sub_26139F78C();
  if (!v13)
  {
LABEL_10:

    sub_26139F75C();

    sub_26139F76C();

    sub_26139F74C();

    goto LABEL_11;
  }

  if (v14 == v11 && v13 == v15)
  {

LABEL_15:

    return sub_2612E87F0(shouldAcceptNewConnection.super.isa);
  }

  v17 = sub_2613A241C();

  if (v17)
  {
    goto LABEL_15;
  }

  if (sub_26139F75C() == v11 && v13 == v18)
  {

LABEL_22:

    return sub_2612EB678(shouldAcceptNewConnection.super.isa);
  }

  v19 = sub_2613A241C();

  if (v19)
  {
    goto LABEL_22;
  }

  if (sub_26139F76C() == v11 && v13 == v20)
  {

LABEL_29:

    return sub_2612EBB9C(shouldAcceptNewConnection.super.isa);
  }

  v21 = sub_2613A241C();

  if (v21)
  {
    goto LABEL_29;
  }

  if (sub_26139F74C() == v11 && v13 == v22)
  {

LABEL_36:

    return sub_2612E90DC(shouldAcceptNewConnection.super.isa);
  }

  v23 = sub_2613A241C();

  if (v23)
  {
    goto LABEL_36;
  }

LABEL_11:

  sub_2612E981C(_.super.isa, shouldAcceptNewConnection.super.isa);
  return result;
}

uint64_t sub_2612E85EC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v8 = *a1;
  v9 = a1[1];
  v10 = sub_26129B4AC();
  sub_26124AA44(v10, v7);
  v11 = sub_2613A124C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v7, 1, v11);
  if (v13 == 1)
  {
    result = sub_26124D0CC(v7);
  }

  else
  {

    v15 = sub_2613A122C();
    v16 = sub_2613A1D7C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v21 = a2;
      v18 = v17;
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_26124C11C(v8, v9, &v22);
      _os_log_impl(&dword_261243000, v15, v16, "Connecting to: [ %s ]", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x266701350](v19, -1, -1);
      v20 = v18;
      a2 = v21;
      MEMORY[0x266701350](v20, -1, -1);
    }

    result = (*(v12 + 8))(v7, v11);
  }

  *a2 = v13 == 1;
  return result;
}

uint64_t sub_2612E87F0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v74 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v74 - v11;
  [a1 auditToken];
  v21 = sub_2612EB254(aBlock, v82, v83, v84);
  v22 = [v21 bundleIdentifier];
  if (!v22)
  {

    v13 = sub_26129B4AC();
    sub_26124AA44(v13, v7);
    v14 = sub_2613A124C();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v7, 1, v14) != 1)
    {
      v17 = sub_2613A122C();
      v18 = sub_2613A1D8C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_261243000, v17, v18, "Unable to get bundle ID", v19, 2u);
        MEMORY[0x266701350](v19, -1, -1);
      }

      (*(v15 + 8))(v7, v14);
      return 0;
    }

    v16 = v7;
LABEL_4:
    sub_26124D0CC(v16);
    return 0;
  }

  v79 = v1;
  v23 = v22;
  v24 = sub_2613A18CC();
  v26 = v25;

  v27 = sub_2612E6AB8();
  if (!v28)
  {

    v47 = sub_26129B4AC();
    sub_26124AA44(v47, v10);
    v48 = sub_2613A124C();
    v49 = *(v48 - 8);
    if ((*(v49 + 48))(v10, 1, v48) != 1)
    {
      v50 = sub_2613A122C();
      v51 = sub_2613A1D8C();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_261243000, v50, v51, "Unable to get install ID", v52, 2u);
        MEMORY[0x266701350](v52, -1, -1);
      }

      (*(v49 + 8))(v10, v48);
      return 0;
    }

    v16 = v10;
    goto LABEL_4;
  }

  v29 = v27;
  v30 = v28;
  v31 = objc_opt_self();
  v32 = [v31 interfaceWithProtocol_];
  [a1 setRemoteObjectInterface_];

  v85 = sub_2612E9C0C;
  v86 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v82 = 1107296256;
  v83 = sub_261277574;
  v84 = &block_descriptor_5;
  v33 = _Block_copy(&aBlock);
  v34 = [a1 remoteObjectProxyWithErrorHandler_];
  _Block_release(v33);
  sub_2613A202C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FF78, &qword_2613AB1F0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  v76 = v29;
  v77 = v31;
  v35 = v80;
  v75 = type metadata accessor for PaymentTerminalService();
  v36 = *(v79 + OBJC_IVAR____TtC21ProximityReaderDaemon6Daemon_seInfoCache);
  v37 = *(v79 + OBJC_IVAR____TtC21ProximityReaderDaemon6Daemon_seInfoCache + 8);
  v38 = v26;
  v39 = v24;
  v40 = *(v79 + OBJC_IVAR____TtC21ProximityReaderDaemon6Daemon_seInfoCache + 16);
  v41 = a1;
  swift_unknownObjectRetain();

  v78 = v35;
  v42 = sub_26130CF30(v41, v35, v39, v38, v76, v30, v36, v37, v40);
  v43 = sub_26129B4AC();
  sub_26124AA44(v43, v12);
  v44 = sub_2613A124C();
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v12, 1, v44) == 1)
  {
    sub_26124D0CC(v12);
    v46 = v77;
  }

  else
  {
    v53 = sub_2613A122C();
    v54 = sub_2613A1D9C();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v75 = v55;
      v76 = swift_slowAlloc();
      aBlock = v76;
      *v55 = 136315138;
      v56 = sub_26139F78C();
      v58 = sub_26124C11C(v56, v57, &aBlock);

      v59 = v75;
      *(v75 + 4) = v58;
      v60 = v59;
      _os_log_impl(&dword_261243000, v53, v54, "Connecting to: [%s]", v59, 0xCu);
      v61 = v76;
      __swift_destroy_boxed_opaque_existential_0Tm(v76);
      MEMORY[0x266701350](v61, -1, -1);
      MEMORY[0x266701350](v60, -1, -1);
    }

    v46 = v77;
    (*(v45 + 8))(v12, v44);
  }

  v62 = [v46 interfaceWithProtocol_];
  [v41 setExportedInterface_];

  [v41 setExportedObject_];
  v63 = swift_allocObject();
  *(v63 + 16) = v42;
  *(v63 + 24) = v41;
  v85 = sub_2612EC024;
  v86 = v63;
  aBlock = MEMORY[0x277D85DD0];
  v82 = 1107296256;
  v83 = sub_261276D54;
  v84 = &block_descriptor_8;
  v64 = _Block_copy(&aBlock);
  v65 = v41;
  v66 = v42;

  [v65 setInvalidationHandler_];
  _Block_release(v64);
  v67 = swift_allocObject();
  *(v67 + 16) = v66;
  v85 = sub_2612EC02C;
  v86 = v67;
  aBlock = MEMORY[0x277D85DD0];
  v82 = 1107296256;
  v83 = sub_261276D54;
  v84 = &block_descriptor_14;
  v68 = _Block_copy(&aBlock);
  v69 = v66;

  [v65 setInterruptionHandler_];
  _Block_release(v68);
  v70 = *sub_2612FFE1C();
  v71 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v72 = *((*MEMORY[0x277D85000] & *v70) + 0xB8);
  v73 = v70;

  v72(sub_2612EC034, v71);

  [v65 resume];

  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_2612E90DC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v61 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v61 - v11;
  [a1 auditToken];
  v21 = sub_2612EB254(aBlock, v65, v66, v67);
  v22 = [v21 bundleIdentifier];
  if (!v22)
  {
    v13 = sub_26129B4AC();
    sub_26124AA44(v13, v7);
    v14 = sub_2613A124C();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v7, 1, v14) != 1)
    {
      v17 = sub_2613A122C();
      v18 = sub_2613A1D8C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_261243000, v17, v18, "Unable to get bundle ID", v19, 2u);
        MEMORY[0x266701350](v19, -1, -1);
      }

      (*(v15 + 8))(v7, v14);
      return 0;
    }

    v16 = v7;
    goto LABEL_4;
  }

  v63 = v1;
  v23 = v22;
  v24 = sub_2613A18CC();
  v26 = v25;

  v27 = v21;
  v28 = sub_2612E6AB8();
  v30 = v29;

  if (!v30)
  {

    v47 = sub_26129B4AC();
    sub_26124AA44(v47, v10);
    v48 = sub_2613A124C();
    v49 = *(v48 - 8);
    if ((*(v49 + 48))(v10, 1, v48) != 1)
    {
      v55 = sub_2613A122C();
      v56 = sub_2613A1D8C();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_261243000, v55, v56, "Unable to get installation ID", v57, 2u);
        MEMORY[0x266701350](v57, -1, -1);
      }

      (*(v49 + 8))(v10, v48);
      return 0;
    }

    v16 = v10;
    goto LABEL_4;
  }

  v62 = v27;
  v61 = objc_opt_self();
  v31 = [v61 interfaceWithProtocol_];
  [a1 setRemoteObjectInterface_];

  type metadata accessor for PaymentReadResultStoreService(0);
  v33 = *(v63 + OBJC_IVAR____TtC21ProximityReaderDaemon6Daemon_seInfoCache);
  v32 = *(v63 + OBJC_IVAR____TtC21ProximityReaderDaemon6Daemon_seInfoCache + 8);
  v34 = *(v63 + OBJC_IVAR____TtC21ProximityReaderDaemon6Daemon_seInfoCache + 16);
  v35 = a1;

  v36 = sub_26135FE64(v35, v24, v26, v28, v30, v33, v32, v34);
  if (!v36)
  {
    v50 = sub_26129B5FC();
    sub_26124AA44(v50, v12);
    v51 = sub_2613A124C();
    v52 = *(v51 - 8);
    v53 = (*(v52 + 48))(v12, 1, v51);
    v54 = v62;
    if (v53 != 1)
    {
      v58 = sub_2613A122C();
      v59 = sub_2613A1D8C();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_261243000, v58, v59, "could not create data store service", v60, 2u);
        MEMORY[0x266701350](v60, -1, -1);
      }

      (*(v52 + 8))(v12, v51);
      return 0;
    }

    v16 = v12;
LABEL_4:
    sub_26124D0CC(v16);
    return 0;
  }

  v37 = v36;
  v38 = [v61 interfaceWithProtocol_];
  [v35 setExportedInterface_];

  [v35 setExportedObject_];
  v39 = swift_allocObject();
  *(v39 + 16) = v35;
  v68 = sub_2612EC04C;
  v69 = v39;
  aBlock = MEMORY[0x277D85DD0];
  v65 = 1107296256;
  v66 = sub_261276D54;
  v67 = &block_descriptor_41;
  v40 = _Block_copy(&aBlock);
  v41 = v35;

  [v41 setInvalidationHandler_];
  _Block_release(v40);
  v68 = sub_2612EAA90;
  v69 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v65 = 1107296256;
  v66 = sub_261276D54;
  v67 = &block_descriptor_44;
  v42 = _Block_copy(&aBlock);
  [v41 setInterruptionHandler_];
  _Block_release(v42);
  v43 = *sub_2612FFE1C();
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = *((*MEMORY[0x277D85000] & *v43) + 0xB8);
  v46 = v43;

  v45(sub_2612EC074, v44);

  [v41 resume];

  return 1;
}

void sub_2612E981C(void *a1, uint64_t a2)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = &v29 - v6;
  v7 = OBJC_IVAR____TtC21ProximityReaderDaemon6Daemon_temporaryListeners;
  swift_beginAccess();
  v30 = v7;
  v31 = v2;
  v8 = *(v2 + v7);
  v9 = *(v8 + 16);

  if (v9)
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      if (v11 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_14;
      }

      v12 = *(v8 + v10 + 32);
      v13 = *(v8 + v10 + 48);
      sub_261259BE0(0, &qword_27FE9FF88, 0x277D82BB8);
      v14 = v12;

      v15 = sub_2613A1F3C();

      if (v15)
      {
        break;
      }

      ++v11;
      v10 += 24;
      if (v9 == v11)
      {
        goto LABEL_6;
      }
    }

    v23 = *(v31 + v30);
    if (v11 < *(v23 + 16))
    {
      v24 = v23 + v10;
      v25 = *(v24 + 40);
      v26 = *(v24 + 48);
      v27 = *(v24 + 32);

      v25(v29);
      [a1 suspend];
      [a1 setDelegate_];
      swift_beginAccess();
      v28 = sub_2612EAAA8(v11);
      swift_endAccess();

      return;
    }

LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_6:

    v16 = sub_26129B4AC();
    v17 = v32;
    sub_26124AA44(v16, v32);
    v18 = sub_2613A124C();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_26124D0CC(v17);
    }

    else
    {
      v20 = sub_2613A122C();
      v21 = sub_2613A1D8C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_261243000, v20, v21, "Service not found", v22, 2u);
        MEMORY[0x266701350](v22, -1, -1);
      }

      (*(v19 + 8))(v17, v18);
    }
  }
}

uint64_t sub_2612E9BA4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_2612EAE24(0xD000000000000017, 0x80000002613BB390);
  }

  return result;
}

uint64_t sub_2612E9C0C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - v4;
  v6 = sub_26129B5FC();
  sub_26124AA44(v6, v5);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_26124D0CC(v5);
  }

  v10 = a1;
  v11 = sub_2613A122C();
  v12 = sub_2613A1D7C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136446210;
    swift_getErrorValue();
    v15 = sub_2613A24FC();
    v17 = sub_26124C11C(v15, v16, &v19);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_261243000, v11, v12, "client creation error: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x266701350](v14, -1, -1);
    MEMORY[0x266701350](v13, -1, -1);
  }

  return (*(v8 + 8))(v5, v7);
}

id sub_2612E9E18(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_26129B4AC();
  sub_26124AA44(v8, v7);
  v9 = sub_2613A124C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    v11 = sub_26124D0CC(v7);
  }

  else
  {
    v12 = sub_2613A122C();
    v13 = sub_2613A1D9C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v22 = a2;
      v15 = v14;
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136315138;
      v17 = sub_26139F78C();
      v19 = sub_26124C11C(v17, v18, &v23);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_261243000, v12, v13, "[%s] Connection was invalidated", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x266701350](v16, -1, -1);
      v20 = v15;
      a2 = v22;
      MEMORY[0x266701350](v20, -1, -1);
    }

    v11 = (*(v10 + 8))(v7, v9);
  }

  (*((*MEMORY[0x277D85000] & *a1) + 0x338))(v11);
  return [a2 setExportedObject_];
}

uint64_t sub_2612EA058(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - v4;
  v6 = sub_26129B4AC();
  sub_26124AA44(v6, v5);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    v9 = sub_26124D0CC(v5);
  }

  else
  {
    v10 = sub_2613A122C();
    v11 = sub_2613A1D9C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      v14 = sub_26139F78C();
      v16 = sub_26124C11C(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_261243000, v10, v11, "[%s] Connection was interrupted", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x266701350](v13, -1, -1);
      MEMORY[0x266701350](v12, -1, -1);
    }

    v9 = (*(v8 + 8))(v5, v7);
  }

  return (*((*MEMORY[0x277D85000] & *a1) + 0x338))(v9);
}

id sub_2612EA278(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  v7 = sub_26129B4AC();
  sub_26124AA44(v7, v6);
  v8 = sub_2613A124C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_26124D0CC(v6);
  }

  else
  {
    v10 = sub_2613A122C();
    v11 = sub_2613A1D9C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v20 = a2;
      v13 = v12;
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = sub_26139F75C();
      v17 = sub_26124C11C(v15, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_261243000, v10, v11, "[%s] Connection was invalidated", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x266701350](v14, -1, -1);
      v18 = v13;
      a2 = v20;
      MEMORY[0x266701350](v18, -1, -1);
    }

    (*(v9 + 8))(v6, v8);
  }

  sub_2613501F8();
  return [a2 setExportedObject_];
}

id sub_2612EA498(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_26129B4AC();
  sub_26124AA44(v6, v5);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_26124D0CC(v5);
  }

  else
  {
    v9 = sub_2613A122C();
    v10 = sub_2613A1D9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      v13 = sub_26139F76C();
      v15 = sub_26124C11C(v13, v14, &v18);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_261243000, v9, v10, "[%s] Connection was invalidated", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x266701350](v12, -1, -1);
      MEMORY[0x266701350](v11, -1, -1);
    }

    (*(v8 + 8))(v5, v7);
  }

  return [a1 setExportedObject_];
}

uint64_t sub_2612EA6A4(uint64_t (*a1)(void))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_26129B4AC();
  sub_26124AA44(v6, v5);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_26124D0CC(v5);
  }

  v10 = sub_2613A122C();
  v11 = sub_2613A1D9C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    v14 = a1();
    v16 = sub_26124C11C(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_261243000, v10, v11, "[%s] Connection was interrupted", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x266701350](v13, -1, -1);
    MEMORY[0x266701350](v12, -1, -1);
  }

  return (*(v8 + 8))(v5, v7);
}

id sub_2612EA888(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_26129B4AC();
  sub_26124AA44(v6, v5);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_26124D0CC(v5);
  }

  else
  {
    v9 = sub_2613A122C();
    v10 = sub_2613A1D9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      v13 = sub_26139F74C();
      v15 = sub_26124C11C(v13, v14, &v18);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_261243000, v9, v10, "[%s] Connection was invalidated", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x266701350](v12, -1, -1);
      MEMORY[0x266701350](v11, -1, -1);
    }

    (*(v8 + 8))(v5, v7);
  }

  [a1 setExportedObject_];
  return [a1 setRemoteObjectInterface_];
}

uint64_t sub_2612EAAA8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2612EAE10(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = (v3 + 24 * a1);
    v7 = v6[4];
    v8 = v6[5];
    v6 += 4;
    v9 = v5 - 1;
    v10 = v6[2];
    memmove(v6, v6 + 3, 24 * (v5 - 1 - a1));
    *(v3 + 16) = v9;
    *v1 = v3;
    return v7;
  }

  return result;
}

id sub_2612EAB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v9[0] = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v9 error:v10];
  if (v4)
  {
    v5 = v10[0];
  }

  else
  {
    v6 = v10[0];
    sub_26139EE7C();

    swift_willThrow();
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

id Daemon.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_2612EACF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FF90, &qword_2613AB1F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2612EAE24(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v37 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = sub_26129B4AC();
  sub_26124AA44(v14, v13);
  v15 = sub_2613A124C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v13, 1, v15) == 1)
  {
    sub_26124D0CC(v13);
  }

  else
  {
    v40 = a1;
    v41 = v17;

    v18 = sub_2613A122C();
    v19 = sub_2613A1D9C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v39 = v16;
      v21 = v20;
      v22 = swift_slowAlloc();
      v38 = v14;
      v23 = v22;
      v42 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_26124C11C(v40, a2, &v42);
      _os_log_impl(&dword_261243000, v18, v19, "========[ Merchantd shutdown started: %s ]==========", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      v24 = v23;
      v14 = v38;
      MEMORY[0x266701350](v24, -1, -1);
      v25 = v21;
      v16 = v39;
      MEMORY[0x266701350](v25, -1, -1);
    }

    (*(v16 + 8))(v13, v15);
    v17 = v41;
  }

  v26 = *sub_2612EEA04();

  v27 = sub_2612EEDA8();
  sub_2612EEAB0();
  if (v27 >= 1)
  {
    if (v27 * 0.1 <= 0.5)
    {
      v28 = v27 * 0.1;
    }

    else
    {
      v28 = 0.5;
    }

    sub_26124AA44(v14, v11);
    if (v17(v11, 1, v15) == 1)
    {
      sub_26124D0CC(v11);
    }

    else
    {
      v29 = sub_2613A122C();
      v30 = sub_2613A1D9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = v14;
        v32 = swift_slowAlloc();
        *v32 = 134217984;
        *(v32 + 4) = v28;
        _os_log_impl(&dword_261243000, v29, v30, "Sleeping for [%f] before shutdown", v32, 0xCu);
        v33 = v32;
        v14 = v31;
        MEMORY[0x266701350](v33, -1, -1);
      }

      (*(v16 + 8))(v11, v15);
    }

    [objc_opt_self() sleepForTimeInterval_];
  }

  sub_26124AA44(v14, v8);
  if (v17(v8, 1, v15) == 1)
  {
    sub_26124D0CC(v8);
    _exit(0);
  }

  v34 = sub_2613A122C();
  v35 = sub_2613A1D9C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_261243000, v34, v35, "========[ Merchantd is exiting ]==========", v36, 2u);
    MEMORY[0x266701350](v36, -1, -1);
  }

  (*(v16 + 8))(v8, v15);
  _exit(0);
}

id sub_2612EB254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  sub_261259BE0(0, &qword_27FE9FF80, 0x277CC1E90);
  v17 = sub_2612EAB4C(a1, a2, a3, a4);
  if (!v4)
  {
    v5 = v17;
    v43 = 0;
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      v19 = v18;
      v5 = v5;
      v20 = sub_26129B4AC();
      sub_26124AA44(v20, v16);
      v21 = sub_2613A124C();
      v22 = *(v21 - 8);
      if ((*(v22 + 48))(v16, 1, v21) == 1)
      {
        sub_26124D0CC(v16);
      }

      else
      {
        v26 = v5;
        v27 = sub_2613A122C();
        v28 = sub_2613A1D7C();

        if (os_log_type_enabled(v27, v28))
        {
          v42 = v28;
          v29 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v44 = v41;
          *v29 = 136315138;
          v30 = [v19 containingBundleRecord];
          if (v30)
          {

            v31 = 0;
            v32 = 0xE000000000000000;
          }

          else
          {
            v32 = 0x80000002613BB3B0;
            v31 = 0xD000000000000028;
          }

          v36 = sub_26124C11C(v31, v32, &v44);

          *(v29 + 4) = v36;
          _os_log_impl(&dword_261243000, v27, v42, "Application Extension Record%s", v29, 0xCu);
          v37 = v41;
          __swift_destroy_boxed_opaque_existential_0Tm(v41);
          MEMORY[0x266701350](v37, -1, -1);
          MEMORY[0x266701350](v29, -1, -1);
        }

        else
        {
        }

        (*(v22 + 8))(v16, v21);
      }

      v38 = [v19 containingBundleRecord];

      if (v38)
      {

        return v38;
      }
    }

    else
    {
      v23 = sub_26129B4AC();
      sub_26124AA44(v23, v14);
      v24 = sub_2613A124C();
      v25 = *(v24 - 8);
      if ((*(v25 + 48))(v14, 1, v24) == 1)
      {
        sub_26124D0CC(v14);
      }

      else
      {
        v33 = sub_2613A122C();
        v34 = sub_2613A1D7C();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_261243000, v33, v34, "Application Record", v35, 2u);
          MEMORY[0x266701350](v35, -1, -1);
        }

        (*(v25 + 8))(v14, v24);
      }
    }
  }

  return v5;
}

uint64_t sub_2612EB678(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v42 - v7;
  [a1 auditToken];
  v17 = sub_2612EB254(aBlock, v44, v45, v46);
  v18 = [v17 bundleIdentifier];
  if (!v18)
  {

    v9 = sub_26129B4AC();
    sub_26124AA44(v9, v6);
    v10 = sub_2613A124C();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v6, 1, v10) != 1)
    {
      v13 = sub_2613A122C();
      v14 = sub_2613A1D8C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_261243000, v13, v14, "Unable to get bundle ID", v15, 2u);
        MEMORY[0x266701350](v15, -1, -1);
      }

      (*(v11 + 8))(v6, v10);
      return 0;
    }

    v12 = v6;
    goto LABEL_4;
  }

  v19 = v18;
  v20 = sub_2613A18CC();
  v22 = v21;

  v23 = [v17 teamIdentifier];
  if (!v23)
  {

    v36 = sub_26129B4AC();
    sub_26124AA44(v36, v8);
    v37 = sub_2613A124C();
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v8, 1, v37) != 1)
    {
      v39 = sub_2613A122C();
      v40 = sub_2613A1D8C();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_261243000, v39, v40, "Unable to read team identifier", v41, 2u);
        MEMORY[0x266701350](v41, -1, -1);
      }

      (*(v38 + 8))(v8, v37);
      return 0;
    }

    v12 = v8;
LABEL_4:
    sub_26124D0CC(v12);
    return 0;
  }

  v24 = v23;
  v25 = sub_2613A18CC();
  v27 = v26;

  type metadata accessor for IdentityReaderService();
  v28 = a1;
  v29 = sub_261349FB4(v28, v20, v22, v25, v27);
  v30 = [objc_opt_self() interfaceWithProtocol_];
  [v28 setExportedInterface_];

  [v28 setExportedObject_];
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = v28;
  v47 = sub_2612EC03C;
  v48 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v45 = sub_261276D54;
  v46 = &block_descriptor_23;
  v32 = _Block_copy(&aBlock);
  v33 = v28;
  v34 = v29;

  [v33 setInvalidationHandler_];
  _Block_release(v32);
  v47 = sub_2612EA480;
  v48 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v45 = sub_261276D54;
  v46 = &block_descriptor_26;
  v35 = _Block_copy(&aBlock);
  [v33 setInterruptionHandler_];
  _Block_release(v35);
  [v33 resume];

  return 1;
}

uint64_t sub_2612EBB9C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - v4;
  [a1 auditToken];
  v13 = sub_2612EB254(aBlock, v28, v29, v30);
  v14 = [v13 bundleIdentifier];
  if (v14)
  {
    v15 = v14;
    v16 = sub_2613A18CC();
    v18 = v17;

    type metadata accessor for DiscoveryService();
    v19 = a1;
    v20 = sub_26125D4D8(v19, v16, v18);
    v21 = [objc_opt_self() interfaceWithProtocol_];
    [v19 setExportedInterface_];

    [v19 setExportedObject_];
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    v31 = sub_2612EC044;
    v32 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_261276D54;
    v30 = &block_descriptor_32;
    v23 = _Block_copy(&aBlock);
    v24 = v19;

    [v24 setInvalidationHandler_];
    _Block_release(v23);
    v31 = sub_2612EA68C;
    v32 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_261276D54;
    v30 = &block_descriptor_35;
    v25 = _Block_copy(&aBlock);
    [v24 setInterruptionHandler_];
    _Block_release(v25);
    [v24 resume];

    return 1;
  }

  else
  {

    v6 = sub_26129B4AC();
    sub_26124AA44(v6, v5);
    v7 = sub_2613A124C();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v5, 1, v7) == 1)
    {
      sub_26124D0CC(v5);
    }

    else
    {
      v9 = sub_2613A122C();
      v10 = sub_2613A1D8C();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_261243000, v9, v10, "Unable to get bundle ID", v11, 2u);
        MEMORY[0x266701350](v11, -1, -1);
      }

      (*(v8 + 8))(v5, v7);
    }

    return 0;
  }
}

uint64_t sub_2612EBF74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2612EBFBC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void static ServiceCleanupSystemTask.register(seIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  v36 = sub_26129B7C4();
  sub_26125A870(v36, v12, &qword_27FE9F560, &qword_2613A3CB0);
  v13 = sub_2613A124C();
  v14 = *(v13 - 8);
  v35 = *(v14 + 48);
  if (v35(v12, 1, v13) == 1)
  {
    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v15 = sub_2613A122C();
    v16 = sub_2613A1D9C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v34 = v10;
      v18 = a1;
      v19 = v3;
      v20 = v14;
      v21 = v17;
      *v17 = 0;
      _os_log_impl(&dword_261243000, v15, v16, "[cleanup] Registering service", v17, 2u);
      v22 = v21;
      v14 = v20;
      v3 = v19;
      a1 = v18;
      v10 = v34;
      MEMORY[0x266701350](v22, -1, -1);
    }

    (*(v14 + 8))(v12, v13);
  }

  v23 = [objc_opt_self() sharedScheduler];
  v24 = sub_2613A189C();
  v25 = *sub_2612A4CCC();
  v26 = swift_allocObject();
  v26[2] = v3;
  v26[3] = a1;
  v26[4] = a2;
  aBlock[4] = sub_2612EC7FC;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2612ECD5C;
  aBlock[3] = &block_descriptor_6;
  v27 = _Block_copy(aBlock);

  v28 = v25;

  v29 = [v23 registerForTaskWithIdentifier:v24 usingQueue:v28 launchHandler:v27];
  _Block_release(v27);

  if (v29)
  {
  }

  else
  {
    sub_26125A870(v36, v10, &qword_27FE9F560, &qword_2613A3CB0);
    if (v35(v10, 1, v13) == 1)
    {

      sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v30 = sub_2613A122C();
      v31 = sub_2613A1D9C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_261243000, v30, v31, "[cleanup] Cleanup service is already registered", v32, 2u);
        MEMORY[0x266701350](v32, -1, -1);
      }

      (*(v14 + 8))(v10, v13);
    }
  }
}

uint64_t sub_2612EC4AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v31 - v14;
  v16 = sub_26129B7C4();
  sub_26125A870(v16, v15, &qword_27FE9F560, &qword_2613A3CB0);
  v17 = sub_2613A124C();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v19 = sub_2613A122C();
    v20 = sub_2613A1D9C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v32 = a2;
      v22 = a3;
      v23 = v21;
      *v21 = 0;
      _os_log_impl(&dword_261243000, v19, v20, "[cleanup] Executing cleanup", v21, 2u);
      v24 = v23;
      a3 = v22;
      a2 = v32;
      MEMORY[0x266701350](v24, -1, -1);
    }

    (*(v18 + 8))(v15, v17);
  }

  v25 = sub_2613A1C1C();
  (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = a2;
  v26[5] = a3;
  v26[6] = a4;
  v26[7] = a1;

  v27 = a1;
  v28 = sub_261266800(0, 0, v11, &unk_2613AB250, v26);
  aBlock[4] = sub_2612ECED8;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261276D54;
  aBlock[3] = &block_descriptor_9;
  v29 = _Block_copy(aBlock);

  [v27 setExpirationHandler_];
  _Block_release(v29);
}

uint64_t sub_2612EC808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a7;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v7[3] = swift_task_alloc();
  v11 = swift_task_alloc();
  v7[4] = v11;
  *v11 = v7;
  v11[1] = sub_2612EC8E0;

  return sub_2612ECEE0(a5, a6);
}

uint64_t sub_2612EC8E0()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2612EC9DC);
}

uint64_t sub_2612EC9DC()
{
  if (sub_2613A1CDC())
  {
    sub_2612EE508(*(v0 + 16));
  }

  else
  {
    v1 = *(v0 + 24);
    v2 = sub_26129B7C4();
    sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
    v3 = sub_2613A124C();
    v4 = *(v3 - 8);
    if ((*(v4 + 48))(v1, 1, v3) == 1)
    {
      sub_26124C718(*(v0 + 24), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v5 = *(v0 + 24);
      v6 = sub_2613A122C();
      v7 = sub_2613A1D9C();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_261243000, v6, v7, "[cleanup] BG task successfully completed", v8, 2u);
        MEMORY[0x266701350](v8, -1, -1);
      }

      v9 = *(v0 + 24);

      (*(v4 + 8))(v9, v3);
    }

    [*(v0 + 16) setTaskCompleted];
  }

  v10 = *(v0 + 24);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2612ECB98()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_26129B7C4();
  sub_26125A870(v4, v3, &qword_27FE9F560, &qword_2613A3CB0);
  v5 = sub_2613A124C();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_26124C718(v3, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v7 = sub_2613A122C();
    v8 = sub_2613A1D9C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_261243000, v7, v8, "[cleanup] Terminating cleanup service on expirationHandler", v9, 2u);
      MEMORY[0x266701350](v9, -1, -1);
    }

    (*(v6 + 8))(v3, v5);
  }

  return sub_2613A1C9C();
}

void sub_2612ECD5C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2612ECE30()
{
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261262AA4;

  return sub_2612EC808(v5, v6, v7, v8, v2, v3, v4);
}

uint64_t sub_2612ECEE0(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_2613A1BFC();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612ED014);
}

uint64_t sub_2612ED014()
{
  v69 = v0;
  v1 = sub_2612F9F2C();
  *(v0 + 152) = v1;
  v2 = *v1;

  v3 = sub_2612FB320();

  if ((v3 & 1) == 0)
  {
    v17 = *(v0 + 120);
    v18 = sub_26129B7C4();
    sub_26125A870(v18, v17, &qword_27FE9F560, &qword_2613A3CB0);
    v19 = sub_2613A124C();
    v20 = *(v19 - 8);
    v21 = (*(v20 + 48))(v17, 1, v19);
    v22 = *(v0 + 120);
    if (v21 == 1)
    {
LABEL_11:
      sub_26124C718(v22, &qword_27FE9F560, &qword_2613A3CB0);
      goto LABEL_18;
    }

    v23 = *(v0 + 120);
    v24 = sub_2613A122C();
    v25 = sub_2613A1D9C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_261243000, v24, v25, "[cleanup] Not needed", v26, 2u);
      MEMORY[0x266701350](v26, -1, -1);
    }

    v27 = *(v0 + 120);
LABEL_17:

    (*(v20 + 8))(v27, v19);
    goto LABEL_18;
  }

  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  type metadata accessor for CleanupTaskPTS();

  v6 = sub_261333FF0(v5, v4);
  *(v0 + 160) = v6;
  if (!v6)
  {
    v28 = *(v0 + 128);
    v29 = sub_26129B7C4();
    sub_26125A870(v29, v28, &qword_27FE9F560, &qword_2613A3CB0);
    v19 = sub_2613A124C();
    v20 = *(v19 - 8);
    v30 = (*(v20 + 48))(v28, 1, v19);
    v22 = *(v0 + 128);
    if (v30 == 1)
    {
      goto LABEL_11;
    }

    v36 = *(v0 + 128);
    v24 = sub_2613A122C();
    v37 = sub_2613A1D8C();
    if (os_log_type_enabled(v24, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_261243000, v24, v37, "[cleanup] Could not create cleanup task", v38, 2u);
      MEMORY[0x266701350](v38, -1, -1);
    }

    v27 = *(v0 + 128);
    goto LABEL_17;
  }

  v7 = *v1;

  v8 = sub_2612FACA0();
  *(v0 + 168) = v8;

  v10 = *(v8 + 2);
  *(v0 + 176) = v10;
  if (v10)
  {
    *(v0 + 184) = 0;
    v11 = *(v0 + 168);
    if (*(v11 + 16))
    {
      v13 = *(v11 + 32);
      v12 = *(v11 + 40);
      *(v0 + 192) = v12;
      v14 = *(v11 + 48);
      v15 = *(v11 + 56);
      *(v0 + 200) = v15;
      v16 = *(v11 + 64);
      *(v0 + 16) = v13;
      *(v0 + 24) = v12;
      *(v0 + 32) = v14;
      *(v0 + 40) = v15;
      *(v0 + 48) = v16;

      sub_2613A1CEC();
      *(v0 + 208) = 0;
      v47 = *(v0 + 144);
      v48 = sub_26129B7C4();
      sub_26125A870(v48, v47, &qword_27FE9F560, &qword_2613A3CB0);
      v49 = sub_2613A124C();
      v50 = *(v49 - 8);
      if ((*(v50 + 48))(v47, 1, v49) == 1)
      {
        sub_26124C718(*(v0 + 144), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v55 = sub_2613A122C();
        v56 = sub_2613A1D9C();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v68 = v67;
          *v57 = 136380931;

          v58 = sub_26124C11C(v13, v12, &v68);

          *(v57 + 4) = v58;
          *(v57 + 12) = 1024;

          *(v57 + 14) = v16;

          _os_log_impl(&dword_261243000, v55, v56, "[cleanup] Performing TTP cleanup for [%{private}s], installed: [ %{BOOL}d ]", v57, 0x12u);
          __swift_destroy_boxed_opaque_existential_0Tm(v67);
          MEMORY[0x266701350](v67, -1, -1);
          MEMORY[0x266701350](v57, -1, -1);
        }

        else
        {
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        (*(v50 + 8))(*(v0 + 144), v49);
      }

      v65 = *(v0 + 160);
      v66 = swift_task_alloc();
      *(v0 + 216) = v66;
      *v66 = v0;
      v66[1] = sub_2612EDB3C;

      return sub_261334284(v0 + 16);
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  v31 = *(v0 + 168);
  v32 = *(v0 + 152);

  v33 = *v32;

  v34 = sub_2612FB320();

  if (v34)
  {
    v35 = *(v0 + 160);
  }

  else
  {
    v51 = *(v0 + 136);
    v52 = sub_26129B7C4();
    sub_26125A870(v52, v51, &qword_27FE9F560, &qword_2613A3CB0);
    v53 = sub_2613A124C();
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v51, 1, v53) == 1)
    {
      sub_26124C718(*(v0 + 136), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v59 = *(v0 + 136);
      v60 = sub_2613A122C();
      v61 = sub_2613A1D9C();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_261243000, v60, v61, "No more apps detected, cleaning up TTP contents", v62, 2u);
        MEMORY[0x266701350](v62, -1, -1);
      }

      v63 = *(v0 + 136);

      (*(v54 + 8))(v63, v53);
    }

    v64 = *(v0 + 160);
    sub_261334F5C();
  }

LABEL_18:
  v40 = *(v0 + 136);
  v39 = *(v0 + 144);
  v42 = *(v0 + 120);
  v41 = *(v0 + 128);
  v44 = *(v0 + 104);
  v43 = *(v0 + 112);
  v45 = *(v0 + 96);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_2612EDB3C()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2612EDC70);
}

void sub_2612EDC70()
{
  v77 = v0;
  v1 = *(v0 + 184) + 1;
  if (v1 == *(v0 + 176))
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 152);

    v4 = *v3;

    v5 = sub_2612FB320();

    if (v5)
    {
      v6 = *(v0 + 160);
    }

    else
    {
      v25 = *(v0 + 136);
      v26 = sub_26129B7C4();
      sub_26125A870(v26, v25, &qword_27FE9F560, &qword_2613A3CB0);
      v27 = sub_2613A124C();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v25, 1, v27) == 1)
      {
        sub_26124C718(*(v0 + 136), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v39 = *(v0 + 136);
        v40 = sub_2613A122C();
        v41 = sub_2613A1D9C();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_261243000, v40, v41, "No more apps detected, cleaning up TTP contents", v42, 2u);
          MEMORY[0x266701350](v42, -1, -1);
        }

        v43 = *(v0 + 136);

        (*(v28 + 8))(v43, v27);
      }

      v44 = *(v0 + 160);
      sub_261334F5C();
    }

LABEL_35:
    v68 = *(v0 + 136);
    v67 = *(v0 + 144);
    v70 = *(v0 + 120);
    v69 = *(v0 + 128);
    v72 = *(v0 + 104);
    v71 = *(v0 + 112);
    v73 = *(v0 + 96);

    v74 = *(v0 + 8);

    v74();
    return;
  }

  v7 = *(v0 + 208);
  *(v0 + 184) = v1;
  v8 = *(v0 + 168);
  if (v1 >= *(v8 + 16))
  {
    __break(1u);
    return;
  }

  v9 = v8 + 40 * v1;
  v11 = *(v9 + 32);
  v10 = *(v9 + 40);
  *(v0 + 192) = v10;
  v12 = *(v9 + 48);
  v13 = *(v9 + 56);
  *(v0 + 200) = v13;
  v14 = *(v9 + 64);
  *(v0 + 16) = v11;
  *(v0 + 24) = v10;
  *(v0 + 32) = v12;
  *(v0 + 40) = v13;
  *(v0 + 48) = v14;

  sub_2613A1CEC();
  *(v0 + 208) = v7;
  if (v7)
  {
    v15 = *(v0 + 168);
    v16 = *(v0 + 96);
    v17 = *(v0 + 80);

    *(v0 + 56) = v7;
    v18 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
    if (swift_dynamicCast())
    {
      v19 = *(v0 + 112);

      v20 = sub_26129B7C4();
      sub_26125A870(v20, v19, &qword_27FE9F560, &qword_2613A3CB0);
      v21 = sub_2613A124C();
      v22 = *(v21 - 8);
      if ((*(v22 + 48))(v19, 1, v21) == 1)
      {
        v23 = *(v0 + 160);
        v24 = *(v0 + 112);

        sub_26124C718(v24, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v49 = *(v0 + 112);
        v50 = sub_2613A122C();
        v51 = sub_2613A1D8C();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_261243000, v50, v51, "[cleanup] Cleanup service task was cancelled!", v52, 2u);
          MEMORY[0x266701350](v52, -1, -1);
        }

        v53 = *(v0 + 160);
        v54 = *(v0 + 112);

        (*(v22 + 8))(v54, v21);
      }

      (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    }

    else
    {
      v33 = *(v0 + 104);

      v34 = sub_26129B7C4();
      sub_26125A870(v34, v33, &qword_27FE9F560, &qword_2613A3CB0);
      v35 = sub_2613A124C();
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v33, 1, v35) == 1)
      {
        v37 = *(v0 + 160);
        v38 = *(v0 + 104);

        sub_26124C718(v38, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v55 = *(v0 + 104);
        v56 = v7;
        v57 = sub_2613A122C();
        v58 = sub_2613A1D8C();

        v59 = os_log_type_enabled(v57, v58);
        v60 = *(v0 + 160);
        if (v59)
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          *v61 = 138412290;
          v63 = v7;
          v64 = _swift_stdlib_bridgeErrorToNSError();
          *(v61 + 4) = v64;
          *v62 = v64;
          _os_log_impl(&dword_261243000, v57, v58, "[cleanup] Error while running service cleanup task. Error: [%@]", v61, 0xCu);
          sub_26124C718(v62, &qword_27FEA0410, &qword_2613AA780);
          MEMORY[0x266701350](v62, -1, -1);
          MEMORY[0x266701350](v61, -1, -1);
        }

        else
        {
        }

        (*(v36 + 8))(*(v0 + 104), v35);
      }
    }

    goto LABEL_35;
  }

  v29 = *(v0 + 144);
  v30 = sub_26129B7C4();
  sub_26125A870(v30, v29, &qword_27FE9F560, &qword_2613A3CB0);
  v31 = sub_2613A124C();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v29, 1, v31) == 1)
  {
    sub_26124C718(*(v0 + 144), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v45 = sub_2613A122C();
    v46 = sub_2613A1D9C();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v76 = v75;
      *v47 = 136380931;

      v48 = sub_26124C11C(v11, v10, &v76);

      *(v47 + 4) = v48;
      *(v47 + 12) = 1024;

      *(v47 + 14) = v14;

      _os_log_impl(&dword_261243000, v45, v46, "[cleanup] Performing TTP cleanup for [%{private}s], installed: [ %{BOOL}d ]", v47, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v75);
      MEMORY[0x266701350](v75, -1, -1);
      MEMORY[0x266701350](v47, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    (*(v32 + 8))(*(v0 + 144), v31);
  }

  v65 = *(v0 + 160);
  v66 = swift_task_alloc();
  *(v0 + 216) = v66;
  *v66 = v0;
  v66[1] = sub_2612EDB3C;

  sub_261334284(v0 + 16);
}

void sub_2612EE508(void *a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v32 - v7;
  v9 = sub_26129B7C4();
  sub_26125A870(v9, v8, &qword_27FE9F560, &qword_2613A3CB0);
  v10 = sub_2613A124C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) == 1)
  {
    sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v13 = sub_2613A122C();
    v14 = sub_2613A1D9C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v32[0] = v11;
      v16 = a1;
      v17 = v15;
      *v15 = 0;
      _os_log_impl(&dword_261243000, v13, v14, "[cleanup] Re-scheduled task", v15, 2u);
      v18 = v17;
      a1 = v16;
      v11 = v32[0];
      MEMORY[0x266701350](v18, -1, -1);
    }

    (*(v11 + 8))(v8, v10);
  }

  v33[0] = 0;
  if ([a1 setTaskExpiredWithRetryAfter:v33 error:3600.0])
  {
    v19 = *MEMORY[0x277D85DE8];

    MEMORY[0x2821F9840]();
  }

  else
  {
    v32[0] = v33[0];
    v20 = v33[0];
    v21 = sub_26139EE7C();

    swift_willThrow();
    sub_26125A870(v9, v6, &qword_27FE9F560, &qword_2613A3CB0);
    if (v12(v6, 1, v10) == 1)
    {
      sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v22 = v21;
      v23 = sub_2613A122C();
      v24 = sub_2613A1D8C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = a1;
        v27 = swift_slowAlloc();
        *v25 = 138412290;
        v28 = v21;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 4) = v29;
        *v27 = v29;
        _os_log_impl(&dword_261243000, v23, v24, "[cleanup] Completing task due to re-schedule error [%@]", v25, 0xCu);
        sub_26124C718(v27, &qword_27FEA0410, &qword_2613AA780);
        v30 = v27;
        a1 = v26;
        MEMORY[0x266701350](v30, -1, -1);
        MEMORY[0x266701350](v25, -1, -1);
      }

      (*(v11 + 8))(v6, v10);
    }

    [a1 setTaskCompleted];

    v31 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_2612EE928()
{
  type metadata accessor for ShutdownObservable();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FF98, &unk_2613AB270);
  result = swift_allocObject();
  v2 = MEMORY[0x277D84F98];
  *(result + 24) = 0;
  *(result + 16) = v2;
  *(v0 + 16) = result;
  *(v0 + 24) = 0;
  qword_281451ED0 = v0;
  return result;
}

uint64_t sub_2612EE998()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FF98, &unk_2613AB270);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = MEMORY[0x277D84F98];
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  return v0;
}

uint64_t *sub_2612EEA04()
{
  if (qword_281451F48 != -1)
  {
    swift_once();
  }

  return &qword_281451ED0;
}

void sub_2612EEA54(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_2612EF100((v3 + 16), a1);
  os_unfair_lock_unlock((v3 + 24));
}

void sub_2612EEAB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  if (*(v0 + 24))
  {
    v8 = sub_26129B4AC();
    sub_26124AA44(v8, v5);
    v9 = sub_2613A124C();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v5, 1, v9) == 1)
    {
      sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v15 = sub_2613A122C();
      v16 = sub_2613A1D8C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_261243000, v15, v16, "Shutdown called multiple times!", v17, 2u);
        MEMORY[0x266701350](v17, -1, -1);
      }

      (*(v10 + 8))(v5, v9);
    }
  }

  else
  {
    *(v0 + 24) = 1;
    v11 = sub_26129B4AC();
    sub_26124AA44(v11, v7);
    v12 = sub_2613A124C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v7, 1, v12) == 1)
    {
      sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
      v14 = *(v0 + 16);
    }

    else
    {
      v18 = v0;
      v19 = sub_2613A122C();
      v20 = sub_2613A1D9C();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_261243000, v19, v20, "Notifying shutdown observers", v21, 2u);
        MEMORY[0x266701350](v21, -1, -1);
      }

      (*(v13 + 8))(v7, v12);
      v14 = *(v18 + 16);
    }

    os_unfair_lock_lock((v14 + 24));
    sub_2612EEE44((v14 + 16));
    os_unfair_lock_unlock((v14 + 24));
  }
}

uint64_t sub_2612EEDA8()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();

  os_unfair_lock_lock((v1 + 24));
  sub_2612EF1FC((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));

  return v3;
}

uint64_t sub_2612EEE44(uint64_t *a1)
{
  v32 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FFA0, &qword_2613AB2E8);
  v2 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v32 - v3;
  v4 = *a1;
  v5 = *a1 + 64;
  v6 = 1 << *(*a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(*a1 + 64);
  v9 = (v6 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  v34 = v4;
  v35 = v4;
  while (v8)
  {
LABEL_11:
    v13 = __clz(__rbit64(v8)) | (v11 << 6);
    v14 = v34;
    v15 = *(v34 + 48);
    v16 = sub_26139F13C();
    v17 = *(v16 - 8);
    v18 = v17;
    v19 = *(v17 + 72);
    v20 = v15 + v19 * v13;
    v21 = v37;
    (*(v17 + 16))(v37, v20, v16);
    v22 = *(v33 + 48);
    v36 = *(*(v14 + 56) + 16 * v13);
    *(v21 + v22) = v36;
    v23 = swift_retain_n();
    (v36)(v23);
    v24 = sub_26128A6E4(v21);
    if (v25)
    {
      v26 = v24;
      *&v36 = v18;
      v27 = v32;
      v28 = *v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *v27;
      v38 = *v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2612EFBCC();
        v27 = v32;
        v30 = v38;
      }

      (*(v36 + 8))(*(v30 + 48) + v26 * v19, v16);
      v31 = *(*(v30 + 56) + 16 * v26 + 8);

      sub_2612EF628(v26, v30);

      v35 = v30;
      *v27 = v30;
    }

    else
    {
    }

    v8 &= v8 - 1;
    result = sub_26124C718(v37, &qword_27FE9FFA0, &qword_2613AB2E8);
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2612EF100@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  sub_26139F12C();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  v8 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a1;
  result = sub_2612EF930(sub_2612B45A0, v7, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v11;
  return result;
}

uint64_t sub_2612EF1B0()
{

  swift_getAtKeyPath();

  return v1;
}

uint64_t sub_2612EF1FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2612EF264(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_26139F13C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FFA8, qword_2613AB2F0);
  v42 = a2;
  result = sub_2613A223C();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v38 = v3;
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
    v39 = (v7 + 16);
    v40 = v7;
    v43 = (v7 + 32);
    v21 = result + 64;
    v41 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v42)
      {
        (*v43)(v46, v28, v47);
        v44 = *(*(v11 + 56) + 16 * v26);
      }

      else
      {
        (*v39)(v46, v28, v47);
        v44 = *(*(v11 + 56) + 16 * v26);
      }

      v29 = *(v14 + 40);
      sub_2612EFE4C(&qword_281451E80);
      result = sub_2613A182C();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v40;
        v11 = v41;
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
      v7 = v40;
      v11 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v43)(*(v14 + 48) + v45 * v22, v46, v47);
      *(*(v14 + 56) + 16 * v22) = v44;
      ++*(v14 + 16);
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

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v38;
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

unint64_t sub_2612EF628(int64_t a1, uint64_t a2)
{
  v43 = sub_26139F13C();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_2613A205C();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_2612EFE4C(&qword_281451E80);
      v26 = sub_2613A182C();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_2612EF930(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = a1;
  v9 = sub_26139F13C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_26128A6E4(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_2612EFBCC();
      goto LABEL_9;
    }

    sub_2612EF264(v19, a4 & 1);
    v22 = *v5;
    v23 = sub_26128A6E4(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_2613A249C();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v31;
  v26 = *v5;
  if (v20)
  {
    v27 = (v26[7] + 16 * v16);
    v28 = v27[1];
    *v27 = v31;
    v27[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return sub_2612EFB0C(v16, v13, v25, a2, v26);
  }
}

uint64_t sub_2612EFB0C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_26139F13C();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

void *sub_2612EFBCC()
{
  v1 = v0;
  v31 = sub_26139F13C();
  v33 = *(v31 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FFA8, qword_2613AB2F0);
  v4 = *v0;
  v5 = sub_2613A222C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v29 = v33 + 16;
    v27 = v4 + 64;
    for (i = v33 + 32; v13; result = )
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = v33;
      v20 = *(v33 + 72) * v18;
      v21 = v30;
      v22 = v31;
      (*(v33 + 16))(v30, *(v4 + 48) + v20, v31);
      v18 *= 16;
      v23 = v32;
      v24 = *(v32 + 48);
      v25 = *(v19 + 32);
      v34 = *(*(v4 + 56) + v18);
      v25(v24 + v20, v21, v22);
      *(*(v23 + 56) + v18) = v34;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v6 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
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

uint64_t sub_2612EFE4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_26139F13C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2612EFE90(uint64_t a1, char a2)
{
  *(v3 + 57) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  v4 = sub_26139EC4C();
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530) - 8) + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  v8 = sub_26139EF7C();
  *(v3 + 112) = v8;
  v9 = *(v8 - 8);
  *(v3 + 120) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612EFFF4);
}

uint64_t sub_2612EFFF4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 57);
  v5 = swift_allocBox();
  v7 = v6;
  sub_261290E6C(v4);
  sub_26128FAFC(51, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26124C718(*(v0 + 104), &qword_27FE9F220, qword_2613A5530);
  }

  else
  {
    v8 = *(v0 + 136);
    v9 = *(v0 + 112);
    v10 = *(v0 + 120);
    (*(v10 + 32))(v8, *(v0 + 104), v9);
    (*(v10 + 40))(v7, v8, v9);
  }

  v11 = *(v0 + 120);
  v12 = *(v0 + 128);
  v13 = *(v0 + 112);
  v14 = *(v0 + 96);
  v15 = *(v0 + 72);
  *(v0 + 144) = v5;
  (*(v11 + 16))(v12, v7, v13);
  sub_26139EBFC();
  sub_26139EBBC();
  v16 = swift_task_alloc();
  *(v0 + 152) = v16;
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = v5;
  v17 = *(MEMORY[0x277D859E0] + 4);
  v18 = swift_task_alloc();
  *(v0 + 160) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3C8, &unk_2613A4850);
  *v18 = v0;
  v18[1] = sub_2612F0214;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD00000000000001FLL, 0x80000002613BBD20, sub_2612F0664, v16, v19);
}

uint64_t sub_2612F0214()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2612F032C);
}

uint64_t sub_2612F032C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v10 = *(v0 + 32);
  v11 = *(v0 + 16);
  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

  *v5 = v11;
  *(v5 + 16) = v10;
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2612F0414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[1] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FFD0, "<F");
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - v10;
  v12 = sub_26139EC4C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a3, v12);
  (*(v8 + 16))(v11, a1, v7);
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  (*(v8 + 32))(v18 + v17, v11, v7);
  *(v18 + ((v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;

  sub_2612F1A60(v16, v18, &unk_2873BB868, sub_2612F3B70, sub_2612F3CE4, &block_descriptor_22);

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_2612F0670(uint64_t a1, uint64_t a2)
{
  v4 = sub_26139EF7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  v16 = *a1;
  v17 = *(a1 + 8);
  v19 = *(a1 + 16);
  v18 = *(a1 + 24);
  v20 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v51 = *(a1 + 8);
    v52 = v18;
    v50 = v16;

    v47 = sub_26129B97C();
    sub_26124AA44(v47, v15);
    v21 = sub_2613A124C();
    v48 = *(v21 - 8);
    v49 = v21;
    v46 = *(v48 + 48);
    if (v46(v15, 1) == 1)
    {
      sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
      v22 = v49;
    }

    else
    {
      v44 = v20;
      v45 = a2;

      v23 = sub_2613A122C();
      v24 = sub_2613A1D8C();

      v43 = v24;
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v53 = v42;
        *v25 = 136315138;
        v26 = swift_projectBox();
        v41 = v23;
        v27 = v26;
        swift_beginAccess();
        (*(v5 + 16))(v8, v27, v4);
        v28 = sub_26139EEAC();
        v30 = v29;
        (*(v5 + 8))(v8, v4);
        v31 = sub_26124C11C(v28, v30, &v53);

        *(v25 + 4) = v31;
        v23 = v41;
        _os_log_impl(&dword_261243000, v41, v43, "Issue with request: %s", v25, 0xCu);
        v32 = v42;
        __swift_destroy_boxed_opaque_existential_0Tm(v42);
        MEMORY[0x266701350](v32, -1, -1);
        MEMORY[0x266701350](v25, -1, -1);
      }

      v33 = v15;
      v22 = v49;
      (*(v48 + 8))(v33, v49);
      v20 = v44;
    }

    sub_26124AA44(v47, v13);
    if ((v46)(v13, 1, v22) == 1)
    {
      sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {

      v34 = sub_2613A122C();
      v35 = sub_2613A1D8C();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v53 = v37;
        *v36 = 136315394;

        v38 = sub_26124C11C(v51, v19, &v53);

        *(v36 + 4) = v38;
        *(v36 + 12) = 2080;

        v39 = sub_26124C11C(v52, v20, &v53);

        *(v36 + 14) = v39;
        _os_log_impl(&dword_261243000, v34, v35, "Error downloading configuration: %s - %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266701350](v37, -1, -1);
        MEMORY[0x266701350](v36, -1, -1);
      }

      (*(v48 + 8))(v13, v22);
    }

    v53 = v50;
    v54 = v51;
    v55 = v19;
    v56 = v52;
    v57 = v20;
    v58 = 1;
  }

  else
  {
    v53 = *a1;
    v54 = v17;
    v55 = v19;
    v56 = v18;
    v57 = v20;
    v58 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FFD0, "<F");
  return sub_2613A1BDC();
}

uint64_t sub_2612F0BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_26139EC4C();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v9 = sub_26139EF7C();
  v4[16] = v9;
  v10 = *(v9 - 8);
  v4[17] = v10;
  v11 = *(v10 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612F0D30);
}

uint64_t sub_2612F0D30()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[9];
  v5 = v0[10];
  sub_26139EF5C();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26124C718(v0[15], &qword_27FE9F220, qword_2613A5530);
    v6 = sub_26129425C();
    v28 = *v6;
    v8 = v6[1];
    v7 = v6[2];
    v10 = v6[3];
    v9 = v6[4];
    v12 = v0[18];
    v11 = v0[19];
    v14 = v0[14];
    v13 = v0[15];
    v15 = v0[8];

    *v15 = v28;
    *(v15 + 8) = v8;
    *(v15 + 16) = v7;
    *(v15 + 24) = v10;
    *(v15 + 32) = v9;
    *(v15 + 40) = 1;
    v16 = v0[1];

    return v16();
  }

  else
  {
    v19 = v0[18];
    v18 = v0[19];
    v20 = v0[16];
    v21 = v0[17];
    v22 = v0[14];
    v23 = v0[11];
    (*(v21 + 32))(v18, v0[15], v20);
    (*(v21 + 16))(v19, v18, v20);
    sub_26139EBFC();
    sub_26139EBBC();
    v24 = swift_task_alloc();
    v0[20] = v24;
    v24[2] = v23;
    v24[3] = v22;
    v24[4] = v18;
    v25 = *(MEMORY[0x277D859E0] + 4);
    v26 = swift_task_alloc();
    v0[21] = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3C0, &unk_2613A4840);
    *v26 = v0;
    v26[1] = sub_2612F0FBC;

    return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000012, 0x80000002613BBD40, sub_2612F14D0, v24, v27);
  }
}

uint64_t sub_2612F0FBC()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2612F10D4);
}

uint64_t sub_2612F10D4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v13 = *(v0 + 32);
  v14 = *(v0 + 16);
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  (*(v3 + 8))(v1, v2);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v9 = *(v0 + 112);
  v8 = *(v0 + 120);
  v10 = *(v0 + 64);

  *v10 = v14;
  *(v10 + 16) = v13;
  *(v10 + 32) = v4;
  *(v10 + 40) = v5;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2612F11C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a1;
  v29 = a2;
  v5 = sub_26139EF7C();
  v6 = *(v5 - 8);
  v28 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FFB0, "\bF");
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v25 = sub_26139EC4C();
  v14 = *(v25 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v25);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v26);
  (*(v10 + 16))(v13, v27, v9);
  v18 = a4;
  v19 = v5;
  (*(v6 + 16))(v8, v18, v5);
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = (v11 + *(v6 + 80) + v20) & ~*(v6 + 80);
  v22 = swift_allocObject();
  (*(v10 + 32))(v22 + v20, v13, v9);
  (*(v6 + 32))(v22 + v21, v24, v19);
  sub_2612F1A60(v17, v22, &unk_2873BB7F0, sub_2612F39D4, sub_2612F3AB4, &block_descriptor_7);

  return (*(v14 + 8))(v17, v25);
}

uint64_t sub_2612F14DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26139EF7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v44 - v16;
  v19 = *a1;
  v18 = *(a1 + 8);
  v21 = *(a1 + 16);
  v20 = *(a1 + 24);
  v22 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v51 = *a1;
    v52 = a2;
    v54 = v20;
    v55 = v18;

    v49 = sub_26129B97C();
    sub_26124AA44(v49, v17);
    v23 = sub_2613A124C();
    v50 = *(v23 - 8);
    v24 = *(v50 + 48);
    v53 = v23;
    if (v24(v17, 1) == 1)
    {
      sub_26124C718(v17, &qword_27FE9F560, &qword_2613A3CB0);
      v25 = v53;
    }

    else
    {
      (*(v7 + 16))(v10, a3, v6);
      v26 = sub_2613A122C();
      v48 = sub_2613A1D8C();
      if (os_log_type_enabled(v26, v48))
      {
        v27 = swift_slowAlloc();
        v46 = v24;
        v28 = v27;
        v47 = swift_slowAlloc();
        v56 = v47;
        *v28 = 136315138;
        v45 = v26;
        v44 = sub_26139EEAC();
        v30 = v29;
        (*(v7 + 8))(v10, v6);
        v31 = sub_26124C11C(v44, v30, &v56);

        v32 = v28;
        v33 = v45;
        v24 = v46;
        *(v32 + 1) = v31;
        v34 = v32;
        _os_log_impl(&dword_261243000, v33, v48, "Issue with request: %s", v32, 0xCu);
        v35 = v47;
        __swift_destroy_boxed_opaque_existential_0Tm(v47);
        MEMORY[0x266701350](v35, -1, -1);
        MEMORY[0x266701350](v34, -1, -1);
      }

      else
      {

        (*(v7 + 8))(v10, v6);
      }

      v25 = v53;
      (*(v50 + 8))(v17, v53);
    }

    sub_26124AA44(v49, v15);
    if ((v24)(v15, 1, v25) == 1)
    {
      sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {

      v36 = sub_2613A122C();
      v37 = sub_2613A1D8C();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v56 = v39;
        *v38 = 136315394;

        v40 = sub_26124C11C(v55, v21, &v56);

        *(v38 + 4) = v40;
        *(v38 + 12) = 2080;

        v41 = sub_26124C11C(v54, v22, &v56);

        *(v38 + 14) = v41;
        _os_log_impl(&dword_261243000, v36, v37, "Error downloading manifest: %s - %s", v38, 0x16u);
        swift_arrayDestroy();
        v42 = v39;
        v25 = v53;
        MEMORY[0x266701350](v42, -1, -1);
        MEMORY[0x266701350](v38, -1, -1);
      }

      (*(v50 + 8))(v15, v25);
    }

    v56 = v51;
    v57 = v55;
    v58 = v21;
    v59 = v54;
    v60 = v22;
    v61 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FFB0, "\bF");
  }

  else
  {
    v56 = *a1;
    v57 = v18;
    v58 = v21;
    v59 = v20;
    v60 = v22;
    v61 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FFB0, "\bF");
  }

  return sub_2613A1BDC();
}

id sub_2612F1A48()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result cancel];
  }

  return result;
}

void sub_2612F1A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v24 = a3;
  v25 = a4;
  v7 = v6;
  v10 = sub_26139EC4C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() sharedSession];
  v15 = sub_26139EBCC();
  v16 = swift_allocObject();
  swift_weakInit();
  (*(v11 + 16))(v13, a1, v10);
  v17 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v18 = swift_allocObject();
  v19 = v25;
  *(v18 + 2) = v16;
  *(v18 + 3) = v19;
  *(v18 + 4) = a2;
  (*(v11 + 32))(&v18[v17], v13, v10);
  aBlock[4] = v26;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2612A3BEC;
  aBlock[3] = v27;
  v20 = _Block_copy(aBlock);

  v21 = [v14 dataTaskWithRequest:v15 completionHandler:v20];
  _Block_release(v20);

  v22 = *(v7 + 16);
  *(v7 + 16) = v21;
  v23 = v21;

  [v23 resume];
}

void sub_2612F1CB0(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id *), uint64_t a7, uint64_t a8)
{
  v123 = a8;
  v124 = a1;
  v130 = a7;
  v131 = a6;
  v132 = a4;
  v126 = a3;
  v127 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v121 = &v120 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v122 = &v120 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v128 = &v120 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v120 - v20;
  MEMORY[0x28223BE20](v19);
  v125 = &v120 - v22;
  v23 = sub_26139F24C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v120 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v120 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FFB8, "DF");
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v120 - v33;
  v35 = sub_26139F26C();
  v129 = *(v35 - 8);
  v36 = *(v129 + 64);
  MEMORY[0x28223BE20](v35);
  v38 = &v120 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v40 = *(Strong + 16);
    *(Strong + 16) = 0;
  }

  v41 = v132;
  if (!v132)
  {
    v52 = v126;
    v53 = v127;
    if (!v126 || (objc_opt_self(), (v54 = swift_dynamicCastObjCClass()) == 0) || v53 >> 60 == 15)
    {
      v62 = sub_26129B97C();
      sub_26124AA44(v62, v12);
      v63 = sub_2613A124C();
      v64 = *(v63 - 8);
      if ((*(v64 + 48))(v12, 1, v63) == 1)
      {
        sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v86 = sub_2613A122C();
        v87 = sub_2613A1D8C();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&dword_261243000, v86, v87, "Execute download file - internalError - Channel failure, nil api service", v88, 2u);
          MEMORY[0x266701350](v88, -1, -1);
        }

        (*(v64 + 8))(v12, v63);
      }

      v89 = sub_261294250();
      v91 = v89[1];
      v90 = v89[2];
      v92 = v89[3];
      v93 = v89[4];
      LOBYTE(v134) = *v89;
      *&v135 = v91;
      *(&v135 + 1) = v90;
      *&v136 = v92;
      *(&v136 + 1) = v93;
      v137 = 1;

      v131(&v134);
      goto LABEL_52;
    }

    v55 = v54;
    type metadata accessor for APIServiceHelper();
    v56 = v52;
    v57 = v124;
    sub_26125C348(v124, v53);
    sub_2612947FC(v123, v57, v53, v55);
    if ([v55 statusCode] - 300 >= 0xFFFFFFFFFFFFFF9CLL)
    {
      sub_2612F3DF0();
      sub_26124B218(&type metadata for ProximityReaderConfiguration, &type metadata for ProximityReaderConfiguration, &v134);
      if (v134)
      {
        v135 = 0u;
        v136 = 0u;
        v137 = 0;

        v131(&v134);
        sub_26124A168(v57, v53);
        swift_bridgeObjectRelease_n();

        return;
      }

      v108 = sub_26129B97C();
      v109 = v121;
      sub_26124AA44(v108, v121);
      v110 = sub_2613A124C();
      v111 = *(v110 - 8);
      if ((*(v111 + 48))(v109, 1, v110) == 1)
      {
        sub_26124C718(v109, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v112 = sub_2613A122C();
        v113 = sub_2613A1D8C();
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          *v114 = 0;
          _os_log_impl(&dword_261243000, v112, v113, "Execute download file - internalError - no available content", v114, 2u);
          MEMORY[0x266701350](v114, -1, -1);
        }

        (*(v111 + 8))(v109, v110);
      }
    }

    else
    {
      v58 = sub_26129B97C();
      v59 = v122;
      sub_26124AA44(v58, v122);
      v60 = sub_2613A124C();
      v61 = *(v60 - 8);
      if ((*(v61 + 48))(v59, 1, v60) == 1)
      {
        sub_26124C718(v59, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v103 = v56;
        v104 = sub_2613A122C();
        v105 = sub_2613A1D8C();
        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          *v106 = 134217984;
          *(v106 + 4) = [v55 statusCode];

          _os_log_impl(&dword_261243000, v104, v105, "Execute download file - serverError - Invalid status from server: %ld", v106, 0xCu);
          v107 = v106;
          v57 = v124;
          MEMORY[0x266701350](v107, -1, -1);
        }

        else
        {

          v104 = v103;
        }

        (*(v61 + 8))(v122, v60);
      }

      sub_2612A43C8();
      sub_26124B218(&type metadata for APIErrorResponse, &type metadata for APIErrorResponse, &v134);
      if (v135)
      {
        sub_261294240(4, v134, v135, *(&v135 + 1), v136, &v134);
        v137 = 1;
LABEL_51:
        v131(&v134);
        sub_26124A168(v57, v53);

LABEL_52:
        sub_2612F3DB0(v134, v135, *(&v135 + 1), v136, *(&v136 + 1), v137);
        return;
      }
    }

    v115 = sub_26129425C();
    v117 = v115[1];
    v116 = v115[2];
    v118 = v115[3];
    v119 = v115[4];
    LOBYTE(v134) = *v115;
    *&v135 = v117;
    *(&v135 + 1) = v116;
    *&v136 = v118;
    *(&v136 + 1) = v119;
    v137 = 1;

    goto LABEL_51;
  }

  v134 = v132;
  v42 = v132;
  v43 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  v44 = swift_dynamicCast();
  v45 = v129;
  v46 = *(v129 + 56);
  if ((v44 & 1) == 0)
  {
    v46(v34, 1, 1, v35);
    sub_26124C718(v34, &qword_27FE9FFB8, "DF");
LABEL_18:
    v65 = sub_26129B97C();
    sub_26124AA44(v65, v21);
    v66 = sub_2613A124C();
    v67 = *(v66 - 8);
    v68 = *(v67 + 48);
    if (v68(v21, 1, v66) == 1)
    {
      sub_26124C718(v21, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v69 = sub_2613A122C();
      v70 = sub_2613A1D8C();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_261243000, v69, v70, "Execute download file - networkError - Server not reachable", v71, 2u);
        MEMORY[0x266701350](v71, -1, -1);
      }

      (*(v67 + 8))(v21, v66);
      v41 = v132;
    }

    v72 = v128;
    sub_26124AA44(v65, v128);
    if (v68(v72, 1, v66) == 1)
    {
      sub_26124C718(v72, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v73 = v41;
      v74 = sub_2613A122C();
      v75 = sub_2613A1D8C();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v76 = 138412290;
        v78 = v132;
        v79 = _swift_stdlib_bridgeErrorToNSError();
        *(v76 + 4) = v79;
        *v77 = v79;
        _os_log_impl(&dword_261243000, v74, v75, "Error processing request: %@", v76, 0xCu);
        sub_26124C718(v77, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v77, -1, -1);
        v80 = v76;
        v41 = v132;
        MEMORY[0x266701350](v80, -1, -1);
      }

      (*(v67 + 8))(v72, v66);
    }

    v81 = sub_261294274();
    v83 = v81[1];
    v82 = v81[2];
    v84 = v81[3];
    v85 = v81[4];
    LOBYTE(v134) = *v81;
    *&v135 = v83;
    *(&v135 + 1) = v82;
    *&v136 = v84;
    *(&v136 + 1) = v85;
    v137 = 1;

    v131(&v134);

    goto LABEL_52;
  }

  v46(v34, 0, 1, v35);
  (*(v45 + 32))(v38, v34, v35);
  sub_2612F3B28(&qword_27FE9FFC0, MEMORY[0x277CC9AE8]);
  sub_26139EE1C();
  sub_26139F25C();
  sub_2612F3B28(&qword_27FE9FFC8, MEMORY[0x277CC9AC8]);
  sub_2613A1B1C();
  sub_2613A1B1C();
  v47 = *(v24 + 8);
  v47(v28, v23);
  v47(v30, v23);
  if (v134 != v133)
  {
    (*(v45 + 8))(v38, v35);
    v41 = v132;
    goto LABEL_18;
  }

  v48 = sub_26129B97C();
  v49 = v125;
  sub_26124AA44(v48, v125);
  v50 = sub_2613A124C();
  v51 = *(v50 - 8);
  if ((*(v51 + 48))(v49, 1, v50) == 1)
  {
    sub_26124C718(v49, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v94 = sub_2613A122C();
    v95 = sub_2613A1D8C();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_261243000, v94, v95, "Execute download file - request cancelled", v96, 2u);
      MEMORY[0x266701350](v96, -1, -1);
    }

    (*(v51 + 8))(v49, v50);
  }

  v97 = v132;
  v98 = sub_261294280();
  v100 = v98[1];
  v99 = v98[2];
  v101 = v98[3];
  v102 = v98[4];
  LOBYTE(v134) = *v98;
  *&v135 = v100;
  *(&v135 + 1) = v99;
  *&v136 = v101;
  *(&v136 + 1) = v102;
  v137 = 1;

  v131(&v134);

  sub_2612F3DB0(v134, v135, *(&v135 + 1), v136, *(&v136 + 1), v137);
  (*(v129 + 8))(v38, v35);
}

void sub_2612F2B00(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id *), uint64_t a7, uint64_t a8)
{
  v123 = a8;
  v124 = a1;
  v130 = a7;
  v131 = a6;
  v132 = a4;
  v126 = a3;
  v127 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v121 = &v120 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v122 = &v120 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v128 = &v120 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v120 - v20;
  MEMORY[0x28223BE20](v19);
  v125 = &v120 - v22;
  v23 = sub_26139F24C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v120 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v120 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FFB8, "DF");
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v120 - v33;
  v35 = sub_26139F26C();
  v129 = *(v35 - 8);
  v36 = *(v129 + 64);
  MEMORY[0x28223BE20](v35);
  v38 = &v120 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v40 = *(Strong + 16);
    *(Strong + 16) = 0;
  }

  v41 = v132;
  if (!v132)
  {
    v52 = v126;
    v53 = v127;
    if (!v126 || (objc_opt_self(), (v54 = swift_dynamicCastObjCClass()) == 0) || v53 >> 60 == 15)
    {
      v62 = sub_26129B97C();
      sub_26124AA44(v62, v12);
      v63 = sub_2613A124C();
      v64 = *(v63 - 8);
      if ((*(v64 + 48))(v12, 1, v63) == 1)
      {
        sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v86 = sub_2613A122C();
        v87 = sub_2613A1D8C();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&dword_261243000, v86, v87, "Execute download file - internalError - Channel failure, nil api service", v88, 2u);
          MEMORY[0x266701350](v88, -1, -1);
        }

        (*(v64 + 8))(v12, v63);
      }

      v89 = sub_261294250();
      v91 = v89[1];
      v90 = v89[2];
      v92 = v89[3];
      v93 = v89[4];
      LOBYTE(v134) = *v89;
      v135 = v91;
      v136 = v90;
      v137 = v92;
      v138 = v93;
      v139 = 1;

      v131(&v134);
      goto LABEL_52;
    }

    v55 = v54;
    type metadata accessor for APIServiceHelper();
    v56 = v52;
    v57 = v124;
    sub_26125C348(v124, v53);
    sub_2612947FC(v123, v57, v53, v55);
    if ([v55 statusCode] - 300 >= 0xFFFFFFFFFFFFFF9CLL)
    {
      sub_2612A5708();
      sub_26124B218(&type metadata for DiscoveryManifest, &type metadata for DiscoveryManifest, &v134);
      if (v135)
      {
        v137 = 0;
        v138 = 0;
        v136 = 0;
        v139 = 0;

        v131(&v134);
        sub_26124A168(v57, v53);
        swift_bridgeObjectRelease_n();

        return;
      }

      v108 = sub_26129B97C();
      v109 = v121;
      sub_26124AA44(v108, v121);
      v110 = sub_2613A124C();
      v111 = *(v110 - 8);
      if ((*(v111 + 48))(v109, 1, v110) == 1)
      {
        sub_26124C718(v109, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v112 = sub_2613A122C();
        v113 = sub_2613A1D8C();
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          *v114 = 0;
          _os_log_impl(&dword_261243000, v112, v113, "Execute download file - internalError - no available content", v114, 2u);
          MEMORY[0x266701350](v114, -1, -1);
        }

        (*(v111 + 8))(v109, v110);
      }
    }

    else
    {
      v58 = sub_26129B97C();
      v59 = v122;
      sub_26124AA44(v58, v122);
      v60 = sub_2613A124C();
      v61 = *(v60 - 8);
      if ((*(v61 + 48))(v59, 1, v60) == 1)
      {
        sub_26124C718(v59, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v103 = v56;
        v104 = sub_2613A122C();
        v105 = sub_2613A1D8C();
        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          *v106 = 134217984;
          *(v106 + 4) = [v55 statusCode];

          _os_log_impl(&dword_261243000, v104, v105, "Execute download file - serverError - Invalid status from server: %ld", v106, 0xCu);
          v107 = v106;
          v57 = v124;
          MEMORY[0x266701350](v107, -1, -1);
        }

        else
        {

          v104 = v103;
        }

        (*(v61 + 8))(v122, v60);
      }

      sub_2612A43C8();
      sub_26124B218(&type metadata for APIErrorResponse, &type metadata for APIErrorResponse, &v134);
      if (v135)
      {
        sub_261294240(4, v134, v135, v136, v137, &v134);
        v139 = 1;
LABEL_51:
        v131(&v134);
        sub_26124A168(v57, v53);

LABEL_52:
        sub_2612F3AE4(v134, v135, v136, v137, v138, v139);
        return;
      }
    }

    v115 = sub_26129425C();
    v117 = v115[1];
    v116 = v115[2];
    v118 = v115[3];
    v119 = v115[4];
    LOBYTE(v134) = *v115;
    v135 = v117;
    v136 = v116;
    v137 = v118;
    v138 = v119;
    v139 = 1;

    goto LABEL_51;
  }

  v134 = v132;
  v42 = v132;
  v43 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  v44 = swift_dynamicCast();
  v45 = v129;
  v46 = *(v129 + 56);
  if ((v44 & 1) == 0)
  {
    v46(v34, 1, 1, v35);
    sub_26124C718(v34, &qword_27FE9FFB8, "DF");
LABEL_18:
    v65 = sub_26129B97C();
    sub_26124AA44(v65, v21);
    v66 = sub_2613A124C();
    v67 = *(v66 - 8);
    v68 = *(v67 + 48);
    if (v68(v21, 1, v66) == 1)
    {
      sub_26124C718(v21, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v69 = sub_2613A122C();
      v70 = sub_2613A1D8C();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_261243000, v69, v70, "Execute download file - networkError - Server not reachable", v71, 2u);
        MEMORY[0x266701350](v71, -1, -1);
      }

      (*(v67 + 8))(v21, v66);
      v41 = v132;
    }

    v72 = v128;
    sub_26124AA44(v65, v128);
    if (v68(v72, 1, v66) == 1)
    {
      sub_26124C718(v72, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v73 = v41;
      v74 = sub_2613A122C();
      v75 = sub_2613A1D8C();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v76 = 138412290;
        v78 = v132;
        v79 = _swift_stdlib_bridgeErrorToNSError();
        *(v76 + 4) = v79;
        *v77 = v79;
        _os_log_impl(&dword_261243000, v74, v75, "Error processing request: %@", v76, 0xCu);
        sub_26124C718(v77, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v77, -1, -1);
        v80 = v76;
        v41 = v132;
        MEMORY[0x266701350](v80, -1, -1);
      }

      (*(v67 + 8))(v72, v66);
    }

    v81 = sub_261294274();
    v83 = v81[1];
    v82 = v81[2];
    v84 = v81[3];
    v85 = v81[4];
    LOBYTE(v134) = *v81;
    v135 = v83;
    v136 = v82;
    v137 = v84;
    v138 = v85;
    v139 = 1;

    v131(&v134);

    goto LABEL_52;
  }

  v46(v34, 0, 1, v35);
  (*(v45 + 32))(v38, v34, v35);
  sub_2612F3B28(&qword_27FE9FFC0, MEMORY[0x277CC9AE8]);
  sub_26139EE1C();
  sub_26139F25C();
  sub_2612F3B28(&qword_27FE9FFC8, MEMORY[0x277CC9AC8]);
  sub_2613A1B1C();
  sub_2613A1B1C();
  v47 = *(v24 + 8);
  v47(v28, v23);
  v47(v30, v23);
  if (v134 != v133)
  {
    (*(v45 + 8))(v38, v35);
    v41 = v132;
    goto LABEL_18;
  }

  v48 = sub_26129B97C();
  v49 = v125;
  sub_26124AA44(v48, v125);
  v50 = sub_2613A124C();
  v51 = *(v50 - 8);
  if ((*(v51 + 48))(v49, 1, v50) == 1)
  {
    sub_26124C718(v49, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v94 = sub_2613A122C();
    v95 = sub_2613A1D8C();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_261243000, v94, v95, "Execute download file - request cancelled", v96, 2u);
      MEMORY[0x266701350](v96, -1, -1);
    }

    (*(v51 + 8))(v49, v50);
  }

  v97 = v132;
  v98 = sub_261294280();
  v100 = v98[1];
  v99 = v98[2];
  v101 = v98[3];
  v102 = v98[4];
  LOBYTE(v134) = *v98;
  v135 = v100;
  v136 = v99;
  v137 = v101;
  v138 = v102;
  v139 = 1;

  v131(&v134);

  sub_2612F3AE4(v134, v135, v136, v137, v138, v139);
  (*(v129 + 8))(v38, v35);
}

uint64_t sub_2612F3950()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2612F3988()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_2612F39D4(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FFB0, "\bF") - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_26139EF7C() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2612F14DC(a1, v1 + v4, v7);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2612F3AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    v6 = vars8;
  }
}

uint64_t sub_2612F3B28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2612F3B70(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FFD0, "<F") - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2612F0670(a1, v1 + v4);
}

uint64_t objectdestroy_11Tm()
{
  v1 = sub_26139EC4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2612F3CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v10 = *(sub_26139EC4C() - 8);
  v11 = v5[2];
  v12 = v5[3];
  v13 = v5[4];
  v14 = v5 + ((*(v10 + 80) + 40) & ~*(v10 + 80));

  return a5(a1, a2, a3, a4, v11, v12, v13, v14);
}

uint64_t sub_2612F3DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    v6 = vars8;
  }
}

unint64_t sub_2612F3DF0()
{
  result = qword_27FE9FFD8;
  if (!qword_27FE9FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9FFD8);
  }

  return result;
}

uint64_t sub_2612F3EA0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v81 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v79 = &v75 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v76 = &v75 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v78 = &v75 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v75 - v18;
  v4[2] = 0;
  v4[3] = 0;
  v20 = (v4 + 2);
  v4[4] = 0;
  v83 = sub_26129B89C();
  sub_26124AA44(v83, v19);
  v21 = sub_2613A124C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 6);
  v80 = v22 + 48;
  v82 = v23;
  if (v23(v19, 1, v21) == 1)
  {
    sub_26124C718(v19, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v77 = v11;

    v24 = sub_26125A798();
    v25 = sub_261291AA8();
    v11 = v77;
    sub_26129BC3C(v24 & 1, v4, 0xD000000000000020, 0x80000002613BBDD0, v25, v26);

    v20 = (v4 + 2);

    (*(v22 + 1))(v19, v21);
  }

  v27 = v4[3];
  v28 = v4[4];
  v4[3] = a2;
  v4[4] = a3;

  sub_26124A228(v27);
  v29 = sub_2612C1188();
  v30 = *v29;
  v31 = v29[1];

  v32 = sub_2612C117C();
  v33 = *v32;
  v34 = v32[1];

  v35 = sub_2613A189C();

  v36 = sub_2613A189C();

  v37 = [objc_opt_self() endpointForMachName:v35 service:v36 instance:0];

  if (v37)
  {
    v77 = v22;
    v38 = [objc_opt_self() connectionWithEndpoint_];
    if (v38)
    {
      v39 = v38;
      v78 = v21;
      v40 = swift_allocObject();
      v41 = v81;
      *(v40 + 16) = v4;
      *(v40 + 24) = v41;
      v42 = swift_allocObject();
      *(v42 + 16) = sub_2612F5C4C;
      *(v42 + 24) = v40;
      v76 = v40;
      aBlock[4] = sub_2612F5F60;
      aBlock[5] = v42;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2612F4BD8;
      aBlock[3] = &block_descriptor_8;
      v43 = _Block_copy(aBlock);

      v44 = v41;

      [v39 configureConnection_];
      _Block_release(v43);
      LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

      if ((v43 & 1) == 0)
      {
        v81 = v44;
        v84 = &unk_2873C9530;
        v46 = swift_dynamicCastObjCProtocolConditional();
        if (v46)
        {
          v47 = v39;
        }

        v48 = v82;
        v49 = *v20;
        *v20 = v46;

        v50 = v79;
        sub_26124AA44(v83, v79);
        if (v48(v50, 1, v78) == 1)
        {
          sub_26124C718(v50, &qword_27FE9F560, &qword_2613A3CB0);
          v51 = *v20;
          if (!*v20)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v56 = sub_2613A122C();
          v57 = sub_2613A1D9C();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            *v58 = 0;
            _os_log_impl(&dword_261243000, v56, v57, "Connection created, activate now", v58, 2u);
            v59 = v58;
            v48 = v82;
            MEMORY[0x266701350](v59, -1, -1);
          }

          (*(v77 + 1))(v79, v78);
          v51 = *v20;
          if (!*v20)
          {
            goto LABEL_20;
          }
        }

        [v51 activate];
LABEL_20:
        sub_26124AA44(v83, v11);
        if (v48(v11, 1, v78) == 1)
        {

          sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v60 = sub_2613A122C();
          v61 = sub_2613A1D9C();
          v62 = os_log_type_enabled(v60, v61);
          v63 = v81;
          if (v62)
          {
            v64 = swift_slowAlloc();
            *v64 = 0;
            _os_log_impl(&dword_261243000, v60, v61, "Connection created, activated", v64, 2u);
            MEMORY[0x266701350](v64, -1, -1);
          }

          (*(v77 + 1))(v11, v78);
        }

        return v4;
      }

      __break(1u);
      goto LABEL_39;
    }

    v53 = v76;
    sub_26124AA44(v83, v76);
    v54 = v82(v53, 1, v21);
    v55 = v77;
    if (v54 == 1)
    {
      result = sub_26124C718(v53, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v70 = sub_2613A122C();
      v71 = sub_2613A1D8C();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_261243000, v70, v71, "Failed to create connection", v72, 2u);
        MEMORY[0x266701350](v72, -1, -1);
      }

      result = (*(v55 + 1))(v53, v21);
    }

    v73 = v4[3];
    if (!v73)
    {
      goto LABEL_40;
    }

    v74 = v4[4];

    v73(1);

    sub_26124A228(v73);

LABEL_36:

    return 0;
  }

  v52 = v78;
  sub_26124AA44(v83, v78);
  if (v82(v52, 1, v21) == 1)
  {
    result = sub_26124C718(v52, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v65 = sub_2613A122C();
    v66 = sub_2613A1D8C();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_261243000, v65, v66, "Failed to create end point", v67, 2u);
      MEMORY[0x266701350](v67, -1, -1);
    }

    result = (*(v22 + 1))(v52, v21);
  }

  v68 = v4[3];
  if (v68)
  {
    v69 = v4[4];

    v68(1);

    sub_26124A228(v68);
    goto LABEL_36;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

id sub_2612F47C0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_26129B89C();
  sub_26124AA44(v6, v5);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = a1;
    v10 = sub_2613A122C();
    v11 = sub_2613A1D8C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = v9;
      v14 = v9;
      _os_log_impl(&dword_261243000, v10, v11, "UIScene connection interrupted %@", v12, 0xCu);
      sub_26124C718(v13, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v13, -1, -1);
      MEMORY[0x266701350](v12, -1, -1);
    }

    (*(v8 + 8))(v5, v7);
  }

  return [a1 invalidate];
}

uint64_t sub_2612F49E0(void *a1, uint64_t (*a2)(void), const char *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v10 = sub_26129B89C();
  sub_26124AA44(v10, v9);
  v11 = sub_2613A124C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    return sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
  }

  v14 = a1;
  v15 = sub_2613A122C();
  v16 = a2();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_261243000, v15, v16, a3, v17, 0xCu);
    sub_26124C718(v18, &qword_27FEA0410, &qword_2613AA780);
    MEMORY[0x266701350](v18, -1, -1);
    MEMORY[0x266701350](v17, -1, -1);
  }

  return (*(v12 + 8))(v9, v11);
}

uint64_t sub_2612F4BD8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

void sub_2612F4C2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = sub_26129B89C();
  sub_26124AA44(v11, v10);
  v12 = sub_2613A124C();
  v13 = *(v12 - 8);
  v30 = *(v13 + 48);
  if (v30(v10, 1, v12) != 1)
  {
    v29 = v13;
    v16 = sub_26125A798();
    v17 = sub_261291AA8();
    v27 = v8;
    v28 = v12;
    v13 = v29;
    sub_26129BC3C(v16 & 1, v2, 0xD00000000000001CLL, 0x80000002613BBE00, v17, v18);
    v8 = v27;
    v12 = v28;

    (*(v13 + 8))(v10, v12);
    v14 = sub_2612F56C4();
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_6:
    (*(*v2 + 160))();
    return;
  }

  sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
  v14 = sub_2612F56C4();
  if (!v14)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = v14;
  sub_26124AA44(v11, v8);
  if (v30(v8, 1, v12) == 1)
  {
    sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v19 = sub_2613A122C();
    v20 = sub_2613A1D9C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = v12;
      v22 = v13;
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_261243000, v19, v20, "Sending activateRemoteUI message", v23, 2u);
      v24 = v23;
      v13 = v22;
      v12 = v21;
      MEMORY[0x266701350](v24, -1, -1);
    }

    (*(v13 + 8))(v8, v12);
  }

  v25 = sub_2613A17EC();
  aBlock[4] = sub_2612F4FD8;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2612F4FE4;
  aBlock[3] = &block_descriptor_6;
  v26 = _Block_copy(aBlock);
  [v15 activateRemoteUI:v25 internalEndpoint:a2 reply:v26];
  _Block_release(v26);
  swift_unknownObjectRelease();
}

void sub_2612F4FE4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_2612F5050()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v31 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = sub_26129B89C();
  sub_26124AA44(v12, v11);
  v13 = sub_2613A124C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v11, 1, v13) == 1)
  {
    sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v16 = sub_26125A798();
    v17 = sub_261291AA8();
    v32 = v9;
    sub_26129BC3C(v16 & 1, v1, 0x6164696C61766E69, 0xEC00000029286574, v17, v18);
    v9 = v32;

    (*(v14 + 8))(v11, v13);
  }

  v19 = sub_2612F56C4();
  if (v19)
  {
    v20 = v19;
    sub_26124AA44(v12, v9);
    if (v15(v9, 1, v13) == 1)
    {
      sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v21 = sub_2613A122C();
      v22 = sub_2613A1D9C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_261243000, v21, v22, "Sending invalidateRemoteUI message", v23, 2u);
        MEMORY[0x266701350](v23, -1, -1);
      }

      (*(v14 + 8))(v9, v13);
    }

    aBlock[4] = sub_2612F54A4;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2612F4FE4;
    aBlock[3] = &block_descriptor_9_0;
    v24 = _Block_copy(aBlock);
    [v20 invalidateRemoteUI_];
    _Block_release(v24);
    v25 = *(v1 + 16);
    if (v25)
    {
      v26 = v25;
      [v26 invalidate];
    }

    swift_unknownObjectRelease();
    v27 = *(v1 + 16);
    *(v1 + 16) = 0;
  }

  else
  {
    sub_26124AA44(v12, v6);
    if (v15(v6, 1, v13) == 1)
    {
      sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v28 = sub_2613A122C();
      v29 = sub_2613A1D9C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_261243000, v28, v29, "invalidate but remoteTarget is already nil", v30, 2u);
        MEMORY[0x266701350](v30, -1, -1);
      }

      (*(v14 + 8))(v6, v13);
    }
  }
}

uint64_t sub_2612F54B0(void *a1, const char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_26129B89C();
  sub_26124AA44(v8, v7);
  v9 = sub_2613A124C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    return sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
  }

  v12 = a1;
  v13 = sub_2613A122C();
  v14 = sub_2613A1D8C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    if (a1)
    {
      v17 = a1;
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
    _os_log_impl(&dword_261243000, v13, v14, a2, v15, 0xCu);
    sub_26124C718(v16, &qword_27FEA0410, &qword_2613AA780);
    MEMORY[0x266701350](v16, -1, -1);
    MEMORY[0x266701350](v15, -1, -1);
  }

  return (*(v10 + 8))(v7, v9);
}

uint64_t sub_2612F56C4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v38 = &v38 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v11 = sub_26129B89C();
  sub_26124AA44(v11, v10);
  v12 = sub_2613A124C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v14(v10, 1, v12);
  v39 = v13;
  if (v15 == 1)
  {
    sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v16 = sub_26125A798();
    v17 = sub_261291AA8();
    sub_26129BC3C(v16 & 1, v1, 0x615465746F6D6572, 0xEC00000074656772, v17, v18);

    (*(v13 + 8))(v10, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA00B0, "r0");
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2613A4340;
  v20 = sub_2613A189C();
  v21 = sub_2613A189C();
  v22 = [objc_opt_self() attributeWithDomain:v20 name:v21];

  *(v19 + 32) = v22;
  v23 = *(v1 + 16);
  if (v23)
  {
    sub_2612F5FC4();
    v24 = v23;
    v25 = sub_2613A1B6C();

    v26 = [v24 remoteTargetWithLaunchingAssertionAttributes_];

    if (v26)
    {
      sub_2613A202C();
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
    }

    v27 = v39;
    v42 = v40;
    v43 = v41;
    if (*(&v41 + 1))
    {
      sub_26125A7B0(&v42, v44);
      v28 = v11;
      v29 = v38;
      sub_26124AA44(v28, v38);
      if (v14(v29, 1, v12) == 1)
      {
        sub_26124C718(v29, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v34 = sub_2613A122C();
        v35 = sub_2613A1D9C();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_261243000, v34, v35, "Got remote server target", v36, 2u);
          v37 = v36;
          v29 = v38;
          MEMORY[0x266701350](v37, -1, -1);
        }

        (*(v27 + 8))(v29, v12);
      }

      sub_26125A7B0(v44, &v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0128, &unk_2613AB3B0);
      if (swift_dynamicCast())
      {
        return v40;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {

    v42 = 0u;
    v43 = 0u;
    v27 = v39;
  }

  sub_26124C718(&v42, &qword_27FEA00C0, &unk_2613A44B0);
  sub_26124AA44(v11, v6);
  if (v14(v6, 1, v12) == 1)
  {
    sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v30 = sub_2613A122C();
    v31 = sub_2613A1D8C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_261243000, v30, v31, "No remote server target", v32, 2u);
      MEMORY[0x266701350](v32, -1, -1);
    }

    (*(v27 + 8))(v6, v12);
  }

  return 0;
}

uint64_t sub_2612F5C0C()
{
  v1 = *(v0 + 32);
  sub_26124A228(*(v0 + 24));

  return swift_deallocClassInstance();
}

void sub_2612F5C4C(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = sub_2612C117C();
  v6 = *v5;
  v7 = v5[1];

  v8 = sub_2613A189C();

  v9 = [objc_opt_self() interfaceWithIdentifier_];

  v10 = objc_opt_self();
  v11 = [v10 protocolForProtocol_];
  [v9 setServer_];

  v12 = [v10 protocolForProtocol_];
  [v9 setClient_];

  [v9 setClientMessagingExpectation_];
  v13 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v21 = sub_2612F47A0;
  v22 = 0;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_2612ECD5C;
  v20 = &block_descriptor_18;
  v14 = _Block_copy(&v17);
  [a1 setActivationHandler_];
  _Block_release(v14);
  v21 = sub_2612F47C0;
  v22 = 0;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_2612ECD5C;
  v20 = &block_descriptor_21;
  v15 = _Block_copy(&v17);
  [a1 setInterruptionHandler_];
  _Block_release(v15);
  v21 = sub_2612F49C0;
  v22 = 0;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_2612ECD5C;
  v20 = &block_descriptor_24;
  v16 = _Block_copy(&v17);
  [a1 setInvalidationHandler_];
  _Block_release(v16);
}

uint64_t sub_2612F5F60()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2612F5FC4()
{
  result = qword_27FEA00B8;
  if (!qword_27FEA00B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FEA00B8);
  }

  return result;
}

id sub_2612F6038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC21ProximityReaderDaemon30RemoteAlertInvalidationHandler_handleName];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC21ProximityReaderDaemon30RemoteAlertInvalidationHandler_completion];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_2612F60DC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = sub_26129B810();
  sub_26124AA44(v8, v7);
  v9 = sub_2613A124C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_26124D0CC(v7);
  }

  else
  {
    v11 = v2;
    v12 = sub_2613A122C();
    v13 = sub_2613A1D9C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_26124C11C(*&v11[OBJC_IVAR____TtC21ProximityReaderDaemon30RemoteAlertInvalidationHandler_handleName], *&v11[OBJC_IVAR____TtC21ProximityReaderDaemon30RemoteAlertInvalidationHandler_handleName + 8], &v19);
      _os_log_impl(&dword_261243000, v12, v13, "%{public}s remote alert did deactivate", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x266701350](v15, -1, -1);
      MEMORY[0x266701350](v14, -1, -1);
    }

    (*(v10 + 8))(v7, v9);
  }

  [a1 unregisterObserver_];
  v16 = *&v2[OBJC_IVAR____TtC21ProximityReaderDaemon30RemoteAlertInvalidationHandler_completion + 8];
  return (*&v2[OBJC_IVAR____TtC21ProximityReaderDaemon30RemoteAlertInvalidationHandler_completion])(0);
}

void sub_2612F6360(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - v7;
  if (a2)
  {
    v9 = sub_26139EE6C();
    [a1 unregisterObserver_];
    v10 = sub_26129B810();
    sub_26124AA44(v10, v8);
    v11 = sub_2613A124C();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v8, 1, v11) == 1)
    {
      sub_26124D0CC(v8);
    }

    else
    {
      v31 = v2;
      v13 = v2;
      v14 = v9;
      v15 = sub_2613A122C();
      v16 = sub_2613A1D9C();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v32 = v30;
        *v17 = 136446466;
        *(v17 + 4) = sub_26124C11C(*&v13[OBJC_IVAR____TtC21ProximityReaderDaemon30RemoteAlertInvalidationHandler_handleName], *&v13[OBJC_IVAR____TtC21ProximityReaderDaemon30RemoteAlertInvalidationHandler_handleName + 8], &v32);
        *(v17 + 12) = 2082;
        v18 = [v14 localizedDescription];
        v19 = sub_2613A18CC();
        v21 = v20;

        v22 = sub_26124C11C(v19, v21, &v32);

        *(v17 + 14) = v22;
        _os_log_impl(&dword_261243000, v15, v16, "%{public}s remote handle invalidated with error: %{public}s", v17, 0x16u);
        v23 = v30;
        swift_arrayDestroy();
        MEMORY[0x266701350](v23, -1, -1);
        MEMORY[0x266701350](v17, -1, -1);
      }

      (*(v12 + 8))(v8, v11);
      v2 = v31;
    }

    v24 = [v9 code];
    if (v24 == 6)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    if (v24 == 4)
    {
      v26 = 0;
    }

    else
    {
      v26 = v25;
    }

    v27 = *&v2[OBJC_IVAR____TtC21ProximityReaderDaemon30RemoteAlertInvalidationHandler_completion];
    v28 = *&v2[OBJC_IVAR____TtC21ProximityReaderDaemon30RemoteAlertInvalidationHandler_completion + 8];
    v27(v26);
  }
}

id sub_2612F66D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteAlertInvalidationHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2612F675C()
{
  result = sub_2613A0FCC();
  if (result == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2613A4310;
    v2 = sub_26139F2CC();
    *(inited + 32) = sub_26139F27C();
    *(inited + 40) = v3;
    v4 = sub_2613A0F6C();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v4;
    *(inited + 56) = v5;
    sub_261259E78(inited);
    swift_setDeallocating();
    sub_26124C718(inited + 32, &qword_27FE9F2F0, &qword_2613A4BD0);
    v6 = objc_allocWithZone(v2);
  }

  else
  {
    if ((result & 1) == 0)
    {
      return result;
    }

    v7 = objc_allocWithZone(sub_26139F2CC());
  }

  v8 = sub_26139F2DC();
  sub_2612C5960();
  swift_allocError();
  *v9 = v8;
  return swift_willThrow();
}

BOOL sub_2612F68E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  sub_2612F6BF8(a1, a2, 0x64697074666173, 0xE700000000000000, "Could not retrieve SAF tpid from token: [ %s ]");
  v12 = v11;
  if (v11)
  {

    v13 = sub_26129B8EC();
    sub_26125A870(v13, v10, &qword_27FE9F560, &qword_2613A3CB0);
    v14 = sub_2613A124C();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v10, 1, v14) == 1)
    {
      v16 = v10;
LABEL_6:
      sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
      return v12 != 0;
    }

    v20 = sub_2613A122C();
    v21 = sub_2613A1D9C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_261243000, v20, v21, "Store and Forward is supported", v22, 2u);
      MEMORY[0x266701350](v22, -1, -1);
    }

    (*(v15 + 8))(v10, v14);
  }

  else
  {
    v17 = sub_26129B8EC();
    sub_26125A870(v17, v8, &qword_27FE9F560, &qword_2613A3CB0);
    v18 = sub_2613A124C();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v8, 1, v18) == 1)
    {
      v16 = v8;
      goto LABEL_6;
    }

    v23 = sub_2613A122C();
    v24 = sub_2613A1D8C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_261243000, v23, v24, "Store and Forward is not supported in the provided token", v25, 2u);
      MEMORY[0x266701350](v25, -1, -1);
    }

    (*(v19 + 8))(v8, v18);
  }

  return v12 != 0;
}

uint64_t sub_2612F6BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - v8;
  sub_2613A0F9C();
  if (!v23)
  {
    goto LABEL_6;
  }

  result = v22;
  v11 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v11 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

LABEL_6:
    v12 = sub_26129B8EC();
    sub_26125A870(v12, v9, &qword_27FE9F560, &qword_2613A3CB0);
    v13 = sub_2613A124C();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v9, 1, v13) == 1)
    {
      sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {

      v15 = sub_2613A122C();
      v16 = sub_2613A1D8C();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v22 = v18;
        *v17 = 136315138;
        v19 = sub_2613A0F7C();
        v21 = sub_26124C11C(v19, v20, &v22);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_261243000, v15, v16, a5, v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
        MEMORY[0x266701350](v18, -1, -1);
        MEMORY[0x266701350](v17, -1, -1);
      }

      (*(v14 + 8))(v9, v13);
    }

    return 0;
  }

  return result;
}

uint64_t sub_2612F6E80()
{
  qword_27FEAC0A8 = sub_26139F87C();
  unk_27FEAC0B0 = MEMORY[0x277D43718];
  __swift_allocate_boxed_opaque_existential_0(qword_27FEAC090);
  return sub_26139F86C();
}

uint64_t sub_2612F6ED4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F8E8, &qword_2613A7310);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_27FEAC0D0 = result;
  return result;
}

void sub_2612F6F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a5;
  v63 = a1;
  v64 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v56 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v60 = &v50 - v13;
  v58 = sub_26139EE8C();
  v57 = *(v58 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x28223BE20](v58);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_26139EF7C();
  v17 = *(v59 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v59);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  v24 = sub_26139F64C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FEAC0C8 != -1)
  {
    swift_once();
  }

  v67 = qword_27FEAC0D0;
  os_unfair_lock_lock((qword_27FEAC0D0 + 16));
  sub_26139F3FC();
  sub_26139F5DC();
  v29 = *(v25 + 8);
  v65 = v28;
  v66 = v29;
  v68 = v25 + 8;
  v29(v28, v24);
  v30 = sub_26124A620(a4);
  v61 = v31;
  v62 = v30;
  if (v31 >> 60 == 15)
  {
    v32 = sub_26129B64C();
    v33 = v60;
    sub_26124AA44(v32, v60);
    v34 = sub_2613A124C();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v33, 1, v34) == 1)
    {
      sub_26124C718(v33, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v43 = sub_2613A122C();
      v44 = sub_2613A1D8C();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_261243000, v43, v44, "Could not persist session", v45, 2u);
        MEMORY[0x266701350](v45, -1, -1);
      }

      (*(v35 + 8))(v33, v34);
    }
  }

  else
  {
    v53 = a6;
    v52 = a3;
    v51 = a4;
    v60 = v24;
    if (qword_27FEAC088 != -1)
    {
      swift_once();
    }

    v54 = unk_27FEAC0B0;
    __swift_project_boxed_opaque_existential_1(qword_27FEAC090, qword_27FEAC0A8);
    v36 = sub_26124BDB0();
    v37 = v59;
    (*(v17 + 16))(v21, v36, v59);
    v69[0] = v63;
    v69[1] = v64;
    v38 = v57;
    v39 = v58;
    (*(v57 + 104))(v16, *MEMORY[0x277CC91D8], v58);
    sub_26124C7CC();
    sub_26139EF6C();
    (*(v38 + 8))(v16, v39);
    v40 = *(v17 + 8);
    v40(v21, v37);
    v41 = v61;
    v42 = v62;
    sub_2613A030C();
    v40(v23, v37);
    v24 = v60;
    if (qword_27FEAC0B8 != -1)
    {
      swift_once();
    }

    v46 = v51;
    v69[3] = v51;
    v69[4] = v55;
    v69[5] = v53;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v69);
    (*(*(v46 - 8) + 16))(boxed_opaque_existential_0, v52, v46);
    swift_beginAccess();
    v48 = v64;

    sub_2612F7798(v69, v63, v48);
    swift_endAccess();
    sub_26124A168(v42, v41);
  }

  v49 = v65;
  sub_26139F3FC();
  sub_26139F5BC();
  v66(v49, v24);
  os_unfair_lock_unlock(v67 + 4);
}