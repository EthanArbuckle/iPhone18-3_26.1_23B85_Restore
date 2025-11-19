uint64_t sub_1BD2935D4(char a1, char a2)
{
  *(v3 + 64) = v2;
  *(v3 + 51) = a2;
  *(v3 + 50) = a1;
  v4 = sub_1BE04D214();
  *(v3 + 72) = v4;
  *(v3 + 80) = *(v4 - 8);
  *(v3 + 88) = swift_task_alloc();
  _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa(0);
  *(v3 + 96) = swift_task_alloc();
  v5 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  *(v3 + 104) = v5;
  *(v3 + 112) = *(v5 - 8);
  *(v3 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402C8);
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  v6 = _s31SpendingSummaryDetailsViewModelVMa(0);
  *(v3 + 144) = v6;
  *(v3 + 152) = *(v6 - 8);
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  sub_1BE0528A4();
  *(v3 + 176) = sub_1BE052894();
  v8 = sub_1BE052844();
  *(v3 + 184) = v8;
  *(v3 + 192) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BD293804, v8, v7);
}

uint64_t sub_1BD293804()
{
  v1 = *(*(v0 + 64) + 16);
  *(v0 + 200) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BD293828, v1, 0);
}

uint64_t sub_1BD293828()
{
  v1 = (v0[25] + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_availableRanges);
  v2 = *v1;
  v0[26] = *v1;
  v0[27] = v1[1];
  v0[28] = v1[2];
  sub_1BD298E60(v2);
  v3 = v0[23];
  v4 = v0[24];

  return MEMORY[0x1EEE6DFA0](sub_1BD2938B4, v3, v4);
}

uint64_t sub_1BD2938B4()
{
  if (*(v0 + 208))
  {
    v1 = swift_task_alloc();
    *(v0 + 232) = v1;
    *v1 = v0;
    v1[1] = sub_1BD293A80;
    v2 = *(v0 + 51);

    return sub_1BD9FBC84(v2);
  }

  else
  {

    sub_1BE04D114();
    v4 = sub_1BE04D204();
    v5 = sub_1BE052C34();
    v6 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 80);
    v7 = *(v0 + 88);
    v9 = *(v0 + 72);
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BD026000, v4, v5, "Attempting to switch selected summary but no available spending summary ranges have been generated yet.", v10, 2u);
      MEMORY[0x1BFB45F20](v10, -1, -1);
    }

    (*(v8 + 8))(v7, v9);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1BD293A80()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1BD293BA0, v3, v2);
}

uint64_t sub_1BD293BA0()
{
  v1 = *(v0 + 51);
  v2 = sub_1BD295BB4(*(v0 + 50), v1);
  v4 = v3;
  if (v1)
  {

    if (v1 == 1)
    {
      v5 = 216;
    }

    else
    {
      v5 = 224;
    }
  }

  else
  {

    v5 = 208;
  }

  v6 = *(v0 + v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v27 = v4;
    v28 = v2;
    v31 = *(v0 + 200);
    v9 = *(v0 + 144);
    v8 = *(v0 + 152);
    v10 = *(v0 + 112);
    v32 = MEMORY[0x1E69E7CC0];
    sub_1BD531F6C(0, v7, 0);
    v11 = v32;
    v30 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_accountID;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8) - 8);
    v13 = v6 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v29 = *(v12 + 72);
    v14 = (v10 + 56);
    do
    {
      v15 = *(v0 + 168);
      v16 = *(v0 + 104);
      v17 = *(v0 + 51);
      sub_1BD0DE19C(v13, v15 + v9[5], &qword_1EBD38DB8);
      v18 = sub_1BE04AFE4();
      (*(*(v18 - 8) + 16))(v15, v31 + v30, v18);
      (*v14)(v15 + v9[7], 1, 1, v16);
      *(v15 + v9[6]) = v17;
      v20 = *(v32 + 16);
      v19 = *(v32 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1BD531F6C(v19 > 1, v20 + 1, 1);
      }

      v21 = *(v0 + 168);
      *(v32 + 16) = v20 + 1;
      sub_1BD298EC8(v21, v32 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, _s31SpendingSummaryDetailsViewModelVMa);
      v13 += v29;
      --v7;
    }

    while (v7);

    v2 = v28;
    v4 = v27;
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 240) = v11;
  *(v0 + 56) = v11;
  *(v0 + 40) = 0;
  *(v0 + 48) = 256;
  if (v4)
  {
    v2 = sub_1BD295FEC(v0 + 40, v0 + 56);
  }

  else
  {
    v22 = 0;
  }

  v23 = v22 & 1;
  *(v0 + 52) = v22 & 1;
  *(v0 + 248) = v2;
  v24 = swift_task_alloc();
  *(v0 + 256) = v24;
  *v24 = v0;
  v24[1] = sub_1BD293F14;
  v25 = *(v0 + 136);

  return sub_1BD2961BC(v25, v2, v23, v11);
}

uint64_t sub_1BD293F14()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {

    v3 = *(v2 + 184);
    v4 = *(v2 + 192);
    v5 = sub_1BD294438;
  }

  else
  {
    v3 = *(v2 + 184);
    v4 = *(v2 + 192);
    v5 = sub_1BD29403C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD29403C()
{

  v2 = *(v1 + 128);
  v4 = *(v1 + 104);
  v3 = *(v1 + 112);
  sub_1BD0DE19C(*(v1 + 136), v2, &qword_1EBD402C8);
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    sub_1BD0DE53C(*(v1 + 128), &qword_1EBD402C8);
    if ((sub_1BE052974() & 1) == 0)
    {
LABEL_3:
      v5 = *(v1 + 248);
      v6 = *(v1 + 52);
      v7 = *(v1 + 64);
      v8 = swift_task_alloc();
      *(v8 + 16) = v7;
      *(v8 + 24) = v1 + 56;
      sub_1BE051D74();
      sub_1BE04E7D4();

      sub_1BD29258C(v5, v6);
    }
  }

  else
  {
    v11 = *(v1 + 240);
    sub_1BD298EC8(*(v1 + 128), *(v1 + 120), type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model);
    v26 = v11[2];
    v27 = v11;
    if (v26)
    {
      v12 = 0;
      v25 = *(v1 + 152);
      v24 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v13 = *(v1 + 240) + v24;
      while (1)
      {
        if (v12 >= v27[2])
        {
          __break(1u);
          goto LABEL_20;
        }

        v14 = *(v1 + 248);
        v15 = *(v1 + 52);
        v16 = *(v1 + 160);
        v0 = *(v25 + 72) * v12;
        sub_1BD298F90(v13 + v0, v16, _s31SpendingSummaryDetailsViewModelVMa);
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
        v18 = sub_1BD298E18(&qword_1EBD52550, MEMORY[0x1E6969530]);
        v11 = MEMORY[0x1BFB3FC10](v17, v18);
        sub_1BD298F30(v16, _s31SpendingSummaryDetailsViewModelVMa);
        if ((v15 & 1) == 0 && v11 == v14)
        {
          break;
        }

        if (v26 == ++v12)
        {
          goto LABEL_16;
        }
      }

      v19 = *(v1 + 112);
      v21 = *(v1 + 96);
      v20 = *(v1 + 104);
      sub_1BD298F90(*(v1 + 120), v21, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model);
      (*(v19 + 56))(v21, 0, 1, v20);
      swift_beginAccess();
      result = swift_isUniquelyReferenced_nonNull_native();
      v11 = *(v1 + 240);
      if (result)
      {
        goto LABEL_14;
      }

LABEL_20:
      result = sub_1BD4FFF54(v11);
      v11 = result;
LABEL_14:
      if (v12 >= v11[2])
      {
        __break(1u);
        return result;
      }

      v22 = *(v1 + 120);
      sub_1BD298FF8(*(v1 + 96), v11 + v24 + *(*(v1 + 144) + 28) + v0);
      *(v1 + 56) = v11;
      swift_endAccess();
      v23 = v22;
    }

    else
    {
LABEL_16:
      v23 = *(v1 + 120);
    }

    sub_1BD298F30(v23, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model);
    if ((sub_1BE052974() & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  sub_1BD0DE53C(*(v1 + 136), &qword_1EBD402C8);

  v9 = *(v1 + 8);

  return v9();
}

uint64_t sub_1BD294438()
{
  v1 = v0 + 56;
  v2 = *(v0 + 136);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);

  (*(v3 + 56))(v2, 1, 1, v4);
  v5 = *(v0 + 128);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  sub_1BD0DE19C(*(v0 + 136), v5, &qword_1EBD402C8);
  v9 = *(v6 + 48);
  v8 = v6 + 48;
  if (v9(v5, 1, v7) == 1)
  {
    sub_1BD0DE53C(*(v0 + 128), &qword_1EBD402C8);
    if ((sub_1BE052974() & 1) == 0)
    {
LABEL_3:
      v10 = *(v0 + 248);
      v11 = *(v0 + 52);
      v12 = *(v0 + 64);
      v13 = swift_task_alloc();
      *(v13 + 16) = v12;
      *(v13 + 24) = v1;
      sub_1BE051D74();
      sub_1BE04E7D4();

      sub_1BD29258C(v10, v11);
    }
  }

  else
  {
    v16 = *(v0 + 240);
    sub_1BD298EC8(*(v0 + 128), *(v0 + 120), type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model);
    v31 = v16[2];
    v32 = v16;
    if (v31)
    {
      v17 = 0;
      v30 = *(v0 + 152);
      v29 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v18 = *(v0 + 240) + v29;
      while (1)
      {
        if (v17 >= v32[2])
        {
          __break(1u);
          goto LABEL_20;
        }

        v19 = *(v0 + 248);
        v20 = *(v0 + 52);
        v21 = *(v0 + 160);
        v8 = *(v30 + 72) * v17;
        sub_1BD298F90(v18 + v8, v21, _s31SpendingSummaryDetailsViewModelVMa);
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
        v23 = sub_1BD298E18(&qword_1EBD52550, MEMORY[0x1E6969530]);
        v16 = MEMORY[0x1BFB3FC10](v22, v23);
        sub_1BD298F30(v21, _s31SpendingSummaryDetailsViewModelVMa);
        if ((v20 & 1) == 0 && v16 == v19)
        {
          break;
        }

        if (v31 == ++v17)
        {
          goto LABEL_16;
        }
      }

      v24 = *(v0 + 112);
      v26 = *(v0 + 96);
      v25 = *(v0 + 104);
      sub_1BD298F90(*(v0 + 120), v26, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model);
      (*(v24 + 56))(v26, 0, 1, v25);
      swift_beginAccess();
      result = swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v0 + 240);
      if (result)
      {
        goto LABEL_14;
      }

LABEL_20:
      result = sub_1BD4FFF54(v16);
      v16 = result;
LABEL_14:
      if (v17 >= v16[2])
      {
        __break(1u);
        return result;
      }

      v27 = *(v0 + 120);
      sub_1BD298FF8(*(v0 + 96), v16 + v29 + *(*(v0 + 144) + 28) + v8);
      *(v0 + 56) = v16;
      swift_endAccess();
      v28 = v27;
    }

    else
    {
LABEL_16:
      v28 = *(v0 + 120);
    }

    sub_1BD298F30(v28, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model);
    v1 = v0 + 56;
    if ((sub_1BE052974() & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  sub_1BD0DE53C(*(v0 + 136), &qword_1EBD402C8);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1BD294854(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_1BE04D214();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa(0);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402C8);
  v2[16] = swift_task_alloc();
  v4 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  sub_1BE0528A4();
  v2[20] = sub_1BE052894();
  v6 = sub_1BE052844();
  v2[21] = v6;
  v2[22] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD294A08, v6, v5);
}

uint64_t sub_1BD294A08()
{
  v1 = v0[11];
  swift_getKeyPath();
  v0[9] = v1;
  sub_1BD298E18(&qword_1EBD402C0, _s9ViewModelCMa_0);
  sub_1BE04B594();

  v2 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedPeriodSpendingSummaries;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[23] = v3;
  sub_1BE048C84();
  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  v4[1] = sub_1BD294B50;
  v5 = v0[16];
  v6 = v0[10];

  return sub_1BD29510C(v5, v6, v3);
}

uint64_t sub_1BD294B50()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_1BD294F3C;
  }

  else
  {

    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_1BD294C6C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD294C6C()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];

  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    sub_1BD298EC8(v0[16], v0[19], type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model);
    if (sub_1BE052974())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A50);
      v4 = swift_allocObject();
      v5 = MEMORY[0x1E69E6158];
      *(v4 + 16) = xmmword_1BE0B69E0;
      *(v4 + 56) = v5;
      *(v4 + 32) = 0x656C6C65636E6143;
      *(v4 + 40) = 0xE900000000000064;
      sub_1BE053CE4();

LABEL_11:
      sub_1BD298F30(v0[19], type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model);
      goto LABEL_12;
    }

    v7 = sub_1BD292990(v0 + 2);
    if (!*v6)
    {
LABEL_10:
      (v7)(v0 + 2, 0);
      goto LABEL_11;
    }

    v8 = v6;
    v9 = v0[18];
    v10 = v0[17];
    v11 = v0[15];
    sub_1BD298F90(v0[19], v11, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model);
    (*(v9 + 56))(v11, 0, 1, v10);
    v12 = *v8;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v8 = v12;
    if (result)
    {
      v14 = v0[10];
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      result = sub_1BD4FFF54(v12);
      v12 = result;
      *v8 = result;
      v14 = v0[10];
      if ((v14 & 0x8000000000000000) == 0)
      {
LABEL_8:
        if (v12[2] > v14)
        {
          v15 = v0[15];
          v16 = _s31SpendingSummaryDetailsViewModelVMa(0);
          sub_1BD298FF8(v15, v12 + ((*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80)) + *(*(v16 - 8) + 72) * v14 + *(v16 + 28));
          goto LABEL_10;
        }

LABEL_17:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  sub_1BD0DE53C(v0[16], &qword_1EBD402C8);
LABEL_12:

  v17 = v0[1];

  return v17();
}

uint64_t sub_1BD294F3C()
{
  v1 = v0[25];

  sub_1BE04D114();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[25];
  if (v5)
  {
    v7 = v0[10];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 134218242;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2112;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BD026000, v3, v4, "Failed to load data for index: %ld with error: %@", v8, 0x16u);
    sub_1BD0DE53C(v9, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v9, -1, -1);
    MEMORY[0x1BFB45F20](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[13] + 8))(v0[14], v0[12]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1BD29510C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_1BE04D214();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v6 = sub_1BE04B2D4();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D0);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  sub_1BE0528A4();
  v4[20] = sub_1BE052894();
  v9 = sub_1BE052844();
  v4[21] = v9;
  v4[22] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BD295324, v9, v8);
}

uint64_t sub_1BD295324()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[4];
    if ((v2 & 0x8000000000000000) == 0 && *(v1 + 16) > v2)
    {
      v4 = v0[18];
      v3 = v0[19];
      v6 = v0[16];
      v5 = v0[17];
      v7 = _s31SpendingSummaryDetailsViewModelVMa(0);
      v8 = *(*(v7 - 8) + 72);
      v9 = v1 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));
      sub_1BD0DE19C(v9 + v8 * v2 + *(v7 + 20), v3, &qword_1EBD38DB8);
      v10 = *(v4 + 56);
      v10(v6, 1, 1, v5);
      if (v2)
      {
        v12 = v0[16];
        v11 = v0[17];
        v13 = v0[15];
        v14 = v9 + (v0[4] - 1) * v8;
        sub_1BD0DE53C(v12, &qword_1EBD402D0);
        sub_1BD0DE19C(v14 + *(v7 + 20), v13, &qword_1EBD38DB8);
        v10(v13, 0, 1, v11);
        sub_1BD0DE204(v13, v12, &qword_1EBD402D0);
      }

      v15 = v0[12];
      v16 = v0[6];
      swift_getKeyPath();
      v0[2] = v16;
      sub_1BD298E18(&qword_1EBD402C0, _s9ViewModelCMa_0);
      sub_1BE04B594();

      v17 = qword_1E800F958[*(v16 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedPeriod)];
      v19 = v0[13];
      v18 = v0[14];
      v20 = v0[11];
      v21 = v0[12];
      (*(v15 + 104))(v19, *v17, v20);
      (*(v21 + 32))(v18, v19, v20);
      v22 = swift_task_alloc();
      v0[23] = v22;
      *v22 = v0;
      v22[1] = sub_1BD2957FC;
      v23 = v0[19];
      v24 = v0[16];
      v25 = v0[14];
      v26 = v0[3];

      return sub_1BD9FC674(v26, v23, v24, v25);
    }

    v28 = v0 + 10;

    sub_1BE04D114();
    v29 = sub_1BE04D204();
    v30 = sub_1BE052C34();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = v0[4];
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = v31;
      v33 = "Attempting to load data for invalid index: %ld.";
LABEL_13:
      _os_log_impl(&dword_1BD026000, v29, v30, v33, v32, 0xCu);
      MEMORY[0x1BFB45F20](v32, -1, -1);
    }
  }

  else
  {
    v28 = v0 + 9;

    sub_1BE04D114();
    v29 = sub_1BE04D204();
    v30 = sub_1BE052C34();
    if (os_log_type_enabled(v29, v30))
    {
      v34 = v0[4];
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = v34;
      v33 = "Attempting to load data for index: %ld before spending summaries have been generated, ignoring.";
      goto LABEL_13;
    }
  }

  v35 = *v28;
  v36 = v0[7];
  v37 = v0[8];
  v38 = v0[3];

  (*(v37 + 8))(v35, v36);
  v39 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  (*(*(v39 - 8) + 56))(v38, 1, 1, v39);

  v40 = v0[1];

  return v40();
}

uint64_t sub_1BD2957FC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  *(*v1 + 192) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 176);
  v7 = *(v2 + 168);
  if (v0)
  {
    v8 = sub_1BD295AC4;
  }

  else
  {
    v8 = sub_1BD295994;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1BD295994()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[3];

  sub_1BD0DE53C(v2, &qword_1EBD402D0);
  sub_1BD0DE53C(v1, &qword_1EBD38DB8);
  v4 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1BD295AC4()
{
  v1 = v0[19];
  v2 = v0[16];

  sub_1BD0DE53C(v2, &qword_1EBD402D0);
  sub_1BD0DE53C(v1, &qword_1EBD38DB8);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1BD295BB4(int a1, int a2)
{
  v3 = v2;
  v6 = _s31SpendingSummaryDetailsViewModelVMa(0);
  v7 = *(v6 - 8);
  v46 = v6;
  v47 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v37[-v13];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  MEMORY[0x1EEE9AC00](v45, v15);
  v17 = &v37[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v37[-v20];
  swift_getKeyPath();
  v22 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel___observationRegistrar;
  v49 = v3;
  v43 = sub_1BD298E18(&qword_1EBD402C0, _s9ViewModelCMa_0);
  v44 = v22;
  sub_1BE04B594();

  v23 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedPeriodSpendingSummaries;
  swift_beginAccess();
  v24 = *(v3 + v23);
  if (!v24)
  {
    return 0;
  }

  v25 = *(v24 + 16);
  if (!v25)
  {
    return 0;
  }

  v39 = v17;
  v40 = v14;
  v41 = v21;
  v42 = a1;
  v38 = a2;
  v26 = v3 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedSpendingSummaryID;
  v27 = v24 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
  result = sub_1BE048C84();
  v29 = 0;
  while (1)
  {
    if (v29 >= *(v24 + 16))
    {
      __break(1u);
      return result;
    }

    sub_1BD298F90(v27 + *(v47 + 72) * v29, v10, _s31SpendingSummaryDetailsViewModelVMa);
    v30 = sub_1BD298E18(&qword_1EBD52550, MEMORY[0x1E6969530]);
    v31 = MEMORY[0x1BFB3FC10](v45, v30);
    swift_getKeyPath();
    v48 = v3;
    sub_1BE04B594();

    if ((*(v26 + 8) & 1) == 0 && v31 == *v26)
    {
      break;
    }

    ++v29;
    result = sub_1BD298F30(v10, _s31SpendingSummaryDetailsViewModelVMa);
    if (v25 == v29)
    {

      return 0;
    }
  }

  v32 = v40;
  sub_1BD298EC8(v10, v40, _s31SpendingSummaryDetailsViewModelVMa);
  v33 = v39;
  sub_1BD0DE19C(v32 + *(v46 + 20), v39, &qword_1EBD38DB8);
  sub_1BD298F30(v32, _s31SpendingSummaryDetailsViewModelVMa);
  v34 = v41;
  sub_1BD0DE204(v33, v41, &qword_1EBD38DB8);
  if (v42)
  {
    if (v42 == 1)
    {
      v35 = sub_1BD297148(v38, v34);
    }

    else
    {
      v35 = sub_1BD297C14(v38, v34);
    }
  }

  else
  {
    v35 = sub_1BD296C2C(v38, v34);
  }

  v36 = v35;
  sub_1BD0DE53C(v34, &qword_1EBD38DB8);
  return v36;
}

uint64_t sub_1BD295FEC(uint64_t a1, uint64_t a2)
{
  v4 = _s31SpendingSummaryDetailsViewModelVMa(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*(a1 + 9) & 1) == 0)
  {
    return *a1;
  }

  swift_beginAccess();
  v9 = *(*a2 + 16);
  if (v9)
  {
    sub_1BD298F90(*a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v9 - 1), v8, _s31SpendingSummaryDetailsViewModelVMa);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
    v11 = sub_1BD298E18(&qword_1EBD52550, MEMORY[0x1E6969530]);
    v12 = MEMORY[0x1BFB3FC10](v10, v11);
    sub_1BD298F30(v8, _s31SpendingSummaryDetailsViewModelVMa);
  }

  else
  {
    v12 = 0;
  }

  swift_beginAccess();
  *a1 = v12;
  *(a1 + 8) = v9 == 0;
  return v12;
}

uint64_t sub_1BD2961BC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 112) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = _s31SpendingSummaryDetailsViewModelVMa(0);
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  sub_1BE0528A4();
  *(v5 + 72) = sub_1BE052894();
  v8 = sub_1BE052844();
  *(v5 + 80) = v8;
  *(v5 + 88) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BD2962B8, v8, v7);
}

uint64_t sub_1BD2962B8()
{
  if ((*(v0 + 112) & 1) == 0 && (v1 = *(v0 + 32)) != 0 && (v2 = *(v1 + 16)) != 0)
  {
    v3 = 0;
    v4 = *(v0 + 56);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    while (1)
    {
      v7 = *(v0 + 64);
      v8 = *(v0 + 24);
      sub_1BD298F90(v5, v7, _s31SpendingSummaryDetailsViewModelVMa);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
      v10 = sub_1BD298E18(&qword_1EBD52550, MEMORY[0x1E6969530]);
      v11 = MEMORY[0x1BFB3FC10](v9, v10);
      sub_1BD298F30(v7, _s31SpendingSummaryDetailsViewModelVMa);
      if (v11 == v8)
      {
        break;
      }

      ++v3;
      v5 += v6;
      if (v2 == v3)
      {
        goto LABEL_7;
      }
    }

    v16 = swift_task_alloc();
    *(v0 + 96) = v16;
    *v16 = v0;
    v16[1] = sub_1BD2964FC;
    v17 = *(v0 + 32);
    v18 = *(v0 + 16);

    return sub_1BD29510C(v18, v3, v17);
  }

  else
  {
LABEL_7:
    v12 = *(v0 + 16);

    v13 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1BD2964FC()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_1BD2966A4;
  }

  else
  {
    v5 = sub_1BD296638;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD296638()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD2966A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD296710()
{
  swift_beginAccess();
  swift_getKeyPath();
  sub_1BD298E18(&qword_1EBD402C0, _s9ViewModelCMa_0);
  sub_1BE048C84();
  sub_1BE04B584();
}

uint64_t sub_1BD29681C()
{

  v1 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel_calendar;
  v2 = sub_1BE04B2F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel___observationRegistrar;
  v4 = sub_1BE04B5D4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD296938()
{
  result = sub_1BE04B2F4();
  if (v1 <= 0x3F)
  {
    result = sub_1BE04B5D4();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1BD296A90()
{
  v0 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_1BD296B30()
{
  sub_1BE04AFE4();
  if (v0 <= 0x3F)
  {
    sub_1BD0F5C4C();
    if (v1 <= 0x3F)
    {
      _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1BD296BD8()
{
  result = qword_1EBD402B8;
  if (!qword_1EBD402B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD402B8);
  }

  return result;
}

uint64_t sub_1BD296C2C(char a1, uint64_t a2)
{
  v4 = sub_1BE04B2D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v35 - v15;
  v17 = sub_1BE04AF64();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v18 + 16);
  v36 = v24;
  v23(v22, a2, v20);
  if (a1)
  {
    if (a1 == 1)
    {
      (*(v5 + 104))(v8, *MEMORY[0x1E6969A78], v4);
      sub_1BD298478(v22, v16);
      (*(v5 + 8))(v8, v4);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
      if ((*(*(v25 - 8) + 48))(v16, 1, v25) == 1)
      {
        (*(v18 + 8))(v22, v36);
        v26 = v16;
LABEL_8:
        sub_1BD0DE53C(v26, &qword_1EBD402D0);
        return 0;
      }

      v31 = sub_1BD298E18(&qword_1EBD52550, MEMORY[0x1E6969530]);
      v29 = MEMORY[0x1BFB3FC10](v25, v31);
      (*(v18 + 8))(v22, v36);
      v32 = v16;
    }

    else
    {
      (*(v5 + 104))(v8, *MEMORY[0x1E6969A68], v4);
      sub_1BD298478(v22, v12);
      (*(v5 + 8))(v8, v4);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
      if ((*(*(v30 - 8) + 48))(v12, 1, v30) == 1)
      {
        (*(v18 + 8))(v22, v36);
        v26 = v12;
        goto LABEL_8;
      }

      v33 = sub_1BD298E18(&qword_1EBD52550, MEMORY[0x1E6969530]);
      v29 = MEMORY[0x1BFB3FC10](v30, v33);
      (*(v18 + 8))(v22, v36);
      v32 = v12;
    }

    sub_1BD0DE53C(v32, &qword_1EBD38DB8);
    return v29;
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v28 = sub_1BD298E18(&qword_1EBD52550, MEMORY[0x1E6969530]);
  v29 = MEMORY[0x1BFB3FC10](v27, v28);
  (*(v18 + 8))(v22, v36);
  return v29;
}

uint64_t sub_1BD297148(int a1, uint64_t a2)
{
  LODWORD(v95) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v91 = &v82 - v5;
  v6 = sub_1BE04B2D4();
  v7 = *(v6 - 8);
  v97 = v6;
  v98 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v94 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v92 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v82 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v82 - v19;
  v21 = sub_1BE04A474();
  v93 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BE04AF64();
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v82 - v31;
  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  v37 = &v82 - v36;
  v96 = v38;
  (*(v38 + 16))(&v82 - v36, a2, v25, v35);
  if (!v95)
  {
    v85 = v28;
    v86 = v16;
    v87 = v20;
    v89 = v21;
    v90 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel_calendar;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39800);
    v43 = v98;
    v44 = *(v98 + 72);
    v45 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v92 = v37;
    v95 = v25;
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1BE0B98D0;
    v47 = *(v43 + 104);
    v48 = v97;
    v47((v46 + v45), *MEMORY[0x1E6969A50], v97);
    v47((v46 + v45 + v44), *MEMORY[0x1E6969A68], v48);
    v47((v46 + v45 + 2 * v44), *MEMORY[0x1E6969A78], v48);
    sub_1BD111674(v46);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1BE04B194();

    sub_1BE04AEF4();
    v88 = v24;
    LOBYTE(v46) = sub_1BE04B244();
    v49 = v96;
    v51 = (v96 + 8);
    v50 = *(v96 + 8);
    v50(v32, v95);
    v52 = v94;
    v83 = *MEMORY[0x1E6969A20];
    v84 = v47;
    (v47)(v94);
    if (v46)
    {
      v53 = v92;
      sub_1BE04AEF4();
      v54 = v87;
      sub_1BD298478(v32, v87);
      v50(v32, v95);
      (*(v98 + 8))(v52, v97);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
      if ((*(*(v55 - 8) + 48))(v54, 1, v55) == 1)
      {
        (*(v93 + 8))(v88, v89);
        v50(v53, v95);
        v56 = &qword_1EBD402D0;
        v57 = v54;
LABEL_15:
        sub_1BD0DE53C(v57, v56);
        return 0;
      }

      v69 = sub_1BD298E18(&qword_1EBD52550, MEMORY[0x1E6969530]);
      v42 = MEMORY[0x1BFB3FC10](v55, v69);
      (*(v93 + 8))(v88, v89);
      v50(v53, v95);
      v68 = v54;
    }

    else
    {
      v82 = v50;
      v87 = v51;
      v63 = v91;
      sub_1BE04B224();
      v64 = v63;
      v66 = v98 + 8;
      v65 = *(v98 + 8);
      v65(v52, v97);
      if ((*(v49 + 48))(v64, 1, v95) == 1)
      {
        (*(v93 + 8))(v88, v89);
        v82(v92, v95);
        v56 = &unk_1EBD39970;
        v57 = v64;
        goto LABEL_15;
      }

      v98 = v66;
      v70 = v85;
      (*(v49 + 32))(v85, v64, v95);
      v71 = v97;
      v84(v52, v83, v97);
      v72 = v52;
      v73 = v86;
      sub_1BD298478(v70, v86);
      v65(v72, v71);
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
      if ((*(*(v74 - 8) + 48))(v73, 1, v74) == 1)
      {
        v75 = v70;
        v76 = v95;
        v77 = v82;
        v82(v75, v95);
        (*(v93 + 8))(v88, v89);
        v77(v92, v76);
        v56 = &qword_1EBD402D0;
        v57 = v73;
        goto LABEL_15;
      }

      v78 = sub_1BD298E18(&qword_1EBD52550, MEMORY[0x1E6969530]);
      v42 = MEMORY[0x1BFB3FC10](v74, v78);
      v79 = v95;
      v80 = v82;
      v82(v70, v95);
      (*(v93 + 8))(v88, v89);
      v80(v92, v79);
      v68 = v73;
    }

LABEL_17:
    sub_1BD0DE53C(v68, &qword_1EBD38DB8);
    return v42;
  }

  if (v95 != 1)
  {
    v58 = v97;
    v59 = v98;
    v60 = v94;
    (*(v98 + 104))(v94, *MEMORY[0x1E6969A68], v97);
    v61 = v92;
    sub_1BD298478(v37, v92);
    (*(v59 + 8))(v60, v58);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
    if ((*(*(v62 - 8) + 48))(v61, 1, v62) == 1)
    {
      (*(v96 + 8))(v37, v25);
      v56 = &qword_1EBD402D0;
      v57 = v61;
      goto LABEL_15;
    }

    v67 = sub_1BD298E18(&qword_1EBD52550, MEMORY[0x1E6969530]);
    v42 = MEMORY[0x1BFB3FC10](v62, v67);
    (*(v96 + 8))(v37, v25);
    v68 = v61;
    goto LABEL_17;
  }

  v39 = v25;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v41 = sub_1BD298E18(&qword_1EBD52550, MEMORY[0x1E6969530]);
  v42 = MEMORY[0x1BFB3FC10](v40, v41);
  (*(v96 + 8))(v37, v39);
  return v42;
}

uint64_t sub_1BD297C14(int a1, uint64_t a2)
{
  LODWORD(v74) = a1;
  v3 = sub_1BE04B2D4();
  v4 = *(v3 - 8);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v3, v6);
  v69 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v63 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v65 = v61 - v13;
  v14 = sub_1BE04A474();
  v71 = *(v14 - 8);
  v72 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v76 = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1BE04AF64();
  v17 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v18);
  v62 = v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v64 = v61 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v61 - v25;
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v31 = v61 - v30;
  v32 = *(v17 + 16);
  v66 = a2;
  v61[0] = v32;
  v61[1] = v17 + 16;
  v32(v61 - v30, a2, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39800);
  v33 = *(v4 + 72);
  v34 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1BE0B6CA0;
  v36 = v35 + v34;
  v37 = *MEMORY[0x1E6969A50];
  v67 = v5;
  v38 = *(v5 + 104);
  v38(v36, v37, v3);
  v38(v36 + v33, *MEMORY[0x1E6969A68], v3);
  sub_1BD111674(v35);
  swift_setDeallocating();
  v68 = v3;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v75 = v31;
  sub_1BE04B194();

  sub_1BE04AEF4();
  v39 = sub_1BE04B244();
  v40 = *(v17 + 8);
  v41 = v26;
  v42 = v73;
  v70 = v17 + 8;
  v40(v41, v73);
  if (!v74)
  {
    v45 = v64;
    v44 = v65;
    if (v39)
    {
      sub_1BE04AEF4();
    }

    else
    {
      (v61[0])(v64, v75, v42);
    }

    v56 = v68;
    v57 = v69;
    v38(v69, *MEMORY[0x1E6969A20], v68);
    sub_1BD298478(v45, v44);
    (*(v67 + 8))(v57, v56);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
    if ((*(*(v58 - 8) + 48))(v44, 1, v58) == 1)
    {
      v40(v45, v42);
      (*(v71 + 8))(v76, v72);
      v40(v75, v42);
      goto LABEL_15;
    }

    v59 = sub_1BD298E18(&qword_1EBD52550, MEMORY[0x1E6969530]);
    v48 = MEMORY[0x1BFB3FC10](v58, v59);
    v40(v45, v42);
    (*(v71 + 8))(v76, v72);
    v40(v75, v42);
LABEL_17:
    sub_1BD0DE53C(v44, &qword_1EBD38DB8);
    return v48;
  }

  if (v74 == 1)
  {
    v74 = v40;
    v43 = v62;
    if (v39)
    {
      sub_1BE04AEF4();
    }

    else
    {
      (v61[0])(v62, v75, v42);
    }

    v44 = v63;
    v50 = v67;
    v49 = v68;
    v51 = v69;
    v38(v69, *MEMORY[0x1E6969A78], v68);
    sub_1BD298478(v43, v44);
    (*(v50 + 8))(v51, v49);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
    if ((*(*(v52 - 8) + 48))(v44, 1, v52) == 1)
    {
      v53 = v74;
      v74(v43, v42);
      (*(v71 + 8))(v76, v72);
      v53(v75, v42);
LABEL_15:
      sub_1BD0DE53C(v44, &qword_1EBD402D0);
      return 0;
    }

    v54 = sub_1BD298E18(&qword_1EBD52550, MEMORY[0x1E6969530]);
    v48 = MEMORY[0x1BFB3FC10](v52, v54);
    v55 = v74;
    v74(v43, v42);
    (*(v71 + 8))(v76, v72);
    v55(v75, v42);
    goto LABEL_17;
  }

  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v47 = sub_1BD298E18(&qword_1EBD52550, MEMORY[0x1E6969530]);
  v48 = MEMORY[0x1BFB3FC10](v46, v47);
  (*(v71 + 8))(v76, v72);
  v40(v75, v42);
  return v48;
}

uint64_t sub_1BD298478@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v41 = a1;
  v40 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38810);
  MEMORY[0x1EEE9AC00](v39, v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v38 = &v37 - v7;
  v8 = sub_1BE04AF64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D8);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v37 - v19;
  v21 = sub_1BE04A2B4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B124();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1BD0DE53C(v20, &qword_1EBD402D8);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
    return (*(*(v26 - 8) + 56))(v40, 1, 1, v26);
  }

  else
  {
    (*(v22 + 32))(v25, v20, v21);
    sub_1BE04A294();
    sub_1BE04A284();
    sub_1BD298E18(&qword_1EBD525D0, MEMORY[0x1E6969530]);
    v28 = sub_1BE052314();
    result = (*(v22 + 8))(v25, v21);
    if (v28)
    {
      v29 = *(v9 + 32);
      v30 = v38;
      v29(v38, v16, v8);
      v31 = v39;
      v29((v30 + *(v39 + 48)), v12, v8);
      sub_1BD0DE19C(v30, v4, &unk_1EBD38810);
      v32 = *(v31 + 48);
      v33 = v40;
      v29(v40, v4, v8);
      v34 = *(v9 + 8);
      v34(&v4[v32], v8);
      sub_1BD0DE204(v30, v4, &unk_1EBD38810);
      v35 = *(v31 + 48);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
      v29(&v33[*(v36 + 36)], &v4[v35], v8);
      v34(v4, v8);
      return (*(*(v36 - 8) + 56))(v33, 0, 1, v36);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BD298910()
{
  v1[4] = v0;
  sub_1BE0528A4();
  v1[5] = sub_1BE052894();
  v3 = sub_1BE052844();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BD2989A8, v3, v2);
}

uint64_t sub_1BD2989A8()
{
  v1 = v0[4];
  swift_getKeyPath();
  v0[2] = v1;
  sub_1BD298E18(&qword_1EBD402C0, _s9ViewModelCMa_0);
  sub_1BE04B594();

  v2 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedPeriod;
  v3 = *(v1 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedPeriod);
  swift_getKeyPath();
  v0[3] = v1;
  sub_1BE04B594();

  v4 = *(v1 + v2);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1BD298B10;

  return sub_1BD2935D4(v3, v4);
}

uint64_t sub_1BD298B10()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1BD298C30, v3, v2);
}

uint64_t sub_1BD298C30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD298C94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD0F985C;

  return sub_1BD298910();
}

uint64_t sub_1BD298D20()
{
  sub_1BE0528A4();
  *(v0 + 16) = sub_1BE052894();
  v2 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD298DB4, v2, v1);
}

uint64_t sub_1BD298DB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD298E18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD298E60(uint64_t result)
{
  if (result)
  {
    sub_1BE048C84();
    sub_1BE048C84();

    return sub_1BE048C84();
  }

  return result;
}

uint64_t sub_1BD298EC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD298F30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD298F90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD298FF8(uint64_t a1, uint64_t a2)
{
  v4 = _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1BD29905C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedSpendingSummaryID;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

uint64_t sub_1BD299098(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402E0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v22 - v15;
  v18 = *(v17 + 56);
  sub_1BD298F90(a1, &v22 - v15, _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa);
  sub_1BD298F90(a2, &v16[v18], _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1BD298F90(v16, v12, _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      sub_1BD298EC8(&v16[v18], v8, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model);
      v20 = sub_1BDA12BA0(v12, v8);
      sub_1BD298F30(v8, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model);
      sub_1BD298F30(v12, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model);
      sub_1BD298F30(v16, _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa);
      return v20 & 1;
    }

    sub_1BD298F30(v12, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model);
    goto LABEL_6;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1BD0DE53C(v16, &qword_1EBD402E0);
    v20 = 0;
    return v20 & 1;
  }

  sub_1BD298F30(v16, _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa);
  v20 = 1;
  return v20 & 1;
}

id sub_1BD2993F8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningCarEducationFlowItem_viewController] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningCarEducationFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningCarEducationFlowItem_identifier];
  *v6 = 0xD000000000000014;
  *(v6 + 1) = 0x80000001BE120EA0;
  *&v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningCarEducationFlowItem__debugConfiguration] = &type metadata for ProvisioningScreenDebugConfiguration;
  *&v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningCarEducationFlowItem_context] = a1;
  *&v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningCarEducationFlowItem_provisionedPasses] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1BD299598(uint64_t (*a1)(unint64_t, unint64_t, void, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v3 = sub_1BD188160(v1, KeyPath);

  v4 = *(v3 + 16);
  v5 = (v3 + 32);
  while (2)
  {
    if (v4)
    {
      switch(*v5)
      {
        case 0xA:

          break;
        default:
          v6 = sub_1BE053B84();

          ++v5;
          --v4;
          if ((v6 & 1) == 0)
          {
            continue;
          }

          break;
      }

      v19 = 0x6F63206775626564;
      v17 = 0xEC0000006769666ELL;
LABEL_22:
      v20 = 0;
      return a1(v19, v17, 0, v20);
    }

    break;
  }

  v7 = sub_1BE04BC84();
  v8 = [v7 isCarKeyPass];

  if (v8)
  {
    v9 = sub_1BE04BCA4();
    v10 = v9;
    v11 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v9 >> 62)
    {
LABEL_26:
      v12 = sub_1BE053704();
    }

    else
    {
      v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = 0;
    while (v12 != v13)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1BFB40900](v13, v10);
      }

      else
      {
        if (v13 >= *(v11 + 16))
        {
          goto LABEL_25;
        }

        v14 = *(v10 + 8 * v13 + 32);
      }

      v15 = v14;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = [v14 type];

      ++v13;
      if (v16 == 2)
      {

        v18 = "not car key pass";
        v19 = 0xD000000000000020;
        goto LABEL_19;
      }
    }

    v19 = 0;
    v17 = 0;
    goto LABEL_22;
  }

  v18 = "ducationFlowItem";
  v19 = 0xD000000000000010;
LABEL_19:
  v17 = v18 | 0x8000000000000000;
  v20 = 1;
  return a1(v19, v17, 0, v20);
}

uint64_t sub_1BD2999C4(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningCarEducationFlowItem_context];
  v6 = *&v2[OBJC_IVAR____TtC9PassKitUI32ProvisioningCarEducationFlowItem_provisionedPasses];
  v7 = objc_allocWithZone(type metadata accessor for ProvisioningCarEducationViewController());
  sub_1BE048964();
  v8 = v6;
  v9 = v2;
  v10 = sub_1BD299B80(v5, v8, v9, v7);
  v11 = *&v9[OBJC_IVAR____TtC9PassKitUI32ProvisioningCarEducationFlowItem_viewController];
  *&v9[OBJC_IVAR____TtC9PassKitUI32ProvisioningCarEducationFlowItem_viewController] = v10;
  v12 = v10;

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  sub_1BE048964();
  sub_1BD65C504(sub_1BD19E0B8, v13);
}

uint64_t sub_1BD299AC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI32ProvisioningCarEducationFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD299AFC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI32ProvisioningCarEducationFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD299B50()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI32ProvisioningCarEducationFlowItem_viewController);
  v2 = v1;
  return v1;
}

char *sub_1BD299B80(uint64_t a1, void *a2, void *a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_1BE04BAC4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a4[OBJC_IVAR____TtC9PassKitUI38ProvisioningCarEducationViewController_reporter] = 0;
  *&a4[OBJC_IVAR____TtC9PassKitUI38ProvisioningCarEducationViewController_provisioningContext] = a1;
  *&a4[OBJC_IVAR____TtC9PassKitUI38ProvisioningCarEducationViewController_provisionedPasses] = a2;
  *&a4[OBJC_IVAR____TtC9PassKitUI38ProvisioningCarEducationViewController_delegate + 8] = &off_1F3B9B0A0;
  swift_unknownObjectUnownedInit();
  sub_1BE048964();
  v14 = a2;
  sub_1BE04BC34();
  v15 = sub_1BE04B9A4();
  (*(v10 + 8))(v13, v9);
  v21.receiver = a4;
  v21.super_class = ObjectType;
  result = objc_msgSendSuper2(&v21, sel_initWithContext_, v15);
  if (result)
  {
    v17 = result;
    [v17 setExplanationViewControllerDelegate_];
    v18 = [v17 navigationItem];
    [v18 setHidesBackButton_];

    sub_1BE052434();
    v19 = sub_1BE04BB74();

    v20 = *&v17[OBJC_IVAR____TtC9PassKitUI38ProvisioningCarEducationViewController_reporter];
    *&v17[OBJC_IVAR____TtC9PassKitUI38ProvisioningCarEducationViewController_reporter] = v19;

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1BD299D94(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (!v4)
  {
    return !v5;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = a2[2];
  v7 = a1[2];
  if ((sub_1BD3FDBB8(v4, v5) & 1) == 0)
  {
    return 0;
  }

  sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
  return sub_1BE053074() & (v7 == v6);
}

void *PKPassDetailAccountCredentialsSectionController.sectionIdentifiers.getter()
{
  if ([v0 currentSegment])
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = &v0[OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState];
  v3 = *&v0[OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState];
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = *(v2 + 2);
  v5 = *(v3 + 16);
  v6 = *(v2 + 1);
  if (!v5)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v7 = v6;
  v8 = [v6 isAccountEnabled];

  if (v8)
  {
    v9 = v4 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    return MEMORY[0x1E69E7CC0];
  }

  return &unk_1F3B8D540;
}

char *PKPassDetailAccountCredentialsSectionController.init(pass:delegate:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v5 = &v2[OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState];
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *v5 = 0;
  v6 = OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_pass;
  *&v2[OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_pass] = 0;
  swift_unknownObjectWeakAssign();
  v7 = *&v2[v6];
  *&v2[v6] = a1;
  v8 = a1;

  sub_1BE049DD4();
  v9 = [v8 primaryAccountIdentifier];
  sub_1BE052434();

  v10 = sub_1BE049DB4();

  *&v2[OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_accountProvider] = v10;
  v16.receiver = v2;
  v16.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v16, sel_init);
  v12 = *&v11[OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_accountProvider];
  v13 = v11;
  v14 = v12;
  sub_1BE049DC4();

  swift_unknownObjectRelease();
  return v13;
}

uint64_t PKPassDetailAccountCredentialsSectionController.fetchPaymentInformation()()
{
  v1[2] = v0;
  v2 = sub_1BE04D214();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1BE049EF4();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  sub_1BE0528A4();
  v1[9] = sub_1BE052894();
  v5 = sub_1BE052844();
  v1[10] = v5;
  v1[11] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD29A2D0, v5, v4);
}

uint64_t sub_1BD29A2D0()
{
  v3 = (*MEMORY[0x1E6967C10] + MEMORY[0x1E6967C10]);
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1BD29A380;

  return v3();
}

uint64_t sub_1BD29A380(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 104) = a1;
  *(v4 + 112) = v1;

  v5 = *(v3 + 88);
  v6 = *(v3 + 80);
  if (v1)
  {
    v7 = sub_1BD29A93C;
  }

  else
  {
    v7 = sub_1BD29A4C4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1BD29A4C4()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = *(v0[2] + OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_pass);
    if (v2)
    {
      v3 = v1;
      v4 = [v2 primaryAccountIdentifier];
      sub_1BE052434();

      sub_1BE049864();
      sub_1BE049854();
      sub_1BE049844();

      sub_1BE049924();
      sub_1BE049914();
      sub_1BE049EE4();
      v5 = swift_task_alloc();
      v0[15] = v5;
      *v5 = v0;
      v5[1] = sub_1BD29A6B8;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEDC1CF0]();
  }

  else
  {
    v6 = v0[2];

    v7 = (v6 + OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState);
    v8 = *(v6 + OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState);
    v9 = *(v6 + OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState + 8);
    v7[1] = 0;
    v7[2] = 0;
    *v7 = 0;
    sub_1BD29C438(v8, v9);
    Strong = swift_unknownObjectWeakLoadStrong();
    v11 = v0[13];
    if (Strong)
    {
      [Strong didReloadBankConnectAccountCredentials];
      swift_unknownObjectRelease();
    }

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1BD29A6B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {

    v5 = *(v4 + 80);
    v6 = *(v4 + 88);
    v7 = sub_1BD29AAC4;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = *(v4 + 80);
    v6 = *(v4 + 88);
    v7 = sub_1BD29A7E4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1BD29A7E4()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[2];

  sub_1BE048C84();
  v7 = [v2 account];
  v8 = [v2 consentStatus];
  v9 = (v6 + OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState);
  v11 = *(v6 + OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState);
  v10 = *(v6 + OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState + 8);
  *v9 = v1;
  v9[1] = v7;
  v9[2] = v8;
  sub_1BD29C438(v11, v10);
  sub_1BD29C478(v1);

  (*(v5 + 8))(v3, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = v0[13];
  if (Strong)
  {
    [Strong didReloadBankConnectAccountCredentials];
    swift_unknownObjectRelease();
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1BD29A93C()
{

  v1 = v0[14];
  sub_1BE04D114();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1BD026000, v3, v4, "Unable to obtain account payment information: %@", v5, 0xCu);
    sub_1BD1E236C(v6);
    MEMORY[0x1BFB45F20](v6, -1, -1);
    MEMORY[0x1BFB45F20](v5, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1BD29AAC4()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[7];

  (*(v4 + 8))(v2, v3);
  v5 = v0[16];
  sub_1BE04D114();
  v6 = v5;
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C34();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1BD026000, v7, v8, "Unable to obtain account payment information: %@", v9, 0xCu);
    sub_1BD1E236C(v10);
    MEMORY[0x1BFB45F20](v10, -1, -1);
    MEMORY[0x1BFB45F20](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1BD29ADE4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1BE0528A4();
  v2[4] = sub_1BE052894();
  v4 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD29AE7C, v4, v3);
}

uint64_t sub_1BD29AE7C()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1BD29AF2C;

  return PKPassDetailAccountCredentialsSectionController.fetchPaymentInformation()();
}

uint64_t sub_1BD29AF2C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

Swift::Void __swiftcall PKPassDetailAccountCredentialsSectionController.update(pass:)(PKPaymentPass pass)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20 - v6;
  v8 = OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_pass;
  v9 = *&v1[OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_pass];
  if (v9)
  {
    sub_1BD0E5E8C(0, &unk_1EBD40340);
    v10 = pass.super.super.super.super.isa;
    v11 = v9;
    v12 = sub_1BE053074();

    if (v12)
    {
      return;
    }

    v13 = *&v2[v8];
  }

  else
  {
    v13 = 0;
  }

  *&v2[v8] = pass;

  v14 = sub_1BE0528D4();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  sub_1BE0528A4();
  v15 = pass.super.super.super.super.isa;
  v16 = v2;
  v17 = sub_1BE052894();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v16;
  sub_1BD122C00(0, 0, v7, &unk_1BE0C7E30, v18);
}

uint64_t sub_1BD29B22C()
{
  v0[2] = sub_1BE0528A4();
  v0[3] = sub_1BE052894();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1BD16DB04;

  return PKPassDetailAccountCredentialsSectionController.fetchPaymentInformation()();
}

id PKPassDetailAccountCredentialsSectionController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PKPassDetailAccountCredentialsSectionController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id PKPassDetailAccountCredentialsSectionController.tableView(_:cellForRowAt:sectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a3 != 0xD000000000000019 || 0x80000001BE117570 != a4) && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  sub_1BD29B57C();
  v6 = sub_1BE052404();

  v7 = [v4 infoCellWithPrimaryText:v6 detailText:0 cellStyle:0 forTableView:a1];

  if (v7)
  {
    [v7 setAccessoryType_];
  }

  v8 = *MEMORY[0x1E69B93B8];
  v9 = v7;
  PKAccessibilityIDSet(v9, v8);

  return v7;
}

void sub_1BD29B57C()
{
  v2 = sub_1BE049D04();
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v16 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState);
  if (v11)
  {
    sub_1BE048C84();
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v17 = *(v11 + 16);
  if (v17)
  {
    v12 = 0;
    v16 = v3 + 16;
    v13 = *MEMORY[0x1E6967BD0];
    v1 = (v3 + 8);
    while (v12 < *(v11 + 16))
    {
      (*(v3 + 16))(v10, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v2);
      (*(v3 + 32))(v6, v10, v2);
      if ((*(v3 + 88))(v6, v2) == v13)
      {
        goto LABEL_11;
      }

      ++v12;
      (*v1)(v6, v2);
      if (v17 == v12)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    v14 = sub_1BE052404();
    v2 = PKLocalizedBankConnectString(v14);

    if (v2)
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_11:

    (*v1)(v6, v2);
    v15 = sub_1BE052404();
    v2 = PKLocalizedBankConnectString(v15);

    if (v2)
    {
LABEL_12:
      sub_1BE052434();

      return;
    }
  }

  __break(1u);
}

Swift::Int __swiftcall PKPassDetailAccountCredentialsSectionController.tableView(_:numberOfRowsInSectionIdentifier:)(UITableView *_, Swift::String numberOfRowsInSectionIdentifier)
{
  if (numberOfRowsInSectionIdentifier._countAndFlagsBits == 0xD000000000000019 && 0x80000001BE117570 == numberOfRowsInSectionIdentifier._object)
  {
    return 1;
  }

  else
  {
    return sub_1BE053B84() & 1;
  }
}

uint64_t sub_1BD29BA3C(uint64_t a1, void *a2)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051F54();
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE051FA4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &aBlock[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    if (a2)
    {
      v19 = a2;
      sub_1BE04D114();
      v20 = a2;
      v21 = sub_1BE04D204();
      v22 = sub_1BE052C34();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        v25 = a2;
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 4) = v26;
        *v24 = v26;
        _os_log_impl(&dword_1BD026000, v21, v22, "Policy evaluation for showing account credentials has failed: %@", v23, 0xCu);
        sub_1BD1E236C(v24);
        MEMORY[0x1BFB45F20](v24, -1, -1);
        MEMORY[0x1BFB45F20](v23, -1, -1);
        v27 = v21;
      }

      else
      {
        v27 = v18;
        v18 = v21;
      }

      return (*(v4 + 8))(v7, v3);
    }

    else
    {
      sub_1BD0E5E8C(0, &qword_1EBD35E90);
      v28 = sub_1BE052D54();
      v29 = swift_allocObject();
      *(v29 + 16) = v18;
      aBlock[4] = sub_1BD29D3F0;
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_28_0;
      v30 = _Block_copy(aBlock);
      v31 = v18;

      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD29D3F8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
      sub_1BD14ECDC();
      sub_1BE053664();
      MEMORY[0x1BFB3FDF0](0, v16, v11, v30);
      _Block_release(v30);

      (*(v32 + 8))(v11, v8);
      return (*(v13 + 8))(v16, v12);
    }
  }

  return result;
}

uint64_t sub_1BD29BEBC(uint64_t a1)
{
  v2 = sub_1BE049D04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = *(a1 + OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState);
    v10 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      sub_1BE048C84();
      v11 = *(v9 + 16);
      if (v11)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
      v11 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v11)
      {
LABEL_4:
        v19[2] = a1;
        v20 = v8;
        v22 = v10;
        sub_1BE0538E4();
        v13 = *(v3 + 16);
        v12 = v3 + 16;
        v21 = v13;
        v14 = *(v12 + 64);
        v19[1] = v9;
        v15 = v9 + ((v14 + 32) & ~v14);
        v16 = *(v12 + 56);
        do
        {
          v21(v6, v15, v2);
          sub_1BE049CF4();
          (*(v12 - 8))(v6, v2);
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
          v15 += v16;
          --v11;
        }

        while (v11);

        v8 = v20;
        goto LABEL_9;
      }
    }

LABEL_9:
    sub_1BD0E5E8C(0, &qword_1EBD3CE98);
    v17 = sub_1BE052724();

    sub_1BD29B57C();
    v18 = sub_1BE052404();

    [v8 didEvaluatePolicyToOpenBankConnectAccountCredentials:v17 accountCredentialsTitle:v18];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *PKPassDetailAccountCredentialsSectionController.accountDidChange(to:)(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState);
  result = *(v1 + OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState);
  if (result)
  {
    v5 = v3[2];
    v6 = sub_1BE048C84();
    if (a1)
    {
      v7 = *v3;
      v8 = v3[1];
      *v3 = v6;
      v3[1] = a1;
      v3[2] = v5;
      v9 = a1;
      v10 = v7;
      v11 = v8;
    }

    else
    {

      v10 = *v3;
      v11 = v3[1];
      v3[1] = 0;
      v3[2] = 0;
      *v3 = 0;
    }

    sub_1BD29C438(v10, v11);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result didReloadBankConnectAccountCredentials];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *PKPassDetailAccountCredentialsSectionController.consentStatusDidChange(to:)(void *result)
{
  v2 = v1 + OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState;
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController_connectionState))
  {
    if (*(v2 + 16) != result)
    {
      *(v2 + 16) = result;
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        [result didReloadBankConnectAccountCredentials];

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_1BD29C438(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

void sub_1BD29C478(uint64_t a1)
{
  v2 = sub_1BE049D04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v49 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v54 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v13 = v15;
    LODWORD(v56) = *MEMORY[0x1E6967BD0];
    v52 = *MEMORY[0x1E6967BE0];
    v49 = *MEMORY[0x1E6967BD8];
    v16 = (v14 - 8);
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v55 = *(v14 + 56);
    (v15)(v11, v17, v2, v9);
    while (1)
    {
      v13(v6, v11, v2);
      v22 = (*(v14 + 72))(v6, v2);
      if (v22 == v56)
      {
        break;
      }

      if (v22 == v52)
      {
        v18 = &v59 + 4;
        goto LABEL_4;
      }

      if (v22 != v49)
      {
        v57 = 0;
        v58 = 0xE000000000000000;
        sub_1BE053834();
        MEMORY[0x1BFB3F610](0xD00000000000001DLL, 0x80000001BE1211C0);
        sub_1BE053974();
        sub_1BE053994();
        __break(1u);
        return;
      }

      v19 = &v60;
LABEL_5:
      *(v19 - 64) = 1;
      v20 = *v16;
      (*v16)(v11, v2);
      v20(v6, v2);
      v17 += v55;
      if (!--v12)
      {
        goto LABEL_13;
      }

      (v13)(v11, v17, v2, v21);
    }

    v18 = &v61;
LABEL_4:
    *(v18 - 64) = 1;
    v19 = &v61 + 4;
    goto LABEL_5;
  }

  v51 = 0;
  v50 = 0;
  v53 = 0;
  v54 = 0;
LABEL_13:
  v56 = *MEMORY[0x1E69BB6F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0BA740;
  v24 = *MEMORY[0x1E69BABE8];
  *(inited + 32) = *MEMORY[0x1E69BABE8];
  v25 = sub_1BE052434();
  v26 = MEMORY[0x1E69BA680];
  *(inited + 40) = v25;
  *(inited + 48) = v27;
  v28 = *v26;
  *(inited + 56) = *v26;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v29;
  v30 = *MEMORY[0x1E69BA2A0];
  if (v54)
  {
    v31 = 1702195828;
  }

  else
  {
    v31 = 0x65736C6166;
  }

  if (v54)
  {
    v32 = 0xE400000000000000;
  }

  else
  {
    v32 = 0xE500000000000000;
  }

  *(inited + 80) = v30;
  *(inited + 88) = v31;
  v33 = *MEMORY[0x1E69BB168];
  *(inited + 96) = v32;
  *(inited + 104) = v33;
  if (v53)
  {
    v34 = 1702195828;
  }

  else
  {
    v34 = 0x65736C6166;
  }

  if (v53)
  {
    v35 = 0xE400000000000000;
  }

  else
  {
    v35 = 0xE500000000000000;
  }

  *(inited + 112) = v34;
  *(inited + 120) = v35;
  v36 = *MEMORY[0x1E69BB2A0];
  if (v50)
  {
    v37 = 1702195828;
  }

  else
  {
    v37 = 0x65736C6166;
  }

  if (v50)
  {
    v38 = 0xE400000000000000;
  }

  else
  {
    v38 = 0xE500000000000000;
  }

  *(inited + 128) = v36;
  *(inited + 136) = v37;
  v39 = *MEMORY[0x1E69BA8D8];
  *(inited + 144) = v38;
  *(inited + 152) = v39;
  if (v51)
  {
    v40 = 1702195828;
  }

  else
  {
    v40 = 0x65736C6166;
  }

  if (v51)
  {
    v41 = 0xE400000000000000;
  }

  else
  {
    v41 = 0xE500000000000000;
  }

  v55 = objc_opt_self();
  *(inited + 160) = v40;
  *(inited + 168) = v41;
  v42 = v24;
  v43 = v28;
  v44 = v30;
  v45 = v33;
  v46 = v36;
  v47 = v39;
  sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD29D3F8(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey);
  v48 = sub_1BE052224();

  [v55 subject:v56 sendEvent:v48];
}

uint64_t sub_1BD29C9B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD126968;

  return sub_1BD29B22C();
}

void _s9PassKitUI47PKPassDetailAccountCredentialsSectionControllerC9tableView_14didSelectRowAt17sectionIdentifierySo07UITableK0C_10Foundation9IndexPathVSStF_0(void *a1, uint64_t a2)
{
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04BD74();
  v60 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v58 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v54 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v54 - v19;
  v59 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
  if (![v59 canEvaluatePolicy:1025 error:0])
  {
    sub_1BE04D114();
    v50 = sub_1BE04D204();
    v51 = sub_1BE052C34();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1BD026000, v50, v51, "Can't evaluate policy to show account credentials", v52, 2u);
      MEMORY[0x1BFB45F20](v52, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    goto LABEL_9;
  }

  v54[0] = v2;
  v54[1] = a2;
  v55 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BDF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v61[0] = 2;
  sub_1BE0537C4();
  v22 = *MEMORY[0x1E69B8040];
  v56 = *(v60 + 104);
  v56(v20, v22, v10);
  v23 = PKPassKitBundle();
  if (!v23)
  {
    __break(1u);
    goto LABEL_11;
  }

  v24 = v23;
  v25 = sub_1BE04B6F4();
  v27 = v26;

  v28 = *(v60 + 8);
  v60 += 8;
  v57 = v28;
  v28(v20, v10);
  *(inited + 96) = MEMORY[0x1E69E6158];
  *(inited + 72) = v25;
  *(inited + 80) = v27;
  v61[0] = 1037;
  sub_1BE0537C4();
  v29 = v56;
  v56(v16, v22, v10);
  v30 = PKPassKitBundle();
  if (!v30)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v31 = v30;
  v32 = sub_1BE04B6F4();
  v34 = v33;

  v57(v16, v10);
  *(inited + 168) = MEMORY[0x1E69E6158];
  *(inited + 144) = v32;
  *(inited + 152) = v34;
  v61[0] = 1031;
  sub_1BE0537C4();
  v35 = v58;
  v29(v58, v22, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1BE0B69E0;
  v37 = PKDeviceName();
  if (v37)
  {
    v38 = v37;
    v39 = sub_1BE052434();
    v41 = v40;

    v42 = MEMORY[0x1E69E6158];
    *(v36 + 56) = MEMORY[0x1E69E6158];
    *(v36 + 64) = sub_1BD110550();
    *(v36 + 32) = v39;
    *(v36 + 40) = v41;
    v43 = sub_1BE04B714();
    v45 = v44;

    v57(v35, v10);
    *(inited + 240) = v42;
    *(inited + 216) = v43;
    *(inited + 224) = v45;
    sub_1BD1AB16C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD403B0);
    swift_arrayDestroy();
    v46 = sub_1BE052224();

    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v61[4] = sub_1BD29D3E8;
    v61[5] = v47;
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 1107296256;
    v61[2] = sub_1BD1AA864;
    v61[3] = &block_descriptor_44;
    v48 = _Block_copy(v61);

    v49 = v59;
    [v59 evaluatePolicy:1025 options:v46 reply:v48];
    _Block_release(v48);

    a1 = v55;
LABEL_9:
    v53 = sub_1BE04B3C4();
    [a1 deselectRowAtIndexPath:v53 animated:1];

    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI47PKPassDetailAccountCredentialsSectionControllerC15ConnectionState33_A4B27A7D513261998825FF2A94BF63CELLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BD29D158(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1BD29D1A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1BD29D200(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
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

uint64_t sub_1BD29D230()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD29ADE4(v2, v3);
}

uint64_t objectdestroy_11Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD29D31C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD992C1C(a1, v4, v5, v6);
}

uint64_t sub_1BD29D3F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD29D45C()
{
  result = qword_1EBD403B8[0];
  if (!qword_1EBD403B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBD403B8);
  }

  return result;
}

uint64_t sub_1BD29D4B0()
{
  v1 = sub_1BE051AD4();
  v37 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40528);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40450);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40530);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v36 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v36 - v23;
  if ((*(v0 + 17) & 1) == 0 && (*(v0 + 16) & 1) == 0)
  {
    sub_1BD70A2C8(v12);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
    if ((*(*(v27 - 8) + 48))(v12, 1, v27) == 1)
    {
      sub_1BD0DE53C(v12, &qword_1EBD40450);
      v28 = 1;
    }

    else
    {
      MEMORY[0x1BFB3E970](v27);
      sub_1BD0DE53C(v12, &qword_1EBD40520);
      v28 = 0;
    }

    v29 = v37;
    v30 = *(v37 + 56);
    v30(v24, v28, 1, v1);
    (*(v29 + 104))(v20, *MEMORY[0x1E697D710], v1);
    v30(v20, 0, 1, v1);
    v31 = *(v5 + 48);
    sub_1BD0DE19C(v24, v8, &qword_1EBD40530);
    sub_1BD0DE19C(v20, &v8[v31], &qword_1EBD40530);
    v32 = *(v29 + 48);
    if (v32(v8, 1, v1) == 1)
    {
      sub_1BD0DE53C(v20, &qword_1EBD40530);
      sub_1BD0DE53C(v24, &qword_1EBD40530);
      if (v32(&v8[v31], 1, v1) == 1)
      {
        sub_1BD0DE53C(v8, &qword_1EBD40530);
        v25 = 0;
        return v25 & 1;
      }
    }

    else
    {
      sub_1BD0DE19C(v8, v16, &qword_1EBD40530);
      if (v32(&v8[v31], 1, v1) != 1)
      {
        v33 = v37;
        (*(v37 + 32))(v4, &v8[v31], v1);
        sub_1BD2A27E0(&qword_1EBD40538, MEMORY[0x1E697D718]);
        v34 = sub_1BE052334();
        v35 = *(v33 + 8);
        v35(v4, v1);
        sub_1BD0DE53C(v20, &qword_1EBD40530);
        sub_1BD0DE53C(v24, &qword_1EBD40530);
        v35(v16, v1);
        sub_1BD0DE53C(v8, &qword_1EBD40530);
        v25 = v34 ^ 1;
        return v25 & 1;
      }

      sub_1BD0DE53C(v20, &qword_1EBD40530);
      sub_1BD0DE53C(v24, &qword_1EBD40530);
      (*(v37 + 8))(v16, v1);
    }

    sub_1BD0DE53C(v8, &qword_1EBD40528);
    v25 = 1;
    return v25 & 1;
  }

  v25 = 1;
  return v25 & 1;
}

uint64_t sub_1BD29DA24(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE051AD4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40528);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40450);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40530);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v46 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v27 = &v46 - v26;
  if (*(v2 + 16) != 1)
  {
    goto LABEL_11;
  }

  v46 = v8;
  v47 = v25;
  v48 = v5;
  v28 = (v2 + *(a1 + 68));
  v29 = *v28;
  v30 = *(v28 + 2);
  v51 = v29;
  v52 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  sub_1BE0516A4();
  v32 = v49;
  v31 = v50;

  v33 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v33 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {
    sub_1BD70A2C8(v16);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
    if ((*(*(v34 - 8) + 48))(v16, 1, v34) == 1)
    {
      sub_1BD0DE53C(v16, &qword_1EBD40450);
      v35 = 1;
    }

    else
    {
      MEMORY[0x1BFB3E970](v34);
      sub_1BD0DE53C(v16, &qword_1EBD40520);
      v35 = 0;
    }

    v36 = v48;
    v37 = *(v48 + 56);
    v37(v27, v35, 1, v4);
    (*(v36 + 104))(v22, *MEMORY[0x1E697D708], v4);
    v37(v22, 0, 1, v4);
    v38 = *(v9 + 48);
    sub_1BD0DE19C(v27, v12, &qword_1EBD40530);
    sub_1BD0DE19C(v22, &v12[v38], &qword_1EBD40530);
    v39 = *(v36 + 48);
    if (v39(v12, 1, v4) == 1)
    {
      sub_1BD0DE53C(v22, &qword_1EBD40530);
      sub_1BD0DE53C(v27, &qword_1EBD40530);
      if (v39(&v12[v38], 1, v4) == 1)
      {
        sub_1BD0DE53C(v12, &qword_1EBD40530);
LABEL_11:
        LOBYTE(v33) = 0;
        return v33 & 1;
      }
    }

    else
    {
      v40 = v47;
      sub_1BD0DE19C(v12, v47, &qword_1EBD40530);
      if (v39(&v12[v38], 1, v4) != 1)
      {
        v41 = v46;
        (*(v36 + 32))(v46, &v12[v38], v4);
        sub_1BD2A27E0(&qword_1EBD40538, MEMORY[0x1E697D718]);
        v42 = v40;
        v43 = sub_1BE052334();
        v44 = *(v36 + 8);
        v44(v41, v4);
        sub_1BD0DE53C(v22, &qword_1EBD40530);
        sub_1BD0DE53C(v27, &qword_1EBD40530);
        v44(v42, v4);
        sub_1BD0DE53C(v12, &qword_1EBD40530);
        LOBYTE(v33) = v43 ^ 1;
        return v33 & 1;
      }

      sub_1BD0DE53C(v22, &qword_1EBD40530);
      sub_1BD0DE53C(v27, &qword_1EBD40530);
      (*(v36 + 8))(v40, v4);
    }

    sub_1BD0DE53C(v12, &qword_1EBD40528);
    LOBYTE(v33) = 1;
  }

  return v33 & 1;
}

uint64_t sub_1BD29DFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v19 = type metadata accessor for ContactFormItemRow();
  v20 = v19[16];
  *(a9 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  swift_storeEnumTagMultiPayload();
  v21 = a9 + v19[17];
  sub_1BE051694();
  *v21 = v36;
  *(v21 + 16) = v37;
  v22 = a9 + v19[18];
  sub_1BE051694();
  *v22 = v36;
  *(v22 + 16) = v37;
  v23 = a9 + v19[19];
  sub_1BE051694();
  *v23 = v36;
  *(v23 + 8) = *(&v36 + 1);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  *(a9 + 18) = a7;
  v24 = v19[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a9 + v24, a10, AssociatedTypeWitness);
  v26 = v19[20];
  sub_1BE0534B4();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  v27 = sub_1BE04E264();
  result = (*(*(v27 - 8) + 32))(a9 + v26, a11, v27);
  v29 = (a9 + v19[14]);
  *v29 = a12;
  v29[1] = a13;
  v30 = (a9 + v19[15]);
  *v30 = a14;
  v30[1] = a15;
  *(a9 + 24) = a7;
  *(a9 + 32) = a8;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  return result;
}

uint64_t sub_1BD29E2C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v107 = a3;
  v105 = *(a1 - 8);
  v106 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v104 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1BE04FF64();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103, v6);
  v101 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40460);
  v9 = *(a1 + 16);
  v108 = *(a1 + 24);
  v10 = a1;
  v80 = a1;
  swift_getAssociatedTypeWitness();
  v11 = sub_1BE0534B4();
  v12 = sub_1BD2A28D8(&qword_1EBD40468, &qword_1EBD40460, &unk_1BE0C8070, sub_1BD2A1FE8);
  v13 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  *&v127 = v8;
  *(&v127 + 1) = v11;
  v128 = v12;
  v129 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD404C0);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051774();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD404C8);
  swift_getTupleTypeMetadata2();
  v82 = sub_1BE051E34();
  v81 = swift_getWitnessTable();
  v15 = sub_1BE051854();
  v96 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v78 = &v75 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD404D0);
  v87 = v15;
  v18 = sub_1BE04EBD4();
  v94 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v88 = &v75 - v20;
  v21 = swift_getWitnessTable();
  v83 = v21;
  v22 = sub_1BD0DE4F4(&qword_1EBD404D8, &qword_1EBD404D0);
  v125 = v21;
  v126 = v22;
  v98 = MEMORY[0x1E697E858];
  v84 = swift_getWitnessTable();
  *&v127 = v18;
  *(&v127 + 1) = v84;
  v90 = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v91 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v23);
  v77 = &v75 - v24;
  sub_1BE0500D4();
  v89 = sub_1BE04EBD4();
  v93 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89, v25);
  v79 = &v75 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD51F60);
  v95 = sub_1BE04EBD4();
  v99 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v95);
  v85 = &v75 - v27;
  v28 = sub_1BE04EBD4();
  v100 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v92 = &v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v97 = &v75 - v33;
  v34 = *(v3 + 32);
  v35 = *(v3 + 40);
  v36 = *(v3 + 48);
  v37 = (v3 + *(v10 + 68));
  v38 = *v37;
  v39 = *(v37 + 2);
  v40 = *(v3 + 24);
  v41 = v3;
  v127 = v38;
  v128 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  sub_1BE0516A4();
  LOBYTE(v34) = sub_1BD53ED28(v123, v124, v40, v34, v35, v36);

  sub_1BE04F7C4();
  v42 = v13;
  v76 = v13;
  v113 = v13;
  v43 = v108;
  v114 = v108;
  v115 = v3;
  v116 = v34 & 1;
  v44 = v78;
  sub_1BE051844();
  v109 = v42;
  v110 = v43;
  v111 = v3;
  v112 = v34 & 1;
  sub_1BE051CD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD404E0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD404E8);
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD404F0);
  v47 = sub_1BD2A2304();
  v48 = sub_1BD2A23EC();
  *&v127 = v45;
  *(&v127 + 1) = v46;
  v128 = v47;
  v129 = v48;
  swift_getOpaqueTypeConformance2();
  v49 = v88;
  v50 = v87;
  sub_1BE050814();
  (*(v96 + 8))(v44, v50);
  v51 = v101;
  sub_1BE04FF44();
  v52 = v77;
  v53 = v84;
  sub_1BE050D14();
  (*(v102 + 8))(v51, v103);
  (*(v94 + 8))(v49, v18);
  sub_1BE052434();
  *&v127 = v18;
  *(&v127 + 1) = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v79;
  v56 = OpaqueTypeMetadata2;
  sub_1BE050DE4();

  (*(v91 + 8))(v52, v56);
  LOBYTE(v127) = *(v3 + 16);
  v57 = sub_1BD2A27E0(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
  v121 = OpaqueTypeConformance2;
  v122 = v57;
  v58 = v89;
  v59 = swift_getWitnessTable();
  v60 = v85;
  sub_1BE0510E4();
  (*(v93 + 8))(v55, v58);
  v61 = v105;
  v62 = v104;
  v63 = v80;
  (*(v105 + 16))(v104, v41, v80);
  v64 = v61;
  v65 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v66 = swift_allocObject();
  v67 = v108;
  *(v66 + 16) = v76;
  *(v66 + 24) = v67;
  (*(v64 + 32))(v66 + v65, v62, v63);
  v68 = sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60);
  v119 = v59;
  v120 = v68;
  v69 = v95;
  v70 = swift_getWitnessTable();
  v71 = v92;
  sub_1BE051054();

  (*(v99 + 8))(v60, v69);
  v117 = v70;
  v118 = MEMORY[0x1E69805D0];
  swift_getWitnessTable();
  v72 = v97;
  sub_1BD147308(v71);
  v73 = *(v100 + 8);
  v73(v71, v28);
  sub_1BD147308(v72);
  return (v73)(v72, v28);
}

uint64_t sub_1BD29EFEC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a4;
  LODWORD(v55) = a2;
  v62 = a5;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40540);
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v7);
  v54 = &v49 - v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD404C8);
  MEMORY[0x1EEE9AC00](v58, v9);
  v61 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v60 = &v49 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40460);
  swift_getAssociatedTypeWitness();
  v15 = sub_1BE0534B4();
  v16 = sub_1BD2A28D8(&qword_1EBD40468, &qword_1EBD40460, &unk_1BE0C8070, sub_1BD2A1FE8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  *&v71 = v14;
  *(&v71 + 1) = v15;
  *&v72 = v16;
  *(&v72 + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD404C0);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v18 = sub_1BE051774();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v49 - v25;
  v63 = a3;
  v64 = v56;
  v65 = a1;
  sub_1BE04F504();
  v27 = v19;
  sub_1BE051764();
  v56 = swift_getWitnessTable();
  sub_1BD147308(v22);
  v28 = *(v19 + 8);
  v28(v22, v18);
  if (*(a1 + 16) != 1 || (v55 & 1) != 0)
  {
    v46 = v60;
    (*(v57 + 56))(v60, 1, 1, v59);
  }

  else
  {
    *&v71 = sub_1BD53EE80(*(a1 + 24), *(a1 + 40), *(a1 + 48));
    *(&v71 + 1) = v29;
    sub_1BD0DDEBC();
    v30 = sub_1BE0506C4();
    v53 = v19;
    v32 = v31;
    v34 = v33;
    sub_1BE051264();
    v52 = v28;
    v35 = sub_1BE050564();
    v50 = v36;
    v51 = v35;
    v55 = v26;
    v38 = v37;
    v49 = v39;

    sub_1BD0DDF10(v30, v32, v34 & 1);

    LOBYTE(v30) = sub_1BE0501E4();
    sub_1BE04E1F4();
    LOBYTE(v75) = v38 & 1;
    v70 = 0;
    *&v66 = v51;
    *(&v66 + 1) = v50;
    LOBYTE(v67) = v38 & 1;
    *(&v67 + 1) = v49;
    LOBYTE(v68) = v30;
    *(&v68 + 1) = v40;
    *&v69[0] = v41;
    *(&v69[0] + 1) = v42;
    *&v69[1] = v43;
    BYTE8(v69[1]) = 0;
    sub_1BE052434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90);
    sub_1BD2A275C();
    v44 = v54;
    v26 = v55;
    sub_1BE050DE4();
    v27 = v53;

    v73 = v68;
    v74[0] = v69[0];
    *(v74 + 9) = *(v69 + 9);
    v71 = v66;
    v72 = v67;
    v28 = v52;
    sub_1BD0DE53C(&v71, &unk_1EBD3DF90);
    v45 = v44;
    v46 = v60;
    sub_1BD0DE204(v45, v60, &qword_1EBD40540);
    (*(v57 + 56))(v46, 0, 1, v59);
  }

  (*(v27 + 16))(v22, v26, v18);
  *&v71 = v22;
  v47 = v61;
  sub_1BD0DE19C(v46, v61, &qword_1EBD404C8);
  *(&v71 + 1) = v47;
  *&v66 = v18;
  *(&v66 + 1) = v58;
  v75 = v56;
  v76 = sub_1BD2A26AC();
  sub_1BD13A4C4(&v71, 2uLL, &v66);
  sub_1BD0DE53C(v46, &qword_1EBD404C8);
  v28(v26, v18);
  sub_1BD0DE53C(v47, &qword_1EBD404C8);
  return (v28)(v22, v18);
}

uint64_t sub_1BD29F674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40558);
  v79 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v3);
  v66 = &v65 - v4;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD404C0);
  MEMORY[0x1EEE9AC00](v80, v5);
  v82 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v84 = &v65 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1BE0534B4();
  v77 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v75 = &v65 - v13;
  v69 = sub_1BE04F6E4();
  v72 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v14);
  v70 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40478);
  MEMORY[0x1EEE9AC00](v68, v16);
  v18 = &v65 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40460);
  MEMORY[0x1EEE9AC00](v19, v20);
  v73 = &v65 - v21;
  v22 = sub_1BD2A28D8(&qword_1EBD40468, &qword_1EBD40460, &unk_1BE0C8070, sub_1BD2A1FE8);
  v76 = AssociatedTypeWitness;
  v97[2] = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  v74 = v19;
  v88 = v19;
  v89 = v11;
  v67 = v11;
  v71 = v22;
  v90 = v22;
  v91 = WitnessTable;
  v24 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v87 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v25);
  v78 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v65 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v86 = &v65 - v33;
  v34 = type metadata accessor for ContactFormItemRow();
  sub_1BD2A0000(v34, v35, v18);
  v36 = a1;
  if (sub_1BD29DA24(v34))
  {
    v37 = v70;
    sub_1BE04F6B4();
    v38 = v69;
  }

  else
  {
    v88 = MEMORY[0x1E69E7CC0];
    sub_1BD2A27E0(&qword_1EBD3E638, MEMORY[0x1E697F5E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E640);
    sub_1BD0DE4F4(&qword_1EBD3E648, &qword_1EBD3E640);
    v37 = v70;
    v39 = v69;
    sub_1BE053664();
    v38 = v39;
  }

  sub_1BD2A1FE8();
  v40 = v73;
  sub_1BE050DA4();
  (*(v72 + 8))(v37, v38);
  sub_1BD0DE53C(v18, &qword_1EBD40478);
  v41 = v76;
  v42 = *(v76 - 8);
  v43 = v36 + *(v34 + 52);
  v44 = v75;
  (*(v42 + 16))(v75, v43, v76);
  (*(v42 + 56))(v44, 0, 1, v41);
  v45 = v74;
  v46 = v67;
  v47 = v71;
  sub_1BE050FB4();
  (*(v77 + 8))(v44, v46);
  sub_1BD0DE53C(v40, &qword_1EBD40460);
  v88 = v45;
  v89 = v46;
  v90 = v47;
  v91 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = OpaqueTypeMetadata2;
  v77 = OpaqueTypeConformance2;
  sub_1BD147308(v30);
  v50 = *(v87 + 8);
  v50(v30, v49);
  v51 = sub_1BD29DA24(v34);
  v52 = 1;
  if (v51)
  {
    v53 = sub_1BE051574();
    v54 = sub_1BE0502D4();
    KeyPath = swift_getKeyPath();
    v56 = sub_1BE0511E4();
    v57 = swift_getKeyPath();
    v88 = v53;
    v89 = KeyPath;
    v90 = v54;
    v91 = v57;
    v92 = v56;
    v93 = sub_1BD1F3E44;
    v94 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40578);
    sub_1BD2A298C();
    v58 = v66;
    sub_1BE050A24();

    sub_1BD0DE204(v58, v84, &qword_1EBD40558);
    v52 = 0;
  }

  v59 = v84;
  (*(v79 + 56))(v84, v52, 1, v81);
  v60 = v86;
  v61 = v78;
  v62 = OpaqueTypeMetadata2;
  (*(v87 + 16))(v78, v86, OpaqueTypeMetadata2);
  v88 = v61;
  v63 = v82;
  sub_1BD0DE19C(v59, v82, &qword_1EBD404C0);
  v89 = v63;
  v97[0] = v62;
  v97[1] = v80;
  v95 = v77;
  v96 = sub_1BD2A2828();
  sub_1BD13A4C4(&v88, 2uLL, v97);
  sub_1BD0DE53C(v59, &qword_1EBD404C0);
  v50(v60, v62);
  sub_1BD0DE53C(v63, &qword_1EBD404C0);
  return (v50)(v61, v62);
}

uint64_t sub_1BD2A0000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v77 = a3;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40490);
  v73 = *(v9 - 8);
  v74 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v70 = &v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40580);
  v71 = *(v12 - 8);
  v72 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v68 = &v58 - v14;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40488);
  MEMORY[0x1EEE9AC00](v67, v15);
  v69 = &v58 - v16;
  v17 = *(v3 + 24);
  v18 = sub_1BD53F0A4(*(v3 + 24));
  v65 = v19;
  v66 = v18;
  v20 = v3 + *(a1 + 68);
  v21 = *v20;
  v22 = *(v20 + 16);
  v80 = v21;
  *&v81 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  sub_1BE0516C4();
  v61 = *(&v89 + 1);
  v62 = v89;
  v63 = *(&v90 + 1);
  v64 = v90;
  v23 = MEMORY[0x1E69B9620];
  v24 = MEMORY[0x1E69B9A98];
  v25 = *(v3 + 18);
  if ((v25 & 1) == 0)
  {
    v24 = MEMORY[0x1E69B9748];
  }

  if (v25 != 2)
  {
    v23 = v24;
  }

  v60 = *v23;
  (*(v6 + 16))(&v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v26 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v27 = swift_allocObject();
  v28 = *(a1 + 16);
  v29 = *(a1 + 24);
  *(v27 + 16) = v28;
  *(v27 + 24) = v29;
  v30 = *(v6 + 32);
  v75 = a1;
  v30(v27 + v26, v8, a1);
  v76 = v4;
  v31 = sub_1BD2A11A0(v4, v28, v29);
  v59 = v32;
  v33 = sub_1BE04E274();
  v58 = v34;
  v36 = v35;
  if (v17 == 2)
  {
    KeyPath = swift_getKeyPath();
    v38 = 0;
    v39 = 0;
  }

  else
  {
    v40 = MEMORY[0x1E69DE578];
    if ((v17 & 1) == 0)
    {
      v40 = MEMORY[0x1E69DE4A0];
    }

    v41 = v31;
    v42 = *v40;
    KeyPath = swift_getKeyPath();
    v38 = sub_1BE052434();
    v39 = v43;

    v31 = v41;
  }

  *&v89 = v66;
  *(&v89 + 1) = v65;
  LODWORD(v66) = v17 == 2;
  *&v90 = v62;
  *(&v90 + 1) = v61;
  *&v91 = v64;
  *(&v91 + 1) = v63;
  v92 = v60;
  *&v93 = sub_1BD2A2A18;
  *(&v93 + 1) = v27;
  *&v94 = v31;
  *(&v94 + 1) = v59;
  LOBYTE(v95) = v33 & 1;
  *(&v95 + 1) = v58;
  LOBYTE(v96) = v36 & 1;
  *(&v96 + 1) = KeyPath;
  *&v97 = v38;
  *(&v97 + 1) = v39;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40498);
  v45 = sub_1BD2A21D8();
  v46 = v70;
  sub_1BE0509B4();
  v86 = v95;
  v87 = v96;
  v88 = v97;
  v82 = v91;
  v83 = v92;
  v84 = v93;
  v85 = v94;
  v80 = v89;
  v81 = v90;
  sub_1BD0DE53C(&v80, &qword_1EBD40498);
  v78 = v44;
  v79 = v45;
  swift_getOpaqueTypeConformance2();
  v47 = v68;
  v48 = v74;
  sub_1BE050C44();
  (*(v73 + 8))(v46, v48);
  v49 = sub_1BE051224();
  v50 = swift_getKeyPath();
  v51 = v69;
  (*(v71 + 32))(v69, v47, v72);
  v52 = (v51 + *(v67 + 36));
  *v52 = v50;
  v52[1] = v49;
  LOBYTE(v49) = sub_1BD29D4B0();
  v53 = swift_getKeyPath();
  v54 = swift_allocObject();
  *(v54 + 16) = (v49 & 1) == 0;
  v55 = v77;
  sub_1BD05A1D0(v51, v77);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40478);
  v57 = (v55 + *(result + 36));
  *v57 = v53;
  v57[1] = sub_1BD10DF54;
  v57[2] = v54;
  return result;
}

id sub_1BD2A060C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v78 = a4;
  LODWORD(v76) = a2;
  v71 = a5;
  v74 = sub_1BE04BD74();
  v77 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v7);
  v75 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ContactFormItemRow();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40508);
  v16 = *(v15 - 8);
  v72 = v15;
  v73 = v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v58 - v18;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD404E8);
  MEMORY[0x1EEE9AC00](v67, v20);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v60 = &v58 - v25;
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v66 = &v58 - v29;
  v30 = *(v10 + 16);
  v64 = v10 + 16;
  v63 = v30;
  (v30)(v14, a1, v9, v28);
  v31 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v62 = *(v10 + 80);
  v32 = swift_allocObject();
  v70 = a3;
  *(v32 + 16) = a3;
  v33 = v74;
  *(v32 + 24) = v78;
  v34 = *(v10 + 32);
  v65 = v31;
  v68 = v14;
  v69 = v10 + 32;
  v61 = v34;
  v34(v32 + v31, v14, v9);
  *(v32 + v31 + v11) = v76;
  sub_1BE051704();
  v76 = v9;
  v35 = v75;
  v59 = a1;
  v36 = v77;
  sub_1BD29D4B0();
  sub_1BD0DE4F4(&qword_1EBD40500, &qword_1EBD40508);
  v37 = v72;
  sub_1BE050A24();
  (*(v73 + 8))(v19, v37);
  v38 = v33;
  (*(v36 + 104))(v35, *MEMORY[0x1E69B8068], v33);
  result = PKPassKitBundle();
  if (result)
  {
    v40 = result;
    v41 = sub_1BE04B6F4();
    v43 = v42;

    (*(v36 + 8))(v35, v38);
    v79 = v41;
    v80 = v43;
    sub_1BD0DDEBC();
    v44 = sub_1BE0506C4();
    v46 = v45;
    LOBYTE(v43) = v47;
    v48 = v60;
    sub_1BE04EB74();
    sub_1BD0DDF10(v44, v46, v43 & 1);

    sub_1BD0DE53C(v22, &qword_1EBD404E8);
    sub_1BE052434();
    v49 = v66;
    sub_1BE04EBB4();

    sub_1BD0DE53C(v48, &qword_1EBD404E8);
    v50 = v76;
    v51 = v59;
    v52 = (v59 + *(v76 + 76));
    v53 = *v52;
    v54 = *(v52 + 1);
    v81 = v53;
    v82 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516C4();
    v55 = v68;
    v63(v68, v51, v50);
    v56 = swift_allocObject();
    v57 = v78;
    *(v56 + 16) = v70;
    *(v56 + 24) = v57;
    v61(v56 + v65, v55, v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD404F0);
    sub_1BD2A2304();
    sub_1BD2A23EC();
    sub_1BE051114();

    return sub_1BD0DE53C(v49, &qword_1EBD404E8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD2A0CBC(uint64_t a1, char a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1BE0534B4();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v13 - v7;
  v9 = *(a1 + 16);
  v10 = type metadata accessor for ContactFormItemRow();
  if (v9 != 1 || (a2 & 1) != 0)
  {
    return (*(a1 + *(v10 + 56)))();
  }

  v11 = *(AssociatedTypeWitness - 8);
  (*(v11 + 16))(v8, a1 + *(v10 + 52), AssociatedTypeWitness);
  (*(v11 + 56))(v8, 0, 1, AssociatedTypeWitness);
  v13[1] = swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_1BE04E264();
  return sub_1BE04E254();
}

uint64_t (*sub_1BD2A0EA4(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = type metadata accessor for ContactFormItemRow();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v15 - v10;
  (*(v7 + 16))(&v15 - v10, a1, v6, v9);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v7 + 32))(v13 + v12, v11, v6);
  return sub_1BD2A2624;
}

uint64_t sub_1BD2A0FDC()
{
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  sub_1BE0516B4();
  return sub_1BD2A1364();
}

uint64_t sub_1BD2A1068()
{
  type metadata accessor for ContactFormItemRow();
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  sub_1BE0516B4();
  return sub_1BE0516B4();
}

uint64_t sub_1BD2A112C()
{
  type metadata accessor for ContactFormItemRow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

uint64_t (*sub_1BD2A11A0(uint64_t a1, uint64_t a2, uint64_t a3))(char a1)
{
  v6 = type metadata accessor for ContactFormItemRow();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v15 - v10;
  (*(v7 + 16))(&v15 - v10, a1, v6, v9);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v7 + 32))(v13 + v12, v11, v6);
  return sub_1BD2A2DC8;
}

uint64_t sub_1BD2A12D8(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  result = sub_1BE0516A4();
  if ((v3 & 1) == 0 && (a1 & 1) == 0)
  {
    return sub_1BD2A1364();
  }

  return result;
}

uint64_t sub_1BD2A1364()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  sub_1BE0516A4();
  sub_1BE0516A4();
}

uint64_t sub_1BD2A14F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  return sub_1BE048964();
}

void sub_1BD2A1514()
{
  sub_1BD2A1F54(319, &qword_1EBD40440, &type metadata for ContactEditingType, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    if (v1 <= 0x3F)
    {
      sub_1BD1030A8();
      if (v2 <= 0x3F)
      {
        sub_1BD2A1EF0();
        if (v3 <= 0x3F)
        {
          sub_1BD2A1F54(319, &qword_1EBD40458, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1BD2A1F54(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
            if (v5 <= 0x3F)
            {
              sub_1BE0534B4();
              swift_getAssociatedConformanceWitness();
              swift_getWitnessTable();
              sub_1BE04E264();
              if (v6 <= 0x3F)
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

uint64_t sub_1BD2A1734(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(sub_1BE051AD4() - 8);
  v8 = *(v7 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v7 + 64);
  if (v6 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v6;
  }

  v11 = *(v5 + 80);
  if (v9 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = v9;
  }

  if (v6)
  {
    v13 = -2;
  }

  else
  {
    v13 = -1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v10)
  {
    goto LABEL_32;
  }

  v14 = v13 + *(v5 + 64) - ((-17 - v11) | v11) - ((-17 - (v11 | 7) - ((((((v12 + ((v8 + 16 + ((((*(v5 + 64) + ((v11 + 56) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & (v8 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8)) + 8) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)) | v11 | 7);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v10 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v18 < 2)
    {
LABEL_32:
      if ((v10 & 0x80000000) != 0)
      {
        v21 = *(v5 + 48);

        return v21((((a1 + 13) & 0xFFFFFFFFFFFFFFF8) + v11 + 32) & ~v11, v6, AssociatedTypeWitness);
      }

      else
      {
        v20 = *(a1 + 1);
        if (v20 >= 0xFFFFFFFF)
        {
          LODWORD(v20) = -1;
        }

        return (v20 + 1);
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_32;
  }

LABEL_21:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  return v10 + (v14 | v19) + 1;
}

void sub_1BD2A1A1C(unsigned int *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v40 = v7;
  v8 = *(v7 + 84);
  v9 = 0;
  v10 = *(sub_1BE051AD4() - 8);
  v11 = *(v10 + 80);
  v12 = v11 + 16;
  v13 = (v12 & ~v11) + *(v10 + 64);
  v14 = v8 - 1;
  if (!v8)
  {
    v14 = 0;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  if (v8 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v8;
  }

  if (v13 <= 8)
  {
    v17 = 8;
  }

  else
  {
    v17 = v13;
  }

  v18 = *(v7 + 80);
  v19 = *(v7 + 64);
  v20 = v11 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v21 = v17 + 8;
  v22 = *(v7 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v23 = (v18 + 16) & ~v18;
  if (v8)
  {
    v24 = *(v7 + 64);
  }

  else
  {
    v24 = v19 + 1;
  }

  v25 = v24 + v23 + ((v18 + 16 + ((((((v21 + ((v12 + ((((v19 + 7 + ((v18 + 56) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v20)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)) & v22);
  if (a3 <= v16)
  {
LABEL_29:
    if (v16 < a2)
    {
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  if (v25 > 3)
  {
    v9 = 1;
    if (v16 >= a2)
    {
      goto LABEL_18;
    }

LABEL_30:
    v28 = ~v16 + a2;
    if (v25 >= 4)
    {
      bzero(a1, v25);
      *a1 = v28;
      v29 = 1;
      if (v9 > 1)
      {
        goto LABEL_32;
      }

LABEL_61:
      if (v9)
      {
        *(a1 + v25) = v29;
      }

      return;
    }

    v29 = (v28 >> (8 * v25)) + 1;
    if (v25)
    {
      v30 = v28 & ~(-1 << (8 * v25));
      bzero(a1, v25);
      if (v25 != 3)
      {
        if (v25 == 2)
        {
          *a1 = v30;
          if (v9 <= 1)
          {
            goto LABEL_61;
          }
        }

        else
        {
          *a1 = v28;
          if (v9 <= 1)
          {
            goto LABEL_61;
          }
        }

LABEL_32:
        if (v9 == 2)
        {
          *(a1 + v25) = v29;
        }

        else
        {
          *(a1 + v25) = v29;
        }

        return;
      }

      *a1 = v30;
      *(a1 + 2) = BYTE2(v30);
    }

    if (v9 <= 1)
    {
      goto LABEL_61;
    }

    goto LABEL_32;
  }

  v26 = ((a3 - v16 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
  if (!HIWORD(v26))
  {
    if (v26 < 0x100)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    if (v26 >= 2)
    {
      v9 = v27;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_29;
  }

  v9 = 4;
  if (v16 < a2)
  {
    goto LABEL_30;
  }

LABEL_18:
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *(a1 + v25) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *(a1 + v25) = 0;
  }

  else if (v9)
  {
    *(a1 + v25) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v16 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = (a2 - 1);
    }

    return;
  }

  v31 = (((a1 + 26) & 0xFFFFFFFFFFFFFFF8) + v18 + 32) & ~v18;
  if (v8 >= 0x7FFFFFFF)
  {
    v34 = *(v40 + 56);
    v35 = a2;
    goto LABEL_56;
  }

  v32 = v18 + 16 + ((((((v21 + ((v12 + ((((v19 + 7 + v31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v20)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  v33 = (v32 & v22);
  if (v8)
  {
    if (v15 >= a2)
    {
      goto LABEL_79;
    }
  }

  else
  {
    if (v15 >= a2)
    {
      v19 = (v19 + 1);
LABEL_79:
      v33 = ((v18 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v18);
      if (v14 < a2)
      {
        if (v19 <= 3)
        {
          v39 = ~(-1 << (8 * v19));
        }

        else
        {
          v39 = -1;
        }

        if (v19)
        {
          v37 = v39 & (~v14 + a2);
          if (v19 <= 3)
          {
            v38 = v19;
          }

          else
          {
            v38 = 4;
          }

          bzero(v33, v19);
          if (v38 <= 2)
          {
            if (v38 != 1)
            {
              goto LABEL_89;
            }

            goto LABEL_77;
          }

LABEL_91:
          if (v38 == 3)
          {
            *v33 = v37;
            v33[2] = BYTE2(v37);
          }

          else
          {
            *v33 = v37;
          }

          return;
        }

        return;
      }

      v34 = *(v40 + 56);
      v35 = (a2 + 1);
      v31 = v33;
LABEL_56:

      v34(v31, v35, v8, AssociatedTypeWitness);
      return;
    }

    LODWORD(v19) = v19 + 1;
  }

  v36 = (v19 + v23);
  if (v36 <= 3)
  {
    v37 = a2 & ~(-1 << (8 * v36));
  }

  else
  {
    v37 = a2 ^ 0x80000000;
  }

  if (v36)
  {
    if (v36 <= 3)
    {
      v38 = v36;
    }

    else
    {
      v38 = 4;
    }

    bzero((v32 & v22), v36);
    if (v38 <= 2)
    {
      if (v38 != 1)
      {
LABEL_89:
        *v33 = v37;
        return;
      }

LABEL_77:
      *v33 = v37;
      return;
    }

    goto LABEL_91;
  }
}

void sub_1BD2A1EF0()
{
  if (!qword_1EBD40448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40450);
    v0 = sub_1BE04E3A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD40448);
    }
  }
}

void sub_1BD2A1F54(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1BD2A1FE8()
{
  result = qword_1EBD40470;
  if (!qword_1EBD40470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40478);
    sub_1BD2A20A0();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40470);
  }

  return result;
}

unint64_t sub_1BD2A20A0()
{
  result = qword_1EBD40480;
  if (!qword_1EBD40480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40488);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40490);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40498);
    sub_1BD2A21D8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40480);
  }

  return result;
}

unint64_t sub_1BD2A21D8()
{
  result = qword_1EBD404A0;
  if (!qword_1EBD404A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40498);
    sub_1BD2A2290();
    sub_1BD0DE4F4(&qword_1EBD404B0, &qword_1EBD404B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD404A0);
  }

  return result;
}

unint64_t sub_1BD2A2290()
{
  result = qword_1EBD404A8;
  if (!qword_1EBD404A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD404A8);
  }

  return result;
}

unint64_t sub_1BD2A2304()
{
  result = qword_1EBD404F8;
  if (!qword_1EBD404F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD404E8);
    sub_1BD0DE4F4(&qword_1EBD40500, &qword_1EBD40508);
    sub_1BD2A27E0(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD404F8);
  }

  return result;
}

unint64_t sub_1BD2A23EC()
{
  result = qword_1EBD40510;
  if (!qword_1EBD40510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD404F0);
    sub_1BD2A2470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40510);
  }

  return result;
}

unint64_t sub_1BD2A2470()
{
  result = qword_1EBD40518;
  if (!qword_1EBD40518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40518);
  }

  return result;
}

uint64_t sub_1BD2A24DC()
{
  v1 = *(type metadata accessor for ContactFormItemRow() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_1BD2A0CBC(v2, v3);
}

uint64_t (*sub_1BD2A2580@<X0>(void *a1@<X8>))()
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = type metadata accessor for ContactFormItemRow();
  v6 = 0;
  result = 0;
  v8 = 0;
  v9 = v1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));
  v10 = *(v9 + 18);
  if (v10 != 2)
  {
    result = sub_1BD2A0EA4(v9, v4, v3);
    v6 = v10 & 1;
  }

  *a1 = v6;
  a1[1] = result;
  a1[2] = v8;
  return result;
}

unint64_t sub_1BD2A26AC()
{
  result = qword_1EBD40548;
  if (!qword_1EBD40548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD404C8);
    sub_1BD2A28D8(&qword_1EBD40550, &qword_1EBD40540, &unk_1BE0DC3A0, sub_1BD2A275C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40548);
  }

  return result;
}

unint64_t sub_1BD2A275C()
{
  result = qword_1EBD36820;
  if (!qword_1EBD36820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36820);
  }

  return result;
}

uint64_t sub_1BD2A27E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD2A2828()
{
  result = qword_1EBD40560;
  if (!qword_1EBD40560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD404C0);
    sub_1BD2A28D8(&qword_1EBD40568, &qword_1EBD40558, &unk_1BE0FE400, sub_1BD2A298C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40560);
  }

  return result;
}

uint64_t sub_1BD2A28D8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1BD2A27E0(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD2A298C()
{
  result = qword_1EBD40570;
  if (!qword_1EBD40570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40578);
    sub_1BD0F1430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40570);
  }

  return result;
}

uint64_t sub_1BD2A2A30(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for ContactFormItemRow() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t objectdestroyTm_20()
{
  v1 = type metadata accessor for ContactFormItemRow();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80));

  v3 = v1[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v13 = *(v5 + 8);
  v13(v2 + v3, AssociatedTypeWitness);

  v6 = v2 + v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {

      v8 = *(v7 + 32);
      v9 = sub_1BE051AD4();
      (*(*(v9 - 8) + 8))(v6 + v8, v9);
    }
  }

  else
  {
  }

  v10 = v2 + v1[20];

  sub_1BE0534B4();
  v11 = *(sub_1BE051964() + 32);
  if (!(*(v5 + 48))(v10 + v11, 1, AssociatedTypeWitness))
  {
    v13(v10 + v11, AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

unint64_t sub_1BD2A2E60()
{
  result = qword_1EBD50620;
  if (!qword_1EBD50620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50620);
  }

  return result;
}

void sub_1BD2A2EB4()
{
  v0 = sub_1BE04B944();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BB94();
  v5 = [objc_allocWithZone(sub_1BE04C114()) init];
  sub_1BE04C104();

  sub_1BD0E5E8C(0, &unk_1EBD444B0);
  sub_1BE048C84();
  v6 = sub_1BE052F24();
  v7 = sub_1BE04B934();
  if (([v7 respondsToSelector_] & 1) == 0)
  {
    (*(v1 + 8))(v4, v0);
    swift_unknownObjectRelease();
LABEL_8:

    return;
  }

  v8 = [v7 meetsProvisioningRequirements:v6 missingRequirements:0];
  swift_unknownObjectRelease();
  if ((v8 & 1) == 0)
  {
    (*(v1 + 8))(v4, v0);
    goto LABEL_8;
  }

  v9 = [sub_1BE04B934() deviceRegion];
  swift_unknownObjectRelease();
  v10 = sub_1BE04B8E4();
  v11 = [v10 context];

  if (v11)
  {
    v12 = [v11 configuration];

    if (v12)
    {

      [v12 manualProvisioningEnabledForRegion_];

      (*(v1 + 8))(v4, v0);
      return;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
}

void sub_1BD2A320C(void (*a1)(_BOOL8, unint64_t, unint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v55 = sub_1BE04B944();
  v6 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04C384();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem_configuration);
  v16 = sub_1BE04C3A4();
  if (!*(v16 + 16))
  {

    goto LABEL_9;
  }

  (*(v11 + 16))(v14, v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10);

  v17 = sub_1BE04C2E4();
  (*(v11 + 8))(v14, v10);
  if (!v17)
  {
LABEL_9:
    a1(0xD000000000000018, 0x80000001BE121270, 0, 1);
    return;
  }

  v18 = [v17 style];
  v19 = *(v3 + OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem_reporter);
  if (!v18)
  {
    if (!v19)
    {
      goto LABEL_15;
    }

    v20 = MEMORY[0x1E69BB1D8];
    goto LABEL_14;
  }

  if (v18 != 1)
  {
    if (!v19)
    {
      goto LABEL_15;
    }

    v20 = MEMORY[0x1E69BB1E0];
LABEL_14:
    [v19 setProductType:*v20 subtype:0];
LABEL_15:
    v54 = v17;
    v21 = [v17 paymentNetwork];
    if (!v21)
    {
      goto LABEL_21;
    }

    v22 = v21;
    v23 = sub_1BE052434();
    v3 = v24;
    if (v23 == sub_1BE052434() && v3 == v25)
    {
    }

    else
    {
      v27 = sub_1BE053B84();

      if ((v27 & 1) == 0)
      {
LABEL_21:
        v52 = a2;
        v53 = a1;
        v28 = v15;
        v29 = sub_1BE04C3C4();
        v30 = 0;
        v31 = *(v29 + 16);
        v56 = v6 + 16;
        v57 = v31;
        v32 = v55;
        while (1)
        {
          v33 = v30;
          if (v57 == v30)
          {
LABEL_26:
            v36 = v57 == v33;

            v37 = 0x80000001BE121290;
            v38 = v36;
            v39 = 0xD000000000000012;
            goto LABEL_43;
          }

          if (v30 >= *(v29 + 16))
          {
            break;
          }

          (*(v6 + 16))(v9, v29 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v30, v32);
          v34 = sub_1BE04B8E4();
          v35 = [v34 targetDevice];
          if (!v35)
          {
            __break(1u);
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

          ++v30;
          v28 = v35;
          v3 = [v35 paymentWebService:v34 hasPassesOfType:1];

          swift_unknownObjectRelease();
          (*(v6 + 8))(v9, v32);
          if (v3)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }
    }

    v40 = [objc_opt_self() sharedInstance];
    if (!v40)
    {
LABEL_52:
      __break(1u);
      return;
    }

    v41 = v40;
    v42 = [v40 passesOfType_];

    sub_1BD0E5E8C(0, &qword_1EBD40650);
    v43 = sub_1BE052744();

    v28 = sub_1BD3FCF30(v43);

    if (!v28)
    {
      a1(0, 0, 0, 0);
LABEL_44:

      return;
    }

    v52 = a2;
    v53 = a1;
    v3 = (v28 & 0xFFFFFFFFFFFFFF8);
    if (!(v28 >> 62))
    {
      v44 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_32:
      v45 = 0;
      do
      {
        v46 = v45;
        if (v44 == v45)
        {
          break;
        }

        if ((v28 & 0xC000000000000001) != 0)
        {
          v47 = MEMORY[0x1BFB40900](v45, v28);
        }

        else
        {
          if (v45 >= v3[2])
          {
            goto LABEL_48;
          }

          v47 = *(v28 + 8 * v45 + 32);
        }

        v48 = v47;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_47;
        }

        v49 = [v47 devicePrimaryPaymentApplication];
        if (!v49)
        {
          goto LABEL_51;
        }

        v50 = v49;
        v51 = [v49 paymentNetworkIdentifier];

        v45 = v46 + 1;
      }

      while (v51 != 123);

      v39 = 0xD000000000000015;
      v37 = 0x80000001BE1212B0;
      v38 = v44 == v46;
LABEL_43:
      v53(v38, v39, v37, 2);
      goto LABEL_44;
    }

LABEL_49:
    v44 = sub_1BE053704();
    goto LABEL_32;
  }

  if (v19)
  {
    [v19 setProductType:*MEMORY[0x1E69BB1C8] subtype:0];
  }

  a1(0xD00000000000001DLL, 0x80000001BE1212D0, 0, 1);
}

uint64_t sub_1BD2A3834()
{
  v1 = v0;
  v2 = sub_1BE04C384();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04C3A4();
  if (!*(v7 + 16))
  {

    return 2;
  }

  (*(v3 + 16))(v6, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

  v8 = sub_1BE04C2E4();
  (*(v3 + 8))(v6, v2);
  if (!v8)
  {
    return 2;
  }

  v38 = v8;
  KeyPath = swift_getKeyPath();
  v10 = v1;
  sub_1BD12F724(1, v10, KeyPath);

  v37 = swift_getKeyPath();
  v35 = sub_1BD187328(v10, v37);
  v36 = v11;
  v13 = v12;
  sub_1BE053D04();
  sub_1BE052524();
  v14 = sub_1BE053D64();
  v15 = -1 << *(v13 + 32);
  v16 = v14 & ~v15;
  if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    while (1)
    {
      v18 = *(*(v13 + 48) + v16);
      if (v18 != 1 && v18 != 2)
      {
        break;
      }

      v19 = sub_1BE053B84();

      if (v19)
      {
        goto LABEL_10;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v13;
    sub_1BD2A9690(0, v16, isUniquelyReferenced_nonNull_native);
    v13 = v39;
  }

LABEL_10:
  v21 = v10;
  sub_1BD12F750(v35 & 1, v36, v13, v21, v37);

  v22 = v38;
  v23 = [v38 paymentNetwork];
  if (!v23)
  {
    goto LABEL_16;
  }

  v24 = v23;
  v25 = sub_1BE052434();
  v27 = v26;
  if (v25 == sub_1BE052434() && v27 == v28)
  {

    goto LABEL_20;
  }

  v30 = sub_1BE053B84();

  if (v30)
  {
LABEL_20:
    v31 = sub_1BD2A3C00(v22);
    goto LABEL_21;
  }

LABEL_16:
  sub_1BD2A400C(v22);
LABEL_21:
  v33 = v31;

  return v33;
}

id sub_1BD2A3C00(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04BAC4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 localizedDescription];
  if (v15)
  {
    v16 = v15;
    sub_1BE052434();
  }

  else
  {
    (*(v10 + 104))(v14, *MEMORY[0x1E69B80C8], v9);
    result = PKPassKitBundle();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v18 = result;
    sub_1BE04B6F4();

    (*(v10 + 8))(v14, v9);
  }

  sub_1BE04BC34();
  v19 = sub_1BE04B9A4();
  (*(v5 + 8))(v8, v4);
  v20 = objc_allocWithZone(PKBarcodePaymentOnboardingViewController);
  v21 = sub_1BE052404();

  v22 = [v20 initWithIssuerName:v21 context:v19];

  if (v22)
  {
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = sub_1BD2AF418;
    v34 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_1BD2749B0;
    v32 = &block_descriptor_45;
    v24 = _Block_copy(&aBlock);
    v25 = v22;

    [v25 setContinueHandler_];
    _Block_release(v24);

    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = sub_1BD2AF420;
    v34 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_1BD126964;
    v32 = &block_descriptor_9_0;
    v27 = _Block_copy(&aBlock);
    v28 = v25;

    [v28 setTerminationHandler_];
    _Block_release(v27);

    [v28 setReporter_];
  }

  return v22;
}

void sub_1BD2A400C(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04BAC4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v1[OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem_context];
  v10 = sub_1BE04BBD4();
  sub_1BE04BC34();
  v11 = sub_1BE04B9A4();
  (*(v5 + 8))(v8, v4);
  v12 = v1;
  sub_1BD2A2EB4();
  v14 = [objc_allocWithZone(PKPaymentSetupHeroViewController) initWithProvisioningController:v10 context:v11 delegate:0 allowsManualEntry:v13 & 1];

  v15 = [a1 productIdentifiers];
  v16 = sub_1BE052A34();

  v17 = [a1 paymentNetwork];
  v98 = v14;
  if (v17)
  {
    v18 = PKPaymentCredentialTypeForPaymentNetworkName();

    LODWORD(v96) = *(v16 + 16) == 0;
  }

  else
  {
    if (!*(v16 + 16))
    {
      goto LABEL_41;
    }

    v18 = 0;
    LODWORD(v96) = 0;
  }

  v19 = [v14 heroImageController];
  if (!v19 || (v20 = v19, v21 = [v19 manifest], v20, !v21) || (v22 = objc_msgSend(v21, sel_images), v21, !v22))
  {
LABEL_41:

LABEL_43:
    [v14 setFlowDelegate_];
    [v14 setShowCancelButton_];
    [v14 setReporter_];
    KeyPath = swift_getKeyPath();
    LOBYTE(v99) = sub_1BD187328(v12, KeyPath) & 1;
    v100 = v51;
    v101 = v52;
    sub_1BD4F8958();
    v53 = v100;
    v54 = v101;
    if (*(v101 + 16) <= *(v100 + 16) >> 3)
    {
      v102 = v100;
      sub_1BE048C84();
      sub_1BD534FE4(v54);
      v55 = v102;
    }

    else
    {
      sub_1BE048C84();
      v55 = sub_1BD2AD830(v54, v53);
    }

    v56 = v99;
    v57 = v12;
    sub_1BD12F750(v56, v53, v54, v57, KeyPath);

    if (*(v55 + 16) && (sub_1BE053D04(), sub_1BE052524(), v58 = sub_1BE053D64(), v59 = -1 << *(v55 + 32), v60 = v58 & ~v59, ((*(v55 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) != 0))
    {
      v61 = ~v59;
      while (!*(*(v55 + 48) + v60) || *(*(v55 + 48) + v60) == 1)
      {
        v62 = sub_1BE053B84();

        if ((v62 & 1) == 0)
        {
          v60 = (v60 + 1) & v61;
          if ((*(v55 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60))
          {
            continue;
          }
        }

        goto LABEL_55;
      }

      v62 = 1;
    }

    else
    {
      v62 = 0;
    }

LABEL_55:
    v63 = v98;
    [v98 setShowChinaPrivacyDisclosure_];
    v64 = swift_getKeyPath();
    v65 = sub_1BD187328(v57, v64);
    v67 = v66;
    v99 = v68;
    sub_1BD2A50F4(&v102, 2);
    v69 = v99;
    v70 = v57;
    sub_1BD12F750(v65 & 1, v67, v69, v70, v64);

    v71 = *(v55 + 16);
    v97 = v70;
    if (v71 && (sub_1BE053D04(), sub_1BE052524(), v72 = sub_1BE053D64(), v73 = -1 << *(v55 + 32), v74 = v72 & ~v73, ((*(v55 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) != 0))
    {
      v75 = ~v73;
      while (!*(*(v55 + 48) + v74) || *(*(v55 + 48) + v74) == 2)
      {
        v76 = sub_1BE053B84();

        if ((v76 & 1) == 0)
        {
          v74 = (v74 + 1) & v75;
          if ((*(v55 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74))
          {
            continue;
          }
        }

        goto LABEL_66;
      }

      v76 = 1;
LABEL_66:
      v70 = v97;
    }

    else
    {
      v76 = 0;
    }

    [v63 setShowSouthKoreaPrivacyDisclosure_];
    v77 = swift_getKeyPath();
    LODWORD(v95) = sub_1BD187328(v70, v77);
    v96 = v78;
    v80 = v79;
    sub_1BE053D04();
    sub_1BE052524();
    v81 = sub_1BE053D64();
    v82 = -1 << *(v80 + 32);
    v83 = v81 & ~v82;
    if ((*(v80 + 56 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83))
    {
      v84 = ~v82;
      while (!*(*(v80 + 48) + v83) || *(*(v80 + 48) + v83) == 2)
      {
        v85 = sub_1BE053B84();

        if (v85)
        {
          goto LABEL_74;
        }

        v83 = (v83 + 1) & v84;
        if (((*(v80 + 56 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) == 0)
        {
          goto LABEL_73;
        }
      }
    }

    else
    {
LABEL_73:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99 = v80;
      sub_1BD2A9690(1, v83, isUniquelyReferenced_nonNull_native);
      v80 = v99;
    }

LABEL_74:
    v87 = v97;
    sub_1BD12F750(v95 & 1, v96, v80, v87, v77);

    return;
  }

  v92 = v18;
  v88[2] = v9;
  v89 = v2;
  v88[1] = sub_1BD0E5E8C(0, &qword_1EBD40638);
  v23 = sub_1BE052244();

  v24 = 0;
  v90 = MEMORY[0x1E69E7CC0];
  v102 = MEMORY[0x1E69E7CC0];
  v26 = v23 + 64;
  v25 = *(v23 + 64);
  v94 = v17;
  v95 = v23;
  v27 = 1 << *(v23 + 32);
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 & v25;
  v30 = (v27 + 63) >> 6;
  v93 = v16 + 56;
  if ((v28 & v25) != 0)
  {
    do
    {
LABEL_16:
      while (1)
      {
        v32 = __clz(__rbit64(v29));
        v29 &= v29 - 1;
        v33 = v32 | (v24 << 6);
        v34 = (*(v95 + 48) + 16 * v33);
        v35 = *v34;
        v36 = v34[1];
        v37 = *(*(v95 + 56) + 8 * v33);
        v97 = v37;
        if (v17)
        {
          break;
        }

        if (v96)
        {
          goto LABEL_37;
        }

        sub_1BE048C84();
        v91 = 1;
LABEL_24:
        v41 = v93;
        if (*(v16 + 16))
        {
          sub_1BE053D04();
          sub_1BE052524();
          v42 = sub_1BE053D64();
          v43 = -1 << *(v16 + 32);
          v44 = v42 & ~v43;
          if ((*(v41 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
          {
            v45 = ~v43;
            while (1)
            {
              v46 = (*(v16 + 48) + 16 * v44);
              v47 = *v46 == v35 && v46[1] == v36;
              if (v47 || (sub_1BE053B84() & 1) != 0)
              {
                break;
              }

              v44 = (v44 + 1) & v45;
              if (((*(v41 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
              {
                goto LABEL_33;
              }
            }

            v17 = v94;
            v37 = v97;
            if (!v91)
            {
              goto LABEL_35;
            }

            goto LABEL_37;
          }
        }

LABEL_33:

        v17 = v94;
        v37 = v97;
LABEL_35:

        v14 = v98;
        if (!v29)
        {
          goto LABEL_12;
        }
      }

      sub_1BE048C84();
      v38 = [v37 credentialType];
      v39 = v92;
      if (!v96)
      {
        v91 = v38 == v92;
        goto LABEL_24;
      }

      v40 = v38;

      v47 = v40 == v39;
      v37 = v97;
      if (!v47)
      {
        goto LABEL_35;
      }

LABEL_37:
      v48 = v37;
      MEMORY[0x1BFB3F7A0]();
      if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE052774();
        v17 = v94;
      }

      sub_1BE0527C4();

      v90 = v102;
      v14 = v98;
    }

    while (v29);
  }

LABEL_12:
  while (1)
  {
    v31 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v31 >= v30)
    {

      v49 = sub_1BE052724();

      [v14 setFeaturedHeroImages_];

      v12 = v89;
      goto LABEL_43;
    }

    v29 = *(v26 + 8 * v31);
    ++v24;
    if (v29)
    {
      v24 = v31;
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_1BD2A4A7C(void (*a1)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_4:
    if (!a1)
    {
      return;
    }

    goto LABEL_5;
  }

  v3 = Strong;
  v4 = Strong + OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = v3;
    sub_1BD8659A4(v7, &off_1F3B9B580, ObjectType, v5);

    Strong = swift_unknownObjectRelease();
    goto LABEL_4;
  }

  if (!a1)
  {
    return;
  }

LABEL_5:
  a1(Strong);
}

void sub_1BD2A4B50()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:1 userInfo:0];
    v3 = &v1[OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 1);
      ObjectType = swift_getObjectType();
      v8[0] = v2;
      v9 = 1;
      v6 = v1;
      v7 = v2;
      sub_1BD865A00(v6, &off_1F3B9B580, v8, ObjectType, v4);

      swift_unknownObjectRelease();
      sub_1BD12FF7C(v8);
    }

    else
    {
    }
  }
}

uint64_t sub_1BD2A4C68()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD2A4CA4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI29ProvisioningInAppHeroFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD2A4E40(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1BE053D04();
  v19 = v2;
  sub_1BE052524();

  v6 = sub_1BE053D64();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v19;
    sub_1BD2A939C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v19 = v20;
    result = 1;
    goto LABEL_24;
  }

  v9 = ~v7;
  while (1)
  {
    if (!*(*(v5 + 48) + v8))
    {
      v10 = 0x6472614365707974;
      v14 = 0x7265626D754ELL;
      goto LABEL_10;
    }

    if (*(*(v5 + 48) + v8) != 1)
    {
      break;
    }

    v10 = 0x61436172656D6163;
    v11 = 0xED00006572757470;
    v12 = a2;
    if (a2)
    {
      goto LABEL_11;
    }

LABEL_6:
    v13 = 0xEE007265626D754ELL;
    if (v10 == 0x6472614365707974)
    {
      goto LABEL_18;
    }

LABEL_19:
    v16 = sub_1BE053B84();

    if (v16)
    {
      goto LABEL_23;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v10 = 0x6F72506F54706174;
  v14 = 0x6E6F69736976;
LABEL_10:
  v11 = v14 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
  v12 = a2;
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_11:
  if (v12 == 1)
  {
    v15 = 0x61436172656D6163;
  }

  else
  {
    v15 = 0x6F72506F54706174;
  }

  if (v12 == 1)
  {
    v13 = 0xED00006572757470;
  }

  else
  {
    v13 = 0xEE006E6F69736976;
  }

  if (v10 != v15)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (v11 != v13)
  {
    goto LABEL_19;
  }

LABEL_23:
  result = 0;
  LOBYTE(a2) = *(*(v5 + 48) + v8);
LABEL_24:
  *a1 = a2;
  return result;
}

uint64_t sub_1BD2A50F4(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1BE053D04();
  v18 = v2;
  sub_1BE052524();

  v6 = sub_1BE053D64();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v18;
    sub_1BD2A9690(a2, v8, isUniquelyReferenced_nonNull_native);
    *v18 = v19;
    result = 1;
    goto LABEL_24;
  }

  v9 = ~v7;
  while (!*(*(v5 + 48) + v8))
  {
    v11 = 0xE400000000000000;
    v10 = 1919968359;
    v12 = a2;
    if (!a2)
    {
      goto LABEL_17;
    }

LABEL_8:
    if (v12 == 1)
    {
      v13 = 0x726F4B6874756F73;
    }

    else
    {
      v13 = 0xD000000000000010;
    }

    if (v12 == 1)
    {
      v14 = 0xEE00415049506165;
    }

    else
    {
      v14 = 0x80000001BE117610;
    }

    if (v10 == v13)
    {
      goto LABEL_18;
    }

LABEL_19:
    v15 = sub_1BE053B84();

    if (v15)
    {
      goto LABEL_23;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (*(*(v5 + 48) + v8) == 1)
  {
    v10 = 0x726F4B6874756F73;
    v11 = 0xEE00415049506165;
    v12 = a2;
    if (!a2)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  v10 = 0xD000000000000010;
  v11 = 0x80000001BE117610;
  v12 = a2;
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_17:
  v14 = 0xE400000000000000;
  if (v10 != 1919968359)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (v11 != v14)
  {
    goto LABEL_19;
  }

LABEL_23:
  result = 0;
  LOBYTE(a2) = *(*(v5 + 48) + v8);
LABEL_24:
  *a1 = a2;
  return result;
}

uint64_t sub_1BD2A5394(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_1BE053D04();
  sub_1BD251514();
  sub_1BE052524();

  v5 = sub_1BE053D64();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v17 = ~v6;
    while (1)
    {
      v8 = sub_1BE052434();
      v10 = v9;
      if (v8 == sub_1BE052434() && v10 == v11)
      {
        break;
      }

      v12 = sub_1BE053B84();

      if (v12)
      {
        goto LABEL_9;
      }

      v7 = (v7 + 1) & v17;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

LABEL_9:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v15;
    sub_1BD2A9934(a2, v7, isUniquelyReferenced_nonNull_native);
    *v15 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1BD2A5644(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1BE053D04();
  sub_1BE052524();
  v8 = sub_1BE053D64();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1BE053B84() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;
    sub_1BE048C84();
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1BE048C84();
    sub_1BD2A9C18(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1BD2A57D0(void *a1, void *a2, uint64_t *a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(void))
{
  v7 = v6;
  v10 = *v6;
  sub_1BE052434();
  sub_1BE053D04();
  sub_1BE052524();
  v11 = sub_1BE053D64();

  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      v15 = sub_1BE052434();
      v17 = v16;
      if (v15 == sub_1BE052434() && v17 == v18)
      {

        goto LABEL_12;
      }

      v20 = sub_1BE053B84();

      if (v20)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v24 = *(*(v10 + 48) + 8 * v13);
    *a1 = v24;
    v25 = v24;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v7;
    v22 = a2;
    sub_1BD2A9D98(v22, v13, isUniquelyReferenced_nonNull_native, a3, a4, a5, a6);
    *v7 = v30;
    *a1 = v22;
    return 1;
  }
}

uint64_t sub_1BD2A5A04(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v13 = *v6;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](a2);
  v14 = sub_1BE053D64();
  v15 = -1 << *(v13 + 32);
  v16 = v14 & ~v15;
  if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    while (*(*(v13 + 48) + 8 * v16) != a2)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v6;
    sub_1BD2A9FA0(a2, v16, isUniquelyReferenced_nonNull_native, a3, a4, a5, a6);
    *v6 = v20;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1BD2A5B2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21 = a1;
  v5 = type metadata accessor for AvailablePass(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = sub_1BE053D04();
  sub_1BD49C81C(v11);
  sub_1BE052524();

  v12 = sub_1BE053D64();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      sub_1BD133398(*(v10 + 48) + v16 * v14, v9, type metadata accessor for AvailablePass);
      v17 = sub_1BD498D50(v9, a2);
      sub_1BD2AF4D8(v9, type metadata accessor for AvailablePass);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1BD2AF4D8(a2, type metadata accessor for AvailablePass);
    sub_1BD133398(*(v10 + 48) + v16 * v14, v21, type metadata accessor for AvailablePass);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1BD133398(a2, v9, type metadata accessor for AvailablePass);
    v22 = *v3;
    sub_1BD2AA124(v9, v14, isUniquelyReferenced_nonNull_native);
    v19 = v21;
    *v3 = v22;
    sub_1BD2AF470(a2, v19, type metadata accessor for AvailablePass);
    return 1;
  }
}

uint64_t sub_1BD2A5D88(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;
    sub_1BE048C84();
    v9 = sub_1BE053714();

    if (v9)
    {

      sub_1BD0E5E8C(0, &unk_1EBD406C0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1BE053704();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1BD2A6B60(v7, result + 1, &qword_1EBD398A8, &unk_1BE0B8DC0, &unk_1EBD406C0);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1BD2A90F8(v20 + 1, &qword_1EBD398A8);
    }

    v18 = v8;
    sub_1BD2A9318(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1BD0E5E8C(0, &unk_1EBD406C0);
  v11 = sub_1BE053064();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1BD2AA384(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1BE053074();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1BD2A5FF0(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1BE053CF4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1BD2AA514(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1BD2A60D0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1BE04AFE4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1BD2AF428(&qword_1EBD3A360, MEMORY[0x1E69695A8]);
  v34 = a2;
  v12 = sub_1BE052284();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1BD2AF428(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
      v22 = sub_1BE052334();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1BD2AA634(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1BD2A63B0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1BE049B44();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1BD2AF428(&qword_1EBD40688, MEMORY[0x1E6967B20]);
  v34 = a2;
  v12 = sub_1BE052284();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1BD2AF428(&qword_1EBD40690, MEMORY[0x1E6967B20]);
      v22 = sub_1BE052334();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1BD2AABC4(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1BD2A6690(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;
    sub_1BE048C84();
    v9 = sub_1BE053714();

    if (v9)
    {

      sub_1BD0E5E8C(0, &qword_1EBD406D0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1BE053704();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1BD2A6B60(v7, result + 1, &qword_1EBD406D8, &unk_1BE0C8360, &qword_1EBD406D0);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1BD2A90F8(v20 + 1, &qword_1EBD406D8);
    }

    v18 = v8;
    sub_1BD2A9318(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1BD0E5E8C(0, &qword_1EBD406D0);
  v11 = sub_1BE053064();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1BD2AB1E0(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1BE053074();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1BD2A68F8(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;
    sub_1BE048C84();
    v9 = sub_1BE053714();

    if (v9)
    {

      sub_1BD0E5E8C(0, &qword_1EBD406E0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1BE053704();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1BD2A6B60(v7, result + 1, &qword_1EBD406E8, &unk_1BE0DF8B0, &qword_1EBD406E0);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1BD2A90F8(v20 + 1, &qword_1EBD406E8);
    }

    v18 = v8;
    sub_1BD2A9318(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1BD0E5E8C(0, &qword_1EBD406E0);
  v11 = sub_1BE053064();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1BD2AB370(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1BE053074();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1BD2A6B60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v7 = sub_1BE0537F4();
    v20 = v7;
    sub_1BE0536B4();
    if (sub_1BE053744())
    {
      sub_1BD0E5E8C(0, a5);
      do
      {
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          sub_1BD2A90F8(v14 + 1, a3);
        }

        v7 = v20;
        result = sub_1BE053064();
        v9 = v20 + 56;
        v10 = -1 << *(v20 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v20 + 48) + 8 * v13) = v19;
        ++*(v20 + 16);
      }

      while (sub_1BE053744());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v7;
}

uint64_t sub_1BD2A6D60()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40658);
  result = sub_1BE0537E4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_1BE053D04();
      sub_1BE052524();

      result = sub_1BE053D64();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1BD2A7028()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40640);
  result = sub_1BE0537E4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_1BE053D04();
      sub_1BE052524();

      result = sub_1BE053D64();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1BD2A72DC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39880);
  result = sub_1BE0537E4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v2 + 48) + (v16 | (v5 << 6)));
      sub_1BE053D04();
      sub_1BE052434();
      sub_1BE052524();

      result = sub_1BE053D64();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + v15) = v19;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v18 = v6[v5];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1BD2A7628(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_1BE0537E4();
  v6 = result;
  if (*(v4 + 16))
  {
    v28 = v2;
    v29 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      sub_1BE052434();
      sub_1BE053D04();
      sub_1BE052524();
      v19 = sub_1BE053D64();

      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v4 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v3 = v28;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_1BD2A789C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39888);
  result = sub_1BE0537E4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1BE053D04();
      sub_1BE052524();
      result = sub_1BE053D64();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1BD2A7AFC(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_1BE0537E4();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      sub_1BE053D04();
      MEMORY[0x1BFB40DA0](v18);
      result = sub_1BE053D64();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v3 = v2;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_1BD2A7D44()
{
  v1 = v0;
  v2 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v42 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v46, v5);
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for AvailablePass(0);
  v45 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v48 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD406F8);
  result = sub_1BE0537E4();
  v13 = result;
  if (*(v11 + 16))
  {
    v41 = v0;
    v14 = 0;
    v15 = (v11 + 56);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v20 = result + 56;
    v43 = v7;
    v44 = v11;
    while (1)
    {
      if (!v18)
      {
        v23 = v14;
        while (1)
        {
          v14 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v14 >= v19)
          {
            break;
          }

          v24 = v15[v14];
          ++v23;
          if (v24)
          {
            v22 = __clz(__rbit64(v24));
            v18 = (v24 - 1) & v24;
            goto LABEL_15;
          }
        }

        v39 = 1 << *(v11 + 32);
        if (v39 >= 64)
        {
          bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v15 = -1 << v39;
        }

        v1 = v41;
        *(v11 + 16) = 0;
        goto LABEL_35;
      }

      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = *(v11 + 48);
      v47 = *(v45 + 72);
      v26 = v48;
      sub_1BD2AF470(v25 + v47 * (v22 | (v14 << 6)), v48, type metadata accessor for AvailablePass);
      sub_1BE053D04();
      sub_1BD133398(v26, v7, type metadata accessor for WrappedPass);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v28 = *v7;
        result = [v28 passIdentifier];
        if (!result)
        {
          goto LABEL_38;
        }

LABEL_20:
        v29 = result;
        sub_1BE052434();

        goto LABEL_22;
      }

      v30 = v7;
      v31 = v42;
      sub_1BD2AF470(v30, v42, type metadata accessor for PlaceholderPass);
      sub_1BE048C84();
      sub_1BD2AF4D8(v31, type metadata accessor for PlaceholderPass);
LABEL_22:
      sub_1BE052524();

      result = sub_1BE053D64();
      v32 = -1 << *(v13 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      v7 = v43;
      v11 = v44;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v21 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_1BD2AF470(v48, *(v13 + 48) + v21 * v47, type metadata accessor for AvailablePass);
      ++*(v13 + 16);
    }

    v28 = *v7;
    result = [v28 uniqueID];
    if (!result)
    {
      goto LABEL_39;
    }

    goto LABEL_20;
  }

LABEL_35:

  *v1 = v13;
  return result;
}

uint64_t sub_1BD2A8204()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD40708);
  result = sub_1BE0537E4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1BE053CF4();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1BD2A8428()
{
  v1 = v0;
  v36 = sub_1BE04AFE4();
  v2 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v3);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD406F0);
  result = sub_1BE0537E4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v0;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v2 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v2 + 72) * (v16 | (v8 << 6));
      v20 = *(v2 + 32);
      v32 = *(v2 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1BD2AF428(&qword_1EBD3A360, MEMORY[0x1E69695A8]);
      result = sub_1BE052284();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v30;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_1BD2A8784()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40680);
  result = sub_1BE0537E4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v2 + 48) + (v16 | (v5 << 6)));
      sub_1BE053D04();
      sub_1BE052524();

      result = sub_1BE053D64();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + v15) = v19;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v18 = v6[v5];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1BD2A8A58()
{
  v1 = v0;
  v36 = sub_1BE049B44();
  v2 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v3);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40698);
  result = sub_1BE0537E4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v0;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v2 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v2 + 72) * (v16 | (v8 << 6));
      v20 = *(v2 + 32);
      v32 = *(v2 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1BD2AF428(&qword_1EBD40688, MEMORY[0x1E6967B20]);
      result = sub_1BE052284();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v30;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_1BD2A8DB4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40670);
  result = sub_1BE0537E4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v2 + 48) + (v16 | (v5 << 6)));
      sub_1BE053D04();
      sub_1BE052524();

      result = sub_1BE053D64();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + v15) = v19;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v18 = v6[v5];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1BD2A90F8(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_1BE0537E4();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_1BE053064();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

unint64_t sub_1BD2A9318(uint64_t a1, uint64_t a2)
{
  sub_1BE053064();
  result = sub_1BE053694();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1BD2A939C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1BD2A6D60();
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1BD534424();
        goto LABEL_28;
      }

      sub_1BD2AB500();
    }

    v8 = *v3;
    sub_1BE053D04();
    sub_1BE052524();

    result = sub_1BE053D64();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      do
      {
        if (*(*(v8 + 48) + a2))
        {
          if (*(*(v8 + 48) + a2) == 1)
          {
            v11 = 0x61436172656D6163;
            v12 = 0xED00006572757470;
            v13 = v5;
            if (!v5)
            {
              goto LABEL_13;
            }

            goto LABEL_18;
          }

          v11 = 0x6F72506F54706174;
          v15 = 0x6E6F69736976;
        }

        else
        {
          v11 = 0x6472614365707974;
          v15 = 0x7265626D754ELL;
        }

        v12 = v15 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        v13 = v5;
        if (!v5)
        {
LABEL_13:
          v14 = 0xEE007265626D754ELL;
          if (v11 == 0x6472614365707974)
          {
            goto LABEL_25;
          }

          goto LABEL_26;
        }

LABEL_18:
        if (v13 == 1)
        {
          v16 = 0x61436172656D6163;
        }

        else
        {
          v16 = 0x6F72506F54706174;
        }

        if (v13 == 1)
        {
          v14 = 0xED00006572757470;
        }

        else
        {
          v14 = 0xEE006E6F69736976;
        }

        if (v11 == v16)
        {
LABEL_25:
          if (v12 == v14)
          {
            goto LABEL_31;
          }
        }

LABEL_26:
        v17 = sub_1BE053B84();

        if (v17)
        {
          goto LABEL_32;
        }

        a2 = (a2 + 1) & v10;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_28:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v5;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_31:

LABEL_32:
    result = sub_1BE053C04();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }

  return result;
}

uint64_t sub_1BD2A9690(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1BD2A7028();
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1BD534438();
        goto LABEL_28;
      }

      sub_1BD2AB798();
    }

    v8 = *v3;
    sub_1BE053D04();
    sub_1BE052524();

    result = sub_1BE053D64();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      do
      {
        if (*(*(v8 + 48) + a2))
        {
          if (*(*(v8 + 48) + a2) == 1)
          {
            v11 = 0x726F4B6874756F73;
            v12 = 0xEE00415049506165;
            v13 = v5;
            if (!v5)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v11 = 0xD000000000000010;
            v12 = 0x80000001BE117610;
            v13 = v5;
            if (!v5)
            {
LABEL_24:
              v15 = 0xE400000000000000;
              if (v11 == 1919968359)
              {
                goto LABEL_25;
              }

              goto LABEL_26;
            }
          }
        }

        else
        {
          v12 = 0xE400000000000000;
          v11 = 1919968359;
          v13 = v5;
          if (!v5)
          {
            goto LABEL_24;
          }
        }

        if (v13 == 1)
        {
          v14 = 0x726F4B6874756F73;
        }

        else
        {
          v14 = 0xD000000000000010;
        }

        if (v13 == 1)
        {
          v15 = 0xEE00415049506165;
        }

        else
        {
          v15 = 0x80000001BE117610;
        }

        if (v11 == v14)
        {
LABEL_25:
          if (v12 == v15)
          {
            goto LABEL_31;
          }
        }

LABEL_26:
        v16 = sub_1BE053B84();

        if (v16)
        {
          goto LABEL_32;
        }

        a2 = (a2 + 1) & v10;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_28:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_31:

LABEL_32:
    result = sub_1BE053C04();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v20;
  }

  return result;
}

uint64_t sub_1BD2A9934(uint64_t result, unint64_t a2, char a3)
{
  v20 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a3)
  {
    sub_1BD2A72DC();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1BD534460();
      goto LABEL_14;
    }

    sub_1BD2ABA1C();
  }

  v7 = *v3;
  sub_1BE053D04();
  sub_1BD251514();
  sub_1BE052524();

  result = sub_1BE053D64();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v8;
    do
    {
      v9 = sub_1BE052434();
      v11 = v10;
      if (v9 == sub_1BE052434() && v11 == v12)
      {
        goto LABEL_17;
      }

      v13 = sub_1BE053B84();

      if (v13)
      {
        goto LABEL_18;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_14:
  v14 = *v18;
  *(*v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v20;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_17:

LABEL_18:
  result = sub_1BE053C04();
  __break(1u);
  return result;
}

uint64_t sub_1BD2A9C18(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1BD2A789C();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1BD5345C8();
      goto LABEL_16;
    }

    sub_1BD2ABF84();
  }

  v10 = *v4;
  sub_1BE053D04();
  sub_1BE052524();
  result = sub_1BE053D64();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1BE053B84();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1BE053C04();
  __break(1u);
  return result;
}

uint64_t sub_1BD2A9D98(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, void (*a6)(void), uint64_t (*a7)(void))
{
  v8 = v7;
  v10 = result;
  v11 = *(*v7 + 16);
  v12 = *(*v7 + 24);
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    v13 = a6;
    sub_1BD2A7628(v11 + 1, a4);
  }

  else
  {
    if (v12 > v11)
    {
      result = a7();
      goto LABEL_16;
    }

    v13 = a6;
    sub_1BD2ABD38(v11 + 1, a4);
  }

  v14 = *v7;
  sub_1BE052434();
  sub_1BE053D04();
  sub_1BE052524();
  v15 = sub_1BE053D64();

  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v13(0);
    do
    {
      v18 = sub_1BE052434();
      v20 = v19;
      if (v18 == sub_1BE052434() && v20 == v21)
      {
        goto LABEL_19;
      }

      v23 = sub_1BE053B84();

      if (v23)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v24 = *v8;
  *(*v8 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v24 + 48) + 8 * a2) = v10;
  v25 = *(v24 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v24 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_1BE053C04();
  __break(1u);
  return result;
}

uint64_t sub_1BD2A9FA0(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v8 = result;
  v9 = *(*v7 + 16);
  v10 = *(*v7 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_1BD2A7AFC(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      v12 = a2;
      result = a7();
      a2 = v12;
      goto LABEL_12;
    }

    v11 = a6;
    sub_1BD2AC1BC(v9 + 1, a4);
  }

  v13 = *v7;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v8);
  result = sub_1BE053D64();
  v14 = -1 << *(v13 + 32);
  a2 = result & ~v14;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = result & ~v14;
    result = v11(0);
    a2 = v16;
    while (*(*(v13 + 48) + 8 * a2) != v8)
    {
      a2 = (a2 + 1) & v15;
      if (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v17 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + 8 * a2) = v8;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BE053C04();
  __break(1u);
  return result;
}

uint64_t sub_1BD2AA124(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for AvailablePass(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v28 = v11;
    sub_1BD2A7D44();
  }

  else
  {
    if (v15 > v14)
    {
      sub_1BD53487C();
      goto LABEL_12;
    }

    v28 = v11;
    sub_1BD2AC3D4();
  }

  v16 = *v4;
  v17 = sub_1BE053D04();
  sub_1BD49C81C(v17);
  sub_1BE052524();

  v18 = sub_1BE053D64();
  v19 = -1 << *(v16 + 32);
  a2 = v18 & ~v19;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v9 + 72);
    do
    {
      sub_1BD133398(*(v16 + 48) + v21 * a2, v13, type metadata accessor for AvailablePass);
      v22 = sub_1BD498D50(v13, a1);
      sub_1BD2AF4D8(v13, type metadata accessor for AvailablePass);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1BD2AF470(a1, *(v23 + 48) + *(v9 + 72) * a2, type metadata accessor for AvailablePass);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BE053C04();
  __break(1u);
  return result;
}

void sub_1BD2AA384(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BD2A90F8(v6 + 1, &qword_1EBD398A8);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1BD534A88();
      goto LABEL_12;
    }

    sub_1BD2AD624(v6 + 1, &qword_1EBD398A8);
  }

  v8 = *v3;
  v9 = sub_1BE053064();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1BD0E5E8C(0, &unk_1EBD406C0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1BE053074();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1BE053C04();
  __break(1u);
}

uint64_t sub_1BD2AA514(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BD2A8204();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1BD534A9C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1BD2AC844();
  }

  v8 = *v3;
  result = sub_1BE053CF4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BE053C04();
  __break(1u);
  return result;
}

uint64_t sub_1BD2AA634(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1BE04AFE4();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BD2A8428();
  }

  else
  {
    if (v13 > v12)
    {
      sub_1BD534BDC();
      goto LABEL_12;
    }

    sub_1BD2ACA34();
  }

  v14 = *v3;
  sub_1BD2AF428(&qword_1EBD3A360, MEMORY[0x1E69695A8]);
  v15 = sub_1BE052284();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1BD2AF428(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
      v23 = sub_1BE052334();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BE053C04();
  __break(1u);
  return result;
}

uint64_t sub_1BD2AA8D8(uint64_t result, unint64_t a2, char a3)
{
  v33 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_50;
  }

  if (a3)
  {
    sub_1BD2A8784();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1BD534C04();
      goto LABEL_50;
    }

    sub_1BD2ACD50();
  }

  v7 = 0x6E776F6E6B6E75;
  v8 = *v3;
  sub_1BE053D04();
  sub_1BE052524();

  result = sub_1BE053D64();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  v32 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v31 = ~v9;
    do
    {
      v10 = *(*(v8 + 48) + a2);
      v11 = v10 == 2 ? 0x6D6C6C6174736E69 : 0x73647261776572;
      v12 = v10 == 2 ? 0xEC00000073746E65 : 0xE700000000000000;
      v13 = *(*(v8 + 48) + a2) ? 0x6C75466E49796170 : v7;
      v14 = *(*(v8 + 48) + a2) ? 0xE90000000000006CLL : 0xE700000000000000;
      v15 = *(*(v8 + 48) + a2) <= 1u ? v13 : v11;
      v16 = *(*(v8 + 48) + a2) <= 1u ? v14 : v12;
      v17 = v33 == 2 ? 0x6D6C6C6174736E69 : 0x73647261776572;
      v18 = v33 == 2 ? 0xEC00000073746E65 : 0xE700000000000000;
      v19 = v7;
      v20 = v33 ? 0x6C75466E49796170 : v7;
      v21 = v33 ? 0xE90000000000006CLL : 0xE700000000000000;
      v22 = v33 <= 1u ? v20 : v17;
      v23 = v33 <= 1u ? v21 : v18;
      v24 = v8;
      if (v15 == v22 && v16 == v23)
      {
        goto LABEL_53;
      }

      v25 = sub_1BE053B84();

      if (v25)
      {
        goto LABEL_54;
      }

      a2 = (a2 + 1) & v31;
      v7 = v19;
      v8 = v24;
    }

    while (((*(v32 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_50:
  v26 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v26 + 48) + a2) = v33;
  v27 = *(v26 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v26 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_53:

LABEL_54:
  result = sub_1BE053C04();
  __break(1u);
  return result;
}

uint64_t sub_1BD2AABC4(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1BE049B44();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BD2A8A58();
  }

  else
  {
    if (v13 > v12)
    {
      sub_1BD534C18();
      goto LABEL_12;
    }

    sub_1BD2ACFF4();
  }

  v14 = *v3;
  sub_1BD2AF428(&qword_1EBD40688, MEMORY[0x1E6967B20]);
  v15 = sub_1BE052284();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1BD2AF428(&qword_1EBD40690, MEMORY[0x1E6967B20]);
      v23 = sub_1BE052334();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BE053C04();
  __break(1u);
  return result;
}